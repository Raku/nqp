
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1302969596.256")
.annotate 'line', 0
    get_hll_global $P3202, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3201" 
    capture_lex $P3202
    get_hll_global $P3173, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3172" 
    capture_lex $P3173
    get_hll_global $P2714, ["HLL";"CommandLine";"Parser"], "_block2713" 
    capture_lex $P2714
    get_hll_global $P2616, ["HLL";"CommandLine";"Result"], "_block2615" 
    capture_lex $P2616
    get_hll_global $P1387, ["HLL";"Compiler"], "_block1386" 
    capture_lex $P1387
    .const 'Sub' $P1385 = "167_1302969596.256" 
    capture_lex $P1385
    get_hll_global $P669, ["HLL";"Actions"], "_block668" 
    capture_lex $P669
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    capture_lex $P15
.annotate 'line', 1800
    new $P13, "Undef"
    .lex "$compiler", $P13
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    capture_lex $P15
    $P15()
.annotate 'line', 861
    get_hll_global $P669, ["HLL";"Actions"], "_block668" 
    capture_lex $P669
    $P669()
    .const 'Sub' $P1385 = "167_1302969596.256" 
    capture_lex $P1385
    $P1385()
.annotate 'line', 1066
    get_hll_global $P1387, ["HLL";"Compiler"], "_block1386" 
    capture_lex $P1387
    $P1387()
.annotate 'line', 1800
    get_hll_global $P2612, ["HLL"], "Compiler"
    $P2613 = $P2612."new"()
    store_lex "$compiler", $P2613
.annotate 'line', 1801
    find_lex $P2614, "$compiler"
    $P2614."language"("parrot")
.annotate 'line', 1894
    get_hll_global $P2616, ["HLL";"CommandLine";"Result"], "_block2615" 
    capture_lex $P2616
    $P2616()
.annotate 'line', 1927
    get_hll_global $P2714, ["HLL";"CommandLine";"Parser"], "_block2713" 
    capture_lex $P2714
    $P2714()
.annotate 'line', 2105
    get_hll_global $P3173, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3172" 
    capture_lex $P3173
    $P3173()
.annotate 'line', 2115
    get_hll_global $P3202, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3201" 
    capture_lex $P3202
    $P3737 = $P3202()
.annotate 'line', 1
    .return ($P3737)
    .const 'Sub' $P3739 = "292_1302969596.256" 
    .return ($P3739)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post293") :outer("10_1302969596.256")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1302969596.256" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3743, "1302969588.958"
    isnull $I3744, $P3743
    if $I3744, if_3742
    nqp_get_sc_object $P3807, "1302969588.958", 0
    set_hll_global ["HLL"], "Grammar", $P3807
    .const 'Sub' $P3808 = "11_1302969596.256" 
    $P3809 = $P3808."get_lexinfo"()
    nqp_get_sc_object $P3810, "1302969588.958", 0
    $P3809."set_static_lexpad_value"("$?CLASS", $P3810)
    .const 'Sub' $P3811 = "11_1302969596.256" 
    $P3812 = $P3811."get_lexinfo"()
    $P3812."finish_static_lexpad"()
    nqp_get_sc_object $P3813, "1302969588.958", 1
    set_hll_global ["HLL"], "Actions", $P3813
    .const 'Sub' $P3814 = "120_1302969596.256" 
    $P3815 = $P3814."get_lexinfo"()
    nqp_get_sc_object $P3816, "1302969588.958", 1
    $P3815."set_static_lexpad_value"("$?CLASS", $P3816)
    .const 'Sub' $P3817 = "120_1302969596.256" 
    $P3818 = $P3817."get_lexinfo"()
    $P3818."finish_static_lexpad"()
    nqp_get_sc_object $P3819, "1302969588.958", 2
    set_hll_global ["HLL"], "Compiler", $P3819
    .const 'Sub' $P3820 = "168_1302969596.256" 
    $P3821 = $P3820."get_lexinfo"()
    nqp_get_sc_object $P3822, "1302969588.958", 2
    $P3821."set_static_lexpad_value"("$?CLASS", $P3822)
    .const 'Sub' $P3823 = "168_1302969596.256" 
    $P3824 = $P3823."get_lexinfo"()
    $P3824."finish_static_lexpad"()
    nqp_get_sc_object $P3825, "1302969588.958", 3
    set_hll_global ["HLL";"CommandLine"], "Result", $P3825
    .const 'Sub' $P3826 = "236_1302969596.256" 
    $P3827 = $P3826."get_lexinfo"()
    nqp_get_sc_object $P3828, "1302969588.958", 3
    $P3827."set_static_lexpad_value"("$?CLASS", $P3828)
    .const 'Sub' $P3829 = "236_1302969596.256" 
    $P3830 = $P3829."get_lexinfo"()
    $P3830."finish_static_lexpad"()
    nqp_get_sc_object $P3831, "1302969588.958", 4
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3831
    .const 'Sub' $P3832 = "244_1302969596.256" 
    $P3833 = $P3832."get_lexinfo"()
    nqp_get_sc_object $P3834, "1302969588.958", 4
    $P3833."set_static_lexpad_value"("$?CLASS", $P3834)
    .const 'Sub' $P3835 = "244_1302969596.256" 
    $P3836 = $P3835."get_lexinfo"()
    $P3836."finish_static_lexpad"()
    nqp_get_sc_object $P3837, "1302969588.958", 5
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3837
    .const 'Sub' $P3838 = "264_1302969596.256" 
    $P3839 = $P3838."get_lexinfo"()
    nqp_get_sc_object $P3840, "1302969588.958", 5
    $P3839."set_static_lexpad_value"("$?CLASS", $P3840)
    .const 'Sub' $P3841 = "264_1302969596.256" 
    $P3842 = $P3841."get_lexinfo"()
    $P3842."finish_static_lexpad"()
    nqp_get_sc_object $P3843, "1302969588.958", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3843
    .const 'Sub' $P3844 = "268_1302969596.256" 
    $P3845 = $P3844."get_lexinfo"()
    nqp_get_sc_object $P3846, "1302969588.958", 6
    $P3845."set_static_lexpad_value"("$?CLASS", $P3846)
    .const 'Sub' $P3847 = "268_1302969596.256" 
    $P3848 = $P3847."get_lexinfo"()
    $P3848."finish_static_lexpad"()
    goto if_3742_end
  if_3742:
    nqp_dynop_setup 
    getinterp $P3745
    get_class $P3746, "LexPad"
    get_class $P3747, "NQPLexPad"
    $P3745."hll_map"($P3746, $P3747)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P3748, "1302969588.958"
    .local pmc cur_sc
    set cur_sc, $P3748
    load_bytecode "SettingManager.pbc"
    get_hll_global $P3749, ["HLL"], "SettingManager"
    $P3750 = $P3749."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3750)
    load_bytecode "Regex.pbc"
    get_hll_global $P3751, "NQPClassHOW"
    $P3752 = $P3751."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3752, cur_sc
    nqp_set_sc_object "1302969588.958", 0, $P3752
    nqp_get_sc_object $P3753, "1302969588.958", 0
    set_hll_global ["HLL"], "Grammar", $P3753
    .const 'Sub' $P3754 = "11_1302969596.256" 
    $P3755 = $P3754."get_lexinfo"()
    nqp_get_sc_object $P3756, "1302969588.958", 0
    $P3755."set_static_lexpad_value"("$?CLASS", $P3756)
    .const 'Sub' $P3757 = "11_1302969596.256" 
    $P3758 = $P3757."get_lexinfo"()
    $P3758."finish_static_lexpad"()
    get_hll_global $P3759, "NQPClassHOW"
    $P3760 = $P3759."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3760, cur_sc
    nqp_set_sc_object "1302969588.958", 1, $P3760
    nqp_get_sc_object $P3761, "1302969588.958", 1
    set_hll_global ["HLL"], "Actions", $P3761
    .const 'Sub' $P3762 = "120_1302969596.256" 
    $P3763 = $P3762."get_lexinfo"()
    nqp_get_sc_object $P3764, "1302969588.958", 1
    $P3763."set_static_lexpad_value"("$?CLASS", $P3764)
    .const 'Sub' $P3765 = "120_1302969596.256" 
    $P3766 = $P3765."get_lexinfo"()
    $P3766."finish_static_lexpad"()
    get_hll_global $P3767, "NQPClassHOW"
    $P3768 = $P3767."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3768, cur_sc
    nqp_set_sc_object "1302969588.958", 2, $P3768
    nqp_get_sc_object $P3769, "1302969588.958", 2
    set_hll_global ["HLL"], "Compiler", $P3769
    .const 'Sub' $P3770 = "168_1302969596.256" 
    $P3771 = $P3770."get_lexinfo"()
    nqp_get_sc_object $P3772, "1302969588.958", 2
    $P3771."set_static_lexpad_value"("$?CLASS", $P3772)
    .const 'Sub' $P3773 = "168_1302969596.256" 
    $P3774 = $P3773."get_lexinfo"()
    $P3774."finish_static_lexpad"()
    get_hll_global $P3775, "NQPClassHOW"
    $P3776 = $P3775."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3776, cur_sc
    nqp_set_sc_object "1302969588.958", 3, $P3776
    nqp_get_sc_object $P3777, "1302969588.958", 3
    set_hll_global ["HLL";"CommandLine"], "Result", $P3777
    .const 'Sub' $P3778 = "236_1302969596.256" 
    $P3779 = $P3778."get_lexinfo"()
    nqp_get_sc_object $P3780, "1302969588.958", 3
    $P3779."set_static_lexpad_value"("$?CLASS", $P3780)
    .const 'Sub' $P3781 = "236_1302969596.256" 
    $P3782 = $P3781."get_lexinfo"()
    $P3782."finish_static_lexpad"()
    get_hll_global $P3783, "NQPClassHOW"
    $P3784 = $P3783."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P3784, cur_sc
    nqp_set_sc_object "1302969588.958", 4, $P3784
    nqp_get_sc_object $P3785, "1302969588.958", 4
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3785
    .const 'Sub' $P3786 = "244_1302969596.256" 
    $P3787 = $P3786."get_lexinfo"()
    nqp_get_sc_object $P3788, "1302969588.958", 4
    $P3787."set_static_lexpad_value"("$?CLASS", $P3788)
    .const 'Sub' $P3789 = "244_1302969596.256" 
    $P3790 = $P3789."get_lexinfo"()
    $P3790."finish_static_lexpad"()
    get_hll_global $P3791, "NQPClassHOW"
    $P3792 = $P3791."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P3792, cur_sc
    nqp_set_sc_object "1302969588.958", 5, $P3792
    nqp_get_sc_object $P3793, "1302969588.958", 5
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3793
    .const 'Sub' $P3794 = "264_1302969596.256" 
    $P3795 = $P3794."get_lexinfo"()
    nqp_get_sc_object $P3796, "1302969588.958", 5
    $P3795."set_static_lexpad_value"("$?CLASS", $P3796)
    .const 'Sub' $P3797 = "264_1302969596.256" 
    $P3798 = $P3797."get_lexinfo"()
    $P3798."finish_static_lexpad"()
    get_hll_global $P3799, "NQPClassHOW"
    $P3800 = $P3799."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P3800, cur_sc
    nqp_set_sc_object "1302969588.958", 6, $P3800
    nqp_get_sc_object $P3801, "1302969588.958", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3801
    .const 'Sub' $P3802 = "268_1302969596.256" 
    $P3803 = $P3802."get_lexinfo"()
    nqp_get_sc_object $P3804, "1302969588.958", 6
    $P3803."set_static_lexpad_value"("$?CLASS", $P3804)
    .const 'Sub' $P3805 = "268_1302969596.256" 
    $P3806 = $P3805."get_lexinfo"()
    $P3806."finish_static_lexpad"()
  if_3742_end:
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block14"  :subid("11_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 9
    .const 'Sub' $P456 = "119_1302969596.256" 
    capture_lex $P456
    .const 'Sub' $P435 = "118_1302969596.256" 
    capture_lex $P435
    .const 'Sub' $P430 = "117_1302969596.256" 
    capture_lex $P430
    .const 'Sub' $P415 = "116_1302969596.256" 
    capture_lex $P415
    .const 'Sub' $P405 = "115_1302969596.256" 
    capture_lex $P405
    .const 'Sub' $P401 = "114_1302969596.256" 
    capture_lex $P401
    .const 'Sub' $P397 = "113_1302969596.256" 
    capture_lex $P397
    .const 'Sub' $P394 = "112_1302969596.256" 
    capture_lex $P394
    .const 'Sub' $P392 = "111_1302969596.256" 
    capture_lex $P392
    .const 'Sub' $P390 = "110_1302969596.256" 
    capture_lex $P390
    .const 'Sub' $P384 = "109_1302969596.256" 
    capture_lex $P384
    .const 'Sub' $P381 = "108_1302969596.256" 
    capture_lex $P381
    .const 'Sub' $P377 = "107_1302969596.256" 
    capture_lex $P377
    .const 'Sub' $P349 = "106_1302969596.256" 
    capture_lex $P349
    .const 'Sub' $P344 = "105_1302969596.256" 
    capture_lex $P344
    .const 'Sub' $P335 = "103_1302969596.256" 
    capture_lex $P335
    .const 'Sub' $P329 = "101_1302969596.256" 
    capture_lex $P329
    .const 'Sub' $P316 = "98_1302969596.256" 
    capture_lex $P316
    .const 'Sub' $P284 = "93_1302969596.256" 
    capture_lex $P284
    .const 'Sub' $P278 = "91_1302969596.256" 
    capture_lex $P278
    .const 'Sub' $P273 = "89_1302969596.256" 
    capture_lex $P273
    .const 'Sub' $P267 = "87_1302969596.256" 
    capture_lex $P267
    .const 'Sub' $P261 = "85_1302969596.256" 
    capture_lex $P261
    .const 'Sub' $P256 = "83_1302969596.256" 
    capture_lex $P256
    .const 'Sub' $P251 = "81_1302969596.256" 
    capture_lex $P251
    .const 'Sub' $P246 = "79_1302969596.256" 
    capture_lex $P246
    .const 'Sub' $P241 = "77_1302969596.256" 
    capture_lex $P241
    .const 'Sub' $P236 = "75_1302969596.256" 
    capture_lex $P236
    .const 'Sub' $P231 = "73_1302969596.256" 
    capture_lex $P231
    .const 'Sub' $P226 = "71_1302969596.256" 
    capture_lex $P226
    .const 'Sub' $P221 = "69_1302969596.256" 
    capture_lex $P221
    .const 'Sub' $P209 = "65_1302969596.256" 
    capture_lex $P209
    .const 'Sub' $P196 = "63_1302969596.256" 
    capture_lex $P196
    .const 'Sub' $P184 = "61_1302969596.256" 
    capture_lex $P184
    .const 'Sub' $P178 = "59_1302969596.256" 
    capture_lex $P178
    .const 'Sub' $P171 = "57_1302969596.256" 
    capture_lex $P171
    .const 'Sub' $P165 = "55_1302969596.256" 
    capture_lex $P165
    .const 'Sub' $P158 = "53_1302969596.256" 
    capture_lex $P158
    .const 'Sub' $P152 = "51_1302969596.256" 
    capture_lex $P152
    .const 'Sub' $P145 = "49_1302969596.256" 
    capture_lex $P145
    .const 'Sub' $P139 = "47_1302969596.256" 
    capture_lex $P139
    .const 'Sub' $P133 = "45_1302969596.256" 
    capture_lex $P133
    .const 'Sub' $P124 = "43_1302969596.256" 
    capture_lex $P124
    .const 'Sub' $P116 = "41_1302969596.256" 
    capture_lex $P116
    .const 'Sub' $P108 = "40_1302969596.256" 
    capture_lex $P108
    .const 'Sub' $P102 = "38_1302969596.256" 
    capture_lex $P102
    .const 'Sub' $P97 = "36_1302969596.256" 
    capture_lex $P97
    .const 'Sub' $P89 = "34_1302969596.256" 
    capture_lex $P89
    .const 'Sub' $P83 = "32_1302969596.256" 
    capture_lex $P83
    .const 'Sub' $P77 = "30_1302969596.256" 
    capture_lex $P77
    .const 'Sub' $P71 = "28_1302969596.256" 
    capture_lex $P71
    .const 'Sub' $P26 = "14_1302969596.256" 
    capture_lex $P26
    .const 'Sub' $P19 = "12_1302969596.256" 
    capture_lex $P19
.annotate 'line', 10
    new $P16, "Undef"
    .lex "$brackets", $P16
    .lex "$?CLASS", $P17
    new $P18, "String"
    assign $P18, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P18
.annotate 'line', 845
    .const 'Sub' $P435 = "118_1302969596.256" 
    newclosure $P454, $P435
.annotate 'line', 9
    .return ($P454)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post294") :outer("11_1302969596.256")
.annotate 'line', 9
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P456 = "119_1302969596.256" 
    capture_lex $P456
    $P456()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block455"  :anon :subid("119_1302969596.256") :outer("11_1302969596.256")
.annotate 'line', 9
    nqp_get_sc_object $P457, "1302969588.958", 0
    .local pmc type_obj
    set type_obj, $P457
    get_how $P458, type_obj
    .const 'Sub' $P459 = "12_1302969596.256" 
    $P458."add_method"(type_obj, "ws", $P459)
    get_how $P460, type_obj
    get_global $P461, "!PREFIX__ws"
    $P460."add_method"(type_obj, "!PREFIX__ws", $P461)
    get_how $P462, type_obj
    .const 'Sub' $P463 = "14_1302969596.256" 
    $P462."add_method"(type_obj, "termish", $P463)
    get_how $P464, type_obj
    get_global $P465, "!PREFIX__termish"
    $P464."add_method"(type_obj, "!PREFIX__termish", $P465)
    get_how $P466, type_obj
    .const 'Sub' $P467 = "16_1302969596.256" 
    $P466."add_method"(type_obj, "term", $P467)
    get_how $P468, type_obj
    .const 'Sub' $P469 = "17_1302969596.256" 
    $P468."add_method"(type_obj, "!PREFIX__term", $P469)
    get_how $P470, type_obj
    .const 'Sub' $P471 = "18_1302969596.256" 
    $P470."add_method"(type_obj, "infix", $P471)
    get_how $P472, type_obj
    .const 'Sub' $P473 = "19_1302969596.256" 
    $P472."add_method"(type_obj, "!PREFIX__infix", $P473)
    get_how $P474, type_obj
    .const 'Sub' $P475 = "20_1302969596.256" 
    $P474."add_method"(type_obj, "prefix", $P475)
    get_how $P476, type_obj
    .const 'Sub' $P477 = "21_1302969596.256" 
    $P476."add_method"(type_obj, "!PREFIX__prefix", $P477)
    get_how $P478, type_obj
    .const 'Sub' $P479 = "22_1302969596.256" 
    $P478."add_method"(type_obj, "postfix", $P479)
    get_how $P480, type_obj
    .const 'Sub' $P481 = "23_1302969596.256" 
    $P480."add_method"(type_obj, "!PREFIX__postfix", $P481)
    get_how $P482, type_obj
    .const 'Sub' $P483 = "24_1302969596.256" 
    $P482."add_method"(type_obj, "circumfix", $P483)
    get_how $P484, type_obj
    .const 'Sub' $P485 = "25_1302969596.256" 
    $P484."add_method"(type_obj, "!PREFIX__circumfix", $P485)
    get_how $P486, type_obj
    .const 'Sub' $P487 = "26_1302969596.256" 
    $P486."add_method"(type_obj, "postcircumfix", $P487)
    get_how $P488, type_obj
    .const 'Sub' $P489 = "27_1302969596.256" 
    $P488."add_method"(type_obj, "!PREFIX__postcircumfix", $P489)
    get_how $P490, type_obj
    .const 'Sub' $P491 = "28_1302969596.256" 
    $P490."add_method"(type_obj, "term:sym<circumfix>", $P491)
    get_how $P492, type_obj
    get_global $P493, "!PREFIX__term:sym<circumfix>"
    $P492."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P493)
    get_how $P494, type_obj
    .const 'Sub' $P495 = "30_1302969596.256" 
    $P494."add_method"(type_obj, "infixish", $P495)
    get_how $P496, type_obj
    get_global $P497, "!PREFIX__infixish"
    $P496."add_method"(type_obj, "!PREFIX__infixish", $P497)
    get_how $P498, type_obj
    .const 'Sub' $P499 = "32_1302969596.256" 
    $P498."add_method"(type_obj, "prefixish", $P499)
    get_how $P500, type_obj
    get_global $P501, "!PREFIX__prefixish"
    $P500."add_method"(type_obj, "!PREFIX__prefixish", $P501)
    get_how $P502, type_obj
    .const 'Sub' $P503 = "34_1302969596.256" 
    $P502."add_method"(type_obj, "postfixish", $P503)
    get_how $P504, type_obj
    get_global $P505, "!PREFIX__postfixish"
    $P504."add_method"(type_obj, "!PREFIX__postfixish", $P505)
    get_how $P506, type_obj
    .const 'Sub' $P507 = "36_1302969596.256" 
    $P506."add_method"(type_obj, "nullterm", $P507)
    get_how $P508, type_obj
    get_global $P509, "!PREFIX__nullterm"
    $P508."add_method"(type_obj, "!PREFIX__nullterm", $P509)
    get_how $P510, type_obj
    .const 'Sub' $P511 = "38_1302969596.256" 
    $P510."add_method"(type_obj, "nullterm_alt", $P511)
    get_how $P512, type_obj
    get_global $P513, "!PREFIX__nullterm_alt"
    $P512."add_method"(type_obj, "!PREFIX__nullterm_alt", $P513)
    get_how $P514, type_obj
    .const 'Sub' $P515 = "40_1302969596.256" 
    $P514."add_method"(type_obj, "nulltermish", $P515)
    get_how $P516, type_obj
    .const 'Sub' $P517 = "41_1302969596.256" 
    $P516."add_method"(type_obj, "quote_delimited", $P517)
    get_how $P518, type_obj
    get_global $P519, "!PREFIX__quote_delimited"
    $P518."add_method"(type_obj, "!PREFIX__quote_delimited", $P519)
    get_how $P520, type_obj
    .const 'Sub' $P521 = "43_1302969596.256" 
    $P520."add_method"(type_obj, "quote_atom", $P521)
    get_how $P522, type_obj
    get_global $P523, "!PREFIX__quote_atom"
    $P522."add_method"(type_obj, "!PREFIX__quote_atom", $P523)
    get_how $P524, type_obj
    .const 'Sub' $P525 = "45_1302969596.256" 
    $P524."add_method"(type_obj, "decint", $P525)
    get_how $P526, type_obj
    get_global $P527, "!PREFIX__decint"
    $P526."add_method"(type_obj, "!PREFIX__decint", $P527)
    get_how $P528, type_obj
    .const 'Sub' $P529 = "47_1302969596.256" 
    $P528."add_method"(type_obj, "decints", $P529)
    get_how $P530, type_obj
    get_global $P531, "!PREFIX__decints"
    $P530."add_method"(type_obj, "!PREFIX__decints", $P531)
    get_how $P532, type_obj
    .const 'Sub' $P533 = "49_1302969596.256" 
    $P532."add_method"(type_obj, "hexint", $P533)
    get_how $P534, type_obj
    get_global $P535, "!PREFIX__hexint"
    $P534."add_method"(type_obj, "!PREFIX__hexint", $P535)
    get_how $P536, type_obj
    .const 'Sub' $P537 = "51_1302969596.256" 
    $P536."add_method"(type_obj, "hexints", $P537)
    get_how $P538, type_obj
    get_global $P539, "!PREFIX__hexints"
    $P538."add_method"(type_obj, "!PREFIX__hexints", $P539)
    get_how $P540, type_obj
    .const 'Sub' $P541 = "53_1302969596.256" 
    $P540."add_method"(type_obj, "octint", $P541)
    get_how $P542, type_obj
    get_global $P543, "!PREFIX__octint"
    $P542."add_method"(type_obj, "!PREFIX__octint", $P543)
    get_how $P544, type_obj
    .const 'Sub' $P545 = "55_1302969596.256" 
    $P544."add_method"(type_obj, "octints", $P545)
    get_how $P546, type_obj
    get_global $P547, "!PREFIX__octints"
    $P546."add_method"(type_obj, "!PREFIX__octints", $P547)
    get_how $P548, type_obj
    .const 'Sub' $P549 = "57_1302969596.256" 
    $P548."add_method"(type_obj, "binint", $P549)
    get_how $P550, type_obj
    get_global $P551, "!PREFIX__binint"
    $P550."add_method"(type_obj, "!PREFIX__binint", $P551)
    get_how $P552, type_obj
    .const 'Sub' $P553 = "59_1302969596.256" 
    $P552."add_method"(type_obj, "binints", $P553)
    get_how $P554, type_obj
    get_global $P555, "!PREFIX__binints"
    $P554."add_method"(type_obj, "!PREFIX__binints", $P555)
    get_how $P556, type_obj
    .const 'Sub' $P557 = "61_1302969596.256" 
    $P556."add_method"(type_obj, "integer", $P557)
    get_how $P558, type_obj
    get_global $P559, "!PREFIX__integer"
    $P558."add_method"(type_obj, "!PREFIX__integer", $P559)
    get_how $P560, type_obj
    .const 'Sub' $P561 = "63_1302969596.256" 
    $P560."add_method"(type_obj, "dec_number", $P561)
    get_how $P562, type_obj
    get_global $P563, "!PREFIX__dec_number"
    $P562."add_method"(type_obj, "!PREFIX__dec_number", $P563)
    get_how $P564, type_obj
    .const 'Sub' $P565 = "65_1302969596.256" 
    $P564."add_method"(type_obj, "escale", $P565)
    get_how $P566, type_obj
    get_global $P567, "!PREFIX__escale"
    $P566."add_method"(type_obj, "!PREFIX__escale", $P567)
    get_how $P568, type_obj
    .const 'Sub' $P569 = "67_1302969596.256" 
    $P568."add_method"(type_obj, "quote_escape", $P569)
    get_how $P570, type_obj
    .const 'Sub' $P571 = "68_1302969596.256" 
    $P570."add_method"(type_obj, "!PREFIX__quote_escape", $P571)
    get_how $P572, type_obj
    .const 'Sub' $P573 = "69_1302969596.256" 
    $P572."add_method"(type_obj, "quote_escape:sym<backslash>", $P573)
    get_how $P574, type_obj
    get_global $P575, "!PREFIX__quote_escape:sym<backslash>"
    $P574."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P575)
    get_how $P576, type_obj
    .const 'Sub' $P577 = "71_1302969596.256" 
    $P576."add_method"(type_obj, "quote_escape:sym<stopper>", $P577)
    get_how $P578, type_obj
    get_global $P579, "!PREFIX__quote_escape:sym<stopper>"
    $P578."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P579)
    get_how $P580, type_obj
    .const 'Sub' $P581 = "73_1302969596.256" 
    $P580."add_method"(type_obj, "quote_escape:sym<bs>", $P581)
    get_how $P582, type_obj
    get_global $P583, "!PREFIX__quote_escape:sym<bs>"
    $P582."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P583)
    get_how $P584, type_obj
    .const 'Sub' $P585 = "75_1302969596.256" 
    $P584."add_method"(type_obj, "quote_escape:sym<nl>", $P585)
    get_how $P586, type_obj
    get_global $P587, "!PREFIX__quote_escape:sym<nl>"
    $P586."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P587)
    get_how $P588, type_obj
    .const 'Sub' $P589 = "77_1302969596.256" 
    $P588."add_method"(type_obj, "quote_escape:sym<cr>", $P589)
    get_how $P590, type_obj
    get_global $P591, "!PREFIX__quote_escape:sym<cr>"
    $P590."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P591)
    get_how $P592, type_obj
    .const 'Sub' $P593 = "79_1302969596.256" 
    $P592."add_method"(type_obj, "quote_escape:sym<tab>", $P593)
    get_how $P594, type_obj
    get_global $P595, "!PREFIX__quote_escape:sym<tab>"
    $P594."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P595)
    get_how $P596, type_obj
    .const 'Sub' $P597 = "81_1302969596.256" 
    $P596."add_method"(type_obj, "quote_escape:sym<ff>", $P597)
    get_how $P598, type_obj
    get_global $P599, "!PREFIX__quote_escape:sym<ff>"
    $P598."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P599)
    get_how $P600, type_obj
    .const 'Sub' $P601 = "83_1302969596.256" 
    $P600."add_method"(type_obj, "quote_escape:sym<esc>", $P601)
    get_how $P602, type_obj
    get_global $P603, "!PREFIX__quote_escape:sym<esc>"
    $P602."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P603)
    get_how $P604, type_obj
    .const 'Sub' $P605 = "85_1302969596.256" 
    $P604."add_method"(type_obj, "quote_escape:sym<hex>", $P605)
    get_how $P606, type_obj
    get_global $P607, "!PREFIX__quote_escape:sym<hex>"
    $P606."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P607)
    get_how $P608, type_obj
    .const 'Sub' $P609 = "87_1302969596.256" 
    $P608."add_method"(type_obj, "quote_escape:sym<oct>", $P609)
    get_how $P610, type_obj
    get_global $P611, "!PREFIX__quote_escape:sym<oct>"
    $P610."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P611)
    get_how $P612, type_obj
    .const 'Sub' $P613 = "89_1302969596.256" 
    $P612."add_method"(type_obj, "quote_escape:sym<chr>", $P613)
    get_how $P614, type_obj
    get_global $P615, "!PREFIX__quote_escape:sym<chr>"
    $P614."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P615)
    get_how $P616, type_obj
    .const 'Sub' $P617 = "91_1302969596.256" 
    $P616."add_method"(type_obj, "quote_escape:sym<0>", $P617)
    get_how $P618, type_obj
    get_global $P619, "!PREFIX__quote_escape:sym<0>"
    $P618."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P619)
    get_how $P620, type_obj
    .const 'Sub' $P621 = "93_1302969596.256" 
    $P620."add_method"(type_obj, "quote_escape:sym<misc>", $P621)
    get_how $P622, type_obj
    get_global $P623, "!PREFIX__quote_escape:sym<misc>"
    $P622."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P623)
    get_how $P624, type_obj
    .const 'Sub' $P625 = "98_1302969596.256" 
    $P624."add_method"(type_obj, "charname", $P625)
    get_how $P626, type_obj
    get_global $P627, "!PREFIX__charname"
    $P626."add_method"(type_obj, "!PREFIX__charname", $P627)
    get_how $P628, type_obj
    .const 'Sub' $P629 = "101_1302969596.256" 
    $P628."add_method"(type_obj, "charnames", $P629)
    get_how $P630, type_obj
    get_global $P631, "!PREFIX__charnames"
    $P630."add_method"(type_obj, "!PREFIX__charnames", $P631)
    get_how $P632, type_obj
    .const 'Sub' $P633 = "103_1302969596.256" 
    $P632."add_method"(type_obj, "charspec", $P633)
    get_how $P634, type_obj
    get_global $P635, "!PREFIX__charspec"
    $P634."add_method"(type_obj, "!PREFIX__charspec", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "105_1302969596.256" 
    $P636."add_method"(type_obj, "O", $P637)
    get_how $P638, type_obj
    .const 'Sub' $P639 = "106_1302969596.256" 
    $P638."add_method"(type_obj, "panic", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "107_1302969596.256" 
    $P640."add_method"(type_obj, "peek_delimiters", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "108_1302969596.256" 
    $P642."add_method"(type_obj, "quote_EXPR", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "109_1302969596.256" 
    $P644."add_method"(type_obj, "quotemod_check", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "110_1302969596.256" 
    $P646."add_method"(type_obj, "starter", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "111_1302969596.256" 
    $P648."add_method"(type_obj, "stopper", $P649)
    get_how $P650, type_obj
    .const 'Sub' $P651 = "112_1302969596.256" 
    $P650."add_method"(type_obj, "split_words", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "113_1302969596.256" 
    $P652."add_method"(type_obj, "EXPR", $P653)
    get_how $P654, type_obj
    .const 'Sub' $P655 = "114_1302969596.256" 
    $P654."add_method"(type_obj, "EXPR_reduce", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "115_1302969596.256" 
    $P656."add_method"(type_obj, "ternary", $P657)
    get_how $P658, type_obj
    .const 'Sub' $P659 = "116_1302969596.256" 
    $P658."add_method"(type_obj, "MARKER", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "117_1302969596.256" 
    $P660."add_method"(type_obj, "MARKED", $P661)
    get_how $P662, type_obj
    .const 'Sub' $P663 = "118_1302969596.256" 
    $P662."add_method"(type_obj, "LANG", $P663)
    get_how $P664, type_obj
    get_hll_global $P665, ["Regex"], "Cursor"
    $P664."add_parent"(type_obj, $P665)
    get_how $P666, type_obj
    $P667 = $P666."compose"(type_obj)
    .return ($P667)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx20_tgt
    .local int rx20_pos
    .local int rx20_off
    .local int rx20_eos
    .local int rx20_rep
    .local pmc rx20_cur
    .local pmc rx20_debug
    (rx20_cur, rx20_pos, rx20_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx20_cur
    .local pmc match
    .lex "$/", match
    length rx20_eos, rx20_tgt
    gt rx20_pos, rx20_eos, rx20_done
    set rx20_off, 0
    lt rx20_pos, 2, rx20_start
    sub rx20_off, rx20_pos, 1
    substr rx20_tgt, rx20_tgt, rx20_off
  rx20_start:
    eq $I10, 1, rx20_restart
    if_null rx20_debug, debug_295
    rx20_cur."!cursor_debug"("START", "ws")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan23_done
    goto rxscan23_scan
  rxscan23_loop:
    (rx20_pos) = rx20_cur."from"()
    inc rx20_pos
    rx20_cur."!cursor_from"(rx20_pos)
    ge rx20_pos, rx20_eos, rxscan23_done
  rxscan23_scan:
    set_addr $I10, rxscan23_loop
    rx20_cur."!mark_push"(0, rx20_pos, $I10)
  rxscan23_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx20_cur."!cursor_pos"(rx20_pos)
    $P10 = rx20_cur."ww"()
    if $P10, rx20_fail
  # rx rxquantr24 ** 0..*
    set_addr $I10, rxquantr24_done
    rx20_cur."!mark_push"(0, rx20_pos, $I10)
  rxquantr24_loop:
  alt25_0:
    set_addr $I10, alt25_1
    rx20_cur."!mark_push"(0, rx20_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx20_pos, rx20_off
    find_not_cclass $I11, 32, rx20_tgt, $I10, rx20_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx20_fail
    add rx20_pos, rx20_off, $I11
    goto alt25_end
  alt25_1:
  # rx literal  "#"
    add $I11, rx20_pos, 1
    gt $I11, rx20_eos, rx20_fail
    sub $I11, rx20_pos, rx20_off
    ord $I11, rx20_tgt, $I11
    ne $I11, 35, rx20_fail
    add rx20_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx20_pos, rx20_off
    find_cclass $I11, 4096, rx20_tgt, $I10, rx20_eos
    add rx20_pos, rx20_off, $I11
  alt25_end:
    set_addr $I10, rxquantr24_done
    (rx20_rep) = rx20_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr24_done
    rx20_cur."!mark_push"(rx20_rep, rx20_pos, $I10)
    goto rxquantr24_loop
  rxquantr24_done:
  # rx pass
    rx20_cur."!cursor_pass"(rx20_pos, "ws")
    if_null rx20_debug, debug_296
    rx20_cur."!cursor_debug"("PASS", "ws", " at pos=", rx20_pos)
  debug_296:
    .return (rx20_cur)
  rx20_restart:
.annotate 'line', 10
    if_null rx20_debug, debug_297
    rx20_cur."!cursor_debug"("NEXT", "ws")
  debug_297:
  rx20_fail:
    (rx20_rep, rx20_pos, $I10, $P10) = rx20_cur."!mark_fail"(0)
    lt rx20_pos, -1, rx20_done
    eq rx20_pos, -1, rx20_fail
    jump $I10
  rx20_done:
    rx20_cur."!cursor_fail"()
    if_null rx20_debug, debug_298
    rx20_cur."!cursor_debug"("FAIL", "ws")
  debug_298:
    .return (rx20_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1302969596.256") :method
.annotate 'line', 10
    new $P22, "ResizablePMCArray"
    push $P22, ""
    .return ($P22)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx27_tgt
    .local int rx27_pos
    .local int rx27_off
    .local int rx27_eos
    .local int rx27_rep
    .local pmc rx27_cur
    .local pmc rx27_debug
    (rx27_cur, rx27_pos, rx27_tgt, $I10) = self."!cursor_start"()
    rx27_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx27_cur
    .local pmc match
    .lex "$/", match
    length rx27_eos, rx27_tgt
    gt rx27_pos, rx27_eos, rx27_done
    set rx27_off, 0
    lt rx27_pos, 2, rx27_start
    sub rx27_off, rx27_pos, 1
    substr rx27_tgt, rx27_tgt, rx27_off
  rx27_start:
    eq $I10, 1, rx27_restart
    if_null rx27_debug, debug_299
    rx27_cur."!cursor_debug"("START", "termish")
  debug_299:
    $I10 = self.'from'()
    ne $I10, -1, rxscan30_done
    goto rxscan30_scan
  rxscan30_loop:
    (rx27_pos) = rx27_cur."from"()
    inc rx27_pos
    rx27_cur."!cursor_from"(rx27_pos)
    ge rx27_pos, rx27_eos, rxscan30_done
  rxscan30_scan:
    set_addr $I10, rxscan30_loop
    rx27_cur."!mark_push"(0, rx27_pos, $I10)
  rxscan30_done:
.annotate 'line', 15
  # rx rxquantr31 ** 0..*
    set_addr $I10, rxquantr31_done
    rx27_cur."!mark_push"(0, rx27_pos, $I10)
  rxquantr31_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx27_cur."!cursor_pos"(rx27_pos)
    $P10 = rx27_cur."prefixish"()
    unless $P10, rx27_fail
    goto rxsubrule32_pass
  rxsubrule32_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx27_fail
  rxsubrule32_pass:
    set_addr $I10, rxsubrule32_back
    rx27_cur."!mark_push"(0, rx27_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx27_pos = $P10."pos"()
    set_addr $I10, rxquantr31_done
    (rx27_rep) = rx27_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr31_done
    rx27_cur."!mark_push"(rx27_rep, rx27_pos, $I10)
    goto rxquantr31_loop
  rxquantr31_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx27_cur."!cursor_pos"(rx27_pos)
    $P10 = rx27_cur."term"()
    unless $P10, rx27_fail
    rx27_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx27_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr33 ** 0..*
    set_addr $I10, rxquantr33_done
    rx27_cur."!mark_push"(0, rx27_pos, $I10)
  rxquantr33_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx27_cur."!cursor_pos"(rx27_pos)
    $P10 = rx27_cur."postfixish"()
    unless $P10, rx27_fail
    goto rxsubrule34_pass
  rxsubrule34_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx27_fail
  rxsubrule34_pass:
    set_addr $I10, rxsubrule34_back
    rx27_cur."!mark_push"(0, rx27_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx27_pos = $P10."pos"()
    set_addr $I10, rxquantr33_done
    (rx27_rep) = rx27_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr33_done
    rx27_cur."!mark_push"(rx27_rep, rx27_pos, $I10)
    goto rxquantr33_loop
  rxquantr33_done:
.annotate 'line', 14
  # rx pass
    rx27_cur."!cursor_pass"(rx27_pos, "termish")
    if_null rx27_debug, debug_300
    rx27_cur."!cursor_debug"("PASS", "termish", " at pos=", rx27_pos)
  debug_300:
    .return (rx27_cur)
  rx27_restart:
.annotate 'line', 10
    if_null rx27_debug, debug_301
    rx27_cur."!cursor_debug"("NEXT", "termish")
  debug_301:
  rx27_fail:
    (rx27_rep, rx27_pos, $I10, $P10) = rx27_cur."!mark_fail"(0)
    lt rx27_pos, -1, rx27_done
    eq rx27_pos, -1, rx27_fail
    jump $I10
  rx27_done:
    rx27_cur."!cursor_fail"()
    if_null rx27_debug, debug_302
    rx27_cur."!cursor_debug"("FAIL", "termish")
  debug_302:
    .return (rx27_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1302969596.256") :method
.annotate 'line', 10
    new $P29, "ResizablePMCArray"
    push $P29, ""
    .return ($P29)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1302969596.256")
    .param pmc param_36
.annotate 'line', 20
    .lex "self", param_36
    $P37 = param_36."!protoregex"("term")
    .return ($P37)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1302969596.256")
    .param pmc param_39
.annotate 'line', 20
    .lex "self", param_39
    $P40 = param_39."!PREFIX__!protoregex"("term")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1302969596.256")
    .param pmc param_42
.annotate 'line', 21
    .lex "self", param_42
    $P43 = param_42."!protoregex"("infix")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1302969596.256")
    .param pmc param_45
.annotate 'line', 21
    .lex "self", param_45
    $P46 = param_45."!PREFIX__!protoregex"("infix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1302969596.256")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!protoregex"("prefix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1302969596.256")
    .param pmc param_51
.annotate 'line', 22
    .lex "self", param_51
    $P52 = param_51."!PREFIX__!protoregex"("prefix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1302969596.256")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!protoregex"("postfix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1302969596.256")
    .param pmc param_57
.annotate 'line', 23
    .lex "self", param_57
    $P58 = param_57."!PREFIX__!protoregex"("postfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1302969596.256")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!protoregex"("circumfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1302969596.256")
    .param pmc param_63
.annotate 'line', 24
    .lex "self", param_63
    $P64 = param_63."!PREFIX__!protoregex"("circumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1302969596.256")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!protoregex"("postcircumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1302969596.256")
    .param pmc param_69
.annotate 'line', 25
    .lex "self", param_69
    $P70 = param_69."!PREFIX__!protoregex"("postcircumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx72_tgt
    .local int rx72_pos
    .local int rx72_off
    .local int rx72_eos
    .local int rx72_rep
    .local pmc rx72_cur
    .local pmc rx72_debug
    (rx72_cur, rx72_pos, rx72_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx72_cur
    .local pmc match
    .lex "$/", match
    length rx72_eos, rx72_tgt
    gt rx72_pos, rx72_eos, rx72_done
    set rx72_off, 0
    lt rx72_pos, 2, rx72_start
    sub rx72_off, rx72_pos, 1
    substr rx72_tgt, rx72_tgt, rx72_off
  rx72_start:
    eq $I10, 1, rx72_restart
    if_null rx72_debug, debug_303
    rx72_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan76_done
    goto rxscan76_scan
  rxscan76_loop:
    (rx72_pos) = rx72_cur."from"()
    inc rx72_pos
    rx72_cur."!cursor_from"(rx72_pos)
    ge rx72_pos, rx72_eos, rxscan76_done
  rxscan76_scan:
    set_addr $I10, rxscan76_loop
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  rxscan76_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."circumfix"()
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx72_pos = $P10."pos"()
  # rx pass
    rx72_cur."!cursor_pass"(rx72_pos, "term:sym<circumfix>")
    if_null rx72_debug, debug_304
    rx72_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx72_pos)
  debug_304:
    .return (rx72_cur)
  rx72_restart:
.annotate 'line', 10
    if_null rx72_debug, debug_305
    rx72_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_305:
  rx72_fail:
    (rx72_rep, rx72_pos, $I10, $P10) = rx72_cur."!mark_fail"(0)
    lt rx72_pos, -1, rx72_done
    eq rx72_pos, -1, rx72_fail
    jump $I10
  rx72_done:
    rx72_cur."!cursor_fail"()
    if_null rx72_debug, debug_306
    rx72_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_306:
    .return (rx72_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1302969596.256") :method
.annotate 'line', 10
    $P74 = self."!PREFIX__!subrule"("circumfix", "")
    new $P75, "ResizablePMCArray"
    push $P75, $P74
    .return ($P75)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    .local pmc rx78_debug
    (rx78_cur, rx78_pos, rx78_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx78_cur
    .local pmc match
    .lex "$/", match
    length rx78_eos, rx78_tgt
    gt rx78_pos, rx78_eos, rx78_done
    set rx78_off, 0
    lt rx78_pos, 2, rx78_start
    sub rx78_off, rx78_pos, 1
    substr rx78_tgt, rx78_tgt, rx78_off
  rx78_start:
    eq $I10, 1, rx78_restart
    if_null rx78_debug, debug_307
    rx78_cur."!cursor_debug"("START", "infixish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan82_done
    goto rxscan82_scan
  rxscan82_loop:
    (rx78_pos) = rx78_cur."from"()
    inc rx78_pos
    rx78_cur."!cursor_from"(rx78_pos)
    ge rx78_pos, rx78_eos, rxscan82_done
  rxscan82_scan:
    set_addr $I10, rxscan82_loop
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxscan82_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."infix"()
    unless $P10, rx78_fail
    rx78_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx78_pos = $P10."pos"()
  # rx pass
    rx78_cur."!cursor_pass"(rx78_pos, "infixish")
    if_null rx78_debug, debug_308
    rx78_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx78_pos)
  debug_308:
    .return (rx78_cur)
  rx78_restart:
.annotate 'line', 10
    if_null rx78_debug, debug_309
    rx78_cur."!cursor_debug"("NEXT", "infixish")
  debug_309:
  rx78_fail:
    (rx78_rep, rx78_pos, $I10, $P10) = rx78_cur."!mark_fail"(0)
    lt rx78_pos, -1, rx78_done
    eq rx78_pos, -1, rx78_fail
    jump $I10
  rx78_done:
    rx78_cur."!cursor_fail"()
    if_null rx78_debug, debug_310
    rx78_cur."!cursor_debug"("FAIL", "infixish")
  debug_310:
    .return (rx78_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1302969596.256") :method
.annotate 'line', 10
    $P80 = self."!PREFIX__!subrule"("infix", "")
    new $P81, "ResizablePMCArray"
    push $P81, $P80
    .return ($P81)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    .local pmc rx84_debug
    (rx84_cur, rx84_pos, rx84_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx84_cur
    .local pmc match
    .lex "$/", match
    length rx84_eos, rx84_tgt
    gt rx84_pos, rx84_eos, rx84_done
    set rx84_off, 0
    lt rx84_pos, 2, rx84_start
    sub rx84_off, rx84_pos, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
    eq $I10, 1, rx84_restart
    if_null rx84_debug, debug_311
    rx84_cur."!cursor_debug"("START", "prefixish")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan88_done
    goto rxscan88_scan
  rxscan88_loop:
    (rx84_pos) = rx84_cur."from"()
    inc rx84_pos
    rx84_cur."!cursor_from"(rx84_pos)
    ge rx84_pos, rx84_eos, rxscan88_done
  rxscan88_scan:
    set_addr $I10, rxscan88_loop
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  rxscan88_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."prefix"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx84_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."ws"()
    unless $P10, rx84_fail
    rx84_pos = $P10."pos"()
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "prefixish")
    if_null rx84_debug, debug_312
    rx84_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx84_pos)
  debug_312:
    .return (rx84_cur)
  rx84_restart:
.annotate 'line', 10
    if_null rx84_debug, debug_313
    rx84_cur."!cursor_debug"("NEXT", "prefixish")
  debug_313:
  rx84_fail:
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    if_null rx84_debug, debug_314
    rx84_cur."!cursor_debug"("FAIL", "prefixish")
  debug_314:
    .return (rx84_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1302969596.256") :method
.annotate 'line', 10
    $P86 = self."!PREFIX__!subrule"("prefix", "")
    new $P87, "ResizablePMCArray"
    push $P87, $P86
    .return ($P87)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_debug
    (rx90_cur, rx90_pos, rx90_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx90_cur
    .local pmc match
    .lex "$/", match
    length rx90_eos, rx90_tgt
    gt rx90_pos, rx90_eos, rx90_done
    set rx90_off, 0
    lt rx90_pos, 2, rx90_start
    sub rx90_off, rx90_pos, 1
    substr rx90_tgt, rx90_tgt, rx90_off
  rx90_start:
    eq $I10, 1, rx90_restart
    if_null rx90_debug, debug_315
    rx90_cur."!cursor_debug"("START", "postfixish")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    (rx90_pos) = rx90_cur."from"()
    inc rx90_pos
    rx90_cur."!cursor_from"(rx90_pos)
    ge rx90_pos, rx90_eos, rxscan95_done
  rxscan95_scan:
    set_addr $I10, rxscan95_loop
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  rxscan95_done:
  alt96_0:
.annotate 'line', 31
    set_addr $I10, alt96_1
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."postfix"()
    unless $P10, rx90_fail
    rx90_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx90_pos = $P10."pos"()
    goto alt96_end
  alt96_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."postcircumfix"()
    unless $P10, rx90_fail
    rx90_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx90_pos = $P10."pos"()
  alt96_end:
.annotate 'line', 31
  # rx pass
    rx90_cur."!cursor_pass"(rx90_pos, "postfixish")
    if_null rx90_debug, debug_316
    rx90_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx90_pos)
  debug_316:
    .return (rx90_cur)
  rx90_restart:
.annotate 'line', 10
    if_null rx90_debug, debug_317
    rx90_cur."!cursor_debug"("NEXT", "postfixish")
  debug_317:
  rx90_fail:
    (rx90_rep, rx90_pos, $I10, $P10) = rx90_cur."!mark_fail"(0)
    lt rx90_pos, -1, rx90_done
    eq rx90_pos, -1, rx90_fail
    jump $I10
  rx90_done:
    rx90_cur."!cursor_fail"()
    if_null rx90_debug, debug_318
    rx90_cur."!cursor_debug"("FAIL", "postfixish")
  debug_318:
    .return (rx90_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1302969596.256") :method
.annotate 'line', 10
    $P92 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P93 = self."!PREFIX__!subrule"("postfix", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P92
    push $P94, $P93
    .return ($P94)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    gt rx98_pos, rx98_eos, rx98_done
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    eq $I10, 1, rx98_restart
    if_null rx98_debug, debug_319
    rx98_cur."!cursor_debug"("START", "nullterm")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx98_pos) = rx98_cur."from"()
    inc rx98_pos
    rx98_cur."!cursor_from"(rx98_pos)
    ge rx98_pos, rx98_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan101_done:
.annotate 'line', 36
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "nullterm")
    if_null rx98_debug, debug_320
    rx98_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx98_pos)
  debug_320:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 10
    if_null rx98_debug, debug_321
    rx98_cur."!cursor_debug"("NEXT", "nullterm")
  debug_321:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_322
    rx98_cur."!cursor_debug"("FAIL", "nullterm")
  debug_322:
    .return (rx98_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1302969596.256") :method
.annotate 'line', 10
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 10
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    .local pmc rx103_debug
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    gt rx103_pos, rx103_eos, rx103_done
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    eq $I10, 1, rx103_restart
    if_null rx103_debug, debug_323
    rx103_cur."!cursor_debug"("START", "nullterm_alt")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    (rx103_pos) = rx103_cur."from"()
    inc rx103_pos
    rx103_cur."!cursor_from"(rx103_pos)
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."nullterm"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx103_pos = $P10."pos"()
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "nullterm_alt")
    if_null rx103_debug, debug_324
    rx103_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx103_pos)
  debug_324:
    .return (rx103_cur)
  rx103_restart:
.annotate 'line', 10
    if_null rx103_debug, debug_325
    rx103_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_325:
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    if_null rx103_debug, debug_326
    rx103_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_326:
    .return (rx103_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1302969596.256") :method
.annotate 'line', 10
    $P105 = self."!PREFIX__!subrule"("nullterm", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_109
.annotate 'line', 40
    .lex "self", param_109
    find_lex $P112, "self"
    $P113 = $P112."termish"()
    unless $P113, unless_111
    set $P110, $P113
    goto unless_111_end
  unless_111:
    find_lex $P114, "self"
    $P115 = $P114."nullterm_alt"()
    set $P110, $P115
  unless_111_end:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    .local pmc rx117_debug
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    rx117_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx117_cur
    .local pmc match
    .lex "$/", match
    length rx117_eos, rx117_tgt
    gt rx117_pos, rx117_eos, rx117_done
    set rx117_off, 0
    lt rx117_pos, 2, rx117_start
    sub rx117_off, rx117_pos, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
    eq $I10, 1, rx117_restart
    if_null rx117_debug, debug_327
    rx117_cur."!cursor_debug"("START", "quote_delimited")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan121_done
    goto rxscan121_scan
  rxscan121_loop:
    (rx117_pos) = rx117_cur."from"()
    inc rx117_pos
    rx117_cur."!cursor_from"(rx117_pos)
    ge rx117_pos, rx117_eos, rxscan121_done
  rxscan121_scan:
    set_addr $I10, rxscan121_loop
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  rxscan121_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."starter"()
    unless $P10, rx117_fail
    rx117_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx117_pos = $P10."pos"()
  # rx rxquantr122 ** 0..*
    set_addr $I10, rxquantr122_done
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  rxquantr122_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."quote_atom"()
    unless $P10, rx117_fail
    goto rxsubrule123_pass
  rxsubrule123_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx117_fail
  rxsubrule123_pass:
    set_addr $I10, rxsubrule123_back
    rx117_cur."!mark_push"(0, rx117_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx117_pos = $P10."pos"()
    set_addr $I10, rxquantr122_done
    (rx117_rep) = rx117_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr122_done
    rx117_cur."!mark_push"(rx117_rep, rx117_pos, $I10)
    goto rxquantr122_loop
  rxquantr122_done:
  # rx subrule "stopper" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."stopper"()
    unless $P10, rx117_fail
    rx117_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx117_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "quote_delimited")
    if_null rx117_debug, debug_328
    rx117_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx117_pos)
  debug_328:
    .return (rx117_cur)
  rx117_restart:
.annotate 'line', 40
    if_null rx117_debug, debug_329
    rx117_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_329:
  rx117_fail:
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    if_null rx117_debug, debug_330
    rx117_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_330:
    .return (rx117_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1302969596.256") :method
.annotate 'line', 40
    $P119 = self."!PREFIX__!subrule"("starter", "")
    new $P120, "ResizablePMCArray"
    push $P120, $P119
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_debug
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx125_cur
    .local pmc match
    .lex "$/", match
    length rx125_eos, rx125_tgt
    gt rx125_pos, rx125_eos, rx125_done
    set rx125_off, 0
    lt rx125_pos, 2, rx125_start
    sub rx125_off, rx125_pos, 1
    substr rx125_tgt, rx125_tgt, rx125_off
  rx125_start:
    eq $I10, 1, rx125_restart
    if_null rx125_debug, debug_331
    rx125_cur."!cursor_debug"("START", "quote_atom")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    (rx125_pos) = rx125_cur."from"()
    inc rx125_pos
    rx125_cur."!cursor_from"(rx125_pos)
    ge rx125_pos, rx125_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxscan128_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."stopper"()
    if $P10, rx125_fail
  alt129_0:
.annotate 'line', 49
    set_addr $I10, alt129_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."quote_escape"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx125_pos = $P10."pos"()
    goto alt129_end
  alt129_1:
.annotate 'line', 51
  # rx rxquantr130 ** 1..*
    set_addr $I10, rxquantr130_done
    rx125_cur."!mark_push"(0, -1, $I10)
  rxquantr130_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."stopper"()
    if $P10, rx125_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."quote_escape"()
    if $P10, rx125_fail
  # rx charclass .
    ge rx125_pos, rx125_eos, rx125_fail
    inc rx125_pos
    set_addr $I10, rxquantr130_done
    (rx125_rep) = rx125_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr130_done
    rx125_cur."!mark_push"(rx125_rep, rx125_pos, $I10)
    goto rxquantr130_loop
  rxquantr130_done:
  alt129_end:
.annotate 'line', 47
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "quote_atom")
    if_null rx125_debug, debug_332
    rx125_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx125_pos)
  debug_332:
    .return (rx125_cur)
  rx125_restart:
.annotate 'line', 40
    if_null rx125_debug, debug_333
    rx125_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_333:
  rx125_fail:
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    if_null rx125_debug, debug_334
    rx125_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_334:
    .return (rx125_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1302969596.256") :method
.annotate 'line', 40
    new $P127, "ResizablePMCArray"
    push $P127, ""
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
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
    if_null rx134_debug, debug_335
    rx134_cur."!cursor_debug"("START", "decint")
  debug_335:
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
.annotate 'line', 55
  # rx rxquantr138 ** 1..*
    set_addr $I10, rxquantr138_done
    rx134_cur."!mark_push"(0, -1, $I10)
  rxquantr138_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx134_pos, rx134_off
    find_not_cclass $I11, 8, rx134_tgt, $I10, rx134_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx134_fail
    add rx134_pos, rx134_off, $I11
    set_addr $I10, rxquantr138_done
    (rx134_rep) = rx134_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr138_done
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I10)
  # rx literal  "_"
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    ord $I11, rx134_tgt, $I11
    ne $I11, 95, rx134_fail
    add rx134_pos, 1
    goto rxquantr138_loop
  rxquantr138_done:
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "decint")
    if_null rx134_debug, debug_336
    rx134_cur."!cursor_debug"("PASS", "decint", " at pos=", rx134_pos)
  debug_336:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 40
    if_null rx134_debug, debug_337
    rx134_cur."!cursor_debug"("NEXT", "decint")
  debug_337:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_338
    rx134_cur."!cursor_debug"("FAIL", "decint")
  debug_338:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1302969596.256") :method
.annotate 'line', 40
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    .local pmc rx140_debug
    (rx140_cur, rx140_pos, rx140_tgt, $I10) = self."!cursor_start"()
    rx140_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx140_cur
    .local pmc match
    .lex "$/", match
    length rx140_eos, rx140_tgt
    gt rx140_pos, rx140_eos, rx140_done
    set rx140_off, 0
    lt rx140_pos, 2, rx140_start
    sub rx140_off, rx140_pos, 1
    substr rx140_tgt, rx140_tgt, rx140_off
  rx140_start:
    eq $I10, 1, rx140_restart
    if_null rx140_debug, debug_339
    rx140_cur."!cursor_debug"("START", "decints")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan143_done
    goto rxscan143_scan
  rxscan143_loop:
    (rx140_pos) = rx140_cur."from"()
    inc rx140_pos
    rx140_cur."!cursor_from"(rx140_pos)
    ge rx140_pos, rx140_eos, rxscan143_done
  rxscan143_scan:
    set_addr $I10, rxscan143_loop
    rx140_cur."!mark_push"(0, rx140_pos, $I10)
  rxscan143_done:
.annotate 'line', 56
  # rx rxquantr144 ** 1..*
    set_addr $I10, rxquantr144_done
    rx140_cur."!mark_push"(0, -1, $I10)
  rxquantr144_loop:
  # rx subrule "ws" subtype=method negate=
    rx140_cur."!cursor_pos"(rx140_pos)
    $P10 = rx140_cur."ws"()
    unless $P10, rx140_fail
    rx140_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx140_cur."!cursor_pos"(rx140_pos)
    $P10 = rx140_cur."decint"()
    unless $P10, rx140_fail
    rx140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx140_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx140_cur."!cursor_pos"(rx140_pos)
    $P10 = rx140_cur."ws"()
    unless $P10, rx140_fail
    rx140_pos = $P10."pos"()
    set_addr $I10, rxquantr144_done
    (rx140_rep) = rx140_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr144_done
    rx140_cur."!mark_push"(rx140_rep, rx140_pos, $I10)
  # rx literal  ","
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    sub $I11, rx140_pos, rx140_off
    ord $I11, rx140_tgt, $I11
    ne $I11, 44, rx140_fail
    add rx140_pos, 1
    goto rxquantr144_loop
  rxquantr144_done:
  # rx pass
    rx140_cur."!cursor_pass"(rx140_pos, "decints")
    if_null rx140_debug, debug_340
    rx140_cur."!cursor_debug"("PASS", "decints", " at pos=", rx140_pos)
  debug_340:
    .return (rx140_cur)
  rx140_restart:
.annotate 'line', 40
    if_null rx140_debug, debug_341
    rx140_cur."!cursor_debug"("NEXT", "decints")
  debug_341:
  rx140_fail:
    (rx140_rep, rx140_pos, $I10, $P10) = rx140_cur."!mark_fail"(0)
    lt rx140_pos, -1, rx140_done
    eq rx140_pos, -1, rx140_fail
    jump $I10
  rx140_done:
    rx140_cur."!cursor_fail"()
    if_null rx140_debug, debug_342
    rx140_cur."!cursor_debug"("FAIL", "decints")
  debug_342:
    .return (rx140_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1302969596.256") :method
.annotate 'line', 40
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    .local pmc rx146_debug
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    gt rx146_pos, rx146_eos, rx146_done
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    eq $I10, 1, rx146_restart
    if_null rx146_debug, debug_343
    rx146_cur."!cursor_debug"("START", "hexint")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan149_done
    goto rxscan149_scan
  rxscan149_loop:
    (rx146_pos) = rx146_cur."from"()
    inc rx146_pos
    rx146_cur."!cursor_from"(rx146_pos)
    ge rx146_pos, rx146_eos, rxscan149_done
  rxscan149_scan:
    set_addr $I10, rxscan149_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan149_done:
.annotate 'line', 58
  # rx rxquantr150 ** 1..*
    set_addr $I10, rxquantr150_done
    rx146_cur."!mark_push"(0, -1, $I10)
  rxquantr150_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx146_pos, rx146_off
    set rx146_rep, 0
    sub $I12, rx146_eos, rx146_pos
  rxenumcharlistq151_loop:
    le $I12, 0, rxenumcharlistq151_done
    substr $S10, rx146_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq151_done
    inc rx146_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq151_loop
  rxenumcharlistq151_done:
    lt rx146_rep, 1, rx146_fail
    add rx146_pos, rx146_pos, rx146_rep
    set_addr $I10, rxquantr150_done
    (rx146_rep) = rx146_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr150_done
    rx146_cur."!mark_push"(rx146_rep, rx146_pos, $I10)
  # rx literal  "_"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    ord $I11, rx146_tgt, $I11
    ne $I11, 95, rx146_fail
    add rx146_pos, 1
    goto rxquantr150_loop
  rxquantr150_done:
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "hexint")
    if_null rx146_debug, debug_344
    rx146_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx146_pos)
  debug_344:
    .return (rx146_cur)
  rx146_restart:
.annotate 'line', 40
    if_null rx146_debug, debug_345
    rx146_cur."!cursor_debug"("NEXT", "hexint")
  debug_345:
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    if_null rx146_debug, debug_346
    rx146_cur."!cursor_debug"("FAIL", "hexint")
  debug_346:
    .return (rx146_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1302969596.256") :method
.annotate 'line', 40
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    .local pmc rx153_debug
    (rx153_cur, rx153_pos, rx153_tgt, $I10) = self."!cursor_start"()
    rx153_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx153_cur
    .local pmc match
    .lex "$/", match
    length rx153_eos, rx153_tgt
    gt rx153_pos, rx153_eos, rx153_done
    set rx153_off, 0
    lt rx153_pos, 2, rx153_start
    sub rx153_off, rx153_pos, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
    eq $I10, 1, rx153_restart
    if_null rx153_debug, debug_347
    rx153_cur."!cursor_debug"("START", "hexints")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    (rx153_pos) = rx153_cur."from"()
    inc rx153_pos
    rx153_cur."!cursor_from"(rx153_pos)
    ge rx153_pos, rx153_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  rxscan156_done:
.annotate 'line', 59
  # rx rxquantr157 ** 1..*
    set_addr $I10, rxquantr157_done
    rx153_cur."!mark_push"(0, -1, $I10)
  rxquantr157_loop:
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."hexint"()
    unless $P10, rx153_fail
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx153_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
    set_addr $I10, rxquantr157_done
    (rx153_rep) = rx153_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr157_done
    rx153_cur."!mark_push"(rx153_rep, rx153_pos, $I10)
  # rx literal  ","
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail
    sub $I11, rx153_pos, rx153_off
    ord $I11, rx153_tgt, $I11
    ne $I11, 44, rx153_fail
    add rx153_pos, 1
    goto rxquantr157_loop
  rxquantr157_done:
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "hexints")
    if_null rx153_debug, debug_348
    rx153_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx153_pos)
  debug_348:
    .return (rx153_cur)
  rx153_restart:
.annotate 'line', 40
    if_null rx153_debug, debug_349
    rx153_cur."!cursor_debug"("NEXT", "hexints")
  debug_349:
  rx153_fail:
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    if_null rx153_debug, debug_350
    rx153_cur."!cursor_debug"("FAIL", "hexints")
  debug_350:
    .return (rx153_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1302969596.256") :method
.annotate 'line', 40
    new $P155, "ResizablePMCArray"
    push $P155, ""
    .return ($P155)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_debug
    (rx159_cur, rx159_pos, rx159_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx159_cur
    .local pmc match
    .lex "$/", match
    length rx159_eos, rx159_tgt
    gt rx159_pos, rx159_eos, rx159_done
    set rx159_off, 0
    lt rx159_pos, 2, rx159_start
    sub rx159_off, rx159_pos, 1
    substr rx159_tgt, rx159_tgt, rx159_off
  rx159_start:
    eq $I10, 1, rx159_restart
    if_null rx159_debug, debug_351
    rx159_cur."!cursor_debug"("START", "octint")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan162_done
    goto rxscan162_scan
  rxscan162_loop:
    (rx159_pos) = rx159_cur."from"()
    inc rx159_pos
    rx159_cur."!cursor_from"(rx159_pos)
    ge rx159_pos, rx159_eos, rxscan162_done
  rxscan162_scan:
    set_addr $I10, rxscan162_loop
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  rxscan162_done:
.annotate 'line', 61
  # rx rxquantr163 ** 1..*
    set_addr $I10, rxquantr163_done
    rx159_cur."!mark_push"(0, -1, $I10)
  rxquantr163_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx159_pos, rx159_off
    set rx159_rep, 0
    sub $I12, rx159_eos, rx159_pos
  rxenumcharlistq164_loop:
    le $I12, 0, rxenumcharlistq164_done
    substr $S10, rx159_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq164_done
    inc rx159_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq164_loop
  rxenumcharlistq164_done:
    lt rx159_rep, 1, rx159_fail
    add rx159_pos, rx159_pos, rx159_rep
    set_addr $I10, rxquantr163_done
    (rx159_rep) = rx159_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr163_done
    rx159_cur."!mark_push"(rx159_rep, rx159_pos, $I10)
  # rx literal  "_"
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail
    sub $I11, rx159_pos, rx159_off
    ord $I11, rx159_tgt, $I11
    ne $I11, 95, rx159_fail
    add rx159_pos, 1
    goto rxquantr163_loop
  rxquantr163_done:
  # rx pass
    rx159_cur."!cursor_pass"(rx159_pos, "octint")
    if_null rx159_debug, debug_352
    rx159_cur."!cursor_debug"("PASS", "octint", " at pos=", rx159_pos)
  debug_352:
    .return (rx159_cur)
  rx159_restart:
.annotate 'line', 40
    if_null rx159_debug, debug_353
    rx159_cur."!cursor_debug"("NEXT", "octint")
  debug_353:
  rx159_fail:
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    if_null rx159_debug, debug_354
    rx159_cur."!cursor_debug"("FAIL", "octint")
  debug_354:
    .return (rx159_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1302969596.256") :method
.annotate 'line', 40
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    .local pmc rx166_debug
    (rx166_cur, rx166_pos, rx166_tgt, $I10) = self."!cursor_start"()
    rx166_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx166_cur
    .local pmc match
    .lex "$/", match
    length rx166_eos, rx166_tgt
    gt rx166_pos, rx166_eos, rx166_done
    set rx166_off, 0
    lt rx166_pos, 2, rx166_start
    sub rx166_off, rx166_pos, 1
    substr rx166_tgt, rx166_tgt, rx166_off
  rx166_start:
    eq $I10, 1, rx166_restart
    if_null rx166_debug, debug_355
    rx166_cur."!cursor_debug"("START", "octints")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan169_done
    goto rxscan169_scan
  rxscan169_loop:
    (rx166_pos) = rx166_cur."from"()
    inc rx166_pos
    rx166_cur."!cursor_from"(rx166_pos)
    ge rx166_pos, rx166_eos, rxscan169_done
  rxscan169_scan:
    set_addr $I10, rxscan169_loop
    rx166_cur."!mark_push"(0, rx166_pos, $I10)
  rxscan169_done:
.annotate 'line', 62
  # rx rxquantr170 ** 1..*
    set_addr $I10, rxquantr170_done
    rx166_cur."!mark_push"(0, -1, $I10)
  rxquantr170_loop:
  # rx subrule "ws" subtype=method negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."ws"()
    unless $P10, rx166_fail
    rx166_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."octint"()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx166_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."ws"()
    unless $P10, rx166_fail
    rx166_pos = $P10."pos"()
    set_addr $I10, rxquantr170_done
    (rx166_rep) = rx166_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr170_done
    rx166_cur."!mark_push"(rx166_rep, rx166_pos, $I10)
  # rx literal  ","
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    ord $I11, rx166_tgt, $I11
    ne $I11, 44, rx166_fail
    add rx166_pos, 1
    goto rxquantr170_loop
  rxquantr170_done:
  # rx pass
    rx166_cur."!cursor_pass"(rx166_pos, "octints")
    if_null rx166_debug, debug_356
    rx166_cur."!cursor_debug"("PASS", "octints", " at pos=", rx166_pos)
  debug_356:
    .return (rx166_cur)
  rx166_restart:
.annotate 'line', 40
    if_null rx166_debug, debug_357
    rx166_cur."!cursor_debug"("NEXT", "octints")
  debug_357:
  rx166_fail:
    (rx166_rep, rx166_pos, $I10, $P10) = rx166_cur."!mark_fail"(0)
    lt rx166_pos, -1, rx166_done
    eq rx166_pos, -1, rx166_fail
    jump $I10
  rx166_done:
    rx166_cur."!cursor_fail"()
    if_null rx166_debug, debug_358
    rx166_cur."!cursor_debug"("FAIL", "octints")
  debug_358:
    .return (rx166_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1302969596.256") :method
.annotate 'line', 40
    new $P168, "ResizablePMCArray"
    push $P168, ""
    .return ($P168)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    .local pmc rx172_debug
    (rx172_cur, rx172_pos, rx172_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx172_cur
    .local pmc match
    .lex "$/", match
    length rx172_eos, rx172_tgt
    gt rx172_pos, rx172_eos, rx172_done
    set rx172_off, 0
    lt rx172_pos, 2, rx172_start
    sub rx172_off, rx172_pos, 1
    substr rx172_tgt, rx172_tgt, rx172_off
  rx172_start:
    eq $I10, 1, rx172_restart
    if_null rx172_debug, debug_359
    rx172_cur."!cursor_debug"("START", "binint")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan175_done
    goto rxscan175_scan
  rxscan175_loop:
    (rx172_pos) = rx172_cur."from"()
    inc rx172_pos
    rx172_cur."!cursor_from"(rx172_pos)
    ge rx172_pos, rx172_eos, rxscan175_done
  rxscan175_scan:
    set_addr $I10, rxscan175_loop
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  rxscan175_done:
.annotate 'line', 64
  # rx rxquantr176 ** 1..*
    set_addr $I10, rxquantr176_done
    rx172_cur."!mark_push"(0, -1, $I10)
  rxquantr176_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx172_pos, rx172_off
    set rx172_rep, 0
    sub $I12, rx172_eos, rx172_pos
  rxenumcharlistq177_loop:
    le $I12, 0, rxenumcharlistq177_done
    substr $S10, rx172_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq177_done
    inc rx172_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq177_loop
  rxenumcharlistq177_done:
    lt rx172_rep, 1, rx172_fail
    add rx172_pos, rx172_pos, rx172_rep
    set_addr $I10, rxquantr176_done
    (rx172_rep) = rx172_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr176_done
    rx172_cur."!mark_push"(rx172_rep, rx172_pos, $I10)
  # rx literal  "_"
    add $I11, rx172_pos, 1
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    ord $I11, rx172_tgt, $I11
    ne $I11, 95, rx172_fail
    add rx172_pos, 1
    goto rxquantr176_loop
  rxquantr176_done:
  # rx pass
    rx172_cur."!cursor_pass"(rx172_pos, "binint")
    if_null rx172_debug, debug_360
    rx172_cur."!cursor_debug"("PASS", "binint", " at pos=", rx172_pos)
  debug_360:
    .return (rx172_cur)
  rx172_restart:
.annotate 'line', 40
    if_null rx172_debug, debug_361
    rx172_cur."!cursor_debug"("NEXT", "binint")
  debug_361:
  rx172_fail:
    (rx172_rep, rx172_pos, $I10, $P10) = rx172_cur."!mark_fail"(0)
    lt rx172_pos, -1, rx172_done
    eq rx172_pos, -1, rx172_fail
    jump $I10
  rx172_done:
    rx172_cur."!cursor_fail"()
    if_null rx172_debug, debug_362
    rx172_cur."!cursor_debug"("FAIL", "binint")
  debug_362:
    .return (rx172_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1302969596.256") :method
.annotate 'line', 40
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    .local pmc rx179_debug
    (rx179_cur, rx179_pos, rx179_tgt, $I10) = self."!cursor_start"()
    rx179_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx179_cur
    .local pmc match
    .lex "$/", match
    length rx179_eos, rx179_tgt
    gt rx179_pos, rx179_eos, rx179_done
    set rx179_off, 0
    lt rx179_pos, 2, rx179_start
    sub rx179_off, rx179_pos, 1
    substr rx179_tgt, rx179_tgt, rx179_off
  rx179_start:
    eq $I10, 1, rx179_restart
    if_null rx179_debug, debug_363
    rx179_cur."!cursor_debug"("START", "binints")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan182_done
    goto rxscan182_scan
  rxscan182_loop:
    (rx179_pos) = rx179_cur."from"()
    inc rx179_pos
    rx179_cur."!cursor_from"(rx179_pos)
    ge rx179_pos, rx179_eos, rxscan182_done
  rxscan182_scan:
    set_addr $I10, rxscan182_loop
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
  rxscan182_done:
.annotate 'line', 65
  # rx rxquantr183 ** 1..*
    set_addr $I10, rxquantr183_done
    rx179_cur."!mark_push"(0, -1, $I10)
  rxquantr183_loop:
  # rx subrule "ws" subtype=method negate=
    rx179_cur."!cursor_pos"(rx179_pos)
    $P10 = rx179_cur."ws"()
    unless $P10, rx179_fail
    rx179_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx179_cur."!cursor_pos"(rx179_pos)
    $P10 = rx179_cur."binint"()
    unless $P10, rx179_fail
    rx179_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx179_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx179_cur."!cursor_pos"(rx179_pos)
    $P10 = rx179_cur."ws"()
    unless $P10, rx179_fail
    rx179_pos = $P10."pos"()
    set_addr $I10, rxquantr183_done
    (rx179_rep) = rx179_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr183_done
    rx179_cur."!mark_push"(rx179_rep, rx179_pos, $I10)
  # rx literal  ","
    add $I11, rx179_pos, 1
    gt $I11, rx179_eos, rx179_fail
    sub $I11, rx179_pos, rx179_off
    ord $I11, rx179_tgt, $I11
    ne $I11, 44, rx179_fail
    add rx179_pos, 1
    goto rxquantr183_loop
  rxquantr183_done:
  # rx pass
    rx179_cur."!cursor_pass"(rx179_pos, "binints")
    if_null rx179_debug, debug_364
    rx179_cur."!cursor_debug"("PASS", "binints", " at pos=", rx179_pos)
  debug_364:
    .return (rx179_cur)
  rx179_restart:
.annotate 'line', 40
    if_null rx179_debug, debug_365
    rx179_cur."!cursor_debug"("NEXT", "binints")
  debug_365:
  rx179_fail:
    (rx179_rep, rx179_pos, $I10, $P10) = rx179_cur."!mark_fail"(0)
    lt rx179_pos, -1, rx179_done
    eq rx179_pos, -1, rx179_fail
    jump $I10
  rx179_done:
    rx179_cur."!cursor_fail"()
    if_null rx179_debug, debug_366
    rx179_cur."!cursor_debug"("FAIL", "binints")
  debug_366:
    .return (rx179_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1302969596.256") :method
.annotate 'line', 40
    new $P181, "ResizablePMCArray"
    push $P181, ""
    .return ($P181)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    .local pmc rx185_debug
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    gt rx185_pos, rx185_eos, rx185_done
    set rx185_off, 0
    lt rx185_pos, 2, rx185_start
    sub rx185_off, rx185_pos, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
    eq $I10, 1, rx185_restart
    if_null rx185_debug, debug_367
    rx185_cur."!cursor_debug"("START", "integer")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan193_done
    goto rxscan193_scan
  rxscan193_loop:
    (rx185_pos) = rx185_cur."from"()
    inc rx185_pos
    rx185_cur."!cursor_from"(rx185_pos)
    ge rx185_pos, rx185_eos, rxscan193_done
  rxscan193_scan:
    set_addr $I10, rxscan193_loop
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  rxscan193_done:
  alt194_0:
.annotate 'line', 68
    set_addr $I10, alt194_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 48, rx185_fail
    add rx185_pos, 1
  alt195_0:
    set_addr $I10, alt195_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "b"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 98, rx185_fail
    add rx185_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."binint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_1:
    set_addr $I10, alt195_2
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 111, rx185_fail
    add rx185_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."octint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_2:
    set_addr $I10, alt195_3
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 120, rx185_fail
    add rx185_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."hexint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 100, rx185_fail
    add rx185_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."decint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx185_pos = $P10."pos"()
  alt195_end:
.annotate 'line', 69
    goto alt194_end
  alt194_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."decint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx185_pos = $P10."pos"()
  alt194_end:
.annotate 'line', 67
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "integer")
    if_null rx185_debug, debug_368
    rx185_cur."!cursor_debug"("PASS", "integer", " at pos=", rx185_pos)
  debug_368:
    .return (rx185_cur)
  rx185_restart:
.annotate 'line', 40
    if_null rx185_debug, debug_369
    rx185_cur."!cursor_debug"("NEXT", "integer")
  debug_369:
  rx185_fail:
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    if_null rx185_debug, debug_370
    rx185_cur."!cursor_debug"("FAIL", "integer")
  debug_370:
    .return (rx185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1302969596.256") :method
.annotate 'line', 40
    $P187 = self."!PREFIX__!subrule"("decint", "")
    $P188 = self."!PREFIX__!subrule"("decint", "0d")
    $P189 = self."!PREFIX__!subrule"("hexint", "0x")
    $P190 = self."!PREFIX__!subrule"("octint", "0o")
    $P191 = self."!PREFIX__!subrule"("binint", "0b")
    new $P192, "ResizablePMCArray"
    push $P192, $P187
    push $P192, $P188
    push $P192, $P189
    push $P192, $P190
    push $P192, $P191
    .return ($P192)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    .local pmc rx197_debug
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    rx197_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    gt rx197_pos, rx197_eos, rx197_done
    set rx197_off, 0
    lt rx197_pos, 2, rx197_start
    sub rx197_off, rx197_pos, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
    eq $I10, 1, rx197_restart
    if_null rx197_debug, debug_371
    rx197_cur."!cursor_debug"("START", "dec_number")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan200_done
    goto rxscan200_scan
  rxscan200_loop:
    (rx197_pos) = rx197_cur."from"()
    inc rx197_pos
    rx197_cur."!cursor_from"(rx197_pos)
    ge rx197_pos, rx197_eos, rxscan200_done
  rxscan200_scan:
    set_addr $I10, rxscan200_loop
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxscan200_done:
  alt201_0:
.annotate 'line', 78
    set_addr $I10, alt201_1
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_202_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx literal  "."
    add $I11, rx197_pos, 1
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    ord $I11, rx197_tgt, $I11
    ne $I11, 46, rx197_fail
    add rx197_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_202_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_202_done
  rxcap_202_fail:
    goto rx197_fail
  rxcap_202_done:
  # rx rxquantr203 ** 0..1
    set_addr $I10, rxquantr203_done
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxquantr203_loop:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    goto rxsubrule204_pass
  rxsubrule204_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx197_fail
  rxsubrule204_pass:
    set_addr $I10, rxsubrule204_back
    rx197_cur."!mark_push"(0, rx197_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
    set_addr $I10, rxquantr203_done
    (rx197_rep) = rx197_cur."!mark_commit"($I10)
  rxquantr203_done:
    goto alt201_end
  alt201_1:
    set_addr $I10, alt201_2
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_205_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
  # rx literal  "."
    add $I11, rx197_pos, 1
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    ord $I11, rx197_tgt, $I11
    ne $I11, 46, rx197_fail
    add rx197_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx197_fail
  rxcap_205_done:
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxquantr206_loop:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    goto rxsubrule207_pass
  rxsubrule207_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx197_fail
  rxsubrule207_pass:
    set_addr $I10, rxsubrule207_back
    rx197_cur."!mark_push"(0, rx197_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
    set_addr $I10, rxquantr206_done
    (rx197_rep) = rx197_cur."!mark_commit"($I10)
  rxquantr206_done:
    goto alt201_end
  alt201_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_208_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx197_fail
  rxcap_208_done:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
  alt201_end:
.annotate 'line', 78
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "dec_number")
    if_null rx197_debug, debug_372
    rx197_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx197_pos)
  debug_372:
    .return (rx197_cur)
  rx197_restart:
.annotate 'line', 40
    if_null rx197_debug, debug_373
    rx197_cur."!cursor_debug"("NEXT", "dec_number")
  debug_373:
  rx197_fail:
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    if_null rx197_debug, debug_374
    rx197_cur."!cursor_debug"("FAIL", "dec_number")
  debug_374:
    .return (rx197_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1302969596.256") :method
.annotate 'line', 40
    new $P199, "ResizablePMCArray"
    push $P199, ""
    push $P199, ""
    push $P199, "."
    .return ($P199)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    .local pmc rx210_debug
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx210_cur
    .local pmc match
    .lex "$/", match
    length rx210_eos, rx210_tgt
    gt rx210_pos, rx210_eos, rx210_done
    set rx210_off, 0
    lt rx210_pos, 2, rx210_start
    sub rx210_off, rx210_pos, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
    eq $I10, 1, rx210_restart
    if_null rx210_debug, debug_375
    rx210_cur."!cursor_debug"("START", "escale")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan213_done
    goto rxscan213_scan
  rxscan213_loop:
    (rx210_pos) = rx210_cur."from"()
    inc rx210_pos
    rx210_cur."!cursor_from"(rx210_pos)
    ge rx210_pos, rx210_eos, rxscan213_done
  rxscan213_scan:
    set_addr $I10, rxscan213_loop
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxscan213_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx210_pos, rx210_eos, rx210_fail
    sub $I10, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx210_fail
    inc rx210_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx210_pos, rx210_off
    set rx210_rep, 0
    sub $I12, rx210_eos, rx210_pos
    le $I12, 1, rxenumcharlistq214_loop
    set $I12, 1
  rxenumcharlistq214_loop:
    le $I12, 0, rxenumcharlistq214_done
    substr $S10, rx210_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq214_done
    inc rx210_rep
  rxenumcharlistq214_done:
    add rx210_pos, rx210_pos, rx210_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx210_pos, rx210_off
    find_not_cclass $I11, 8, rx210_tgt, $I10, rx210_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx210_fail
    add rx210_pos, rx210_off, $I11
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "escale")
    if_null rx210_debug, debug_376
    rx210_cur."!cursor_debug"("PASS", "escale", " at pos=", rx210_pos)
  debug_376:
    .return (rx210_cur)
  rx210_restart:
.annotate 'line', 40
    if_null rx210_debug, debug_377
    rx210_cur."!cursor_debug"("NEXT", "escale")
  debug_377:
  rx210_fail:
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    if_null rx210_debug, debug_378
    rx210_cur."!cursor_debug"("FAIL", "escale")
  debug_378:
    .return (rx210_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1302969596.256") :method
.annotate 'line', 40
    new $P212, "ResizablePMCArray"
    push $P212, "e"
    push $P212, "E"
    .return ($P212)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1302969596.256")
    .param pmc param_216
.annotate 'line', 86
    .lex "self", param_216
    $P217 = param_216."!protoregex"("quote_escape")
    .return ($P217)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1302969596.256")
    .param pmc param_219
.annotate 'line', 86
    .lex "self", param_219
    $P220 = param_219."!PREFIX__!protoregex"("quote_escape")
    .return ($P220)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_debug
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx222_cur
    .local pmc match
    .lex "$/", match
    length rx222_eos, rx222_tgt
    gt rx222_pos, rx222_eos, rx222_done
    set rx222_off, 0
    lt rx222_pos, 2, rx222_start
    sub rx222_off, rx222_pos, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
    eq $I10, 1, rx222_restart
    if_null rx222_debug, debug_379
    rx222_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan225_done
    goto rxscan225_scan
  rxscan225_loop:
    (rx222_pos) = rx222_cur."from"()
    inc rx222_pos
    rx222_cur."!cursor_from"(rx222_pos)
    ge rx222_pos, rx222_eos, rxscan225_done
  rxscan225_scan:
    set_addr $I10, rxscan225_loop
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  rxscan225_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx222_pos, 2
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    substr $S10, rx222_tgt, $I11, 2
    ne $S10, "\\\\", rx222_fail
    add rx222_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."quotemod_check"("q")
    unless $P10, rx222_fail
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "quote_escape:sym<backslash>")
    if_null rx222_debug, debug_380
    rx222_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx222_pos)
  debug_380:
    .return (rx222_cur)
  rx222_restart:
.annotate 'line', 40
    if_null rx222_debug, debug_381
    rx222_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_381:
  rx222_fail:
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    if_null rx222_debug, debug_382
    rx222_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_382:
    .return (rx222_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1302969596.256") :method
.annotate 'line', 40
    new $P224, "ResizablePMCArray"
    push $P224, "\\\\"
    .return ($P224)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    .local pmc rx227_debug
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx227_cur
    .local pmc match
    .lex "$/", match
    length rx227_eos, rx227_tgt
    gt rx227_pos, rx227_eos, rx227_done
    set rx227_off, 0
    lt rx227_pos, 2, rx227_start
    sub rx227_off, rx227_pos, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
    eq $I10, 1, rx227_restart
    if_null rx227_debug, debug_383
    rx227_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan230_done
    goto rxscan230_scan
  rxscan230_loop:
    (rx227_pos) = rx227_cur."from"()
    inc rx227_pos
    rx227_cur."!cursor_from"(rx227_pos)
    ge rx227_pos, rx227_eos, rxscan230_done
  rxscan230_scan:
    set_addr $I10, rxscan230_loop
    rx227_cur."!mark_push"(0, rx227_pos, $I10)
  rxscan230_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx227_pos, 1
    gt $I11, rx227_eos, rx227_fail
    sub $I11, rx227_pos, rx227_off
    ord $I11, rx227_tgt, $I11
    ne $I11, 92, rx227_fail
    add rx227_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."quotemod_check"("q")
    unless $P10, rx227_fail
  # rx subrule "stopper" subtype=capture negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."stopper"()
    unless $P10, rx227_fail
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx227_pos = $P10."pos"()
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "quote_escape:sym<stopper>")
    if_null rx227_debug, debug_384
    rx227_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx227_pos)
  debug_384:
    .return (rx227_cur)
  rx227_restart:
.annotate 'line', 40
    if_null rx227_debug, debug_385
    rx227_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_385:
  rx227_fail:
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    if_null rx227_debug, debug_386
    rx227_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_386:
    .return (rx227_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1302969596.256") :method
.annotate 'line', 40
    new $P229, "ResizablePMCArray"
    push $P229, "\\"
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    .local pmc rx232_debug
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    gt rx232_pos, rx232_eos, rx232_done
    set rx232_off, 0
    lt rx232_pos, 2, rx232_start
    sub rx232_off, rx232_pos, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    eq $I10, 1, rx232_restart
    if_null rx232_debug, debug_387
    rx232_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan235_done
    goto rxscan235_scan
  rxscan235_loop:
    (rx232_pos) = rx232_cur."from"()
    inc rx232_pos
    rx232_cur."!cursor_from"(rx232_pos)
    ge rx232_pos, rx232_eos, rxscan235_done
  rxscan235_scan:
    set_addr $I10, rxscan235_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan235_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx232_pos, 2
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 2
    ne $S10, "\\b", rx232_fail
    add rx232_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."quotemod_check"("b")
    unless $P10, rx232_fail
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "quote_escape:sym<bs>")
    if_null rx232_debug, debug_388
    rx232_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx232_pos)
  debug_388:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 40
    if_null rx232_debug, debug_389
    rx232_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_389:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_390
    rx232_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_390:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1302969596.256") :method
.annotate 'line', 40
    new $P234, "ResizablePMCArray"
    push $P234, "\\b"
    .return ($P234)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    .local pmc rx237_debug
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx237_cur
    .local pmc match
    .lex "$/", match
    length rx237_eos, rx237_tgt
    gt rx237_pos, rx237_eos, rx237_done
    set rx237_off, 0
    lt rx237_pos, 2, rx237_start
    sub rx237_off, rx237_pos, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
    eq $I10, 1, rx237_restart
    if_null rx237_debug, debug_391
    rx237_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan240_done
    goto rxscan240_scan
  rxscan240_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan240_done
  rxscan240_scan:
    set_addr $I10, rxscan240_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan240_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx237_pos, 2
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    substr $S10, rx237_tgt, $I11, 2
    ne $S10, "\\n", rx237_fail
    add rx237_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."quotemod_check"("b")
    unless $P10, rx237_fail
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "quote_escape:sym<nl>")
    if_null rx237_debug, debug_392
    rx237_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx237_pos)
  debug_392:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 40
    if_null rx237_debug, debug_393
    rx237_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_393:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_394
    rx237_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_394:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1302969596.256") :method
.annotate 'line', 40
    new $P239, "ResizablePMCArray"
    push $P239, "\\n"
    .return ($P239)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    .local pmc rx242_debug
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    gt rx242_pos, rx242_eos, rx242_done
    set rx242_off, 0
    lt rx242_pos, 2, rx242_start
    sub rx242_off, rx242_pos, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    eq $I10, 1, rx242_restart
    if_null rx242_debug, debug_395
    rx242_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan245_done
    goto rxscan245_scan
  rxscan245_loop:
    (rx242_pos) = rx242_cur."from"()
    inc rx242_pos
    rx242_cur."!cursor_from"(rx242_pos)
    ge rx242_pos, rx242_eos, rxscan245_done
  rxscan245_scan:
    set_addr $I10, rxscan245_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan245_done:
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx242_pos, 2
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    substr $S10, rx242_tgt, $I11, 2
    ne $S10, "\\r", rx242_fail
    add rx242_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."quotemod_check"("b")
    unless $P10, rx242_fail
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "quote_escape:sym<cr>")
    if_null rx242_debug, debug_396
    rx242_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx242_pos)
  debug_396:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 40
    if_null rx242_debug, debug_397
    rx242_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_397:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_398
    rx242_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_398:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1302969596.256") :method
.annotate 'line', 40
    new $P244, "ResizablePMCArray"
    push $P244, "\\r"
    .return ($P244)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    .local pmc rx247_debug
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    gt rx247_pos, rx247_eos, rx247_done
    set rx247_off, 0
    lt rx247_pos, 2, rx247_start
    sub rx247_off, rx247_pos, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
    eq $I10, 1, rx247_restart
    if_null rx247_debug, debug_399
    rx247_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan250_done
    goto rxscan250_scan
  rxscan250_loop:
    (rx247_pos) = rx247_cur."from"()
    inc rx247_pos
    rx247_cur."!cursor_from"(rx247_pos)
    ge rx247_pos, rx247_eos, rxscan250_done
  rxscan250_scan:
    set_addr $I10, rxscan250_loop
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  rxscan250_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx247_pos, 2
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 2
    ne $S10, "\\t", rx247_fail
    add rx247_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."quotemod_check"("b")
    unless $P10, rx247_fail
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "quote_escape:sym<tab>")
    if_null rx247_debug, debug_400
    rx247_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx247_pos)
  debug_400:
    .return (rx247_cur)
  rx247_restart:
.annotate 'line', 40
    if_null rx247_debug, debug_401
    rx247_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_401:
  rx247_fail:
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    if_null rx247_debug, debug_402
    rx247_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_402:
    .return (rx247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1302969596.256") :method
.annotate 'line', 40
    new $P249, "ResizablePMCArray"
    push $P249, "\\t"
    .return ($P249)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_debug
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    gt rx252_pos, rx252_eos, rx252_done
    set rx252_off, 0
    lt rx252_pos, 2, rx252_start
    sub rx252_off, rx252_pos, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
    eq $I10, 1, rx252_restart
    if_null rx252_debug, debug_403
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan255_done
    goto rxscan255_scan
  rxscan255_loop:
    (rx252_pos) = rx252_cur."from"()
    inc rx252_pos
    rx252_cur."!cursor_from"(rx252_pos)
    ge rx252_pos, rx252_eos, rxscan255_done
  rxscan255_scan:
    set_addr $I10, rxscan255_loop
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  rxscan255_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx252_pos, 2
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 2
    ne $S10, "\\f", rx252_fail
    add rx252_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."quotemod_check"("b")
    unless $P10, rx252_fail
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "quote_escape:sym<ff>")
    if_null rx252_debug, debug_404
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx252_pos)
  debug_404:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 40
    if_null rx252_debug, debug_405
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_405:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_406
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_406:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1302969596.256") :method
.annotate 'line', 40
    new $P254, "ResizablePMCArray"
    push $P254, "\\f"
    .return ($P254)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_debug
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    gt rx257_pos, rx257_eos, rx257_done
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    eq $I10, 1, rx257_restart
    if_null rx257_debug, debug_407
    rx257_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan260_done
    goto rxscan260_scan
  rxscan260_loop:
    (rx257_pos) = rx257_cur."from"()
    inc rx257_pos
    rx257_cur."!cursor_from"(rx257_pos)
    ge rx257_pos, rx257_eos, rxscan260_done
  rxscan260_scan:
    set_addr $I10, rxscan260_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan260_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 2
    ne $S10, "\\e", rx257_fail
    add rx257_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."quotemod_check"("b")
    unless $P10, rx257_fail
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "quote_escape:sym<esc>")
    if_null rx257_debug, debug_408
    rx257_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx257_pos)
  debug_408:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 40
    if_null rx257_debug, debug_409
    rx257_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_409:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_410
    rx257_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_410:
    .return (rx257_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1302969596.256") :method
.annotate 'line', 40
    new $P259, "ResizablePMCArray"
    push $P259, "\\e"
    .return ($P259)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    .local pmc rx262_debug
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    gt rx262_pos, rx262_eos, rx262_done
    set rx262_off, 0
    lt rx262_pos, 2, rx262_start
    sub rx262_off, rx262_pos, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
    eq $I10, 1, rx262_restart
    if_null rx262_debug, debug_411
    rx262_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan265_done
    goto rxscan265_scan
  rxscan265_loop:
    (rx262_pos) = rx262_cur."from"()
    inc rx262_pos
    rx262_cur."!cursor_from"(rx262_pos)
    ge rx262_pos, rx262_eos, rxscan265_done
  rxscan265_scan:
    set_addr $I10, rxscan265_loop
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  rxscan265_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx262_pos, 2
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx262_fail
    add rx262_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."quotemod_check"("b")
    unless $P10, rx262_fail
  alt266_0:
.annotate 'line', 98
    set_addr $I10, alt266_1
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."hexint"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx262_pos = $P10."pos"()
    goto alt266_end
  alt266_1:
  # rx literal  "["
    add $I11, rx262_pos, 1
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    ord $I11, rx262_tgt, $I11
    ne $I11, 91, rx262_fail
    add rx262_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."hexints"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx262_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx262_pos, 1
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    ord $I11, rx262_tgt, $I11
    ne $I11, 93, rx262_fail
    add rx262_pos, 1
  alt266_end:
.annotate 'line', 96
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "quote_escape:sym<hex>")
    if_null rx262_debug, debug_412
    rx262_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx262_pos)
  debug_412:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 40
    if_null rx262_debug, debug_413
    rx262_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_413:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_414
    rx262_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_414:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1302969596.256") :method
.annotate 'line', 40
    new $P264, "ResizablePMCArray"
    push $P264, unicode:"\\x"
    .return ($P264)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    .local pmc rx268_debug
    (rx268_cur, rx268_pos, rx268_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx268_cur
    .local pmc match
    .lex "$/", match
    length rx268_eos, rx268_tgt
    gt rx268_pos, rx268_eos, rx268_done
    set rx268_off, 0
    lt rx268_pos, 2, rx268_start
    sub rx268_off, rx268_pos, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
    eq $I10, 1, rx268_restart
    if_null rx268_debug, debug_415
    rx268_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan271_done
    goto rxscan271_scan
  rxscan271_loop:
    (rx268_pos) = rx268_cur."from"()
    inc rx268_pos
    rx268_cur."!cursor_from"(rx268_pos)
    ge rx268_pos, rx268_eos, rxscan271_done
  rxscan271_scan:
    set_addr $I10, rxscan271_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  rxscan271_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx268_pos, 2
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I11, 2
    ne $S10, "\\o", rx268_fail
    add rx268_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."quotemod_check"("b")
    unless $P10, rx268_fail
  alt272_0:
.annotate 'line', 102
    set_addr $I10, alt272_1
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."octint"()
    unless $P10, rx268_fail
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx268_pos = $P10."pos"()
    goto alt272_end
  alt272_1:
  # rx literal  "["
    add $I11, rx268_pos, 1
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    ord $I11, rx268_tgt, $I11
    ne $I11, 91, rx268_fail
    add rx268_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."octints"()
    unless $P10, rx268_fail
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx268_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx268_pos, 1
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    ord $I11, rx268_tgt, $I11
    ne $I11, 93, rx268_fail
    add rx268_pos, 1
  alt272_end:
.annotate 'line', 100
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "quote_escape:sym<oct>")
    if_null rx268_debug, debug_416
    rx268_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx268_pos)
  debug_416:
    .return (rx268_cur)
  rx268_restart:
.annotate 'line', 40
    if_null rx268_debug, debug_417
    rx268_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_417:
  rx268_fail:
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    if_null rx268_debug, debug_418
    rx268_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_418:
    .return (rx268_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1302969596.256") :method
.annotate 'line', 40
    new $P270, "ResizablePMCArray"
    push $P270, "\\o"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    .local pmc rx274_debug
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    gt rx274_pos, rx274_eos, rx274_done
    set rx274_off, 0
    lt rx274_pos, 2, rx274_start
    sub rx274_off, rx274_pos, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
    eq $I10, 1, rx274_restart
    if_null rx274_debug, debug_419
    rx274_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan277_done
    goto rxscan277_scan
  rxscan277_loop:
    (rx274_pos) = rx274_cur."from"()
    inc rx274_pos
    rx274_cur."!cursor_from"(rx274_pos)
    ge rx274_pos, rx274_eos, rxscan277_done
  rxscan277_scan:
    set_addr $I10, rxscan277_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan277_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx274_pos, 2
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    substr $S10, rx274_tgt, $I11, 2
    ne $S10, "\\c", rx274_fail
    add rx274_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."quotemod_check"("b")
    unless $P10, rx274_fail
  # rx subrule "charspec" subtype=capture negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."charspec"()
    unless $P10, rx274_fail
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx274_pos = $P10."pos"()
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "quote_escape:sym<chr>")
    if_null rx274_debug, debug_420
    rx274_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx274_pos)
  debug_420:
    .return (rx274_cur)
  rx274_restart:
.annotate 'line', 40
    if_null rx274_debug, debug_421
    rx274_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_421:
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    if_null rx274_debug, debug_422
    rx274_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_422:
    .return (rx274_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1302969596.256") :method
.annotate 'line', 40
    new $P276, "ResizablePMCArray"
    push $P276, "\\c"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx279_tgt
    .local int rx279_pos
    .local int rx279_off
    .local int rx279_eos
    .local int rx279_rep
    .local pmc rx279_cur
    .local pmc rx279_debug
    (rx279_cur, rx279_pos, rx279_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx279_cur
    .local pmc match
    .lex "$/", match
    length rx279_eos, rx279_tgt
    gt rx279_pos, rx279_eos, rx279_done
    set rx279_off, 0
    lt rx279_pos, 2, rx279_start
    sub rx279_off, rx279_pos, 1
    substr rx279_tgt, rx279_tgt, rx279_off
  rx279_start:
    eq $I10, 1, rx279_restart
    if_null rx279_debug, debug_423
    rx279_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan282_done
    goto rxscan282_scan
  rxscan282_loop:
    (rx279_pos) = rx279_cur."from"()
    inc rx279_pos
    rx279_cur."!cursor_from"(rx279_pos)
    ge rx279_pos, rx279_eos, rxscan282_done
  rxscan282_scan:
    set_addr $I10, rxscan282_loop
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  rxscan282_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx279_pos, 1
    gt $I11, rx279_eos, rx279_fail
    sub $I11, rx279_pos, rx279_off
    ord $I11, rx279_tgt, $I11
    ne $I11, 92, rx279_fail
    add rx279_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_283_fail
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  # rx literal  "0"
    add $I11, rx279_pos, 1
    gt $I11, rx279_eos, rx279_fail
    sub $I11, rx279_pos, rx279_off
    ord $I11, rx279_tgt, $I11
    ne $I11, 48, rx279_fail
    add rx279_pos, 1
    set_addr $I10, rxcap_283_fail
    ($I12, $I11) = rx279_cur."!mark_peek"($I10)
    rx279_cur."!cursor_pos"($I11)
    ($P10) = rx279_cur."!cursor_start"()
    $P10."!cursor_pass"(rx279_pos, "")
    rx279_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_283_done
  rxcap_283_fail:
    goto rx279_fail
  rxcap_283_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx279_cur."!cursor_pos"(rx279_pos)
    $P10 = rx279_cur."quotemod_check"("b")
    unless $P10, rx279_fail
  # rx pass
    rx279_cur."!cursor_pass"(rx279_pos, "quote_escape:sym<0>")
    if_null rx279_debug, debug_424
    rx279_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx279_pos)
  debug_424:
    .return (rx279_cur)
  rx279_restart:
.annotate 'line', 40
    if_null rx279_debug, debug_425
    rx279_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_425:
  rx279_fail:
    (rx279_rep, rx279_pos, $I10, $P10) = rx279_cur."!mark_fail"(0)
    lt rx279_pos, -1, rx279_done
    eq rx279_pos, -1, rx279_fail
    jump $I10
  rx279_done:
    rx279_cur."!cursor_fail"()
    if_null rx279_debug, debug_426
    rx279_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_426:
    .return (rx279_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1302969596.256") :method
.annotate 'line', 40
    new $P281, "ResizablePMCArray"
    push $P281, "\\0"
    .return ($P281)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .const 'Sub' $P304 = "97_1302969596.256" 
    capture_lex $P304
    .const 'Sub' $P297 = "96_1302969596.256" 
    capture_lex $P297
    .const 'Sub' $P292 = "95_1302969596.256" 
    capture_lex $P292
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    .local pmc rx285_debug
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx285_cur
    .local pmc match
    .lex "$/", match
    length rx285_eos, rx285_tgt
    gt rx285_pos, rx285_eos, rx285_done
    set rx285_off, 0
    lt rx285_pos, 2, rx285_start
    sub rx285_off, rx285_pos, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
    eq $I10, 1, rx285_restart
    if_null rx285_debug, debug_427
    rx285_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan288_done
    goto rxscan288_scan
  rxscan288_loop:
    (rx285_pos) = rx285_cur."from"()
    inc rx285_pos
    rx285_cur."!cursor_from"(rx285_pos)
    ge rx285_pos, rx285_eos, rxscan288_done
  rxscan288_scan:
    set_addr $I10, rxscan288_loop
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  rxscan288_done:
.annotate 'line', 107
    rx285_cur."!cursor_pos"(rx285_pos)
    find_lex $P289, unicode:"$\x{a2}"
    $P290 = $P289."MATCH"()
    store_lex "$/", $P290
    .const 'Sub' $P292 = "95_1302969596.256" 
    capture_lex $P292
    $P293 = $P292()
  # rx literal  "\\"
    add $I11, rx285_pos, 1
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    ord $I11, rx285_tgt, $I11
    ne $I11, 92, rx285_fail
    add rx285_pos, 1
  alt294_0:
.annotate 'line', 108
    set_addr $I10, alt294_1
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."quotemod_check"("b")
    unless $P10, rx285_fail
  alt295_0:
.annotate 'line', 110
    set_addr $I10, alt295_1
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
.annotate 'line', 111
  # rx subrule $P297 subtype=capture negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    .const 'Sub' $P297 = "96_1302969596.256" 
    capture_lex $P297
    $P10 = rx285_cur.$P297()
    unless $P10, rx285_fail
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx285_pos = $P10."pos"()
    goto alt295_end
  alt295_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_300_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx charclass w
    ge rx285_pos, rx285_eos, rx285_fail
    sub $I10, rx285_pos, rx285_off
    is_cclass $I11, 8192, rx285_tgt, $I10
    unless $I11, rx285_fail
    inc rx285_pos
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx285_fail
  rxcap_300_done:
    rx285_cur."!cursor_pos"(rx285_pos)
    find_lex $P301, unicode:"$\x{a2}"
    $P302 = $P301."MATCH"()
    store_lex "$/", $P302
    .const 'Sub' $P304 = "97_1302969596.256" 
    capture_lex $P304
    $P314 = $P304()
  alt295_end:
.annotate 'line', 109
    goto alt294_end
  alt294_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_315_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx charclass .
    ge rx285_pos, rx285_eos, rx285_fail
    inc rx285_pos
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx285_fail
  rxcap_315_done:
  alt294_end:
.annotate 'line', 106
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "quote_escape:sym<misc>")
    if_null rx285_debug, debug_434
    rx285_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx285_pos)
  debug_434:
    .return (rx285_cur)
  rx285_restart:
.annotate 'line', 40
    if_null rx285_debug, debug_435
    rx285_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_435:
  rx285_fail:
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    if_null rx285_debug, debug_436
    rx285_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_436:
    .return (rx285_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1302969596.256") :method
.annotate 'line', 40
    new $P287, "ResizablePMCArray"
    push $P287, ""
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block291"  :anon :subid("95_1302969596.256") :outer("93_1302969596.256")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block296"  :anon :subid("96_1302969596.256") :method :outer("93_1302969596.256")
.annotate 'line', 111
    .local string rx298_tgt
    .local int rx298_pos
    .local int rx298_off
    .local int rx298_eos
    .local int rx298_rep
    .local pmc rx298_cur
    .local pmc rx298_debug
    (rx298_cur, rx298_pos, rx298_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx298_cur
    .local pmc match
    .lex "$/", match
    length rx298_eos, rx298_tgt
    gt rx298_pos, rx298_eos, rx298_done
    set rx298_off, 0
    lt rx298_pos, 2, rx298_start
    sub rx298_off, rx298_pos, 1
    substr rx298_tgt, rx298_tgt, rx298_off
  rx298_start:
    eq $I10, 1, rx298_restart
    if_null rx298_debug, debug_428
    rx298_cur."!cursor_debug"("START", "")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan299_done
    goto rxscan299_scan
  rxscan299_loop:
    (rx298_pos) = rx298_cur."from"()
    inc rx298_pos
    rx298_cur."!cursor_from"(rx298_pos)
    ge rx298_pos, rx298_eos, rxscan299_done
  rxscan299_scan:
    set_addr $I10, rxscan299_loop
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  rxscan299_done:
  # rx charclass W
    ge rx298_pos, rx298_eos, rx298_fail
    sub $I10, rx298_pos, rx298_off
    is_cclass $I11, 8192, rx298_tgt, $I10
    if $I11, rx298_fail
    inc rx298_pos
  # rx pass
    rx298_cur."!cursor_pass"(rx298_pos, "")
    if_null rx298_debug, debug_429
    rx298_cur."!cursor_debug"("PASS", "", " at pos=", rx298_pos)
  debug_429:
    .return (rx298_cur)
  rx298_restart:
    if_null rx298_debug, debug_430
    rx298_cur."!cursor_debug"("NEXT", "")
  debug_430:
  rx298_fail:
    (rx298_rep, rx298_pos, $I10, $P10) = rx298_cur."!mark_fail"(0)
    lt rx298_pos, -1, rx298_done
    eq rx298_pos, -1, rx298_fail
    jump $I10
  rx298_done:
    rx298_cur."!cursor_fail"()
    if_null rx298_debug, debug_431
    rx298_cur."!cursor_debug"("FAIL", "")
  debug_431:
    .return (rx298_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block303"  :anon :subid("97_1302969596.256") :outer("93_1302969596.256")
.annotate 'line', 112
    find_lex $P305, "$/"
    $P306 = $P305."CURSOR"()
    new $P307, "String"
    assign $P307, "Unrecognized backslash sequence: '\\"
    find_lex $P308, "$/"
    unless_null $P308, vivify_432
    $P308 = root_new ['parrot';'Hash']
  vivify_432:
    set $P309, $P308["x"]
    unless_null $P309, vivify_433
    new $P309, "Undef"
  vivify_433:
    $S310 = $P309."Str"()
    concat $P311, $P307, $S310
    concat $P312, $P311, "'"
    $P313 = $P306."panic"($P312)
    .return ($P313)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .const 'Sub' $P326 = "100_1302969596.256" 
    capture_lex $P326
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    .local pmc rx317_debug
    (rx317_cur, rx317_pos, rx317_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx317_cur
    .local pmc match
    .lex "$/", match
    length rx317_eos, rx317_tgt
    gt rx317_pos, rx317_eos, rx317_done
    set rx317_off, 0
    lt rx317_pos, 2, rx317_start
    sub rx317_off, rx317_pos, 1
    substr rx317_tgt, rx317_tgt, rx317_off
  rx317_start:
    eq $I10, 1, rx317_restart
    if_null rx317_debug, debug_437
    rx317_cur."!cursor_debug"("START", "charname")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan321_done
    goto rxscan321_scan
  rxscan321_loop:
    (rx317_pos) = rx317_cur."from"()
    inc rx317_pos
    rx317_cur."!cursor_from"(rx317_pos)
    ge rx317_pos, rx317_eos, rxscan321_done
  rxscan321_scan:
    set_addr $I10, rxscan321_loop
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  rxscan321_done:
  alt322_0:
.annotate 'line', 118
    set_addr $I10, alt322_1
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx317_cur."!cursor_pos"(rx317_pos)
    $P10 = rx317_cur."integer"()
    unless $P10, rx317_fail
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx317_pos = $P10."pos"()
    goto alt322_end
  alt322_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx317_pos, rx317_eos, rx317_fail
    sub $I10, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx317_fail
    inc rx317_pos
  # rx rxquantf323 ** 0..*
    set_addr $I10, rxquantf323_loop
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
    goto rxquantf323_done
  rxquantf323_loop:
  # rx enumcharlist negate=1 
    ge rx317_pos, rx317_eos, rx317_fail
    sub $I10, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx317_fail
    inc rx317_pos
    set_addr $I10, rxquantf323_loop
    rx317_cur."!mark_push"(rx317_rep, rx317_pos, $I10)
  rxquantf323_done:
  # rx enumcharlist negate=0 
    ge rx317_pos, rx317_eos, rx317_fail
    sub $I10, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx317_fail
    inc rx317_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx317_cur."!cursor_pos"(rx317_pos)
    .const 'Sub' $P326 = "100_1302969596.256" 
    capture_lex $P326
    $P10 = rx317_cur."before"($P326)
    unless $P10, rx317_fail
  alt322_end:
.annotate 'line', 118
  # rx pass
    rx317_cur."!cursor_pass"(rx317_pos, "charname")
    if_null rx317_debug, debug_442
    rx317_cur."!cursor_debug"("PASS", "charname", " at pos=", rx317_pos)
  debug_442:
    .return (rx317_cur)
  rx317_restart:
.annotate 'line', 40
    if_null rx317_debug, debug_443
    rx317_cur."!cursor_debug"("NEXT", "charname")
  debug_443:
  rx317_fail:
    (rx317_rep, rx317_pos, $I10, $P10) = rx317_cur."!mark_fail"(0)
    lt rx317_pos, -1, rx317_done
    eq rx317_pos, -1, rx317_fail
    jump $I10
  rx317_done:
    rx317_cur."!cursor_fail"()
    if_null rx317_debug, debug_444
    rx317_cur."!cursor_debug"("FAIL", "charname")
  debug_444:
    .return (rx317_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1302969596.256") :method
.annotate 'line', 40
    $P319 = self."!PREFIX__!subrule"("integer", "")
    new $P320, "ResizablePMCArray"
    push $P320, "Z"
    push $P320, "Y"
    push $P320, "X"
    push $P320, "W"
    push $P320, "V"
    push $P320, "U"
    push $P320, "T"
    push $P320, "S"
    push $P320, "R"
    push $P320, "Q"
    push $P320, "P"
    push $P320, "O"
    push $P320, "N"
    push $P320, "M"
    push $P320, "L"
    push $P320, "K"
    push $P320, "J"
    push $P320, "I"
    push $P320, "H"
    push $P320, "G"
    push $P320, "F"
    push $P320, "E"
    push $P320, "D"
    push $P320, "C"
    push $P320, "B"
    push $P320, "A"
    push $P320, "z"
    push $P320, "y"
    push $P320, "x"
    push $P320, "w"
    push $P320, "v"
    push $P320, "u"
    push $P320, "t"
    push $P320, "s"
    push $P320, "r"
    push $P320, "q"
    push $P320, "p"
    push $P320, "o"
    push $P320, "n"
    push $P320, "m"
    push $P320, "l"
    push $P320, "k"
    push $P320, "j"
    push $P320, "i"
    push $P320, "h"
    push $P320, "g"
    push $P320, "f"
    push $P320, "e"
    push $P320, "d"
    push $P320, "c"
    push $P320, "b"
    push $P320, "a"
    push $P320, $P319
    .return ($P320)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block325"  :anon :subid("100_1302969596.256") :method :outer("98_1302969596.256")
.annotate 'line', 121
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_debug
    (rx327_cur, rx327_pos, rx327_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx327_cur
    .local pmc match
    .lex "$/", match
    length rx327_eos, rx327_tgt
    gt rx327_pos, rx327_eos, rx327_done
    set rx327_off, 0
    lt rx327_pos, 2, rx327_start
    sub rx327_off, rx327_pos, 1
    substr rx327_tgt, rx327_tgt, rx327_off
  rx327_start:
    eq $I10, 1, rx327_restart
    if_null rx327_debug, debug_438
    rx327_cur."!cursor_debug"("START", "")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    (rx327_pos) = rx327_cur."from"()
    inc rx327_pos
    rx327_cur."!cursor_from"(rx327_pos)
    ge rx327_pos, rx327_eos, rxscan328_done
  rxscan328_scan:
    set_addr $I10, rxscan328_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
  rxscan328_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx327_pos, rx327_off
    find_not_cclass $I11, 32, rx327_tgt, $I10, rx327_eos
    add rx327_pos, rx327_off, $I11
  # rx enumcharlist negate=0 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx327_fail
    inc rx327_pos
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "")
    if_null rx327_debug, debug_439
    rx327_cur."!cursor_debug"("PASS", "", " at pos=", rx327_pos)
  debug_439:
    .return (rx327_cur)
  rx327_restart:
    if_null rx327_debug, debug_440
    rx327_cur."!cursor_debug"("NEXT", "")
  debug_440:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_441
    rx327_cur."!cursor_debug"("FAIL", "")
  debug_441:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    .local pmc rx330_debug
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    rx330_cur."!cursor_caparray"("charname")
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
    if_null rx330_debug, debug_445
    rx330_cur."!cursor_debug"("START", "charnames")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan333_done
    goto rxscan333_scan
  rxscan333_loop:
    (rx330_pos) = rx330_cur."from"()
    inc rx330_pos
    rx330_cur."!cursor_from"(rx330_pos)
    ge rx330_pos, rx330_eos, rxscan333_done
  rxscan333_scan:
    set_addr $I10, rxscan333_loop
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  rxscan333_done:
.annotate 'line', 123
  # rx rxquantr334 ** 1..*
    set_addr $I10, rxquantr334_done
    rx330_cur."!mark_push"(0, -1, $I10)
  rxquantr334_loop:
  # rx subrule "ws" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."ws"()
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."charname"()
    unless $P10, rx330_fail
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx330_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."ws"()
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
    set_addr $I10, rxquantr334_done
    (rx330_rep) = rx330_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr334_done
    rx330_cur."!mark_push"(rx330_rep, rx330_pos, $I10)
  # rx literal  ","
    add $I11, rx330_pos, 1
    gt $I11, rx330_eos, rx330_fail
    sub $I11, rx330_pos, rx330_off
    ord $I11, rx330_tgt, $I11
    ne $I11, 44, rx330_fail
    add rx330_pos, 1
    goto rxquantr334_loop
  rxquantr334_done:
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "charnames")
    if_null rx330_debug, debug_446
    rx330_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx330_pos)
  debug_446:
    .return (rx330_cur)
  rx330_restart:
.annotate 'line', 40
    if_null rx330_debug, debug_447
    rx330_cur."!cursor_debug"("NEXT", "charnames")
  debug_447:
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    if_null rx330_debug, debug_448
    rx330_cur."!cursor_debug"("FAIL", "charnames")
  debug_448:
    .return (rx330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1302969596.256") :method
.annotate 'line', 40
    new $P332, "ResizablePMCArray"
    push $P332, ""
    .return ($P332)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1302969596.256") :method :outer("11_1302969596.256")
.annotate 'line', 40
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
    if_null rx336_debug, debug_449
    rx336_cur."!cursor_debug"("START", "charspec")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan341_done
    goto rxscan341_scan
  rxscan341_loop:
    (rx336_pos) = rx336_cur."from"()
    inc rx336_pos
    rx336_cur."!cursor_from"(rx336_pos)
    ge rx336_pos, rx336_eos, rxscan341_done
  rxscan341_scan:
    set_addr $I10, rxscan341_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan341_done:
  alt342_0:
.annotate 'line', 125
    set_addr $I10, alt342_1
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    ord $I11, rx336_tgt, $I11
    ne $I11, 91, rx336_fail
    add rx336_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."charnames"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx336_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    ord $I11, rx336_tgt, $I11
    ne $I11, 93, rx336_fail
    add rx336_pos, 1
    goto alt342_end
  alt342_1:
    set_addr $I10, alt342_2
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 8, rx336_tgt, $I10, rx336_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx336_fail
    add rx336_pos, rx336_off, $I11
  # rx rxquantr343 ** 0..*
    set_addr $I10, rxquantr343_done
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxquantr343_loop:
  # rx literal  "_"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    ord $I11, rx336_tgt, $I11
    ne $I11, 95, rx336_fail
    add rx336_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 8, rx336_tgt, $I10, rx336_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx336_fail
    add rx336_pos, rx336_off, $I11
    set_addr $I10, rxquantr343_done
    (rx336_rep) = rx336_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr343_done
    rx336_cur."!mark_push"(rx336_rep, rx336_pos, $I10)
    goto rxquantr343_loop
  rxquantr343_done:
    goto alt342_end
  alt342_2:
    set_addr $I10, alt342_3
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx336_pos, rx336_eos, rx336_fail
    sub $I10, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx336_fail
    inc rx336_pos
    goto alt342_end
  alt342_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."panic"("Unrecognized \\c character")
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  alt342_end:
.annotate 'line', 124
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "charspec")
    if_null rx336_debug, debug_450
    rx336_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx336_pos)
  debug_450:
    .return (rx336_cur)
  rx336_restart:
.annotate 'line', 40
    if_null rx336_debug, debug_451
    rx336_cur."!cursor_debug"("NEXT", "charspec")
  debug_451:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_452
    rx336_cur."!cursor_debug"("FAIL", "charspec")
  debug_452:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1302969596.256") :method
.annotate 'line', 40
    $P338 = self."!PREFIX__!subrule"("panic", "")
    $P339 = self."!PREFIX__!subrule"("charnames", "[")
    new $P340, "ResizablePMCArray"
    push $P340, $P338
    push $P340, "Z"
    push $P340, "Y"
    push $P340, "X"
    push $P340, "W"
    push $P340, "V"
    push $P340, "U"
    push $P340, "T"
    push $P340, "S"
    push $P340, "R"
    push $P340, "Q"
    push $P340, "P"
    push $P340, "O"
    push $P340, "N"
    push $P340, "M"
    push $P340, "L"
    push $P340, "K"
    push $P340, "J"
    push $P340, "I"
    push $P340, "H"
    push $P340, "G"
    push $P340, "F"
    push $P340, "E"
    push $P340, "D"
    push $P340, "C"
    push $P340, "B"
    push $P340, "A"
    push $P340, "@"
    push $P340, "?"
    push $P340, ""
    push $P340, $P339
    .return ($P340)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_345
    .param pmc param_346
    .param pmc param_347 :optional
    .param int has_param_347 :opt_flag
.annotate 'line', 175
    .lex "self", param_345
    .lex "$spec", param_346
    if has_param_347, optparam_453
    new $P348, "Undef"
    set param_347, $P348
  optparam_453:
    .lex "$save", param_347
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
.sub "panic"  :subid("106_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_350
    .param pmc param_351 :slurpy
.annotate 'line', 323
    .lex "self", param_350
    .lex "@args", param_351
.annotate 'line', 324
    new $P352, "Undef"
    .lex "$pos", $P352
.annotate 'line', 325
    new $P353, "Undef"
    .lex "$target", $P353
.annotate 'line', 324
    find_lex $P354, "self"
    $P355 = $P354."pos"()
    store_lex "$pos", $P355
.annotate 'line', 325
    find_lex $P356, "self"
    get_hll_global $P357, ["Regex"], "Cursor"
    getattribute $P358, $P356, $P357, "$!target"
    store_lex "$target", $P358
.annotate 'line', 326
    find_lex $P359, "@args"
    $P359."push"(" at line ")
.annotate 'line', 327
    find_lex $P360, "@args"
    get_hll_global $P361, ["HLL"], "Compiler"
    find_lex $P362, "$target"
    find_lex $P363, "$pos"
    $P364 = $P361."lineof"($P362, $P363)
    add $P365, $P364, 1
    $P360."push"($P365)
.annotate 'line', 328
    find_lex $P366, "@args"
    $P366."push"(", near \"")
.annotate 'line', 329
    find_lex $P367, "@args"
    find_lex $P368, "$target"
    set $S369, $P368
    find_lex $P370, "$pos"
    set $I371, $P370
    substr $S372, $S369, $I371, 10
    escape $S373, $S372
    $P367."push"($S373)
.annotate 'line', 330
    find_lex $P374, "@args"
    $P374."push"("\"")
.annotate 'line', 331
    find_lex $P375, "@args"
    join $S376, "", $P375
    die $S376
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_378
    .param pmc param_379
    .param pmc param_380
.annotate 'line', 344
    .lex "self", param_378
    .lex "$target", param_379
    .lex "$pos", param_380
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
.sub "quote_EXPR"  :subid("108_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_382
    .param pmc param_383 :slurpy
.annotate 'line', 406
    .lex "self", param_382
    .lex "@args", param_383
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
.sub "quotemod_check" :nsentry :subid("109_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_385
    .param pmc param_386
.annotate 'line', 477
    .lex "self", param_385
    .lex "$mod", param_386
    find_lex $P387, "$mod"
    find_dynamic_lex $P388, "%*QUOTEMOD"
    unless_null $P388, vivify_454
    get_hll_global $P388, "%QUOTEMOD"
    unless_null $P388, vivify_455
    die "Contextual %*QUOTEMOD not found"
  vivify_455:
  vivify_454:
    set $P389, $P388[$P387]
    unless_null $P389, vivify_456
    new $P389, "Undef"
  vivify_456:
    .return ($P389)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_391
.annotate 'line', 481
    .lex "self", param_391
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
.sub "stopper"  :subid("111_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_393
.annotate 'line', 504
    .lex "self", param_393
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
.sub "split_words" :nsentry :subid("112_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_395
    .param pmc param_396
.annotate 'line', 527
    .lex "self", param_395
    .lex "$words", param_396
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
.sub "EXPR"  :subid("113_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_398
    .param pmc param_399 :optional
    .param int has_param_399 :opt_flag
.annotate 'line', 559
    .lex "self", param_398
    if has_param_399, optparam_457
    new $P400, "String"
    assign $P400, ""
    set param_399, $P400
  optparam_457:
    .lex "$preclim", param_399
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
.sub "EXPR_reduce"  :subid("114_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_402
    .param pmc param_403
    .param pmc param_404
.annotate 'line', 737
    .lex "self", param_402
    .lex "$termstack", param_403
    .lex "$opstack", param_404
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
.sub "ternary"  :subid("115_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_406
    .param pmc param_407
.annotate 'line', 805
    .lex "self", param_406
    .lex "$match", param_407
.annotate 'line', 806
    find_lex $P408, "$match"
    unless_null $P408, vivify_458
    $P408 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    set $P409, $P408[1]
    unless_null $P409, vivify_459
    new $P409, "Undef"
  vivify_459:
    find_lex $P410, "$match"
    unless_null $P410, vivify_460
    $P410 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P410
  vivify_460:
    set $P410[2], $P409
.annotate 'line', 807
    find_lex $P411, "$match"
    unless_null $P411, vivify_461
    $P411 = root_new ['parrot';'Hash']
  vivify_461:
    set $P412, $P411["infix"]
    unless_null $P412, vivify_462
    $P412 = root_new ['parrot';'Hash']
  vivify_462:
    set $P413, $P412["EXPR"]
    unless_null $P413, vivify_463
    new $P413, "Undef"
  vivify_463:
    find_lex $P414, "$match"
    unless_null $P414, vivify_464
    $P414 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P414
  vivify_464:
    set $P414[1], $P413
.annotate 'line', 805
    .return ($P413)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_416
    .param pmc param_417
.annotate 'line', 810
    .lex "self", param_416
    .lex "$markname", param_417
.annotate 'line', 811
    new $P418, "Undef"
    .lex "$pos", $P418
.annotate 'line', 813
    $P419 = root_new ['parrot';'Hash']
    .lex "%markhash", $P419
.annotate 'line', 811
    find_lex $P420, "self"
    $P421 = $P420."pos"()
    store_lex "$pos", $P421
.annotate 'line', 812
    find_lex $P422, "self"
    find_lex $P423, "$markname"
    find_lex $P424, "$pos"
    $P422."!cursor_debug"("START", "MARKER name=", $P423, ", pos=", $P424)
.annotate 'line', 813

            $P425 = get_global '%!MARKHASH'
            unless null $P425 goto have_markhash
            $P425 = new ['Hash']
            set_global '%!MARKHASH', $P425
          have_markhash:
        
    store_lex "%markhash", $P425
.annotate 'line', 820
    find_lex $P426, "$pos"
    find_lex $P427, "$markname"
    find_lex $P428, "%markhash"
    unless_null $P428, vivify_465
    $P428 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P428
  vivify_465:
    set $P428[$P427], $P426
.annotate 'line', 821
    find_lex $P429, "self"
    $P429."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 810
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_431
    .param pmc param_432
.annotate 'line', 825
    .lex "self", param_431
    .lex "$markname", param_432
.annotate 'line', 826
    find_lex $P433, "self"
    find_lex $P434, "$markname"
    $P433."!cursor_debug"("START", "MARKED name=", $P434)
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
.sub "LANG"  :subid("118_1302969596.256") :outer("11_1302969596.256")
    .param pmc param_436
    .param pmc param_437
    .param pmc param_438
.annotate 'line', 845
    .lex "self", param_436
    .lex "$lang", param_437
    .lex "$regex", param_438
.annotate 'line', 846
    new $P439, "Undef"
    .lex "$lang_cursor", $P439
.annotate 'line', 847
    new $P440, "Undef"
    .lex "$*ACTIONS", $P440
.annotate 'line', 848
    new $P441, "Undef"
    .lex "$cur", $P441
.annotate 'line', 846
    find_lex $P442, "$lang"
    find_dynamic_lex $P443, "%*LANG"
    unless_null $P443, vivify_466
    get_hll_global $P443, "%LANG"
    unless_null $P443, vivify_467
    die "Contextual %*LANG not found"
  vivify_467:
  vivify_466:
    set $P444, $P443[$P442]
    unless_null $P444, vivify_468
    new $P444, "Undef"
  vivify_468:
    store_lex "$lang_cursor", $P444
.annotate 'line', 847
    find_lex $P445, "$lang"
    concat $P446, $P445, "-actions"
    find_dynamic_lex $P447, "%*LANG"
    unless_null $P447, vivify_469
    get_hll_global $P447, "%LANG"
    unless_null $P447, vivify_470
    die "Contextual %*LANG not found"
  vivify_470:
  vivify_469:
    set $P448, $P447[$P446]
    unless_null $P448, vivify_471
    new $P448, "Undef"
  vivify_471:
    store_lex "$*ACTIONS", $P448
.annotate 'line', 848

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P449, pos) = self.'!cursor_start'($P0)
            $P449.'!cursor_pos'(pos)
        
    store_lex "$cur", $P449
.annotate 'line', 856
    find_lex $P450, "$cur"
    find_lex $P451, "$regex"
    set $S452, $P451
    $P453 = $P450.$S452()
.annotate 'line', 845
    .return ($P453)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block668"  :subid("120_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 861
    .const 'Sub' $P1316 = "166_1302969596.256" 
    capture_lex $P1316
    .const 'Sub' $P1297 = "165_1302969596.256" 
    capture_lex $P1297
    .const 'Sub' $P1274 = "163_1302969596.256" 
    capture_lex $P1274
    .const 'Sub' $P1246 = "162_1302969596.256" 
    capture_lex $P1246
    .const 'Sub' $P1229 = "161_1302969596.256" 
    capture_lex $P1229
    .const 'Sub' $P1224 = "160_1302969596.256" 
    capture_lex $P1224
    .const 'Sub' $P1216 = "159_1302969596.256" 
    capture_lex $P1216
    .const 'Sub' $P1201 = "158_1302969596.256" 
    capture_lex $P1201
    .const 'Sub' $P1186 = "157_1302969596.256" 
    capture_lex $P1186
    .const 'Sub' $P1181 = "156_1302969596.256" 
    capture_lex $P1181
    .const 'Sub' $P1176 = "155_1302969596.256" 
    capture_lex $P1176
    .const 'Sub' $P1171 = "154_1302969596.256" 
    capture_lex $P1171
    .const 'Sub' $P1166 = "153_1302969596.256" 
    capture_lex $P1166
    .const 'Sub' $P1161 = "152_1302969596.256" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "151_1302969596.256" 
    capture_lex $P1156
    .const 'Sub' $P1148 = "150_1302969596.256" 
    capture_lex $P1148
    .const 'Sub' $P1143 = "149_1302969596.256" 
    capture_lex $P1143
    .const 'Sub' $P1129 = "148_1302969596.256" 
    capture_lex $P1129
    .const 'Sub' $P1056 = "146_1302969596.256" 
    capture_lex $P1056
    .const 'Sub' $P995 = "143_1302969596.256" 
    capture_lex $P995
    .const 'Sub' $P988 = "142_1302969596.256" 
    capture_lex $P988
    .const 'Sub' $P981 = "141_1302969596.256" 
    capture_lex $P981
    .const 'Sub' $P974 = "140_1302969596.256" 
    capture_lex $P974
    .const 'Sub' $P967 = "139_1302969596.256" 
    capture_lex $P967
    .const 'Sub' $P960 = "138_1302969596.256" 
    capture_lex $P960
    .const 'Sub' $P952 = "137_1302969596.256" 
    capture_lex $P952
    .const 'Sub' $P944 = "136_1302969596.256" 
    capture_lex $P944
    .const 'Sub' $P938 = "135_1302969596.256" 
    capture_lex $P938
    .const 'Sub' $P930 = "134_1302969596.256" 
    capture_lex $P930
    .const 'Sub' $P922 = "133_1302969596.256" 
    capture_lex $P922
    .const 'Sub' $P817 = "130_1302969596.256" 
    capture_lex $P817
    .const 'Sub' $P781 = "127_1302969596.256" 
    capture_lex $P781
    .const 'Sub' $P776 = "126_1302969596.256" 
    capture_lex $P776
    .const 'Sub' $P740 = "123_1302969596.256" 
    capture_lex $P740
    .const 'Sub' $P670 = "121_1302969596.256" 
    capture_lex $P670
.annotate 'line', 862
    .const 'Sub' $P670 = "121_1302969596.256" 
    newclosure $P738, $P670
    .lex "string_to_int", $P738
.annotate 'line', 861
    find_lex $P739, "string_to_int"
    set_global "string_to_int", $P739
.annotate 'line', 881
    .const 'Sub' $P740 = "123_1302969596.256" 
    newclosure $P771, $P740
    .lex "ints_to_string", $P771
.annotate 'line', 861
    find_lex $P772, "ints_to_string"
    set_global "ints_to_string", $P772
    .lex "$?CLASS", $P773
    find_lex $P774, "string_to_int"
    find_lex $P775, "ints_to_string"
.annotate 'line', 1052
    .const 'Sub' $P1297 = "165_1302969596.256" 
    newclosure $P1312, $P1297
.annotate 'line', 861
    .return ($P1312)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post472") :outer("120_1302969596.256")
.annotate 'line', 861
    get_hll_global $P669, ["HLL";"Actions"], "_block668" 
    .local pmc block
    set block, $P669
    .const 'Sub' $P1313 = "121_1302969596.256" 
    set_global "string_to_int", $P1313
    .const 'Sub' $P1314 = "123_1302969596.256" 
    set_global "ints_to_string", $P1314
    .const 'Sub' $P1316 = "166_1302969596.256" 
    capture_lex $P1316
    $P1316()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1315"  :anon :subid("166_1302969596.256") :outer("120_1302969596.256")
.annotate 'line', 861
    nqp_get_sc_object $P1317, "1302969588.958", 1
    .local pmc type_obj
    set type_obj, $P1317
    get_how $P1318, type_obj
    .const 'Sub' $P1319 = "126_1302969596.256" 
    $P1318."add_method"(type_obj, "CTXSAVE", $P1319)
    get_how $P1320, type_obj
    .const 'Sub' $P1321 = "127_1302969596.256" 
    $P1320."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1321)
    get_how $P1322, type_obj
    .const 'Sub' $P1323 = "130_1302969596.256" 
    $P1322."add_method"(type_obj, "EXPR", $P1323)
    get_how $P1324, type_obj
    .const 'Sub' $P1325 = "133_1302969596.256" 
    $P1324."add_method"(type_obj, "term:sym<circumfix>", $P1325)
    get_how $P1326, type_obj
    .const 'Sub' $P1327 = "134_1302969596.256" 
    $P1326."add_method"(type_obj, "termish", $P1327)
    get_how $P1328, type_obj
    .const 'Sub' $P1329 = "135_1302969596.256" 
    $P1328."add_method"(type_obj, "nullterm", $P1329)
    get_how $P1330, type_obj
    .const 'Sub' $P1331 = "136_1302969596.256" 
    $P1330."add_method"(type_obj, "nullterm_alt", $P1331)
    get_how $P1332, type_obj
    .const 'Sub' $P1333 = "137_1302969596.256" 
    $P1332."add_method"(type_obj, "integer", $P1333)
    get_how $P1334, type_obj
    .const 'Sub' $P1335 = "138_1302969596.256" 
    $P1334."add_method"(type_obj, "dec_number", $P1335)
    get_how $P1336, type_obj
    .const 'Sub' $P1337 = "139_1302969596.256" 
    $P1336."add_method"(type_obj, "decint", $P1337)
    get_how $P1338, type_obj
    .const 'Sub' $P1339 = "140_1302969596.256" 
    $P1338."add_method"(type_obj, "hexint", $P1339)
    get_how $P1340, type_obj
    .const 'Sub' $P1341 = "141_1302969596.256" 
    $P1340."add_method"(type_obj, "octint", $P1341)
    get_how $P1342, type_obj
    .const 'Sub' $P1343 = "142_1302969596.256" 
    $P1342."add_method"(type_obj, "binint", $P1343)
    get_how $P1344, type_obj
    .const 'Sub' $P1345 = "143_1302969596.256" 
    $P1344."add_method"(type_obj, "quote_EXPR", $P1345)
    get_how $P1346, type_obj
    .const 'Sub' $P1347 = "146_1302969596.256" 
    $P1346."add_method"(type_obj, "quote_delimited", $P1347)
    get_how $P1348, type_obj
    .const 'Sub' $P1349 = "148_1302969596.256" 
    $P1348."add_method"(type_obj, "quote_atom", $P1349)
    get_how $P1350, type_obj
    .const 'Sub' $P1351 = "149_1302969596.256" 
    $P1350."add_method"(type_obj, "quote_escape:sym<backslash>", $P1351)
    get_how $P1352, type_obj
    .const 'Sub' $P1353 = "150_1302969596.256" 
    $P1352."add_method"(type_obj, "quote_escape:sym<stopper>", $P1353)
    get_how $P1354, type_obj
    .const 'Sub' $P1355 = "151_1302969596.256" 
    $P1354."add_method"(type_obj, "quote_escape:sym<bs>", $P1355)
    get_how $P1356, type_obj
    .const 'Sub' $P1357 = "152_1302969596.256" 
    $P1356."add_method"(type_obj, "quote_escape:sym<nl>", $P1357)
    get_how $P1358, type_obj
    .const 'Sub' $P1359 = "153_1302969596.256" 
    $P1358."add_method"(type_obj, "quote_escape:sym<cr>", $P1359)
    get_how $P1360, type_obj
    .const 'Sub' $P1361 = "154_1302969596.256" 
    $P1360."add_method"(type_obj, "quote_escape:sym<tab>", $P1361)
    get_how $P1362, type_obj
    .const 'Sub' $P1363 = "155_1302969596.256" 
    $P1362."add_method"(type_obj, "quote_escape:sym<ff>", $P1363)
    get_how $P1364, type_obj
    .const 'Sub' $P1365 = "156_1302969596.256" 
    $P1364."add_method"(type_obj, "quote_escape:sym<esc>", $P1365)
    get_how $P1366, type_obj
    .const 'Sub' $P1367 = "157_1302969596.256" 
    $P1366."add_method"(type_obj, "quote_escape:sym<hex>", $P1367)
    get_how $P1368, type_obj
    .const 'Sub' $P1369 = "158_1302969596.256" 
    $P1368."add_method"(type_obj, "quote_escape:sym<oct>", $P1369)
    get_how $P1370, type_obj
    .const 'Sub' $P1371 = "159_1302969596.256" 
    $P1370."add_method"(type_obj, "quote_escape:sym<chr>", $P1371)
    get_how $P1372, type_obj
    .const 'Sub' $P1373 = "160_1302969596.256" 
    $P1372."add_method"(type_obj, "quote_escape:sym<0>", $P1373)
    get_how $P1374, type_obj
    .const 'Sub' $P1375 = "161_1302969596.256" 
    $P1374."add_method"(type_obj, "quote_escape:sym<misc>", $P1375)
    get_how $P1376, type_obj
    .const 'Sub' $P1377 = "162_1302969596.256" 
    $P1376."add_method"(type_obj, "charname", $P1377)
    get_how $P1378, type_obj
    .const 'Sub' $P1379 = "163_1302969596.256" 
    $P1378."add_method"(type_obj, "charnames", $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "165_1302969596.256" 
    $P1380."add_method"(type_obj, "charspec", $P1381)
    get_how $P1382, type_obj
    $P1383 = $P1382."compose"(type_obj)
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_671
    .param pmc param_672
.annotate 'line', 862
    .const 'Sub' $P688 = "122_1302969596.256" 
    capture_lex $P688
    .lex "$src", param_671
    .lex "$base", param_672
.annotate 'line', 863
    new $P673, "Undef"
    .lex "$len", $P673
.annotate 'line', 864
    new $P674, "Undef"
    .lex "$i", $P674
.annotate 'line', 865
    new $P675, "Undef"
    .lex "$result", $P675
.annotate 'line', 863
    find_lex $P676, "$src"
    set $S677, $P676
    length $I678, $S677
    new $P679, 'Integer'
    set $P679, $I678
    store_lex "$len", $P679
.annotate 'line', 864
    new $P680, "Integer"
    assign $P680, 0
    store_lex "$i", $P680
.annotate 'line', 865
    new $P681, "Integer"
    assign $P681, 0
    store_lex "$result", $P681
.annotate 'line', 867
    new $P735, 'ExceptionHandler'
    set_label $P735, loop734_handler
    $P735."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P735
  loop734_test:
    find_lex $P682, "$i"
    set $N683, $P682
    find_lex $P684, "$len"
    set $N685, $P684
    islt $I686, $N683, $N685
    unless $I686, loop734_done
  loop734_redo:
    .const 'Sub' $P688 = "122_1302969596.256" 
    capture_lex $P688
    $P688()
  loop734_next:
    goto loop734_test
  loop734_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P736, exception, 'type'
    eq $P736, .CONTROL_LOOP_NEXT, loop734_next
    eq $P736, .CONTROL_LOOP_REDO, loop734_redo
  loop734_done:
    pop_eh 
    find_lex $P737, "$result"
.annotate 'line', 862
    .return ($P737)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block687"  :anon :subid("122_1302969596.256") :outer("121_1302969596.256")
.annotate 'line', 868
    new $P689, "Undef"
    .lex "$char", $P689
.annotate 'line', 870
    new $P690, "Undef"
    .lex "$digitval", $P690
.annotate 'line', 868
    find_lex $P691, "$src"
    set $S692, $P691
    find_lex $P693, "$i"
    set $I694, $P693
    substr $S695, $S692, $I694, 1
    new $P696, 'String'
    set $P696, $S695
    store_lex "$char", $P696
.annotate 'line', 869
    find_lex $P698, "$char"
    set $S699, $P698
    iseq $I700, $S699, "_"
    unless $I700, if_697_end
    set $I701, .CONTROL_LOOP_NEXT
    die 0, $I701
  if_697_end:
.annotate 'line', 870
    find_lex $P702, "$char"
    set $S703, $P702
    index $I704, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S703
    new $P705, 'Integer'
    set $P705, $I704
    store_lex "$digitval", $P705
.annotate 'line', 871
    find_lex $P706, "$digitval"
    div $P707, $P706, 2
    set $I708, $P707
    new $P709, 'Integer'
    set $P709, $I708
    store_lex "$digitval", $P709
.annotate 'line', 872
    find_lex $P713, "$digitval"
    set $N714, $P713
    islt $I715, $N714, 0.0
    unless $I715, unless_712
    new $P711, 'Integer'
    set $P711, $I715
    goto unless_712_end
  unless_712:
    find_lex $P716, "$digitval"
    set $N717, $P716
    find_lex $P718, "$base"
    set $N719, $P718
    isge $I720, $N717, $N719
    new $P711, 'Integer'
    set $P711, $I720
  unless_712_end:
    unless $P711, if_710_end
.annotate 'line', 873
    find_lex $P721, "$src"
    new $P722, 'String'
    set $P722, "Invalid radix conversion of character '"
    find_lex $P723, "$char"
    concat $P724, $P722, $P723
    concat $P725, $P724, "'"
    $P721."panic"($P725)
  if_710_end:
.annotate 'line', 875
    find_lex $P726, "$base"
    find_lex $P727, "$result"
    mul $P728, $P726, $P727
    find_lex $P729, "$digitval"
    add $P730, $P728, $P729
    store_lex "$result", $P730
.annotate 'line', 876
    find_lex $P731, "$i"
    add $P732, $P731, 1
    store_lex "$i", $P732
    new $P733, "ResizablePMCArray"
    push $P733, $P730
    push $P733, $P732
.annotate 'line', 867
    .return ($P733)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_741
.annotate 'line', 881
    .const 'Sub' $P747 = "124_1302969596.256" 
    capture_lex $P747
    .lex "$ints", param_741
.annotate 'line', 882
    find_lex $P744, "$ints"
    does $I745, $P744, "array"
    if $I745, if_743
.annotate 'line', 889
    find_lex $P767, "$ints"
    $I768 = $P767."ast"()
    chr $S769, $I768
    new $P770, 'String'
    set $P770, $S769
.annotate 'line', 888
    set $P742, $P770
.annotate 'line', 882
    goto if_743_end
  if_743:
    .const 'Sub' $P747 = "124_1302969596.256" 
    capture_lex $P747
    $P766 = $P747()
    set $P742, $P766
  if_743_end:
.annotate 'line', 881
    .return ($P742)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block746"  :anon :subid("124_1302969596.256") :outer("123_1302969596.256")
.annotate 'line', 882
    .const 'Sub' $P755 = "125_1302969596.256" 
    capture_lex $P755
.annotate 'line', 883
    new $P748, "Undef"
    .lex "$result", $P748
    new $P749, "String"
    assign $P749, ""
    store_lex "$result", $P749
.annotate 'line', 884
    find_lex $P751, "$ints"
    defined $I752, $P751
    unless $I752, for_undef_473
    iter $P750, $P751
    new $P763, 'ExceptionHandler'
    set_label $P763, loop762_handler
    $P763."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P763
  loop762_test:
    unless $P750, loop762_done
    shift $P753, $P750
  loop762_redo:
    .const 'Sub' $P755 = "125_1302969596.256" 
    capture_lex $P755
    $P755($P753)
  loop762_next:
    goto loop762_test
  loop762_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P764, exception, 'type'
    eq $P764, .CONTROL_LOOP_NEXT, loop762_next
    eq $P764, .CONTROL_LOOP_REDO, loop762_redo
  loop762_done:
    pop_eh 
  for_undef_473:
    find_lex $P765, "$result"
.annotate 'line', 882
    .return ($P765)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block754"  :anon :subid("125_1302969596.256") :outer("124_1302969596.256")
    .param pmc param_756
.annotate 'line', 884
    .lex "$_", param_756
.annotate 'line', 885
    find_lex $P757, "$result"
    find_lex $P758, "$_"
    $I759 = $P758."ast"()
    chr $S760, $I759
    concat $P761, $P757, $S760
    store_lex "$result", $P761
.annotate 'line', 884
    .return ($P761)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_777
.annotate 'line', 894
    .lex "self", param_777
.annotate 'line', 895
    get_hll_global $P778, ["PAST"], "Op"
.annotate 'line', 901
    new $P779, "ResizablePMCArray"
    push $P779, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P779, "    if null $P0 goto ctxsave_done"
    push $P779, "    $I0 = can $P0, \"ctxsave\""
    push $P779, "    unless $I0 goto ctxsave_done"
    push $P779, "    $P0.\"ctxsave\"()"
    push $P779, "  ctxsave_done:"
    $P780 = $P778."new"($P779 :named("inline"))
.annotate 'line', 894
    .return ($P780)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_782
    .param pmc param_783
.annotate 'line', 908
    .const 'Sub' $P793 = "128_1302969596.256" 
    capture_lex $P793
    .lex "self", param_782
    .lex "$block", param_783
.annotate 'line', 909
    new $P784, "Undef"
    .lex "$outer_ctx", $P784
    find_dynamic_lex $P785, "%*COMPILING"
    unless_null $P785, vivify_474
    get_hll_global $P785, "%COMPILING"
    unless_null $P785, vivify_475
    die "Contextual %*COMPILING not found"
  vivify_475:
  vivify_474:
    set $P786, $P785["%?OPTIONS"]
    unless_null $P786, vivify_476
    $P786 = root_new ['parrot';'Hash']
  vivify_476:
    set $P787, $P786["outer_ctx"]
    unless_null $P787, vivify_477
    new $P787, "Undef"
  vivify_477:
    store_lex "$outer_ctx", $P787
.annotate 'line', 910
    find_lex $P790, "$outer_ctx"
    defined $I791, $P790
    if $I791, if_789
    new $P788, 'Integer'
    set $P788, $I791
    goto if_789_end
  if_789:
    .const 'Sub' $P793 = "128_1302969596.256" 
    capture_lex $P793
    $P816 = $P793()
    set $P788, $P816
  if_789_end:
.annotate 'line', 908
    .return ($P788)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block792"  :anon :subid("128_1302969596.256") :outer("127_1302969596.256")
.annotate 'line', 910
    .const 'Sub' $P807 = "129_1302969596.256" 
    capture_lex $P807
.annotate 'line', 911
    $P794 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P794
    find_lex $P795, "$outer_ctx"
    getattribute $P796, $P795, "current_namespace"
    $P797 = $P796."get_name"()
    store_lex "@ns", $P797
.annotate 'line', 912
    find_lex $P798, "@ns"
    $P798."shift"()
.annotate 'line', 913
    find_lex $P799, "$block"
    find_lex $P800, "@ns"
    $P799."namespace"($P800)
.annotate 'line', 914
    find_lex $P802, "$outer_ctx"
    $P803 = $P802."lexpad_full"()
    defined $I804, $P803
    unless $I804, for_undef_478
    iter $P801, $P803
    new $P814, 'ExceptionHandler'
    set_label $P814, loop813_handler
    $P814."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P814
  loop813_test:
    unless $P801, loop813_done
    shift $P805, $P801
  loop813_redo:
    .const 'Sub' $P807 = "129_1302969596.256" 
    capture_lex $P807
    $P807($P805)
  loop813_next:
    goto loop813_test
  loop813_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P815, exception, 'type'
    eq $P815, .CONTROL_LOOP_NEXT, loop813_next
    eq $P815, .CONTROL_LOOP_REDO, loop813_redo
  loop813_done:
    pop_eh 
  for_undef_478:
.annotate 'line', 910
    .return ($P801)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block806"  :anon :subid("129_1302969596.256") :outer("128_1302969596.256")
    .param pmc param_808
.annotate 'line', 914
    .lex "$_", param_808
.annotate 'line', 915
    find_lex $P809, "$block"
    find_lex $P810, "$_"
    $P811 = $P810."key"()
    $P812 = $P809."symbol"($P811, "lexical" :named("scope"))
.annotate 'line', 914
    .return ($P812)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_820
    .param pmc param_821
    .param pmc param_822 :optional
    .param int has_param_822 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P904 = "132_1302969596.256" 
    capture_lex $P904
    .const 'Sub' $P868 = "131_1302969596.256" 
    capture_lex $P868
    new $P819, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P819, control_818
    push_eh $P819
    .lex "self", param_820
    .lex "$/", param_821
    if has_param_822, optparam_479
    new $P823, "Undef"
    set param_822, $P823
  optparam_479:
    .lex "$key", param_822
.annotate 'line', 923
    new $P824, "Undef"
    .lex "$past", $P824
.annotate 'line', 922
    find_lex $P826, "$key"
    if $P826, unless_825_end
    new $P827, "Exception"
    set $P827['type'], .CONTROL_RETURN
    new $P828, "Integer"
    assign $P828, 0
    setattribute $P827, 'payload', $P828
    throw $P827
  unless_825_end:
.annotate 'line', 923
    find_lex $P830, "$/"
    $P831 = $P830."ast"()
    set $P829, $P831
    defined $I833, $P829
    if $I833, default_832
    find_lex $P834, "$/"
    unless_null $P834, vivify_480
    $P834 = root_new ['parrot';'Hash']
  vivify_480:
    set $P835, $P834["OPER"]
    unless_null $P835, vivify_481
    new $P835, "Undef"
  vivify_481:
    $P836 = $P835."ast"()
    set $P829, $P836
  default_832:
    store_lex "$past", $P829
.annotate 'line', 924
    find_lex $P838, "$past"
    if $P838, unless_837_end
.annotate 'line', 925
    get_hll_global $P839, ["PAST"], "Op"
    find_lex $P840, "$/"
    $P841 = $P839."new"($P840 :named("node"))
    store_lex "$past", $P841
.annotate 'line', 926
    find_lex $P843, "$/"
    unless_null $P843, vivify_482
    $P843 = root_new ['parrot';'Hash']
  vivify_482:
    set $P844, $P843["OPER"]
    unless_null $P844, vivify_483
    $P844 = root_new ['parrot';'Hash']
  vivify_483:
    set $P845, $P844["O"]
    unless_null $P845, vivify_484
    $P845 = root_new ['parrot';'Hash']
  vivify_484:
    set $P846, $P845["pasttype"]
    unless_null $P846, vivify_485
    new $P846, "Undef"
  vivify_485:
    if $P846, if_842
.annotate 'line', 927
    find_lex $P854, "$/"
    unless_null $P854, vivify_486
    $P854 = root_new ['parrot';'Hash']
  vivify_486:
    set $P855, $P854["OPER"]
    unless_null $P855, vivify_487
    $P855 = root_new ['parrot';'Hash']
  vivify_487:
    set $P856, $P855["O"]
    unless_null $P856, vivify_488
    $P856 = root_new ['parrot';'Hash']
  vivify_488:
    set $P857, $P856["pirop"]
    unless_null $P857, vivify_489
    new $P857, "Undef"
  vivify_489:
    unless $P857, if_853_end
    find_lex $P858, "$past"
    find_lex $P859, "$/"
    unless_null $P859, vivify_490
    $P859 = root_new ['parrot';'Hash']
  vivify_490:
    set $P860, $P859["OPER"]
    unless_null $P860, vivify_491
    $P860 = root_new ['parrot';'Hash']
  vivify_491:
    set $P861, $P860["O"]
    unless_null $P861, vivify_492
    $P861 = root_new ['parrot';'Hash']
  vivify_492:
    set $P862, $P861["pirop"]
    unless_null $P862, vivify_493
    new $P862, "Undef"
  vivify_493:
    set $S863, $P862
    $P858."pirop"($S863)
  if_853_end:
    goto if_842_end
  if_842:
.annotate 'line', 926
    find_lex $P847, "$past"
    find_lex $P848, "$/"
    unless_null $P848, vivify_494
    $P848 = root_new ['parrot';'Hash']
  vivify_494:
    set $P849, $P848["OPER"]
    unless_null $P849, vivify_495
    $P849 = root_new ['parrot';'Hash']
  vivify_495:
    set $P850, $P849["O"]
    unless_null $P850, vivify_496
    $P850 = root_new ['parrot';'Hash']
  vivify_496:
    set $P851, $P850["pasttype"]
    unless_null $P851, vivify_497
    new $P851, "Undef"
  vivify_497:
    set $S852, $P851
    $P847."pasttype"($S852)
  if_842_end:
.annotate 'line', 928
    find_lex $P865, "$past"
    $P866 = $P865."name"()
    if $P866, unless_864_end
    .const 'Sub' $P868 = "131_1302969596.256" 
    capture_lex $P868
    $P868()
  unless_864_end:
  unless_837_end:
.annotate 'line', 934
    find_lex $P891, "$key"
    set $S892, $P891
    iseq $I893, $S892, "POSTFIX"
    if $I893, if_890
.annotate 'line', 936
    find_lex $P899, "$/"
    $P900 = $P899."list"()
    defined $I901, $P900
    unless $I901, for_undef_501
    iter $P898, $P900
    new $P916, 'ExceptionHandler'
    set_label $P916, loop915_handler
    $P916."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P916
  loop915_test:
    unless $P898, loop915_done
    shift $P902, $P898
  loop915_redo:
    .const 'Sub' $P904 = "132_1302969596.256" 
    capture_lex $P904
    $P904($P902)
  loop915_next:
    goto loop915_test
  loop915_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P917, exception, 'type'
    eq $P917, .CONTROL_LOOP_NEXT, loop915_next
    eq $P917, .CONTROL_LOOP_REDO, loop915_redo
  loop915_done:
    pop_eh 
  for_undef_501:
.annotate 'line', 935
    goto if_890_end
  if_890:
.annotate 'line', 934
    find_lex $P894, "$past"
    find_lex $P895, "$/"
    unless_null $P895, vivify_502
    $P895 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    set $P896, $P895[0]
    unless_null $P896, vivify_503
    new $P896, "Undef"
  vivify_503:
    $P897 = $P896."ast"()
    $P894."unshift"($P897)
  if_890_end:
.annotate 'line', 938
    find_lex $P918, "$/"
    find_lex $P919, "$past"
    $P920 = $P918."!make"($P919)
.annotate 'line', 921
    .return ($P920)
  control_818:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P921, exception, "payload"
    .return ($P921)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block867"  :anon :subid("131_1302969596.256") :outer("130_1302969596.256")
.annotate 'line', 930
    new $P869, "Undef"
    .lex "$name", $P869
.annotate 'line', 929
    find_lex $P871, "$key"
    set $S872, $P871
    iseq $I873, $S872, "LIST"
    unless $I873, if_870_end
    new $P874, "String"
    assign $P874, "infix"
    store_lex "$key", $P874
  if_870_end:
.annotate 'line', 930
    find_lex $P875, "$key"
    set $S876, $P875
    downcase $S877, $S876
    new $P878, 'String'
    set $P878, $S877
    concat $P879, $P878, ":<"
    find_lex $P880, "$/"
    unless_null $P880, vivify_498
    $P880 = root_new ['parrot';'Hash']
  vivify_498:
    set $P881, $P880["OPER"]
    unless_null $P881, vivify_499
    $P881 = root_new ['parrot';'Hash']
  vivify_499:
    set $P882, $P881["sym"]
    unless_null $P882, vivify_500
    new $P882, "Undef"
  vivify_500:
    concat $P883, $P879, $P882
    concat $P884, $P883, ">"
    store_lex "$name", $P884
.annotate 'line', 931
    find_lex $P885, "$past"
    new $P886, "String"
    assign $P886, "&"
    find_lex $P887, "$name"
    concat $P888, $P886, $P887
    $P889 = $P885."name"($P888)
.annotate 'line', 928
    .return ($P889)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block903"  :anon :subid("132_1302969596.256") :outer("130_1302969596.256")
    .param pmc param_905
.annotate 'line', 936
    .lex "$_", param_905
    find_lex $P908, "$_"
    $P909 = $P908."ast"()
    defined $I910, $P909
    if $I910, if_907
    new $P906, 'Integer'
    set $P906, $I910
    goto if_907_end
  if_907:
    find_lex $P911, "$past"
    find_lex $P912, "$_"
    $P913 = $P912."ast"()
    $P914 = $P911."push"($P913)
    set $P906, $P914
  if_907_end:
    .return ($P906)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_923
    .param pmc param_924
.annotate 'line', 941
    .lex "self", param_923
    .lex "$/", param_924
    find_lex $P925, "$/"
    find_lex $P926, "$/"
    unless_null $P926, vivify_504
    $P926 = root_new ['parrot';'Hash']
  vivify_504:
    set $P927, $P926["circumfix"]
    unless_null $P927, vivify_505
    new $P927, "Undef"
  vivify_505:
    $P928 = $P927."ast"()
    $P929 = $P925."!make"($P928)
    .return ($P929)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_931
    .param pmc param_932
.annotate 'line', 943
    .lex "self", param_931
    .lex "$/", param_932
    find_lex $P933, "$/"
    find_lex $P934, "$/"
    unless_null $P934, vivify_506
    $P934 = root_new ['parrot';'Hash']
  vivify_506:
    set $P935, $P934["term"]
    unless_null $P935, vivify_507
    new $P935, "Undef"
  vivify_507:
    $P936 = $P935."ast"()
    $P937 = $P933."!make"($P936)
    .return ($P937)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_939
    .param pmc param_940
.annotate 'line', 944
    .lex "self", param_939
    .lex "$/", param_940
    find_lex $P941, "$/"
    new $P942, "Undef"
    $P943 = $P941."!make"($P942)
    .return ($P943)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_945
    .param pmc param_946
.annotate 'line', 945
    .lex "self", param_945
    .lex "$/", param_946
    find_lex $P947, "$/"
    find_lex $P948, "$/"
    unless_null $P948, vivify_508
    $P948 = root_new ['parrot';'Hash']
  vivify_508:
    set $P949, $P948["term"]
    unless_null $P949, vivify_509
    new $P949, "Undef"
  vivify_509:
    $P950 = $P949."ast"()
    $P951 = $P947."!make"($P950)
    .return ($P951)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_953
    .param pmc param_954
.annotate 'line', 947
    .lex "self", param_953
    .lex "$/", param_954
    find_lex $P955, "$/"
    find_lex $P956, "$/"
    unless_null $P956, vivify_510
    $P956 = root_new ['parrot';'Hash']
  vivify_510:
    set $P957, $P956["VALUE"]
    unless_null $P957, vivify_511
    new $P957, "Undef"
  vivify_511:
    $P958 = $P957."ast"()
    $P959 = $P955."!make"($P958)
    .return ($P959)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_961
    .param pmc param_962
.annotate 'line', 949
    .lex "self", param_961
    .lex "$/", param_962
    find_lex $P963, "$/"
    find_lex $P964, "$/"
    set $N965, $P964
    $P966 = $P963."!make"($N965)
    .return ($P966)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_968
    .param pmc param_969
.annotate 'line', 951
    .lex "self", param_968
    .lex "$/", param_969
    find_lex $P970, "$/"
    find_lex $P971, "$/"
    $P972 = "string_to_int"($P971, 10)
    $P973 = $P970."!make"($P972)
    .return ($P973)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_975
    .param pmc param_976
.annotate 'line', 952
    .lex "self", param_975
    .lex "$/", param_976
    find_lex $P977, "$/"
    find_lex $P978, "$/"
    $P979 = "string_to_int"($P978, 16)
    $P980 = $P977."!make"($P979)
    .return ($P980)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_982
    .param pmc param_983
.annotate 'line', 953
    .lex "self", param_982
    .lex "$/", param_983
    find_lex $P984, "$/"
    find_lex $P985, "$/"
    $P986 = "string_to_int"($P985, 8)
    $P987 = $P984."!make"($P986)
    .return ($P987)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_989
    .param pmc param_990
.annotate 'line', 954
    .lex "self", param_989
    .lex "$/", param_990
    find_lex $P991, "$/"
    find_lex $P992, "$/"
    $P993 = "string_to_int"($P992, 2)
    $P994 = $P991."!make"($P993)
    .return ($P994)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_996
    .param pmc param_997
.annotate 'line', 956
    .const 'Sub' $P1013 = "144_1302969596.256" 
    capture_lex $P1013
    .lex "self", param_996
    .lex "$/", param_997
.annotate 'line', 957
    new $P998, "Undef"
    .lex "$past", $P998
    find_lex $P999, "$/"
    unless_null $P999, vivify_512
    $P999 = root_new ['parrot';'Hash']
  vivify_512:
    set $P1000, $P999["quote_delimited"]
    unless_null $P1000, vivify_513
    new $P1000, "Undef"
  vivify_513:
    $P1001 = $P1000."ast"()
    store_lex "$past", $P1001
.annotate 'line', 958
    find_lex $P1003, "$/"
    $P1004 = $P1003."CURSOR"()
    $P1005 = $P1004."quotemod_check"("w")
    unless $P1005, if_1002_end
.annotate 'line', 959
    get_hll_global $P1007, ["PAST"], "Node"
    find_lex $P1008, "$past"
    $P1009 = $P1007."ACCEPTS"($P1008)
    if $P1009, if_1006
.annotate 'line', 962
    .const 'Sub' $P1013 = "144_1302969596.256" 
    capture_lex $P1013
    $P1013()
    goto if_1006_end
  if_1006:
.annotate 'line', 960
    find_lex $P1010, "$/"
    $P1011 = $P1010."CURSOR"()
    $P1011."panic"("Can't form :w list from non-constant strings (yet)")
  if_1006_end:
  if_1002_end:
.annotate 'line', 973
    get_hll_global $P1045, ["PAST"], "Node"
    find_lex $P1046, "$past"
    $P1047 = $P1045."ACCEPTS"($P1046)
    isfalse $I1048, $P1047
    unless $I1048, if_1044_end
.annotate 'line', 974
    get_hll_global $P1049, ["PAST"], "Val"
    find_lex $P1050, "$past"
    set $S1051, $P1050
    $P1052 = $P1049."new"($S1051 :named("value"))
    store_lex "$past", $P1052
  if_1044_end:
.annotate 'line', 976
    find_lex $P1053, "$/"
    find_lex $P1054, "$past"
    $P1055 = $P1053."!make"($P1054)
.annotate 'line', 956
    .return ($P1055)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1012"  :anon :subid("144_1302969596.256") :outer("143_1302969596.256")
.annotate 'line', 962
    .const 'Sub' $P1032 = "145_1302969596.256" 
    capture_lex $P1032
.annotate 'line', 963
    $P1014 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1014
    get_hll_global $P1015, ["HLL";"Grammar"], "split_words"
    find_lex $P1016, "$/"
    find_lex $P1017, "$past"
    $P1018 = $P1015($P1016, $P1017)
    store_lex "@words", $P1018
.annotate 'line', 964
    find_lex $P1021, "@words"
    set $N1022, $P1021
    isne $I1023, $N1022, 1.0
    if $I1023, if_1020
.annotate 'line', 969
    find_lex $P1040, "@words"
    unless_null $P1040, vivify_514
    $P1040 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    set $P1041, $P1040[0]
    unless_null $P1041, vivify_515
    new $P1041, "Undef"
  vivify_515:
    set $S1042, $P1041
    new $P1043, 'String'
    set $P1043, $S1042
    store_lex "$past", $P1043
.annotate 'line', 968
    set $P1019, $P1043
.annotate 'line', 964
    goto if_1020_end
  if_1020:
.annotate 'line', 965
    get_hll_global $P1024, ["PAST"], "Op"
    find_lex $P1025, "$/"
    $P1026 = $P1024."new"("list" :named("pasttype"), $P1025 :named("node"))
    store_lex "$past", $P1026
.annotate 'line', 966
    find_lex $P1028, "@words"
    defined $I1029, $P1028
    unless $I1029, for_undef_516
    iter $P1027, $P1028
    new $P1038, 'ExceptionHandler'
    set_label $P1038, loop1037_handler
    $P1038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1038
  loop1037_test:
    unless $P1027, loop1037_done
    shift $P1030, $P1027
  loop1037_redo:
    .const 'Sub' $P1032 = "145_1302969596.256" 
    capture_lex $P1032
    $P1032($P1030)
  loop1037_next:
    goto loop1037_test
  loop1037_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1039, exception, 'type'
    eq $P1039, .CONTROL_LOOP_NEXT, loop1037_next
    eq $P1039, .CONTROL_LOOP_REDO, loop1037_redo
  loop1037_done:
    pop_eh 
  for_undef_516:
.annotate 'line', 964
    set $P1019, $P1027
  if_1020_end:
.annotate 'line', 962
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1031"  :anon :subid("145_1302969596.256") :outer("144_1302969596.256")
    .param pmc param_1033
.annotate 'line', 966
    .lex "$_", param_1033
    find_lex $P1034, "$past"
    find_lex $P1035, "$_"
    $P1036 = $P1034."push"($P1035)
    .return ($P1036)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1057
    .param pmc param_1058
.annotate 'line', 979
    .const 'Sub' $P1070 = "147_1302969596.256" 
    capture_lex $P1070
    .lex "self", param_1057
    .lex "$/", param_1058
.annotate 'line', 980
    $P1059 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1059
.annotate 'line', 981
    new $P1060, "Undef"
    .lex "$lastlit", $P1060
.annotate 'line', 997
    new $P1061, "Undef"
    .lex "$past", $P1061
.annotate 'line', 979
    find_lex $P1062, "@parts"
.annotate 'line', 981
    new $P1063, "String"
    assign $P1063, ""
    store_lex "$lastlit", $P1063
.annotate 'line', 982
    find_lex $P1065, "$/"
    unless_null $P1065, vivify_517
    $P1065 = root_new ['parrot';'Hash']
  vivify_517:
    set $P1066, $P1065["quote_atom"]
    unless_null $P1066, vivify_518
    new $P1066, "Undef"
  vivify_518:
    defined $I1067, $P1066
    unless $I1067, for_undef_519
    iter $P1064, $P1066
    new $P1103, 'ExceptionHandler'
    set_label $P1103, loop1102_handler
    $P1103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1103
  loop1102_test:
    unless $P1064, loop1102_done
    shift $P1068, $P1064
  loop1102_redo:
    .const 'Sub' $P1070 = "147_1302969596.256" 
    capture_lex $P1070
    $P1070($P1068)
  loop1102_next:
    goto loop1102_test
  loop1102_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1104, exception, 'type'
    eq $P1104, .CONTROL_LOOP_NEXT, loop1102_next
    eq $P1104, .CONTROL_LOOP_REDO, loop1102_redo
  loop1102_done:
    pop_eh 
  for_undef_519:
.annotate 'line', 996
    find_lex $P1106, "$lastlit"
    set $S1107, $P1106
    isgt $I1108, $S1107, ""
    unless $I1108, if_1105_end
    find_lex $P1109, "@parts"
    find_lex $P1110, "$lastlit"
    $P1109."push"($P1110)
  if_1105_end:
.annotate 'line', 997
    find_lex $P1113, "@parts"
    if $P1113, if_1112
    new $P1116, "String"
    assign $P1116, ""
    set $P1111, $P1116
    goto if_1112_end
  if_1112:
    find_lex $P1114, "@parts"
    $P1115 = $P1114."shift"()
    set $P1111, $P1115
  if_1112_end:
    store_lex "$past", $P1111
.annotate 'line', 998
    new $P1124, 'ExceptionHandler'
    set_label $P1124, loop1123_handler
    $P1124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1124
  loop1123_test:
    find_lex $P1117, "@parts"
    unless $P1117, loop1123_done
  loop1123_redo:
.annotate 'line', 999
    get_hll_global $P1118, ["PAST"], "Op"
    find_lex $P1119, "$past"
    find_lex $P1120, "@parts"
    $P1121 = $P1120."shift"()
    $P1122 = $P1118."new"($P1119, $P1121, "concat" :named("pirop"))
    store_lex "$past", $P1122
  loop1123_next:
.annotate 'line', 998
    goto loop1123_test
  loop1123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1125, exception, 'type'
    eq $P1125, .CONTROL_LOOP_NEXT, loop1123_next
    eq $P1125, .CONTROL_LOOP_REDO, loop1123_redo
  loop1123_done:
    pop_eh 
.annotate 'line', 1001
    find_lex $P1126, "$/"
    find_lex $P1127, "$past"
    $P1128 = $P1126."!make"($P1127)
.annotate 'line', 979
    .return ($P1128)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1069"  :anon :subid("147_1302969596.256") :outer("146_1302969596.256")
    .param pmc param_1072
.annotate 'line', 983
    new $P1071, "Undef"
    .lex "$ast", $P1071
    .lex "$_", param_1072
    find_lex $P1073, "$_"
    $P1074 = $P1073."ast"()
    store_lex "$ast", $P1074
.annotate 'line', 984
    get_hll_global $P1077, ["PAST"], "Node"
    find_lex $P1078, "$ast"
    $P1079 = $P1077."ACCEPTS"($P1078)
    isfalse $I1080, $P1079
    if $I1080, if_1076
.annotate 'line', 987
    find_lex $P1086, "$ast"
    get_hll_global $P1087, ["PAST"], "Val"
    $P1088 = $P1086."isa"($P1087)
    if $P1088, if_1085
.annotate 'line', 991
    find_lex $P1094, "$lastlit"
    set $S1095, $P1094
    isgt $I1096, $S1095, ""
    unless $I1096, if_1093_end
    find_lex $P1097, "@parts"
    find_lex $P1098, "$lastlit"
    $P1097."push"($P1098)
  if_1093_end:
.annotate 'line', 992
    find_lex $P1099, "@parts"
    find_lex $P1100, "$ast"
    $P1099."push"($P1100)
.annotate 'line', 993
    new $P1101, "String"
    assign $P1101, ""
    store_lex "$lastlit", $P1101
.annotate 'line', 990
    set $P1084, $P1101
.annotate 'line', 987
    goto if_1085_end
  if_1085:
.annotate 'line', 988
    find_lex $P1089, "$lastlit"
    find_lex $P1090, "$ast"
    $S1091 = $P1090."value"()
    concat $P1092, $P1089, $S1091
    store_lex "$lastlit", $P1092
.annotate 'line', 987
    set $P1084, $P1092
  if_1085_end:
    set $P1075, $P1084
.annotate 'line', 984
    goto if_1076_end
  if_1076:
.annotate 'line', 985
    find_lex $P1081, "$lastlit"
    find_lex $P1082, "$ast"
    concat $P1083, $P1081, $P1082
    store_lex "$lastlit", $P1083
.annotate 'line', 984
    set $P1075, $P1083
  if_1076_end:
.annotate 'line', 982
    .return ($P1075)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1130
    .param pmc param_1131
.annotate 'line', 1004
    .lex "self", param_1130
    .lex "$/", param_1131
.annotate 'line', 1005
    find_lex $P1132, "$/"
    find_lex $P1135, "$/"
    unless_null $P1135, vivify_520
    $P1135 = root_new ['parrot';'Hash']
  vivify_520:
    set $P1136, $P1135["quote_escape"]
    unless_null $P1136, vivify_521
    new $P1136, "Undef"
  vivify_521:
    if $P1136, if_1134
    find_lex $P1140, "$/"
    set $S1141, $P1140
    new $P1133, 'String'
    set $P1133, $S1141
    goto if_1134_end
  if_1134:
    find_lex $P1137, "$/"
    unless_null $P1137, vivify_522
    $P1137 = root_new ['parrot';'Hash']
  vivify_522:
    set $P1138, $P1137["quote_escape"]
    unless_null $P1138, vivify_523
    new $P1138, "Undef"
  vivify_523:
    $P1139 = $P1138."ast"()
    set $P1133, $P1139
  if_1134_end:
    $P1142 = $P1132."!make"($P1133)
.annotate 'line', 1004
    .return ($P1142)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1144
    .param pmc param_1145
.annotate 'line', 1008
    .lex "self", param_1144
    .lex "$/", param_1145
    find_lex $P1146, "$/"
    $P1147 = $P1146."!make"("\\")
    .return ($P1147)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1149
    .param pmc param_1150
.annotate 'line', 1009
    .lex "self", param_1149
    .lex "$/", param_1150
    find_lex $P1151, "$/"
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_524
    $P1152 = root_new ['parrot';'Hash']
  vivify_524:
    set $P1153, $P1152["stopper"]
    unless_null $P1153, vivify_525
    new $P1153, "Undef"
  vivify_525:
    set $S1154, $P1153
    $P1155 = $P1151."!make"($S1154)
    .return ($P1155)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1157
    .param pmc param_1158
.annotate 'line', 1011
    .lex "self", param_1157
    .lex "$/", param_1158
    find_lex $P1159, "$/"
    $P1160 = $P1159."!make"("\b")
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1162
    .param pmc param_1163
.annotate 'line', 1012
    .lex "self", param_1162
    .lex "$/", param_1163
    find_lex $P1164, "$/"
    $P1165 = $P1164."!make"("\n")
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1167
    .param pmc param_1168
.annotate 'line', 1013
    .lex "self", param_1167
    .lex "$/", param_1168
    find_lex $P1169, "$/"
    $P1170 = $P1169."!make"("\r")
    .return ($P1170)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1172
    .param pmc param_1173
.annotate 'line', 1014
    .lex "self", param_1172
    .lex "$/", param_1173
    find_lex $P1174, "$/"
    $P1175 = $P1174."!make"("\t")
    .return ($P1175)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1177
    .param pmc param_1178
.annotate 'line', 1015
    .lex "self", param_1177
    .lex "$/", param_1178
    find_lex $P1179, "$/"
    $P1180 = $P1179."!make"("\f")
    .return ($P1180)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1182
    .param pmc param_1183
.annotate 'line', 1016
    .lex "self", param_1182
    .lex "$/", param_1183
    find_lex $P1184, "$/"
    $P1185 = $P1184."!make"("\e")
    .return ($P1185)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1187
    .param pmc param_1188
.annotate 'line', 1018
    .lex "self", param_1187
    .lex "$/", param_1188
.annotate 'line', 1019
    find_lex $P1189, "$/"
    find_lex $P1192, "$/"
    unless_null $P1192, vivify_526
    $P1192 = root_new ['parrot';'Hash']
  vivify_526:
    set $P1193, $P1192["hexint"]
    unless_null $P1193, vivify_527
    new $P1193, "Undef"
  vivify_527:
    if $P1193, if_1191
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_528
    $P1196 = root_new ['parrot';'Hash']
  vivify_528:
    set $P1197, $P1196["hexints"]
    unless_null $P1197, vivify_529
    $P1197 = root_new ['parrot';'Hash']
  vivify_529:
    set $P1198, $P1197["hexint"]
    unless_null $P1198, vivify_530
    new $P1198, "Undef"
  vivify_530:
    set $P1190, $P1198
    goto if_1191_end
  if_1191:
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_531
    $P1194 = root_new ['parrot';'Hash']
  vivify_531:
    set $P1195, $P1194["hexint"]
    unless_null $P1195, vivify_532
    new $P1195, "Undef"
  vivify_532:
    set $P1190, $P1195
  if_1191_end:
    $P1199 = "ints_to_string"($P1190)
    $P1200 = $P1189."!make"($P1199)
.annotate 'line', 1018
    .return ($P1200)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1202
    .param pmc param_1203
.annotate 'line', 1022
    .lex "self", param_1202
    .lex "$/", param_1203
.annotate 'line', 1023
    find_lex $P1204, "$/"
    find_lex $P1207, "$/"
    unless_null $P1207, vivify_533
    $P1207 = root_new ['parrot';'Hash']
  vivify_533:
    set $P1208, $P1207["octint"]
    unless_null $P1208, vivify_534
    new $P1208, "Undef"
  vivify_534:
    if $P1208, if_1206
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_535
    $P1211 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1212, $P1211["octints"]
    unless_null $P1212, vivify_536
    $P1212 = root_new ['parrot';'Hash']
  vivify_536:
    set $P1213, $P1212["octint"]
    unless_null $P1213, vivify_537
    new $P1213, "Undef"
  vivify_537:
    set $P1205, $P1213
    goto if_1206_end
  if_1206:
    find_lex $P1209, "$/"
    unless_null $P1209, vivify_538
    $P1209 = root_new ['parrot';'Hash']
  vivify_538:
    set $P1210, $P1209["octint"]
    unless_null $P1210, vivify_539
    new $P1210, "Undef"
  vivify_539:
    set $P1205, $P1210
  if_1206_end:
    $P1214 = "ints_to_string"($P1205)
    $P1215 = $P1204."!make"($P1214)
.annotate 'line', 1022
    .return ($P1215)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1217
    .param pmc param_1218
.annotate 'line', 1026
    .lex "self", param_1217
    .lex "$/", param_1218
.annotate 'line', 1027
    find_lex $P1219, "$/"
    find_lex $P1220, "$/"
    unless_null $P1220, vivify_540
    $P1220 = root_new ['parrot';'Hash']
  vivify_540:
    set $P1221, $P1220["charspec"]
    unless_null $P1221, vivify_541
    new $P1221, "Undef"
  vivify_541:
    $P1222 = $P1221."ast"()
    $P1223 = $P1219."!make"($P1222)
.annotate 'line', 1026
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1225
    .param pmc param_1226
.annotate 'line', 1030
    .lex "self", param_1225
    .lex "$/", param_1226
.annotate 'line', 1031
    find_lex $P1227, "$/"
    $P1228 = $P1227."!make"(unicode:"\x{0}")
.annotate 'line', 1030
    .return ($P1228)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1230
    .param pmc param_1231
.annotate 'line', 1034
    .lex "self", param_1230
    .lex "$/", param_1231
.annotate 'line', 1035
    find_lex $P1232, "$/"
    find_lex $P1235, "$/"
    unless_null $P1235, vivify_542
    $P1235 = root_new ['parrot';'Hash']
  vivify_542:
    set $P1236, $P1235["textq"]
    unless_null $P1236, vivify_543
    new $P1236, "Undef"
  vivify_543:
    if $P1236, if_1234
    find_lex $P1242, "$/"
    unless_null $P1242, vivify_544
    $P1242 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1243, $P1242["textqq"]
    unless_null $P1243, vivify_545
    new $P1243, "Undef"
  vivify_545:
    $P1244 = $P1243."Str"()
    set $P1233, $P1244
    goto if_1234_end
  if_1234:
    new $P1237, "String"
    assign $P1237, "\\"
    find_lex $P1238, "$/"
    unless_null $P1238, vivify_546
    $P1238 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1239, $P1238["textq"]
    unless_null $P1239, vivify_547
    new $P1239, "Undef"
  vivify_547:
    $S1240 = $P1239."Str"()
    concat $P1241, $P1237, $S1240
    set $P1233, $P1241
  if_1234_end:
    $P1245 = $P1232."!make"($P1233)
.annotate 'line', 1034
    .return ($P1245)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1247
    .param pmc param_1248
.annotate 'line', 1038
    .lex "self", param_1247
    .lex "$/", param_1248
.annotate 'line', 1039
    new $P1249, "Undef"
    .lex "$codepoint", $P1249
.annotate 'line', 1040
    find_lex $P1252, "$/"
    unless_null $P1252, vivify_548
    $P1252 = root_new ['parrot';'Hash']
  vivify_548:
    set $P1253, $P1252["integer"]
    unless_null $P1253, vivify_549
    new $P1253, "Undef"
  vivify_549:
    if $P1253, if_1251
.annotate 'line', 1041
    find_lex $P1257, "$/"
    set $S1258, $P1257
    find_codepoint $I1259, $S1258
    new $P1250, 'Integer'
    set $P1250, $I1259
.annotate 'line', 1040
    goto if_1251_end
  if_1251:
    find_lex $P1254, "$/"
    unless_null $P1254, vivify_550
    $P1254 = root_new ['parrot';'Hash']
  vivify_550:
    set $P1255, $P1254["integer"]
    unless_null $P1255, vivify_551
    new $P1255, "Undef"
  vivify_551:
    $P1256 = $P1255."ast"()
    set $P1250, $P1256
  if_1251_end:
    store_lex "$codepoint", $P1250
.annotate 'line', 1042
    find_lex $P1261, "$codepoint"
    set $N1262, $P1261
    islt $I1263, $N1262, 0.0
    unless $I1263, if_1260_end
    find_lex $P1264, "$/"
    $P1265 = $P1264."CURSOR"()
    new $P1266, 'String'
    set $P1266, "Unrecognized character name "
    find_lex $P1267, "$/"
    concat $P1268, $P1266, $P1267
    $P1265."panic"($P1268)
  if_1260_end:
.annotate 'line', 1043
    find_lex $P1269, "$/"
    find_lex $P1270, "$codepoint"
    set $I1271, $P1270
    chr $S1272, $I1271
    $P1273 = $P1269."!make"($S1272)
.annotate 'line', 1038
    .return ($P1273)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1275
    .param pmc param_1276
.annotate 'line', 1046
    .const 'Sub' $P1285 = "164_1302969596.256" 
    capture_lex $P1285
    .lex "self", param_1275
    .lex "$/", param_1276
.annotate 'line', 1047
    new $P1277, "Undef"
    .lex "$str", $P1277
    new $P1278, "String"
    assign $P1278, ""
    store_lex "$str", $P1278
.annotate 'line', 1048
    find_lex $P1280, "$/"
    unless_null $P1280, vivify_552
    $P1280 = root_new ['parrot';'Hash']
  vivify_552:
    set $P1281, $P1280["charname"]
    unless_null $P1281, vivify_553
    new $P1281, "Undef"
  vivify_553:
    defined $I1282, $P1281
    unless $I1282, for_undef_554
    iter $P1279, $P1281
    new $P1292, 'ExceptionHandler'
    set_label $P1292, loop1291_handler
    $P1292."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1292
  loop1291_test:
    unless $P1279, loop1291_done
    shift $P1283, $P1279
  loop1291_redo:
    .const 'Sub' $P1285 = "164_1302969596.256" 
    capture_lex $P1285
    $P1285($P1283)
  loop1291_next:
    goto loop1291_test
  loop1291_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1293, exception, 'type'
    eq $P1293, .CONTROL_LOOP_NEXT, loop1291_next
    eq $P1293, .CONTROL_LOOP_REDO, loop1291_redo
  loop1291_done:
    pop_eh 
  for_undef_554:
.annotate 'line', 1049
    find_lex $P1294, "$/"
    find_lex $P1295, "$str"
    $P1296 = $P1294."!make"($P1295)
.annotate 'line', 1046
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1284"  :anon :subid("164_1302969596.256") :outer("163_1302969596.256")
    .param pmc param_1286
.annotate 'line', 1048
    .lex "$_", param_1286
    find_lex $P1287, "$str"
    find_lex $P1288, "$_"
    $S1289 = $P1288."ast"()
    concat $P1290, $P1287, $S1289
    store_lex "$str", $P1290
    .return ($P1290)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1302969596.256") :outer("120_1302969596.256")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'line', 1052
    .lex "self", param_1298
    .lex "$/", param_1299
.annotate 'line', 1053
    find_lex $P1300, "$/"
    find_lex $P1303, "$/"
    unless_null $P1303, vivify_555
    $P1303 = root_new ['parrot';'Hash']
  vivify_555:
    set $P1304, $P1303["charnames"]
    unless_null $P1304, vivify_556
    new $P1304, "Undef"
  vivify_556:
    if $P1304, if_1302
    find_lex $P1308, "$/"
    $I1309 = "string_to_int"($P1308, 10)
    chr $S1310, $I1309
    new $P1301, 'String'
    set $P1301, $S1310
    goto if_1302_end
  if_1302:
    find_lex $P1305, "$/"
    unless_null $P1305, vivify_557
    $P1305 = root_new ['parrot';'Hash']
  vivify_557:
    set $P1306, $P1305["charnames"]
    unless_null $P1306, vivify_558
    new $P1306, "Undef"
  vivify_558:
    $P1307 = $P1306."ast"()
    set $P1301, $P1307
  if_1302_end:
    $P1311 = $P1300."!make"($P1301)
.annotate 'line', 1052
    .return ($P1311)
.end


.HLL "nqp"

.namespace []
.sub "_block1384"  :anon :subid("167_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 861
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post559") :outer("167_1302969596.256")
.annotate 'line', 861
    .const 'Sub' $P1385 = "167_1302969596.256" 
    .local pmc block
    set block, $P1385
.annotate 'line', 1059
    load_bytecode "Parrot/Exception.pbc"
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1386"  :subid("168_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 1066
    .const 'Sub' $P2503 = "235_1302969596.256" 
    capture_lex $P2503
    .const 'Sub' $P2495 = "234_1302969596.256" 
    capture_lex $P2495
    .const 'Sub' $P2442 = "232_1302969596.256" 
    capture_lex $P2442
    .const 'Sub' $P2369 = "229_1302969596.256" 
    capture_lex $P2369
    .const 'Sub' $P2339 = "227_1302969596.256" 
    capture_lex $P2339
    .const 'Sub' $P2334 = "226_1302969596.256" 
    capture_lex $P2334
    .const 'Sub' $P2324 = "225_1302969596.256" 
    capture_lex $P2324
    .const 'Sub' $P2298 = "223_1302969596.256" 
    capture_lex $P2298
    .const 'Sub' $P2289 = "222_1302969596.256" 
    capture_lex $P2289
    .const 'Sub' $P2281 = "221_1302969596.256" 
    capture_lex $P2281
    .const 'Sub' $P2273 = "220_1302969596.256" 
    capture_lex $P2273
    .const 'Sub' $P2269 = "219_1302969596.256" 
    capture_lex $P2269
    .const 'Sub' $P2265 = "218_1302969596.256" 
    capture_lex $P2265
    .const 'Sub' $P2198 = "216_1302969596.256" 
    capture_lex $P2198
    .const 'Sub' $P2102 = "212_1302969596.256" 
    capture_lex $P2102
    .const 'Sub' $P2066 = "209_1302969596.256" 
    capture_lex $P2066
    .const 'Sub' $P2018 = "207_1302969596.256" 
    capture_lex $P2018
    .const 'Sub' $P2005 = "206_1302969596.256" 
    capture_lex $P2005
    .const 'Sub' $P1992 = "205_1302969596.256" 
    capture_lex $P1992
    .const 'Sub' $P1979 = "204_1302969596.256" 
    capture_lex $P1979
    .const 'Sub' $P1966 = "203_1302969596.256" 
    capture_lex $P1966
    .const 'Sub' $P1953 = "202_1302969596.256" 
    capture_lex $P1953
    .const 'Sub' $P1940 = "201_1302969596.256" 
    capture_lex $P1940
    .const 'Sub' $P1927 = "200_1302969596.256" 
    capture_lex $P1927
    .const 'Sub' $P1914 = "199_1302969596.256" 
    capture_lex $P1914
    .const 'Sub' $P1909 = "198_1302969596.256" 
    capture_lex $P1909
    .const 'Sub' $P1905 = "197_1302969596.256" 
    capture_lex $P1905
    .const 'Sub' $P1865 = "195_1302969596.256" 
    capture_lex $P1865
    .const 'Sub' $P1718 = "188_1302969596.256" 
    capture_lex $P1718
    .const 'Sub' $P1705 = "187_1302969596.256" 
    capture_lex $P1705
    .const 'Sub' $P1612 = "182_1302969596.256" 
    capture_lex $P1612
    .const 'Sub' $P1579 = "180_1302969596.256" 
    capture_lex $P1579
    .const 'Sub' $P1564 = "179_1302969596.256" 
    capture_lex $P1564
    .const 'Sub' $P1549 = "178_1302969596.256" 
    capture_lex $P1549
    .const 'Sub' $P1462 = "175_1302969596.256" 
    capture_lex $P1462
    .const 'Sub' $P1425 = "173_1302969596.256" 
    capture_lex $P1425
    .const 'Sub' $P1418 = "172_1302969596.256" 
    capture_lex $P1418
    .const 'Sub' $P1408 = "170_1302969596.256" 
    capture_lex $P1408
    .const 'Sub' $P1390 = "169_1302969596.256" 
    capture_lex $P1390
.annotate 'line', 1086
    get_global $P1388, "$interactive_ctx"
    unless_null $P1388, vivify_561
    new $P1388, "Undef"
    set_global "$interactive_ctx", $P1388
  vivify_561:
.annotate 'line', 1087
    get_global $P1389, "%interactive_pad"
    unless_null $P1389, vivify_562
    $P1389 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P1389
  vivify_562:
.annotate 'line', 1141
    .const 'Sub' $P1390 = "169_1302969596.256" 
    newclosure $P1403, $P1390
    .lex "value_type", $P1403
.annotate 'line', 1087
    .lex "$?CLASS", $P1404
.annotate 'line', 1066
    get_global $P1405, "$interactive_ctx"
    get_global $P1406, "%interactive_pad"
    .const 'Sub' $P1408 = "170_1302969596.256" 
    capture_lex $P1408
    $P1408()
.annotate 'line', 1106
    find_lex $P1461, "value_type"
.annotate 'line', 1737
    .const 'Sub' $P2495 = "234_1302969596.256" 
    newclosure $P2501, $P2495
.annotate 'line', 1066
    .return ($P2501)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post560") :outer("168_1302969596.256")
.annotate 'line', 1066
    get_hll_global $P1387, ["HLL";"Compiler"], "_block1386" 
    .local pmc block
    set block, $P1387
    .const 'Sub' $P2503 = "235_1302969596.256" 
    capture_lex $P2503
    $P2503()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2502"  :anon :subid("235_1302969596.256") :outer("168_1302969596.256")
.annotate 'line', 1066
    nqp_get_sc_object $P2504, "1302969588.958", 2
    .local pmc type_obj
    set type_obj, $P2504
    get_how $P2505, type_obj
    get_hll_global $P2506, "NQPAttribute"
    $P2507 = $P2506."new"("@!stages" :named("name"))
    $P2505."add_attribute"(type_obj, $P2507)
    get_how $P2508, type_obj
    get_hll_global $P2509, "NQPAttribute"
    $P2510 = $P2509."new"("$!parsegrammar" :named("name"))
    $P2508."add_attribute"(type_obj, $P2510)
    get_how $P2511, type_obj
    get_hll_global $P2512, "NQPAttribute"
    $P2513 = $P2512."new"("$!parseactions" :named("name"))
    $P2511."add_attribute"(type_obj, $P2513)
    get_how $P2514, type_obj
    get_hll_global $P2515, "NQPAttribute"
    $P2516 = $P2515."new"("$!astgrammar" :named("name"))
    $P2514."add_attribute"(type_obj, $P2516)
    get_how $P2517, type_obj
    get_hll_global $P2518, "NQPAttribute"
    $P2519 = $P2518."new"("$!commandline_banner" :named("name"))
    $P2517."add_attribute"(type_obj, $P2519)
    get_how $P2520, type_obj
    get_hll_global $P2521, "NQPAttribute"
    $P2522 = $P2521."new"("$!commandline_prompt" :named("name"))
    $P2520."add_attribute"(type_obj, $P2522)
    get_how $P2523, type_obj
    get_hll_global $P2524, "NQPAttribute"
    $P2525 = $P2524."new"("@!cmdoptions" :named("name"))
    $P2523."add_attribute"(type_obj, $P2525)
    get_how $P2526, type_obj
    get_hll_global $P2527, "NQPAttribute"
    $P2528 = $P2527."new"("$!usage" :named("name"))
    $P2526."add_attribute"(type_obj, $P2528)
    get_how $P2529, type_obj
    get_hll_global $P2530, "NQPAttribute"
    $P2531 = $P2530."new"("$!version" :named("name"))
    $P2529."add_attribute"(type_obj, $P2531)
    get_how $P2532, type_obj
    get_hll_global $P2533, "NQPAttribute"
    $P2534 = $P2533."new"("$!compiler_progname" :named("name"))
    $P2532."add_attribute"(type_obj, $P2534)
    get_how $P2535, type_obj
    get_hll_global $P2536, "NQPAttribute"
    $P2537 = $P2536."new"("$!language" :named("name"))
    $P2535."add_attribute"(type_obj, $P2537)
    get_how $P2538, type_obj
    .const 'Sub' $P2539 = "172_1302969596.256" 
    $P2538."add_method"(type_obj, "new", $P2539)
    get_how $P2540, type_obj
    .const 'Sub' $P2541 = "173_1302969596.256" 
    $P2540."add_method"(type_obj, "BUILD", $P2541)
    get_how $P2542, type_obj
    .const 'Sub' $P2543 = "175_1302969596.256" 
    $P2542."add_method"(type_obj, "get_exports", $P2543)
    get_how $P2544, type_obj
    .const 'Sub' $P2545 = "178_1302969596.256" 
    $P2544."add_method"(type_obj, "get_module", $P2545)
    get_how $P2546, type_obj
    .const 'Sub' $P2547 = "179_1302969596.256" 
    $P2546."add_method"(type_obj, "language", $P2547)
    get_how $P2548, type_obj
    .const 'Sub' $P2549 = "180_1302969596.256" 
    $P2548."add_method"(type_obj, "load_module", $P2549)
    get_how $P2550, type_obj
    .const 'Sub' $P2551 = "182_1302969596.256" 
    $P2550."add_method"(type_obj, "import", $P2551)
    get_how $P2552, type_obj
    .const 'Sub' $P2553 = "187_1302969596.256" 
    $P2552."add_method"(type_obj, "autoprint", $P2553)
    get_how $P2554, type_obj
    .const 'Sub' $P2555 = "188_1302969596.256" 
    $P2554."add_method"(type_obj, "interactive", $P2555)
    get_how $P2556, type_obj
    .const 'Sub' $P2557 = "195_1302969596.256" 
    $P2556."add_method"(type_obj, "eval", $P2557)
    get_how $P2558, type_obj
    .const 'Sub' $P2559 = "197_1302969596.256" 
    $P2558."add_method"(type_obj, "ctxsave", $P2559)
    get_how $P2560, type_obj
    .const 'Sub' $P2561 = "198_1302969596.256" 
    $P2560."add_method"(type_obj, "panic", $P2561)
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "199_1302969596.256" 
    $P2562."add_method"(type_obj, "stages", $P2563)
    get_how $P2564, type_obj
    .const 'Sub' $P2565 = "200_1302969596.256" 
    $P2564."add_method"(type_obj, "parsegrammar", $P2565)
    get_how $P2566, type_obj
    .const 'Sub' $P2567 = "201_1302969596.256" 
    $P2566."add_method"(type_obj, "parseactions", $P2567)
    get_how $P2568, type_obj
    .const 'Sub' $P2569 = "202_1302969596.256" 
    $P2568."add_method"(type_obj, "astgrammar", $P2569)
    get_how $P2570, type_obj
    .const 'Sub' $P2571 = "203_1302969596.256" 
    $P2570."add_method"(type_obj, "commandline_banner", $P2571)
    get_how $P2572, type_obj
    .const 'Sub' $P2573 = "204_1302969596.256" 
    $P2572."add_method"(type_obj, "commandline_prompt", $P2573)
    get_how $P2574, type_obj
    .const 'Sub' $P2575 = "205_1302969596.256" 
    $P2574."add_method"(type_obj, "compiler_progname", $P2575)
    get_how $P2576, type_obj
    .const 'Sub' $P2577 = "206_1302969596.256" 
    $P2576."add_method"(type_obj, "commandline_options", $P2577)
    get_how $P2578, type_obj
    .const 'Sub' $P2579 = "207_1302969596.256" 
    $P2578."add_method"(type_obj, "command_line", $P2579)
    get_how $P2580, type_obj
    .const 'Sub' $P2581 = "209_1302969596.256" 
    $P2580."add_method"(type_obj, "process_args", $P2581)
    get_how $P2582, type_obj
    .const 'Sub' $P2583 = "212_1302969596.256" 
    $P2582."add_method"(type_obj, "evalfiles", $P2583)
    get_how $P2584, type_obj
    .const 'Sub' $P2585 = "216_1302969596.256" 
    $P2584."add_method"(type_obj, "compile", $P2585)
    get_how $P2586, type_obj
    .const 'Sub' $P2587 = "218_1302969596.256" 
    $P2586."add_method"(type_obj, "parse", $P2587)
    get_how $P2588, type_obj
    .const 'Sub' $P2589 = "219_1302969596.256" 
    $P2588."add_method"(type_obj, "past", $P2589)
    get_how $P2590, type_obj
    .const 'Sub' $P2591 = "220_1302969596.256" 
    $P2590."add_method"(type_obj, "post", $P2591)
    get_how $P2592, type_obj
    .const 'Sub' $P2593 = "221_1302969596.256" 
    $P2592."add_method"(type_obj, "pir", $P2593)
    get_how $P2594, type_obj
    .const 'Sub' $P2595 = "222_1302969596.256" 
    $P2594."add_method"(type_obj, "evalpmc", $P2595)
    get_how $P2596, type_obj
    .const 'Sub' $P2597 = "223_1302969596.256" 
    $P2596."add_method"(type_obj, "dumper", $P2597)
    get_how $P2598, type_obj
    .const 'Sub' $P2599 = "225_1302969596.256" 
    $P2598."add_method"(type_obj, "usage", $P2599)
    get_how $P2600, type_obj
    .const 'Sub' $P2601 = "226_1302969596.256" 
    $P2600."add_method"(type_obj, "version", $P2601)
    get_how $P2602, type_obj
    .const 'Sub' $P2603 = "227_1302969596.256" 
    $P2602."add_method"(type_obj, "removestage", $P2603)
    get_how $P2604, type_obj
    .const 'Sub' $P2605 = "229_1302969596.256" 
    $P2604."add_method"(type_obj, "addstage", $P2605)
    get_how $P2606, type_obj
    .const 'Sub' $P2607 = "232_1302969596.256" 
    $P2606."add_method"(type_obj, "parse_name", $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "234_1302969596.256" 
    $P2608."add_method"(type_obj, "lineof", $P2609)
    get_how $P2610, type_obj
    $P2611 = $P2610."compose"(type_obj)
    .return ($P2611)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("169_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1391
.annotate 'line', 1141
    .lex "$value", param_1391
.annotate 'line', 1142
    find_lex $P1394, "$value"
    isa $I1395, $P1394, "NameSpace"
    if $I1395, if_1393
.annotate 'line', 1144
    find_lex $P1399, "$value"
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
.annotate 'line', 1142
    goto if_1393_end
  if_1393:
    new $P1396, "String"
    assign $P1396, "namespace"
    set $P1392, $P1396
  if_1393_end:
.annotate 'line', 1141
    .return ($P1392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1407"  :anon :subid("170_1302969596.256") :outer("168_1302969596.256")
.annotate 'line', 1066
    .const 'Sub' $P1410 = "171_1302969596.256" 
    capture_lex $P1410
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post563") :outer("170_1302969596.256")
.annotate 'line', 1066
    .const 'Sub' $P1408 = "170_1302969596.256" 
    .local pmc block
    set block, $P1408
.annotate 'line', 1088
    .const 'Sub' $P1410 = "171_1302969596.256" 
    capture_lex $P1410
    $P1410()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1409"  :anon :subid("171_1302969596.256") :outer("170_1302969596.256")
.annotate 'line', 1093
    $P1411 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1411
.annotate 'line', 1090
    getinterp $P1412
    set $P1413, $P1412["context"]
    unless_null $P1413, vivify_564
    new $P1413, "Undef"
  vivify_564:
    set_global "$interactive_ctx", $P1413
    find_lex $P1414, "%pad_contents"
.annotate 'line', 1095
    get_global $P1415, "$interactive_ctx"
    getattribute $P1416, $P1415, "lex_pad"
    find_lex $P1417, "%pad_contents"
    copy $P1416, $P1417
.annotate 'line', 1094
    set_global "%interactive_pad", $P1416
.annotate 'line', 1088
    .return ($P1416)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("172_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1419
.annotate 'line', 1100
    .lex "self", param_1419
.annotate 'line', 1101
    new $P1420, "Undef"
    .lex "$obj", $P1420
    find_lex $P1421, "self"
    repr_instance_of $P1422, $P1421
    store_lex "$obj", $P1422
.annotate 'line', 1102
    find_lex $P1423, "$obj"
    $P1423."BUILD"()
    find_lex $P1424, "$obj"
.annotate 'line', 1100
    .return ($P1424)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("173_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1426
.annotate 'line', 1106
    .const 'Sub' $P1443 = "174_1302969596.256" 
    capture_lex $P1443
    .lex "self", param_1426
.annotate 'line', 1108
    split $P1427, " ", "parse past post pir evalpmc"
    find_lex $P1428, "self"
    find_lex $P1429, "$?CLASS"
    setattribute $P1428, $P1429, "@!stages", $P1427
.annotate 'line', 1111
    split $P1430, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1431, "self"
    find_lex $P1432, "$?CLASS"
    setattribute $P1431, $P1432, "@!cmdoptions", $P1430
.annotate 'line', 1112
    new $P1433, "String"
    assign $P1433, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1434, "self"
    find_lex $P1435, "$?CLASS"
    setattribute $P1434, $P1435, "$!usage", $P1433
.annotate 'line', 1113
    find_lex $P1437, "self"
    find_lex $P1438, "$?CLASS"
    getattribute $P1439, $P1437, $P1438, "@!cmdoptions"
    unless_null $P1439, vivify_565
    $P1439 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
    defined $I1440, $P1439
    unless $I1440, for_undef_566
    iter $P1436, $P1439
    new $P1456, 'ExceptionHandler'
    set_label $P1456, loop1455_handler
    $P1456."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1456
  loop1455_test:
    unless $P1436, loop1455_done
    shift $P1441, $P1436
  loop1455_redo:
    .const 'Sub' $P1443 = "174_1302969596.256" 
    capture_lex $P1443
    $P1443($P1441)
  loop1455_next:
    goto loop1455_test
  loop1455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1457, exception, 'type'
    eq $P1457, .CONTROL_LOOP_NEXT, loop1455_next
    eq $P1457, .CONTROL_LOOP_REDO, loop1455_redo
  loop1455_done:
    pop_eh 
  for_undef_566:
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
            $P1458  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P1458 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P1458 .= 'revision '
          _is_version:
            $P1458 .= $S0
            $P1458 .= '.'
        
    find_lex $P1459, "self"
    find_lex $P1460, "$?CLASS"
    setattribute $P1459, $P1460, "$!version", $P1458
.annotate 'line', 1106
    .return ($P1458)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1442"  :anon :subid("174_1302969596.256") :outer("173_1302969596.256")
    .param pmc param_1444
.annotate 'line', 1113
    .lex "$_", param_1444
.annotate 'line', 1114
    find_lex $P1445, "self"
    find_lex $P1446, "$?CLASS"
    getattribute $P1447, $P1445, $P1446, "$!usage"
    unless_null $P1447, vivify_567
    new $P1447, "Undef"
  vivify_567:
    new $P1448, 'String'
    set $P1448, "    "
    find_lex $P1449, "$_"
    concat $P1450, $P1448, $P1449
    concat $P1451, $P1450, "\n"
    concat $P1452, $P1447, $P1451
    find_lex $P1453, "self"
    find_lex $P1454, "$?CLASS"
    setattribute $P1453, $P1454, "$!usage", $P1452
.annotate 'line', 1113
    .return ($P1452)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("175_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1463
    .param pmc param_1464
    .param pmc param_1467 :slurpy
    .param pmc param_1465 :optional :named("tagset")
    .param int has_param_1465 :opt_flag
.annotate 'line', 1147
    .const 'Sub' $P1533 = "177_1302969596.256" 
    capture_lex $P1533
    .const 'Sub' $P1512 = "176_1302969596.256" 
    capture_lex $P1512
    .lex "self", param_1463
    .lex "$module", param_1464
    if has_param_1465, optparam_568
    new $P1466, "Undef"
    set param_1465, $P1466
  optparam_568:
    .lex "$tagset", param_1465
    .lex "@symbols", param_1467
.annotate 'line', 1154
    $P1468 = root_new ['parrot';'Hash']
    .lex "%exports", $P1468
.annotate 'line', 1155
    $P1469 = root_new ['parrot';'Hash']
    .lex "%source", $P1469
.annotate 'line', 1149
    find_lex $P1471, "$module"
    does $I1472, $P1471, "hash"
    new $P1473, 'Integer'
    set $P1473, $I1472
    isfalse $I1474, $P1473
    unless $I1474, if_1470_end
.annotate 'line', 1150
    find_lex $P1475, "self"
    find_lex $P1476, "$module"
    $P1477 = $P1475."get_module"($P1476)
    store_lex "$module", $P1477
  if_1470_end:
.annotate 'line', 1153
    find_lex $P1479, "$tagset"
    set $P1478, $P1479
    defined $I1481, $P1478
    if $I1481, default_1480
    find_lex $P1484, "@symbols"
    if $P1484, if_1483
    new $P1486, "String"
    assign $P1486, "DEFAULT"
    set $P1482, $P1486
    goto if_1483_end
  if_1483:
    new $P1485, "String"
    assign $P1485, "ALL"
    set $P1482, $P1485
  if_1483_end:
    set $P1478, $P1482
  default_1480:
    store_lex "$tagset", $P1478
    find_lex $P1487, "%exports"
.annotate 'line', 1155
    find_lex $P1488, "$tagset"
    set $S1489, $P1488
    find_lex $P1490, "$module"
    unless_null $P1490, vivify_569
    $P1490 = root_new ['parrot';'Hash']
  vivify_569:
    set $P1491, $P1490["EXPORT"]
    unless_null $P1491, vivify_570
    $P1491 = root_new ['parrot';'Hash']
  vivify_570:
    set $P1492, $P1491[$S1489]
    unless_null $P1492, vivify_571
    new $P1492, "Undef"
  vivify_571:
    store_lex "%source", $P1492
.annotate 'line', 1156
    find_lex $P1494, "%source"
    defined $I1495, $P1494
    new $P1496, 'Integer'
    set $P1496, $I1495
    isfalse $I1497, $P1496
    unless $I1497, if_1493_end
.annotate 'line', 1157
    find_lex $P1500, "$tagset"
    set $S1501, $P1500
    iseq $I1502, $S1501, "ALL"
    if $I1502, if_1499
    $P1504 = root_new ['parrot';'Hash']
    set $P1498, $P1504
    goto if_1499_end
  if_1499:
    find_lex $P1503, "$module"
    set $P1498, $P1503
  if_1499_end:
    store_lex "%source", $P1498
  if_1493_end:
.annotate 'line', 1159
    find_lex $P1506, "@symbols"
    if $P1506, if_1505
.annotate 'line', 1166
    find_lex $P1529, "%source"
    defined $I1530, $P1529
    unless $I1530, for_undef_572
    iter $P1528, $P1529
    new $P1546, 'ExceptionHandler'
    set_label $P1546, loop1545_handler
    $P1546."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1546
  loop1545_test:
    unless $P1528, loop1545_done
    shift $P1531, $P1528
  loop1545_redo:
    .const 'Sub' $P1533 = "177_1302969596.256" 
    capture_lex $P1533
    $P1533($P1531)
  loop1545_next:
    goto loop1545_test
  loop1545_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1547, exception, 'type'
    eq $P1547, .CONTROL_LOOP_NEXT, loop1545_next
    eq $P1547, .CONTROL_LOOP_REDO, loop1545_redo
  loop1545_done:
    pop_eh 
  for_undef_572:
.annotate 'line', 1165
    goto if_1505_end
  if_1505:
.annotate 'line', 1160
    find_lex $P1508, "@symbols"
    defined $I1509, $P1508
    unless $I1509, for_undef_575
    iter $P1507, $P1508
    new $P1526, 'ExceptionHandler'
    set_label $P1526, loop1525_handler
    $P1526."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1526
  loop1525_test:
    unless $P1507, loop1525_done
    shift $P1510, $P1507
  loop1525_redo:
    .const 'Sub' $P1512 = "176_1302969596.256" 
    capture_lex $P1512
    $P1512($P1510)
  loop1525_next:
    goto loop1525_test
  loop1525_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1527, exception, 'type'
    eq $P1527, .CONTROL_LOOP_NEXT, loop1525_next
    eq $P1527, .CONTROL_LOOP_REDO, loop1525_redo
  loop1525_done:
    pop_eh 
  for_undef_575:
  if_1505_end:
.annotate 'line', 1159
    find_lex $P1548, "%exports"
.annotate 'line', 1147
    .return ($P1548)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1532"  :anon :subid("177_1302969596.256") :outer("175_1302969596.256")
    .param pmc param_1535
.annotate 'line', 1167
    new $P1534, "Undef"
    .lex "$value", $P1534
    .lex "$_", param_1535
    find_lex $P1536, "$_"
    $P1537 = $P1536."value"()
    store_lex "$value", $P1537
.annotate 'line', 1168
    find_lex $P1538, "$value"
    find_lex $P1539, "$_"
    $P1540 = $P1539."key"()
    find_lex $P1541, "$value"
    $P1542 = "value_type"($P1541)
    find_lex $P1543, "%exports"
    unless_null $P1543, vivify_573
    $P1543 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1543
  vivify_573:
    set $P1544, $P1543[$P1542]
    unless_null $P1544, vivify_574
    $P1544 = root_new ['parrot';'Hash']
    set $P1543[$P1542], $P1544
  vivify_574:
    set $P1544[$P1540], $P1538
.annotate 'line', 1166
    .return ($P1538)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1511"  :anon :subid("176_1302969596.256") :outer("175_1302969596.256")
    .param pmc param_1514
.annotate 'line', 1161
    new $P1513, "Undef"
    .lex "$value", $P1513
    .lex "$_", param_1514
    find_lex $P1515, "$_"
    set $S1516, $P1515
    find_lex $P1517, "%source"
    unless_null $P1517, vivify_576
    $P1517 = root_new ['parrot';'Hash']
  vivify_576:
    set $P1518, $P1517[$S1516]
    unless_null $P1518, vivify_577
    new $P1518, "Undef"
  vivify_577:
    store_lex "$value", $P1518
.annotate 'line', 1162
    find_lex $P1519, "$value"
    find_lex $P1520, "$_"
    find_lex $P1521, "$value"
    $P1522 = "value_type"($P1521)
    find_lex $P1523, "%exports"
    unless_null $P1523, vivify_578
    $P1523 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1523
  vivify_578:
    set $P1524, $P1523[$P1522]
    unless_null $P1524, vivify_579
    $P1524 = root_new ['parrot';'Hash']
    set $P1523[$P1522], $P1524
  vivify_579:
    set $P1524[$P1520], $P1519
.annotate 'line', 1160
    .return ($P1519)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("178_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1550
    .param pmc param_1551
.annotate 'line', 1174
    .lex "self", param_1550
    .lex "$name", param_1551
.annotate 'line', 1175
    $P1552 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1552
    find_lex $P1553, "self"
    find_lex $P1554, "$name"
    $P1555 = $P1553."parse_name"($P1554)
    store_lex "@name", $P1555
.annotate 'line', 1176
    find_lex $P1556, "@name"
    find_lex $P1557, "self"
    find_lex $P1558, "$?CLASS"
    getattribute $P1559, $P1557, $P1558, "$!language"
    unless_null $P1559, vivify_580
    new $P1559, "Undef"
  vivify_580:
    set $S1560, $P1559
    downcase $S1561, $S1560
    $P1556."unshift"($S1561)
.annotate 'line', 1177
    find_lex $P1562, "@name"
    get_root_namespace $P1563, $P1562
.annotate 'line', 1174
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("179_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1565
    .param pmc param_1566 :optional
    .param int has_param_1566 :opt_flag
.annotate 'line', 1180
    .lex "self", param_1565
    if has_param_1566, optparam_581
    new $P1567, "Undef"
    set param_1566, $P1567
  optparam_581:
    .lex "$name", param_1566
.annotate 'line', 1181
    find_lex $P1569, "$name"
    unless $P1569, if_1568_end
.annotate 'line', 1182
    find_lex $P1570, "$name"
    find_lex $P1571, "self"
    find_lex $P1572, "$?CLASS"
    setattribute $P1571, $P1572, "$!language", $P1570
.annotate 'line', 1183
    find_lex $P1573, "$name"
    set $S1574, $P1573
    find_lex $P1575, "self"
    compreg $S1574, $P1575
  if_1568_end:
.annotate 'line', 1181
    find_lex $P1576, "self"
    find_lex $P1577, "$?CLASS"
    getattribute $P1578, $P1576, $P1577, "$!language"
    unless_null $P1578, vivify_582
    new $P1578, "Undef"
  vivify_582:
.annotate 'line', 1180
    .return ($P1578)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("180_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1580
    .param pmc param_1581
.annotate 'line', 1188
    .const 'Sub' $P1591 = "181_1302969596.256" 
    capture_lex $P1591
    .lex "self", param_1580
    .lex "$name", param_1581
.annotate 'line', 1189
    new $P1582, "Undef"
    .lex "$base", $P1582
.annotate 'line', 1190
    new $P1583, "Undef"
    .lex "$loaded", $P1583
.annotate 'line', 1189
    find_lex $P1584, "self"
    find_lex $P1585, "$name"
    $P1586 = $P1584."parse_name"($P1585)
    join $S1587, "/", $P1586
    new $P1588, 'String'
    set $P1588, $S1587
    store_lex "$base", $P1588
.annotate 'line', 1190
    new $P1589, "Integer"
    assign $P1589, 0
    store_lex "$loaded", $P1589
.annotate 'line', 1191
    .const 'Sub' $P1591 = "181_1302969596.256" 
    capture_lex $P1591
    $P1591()
.annotate 'line', 1192
    find_lex $P1604, "$loaded"
    if $P1604, unless_1603_end
    find_lex $P1605, "$base"
    concat $P1606, $P1605, ".pir"
    set $S1607, $P1606
    load_bytecode $S1607
    new $P1608, "Integer"
    assign $P1608, 1
    store_lex "$loaded", $P1608
  unless_1603_end:
.annotate 'line', 1193
    find_lex $P1609, "self"
    find_lex $P1610, "$name"
    $P1611 = $P1609."get_module"($P1610)
.annotate 'line', 1188
    .return ($P1611)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1590"  :anon :subid("181_1302969596.256") :outer("180_1302969596.256")
.annotate 'line', 1191
    new $P1598, 'ExceptionHandler'
    set_label $P1598, control_1597
    $P1598."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1598
    find_lex $P1592, "$base"
    concat $P1593, $P1592, ".pbc"
    set $S1594, $P1593
    load_bytecode $S1594
    new $P1595, "Integer"
    assign $P1595, 1
    store_lex "$loaded", $P1595
    pop_eh 
    goto skip_handler_1596
  control_1597:
    .local pmc exception 
    .get_results (exception) 
    new $P1601, 'Integer'
    set $P1601, 1
    set exception["handled"], $P1601
    set $I1602, exception["handled"]
    ne $I1602, 1, nothandled_1600
  handled_1599:
    .return (exception)
  nothandled_1600:
    rethrow exception
  skip_handler_1596:
    .return ($P1595)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("182_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1613
    .param pmc param_1614
    .param pmc param_1615
.annotate 'line', 1196
    .const 'Sub' $P1621 = "183_1302969596.256" 
    capture_lex $P1621
    .lex "self", param_1613
    .lex "$target", param_1614
    .lex "%exports", param_1615
.annotate 'line', 1197
    find_lex $P1617, "%exports"
    defined $I1618, $P1617
    unless $I1618, for_undef_583
    iter $P1616, $P1617
    new $P1703, 'ExceptionHandler'
    set_label $P1703, loop1702_handler
    $P1703."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1703
  loop1702_test:
    unless $P1616, loop1702_done
    shift $P1619, $P1616
  loop1702_redo:
    .const 'Sub' $P1621 = "183_1302969596.256" 
    capture_lex $P1621
    $P1621($P1619)
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
  for_undef_583:
.annotate 'line', 1196
    .return ($P1616)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1620"  :anon :subid("183_1302969596.256") :outer("182_1302969596.256")
    .param pmc param_1624
.annotate 'line', 1197
    .const 'Sub' $P1691 = "186_1302969596.256" 
    capture_lex $P1691
    .const 'Sub' $P1671 = "185_1302969596.256" 
    capture_lex $P1671
    .const 'Sub' $P1642 = "184_1302969596.256" 
    capture_lex $P1642
.annotate 'line', 1198
    new $P1622, "Undef"
    .lex "$type", $P1622
.annotate 'line', 1199
    $P1623 = root_new ['parrot';'Hash']
    .lex "%items", $P1623
    .lex "$_", param_1624
.annotate 'line', 1198
    find_lex $P1625, "$_"
    $P1626 = $P1625."key"()
    store_lex "$type", $P1626
.annotate 'line', 1199
    find_lex $P1627, "$_"
    $P1628 = $P1627."value"()
    store_lex "%items", $P1628
.annotate 'line', 1200
    find_lex $P1631, "self"
    new $P1632, 'String'
    set $P1632, "import_"
    find_lex $P1633, "$type"
    concat $P1634, $P1632, $P1633
    set $S1635, $P1634
    can $I1636, $P1631, $S1635
    if $I1636, if_1630
.annotate 'line', 1203
    find_lex $P1660, "$target"
    new $P1661, 'String'
    set $P1661, "add_"
    find_lex $P1662, "$type"
    concat $P1663, $P1661, $P1662
    set $S1664, $P1663
    can $I1665, $P1660, $S1664
    if $I1665, if_1659
.annotate 'line', 1207
    find_lex $P1687, "%items"
    defined $I1688, $P1687
    unless $I1688, for_undef_584
    iter $P1686, $P1687
    new $P1700, 'ExceptionHandler'
    set_label $P1700, loop1699_handler
    $P1700."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1700
  loop1699_test:
    unless $P1686, loop1699_done
    shift $P1689, $P1686
  loop1699_redo:
    .const 'Sub' $P1691 = "186_1302969596.256" 
    capture_lex $P1691
    $P1691($P1689)
  loop1699_next:
    goto loop1699_test
  loop1699_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1701, exception, 'type'
    eq $P1701, .CONTROL_LOOP_NEXT, loop1699_next
    eq $P1701, .CONTROL_LOOP_REDO, loop1699_redo
  loop1699_done:
    pop_eh 
  for_undef_584:
.annotate 'line', 1206
    set $P1658, $P1686
.annotate 'line', 1203
    goto if_1659_end
  if_1659:
.annotate 'line', 1204
    find_lex $P1667, "%items"
    defined $I1668, $P1667
    unless $I1668, for_undef_586
    iter $P1666, $P1667
    new $P1684, 'ExceptionHandler'
    set_label $P1684, loop1683_handler
    $P1684."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1684
  loop1683_test:
    unless $P1666, loop1683_done
    shift $P1669, $P1666
  loop1683_redo:
    .const 'Sub' $P1671 = "185_1302969596.256" 
    capture_lex $P1671
    $P1671($P1669)
  loop1683_next:
    goto loop1683_test
  loop1683_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1685, exception, 'type'
    eq $P1685, .CONTROL_LOOP_NEXT, loop1683_next
    eq $P1685, .CONTROL_LOOP_REDO, loop1683_redo
  loop1683_done:
    pop_eh 
  for_undef_586:
.annotate 'line', 1203
    set $P1658, $P1666
  if_1659_end:
    set $P1629, $P1658
.annotate 'line', 1200
    goto if_1630_end
  if_1630:
.annotate 'line', 1201
    find_lex $P1638, "%items"
    defined $I1639, $P1638
    unless $I1639, for_undef_587
    iter $P1637, $P1638
    new $P1656, 'ExceptionHandler'
    set_label $P1656, loop1655_handler
    $P1656."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1656
  loop1655_test:
    unless $P1637, loop1655_done
    shift $P1640, $P1637
  loop1655_redo:
    .const 'Sub' $P1642 = "184_1302969596.256" 
    capture_lex $P1642
    $P1642($P1640)
  loop1655_next:
    goto loop1655_test
  loop1655_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1657, exception, 'type'
    eq $P1657, .CONTROL_LOOP_NEXT, loop1655_next
    eq $P1657, .CONTROL_LOOP_REDO, loop1655_redo
  loop1655_done:
    pop_eh 
  for_undef_587:
.annotate 'line', 1200
    set $P1629, $P1637
  if_1630_end:
.annotate 'line', 1197
    .return ($P1629)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1690"  :anon :subid("186_1302969596.256") :outer("183_1302969596.256")
    .param pmc param_1692
.annotate 'line', 1207
    .lex "$_", param_1692
    find_lex $P1693, "$_"
    $P1694 = $P1693."value"()
    find_lex $P1695, "$_"
    $P1696 = $P1695."key"()
    set $S1697, $P1696
    find_lex $P1698, "$target"
    unless_null $P1698, vivify_585
    $P1698 = root_new ['parrot';'Hash']
    store_lex "$target", $P1698
  vivify_585:
    set $P1698[$S1697], $P1694
    .return ($P1694)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1670"  :anon :subid("185_1302969596.256") :outer("183_1302969596.256")
    .param pmc param_1672
.annotate 'line', 1204
    .lex "$_", param_1672
    find_lex $P1673, "$target"
    find_lex $P1674, "$_"
    $P1675 = $P1674."key"()
    find_lex $P1676, "$_"
    $P1677 = $P1676."value"()
    new $P1678, 'String'
    set $P1678, "add_"
    find_lex $P1679, "$type"
    concat $P1680, $P1678, $P1679
    set $S1681, $P1680
    $P1682 = $P1673.$S1681($P1675, $P1677)
    .return ($P1682)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1641"  :anon :subid("184_1302969596.256") :outer("183_1302969596.256")
    .param pmc param_1643
.annotate 'line', 1201
    .lex "$_", param_1643
    find_lex $P1644, "self"
    find_lex $P1645, "$target"
    find_lex $P1646, "$_"
    $P1647 = $P1646."key"()
    find_lex $P1648, "$_"
    $P1649 = $P1648."value"()
    new $P1650, 'String'
    set $P1650, "import_"
    find_lex $P1651, "$type"
    concat $P1652, $P1650, $P1651
    set $S1653, $P1652
    $P1654 = $P1644.$S1653($P1645, $P1647, $P1649)
    .return ($P1654)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("187_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1706
    .param pmc param_1707
.annotate 'line', 1212
    .lex "self", param_1706
    .lex "$value", param_1707
.annotate 'line', 1214
    getinterp $P1710
    $P1711 = $P1710."stdout_handle"()
    $N1712 = $P1711."tell"()
    find_dynamic_lex $P1713, "$*AUTOPRINTPOS"
    unless_null $P1713, vivify_588
    get_hll_global $P1713, "$AUTOPRINTPOS"
    unless_null $P1713, vivify_589
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_589:
  vivify_588:
    set $N1714, $P1713
    isgt $I1715, $N1712, $N1714
    unless $I1715, unless_1709
    new $P1708, 'Integer'
    set $P1708, $I1715
    goto unless_1709_end
  unless_1709:
.annotate 'line', 1213
    find_lex $P1716, "$value"
    set $S1717, $P1716
    say $S1717
  unless_1709_end:
.annotate 'line', 1212
    .return ($P1708)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("188_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1719
    .param pmc param_1720 :slurpy :named
.annotate 'line', 1217
    .const 'Sub' $P1752 = "189_1302969596.256" 
    capture_lex $P1752
    .lex "self", param_1719
    .lex "%adverbs", param_1720
.annotate 'line', 1218
    new $P1721, "Undef"
    .lex "$target", $P1721
.annotate 'line', 1222
    new $P1722, "Undef"
    .lex "$stdin", $P1722
.annotate 'line', 1223
    new $P1723, "Undef"
    .lex "$encoding", $P1723
.annotate 'line', 1228
    new $P1724, "Undef"
    .lex "$save_ctx", $P1724
.annotate 'line', 1218
    find_lex $P1725, "%adverbs"
    unless_null $P1725, vivify_590
    $P1725 = root_new ['parrot';'Hash']
  vivify_590:
    set $P1726, $P1725["target"]
    unless_null $P1726, vivify_591
    new $P1726, "Undef"
  vivify_591:
    set $S1727, $P1726
    downcase $S1728, $S1727
    new $P1729, 'String'
    set $P1729, $S1728
    store_lex "$target", $P1729
.annotate 'line', 1220
    getinterp $P1730
    $P1731 = $P1730."stderr_handle"()
    find_lex $P1732, "self"
    $S1733 = $P1732."commandline_banner"()
    print $P1731, $S1733
.annotate 'line', 1222
    getinterp $P1734
    $P1735 = $P1734."stdin_handle"()
    store_lex "$stdin", $P1735
.annotate 'line', 1223
    find_lex $P1736, "%adverbs"
    unless_null $P1736, vivify_592
    $P1736 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1737, $P1736["encoding"]
    unless_null $P1737, vivify_593
    new $P1737, "Undef"
  vivify_593:
    set $S1738, $P1737
    new $P1739, 'String'
    set $P1739, $S1738
    store_lex "$encoding", $P1739
.annotate 'line', 1224
    find_lex $P1743, "$encoding"
    if $P1743, if_1742
    set $P1741, $P1743
    goto if_1742_end
  if_1742:
    find_lex $P1744, "$encoding"
    set $S1745, $P1744
    isne $I1746, $S1745, "fixed_8"
    new $P1741, 'Integer'
    set $P1741, $I1746
  if_1742_end:
    unless $P1741, if_1740_end
.annotate 'line', 1225
    find_lex $P1747, "$stdin"
    find_lex $P1748, "$encoding"
    $P1747."encoding"($P1748)
  if_1740_end:
.annotate 'line', 1224
    find_lex $P1749, "$save_ctx"
.annotate 'line', 1229
    new $P1863, 'ExceptionHandler'
    set_label $P1863, loop1862_handler
    $P1863."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1863
  loop1862_test:
    new $P1750, "Integer"
    assign $P1750, 1
    unless $P1750, loop1862_done
  loop1862_redo:
    .const 'Sub' $P1752 = "189_1302969596.256" 
    capture_lex $P1752
    $P1752()
  loop1862_next:
    goto loop1862_test
  loop1862_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1864, exception, 'type'
    eq $P1864, .CONTROL_LOOP_NEXT, loop1862_next
    eq $P1864, .CONTROL_LOOP_REDO, loop1862_redo
  loop1862_done:
    pop_eh 
.annotate 'line', 1217
    .return ($P1750)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1751"  :anon :subid("189_1302969596.256") :outer("188_1302969596.256")
.annotate 'line', 1229
    .const 'Sub' $P1784 = "190_1302969596.256" 
    capture_lex $P1784
.annotate 'line', 1232
    new $P1753, "Undef"
    .lex "$prompt", $P1753
.annotate 'line', 1233
    new $P1754, "Undef"
    .lex "$code", $P1754
.annotate 'line', 1238
    new $P1755, "Undef"
    .lex "$*AUTOPRINTPOS", $P1755
.annotate 'line', 1239
    new $P1756, "Undef"
    .lex "$*CTXSAVE", $P1756
.annotate 'line', 1240
    new $P1757, "Undef"
    .lex "$*MAIN_CTX", $P1757
.annotate 'line', 1230
    find_lex $P1759, "$stdin"
    if $P1759, unless_1758_end
    set $I1760, .CONTROL_LOOP_LAST
    die 0, $I1760
  unless_1758_end:
.annotate 'line', 1232
    find_lex $P1762, "self"
    $P1763 = $P1762."commandline_prompt"()
    set $P1761, $P1763
    defined $I1765, $P1761
    if $I1765, default_1764
    new $P1766, "String"
    assign $P1766, "> "
    set $P1761, $P1766
  default_1764:
    store_lex "$prompt", $P1761
.annotate 'line', 1233
    find_lex $P1767, "$stdin"
    find_lex $P1768, "$prompt"
    set $S1769, $P1768
    $P1770 = $P1767."readline_interactive"($S1769)
    store_lex "$code", $P1770
.annotate 'line', 1235
    find_lex $P1772, "$code"
    isnull $I1773, $P1772
    unless $I1773, if_1771_end
    set $I1774, .CONTROL_LOOP_LAST
    die 0, $I1774
  if_1771_end:
.annotate 'line', 1238
    getinterp $P1775
    $P1776 = $P1775."stdout_handle"()
    $P1777 = $P1776."tell"()
    store_lex "$*AUTOPRINTPOS", $P1777
.annotate 'line', 1239
    find_lex $P1778, "self"
    store_lex "$*CTXSAVE", $P1778
    find_lex $P1779, "$*MAIN_CTX"
    unless_null $P1779, vivify_594
    get_hll_global $P1779, "$MAIN_CTX"
    unless_null $P1779, vivify_595
    die "Contextual $*MAIN_CTX not found"
  vivify_595:
  vivify_594:
.annotate 'line', 1242
    find_lex $P1782, "$code"
    if $P1782, if_1781
    set $P1780, $P1782
    goto if_1781_end
  if_1781:
    .const 'Sub' $P1784 = "190_1302969596.256" 
    capture_lex $P1784
    $P1861 = $P1784()
    set $P1780, $P1861
  if_1781_end:
.annotate 'line', 1229
    .return ($P1780)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1783"  :anon :subid("190_1302969596.256") :outer("189_1302969596.256")
.annotate 'line', 1242
    .const 'Sub' $P1817 = "193_1302969596.256" 
    capture_lex $P1817
    .const 'Sub' $P1790 = "191_1302969596.256" 
    capture_lex $P1790
.annotate 'line', 1244
    new $P1785, "Undef"
    .lex "$output", $P1785
.annotate 'line', 1243
    find_lex $P1786, "$code"
    concat $P1787, $P1786, "\n"
    store_lex "$code", $P1787
    find_lex $P1788, "$output"
.annotate 'line', 1245
    .const 'Sub' $P1790 = "191_1302969596.256" 
    capture_lex $P1790
    $P1790()
.annotate 'line', 1252
    find_dynamic_lex $P1814, "$*MAIN_CTX"
    unless_null $P1814, vivify_596
    get_hll_global $P1814, "$MAIN_CTX"
    unless_null $P1814, vivify_597
    die "Contextual $*MAIN_CTX not found"
  vivify_597:
  vivify_596:
    defined $I1815, $P1814
    unless $I1815, if_1813_end
    .const 'Sub' $P1817 = "193_1302969596.256" 
    capture_lex $P1817
    $P1817()
  if_1813_end:
.annotate 'line', 1260
    find_lex $P1840, "$output"
    isnull $I1841, $P1840
    unless $I1841, if_1839_end
    set $I1842, .CONTROL_LOOP_NEXT
    die 0, $I1842
  if_1839_end:
.annotate 'line', 1262
    find_lex $P1845, "$target"
    isfalse $I1846, $P1845
    if $I1846, if_1844
.annotate 'line', 1264
    find_lex $P1852, "$target"
    set $S1853, $P1852
    iseq $I1854, $S1853, "pir"
    if $I1854, if_1851
.annotate 'line', 1267
    find_lex $P1856, "self"
    find_lex $P1857, "$output"
    find_lex $P1858, "$target"
    find_lex $P1859, "%adverbs"
    $P1860 = $P1856."dumper"($P1857, $P1858, $P1859 :flat)
.annotate 'line', 1266
    set $P1850, $P1860
.annotate 'line', 1264
    goto if_1851_end
  if_1851:
.annotate 'line', 1265
    find_lex $P1855, "$output"
    say $P1855
  if_1851_end:
.annotate 'line', 1264
    set $P1843, $P1850
.annotate 'line', 1262
    goto if_1844_end
  if_1844:
.annotate 'line', 1263
    find_lex $P1847, "self"
    find_lex $P1848, "$output"
    $P1849 = $P1847."autoprint"($P1848)
.annotate 'line', 1262
    set $P1843, $P1849
  if_1844_end:
.annotate 'line', 1242
    .return ($P1843)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1789"  :anon :subid("191_1302969596.256") :outer("190_1302969596.256")
.annotate 'line', 1245
    .const 'Sub' $P1802 = "192_1302969596.256" 
    capture_lex $P1802
    new $P1798, 'ExceptionHandler'
    set_label $P1798, control_1797
    $P1798."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1798
.annotate 'line', 1246
    find_lex $P1791, "self"
    find_lex $P1792, "$code"
    find_lex $P1793, "$save_ctx"
    find_lex $P1794, "%adverbs"
    $P1795 = $P1791."eval"($P1792, $P1794 :flat, $P1793 :named("outer_ctx"))
    store_lex "$output", $P1795
.annotate 'line', 1245
    pop_eh 
    goto skip_handler_1796
  control_1797:
.annotate 'line', 1247
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1802 = "192_1302969596.256" 
    newclosure $P1810, $P1802
    $P1810(exception)
    new $P1811, 'Integer'
    set $P1811, 1
    set exception["handled"], $P1811
    set $I1812, exception["handled"]
    ne $I1812, 1, nothandled_1800
  handled_1799:
    .return (exception)
  nothandled_1800:
    rethrow exception
  skip_handler_1796:
.annotate 'line', 1245
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1801"  :anon :subid("192_1302969596.256") :outer("191_1302969596.256")
    .param pmc param_1803
.annotate 'line', 1247
    .lex "$_", param_1803
    find_lex $P1804, "$_"
    .lex "$!", $P1804
.annotate 'line', 1248
    find_lex $P1805, "$!"
    set $S1806, $P1805
    new $P1807, 'String'
    set $P1807, $S1806
    concat $P1808, $P1807, "\n"
    print $P1808
.annotate 'line', 1249
    set $I1809, .CONTROL_LOOP_NEXT
    die 0, $I1809
.annotate 'line', 1247
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1816"  :anon :subid("193_1302969596.256") :outer("190_1302969596.256")
.annotate 'line', 1252
    .const 'Sub' $P1828 = "194_1302969596.256" 
    capture_lex $P1828
.annotate 'line', 1253
    get_global $P1818, "$interactive_ctx"
    unless_null $P1818, vivify_598
    new $P1818, "Undef"
    set_global "$interactive_ctx", $P1818
  vivify_598:
.annotate 'line', 1254
    get_global $P1819, "%interactive_pad"
    unless_null $P1819, vivify_599
    $P1819 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P1819
  vivify_599:
.annotate 'line', 1252
    get_global $P1820, "$interactive_ctx"
    get_global $P1821, "%interactive_pad"
.annotate 'line', 1255
    find_dynamic_lex $P1823, "$*MAIN_CTX"
    unless_null $P1823, vivify_600
    get_hll_global $P1823, "$MAIN_CTX"
    unless_null $P1823, vivify_601
    die "Contextual $*MAIN_CTX not found"
  vivify_601:
  vivify_600:
    $P1824 = $P1823."lexpad_full"()
    defined $I1825, $P1824
    unless $I1825, for_undef_602
    iter $P1822, $P1824
    new $P1836, 'ExceptionHandler'
    set_label $P1836, loop1835_handler
    $P1836."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1836
  loop1835_test:
    unless $P1822, loop1835_done
    shift $P1826, $P1822
  loop1835_redo:
    .const 'Sub' $P1828 = "194_1302969596.256" 
    capture_lex $P1828
    $P1828($P1826)
  loop1835_next:
    goto loop1835_test
  loop1835_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1837, exception, 'type'
    eq $P1837, .CONTROL_LOOP_NEXT, loop1835_next
    eq $P1837, .CONTROL_LOOP_REDO, loop1835_redo
  loop1835_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 1258
    get_global $P1838, "$interactive_ctx"
    store_lex "$save_ctx", $P1838
.annotate 'line', 1252
    .return ($P1838)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1827"  :anon :subid("194_1302969596.256") :outer("193_1302969596.256")
    .param pmc param_1829
.annotate 'line', 1255
    .lex "$_", param_1829
.annotate 'line', 1256
    find_lex $P1830, "$_"
    $P1831 = $P1830."value"()
    find_lex $P1832, "$_"
    $P1833 = $P1832."key"()
    get_global $P1834, "%interactive_pad"
    unless_null $P1834, vivify_603
    $P1834 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P1834
  vivify_603:
    set $P1834[$P1833], $P1831
.annotate 'line', 1255
    .return ($P1831)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("195_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1866
    .param pmc param_1867
    .param pmc param_1868 :slurpy
    .param pmc param_1869 :slurpy :named
.annotate 'line', 1273
    .const 'Sub' $P1888 = "196_1302969596.256" 
    capture_lex $P1888
    .lex "self", param_1866
    .lex "$code", param_1867
    .lex "@args", param_1868
    .lex "%adverbs", param_1869
.annotate 'line', 1274
    new $P1870, "Undef"
    .lex "$output", $P1870
.annotate 'line', 1273
    find_lex $P1871, "$output"
.annotate 'line', 1275
    find_lex $P1872, "self"
    find_lex $P1873, "$code"
    find_lex $P1874, "%adverbs"
    $P1875 = $P1872."compile"($P1873, $P1874 :flat)
    store_lex "$output", $P1875
.annotate 'line', 1277
    find_lex $P1879, "$output"
    isa $I1880, $P1879, "String"
    new $P1881, 'Integer'
    set $P1881, $I1880
    isfalse $I1882, $P1881
    if $I1882, if_1878
    new $P1877, 'Integer'
    set $P1877, $I1882
    goto if_1878_end
  if_1878:
.annotate 'line', 1278
    find_lex $P1883, "%adverbs"
    unless_null $P1883, vivify_604
    $P1883 = root_new ['parrot';'Hash']
  vivify_604:
    set $P1884, $P1883["target"]
    unless_null $P1884, vivify_605
    new $P1884, "Undef"
  vivify_605:
    set $S1885, $P1884
    iseq $I1886, $S1885, ""
    new $P1877, 'Integer'
    set $P1877, $I1886
  if_1878_end:
    unless $P1877, if_1876_end
    .const 'Sub' $P1888 = "196_1302969596.256" 
    capture_lex $P1888
    $P1888()
  if_1876_end:
.annotate 'line', 1277
    find_lex $P1904, "$output"
.annotate 'line', 1273
    .return ($P1904)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1887"  :anon :subid("196_1302969596.256") :outer("195_1302969596.256")
.annotate 'line', 1279
    new $P1889, "Undef"
    .lex "$outer_ctx", $P1889
    find_lex $P1890, "%adverbs"
    unless_null $P1890, vivify_606
    $P1890 = root_new ['parrot';'Hash']
  vivify_606:
    set $P1891, $P1890["outer_ctx"]
    unless_null $P1891, vivify_607
    new $P1891, "Undef"
  vivify_607:
    store_lex "$outer_ctx", $P1891
.annotate 'line', 1280
    find_lex $P1893, "$outer_ctx"
    defined $I1894, $P1893
    unless $I1894, if_1892_end
.annotate 'line', 1281
    find_lex $P1895, "$output"
    unless_null $P1895, vivify_608
    $P1895 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    set $P1896, $P1895[0]
    unless_null $P1896, vivify_609
    new $P1896, "Undef"
  vivify_609:
    find_lex $P1897, "$outer_ctx"
    $P1896."set_outer_ctx"($P1897)
  if_1892_end:
.annotate 'line', 1284
    find_lex $P1898, "%adverbs"
    unless_null $P1898, vivify_610
    $P1898 = root_new ['parrot';'Hash']
  vivify_610:
    set $P1899, $P1898["trace"]
    unless_null $P1899, vivify_611
    new $P1899, "Undef"
  vivify_611:
    set $I1900, $P1899
    trace $I1900
.annotate 'line', 1285
    find_lex $P1901, "$output"
    find_lex $P1902, "@args"
    $P1903 = $P1901($P1902 :flat)
    store_lex "$output", $P1903
.annotate 'line', 1286
    trace 0
.annotate 'line', 1278
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("197_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1906
.annotate 'line', 1292
    .lex "self", param_1906
.annotate 'line', 1294

                $P0 = getinterp
                $P1907 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1907
.annotate 'line', 1298
    new $P1908, "Integer"
    assign $P1908, 0
    store_dynamic_lex "$*CTXSAVE", $P1908
.annotate 'line', 1292
    .return ($P1908)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("198_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1910
    .param pmc param_1911 :slurpy
.annotate 'line', 1301
    .lex "self", param_1910
    .lex "@args", param_1911
.annotate 'line', 1302
    find_lex $P1912, "@args"
    join $S1913, "", $P1912
    die $S1913
.annotate 'line', 1301
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("199_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1915
    .param pmc param_1916 :optional
    .param int has_param_1916 :opt_flag
.annotate 'line', 1305
    .lex "self", param_1915
    if has_param_1916, optparam_612
    $P1917 = root_new ['parrot';'ResizablePMCArray']
    set param_1916, $P1917
  optparam_612:
    .lex "@value", param_1916
.annotate 'line', 1306
    find_lex $P1919, "@value"
    set $N1920, $P1919
    unless $N1920, if_1918_end
.annotate 'line', 1307
    find_lex $P1921, "@value"
    find_lex $P1922, "self"
    find_lex $P1923, "$?CLASS"
    setattribute $P1922, $P1923, "@!stages", $P1921
  if_1918_end:
.annotate 'line', 1306
    find_lex $P1924, "self"
    find_lex $P1925, "$?CLASS"
    getattribute $P1926, $P1924, $P1925, "@!stages"
    unless_null $P1926, vivify_613
    $P1926 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
.annotate 'line', 1305
    .return ($P1926)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("200_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1928
    .param pmc param_1929 :slurpy
.annotate 'line', 1312
    .lex "self", param_1928
    .lex "@value", param_1929
.annotate 'line', 1313
    find_lex $P1931, "@value"
    set $N1932, $P1931
    unless $N1932, if_1930_end
.annotate 'line', 1314
    find_lex $P1933, "@value"
    unless_null $P1933, vivify_614
    $P1933 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    set $P1934, $P1933[0]
    unless_null $P1934, vivify_615
    new $P1934, "Undef"
  vivify_615:
    find_lex $P1935, "self"
    find_lex $P1936, "$?CLASS"
    setattribute $P1935, $P1936, "$!parsegrammar", $P1934
  if_1930_end:
.annotate 'line', 1313
    find_lex $P1937, "self"
    find_lex $P1938, "$?CLASS"
    getattribute $P1939, $P1937, $P1938, "$!parsegrammar"
    unless_null $P1939, vivify_616
    new $P1939, "Undef"
  vivify_616:
.annotate 'line', 1312
    .return ($P1939)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("201_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1941
    .param pmc param_1942 :slurpy
.annotate 'line', 1319
    .lex "self", param_1941
    .lex "@value", param_1942
.annotate 'line', 1320
    find_lex $P1944, "@value"
    set $N1945, $P1944
    unless $N1945, if_1943_end
.annotate 'line', 1321
    find_lex $P1946, "@value"
    unless_null $P1946, vivify_617
    $P1946 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    set $P1947, $P1946[0]
    unless_null $P1947, vivify_618
    new $P1947, "Undef"
  vivify_618:
    find_lex $P1948, "self"
    find_lex $P1949, "$?CLASS"
    setattribute $P1948, $P1949, "$!parseactions", $P1947
  if_1943_end:
.annotate 'line', 1320
    find_lex $P1950, "self"
    find_lex $P1951, "$?CLASS"
    getattribute $P1952, $P1950, $P1951, "$!parseactions"
    unless_null $P1952, vivify_619
    new $P1952, "Undef"
  vivify_619:
.annotate 'line', 1319
    .return ($P1952)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("202_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1954
    .param pmc param_1955 :slurpy
.annotate 'line', 1326
    .lex "self", param_1954
    .lex "@value", param_1955
.annotate 'line', 1327
    find_lex $P1957, "@value"
    set $N1958, $P1957
    unless $N1958, if_1956_end
.annotate 'line', 1328
    find_lex $P1959, "@value"
    unless_null $P1959, vivify_620
    $P1959 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    set $P1960, $P1959[0]
    unless_null $P1960, vivify_621
    new $P1960, "Undef"
  vivify_621:
    find_lex $P1961, "self"
    find_lex $P1962, "$?CLASS"
    setattribute $P1961, $P1962, "$!astgrammar", $P1960
  if_1956_end:
.annotate 'line', 1327
    find_lex $P1963, "self"
    find_lex $P1964, "$?CLASS"
    getattribute $P1965, $P1963, $P1964, "$!astgrammar"
    unless_null $P1965, vivify_622
    new $P1965, "Undef"
  vivify_622:
.annotate 'line', 1326
    .return ($P1965)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("203_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1967
    .param pmc param_1968 :optional
    .param int has_param_1968 :opt_flag
.annotate 'line', 1333
    .lex "self", param_1967
    if has_param_1968, optparam_623
    new $P1969, "Undef"
    set param_1968, $P1969
  optparam_623:
    .lex "$value", param_1968
.annotate 'line', 1334
    find_lex $P1971, "$value"
    defined $I1972, $P1971
    unless $I1972, if_1970_end
.annotate 'line', 1335
    find_lex $P1973, "$value"
    find_lex $P1974, "self"
    find_lex $P1975, "$?CLASS"
    setattribute $P1974, $P1975, "$!commandline_banner", $P1973
  if_1970_end:
.annotate 'line', 1334
    find_lex $P1976, "self"
    find_lex $P1977, "$?CLASS"
    getattribute $P1978, $P1976, $P1977, "$!commandline_banner"
    unless_null $P1978, vivify_624
    new $P1978, "Undef"
  vivify_624:
.annotate 'line', 1333
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("204_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1980
    .param pmc param_1981 :optional
    .param int has_param_1981 :opt_flag
.annotate 'line', 1340
    .lex "self", param_1980
    if has_param_1981, optparam_625
    new $P1982, "Undef"
    set param_1981, $P1982
  optparam_625:
    .lex "$value", param_1981
.annotate 'line', 1341
    find_lex $P1984, "$value"
    defined $I1985, $P1984
    unless $I1985, if_1983_end
.annotate 'line', 1342
    find_lex $P1986, "$value"
    find_lex $P1987, "self"
    find_lex $P1988, "$?CLASS"
    setattribute $P1987, $P1988, "$!commandline_prompt", $P1986
  if_1983_end:
.annotate 'line', 1341
    find_lex $P1989, "self"
    find_lex $P1990, "$?CLASS"
    getattribute $P1991, $P1989, $P1990, "$!commandline_prompt"
    unless_null $P1991, vivify_626
    new $P1991, "Undef"
  vivify_626:
.annotate 'line', 1340
    .return ($P1991)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("205_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_1993
    .param pmc param_1994 :optional
    .param int has_param_1994 :opt_flag
.annotate 'line', 1347
    .lex "self", param_1993
    if has_param_1994, optparam_627
    new $P1995, "Undef"
    set param_1994, $P1995
  optparam_627:
    .lex "$value", param_1994
.annotate 'line', 1348
    find_lex $P1997, "$value"
    defined $I1998, $P1997
    unless $I1998, if_1996_end
.annotate 'line', 1349
    find_lex $P1999, "$value"
    find_lex $P2000, "self"
    find_lex $P2001, "$?CLASS"
    setattribute $P2000, $P2001, "$!compiler_progname", $P1999
  if_1996_end:
.annotate 'line', 1348
    find_lex $P2002, "self"
    find_lex $P2003, "$?CLASS"
    getattribute $P2004, $P2002, $P2003, "$!compiler_progname"
    unless_null $P2004, vivify_628
    new $P2004, "Undef"
  vivify_628:
.annotate 'line', 1347
    .return ($P2004)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("206_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2006
    .param pmc param_2007 :optional
    .param int has_param_2007 :opt_flag
.annotate 'line', 1354
    .lex "self", param_2006
    if has_param_2007, optparam_629
    $P2008 = root_new ['parrot';'ResizablePMCArray']
    set param_2007, $P2008
  optparam_629:
    .lex "@value", param_2007
.annotate 'line', 1355
    find_lex $P2010, "@value"
    set $N2011, $P2010
    unless $N2011, if_2009_end
.annotate 'line', 1356
    find_lex $P2012, "@value"
    find_lex $P2013, "self"
    find_lex $P2014, "$?CLASS"
    setattribute $P2013, $P2014, "@!cmdoptions", $P2012
  if_2009_end:
.annotate 'line', 1355
    find_lex $P2015, "self"
    find_lex $P2016, "$?CLASS"
    getattribute $P2017, $P2015, $P2016, "@!cmdoptions"
    unless_null $P2017, vivify_630
    $P2017 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
.annotate 'line', 1354
    .return ($P2017)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("207_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2019
    .param pmc param_2020
    .param pmc param_2021 :slurpy :named
.annotate 'line', 1361
    .const 'Sub' $P2047 = "208_1302969596.256" 
    capture_lex $P2047
    .lex "self", param_2019
    .lex "@args", param_2020
    .lex "%adverbs", param_2021
.annotate 'line', 1374
    new $P2022, "Undef"
    .lex "$program-name", $P2022
.annotate 'line', 1375
    new $P2023, "Undef"
    .lex "$res", $P2023
.annotate 'line', 1376
    $P2024 = root_new ['parrot';'Hash']
    .lex "%opts", $P2024
.annotate 'line', 1377
    $P2025 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2025
.annotate 'line', 1370
    find_lex $P2027, "@args"
    unless_null $P2027, vivify_631
    $P2027 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    set $P2028, $P2027[2]
    unless_null $P2028, vivify_632
    new $P2028, "Undef"
  vivify_632:
    set $S2029, $P2028
    index $I2030, $S2029, "@INC"
    set $N2031, $I2030
    isge $I2032, $N2031, 0.0
    unless $I2032, if_2026_end
.annotate 'line', 1371
    exit 0
  if_2026_end:
.annotate 'line', 1374
    find_lex $P2033, "@args"
    unless_null $P2033, vivify_633
    $P2033 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $P2034, $P2033[0]
    unless_null $P2034, vivify_634
    new $P2034, "Undef"
  vivify_634:
    store_lex "$program-name", $P2034
.annotate 'line', 1375
    find_lex $P2035, "self"
    find_lex $P2036, "@args"
    $P2037 = $P2035."process_args"($P2036)
    store_lex "$res", $P2037
.annotate 'line', 1376
    find_lex $P2038, "$res"
    $P2039 = $P2038."options"()
    store_lex "%opts", $P2039
.annotate 'line', 1377
    find_lex $P2040, "$res"
    $P2041 = $P2040."arguments"()
    store_lex "@a", $P2041
.annotate 'line', 1379
    find_lex $P2043, "%opts"
    defined $I2044, $P2043
    unless $I2044, for_undef_635
    iter $P2042, $P2043
    new $P2055, 'ExceptionHandler'
    set_label $P2055, loop2054_handler
    $P2055."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2055
  loop2054_test:
    unless $P2042, loop2054_done
    shift $P2045, $P2042
  loop2054_redo:
    .const 'Sub' $P2047 = "208_1302969596.256" 
    capture_lex $P2047
    $P2047($P2045)
  loop2054_next:
    goto loop2054_test
  loop2054_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2056, exception, 'type'
    eq $P2056, .CONTROL_LOOP_NEXT, loop2054_next
    eq $P2056, .CONTROL_LOOP_REDO, loop2054_redo
  loop2054_done:
    pop_eh 
  for_undef_635:
.annotate 'line', 1382
    find_lex $P2058, "%adverbs"
    unless_null $P2058, vivify_639
    $P2058 = root_new ['parrot';'Hash']
  vivify_639:
    set $P2059, $P2058["help"]
    unless_null $P2059, vivify_640
    new $P2059, "Undef"
  vivify_640:
    unless $P2059, if_2057_end
    find_lex $P2060, "self"
    find_lex $P2061, "$program-name"
    $P2060."usage"($P2061)
  if_2057_end:
.annotate 'line', 1383
    find_lex $P2063, "%adverbs"
    unless_null $P2063, vivify_641
    $P2063 = root_new ['parrot';'Hash']
  vivify_641:
    set $P2064, $P2063["version"]
    unless_null $P2064, vivify_642
    new $P2064, "Undef"
  vivify_642:
    unless $P2064, if_2062_end
    find_lex $P2065, "self"
    $P2065."version"()
  if_2062_end:
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
.sub "_block2046"  :anon :subid("208_1302969596.256") :outer("207_1302969596.256")
    .param pmc param_2048
.annotate 'line', 1379
    .lex "$k", param_2048
.annotate 'line', 1380
    find_lex $P2049, "$k"
    find_lex $P2050, "%opts"
    unless_null $P2050, vivify_636
    $P2050 = root_new ['parrot';'Hash']
  vivify_636:
    set $P2051, $P2050[$P2049]
    unless_null $P2051, vivify_637
    new $P2051, "Undef"
  vivify_637:
    find_lex $P2052, "$k"
    find_lex $P2053, "%adverbs"
    unless_null $P2053, vivify_638
    $P2053 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2053
  vivify_638:
    set $P2053[$P2052], $P2051
.annotate 'line', 1379
    .return ($P2051)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("209_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2067
    .param pmc param_2068
.annotate 'line', 1479
    .const 'Sub' $P2083 = "210_1302969596.256" 
    capture_lex $P2083
    .lex "self", param_2067
    .lex "@args", param_2068
.annotate 'line', 1483
    new $P2069, "Undef"
    .lex "$p", $P2069
.annotate 'line', 1486
    new $P2070, "Undef"
    .lex "$res", $P2070
.annotate 'line', 1481
    find_lex $P2071, "self"
    find_lex $P2072, "@args"
    $P2073 = $P2072."shift"()
    $P2071."compiler_progname"($P2073)
.annotate 'line', 1483
    get_hll_global $P2074, ["HLL";"CommandLine"], "Parser"
    find_lex $P2075, "self"
    find_lex $P2076, "$?CLASS"
    getattribute $P2077, $P2075, $P2076, "@!cmdoptions"
    unless_null $P2077, vivify_643
    $P2077 = root_new ['parrot';'ResizablePMCArray']
  vivify_643:
    $P2078 = $P2074."new"($P2077)
    store_lex "$p", $P2078
.annotate 'line', 1484
    find_lex $P2079, "$p"
    $P2079."add-stopper"("-e")
.annotate 'line', 1485
    find_lex $P2080, "$p"
    $P2080."stop-after-first-arg"()
    find_lex $P2081, "$res"
.annotate 'line', 1487
    .const 'Sub' $P2083 = "210_1302969596.256" 
    capture_lex $P2083
    $P2083()
    find_lex $P2101, "$res"
.annotate 'line', 1479
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2082"  :anon :subid("210_1302969596.256") :outer("209_1302969596.256")
.annotate 'line', 1487
    .const 'Sub' $P2093 = "211_1302969596.256" 
    capture_lex $P2093
    new $P2089, 'ExceptionHandler'
    set_label $P2089, control_2088
    $P2089."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2089
.annotate 'line', 1488
    find_lex $P2084, "$p"
    find_lex $P2085, "@args"
    $P2086 = $P2084."parse"($P2085)
    store_lex "$res", $P2086
.annotate 'line', 1487
    pop_eh 
    goto skip_handler_2087
  control_2088:
.annotate 'line', 1489
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2093 = "211_1302969596.256" 
    newclosure $P2098, $P2093
    $P2098(exception)
    new $P2099, 'Integer'
    set $P2099, 1
    set exception["handled"], $P2099
    set $I2100, exception["handled"]
    ne $I2100, 1, nothandled_2091
  handled_2090:
    .return (exception)
  nothandled_2091:
    rethrow exception
  skip_handler_2087:
.annotate 'line', 1487
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2092"  :anon :subid("211_1302969596.256") :outer("210_1302969596.256")
    .param pmc param_2094
.annotate 'line', 1489
    .lex "$_", param_2094
    find_lex $P2095, "$_"
    .lex "$!", $P2095
.annotate 'line', 1490
    find_lex $P2096, "$_"
    say $P2096
.annotate 'line', 1491
    find_lex $P2097, "self"
    $P2097."usage"()
.annotate 'line', 1492
    exit 1
.annotate 'line', 1489
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("212_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2105
    .param pmc param_2106
    .param pmc param_2107 :slurpy
    .param pmc param_2108 :slurpy :named
.annotate 'line', 1498
    .const 'Sub' $P2133 = "213_1302969596.256" 
    capture_lex $P2133
    new $P2104, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2104, control_2103
    push_eh $P2104
    .lex "self", param_2105
    .lex "$files", param_2106
    .lex "@args", param_2107
    .lex "%adverbs", param_2108
.annotate 'line', 1499
    new $P2109, "Undef"
    .lex "$target", $P2109
.annotate 'line', 1500
    new $P2110, "Undef"
    .lex "$encoding", $P2110
.annotate 'line', 1501
    $P2111 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2111
.annotate 'line', 1502
    $P2112 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2112
.annotate 'line', 1499
    find_lex $P2113, "%adverbs"
    unless_null $P2113, vivify_644
    $P2113 = root_new ['parrot';'Hash']
  vivify_644:
    set $P2114, $P2113["target"]
    unless_null $P2114, vivify_645
    new $P2114, "Undef"
  vivify_645:
    set $S2115, $P2114
    downcase $S2116, $S2115
    new $P2117, 'String'
    set $P2117, $S2116
    store_lex "$target", $P2117
.annotate 'line', 1500
    find_lex $P2118, "%adverbs"
    unless_null $P2118, vivify_646
    $P2118 = root_new ['parrot';'Hash']
  vivify_646:
    set $P2119, $P2118["encoding"]
    unless_null $P2119, vivify_647
    new $P2119, "Undef"
  vivify_647:
    store_lex "$encoding", $P2119
.annotate 'line', 1501
    find_lex $P2122, "$files"
    does $I2123, $P2122, "array"
    if $I2123, if_2121
    find_lex $P2125, "$files"
    new $P2126, "ResizablePMCArray"
    push $P2126, $P2125
    set $P2120, $P2126
    goto if_2121_end
  if_2121:
    find_lex $P2124, "$files"
    set $P2120, $P2124
  if_2121_end:
    store_lex "@files", $P2120
    find_lex $P2127, "@codes"
.annotate 'line', 1503
    find_lex $P2129, "@files"
    defined $I2130, $P2129
    unless $I2130, for_undef_648
    iter $P2128, $P2129
    new $P2195, 'ExceptionHandler'
    set_label $P2195, loop2194_handler
    $P2195."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2195
  loop2194_test:
    unless $P2128, loop2194_done
    shift $P2131, $P2128
  loop2194_redo:
    .const 'Sub' $P2133 = "213_1302969596.256" 
    capture_lex $P2133
    $P2133($P2131)
  loop2194_next:
    goto loop2194_test
  loop2194_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2196, exception, 'type'
    eq $P2196, .CONTROL_LOOP_NEXT, loop2194_next
    eq $P2196, .CONTROL_LOOP_REDO, loop2194_redo
  loop2194_done:
    pop_eh 
  for_undef_648:
.annotate 'line', 1498
    .return ($P2128)
  control_2103:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2197, exception, "payload"
    .return ($P2197)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2132"  :anon :subid("213_1302969596.256") :outer("212_1302969596.256")
    .param pmc param_2138
.annotate 'line', 1503
    .const 'Sub' $P2142 = "214_1302969596.256" 
    capture_lex $P2142
.annotate 'line', 1504
    new $P2134, "Undef"
    .lex "$in-handle", $P2134
.annotate 'line', 1505
    new $P2135, "Undef"
    .lex "$err", $P2135
.annotate 'line', 1518
    new $P2136, "Undef"
    .lex "$code", $P2136
.annotate 'line', 1520
    new $P2137, "Undef"
    .lex "$r", $P2137
    .lex "$_", param_2138
.annotate 'line', 1504
    new $P2139, "FileHandle"
    store_lex "$in-handle", $P2139
.annotate 'line', 1505
    new $P2140, "Integer"
    assign $P2140, 0
    store_lex "$err", $P2140
.annotate 'line', 1506
    .const 'Sub' $P2142 = "214_1302969596.256" 
    capture_lex $P2142
    $P2142()
.annotate 'line', 1517
    find_lex $P2166, "$err"
    unless $P2166, if_2165_end
    find_lex $P2167, "$err"
    die $P2167
  if_2165_end:
.annotate 'line', 1518
    find_lex $P2168, "@codes"
    join $S2169, "", $P2168
    new $P2170, 'String'
    set $P2170, $S2169
    store_lex "$code", $P2170
.annotate 'line', 1520
    find_lex $P2171, "self"
    find_lex $P2172, "$code"
    find_lex $P2173, "@args"
    find_lex $P2174, "%adverbs"
    $P2175 = $P2171."eval"($P2172, $P2173 :flat, $P2174 :flat)
    store_lex "$r", $P2175
.annotate 'line', 1521
    find_lex $P2180, "$target"
    set $S2181, $P2180
    iseq $I2182, $S2181, ""
    unless $I2182, unless_2179
    new $P2178, 'Integer'
    set $P2178, $I2182
    goto unless_2179_end
  unless_2179:
    find_lex $P2183, "$target"
    set $S2184, $P2183
    iseq $I2185, $S2184, "pir"
    new $P2178, 'Integer'
    set $P2178, $I2185
  unless_2179_end:
    if $P2178, if_2177
.annotate 'line', 1524
    new $P2188, "Exception"
    set $P2188['type'], .CONTROL_RETURN
    find_lex $P2189, "self"
    find_lex $P2190, "$r"
    find_lex $P2191, "$target"
    find_lex $P2192, "%adverbs"
    $P2193 = $P2189."dumper"($P2190, $P2191, $P2192 :flat)
    setattribute $P2188, 'payload', $P2193
    throw $P2188
.annotate 'line', 1523
    goto if_2177_end
  if_2177:
.annotate 'line', 1522
    new $P2186, "Exception"
    set $P2186['type'], .CONTROL_RETURN
    find_lex $P2187, "$r"
    setattribute $P2186, 'payload', $P2187
    throw $P2186
  if_2177_end:
.annotate 'line', 1503
    .return ($P2176)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2141"  :anon :subid("214_1302969596.256") :outer("213_1302969596.256")
.annotate 'line', 1506
    .const 'Sub' $P2156 = "215_1302969596.256" 
    capture_lex $P2156
    new $P2152, 'ExceptionHandler'
    set_label $P2152, control_2151
    $P2152."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2152
.annotate 'line', 1510
    find_lex $P2143, "$in-handle"
    find_lex $P2144, "$encoding"
    $P2143."encoding"($P2144)
.annotate 'line', 1511
    find_lex $P2145, "@codes"
    find_lex $P2146, "$in-handle"
    find_lex $P2147, "$_"
    $P2148 = $P2146."readall"($P2147)
    push $P2145, $P2148
.annotate 'line', 1512
    find_lex $P2149, "$in-handle"
    $P2149."close"()
.annotate 'line', 1506
    pop_eh 
    goto skip_handler_2150
  control_2151:
.annotate 'line', 1513
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2156 = "215_1302969596.256" 
    newclosure $P2162, $P2156
    $P2162(exception)
    new $P2163, 'Integer'
    set $P2163, 1
    set exception["handled"], $P2163
    set $I2164, exception["handled"]
    ne $I2164, 1, nothandled_2154
  handled_2153:
    .return (exception)
  nothandled_2154:
    rethrow exception
  skip_handler_2150:
.annotate 'line', 1506
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2155"  :anon :subid("215_1302969596.256") :outer("214_1302969596.256")
    .param pmc param_2157
.annotate 'line', 1513
    .lex "$_", param_2157
    find_lex $P2158, "$_"
    .lex "$!", $P2158
.annotate 'line', 1514
    new $P2159, 'String'
    set $P2159, "Error while reading from file: "
    find_lex $P2160, "$_"
    concat $P2161, $P2159, $P2160
    store_lex "$err", $P2161
.annotate 'line', 1513
    .return ($P2161)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("216_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2201
    .param pmc param_2202
    .param pmc param_2203 :slurpy :named
.annotate 'line', 1530
    .const 'Sub' $P2224 = "217_1302969596.256" 
    capture_lex $P2224
    new $P2200, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2200, control_2199
    push_eh $P2200
    .lex "self", param_2201
    .lex "$source", param_2202
    .lex "%adverbs", param_2203
.annotate 'line', 1531
    $P2204 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2204
.annotate 'line', 1533
    new $P2205, "Undef"
    .lex "$target", $P2205
.annotate 'line', 1534
    new $P2206, "Undef"
    .lex "$result", $P2206
.annotate 'line', 1535
    new $P2207, "Undef"
    .lex "$stderr", $P2207
.annotate 'line', 1531
    find_lex $P2208, "%adverbs"
    find_lex $P2209, "%*COMPILING"
    unless_null $P2209, vivify_649
    get_hll_global $P2209, "%COMPILING"
    unless_null $P2209, vivify_650
    die "Contextual %*COMPILING not found"
  vivify_650:
    store_lex "%*COMPILING", $P2209
  vivify_649:
    set $P2209["%?OPTIONS"], $P2208
.annotate 'line', 1533
    find_lex $P2210, "%adverbs"
    unless_null $P2210, vivify_651
    $P2210 = root_new ['parrot';'Hash']
  vivify_651:
    set $P2211, $P2210["target"]
    unless_null $P2211, vivify_652
    new $P2211, "Undef"
  vivify_652:
    set $S2212, $P2211
    downcase $S2213, $S2212
    new $P2214, 'String'
    set $P2214, $S2213
    store_lex "$target", $P2214
.annotate 'line', 1534
    find_lex $P2215, "$source"
    store_lex "$result", $P2215
.annotate 'line', 1535
    getinterp $P2216
    $P2217 = $P2216."stderr_handle"()
    store_lex "$stderr", $P2217
.annotate 'line', 1536
    find_lex $P2219, "self"
    $P2220 = $P2219."stages"()
    defined $I2221, $P2220
    unless $I2221, for_undef_653
    iter $P2218, $P2220
    new $P2260, 'ExceptionHandler'
    set_label $P2260, loop2259_handler
    $P2260."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2260
  loop2259_test:
    unless $P2218, loop2259_done
    shift $P2222, $P2218
  loop2259_redo:
    .const 'Sub' $P2224 = "217_1302969596.256" 
    capture_lex $P2224
    $P2224($P2222)
  loop2259_next:
    goto loop2259_test
  loop2259_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2261, exception, 'type'
    eq $P2261, .CONTROL_LOOP_NEXT, loop2259_next
    eq $P2261, .CONTROL_LOOP_REDO, loop2259_redo
  loop2259_done:
    pop_eh 
  for_undef_653:
.annotate 'line', 1546
    new $P2262, "Exception"
    set $P2262['type'], .CONTROL_RETURN
    find_lex $P2263, "$result"
    setattribute $P2262, 'payload', $P2263
    throw $P2262
.annotate 'line', 1530
    .return ()
  control_2199:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2264, exception, "payload"
    .return ($P2264)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2223"  :anon :subid("217_1302969596.256") :outer("216_1302969596.256")
    .param pmc param_2227
.annotate 'line', 1537
    new $P2225, "Undef"
    .lex "$timestamp", $P2225
.annotate 'line', 1539
    new $P2226, "Undef"
    .lex "$diff", $P2226
    .lex "$_", param_2227
.annotate 'line', 1537
    time $N2228
    new $P2229, 'Float'
    set $P2229, $N2228
    store_lex "$timestamp", $P2229
.annotate 'line', 1538
    find_lex $P2230, "self"
    find_lex $P2231, "$result"
    find_lex $P2232, "%adverbs"
    find_lex $P2233, "$_"
    set $S2234, $P2233
    $P2235 = $P2230.$S2234($P2231, $P2232 :flat)
    store_lex "$result", $P2235
.annotate 'line', 1539
    time $N2236
    new $P2237, 'Float'
    set $P2237, $N2236
    find_lex $P2238, "$timestamp"
    sub $P2239, $P2237, $P2238
    store_lex "$diff", $P2239
.annotate 'line', 1540
    find_lex $P2241, "%adverbs"
    unless_null $P2241, vivify_654
    $P2241 = root_new ['parrot';'Hash']
  vivify_654:
    set $P2242, $P2241["stagestats"]
    unless_null $P2242, vivify_655
    new $P2242, "Undef"
  vivify_655:
    unless $P2242, if_2240_end
.annotate 'line', 1542
    find_lex $P2243, "$stderr"
    new $P2244, 'String'
    set $P2244, "Stage "
    find_lex $P2245, "$_"
    concat $P2246, $P2244, $P2245
    concat $P2247, $P2246, ": "
    find_lex $P2248, "$diff"
    concat $P2249, $P2247, $P2248
    concat $P2250, $P2249, "\n"
    $P2243."print__N"($P2250)
  if_2240_end:
.annotate 'line', 1544
    find_lex $P2253, "$_"
    set $S2254, $P2253
    find_lex $P2255, "$target"
    set $S2256, $P2255
    iseq $I2257, $S2254, $S2256
    if $I2257, if_2252
    new $P2251, 'Integer'
    set $P2251, $I2257
    goto if_2252_end
  if_2252:
    set $I2258, .CONTROL_LOOP_LAST
    die 0, $I2258
  if_2252_end:
.annotate 'line', 1536
    .return ($P2251)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("218_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2266
    .param pmc param_2267
    .param pmc param_2268 :slurpy :named
.annotate 'line', 1549
    .lex "self", param_2266
    .lex "$source", param_2267
    .lex "%adverbs", param_2268
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
.sub "past"  :subid("219_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2270
    .param pmc param_2271
    .param pmc param_2272 :slurpy :named
.annotate 'line', 1598
    .lex "self", param_2270
    .lex "$source", param_2271
    .lex "%adverbs", param_2272
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
.sub "post"  :subid("220_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2274
    .param pmc param_2275
    .param pmc param_2276 :slurpy :named
.annotate 'line', 1638
    .lex "self", param_2274
    .lex "$source", param_2275
    .lex "%adverbs", param_2276
.annotate 'line', 1639
    compreg $P2277, "PAST"
    find_lex $P2278, "$source"
    find_lex $P2279, "%adverbs"
    $P2280 = $P2277."to_post"($P2278, $P2279 :flat)
.annotate 'line', 1638
    .return ($P2280)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("221_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2282
    .param pmc param_2283
    .param pmc param_2284 :slurpy :named
.annotate 'line', 1642
    .lex "self", param_2282
    .lex "$source", param_2283
    .lex "%adverbs", param_2284
.annotate 'line', 1643
    compreg $P2285, "POST"
    find_lex $P2286, "$source"
    find_lex $P2287, "%adverbs"
    $P2288 = $P2285."to_pir"($P2286, $P2287 :flat)
.annotate 'line', 1642
    .return ($P2288)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("222_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2290
    .param pmc param_2291
    .param pmc param_2292 :slurpy :named
.annotate 'line', 1646
    .lex "self", param_2290
    .lex "$source", param_2291
    .lex "%adverbs", param_2292
.annotate 'line', 1647
    new $P2293, "Undef"
    .lex "$compiler", $P2293
    compreg $P2294, "PIR"
    store_lex "$compiler", $P2294
.annotate 'line', 1648
    find_lex $P2295, "$compiler"
    find_lex $P2296, "$source"
    $P2297 = $P2295($P2296)
.annotate 'line', 1646
    .return ($P2297)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("223_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2299
    .param pmc param_2300
    .param pmc param_2301
    .param pmc param_2302 :slurpy :named
.annotate 'line', 1651
    .const 'Sub' $P2308 = "224_1302969596.256" 
    capture_lex $P2308
    .lex "self", param_2299
    .lex "$obj", param_2300
    .lex "$name", param_2301
    .lex "%options", param_2302
.annotate 'line', 1652
    find_lex $P2305, "%options"
    unless_null $P2305, vivify_656
    $P2305 = root_new ['parrot';'Hash']
  vivify_656:
    set $P2306, $P2305["dumper"]
    unless_null $P2306, vivify_657
    new $P2306, "Undef"
  vivify_657:
    if $P2306, if_2304
.annotate 'line', 1658
    find_lex $P2321, "$obj"
    find_lex $P2322, "$name"
    $P2323 = "_dumper"($P2321, $P2322)
.annotate 'line', 1657
    set $P2303, $P2323
.annotate 'line', 1652
    goto if_2304_end
  if_2304:
    .const 'Sub' $P2308 = "224_1302969596.256" 
    capture_lex $P2308
    $P2320 = $P2308()
    set $P2303, $P2320
  if_2304_end:
.annotate 'line', 1651
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2307"  :anon :subid("224_1302969596.256") :outer("223_1302969596.256")
.annotate 'line', 1654
    new $P2309, "Undef"
    .lex "$dumper", $P2309
.annotate 'line', 1653
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1654
    find_lex $P2310, "%options"
    unless_null $P2310, vivify_658
    $P2310 = root_new ['parrot';'Hash']
  vivify_658:
    set $P2311, $P2310["dumper"]
    unless_null $P2311, vivify_659
    new $P2311, "Undef"
  vivify_659:
    set $S2312, $P2311
    downcase $S2313, $S2312
    get_hll_global $P2314, ["PCT"], "Dumper"
    unless_null $P2314, vivify_660
    $P2314 = root_new ['parrot';'Hash']
  vivify_660:
    set $P2315, $P2314[$S2313]
    unless_null $P2315, vivify_661
    new $P2315, "Undef"
  vivify_661:
    store_lex "$dumper", $P2315
.annotate 'line', 1655
    find_lex $P2316, "$dumper"
    find_lex $P2317, "$obj"
    find_lex $P2318, "$name"
    $P2319 = $P2316($P2317, $P2318)
.annotate 'line', 1652
    .return ($P2319)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("225_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2325
    .param pmc param_2326 :optional
    .param int has_param_2326 :opt_flag
.annotate 'line', 1662
    .lex "self", param_2325
    if has_param_2326, optparam_662
    new $P2327, "Undef"
    set param_2326, $P2327
  optparam_662:
    .lex "$name", param_2326
.annotate 'line', 1663
    find_lex $P2329, "$name"
    unless $P2329, if_2328_end
.annotate 'line', 1664
    find_lex $P2330, "$name"
    "say"($P2330)
  if_2328_end:
.annotate 'line', 1666
    find_lex $P2331, "self"
    find_lex $P2332, "$?CLASS"
    getattribute $P2333, $P2331, $P2332, "$!usage"
    unless_null $P2333, vivify_663
    new $P2333, "Undef"
  vivify_663:
    say $P2333
.annotate 'line', 1667
    exit 0
.annotate 'line', 1662
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("226_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2335
.annotate 'line', 1670
    .lex "self", param_2335
.annotate 'line', 1671
    find_lex $P2336, "self"
    find_lex $P2337, "$?CLASS"
    getattribute $P2338, $P2336, $P2337, "$!version"
    unless_null $P2338, vivify_664
    new $P2338, "Undef"
  vivify_664:
    say $P2338
.annotate 'line', 1672
    exit 0
.annotate 'line', 1670
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("227_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2340
    .param pmc param_2341
.annotate 'line', 1675
    .const 'Sub' $P2351 = "228_1302969596.256" 
    capture_lex $P2351
    .lex "self", param_2340
    .lex "$stagename", param_2341
.annotate 'line', 1676
    $P2342 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2342
    new $P2343, "ResizableStringArray"
    store_lex "@new_stages", $P2343
.annotate 'line', 1677
    find_lex $P2345, "self"
    find_lex $P2346, "$?CLASS"
    getattribute $P2347, $P2345, $P2346, "@!stages"
    unless_null $P2347, vivify_665
    $P2347 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    defined $I2348, $P2347
    unless $I2348, for_undef_666
    iter $P2344, $P2347
    new $P2364, 'ExceptionHandler'
    set_label $P2364, loop2363_handler
    $P2364."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2364
  loop2363_test:
    unless $P2344, loop2363_done
    shift $P2349, $P2344
  loop2363_redo:
    .const 'Sub' $P2351 = "228_1302969596.256" 
    capture_lex $P2351
    $P2351($P2349)
  loop2363_next:
    goto loop2363_test
  loop2363_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2365, exception, 'type'
    eq $P2365, .CONTROL_LOOP_NEXT, loop2363_next
    eq $P2365, .CONTROL_LOOP_REDO, loop2363_redo
  loop2363_done:
    pop_eh 
  for_undef_666:
.annotate 'line', 1682
    find_lex $P2366, "@new_stages"
    find_lex $P2367, "self"
    find_lex $P2368, "$?CLASS"
    setattribute $P2367, $P2368, "@!stages", $P2366
.annotate 'line', 1675
    .return ($P2366)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2350"  :anon :subid("228_1302969596.256") :outer("227_1302969596.256")
    .param pmc param_2352
.annotate 'line', 1677
    .lex "$_", param_2352
.annotate 'line', 1678
    find_lex $P2355, "$_"
    set $S2356, $P2355
    find_lex $P2357, "$stagename"
    set $S2358, $P2357
    isne $I2359, $S2356, $S2358
    if $I2359, if_2354
    new $P2353, 'Integer'
    set $P2353, $I2359
    goto if_2354_end
  if_2354:
.annotate 'line', 1679
    find_lex $P2360, "@new_stages"
    find_lex $P2361, "$_"
    $P2362 = $P2360."push"($P2361)
.annotate 'line', 1678
    set $P2353, $P2362
  if_2354_end:
.annotate 'line', 1677
    .return ($P2353)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("229_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2372
    .param pmc param_2373
    .param pmc param_2374 :slurpy :named
.annotate 'line', 1685
    .const 'Sub' $P2411 = "231_1302969596.256" 
    capture_lex $P2411
    .const 'Sub' $P2393 = "230_1302969596.256" 
    capture_lex $P2393
    new $P2371, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2371, control_2370
    push_eh $P2371
    .lex "self", param_2372
    .lex "$stagename", param_2373
    .lex "%adverbs", param_2374
.annotate 'line', 1686
    new $P2375, "Undef"
    .lex "$position", $P2375
.annotate 'line', 1687
    new $P2376, "Undef"
    .lex "$where", $P2376
.annotate 'line', 1700
    $P2377 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2377
.annotate 'line', 1685
    find_lex $P2378, "$position"
    find_lex $P2379, "$where"
.annotate 'line', 1688
    find_lex $P2381, "%adverbs"
    unless_null $P2381, vivify_667
    $P2381 = root_new ['parrot';'Hash']
  vivify_667:
    set $P2382, $P2381["before"]
    unless_null $P2382, vivify_668
    new $P2382, "Undef"
  vivify_668:
    if $P2382, if_2380
.annotate 'line', 1691
    find_lex $P2387, "%adverbs"
    unless_null $P2387, vivify_669
    $P2387 = root_new ['parrot';'Hash']
  vivify_669:
    set $P2388, $P2387["after"]
    unless_null $P2388, vivify_670
    new $P2388, "Undef"
  vivify_670:
    if $P2388, if_2386
.annotate 'line', 1694
    .const 'Sub' $P2393 = "230_1302969596.256" 
    capture_lex $P2393
    $P2393()
    goto if_2386_end
  if_2386:
.annotate 'line', 1692
    find_lex $P2389, "%adverbs"
    unless_null $P2389, vivify_671
    $P2389 = root_new ['parrot';'Hash']
  vivify_671:
    set $P2390, $P2389["after"]
    unless_null $P2390, vivify_672
    new $P2390, "Undef"
  vivify_672:
    store_lex "$where", $P2390
.annotate 'line', 1693
    new $P2391, "String"
    assign $P2391, "after"
    store_lex "$position", $P2391
  if_2386_end:
.annotate 'line', 1691
    goto if_2380_end
  if_2380:
.annotate 'line', 1689
    find_lex $P2383, "%adverbs"
    unless_null $P2383, vivify_673
    $P2383 = root_new ['parrot';'Hash']
  vivify_673:
    set $P2384, $P2383["before"]
    unless_null $P2384, vivify_674
    new $P2384, "Undef"
  vivify_674:
    store_lex "$where", $P2384
.annotate 'line', 1690
    new $P2385, "String"
    assign $P2385, "before"
    store_lex "$position", $P2385
  if_2380_end:
.annotate 'line', 1700
    new $P2404, "ResizableStringArray"
    store_lex "@new-stages", $P2404
.annotate 'line', 1701
    find_lex $P2406, "self"
    $P2407 = $P2406."stages"()
    defined $I2408, $P2407
    unless $I2408, for_undef_675
    iter $P2405, $P2407
    new $P2436, 'ExceptionHandler'
    set_label $P2436, loop2435_handler
    $P2436."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2436
  loop2435_test:
    unless $P2405, loop2435_done
    shift $P2409, $P2405
  loop2435_redo:
    .const 'Sub' $P2411 = "231_1302969596.256" 
    capture_lex $P2411
    $P2411($P2409)
  loop2435_next:
    goto loop2435_test
  loop2435_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2437, exception, 'type'
    eq $P2437, .CONTROL_LOOP_NEXT, loop2435_next
    eq $P2437, .CONTROL_LOOP_REDO, loop2435_redo
  loop2435_done:
    pop_eh 
  for_undef_675:
.annotate 'line', 1714
    find_lex $P2438, "self"
    find_lex $P2439, "@new-stages"
    $P2440 = $P2438."stages"($P2439)
.annotate 'line', 1685
    .return ($P2440)
  control_2370:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2441, exception, "payload"
    .return ($P2441)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2392"  :anon :subid("230_1302969596.256") :outer("229_1302969596.256")
.annotate 'line', 1695
    $P2394 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2394
    find_lex $P2395, "self"
    $P2396 = $P2395."stages"()
    clone $P2397, $P2396
    store_lex "@new-stages", $P2397
.annotate 'line', 1696
    find_lex $P2398, "@new-stages"
    find_lex $P2399, "$stagename"
    push $P2398, $P2399
.annotate 'line', 1697
    find_lex $P2400, "self"
    find_lex $P2401, "@new-stages"
    $P2400."stages"($P2401)
.annotate 'line', 1698
    new $P2402, "Exception"
    set $P2402['type'], .CONTROL_RETURN
    new $P2403, "Integer"
    assign $P2403, 1
    setattribute $P2402, 'payload', $P2403
    throw $P2402
.annotate 'line', 1694
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2410"  :anon :subid("231_1302969596.256") :outer("229_1302969596.256")
    .param pmc param_2412
.annotate 'line', 1701
    .lex "$_", param_2412
.annotate 'line', 1702
    find_lex $P2415, "$_"
    set $S2416, $P2415
    find_lex $P2417, "$where"
    set $S2418, $P2417
    iseq $I2419, $S2416, $S2418
    if $I2419, if_2414
.annotate 'line', 1711
    find_lex $P2433, "@new-stages"
    find_lex $P2434, "$_"
    push $P2433, $P2434
.annotate 'line', 1710
    set $P2413, $P2433
.annotate 'line', 1702
    goto if_2414_end
  if_2414:
.annotate 'line', 1703
    find_lex $P2422, "$position"
    set $S2423, $P2422
    iseq $I2424, $S2423, "before"
    if $I2424, if_2421
.annotate 'line', 1707
    find_lex $P2429, "@new-stages"
    find_lex $P2430, "$_"
    push $P2429, $P2430
.annotate 'line', 1708
    find_lex $P2431, "@new-stages"
    find_lex $P2432, "$stagename"
    push $P2431, $P2432
.annotate 'line', 1706
    set $P2420, $P2431
.annotate 'line', 1703
    goto if_2421_end
  if_2421:
.annotate 'line', 1704
    find_lex $P2425, "@new-stages"
    find_lex $P2426, "$stagename"
    push $P2425, $P2426
.annotate 'line', 1705
    find_lex $P2427, "@new-stages"
    find_lex $P2428, "$_"
    push $P2427, $P2428
.annotate 'line', 1703
    set $P2420, $P2427
  if_2421_end:
.annotate 'line', 1702
    set $P2413, $P2420
  if_2414_end:
.annotate 'line', 1701
    .return ($P2413)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("232_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2443
    .param pmc param_2444
.annotate 'line', 1717
    .const 'Sub' $P2482 = "233_1302969596.256" 
    capture_lex $P2482
    .lex "self", param_2443
    .lex "$name", param_2444
.annotate 'line', 1718
    $P2445 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2445
.annotate 'line', 1719
    new $P2446, "Undef"
    .lex "$sigil", $P2446
.annotate 'line', 1722
    new $P2447, "Undef"
    .lex "$idx", $P2447
.annotate 'line', 1730
    $P2448 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2448
.annotate 'line', 1718
    find_lex $P2449, "$name"
    set $S2450, $P2449
    split $P2451, "::", $S2450
    store_lex "@ns", $P2451
.annotate 'line', 1719
    find_lex $P2452, "@ns"
    unless_null $P2452, vivify_676
    $P2452 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    set $P2453, $P2452[0]
    unless_null $P2453, vivify_677
    new $P2453, "Undef"
  vivify_677:
    set $S2454, $P2453
    substr $S2455, $S2454, 0, 1
    new $P2456, 'String'
    set $P2456, $S2455
    store_lex "$sigil", $P2456
.annotate 'line', 1722
    find_lex $P2457, "$sigil"
    set $S2458, $P2457
    index $I2459, "$@%&", $S2458
    new $P2460, 'Integer'
    set $P2460, $I2459
    store_lex "$idx", $P2460
.annotate 'line', 1723
    find_lex $P2462, "$idx"
    set $N2463, $P2462
    isge $I2464, $N2463, 0.0
    unless $I2464, if_2461_end
.annotate 'line', 1724
    find_lex $P2465, "@ns"
    unless_null $P2465, vivify_678
    $P2465 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
    set $P2466, $P2465[0]
    unless_null $P2466, vivify_679
    new $P2466, "Undef"
  vivify_679:
    set $S2467, $P2466
    substr $S2468, $S2467, 1
    new $P2469, 'String'
    set $P2469, $S2468
    find_lex $P2470, "@ns"
    unless_null $P2470, vivify_680
    $P2470 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2470
  vivify_680:
    set $P2470[0], $P2469
.annotate 'line', 1725
    find_lex $P2471, "$sigil"
    find_lex $P2472, "@ns"
    unless_null $P2472, vivify_681
    $P2472 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $P2473, $P2472[-1]
    unless_null $P2473, vivify_682
    new $P2473, "Undef"
  vivify_682:
    concat $P2474, $P2471, $P2473
    find_lex $P2475, "@ns"
    unless_null $P2475, vivify_683
    $P2475 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2475
  vivify_683:
    set $P2475[-1], $P2474
  if_2461_end:
.annotate 'line', 1723
    find_lex $P2476, "@actual_ns"
.annotate 'line', 1731
    find_lex $P2478, "@ns"
    defined $I2479, $P2478
    unless $I2479, for_undef_684
    iter $P2477, $P2478
    new $P2492, 'ExceptionHandler'
    set_label $P2492, loop2491_handler
    $P2492."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2492
  loop2491_test:
    unless $P2477, loop2491_done
    shift $P2480, $P2477
  loop2491_redo:
    .const 'Sub' $P2482 = "233_1302969596.256" 
    capture_lex $P2482
    $P2482($P2480)
  loop2491_next:
    goto loop2491_test
  loop2491_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2493, exception, 'type'
    eq $P2493, .CONTROL_LOOP_NEXT, loop2491_next
    eq $P2493, .CONTROL_LOOP_REDO, loop2491_redo
  loop2491_done:
    pop_eh 
  for_undef_684:
    find_lex $P2494, "@actual_ns"
.annotate 'line', 1717
    .return ($P2494)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2481"  :anon :subid("233_1302969596.256") :outer("232_1302969596.256")
    .param pmc param_2483
.annotate 'line', 1731
    .lex "$_", param_2483
.annotate 'line', 1732
    find_lex $P2486, "$_"
    set $S2487, $P2486
    iseq $I2488, $S2487, ""
    unless $I2488, unless_2485
    new $P2484, 'Integer'
    set $P2484, $I2488
    goto unless_2485_end
  unless_2485:
    find_lex $P2489, "@actual_ns"
    find_lex $P2490, "$_"
    push $P2489, $P2490
    set $P2484, $P2489
  unless_2485_end:
.annotate 'line', 1731
    .return ($P2484)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("234_1302969596.256") :outer("168_1302969596.256")
    .param pmc param_2496
    .param pmc param_2497
    .param pmc param_2498
    .param pmc param_2499 :optional :named("cache")
    .param int has_param_2499 :opt_flag
.annotate 'line', 1737
    .lex "self", param_2496
    .lex "$target", param_2497
    .lex "$pos", param_2498
    if has_param_2499, optparam_685
    new $P2500, "Undef"
    set param_2499, $P2500
  optparam_685:
    .lex "$cache", param_2499
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
.sub "_block2615"  :subid("236_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 1894
    .const 'Sub' $P2693 = "243_1302969596.256" 
    capture_lex $P2693
    .const 'Sub' $P2643 = "241_1302969596.256" 
    capture_lex $P2643
    .const 'Sub' $P2636 = "240_1302969596.256" 
    capture_lex $P2636
    .const 'Sub' $P2631 = "239_1302969596.256" 
    capture_lex $P2631
    .const 'Sub' $P2626 = "238_1302969596.256" 
    capture_lex $P2626
    .const 'Sub' $P2618 = "237_1302969596.256" 
    capture_lex $P2618
    .lex "$?CLASS", $P2617
.annotate 'line', 1910
    .const 'Sub' $P2643 = "241_1302969596.256" 
    newclosure $P2691, $P2643
.annotate 'line', 1894
    .return ($P2691)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post686") :outer("236_1302969596.256")
.annotate 'line', 1894
    get_hll_global $P2616, ["HLL";"CommandLine";"Result"], "_block2615" 
    .local pmc block
    set block, $P2616
    .const 'Sub' $P2693 = "243_1302969596.256" 
    capture_lex $P2693
    $P2693()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2692"  :anon :subid("243_1302969596.256") :outer("236_1302969596.256")
.annotate 'line', 1894
    nqp_get_sc_object $P2694, "1302969588.958", 3
    .local pmc type_obj
    set type_obj, $P2694
    get_how $P2695, type_obj
    get_hll_global $P2696, "NQPAttribute"
    $P2697 = $P2696."new"("@!arguments" :named("name"))
    $P2695."add_attribute"(type_obj, $P2697)
    get_how $P2698, type_obj
    get_hll_global $P2699, "NQPAttribute"
    $P2700 = $P2699."new"("%!options" :named("name"))
    $P2698."add_attribute"(type_obj, $P2700)
    get_how $P2701, type_obj
    .const 'Sub' $P2702 = "237_1302969596.256" 
    $P2701."add_method"(type_obj, "init", $P2702)
    get_how $P2703, type_obj
    .const 'Sub' $P2704 = "238_1302969596.256" 
    $P2703."add_method"(type_obj, "arguments", $P2704)
    get_how $P2705, type_obj
    .const 'Sub' $P2706 = "239_1302969596.256" 
    $P2705."add_method"(type_obj, "options", $P2706)
    get_how $P2707, type_obj
    .const 'Sub' $P2708 = "240_1302969596.256" 
    $P2707."add_method"(type_obj, "add-argument", $P2708)
    get_how $P2709, type_obj
    .const 'Sub' $P2710 = "241_1302969596.256" 
    $P2709."add_method"(type_obj, "add-option", $P2710)
    get_how $P2711, type_obj
    $P2712 = $P2711."compose"(type_obj)
    .return ($P2712)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("237_1302969596.256") :outer("236_1302969596.256")
    .param pmc param_2619
.annotate 'line', 1898
    .lex "self", param_2619
.annotate 'line', 1899
    new $P2620, "ResizablePMCArray"
    find_lex $P2621, "self"
    find_lex $P2622, "$?CLASS"
    setattribute $P2621, $P2622, "@!arguments", $P2620
.annotate 'line', 1900
    new $P2623, "Hash"
    find_lex $P2624, "self"
    find_lex $P2625, "$?CLASS"
    setattribute $P2624, $P2625, "%!options", $P2623
.annotate 'line', 1898
    .return ($P2623)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("238_1302969596.256") :outer("236_1302969596.256")
    .param pmc param_2627
.annotate 'line', 1903
    .lex "self", param_2627
    find_lex $P2628, "self"
    find_lex $P2629, "$?CLASS"
    getattribute $P2630, $P2628, $P2629, "@!arguments"
    unless_null $P2630, vivify_687
    $P2630 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
    .return ($P2630)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("239_1302969596.256") :outer("236_1302969596.256")
    .param pmc param_2632
.annotate 'line', 1904
    .lex "self", param_2632
    find_lex $P2633, "self"
    find_lex $P2634, "$?CLASS"
    getattribute $P2635, $P2633, $P2634, "%!options"
    unless_null $P2635, vivify_688
    $P2635 = root_new ['parrot';'Hash']
  vivify_688:
    .return ($P2635)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("240_1302969596.256") :outer("236_1302969596.256")
    .param pmc param_2637
    .param pmc param_2638
.annotate 'line', 1906
    .lex "self", param_2637
    .lex "$x", param_2638
.annotate 'line', 1907
    find_lex $P2639, "self"
    find_lex $P2640, "$?CLASS"
    getattribute $P2641, $P2639, $P2640, "@!arguments"
    unless_null $P2641, vivify_689
    $P2641 = root_new ['parrot';'ResizablePMCArray']
  vivify_689:
    find_lex $P2642, "$x"
    push $P2641, $P2642
.annotate 'line', 1906
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("241_1302969596.256") :outer("236_1302969596.256")
    .param pmc param_2644
    .param pmc param_2645
    .param pmc param_2646
.annotate 'line', 1910
    .const 'Sub' $P2655 = "242_1302969596.256" 
    capture_lex $P2655
    .lex "self", param_2644
    .lex "$name", param_2645
    .lex "$value", param_2646
.annotate 'line', 1913
    find_lex $P2652, "$name"
    find_lex $P2649, "self"
    find_lex $P2650, "$?CLASS"
    getattribute $P2651, $P2649, $P2650, "%!options"
    unless_null $P2651, vivify_690
    $P2651 = root_new ['parrot';'Hash']
  vivify_690:
    exists $I2653, $P2651[$P2652]
    if $I2653, if_2648
.annotate 'line', 1922
    find_lex $P2686, "$value"
    find_lex $P2687, "$name"
    find_lex $P2688, "self"
    find_lex $P2689, "$?CLASS"
    getattribute $P2690, $P2688, $P2689, "%!options"
    unless_null $P2690, vivify_691
    $P2690 = root_new ['parrot';'Hash']
    setattribute $P2688, $P2689, "%!options", $P2690
  vivify_691:
    set $P2690[$P2687], $P2686
.annotate 'line', 1921
    set $P2647, $P2686
.annotate 'line', 1913
    goto if_2648_end
  if_2648:
    .const 'Sub' $P2655 = "242_1302969596.256" 
    capture_lex $P2655
    $P2685 = $P2655()
    set $P2647, $P2685
  if_2648_end:
.annotate 'line', 1910
    .return ($P2647)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2654"  :anon :subid("242_1302969596.256") :outer("241_1302969596.256")
.annotate 'line', 1914
    new $P2656, "Undef"
    .lex "$t", $P2656
    find_lex $P2657, "self"
    find_lex $P2658, "$?CLASS"
    getattribute $P2659, $P2657, $P2658, "%!options"
    unless_null $P2659, vivify_692
    $P2659 = root_new ['parrot';'Hash']
  vivify_692:
    typeof $S2660, $P2659
    new $P2661, 'String'
    set $P2661, $S2660
    store_lex "$t", $P2661
.annotate 'line', 1915
    find_lex $P2662, "$t"
    "say"($P2662)
.annotate 'line', 1916
    find_lex $P2665, "$t"
    set $S2666, $P2665
    iseq $I2667, $S2666, "ResizablePMCArray"
    if $I2667, if_2664
.annotate 'line', 1919
    find_lex $P2674, "$name"
    find_lex $P2675, "self"
    find_lex $P2676, "$?CLASS"
    getattribute $P2677, $P2675, $P2676, "%!options"
    unless_null $P2677, vivify_693
    $P2677 = root_new ['parrot';'Hash']
  vivify_693:
    set $P2678, $P2677[$P2674]
    unless_null $P2678, vivify_694
    new $P2678, "Undef"
  vivify_694:
    find_lex $P2679, "$name"
    new $P2680, "ResizablePMCArray"
    push $P2680, $P2678
    push $P2680, $P2679
    find_lex $P2681, "$name"
    find_lex $P2682, "self"
    find_lex $P2683, "$?CLASS"
    getattribute $P2684, $P2682, $P2683, "%!options"
    unless_null $P2684, vivify_695
    $P2684 = root_new ['parrot';'Hash']
    setattribute $P2682, $P2683, "%!options", $P2684
  vivify_695:
    set $P2684[$P2681], $P2680
.annotate 'line', 1918
    set $P2663, $P2680
.annotate 'line', 1916
    goto if_2664_end
  if_2664:
.annotate 'line', 1917
    find_lex $P2668, "$name"
    find_lex $P2669, "self"
    find_lex $P2670, "$?CLASS"
    getattribute $P2671, $P2669, $P2670, "%!options"
    unless_null $P2671, vivify_696
    $P2671 = root_new ['parrot';'Hash']
  vivify_696:
    set $P2672, $P2671[$P2668]
    unless_null $P2672, vivify_697
    new $P2672, "Undef"
  vivify_697:
    find_lex $P2673, "$value"
    push $P2672, $P2673
.annotate 'line', 1916
    set $P2663, $P2672
  if_2664_end:
.annotate 'line', 1913
    .return ($P2663)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2713"  :subid("244_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 1927
    .const 'Sub' $P3138 = "263_1302969596.256" 
    capture_lex $P3138
    .const 'Sub' $P2853 = "255_1302969596.256" 
    capture_lex $P2853
    .const 'Sub' $P2841 = "254_1302969596.256" 
    capture_lex $P2841
    .const 'Sub' $P2817 = "253_1302969596.256" 
    capture_lex $P2817
    .const 'Sub' $P2768 = "251_1302969596.256" 
    capture_lex $P2768
    .const 'Sub' $P2762 = "250_1302969596.256" 
    capture_lex $P2762
    .const 'Sub' $P2754 = "249_1302969596.256" 
    capture_lex $P2754
    .const 'Sub' $P2730 = "247_1302969596.256" 
    capture_lex $P2730
    .const 'Sub' $P2725 = "246_1302969596.256" 
    capture_lex $P2725
    .const 'Sub' $P2716 = "245_1302969596.256" 
    capture_lex $P2716
    .lex "$?CLASS", $P2715
.annotate 'line', 1987
    .const 'Sub' $P2853 = "255_1302969596.256" 
    newclosure $P3136, $P2853
.annotate 'line', 1927
    .return ($P3136)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post698") :outer("244_1302969596.256")
.annotate 'line', 1927
    get_hll_global $P2714, ["HLL";"CommandLine";"Parser"], "_block2713" 
    .local pmc block
    set block, $P2714
    .const 'Sub' $P3138 = "263_1302969596.256" 
    capture_lex $P3138
    $P3138()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3137"  :anon :subid("263_1302969596.256") :outer("244_1302969596.256")
.annotate 'line', 1927
    nqp_get_sc_object $P3139, "1302969588.958", 4
    .local pmc type_obj
    set type_obj, $P3139
    get_how $P3140, type_obj
    get_hll_global $P3141, "NQPAttribute"
    $P3142 = $P3141."new"("@!specs" :named("name"))
    $P3140."add_attribute"(type_obj, $P3142)
    get_how $P3143, type_obj
    get_hll_global $P3144, "NQPAttribute"
    $P3145 = $P3144."new"("%!options" :named("name"))
    $P3143."add_attribute"(type_obj, $P3145)
    get_how $P3146, type_obj
    get_hll_global $P3147, "NQPAttribute"
    $P3148 = $P3147."new"("%!stopper" :named("name"))
    $P3146."add_attribute"(type_obj, $P3148)
    get_how $P3149, type_obj
    get_hll_global $P3150, "NQPAttribute"
    $P3151 = $P3150."new"("$!stop-after-first-arg" :named("name"))
    $P3149."add_attribute"(type_obj, $P3151)
    get_how $P3152, type_obj
    .const 'Sub' $P3153 = "245_1302969596.256" 
    $P3152."add_method"(type_obj, "new", $P3153)
    get_how $P3154, type_obj
    .const 'Sub' $P3155 = "246_1302969596.256" 
    $P3154."add_method"(type_obj, "stop-after-first-arg", $P3155)
    get_how $P3156, type_obj
    .const 'Sub' $P3157 = "247_1302969596.256" 
    $P3156."add_method"(type_obj, "BUILD", $P3157)
    get_how $P3158, type_obj
    .const 'Sub' $P3159 = "249_1302969596.256" 
    $P3158."add_method"(type_obj, "add-stopper", $P3159)
    get_how $P3160, type_obj
    .const 'Sub' $P3161 = "250_1302969596.256" 
    $P3160."add_method"(type_obj, "split-option-aliases", $P3161)
    get_how $P3162, type_obj
    .const 'Sub' $P3163 = "251_1302969596.256" 
    $P3162."add_method"(type_obj, "add-spec", $P3163)
    get_how $P3164, type_obj
    .const 'Sub' $P3165 = "253_1302969596.256" 
    $P3164."add_method"(type_obj, "is-option", $P3165)
    get_how $P3166, type_obj
    .const 'Sub' $P3167 = "254_1302969596.256" 
    $P3166."add_method"(type_obj, "wants-value", $P3167)
    get_how $P3168, type_obj
    .const 'Sub' $P3169 = "255_1302969596.256" 
    $P3168."add_method"(type_obj, "parse", $P3169)
    get_how $P3170, type_obj
    $P3171 = $P3170."compose"(type_obj)
    .return ($P3171)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("245_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2717
    .param pmc param_2718
.annotate 'line', 1933
    .lex "self", param_2717
    .lex "@specs", param_2718
.annotate 'line', 1934
    new $P2719, "Undef"
    .lex "$obj", $P2719
    find_lex $P2720, "self"
    $P2721 = $P2720."CREATE"()
    store_lex "$obj", $P2721
.annotate 'line', 1935
    find_lex $P2722, "$obj"
    find_lex $P2723, "@specs"
    $P2722."BUILD"($P2723 :named("specs"))
    find_lex $P2724, "$obj"
.annotate 'line', 1933
    .return ($P2724)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("246_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2726
.annotate 'line', 1939
    .lex "self", param_2726
.annotate 'line', 1940
    new $P2727, "Integer"
    assign $P2727, 1
    find_lex $P2728, "self"
    find_lex $P2729, "$?CLASS"
    setattribute $P2728, $P2729, "$!stop-after-first-arg", $P2727
.annotate 'line', 1939
    .return ($P2727)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("247_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2731
    .param pmc param_2732 :optional :named("specs")
    .param int has_param_2732 :opt_flag
.annotate 'line', 1943
    .const 'Sub' $P2746 = "248_1302969596.256" 
    capture_lex $P2746
    .lex "self", param_2731
    if has_param_2732, optparam_699
    $P2733 = root_new ['parrot';'ResizablePMCArray']
    set param_2732, $P2733
  optparam_699:
    .lex "@specs", param_2732
.annotate 'line', 1944
    new $P2734, "Integer"
    assign $P2734, 1
    find_lex $P2735, "self"
    find_lex $P2736, "$?CLASS"
    getattribute $P2737, $P2735, $P2736, "%!stopper"
    unless_null $P2737, vivify_700
    $P2737 = root_new ['parrot';'Hash']
    setattribute $P2735, $P2736, "%!stopper", $P2737
  vivify_700:
    set $P2737["--"], $P2734
.annotate 'line', 1945
    new $P2738, "Integer"
    assign $P2738, 0
    find_lex $P2739, "self"
    find_lex $P2740, "$?CLASS"
    setattribute $P2739, $P2740, "$!stop-after-first-arg", $P2738
.annotate 'line', 1946
    find_lex $P2742, "@specs"
    defined $I2743, $P2742
    unless $I2743, for_undef_701
    iter $P2741, $P2742
    new $P2752, 'ExceptionHandler'
    set_label $P2752, loop2751_handler
    $P2752."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2752
  loop2751_test:
    unless $P2741, loop2751_done
    shift $P2744, $P2741
  loop2751_redo:
    .const 'Sub' $P2746 = "248_1302969596.256" 
    capture_lex $P2746
    $P2746($P2744)
  loop2751_next:
    goto loop2751_test
  loop2751_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2753, exception, 'type'
    eq $P2753, .CONTROL_LOOP_NEXT, loop2751_next
    eq $P2753, .CONTROL_LOOP_REDO, loop2751_redo
  loop2751_done:
    pop_eh 
  for_undef_701:
.annotate 'line', 1943
    .return ($P2741)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2745"  :anon :subid("248_1302969596.256") :outer("247_1302969596.256")
    .param pmc param_2747
.annotate 'line', 1946
    .lex "$_", param_2747
.annotate 'line', 1947
    find_lex $P2748, "self"
    find_lex $P2749, "$_"
    $P2750 = $P2748."add-spec"($P2749)
.annotate 'line', 1946
    .return ($P2750)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("249_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2755
    .param pmc param_2756
.annotate 'line', 1950
    .lex "self", param_2755
    .lex "$x", param_2756
.annotate 'line', 1951
    new $P2757, "Integer"
    assign $P2757, 1
    find_lex $P2758, "$x"
    find_lex $P2759, "self"
    find_lex $P2760, "$?CLASS"
    getattribute $P2761, $P2759, $P2760, "%!stopper"
    unless_null $P2761, vivify_702
    $P2761 = root_new ['parrot';'Hash']
    setattribute $P2759, $P2760, "%!stopper", $P2761
  vivify_702:
    set $P2761[$P2758], $P2757
.annotate 'line', 1950
    .return ($P2757)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("250_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2763
    .param pmc param_2764
.annotate 'line', 1954
    .lex "self", param_2763
    .lex "$s", param_2764
.annotate 'line', 1955
    find_lex $P2765, "$s"
    set $S2766, $P2765
    split $P2767, "|", $S2766
.annotate 'line', 1954
    .return ($P2767)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("251_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2769
    .param pmc param_2770
.annotate 'line', 1959
    .const 'Sub' $P2807 = "252_1302969596.256" 
    capture_lex $P2807
    .lex "self", param_2769
    .lex "$s", param_2770
.annotate 'line', 1960
    new $P2771, "Undef"
    .lex "$i", $P2771
.annotate 'line', 1961
    new $P2772, "Undef"
    .lex "$type", $P2772
.annotate 'line', 1962
    $P2773 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2773
.annotate 'line', 1960
    find_lex $P2774, "$s"
    set $S2775, $P2774
    index $I2776, $S2775, "="
    new $P2777, 'Integer'
    set $P2777, $I2776
    store_lex "$i", $P2777
    find_lex $P2778, "$type"
    find_lex $P2779, "@options"
.annotate 'line', 1963
    find_lex $P2781, "$i"
    set $N2782, $P2781
    islt $I2783, $N2782, 0.0
    if $I2783, if_2780
.annotate 'line', 1967
    find_lex $P2788, "$s"
    set $S2789, $P2788
    find_lex $P2790, "$i"
    add $P2791, $P2790, 1
    set $I2792, $P2791
    substr $S2793, $S2789, $I2792
    new $P2794, 'String'
    set $P2794, $S2793
    store_lex "$type", $P2794
.annotate 'line', 1968
    find_lex $P2795, "self"
    find_lex $P2796, "$s"
    set $S2797, $P2796
    find_lex $P2798, "$i"
    set $I2799, $P2798
    substr $S2800, $S2797, 0, $I2799
    $P2801 = $P2795."split-option-aliases"($S2800)
    store_lex "@options", $P2801
.annotate 'line', 1966
    goto if_2780_end
  if_2780:
.annotate 'line', 1964
    new $P2784, "String"
    assign $P2784, "b"
    store_lex "$type", $P2784
.annotate 'line', 1965
    find_lex $P2785, "self"
    find_lex $P2786, "$s"
    $P2787 = $P2785."split-option-aliases"($P2786)
    store_lex "@options", $P2787
  if_2780_end:
.annotate 'line', 1970
    find_lex $P2803, "@options"
    defined $I2804, $P2803
    unless $I2804, for_undef_703
    iter $P2802, $P2803
    new $P2815, 'ExceptionHandler'
    set_label $P2815, loop2814_handler
    $P2815."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2815
  loop2814_test:
    unless $P2802, loop2814_done
    shift $P2805, $P2802
  loop2814_redo:
    .const 'Sub' $P2807 = "252_1302969596.256" 
    capture_lex $P2807
    $P2807($P2805)
  loop2814_next:
    goto loop2814_test
  loop2814_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2816, exception, 'type'
    eq $P2816, .CONTROL_LOOP_NEXT, loop2814_next
    eq $P2816, .CONTROL_LOOP_REDO, loop2814_redo
  loop2814_done:
    pop_eh 
  for_undef_703:
.annotate 'line', 1959
    .return ($P2802)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2806"  :anon :subid("252_1302969596.256") :outer("251_1302969596.256")
    .param pmc param_2808
.annotate 'line', 1970
    .lex "$_", param_2808
.annotate 'line', 1971
    find_lex $P2809, "$type"
    find_lex $P2810, "$_"
    find_lex $P2811, "self"
    find_lex $P2812, "$?CLASS"
    getattribute $P2813, $P2811, $P2812, "%!options"
    unless_null $P2813, vivify_704
    $P2813 = root_new ['parrot';'Hash']
    setattribute $P2811, $P2812, "%!options", $P2813
  vivify_704:
    set $P2813[$P2810], $P2809
.annotate 'line', 1970
    .return ($P2809)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("253_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2820
    .param pmc param_2821
.annotate 'line', 1976
    new $P2819, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2819, control_2818
    push_eh $P2819
    .lex "self", param_2820
    .lex "$x", param_2821
.annotate 'line', 1977
    find_lex $P2825, "$x"
    set $S2826, $P2825
    iseq $I2827, $S2826, "-"
    unless $I2827, unless_2824
    new $P2823, 'Integer'
    set $P2823, $I2827
    goto unless_2824_end
  unless_2824:
    find_lex $P2828, "$x"
    set $S2829, $P2828
    iseq $I2830, $S2829, "--"
    new $P2823, 'Integer'
    set $P2823, $I2830
  unless_2824_end:
    unless $P2823, if_2822_end
    new $P2831, "Exception"
    set $P2831['type'], .CONTROL_RETURN
    new $P2832, "Integer"
    assign $P2832, 0
    setattribute $P2831, 'payload', $P2832
    throw $P2831
  if_2822_end:
.annotate 'line', 1978
    find_lex $P2834, "$x"
    set $S2835, $P2834
    substr $S2836, $S2835, 0, 1
    iseq $I2837, $S2836, "-"
    unless $I2837, if_2833_end
    new $P2838, "Exception"
    set $P2838['type'], .CONTROL_RETURN
    new $P2839, "Integer"
    assign $P2839, 1
    setattribute $P2838, 'payload', $P2839
    throw $P2838
  if_2833_end:
.annotate 'line', 1976
    .return (0)
  control_2818:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2840, exception, "payload"
    .return ($P2840)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("254_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2842
    .param pmc param_2843
.annotate 'line', 1982
    .lex "self", param_2842
    .lex "$x", param_2843
.annotate 'line', 1983
    new $P2844, "Undef"
    .lex "$spec", $P2844
    find_lex $P2845, "$x"
    find_lex $P2846, "self"
    find_lex $P2847, "$?CLASS"
    getattribute $P2848, $P2846, $P2847, "%!options"
    unless_null $P2848, vivify_705
    $P2848 = root_new ['parrot';'Hash']
  vivify_705:
    set $P2849, $P2848[$P2845]
    unless_null $P2849, vivify_706
    new $P2849, "Undef"
  vivify_706:
    store_lex "$spec", $P2849
.annotate 'line', 1984
    find_lex $P2850, "$spec"
    set $S2851, $P2850
    iseq $I2852, $S2851, "s"
.annotate 'line', 1982
    .return ($I2852)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("255_1302969596.256") :outer("244_1302969596.256")
    .param pmc param_2856
    .param pmc param_2857
.annotate 'line', 1987
    .const 'Sub' $P2944 = "258_1302969596.256" 
    capture_lex $P2944
    .const 'Sub' $P2910 = "257_1302969596.256" 
    capture_lex $P2910
    .const 'Sub' $P2861 = "256_1302969596.256" 
    capture_lex $P2861
    new $P2855, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2855, control_2854
    push_eh $P2855
    .lex "self", param_2856
    .lex "@args", param_2857
.annotate 'line', 1988
    new $P2858, "Undef"
    .lex "$i", $P2858
.annotate 'line', 1989
    new $P2859, "Undef"
    .lex "$arg-count", $P2859
.annotate 'line', 1991
    new $P2860, "Undef"
    .lex "$result", $P2860
.annotate 'line', 1995
    .const 'Sub' $P2861 = "256_1302969596.256" 
    newclosure $P2909, $P2861
    .lex "get-value", $P2909
.annotate 'line', 2010
    .const 'Sub' $P2910 = "257_1302969596.256" 
    newclosure $P2928, $P2910
    .lex "slurp-rest", $P2928
.annotate 'line', 1988
    new $P2929, "Integer"
    assign $P2929, 0
    store_lex "$i", $P2929
.annotate 'line', 1989
    find_lex $P2930, "@args"
    set $N2931, $P2930
    new $P2932, 'Float'
    set $P2932, $N2931
    store_lex "$arg-count", $P2932
.annotate 'line', 1991
    get_hll_global $P2933, ["HLL";"CommandLine"], "Result"
    $P2934 = $P2933."new"()
    store_lex "$result", $P2934
.annotate 'line', 1992
    find_lex $P2935, "$result"
    $P2935."init"()
    find_lex $P2936, "get-value"
    find_lex $P2937, "slurp-rest"
.annotate 'line', 2018
    new $P3131, 'ExceptionHandler'
    set_label $P3131, loop3130_handler
    $P3131."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3131
  loop3130_test:
    find_lex $P2938, "$i"
    set $N2939, $P2938
    find_lex $P2940, "$arg-count"
    set $N2941, $P2940
    islt $I2942, $N2939, $N2941
    unless $I2942, loop3130_done
  loop3130_redo:
    .const 'Sub' $P2944 = "258_1302969596.256" 
    capture_lex $P2944
    $P2944()
  loop3130_next:
    goto loop3130_test
  loop3130_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3132, exception, 'type'
    eq $P3132, .CONTROL_LOOP_NEXT, loop3130_next
    eq $P3132, .CONTROL_LOOP_REDO, loop3130_redo
  loop3130_done:
    pop_eh 
.annotate 'line', 2070
    new $P3133, "Exception"
    set $P3133['type'], .CONTROL_RETURN
    find_lex $P3134, "$result"
    setattribute $P3133, 'payload', $P3134
    throw $P3133
.annotate 'line', 1987
    .return ()
  control_2854:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3135, exception, "payload"
    .return ($P3135)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("256_1302969596.256") :outer("255_1302969596.256")
    .param pmc param_2862
.annotate 'line', 1995
    .lex "$opt", param_2862
.annotate 'line', 1996
    find_lex $P2865, "$i"
    set $N2866, $P2865
    find_lex $P2867, "$arg-count"
    sub $P2868, $P2867, 1
    set $N2869, $P2868
    iseq $I2870, $N2866, $N2869
    if $I2870, if_2864
.annotate 'line', 1998
    find_lex $P2877, "self"
    find_lex $P2878, "$i"
    add $P2879, $P2878, 1
    set $I2880, $P2879
    find_lex $P2881, "@args"
    unless_null $P2881, vivify_707
    $P2881 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    set $P2882, $P2881[$I2880]
    unless_null $P2882, vivify_708
    new $P2882, "Undef"
  vivify_708:
    $P2883 = $P2877."is-option"($P2882)
    if $P2883, if_2876
.annotate 'line', 2000
    find_lex $P2890, "$i"
    add $P2891, $P2890, 1
    set $I2892, $P2891
    find_lex $P2893, "@args"
    unless_null $P2893, vivify_709
    $P2893 = root_new ['parrot';'ResizablePMCArray']
  vivify_709:
    set $P2894, $P2893[$I2892]
    unless_null $P2894, vivify_710
    new $P2894, "Undef"
  vivify_710:
    find_lex $P2895, "self"
    find_lex $P2896, "$?CLASS"
    getattribute $P2897, $P2895, $P2896, "%!stopper"
    unless_null $P2897, vivify_711
    $P2897 = root_new ['parrot';'Hash']
  vivify_711:
    set $P2898, $P2897[$P2894]
    unless_null $P2898, vivify_712
    new $P2898, "Undef"
  vivify_712:
    if $P2898, if_2889
.annotate 'line', 2002
    find_lex $P2903, "$i"
    clone $P2904, $P2903
    inc $P2903
    find_lex $P2905, "$i"
    set $I2906, $P2905
    find_lex $P2907, "@args"
    unless_null $P2907, vivify_713
    $P2907 = root_new ['parrot';'ResizablePMCArray']
  vivify_713:
    set $P2908, $P2907[$I2906]
    unless_null $P2908, vivify_714
    new $P2908, "Undef"
  vivify_714:
    set $P2888, $P2908
.annotate 'line', 2000
    goto if_2889_end
  if_2889:
.annotate 'line', 2001
    new $P2899, 'String'
    set $P2899, "Option "
    find_lex $P2900, "$opt"
    concat $P2901, $P2899, $P2900
    concat $P2902, $P2901, " needs a value, but is followed by a stopper"
    die $P2902
  if_2889_end:
.annotate 'line', 2000
    set $P2875, $P2888
.annotate 'line', 1998
    goto if_2876_end
  if_2876:
.annotate 'line', 1999
    new $P2884, 'String'
    set $P2884, "Option "
    find_lex $P2885, "$opt"
    concat $P2886, $P2884, $P2885
    concat $P2887, $P2886, " needs a value, but is followed by an option"
    die $P2887
  if_2876_end:
.annotate 'line', 1998
    set $P2863, $P2875
.annotate 'line', 1996
    goto if_2864_end
  if_2864:
.annotate 'line', 1997
    new $P2871, 'String'
    set $P2871, "Option "
    find_lex $P2872, "$opt"
    concat $P2873, $P2871, $P2872
    concat $P2874, $P2873, " needs a value"
    die $P2874
  if_2864_end:
.annotate 'line', 1995
    .return ($P2863)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("257_1302969596.256") :outer("255_1302969596.256")
.annotate 'line', 2010
    find_lex $P2911, "$i"
    clone $P2912, $P2911
    inc $P2911
.annotate 'line', 2012
    new $P2926, 'ExceptionHandler'
    set_label $P2926, loop2925_handler
    $P2926."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2926
  loop2925_test:
    find_lex $P2913, "$i"
    set $N2914, $P2913
    find_lex $P2915, "$arg-count"
    set $N2916, $P2915
    islt $I2917, $N2914, $N2916
    unless $I2917, loop2925_done
  loop2925_redo:
.annotate 'line', 2013
    find_lex $P2918, "$result"
    find_lex $P2919, "$i"
    set $I2920, $P2919
    find_lex $P2921, "@args"
    unless_null $P2921, vivify_715
    $P2921 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    set $P2922, $P2921[$I2920]
    unless_null $P2922, vivify_716
    new $P2922, "Undef"
  vivify_716:
    $P2918."add-argument"($P2922)
    find_lex $P2923, "$i"
    clone $P2924, $P2923
    inc $P2923
  loop2925_next:
.annotate 'line', 2012
    goto loop2925_test
  loop2925_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2927, exception, 'type'
    eq $P2927, .CONTROL_LOOP_NEXT, loop2925_next
    eq $P2927, .CONTROL_LOOP_REDO, loop2925_redo
  loop2925_done:
    pop_eh 
.annotate 'line', 2010
    .return ($I2917)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2943"  :anon :subid("258_1302969596.256") :outer("255_1302969596.256")
.annotate 'line', 2018
    .const 'Sub' $P3046 = "260_1302969596.256" 
    capture_lex $P3046
    .const 'Sub' $P2960 = "259_1302969596.256" 
    capture_lex $P2960
.annotate 'line', 2019
    new $P2945, "Undef"
    .lex "$cur", $P2945
    find_lex $P2946, "$i"
    set $I2947, $P2946
    find_lex $P2948, "@args"
    unless_null $P2948, vivify_717
    $P2948 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    set $P2949, $P2948[$I2947]
    unless_null $P2949, vivify_718
    new $P2949, "Undef"
  vivify_718:
    store_lex "$cur", $P2949
.annotate 'line', 2020
    find_lex $P2951, "self"
    find_lex $P2952, "$cur"
    $P2953 = $P2951."is-option"($P2952)
    if $P2953, if_2950
.annotate 'line', 2062
    find_lex $P3117, "$cur"
    find_lex $P3118, "self"
    find_lex $P3119, "$?CLASS"
    getattribute $P3120, $P3118, $P3119, "%!stopper"
    unless_null $P3120, vivify_719
    $P3120 = root_new ['parrot';'Hash']
  vivify_719:
    set $P3121, $P3120[$P3117]
    unless_null $P3121, vivify_720
    new $P3121, "Undef"
  vivify_720:
    if $P3121, if_3116
.annotate 'line', 2065
    find_lex $P3122, "$result"
    find_lex $P3123, "$cur"
    $P3122."add-argument"($P3123)
.annotate 'line', 2066
    find_lex $P3125, "self"
    find_lex $P3126, "$?CLASS"
    getattribute $P3127, $P3125, $P3126, "$!stop-after-first-arg"
    unless_null $P3127, vivify_721
    new $P3127, "Undef"
  vivify_721:
    unless $P3127, if_3124_end
    "slurp-rest"()
  if_3124_end:
.annotate 'line', 2064
    goto if_3116_end
  if_3116:
.annotate 'line', 2063
    "slurp-rest"()
  if_3116_end:
.annotate 'line', 2062
    goto if_2950_end
  if_2950:
.annotate 'line', 2021
    find_lex $P2955, "$cur"
    set $S2956, $P2955
    substr $S2957, $S2956, 0, 2
    iseq $I2958, $S2957, "--"
    if $I2958, if_2954
.annotate 'line', 2040
    .const 'Sub' $P3046 = "260_1302969596.256" 
    capture_lex $P3046
    $P3046()
    goto if_2954_end
  if_2954:
.annotate 'line', 2021
    .const 'Sub' $P2960 = "259_1302969596.256" 
    capture_lex $P2960
    $P2960()
  if_2954_end:
  if_2950_end:
.annotate 'line', 2020
    find_lex $P3128, "$i"
    clone $P3129, $P3128
    inc $P3128
.annotate 'line', 2018
    .return ($P3129)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3045"  :anon :subid("260_1302969596.256") :outer("258_1302969596.256")
.annotate 'line', 2040
    .const 'Sub' $P3091 = "261_1302969596.256" 
    capture_lex $P3091
.annotate 'line', 2041
    new $P3047, "Undef"
    .lex "$opt", $P3047
    find_lex $P3048, "$cur"
    set $S3049, $P3048
    substr $S3050, $S3049, 1
    new $P3051, 'String'
    set $P3051, $S3050
    store_lex "$opt", $P3051
.annotate 'line', 2042
    find_lex $P3054, "$opt"
    set $S3055, $P3054
    length $I3056, $S3055
    set $N3057, $I3056
    iseq $I3058, $N3057, 1.0
    if $I3058, if_3053
.annotate 'line', 2052
    .const 'Sub' $P3091 = "261_1302969596.256" 
    capture_lex $P3091
    $P3115 = $P3091()
    set $P3052, $P3115
.annotate 'line', 2042
    goto if_3053_end
  if_3053:
.annotate 'line', 2044
    find_lex $P3060, "$opt"
    find_lex $P3061, "self"
    find_lex $P3062, "$?CLASS"
    getattribute $P3063, $P3061, $P3062, "%!options"
    unless_null $P3063, vivify_722
    $P3063 = root_new ['parrot';'Hash']
  vivify_722:
    set $P3064, $P3063[$P3060]
    unless_null $P3064, vivify_723
    new $P3064, "Undef"
  vivify_723:
    if $P3064, unless_3059_end
    new $P3065, 'String'
    set $P3065, "No such option -"
    find_lex $P3066, "$opt"
    concat $P3067, $P3065, $P3066
    die $P3067
  unless_3059_end:
.annotate 'line', 2045
    find_lex $P3069, "self"
    find_lex $P3070, "$opt"
    $P3071 = $P3069."wants-value"($P3070)
    if $P3071, if_3068
.annotate 'line', 2049
    find_lex $P3078, "$result"
    find_lex $P3079, "$opt"
    $P3078."add-option"($P3079, 1)
.annotate 'line', 2048
    goto if_3068_end
  if_3068:
.annotate 'line', 2046
    find_lex $P3072, "$result"
    find_lex $P3073, "$opt"
.annotate 'line', 2047
    new $P3074, 'String'
    set $P3074, "-"
    find_lex $P3075, "$opt"
    concat $P3076, $P3074, $P3075
    $P3077 = "get-value"($P3076)
    $P3072."add-option"($P3073, $P3077)
  if_3068_end:
.annotate 'line', 2051
    new $P3082, 'String'
    set $P3082, "-"
    find_lex $P3083, "$opt"
    concat $P3084, $P3082, $P3083
    find_lex $P3085, "self"
    find_lex $P3086, "$?CLASS"
    getattribute $P3087, $P3085, $P3086, "%!stopper"
    unless_null $P3087, vivify_724
    $P3087 = root_new ['parrot';'Hash']
  vivify_724:
    set $P3088, $P3087[$P3084]
    unless_null $P3088, vivify_725
    new $P3088, "Undef"
  vivify_725:
    if $P3088, if_3081
    set $P3080, $P3088
    goto if_3081_end
  if_3081:
    $P3089 = "slurp-rest"()
    set $P3080, $P3089
  if_3081_end:
.annotate 'line', 2042
    set $P3052, $P3080
  if_3053_end:
.annotate 'line', 2040
    .return ($P3052)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3090"  :anon :subid("261_1302969596.256") :outer("260_1302969596.256")
.annotate 'line', 2052
    .const 'Sub' $P3097 = "262_1302969596.256" 
    capture_lex $P3097
.annotate 'line', 2054
    new $P3092, "Undef"
    .lex "$iter", $P3092
    find_lex $P3093, "$opt"
    iter $P3094, $P3093
    store_lex "$iter", $P3094
.annotate 'line', 2055
    new $P3113, 'ExceptionHandler'
    set_label $P3113, loop3112_handler
    $P3113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3113
  loop3112_test:
    find_lex $P3095, "$iter"
    unless $P3095, loop3112_done
  loop3112_redo:
    .const 'Sub' $P3097 = "262_1302969596.256" 
    capture_lex $P3097
    $P3097()
  loop3112_next:
    goto loop3112_test
  loop3112_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3114, exception, 'type'
    eq $P3114, .CONTROL_LOOP_NEXT, loop3112_next
    eq $P3114, .CONTROL_LOOP_REDO, loop3112_redo
  loop3112_done:
    pop_eh 
.annotate 'line', 2052
    .return ($P3095)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3096"  :anon :subid("262_1302969596.256") :outer("261_1302969596.256")
.annotate 'line', 2056
    new $P3098, "Undef"
    .lex "$o", $P3098
    find_lex $P3099, "$iter"
    shift $P3100, $P3099
    store_lex "$o", $P3100
.annotate 'line', 2057
    find_lex $P3102, "self"
    find_lex $P3103, "$o"
    $P3104 = $P3102."wants-value"($P3103)
    unless $P3104, if_3101_end
    new $P3105, 'String'
    set $P3105, "Option -"
    find_lex $P3106, "$o"
    concat $P3107, $P3105, $P3106
    concat $P3108, $P3107, " requires a value and cannot be grouped"
    die $P3108
  if_3101_end:
.annotate 'line', 2058
    find_lex $P3109, "$result"
    find_lex $P3110, "$o"
    $P3111 = $P3109."add-option"($P3110, 1)
.annotate 'line', 2055
    .return ($P3111)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2959"  :anon :subid("259_1302969596.256") :outer("258_1302969596.256")
.annotate 'line', 2023
    new $P2961, "Undef"
    .lex "$opt", $P2961
.annotate 'line', 2024
    new $P2962, "Undef"
    .lex "$idx", $P2962
.annotate 'line', 2025
    new $P2963, "Undef"
    .lex "$value", $P2963
.annotate 'line', 2026
    new $P2964, "Undef"
    .lex "$has-value", $P2964
.annotate 'line', 2023
    find_lex $P2965, "$i"
    set $I2966, $P2965
    find_lex $P2967, "@args"
    unless_null $P2967, vivify_726
    $P2967 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    set $P2968, $P2967[$I2966]
    unless_null $P2968, vivify_727
    new $P2968, "Undef"
  vivify_727:
    set $S2969, $P2968
    substr $S2970, $S2969, 2
    new $P2971, 'String'
    set $P2971, $S2970
    store_lex "$opt", $P2971
.annotate 'line', 2024
    find_lex $P2972, "$opt"
    set $S2973, $P2972
    index $I2974, $S2973, "="
    new $P2975, 'Integer'
    set $P2975, $I2974
    store_lex "$idx", $P2975
.annotate 'line', 2025
    new $P2976, "Integer"
    assign $P2976, 1
    store_lex "$value", $P2976
.annotate 'line', 2026
    new $P2977, "Integer"
    assign $P2977, 0
    store_lex "$has-value", $P2977
.annotate 'line', 2028
    find_lex $P2979, "$idx"
    set $N2980, $P2979
    isge $I2981, $N2980, 0.0
    unless $I2981, if_2978_end
.annotate 'line', 2029
    find_lex $P2982, "$opt"
    set $S2983, $P2982
    find_lex $P2984, "$idx"
    add $P2985, $P2984, 1
    set $I2986, $P2985
    substr $S2987, $S2983, $I2986
    new $P2988, 'String'
    set $P2988, $S2987
    store_lex "$value", $P2988
.annotate 'line', 2030
    find_lex $P2989, "$opt"
    set $S2990, $P2989
    find_lex $P2991, "$idx"
    set $I2992, $P2991
    substr $S2993, $S2990, 0, $I2992
    new $P2994, 'String'
    set $P2994, $S2993
    store_lex "$opt", $P2994
.annotate 'line', 2031
    new $P2995, "Integer"
    assign $P2995, 1
    store_lex "$has-value", $P2995
  if_2978_end:
.annotate 'line', 2033
    find_lex $P3000, "$opt"
    find_lex $P2997, "self"
    find_lex $P2998, "$?CLASS"
    getattribute $P2999, $P2997, $P2998, "%!options"
    unless_null $P2999, vivify_728
    $P2999 = root_new ['parrot';'Hash']
  vivify_728:
    exists $I3001, $P2999[$P3000]
    if $I3001, unless_2996_end
    new $P3002, 'String'
    set $P3002, "Illegal option --"
    find_lex $P3003, "$opt"
    concat $P3004, $P3002, $P3003
    die $P3004
  unless_2996_end:
.annotate 'line', 2034
    find_lex $P3008, "$opt"
    find_lex $P3009, "self"
    find_lex $P3010, "$?CLASS"
    getattribute $P3011, $P3009, $P3010, "%!options"
    unless_null $P3011, vivify_729
    $P3011 = root_new ['parrot';'Hash']
  vivify_729:
    set $P3012, $P3011[$P3008]
    unless_null $P3012, vivify_730
    new $P3012, "Undef"
  vivify_730:
    set $S3013, $P3012
    isne $I3014, $S3013, "s"
    if $I3014, if_3007
    new $P3006, 'Integer'
    set $P3006, $I3014
    goto if_3007_end
  if_3007:
    find_lex $P3015, "$has-value"
    set $P3006, $P3015
  if_3007_end:
    unless $P3006, if_3005_end
    new $P3016, 'String'
    set $P3016, "Option --"
    find_lex $P3017, "$opt"
    concat $P3018, $P3016, $P3017
    concat $P3019, $P3018, " does not allow a value"
    die $P3019
  if_3005_end:
.annotate 'line', 2035
    find_lex $P3023, "$has-value"
    isfalse $I3024, $P3023
    if $I3024, if_3022
    new $P3021, 'Integer'
    set $P3021, $I3024
    goto if_3022_end
  if_3022:
    find_lex $P3025, "self"
    find_lex $P3026, "$opt"
    $P3027 = $P3025."wants-value"($P3026)
    set $P3021, $P3027
  if_3022_end:
    unless $P3021, if_3020_end
.annotate 'line', 2036
    new $P3028, 'String'
    set $P3028, "--"
    find_lex $P3029, "$opt"
    concat $P3030, $P3028, $P3029
    $P3031 = "get-value"($P3030)
    store_lex "$value", $P3031
  if_3020_end:
.annotate 'line', 2038
    find_lex $P3032, "$result"
    find_lex $P3033, "$opt"
    find_lex $P3034, "$value"
    $P3032."add-option"($P3033, $P3034)
.annotate 'line', 2039
    new $P3037, 'String'
    set $P3037, "--"
    find_lex $P3038, "$opt"
    concat $P3039, $P3037, $P3038
    find_lex $P3040, "self"
    find_lex $P3041, "$?CLASS"
    getattribute $P3042, $P3040, $P3041, "%!stopper"
    unless_null $P3042, vivify_731
    $P3042 = root_new ['parrot';'Hash']
  vivify_731:
    set $P3043, $P3042[$P3039]
    unless_null $P3043, vivify_732
    new $P3043, "Undef"
  vivify_732:
    if $P3043, if_3036
    set $P3035, $P3043
    goto if_3036_end
  if_3036:
    find_lex $P3044, "slurp-rest"
    set $P3035, $P3044
  if_3036_end:
.annotate 'line', 2021
    .return ($P3035)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3172"  :subid("264_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 2105
    .const 'Sub' $P3187 = "267_1302969596.256" 
    capture_lex $P3187
    .const 'Sub' $P3180 = "266_1302969596.256" 
    capture_lex $P3180
    .const 'Sub' $P3175 = "265_1302969596.256" 
    capture_lex $P3175
    .lex "$?CLASS", $P3174
.annotate 'line', 2112
    .const 'Sub' $P3180 = "266_1302969596.256" 
    newclosure $P3185, $P3180
.annotate 'line', 2105
    .return ($P3185)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post733") :outer("264_1302969596.256")
.annotate 'line', 2105
    get_hll_global $P3173, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3172" 
    .local pmc block
    set block, $P3173
    .const 'Sub' $P3187 = "267_1302969596.256" 
    capture_lex $P3187
    $P3187()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3186"  :anon :subid("267_1302969596.256") :outer("264_1302969596.256")
.annotate 'line', 2105
    nqp_get_sc_object $P3188, "1302969588.958", 5
    .local pmc type_obj
    set type_obj, $P3188
    get_how $P3189, type_obj
    get_hll_global $P3190, "NQPAttribute"
    $P3191 = $P3190."new"("$!deserialize_past" :named("name"))
    $P3189."add_attribute"(type_obj, $P3191)
    get_how $P3192, type_obj
    .const 'Sub' $P3193 = "265_1302969596.256" 
    $P3192."add_method"(type_obj, "deserialize_past", $P3193)
    get_how $P3194, type_obj
    get_hll_global $P3195, "NQPAttribute"
    $P3196 = $P3195."new"("$!fixup_past" :named("name"))
    $P3194."add_attribute"(type_obj, $P3196)
    get_how $P3197, type_obj
    .const 'Sub' $P3198 = "266_1302969596.256" 
    $P3197."add_method"(type_obj, "fixup_past", $P3198)
    get_how $P3199, type_obj
    $P3200 = $P3199."compose"(type_obj)
    .return ($P3200)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("265_1302969596.256") :outer("264_1302969596.256")
    .param pmc param_3176
.annotate 'line', 2108
    .lex "self", param_3176
    find_lex $P3177, "self"
    find_lex $P3178, "$?CLASS"
    getattribute $P3179, $P3177, $P3178, "$!deserialize_past"
    unless_null $P3179, vivify_734
    new $P3179, "Undef"
  vivify_734:
    .return ($P3179)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("266_1302969596.256") :outer("264_1302969596.256")
    .param pmc param_3181
.annotate 'line', 2112
    .lex "self", param_3181
    find_lex $P3182, "self"
    find_lex $P3183, "$?CLASS"
    getattribute $P3184, $P3182, $P3183, "$!fixup_past"
    unless_null $P3184, vivify_735
    new $P3184, "Undef"
  vivify_735:
    .return ($P3184)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3201"  :subid("268_1302969596.256") :outer("10_1302969596.256")
.annotate 'line', 2115
    .const 'Sub' $P3683 = "291_1302969596.256" 
    capture_lex $P3683
    .const 'Sub' $P3609 = "289_1302969596.256" 
    capture_lex $P3609
    .const 'Sub' $P3604 = "288_1302969596.256" 
    capture_lex $P3604
    .const 'Sub' $P3587 = "287_1302969596.256" 
    capture_lex $P3587
    .const 'Sub' $P3561 = "286_1302969596.256" 
    capture_lex $P3561
    .const 'Sub' $P3555 = "285_1302969596.256" 
    capture_lex $P3555
    .const 'Sub' $P3486 = "284_1302969596.256" 
    capture_lex $P3486
    .const 'Sub' $P3447 = "283_1302969596.256" 
    capture_lex $P3447
    .const 'Sub' $P3416 = "282_1302969596.256" 
    capture_lex $P3416
    .const 'Sub' $P3397 = "281_1302969596.256" 
    capture_lex $P3397
    .const 'Sub' $P3364 = "279_1302969596.256" 
    capture_lex $P3364
    .const 'Sub' $P3330 = "278_1302969596.256" 
    capture_lex $P3330
    .const 'Sub' $P3316 = "277_1302969596.256" 
    capture_lex $P3316
    .const 'Sub' $P3291 = "276_1302969596.256" 
    capture_lex $P3291
    .const 'Sub' $P3283 = "275_1302969596.256" 
    capture_lex $P3283
    .const 'Sub' $P3268 = "274_1302969596.256" 
    capture_lex $P3268
    .const 'Sub' $P3251 = "273_1302969596.256" 
    capture_lex $P3251
    .const 'Sub' $P3237 = "272_1302969596.256" 
    capture_lex $P3237
    .const 'Sub' $P3219 = "271_1302969596.256" 
    capture_lex $P3219
    .const 'Sub' $P3210 = "270_1302969596.256" 
    capture_lex $P3210
    .const 'Sub' $P3203 = "269_1302969596.256" 
    capture_lex $P3203
.annotate 'line', 2125
    .const 'Sub' $P3203 = "269_1302969596.256" 
    newclosure $P3207, $P3203
    .lex "addr", $P3207
.annotate 'line', 2115
    .lex "$?CLASS", $P3208
    find_lex $P3209, "addr"
.annotate 'line', 2396
    .const 'Sub' $P3609 = "289_1302969596.256" 
    newclosure $P3681, $P3609
.annotate 'line', 2115
    .return ($P3681)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post736") :outer("268_1302969596.256")
.annotate 'line', 2115
    get_hll_global $P3202, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3201" 
    .local pmc block
    set block, $P3202
    .const 'Sub' $P3683 = "291_1302969596.256" 
    capture_lex $P3683
    $P3683()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3682"  :anon :subid("291_1302969596.256") :outer("268_1302969596.256")
.annotate 'line', 2115
    nqp_get_sc_object $P3684, "1302969588.958", 6
    .local pmc type_obj
    set type_obj, $P3684
    get_how $P3685, type_obj
    get_hll_global $P3686, "NQPAttribute"
    $P3687 = $P3686."new"("$!sc" :named("name"))
    $P3685."add_attribute"(type_obj, $P3687)
    get_how $P3688, type_obj
    get_hll_global $P3689, "NQPAttribute"
    $P3690 = $P3689."new"("$!handle" :named("name"))
    $P3688."add_attribute"(type_obj, $P3690)
    get_how $P3691, type_obj
    get_hll_global $P3692, "NQPAttribute"
    $P3693 = $P3692."new"("%!addr_to_slot" :named("name"))
    $P3691."add_attribute"(type_obj, $P3693)
    get_how $P3694, type_obj
    get_hll_global $P3695, "NQPAttribute"
    $P3696 = $P3695."new"("@!event_stream" :named("name"))
    $P3694."add_attribute"(type_obj, $P3696)
    get_how $P3697, type_obj
    .const 'Sub' $P3698 = "270_1302969596.256" 
    $P3697."add_method"(type_obj, "new", $P3698)
    get_how $P3699, type_obj
    .const 'Sub' $P3700 = "271_1302969596.256" 
    $P3699."add_method"(type_obj, "BUILD", $P3700)
    get_how $P3701, type_obj
    .const 'Sub' $P3702 = "272_1302969596.256" 
    $P3701."add_method"(type_obj, "slot_for_object", $P3702)
    get_how $P3703, type_obj
    .const 'Sub' $P3704 = "273_1302969596.256" 
    $P3703."add_method"(type_obj, "get_slot_past_for_object", $P3704)
    get_how $P3705, type_obj
    .const 'Sub' $P3706 = "274_1302969596.256" 
    $P3705."add_method"(type_obj, "set_slot_past", $P3706)
    get_how $P3707, type_obj
    .const 'Sub' $P3708 = "275_1302969596.256" 
    $P3707."add_method"(type_obj, "set_cur_sc", $P3708)
    get_how $P3709, type_obj
    .const 'Sub' $P3710 = "276_1302969596.256" 
    $P3709."add_method"(type_obj, "add_object", $P3710)
    get_how $P3711, type_obj
    .const 'Sub' $P3712 = "277_1302969596.256" 
    $P3711."add_method"(type_obj, "add_event", $P3712)
    get_how $P3713, type_obj
    .const 'Sub' $P3714 = "278_1302969596.256" 
    $P3713."add_method"(type_obj, "get_object_sc_ref_past", $P3714)
    get_how $P3715, type_obj
    .const 'Sub' $P3716 = "279_1302969596.256" 
    $P3715."add_method"(type_obj, "load_setting", $P3716)
    get_how $P3717, type_obj
    .const 'Sub' $P3718 = "281_1302969596.256" 
    $P3717."add_method"(type_obj, "load_module", $P3718)
    get_how $P3719, type_obj
    .const 'Sub' $P3720 = "282_1302969596.256" 
    $P3719."add_method"(type_obj, "install_package_symbol", $P3720)
    get_how $P3721, type_obj
    .const 'Sub' $P3722 = "283_1302969596.256" 
    $P3721."add_method"(type_obj, "install_lexical_symbol", $P3722)
    get_how $P3723, type_obj
    .const 'Sub' $P3724 = "284_1302969596.256" 
    $P3723."add_method"(type_obj, "pkg_create_mo", $P3724)
    get_how $P3725, type_obj
    .const 'Sub' $P3726 = "285_1302969596.256" 
    $P3725."add_method"(type_obj, "pkg_add_method", $P3726)
    get_how $P3727, type_obj
    .const 'Sub' $P3728 = "286_1302969596.256" 
    $P3727."add_method"(type_obj, "pkg_add_parent_or_role", $P3728)
    get_how $P3729, type_obj
    .const 'Sub' $P3730 = "287_1302969596.256" 
    $P3729."add_method"(type_obj, "pkg_compose", $P3730)
    get_how $P3731, type_obj
    .const 'Sub' $P3732 = "288_1302969596.256" 
    $P3731."add_method"(type_obj, "sc", $P3732)
    get_how $P3733, type_obj
    .const 'Sub' $P3734 = "289_1302969596.256" 
    $P3733."add_method"(type_obj, "to_past", $P3734)
    get_how $P3735, type_obj
    $P3736 = $P3735."compose"(type_obj)
    .return ($P3736)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("269_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3204
.annotate 'line', 2125
    .lex "$obj", param_3204
.annotate 'line', 2126
    find_lex $P3205, "$obj"
    get_addr $I3206, $P3205
.annotate 'line', 2125
    .return ($I3206)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("270_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3211
    .param pmc param_3212 :named("handle")
.annotate 'line', 2133
    .lex "self", param_3211
    .lex "$handle", param_3212
.annotate 'line', 2134
    new $P3213, "Undef"
    .lex "$obj", $P3213
    find_lex $P3214, "self"
    $P3215 = $P3214."CREATE"()
    store_lex "$obj", $P3215
.annotate 'line', 2135
    find_lex $P3216, "$obj"
    find_lex $P3217, "$handle"
    $P3216."BUILD"($P3217 :named("handle"))
    find_lex $P3218, "$obj"
.annotate 'line', 2133
    .return ($P3218)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("271_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3220
    .param pmc param_3221 :optional :named("handle")
    .param int has_param_3221 :opt_flag
.annotate 'line', 2139
    .lex "self", param_3220
    if has_param_3221, optparam_737
    new $P3222, "Undef"
    set param_3221, $P3222
  optparam_737:
    .lex "$handle", param_3221
.annotate 'line', 2140
    find_lex $P3223, "$handle"
    set $S3224, $P3223
    nqp_create_sc $P3225, $S3224
    find_lex $P3226, "self"
    find_lex $P3227, "$?CLASS"
    setattribute $P3226, $P3227, "$!sc", $P3225
.annotate 'line', 2141
    find_lex $P3228, "$handle"
    find_lex $P3229, "self"
    find_lex $P3230, "$?CLASS"
    setattribute $P3229, $P3230, "$!handle", $P3228
.annotate 'line', 2142
    new $P3231, "Hash"
    find_lex $P3232, "self"
    find_lex $P3233, "$?CLASS"
    setattribute $P3232, $P3233, "%!addr_to_slot", $P3231
.annotate 'line', 2143
    new $P3234, "ResizablePMCArray"
    find_lex $P3235, "self"
    find_lex $P3236, "$?CLASS"
    setattribute $P3235, $P3236, "@!event_stream", $P3234
.annotate 'line', 2139
    .return ($P3234)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("272_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3238
    .param pmc param_3239
.annotate 'line', 2147
    .lex "self", param_3238
    .lex "$obj", param_3239
.annotate 'line', 2148
    new $P3240, "Undef"
    .lex "$slot", $P3240
    find_lex $P3241, "$obj"
    $P3242 = "addr"($P3241)
    find_lex $P3243, "self"
    find_lex $P3244, "$?CLASS"
    getattribute $P3245, $P3243, $P3244, "%!addr_to_slot"
    unless_null $P3245, vivify_738
    $P3245 = root_new ['parrot';'Hash']
  vivify_738:
    set $P3246, $P3245[$P3242]
    unless_null $P3246, vivify_739
    new $P3246, "Undef"
  vivify_739:
    store_lex "$slot", $P3246
.annotate 'line', 2149
    find_lex $P3248, "$slot"
    defined $I3249, $P3248
    if $I3249, unless_3247_end
.annotate 'line', 2150
    die "slot_for_object called on object not in context"
  unless_3247_end:
.annotate 'line', 2149
    find_lex $P3250, "$slot"
.annotate 'line', 2147
    .return ($P3250)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("273_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3254
    .param pmc param_3255
.annotate 'line', 2159
    new $P3253, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3253, control_3252
    push_eh $P3253
    .lex "self", param_3254
    .lex "$obj", param_3255
.annotate 'line', 2160
    new $P3256, "Undef"
    .lex "$slot", $P3256
    find_lex $P3257, "self"
    find_lex $P3258, "$obj"
    $P3259 = $P3257."slot_for_object"($P3258)
    store_lex "$slot", $P3259
.annotate 'line', 2161
    new $P3260, "Exception"
    set $P3260['type'], .CONTROL_RETURN
    get_hll_global $P3261, ["PAST"], "Op"
    find_lex $P3262, "self"
    find_lex $P3263, "$?CLASS"
    getattribute $P3264, $P3262, $P3263, "$!handle"
    unless_null $P3264, vivify_740
    new $P3264, "Undef"
  vivify_740:
    find_lex $P3265, "$slot"
    $P3266 = $P3261."new"($P3264, $P3265, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3260, 'payload', $P3266
    throw $P3260
.annotate 'line', 2159
    .return ()
  control_3252:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3267, exception, "payload"
    .return ($P3267)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("274_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3271
    .param pmc param_3272
    .param pmc param_3273
.annotate 'line', 2165
    new $P3270, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3270, control_3269
    push_eh $P3270
    .lex "self", param_3271
    .lex "$slot", param_3272
    .lex "$past_to_set", param_3273
.annotate 'line', 2166
    new $P3274, "Exception"
    set $P3274['type'], .CONTROL_RETURN
    get_hll_global $P3275, ["PAST"], "Op"
    find_lex $P3276, "self"
    find_lex $P3277, "$?CLASS"
    getattribute $P3278, $P3276, $P3277, "$!handle"
    unless_null $P3278, vivify_741
    new $P3278, "Undef"
  vivify_741:
    find_lex $P3279, "$slot"
    find_lex $P3280, "$past_to_set"
    $P3281 = $P3275."new"($P3278, $P3279, $P3280, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3274, 'payload', $P3281
    throw $P3274
.annotate 'line', 2165
    .return ()
  control_3269:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3282, exception, "payload"
    .return ($P3282)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("275_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3284
    .param pmc param_3285
.annotate 'line', 2172
    .lex "self", param_3284
    .lex "$to_wrap", param_3285
.annotate 'line', 2173
    get_hll_global $P3286, ["PAST"], "Op"
    find_lex $P3287, "$to_wrap"
.annotate 'line', 2176
    get_hll_global $P3288, ["PAST"], "Var"
    $P3289 = $P3288."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3290 = $P3286."new"($P3287, $P3289, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2172
    .return ($P3290)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("276_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3292
    .param pmc param_3293
.annotate 'line', 2181
    .lex "self", param_3292
    .lex "$obj", param_3293
.annotate 'line', 2183
    new $P3294, "Undef"
    .lex "$idx", $P3294
.annotate 'line', 2182
    find_lex $P3295, "$obj"
    find_lex $P3296, "self"
    find_lex $P3297, "$?CLASS"
    getattribute $P3298, $P3296, $P3297, "$!sc"
    unless_null $P3298, vivify_742
    new $P3298, "Undef"
  vivify_742:
    nqp_set_sc_for_object $P3295, $P3298
.annotate 'line', 2183
    find_lex $P3299, "self"
    find_lex $P3300, "$?CLASS"
    getattribute $P3301, $P3299, $P3300, "$!sc"
    unless_null $P3301, vivify_743
    new $P3301, "Undef"
  vivify_743:
    $P3302 = $P3301."elems"()
    store_lex "$idx", $P3302
.annotate 'line', 2184
    find_lex $P3303, "$obj"
    find_lex $P3304, "$idx"
    set $I3305, $P3304
    find_lex $P3306, "self"
    find_lex $P3307, "$?CLASS"
    getattribute $P3308, $P3306, $P3307, "$!sc"
    unless_null $P3308, vivify_744
    $P3308 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3306, $P3307, "$!sc", $P3308
  vivify_744:
    set $P3308[$I3305], $P3303
.annotate 'line', 2185
    find_lex $P3309, "$idx"
    find_lex $P3310, "$obj"
    $P3311 = "addr"($P3310)
    find_lex $P3312, "self"
    find_lex $P3313, "$?CLASS"
    getattribute $P3314, $P3312, $P3313, "%!addr_to_slot"
    unless_null $P3314, vivify_745
    $P3314 = root_new ['parrot';'Hash']
    setattribute $P3312, $P3313, "%!addr_to_slot", $P3314
  vivify_745:
    set $P3314[$P3311], $P3309
    find_lex $P3315, "$idx"
.annotate 'line', 2181
    .return ($P3315)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("277_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3317
    .param pmc param_3318 :optional :named("deserialize_past")
    .param int has_param_3318 :opt_flag
    .param pmc param_3320 :optional :named("fixup_past")
    .param int has_param_3320 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3317
    if has_param_3318, optparam_746
    new $P3319, "Undef"
    set param_3318, $P3319
  optparam_746:
    .lex "$deserialize_past", param_3318
    if has_param_3320, optparam_747
    new $P3321, "Undef"
    set param_3320, $P3321
  optparam_747:
    .lex "$fixup_past", param_3320
.annotate 'line', 2191
    find_lex $P3322, "self"
    find_lex $P3323, "$?CLASS"
    getattribute $P3324, $P3322, $P3323, "@!event_stream"
    unless_null $P3324, vivify_748
    $P3324 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    get_hll_global $P3325, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3326, "$deserialize_past"
    find_lex $P3327, "$fixup_past"
    $P3328 = $P3325."new"($P3326 :named("deserialize_past"), $P3327 :named("fixup_past"))
    $P3329 = $P3324."push"($P3328)
.annotate 'line', 2190
    .return ($P3329)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("278_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3331
    .param pmc param_3332
.annotate 'line', 2198
    .lex "self", param_3331
    .lex "$obj", param_3332
.annotate 'line', 2201
    new $P3333, "Undef"
    .lex "$sc", $P3333
    find_lex $P3334, "$obj"
    nqp_get_sc_for_object $P3335, $P3334
    store_lex "$sc", $P3335
.annotate 'line', 2202
    find_lex $P3337, "$sc"
    isnull $I3338, $P3337
    unless $I3338, if_3336_end
.annotate 'line', 2203
    new $P3339, "String"
    assign $P3339, "Object of type '"
    find_lex $P3340, "$obj"
    get_how $P3341, $P3340
    find_lex $P3342, "$obj"
    $S3343 = $P3341."name"($P3342)
    concat $P3344, $P3339, $S3343
    concat $P3345, $P3344, "' cannot be referenced without having been "
    concat $P3346, $P3345, "assigned a serialization context"
.annotate 'line', 2204
    die $P3346
  if_3336_end:
.annotate 'line', 2210
    find_lex $P3349, "$sc"
    find_lex $P3350, "self"
    find_lex $P3351, "$?CLASS"
    getattribute $P3352, $P3350, $P3351, "$!sc"
    unless_null $P3352, vivify_749
    new $P3352, "Undef"
  vivify_749:
    issame $I3353, $P3349, $P3352
    if $I3353, if_3348
.annotate 'line', 2214
    get_hll_global $P3357, ["PAST"], "Op"
.annotate 'line', 2215
    find_lex $P3358, "$sc"
    $P3359 = $P3358."handle"()
    find_lex $P3360, "$sc"
    find_lex $P3361, "$obj"
    $P3362 = $P3360."slot_index_for"($P3361)
    $P3363 = $P3357."new"($P3359, $P3362, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3347, $P3363
.annotate 'line', 2210
    goto if_3348_end
  if_3348:
.annotate 'line', 2211
    find_lex $P3354, "self"
    find_lex $P3355, "$obj"
    $P3356 = $P3354."get_slot_past_for_object"($P3355)
.annotate 'line', 2210
    set $P3347, $P3356
  if_3348_end:
.annotate 'line', 2198
    .return ($P3347)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("279_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3365
    .param pmc param_3366
.annotate 'line', 2221
    .const 'Sub' $P3373 = "280_1302969596.256" 
    capture_lex $P3373
    .lex "self", param_3365
    .lex "$setting_name", param_3366
.annotate 'line', 2223
    find_lex $P3369, "$setting_name"
    set $S3370, $P3369
    isne $I3371, $S3370, "NULL"
    if $I3371, if_3368
    new $P3367, 'Integer'
    set $P3367, $I3371
    goto if_3368_end
  if_3368:
    .const 'Sub' $P3373 = "280_1302969596.256" 
    capture_lex $P3373
    $P3396 = $P3373()
    set $P3367, $P3396
  if_3368_end:
.annotate 'line', 2221
    .return ($P3367)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3372"  :anon :subid("280_1302969596.256") :outer("279_1302969596.256")
.annotate 'line', 2230
    new $P3374, "Undef"
    .lex "$load_past", $P3374
.annotate 'line', 2227
    get_hll_global $P3375, ["HLL"], "SettingManager"
    find_lex $P3376, "$setting_name"
    $P3377 = $P3375."load_setting"($P3376)
    find_dynamic_lex $P3378, "%*COMPILING"
    unless_null $P3378, vivify_750
    get_hll_global $P3378, "%COMPILING"
    unless_null $P3378, vivify_751
    die "Contextual %*COMPILING not found"
  vivify_751:
    store_dynamic_lex "%*COMPILING", $P3378
  vivify_750:
    set $P3379, $P3378["%?OPTIONS"]
    unless_null $P3379, vivify_752
    $P3379 = root_new ['parrot';'Hash']
    set $P3378["%?OPTIONS"], $P3379
  vivify_752:
    set $P3379["outer_ctx"], $P3377
.annotate 'line', 2230
    get_hll_global $P3380, ["PAST"], "Stmts"
.annotate 'line', 2231
    get_hll_global $P3381, ["PAST"], "Op"
    $P3382 = $P3381."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2234
    get_hll_global $P3383, ["PAST"], "Op"
.annotate 'line', 2236
    get_hll_global $P3384, ["PAST"], "Var"
    $P3385 = $P3384."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2237
    get_hll_global $P3386, ["PAST"], "Op"
.annotate 'line', 2239
    get_hll_global $P3387, ["PAST"], "Var"
    $P3388 = $P3387."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P3389, "$setting_name"
    $P3390 = $P3386."new"($P3388, $P3389, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2237
    $P3391 = $P3383."new"($P3385, $P3390, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2234
    $P3392 = $P3380."new"($P3382, $P3391)
.annotate 'line', 2230
    store_lex "$load_past", $P3392
.annotate 'line', 2244
    find_lex $P3393, "self"
    find_lex $P3394, "$load_past"
    $P3395 = $P3393."add_event"($P3394 :named("deserialize_past"))
.annotate 'line', 2223
    .return ($P3395)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("281_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3398
    .param pmc param_3399
.annotate 'line', 2250
    .lex "self", param_3398
    .lex "$module_name", param_3399
.annotate 'line', 2252
    new $P3400, "Undef"
    .lex "$*LOAD_UNIT", $P3400
.annotate 'line', 2253
    new $P3401, "Undef"
    .lex "$path", $P3401
.annotate 'line', 2250
    find_lex $P3402, "$*LOAD_UNIT"
    unless_null $P3402, vivify_753
    get_hll_global $P3402, "$LOAD_UNIT"
    unless_null $P3402, vivify_754
    die "Contextual $*LOAD_UNIT not found"
  vivify_754:
  vivify_753:
.annotate 'line', 2253
    find_lex $P3403, "$module_name"
    set $S3404, $P3403
    split $P3405, "::", $S3404
    join $S3406, "/", $P3405
    new $P3407, 'String'
    set $P3407, $S3406
    concat $P3408, $P3407, ".pbc"
    store_lex "$path", $P3408
.annotate 'line', 2254
    find_lex $P3409, "$path"
    set $S3410, $P3409
    load_bytecode $S3410
.annotate 'line', 2257
    find_lex $P3411, "self"
.annotate 'line', 2258
    get_hll_global $P3412, ["PAST"], "Op"
    find_lex $P3413, "$path"
    $P3414 = $P3412."new"($P3413, "load_bytecode vs" :named("pirop"))
    $P3411."add_event"($P3414 :named("deserialize_past"))
.annotate 'line', 2257
    find_lex $P3415, "$*LOAD_UNIT"
    unless_null $P3415, vivify_755
    get_hll_global $P3415, "$LOAD_UNIT"
    unless_null $P3415, vivify_756
    die "Contextual $*LOAD_UNIT not found"
  vivify_756:
  vivify_755:
.annotate 'line', 2250
    .return ($P3415)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_symbol"  :subid("282_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3417
    .param pmc param_3418
    .param pmc param_3419
.annotate 'line', 2266
    .lex "self", param_3417
    .lex "@sym", param_3418
    .lex "$obj", param_3419
.annotate 'line', 2268
    new $P3420, "Undef"
    .lex "$name", $P3420
.annotate 'line', 2267
    find_lex $P3421, "@sym"
    clone $P3422, $P3421
    store_lex "@sym", $P3422
.annotate 'line', 2268
    find_lex $P3423, "@sym"
    $P3424 = $P3423."pop"()
    set $S3425, $P3424
    new $P3426, 'String'
    set $P3426, $S3425
    store_lex "$name", $P3426
.annotate 'line', 2275
    find_lex $P3427, "self"
.annotate 'line', 2276
    get_hll_global $P3428, ["PAST"], "Op"
.annotate 'line', 2278
    get_hll_global $P3429, ["PAST"], "Var"
    find_lex $P3430, "$name"
    find_lex $P3431, "@sym"
    $P3432 = $P3429."new"($P3430 :named("name"), $P3431 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2279
    find_lex $P3433, "self"
    find_lex $P3434, "$obj"
    $P3435 = $P3433."get_slot_past_for_object"($P3434)
    $P3436 = $P3428."new"($P3432, $P3435, "bind" :named("pasttype"))
.annotate 'line', 2281
    get_hll_global $P3437, ["PAST"], "Op"
.annotate 'line', 2283
    get_hll_global $P3438, ["PAST"], "Var"
    find_lex $P3439, "$name"
    find_lex $P3440, "@sym"
    $P3441 = $P3438."new"($P3439 :named("name"), $P3440 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2284
    find_lex $P3442, "self"
    find_lex $P3443, "$obj"
    $P3444 = $P3442."get_slot_past_for_object"($P3443)
    $P3445 = $P3437."new"($P3441, $P3444, "bind" :named("pasttype"))
.annotate 'line', 2281
    $P3446 = $P3427."add_event"($P3436 :named("deserialize_past"), $P3445 :named("fixup_past"))
.annotate 'line', 2266
    .return ($P3446)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3448
    .param pmc param_3449
    .param pmc param_3450
    .param pmc param_3451
.annotate 'line', 2292
    .lex "self", param_3448
    .lex "$block", param_3449
    .lex "$name", param_3450
    .lex "$obj", param_3451
.annotate 'line', 2298
    new $P3452, "Undef"
    .lex "$fixup", $P3452
.annotate 'line', 2294
    find_lex $P3453, "$block"
    find_lex $P3454, "$name"
    find_lex $P3455, "$obj"
    $P3453."symbol"($P3454, "lexical" :named("scope"), $P3455 :named("value"))
.annotate 'line', 2295
    find_lex $P3456, "$block"
    unless_null $P3456, vivify_757
    $P3456 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
    set $P3457, $P3456[0]
    unless_null $P3457, vivify_758
    new $P3457, "Undef"
  vivify_758:
    get_hll_global $P3458, ["PAST"], "Var"
    find_lex $P3459, "$name"
    $P3460 = $P3458."new"("lexical" :named("scope"), $P3459 :named("name"), 1 :named("isdecl"))
    $P3457."push"($P3460)
.annotate 'line', 2298
    get_hll_global $P3461, ["PAST"], "Stmts"
.annotate 'line', 2299
    get_hll_global $P3462, ["PAST"], "Op"
.annotate 'line', 2301
    get_hll_global $P3463, ["PAST"], "Op"
.annotate 'line', 2303
    get_hll_global $P3464, ["PAST"], "Val"
    find_lex $P3465, "$block"
    $P3466 = $P3464."new"($P3465 :named("value"))
    $P3467 = $P3463."new"($P3466, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2305
    find_lex $P3468, "$name"
    set $S3469, $P3468
    find_lex $P3470, "self"
    find_lex $P3471, "$obj"
    $P3472 = $P3470."get_slot_past_for_object"($P3471)
    $P3473 = $P3462."new"($P3467, $S3469, $P3472, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2309
    get_hll_global $P3474, ["PAST"], "Op"
.annotate 'line', 2311
    get_hll_global $P3475, ["PAST"], "Op"
.annotate 'line', 2313
    get_hll_global $P3476, ["PAST"], "Val"
    find_lex $P3477, "$block"
    $P3478 = $P3476."new"($P3477 :named("value"))
    $P3479 = $P3475."new"($P3478, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2311
    $P3480 = $P3474."new"($P3479, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2309
    $P3481 = $P3461."new"($P3473, $P3480)
.annotate 'line', 2298
    store_lex "$fixup", $P3481
.annotate 'line', 2317
    find_lex $P3482, "self"
    find_lex $P3483, "$fixup"
    find_lex $P3484, "$fixup"
    $P3485 = $P3482."add_event"($P3483 :named("deserialize_past"), $P3484 :named("fixup_past"))
.annotate 'line', 2292
    .return ($P3485)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("284_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3489
    .param pmc param_3490
    .param pmc param_3491 :optional :named("name")
    .param int has_param_3491 :opt_flag
    .param pmc param_3493 :optional :named("repr")
    .param int has_param_3493 :opt_flag
.annotate 'line', 2322
    new $P3488, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3488, control_3487
    push_eh $P3488
    .lex "self", param_3489
    .lex "$how", param_3490
    if has_param_3491, optparam_759
    new $P3492, "Undef"
    set param_3491, $P3492
  optparam_759:
    .lex "$name", param_3491
    if has_param_3493, optparam_760
    new $P3494, "Undef"
    set param_3493, $P3494
  optparam_760:
    .lex "$repr", param_3493
.annotate 'line', 2324
    $P3495 = root_new ['parrot';'Hash']
    .lex "%args", $P3495
.annotate 'line', 2327
    new $P3496, "Undef"
    .lex "$mo", $P3496
.annotate 'line', 2328
    new $P3497, "Undef"
    .lex "$slot", $P3497
.annotate 'line', 2332
    $P3498 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3498
.annotate 'line', 2333
    new $P3499, "Undef"
    .lex "$how_name", $P3499
.annotate 'line', 2334
    new $P3500, "Undef"
    .lex "$setup_call", $P3500
.annotate 'line', 2322
    find_lex $P3501, "%args"
.annotate 'line', 2325
    find_lex $P3503, "$name"
    defined $I3504, $P3503
    unless $I3504, if_3502_end
    find_lex $P3505, "$name"
    find_lex $P3506, "%args"
    unless_null $P3506, vivify_761
    $P3506 = root_new ['parrot';'Hash']
    store_lex "%args", $P3506
  vivify_761:
    set $P3506["name"], $P3505
  if_3502_end:
.annotate 'line', 2326
    find_lex $P3508, "$repr"
    defined $I3509, $P3508
    unless $I3509, if_3507_end
    find_lex $P3510, "$repr"
    find_lex $P3511, "%args"
    unless_null $P3511, vivify_762
    $P3511 = root_new ['parrot';'Hash']
    store_lex "%args", $P3511
  vivify_762:
    set $P3511["repr"], $P3510
  if_3507_end:
.annotate 'line', 2327
    find_lex $P3512, "$how"
    find_lex $P3513, "%args"
    $P3514 = $P3512."new_type"($P3513 :flat)
    store_lex "$mo", $P3514
.annotate 'line', 2328
    find_lex $P3515, "self"
    find_lex $P3516, "$mo"
    $P3517 = $P3515."add_object"($P3516)
    store_lex "$slot", $P3517
.annotate 'line', 2332
    find_lex $P3518, "$how"
    get_how $P3519, $P3518
    find_lex $P3520, "$how"
    $S3521 = $P3519."name"($P3520)
    split $P3522, "::", $S3521
    store_lex "@how_ns", $P3522
.annotate 'line', 2333
    find_lex $P3523, "@how_ns"
    $P3524 = $P3523."pop"()
    store_lex "$how_name", $P3524
.annotate 'line', 2334
    get_hll_global $P3525, ["PAST"], "Op"
.annotate 'line', 2336
    get_hll_global $P3526, ["PAST"], "Var"
    find_lex $P3527, "$how_name"
    find_lex $P3528, "@how_ns"
    $P3529 = $P3526."new"($P3527 :named("name"), $P3528 :named("namespace"), "package" :named("scope"))
    $P3530 = $P3525."new"($P3529, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2334
    store_lex "$setup_call", $P3530
.annotate 'line', 2340
    find_lex $P3532, "$name"
    defined $I3533, $P3532
    unless $I3533, if_3531_end
.annotate 'line', 2341
    find_lex $P3534, "$setup_call"
    get_hll_global $P3535, ["PAST"], "Val"
    find_lex $P3536, "$name"
    $P3537 = $P3535."new"($P3536 :named("value"), "name" :named("named"))
    $P3534."push"($P3537)
  if_3531_end:
.annotate 'line', 2343
    find_lex $P3539, "$repr"
    defined $I3540, $P3539
    unless $I3540, if_3538_end
.annotate 'line', 2344
    find_lex $P3541, "$setup_call"
    get_hll_global $P3542, ["PAST"], "Val"
    find_lex $P3543, "$repr"
    $P3544 = $P3542."new"($P3543 :named("value"), "repr" :named("named"))
    $P3541."push"($P3544)
  if_3538_end:
.annotate 'line', 2346
    find_lex $P3545, "self"
.annotate 'line', 2347
    find_lex $P3546, "self"
    find_lex $P3547, "$slot"
    find_lex $P3548, "self"
    find_lex $P3549, "$setup_call"
    $P3550 = $P3548."set_cur_sc"($P3549)
    $P3551 = $P3546."set_slot_past"($P3547, $P3550)
    $P3545."add_event"($P3551 :named("deserialize_past"))
.annotate 'line', 2350
    new $P3552, "Exception"
    set $P3552['type'], .CONTROL_RETURN
    find_lex $P3553, "$mo"
    setattribute $P3552, 'payload', $P3553
    throw $P3552
.annotate 'line', 2322
    .return ()
  control_3487:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3554, exception, "payload"
    .return ($P3554)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3556
    .param pmc param_3557
    .param pmc param_3558
    .param pmc param_3559
    .param pmc param_3560
.annotate 'line', 2356
    .lex "self", param_3556
    .lex "$obj", param_3557
    .lex "$meta_method_name", param_3558
    .lex "$name", param_3559
    .lex "$method_past", param_3560
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("286_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3562
    .param pmc param_3563
    .param pmc param_3564
    .param pmc param_3565
.annotate 'line', 2361
    .lex "self", param_3562
    .lex "$obj", param_3563
    .lex "$meta_method_name", param_3564
    .lex "$to_add", param_3565
.annotate 'line', 2366
    new $P3566, "Undef"
    .lex "$slot_past", $P3566
.annotate 'line', 2363
    find_lex $P3567, "$obj"
    get_how $P3568, $P3567
    find_lex $P3569, "$obj"
    find_lex $P3570, "$to_add"
    find_lex $P3571, "$meta_method_name"
    set $S3572, $P3571
    $P3568.$S3572($P3569, $P3570)
.annotate 'line', 2366
    find_lex $P3573, "$obj"
    $P3574 = "get_slot_past_for_object"($P3573)
    store_lex "$slot_past", $P3574
.annotate 'line', 2367
    find_lex $P3575, "self"
    get_hll_global $P3576, ["PAST"], "Op"
    find_lex $P3577, "$meta_method_name"
.annotate 'line', 2369
    get_hll_global $P3578, ["PAST"], "Op"
    find_lex $P3579, "$slot_past"
    $P3580 = $P3578."new"($P3579, "get_how PP" :named("pirop"))
    find_lex $P3581, "$slot_past"
.annotate 'line', 2371
    find_lex $P3582, "self"
    find_lex $P3583, "$to_add"
    $P3584 = $P3582."get_object_sc_ref_past"($P3583)
    $P3585 = $P3576."new"($P3580, $P3581, $P3584, "callmethod" :named("pasttype"), $P3577 :named("name"))
.annotate 'line', 2367
    $P3586 = $P3575."add_event"($P3585 :named("deserialize_past"))
.annotate 'line', 2361
    .return ($P3586)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("287_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3588
    .param pmc param_3589
.annotate 'line', 2376
    .lex "self", param_3588
    .lex "$obj", param_3589
.annotate 'line', 2381
    new $P3590, "Undef"
    .lex "$slot_past", $P3590
.annotate 'line', 2378
    find_lex $P3591, "$obj"
    get_how $P3592, $P3591
    find_lex $P3593, "$obj"
    $P3592."compose"($P3593)
.annotate 'line', 2381
    find_lex $P3594, "$obj"
    $P3595 = "get_slot_past_for_object"($P3594)
    store_lex "$slot_past", $P3595
.annotate 'line', 2382
    find_lex $P3596, "self"
    get_hll_global $P3597, ["PAST"], "Op"
.annotate 'line', 2384
    get_hll_global $P3598, ["PAST"], "Op"
    find_lex $P3599, "$slot_past"
    $P3600 = $P3598."new"($P3599, "get_how PP" :named("pirop"))
    find_lex $P3601, "$slot_past"
    $P3602 = $P3597."new"($P3600, $P3601, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2382
    $P3603 = $P3596."add_event"($P3602 :named("deserialize_past"))
.annotate 'line', 2376
    .return ($P3603)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("288_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3605
.annotate 'line', 2390
    .lex "self", param_3605
    find_lex $P3606, "self"
    find_lex $P3607, "$?CLASS"
    getattribute $P3608, $P3606, $P3607, "@!sc"
    unless_null $P3608, vivify_763
    $P3608 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    .return ($P3608)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("289_1302969596.256") :outer("268_1302969596.256")
    .param pmc param_3610
.annotate 'line', 2396
    .const 'Sub' $P3624 = "290_1302969596.256" 
    capture_lex $P3624
    .lex "self", param_3610
.annotate 'line', 2397
    new $P3611, "Undef"
    .lex "$des", $P3611
.annotate 'line', 2398
    new $P3612, "Undef"
    .lex "$fix", $P3612
.annotate 'line', 2397
    get_hll_global $P3613, ["PAST"], "Stmts"
    $P3614 = $P3613."new"()
    store_lex "$des", $P3614
.annotate 'line', 2398
    get_hll_global $P3615, ["PAST"], "Stmts"
    $P3616 = $P3615."new"()
    store_lex "$fix", $P3616
.annotate 'line', 2399
    find_lex $P3618, "self"
    find_lex $P3619, "$?CLASS"
    getattribute $P3620, $P3618, $P3619, "@!event_stream"
    unless_null $P3620, vivify_764
    $P3620 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    defined $I3621, $P3620
    unless $I3621, for_undef_765
    iter $P3617, $P3620
    new $P3643, 'ExceptionHandler'
    set_label $P3643, loop3642_handler
    $P3643."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3643
  loop3642_test:
    unless $P3617, loop3642_done
    shift $P3622, $P3617
  loop3642_redo:
    .const 'Sub' $P3624 = "290_1302969596.256" 
    capture_lex $P3624
    $P3624($P3622)
  loop3642_next:
    goto loop3642_test
  loop3642_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3644, exception, 'type'
    eq $P3644, .CONTROL_LOOP_NEXT, loop3642_next
    eq $P3644, .CONTROL_LOOP_REDO, loop3642_redo
  loop3642_done:
    pop_eh 
  for_undef_765:
.annotate 'line', 2403
    find_dynamic_lex $P3645, "$/"
    get_hll_global $P3646, ["PAST"], "Op"
.annotate 'line', 2405
    get_hll_global $P3647, ["PAST"], "Op"
.annotate 'line', 2407
    get_hll_global $P3648, ["PAST"], "Op"
    find_lex $P3649, "self"
    find_lex $P3650, "$?CLASS"
    getattribute $P3651, $P3649, $P3650, "$!handle"
    unless_null $P3651, vivify_766
    new $P3651, "Undef"
  vivify_766:
    $P3652 = $P3648."new"($P3651, "nqp_get_sc Ps" :named("pirop"))
    $P3653 = $P3647."new"($P3652, "isnull IP" :named("pirop"))
.annotate 'line', 2409
    get_hll_global $P3654, ["PAST"], "Stmts"
.annotate 'line', 2410
    get_hll_global $P3655, ["PAST"], "Op"
    $P3656 = $P3655."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2411
    get_hll_global $P3657, ["PAST"], "Op"
.annotate 'line', 2413
    get_hll_global $P3658, ["PAST"], "Op"
    $P3659 = $P3658."new"("getinterp P" :named("pirop"))
.annotate 'line', 2414
    get_hll_global $P3660, ["PAST"], "Op"
    $P3661 = $P3660."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2415
    get_hll_global $P3662, ["PAST"], "Op"
    $P3663 = $P3662."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3664 = $P3657."new"($P3659, $P3661, $P3663, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2417
    get_hll_global $P3665, ["PAST"], "Op"
    $P3666 = $P3665."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2418
    get_hll_global $P3667, ["PAST"], "Op"
.annotate 'line', 2420
    get_hll_global $P3668, ["PAST"], "Var"
    $P3669 = $P3668."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2421
    get_hll_global $P3670, ["PAST"], "Op"
    find_lex $P3671, "self"
    find_lex $P3672, "$?CLASS"
    getattribute $P3673, $P3671, $P3672, "$!handle"
    unless_null $P3673, vivify_767
    new $P3673, "Undef"
  vivify_767:
    $P3674 = $P3670."new"($P3673, "nqp_create_sc Ps" :named("pirop"))
    $P3675 = $P3667."new"($P3669, $P3674, "bind" :named("pasttype"))
.annotate 'line', 2418
    find_lex $P3676, "$des"
    $P3677 = $P3654."new"($P3656, $P3664, $P3666, $P3675, $P3676)
.annotate 'line', 2409
    find_lex $P3678, "$fix"
    $P3679 = $P3646."new"($P3653, $P3677, $P3678, "if" :named("pasttype"))
.annotate 'line', 2403
    $P3680 = $P3645."!make"($P3679)
.annotate 'line', 2396
    .return ($P3680)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3623"  :anon :subid("290_1302969596.256") :outer("289_1302969596.256")
    .param pmc param_3625
.annotate 'line', 2399
    .lex "$_", param_3625
.annotate 'line', 2400
    find_lex $P3627, "$_"
    $P3628 = $P3627."deserialize_past"()
    defined $I3629, $P3628
    unless $I3629, if_3626_end
    find_lex $P3630, "$des"
    find_lex $P3631, "$_"
    $P3632 = $P3631."deserialize_past"()
    $P3630."push"($P3632)
  if_3626_end:
.annotate 'line', 2401
    find_lex $P3635, "$_"
    $P3636 = $P3635."fixup_past"()
    defined $I3637, $P3636
    if $I3637, if_3634
    new $P3633, 'Integer'
    set $P3633, $I3637
    goto if_3634_end
  if_3634:
    find_lex $P3638, "$fix"
    find_lex $P3639, "$_"
    $P3640 = $P3639."fixup_past"()
    $P3641 = $P3638."push"($P3640)
    set $P3633, $P3641
  if_3634_end:
.annotate 'line', 2399
    .return ($P3633)
.end


.HLL "nqp"

.namespace []
.sub "_block3738" :load :anon :subid("292_1302969596.256")
.annotate 'line', 1
    .const 'Sub' $P3740 = "10_1302969596.256" 
    $P3741 = $P3740()
    .return ($P3741)
.end

