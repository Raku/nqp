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
.include 'nqp_const.pir'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "<mainline>" :subid("cuid_48_1431289881.03896") :anon :lex
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
    .param pmc __lowered_lex_183 :slurpy 
    .const 'Sub' $P5053 = 'cuid_49_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_50_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_51_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_52_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_53_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_54_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_55_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_56_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_57_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_58_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_59_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_60_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_61_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_62_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_63_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_64_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_65_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_66_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_67_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_68_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_71_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_72_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_74_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_75_1431289881.03896' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_76_1431289881.03896' 
    capture_lex $P5053 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORTHOW", $P103 
    .lex "int", $P104 
    .lex "num", $P105 
    .lex "str", $P106 
    .lex "NQPRoutine", $P107 
    .lex "NQPSignature", $P108 
    .lex "NQPRegex", $P109 
    .lex "NQPMu", $P110 
    .lex "NQPLabel", $P111 
    .lex "NQPCapture", $P112 
    .lex "&open", $P113 
    .lex "&close", $P114 
    .lex "&slurp", $P115 
    .lex "&spew", $P116 
    .lex "&print", $P117 
    .lex "&say", $P118 
    .lex "&note", $P119 
    .lex "&join", $P120 
    .lex "&match", $P121 
    .lex "&subst", $P122 
    .lex "&hash", $P123 
    .lex "$test_counter", $P124 
    .lex "$todo_upto_test_num", $P125 
    .lex "$todo_reason", $P126 
    .lex "&plan", $P127 
    .lex "&ok", $P128 
    .lex "&todo", $P129 
    .lex "&skip", $P130 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_49_1431289881.03896' 
    capture_lex $P5001
    set $P113, $P5001
    .const 'Sub' $P5002 = 'cuid_50_1431289881.03896' 
    capture_lex $P5002
    set $P114, $P5002
    .const 'Sub' $P5003 = 'cuid_51_1431289881.03896' 
    capture_lex $P5003
    set $P115, $P5003
    .const 'Sub' $P5004 = 'cuid_52_1431289881.03896' 
    capture_lex $P5004
    set $P116, $P5004
    .const 'Sub' $P5005 = 'cuid_53_1431289881.03896' 
    capture_lex $P5005
    set $P117, $P5005
    .const 'Sub' $P5006 = 'cuid_54_1431289881.03896' 
    capture_lex $P5006
    set $P118, $P5006
    .const 'Sub' $P5007 = 'cuid_55_1431289881.03896' 
    capture_lex $P5007
    set $P119, $P5007
    .const 'Sub' $P5008 = 'cuid_56_1431289881.03896' 
    capture_lex $P5008
    set $P120, $P5008
    .const 'Sub' $P5009 = 'cuid_57_1431289881.03896' 
    capture_lex $P5009
    set $P121, $P5009
    .const 'Sub' $P5010 = 'cuid_58_1431289881.03896' 
    capture_lex $P5010
    set $P122, $P5010
    .const 'Sub' $P5011 = 'cuid_59_1431289881.03896' 
    capture_lex $P5011
    set $P123, $P5011
    .const 'Sub' $P5012 = 'cuid_60_1431289881.03896' 
    capture_lex $P5012
    set $P127, $P5012
    .const 'Sub' $P5013 = 'cuid_61_1431289881.03896' 
    capture_lex $P5013
    set $P128, $P5013
    .const 'Sub' $P5014 = 'cuid_62_1431289881.03896' 
    capture_lex $P5014
    set $P129, $P5014
    .const 'Sub' $P5015 = 'cuid_63_1431289881.03896' 
    capture_lex $P5015
    set $P130, $P5015
.annotate 'line', 1
    .const 'Sub' $P5016 = 'cuid_64_1431289881.03896' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_65_1431289881.03896' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_66_1431289881.03896' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_67_1431289881.03896' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_68_1431289881.03896' 
    capture_lex $P5024
    $P5025 = $P5024()
    nqp_get_sc_object $P5026, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    null $P5028
    set_invocation_spec $P5026, $P5027, "$!do", $P5028
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    null $P5030
    set_boolification_spec $P5029, 5, $P5030
    .const 'Sub' $P5031 = 'cuid_71_1431289881.03896' 
    capture_lex $P5031
    $P5032 = $P5031()
    .const 'Sub' $P5033 = 'cuid_72_1431289881.03896' 
    capture_lex $P5033
    $P5034 = $P5033()
    nqp_get_sc_object $P5035, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    null $P5037
    set_invocation_spec $P5035, $P5036, "$!do", $P5037
    nqp_get_sc_object $P5038, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    null $P5039
    set_boolification_spec $P5038, 5, $P5039
    .const 'Sub' $P5040 = 'cuid_74_1431289881.03896' 
    capture_lex $P5040
    $P5041 = $P5040()
    .const 'Sub' $P5042 = 'cuid_75_1431289881.03896' 
    capture_lex $P5042
    $P5043 = $P5042()
    .const 'Sub' $P5044 = 'cuid_76_1431289881.03896' 
    capture_lex $P5044
    $P5045 = $P5044()
    box $P5046, 0
    set $P124, $P5046
    box $P5047, 0
    set $P125, $P5047
    box $P5048, ""
    set $P126, $P5048
    find_dynamic_lex $P5049, "$*CTXSAVE"
    set ctxsave, $P5049
    isnull $I5001, ctxsave
    if $I5001 goto unless244_end464 
    can $I5002, ctxsave, "ctxsave"
    box $P5052, $I5002
    set $P5051, $P5052
    unless $I5002 goto if245_end466 
    $P5050 = ctxsave."ctxsave"()
    set $P5051, $P5050
  if245_end466:
  unless244_end464:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_49_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 636
    .param pmc __lowered_lex_4 
    .param pmc __lowered_lex_5 :named("r") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc __lowered_lex_6 :named("w") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc __lowered_lex_7 :named("a") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc __lowered_lex_8 :named("bin") :optional 
    .param int haz_param_4 :opt_flag 
    .local pmc __lowered_lex_9 
    .local pmc __lowered_lex_10 
    if haz_param_1, default16
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_5, $P5004
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_6, $P5005
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_7, $P5006
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_8, $P5007
  default19:
    unless __lowered_lex_6 goto if10_else10 
    set $S5002, "w"
    goto if10_end11
  if10_else10:
    unless __lowered_lex_7 goto if11_else12 
    set $S5001, "wa"
    goto if11_end13
  if11_else12:
    set $S5001, "r"
  if11_end13:
    set $S5002, $S5001
  if10_end11:
    box $P5001, $S5002
    set __lowered_lex_9, $P5001
    set $S5003, __lowered_lex_4
    set $S5004, __lowered_lex_9
    open $P5002, $S5003, $S5004
    set __lowered_lex_10, $P5002
    if __lowered_lex_8 goto unless12_end15 
    $P5003 = __lowered_lex_10."encoding"("utf8")
  unless12_end15:
    .return (__lowered_lex_10) 
