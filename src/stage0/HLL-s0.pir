
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303340933.805")
.annotate 'line', 0
    get_hll_global $P3223, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3222" 
    capture_lex $P3223
    get_hll_global $P3193, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3192" 
    capture_lex $P3193
    get_hll_global $P2733, ["HLL";"CommandLine";"Parser"], "_block2732" 
    capture_lex $P2733
    get_hll_global $P2634, ["HLL";"CommandLine";"Result"], "_block2633" 
    capture_lex $P2634
    get_hll_global $P1390, ["HLL";"Compiler"], "_block1389" 
    capture_lex $P1390
    .const 'Sub' $P1388 = "167_1303340933.805" 
    capture_lex $P1388
    get_hll_global $P671, ["HLL";"Actions"], "_block670" 
    capture_lex $P671
    get_hll_global $P16, ["HLL";"Grammar"], "_block15" 
    capture_lex $P16
.annotate 'line', 1
    .lex "GLOBALish", $P13
.annotate 'line', 1800
    new $P14, "Undef"
    .lex "$compiler", $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P16, ["HLL";"Grammar"], "_block15" 
    capture_lex $P16
    $P16()
.annotate 'line', 861
    get_hll_global $P671, ["HLL";"Actions"], "_block670" 
    capture_lex $P671
    $P671()
    .const 'Sub' $P1388 = "167_1303340933.805" 
    capture_lex $P1388
    $P1388()
.annotate 'line', 1066
    get_hll_global $P1390, ["HLL";"Compiler"], "_block1389" 
    capture_lex $P1390
    $P1390()
.annotate 'line', 1800
    get_hll_global $P2630, ["HLL"], "Compiler"
    $P2631 = $P2630."new"()
    store_lex "$compiler", $P2631
.annotate 'line', 1801
    find_lex $P2632, "$compiler"
    unless_null $P2632, vivify_1015
    new $P2632, "Undef"
  vivify_1015:
    $P2632."language"("parrot")
.annotate 'line', 1894
    get_hll_global $P2634, ["HLL";"CommandLine";"Result"], "_block2633" 
    capture_lex $P2634
    $P2634()
.annotate 'line', 1927
    get_hll_global $P2733, ["HLL";"CommandLine";"Parser"], "_block2732" 
    capture_lex $P2733
    $P2733()
.annotate 'line', 2105
    get_hll_global $P3193, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3192" 
    capture_lex $P3193
    $P3193()
.annotate 'line', 2115
    get_hll_global $P3223, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3222" 
    capture_lex $P3223
    $P3761 = $P3223()
.annotate 'line', 1
    .return ($P3761)
    .const 'Sub' $P3763 = "292_1303340933.805" 
    .return ($P3763)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post293") :outer("10_1303340933.805")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303340933.805" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3767, "1303340926.369"
    isnull $I3768, $P3767
    if $I3768, if_3766
    .const 'Sub' $P3873 = "10_1303340933.805" 
    $P3874 = $P3873."get_lexinfo"()
    nqp_get_sc_object $P3875, "1303340926.369", 0
    $P3874."set_static_lexpad_value"("GLOBALish", $P3875)
    .const 'Sub' $P3876 = "10_1303340933.805" 
    $P3877 = $P3876."get_lexinfo"()
    $P3877."finish_static_lexpad"()
    nqp_get_sc_object $P3878, "1303340926.369", 1
    set_hll_global ["HLL"], "Grammar", $P3878
    .const 'Sub' $P3879 = "11_1303340933.805" 
    $P3880 = $P3879."get_lexinfo"()
    nqp_get_sc_object $P3881, "1303340926.369", 1
    $P3880."set_static_lexpad_value"("$?PACKAGE", $P3881)
    .const 'Sub' $P3882 = "11_1303340933.805" 
    $P3883 = $P3882."get_lexinfo"()
    $P3883."finish_static_lexpad"()
    .const 'Sub' $P3884 = "11_1303340933.805" 
    $P3885 = $P3884."get_lexinfo"()
    nqp_get_sc_object $P3886, "1303340926.369", 1
    $P3885."set_static_lexpad_value"("$?CLASS", $P3886)
    .const 'Sub' $P3887 = "11_1303340933.805" 
    $P3888 = $P3887."get_lexinfo"()
    $P3888."finish_static_lexpad"()
    nqp_get_sc_object $P3889, "1303340926.369", 2
    set_hll_global ["HLL"], "Actions", $P3889
    .const 'Sub' $P3890 = "120_1303340933.805" 
    $P3891 = $P3890."get_lexinfo"()
    nqp_get_sc_object $P3892, "1303340926.369", 2
    $P3891."set_static_lexpad_value"("$?PACKAGE", $P3892)
    .const 'Sub' $P3893 = "120_1303340933.805" 
    $P3894 = $P3893."get_lexinfo"()
    $P3894."finish_static_lexpad"()
    .const 'Sub' $P3895 = "120_1303340933.805" 
    $P3896 = $P3895."get_lexinfo"()
    nqp_get_sc_object $P3897, "1303340926.369", 2
    $P3896."set_static_lexpad_value"("$?CLASS", $P3897)
    .const 'Sub' $P3898 = "120_1303340933.805" 
    $P3899 = $P3898."get_lexinfo"()
    $P3899."finish_static_lexpad"()
    nqp_get_sc_object $P3900, "1303340926.369", 3
    set_hll_global ["HLL"], "Compiler", $P3900
    .const 'Sub' $P3901 = "168_1303340933.805" 
    $P3902 = $P3901."get_lexinfo"()
    nqp_get_sc_object $P3903, "1303340926.369", 3
    $P3902."set_static_lexpad_value"("$?PACKAGE", $P3903)
    .const 'Sub' $P3904 = "168_1303340933.805" 
    $P3905 = $P3904."get_lexinfo"()
    $P3905."finish_static_lexpad"()
    .const 'Sub' $P3906 = "168_1303340933.805" 
    $P3907 = $P3906."get_lexinfo"()
    nqp_get_sc_object $P3908, "1303340926.369", 3
    $P3907."set_static_lexpad_value"("$?CLASS", $P3908)
    .const 'Sub' $P3909 = "168_1303340933.805" 
    $P3910 = $P3909."get_lexinfo"()
    $P3910."finish_static_lexpad"()
    nqp_get_sc_object $P3911, "1303340926.369", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3911
    .const 'Sub' $P3912 = "236_1303340933.805" 
    $P3913 = $P3912."get_lexinfo"()
    nqp_get_sc_object $P3914, "1303340926.369", 4
    $P3913."set_static_lexpad_value"("$?PACKAGE", $P3914)
    .const 'Sub' $P3915 = "236_1303340933.805" 
    $P3916 = $P3915."get_lexinfo"()
    $P3916."finish_static_lexpad"()
    .const 'Sub' $P3917 = "236_1303340933.805" 
    $P3918 = $P3917."get_lexinfo"()
    nqp_get_sc_object $P3919, "1303340926.369", 4
    $P3918."set_static_lexpad_value"("$?CLASS", $P3919)
    .const 'Sub' $P3920 = "236_1303340933.805" 
    $P3921 = $P3920."get_lexinfo"()
    $P3921."finish_static_lexpad"()
    nqp_get_sc_object $P3922, "1303340926.369", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3922
    .const 'Sub' $P3923 = "244_1303340933.805" 
    $P3924 = $P3923."get_lexinfo"()
    nqp_get_sc_object $P3925, "1303340926.369", 5
    $P3924."set_static_lexpad_value"("$?PACKAGE", $P3925)
    .const 'Sub' $P3926 = "244_1303340933.805" 
    $P3927 = $P3926."get_lexinfo"()
    $P3927."finish_static_lexpad"()
    .const 'Sub' $P3928 = "244_1303340933.805" 
    $P3929 = $P3928."get_lexinfo"()
    nqp_get_sc_object $P3930, "1303340926.369", 5
    $P3929."set_static_lexpad_value"("$?CLASS", $P3930)
    .const 'Sub' $P3931 = "244_1303340933.805" 
    $P3932 = $P3931."get_lexinfo"()
    $P3932."finish_static_lexpad"()
    nqp_get_sc_object $P3933, "1303340926.369", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3933
    .const 'Sub' $P3934 = "264_1303340933.805" 
    $P3935 = $P3934."get_lexinfo"()
    nqp_get_sc_object $P3936, "1303340926.369", 6
    $P3935."set_static_lexpad_value"("$?PACKAGE", $P3936)
    .const 'Sub' $P3937 = "264_1303340933.805" 
    $P3938 = $P3937."get_lexinfo"()
    $P3938."finish_static_lexpad"()
    .const 'Sub' $P3939 = "264_1303340933.805" 
    $P3940 = $P3939."get_lexinfo"()
    nqp_get_sc_object $P3941, "1303340926.369", 6
    $P3940."set_static_lexpad_value"("$?CLASS", $P3941)
    .const 'Sub' $P3942 = "264_1303340933.805" 
    $P3943 = $P3942."get_lexinfo"()
    $P3943."finish_static_lexpad"()
    nqp_get_sc_object $P3944, "1303340926.369", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3944
    .const 'Sub' $P3945 = "268_1303340933.805" 
    $P3946 = $P3945."get_lexinfo"()
    nqp_get_sc_object $P3947, "1303340926.369", 7
    $P3946."set_static_lexpad_value"("$?PACKAGE", $P3947)
    .const 'Sub' $P3948 = "268_1303340933.805" 
    $P3949 = $P3948."get_lexinfo"()
    $P3949."finish_static_lexpad"()
    .const 'Sub' $P3950 = "268_1303340933.805" 
    $P3951 = $P3950."get_lexinfo"()
    nqp_get_sc_object $P3952, "1303340926.369", 7
    $P3951."set_static_lexpad_value"("$?CLASS", $P3952)
    .const 'Sub' $P3953 = "268_1303340933.805" 
    $P3954 = $P3953."get_lexinfo"()
    $P3954."finish_static_lexpad"()
    goto if_3766_end
  if_3766:
    nqp_dynop_setup 
    getinterp $P3769
    get_class $P3770, "LexPad"
    get_class $P3771, "NQPLexPad"
    $P3769."hll_map"($P3770, $P3771)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P3772, "1303340926.369"
    .local pmc cur_sc
    set cur_sc, $P3772
    load_bytecode "SettingManager.pbc"
    get_hll_global $P3773, ["HLL"], "SettingManager"
    $P3774 = $P3773."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3774)
    get_hll_global $P3775, "KnowHOW"
    $P3776 = $P3775."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3776, cur_sc
    nqp_set_sc_object "1303340926.369", 0, $P3776
    .const 'Sub' $P3777 = "10_1303340933.805" 
    $P3778 = $P3777."get_lexinfo"()
    nqp_get_sc_object $P3779, "1303340926.369", 0
    $P3778."set_static_lexpad_value"("GLOBALish", $P3779)
    .const 'Sub' $P3780 = "10_1303340933.805" 
    $P3781 = $P3780."get_lexinfo"()
    $P3781."finish_static_lexpad"()
    load_bytecode "Regex.pbc"
    get_hll_global $P3782, "NQPClassHOW"
    $P3783 = $P3782."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3783, cur_sc
    nqp_set_sc_object "1303340926.369", 1, $P3783
    nqp_get_sc_object $P3784, "1303340926.369", 1
    set_hll_global ["HLL"], "Grammar", $P3784
    .const 'Sub' $P3785 = "11_1303340933.805" 
    $P3786 = $P3785."get_lexinfo"()
    nqp_get_sc_object $P3787, "1303340926.369", 1
    $P3786."set_static_lexpad_value"("$?PACKAGE", $P3787)
    .const 'Sub' $P3788 = "11_1303340933.805" 
    $P3789 = $P3788."get_lexinfo"()
    $P3789."finish_static_lexpad"()
    .const 'Sub' $P3790 = "11_1303340933.805" 
    $P3791 = $P3790."get_lexinfo"()
    nqp_get_sc_object $P3792, "1303340926.369", 1
    $P3791."set_static_lexpad_value"("$?CLASS", $P3792)
    .const 'Sub' $P3793 = "11_1303340933.805" 
    $P3794 = $P3793."get_lexinfo"()
    $P3794."finish_static_lexpad"()
    get_hll_global $P3795, "NQPClassHOW"
    $P3796 = $P3795."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3796, cur_sc
    nqp_set_sc_object "1303340926.369", 2, $P3796
    nqp_get_sc_object $P3797, "1303340926.369", 2
    set_hll_global ["HLL"], "Actions", $P3797
    .const 'Sub' $P3798 = "120_1303340933.805" 
    $P3799 = $P3798."get_lexinfo"()
    nqp_get_sc_object $P3800, "1303340926.369", 2
    $P3799."set_static_lexpad_value"("$?PACKAGE", $P3800)
    .const 'Sub' $P3801 = "120_1303340933.805" 
    $P3802 = $P3801."get_lexinfo"()
    $P3802."finish_static_lexpad"()
    .const 'Sub' $P3803 = "120_1303340933.805" 
    $P3804 = $P3803."get_lexinfo"()
    nqp_get_sc_object $P3805, "1303340926.369", 2
    $P3804."set_static_lexpad_value"("$?CLASS", $P3805)
    .const 'Sub' $P3806 = "120_1303340933.805" 
    $P3807 = $P3806."get_lexinfo"()
    $P3807."finish_static_lexpad"()
    get_hll_global $P3808, "NQPClassHOW"
    $P3809 = $P3808."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3809, cur_sc
    nqp_set_sc_object "1303340926.369", 3, $P3809
    nqp_get_sc_object $P3810, "1303340926.369", 3
    set_hll_global ["HLL"], "Compiler", $P3810
    .const 'Sub' $P3811 = "168_1303340933.805" 
    $P3812 = $P3811."get_lexinfo"()
    nqp_get_sc_object $P3813, "1303340926.369", 3
    $P3812."set_static_lexpad_value"("$?PACKAGE", $P3813)
    .const 'Sub' $P3814 = "168_1303340933.805" 
    $P3815 = $P3814."get_lexinfo"()
    $P3815."finish_static_lexpad"()
    .const 'Sub' $P3816 = "168_1303340933.805" 
    $P3817 = $P3816."get_lexinfo"()
    nqp_get_sc_object $P3818, "1303340926.369", 3
    $P3817."set_static_lexpad_value"("$?CLASS", $P3818)
    .const 'Sub' $P3819 = "168_1303340933.805" 
    $P3820 = $P3819."get_lexinfo"()
    $P3820."finish_static_lexpad"()
    get_hll_global $P3821, "NQPClassHOW"
    $P3822 = $P3821."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3822, cur_sc
    nqp_set_sc_object "1303340926.369", 4, $P3822
    nqp_get_sc_object $P3823, "1303340926.369", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3823
    .const 'Sub' $P3824 = "236_1303340933.805" 
    $P3825 = $P3824."get_lexinfo"()
    nqp_get_sc_object $P3826, "1303340926.369", 4
    $P3825."set_static_lexpad_value"("$?PACKAGE", $P3826)
    .const 'Sub' $P3827 = "236_1303340933.805" 
    $P3828 = $P3827."get_lexinfo"()
    $P3828."finish_static_lexpad"()
    .const 'Sub' $P3829 = "236_1303340933.805" 
    $P3830 = $P3829."get_lexinfo"()
    nqp_get_sc_object $P3831, "1303340926.369", 4
    $P3830."set_static_lexpad_value"("$?CLASS", $P3831)
    .const 'Sub' $P3832 = "236_1303340933.805" 
    $P3833 = $P3832."get_lexinfo"()
    $P3833."finish_static_lexpad"()
    get_hll_global $P3834, "NQPClassHOW"
    $P3835 = $P3834."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P3835, cur_sc
    nqp_set_sc_object "1303340926.369", 5, $P3835
    nqp_get_sc_object $P3836, "1303340926.369", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3836
    .const 'Sub' $P3837 = "244_1303340933.805" 
    $P3838 = $P3837."get_lexinfo"()
    nqp_get_sc_object $P3839, "1303340926.369", 5
    $P3838."set_static_lexpad_value"("$?PACKAGE", $P3839)
    .const 'Sub' $P3840 = "244_1303340933.805" 
    $P3841 = $P3840."get_lexinfo"()
    $P3841."finish_static_lexpad"()
    .const 'Sub' $P3842 = "244_1303340933.805" 
    $P3843 = $P3842."get_lexinfo"()
    nqp_get_sc_object $P3844, "1303340926.369", 5
    $P3843."set_static_lexpad_value"("$?CLASS", $P3844)
    .const 'Sub' $P3845 = "244_1303340933.805" 
    $P3846 = $P3845."get_lexinfo"()
    $P3846."finish_static_lexpad"()
    get_hll_global $P3847, "NQPClassHOW"
    $P3848 = $P3847."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P3848, cur_sc
    nqp_set_sc_object "1303340926.369", 6, $P3848
    nqp_get_sc_object $P3849, "1303340926.369", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3849
    .const 'Sub' $P3850 = "264_1303340933.805" 
    $P3851 = $P3850."get_lexinfo"()
    nqp_get_sc_object $P3852, "1303340926.369", 6
    $P3851."set_static_lexpad_value"("$?PACKAGE", $P3852)
    .const 'Sub' $P3853 = "264_1303340933.805" 
    $P3854 = $P3853."get_lexinfo"()
    $P3854."finish_static_lexpad"()
    .const 'Sub' $P3855 = "264_1303340933.805" 
    $P3856 = $P3855."get_lexinfo"()
    nqp_get_sc_object $P3857, "1303340926.369", 6
    $P3856."set_static_lexpad_value"("$?CLASS", $P3857)
    .const 'Sub' $P3858 = "264_1303340933.805" 
    $P3859 = $P3858."get_lexinfo"()
    $P3859."finish_static_lexpad"()
    get_hll_global $P3860, "NQPClassHOW"
    $P3861 = $P3860."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P3861, cur_sc
    nqp_set_sc_object "1303340926.369", 7, $P3861
    nqp_get_sc_object $P3862, "1303340926.369", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3862
    .const 'Sub' $P3863 = "268_1303340933.805" 
    $P3864 = $P3863."get_lexinfo"()
    nqp_get_sc_object $P3865, "1303340926.369", 7
    $P3864."set_static_lexpad_value"("$?PACKAGE", $P3865)
    .const 'Sub' $P3866 = "268_1303340933.805" 
    $P3867 = $P3866."get_lexinfo"()
    $P3867."finish_static_lexpad"()
    .const 'Sub' $P3868 = "268_1303340933.805" 
    $P3869 = $P3868."get_lexinfo"()
    nqp_get_sc_object $P3870, "1303340926.369", 7
    $P3869."set_static_lexpad_value"("$?CLASS", $P3870)
    .const 'Sub' $P3871 = "268_1303340933.805" 
    $P3872 = $P3871."get_lexinfo"()
    $P3872."finish_static_lexpad"()
  if_3766_end:
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block15"  :subid("11_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 9
    .const 'Sub' $P458 = "119_1303340933.805" 
    capture_lex $P458
    .const 'Sub' $P437 = "118_1303340933.805" 
    capture_lex $P437
    .const 'Sub' $P432 = "117_1303340933.805" 
    capture_lex $P432
    .const 'Sub' $P417 = "116_1303340933.805" 
    capture_lex $P417
    .const 'Sub' $P407 = "115_1303340933.805" 
    capture_lex $P407
    .const 'Sub' $P403 = "114_1303340933.805" 
    capture_lex $P403
    .const 'Sub' $P399 = "113_1303340933.805" 
    capture_lex $P399
    .const 'Sub' $P396 = "112_1303340933.805" 
    capture_lex $P396
    .const 'Sub' $P394 = "111_1303340933.805" 
    capture_lex $P394
    .const 'Sub' $P392 = "110_1303340933.805" 
    capture_lex $P392
    .const 'Sub' $P386 = "109_1303340933.805" 
    capture_lex $P386
    .const 'Sub' $P383 = "108_1303340933.805" 
    capture_lex $P383
    .const 'Sub' $P379 = "107_1303340933.805" 
    capture_lex $P379
    .const 'Sub' $P351 = "106_1303340933.805" 
    capture_lex $P351
    .const 'Sub' $P346 = "105_1303340933.805" 
    capture_lex $P346
    .const 'Sub' $P337 = "103_1303340933.805" 
    capture_lex $P337
    .const 'Sub' $P331 = "101_1303340933.805" 
    capture_lex $P331
    .const 'Sub' $P318 = "98_1303340933.805" 
    capture_lex $P318
    .const 'Sub' $P286 = "93_1303340933.805" 
    capture_lex $P286
    .const 'Sub' $P280 = "91_1303340933.805" 
    capture_lex $P280
    .const 'Sub' $P275 = "89_1303340933.805" 
    capture_lex $P275
    .const 'Sub' $P269 = "87_1303340933.805" 
    capture_lex $P269
    .const 'Sub' $P263 = "85_1303340933.805" 
    capture_lex $P263
    .const 'Sub' $P258 = "83_1303340933.805" 
    capture_lex $P258
    .const 'Sub' $P253 = "81_1303340933.805" 
    capture_lex $P253
    .const 'Sub' $P248 = "79_1303340933.805" 
    capture_lex $P248
    .const 'Sub' $P243 = "77_1303340933.805" 
    capture_lex $P243
    .const 'Sub' $P238 = "75_1303340933.805" 
    capture_lex $P238
    .const 'Sub' $P233 = "73_1303340933.805" 
    capture_lex $P233
    .const 'Sub' $P228 = "71_1303340933.805" 
    capture_lex $P228
    .const 'Sub' $P223 = "69_1303340933.805" 
    capture_lex $P223
    .const 'Sub' $P211 = "65_1303340933.805" 
    capture_lex $P211
    .const 'Sub' $P198 = "63_1303340933.805" 
    capture_lex $P198
    .const 'Sub' $P186 = "61_1303340933.805" 
    capture_lex $P186
    .const 'Sub' $P180 = "59_1303340933.805" 
    capture_lex $P180
    .const 'Sub' $P173 = "57_1303340933.805" 
    capture_lex $P173
    .const 'Sub' $P167 = "55_1303340933.805" 
    capture_lex $P167
    .const 'Sub' $P160 = "53_1303340933.805" 
    capture_lex $P160
    .const 'Sub' $P154 = "51_1303340933.805" 
    capture_lex $P154
    .const 'Sub' $P147 = "49_1303340933.805" 
    capture_lex $P147
    .const 'Sub' $P141 = "47_1303340933.805" 
    capture_lex $P141
    .const 'Sub' $P135 = "45_1303340933.805" 
    capture_lex $P135
    .const 'Sub' $P126 = "43_1303340933.805" 
    capture_lex $P126
    .const 'Sub' $P118 = "41_1303340933.805" 
    capture_lex $P118
    .const 'Sub' $P110 = "40_1303340933.805" 
    capture_lex $P110
    .const 'Sub' $P104 = "38_1303340933.805" 
    capture_lex $P104
    .const 'Sub' $P99 = "36_1303340933.805" 
    capture_lex $P99
    .const 'Sub' $P91 = "34_1303340933.805" 
    capture_lex $P91
    .const 'Sub' $P85 = "32_1303340933.805" 
    capture_lex $P85
    .const 'Sub' $P79 = "30_1303340933.805" 
    capture_lex $P79
    .const 'Sub' $P73 = "28_1303340933.805" 
    capture_lex $P73
    .const 'Sub' $P28 = "14_1303340933.805" 
    capture_lex $P28
    .const 'Sub' $P21 = "12_1303340933.805" 
    capture_lex $P21
.annotate 'line', 10
    new $P17, "Undef"
    .lex "$brackets", $P17
    .lex "$?PACKAGE", $P18
    .lex "$?CLASS", $P19
    new $P20, "String"
    assign $P20, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P20
.annotate 'line', 845
    .const 'Sub' $P437 = "118_1303340933.805" 
    newclosure $P456, $P437
.annotate 'line', 9
    .return ($P456)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post294") :outer("11_1303340933.805")
.annotate 'line', 9
    get_hll_global $P16, ["HLL";"Grammar"], "_block15" 
    .local pmc block
    set block, $P16
    .const 'Sub' $P458 = "119_1303340933.805" 
    capture_lex $P458
    $P458()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block457"  :anon :subid("119_1303340933.805") :outer("11_1303340933.805")
.annotate 'line', 9
    nqp_get_sc_object $P459, "1303340926.369", 1
    .local pmc type_obj
    set type_obj, $P459
    get_how $P460, type_obj
    .const 'Sub' $P461 = "12_1303340933.805" 
    $P460."add_method"(type_obj, "ws", $P461)
    get_how $P462, type_obj
    get_global $P463, "!PREFIX__ws"
    $P462."add_method"(type_obj, "!PREFIX__ws", $P463)
    get_how $P464, type_obj
    .const 'Sub' $P465 = "14_1303340933.805" 
    $P464."add_method"(type_obj, "termish", $P465)
    get_how $P466, type_obj
    get_global $P467, "!PREFIX__termish"
    $P466."add_method"(type_obj, "!PREFIX__termish", $P467)
    get_how $P468, type_obj
    .const 'Sub' $P469 = "16_1303340933.805" 
    $P468."add_method"(type_obj, "term", $P469)
    get_how $P470, type_obj
    .const 'Sub' $P471 = "17_1303340933.805" 
    $P470."add_method"(type_obj, "!PREFIX__term", $P471)
    get_how $P472, type_obj
    .const 'Sub' $P473 = "18_1303340933.805" 
    $P472."add_method"(type_obj, "infix", $P473)
    get_how $P474, type_obj
    .const 'Sub' $P475 = "19_1303340933.805" 
    $P474."add_method"(type_obj, "!PREFIX__infix", $P475)
    get_how $P476, type_obj
    .const 'Sub' $P477 = "20_1303340933.805" 
    $P476."add_method"(type_obj, "prefix", $P477)
    get_how $P478, type_obj
    .const 'Sub' $P479 = "21_1303340933.805" 
    $P478."add_method"(type_obj, "!PREFIX__prefix", $P479)
    get_how $P480, type_obj
    .const 'Sub' $P481 = "22_1303340933.805" 
    $P480."add_method"(type_obj, "postfix", $P481)
    get_how $P482, type_obj
    .const 'Sub' $P483 = "23_1303340933.805" 
    $P482."add_method"(type_obj, "!PREFIX__postfix", $P483)
    get_how $P484, type_obj
    .const 'Sub' $P485 = "24_1303340933.805" 
    $P484."add_method"(type_obj, "circumfix", $P485)
    get_how $P486, type_obj
    .const 'Sub' $P487 = "25_1303340933.805" 
    $P486."add_method"(type_obj, "!PREFIX__circumfix", $P487)
    get_how $P488, type_obj
    .const 'Sub' $P489 = "26_1303340933.805" 
    $P488."add_method"(type_obj, "postcircumfix", $P489)
    get_how $P490, type_obj
    .const 'Sub' $P491 = "27_1303340933.805" 
    $P490."add_method"(type_obj, "!PREFIX__postcircumfix", $P491)
    get_how $P492, type_obj
    .const 'Sub' $P493 = "28_1303340933.805" 
    $P492."add_method"(type_obj, "term:sym<circumfix>", $P493)
    get_how $P494, type_obj
    get_global $P495, "!PREFIX__term:sym<circumfix>"
    $P494."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P495)
    get_how $P496, type_obj
    .const 'Sub' $P497 = "30_1303340933.805" 
    $P496."add_method"(type_obj, "infixish", $P497)
    get_how $P498, type_obj
    get_global $P499, "!PREFIX__infixish"
    $P498."add_method"(type_obj, "!PREFIX__infixish", $P499)
    get_how $P500, type_obj
    .const 'Sub' $P501 = "32_1303340933.805" 
    $P500."add_method"(type_obj, "prefixish", $P501)
    get_how $P502, type_obj
    get_global $P503, "!PREFIX__prefixish"
    $P502."add_method"(type_obj, "!PREFIX__prefixish", $P503)
    get_how $P504, type_obj
    .const 'Sub' $P505 = "34_1303340933.805" 
    $P504."add_method"(type_obj, "postfixish", $P505)
    get_how $P506, type_obj
    get_global $P507, "!PREFIX__postfixish"
    $P506."add_method"(type_obj, "!PREFIX__postfixish", $P507)
    get_how $P508, type_obj
    .const 'Sub' $P509 = "36_1303340933.805" 
    $P508."add_method"(type_obj, "nullterm", $P509)
    get_how $P510, type_obj
    get_global $P511, "!PREFIX__nullterm"
    $P510."add_method"(type_obj, "!PREFIX__nullterm", $P511)
    get_how $P512, type_obj
    .const 'Sub' $P513 = "38_1303340933.805" 
    $P512."add_method"(type_obj, "nullterm_alt", $P513)
    get_how $P514, type_obj
    get_global $P515, "!PREFIX__nullterm_alt"
    $P514."add_method"(type_obj, "!PREFIX__nullterm_alt", $P515)
    get_how $P516, type_obj
    .const 'Sub' $P517 = "40_1303340933.805" 
    $P516."add_method"(type_obj, "nulltermish", $P517)
    get_how $P518, type_obj
    .const 'Sub' $P519 = "41_1303340933.805" 
    $P518."add_method"(type_obj, "quote_delimited", $P519)
    get_how $P520, type_obj
    get_global $P521, "!PREFIX__quote_delimited"
    $P520."add_method"(type_obj, "!PREFIX__quote_delimited", $P521)
    get_how $P522, type_obj
    .const 'Sub' $P523 = "43_1303340933.805" 
    $P522."add_method"(type_obj, "quote_atom", $P523)
    get_how $P524, type_obj
    get_global $P525, "!PREFIX__quote_atom"
    $P524."add_method"(type_obj, "!PREFIX__quote_atom", $P525)
    get_how $P526, type_obj
    .const 'Sub' $P527 = "45_1303340933.805" 
    $P526."add_method"(type_obj, "decint", $P527)
    get_how $P528, type_obj
    get_global $P529, "!PREFIX__decint"
    $P528."add_method"(type_obj, "!PREFIX__decint", $P529)
    get_how $P530, type_obj
    .const 'Sub' $P531 = "47_1303340933.805" 
    $P530."add_method"(type_obj, "decints", $P531)
    get_how $P532, type_obj
    get_global $P533, "!PREFIX__decints"
    $P532."add_method"(type_obj, "!PREFIX__decints", $P533)
    get_how $P534, type_obj
    .const 'Sub' $P535 = "49_1303340933.805" 
    $P534."add_method"(type_obj, "hexint", $P535)
    get_how $P536, type_obj
    get_global $P537, "!PREFIX__hexint"
    $P536."add_method"(type_obj, "!PREFIX__hexint", $P537)
    get_how $P538, type_obj
    .const 'Sub' $P539 = "51_1303340933.805" 
    $P538."add_method"(type_obj, "hexints", $P539)
    get_how $P540, type_obj
    get_global $P541, "!PREFIX__hexints"
    $P540."add_method"(type_obj, "!PREFIX__hexints", $P541)
    get_how $P542, type_obj
    .const 'Sub' $P543 = "53_1303340933.805" 
    $P542."add_method"(type_obj, "octint", $P543)
    get_how $P544, type_obj
    get_global $P545, "!PREFIX__octint"
    $P544."add_method"(type_obj, "!PREFIX__octint", $P545)
    get_how $P546, type_obj
    .const 'Sub' $P547 = "55_1303340933.805" 
    $P546."add_method"(type_obj, "octints", $P547)
    get_how $P548, type_obj
    get_global $P549, "!PREFIX__octints"
    $P548."add_method"(type_obj, "!PREFIX__octints", $P549)
    get_how $P550, type_obj
    .const 'Sub' $P551 = "57_1303340933.805" 
    $P550."add_method"(type_obj, "binint", $P551)
    get_how $P552, type_obj
    get_global $P553, "!PREFIX__binint"
    $P552."add_method"(type_obj, "!PREFIX__binint", $P553)
    get_how $P554, type_obj
    .const 'Sub' $P555 = "59_1303340933.805" 
    $P554."add_method"(type_obj, "binints", $P555)
    get_how $P556, type_obj
    get_global $P557, "!PREFIX__binints"
    $P556."add_method"(type_obj, "!PREFIX__binints", $P557)
    get_how $P558, type_obj
    .const 'Sub' $P559 = "61_1303340933.805" 
    $P558."add_method"(type_obj, "integer", $P559)
    get_how $P560, type_obj
    get_global $P561, "!PREFIX__integer"
    $P560."add_method"(type_obj, "!PREFIX__integer", $P561)
    get_how $P562, type_obj
    .const 'Sub' $P563 = "63_1303340933.805" 
    $P562."add_method"(type_obj, "dec_number", $P563)
    get_how $P564, type_obj
    get_global $P565, "!PREFIX__dec_number"
    $P564."add_method"(type_obj, "!PREFIX__dec_number", $P565)
    get_how $P566, type_obj
    .const 'Sub' $P567 = "65_1303340933.805" 
    $P566."add_method"(type_obj, "escale", $P567)
    get_how $P568, type_obj
    get_global $P569, "!PREFIX__escale"
    $P568."add_method"(type_obj, "!PREFIX__escale", $P569)
    get_how $P570, type_obj
    .const 'Sub' $P571 = "67_1303340933.805" 
    $P570."add_method"(type_obj, "quote_escape", $P571)
    get_how $P572, type_obj
    .const 'Sub' $P573 = "68_1303340933.805" 
    $P572."add_method"(type_obj, "!PREFIX__quote_escape", $P573)
    get_how $P574, type_obj
    .const 'Sub' $P575 = "69_1303340933.805" 
    $P574."add_method"(type_obj, "quote_escape:sym<backslash>", $P575)
    get_how $P576, type_obj
    get_global $P577, "!PREFIX__quote_escape:sym<backslash>"
    $P576."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P577)
    get_how $P578, type_obj
    .const 'Sub' $P579 = "71_1303340933.805" 
    $P578."add_method"(type_obj, "quote_escape:sym<stopper>", $P579)
    get_how $P580, type_obj
    get_global $P581, "!PREFIX__quote_escape:sym<stopper>"
    $P580."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P581)
    get_how $P582, type_obj
    .const 'Sub' $P583 = "73_1303340933.805" 
    $P582."add_method"(type_obj, "quote_escape:sym<bs>", $P583)
    get_how $P584, type_obj
    get_global $P585, "!PREFIX__quote_escape:sym<bs>"
    $P584."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P585)
    get_how $P586, type_obj
    .const 'Sub' $P587 = "75_1303340933.805" 
    $P586."add_method"(type_obj, "quote_escape:sym<nl>", $P587)
    get_how $P588, type_obj
    get_global $P589, "!PREFIX__quote_escape:sym<nl>"
    $P588."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P589)
    get_how $P590, type_obj
    .const 'Sub' $P591 = "77_1303340933.805" 
    $P590."add_method"(type_obj, "quote_escape:sym<cr>", $P591)
    get_how $P592, type_obj
    get_global $P593, "!PREFIX__quote_escape:sym<cr>"
    $P592."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P593)
    get_how $P594, type_obj
    .const 'Sub' $P595 = "79_1303340933.805" 
    $P594."add_method"(type_obj, "quote_escape:sym<tab>", $P595)
    get_how $P596, type_obj
    get_global $P597, "!PREFIX__quote_escape:sym<tab>"
    $P596."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P597)
    get_how $P598, type_obj
    .const 'Sub' $P599 = "81_1303340933.805" 
    $P598."add_method"(type_obj, "quote_escape:sym<ff>", $P599)
    get_how $P600, type_obj
    get_global $P601, "!PREFIX__quote_escape:sym<ff>"
    $P600."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P601)
    get_how $P602, type_obj
    .const 'Sub' $P603 = "83_1303340933.805" 
    $P602."add_method"(type_obj, "quote_escape:sym<esc>", $P603)
    get_how $P604, type_obj
    get_global $P605, "!PREFIX__quote_escape:sym<esc>"
    $P604."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P605)
    get_how $P606, type_obj
    .const 'Sub' $P607 = "85_1303340933.805" 
    $P606."add_method"(type_obj, "quote_escape:sym<hex>", $P607)
    get_how $P608, type_obj
    get_global $P609, "!PREFIX__quote_escape:sym<hex>"
    $P608."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P609)
    get_how $P610, type_obj
    .const 'Sub' $P611 = "87_1303340933.805" 
    $P610."add_method"(type_obj, "quote_escape:sym<oct>", $P611)
    get_how $P612, type_obj
    get_global $P613, "!PREFIX__quote_escape:sym<oct>"
    $P612."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P613)
    get_how $P614, type_obj
    .const 'Sub' $P615 = "89_1303340933.805" 
    $P614."add_method"(type_obj, "quote_escape:sym<chr>", $P615)
    get_how $P616, type_obj
    get_global $P617, "!PREFIX__quote_escape:sym<chr>"
    $P616."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P617)
    get_how $P618, type_obj
    .const 'Sub' $P619 = "91_1303340933.805" 
    $P618."add_method"(type_obj, "quote_escape:sym<0>", $P619)
    get_how $P620, type_obj
    get_global $P621, "!PREFIX__quote_escape:sym<0>"
    $P620."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P621)
    get_how $P622, type_obj
    .const 'Sub' $P623 = "93_1303340933.805" 
    $P622."add_method"(type_obj, "quote_escape:sym<misc>", $P623)
    get_how $P624, type_obj
    get_global $P625, "!PREFIX__quote_escape:sym<misc>"
    $P624."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P625)
    get_how $P626, type_obj
    .const 'Sub' $P627 = "98_1303340933.805" 
    $P626."add_method"(type_obj, "charname", $P627)
    get_how $P628, type_obj
    get_global $P629, "!PREFIX__charname"
    $P628."add_method"(type_obj, "!PREFIX__charname", $P629)
    get_how $P630, type_obj
    .const 'Sub' $P631 = "101_1303340933.805" 
    $P630."add_method"(type_obj, "charnames", $P631)
    get_how $P632, type_obj
    get_global $P633, "!PREFIX__charnames"
    $P632."add_method"(type_obj, "!PREFIX__charnames", $P633)
    get_how $P634, type_obj
    .const 'Sub' $P635 = "103_1303340933.805" 
    $P634."add_method"(type_obj, "charspec", $P635)
    get_how $P636, type_obj
    get_global $P637, "!PREFIX__charspec"
    $P636."add_method"(type_obj, "!PREFIX__charspec", $P637)
    get_how $P638, type_obj
    .const 'Sub' $P639 = "105_1303340933.805" 
    $P638."add_method"(type_obj, "O", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "106_1303340933.805" 
    $P640."add_method"(type_obj, "panic", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "107_1303340933.805" 
    $P642."add_method"(type_obj, "peek_delimiters", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "108_1303340933.805" 
    $P644."add_method"(type_obj, "quote_EXPR", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "109_1303340933.805" 
    $P646."add_method"(type_obj, "quotemod_check", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "110_1303340933.805" 
    $P648."add_method"(type_obj, "starter", $P649)
    get_how $P650, type_obj
    .const 'Sub' $P651 = "111_1303340933.805" 
    $P650."add_method"(type_obj, "stopper", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "112_1303340933.805" 
    $P652."add_method"(type_obj, "split_words", $P653)
    get_how $P654, type_obj
    .const 'Sub' $P655 = "113_1303340933.805" 
    $P654."add_method"(type_obj, "EXPR", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "114_1303340933.805" 
    $P656."add_method"(type_obj, "EXPR_reduce", $P657)
    get_how $P658, type_obj
    .const 'Sub' $P659 = "115_1303340933.805" 
    $P658."add_method"(type_obj, "ternary", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "116_1303340933.805" 
    $P660."add_method"(type_obj, "MARKER", $P661)
    get_how $P662, type_obj
    .const 'Sub' $P663 = "117_1303340933.805" 
    $P662."add_method"(type_obj, "MARKED", $P663)
    get_how $P664, type_obj
    .const 'Sub' $P665 = "118_1303340933.805" 
    $P664."add_method"(type_obj, "LANG", $P665)
    get_how $P666, type_obj
    get_hll_global $P667, ["Regex"], "Cursor"
    $P666."add_parent"(type_obj, $P667)
    get_how $P668, type_obj
    $P669 = $P668."compose"(type_obj)
    .return ($P669)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    .local pmc rx22_debug
    (rx22_cur, rx22_pos, rx22_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx22_cur
    .local pmc match
    .lex "$/", match
    length rx22_eos, rx22_tgt
    gt rx22_pos, rx22_eos, rx22_done
    set rx22_off, 0
    lt rx22_pos, 2, rx22_start
    sub rx22_off, rx22_pos, 1
    substr rx22_tgt, rx22_tgt, rx22_off
  rx22_start:
    eq $I10, 1, rx22_restart
    if_null rx22_debug, debug_295
    rx22_cur."!cursor_debug"("START", "ws")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan25_done
    goto rxscan25_scan
  rxscan25_loop:
    (rx22_pos) = rx22_cur."from"()
    inc rx22_pos
    rx22_cur."!cursor_from"(rx22_pos)
    ge rx22_pos, rx22_eos, rxscan25_done
  rxscan25_scan:
    set_addr $I10, rxscan25_loop
    rx22_cur."!mark_push"(0, rx22_pos, $I10)
  rxscan25_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx22_cur."!cursor_pos"(rx22_pos)
    $P10 = rx22_cur."ww"()
    if $P10, rx22_fail
  # rx rxquantr26 ** 0..*
    set_addr $I10, rxquantr26_done
    rx22_cur."!mark_push"(0, rx22_pos, $I10)
  rxquantr26_loop:
  alt27_0:
    set_addr $I10, alt27_1
    rx22_cur."!mark_push"(0, rx22_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx22_pos, rx22_off
    find_not_cclass $I11, 32, rx22_tgt, $I10, rx22_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx22_fail
    add rx22_pos, rx22_off, $I11
    goto alt27_end
  alt27_1:
  # rx literal  "#"
    add $I11, rx22_pos, 1
    gt $I11, rx22_eos, rx22_fail
    sub $I11, rx22_pos, rx22_off
    ord $I11, rx22_tgt, $I11
    ne $I11, 35, rx22_fail
    add rx22_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx22_pos, rx22_off
    find_cclass $I11, 4096, rx22_tgt, $I10, rx22_eos
    add rx22_pos, rx22_off, $I11
  alt27_end:
    set_addr $I10, rxquantr26_done
    (rx22_rep) = rx22_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr26_done
    rx22_cur."!mark_push"(rx22_rep, rx22_pos, $I10)
    goto rxquantr26_loop
  rxquantr26_done:
  # rx pass
    rx22_cur."!cursor_pass"(rx22_pos, "ws")
    if_null rx22_debug, debug_296
    rx22_cur."!cursor_debug"("PASS", "ws", " at pos=", rx22_pos)
  debug_296:
    .return (rx22_cur)
  rx22_restart:
.annotate 'line', 10
    if_null rx22_debug, debug_297
    rx22_cur."!cursor_debug"("NEXT", "ws")
  debug_297:
  rx22_fail:
    (rx22_rep, rx22_pos, $I10, $P10) = rx22_cur."!mark_fail"(0)
    lt rx22_pos, -1, rx22_done
    eq rx22_pos, -1, rx22_fail
    jump $I10
  rx22_done:
    rx22_cur."!cursor_fail"()
    if_null rx22_debug, debug_298
    rx22_cur."!cursor_debug"("FAIL", "ws")
  debug_298:
    .return (rx22_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303340933.805") :method
.annotate 'line', 10
    new $P24, "ResizablePMCArray"
    push $P24, ""
    .return ($P24)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    .local pmc rx29_debug
    (rx29_cur, rx29_pos, rx29_tgt, $I10) = self."!cursor_start"()
    rx29_cur."!cursor_caparray"("prefixish", "postfixish")
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
    if_null rx29_debug, debug_299
    rx29_cur."!cursor_debug"("START", "termish")
  debug_299:
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
.annotate 'line', 15
  # rx rxquantr33 ** 0..*
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr33_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."prefixish"()
    unless $P10, rx29_fail
    goto rxsubrule34_pass
  rxsubrule34_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx29_fail
  rxsubrule34_pass:
    set_addr $I10, rxsubrule34_back
    rx29_cur."!mark_push"(0, rx29_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx29_pos = $P10."pos"()
    set_addr $I10, rxquantr33_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr33_loop
  rxquantr33_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."term"()
    unless $P10, rx29_fail
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx29_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr35 ** 0..*
    set_addr $I10, rxquantr35_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr35_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."postfixish"()
    unless $P10, rx29_fail
    goto rxsubrule36_pass
  rxsubrule36_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx29_fail
  rxsubrule36_pass:
    set_addr $I10, rxsubrule36_back
    rx29_cur."!mark_push"(0, rx29_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx29_pos = $P10."pos"()
    set_addr $I10, rxquantr35_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr35_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr35_loop
  rxquantr35_done:
.annotate 'line', 14
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "termish")
    if_null rx29_debug, debug_300
    rx29_cur."!cursor_debug"("PASS", "termish", " at pos=", rx29_pos)
  debug_300:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 10
    if_null rx29_debug, debug_301
    rx29_cur."!cursor_debug"("NEXT", "termish")
  debug_301:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_302
    rx29_cur."!cursor_debug"("FAIL", "termish")
  debug_302:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303340933.805") :method
.annotate 'line', 10
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303340933.805")
    .param pmc param_38
.annotate 'line', 20
    .lex "self", param_38
    $P39 = param_38."!protoregex"("term")
    .return ($P39)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303340933.805")
    .param pmc param_41
.annotate 'line', 20
    .lex "self", param_41
    $P42 = param_41."!PREFIX__!protoregex"("term")
    .return ($P42)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303340933.805")
    .param pmc param_44
.annotate 'line', 21
    .lex "self", param_44
    $P45 = param_44."!protoregex"("infix")
    .return ($P45)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303340933.805")
    .param pmc param_47
.annotate 'line', 21
    .lex "self", param_47
    $P48 = param_47."!PREFIX__!protoregex"("infix")
    .return ($P48)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303340933.805")
    .param pmc param_50
.annotate 'line', 22
    .lex "self", param_50
    $P51 = param_50."!protoregex"("prefix")
    .return ($P51)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303340933.805")
    .param pmc param_53
.annotate 'line', 22
    .lex "self", param_53
    $P54 = param_53."!PREFIX__!protoregex"("prefix")
    .return ($P54)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303340933.805")
    .param pmc param_56
.annotate 'line', 23
    .lex "self", param_56
    $P57 = param_56."!protoregex"("postfix")
    .return ($P57)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303340933.805")
    .param pmc param_59
.annotate 'line', 23
    .lex "self", param_59
    $P60 = param_59."!PREFIX__!protoregex"("postfix")
    .return ($P60)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303340933.805")
    .param pmc param_62
.annotate 'line', 24
    .lex "self", param_62
    $P63 = param_62."!protoregex"("circumfix")
    .return ($P63)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303340933.805")
    .param pmc param_65
.annotate 'line', 24
    .lex "self", param_65
    $P66 = param_65."!PREFIX__!protoregex"("circumfix")
    .return ($P66)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303340933.805")
    .param pmc param_68
.annotate 'line', 25
    .lex "self", param_68
    $P69 = param_68."!protoregex"("postcircumfix")
    .return ($P69)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303340933.805")
    .param pmc param_71
.annotate 'line', 25
    .lex "self", param_71
    $P72 = param_71."!PREFIX__!protoregex"("postcircumfix")
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    .local pmc rx74_debug
    (rx74_cur, rx74_pos, rx74_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx74_cur
    .local pmc match
    .lex "$/", match
    length rx74_eos, rx74_tgt
    gt rx74_pos, rx74_eos, rx74_done
    set rx74_off, 0
    lt rx74_pos, 2, rx74_start
    sub rx74_off, rx74_pos, 1
    substr rx74_tgt, rx74_tgt, rx74_off
  rx74_start:
    eq $I10, 1, rx74_restart
    if_null rx74_debug, debug_303
    rx74_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan78_done
    goto rxscan78_scan
  rxscan78_loop:
    (rx74_pos) = rx74_cur."from"()
    inc rx74_pos
    rx74_cur."!cursor_from"(rx74_pos)
    ge rx74_pos, rx74_eos, rxscan78_done
  rxscan78_scan:
    set_addr $I10, rxscan78_loop
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
  rxscan78_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."circumfix"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx74_pos = $P10."pos"()
  # rx pass
    rx74_cur."!cursor_pass"(rx74_pos, "term:sym<circumfix>")
    if_null rx74_debug, debug_304
    rx74_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx74_pos)
  debug_304:
    .return (rx74_cur)
  rx74_restart:
.annotate 'line', 10
    if_null rx74_debug, debug_305
    rx74_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_305:
  rx74_fail:
    (rx74_rep, rx74_pos, $I10, $P10) = rx74_cur."!mark_fail"(0)
    lt rx74_pos, -1, rx74_done
    eq rx74_pos, -1, rx74_fail
    jump $I10
  rx74_done:
    rx74_cur."!cursor_fail"()
    if_null rx74_debug, debug_306
    rx74_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_306:
    .return (rx74_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303340933.805") :method
.annotate 'line', 10
    $P76 = self."!PREFIX__!subrule"("circumfix", "")
    new $P77, "ResizablePMCArray"
    push $P77, $P76
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    .local pmc rx80_debug
    (rx80_cur, rx80_pos, rx80_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx80_cur
    .local pmc match
    .lex "$/", match
    length rx80_eos, rx80_tgt
    gt rx80_pos, rx80_eos, rx80_done
    set rx80_off, 0
    lt rx80_pos, 2, rx80_start
    sub rx80_off, rx80_pos, 1
    substr rx80_tgt, rx80_tgt, rx80_off
  rx80_start:
    eq $I10, 1, rx80_restart
    if_null rx80_debug, debug_307
    rx80_cur."!cursor_debug"("START", "infixish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan84_done
    goto rxscan84_scan
  rxscan84_loop:
    (rx80_pos) = rx80_cur."from"()
    inc rx80_pos
    rx80_cur."!cursor_from"(rx80_pos)
    ge rx80_pos, rx80_eos, rxscan84_done
  rxscan84_scan:
    set_addr $I10, rxscan84_loop
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  rxscan84_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."infix"()
    unless $P10, rx80_fail
    rx80_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx80_pos = $P10."pos"()
  # rx pass
    rx80_cur."!cursor_pass"(rx80_pos, "infixish")
    if_null rx80_debug, debug_308
    rx80_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx80_pos)
  debug_308:
    .return (rx80_cur)
  rx80_restart:
.annotate 'line', 10
    if_null rx80_debug, debug_309
    rx80_cur."!cursor_debug"("NEXT", "infixish")
  debug_309:
  rx80_fail:
    (rx80_rep, rx80_pos, $I10, $P10) = rx80_cur."!mark_fail"(0)
    lt rx80_pos, -1, rx80_done
    eq rx80_pos, -1, rx80_fail
    jump $I10
  rx80_done:
    rx80_cur."!cursor_fail"()
    if_null rx80_debug, debug_310
    rx80_cur."!cursor_debug"("FAIL", "infixish")
  debug_310:
    .return (rx80_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303340933.805") :method
.annotate 'line', 10
    $P82 = self."!PREFIX__!subrule"("infix", "")
    new $P83, "ResizablePMCArray"
    push $P83, $P82
    .return ($P83)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    .local pmc rx86_debug
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx86_cur
    .local pmc match
    .lex "$/", match
    length rx86_eos, rx86_tgt
    gt rx86_pos, rx86_eos, rx86_done
    set rx86_off, 0
    lt rx86_pos, 2, rx86_start
    sub rx86_off, rx86_pos, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
    eq $I10, 1, rx86_restart
    if_null rx86_debug, debug_311
    rx86_cur."!cursor_debug"("START", "prefixish")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan90_done
    goto rxscan90_scan
  rxscan90_loop:
    (rx86_pos) = rx86_cur."from"()
    inc rx86_pos
    rx86_cur."!cursor_from"(rx86_pos)
    ge rx86_pos, rx86_eos, rxscan90_done
  rxscan90_scan:
    set_addr $I10, rxscan90_loop
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  rxscan90_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."prefix"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx86_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."ws"()
    unless $P10, rx86_fail
    rx86_pos = $P10."pos"()
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "prefixish")
    if_null rx86_debug, debug_312
    rx86_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx86_pos)
  debug_312:
    .return (rx86_cur)
  rx86_restart:
.annotate 'line', 10
    if_null rx86_debug, debug_313
    rx86_cur."!cursor_debug"("NEXT", "prefixish")
  debug_313:
  rx86_fail:
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    if_null rx86_debug, debug_314
    rx86_cur."!cursor_debug"("FAIL", "prefixish")
  debug_314:
    .return (rx86_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303340933.805") :method
.annotate 'line', 10
    $P88 = self."!PREFIX__!subrule"("prefix", "")
    new $P89, "ResizablePMCArray"
    push $P89, $P88
    .return ($P89)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx92_tgt
    .local int rx92_pos
    .local int rx92_off
    .local int rx92_eos
    .local int rx92_rep
    .local pmc rx92_cur
    .local pmc rx92_debug
    (rx92_cur, rx92_pos, rx92_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx92_cur
    .local pmc match
    .lex "$/", match
    length rx92_eos, rx92_tgt
    gt rx92_pos, rx92_eos, rx92_done
    set rx92_off, 0
    lt rx92_pos, 2, rx92_start
    sub rx92_off, rx92_pos, 1
    substr rx92_tgt, rx92_tgt, rx92_off
  rx92_start:
    eq $I10, 1, rx92_restart
    if_null rx92_debug, debug_315
    rx92_cur."!cursor_debug"("START", "postfixish")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan97_done
    goto rxscan97_scan
  rxscan97_loop:
    (rx92_pos) = rx92_cur."from"()
    inc rx92_pos
    rx92_cur."!cursor_from"(rx92_pos)
    ge rx92_pos, rx92_eos, rxscan97_done
  rxscan97_scan:
    set_addr $I10, rxscan97_loop
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  rxscan97_done:
  alt98_0:
.annotate 'line', 31
    set_addr $I10, alt98_1
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."postfix"()
    unless $P10, rx92_fail
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx92_pos = $P10."pos"()
    goto alt98_end
  alt98_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."postcircumfix"()
    unless $P10, rx92_fail
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx92_pos = $P10."pos"()
  alt98_end:
.annotate 'line', 31
  # rx pass
    rx92_cur."!cursor_pass"(rx92_pos, "postfixish")
    if_null rx92_debug, debug_316
    rx92_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx92_pos)
  debug_316:
    .return (rx92_cur)
  rx92_restart:
.annotate 'line', 10
    if_null rx92_debug, debug_317
    rx92_cur."!cursor_debug"("NEXT", "postfixish")
  debug_317:
  rx92_fail:
    (rx92_rep, rx92_pos, $I10, $P10) = rx92_cur."!mark_fail"(0)
    lt rx92_pos, -1, rx92_done
    eq rx92_pos, -1, rx92_fail
    jump $I10
  rx92_done:
    rx92_cur."!cursor_fail"()
    if_null rx92_debug, debug_318
    rx92_cur."!cursor_debug"("FAIL", "postfixish")
  debug_318:
    .return (rx92_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303340933.805") :method
.annotate 'line', 10
    $P94 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P95 = self."!PREFIX__!subrule"("postfix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P94
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    .local pmc rx100_debug
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx100_cur
    .local pmc match
    .lex "$/", match
    length rx100_eos, rx100_tgt
    gt rx100_pos, rx100_eos, rx100_done
    set rx100_off, 0
    lt rx100_pos, 2, rx100_start
    sub rx100_off, rx100_pos, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
    eq $I10, 1, rx100_restart
    if_null rx100_debug, debug_319
    rx100_cur."!cursor_debug"("START", "nullterm")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan103_done
    goto rxscan103_scan
  rxscan103_loop:
    (rx100_pos) = rx100_cur."from"()
    inc rx100_pos
    rx100_cur."!cursor_from"(rx100_pos)
    ge rx100_pos, rx100_eos, rxscan103_done
  rxscan103_scan:
    set_addr $I10, rxscan103_loop
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  rxscan103_done:
.annotate 'line', 36
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "nullterm")
    if_null rx100_debug, debug_320
    rx100_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx100_pos)
  debug_320:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 10
    if_null rx100_debug, debug_321
    rx100_cur."!cursor_debug"("NEXT", "nullterm")
  debug_321:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_322
    rx100_cur."!cursor_debug"("FAIL", "nullterm")
  debug_322:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303340933.805") :method
.annotate 'line', 10
    new $P102, "ResizablePMCArray"
    push $P102, ""
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 10
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    .local pmc rx105_debug
    (rx105_cur, rx105_pos, rx105_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx105_cur
    .local pmc match
    .lex "$/", match
    length rx105_eos, rx105_tgt
    gt rx105_pos, rx105_eos, rx105_done
    set rx105_off, 0
    lt rx105_pos, 2, rx105_start
    sub rx105_off, rx105_pos, 1
    substr rx105_tgt, rx105_tgt, rx105_off
  rx105_start:
    eq $I10, 1, rx105_restart
    if_null rx105_debug, debug_323
    rx105_cur."!cursor_debug"("START", "nullterm_alt")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    (rx105_pos) = rx105_cur."from"()
    inc rx105_pos
    rx105_cur."!cursor_from"(rx105_pos)
    ge rx105_pos, rx105_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  rxscan109_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."nullterm"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx105_pos = $P10."pos"()
  # rx pass
    rx105_cur."!cursor_pass"(rx105_pos, "nullterm_alt")
    if_null rx105_debug, debug_324
    rx105_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx105_pos)
  debug_324:
    .return (rx105_cur)
  rx105_restart:
.annotate 'line', 10
    if_null rx105_debug, debug_325
    rx105_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_325:
  rx105_fail:
    (rx105_rep, rx105_pos, $I10, $P10) = rx105_cur."!mark_fail"(0)
    lt rx105_pos, -1, rx105_done
    eq rx105_pos, -1, rx105_fail
    jump $I10
  rx105_done:
    rx105_cur."!cursor_fail"()
    if_null rx105_debug, debug_326
    rx105_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_326:
    .return (rx105_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303340933.805") :method
.annotate 'line', 10
    $P107 = self."!PREFIX__!subrule"("nullterm", "")
    new $P108, "ResizablePMCArray"
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_111
.annotate 'line', 40
    .lex "self", param_111
    find_lex $P114, "self"
    $P115 = $P114."termish"()
    unless $P115, unless_113
    set $P112, $P115
    goto unless_113_end
  unless_113:
    find_lex $P116, "self"
    $P117 = $P116."nullterm_alt"()
    set $P112, $P117
  unless_113_end:
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    .local pmc rx119_debug
    (rx119_cur, rx119_pos, rx119_tgt, $I10) = self."!cursor_start"()
    rx119_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx119_cur
    .local pmc match
    .lex "$/", match
    length rx119_eos, rx119_tgt
    gt rx119_pos, rx119_eos, rx119_done
    set rx119_off, 0
    lt rx119_pos, 2, rx119_start
    sub rx119_off, rx119_pos, 1
    substr rx119_tgt, rx119_tgt, rx119_off
  rx119_start:
    eq $I10, 1, rx119_restart
    if_null rx119_debug, debug_327
    rx119_cur."!cursor_debug"("START", "quote_delimited")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan123_done
    goto rxscan123_scan
  rxscan123_loop:
    (rx119_pos) = rx119_cur."from"()
    inc rx119_pos
    rx119_cur."!cursor_from"(rx119_pos)
    ge rx119_pos, rx119_eos, rxscan123_done
  rxscan123_scan:
    set_addr $I10, rxscan123_loop
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  rxscan123_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."starter"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx119_pos = $P10."pos"()
  # rx rxquantr124 ** 0..*
    set_addr $I10, rxquantr124_done
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  rxquantr124_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."quote_atom"()
    unless $P10, rx119_fail
    goto rxsubrule125_pass
  rxsubrule125_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx119_fail
  rxsubrule125_pass:
    set_addr $I10, rxsubrule125_back
    rx119_cur."!mark_push"(0, rx119_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx119_pos = $P10."pos"()
    set_addr $I10, rxquantr124_done
    (rx119_rep) = rx119_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr124_done
    rx119_cur."!mark_push"(rx119_rep, rx119_pos, $I10)
    goto rxquantr124_loop
  rxquantr124_done:
  # rx subrule "stopper" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."stopper"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx119_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx119_cur."!cursor_pass"(rx119_pos, "quote_delimited")
    if_null rx119_debug, debug_328
    rx119_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx119_pos)
  debug_328:
    .return (rx119_cur)
  rx119_restart:
.annotate 'line', 40
    if_null rx119_debug, debug_329
    rx119_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_329:
  rx119_fail:
    (rx119_rep, rx119_pos, $I10, $P10) = rx119_cur."!mark_fail"(0)
    lt rx119_pos, -1, rx119_done
    eq rx119_pos, -1, rx119_fail
    jump $I10
  rx119_done:
    rx119_cur."!cursor_fail"()
    if_null rx119_debug, debug_330
    rx119_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_330:
    .return (rx119_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303340933.805") :method
.annotate 'line', 40
    $P121 = self."!PREFIX__!subrule"("starter", "")
    new $P122, "ResizablePMCArray"
    push $P122, $P121
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    .local pmc rx127_debug
    (rx127_cur, rx127_pos, rx127_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx127_cur
    .local pmc match
    .lex "$/", match
    length rx127_eos, rx127_tgt
    gt rx127_pos, rx127_eos, rx127_done
    set rx127_off, 0
    lt rx127_pos, 2, rx127_start
    sub rx127_off, rx127_pos, 1
    substr rx127_tgt, rx127_tgt, rx127_off
  rx127_start:
    eq $I10, 1, rx127_restart
    if_null rx127_debug, debug_331
    rx127_cur."!cursor_debug"("START", "quote_atom")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    (rx127_pos) = rx127_cur."from"()
    inc rx127_pos
    rx127_cur."!cursor_from"(rx127_pos)
    ge rx127_pos, rx127_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxscan130_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."stopper"()
    if $P10, rx127_fail
  alt131_0:
.annotate 'line', 49
    set_addr $I10, alt131_1
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."quote_escape"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx127_pos = $P10."pos"()
    goto alt131_end
  alt131_1:
.annotate 'line', 51
  # rx rxquantr132 ** 1..*
    set_addr $I10, rxquantr132_done
    rx127_cur."!mark_push"(0, -1, $I10)
  rxquantr132_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."stopper"()
    if $P10, rx127_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."quote_escape"()
    if $P10, rx127_fail
  # rx charclass .
    ge rx127_pos, rx127_eos, rx127_fail
    inc rx127_pos
    set_addr $I10, rxquantr132_done
    (rx127_rep) = rx127_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr132_done
    rx127_cur."!mark_push"(rx127_rep, rx127_pos, $I10)
    goto rxquantr132_loop
  rxquantr132_done:
  alt131_end:
.annotate 'line', 47
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "quote_atom")
    if_null rx127_debug, debug_332
    rx127_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx127_pos)
  debug_332:
    .return (rx127_cur)
  rx127_restart:
.annotate 'line', 40
    if_null rx127_debug, debug_333
    rx127_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_333:
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    if_null rx127_debug, debug_334
    rx127_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_334:
    .return (rx127_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303340933.805") :method
.annotate 'line', 40
    new $P129, "ResizablePMCArray"
    push $P129, ""
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_debug
    (rx136_cur, rx136_pos, rx136_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx136_cur
    .local pmc match
    .lex "$/", match
    length rx136_eos, rx136_tgt
    gt rx136_pos, rx136_eos, rx136_done
    set rx136_off, 0
    lt rx136_pos, 2, rx136_start
    sub rx136_off, rx136_pos, 1
    substr rx136_tgt, rx136_tgt, rx136_off
  rx136_start:
    eq $I10, 1, rx136_restart
    if_null rx136_debug, debug_335
    rx136_cur."!cursor_debug"("START", "decint")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan139_done
    goto rxscan139_scan
  rxscan139_loop:
    (rx136_pos) = rx136_cur."from"()
    inc rx136_pos
    rx136_cur."!cursor_from"(rx136_pos)
    ge rx136_pos, rx136_eos, rxscan139_done
  rxscan139_scan:
    set_addr $I10, rxscan139_loop
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxscan139_done:
.annotate 'line', 55
  # rx rxquantr140 ** 1..*
    set_addr $I10, rxquantr140_done
    rx136_cur."!mark_push"(0, -1, $I10)
  rxquantr140_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx136_pos, rx136_off
    find_not_cclass $I11, 8, rx136_tgt, $I10, rx136_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx136_fail
    add rx136_pos, rx136_off, $I11
    set_addr $I10, rxquantr140_done
    (rx136_rep) = rx136_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr140_done
    rx136_cur."!mark_push"(rx136_rep, rx136_pos, $I10)
  # rx literal  "_"
    add $I11, rx136_pos, 1
    gt $I11, rx136_eos, rx136_fail
    sub $I11, rx136_pos, rx136_off
    ord $I11, rx136_tgt, $I11
    ne $I11, 95, rx136_fail
    add rx136_pos, 1
    goto rxquantr140_loop
  rxquantr140_done:
  # rx pass
    rx136_cur."!cursor_pass"(rx136_pos, "decint")
    if_null rx136_debug, debug_336
    rx136_cur."!cursor_debug"("PASS", "decint", " at pos=", rx136_pos)
  debug_336:
    .return (rx136_cur)
  rx136_restart:
.annotate 'line', 40
    if_null rx136_debug, debug_337
    rx136_cur."!cursor_debug"("NEXT", "decint")
  debug_337:
  rx136_fail:
    (rx136_rep, rx136_pos, $I10, $P10) = rx136_cur."!mark_fail"(0)
    lt rx136_pos, -1, rx136_done
    eq rx136_pos, -1, rx136_fail
    jump $I10
  rx136_done:
    rx136_cur."!cursor_fail"()
    if_null rx136_debug, debug_338
    rx136_cur."!cursor_debug"("FAIL", "decint")
  debug_338:
    .return (rx136_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303340933.805") :method
.annotate 'line', 40
    new $P138, "ResizablePMCArray"
    push $P138, ""
    .return ($P138)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    .local pmc rx142_debug
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    rx142_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx142_cur
    .local pmc match
    .lex "$/", match
    length rx142_eos, rx142_tgt
    gt rx142_pos, rx142_eos, rx142_done
    set rx142_off, 0
    lt rx142_pos, 2, rx142_start
    sub rx142_off, rx142_pos, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
    eq $I10, 1, rx142_restart
    if_null rx142_debug, debug_339
    rx142_cur."!cursor_debug"("START", "decints")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan145_done
    goto rxscan145_scan
  rxscan145_loop:
    (rx142_pos) = rx142_cur."from"()
    inc rx142_pos
    rx142_cur."!cursor_from"(rx142_pos)
    ge rx142_pos, rx142_eos, rxscan145_done
  rxscan145_scan:
    set_addr $I10, rxscan145_loop
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  rxscan145_done:
.annotate 'line', 56
  # rx rxquantr146 ** 1..*
    set_addr $I10, rxquantr146_done
    rx142_cur."!mark_push"(0, -1, $I10)
  rxquantr146_loop:
  # rx subrule "ws" subtype=method negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."ws"()
    unless $P10, rx142_fail
    rx142_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."decint"()
    unless $P10, rx142_fail
    rx142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx142_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."ws"()
    unless $P10, rx142_fail
    rx142_pos = $P10."pos"()
    set_addr $I10, rxquantr146_done
    (rx142_rep) = rx142_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr146_done
    rx142_cur."!mark_push"(rx142_rep, rx142_pos, $I10)
  # rx literal  ","
    add $I11, rx142_pos, 1
    gt $I11, rx142_eos, rx142_fail
    sub $I11, rx142_pos, rx142_off
    ord $I11, rx142_tgt, $I11
    ne $I11, 44, rx142_fail
    add rx142_pos, 1
    goto rxquantr146_loop
  rxquantr146_done:
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "decints")
    if_null rx142_debug, debug_340
    rx142_cur."!cursor_debug"("PASS", "decints", " at pos=", rx142_pos)
  debug_340:
    .return (rx142_cur)
  rx142_restart:
.annotate 'line', 40
    if_null rx142_debug, debug_341
    rx142_cur."!cursor_debug"("NEXT", "decints")
  debug_341:
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    if_null rx142_debug, debug_342
    rx142_cur."!cursor_debug"("FAIL", "decints")
  debug_342:
    .return (rx142_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303340933.805") :method
.annotate 'line', 40
    new $P144, "ResizablePMCArray"
    push $P144, ""
    .return ($P144)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    .local pmc rx148_debug
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx148_cur
    .local pmc match
    .lex "$/", match
    length rx148_eos, rx148_tgt
    gt rx148_pos, rx148_eos, rx148_done
    set rx148_off, 0
    lt rx148_pos, 2, rx148_start
    sub rx148_off, rx148_pos, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
    eq $I10, 1, rx148_restart
    if_null rx148_debug, debug_343
    rx148_cur."!cursor_debug"("START", "hexint")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan151_done
    goto rxscan151_scan
  rxscan151_loop:
    (rx148_pos) = rx148_cur."from"()
    inc rx148_pos
    rx148_cur."!cursor_from"(rx148_pos)
    ge rx148_pos, rx148_eos, rxscan151_done
  rxscan151_scan:
    set_addr $I10, rxscan151_loop
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxscan151_done:
.annotate 'line', 58
  # rx rxquantr152 ** 1..*
    set_addr $I10, rxquantr152_done
    rx148_cur."!mark_push"(0, -1, $I10)
  rxquantr152_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx148_pos, rx148_off
    set rx148_rep, 0
    sub $I12, rx148_eos, rx148_pos
  rxenumcharlistq153_loop:
    le $I12, 0, rxenumcharlistq153_done
    substr $S10, rx148_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq153_done
    inc rx148_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq153_loop
  rxenumcharlistq153_done:
    lt rx148_rep, 1, rx148_fail
    add rx148_pos, rx148_pos, rx148_rep
    set_addr $I10, rxquantr152_done
    (rx148_rep) = rx148_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr152_done
    rx148_cur."!mark_push"(rx148_rep, rx148_pos, $I10)
  # rx literal  "_"
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail
    sub $I11, rx148_pos, rx148_off
    ord $I11, rx148_tgt, $I11
    ne $I11, 95, rx148_fail
    add rx148_pos, 1
    goto rxquantr152_loop
  rxquantr152_done:
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "hexint")
    if_null rx148_debug, debug_344
    rx148_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx148_pos)
  debug_344:
    .return (rx148_cur)
  rx148_restart:
.annotate 'line', 40
    if_null rx148_debug, debug_345
    rx148_cur."!cursor_debug"("NEXT", "hexint")
  debug_345:
  rx148_fail:
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    if_null rx148_debug, debug_346
    rx148_cur."!cursor_debug"("FAIL", "hexint")
  debug_346:
    .return (rx148_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303340933.805") :method
.annotate 'line', 40
    new $P150, "ResizablePMCArray"
    push $P150, ""
    .return ($P150)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    rx155_cur."!cursor_caparray"("hexint")
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
    if_null rx155_debug, debug_347
    rx155_cur."!cursor_debug"("START", "hexints")
  debug_347:
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
.annotate 'line', 59
  # rx rxquantr159 ** 1..*
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(0, -1, $I10)
  rxquantr159_loop:
  # rx subrule "ws" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."ws"()
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."hexint"()
    unless $P10, rx155_fail
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx155_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."ws"()
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
    set_addr $I10, rxquantr159_done
    (rx155_rep) = rx155_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(rx155_rep, rx155_pos, $I10)
  # rx literal  ","
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 44, rx155_fail
    add rx155_pos, 1
    goto rxquantr159_loop
  rxquantr159_done:
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "hexints")
    if_null rx155_debug, debug_348
    rx155_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx155_pos)
  debug_348:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 40
    if_null rx155_debug, debug_349
    rx155_cur."!cursor_debug"("NEXT", "hexints")
  debug_349:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_350
    rx155_cur."!cursor_debug"("FAIL", "hexints")
  debug_350:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303340933.805") :method
.annotate 'line', 40
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    .local pmc rx161_debug
    (rx161_cur, rx161_pos, rx161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx161_cur
    .local pmc match
    .lex "$/", match
    length rx161_eos, rx161_tgt
    gt rx161_pos, rx161_eos, rx161_done
    set rx161_off, 0
    lt rx161_pos, 2, rx161_start
    sub rx161_off, rx161_pos, 1
    substr rx161_tgt, rx161_tgt, rx161_off
  rx161_start:
    eq $I10, 1, rx161_restart
    if_null rx161_debug, debug_351
    rx161_cur."!cursor_debug"("START", "octint")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan164_done
    goto rxscan164_scan
  rxscan164_loop:
    (rx161_pos) = rx161_cur."from"()
    inc rx161_pos
    rx161_cur."!cursor_from"(rx161_pos)
    ge rx161_pos, rx161_eos, rxscan164_done
  rxscan164_scan:
    set_addr $I10, rxscan164_loop
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  rxscan164_done:
.annotate 'line', 61
  # rx rxquantr165 ** 1..*
    set_addr $I10, rxquantr165_done
    rx161_cur."!mark_push"(0, -1, $I10)
  rxquantr165_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx161_pos, rx161_off
    set rx161_rep, 0
    sub $I12, rx161_eos, rx161_pos
  rxenumcharlistq166_loop:
    le $I12, 0, rxenumcharlistq166_done
    substr $S10, rx161_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq166_done
    inc rx161_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq166_loop
  rxenumcharlistq166_done:
    lt rx161_rep, 1, rx161_fail
    add rx161_pos, rx161_pos, rx161_rep
    set_addr $I10, rxquantr165_done
    (rx161_rep) = rx161_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr165_done
    rx161_cur."!mark_push"(rx161_rep, rx161_pos, $I10)
  # rx literal  "_"
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail
    sub $I11, rx161_pos, rx161_off
    ord $I11, rx161_tgt, $I11
    ne $I11, 95, rx161_fail
    add rx161_pos, 1
    goto rxquantr165_loop
  rxquantr165_done:
  # rx pass
    rx161_cur."!cursor_pass"(rx161_pos, "octint")
    if_null rx161_debug, debug_352
    rx161_cur."!cursor_debug"("PASS", "octint", " at pos=", rx161_pos)
  debug_352:
    .return (rx161_cur)
  rx161_restart:
.annotate 'line', 40
    if_null rx161_debug, debug_353
    rx161_cur."!cursor_debug"("NEXT", "octint")
  debug_353:
  rx161_fail:
    (rx161_rep, rx161_pos, $I10, $P10) = rx161_cur."!mark_fail"(0)
    lt rx161_pos, -1, rx161_done
    eq rx161_pos, -1, rx161_fail
    jump $I10
  rx161_done:
    rx161_cur."!cursor_fail"()
    if_null rx161_debug, debug_354
    rx161_cur."!cursor_debug"("FAIL", "octint")
  debug_354:
    .return (rx161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303340933.805") :method
.annotate 'line', 40
    new $P163, "ResizablePMCArray"
    push $P163, ""
    .return ($P163)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_debug
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    rx168_cur."!cursor_caparray"("octint")
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
    if_null rx168_debug, debug_355
    rx168_cur."!cursor_debug"("START", "octints")
  debug_355:
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
.annotate 'line', 62
  # rx rxquantr172 ** 1..*
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(0, -1, $I10)
  rxquantr172_loop:
  # rx subrule "ws" subtype=method negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."ws"()
    unless $P10, rx168_fail
    rx168_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."octint"()
    unless $P10, rx168_fail
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx168_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."ws"()
    unless $P10, rx168_fail
    rx168_pos = $P10."pos"()
    set_addr $I10, rxquantr172_done
    (rx168_rep) = rx168_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(rx168_rep, rx168_pos, $I10)
  # rx literal  ","
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 44, rx168_fail
    add rx168_pos, 1
    goto rxquantr172_loop
  rxquantr172_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "octints")
    if_null rx168_debug, debug_356
    rx168_cur."!cursor_debug"("PASS", "octints", " at pos=", rx168_pos)
  debug_356:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 40
    if_null rx168_debug, debug_357
    rx168_cur."!cursor_debug"("NEXT", "octints")
  debug_357:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_358
    rx168_cur."!cursor_debug"("FAIL", "octints")
  debug_358:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303340933.805") :method
.annotate 'line', 40
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    .local pmc rx174_debug
    (rx174_cur, rx174_pos, rx174_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx174_cur
    .local pmc match
    .lex "$/", match
    length rx174_eos, rx174_tgt
    gt rx174_pos, rx174_eos, rx174_done
    set rx174_off, 0
    lt rx174_pos, 2, rx174_start
    sub rx174_off, rx174_pos, 1
    substr rx174_tgt, rx174_tgt, rx174_off
  rx174_start:
    eq $I10, 1, rx174_restart
    if_null rx174_debug, debug_359
    rx174_cur."!cursor_debug"("START", "binint")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    (rx174_pos) = rx174_cur."from"()
    inc rx174_pos
    rx174_cur."!cursor_from"(rx174_pos)
    ge rx174_pos, rx174_eos, rxscan177_done
  rxscan177_scan:
    set_addr $I10, rxscan177_loop
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  rxscan177_done:
.annotate 'line', 64
  # rx rxquantr178 ** 1..*
    set_addr $I10, rxquantr178_done
    rx174_cur."!mark_push"(0, -1, $I10)
  rxquantr178_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx174_pos, rx174_off
    set rx174_rep, 0
    sub $I12, rx174_eos, rx174_pos
  rxenumcharlistq179_loop:
    le $I12, 0, rxenumcharlistq179_done
    substr $S10, rx174_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq179_done
    inc rx174_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq179_loop
  rxenumcharlistq179_done:
    lt rx174_rep, 1, rx174_fail
    add rx174_pos, rx174_pos, rx174_rep
    set_addr $I10, rxquantr178_done
    (rx174_rep) = rx174_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr178_done
    rx174_cur."!mark_push"(rx174_rep, rx174_pos, $I10)
  # rx literal  "_"
    add $I11, rx174_pos, 1
    gt $I11, rx174_eos, rx174_fail
    sub $I11, rx174_pos, rx174_off
    ord $I11, rx174_tgt, $I11
    ne $I11, 95, rx174_fail
    add rx174_pos, 1
    goto rxquantr178_loop
  rxquantr178_done:
  # rx pass
    rx174_cur."!cursor_pass"(rx174_pos, "binint")
    if_null rx174_debug, debug_360
    rx174_cur."!cursor_debug"("PASS", "binint", " at pos=", rx174_pos)
  debug_360:
    .return (rx174_cur)
  rx174_restart:
.annotate 'line', 40
    if_null rx174_debug, debug_361
    rx174_cur."!cursor_debug"("NEXT", "binint")
  debug_361:
  rx174_fail:
    (rx174_rep, rx174_pos, $I10, $P10) = rx174_cur."!mark_fail"(0)
    lt rx174_pos, -1, rx174_done
    eq rx174_pos, -1, rx174_fail
    jump $I10
  rx174_done:
    rx174_cur."!cursor_fail"()
    if_null rx174_debug, debug_362
    rx174_cur."!cursor_debug"("FAIL", "binint")
  debug_362:
    .return (rx174_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303340933.805") :method
.annotate 'line', 40
    new $P176, "ResizablePMCArray"
    push $P176, ""
    .return ($P176)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_debug
    (rx181_cur, rx181_pos, rx181_tgt, $I10) = self."!cursor_start"()
    rx181_cur."!cursor_caparray"("binint")
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
    if_null rx181_debug, debug_363
    rx181_cur."!cursor_debug"("START", "binints")
  debug_363:
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
.annotate 'line', 65
  # rx rxquantr185 ** 1..*
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(0, -1, $I10)
  rxquantr185_loop:
  # rx subrule "ws" subtype=method negate=
    rx181_cur."!cursor_pos"(rx181_pos)
    $P10 = rx181_cur."ws"()
    unless $P10, rx181_fail
    rx181_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx181_cur."!cursor_pos"(rx181_pos)
    $P10 = rx181_cur."binint"()
    unless $P10, rx181_fail
    rx181_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx181_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx181_cur."!cursor_pos"(rx181_pos)
    $P10 = rx181_cur."ws"()
    unless $P10, rx181_fail
    rx181_pos = $P10."pos"()
    set_addr $I10, rxquantr185_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(rx181_rep, rx181_pos, $I10)
  # rx literal  ","
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 44, rx181_fail
    add rx181_pos, 1
    goto rxquantr185_loop
  rxquantr185_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "binints")
    if_null rx181_debug, debug_364
    rx181_cur."!cursor_debug"("PASS", "binints", " at pos=", rx181_pos)
  debug_364:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 40
    if_null rx181_debug, debug_365
    rx181_cur."!cursor_debug"("NEXT", "binints")
  debug_365:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_366
    rx181_cur."!cursor_debug"("FAIL", "binints")
  debug_366:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303340933.805") :method
.annotate 'line', 40
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    .local pmc rx187_debug
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    gt rx187_pos, rx187_eos, rx187_done
    set rx187_off, 0
    lt rx187_pos, 2, rx187_start
    sub rx187_off, rx187_pos, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
    eq $I10, 1, rx187_restart
    if_null rx187_debug, debug_367
    rx187_cur."!cursor_debug"("START", "integer")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan195_done
    goto rxscan195_scan
  rxscan195_loop:
    (rx187_pos) = rx187_cur."from"()
    inc rx187_pos
    rx187_cur."!cursor_from"(rx187_pos)
    ge rx187_pos, rx187_eos, rxscan195_done
  rxscan195_scan:
    set_addr $I10, rxscan195_loop
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxscan195_done:
  alt196_0:
.annotate 'line', 68
    set_addr $I10, alt196_1
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 48, rx187_fail
    add rx187_pos, 1
  alt197_0:
    set_addr $I10, alt197_1
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  # rx literal  "b"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 98, rx187_fail
    add rx187_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."binint"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx187_pos = $P10."pos"()
    goto alt197_end
  alt197_1:
    set_addr $I10, alt197_2
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 111, rx187_fail
    add rx187_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."octint"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx187_pos = $P10."pos"()
    goto alt197_end
  alt197_2:
    set_addr $I10, alt197_3
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 120, rx187_fail
    add rx187_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."hexint"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx187_pos = $P10."pos"()
    goto alt197_end
  alt197_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 100, rx187_fail
    add rx187_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."decint"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx187_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 69
    goto alt196_end
  alt196_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."decint"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx187_pos = $P10."pos"()
  alt196_end:
.annotate 'line', 67
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "integer")
    if_null rx187_debug, debug_368
    rx187_cur."!cursor_debug"("PASS", "integer", " at pos=", rx187_pos)
  debug_368:
    .return (rx187_cur)
  rx187_restart:
.annotate 'line', 40
    if_null rx187_debug, debug_369
    rx187_cur."!cursor_debug"("NEXT", "integer")
  debug_369:
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    if_null rx187_debug, debug_370
    rx187_cur."!cursor_debug"("FAIL", "integer")
  debug_370:
    .return (rx187_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303340933.805") :method
.annotate 'line', 40
    $P189 = self."!PREFIX__!subrule"("decint", "")
    $P190 = self."!PREFIX__!subrule"("decint", "0d")
    $P191 = self."!PREFIX__!subrule"("hexint", "0x")
    $P192 = self."!PREFIX__!subrule"("octint", "0o")
    $P193 = self."!PREFIX__!subrule"("binint", "0b")
    new $P194, "ResizablePMCArray"
    push $P194, $P189
    push $P194, $P190
    push $P194, $P191
    push $P194, $P192
    push $P194, $P193
    .return ($P194)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    .local pmc rx199_debug
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx199_cur
    .local pmc match
    .lex "$/", match
    length rx199_eos, rx199_tgt
    gt rx199_pos, rx199_eos, rx199_done
    set rx199_off, 0
    lt rx199_pos, 2, rx199_start
    sub rx199_off, rx199_pos, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
    eq $I10, 1, rx199_restart
    if_null rx199_debug, debug_371
    rx199_cur."!cursor_debug"("START", "dec_number")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx199_pos) = rx199_cur."from"()
    inc rx199_pos
    rx199_cur."!cursor_from"(rx199_pos)
    ge rx199_pos, rx199_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxscan202_done:
  alt203_0:
.annotate 'line', 78
    set_addr $I10, alt203_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_204_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx literal  "."
    add $I11, rx199_pos, 1
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    ord $I11, rx199_tgt, $I11
    ne $I11, 46, rx199_fail
    add rx199_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    set_addr $I10, rxcap_204_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_204_done
  rxcap_204_fail:
    goto rx199_fail
  rxcap_204_done:
  # rx rxquantr205 ** 0..1
    set_addr $I10, rxquantr205_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr205_loop:
  # rx subrule "escale" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."escale"()
    unless $P10, rx199_fail
    goto rxsubrule206_pass
  rxsubrule206_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule206_pass:
    set_addr $I10, rxsubrule206_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr205_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr205_done:
    goto alt203_end
  alt203_1:
    set_addr $I10, alt203_2
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_207_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
  # rx literal  "."
    add $I11, rx199_pos, 1
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    ord $I11, rx199_tgt, $I11
    ne $I11, 46, rx199_fail
    add rx199_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    set_addr $I10, rxcap_207_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_207_done
  rxcap_207_fail:
    goto rx199_fail
  rxcap_207_done:
  # rx rxquantr208 ** 0..1
    set_addr $I10, rxquantr208_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr208_loop:
  # rx subrule "escale" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."escale"()
    unless $P10, rx199_fail
    goto rxsubrule209_pass
  rxsubrule209_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule209_pass:
    set_addr $I10, rxsubrule209_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr208_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr208_done:
    goto alt203_end
  alt203_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_210_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx199_fail
  rxcap_210_done:
  # rx subrule "escale" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."escale"()
    unless $P10, rx199_fail
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx199_pos = $P10."pos"()
  alt203_end:
.annotate 'line', 78
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "dec_number")
    if_null rx199_debug, debug_372
    rx199_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx199_pos)
  debug_372:
    .return (rx199_cur)
  rx199_restart:
.annotate 'line', 40
    if_null rx199_debug, debug_373
    rx199_cur."!cursor_debug"("NEXT", "dec_number")
  debug_373:
  rx199_fail:
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    if_null rx199_debug, debug_374
    rx199_cur."!cursor_debug"("FAIL", "dec_number")
  debug_374:
    .return (rx199_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303340933.805") :method
.annotate 'line', 40
    new $P201, "ResizablePMCArray"
    push $P201, ""
    push $P201, ""
    push $P201, "."
    .return ($P201)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    .local pmc rx212_debug
    (rx212_cur, rx212_pos, rx212_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    gt rx212_pos, rx212_eos, rx212_done
    set rx212_off, 0
    lt rx212_pos, 2, rx212_start
    sub rx212_off, rx212_pos, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
    eq $I10, 1, rx212_restart
    if_null rx212_debug, debug_375
    rx212_cur."!cursor_debug"("START", "escale")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan215_done
    goto rxscan215_scan
  rxscan215_loop:
    (rx212_pos) = rx212_cur."from"()
    inc rx212_pos
    rx212_cur."!cursor_from"(rx212_pos)
    ge rx212_pos, rx212_eos, rxscan215_done
  rxscan215_scan:
    set_addr $I10, rxscan215_loop
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  rxscan215_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx212_pos, rx212_eos, rx212_fail
    sub $I10, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx212_fail
    inc rx212_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx212_pos, rx212_off
    set rx212_rep, 0
    sub $I12, rx212_eos, rx212_pos
    le $I12, 1, rxenumcharlistq216_loop
    set $I12, 1
  rxenumcharlistq216_loop:
    le $I12, 0, rxenumcharlistq216_done
    substr $S10, rx212_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq216_done
    inc rx212_rep
  rxenumcharlistq216_done:
    add rx212_pos, rx212_pos, rx212_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx212_pos, rx212_off
    find_not_cclass $I11, 8, rx212_tgt, $I10, rx212_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx212_fail
    add rx212_pos, rx212_off, $I11
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "escale")
    if_null rx212_debug, debug_376
    rx212_cur."!cursor_debug"("PASS", "escale", " at pos=", rx212_pos)
  debug_376:
    .return (rx212_cur)
  rx212_restart:
.annotate 'line', 40
    if_null rx212_debug, debug_377
    rx212_cur."!cursor_debug"("NEXT", "escale")
  debug_377:
  rx212_fail:
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    if_null rx212_debug, debug_378
    rx212_cur."!cursor_debug"("FAIL", "escale")
  debug_378:
    .return (rx212_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303340933.805") :method
.annotate 'line', 40
    new $P214, "ResizablePMCArray"
    push $P214, "e"
    push $P214, "E"
    .return ($P214)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303340933.805")
    .param pmc param_218
.annotate 'line', 86
    .lex "self", param_218
    $P219 = param_218."!protoregex"("quote_escape")
    .return ($P219)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303340933.805")
    .param pmc param_221
.annotate 'line', 86
    .lex "self", param_221
    $P222 = param_221."!PREFIX__!protoregex"("quote_escape")
    .return ($P222)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    .local pmc rx224_debug
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    gt rx224_pos, rx224_eos, rx224_done
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    eq $I10, 1, rx224_restart
    if_null rx224_debug, debug_379
    rx224_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan227_done
    goto rxscan227_scan
  rxscan227_loop:
    (rx224_pos) = rx224_cur."from"()
    inc rx224_pos
    rx224_cur."!cursor_from"(rx224_pos)
    ge rx224_pos, rx224_eos, rxscan227_done
  rxscan227_scan:
    set_addr $I10, rxscan227_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan227_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx224_pos, 2
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    substr $S10, rx224_tgt, $I11, 2
    ne $S10, "\\\\", rx224_fail
    add rx224_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."quotemod_check"("q")
    unless $P10, rx224_fail
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "quote_escape:sym<backslash>")
    if_null rx224_debug, debug_380
    rx224_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx224_pos)
  debug_380:
    .return (rx224_cur)
  rx224_restart:
.annotate 'line', 40
    if_null rx224_debug, debug_381
    rx224_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_381:
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    if_null rx224_debug, debug_382
    rx224_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_382:
    .return (rx224_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303340933.805") :method
.annotate 'line', 40
    new $P226, "ResizablePMCArray"
    push $P226, "\\\\"
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx229_tgt
    .local int rx229_pos
    .local int rx229_off
    .local int rx229_eos
    .local int rx229_rep
    .local pmc rx229_cur
    .local pmc rx229_debug
    (rx229_cur, rx229_pos, rx229_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx229_cur
    .local pmc match
    .lex "$/", match
    length rx229_eos, rx229_tgt
    gt rx229_pos, rx229_eos, rx229_done
    set rx229_off, 0
    lt rx229_pos, 2, rx229_start
    sub rx229_off, rx229_pos, 1
    substr rx229_tgt, rx229_tgt, rx229_off
  rx229_start:
    eq $I10, 1, rx229_restart
    if_null rx229_debug, debug_383
    rx229_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan232_done
    goto rxscan232_scan
  rxscan232_loop:
    (rx229_pos) = rx229_cur."from"()
    inc rx229_pos
    rx229_cur."!cursor_from"(rx229_pos)
    ge rx229_pos, rx229_eos, rxscan232_done
  rxscan232_scan:
    set_addr $I10, rxscan232_loop
    rx229_cur."!mark_push"(0, rx229_pos, $I10)
  rxscan232_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx229_pos, 1
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    ord $I11, rx229_tgt, $I11
    ne $I11, 92, rx229_fail
    add rx229_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."quotemod_check"("q")
    unless $P10, rx229_fail
  # rx subrule "stopper" subtype=capture negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."stopper"()
    unless $P10, rx229_fail
    rx229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx229_pos = $P10."pos"()
  # rx pass
    rx229_cur."!cursor_pass"(rx229_pos, "quote_escape:sym<stopper>")
    if_null rx229_debug, debug_384
    rx229_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx229_pos)
  debug_384:
    .return (rx229_cur)
  rx229_restart:
.annotate 'line', 40
    if_null rx229_debug, debug_385
    rx229_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_385:
  rx229_fail:
    (rx229_rep, rx229_pos, $I10, $P10) = rx229_cur."!mark_fail"(0)
    lt rx229_pos, -1, rx229_done
    eq rx229_pos, -1, rx229_fail
    jump $I10
  rx229_done:
    rx229_cur."!cursor_fail"()
    if_null rx229_debug, debug_386
    rx229_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_386:
    .return (rx229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303340933.805") :method
.annotate 'line', 40
    new $P231, "ResizablePMCArray"
    push $P231, "\\"
    .return ($P231)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    .local pmc rx234_debug
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx234_cur
    .local pmc match
    .lex "$/", match
    length rx234_eos, rx234_tgt
    gt rx234_pos, rx234_eos, rx234_done
    set rx234_off, 0
    lt rx234_pos, 2, rx234_start
    sub rx234_off, rx234_pos, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
    eq $I10, 1, rx234_restart
    if_null rx234_debug, debug_387
    rx234_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    (rx234_pos) = rx234_cur."from"()
    inc rx234_pos
    rx234_cur."!cursor_from"(rx234_pos)
    ge rx234_pos, rx234_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  rxscan237_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx234_pos, 2
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 2
    ne $S10, "\\b", rx234_fail
    add rx234_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."quotemod_check"("b")
    unless $P10, rx234_fail
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "quote_escape:sym<bs>")
    if_null rx234_debug, debug_388
    rx234_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx234_pos)
  debug_388:
    .return (rx234_cur)
  rx234_restart:
.annotate 'line', 40
    if_null rx234_debug, debug_389
    rx234_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_389:
  rx234_fail:
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    if_null rx234_debug, debug_390
    rx234_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_390:
    .return (rx234_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303340933.805") :method
.annotate 'line', 40
    new $P236, "ResizablePMCArray"
    push $P236, "\\b"
    .return ($P236)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    .local pmc rx239_debug
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    gt rx239_pos, rx239_eos, rx239_done
    set rx239_off, 0
    lt rx239_pos, 2, rx239_start
    sub rx239_off, rx239_pos, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    eq $I10, 1, rx239_restart
    if_null rx239_debug, debug_391
    rx239_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    (rx239_pos) = rx239_cur."from"()
    inc rx239_pos
    rx239_cur."!cursor_from"(rx239_pos)
    ge rx239_pos, rx239_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan242_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx239_pos, 2
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 2
    ne $S10, "\\n", rx239_fail
    add rx239_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."quotemod_check"("b")
    unless $P10, rx239_fail
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "quote_escape:sym<nl>")
    if_null rx239_debug, debug_392
    rx239_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx239_pos)
  debug_392:
    .return (rx239_cur)
  rx239_restart:
.annotate 'line', 40
    if_null rx239_debug, debug_393
    rx239_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_393:
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    if_null rx239_debug, debug_394
    rx239_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_394:
    .return (rx239_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303340933.805") :method
.annotate 'line', 40
    new $P241, "ResizablePMCArray"
    push $P241, "\\n"
    .return ($P241)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx244_tgt
    .local int rx244_pos
    .local int rx244_off
    .local int rx244_eos
    .local int rx244_rep
    .local pmc rx244_cur
    .local pmc rx244_debug
    (rx244_cur, rx244_pos, rx244_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx244_cur
    .local pmc match
    .lex "$/", match
    length rx244_eos, rx244_tgt
    gt rx244_pos, rx244_eos, rx244_done
    set rx244_off, 0
    lt rx244_pos, 2, rx244_start
    sub rx244_off, rx244_pos, 1
    substr rx244_tgt, rx244_tgt, rx244_off
  rx244_start:
    eq $I10, 1, rx244_restart
    if_null rx244_debug, debug_395
    rx244_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx244_pos) = rx244_cur."from"()
    inc rx244_pos
    rx244_cur."!cursor_from"(rx244_pos)
    ge rx244_pos, rx244_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx244_cur."!mark_push"(0, rx244_pos, $I10)
  rxscan247_done:
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx244_pos, 2
    gt $I11, rx244_eos, rx244_fail
    sub $I11, rx244_pos, rx244_off
    substr $S10, rx244_tgt, $I11, 2
    ne $S10, "\\r", rx244_fail
    add rx244_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."quotemod_check"("b")
    unless $P10, rx244_fail
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "quote_escape:sym<cr>")
    if_null rx244_debug, debug_396
    rx244_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx244_pos)
  debug_396:
    .return (rx244_cur)
  rx244_restart:
.annotate 'line', 40
    if_null rx244_debug, debug_397
    rx244_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_397:
  rx244_fail:
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    if_null rx244_debug, debug_398
    rx244_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_398:
    .return (rx244_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303340933.805") :method
.annotate 'line', 40
    new $P246, "ResizablePMCArray"
    push $P246, "\\r"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_debug
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    gt rx249_pos, rx249_eos, rx249_done
    set rx249_off, 0
    lt rx249_pos, 2, rx249_start
    sub rx249_off, rx249_pos, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    eq $I10, 1, rx249_restart
    if_null rx249_debug, debug_399
    rx249_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    (rx249_pos) = rx249_cur."from"()
    inc rx249_pos
    rx249_cur."!cursor_from"(rx249_pos)
    ge rx249_pos, rx249_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan252_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx249_pos, 2
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 2
    ne $S10, "\\t", rx249_fail
    add rx249_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."quotemod_check"("b")
    unless $P10, rx249_fail
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "quote_escape:sym<tab>")
    if_null rx249_debug, debug_400
    rx249_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx249_pos)
  debug_400:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 40
    if_null rx249_debug, debug_401
    rx249_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_401:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_402
    rx249_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_402:
    .return (rx249_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303340933.805") :method
.annotate 'line', 40
    new $P251, "ResizablePMCArray"
    push $P251, "\\t"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    .local pmc rx254_debug
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx254_cur
    .local pmc match
    .lex "$/", match
    length rx254_eos, rx254_tgt
    gt rx254_pos, rx254_eos, rx254_done
    set rx254_off, 0
    lt rx254_pos, 2, rx254_start
    sub rx254_off, rx254_pos, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
    eq $I10, 1, rx254_restart
    if_null rx254_debug, debug_403
    rx254_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan257_done
    goto rxscan257_scan
  rxscan257_loop:
    (rx254_pos) = rx254_cur."from"()
    inc rx254_pos
    rx254_cur."!cursor_from"(rx254_pos)
    ge rx254_pos, rx254_eos, rxscan257_done
  rxscan257_scan:
    set_addr $I10, rxscan257_loop
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  rxscan257_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx254_pos, 2
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 2
    ne $S10, "\\f", rx254_fail
    add rx254_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quotemod_check"("b")
    unless $P10, rx254_fail
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "quote_escape:sym<ff>")
    if_null rx254_debug, debug_404
    rx254_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx254_pos)
  debug_404:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 40
    if_null rx254_debug, debug_405
    rx254_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_405:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_406
    rx254_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_406:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303340933.805") :method
.annotate 'line', 40
    new $P256, "ResizablePMCArray"
    push $P256, "\\f"
    .return ($P256)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx259_tgt
    .local int rx259_pos
    .local int rx259_off
    .local int rx259_eos
    .local int rx259_rep
    .local pmc rx259_cur
    .local pmc rx259_debug
    (rx259_cur, rx259_pos, rx259_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx259_cur
    .local pmc match
    .lex "$/", match
    length rx259_eos, rx259_tgt
    gt rx259_pos, rx259_eos, rx259_done
    set rx259_off, 0
    lt rx259_pos, 2, rx259_start
    sub rx259_off, rx259_pos, 1
    substr rx259_tgt, rx259_tgt, rx259_off
  rx259_start:
    eq $I10, 1, rx259_restart
    if_null rx259_debug, debug_407
    rx259_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan262_done
    goto rxscan262_scan
  rxscan262_loop:
    (rx259_pos) = rx259_cur."from"()
    inc rx259_pos
    rx259_cur."!cursor_from"(rx259_pos)
    ge rx259_pos, rx259_eos, rxscan262_done
  rxscan262_scan:
    set_addr $I10, rxscan262_loop
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  rxscan262_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx259_pos, 2
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    substr $S10, rx259_tgt, $I11, 2
    ne $S10, "\\e", rx259_fail
    add rx259_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx259_cur."!cursor_pos"(rx259_pos)
    $P10 = rx259_cur."quotemod_check"("b")
    unless $P10, rx259_fail
  # rx pass
    rx259_cur."!cursor_pass"(rx259_pos, "quote_escape:sym<esc>")
    if_null rx259_debug, debug_408
    rx259_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx259_pos)
  debug_408:
    .return (rx259_cur)
  rx259_restart:
.annotate 'line', 40
    if_null rx259_debug, debug_409
    rx259_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_409:
  rx259_fail:
    (rx259_rep, rx259_pos, $I10, $P10) = rx259_cur."!mark_fail"(0)
    lt rx259_pos, -1, rx259_done
    eq rx259_pos, -1, rx259_fail
    jump $I10
  rx259_done:
    rx259_cur."!cursor_fail"()
    if_null rx259_debug, debug_410
    rx259_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_410:
    .return (rx259_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303340933.805") :method
.annotate 'line', 40
    new $P261, "ResizablePMCArray"
    push $P261, "\\e"
    .return ($P261)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_debug
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx264_cur
    .local pmc match
    .lex "$/", match
    length rx264_eos, rx264_tgt
    gt rx264_pos, rx264_eos, rx264_done
    set rx264_off, 0
    lt rx264_pos, 2, rx264_start
    sub rx264_off, rx264_pos, 1
    substr rx264_tgt, rx264_tgt, rx264_off
  rx264_start:
    eq $I10, 1, rx264_restart
    if_null rx264_debug, debug_411
    rx264_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan267_done
    goto rxscan267_scan
  rxscan267_loop:
    (rx264_pos) = rx264_cur."from"()
    inc rx264_pos
    rx264_cur."!cursor_from"(rx264_pos)
    ge rx264_pos, rx264_eos, rxscan267_done
  rxscan267_scan:
    set_addr $I10, rxscan267_loop
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxscan267_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx264_pos, 2
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx264_fail
    add rx264_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."quotemod_check"("b")
    unless $P10, rx264_fail
  alt268_0:
.annotate 'line', 98
    set_addr $I10, alt268_1
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."hexint"()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx264_pos = $P10."pos"()
    goto alt268_end
  alt268_1:
  # rx literal  "["
    add $I11, rx264_pos, 1
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    ord $I11, rx264_tgt, $I11
    ne $I11, 91, rx264_fail
    add rx264_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."hexints"()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx264_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx264_pos, 1
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    ord $I11, rx264_tgt, $I11
    ne $I11, 93, rx264_fail
    add rx264_pos, 1
  alt268_end:
.annotate 'line', 96
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "quote_escape:sym<hex>")
    if_null rx264_debug, debug_412
    rx264_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx264_pos)
  debug_412:
    .return (rx264_cur)
  rx264_restart:
.annotate 'line', 40
    if_null rx264_debug, debug_413
    rx264_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_413:
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    if_null rx264_debug, debug_414
    rx264_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_414:
    .return (rx264_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303340933.805") :method
.annotate 'line', 40
    new $P266, "ResizablePMCArray"
    push $P266, unicode:"\\x"
    .return ($P266)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    .local pmc rx270_debug
    (rx270_cur, rx270_pos, rx270_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx270_cur
    .local pmc match
    .lex "$/", match
    length rx270_eos, rx270_tgt
    gt rx270_pos, rx270_eos, rx270_done
    set rx270_off, 0
    lt rx270_pos, 2, rx270_start
    sub rx270_off, rx270_pos, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
    eq $I10, 1, rx270_restart
    if_null rx270_debug, debug_415
    rx270_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan273_done
    goto rxscan273_scan
  rxscan273_loop:
    (rx270_pos) = rx270_cur."from"()
    inc rx270_pos
    rx270_cur."!cursor_from"(rx270_pos)
    ge rx270_pos, rx270_eos, rxscan273_done
  rxscan273_scan:
    set_addr $I10, rxscan273_loop
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  rxscan273_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx270_pos, 2
    gt $I11, rx270_eos, rx270_fail
    sub $I11, rx270_pos, rx270_off
    substr $S10, rx270_tgt, $I11, 2
    ne $S10, "\\o", rx270_fail
    add rx270_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx270_cur."!cursor_pos"(rx270_pos)
    $P10 = rx270_cur."quotemod_check"("b")
    unless $P10, rx270_fail
  alt274_0:
.annotate 'line', 102
    set_addr $I10, alt274_1
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx270_cur."!cursor_pos"(rx270_pos)
    $P10 = rx270_cur."octint"()
    unless $P10, rx270_fail
    rx270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx270_pos = $P10."pos"()
    goto alt274_end
  alt274_1:
  # rx literal  "["
    add $I11, rx270_pos, 1
    gt $I11, rx270_eos, rx270_fail
    sub $I11, rx270_pos, rx270_off
    ord $I11, rx270_tgt, $I11
    ne $I11, 91, rx270_fail
    add rx270_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx270_cur."!cursor_pos"(rx270_pos)
    $P10 = rx270_cur."octints"()
    unless $P10, rx270_fail
    rx270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx270_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx270_pos, 1
    gt $I11, rx270_eos, rx270_fail
    sub $I11, rx270_pos, rx270_off
    ord $I11, rx270_tgt, $I11
    ne $I11, 93, rx270_fail
    add rx270_pos, 1
  alt274_end:
.annotate 'line', 100
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "quote_escape:sym<oct>")
    if_null rx270_debug, debug_416
    rx270_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx270_pos)
  debug_416:
    .return (rx270_cur)
  rx270_restart:
.annotate 'line', 40
    if_null rx270_debug, debug_417
    rx270_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_417:
  rx270_fail:
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    if_null rx270_debug, debug_418
    rx270_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_418:
    .return (rx270_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303340933.805") :method
.annotate 'line', 40
    new $P272, "ResizablePMCArray"
    push $P272, "\\o"
    .return ($P272)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    .local pmc rx276_debug
    (rx276_cur, rx276_pos, rx276_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx276_cur
    .local pmc match
    .lex "$/", match
    length rx276_eos, rx276_tgt
    gt rx276_pos, rx276_eos, rx276_done
    set rx276_off, 0
    lt rx276_pos, 2, rx276_start
    sub rx276_off, rx276_pos, 1
    substr rx276_tgt, rx276_tgt, rx276_off
  rx276_start:
    eq $I10, 1, rx276_restart
    if_null rx276_debug, debug_419
    rx276_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    (rx276_pos) = rx276_cur."from"()
    inc rx276_pos
    rx276_cur."!cursor_from"(rx276_pos)
    ge rx276_pos, rx276_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  rxscan279_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx276_pos, 2
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    substr $S10, rx276_tgt, $I11, 2
    ne $S10, "\\c", rx276_fail
    add rx276_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."quotemod_check"("b")
    unless $P10, rx276_fail
  # rx subrule "charspec" subtype=capture negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."charspec"()
    unless $P10, rx276_fail
    rx276_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx276_pos = $P10."pos"()
  # rx pass
    rx276_cur."!cursor_pass"(rx276_pos, "quote_escape:sym<chr>")
    if_null rx276_debug, debug_420
    rx276_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx276_pos)
  debug_420:
    .return (rx276_cur)
  rx276_restart:
.annotate 'line', 40
    if_null rx276_debug, debug_421
    rx276_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_421:
  rx276_fail:
    (rx276_rep, rx276_pos, $I10, $P10) = rx276_cur."!mark_fail"(0)
    lt rx276_pos, -1, rx276_done
    eq rx276_pos, -1, rx276_fail
    jump $I10
  rx276_done:
    rx276_cur."!cursor_fail"()
    if_null rx276_debug, debug_422
    rx276_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_422:
    .return (rx276_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303340933.805") :method
.annotate 'line', 40
    new $P278, "ResizablePMCArray"
    push $P278, "\\c"
    .return ($P278)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx281_tgt
    .local int rx281_pos
    .local int rx281_off
    .local int rx281_eos
    .local int rx281_rep
    .local pmc rx281_cur
    .local pmc rx281_debug
    (rx281_cur, rx281_pos, rx281_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx281_cur
    .local pmc match
    .lex "$/", match
    length rx281_eos, rx281_tgt
    gt rx281_pos, rx281_eos, rx281_done
    set rx281_off, 0
    lt rx281_pos, 2, rx281_start
    sub rx281_off, rx281_pos, 1
    substr rx281_tgt, rx281_tgt, rx281_off
  rx281_start:
    eq $I10, 1, rx281_restart
    if_null rx281_debug, debug_423
    rx281_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan284_done
    goto rxscan284_scan
  rxscan284_loop:
    (rx281_pos) = rx281_cur."from"()
    inc rx281_pos
    rx281_cur."!cursor_from"(rx281_pos)
    ge rx281_pos, rx281_eos, rxscan284_done
  rxscan284_scan:
    set_addr $I10, rxscan284_loop
    rx281_cur."!mark_push"(0, rx281_pos, $I10)
  rxscan284_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx281_pos, 1
    gt $I11, rx281_eos, rx281_fail
    sub $I11, rx281_pos, rx281_off
    ord $I11, rx281_tgt, $I11
    ne $I11, 92, rx281_fail
    add rx281_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_285_fail
    rx281_cur."!mark_push"(0, rx281_pos, $I10)
  # rx literal  "0"
    add $I11, rx281_pos, 1
    gt $I11, rx281_eos, rx281_fail
    sub $I11, rx281_pos, rx281_off
    ord $I11, rx281_tgt, $I11
    ne $I11, 48, rx281_fail
    add rx281_pos, 1
    set_addr $I10, rxcap_285_fail
    ($I12, $I11) = rx281_cur."!mark_peek"($I10)
    rx281_cur."!cursor_pos"($I11)
    ($P10) = rx281_cur."!cursor_start"()
    $P10."!cursor_pass"(rx281_pos, "")
    rx281_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_285_done
  rxcap_285_fail:
    goto rx281_fail
  rxcap_285_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."quotemod_check"("b")
    unless $P10, rx281_fail
  # rx pass
    rx281_cur."!cursor_pass"(rx281_pos, "quote_escape:sym<0>")
    if_null rx281_debug, debug_424
    rx281_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx281_pos)
  debug_424:
    .return (rx281_cur)
  rx281_restart:
.annotate 'line', 40
    if_null rx281_debug, debug_425
    rx281_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_425:
  rx281_fail:
    (rx281_rep, rx281_pos, $I10, $P10) = rx281_cur."!mark_fail"(0)
    lt rx281_pos, -1, rx281_done
    eq rx281_pos, -1, rx281_fail
    jump $I10
  rx281_done:
    rx281_cur."!cursor_fail"()
    if_null rx281_debug, debug_426
    rx281_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_426:
    .return (rx281_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303340933.805") :method
.annotate 'line', 40
    new $P283, "ResizablePMCArray"
    push $P283, "\\0"
    .return ($P283)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .const 'Sub' $P306 = "97_1303340933.805" 
    capture_lex $P306
    .const 'Sub' $P299 = "96_1303340933.805" 
    capture_lex $P299
    .const 'Sub' $P294 = "95_1303340933.805" 
    capture_lex $P294
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    .local pmc rx287_debug
    (rx287_cur, rx287_pos, rx287_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx287_cur
    .local pmc match
    .lex "$/", match
    length rx287_eos, rx287_tgt
    gt rx287_pos, rx287_eos, rx287_done
    set rx287_off, 0
    lt rx287_pos, 2, rx287_start
    sub rx287_off, rx287_pos, 1
    substr rx287_tgt, rx287_tgt, rx287_off
  rx287_start:
    eq $I10, 1, rx287_restart
    if_null rx287_debug, debug_427
    rx287_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan290_done
    goto rxscan290_scan
  rxscan290_loop:
    (rx287_pos) = rx287_cur."from"()
    inc rx287_pos
    rx287_cur."!cursor_from"(rx287_pos)
    ge rx287_pos, rx287_eos, rxscan290_done
  rxscan290_scan:
    set_addr $I10, rxscan290_loop
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  rxscan290_done:
.annotate 'line', 107
    rx287_cur."!cursor_pos"(rx287_pos)
    find_lex $P291, unicode:"$\x{a2}"
    $P292 = $P291."MATCH"()
    store_lex "$/", $P292
    .const 'Sub' $P294 = "95_1303340933.805" 
    capture_lex $P294
    $P295 = $P294()
  # rx literal  "\\"
    add $I11, rx287_pos, 1
    gt $I11, rx287_eos, rx287_fail
    sub $I11, rx287_pos, rx287_off
    ord $I11, rx287_tgt, $I11
    ne $I11, 92, rx287_fail
    add rx287_pos, 1
  alt296_0:
.annotate 'line', 108
    set_addr $I10, alt296_1
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx287_cur."!cursor_pos"(rx287_pos)
    $P10 = rx287_cur."quotemod_check"("b")
    unless $P10, rx287_fail
  alt297_0:
.annotate 'line', 110
    set_addr $I10, alt297_1
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
.annotate 'line', 111
  # rx subrule $P299 subtype=capture negate=
    rx287_cur."!cursor_pos"(rx287_pos)
    .const 'Sub' $P299 = "96_1303340933.805" 
    capture_lex $P299
    $P10 = rx287_cur.$P299()
    unless $P10, rx287_fail
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx287_pos = $P10."pos"()
    goto alt297_end
  alt297_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_302_fail
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  # rx charclass w
    ge rx287_pos, rx287_eos, rx287_fail
    sub $I10, rx287_pos, rx287_off
    is_cclass $I11, 8192, rx287_tgt, $I10
    unless $I11, rx287_fail
    inc rx287_pos
    set_addr $I10, rxcap_302_fail
    ($I12, $I11) = rx287_cur."!mark_peek"($I10)
    rx287_cur."!cursor_pos"($I11)
    ($P10) = rx287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx287_pos, "")
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_302_done
  rxcap_302_fail:
    goto rx287_fail
  rxcap_302_done:
    rx287_cur."!cursor_pos"(rx287_pos)
    find_lex $P303, unicode:"$\x{a2}"
    $P304 = $P303."MATCH"()
    store_lex "$/", $P304
    .const 'Sub' $P306 = "97_1303340933.805" 
    capture_lex $P306
    $P316 = $P306()
  alt297_end:
.annotate 'line', 109
    goto alt296_end
  alt296_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_317_fail
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  # rx charclass .
    ge rx287_pos, rx287_eos, rx287_fail
    inc rx287_pos
    set_addr $I10, rxcap_317_fail
    ($I12, $I11) = rx287_cur."!mark_peek"($I10)
    rx287_cur."!cursor_pos"($I11)
    ($P10) = rx287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx287_pos, "")
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_317_done
  rxcap_317_fail:
    goto rx287_fail
  rxcap_317_done:
  alt296_end:
.annotate 'line', 106
  # rx pass
    rx287_cur."!cursor_pass"(rx287_pos, "quote_escape:sym<misc>")
    if_null rx287_debug, debug_435
    rx287_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx287_pos)
  debug_435:
    .return (rx287_cur)
  rx287_restart:
.annotate 'line', 40
    if_null rx287_debug, debug_436
    rx287_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_436:
  rx287_fail:
    (rx287_rep, rx287_pos, $I10, $P10) = rx287_cur."!mark_fail"(0)
    lt rx287_pos, -1, rx287_done
    eq rx287_pos, -1, rx287_fail
    jump $I10
  rx287_done:
    rx287_cur."!cursor_fail"()
    if_null rx287_debug, debug_437
    rx287_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_437:
    .return (rx287_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303340933.805") :method
.annotate 'line', 40
    new $P289, "ResizablePMCArray"
    push $P289, ""
    .return ($P289)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block293"  :anon :subid("95_1303340933.805") :outer("93_1303340933.805")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block298"  :anon :subid("96_1303340933.805") :method :outer("93_1303340933.805")
.annotate 'line', 111
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    .local pmc rx300_debug
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx300_cur
    .local pmc match
    .lex "$/", match
    length rx300_eos, rx300_tgt
    gt rx300_pos, rx300_eos, rx300_done
    set rx300_off, 0
    lt rx300_pos, 2, rx300_start
    sub rx300_off, rx300_pos, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
    eq $I10, 1, rx300_restart
    if_null rx300_debug, debug_428
    rx300_cur."!cursor_debug"("START", "")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan301_done
    goto rxscan301_scan
  rxscan301_loop:
    (rx300_pos) = rx300_cur."from"()
    inc rx300_pos
    rx300_cur."!cursor_from"(rx300_pos)
    ge rx300_pos, rx300_eos, rxscan301_done
  rxscan301_scan:
    set_addr $I10, rxscan301_loop
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  rxscan301_done:
  # rx charclass W
    ge rx300_pos, rx300_eos, rx300_fail
    sub $I10, rx300_pos, rx300_off
    is_cclass $I11, 8192, rx300_tgt, $I10
    if $I11, rx300_fail
    inc rx300_pos
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "")
    if_null rx300_debug, debug_429
    rx300_cur."!cursor_debug"("PASS", "", " at pos=", rx300_pos)
  debug_429:
    .return (rx300_cur)
  rx300_restart:
    if_null rx300_debug, debug_430
    rx300_cur."!cursor_debug"("NEXT", "")
  debug_430:
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    if_null rx300_debug, debug_431
    rx300_cur."!cursor_debug"("FAIL", "")
  debug_431:
    .return (rx300_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("97_1303340933.805") :outer("93_1303340933.805")
.annotate 'line', 112
    find_lex $P307, "$/"
    unless_null $P307, vivify_432
    new $P307, "Undef"
  vivify_432:
    $P308 = $P307."CURSOR"()
    new $P309, "String"
    assign $P309, "Unrecognized backslash sequence: '\\"
    find_lex $P310, "$/"
    unless_null $P310, vivify_433
    $P310 = root_new ['parrot';'Hash']
  vivify_433:
    set $P311, $P310["x"]
    unless_null $P311, vivify_434
    new $P311, "Undef"
  vivify_434:
    $S312 = $P311."Str"()
    concat $P313, $P309, $S312
    concat $P314, $P313, "'"
    $P315 = $P308."panic"($P314)
    .return ($P315)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .const 'Sub' $P328 = "100_1303340933.805" 
    capture_lex $P328
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    .local pmc rx319_debug
    (rx319_cur, rx319_pos, rx319_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx319_cur
    .local pmc match
    .lex "$/", match
    length rx319_eos, rx319_tgt
    gt rx319_pos, rx319_eos, rx319_done
    set rx319_off, 0
    lt rx319_pos, 2, rx319_start
    sub rx319_off, rx319_pos, 1
    substr rx319_tgt, rx319_tgt, rx319_off
  rx319_start:
    eq $I10, 1, rx319_restart
    if_null rx319_debug, debug_438
    rx319_cur."!cursor_debug"("START", "charname")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan323_done
    goto rxscan323_scan
  rxscan323_loop:
    (rx319_pos) = rx319_cur."from"()
    inc rx319_pos
    rx319_cur."!cursor_from"(rx319_pos)
    ge rx319_pos, rx319_eos, rxscan323_done
  rxscan323_scan:
    set_addr $I10, rxscan323_loop
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  rxscan323_done:
  alt324_0:
.annotate 'line', 118
    set_addr $I10, alt324_1
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."integer"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx319_pos = $P10."pos"()
    goto alt324_end
  alt324_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx319_pos, rx319_eos, rx319_fail
    sub $I10, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx319_fail
    inc rx319_pos
  # rx rxquantf325 ** 0..*
    set_addr $I10, rxquantf325_loop
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
    goto rxquantf325_done
  rxquantf325_loop:
  # rx enumcharlist negate=1 
    ge rx319_pos, rx319_eos, rx319_fail
    sub $I10, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx319_fail
    inc rx319_pos
    set_addr $I10, rxquantf325_loop
    rx319_cur."!mark_push"(rx319_rep, rx319_pos, $I10)
  rxquantf325_done:
  # rx enumcharlist negate=0 
    ge rx319_pos, rx319_eos, rx319_fail
    sub $I10, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx319_fail
    inc rx319_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    .const 'Sub' $P328 = "100_1303340933.805" 
    capture_lex $P328
    $P10 = rx319_cur."before"($P328)
    unless $P10, rx319_fail
  alt324_end:
.annotate 'line', 118
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "charname")
    if_null rx319_debug, debug_443
    rx319_cur."!cursor_debug"("PASS", "charname", " at pos=", rx319_pos)
  debug_443:
    .return (rx319_cur)
  rx319_restart:
.annotate 'line', 40
    if_null rx319_debug, debug_444
    rx319_cur."!cursor_debug"("NEXT", "charname")
  debug_444:
  rx319_fail:
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    if_null rx319_debug, debug_445
    rx319_cur."!cursor_debug"("FAIL", "charname")
  debug_445:
    .return (rx319_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303340933.805") :method
.annotate 'line', 40
    $P321 = self."!PREFIX__!subrule"("integer", "")
    new $P322, "ResizablePMCArray"
    push $P322, "Z"
    push $P322, "Y"
    push $P322, "X"
    push $P322, "W"
    push $P322, "V"
    push $P322, "U"
    push $P322, "T"
    push $P322, "S"
    push $P322, "R"
    push $P322, "Q"
    push $P322, "P"
    push $P322, "O"
    push $P322, "N"
    push $P322, "M"
    push $P322, "L"
    push $P322, "K"
    push $P322, "J"
    push $P322, "I"
    push $P322, "H"
    push $P322, "G"
    push $P322, "F"
    push $P322, "E"
    push $P322, "D"
    push $P322, "C"
    push $P322, "B"
    push $P322, "A"
    push $P322, "z"
    push $P322, "y"
    push $P322, "x"
    push $P322, "w"
    push $P322, "v"
    push $P322, "u"
    push $P322, "t"
    push $P322, "s"
    push $P322, "r"
    push $P322, "q"
    push $P322, "p"
    push $P322, "o"
    push $P322, "n"
    push $P322, "m"
    push $P322, "l"
    push $P322, "k"
    push $P322, "j"
    push $P322, "i"
    push $P322, "h"
    push $P322, "g"
    push $P322, "f"
    push $P322, "e"
    push $P322, "d"
    push $P322, "c"
    push $P322, "b"
    push $P322, "a"
    push $P322, $P321
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block327"  :anon :subid("100_1303340933.805") :method :outer("98_1303340933.805")
.annotate 'line', 121
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    .local pmc rx329_debug
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    gt rx329_pos, rx329_eos, rx329_done
    set rx329_off, 0
    lt rx329_pos, 2, rx329_start
    sub rx329_off, rx329_pos, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
    eq $I10, 1, rx329_restart
    if_null rx329_debug, debug_439
    rx329_cur."!cursor_debug"("START", "")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx329_pos) = rx329_cur."from"()
    inc rx329_pos
    rx329_cur."!cursor_from"(rx329_pos)
    ge rx329_pos, rx329_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  rxscan330_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx329_pos, rx329_off
    find_not_cclass $I11, 32, rx329_tgt, $I10, rx329_eos
    add rx329_pos, rx329_off, $I11
  # rx enumcharlist negate=0 
    ge rx329_pos, rx329_eos, rx329_fail
    sub $I10, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx329_fail
    inc rx329_pos
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "")
    if_null rx329_debug, debug_440
    rx329_cur."!cursor_debug"("PASS", "", " at pos=", rx329_pos)
  debug_440:
    .return (rx329_cur)
  rx329_restart:
    if_null rx329_debug, debug_441
    rx329_cur."!cursor_debug"("NEXT", "")
  debug_441:
  rx329_fail:
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    if_null rx329_debug, debug_442
    rx329_cur."!cursor_debug"("FAIL", "")
  debug_442:
    .return (rx329_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    .local pmc rx332_debug
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    rx332_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx332_cur
    .local pmc match
    .lex "$/", match
    length rx332_eos, rx332_tgt
    gt rx332_pos, rx332_eos, rx332_done
    set rx332_off, 0
    lt rx332_pos, 2, rx332_start
    sub rx332_off, rx332_pos, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
    eq $I10, 1, rx332_restart
    if_null rx332_debug, debug_446
    rx332_cur."!cursor_debug"("START", "charnames")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan335_done
    goto rxscan335_scan
  rxscan335_loop:
    (rx332_pos) = rx332_cur."from"()
    inc rx332_pos
    rx332_cur."!cursor_from"(rx332_pos)
    ge rx332_pos, rx332_eos, rxscan335_done
  rxscan335_scan:
    set_addr $I10, rxscan335_loop
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxscan335_done:
.annotate 'line', 123
  # rx rxquantr336 ** 1..*
    set_addr $I10, rxquantr336_done
    rx332_cur."!mark_push"(0, -1, $I10)
  rxquantr336_loop:
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."charname"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
    set_addr $I10, rxquantr336_done
    (rx332_rep) = rx332_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr336_done
    rx332_cur."!mark_push"(rx332_rep, rx332_pos, $I10)
  # rx literal  ","
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    ord $I11, rx332_tgt, $I11
    ne $I11, 44, rx332_fail
    add rx332_pos, 1
    goto rxquantr336_loop
  rxquantr336_done:
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "charnames")
    if_null rx332_debug, debug_447
    rx332_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx332_pos)
  debug_447:
    .return (rx332_cur)
  rx332_restart:
.annotate 'line', 40
    if_null rx332_debug, debug_448
    rx332_cur."!cursor_debug"("NEXT", "charnames")
  debug_448:
  rx332_fail:
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    if_null rx332_debug, debug_449
    rx332_cur."!cursor_debug"("FAIL", "charnames")
  debug_449:
    .return (rx332_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303340933.805") :method
.annotate 'line', 40
    new $P334, "ResizablePMCArray"
    push $P334, ""
    .return ($P334)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303340933.805") :method :outer("11_1303340933.805")
.annotate 'line', 40
    .local string rx338_tgt
    .local int rx338_pos
    .local int rx338_off
    .local int rx338_eos
    .local int rx338_rep
    .local pmc rx338_cur
    .local pmc rx338_debug
    (rx338_cur, rx338_pos, rx338_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx338_cur
    .local pmc match
    .lex "$/", match
    length rx338_eos, rx338_tgt
    gt rx338_pos, rx338_eos, rx338_done
    set rx338_off, 0
    lt rx338_pos, 2, rx338_start
    sub rx338_off, rx338_pos, 1
    substr rx338_tgt, rx338_tgt, rx338_off
  rx338_start:
    eq $I10, 1, rx338_restart
    if_null rx338_debug, debug_450
    rx338_cur."!cursor_debug"("START", "charspec")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan343_done
    goto rxscan343_scan
  rxscan343_loop:
    (rx338_pos) = rx338_cur."from"()
    inc rx338_pos
    rx338_cur."!cursor_from"(rx338_pos)
    ge rx338_pos, rx338_eos, rxscan343_done
  rxscan343_scan:
    set_addr $I10, rxscan343_loop
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxscan343_done:
  alt344_0:
.annotate 'line', 125
    set_addr $I10, alt344_1
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx338_pos, 1
    gt $I11, rx338_eos, rx338_fail
    sub $I11, rx338_pos, rx338_off
    ord $I11, rx338_tgt, $I11
    ne $I11, 91, rx338_fail
    add rx338_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx338_cur."!cursor_pos"(rx338_pos)
    $P10 = rx338_cur."charnames"()
    unless $P10, rx338_fail
    rx338_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx338_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx338_pos, 1
    gt $I11, rx338_eos, rx338_fail
    sub $I11, rx338_pos, rx338_off
    ord $I11, rx338_tgt, $I11
    ne $I11, 93, rx338_fail
    add rx338_pos, 1
    goto alt344_end
  alt344_1:
    set_addr $I10, alt344_2
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx338_pos, rx338_off
    find_not_cclass $I11, 8, rx338_tgt, $I10, rx338_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx338_fail
    add rx338_pos, rx338_off, $I11
  # rx rxquantr345 ** 0..*
    set_addr $I10, rxquantr345_done
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxquantr345_loop:
  # rx literal  "_"
    add $I11, rx338_pos, 1
    gt $I11, rx338_eos, rx338_fail
    sub $I11, rx338_pos, rx338_off
    ord $I11, rx338_tgt, $I11
    ne $I11, 95, rx338_fail
    add rx338_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx338_pos, rx338_off
    find_not_cclass $I11, 8, rx338_tgt, $I10, rx338_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx338_fail
    add rx338_pos, rx338_off, $I11
    set_addr $I10, rxquantr345_done
    (rx338_rep) = rx338_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr345_done
    rx338_cur."!mark_push"(rx338_rep, rx338_pos, $I10)
    goto rxquantr345_loop
  rxquantr345_done:
    goto alt344_end
  alt344_2:
    set_addr $I10, alt344_3
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx338_pos, rx338_eos, rx338_fail
    sub $I10, rx338_pos, rx338_off
    substr $S10, rx338_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx338_fail
    inc rx338_pos
    goto alt344_end
  alt344_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx338_cur."!cursor_pos"(rx338_pos)
    $P10 = rx338_cur."panic"("Unrecognized \\c character")
    unless $P10, rx338_fail
    rx338_pos = $P10."pos"()
  alt344_end:
.annotate 'line', 124
  # rx pass
    rx338_cur."!cursor_pass"(rx338_pos, "charspec")
    if_null rx338_debug, debug_451
    rx338_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx338_pos)
  debug_451:
    .return (rx338_cur)
  rx338_restart:
.annotate 'line', 40
    if_null rx338_debug, debug_452
    rx338_cur."!cursor_debug"("NEXT", "charspec")
  debug_452:
  rx338_fail:
    (rx338_rep, rx338_pos, $I10, $P10) = rx338_cur."!mark_fail"(0)
    lt rx338_pos, -1, rx338_done
    eq rx338_pos, -1, rx338_fail
    jump $I10
  rx338_done:
    rx338_cur."!cursor_fail"()
    if_null rx338_debug, debug_453
    rx338_cur."!cursor_debug"("FAIL", "charspec")
  debug_453:
    .return (rx338_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303340933.805") :method
.annotate 'line', 40
    $P340 = self."!PREFIX__!subrule"("panic", "")
    $P341 = self."!PREFIX__!subrule"("charnames", "[")
    new $P342, "ResizablePMCArray"
    push $P342, $P340
    push $P342, "Z"
    push $P342, "Y"
    push $P342, "X"
    push $P342, "W"
    push $P342, "V"
    push $P342, "U"
    push $P342, "T"
    push $P342, "S"
    push $P342, "R"
    push $P342, "Q"
    push $P342, "P"
    push $P342, "O"
    push $P342, "N"
    push $P342, "M"
    push $P342, "L"
    push $P342, "K"
    push $P342, "J"
    push $P342, "I"
    push $P342, "H"
    push $P342, "G"
    push $P342, "F"
    push $P342, "E"
    push $P342, "D"
    push $P342, "C"
    push $P342, "B"
    push $P342, "A"
    push $P342, "@"
    push $P342, "?"
    push $P342, ""
    push $P342, $P341
    .return ($P342)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_347
    .param pmc param_348
    .param pmc param_349 :optional
    .param int has_param_349 :opt_flag
.annotate 'line', 175
    .lex "self", param_347
    .lex "$spec", param_348
    if has_param_349, optparam_454
    new $P350, "Undef"
    set param_349, $P350
  optparam_454:
    .lex "$save", param_349
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
.sub "panic"  :subid("106_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_352
    .param pmc param_353 :slurpy
.annotate 'line', 323
    .lex "self", param_352
    .lex "@args", param_353
.annotate 'line', 324
    new $P354, "Undef"
    .lex "$pos", $P354
.annotate 'line', 325
    new $P355, "Undef"
    .lex "$target", $P355
.annotate 'line', 324
    find_lex $P356, "self"
    $P357 = $P356."pos"()
    store_lex "$pos", $P357
.annotate 'line', 325
    find_lex $P358, "self"
    get_hll_global $P359, ["Regex"], "Cursor"
    getattribute $P360, $P358, $P359, "$!target"
    store_lex "$target", $P360
.annotate 'line', 326
    find_lex $P361, "@args"
    unless_null $P361, vivify_455
    $P361 = root_new ['parrot';'ResizablePMCArray']
  vivify_455:
    $P361."push"(" at line ")
.annotate 'line', 327
    find_lex $P362, "@args"
    unless_null $P362, vivify_456
    $P362 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    get_hll_global $P363, ["HLL"], "Compiler"
    find_lex $P364, "$target"
    unless_null $P364, vivify_457
    new $P364, "Undef"
  vivify_457:
    find_lex $P365, "$pos"
    unless_null $P365, vivify_458
    new $P365, "Undef"
  vivify_458:
    $P366 = $P363."lineof"($P364, $P365)
    add $P367, $P366, 1
    $P362."push"($P367)
.annotate 'line', 328
    find_lex $P368, "@args"
    unless_null $P368, vivify_459
    $P368 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    $P368."push"(", near \"")
.annotate 'line', 329
    find_lex $P369, "@args"
    unless_null $P369, vivify_460
    $P369 = root_new ['parrot';'ResizablePMCArray']
  vivify_460:
    find_lex $P370, "$target"
    unless_null $P370, vivify_461
    new $P370, "Undef"
  vivify_461:
    set $S371, $P370
    find_lex $P372, "$pos"
    unless_null $P372, vivify_462
    new $P372, "Undef"
  vivify_462:
    set $I373, $P372
    substr $S374, $S371, $I373, 10
    escape $S375, $S374
    $P369."push"($S375)
.annotate 'line', 330
    find_lex $P376, "@args"
    unless_null $P376, vivify_463
    $P376 = root_new ['parrot';'ResizablePMCArray']
  vivify_463:
    $P376."push"("\"")
.annotate 'line', 331
    find_lex $P377, "@args"
    unless_null $P377, vivify_464
    $P377 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    join $S378, "", $P377
    die $S378
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_380
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 344
    .lex "self", param_380
    .lex "$target", param_381
    .lex "$pos", param_382
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
.sub "quote_EXPR"  :subid("108_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_384
    .param pmc param_385 :slurpy
.annotate 'line', 406
    .lex "self", param_384
    .lex "@args", param_385
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
.sub "quotemod_check" :nsentry :subid("109_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_387
    .param pmc param_388
.annotate 'line', 477
    .lex "self", param_387
    .lex "$mod", param_388
    find_lex $P389, "$mod"
    unless_null $P389, vivify_465
    new $P389, "Undef"
  vivify_465:
    find_dynamic_lex $P390, "%*QUOTEMOD"
    unless_null $P390, vivify_466
    get_hll_global $P390, "%QUOTEMOD"
    unless_null $P390, vivify_467
    die "Contextual %*QUOTEMOD not found"
  vivify_467:
  vivify_466:
    set $P391, $P390[$P389]
    unless_null $P391, vivify_468
    new $P391, "Undef"
  vivify_468:
    .return ($P391)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_393
.annotate 'line', 481
    .lex "self", param_393
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
.sub "stopper"  :subid("111_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_395
.annotate 'line', 504
    .lex "self", param_395
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
.sub "split_words" :nsentry :subid("112_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_397
    .param pmc param_398
.annotate 'line', 527
    .lex "self", param_397
    .lex "$words", param_398
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
.sub "EXPR"  :subid("113_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_400
    .param pmc param_401 :optional
    .param int has_param_401 :opt_flag
.annotate 'line', 559
    .lex "self", param_400
    if has_param_401, optparam_469
    new $P402, "String"
    assign $P402, ""
    set param_401, $P402
  optparam_469:
    .lex "$preclim", param_401
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
.sub "EXPR_reduce"  :subid("114_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_404
    .param pmc param_405
    .param pmc param_406
.annotate 'line', 737
    .lex "self", param_404
    .lex "$termstack", param_405
    .lex "$opstack", param_406
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
.sub "ternary"  :subid("115_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_408
    .param pmc param_409
.annotate 'line', 805
    .lex "self", param_408
    .lex "$match", param_409
.annotate 'line', 806
    find_lex $P410, "$match"
    unless_null $P410, vivify_470
    $P410 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    set $P411, $P410[1]
    unless_null $P411, vivify_471
    new $P411, "Undef"
  vivify_471:
    find_lex $P412, "$match"
    unless_null $P412, vivify_472
    $P412 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P412
  vivify_472:
    set $P412[2], $P411
.annotate 'line', 807
    find_lex $P413, "$match"
    unless_null $P413, vivify_473
    $P413 = root_new ['parrot';'Hash']
  vivify_473:
    set $P414, $P413["infix"]
    unless_null $P414, vivify_474
    $P414 = root_new ['parrot';'Hash']
  vivify_474:
    set $P415, $P414["EXPR"]
    unless_null $P415, vivify_475
    new $P415, "Undef"
  vivify_475:
    find_lex $P416, "$match"
    unless_null $P416, vivify_476
    $P416 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P416
  vivify_476:
    set $P416[1], $P415
.annotate 'line', 805
    .return ($P415)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_418
    .param pmc param_419
.annotate 'line', 810
    .lex "self", param_418
    .lex "$markname", param_419
.annotate 'line', 811
    new $P420, "Undef"
    .lex "$pos", $P420
.annotate 'line', 813
    $P421 = root_new ['parrot';'Hash']
    .lex "%markhash", $P421
.annotate 'line', 811
    find_lex $P422, "self"
    $P423 = $P422."pos"()
    store_lex "$pos", $P423
.annotate 'line', 812
    find_lex $P424, "self"
    find_lex $P425, "$markname"
    unless_null $P425, vivify_477
    new $P425, "Undef"
  vivify_477:
    find_lex $P426, "$pos"
    unless_null $P426, vivify_478
    new $P426, "Undef"
  vivify_478:
    $P424."!cursor_debug"("START", "MARKER name=", $P425, ", pos=", $P426)
.annotate 'line', 813

            $P427 = get_global '%!MARKHASH'
            unless null $P427 goto have_markhash
            $P427 = new ['Hash']
            set_global '%!MARKHASH', $P427
          have_markhash:
        
    store_lex "%markhash", $P427
.annotate 'line', 820
    find_lex $P428, "$pos"
    unless_null $P428, vivify_479
    new $P428, "Undef"
  vivify_479:
    find_lex $P429, "$markname"
    unless_null $P429, vivify_480
    new $P429, "Undef"
  vivify_480:
    find_lex $P430, "%markhash"
    unless_null $P430, vivify_481
    $P430 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P430
  vivify_481:
    set $P430[$P429], $P428
.annotate 'line', 821
    find_lex $P431, "self"
    $P431."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 810
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 825
    .lex "self", param_433
    .lex "$markname", param_434
.annotate 'line', 826
    find_lex $P435, "self"
    find_lex $P436, "$markname"
    unless_null $P436, vivify_482
    new $P436, "Undef"
  vivify_482:
    $P435."!cursor_debug"("START", "MARKED name=", $P436)
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
.sub "LANG"  :subid("118_1303340933.805") :outer("11_1303340933.805")
    .param pmc param_438
    .param pmc param_439
    .param pmc param_440
.annotate 'line', 845
    .lex "self", param_438
    .lex "$lang", param_439
    .lex "$regex", param_440
.annotate 'line', 846
    new $P441, "Undef"
    .lex "$lang_cursor", $P441
.annotate 'line', 847
    new $P442, "Undef"
    .lex "$*ACTIONS", $P442
.annotate 'line', 848
    new $P443, "Undef"
    .lex "$cur", $P443
.annotate 'line', 846
    find_lex $P444, "$lang"
    unless_null $P444, vivify_483
    new $P444, "Undef"
  vivify_483:
    find_dynamic_lex $P445, "%*LANG"
    unless_null $P445, vivify_484
    get_hll_global $P445, "%LANG"
    unless_null $P445, vivify_485
    die "Contextual %*LANG not found"
  vivify_485:
  vivify_484:
    set $P446, $P445[$P444]
    unless_null $P446, vivify_486
    new $P446, "Undef"
  vivify_486:
    store_lex "$lang_cursor", $P446
.annotate 'line', 847
    find_lex $P447, "$lang"
    unless_null $P447, vivify_487
    new $P447, "Undef"
  vivify_487:
    concat $P448, $P447, "-actions"
    find_dynamic_lex $P449, "%*LANG"
    unless_null $P449, vivify_488
    get_hll_global $P449, "%LANG"
    unless_null $P449, vivify_489
    die "Contextual %*LANG not found"
  vivify_489:
  vivify_488:
    set $P450, $P449[$P448]
    unless_null $P450, vivify_490
    new $P450, "Undef"
  vivify_490:
    store_lex "$*ACTIONS", $P450
.annotate 'line', 848

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P451, pos) = self.'!cursor_start'($P0)
            $P451.'!cursor_pos'(pos)
        
    store_lex "$cur", $P451
.annotate 'line', 856
    find_lex $P452, "$cur"
    unless_null $P452, vivify_491
    new $P452, "Undef"
  vivify_491:
    find_lex $P453, "$regex"
    unless_null $P453, vivify_492
    new $P453, "Undef"
  vivify_492:
    set $S454, $P453
    $P455 = $P452.$S454()
.annotate 'line', 845
    .return ($P455)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block670"  :subid("120_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 861
    .const 'Sub' $P1319 = "166_1303340933.805" 
    capture_lex $P1319
    .const 'Sub' $P1300 = "165_1303340933.805" 
    capture_lex $P1300
    .const 'Sub' $P1277 = "163_1303340933.805" 
    capture_lex $P1277
    .const 'Sub' $P1249 = "162_1303340933.805" 
    capture_lex $P1249
    .const 'Sub' $P1232 = "161_1303340933.805" 
    capture_lex $P1232
    .const 'Sub' $P1227 = "160_1303340933.805" 
    capture_lex $P1227
    .const 'Sub' $P1219 = "159_1303340933.805" 
    capture_lex $P1219
    .const 'Sub' $P1204 = "158_1303340933.805" 
    capture_lex $P1204
    .const 'Sub' $P1189 = "157_1303340933.805" 
    capture_lex $P1189
    .const 'Sub' $P1184 = "156_1303340933.805" 
    capture_lex $P1184
    .const 'Sub' $P1179 = "155_1303340933.805" 
    capture_lex $P1179
    .const 'Sub' $P1174 = "154_1303340933.805" 
    capture_lex $P1174
    .const 'Sub' $P1169 = "153_1303340933.805" 
    capture_lex $P1169
    .const 'Sub' $P1164 = "152_1303340933.805" 
    capture_lex $P1164
    .const 'Sub' $P1159 = "151_1303340933.805" 
    capture_lex $P1159
    .const 'Sub' $P1151 = "150_1303340933.805" 
    capture_lex $P1151
    .const 'Sub' $P1146 = "149_1303340933.805" 
    capture_lex $P1146
    .const 'Sub' $P1132 = "148_1303340933.805" 
    capture_lex $P1132
    .const 'Sub' $P1059 = "146_1303340933.805" 
    capture_lex $P1059
    .const 'Sub' $P998 = "143_1303340933.805" 
    capture_lex $P998
    .const 'Sub' $P991 = "142_1303340933.805" 
    capture_lex $P991
    .const 'Sub' $P984 = "141_1303340933.805" 
    capture_lex $P984
    .const 'Sub' $P977 = "140_1303340933.805" 
    capture_lex $P977
    .const 'Sub' $P970 = "139_1303340933.805" 
    capture_lex $P970
    .const 'Sub' $P963 = "138_1303340933.805" 
    capture_lex $P963
    .const 'Sub' $P955 = "137_1303340933.805" 
    capture_lex $P955
    .const 'Sub' $P947 = "136_1303340933.805" 
    capture_lex $P947
    .const 'Sub' $P941 = "135_1303340933.805" 
    capture_lex $P941
    .const 'Sub' $P933 = "134_1303340933.805" 
    capture_lex $P933
    .const 'Sub' $P925 = "133_1303340933.805" 
    capture_lex $P925
    .const 'Sub' $P820 = "130_1303340933.805" 
    capture_lex $P820
    .const 'Sub' $P784 = "127_1303340933.805" 
    capture_lex $P784
    .const 'Sub' $P779 = "126_1303340933.805" 
    capture_lex $P779
    .const 'Sub' $P742 = "123_1303340933.805" 
    capture_lex $P742
    .const 'Sub' $P672 = "121_1303340933.805" 
    capture_lex $P672
.annotate 'line', 862
    .const 'Sub' $P672 = "121_1303340933.805" 
    newclosure $P740, $P672
    .lex "string_to_int", $P740
.annotate 'line', 861
    find_lex $P741, "string_to_int"
    set_global "string_to_int", $P741
.annotate 'line', 881
    .const 'Sub' $P742 = "123_1303340933.805" 
    newclosure $P773, $P742
    .lex "ints_to_string", $P773
.annotate 'line', 861
    find_lex $P774, "ints_to_string"
    set_global "ints_to_string", $P774
    .lex "$?PACKAGE", $P775
    .lex "$?CLASS", $P776
    find_lex $P777, "string_to_int"
    find_lex $P778, "ints_to_string"
.annotate 'line', 1052
    .const 'Sub' $P1300 = "165_1303340933.805" 
    newclosure $P1315, $P1300
.annotate 'line', 861
    .return ($P1315)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post493") :outer("120_1303340933.805")
.annotate 'line', 861
    get_hll_global $P671, ["HLL";"Actions"], "_block670" 
    .local pmc block
    set block, $P671
    .const 'Sub' $P1316 = "121_1303340933.805" 
    set_global "string_to_int", $P1316
    .const 'Sub' $P1317 = "123_1303340933.805" 
    set_global "ints_to_string", $P1317
    .const 'Sub' $P1319 = "166_1303340933.805" 
    capture_lex $P1319
    $P1319()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1318"  :anon :subid("166_1303340933.805") :outer("120_1303340933.805")
.annotate 'line', 861
    nqp_get_sc_object $P1320, "1303340926.369", 2
    .local pmc type_obj
    set type_obj, $P1320
    get_how $P1321, type_obj
    .const 'Sub' $P1322 = "126_1303340933.805" 
    $P1321."add_method"(type_obj, "CTXSAVE", $P1322)
    get_how $P1323, type_obj
    .const 'Sub' $P1324 = "127_1303340933.805" 
    $P1323."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1324)
    get_how $P1325, type_obj
    .const 'Sub' $P1326 = "130_1303340933.805" 
    $P1325."add_method"(type_obj, "EXPR", $P1326)
    get_how $P1327, type_obj
    .const 'Sub' $P1328 = "133_1303340933.805" 
    $P1327."add_method"(type_obj, "term:sym<circumfix>", $P1328)
    get_how $P1329, type_obj
    .const 'Sub' $P1330 = "134_1303340933.805" 
    $P1329."add_method"(type_obj, "termish", $P1330)
    get_how $P1331, type_obj
    .const 'Sub' $P1332 = "135_1303340933.805" 
    $P1331."add_method"(type_obj, "nullterm", $P1332)
    get_how $P1333, type_obj
    .const 'Sub' $P1334 = "136_1303340933.805" 
    $P1333."add_method"(type_obj, "nullterm_alt", $P1334)
    get_how $P1335, type_obj
    .const 'Sub' $P1336 = "137_1303340933.805" 
    $P1335."add_method"(type_obj, "integer", $P1336)
    get_how $P1337, type_obj
    .const 'Sub' $P1338 = "138_1303340933.805" 
    $P1337."add_method"(type_obj, "dec_number", $P1338)
    get_how $P1339, type_obj
    .const 'Sub' $P1340 = "139_1303340933.805" 
    $P1339."add_method"(type_obj, "decint", $P1340)
    get_how $P1341, type_obj
    .const 'Sub' $P1342 = "140_1303340933.805" 
    $P1341."add_method"(type_obj, "hexint", $P1342)
    get_how $P1343, type_obj
    .const 'Sub' $P1344 = "141_1303340933.805" 
    $P1343."add_method"(type_obj, "octint", $P1344)
    get_how $P1345, type_obj
    .const 'Sub' $P1346 = "142_1303340933.805" 
    $P1345."add_method"(type_obj, "binint", $P1346)
    get_how $P1347, type_obj
    .const 'Sub' $P1348 = "143_1303340933.805" 
    $P1347."add_method"(type_obj, "quote_EXPR", $P1348)
    get_how $P1349, type_obj
    .const 'Sub' $P1350 = "146_1303340933.805" 
    $P1349."add_method"(type_obj, "quote_delimited", $P1350)
    get_how $P1351, type_obj
    .const 'Sub' $P1352 = "148_1303340933.805" 
    $P1351."add_method"(type_obj, "quote_atom", $P1352)
    get_how $P1353, type_obj
    .const 'Sub' $P1354 = "149_1303340933.805" 
    $P1353."add_method"(type_obj, "quote_escape:sym<backslash>", $P1354)
    get_how $P1355, type_obj
    .const 'Sub' $P1356 = "150_1303340933.805" 
    $P1355."add_method"(type_obj, "quote_escape:sym<stopper>", $P1356)
    get_how $P1357, type_obj
    .const 'Sub' $P1358 = "151_1303340933.805" 
    $P1357."add_method"(type_obj, "quote_escape:sym<bs>", $P1358)
    get_how $P1359, type_obj
    .const 'Sub' $P1360 = "152_1303340933.805" 
    $P1359."add_method"(type_obj, "quote_escape:sym<nl>", $P1360)
    get_how $P1361, type_obj
    .const 'Sub' $P1362 = "153_1303340933.805" 
    $P1361."add_method"(type_obj, "quote_escape:sym<cr>", $P1362)
    get_how $P1363, type_obj
    .const 'Sub' $P1364 = "154_1303340933.805" 
    $P1363."add_method"(type_obj, "quote_escape:sym<tab>", $P1364)
    get_how $P1365, type_obj
    .const 'Sub' $P1366 = "155_1303340933.805" 
    $P1365."add_method"(type_obj, "quote_escape:sym<ff>", $P1366)
    get_how $P1367, type_obj
    .const 'Sub' $P1368 = "156_1303340933.805" 
    $P1367."add_method"(type_obj, "quote_escape:sym<esc>", $P1368)
    get_how $P1369, type_obj
    .const 'Sub' $P1370 = "157_1303340933.805" 
    $P1369."add_method"(type_obj, "quote_escape:sym<hex>", $P1370)
    get_how $P1371, type_obj
    .const 'Sub' $P1372 = "158_1303340933.805" 
    $P1371."add_method"(type_obj, "quote_escape:sym<oct>", $P1372)
    get_how $P1373, type_obj
    .const 'Sub' $P1374 = "159_1303340933.805" 
    $P1373."add_method"(type_obj, "quote_escape:sym<chr>", $P1374)
    get_how $P1375, type_obj
    .const 'Sub' $P1376 = "160_1303340933.805" 
    $P1375."add_method"(type_obj, "quote_escape:sym<0>", $P1376)
    get_how $P1377, type_obj
    .const 'Sub' $P1378 = "161_1303340933.805" 
    $P1377."add_method"(type_obj, "quote_escape:sym<misc>", $P1378)
    get_how $P1379, type_obj
    .const 'Sub' $P1380 = "162_1303340933.805" 
    $P1379."add_method"(type_obj, "charname", $P1380)
    get_how $P1381, type_obj
    .const 'Sub' $P1382 = "163_1303340933.805" 
    $P1381."add_method"(type_obj, "charnames", $P1382)
    get_how $P1383, type_obj
    .const 'Sub' $P1384 = "165_1303340933.805" 
    $P1383."add_method"(type_obj, "charspec", $P1384)
    get_how $P1385, type_obj
    $P1386 = $P1385."compose"(type_obj)
    .return ($P1386)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_673
    .param pmc param_674
.annotate 'line', 862
    .const 'Sub' $P690 = "122_1303340933.805" 
    capture_lex $P690
    .lex "$src", param_673
    .lex "$base", param_674
.annotate 'line', 863
    new $P675, "Undef"
    .lex "$len", $P675
.annotate 'line', 864
    new $P676, "Undef"
    .lex "$i", $P676
.annotate 'line', 865
    new $P677, "Undef"
    .lex "$result", $P677
.annotate 'line', 863
    find_lex $P678, "$src"
    unless_null $P678, vivify_494
    new $P678, "Undef"
  vivify_494:
    set $S679, $P678
    length $I680, $S679
    new $P681, 'Integer'
    set $P681, $I680
    store_lex "$len", $P681
.annotate 'line', 864
    new $P682, "Integer"
    assign $P682, 0
    store_lex "$i", $P682
.annotate 'line', 865
    new $P683, "Integer"
    assign $P683, 0
    store_lex "$result", $P683
.annotate 'line', 867
    new $P737, 'ExceptionHandler'
    set_label $P737, loop736_handler
    $P737."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P737
  loop736_test:
    find_lex $P684, "$i"
    unless_null $P684, vivify_495
    new $P684, "Undef"
  vivify_495:
    set $N685, $P684
    find_lex $P686, "$len"
    unless_null $P686, vivify_496
    new $P686, "Undef"
  vivify_496:
    set $N687, $P686
    islt $I688, $N685, $N687
    unless $I688, loop736_done
  loop736_redo:
    .const 'Sub' $P690 = "122_1303340933.805" 
    capture_lex $P690
    $P690()
  loop736_next:
    goto loop736_test
  loop736_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P738, exception, 'type'
    eq $P738, .CONTROL_LOOP_NEXT, loop736_next
    eq $P738, .CONTROL_LOOP_REDO, loop736_redo
  loop736_done:
    pop_eh 
    find_lex $P739, "$result"
    unless_null $P739, vivify_511
    new $P739, "Undef"
  vivify_511:
.annotate 'line', 862
    .return ($P739)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block689"  :anon :subid("122_1303340933.805") :outer("121_1303340933.805")
.annotate 'line', 868
    new $P691, "Undef"
    .lex "$char", $P691
.annotate 'line', 870
    new $P692, "Undef"
    .lex "$digitval", $P692
.annotate 'line', 868
    find_lex $P693, "$src"
    unless_null $P693, vivify_497
    new $P693, "Undef"
  vivify_497:
    set $S694, $P693
    find_lex $P695, "$i"
    unless_null $P695, vivify_498
    new $P695, "Undef"
  vivify_498:
    set $I696, $P695
    substr $S697, $S694, $I696, 1
    new $P698, 'String'
    set $P698, $S697
    store_lex "$char", $P698
.annotate 'line', 869
    find_lex $P700, "$char"
    unless_null $P700, vivify_499
    new $P700, "Undef"
  vivify_499:
    set $S701, $P700
    iseq $I702, $S701, "_"
    unless $I702, if_699_end
    set $I703, .CONTROL_LOOP_NEXT
    die 0, $I703
  if_699_end:
.annotate 'line', 870
    find_lex $P704, "$char"
    unless_null $P704, vivify_500
    new $P704, "Undef"
  vivify_500:
    set $S705, $P704
    index $I706, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S705
    new $P707, 'Integer'
    set $P707, $I706
    store_lex "$digitval", $P707
.annotate 'line', 871
    find_lex $P708, "$digitval"
    unless_null $P708, vivify_501
    new $P708, "Undef"
  vivify_501:
    div $P709, $P708, 2
    set $I710, $P709
    new $P711, 'Integer'
    set $P711, $I710
    store_lex "$digitval", $P711
.annotate 'line', 872
    find_lex $P715, "$digitval"
    unless_null $P715, vivify_502
    new $P715, "Undef"
  vivify_502:
    set $N716, $P715
    islt $I717, $N716, 0.0
    unless $I717, unless_714
    new $P713, 'Integer'
    set $P713, $I717
    goto unless_714_end
  unless_714:
    find_lex $P718, "$digitval"
    unless_null $P718, vivify_503
    new $P718, "Undef"
  vivify_503:
    set $N719, $P718
    find_lex $P720, "$base"
    unless_null $P720, vivify_504
    new $P720, "Undef"
  vivify_504:
    set $N721, $P720
    isge $I722, $N719, $N721
    new $P713, 'Integer'
    set $P713, $I722
  unless_714_end:
    unless $P713, if_712_end
.annotate 'line', 873
    find_lex $P723, "$src"
    unless_null $P723, vivify_505
    new $P723, "Undef"
  vivify_505:
    new $P724, 'String'
    set $P724, "Invalid radix conversion of character '"
    find_lex $P725, "$char"
    unless_null $P725, vivify_506
    new $P725, "Undef"
  vivify_506:
    concat $P726, $P724, $P725
    concat $P727, $P726, "'"
    $P723."panic"($P727)
  if_712_end:
.annotate 'line', 875
    find_lex $P728, "$base"
    unless_null $P728, vivify_507
    new $P728, "Undef"
  vivify_507:
    find_lex $P729, "$result"
    unless_null $P729, vivify_508
    new $P729, "Undef"
  vivify_508:
    mul $P730, $P728, $P729
    find_lex $P731, "$digitval"
    unless_null $P731, vivify_509
    new $P731, "Undef"
  vivify_509:
    add $P732, $P730, $P731
    store_lex "$result", $P732
.annotate 'line', 876
    find_lex $P733, "$i"
    unless_null $P733, vivify_510
    new $P733, "Undef"
  vivify_510:
    add $P734, $P733, 1
    store_lex "$i", $P734
    new $P735, "ResizablePMCArray"
    push $P735, $P732
    push $P735, $P734
.annotate 'line', 867
    .return ($P735)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_743
.annotate 'line', 881
    .const 'Sub' $P749 = "124_1303340933.805" 
    capture_lex $P749
    .lex "$ints", param_743
.annotate 'line', 882
    find_lex $P746, "$ints"
    unless_null $P746, vivify_512
    new $P746, "Undef"
  vivify_512:
    does $I747, $P746, "array"
    if $I747, if_745
.annotate 'line', 889
    find_lex $P769, "$ints"
    unless_null $P769, vivify_513
    new $P769, "Undef"
  vivify_513:
    $I770 = $P769."ast"()
    chr $S771, $I770
    new $P772, 'String'
    set $P772, $S771
.annotate 'line', 888
    set $P744, $P772
.annotate 'line', 882
    goto if_745_end
  if_745:
    .const 'Sub' $P749 = "124_1303340933.805" 
    capture_lex $P749
    $P768 = $P749()
    set $P744, $P768
  if_745_end:
.annotate 'line', 881
    .return ($P744)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block748"  :anon :subid("124_1303340933.805") :outer("123_1303340933.805")
.annotate 'line', 882
    .const 'Sub' $P757 = "125_1303340933.805" 
    capture_lex $P757
.annotate 'line', 883
    new $P750, "Undef"
    .lex "$result", $P750
    new $P751, "String"
    assign $P751, ""
    store_lex "$result", $P751
.annotate 'line', 884
    find_lex $P753, "$ints"
    unless_null $P753, vivify_514
    new $P753, "Undef"
  vivify_514:
    defined $I754, $P753
    unless $I754, for_undef_515
    iter $P752, $P753
    new $P765, 'ExceptionHandler'
    set_label $P765, loop764_handler
    $P765."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P765
  loop764_test:
    unless $P752, loop764_done
    shift $P755, $P752
  loop764_redo:
    .const 'Sub' $P757 = "125_1303340933.805" 
    capture_lex $P757
    $P757($P755)
  loop764_next:
    goto loop764_test
  loop764_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P766, exception, 'type'
    eq $P766, .CONTROL_LOOP_NEXT, loop764_next
    eq $P766, .CONTROL_LOOP_REDO, loop764_redo
  loop764_done:
    pop_eh 
  for_undef_515:
    find_lex $P767, "$result"
    unless_null $P767, vivify_518
    new $P767, "Undef"
  vivify_518:
.annotate 'line', 882
    .return ($P767)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block756"  :anon :subid("125_1303340933.805") :outer("124_1303340933.805")
    .param pmc param_758
.annotate 'line', 884
    .lex "$_", param_758
.annotate 'line', 885
    find_lex $P759, "$result"
    unless_null $P759, vivify_516
    new $P759, "Undef"
  vivify_516:
    find_lex $P760, "$_"
    unless_null $P760, vivify_517
    new $P760, "Undef"
  vivify_517:
    $I761 = $P760."ast"()
    chr $S762, $I761
    concat $P763, $P759, $S762
    store_lex "$result", $P763
.annotate 'line', 884
    .return ($P763)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_780
.annotate 'line', 894
    .lex "self", param_780
.annotate 'line', 895
    get_hll_global $P781, ["PAST"], "Op"
.annotate 'line', 901
    new $P782, "ResizablePMCArray"
    push $P782, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P782, "    if null $P0 goto ctxsave_done"
    push $P782, "    $I0 = can $P0, \"ctxsave\""
    push $P782, "    unless $I0 goto ctxsave_done"
    push $P782, "    $P0.\"ctxsave\"()"
    push $P782, "  ctxsave_done:"
    $P783 = $P781."new"($P782 :named("inline"))
.annotate 'line', 894
    .return ($P783)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_785
    .param pmc param_786
.annotate 'line', 908
    .const 'Sub' $P796 = "128_1303340933.805" 
    capture_lex $P796
    .lex "self", param_785
    .lex "$block", param_786
.annotate 'line', 909
    new $P787, "Undef"
    .lex "$outer_ctx", $P787
    find_dynamic_lex $P788, "%*COMPILING"
    unless_null $P788, vivify_519
    get_hll_global $P788, "%COMPILING"
    unless_null $P788, vivify_520
    die "Contextual %*COMPILING not found"
  vivify_520:
  vivify_519:
    set $P789, $P788["%?OPTIONS"]
    unless_null $P789, vivify_521
    $P789 = root_new ['parrot';'Hash']
  vivify_521:
    set $P790, $P789["outer_ctx"]
    unless_null $P790, vivify_522
    new $P790, "Undef"
  vivify_522:
    store_lex "$outer_ctx", $P790
.annotate 'line', 910
    find_lex $P793, "$outer_ctx"
    unless_null $P793, vivify_523
    new $P793, "Undef"
  vivify_523:
    defined $I794, $P793
    if $I794, if_792
    new $P791, 'Integer'
    set $P791, $I794
    goto if_792_end
  if_792:
    .const 'Sub' $P796 = "128_1303340933.805" 
    capture_lex $P796
    $P819 = $P796()
    set $P791, $P819
  if_792_end:
.annotate 'line', 908
    .return ($P791)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block795"  :anon :subid("128_1303340933.805") :outer("127_1303340933.805")
.annotate 'line', 910
    .const 'Sub' $P810 = "129_1303340933.805" 
    capture_lex $P810
.annotate 'line', 911
    $P797 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P797
    find_lex $P798, "$outer_ctx"
    unless_null $P798, vivify_524
    new $P798, "Undef"
  vivify_524:
    getattribute $P799, $P798, "current_namespace"
    $P800 = $P799."get_name"()
    store_lex "@ns", $P800
.annotate 'line', 912
    find_lex $P801, "@ns"
    unless_null $P801, vivify_525
    $P801 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    $P801."shift"()
.annotate 'line', 913
    find_lex $P802, "$block"
    unless_null $P802, vivify_526
    new $P802, "Undef"
  vivify_526:
    find_lex $P803, "@ns"
    unless_null $P803, vivify_527
    $P803 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P802."namespace"($P803)
.annotate 'line', 914
    find_lex $P805, "$outer_ctx"
    unless_null $P805, vivify_528
    new $P805, "Undef"
  vivify_528:
    $P806 = $P805."lexpad_full"()
    defined $I807, $P806
    unless $I807, for_undef_529
    iter $P804, $P806
    new $P817, 'ExceptionHandler'
    set_label $P817, loop816_handler
    $P817."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P817
  loop816_test:
    unless $P804, loop816_done
    shift $P808, $P804
  loop816_redo:
    .const 'Sub' $P810 = "129_1303340933.805" 
    capture_lex $P810
    $P810($P808)
  loop816_next:
    goto loop816_test
  loop816_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P818, exception, 'type'
    eq $P818, .CONTROL_LOOP_NEXT, loop816_next
    eq $P818, .CONTROL_LOOP_REDO, loop816_redo
  loop816_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 910
    .return ($P804)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block809"  :anon :subid("129_1303340933.805") :outer("128_1303340933.805")
    .param pmc param_811
.annotate 'line', 914
    .lex "$_", param_811
.annotate 'line', 915
    find_lex $P812, "$block"
    unless_null $P812, vivify_530
    new $P812, "Undef"
  vivify_530:
    find_lex $P813, "$_"
    unless_null $P813, vivify_531
    new $P813, "Undef"
  vivify_531:
    $P814 = $P813."key"()
    $P815 = $P812."symbol"($P814, "lexical" :named("scope"))
.annotate 'line', 914
    .return ($P815)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_823
    .param pmc param_824
    .param pmc param_825 :optional
    .param int has_param_825 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P907 = "132_1303340933.805" 
    capture_lex $P907
    .const 'Sub' $P871 = "131_1303340933.805" 
    capture_lex $P871
    new $P822, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P822, control_821
    push_eh $P822
    .lex "self", param_823
    .lex "$/", param_824
    if has_param_825, optparam_532
    new $P826, "Undef"
    set param_825, $P826
  optparam_532:
    .lex "$key", param_825
.annotate 'line', 923
    new $P827, "Undef"
    .lex "$past", $P827
.annotate 'line', 922
    find_lex $P829, "$key"
    unless_null $P829, vivify_533
    new $P829, "Undef"
  vivify_533:
    if $P829, unless_828_end
    new $P830, "Exception"
    set $P830['type'], .CONTROL_RETURN
    new $P831, "Integer"
    assign $P831, 0
    setattribute $P830, 'payload', $P831
    throw $P830
  unless_828_end:
.annotate 'line', 923
    find_lex $P833, "$/"
    unless_null $P833, vivify_534
    new $P833, "Undef"
  vivify_534:
    $P834 = $P833."ast"()
    set $P832, $P834
    defined $I836, $P832
    if $I836, default_835
    find_lex $P837, "$/"
    unless_null $P837, vivify_535
    $P837 = root_new ['parrot';'Hash']
  vivify_535:
    set $P838, $P837["OPER"]
    unless_null $P838, vivify_536
    new $P838, "Undef"
  vivify_536:
    $P839 = $P838."ast"()
    set $P832, $P839
  default_835:
    store_lex "$past", $P832
.annotate 'line', 924
    find_lex $P841, "$past"
    unless_null $P841, vivify_537
    new $P841, "Undef"
  vivify_537:
    if $P841, unless_840_end
.annotate 'line', 925
    get_hll_global $P842, ["PAST"], "Op"
    find_lex $P843, "$/"
    unless_null $P843, vivify_538
    new $P843, "Undef"
  vivify_538:
    $P844 = $P842."new"($P843 :named("node"))
    store_lex "$past", $P844
.annotate 'line', 926
    find_lex $P846, "$/"
    unless_null $P846, vivify_539
    $P846 = root_new ['parrot';'Hash']
  vivify_539:
    set $P847, $P846["OPER"]
    unless_null $P847, vivify_540
    $P847 = root_new ['parrot';'Hash']
  vivify_540:
    set $P848, $P847["O"]
    unless_null $P848, vivify_541
    $P848 = root_new ['parrot';'Hash']
  vivify_541:
    set $P849, $P848["pasttype"]
    unless_null $P849, vivify_542
    new $P849, "Undef"
  vivify_542:
    if $P849, if_845
.annotate 'line', 927
    find_lex $P857, "$/"
    unless_null $P857, vivify_543
    $P857 = root_new ['parrot';'Hash']
  vivify_543:
    set $P858, $P857["OPER"]
    unless_null $P858, vivify_544
    $P858 = root_new ['parrot';'Hash']
  vivify_544:
    set $P859, $P858["O"]
    unless_null $P859, vivify_545
    $P859 = root_new ['parrot';'Hash']
  vivify_545:
    set $P860, $P859["pirop"]
    unless_null $P860, vivify_546
    new $P860, "Undef"
  vivify_546:
    unless $P860, if_856_end
    find_lex $P861, "$past"
    unless_null $P861, vivify_547
    new $P861, "Undef"
  vivify_547:
    find_lex $P862, "$/"
    unless_null $P862, vivify_548
    $P862 = root_new ['parrot';'Hash']
  vivify_548:
    set $P863, $P862["OPER"]
    unless_null $P863, vivify_549
    $P863 = root_new ['parrot';'Hash']
  vivify_549:
    set $P864, $P863["O"]
    unless_null $P864, vivify_550
    $P864 = root_new ['parrot';'Hash']
  vivify_550:
    set $P865, $P864["pirop"]
    unless_null $P865, vivify_551
    new $P865, "Undef"
  vivify_551:
    set $S866, $P865
    $P861."pirop"($S866)
  if_856_end:
    goto if_845_end
  if_845:
.annotate 'line', 926
    find_lex $P850, "$past"
    unless_null $P850, vivify_552
    new $P850, "Undef"
  vivify_552:
    find_lex $P851, "$/"
    unless_null $P851, vivify_553
    $P851 = root_new ['parrot';'Hash']
  vivify_553:
    set $P852, $P851["OPER"]
    unless_null $P852, vivify_554
    $P852 = root_new ['parrot';'Hash']
  vivify_554:
    set $P853, $P852["O"]
    unless_null $P853, vivify_555
    $P853 = root_new ['parrot';'Hash']
  vivify_555:
    set $P854, $P853["pasttype"]
    unless_null $P854, vivify_556
    new $P854, "Undef"
  vivify_556:
    set $S855, $P854
    $P850."pasttype"($S855)
  if_845_end:
.annotate 'line', 928
    find_lex $P868, "$past"
    unless_null $P868, vivify_557
    new $P868, "Undef"
  vivify_557:
    $P869 = $P868."name"()
    if $P869, unless_867_end
    .const 'Sub' $P871 = "131_1303340933.805" 
    capture_lex $P871
    $P871()
  unless_867_end:
  unless_840_end:
.annotate 'line', 934
    find_lex $P894, "$key"
    unless_null $P894, vivify_565
    new $P894, "Undef"
  vivify_565:
    set $S895, $P894
    iseq $I896, $S895, "POSTFIX"
    if $I896, if_893
.annotate 'line', 936
    find_lex $P902, "$/"
    unless_null $P902, vivify_566
    new $P902, "Undef"
  vivify_566:
    $P903 = $P902."list"()
    defined $I904, $P903
    unless $I904, for_undef_567
    iter $P901, $P903
    new $P919, 'ExceptionHandler'
    set_label $P919, loop918_handler
    $P919."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P919
  loop918_test:
    unless $P901, loop918_done
    shift $P905, $P901
  loop918_redo:
    .const 'Sub' $P907 = "132_1303340933.805" 
    capture_lex $P907
    $P907($P905)
  loop918_next:
    goto loop918_test
  loop918_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P920, exception, 'type'
    eq $P920, .CONTROL_LOOP_NEXT, loop918_next
    eq $P920, .CONTROL_LOOP_REDO, loop918_redo
  loop918_done:
    pop_eh 
  for_undef_567:
.annotate 'line', 935
    goto if_893_end
  if_893:
.annotate 'line', 934
    find_lex $P897, "$past"
    unless_null $P897, vivify_571
    new $P897, "Undef"
  vivify_571:
    find_lex $P898, "$/"
    unless_null $P898, vivify_572
    $P898 = root_new ['parrot';'ResizablePMCArray']
  vivify_572:
    set $P899, $P898[0]
    unless_null $P899, vivify_573
    new $P899, "Undef"
  vivify_573:
    $P900 = $P899."ast"()
    $P897."unshift"($P900)
  if_893_end:
.annotate 'line', 938
    find_lex $P921, "$/"
    find_lex $P922, "$past"
    unless_null $P922, vivify_574
    new $P922, "Undef"
  vivify_574:
    $P923 = $P921."!make"($P922)
.annotate 'line', 921
    .return ($P923)
  control_821:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P924, exception, "payload"
    .return ($P924)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block870"  :anon :subid("131_1303340933.805") :outer("130_1303340933.805")
.annotate 'line', 930
    new $P872, "Undef"
    .lex "$name", $P872
.annotate 'line', 929
    find_lex $P874, "$key"
    unless_null $P874, vivify_558
    new $P874, "Undef"
  vivify_558:
    set $S875, $P874
    iseq $I876, $S875, "LIST"
    unless $I876, if_873_end
    new $P877, "String"
    assign $P877, "infix"
    store_lex "$key", $P877
  if_873_end:
.annotate 'line', 930
    find_lex $P878, "$key"
    unless_null $P878, vivify_559
    new $P878, "Undef"
  vivify_559:
    set $S879, $P878
    downcase $S880, $S879
    new $P881, 'String'
    set $P881, $S880
    concat $P882, $P881, ":<"
    find_lex $P883, "$/"
    unless_null $P883, vivify_560
    $P883 = root_new ['parrot';'Hash']
  vivify_560:
    set $P884, $P883["OPER"]
    unless_null $P884, vivify_561
    $P884 = root_new ['parrot';'Hash']
  vivify_561:
    set $P885, $P884["sym"]
    unless_null $P885, vivify_562
    new $P885, "Undef"
  vivify_562:
    concat $P886, $P882, $P885
    concat $P887, $P886, ">"
    store_lex "$name", $P887
.annotate 'line', 931
    find_lex $P888, "$past"
    unless_null $P888, vivify_563
    new $P888, "Undef"
  vivify_563:
    new $P889, "String"
    assign $P889, "&"
    find_lex $P890, "$name"
    unless_null $P890, vivify_564
    new $P890, "Undef"
  vivify_564:
    concat $P891, $P889, $P890
    $P892 = $P888."name"($P891)
.annotate 'line', 928
    .return ($P892)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block906"  :anon :subid("132_1303340933.805") :outer("130_1303340933.805")
    .param pmc param_908
.annotate 'line', 936
    .lex "$_", param_908
    find_lex $P911, "$_"
    unless_null $P911, vivify_568
    new $P911, "Undef"
  vivify_568:
    $P912 = $P911."ast"()
    defined $I913, $P912
    if $I913, if_910
    new $P909, 'Integer'
    set $P909, $I913
    goto if_910_end
  if_910:
    find_lex $P914, "$past"
    unless_null $P914, vivify_569
    new $P914, "Undef"
  vivify_569:
    find_lex $P915, "$_"
    unless_null $P915, vivify_570
    new $P915, "Undef"
  vivify_570:
    $P916 = $P915."ast"()
    $P917 = $P914."push"($P916)
    set $P909, $P917
  if_910_end:
    .return ($P909)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_926
    .param pmc param_927
.annotate 'line', 941
    .lex "self", param_926
    .lex "$/", param_927
    find_lex $P928, "$/"
    find_lex $P929, "$/"
    unless_null $P929, vivify_575
    $P929 = root_new ['parrot';'Hash']
  vivify_575:
    set $P930, $P929["circumfix"]
    unless_null $P930, vivify_576
    new $P930, "Undef"
  vivify_576:
    $P931 = $P930."ast"()
    $P932 = $P928."!make"($P931)
    .return ($P932)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_934
    .param pmc param_935
.annotate 'line', 943
    .lex "self", param_934
    .lex "$/", param_935
    find_lex $P936, "$/"
    find_lex $P937, "$/"
    unless_null $P937, vivify_577
    $P937 = root_new ['parrot';'Hash']
  vivify_577:
    set $P938, $P937["term"]
    unless_null $P938, vivify_578
    new $P938, "Undef"
  vivify_578:
    $P939 = $P938."ast"()
    $P940 = $P936."!make"($P939)
    .return ($P940)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_942
    .param pmc param_943
.annotate 'line', 944
    .lex "self", param_942
    .lex "$/", param_943
    find_lex $P944, "$/"
    new $P945, "Undef"
    $P946 = $P944."!make"($P945)
    .return ($P946)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_948
    .param pmc param_949
.annotate 'line', 945
    .lex "self", param_948
    .lex "$/", param_949
    find_lex $P950, "$/"
    find_lex $P951, "$/"
    unless_null $P951, vivify_579
    $P951 = root_new ['parrot';'Hash']
  vivify_579:
    set $P952, $P951["term"]
    unless_null $P952, vivify_580
    new $P952, "Undef"
  vivify_580:
    $P953 = $P952."ast"()
    $P954 = $P950."!make"($P953)
    .return ($P954)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_956
    .param pmc param_957
.annotate 'line', 947
    .lex "self", param_956
    .lex "$/", param_957
    find_lex $P958, "$/"
    find_lex $P959, "$/"
    unless_null $P959, vivify_581
    $P959 = root_new ['parrot';'Hash']
  vivify_581:
    set $P960, $P959["VALUE"]
    unless_null $P960, vivify_582
    new $P960, "Undef"
  vivify_582:
    $P961 = $P960."ast"()
    $P962 = $P958."!make"($P961)
    .return ($P962)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_964
    .param pmc param_965
.annotate 'line', 949
    .lex "self", param_964
    .lex "$/", param_965
    find_lex $P966, "$/"
    find_lex $P967, "$/"
    unless_null $P967, vivify_583
    new $P967, "Undef"
  vivify_583:
    set $N968, $P967
    $P969 = $P966."!make"($N968)
    .return ($P969)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_971
    .param pmc param_972
.annotate 'line', 951
    .lex "self", param_971
    .lex "$/", param_972
    find_lex $P973, "$/"
    find_lex $P974, "$/"
    unless_null $P974, vivify_584
    new $P974, "Undef"
  vivify_584:
    $P975 = "string_to_int"($P974, 10)
    $P976 = $P973."!make"($P975)
    .return ($P976)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_978
    .param pmc param_979
.annotate 'line', 952
    .lex "self", param_978
    .lex "$/", param_979
    find_lex $P980, "$/"
    find_lex $P981, "$/"
    unless_null $P981, vivify_585
    new $P981, "Undef"
  vivify_585:
    $P982 = "string_to_int"($P981, 16)
    $P983 = $P980."!make"($P982)
    .return ($P983)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_985
    .param pmc param_986
.annotate 'line', 953
    .lex "self", param_985
    .lex "$/", param_986
    find_lex $P987, "$/"
    find_lex $P988, "$/"
    unless_null $P988, vivify_586
    new $P988, "Undef"
  vivify_586:
    $P989 = "string_to_int"($P988, 8)
    $P990 = $P987."!make"($P989)
    .return ($P990)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_992
    .param pmc param_993
.annotate 'line', 954
    .lex "self", param_992
    .lex "$/", param_993
    find_lex $P994, "$/"
    find_lex $P995, "$/"
    unless_null $P995, vivify_587
    new $P995, "Undef"
  vivify_587:
    $P996 = "string_to_int"($P995, 2)
    $P997 = $P994."!make"($P996)
    .return ($P997)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_999
    .param pmc param_1000
.annotate 'line', 956
    .const 'Sub' $P1016 = "144_1303340933.805" 
    capture_lex $P1016
    .lex "self", param_999
    .lex "$/", param_1000
.annotate 'line', 957
    new $P1001, "Undef"
    .lex "$past", $P1001
    find_lex $P1002, "$/"
    unless_null $P1002, vivify_588
    $P1002 = root_new ['parrot';'Hash']
  vivify_588:
    set $P1003, $P1002["quote_delimited"]
    unless_null $P1003, vivify_589
    new $P1003, "Undef"
  vivify_589:
    $P1004 = $P1003."ast"()
    store_lex "$past", $P1004
.annotate 'line', 958
    find_lex $P1006, "$/"
    unless_null $P1006, vivify_590
    new $P1006, "Undef"
  vivify_590:
    $P1007 = $P1006."CURSOR"()
    $P1008 = $P1007."quotemod_check"("w")
    unless $P1008, if_1005_end
.annotate 'line', 959
    get_hll_global $P1010, ["PAST"], "Node"
    find_lex $P1011, "$past"
    unless_null $P1011, vivify_591
    new $P1011, "Undef"
  vivify_591:
    $P1012 = $P1010."ACCEPTS"($P1011)
    if $P1012, if_1009
.annotate 'line', 962
    .const 'Sub' $P1016 = "144_1303340933.805" 
    capture_lex $P1016
    $P1016()
    goto if_1009_end
  if_1009:
.annotate 'line', 960
    find_lex $P1013, "$/"
    unless_null $P1013, vivify_602
    new $P1013, "Undef"
  vivify_602:
    $P1014 = $P1013."CURSOR"()
    $P1014."panic"("Can't form :w list from non-constant strings (yet)")
  if_1009_end:
  if_1005_end:
.annotate 'line', 973
    get_hll_global $P1048, ["PAST"], "Node"
    find_lex $P1049, "$past"
    unless_null $P1049, vivify_603
    new $P1049, "Undef"
  vivify_603:
    $P1050 = $P1048."ACCEPTS"($P1049)
    isfalse $I1051, $P1050
    unless $I1051, if_1047_end
.annotate 'line', 974
    get_hll_global $P1052, ["PAST"], "Val"
    find_lex $P1053, "$past"
    unless_null $P1053, vivify_604
    new $P1053, "Undef"
  vivify_604:
    set $S1054, $P1053
    $P1055 = $P1052."new"($S1054 :named("value"))
    store_lex "$past", $P1055
  if_1047_end:
.annotate 'line', 976
    find_lex $P1056, "$/"
    find_lex $P1057, "$past"
    unless_null $P1057, vivify_605
    new $P1057, "Undef"
  vivify_605:
    $P1058 = $P1056."!make"($P1057)
.annotate 'line', 956
    .return ($P1058)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1015"  :anon :subid("144_1303340933.805") :outer("143_1303340933.805")
.annotate 'line', 962
    .const 'Sub' $P1035 = "145_1303340933.805" 
    capture_lex $P1035
.annotate 'line', 963
    $P1017 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1017
    get_hll_global $P1018, ["HLL";"Grammar"], "split_words"
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_592
    new $P1019, "Undef"
  vivify_592:
    find_lex $P1020, "$past"
    unless_null $P1020, vivify_593
    new $P1020, "Undef"
  vivify_593:
    $P1021 = $P1018($P1019, $P1020)
    store_lex "@words", $P1021
.annotate 'line', 964
    find_lex $P1024, "@words"
    unless_null $P1024, vivify_594
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
    set $N1025, $P1024
    isne $I1026, $N1025, 1.0
    if $I1026, if_1023
.annotate 'line', 969
    find_lex $P1043, "@words"
    unless_null $P1043, vivify_595
    $P1043 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    set $P1044, $P1043[0]
    unless_null $P1044, vivify_596
    new $P1044, "Undef"
  vivify_596:
    set $S1045, $P1044
    new $P1046, 'String'
    set $P1046, $S1045
    store_lex "$past", $P1046
.annotate 'line', 968
    set $P1022, $P1046
.annotate 'line', 964
    goto if_1023_end
  if_1023:
.annotate 'line', 965
    get_hll_global $P1027, ["PAST"], "Op"
    find_lex $P1028, "$/"
    unless_null $P1028, vivify_597
    new $P1028, "Undef"
  vivify_597:
    $P1029 = $P1027."new"("list" :named("pasttype"), $P1028 :named("node"))
    store_lex "$past", $P1029
.annotate 'line', 966
    find_lex $P1031, "@words"
    unless_null $P1031, vivify_598
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    defined $I1032, $P1031
    unless $I1032, for_undef_599
    iter $P1030, $P1031
    new $P1041, 'ExceptionHandler'
    set_label $P1041, loop1040_handler
    $P1041."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1041
  loop1040_test:
    unless $P1030, loop1040_done
    shift $P1033, $P1030
  loop1040_redo:
    .const 'Sub' $P1035 = "145_1303340933.805" 
    capture_lex $P1035
    $P1035($P1033)
  loop1040_next:
    goto loop1040_test
  loop1040_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1042, exception, 'type'
    eq $P1042, .CONTROL_LOOP_NEXT, loop1040_next
    eq $P1042, .CONTROL_LOOP_REDO, loop1040_redo
  loop1040_done:
    pop_eh 
  for_undef_599:
.annotate 'line', 964
    set $P1022, $P1030
  if_1023_end:
.annotate 'line', 962
    .return ($P1022)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1034"  :anon :subid("145_1303340933.805") :outer("144_1303340933.805")
    .param pmc param_1036
.annotate 'line', 966
    .lex "$_", param_1036
    find_lex $P1037, "$past"
    unless_null $P1037, vivify_600
    new $P1037, "Undef"
  vivify_600:
    find_lex $P1038, "$_"
    unless_null $P1038, vivify_601
    new $P1038, "Undef"
  vivify_601:
    $P1039 = $P1037."push"($P1038)
    .return ($P1039)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1060
    .param pmc param_1061
.annotate 'line', 979
    .const 'Sub' $P1073 = "147_1303340933.805" 
    capture_lex $P1073
    .lex "self", param_1060
    .lex "$/", param_1061
.annotate 'line', 980
    $P1062 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1062
.annotate 'line', 981
    new $P1063, "Undef"
    .lex "$lastlit", $P1063
.annotate 'line', 997
    new $P1064, "Undef"
    .lex "$past", $P1064
.annotate 'line', 979
    find_lex $P1065, "@parts"
    unless_null $P1065, vivify_606
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_606:
.annotate 'line', 981
    new $P1066, "String"
    assign $P1066, ""
    store_lex "$lastlit", $P1066
.annotate 'line', 982
    find_lex $P1068, "$/"
    unless_null $P1068, vivify_607
    $P1068 = root_new ['parrot';'Hash']
  vivify_607:
    set $P1069, $P1068["quote_atom"]
    unless_null $P1069, vivify_608
    new $P1069, "Undef"
  vivify_608:
    defined $I1070, $P1069
    unless $I1070, for_undef_609
    iter $P1067, $P1069
    new $P1106, 'ExceptionHandler'
    set_label $P1106, loop1105_handler
    $P1106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1106
  loop1105_test:
    unless $P1067, loop1105_done
    shift $P1071, $P1067
  loop1105_redo:
    .const 'Sub' $P1073 = "147_1303340933.805" 
    capture_lex $P1073
    $P1073($P1071)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1107, exception, 'type'
    eq $P1107, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P1107, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_609:
.annotate 'line', 996
    find_lex $P1109, "$lastlit"
    unless_null $P1109, vivify_622
    new $P1109, "Undef"
  vivify_622:
    set $S1110, $P1109
    isgt $I1111, $S1110, ""
    unless $I1111, if_1108_end
    find_lex $P1112, "@parts"
    unless_null $P1112, vivify_623
    $P1112 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P1113, "$lastlit"
    unless_null $P1113, vivify_624
    new $P1113, "Undef"
  vivify_624:
    $P1112."push"($P1113)
  if_1108_end:
.annotate 'line', 997
    find_lex $P1116, "@parts"
    unless_null $P1116, vivify_625
    $P1116 = root_new ['parrot';'ResizablePMCArray']
  vivify_625:
    if $P1116, if_1115
    new $P1119, "String"
    assign $P1119, ""
    set $P1114, $P1119
    goto if_1115_end
  if_1115:
    find_lex $P1117, "@parts"
    unless_null $P1117, vivify_626
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    $P1118 = $P1117."shift"()
    set $P1114, $P1118
  if_1115_end:
    store_lex "$past", $P1114
.annotate 'line', 998
    new $P1127, 'ExceptionHandler'
    set_label $P1127, loop1126_handler
    $P1127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1127
  loop1126_test:
    find_lex $P1120, "@parts"
    unless_null $P1120, vivify_627
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    unless $P1120, loop1126_done
  loop1126_redo:
.annotate 'line', 999
    get_hll_global $P1121, ["PAST"], "Op"
    find_lex $P1122, "$past"
    unless_null $P1122, vivify_628
    new $P1122, "Undef"
  vivify_628:
    find_lex $P1123, "@parts"
    unless_null $P1123, vivify_629
    $P1123 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    $P1124 = $P1123."shift"()
    $P1125 = $P1121."new"($P1122, $P1124, "concat" :named("pirop"))
    store_lex "$past", $P1125
  loop1126_next:
.annotate 'line', 998
    goto loop1126_test
  loop1126_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1128, exception, 'type'
    eq $P1128, .CONTROL_LOOP_NEXT, loop1126_next
    eq $P1128, .CONTROL_LOOP_REDO, loop1126_redo
  loop1126_done:
    pop_eh 
.annotate 'line', 1001
    find_lex $P1129, "$/"
    find_lex $P1130, "$past"
    unless_null $P1130, vivify_630
    new $P1130, "Undef"
  vivify_630:
    $P1131 = $P1129."!make"($P1130)
.annotate 'line', 979
    .return ($P1131)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1072"  :anon :subid("147_1303340933.805") :outer("146_1303340933.805")
    .param pmc param_1075
.annotate 'line', 983
    new $P1074, "Undef"
    .lex "$ast", $P1074
    .lex "$_", param_1075
    find_lex $P1076, "$_"
    unless_null $P1076, vivify_610
    new $P1076, "Undef"
  vivify_610:
    $P1077 = $P1076."ast"()
    store_lex "$ast", $P1077
.annotate 'line', 984
    get_hll_global $P1080, ["PAST"], "Node"
    find_lex $P1081, "$ast"
    unless_null $P1081, vivify_611
    new $P1081, "Undef"
  vivify_611:
    $P1082 = $P1080."ACCEPTS"($P1081)
    isfalse $I1083, $P1082
    if $I1083, if_1079
.annotate 'line', 987
    find_lex $P1089, "$ast"
    unless_null $P1089, vivify_612
    new $P1089, "Undef"
  vivify_612:
    get_hll_global $P1090, ["PAST"], "Val"
    $P1091 = $P1089."isa"($P1090)
    if $P1091, if_1088
.annotate 'line', 991
    find_lex $P1097, "$lastlit"
    unless_null $P1097, vivify_613
    new $P1097, "Undef"
  vivify_613:
    set $S1098, $P1097
    isgt $I1099, $S1098, ""
    unless $I1099, if_1096_end
    find_lex $P1100, "@parts"
    unless_null $P1100, vivify_614
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P1101, "$lastlit"
    unless_null $P1101, vivify_615
    new $P1101, "Undef"
  vivify_615:
    $P1100."push"($P1101)
  if_1096_end:
.annotate 'line', 992
    find_lex $P1102, "@parts"
    unless_null $P1102, vivify_616
    $P1102 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    find_lex $P1103, "$ast"
    unless_null $P1103, vivify_617
    new $P1103, "Undef"
  vivify_617:
    $P1102."push"($P1103)
.annotate 'line', 993
    new $P1104, "String"
    assign $P1104, ""
    store_lex "$lastlit", $P1104
.annotate 'line', 990
    set $P1087, $P1104
.annotate 'line', 987
    goto if_1088_end
  if_1088:
.annotate 'line', 988
    find_lex $P1092, "$lastlit"
    unless_null $P1092, vivify_618
    new $P1092, "Undef"
  vivify_618:
    find_lex $P1093, "$ast"
    unless_null $P1093, vivify_619
    new $P1093, "Undef"
  vivify_619:
    $S1094 = $P1093."value"()
    concat $P1095, $P1092, $S1094
    store_lex "$lastlit", $P1095
.annotate 'line', 987
    set $P1087, $P1095
  if_1088_end:
    set $P1078, $P1087
.annotate 'line', 984
    goto if_1079_end
  if_1079:
.annotate 'line', 985
    find_lex $P1084, "$lastlit"
    unless_null $P1084, vivify_620
    new $P1084, "Undef"
  vivify_620:
    find_lex $P1085, "$ast"
    unless_null $P1085, vivify_621
    new $P1085, "Undef"
  vivify_621:
    concat $P1086, $P1084, $P1085
    store_lex "$lastlit", $P1086
.annotate 'line', 984
    set $P1078, $P1086
  if_1079_end:
.annotate 'line', 982
    .return ($P1078)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1133
    .param pmc param_1134
.annotate 'line', 1004
    .lex "self", param_1133
    .lex "$/", param_1134
.annotate 'line', 1005
    find_lex $P1135, "$/"
    find_lex $P1138, "$/"
    unless_null $P1138, vivify_631
    $P1138 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1139, $P1138["quote_escape"]
    unless_null $P1139, vivify_632
    new $P1139, "Undef"
  vivify_632:
    if $P1139, if_1137
    find_lex $P1143, "$/"
    unless_null $P1143, vivify_633
    new $P1143, "Undef"
  vivify_633:
    set $S1144, $P1143
    new $P1136, 'String'
    set $P1136, $S1144
    goto if_1137_end
  if_1137:
    find_lex $P1140, "$/"
    unless_null $P1140, vivify_634
    $P1140 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1141, $P1140["quote_escape"]
    unless_null $P1141, vivify_635
    new $P1141, "Undef"
  vivify_635:
    $P1142 = $P1141."ast"()
    set $P1136, $P1142
  if_1137_end:
    $P1145 = $P1135."!make"($P1136)
.annotate 'line', 1004
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1147
    .param pmc param_1148
.annotate 'line', 1008
    .lex "self", param_1147
    .lex "$/", param_1148
    find_lex $P1149, "$/"
    $P1150 = $P1149."!make"("\\")
    .return ($P1150)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1152
    .param pmc param_1153
.annotate 'line', 1009
    .lex "self", param_1152
    .lex "$/", param_1153
    find_lex $P1154, "$/"
    find_lex $P1155, "$/"
    unless_null $P1155, vivify_636
    $P1155 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1156, $P1155["stopper"]
    unless_null $P1156, vivify_637
    new $P1156, "Undef"
  vivify_637:
    set $S1157, $P1156
    $P1158 = $P1154."!make"($S1157)
    .return ($P1158)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1160
    .param pmc param_1161
.annotate 'line', 1011
    .lex "self", param_1160
    .lex "$/", param_1161
    find_lex $P1162, "$/"
    $P1163 = $P1162."!make"("\b")
    .return ($P1163)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1165
    .param pmc param_1166
.annotate 'line', 1012
    .lex "self", param_1165
    .lex "$/", param_1166
    find_lex $P1167, "$/"
    $P1168 = $P1167."!make"("\n")
    .return ($P1168)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1170
    .param pmc param_1171
.annotate 'line', 1013
    .lex "self", param_1170
    .lex "$/", param_1171
    find_lex $P1172, "$/"
    $P1173 = $P1172."!make"("\r")
    .return ($P1173)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1175
    .param pmc param_1176
.annotate 'line', 1014
    .lex "self", param_1175
    .lex "$/", param_1176
    find_lex $P1177, "$/"
    $P1178 = $P1177."!make"("\t")
    .return ($P1178)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1180
    .param pmc param_1181
.annotate 'line', 1015
    .lex "self", param_1180
    .lex "$/", param_1181
    find_lex $P1182, "$/"
    $P1183 = $P1182."!make"("\f")
    .return ($P1183)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1185
    .param pmc param_1186
.annotate 'line', 1016
    .lex "self", param_1185
    .lex "$/", param_1186
    find_lex $P1187, "$/"
    $P1188 = $P1187."!make"("\e")
    .return ($P1188)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1190
    .param pmc param_1191
.annotate 'line', 1018
    .lex "self", param_1190
    .lex "$/", param_1191
.annotate 'line', 1019
    find_lex $P1192, "$/"
    find_lex $P1195, "$/"
    unless_null $P1195, vivify_638
    $P1195 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1196, $P1195["hexint"]
    unless_null $P1196, vivify_639
    new $P1196, "Undef"
  vivify_639:
    if $P1196, if_1194
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_640
    $P1199 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1200, $P1199["hexints"]
    unless_null $P1200, vivify_641
    $P1200 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1201, $P1200["hexint"]
    unless_null $P1201, vivify_642
    new $P1201, "Undef"
  vivify_642:
    set $P1193, $P1201
    goto if_1194_end
  if_1194:
    find_lex $P1197, "$/"
    unless_null $P1197, vivify_643
    $P1197 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1198, $P1197["hexint"]
    unless_null $P1198, vivify_644
    new $P1198, "Undef"
  vivify_644:
    set $P1193, $P1198
  if_1194_end:
    $P1202 = "ints_to_string"($P1193)
    $P1203 = $P1192."!make"($P1202)
.annotate 'line', 1018
    .return ($P1203)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1205
    .param pmc param_1206
.annotate 'line', 1022
    .lex "self", param_1205
    .lex "$/", param_1206
.annotate 'line', 1023
    find_lex $P1207, "$/"
    find_lex $P1210, "$/"
    unless_null $P1210, vivify_645
    $P1210 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1211, $P1210["octint"]
    unless_null $P1211, vivify_646
    new $P1211, "Undef"
  vivify_646:
    if $P1211, if_1209
    find_lex $P1214, "$/"
    unless_null $P1214, vivify_647
    $P1214 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1215, $P1214["octints"]
    unless_null $P1215, vivify_648
    $P1215 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1216, $P1215["octint"]
    unless_null $P1216, vivify_649
    new $P1216, "Undef"
  vivify_649:
    set $P1208, $P1216
    goto if_1209_end
  if_1209:
    find_lex $P1212, "$/"
    unless_null $P1212, vivify_650
    $P1212 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1213, $P1212["octint"]
    unless_null $P1213, vivify_651
    new $P1213, "Undef"
  vivify_651:
    set $P1208, $P1213
  if_1209_end:
    $P1217 = "ints_to_string"($P1208)
    $P1218 = $P1207."!make"($P1217)
.annotate 'line', 1022
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1220
    .param pmc param_1221
.annotate 'line', 1026
    .lex "self", param_1220
    .lex "$/", param_1221
.annotate 'line', 1027
    find_lex $P1222, "$/"
    find_lex $P1223, "$/"
    unless_null $P1223, vivify_652
    $P1223 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1224, $P1223["charspec"]
    unless_null $P1224, vivify_653
    new $P1224, "Undef"
  vivify_653:
    $P1225 = $P1224."ast"()
    $P1226 = $P1222."!make"($P1225)
.annotate 'line', 1026
    .return ($P1226)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1228
    .param pmc param_1229
.annotate 'line', 1030
    .lex "self", param_1228
    .lex "$/", param_1229
.annotate 'line', 1031
    find_lex $P1230, "$/"
    $P1231 = $P1230."!make"(unicode:"\x{0}")
.annotate 'line', 1030
    .return ($P1231)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1233
    .param pmc param_1234
.annotate 'line', 1034
    .lex "self", param_1233
    .lex "$/", param_1234
.annotate 'line', 1035
    find_lex $P1235, "$/"
    find_lex $P1238, "$/"
    unless_null $P1238, vivify_654
    $P1238 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1239, $P1238["textq"]
    unless_null $P1239, vivify_655
    new $P1239, "Undef"
  vivify_655:
    if $P1239, if_1237
    find_lex $P1245, "$/"
    unless_null $P1245, vivify_656
    $P1245 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1246, $P1245["textqq"]
    unless_null $P1246, vivify_657
    new $P1246, "Undef"
  vivify_657:
    $P1247 = $P1246."Str"()
    set $P1236, $P1247
    goto if_1237_end
  if_1237:
    new $P1240, "String"
    assign $P1240, "\\"
    find_lex $P1241, "$/"
    unless_null $P1241, vivify_658
    $P1241 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1242, $P1241["textq"]
    unless_null $P1242, vivify_659
    new $P1242, "Undef"
  vivify_659:
    $S1243 = $P1242."Str"()
    concat $P1244, $P1240, $S1243
    set $P1236, $P1244
  if_1237_end:
    $P1248 = $P1235."!make"($P1236)
.annotate 'line', 1034
    .return ($P1248)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1250
    .param pmc param_1251
.annotate 'line', 1038
    .lex "self", param_1250
    .lex "$/", param_1251
.annotate 'line', 1039
    new $P1252, "Undef"
    .lex "$codepoint", $P1252
.annotate 'line', 1040
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_660
    $P1255 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1256, $P1255["integer"]
    unless_null $P1256, vivify_661
    new $P1256, "Undef"
  vivify_661:
    if $P1256, if_1254
.annotate 'line', 1041
    find_lex $P1260, "$/"
    unless_null $P1260, vivify_662
    new $P1260, "Undef"
  vivify_662:
    set $S1261, $P1260
    find_codepoint $I1262, $S1261
    new $P1253, 'Integer'
    set $P1253, $I1262
.annotate 'line', 1040
    goto if_1254_end
  if_1254:
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_663
    $P1257 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1258, $P1257["integer"]
    unless_null $P1258, vivify_664
    new $P1258, "Undef"
  vivify_664:
    $P1259 = $P1258."ast"()
    set $P1253, $P1259
  if_1254_end:
    store_lex "$codepoint", $P1253
.annotate 'line', 1042
    find_lex $P1264, "$codepoint"
    unless_null $P1264, vivify_665
    new $P1264, "Undef"
  vivify_665:
    set $N1265, $P1264
    islt $I1266, $N1265, 0.0
    unless $I1266, if_1263_end
    find_lex $P1267, "$/"
    unless_null $P1267, vivify_666
    new $P1267, "Undef"
  vivify_666:
    $P1268 = $P1267."CURSOR"()
    new $P1269, 'String'
    set $P1269, "Unrecognized character name "
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_667
    new $P1270, "Undef"
  vivify_667:
    concat $P1271, $P1269, $P1270
    $P1268."panic"($P1271)
  if_1263_end:
.annotate 'line', 1043
    find_lex $P1272, "$/"
    find_lex $P1273, "$codepoint"
    unless_null $P1273, vivify_668
    new $P1273, "Undef"
  vivify_668:
    set $I1274, $P1273
    chr $S1275, $I1274
    $P1276 = $P1272."!make"($S1275)
.annotate 'line', 1038
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'line', 1046
    .const 'Sub' $P1288 = "164_1303340933.805" 
    capture_lex $P1288
    .lex "self", param_1278
    .lex "$/", param_1279
.annotate 'line', 1047
    new $P1280, "Undef"
    .lex "$str", $P1280
    new $P1281, "String"
    assign $P1281, ""
    store_lex "$str", $P1281
.annotate 'line', 1048
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_669
    $P1283 = root_new ['parrot';'Hash']
  vivify_669:
    set $P1284, $P1283["charname"]
    unless_null $P1284, vivify_670
    new $P1284, "Undef"
  vivify_670:
    defined $I1285, $P1284
    unless $I1285, for_undef_671
    iter $P1282, $P1284
    new $P1295, 'ExceptionHandler'
    set_label $P1295, loop1294_handler
    $P1295."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1295
  loop1294_test:
    unless $P1282, loop1294_done
    shift $P1286, $P1282
  loop1294_redo:
    .const 'Sub' $P1288 = "164_1303340933.805" 
    capture_lex $P1288
    $P1288($P1286)
  loop1294_next:
    goto loop1294_test
  loop1294_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1296, exception, 'type'
    eq $P1296, .CONTROL_LOOP_NEXT, loop1294_next
    eq $P1296, .CONTROL_LOOP_REDO, loop1294_redo
  loop1294_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 1049
    find_lex $P1297, "$/"
    find_lex $P1298, "$str"
    unless_null $P1298, vivify_674
    new $P1298, "Undef"
  vivify_674:
    $P1299 = $P1297."!make"($P1298)
.annotate 'line', 1046
    .return ($P1299)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1287"  :anon :subid("164_1303340933.805") :outer("163_1303340933.805")
    .param pmc param_1289
.annotate 'line', 1048
    .lex "$_", param_1289
    find_lex $P1290, "$str"
    unless_null $P1290, vivify_672
    new $P1290, "Undef"
  vivify_672:
    find_lex $P1291, "$_"
    unless_null $P1291, vivify_673
    new $P1291, "Undef"
  vivify_673:
    $S1292 = $P1291."ast"()
    concat $P1293, $P1290, $S1292
    store_lex "$str", $P1293
    .return ($P1293)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303340933.805") :outer("120_1303340933.805")
    .param pmc param_1301
    .param pmc param_1302
.annotate 'line', 1052
    .lex "self", param_1301
    .lex "$/", param_1302
.annotate 'line', 1053
    find_lex $P1303, "$/"
    find_lex $P1306, "$/"
    unless_null $P1306, vivify_675
    $P1306 = root_new ['parrot';'Hash']
  vivify_675:
    set $P1307, $P1306["charnames"]
    unless_null $P1307, vivify_676
    new $P1307, "Undef"
  vivify_676:
    if $P1307, if_1305
    find_lex $P1311, "$/"
    unless_null $P1311, vivify_677
    new $P1311, "Undef"
  vivify_677:
    $I1312 = "string_to_int"($P1311, 10)
    chr $S1313, $I1312
    new $P1304, 'String'
    set $P1304, $S1313
    goto if_1305_end
  if_1305:
    find_lex $P1308, "$/"
    unless_null $P1308, vivify_678
    $P1308 = root_new ['parrot';'Hash']
  vivify_678:
    set $P1309, $P1308["charnames"]
    unless_null $P1309, vivify_679
    new $P1309, "Undef"
  vivify_679:
    $P1310 = $P1309."ast"()
    set $P1304, $P1310
  if_1305_end:
    $P1314 = $P1303."!make"($P1304)
.annotate 'line', 1052
    .return ($P1314)
.end


.HLL "nqp"

.namespace []
.sub "_block1387"  :anon :subid("167_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 861
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post680") :outer("167_1303340933.805")
.annotate 'line', 861
    .const 'Sub' $P1388 = "167_1303340933.805" 
    .local pmc block
    set block, $P1388
.annotate 'line', 1059
    load_bytecode "Parrot/Exception.pbc"
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1389"  :subid("168_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 1066
    .const 'Sub' $P2521 = "235_1303340933.805" 
    capture_lex $P2521
    .const 'Sub' $P2513 = "234_1303340933.805" 
    capture_lex $P2513
    .const 'Sub' $P2460 = "232_1303340933.805" 
    capture_lex $P2460
    .const 'Sub' $P2387 = "229_1303340933.805" 
    capture_lex $P2387
    .const 'Sub' $P2357 = "227_1303340933.805" 
    capture_lex $P2357
    .const 'Sub' $P2352 = "226_1303340933.805" 
    capture_lex $P2352
    .const 'Sub' $P2342 = "225_1303340933.805" 
    capture_lex $P2342
    .const 'Sub' $P2316 = "223_1303340933.805" 
    capture_lex $P2316
    .const 'Sub' $P2307 = "222_1303340933.805" 
    capture_lex $P2307
    .const 'Sub' $P2299 = "221_1303340933.805" 
    capture_lex $P2299
    .const 'Sub' $P2291 = "220_1303340933.805" 
    capture_lex $P2291
    .const 'Sub' $P2287 = "219_1303340933.805" 
    capture_lex $P2287
    .const 'Sub' $P2283 = "218_1303340933.805" 
    capture_lex $P2283
    .const 'Sub' $P2216 = "216_1303340933.805" 
    capture_lex $P2216
    .const 'Sub' $P2120 = "212_1303340933.805" 
    capture_lex $P2120
    .const 'Sub' $P2084 = "209_1303340933.805" 
    capture_lex $P2084
    .const 'Sub' $P2036 = "207_1303340933.805" 
    capture_lex $P2036
    .const 'Sub' $P2023 = "206_1303340933.805" 
    capture_lex $P2023
    .const 'Sub' $P2010 = "205_1303340933.805" 
    capture_lex $P2010
    .const 'Sub' $P1997 = "204_1303340933.805" 
    capture_lex $P1997
    .const 'Sub' $P1984 = "203_1303340933.805" 
    capture_lex $P1984
    .const 'Sub' $P1971 = "202_1303340933.805" 
    capture_lex $P1971
    .const 'Sub' $P1958 = "201_1303340933.805" 
    capture_lex $P1958
    .const 'Sub' $P1945 = "200_1303340933.805" 
    capture_lex $P1945
    .const 'Sub' $P1932 = "199_1303340933.805" 
    capture_lex $P1932
    .const 'Sub' $P1927 = "198_1303340933.805" 
    capture_lex $P1927
    .const 'Sub' $P1923 = "197_1303340933.805" 
    capture_lex $P1923
    .const 'Sub' $P1883 = "195_1303340933.805" 
    capture_lex $P1883
    .const 'Sub' $P1730 = "188_1303340933.805" 
    capture_lex $P1730
    .const 'Sub' $P1717 = "187_1303340933.805" 
    capture_lex $P1717
    .const 'Sub' $P1624 = "182_1303340933.805" 
    capture_lex $P1624
    .const 'Sub' $P1591 = "180_1303340933.805" 
    capture_lex $P1591
    .const 'Sub' $P1576 = "179_1303340933.805" 
    capture_lex $P1576
    .const 'Sub' $P1561 = "178_1303340933.805" 
    capture_lex $P1561
    .const 'Sub' $P1474 = "175_1303340933.805" 
    capture_lex $P1474
    .const 'Sub' $P1437 = "173_1303340933.805" 
    capture_lex $P1437
    .const 'Sub' $P1430 = "172_1303340933.805" 
    capture_lex $P1430
    .const 'Sub' $P1414 = "170_1303340933.805" 
    capture_lex $P1414
    .const 'Sub' $P1391 = "169_1303340933.805" 
    capture_lex $P1391
.annotate 'line', 1141
    .const 'Sub' $P1391 = "169_1303340933.805" 
    newclosure $P1404, $P1391
    .lex "value_type", $P1404
.annotate 'line', 1066
    .lex "$?PACKAGE", $P1405
    .lex "$?CLASS", $P1406
.annotate 'line', 1086
    find_lex $P1407, "$?PACKAGE"
    get_who $P1408, $P1407
    set $P1409, $P1408["$interactive_ctx"]
    unless_null $P1409, vivify_684
    new $P1409, "Undef"
  vivify_684:
.annotate 'line', 1087
    find_lex $P1410, "$?PACKAGE"
    get_who $P1411, $P1410
    set $P1412, $P1411["%interactive_pad"]
    unless_null $P1412, vivify_685
    $P1412 = root_new ['parrot';'Hash']
  vivify_685:
    .const 'Sub' $P1414 = "170_1303340933.805" 
    capture_lex $P1414
    $P1414()
.annotate 'line', 1106
    find_lex $P1473, "value_type"
.annotate 'line', 1737
    .const 'Sub' $P2513 = "234_1303340933.805" 
    newclosure $P2519, $P2513
.annotate 'line', 1066
    .return ($P2519)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post681") :outer("168_1303340933.805")
.annotate 'line', 1066
    get_hll_global $P1390, ["HLL";"Compiler"], "_block1389" 
    .local pmc block
    set block, $P1390
    .const 'Sub' $P2521 = "235_1303340933.805" 
    capture_lex $P2521
    $P2521()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2520"  :anon :subid("235_1303340933.805") :outer("168_1303340933.805")
.annotate 'line', 1066
    nqp_get_sc_object $P2522, "1303340926.369", 3
    .local pmc type_obj
    set type_obj, $P2522
    get_how $P2523, type_obj
    get_hll_global $P2524, "NQPAttribute"
    $P2525 = $P2524."new"("@!stages" :named("name"))
    $P2523."add_attribute"(type_obj, $P2525)
    get_how $P2526, type_obj
    get_hll_global $P2527, "NQPAttribute"
    $P2528 = $P2527."new"("$!parsegrammar" :named("name"))
    $P2526."add_attribute"(type_obj, $P2528)
    get_how $P2529, type_obj
    get_hll_global $P2530, "NQPAttribute"
    $P2531 = $P2530."new"("$!parseactions" :named("name"))
    $P2529."add_attribute"(type_obj, $P2531)
    get_how $P2532, type_obj
    get_hll_global $P2533, "NQPAttribute"
    $P2534 = $P2533."new"("$!astgrammar" :named("name"))
    $P2532."add_attribute"(type_obj, $P2534)
    get_how $P2535, type_obj
    get_hll_global $P2536, "NQPAttribute"
    $P2537 = $P2536."new"("$!commandline_banner" :named("name"))
    $P2535."add_attribute"(type_obj, $P2537)
    get_how $P2538, type_obj
    get_hll_global $P2539, "NQPAttribute"
    $P2540 = $P2539."new"("$!commandline_prompt" :named("name"))
    $P2538."add_attribute"(type_obj, $P2540)
    get_how $P2541, type_obj
    get_hll_global $P2542, "NQPAttribute"
    $P2543 = $P2542."new"("@!cmdoptions" :named("name"))
    $P2541."add_attribute"(type_obj, $P2543)
    get_how $P2544, type_obj
    get_hll_global $P2545, "NQPAttribute"
    $P2546 = $P2545."new"("$!usage" :named("name"))
    $P2544."add_attribute"(type_obj, $P2546)
    get_how $P2547, type_obj
    get_hll_global $P2548, "NQPAttribute"
    $P2549 = $P2548."new"("$!version" :named("name"))
    $P2547."add_attribute"(type_obj, $P2549)
    get_how $P2550, type_obj
    get_hll_global $P2551, "NQPAttribute"
    $P2552 = $P2551."new"("$!compiler_progname" :named("name"))
    $P2550."add_attribute"(type_obj, $P2552)
    get_how $P2553, type_obj
    get_hll_global $P2554, "NQPAttribute"
    $P2555 = $P2554."new"("$!language" :named("name"))
    $P2553."add_attribute"(type_obj, $P2555)
    get_how $P2556, type_obj
    .const 'Sub' $P2557 = "172_1303340933.805" 
    $P2556."add_method"(type_obj, "new", $P2557)
    get_how $P2558, type_obj
    .const 'Sub' $P2559 = "173_1303340933.805" 
    $P2558."add_method"(type_obj, "BUILD", $P2559)
    get_how $P2560, type_obj
    .const 'Sub' $P2561 = "175_1303340933.805" 
    $P2560."add_method"(type_obj, "get_exports", $P2561)
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "178_1303340933.805" 
    $P2562."add_method"(type_obj, "get_module", $P2563)
    get_how $P2564, type_obj
    .const 'Sub' $P2565 = "179_1303340933.805" 
    $P2564."add_method"(type_obj, "language", $P2565)
    get_how $P2566, type_obj
    .const 'Sub' $P2567 = "180_1303340933.805" 
    $P2566."add_method"(type_obj, "load_module", $P2567)
    get_how $P2568, type_obj
    .const 'Sub' $P2569 = "182_1303340933.805" 
    $P2568."add_method"(type_obj, "import", $P2569)
    get_how $P2570, type_obj
    .const 'Sub' $P2571 = "187_1303340933.805" 
    $P2570."add_method"(type_obj, "autoprint", $P2571)
    get_how $P2572, type_obj
    .const 'Sub' $P2573 = "188_1303340933.805" 
    $P2572."add_method"(type_obj, "interactive", $P2573)
    get_how $P2574, type_obj
    .const 'Sub' $P2575 = "195_1303340933.805" 
    $P2574."add_method"(type_obj, "eval", $P2575)
    get_how $P2576, type_obj
    .const 'Sub' $P2577 = "197_1303340933.805" 
    $P2576."add_method"(type_obj, "ctxsave", $P2577)
    get_how $P2578, type_obj
    .const 'Sub' $P2579 = "198_1303340933.805" 
    $P2578."add_method"(type_obj, "panic", $P2579)
    get_how $P2580, type_obj
    .const 'Sub' $P2581 = "199_1303340933.805" 
    $P2580."add_method"(type_obj, "stages", $P2581)
    get_how $P2582, type_obj
    .const 'Sub' $P2583 = "200_1303340933.805" 
    $P2582."add_method"(type_obj, "parsegrammar", $P2583)
    get_how $P2584, type_obj
    .const 'Sub' $P2585 = "201_1303340933.805" 
    $P2584."add_method"(type_obj, "parseactions", $P2585)
    get_how $P2586, type_obj
    .const 'Sub' $P2587 = "202_1303340933.805" 
    $P2586."add_method"(type_obj, "astgrammar", $P2587)
    get_how $P2588, type_obj
    .const 'Sub' $P2589 = "203_1303340933.805" 
    $P2588."add_method"(type_obj, "commandline_banner", $P2589)
    get_how $P2590, type_obj
    .const 'Sub' $P2591 = "204_1303340933.805" 
    $P2590."add_method"(type_obj, "commandline_prompt", $P2591)
    get_how $P2592, type_obj
    .const 'Sub' $P2593 = "205_1303340933.805" 
    $P2592."add_method"(type_obj, "compiler_progname", $P2593)
    get_how $P2594, type_obj
    .const 'Sub' $P2595 = "206_1303340933.805" 
    $P2594."add_method"(type_obj, "commandline_options", $P2595)
    get_how $P2596, type_obj
    .const 'Sub' $P2597 = "207_1303340933.805" 
    $P2596."add_method"(type_obj, "command_line", $P2597)
    get_how $P2598, type_obj
    .const 'Sub' $P2599 = "209_1303340933.805" 
    $P2598."add_method"(type_obj, "process_args", $P2599)
    get_how $P2600, type_obj
    .const 'Sub' $P2601 = "212_1303340933.805" 
    $P2600."add_method"(type_obj, "evalfiles", $P2601)
    get_how $P2602, type_obj
    .const 'Sub' $P2603 = "216_1303340933.805" 
    $P2602."add_method"(type_obj, "compile", $P2603)
    get_how $P2604, type_obj
    .const 'Sub' $P2605 = "218_1303340933.805" 
    $P2604."add_method"(type_obj, "parse", $P2605)
    get_how $P2606, type_obj
    .const 'Sub' $P2607 = "219_1303340933.805" 
    $P2606."add_method"(type_obj, "past", $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "220_1303340933.805" 
    $P2608."add_method"(type_obj, "post", $P2609)
    get_how $P2610, type_obj
    .const 'Sub' $P2611 = "221_1303340933.805" 
    $P2610."add_method"(type_obj, "pir", $P2611)
    get_how $P2612, type_obj
    .const 'Sub' $P2613 = "222_1303340933.805" 
    $P2612."add_method"(type_obj, "evalpmc", $P2613)
    get_how $P2614, type_obj
    .const 'Sub' $P2615 = "223_1303340933.805" 
    $P2614."add_method"(type_obj, "dumper", $P2615)
    get_how $P2616, type_obj
    .const 'Sub' $P2617 = "225_1303340933.805" 
    $P2616."add_method"(type_obj, "usage", $P2617)
    get_how $P2618, type_obj
    .const 'Sub' $P2619 = "226_1303340933.805" 
    $P2618."add_method"(type_obj, "version", $P2619)
    get_how $P2620, type_obj
    .const 'Sub' $P2621 = "227_1303340933.805" 
    $P2620."add_method"(type_obj, "removestage", $P2621)
    get_how $P2622, type_obj
    .const 'Sub' $P2623 = "229_1303340933.805" 
    $P2622."add_method"(type_obj, "addstage", $P2623)
    get_how $P2624, type_obj
    .const 'Sub' $P2625 = "232_1303340933.805" 
    $P2624."add_method"(type_obj, "parse_name", $P2625)
    get_how $P2626, type_obj
    .const 'Sub' $P2627 = "234_1303340933.805" 
    $P2626."add_method"(type_obj, "lineof", $P2627)
    get_how $P2628, type_obj
    $P2629 = $P2628."compose"(type_obj)
    .return ($P2629)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("169_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1392
.annotate 'line', 1141
    .lex "$value", param_1392
.annotate 'line', 1142
    find_lex $P1395, "$value"
    unless_null $P1395, vivify_682
    new $P1395, "Undef"
  vivify_682:
    isa $I1396, $P1395, "NameSpace"
    if $I1396, if_1394
.annotate 'line', 1144
    find_lex $P1400, "$value"
    unless_null $P1400, vivify_683
    new $P1400, "Undef"
  vivify_683:
    isa $I1401, $P1400, "Sub"
    if $I1401, if_1399
    new $P1403, "String"
    assign $P1403, "var"
    set $P1398, $P1403
    goto if_1399_end
  if_1399:
    new $P1402, "String"
    assign $P1402, "sub"
    set $P1398, $P1402
  if_1399_end:
    set $P1393, $P1398
.annotate 'line', 1142
    goto if_1394_end
  if_1394:
    new $P1397, "String"
    assign $P1397, "namespace"
    set $P1393, $P1397
  if_1394_end:
.annotate 'line', 1141
    .return ($P1393)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1413"  :anon :subid("170_1303340933.805") :outer("168_1303340933.805")
.annotate 'line', 1087
    .const 'Sub' $P1416 = "171_1303340933.805" 
    capture_lex $P1416
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post686") :outer("170_1303340933.805")
.annotate 'line', 1087
    .const 'Sub' $P1414 = "170_1303340933.805" 
    .local pmc block
    set block, $P1414
.annotate 'line', 1088
    .const 'Sub' $P1416 = "171_1303340933.805" 
    capture_lex $P1416
    $P1416()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1415"  :anon :subid("171_1303340933.805") :outer("170_1303340933.805")
.annotate 'line', 1093
    $P1417 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1417
.annotate 'line', 1090
    getinterp $P1418
    set $P1419, $P1418["context"]
    unless_null $P1419, vivify_687
    new $P1419, "Undef"
  vivify_687:
    find_lex $P1420, "$?PACKAGE"
    get_who $P1421, $P1420
    set $P1421["$interactive_ctx"], $P1419
    find_lex $P1422, "%pad_contents"
    unless_null $P1422, vivify_688
    $P1422 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1095
    find_lex $P1423, "$?PACKAGE"
    get_who $P1424, $P1423
    set $P1425, $P1424["$interactive_ctx"]
    unless_null $P1425, vivify_689
    new $P1425, "Undef"
  vivify_689:
    getattribute $P1426, $P1425, "lex_pad"
    find_lex $P1427, "%pad_contents"
    unless_null $P1427, vivify_690
    $P1427 = root_new ['parrot';'Hash']
  vivify_690:
    copy $P1426, $P1427
.annotate 'line', 1094
    find_lex $P1428, "$?PACKAGE"
    get_who $P1429, $P1428
    set $P1429["%interactive_pad"], $P1426
.annotate 'line', 1088
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("172_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1431
.annotate 'line', 1100
    .lex "self", param_1431
.annotate 'line', 1101
    new $P1432, "Undef"
    .lex "$obj", $P1432
    find_lex $P1433, "self"
    repr_instance_of $P1434, $P1433
    store_lex "$obj", $P1434
.annotate 'line', 1102
    find_lex $P1435, "$obj"
    unless_null $P1435, vivify_691
    new $P1435, "Undef"
  vivify_691:
    $P1435."BUILD"()
    find_lex $P1436, "$obj"
    unless_null $P1436, vivify_692
    new $P1436, "Undef"
  vivify_692:
.annotate 'line', 1100
    .return ($P1436)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("173_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1438
.annotate 'line', 1106
    .const 'Sub' $P1455 = "174_1303340933.805" 
    capture_lex $P1455
    .lex "self", param_1438
.annotate 'line', 1108
    split $P1439, " ", "parse past post pir evalpmc"
    find_lex $P1440, "self"
    find_lex $P1441, "$?CLASS"
    setattribute $P1440, $P1441, "@!stages", $P1439
.annotate 'line', 1111
    split $P1442, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1443, "self"
    find_lex $P1444, "$?CLASS"
    setattribute $P1443, $P1444, "@!cmdoptions", $P1442
.annotate 'line', 1112
    new $P1445, "String"
    assign $P1445, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1446, "self"
    find_lex $P1447, "$?CLASS"
    setattribute $P1446, $P1447, "$!usage", $P1445
.annotate 'line', 1113
    find_lex $P1449, "self"
    find_lex $P1450, "$?CLASS"
    getattribute $P1451, $P1449, $P1450, "@!cmdoptions"
    unless_null $P1451, vivify_693
    $P1451 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    defined $I1452, $P1451
    unless $I1452, for_undef_694
    iter $P1448, $P1451
    new $P1468, 'ExceptionHandler'
    set_label $P1468, loop1467_handler
    $P1468."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1468
  loop1467_test:
    unless $P1448, loop1467_done
    shift $P1453, $P1448
  loop1467_redo:
    .const 'Sub' $P1455 = "174_1303340933.805" 
    capture_lex $P1455
    $P1455($P1453)
  loop1467_next:
    goto loop1467_test
  loop1467_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1469, exception, 'type'
    eq $P1469, .CONTROL_LOOP_NEXT, loop1467_next
    eq $P1469, .CONTROL_LOOP_REDO, loop1467_redo
  loop1467_done:
    pop_eh 
  for_undef_694:
.annotate 'line', 1118

            .include 'iglobals.pasm'
            .include 'cclass.pasm'
            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['git_describe']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P1470  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P1470 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P1470 .= 'revision '
          _is_version:
            $P1470 .= $S0
            $P1470 .= '.'
        
    find_lex $P1471, "self"
    find_lex $P1472, "$?CLASS"
    setattribute $P1471, $P1472, "$!version", $P1470
.annotate 'line', 1106
    .return ($P1470)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1454"  :anon :subid("174_1303340933.805") :outer("173_1303340933.805")
    .param pmc param_1456
.annotate 'line', 1113
    .lex "$_", param_1456
.annotate 'line', 1114
    find_lex $P1457, "self"
    find_lex $P1458, "$?CLASS"
    getattribute $P1459, $P1457, $P1458, "$!usage"
    unless_null $P1459, vivify_695
    new $P1459, "Undef"
  vivify_695:
    new $P1460, 'String'
    set $P1460, "    "
    find_lex $P1461, "$_"
    unless_null $P1461, vivify_696
    new $P1461, "Undef"
  vivify_696:
    concat $P1462, $P1460, $P1461
    concat $P1463, $P1462, "\n"
    concat $P1464, $P1459, $P1463
    find_lex $P1465, "self"
    find_lex $P1466, "$?CLASS"
    setattribute $P1465, $P1466, "$!usage", $P1464
.annotate 'line', 1113
    .return ($P1464)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("175_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1475
    .param pmc param_1476
    .param pmc param_1479 :slurpy
    .param pmc param_1477 :optional :named("tagset")
    .param int has_param_1477 :opt_flag
.annotate 'line', 1147
    .const 'Sub' $P1545 = "177_1303340933.805" 
    capture_lex $P1545
    .const 'Sub' $P1524 = "176_1303340933.805" 
    capture_lex $P1524
    .lex "self", param_1475
    .lex "$module", param_1476
    if has_param_1477, optparam_697
    new $P1478, "Undef"
    set param_1477, $P1478
  optparam_697:
    .lex "$tagset", param_1477
    .lex "@symbols", param_1479
.annotate 'line', 1154
    $P1480 = root_new ['parrot';'Hash']
    .lex "%exports", $P1480
.annotate 'line', 1155
    $P1481 = root_new ['parrot';'Hash']
    .lex "%source", $P1481
.annotate 'line', 1149
    find_lex $P1483, "$module"
    unless_null $P1483, vivify_698
    new $P1483, "Undef"
  vivify_698:
    does $I1484, $P1483, "hash"
    new $P1485, 'Integer'
    set $P1485, $I1484
    isfalse $I1486, $P1485
    unless $I1486, if_1482_end
.annotate 'line', 1150
    find_lex $P1487, "self"
    find_lex $P1488, "$module"
    unless_null $P1488, vivify_699
    new $P1488, "Undef"
  vivify_699:
    $P1489 = $P1487."get_module"($P1488)
    store_lex "$module", $P1489
  if_1482_end:
.annotate 'line', 1153
    find_lex $P1491, "$tagset"
    unless_null $P1491, vivify_700
    new $P1491, "Undef"
  vivify_700:
    set $P1490, $P1491
    defined $I1493, $P1490
    if $I1493, default_1492
    find_lex $P1496, "@symbols"
    unless_null $P1496, vivify_701
    $P1496 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    if $P1496, if_1495
    new $P1498, "String"
    assign $P1498, "DEFAULT"
    set $P1494, $P1498
    goto if_1495_end
  if_1495:
    new $P1497, "String"
    assign $P1497, "ALL"
    set $P1494, $P1497
  if_1495_end:
    set $P1490, $P1494
  default_1492:
    store_lex "$tagset", $P1490
    find_lex $P1499, "%exports"
    unless_null $P1499, vivify_702
    $P1499 = root_new ['parrot';'Hash']
  vivify_702:
.annotate 'line', 1155
    find_lex $P1500, "$tagset"
    unless_null $P1500, vivify_703
    new $P1500, "Undef"
  vivify_703:
    set $S1501, $P1500
    find_lex $P1502, "$module"
    unless_null $P1502, vivify_704
    $P1502 = root_new ['parrot';'Hash']
  vivify_704:
    set $P1503, $P1502["EXPORT"]
    unless_null $P1503, vivify_705
    $P1503 = root_new ['parrot';'Hash']
  vivify_705:
    set $P1504, $P1503[$S1501]
    unless_null $P1504, vivify_706
    new $P1504, "Undef"
  vivify_706:
    store_lex "%source", $P1504
.annotate 'line', 1156
    find_lex $P1506, "%source"
    unless_null $P1506, vivify_707
    $P1506 = root_new ['parrot';'Hash']
  vivify_707:
    defined $I1507, $P1506
    new $P1508, 'Integer'
    set $P1508, $I1507
    isfalse $I1509, $P1508
    unless $I1509, if_1505_end
.annotate 'line', 1157
    find_lex $P1512, "$tagset"
    unless_null $P1512, vivify_708
    new $P1512, "Undef"
  vivify_708:
    set $S1513, $P1512
    iseq $I1514, $S1513, "ALL"
    if $I1514, if_1511
    $P1516 = root_new ['parrot';'Hash']
    set $P1510, $P1516
    goto if_1511_end
  if_1511:
    find_lex $P1515, "$module"
    unless_null $P1515, vivify_709
    new $P1515, "Undef"
  vivify_709:
    set $P1510, $P1515
  if_1511_end:
    store_lex "%source", $P1510
  if_1505_end:
.annotate 'line', 1159
    find_lex $P1518, "@symbols"
    unless_null $P1518, vivify_710
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    if $P1518, if_1517
.annotate 'line', 1166
    find_lex $P1541, "%source"
    unless_null $P1541, vivify_711
    $P1541 = root_new ['parrot';'Hash']
  vivify_711:
    defined $I1542, $P1541
    unless $I1542, for_undef_712
    iter $P1540, $P1541
    new $P1558, 'ExceptionHandler'
    set_label $P1558, loop1557_handler
    $P1558."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1558
  loop1557_test:
    unless $P1540, loop1557_done
    shift $P1543, $P1540
  loop1557_redo:
    .const 'Sub' $P1545 = "177_1303340933.805" 
    capture_lex $P1545
    $P1545($P1543)
  loop1557_next:
    goto loop1557_test
  loop1557_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1559, exception, 'type'
    eq $P1559, .CONTROL_LOOP_NEXT, loop1557_next
    eq $P1559, .CONTROL_LOOP_REDO, loop1557_redo
  loop1557_done:
    pop_eh 
  for_undef_712:
.annotate 'line', 1165
    goto if_1517_end
  if_1517:
.annotate 'line', 1160
    find_lex $P1520, "@symbols"
    unless_null $P1520, vivify_719
    $P1520 = root_new ['parrot';'ResizablePMCArray']
  vivify_719:
    defined $I1521, $P1520
    unless $I1521, for_undef_720
    iter $P1519, $P1520
    new $P1538, 'ExceptionHandler'
    set_label $P1538, loop1537_handler
    $P1538."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1538
  loop1537_test:
    unless $P1519, loop1537_done
    shift $P1522, $P1519
  loop1537_redo:
    .const 'Sub' $P1524 = "176_1303340933.805" 
    capture_lex $P1524
    $P1524($P1522)
  loop1537_next:
    goto loop1537_test
  loop1537_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1539, exception, 'type'
    eq $P1539, .CONTROL_LOOP_NEXT, loop1537_next
    eq $P1539, .CONTROL_LOOP_REDO, loop1537_redo
  loop1537_done:
    pop_eh 
  for_undef_720:
  if_1517_end:
.annotate 'line', 1159
    find_lex $P1560, "%exports"
    unless_null $P1560, vivify_729
    $P1560 = root_new ['parrot';'Hash']
  vivify_729:
.annotate 'line', 1147
    .return ($P1560)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1544"  :anon :subid("177_1303340933.805") :outer("175_1303340933.805")
    .param pmc param_1547
.annotate 'line', 1167
    new $P1546, "Undef"
    .lex "$value", $P1546
    .lex "$_", param_1547
    find_lex $P1548, "$_"
    unless_null $P1548, vivify_713
    new $P1548, "Undef"
  vivify_713:
    $P1549 = $P1548."value"()
    store_lex "$value", $P1549
.annotate 'line', 1168
    find_lex $P1550, "$value"
    unless_null $P1550, vivify_714
    new $P1550, "Undef"
  vivify_714:
    find_lex $P1551, "$_"
    unless_null $P1551, vivify_715
    new $P1551, "Undef"
  vivify_715:
    $P1552 = $P1551."key"()
    find_lex $P1553, "$value"
    unless_null $P1553, vivify_716
    new $P1553, "Undef"
  vivify_716:
    $P1554 = "value_type"($P1553)
    find_lex $P1555, "%exports"
    unless_null $P1555, vivify_717
    $P1555 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1555
  vivify_717:
    set $P1556, $P1555[$P1554]
    unless_null $P1556, vivify_718
    $P1556 = root_new ['parrot';'Hash']
    set $P1555[$P1554], $P1556
  vivify_718:
    set $P1556[$P1552], $P1550
.annotate 'line', 1166
    .return ($P1550)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1523"  :anon :subid("176_1303340933.805") :outer("175_1303340933.805")
    .param pmc param_1526
.annotate 'line', 1161
    new $P1525, "Undef"
    .lex "$value", $P1525
    .lex "$_", param_1526
    find_lex $P1527, "$_"
    unless_null $P1527, vivify_721
    new $P1527, "Undef"
  vivify_721:
    set $S1528, $P1527
    find_lex $P1529, "%source"
    unless_null $P1529, vivify_722
    $P1529 = root_new ['parrot';'Hash']
  vivify_722:
    set $P1530, $P1529[$S1528]
    unless_null $P1530, vivify_723
    new $P1530, "Undef"
  vivify_723:
    store_lex "$value", $P1530
.annotate 'line', 1162
    find_lex $P1531, "$value"
    unless_null $P1531, vivify_724
    new $P1531, "Undef"
  vivify_724:
    find_lex $P1532, "$_"
    unless_null $P1532, vivify_725
    new $P1532, "Undef"
  vivify_725:
    find_lex $P1533, "$value"
    unless_null $P1533, vivify_726
    new $P1533, "Undef"
  vivify_726:
    $P1534 = "value_type"($P1533)
    find_lex $P1535, "%exports"
    unless_null $P1535, vivify_727
    $P1535 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1535
  vivify_727:
    set $P1536, $P1535[$P1534]
    unless_null $P1536, vivify_728
    $P1536 = root_new ['parrot';'Hash']
    set $P1535[$P1534], $P1536
  vivify_728:
    set $P1536[$P1532], $P1531
.annotate 'line', 1160
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("178_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1562
    .param pmc param_1563
.annotate 'line', 1174
    .lex "self", param_1562
    .lex "$name", param_1563
.annotate 'line', 1175
    $P1564 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1564
    find_lex $P1565, "self"
    find_lex $P1566, "$name"
    unless_null $P1566, vivify_730
    new $P1566, "Undef"
  vivify_730:
    $P1567 = $P1565."parse_name"($P1566)
    store_lex "@name", $P1567
.annotate 'line', 1176
    find_lex $P1568, "@name"
    unless_null $P1568, vivify_731
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_731:
    find_lex $P1569, "self"
    find_lex $P1570, "$?CLASS"
    getattribute $P1571, $P1569, $P1570, "$!language"
    unless_null $P1571, vivify_732
    new $P1571, "Undef"
  vivify_732:
    set $S1572, $P1571
    downcase $S1573, $S1572
    $P1568."unshift"($S1573)
.annotate 'line', 1177
    find_lex $P1574, "@name"
    unless_null $P1574, vivify_733
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    get_root_namespace $P1575, $P1574
.annotate 'line', 1174
    .return ($P1575)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("179_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1577
    .param pmc param_1578 :optional
    .param int has_param_1578 :opt_flag
.annotate 'line', 1180
    .lex "self", param_1577
    if has_param_1578, optparam_734
    new $P1579, "Undef"
    set param_1578, $P1579
  optparam_734:
    .lex "$name", param_1578
.annotate 'line', 1181
    find_lex $P1581, "$name"
    unless_null $P1581, vivify_735
    new $P1581, "Undef"
  vivify_735:
    unless $P1581, if_1580_end
.annotate 'line', 1182
    find_lex $P1582, "$name"
    unless_null $P1582, vivify_736
    new $P1582, "Undef"
  vivify_736:
    find_lex $P1583, "self"
    find_lex $P1584, "$?CLASS"
    setattribute $P1583, $P1584, "$!language", $P1582
.annotate 'line', 1183
    find_lex $P1585, "$name"
    unless_null $P1585, vivify_737
    new $P1585, "Undef"
  vivify_737:
    set $S1586, $P1585
    find_lex $P1587, "self"
    compreg $S1586, $P1587
  if_1580_end:
.annotate 'line', 1181
    find_lex $P1588, "self"
    find_lex $P1589, "$?CLASS"
    getattribute $P1590, $P1588, $P1589, "$!language"
    unless_null $P1590, vivify_738
    new $P1590, "Undef"
  vivify_738:
.annotate 'line', 1180
    .return ($P1590)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("180_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1592
    .param pmc param_1593
.annotate 'line', 1188
    .const 'Sub' $P1603 = "181_1303340933.805" 
    capture_lex $P1603
    .lex "self", param_1592
    .lex "$name", param_1593
.annotate 'line', 1189
    new $P1594, "Undef"
    .lex "$base", $P1594
.annotate 'line', 1190
    new $P1595, "Undef"
    .lex "$loaded", $P1595
.annotate 'line', 1189
    find_lex $P1596, "self"
    find_lex $P1597, "$name"
    unless_null $P1597, vivify_739
    new $P1597, "Undef"
  vivify_739:
    $P1598 = $P1596."parse_name"($P1597)
    join $S1599, "/", $P1598
    new $P1600, 'String'
    set $P1600, $S1599
    store_lex "$base", $P1600
.annotate 'line', 1190
    new $P1601, "Integer"
    assign $P1601, 0
    store_lex "$loaded", $P1601
.annotate 'line', 1191
    .const 'Sub' $P1603 = "181_1303340933.805" 
    capture_lex $P1603
    $P1603()
.annotate 'line', 1192
    find_lex $P1616, "$loaded"
    unless_null $P1616, vivify_741
    new $P1616, "Undef"
  vivify_741:
    if $P1616, unless_1615_end
    find_lex $P1617, "$base"
    unless_null $P1617, vivify_742
    new $P1617, "Undef"
  vivify_742:
    concat $P1618, $P1617, ".pir"
    set $S1619, $P1618
    load_bytecode $S1619
    new $P1620, "Integer"
    assign $P1620, 1
    store_lex "$loaded", $P1620
  unless_1615_end:
.annotate 'line', 1193
    find_lex $P1621, "self"
    find_lex $P1622, "$name"
    unless_null $P1622, vivify_743
    new $P1622, "Undef"
  vivify_743:
    $P1623 = $P1621."get_module"($P1622)
.annotate 'line', 1188
    .return ($P1623)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1602"  :anon :subid("181_1303340933.805") :outer("180_1303340933.805")
.annotate 'line', 1191
    new $P1610, 'ExceptionHandler'
    set_label $P1610, control_1609
    $P1610."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1610
    find_lex $P1604, "$base"
    unless_null $P1604, vivify_740
    new $P1604, "Undef"
  vivify_740:
    concat $P1605, $P1604, ".pbc"
    set $S1606, $P1605
    load_bytecode $S1606
    new $P1607, "Integer"
    assign $P1607, 1
    store_lex "$loaded", $P1607
    pop_eh 
    goto skip_handler_1608
  control_1609:
    .local pmc exception 
    .get_results (exception) 
    new $P1613, 'Integer'
    set $P1613, 1
    set exception["handled"], $P1613
    set $I1614, exception["handled"]
    ne $I1614, 1, nothandled_1612
  handled_1611:
    .return (exception)
  nothandled_1612:
    rethrow exception
  skip_handler_1608:
    .return ($P1607)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("182_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1625
    .param pmc param_1626
    .param pmc param_1627
.annotate 'line', 1196
    .const 'Sub' $P1633 = "183_1303340933.805" 
    capture_lex $P1633
    .lex "self", param_1625
    .lex "$target", param_1626
    .lex "%exports", param_1627
.annotate 'line', 1197
    find_lex $P1629, "%exports"
    unless_null $P1629, vivify_744
    $P1629 = root_new ['parrot';'Hash']
  vivify_744:
    defined $I1630, $P1629
    unless $I1630, for_undef_745
    iter $P1628, $P1629
    new $P1715, 'ExceptionHandler'
    set_label $P1715, loop1714_handler
    $P1715."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1715
  loop1714_test:
    unless $P1628, loop1714_done
    shift $P1631, $P1628
  loop1714_redo:
    .const 'Sub' $P1633 = "183_1303340933.805" 
    capture_lex $P1633
    $P1633($P1631)
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
  for_undef_745:
.annotate 'line', 1196
    .return ($P1628)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1632"  :anon :subid("183_1303340933.805") :outer("182_1303340933.805")
    .param pmc param_1636
.annotate 'line', 1197
    .const 'Sub' $P1703 = "186_1303340933.805" 
    capture_lex $P1703
    .const 'Sub' $P1683 = "185_1303340933.805" 
    capture_lex $P1683
    .const 'Sub' $P1654 = "184_1303340933.805" 
    capture_lex $P1654
.annotate 'line', 1198
    new $P1634, "Undef"
    .lex "$type", $P1634
.annotate 'line', 1199
    $P1635 = root_new ['parrot';'Hash']
    .lex "%items", $P1635
    .lex "$_", param_1636
.annotate 'line', 1198
    find_lex $P1637, "$_"
    unless_null $P1637, vivify_746
    new $P1637, "Undef"
  vivify_746:
    $P1638 = $P1637."key"()
    store_lex "$type", $P1638
.annotate 'line', 1199
    find_lex $P1639, "$_"
    unless_null $P1639, vivify_747
    new $P1639, "Undef"
  vivify_747:
    $P1640 = $P1639."value"()
    store_lex "%items", $P1640
.annotate 'line', 1200
    find_lex $P1643, "self"
    new $P1644, 'String'
    set $P1644, "import_"
    find_lex $P1645, "$type"
    unless_null $P1645, vivify_748
    new $P1645, "Undef"
  vivify_748:
    concat $P1646, $P1644, $P1645
    set $S1647, $P1646
    can $I1648, $P1643, $S1647
    if $I1648, if_1642
.annotate 'line', 1203
    find_lex $P1672, "$target"
    unless_null $P1672, vivify_749
    new $P1672, "Undef"
  vivify_749:
    new $P1673, 'String'
    set $P1673, "add_"
    find_lex $P1674, "$type"
    unless_null $P1674, vivify_750
    new $P1674, "Undef"
  vivify_750:
    concat $P1675, $P1673, $P1674
    set $S1676, $P1675
    can $I1677, $P1672, $S1676
    if $I1677, if_1671
.annotate 'line', 1207
    find_lex $P1699, "%items"
    unless_null $P1699, vivify_751
    $P1699 = root_new ['parrot';'Hash']
  vivify_751:
    defined $I1700, $P1699
    unless $I1700, for_undef_752
    iter $P1698, $P1699
    new $P1712, 'ExceptionHandler'
    set_label $P1712, loop1711_handler
    $P1712."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1712
  loop1711_test:
    unless $P1698, loop1711_done
    shift $P1701, $P1698
  loop1711_redo:
    .const 'Sub' $P1703 = "186_1303340933.805" 
    capture_lex $P1703
    $P1703($P1701)
  loop1711_next:
    goto loop1711_test
  loop1711_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1713, exception, 'type'
    eq $P1713, .CONTROL_LOOP_NEXT, loop1711_next
    eq $P1713, .CONTROL_LOOP_REDO, loop1711_redo
  loop1711_done:
    pop_eh 
  for_undef_752:
.annotate 'line', 1206
    set $P1670, $P1698
.annotate 'line', 1203
    goto if_1671_end
  if_1671:
.annotate 'line', 1204
    find_lex $P1679, "%items"
    unless_null $P1679, vivify_756
    $P1679 = root_new ['parrot';'Hash']
  vivify_756:
    defined $I1680, $P1679
    unless $I1680, for_undef_757
    iter $P1678, $P1679
    new $P1696, 'ExceptionHandler'
    set_label $P1696, loop1695_handler
    $P1696."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1696
  loop1695_test:
    unless $P1678, loop1695_done
    shift $P1681, $P1678
  loop1695_redo:
    .const 'Sub' $P1683 = "185_1303340933.805" 
    capture_lex $P1683
    $P1683($P1681)
  loop1695_next:
    goto loop1695_test
  loop1695_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1697, exception, 'type'
    eq $P1697, .CONTROL_LOOP_NEXT, loop1695_next
    eq $P1697, .CONTROL_LOOP_REDO, loop1695_redo
  loop1695_done:
    pop_eh 
  for_undef_757:
.annotate 'line', 1203
    set $P1670, $P1678
  if_1671_end:
    set $P1641, $P1670
.annotate 'line', 1200
    goto if_1642_end
  if_1642:
.annotate 'line', 1201
    find_lex $P1650, "%items"
    unless_null $P1650, vivify_762
    $P1650 = root_new ['parrot';'Hash']
  vivify_762:
    defined $I1651, $P1650
    unless $I1651, for_undef_763
    iter $P1649, $P1650
    new $P1668, 'ExceptionHandler'
    set_label $P1668, loop1667_handler
    $P1668."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1668
  loop1667_test:
    unless $P1649, loop1667_done
    shift $P1652, $P1649
  loop1667_redo:
    .const 'Sub' $P1654 = "184_1303340933.805" 
    capture_lex $P1654
    $P1654($P1652)
  loop1667_next:
    goto loop1667_test
  loop1667_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1669, exception, 'type'
    eq $P1669, .CONTROL_LOOP_NEXT, loop1667_next
    eq $P1669, .CONTROL_LOOP_REDO, loop1667_redo
  loop1667_done:
    pop_eh 
  for_undef_763:
.annotate 'line', 1200
    set $P1641, $P1649
  if_1642_end:
.annotate 'line', 1197
    .return ($P1641)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1702"  :anon :subid("186_1303340933.805") :outer("183_1303340933.805")
    .param pmc param_1704
.annotate 'line', 1207
    .lex "$_", param_1704
    find_lex $P1705, "$_"
    unless_null $P1705, vivify_753
    new $P1705, "Undef"
  vivify_753:
    $P1706 = $P1705."value"()
    find_lex $P1707, "$_"
    unless_null $P1707, vivify_754
    new $P1707, "Undef"
  vivify_754:
    $P1708 = $P1707."key"()
    set $S1709, $P1708
    find_lex $P1710, "$target"
    unless_null $P1710, vivify_755
    $P1710 = root_new ['parrot';'Hash']
    store_lex "$target", $P1710
  vivify_755:
    set $P1710[$S1709], $P1706
    .return ($P1706)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1682"  :anon :subid("185_1303340933.805") :outer("183_1303340933.805")
    .param pmc param_1684
.annotate 'line', 1204
    .lex "$_", param_1684
    find_lex $P1685, "$target"
    unless_null $P1685, vivify_758
    new $P1685, "Undef"
  vivify_758:
    find_lex $P1686, "$_"
    unless_null $P1686, vivify_759
    new $P1686, "Undef"
  vivify_759:
    $P1687 = $P1686."key"()
    find_lex $P1688, "$_"
    unless_null $P1688, vivify_760
    new $P1688, "Undef"
  vivify_760:
    $P1689 = $P1688."value"()
    new $P1690, 'String'
    set $P1690, "add_"
    find_lex $P1691, "$type"
    unless_null $P1691, vivify_761
    new $P1691, "Undef"
  vivify_761:
    concat $P1692, $P1690, $P1691
    set $S1693, $P1692
    $P1694 = $P1685.$S1693($P1687, $P1689)
    .return ($P1694)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1653"  :anon :subid("184_1303340933.805") :outer("183_1303340933.805")
    .param pmc param_1655
.annotate 'line', 1201
    .lex "$_", param_1655
    find_lex $P1656, "self"
    find_lex $P1657, "$target"
    unless_null $P1657, vivify_764
    new $P1657, "Undef"
  vivify_764:
    find_lex $P1658, "$_"
    unless_null $P1658, vivify_765
    new $P1658, "Undef"
  vivify_765:
    $P1659 = $P1658."key"()
    find_lex $P1660, "$_"
    unless_null $P1660, vivify_766
    new $P1660, "Undef"
  vivify_766:
    $P1661 = $P1660."value"()
    new $P1662, 'String'
    set $P1662, "import_"
    find_lex $P1663, "$type"
    unless_null $P1663, vivify_767
    new $P1663, "Undef"
  vivify_767:
    concat $P1664, $P1662, $P1663
    set $S1665, $P1664
    $P1666 = $P1656.$S1665($P1657, $P1659, $P1661)
    .return ($P1666)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("187_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1718
    .param pmc param_1719
.annotate 'line', 1212
    .lex "self", param_1718
    .lex "$value", param_1719
.annotate 'line', 1214
    getinterp $P1722
    $P1723 = $P1722."stdout_handle"()
    $N1724 = $P1723."tell"()
    find_dynamic_lex $P1725, "$*AUTOPRINTPOS"
    unless_null $P1725, vivify_768
    get_hll_global $P1725, "$AUTOPRINTPOS"
    unless_null $P1725, vivify_769
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_769:
  vivify_768:
    set $N1726, $P1725
    isgt $I1727, $N1724, $N1726
    unless $I1727, unless_1721
    new $P1720, 'Integer'
    set $P1720, $I1727
    goto unless_1721_end
  unless_1721:
.annotate 'line', 1213
    find_lex $P1728, "$value"
    unless_null $P1728, vivify_770
    new $P1728, "Undef"
  vivify_770:
    set $S1729, $P1728
    say $S1729
  unless_1721_end:
.annotate 'line', 1212
    .return ($P1720)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("188_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1731
    .param pmc param_1732 :slurpy :named
.annotate 'line', 1217
    .const 'Sub' $P1764 = "189_1303340933.805" 
    capture_lex $P1764
    .lex "self", param_1731
    .lex "%adverbs", param_1732
.annotate 'line', 1218
    new $P1733, "Undef"
    .lex "$target", $P1733
.annotate 'line', 1222
    new $P1734, "Undef"
    .lex "$stdin", $P1734
.annotate 'line', 1223
    new $P1735, "Undef"
    .lex "$encoding", $P1735
.annotate 'line', 1228
    new $P1736, "Undef"
    .lex "$save_ctx", $P1736
.annotate 'line', 1218
    find_lex $P1737, "%adverbs"
    unless_null $P1737, vivify_771
    $P1737 = root_new ['parrot';'Hash']
  vivify_771:
    set $P1738, $P1737["target"]
    unless_null $P1738, vivify_772
    new $P1738, "Undef"
  vivify_772:
    set $S1739, $P1738
    downcase $S1740, $S1739
    new $P1741, 'String'
    set $P1741, $S1740
    store_lex "$target", $P1741
.annotate 'line', 1220
    getinterp $P1742
    $P1743 = $P1742."stderr_handle"()
    find_lex $P1744, "self"
    $S1745 = $P1744."commandline_banner"()
    print $P1743, $S1745
.annotate 'line', 1222
    getinterp $P1746
    $P1747 = $P1746."stdin_handle"()
    store_lex "$stdin", $P1747
.annotate 'line', 1223
    find_lex $P1748, "%adverbs"
    unless_null $P1748, vivify_773
    $P1748 = root_new ['parrot';'Hash']
  vivify_773:
    set $P1749, $P1748["encoding"]
    unless_null $P1749, vivify_774
    new $P1749, "Undef"
  vivify_774:
    set $S1750, $P1749
    new $P1751, 'String'
    set $P1751, $S1750
    store_lex "$encoding", $P1751
.annotate 'line', 1224
    find_lex $P1755, "$encoding"
    unless_null $P1755, vivify_775
    new $P1755, "Undef"
  vivify_775:
    if $P1755, if_1754
    set $P1753, $P1755
    goto if_1754_end
  if_1754:
    find_lex $P1756, "$encoding"
    unless_null $P1756, vivify_776
    new $P1756, "Undef"
  vivify_776:
    set $S1757, $P1756
    isne $I1758, $S1757, "fixed_8"
    new $P1753, 'Integer'
    set $P1753, $I1758
  if_1754_end:
    unless $P1753, if_1752_end
.annotate 'line', 1225
    find_lex $P1759, "$stdin"
    unless_null $P1759, vivify_777
    new $P1759, "Undef"
  vivify_777:
    find_lex $P1760, "$encoding"
    unless_null $P1760, vivify_778
    new $P1760, "Undef"
  vivify_778:
    $P1759."encoding"($P1760)
  if_1752_end:
.annotate 'line', 1224
    find_lex $P1761, "$save_ctx"
    unless_null $P1761, vivify_779
    new $P1761, "Undef"
  vivify_779:
.annotate 'line', 1229
    new $P1881, 'ExceptionHandler'
    set_label $P1881, loop1880_handler
    $P1881."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1881
  loop1880_test:
    new $P1762, "Integer"
    assign $P1762, 1
    unless $P1762, loop1880_done
  loop1880_redo:
    .const 'Sub' $P1764 = "189_1303340933.805" 
    capture_lex $P1764
    $P1764()
  loop1880_next:
    goto loop1880_test
  loop1880_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1882, exception, 'type'
    eq $P1882, .CONTROL_LOOP_NEXT, loop1880_next
    eq $P1882, .CONTROL_LOOP_REDO, loop1880_redo
  loop1880_done:
    pop_eh 
.annotate 'line', 1217
    .return ($P1762)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1763"  :anon :subid("189_1303340933.805") :outer("188_1303340933.805")
.annotate 'line', 1229
    .const 'Sub' $P1796 = "190_1303340933.805" 
    capture_lex $P1796
.annotate 'line', 1232
    new $P1765, "Undef"
    .lex "$prompt", $P1765
.annotate 'line', 1233
    new $P1766, "Undef"
    .lex "$code", $P1766
.annotate 'line', 1238
    new $P1767, "Undef"
    .lex "$*AUTOPRINTPOS", $P1767
.annotate 'line', 1239
    new $P1768, "Undef"
    .lex "$*CTXSAVE", $P1768
.annotate 'line', 1240
    new $P1769, "Undef"
    .lex "$*MAIN_CTX", $P1769
.annotate 'line', 1230
    find_lex $P1771, "$stdin"
    unless_null $P1771, vivify_780
    new $P1771, "Undef"
  vivify_780:
    if $P1771, unless_1770_end
    set $I1772, .CONTROL_LOOP_LAST
    die 0, $I1772
  unless_1770_end:
.annotate 'line', 1232
    find_lex $P1774, "self"
    $P1775 = $P1774."commandline_prompt"()
    set $P1773, $P1775
    defined $I1777, $P1773
    if $I1777, default_1776
    new $P1778, "String"
    assign $P1778, "> "
    set $P1773, $P1778
  default_1776:
    store_lex "$prompt", $P1773
.annotate 'line', 1233
    find_lex $P1779, "$stdin"
    unless_null $P1779, vivify_781
    new $P1779, "Undef"
  vivify_781:
    find_lex $P1780, "$prompt"
    unless_null $P1780, vivify_782
    new $P1780, "Undef"
  vivify_782:
    set $S1781, $P1780
    $P1782 = $P1779."readline_interactive"($S1781)
    store_lex "$code", $P1782
.annotate 'line', 1235
    find_lex $P1784, "$code"
    unless_null $P1784, vivify_783
    new $P1784, "Undef"
  vivify_783:
    isnull $I1785, $P1784
    unless $I1785, if_1783_end
    set $I1786, .CONTROL_LOOP_LAST
    die 0, $I1786
  if_1783_end:
.annotate 'line', 1238
    getinterp $P1787
    $P1788 = $P1787."stdout_handle"()
    $P1789 = $P1788."tell"()
    store_lex "$*AUTOPRINTPOS", $P1789
.annotate 'line', 1239
    find_lex $P1790, "self"
    store_lex "$*CTXSAVE", $P1790
    find_lex $P1791, "$*MAIN_CTX"
    unless_null $P1791, vivify_784
    get_hll_global $P1791, "$MAIN_CTX"
    unless_null $P1791, vivify_785
    die "Contextual $*MAIN_CTX not found"
  vivify_785:
  vivify_784:
.annotate 'line', 1242
    find_lex $P1794, "$code"
    unless_null $P1794, vivify_786
    new $P1794, "Undef"
  vivify_786:
    if $P1794, if_1793
    set $P1792, $P1794
    goto if_1793_end
  if_1793:
    .const 'Sub' $P1796 = "190_1303340933.805" 
    capture_lex $P1796
    $P1879 = $P1796()
    set $P1792, $P1879
  if_1793_end:
.annotate 'line', 1229
    .return ($P1792)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1795"  :anon :subid("190_1303340933.805") :outer("189_1303340933.805")
.annotate 'line', 1242
    .const 'Sub' $P1829 = "193_1303340933.805" 
    capture_lex $P1829
    .const 'Sub' $P1802 = "191_1303340933.805" 
    capture_lex $P1802
.annotate 'line', 1244
    new $P1797, "Undef"
    .lex "$output", $P1797
.annotate 'line', 1243
    find_lex $P1798, "$code"
    unless_null $P1798, vivify_787
    new $P1798, "Undef"
  vivify_787:
    concat $P1799, $P1798, "\n"
    store_lex "$code", $P1799
    find_lex $P1800, "$output"
    unless_null $P1800, vivify_788
    new $P1800, "Undef"
  vivify_788:
.annotate 'line', 1245
    .const 'Sub' $P1802 = "191_1303340933.805" 
    capture_lex $P1802
    $P1802()
.annotate 'line', 1252
    find_dynamic_lex $P1826, "$*MAIN_CTX"
    unless_null $P1826, vivify_793
    get_hll_global $P1826, "$MAIN_CTX"
    unless_null $P1826, vivify_794
    die "Contextual $*MAIN_CTX not found"
  vivify_794:
  vivify_793:
    defined $I1827, $P1826
    unless $I1827, if_1825_end
    .const 'Sub' $P1829 = "193_1303340933.805" 
    capture_lex $P1829
    $P1829()
  if_1825_end:
.annotate 'line', 1260
    find_lex $P1858, "$output"
    unless_null $P1858, vivify_804
    new $P1858, "Undef"
  vivify_804:
    isnull $I1859, $P1858
    unless $I1859, if_1857_end
    set $I1860, .CONTROL_LOOP_NEXT
    die 0, $I1860
  if_1857_end:
.annotate 'line', 1262
    find_lex $P1863, "$target"
    unless_null $P1863, vivify_805
    new $P1863, "Undef"
  vivify_805:
    isfalse $I1864, $P1863
    if $I1864, if_1862
.annotate 'line', 1264
    find_lex $P1870, "$target"
    unless_null $P1870, vivify_806
    new $P1870, "Undef"
  vivify_806:
    set $S1871, $P1870
    iseq $I1872, $S1871, "pir"
    if $I1872, if_1869
.annotate 'line', 1267
    find_lex $P1874, "self"
    find_lex $P1875, "$output"
    unless_null $P1875, vivify_807
    new $P1875, "Undef"
  vivify_807:
    find_lex $P1876, "$target"
    unless_null $P1876, vivify_808
    new $P1876, "Undef"
  vivify_808:
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_809
    $P1877 = root_new ['parrot';'Hash']
  vivify_809:
    $P1878 = $P1874."dumper"($P1875, $P1876, $P1877 :flat)
.annotate 'line', 1266
    set $P1868, $P1878
.annotate 'line', 1264
    goto if_1869_end
  if_1869:
.annotate 'line', 1265
    find_lex $P1873, "$output"
    unless_null $P1873, vivify_810
    new $P1873, "Undef"
  vivify_810:
    say $P1873
  if_1869_end:
.annotate 'line', 1264
    set $P1861, $P1868
.annotate 'line', 1262
    goto if_1862_end
  if_1862:
.annotate 'line', 1263
    find_lex $P1865, "self"
    find_lex $P1866, "$output"
    unless_null $P1866, vivify_811
    new $P1866, "Undef"
  vivify_811:
    $P1867 = $P1865."autoprint"($P1866)
.annotate 'line', 1262
    set $P1861, $P1867
  if_1862_end:
.annotate 'line', 1242
    .return ($P1861)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1801"  :anon :subid("191_1303340933.805") :outer("190_1303340933.805")
.annotate 'line', 1245
    .const 'Sub' $P1814 = "192_1303340933.805" 
    capture_lex $P1814
    new $P1810, 'ExceptionHandler'
    set_label $P1810, control_1809
    $P1810."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1810
.annotate 'line', 1246
    find_lex $P1803, "self"
    find_lex $P1804, "$code"
    unless_null $P1804, vivify_789
    new $P1804, "Undef"
  vivify_789:
    find_lex $P1805, "$save_ctx"
    unless_null $P1805, vivify_790
    new $P1805, "Undef"
  vivify_790:
    find_lex $P1806, "%adverbs"
    unless_null $P1806, vivify_791
    $P1806 = root_new ['parrot';'Hash']
  vivify_791:
    $P1807 = $P1803."eval"($P1804, $P1806 :flat, $P1805 :named("outer_ctx"))
    store_lex "$output", $P1807
.annotate 'line', 1245
    pop_eh 
    goto skip_handler_1808
  control_1809:
.annotate 'line', 1247
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1814 = "192_1303340933.805" 
    newclosure $P1822, $P1814
    $P1822(exception)
    new $P1823, 'Integer'
    set $P1823, 1
    set exception["handled"], $P1823
    set $I1824, exception["handled"]
    ne $I1824, 1, nothandled_1812
  handled_1811:
    .return (exception)
  nothandled_1812:
    rethrow exception
  skip_handler_1808:
.annotate 'line', 1245
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1813"  :anon :subid("192_1303340933.805") :outer("191_1303340933.805")
    .param pmc param_1815
.annotate 'line', 1247
    .lex "$_", param_1815
    find_lex $P1816, "$_"
    .lex "$!", $P1816
.annotate 'line', 1248
    find_lex $P1817, "$!"
    unless_null $P1817, vivify_792
    new $P1817, "Undef"
  vivify_792:
    set $S1818, $P1817
    new $P1819, 'String'
    set $P1819, $S1818
    concat $P1820, $P1819, "\n"
    print $P1820
.annotate 'line', 1249
    set $I1821, .CONTROL_LOOP_NEXT
    die 0, $I1821
.annotate 'line', 1247
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1828"  :anon :subid("193_1303340933.805") :outer("190_1303340933.805")
.annotate 'line', 1252
    .const 'Sub' $P1842 = "194_1303340933.805" 
    capture_lex $P1842
.annotate 'line', 1253
    find_lex $P1830, "$?PACKAGE"
    get_who $P1831, $P1830
    set $P1832, $P1831[""]
    unless_null $P1832, vivify_795
    new $P1832, "Undef"
  vivify_795:
.annotate 'line', 1254
    find_lex $P1833, "$?PACKAGE"
    get_who $P1834, $P1833
    set $P1835, $P1834[""]
    unless_null $P1835, vivify_796
    $P1835 = root_new ['parrot';'Hash']
  vivify_796:
.annotate 'line', 1255
    find_dynamic_lex $P1837, "$*MAIN_CTX"
    unless_null $P1837, vivify_797
    get_hll_global $P1837, "$MAIN_CTX"
    unless_null $P1837, vivify_798
    die "Contextual $*MAIN_CTX not found"
  vivify_798:
  vivify_797:
    $P1838 = $P1837."lexpad_full"()
    defined $I1839, $P1838
    unless $I1839, for_undef_799
    iter $P1836, $P1838
    new $P1852, 'ExceptionHandler'
    set_label $P1852, loop1851_handler
    $P1852."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1852
  loop1851_test:
    unless $P1836, loop1851_done
    shift $P1840, $P1836
  loop1851_redo:
    .const 'Sub' $P1842 = "194_1303340933.805" 
    capture_lex $P1842
    $P1842($P1840)
  loop1851_next:
    goto loop1851_test
  loop1851_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1853, exception, 'type'
    eq $P1853, .CONTROL_LOOP_NEXT, loop1851_next
    eq $P1853, .CONTROL_LOOP_REDO, loop1851_redo
  loop1851_done:
    pop_eh 
  for_undef_799:
.annotate 'line', 1258
    find_lex $P1854, "$?PACKAGE"
    get_who $P1855, $P1854
    set $P1856, $P1855["$interactive_ctx"]
    unless_null $P1856, vivify_803
    new $P1856, "Undef"
  vivify_803:
    set_global "$save_ctx", $P1856
.annotate 'line', 1252
    .return ($P1856)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1841"  :anon :subid("194_1303340933.805") :outer("193_1303340933.805")
    .param pmc param_1843
.annotate 'line', 1255
    .lex "$_", param_1843
.annotate 'line', 1256
    find_lex $P1844, "$_"
    unless_null $P1844, vivify_800
    new $P1844, "Undef"
  vivify_800:
    $P1845 = $P1844."value"()
    find_lex $P1846, "$_"
    unless_null $P1846, vivify_801
    new $P1846, "Undef"
  vivify_801:
    $P1847 = $P1846."key"()
    find_lex $P1848, "$?PACKAGE"
    get_who $P1849, $P1848
    set $P1850, $P1849["%interactive_pad"]
    unless_null $P1850, vivify_802
    $P1850 = root_new ['parrot';'Hash']
    set $P1849["%interactive_pad"], $P1850
  vivify_802:
    set $P1850[$P1847], $P1845
.annotate 'line', 1255
    .return ($P1845)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("195_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1884
    .param pmc param_1885
    .param pmc param_1886 :slurpy
    .param pmc param_1887 :slurpy :named
.annotate 'line', 1273
    .const 'Sub' $P1906 = "196_1303340933.805" 
    capture_lex $P1906
    .lex "self", param_1884
    .lex "$code", param_1885
    .lex "@args", param_1886
    .lex "%adverbs", param_1887
.annotate 'line', 1274
    new $P1888, "Undef"
    .lex "$output", $P1888
.annotate 'line', 1273
    find_lex $P1889, "$output"
    unless_null $P1889, vivify_812
    new $P1889, "Undef"
  vivify_812:
.annotate 'line', 1275
    find_lex $P1890, "self"
    find_lex $P1891, "$code"
    unless_null $P1891, vivify_813
    new $P1891, "Undef"
  vivify_813:
    find_lex $P1892, "%adverbs"
    unless_null $P1892, vivify_814
    $P1892 = root_new ['parrot';'Hash']
  vivify_814:
    $P1893 = $P1890."compile"($P1891, $P1892 :flat)
    store_lex "$output", $P1893
.annotate 'line', 1277
    find_lex $P1897, "$output"
    unless_null $P1897, vivify_815
    new $P1897, "Undef"
  vivify_815:
    isa $I1898, $P1897, "String"
    new $P1899, 'Integer'
    set $P1899, $I1898
    isfalse $I1900, $P1899
    if $I1900, if_1896
    new $P1895, 'Integer'
    set $P1895, $I1900
    goto if_1896_end
  if_1896:
.annotate 'line', 1278
    find_lex $P1901, "%adverbs"
    unless_null $P1901, vivify_816
    $P1901 = root_new ['parrot';'Hash']
  vivify_816:
    set $P1902, $P1901["target"]
    unless_null $P1902, vivify_817
    new $P1902, "Undef"
  vivify_817:
    set $S1903, $P1902
    iseq $I1904, $S1903, ""
    new $P1895, 'Integer'
    set $P1895, $I1904
  if_1896_end:
    unless $P1895, if_1894_end
    .const 'Sub' $P1906 = "196_1303340933.805" 
    capture_lex $P1906
    $P1906()
  if_1894_end:
.annotate 'line', 1277
    find_lex $P1922, "$output"
    unless_null $P1922, vivify_828
    new $P1922, "Undef"
  vivify_828:
.annotate 'line', 1273
    .return ($P1922)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1905"  :anon :subid("196_1303340933.805") :outer("195_1303340933.805")
.annotate 'line', 1279
    new $P1907, "Undef"
    .lex "$outer_ctx", $P1907
    find_lex $P1908, "%adverbs"
    unless_null $P1908, vivify_818
    $P1908 = root_new ['parrot';'Hash']
  vivify_818:
    set $P1909, $P1908["outer_ctx"]
    unless_null $P1909, vivify_819
    new $P1909, "Undef"
  vivify_819:
    store_lex "$outer_ctx", $P1909
.annotate 'line', 1280
    find_lex $P1911, "$outer_ctx"
    unless_null $P1911, vivify_820
    new $P1911, "Undef"
  vivify_820:
    defined $I1912, $P1911
    unless $I1912, if_1910_end
.annotate 'line', 1281
    find_lex $P1913, "$output"
    unless_null $P1913, vivify_821
    $P1913 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P1914, $P1913[0]
    unless_null $P1914, vivify_822
    new $P1914, "Undef"
  vivify_822:
    find_lex $P1915, "$outer_ctx"
    unless_null $P1915, vivify_823
    new $P1915, "Undef"
  vivify_823:
    $P1914."set_outer_ctx"($P1915)
  if_1910_end:
.annotate 'line', 1284
    find_lex $P1916, "%adverbs"
    unless_null $P1916, vivify_824
    $P1916 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1917, $P1916["trace"]
    unless_null $P1917, vivify_825
    new $P1917, "Undef"
  vivify_825:
    set $I1918, $P1917
    trace $I1918
.annotate 'line', 1285
    find_lex $P1919, "$output"
    unless_null $P1919, vivify_826
    new $P1919, "Undef"
  vivify_826:
    find_lex $P1920, "@args"
    unless_null $P1920, vivify_827
    $P1920 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    $P1921 = $P1919($P1920 :flat)
    store_lex "$output", $P1921
.annotate 'line', 1286
    trace 0
.annotate 'line', 1278
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("197_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1924
.annotate 'line', 1292
    .lex "self", param_1924
.annotate 'line', 1294

                $P0 = getinterp
                $P1925 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1925
.annotate 'line', 1298
    new $P1926, "Integer"
    assign $P1926, 0
    store_dynamic_lex "$*CTXSAVE", $P1926
.annotate 'line', 1292
    .return ($P1926)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("198_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1928
    .param pmc param_1929 :slurpy
.annotate 'line', 1301
    .lex "self", param_1928
    .lex "@args", param_1929
.annotate 'line', 1302
    find_lex $P1930, "@args"
    unless_null $P1930, vivify_829
    $P1930 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    join $S1931, "", $P1930
    die $S1931
.annotate 'line', 1301
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("199_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1933
    .param pmc param_1934 :optional
    .param int has_param_1934 :opt_flag
.annotate 'line', 1305
    .lex "self", param_1933
    if has_param_1934, optparam_830
    $P1935 = root_new ['parrot';'ResizablePMCArray']
    set param_1934, $P1935
  optparam_830:
    .lex "@value", param_1934
.annotate 'line', 1306
    find_lex $P1937, "@value"
    unless_null $P1937, vivify_831
    $P1937 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $N1938, $P1937
    unless $N1938, if_1936_end
.annotate 'line', 1307
    find_lex $P1939, "@value"
    unless_null $P1939, vivify_832
    $P1939 = root_new ['parrot';'ResizablePMCArray']
  vivify_832:
    find_lex $P1940, "self"
    find_lex $P1941, "$?CLASS"
    setattribute $P1940, $P1941, "@!stages", $P1939
  if_1936_end:
.annotate 'line', 1306
    find_lex $P1942, "self"
    find_lex $P1943, "$?CLASS"
    getattribute $P1944, $P1942, $P1943, "@!stages"
    unless_null $P1944, vivify_833
    $P1944 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
.annotate 'line', 1305
    .return ($P1944)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("200_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1946
    .param pmc param_1947 :slurpy
.annotate 'line', 1312
    .lex "self", param_1946
    .lex "@value", param_1947
.annotate 'line', 1313
    find_lex $P1949, "@value"
    unless_null $P1949, vivify_834
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $N1950, $P1949
    unless $N1950, if_1948_end
.annotate 'line', 1314
    find_lex $P1951, "@value"
    unless_null $P1951, vivify_835
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    set $P1952, $P1951[0]
    unless_null $P1952, vivify_836
    new $P1952, "Undef"
  vivify_836:
    find_lex $P1953, "self"
    find_lex $P1954, "$?CLASS"
    setattribute $P1953, $P1954, "$!parsegrammar", $P1952
  if_1948_end:
.annotate 'line', 1313
    find_lex $P1955, "self"
    find_lex $P1956, "$?CLASS"
    getattribute $P1957, $P1955, $P1956, "$!parsegrammar"
    unless_null $P1957, vivify_837
    new $P1957, "Undef"
  vivify_837:
.annotate 'line', 1312
    .return ($P1957)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("201_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1959
    .param pmc param_1960 :slurpy
.annotate 'line', 1319
    .lex "self", param_1959
    .lex "@value", param_1960
.annotate 'line', 1320
    find_lex $P1962, "@value"
    unless_null $P1962, vivify_838
    $P1962 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $N1963, $P1962
    unless $N1963, if_1961_end
.annotate 'line', 1321
    find_lex $P1964, "@value"
    unless_null $P1964, vivify_839
    $P1964 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    set $P1965, $P1964[0]
    unless_null $P1965, vivify_840
    new $P1965, "Undef"
  vivify_840:
    find_lex $P1966, "self"
    find_lex $P1967, "$?CLASS"
    setattribute $P1966, $P1967, "$!parseactions", $P1965
  if_1961_end:
.annotate 'line', 1320
    find_lex $P1968, "self"
    find_lex $P1969, "$?CLASS"
    getattribute $P1970, $P1968, $P1969, "$!parseactions"
    unless_null $P1970, vivify_841
    new $P1970, "Undef"
  vivify_841:
.annotate 'line', 1319
    .return ($P1970)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("202_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1972
    .param pmc param_1973 :slurpy
.annotate 'line', 1326
    .lex "self", param_1972
    .lex "@value", param_1973
.annotate 'line', 1327
    find_lex $P1975, "@value"
    unless_null $P1975, vivify_842
    $P1975 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $N1976, $P1975
    unless $N1976, if_1974_end
.annotate 'line', 1328
    find_lex $P1977, "@value"
    unless_null $P1977, vivify_843
    $P1977 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
    set $P1978, $P1977[0]
    unless_null $P1978, vivify_844
    new $P1978, "Undef"
  vivify_844:
    find_lex $P1979, "self"
    find_lex $P1980, "$?CLASS"
    setattribute $P1979, $P1980, "$!astgrammar", $P1978
  if_1974_end:
.annotate 'line', 1327
    find_lex $P1981, "self"
    find_lex $P1982, "$?CLASS"
    getattribute $P1983, $P1981, $P1982, "$!astgrammar"
    unless_null $P1983, vivify_845
    new $P1983, "Undef"
  vivify_845:
.annotate 'line', 1326
    .return ($P1983)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("203_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1985
    .param pmc param_1986 :optional
    .param int has_param_1986 :opt_flag
.annotate 'line', 1333
    .lex "self", param_1985
    if has_param_1986, optparam_846
    new $P1987, "Undef"
    set param_1986, $P1987
  optparam_846:
    .lex "$value", param_1986
.annotate 'line', 1334
    find_lex $P1989, "$value"
    unless_null $P1989, vivify_847
    new $P1989, "Undef"
  vivify_847:
    defined $I1990, $P1989
    unless $I1990, if_1988_end
.annotate 'line', 1335
    find_lex $P1991, "$value"
    unless_null $P1991, vivify_848
    new $P1991, "Undef"
  vivify_848:
    find_lex $P1992, "self"
    find_lex $P1993, "$?CLASS"
    setattribute $P1992, $P1993, "$!commandline_banner", $P1991
  if_1988_end:
.annotate 'line', 1334
    find_lex $P1994, "self"
    find_lex $P1995, "$?CLASS"
    getattribute $P1996, $P1994, $P1995, "$!commandline_banner"
    unless_null $P1996, vivify_849
    new $P1996, "Undef"
  vivify_849:
.annotate 'line', 1333
    .return ($P1996)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("204_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_1998
    .param pmc param_1999 :optional
    .param int has_param_1999 :opt_flag
.annotate 'line', 1340
    .lex "self", param_1998
    if has_param_1999, optparam_850
    new $P2000, "Undef"
    set param_1999, $P2000
  optparam_850:
    .lex "$value", param_1999
.annotate 'line', 1341
    find_lex $P2002, "$value"
    unless_null $P2002, vivify_851
    new $P2002, "Undef"
  vivify_851:
    defined $I2003, $P2002
    unless $I2003, if_2001_end
.annotate 'line', 1342
    find_lex $P2004, "$value"
    unless_null $P2004, vivify_852
    new $P2004, "Undef"
  vivify_852:
    find_lex $P2005, "self"
    find_lex $P2006, "$?CLASS"
    setattribute $P2005, $P2006, "$!commandline_prompt", $P2004
  if_2001_end:
.annotate 'line', 1341
    find_lex $P2007, "self"
    find_lex $P2008, "$?CLASS"
    getattribute $P2009, $P2007, $P2008, "$!commandline_prompt"
    unless_null $P2009, vivify_853
    new $P2009, "Undef"
  vivify_853:
.annotate 'line', 1340
    .return ($P2009)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("205_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2011
    .param pmc param_2012 :optional
    .param int has_param_2012 :opt_flag
.annotate 'line', 1347
    .lex "self", param_2011
    if has_param_2012, optparam_854
    new $P2013, "Undef"
    set param_2012, $P2013
  optparam_854:
    .lex "$value", param_2012
.annotate 'line', 1348
    find_lex $P2015, "$value"
    unless_null $P2015, vivify_855
    new $P2015, "Undef"
  vivify_855:
    defined $I2016, $P2015
    unless $I2016, if_2014_end
.annotate 'line', 1349
    find_lex $P2017, "$value"
    unless_null $P2017, vivify_856
    new $P2017, "Undef"
  vivify_856:
    find_lex $P2018, "self"
    find_lex $P2019, "$?CLASS"
    setattribute $P2018, $P2019, "$!compiler_progname", $P2017
  if_2014_end:
.annotate 'line', 1348
    find_lex $P2020, "self"
    find_lex $P2021, "$?CLASS"
    getattribute $P2022, $P2020, $P2021, "$!compiler_progname"
    unless_null $P2022, vivify_857
    new $P2022, "Undef"
  vivify_857:
.annotate 'line', 1347
    .return ($P2022)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("206_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2024
    .param pmc param_2025 :optional
    .param int has_param_2025 :opt_flag
.annotate 'line', 1354
    .lex "self", param_2024
    if has_param_2025, optparam_858
    $P2026 = root_new ['parrot';'ResizablePMCArray']
    set param_2025, $P2026
  optparam_858:
    .lex "@value", param_2025
.annotate 'line', 1355
    find_lex $P2028, "@value"
    unless_null $P2028, vivify_859
    $P2028 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $N2029, $P2028
    unless $N2029, if_2027_end
.annotate 'line', 1356
    find_lex $P2030, "@value"
    unless_null $P2030, vivify_860
    $P2030 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    find_lex $P2031, "self"
    find_lex $P2032, "$?CLASS"
    setattribute $P2031, $P2032, "@!cmdoptions", $P2030
  if_2027_end:
.annotate 'line', 1355
    find_lex $P2033, "self"
    find_lex $P2034, "$?CLASS"
    getattribute $P2035, $P2033, $P2034, "@!cmdoptions"
    unless_null $P2035, vivify_861
    $P2035 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
.annotate 'line', 1354
    .return ($P2035)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("207_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2037
    .param pmc param_2038
    .param pmc param_2039 :slurpy :named
.annotate 'line', 1361
    .const 'Sub' $P2065 = "208_1303340933.805" 
    capture_lex $P2065
    .lex "self", param_2037
    .lex "@args", param_2038
    .lex "%adverbs", param_2039
.annotate 'line', 1374
    new $P2040, "Undef"
    .lex "$program-name", $P2040
.annotate 'line', 1375
    new $P2041, "Undef"
    .lex "$res", $P2041
.annotate 'line', 1376
    $P2042 = root_new ['parrot';'Hash']
    .lex "%opts", $P2042
.annotate 'line', 1377
    $P2043 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2043
.annotate 'line', 1370
    find_lex $P2045, "@args"
    unless_null $P2045, vivify_862
    $P2045 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    set $P2046, $P2045[2]
    unless_null $P2046, vivify_863
    new $P2046, "Undef"
  vivify_863:
    set $S2047, $P2046
    index $I2048, $S2047, "@INC"
    set $N2049, $I2048
    isge $I2050, $N2049, 0.0
    unless $I2050, if_2044_end
.annotate 'line', 1371
    exit 0
  if_2044_end:
.annotate 'line', 1374
    find_lex $P2051, "@args"
    unless_null $P2051, vivify_864
    $P2051 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P2052, $P2051[0]
    unless_null $P2052, vivify_865
    new $P2052, "Undef"
  vivify_865:
    store_lex "$program-name", $P2052
.annotate 'line', 1375
    find_lex $P2053, "self"
    find_lex $P2054, "@args"
    unless_null $P2054, vivify_866
    $P2054 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    $P2055 = $P2053."process_args"($P2054)
    store_lex "$res", $P2055
.annotate 'line', 1376
    find_lex $P2056, "$res"
    unless_null $P2056, vivify_867
    new $P2056, "Undef"
  vivify_867:
    $P2057 = $P2056."options"()
    store_lex "%opts", $P2057
.annotate 'line', 1377
    find_lex $P2058, "$res"
    unless_null $P2058, vivify_868
    new $P2058, "Undef"
  vivify_868:
    $P2059 = $P2058."arguments"()
    store_lex "@a", $P2059
.annotate 'line', 1379
    find_lex $P2061, "%opts"
    unless_null $P2061, vivify_869
    $P2061 = root_new ['parrot';'Hash']
  vivify_869:
    defined $I2062, $P2061
    unless $I2062, for_undef_870
    iter $P2060, $P2061
    new $P2073, 'ExceptionHandler'
    set_label $P2073, loop2072_handler
    $P2073."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2073
  loop2072_test:
    unless $P2060, loop2072_done
    shift $P2063, $P2060
  loop2072_redo:
    .const 'Sub' $P2065 = "208_1303340933.805" 
    capture_lex $P2065
    $P2065($P2063)
  loop2072_next:
    goto loop2072_test
  loop2072_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2074, exception, 'type'
    eq $P2074, .CONTROL_LOOP_NEXT, loop2072_next
    eq $P2074, .CONTROL_LOOP_REDO, loop2072_redo
  loop2072_done:
    pop_eh 
  for_undef_870:
.annotate 'line', 1382
    find_lex $P2076, "%adverbs"
    unless_null $P2076, vivify_876
    $P2076 = root_new ['parrot';'Hash']
  vivify_876:
    set $P2077, $P2076["help"]
    unless_null $P2077, vivify_877
    new $P2077, "Undef"
  vivify_877:
    unless $P2077, if_2075_end
    find_lex $P2078, "self"
    find_lex $P2079, "$program-name"
    unless_null $P2079, vivify_878
    new $P2079, "Undef"
  vivify_878:
    $P2078."usage"($P2079)
  if_2075_end:
.annotate 'line', 1383
    find_lex $P2081, "%adverbs"
    unless_null $P2081, vivify_879
    $P2081 = root_new ['parrot';'Hash']
  vivify_879:
    set $P2082, $P2081["version"]
    unless_null $P2082, vivify_880
    new $P2082, "Undef"
  vivify_880:
    unless $P2082, if_2080_end
    find_lex $P2083, "self"
    $P2083."version"()
  if_2080_end:
.annotate 'line', 1385

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
        
.annotate 'line', 1361
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2064"  :anon :subid("208_1303340933.805") :outer("207_1303340933.805")
    .param pmc param_2066
.annotate 'line', 1379
    .lex "$k", param_2066
.annotate 'line', 1380
    find_lex $P2067, "$k"
    unless_null $P2067, vivify_871
    new $P2067, "Undef"
  vivify_871:
    find_lex $P2068, "%opts"
    unless_null $P2068, vivify_872
    $P2068 = root_new ['parrot';'Hash']
  vivify_872:
    set $P2069, $P2068[$P2067]
    unless_null $P2069, vivify_873
    new $P2069, "Undef"
  vivify_873:
    find_lex $P2070, "$k"
    unless_null $P2070, vivify_874
    new $P2070, "Undef"
  vivify_874:
    find_lex $P2071, "%adverbs"
    unless_null $P2071, vivify_875
    $P2071 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2071
  vivify_875:
    set $P2071[$P2070], $P2069
.annotate 'line', 1379
    .return ($P2069)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("209_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2085
    .param pmc param_2086
.annotate 'line', 1479
    .const 'Sub' $P2101 = "210_1303340933.805" 
    capture_lex $P2101
    .lex "self", param_2085
    .lex "@args", param_2086
.annotate 'line', 1483
    new $P2087, "Undef"
    .lex "$p", $P2087
.annotate 'line', 1486
    new $P2088, "Undef"
    .lex "$res", $P2088
.annotate 'line', 1481
    find_lex $P2089, "self"
    find_lex $P2090, "@args"
    unless_null $P2090, vivify_881
    $P2090 = root_new ['parrot';'ResizablePMCArray']
  vivify_881:
    $P2091 = $P2090."shift"()
    $P2089."compiler_progname"($P2091)
.annotate 'line', 1483
    get_hll_global $P2092, ["HLL";"CommandLine"], "Parser"
    find_lex $P2093, "self"
    find_lex $P2094, "$?CLASS"
    getattribute $P2095, $P2093, $P2094, "@!cmdoptions"
    unless_null $P2095, vivify_882
    $P2095 = root_new ['parrot';'ResizablePMCArray']
  vivify_882:
    $P2096 = $P2092."new"($P2095)
    store_lex "$p", $P2096
.annotate 'line', 1484
    find_lex $P2097, "$p"
    unless_null $P2097, vivify_883
    new $P2097, "Undef"
  vivify_883:
    $P2097."add-stopper"("-e")
.annotate 'line', 1485
    find_lex $P2098, "$p"
    unless_null $P2098, vivify_884
    new $P2098, "Undef"
  vivify_884:
    $P2098."stop-after-first-arg"()
    find_lex $P2099, "$res"
    unless_null $P2099, vivify_885
    new $P2099, "Undef"
  vivify_885:
.annotate 'line', 1487
    .const 'Sub' $P2101 = "210_1303340933.805" 
    capture_lex $P2101
    $P2101()
    find_lex $P2119, "$res"
    unless_null $P2119, vivify_889
    new $P2119, "Undef"
  vivify_889:
.annotate 'line', 1479
    .return ($P2119)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2100"  :anon :subid("210_1303340933.805") :outer("209_1303340933.805")
.annotate 'line', 1487
    .const 'Sub' $P2111 = "211_1303340933.805" 
    capture_lex $P2111
    new $P2107, 'ExceptionHandler'
    set_label $P2107, control_2106
    $P2107."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2107
.annotate 'line', 1488
    find_lex $P2102, "$p"
    unless_null $P2102, vivify_886
    new $P2102, "Undef"
  vivify_886:
    find_lex $P2103, "@args"
    unless_null $P2103, vivify_887
    $P2103 = root_new ['parrot';'ResizablePMCArray']
  vivify_887:
    $P2104 = $P2102."parse"($P2103)
    store_lex "$res", $P2104
.annotate 'line', 1487
    pop_eh 
    goto skip_handler_2105
  control_2106:
.annotate 'line', 1489
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2111 = "211_1303340933.805" 
    newclosure $P2116, $P2111
    $P2116(exception)
    new $P2117, 'Integer'
    set $P2117, 1
    set exception["handled"], $P2117
    set $I2118, exception["handled"]
    ne $I2118, 1, nothandled_2109
  handled_2108:
    .return (exception)
  nothandled_2109:
    rethrow exception
  skip_handler_2105:
.annotate 'line', 1487
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2110"  :anon :subid("211_1303340933.805") :outer("210_1303340933.805")
    .param pmc param_2112
.annotate 'line', 1489
    .lex "$_", param_2112
    find_lex $P2113, "$_"
    .lex "$!", $P2113
.annotate 'line', 1490
    find_lex $P2114, "$_"
    unless_null $P2114, vivify_888
    new $P2114, "Undef"
  vivify_888:
    say $P2114
.annotate 'line', 1491
    find_lex $P2115, "self"
    $P2115."usage"()
.annotate 'line', 1492
    exit 1
.annotate 'line', 1489
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("212_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2123
    .param pmc param_2124
    .param pmc param_2125 :slurpy
    .param pmc param_2126 :slurpy :named
.annotate 'line', 1498
    .const 'Sub' $P2151 = "213_1303340933.805" 
    capture_lex $P2151
    new $P2122, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2122, control_2121
    push_eh $P2122
    .lex "self", param_2123
    .lex "$files", param_2124
    .lex "@args", param_2125
    .lex "%adverbs", param_2126
.annotate 'line', 1499
    new $P2127, "Undef"
    .lex "$target", $P2127
.annotate 'line', 1500
    new $P2128, "Undef"
    .lex "$encoding", $P2128
.annotate 'line', 1501
    $P2129 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2129
.annotate 'line', 1502
    $P2130 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2130
.annotate 'line', 1499
    find_lex $P2131, "%adverbs"
    unless_null $P2131, vivify_890
    $P2131 = root_new ['parrot';'Hash']
  vivify_890:
    set $P2132, $P2131["target"]
    unless_null $P2132, vivify_891
    new $P2132, "Undef"
  vivify_891:
    set $S2133, $P2132
    downcase $S2134, $S2133
    new $P2135, 'String'
    set $P2135, $S2134
    store_lex "$target", $P2135
.annotate 'line', 1500
    find_lex $P2136, "%adverbs"
    unless_null $P2136, vivify_892
    $P2136 = root_new ['parrot';'Hash']
  vivify_892:
    set $P2137, $P2136["encoding"]
    unless_null $P2137, vivify_893
    new $P2137, "Undef"
  vivify_893:
    store_lex "$encoding", $P2137
.annotate 'line', 1501
    find_lex $P2140, "$files"
    unless_null $P2140, vivify_894
    new $P2140, "Undef"
  vivify_894:
    does $I2141, $P2140, "array"
    if $I2141, if_2139
    find_lex $P2143, "$files"
    unless_null $P2143, vivify_895
    new $P2143, "Undef"
  vivify_895:
    new $P2144, "ResizablePMCArray"
    push $P2144, $P2143
    set $P2138, $P2144
    goto if_2139_end
  if_2139:
    find_lex $P2142, "$files"
    unless_null $P2142, vivify_896
    new $P2142, "Undef"
  vivify_896:
    set $P2138, $P2142
  if_2139_end:
    store_lex "@files", $P2138
    find_lex $P2145, "@codes"
    unless_null $P2145, vivify_897
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
.annotate 'line', 1503
    find_lex $P2147, "@files"
    unless_null $P2147, vivify_898
    $P2147 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    defined $I2148, $P2147
    unless $I2148, for_undef_899
    iter $P2146, $P2147
    new $P2213, 'ExceptionHandler'
    set_label $P2213, loop2212_handler
    $P2213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2213
  loop2212_test:
    unless $P2146, loop2212_done
    shift $P2149, $P2146
  loop2212_redo:
    .const 'Sub' $P2151 = "213_1303340933.805" 
    capture_lex $P2151
    $P2151($P2149)
  loop2212_next:
    goto loop2212_test
  loop2212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2214, exception, 'type'
    eq $P2214, .CONTROL_LOOP_NEXT, loop2212_next
    eq $P2214, .CONTROL_LOOP_REDO, loop2212_redo
  loop2212_done:
    pop_eh 
  for_undef_899:
.annotate 'line', 1498
    .return ($P2146)
  control_2121:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2215, exception, "payload"
    .return ($P2215)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2150"  :anon :subid("213_1303340933.805") :outer("212_1303340933.805")
    .param pmc param_2156
.annotate 'line', 1503
    .const 'Sub' $P2160 = "214_1303340933.805" 
    capture_lex $P2160
.annotate 'line', 1504
    new $P2152, "Undef"
    .lex "$in-handle", $P2152
.annotate 'line', 1505
    new $P2153, "Undef"
    .lex "$err", $P2153
.annotate 'line', 1518
    new $P2154, "Undef"
    .lex "$code", $P2154
.annotate 'line', 1520
    new $P2155, "Undef"
    .lex "$r", $P2155
    .lex "$_", param_2156
.annotate 'line', 1504
    new $P2157, "FileHandle"
    store_lex "$in-handle", $P2157
.annotate 'line', 1505
    new $P2158, "Integer"
    assign $P2158, 0
    store_lex "$err", $P2158
.annotate 'line', 1506
    .const 'Sub' $P2160 = "214_1303340933.805" 
    capture_lex $P2160
    $P2160()
.annotate 'line', 1517
    find_lex $P2184, "$err"
    unless_null $P2184, vivify_907
    new $P2184, "Undef"
  vivify_907:
    unless $P2184, if_2183_end
    find_lex $P2185, "$err"
    unless_null $P2185, vivify_908
    new $P2185, "Undef"
  vivify_908:
    die $P2185
  if_2183_end:
.annotate 'line', 1518
    find_lex $P2186, "@codes"
    unless_null $P2186, vivify_909
    $P2186 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    join $S2187, "", $P2186
    new $P2188, 'String'
    set $P2188, $S2187
    store_lex "$code", $P2188
.annotate 'line', 1520
    find_lex $P2189, "self"
    find_lex $P2190, "$code"
    unless_null $P2190, vivify_910
    new $P2190, "Undef"
  vivify_910:
    find_lex $P2191, "@args"
    unless_null $P2191, vivify_911
    $P2191 = root_new ['parrot';'ResizablePMCArray']
  vivify_911:
    find_lex $P2192, "%adverbs"
    unless_null $P2192, vivify_912
    $P2192 = root_new ['parrot';'Hash']
  vivify_912:
    $P2193 = $P2189."eval"($P2190, $P2191 :flat, $P2192 :flat)
    store_lex "$r", $P2193
.annotate 'line', 1521
    find_lex $P2198, "$target"
    unless_null $P2198, vivify_913
    new $P2198, "Undef"
  vivify_913:
    set $S2199, $P2198
    iseq $I2200, $S2199, ""
    unless $I2200, unless_2197
    new $P2196, 'Integer'
    set $P2196, $I2200
    goto unless_2197_end
  unless_2197:
    find_lex $P2201, "$target"
    unless_null $P2201, vivify_914
    new $P2201, "Undef"
  vivify_914:
    set $S2202, $P2201
    iseq $I2203, $S2202, "pir"
    new $P2196, 'Integer'
    set $P2196, $I2203
  unless_2197_end:
    if $P2196, if_2195
.annotate 'line', 1524
    new $P2206, "Exception"
    set $P2206['type'], .CONTROL_RETURN
    find_lex $P2207, "self"
    find_lex $P2208, "$r"
    unless_null $P2208, vivify_915
    new $P2208, "Undef"
  vivify_915:
    find_lex $P2209, "$target"
    unless_null $P2209, vivify_916
    new $P2209, "Undef"
  vivify_916:
    find_lex $P2210, "%adverbs"
    unless_null $P2210, vivify_917
    $P2210 = root_new ['parrot';'Hash']
  vivify_917:
    $P2211 = $P2207."dumper"($P2208, $P2209, $P2210 :flat)
    setattribute $P2206, 'payload', $P2211
    throw $P2206
.annotate 'line', 1523
    goto if_2195_end
  if_2195:
.annotate 'line', 1522
    new $P2204, "Exception"
    set $P2204['type'], .CONTROL_RETURN
    find_lex $P2205, "$r"
    unless_null $P2205, vivify_918
    new $P2205, "Undef"
  vivify_918:
    setattribute $P2204, 'payload', $P2205
    throw $P2204
  if_2195_end:
.annotate 'line', 1503
    .return ($P2194)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2159"  :anon :subid("214_1303340933.805") :outer("213_1303340933.805")
.annotate 'line', 1506
    .const 'Sub' $P2174 = "215_1303340933.805" 
    capture_lex $P2174
    new $P2170, 'ExceptionHandler'
    set_label $P2170, control_2169
    $P2170."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2170
.annotate 'line', 1510
    find_lex $P2161, "$in-handle"
    unless_null $P2161, vivify_900
    new $P2161, "Undef"
  vivify_900:
    find_lex $P2162, "$encoding"
    unless_null $P2162, vivify_901
    new $P2162, "Undef"
  vivify_901:
    $P2161."encoding"($P2162)
.annotate 'line', 1511
    find_lex $P2163, "@codes"
    unless_null $P2163, vivify_902
    $P2163 = root_new ['parrot';'ResizablePMCArray']
  vivify_902:
    find_lex $P2164, "$in-handle"
    unless_null $P2164, vivify_903
    new $P2164, "Undef"
  vivify_903:
    find_lex $P2165, "$_"
    unless_null $P2165, vivify_904
    new $P2165, "Undef"
  vivify_904:
    $P2166 = $P2164."readall"($P2165)
    push $P2163, $P2166
.annotate 'line', 1512
    find_lex $P2167, "$in-handle"
    unless_null $P2167, vivify_905
    new $P2167, "Undef"
  vivify_905:
    $P2167."close"()
.annotate 'line', 1506
    pop_eh 
    goto skip_handler_2168
  control_2169:
.annotate 'line', 1513
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2174 = "215_1303340933.805" 
    newclosure $P2180, $P2174
    $P2180(exception)
    new $P2181, 'Integer'
    set $P2181, 1
    set exception["handled"], $P2181
    set $I2182, exception["handled"]
    ne $I2182, 1, nothandled_2172
  handled_2171:
    .return (exception)
  nothandled_2172:
    rethrow exception
  skip_handler_2168:
.annotate 'line', 1506
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2173"  :anon :subid("215_1303340933.805") :outer("214_1303340933.805")
    .param pmc param_2175
.annotate 'line', 1513
    .lex "$_", param_2175
    find_lex $P2176, "$_"
    .lex "$!", $P2176
.annotate 'line', 1514
    new $P2177, 'String'
    set $P2177, "Error while reading from file: "
    find_lex $P2178, "$_"
    unless_null $P2178, vivify_906
    new $P2178, "Undef"
  vivify_906:
    concat $P2179, $P2177, $P2178
    store_lex "$err", $P2179
.annotate 'line', 1513
    .return ($P2179)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("216_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2219
    .param pmc param_2220
    .param pmc param_2221 :slurpy :named
.annotate 'line', 1530
    .const 'Sub' $P2242 = "217_1303340933.805" 
    capture_lex $P2242
    new $P2218, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2218, control_2217
    push_eh $P2218
    .lex "self", param_2219
    .lex "$source", param_2220
    .lex "%adverbs", param_2221
.annotate 'line', 1531
    $P2222 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2222
.annotate 'line', 1533
    new $P2223, "Undef"
    .lex "$target", $P2223
.annotate 'line', 1534
    new $P2224, "Undef"
    .lex "$result", $P2224
.annotate 'line', 1535
    new $P2225, "Undef"
    .lex "$stderr", $P2225
.annotate 'line', 1531
    find_lex $P2226, "%adverbs"
    unless_null $P2226, vivify_919
    $P2226 = root_new ['parrot';'Hash']
  vivify_919:
    find_lex $P2227, "%*COMPILING"
    unless_null $P2227, vivify_920
    get_hll_global $P2227, "%COMPILING"
    unless_null $P2227, vivify_921
    die "Contextual %*COMPILING not found"
  vivify_921:
    store_lex "%*COMPILING", $P2227
  vivify_920:
    set $P2227["%?OPTIONS"], $P2226
.annotate 'line', 1533
    find_lex $P2228, "%adverbs"
    unless_null $P2228, vivify_922
    $P2228 = root_new ['parrot';'Hash']
  vivify_922:
    set $P2229, $P2228["target"]
    unless_null $P2229, vivify_923
    new $P2229, "Undef"
  vivify_923:
    set $S2230, $P2229
    downcase $S2231, $S2230
    new $P2232, 'String'
    set $P2232, $S2231
    store_lex "$target", $P2232
.annotate 'line', 1534
    find_lex $P2233, "$source"
    unless_null $P2233, vivify_924
    new $P2233, "Undef"
  vivify_924:
    store_lex "$result", $P2233
.annotate 'line', 1535
    getinterp $P2234
    $P2235 = $P2234."stderr_handle"()
    store_lex "$stderr", $P2235
.annotate 'line', 1536
    find_lex $P2237, "self"
    $P2238 = $P2237."stages"()
    defined $I2239, $P2238
    unless $I2239, for_undef_925
    iter $P2236, $P2238
    new $P2278, 'ExceptionHandler'
    set_label $P2278, loop2277_handler
    $P2278."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2278
  loop2277_test:
    unless $P2236, loop2277_done
    shift $P2240, $P2236
  loop2277_redo:
    .const 'Sub' $P2242 = "217_1303340933.805" 
    capture_lex $P2242
    $P2242($P2240)
  loop2277_next:
    goto loop2277_test
  loop2277_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2279, exception, 'type'
    eq $P2279, .CONTROL_LOOP_NEXT, loop2277_next
    eq $P2279, .CONTROL_LOOP_REDO, loop2277_redo
  loop2277_done:
    pop_eh 
  for_undef_925:
.annotate 'line', 1546
    new $P2280, "Exception"
    set $P2280['type'], .CONTROL_RETURN
    find_lex $P2281, "$result"
    unless_null $P2281, vivify_937
    new $P2281, "Undef"
  vivify_937:
    setattribute $P2280, 'payload', $P2281
    throw $P2280
.annotate 'line', 1530
    .return ()
  control_2217:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2282, exception, "payload"
    .return ($P2282)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2241"  :anon :subid("217_1303340933.805") :outer("216_1303340933.805")
    .param pmc param_2245
.annotate 'line', 1537
    new $P2243, "Undef"
    .lex "$timestamp", $P2243
.annotate 'line', 1539
    new $P2244, "Undef"
    .lex "$diff", $P2244
    .lex "$_", param_2245
.annotate 'line', 1537
    time $N2246
    new $P2247, 'Float'
    set $P2247, $N2246
    store_lex "$timestamp", $P2247
.annotate 'line', 1538
    find_lex $P2248, "self"
    find_lex $P2249, "$result"
    unless_null $P2249, vivify_926
    new $P2249, "Undef"
  vivify_926:
    find_lex $P2250, "%adverbs"
    unless_null $P2250, vivify_927
    $P2250 = root_new ['parrot';'Hash']
  vivify_927:
    find_lex $P2251, "$_"
    unless_null $P2251, vivify_928
    new $P2251, "Undef"
  vivify_928:
    set $S2252, $P2251
    $P2253 = $P2248.$S2252($P2249, $P2250 :flat)
    store_lex "$result", $P2253
.annotate 'line', 1539
    time $N2254
    new $P2255, 'Float'
    set $P2255, $N2254
    find_lex $P2256, "$timestamp"
    unless_null $P2256, vivify_929
    new $P2256, "Undef"
  vivify_929:
    sub $P2257, $P2255, $P2256
    store_lex "$diff", $P2257
.annotate 'line', 1540
    find_lex $P2259, "%adverbs"
    unless_null $P2259, vivify_930
    $P2259 = root_new ['parrot';'Hash']
  vivify_930:
    set $P2260, $P2259["stagestats"]
    unless_null $P2260, vivify_931
    new $P2260, "Undef"
  vivify_931:
    unless $P2260, if_2258_end
.annotate 'line', 1542
    find_lex $P2261, "$stderr"
    unless_null $P2261, vivify_932
    new $P2261, "Undef"
  vivify_932:
    new $P2262, 'String'
    set $P2262, "Stage "
    find_lex $P2263, "$_"
    unless_null $P2263, vivify_933
    new $P2263, "Undef"
  vivify_933:
    concat $P2264, $P2262, $P2263
    concat $P2265, $P2264, ": "
    find_lex $P2266, "$diff"
    unless_null $P2266, vivify_934
    new $P2266, "Undef"
  vivify_934:
    concat $P2267, $P2265, $P2266
    concat $P2268, $P2267, "\n"
    $P2261."print__N"($P2268)
  if_2258_end:
.annotate 'line', 1544
    find_lex $P2271, "$_"
    unless_null $P2271, vivify_935
    new $P2271, "Undef"
  vivify_935:
    set $S2272, $P2271
    find_lex $P2273, "$target"
    unless_null $P2273, vivify_936
    new $P2273, "Undef"
  vivify_936:
    set $S2274, $P2273
    iseq $I2275, $S2272, $S2274
    if $I2275, if_2270
    new $P2269, 'Integer'
    set $P2269, $I2275
    goto if_2270_end
  if_2270:
    set $I2276, .CONTROL_LOOP_LAST
    die 0, $I2276
  if_2270_end:
.annotate 'line', 1536
    .return ($P2269)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("218_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2284
    .param pmc param_2285
    .param pmc param_2286 :slurpy :named
.annotate 'line', 1549
    .lex "self", param_2284
    .lex "$source", param_2285
    .lex "%adverbs", param_2286
.annotate 'line', 1550

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
        
.annotate 'line', 1549
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("219_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2288
    .param pmc param_2289
    .param pmc param_2290 :slurpy :named
.annotate 'line', 1598
    .lex "self", param_2288
    .lex "$source", param_2289
    .lex "%adverbs", param_2290
.annotate 'line', 1599

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
        
.annotate 'line', 1598
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("220_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2292
    .param pmc param_2293
    .param pmc param_2294 :slurpy :named
.annotate 'line', 1638
    .lex "self", param_2292
    .lex "$source", param_2293
    .lex "%adverbs", param_2294
.annotate 'line', 1639
    compreg $P2295, "PAST"
    find_lex $P2296, "$source"
    unless_null $P2296, vivify_938
    new $P2296, "Undef"
  vivify_938:
    find_lex $P2297, "%adverbs"
    unless_null $P2297, vivify_939
    $P2297 = root_new ['parrot';'Hash']
  vivify_939:
    $P2298 = $P2295."to_post"($P2296, $P2297 :flat)
.annotate 'line', 1638
    .return ($P2298)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("221_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2300
    .param pmc param_2301
    .param pmc param_2302 :slurpy :named
.annotate 'line', 1642
    .lex "self", param_2300
    .lex "$source", param_2301
    .lex "%adverbs", param_2302
.annotate 'line', 1643
    compreg $P2303, "POST"
    find_lex $P2304, "$source"
    unless_null $P2304, vivify_940
    new $P2304, "Undef"
  vivify_940:
    find_lex $P2305, "%adverbs"
    unless_null $P2305, vivify_941
    $P2305 = root_new ['parrot';'Hash']
  vivify_941:
    $P2306 = $P2303."to_pir"($P2304, $P2305 :flat)
.annotate 'line', 1642
    .return ($P2306)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("222_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2308
    .param pmc param_2309
    .param pmc param_2310 :slurpy :named
.annotate 'line', 1646
    .lex "self", param_2308
    .lex "$source", param_2309
    .lex "%adverbs", param_2310
.annotate 'line', 1647
    new $P2311, "Undef"
    .lex "$compiler", $P2311
    compreg $P2312, "PIR"
    store_lex "$compiler", $P2312
.annotate 'line', 1648
    find_lex $P2313, "$compiler"
    unless_null $P2313, vivify_942
    new $P2313, "Undef"
  vivify_942:
    find_lex $P2314, "$source"
    unless_null $P2314, vivify_943
    new $P2314, "Undef"
  vivify_943:
    $P2315 = $P2313($P2314)
.annotate 'line', 1646
    .return ($P2315)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("223_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2317
    .param pmc param_2318
    .param pmc param_2319
    .param pmc param_2320 :slurpy :named
.annotate 'line', 1651
    .const 'Sub' $P2326 = "224_1303340933.805" 
    capture_lex $P2326
    .lex "self", param_2317
    .lex "$obj", param_2318
    .lex "$name", param_2319
    .lex "%options", param_2320
.annotate 'line', 1652
    find_lex $P2323, "%options"
    unless_null $P2323, vivify_944
    $P2323 = root_new ['parrot';'Hash']
  vivify_944:
    set $P2324, $P2323["dumper"]
    unless_null $P2324, vivify_945
    new $P2324, "Undef"
  vivify_945:
    if $P2324, if_2322
.annotate 'line', 1658
    find_lex $P2339, "$obj"
    unless_null $P2339, vivify_946
    new $P2339, "Undef"
  vivify_946:
    find_lex $P2340, "$name"
    unless_null $P2340, vivify_947
    new $P2340, "Undef"
  vivify_947:
    $P2341 = "_dumper"($P2339, $P2340)
.annotate 'line', 1657
    set $P2321, $P2341
.annotate 'line', 1652
    goto if_2322_end
  if_2322:
    .const 'Sub' $P2326 = "224_1303340933.805" 
    capture_lex $P2326
    $P2338 = $P2326()
    set $P2321, $P2338
  if_2322_end:
.annotate 'line', 1651
    .return ($P2321)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2325"  :anon :subid("224_1303340933.805") :outer("223_1303340933.805")
.annotate 'line', 1654
    new $P2327, "Undef"
    .lex "$dumper", $P2327
.annotate 'line', 1653
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1654
    find_lex $P2328, "%options"
    unless_null $P2328, vivify_948
    $P2328 = root_new ['parrot';'Hash']
  vivify_948:
    set $P2329, $P2328["dumper"]
    unless_null $P2329, vivify_949
    new $P2329, "Undef"
  vivify_949:
    set $S2330, $P2329
    downcase $S2331, $S2330
    get_hll_global $P2332, ["PCT"], "Dumper"
    unless_null $P2332, vivify_950
    $P2332 = root_new ['parrot';'Hash']
  vivify_950:
    set $P2333, $P2332[$S2331]
    unless_null $P2333, vivify_951
    new $P2333, "Undef"
  vivify_951:
    store_lex "$dumper", $P2333
.annotate 'line', 1655
    find_lex $P2334, "$dumper"
    unless_null $P2334, vivify_952
    new $P2334, "Undef"
  vivify_952:
    find_lex $P2335, "$obj"
    unless_null $P2335, vivify_953
    new $P2335, "Undef"
  vivify_953:
    find_lex $P2336, "$name"
    unless_null $P2336, vivify_954
    new $P2336, "Undef"
  vivify_954:
    $P2337 = $P2334($P2335, $P2336)
.annotate 'line', 1652
    .return ($P2337)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("225_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2343
    .param pmc param_2344 :optional
    .param int has_param_2344 :opt_flag
.annotate 'line', 1662
    .lex "self", param_2343
    if has_param_2344, optparam_955
    new $P2345, "Undef"
    set param_2344, $P2345
  optparam_955:
    .lex "$name", param_2344
.annotate 'line', 1663
    find_lex $P2347, "$name"
    unless_null $P2347, vivify_956
    new $P2347, "Undef"
  vivify_956:
    unless $P2347, if_2346_end
.annotate 'line', 1664
    find_lex $P2348, "$name"
    unless_null $P2348, vivify_957
    new $P2348, "Undef"
  vivify_957:
    "say"($P2348)
  if_2346_end:
.annotate 'line', 1666
    find_lex $P2349, "self"
    find_lex $P2350, "$?CLASS"
    getattribute $P2351, $P2349, $P2350, "$!usage"
    unless_null $P2351, vivify_958
    new $P2351, "Undef"
  vivify_958:
    say $P2351
.annotate 'line', 1667
    exit 0
.annotate 'line', 1662
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("226_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2353
.annotate 'line', 1670
    .lex "self", param_2353
.annotate 'line', 1671
    find_lex $P2354, "self"
    find_lex $P2355, "$?CLASS"
    getattribute $P2356, $P2354, $P2355, "$!version"
    unless_null $P2356, vivify_959
    new $P2356, "Undef"
  vivify_959:
    say $P2356
.annotate 'line', 1672
    exit 0
.annotate 'line', 1670
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("227_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2358
    .param pmc param_2359
.annotate 'line', 1675
    .const 'Sub' $P2369 = "228_1303340933.805" 
    capture_lex $P2369
    .lex "self", param_2358
    .lex "$stagename", param_2359
.annotate 'line', 1676
    $P2360 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2360
    new $P2361, "ResizableStringArray"
    store_lex "@new_stages", $P2361
.annotate 'line', 1677
    find_lex $P2363, "self"
    find_lex $P2364, "$?CLASS"
    getattribute $P2365, $P2363, $P2364, "@!stages"
    unless_null $P2365, vivify_960
    $P2365 = root_new ['parrot';'ResizablePMCArray']
  vivify_960:
    defined $I2366, $P2365
    unless $I2366, for_undef_961
    iter $P2362, $P2365
    new $P2382, 'ExceptionHandler'
    set_label $P2382, loop2381_handler
    $P2382."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2382
  loop2381_test:
    unless $P2362, loop2381_done
    shift $P2367, $P2362
  loop2381_redo:
    .const 'Sub' $P2369 = "228_1303340933.805" 
    capture_lex $P2369
    $P2369($P2367)
  loop2381_next:
    goto loop2381_test
  loop2381_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2383, exception, 'type'
    eq $P2383, .CONTROL_LOOP_NEXT, loop2381_next
    eq $P2383, .CONTROL_LOOP_REDO, loop2381_redo
  loop2381_done:
    pop_eh 
  for_undef_961:
.annotate 'line', 1682
    find_lex $P2384, "@new_stages"
    unless_null $P2384, vivify_966
    $P2384 = root_new ['parrot';'ResizablePMCArray']
  vivify_966:
    find_lex $P2385, "self"
    find_lex $P2386, "$?CLASS"
    setattribute $P2385, $P2386, "@!stages", $P2384
.annotate 'line', 1675
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2368"  :anon :subid("228_1303340933.805") :outer("227_1303340933.805")
    .param pmc param_2370
.annotate 'line', 1677
    .lex "$_", param_2370
.annotate 'line', 1678
    find_lex $P2373, "$_"
    unless_null $P2373, vivify_962
    new $P2373, "Undef"
  vivify_962:
    set $S2374, $P2373
    find_lex $P2375, "$stagename"
    unless_null $P2375, vivify_963
    new $P2375, "Undef"
  vivify_963:
    set $S2376, $P2375
    isne $I2377, $S2374, $S2376
    if $I2377, if_2372
    new $P2371, 'Integer'
    set $P2371, $I2377
    goto if_2372_end
  if_2372:
.annotate 'line', 1679
    find_lex $P2378, "@new_stages"
    unless_null $P2378, vivify_964
    $P2378 = root_new ['parrot';'ResizablePMCArray']
  vivify_964:
    find_lex $P2379, "$_"
    unless_null $P2379, vivify_965
    new $P2379, "Undef"
  vivify_965:
    $P2380 = $P2378."push"($P2379)
.annotate 'line', 1678
    set $P2371, $P2380
  if_2372_end:
.annotate 'line', 1677
    .return ($P2371)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("229_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2390
    .param pmc param_2391
    .param pmc param_2392 :slurpy :named
.annotate 'line', 1685
    .const 'Sub' $P2429 = "231_1303340933.805" 
    capture_lex $P2429
    .const 'Sub' $P2411 = "230_1303340933.805" 
    capture_lex $P2411
    new $P2389, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2389, control_2388
    push_eh $P2389
    .lex "self", param_2390
    .lex "$stagename", param_2391
    .lex "%adverbs", param_2392
.annotate 'line', 1686
    new $P2393, "Undef"
    .lex "$position", $P2393
.annotate 'line', 1687
    new $P2394, "Undef"
    .lex "$where", $P2394
.annotate 'line', 1700
    $P2395 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2395
.annotate 'line', 1685
    find_lex $P2396, "$position"
    unless_null $P2396, vivify_967
    new $P2396, "Undef"
  vivify_967:
    find_lex $P2397, "$where"
    unless_null $P2397, vivify_968
    new $P2397, "Undef"
  vivify_968:
.annotate 'line', 1688
    find_lex $P2399, "%adverbs"
    unless_null $P2399, vivify_969
    $P2399 = root_new ['parrot';'Hash']
  vivify_969:
    set $P2400, $P2399["before"]
    unless_null $P2400, vivify_970
    new $P2400, "Undef"
  vivify_970:
    if $P2400, if_2398
.annotate 'line', 1691
    find_lex $P2405, "%adverbs"
    unless_null $P2405, vivify_971
    $P2405 = root_new ['parrot';'Hash']
  vivify_971:
    set $P2406, $P2405["after"]
    unless_null $P2406, vivify_972
    new $P2406, "Undef"
  vivify_972:
    if $P2406, if_2404
.annotate 'line', 1694
    .const 'Sub' $P2411 = "230_1303340933.805" 
    capture_lex $P2411
    $P2411()
    goto if_2404_end
  if_2404:
.annotate 'line', 1692
    find_lex $P2407, "%adverbs"
    unless_null $P2407, vivify_976
    $P2407 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2408, $P2407["after"]
    unless_null $P2408, vivify_977
    new $P2408, "Undef"
  vivify_977:
    store_lex "$where", $P2408
.annotate 'line', 1693
    new $P2409, "String"
    assign $P2409, "after"
    store_lex "$position", $P2409
  if_2404_end:
.annotate 'line', 1691
    goto if_2398_end
  if_2398:
.annotate 'line', 1689
    find_lex $P2401, "%adverbs"
    unless_null $P2401, vivify_978
    $P2401 = root_new ['parrot';'Hash']
  vivify_978:
    set $P2402, $P2401["before"]
    unless_null $P2402, vivify_979
    new $P2402, "Undef"
  vivify_979:
    store_lex "$where", $P2402
.annotate 'line', 1690
    new $P2403, "String"
    assign $P2403, "before"
    store_lex "$position", $P2403
  if_2398_end:
.annotate 'line', 1700
    new $P2422, "ResizableStringArray"
    store_lex "@new-stages", $P2422
.annotate 'line', 1701
    find_lex $P2424, "self"
    $P2425 = $P2424."stages"()
    defined $I2426, $P2425
    unless $I2426, for_undef_980
    iter $P2423, $P2425
    new $P2454, 'ExceptionHandler'
    set_label $P2454, loop2453_handler
    $P2454."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2454
  loop2453_test:
    unless $P2423, loop2453_done
    shift $P2427, $P2423
  loop2453_redo:
    .const 'Sub' $P2429 = "231_1303340933.805" 
    capture_lex $P2429
    $P2429($P2427)
  loop2453_next:
    goto loop2453_test
  loop2453_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2455, exception, 'type'
    eq $P2455, .CONTROL_LOOP_NEXT, loop2453_next
    eq $P2455, .CONTROL_LOOP_REDO, loop2453_redo
  loop2453_done:
    pop_eh 
  for_undef_980:
.annotate 'line', 1714
    find_lex $P2456, "self"
    find_lex $P2457, "@new-stages"
    unless_null $P2457, vivify_994
    $P2457 = root_new ['parrot';'ResizablePMCArray']
  vivify_994:
    $P2458 = $P2456."stages"($P2457)
.annotate 'line', 1685
    .return ($P2458)
  control_2388:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2459, exception, "payload"
    .return ($P2459)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2410"  :anon :subid("230_1303340933.805") :outer("229_1303340933.805")
.annotate 'line', 1695
    $P2412 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2412
    find_lex $P2413, "self"
    $P2414 = $P2413."stages"()
    clone $P2415, $P2414
    store_lex "@new-stages", $P2415
.annotate 'line', 1696
    find_lex $P2416, "@new-stages"
    unless_null $P2416, vivify_973
    $P2416 = root_new ['parrot';'ResizablePMCArray']
  vivify_973:
    find_lex $P2417, "$stagename"
    unless_null $P2417, vivify_974
    new $P2417, "Undef"
  vivify_974:
    push $P2416, $P2417
.annotate 'line', 1697
    find_lex $P2418, "self"
    find_lex $P2419, "@new-stages"
    unless_null $P2419, vivify_975
    $P2419 = root_new ['parrot';'ResizablePMCArray']
  vivify_975:
    $P2418."stages"($P2419)
.annotate 'line', 1698
    new $P2420, "Exception"
    set $P2420['type'], .CONTROL_RETURN
    new $P2421, "Integer"
    assign $P2421, 1
    setattribute $P2420, 'payload', $P2421
    throw $P2420
.annotate 'line', 1694
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2428"  :anon :subid("231_1303340933.805") :outer("229_1303340933.805")
    .param pmc param_2430
.annotate 'line', 1701
    .lex "$_", param_2430
.annotate 'line', 1702
    find_lex $P2433, "$_"
    unless_null $P2433, vivify_981
    new $P2433, "Undef"
  vivify_981:
    set $S2434, $P2433
    find_lex $P2435, "$where"
    unless_null $P2435, vivify_982
    new $P2435, "Undef"
  vivify_982:
    set $S2436, $P2435
    iseq $I2437, $S2434, $S2436
    if $I2437, if_2432
.annotate 'line', 1711
    find_lex $P2451, "@new-stages"
    unless_null $P2451, vivify_983
    $P2451 = root_new ['parrot';'ResizablePMCArray']
  vivify_983:
    find_lex $P2452, "$_"
    unless_null $P2452, vivify_984
    new $P2452, "Undef"
  vivify_984:
    push $P2451, $P2452
.annotate 'line', 1710
    set $P2431, $P2451
.annotate 'line', 1702
    goto if_2432_end
  if_2432:
.annotate 'line', 1703
    find_lex $P2440, "$position"
    unless_null $P2440, vivify_985
    new $P2440, "Undef"
  vivify_985:
    set $S2441, $P2440
    iseq $I2442, $S2441, "before"
    if $I2442, if_2439
.annotate 'line', 1707
    find_lex $P2447, "@new-stages"
    unless_null $P2447, vivify_986
    $P2447 = root_new ['parrot';'ResizablePMCArray']
  vivify_986:
    find_lex $P2448, "$_"
    unless_null $P2448, vivify_987
    new $P2448, "Undef"
  vivify_987:
    push $P2447, $P2448
.annotate 'line', 1708
    find_lex $P2449, "@new-stages"
    unless_null $P2449, vivify_988
    $P2449 = root_new ['parrot';'ResizablePMCArray']
  vivify_988:
    find_lex $P2450, "$stagename"
    unless_null $P2450, vivify_989
    new $P2450, "Undef"
  vivify_989:
    push $P2449, $P2450
.annotate 'line', 1706
    set $P2438, $P2449
.annotate 'line', 1703
    goto if_2439_end
  if_2439:
.annotate 'line', 1704
    find_lex $P2443, "@new-stages"
    unless_null $P2443, vivify_990
    $P2443 = root_new ['parrot';'ResizablePMCArray']
  vivify_990:
    find_lex $P2444, "$stagename"
    unless_null $P2444, vivify_991
    new $P2444, "Undef"
  vivify_991:
    push $P2443, $P2444
.annotate 'line', 1705
    find_lex $P2445, "@new-stages"
    unless_null $P2445, vivify_992
    $P2445 = root_new ['parrot';'ResizablePMCArray']
  vivify_992:
    find_lex $P2446, "$_"
    unless_null $P2446, vivify_993
    new $P2446, "Undef"
  vivify_993:
    push $P2445, $P2446
.annotate 'line', 1703
    set $P2438, $P2445
  if_2439_end:
.annotate 'line', 1702
    set $P2431, $P2438
  if_2432_end:
.annotate 'line', 1701
    .return ($P2431)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("232_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2461
    .param pmc param_2462
.annotate 'line', 1717
    .const 'Sub' $P2500 = "233_1303340933.805" 
    capture_lex $P2500
    .lex "self", param_2461
    .lex "$name", param_2462
.annotate 'line', 1718
    $P2463 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2463
.annotate 'line', 1719
    new $P2464, "Undef"
    .lex "$sigil", $P2464
.annotate 'line', 1722
    new $P2465, "Undef"
    .lex "$idx", $P2465
.annotate 'line', 1730
    $P2466 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2466
.annotate 'line', 1718
    find_lex $P2467, "$name"
    unless_null $P2467, vivify_995
    new $P2467, "Undef"
  vivify_995:
    set $S2468, $P2467
    split $P2469, "::", $S2468
    store_lex "@ns", $P2469
.annotate 'line', 1719
    find_lex $P2470, "@ns"
    unless_null $P2470, vivify_996
    $P2470 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    set $P2471, $P2470[0]
    unless_null $P2471, vivify_997
    new $P2471, "Undef"
  vivify_997:
    set $S2472, $P2471
    substr $S2473, $S2472, 0, 1
    new $P2474, 'String'
    set $P2474, $S2473
    store_lex "$sigil", $P2474
.annotate 'line', 1722
    find_lex $P2475, "$sigil"
    unless_null $P2475, vivify_998
    new $P2475, "Undef"
  vivify_998:
    set $S2476, $P2475
    index $I2477, "$@%&", $S2476
    new $P2478, 'Integer'
    set $P2478, $I2477
    store_lex "$idx", $P2478
.annotate 'line', 1723
    find_lex $P2480, "$idx"
    unless_null $P2480, vivify_999
    new $P2480, "Undef"
  vivify_999:
    set $N2481, $P2480
    isge $I2482, $N2481, 0.0
    unless $I2482, if_2479_end
.annotate 'line', 1724
    find_lex $P2483, "@ns"
    unless_null $P2483, vivify_1000
    $P2483 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    set $P2484, $P2483[0]
    unless_null $P2484, vivify_1001
    new $P2484, "Undef"
  vivify_1001:
    set $S2485, $P2484
    substr $S2486, $S2485, 1
    new $P2487, 'String'
    set $P2487, $S2486
    find_lex $P2488, "@ns"
    unless_null $P2488, vivify_1002
    $P2488 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2488
  vivify_1002:
    set $P2488[0], $P2487
.annotate 'line', 1725
    find_lex $P2489, "$sigil"
    unless_null $P2489, vivify_1003
    new $P2489, "Undef"
  vivify_1003:
    find_lex $P2490, "@ns"
    unless_null $P2490, vivify_1004
    $P2490 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    set $P2491, $P2490[-1]
    unless_null $P2491, vivify_1005
    new $P2491, "Undef"
  vivify_1005:
    concat $P2492, $P2489, $P2491
    find_lex $P2493, "@ns"
    unless_null $P2493, vivify_1006
    $P2493 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2493
  vivify_1006:
    set $P2493[-1], $P2492
  if_2479_end:
.annotate 'line', 1723
    find_lex $P2494, "@actual_ns"
    unless_null $P2494, vivify_1007
    $P2494 = root_new ['parrot';'ResizablePMCArray']
  vivify_1007:
.annotate 'line', 1731
    find_lex $P2496, "@ns"
    unless_null $P2496, vivify_1008
    $P2496 = root_new ['parrot';'ResizablePMCArray']
  vivify_1008:
    defined $I2497, $P2496
    unless $I2497, for_undef_1009
    iter $P2495, $P2496
    new $P2510, 'ExceptionHandler'
    set_label $P2510, loop2509_handler
    $P2510."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2510
  loop2509_test:
    unless $P2495, loop2509_done
    shift $P2498, $P2495
  loop2509_redo:
    .const 'Sub' $P2500 = "233_1303340933.805" 
    capture_lex $P2500
    $P2500($P2498)
  loop2509_next:
    goto loop2509_test
  loop2509_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2511, exception, 'type'
    eq $P2511, .CONTROL_LOOP_NEXT, loop2509_next
    eq $P2511, .CONTROL_LOOP_REDO, loop2509_redo
  loop2509_done:
    pop_eh 
  for_undef_1009:
    find_lex $P2512, "@actual_ns"
    unless_null $P2512, vivify_1013
    $P2512 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
.annotate 'line', 1717
    .return ($P2512)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2499"  :anon :subid("233_1303340933.805") :outer("232_1303340933.805")
    .param pmc param_2501
.annotate 'line', 1731
    .lex "$_", param_2501
.annotate 'line', 1732
    find_lex $P2504, "$_"
    unless_null $P2504, vivify_1010
    new $P2504, "Undef"
  vivify_1010:
    set $S2505, $P2504
    iseq $I2506, $S2505, ""
    unless $I2506, unless_2503
    new $P2502, 'Integer'
    set $P2502, $I2506
    goto unless_2503_end
  unless_2503:
    find_lex $P2507, "@actual_ns"
    unless_null $P2507, vivify_1011
    $P2507 = root_new ['parrot';'ResizablePMCArray']
  vivify_1011:
    find_lex $P2508, "$_"
    unless_null $P2508, vivify_1012
    new $P2508, "Undef"
  vivify_1012:
    push $P2507, $P2508
    set $P2502, $P2507
  unless_2503_end:
.annotate 'line', 1731
    .return ($P2502)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("234_1303340933.805") :outer("168_1303340933.805")
    .param pmc param_2514
    .param pmc param_2515
    .param pmc param_2516
    .param pmc param_2517 :optional :named("cache")
    .param int has_param_2517 :opt_flag
.annotate 'line', 1737
    .lex "self", param_2514
    .lex "$target", param_2515
    .lex "$pos", param_2516
    if has_param_2517, optparam_1014
    new $P2518, "Undef"
    set param_2517, $P2518
  optparam_1014:
    .lex "$cache", param_2517
.annotate 'line', 1738

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
        
.annotate 'line', 1737
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2633"  :subid("236_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 1894
    .const 'Sub' $P2712 = "243_1303340933.805" 
    capture_lex $P2712
    .const 'Sub' $P2662 = "241_1303340933.805" 
    capture_lex $P2662
    .const 'Sub' $P2655 = "240_1303340933.805" 
    capture_lex $P2655
    .const 'Sub' $P2650 = "239_1303340933.805" 
    capture_lex $P2650
    .const 'Sub' $P2645 = "238_1303340933.805" 
    capture_lex $P2645
    .const 'Sub' $P2637 = "237_1303340933.805" 
    capture_lex $P2637
    .lex "$?PACKAGE", $P2635
    .lex "$?CLASS", $P2636
.annotate 'line', 1910
    .const 'Sub' $P2662 = "241_1303340933.805" 
    newclosure $P2710, $P2662
.annotate 'line', 1894
    .return ($P2710)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1016") :outer("236_1303340933.805")
.annotate 'line', 1894
    get_hll_global $P2634, ["HLL";"CommandLine";"Result"], "_block2633" 
    .local pmc block
    set block, $P2634
    .const 'Sub' $P2712 = "243_1303340933.805" 
    capture_lex $P2712
    $P2712()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2711"  :anon :subid("243_1303340933.805") :outer("236_1303340933.805")
.annotate 'line', 1894
    nqp_get_sc_object $P2713, "1303340926.369", 4
    .local pmc type_obj
    set type_obj, $P2713
    get_how $P2714, type_obj
    get_hll_global $P2715, "NQPAttribute"
    $P2716 = $P2715."new"("@!arguments" :named("name"))
    $P2714."add_attribute"(type_obj, $P2716)
    get_how $P2717, type_obj
    get_hll_global $P2718, "NQPAttribute"
    $P2719 = $P2718."new"("%!options" :named("name"))
    $P2717."add_attribute"(type_obj, $P2719)
    get_how $P2720, type_obj
    .const 'Sub' $P2721 = "237_1303340933.805" 
    $P2720."add_method"(type_obj, "init", $P2721)
    get_how $P2722, type_obj
    .const 'Sub' $P2723 = "238_1303340933.805" 
    $P2722."add_method"(type_obj, "arguments", $P2723)
    get_how $P2724, type_obj
    .const 'Sub' $P2725 = "239_1303340933.805" 
    $P2724."add_method"(type_obj, "options", $P2725)
    get_how $P2726, type_obj
    .const 'Sub' $P2727 = "240_1303340933.805" 
    $P2726."add_method"(type_obj, "add-argument", $P2727)
    get_how $P2728, type_obj
    .const 'Sub' $P2729 = "241_1303340933.805" 
    $P2728."add_method"(type_obj, "add-option", $P2729)
    get_how $P2730, type_obj
    $P2731 = $P2730."compose"(type_obj)
    .return ($P2731)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("237_1303340933.805") :outer("236_1303340933.805")
    .param pmc param_2638
.annotate 'line', 1898
    .lex "self", param_2638
.annotate 'line', 1899
    new $P2639, "ResizablePMCArray"
    find_lex $P2640, "self"
    find_lex $P2641, "$?CLASS"
    setattribute $P2640, $P2641, "@!arguments", $P2639
.annotate 'line', 1900
    new $P2642, "Hash"
    find_lex $P2643, "self"
    find_lex $P2644, "$?CLASS"
    setattribute $P2643, $P2644, "%!options", $P2642
.annotate 'line', 1898
    .return ($P2642)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("238_1303340933.805") :outer("236_1303340933.805")
    .param pmc param_2646
.annotate 'line', 1903
    .lex "self", param_2646
    find_lex $P2647, "self"
    find_lex $P2648, "$?CLASS"
    getattribute $P2649, $P2647, $P2648, "@!arguments"
    unless_null $P2649, vivify_1017
    $P2649 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    .return ($P2649)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("239_1303340933.805") :outer("236_1303340933.805")
    .param pmc param_2651
.annotate 'line', 1904
    .lex "self", param_2651
    find_lex $P2652, "self"
    find_lex $P2653, "$?CLASS"
    getattribute $P2654, $P2652, $P2653, "%!options"
    unless_null $P2654, vivify_1018
    $P2654 = root_new ['parrot';'Hash']
  vivify_1018:
    .return ($P2654)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("240_1303340933.805") :outer("236_1303340933.805")
    .param pmc param_2656
    .param pmc param_2657
.annotate 'line', 1906
    .lex "self", param_2656
    .lex "$x", param_2657
.annotate 'line', 1907
    find_lex $P2658, "self"
    find_lex $P2659, "$?CLASS"
    getattribute $P2660, $P2658, $P2659, "@!arguments"
    unless_null $P2660, vivify_1019
    $P2660 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
    find_lex $P2661, "$x"
    unless_null $P2661, vivify_1020
    new $P2661, "Undef"
  vivify_1020:
    push $P2660, $P2661
.annotate 'line', 1906
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("241_1303340933.805") :outer("236_1303340933.805")
    .param pmc param_2663
    .param pmc param_2664
    .param pmc param_2665
.annotate 'line', 1910
    .const 'Sub' $P2674 = "242_1303340933.805" 
    capture_lex $P2674
    .lex "self", param_2663
    .lex "$name", param_2664
    .lex "$value", param_2665
.annotate 'line', 1913
    find_lex $P2671, "$name"
    unless_null $P2671, vivify_1021
    new $P2671, "Undef"
  vivify_1021:
    find_lex $P2668, "self"
    find_lex $P2669, "$?CLASS"
    getattribute $P2670, $P2668, $P2669, "%!options"
    unless_null $P2670, vivify_1022
    $P2670 = root_new ['parrot';'Hash']
  vivify_1022:
    exists $I2672, $P2670[$P2671]
    if $I2672, if_2667
.annotate 'line', 1922
    find_lex $P2705, "$value"
    unless_null $P2705, vivify_1023
    new $P2705, "Undef"
  vivify_1023:
    find_lex $P2706, "$name"
    unless_null $P2706, vivify_1024
    new $P2706, "Undef"
  vivify_1024:
    find_lex $P2707, "self"
    find_lex $P2708, "$?CLASS"
    getattribute $P2709, $P2707, $P2708, "%!options"
    unless_null $P2709, vivify_1025
    $P2709 = root_new ['parrot';'Hash']
    setattribute $P2707, $P2708, "%!options", $P2709
  vivify_1025:
    set $P2709[$P2706], $P2705
.annotate 'line', 1921
    set $P2666, $P2705
.annotate 'line', 1913
    goto if_2667_end
  if_2667:
    .const 'Sub' $P2674 = "242_1303340933.805" 
    capture_lex $P2674
    $P2704 = $P2674()
    set $P2666, $P2704
  if_2667_end:
.annotate 'line', 1910
    .return ($P2666)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2673"  :anon :subid("242_1303340933.805") :outer("241_1303340933.805")
.annotate 'line', 1914
    new $P2675, "Undef"
    .lex "$t", $P2675
    find_lex $P2676, "self"
    find_lex $P2677, "$?CLASS"
    getattribute $P2678, $P2676, $P2677, "%!options"
    unless_null $P2678, vivify_1026
    $P2678 = root_new ['parrot';'Hash']
  vivify_1026:
    typeof $S2679, $P2678
    new $P2680, 'String'
    set $P2680, $S2679
    store_lex "$t", $P2680
.annotate 'line', 1915
    find_lex $P2681, "$t"
    unless_null $P2681, vivify_1027
    new $P2681, "Undef"
  vivify_1027:
    "say"($P2681)
.annotate 'line', 1916
    find_lex $P2684, "$t"
    unless_null $P2684, vivify_1028
    new $P2684, "Undef"
  vivify_1028:
    set $S2685, $P2684
    iseq $I2686, $S2685, "ResizablePMCArray"
    if $I2686, if_2683
.annotate 'line', 1919
    find_lex $P2693, "$name"
    unless_null $P2693, vivify_1029
    new $P2693, "Undef"
  vivify_1029:
    find_lex $P2694, "self"
    find_lex $P2695, "$?CLASS"
    getattribute $P2696, $P2694, $P2695, "%!options"
    unless_null $P2696, vivify_1030
    $P2696 = root_new ['parrot';'Hash']
  vivify_1030:
    set $P2697, $P2696[$P2693]
    unless_null $P2697, vivify_1031
    new $P2697, "Undef"
  vivify_1031:
    find_lex $P2698, "$name"
    unless_null $P2698, vivify_1032
    new $P2698, "Undef"
  vivify_1032:
    new $P2699, "ResizablePMCArray"
    push $P2699, $P2697
    push $P2699, $P2698
    find_lex $P2700, "$name"
    unless_null $P2700, vivify_1033
    new $P2700, "Undef"
  vivify_1033:
    find_lex $P2701, "self"
    find_lex $P2702, "$?CLASS"
    getattribute $P2703, $P2701, $P2702, "%!options"
    unless_null $P2703, vivify_1034
    $P2703 = root_new ['parrot';'Hash']
    setattribute $P2701, $P2702, "%!options", $P2703
  vivify_1034:
    set $P2703[$P2700], $P2699
.annotate 'line', 1918
    set $P2682, $P2699
.annotate 'line', 1916
    goto if_2683_end
  if_2683:
.annotate 'line', 1917
    find_lex $P2687, "$name"
    unless_null $P2687, vivify_1035
    new $P2687, "Undef"
  vivify_1035:
    find_lex $P2688, "self"
    find_lex $P2689, "$?CLASS"
    getattribute $P2690, $P2688, $P2689, "%!options"
    unless_null $P2690, vivify_1036
    $P2690 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P2691, $P2690[$P2687]
    unless_null $P2691, vivify_1037
    new $P2691, "Undef"
  vivify_1037:
    find_lex $P2692, "$value"
    unless_null $P2692, vivify_1038
    new $P2692, "Undef"
  vivify_1038:
    push $P2691, $P2692
.annotate 'line', 1916
    set $P2682, $P2691
  if_2683_end:
.annotate 'line', 1913
    .return ($P2682)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2732"  :subid("244_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 1927
    .const 'Sub' $P3158 = "263_1303340933.805" 
    capture_lex $P3158
    .const 'Sub' $P2873 = "255_1303340933.805" 
    capture_lex $P2873
    .const 'Sub' $P2861 = "254_1303340933.805" 
    capture_lex $P2861
    .const 'Sub' $P2837 = "253_1303340933.805" 
    capture_lex $P2837
    .const 'Sub' $P2788 = "251_1303340933.805" 
    capture_lex $P2788
    .const 'Sub' $P2782 = "250_1303340933.805" 
    capture_lex $P2782
    .const 'Sub' $P2774 = "249_1303340933.805" 
    capture_lex $P2774
    .const 'Sub' $P2750 = "247_1303340933.805" 
    capture_lex $P2750
    .const 'Sub' $P2745 = "246_1303340933.805" 
    capture_lex $P2745
    .const 'Sub' $P2736 = "245_1303340933.805" 
    capture_lex $P2736
    .lex "$?PACKAGE", $P2734
    .lex "$?CLASS", $P2735
.annotate 'line', 1987
    .const 'Sub' $P2873 = "255_1303340933.805" 
    newclosure $P3156, $P2873
.annotate 'line', 1927
    .return ($P3156)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1039") :outer("244_1303340933.805")
.annotate 'line', 1927
    get_hll_global $P2733, ["HLL";"CommandLine";"Parser"], "_block2732" 
    .local pmc block
    set block, $P2733
    .const 'Sub' $P3158 = "263_1303340933.805" 
    capture_lex $P3158
    $P3158()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3157"  :anon :subid("263_1303340933.805") :outer("244_1303340933.805")
.annotate 'line', 1927
    nqp_get_sc_object $P3159, "1303340926.369", 5
    .local pmc type_obj
    set type_obj, $P3159
    get_how $P3160, type_obj
    get_hll_global $P3161, "NQPAttribute"
    $P3162 = $P3161."new"("@!specs" :named("name"))
    $P3160."add_attribute"(type_obj, $P3162)
    get_how $P3163, type_obj
    get_hll_global $P3164, "NQPAttribute"
    $P3165 = $P3164."new"("%!options" :named("name"))
    $P3163."add_attribute"(type_obj, $P3165)
    get_how $P3166, type_obj
    get_hll_global $P3167, "NQPAttribute"
    $P3168 = $P3167."new"("%!stopper" :named("name"))
    $P3166."add_attribute"(type_obj, $P3168)
    get_how $P3169, type_obj
    get_hll_global $P3170, "NQPAttribute"
    $P3171 = $P3170."new"("$!stop-after-first-arg" :named("name"))
    $P3169."add_attribute"(type_obj, $P3171)
    get_how $P3172, type_obj
    .const 'Sub' $P3173 = "245_1303340933.805" 
    $P3172."add_method"(type_obj, "new", $P3173)
    get_how $P3174, type_obj
    .const 'Sub' $P3175 = "246_1303340933.805" 
    $P3174."add_method"(type_obj, "stop-after-first-arg", $P3175)
    get_how $P3176, type_obj
    .const 'Sub' $P3177 = "247_1303340933.805" 
    $P3176."add_method"(type_obj, "BUILD", $P3177)
    get_how $P3178, type_obj
    .const 'Sub' $P3179 = "249_1303340933.805" 
    $P3178."add_method"(type_obj, "add-stopper", $P3179)
    get_how $P3180, type_obj
    .const 'Sub' $P3181 = "250_1303340933.805" 
    $P3180."add_method"(type_obj, "split-option-aliases", $P3181)
    get_how $P3182, type_obj
    .const 'Sub' $P3183 = "251_1303340933.805" 
    $P3182."add_method"(type_obj, "add-spec", $P3183)
    get_how $P3184, type_obj
    .const 'Sub' $P3185 = "253_1303340933.805" 
    $P3184."add_method"(type_obj, "is-option", $P3185)
    get_how $P3186, type_obj
    .const 'Sub' $P3187 = "254_1303340933.805" 
    $P3186."add_method"(type_obj, "wants-value", $P3187)
    get_how $P3188, type_obj
    .const 'Sub' $P3189 = "255_1303340933.805" 
    $P3188."add_method"(type_obj, "parse", $P3189)
    get_how $P3190, type_obj
    $P3191 = $P3190."compose"(type_obj)
    .return ($P3191)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("245_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2737
    .param pmc param_2738
.annotate 'line', 1933
    .lex "self", param_2737
    .lex "@specs", param_2738
.annotate 'line', 1934
    new $P2739, "Undef"
    .lex "$obj", $P2739
    find_lex $P2740, "self"
    $P2741 = $P2740."CREATE"()
    store_lex "$obj", $P2741
.annotate 'line', 1935
    find_lex $P2742, "$obj"
    unless_null $P2742, vivify_1040
    new $P2742, "Undef"
  vivify_1040:
    find_lex $P2743, "@specs"
    unless_null $P2743, vivify_1041
    $P2743 = root_new ['parrot';'ResizablePMCArray']
  vivify_1041:
    $P2742."BUILD"($P2743 :named("specs"))
    find_lex $P2744, "$obj"
    unless_null $P2744, vivify_1042
    new $P2744, "Undef"
  vivify_1042:
.annotate 'line', 1933
    .return ($P2744)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("246_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2746
.annotate 'line', 1939
    .lex "self", param_2746
.annotate 'line', 1940
    new $P2747, "Integer"
    assign $P2747, 1
    find_lex $P2748, "self"
    find_lex $P2749, "$?CLASS"
    setattribute $P2748, $P2749, "$!stop-after-first-arg", $P2747
.annotate 'line', 1939
    .return ($P2747)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("247_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2751
    .param pmc param_2752 :optional :named("specs")
    .param int has_param_2752 :opt_flag
.annotate 'line', 1943
    .const 'Sub' $P2766 = "248_1303340933.805" 
    capture_lex $P2766
    .lex "self", param_2751
    if has_param_2752, optparam_1043
    $P2753 = root_new ['parrot';'ResizablePMCArray']
    set param_2752, $P2753
  optparam_1043:
    .lex "@specs", param_2752
.annotate 'line', 1944
    new $P2754, "Integer"
    assign $P2754, 1
    find_lex $P2755, "self"
    find_lex $P2756, "$?CLASS"
    getattribute $P2757, $P2755, $P2756, "%!stopper"
    unless_null $P2757, vivify_1044
    $P2757 = root_new ['parrot';'Hash']
    setattribute $P2755, $P2756, "%!stopper", $P2757
  vivify_1044:
    set $P2757["--"], $P2754
.annotate 'line', 1945
    new $P2758, "Integer"
    assign $P2758, 0
    find_lex $P2759, "self"
    find_lex $P2760, "$?CLASS"
    setattribute $P2759, $P2760, "$!stop-after-first-arg", $P2758
.annotate 'line', 1946
    find_lex $P2762, "@specs"
    unless_null $P2762, vivify_1045
    $P2762 = root_new ['parrot';'ResizablePMCArray']
  vivify_1045:
    defined $I2763, $P2762
    unless $I2763, for_undef_1046
    iter $P2761, $P2762
    new $P2772, 'ExceptionHandler'
    set_label $P2772, loop2771_handler
    $P2772."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2772
  loop2771_test:
    unless $P2761, loop2771_done
    shift $P2764, $P2761
  loop2771_redo:
    .const 'Sub' $P2766 = "248_1303340933.805" 
    capture_lex $P2766
    $P2766($P2764)
  loop2771_next:
    goto loop2771_test
  loop2771_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2773, exception, 'type'
    eq $P2773, .CONTROL_LOOP_NEXT, loop2771_next
    eq $P2773, .CONTROL_LOOP_REDO, loop2771_redo
  loop2771_done:
    pop_eh 
  for_undef_1046:
.annotate 'line', 1943
    .return ($P2761)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2765"  :anon :subid("248_1303340933.805") :outer("247_1303340933.805")
    .param pmc param_2767
.annotate 'line', 1946
    .lex "$_", param_2767
.annotate 'line', 1947
    find_lex $P2768, "self"
    find_lex $P2769, "$_"
    unless_null $P2769, vivify_1047
    new $P2769, "Undef"
  vivify_1047:
    $P2770 = $P2768."add-spec"($P2769)
.annotate 'line', 1946
    .return ($P2770)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("249_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2775
    .param pmc param_2776
.annotate 'line', 1950
    .lex "self", param_2775
    .lex "$x", param_2776
.annotate 'line', 1951
    new $P2777, "Integer"
    assign $P2777, 1
    find_lex $P2778, "$x"
    unless_null $P2778, vivify_1048
    new $P2778, "Undef"
  vivify_1048:
    find_lex $P2779, "self"
    find_lex $P2780, "$?CLASS"
    getattribute $P2781, $P2779, $P2780, "%!stopper"
    unless_null $P2781, vivify_1049
    $P2781 = root_new ['parrot';'Hash']
    setattribute $P2779, $P2780, "%!stopper", $P2781
  vivify_1049:
    set $P2781[$P2778], $P2777
.annotate 'line', 1950
    .return ($P2777)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("250_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2783
    .param pmc param_2784
.annotate 'line', 1954
    .lex "self", param_2783
    .lex "$s", param_2784
.annotate 'line', 1955
    find_lex $P2785, "$s"
    unless_null $P2785, vivify_1050
    new $P2785, "Undef"
  vivify_1050:
    set $S2786, $P2785
    split $P2787, "|", $S2786
.annotate 'line', 1954
    .return ($P2787)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("251_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2789
    .param pmc param_2790
.annotate 'line', 1959
    .const 'Sub' $P2827 = "252_1303340933.805" 
    capture_lex $P2827
    .lex "self", param_2789
    .lex "$s", param_2790
.annotate 'line', 1960
    new $P2791, "Undef"
    .lex "$i", $P2791
.annotate 'line', 1961
    new $P2792, "Undef"
    .lex "$type", $P2792
.annotate 'line', 1962
    $P2793 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2793
.annotate 'line', 1960
    find_lex $P2794, "$s"
    unless_null $P2794, vivify_1051
    new $P2794, "Undef"
  vivify_1051:
    set $S2795, $P2794
    index $I2796, $S2795, "="
    new $P2797, 'Integer'
    set $P2797, $I2796
    store_lex "$i", $P2797
    find_lex $P2798, "$type"
    unless_null $P2798, vivify_1052
    new $P2798, "Undef"
  vivify_1052:
    find_lex $P2799, "@options"
    unless_null $P2799, vivify_1053
    $P2799 = root_new ['parrot';'ResizablePMCArray']
  vivify_1053:
.annotate 'line', 1963
    find_lex $P2801, "$i"
    unless_null $P2801, vivify_1054
    new $P2801, "Undef"
  vivify_1054:
    set $N2802, $P2801
    islt $I2803, $N2802, 0.0
    if $I2803, if_2800
.annotate 'line', 1967
    find_lex $P2808, "$s"
    unless_null $P2808, vivify_1055
    new $P2808, "Undef"
  vivify_1055:
    set $S2809, $P2808
    find_lex $P2810, "$i"
    unless_null $P2810, vivify_1056
    new $P2810, "Undef"
  vivify_1056:
    add $P2811, $P2810, 1
    set $I2812, $P2811
    substr $S2813, $S2809, $I2812
    new $P2814, 'String'
    set $P2814, $S2813
    store_lex "$type", $P2814
.annotate 'line', 1968
    find_lex $P2815, "self"
    find_lex $P2816, "$s"
    unless_null $P2816, vivify_1057
    new $P2816, "Undef"
  vivify_1057:
    set $S2817, $P2816
    find_lex $P2818, "$i"
    unless_null $P2818, vivify_1058
    new $P2818, "Undef"
  vivify_1058:
    set $I2819, $P2818
    substr $S2820, $S2817, 0, $I2819
    $P2821 = $P2815."split-option-aliases"($S2820)
    store_lex "@options", $P2821
.annotate 'line', 1966
    goto if_2800_end
  if_2800:
.annotate 'line', 1964
    new $P2804, "String"
    assign $P2804, "b"
    store_lex "$type", $P2804
.annotate 'line', 1965
    find_lex $P2805, "self"
    find_lex $P2806, "$s"
    unless_null $P2806, vivify_1059
    new $P2806, "Undef"
  vivify_1059:
    $P2807 = $P2805."split-option-aliases"($P2806)
    store_lex "@options", $P2807
  if_2800_end:
.annotate 'line', 1970
    find_lex $P2823, "@options"
    unless_null $P2823, vivify_1060
    $P2823 = root_new ['parrot';'ResizablePMCArray']
  vivify_1060:
    defined $I2824, $P2823
    unless $I2824, for_undef_1061
    iter $P2822, $P2823
    new $P2835, 'ExceptionHandler'
    set_label $P2835, loop2834_handler
    $P2835."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2835
  loop2834_test:
    unless $P2822, loop2834_done
    shift $P2825, $P2822
  loop2834_redo:
    .const 'Sub' $P2827 = "252_1303340933.805" 
    capture_lex $P2827
    $P2827($P2825)
  loop2834_next:
    goto loop2834_test
  loop2834_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2836, exception, 'type'
    eq $P2836, .CONTROL_LOOP_NEXT, loop2834_next
    eq $P2836, .CONTROL_LOOP_REDO, loop2834_redo
  loop2834_done:
    pop_eh 
  for_undef_1061:
.annotate 'line', 1959
    .return ($P2822)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2826"  :anon :subid("252_1303340933.805") :outer("251_1303340933.805")
    .param pmc param_2828
.annotate 'line', 1970
    .lex "$_", param_2828
.annotate 'line', 1971
    find_lex $P2829, "$type"
    unless_null $P2829, vivify_1062
    new $P2829, "Undef"
  vivify_1062:
    find_lex $P2830, "$_"
    unless_null $P2830, vivify_1063
    new $P2830, "Undef"
  vivify_1063:
    find_lex $P2831, "self"
    find_lex $P2832, "$?CLASS"
    getattribute $P2833, $P2831, $P2832, "%!options"
    unless_null $P2833, vivify_1064
    $P2833 = root_new ['parrot';'Hash']
    setattribute $P2831, $P2832, "%!options", $P2833
  vivify_1064:
    set $P2833[$P2830], $P2829
.annotate 'line', 1970
    .return ($P2829)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("253_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2840
    .param pmc param_2841
.annotate 'line', 1976
    new $P2839, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2839, control_2838
    push_eh $P2839
    .lex "self", param_2840
    .lex "$x", param_2841
.annotate 'line', 1977
    find_lex $P2845, "$x"
    unless_null $P2845, vivify_1065
    new $P2845, "Undef"
  vivify_1065:
    set $S2846, $P2845
    iseq $I2847, $S2846, "-"
    unless $I2847, unless_2844
    new $P2843, 'Integer'
    set $P2843, $I2847
    goto unless_2844_end
  unless_2844:
    find_lex $P2848, "$x"
    unless_null $P2848, vivify_1066
    new $P2848, "Undef"
  vivify_1066:
    set $S2849, $P2848
    iseq $I2850, $S2849, "--"
    new $P2843, 'Integer'
    set $P2843, $I2850
  unless_2844_end:
    unless $P2843, if_2842_end
    new $P2851, "Exception"
    set $P2851['type'], .CONTROL_RETURN
    new $P2852, "Integer"
    assign $P2852, 0
    setattribute $P2851, 'payload', $P2852
    throw $P2851
  if_2842_end:
.annotate 'line', 1978
    find_lex $P2854, "$x"
    unless_null $P2854, vivify_1067
    new $P2854, "Undef"
  vivify_1067:
    set $S2855, $P2854
    substr $S2856, $S2855, 0, 1
    iseq $I2857, $S2856, "-"
    unless $I2857, if_2853_end
    new $P2858, "Exception"
    set $P2858['type'], .CONTROL_RETURN
    new $P2859, "Integer"
    assign $P2859, 1
    setattribute $P2858, 'payload', $P2859
    throw $P2858
  if_2853_end:
.annotate 'line', 1976
    .return (0)
  control_2838:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2860, exception, "payload"
    .return ($P2860)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("254_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2862
    .param pmc param_2863
.annotate 'line', 1982
    .lex "self", param_2862
    .lex "$x", param_2863
.annotate 'line', 1983
    new $P2864, "Undef"
    .lex "$spec", $P2864
    find_lex $P2865, "$x"
    unless_null $P2865, vivify_1068
    new $P2865, "Undef"
  vivify_1068:
    find_lex $P2866, "self"
    find_lex $P2867, "$?CLASS"
    getattribute $P2868, $P2866, $P2867, "%!options"
    unless_null $P2868, vivify_1069
    $P2868 = root_new ['parrot';'Hash']
  vivify_1069:
    set $P2869, $P2868[$P2865]
    unless_null $P2869, vivify_1070
    new $P2869, "Undef"
  vivify_1070:
    store_lex "$spec", $P2869
.annotate 'line', 1984
    find_lex $P2870, "$spec"
    unless_null $P2870, vivify_1071
    new $P2870, "Undef"
  vivify_1071:
    set $S2871, $P2870
    iseq $I2872, $S2871, "s"
.annotate 'line', 1982
    .return ($I2872)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("255_1303340933.805") :outer("244_1303340933.805")
    .param pmc param_2876
    .param pmc param_2877
.annotate 'line', 1987
    .const 'Sub' $P2964 = "258_1303340933.805" 
    capture_lex $P2964
    .const 'Sub' $P2930 = "257_1303340933.805" 
    capture_lex $P2930
    .const 'Sub' $P2881 = "256_1303340933.805" 
    capture_lex $P2881
    new $P2875, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2875, control_2874
    push_eh $P2875
    .lex "self", param_2876
    .lex "@args", param_2877
.annotate 'line', 1988
    new $P2878, "Undef"
    .lex "$i", $P2878
.annotate 'line', 1989
    new $P2879, "Undef"
    .lex "$arg-count", $P2879
.annotate 'line', 1991
    new $P2880, "Undef"
    .lex "$result", $P2880
.annotate 'line', 1995
    .const 'Sub' $P2881 = "256_1303340933.805" 
    newclosure $P2929, $P2881
    .lex "get-value", $P2929
.annotate 'line', 2010
    .const 'Sub' $P2930 = "257_1303340933.805" 
    newclosure $P2948, $P2930
    .lex "slurp-rest", $P2948
.annotate 'line', 1988
    new $P2949, "Integer"
    assign $P2949, 0
    store_lex "$i", $P2949
.annotate 'line', 1989
    find_lex $P2950, "@args"
    unless_null $P2950, vivify_1097
    $P2950 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    set $N2951, $P2950
    new $P2952, 'Float'
    set $P2952, $N2951
    store_lex "$arg-count", $P2952
.annotate 'line', 1991
    get_hll_global $P2953, ["HLL";"CommandLine"], "Result"
    $P2954 = $P2953."new"()
    store_lex "$result", $P2954
.annotate 'line', 1992
    find_lex $P2955, "$result"
    unless_null $P2955, vivify_1098
    new $P2955, "Undef"
  vivify_1098:
    $P2955."init"()
    find_lex $P2956, "get-value"
    find_lex $P2957, "slurp-rest"
.annotate 'line', 2018
    new $P3151, 'ExceptionHandler'
    set_label $P3151, loop3150_handler
    $P3151."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3151
  loop3150_test:
    find_lex $P2958, "$i"
    unless_null $P2958, vivify_1099
    new $P2958, "Undef"
  vivify_1099:
    set $N2959, $P2958
    find_lex $P2960, "$arg-count"
    unless_null $P2960, vivify_1100
    new $P2960, "Undef"
  vivify_1100:
    set $N2961, $P2960
    islt $I2962, $N2959, $N2961
    unless $I2962, loop3150_done
  loop3150_redo:
    .const 'Sub' $P2964 = "258_1303340933.805" 
    capture_lex $P2964
    $P2964()
  loop3150_next:
    goto loop3150_test
  loop3150_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3152, exception, 'type'
    eq $P3152, .CONTROL_LOOP_NEXT, loop3150_next
    eq $P3152, .CONTROL_LOOP_REDO, loop3150_redo
  loop3150_done:
    pop_eh 
.annotate 'line', 2070
    new $P3153, "Exception"
    set $P3153['type'], .CONTROL_RETURN
    find_lex $P3154, "$result"
    unless_null $P3154, vivify_1161
    new $P3154, "Undef"
  vivify_1161:
    setattribute $P3153, 'payload', $P3154
    throw $P3153
.annotate 'line', 1987
    .return ()
  control_2874:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3155, exception, "payload"
    .return ($P3155)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("256_1303340933.805") :outer("255_1303340933.805")
    .param pmc param_2882
.annotate 'line', 1995
    .lex "$opt", param_2882
.annotate 'line', 1996
    find_lex $P2885, "$i"
    unless_null $P2885, vivify_1072
    new $P2885, "Undef"
  vivify_1072:
    set $N2886, $P2885
    find_lex $P2887, "$arg-count"
    unless_null $P2887, vivify_1073
    new $P2887, "Undef"
  vivify_1073:
    sub $P2888, $P2887, 1
    set $N2889, $P2888
    iseq $I2890, $N2886, $N2889
    if $I2890, if_2884
.annotate 'line', 1998
    find_lex $P2897, "self"
    find_lex $P2898, "$i"
    unless_null $P2898, vivify_1074
    new $P2898, "Undef"
  vivify_1074:
    add $P2899, $P2898, 1
    set $I2900, $P2899
    find_lex $P2901, "@args"
    unless_null $P2901, vivify_1075
    $P2901 = root_new ['parrot';'ResizablePMCArray']
  vivify_1075:
    set $P2902, $P2901[$I2900]
    unless_null $P2902, vivify_1076
    new $P2902, "Undef"
  vivify_1076:
    $P2903 = $P2897."is-option"($P2902)
    if $P2903, if_2896
.annotate 'line', 2000
    find_lex $P2910, "$i"
    unless_null $P2910, vivify_1077
    new $P2910, "Undef"
  vivify_1077:
    add $P2911, $P2910, 1
    set $I2912, $P2911
    find_lex $P2913, "@args"
    unless_null $P2913, vivify_1078
    $P2913 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P2914, $P2913[$I2912]
    unless_null $P2914, vivify_1079
    new $P2914, "Undef"
  vivify_1079:
    find_lex $P2915, "self"
    find_lex $P2916, "$?CLASS"
    getattribute $P2917, $P2915, $P2916, "%!stopper"
    unless_null $P2917, vivify_1080
    $P2917 = root_new ['parrot';'Hash']
  vivify_1080:
    set $P2918, $P2917[$P2914]
    unless_null $P2918, vivify_1081
    new $P2918, "Undef"
  vivify_1081:
    if $P2918, if_2909
.annotate 'line', 2002
    find_lex $P2923, "$i"
    unless_null $P2923, vivify_1082
    new $P2923, "Undef"
  vivify_1082:
    clone $P2924, $P2923
    inc $P2923
    find_lex $P2925, "$i"
    unless_null $P2925, vivify_1083
    new $P2925, "Undef"
  vivify_1083:
    set $I2926, $P2925
    find_lex $P2927, "@args"
    unless_null $P2927, vivify_1084
    $P2927 = root_new ['parrot';'ResizablePMCArray']
  vivify_1084:
    set $P2928, $P2927[$I2926]
    unless_null $P2928, vivify_1085
    new $P2928, "Undef"
  vivify_1085:
    set $P2908, $P2928
.annotate 'line', 2000
    goto if_2909_end
  if_2909:
.annotate 'line', 2001
    new $P2919, 'String'
    set $P2919, "Option "
    find_lex $P2920, "$opt"
    unless_null $P2920, vivify_1086
    new $P2920, "Undef"
  vivify_1086:
    concat $P2921, $P2919, $P2920
    concat $P2922, $P2921, " needs a value, but is followed by a stopper"
    die $P2922
  if_2909_end:
.annotate 'line', 2000
    set $P2895, $P2908
.annotate 'line', 1998
    goto if_2896_end
  if_2896:
.annotate 'line', 1999
    new $P2904, 'String'
    set $P2904, "Option "
    find_lex $P2905, "$opt"
    unless_null $P2905, vivify_1087
    new $P2905, "Undef"
  vivify_1087:
    concat $P2906, $P2904, $P2905
    concat $P2907, $P2906, " needs a value, but is followed by an option"
    die $P2907
  if_2896_end:
.annotate 'line', 1998
    set $P2883, $P2895
.annotate 'line', 1996
    goto if_2884_end
  if_2884:
.annotate 'line', 1997
    new $P2891, 'String'
    set $P2891, "Option "
    find_lex $P2892, "$opt"
    unless_null $P2892, vivify_1088
    new $P2892, "Undef"
  vivify_1088:
    concat $P2893, $P2891, $P2892
    concat $P2894, $P2893, " needs a value"
    die $P2894
  if_2884_end:
.annotate 'line', 1995
    .return ($P2883)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("257_1303340933.805") :outer("255_1303340933.805")
.annotate 'line', 2010
    find_lex $P2931, "$i"
    unless_null $P2931, vivify_1089
    new $P2931, "Undef"
  vivify_1089:
    clone $P2932, $P2931
    inc $P2931
.annotate 'line', 2012
    new $P2946, 'ExceptionHandler'
    set_label $P2946, loop2945_handler
    $P2946."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2946
  loop2945_test:
    find_lex $P2933, "$i"
    unless_null $P2933, vivify_1090
    new $P2933, "Undef"
  vivify_1090:
    set $N2934, $P2933
    find_lex $P2935, "$arg-count"
    unless_null $P2935, vivify_1091
    new $P2935, "Undef"
  vivify_1091:
    set $N2936, $P2935
    islt $I2937, $N2934, $N2936
    unless $I2937, loop2945_done
  loop2945_redo:
.annotate 'line', 2013
    find_lex $P2938, "$result"
    unless_null $P2938, vivify_1092
    new $P2938, "Undef"
  vivify_1092:
    find_lex $P2939, "$i"
    unless_null $P2939, vivify_1093
    new $P2939, "Undef"
  vivify_1093:
    set $I2940, $P2939
    find_lex $P2941, "@args"
    unless_null $P2941, vivify_1094
    $P2941 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P2942, $P2941[$I2940]
    unless_null $P2942, vivify_1095
    new $P2942, "Undef"
  vivify_1095:
    $P2938."add-argument"($P2942)
    find_lex $P2943, "$i"
    unless_null $P2943, vivify_1096
    new $P2943, "Undef"
  vivify_1096:
    clone $P2944, $P2943
    inc $P2943
  loop2945_next:
.annotate 'line', 2012
    goto loop2945_test
  loop2945_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2947, exception, 'type'
    eq $P2947, .CONTROL_LOOP_NEXT, loop2945_next
    eq $P2947, .CONTROL_LOOP_REDO, loop2945_redo
  loop2945_done:
    pop_eh 
.annotate 'line', 2010
    .return ($I2937)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2963"  :anon :subid("258_1303340933.805") :outer("255_1303340933.805")
.annotate 'line', 2018
    .const 'Sub' $P3066 = "260_1303340933.805" 
    capture_lex $P3066
    .const 'Sub' $P2980 = "259_1303340933.805" 
    capture_lex $P2980
.annotate 'line', 2019
    new $P2965, "Undef"
    .lex "$cur", $P2965
    find_lex $P2966, "$i"
    unless_null $P2966, vivify_1101
    new $P2966, "Undef"
  vivify_1101:
    set $I2967, $P2966
    find_lex $P2968, "@args"
    unless_null $P2968, vivify_1102
    $P2968 = root_new ['parrot';'ResizablePMCArray']
  vivify_1102:
    set $P2969, $P2968[$I2967]
    unless_null $P2969, vivify_1103
    new $P2969, "Undef"
  vivify_1103:
    store_lex "$cur", $P2969
.annotate 'line', 2020
    find_lex $P2971, "self"
    find_lex $P2972, "$cur"
    unless_null $P2972, vivify_1104
    new $P2972, "Undef"
  vivify_1104:
    $P2973 = $P2971."is-option"($P2972)
    if $P2973, if_2970
.annotate 'line', 2062
    find_lex $P3137, "$cur"
    unless_null $P3137, vivify_1105
    new $P3137, "Undef"
  vivify_1105:
    find_lex $P3138, "self"
    find_lex $P3139, "$?CLASS"
    getattribute $P3140, $P3138, $P3139, "%!stopper"
    unless_null $P3140, vivify_1106
    $P3140 = root_new ['parrot';'Hash']
  vivify_1106:
    set $P3141, $P3140[$P3137]
    unless_null $P3141, vivify_1107
    new $P3141, "Undef"
  vivify_1107:
    if $P3141, if_3136
.annotate 'line', 2065
    find_lex $P3142, "$result"
    unless_null $P3142, vivify_1108
    new $P3142, "Undef"
  vivify_1108:
    find_lex $P3143, "$cur"
    unless_null $P3143, vivify_1109
    new $P3143, "Undef"
  vivify_1109:
    $P3142."add-argument"($P3143)
.annotate 'line', 2066
    find_lex $P3145, "self"
    find_lex $P3146, "$?CLASS"
    getattribute $P3147, $P3145, $P3146, "$!stop-after-first-arg"
    unless_null $P3147, vivify_1110
    new $P3147, "Undef"
  vivify_1110:
    unless $P3147, if_3144_end
    "slurp-rest"()
  if_3144_end:
.annotate 'line', 2064
    goto if_3136_end
  if_3136:
.annotate 'line', 2063
    "slurp-rest"()
  if_3136_end:
.annotate 'line', 2062
    goto if_2970_end
  if_2970:
.annotate 'line', 2021
    find_lex $P2975, "$cur"
    unless_null $P2975, vivify_1111
    new $P2975, "Undef"
  vivify_1111:
    set $S2976, $P2975
    substr $S2977, $S2976, 0, 2
    iseq $I2978, $S2977, "--"
    if $I2978, if_2974
.annotate 'line', 2040
    .const 'Sub' $P3066 = "260_1303340933.805" 
    capture_lex $P3066
    $P3066()
    goto if_2974_end
  if_2974:
.annotate 'line', 2021
    .const 'Sub' $P2980 = "259_1303340933.805" 
    capture_lex $P2980
    $P2980()
  if_2974_end:
  if_2970_end:
.annotate 'line', 2020
    find_lex $P3148, "$i"
    unless_null $P3148, vivify_1160
    new $P3148, "Undef"
  vivify_1160:
    clone $P3149, $P3148
    inc $P3148
.annotate 'line', 2018
    .return ($P3149)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3065"  :anon :subid("260_1303340933.805") :outer("258_1303340933.805")
.annotate 'line', 2040
    .const 'Sub' $P3111 = "261_1303340933.805" 
    capture_lex $P3111
.annotate 'line', 2041
    new $P3067, "Undef"
    .lex "$opt", $P3067
    find_lex $P3068, "$cur"
    unless_null $P3068, vivify_1112
    new $P3068, "Undef"
  vivify_1112:
    set $S3069, $P3068
    substr $S3070, $S3069, 1
    new $P3071, 'String'
    set $P3071, $S3070
    store_lex "$opt", $P3071
.annotate 'line', 2042
    find_lex $P3074, "$opt"
    unless_null $P3074, vivify_1113
    new $P3074, "Undef"
  vivify_1113:
    set $S3075, $P3074
    length $I3076, $S3075
    set $N3077, $I3076
    iseq $I3078, $N3077, 1.0
    if $I3078, if_3073
.annotate 'line', 2052
    .const 'Sub' $P3111 = "261_1303340933.805" 
    capture_lex $P3111
    $P3135 = $P3111()
    set $P3072, $P3135
.annotate 'line', 2042
    goto if_3073_end
  if_3073:
.annotate 'line', 2044
    find_lex $P3080, "$opt"
    unless_null $P3080, vivify_1121
    new $P3080, "Undef"
  vivify_1121:
    find_lex $P3081, "self"
    find_lex $P3082, "$?CLASS"
    getattribute $P3083, $P3081, $P3082, "%!options"
    unless_null $P3083, vivify_1122
    $P3083 = root_new ['parrot';'Hash']
  vivify_1122:
    set $P3084, $P3083[$P3080]
    unless_null $P3084, vivify_1123
    new $P3084, "Undef"
  vivify_1123:
    if $P3084, unless_3079_end
    new $P3085, 'String'
    set $P3085, "No such option -"
    find_lex $P3086, "$opt"
    unless_null $P3086, vivify_1124
    new $P3086, "Undef"
  vivify_1124:
    concat $P3087, $P3085, $P3086
    die $P3087
  unless_3079_end:
.annotate 'line', 2045
    find_lex $P3089, "self"
    find_lex $P3090, "$opt"
    unless_null $P3090, vivify_1125
    new $P3090, "Undef"
  vivify_1125:
    $P3091 = $P3089."wants-value"($P3090)
    if $P3091, if_3088
.annotate 'line', 2049
    find_lex $P3098, "$result"
    unless_null $P3098, vivify_1126
    new $P3098, "Undef"
  vivify_1126:
    find_lex $P3099, "$opt"
    unless_null $P3099, vivify_1127
    new $P3099, "Undef"
  vivify_1127:
    $P3098."add-option"($P3099, 1)
.annotate 'line', 2048
    goto if_3088_end
  if_3088:
.annotate 'line', 2046
    find_lex $P3092, "$result"
    unless_null $P3092, vivify_1128
    new $P3092, "Undef"
  vivify_1128:
    find_lex $P3093, "$opt"
    unless_null $P3093, vivify_1129
    new $P3093, "Undef"
  vivify_1129:
.annotate 'line', 2047
    new $P3094, 'String'
    set $P3094, "-"
    find_lex $P3095, "$opt"
    unless_null $P3095, vivify_1130
    new $P3095, "Undef"
  vivify_1130:
    concat $P3096, $P3094, $P3095
    $P3097 = "get-value"($P3096)
    $P3092."add-option"($P3093, $P3097)
  if_3088_end:
.annotate 'line', 2051
    new $P3102, 'String'
    set $P3102, "-"
    find_lex $P3103, "$opt"
    unless_null $P3103, vivify_1131
    new $P3103, "Undef"
  vivify_1131:
    concat $P3104, $P3102, $P3103
    find_lex $P3105, "self"
    find_lex $P3106, "$?CLASS"
    getattribute $P3107, $P3105, $P3106, "%!stopper"
    unless_null $P3107, vivify_1132
    $P3107 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P3108, $P3107[$P3104]
    unless_null $P3108, vivify_1133
    new $P3108, "Undef"
  vivify_1133:
    if $P3108, if_3101
    set $P3100, $P3108
    goto if_3101_end
  if_3101:
    $P3109 = "slurp-rest"()
    set $P3100, $P3109
  if_3101_end:
.annotate 'line', 2042
    set $P3072, $P3100
  if_3073_end:
.annotate 'line', 2040
    .return ($P3072)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3110"  :anon :subid("261_1303340933.805") :outer("260_1303340933.805")
.annotate 'line', 2052
    .const 'Sub' $P3117 = "262_1303340933.805" 
    capture_lex $P3117
.annotate 'line', 2054
    new $P3112, "Undef"
    .lex "$iter", $P3112
    find_lex $P3113, "$opt"
    unless_null $P3113, vivify_1114
    new $P3113, "Undef"
  vivify_1114:
    iter $P3114, $P3113
    store_lex "$iter", $P3114
.annotate 'line', 2055
    new $P3133, 'ExceptionHandler'
    set_label $P3133, loop3132_handler
    $P3133."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3133
  loop3132_test:
    find_lex $P3115, "$iter"
    unless_null $P3115, vivify_1115
    new $P3115, "Undef"
  vivify_1115:
    unless $P3115, loop3132_done
  loop3132_redo:
    .const 'Sub' $P3117 = "262_1303340933.805" 
    capture_lex $P3117
    $P3117()
  loop3132_next:
    goto loop3132_test
  loop3132_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3134, exception, 'type'
    eq $P3134, .CONTROL_LOOP_NEXT, loop3132_next
    eq $P3134, .CONTROL_LOOP_REDO, loop3132_redo
  loop3132_done:
    pop_eh 
.annotate 'line', 2052
    .return ($P3115)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3116"  :anon :subid("262_1303340933.805") :outer("261_1303340933.805")
.annotate 'line', 2056
    new $P3118, "Undef"
    .lex "$o", $P3118
    find_lex $P3119, "$iter"
    unless_null $P3119, vivify_1116
    new $P3119, "Undef"
  vivify_1116:
    shift $P3120, $P3119
    store_lex "$o", $P3120
.annotate 'line', 2057
    find_lex $P3122, "self"
    find_lex $P3123, "$o"
    unless_null $P3123, vivify_1117
    new $P3123, "Undef"
  vivify_1117:
    $P3124 = $P3122."wants-value"($P3123)
    unless $P3124, if_3121_end
    new $P3125, 'String'
    set $P3125, "Option -"
    find_lex $P3126, "$o"
    unless_null $P3126, vivify_1118
    new $P3126, "Undef"
  vivify_1118:
    concat $P3127, $P3125, $P3126
    concat $P3128, $P3127, " requires a value and cannot be grouped"
    die $P3128
  if_3121_end:
.annotate 'line', 2058
    find_lex $P3129, "$result"
    unless_null $P3129, vivify_1119
    new $P3129, "Undef"
  vivify_1119:
    find_lex $P3130, "$o"
    unless_null $P3130, vivify_1120
    new $P3130, "Undef"
  vivify_1120:
    $P3131 = $P3129."add-option"($P3130, 1)
.annotate 'line', 2055
    .return ($P3131)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2979"  :anon :subid("259_1303340933.805") :outer("258_1303340933.805")
.annotate 'line', 2023
    new $P2981, "Undef"
    .lex "$opt", $P2981
.annotate 'line', 2024
    new $P2982, "Undef"
    .lex "$idx", $P2982
.annotate 'line', 2025
    new $P2983, "Undef"
    .lex "$value", $P2983
.annotate 'line', 2026
    new $P2984, "Undef"
    .lex "$has-value", $P2984
.annotate 'line', 2023
    find_lex $P2985, "$i"
    unless_null $P2985, vivify_1134
    new $P2985, "Undef"
  vivify_1134:
    set $I2986, $P2985
    find_lex $P2987, "@args"
    unless_null $P2987, vivify_1135
    $P2987 = root_new ['parrot';'ResizablePMCArray']
  vivify_1135:
    set $P2988, $P2987[$I2986]
    unless_null $P2988, vivify_1136
    new $P2988, "Undef"
  vivify_1136:
    set $S2989, $P2988
    substr $S2990, $S2989, 2
    new $P2991, 'String'
    set $P2991, $S2990
    store_lex "$opt", $P2991
.annotate 'line', 2024
    find_lex $P2992, "$opt"
    unless_null $P2992, vivify_1137
    new $P2992, "Undef"
  vivify_1137:
    set $S2993, $P2992
    index $I2994, $S2993, "="
    new $P2995, 'Integer'
    set $P2995, $I2994
    store_lex "$idx", $P2995
.annotate 'line', 2025
    new $P2996, "Integer"
    assign $P2996, 1
    store_lex "$value", $P2996
.annotate 'line', 2026
    new $P2997, "Integer"
    assign $P2997, 0
    store_lex "$has-value", $P2997
.annotate 'line', 2028
    find_lex $P2999, "$idx"
    unless_null $P2999, vivify_1138
    new $P2999, "Undef"
  vivify_1138:
    set $N3000, $P2999
    isge $I3001, $N3000, 0.0
    unless $I3001, if_2998_end
.annotate 'line', 2029
    find_lex $P3002, "$opt"
    unless_null $P3002, vivify_1139
    new $P3002, "Undef"
  vivify_1139:
    set $S3003, $P3002
    find_lex $P3004, "$idx"
    unless_null $P3004, vivify_1140
    new $P3004, "Undef"
  vivify_1140:
    add $P3005, $P3004, 1
    set $I3006, $P3005
    substr $S3007, $S3003, $I3006
    new $P3008, 'String'
    set $P3008, $S3007
    store_lex "$value", $P3008
.annotate 'line', 2030
    find_lex $P3009, "$opt"
    unless_null $P3009, vivify_1141
    new $P3009, "Undef"
  vivify_1141:
    set $S3010, $P3009
    find_lex $P3011, "$idx"
    unless_null $P3011, vivify_1142
    new $P3011, "Undef"
  vivify_1142:
    set $I3012, $P3011
    substr $S3013, $S3010, 0, $I3012
    new $P3014, 'String'
    set $P3014, $S3013
    store_lex "$opt", $P3014
.annotate 'line', 2031
    new $P3015, "Integer"
    assign $P3015, 1
    store_lex "$has-value", $P3015
  if_2998_end:
.annotate 'line', 2033
    find_lex $P3020, "$opt"
    unless_null $P3020, vivify_1143
    new $P3020, "Undef"
  vivify_1143:
    find_lex $P3017, "self"
    find_lex $P3018, "$?CLASS"
    getattribute $P3019, $P3017, $P3018, "%!options"
    unless_null $P3019, vivify_1144
    $P3019 = root_new ['parrot';'Hash']
  vivify_1144:
    exists $I3021, $P3019[$P3020]
    if $I3021, unless_3016_end
    new $P3022, 'String'
    set $P3022, "Illegal option --"
    find_lex $P3023, "$opt"
    unless_null $P3023, vivify_1145
    new $P3023, "Undef"
  vivify_1145:
    concat $P3024, $P3022, $P3023
    die $P3024
  unless_3016_end:
.annotate 'line', 2034
    find_lex $P3028, "$opt"
    unless_null $P3028, vivify_1146
    new $P3028, "Undef"
  vivify_1146:
    find_lex $P3029, "self"
    find_lex $P3030, "$?CLASS"
    getattribute $P3031, $P3029, $P3030, "%!options"
    unless_null $P3031, vivify_1147
    $P3031 = root_new ['parrot';'Hash']
  vivify_1147:
    set $P3032, $P3031[$P3028]
    unless_null $P3032, vivify_1148
    new $P3032, "Undef"
  vivify_1148:
    set $S3033, $P3032
    isne $I3034, $S3033, "s"
    if $I3034, if_3027
    new $P3026, 'Integer'
    set $P3026, $I3034
    goto if_3027_end
  if_3027:
    find_lex $P3035, "$has-value"
    unless_null $P3035, vivify_1149
    new $P3035, "Undef"
  vivify_1149:
    set $P3026, $P3035
  if_3027_end:
    unless $P3026, if_3025_end
    new $P3036, 'String'
    set $P3036, "Option --"
    find_lex $P3037, "$opt"
    unless_null $P3037, vivify_1150
    new $P3037, "Undef"
  vivify_1150:
    concat $P3038, $P3036, $P3037
    concat $P3039, $P3038, " does not allow a value"
    die $P3039
  if_3025_end:
.annotate 'line', 2035
    find_lex $P3043, "$has-value"
    unless_null $P3043, vivify_1151
    new $P3043, "Undef"
  vivify_1151:
    isfalse $I3044, $P3043
    if $I3044, if_3042
    new $P3041, 'Integer'
    set $P3041, $I3044
    goto if_3042_end
  if_3042:
    find_lex $P3045, "self"
    find_lex $P3046, "$opt"
    unless_null $P3046, vivify_1152
    new $P3046, "Undef"
  vivify_1152:
    $P3047 = $P3045."wants-value"($P3046)
    set $P3041, $P3047
  if_3042_end:
    unless $P3041, if_3040_end
.annotate 'line', 2036
    new $P3048, 'String'
    set $P3048, "--"
    find_lex $P3049, "$opt"
    unless_null $P3049, vivify_1153
    new $P3049, "Undef"
  vivify_1153:
    concat $P3050, $P3048, $P3049
    $P3051 = "get-value"($P3050)
    store_lex "$value", $P3051
  if_3040_end:
.annotate 'line', 2038
    find_lex $P3052, "$result"
    unless_null $P3052, vivify_1154
    new $P3052, "Undef"
  vivify_1154:
    find_lex $P3053, "$opt"
    unless_null $P3053, vivify_1155
    new $P3053, "Undef"
  vivify_1155:
    find_lex $P3054, "$value"
    unless_null $P3054, vivify_1156
    new $P3054, "Undef"
  vivify_1156:
    $P3052."add-option"($P3053, $P3054)
.annotate 'line', 2039
    new $P3057, 'String'
    set $P3057, "--"
    find_lex $P3058, "$opt"
    unless_null $P3058, vivify_1157
    new $P3058, "Undef"
  vivify_1157:
    concat $P3059, $P3057, $P3058
    find_lex $P3060, "self"
    find_lex $P3061, "$?CLASS"
    getattribute $P3062, $P3060, $P3061, "%!stopper"
    unless_null $P3062, vivify_1158
    $P3062 = root_new ['parrot';'Hash']
  vivify_1158:
    set $P3063, $P3062[$P3059]
    unless_null $P3063, vivify_1159
    new $P3063, "Undef"
  vivify_1159:
    if $P3063, if_3056
    set $P3055, $P3063
    goto if_3056_end
  if_3056:
    find_lex $P3064, "slurp-rest"
    set $P3055, $P3064
  if_3056_end:
.annotate 'line', 2021
    .return ($P3055)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3192"  :subid("264_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 2105
    .const 'Sub' $P3208 = "267_1303340933.805" 
    capture_lex $P3208
    .const 'Sub' $P3201 = "266_1303340933.805" 
    capture_lex $P3201
    .const 'Sub' $P3196 = "265_1303340933.805" 
    capture_lex $P3196
    .lex "$?PACKAGE", $P3194
    .lex "$?CLASS", $P3195
.annotate 'line', 2112
    .const 'Sub' $P3201 = "266_1303340933.805" 
    newclosure $P3206, $P3201
.annotate 'line', 2105
    .return ($P3206)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post1162") :outer("264_1303340933.805")
.annotate 'line', 2105
    get_hll_global $P3193, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3192" 
    .local pmc block
    set block, $P3193
    .const 'Sub' $P3208 = "267_1303340933.805" 
    capture_lex $P3208
    $P3208()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3207"  :anon :subid("267_1303340933.805") :outer("264_1303340933.805")
.annotate 'line', 2105
    nqp_get_sc_object $P3209, "1303340926.369", 6
    .local pmc type_obj
    set type_obj, $P3209
    get_how $P3210, type_obj
    get_hll_global $P3211, "NQPAttribute"
    $P3212 = $P3211."new"("$!deserialize_past" :named("name"))
    $P3210."add_attribute"(type_obj, $P3212)
    get_how $P3213, type_obj
    .const 'Sub' $P3214 = "265_1303340933.805" 
    $P3213."add_method"(type_obj, "deserialize_past", $P3214)
    get_how $P3215, type_obj
    get_hll_global $P3216, "NQPAttribute"
    $P3217 = $P3216."new"("$!fixup_past" :named("name"))
    $P3215."add_attribute"(type_obj, $P3217)
    get_how $P3218, type_obj
    .const 'Sub' $P3219 = "266_1303340933.805" 
    $P3218."add_method"(type_obj, "fixup_past", $P3219)
    get_how $P3220, type_obj
    $P3221 = $P3220."compose"(type_obj)
    .return ($P3221)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("265_1303340933.805") :outer("264_1303340933.805")
    .param pmc param_3197
.annotate 'line', 2108
    .lex "self", param_3197
    find_lex $P3198, "self"
    find_lex $P3199, "$?CLASS"
    getattribute $P3200, $P3198, $P3199, "$!deserialize_past"
    unless_null $P3200, vivify_1163
    new $P3200, "Undef"
  vivify_1163:
    .return ($P3200)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("266_1303340933.805") :outer("264_1303340933.805")
    .param pmc param_3202
.annotate 'line', 2112
    .lex "self", param_3202
    find_lex $P3203, "self"
    find_lex $P3204, "$?CLASS"
    getattribute $P3205, $P3203, $P3204, "$!fixup_past"
    unless_null $P3205, vivify_1164
    new $P3205, "Undef"
  vivify_1164:
    .return ($P3205)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3222"  :subid("268_1303340933.805") :outer("10_1303340933.805")
.annotate 'line', 2115
    .const 'Sub' $P3707 = "291_1303340933.805" 
    capture_lex $P3707
    .const 'Sub' $P3633 = "289_1303340933.805" 
    capture_lex $P3633
    .const 'Sub' $P3628 = "288_1303340933.805" 
    capture_lex $P3628
    .const 'Sub' $P3611 = "287_1303340933.805" 
    capture_lex $P3611
    .const 'Sub' $P3585 = "286_1303340933.805" 
    capture_lex $P3585
    .const 'Sub' $P3579 = "285_1303340933.805" 
    capture_lex $P3579
    .const 'Sub' $P3510 = "284_1303340933.805" 
    capture_lex $P3510
    .const 'Sub' $P3471 = "283_1303340933.805" 
    capture_lex $P3471
    .const 'Sub' $P3440 = "282_1303340933.805" 
    capture_lex $P3440
    .const 'Sub' $P3419 = "281_1303340933.805" 
    capture_lex $P3419
    .const 'Sub' $P3386 = "279_1303340933.805" 
    capture_lex $P3386
    .const 'Sub' $P3352 = "278_1303340933.805" 
    capture_lex $P3352
    .const 'Sub' $P3338 = "277_1303340933.805" 
    capture_lex $P3338
    .const 'Sub' $P3313 = "276_1303340933.805" 
    capture_lex $P3313
    .const 'Sub' $P3305 = "275_1303340933.805" 
    capture_lex $P3305
    .const 'Sub' $P3290 = "274_1303340933.805" 
    capture_lex $P3290
    .const 'Sub' $P3273 = "273_1303340933.805" 
    capture_lex $P3273
    .const 'Sub' $P3259 = "272_1303340933.805" 
    capture_lex $P3259
    .const 'Sub' $P3241 = "271_1303340933.805" 
    capture_lex $P3241
    .const 'Sub' $P3232 = "270_1303340933.805" 
    capture_lex $P3232
    .const 'Sub' $P3224 = "269_1303340933.805" 
    capture_lex $P3224
.annotate 'line', 2125
    .const 'Sub' $P3224 = "269_1303340933.805" 
    newclosure $P3228, $P3224
    .lex "addr", $P3228
.annotate 'line', 2115
    .lex "$?PACKAGE", $P3229
    .lex "$?CLASS", $P3230
    find_lex $P3231, "addr"
.annotate 'line', 2397
    .const 'Sub' $P3633 = "289_1303340933.805" 
    newclosure $P3705, $P3633
.annotate 'line', 2115
    .return ($P3705)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1165") :outer("268_1303340933.805")
.annotate 'line', 2115
    get_hll_global $P3223, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3222" 
    .local pmc block
    set block, $P3223
    .const 'Sub' $P3707 = "291_1303340933.805" 
    capture_lex $P3707
    $P3707()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3706"  :anon :subid("291_1303340933.805") :outer("268_1303340933.805")
.annotate 'line', 2115
    nqp_get_sc_object $P3708, "1303340926.369", 7
    .local pmc type_obj
    set type_obj, $P3708
    get_how $P3709, type_obj
    get_hll_global $P3710, "NQPAttribute"
    $P3711 = $P3710."new"("$!sc" :named("name"))
    $P3709."add_attribute"(type_obj, $P3711)
    get_how $P3712, type_obj
    get_hll_global $P3713, "NQPAttribute"
    $P3714 = $P3713."new"("$!handle" :named("name"))
    $P3712."add_attribute"(type_obj, $P3714)
    get_how $P3715, type_obj
    get_hll_global $P3716, "NQPAttribute"
    $P3717 = $P3716."new"("%!addr_to_slot" :named("name"))
    $P3715."add_attribute"(type_obj, $P3717)
    get_how $P3718, type_obj
    get_hll_global $P3719, "NQPAttribute"
    $P3720 = $P3719."new"("@!event_stream" :named("name"))
    $P3718."add_attribute"(type_obj, $P3720)
    get_how $P3721, type_obj
    .const 'Sub' $P3722 = "270_1303340933.805" 
    $P3721."add_method"(type_obj, "new", $P3722)
    get_how $P3723, type_obj
    .const 'Sub' $P3724 = "271_1303340933.805" 
    $P3723."add_method"(type_obj, "BUILD", $P3724)
    get_how $P3725, type_obj
    .const 'Sub' $P3726 = "272_1303340933.805" 
    $P3725."add_method"(type_obj, "slot_for_object", $P3726)
    get_how $P3727, type_obj
    .const 'Sub' $P3728 = "273_1303340933.805" 
    $P3727."add_method"(type_obj, "get_slot_past_for_object", $P3728)
    get_how $P3729, type_obj
    .const 'Sub' $P3730 = "274_1303340933.805" 
    $P3729."add_method"(type_obj, "set_slot_past", $P3730)
    get_how $P3731, type_obj
    .const 'Sub' $P3732 = "275_1303340933.805" 
    $P3731."add_method"(type_obj, "set_cur_sc", $P3732)
    get_how $P3733, type_obj
    .const 'Sub' $P3734 = "276_1303340933.805" 
    $P3733."add_method"(type_obj, "add_object", $P3734)
    get_how $P3735, type_obj
    .const 'Sub' $P3736 = "277_1303340933.805" 
    $P3735."add_method"(type_obj, "add_event", $P3736)
    get_how $P3737, type_obj
    .const 'Sub' $P3738 = "278_1303340933.805" 
    $P3737."add_method"(type_obj, "get_object_sc_ref_past", $P3738)
    get_how $P3739, type_obj
    .const 'Sub' $P3740 = "279_1303340933.805" 
    $P3739."add_method"(type_obj, "load_setting", $P3740)
    get_how $P3741, type_obj
    .const 'Sub' $P3742 = "281_1303340933.805" 
    $P3741."add_method"(type_obj, "load_module", $P3742)
    get_how $P3743, type_obj
    .const 'Sub' $P3744 = "282_1303340933.805" 
    $P3743."add_method"(type_obj, "install_package_symbol", $P3744)
    get_how $P3745, type_obj
    .const 'Sub' $P3746 = "283_1303340933.805" 
    $P3745."add_method"(type_obj, "install_lexical_symbol", $P3746)
    get_how $P3747, type_obj
    .const 'Sub' $P3748 = "284_1303340933.805" 
    $P3747."add_method"(type_obj, "pkg_create_mo", $P3748)
    get_how $P3749, type_obj
    .const 'Sub' $P3750 = "285_1303340933.805" 
    $P3749."add_method"(type_obj, "pkg_add_method", $P3750)
    get_how $P3751, type_obj
    .const 'Sub' $P3752 = "286_1303340933.805" 
    $P3751."add_method"(type_obj, "pkg_add_parent_or_role", $P3752)
    get_how $P3753, type_obj
    .const 'Sub' $P3754 = "287_1303340933.805" 
    $P3753."add_method"(type_obj, "pkg_compose", $P3754)
    get_how $P3755, type_obj
    .const 'Sub' $P3756 = "288_1303340933.805" 
    $P3755."add_method"(type_obj, "sc", $P3756)
    get_how $P3757, type_obj
    .const 'Sub' $P3758 = "289_1303340933.805" 
    $P3757."add_method"(type_obj, "to_past", $P3758)
    get_how $P3759, type_obj
    $P3760 = $P3759."compose"(type_obj)
    .return ($P3760)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("269_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3225
.annotate 'line', 2125
    .lex "$obj", param_3225
.annotate 'line', 2126
    find_lex $P3226, "$obj"
    unless_null $P3226, vivify_1166
    new $P3226, "Undef"
  vivify_1166:
    get_addr $I3227, $P3226
.annotate 'line', 2125
    .return ($I3227)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("270_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3233
    .param pmc param_3234 :named("handle")
.annotate 'line', 2133
    .lex "self", param_3233
    .lex "$handle", param_3234
.annotate 'line', 2134
    new $P3235, "Undef"
    .lex "$obj", $P3235
    find_lex $P3236, "self"
    $P3237 = $P3236."CREATE"()
    store_lex "$obj", $P3237
.annotate 'line', 2135
    find_lex $P3238, "$obj"
    unless_null $P3238, vivify_1167
    new $P3238, "Undef"
  vivify_1167:
    find_lex $P3239, "$handle"
    unless_null $P3239, vivify_1168
    new $P3239, "Undef"
  vivify_1168:
    $P3238."BUILD"($P3239 :named("handle"))
    find_lex $P3240, "$obj"
    unless_null $P3240, vivify_1169
    new $P3240, "Undef"
  vivify_1169:
.annotate 'line', 2133
    .return ($P3240)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("271_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3242
    .param pmc param_3243 :optional :named("handle")
    .param int has_param_3243 :opt_flag
.annotate 'line', 2139
    .lex "self", param_3242
    if has_param_3243, optparam_1170
    new $P3244, "Undef"
    set param_3243, $P3244
  optparam_1170:
    .lex "$handle", param_3243
.annotate 'line', 2140
    find_lex $P3245, "$handle"
    unless_null $P3245, vivify_1171
    new $P3245, "Undef"
  vivify_1171:
    set $S3246, $P3245
    nqp_create_sc $P3247, $S3246
    find_lex $P3248, "self"
    find_lex $P3249, "$?CLASS"
    setattribute $P3248, $P3249, "$!sc", $P3247
.annotate 'line', 2141
    find_lex $P3250, "$handle"
    unless_null $P3250, vivify_1172
    new $P3250, "Undef"
  vivify_1172:
    find_lex $P3251, "self"
    find_lex $P3252, "$?CLASS"
    setattribute $P3251, $P3252, "$!handle", $P3250
.annotate 'line', 2142
    new $P3253, "Hash"
    find_lex $P3254, "self"
    find_lex $P3255, "$?CLASS"
    setattribute $P3254, $P3255, "%!addr_to_slot", $P3253
.annotate 'line', 2143
    new $P3256, "ResizablePMCArray"
    find_lex $P3257, "self"
    find_lex $P3258, "$?CLASS"
    setattribute $P3257, $P3258, "@!event_stream", $P3256
.annotate 'line', 2139
    .return ($P3256)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("272_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3260
    .param pmc param_3261
.annotate 'line', 2147
    .lex "self", param_3260
    .lex "$obj", param_3261
.annotate 'line', 2148
    new $P3262, "Undef"
    .lex "$slot", $P3262
    find_lex $P3263, "$obj"
    unless_null $P3263, vivify_1173
    new $P3263, "Undef"
  vivify_1173:
    $P3264 = "addr"($P3263)
    find_lex $P3265, "self"
    find_lex $P3266, "$?CLASS"
    getattribute $P3267, $P3265, $P3266, "%!addr_to_slot"
    unless_null $P3267, vivify_1174
    $P3267 = root_new ['parrot';'Hash']
  vivify_1174:
    set $P3268, $P3267[$P3264]
    unless_null $P3268, vivify_1175
    new $P3268, "Undef"
  vivify_1175:
    store_lex "$slot", $P3268
.annotate 'line', 2149
    find_lex $P3270, "$slot"
    unless_null $P3270, vivify_1176
    new $P3270, "Undef"
  vivify_1176:
    defined $I3271, $P3270
    if $I3271, unless_3269_end
.annotate 'line', 2150
    die "slot_for_object called on object not in context"
  unless_3269_end:
.annotate 'line', 2149
    find_lex $P3272, "$slot"
    unless_null $P3272, vivify_1177
    new $P3272, "Undef"
  vivify_1177:
.annotate 'line', 2147
    .return ($P3272)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("273_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3276
    .param pmc param_3277
.annotate 'line', 2159
    new $P3275, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3275, control_3274
    push_eh $P3275
    .lex "self", param_3276
    .lex "$obj", param_3277
.annotate 'line', 2160
    new $P3278, "Undef"
    .lex "$slot", $P3278
    find_lex $P3279, "self"
    find_lex $P3280, "$obj"
    unless_null $P3280, vivify_1178
    new $P3280, "Undef"
  vivify_1178:
    $P3281 = $P3279."slot_for_object"($P3280)
    store_lex "$slot", $P3281
.annotate 'line', 2161
    new $P3282, "Exception"
    set $P3282['type'], .CONTROL_RETURN
    get_hll_global $P3283, ["PAST"], "Op"
    find_lex $P3284, "self"
    find_lex $P3285, "$?CLASS"
    getattribute $P3286, $P3284, $P3285, "$!handle"
    unless_null $P3286, vivify_1179
    new $P3286, "Undef"
  vivify_1179:
    find_lex $P3287, "$slot"
    unless_null $P3287, vivify_1180
    new $P3287, "Undef"
  vivify_1180:
    $P3288 = $P3283."new"($P3286, $P3287, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3282, 'payload', $P3288
    throw $P3282
.annotate 'line', 2159
    .return ()
  control_3274:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3289, exception, "payload"
    .return ($P3289)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("274_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3293
    .param pmc param_3294
    .param pmc param_3295
.annotate 'line', 2165
    new $P3292, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3292, control_3291
    push_eh $P3292
    .lex "self", param_3293
    .lex "$slot", param_3294
    .lex "$past_to_set", param_3295
.annotate 'line', 2166
    new $P3296, "Exception"
    set $P3296['type'], .CONTROL_RETURN
    get_hll_global $P3297, ["PAST"], "Op"
    find_lex $P3298, "self"
    find_lex $P3299, "$?CLASS"
    getattribute $P3300, $P3298, $P3299, "$!handle"
    unless_null $P3300, vivify_1181
    new $P3300, "Undef"
  vivify_1181:
    find_lex $P3301, "$slot"
    unless_null $P3301, vivify_1182
    new $P3301, "Undef"
  vivify_1182:
    find_lex $P3302, "$past_to_set"
    unless_null $P3302, vivify_1183
    new $P3302, "Undef"
  vivify_1183:
    $P3303 = $P3297."new"($P3300, $P3301, $P3302, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3296, 'payload', $P3303
    throw $P3296
.annotate 'line', 2165
    .return ()
  control_3291:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3304, exception, "payload"
    .return ($P3304)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("275_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3306
    .param pmc param_3307
.annotate 'line', 2172
    .lex "self", param_3306
    .lex "$to_wrap", param_3307
.annotate 'line', 2173
    get_hll_global $P3308, ["PAST"], "Op"
    find_lex $P3309, "$to_wrap"
    unless_null $P3309, vivify_1184
    new $P3309, "Undef"
  vivify_1184:
.annotate 'line', 2176
    get_hll_global $P3310, ["PAST"], "Var"
    $P3311 = $P3310."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3312 = $P3308."new"($P3309, $P3311, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2172
    .return ($P3312)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("276_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3314
    .param pmc param_3315
.annotate 'line', 2181
    .lex "self", param_3314
    .lex "$obj", param_3315
.annotate 'line', 2183
    new $P3316, "Undef"
    .lex "$idx", $P3316
.annotate 'line', 2182
    find_lex $P3317, "$obj"
    unless_null $P3317, vivify_1185
    new $P3317, "Undef"
  vivify_1185:
    find_lex $P3318, "self"
    find_lex $P3319, "$?CLASS"
    getattribute $P3320, $P3318, $P3319, "$!sc"
    unless_null $P3320, vivify_1186
    new $P3320, "Undef"
  vivify_1186:
    nqp_set_sc_for_object $P3317, $P3320
.annotate 'line', 2183
    find_lex $P3321, "self"
    find_lex $P3322, "$?CLASS"
    getattribute $P3323, $P3321, $P3322, "$!sc"
    unless_null $P3323, vivify_1187
    new $P3323, "Undef"
  vivify_1187:
    $P3324 = $P3323."elems"()
    store_lex "$idx", $P3324
.annotate 'line', 2184
    find_lex $P3325, "$obj"
    unless_null $P3325, vivify_1188
    new $P3325, "Undef"
  vivify_1188:
    find_lex $P3326, "$idx"
    unless_null $P3326, vivify_1189
    new $P3326, "Undef"
  vivify_1189:
    set $I3327, $P3326
    find_lex $P3328, "self"
    find_lex $P3329, "$?CLASS"
    getattribute $P3330, $P3328, $P3329, "$!sc"
    unless_null $P3330, vivify_1190
    $P3330 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3328, $P3329, "$!sc", $P3330
  vivify_1190:
    set $P3330[$I3327], $P3325
.annotate 'line', 2185
    find_lex $P3331, "$idx"
    unless_null $P3331, vivify_1191
    new $P3331, "Undef"
  vivify_1191:
    find_lex $P3332, "$obj"
    unless_null $P3332, vivify_1192
    new $P3332, "Undef"
  vivify_1192:
    $P3333 = "addr"($P3332)
    find_lex $P3334, "self"
    find_lex $P3335, "$?CLASS"
    getattribute $P3336, $P3334, $P3335, "%!addr_to_slot"
    unless_null $P3336, vivify_1193
    $P3336 = root_new ['parrot';'Hash']
    setattribute $P3334, $P3335, "%!addr_to_slot", $P3336
  vivify_1193:
    set $P3336[$P3333], $P3331
    find_lex $P3337, "$idx"
    unless_null $P3337, vivify_1194
    new $P3337, "Undef"
  vivify_1194:
.annotate 'line', 2181
    .return ($P3337)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("277_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3339
    .param pmc param_3340 :optional :named("deserialize_past")
    .param int has_param_3340 :opt_flag
    .param pmc param_3342 :optional :named("fixup_past")
    .param int has_param_3342 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3339
    if has_param_3340, optparam_1195
    new $P3341, "Undef"
    set param_3340, $P3341
  optparam_1195:
    .lex "$deserialize_past", param_3340
    if has_param_3342, optparam_1196
    new $P3343, "Undef"
    set param_3342, $P3343
  optparam_1196:
    .lex "$fixup_past", param_3342
.annotate 'line', 2191
    find_lex $P3344, "self"
    find_lex $P3345, "$?CLASS"
    getattribute $P3346, $P3344, $P3345, "@!event_stream"
    unless_null $P3346, vivify_1197
    $P3346 = root_new ['parrot';'ResizablePMCArray']
  vivify_1197:
    get_hll_global $P3347, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3348, "$deserialize_past"
    unless_null $P3348, vivify_1198
    new $P3348, "Undef"
  vivify_1198:
    find_lex $P3349, "$fixup_past"
    unless_null $P3349, vivify_1199
    new $P3349, "Undef"
  vivify_1199:
    $P3350 = $P3347."new"($P3348 :named("deserialize_past"), $P3349 :named("fixup_past"))
    $P3351 = $P3346."push"($P3350)
.annotate 'line', 2190
    .return ($P3351)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("278_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3353
    .param pmc param_3354
.annotate 'line', 2198
    .lex "self", param_3353
    .lex "$obj", param_3354
.annotate 'line', 2201
    new $P3355, "Undef"
    .lex "$sc", $P3355
    find_lex $P3356, "$obj"
    unless_null $P3356, vivify_1200
    new $P3356, "Undef"
  vivify_1200:
    nqp_get_sc_for_object $P3357, $P3356
    store_lex "$sc", $P3357
.annotate 'line', 2202
    find_lex $P3359, "$sc"
    unless_null $P3359, vivify_1201
    new $P3359, "Undef"
  vivify_1201:
    isnull $I3360, $P3359
    unless $I3360, if_3358_end
.annotate 'line', 2203
    new $P3361, "String"
    assign $P3361, "Object of type '"
    find_lex $P3362, "$obj"
    unless_null $P3362, vivify_1202
    new $P3362, "Undef"
  vivify_1202:
    get_how $P3363, $P3362
    find_lex $P3364, "$obj"
    unless_null $P3364, vivify_1203
    new $P3364, "Undef"
  vivify_1203:
    $S3365 = $P3363."name"($P3364)
    concat $P3366, $P3361, $S3365
    concat $P3367, $P3366, "' cannot be referenced without having been "
    concat $P3368, $P3367, "assigned a serialization context"
.annotate 'line', 2204
    die $P3368
  if_3358_end:
.annotate 'line', 2210
    find_lex $P3371, "$sc"
    unless_null $P3371, vivify_1204
    new $P3371, "Undef"
  vivify_1204:
    find_lex $P3372, "self"
    find_lex $P3373, "$?CLASS"
    getattribute $P3374, $P3372, $P3373, "$!sc"
    unless_null $P3374, vivify_1205
    new $P3374, "Undef"
  vivify_1205:
    issame $I3375, $P3371, $P3374
    if $I3375, if_3370
.annotate 'line', 2214
    get_hll_global $P3379, ["PAST"], "Op"
.annotate 'line', 2215
    find_lex $P3380, "$sc"
    unless_null $P3380, vivify_1206
    new $P3380, "Undef"
  vivify_1206:
    $P3381 = $P3380."handle"()
    find_lex $P3382, "$sc"
    unless_null $P3382, vivify_1207
    new $P3382, "Undef"
  vivify_1207:
    find_lex $P3383, "$obj"
    unless_null $P3383, vivify_1208
    new $P3383, "Undef"
  vivify_1208:
    $P3384 = $P3382."slot_index_for"($P3383)
    $P3385 = $P3379."new"($P3381, $P3384, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3369, $P3385
.annotate 'line', 2210
    goto if_3370_end
  if_3370:
.annotate 'line', 2211
    find_lex $P3376, "self"
    find_lex $P3377, "$obj"
    unless_null $P3377, vivify_1209
    new $P3377, "Undef"
  vivify_1209:
    $P3378 = $P3376."get_slot_past_for_object"($P3377)
.annotate 'line', 2210
    set $P3369, $P3378
  if_3370_end:
.annotate 'line', 2198
    .return ($P3369)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("279_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3387
    .param pmc param_3388
.annotate 'line', 2221
    .const 'Sub' $P3395 = "280_1303340933.805" 
    capture_lex $P3395
    .lex "self", param_3387
    .lex "$setting_name", param_3388
.annotate 'line', 2223
    find_lex $P3391, "$setting_name"
    unless_null $P3391, vivify_1210
    new $P3391, "Undef"
  vivify_1210:
    set $S3392, $P3391
    isne $I3393, $S3392, "NULL"
    if $I3393, if_3390
    new $P3389, 'Integer'
    set $P3389, $I3393
    goto if_3390_end
  if_3390:
    .const 'Sub' $P3395 = "280_1303340933.805" 
    capture_lex $P3395
    $P3418 = $P3395()
    set $P3389, $P3418
  if_3390_end:
.annotate 'line', 2221
    .return ($P3389)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3394"  :anon :subid("280_1303340933.805") :outer("279_1303340933.805")
.annotate 'line', 2230
    new $P3396, "Undef"
    .lex "$load_past", $P3396
.annotate 'line', 2227
    get_hll_global $P3397, ["HLL"], "SettingManager"
    find_lex $P3398, "$setting_name"
    unless_null $P3398, vivify_1211
    new $P3398, "Undef"
  vivify_1211:
    $P3399 = $P3397."load_setting"($P3398)
    find_dynamic_lex $P3400, "%*COMPILING"
    unless_null $P3400, vivify_1212
    get_hll_global $P3400, "%COMPILING"
    unless_null $P3400, vivify_1213
    die "Contextual %*COMPILING not found"
  vivify_1213:
    store_dynamic_lex "%*COMPILING", $P3400
  vivify_1212:
    set $P3401, $P3400["%?OPTIONS"]
    unless_null $P3401, vivify_1214
    $P3401 = root_new ['parrot';'Hash']
    set $P3400["%?OPTIONS"], $P3401
  vivify_1214:
    set $P3401["outer_ctx"], $P3399
.annotate 'line', 2230
    get_hll_global $P3402, ["PAST"], "Stmts"
.annotate 'line', 2231
    get_hll_global $P3403, ["PAST"], "Op"
    $P3404 = $P3403."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2234
    get_hll_global $P3405, ["PAST"], "Op"
.annotate 'line', 2236
    get_hll_global $P3406, ["PAST"], "Var"
    $P3407 = $P3406."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2237
    get_hll_global $P3408, ["PAST"], "Op"
.annotate 'line', 2239
    get_hll_global $P3409, ["PAST"], "Var"
    $P3410 = $P3409."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P3411, "$setting_name"
    unless_null $P3411, vivify_1215
    new $P3411, "Undef"
  vivify_1215:
    $P3412 = $P3408."new"($P3410, $P3411, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2237
    $P3413 = $P3405."new"($P3407, $P3412, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2234
    $P3414 = $P3402."new"($P3404, $P3413)
.annotate 'line', 2230
    store_lex "$load_past", $P3414
.annotate 'line', 2244
    find_lex $P3415, "self"
    find_lex $P3416, "$load_past"
    unless_null $P3416, vivify_1216
    new $P3416, "Undef"
  vivify_1216:
    $P3417 = $P3415."add_event"($P3416 :named("deserialize_past"))
.annotate 'line', 2223
    .return ($P3417)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("281_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3420
    .param pmc param_3421
.annotate 'line', 2250
    .lex "self", param_3420
    .lex "$module_name", param_3421
.annotate 'line', 2252
    new $P3422, "Undef"
    .lex "$*MAIN_CTX", $P3422
.annotate 'line', 2253
    new $P3423, "Undef"
    .lex "$*CTXSAVE", $P3423
.annotate 'line', 2254
    new $P3424, "Undef"
    .lex "$path", $P3424
.annotate 'line', 2250
    find_lex $P3425, "$*MAIN_CTX"
    unless_null $P3425, vivify_1217
    get_hll_global $P3425, "$MAIN_CTX"
    unless_null $P3425, vivify_1218
    die "Contextual $*MAIN_CTX not found"
  vivify_1218:
  vivify_1217:
.annotate 'line', 2253
    get_hll_global $P3426, ["HLL"], "Compiler"
    store_lex "$*CTXSAVE", $P3426
.annotate 'line', 2254
    find_lex $P3427, "$module_name"
    unless_null $P3427, vivify_1219
    new $P3427, "Undef"
  vivify_1219:
    set $S3428, $P3427
    split $P3429, "::", $S3428
    join $S3430, "/", $P3429
    new $P3431, 'String'
    set $P3431, $S3430
    concat $P3432, $P3431, ".pbc"
    store_lex "$path", $P3432
.annotate 'line', 2255
    find_lex $P3433, "$path"
    unless_null $P3433, vivify_1220
    new $P3433, "Undef"
  vivify_1220:
    set $S3434, $P3433
    load_bytecode $S3434
.annotate 'line', 2258
    find_lex $P3435, "self"
.annotate 'line', 2259
    get_hll_global $P3436, ["PAST"], "Op"
    find_lex $P3437, "$path"
    unless_null $P3437, vivify_1221
    new $P3437, "Undef"
  vivify_1221:
    $P3438 = $P3436."new"($P3437, "load_bytecode vs" :named("pirop"))
    $P3435."add_event"($P3438 :named("deserialize_past"))
.annotate 'line', 2258
    find_lex $P3439, "$*MAIN_CTX"
    unless_null $P3439, vivify_1222
    get_hll_global $P3439, "$MAIN_CTX"
    unless_null $P3439, vivify_1223
    die "Contextual $*MAIN_CTX not found"
  vivify_1223:
  vivify_1222:
.annotate 'line', 2250
    .return ($P3439)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_symbol"  :subid("282_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3441
    .param pmc param_3442
    .param pmc param_3443
.annotate 'line', 2267
    .lex "self", param_3441
    .lex "@sym", param_3442
    .lex "$obj", param_3443
.annotate 'line', 2269
    new $P3444, "Undef"
    .lex "$name", $P3444
.annotate 'line', 2268
    find_lex $P3445, "@sym"
    unless_null $P3445, vivify_1224
    $P3445 = root_new ['parrot';'ResizablePMCArray']
  vivify_1224:
    clone $P3446, $P3445
    store_lex "@sym", $P3446
.annotate 'line', 2269
    find_lex $P3447, "@sym"
    unless_null $P3447, vivify_1225
    $P3447 = root_new ['parrot';'ResizablePMCArray']
  vivify_1225:
    $P3448 = $P3447."pop"()
    set $S3449, $P3448
    new $P3450, 'String'
    set $P3450, $S3449
    store_lex "$name", $P3450
.annotate 'line', 2276
    find_lex $P3451, "self"
.annotate 'line', 2277
    get_hll_global $P3452, ["PAST"], "Op"
.annotate 'line', 2279
    get_hll_global $P3453, ["PAST"], "Var"
    find_lex $P3454, "$name"
    unless_null $P3454, vivify_1226
    new $P3454, "Undef"
  vivify_1226:
    find_lex $P3455, "@sym"
    unless_null $P3455, vivify_1227
    $P3455 = root_new ['parrot';'ResizablePMCArray']
  vivify_1227:
    $P3456 = $P3453."new"($P3454 :named("name"), $P3455 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2280
    find_lex $P3457, "self"
    find_lex $P3458, "$obj"
    unless_null $P3458, vivify_1228
    new $P3458, "Undef"
  vivify_1228:
    $P3459 = $P3457."get_slot_past_for_object"($P3458)
    $P3460 = $P3452."new"($P3456, $P3459, "bind" :named("pasttype"))
.annotate 'line', 2282
    get_hll_global $P3461, ["PAST"], "Op"
.annotate 'line', 2284
    get_hll_global $P3462, ["PAST"], "Var"
    find_lex $P3463, "$name"
    unless_null $P3463, vivify_1229
    new $P3463, "Undef"
  vivify_1229:
    find_lex $P3464, "@sym"
    unless_null $P3464, vivify_1230
    $P3464 = root_new ['parrot';'ResizablePMCArray']
  vivify_1230:
    $P3465 = $P3462."new"($P3463 :named("name"), $P3464 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2285
    find_lex $P3466, "self"
    find_lex $P3467, "$obj"
    unless_null $P3467, vivify_1231
    new $P3467, "Undef"
  vivify_1231:
    $P3468 = $P3466."get_slot_past_for_object"($P3467)
    $P3469 = $P3461."new"($P3465, $P3468, "bind" :named("pasttype"))
.annotate 'line', 2282
    $P3470 = $P3451."add_event"($P3460 :named("deserialize_past"), $P3469 :named("fixup_past"))
.annotate 'line', 2267
    .return ($P3470)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3472
    .param pmc param_3473
    .param pmc param_3474
    .param pmc param_3475
.annotate 'line', 2293
    .lex "self", param_3472
    .lex "$block", param_3473
    .lex "$name", param_3474
    .lex "$obj", param_3475
.annotate 'line', 2299
    new $P3476, "Undef"
    .lex "$fixup", $P3476
.annotate 'line', 2295
    find_lex $P3477, "$block"
    unless_null $P3477, vivify_1232
    new $P3477, "Undef"
  vivify_1232:
    find_lex $P3478, "$name"
    unless_null $P3478, vivify_1233
    new $P3478, "Undef"
  vivify_1233:
    find_lex $P3479, "$obj"
    unless_null $P3479, vivify_1234
    new $P3479, "Undef"
  vivify_1234:
    $P3477."symbol"($P3478, "lexical" :named("scope"), $P3479 :named("value"))
.annotate 'line', 2296
    find_lex $P3480, "$block"
    unless_null $P3480, vivify_1235
    $P3480 = root_new ['parrot';'ResizablePMCArray']
  vivify_1235:
    set $P3481, $P3480[0]
    unless_null $P3481, vivify_1236
    new $P3481, "Undef"
  vivify_1236:
    get_hll_global $P3482, ["PAST"], "Var"
    find_lex $P3483, "$name"
    unless_null $P3483, vivify_1237
    new $P3483, "Undef"
  vivify_1237:
    $P3484 = $P3482."new"("lexical" :named("scope"), $P3483 :named("name"), 1 :named("isdecl"))
    $P3481."push"($P3484)
.annotate 'line', 2299
    get_hll_global $P3485, ["PAST"], "Stmts"
.annotate 'line', 2300
    get_hll_global $P3486, ["PAST"], "Op"
.annotate 'line', 2302
    get_hll_global $P3487, ["PAST"], "Op"
.annotate 'line', 2304
    get_hll_global $P3488, ["PAST"], "Val"
    find_lex $P3489, "$block"
    unless_null $P3489, vivify_1238
    new $P3489, "Undef"
  vivify_1238:
    $P3490 = $P3488."new"($P3489 :named("value"))
    $P3491 = $P3487."new"($P3490, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2306
    find_lex $P3492, "$name"
    unless_null $P3492, vivify_1239
    new $P3492, "Undef"
  vivify_1239:
    set $S3493, $P3492
    find_lex $P3494, "self"
    find_lex $P3495, "$obj"
    unless_null $P3495, vivify_1240
    new $P3495, "Undef"
  vivify_1240:
    $P3496 = $P3494."get_slot_past_for_object"($P3495)
    $P3497 = $P3486."new"($P3491, $S3493, $P3496, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2310
    get_hll_global $P3498, ["PAST"], "Op"
.annotate 'line', 2312
    get_hll_global $P3499, ["PAST"], "Op"
.annotate 'line', 2314
    get_hll_global $P3500, ["PAST"], "Val"
    find_lex $P3501, "$block"
    unless_null $P3501, vivify_1241
    new $P3501, "Undef"
  vivify_1241:
    $P3502 = $P3500."new"($P3501 :named("value"))
    $P3503 = $P3499."new"($P3502, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2312
    $P3504 = $P3498."new"($P3503, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2310
    $P3505 = $P3485."new"($P3497, $P3504)
.annotate 'line', 2299
    store_lex "$fixup", $P3505
.annotate 'line', 2318
    find_lex $P3506, "self"
    find_lex $P3507, "$fixup"
    unless_null $P3507, vivify_1242
    new $P3507, "Undef"
  vivify_1242:
    find_lex $P3508, "$fixup"
    unless_null $P3508, vivify_1243
    new $P3508, "Undef"
  vivify_1243:
    $P3509 = $P3506."add_event"($P3507 :named("deserialize_past"), $P3508 :named("fixup_past"))
.annotate 'line', 2293
    .return ($P3509)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("284_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3513
    .param pmc param_3514
    .param pmc param_3515 :optional :named("name")
    .param int has_param_3515 :opt_flag
    .param pmc param_3517 :optional :named("repr")
    .param int has_param_3517 :opt_flag
.annotate 'line', 2323
    new $P3512, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3512, control_3511
    push_eh $P3512
    .lex "self", param_3513
    .lex "$how", param_3514
    if has_param_3515, optparam_1244
    new $P3516, "Undef"
    set param_3515, $P3516
  optparam_1244:
    .lex "$name", param_3515
    if has_param_3517, optparam_1245
    new $P3518, "Undef"
    set param_3517, $P3518
  optparam_1245:
    .lex "$repr", param_3517
.annotate 'line', 2325
    $P3519 = root_new ['parrot';'Hash']
    .lex "%args", $P3519
.annotate 'line', 2328
    new $P3520, "Undef"
    .lex "$mo", $P3520
.annotate 'line', 2329
    new $P3521, "Undef"
    .lex "$slot", $P3521
.annotate 'line', 2333
    $P3522 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3522
.annotate 'line', 2334
    new $P3523, "Undef"
    .lex "$how_name", $P3523
.annotate 'line', 2335
    new $P3524, "Undef"
    .lex "$setup_call", $P3524
.annotate 'line', 2323
    find_lex $P3525, "%args"
    unless_null $P3525, vivify_1246
    $P3525 = root_new ['parrot';'Hash']
  vivify_1246:
.annotate 'line', 2326
    find_lex $P3527, "$name"
    unless_null $P3527, vivify_1247
    new $P3527, "Undef"
  vivify_1247:
    defined $I3528, $P3527
    unless $I3528, if_3526_end
    find_lex $P3529, "$name"
    unless_null $P3529, vivify_1248
    new $P3529, "Undef"
  vivify_1248:
    find_lex $P3530, "%args"
    unless_null $P3530, vivify_1249
    $P3530 = root_new ['parrot';'Hash']
    store_lex "%args", $P3530
  vivify_1249:
    set $P3530["name"], $P3529
  if_3526_end:
.annotate 'line', 2327
    find_lex $P3532, "$repr"
    unless_null $P3532, vivify_1250
    new $P3532, "Undef"
  vivify_1250:
    defined $I3533, $P3532
    unless $I3533, if_3531_end
    find_lex $P3534, "$repr"
    unless_null $P3534, vivify_1251
    new $P3534, "Undef"
  vivify_1251:
    find_lex $P3535, "%args"
    unless_null $P3535, vivify_1252
    $P3535 = root_new ['parrot';'Hash']
    store_lex "%args", $P3535
  vivify_1252:
    set $P3535["repr"], $P3534
  if_3531_end:
.annotate 'line', 2328
    find_lex $P3536, "$how"
    unless_null $P3536, vivify_1253
    new $P3536, "Undef"
  vivify_1253:
    find_lex $P3537, "%args"
    unless_null $P3537, vivify_1254
    $P3537 = root_new ['parrot';'Hash']
  vivify_1254:
    $P3538 = $P3536."new_type"($P3537 :flat)
    store_lex "$mo", $P3538
.annotate 'line', 2329
    find_lex $P3539, "self"
    find_lex $P3540, "$mo"
    unless_null $P3540, vivify_1255
    new $P3540, "Undef"
  vivify_1255:
    $P3541 = $P3539."add_object"($P3540)
    store_lex "$slot", $P3541
.annotate 'line', 2333
    find_lex $P3542, "$how"
    unless_null $P3542, vivify_1256
    new $P3542, "Undef"
  vivify_1256:
    get_how $P3543, $P3542
    find_lex $P3544, "$how"
    unless_null $P3544, vivify_1257
    new $P3544, "Undef"
  vivify_1257:
    $S3545 = $P3543."name"($P3544)
    split $P3546, "::", $S3545
    store_lex "@how_ns", $P3546
.annotate 'line', 2334
    find_lex $P3547, "@how_ns"
    unless_null $P3547, vivify_1258
    $P3547 = root_new ['parrot';'ResizablePMCArray']
  vivify_1258:
    $P3548 = $P3547."pop"()
    store_lex "$how_name", $P3548
.annotate 'line', 2335
    get_hll_global $P3549, ["PAST"], "Op"
.annotate 'line', 2337
    get_hll_global $P3550, ["PAST"], "Var"
    find_lex $P3551, "$how_name"
    unless_null $P3551, vivify_1259
    new $P3551, "Undef"
  vivify_1259:
    find_lex $P3552, "@how_ns"
    unless_null $P3552, vivify_1260
    $P3552 = root_new ['parrot';'ResizablePMCArray']
  vivify_1260:
    $P3553 = $P3550."new"($P3551 :named("name"), $P3552 :named("namespace"), "package" :named("scope"))
    $P3554 = $P3549."new"($P3553, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2335
    store_lex "$setup_call", $P3554
.annotate 'line', 2341
    find_lex $P3556, "$name"
    unless_null $P3556, vivify_1261
    new $P3556, "Undef"
  vivify_1261:
    defined $I3557, $P3556
    unless $I3557, if_3555_end
.annotate 'line', 2342
    find_lex $P3558, "$setup_call"
    unless_null $P3558, vivify_1262
    new $P3558, "Undef"
  vivify_1262:
    get_hll_global $P3559, ["PAST"], "Val"
    find_lex $P3560, "$name"
    unless_null $P3560, vivify_1263
    new $P3560, "Undef"
  vivify_1263:
    $P3561 = $P3559."new"($P3560 :named("value"), "name" :named("named"))
    $P3558."push"($P3561)
  if_3555_end:
.annotate 'line', 2344
    find_lex $P3563, "$repr"
    unless_null $P3563, vivify_1264
    new $P3563, "Undef"
  vivify_1264:
    defined $I3564, $P3563
    unless $I3564, if_3562_end
.annotate 'line', 2345
    find_lex $P3565, "$setup_call"
    unless_null $P3565, vivify_1265
    new $P3565, "Undef"
  vivify_1265:
    get_hll_global $P3566, ["PAST"], "Val"
    find_lex $P3567, "$repr"
    unless_null $P3567, vivify_1266
    new $P3567, "Undef"
  vivify_1266:
    $P3568 = $P3566."new"($P3567 :named("value"), "repr" :named("named"))
    $P3565."push"($P3568)
  if_3562_end:
.annotate 'line', 2347
    find_lex $P3569, "self"
.annotate 'line', 2348
    find_lex $P3570, "self"
    find_lex $P3571, "$slot"
    unless_null $P3571, vivify_1267
    new $P3571, "Undef"
  vivify_1267:
    find_lex $P3572, "self"
    find_lex $P3573, "$setup_call"
    unless_null $P3573, vivify_1268
    new $P3573, "Undef"
  vivify_1268:
    $P3574 = $P3572."set_cur_sc"($P3573)
    $P3575 = $P3570."set_slot_past"($P3571, $P3574)
    $P3569."add_event"($P3575 :named("deserialize_past"))
.annotate 'line', 2351
    new $P3576, "Exception"
    set $P3576['type'], .CONTROL_RETURN
    find_lex $P3577, "$mo"
    unless_null $P3577, vivify_1269
    new $P3577, "Undef"
  vivify_1269:
    setattribute $P3576, 'payload', $P3577
    throw $P3576
.annotate 'line', 2323
    .return ()
  control_3511:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3578, exception, "payload"
    .return ($P3578)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3580
    .param pmc param_3581
    .param pmc param_3582
    .param pmc param_3583
    .param pmc param_3584
.annotate 'line', 2357
    .lex "self", param_3580
    .lex "$obj", param_3581
    .lex "$meta_method_name", param_3582
    .lex "$name", param_3583
    .lex "$method_past", param_3584
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("286_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3586
    .param pmc param_3587
    .param pmc param_3588
    .param pmc param_3589
.annotate 'line', 2362
    .lex "self", param_3586
    .lex "$obj", param_3587
    .lex "$meta_method_name", param_3588
    .lex "$to_add", param_3589
.annotate 'line', 2367
    new $P3590, "Undef"
    .lex "$slot_past", $P3590
.annotate 'line', 2364
    find_lex $P3591, "$obj"
    unless_null $P3591, vivify_1270
    new $P3591, "Undef"
  vivify_1270:
    get_how $P3592, $P3591
    find_lex $P3593, "$obj"
    unless_null $P3593, vivify_1271
    new $P3593, "Undef"
  vivify_1271:
    find_lex $P3594, "$to_add"
    unless_null $P3594, vivify_1272
    new $P3594, "Undef"
  vivify_1272:
    find_lex $P3595, "$meta_method_name"
    unless_null $P3595, vivify_1273
    new $P3595, "Undef"
  vivify_1273:
    set $S3596, $P3595
    $P3592.$S3596($P3593, $P3594)
.annotate 'line', 2367
    find_lex $P3597, "$obj"
    unless_null $P3597, vivify_1274
    new $P3597, "Undef"
  vivify_1274:
    $P3598 = "get_slot_past_for_object"($P3597)
    store_lex "$slot_past", $P3598
.annotate 'line', 2368
    find_lex $P3599, "self"
    get_hll_global $P3600, ["PAST"], "Op"
    find_lex $P3601, "$meta_method_name"
    unless_null $P3601, vivify_1275
    new $P3601, "Undef"
  vivify_1275:
.annotate 'line', 2370
    get_hll_global $P3602, ["PAST"], "Op"
    find_lex $P3603, "$slot_past"
    unless_null $P3603, vivify_1276
    new $P3603, "Undef"
  vivify_1276:
    $P3604 = $P3602."new"($P3603, "get_how PP" :named("pirop"))
    find_lex $P3605, "$slot_past"
    unless_null $P3605, vivify_1277
    new $P3605, "Undef"
  vivify_1277:
.annotate 'line', 2372
    find_lex $P3606, "self"
    find_lex $P3607, "$to_add"
    unless_null $P3607, vivify_1278
    new $P3607, "Undef"
  vivify_1278:
    $P3608 = $P3606."get_object_sc_ref_past"($P3607)
    $P3609 = $P3600."new"($P3604, $P3605, $P3608, "callmethod" :named("pasttype"), $P3601 :named("name"))
.annotate 'line', 2368
    $P3610 = $P3599."add_event"($P3609 :named("deserialize_past"))
.annotate 'line', 2362
    .return ($P3610)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("287_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3612
    .param pmc param_3613
.annotate 'line', 2377
    .lex "self", param_3612
    .lex "$obj", param_3613
.annotate 'line', 2382
    new $P3614, "Undef"
    .lex "$slot_past", $P3614
.annotate 'line', 2379
    find_lex $P3615, "$obj"
    unless_null $P3615, vivify_1279
    new $P3615, "Undef"
  vivify_1279:
    get_how $P3616, $P3615
    find_lex $P3617, "$obj"
    unless_null $P3617, vivify_1280
    new $P3617, "Undef"
  vivify_1280:
    $P3616."compose"($P3617)
.annotate 'line', 2382
    find_lex $P3618, "$obj"
    unless_null $P3618, vivify_1281
    new $P3618, "Undef"
  vivify_1281:
    $P3619 = "get_slot_past_for_object"($P3618)
    store_lex "$slot_past", $P3619
.annotate 'line', 2383
    find_lex $P3620, "self"
    get_hll_global $P3621, ["PAST"], "Op"
.annotate 'line', 2385
    get_hll_global $P3622, ["PAST"], "Op"
    find_lex $P3623, "$slot_past"
    unless_null $P3623, vivify_1282
    new $P3623, "Undef"
  vivify_1282:
    $P3624 = $P3622."new"($P3623, "get_how PP" :named("pirop"))
    find_lex $P3625, "$slot_past"
    unless_null $P3625, vivify_1283
    new $P3625, "Undef"
  vivify_1283:
    $P3626 = $P3621."new"($P3624, $P3625, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2383
    $P3627 = $P3620."add_event"($P3626 :named("deserialize_past"))
.annotate 'line', 2377
    .return ($P3627)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("288_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3629
.annotate 'line', 2391
    .lex "self", param_3629
    find_lex $P3630, "self"
    find_lex $P3631, "$?CLASS"
    getattribute $P3632, $P3630, $P3631, "@!sc"
    unless_null $P3632, vivify_1284
    $P3632 = root_new ['parrot';'ResizablePMCArray']
  vivify_1284:
    .return ($P3632)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("289_1303340933.805") :outer("268_1303340933.805")
    .param pmc param_3634
.annotate 'line', 2397
    .const 'Sub' $P3648 = "290_1303340933.805" 
    capture_lex $P3648
    .lex "self", param_3634
.annotate 'line', 2398
    new $P3635, "Undef"
    .lex "$des", $P3635
.annotate 'line', 2399
    new $P3636, "Undef"
    .lex "$fix", $P3636
.annotate 'line', 2398
    get_hll_global $P3637, ["PAST"], "Stmts"
    $P3638 = $P3637."new"()
    store_lex "$des", $P3638
.annotate 'line', 2399
    get_hll_global $P3639, ["PAST"], "Stmts"
    $P3640 = $P3639."new"()
    store_lex "$fix", $P3640
.annotate 'line', 2400
    find_lex $P3642, "self"
    find_lex $P3643, "$?CLASS"
    getattribute $P3644, $P3642, $P3643, "@!event_stream"
    unless_null $P3644, vivify_1285
    $P3644 = root_new ['parrot';'ResizablePMCArray']
  vivify_1285:
    defined $I3645, $P3644
    unless $I3645, for_undef_1286
    iter $P3641, $P3644
    new $P3667, 'ExceptionHandler'
    set_label $P3667, loop3666_handler
    $P3667."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3667
  loop3666_test:
    unless $P3641, loop3666_done
    shift $P3646, $P3641
  loop3666_redo:
    .const 'Sub' $P3648 = "290_1303340933.805" 
    capture_lex $P3648
    $P3648($P3646)
  loop3666_next:
    goto loop3666_test
  loop3666_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3668, exception, 'type'
    eq $P3668, .CONTROL_LOOP_NEXT, loop3666_next
    eq $P3668, .CONTROL_LOOP_REDO, loop3666_redo
  loop3666_done:
    pop_eh 
  for_undef_1286:
.annotate 'line', 2404
    find_dynamic_lex $P3669, "$/"
    get_hll_global $P3670, ["PAST"], "Op"
.annotate 'line', 2406
    get_hll_global $P3671, ["PAST"], "Op"
.annotate 'line', 2408
    get_hll_global $P3672, ["PAST"], "Op"
    find_lex $P3673, "self"
    find_lex $P3674, "$?CLASS"
    getattribute $P3675, $P3673, $P3674, "$!handle"
    unless_null $P3675, vivify_1293
    new $P3675, "Undef"
  vivify_1293:
    $P3676 = $P3672."new"($P3675, "nqp_get_sc Ps" :named("pirop"))
    $P3677 = $P3671."new"($P3676, "isnull IP" :named("pirop"))
.annotate 'line', 2410
    get_hll_global $P3678, ["PAST"], "Stmts"
.annotate 'line', 2411
    get_hll_global $P3679, ["PAST"], "Op"
    $P3680 = $P3679."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2412
    get_hll_global $P3681, ["PAST"], "Op"
.annotate 'line', 2414
    get_hll_global $P3682, ["PAST"], "Op"
    $P3683 = $P3682."new"("getinterp P" :named("pirop"))
.annotate 'line', 2415
    get_hll_global $P3684, ["PAST"], "Op"
    $P3685 = $P3684."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2416
    get_hll_global $P3686, ["PAST"], "Op"
    $P3687 = $P3686."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3688 = $P3681."new"($P3683, $P3685, $P3687, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2418
    get_hll_global $P3689, ["PAST"], "Op"
    $P3690 = $P3689."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2419
    get_hll_global $P3691, ["PAST"], "Op"
.annotate 'line', 2421
    get_hll_global $P3692, ["PAST"], "Var"
    $P3693 = $P3692."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2422
    get_hll_global $P3694, ["PAST"], "Op"
    find_lex $P3695, "self"
    find_lex $P3696, "$?CLASS"
    getattribute $P3697, $P3695, $P3696, "$!handle"
    unless_null $P3697, vivify_1294
    new $P3697, "Undef"
  vivify_1294:
    $P3698 = $P3694."new"($P3697, "nqp_create_sc Ps" :named("pirop"))
    $P3699 = $P3691."new"($P3693, $P3698, "bind" :named("pasttype"))
.annotate 'line', 2419
    find_lex $P3700, "$des"
    unless_null $P3700, vivify_1295
    new $P3700, "Undef"
  vivify_1295:
    $P3701 = $P3678."new"($P3680, $P3688, $P3690, $P3699, $P3700)
.annotate 'line', 2410
    find_lex $P3702, "$fix"
    unless_null $P3702, vivify_1296
    new $P3702, "Undef"
  vivify_1296:
    $P3703 = $P3670."new"($P3677, $P3701, $P3702, "if" :named("pasttype"))
.annotate 'line', 2404
    $P3704 = $P3669."!make"($P3703)
.annotate 'line', 2397
    .return ($P3704)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3647"  :anon :subid("290_1303340933.805") :outer("289_1303340933.805")
    .param pmc param_3649
.annotate 'line', 2400
    .lex "$_", param_3649
.annotate 'line', 2401
    find_lex $P3651, "$_"
    unless_null $P3651, vivify_1287
    new $P3651, "Undef"
  vivify_1287:
    $P3652 = $P3651."deserialize_past"()
    defined $I3653, $P3652
    unless $I3653, if_3650_end
    find_lex $P3654, "$des"
    unless_null $P3654, vivify_1288
    new $P3654, "Undef"
  vivify_1288:
    find_lex $P3655, "$_"
    unless_null $P3655, vivify_1289
    new $P3655, "Undef"
  vivify_1289:
    $P3656 = $P3655."deserialize_past"()
    $P3654."push"($P3656)
  if_3650_end:
.annotate 'line', 2402
    find_lex $P3659, "$_"
    unless_null $P3659, vivify_1290
    new $P3659, "Undef"
  vivify_1290:
    $P3660 = $P3659."fixup_past"()
    defined $I3661, $P3660
    if $I3661, if_3658
    new $P3657, 'Integer'
    set $P3657, $I3661
    goto if_3658_end
  if_3658:
    find_lex $P3662, "$fix"
    unless_null $P3662, vivify_1291
    new $P3662, "Undef"
  vivify_1291:
    find_lex $P3663, "$_"
    unless_null $P3663, vivify_1292
    new $P3663, "Undef"
  vivify_1292:
    $P3664 = $P3663."fixup_past"()
    $P3665 = $P3662."push"($P3664)
    set $P3657, $P3665
  if_3658_end:
.annotate 'line', 2400
    .return ($P3657)
.end


.HLL "nqp"

.namespace []
.sub "_block3762" :load :anon :subid("292_1303340933.805")
.annotate 'line', 1
    .const 'Sub' $P3764 = "10_1303340933.805" 
    $P3765 = $P3764()
    .return ($P3765)
.end

