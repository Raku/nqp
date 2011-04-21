
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303401182.58")
.annotate 'line', 0
    get_hll_global $P3252, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3251" 
    capture_lex $P3252
    get_hll_global $P3220, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3219" 
    capture_lex $P3220
    get_hll_global $P2758, ["HLL";"CommandLine";"Parser"], "_block2757" 
    capture_lex $P2758
    get_hll_global $P2657, ["HLL";"CommandLine";"Result"], "_block2656" 
    capture_lex $P2657
    get_hll_global $P1391, ["HLL";"Compiler"], "_block1390" 
    capture_lex $P1391
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
    get_hll_global $P1391, ["HLL";"Compiler"], "_block1390" 
    capture_lex $P1391
    $P1391()
.annotate 'line', 1785
    get_hll_global $P2653, ["HLL"], "Compiler"
    $P2654 = $P2653."new"()
    store_lex "$compiler", $P2654
.annotate 'line', 1786
    find_lex $P2655, "$compiler"
    unless_null $P2655, vivify_1021
    new $P2655, "Undef"
  vivify_1021:
    $P2655."language"("parrot")
.annotate 'line', 1879
    get_hll_global $P2657, ["HLL";"CommandLine";"Result"], "_block2656" 
    capture_lex $P2657
    $P2657()
.annotate 'line', 1912
    get_hll_global $P2758, ["HLL";"CommandLine";"Parser"], "_block2757" 
    capture_lex $P2758
    $P2758()
.annotate 'line', 2090
    get_hll_global $P3220, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3219" 
    capture_lex $P3220
    $P3220()
.annotate 'line', 2100
    get_hll_global $P3252, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3251" 
    capture_lex $P3252
    $P3844 = $P3252()
.annotate 'line', 1
    .return ($P3844)
.annotate 'line', 1058
    .const 'Sub' $P3846 = "292_1303401182.58" 
.annotate 'line', 1
    .return ($P3846)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post293") :outer("10_1303401182.58")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303401182.58" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3850, "1303401174.917"
    isnull $I3851, $P3850
    if $I3851, if_3849
    .const 'Sub' $P3994 = "10_1303401182.58" 
    $P3995 = $P3994."get_lexinfo"()
    nqp_get_sc_object $P3996, "1303401174.917", 0
    $P3995."set_static_lexpad_value"("GLOBALish", $P3996)
    .const 'Sub' $P3997 = "10_1303401182.58" 
    $P3998 = $P3997."get_lexinfo"()
    $P3998."finish_static_lexpad"()
    .const 'Sub' $P3999 = "10_1303401182.58" 
    $P4000 = $P3999."get_lexinfo"()
    nqp_get_sc_object $P4001, "1303401174.917", 0
    $P4000."set_static_lexpad_value"("$?PACKAGE", $P4001)
    .const 'Sub' $P4002 = "10_1303401182.58" 
    $P4003 = $P4002."get_lexinfo"()
    $P4003."finish_static_lexpad"()
    nqp_get_sc_object $P4004, "1303401174.917", 1
    set_hll_global ["HLL"], "Grammar", $P4004
    .const 'Sub' $P4005 = "11_1303401182.58" 
    $P4006 = $P4005."get_lexinfo"()
    nqp_get_sc_object $P4007, "1303401174.917", 1
    $P4006."set_static_lexpad_value"("$?PACKAGE", $P4007)
    .const 'Sub' $P4008 = "11_1303401182.58" 
    $P4009 = $P4008."get_lexinfo"()
    $P4009."finish_static_lexpad"()
    .const 'Sub' $P4010 = "11_1303401182.58" 
    $P4011 = $P4010."get_lexinfo"()
    nqp_get_sc_object $P4012, "1303401174.917", 1
    $P4011."set_static_lexpad_value"("$?CLASS", $P4012)
    .const 'Sub' $P4013 = "11_1303401182.58" 
    $P4014 = $P4013."get_lexinfo"()
    $P4014."finish_static_lexpad"()
    nqp_get_sc_object $P4015, "1303401174.917", 2
    set_hll_global ["HLL"], "Actions", $P4015
    .const 'Sub' $P4016 = "120_1303401182.58" 
    $P4017 = $P4016."get_lexinfo"()
    nqp_get_sc_object $P4018, "1303401174.917", 2
    $P4017."set_static_lexpad_value"("$?PACKAGE", $P4018)
    .const 'Sub' $P4019 = "120_1303401182.58" 
    $P4020 = $P4019."get_lexinfo"()
    $P4020."finish_static_lexpad"()
    .const 'Sub' $P4021 = "120_1303401182.58" 
    $P4022 = $P4021."get_lexinfo"()
    nqp_get_sc_object $P4023, "1303401174.917", 2
    $P4022."set_static_lexpad_value"("$?CLASS", $P4023)
    .const 'Sub' $P4024 = "120_1303401182.58" 
    $P4025 = $P4024."get_lexinfo"()
    $P4025."finish_static_lexpad"()
    nqp_get_sc_object $P4026, "1303401174.917", 3
    set_hll_global ["HLL"], "Compiler", $P4026
    .const 'Sub' $P4027 = "167_1303401182.58" 
    $P4028 = $P4027."get_lexinfo"()
    nqp_get_sc_object $P4029, "1303401174.917", 3
    $P4028."set_static_lexpad_value"("$?PACKAGE", $P4029)
    .const 'Sub' $P4030 = "167_1303401182.58" 
    $P4031 = $P4030."get_lexinfo"()
    $P4031."finish_static_lexpad"()
    .const 'Sub' $P4032 = "167_1303401182.58" 
    $P4033 = $P4032."get_lexinfo"()
    nqp_get_sc_object $P4034, "1303401174.917", 3
    $P4033."set_static_lexpad_value"("$?CLASS", $P4034)
    .const 'Sub' $P4035 = "167_1303401182.58" 
    $P4036 = $P4035."get_lexinfo"()
    $P4036."finish_static_lexpad"()
    nqp_get_sc_object $P4037, "1303401174.917", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4037
    .const 'Sub' $P4038 = "234_1303401182.58" 
    $P4039 = $P4038."get_lexinfo"()
    nqp_get_sc_object $P4040, "1303401174.917", 4
    $P4039."set_static_lexpad_value"("$?PACKAGE", $P4040)
    .const 'Sub' $P4041 = "234_1303401182.58" 
    $P4042 = $P4041."get_lexinfo"()
    $P4042."finish_static_lexpad"()
    .const 'Sub' $P4043 = "234_1303401182.58" 
    $P4044 = $P4043."get_lexinfo"()
    nqp_get_sc_object $P4045, "1303401174.917", 4
    $P4044."set_static_lexpad_value"("$?CLASS", $P4045)
    .const 'Sub' $P4046 = "234_1303401182.58" 
    $P4047 = $P4046."get_lexinfo"()
    $P4047."finish_static_lexpad"()
    nqp_get_sc_object $P4048, "1303401174.917", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4048
    .const 'Sub' $P4049 = "242_1303401182.58" 
    $P4050 = $P4049."get_lexinfo"()
    nqp_get_sc_object $P4051, "1303401174.917", 5
    $P4050."set_static_lexpad_value"("$?PACKAGE", $P4051)
    .const 'Sub' $P4052 = "242_1303401182.58" 
    $P4053 = $P4052."get_lexinfo"()
    $P4053."finish_static_lexpad"()
    .const 'Sub' $P4054 = "242_1303401182.58" 
    $P4055 = $P4054."get_lexinfo"()
    nqp_get_sc_object $P4056, "1303401174.917", 5
    $P4055."set_static_lexpad_value"("$?CLASS", $P4056)
    .const 'Sub' $P4057 = "242_1303401182.58" 
    $P4058 = $P4057."get_lexinfo"()
    $P4058."finish_static_lexpad"()
    nqp_get_sc_object $P4059, "1303401174.917", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P4059
    .const 'Sub' $P4060 = "262_1303401182.58" 
    $P4061 = $P4060."get_lexinfo"()
    nqp_get_sc_object $P4062, "1303401174.917", 6
    $P4061."set_static_lexpad_value"("$?PACKAGE", $P4062)
    .const 'Sub' $P4063 = "262_1303401182.58" 
    $P4064 = $P4063."get_lexinfo"()
    $P4064."finish_static_lexpad"()
    .const 'Sub' $P4065 = "262_1303401182.58" 
    $P4066 = $P4065."get_lexinfo"()
    nqp_get_sc_object $P4067, "1303401174.917", 6
    $P4066."set_static_lexpad_value"("$?CLASS", $P4067)
    .const 'Sub' $P4068 = "262_1303401182.58" 
    $P4069 = $P4068."get_lexinfo"()
    $P4069."finish_static_lexpad"()
    nqp_get_sc_object $P4070, "1303401174.917", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4070
    .const 'Sub' $P4071 = "266_1303401182.58" 
    $P4072 = $P4071."get_lexinfo"()
    nqp_get_sc_object $P4073, "1303401174.917", 7
    $P4072."set_static_lexpad_value"("$?PACKAGE", $P4073)
    .const 'Sub' $P4074 = "266_1303401182.58" 
    $P4075 = $P4074."get_lexinfo"()
    $P4075."finish_static_lexpad"()
    .const 'Sub' $P4076 = "266_1303401182.58" 
    $P4077 = $P4076."get_lexinfo"()
    nqp_get_sc_object $P4078, "1303401174.917", 7
    $P4077."set_static_lexpad_value"("$?CLASS", $P4078)
    .const 'Sub' $P4079 = "266_1303401182.58" 
    $P4080 = $P4079."get_lexinfo"()
    $P4080."finish_static_lexpad"()
    goto if_3849_end
  if_3849:
    nqp_dynop_setup 
    getinterp $P3852
    get_class $P3853, "LexPad"
    get_class $P3854, "NQPLexPad"
    $P3852."hll_map"($P3853, $P3854)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P3855, "1303401174.917"
    .local pmc cur_sc
    set cur_sc, $P3855
    load_bytecode "SettingManager.pbc"
    get_hll_global $P3856, ["HLL"], "SettingManager"
    $P3857 = $P3856."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3857)
    get_hll_global $P3858, "KnowHOW"
    $P3859 = $P3858."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3859, cur_sc
    nqp_set_sc_object "1303401174.917", 0, $P3859
    .const 'Sub' $P3860 = "10_1303401182.58" 
    $P3861 = $P3860."get_lexinfo"()
    nqp_get_sc_object $P3862, "1303401174.917", 0
    $P3861."set_static_lexpad_value"("GLOBALish", $P3862)
    .const 'Sub' $P3863 = "10_1303401182.58" 
    $P3864 = $P3863."get_lexinfo"()
    $P3864."finish_static_lexpad"()
    .const 'Sub' $P3865 = "10_1303401182.58" 
    $P3866 = $P3865."get_lexinfo"()
    nqp_get_sc_object $P3867, "1303401174.917", 0
    $P3866."set_static_lexpad_value"("$?PACKAGE", $P3867)
    .const 'Sub' $P3868 = "10_1303401182.58" 
    $P3869 = $P3868."get_lexinfo"()
    $P3869."finish_static_lexpad"()
    load_bytecode "Regex.pbc"
    get_hll_global $P3870, "NQPClassHOW"
    $P3871 = $P3870."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3871, cur_sc
    nqp_set_sc_object "1303401174.917", 1, $P3871
    nqp_get_sc_object $P3872, "1303401174.917", 1
    nqp_get_sc_object $P3873, "1303401174.917", 0
    nqp_get_package_through_who $P3874, $P3873, "HLL"
    get_who $P3875, $P3874
    set $P3875["Grammar"], $P3872
    nqp_get_sc_object $P3876, "1303401174.917", 1
    set_hll_global ["HLL"], "Grammar", $P3876
    .const 'Sub' $P3877 = "11_1303401182.58" 
    $P3878 = $P3877."get_lexinfo"()
    nqp_get_sc_object $P3879, "1303401174.917", 1
    $P3878."set_static_lexpad_value"("$?PACKAGE", $P3879)
    .const 'Sub' $P3880 = "11_1303401182.58" 
    $P3881 = $P3880."get_lexinfo"()
    $P3881."finish_static_lexpad"()
    .const 'Sub' $P3882 = "11_1303401182.58" 
    $P3883 = $P3882."get_lexinfo"()
    nqp_get_sc_object $P3884, "1303401174.917", 1
    $P3883."set_static_lexpad_value"("$?CLASS", $P3884)
    .const 'Sub' $P3885 = "11_1303401182.58" 
    $P3886 = $P3885."get_lexinfo"()
    $P3886."finish_static_lexpad"()
    get_hll_global $P3887, "NQPClassHOW"
    $P3888 = $P3887."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3888, cur_sc
    nqp_set_sc_object "1303401174.917", 2, $P3888
    nqp_get_sc_object $P3889, "1303401174.917", 2
    nqp_get_sc_object $P3890, "1303401174.917", 0
    nqp_get_package_through_who $P3891, $P3890, "HLL"
    get_who $P3892, $P3891
    set $P3892["Actions"], $P3889
    nqp_get_sc_object $P3893, "1303401174.917", 2
    set_hll_global ["HLL"], "Actions", $P3893
    .const 'Sub' $P3894 = "120_1303401182.58" 
    $P3895 = $P3894."get_lexinfo"()
    nqp_get_sc_object $P3896, "1303401174.917", 2
    $P3895."set_static_lexpad_value"("$?PACKAGE", $P3896)
    .const 'Sub' $P3897 = "120_1303401182.58" 
    $P3898 = $P3897."get_lexinfo"()
    $P3898."finish_static_lexpad"()
    .const 'Sub' $P3899 = "120_1303401182.58" 
    $P3900 = $P3899."get_lexinfo"()
    nqp_get_sc_object $P3901, "1303401174.917", 2
    $P3900."set_static_lexpad_value"("$?CLASS", $P3901)
    .const 'Sub' $P3902 = "120_1303401182.58" 
    $P3903 = $P3902."get_lexinfo"()
    $P3903."finish_static_lexpad"()
    get_hll_global $P3904, "NQPClassHOW"
    $P3905 = $P3904."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3905, cur_sc
    nqp_set_sc_object "1303401174.917", 3, $P3905
    nqp_get_sc_object $P3906, "1303401174.917", 3
    nqp_get_sc_object $P3907, "1303401174.917", 0
    nqp_get_package_through_who $P3908, $P3907, "HLL"
    get_who $P3909, $P3908
    set $P3909["Compiler"], $P3906
    nqp_get_sc_object $P3910, "1303401174.917", 3
    set_hll_global ["HLL"], "Compiler", $P3910
    .const 'Sub' $P3911 = "167_1303401182.58" 
    $P3912 = $P3911."get_lexinfo"()
    nqp_get_sc_object $P3913, "1303401174.917", 3
    $P3912."set_static_lexpad_value"("$?PACKAGE", $P3913)
    .const 'Sub' $P3914 = "167_1303401182.58" 
    $P3915 = $P3914."get_lexinfo"()
    $P3915."finish_static_lexpad"()
    .const 'Sub' $P3916 = "167_1303401182.58" 
    $P3917 = $P3916."get_lexinfo"()
    nqp_get_sc_object $P3918, "1303401174.917", 3
    $P3917."set_static_lexpad_value"("$?CLASS", $P3918)
    .const 'Sub' $P3919 = "167_1303401182.58" 
    $P3920 = $P3919."get_lexinfo"()
    $P3920."finish_static_lexpad"()
    get_hll_global $P3921, "NQPClassHOW"
    $P3922 = $P3921."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3922, cur_sc
    nqp_set_sc_object "1303401174.917", 4, $P3922
    nqp_get_sc_object $P3923, "1303401174.917", 4
    nqp_get_sc_object $P3924, "1303401174.917", 0
    nqp_get_package_through_who $P3925, $P3924, "HLL"
    nqp_get_package_through_who $P3926, $P3925, "CommandLine"
    get_who $P3927, $P3926
    set $P3927["Result"], $P3923
    nqp_get_sc_object $P3928, "1303401174.917", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3928
    .const 'Sub' $P3929 = "234_1303401182.58" 
    $P3930 = $P3929."get_lexinfo"()
    nqp_get_sc_object $P3931, "1303401174.917", 4
    $P3930."set_static_lexpad_value"("$?PACKAGE", $P3931)
    .const 'Sub' $P3932 = "234_1303401182.58" 
    $P3933 = $P3932."get_lexinfo"()
    $P3933."finish_static_lexpad"()
    .const 'Sub' $P3934 = "234_1303401182.58" 
    $P3935 = $P3934."get_lexinfo"()
    nqp_get_sc_object $P3936, "1303401174.917", 4
    $P3935."set_static_lexpad_value"("$?CLASS", $P3936)
    .const 'Sub' $P3937 = "234_1303401182.58" 
    $P3938 = $P3937."get_lexinfo"()
    $P3938."finish_static_lexpad"()
    get_hll_global $P3939, "NQPClassHOW"
    $P3940 = $P3939."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P3940, cur_sc
    nqp_set_sc_object "1303401174.917", 5, $P3940
    nqp_get_sc_object $P3941, "1303401174.917", 5
    nqp_get_sc_object $P3942, "1303401174.917", 0
    nqp_get_package_through_who $P3943, $P3942, "HLL"
    nqp_get_package_through_who $P3944, $P3943, "CommandLine"
    get_who $P3945, $P3944
    set $P3945["Parser"], $P3941
    nqp_get_sc_object $P3946, "1303401174.917", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3946
    .const 'Sub' $P3947 = "242_1303401182.58" 
    $P3948 = $P3947."get_lexinfo"()
    nqp_get_sc_object $P3949, "1303401174.917", 5
    $P3948."set_static_lexpad_value"("$?PACKAGE", $P3949)
    .const 'Sub' $P3950 = "242_1303401182.58" 
    $P3951 = $P3950."get_lexinfo"()
    $P3951."finish_static_lexpad"()
    .const 'Sub' $P3952 = "242_1303401182.58" 
    $P3953 = $P3952."get_lexinfo"()
    nqp_get_sc_object $P3954, "1303401174.917", 5
    $P3953."set_static_lexpad_value"("$?CLASS", $P3954)
    .const 'Sub' $P3955 = "242_1303401182.58" 
    $P3956 = $P3955."get_lexinfo"()
    $P3956."finish_static_lexpad"()
    get_hll_global $P3957, "NQPClassHOW"
    $P3958 = $P3957."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P3958, cur_sc
    nqp_set_sc_object "1303401174.917", 6, $P3958
    nqp_get_sc_object $P3959, "1303401174.917", 6
    nqp_get_sc_object $P3960, "1303401174.917", 0
    nqp_get_package_through_who $P3961, $P3960, "HLL"
    nqp_get_package_through_who $P3962, $P3961, "Compiler"
    nqp_get_package_through_who $P3963, $P3962, "SerializationContextBuilder"
    get_who $P3964, $P3963
    set $P3964["Event"], $P3959
    nqp_get_sc_object $P3965, "1303401174.917", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3965
    .const 'Sub' $P3966 = "262_1303401182.58" 
    $P3967 = $P3966."get_lexinfo"()
    nqp_get_sc_object $P3968, "1303401174.917", 6
    $P3967."set_static_lexpad_value"("$?PACKAGE", $P3968)
    .const 'Sub' $P3969 = "262_1303401182.58" 
    $P3970 = $P3969."get_lexinfo"()
    $P3970."finish_static_lexpad"()
    .const 'Sub' $P3971 = "262_1303401182.58" 
    $P3972 = $P3971."get_lexinfo"()
    nqp_get_sc_object $P3973, "1303401174.917", 6
    $P3972."set_static_lexpad_value"("$?CLASS", $P3973)
    .const 'Sub' $P3974 = "262_1303401182.58" 
    $P3975 = $P3974."get_lexinfo"()
    $P3975."finish_static_lexpad"()
    get_hll_global $P3976, "NQPClassHOW"
    $P3977 = $P3976."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P3977, cur_sc
    nqp_set_sc_object "1303401174.917", 7, $P3977
    nqp_get_sc_object $P3978, "1303401174.917", 7
    nqp_get_sc_object $P3979, "1303401174.917", 0
    nqp_get_package_through_who $P3980, $P3979, "HLL"
    nqp_get_package_through_who $P3981, $P3980, "Compiler"
    get_who $P3982, $P3981
    set $P3982["SerializationContextBuilder"], $P3978
    nqp_get_sc_object $P3983, "1303401174.917", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3983
    .const 'Sub' $P3984 = "266_1303401182.58" 
    $P3985 = $P3984."get_lexinfo"()
    nqp_get_sc_object $P3986, "1303401174.917", 7
    $P3985."set_static_lexpad_value"("$?PACKAGE", $P3986)
    .const 'Sub' $P3987 = "266_1303401182.58" 
    $P3988 = $P3987."get_lexinfo"()
    $P3988."finish_static_lexpad"()
    .const 'Sub' $P3989 = "266_1303401182.58" 
    $P3990 = $P3989."get_lexinfo"()
    nqp_get_sc_object $P3991, "1303401174.917", 7
    $P3990."set_static_lexpad_value"("$?CLASS", $P3991)
    .const 'Sub' $P3992 = "266_1303401182.58" 
    $P3993 = $P3992."get_lexinfo"()
    $P3993."finish_static_lexpad"()
  if_3849_end:
    nqp_get_sc_object $P4081, "1303401174.917", 0
    set_hll_global "GLOBAL", $P4081
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 9
    .const 'Sub' $P459 = "119_1303401182.58" 
    capture_lex $P459
    .const 'Sub' $P438 = "118_1303401182.58" 
    capture_lex $P438
    .const 'Sub' $P433 = "117_1303401182.58" 
    capture_lex $P433
    .const 'Sub' $P418 = "116_1303401182.58" 
    capture_lex $P418
    .const 'Sub' $P408 = "115_1303401182.58" 
    capture_lex $P408
    .const 'Sub' $P404 = "114_1303401182.58" 
    capture_lex $P404
    .const 'Sub' $P400 = "113_1303401182.58" 
    capture_lex $P400
    .const 'Sub' $P397 = "112_1303401182.58" 
    capture_lex $P397
    .const 'Sub' $P395 = "111_1303401182.58" 
    capture_lex $P395
    .const 'Sub' $P393 = "110_1303401182.58" 
    capture_lex $P393
    .const 'Sub' $P387 = "109_1303401182.58" 
    capture_lex $P387
    .const 'Sub' $P384 = "108_1303401182.58" 
    capture_lex $P384
    .const 'Sub' $P380 = "107_1303401182.58" 
    capture_lex $P380
    .const 'Sub' $P352 = "106_1303401182.58" 
    capture_lex $P352
    .const 'Sub' $P347 = "105_1303401182.58" 
    capture_lex $P347
    .const 'Sub' $P338 = "103_1303401182.58" 
    capture_lex $P338
    .const 'Sub' $P332 = "101_1303401182.58" 
    capture_lex $P332
    .const 'Sub' $P319 = "98_1303401182.58" 
    capture_lex $P319
    .const 'Sub' $P287 = "93_1303401182.58" 
    capture_lex $P287
    .const 'Sub' $P281 = "91_1303401182.58" 
    capture_lex $P281
    .const 'Sub' $P276 = "89_1303401182.58" 
    capture_lex $P276
    .const 'Sub' $P270 = "87_1303401182.58" 
    capture_lex $P270
    .const 'Sub' $P264 = "85_1303401182.58" 
    capture_lex $P264
    .const 'Sub' $P259 = "83_1303401182.58" 
    capture_lex $P259
    .const 'Sub' $P254 = "81_1303401182.58" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1303401182.58" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1303401182.58" 
    capture_lex $P244
    .const 'Sub' $P239 = "75_1303401182.58" 
    capture_lex $P239
    .const 'Sub' $P234 = "73_1303401182.58" 
    capture_lex $P234
    .const 'Sub' $P229 = "71_1303401182.58" 
    capture_lex $P229
    .const 'Sub' $P224 = "69_1303401182.58" 
    capture_lex $P224
    .const 'Sub' $P212 = "65_1303401182.58" 
    capture_lex $P212
    .const 'Sub' $P199 = "63_1303401182.58" 
    capture_lex $P199
    .const 'Sub' $P187 = "61_1303401182.58" 
    capture_lex $P187
    .const 'Sub' $P181 = "59_1303401182.58" 
    capture_lex $P181
    .const 'Sub' $P174 = "57_1303401182.58" 
    capture_lex $P174
    .const 'Sub' $P168 = "55_1303401182.58" 
    capture_lex $P168
    .const 'Sub' $P161 = "53_1303401182.58" 
    capture_lex $P161
    .const 'Sub' $P155 = "51_1303401182.58" 
    capture_lex $P155
    .const 'Sub' $P148 = "49_1303401182.58" 
    capture_lex $P148
    .const 'Sub' $P142 = "47_1303401182.58" 
    capture_lex $P142
    .const 'Sub' $P136 = "45_1303401182.58" 
    capture_lex $P136
    .const 'Sub' $P127 = "43_1303401182.58" 
    capture_lex $P127
    .const 'Sub' $P119 = "41_1303401182.58" 
    capture_lex $P119
    .const 'Sub' $P111 = "40_1303401182.58" 
    capture_lex $P111
    .const 'Sub' $P105 = "38_1303401182.58" 
    capture_lex $P105
    .const 'Sub' $P100 = "36_1303401182.58" 
    capture_lex $P100
    .const 'Sub' $P92 = "34_1303401182.58" 
    capture_lex $P92
    .const 'Sub' $P86 = "32_1303401182.58" 
    capture_lex $P86
    .const 'Sub' $P80 = "30_1303401182.58" 
    capture_lex $P80
    .const 'Sub' $P74 = "28_1303401182.58" 
    capture_lex $P74
    .const 'Sub' $P29 = "14_1303401182.58" 
    capture_lex $P29
    .const 'Sub' $P22 = "12_1303401182.58" 
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
    .const 'Sub' $P438 = "118_1303401182.58" 
    newclosure $P457, $P438
.annotate 'line', 9
    .return ($P457)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post294") :outer("11_1303401182.58")
.annotate 'line', 9
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P459 = "119_1303401182.58" 
    capture_lex $P459
    $P459()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block458"  :anon :subid("119_1303401182.58") :outer("11_1303401182.58")