.end
.HLL "nqp"
.namespace []
.sub "close" :subid("cuid_50_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 647
    .param pmc __lowered_lex_11 
    $P5001 = __lowered_lex_11."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_51_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 655
    .param pmc __lowered_lex_12 
    .local pmc __lowered_lex_13 
    .local pmc __lowered_lex_14 
.annotate 'line', 656
    $P5001 = "&open"(__lowered_lex_12, 1 :named("r"))
    set __lowered_lex_13, $P5001
    $P5002 = __lowered_lex_13."readall"()
    set __lowered_lex_14, $P5002
    $P5003 = __lowered_lex_13."close"()
    .return (__lowered_lex_14) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_52_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 667
    .param pmc __lowered_lex_15 
    .param pmc __lowered_lex_16 
    .local pmc __lowered_lex_17 
.annotate 'line', 668
    $P5001 = "&open"(__lowered_lex_15, 1 :named("w"))
    set __lowered_lex_17, $P5001
    $P5002 = __lowered_lex_17."print"(__lowered_lex_16)
    $P5003 = __lowered_lex_17."close"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_53_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 673
    .param pmc __lowered_lex_18 :slurpy 
.annotate 'line', 674
    $P5001 = "&join"("", __lowered_lex_18)
    set $S5001, $P5001
    print $S5001
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_54_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 678
    .param pmc __lowered_lex_19 :slurpy 
.annotate 'line', 679
    $P5001 = "&join"("", __lowered_lex_19)
    set $S5001, $P5001
    say $S5001
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "note" :subid("cuid_55_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 683
    .param pmc __lowered_lex_20 :slurpy 
    getinterp $P5001
    $P5002 = $P5001."stderr_handle"()
.annotate 'line', 684
    $P5003 = "&join"("", __lowered_lex_20)
    $P5004 = $P5002."say"($P5003)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "join" :subid("cuid_56_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 688
    .param pmc __lowered_lex_22 
    .param pmc __lowered_lex_23 
    .local pmc __lowered_lex_24 
    .local pmc lowered_for_it__1 
    .local pmc __lowered_lex_21 
    new $P5001, 'ResizableStringArray'
    set __lowered_lex_24, $P5001
    iter $P5002, __lowered_lex_23
    set lowered_for_it__1, $P5002
    new $P5005, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5005, while13_handlers23
    push_eh $P5005
  while13_test20:
    set $P5004, lowered_for_it__1
    unless lowered_for_it__1 goto while13_done24 
  while13_redo22:
    shift $P5003, lowered_for_it__1
    set __lowered_lex_21, $P5003
.annotate 'line', 690
    set $S5001, __lowered_lex_21
    push __lowered_lex_24, $S5001
    set $P5004, __lowered_lex_24
    goto while13_test20 
  while13_handlers23:
    .get_results ($P5005)
    pop_upto_eh $P5005
    getattribute $P5006, $P5005, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while13_test20
    eq $P5006, .CONTROL_LOOP_REDO, while13_redo22
  while13_done24:
    pop_eh 
    set $S5003, __lowered_lex_22
    join $S5002, $S5003, __lowered_lex_24
    .return ($S5002) 
.end
.HLL "nqp"
.namespace []
.sub "match" :subid("cuid_57_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 708
    .param pmc __lowered_lex_26 
    .param pmc __lowered_lex_27 
    .param pmc __lowered_lex_28 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .local pmc __lowered_lex_29 
    .local pmc __lowered_lex_25 
    if haz_param_5, default32
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_28, $P5008
  default32:
.annotate 'line', 709
    $P5001 = __lowered_lex_27."ACCEPTS"(__lowered_lex_26)
    set __lowered_lex_29, $P5001
    unless __lowered_lex_28 goto if14_else25 
    new $P5002, 'QRPA'
    set __lowered_lex_25, $P5002
.annotate 'line', 710
  while15_test27:
    set $P5006, __lowered_lex_29
    unless __lowered_lex_29 goto while15_done31 
  while15_redo29:
.annotate 'line', 712
    push __lowered_lex_25, __lowered_lex_29
.annotate 'line', 714
    $P5003 = __lowered_lex_29."CURSOR"()
    $P5004 = __lowered_lex_29."to"()
    $P5005 = $P5003."parse"(__lowered_lex_26, __lowered_lex_27 :named("rule"), $P5004 :named("c"))
    set __lowered_lex_29, $P5005
    set $P5006, __lowered_lex_29
    goto while15_test27 
  while15_done31:
    set $P5007, __lowered_lex_25
    goto if14_end26
  if14_else25:
.annotate 'line', 718

    set $P5007, __lowered_lex_29
  if14_end26:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "subst" :subid("cuid_58_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 730
    .param pmc __lowered_lex_31 
    .param pmc __lowered_lex_32 
    .param pmc __lowered_lex_33 
    .param pmc __lowered_lex_34 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .local pmc __lowered_lex_35 
    .local pmc __lowered_lex_36 
    .local pmc __lowered_lex_37 
    .local pmc __lowered_lex_38 
    .local pmc __lowered_lex_39 
    .local pmc lowered_for_it__2 
    .local pmc __lowered_lex_30 
    if haz_param_6, default48
    nqp_get_sc_object $P5022, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_34, $P5022
  default48:
    new $P5001, 'QRPA'
    set __lowered_lex_38, $P5001
    unless __lowered_lex_34 goto if16_else33 
.annotate 'line', 731
    $P5002 = "&match"(__lowered_lex_31, __lowered_lex_32, 1 :named("global"))
    set $P5005, $P5002
    goto if16_end34
  if16_else33:
    new $P5003, 'QRPA'
.annotate 'line', 732
    $P5004 = __lowered_lex_32."ACCEPTS"(__lowered_lex_31)
    push $P5003, $P5004
    set $P5005, $P5003
  if16_end34:
    set __lowered_lex_35, $P5005
    is_invokable $I5001, __lowered_lex_33
    box $P5006, $I5001
    set __lowered_lex_36, $P5006
    box $P5007, 0
    set __lowered_lex_37, $P5007
    iter $P5008, __lowered_lex_35
    set lowered_for_it__2, $P5008
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while17_handlers38
    push_eh $P5018
  while17_test35:
    set $P5017, lowered_for_it__2
    unless lowered_for_it__2 goto while17_done39 
  while17_redo37:
.annotate 'line', 737
    shift $P5009, lowered_for_it__2
    set __lowered_lex_30, $P5009
    set $P5016, __lowered_lex_30
    unless __lowered_lex_30 goto if18_end41 
.annotate 'line', 738
.annotate 'line', 740
    $P5010 = __lowered_lex_30."from"()
    set $N5001, $P5010
    set $N5002, __lowered_lex_37
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if19_end43 
    set $S5002, __lowered_lex_31
    set $I5003, __lowered_lex_37
.annotate 'line', 739
    $P5011 = __lowered_lex_30."from"()
    set $N5004, $P5011
    set $N5005, __lowered_lex_37
    sub $N5003, $N5004, $N5005
    set $I5004, $N5003
    substr $S5001, $S5002, $I5003, $I5004
    box $P5012, $S5001
    push __lowered_lex_38, $P5012
  if19_end43:
    unless __lowered_lex_36 goto if20_else44 
.annotate 'line', 741
    $P5013 = __lowered_lex_33(__lowered_lex_30)
    set $S5003, $P5013
    set $S5005, $S5003
    goto if20_end45
  if20_else44:
    set $S5004, __lowered_lex_33
    set $S5005, $S5004
  if20_end45:
    box $P5014, $S5005
    push __lowered_lex_38, $P5014
.annotate 'line', 742
    $P5015 = __lowered_lex_30."to"()
    set __lowered_lex_37, $P5015
    set $P5016, __lowered_lex_37
  if18_end41:
    set $P5017, $P5016
    goto while17_test35 
  while17_handlers38:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while17_test35
    eq $P5019, .CONTROL_LOOP_REDO, while17_redo37
  while17_done39:
    pop_eh 
    set $S5006, __lowered_lex_31
    length $I5005, $S5006
    box $P5020, $I5005
    set __lowered_lex_39, $P5020
    set $N5006, __lowered_lex_39
    set $N5007, __lowered_lex_37
    isgt $I5006, $N5006, $N5007
    unless $I5006 goto if21_end47 
    set $S5008, __lowered_lex_31
    set $I5007, __lowered_lex_37
    set $I5008, __lowered_lex_39
    substr $S5007, $S5008, $I5007, $I5008
    box $P5021, $S5007
    push __lowered_lex_38, $P5021
  if21_end47:
    join $S5009, "", __lowered_lex_38
    .return ($S5009) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_59_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 756
    .param pmc __lowered_lex_40 :slurpy :named 
    .return (__lowered_lex_40) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_60_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 765
    .param pmc __lowered_lex_41 
.annotate 'line', 766
    set $S5002, __lowered_lex_41
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_61_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 769
    .param pmc __lowered_lex_42 
    .param pmc __lowered_lex_43 :optional 
    .param int haz_param_7 :opt_flag 
    .local pmc __lowered_lex_44 
    if haz_param_7, default57
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_43, $P5011
  default57:
    new $P5001, 'QRPA'
    set __lowered_lex_44, $P5001
    find_lex $P5002, "$test_counter"
    set $N5002, $P5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5003, $N5001
    store_lex "$test_counter", $P5003
    if __lowered_lex_42 goto unless22_end50 
.annotate 'line', 773
.annotate 'line', 774
    $P5004 = __lowered_lex_44."push"("not ")
  unless22_end50:
.annotate 'line', 776
    find_lex $P5005, "$test_counter"
    set $S5002, $P5005
    concat $S5001, "ok ", $S5002
    __lowered_lex_44."push"($S5001)
    unless __lowered_lex_43 goto if23_end52 
.annotate 'line', 777
.annotate 'line', 778
    set $S5004, __lowered_lex_43
    concat $S5003, " - ", $S5004
    $P5006 = __lowered_lex_44."push"($S5003)
  if23_end52:
    find_lex $P5007, "$test_counter"
    set $N5004, $P5007
    find_lex $P5008, "$todo_upto_test_num"
    set $N5005, $P5008
    isle $I5001, $N5004, $N5005
    unless $I5001 goto if24_end54 
.annotate 'line', 780
.annotate 'line', 781
    find_lex $P5009, "$todo_reason"
    $P5010 = __lowered_lex_44."push"($P5009)
  if24_end54:
.annotate 'line', 783
    "&say"(__lowered_lex_44 :flat)
    unless __lowered_lex_42 goto if25_else55 
    set $I5002, 1
    goto if25_end56
  if25_else55:
    set $I5002, 0
  if25_end56:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "todo" :subid("cuid_62_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 788
    .param pmc __lowered_lex_45 
    .param pmc __lowered_lex_46 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, __lowered_lex_46
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$todo_upto_test_num", $P5002
    set $S5002, __lowered_lex_45
    concat $S5001, "# TODO ", $S5002
    box $P5003, $S5001
    store_lex "$todo_reason", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "skip" :subid("cuid_63_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 793
    .param pmc __lowered_lex_47 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 795
    find_lex $P5003, "$test_counter"
    set $S5005, $P5003
    concat $S5004, "ok ", $S5005
    concat $S5003, $S5004, " # SKIP "
    set $S5006, __lowered_lex_47
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\n"
    $P5004 = "&say"($S5001)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_64_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_disable_sc_write_barrier 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    set $P5015["native"], $P5016
    nqp_enable_sc_write_barrier 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_65_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_67_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 29
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 32
    .const 'Sub' $P5016 = 'cuid_69_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_1_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_2_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_3_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_4_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_5_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_6_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_7_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_8_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_9_1431289881.03896' 
    capture_lex $P5016 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "&is_narrower_type", $P103 
    .lex "$SLURPY_ARITY", $P104 
    .lex "$EDGE_REMOVAL_TODO", $P105 
    .lex "$EDGE_REMOVED", $P106 
    .lex "$DEFINED_ONLY", $P107 
    .lex "$UNDEFINED_ONLY", $P108 
    .const 'Sub' $P5001 = 'cuid_69_1431289881.03896' 
    capture_lex $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_1_1431289881.03896' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_2_1431289881.03896' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_3_1431289881.03896' 
    capture_lex $P5004
    shl $I5001, 1, 30
    box $P5005, $I5001
    set $P104, $P5005
    box $P5006, -1
    set $P105, $P5006
    box $P5007, -2
    set $P106, $P5007
    box $P5008, 1
    set $P107, $P5008
    box $P5009, 2
    set $P108, $P5009
    .const 'Sub' $P5010 = 'cuid_4_1431289881.03896' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1431289881.03896' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1431289881.03896' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1431289881.03896' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1431289881.03896' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1431289881.03896' 
    capture_lex $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower_type" :subid("cuid_69_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 74
    .param pmc __lowered_lex_48 
    .param pmc __lowered_lex_49 
    isnull $I5001, __lowered_lex_49
    set $I5004, $I5001
    unless $I5001 goto if27_end61 
    isnull $I5003, __lowered_lex_48
    not $I5002, $I5003
    set $I5004, $I5002
  if27_end61:
    unless $I5004 goto if26_else58 
.annotate 'line', 77

    set $I5010, 1
    goto if26_end59
  if26_else58:
    isnull $I5005, __lowered_lex_48
    set $I5007, $I5005
    if $I5005 goto unless29_end65 
    isnull $I5006, __lowered_lex_49
    set $I5007, $I5006
  unless29_end65:
    unless $I5007 goto if28_else62 
.annotate 'line', 78

    set $I5009, 0
    goto if28_end63
  if28_else62:
.annotate 'line', 79
    type_check $I5008, __lowered_lex_48, __lowered_lex_49
    set $I5009, $I5008
  if28_end63:
    set $I5010, $I5009
  if26_end59:
    .return ($I5010) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "add_dispatchee" :subid("cuid_1_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 41
    .param pmc __lowered_lex_2 
    .param pmc __lowered_lex_3 
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5001, __lowered_lex_2
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", 3, $P5003
    nqp_decontainerize $P5004, __lowered_lex_2
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!dispatch_order", 4, $P5006
    nqp_decontainerize $P5007, __lowered_lex_2
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees", 2
    push $P5009, __lowered_lex_3
    nqp_enable_sc_write_barrier 
    .return (0) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "is_dispatcher" :subid("cuid_2_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 50
    .param pmc __lowered_lex_1 
    nqp_decontainerize $P5001, __lowered_lex_1
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees", 2
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_3_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 55
    .param pmc __lowered_lex_50 
    .local pmc __lowered_lex_51 
    .local pmc __lowered_lex_52 
    nqp_decontainerize $P5002, __lowered_lex_50
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!do", 0
    repr_clone $P5001, $P5004
    set __lowered_lex_51, $P5001
    nqp_decontainerize $P5006, __lowered_lex_50
    repr_clone $P5005, $P5006
    set __lowered_lex_52, $P5005
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    setattribute __lowered_lex_52, $P5007, "$!do", __lowered_lex_51
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    nqp_decontainerize $P5010, __lowered_lex_50
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!dispatchees", 2
    repr_clone $P5009, $P5012
    setattribute __lowered_lex_52, $P5008, "$!dispatchees", $P5009
    set_sub_code_object __lowered_lex_51, __lowered_lex_52
    nqp_decontainerize $P5013, __lowered_lex_50
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!clone_callback", 5
    isnull $I5001, $P5015
    if $I5001 goto unless30_end67 
.annotate 'line', 66
.annotate 'line', 67
    nqp_decontainerize $P5019, __lowered_lex_50
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!do", 0
    nqp_decontainerize $P5016, __lowered_lex_50
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!clone_callback", 5
    $P5022 = $P5018($P5021, __lowered_lex_51, __lowered_lex_52)
  unless30_end67:
    .return (__lowered_lex_52) 
.end
.HLL "nqp"
.namespace []
.sub "sort_dispatchees" :subid("cuid_4_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 89
    .param pmc __lowered_lex_73 
    .const 'Sub' $P5155 = 'cuid_70_1431289881.03896' 
    capture_lex $P5155 
    .lex "&is_narrower", $P101 
    .local pmc __lowered_lex_74 
    .local int __lowered_lex_75 
    .local int __lowered_lex_76 
    .local pmc __lowered_lex_77 
    .local pmc __lowered_lex_78 
    .local pmc __lowered_lex_61 
    .local pmc __lowered_lex_62 
    .local pmc __lowered_lex_63 
    .local pmc __lowered_lex_64 
    .local pmc __lowered_lex_65 
    .local pmc __lowered_lex_66 
    .local pmc __lowered_lex_67 
    .local int __lowered_lex_68 
    .local pmc fb_tmp_16 
    .local pmc tmp_5 
    .local pmc fb_tmp_17 
    .local pmc tmp_6 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    .local pmc tmp_7 
    .local pmc fb_tmp_23 
    .local int tmp_8 
    .local int tmp_9 
    .local int __lowered_lex_69 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc tmp_10 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc tmp_11 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local int tmp_12 
    .local int tmp_13 
    .local pmc __lowered_lex_71 
    .local int __lowered_lex_72 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc tmp_14 
    .local pmc fb_tmp_43 
    .local int tmp_15 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc __lowered_lex_70 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc tmp_16 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    .local pmc tmp_17 
    .local pmc fb_tmp_55 
    .local int tmp_18 
    .const 'Sub' $P5001 = 'cuid_70_1431289881.03896' 
    capture_lex $P5001
    set $P101, $P5001
    new $P5002, 'QRPA'
    set __lowered_lex_74, $P5002
    new $P5003, 'QRPA'
    set __lowered_lex_77, $P5003
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_140
    .lex "RETURN", $P102
    nqp_decontainerize $P5004, __lowered_lex_73
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!dispatchees", 2
    elements $I5001, $P5006
    set __lowered_lex_75, $I5001
    set __lowered_lex_76, 0
  while72_test142:
    islt $I5002, __lowered_lex_76, __lowered_lex_75
    box $P5049, $I5002
    set $P5048, $P5049
    unless $I5002 goto while72_done146 
  while72_redo144:
.annotate 'line', 144
    nqp_decontainerize $P5007, __lowered_lex_73
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees", 2
    set fb_tmp_16, $P5009
    repr_defined $I5003, fb_tmp_16
    unless $I5003 goto if73_else147 
    set $P5010, fb_tmp_16[__lowered_lex_76]
    set $P5012, $P5010
    goto if73_end148
  if73_else147:
    null $P5011
    set $P5012, $P5011
  if73_end148:
    unless_null $P5012, vivi_74149
    null $P5013
    set $P5012, $P5013
  vivi_74149:
    set __lowered_lex_61, $P5012
.annotate 'line', 147
    $P5014 = __lowered_lex_61."signature"()
    set __lowered_lex_62, $P5014
.annotate 'line', 148
    $P5015 = __lowered_lex_62."types"()
    set __lowered_lex_63, $P5015
.annotate 'line', 149
    $P5016 = __lowered_lex_62."definednesses"()
    set __lowered_lex_64, $P5016
    elements $I5004, __lowered_lex_63
    box $P5017, $I5004
    set __lowered_lex_65, $P5017
    new $P5018, 'Hash'
    set $P5018["sub"], __lowered_lex_61
    new $P5019, 'QRPA'
    set $P5018["types"], $P5019
    new $P5020, 'QRPA'
    set $P5018["definednesses"], $P5020
    box $P5021, 0
    set $P5018["min_arity"], $P5021
    box $P5022, 0
    set $P5018["max_arity"], $P5022
    box $P5023, 0
    set $P5018["num_types"], $P5023
    set __lowered_lex_66, $P5018
    box $P5024, 0
    set __lowered_lex_67, $P5024
    set __lowered_lex_68, 0
  while75_test150:
    set $N5001, __lowered_lex_68
    set $N5002, __lowered_lex_65
    islt $I5005, $N5001, $N5002
    box $P5042, $I5005
    set $P5041, $P5042
    unless $I5005 goto while75_done154 
  while75_redo152:
.annotate 'line', 163
    set fb_tmp_17, __lowered_lex_66
    repr_defined $I5006, fb_tmp_17
    unless $I5006 goto if76_else155 
    set $P5025, fb_tmp_17["max_arity"]
    set $P5027, $P5025
    goto if76_end156
  if76_else155:
    null $P5026
    set $P5027, $P5026
  if76_end156:
    unless_null $P5027, vivi_77157
    null $P5028
    set $P5027, $P5028
  vivi_77157:
    set tmp_5, $P5027
    set $I5008, tmp_5
    add $I5007, $I5008, 1
    box $P5029, $I5007
    set __lowered_lex_66["max_arity"], $P5029
    set fb_tmp_18, __lowered_lex_66
    repr_defined $I5006, fb_tmp_18
    unless $I5006 goto if78_else158 
    set $P5025, fb_tmp_18["min_arity"]
    set $P5027, $P5025
    goto if78_end159
  if78_else158:
    null $P5026
    set $P5027, $P5026
  if78_end159:
    unless_null $P5027, vivi_79160
    null $P5028
    set $P5027, $P5028
  vivi_79160:
    set tmp_6, $P5027
    set $I5008, tmp_6
    add $I5007, $I5008, 1
    box $P5029, $I5007
    set __lowered_lex_66["min_arity"], $P5029
    set fb_tmp_19, __lowered_lex_66
    repr_defined $I5006, fb_tmp_19
    unless $I5006 goto if80_else161 
    set $P5025, fb_tmp_19["types"]
    set $P5027, $P5025
    goto if80_end162
  if80_else161:
    null $P5026
    set $P5027, $P5026
  if80_end162:
    unless_null $P5027, vivi_81163
    null $P5028
    set $P5027, $P5028
  vivi_81163:
    set fb_tmp_20, __lowered_lex_63
    repr_defined $I5007, fb_tmp_20
    unless $I5007 goto if82_else164 
    set $P5029, fb_tmp_20[__lowered_lex_68]
    set $P5031, $P5029
    goto if82_end165
  if82_else164:
    null $P5030
    set $P5031, $P5030
  if82_end165:
    unless_null $P5031, vivi_83166
    null $P5032
    set $P5031, $P5032
  vivi_83166:
    push $P5027, $P5031
    set fb_tmp_21, __lowered_lex_66
    repr_defined $I5008, fb_tmp_21
    unless $I5008 goto if84_else167 
    set $P5033, fb_tmp_21["definednesses"]
    set $P5035, $P5033
    goto if84_end168
  if84_else167:
    null $P5034
    set $P5035, $P5034
  if84_end168:
    unless_null $P5035, vivi_85169
    null $P5036
    set $P5035, $P5036
  vivi_85169:
    set fb_tmp_22, __lowered_lex_64
    repr_defined $I5009, fb_tmp_22
    unless $I5009 goto if86_else170 
    set $P5037, fb_tmp_22[__lowered_lex_68]
    set $P5039, $P5037
    goto if86_end171
  if86_else170:
    null $P5038
    set $P5039, $P5038
  if86_end171:
    unless_null $P5039, vivi_87172
    null $P5040
    set $P5039, $P5040
  vivi_87172:
    push $P5035, $P5039
    set fb_tmp_23, __lowered_lex_66
    repr_defined $I5010, fb_tmp_23
    unless $I5010 goto if88_else173 
    set $P5041, fb_tmp_23["num_types"]
    set $P5043, $P5041
    goto if88_end174
  if88_else173:
    null $P5042
    set $P5043, $P5042
  if88_end174:
    unless_null $P5043, vivi_89175
    null $P5044
    set $P5043, $P5044
  vivi_89175:
    set tmp_7, $P5043
    set $I5012, tmp_7
    add $I5011, $I5012, 1
    box $P5045, $I5011
    set __lowered_lex_66["num_types"], $P5045
    set tmp_8, __lowered_lex_68
    add $I5010, tmp_8, 1
    set __lowered_lex_68, $I5010
    box $P5043, tmp_8
    set $P5041, $P5043
    goto while75_test150 
  while75_done154:
    new $P5044, 'Hash'
    set $P5044["info"], __lowered_lex_66
    new $P5045, 'QRPA'
    set $P5044["edges"], $P5045
    box $P5046, 0
    set $P5044["edges_in"], $P5046
    box $P5047, 0
    set $P5044["edges_out"], $P5047
    push __lowered_lex_74, $P5044
    set tmp_9, __lowered_lex_76
    add $I5010, tmp_9, 1
    set __lowered_lex_76, $I5010
    box $P5050, tmp_9
    set $P5048, $P5050
    goto while72_test142 
  while72_done146:
    set __lowered_lex_76, 0
  while90_test176:
    islt $I5010, __lowered_lex_76, __lowered_lex_75
    box $P5093, $I5010
    set $P5092, $P5093
    unless $I5010 goto while90_done180 
  while90_redo178:
.annotate 'line', 190
    set __lowered_lex_69, 0
  while91_test181:
    islt $I5011, __lowered_lex_69, __lowered_lex_75
    box $P5090, $I5011
    set $P5089, $P5090
    unless $I5011 goto while91_done185 
  while91_redo183:
.annotate 'line', 192
    isne $I5012, __lowered_lex_76, __lowered_lex_69
    unless $I5012 goto if92_end187 
.annotate 'line', 193
.annotate 'line', 194
    set fb_tmp_25, __lowered_lex_74
    repr_defined $I5014, fb_tmp_25
    unless $I5014 goto if95_else192 
    set $P5051, fb_tmp_25[__lowered_lex_76]
    set $P5053, $P5051
    goto if95_end193
  if95_else192:
    null $P5052
    set $P5053, $P5052
  if95_end193:
    unless_null $P5053, vivi_96194
    null $P5054
    set $P5053, $P5054
  vivi_96194:
    set fb_tmp_24, $P5053
    repr_defined $I5013, fb_tmp_24
    unless $I5013 goto if94_else190 
    set $P5055, fb_tmp_24["info"]
    set $P5057, $P5055
    goto if94_end191
  if94_else190:
    null $P5056
    set $P5057, $P5056
  if94_end191:
    unless_null $P5057, vivi_97195
    null $P5058
    set $P5057, $P5058
  vivi_97195:
    set fb_tmp_27, __lowered_lex_74
    repr_defined $I5016, fb_tmp_27
    unless $I5016 goto if99_else198 
    set $P5059, fb_tmp_27[__lowered_lex_69]
    set $P5061, $P5059
    goto if99_end199
  if99_else198:
    null $P5060
    set $P5061, $P5060
  if99_end199:
    unless_null $P5061, vivi_100200
    null $P5062
    set $P5061, $P5062
  vivi_100200:
    set fb_tmp_26, $P5061
    repr_defined $I5015, fb_tmp_26
    unless $I5015 goto if98_else196 
    set $P5063, fb_tmp_26["info"]
    set $P5065, $P5063
    goto if98_end197
  if98_else196:
    null $P5064
    set $P5065, $P5064
  if98_end197:
    unless_null $P5065, vivi_101201
    null $P5066
    set $P5065, $P5066
  vivi_101201:
    $P5067 = "&is_narrower"($P5057, $P5065)
    set $P5088, $P5067
    unless $P5067 goto if93_end189 
    set fb_tmp_29, __lowered_lex_74
    repr_defined $I5018, fb_tmp_29
    unless $I5018 goto if103_else204 
    set $P5068, fb_tmp_29[__lowered_lex_76]
    set $P5070, $P5068
    goto if103_end205
  if103_else204:
    null $P5069
    set $P5070, $P5069
  if103_end205:
    unless_null $P5070, vivi_104206
    null $P5071
    set $P5070, $P5071
  vivi_104206:
    set fb_tmp_28, $P5070
    repr_defined $I5017, fb_tmp_28
    unless $I5017 goto if102_else202 
    set $P5072, fb_tmp_28["edges"]
    set $P5074, $P5072
    goto if102_end203
  if102_else202:
    null $P5073
    set $P5074, $P5073
  if102_end203:
    unless_null $P5074, vivi_105207
    null $P5075
    set $P5074, $P5075
  vivi_105207:
    set fb_tmp_31, __lowered_lex_74
    repr_defined $I5020, fb_tmp_31
    unless $I5020 goto if107_else210 
    set $P5076, fb_tmp_31[__lowered_lex_76]
    set $P5078, $P5076
    goto if107_end211
  if107_else210:
    null $P5077
    set $P5078, $P5077
  if107_end211:
    unless_null $P5078, vivi_108212
    null $P5079
    set $P5078, $P5079
  vivi_108212:
    set fb_tmp_30, $P5078
    repr_defined $I5019, fb_tmp_30
    unless $I5019 goto if106_else208 
    set $P5080, fb_tmp_30["edges_out"]
    set $P5082, $P5080
    goto if106_end209
  if106_else208:
    null $P5081
    set $P5082, $P5081
  if106_end209:
    unless_null $P5082, vivi_109213
    null $P5083
    set $P5082, $P5083
  vivi_109213:
    set $I5021, $P5082
    set fb_tmp_32, __lowered_lex_74
    repr_defined $I5022, fb_tmp_32
    unless $I5022 goto if110_else214 
    set $P5084, fb_tmp_32[__lowered_lex_69]
    set $P5086, $P5084
    goto if110_end215
  if110_else214:
    null $P5085
    set $P5086, $P5085
  if110_end215:
    unless_null $P5086, vivi_111216
    null $P5087
    set $P5086, $P5087
  vivi_111216:
    set $P5074[$I5021], $P5086
    set fb_tmp_34, __lowered_lex_74
    repr_defined $I5024, fb_tmp_34
    unless $I5024 goto if113_else219 
    set $P5088, fb_tmp_34[__lowered_lex_76]
    set $P5090, $P5088
    goto if113_end220
  if113_else219:
    null $P5089
    set $P5090, $P5089
  if113_end220:
    unless_null $P5090, vivi_114221
    null $P5091
    set $P5090, $P5091
  vivi_114221:
    set fb_tmp_33, $P5090
    repr_defined $I5023, fb_tmp_33
    unless $I5023 goto if112_else217 
    set $P5092, fb_tmp_33["edges_out"]
    set $P5094, $P5092
    goto if112_end218
  if112_else217:
    null $P5093
    set $P5094, $P5093
  if112_end218:
    unless_null $P5094, vivi_115222
    null $P5095
    set $P5094, $P5095
  vivi_115222:
    set tmp_10, $P5094
    set fb_tmp_35, __lowered_lex_74
    repr_defined $I5025, fb_tmp_35
    unless $I5025 goto if116_else223 
    set $P5096, fb_tmp_35[__lowered_lex_76]
    set $P5098, $P5096
    goto if116_end224
  if116_else223:
    null $P5097
    set $P5098, $P5097
  if116_end224:
    unless_null $P5098, vivi_117225
    null $P5099
    set $P5098, $P5099
  vivi_117225:
    set $I5027, tmp_10
    add $I5026, $I5027, 1
    box $P5100, $I5026
    set $P5098["edges_out"], $P5100
    set fb_tmp_37, __lowered_lex_74
    repr_defined $I5024, fb_tmp_37
    unless $I5024 goto if119_else228 
    set $P5088, fb_tmp_37[__lowered_lex_69]
    set $P5090, $P5088
    goto if119_end229
  if119_else228:
    null $P5089
    set $P5090, $P5089
  if119_end229:
    unless_null $P5090, vivi_120230
    null $P5091
    set $P5090, $P5091
  vivi_120230:
    set fb_tmp_36, $P5090
    repr_defined $I5023, fb_tmp_36
    unless $I5023 goto if118_else226 
    set $P5092, fb_tmp_36["edges_in"]
    set $P5094, $P5092
    goto if118_end227
  if118_else226:
    null $P5093
    set $P5094, $P5093
  if118_end227:
    unless_null $P5094, vivi_121231
    null $P5095
    set $P5094, $P5095
  vivi_121231:
    set tmp_11, $P5094
    set fb_tmp_38, __lowered_lex_74
    repr_defined $I5025, fb_tmp_38
    unless $I5025 goto if122_else232 
    set $P5096, fb_tmp_38[__lowered_lex_69]
    set $P5098, $P5096
    goto if122_end233
  if122_else232:
    null $P5097
    set $P5098, $P5097
  if122_end233:
    unless_null $P5098, vivi_123234
    null $P5099
    set $P5098, $P5099
  vivi_123234:
    set $I5027, tmp_11
    add $I5026, $I5027, 1
    box $P5100, $I5026
    set $P5098["edges_in"], $P5100
    set $P5088, tmp_11
  if93_end189:
  if92_end187:
    set tmp_12, __lowered_lex_69
    add $I5023, tmp_12, 1
    set __lowered_lex_69, $I5023
    box $P5091, tmp_12
    set $P5089, $P5091
    goto while91_test181 
  while91_done185:
    set tmp_13, __lowered_lex_76
    add $I5023, tmp_13, 1
    set __lowered_lex_76, $I5023
    box $P5094, tmp_13
    set $P5092, $P5094
    goto while90_test176 
  while90_done180:
    box $P5095, __lowered_lex_75
    set __lowered_lex_78, $P5095
  while124_test235:
    set $N5003, __lowered_lex_78
    set $N5004, 0
    isgt $I5023, $N5003, $N5004
    box $P5152, $I5023
    set $P5151, $P5152
    unless $I5023 goto while124_done239 
  while124_redo237:
.annotate 'line', 208
    elements $I5024, __lowered_lex_77
    box $P5096, $I5024
    set __lowered_lex_71, $P5096
    set __lowered_lex_72, 0
  while125_test240:
    islt $I5025, __lowered_lex_72, __lowered_lex_75
    box $P5119, $I5025
    set $P5118, $P5119
    unless $I5025 goto while125_done244 
  while125_redo242:
.annotate 'line', 214
    set fb_tmp_40, __lowered_lex_74
    repr_defined $I5028, fb_tmp_40
    unless $I5028 goto if128_else249 
    set $P5097, fb_tmp_40[__lowered_lex_72]
    set $P5099, $P5097
    goto if128_end250
  if128_else249:
    null $P5098
    set $P5099, $P5098
  if128_end250:
    unless_null $P5099, vivi_129251
    null $P5100
    set $P5099, $P5100
  vivi_129251:
    set fb_tmp_39, $P5099
    repr_defined $I5027, fb_tmp_39
    unless $I5027 goto if127_else247 
    set $P5101, fb_tmp_39["edges_in"]
    set $P5103, $P5101
    goto if127_end248
  if127_else247:
    null $P5102
    set $P5103, $P5102
  if127_end248:
    unless_null $P5103, vivi_130252
    null $P5104
    set $P5103, $P5104
  vivi_130252:
    set $N5005, $P5103
    set $N5006, 0
    iseq $I5026, $N5005, $N5006
    unless $I5026 goto if126_end246 
.annotate 'line', 215
    set fb_tmp_42, __lowered_lex_74
    repr_defined $I5030, fb_tmp_42
    unless $I5030 goto if132_else255 
    set $P5105, fb_tmp_42[__lowered_lex_72]
    set $P5107, $P5105
    goto if132_end256
  if132_else255:
    null $P5106
    set $P5107, $P5106
  if132_end256:
    unless_null $P5107, vivi_133257
    null $P5108
    set $P5107, $P5108
  vivi_133257:
    set fb_tmp_41, $P5107
    repr_defined $I5029, fb_tmp_41
    unless $I5029 goto if131_else253 
    set $P5109, fb_tmp_41["info"]
    set $P5111, $P5109
    goto if131_end254
  if131_else253:
    null $P5110
    set $P5111, $P5110
  if131_end254:
    unless_null $P5111, vivi_134258
    null $P5112
    set $P5111, $P5112
  vivi_134258:
    push __lowered_lex_77, $P5111
    set tmp_14, __lowered_lex_78
    set $I5032, tmp_14
    sub $I5031, $I5032, 1
    box $P5113, $I5031
    set __lowered_lex_78, $P5113
    set fb_tmp_43, __lowered_lex_74
    repr_defined $I5031, fb_tmp_43
    unless $I5031 goto if135_else259 
    set $P5113, fb_tmp_43[__lowered_lex_72]
    set $P5115, $P5113
    goto if135_end260
  if135_else259:
    null $P5114
    set $P5115, $P5114
  if135_end260:
    unless_null $P5115, vivi_136261
    null $P5116
    set $P5115, $P5116
  vivi_136261:
    find_lex $P5117, "$EDGE_REMOVAL_TODO"
    set $P5115["edges_in"], $P5117
  if126_end246:
    set tmp_15, __lowered_lex_72
    add $I5032, tmp_15, 1
    set __lowered_lex_72, $I5032
    box $P5120, tmp_15
    set $P5118, $P5120
    goto while125_test240 
  while125_done244:
    set $N5007, __lowered_lex_71
    elements $I5033, __lowered_lex_77
    set $N5008, $I5033
    iseq $I5032, $N5007, $N5008
    unless $I5032 goto if137_end263 
.annotate 'line', 223
    box $P5121, "Circularity detected in multi sub types"
    die $P5121
  if137_end263:
    set __lowered_lex_72, 0
  while138_test264:
    islt $I5034, __lowered_lex_72, __lowered_lex_75
    box $P5148, $I5034
    set $P5147, $P5148
    unless $I5034 goto while138_done268 
  while138_redo266:
.annotate 'line', 230
    set fb_tmp_45, __lowered_lex_74
    repr_defined $I5037, fb_tmp_45
    unless $I5037 goto if141_else273 
    set $P5122, fb_tmp_45[__lowered_lex_72]
    set $P5124, $P5122
    goto if141_end274
  if141_else273:
    null $P5123
    set $P5124, $P5123
  if141_end274:
    unless_null $P5124, vivi_142275
    null $P5125
    set $P5124, $P5125
  vivi_142275:
    set fb_tmp_44, $P5124
    repr_defined $I5036, fb_tmp_44
    unless $I5036 goto if140_else271 
    set $P5126, fb_tmp_44["edges_in"]
    set $P5128, $P5126
    goto if140_end272
  if140_else271:
    null $P5127
    set $P5128, $P5127
  if140_end272:
    unless_null $P5128, vivi_143276
    null $P5129
    set $P5128, $P5129
  vivi_143276:
    set $N5009, $P5128
    find_lex $P5130, "$EDGE_REMOVAL_TODO"
    set $N5010, $P5130
    iseq $I5035, $N5009, $N5010
    unless $I5035 goto if139_end270 
.annotate 'line', 231
    box $P5131, 0
    set __lowered_lex_70, $P5131
  while144_test277:
    set $N5011, __lowered_lex_70
    set fb_tmp_47, __lowered_lex_74
    repr_defined $I5040, fb_tmp_47
    unless $I5040 goto if146_else284 
    set $P5132, fb_tmp_47[__lowered_lex_72]
    set $P5134, $P5132
    goto if146_end285
  if146_else284:
    null $P5133
    set $P5134, $P5133
  if146_end285:
    unless_null $P5134, vivi_147286
    null $P5135
    set $P5134, $P5135
  vivi_147286:
    set fb_tmp_46, $P5134
    repr_defined $I5039, fb_tmp_46
    unless $I5039 goto if145_else282 
    set $P5136, fb_tmp_46["edges_out"]
    set $P5138, $P5136
    goto if145_end283
  if145_else282:
    null $P5137
    set $P5138, $P5137
  if145_end283:
    unless_null $P5138, vivi_148287
    null $P5139
    set $P5138, $P5139
  vivi_148287:
    set $N5012, $P5138
    islt $I5038, $N5011, $N5012
    box $P5141, $I5038
    set $P5140, $P5141
    unless $I5038 goto while144_done281 
  while144_redo279:
.annotate 'line', 233
    set fb_tmp_51, __lowered_lex_74
    repr_defined $I5044, fb_tmp_51
    unless $I5044 goto if152_else294 
    set $P5140, fb_tmp_51[__lowered_lex_72]
    set $P5142, $P5140
    goto if152_end295
  if152_else294:
    null $P5141
    set $P5142, $P5141
  if152_end295:
    unless_null $P5142, vivi_153296
    null $P5143
    set $P5142, $P5143
  vivi_153296:
    set fb_tmp_50, $P5142
    repr_defined $I5043, fb_tmp_50
    unless $I5043 goto if151_else292 
    set $P5144, fb_tmp_50["edges"]
    set $P5146, $P5144
    goto if151_end293
  if151_else292:
    null $P5145
    set $P5146, $P5145
  if151_end293:
    unless_null $P5146, vivi_154297
    null $P5147
    set $P5146, $P5147
  vivi_154297:
    set fb_tmp_49, $P5146
    repr_defined $I5042, fb_tmp_49
    unless $I5042 goto if150_else290 
    set $I5045, __lowered_lex_70
    set $P5148, fb_tmp_49[$I5045]
    set $P5150, $P5148
    goto if150_end291
  if150_else290:
    null $P5149
    set $P5150, $P5149
  if150_end291:
    unless_null $P5150, vivi_155298
    null $P5151
    set $P5150, $P5151
  vivi_155298:
    set fb_tmp_48, $P5150
    repr_defined $I5041, fb_tmp_48
    unless $I5041 goto if149_else288 
    set $P5152, fb_tmp_48["edges_in"]
    set $P5154, $P5152
    goto if149_end289
  if149_else288:
    null $P5153
    set $P5154, $P5153
  if149_end289:
    unless_null $P5154, vivi_156299
    null $P5155
    set $P5154, $P5155
  vivi_156299:
    set tmp_16, $P5154
    set fb_tmp_54, __lowered_lex_74
    repr_defined $I5048, fb_tmp_54
    unless $I5048 goto if159_else304 
    set $P5156, fb_tmp_54[__lowered_lex_72]
    set $P5158, $P5156
    goto if159_end305
  if159_else304:
    null $P5157
    set $P5158, $P5157
  if159_end305:
    unless_null $P5158, vivi_160306
    null $P5159
    set $P5158, $P5159
  vivi_160306:
    set fb_tmp_53, $P5158
    repr_defined $I5047, fb_tmp_53
    unless $I5047 goto if158_else302 
    set $P5160, fb_tmp_53["edges"]
    set $P5162, $P5160
    goto if158_end303
  if158_else302:
    null $P5161
    set $P5162, $P5161
  if158_end303:
    unless_null $P5162, vivi_161307
    null $P5163
    set $P5162, $P5163
  vivi_161307:
    set fb_tmp_52, $P5162
    repr_defined $I5046, fb_tmp_52
    unless $I5046 goto if157_else300 
    set $I5049, __lowered_lex_70
    set $P5164, fb_tmp_52[$I5049]
    set $P5166, $P5164
    goto if157_end301
  if157_else300:
    null $P5165
    set $P5166, $P5165
  if157_end301:
    unless_null $P5166, vivi_162308
    null $P5167
    set $P5166, $P5167
  vivi_162308:
    set $I5051, tmp_16
    sub $I5050, $I5051, 1
    box $P5168, $I5050
    set $P5166["edges_in"], $P5168
    set tmp_17, __lowered_lex_70
    set $I5042, tmp_17
    add $I5041, $I5042, 1
    box $P5140, $I5041
    set __lowered_lex_70, $P5140
    set $P5140, tmp_17
    goto while144_test277 
  while144_done281:
    set fb_tmp_55, __lowered_lex_74
    repr_defined $I5041, fb_tmp_55
    unless $I5041 goto if163_else309 
    set $P5142, fb_tmp_55[__lowered_lex_72]
    set $P5144, $P5142
    goto if163_end310
  if163_else309:
    null $P5143
    set $P5144, $P5143
  if163_end310:
    unless_null $P5144, vivi_164311
    null $P5145
    set $P5144, $P5145
  vivi_164311:
    find_lex $P5146, "$EDGE_REMOVED"
    set $P5144["edges_in"], $P5146
  if139_end270:
    set tmp_18, __lowered_lex_72
    add $I5042, tmp_18, 1
    set __lowered_lex_72, $I5042
    box $P5149, tmp_18
    set $P5147, $P5149
    goto while138_test264 
  while138_done268:
    null $P5150
    push __lowered_lex_77, $P5150
    set $P5151, __lowered_lex_77
    goto while124_test235 
  while124_done239:
    null $P5153
    push __lowered_lex_77, $P5153
    $P5154 = "RETURN"(__lowered_lex_77)
    goto lexotic_141
  lexotic_140:
    .get_results ($P5154)
  lexotic_141:
    .return ($P5154) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower" :subid("cuid_70_1431289881.03896") :anon :lex :outer("cuid_4_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 92
    .param pmc __lowered_lex_55 
    .param pmc __lowered_lex_56 
    .local pmc __lowered_lex_57 
    .local int __lowered_lex_58 
    .local int __lowered_lex_59 
    .local int __lowered_lex_60 
    .local pmc fb_tmp_1 
    .local pmc fb_tmp_2 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    .local pmc __lowered_lex_53 
    .local pmc __lowered_lex_54 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    .local int tmp_1 
    .local int tmp_2 
    .local int tmp_3 
    .local int tmp_4 
    .local pmc fb_tmp_14 
    .local pmc fb_tmp_15 
    null $P5001
    set __lowered_lex_57, $P5001
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_68
    .lex "RETURN", $P101
    set fb_tmp_1, __lowered_lex_55
    repr_defined $I5002, fb_tmp_1
    unless $I5002 goto if32_else72 
    set $P5002, fb_tmp_1["num_types"]
    set $P5004, $P5002
    goto if32_end73
  if32_else72:
    null $P5003
    set $P5004, $P5003
  if32_end73:
    unless_null $P5004, vivi_3374
    null $P5005
    set $P5004, $P5005
  vivi_3374:
    set $N5001, $P5004
    set fb_tmp_2, __lowered_lex_56
    repr_defined $I5003, fb_tmp_2
    unless $I5003 goto if34_else75 
    set $P5006, fb_tmp_2["num_types"]
    set $P5008, $P5006
    goto if34_end76
  if34_else75:
    null $P5007
    set $P5008, $P5007
  if34_end76:
    unless_null $P5008, vivi_3577
    null $P5009
    set $P5008, $P5009
  vivi_3577:
    set $N5002, $P5008
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if31_else70 
.annotate 'line', 96
    set fb_tmp_3, __lowered_lex_55
    repr_defined $I5004, fb_tmp_3
    unless $I5004 goto if36_else78 
    set $P5010, fb_tmp_3["num_types"]
    set $P5012, $P5010
    goto if36_end79
  if36_else78:
    null $P5011
    set $P5012, $P5011
  if36_end79:
    unless_null $P5012, vivi_3780
    null $P5013
    set $P5012, $P5013
  vivi_3780:
    set __lowered_lex_57, $P5012
    goto if31_end71
  if31_else70:
    set fb_tmp_4, __lowered_lex_55
    repr_defined $I5006, fb_tmp_4
    unless $I5006 goto if39_else83 
    set $P5014, fb_tmp_4["min_arity"]
    set $P5016, $P5014
    goto if39_end84
  if39_else83:
    null $P5015
    set $P5016, $P5015
  if39_end84:
    unless_null $P5016, vivi_4085
    null $P5017
    set $P5016, $P5017
  vivi_4085:
    set $N5003, $P5016
    set fb_tmp_5, __lowered_lex_56
    repr_defined $I5007, fb_tmp_5
    unless $I5007 goto if41_else86 
    set $P5018, fb_tmp_5["min_arity"]
    set $P5020, $P5018
    goto if41_end87
  if41_else86:
    null $P5019
    set $P5020, $P5019
  if41_end87:
    unless_null $P5020, vivi_4288
    null $P5021
    set $P5020, $P5021
  vivi_4288:
    set $N5004, $P5020
    iseq $I5005, $N5003, $N5004
    unless $I5005 goto if38_else81 
.annotate 'line', 99
    set fb_tmp_6, __lowered_lex_55
    repr_defined $I5009, fb_tmp_6
    unless $I5009 goto if44_else91 
    set $P5022, fb_tmp_6["num_types"]
    set $P5024, $P5022
    goto if44_end92
  if44_else91:
    null $P5023
    set $P5024, $P5023
  if44_end92:
    unless_null $P5024, vivi_4593
    null $P5025
    set $P5024, $P5025
  vivi_4593:
    set $N5005, $P5024
    set fb_tmp_7, __lowered_lex_56
    repr_defined $I5010, fb_tmp_7
    unless $I5010 goto if46_else94 
    set $P5026, fb_tmp_7["num_types"]
    set $P5028, $P5026
    goto if46_end95
  if46_else94:
    null $P5027
    set $P5028, $P5027
  if46_end95:
    unless_null $P5028, vivi_4796
    null $P5029
    set $P5028, $P5029
  vivi_4796:
    set $N5006, $P5028
    isgt $I5008, $N5005, $N5006
    unless $I5008 goto if43_else89 
    set fb_tmp_8, __lowered_lex_56
    repr_defined $I5011, fb_tmp_8
    unless $I5011 goto if48_else97 
    set $P5030, fb_tmp_8["num_types"]
    set $P5032, $P5030
    goto if48_end98
  if48_else97:
    null $P5031
    set $P5032, $P5031
  if48_end98:
    unless_null $P5032, vivi_4999
    null $P5033
    set $P5032, $P5033
  vivi_4999:
    set $P5038, $P5032
    goto if43_end90
  if43_else89:
    set fb_tmp_9, __lowered_lex_55
    repr_defined $I5012, fb_tmp_9
    unless $I5012 goto if50_else100 
    set $P5034, fb_tmp_9["num_types"]
    set $P5036, $P5034
    goto if50_end101
  if50_else100:
    null $P5035
    set $P5036, $P5035
  if50_end101:
    unless_null $P5036, vivi_51102
    null $P5037
    set $P5036, $P5037
  vivi_51102:
    set $P5038, $P5036
  if43_end90:
    set __lowered_lex_57, $P5038
    set $P5040, __lowered_lex_57
    goto if38_end82
  if38_else81:
.annotate 'line', 102
    $P5039 = "RETURN"(0)
    set $P5040, $P5039
  if38_end82:
  if31_end71:
    set __lowered_lex_58, 0
    set __lowered_lex_59, 0
    set __lowered_lex_60, 0
  while52_test103:
    set $N5007, __lowered_lex_58
    set $N5008, __lowered_lex_57
    islt $I5013, $N5007, $N5008
    box $P5060, $I5013
    set $P5059, $P5060
    unless $I5013 goto while52_done107 
  while52_redo105:
.annotate 'line', 110
    set fb_tmp_11, __lowered_lex_55
    repr_defined $I5015, fb_tmp_11
    unless $I5015 goto if54_else110 
    set $P5041, fb_tmp_11["types"]
    set $P5043, $P5041
    goto if54_end111
  if54_else110:
    null $P5042
    set $P5043, $P5042
  if54_end111:
    unless_null $P5043, vivi_55112
    null $P5044
    set $P5043, $P5044
  vivi_55112:
    set fb_tmp_10, $P5043
    repr_defined $I5014, fb_tmp_10
    unless $I5014 goto if53_else108 
    set $P5045, fb_tmp_10[__lowered_lex_58]
    set $P5047, $P5045
    goto if53_end109
  if53_else108:
    null $P5046
    set $P5047, $P5046
  if53_end109:
    unless_null $P5047, vivi_56113
    null $P5048
    set $P5047, $P5048
  vivi_56113:
    set __lowered_lex_53, $P5047
    set fb_tmp_13, __lowered_lex_56
    repr_defined $I5017, fb_tmp_13
    unless $I5017 goto if58_else116 
    set $P5049, fb_tmp_13["types"]
    set $P5051, $P5049
    goto if58_end117
  if58_else116:
    null $P5050
    set $P5051, $P5050
  if58_end117:
    unless_null $P5051, vivi_59118
    null $P5052
    set $P5051, $P5052
  vivi_59118:
    set fb_tmp_12, $P5051
    repr_defined $I5016, fb_tmp_12
    unless $I5016 goto if57_else114 
    set $P5053, fb_tmp_12[__lowered_lex_58]
    set $P5055, $P5053
    goto if57_end115
  if57_else114:
    null $P5054
    set $P5055, $P5054
  if57_end115:
    unless_null $P5055, vivi_60119
    null $P5056
    set $P5055, $P5056
  vivi_60119:
    set __lowered_lex_54, $P5055
    get_id $I5019, __lowered_lex_53
    get_id $I5020, __lowered_lex_54
    iseq $I5018, $I5019, $I5020
    unless $I5018 goto if61_else120 
.annotate 'line', 113
    set tmp_1, __lowered_lex_60
    add $I5021, tmp_1, 1
    set __lowered_lex_60, $I5021
    goto if61_end121
  if61_else120:
.annotate 'line', 116
    $P5057 = "&is_narrower_type"(__lowered_lex_53, __lowered_lex_54)
    unless $P5057 goto if62_else122 
    set tmp_2, __lowered_lex_59
    add $I5021, tmp_2, 1
    set __lowered_lex_59, $I5021
    set $I5023, tmp_2
    goto if62_end123
  if62_else122:
.annotate 'line', 119
    $P5058 = "&is_narrower_type"(__lowered_lex_54, __lowered_lex_53)
    isfalse $I5021, $P5058
    set $I5022, $I5021
    unless $I5021 goto if63_end125 
    set tmp_3, __lowered_lex_60
    add $I5022, tmp_3, 1
    set __lowered_lex_60, $I5022
    set $I5022, tmp_3
  if63_end125:
    set $I5023, $I5022
  if62_end123:
  if61_end121:
    set tmp_4, __lowered_lex_58
    add $I5024, tmp_4, 1
    set __lowered_lex_58, $I5024
    box $P5061, tmp_4
    set $P5059, $P5061
    goto while52_test103 
  while52_done107:
    isge $I5024, __lowered_lex_59, 1
    set $I5027, $I5024
    unless $I5024 goto if65_end129 
    add $I5026, __lowered_lex_59, __lowered_lex_60
    set $N5009, $I5026
    set $N5010, __lowered_lex_57
    iseq $I5025, $N5009, $N5010
    set $I5027, $I5025
  if65_end129:
    unless $I5027 goto if64_else126 
.annotate 'line', 126
    $P5062 = "RETURN"(1)
    goto if64_end127
  if64_else126:
    set $N5011, __lowered_lex_60
    set $N5012, __lowered_lex_57
    isne $I5028, $N5011, $N5012
    box $P5065, $I5028
    set $P5064, $P5065
    unless $I5028 goto if66_end131 
.annotate 'line', 131
    $P5063 = "RETURN"(0)
    set $P5064, $P5063
  if66_end131:
  if64_end127:
    set fb_tmp_14, __lowered_lex_55
    repr_defined $I5030, fb_tmp_14
    unless $I5030 goto if68_else134 
    set $P5066, fb_tmp_14["max_arity"]
    set $P5068, $P5066
    goto if68_end135
  if68_else134:
    null $P5067
    set $P5068, $P5067
  if68_end135:
    unless_null $P5068, vivi_69136
    null $P5069
    set $P5068, $P5069
  vivi_69136:
    set $N5013, $P5068
    find_lex $P5070, "$SLURPY_ARITY"
    set $N5014, $P5070
    isne $I5029, $N5013, $N5014
    set $I5033, $I5029
    unless $I5029 goto if67_end133 
    set fb_tmp_15, __lowered_lex_56
    repr_defined $I5032, fb_tmp_15
    unless $I5032 goto if70_else137 
    set $P5071, fb_tmp_15["max_arity"]
    set $P5073, $P5071
    goto if70_end138
  if70_else137:
    null $P5072
    set $P5073, $P5072
  if70_end138:
    unless_null $P5073, vivi_71139
    null $P5074
    set $P5073, $P5074
  vivi_71139:
    set $N5015, $P5073
    find_lex $P5075, "$SLURPY_ARITY"
    set $N5016, $P5075
    iseq $I5031, $N5015, $N5016
    set $I5033, $I5031
  if67_end133:
    $P5076 = "RETURN"($I5033)
    goto lexotic_69
  lexotic_68:
    .get_results ($P5076)
  lexotic_69:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "dispatch" :subid("cuid_5_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 252
    .param pmc __lowered_lex_85 
    .param pmc __lowered_lex_86 
    .local pmc __lowered_lex_87 
    .local pmc __lowered_lex_88 
    .local pmc __lowered_lex_89 
    .local pmc __lowered_lex_90 
    .local int __lowered_lex_91 
    .local int __lowered_lex_92 
    .local int __lowered_lex_93 
    .local int __lowered_lex_94 
    .local pmc __lowered_lex_95 
    .local pmc fb_tmp_56 
    .local int tmp_19 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local int tmp_20 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc __lowered_lex_80 
    .local pmc __lowered_lex_81 
    .local pmc __lowered_lex_82 
    .local pmc __lowered_lex_83 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc __lowered_lex_79 
    .local int tmp_21 
    .local int tmp_22 
    .local int tmp_23 
    .local pmc __lowered_lex_84 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    new $P5001, 'QRPA'
    set __lowered_lex_90, $P5001
    set __lowered_lex_91, 0
    set __lowered_lex_92, 0
    set __lowered_lex_93, 0
    null $P5002
    set __lowered_lex_95, $P5002
    elements $I5001, __lowered_lex_86
    box $P5003, $I5001
    set __lowered_lex_87, $P5003
    nqp_decontainerize $P5004, __lowered_lex_85
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!dispatch_order", 4
    set __lowered_lex_88, $P5006
    isnull $I5002, __lowered_lex_88
    unless $I5002 goto if165_end313 
.annotate 'line', 258
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5007, __lowered_lex_85
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
.annotate 'line', 260
    nqp_decontainerize $P5009, __lowered_lex_85
    $P5010 = $P5009."sort_dispatchees"()
    repr_bind_attr_obj $P5007, $P5008, "$!dispatch_order", 4, $P5010
    set __lowered_lex_88, $P5010
    nqp_enable_sc_write_barrier 
  if165_end313:
    elements $I5003, __lowered_lex_88
    box $P5011, $I5003
    set __lowered_lex_89, $P5011
    set __lowered_lex_94, 0
    new $P5072, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5072, while166_handlers317
    push_eh $P5072
  while166_test314:
    set $I5037, 1
    unless 1 goto while166_done318 
  while166_redo316:
.annotate 'line', 274
    set fb_tmp_56, __lowered_lex_88
    repr_defined $I5004, fb_tmp_56
    unless $I5004 goto if167_else319 
    set $P5012, fb_tmp_56[__lowered_lex_94]
    set $P5014, $P5012
    goto if167_end320
  if167_else319:
    null $P5013
    set $P5014, $P5013
  if167_end320:
    unless_null $P5014, vivi_168321
    null $P5015
    set $P5014, $P5015
  vivi_168321:
    set __lowered_lex_95, $P5014
    isnull $I5005, __lowered_lex_95
    unless $I5005 goto if169_end323 
.annotate 'line', 277
    elements $I5006, __lowered_lex_90
    unless $I5006 goto if170_end325 
.annotate 'line', 279
    die 0, .CONTROL_LOOP_LAST
  if170_end325:
    set tmp_19, __lowered_lex_94
    add $I5007, tmp_19, 1
    set __lowered_lex_94, $I5007
    set fb_tmp_57, __lowered_lex_88
    repr_defined $I5008, fb_tmp_57
    unless $I5008 goto if172_else328 
    set $P5016, fb_tmp_57[__lowered_lex_94]
    set $P5018, $P5016
    goto if172_end329
  if172_else328:
    null $P5017
    set $P5018, $P5017
  if172_end329:
    unless_null $P5018, vivi_173330
    null $P5019
    set $P5018, $P5019
  vivi_173330:
    isnull $I5007, $P5018
    unless $I5007 goto if171_else326 
.annotate 'line', 285
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
    goto if171_end327
  if171_else326:
.annotate 'line', 288
    die 0, .CONTROL_LOOP_NEXT
    set $I5009, 0
  if171_end327:
  if169_end323:
    set $N5001, __lowered_lex_87
    set fb_tmp_58, __lowered_lex_95
    repr_defined $I5011, fb_tmp_58
    unless $I5011 goto if176_else335 
    set $P5020, fb_tmp_58["min_arity"]
    set $P5022, $P5020
    goto if176_end336
  if176_else335:
    null $P5021
    set $P5022, $P5021
  if176_end336:
    unless_null $P5022, vivi_177337
    null $P5023
    set $P5022, $P5023
  vivi_177337:
    set $N5002, $P5022
    islt $I5010, $N5001, $N5002
    set $I5014, $I5010
    if $I5010 goto unless175_end334 
    set $N5003, __lowered_lex_87
    set fb_tmp_59, __lowered_lex_95
    repr_defined $I5013, fb_tmp_59
    unless $I5013 goto if178_else338 
    set $P5024, fb_tmp_59["max_arity"]
    set $P5026, $P5024
    goto if178_end339
  if178_else338:
    null $P5025
    set $P5026, $P5025
  if178_end339:
    unless_null $P5026, vivi_179340
    null $P5027
    set $P5026, $P5027
  vivi_179340:
    set $N5004, $P5026
    isgt $I5012, $N5003, $N5004
    set $I5014, $I5012
  unless175_end334:
    unless $I5014 goto if174_end332 
.annotate 'line', 294
    set tmp_20, __lowered_lex_94
    add $I5015, tmp_20, 1
    set __lowered_lex_94, $I5015
    die 0, .CONTROL_LOOP_NEXT
  if174_end332:
    set fb_tmp_60, __lowered_lex_95
    repr_defined $I5016, fb_tmp_60
    unless $I5016 goto if181_else343 
    set $P5028, fb_tmp_60["num_types"]
    set $P5030, $P5028
    goto if181_end344
  if181_else343:
    null $P5029
    set $P5030, $P5029
  if181_end344:
    unless_null $P5030, vivi_182345
    null $P5031
    set $P5030, $P5031
  vivi_182345:
    set $N5005, $P5030
    set $N5006, __lowered_lex_87
    isgt $I5015, $N5005, $N5006
    unless $I5015 goto if180_else341 
    set $P5036, __lowered_lex_87
    goto if180_end342
  if180_else341:
    set fb_tmp_61, __lowered_lex_95
    repr_defined $I5017, fb_tmp_61
    unless $I5017 goto if183_else346 
    set $P5032, fb_tmp_61["num_types"]
    set $P5034, $P5032
    goto if183_end347
  if183_else346:
    null $P5033
    set $P5034, $P5033
  if183_end347:
    unless_null $P5034, vivi_184348
    null $P5035
    set $P5034, $P5035
  vivi_184348:
    set $P5036, $P5034
  if180_end342:
    set $I5018, $P5036
    set __lowered_lex_92, $I5018
    set __lowered_lex_91, 0
    set __lowered_lex_93, 0
    new $P5068, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5068, while185_handlers352
    push_eh $P5068
  while185_test349:
    islt $I5019, __lowered_lex_93, __lowered_lex_92
    box $P5069, $I5019
    set $P5067, $P5069
    unless $I5019 goto while185_done353 
  while185_redo351:
.annotate 'line', 305
    set $P5037, __lowered_lex_86[__lowered_lex_93]
    set __lowered_lex_80, $P5037
    what_or_null $P5038, __lowered_lex_80
    set __lowered_lex_81, $P5038
    set fb_tmp_63, __lowered_lex_95
    repr_defined $I5021, fb_tmp_63
    unless $I5021 goto if187_else356 
    set $P5039, fb_tmp_63["types"]
    set $P5041, $P5039
    goto if187_end357
  if187_else356:
    null $P5040
    set $P5041, $P5040
  if187_end357:
    unless_null $P5041, vivi_188358
    null $P5042
    set $P5041, $P5042
  vivi_188358:
    set fb_tmp_62, $P5041
    repr_defined $I5020, fb_tmp_62
    unless $I5020 goto if186_else354 
    set $P5043, fb_tmp_62[__lowered_lex_93]
    set $P5045, $P5043
    goto if186_end355
  if186_else354:
    null $P5044
    set $P5045, $P5044
  if186_end355:
    unless_null $P5045, vivi_189359
    null $P5046
    set $P5045, $P5046
  vivi_189359:
    set __lowered_lex_82, $P5045
    set fb_tmp_65, __lowered_lex_95
    repr_defined $I5023, fb_tmp_65
    unless $I5023 goto if191_else362 
    set $P5047, fb_tmp_65["definednesses"]
    set $P5049, $P5047
    goto if191_end363
  if191_else362:
    null $P5048
    set $P5049, $P5048
  if191_end363:
    unless_null $P5049, vivi_192364
    null $P5050
    set $P5049, $P5050
  vivi_192364:
    set fb_tmp_64, $P5049
    repr_defined $I5022, fb_tmp_64
    unless $I5022 goto if190_else360 
    set $P5051, fb_tmp_64[__lowered_lex_93]
    set $P5053, $P5051
    goto if190_end361
  if190_else360:
    null $P5052
    set $P5053, $P5052
  if190_end361:
    unless_null $P5053, vivi_193365
    null $P5054
    set $P5053, $P5054
  vivi_193365:
    set __lowered_lex_83, $P5053
    get_id $I5025, __lowered_lex_81
    get_id $I5026, __lowered_lex_82
    iseq $I5024, $I5025, $I5026
    set $I5028, $I5024
    if $I5024 goto unless196_end371 
    isnull $I5027, __lowered_lex_82
    set $I5028, $I5027
  unless196_end371:
    box $P5057, $I5028
    set $P5056, $P5057
    if $I5028 goto unless195_end369 
.annotate 'line', 310
    $P5055 = "&is_narrower_type"(__lowered_lex_81, __lowered_lex_82)
    set $P5056, $P5055
  unless195_end369:
    if $P5056 goto unless194_end367 
    set __lowered_lex_91, 1
    die 0, .CONTROL_LOOP_LAST
  unless194_end367:
    unless __lowered_lex_83 goto if197_end373 
.annotate 'line', 314
    isnull $I5029, __lowered_lex_81
    unless $I5029 goto if198_else374 
    defined $I5030, __lowered_lex_80
    set $I5032, $I5030
    goto if198_end375
  if198_else374:
    repr_defined $I5031, __lowered_lex_80
    set $I5032, $I5031
  if198_end375:
    box $P5058, $I5032
    set __lowered_lex_79, $P5058
    isfalse $I5033, __lowered_lex_79
    set $I5035, $I5033
    unless $I5033 goto if201_end381 
    set $N5007, __lowered_lex_83
    find_lex $P5059, "$DEFINED_ONLY"
    set $N5008, $P5059
    iseq $I5034, $N5007, $N5008
    set $I5035, $I5034
  if201_end381:
    box $P5064, $I5035
    set $P5063, $P5064
    if $I5035 goto unless200_end379 
    set $P5061, __lowered_lex_79
    unless __lowered_lex_79 goto if202_end383 
    set $N5009, __lowered_lex_83
    find_lex $P5060, "$UNDEFINED_ONLY"
    set $N5010, $P5060
    iseq $I5036, $N5009, $N5010
    box $P5062, $I5036
    set $P5061, $P5062
  if202_end383:
    set $P5063, $P5061
  unless200_end379:
    set $P5065, $P5063
    unless $P5063 goto if199_end377 
.annotate 'line', 317
    set __lowered_lex_91, 1
    die 0, .CONTROL_LOOP_LAST
    box $P5066, 0
    set $P5065, $P5066
  if199_end377:
  if197_end373:
    set tmp_21, __lowered_lex_93
    add $I5037, tmp_21, 1
    set __lowered_lex_93, $I5037
    box $P5070, tmp_21
    set $P5067, $P5070
    goto while185_test349 
  while185_handlers352:
    .get_results ($P5068)
    pop_upto_eh $P5068
    getattribute $P5071, $P5068, 'type'
    eq $P5071, .CONTROL_LOOP_NEXT, while185_test349
    eq $P5071, .CONTROL_LOOP_REDO, while185_redo351
  while185_done353:
    pop_eh 
    unless __lowered_lex_91 goto if203_end385 
.annotate 'line', 325
    set tmp_22, __lowered_lex_94
    add $I5037, tmp_22, 1
    set __lowered_lex_94, $I5037
    die 0, .CONTROL_LOOP_NEXT
  if203_end385:
    push __lowered_lex_90, __lowered_lex_95
    set tmp_23, __lowered_lex_94
    add $I5037, tmp_23, 1
    set __lowered_lex_94, $I5037
    set $I5037, tmp_23
    goto while166_test314 
  while166_handlers317:
    .get_results ($P5072)
    pop_upto_eh $P5072
    getattribute $P5073, $P5072, 'type'
    eq $P5073, .CONTROL_LOOP_NEXT, while166_test314
    eq $P5073, .CONTROL_LOOP_REDO, while166_redo316
  while166_done318:
    pop_eh 
    elements $I5039, __lowered_lex_90
    iseq $I5038, $I5039, 1
    unless $I5038 goto if204_else386 
.annotate 'line', 336
    set fb_tmp_67, __lowered_lex_90
    repr_defined $I5041, fb_tmp_67
    unless $I5041 goto if206_else390 
    set $P5074, fb_tmp_67[0]
    set $P5076, $P5074
    goto if206_end391
  if206_else390:
    null $P5075
    set $P5076, $P5075
  if206_end391:
    unless_null $P5076, vivi_207392
    null $P5077
    set $P5076, $P5077
  vivi_207392:
    set fb_tmp_66, $P5076
    repr_defined $I5040, fb_tmp_66
    unless $I5040 goto if205_else388 
    set $P5078, fb_tmp_66["sub"]
    set $P5080, $P5078
    goto if205_end389
  if205_else388:
    null $P5079
    set $P5080, $P5079
  if205_end389:
    unless_null $P5080, vivi_208393
    null $P5081
    set $P5080, $P5081
  vivi_208393:
    set __lowered_lex_84, $P5080
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5082, __lowered_lex_85
    nqp_get_sc_object $P5083, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    nqp_decontainerize $P5085, __lowered_lex_85
    nqp_get_sc_object $P5086, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5087, $P5085, $P5086, "$!dispatch_cache", 3
    multi_cache_add $P5084, $P5087, __lowered_lex_86, __lowered_lex_84
    repr_bind_attr_obj $P5082, $P5083, "$!dispatch_cache", 3, $P5084
    nqp_enable_sc_write_barrier 
    set $P5095, __lowered_lex_84
    goto if204_end387
  if204_else386:
    elements $I5043, __lowered_lex_90
    iseq $I5042, $I5043, 0
    unless $I5042 goto if209_else394 
.annotate 'line', 343
.annotate 'line', 345
    nqp_decontainerize $P5088, __lowered_lex_85
    $P5089 = $P5088."name"()
    set $S5003, $P5089
    concat $S5002, "No applicable candidates found to dispatch to for '", $S5003
    concat $S5001, $S5002, "'."
    box $P5090, $S5001
    die $P5090
    set $P5094, $P5090
    goto if209_end395
  if209_else394:
.annotate 'line', 347
.annotate 'line', 349
    nqp_decontainerize $P5091, __lowered_lex_85
    $P5092 = $P5091."name"()
    set $S5006, $P5092
    concat $S5005, "Ambiguous dispatch to multi '", $S5006
    concat $S5004, $S5005, "'."
    box $P5093, $S5004
    die $P5093
    set $P5094, $P5093
  if209_end395:
    set $P5095, $P5094
  if204_end387:
    .return ($P5095) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_6_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 353
    .param pmc __lowered_lex_96 
    .local pmc __lowered_lex_97 
    .local pmc __lowered_lex_98 
    nqp_decontainerize $P5002, __lowered_lex_96
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!do", 0
    repr_clone $P5001, $P5004
    set __lowered_lex_97, $P5001
    nqp_decontainerize $P5006, __lowered_lex_96
    repr_clone $P5005, $P5006
    set __lowered_lex_98, $P5005
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    setattribute __lowered_lex_98, $P5007, "$!do", __lowered_lex_97
    set_sub_code_object __lowered_lex_97, __lowered_lex_98
    nqp_decontainerize $P5008, __lowered_lex_96
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!clone_callback", 5
    isnull $I5001, $P5010
    if $I5001 goto unless210_end397 
.annotate 'line', 363
.annotate 'line', 364
    nqp_decontainerize $P5014, __lowered_lex_96
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!do", 0
    nqp_decontainerize $P5011, __lowered_lex_96
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!clone_callback", 5
    $P5017 = $P5013($P5016, __lowered_lex_97, __lowered_lex_98)
  unless210_end397:
    .return (__lowered_lex_98) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_7_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 370
    .param pmc __lowered_lex_99 
    .param pmc __lowered_lex_100 
    nqp_decontainerize $P5001, __lowered_lex_99
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, __lowered_lex_100
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_8_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 374
    .param pmc __lowered_lex_101 
    nqp_decontainerize $P5001, __lowered_lex_101
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "signature" :subid("cuid_9_1431289881.03896") :anon :lex :outer("cuid_68_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 378
    .param pmc __lowered_lex_102 
    nqp_decontainerize $P5001, __lowered_lex_102
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!signature", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 383
    .const 'Sub' $P5003 = 'cuid_10_1431289881.03896' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_11_1431289881.03896' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_10_1431289881.03896' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_11_1431289881.03896' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "types" :subid("cuid_10_1431289881.03896") :anon :lex :outer("cuid_71_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 386
    .param pmc __lowered_lex_103 
    nqp_decontainerize $P5001, __lowered_lex_103
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!types", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "definednesses" :subid("cuid_11_1431289881.03896") :anon :lex :outer("cuid_71_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 387
    .param pmc __lowered_lex_104 
    nqp_decontainerize $P5001, __lowered_lex_104
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!definednesses", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 390
    .const 'Sub' $P5018 = 'cuid_12_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_13_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_14_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_15_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_16_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_17_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_18_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_19_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_20_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_21_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_22_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_23_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_24_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_25_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_26_1431289881.03896' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_27_1431289881.03896' 
    capture_lex $P5018 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$nfa_type", $P103 
    null $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_12_1431289881.03896' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_13_1431289881.03896' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_14_1431289881.03896' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_15_1431289881.03896' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_16_1431289881.03896' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_17_1431289881.03896' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_18_1431289881.03896' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_19_1431289881.03896' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_20_1431289881.03896' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_21_1431289881.03896' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_22_1431289881.03896' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_23_1431289881.03896' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_24_1431289881.03896' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_25_1431289881.03896' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_26_1431289881.03896' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_27_1431289881.03896' 
    capture_lex $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "SET_CAPS" :subid("cuid_12_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 398
    .param pmc __lowered_lex_106 
    .param pmc __lowered_lex_107 
    .local pmc __lowered_lex_108 
    .local pmc lowered_for_it__3 
    .local pmc __lowered_lex_105 
    new $P5001, 'Hash'
    set __lowered_lex_108, $P5001
    iter $P5002, __lowered_lex_107
    set lowered_for_it__3, $P5002
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while211_handlers401
    push_eh $P5010
  while211_test398:
    set $P5009, lowered_for_it__3
    unless lowered_for_it__3 goto while211_done402 
  while211_redo400:
    shift $P5003, lowered_for_it__3
    set __lowered_lex_105, $P5003
.annotate 'line', 400
.annotate 'line', 401
    $P5004 = __lowered_lex_105."key"()
    set $S5001, $P5004
    iseq $I5001, $S5001, ""
    box $P5008, $I5001
    set $P5007, $P5008
    if $I5001 goto unless212_end404 
    $P5005 = __lowered_lex_105."key"()
    set $S5002, $P5005
    $P5006 = __lowered_lex_105."value"()
    set __lowered_lex_108[$S5002], $P5006
    set $P5007, $P5006
  unless212_end404:
    set $P5009, $P5007
    goto while211_test398 
  while211_handlers401:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while211_test398
    eq $P5011, .CONTROL_LOOP_REDO, while211_redo400
  while211_done402:
    pop_eh 
    nqp_decontainerize $P5012, __lowered_lex_106
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_bind_attr_obj $P5012, $P5013, "$!caps", 1, __lowered_lex_108
    .return (__lowered_lex_108) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA" :subid("cuid_13_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 405
    .param pmc __lowered_lex_109 
    .param pmc __lowered_lex_110 
    nqp_decontainerize $P5001, __lowered_lex_109
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
.annotate 'line', 406
    nqp_decontainerize $P5003, __lowered_lex_109
    $P5004 = $P5003."!hllize_nfa"(__lowered_lex_110)
    repr_bind_attr_obj $P5001, $P5002, "$!nfa", 2, $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "SET_ALT_NFA" :subid("cuid_14_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 408
    .param pmc __lowered_lex_111 
    .param pmc __lowered_lex_112 
    .param pmc __lowered_lex_113 
    nqp_decontainerize $P5001, __lowered_lex_111
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    unless_null $P5003, vivi_213405
    nqp_decontainerize $P5004, __lowered_lex_111
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!alt_nfas", 3, $P5006
    set $P5003, $P5006
  vivi_213405:
    nqp_decontainerize $P5007, __lowered_lex_111
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!alt_nfas", 3
    set $S5001, __lowered_lex_112
.annotate 'line', 410
    nqp_decontainerize $P5010, __lowered_lex_111
    $P5011 = $P5010."!hllize_nfa"(__lowered_lex_113)
    set $P5009[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "SET_GENERIC_NFA" :subid("cuid_15_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 412
    .param pmc __lowered_lex_114 
    .param pmc __lowered_lex_115 
    nqp_decontainerize $P5001, __lowered_lex_114
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
.annotate 'line', 413
    nqp_decontainerize $P5003, __lowered_lex_114
    $P5004 = __lowered_lex_115."save"()
    $P5005 = $P5003."!hllize_nfa"($P5004)
    repr_bind_attr_obj $P5001, $P5002, "$!generic_nfa", 4, $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!hllize_nfa" :subid("cuid_16_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 415
    .param pmc __lowered_lex_119 
    .param pmc __lowered_lex_120 
    .const 'Sub' $P5003 = 'cuid_73_1431289881.03896' 
    capture_lex $P5003 
    .lex "&hll_list", $P101 
    .const 'Sub' $P5001 = 'cuid_73_1431289881.03896' 
    capture_lex $P5001
    set $P101, $P5001
.annotate 'line', 428
    $P5002 = "&hll_list"(__lowered_lex_120)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "hll_list" :subid("cuid_73_1431289881.03896") :anon :lex :outer("cuid_16_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 416
    .param pmc __lowered_lex_118 
    .local pmc __lowered_lex_117 
    .local pmc lowered_for_it__4 
    .local pmc __lowered_lex_116 
    nqp_islist $I5001, __lowered_lex_118
    unless $I5001 goto if214_else406 
.annotate 'line', 417
    new $P5001, 'QRPA'
    set __lowered_lex_117, $P5001
    iter $P5002, __lowered_lex_118
    set lowered_for_it__4, $P5002
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, while215_handlers411
    push_eh $P5006
  while215_test408:
    set $P5005, lowered_for_it__4
    unless lowered_for_it__4 goto while215_done412 
  while215_redo410:
.annotate 'line', 419
    shift $P5003, lowered_for_it__4
    set __lowered_lex_116, $P5003
.annotate 'line', 420
    $P5004 = "&hll_list"(__lowered_lex_116)
    push __lowered_lex_117, $P5004
    set $P5005, __lowered_lex_117
    goto while215_test408 
  while215_handlers411:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5007, $P5006, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while215_test408
    eq $P5007, .CONTROL_LOOP_REDO, while215_redo410
  while215_done412:
    pop_eh 
    set $P5008, __lowered_lex_117
    goto if214_end407
  if214_else406:
.annotate 'line', 424

    set $P5008, __lowered_lex_118
  if214_end407:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "ADD_NESTED_CODE" :subid("cuid_17_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 430
    .param pmc __lowered_lex_121 
    .param pmc __lowered_lex_122 
    nqp_decontainerize $P5001, __lowered_lex_121
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes", 5
    unless_null $P5003, vivi_216413
    nqp_decontainerize $P5004, __lowered_lex_121
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    new $P5006, 'QRPA'
    repr_bind_attr_obj $P5004, $P5005, "@!nested_codes", 5, $P5006
    set $P5003, $P5006
  vivi_216413:
    nqp_decontainerize $P5007, __lowered_lex_121
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!nested_codes", 5
    push $P5009, __lowered_lex_122
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "CAPS" :subid("cuid_18_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 434
    .param pmc __lowered_lex_123 
    nqp_decontainerize $P5001, __lowered_lex_123
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!caps", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "NFA" :subid("cuid_19_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 437
    .param pmc __lowered_lex_124 
    nqp_decontainerize $P5001, __lowered_lex_124
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFAS" :subid("cuid_20_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 440
    .param pmc __lowered_lex_125 
    nqp_decontainerize $P5001, __lowered_lex_125
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    isnull $I5001, $P5003
    unless $I5001 goto if217_else414 
    new $P5004, 'Hash'
    set $P5008, $P5004
    goto if217_end415
  if217_else414:
    nqp_decontainerize $P5005, __lowered_lex_125
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas", 3
    set $P5008, $P5007
  if217_end415:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFA" :subid("cuid_21_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 443
    .param pmc __lowered_lex_126 
    .param string __lowered_lex_127 
    .local pmc fb_tmp_68 
    nqp_decontainerize $P5001, __lowered_lex_126
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    isnull $I5001, $P5003
    unless $I5001 goto if218_else416 
    null $P5004
    set $P5012, $P5004
    goto if218_end417
  if218_else416:
    nqp_decontainerize $P5005, __lowered_lex_126
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas", 3
    set fb_tmp_68, $P5007
    repr_defined $I5002, fb_tmp_68
    unless $I5002 goto if219_else418 
    set $P5008, fb_tmp_68[__lowered_lex_127]
    set $P5010, $P5008
    goto if219_end419
  if219_else418:
    null $P5009
    set $P5010, $P5009
  if219_end419:
    unless_null $P5010, vivi_220420
    null $P5011
    set $P5010, $P5011
  vivi_220420:
    set $P5012, $P5010
  if218_end417:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "NESTED_CODES" :subid("cuid_22_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 446
    .param pmc __lowered_lex_128 
    nqp_decontainerize $P5001, __lowered_lex_128
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes", 5
    isnull $I5001, $P5003
    unless $I5001 goto if221_else421 
    new $P5004, 'QRPA'
    set $P5008, $P5004
    goto if221_end422
  if221_else421:
    nqp_decontainerize $P5005, __lowered_lex_128
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!nested_codes", 5
    set $P5008, $P5007
  if221_end422:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_23_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 449
    .param pmc __lowered_lex_129 
    .local pmc __lowered_lex_130 
    .local pmc __lowered_lex_131 
    nqp_decontainerize $P5002, __lowered_lex_129
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!do", 0
    repr_clone $P5001, $P5004
    set __lowered_lex_130, $P5001
    nqp_decontainerize $P5006, __lowered_lex_129
    repr_clone $P5005, $P5006
    set __lowered_lex_131, $P5005
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    setattribute __lowered_lex_131, $P5007, "$!do", __lowered_lex_130
    set_sub_code_object __lowered_lex_130, __lowered_lex_131
    nqp_decontainerize $P5008, __lowered_lex_129
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!clone_callback", 6
    isnull $I5001, $P5010
    if $I5001 goto unless222_end424 
.annotate 'line', 459
.annotate 'line', 460
    nqp_decontainerize $P5014, __lowered_lex_129
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!do", 0
    nqp_decontainerize $P5011, __lowered_lex_129
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!clone_callback", 6
    $P5017 = $P5013($P5016, __lowered_lex_130, __lowered_lex_131)
  unless222_end424:
    .return (__lowered_lex_131) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA_TYPE" :subid("cuid_24_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 466
    .param pmc __lowered_lex_132 
    .param pmc __lowered_lex_133 
    store_lex "$nfa_type", __lowered_lex_133
    .return (__lowered_lex_133) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_25_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 469
    .param pmc __lowered_lex_135 
    .param pmc __lowered_lex_136 
    .local pmc __lowered_lex_134 
    nqp_decontainerize $P5001, __lowered_lex_135
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic_nfa", 4
    isnull $I5001, $P5003
    unless $I5001 goto if223_else425 
.annotate 'line', 470
.annotate 'line', 471
    nqp_decontainerize $P5004, __lowered_lex_135
    $P5005 = $P5004."clone"()
    set $P5018, $P5005
    goto if223_end426
  if223_else425:
.annotate 'line', 473
.annotate 'line', 474
    nqp_decontainerize $P5006, __lowered_lex_135
    $P5007 = $P5006."clone"()
    set __lowered_lex_134, $P5007
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
.annotate 'line', 476
    find_lex $P5009, "$nfa_type"
    nqp_decontainerize $P5010, __lowered_lex_135
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!generic_nfa", 4
    $P5013 = $P5009."from_saved"($P5012)
    $P5014 = $P5013."instantiate_generic"(__lowered_lex_136)
    $P5015 = $P5014."save"()
    setattribute __lowered_lex_134, $P5008, "$!nfa", $P5015
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    null $P5017
    setattribute __lowered_lex_134, $P5016, "$!generic_nfa", $P5017
    set $P5018, __lowered_lex_134
  if223_end426:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_26_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 481
    .param pmc __lowered_lex_137 
    nqp_decontainerize $P5001, __lowered_lex_137
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_27_1431289881.03896") :anon :lex :outer("cuid_72_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 484
    .param pmc __lowered_lex_138 
    .param pmc __lowered_lex_139 
    nqp_decontainerize $P5001, __lowered_lex_138
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, __lowered_lex_139
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 492
    .const 'Sub' $P5016 = 'cuid_28_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_29_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_30_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_31_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_32_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_33_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_34_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_35_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_36_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_37_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_38_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_39_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_40_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_41_1431289881.03896' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_42_1431289881.03896' 
    capture_lex $P5016 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_28_1431289881.03896' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_29_1431289881.03896' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_30_1431289881.03896' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_31_1431289881.03896' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_32_1431289881.03896' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_33_1431289881.03896' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_34_1431289881.03896' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_35_1431289881.03896' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_36_1431289881.03896' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_37_1431289881.03896' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_38_1431289881.03896' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_39_1431289881.03896' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_40_1431289881.03896' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_41_1431289881.03896' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_42_1431289881.03896' 
    capture_lex $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_28_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 493
    .param pmc __lowered_lex_140 
    nqp_decontainerize $P5002, __lowered_lex_140
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_29_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 497
    .param pmc __lowered_lex_141 
    .param pmc __lowered_lex_143 :slurpy :named 
    .local pmc __lowered_lex_142 
    .local pmc __lowered_lex_144 
    set __lowered_lex_142, __lowered_lex_141
.annotate 'line', 498
    nqp_decontainerize $P5001, __lowered_lex_142
    $P5002 = $P5001."CREATE"()
    set __lowered_lex_144, $P5002
.annotate 'line', 499
    __lowered_lex_144."BUILDALL"(__lowered_lex_143 :flat :named)
    .return (__lowered_lex_144) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_30_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 503
    .param pmc __lowered_lex_150 
    .param pmc __lowered_lex_152 :slurpy :named 
    .local pmc __lowered_lex_151 
    .local pmc __lowered_lex_153 
    .local pmc __lowered_lex_154 
    .local pmc __lowered_lex_155 
    .local pmc __lowered_lex_148 
    .local int __lowered_lex_149 
    .local pmc __lowered_lex_145 
    .local pmc fb_tmp_69 
    .local pmc __lowered_lex_146 
    .local pmc fb_tmp_70 
    .local pmc __lowered_lex_147 
    .local pmc fb_tmp_71 
    set __lowered_lex_151, __lowered_lex_150
.annotate 'line', 505
    nqp_decontainerize $P5002, __lowered_lex_151
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, __lowered_lex_151
    $P5004 = $P5001."BUILDALLPLAN"($P5003)
    set __lowered_lex_153, $P5004
    elements $I5001, __lowered_lex_153
    box $P5005, $I5001
    set __lowered_lex_154, $P5005
    box $P5006, 0
    set __lowered_lex_155, $P5006
  while224_test427:
    set $N5001, __lowered_lex_155
    set $N5002, __lowered_lex_154
    islt $I5002, $N5001, $N5002
    box $P5071, $I5002
    set $P5070, $P5071
    unless $I5002 goto while224_done431 
  while224_redo429:
.annotate 'line', 508
    set $I5003, __lowered_lex_155
    set $P5007, __lowered_lex_153[$I5003]
    set __lowered_lex_148, $P5007
    set $P5008, __lowered_lex_148[0]
    set $I5004, $P5008
    set __lowered_lex_149, $I5004
    set $N5004, __lowered_lex_155
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    set __lowered_lex_155, $P5009
    iseq $I5005, __lowered_lex_149, 0
    unless $I5005 goto if225_else432 
.annotate 'line', 512
.annotate 'line', 514
    nqp_decontainerize $P5011, __lowered_lex_151
    set $P5010, __lowered_lex_148[1]
    $P5012 = $P5010($P5011, __lowered_lex_152 :flat :named)
    set $P5069, $P5012
    goto if225_end433
  if225_else432:
    iseq $I5006, __lowered_lex_149, 1
    unless $I5006 goto if226_else434 
.annotate 'line', 516
    set $P5013, __lowered_lex_148[2]
    set __lowered_lex_145, $P5013
    set $S5001, __lowered_lex_145
    exists $I5007, __lowered_lex_152[$S5001]
    box $P5022, $I5007
    set $P5021, $P5022
    unless $I5007 goto if227_end437 
.annotate 'line', 519
    nqp_decontainerize $P5014, __lowered_lex_151
    set $P5015, __lowered_lex_148[1]
    set $P5016, __lowered_lex_148[3]
    set $S5002, $P5016
    set fb_tmp_69, __lowered_lex_152
    repr_defined $I5008, fb_tmp_69
    unless $I5008 goto if228_else438 
    set $S5003, __lowered_lex_145
    set $P5017, fb_tmp_69[$S5003]
    set $P5019, $P5017
    goto if228_end439
  if228_else438:
    null $P5018
    set $P5019, $P5018
  if228_end439:
    unless_null $P5019, vivi_229440
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_229440:
    setattribute $P5014, $P5015, $S5002, $P5019
    set $P5021, $P5019
  if227_end437:
    set $P5068, $P5021
    goto if226_end435
  if226_else434:
    iseq $I5009, __lowered_lex_149, 2
    unless $I5009 goto if230_else441 
.annotate 'line', 523
    set $P5023, __lowered_lex_148[2]
    set __lowered_lex_146, $P5023
    set $S5004, __lowered_lex_146
    exists $I5010, __lowered_lex_152[$S5004]
    unless $I5010 goto if231_else443 
.annotate 'line', 527
    nqp_decontainerize $P5024, __lowered_lex_151
    set $P5025, __lowered_lex_148[1]
    set $P5026, __lowered_lex_148[3]
    set $S5005, $P5026
    set fb_tmp_70, __lowered_lex_152
    repr_defined $I5011, fb_tmp_70
    unless $I5011 goto if232_else445 
    set $S5006, __lowered_lex_146
    set $P5027, fb_tmp_70[$S5006]
    set $P5029, $P5027
    goto if232_end446
  if232_else445:
    null $P5028
    set $P5029, $P5028
  if232_end446:
    unless_null $P5029, vivi_233447
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5029, $P5030
  vivi_233447:
    setattribute $P5024, $P5025, $S5005, $P5029
    set $P5035, $P5029
    goto if231_end444
  if231_else443:
.annotate 'line', 530
    nqp_decontainerize $P5031, __lowered_lex_151
    set $P5032, __lowered_lex_148[1]
    set $P5033, __lowered_lex_148[3]
    set $S5007, $P5033
    new $P5034, 'QRPA'
    setattribute $P5031, $P5032, $S5007, $P5034
    set $P5035, $P5034
  if231_end444:
    set $P5067, $P5035
    goto if230_end442
  if230_else441:
    iseq $I5012, __lowered_lex_149, 3
    unless $I5012 goto if234_else448 
.annotate 'line', 534
    set $P5036, __lowered_lex_148[2]
    set __lowered_lex_147, $P5036
    set $S5008, __lowered_lex_147
    exists $I5013, __lowered_lex_152[$S5008]
    unless $I5013 goto if235_else450 
.annotate 'line', 538
    nqp_decontainerize $P5037, __lowered_lex_151
    set $P5038, __lowered_lex_148[1]
    set $P5039, __lowered_lex_148[3]
    set $S5009, $P5039
    set fb_tmp_71, __lowered_lex_152
    repr_defined $I5014, fb_tmp_71
    unless $I5014 goto if236_else452 
    set $S5010, __lowered_lex_147
    set $P5040, fb_tmp_71[$S5010]
    set $P5042, $P5040
    goto if236_end453
  if236_else452:
    null $P5041
    set $P5042, $P5041
  if236_end453:
    unless_null $P5042, vivi_237454
    nqp_get_sc_object $P5043, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5042, $P5043
  vivi_237454:
    setattribute $P5037, $P5038, $S5009, $P5042
    set $P5048, $P5042
    goto if235_end451
  if235_else450:
.annotate 'line', 541
    nqp_decontainerize $P5044, __lowered_lex_151
    set $P5045, __lowered_lex_148[1]
    set $P5046, __lowered_lex_148[3]
    set $S5011, $P5046
    new $P5047, 'Hash'
    setattribute $P5044, $P5045, $S5011, $P5047
    set $P5048, $P5047
  if235_end451:
    set $P5066, $P5048
    goto if234_end449
  if234_else448:
    iseq $I5015, __lowered_lex_149, 4
    unless $I5015 goto if238_else455 
.annotate 'line', 545
    nqp_decontainerize $P5049, __lowered_lex_151
    set $P5050, __lowered_lex_148[1]
    set $P5051, __lowered_lex_148[2]
    set $S5012, $P5051
    repr_is_attr_initialized $I5016, $P5049, $P5050, $S5012
    box $P5063, $I5016
    set $P5062, $P5063
    if $I5016 goto unless239_end458 
.annotate 'line', 546
    nqp_decontainerize $P5052, __lowered_lex_151
    set $P5053, __lowered_lex_148[1]
    set $P5054, __lowered_lex_148[2]
    set $S5013, $P5054
.annotate 'line', 548
    nqp_decontainerize $P5056, __lowered_lex_151
    nqp_decontainerize $P5058, __lowered_lex_151
    set $P5059, __lowered_lex_148[1]
    set $P5060, __lowered_lex_148[2]
    set $S5014, $P5060
    getattribute $P5057, $P5058, $P5059, $S5014
    set $P5055, __lowered_lex_148[3]
    $P5061 = $P5055($P5056, $P5057)
    setattribute $P5052, $P5053, $S5013, $P5061
    set $P5062, $P5061
  unless239_end458:
    set $P5065, $P5062
    goto if238_end456
  if238_else455:
.annotate 'line', 552
    box $P5064, "Invalid BUILDALLPLAN"
    die $P5064
    set $P5065, $P5064
  if238_end456:
    set $P5066, $P5065
  if234_end449:
    set $P5067, $P5066
  if230_end442:
    set $P5068, $P5067
  if226_end435:
    set $P5069, $P5068
  if225_end433:
    set $P5070, $P5069
    goto while224_test427 
  while224_done431:
    nqp_decontainerize $P5072, __lowered_lex_151
    .return ($P5072) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_31_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 559
    .param pmc __lowered_lex_156 
    .param pmc __lowered_lex_157 :slurpy :named 
.annotate 'line', 560
    nqp_decontainerize $P5001, __lowered_lex_156
    $P5002 = $P5001."bless"(__lowered_lex_157 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_32_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 563
    .param pmc __lowered_lex_158 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_240459
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_240459:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_33_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 564
    .param pmc __lowered_lex_159 
    .local pmc __lowered_lex_160 
    set __lowered_lex_160, __lowered_lex_159
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_34_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 567
    .param pmc __lowered_lex_161 
    .local pmc __lowered_lex_162 
    set __lowered_lex_162, __lowered_lex_161
.annotate 'line', 568
    nqp_decontainerize $P5002, __lowered_lex_162
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, __lowered_lex_162
    $P5004 = $P5001."name"($P5003)
    set $S5004, $P5004
    concat $S5003, $S5004, "<"
    nqp_decontainerize $P5005, __lowered_lex_162
    get_id $I5001, $P5005
    set $S5005, $I5001
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, ">"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_35_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 571
    .param pmc __lowered_lex_163 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_241460
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_241460:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_36_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 572
    .param pmc __lowered_lex_164 
    .local pmc __lowered_lex_165 
    set __lowered_lex_165, __lowered_lex_164
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_37_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 576
    .param pmc __lowered_lex_166 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_242461
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_242461:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_38_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 577
    .param pmc __lowered_lex_167 
    .local pmc __lowered_lex_168 
    set __lowered_lex_168, __lowered_lex_167
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_39_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 581
    .param pmc __lowered_lex_169 
    nqp_decontainerize $P5001, __lowered_lex_169
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_40_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 585
    .param pmc __lowered_lex_170 
    .param pmc __lowered_lex_171 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_243462
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_243462:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_41_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 586
    .param pmc __lowered_lex_172 
    .param pmc __lowered_lex_174 
    .local pmc __lowered_lex_173 
    set __lowered_lex_173, __lowered_lex_172
    nqp_decontainerize $P5002, __lowered_lex_173
    get_what $P5001, $P5002
    type_check $I5001, __lowered_lex_174, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_42_1431289881.03896") :anon :lex :outer("cuid_74_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 590
    .param pmc __lowered_lex_175 
    .param pmc __lowered_lex_176 
.annotate 'line', 591
    nqp_decontainerize $P5002, __lowered_lex_175
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, __lowered_lex_175
    $P5004 = $P5001."isa"($P5003, __lowered_lex_176)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_75_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 596
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1431289881.03896") :anon :lex :outer("cuid_48_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 599
    .const 'Sub' $P5006 = 'cuid_43_1431289881.03896' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_44_1431289881.03896' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_45_1431289881.03896' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_46_1431289881.03896' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_47_1431289881.03896' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_43_1431289881.03896' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_44_1431289881.03896' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_45_1431289881.03896' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_46_1431289881.03896' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_47_1431289881.03896' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_43_1431289881.03896") :anon :lex :outer("cuid_76_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 603
    .param pmc __lowered_lex_177 
    .local pmc __lowered_lex_178 
.annotate 'line', 604
    nqp_decontainerize $P5001, __lowered_lex_177
    $P5002 = $P5001."CREATE"()
    set __lowered_lex_178, $P5002
.annotate 'line', 605
    __lowered_lex_178."BUILD"()
    .return (__lowered_lex_178) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_44_1431289881.03896") :anon :lex :outer("cuid_76_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 609
    .param pmc __lowered_lex_179 
    nqp_decontainerize $P5001, __lowered_lex_179
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    new $P5003, 'QRPA'
    repr_bind_attr_obj $P5001, $P5002, "@!array", 0, $P5003
    nqp_decontainerize $P5004, __lowered_lex_179
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_45_1431289881.03896") :anon :lex :outer("cuid_76_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 614
    .param pmc __lowered_lex_180 
    nqp_decontainerize $P5001, __lowered_lex_180
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_46_1431289881.03896") :anon :lex :outer("cuid_76_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 616
    .param pmc __lowered_lex_181 
    nqp_decontainerize $P5001, __lowered_lex_181
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "capture_prune" :subid("cuid_47_1431289881.03896") :anon :lex :outer("cuid_76_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
.annotate 'line', 618
    .param pmc __lowered_lex_182 
    nqp_decontainerize $P5001, __lowered_lex_182
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5001, $P5002, "@!array", 0, $P5003
    nqp_decontainerize $P5004, __lowered_lex_182
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5004, $P5005, "%!hash", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_78_1431289881.03896") :load :init
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
    .const 'Sub' $P5077 = 'cuid_77_1431289881.03896' 
    capture_lex $P5077 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("nqpmo")
    nqp_create_sc $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("gen/parrot/stage2/NQPCORE.setting")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    assign $P5004, 86
    assign $P5004, 0
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "RoleToRoleApplier"
    push $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024"
    push $P5004, "gen/parrot/stage2/nqpmo.nqp"
    push $P5004, "NQPConcreteRoleHOW"
    push $P5004, "RoleToClassApplier"
    push $P5004, "NQPCurriedRoleHOW"
    push $P5004, "NQPParametricRoleHOW"
    push $P5004, "NQPClassHOW"
    push $P5004, "NQPNativeHOW"
    push $P5004, "NQPAttribute"
    push $P5004, "NQPModuleHOW"
    push $P5004, "Uninstantiable"
    push $P5004, "P6int"
    push $P5004, "P6num"
    push $P5004, "P6str"
    push $P5004, "add_dispatchee"
    push $P5004, "is_dispatcher"
    push $P5004, "derive_dispatcher"
    push $P5004, "sort_dispatchees"
    push $P5004, "dispatch"
    push $P5004, "clone"
    push $P5004, "!set_name"
    push $P5004, "name"
    push $P5004, "signature"
    push $P5004, "$!do"
    push $P5004, "$!signature"
    push $P5004, "$!dispatchees"
    push $P5004, "$!dispatch_cache"
    push $P5004, "$!dispatch_order"
    push $P5004, "$!clone_callback"
    push $P5004, "types"
    push $P5004, "definednesses"
    push $P5004, "$!types"
    push $P5004, "$!definednesses"
    push $P5004, "SET_CAPS"
    push $P5004, "SET_NFA"
    push $P5004, "SET_ALT_NFA"
    push $P5004, "SET_GENERIC_NFA"
    push $P5004, "!hllize_nfa"
    push $P5004, "ADD_NESTED_CODE"
    push $P5004, "CAPS"
    push $P5004, "NFA"
    push $P5004, "ALT_NFAS"
    push $P5004, "ALT_NFA"
    push $P5004, "NESTED_CODES"
    push $P5004, "SET_NFA_TYPE"
    push $P5004, "instantiate_generic"
    push $P5004, "$!caps"
    push $P5004, "$!nfa"
    push $P5004, "%!alt_nfas"
    push $P5004, "$!generic_nfa"
    push $P5004, "@!nested_codes"
    push $P5004, "CREATE"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "capture_prune"
    push $P5004, "@!array"
    push $P5004, "%!hash"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORTHOW"
    push $P5004, "int"
    push $P5004, "num"
    push $P5004, "str"
    push $P5004, "NQPRoutine"
    push $P5004, "NQPSignature"
    push $P5004, "NQPRegex"
    push $P5004, "NQPMu"
    push $P5004, "code"
    push $P5004, "get_string"
    push $P5004, "get_number"
    push $P5004, "get_integer"
    push $P5004, "NQPLabel"
    push $P5004, "NQPCapture"
    .const 'Sub' $P5005 = 'cuid_77_1431289881.03896' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BwAAAEAAAAACAAAAUAAAAAsAAADUAAAAkgwAAFIAAACyEQAAXh0AAAAAAABeHQAAAAAAAF4dAABeHQAAAAAAAAMAAAAEAAAARgAAAAAAAAABAAAAAAAAANQAAAANAAAAMAEAAHwBAAAOAAAAfAEAAMQBAAAPAAAA1AEAABwCAAAQAAAAJAIAAGwCAAABAAAAbAIAAEADAAABAAAAJAQAAJYEAAABAAAAIgUAAFgGAAABAAAAUgcAAD4IAAABAAAAmggAAJAJAAABAAAA+AkAACYLAAAAAAAAMQAAAAAAAAAAAAAACgAJAAAAAgAAAAIAAQAAAAIAAAAFAAAAAgABAAAAAwAAAAYAAAACAAEAAAAEAAAABwAAAAIAAQAAAAUAAAAIAAAAAgABAAAABgAAAAkAAAACAAEAAAAHAAAACgAAAAIAAQAAAAgAAAALAAAAAgABAAAACQAAAAwAAAACAAEAAAAKAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAADIAAAAAAAAAAQAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzAAAAAAAAAAIAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAADAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAA1AAAAAAAAAAQAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAAAAAAAAAUAAAAKAAAAAAAKAAkAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAXAAAACwAAAAAABgAAABgAAAALAAAAAAAHAAAAGQAAAAsAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAYAAAAaAAAABAAAAAAAAAAAABsAAAAEAAEAAAAAAAAAHAAAAAQAAgAAAAAAAAAdAAAABAADAAAAAAAAAB4AAAAEAAQAAAAAAAAAHwAAAAQABQAAAAAAAAD/////////////////////AAAAADcAAAAAAAAABgAAAAoAAAAAAAoAAgAAACAAAAACAAAAAAAHAAAAIQAAAAIAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgACAAAAIgAAAAQAAAAAAAAAAAAjAAAABAABAAAAAAAAAP////////////////////8AAAAAOAAAAAAAAAAJAAAACgAAAAAACgAQAAAAJAAAAAIAAAAAAAoAAAAlAAAAAgAAAAAACwAAACYAAAACAAAAAAAMAAAAJwAAAAIAAAAAAA0AAAAoAAAAAgAAAAAADgAAACkAAAACAAAAAAAPAAAAKgAAAAIAAAAAABAAAAArAAAAAgAAAAAAEQAAACwAAAACAAAAAAASAAAALQAAAAIAAAAAABMAAAAuAAAAAgAAAAAAFAAAABYAAAACAAAAAAAVAAAALwAAAAIAAAAAABYAAAAwAAAAAgAAAAAAFwAAABgAAAACAAAAAAAYAAAAFwAAAAIAAAAAABkAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAoABwAAABoAAAAEAAAAAAAAAAAAMQAAAAQAAQAAAAAAAAAyAAAABAACAAAAAAAAADMAAAAEAAMAAAAAAAAANAAAAAQABAAAAAAAAAA1AAAABAAFAAAAAAAAAB8AAAAEAAYAAAAAAAAA/////////////////////wAAAAA5AAAAAAAAABoAAAAKAAAAAAAKAAoAAAA2AAAAAgAAAAAAGwAAADcAAAACAAAAAAAcAAAAOAAAAAIAAAAAAB0AAAA5AAAAAgAAAAAAHgAAADoAAAACAAAAAAAfAAAAOwAAAAIAAAAAACIAAAA8AAAAAgAAAAAAJAAAAD0AAAACAAAAAAAmAAAAPgAAAAIAAAAAACcAAAA/AAAAAgAAAAAAKQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABoAAAADAP////////////////////8AAAAAOgAAAAAAAAAqAAAACgAAAAAACgAKAAAANgAAAAIAAAAAABsAAAA3AAAAAgAAAAAAHAAAADgAAAACAAAAAAAdAAAAOQAAAAIAAAAAAB4AAAA6AAAAAgAAAAAAHwAAADsAAAACAAAAAAAiAAAAPAAAAAIAAAAAACQAAAA9AAAAAgAAAAAAJgAAAD4AAAACAAAAAAAnAAAAPwAAAAIAAAAAACkAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAKgAAAAIAAAAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgAAAAAAGgAAAAMAAgAAAAAAKgAAAAMA/////////////////////wAAAAA7AAAAAAAAACsAAAAKAAAAAAAKAA4AAAA2AAAAAgAAAAAAGwAAADcAAAACAAAAAAAcAAAAOAAAAAIAAAAAAB0AAAA5AAAAAgAAAAAALAAAADoAAAACAAAAAAAfAAAAOwAAAAIAAAAAACIAAAA8AAAAAgAAAAAAJAAAAD0AAAACAAAAAAAmAAAAPgAAAAIAAAAAACcAAAA/AAAAAgAAAAAAKQAAAEAAAAACAAAAAAAtAAAAQQAAAAIAAAAAAC4AAABCAAAAAgAAAAAALwAAAEMAAAACAAAAAAAwAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAACsAAAACAAAAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAAAAAAaAAAAAwACAAAAAAArAAAACgACAAAARAAAAAQAAAAAAAAAAABFAAAABAABAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAQAAAAAAAAAFAAAAFAAAAAEAAAAAAAAABwAAACgAAAAAAAAAAAAAAAUAAAAoAAAAAQAAAAAAAAAFAAAAPAAAAAEAAAAAAAAABQAAAFAAAAABAAAAAAAAAAUAAABkAAAAAQAAAAAAAAAFAAAAeAAAAAEAAAAAAAAABQAAAIwAAAABAAAAAAAAAAUAAACgAAAAAQAAAAAAAAAFAAAAtAAAAAEAAAAAAAAABQAAAMgAAAABAAAAAAAAAAUAAADcAAAAAQAAAAAAAAAFAAAA8AAAAAEAAAAAAAAABQAAAAQBAAABAAAAAAAAAAUAAAAYAQAAAQAAAAAAAAAFAAAALAEAAAEAAAAAAAAABQAAAEABAAABAAAAAAAAAAUAAABUAQAAAQAAAAAAAAAIAAAAaAEAAAAAAAAAAAAABQAAAGgBAAABAAAAAAAAAAUAAAB8AQAAAQAAAAAAAAAFAAAAkAEAAAEAAAAAAAAABQAAAKQBAAABAAAAAAAAAAUAAAC4AQAAAQAAAAAAAAAFAAAA5AEAAAEAAAAAAAAABQAAAAACAAABAAAAAAAAAAUAAAAcAgAAAQAAAAAAAAAFAAAAPgIAAAEAAAAAAAAABQAAAFoCAAABAAAAAAAAAAUAAAB8AgAAAQAAAAAAAAAFAAAAmAIAAAEAAAAAAAAABQAAAKwCAAABAAAAAAAAAAUAAADOAgAAAQAAAAAAAAAFAAAA6gIAAAEAAAAAAAAACQAAAP4CAAAAAAAAAAAAAAoAAAD+AgAAAAAAAAAAAAAFAAAA/gIAAAEAAAAAAAAABQAAABIDAAABAAAAAAAAAAUAAAAmAwAAAQAAAAAAAAAFAAAAOgMAAAEAAAAAAAAABQAAAE4DAAABAAAAAgAAAAAAAABiAwAAAQAAAAEAAAAKAAAAcgMAAAEAAAABAAAACAAAAIIDAAABAAAAAQAAAAgAAACSAwAAAQAAAAEAAAAIAAAAogMAAAEAAAACAAAAAAAAALIDAAABAAAAAgAAAAAAAAB8BAAAAQAAAAIAAAAAAAAAvAQAAAEAAAABAAAABwAAAPIFAAABAAAAAQAAAAcAAABMCAAAAQAAAAEAAAAHAAAA/AgAAAEAAAAAAAAABgAAAGwKAAABAAAAAAAAAAYAAACMCgAAAQAAAAAAAAAGAAAArAoAAAEAAAAAAAAABgAAAMwKAAABAAAAAAAAAAYAAADsCgAAAQAAAAIAAAACAAAAGAsAAAEAAAACAAAAAgAAABwLAAABAAAAAgAAAAIAAAAgCwAAAQAAAAIAAAACAAAAJAsAAAEAAAACAAAAAgAAACgLAAABAAAAAgAAAAIAAAAsCwAAAQAAAAIAAAACAAAAMAsAAAEAAAACAAAAAgAAADQLAAABAAAAAgAAAAIAAAA4CwAAAQAAAAIAAAACAAAAPAsAAAEAAAACAAAAAgAAAEALAAABAAAAAgAAAAIAAABECwAAAQAAAAIAAAACAAAASAsAAAEAAAACAAAAAgAAAEwLAAABAAAAAgAAAAIAAABQCwAAAQAAAAEAAAAJAAAAVAsAAAEAAAABAAAACQAAAIALAAABAAAACwAAAAAACQAAAAEAAQABAAEAAwALAAAAAAAKAAAAAQABAAEAAQADAAsAAAAAAAsAAAABAAEAAQABAAMACwAAAAAADAAAAAEAAQABAAEAAwALAAAAAAANAAAAAQABAAEAAQADAAsAAAAAAA4AAAABAAEAAQABAAMACwAAAAAADwAAAAEAAQABAAEAAwALAAAAAAAQAAAAAQABAAEAAQADAAsAAAAAABEAAAABAAEAAQABAAMACwAAAAAAEgAAAAEAAQABAAEAAwALAAAAAAATAAAAAQABAAEAAQADAAsAAAAAABQAAAABAAEAAQABAAMACwAAAAAAFQAAAAEAAQABAAEAAwALAAAAAAAWAAAAAQABAAEAAQADAAsAAAAAABcAAAABAAEAAQABAAMACwAAAAAAGAAAAAEAAQABAAEAAwALAAAAAAAZAAAAAQABAAEAAQADAAsAAAAAABoAAAABAAEAAQABAAMACwAAAAAAGwAAAAEAAQABAAEAAwALAAAAAAAcAAAAAQABAAEAAQADAAsAAAAAAB0AAAABAAEAAQABAAMACwAAAAAAHgAAAAEAAQABAAEAAwALAAAAAAAfAAAAAQAHAAIAAAACAAAAAAAgAAAAAgAAAAAAIQAAAAMAAwADAAsAAAAAACAAAAACAAAAAAA8AAAAAQABAAEAAwALAAAAAAAhAAAAAgAAAAAAPQAAAAEAAQABAAMACwAAAAAAIgAAAAEABwABAAAAAgAAAAAAIwAAAAMAAwADAAsAAAAAACMAAAACAAAAAAA+AAAAAQABAAEAAwALAAAAAAAkAAAAAQAHAAEAAAACAAAAAAAlAAAAAwADAAMACwAAAAAAJQAAAAIAAAAAAD8AAAABAAEAAQADAAsAAAAAACYAAAABAAEAAQABAAMACwAAAAAAJwAAAAEABwABAAAAAgAAAAAAKAAAAAMAAwADAAsAAAAAACgAAAACAAAAAABAAAAAAQABAAEAAwALAAAAAAApAAAAAQABAAEAAQADAAsAAAAAACoAAAABAAEAAQABAAMACwAAAAAAKwAAAAEAAQABAAEAAwALAAAAAAAsAAAAAQABAAEAAQADAAsAAAAAAC0AAAABAAEAAQABAAMACwAAAAAALgAAAAEAAQABAAEAAwBHAAAABwAAAAAACgAAAAAABgBIAAAABAABAAAAAAAAAAYASQAAAAQAAQAAAAAAAAAGAEoAAAAEAAEAAAAAAAAABgBLAAAABAABAAAAAAAAAEwAAAAHAAYAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAACAAAAAABEAAAAAgAAAAAARQAAAAIAAAAAAEYAAAAKAAkAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAXAAAACwAAAAAABgAAABgAAAALAAAAAAAHAAAAGQAAAAsAAAAAAAgAAABNAAAABwACAAAAAgAAAAAARwAAAAIAAAAAAEgAAAAKAAIAAAAgAAAAAgAAAAAABwAAACEAAAACAAAAAAAIAAAATgAAAAcABwAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAACAAAAAABNAAAAAgAAAAAATgAAAAIAAAAAAE8AAAAKABAAAAAkAAAAAgAAAAAACgAAACUAAAACAAAAAAALAAAAJgAAAAIAAAAAAAwAAAAnAAAAAgAAAAAADQAAACgAAAACAAAAAAAOAAAAKQAAAAIAAAAAAA8AAAAqAAAAAgAAAAAAEAAAACsAAAACAAAAAAARAAAALAAAAAIAAAAAABIAAAAtAAAAAgAAAAAAEwAAAC4AAAACAAAAAAAUAAAAFgAAAAIAAAAAABUAAAAvAAAAAgAAAAAAFgAAADAAAAACAAAAAAAXAAAAGAAAAAIAAAAAABgAAAAXAAAAAgAAAAAAGQAAAAYATwAAAAcAAAAAAAoACgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAAHQAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAAB8AAAA7AAAAAgAAAAAAIgAAADwAAAACAAAAAAAkAAAAPQAAAAIAAAAAACYAAAA+AAAAAgAAAAAAJwAAAD8AAAACAAAAAAApAAAABwAKAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAiAAAAAgAAAAAAJAAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKQAAAAcABQAAAAoAAgAAABgAAAAGADoAAABQAAAAAgAAAAAAIAAAAAoAAgAAABgAAAAGADoAAABQAAAAAgAAAAAAIQAAAAoAAgAAABgAAAAGADsAAABQAAAAAgAAAAAAIwAAAAoAAgAAABgAAAAGADwAAABQAAAAAgAAAAAAJQAAAAoAAgAAABgAAAAGAD4AAABQAAAAAgAAAAAAKAAAAAcAAAAAAAcAAAAAAAIAAAAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoABAAAAFEAAAACAAAAAAAfAAAAUgAAAAIAAAAAACIAAABTAAAAAgAAAAAAJAAAAD0AAAACAAAAAAAmAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBUAAAABwAAAAAACgAAAAAABwAAAAAABwAAAAAABwABAAAAAgAAAAAAGgAAAAcAAAAAAAIAAAAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAKgAAAAIAAAAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAGAFUAAAAHAAIAAAACAAAAAABQAAAAAgAAAAAAUQAAAAoABQAAADkAAAACAAAAAAAsAAAAQAAAAAIAAAAAAC0AAABBAAAAAgAAAAAALgAAAEIAAAACAAAAAAAvAAAAQwAAAAIAAAAAADAAAAAHAAUAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAAC4AAAACAAAAAAAvAAAAAgAAAAAAMAAAAAcAAAAAAAcAAQAAAAIAAAAAABoAAAAHAAAAAAACAAAAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAACsAAAACAAAAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAAtAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAC0AAAABAAcAAQAAAAIAAAAAABoAAAAHAAEAAAAEAAIAAAAAAAAABwABAAAAAgAAAAAAGgAAAAcAAQAAAAQAAQAAAAAAAAAHAAEAAAACAAAAAAAaAAAABwABAAAABAACAAAAAAAAAAcAAQAAAAIAAAAAABoAAAAHAAEAAAAEAAIAAAAAAAAABwACAAAAAgAAAAAAGgAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAAaAAAAGwAAABwAAAAdAAAAHgAAAB8AAAAiAAAAIwAAABoAAAAxAAAAMgAAADMAAAA0AAAANQAAAB8AAAAGAEQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAQAAQAAAAAAAAABAAYARQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQAEAAEAAAAAAAAA", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if246_end468 
    die "Repossession conflicts occurred during deserialization"
  if246_end468:
    .const 'Sub' $P5001 = "cuid_10_1431289881.03896" 
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_11_1431289881.03896" 
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 8
    set_sub_code_object $P5003, $P5004
    .const 'Sub' $P5005 = "cuid_12_1431289881.03896" 
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 10
    set_sub_code_object $P5005, $P5006
    .const 'Sub' $P5007 = "cuid_13_1431289881.03896" 
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 11
    set_sub_code_object $P5007, $P5008
    .const 'Sub' $P5009 = "cuid_14_1431289881.03896" 
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 12
    set_sub_code_object $P5009, $P5010
    .const 'Sub' $P5011 = "cuid_15_1431289881.03896" 
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 13
    set_sub_code_object $P5011, $P5012
    .const 'Sub' $P5013 = "cuid_16_1431289881.03896" 
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 14
    set_sub_code_object $P5013, $P5014
    .const 'Sub' $P5015 = "cuid_17_1431289881.03896" 
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 15
    set_sub_code_object $P5015, $P5016
    .const 'Sub' $P5017 = "cuid_18_1431289881.03896" 
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 16
    set_sub_code_object $P5017, $P5018
    .const 'Sub' $P5019 = "cuid_19_1431289881.03896" 
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 17
    set_sub_code_object $P5019, $P5020
    .const 'Sub' $P5021 = "cuid_20_1431289881.03896" 
    nqp_get_sc_object $P5022, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 18
    set_sub_code_object $P5021, $P5022
    .const 'Sub' $P5023 = "cuid_21_1431289881.03896" 
    nqp_get_sc_object $P5024, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 19
    set_sub_code_object $P5023, $P5024
    .const 'Sub' $P5025 = "cuid_22_1431289881.03896" 
    nqp_get_sc_object $P5026, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 20
    set_sub_code_object $P5025, $P5026
    .const 'Sub' $P5027 = "cuid_23_1431289881.03896" 
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 21
    set_sub_code_object $P5027, $P5028
    .const 'Sub' $P5029 = "cuid_24_1431289881.03896" 
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 22
    set_sub_code_object $P5029, $P5030
    .const 'Sub' $P5031 = "cuid_25_1431289881.03896" 
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 23
    set_sub_code_object $P5031, $P5032
    .const 'Sub' $P5033 = "cuid_26_1431289881.03896" 
    nqp_get_sc_object $P5034, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 24
    set_sub_code_object $P5033, $P5034
    .const 'Sub' $P5035 = "cuid_27_1431289881.03896" 
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 25
    set_sub_code_object $P5035, $P5036
    .const 'Sub' $P5037 = "cuid_28_1431289881.03896" 
    nqp_get_sc_object $P5038, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 27
    set_sub_code_object $P5037, $P5038
    .const 'Sub' $P5039 = "cuid_29_1431289881.03896" 
    nqp_get_sc_object $P5040, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 28
    set_sub_code_object $P5039, $P5040
    .const 'Sub' $P5041 = "cuid_30_1431289881.03896" 
    nqp_get_sc_object $P5042, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 29
    set_sub_code_object $P5041, $P5042
    .const 'Sub' $P5043 = "cuid_31_1431289881.03896" 
    nqp_get_sc_object $P5044, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 30
    set_sub_code_object $P5043, $P5044
    .const 'Sub' $P5045 = "cuid_32_1431289881.03896" 
    nqp_get_sc_object $P5046, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 31
    set_sub_code_object $P5045, $P5046
    .const 'Sub' $P5047 = "cuid_33_1431289881.03896" 
    nqp_get_sc_object $P5048, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 32
    set_sub_code_object $P5047, $P5048
    .const 'Sub' $P5049 = "cuid_34_1431289881.03896" 
    nqp_get_sc_object $P5050, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 33
    set_sub_code_object $P5049, $P5050
    .const 'Sub' $P5051 = "cuid_35_1431289881.03896" 
    nqp_get_sc_object $P5052, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 34
    set_sub_code_object $P5051, $P5052
    .const 'Sub' $P5053 = "cuid_36_1431289881.03896" 
    nqp_get_sc_object $P5054, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 35
    set_sub_code_object $P5053, $P5054
    .const 'Sub' $P5055 = "cuid_37_1431289881.03896" 
    nqp_get_sc_object $P5056, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 36
    set_sub_code_object $P5055, $P5056
    .const 'Sub' $P5057 = "cuid_38_1431289881.03896" 
    nqp_get_sc_object $P5058, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 37
    set_sub_code_object $P5057, $P5058
    .const 'Sub' $P5059 = "cuid_39_1431289881.03896" 
    nqp_get_sc_object $P5060, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 38
    set_sub_code_object $P5059, $P5060
    .const 'Sub' $P5061 = "cuid_40_1431289881.03896" 
    nqp_get_sc_object $P5062, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 39
    set_sub_code_object $P5061, $P5062
    .const 'Sub' $P5063 = "cuid_41_1431289881.03896" 
    nqp_get_sc_object $P5064, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 40
    set_sub_code_object $P5063, $P5064
    .const 'Sub' $P5065 = "cuid_42_1431289881.03896" 
    nqp_get_sc_object $P5066, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 41
    set_sub_code_object $P5065, $P5066
    .const 'Sub' $P5067 = "cuid_43_1431289881.03896" 
    nqp_get_sc_object $P5068, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 44
    set_sub_code_object $P5067, $P5068
    .const 'Sub' $P5069 = "cuid_44_1431289881.03896" 
    nqp_get_sc_object $P5070, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 45
    set_sub_code_object $P5069, $P5070
    .const 'Sub' $P5071 = "cuid_45_1431289881.03896" 
    nqp_get_sc_object $P5072, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 46
    set_sub_code_object $P5071, $P5072
    .const 'Sub' $P5073 = "cuid_46_1431289881.03896" 
    nqp_get_sc_object $P5074, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 47
    set_sub_code_object $P5073, $P5074
    .const 'Sub' $P5075 = "cuid_47_1431289881.03896" 
    nqp_get_sc_object $P5076, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 48
    set_sub_code_object $P5075, $P5076
    .const "LexInfo" $P5077 = "cuid_48_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 12
    assign $P5078, 0
    push $P5078, "GLOBALish"
    push $P5078, "$?PACKAGE"
    push $P5078, "EXPORTHOW"
    push $P5078, "int"
    push $P5078, "num"
    push $P5078, "str"
    push $P5078, "NQPRoutine"
    push $P5078, "NQPSignature"
    push $P5078, "NQPRegex"
    push $P5078, "NQPMu"
    push $P5078, "NQPLabel"
    push $P5078, "NQPCapture"
    new $P5079, 'QRPA'
    assign $P5079, 12
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 0
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 0
    push $P5079, $P5081
    nqp_get_sc_object $P5082, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 1
    push $P5079, $P5082
    nqp_get_sc_object $P5083, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 2
    push $P5079, $P5083
    nqp_get_sc_object $P5084, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 3
    push $P5079, $P5084
    nqp_get_sc_object $P5085, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 4
    push $P5079, $P5085
    nqp_get_sc_object $P5086, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    push $P5079, $P5086
    nqp_get_sc_object $P5087, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 6
    push $P5079, $P5087
    nqp_get_sc_object $P5088, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    push $P5079, $P5088
    nqp_get_sc_object $P5089, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    push $P5079, $P5089
    nqp_get_sc_object $P5090, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 42
    push $P5079, $P5090
    nqp_get_sc_object $P5091, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    push $P5079, $P5091
    new $P5092, 'ResizableIntegerArray'
    assign $P5092, 12
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5092)
    .const "LexInfo" $P5077 = "cuid_64_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 1
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 1
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_65_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 2
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 2
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_66_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 3
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 3
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_67_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 4
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 4
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_68_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 5
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_71_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 6
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 6
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_72_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_74_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_75_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 42
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 42
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .const "LexInfo" $P5077 = "cuid_76_1431289881.03896"
    new $P5078, 'ResizableStringArray'
    assign $P5078, 2
    assign $P5078, 0
    push $P5078, "$?PACKAGE"
    push $P5078, "$?CLASS"
    new $P5079, 'QRPA'
    assign $P5079, 2
    assign $P5079, 0
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    push $P5079, $P5080
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    push $P5079, $P5081
    new $P5082, 'ResizableIntegerArray'
    assign $P5082, 2
    $P5083 = $P5077."setup_static_lexpad"($P5078, $P5079, $P5082)
    .return ($P5083) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_77_1431289881.03896") :anon :lex :outer("cuid_78_1431289881.03896")
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    assign $P5001, 47
    assign $P5001, 0
    .const 'Sub' $P5002 = "cuid_1_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1431289881.03896" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1431289881.03896" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1431289881.03896") :load
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_48_1431289881.03896" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_80_1431289881.03896") :main
.annotate 'file', "gen/parrot/stage2/NQPCORE.setting"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_48_1431289881.03896" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end