.annotate 'line', 9
    nqp_get_sc_object $P460, "1303401174.917", 1
    .local pmc type_obj
    set type_obj, $P460
    get_how $P461, type_obj
    .const 'Sub' $P462 = "12_1303401182.58" 
    $P461."add_method"(type_obj, "ws", $P462)
    get_how $P463, type_obj
    get_global $P464, "!PREFIX__ws"
    $P463."add_method"(type_obj, "!PREFIX__ws", $P464)
    get_how $P465, type_obj
    .const 'Sub' $P466 = "14_1303401182.58" 
    $P465."add_method"(type_obj, "termish", $P466)
    get_how $P467, type_obj
    get_global $P468, "!PREFIX__termish"
    $P467."add_method"(type_obj, "!PREFIX__termish", $P468)
    get_how $P469, type_obj
    .const 'Sub' $P470 = "16_1303401182.58" 
    $P469."add_method"(type_obj, "term", $P470)
    get_how $P471, type_obj
    .const 'Sub' $P472 = "17_1303401182.58" 
    $P471."add_method"(type_obj, "!PREFIX__term", $P472)
    get_how $P473, type_obj
    .const 'Sub' $P474 = "18_1303401182.58" 
    $P473."add_method"(type_obj, "infix", $P474)
    get_how $P475, type_obj
    .const 'Sub' $P476 = "19_1303401182.58" 
    $P475."add_method"(type_obj, "!PREFIX__infix", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "20_1303401182.58" 
    $P477."add_method"(type_obj, "prefix", $P478)
    get_how $P479, type_obj
    .const 'Sub' $P480 = "21_1303401182.58" 
    $P479."add_method"(type_obj, "!PREFIX__prefix", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "22_1303401182.58" 
    $P481."add_method"(type_obj, "postfix", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "23_1303401182.58" 
    $P483."add_method"(type_obj, "!PREFIX__postfix", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "24_1303401182.58" 
    $P485."add_method"(type_obj, "circumfix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "25_1303401182.58" 
    $P487."add_method"(type_obj, "!PREFIX__circumfix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "26_1303401182.58" 
    $P489."add_method"(type_obj, "postcircumfix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "27_1303401182.58" 
    $P491."add_method"(type_obj, "!PREFIX__postcircumfix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "28_1303401182.58" 
    $P493."add_method"(type_obj, "term:sym<circumfix>", $P494)
    get_how $P495, type_obj
    get_global $P496, "!PREFIX__term:sym<circumfix>"
    $P495."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "30_1303401182.58" 
    $P497."add_method"(type_obj, "infixish", $P498)
    get_how $P499, type_obj
    get_global $P500, "!PREFIX__infixish"
    $P499."add_method"(type_obj, "!PREFIX__infixish", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "32_1303401182.58" 
    $P501."add_method"(type_obj, "prefixish", $P502)
    get_how $P503, type_obj
    get_global $P504, "!PREFIX__prefixish"
    $P503."add_method"(type_obj, "!PREFIX__prefixish", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "34_1303401182.58" 
    $P505."add_method"(type_obj, "postfixish", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__postfixish"
    $P507."add_method"(type_obj, "!PREFIX__postfixish", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "36_1303401182.58" 
    $P509."add_method"(type_obj, "nullterm", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__nullterm"
    $P511."add_method"(type_obj, "!PREFIX__nullterm", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "38_1303401182.58" 
    $P513."add_method"(type_obj, "nullterm_alt", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__nullterm_alt"
    $P515."add_method"(type_obj, "!PREFIX__nullterm_alt", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "40_1303401182.58" 
    $P517."add_method"(type_obj, "nulltermish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "41_1303401182.58" 
    $P519."add_method"(type_obj, "quote_delimited", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__quote_delimited"
    $P521."add_method"(type_obj, "!PREFIX__quote_delimited", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "43_1303401182.58" 
    $P523."add_method"(type_obj, "quote_atom", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__quote_atom"
    $P525."add_method"(type_obj, "!PREFIX__quote_atom", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "45_1303401182.58" 
    $P527."add_method"(type_obj, "decint", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__decint"
    $P529."add_method"(type_obj, "!PREFIX__decint", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "47_1303401182.58" 
    $P531."add_method"(type_obj, "decints", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__decints"
    $P533."add_method"(type_obj, "!PREFIX__decints", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "49_1303401182.58" 
    $P535."add_method"(type_obj, "hexint", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__hexint"
    $P537."add_method"(type_obj, "!PREFIX__hexint", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "51_1303401182.58" 
    $P539."add_method"(type_obj, "hexints", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__hexints"
    $P541."add_method"(type_obj, "!PREFIX__hexints", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "53_1303401182.58" 
    $P543."add_method"(type_obj, "octint", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__octint"
    $P545."add_method"(type_obj, "!PREFIX__octint", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "55_1303401182.58" 
    $P547."add_method"(type_obj, "octints", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__octints"
    $P549."add_method"(type_obj, "!PREFIX__octints", $P550)
    get_how $P551, type_obj
    .const 'Sub' $P552 = "57_1303401182.58" 
    $P551."add_method"(type_obj, "binint", $P552)
    get_how $P553, type_obj
    get_global $P554, "!PREFIX__binint"
    $P553."add_method"(type_obj, "!PREFIX__binint", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "59_1303401182.58" 
    $P555."add_method"(type_obj, "binints", $P556)
    get_how $P557, type_obj
    get_global $P558, "!PREFIX__binints"
    $P557."add_method"(type_obj, "!PREFIX__binints", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "61_1303401182.58" 
    $P559."add_method"(type_obj, "integer", $P560)
    get_how $P561, type_obj
    get_global $P562, "!PREFIX__integer"
    $P561."add_method"(type_obj, "!PREFIX__integer", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "63_1303401182.58" 
    $P563."add_method"(type_obj, "dec_number", $P564)
    get_how $P565, type_obj
    get_global $P566, "!PREFIX__dec_number"
    $P565."add_method"(type_obj, "!PREFIX__dec_number", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "65_1303401182.58" 
    $P567."add_method"(type_obj, "escale", $P568)
    get_how $P569, type_obj
    get_global $P570, "!PREFIX__escale"
    $P569."add_method"(type_obj, "!PREFIX__escale", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "67_1303401182.58" 
    $P571."add_method"(type_obj, "quote_escape", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "68_1303401182.58" 
    $P573."add_method"(type_obj, "!PREFIX__quote_escape", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "69_1303401182.58" 
    $P575."add_method"(type_obj, "quote_escape:sym<backslash>", $P576)
    get_how $P577, type_obj
    get_global $P578, "!PREFIX__quote_escape:sym<backslash>"
    $P577."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "71_1303401182.58" 
    $P579."add_method"(type_obj, "quote_escape:sym<stopper>", $P580)
    get_how $P581, type_obj
    get_global $P582, "!PREFIX__quote_escape:sym<stopper>"
    $P581."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "73_1303401182.58" 
    $P583."add_method"(type_obj, "quote_escape:sym<bs>", $P584)
    get_how $P585, type_obj
    get_global $P586, "!PREFIX__quote_escape:sym<bs>"
    $P585."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "75_1303401182.58" 
    $P587."add_method"(type_obj, "quote_escape:sym<nl>", $P588)
    get_how $P589, type_obj
    get_global $P590, "!PREFIX__quote_escape:sym<nl>"
    $P589."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "77_1303401182.58" 
    $P591."add_method"(type_obj, "quote_escape:sym<cr>", $P592)
    get_how $P593, type_obj
    get_global $P594, "!PREFIX__quote_escape:sym<cr>"
    $P593."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "79_1303401182.58" 
    $P595."add_method"(type_obj, "quote_escape:sym<tab>", $P596)
    get_how $P597, type_obj
    get_global $P598, "!PREFIX__quote_escape:sym<tab>"
    $P597."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "81_1303401182.58" 
    $P599."add_method"(type_obj, "quote_escape:sym<ff>", $P600)
    get_how $P601, type_obj
    get_global $P602, "!PREFIX__quote_escape:sym<ff>"
    $P601."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P602)
    get_how $P603, type_obj
    .const 'Sub' $P604 = "83_1303401182.58" 
    $P603."add_method"(type_obj, "quote_escape:sym<esc>", $P604)
    get_how $P605, type_obj
    get_global $P606, "!PREFIX__quote_escape:sym<esc>"
    $P605."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P606)
    get_how $P607, type_obj
    .const 'Sub' $P608 = "85_1303401182.58" 
    $P607."add_method"(type_obj, "quote_escape:sym<hex>", $P608)
    get_how $P609, type_obj
    get_global $P610, "!PREFIX__quote_escape:sym<hex>"
    $P609."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P610)
    get_how $P611, type_obj
    .const 'Sub' $P612 = "87_1303401182.58" 
    $P611."add_method"(type_obj, "quote_escape:sym<oct>", $P612)
    get_how $P613, type_obj
    get_global $P614, "!PREFIX__quote_escape:sym<oct>"
    $P613."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P614)
    get_how $P615, type_obj
    .const 'Sub' $P616 = "89_1303401182.58" 
    $P615."add_method"(type_obj, "quote_escape:sym<chr>", $P616)
    get_how $P617, type_obj
    get_global $P618, "!PREFIX__quote_escape:sym<chr>"
    $P617."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P618)
    get_how $P619, type_obj
    .const 'Sub' $P620 = "91_1303401182.58" 
    $P619."add_method"(type_obj, "quote_escape:sym<0>", $P620)
    get_how $P621, type_obj
    get_global $P622, "!PREFIX__quote_escape:sym<0>"
    $P621."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P622)
    get_how $P623, type_obj
    .const 'Sub' $P624 = "93_1303401182.58" 
    $P623."add_method"(type_obj, "quote_escape:sym<misc>", $P624)
    get_how $P625, type_obj
    get_global $P626, "!PREFIX__quote_escape:sym<misc>"
    $P625."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P626)
    get_how $P627, type_obj
    .const 'Sub' $P628 = "98_1303401182.58" 
    $P627."add_method"(type_obj, "charname", $P628)
    get_how $P629, type_obj
    get_global $P630, "!PREFIX__charname"
    $P629."add_method"(type_obj, "!PREFIX__charname", $P630)
    get_how $P631, type_obj
    .const 'Sub' $P632 = "101_1303401182.58" 
    $P631."add_method"(type_obj, "charnames", $P632)
    get_how $P633, type_obj
    get_global $P634, "!PREFIX__charnames"
    $P633."add_method"(type_obj, "!PREFIX__charnames", $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "103_1303401182.58" 
    $P635."add_method"(type_obj, "charspec", $P636)
    get_how $P637, type_obj
    get_global $P638, "!PREFIX__charspec"
    $P637."add_method"(type_obj, "!PREFIX__charspec", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "105_1303401182.58" 
    $P639."add_method"(type_obj, "O", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "106_1303401182.58" 
    $P641."add_method"(type_obj, "panic", $P642)
    get_how $P643, type_obj
    .const 'Sub' $P644 = "107_1303401182.58" 
    $P643."add_method"(type_obj, "peek_delimiters", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "108_1303401182.58" 
    $P645."add_method"(type_obj, "quote_EXPR", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "109_1303401182.58" 
    $P647."add_method"(type_obj, "quotemod_check", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "110_1303401182.58" 
    $P649."add_method"(type_obj, "starter", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "111_1303401182.58" 
    $P651."add_method"(type_obj, "stopper", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "112_1303401182.58" 
    $P653."add_method"(type_obj, "split_words", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "113_1303401182.58" 
    $P655."add_method"(type_obj, "EXPR", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "114_1303401182.58" 
    $P657."add_method"(type_obj, "EXPR_reduce", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "115_1303401182.58" 
    $P659."add_method"(type_obj, "ternary", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "116_1303401182.58" 
    $P661."add_method"(type_obj, "MARKER", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "117_1303401182.58" 
    $P663."add_method"(type_obj, "MARKED", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "118_1303401182.58" 
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
.sub "ws"  :subid("12_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303401182.58") :method
.annotate 'line', 10
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303401182.58") :method
.annotate 'line', 10
    new $P32, "ResizablePMCArray"
    push $P32, ""
    .return ($P32)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303401182.58")
    .param pmc param_39
.annotate 'line', 20
    .lex "self", param_39
    $P40 = param_39."!protoregex"("term")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303401182.58")
    .param pmc param_42
.annotate 'line', 20
    .lex "self", param_42
    $P43 = param_42."!PREFIX__!protoregex"("term")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303401182.58")
    .param pmc param_45
.annotate 'line', 21
    .lex "self", param_45
    $P46 = param_45."!protoregex"("infix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303401182.58")
    .param pmc param_48
.annotate 'line', 21
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("infix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303401182.58")
    .param pmc param_51
.annotate 'line', 22
    .lex "self", param_51
    $P52 = param_51."!protoregex"("prefix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303401182.58")
    .param pmc param_54
.annotate 'line', 22
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("prefix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303401182.58")
    .param pmc param_57
.annotate 'line', 23
    .lex "self", param_57
    $P58 = param_57."!protoregex"("postfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303401182.58")
    .param pmc param_60
.annotate 'line', 23
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("postfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303401182.58")
    .param pmc param_63
.annotate 'line', 24
    .lex "self", param_63
    $P64 = param_63."!protoregex"("circumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303401182.58")
    .param pmc param_66
.annotate 'line', 24
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("circumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303401182.58")
    .param pmc param_69
.annotate 'line', 25
    .lex "self", param_69
    $P70 = param_69."!protoregex"("postcircumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303401182.58")
    .param pmc param_72
.annotate 'line', 25
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("postcircumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303401182.58") :method
.annotate 'line', 10
    $P77 = self."!PREFIX__!subrule"("circumfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303401182.58") :method
.annotate 'line', 10
    $P83 = self."!PREFIX__!subrule"("infix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303401182.58") :method
.annotate 'line', 10
    $P89 = self."!PREFIX__!subrule"("prefix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303401182.58") :method
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
.sub "nullterm"  :subid("36_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303401182.58") :method
.annotate 'line', 10
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303401182.58") :method
.annotate 'line', 10
    $P108 = self."!PREFIX__!subrule"("nullterm", "")
    new $P109, "ResizablePMCArray"
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303401182.58") :outer("11_1303401182.58")
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
.sub "quote_delimited"  :subid("41_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303401182.58") :method
.annotate 'line', 40
    $P122 = self."!PREFIX__!subrule"("starter", "")
    new $P123, "ResizablePMCArray"
    push $P123, $P122
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303401182.58") :method
.annotate 'line', 40
    new $P130, "ResizablePMCArray"
    push $P130, ""
    .return ($P130)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303401182.58") :method
.annotate 'line', 40
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303401182.58") :method
.annotate 'line', 40
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303401182.58") :method
.annotate 'line', 40
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303401182.58") :method
.annotate 'line', 40
    new $P158, "ResizablePMCArray"
    push $P158, ""
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303401182.58") :method
.annotate 'line', 40
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303401182.58") :method
.annotate 'line', 40
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303401182.58") :method
.annotate 'line', 40
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303401182.58") :method
.annotate 'line', 40
    new $P184, "ResizablePMCArray"
    push $P184, ""
    .return ($P184)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303401182.58") :method
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
.sub "dec_number"  :subid("63_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303401182.58") :method
.annotate 'line', 40
    new $P202, "ResizablePMCArray"
    push $P202, ""
    push $P202, ""
    push $P202, "."
    .return ($P202)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303401182.58") :method
.annotate 'line', 40
    new $P215, "ResizablePMCArray"
    push $P215, "e"
    push $P215, "E"
    .return ($P215)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303401182.58")
    .param pmc param_219
.annotate 'line', 86
    .lex "self", param_219
    $P220 = param_219."!protoregex"("quote_escape")
    .return ($P220)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303401182.58")
    .param pmc param_222
.annotate 'line', 86
    .lex "self", param_222
    $P223 = param_222."!PREFIX__!protoregex"("quote_escape")
    .return ($P223)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303401182.58") :method
.annotate 'line', 40
    new $P227, "ResizablePMCArray"
    push $P227, "\\\\"
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303401182.58") :method
.annotate 'line', 40
    new $P232, "ResizablePMCArray"
    push $P232, "\\"
    .return ($P232)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303401182.58") :method
.annotate 'line', 40
    new $P237, "ResizablePMCArray"
    push $P237, "\\b"
    .return ($P237)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303401182.58") :method
.annotate 'line', 40
    new $P242, "ResizablePMCArray"
    push $P242, "\\n"
    .return ($P242)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303401182.58") :method
.annotate 'line', 40
    new $P247, "ResizablePMCArray"
    push $P247, "\\r"
    .return ($P247)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303401182.58") :method
.annotate 'line', 40
    new $P252, "ResizablePMCArray"
    push $P252, "\\t"
    .return ($P252)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303401182.58") :method
.annotate 'line', 40
    new $P257, "ResizablePMCArray"
    push $P257, "\\f"
    .return ($P257)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303401182.58") :method
.annotate 'line', 40
    new $P262, "ResizablePMCArray"
    push $P262, "\\e"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303401182.58") :method
.annotate 'line', 40
    new $P267, "ResizablePMCArray"
    push $P267, unicode:"\\x"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303401182.58") :method
.annotate 'line', 40
    new $P273, "ResizablePMCArray"
    push $P273, "\\o"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303401182.58") :method
.annotate 'line', 40
    new $P279, "ResizablePMCArray"
    push $P279, "\\c"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303401182.58") :method
.annotate 'line', 40
    new $P284, "ResizablePMCArray"
    push $P284, "\\0"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303401182.58") :method :outer("11_1303401182.58")
.annotate 'line', 40
    .const 'Sub' $P307 = "97_1303401182.58" 
    capture_lex $P307
    .const 'Sub' $P300 = "96_1303401182.58" 
    capture_lex $P300
    .const 'Sub' $P295 = "95_1303401182.58" 
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
    .const 'Sub' $P295 = "95_1303401182.58" 
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
    .const 'Sub' $P300 = "96_1303401182.58" 
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
    .const 'Sub' $P307 = "97_1303401182.58" 
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
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303401182.58") :method
.annotate 'line', 40
    new $P290, "ResizablePMCArray"
    push $P290, ""
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block294"  :anon :subid("95_1303401182.58") :outer("93_1303401182.58")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("96_1303401182.58") :method :outer("93_1303401182.58")
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
.sub "_block306"  :anon :subid("97_1303401182.58") :outer("93_1303401182.58")
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
.sub "charname"  :subid("98_1303401182.58") :method :outer("11_1303401182.58")
.annotate 'line', 40
    .const 'Sub' $P329 = "100_1303401182.58" 
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
    .const 'Sub' $P329 = "100_1303401182.58" 
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
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303401182.58") :method
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
.sub "_block328"  :anon :subid("100_1303401182.58") :method :outer("98_1303401182.58")
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
.sub "charnames"  :subid("101_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303401182.58") :method
.annotate 'line', 40
    new $P335, "ResizablePMCArray"
    push $P335, ""
    .return ($P335)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303401182.58") :method :outer("11_1303401182.58")
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
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303401182.58") :method
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
.sub "O"  :subid("105_1303401182.58") :outer("11_1303401182.58")
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
.sub "panic"  :subid("106_1303401182.58") :outer("11_1303401182.58")
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
.sub "peek_delimiters"  :subid("107_1303401182.58") :outer("11_1303401182.58")
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
.sub "quote_EXPR"  :subid("108_1303401182.58") :outer("11_1303401182.58")
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
.sub "quotemod_check" :nsentry :subid("109_1303401182.58") :outer("11_1303401182.58")
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
.sub "starter"  :subid("110_1303401182.58") :outer("11_1303401182.58")
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
.sub "stopper"  :subid("111_1303401182.58") :outer("11_1303401182.58")
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
.sub "split_words" :nsentry :subid("112_1303401182.58") :outer("11_1303401182.58")
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
.sub "EXPR"  :subid("113_1303401182.58") :outer("11_1303401182.58")
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
.sub "EXPR_reduce"  :subid("114_1303401182.58") :outer("11_1303401182.58")
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
.sub "ternary"  :subid("115_1303401182.58") :outer("11_1303401182.58")
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
.sub "MARKER"  :subid("116_1303401182.58") :outer("11_1303401182.58")
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
.sub "MARKED"  :subid("117_1303401182.58") :outer("11_1303401182.58")
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
.sub "LANG"  :subid("118_1303401182.58") :outer("11_1303401182.58")
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
.sub "_block671"  :subid("120_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 861
    .const 'Sub' $P1320 = "166_1303401182.58" 
    capture_lex $P1320
    .const 'Sub' $P1301 = "165_1303401182.58" 
    capture_lex $P1301
    .const 'Sub' $P1278 = "163_1303401182.58" 
    capture_lex $P1278
    .const 'Sub' $P1250 = "162_1303401182.58" 
    capture_lex $P1250
    .const 'Sub' $P1233 = "161_1303401182.58" 
    capture_lex $P1233
    .const 'Sub' $P1228 = "160_1303401182.58" 
    capture_lex $P1228
    .const 'Sub' $P1220 = "159_1303401182.58" 
    capture_lex $P1220
    .const 'Sub' $P1205 = "158_1303401182.58" 
    capture_lex $P1205
    .const 'Sub' $P1190 = "157_1303401182.58" 
    capture_lex $P1190
    .const 'Sub' $P1185 = "156_1303401182.58" 
    capture_lex $P1185
    .const 'Sub' $P1180 = "155_1303401182.58" 
    capture_lex $P1180
    .const 'Sub' $P1175 = "154_1303401182.58" 
    capture_lex $P1175
    .const 'Sub' $P1170 = "153_1303401182.58" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "152_1303401182.58" 
    capture_lex $P1165
    .const 'Sub' $P1160 = "151_1303401182.58" 
    capture_lex $P1160
    .const 'Sub' $P1152 = "150_1303401182.58" 
    capture_lex $P1152
    .const 'Sub' $P1147 = "149_1303401182.58" 
    capture_lex $P1147
    .const 'Sub' $P1133 = "148_1303401182.58" 
    capture_lex $P1133
    .const 'Sub' $P1060 = "146_1303401182.58" 
    capture_lex $P1060
    .const 'Sub' $P999 = "143_1303401182.58" 
    capture_lex $P999
    .const 'Sub' $P992 = "142_1303401182.58" 
    capture_lex $P992
    .const 'Sub' $P985 = "141_1303401182.58" 
    capture_lex $P985
    .const 'Sub' $P978 = "140_1303401182.58" 
    capture_lex $P978
    .const 'Sub' $P971 = "139_1303401182.58" 
    capture_lex $P971
    .const 'Sub' $P964 = "138_1303401182.58" 
    capture_lex $P964
    .const 'Sub' $P956 = "137_1303401182.58" 
    capture_lex $P956
    .const 'Sub' $P948 = "136_1303401182.58" 
    capture_lex $P948
    .const 'Sub' $P942 = "135_1303401182.58" 
    capture_lex $P942
    .const 'Sub' $P934 = "134_1303401182.58" 
    capture_lex $P934
    .const 'Sub' $P926 = "133_1303401182.58" 
    capture_lex $P926
    .const 'Sub' $P821 = "130_1303401182.58" 
    capture_lex $P821
    .const 'Sub' $P785 = "127_1303401182.58" 
    capture_lex $P785
    .const 'Sub' $P780 = "126_1303401182.58" 
    capture_lex $P780
    .const 'Sub' $P743 = "123_1303401182.58" 
    capture_lex $P743
    .const 'Sub' $P673 = "121_1303401182.58" 
    capture_lex $P673
.annotate 'line', 862
    .const 'Sub' $P673 = "121_1303401182.58" 
    newclosure $P741, $P673
    .lex "string_to_int", $P741
.annotate 'line', 861
    find_lex $P742, "string_to_int"
    set_global "string_to_int", $P742
.annotate 'line', 881
    .const 'Sub' $P743 = "123_1303401182.58" 
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
    .const 'Sub' $P1301 = "165_1303401182.58" 
    newclosure $P1316, $P1301
.annotate 'line', 861
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post493") :outer("120_1303401182.58")
.annotate 'line', 861
    get_hll_global $P672, ["HLL";"Actions"], "_block671" 
    .local pmc block
    set block, $P672
    .const 'Sub' $P1317 = "121_1303401182.58" 
    set_global "string_to_int", $P1317
    .const 'Sub' $P1318 = "123_1303401182.58" 
    set_global "ints_to_string", $P1318
    .const 'Sub' $P1320 = "166_1303401182.58" 
    capture_lex $P1320
    $P1320()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1319"  :anon :subid("166_1303401182.58") :outer("120_1303401182.58")
.annotate 'line', 861
    nqp_get_sc_object $P1321, "1303401174.917", 2
    .local pmc type_obj
    set type_obj, $P1321
    get_how $P1322, type_obj
    .const 'Sub' $P1323 = "126_1303401182.58" 
    $P1322."add_method"(type_obj, "CTXSAVE", $P1323)
    get_how $P1324, type_obj
    .const 'Sub' $P1325 = "127_1303401182.58" 
    $P1324."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1325)
    get_how $P1326, type_obj
    .const 'Sub' $P1327 = "130_1303401182.58" 
    $P1326."add_method"(type_obj, "EXPR", $P1327)
    get_how $P1328, type_obj
    .const 'Sub' $P1329 = "133_1303401182.58" 
    $P1328."add_method"(type_obj, "term:sym<circumfix>", $P1329)
    get_how $P1330, type_obj
    .const 'Sub' $P1331 = "134_1303401182.58" 
    $P1330."add_method"(type_obj, "termish", $P1331)
    get_how $P1332, type_obj
    .const 'Sub' $P1333 = "135_1303401182.58" 
    $P1332."add_method"(type_obj, "nullterm", $P1333)
    get_how $P1334, type_obj
    .const 'Sub' $P1335 = "136_1303401182.58" 
    $P1334."add_method"(type_obj, "nullterm_alt", $P1335)
    get_how $P1336, type_obj
    .const 'Sub' $P1337 = "137_1303401182.58" 
    $P1336."add_method"(type_obj, "integer", $P1337)
    get_how $P1338, type_obj
    .const 'Sub' $P1339 = "138_1303401182.58" 
    $P1338."add_method"(type_obj, "dec_number", $P1339)
    get_how $P1340, type_obj
    .const 'Sub' $P1341 = "139_1303401182.58" 
    $P1340."add_method"(type_obj, "decint", $P1341)
    get_how $P1342, type_obj
    .const 'Sub' $P1343 = "140_1303401182.58" 
    $P1342."add_method"(type_obj, "hexint", $P1343)
    get_how $P1344, type_obj
    .const 'Sub' $P1345 = "141_1303401182.58" 
    $P1344."add_method"(type_obj, "octint", $P1345)
    get_how $P1346, type_obj
    .const 'Sub' $P1347 = "142_1303401182.58" 
    $P1346."add_method"(type_obj, "binint", $P1347)
    get_how $P1348, type_obj
    .const 'Sub' $P1349 = "143_1303401182.58" 
    $P1348."add_method"(type_obj, "quote_EXPR", $P1349)
    get_how $P1350, type_obj
    .const 'Sub' $P1351 = "146_1303401182.58" 
    $P1350."add_method"(type_obj, "quote_delimited", $P1351)
    get_how $P1352, type_obj
    .const 'Sub' $P1353 = "148_1303401182.58" 
    $P1352."add_method"(type_obj, "quote_atom", $P1353)
    get_how $P1354, type_obj
    .const 'Sub' $P1355 = "149_1303401182.58" 
    $P1354."add_method"(type_obj, "quote_escape:sym<backslash>", $P1355)
    get_how $P1356, type_obj
    .const 'Sub' $P1357 = "150_1303401182.58" 
    $P1356."add_method"(type_obj, "quote_escape:sym<stopper>", $P1357)
    get_how $P1358, type_obj
    .const 'Sub' $P1359 = "151_1303401182.58" 
    $P1358."add_method"(type_obj, "quote_escape:sym<bs>", $P1359)
    get_how $P1360, type_obj
    .const 'Sub' $P1361 = "152_1303401182.58" 
    $P1360."add_method"(type_obj, "quote_escape:sym<nl>", $P1361)
    get_how $P1362, type_obj
    .const 'Sub' $P1363 = "153_1303401182.58" 
    $P1362."add_method"(type_obj, "quote_escape:sym<cr>", $P1363)
    get_how $P1364, type_obj
    .const 'Sub' $P1365 = "154_1303401182.58" 
    $P1364."add_method"(type_obj, "quote_escape:sym<tab>", $P1365)
    get_how $P1366, type_obj
    .const 'Sub' $P1367 = "155_1303401182.58" 
    $P1366."add_method"(type_obj, "quote_escape:sym<ff>", $P1367)
    get_how $P1368, type_obj
    .const 'Sub' $P1369 = "156_1303401182.58" 
    $P1368."add_method"(type_obj, "quote_escape:sym<esc>", $P1369)
    get_how $P1370, type_obj
    .const 'Sub' $P1371 = "157_1303401182.58" 
    $P1370."add_method"(type_obj, "quote_escape:sym<hex>", $P1371)
    get_how $P1372, type_obj
    .const 'Sub' $P1373 = "158_1303401182.58" 
    $P1372."add_method"(type_obj, "quote_escape:sym<oct>", $P1373)
    get_how $P1374, type_obj
    .const 'Sub' $P1375 = "159_1303401182.58" 
    $P1374."add_method"(type_obj, "quote_escape:sym<chr>", $P1375)
    get_how $P1376, type_obj
    .const 'Sub' $P1377 = "160_1303401182.58" 
    $P1376."add_method"(type_obj, "quote_escape:sym<0>", $P1377)
    get_how $P1378, type_obj
    .const 'Sub' $P1379 = "161_1303401182.58" 
    $P1378."add_method"(type_obj, "quote_escape:sym<misc>", $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "162_1303401182.58" 
    $P1380."add_method"(type_obj, "charname", $P1381)
    get_how $P1382, type_obj
    .const 'Sub' $P1383 = "163_1303401182.58" 
    $P1382."add_method"(type_obj, "charnames", $P1383)
    get_how $P1384, type_obj
    .const 'Sub' $P1385 = "165_1303401182.58" 
    $P1384."add_method"(type_obj, "charspec", $P1385)
    get_how $P1386, type_obj
    get_hll_global $P1387, "NQPMu"
    $P1386."set_default_parent"(type_obj, $P1387)
    get_how $P1388, type_obj
    $P1389 = $P1388."compose"(type_obj)
    .return ($P1389)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_674
    .param pmc param_675
.annotate 'line', 862
    .const 'Sub' $P691 = "122_1303401182.58" 
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
    .const 'Sub' $P691 = "122_1303401182.58" 
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
.sub "_block690"  :anon :subid("122_1303401182.58") :outer("121_1303401182.58")
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
.sub "ints_to_string"  :subid("123_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_744
.annotate 'line', 881
    .const 'Sub' $P750 = "124_1303401182.58" 
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
    .const 'Sub' $P750 = "124_1303401182.58" 
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
.sub "_block749"  :anon :subid("124_1303401182.58") :outer("123_1303401182.58")
.annotate 'line', 882
    .const 'Sub' $P758 = "125_1303401182.58" 
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
    .const 'Sub' $P758 = "125_1303401182.58" 
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
.sub "_block757"  :anon :subid("125_1303401182.58") :outer("124_1303401182.58")
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
.sub "CTXSAVE"  :subid("126_1303401182.58") :outer("120_1303401182.58")
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
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_786
    .param pmc param_787
.annotate 'line', 908
    .const 'Sub' $P797 = "128_1303401182.58" 
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
    .const 'Sub' $P797 = "128_1303401182.58" 
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
.sub "_block796"  :anon :subid("128_1303401182.58") :outer("127_1303401182.58")
.annotate 'line', 910
    .const 'Sub' $P811 = "129_1303401182.58" 
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
    .const 'Sub' $P811 = "129_1303401182.58" 
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
.sub "_block810"  :anon :subid("129_1303401182.58") :outer("128_1303401182.58")
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
.sub "EXPR"  :subid("130_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_824
    .param pmc param_825
    .param pmc param_826 :optional
    .param int has_param_826 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P908 = "132_1303401182.58" 
    capture_lex $P908
    .const 'Sub' $P872 = "131_1303401182.58" 
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
    .const 'Sub' $P872 = "131_1303401182.58" 
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
    .const 'Sub' $P908 = "132_1303401182.58" 
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
.sub "_block871"  :anon :subid("131_1303401182.58") :outer("130_1303401182.58")
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
.sub "_block907"  :anon :subid("132_1303401182.58") :outer("130_1303401182.58")
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
.sub "term:sym<circumfix>"  :subid("133_1303401182.58") :outer("120_1303401182.58")
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
.sub "termish"  :subid("134_1303401182.58") :outer("120_1303401182.58")
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
.sub "nullterm"  :subid("135_1303401182.58") :outer("120_1303401182.58")
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
.sub "nullterm_alt"  :subid("136_1303401182.58") :outer("120_1303401182.58")
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
.sub "integer"  :subid("137_1303401182.58") :outer("120_1303401182.58")
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
.sub "dec_number"  :subid("138_1303401182.58") :outer("120_1303401182.58")
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
.sub "decint"  :subid("139_1303401182.58") :outer("120_1303401182.58")
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
.sub "hexint"  :subid("140_1303401182.58") :outer("120_1303401182.58")
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
.sub "octint"  :subid("141_1303401182.58") :outer("120_1303401182.58")
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
.sub "binint"  :subid("142_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_EXPR"  :subid("143_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_1000
    .param pmc param_1001
.annotate 'line', 956
    .const 'Sub' $P1017 = "144_1303401182.58" 
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
    .const 'Sub' $P1017 = "144_1303401182.58" 
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
.sub "_block1016"  :anon :subid("144_1303401182.58") :outer("143_1303401182.58")
.annotate 'line', 962
    .const 'Sub' $P1036 = "145_1303401182.58" 
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
    .const 'Sub' $P1036 = "145_1303401182.58" 
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
.sub "_block1035"  :anon :subid("145_1303401182.58") :outer("144_1303401182.58")
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
.sub "quote_delimited"  :subid("146_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_1061
    .param pmc param_1062
.annotate 'line', 979
    .const 'Sub' $P1074 = "147_1303401182.58" 
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
    .const 'Sub' $P1074 = "147_1303401182.58" 
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
.sub "_block1073"  :anon :subid("147_1303401182.58") :outer("146_1303401182.58")
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
.sub "quote_atom"  :subid("148_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<backslash>"  :subid("149_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<stopper>"  :subid("150_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<bs>"  :subid("151_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<nl>"  :subid("152_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<cr>"  :subid("153_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<tab>"  :subid("154_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<ff>"  :subid("155_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<esc>"  :subid("156_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<hex>"  :subid("157_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<oct>"  :subid("158_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<chr>"  :subid("159_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<0>"  :subid("160_1303401182.58") :outer("120_1303401182.58")
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
.sub "quote_escape:sym<misc>"  :subid("161_1303401182.58") :outer("120_1303401182.58")
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
.sub "charname"  :subid("162_1303401182.58") :outer("120_1303401182.58")
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
.sub "charnames"  :subid("163_1303401182.58") :outer("120_1303401182.58")
    .param pmc param_1279
    .param pmc param_1280
.annotate 'line', 1046
    .const 'Sub' $P1289 = "164_1303401182.58" 
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
    .const 'Sub' $P1289 = "164_1303401182.58" 
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
.sub "_block1288"  :anon :subid("164_1303401182.58") :outer("163_1303401182.58")
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
.sub "charspec"  :subid("165_1303401182.58") :outer("120_1303401182.58")
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
.sub "_block1390"  :subid("167_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 1066
    .const 'Sub' $P2542 = "233_1303401182.58" 
    capture_lex $P2542
    .const 'Sub' $P2534 = "232_1303401182.58" 
    capture_lex $P2534
    .const 'Sub' $P2481 = "230_1303401182.58" 
    capture_lex $P2481
    .const 'Sub' $P2408 = "227_1303401182.58" 
    capture_lex $P2408
    .const 'Sub' $P2378 = "225_1303401182.58" 
    capture_lex $P2378
    .const 'Sub' $P2373 = "224_1303401182.58" 
    capture_lex $P2373
    .const 'Sub' $P2363 = "223_1303401182.58" 
    capture_lex $P2363
    .const 'Sub' $P2337 = "221_1303401182.58" 
    capture_lex $P2337
    .const 'Sub' $P2328 = "220_1303401182.58" 
    capture_lex $P2328
    .const 'Sub' $P2320 = "219_1303401182.58" 
    capture_lex $P2320
    .const 'Sub' $P2312 = "218_1303401182.58" 
    capture_lex $P2312
    .const 'Sub' $P2308 = "217_1303401182.58" 
    capture_lex $P2308
    .const 'Sub' $P2304 = "216_1303401182.58" 
    capture_lex $P2304
    .const 'Sub' $P2237 = "214_1303401182.58" 
    capture_lex $P2237
    .const 'Sub' $P2141 = "210_1303401182.58" 
    capture_lex $P2141
    .const 'Sub' $P2105 = "207_1303401182.58" 
    capture_lex $P2105
    .const 'Sub' $P2057 = "205_1303401182.58" 
    capture_lex $P2057
    .const 'Sub' $P2044 = "204_1303401182.58" 
    capture_lex $P2044
    .const 'Sub' $P2031 = "203_1303401182.58" 
    capture_lex $P2031
    .const 'Sub' $P2018 = "202_1303401182.58" 
    capture_lex $P2018
    .const 'Sub' $P2005 = "201_1303401182.58" 
    capture_lex $P2005
    .const 'Sub' $P1992 = "200_1303401182.58" 
    capture_lex $P1992
    .const 'Sub' $P1979 = "199_1303401182.58" 
    capture_lex $P1979
    .const 'Sub' $P1966 = "198_1303401182.58" 
    capture_lex $P1966
    .const 'Sub' $P1953 = "197_1303401182.58" 
    capture_lex $P1953
    .const 'Sub' $P1948 = "196_1303401182.58" 
    capture_lex $P1948
    .const 'Sub' $P1944 = "195_1303401182.58" 
    capture_lex $P1944
    .const 'Sub' $P1904 = "193_1303401182.58" 
    capture_lex $P1904
    .const 'Sub' $P1751 = "186_1303401182.58" 
    capture_lex $P1751
    .const 'Sub' $P1738 = "185_1303401182.58" 
    capture_lex $P1738
    .const 'Sub' $P1645 = "180_1303401182.58" 
    capture_lex $P1645
    .const 'Sub' $P1612 = "178_1303401182.58" 
    capture_lex $P1612
    .const 'Sub' $P1597 = "177_1303401182.58" 
    capture_lex $P1597
    .const 'Sub' $P1582 = "176_1303401182.58" 
    capture_lex $P1582
    .const 'Sub' $P1495 = "173_1303401182.58" 
    capture_lex $P1495
    .const 'Sub' $P1436 = "171_1303401182.58" 
    capture_lex $P1436
    .const 'Sub' $P1429 = "170_1303401182.58" 
    capture_lex $P1429
    .const 'Sub' $P1409 = "169_1303401182.58" 
    capture_lex $P1409
    .const 'Sub' $P1392 = "168_1303401182.58" 
    capture_lex $P1392
.annotate 'line', 1126
    .const 'Sub' $P1392 = "168_1303401182.58" 
    newclosure $P1405, $P1392
    .lex "value_type", $P1405
.annotate 'line', 1066
    .lex "$?PACKAGE", $P1406
    .lex "$?CLASS", $P1407
.annotate 'line', 1088
    .const 'Sub' $P1409 = "169_1303401182.58" 
    capture_lex $P1409
    $P1409()
.annotate 'line', 1066
    find_lex $P1423, "$?PACKAGE"
    get_who $P1424, $P1423
    set $P1425, $P1424["$interactive_ctx"]
    unless_null $P1425, vivify_687
    new $P1425, "Undef"
  vivify_687:
    find_lex $P1426, "$?PACKAGE"
    get_who $P1427, $P1426
    set $P1428, $P1427["%interactive_pad"]
    unless_null $P1428, vivify_688
    $P1428 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1106
    find_lex $P1494, "value_type"
.annotate 'line', 1722
    .const 'Sub' $P2534 = "232_1303401182.58" 
    newclosure $P2540, $P2534
.annotate 'line', 1066
    .return ($P2540)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post680") :outer("167_1303401182.58")
.annotate 'line', 1066
    get_hll_global $P1391, ["HLL";"Compiler"], "_block1390" 
    .local pmc block
    set block, $P1391
    .const 'Sub' $P2542 = "233_1303401182.58" 
    capture_lex $P2542
    $P2542()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2541"  :anon :subid("233_1303401182.58") :outer("167_1303401182.58")
.annotate 'line', 1066
    nqp_get_sc_object $P2543, "1303401174.917", 3
    .local pmc type_obj
    set type_obj, $P2543
    get_how $P2544, type_obj
    get_hll_global $P2545, "NQPAttribute"
    $P2546 = $P2545."new"("@!stages" :named("name"))
    $P2544."add_attribute"(type_obj, $P2546)
    get_how $P2547, type_obj
    get_hll_global $P2548, "NQPAttribute"
    $P2549 = $P2548."new"("$!parsegrammar" :named("name"))
    $P2547."add_attribute"(type_obj, $P2549)
    get_how $P2550, type_obj
    get_hll_global $P2551, "NQPAttribute"
    $P2552 = $P2551."new"("$!parseactions" :named("name"))
    $P2550."add_attribute"(type_obj, $P2552)
    get_how $P2553, type_obj
    get_hll_global $P2554, "NQPAttribute"
    $P2555 = $P2554."new"("$!astgrammar" :named("name"))
    $P2553."add_attribute"(type_obj, $P2555)
    get_how $P2556, type_obj
    get_hll_global $P2557, "NQPAttribute"
    $P2558 = $P2557."new"("$!commandline_banner" :named("name"))
    $P2556."add_attribute"(type_obj, $P2558)
    get_how $P2559, type_obj
    get_hll_global $P2560, "NQPAttribute"
    $P2561 = $P2560."new"("$!commandline_prompt" :named("name"))
    $P2559."add_attribute"(type_obj, $P2561)
    get_how $P2562, type_obj
    get_hll_global $P2563, "NQPAttribute"
    $P2564 = $P2563."new"("@!cmdoptions" :named("name"))
    $P2562."add_attribute"(type_obj, $P2564)
    get_how $P2565, type_obj
    get_hll_global $P2566, "NQPAttribute"
    $P2567 = $P2566."new"("$!usage" :named("name"))
    $P2565."add_attribute"(type_obj, $P2567)
    get_how $P2568, type_obj
    get_hll_global $P2569, "NQPAttribute"
    $P2570 = $P2569."new"("$!version" :named("name"))
    $P2568."add_attribute"(type_obj, $P2570)
    get_how $P2571, type_obj
    get_hll_global $P2572, "NQPAttribute"
    $P2573 = $P2572."new"("$!compiler_progname" :named("name"))
    $P2571."add_attribute"(type_obj, $P2573)
    get_how $P2574, type_obj
    get_hll_global $P2575, "NQPAttribute"
    $P2576 = $P2575."new"("$!language" :named("name"))
    $P2574."add_attribute"(type_obj, $P2576)
    get_how $P2577, type_obj
    .const 'Sub' $P2578 = "170_1303401182.58" 
    $P2577."add_method"(type_obj, "new", $P2578)
    get_how $P2579, type_obj
    .const 'Sub' $P2580 = "171_1303401182.58" 
    $P2579."add_method"(type_obj, "BUILD", $P2580)
    get_how $P2581, type_obj
    .const 'Sub' $P2582 = "173_1303401182.58" 
    $P2581."add_method"(type_obj, "get_exports", $P2582)
    get_how $P2583, type_obj
    .const 'Sub' $P2584 = "176_1303401182.58" 
    $P2583."add_method"(type_obj, "get_module", $P2584)
    get_how $P2585, type_obj
    .const 'Sub' $P2586 = "177_1303401182.58" 
    $P2585."add_method"(type_obj, "language", $P2586)
    get_how $P2587, type_obj
    .const 'Sub' $P2588 = "178_1303401182.58" 
    $P2587."add_method"(type_obj, "load_module", $P2588)
    get_how $P2589, type_obj
    .const 'Sub' $P2590 = "180_1303401182.58" 
    $P2589."add_method"(type_obj, "import", $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "185_1303401182.58" 
    $P2591."add_method"(type_obj, "autoprint", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "186_1303401182.58" 
    $P2593."add_method"(type_obj, "interactive", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "193_1303401182.58" 
    $P2595."add_method"(type_obj, "eval", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "195_1303401182.58" 
    $P2597."add_method"(type_obj, "ctxsave", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "196_1303401182.58" 
    $P2599."add_method"(type_obj, "panic", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "197_1303401182.58" 
    $P2601."add_method"(type_obj, "stages", $P2602)
    get_how $P2603, type_obj
    .const 'Sub' $P2604 = "198_1303401182.58" 
    $P2603."add_method"(type_obj, "parsegrammar", $P2604)
    get_how $P2605, type_obj
    .const 'Sub' $P2606 = "199_1303401182.58" 
    $P2605."add_method"(type_obj, "parseactions", $P2606)
    get_how $P2607, type_obj
    .const 'Sub' $P2608 = "200_1303401182.58" 
    $P2607."add_method"(type_obj, "astgrammar", $P2608)
    get_how $P2609, type_obj
    .const 'Sub' $P2610 = "201_1303401182.58" 
    $P2609."add_method"(type_obj, "commandline_banner", $P2610)
    get_how $P2611, type_obj
    .const 'Sub' $P2612 = "202_1303401182.58" 
    $P2611."add_method"(type_obj, "commandline_prompt", $P2612)
    get_how $P2613, type_obj
    .const 'Sub' $P2614 = "203_1303401182.58" 
    $P2613."add_method"(type_obj, "compiler_progname", $P2614)
    get_how $P2615, type_obj
    .const 'Sub' $P2616 = "204_1303401182.58" 
    $P2615."add_method"(type_obj, "commandline_options", $P2616)
    get_how $P2617, type_obj
    .const 'Sub' $P2618 = "205_1303401182.58" 
    $P2617."add_method"(type_obj, "command_line", $P2618)
    get_how $P2619, type_obj
    .const 'Sub' $P2620 = "207_1303401182.58" 
    $P2619."add_method"(type_obj, "process_args", $P2620)
    get_how $P2621, type_obj
    .const 'Sub' $P2622 = "210_1303401182.58" 
    $P2621."add_method"(type_obj, "evalfiles", $P2622)
    get_how $P2623, type_obj
    .const 'Sub' $P2624 = "214_1303401182.58" 
    $P2623."add_method"(type_obj, "compile", $P2624)
    get_how $P2625, type_obj
    .const 'Sub' $P2626 = "216_1303401182.58" 
    $P2625."add_method"(type_obj, "parse", $P2626)
    get_how $P2627, type_obj
    .const 'Sub' $P2628 = "217_1303401182.58" 
    $P2627."add_method"(type_obj, "past", $P2628)
    get_how $P2629, type_obj
    .const 'Sub' $P2630 = "218_1303401182.58" 
    $P2629."add_method"(type_obj, "post", $P2630)
    get_how $P2631, type_obj
    .const 'Sub' $P2632 = "219_1303401182.58" 
    $P2631."add_method"(type_obj, "pir", $P2632)
    get_how $P2633, type_obj
    .const 'Sub' $P2634 = "220_1303401182.58" 
    $P2633."add_method"(type_obj, "evalpmc", $P2634)
    get_how $P2635, type_obj
    .const 'Sub' $P2636 = "221_1303401182.58" 
    $P2635."add_method"(type_obj, "dumper", $P2636)
    get_how $P2637, type_obj
    .const 'Sub' $P2638 = "223_1303401182.58" 
    $P2637."add_method"(type_obj, "usage", $P2638)
    get_how $P2639, type_obj
    .const 'Sub' $P2640 = "224_1303401182.58" 
    $P2639."add_method"(type_obj, "version", $P2640)
    get_how $P2641, type_obj
    .const 'Sub' $P2642 = "225_1303401182.58" 
    $P2641."add_method"(type_obj, "removestage", $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "227_1303401182.58" 
    $P2643."add_method"(type_obj, "addstage", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "230_1303401182.58" 
    $P2645."add_method"(type_obj, "parse_name", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "232_1303401182.58" 
    $P2647."add_method"(type_obj, "lineof", $P2648)
    get_how $P2649, type_obj
    get_hll_global $P2650, "NQPMu"
    $P2649."set_default_parent"(type_obj, $P2650)
    get_how $P2651, type_obj
    $P2652 = $P2651."compose"(type_obj)
    .return ($P2652)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1393
.annotate 'line', 1126
    .lex "$value", param_1393
.annotate 'line', 1127
    find_lex $P1396, "$value"
    unless_null $P1396, vivify_681
    new $P1396, "Undef"
  vivify_681:
    isa $I1397, $P1396, "NameSpace"
    if $I1397, if_1395
.annotate 'line', 1129
    find_lex $P1401, "$value"
    unless_null $P1401, vivify_682
    new $P1401, "Undef"
  vivify_682:
    isa $I1402, $P1401, "Sub"
    if $I1402, if_1400
    new $P1404, "String"
    assign $P1404, "var"
    set $P1399, $P1404
    goto if_1400_end
  if_1400:
    new $P1403, "String"
    assign $P1403, "sub"
    set $P1399, $P1403
  if_1400_end:
    set $P1394, $P1399
.annotate 'line', 1127
    goto if_1395_end
  if_1395:
    new $P1398, "String"
    assign $P1398, "namespace"
    set $P1394, $P1398
  if_1395_end:
.annotate 'line', 1126
    .return ($P1394)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1408"  :anon :subid("169_1303401182.58") :outer("167_1303401182.58")
.annotate 'line', 1093
    $P1410 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1410
.annotate 'line', 1090
    getinterp $P1411
    set $P1412, $P1411["context"]
    unless_null $P1412, vivify_683
    new $P1412, "Undef"
  vivify_683:
    find_lex $P1413, "$?PACKAGE"
    get_who $P1414, $P1413
    set $P1414["$interactive_ctx"], $P1412
    find_lex $P1415, "%pad_contents"
    unless_null $P1415, vivify_684
    $P1415 = root_new ['parrot';'Hash']
  vivify_684:
.annotate 'line', 1095
    find_lex $P1416, "$?PACKAGE"
    get_who $P1417, $P1416
    set $P1418, $P1417["$interactive_ctx"]
    unless_null $P1418, vivify_685
    new $P1418, "Undef"
  vivify_685:
    getattribute $P1419, $P1418, "lex_pad"
    find_lex $P1420, "%pad_contents"
    unless_null $P1420, vivify_686
    $P1420 = root_new ['parrot';'Hash']
  vivify_686:
    copy $P1419, $P1420
.annotate 'line', 1094
    find_lex $P1421, "$?PACKAGE"
    get_who $P1422, $P1421
    set $P1422["%interactive_pad"], $P1419
.annotate 'line', 1088
    .return ($P1419)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1430
.annotate 'line', 1100
    .lex "self", param_1430
.annotate 'line', 1101
    new $P1431, "Undef"
    .lex "$obj", $P1431
    find_lex $P1432, "self"
    repr_instance_of $P1433, $P1432
    store_lex "$obj", $P1433
.annotate 'line', 1102
    find_lex $P1434, "$obj"
    unless_null $P1434, vivify_689
    new $P1434, "Undef"
  vivify_689:
    $P1434."BUILD"()
    find_lex $P1435, "$obj"
    unless_null $P1435, vivify_690
    new $P1435, "Undef"
  vivify_690:
.annotate 'line', 1100
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1437
.annotate 'line', 1106
    .const 'Sub' $P1458 = "172_1303401182.58" 
    capture_lex $P1458
    .lex "self", param_1437
.annotate 'line', 1116
    new $P1438, "Undef"
    .lex "$config_hash_idx", $P1438
.annotate 'line', 1120
    $P1439 = root_new ['parrot';'Hash']
    .lex "%config", $P1439
.annotate 'line', 1121
    new $P1440, "Undef"
    .lex "$version", $P1440
.annotate 'line', 1122
    new $P1441, "Undef"
    .lex "$revision", $P1441
.annotate 'line', 1108
    split $P1442, " ", "parse past post pir evalpmc"
    find_lex $P1443, "self"
    find_lex $P1444, "$?CLASS"
    setattribute $P1443, $P1444, "@!stages", $P1442
.annotate 'line', 1111
    split $P1445, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1446, "self"
    find_lex $P1447, "$?CLASS"
    setattribute $P1446, $P1447, "@!cmdoptions", $P1445
.annotate 'line', 1112
    new $P1448, "String"
    assign $P1448, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1449, "self"
    find_lex $P1450, "$?CLASS"
    setattribute $P1449, $P1450, "$!usage", $P1448
.annotate 'line', 1113
    find_lex $P1452, "self"
    find_lex $P1453, "$?CLASS"
    getattribute $P1454, $P1452, $P1453, "@!cmdoptions"
    unless_null $P1454, vivify_691
    $P1454 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    defined $I1455, $P1454
    unless $I1455, for_undef_692
    iter $P1451, $P1454
    new $P1471, 'ExceptionHandler'
    set_label $P1471, loop1470_handler
    $P1471."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1471
  loop1470_test:
    unless $P1451, loop1470_done
    shift $P1456, $P1451
  loop1470_redo:
    .const 'Sub' $P1458 = "172_1303401182.58" 
    capture_lex $P1458
    $P1458($P1456)
  loop1470_next:
    goto loop1470_test
  loop1470_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1472, exception, 'type'
    eq $P1472, .CONTROL_LOOP_NEXT, loop1470_next
    eq $P1472, .CONTROL_LOOP_REDO, loop1470_redo
  loop1470_done:
    pop_eh 
  for_undef_692:
.annotate 'line', 1116

            .include 'iglobals.pasm'
            $P1473 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1473
.annotate 'line', 1120
    find_lex $P1474, "$config_hash_idx"
    unless_null $P1474, vivify_695
    new $P1474, "Undef"
  vivify_695:
    set $I1475, $P1474
    getinterp $P1476
    set $P1477, $P1476[$I1475]
    unless_null $P1477, vivify_696
    new $P1477, "Undef"
  vivify_696:
    store_lex "%config", $P1477
.annotate 'line', 1121
    find_lex $P1478, "%config"
    unless_null $P1478, vivify_697
    $P1478 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1479, $P1478["VERSION"]
    unless_null $P1479, vivify_698
    new $P1479, "Undef"
  vivify_698:
    store_lex "$version", $P1479
.annotate 'line', 1122
    find_lex $P1481, "%config"
    unless_null $P1481, vivify_699
    $P1481 = root_new ['parrot';'Hash']
  vivify_699:
    set $P1482, $P1481["git_describe"]
    unless_null $P1482, vivify_700
    new $P1482, "Undef"
  vivify_700:
    set $P1480, $P1482
    defined $I1484, $P1480
    if $I1484, default_1483
    new $P1485, "String"
    assign $P1485, "(unknown)"
    set $P1480, $P1485
  default_1483:
    store_lex "$revision", $P1480
.annotate 'line', 1123
    new $P1486, 'String'
    set $P1486, "This compiler is built with NQP, parrot "
    find_lex $P1487, "$version"
    unless_null $P1487, vivify_701
    new $P1487, "Undef"
  vivify_701:
    concat $P1488, $P1486, $P1487
    concat $P1489, $P1488, ", revision "
    find_lex $P1490, "$revision"
    unless_null $P1490, vivify_702
    new $P1490, "Undef"
  vivify_702:
    concat $P1491, $P1489, $P1490
    find_lex $P1492, "self"
    find_lex $P1493, "$?CLASS"
    setattribute $P1492, $P1493, "$!version", $P1491
.annotate 'line', 1106
    .return ($P1491)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1457"  :anon :subid("172_1303401182.58") :outer("171_1303401182.58")
    .param pmc param_1459
.annotate 'line', 1113
    .lex "$_", param_1459
.annotate 'line', 1114
    find_lex $P1460, "self"
    find_lex $P1461, "$?CLASS"
    getattribute $P1462, $P1460, $P1461, "$!usage"
    unless_null $P1462, vivify_693
    new $P1462, "Undef"
  vivify_693:
    new $P1463, 'String'
    set $P1463, "    "
    find_lex $P1464, "$_"
    unless_null $P1464, vivify_694
    new $P1464, "Undef"
  vivify_694:
    concat $P1465, $P1463, $P1464
    concat $P1466, $P1465, "\n"
    concat $P1467, $P1462, $P1466
    find_lex $P1468, "self"
    find_lex $P1469, "$?CLASS"
    setattribute $P1468, $P1469, "$!usage", $P1467
.annotate 'line', 1113
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1496
    .param pmc param_1497
    .param pmc param_1500 :slurpy
    .param pmc param_1498 :optional :named("tagset")
    .param int has_param_1498 :opt_flag
.annotate 'line', 1132
    .const 'Sub' $P1566 = "175_1303401182.58" 
    capture_lex $P1566
    .const 'Sub' $P1545 = "174_1303401182.58" 
    capture_lex $P1545
    .lex "self", param_1496
    .lex "$module", param_1497
    if has_param_1498, optparam_703
    new $P1499, "Undef"
    set param_1498, $P1499
  optparam_703:
    .lex "$tagset", param_1498
    .lex "@symbols", param_1500
.annotate 'line', 1139
    $P1501 = root_new ['parrot';'Hash']
    .lex "%exports", $P1501
.annotate 'line', 1140
    $P1502 = root_new ['parrot';'Hash']
    .lex "%source", $P1502
.annotate 'line', 1134
    find_lex $P1504, "$module"
    unless_null $P1504, vivify_704
    new $P1504, "Undef"
  vivify_704:
    does $I1505, $P1504, "hash"
    new $P1506, 'Integer'
    set $P1506, $I1505
    isfalse $I1507, $P1506
    unless $I1507, if_1503_end
.annotate 'line', 1135
    find_lex $P1508, "self"
    find_lex $P1509, "$module"
    unless_null $P1509, vivify_705
    new $P1509, "Undef"
  vivify_705:
    $P1510 = $P1508."get_module"($P1509)
    store_lex "$module", $P1510
  if_1503_end:
.annotate 'line', 1138
    find_lex $P1512, "$tagset"
    unless_null $P1512, vivify_706
    new $P1512, "Undef"
  vivify_706:
    set $P1511, $P1512
    defined $I1514, $P1511
    if $I1514, default_1513
    find_lex $P1517, "@symbols"
    unless_null $P1517, vivify_707
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    if $P1517, if_1516
    new $P1519, "String"
    assign $P1519, "DEFAULT"
    set $P1515, $P1519
    goto if_1516_end
  if_1516:
    new $P1518, "String"
    assign $P1518, "ALL"
    set $P1515, $P1518
  if_1516_end:
    set $P1511, $P1515
  default_1513:
    store_lex "$tagset", $P1511
    find_lex $P1520, "%exports"
    unless_null $P1520, vivify_708
    $P1520 = root_new ['parrot';'Hash']
  vivify_708:
.annotate 'line', 1140
    find_lex $P1521, "$tagset"
    unless_null $P1521, vivify_709
    new $P1521, "Undef"
  vivify_709:
    set $S1522, $P1521
    find_lex $P1523, "$module"
    unless_null $P1523, vivify_710
    $P1523 = root_new ['parrot';'Hash']
  vivify_710:
    set $P1524, $P1523["EXPORT"]
    unless_null $P1524, vivify_711
    $P1524 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1525, $P1524[$S1522]
    unless_null $P1525, vivify_712
    new $P1525, "Undef"
  vivify_712:
    store_lex "%source", $P1525
.annotate 'line', 1141
    find_lex $P1527, "%source"
    unless_null $P1527, vivify_713
    $P1527 = root_new ['parrot';'Hash']
  vivify_713:
    defined $I1528, $P1527
    new $P1529, 'Integer'
    set $P1529, $I1528
    isfalse $I1530, $P1529
    unless $I1530, if_1526_end
.annotate 'line', 1142
    find_lex $P1533, "$tagset"
    unless_null $P1533, vivify_714
    new $P1533, "Undef"
  vivify_714:
    set $S1534, $P1533
    iseq $I1535, $S1534, "ALL"
    if $I1535, if_1532
    $P1537 = root_new ['parrot';'Hash']
    set $P1531, $P1537
    goto if_1532_end
  if_1532:
    find_lex $P1536, "$module"
    unless_null $P1536, vivify_715
    new $P1536, "Undef"
  vivify_715:
    set $P1531, $P1536
  if_1532_end:
    store_lex "%source", $P1531
  if_1526_end:
.annotate 'line', 1144
    find_lex $P1539, "@symbols"
    unless_null $P1539, vivify_716
    $P1539 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
    if $P1539, if_1538
.annotate 'line', 1151
    find_lex $P1562, "%source"
    unless_null $P1562, vivify_717
    $P1562 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1563, $P1562
    unless $I1563, for_undef_718
    iter $P1561, $P1562
    new $P1579, 'ExceptionHandler'
    set_label $P1579, loop1578_handler
    $P1579."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1579
  loop1578_test:
    unless $P1561, loop1578_done
    shift $P1564, $P1561
  loop1578_redo:
    .const 'Sub' $P1566 = "175_1303401182.58" 
    capture_lex $P1566
    $P1566($P1564)
  loop1578_next:
    goto loop1578_test
  loop1578_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1580, exception, 'type'
    eq $P1580, .CONTROL_LOOP_NEXT, loop1578_next
    eq $P1580, .CONTROL_LOOP_REDO, loop1578_redo
  loop1578_done:
    pop_eh 
  for_undef_718:
.annotate 'line', 1150
    goto if_1538_end
  if_1538:
.annotate 'line', 1145
    find_lex $P1541, "@symbols"
    unless_null $P1541, vivify_725
    $P1541 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    defined $I1542, $P1541
    unless $I1542, for_undef_726
    iter $P1540, $P1541
    new $P1559, 'ExceptionHandler'
    set_label $P1559, loop1558_handler
    $P1559."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1559
  loop1558_test:
    unless $P1540, loop1558_done
    shift $P1543, $P1540
  loop1558_redo:
    .const 'Sub' $P1545 = "174_1303401182.58" 
    capture_lex $P1545
    $P1545($P1543)
  loop1558_next:
    goto loop1558_test
  loop1558_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1560, exception, 'type'
    eq $P1560, .CONTROL_LOOP_NEXT, loop1558_next
    eq $P1560, .CONTROL_LOOP_REDO, loop1558_redo
  loop1558_done:
    pop_eh 
  for_undef_726:
  if_1538_end:
.annotate 'line', 1144
    find_lex $P1581, "%exports"
    unless_null $P1581, vivify_735
    $P1581 = root_new ['parrot';'Hash']
  vivify_735:
.annotate 'line', 1132
    .return ($P1581)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1565"  :anon :subid("175_1303401182.58") :outer("173_1303401182.58")
    .param pmc param_1568
.annotate 'line', 1152
    new $P1567, "Undef"
    .lex "$value", $P1567
    .lex "$_", param_1568
    find_lex $P1569, "$_"
    unless_null $P1569, vivify_719
    new $P1569, "Undef"
  vivify_719:
    $P1570 = $P1569."value"()
    store_lex "$value", $P1570
.annotate 'line', 1153
    find_lex $P1571, "$value"
    unless_null $P1571, vivify_720
    new $P1571, "Undef"
  vivify_720:
    find_lex $P1572, "$_"
    unless_null $P1572, vivify_721
    new $P1572, "Undef"
  vivify_721:
    $P1573 = $P1572."key"()
    find_lex $P1574, "$value"
    unless_null $P1574, vivify_722
    new $P1574, "Undef"
  vivify_722:
    $P1575 = "value_type"($P1574)
    find_lex $P1576, "%exports"
    unless_null $P1576, vivify_723
    $P1576 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1576
  vivify_723:
    set $P1577, $P1576[$P1575]
    unless_null $P1577, vivify_724
    $P1577 = root_new ['parrot';'Hash']
    set $P1576[$P1575], $P1577
  vivify_724:
    set $P1577[$P1573], $P1571
.annotate 'line', 1151
    .return ($P1571)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1544"  :anon :subid("174_1303401182.58") :outer("173_1303401182.58")
    .param pmc param_1547
.annotate 'line', 1146
    new $P1546, "Undef"
    .lex "$value", $P1546
    .lex "$_", param_1547
    find_lex $P1548, "$_"
    unless_null $P1548, vivify_727
    new $P1548, "Undef"
  vivify_727:
    set $S1549, $P1548
    find_lex $P1550, "%source"
    unless_null $P1550, vivify_728
    $P1550 = root_new ['parrot';'Hash']
  vivify_728:
    set $P1551, $P1550[$S1549]
    unless_null $P1551, vivify_729
    new $P1551, "Undef"
  vivify_729:
    store_lex "$value", $P1551
.annotate 'line', 1147
    find_lex $P1552, "$value"
    unless_null $P1552, vivify_730
    new $P1552, "Undef"
  vivify_730:
    find_lex $P1553, "$_"
    unless_null $P1553, vivify_731
    new $P1553, "Undef"
  vivify_731:
    find_lex $P1554, "$value"
    unless_null $P1554, vivify_732
    new $P1554, "Undef"
  vivify_732:
    $P1555 = "value_type"($P1554)
    find_lex $P1556, "%exports"
    unless_null $P1556, vivify_733
    $P1556 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1556
  vivify_733:
    set $P1557, $P1556[$P1555]
    unless_null $P1557, vivify_734
    $P1557 = root_new ['parrot';'Hash']
    set $P1556[$P1555], $P1557
  vivify_734:
    set $P1557[$P1553], $P1552
.annotate 'line', 1145
    .return ($P1552)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1583
    .param pmc param_1584
.annotate 'line', 1159
    .lex "self", param_1583
    .lex "$name", param_1584
.annotate 'line', 1160
    $P1585 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1585
    find_lex $P1586, "self"
    find_lex $P1587, "$name"
    unless_null $P1587, vivify_736
    new $P1587, "Undef"
  vivify_736:
    $P1588 = $P1586."parse_name"($P1587)
    store_lex "@name", $P1588
.annotate 'line', 1161
    find_lex $P1589, "@name"
    unless_null $P1589, vivify_737
    $P1589 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    find_lex $P1590, "self"
    find_lex $P1591, "$?CLASS"
    getattribute $P1592, $P1590, $P1591, "$!language"
    unless_null $P1592, vivify_738
    new $P1592, "Undef"
  vivify_738:
    set $S1593, $P1592
    downcase $S1594, $S1593
    $P1589."unshift"($S1594)
.annotate 'line', 1162
    find_lex $P1595, "@name"
    unless_null $P1595, vivify_739
    $P1595 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    get_root_namespace $P1596, $P1595
.annotate 'line', 1159
    .return ($P1596)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1598
    .param pmc param_1599 :optional
    .param int has_param_1599 :opt_flag
.annotate 'line', 1165
    .lex "self", param_1598
    if has_param_1599, optparam_740
    new $P1600, "Undef"
    set param_1599, $P1600
  optparam_740:
    .lex "$name", param_1599
.annotate 'line', 1166
    find_lex $P1602, "$name"
    unless_null $P1602, vivify_741
    new $P1602, "Undef"
  vivify_741:
    unless $P1602, if_1601_end
.annotate 'line', 1167
    find_lex $P1603, "$name"
    unless_null $P1603, vivify_742
    new $P1603, "Undef"
  vivify_742:
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    setattribute $P1604, $P1605, "$!language", $P1603
.annotate 'line', 1168
    find_lex $P1606, "$name"
    unless_null $P1606, vivify_743
    new $P1606, "Undef"
  vivify_743:
    set $S1607, $P1606
    find_lex $P1608, "self"
    compreg $S1607, $P1608
  if_1601_end:
.annotate 'line', 1166
    find_lex $P1609, "self"
    find_lex $P1610, "$?CLASS"
    getattribute $P1611, $P1609, $P1610, "$!language"
    unless_null $P1611, vivify_744
    new $P1611, "Undef"
  vivify_744:
.annotate 'line', 1165
    .return ($P1611)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1613
    .param pmc param_1614
.annotate 'line', 1173
    .const 'Sub' $P1624 = "179_1303401182.58" 
    capture_lex $P1624
    .lex "self", param_1613
    .lex "$name", param_1614
.annotate 'line', 1174
    new $P1615, "Undef"
    .lex "$base", $P1615
.annotate 'line', 1175
    new $P1616, "Undef"
    .lex "$loaded", $P1616
.annotate 'line', 1174
    find_lex $P1617, "self"
    find_lex $P1618, "$name"
    unless_null $P1618, vivify_745
    new $P1618, "Undef"
  vivify_745:
    $P1619 = $P1617."parse_name"($P1618)
    join $S1620, "/", $P1619
    new $P1621, 'String'
    set $P1621, $S1620
    store_lex "$base", $P1621
.annotate 'line', 1175
    new $P1622, "Integer"
    assign $P1622, 0
    store_lex "$loaded", $P1622
.annotate 'line', 1176
    .const 'Sub' $P1624 = "179_1303401182.58" 
    capture_lex $P1624
    $P1624()
.annotate 'line', 1177
    find_lex $P1637, "$loaded"
    unless_null $P1637, vivify_747
    new $P1637, "Undef"
  vivify_747:
    if $P1637, unless_1636_end
    find_lex $P1638, "$base"
    unless_null $P1638, vivify_748
    new $P1638, "Undef"
  vivify_748:
    concat $P1639, $P1638, ".pir"
    set $S1640, $P1639
    load_bytecode $S1640
    new $P1641, "Integer"
    assign $P1641, 1
    store_lex "$loaded", $P1641
  unless_1636_end:
.annotate 'line', 1178
    find_lex $P1642, "self"
    find_lex $P1643, "$name"
    unless_null $P1643, vivify_749
    new $P1643, "Undef"
  vivify_749:
    $P1644 = $P1642."get_module"($P1643)
.annotate 'line', 1173
    .return ($P1644)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1623"  :anon :subid("179_1303401182.58") :outer("178_1303401182.58")
.annotate 'line', 1176
    new $P1631, 'ExceptionHandler'
    set_label $P1631, control_1630
    $P1631."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1631
    find_lex $P1625, "$base"
    unless_null $P1625, vivify_746
    new $P1625, "Undef"
  vivify_746:
    concat $P1626, $P1625, ".pbc"
    set $S1627, $P1626
    load_bytecode $S1627
    new $P1628, "Integer"
    assign $P1628, 1
    store_lex "$loaded", $P1628
    pop_eh 
    goto skip_handler_1629
  control_1630:
    .local pmc exception 
    .get_results (exception) 
    new $P1634, 'Integer'
    set $P1634, 1
    set exception["handled"], $P1634
    set $I1635, exception["handled"]
    ne $I1635, 1, nothandled_1633
  handled_1632:
    .return (exception)
  nothandled_1633:
    rethrow exception
  skip_handler_1629:
    .return ($P1628)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1646
    .param pmc param_1647
    .param pmc param_1648
.annotate 'line', 1181
    .const 'Sub' $P1654 = "181_1303401182.58" 
    capture_lex $P1654
    .lex "self", param_1646
    .lex "$target", param_1647
    .lex "%exports", param_1648
.annotate 'line', 1182
    find_lex $P1650, "%exports"
    unless_null $P1650, vivify_750
    $P1650 = root_new ['parrot';'Hash']
  vivify_750:
    defined $I1651, $P1650
    unless $I1651, for_undef_751
    iter $P1649, $P1650
    new $P1736, 'ExceptionHandler'
    set_label $P1736, loop1735_handler
    $P1736."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1736
  loop1735_test:
    unless $P1649, loop1735_done
    shift $P1652, $P1649
  loop1735_redo:
    .const 'Sub' $P1654 = "181_1303401182.58" 
    capture_lex $P1654
    $P1654($P1652)
  loop1735_next:
    goto loop1735_test
  loop1735_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1737, exception, 'type'
    eq $P1737, .CONTROL_LOOP_NEXT, loop1735_next
    eq $P1737, .CONTROL_LOOP_REDO, loop1735_redo
  loop1735_done:
    pop_eh 
  for_undef_751:
.annotate 'line', 1181
    .return ($P1649)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1653"  :anon :subid("181_1303401182.58") :outer("180_1303401182.58")
    .param pmc param_1657
.annotate 'line', 1182
    .const 'Sub' $P1724 = "184_1303401182.58" 
    capture_lex $P1724
    .const 'Sub' $P1704 = "183_1303401182.58" 
    capture_lex $P1704
    .const 'Sub' $P1675 = "182_1303401182.58" 
    capture_lex $P1675
.annotate 'line', 1183
    new $P1655, "Undef"
    .lex "$type", $P1655
.annotate 'line', 1184
    $P1656 = root_new ['parrot';'Hash']
    .lex "%items", $P1656
    .lex "$_", param_1657
.annotate 'line', 1183
    find_lex $P1658, "$_"
    unless_null $P1658, vivify_752
    new $P1658, "Undef"
  vivify_752:
    $P1659 = $P1658."key"()
    store_lex "$type", $P1659
.annotate 'line', 1184
    find_lex $P1660, "$_"
    unless_null $P1660, vivify_753
    new $P1660, "Undef"
  vivify_753:
    $P1661 = $P1660."value"()
    store_lex "%items", $P1661
.annotate 'line', 1185
    find_lex $P1664, "self"
    new $P1665, 'String'
    set $P1665, "import_"
    find_lex $P1666, "$type"
    unless_null $P1666, vivify_754
    new $P1666, "Undef"
  vivify_754:
    concat $P1667, $P1665, $P1666
    set $S1668, $P1667
    can $I1669, $P1664, $S1668
    if $I1669, if_1663
.annotate 'line', 1188
    find_lex $P1693, "$target"
    unless_null $P1693, vivify_755
    new $P1693, "Undef"
  vivify_755:
    new $P1694, 'String'
    set $P1694, "add_"
    find_lex $P1695, "$type"
    unless_null $P1695, vivify_756
    new $P1695, "Undef"
  vivify_756:
    concat $P1696, $P1694, $P1695
    set $S1697, $P1696
    can $I1698, $P1693, $S1697
    if $I1698, if_1692
.annotate 'line', 1192
    find_lex $P1720, "%items"
    unless_null $P1720, vivify_757
    $P1720 = root_new ['parrot';'Hash']
  vivify_757:
    defined $I1721, $P1720
    unless $I1721, for_undef_758
    iter $P1719, $P1720
    new $P1733, 'ExceptionHandler'
    set_label $P1733, loop1732_handler
    $P1733."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1733
  loop1732_test:
    unless $P1719, loop1732_done
    shift $P1722, $P1719
  loop1732_redo:
    .const 'Sub' $P1724 = "184_1303401182.58" 
    capture_lex $P1724
    $P1724($P1722)
  loop1732_next:
    goto loop1732_test
  loop1732_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1734, exception, 'type'
    eq $P1734, .CONTROL_LOOP_NEXT, loop1732_next
    eq $P1734, .CONTROL_LOOP_REDO, loop1732_redo
  loop1732_done:
    pop_eh 
  for_undef_758:
.annotate 'line', 1191
    set $P1691, $P1719
.annotate 'line', 1188
    goto if_1692_end
  if_1692:
.annotate 'line', 1189
    find_lex $P1700, "%items"
    unless_null $P1700, vivify_762
    $P1700 = root_new ['parrot';'Hash']
  vivify_762:
    defined $I1701, $P1700
    unless $I1701, for_undef_763
    iter $P1699, $P1700
    new $P1717, 'ExceptionHandler'
    set_label $P1717, loop1716_handler
    $P1717."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1717
  loop1716_test:
    unless $P1699, loop1716_done
    shift $P1702, $P1699
  loop1716_redo:
    .const 'Sub' $P1704 = "183_1303401182.58" 
    capture_lex $P1704
    $P1704($P1702)
  loop1716_next:
    goto loop1716_test
  loop1716_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1718, exception, 'type'
    eq $P1718, .CONTROL_LOOP_NEXT, loop1716_next
    eq $P1718, .CONTROL_LOOP_REDO, loop1716_redo
  loop1716_done:
    pop_eh 
  for_undef_763:
.annotate 'line', 1188
    set $P1691, $P1699
  if_1692_end:
    set $P1662, $P1691
.annotate 'line', 1185
    goto if_1663_end
  if_1663:
.annotate 'line', 1186
    find_lex $P1671, "%items"
    unless_null $P1671, vivify_768
    $P1671 = root_new ['parrot';'Hash']
  vivify_768:
    defined $I1672, $P1671
    unless $I1672, for_undef_769
    iter $P1670, $P1671
    new $P1689, 'ExceptionHandler'
    set_label $P1689, loop1688_handler
    $P1689."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1689
  loop1688_test:
    unless $P1670, loop1688_done
    shift $P1673, $P1670
  loop1688_redo:
    .const 'Sub' $P1675 = "182_1303401182.58" 
    capture_lex $P1675
    $P1675($P1673)
  loop1688_next:
    goto loop1688_test
  loop1688_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1690, exception, 'type'
    eq $P1690, .CONTROL_LOOP_NEXT, loop1688_next
    eq $P1690, .CONTROL_LOOP_REDO, loop1688_redo
  loop1688_done:
    pop_eh 
  for_undef_769:
.annotate 'line', 1185
    set $P1662, $P1670
  if_1663_end:
.annotate 'line', 1182
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1723"  :anon :subid("184_1303401182.58") :outer("181_1303401182.58")
    .param pmc param_1725
.annotate 'line', 1192
    .lex "$_", param_1725
    find_lex $P1726, "$_"
    unless_null $P1726, vivify_759
    new $P1726, "Undef"
  vivify_759:
    $P1727 = $P1726."value"()
    find_lex $P1728, "$_"
    unless_null $P1728, vivify_760
    new $P1728, "Undef"
  vivify_760:
    $P1729 = $P1728."key"()
    set $S1730, $P1729
    find_lex $P1731, "$target"
    unless_null $P1731, vivify_761
    $P1731 = root_new ['parrot';'Hash']
    store_lex "$target", $P1731
  vivify_761:
    set $P1731[$S1730], $P1727
    .return ($P1727)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1703"  :anon :subid("183_1303401182.58") :outer("181_1303401182.58")
    .param pmc param_1705
.annotate 'line', 1189
    .lex "$_", param_1705
    find_lex $P1706, "$target"
    unless_null $P1706, vivify_764
    new $P1706, "Undef"
  vivify_764:
    find_lex $P1707, "$_"
    unless_null $P1707, vivify_765
    new $P1707, "Undef"
  vivify_765:
    $P1708 = $P1707."key"()
    find_lex $P1709, "$_"
    unless_null $P1709, vivify_766
    new $P1709, "Undef"
  vivify_766:
    $P1710 = $P1709."value"()
    new $P1711, 'String'
    set $P1711, "add_"
    find_lex $P1712, "$type"
    unless_null $P1712, vivify_767
    new $P1712, "Undef"
  vivify_767:
    concat $P1713, $P1711, $P1712
    set $S1714, $P1713
    $P1715 = $P1706.$S1714($P1708, $P1710)
    .return ($P1715)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1674"  :anon :subid("182_1303401182.58") :outer("181_1303401182.58")
    .param pmc param_1676
.annotate 'line', 1186
    .lex "$_", param_1676
    find_lex $P1677, "self"
    find_lex $P1678, "$target"
    unless_null $P1678, vivify_770
    new $P1678, "Undef"
  vivify_770:
    find_lex $P1679, "$_"
    unless_null $P1679, vivify_771
    new $P1679, "Undef"
  vivify_771:
    $P1680 = $P1679."key"()
    find_lex $P1681, "$_"
    unless_null $P1681, vivify_772
    new $P1681, "Undef"
  vivify_772:
    $P1682 = $P1681."value"()
    new $P1683, 'String'
    set $P1683, "import_"
    find_lex $P1684, "$type"
    unless_null $P1684, vivify_773
    new $P1684, "Undef"
  vivify_773:
    concat $P1685, $P1683, $P1684
    set $S1686, $P1685
    $P1687 = $P1677.$S1686($P1678, $P1680, $P1682)
    .return ($P1687)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1739
    .param pmc param_1740
.annotate 'line', 1197
    .lex "self", param_1739
    .lex "$value", param_1740
.annotate 'line', 1199
    getinterp $P1743
    $P1744 = $P1743."stdout_handle"()
    $N1745 = $P1744."tell"()
    find_dynamic_lex $P1746, "$*AUTOPRINTPOS"
    unless_null $P1746, vivify_774
    get_hll_global $P1746, "$AUTOPRINTPOS"
    unless_null $P1746, vivify_775
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_775:
  vivify_774:
    set $N1747, $P1746
    isgt $I1748, $N1745, $N1747
    unless $I1748, unless_1742
    new $P1741, 'Integer'
    set $P1741, $I1748
    goto unless_1742_end
  unless_1742:
.annotate 'line', 1198
    find_lex $P1749, "$value"
    unless_null $P1749, vivify_776
    new $P1749, "Undef"
  vivify_776:
    set $S1750, $P1749
    say $S1750
  unless_1742_end:
.annotate 'line', 1197
    .return ($P1741)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1752
    .param pmc param_1753 :slurpy :named
.annotate 'line', 1202
    .const 'Sub' $P1785 = "187_1303401182.58" 
    capture_lex $P1785
    .lex "self", param_1752
    .lex "%adverbs", param_1753
.annotate 'line', 1203
    new $P1754, "Undef"
    .lex "$target", $P1754
.annotate 'line', 1207
    new $P1755, "Undef"
    .lex "$stdin", $P1755
.annotate 'line', 1208
    new $P1756, "Undef"
    .lex "$encoding", $P1756
.annotate 'line', 1213
    new $P1757, "Undef"
    .lex "$save_ctx", $P1757
.annotate 'line', 1203
    find_lex $P1758, "%adverbs"
    unless_null $P1758, vivify_777
    $P1758 = root_new ['parrot';'Hash']
  vivify_777:
    set $P1759, $P1758["target"]
    unless_null $P1759, vivify_778
    new $P1759, "Undef"
  vivify_778:
    set $S1760, $P1759
    downcase $S1761, $S1760
    new $P1762, 'String'
    set $P1762, $S1761
    store_lex "$target", $P1762
.annotate 'line', 1205
    getinterp $P1763
    $P1764 = $P1763."stderr_handle"()
    find_lex $P1765, "self"
    $S1766 = $P1765."commandline_banner"()
    print $P1764, $S1766
.annotate 'line', 1207
    getinterp $P1767
    $P1768 = $P1767."stdin_handle"()
    store_lex "$stdin", $P1768
.annotate 'line', 1208
    find_lex $P1769, "%adverbs"
    unless_null $P1769, vivify_779
    $P1769 = root_new ['parrot';'Hash']
  vivify_779:
    set $P1770, $P1769["encoding"]
    unless_null $P1770, vivify_780
    new $P1770, "Undef"
  vivify_780:
    set $S1771, $P1770
    new $P1772, 'String'
    set $P1772, $S1771
    store_lex "$encoding", $P1772
.annotate 'line', 1209
    find_lex $P1776, "$encoding"
    unless_null $P1776, vivify_781
    new $P1776, "Undef"
  vivify_781:
    if $P1776, if_1775
    set $P1774, $P1776
    goto if_1775_end
  if_1775:
    find_lex $P1777, "$encoding"
    unless_null $P1777, vivify_782
    new $P1777, "Undef"
  vivify_782:
    set $S1778, $P1777
    isne $I1779, $S1778, "fixed_8"
    new $P1774, 'Integer'
    set $P1774, $I1779
  if_1775_end:
    unless $P1774, if_1773_end
.annotate 'line', 1210
    find_lex $P1780, "$stdin"
    unless_null $P1780, vivify_783
    new $P1780, "Undef"
  vivify_783:
    find_lex $P1781, "$encoding"
    unless_null $P1781, vivify_784
    new $P1781, "Undef"
  vivify_784:
    $P1780."encoding"($P1781)
  if_1773_end:
.annotate 'line', 1209
    find_lex $P1782, "$save_ctx"
    unless_null $P1782, vivify_785
    new $P1782, "Undef"
  vivify_785:
.annotate 'line', 1214
    new $P1902, 'ExceptionHandler'
    set_label $P1902, loop1901_handler
    $P1902."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1902
  loop1901_test:
    new $P1783, "Integer"
    assign $P1783, 1
    unless $P1783, loop1901_done
  loop1901_redo:
    .const 'Sub' $P1785 = "187_1303401182.58" 
    capture_lex $P1785
    $P1785()
  loop1901_next:
    goto loop1901_test
  loop1901_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1903, exception, 'type'
    eq $P1903, .CONTROL_LOOP_NEXT, loop1901_next
    eq $P1903, .CONTROL_LOOP_REDO, loop1901_redo
  loop1901_done:
    pop_eh 
.annotate 'line', 1202
    .return ($P1783)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1784"  :anon :subid("187_1303401182.58") :outer("186_1303401182.58")
.annotate 'line', 1214
    .const 'Sub' $P1817 = "188_1303401182.58" 
    capture_lex $P1817
.annotate 'line', 1217
    new $P1786, "Undef"
    .lex "$prompt", $P1786
.annotate 'line', 1218
    new $P1787, "Undef"
    .lex "$code", $P1787
.annotate 'line', 1223
    new $P1788, "Undef"
    .lex "$*AUTOPRINTPOS", $P1788
.annotate 'line', 1224
    new $P1789, "Undef"
    .lex "$*CTXSAVE", $P1789
.annotate 'line', 1225
    new $P1790, "Undef"
    .lex "$*MAIN_CTX", $P1790
.annotate 'line', 1215
    find_lex $P1792, "$stdin"
    unless_null $P1792, vivify_786
    new $P1792, "Undef"
  vivify_786:
    if $P1792, unless_1791_end
    set $I1793, .CONTROL_LOOP_LAST
    die 0, $I1793
  unless_1791_end:
.annotate 'line', 1217
    find_lex $P1795, "self"
    $P1796 = $P1795."commandline_prompt"()
    set $P1794, $P1796
    defined $I1798, $P1794
    if $I1798, default_1797
    new $P1799, "String"
    assign $P1799, "> "
    set $P1794, $P1799
  default_1797:
    store_lex "$prompt", $P1794
.annotate 'line', 1218
    find_lex $P1800, "$stdin"
    unless_null $P1800, vivify_787
    new $P1800, "Undef"
  vivify_787:
    find_lex $P1801, "$prompt"
    unless_null $P1801, vivify_788
    new $P1801, "Undef"
  vivify_788:
    set $S1802, $P1801
    $P1803 = $P1800."readline_interactive"($S1802)
    store_lex "$code", $P1803
.annotate 'line', 1220
    find_lex $P1805, "$code"
    unless_null $P1805, vivify_789
    new $P1805, "Undef"
  vivify_789:
    isnull $I1806, $P1805
    unless $I1806, if_1804_end
    set $I1807, .CONTROL_LOOP_LAST
    die 0, $I1807
  if_1804_end:
.annotate 'line', 1223
    getinterp $P1808
    $P1809 = $P1808."stdout_handle"()
    $P1810 = $P1809."tell"()
    store_lex "$*AUTOPRINTPOS", $P1810
.annotate 'line', 1224
    find_lex $P1811, "self"
    store_lex "$*CTXSAVE", $P1811
    find_lex $P1812, "$*MAIN_CTX"
    unless_null $P1812, vivify_790
    get_hll_global $P1812, "$MAIN_CTX"
    unless_null $P1812, vivify_791
    die "Contextual $*MAIN_CTX not found"
  vivify_791:
  vivify_790:
.annotate 'line', 1227
    find_lex $P1815, "$code"
    unless_null $P1815, vivify_792
    new $P1815, "Undef"
  vivify_792:
    if $P1815, if_1814
    set $P1813, $P1815
    goto if_1814_end
  if_1814:
    .const 'Sub' $P1817 = "188_1303401182.58" 
    capture_lex $P1817
    $P1900 = $P1817()
    set $P1813, $P1900
  if_1814_end:
.annotate 'line', 1214
    .return ($P1813)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1816"  :anon :subid("188_1303401182.58") :outer("187_1303401182.58")
.annotate 'line', 1227
    .const 'Sub' $P1850 = "191_1303401182.58" 
    capture_lex $P1850
    .const 'Sub' $P1823 = "189_1303401182.58" 
    capture_lex $P1823
.annotate 'line', 1229
    new $P1818, "Undef"
    .lex "$output", $P1818
.annotate 'line', 1228
    find_lex $P1819, "$code"
    unless_null $P1819, vivify_793
    new $P1819, "Undef"
  vivify_793:
    concat $P1820, $P1819, "\n"
    store_lex "$code", $P1820
    find_lex $P1821, "$output"
    unless_null $P1821, vivify_794
    new $P1821, "Undef"
  vivify_794:
.annotate 'line', 1230
    .const 'Sub' $P1823 = "189_1303401182.58" 
    capture_lex $P1823
    $P1823()
.annotate 'line', 1237
    find_dynamic_lex $P1847, "$*MAIN_CTX"
    unless_null $P1847, vivify_799
    get_hll_global $P1847, "$MAIN_CTX"
    unless_null $P1847, vivify_800
    die "Contextual $*MAIN_CTX not found"
  vivify_800:
  vivify_799:
    defined $I1848, $P1847
    unless $I1848, if_1846_end
    .const 'Sub' $P1850 = "191_1303401182.58" 
    capture_lex $P1850
    $P1850()
  if_1846_end:
.annotate 'line', 1245
    find_lex $P1879, "$output"
    unless_null $P1879, vivify_810
    new $P1879, "Undef"
  vivify_810:
    isnull $I1880, $P1879
    unless $I1880, if_1878_end
    set $I1881, .CONTROL_LOOP_NEXT
    die 0, $I1881
  if_1878_end:
.annotate 'line', 1247
    find_lex $P1884, "$target"
    unless_null $P1884, vivify_811
    new $P1884, "Undef"
  vivify_811:
    isfalse $I1885, $P1884
    if $I1885, if_1883
.annotate 'line', 1249
    find_lex $P1891, "$target"
    unless_null $P1891, vivify_812
    new $P1891, "Undef"
  vivify_812:
    set $S1892, $P1891
    iseq $I1893, $S1892, "pir"
    if $I1893, if_1890
.annotate 'line', 1252
    find_lex $P1895, "self"
    find_lex $P1896, "$output"
    unless_null $P1896, vivify_813
    new $P1896, "Undef"
  vivify_813:
    find_lex $P1897, "$target"
    unless_null $P1897, vivify_814
    new $P1897, "Undef"
  vivify_814:
    find_lex $P1898, "%adverbs"
    unless_null $P1898, vivify_815
    $P1898 = root_new ['parrot';'Hash']
  vivify_815:
    $P1899 = $P1895."dumper"($P1896, $P1897, $P1898 :flat)
.annotate 'line', 1251
    set $P1889, $P1899
.annotate 'line', 1249
    goto if_1890_end
  if_1890:
.annotate 'line', 1250
    find_lex $P1894, "$output"
    unless_null $P1894, vivify_816
    new $P1894, "Undef"
  vivify_816:
    say $P1894
  if_1890_end:
.annotate 'line', 1249
    set $P1882, $P1889
.annotate 'line', 1247
    goto if_1883_end
  if_1883:
.annotate 'line', 1248
    find_lex $P1886, "self"
    find_lex $P1887, "$output"
    unless_null $P1887, vivify_817
    new $P1887, "Undef"
  vivify_817:
    $P1888 = $P1886."autoprint"($P1887)
.annotate 'line', 1247
    set $P1882, $P1888
  if_1883_end:
.annotate 'line', 1227
    .return ($P1882)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1822"  :anon :subid("189_1303401182.58") :outer("188_1303401182.58")
.annotate 'line', 1230
    .const 'Sub' $P1835 = "190_1303401182.58" 
    capture_lex $P1835
    new $P1831, 'ExceptionHandler'
    set_label $P1831, control_1830
    $P1831."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1831
.annotate 'line', 1231
    find_lex $P1824, "self"
    find_lex $P1825, "$code"
    unless_null $P1825, vivify_795
    new $P1825, "Undef"
  vivify_795:
    find_lex $P1826, "$save_ctx"
    unless_null $P1826, vivify_796
    new $P1826, "Undef"
  vivify_796:
    find_lex $P1827, "%adverbs"
    unless_null $P1827, vivify_797
    $P1827 = root_new ['parrot';'Hash']
  vivify_797:
    $P1828 = $P1824."eval"($P1825, $P1827 :flat, $P1826 :named("outer_ctx"))
    store_lex "$output", $P1828
.annotate 'line', 1230
    pop_eh 
    goto skip_handler_1829
  control_1830:
.annotate 'line', 1232
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1835 = "190_1303401182.58" 
    newclosure $P1843, $P1835
    $P1843(exception)
    new $P1844, 'Integer'
    set $P1844, 1
    set exception["handled"], $P1844
    set $I1845, exception["handled"]
    ne $I1845, 1, nothandled_1833
  handled_1832:
    .return (exception)
  nothandled_1833:
    rethrow exception
  skip_handler_1829:
.annotate 'line', 1230
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1834"  :anon :subid("190_1303401182.58") :outer("189_1303401182.58")
    .param pmc param_1836
.annotate 'line', 1232
    .lex "$_", param_1836
    find_lex $P1837, "$_"
    .lex "$!", $P1837
.annotate 'line', 1233
    find_lex $P1838, "$!"
    unless_null $P1838, vivify_798
    new $P1838, "Undef"
  vivify_798:
    set $S1839, $P1838
    new $P1840, 'String'
    set $P1840, $S1839
    concat $P1841, $P1840, "\n"
    print $P1841
.annotate 'line', 1234
    set $I1842, .CONTROL_LOOP_NEXT
    die 0, $I1842
.annotate 'line', 1232
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1849"  :anon :subid("191_1303401182.58") :outer("188_1303401182.58")
.annotate 'line', 1237
    .const 'Sub' $P1863 = "192_1303401182.58" 
    capture_lex $P1863
    find_lex $P1851, "$?PACKAGE"
    get_who $P1852, $P1851
    set $P1853, $P1852["$interactive_ctx"]
    unless_null $P1853, vivify_801
    new $P1853, "Undef"
  vivify_801:
    find_lex $P1854, "$?PACKAGE"
    get_who $P1855, $P1854
    set $P1856, $P1855["%interactive_pad"]
    unless_null $P1856, vivify_802
    $P1856 = root_new ['parrot';'Hash']
  vivify_802:
.annotate 'line', 1240
    find_dynamic_lex $P1858, "$*MAIN_CTX"
    unless_null $P1858, vivify_803
    get_hll_global $P1858, "$MAIN_CTX"
    unless_null $P1858, vivify_804
    die "Contextual $*MAIN_CTX not found"
  vivify_804:
  vivify_803:
    $P1859 = $P1858."lexpad_full"()
    defined $I1860, $P1859
    unless $I1860, for_undef_805
    iter $P1857, $P1859
    new $P1873, 'ExceptionHandler'
    set_label $P1873, loop1872_handler
    $P1873."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1873
  loop1872_test:
    unless $P1857, loop1872_done
    shift $P1861, $P1857
  loop1872_redo:
    .const 'Sub' $P1863 = "192_1303401182.58" 
    capture_lex $P1863
    $P1863($P1861)
  loop1872_next:
    goto loop1872_test
  loop1872_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1874, exception, 'type'
    eq $P1874, .CONTROL_LOOP_NEXT, loop1872_next
    eq $P1874, .CONTROL_LOOP_REDO, loop1872_redo
  loop1872_done:
    pop_eh 
  for_undef_805:
.annotate 'line', 1243
    find_lex $P1875, "$?PACKAGE"
    get_who $P1876, $P1875
    set $P1877, $P1876["$interactive_ctx"]
    unless_null $P1877, vivify_809
    new $P1877, "Undef"
  vivify_809:
    store_lex "$save_ctx", $P1877
.annotate 'line', 1237
    .return ($P1877)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1862"  :anon :subid("192_1303401182.58") :outer("191_1303401182.58")
    .param pmc param_1864
.annotate 'line', 1240
    .lex "$_", param_1864
.annotate 'line', 1241
    find_lex $P1865, "$_"
    unless_null $P1865, vivify_806
    new $P1865, "Undef"
  vivify_806:
    $P1866 = $P1865."value"()
    find_lex $P1867, "$_"
    unless_null $P1867, vivify_807
    new $P1867, "Undef"
  vivify_807:
    $P1868 = $P1867."key"()
    find_lex $P1869, "$?PACKAGE"
    get_who $P1870, $P1869
    set $P1871, $P1870["%interactive_pad"]
    unless_null $P1871, vivify_808
    $P1871 = root_new ['parrot';'Hash']
    set $P1870["%interactive_pad"], $P1871
  vivify_808:
    set $P1871[$P1868], $P1866
.annotate 'line', 1240
    .return ($P1866)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1905
    .param pmc param_1906
    .param pmc param_1907 :slurpy
    .param pmc param_1908 :slurpy :named
.annotate 'line', 1258
    .const 'Sub' $P1927 = "194_1303401182.58" 
    capture_lex $P1927
    .lex "self", param_1905
    .lex "$code", param_1906
    .lex "@args", param_1907
    .lex "%adverbs", param_1908
.annotate 'line', 1259
    new $P1909, "Undef"
    .lex "$output", $P1909
.annotate 'line', 1258
    find_lex $P1910, "$output"
    unless_null $P1910, vivify_818
    new $P1910, "Undef"
  vivify_818:
.annotate 'line', 1260
    find_lex $P1911, "self"
    find_lex $P1912, "$code"
    unless_null $P1912, vivify_819
    new $P1912, "Undef"
  vivify_819:
    find_lex $P1913, "%adverbs"
    unless_null $P1913, vivify_820
    $P1913 = root_new ['parrot';'Hash']
  vivify_820:
    $P1914 = $P1911."compile"($P1912, $P1913 :flat)
    store_lex "$output", $P1914
.annotate 'line', 1262
    find_lex $P1918, "$output"
    unless_null $P1918, vivify_821
    new $P1918, "Undef"
  vivify_821:
    isa $I1919, $P1918, "String"
    new $P1920, 'Integer'
    set $P1920, $I1919
    isfalse $I1921, $P1920
    if $I1921, if_1917
    new $P1916, 'Integer'
    set $P1916, $I1921
    goto if_1917_end
  if_1917:
.annotate 'line', 1263
    find_lex $P1922, "%adverbs"
    unless_null $P1922, vivify_822
    $P1922 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1923, $P1922["target"]
    unless_null $P1923, vivify_823
    new $P1923, "Undef"
  vivify_823:
    set $S1924, $P1923
    iseq $I1925, $S1924, ""
    new $P1916, 'Integer'
    set $P1916, $I1925
  if_1917_end:
    unless $P1916, if_1915_end
    .const 'Sub' $P1927 = "194_1303401182.58" 
    capture_lex $P1927
    $P1927()
  if_1915_end:
.annotate 'line', 1262
    find_lex $P1943, "$output"
    unless_null $P1943, vivify_834
    new $P1943, "Undef"
  vivify_834:
.annotate 'line', 1258
    .return ($P1943)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1926"  :anon :subid("194_1303401182.58") :outer("193_1303401182.58")
.annotate 'line', 1264
    new $P1928, "Undef"
    .lex "$outer_ctx", $P1928
    find_lex $P1929, "%adverbs"
    unless_null $P1929, vivify_824
    $P1929 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1930, $P1929["outer_ctx"]
    unless_null $P1930, vivify_825
    new $P1930, "Undef"
  vivify_825:
    store_lex "$outer_ctx", $P1930
.annotate 'line', 1265
    find_lex $P1932, "$outer_ctx"
    unless_null $P1932, vivify_826
    new $P1932, "Undef"
  vivify_826:
    defined $I1933, $P1932
    unless $I1933, if_1931_end
.annotate 'line', 1266
    find_lex $P1934, "$output"
    unless_null $P1934, vivify_827
    $P1934 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    set $P1935, $P1934[0]
    unless_null $P1935, vivify_828
    new $P1935, "Undef"
  vivify_828:
    find_lex $P1936, "$outer_ctx"
    unless_null $P1936, vivify_829
    new $P1936, "Undef"
  vivify_829:
    $P1935."set_outer_ctx"($P1936)
  if_1931_end:
.annotate 'line', 1269
    find_lex $P1937, "%adverbs"
    unless_null $P1937, vivify_830
    $P1937 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1938, $P1937["trace"]
    unless_null $P1938, vivify_831
    new $P1938, "Undef"
  vivify_831:
    set $I1939, $P1938
    trace $I1939
.annotate 'line', 1270
    find_lex $P1940, "$output"
    unless_null $P1940, vivify_832
    new $P1940, "Undef"
  vivify_832:
    find_lex $P1941, "@args"
    unless_null $P1941, vivify_833
    $P1941 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    $P1942 = $P1940($P1941 :flat)
    store_lex "$output", $P1942
.annotate 'line', 1271
    trace 0
.annotate 'line', 1263
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1945
.annotate 'line', 1277
    .lex "self", param_1945
.annotate 'line', 1279

                $P0 = getinterp
                $P1946 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1946
.annotate 'line', 1283
    new $P1947, "Integer"
    assign $P1947, 0
    store_dynamic_lex "$*CTXSAVE", $P1947
.annotate 'line', 1277
    .return ($P1947)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1949
    .param pmc param_1950 :slurpy
.annotate 'line', 1286
    .lex "self", param_1949
    .lex "@args", param_1950
.annotate 'line', 1287
    find_lex $P1951, "@args"
    unless_null $P1951, vivify_835
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    join $S1952, "", $P1951
    die $S1952
.annotate 'line', 1286
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1954
    .param pmc param_1955 :optional
    .param int has_param_1955 :opt_flag
.annotate 'line', 1290
    .lex "self", param_1954
    if has_param_1955, optparam_836
    $P1956 = root_new ['parrot';'ResizablePMCArray']
    set param_1955, $P1956
  optparam_836:
    .lex "@value", param_1955
.annotate 'line', 1291
    find_lex $P1958, "@value"
    unless_null $P1958, vivify_837
    $P1958 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N1959, $P1958
    unless $N1959, if_1957_end
.annotate 'line', 1292
    find_lex $P1960, "@value"
    unless_null $P1960, vivify_838
    $P1960 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    find_lex $P1961, "self"
    find_lex $P1962, "$?CLASS"
    setattribute $P1961, $P1962, "@!stages", $P1960
  if_1957_end:
.annotate 'line', 1291
    find_lex $P1963, "self"
    find_lex $P1964, "$?CLASS"
    getattribute $P1965, $P1963, $P1964, "@!stages"
    unless_null $P1965, vivify_839
    $P1965 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
.annotate 'line', 1290
    .return ($P1965)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1967
    .param pmc param_1968 :slurpy
.annotate 'line', 1297
    .lex "self", param_1967
    .lex "@value", param_1968
.annotate 'line', 1298
    find_lex $P1970, "@value"
    unless_null $P1970, vivify_840
    $P1970 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $N1971, $P1970
    unless $N1971, if_1969_end
.annotate 'line', 1299
    find_lex $P1972, "@value"
    unless_null $P1972, vivify_841
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $P1973, $P1972[0]
    unless_null $P1973, vivify_842
    new $P1973, "Undef"
  vivify_842:
    find_lex $P1974, "self"
    find_lex $P1975, "$?CLASS"
    setattribute $P1974, $P1975, "$!parsegrammar", $P1973
  if_1969_end:
.annotate 'line', 1298
    find_lex $P1976, "self"
    find_lex $P1977, "$?CLASS"
    getattribute $P1978, $P1976, $P1977, "$!parsegrammar"
    unless_null $P1978, vivify_843
    new $P1978, "Undef"
  vivify_843:
.annotate 'line', 1297
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1980
    .param pmc param_1981 :slurpy
.annotate 'line', 1304
    .lex "self", param_1980
    .lex "@value", param_1981
.annotate 'line', 1305
    find_lex $P1983, "@value"
    unless_null $P1983, vivify_844
    $P1983 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N1984, $P1983
    unless $N1984, if_1982_end
.annotate 'line', 1306
    find_lex $P1985, "@value"
    unless_null $P1985, vivify_845
    $P1985 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P1986, $P1985[0]
    unless_null $P1986, vivify_846
    new $P1986, "Undef"
  vivify_846:
    find_lex $P1987, "self"
    find_lex $P1988, "$?CLASS"
    setattribute $P1987, $P1988, "$!parseactions", $P1986
  if_1982_end:
.annotate 'line', 1305
    find_lex $P1989, "self"
    find_lex $P1990, "$?CLASS"
    getattribute $P1991, $P1989, $P1990, "$!parseactions"
    unless_null $P1991, vivify_847
    new $P1991, "Undef"
  vivify_847:
.annotate 'line', 1304
    .return ($P1991)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_1993
    .param pmc param_1994 :slurpy
.annotate 'line', 1311
    .lex "self", param_1993
    .lex "@value", param_1994
.annotate 'line', 1312
    find_lex $P1996, "@value"
    unless_null $P1996, vivify_848
    $P1996 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $N1997, $P1996
    unless $N1997, if_1995_end
.annotate 'line', 1313
    find_lex $P1998, "@value"
    unless_null $P1998, vivify_849
    $P1998 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P1999, $P1998[0]
    unless_null $P1999, vivify_850
    new $P1999, "Undef"
  vivify_850:
    find_lex $P2000, "self"
    find_lex $P2001, "$?CLASS"
    setattribute $P2000, $P2001, "$!astgrammar", $P1999
  if_1995_end:
.annotate 'line', 1312
    find_lex $P2002, "self"
    find_lex $P2003, "$?CLASS"
    getattribute $P2004, $P2002, $P2003, "$!astgrammar"
    unless_null $P2004, vivify_851
    new $P2004, "Undef"
  vivify_851:
.annotate 'line', 1311
    .return ($P2004)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2006
    .param pmc param_2007 :optional
    .param int has_param_2007 :opt_flag
.annotate 'line', 1318
    .lex "self", param_2006
    if has_param_2007, optparam_852
    new $P2008, "Undef"
    set param_2007, $P2008
  optparam_852:
    .lex "$value", param_2007
.annotate 'line', 1319
    find_lex $P2010, "$value"
    unless_null $P2010, vivify_853
    new $P2010, "Undef"
  vivify_853:
    defined $I2011, $P2010
    unless $I2011, if_2009_end
.annotate 'line', 1320
    find_lex $P2012, "$value"
    unless_null $P2012, vivify_854
    new $P2012, "Undef"
  vivify_854:
    find_lex $P2013, "self"
    find_lex $P2014, "$?CLASS"
    setattribute $P2013, $P2014, "$!commandline_banner", $P2012
  if_2009_end:
.annotate 'line', 1319
    find_lex $P2015, "self"
    find_lex $P2016, "$?CLASS"
    getattribute $P2017, $P2015, $P2016, "$!commandline_banner"
    unless_null $P2017, vivify_855
    new $P2017, "Undef"
  vivify_855:
.annotate 'line', 1318
    .return ($P2017)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2019
    .param pmc param_2020 :optional
    .param int has_param_2020 :opt_flag
.annotate 'line', 1325
    .lex "self", param_2019
    if has_param_2020, optparam_856
    new $P2021, "Undef"
    set param_2020, $P2021
  optparam_856:
    .lex "$value", param_2020
.annotate 'line', 1326
    find_lex $P2023, "$value"
    unless_null $P2023, vivify_857
    new $P2023, "Undef"
  vivify_857:
    defined $I2024, $P2023
    unless $I2024, if_2022_end
.annotate 'line', 1327
    find_lex $P2025, "$value"
    unless_null $P2025, vivify_858
    new $P2025, "Undef"
  vivify_858:
    find_lex $P2026, "self"
    find_lex $P2027, "$?CLASS"
    setattribute $P2026, $P2027, "$!commandline_prompt", $P2025
  if_2022_end:
.annotate 'line', 1326
    find_lex $P2028, "self"
    find_lex $P2029, "$?CLASS"
    getattribute $P2030, $P2028, $P2029, "$!commandline_prompt"
    unless_null $P2030, vivify_859
    new $P2030, "Undef"
  vivify_859:
.annotate 'line', 1325
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2032
    .param pmc param_2033 :optional
    .param int has_param_2033 :opt_flag
.annotate 'line', 1332
    .lex "self", param_2032
    if has_param_2033, optparam_860
    new $P2034, "Undef"
    set param_2033, $P2034
  optparam_860:
    .lex "$value", param_2033
.annotate 'line', 1333
    find_lex $P2036, "$value"
    unless_null $P2036, vivify_861
    new $P2036, "Undef"
  vivify_861:
    defined $I2037, $P2036
    unless $I2037, if_2035_end
.annotate 'line', 1334
    find_lex $P2038, "$value"
    unless_null $P2038, vivify_862
    new $P2038, "Undef"
  vivify_862:
    find_lex $P2039, "self"
    find_lex $P2040, "$?CLASS"
    setattribute $P2039, $P2040, "$!compiler_progname", $P2038
  if_2035_end:
.annotate 'line', 1333
    find_lex $P2041, "self"
    find_lex $P2042, "$?CLASS"
    getattribute $P2043, $P2041, $P2042, "$!compiler_progname"
    unless_null $P2043, vivify_863
    new $P2043, "Undef"
  vivify_863:
.annotate 'line', 1332
    .return ($P2043)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2045
    .param pmc param_2046 :optional
    .param int has_param_2046 :opt_flag
.annotate 'line', 1339
    .lex "self", param_2045
    if has_param_2046, optparam_864
    $P2047 = root_new ['parrot';'ResizablePMCArray']
    set param_2046, $P2047
  optparam_864:
    .lex "@value", param_2046
.annotate 'line', 1340
    find_lex $P2049, "@value"
    unless_null $P2049, vivify_865
    $P2049 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $N2050, $P2049
    unless $N2050, if_2048_end
.annotate 'line', 1341
    find_lex $P2051, "@value"
    unless_null $P2051, vivify_866
    $P2051 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    find_lex $P2052, "self"
    find_lex $P2053, "$?CLASS"
    setattribute $P2052, $P2053, "@!cmdoptions", $P2051
  if_2048_end:
.annotate 'line', 1340
    find_lex $P2054, "self"
    find_lex $P2055, "$?CLASS"
    getattribute $P2056, $P2054, $P2055, "@!cmdoptions"
    unless_null $P2056, vivify_867
    $P2056 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
.annotate 'line', 1339
    .return ($P2056)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2058
    .param pmc param_2059
    .param pmc param_2060 :slurpy :named
.annotate 'line', 1346
    .const 'Sub' $P2086 = "206_1303401182.58" 
    capture_lex $P2086
    .lex "self", param_2058
    .lex "@args", param_2059
    .lex "%adverbs", param_2060
.annotate 'line', 1359
    new $P2061, "Undef"
    .lex "$program-name", $P2061
.annotate 'line', 1360
    new $P2062, "Undef"
    .lex "$res", $P2062
.annotate 'line', 1361
    $P2063 = root_new ['parrot';'Hash']
    .lex "%opts", $P2063
.annotate 'line', 1362
    $P2064 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2064
.annotate 'line', 1355
    find_lex $P2066, "@args"
    unless_null $P2066, vivify_868
    $P2066 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
    set $P2067, $P2066[2]
    unless_null $P2067, vivify_869
    new $P2067, "Undef"
  vivify_869:
    set $S2068, $P2067
    index $I2069, $S2068, "@INC"
    set $N2070, $I2069
    isge $I2071, $N2070, 0.0
    unless $I2071, if_2065_end
.annotate 'line', 1356
    exit 0
  if_2065_end:
.annotate 'line', 1359
    find_lex $P2072, "@args"
    unless_null $P2072, vivify_870
    $P2072 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    set $P2073, $P2072[0]
    unless_null $P2073, vivify_871
    new $P2073, "Undef"
  vivify_871:
    store_lex "$program-name", $P2073
.annotate 'line', 1360
    find_lex $P2074, "self"
    find_lex $P2075, "@args"
    unless_null $P2075, vivify_872
    $P2075 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    $P2076 = $P2074."process_args"($P2075)
    store_lex "$res", $P2076
.annotate 'line', 1361
    find_lex $P2077, "$res"
    unless_null $P2077, vivify_873
    new $P2077, "Undef"
  vivify_873:
    $P2078 = $P2077."options"()
    store_lex "%opts", $P2078
.annotate 'line', 1362
    find_lex $P2079, "$res"
    unless_null $P2079, vivify_874
    new $P2079, "Undef"
  vivify_874:
    $P2080 = $P2079."arguments"()
    store_lex "@a", $P2080
.annotate 'line', 1364
    find_lex $P2082, "%opts"
    unless_null $P2082, vivify_875
    $P2082 = root_new ['parrot';'Hash']
  vivify_875:
    defined $I2083, $P2082
    unless $I2083, for_undef_876
    iter $P2081, $P2082
    new $P2094, 'ExceptionHandler'
    set_label $P2094, loop2093_handler
    $P2094."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2094
  loop2093_test:
    unless $P2081, loop2093_done
    shift $P2084, $P2081
  loop2093_redo:
    .const 'Sub' $P2086 = "206_1303401182.58" 
    capture_lex $P2086
    $P2086($P2084)
  loop2093_next:
    goto loop2093_test
  loop2093_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2095, exception, 'type'
    eq $P2095, .CONTROL_LOOP_NEXT, loop2093_next
    eq $P2095, .CONTROL_LOOP_REDO, loop2093_redo
  loop2093_done:
    pop_eh 
  for_undef_876:
.annotate 'line', 1367
    find_lex $P2097, "%adverbs"
    unless_null $P2097, vivify_882
    $P2097 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2098, $P2097["help"]
    unless_null $P2098, vivify_883
    new $P2098, "Undef"
  vivify_883:
    unless $P2098, if_2096_end
    find_lex $P2099, "self"
    find_lex $P2100, "$program-name"
    unless_null $P2100, vivify_884
    new $P2100, "Undef"
  vivify_884:
    $P2099."usage"($P2100)
  if_2096_end:
.annotate 'line', 1368
    find_lex $P2102, "%adverbs"
    unless_null $P2102, vivify_885
    $P2102 = root_new ['parrot';'Hash']
  vivify_885:
    set $P2103, $P2102["version"]
    unless_null $P2103, vivify_886
    new $P2103, "Undef"
  vivify_886:
    unless $P2103, if_2101_end
    find_lex $P2104, "self"
    $P2104."version"()
  if_2101_end:
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
.sub "_block2085"  :anon :subid("206_1303401182.58") :outer("205_1303401182.58")
    .param pmc param_2087
.annotate 'line', 1364
    .lex "$k", param_2087
.annotate 'line', 1365
    find_lex $P2088, "$k"
    unless_null $P2088, vivify_877
    new $P2088, "Undef"
  vivify_877:
    find_lex $P2089, "%opts"
    unless_null $P2089, vivify_878
    $P2089 = root_new ['parrot';'Hash']
  vivify_878:
    set $P2090, $P2089[$P2088]
    unless_null $P2090, vivify_879
    new $P2090, "Undef"
  vivify_879:
    find_lex $P2091, "$k"
    unless_null $P2091, vivify_880
    new $P2091, "Undef"
  vivify_880:
    find_lex $P2092, "%adverbs"
    unless_null $P2092, vivify_881
    $P2092 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2092
  vivify_881:
    set $P2092[$P2091], $P2090
.annotate 'line', 1364
    .return ($P2090)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2106
    .param pmc param_2107
.annotate 'line', 1464
    .const 'Sub' $P2122 = "208_1303401182.58" 
    capture_lex $P2122
    .lex "self", param_2106
    .lex "@args", param_2107
.annotate 'line', 1468
    new $P2108, "Undef"
    .lex "$p", $P2108
.annotate 'line', 1471
    new $P2109, "Undef"
    .lex "$res", $P2109
.annotate 'line', 1466
    find_lex $P2110, "self"
    find_lex $P2111, "@args"
    unless_null $P2111, vivify_887
    $P2111 = root_new ['parrot';'ResizablePMCArray']
  vivify_887:
    $P2112 = $P2111."shift"()
    $P2110."compiler_progname"($P2112)
.annotate 'line', 1468
    get_hll_global $P2113, ["HLL";"CommandLine"], "Parser"
    find_lex $P2114, "self"
    find_lex $P2115, "$?CLASS"
    getattribute $P2116, $P2114, $P2115, "@!cmdoptions"
    unless_null $P2116, vivify_888
    $P2116 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    $P2117 = $P2113."new"($P2116)
    store_lex "$p", $P2117
.annotate 'line', 1469
    find_lex $P2118, "$p"
    unless_null $P2118, vivify_889
    new $P2118, "Undef"
  vivify_889:
    $P2118."add-stopper"("-e")
.annotate 'line', 1470
    find_lex $P2119, "$p"
    unless_null $P2119, vivify_890
    new $P2119, "Undef"
  vivify_890:
    $P2119."stop-after-first-arg"()
    find_lex $P2120, "$res"
    unless_null $P2120, vivify_891
    new $P2120, "Undef"
  vivify_891:
.annotate 'line', 1472
    .const 'Sub' $P2122 = "208_1303401182.58" 
    capture_lex $P2122
    $P2122()
    find_lex $P2140, "$res"
    unless_null $P2140, vivify_895
    new $P2140, "Undef"
  vivify_895:
.annotate 'line', 1464
    .return ($P2140)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2121"  :anon :subid("208_1303401182.58") :outer("207_1303401182.58")
.annotate 'line', 1472
    .const 'Sub' $P2132 = "209_1303401182.58" 
    capture_lex $P2132
    new $P2128, 'ExceptionHandler'
    set_label $P2128, control_2127
    $P2128."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2128
.annotate 'line', 1473
    find_lex $P2123, "$p"
    unless_null $P2123, vivify_892
    new $P2123, "Undef"
  vivify_892:
    find_lex $P2124, "@args"
    unless_null $P2124, vivify_893
    $P2124 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    $P2125 = $P2123."parse"($P2124)
    store_lex "$res", $P2125
.annotate 'line', 1472
    pop_eh 
    goto skip_handler_2126
  control_2127:
.annotate 'line', 1474
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2132 = "209_1303401182.58" 
    newclosure $P2137, $P2132
    $P2137(exception)
    new $P2138, 'Integer'
    set $P2138, 1
    set exception["handled"], $P2138
    set $I2139, exception["handled"]
    ne $I2139, 1, nothandled_2130
  handled_2129:
    .return (exception)
  nothandled_2130:
    rethrow exception
  skip_handler_2126:
.annotate 'line', 1472
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2131"  :anon :subid("209_1303401182.58") :outer("208_1303401182.58")
    .param pmc param_2133
.annotate 'line', 1474
    .lex "$_", param_2133
    find_lex $P2134, "$_"
    .lex "$!", $P2134
.annotate 'line', 1475
    find_lex $P2135, "$_"
    unless_null $P2135, vivify_894
    new $P2135, "Undef"
  vivify_894:
    say $P2135
.annotate 'line', 1476
    find_lex $P2136, "self"
    $P2136."usage"()
.annotate 'line', 1477
    exit 1
.annotate 'line', 1474
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2144
    .param pmc param_2145
    .param pmc param_2146 :slurpy
    .param pmc param_2147 :slurpy :named
.annotate 'line', 1483
    .const 'Sub' $P2172 = "211_1303401182.58" 
    capture_lex $P2172
    new $P2143, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2143, control_2142
    push_eh $P2143
    .lex "self", param_2144
    .lex "$files", param_2145
    .lex "@args", param_2146
    .lex "%adverbs", param_2147
.annotate 'line', 1484
    new $P2148, "Undef"
    .lex "$target", $P2148
.annotate 'line', 1485
    new $P2149, "Undef"
    .lex "$encoding", $P2149
.annotate 'line', 1486
    $P2150 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2150
.annotate 'line', 1487
    $P2151 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2151
.annotate 'line', 1484
    find_lex $P2152, "%adverbs"
    unless_null $P2152, vivify_896
    $P2152 = root_new ['parrot';'Hash']
  vivify_896:
    set $P2153, $P2152["target"]
    unless_null $P2153, vivify_897
    new $P2153, "Undef"
  vivify_897:
    set $S2154, $P2153
    downcase $S2155, $S2154
    new $P2156, 'String'
    set $P2156, $S2155
    store_lex "$target", $P2156
.annotate 'line', 1485
    find_lex $P2157, "%adverbs"
    unless_null $P2157, vivify_898
    $P2157 = root_new ['parrot';'Hash']
  vivify_898:
    set $P2158, $P2157["encoding"]
    unless_null $P2158, vivify_899
    new $P2158, "Undef"
  vivify_899:
    store_lex "$encoding", $P2158
.annotate 'line', 1486
    find_lex $P2161, "$files"
    unless_null $P2161, vivify_900
    new $P2161, "Undef"
  vivify_900:
    does $I2162, $P2161, "array"
    if $I2162, if_2160
    find_lex $P2164, "$files"
    unless_null $P2164, vivify_901
    new $P2164, "Undef"
  vivify_901:
    new $P2165, "ResizablePMCArray"
    push $P2165, $P2164
    set $P2159, $P2165
    goto if_2160_end
  if_2160:
    find_lex $P2163, "$files"
    unless_null $P2163, vivify_902
    new $P2163, "Undef"
  vivify_902:
    set $P2159, $P2163
  if_2160_end:
    store_lex "@files", $P2159
    find_lex $P2166, "@codes"
    unless_null $P2166, vivify_903
    $P2166 = root_new ['parrot';'ResizablePMCArray']
  vivify_903:
.annotate 'line', 1488
    find_lex $P2168, "@files"
    unless_null $P2168, vivify_904
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    defined $I2169, $P2168
    unless $I2169, for_undef_905
    iter $P2167, $P2168
    new $P2234, 'ExceptionHandler'
    set_label $P2234, loop2233_handler
    $P2234."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2234
  loop2233_test:
    unless $P2167, loop2233_done
    shift $P2170, $P2167
  loop2233_redo:
    .const 'Sub' $P2172 = "211_1303401182.58" 
    capture_lex $P2172
    $P2172($P2170)
  loop2233_next:
    goto loop2233_test
  loop2233_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2235, exception, 'type'
    eq $P2235, .CONTROL_LOOP_NEXT, loop2233_next
    eq $P2235, .CONTROL_LOOP_REDO, loop2233_redo
  loop2233_done:
    pop_eh 
  for_undef_905:
.annotate 'line', 1483
    .return ($P2167)
  control_2142:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2236, exception, "payload"
    .return ($P2236)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2171"  :anon :subid("211_1303401182.58") :outer("210_1303401182.58")
    .param pmc param_2177
.annotate 'line', 1488
    .const 'Sub' $P2181 = "212_1303401182.58" 
    capture_lex $P2181
.annotate 'line', 1489
    new $P2173, "Undef"
    .lex "$in-handle", $P2173
.annotate 'line', 1490
    new $P2174, "Undef"
    .lex "$err", $P2174
.annotate 'line', 1503
    new $P2175, "Undef"
    .lex "$code", $P2175
.annotate 'line', 1505
    new $P2176, "Undef"
    .lex "$r", $P2176
    .lex "$_", param_2177
.annotate 'line', 1489
    new $P2178, "FileHandle"
    store_lex "$in-handle", $P2178
.annotate 'line', 1490
    new $P2179, "Integer"
    assign $P2179, 0
    store_lex "$err", $P2179
.annotate 'line', 1491
    .const 'Sub' $P2181 = "212_1303401182.58" 
    capture_lex $P2181
    $P2181()
.annotate 'line', 1502
    find_lex $P2205, "$err"
    unless_null $P2205, vivify_913
    new $P2205, "Undef"
  vivify_913:
    unless $P2205, if_2204_end
    find_lex $P2206, "$err"
    unless_null $P2206, vivify_914
    new $P2206, "Undef"
  vivify_914:
    die $P2206
  if_2204_end:
.annotate 'line', 1503
    find_lex $P2207, "@codes"
    unless_null $P2207, vivify_915
    $P2207 = root_new ['parrot';'ResizablePMCArray']
  vivify_915:
    join $S2208, "", $P2207
    new $P2209, 'String'
    set $P2209, $S2208
    store_lex "$code", $P2209
.annotate 'line', 1505
    find_lex $P2210, "self"
    find_lex $P2211, "$code"
    unless_null $P2211, vivify_916
    new $P2211, "Undef"
  vivify_916:
    find_lex $P2212, "@args"
    unless_null $P2212, vivify_917
    $P2212 = root_new ['parrot';'ResizablePMCArray']
  vivify_917:
    find_lex $P2213, "%adverbs"
    unless_null $P2213, vivify_918
    $P2213 = root_new ['parrot';'Hash']
  vivify_918:
    $P2214 = $P2210."eval"($P2211, $P2212 :flat, $P2213 :flat)
    store_lex "$r", $P2214
.annotate 'line', 1506
    find_lex $P2219, "$target"
    unless_null $P2219, vivify_919
    new $P2219, "Undef"
  vivify_919:
    set $S2220, $P2219
    iseq $I2221, $S2220, ""
    unless $I2221, unless_2218
    new $P2217, 'Integer'
    set $P2217, $I2221
    goto unless_2218_end
  unless_2218:
    find_lex $P2222, "$target"
    unless_null $P2222, vivify_920
    new $P2222, "Undef"
  vivify_920:
    set $S2223, $P2222
    iseq $I2224, $S2223, "pir"
    new $P2217, 'Integer'
    set $P2217, $I2224
  unless_2218_end:
    if $P2217, if_2216
.annotate 'line', 1509
    new $P2227, "Exception"
    set $P2227['type'], .CONTROL_RETURN
    find_lex $P2228, "self"
    find_lex $P2229, "$r"
    unless_null $P2229, vivify_921
    new $P2229, "Undef"
  vivify_921:
    find_lex $P2230, "$target"
    unless_null $P2230, vivify_922
    new $P2230, "Undef"
  vivify_922:
    find_lex $P2231, "%adverbs"
    unless_null $P2231, vivify_923
    $P2231 = root_new ['parrot';'Hash']
  vivify_923:
    $P2232 = $P2228."dumper"($P2229, $P2230, $P2231 :flat)
    setattribute $P2227, 'payload', $P2232
    throw $P2227
.annotate 'line', 1508
    goto if_2216_end
  if_2216:
.annotate 'line', 1507
    new $P2225, "Exception"
    set $P2225['type'], .CONTROL_RETURN
    find_lex $P2226, "$r"
    unless_null $P2226, vivify_924
    new $P2226, "Undef"
  vivify_924:
    setattribute $P2225, 'payload', $P2226
    throw $P2225
  if_2216_end:
.annotate 'line', 1488
    .return ($P2215)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2180"  :anon :subid("212_1303401182.58") :outer("211_1303401182.58")
.annotate 'line', 1491
    .const 'Sub' $P2195 = "213_1303401182.58" 
    capture_lex $P2195
    new $P2191, 'ExceptionHandler'
    set_label $P2191, control_2190
    $P2191."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2191
.annotate 'line', 1495
    find_lex $P2182, "$in-handle"
    unless_null $P2182, vivify_906
    new $P2182, "Undef"
  vivify_906:
    find_lex $P2183, "$encoding"
    unless_null $P2183, vivify_907
    new $P2183, "Undef"
  vivify_907:
    $P2182."encoding"($P2183)
.annotate 'line', 1496
    find_lex $P2184, "@codes"
    unless_null $P2184, vivify_908
    $P2184 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    find_lex $P2185, "$in-handle"
    unless_null $P2185, vivify_909
    new $P2185, "Undef"
  vivify_909:
    find_lex $P2186, "$_"
    unless_null $P2186, vivify_910
    new $P2186, "Undef"
  vivify_910:
    $P2187 = $P2185."readall"($P2186)
    push $P2184, $P2187
.annotate 'line', 1497
    find_lex $P2188, "$in-handle"
    unless_null $P2188, vivify_911
    new $P2188, "Undef"
  vivify_911:
    $P2188."close"()
.annotate 'line', 1491
    pop_eh 
    goto skip_handler_2189
  control_2190:
.annotate 'line', 1498
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2195 = "213_1303401182.58" 
    newclosure $P2201, $P2195
    $P2201(exception)
    new $P2202, 'Integer'
    set $P2202, 1
    set exception["handled"], $P2202
    set $I2203, exception["handled"]
    ne $I2203, 1, nothandled_2193
  handled_2192:
    .return (exception)
  nothandled_2193:
    rethrow exception
  skip_handler_2189:
.annotate 'line', 1491
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2194"  :anon :subid("213_1303401182.58") :outer("212_1303401182.58")
    .param pmc param_2196
.annotate 'line', 1498
    .lex "$_", param_2196
    find_lex $P2197, "$_"
    .lex "$!", $P2197
.annotate 'line', 1499
    new $P2198, 'String'
    set $P2198, "Error while reading from file: "
    find_lex $P2199, "$_"
    unless_null $P2199, vivify_912
    new $P2199, "Undef"
  vivify_912:
    concat $P2200, $P2198, $P2199
    store_lex "$err", $P2200
.annotate 'line', 1498
    .return ($P2200)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2240
    .param pmc param_2241
    .param pmc param_2242 :slurpy :named
.annotate 'line', 1515
    .const 'Sub' $P2263 = "215_1303401182.58" 
    capture_lex $P2263
    new $P2239, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2239, control_2238
    push_eh $P2239
    .lex "self", param_2240
    .lex "$source", param_2241
    .lex "%adverbs", param_2242
.annotate 'line', 1516
    $P2243 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2243
.annotate 'line', 1518
    new $P2244, "Undef"
    .lex "$target", $P2244
.annotate 'line', 1519
    new $P2245, "Undef"
    .lex "$result", $P2245
.annotate 'line', 1520
    new $P2246, "Undef"
    .lex "$stderr", $P2246
.annotate 'line', 1516
    find_lex $P2247, "%adverbs"
    unless_null $P2247, vivify_925
    $P2247 = root_new ['parrot';'Hash']
  vivify_925:
    find_lex $P2248, "%*COMPILING"
    unless_null $P2248, vivify_926
    get_hll_global $P2248, "%COMPILING"
    unless_null $P2248, vivify_927
    die "Contextual %*COMPILING not found"
  vivify_927:
    store_lex "%*COMPILING", $P2248
  vivify_926:
    set $P2248["%?OPTIONS"], $P2247
.annotate 'line', 1518
    find_lex $P2249, "%adverbs"
    unless_null $P2249, vivify_928
    $P2249 = root_new ['parrot';'Hash']
  vivify_928:
    set $P2250, $P2249["target"]
    unless_null $P2250, vivify_929
    new $P2250, "Undef"
  vivify_929:
    set $S2251, $P2250
    downcase $S2252, $S2251
    new $P2253, 'String'
    set $P2253, $S2252
    store_lex "$target", $P2253
.annotate 'line', 1519
    find_lex $P2254, "$source"
    unless_null $P2254, vivify_930
    new $P2254, "Undef"
  vivify_930:
    store_lex "$result", $P2254
.annotate 'line', 1520
    getinterp $P2255
    $P2256 = $P2255."stderr_handle"()
    store_lex "$stderr", $P2256
.annotate 'line', 1521
    find_lex $P2258, "self"
    $P2259 = $P2258."stages"()
    defined $I2260, $P2259
    unless $I2260, for_undef_931
    iter $P2257, $P2259
    new $P2299, 'ExceptionHandler'
    set_label $P2299, loop2298_handler
    $P2299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2299
  loop2298_test:
    unless $P2257, loop2298_done
    shift $P2261, $P2257
  loop2298_redo:
    .const 'Sub' $P2263 = "215_1303401182.58" 
    capture_lex $P2263
    $P2263($P2261)
  loop2298_next:
    goto loop2298_test
  loop2298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2300, exception, 'type'
    eq $P2300, .CONTROL_LOOP_NEXT, loop2298_next
    eq $P2300, .CONTROL_LOOP_REDO, loop2298_redo
  loop2298_done:
    pop_eh 
  for_undef_931:
.annotate 'line', 1531
    new $P2301, "Exception"
    set $P2301['type'], .CONTROL_RETURN
    find_lex $P2302, "$result"
    unless_null $P2302, vivify_943
    new $P2302, "Undef"
  vivify_943:
    setattribute $P2301, 'payload', $P2302
    throw $P2301
.annotate 'line', 1515
    .return ()
  control_2238:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2303, exception, "payload"
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2262"  :anon :subid("215_1303401182.58") :outer("214_1303401182.58")
    .param pmc param_2266
.annotate 'line', 1522
    new $P2264, "Undef"
    .lex "$timestamp", $P2264
.annotate 'line', 1524
    new $P2265, "Undef"
    .lex "$diff", $P2265
    .lex "$_", param_2266
.annotate 'line', 1522
    time $N2267
    new $P2268, 'Float'
    set $P2268, $N2267
    store_lex "$timestamp", $P2268
.annotate 'line', 1523
    find_lex $P2269, "self"
    find_lex $P2270, "$result"
    unless_null $P2270, vivify_932
    new $P2270, "Undef"
  vivify_932:
    find_lex $P2271, "%adverbs"
    unless_null $P2271, vivify_933
    $P2271 = root_new ['parrot';'Hash']
  vivify_933:
    find_lex $P2272, "$_"
    unless_null $P2272, vivify_934
    new $P2272, "Undef"
  vivify_934:
    set $S2273, $P2272
    $P2274 = $P2269.$S2273($P2270, $P2271 :flat)
    store_lex "$result", $P2274
.annotate 'line', 1524
    time $N2275
    new $P2276, 'Float'
    set $P2276, $N2275
    find_lex $P2277, "$timestamp"
    unless_null $P2277, vivify_935
    new $P2277, "Undef"
  vivify_935:
    sub $P2278, $P2276, $P2277
    store_lex "$diff", $P2278
.annotate 'line', 1525
    find_lex $P2280, "%adverbs"
    unless_null $P2280, vivify_936
    $P2280 = root_new ['parrot';'Hash']
  vivify_936:
    set $P2281, $P2280["stagestats"]
    unless_null $P2281, vivify_937
    new $P2281, "Undef"
  vivify_937:
    unless $P2281, if_2279_end
.annotate 'line', 1527
    find_lex $P2282, "$stderr"
    unless_null $P2282, vivify_938
    new $P2282, "Undef"
  vivify_938:
    new $P2283, 'String'
    set $P2283, "Stage "
    find_lex $P2284, "$_"
    unless_null $P2284, vivify_939
    new $P2284, "Undef"
  vivify_939:
    concat $P2285, $P2283, $P2284
    concat $P2286, $P2285, ": "
    find_lex $P2287, "$diff"
    unless_null $P2287, vivify_940
    new $P2287, "Undef"
  vivify_940:
    concat $P2288, $P2286, $P2287
    concat $P2289, $P2288, "\n"
    $P2282."print__N"($P2289)
  if_2279_end:
.annotate 'line', 1529
    find_lex $P2292, "$_"
    unless_null $P2292, vivify_941
    new $P2292, "Undef"
  vivify_941:
    set $S2293, $P2292
    find_lex $P2294, "$target"
    unless_null $P2294, vivify_942
    new $P2294, "Undef"
  vivify_942:
    set $S2295, $P2294
    iseq $I2296, $S2293, $S2295
    if $I2296, if_2291
    new $P2290, 'Integer'
    set $P2290, $I2296
    goto if_2291_end
  if_2291:
    set $I2297, .CONTROL_LOOP_LAST
    die 0, $I2297
  if_2291_end:
.annotate 'line', 1521
    .return ($P2290)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2305
    .param pmc param_2306
    .param pmc param_2307 :slurpy :named
.annotate 'line', 1534
    .lex "self", param_2305
    .lex "$source", param_2306
    .lex "%adverbs", param_2307
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
.sub "past"  :subid("217_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2309
    .param pmc param_2310
    .param pmc param_2311 :slurpy :named
.annotate 'line', 1583
    .lex "self", param_2309
    .lex "$source", param_2310
    .lex "%adverbs", param_2311
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
.sub "post"  :subid("218_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2313
    .param pmc param_2314
    .param pmc param_2315 :slurpy :named
.annotate 'line', 1623
    .lex "self", param_2313
    .lex "$source", param_2314
    .lex "%adverbs", param_2315
.annotate 'line', 1624
    compreg $P2316, "PAST"
    find_lex $P2317, "$source"
    unless_null $P2317, vivify_944
    new $P2317, "Undef"
  vivify_944:
    find_lex $P2318, "%adverbs"
    unless_null $P2318, vivify_945
    $P2318 = root_new ['parrot';'Hash']
  vivify_945:
    $P2319 = $P2316."to_post"($P2317, $P2318 :flat)
.annotate 'line', 1623
    .return ($P2319)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2321
    .param pmc param_2322
    .param pmc param_2323 :slurpy :named
.annotate 'line', 1627
    .lex "self", param_2321
    .lex "$source", param_2322
    .lex "%adverbs", param_2323
.annotate 'line', 1628
    compreg $P2324, "POST"
    find_lex $P2325, "$source"
    unless_null $P2325, vivify_946
    new $P2325, "Undef"
  vivify_946:
    find_lex $P2326, "%adverbs"
    unless_null $P2326, vivify_947
    $P2326 = root_new ['parrot';'Hash']
  vivify_947:
    $P2327 = $P2324."to_pir"($P2325, $P2326 :flat)
.annotate 'line', 1627
    .return ($P2327)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2329
    .param pmc param_2330
    .param pmc param_2331 :slurpy :named
.annotate 'line', 1631
    .lex "self", param_2329
    .lex "$source", param_2330
    .lex "%adverbs", param_2331
.annotate 'line', 1632
    new $P2332, "Undef"
    .lex "$compiler", $P2332
    compreg $P2333, "PIR"
    store_lex "$compiler", $P2333
.annotate 'line', 1633
    find_lex $P2334, "$compiler"
    unless_null $P2334, vivify_948
    new $P2334, "Undef"
  vivify_948:
    find_lex $P2335, "$source"
    unless_null $P2335, vivify_949
    new $P2335, "Undef"
  vivify_949:
    $P2336 = $P2334($P2335)
.annotate 'line', 1631
    .return ($P2336)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2338
    .param pmc param_2339
    .param pmc param_2340
    .param pmc param_2341 :slurpy :named
.annotate 'line', 1636
    .const 'Sub' $P2347 = "222_1303401182.58" 
    capture_lex $P2347
    .lex "self", param_2338
    .lex "$obj", param_2339
    .lex "$name", param_2340
    .lex "%options", param_2341
.annotate 'line', 1637
    find_lex $P2344, "%options"
    unless_null $P2344, vivify_950
    $P2344 = root_new ['parrot';'Hash']
  vivify_950:
    set $P2345, $P2344["dumper"]
    unless_null $P2345, vivify_951
    new $P2345, "Undef"
  vivify_951:
    if $P2345, if_2343
.annotate 'line', 1643
    find_lex $P2360, "$obj"
    unless_null $P2360, vivify_952
    new $P2360, "Undef"
  vivify_952:
    find_lex $P2361, "$name"
    unless_null $P2361, vivify_953
    new $P2361, "Undef"
  vivify_953:
    $P2362 = "_dumper"($P2360, $P2361)
.annotate 'line', 1642
    set $P2342, $P2362
.annotate 'line', 1637
    goto if_2343_end
  if_2343:
    .const 'Sub' $P2347 = "222_1303401182.58" 
    capture_lex $P2347
    $P2359 = $P2347()
    set $P2342, $P2359
  if_2343_end:
.annotate 'line', 1636
    .return ($P2342)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2346"  :anon :subid("222_1303401182.58") :outer("221_1303401182.58")
.annotate 'line', 1639
    new $P2348, "Undef"
    .lex "$dumper", $P2348
.annotate 'line', 1638
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1639
    find_lex $P2349, "%options"
    unless_null $P2349, vivify_954
    $P2349 = root_new ['parrot';'Hash']
  vivify_954:
    set $P2350, $P2349["dumper"]
    unless_null $P2350, vivify_955
    new $P2350, "Undef"
  vivify_955:
    set $S2351, $P2350
    downcase $S2352, $S2351
    get_hll_global $P2353, ["PCT"], "Dumper"
    unless_null $P2353, vivify_956
    $P2353 = root_new ['parrot';'Hash']
  vivify_956:
    set $P2354, $P2353[$S2352]
    unless_null $P2354, vivify_957
    new $P2354, "Undef"
  vivify_957:
    store_lex "$dumper", $P2354
.annotate 'line', 1640
    find_lex $P2355, "$dumper"
    unless_null $P2355, vivify_958
    new $P2355, "Undef"
  vivify_958:
    find_lex $P2356, "$obj"
    unless_null $P2356, vivify_959
    new $P2356, "Undef"
  vivify_959:
    find_lex $P2357, "$name"
    unless_null $P2357, vivify_960
    new $P2357, "Undef"
  vivify_960:
    $P2358 = $P2355($P2356, $P2357)
.annotate 'line', 1637
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2364
    .param pmc param_2365 :optional
    .param int has_param_2365 :opt_flag
.annotate 'line', 1647
    .lex "self", param_2364
    if has_param_2365, optparam_961
    new $P2366, "Undef"
    set param_2365, $P2366
  optparam_961:
    .lex "$name", param_2365
.annotate 'line', 1648
    find_lex $P2368, "$name"
    unless_null $P2368, vivify_962
    new $P2368, "Undef"
  vivify_962:
    unless $P2368, if_2367_end
.annotate 'line', 1649
    find_lex $P2369, "$name"
    unless_null $P2369, vivify_963
    new $P2369, "Undef"
  vivify_963:
    "say"($P2369)
  if_2367_end:
.annotate 'line', 1651
    find_lex $P2370, "self"
    find_lex $P2371, "$?CLASS"
    getattribute $P2372, $P2370, $P2371, "$!usage"
    unless_null $P2372, vivify_964
    new $P2372, "Undef"
  vivify_964:
    say $P2372
.annotate 'line', 1652
    exit 0
.annotate 'line', 1647
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2374
.annotate 'line', 1655
    .lex "self", param_2374
.annotate 'line', 1656
    find_lex $P2375, "self"
    find_lex $P2376, "$?CLASS"
    getattribute $P2377, $P2375, $P2376, "$!version"
    unless_null $P2377, vivify_965
    new $P2377, "Undef"
  vivify_965:
    say $P2377
.annotate 'line', 1657
    exit 0
.annotate 'line', 1655
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2379
    .param pmc param_2380
.annotate 'line', 1660
    .const 'Sub' $P2390 = "226_1303401182.58" 
    capture_lex $P2390
    .lex "self", param_2379
    .lex "$stagename", param_2380
.annotate 'line', 1661
    $P2381 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2381
    new $P2382, "ResizableStringArray"
    store_lex "@new_stages", $P2382
.annotate 'line', 1662
    find_lex $P2384, "self"
    find_lex $P2385, "$?CLASS"
    getattribute $P2386, $P2384, $P2385, "@!stages"
    unless_null $P2386, vivify_966
    $P2386 = root_new ['parrot';'ResizablePMCArray']
  vivify_966:
    defined $I2387, $P2386
    unless $I2387, for_undef_967
    iter $P2383, $P2386
    new $P2403, 'ExceptionHandler'
    set_label $P2403, loop2402_handler
    $P2403."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2403
  loop2402_test:
    unless $P2383, loop2402_done
    shift $P2388, $P2383
  loop2402_redo:
    .const 'Sub' $P2390 = "226_1303401182.58" 
    capture_lex $P2390
    $P2390($P2388)
  loop2402_next:
    goto loop2402_test
  loop2402_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2404, exception, 'type'
    eq $P2404, .CONTROL_LOOP_NEXT, loop2402_next
    eq $P2404, .CONTROL_LOOP_REDO, loop2402_redo
  loop2402_done:
    pop_eh 
  for_undef_967:
.annotate 'line', 1667
    find_lex $P2405, "@new_stages"
    unless_null $P2405, vivify_972
    $P2405 = root_new ['parrot';'ResizablePMCArray']
  vivify_972:
    find_lex $P2406, "self"
    find_lex $P2407, "$?CLASS"
    setattribute $P2406, $P2407, "@!stages", $P2405
.annotate 'line', 1660
    .return ($P2405)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2389"  :anon :subid("226_1303401182.58") :outer("225_1303401182.58")
    .param pmc param_2391
.annotate 'line', 1662
    .lex "$_", param_2391
.annotate 'line', 1663
    find_lex $P2394, "$_"
    unless_null $P2394, vivify_968
    new $P2394, "Undef"
  vivify_968:
    set $S2395, $P2394
    find_lex $P2396, "$stagename"
    unless_null $P2396, vivify_969
    new $P2396, "Undef"
  vivify_969:
    set $S2397, $P2396
    isne $I2398, $S2395, $S2397
    if $I2398, if_2393
    new $P2392, 'Integer'
    set $P2392, $I2398
    goto if_2393_end
  if_2393:
.annotate 'line', 1664
    find_lex $P2399, "@new_stages"
    unless_null $P2399, vivify_970
    $P2399 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    find_lex $P2400, "$_"
    unless_null $P2400, vivify_971
    new $P2400, "Undef"
  vivify_971:
    $P2401 = $P2399."push"($P2400)
.annotate 'line', 1663
    set $P2392, $P2401
  if_2393_end:
.annotate 'line', 1662
    .return ($P2392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2411
    .param pmc param_2412
    .param pmc param_2413 :slurpy :named
.annotate 'line', 1670
    .const 'Sub' $P2450 = "229_1303401182.58" 
    capture_lex $P2450
    .const 'Sub' $P2432 = "228_1303401182.58" 
    capture_lex $P2432
    new $P2410, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2410, control_2409
    push_eh $P2410
    .lex "self", param_2411
    .lex "$stagename", param_2412
    .lex "%adverbs", param_2413
.annotate 'line', 1671
    new $P2414, "Undef"
    .lex "$position", $P2414
.annotate 'line', 1672
    new $P2415, "Undef"
    .lex "$where", $P2415
.annotate 'line', 1685
    $P2416 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2416
.annotate 'line', 1670
    find_lex $P2417, "$position"
    unless_null $P2417, vivify_973
    new $P2417, "Undef"
  vivify_973:
    find_lex $P2418, "$where"
    unless_null $P2418, vivify_974
    new $P2418, "Undef"
  vivify_974:
.annotate 'line', 1673
    find_lex $P2420, "%adverbs"
    unless_null $P2420, vivify_975
    $P2420 = root_new ['parrot';'Hash']
  vivify_975:
    set $P2421, $P2420["before"]
    unless_null $P2421, vivify_976
    new $P2421, "Undef"
  vivify_976:
    if $P2421, if_2419
.annotate 'line', 1676
    find_lex $P2426, "%adverbs"
    unless_null $P2426, vivify_977
    $P2426 = root_new ['parrot';'Hash']
  vivify_977:
    set $P2427, $P2426["after"]
    unless_null $P2427, vivify_978
    new $P2427, "Undef"
  vivify_978:
    if $P2427, if_2425
.annotate 'line', 1679
    .const 'Sub' $P2432 = "228_1303401182.58" 
    capture_lex $P2432
    $P2432()
    goto if_2425_end
  if_2425:
.annotate 'line', 1677
    find_lex $P2428, "%adverbs"
    unless_null $P2428, vivify_982
    $P2428 = root_new ['parrot';'Hash']
  vivify_982:
    set $P2429, $P2428["after"]
    unless_null $P2429, vivify_983
    new $P2429, "Undef"
  vivify_983:
    store_lex "$where", $P2429
.annotate 'line', 1678
    new $P2430, "String"
    assign $P2430, "after"
    store_lex "$position", $P2430
  if_2425_end:
.annotate 'line', 1676
    goto if_2419_end
  if_2419:
.annotate 'line', 1674
    find_lex $P2422, "%adverbs"
    unless_null $P2422, vivify_984
    $P2422 = root_new ['parrot';'Hash']
  vivify_984:
    set $P2423, $P2422["before"]
    unless_null $P2423, vivify_985
    new $P2423, "Undef"
  vivify_985:
    store_lex "$where", $P2423
.annotate 'line', 1675
    new $P2424, "String"
    assign $P2424, "before"
    store_lex "$position", $P2424
  if_2419_end:
.annotate 'line', 1685
    new $P2443, "ResizableStringArray"
    store_lex "@new-stages", $P2443
.annotate 'line', 1686
    find_lex $P2445, "self"
    $P2446 = $P2445."stages"()
    defined $I2447, $P2446
    unless $I2447, for_undef_986
    iter $P2444, $P2446
    new $P2475, 'ExceptionHandler'
    set_label $P2475, loop2474_handler
    $P2475."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2475
  loop2474_test:
    unless $P2444, loop2474_done
    shift $P2448, $P2444
  loop2474_redo:
    .const 'Sub' $P2450 = "229_1303401182.58" 
    capture_lex $P2450
    $P2450($P2448)
  loop2474_next:
    goto loop2474_test
  loop2474_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2476, exception, 'type'
    eq $P2476, .CONTROL_LOOP_NEXT, loop2474_next
    eq $P2476, .CONTROL_LOOP_REDO, loop2474_redo
  loop2474_done:
    pop_eh 
  for_undef_986:
.annotate 'line', 1699
    find_lex $P2477, "self"
    find_lex $P2478, "@new-stages"
    unless_null $P2478, vivify_1000
    $P2478 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    $P2479 = $P2477."stages"($P2478)
.annotate 'line', 1670
    .return ($P2479)
  control_2409:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2480, exception, "payload"
    .return ($P2480)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2431"  :anon :subid("228_1303401182.58") :outer("227_1303401182.58")
.annotate 'line', 1680
    $P2433 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2433
    find_lex $P2434, "self"
    $P2435 = $P2434."stages"()
    clone $P2436, $P2435
    store_lex "@new-stages", $P2436
.annotate 'line', 1681
    find_lex $P2437, "@new-stages"
    unless_null $P2437, vivify_979
    $P2437 = root_new ['parrot';'ResizablePMCArray']
  vivify_979:
    find_lex $P2438, "$stagename"
    unless_null $P2438, vivify_980
    new $P2438, "Undef"
  vivify_980:
    push $P2437, $P2438
.annotate 'line', 1682
    find_lex $P2439, "self"
    find_lex $P2440, "@new-stages"
    unless_null $P2440, vivify_981
    $P2440 = root_new ['parrot';'ResizablePMCArray']
  vivify_981:
    $P2439."stages"($P2440)
.annotate 'line', 1683
    new $P2441, "Exception"
    set $P2441['type'], .CONTROL_RETURN
    new $P2442, "Integer"
    assign $P2442, 1
    setattribute $P2441, 'payload', $P2442
    throw $P2441
.annotate 'line', 1679
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2449"  :anon :subid("229_1303401182.58") :outer("227_1303401182.58")
    .param pmc param_2451
.annotate 'line', 1686
    .lex "$_", param_2451
.annotate 'line', 1687
    find_lex $P2454, "$_"
    unless_null $P2454, vivify_987
    new $P2454, "Undef"
  vivify_987:
    set $S2455, $P2454
    find_lex $P2456, "$where"
    unless_null $P2456, vivify_988
    new $P2456, "Undef"
  vivify_988:
    set $S2457, $P2456
    iseq $I2458, $S2455, $S2457
    if $I2458, if_2453
.annotate 'line', 1696
    find_lex $P2472, "@new-stages"
    unless_null $P2472, vivify_989
    $P2472 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    find_lex $P2473, "$_"
    unless_null $P2473, vivify_990
    new $P2473, "Undef"
  vivify_990:
    push $P2472, $P2473
.annotate 'line', 1695
    set $P2452, $P2472
.annotate 'line', 1687
    goto if_2453_end
  if_2453:
.annotate 'line', 1688
    find_lex $P2461, "$position"
    unless_null $P2461, vivify_991
    new $P2461, "Undef"
  vivify_991:
    set $S2462, $P2461
    iseq $I2463, $S2462, "before"
    if $I2463, if_2460
.annotate 'line', 1692
    find_lex $P2468, "@new-stages"
    unless_null $P2468, vivify_992
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_992:
    find_lex $P2469, "$_"
    unless_null $P2469, vivify_993
    new $P2469, "Undef"
  vivify_993:
    push $P2468, $P2469
.annotate 'line', 1693
    find_lex $P2470, "@new-stages"
    unless_null $P2470, vivify_994
    $P2470 = root_new ['parrot';'ResizablePMCArray']
  vivify_994:
    find_lex $P2471, "$stagename"
    unless_null $P2471, vivify_995
    new $P2471, "Undef"
  vivify_995:
    push $P2470, $P2471
.annotate 'line', 1691
    set $P2459, $P2470
.annotate 'line', 1688
    goto if_2460_end
  if_2460:
.annotate 'line', 1689
    find_lex $P2464, "@new-stages"
    unless_null $P2464, vivify_996
    $P2464 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2465, "$stagename"
    unless_null $P2465, vivify_997
    new $P2465, "Undef"
  vivify_997:
    push $P2464, $P2465
.annotate 'line', 1690
    find_lex $P2466, "@new-stages"
    unless_null $P2466, vivify_998
    $P2466 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2467, "$_"
    unless_null $P2467, vivify_999
    new $P2467, "Undef"
  vivify_999:
    push $P2466, $P2467
.annotate 'line', 1688
    set $P2459, $P2466
  if_2460_end:
.annotate 'line', 1687
    set $P2452, $P2459
  if_2453_end:
.annotate 'line', 1686
    .return ($P2452)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2482
    .param pmc param_2483
.annotate 'line', 1702
    .const 'Sub' $P2521 = "231_1303401182.58" 
    capture_lex $P2521
    .lex "self", param_2482
    .lex "$name", param_2483
.annotate 'line', 1703
    $P2484 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2484
.annotate 'line', 1704
    new $P2485, "Undef"
    .lex "$sigil", $P2485
.annotate 'line', 1707
    new $P2486, "Undef"
    .lex "$idx", $P2486
.annotate 'line', 1715
    $P2487 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2487
.annotate 'line', 1703
    find_lex $P2488, "$name"
    unless_null $P2488, vivify_1001
    new $P2488, "Undef"
  vivify_1001:
    set $S2489, $P2488
    split $P2490, "::", $S2489
    store_lex "@ns", $P2490
.annotate 'line', 1704
    find_lex $P2491, "@ns"
    unless_null $P2491, vivify_1002
    $P2491 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    set $P2492, $P2491[0]
    unless_null $P2492, vivify_1003
    new $P2492, "Undef"
  vivify_1003:
    set $S2493, $P2492
    substr $S2494, $S2493, 0, 1
    new $P2495, 'String'
    set $P2495, $S2494
    store_lex "$sigil", $P2495
.annotate 'line', 1707
    find_lex $P2496, "$sigil"
    unless_null $P2496, vivify_1004
    new $P2496, "Undef"
  vivify_1004:
    set $S2497, $P2496
    index $I2498, "$@%&", $S2497
    new $P2499, 'Integer'
    set $P2499, $I2498
    store_lex "$idx", $P2499
.annotate 'line', 1708
    find_lex $P2501, "$idx"
    unless_null $P2501, vivify_1005
    new $P2501, "Undef"
  vivify_1005:
    set $N2502, $P2501
    isge $I2503, $N2502, 0.0
    unless $I2503, if_2500_end
.annotate 'line', 1709
    find_lex $P2504, "@ns"
    unless_null $P2504, vivify_1006
    $P2504 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P2505, $P2504[0]
    unless_null $P2505, vivify_1007
    new $P2505, "Undef"
  vivify_1007:
    set $S2506, $P2505
    substr $S2507, $S2506, 1
    new $P2508, 'String'
    set $P2508, $S2507
    find_lex $P2509, "@ns"
    unless_null $P2509, vivify_1008
    $P2509 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2509
  vivify_1008:
    set $P2509[0], $P2508
.annotate 'line', 1710
    find_lex $P2510, "$sigil"
    unless_null $P2510, vivify_1009
    new $P2510, "Undef"
  vivify_1009:
    find_lex $P2511, "@ns"
    unless_null $P2511, vivify_1010
    $P2511 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    set $P2512, $P2511[-1]
    unless_null $P2512, vivify_1011
    new $P2512, "Undef"
  vivify_1011:
    concat $P2513, $P2510, $P2512
    find_lex $P2514, "@ns"
    unless_null $P2514, vivify_1012
    $P2514 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2514
  vivify_1012:
    set $P2514[-1], $P2513
  if_2500_end:
.annotate 'line', 1708
    find_lex $P2515, "@actual_ns"
    unless_null $P2515, vivify_1013
    $P2515 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
.annotate 'line', 1716
    find_lex $P2517, "@ns"
    unless_null $P2517, vivify_1014
    $P2517 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    defined $I2518, $P2517
    unless $I2518, for_undef_1015
    iter $P2516, $P2517
    new $P2531, 'ExceptionHandler'
    set_label $P2531, loop2530_handler
    $P2531."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2531
  loop2530_test:
    unless $P2516, loop2530_done
    shift $P2519, $P2516
  loop2530_redo:
    .const 'Sub' $P2521 = "231_1303401182.58" 
    capture_lex $P2521
    $P2521($P2519)
  loop2530_next:
    goto loop2530_test
  loop2530_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2532, exception, 'type'
    eq $P2532, .CONTROL_LOOP_NEXT, loop2530_next
    eq $P2532, .CONTROL_LOOP_REDO, loop2530_redo
  loop2530_done:
    pop_eh 
  for_undef_1015:
    find_lex $P2533, "@actual_ns"
    unless_null $P2533, vivify_1019
    $P2533 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
.annotate 'line', 1702
    .return ($P2533)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2520"  :anon :subid("231_1303401182.58") :outer("230_1303401182.58")
    .param pmc param_2522
.annotate 'line', 1716
    .lex "$_", param_2522
.annotate 'line', 1717
    find_lex $P2525, "$_"
    unless_null $P2525, vivify_1016
    new $P2525, "Undef"
  vivify_1016:
    set $S2526, $P2525
    iseq $I2527, $S2526, ""
    unless $I2527, unless_2524
    new $P2523, 'Integer'
    set $P2523, $I2527
    goto unless_2524_end
  unless_2524:
    find_lex $P2528, "@actual_ns"
    unless_null $P2528, vivify_1017
    $P2528 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    find_lex $P2529, "$_"
    unless_null $P2529, vivify_1018
    new $P2529, "Undef"
  vivify_1018:
    push $P2528, $P2529
    set $P2523, $P2528
  unless_2524_end:
.annotate 'line', 1716
    .return ($P2523)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303401182.58") :outer("167_1303401182.58")
    .param pmc param_2535
    .param pmc param_2536
    .param pmc param_2537
    .param pmc param_2538 :optional :named("cache")
    .param int has_param_2538 :opt_flag
.annotate 'line', 1722
    .lex "self", param_2535
    .lex "$target", param_2536
    .lex "$pos", param_2537
    if has_param_2538, optparam_1020
    new $P2539, "Undef"
    set param_2538, $P2539
  optparam_1020:
    .lex "$cache", param_2538
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
.sub "_block2656"  :subid("234_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 1879
    .const 'Sub' $P2735 = "241_1303401182.58" 
    capture_lex $P2735
    .const 'Sub' $P2685 = "239_1303401182.58" 
    capture_lex $P2685
    .const 'Sub' $P2678 = "238_1303401182.58" 
    capture_lex $P2678
    .const 'Sub' $P2673 = "237_1303401182.58" 
    capture_lex $P2673
    .const 'Sub' $P2668 = "236_1303401182.58" 
    capture_lex $P2668
    .const 'Sub' $P2660 = "235_1303401182.58" 
    capture_lex $P2660
    .lex "$?PACKAGE", $P2658
    .lex "$?CLASS", $P2659
.annotate 'line', 1895
    .const 'Sub' $P2685 = "239_1303401182.58" 
    newclosure $P2733, $P2685
.annotate 'line', 1879
    .return ($P2733)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1022") :outer("234_1303401182.58")
.annotate 'line', 1879
    get_hll_global $P2657, ["HLL";"CommandLine";"Result"], "_block2656" 
    .local pmc block
    set block, $P2657
    .const 'Sub' $P2735 = "241_1303401182.58" 
    capture_lex $P2735
    $P2735()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2734"  :anon :subid("241_1303401182.58") :outer("234_1303401182.58")
.annotate 'line', 1879
    nqp_get_sc_object $P2736, "1303401174.917", 4
    .local pmc type_obj
    set type_obj, $P2736
    get_how $P2737, type_obj
    get_hll_global $P2738, "NQPAttribute"
    $P2739 = $P2738."new"("@!arguments" :named("name"))
    $P2737."add_attribute"(type_obj, $P2739)
    get_how $P2740, type_obj
    get_hll_global $P2741, "NQPAttribute"
    $P2742 = $P2741."new"("%!options" :named("name"))
    $P2740."add_attribute"(type_obj, $P2742)
    get_how $P2743, type_obj
    .const 'Sub' $P2744 = "235_1303401182.58" 
    $P2743."add_method"(type_obj, "init", $P2744)
    get_how $P2745, type_obj
    .const 'Sub' $P2746 = "236_1303401182.58" 
    $P2745."add_method"(type_obj, "arguments", $P2746)
    get_how $P2747, type_obj
    .const 'Sub' $P2748 = "237_1303401182.58" 
    $P2747."add_method"(type_obj, "options", $P2748)
    get_how $P2749, type_obj
    .const 'Sub' $P2750 = "238_1303401182.58" 
    $P2749."add_method"(type_obj, "add-argument", $P2750)
    get_how $P2751, type_obj
    .const 'Sub' $P2752 = "239_1303401182.58" 
    $P2751."add_method"(type_obj, "add-option", $P2752)
    get_how $P2753, type_obj
    get_hll_global $P2754, "NQPMu"
    $P2753."set_default_parent"(type_obj, $P2754)
    get_how $P2755, type_obj
    $P2756 = $P2755."compose"(type_obj)
    .return ($P2756)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303401182.58") :outer("234_1303401182.58")
    .param pmc param_2661
.annotate 'line', 1883
    .lex "self", param_2661
.annotate 'line', 1884
    new $P2662, "ResizablePMCArray"
    find_lex $P2663, "self"
    find_lex $P2664, "$?CLASS"
    setattribute $P2663, $P2664, "@!arguments", $P2662
.annotate 'line', 1885
    new $P2665, "Hash"
    find_lex $P2666, "self"
    find_lex $P2667, "$?CLASS"
    setattribute $P2666, $P2667, "%!options", $P2665
.annotate 'line', 1883
    .return ($P2665)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303401182.58") :outer("234_1303401182.58")
    .param pmc param_2669
.annotate 'line', 1888
    .lex "self", param_2669
    find_lex $P2670, "self"
    find_lex $P2671, "$?CLASS"
    getattribute $P2672, $P2670, $P2671, "@!arguments"
    unless_null $P2672, vivify_1023
    $P2672 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    .return ($P2672)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303401182.58") :outer("234_1303401182.58")
    .param pmc param_2674
.annotate 'line', 1889
    .lex "self", param_2674
    find_lex $P2675, "self"
    find_lex $P2676, "$?CLASS"
    getattribute $P2677, $P2675, $P2676, "%!options"
    unless_null $P2677, vivify_1024
    $P2677 = root_new ['parrot';'Hash']
  vivify_1024:
    .return ($P2677)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303401182.58") :outer("234_1303401182.58")
    .param pmc param_2679
    .param pmc param_2680
.annotate 'line', 1891
    .lex "self", param_2679
    .lex "$x", param_2680
.annotate 'line', 1892
    find_lex $P2681, "self"
    find_lex $P2682, "$?CLASS"
    getattribute $P2683, $P2681, $P2682, "@!arguments"
    unless_null $P2683, vivify_1025
    $P2683 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    find_lex $P2684, "$x"
    unless_null $P2684, vivify_1026
    new $P2684, "Undef"
  vivify_1026:
    push $P2683, $P2684
.annotate 'line', 1891
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303401182.58") :outer("234_1303401182.58")
    .param pmc param_2686
    .param pmc param_2687
    .param pmc param_2688
.annotate 'line', 1895
    .const 'Sub' $P2697 = "240_1303401182.58" 
    capture_lex $P2697
    .lex "self", param_2686
    .lex "$name", param_2687
    .lex "$value", param_2688
.annotate 'line', 1898
    find_lex $P2694, "$name"
    unless_null $P2694, vivify_1027
    new $P2694, "Undef"
  vivify_1027:
    find_lex $P2691, "self"
    find_lex $P2692, "$?CLASS"
    getattribute $P2693, $P2691, $P2692, "%!options"
    unless_null $P2693, vivify_1028
    $P2693 = root_new ['parrot';'Hash']
  vivify_1028:
    exists $I2695, $P2693[$P2694]
    if $I2695, if_2690
.annotate 'line', 1907
    find_lex $P2728, "$value"
    unless_null $P2728, vivify_1029
    new $P2728, "Undef"
  vivify_1029:
    find_lex $P2729, "$name"
    unless_null $P2729, vivify_1030
    new $P2729, "Undef"
  vivify_1030:
    find_lex $P2730, "self"
    find_lex $P2731, "$?CLASS"
    getattribute $P2732, $P2730, $P2731, "%!options"
    unless_null $P2732, vivify_1031
    $P2732 = root_new ['parrot';'Hash']
    setattribute $P2730, $P2731, "%!options", $P2732
  vivify_1031:
    set $P2732[$P2729], $P2728
.annotate 'line', 1906
    set $P2689, $P2728
.annotate 'line', 1898
    goto if_2690_end
  if_2690:
    .const 'Sub' $P2697 = "240_1303401182.58" 
    capture_lex $P2697
    $P2727 = $P2697()
    set $P2689, $P2727
  if_2690_end:
.annotate 'line', 1895
    .return ($P2689)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2696"  :anon :subid("240_1303401182.58") :outer("239_1303401182.58")
.annotate 'line', 1899
    new $P2698, "Undef"
    .lex "$t", $P2698
    find_lex $P2699, "self"
    find_lex $P2700, "$?CLASS"
    getattribute $P2701, $P2699, $P2700, "%!options"
    unless_null $P2701, vivify_1032
    $P2701 = root_new ['parrot';'Hash']
  vivify_1032:
    typeof $S2702, $P2701
    new $P2703, 'String'
    set $P2703, $S2702
    store_lex "$t", $P2703
.annotate 'line', 1900
    find_lex $P2704, "$t"
    unless_null $P2704, vivify_1033
    new $P2704, "Undef"
  vivify_1033:
    "say"($P2704)
.annotate 'line', 1901
    find_lex $P2707, "$t"
    unless_null $P2707, vivify_1034
    new $P2707, "Undef"
  vivify_1034:
    set $S2708, $P2707
    iseq $I2709, $S2708, "ResizablePMCArray"
    if $I2709, if_2706
.annotate 'line', 1904
    find_lex $P2716, "$name"
    unless_null $P2716, vivify_1035
    new $P2716, "Undef"
  vivify_1035:
    find_lex $P2717, "self"
    find_lex $P2718, "$?CLASS"
    getattribute $P2719, $P2717, $P2718, "%!options"
    unless_null $P2719, vivify_1036
    $P2719 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P2720, $P2719[$P2716]
    unless_null $P2720, vivify_1037
    new $P2720, "Undef"
  vivify_1037:
    find_lex $P2721, "$name"
    unless_null $P2721, vivify_1038
    new $P2721, "Undef"
  vivify_1038:
    new $P2722, "ResizablePMCArray"
    push $P2722, $P2720
    push $P2722, $P2721
    find_lex $P2723, "$name"
    unless_null $P2723, vivify_1039
    new $P2723, "Undef"
  vivify_1039:
    find_lex $P2724, "self"
    find_lex $P2725, "$?CLASS"
    getattribute $P2726, $P2724, $P2725, "%!options"
    unless_null $P2726, vivify_1040
    $P2726 = root_new ['parrot';'Hash']
    setattribute $P2724, $P2725, "%!options", $P2726
  vivify_1040:
    set $P2726[$P2723], $P2722
.annotate 'line', 1903
    set $P2705, $P2722
.annotate 'line', 1901
    goto if_2706_end
  if_2706:
.annotate 'line', 1902
    find_lex $P2710, "$name"
    unless_null $P2710, vivify_1041
    new $P2710, "Undef"
  vivify_1041:
    find_lex $P2711, "self"
    find_lex $P2712, "$?CLASS"
    getattribute $P2713, $P2711, $P2712, "%!options"
    unless_null $P2713, vivify_1042
    $P2713 = root_new ['parrot';'Hash']
  vivify_1042:
    set $P2714, $P2713[$P2710]
    unless_null $P2714, vivify_1043
    new $P2714, "Undef"
  vivify_1043:
    find_lex $P2715, "$value"
    unless_null $P2715, vivify_1044
    new $P2715, "Undef"
  vivify_1044:
    push $P2714, $P2715
.annotate 'line', 1901
    set $P2705, $P2714
  if_2706_end:
.annotate 'line', 1898
    .return ($P2705)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2757"  :subid("242_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 1912
    .const 'Sub' $P3183 = "261_1303401182.58" 
    capture_lex $P3183
    .const 'Sub' $P2898 = "253_1303401182.58" 
    capture_lex $P2898
    .const 'Sub' $P2886 = "252_1303401182.58" 
    capture_lex $P2886
    .const 'Sub' $P2862 = "251_1303401182.58" 
    capture_lex $P2862
    .const 'Sub' $P2813 = "249_1303401182.58" 
    capture_lex $P2813
    .const 'Sub' $P2807 = "248_1303401182.58" 
    capture_lex $P2807
    .const 'Sub' $P2799 = "247_1303401182.58" 
    capture_lex $P2799
    .const 'Sub' $P2775 = "245_1303401182.58" 
    capture_lex $P2775
    .const 'Sub' $P2770 = "244_1303401182.58" 
    capture_lex $P2770
    .const 'Sub' $P2761 = "243_1303401182.58" 
    capture_lex $P2761
    .lex "$?PACKAGE", $P2759
    .lex "$?CLASS", $P2760
.annotate 'line', 1972
    .const 'Sub' $P2898 = "253_1303401182.58" 
    newclosure $P3181, $P2898
.annotate 'line', 1912
    .return ($P3181)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1045") :outer("242_1303401182.58")
.annotate 'line', 1912
    get_hll_global $P2758, ["HLL";"CommandLine";"Parser"], "_block2757" 
    .local pmc block
    set block, $P2758
    .const 'Sub' $P3183 = "261_1303401182.58" 
    capture_lex $P3183
    $P3183()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3182"  :anon :subid("261_1303401182.58") :outer("242_1303401182.58")
.annotate 'line', 1912
    nqp_get_sc_object $P3184, "1303401174.917", 5
    .local pmc type_obj
    set type_obj, $P3184
    get_how $P3185, type_obj
    get_hll_global $P3186, "NQPAttribute"
    $P3187 = $P3186."new"("@!specs" :named("name"))
    $P3185."add_attribute"(type_obj, $P3187)
    get_how $P3188, type_obj
    get_hll_global $P3189, "NQPAttribute"
    $P3190 = $P3189."new"("%!options" :named("name"))
    $P3188."add_attribute"(type_obj, $P3190)
    get_how $P3191, type_obj
    get_hll_global $P3192, "NQPAttribute"
    $P3193 = $P3192."new"("%!stopper" :named("name"))
    $P3191."add_attribute"(type_obj, $P3193)
    get_how $P3194, type_obj
    get_hll_global $P3195, "NQPAttribute"
    $P3196 = $P3195."new"("$!stop-after-first-arg" :named("name"))
    $P3194."add_attribute"(type_obj, $P3196)
    get_how $P3197, type_obj
    .const 'Sub' $P3198 = "243_1303401182.58" 
    $P3197."add_method"(type_obj, "new", $P3198)
    get_how $P3199, type_obj
    .const 'Sub' $P3200 = "244_1303401182.58" 
    $P3199."add_method"(type_obj, "stop-after-first-arg", $P3200)
    get_how $P3201, type_obj
    .const 'Sub' $P3202 = "245_1303401182.58" 
    $P3201."add_method"(type_obj, "BUILD", $P3202)
    get_how $P3203, type_obj
    .const 'Sub' $P3204 = "247_1303401182.58" 
    $P3203."add_method"(type_obj, "add-stopper", $P3204)
    get_how $P3205, type_obj
    .const 'Sub' $P3206 = "248_1303401182.58" 
    $P3205."add_method"(type_obj, "split-option-aliases", $P3206)
    get_how $P3207, type_obj
    .const 'Sub' $P3208 = "249_1303401182.58" 
    $P3207."add_method"(type_obj, "add-spec", $P3208)
    get_how $P3209, type_obj
    .const 'Sub' $P3210 = "251_1303401182.58" 
    $P3209."add_method"(type_obj, "is-option", $P3210)
    get_how $P3211, type_obj
    .const 'Sub' $P3212 = "252_1303401182.58" 
    $P3211."add_method"(type_obj, "wants-value", $P3212)
    get_how $P3213, type_obj
    .const 'Sub' $P3214 = "253_1303401182.58" 
    $P3213."add_method"(type_obj, "parse", $P3214)
    get_how $P3215, type_obj
    get_hll_global $P3216, "NQPMu"
    $P3215."set_default_parent"(type_obj, $P3216)
    get_how $P3217, type_obj
    $P3218 = $P3217."compose"(type_obj)
    .return ($P3218)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2762
    .param pmc param_2763
.annotate 'line', 1918
    .lex "self", param_2762
    .lex "@specs", param_2763
.annotate 'line', 1919
    new $P2764, "Undef"
    .lex "$obj", $P2764
    find_lex $P2765, "self"
    $P2766 = $P2765."CREATE"()
    store_lex "$obj", $P2766
.annotate 'line', 1920
    find_lex $P2767, "$obj"
    unless_null $P2767, vivify_1046
    new $P2767, "Undef"
  vivify_1046:
    find_lex $P2768, "@specs"
    unless_null $P2768, vivify_1047
    $P2768 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
    $P2767."BUILD"($P2768 :named("specs"))
    find_lex $P2769, "$obj"
    unless_null $P2769, vivify_1048
    new $P2769, "Undef"
  vivify_1048:
.annotate 'line', 1918
    .return ($P2769)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2771
.annotate 'line', 1924
    .lex "self", param_2771
.annotate 'line', 1925
    new $P2772, "Integer"
    assign $P2772, 1
    find_lex $P2773, "self"
    find_lex $P2774, "$?CLASS"
    setattribute $P2773, $P2774, "$!stop-after-first-arg", $P2772
.annotate 'line', 1924
    .return ($P2772)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2776
    .param pmc param_2777 :optional :named("specs")
    .param int has_param_2777 :opt_flag
.annotate 'line', 1928
    .const 'Sub' $P2791 = "246_1303401182.58" 
    capture_lex $P2791
    .lex "self", param_2776
    if has_param_2777, optparam_1049
    $P2778 = root_new ['parrot';'ResizablePMCArray']
    set param_2777, $P2778
  optparam_1049:
    .lex "@specs", param_2777
.annotate 'line', 1929
    new $P2779, "Integer"
    assign $P2779, 1
    find_lex $P2780, "self"
    find_lex $P2781, "$?CLASS"
    getattribute $P2782, $P2780, $P2781, "%!stopper"
    unless_null $P2782, vivify_1050
    $P2782 = root_new ['parrot';'Hash']
    setattribute $P2780, $P2781, "%!stopper", $P2782
  vivify_1050:
    set $P2782["--"], $P2779
.annotate 'line', 1930
    new $P2783, "Integer"
    assign $P2783, 0
    find_lex $P2784, "self"
    find_lex $P2785, "$?CLASS"
    setattribute $P2784, $P2785, "$!stop-after-first-arg", $P2783
.annotate 'line', 1931
    find_lex $P2787, "@specs"
    unless_null $P2787, vivify_1051
    $P2787 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    defined $I2788, $P2787
    unless $I2788, for_undef_1052
    iter $P2786, $P2787
    new $P2797, 'ExceptionHandler'
    set_label $P2797, loop2796_handler
    $P2797."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2797
  loop2796_test:
    unless $P2786, loop2796_done
    shift $P2789, $P2786
  loop2796_redo:
    .const 'Sub' $P2791 = "246_1303401182.58" 
    capture_lex $P2791
    $P2791($P2789)
  loop2796_next:
    goto loop2796_test
  loop2796_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2798, exception, 'type'
    eq $P2798, .CONTROL_LOOP_NEXT, loop2796_next
    eq $P2798, .CONTROL_LOOP_REDO, loop2796_redo
  loop2796_done:
    pop_eh 
  for_undef_1052:
.annotate 'line', 1928
    .return ($P2786)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2790"  :anon :subid("246_1303401182.58") :outer("245_1303401182.58")
    .param pmc param_2792
.annotate 'line', 1931
    .lex "$_", param_2792
.annotate 'line', 1932
    find_lex $P2793, "self"
    find_lex $P2794, "$_"
    unless_null $P2794, vivify_1053
    new $P2794, "Undef"
  vivify_1053:
    $P2795 = $P2793."add-spec"($P2794)
.annotate 'line', 1931
    .return ($P2795)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2800
    .param pmc param_2801
.annotate 'line', 1935
    .lex "self", param_2800
    .lex "$x", param_2801
.annotate 'line', 1936
    new $P2802, "Integer"
    assign $P2802, 1
    find_lex $P2803, "$x"
    unless_null $P2803, vivify_1054
    new $P2803, "Undef"
  vivify_1054:
    find_lex $P2804, "self"
    find_lex $P2805, "$?CLASS"
    getattribute $P2806, $P2804, $P2805, "%!stopper"
    unless_null $P2806, vivify_1055
    $P2806 = root_new ['parrot';'Hash']
    setattribute $P2804, $P2805, "%!stopper", $P2806
  vivify_1055:
    set $P2806[$P2803], $P2802
.annotate 'line', 1935
    .return ($P2802)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2808
    .param pmc param_2809
.annotate 'line', 1939
    .lex "self", param_2808
    .lex "$s", param_2809
.annotate 'line', 1940
    find_lex $P2810, "$s"
    unless_null $P2810, vivify_1056
    new $P2810, "Undef"
  vivify_1056:
    set $S2811, $P2810
    split $P2812, "|", $S2811
.annotate 'line', 1939
    .return ($P2812)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2814
    .param pmc param_2815
.annotate 'line', 1944
    .const 'Sub' $P2852 = "250_1303401182.58" 
    capture_lex $P2852
    .lex "self", param_2814
    .lex "$s", param_2815
.annotate 'line', 1945
    new $P2816, "Undef"
    .lex "$i", $P2816
.annotate 'line', 1946
    new $P2817, "Undef"
    .lex "$type", $P2817
.annotate 'line', 1947
    $P2818 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2818
.annotate 'line', 1945
    find_lex $P2819, "$s"
    unless_null $P2819, vivify_1057
    new $P2819, "Undef"
  vivify_1057:
    set $S2820, $P2819
    index $I2821, $S2820, "="
    new $P2822, 'Integer'
    set $P2822, $I2821
    store_lex "$i", $P2822
    find_lex $P2823, "$type"
    unless_null $P2823, vivify_1058
    new $P2823, "Undef"
  vivify_1058:
    find_lex $P2824, "@options"
    unless_null $P2824, vivify_1059
    $P2824 = root_new ['parrot';'ResizablePMCArray']
  vivify_1059:
.annotate 'line', 1948
    find_lex $P2826, "$i"
    unless_null $P2826, vivify_1060
    new $P2826, "Undef"
  vivify_1060:
    set $N2827, $P2826
    islt $I2828, $N2827, 0.0
    if $I2828, if_2825
.annotate 'line', 1952
    find_lex $P2833, "$s"
    unless_null $P2833, vivify_1061
    new $P2833, "Undef"
  vivify_1061:
    set $S2834, $P2833
    find_lex $P2835, "$i"
    unless_null $P2835, vivify_1062
    new $P2835, "Undef"
  vivify_1062:
    add $P2836, $P2835, 1
    set $I2837, $P2836
    substr $S2838, $S2834, $I2837
    new $P2839, 'String'
    set $P2839, $S2838
    store_lex "$type", $P2839
.annotate 'line', 1953
    find_lex $P2840, "self"
    find_lex $P2841, "$s"
    unless_null $P2841, vivify_1063
    new $P2841, "Undef"
  vivify_1063:
    set $S2842, $P2841
    find_lex $P2843, "$i"
    unless_null $P2843, vivify_1064
    new $P2843, "Undef"
  vivify_1064:
    set $I2844, $P2843
    substr $S2845, $S2842, 0, $I2844
    $P2846 = $P2840."split-option-aliases"($S2845)
    store_lex "@options", $P2846
.annotate 'line', 1951
    goto if_2825_end
  if_2825:
.annotate 'line', 1949
    new $P2829, "String"
    assign $P2829, "b"
    store_lex "$type", $P2829
.annotate 'line', 1950
    find_lex $P2830, "self"
    find_lex $P2831, "$s"
    unless_null $P2831, vivify_1065
    new $P2831, "Undef"
  vivify_1065:
    $P2832 = $P2830."split-option-aliases"($P2831)
    store_lex "@options", $P2832
  if_2825_end:
.annotate 'line', 1955
    find_lex $P2848, "@options"
    unless_null $P2848, vivify_1066
    $P2848 = root_new ['parrot';'ResizablePMCArray']
  vivify_1066:
    defined $I2849, $P2848
    unless $I2849, for_undef_1067
    iter $P2847, $P2848
    new $P2860, 'ExceptionHandler'
    set_label $P2860, loop2859_handler
    $P2860."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2860
  loop2859_test:
    unless $P2847, loop2859_done
    shift $P2850, $P2847
  loop2859_redo:
    .const 'Sub' $P2852 = "250_1303401182.58" 
    capture_lex $P2852
    $P2852($P2850)
  loop2859_next:
    goto loop2859_test
  loop2859_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2861, exception, 'type'
    eq $P2861, .CONTROL_LOOP_NEXT, loop2859_next
    eq $P2861, .CONTROL_LOOP_REDO, loop2859_redo
  loop2859_done:
    pop_eh 
  for_undef_1067:
.annotate 'line', 1944
    .return ($P2847)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2851"  :anon :subid("250_1303401182.58") :outer("249_1303401182.58")
    .param pmc param_2853
.annotate 'line', 1955
    .lex "$_", param_2853
.annotate 'line', 1956
    find_lex $P2854, "$type"
    unless_null $P2854, vivify_1068
    new $P2854, "Undef"
  vivify_1068:
    find_lex $P2855, "$_"
    unless_null $P2855, vivify_1069
    new $P2855, "Undef"
  vivify_1069:
    find_lex $P2856, "self"
    find_lex $P2857, "$?CLASS"
    getattribute $P2858, $P2856, $P2857, "%!options"
    unless_null $P2858, vivify_1070
    $P2858 = root_new ['parrot';'Hash']
    setattribute $P2856, $P2857, "%!options", $P2858
  vivify_1070:
    set $P2858[$P2855], $P2854
.annotate 'line', 1955
    .return ($P2854)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2865
    .param pmc param_2866
.annotate 'line', 1961
    new $P2864, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2864, control_2863
    push_eh $P2864
    .lex "self", param_2865
    .lex "$x", param_2866
.annotate 'line', 1962
    find_lex $P2870, "$x"
    unless_null $P2870, vivify_1071
    new $P2870, "Undef"
  vivify_1071:
    set $S2871, $P2870
    iseq $I2872, $S2871, "-"
    unless $I2872, unless_2869
    new $P2868, 'Integer'
    set $P2868, $I2872
    goto unless_2869_end
  unless_2869:
    find_lex $P2873, "$x"
    unless_null $P2873, vivify_1072
    new $P2873, "Undef"
  vivify_1072:
    set $S2874, $P2873
    iseq $I2875, $S2874, "--"
    new $P2868, 'Integer'
    set $P2868, $I2875
  unless_2869_end:
    unless $P2868, if_2867_end
    new $P2876, "Exception"
    set $P2876['type'], .CONTROL_RETURN
    new $P2877, "Integer"
    assign $P2877, 0
    setattribute $P2876, 'payload', $P2877
    throw $P2876
  if_2867_end:
.annotate 'line', 1963
    find_lex $P2879, "$x"
    unless_null $P2879, vivify_1073
    new $P2879, "Undef"
  vivify_1073:
    set $S2880, $P2879
    substr $S2881, $S2880, 0, 1
    iseq $I2882, $S2881, "-"
    unless $I2882, if_2878_end
    new $P2883, "Exception"
    set $P2883['type'], .CONTROL_RETURN
    new $P2884, "Integer"
    assign $P2884, 1
    setattribute $P2883, 'payload', $P2884
    throw $P2883
  if_2878_end:
.annotate 'line', 1961
    .return (0)
  control_2863:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2885, exception, "payload"
    .return ($P2885)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2887
    .param pmc param_2888
.annotate 'line', 1967
    .lex "self", param_2887
    .lex "$x", param_2888
.annotate 'line', 1968
    new $P2889, "Undef"
    .lex "$spec", $P2889
    find_lex $P2890, "$x"
    unless_null $P2890, vivify_1074
    new $P2890, "Undef"
  vivify_1074:
    find_lex $P2891, "self"
    find_lex $P2892, "$?CLASS"
    getattribute $P2893, $P2891, $P2892, "%!options"
    unless_null $P2893, vivify_1075
    $P2893 = root_new ['parrot';'Hash']
  vivify_1075:
    set $P2894, $P2893[$P2890]
    unless_null $P2894, vivify_1076
    new $P2894, "Undef"
  vivify_1076:
    store_lex "$spec", $P2894
.annotate 'line', 1969
    find_lex $P2895, "$spec"
    unless_null $P2895, vivify_1077
    new $P2895, "Undef"
  vivify_1077:
    set $S2896, $P2895
    iseq $I2897, $S2896, "s"
.annotate 'line', 1967
    .return ($I2897)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303401182.58") :outer("242_1303401182.58")
    .param pmc param_2901
    .param pmc param_2902
.annotate 'line', 1972
    .const 'Sub' $P2989 = "256_1303401182.58" 
    capture_lex $P2989
    .const 'Sub' $P2955 = "255_1303401182.58" 
    capture_lex $P2955
    .const 'Sub' $P2906 = "254_1303401182.58" 
    capture_lex $P2906
    new $P2900, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2900, control_2899
    push_eh $P2900
    .lex "self", param_2901
    .lex "@args", param_2902
.annotate 'line', 1973
    new $P2903, "Undef"
    .lex "$i", $P2903
.annotate 'line', 1974
    new $P2904, "Undef"
    .lex "$arg-count", $P2904
.annotate 'line', 1976
    new $P2905, "Undef"
    .lex "$result", $P2905
.annotate 'line', 1980
    .const 'Sub' $P2906 = "254_1303401182.58" 
    newclosure $P2954, $P2906
    .lex "get-value", $P2954
.annotate 'line', 1995
    .const 'Sub' $P2955 = "255_1303401182.58" 
    newclosure $P2973, $P2955
    .lex "slurp-rest", $P2973
.annotate 'line', 1973
    new $P2974, "Integer"
    assign $P2974, 0
    store_lex "$i", $P2974
.annotate 'line', 1974
    find_lex $P2975, "@args"
    unless_null $P2975, vivify_1103
    $P2975 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $N2976, $P2975
    new $P2977, 'Float'
    set $P2977, $N2976
    store_lex "$arg-count", $P2977
.annotate 'line', 1976
    get_hll_global $P2978, ["HLL";"CommandLine"], "Result"
    $P2979 = $P2978."new"()
    store_lex "$result", $P2979
.annotate 'line', 1977
    find_lex $P2980, "$result"
    unless_null $P2980, vivify_1104
    new $P2980, "Undef"
  vivify_1104:
    $P2980."init"()
    find_lex $P2981, "get-value"
    find_lex $P2982, "slurp-rest"
.annotate 'line', 2003
    new $P3176, 'ExceptionHandler'
    set_label $P3176, loop3175_handler
    $P3176."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3176
  loop3175_test:
    find_lex $P2983, "$i"
    unless_null $P2983, vivify_1105
    new $P2983, "Undef"
  vivify_1105:
    set $N2984, $P2983
    find_lex $P2985, "$arg-count"
    unless_null $P2985, vivify_1106
    new $P2985, "Undef"
  vivify_1106:
    set $N2986, $P2985
    islt $I2987, $N2984, $N2986
    unless $I2987, loop3175_done
  loop3175_redo:
    .const 'Sub' $P2989 = "256_1303401182.58" 
    capture_lex $P2989
    $P2989()
  loop3175_next:
    goto loop3175_test
  loop3175_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3177, exception, 'type'
    eq $P3177, .CONTROL_LOOP_NEXT, loop3175_next
    eq $P3177, .CONTROL_LOOP_REDO, loop3175_redo
  loop3175_done:
    pop_eh 
.annotate 'line', 2055
    new $P3178, "Exception"
    set $P3178['type'], .CONTROL_RETURN
    find_lex $P3179, "$result"
    unless_null $P3179, vivify_1167
    new $P3179, "Undef"
  vivify_1167:
    setattribute $P3178, 'payload', $P3179
    throw $P3178
.annotate 'line', 1972
    .return ()
  control_2899:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3180, exception, "payload"
    .return ($P3180)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303401182.58") :outer("253_1303401182.58")
    .param pmc param_2907
.annotate 'line', 1980
    .lex "$opt", param_2907
.annotate 'line', 1981
    find_lex $P2910, "$i"
    unless_null $P2910, vivify_1078
    new $P2910, "Undef"
  vivify_1078:
    set $N2911, $P2910
    find_lex $P2912, "$arg-count"
    unless_null $P2912, vivify_1079
    new $P2912, "Undef"
  vivify_1079:
    sub $P2913, $P2912, 1
    set $N2914, $P2913
    iseq $I2915, $N2911, $N2914
    if $I2915, if_2909
.annotate 'line', 1983
    find_lex $P2922, "self"
    find_lex $P2923, "$i"
    unless_null $P2923, vivify_1080
    new $P2923, "Undef"
  vivify_1080:
    add $P2924, $P2923, 1
    set $I2925, $P2924
    find_lex $P2926, "@args"
    unless_null $P2926, vivify_1081
    $P2926 = root_new ['parrot';'ResizablePMCArray']
  vivify_1081:
    set $P2927, $P2926[$I2925]
    unless_null $P2927, vivify_1082
    new $P2927, "Undef"
  vivify_1082:
    $P2928 = $P2922."is-option"($P2927)
    if $P2928, if_2921
.annotate 'line', 1985
    find_lex $P2935, "$i"
    unless_null $P2935, vivify_1083
    new $P2935, "Undef"
  vivify_1083:
    add $P2936, $P2935, 1
    set $I2937, $P2936
    find_lex $P2938, "@args"
    unless_null $P2938, vivify_1084
    $P2938 = root_new ['parrot';'ResizablePMCArray']
  vivify_1084:
    set $P2939, $P2938[$I2937]
    unless_null $P2939, vivify_1085
    new $P2939, "Undef"
  vivify_1085:
    find_lex $P2940, "self"
    find_lex $P2941, "$?CLASS"
    getattribute $P2942, $P2940, $P2941, "%!stopper"
    unless_null $P2942, vivify_1086
    $P2942 = root_new ['parrot';'Hash']
  vivify_1086:
    set $P2943, $P2942[$P2939]
    unless_null $P2943, vivify_1087
    new $P2943, "Undef"
  vivify_1087:
    if $P2943, if_2934
.annotate 'line', 1987
    find_lex $P2948, "$i"
    unless_null $P2948, vivify_1088
    new $P2948, "Undef"
  vivify_1088:
    clone $P2949, $P2948
    inc $P2948
    find_lex $P2950, "$i"
    unless_null $P2950, vivify_1089
    new $P2950, "Undef"
  vivify_1089:
    set $I2951, $P2950
    find_lex $P2952, "@args"
    unless_null $P2952, vivify_1090
    $P2952 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P2953, $P2952[$I2951]
    unless_null $P2953, vivify_1091
    new $P2953, "Undef"
  vivify_1091:
    set $P2933, $P2953
.annotate 'line', 1985
    goto if_2934_end
  if_2934:
.annotate 'line', 1986
    new $P2944, 'String'
    set $P2944, "Option "
    find_lex $P2945, "$opt"
    unless_null $P2945, vivify_1092
    new $P2945, "Undef"
  vivify_1092:
    concat $P2946, $P2944, $P2945
    concat $P2947, $P2946, " needs a value, but is followed by a stopper"
    die $P2947
  if_2934_end:
.annotate 'line', 1985
    set $P2920, $P2933
.annotate 'line', 1983
    goto if_2921_end
  if_2921:
.annotate 'line', 1984
    new $P2929, 'String'
    set $P2929, "Option "
    find_lex $P2930, "$opt"
    unless_null $P2930, vivify_1093
    new $P2930, "Undef"
  vivify_1093:
    concat $P2931, $P2929, $P2930
    concat $P2932, $P2931, " needs a value, but is followed by an option"
    die $P2932
  if_2921_end:
.annotate 'line', 1983
    set $P2908, $P2920
.annotate 'line', 1981
    goto if_2909_end
  if_2909:
.annotate 'line', 1982
    new $P2916, 'String'
    set $P2916, "Option "
    find_lex $P2917, "$opt"
    unless_null $P2917, vivify_1094
    new $P2917, "Undef"
  vivify_1094:
    concat $P2918, $P2916, $P2917
    concat $P2919, $P2918, " needs a value"
    die $P2919
  if_2909_end:
.annotate 'line', 1980
    .return ($P2908)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303401182.58") :outer("253_1303401182.58")
.annotate 'line', 1995
    find_lex $P2956, "$i"
    unless_null $P2956, vivify_1095
    new $P2956, "Undef"
  vivify_1095:
    clone $P2957, $P2956
    inc $P2956
.annotate 'line', 1997
    new $P2971, 'ExceptionHandler'
    set_label $P2971, loop2970_handler
    $P2971."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2971
  loop2970_test:
    find_lex $P2958, "$i"
    unless_null $P2958, vivify_1096
    new $P2958, "Undef"
  vivify_1096:
    set $N2959, $P2958
    find_lex $P2960, "$arg-count"
    unless_null $P2960, vivify_1097
    new $P2960, "Undef"
  vivify_1097:
    set $N2961, $P2960
    islt $I2962, $N2959, $N2961
    unless $I2962, loop2970_done
  loop2970_redo:
.annotate 'line', 1998
    find_lex $P2963, "$result"
    unless_null $P2963, vivify_1098
    new $P2963, "Undef"
  vivify_1098:
    find_lex $P2964, "$i"
    unless_null $P2964, vivify_1099
    new $P2964, "Undef"
  vivify_1099:
    set $I2965, $P2964
    find_lex $P2966, "@args"
    unless_null $P2966, vivify_1100
    $P2966 = root_new ['parrot';'ResizablePMCArray']
  vivify_1100:
    set $P2967, $P2966[$I2965]
    unless_null $P2967, vivify_1101
    new $P2967, "Undef"
  vivify_1101:
    $P2963."add-argument"($P2967)
    find_lex $P2968, "$i"
    unless_null $P2968, vivify_1102
    new $P2968, "Undef"
  vivify_1102:
    clone $P2969, $P2968
    inc $P2968
  loop2970_next:
.annotate 'line', 1997
    goto loop2970_test
  loop2970_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2972, exception, 'type'
    eq $P2972, .CONTROL_LOOP_NEXT, loop2970_next
    eq $P2972, .CONTROL_LOOP_REDO, loop2970_redo
  loop2970_done:
    pop_eh 
.annotate 'line', 1995
    .return ($I2962)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2988"  :anon :subid("256_1303401182.58") :outer("253_1303401182.58")
.annotate 'line', 2003
    .const 'Sub' $P3091 = "258_1303401182.58" 
    capture_lex $P3091
    .const 'Sub' $P3005 = "257_1303401182.58" 
    capture_lex $P3005
.annotate 'line', 2004
    new $P2990, "Undef"
    .lex "$cur", $P2990
    find_lex $P2991, "$i"
    unless_null $P2991, vivify_1107
    new $P2991, "Undef"
  vivify_1107:
    set $I2992, $P2991
    find_lex $P2993, "@args"
    unless_null $P2993, vivify_1108
    $P2993 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    set $P2994, $P2993[$I2992]
    unless_null $P2994, vivify_1109
    new $P2994, "Undef"
  vivify_1109:
    store_lex "$cur", $P2994
.annotate 'line', 2005
    find_lex $P2996, "self"
    find_lex $P2997, "$cur"
    unless_null $P2997, vivify_1110
    new $P2997, "Undef"
  vivify_1110:
    $P2998 = $P2996."is-option"($P2997)
    if $P2998, if_2995
.annotate 'line', 2047
    find_lex $P3162, "$cur"
    unless_null $P3162, vivify_1111
    new $P3162, "Undef"
  vivify_1111:
    find_lex $P3163, "self"
    find_lex $P3164, "$?CLASS"
    getattribute $P3165, $P3163, $P3164, "%!stopper"
    unless_null $P3165, vivify_1112
    $P3165 = root_new ['parrot';'Hash']
  vivify_1112:
    set $P3166, $P3165[$P3162]
    unless_null $P3166, vivify_1113
    new $P3166, "Undef"
  vivify_1113:
    if $P3166, if_3161
.annotate 'line', 2050
    find_lex $P3167, "$result"
    unless_null $P3167, vivify_1114
    new $P3167, "Undef"
  vivify_1114:
    find_lex $P3168, "$cur"
    unless_null $P3168, vivify_1115
    new $P3168, "Undef"
  vivify_1115:
    $P3167."add-argument"($P3168)
.annotate 'line', 2051
    find_lex $P3170, "self"
    find_lex $P3171, "$?CLASS"
    getattribute $P3172, $P3170, $P3171, "$!stop-after-first-arg"
    unless_null $P3172, vivify_1116
    new $P3172, "Undef"
  vivify_1116:
    unless $P3172, if_3169_end
    "slurp-rest"()
  if_3169_end:
.annotate 'line', 2049
    goto if_3161_end
  if_3161:
.annotate 'line', 2048
    "slurp-rest"()
  if_3161_end:
.annotate 'line', 2047
    goto if_2995_end
  if_2995:
.annotate 'line', 2006
    find_lex $P3000, "$cur"
    unless_null $P3000, vivify_1117
    new $P3000, "Undef"
  vivify_1117:
    set $S3001, $P3000
    substr $S3002, $S3001, 0, 2
    iseq $I3003, $S3002, "--"
    if $I3003, if_2999
.annotate 'line', 2025
    .const 'Sub' $P3091 = "258_1303401182.58" 
    capture_lex $P3091
    $P3091()
    goto if_2999_end
  if_2999:
.annotate 'line', 2006
    .const 'Sub' $P3005 = "257_1303401182.58" 
    capture_lex $P3005
    $P3005()
  if_2999_end:
  if_2995_end:
.annotate 'line', 2005
    find_lex $P3173, "$i"
    unless_null $P3173, vivify_1166
    new $P3173, "Undef"
  vivify_1166:
    clone $P3174, $P3173
    inc $P3173
.annotate 'line', 2003
    .return ($P3174)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3090"  :anon :subid("258_1303401182.58") :outer("256_1303401182.58")
.annotate 'line', 2025
    .const 'Sub' $P3136 = "259_1303401182.58" 
    capture_lex $P3136
.annotate 'line', 2026
    new $P3092, "Undef"
    .lex "$opt", $P3092
    find_lex $P3093, "$cur"
    unless_null $P3093, vivify_1118
    new $P3093, "Undef"
  vivify_1118:
    set $S3094, $P3093
    substr $S3095, $S3094, 1
    new $P3096, 'String'
    set $P3096, $S3095
    store_lex "$opt", $P3096
.annotate 'line', 2027
    find_lex $P3099, "$opt"
    unless_null $P3099, vivify_1119
    new $P3099, "Undef"
  vivify_1119:
    set $S3100, $P3099
    length $I3101, $S3100
    set $N3102, $I3101
    iseq $I3103, $N3102, 1.0
    if $I3103, if_3098
.annotate 'line', 2037
    .const 'Sub' $P3136 = "259_1303401182.58" 
    capture_lex $P3136
    $P3160 = $P3136()
    set $P3097, $P3160
.annotate 'line', 2027
    goto if_3098_end
  if_3098:
.annotate 'line', 2029
    find_lex $P3105, "$opt"
    unless_null $P3105, vivify_1127
    new $P3105, "Undef"
  vivify_1127:
    find_lex $P3106, "self"
    find_lex $P3107, "$?CLASS"
    getattribute $P3108, $P3106, $P3107, "%!options"
    unless_null $P3108, vivify_1128
    $P3108 = root_new ['parrot';'Hash']
  vivify_1128:
    set $P3109, $P3108[$P3105]
    unless_null $P3109, vivify_1129
    new $P3109, "Undef"
  vivify_1129:
    if $P3109, unless_3104_end
    new $P3110, 'String'
    set $P3110, "No such option -"
    find_lex $P3111, "$opt"
    unless_null $P3111, vivify_1130
    new $P3111, "Undef"
  vivify_1130:
    concat $P3112, $P3110, $P3111
    die $P3112
  unless_3104_end:
.annotate 'line', 2030
    find_lex $P3114, "self"
    find_lex $P3115, "$opt"
    unless_null $P3115, vivify_1131
    new $P3115, "Undef"
  vivify_1131:
    $P3116 = $P3114."wants-value"($P3115)
    if $P3116, if_3113
.annotate 'line', 2034
    find_lex $P3123, "$result"
    unless_null $P3123, vivify_1132
    new $P3123, "Undef"
  vivify_1132:
    find_lex $P3124, "$opt"
    unless_null $P3124, vivify_1133
    new $P3124, "Undef"
  vivify_1133:
    $P3123."add-option"($P3124, 1)
.annotate 'line', 2033
    goto if_3113_end
  if_3113:
.annotate 'line', 2031
    find_lex $P3117, "$result"
    unless_null $P3117, vivify_1134
    new $P3117, "Undef"
  vivify_1134:
    find_lex $P3118, "$opt"
    unless_null $P3118, vivify_1135
    new $P3118, "Undef"
  vivify_1135:
.annotate 'line', 2032
    new $P3119, 'String'
    set $P3119, "-"
    find_lex $P3120, "$opt"
    unless_null $P3120, vivify_1136
    new $P3120, "Undef"
  vivify_1136:
    concat $P3121, $P3119, $P3120
    $P3122 = "get-value"($P3121)
    $P3117."add-option"($P3118, $P3122)
  if_3113_end:
.annotate 'line', 2036
    new $P3127, 'String'
    set $P3127, "-"
    find_lex $P3128, "$opt"
    unless_null $P3128, vivify_1137
    new $P3128, "Undef"
  vivify_1137:
    concat $P3129, $P3127, $P3128
    find_lex $P3130, "self"
    find_lex $P3131, "$?CLASS"
    getattribute $P3132, $P3130, $P3131, "%!stopper"
    unless_null $P3132, vivify_1138
    $P3132 = root_new ['parrot';'Hash']
  vivify_1138:
    set $P3133, $P3132[$P3129]
    unless_null $P3133, vivify_1139
    new $P3133, "Undef"
  vivify_1139:
    if $P3133, if_3126
    set $P3125, $P3133
    goto if_3126_end
  if_3126:
    $P3134 = "slurp-rest"()
    set $P3125, $P3134
  if_3126_end:
.annotate 'line', 2027
    set $P3097, $P3125
  if_3098_end:
.annotate 'line', 2025
    .return ($P3097)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3135"  :anon :subid("259_1303401182.58") :outer("258_1303401182.58")
.annotate 'line', 2037
    .const 'Sub' $P3142 = "260_1303401182.58" 
    capture_lex $P3142
.annotate 'line', 2039
    new $P3137, "Undef"
    .lex "$iter", $P3137
    find_lex $P3138, "$opt"
    unless_null $P3138, vivify_1120
    new $P3138, "Undef"
  vivify_1120:
    iter $P3139, $P3138
    store_lex "$iter", $P3139
.annotate 'line', 2040
    new $P3158, 'ExceptionHandler'
    set_label $P3158, loop3157_handler
    $P3158."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3158
  loop3157_test:
    find_lex $P3140, "$iter"
    unless_null $P3140, vivify_1121
    new $P3140, "Undef"
  vivify_1121:
    unless $P3140, loop3157_done
  loop3157_redo:
    .const 'Sub' $P3142 = "260_1303401182.58" 
    capture_lex $P3142
    $P3142()
  loop3157_next:
    goto loop3157_test
  loop3157_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3159, exception, 'type'
    eq $P3159, .CONTROL_LOOP_NEXT, loop3157_next
    eq $P3159, .CONTROL_LOOP_REDO, loop3157_redo
  loop3157_done:
    pop_eh 
.annotate 'line', 2037
    .return ($P3140)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3141"  :anon :subid("260_1303401182.58") :outer("259_1303401182.58")
.annotate 'line', 2041
    new $P3143, "Undef"
    .lex "$o", $P3143
    find_lex $P3144, "$iter"
    unless_null $P3144, vivify_1122
    new $P3144, "Undef"
  vivify_1122:
    shift $P3145, $P3144
    store_lex "$o", $P3145
.annotate 'line', 2042
    find_lex $P3147, "self"
    find_lex $P3148, "$o"
    unless_null $P3148, vivify_1123
    new $P3148, "Undef"
  vivify_1123:
    $P3149 = $P3147."wants-value"($P3148)
    unless $P3149, if_3146_end
    new $P3150, 'String'
    set $P3150, "Option -"
    find_lex $P3151, "$o"
    unless_null $P3151, vivify_1124
    new $P3151, "Undef"
  vivify_1124:
    concat $P3152, $P3150, $P3151
    concat $P3153, $P3152, " requires a value and cannot be grouped"
    die $P3153
  if_3146_end:
.annotate 'line', 2043
    find_lex $P3154, "$result"
    unless_null $P3154, vivify_1125
    new $P3154, "Undef"
  vivify_1125:
    find_lex $P3155, "$o"
    unless_null $P3155, vivify_1126
    new $P3155, "Undef"
  vivify_1126:
    $P3156 = $P3154."add-option"($P3155, 1)
.annotate 'line', 2040
    .return ($P3156)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3004"  :anon :subid("257_1303401182.58") :outer("256_1303401182.58")
.annotate 'line', 2008
    new $P3006, "Undef"
    .lex "$opt", $P3006
.annotate 'line', 2009
    new $P3007, "Undef"
    .lex "$idx", $P3007
.annotate 'line', 2010
    new $P3008, "Undef"
    .lex "$value", $P3008
.annotate 'line', 2011
    new $P3009, "Undef"
    .lex "$has-value", $P3009
.annotate 'line', 2008
    find_lex $P3010, "$i"
    unless_null $P3010, vivify_1140
    new $P3010, "Undef"
  vivify_1140:
    set $I3011, $P3010
    find_lex $P3012, "@args"
    unless_null $P3012, vivify_1141
    $P3012 = root_new ['parrot';'ResizablePMCArray']
  vivify_1141:
    set $P3013, $P3012[$I3011]
    unless_null $P3013, vivify_1142
    new $P3013, "Undef"
  vivify_1142:
    set $S3014, $P3013
    substr $S3015, $S3014, 2
    new $P3016, 'String'
    set $P3016, $S3015
    store_lex "$opt", $P3016
.annotate 'line', 2009
    find_lex $P3017, "$opt"
    unless_null $P3017, vivify_1143
    new $P3017, "Undef"
  vivify_1143:
    set $S3018, $P3017
    index $I3019, $S3018, "="
    new $P3020, 'Integer'
    set $P3020, $I3019
    store_lex "$idx", $P3020
.annotate 'line', 2010
    new $P3021, "Integer"
    assign $P3021, 1
    store_lex "$value", $P3021
.annotate 'line', 2011
    new $P3022, "Integer"
    assign $P3022, 0
    store_lex "$has-value", $P3022
.annotate 'line', 2013
    find_lex $P3024, "$idx"
    unless_null $P3024, vivify_1144
    new $P3024, "Undef"
  vivify_1144:
    set $N3025, $P3024
    isge $I3026, $N3025, 0.0
    unless $I3026, if_3023_end
.annotate 'line', 2014
    find_lex $P3027, "$opt"
    unless_null $P3027, vivify_1145
    new $P3027, "Undef"
  vivify_1145:
    set $S3028, $P3027
    find_lex $P3029, "$idx"
    unless_null $P3029, vivify_1146
    new $P3029, "Undef"
  vivify_1146:
    add $P3030, $P3029, 1
    set $I3031, $P3030
    substr $S3032, $S3028, $I3031
    new $P3033, 'String'
    set $P3033, $S3032
    store_lex "$value", $P3033
.annotate 'line', 2015
    find_lex $P3034, "$opt"
    unless_null $P3034, vivify_1147
    new $P3034, "Undef"
  vivify_1147:
    set $S3035, $P3034
    find_lex $P3036, "$idx"
    unless_null $P3036, vivify_1148
    new $P3036, "Undef"
  vivify_1148:
    set $I3037, $P3036
    substr $S3038, $S3035, 0, $I3037
    new $P3039, 'String'
    set $P3039, $S3038
    store_lex "$opt", $P3039
.annotate 'line', 2016
    new $P3040, "Integer"
    assign $P3040, 1
    store_lex "$has-value", $P3040
  if_3023_end:
.annotate 'line', 2018
    find_lex $P3045, "$opt"
    unless_null $P3045, vivify_1149
    new $P3045, "Undef"
  vivify_1149:
    find_lex $P3042, "self"
    find_lex $P3043, "$?CLASS"
    getattribute $P3044, $P3042, $P3043, "%!options"
    unless_null $P3044, vivify_1150
    $P3044 = root_new ['parrot';'Hash']
  vivify_1150:
    exists $I3046, $P3044[$P3045]
    if $I3046, unless_3041_end
    new $P3047, 'String'
    set $P3047, "Illegal option --"
    find_lex $P3048, "$opt"
    unless_null $P3048, vivify_1151
    new $P3048, "Undef"
  vivify_1151:
    concat $P3049, $P3047, $P3048
    die $P3049
  unless_3041_end:
.annotate 'line', 2019
    find_lex $P3053, "$opt"
    unless_null $P3053, vivify_1152
    new $P3053, "Undef"
  vivify_1152:
    find_lex $P3054, "self"
    find_lex $P3055, "$?CLASS"
    getattribute $P3056, $P3054, $P3055, "%!options"
    unless_null $P3056, vivify_1153
    $P3056 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P3057, $P3056[$P3053]
    unless_null $P3057, vivify_1154
    new $P3057, "Undef"
  vivify_1154:
    set $S3058, $P3057
    isne $I3059, $S3058, "s"
    if $I3059, if_3052
    new $P3051, 'Integer'
    set $P3051, $I3059
    goto if_3052_end
  if_3052:
    find_lex $P3060, "$has-value"
    unless_null $P3060, vivify_1155
    new $P3060, "Undef"
  vivify_1155:
    set $P3051, $P3060
  if_3052_end:
    unless $P3051, if_3050_end
    new $P3061, 'String'
    set $P3061, "Option --"
    find_lex $P3062, "$opt"
    unless_null $P3062, vivify_1156
    new $P3062, "Undef"
  vivify_1156:
    concat $P3063, $P3061, $P3062
    concat $P3064, $P3063, " does not allow a value"
    die $P3064
  if_3050_end:
.annotate 'line', 2020
    find_lex $P3068, "$has-value"
    unless_null $P3068, vivify_1157
    new $P3068, "Undef"
  vivify_1157:
    isfalse $I3069, $P3068
    if $I3069, if_3067
    new $P3066, 'Integer'
    set $P3066, $I3069
    goto if_3067_end
  if_3067:
    find_lex $P3070, "self"
    find_lex $P3071, "$opt"
    unless_null $P3071, vivify_1158
    new $P3071, "Undef"
  vivify_1158:
    $P3072 = $P3070."wants-value"($P3071)
    set $P3066, $P3072
  if_3067_end:
    unless $P3066, if_3065_end
.annotate 'line', 2021
    new $P3073, 'String'
    set $P3073, "--"
    find_lex $P3074, "$opt"
    unless_null $P3074, vivify_1159
    new $P3074, "Undef"
  vivify_1159:
    concat $P3075, $P3073, $P3074
    $P3076 = "get-value"($P3075)
    store_lex "$value", $P3076
  if_3065_end:
.annotate 'line', 2023
    find_lex $P3077, "$result"
    unless_null $P3077, vivify_1160
    new $P3077, "Undef"
  vivify_1160:
    find_lex $P3078, "$opt"
    unless_null $P3078, vivify_1161
    new $P3078, "Undef"
  vivify_1161:
    find_lex $P3079, "$value"
    unless_null $P3079, vivify_1162
    new $P3079, "Undef"
  vivify_1162:
    $P3077."add-option"($P3078, $P3079)
.annotate 'line', 2024
    new $P3082, 'String'
    set $P3082, "--"
    find_lex $P3083, "$opt"
    unless_null $P3083, vivify_1163
    new $P3083, "Undef"
  vivify_1163:
    concat $P3084, $P3082, $P3083
    find_lex $P3085, "self"
    find_lex $P3086, "$?CLASS"
    getattribute $P3087, $P3085, $P3086, "%!stopper"
    unless_null $P3087, vivify_1164
    $P3087 = root_new ['parrot';'Hash']
  vivify_1164:
    set $P3088, $P3087[$P3084]
    unless_null $P3088, vivify_1165
    new $P3088, "Undef"
  vivify_1165:
    if $P3088, if_3081
    set $P3080, $P3088
    goto if_3081_end
  if_3081:
    find_lex $P3089, "slurp-rest"
    set $P3080, $P3089
  if_3081_end:
.annotate 'line', 2006
    .return ($P3080)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3219"  :subid("262_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 2090
    .const 'Sub' $P3235 = "265_1303401182.58" 
    capture_lex $P3235
    .const 'Sub' $P3228 = "264_1303401182.58" 
    capture_lex $P3228
    .const 'Sub' $P3223 = "263_1303401182.58" 
    capture_lex $P3223
    .lex "$?PACKAGE", $P3221
    .lex "$?CLASS", $P3222
.annotate 'line', 2097
    .const 'Sub' $P3228 = "264_1303401182.58" 
    newclosure $P3233, $P3228
.annotate 'line', 2090
    .return ($P3233)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post1168") :outer("262_1303401182.58")
.annotate 'line', 2090
    get_hll_global $P3220, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3219" 
    .local pmc block
    set block, $P3220
    .const 'Sub' $P3235 = "265_1303401182.58" 
    capture_lex $P3235
    $P3235()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3234"  :anon :subid("265_1303401182.58") :outer("262_1303401182.58")
.annotate 'line', 2090
    nqp_get_sc_object $P3236, "1303401174.917", 6
    .local pmc type_obj
    set type_obj, $P3236
    get_how $P3237, type_obj
    get_hll_global $P3238, "NQPAttribute"
    $P3239 = $P3238."new"("$!deserialize_past" :named("name"))
    $P3237."add_attribute"(type_obj, $P3239)
    get_how $P3240, type_obj
    .const 'Sub' $P3241 = "263_1303401182.58" 
    $P3240."add_method"(type_obj, "deserialize_past", $P3241)
    get_how $P3242, type_obj
    get_hll_global $P3243, "NQPAttribute"
    $P3244 = $P3243."new"("$!fixup_past" :named("name"))
    $P3242."add_attribute"(type_obj, $P3244)
    get_how $P3245, type_obj
    .const 'Sub' $P3246 = "264_1303401182.58" 
    $P3245."add_method"(type_obj, "fixup_past", $P3246)
    get_how $P3247, type_obj
    get_hll_global $P3248, "NQPMu"
    $P3247."set_default_parent"(type_obj, $P3248)
    get_how $P3249, type_obj
    $P3250 = $P3249."compose"(type_obj)
    .return ($P3250)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("263_1303401182.58") :outer("262_1303401182.58")
    .param pmc param_3224
.annotate 'line', 2093
    .lex "self", param_3224
    find_lex $P3225, "self"
    find_lex $P3226, "$?CLASS"
    getattribute $P3227, $P3225, $P3226, "$!deserialize_past"
    unless_null $P3227, vivify_1169
    new $P3227, "Undef"
  vivify_1169:
    .return ($P3227)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("264_1303401182.58") :outer("262_1303401182.58")
    .param pmc param_3229
.annotate 'line', 2097
    .lex "self", param_3229
    find_lex $P3230, "self"
    find_lex $P3231, "$?CLASS"
    getattribute $P3232, $P3230, $P3231, "$!fixup_past"
    unless_null $P3232, vivify_1170
    new $P3232, "Undef"
  vivify_1170:
    .return ($P3232)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3251"  :subid("266_1303401182.58") :outer("10_1303401182.58")
.annotate 'line', 2100
    .const 'Sub' $P3788 = "291_1303401182.58" 
    capture_lex $P3788
    .const 'Sub' $P3714 = "289_1303401182.58" 
    capture_lex $P3714
    .const 'Sub' $P3709 = "288_1303401182.58" 
    capture_lex $P3709
    .const 'Sub' $P3692 = "287_1303401182.58" 
    capture_lex $P3692
    .const 'Sub' $P3666 = "286_1303401182.58" 
    capture_lex $P3666
    .const 'Sub' $P3660 = "285_1303401182.58" 
    capture_lex $P3660
    .const 'Sub' $P3591 = "284_1303401182.58" 
    capture_lex $P3591
    .const 'Sub' $P3552 = "283_1303401182.58" 
    capture_lex $P3552
    .const 'Sub' $P3469 = "280_1303401182.58" 
    capture_lex $P3469
    .const 'Sub' $P3448 = "279_1303401182.58" 
    capture_lex $P3448
    .const 'Sub' $P3415 = "277_1303401182.58" 
    capture_lex $P3415
    .const 'Sub' $P3381 = "276_1303401182.58" 
    capture_lex $P3381
    .const 'Sub' $P3367 = "275_1303401182.58" 
    capture_lex $P3367
    .const 'Sub' $P3342 = "274_1303401182.58" 
    capture_lex $P3342
    .const 'Sub' $P3334 = "273_1303401182.58" 
    capture_lex $P3334
    .const 'Sub' $P3319 = "272_1303401182.58" 
    capture_lex $P3319
    .const 'Sub' $P3302 = "271_1303401182.58" 
    capture_lex $P3302
    .const 'Sub' $P3288 = "270_1303401182.58" 
    capture_lex $P3288
    .const 'Sub' $P3270 = "269_1303401182.58" 
    capture_lex $P3270
    .const 'Sub' $P3261 = "268_1303401182.58" 
    capture_lex $P3261
    .const 'Sub' $P3253 = "267_1303401182.58" 
    capture_lex $P3253
.annotate 'line', 2110
    .const 'Sub' $P3253 = "267_1303401182.58" 
    newclosure $P3257, $P3253
    .lex "addr", $P3257
.annotate 'line', 2100
    .lex "$?PACKAGE", $P3258
    .lex "$?CLASS", $P3259
    find_lex $P3260, "addr"
.annotate 'line', 2400
    .const 'Sub' $P3714 = "289_1303401182.58" 
    newclosure $P3786, $P3714
.annotate 'line', 2100
    .return ($P3786)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1171") :outer("266_1303401182.58")
.annotate 'line', 2100
    get_hll_global $P3252, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3251" 
    .local pmc block
    set block, $P3252
    .const 'Sub' $P3788 = "291_1303401182.58" 
    capture_lex $P3788
    $P3788()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3787"  :anon :subid("291_1303401182.58") :outer("266_1303401182.58")
.annotate 'line', 2100
    nqp_get_sc_object $P3789, "1303401174.917", 7
    .local pmc type_obj
    set type_obj, $P3789
    get_how $P3790, type_obj
    get_hll_global $P3791, "NQPAttribute"
    $P3792 = $P3791."new"("$!sc" :named("name"))
    $P3790."add_attribute"(type_obj, $P3792)
    get_how $P3793, type_obj
    get_hll_global $P3794, "NQPAttribute"
    $P3795 = $P3794."new"("$!handle" :named("name"))
    $P3793."add_attribute"(type_obj, $P3795)
    get_how $P3796, type_obj
    get_hll_global $P3797, "NQPAttribute"
    $P3798 = $P3797."new"("%!addr_to_slot" :named("name"))
    $P3796."add_attribute"(type_obj, $P3798)
    get_how $P3799, type_obj
    get_hll_global $P3800, "NQPAttribute"
    $P3801 = $P3800."new"("@!event_stream" :named("name"))
    $P3799."add_attribute"(type_obj, $P3801)
    get_how $P3802, type_obj
    .const 'Sub' $P3803 = "268_1303401182.58" 
    $P3802."add_method"(type_obj, "new", $P3803)
    get_how $P3804, type_obj
    .const 'Sub' $P3805 = "269_1303401182.58" 
    $P3804."add_method"(type_obj, "BUILD", $P3805)
    get_how $P3806, type_obj
    .const 'Sub' $P3807 = "270_1303401182.58" 
    $P3806."add_method"(type_obj, "slot_for_object", $P3807)
    get_how $P3808, type_obj
    .const 'Sub' $P3809 = "271_1303401182.58" 
    $P3808."add_method"(type_obj, "get_slot_past_for_object", $P3809)
    get_how $P3810, type_obj
    .const 'Sub' $P3811 = "272_1303401182.58" 
    $P3810."add_method"(type_obj, "set_slot_past", $P3811)
    get_how $P3812, type_obj
    .const 'Sub' $P3813 = "273_1303401182.58" 
    $P3812."add_method"(type_obj, "set_cur_sc", $P3813)
    get_how $P3814, type_obj
    .const 'Sub' $P3815 = "274_1303401182.58" 
    $P3814."add_method"(type_obj, "add_object", $P3815)
    get_how $P3816, type_obj
    .const 'Sub' $P3817 = "275_1303401182.58" 
    $P3816."add_method"(type_obj, "add_event", $P3817)
    get_how $P3818, type_obj
    .const 'Sub' $P3819 = "276_1303401182.58" 
    $P3818."add_method"(type_obj, "get_object_sc_ref_past", $P3819)
    get_how $P3820, type_obj
    .const 'Sub' $P3821 = "277_1303401182.58" 
    $P3820."add_method"(type_obj, "load_setting", $P3821)
    get_how $P3822, type_obj
    .const 'Sub' $P3823 = "279_1303401182.58" 
    $P3822."add_method"(type_obj, "load_module", $P3823)
    get_how $P3824, type_obj
    .const 'Sub' $P3825 = "280_1303401182.58" 
    $P3824."add_method"(type_obj, "install_package_symbol", $P3825)
    get_how $P3826, type_obj
    .const 'Sub' $P3827 = "283_1303401182.58" 
    $P3826."add_method"(type_obj, "install_lexical_symbol", $P3827)
    get_how $P3828, type_obj
    .const 'Sub' $P3829 = "284_1303401182.58" 
    $P3828."add_method"(type_obj, "pkg_create_mo", $P3829)
    get_how $P3830, type_obj
    .const 'Sub' $P3831 = "285_1303401182.58" 
    $P3830."add_method"(type_obj, "pkg_add_method", $P3831)
    get_how $P3832, type_obj
    .const 'Sub' $P3833 = "286_1303401182.58" 
    $P3832."add_method"(type_obj, "pkg_add_parent_or_role", $P3833)
    get_how $P3834, type_obj
    .const 'Sub' $P3835 = "287_1303401182.58" 
    $P3834."add_method"(type_obj, "pkg_compose", $P3835)
    get_how $P3836, type_obj
    .const 'Sub' $P3837 = "288_1303401182.58" 
    $P3836."add_method"(type_obj, "sc", $P3837)
    get_how $P3838, type_obj
    .const 'Sub' $P3839 = "289_1303401182.58" 
    $P3838."add_method"(type_obj, "to_past", $P3839)
    get_how $P3840, type_obj
    get_hll_global $P3841, "NQPMu"
    $P3840."set_default_parent"(type_obj, $P3841)
    get_how $P3842, type_obj
    $P3843 = $P3842."compose"(type_obj)
    .return ($P3843)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("267_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3254
.annotate 'line', 2110
    .lex "$obj", param_3254
.annotate 'line', 2111
    find_lex $P3255, "$obj"
    unless_null $P3255, vivify_1172
    new $P3255, "Undef"
  vivify_1172:
    get_addr $I3256, $P3255
.annotate 'line', 2110
    .return ($I3256)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3262
    .param pmc param_3263 :named("handle")
.annotate 'line', 2118
    .lex "self", param_3262
    .lex "$handle", param_3263
.annotate 'line', 2119
    new $P3264, "Undef"
    .lex "$obj", $P3264
    find_lex $P3265, "self"
    $P3266 = $P3265."CREATE"()
    store_lex "$obj", $P3266
.annotate 'line', 2120
    find_lex $P3267, "$obj"
    unless_null $P3267, vivify_1173
    new $P3267, "Undef"
  vivify_1173:
    find_lex $P3268, "$handle"
    unless_null $P3268, vivify_1174
    new $P3268, "Undef"
  vivify_1174:
    $P3267."BUILD"($P3268 :named("handle"))
    find_lex $P3269, "$obj"
    unless_null $P3269, vivify_1175
    new $P3269, "Undef"
  vivify_1175:
.annotate 'line', 2118
    .return ($P3269)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3271
    .param pmc param_3272 :optional :named("handle")
    .param int has_param_3272 :opt_flag
.annotate 'line', 2124
    .lex "self", param_3271
    if has_param_3272, optparam_1176
    new $P3273, "Undef"
    set param_3272, $P3273
  optparam_1176:
    .lex "$handle", param_3272
.annotate 'line', 2125
    find_lex $P3274, "$handle"
    unless_null $P3274, vivify_1177
    new $P3274, "Undef"
  vivify_1177:
    set $S3275, $P3274
    nqp_create_sc $P3276, $S3275
    find_lex $P3277, "self"
    find_lex $P3278, "$?CLASS"
    setattribute $P3277, $P3278, "$!sc", $P3276
.annotate 'line', 2126
    find_lex $P3279, "$handle"
    unless_null $P3279, vivify_1178
    new $P3279, "Undef"
  vivify_1178:
    find_lex $P3280, "self"
    find_lex $P3281, "$?CLASS"
    setattribute $P3280, $P3281, "$!handle", $P3279
.annotate 'line', 2127
    new $P3282, "Hash"
    find_lex $P3283, "self"
    find_lex $P3284, "$?CLASS"
    setattribute $P3283, $P3284, "%!addr_to_slot", $P3282
.annotate 'line', 2128
    new $P3285, "ResizablePMCArray"
    find_lex $P3286, "self"
    find_lex $P3287, "$?CLASS"
    setattribute $P3286, $P3287, "@!event_stream", $P3285
.annotate 'line', 2124
    .return ($P3285)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3289
    .param pmc param_3290
.annotate 'line', 2132
    .lex "self", param_3289
    .lex "$obj", param_3290
.annotate 'line', 2133
    new $P3291, "Undef"
    .lex "$slot", $P3291
    find_lex $P3292, "$obj"
    unless_null $P3292, vivify_1179
    new $P3292, "Undef"
  vivify_1179:
    $P3293 = "addr"($P3292)
    find_lex $P3294, "self"
    find_lex $P3295, "$?CLASS"
    getattribute $P3296, $P3294, $P3295, "%!addr_to_slot"
    unless_null $P3296, vivify_1180
    $P3296 = root_new ['parrot';'Hash']
  vivify_1180:
    set $P3297, $P3296[$P3293]
    unless_null $P3297, vivify_1181
    new $P3297, "Undef"
  vivify_1181:
    store_lex "$slot", $P3297
.annotate 'line', 2134
    find_lex $P3299, "$slot"
    unless_null $P3299, vivify_1182
    new $P3299, "Undef"
  vivify_1182:
    defined $I3300, $P3299
    if $I3300, unless_3298_end
.annotate 'line', 2135
    die "slot_for_object called on object not in context"
  unless_3298_end:
.annotate 'line', 2134
    find_lex $P3301, "$slot"
    unless_null $P3301, vivify_1183
    new $P3301, "Undef"
  vivify_1183:
.annotate 'line', 2132
    .return ($P3301)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3305
    .param pmc param_3306
.annotate 'line', 2144
    new $P3304, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3304, control_3303
    push_eh $P3304
    .lex "self", param_3305
    .lex "$obj", param_3306
.annotate 'line', 2145
    new $P3307, "Undef"
    .lex "$slot", $P3307
    find_lex $P3308, "self"
    find_lex $P3309, "$obj"
    unless_null $P3309, vivify_1184
    new $P3309, "Undef"
  vivify_1184:
    $P3310 = $P3308."slot_for_object"($P3309)
    store_lex "$slot", $P3310
.annotate 'line', 2146
    new $P3311, "Exception"
    set $P3311['type'], .CONTROL_RETURN
    get_hll_global $P3312, ["PAST"], "Op"
    find_lex $P3313, "self"
    find_lex $P3314, "$?CLASS"
    getattribute $P3315, $P3313, $P3314, "$!handle"
    unless_null $P3315, vivify_1185
    new $P3315, "Undef"
  vivify_1185:
    find_lex $P3316, "$slot"
    unless_null $P3316, vivify_1186
    new $P3316, "Undef"
  vivify_1186:
    $P3317 = $P3312."new"($P3315, $P3316, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3311, 'payload', $P3317
    throw $P3311
.annotate 'line', 2144
    .return ()
  control_3303:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3318, exception, "payload"
    .return ($P3318)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3322
    .param pmc param_3323
    .param pmc param_3324
.annotate 'line', 2150
    new $P3321, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3321, control_3320
    push_eh $P3321
    .lex "self", param_3322
    .lex "$slot", param_3323
    .lex "$past_to_set", param_3324
.annotate 'line', 2151
    new $P3325, "Exception"
    set $P3325['type'], .CONTROL_RETURN
    get_hll_global $P3326, ["PAST"], "Op"
    find_lex $P3327, "self"
    find_lex $P3328, "$?CLASS"
    getattribute $P3329, $P3327, $P3328, "$!handle"
    unless_null $P3329, vivify_1187
    new $P3329, "Undef"
  vivify_1187:
    find_lex $P3330, "$slot"
    unless_null $P3330, vivify_1188
    new $P3330, "Undef"
  vivify_1188:
    find_lex $P3331, "$past_to_set"
    unless_null $P3331, vivify_1189
    new $P3331, "Undef"
  vivify_1189:
    $P3332 = $P3326."new"($P3329, $P3330, $P3331, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3325, 'payload', $P3332
    throw $P3325
.annotate 'line', 2150
    .return ()
  control_3320:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3333, exception, "payload"
    .return ($P3333)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3335
    .param pmc param_3336
.annotate 'line', 2157
    .lex "self", param_3335
    .lex "$to_wrap", param_3336
.annotate 'line', 2158
    get_hll_global $P3337, ["PAST"], "Op"
    find_lex $P3338, "$to_wrap"
    unless_null $P3338, vivify_1190
    new $P3338, "Undef"
  vivify_1190:
.annotate 'line', 2161
    get_hll_global $P3339, ["PAST"], "Var"
    $P3340 = $P3339."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3341 = $P3337."new"($P3338, $P3340, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2157
    .return ($P3341)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3343
    .param pmc param_3344
.annotate 'line', 2166
    .lex "self", param_3343
    .lex "$obj", param_3344
.annotate 'line', 2168
    new $P3345, "Undef"
    .lex "$idx", $P3345
.annotate 'line', 2167
    find_lex $P3346, "$obj"
    unless_null $P3346, vivify_1191
    new $P3346, "Undef"
  vivify_1191:
    find_lex $P3347, "self"
    find_lex $P3348, "$?CLASS"
    getattribute $P3349, $P3347, $P3348, "$!sc"
    unless_null $P3349, vivify_1192
    new $P3349, "Undef"
  vivify_1192:
    nqp_set_sc_for_object $P3346, $P3349
.annotate 'line', 2168
    find_lex $P3350, "self"
    find_lex $P3351, "$?CLASS"
    getattribute $P3352, $P3350, $P3351, "$!sc"
    unless_null $P3352, vivify_1193
    new $P3352, "Undef"
  vivify_1193:
    $P3353 = $P3352."elems"()
    store_lex "$idx", $P3353
.annotate 'line', 2169
    find_lex $P3354, "$obj"
    unless_null $P3354, vivify_1194
    new $P3354, "Undef"
  vivify_1194:
    find_lex $P3355, "$idx"
    unless_null $P3355, vivify_1195
    new $P3355, "Undef"
  vivify_1195:
    set $I3356, $P3355
    find_lex $P3357, "self"
    find_lex $P3358, "$?CLASS"
    getattribute $P3359, $P3357, $P3358, "$!sc"
    unless_null $P3359, vivify_1196
    $P3359 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3357, $P3358, "$!sc", $P3359
  vivify_1196:
    set $P3359[$I3356], $P3354
.annotate 'line', 2170
    find_lex $P3360, "$idx"
    unless_null $P3360, vivify_1197
    new $P3360, "Undef"
  vivify_1197:
    find_lex $P3361, "$obj"
    unless_null $P3361, vivify_1198
    new $P3361, "Undef"
  vivify_1198:
    $P3362 = "addr"($P3361)
    find_lex $P3363, "self"
    find_lex $P3364, "$?CLASS"
    getattribute $P3365, $P3363, $P3364, "%!addr_to_slot"
    unless_null $P3365, vivify_1199
    $P3365 = root_new ['parrot';'Hash']
    setattribute $P3363, $P3364, "%!addr_to_slot", $P3365
  vivify_1199:
    set $P3365[$P3362], $P3360
    find_lex $P3366, "$idx"
    unless_null $P3366, vivify_1200
    new $P3366, "Undef"
  vivify_1200:
.annotate 'line', 2166
    .return ($P3366)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3368
    .param pmc param_3369 :optional :named("deserialize_past")
    .param int has_param_3369 :opt_flag
    .param pmc param_3371 :optional :named("fixup_past")
    .param int has_param_3371 :opt_flag
.annotate 'line', 2175
    .lex "self", param_3368
    if has_param_3369, optparam_1201
    new $P3370, "Undef"
    set param_3369, $P3370
  optparam_1201:
    .lex "$deserialize_past", param_3369
    if has_param_3371, optparam_1202
    new $P3372, "Undef"
    set param_3371, $P3372
  optparam_1202:
    .lex "$fixup_past", param_3371
.annotate 'line', 2176
    find_lex $P3373, "self"
    find_lex $P3374, "$?CLASS"
    getattribute $P3375, $P3373, $P3374, "@!event_stream"
    unless_null $P3375, vivify_1203
    $P3375 = root_new ['parrot';'ResizablePMCArray']
  vivify_1203:
    get_hll_global $P3376, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3377, "$deserialize_past"
    unless_null $P3377, vivify_1204
    new $P3377, "Undef"
  vivify_1204:
    find_lex $P3378, "$fixup_past"
    unless_null $P3378, vivify_1205
    new $P3378, "Undef"
  vivify_1205:
    $P3379 = $P3376."new"($P3377 :named("deserialize_past"), $P3378 :named("fixup_past"))
    $P3380 = $P3375."push"($P3379)
.annotate 'line', 2175
    .return ($P3380)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3382
    .param pmc param_3383
.annotate 'line', 2183
    .lex "self", param_3382
    .lex "$obj", param_3383
.annotate 'line', 2186
    new $P3384, "Undef"
    .lex "$sc", $P3384
    find_lex $P3385, "$obj"
    unless_null $P3385, vivify_1206
    new $P3385, "Undef"
  vivify_1206:
    nqp_get_sc_for_object $P3386, $P3385
    store_lex "$sc", $P3386
.annotate 'line', 2187
    find_lex $P3388, "$sc"
    unless_null $P3388, vivify_1207
    new $P3388, "Undef"
  vivify_1207:
    isnull $I3389, $P3388
    unless $I3389, if_3387_end
.annotate 'line', 2188
    new $P3390, "String"
    assign $P3390, "Object of type '"
    find_lex $P3391, "$obj"
    unless_null $P3391, vivify_1208
    new $P3391, "Undef"
  vivify_1208:
    get_how $P3392, $P3391
    find_lex $P3393, "$obj"
    unless_null $P3393, vivify_1209
    new $P3393, "Undef"
  vivify_1209:
    $S3394 = $P3392."name"($P3393)
    concat $P3395, $P3390, $S3394
    concat $P3396, $P3395, "' cannot be referenced without having been "
    concat $P3397, $P3396, "assigned a serialization context"
.annotate 'line', 2189
    die $P3397
  if_3387_end:
.annotate 'line', 2195
    find_lex $P3400, "$sc"
    unless_null $P3400, vivify_1210
    new $P3400, "Undef"
  vivify_1210:
    find_lex $P3401, "self"
    find_lex $P3402, "$?CLASS"
    getattribute $P3403, $P3401, $P3402, "$!sc"
    unless_null $P3403, vivify_1211
    new $P3403, "Undef"
  vivify_1211:
    issame $I3404, $P3400, $P3403
    if $I3404, if_3399
.annotate 'line', 2199
    get_hll_global $P3408, ["PAST"], "Op"
.annotate 'line', 2200
    find_lex $P3409, "$sc"
    unless_null $P3409, vivify_1212
    new $P3409, "Undef"
  vivify_1212:
    $P3410 = $P3409."handle"()
    find_lex $P3411, "$sc"
    unless_null $P3411, vivify_1213
    new $P3411, "Undef"
  vivify_1213:
    find_lex $P3412, "$obj"
    unless_null $P3412, vivify_1214
    new $P3412, "Undef"
  vivify_1214:
    $P3413 = $P3411."slot_index_for"($P3412)
    $P3414 = $P3408."new"($P3410, $P3413, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2198
    set $P3398, $P3414
.annotate 'line', 2195
    goto if_3399_end
  if_3399:
.annotate 'line', 2196
    find_lex $P3405, "self"
    find_lex $P3406, "$obj"
    unless_null $P3406, vivify_1215
    new $P3406, "Undef"
  vivify_1215:
    $P3407 = $P3405."get_slot_past_for_object"($P3406)
.annotate 'line', 2195
    set $P3398, $P3407
  if_3399_end:
.annotate 'line', 2183
    .return ($P3398)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("277_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3416
    .param pmc param_3417
.annotate 'line', 2206
    .const 'Sub' $P3424 = "278_1303401182.58" 
    capture_lex $P3424
    .lex "self", param_3416
    .lex "$setting_name", param_3417
.annotate 'line', 2208
    find_lex $P3420, "$setting_name"
    unless_null $P3420, vivify_1216
    new $P3420, "Undef"
  vivify_1216:
    set $S3421, $P3420
    isne $I3422, $S3421, "NULL"
    if $I3422, if_3419
    new $P3418, 'Integer'
    set $P3418, $I3422
    goto if_3419_end
  if_3419:
    .const 'Sub' $P3424 = "278_1303401182.58" 
    capture_lex $P3424
    $P3447 = $P3424()
    set $P3418, $P3447
  if_3419_end:
.annotate 'line', 2206
    .return ($P3418)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3423"  :anon :subid("278_1303401182.58") :outer("277_1303401182.58")
.annotate 'line', 2215
    new $P3425, "Undef"
    .lex "$load_past", $P3425
.annotate 'line', 2212
    get_hll_global $P3426, ["HLL"], "SettingManager"
    find_lex $P3427, "$setting_name"
    unless_null $P3427, vivify_1217
    new $P3427, "Undef"
  vivify_1217:
    $P3428 = $P3426."load_setting"($P3427)
    find_dynamic_lex $P3429, "%*COMPILING"
    unless_null $P3429, vivify_1218
    get_hll_global $P3429, "%COMPILING"
    unless_null $P3429, vivify_1219
    die "Contextual %*COMPILING not found"
  vivify_1219:
    store_dynamic_lex "%*COMPILING", $P3429
  vivify_1218:
    set $P3430, $P3429["%?OPTIONS"]
    unless_null $P3430, vivify_1220
    $P3430 = root_new ['parrot';'Hash']
    set $P3429["%?OPTIONS"], $P3430
  vivify_1220:
    set $P3430["outer_ctx"], $P3428
.annotate 'line', 2215
    get_hll_global $P3431, ["PAST"], "Stmts"
.annotate 'line', 2216
    get_hll_global $P3432, ["PAST"], "Op"
    $P3433 = $P3432."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2219
    get_hll_global $P3434, ["PAST"], "Op"
.annotate 'line', 2221
    get_hll_global $P3435, ["PAST"], "Var"
    $P3436 = $P3435."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2222
    get_hll_global $P3437, ["PAST"], "Op"
.annotate 'line', 2224
    get_hll_global $P3438, ["PAST"], "Var"
    $P3439 = $P3438."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P3440, "$setting_name"
    unless_null $P3440, vivify_1221
    new $P3440, "Undef"
  vivify_1221:
    $P3441 = $P3437."new"($P3439, $P3440, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2222
    $P3442 = $P3434."new"($P3436, $P3441, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2219
    $P3443 = $P3431."new"($P3433, $P3442)
.annotate 'line', 2215
    store_lex "$load_past", $P3443
.annotate 'line', 2229
    find_lex $P3444, "self"
    find_lex $P3445, "$load_past"
    unless_null $P3445, vivify_1222
    new $P3445, "Undef"
  vivify_1222:
    $P3446 = $P3444."add_event"($P3445 :named("deserialize_past"))
.annotate 'line', 2208
    .return ($P3446)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("279_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3449
    .param pmc param_3450
.annotate 'line', 2235
    .lex "self", param_3449
    .lex "$module_name", param_3450
.annotate 'line', 2237
    new $P3451, "Undef"
    .lex "$*MAIN_CTX", $P3451
.annotate 'line', 2238
    new $P3452, "Undef"
    .lex "$*CTXSAVE", $P3452
.annotate 'line', 2239
    new $P3453, "Undef"
    .lex "$path", $P3453
.annotate 'line', 2235
    find_lex $P3454, "$*MAIN_CTX"
    unless_null $P3454, vivify_1223
    get_hll_global $P3454, "$MAIN_CTX"
    unless_null $P3454, vivify_1224
    die "Contextual $*MAIN_CTX not found"
  vivify_1224:
  vivify_1223:
.annotate 'line', 2238
    get_hll_global $P3455, ["HLL"], "Compiler"
    store_lex "$*CTXSAVE", $P3455
.annotate 'line', 2239
    find_lex $P3456, "$module_name"
    unless_null $P3456, vivify_1225
    new $P3456, "Undef"
  vivify_1225:
    set $S3457, $P3456
    split $P3458, "::", $S3457
    join $S3459, "/", $P3458
    new $P3460, 'String'
    set $P3460, $S3459
    concat $P3461, $P3460, ".pbc"
    store_lex "$path", $P3461
.annotate 'line', 2240
    find_lex $P3462, "$path"
    unless_null $P3462, vivify_1226
    new $P3462, "Undef"
  vivify_1226:
    set $S3463, $P3462
    load_bytecode $S3463
.annotate 'line', 2243
    find_lex $P3464, "self"
.annotate 'line', 2244
    get_hll_global $P3465, ["PAST"], "Op"
    find_lex $P3466, "$path"
    unless_null $P3466, vivify_1227
    new $P3466, "Undef"
  vivify_1227:
    $P3467 = $P3465."new"($P3466, "load_bytecode vs" :named("pirop"))
    $P3464."add_event"($P3467 :named("deserialize_past"))
.annotate 'line', 2243
    find_lex $P3468, "$*MAIN_CTX"
    unless_null $P3468, vivify_1228
    get_hll_global $P3468, "$MAIN_CTX"
    unless_null $P3468, vivify_1229
    die "Contextual $*MAIN_CTX not found"
  vivify_1229:
  vivify_1228:
.annotate 'line', 2235
    .return ($P3468)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3470
    .param pmc param_3471
    .param pmc param_3472
    .param pmc param_3473
.annotate 'line', 2252
    .const 'Sub' $P3510 = "282_1303401182.58" 
    capture_lex $P3510
    .const 'Sub' $P3489 = "281_1303401182.58" 
    capture_lex $P3489
    .lex "self", param_3470
    .lex "$package", param_3471
    .lex "@sym", param_3472
    .lex "$obj", param_3473
.annotate 'line', 2254
    new $P3474, "Undef"
    .lex "$name", $P3474
.annotate 'line', 2257
    new $P3475, "Undef"
    .lex "$target", $P3475
.annotate 'line', 2264
    new $P3476, "Undef"
    .lex "$path", $P3476
.annotate 'line', 2253
    find_lex $P3477, "@sym"
    unless_null $P3477, vivify_1230
    $P3477 = root_new ['parrot';'ResizablePMCArray']
  vivify_1230:
    clone $P3478, $P3477
    store_lex "@sym", $P3478
.annotate 'line', 2254
    find_lex $P3479, "@sym"
    unless_null $P3479, vivify_1231
    $P3479 = root_new ['parrot';'ResizablePMCArray']
  vivify_1231:
    $P3480 = $P3479."pop"()
    set $S3481, $P3480
    new $P3482, 'String'
    set $P3482, $S3481
    store_lex "$name", $P3482
.annotate 'line', 2257
    find_lex $P3483, "$package"
    unless_null $P3483, vivify_1232
    new $P3483, "Undef"
  vivify_1232:
    store_lex "$target", $P3483
.annotate 'line', 2258
    find_lex $P3485, "@sym"
    unless_null $P3485, vivify_1233
    $P3485 = root_new ['parrot';'ResizablePMCArray']
  vivify_1233:
    defined $I3486, $P3485
    unless $I3486, for_undef_1234
    iter $P3484, $P3485
    new $P3496, 'ExceptionHandler'
    set_label $P3496, loop3495_handler
    $P3496."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3496
  loop3495_test:
    unless $P3484, loop3495_done
    shift $P3487, $P3484
  loop3495_redo:
    .const 'Sub' $P3489 = "281_1303401182.58" 
    capture_lex $P3489
    $P3489($P3487)
  loop3495_next:
    goto loop3495_test
  loop3495_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3497, exception, 'type'
    eq $P3497, .CONTROL_LOOP_NEXT, loop3495_next
    eq $P3497, .CONTROL_LOOP_REDO, loop3495_redo
  loop3495_done:
    pop_eh 
  for_undef_1234:
.annotate 'line', 2261
    find_lex $P3498, "$obj"
    unless_null $P3498, vivify_1237
    new $P3498, "Undef"
  vivify_1237:
    find_lex $P3499, "$name"
    unless_null $P3499, vivify_1238
    new $P3499, "Undef"
  vivify_1238:
    find_lex $P3500, "$target"
    unless_null $P3500, vivify_1239
    new $P3500, "Undef"
    store_lex "$target", $P3500
  vivify_1239:
    get_who $P3501, $P3500
    set $P3501[$P3499], $P3498
.annotate 'line', 2264
    find_lex $P3502, "self"
    find_lex $P3503, "$package"
    unless_null $P3503, vivify_1240
    new $P3503, "Undef"
  vivify_1240:
    $P3504 = $P3502."get_slot_past_for_object"($P3503)
    store_lex "$path", $P3504
.annotate 'line', 2265
    find_lex $P3506, "@sym"
    unless_null $P3506, vivify_1241
    $P3506 = root_new ['parrot';'ResizablePMCArray']
  vivify_1241:
    defined $I3507, $P3506
    unless $I3507, for_undef_1242
    iter $P3505, $P3506
    new $P3518, 'ExceptionHandler'
    set_label $P3518, loop3517_handler
    $P3518."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3518
  loop3517_test:
    unless $P3505, loop3517_done
    shift $P3508, $P3505
  loop3517_redo:
    .const 'Sub' $P3510 = "282_1303401182.58" 
    capture_lex $P3510
    $P3510($P3508)
  loop3517_next:
    goto loop3517_test
  loop3517_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3519, exception, 'type'
    eq $P3519, .CONTROL_LOOP_NEXT, loop3517_next
    eq $P3519, .CONTROL_LOOP_REDO, loop3517_redo
  loop3517_done:
    pop_eh 
  for_undef_1242:
.annotate 'line', 2268
    find_lex $P3520, "self"
    get_hll_global $P3521, ["PAST"], "Op"
.annotate 'line', 2270
    get_hll_global $P3522, ["PAST"], "Var"
.annotate 'line', 2272
    get_hll_global $P3523, ["PAST"], "Op"
    find_lex $P3524, "$path"
    unless_null $P3524, vivify_1245
    new $P3524, "Undef"
  vivify_1245:
    $P3525 = $P3523."new"($P3524, "get_who PP" :named("pirop"))
    find_lex $P3526, "$name"
    unless_null $P3526, vivify_1246
    new $P3526, "Undef"
  vivify_1246:
    $P3527 = $P3522."new"($P3525, $P3526, "keyed" :named("scope"))
.annotate 'line', 2275
    find_lex $P3528, "self"
    find_lex $P3529, "$obj"
    unless_null $P3529, vivify_1247
    new $P3529, "Undef"
  vivify_1247:
    $P3530 = $P3528."get_slot_past_for_object"($P3529)
    $P3531 = $P3521."new"($P3527, $P3530, "bind" :named("pasttype"))
.annotate 'line', 2268
    $P3520."add_event"($P3531 :named("deserialize_past"))
.annotate 'line', 2279
    find_lex $P3532, "self"
.annotate 'line', 2280
    get_hll_global $P3533, ["PAST"], "Op"
.annotate 'line', 2282
    get_hll_global $P3534, ["PAST"], "Var"
    find_lex $P3535, "$name"
    unless_null $P3535, vivify_1248
    new $P3535, "Undef"
  vivify_1248:
    find_lex $P3536, "@sym"
    unless_null $P3536, vivify_1249
    $P3536 = root_new ['parrot';'ResizablePMCArray']
  vivify_1249:
    $P3537 = $P3534."new"($P3535 :named("name"), $P3536 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2283
    find_lex $P3538, "self"
    find_lex $P3539, "$obj"
    unless_null $P3539, vivify_1250
    new $P3539, "Undef"
  vivify_1250:
    $P3540 = $P3538."get_slot_past_for_object"($P3539)
    $P3541 = $P3533."new"($P3537, $P3540, "bind" :named("pasttype"))
.annotate 'line', 2285
    get_hll_global $P3542, ["PAST"], "Op"
.annotate 'line', 2287
    get_hll_global $P3543, ["PAST"], "Var"
    find_lex $P3544, "$name"
    unless_null $P3544, vivify_1251
    new $P3544, "Undef"
  vivify_1251:
    find_lex $P3545, "@sym"
    unless_null $P3545, vivify_1252
    $P3545 = root_new ['parrot';'ResizablePMCArray']
  vivify_1252:
    $P3546 = $P3543."new"($P3544 :named("name"), $P3545 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2288
    find_lex $P3547, "self"
    find_lex $P3548, "$obj"
    unless_null $P3548, vivify_1253
    new $P3548, "Undef"
  vivify_1253:
    $P3549 = $P3547."get_slot_past_for_object"($P3548)
    $P3550 = $P3542."new"($P3546, $P3549, "bind" :named("pasttype"))
.annotate 'line', 2285
    $P3551 = $P3532."add_event"($P3541 :named("deserialize_past"), $P3550 :named("fixup_past"))
.annotate 'line', 2252
    .return ($P3551)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3488"  :anon :subid("281_1303401182.58") :outer("280_1303401182.58")
    .param pmc param_3490
.annotate 'line', 2258
    .lex "$_", param_3490
.annotate 'line', 2259
    find_lex $P3491, "$target"
    unless_null $P3491, vivify_1235
    new $P3491, "Undef"
  vivify_1235:
    find_lex $P3492, "$_"
    unless_null $P3492, vivify_1236
    new $P3492, "Undef"
  vivify_1236:
    set $S3493, $P3492
    nqp_get_package_through_who $P3494, $P3491, $S3493
    store_lex "$target", $P3494
.annotate 'line', 2258
    .return ($P3494)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3509"  :anon :subid("282_1303401182.58") :outer("280_1303401182.58")
    .param pmc param_3511
.annotate 'line', 2265
    .lex "$_", param_3511
.annotate 'line', 2266
    get_hll_global $P3512, ["PAST"], "Op"
    find_lex $P3513, "$path"
    unless_null $P3513, vivify_1243
    new $P3513, "Undef"
  vivify_1243:
    find_lex $P3514, "$_"
    unless_null $P3514, vivify_1244
    new $P3514, "Undef"
  vivify_1244:
    set $S3515, $P3514
    $P3516 = $P3512."new"($P3513, $S3515, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3516
.annotate 'line', 2265
    .return ($P3516)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3553
    .param pmc param_3554
    .param pmc param_3555
    .param pmc param_3556
.annotate 'line', 2296
    .lex "self", param_3553
    .lex "$block", param_3554
    .lex "$name", param_3555
    .lex "$obj", param_3556
.annotate 'line', 2302
    new $P3557, "Undef"
    .lex "$fixup", $P3557
.annotate 'line', 2298
    find_lex $P3558, "$block"
    unless_null $P3558, vivify_1254
    new $P3558, "Undef"
  vivify_1254:
    find_lex $P3559, "$name"
    unless_null $P3559, vivify_1255
    new $P3559, "Undef"
  vivify_1255:
    find_lex $P3560, "$obj"
    unless_null $P3560, vivify_1256
    new $P3560, "Undef"
  vivify_1256:
    $P3558."symbol"($P3559, "lexical" :named("scope"), $P3560 :named("value"))
.annotate 'line', 2299
    find_lex $P3561, "$block"
    unless_null $P3561, vivify_1257
    $P3561 = root_new ['parrot';'ResizablePMCArray']
  vivify_1257:
    set $P3562, $P3561[0]
    unless_null $P3562, vivify_1258
    new $P3562, "Undef"
  vivify_1258:
    get_hll_global $P3563, ["PAST"], "Var"
    find_lex $P3564, "$name"
    unless_null $P3564, vivify_1259
    new $P3564, "Undef"
  vivify_1259:
    $P3565 = $P3563."new"("lexical" :named("scope"), $P3564 :named("name"), 1 :named("isdecl"))
    $P3562."push"($P3565)
.annotate 'line', 2302
    get_hll_global $P3566, ["PAST"], "Stmts"
.annotate 'line', 2303
    get_hll_global $P3567, ["PAST"], "Op"
.annotate 'line', 2305
    get_hll_global $P3568, ["PAST"], "Op"
.annotate 'line', 2307
    get_hll_global $P3569, ["PAST"], "Val"
    find_lex $P3570, "$block"
    unless_null $P3570, vivify_1260
    new $P3570, "Undef"
  vivify_1260:
    $P3571 = $P3569."new"($P3570 :named("value"))
    $P3572 = $P3568."new"($P3571, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2309
    find_lex $P3573, "$name"
    unless_null $P3573, vivify_1261
    new $P3573, "Undef"
  vivify_1261:
    set $S3574, $P3573
    find_lex $P3575, "self"
    find_lex $P3576, "$obj"
    unless_null $P3576, vivify_1262
    new $P3576, "Undef"
  vivify_1262:
    $P3577 = $P3575."get_slot_past_for_object"($P3576)
    $P3578 = $P3567."new"($P3572, $S3574, $P3577, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2313
    get_hll_global $P3579, ["PAST"], "Op"
.annotate 'line', 2315
    get_hll_global $P3580, ["PAST"], "Op"
.annotate 'line', 2317
    get_hll_global $P3581, ["PAST"], "Val"
    find_lex $P3582, "$block"
    unless_null $P3582, vivify_1263
    new $P3582, "Undef"
  vivify_1263:
    $P3583 = $P3581."new"($P3582 :named("value"))
    $P3584 = $P3580."new"($P3583, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2315
    $P3585 = $P3579."new"($P3584, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2313
    $P3586 = $P3566."new"($P3578, $P3585)
.annotate 'line', 2302
    store_lex "$fixup", $P3586
.annotate 'line', 2321
    find_lex $P3587, "self"
    find_lex $P3588, "$fixup"
    unless_null $P3588, vivify_1264
    new $P3588, "Undef"
  vivify_1264:
    find_lex $P3589, "$fixup"
    unless_null $P3589, vivify_1265
    new $P3589, "Undef"
  vivify_1265:
    $P3590 = $P3587."add_event"($P3588 :named("deserialize_past"), $P3589 :named("fixup_past"))
.annotate 'line', 2296
    .return ($P3590)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("284_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3594
    .param pmc param_3595
    .param pmc param_3596 :optional :named("name")
    .param int has_param_3596 :opt_flag
    .param pmc param_3598 :optional :named("repr")
    .param int has_param_3598 :opt_flag
.annotate 'line', 2326
    new $P3593, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3593, control_3592
    push_eh $P3593
    .lex "self", param_3594
    .lex "$how", param_3595
    if has_param_3596, optparam_1266
    new $P3597, "Undef"
    set param_3596, $P3597
  optparam_1266:
    .lex "$name", param_3596
    if has_param_3598, optparam_1267
    new $P3599, "Undef"
    set param_3598, $P3599
  optparam_1267:
    .lex "$repr", param_3598
.annotate 'line', 2328
    $P3600 = root_new ['parrot';'Hash']
    .lex "%args", $P3600
.annotate 'line', 2331
    new $P3601, "Undef"
    .lex "$mo", $P3601
.annotate 'line', 2332
    new $P3602, "Undef"
    .lex "$slot", $P3602
.annotate 'line', 2336
    $P3603 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3603
.annotate 'line', 2337
    new $P3604, "Undef"
    .lex "$how_name", $P3604
.annotate 'line', 2338
    new $P3605, "Undef"
    .lex "$setup_call", $P3605
.annotate 'line', 2326
    find_lex $P3606, "%args"
    unless_null $P3606, vivify_1268
    $P3606 = root_new ['parrot';'Hash']
  vivify_1268:
.annotate 'line', 2329
    find_lex $P3608, "$name"
    unless_null $P3608, vivify_1269
    new $P3608, "Undef"
  vivify_1269:
    defined $I3609, $P3608
    unless $I3609, if_3607_end
    find_lex $P3610, "$name"
    unless_null $P3610, vivify_1270
    new $P3610, "Undef"
  vivify_1270:
    find_lex $P3611, "%args"
    unless_null $P3611, vivify_1271
    $P3611 = root_new ['parrot';'Hash']
    store_lex "%args", $P3611
  vivify_1271:
    set $P3611["name"], $P3610
  if_3607_end:
.annotate 'line', 2330
    find_lex $P3613, "$repr"
    unless_null $P3613, vivify_1272
    new $P3613, "Undef"
  vivify_1272:
    defined $I3614, $P3613
    unless $I3614, if_3612_end
    find_lex $P3615, "$repr"
    unless_null $P3615, vivify_1273
    new $P3615, "Undef"
  vivify_1273:
    find_lex $P3616, "%args"
    unless_null $P3616, vivify_1274
    $P3616 = root_new ['parrot';'Hash']
    store_lex "%args", $P3616
  vivify_1274:
    set $P3616["repr"], $P3615
  if_3612_end:
.annotate 'line', 2331
    find_lex $P3617, "$how"
    unless_null $P3617, vivify_1275
    new $P3617, "Undef"
  vivify_1275:
    find_lex $P3618, "%args"
    unless_null $P3618, vivify_1276
    $P3618 = root_new ['parrot';'Hash']
  vivify_1276:
    $P3619 = $P3617."new_type"($P3618 :flat)
    store_lex "$mo", $P3619
.annotate 'line', 2332
    find_lex $P3620, "self"
    find_lex $P3621, "$mo"
    unless_null $P3621, vivify_1277
    new $P3621, "Undef"
  vivify_1277:
    $P3622 = $P3620."add_object"($P3621)
    store_lex "$slot", $P3622
.annotate 'line', 2336
    find_lex $P3623, "$how"
    unless_null $P3623, vivify_1278
    new $P3623, "Undef"
  vivify_1278:
    get_how $P3624, $P3623
    find_lex $P3625, "$how"
    unless_null $P3625, vivify_1279
    new $P3625, "Undef"
  vivify_1279:
    $S3626 = $P3624."name"($P3625)
    split $P3627, "::", $S3626
    store_lex "@how_ns", $P3627
.annotate 'line', 2337
    find_lex $P3628, "@how_ns"
    unless_null $P3628, vivify_1280
    $P3628 = root_new ['parrot';'ResizablePMCArray']
  vivify_1280:
    $P3629 = $P3628."pop"()
    store_lex "$how_name", $P3629
.annotate 'line', 2338
    get_hll_global $P3630, ["PAST"], "Op"
.annotate 'line', 2340
    get_hll_global $P3631, ["PAST"], "Var"
    find_lex $P3632, "$how_name"
    unless_null $P3632, vivify_1281
    new $P3632, "Undef"
  vivify_1281:
    find_lex $P3633, "@how_ns"
    unless_null $P3633, vivify_1282
    $P3633 = root_new ['parrot';'ResizablePMCArray']
  vivify_1282:
    $P3634 = $P3631."new"($P3632 :named("name"), $P3633 :named("namespace"), "package" :named("scope"))
    $P3635 = $P3630."new"($P3634, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2338
    store_lex "$setup_call", $P3635
.annotate 'line', 2344
    find_lex $P3637, "$name"
    unless_null $P3637, vivify_1283
    new $P3637, "Undef"
  vivify_1283:
    defined $I3638, $P3637
    unless $I3638, if_3636_end
.annotate 'line', 2345
    find_lex $P3639, "$setup_call"
    unless_null $P3639, vivify_1284
    new $P3639, "Undef"
  vivify_1284:
    get_hll_global $P3640, ["PAST"], "Val"
    find_lex $P3641, "$name"
    unless_null $P3641, vivify_1285
    new $P3641, "Undef"
  vivify_1285:
    $P3642 = $P3640."new"($P3641 :named("value"), "name" :named("named"))
    $P3639."push"($P3642)
  if_3636_end:
.annotate 'line', 2347
    find_lex $P3644, "$repr"
    unless_null $P3644, vivify_1286
    new $P3644, "Undef"
  vivify_1286:
    defined $I3645, $P3644
    unless $I3645, if_3643_end
.annotate 'line', 2348
    find_lex $P3646, "$setup_call"
    unless_null $P3646, vivify_1287
    new $P3646, "Undef"
  vivify_1287:
    get_hll_global $P3647, ["PAST"], "Val"
    find_lex $P3648, "$repr"
    unless_null $P3648, vivify_1288
    new $P3648, "Undef"
  vivify_1288:
    $P3649 = $P3647."new"($P3648 :named("value"), "repr" :named("named"))
    $P3646."push"($P3649)
  if_3643_end:
.annotate 'line', 2350
    find_lex $P3650, "self"
.annotate 'line', 2351
    find_lex $P3651, "self"
    find_lex $P3652, "$slot"
    unless_null $P3652, vivify_1289
    new $P3652, "Undef"
  vivify_1289:
    find_lex $P3653, "self"
    find_lex $P3654, "$setup_call"
    unless_null $P3654, vivify_1290
    new $P3654, "Undef"
  vivify_1290:
    $P3655 = $P3653."set_cur_sc"($P3654)
    $P3656 = $P3651."set_slot_past"($P3652, $P3655)
    $P3650."add_event"($P3656 :named("deserialize_past"))
.annotate 'line', 2354
    new $P3657, "Exception"
    set $P3657['type'], .CONTROL_RETURN
    find_lex $P3658, "$mo"
    unless_null $P3658, vivify_1291
    new $P3658, "Undef"
  vivify_1291:
    setattribute $P3657, 'payload', $P3658
    throw $P3657
.annotate 'line', 2326
    .return ()
  control_3592:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3659, exception, "payload"
    .return ($P3659)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3661
    .param pmc param_3662
    .param pmc param_3663
    .param pmc param_3664
    .param pmc param_3665
.annotate 'line', 2360
    .lex "self", param_3661
    .lex "$obj", param_3662
    .lex "$meta_method_name", param_3663
    .lex "$name", param_3664
    .lex "$method_past", param_3665
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("286_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3667
    .param pmc param_3668
    .param pmc param_3669
    .param pmc param_3670
.annotate 'line', 2365
    .lex "self", param_3667
    .lex "$obj", param_3668
    .lex "$meta_method_name", param_3669
    .lex "$to_add", param_3670
.annotate 'line', 2370
    new $P3671, "Undef"
    .lex "$slot_past", $P3671
.annotate 'line', 2367
    find_lex $P3672, "$obj"
    unless_null $P3672, vivify_1292
    new $P3672, "Undef"
  vivify_1292:
    get_how $P3673, $P3672
    find_lex $P3674, "$obj"
    unless_null $P3674, vivify_1293
    new $P3674, "Undef"
  vivify_1293:
    find_lex $P3675, "$to_add"
    unless_null $P3675, vivify_1294
    new $P3675, "Undef"
  vivify_1294:
    find_lex $P3676, "$meta_method_name"
    unless_null $P3676, vivify_1295
    new $P3676, "Undef"
  vivify_1295:
    set $S3677, $P3676
    $P3673.$S3677($P3674, $P3675)
.annotate 'line', 2370
    find_lex $P3678, "$obj"
    unless_null $P3678, vivify_1296
    new $P3678, "Undef"
  vivify_1296:
    $P3679 = "get_slot_past_for_object"($P3678)
    store_lex "$slot_past", $P3679
.annotate 'line', 2371
    find_lex $P3680, "self"
    get_hll_global $P3681, ["PAST"], "Op"
    find_lex $P3682, "$meta_method_name"
    unless_null $P3682, vivify_1297
    new $P3682, "Undef"
  vivify_1297:
.annotate 'line', 2373
    get_hll_global $P3683, ["PAST"], "Op"
    find_lex $P3684, "$slot_past"
    unless_null $P3684, vivify_1298
    new $P3684, "Undef"
  vivify_1298:
    $P3685 = $P3683."new"($P3684, "get_how PP" :named("pirop"))
    find_lex $P3686, "$slot_past"
    unless_null $P3686, vivify_1299
    new $P3686, "Undef"
  vivify_1299:
.annotate 'line', 2375
    find_lex $P3687, "self"
    find_lex $P3688, "$to_add"
    unless_null $P3688, vivify_1300
    new $P3688, "Undef"
  vivify_1300:
    $P3689 = $P3687."get_object_sc_ref_past"($P3688)
    $P3690 = $P3681."new"($P3685, $P3686, $P3689, "callmethod" :named("pasttype"), $P3682 :named("name"))
.annotate 'line', 2371
    $P3691 = $P3680."add_event"($P3690 :named("deserialize_past"))
.annotate 'line', 2365
    .return ($P3691)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("287_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3693
    .param pmc param_3694
.annotate 'line', 2380
    .lex "self", param_3693
    .lex "$obj", param_3694
.annotate 'line', 2385
    new $P3695, "Undef"
    .lex "$slot_past", $P3695
.annotate 'line', 2382
    find_lex $P3696, "$obj"
    unless_null $P3696, vivify_1301
    new $P3696, "Undef"
  vivify_1301:
    get_how $P3697, $P3696
    find_lex $P3698, "$obj"
    unless_null $P3698, vivify_1302
    new $P3698, "Undef"
  vivify_1302:
    $P3697."compose"($P3698)
.annotate 'line', 2385
    find_lex $P3699, "$obj"
    unless_null $P3699, vivify_1303
    new $P3699, "Undef"
  vivify_1303:
    $P3700 = "get_slot_past_for_object"($P3699)
    store_lex "$slot_past", $P3700
.annotate 'line', 2386
    find_lex $P3701, "self"
    get_hll_global $P3702, ["PAST"], "Op"
.annotate 'line', 2388
    get_hll_global $P3703, ["PAST"], "Op"
    find_lex $P3704, "$slot_past"
    unless_null $P3704, vivify_1304
    new $P3704, "Undef"
  vivify_1304:
    $P3705 = $P3703."new"($P3704, "get_how PP" :named("pirop"))
    find_lex $P3706, "$slot_past"
    unless_null $P3706, vivify_1305
    new $P3706, "Undef"
  vivify_1305:
    $P3707 = $P3702."new"($P3705, $P3706, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2386
    $P3708 = $P3701."add_event"($P3707 :named("deserialize_past"))
.annotate 'line', 2380
    .return ($P3708)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("288_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3710
.annotate 'line', 2394
    .lex "self", param_3710
    find_lex $P3711, "self"
    find_lex $P3712, "$?CLASS"
    getattribute $P3713, $P3711, $P3712, "@!sc"
    unless_null $P3713, vivify_1306
    $P3713 = root_new ['parrot';'ResizablePMCArray']
  vivify_1306:
    .return ($P3713)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("289_1303401182.58") :outer("266_1303401182.58")
    .param pmc param_3715
.annotate 'line', 2400
    .const 'Sub' $P3729 = "290_1303401182.58" 
    capture_lex $P3729
    .lex "self", param_3715
.annotate 'line', 2401
    new $P3716, "Undef"
    .lex "$des", $P3716
.annotate 'line', 2402
    new $P3717, "Undef"
    .lex "$fix", $P3717
.annotate 'line', 2401
    get_hll_global $P3718, ["PAST"], "Stmts"
    $P3719 = $P3718."new"()
    store_lex "$des", $P3719
.annotate 'line', 2402
    get_hll_global $P3720, ["PAST"], "Stmts"
    $P3721 = $P3720."new"()
    store_lex "$fix", $P3721
.annotate 'line', 2403
    find_lex $P3723, "self"
    find_lex $P3724, "$?CLASS"
    getattribute $P3725, $P3723, $P3724, "@!event_stream"
    unless_null $P3725, vivify_1307
    $P3725 = root_new ['parrot';'ResizablePMCArray']
  vivify_1307:
    defined $I3726, $P3725
    unless $I3726, for_undef_1308
    iter $P3722, $P3725
    new $P3748, 'ExceptionHandler'
    set_label $P3748, loop3747_handler
    $P3748."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3748
  loop3747_test:
    unless $P3722, loop3747_done
    shift $P3727, $P3722
  loop3747_redo:
    .const 'Sub' $P3729 = "290_1303401182.58" 
    capture_lex $P3729
    $P3729($P3727)
  loop3747_next:
    goto loop3747_test
  loop3747_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3749, exception, 'type'
    eq $P3749, .CONTROL_LOOP_NEXT, loop3747_next
    eq $P3749, .CONTROL_LOOP_REDO, loop3747_redo
  loop3747_done:
    pop_eh 
  for_undef_1308:
.annotate 'line', 2407
    find_dynamic_lex $P3750, "$/"
    get_hll_global $P3751, ["PAST"], "Op"
.annotate 'line', 2409
    get_hll_global $P3752, ["PAST"], "Op"
.annotate 'line', 2411
    get_hll_global $P3753, ["PAST"], "Op"
    find_lex $P3754, "self"
    find_lex $P3755, "$?CLASS"
    getattribute $P3756, $P3754, $P3755, "$!handle"
    unless_null $P3756, vivify_1315
    new $P3756, "Undef"
  vivify_1315:
    $P3757 = $P3753."new"($P3756, "nqp_get_sc Ps" :named("pirop"))
    $P3758 = $P3752."new"($P3757, "isnull IP" :named("pirop"))
.annotate 'line', 2413
    get_hll_global $P3759, ["PAST"], "Stmts"
.annotate 'line', 2414
    get_hll_global $P3760, ["PAST"], "Op"
    $P3761 = $P3760."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2415
    get_hll_global $P3762, ["PAST"], "Op"
.annotate 'line', 2417
    get_hll_global $P3763, ["PAST"], "Op"
    $P3764 = $P3763."new"("getinterp P" :named("pirop"))
.annotate 'line', 2418
    get_hll_global $P3765, ["PAST"], "Op"
    $P3766 = $P3765."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2419
    get_hll_global $P3767, ["PAST"], "Op"
    $P3768 = $P3767."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3769 = $P3762."new"($P3764, $P3766, $P3768, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2421
    get_hll_global $P3770, ["PAST"], "Op"
    $P3771 = $P3770."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2422
    get_hll_global $P3772, ["PAST"], "Op"
.annotate 'line', 2424
    get_hll_global $P3773, ["PAST"], "Var"
    $P3774 = $P3773."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2425
    get_hll_global $P3775, ["PAST"], "Op"
    find_lex $P3776, "self"
    find_lex $P3777, "$?CLASS"
    getattribute $P3778, $P3776, $P3777, "$!handle"
    unless_null $P3778, vivify_1316
    new $P3778, "Undef"
  vivify_1316:
    $P3779 = $P3775."new"($P3778, "nqp_create_sc Ps" :named("pirop"))
    $P3780 = $P3772."new"($P3774, $P3779, "bind" :named("pasttype"))
.annotate 'line', 2422
    find_lex $P3781, "$des"
    unless_null $P3781, vivify_1317
    new $P3781, "Undef"
  vivify_1317:
    $P3782 = $P3759."new"($P3761, $P3769, $P3771, $P3780, $P3781)
.annotate 'line', 2413
    find_lex $P3783, "$fix"
    unless_null $P3783, vivify_1318
    new $P3783, "Undef"
  vivify_1318:
    $P3784 = $P3751."new"($P3758, $P3782, $P3783, "if" :named("pasttype"))
.annotate 'line', 2407
    $P3785 = $P3750."!make"($P3784)
.annotate 'line', 2400
    .return ($P3785)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3728"  :anon :subid("290_1303401182.58") :outer("289_1303401182.58")
    .param pmc param_3730
.annotate 'line', 2403
    .lex "$_", param_3730
.annotate 'line', 2404
    find_lex $P3732, "$_"
    unless_null $P3732, vivify_1309
    new $P3732, "Undef"
  vivify_1309:
    $P3733 = $P3732."deserialize_past"()
    defined $I3734, $P3733
    unless $I3734, if_3731_end
    find_lex $P3735, "$des"
    unless_null $P3735, vivify_1310
    new $P3735, "Undef"
  vivify_1310:
    find_lex $P3736, "$_"
    unless_null $P3736, vivify_1311
    new $P3736, "Undef"
  vivify_1311:
    $P3737 = $P3736."deserialize_past"()
    $P3735."push"($P3737)
  if_3731_end:
.annotate 'line', 2405
    find_lex $P3740, "$_"
    unless_null $P3740, vivify_1312
    new $P3740, "Undef"
  vivify_1312:
    $P3741 = $P3740."fixup_past"()
    defined $I3742, $P3741
    if $I3742, if_3739
    new $P3738, 'Integer'
    set $P3738, $I3742
    goto if_3739_end
  if_3739:
    find_lex $P3743, "$fix"
    unless_null $P3743, vivify_1313
    new $P3743, "Undef"
  vivify_1313:
    find_lex $P3744, "$_"
    unless_null $P3744, vivify_1314
    new $P3744, "Undef"
  vivify_1314:
    $P3745 = $P3744."fixup_past"()
    $P3746 = $P3743."push"($P3745)
    set $P3738, $P3746
  if_3739_end:
.annotate 'line', 2403
    .return ($P3738)
.end


.HLL "nqp"

.namespace []
.sub "_block3845" :load :anon :subid("292_1303401182.58")
.annotate 'line', 1058
    .const 'Sub' $P3847 = "10_1303401182.58" 
    $P3848 = $P3847()
    .return ($P3848)
.end

