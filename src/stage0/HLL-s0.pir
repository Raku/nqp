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
.sub "" :subid("cuid_1_1346233437.626") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P532 = 'cuid_63_1346233437.626' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_97_1346233437.626' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_144_1346233437.626' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_150_1346233437.626' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_161_1346233437.626' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_182_1346233437.626' 
    capture_lex $P532 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$compiler", $P103 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P501
.annotate 'line', 1042
    set $S501, "Parrot/Exception.pbc"
    load_bytecode $S501
    find_dynamic_lex $P502, "$*CTXSAVE"
    set ctxsave, $P502
    isnull $I501, ctxsave
    box $P507, $I501
    set $P506, $P507
    if $I501 goto unless10_end11 
    can $I502, ctxsave, "ctxsave"
    box $P505, $I502
    set $P504, $P505
    unless $I502 goto if11_end13 
    $P503 = ctxsave."ctxsave"()
    set $P504, $P503
  if11_end13:
    set $P506, $P504
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P508 = 'cuid_63_1346233437.626' 
    capture_lex $P508
    $P509 = $P508()
    .const 'Sub' $P510 = 'cuid_97_1346233437.626' 
    capture_lex $P510
    $P511 = $P510()
    .const 'Sub' $P512 = 'cuid_144_1346233437.626' 
    capture_lex $P512
    $P513 = $P512()
.annotate 'line', 1761
    get_hll_global $P517, "GLOBAL"
    nqp_get_package_through_who $P516, $P517, "HLL"
    get_who $P515, $P516
    set $P514, $P515["Compiler"]
    unless_null $P514, fallback1136
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P518
  fallback1136:
    $P519 = $P514."new"()
    set $P103, $P519
.annotate 'line', 1762
    $P520 = $P103."language"("parrot")
    .const 'Sub' $P521 = 'cuid_150_1346233437.626' 
    capture_lex $P521
    $P522 = $P521()
    .const 'Sub' $P523 = 'cuid_161_1346233437.626' 
    capture_lex $P523
    $P524 = $P523()
    .const 'Sub' $P525 = 'cuid_182_1346233437.626' 
    capture_lex $P525
    $P526 = $P525()
    set $P531, _lex_param_0
    unless _lex_param_0 goto if393_end1307 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P527, "ModuleLoader"
    getinterp $P529
    set $P528, $P529["context"]
    $P530 = $P527."set_mainline_module"($P528)
    set $P531, $P530
  if393_end1307:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_63_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P569 = 'cuid_2_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_3_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_4_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_5_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_6_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_7_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_8_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_9_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_10_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_11_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_12_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_13_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_14_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_15_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_16_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_17_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_18_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_19_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_20_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_21_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_22_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_23_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_24_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_25_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_26_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_27_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_28_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_29_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_30_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_31_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_32_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_33_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_34_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_35_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_36_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_37_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_38_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_39_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_40_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_41_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_43_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_45_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_46_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_47_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_48_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_49_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_50_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_51_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_52_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_53_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_54_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_55_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_56_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_57_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_58_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_59_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_60_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_61_1346233437.626' 
    capture_lex $P569 
    .const 'Sub' $P569 = 'cuid_62_1346233437.626' 
    capture_lex $P569 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    box $P503, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P503
    get_who $P505, $P103
    set $P504, $P505["NQPCursor"]
    unless_null $P504, fallback14
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["NQPCursor"]
    unless_null $P506, vivi_1215
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  vivi_1215:
    set $P504, $P506
  fallback14:
    set $P102, $P504
    .const 'Sub' $P510 = 'cuid_2_1346233437.626' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_3_1346233437.626' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_4_1346233437.626' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_5_1346233437.626' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_6_1346233437.626' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_7_1346233437.626' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_8_1346233437.626' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_9_1346233437.626' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_10_1346233437.626' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_11_1346233437.626' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_12_1346233437.626' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_13_1346233437.626' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_14_1346233437.626' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_15_1346233437.626' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_16_1346233437.626' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_17_1346233437.626' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_18_1346233437.626' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_19_1346233437.626' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_20_1346233437.626' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_21_1346233437.626' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_22_1346233437.626' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_23_1346233437.626' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_24_1346233437.626' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_25_1346233437.626' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_26_1346233437.626' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_27_1346233437.626' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_28_1346233437.626' 
    capture_lex $P536
    .const 'Sub' $P537 = 'cuid_29_1346233437.626' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_30_1346233437.626' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_31_1346233437.626' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_32_1346233437.626' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_33_1346233437.626' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_34_1346233437.626' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_35_1346233437.626' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_36_1346233437.626' 
    capture_lex $P544
    .const 'Sub' $P545 = 'cuid_37_1346233437.626' 
    capture_lex $P545
    .const 'Sub' $P546 = 'cuid_38_1346233437.626' 
    capture_lex $P546
    .const 'Sub' $P547 = 'cuid_39_1346233437.626' 
    capture_lex $P547
    .const 'Sub' $P548 = 'cuid_40_1346233437.626' 
    capture_lex $P548
    .const 'Sub' $P549 = 'cuid_41_1346233437.626' 
    capture_lex $P549
    .const 'Sub' $P550 = 'cuid_43_1346233437.626' 
    capture_lex $P550
    .const 'Sub' $P551 = 'cuid_45_1346233437.626' 
    capture_lex $P551
    .const 'Sub' $P552 = 'cuid_46_1346233437.626' 
    capture_lex $P552
    .const 'Sub' $P553 = 'cuid_47_1346233437.626' 
    capture_lex $P553
    .const 'Sub' $P554 = 'cuid_48_1346233437.626' 
    capture_lex $P554
    .const 'Sub' $P555 = 'cuid_49_1346233437.626' 
    capture_lex $P555
    .const 'Sub' $P556 = 'cuid_50_1346233437.626' 
    capture_lex $P556
    .const 'Sub' $P557 = 'cuid_51_1346233437.626' 
    capture_lex $P557
    .const 'Sub' $P558 = 'cuid_52_1346233437.626' 
    capture_lex $P558
    .const 'Sub' $P559 = 'cuid_53_1346233437.626' 
    capture_lex $P559
    .const 'Sub' $P560 = 'cuid_54_1346233437.626' 
    capture_lex $P560
    .const 'Sub' $P561 = 'cuid_55_1346233437.626' 
    capture_lex $P561
    .const 'Sub' $P562 = 'cuid_56_1346233437.626' 
    capture_lex $P562
    .const 'Sub' $P563 = 'cuid_57_1346233437.626' 
    capture_lex $P563
    .const 'Sub' $P564 = 'cuid_58_1346233437.626' 
    capture_lex $P564
    .const 'Sub' $P565 = 'cuid_59_1346233437.626' 
    capture_lex $P565
    .const 'Sub' $P566 = 'cuid_60_1346233437.626' 
    capture_lex $P566
    .const 'Sub' $P567 = 'cuid_61_1346233437.626' 
    capture_lex $P567
    .const 'Sub' $P568 = 'cuid_62_1346233437.626' 
    capture_lex $P568
    .return ($P568) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_2_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 11
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx13_tgt
    .local int rx13_pos
    .local int rx13_off
    .local int rx13_eos
    .local int rx13_rep
    .local pmc rx13_cur
    .local pmc rx13_curclass
    .local pmc rx13_bstack
    .local pmc rx13_cstack
    (rx13_cur, rx13_tgt, rx13_pos, rx13_curclass, rx13_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx13_cur
    length rx13_eos, rx13_tgt
    eq $I19, 1, rx13_restart18
    gt rx13_pos, rx13_eos, rx13_fail19
    repr_get_attr_int $I11, self, rx13_curclass, "$!from"
    ne $I11, -1, rxscan14_done25
    goto rxscan14_scan24
  rxscan14_loop23:
    inc rx13_pos
    gt rx13_pos, rx13_eos, rx13_fail19
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!from", rx13_pos
  rxscan14_scan24:
    nqp_rxmark rx13_bstack, rxscan14_loop23, rx13_pos, 0
  rxscan14_done25:
    nqp_rxmark rx13_bstack, rxquantr15_done27, rx13_pos, 0
  rxquantr15_loop26:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    goto rxsubrule16_pass28
  rxsubrule16_back29:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
  rxsubrule16_pass28:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule16_back29
    push rx13_bstack, $I11
    push rx13_bstack, 0
    push rx13_bstack, rx13_pos
    elements $I11, rx13_cstack
    push rx13_bstack, $I11
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxpeek $I19, rx13_bstack, rxquantr15_done27
    inc $I19
    inc $I19
    set rx13_rep, rx13_bstack[$I19]
    nqp_rxcommit rx13_bstack, rxquantr15_done27
    inc rx13_rep
    nqp_rxmark rx13_bstack, rxquantr15_done27, rx13_pos, rx13_rep
    goto rxquantr15_loop26
  rxquantr15_done27:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."term"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    nqp_rxmark rx13_bstack, rxsubrule17_pass30, -1, 0
  rxsubrule17_pass30:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxmark rx13_bstack, rxquantr18_done32, rx13_pos, 0
  rxquantr18_loop31:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    goto rxsubrule19_pass33
  rxsubrule19_back34:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
  rxsubrule19_pass33:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule19_back34
    push rx13_bstack, $I11
    push rx13_bstack, 0
    push rx13_bstack, rx13_pos
    elements $I11, rx13_cstack
    push rx13_bstack, $I11
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxpeek $I19, rx13_bstack, rxquantr18_done32
    inc $I19
    inc $I19
    set rx13_rep, rx13_bstack[$I19]
    nqp_rxcommit rx13_bstack, rxquantr18_done32
    inc rx13_rep
    nqp_rxmark rx13_bstack, rxquantr18_done32, rx13_pos, rx13_rep
    goto rxquantr18_loop31
  rxquantr18_done32:
    rx13_cur."!cursor_pass"(rx13_pos, "termish", 'backtrack'=>1)
    .return (rx13_cur)
  rx13_restart18:
    repr_get_attr_obj rx13_cstack, rx13_cur, rx13_curclass, "$!cstack"
  rx13_fail19:
    unless rx13_bstack, rx13_done17
    pop $I19, rx13_bstack
    if_null rx13_cstack, rx13_cstack_done22
    unless rx13_cstack, rx13_cstack_done22
    dec $I19
    set $P11, rx13_cstack[$I19]
  rx13_cstack_done22:
    pop rx13_rep, rx13_bstack
    pop rx13_pos, rx13_bstack
    pop $I19, rx13_bstack
    lt rx13_pos, -1, rx13_done17
    lt rx13_pos, 0, rx13_fail19
    eq $I19, 0, rx13_fail19
    nqp_islist $I20, rx13_cstack
    unless $I20, rx13_jump20
    elements $I18, rx13_bstack
    le $I18, 0, rx13_cut21
    dec $I18
    set $I18, rx13_bstack[$I18]
  rx13_cut21:
    assign rx13_cstack, $I18
  rx13_jump20:
    jump $I19
  rx13_done17:
    rx13_cur."!cursor_fail"()
    .return (rx13_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_2_1346233437.626_caps" :subid("cuid_memo_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["prefixish"], $P502
    box $P503, 0
    set $P501["term"], $P503
    box $P504, 2
    set $P501["postfixish"], $P504
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_2_1346233437.626_nfa" :subid("cuid_memo_2_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "prefixish"
    push $P503, $P505
    box $P506, 1
    push $P503, $P506
    box $P507, 1
    push $P503, $P507
    box $P508, 0
    push $P503, $P508
    box $P509, 2
    push $P503, $P509
    push $P501, $P503
    new $P510, 'ResizablePMCArray'
    box $P511, 8
    push $P510, $P511
    box $P512, "term"
    push $P510, $P512
    box $P513, 3
    push $P510, $P513
    push $P501, $P510
    new $P514, 'ResizablePMCArray'
    box $P515, 8
    push $P514, $P515
    box $P516, "postfixish"
    push $P514, $P516
    box $P517, 3
    push $P514, $P517
    box $P518, 1
    push $P514, $P518
    box $P519, 0
    push $P514, $P519
    box $P520, 0
    push $P514, $P520
    push $P501, $P514
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_3_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 17
    .param pmc self 
    $P501 = self."!protoregex"("term")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 18
    .param pmc self 
    $P501 = self."!protoregex"("infix")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 19
    .param pmc self 
    $P501 = self."!protoregex"("prefix")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .param pmc self 
    $P501 = self."!protoregex"("postfix")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P501 = self."!protoregex"("circumfix")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P501 = self."!protoregex"("postcircumfix")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx20_restart37
    gt rx20_pos, rx20_eos, rx20_fail38
    repr_get_attr_int $I11, self, rx20_curclass, "$!from"
    ne $I11, -1, rxscan21_done44
    goto rxscan21_scan43
  rxscan21_loop42:
    inc rx20_pos
    gt rx20_pos, rx20_eos, rx20_fail38
    repr_bind_attr_int rx20_cur, rx20_curclass, "$!from", rx20_pos
  rxscan21_scan43:
    nqp_rxmark rx20_bstack, rxscan21_loop42, rx20_pos, 0
  rxscan21_done44:
    repr_bind_attr_int rx20_cur, rx20_curclass, "$!pos", rx20_pos
    $P11 = rx20_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx20_curclass, "$!pos"
    lt $I11, 0, rx20_fail38
    nqp_rxmark rx20_bstack, rxsubrule22_pass45, -1, 0
  rxsubrule22_pass45:
    rx20_cstack = rx20_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx20_pos, $P11, rx20_curclass, "$!pos"
    rx20_cur."!cursor_pass"(rx20_pos, "term:sym<circumfix>", 'backtrack'=>1)
    .return (rx20_cur)
  rx20_restart37:
    repr_get_attr_obj rx20_cstack, rx20_cur, rx20_curclass, "$!cstack"
  rx20_fail38:
    unless rx20_bstack, rx20_done36
    pop $I19, rx20_bstack
    if_null rx20_cstack, rx20_cstack_done41
    unless rx20_cstack, rx20_cstack_done41
    dec $I19
    set $P11, rx20_cstack[$I19]
  rx20_cstack_done41:
    pop rx20_rep, rx20_bstack
    pop rx20_pos, rx20_bstack
    pop $I19, rx20_bstack
    lt rx20_pos, -1, rx20_done36
    lt rx20_pos, 0, rx20_fail38
    eq $I19, 0, rx20_fail38
    nqp_islist $I20, rx20_cstack
    unless $I20, rx20_jump39
    elements $I18, rx20_bstack
    le $I18, 0, rx20_cut40
    dec $I18
    set $I18, rx20_bstack[$I18]
  rx20_cut40:
    assign rx20_cstack, $I18
  rx20_jump39:
    jump $I19
  rx20_done36:
    rx20_cur."!cursor_fail"()
    .return (rx20_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1346233437.626_caps" :subid("cuid_memo_3_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["circumfix"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1346233437.626_nfa" :subid("cuid_memo_4_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "circumfix"
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_10_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    .local pmc rx23_curclass
    .local pmc rx23_bstack
    .local pmc rx23_cstack
    (rx23_cur, rx23_tgt, rx23_pos, rx23_curclass, rx23_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx23_cur
    length rx23_eos, rx23_tgt
    eq $I19, 1, rx23_restart48
    gt rx23_pos, rx23_eos, rx23_fail49
    repr_get_attr_int $I11, self, rx23_curclass, "$!from"
    ne $I11, -1, rxscan24_done55
    goto rxscan24_scan54
  rxscan24_loop53:
    inc rx23_pos
    gt rx23_pos, rx23_eos, rx23_fail49
    repr_bind_attr_int rx23_cur, rx23_curclass, "$!from", rx23_pos
  rxscan24_scan54:
    nqp_rxmark rx23_bstack, rxscan24_loop53, rx23_pos, 0
  rxscan24_done55:
    repr_bind_attr_int rx23_cur, rx23_curclass, "$!pos", rx23_pos
    $P11 = rx23_cur."infix"()
    repr_get_attr_int $I11, $P11, rx23_curclass, "$!pos"
    lt $I11, 0, rx23_fail49
    nqp_rxmark rx23_bstack, rxsubrule25_pass56, -1, 0
  rxsubrule25_pass56:
    rx23_cstack = rx23_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx23_pos, $P11, rx23_curclass, "$!pos"
    rx23_cur."!cursor_pass"(rx23_pos, "infixish", 'backtrack'=>1)
    .return (rx23_cur)
  rx23_restart48:
    repr_get_attr_obj rx23_cstack, rx23_cur, rx23_curclass, "$!cstack"
  rx23_fail49:
    unless rx23_bstack, rx23_done47
    pop $I19, rx23_bstack
    if_null rx23_cstack, rx23_cstack_done52
    unless rx23_cstack, rx23_cstack_done52
    dec $I19
    set $P11, rx23_cstack[$I19]
  rx23_cstack_done52:
    pop rx23_rep, rx23_bstack
    pop rx23_pos, rx23_bstack
    pop $I19, rx23_bstack
    lt rx23_pos, -1, rx23_done47
    lt rx23_pos, 0, rx23_fail49
    eq $I19, 0, rx23_fail49
    nqp_islist $I20, rx23_cstack
    unless $I20, rx23_jump50
    elements $I18, rx23_bstack
    le $I18, 0, rx23_cut51
    dec $I18
    set $I18, rx23_bstack[$I18]
  rx23_cut51:
    assign rx23_cstack, $I18
  rx23_jump50:
    jump $I19
  rx23_done47:
    rx23_cur."!cursor_fail"()
    .return (rx23_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346233437.626_caps" :subid("cuid_memo_5_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["OPER"], $P502
    box $P503, 0
    set $P501["infix"], $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346233437.626_nfa" :subid("cuid_memo_6_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "infix"
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_11_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 27
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    .local pmc rx26_curclass
    .local pmc rx26_bstack
    .local pmc rx26_cstack
    (rx26_cur, rx26_tgt, rx26_pos, rx26_curclass, rx26_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    eq $I19, 1, rx26_restart59
    gt rx26_pos, rx26_eos, rx26_fail60
    repr_get_attr_int $I11, self, rx26_curclass, "$!from"
    ne $I11, -1, rxscan27_done66
    goto rxscan27_scan65
  rxscan27_loop64:
    inc rx26_pos
    gt rx26_pos, rx26_eos, rx26_fail60
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!from", rx26_pos
  rxscan27_scan65:
    nqp_rxmark rx26_bstack, rxscan27_loop64, rx26_pos, 0
  rxscan27_done66:
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail60
    nqp_rxmark rx26_bstack, rxsubrule28_pass67, -1, 0
  rxsubrule28_pass67:
    rx26_cstack = rx26_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail60
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    rx26_cur."!cursor_pass"(rx26_pos, "prefixish", 'backtrack'=>1)
    .return (rx26_cur)
  rx26_restart59:
    repr_get_attr_obj rx26_cstack, rx26_cur, rx26_curclass, "$!cstack"
  rx26_fail60:
    unless rx26_bstack, rx26_done58
    pop $I19, rx26_bstack
    if_null rx26_cstack, rx26_cstack_done63
    unless rx26_cstack, rx26_cstack_done63
    dec $I19
    set $P11, rx26_cstack[$I19]
  rx26_cstack_done63:
    pop rx26_rep, rx26_bstack
    pop rx26_pos, rx26_bstack
    pop $I19, rx26_bstack
    lt rx26_pos, -1, rx26_done58
    lt rx26_pos, 0, rx26_fail60
    eq $I19, 0, rx26_fail60
    nqp_islist $I20, rx26_cstack
    unless $I20, rx26_jump61
    elements $I18, rx26_bstack
    le $I18, 0, rx26_cut62
    dec $I18
    set $I18, rx26_bstack[$I18]
  rx26_cut62:
    assign rx26_cstack, $I18
  rx26_jump61:
    jump $I19
  rx26_done58:
    rx26_cur."!cursor_fail"()
    .return (rx26_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346233437.626_caps" :subid("cuid_memo_7_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["OPER"], $P502
    box $P503, 0
    set $P501["prefix"], $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346233437.626_nfa" :subid("cuid_memo_8_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "prefix"
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 0
    push $P507, $P510
    push $P501, $P507
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_12_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 28
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
    eq $I19, 1, rx30_restart71
    gt rx30_pos, rx30_eos, rx30_fail72
    repr_get_attr_int $I11, self, rx30_curclass, "$!from"
    ne $I11, -1, rxscan31_done78
    goto rxscan31_scan77
  rxscan31_loop76:
    inc rx30_pos
    gt rx30_pos, rx30_eos, rx30_fail72
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!from", rx30_pos
  rxscan31_scan77:
    nqp_rxmark rx30_bstack, rxscan31_loop76, rx30_pos, 0
  rxscan31_done78:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt32_080
    nqp_push_label $P11, alt32_182
    nqp_rxmark rx30_bstack, alt32_end79, -1, 0
    rx30_cur."!alt"(rx30_pos, "alt_nfa__1_1346233438.032", $P11)
    goto rx30_fail72
  alt32_080:
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail72
    nqp_rxmark rx30_bstack, rxsubrule33_pass81, -1, 0
  rxsubrule33_pass81:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end79
  alt32_182:
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail72
    nqp_rxmark rx30_bstack, rxsubrule34_pass83, -1, 0
  rxsubrule34_pass83:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end79
  alt32_end79:
    rx30_cur."!cursor_pass"(rx30_pos, "postfixish", 'backtrack'=>1)
    .return (rx30_cur)
  rx30_restart71:
    repr_get_attr_obj rx30_cstack, rx30_cur, rx30_curclass, "$!cstack"
  rx30_fail72:
    unless rx30_bstack, rx30_done70
    pop $I19, rx30_bstack
    if_null rx30_cstack, rx30_cstack_done75
    unless rx30_cstack, rx30_cstack_done75
    dec $I19
    set $P11, rx30_cstack[$I19]
  rx30_cstack_done75:
    pop rx30_rep, rx30_bstack
    pop rx30_pos, rx30_bstack
    pop $I19, rx30_bstack
    lt rx30_pos, -1, rx30_done70
    lt rx30_pos, 0, rx30_fail72
    eq $I19, 0, rx30_fail72
    nqp_islist $I20, rx30_cstack
    unless $I20, rx30_jump73
    elements $I18, rx30_bstack
    le $I18, 0, rx30_cut74
    dec $I18
    set $I18, rx30_bstack[$I18]
  rx30_cut74:
    assign rx30_cstack, $I18
  rx30_jump73:
    jump $I19
  rx30_done70:
    rx30_cur."!cursor_fail"()
    .return (rx30_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1346233437.626_caps" :subid("cuid_memo_9_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["OPER"], $P502
    box $P503, 0
    set $P501["postfix"], $P503
    box $P504, 0
    set $P501["postcircumfix"], $P504
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1346233437.626_nfa" :subid("cuid_memo_10_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "postfix"
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    box $P507, 8
    push $P503, $P507
    box $P508, "postcircumfix"
    push $P503, $P508
    box $P509, 0
    push $P503, $P509
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1346233437.626_alt_nfa__1_1346233438.032" :subid("cuid_memo_11_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 8
    push $P504, $P505
    box $P506, "postfix"
    push $P504, $P506
    box $P507, 0
    push $P504, $P507
    push $P502, $P504
    push $P501, $P502
    new $P508, 'ResizablePMCArray'
    new $P509, 'ResizablePMCArray'
    push $P508, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 8
    push $P510, $P511
    box $P512, "postcircumfix"
    push $P510, $P512
    box $P513, 0
    push $P510, $P513
    push $P508, $P510
    push $P501, $P508
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_13_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 33
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    .local pmc rx35_curclass
    .local pmc rx35_bstack
    .local pmc rx35_cstack
    (rx35_cur, rx35_tgt, rx35_pos, rx35_curclass, rx35_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx35_cur
    length rx35_eos, rx35_tgt
    eq $I19, 1, rx35_restart86
    gt rx35_pos, rx35_eos, rx35_fail87
    repr_get_attr_int $I11, self, rx35_curclass, "$!from"
    ne $I11, -1, rxscan36_done93
    goto rxscan36_scan92
  rxscan36_loop91:
    inc rx35_pos
    gt rx35_pos, rx35_eos, rx35_fail87
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!from", rx35_pos
  rxscan36_scan92:
    nqp_rxmark rx35_bstack, rxscan36_loop91, rx35_pos, 0
  rxscan36_done93:
    rx35_cur."!cursor_pass"(rx35_pos, "nullterm", 'backtrack'=>1)
    .return (rx35_cur)
  rx35_restart86:
    repr_get_attr_obj rx35_cstack, rx35_cur, rx35_curclass, "$!cstack"
  rx35_fail87:
    unless rx35_bstack, rx35_done85
    pop $I19, rx35_bstack
    if_null rx35_cstack, rx35_cstack_done90
    unless rx35_cstack, rx35_cstack_done90
    dec $I19
    set $P11, rx35_cstack[$I19]
  rx35_cstack_done90:
    pop rx35_rep, rx35_bstack
    pop rx35_pos, rx35_bstack
    pop $I19, rx35_bstack
    lt rx35_pos, -1, rx35_done85
    lt rx35_pos, 0, rx35_fail87
    eq $I19, 0, rx35_fail87
    nqp_islist $I20, rx35_cstack
    unless $I20, rx35_jump88
    elements $I18, rx35_bstack
    le $I18, 0, rx35_cut89
    dec $I18
    set $I18, rx35_bstack[$I18]
  rx35_cut89:
    assign rx35_cstack, $I18
  rx35_jump88:
    jump $I19
  rx35_done85:
    rx35_cur."!cursor_fail"()
    .return (rx35_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1346233437.626_caps" :subid("cuid_memo_12_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1346233437.626_nfa" :subid("cuid_memo_13_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_14_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    .local pmc rx38_curclass
    .local pmc rx38_bstack
    .local pmc rx38_cstack
    (rx38_cur, rx38_tgt, rx38_pos, rx38_curclass, rx38_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx38_cur
    length rx38_eos, rx38_tgt
    eq $I19, 1, rx38_restart97
    gt rx38_pos, rx38_eos, rx38_fail98
    repr_get_attr_int $I11, self, rx38_curclass, "$!from"
    ne $I11, -1, rxscan39_done104
    goto rxscan39_scan103
  rxscan39_loop102:
    inc rx38_pos
    gt rx38_pos, rx38_eos, rx38_fail98
    repr_bind_attr_int rx38_cur, rx38_curclass, "$!from", rx38_pos
  rxscan39_scan103:
    nqp_rxmark rx38_bstack, rxscan39_loop102, rx38_pos, 0
  rxscan39_done104:
    repr_bind_attr_int rx38_cur, rx38_curclass, "$!pos", rx38_pos
    $P11 = rx38_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx38_curclass, "$!pos"
    lt $I11, 0, rx38_fail98
    nqp_rxmark rx38_bstack, rxsubrule40_pass105, -1, 0
  rxsubrule40_pass105:
    rx38_cstack = rx38_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx38_pos, $P11, rx38_curclass, "$!pos"
    rx38_cur."!cursor_pass"(rx38_pos, "nullterm_alt", 'backtrack'=>1)
    .return (rx38_cur)
  rx38_restart97:
    repr_get_attr_obj rx38_cstack, rx38_cur, rx38_curclass, "$!cstack"
  rx38_fail98:
    unless rx38_bstack, rx38_done96
    pop $I19, rx38_bstack
    if_null rx38_cstack, rx38_cstack_done101
    unless rx38_cstack, rx38_cstack_done101
    dec $I19
    set $P11, rx38_cstack[$I19]
  rx38_cstack_done101:
    pop rx38_rep, rx38_bstack
    pop rx38_pos, rx38_bstack
    pop $I19, rx38_bstack
    lt rx38_pos, -1, rx38_done96
    lt rx38_pos, 0, rx38_fail98
    eq $I19, 0, rx38_fail98
    nqp_islist $I20, rx38_cstack
    unless $I20, rx38_jump99
    elements $I18, rx38_bstack
    le $I18, 0, rx38_cut100
    dec $I18
    set $I18, rx38_bstack[$I18]
  rx38_cut100:
    assign rx38_cstack, $I18
  rx38_jump99:
    jump $I19
  rx38_done96:
    rx38_cur."!cursor_fail"()
    .return (rx38_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1346233437.626_caps" :subid("cuid_memo_14_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["term"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1346233437.626_nfa" :subid("cuid_memo_15_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "nullterm"
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_15_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."termish"()
    set $P505, $P502
    if $P502 goto unless41_end107 
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."nullterm_alt"()
    set $P505, $P504
  unless41_end107:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_16_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 40
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx42_tgt
    .local int rx42_pos
    .local int rx42_off
    .local int rx42_eos
    .local int rx42_rep
    .local pmc rx42_cur
    .local pmc rx42_curclass
    .local pmc rx42_bstack
    .local pmc rx42_cstack
    (rx42_cur, rx42_tgt, rx42_pos, rx42_curclass, rx42_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx42_cur
    length rx42_eos, rx42_tgt
    eq $I19, 1, rx42_restart110
    gt rx42_pos, rx42_eos, rx42_fail111
    repr_get_attr_int $I11, self, rx42_curclass, "$!from"
    ne $I11, -1, rxscan43_done117
    goto rxscan43_scan116
  rxscan43_loop115:
    inc rx42_pos
    gt rx42_pos, rx42_eos, rx42_fail111
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!from", rx42_pos
  rxscan43_scan116:
    nqp_rxmark rx42_bstack, rxscan43_loop115, rx42_pos, 0
  rxscan43_done117:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."starter"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    nqp_rxmark rx42_bstack, rxsubrule44_pass118, -1, 0
  rxsubrule44_pass118:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    nqp_rxmark rx42_bstack, rxquantr45_done120, rx42_pos, 0
  rxquantr45_loop119:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    goto rxsubrule46_pass121
  rxsubrule46_back122:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
  rxsubrule46_pass121:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule46_back122
    push rx42_bstack, $I11
    push rx42_bstack, 0
    push rx42_bstack, rx42_pos
    elements $I11, rx42_cstack
    push rx42_bstack, $I11
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    nqp_rxpeek $I19, rx42_bstack, rxquantr45_done120
    inc $I19
    inc $I19
    set rx42_rep, rx42_bstack[$I19]
    nqp_rxcommit rx42_bstack, rxquantr45_done120
    inc rx42_rep
    nqp_rxmark rx42_bstack, rxquantr45_done120, rx42_pos, rx42_rep
    goto rxquantr45_loop119
  rxquantr45_done120:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    nqp_rxmark rx42_bstack, rxsubrule47_pass123, -1, 0
  rxsubrule47_pass123:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    rx42_cur."!cursor_pass"(rx42_pos, "quote_delimited", 'backtrack'=>1)
    .return (rx42_cur)
  rx42_restart110:
    repr_get_attr_obj rx42_cstack, rx42_cur, rx42_curclass, "$!cstack"
  rx42_fail111:
    unless rx42_bstack, rx42_done109
    pop $I19, rx42_bstack
    if_null rx42_cstack, rx42_cstack_done114
    unless rx42_cstack, rx42_cstack_done114
    dec $I19
    set $P11, rx42_cstack[$I19]
  rx42_cstack_done114:
    pop rx42_rep, rx42_bstack
    pop rx42_pos, rx42_bstack
    pop $I19, rx42_bstack
    lt rx42_pos, -1, rx42_done109
    lt rx42_pos, 0, rx42_fail111
    eq $I19, 0, rx42_fail111
    nqp_islist $I20, rx42_cstack
    unless $I20, rx42_jump112
    elements $I18, rx42_bstack
    le $I18, 0, rx42_cut113
    dec $I18
    set $I18, rx42_bstack[$I18]
  rx42_cut113:
    assign rx42_cstack, $I18
  rx42_jump112:
    jump $I19
  rx42_done109:
    rx42_cur."!cursor_fail"()
    .return (rx42_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1346233437.626_caps" :subid("cuid_memo_16_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["starter"], $P502
    box $P503, 2
    set $P501["quote_atom"], $P503
    box $P504, 0
    set $P501["stopper"], $P504
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1346233437.626_nfa" :subid("cuid_memo_17_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 8
    push $P503, $P504
    box $P505, "starter"
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "quote_atom"
    push $P507, $P509
    box $P510, 2
    push $P507, $P510
    box $P511, 1
    push $P507, $P511
    box $P512, 0
    push $P507, $P512
    box $P513, 3
    push $P507, $P513
    push $P501, $P507
    new $P514, 'ResizablePMCArray'
    box $P515, 8
    push $P514, $P515
    box $P516, "stopper"
    push $P514, $P516
    box $P517, 0
    push $P514, $P517
    push $P501, $P514
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_17_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_curclass
    .local pmc rx48_bstack
    .local pmc rx48_cstack
    (rx48_cur, rx48_tgt, rx48_pos, rx48_curclass, rx48_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx48_cur
    length rx48_eos, rx48_tgt
    eq $I19, 1, rx48_restart126
    gt rx48_pos, rx48_eos, rx48_fail127
    repr_get_attr_int $I11, self, rx48_curclass, "$!from"
    ne $I11, -1, rxscan49_done133
    goto rxscan49_scan132
  rxscan49_loop131:
    inc rx48_pos
    gt rx48_pos, rx48_eos, rx48_fail127
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!from", rx48_pos
  rxscan49_scan132:
    nqp_rxmark rx48_bstack, rxscan49_loop131, rx48_pos, 0
  rxscan49_done133:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt50_0135
    nqp_push_label $P11, alt50_1137
    nqp_rxmark rx48_bstack, alt50_end134, -1, 0
    rx48_cur."!alt"(rx48_pos, "alt_nfa__2_1346233438.098", $P11)
    goto rx48_fail127
  alt50_0135:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
    nqp_rxmark rx48_bstack, rxsubrule51_pass136, -1, 0
  rxsubrule51_pass136:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    goto alt50_end134
  alt50_1137:
    nqp_rxmark rx48_bstack, rxquantr52_done139, -1, 0
  rxquantr52_loop138:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    ge rx48_pos, rx48_eos, rx48_fail127
    add rx48_pos, 1
    nqp_rxpeek $I19, rx48_bstack, rxquantr52_done139
    inc $I19
    inc $I19
    set rx48_rep, rx48_bstack[$I19]
    nqp_rxcommit rx48_bstack, rxquantr52_done139
    inc rx48_rep
    nqp_rxmark rx48_bstack, rxquantr52_done139, rx48_pos, rx48_rep
    goto rxquantr52_loop138
  rxquantr52_done139:
    goto alt50_end134
  alt50_end134:
    nqp_rxcommit rx48_bstack, alt50_end134
    rx48_cur."!cursor_pass"(rx48_pos, "quote_atom", 'backtrack'=>1)
    .return (rx48_cur)
  rx48_restart126:
    repr_get_attr_obj rx48_cstack, rx48_cur, rx48_curclass, "$!cstack"
  rx48_fail127:
    unless rx48_bstack, rx48_done125
    pop $I19, rx48_bstack
    if_null rx48_cstack, rx48_cstack_done130
    unless rx48_cstack, rx48_cstack_done130
    dec $I19
    set $P11, rx48_cstack[$I19]
  rx48_cstack_done130:
    pop rx48_rep, rx48_bstack
    pop rx48_pos, rx48_bstack
    pop $I19, rx48_bstack
    lt rx48_pos, -1, rx48_done125
    lt rx48_pos, 0, rx48_fail127
    eq $I19, 0, rx48_fail127
    nqp_islist $I20, rx48_cstack
    unless $I20, rx48_jump128
    elements $I18, rx48_bstack
    le $I18, 0, rx48_cut129
    dec $I18
    set $I18, rx48_bstack[$I18]
  rx48_cut129:
    assign rx48_cstack, $I18
  rx48_jump128:
    jump $I19
  rx48_done125:
    rx48_cur."!cursor_fail"()
    .return (rx48_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1346233437.626_caps" :subid("cuid_memo_18_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["quote_escape"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1346233437.626_alt_nfa__2_1346233438.098" :subid("cuid_memo_19_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 8
    push $P504, $P505
    box $P506, "quote_escape"
    push $P504, $P506
    box $P507, 0
    push $P504, $P507
    push $P502, $P504
    push $P501, $P502
    new $P508, 'ResizablePMCArray'
    new $P509, 'ResizablePMCArray'
    push $P508, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 1
    push $P510, $P511
    box $P512, 0
    push $P510, $P512
    box $P513, 2
    push $P510, $P513
    push $P508, $P510
    new $P514, 'ResizablePMCArray'
    box $P515, 0
    push $P514, $P515
    box $P516, 0
    push $P514, $P516
    box $P517, 0
    push $P514, $P517
    push $P508, $P514
    new $P518, 'ResizablePMCArray'
    box $P519, 1
    push $P518, $P519
    box $P520, 0
    push $P518, $P520
    box $P521, 2
    push $P518, $P521
    box $P522, 1
    push $P518, $P522
    box $P523, 0
    push $P518, $P523
    box $P524, 0
    push $P518, $P524
    push $P508, $P518
    push $P501, $P508
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_18_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 52
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx53_tgt
    .local int rx53_pos
    .local int rx53_off
    .local int rx53_eos
    .local int rx53_rep
    .local pmc rx53_cur
    .local pmc rx53_curclass
    .local pmc rx53_bstack
    .local pmc rx53_cstack
    (rx53_cur, rx53_tgt, rx53_pos, rx53_curclass, rx53_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx53_cur
    length rx53_eos, rx53_tgt
    eq $I19, 1, rx53_restart142
    gt rx53_pos, rx53_eos, rx53_fail143
    repr_get_attr_int $I11, self, rx53_curclass, "$!from"
    ne $I11, -1, rxscan54_done149
    goto rxscan54_scan148
  rxscan54_loop147:
    inc rx53_pos
    gt rx53_pos, rx53_eos, rx53_fail143
    repr_bind_attr_int rx53_cur, rx53_curclass, "$!from", rx53_pos
  rxscan54_scan148:
    nqp_rxmark rx53_bstack, rxscan54_loop147, rx53_pos, 0
  rxscan54_done149:
    nqp_rxmark rx53_bstack, rxquantr55_done151, -1, 0
  rxquantr55_loop150:
    nqp_rxmark rx53_bstack, rxquantr56_done153, -1, 0
  rxquantr56_loop152:
    ge rx53_pos, rx53_eos, rx53_fail143
    is_cclass $I11, .CCLASS_NUMERIC, rx53_tgt, rx53_pos
    unless $I11, rx53_fail143
    add rx53_pos, 1
    nqp_rxpeek $I19, rx53_bstack, rxquantr56_done153
    inc $I19
    inc $I19
    set rx53_rep, rx53_bstack[$I19]
    nqp_rxcommit rx53_bstack, rxquantr56_done153
    inc rx53_rep
    nqp_rxmark rx53_bstack, rxquantr56_done153, rx53_pos, rx53_rep
    goto rxquantr56_loop152
  rxquantr56_done153:
    nqp_rxpeek $I19, rx53_bstack, rxquantr55_done151
    inc $I19
    inc $I19
    set rx53_rep, rx53_bstack[$I19]
    nqp_rxcommit rx53_bstack, rxquantr55_done151
    inc rx53_rep
    nqp_rxmark rx53_bstack, rxquantr55_done151, rx53_pos, rx53_rep
    add $I11, rx53_pos, 1
    gt $I11, rx53_eos, rx53_fail143
    substr $S10, rx53_tgt, rx53_pos, 1
    ne $S10, ucs4:"_", rx53_fail143
    add rx53_pos, 1
    goto rxquantr55_loop150
  rxquantr55_done151:
    rx53_cur."!cursor_pass"(rx53_pos, "decint", 'backtrack'=>1)
    .return (rx53_cur)
  rx53_restart142:
    repr_get_attr_obj rx53_cstack, rx53_cur, rx53_curclass, "$!cstack"
  rx53_fail143:
    unless rx53_bstack, rx53_done141
    pop $I19, rx53_bstack
    if_null rx53_cstack, rx53_cstack_done146
    unless rx53_cstack, rx53_cstack_done146
    dec $I19
    set $P11, rx53_cstack[$I19]
  rx53_cstack_done146:
    pop rx53_rep, rx53_bstack
    pop rx53_pos, rx53_bstack
    pop $I19, rx53_bstack
    lt rx53_pos, -1, rx53_done141
    lt rx53_pos, 0, rx53_fail143
    eq $I19, 0, rx53_fail143
    nqp_islist $I20, rx53_cstack
    unless $I20, rx53_jump144
    elements $I18, rx53_bstack
    le $I18, 0, rx53_cut145
    dec $I18
    set $I18, rx53_bstack[$I18]
  rx53_cut145:
    assign rx53_cstack, $I18
  rx53_jump144:
    jump $I19
  rx53_done141:
    rx53_cur."!cursor_fail"()
    .return (rx53_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1346233437.626_caps" :subid("cuid_memo_20_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1346233437.626_nfa" :subid("cuid_memo_21_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 1
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 95
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 4
    push $P518, $P519
    box $P520, 8
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 1
    push $P522, $P523
    box $P524, 0
    push $P522, $P524
    box $P525, 4
    push $P522, $P525
    box $P526, 1
    push $P522, $P526
    box $P527, 0
    push $P522, $P527
    box $P528, 3
    push $P522, $P528
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_19_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 53
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    .local pmc rx57_curclass
    .local pmc rx57_bstack
    .local pmc rx57_cstack
    (rx57_cur, rx57_tgt, rx57_pos, rx57_curclass, rx57_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx57_cur
    length rx57_eos, rx57_tgt
    eq $I19, 1, rx57_restart156
    gt rx57_pos, rx57_eos, rx57_fail157
    repr_get_attr_int $I11, self, rx57_curclass, "$!from"
    ne $I11, -1, rxscan58_done163
    goto rxscan58_scan162
  rxscan58_loop161:
    inc rx57_pos
    gt rx57_pos, rx57_eos, rx57_fail157
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!from", rx57_pos
  rxscan58_scan162:
    nqp_rxmark rx57_bstack, rxscan58_loop161, rx57_pos, 0
  rxscan58_done163:
    nqp_rxmark rx57_bstack, rxquantr59_done165, -1, 0
  rxquantr59_loop164:
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."ws"()
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail157
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."decint"()
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail157
    nqp_rxmark rx57_bstack, rxsubrule61_pass167, -1, 0
  rxsubrule61_pass167:
    rx57_cstack = rx57_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!pos", rx57_pos
    $P11 = rx57_cur."ws"()
    repr_get_attr_int $I11, $P11, rx57_curclass, "$!pos"
    lt $I11, 0, rx57_fail157
    repr_get_attr_int rx57_pos, $P11, rx57_curclass, "$!pos"
    nqp_rxpeek $I19, rx57_bstack, rxquantr59_done165
    inc $I19
    inc $I19
    set rx57_rep, rx57_bstack[$I19]
    nqp_rxcommit rx57_bstack, rxquantr59_done165
    inc rx57_rep
    nqp_rxmark rx57_bstack, rxquantr59_done165, rx57_pos, rx57_rep
    add $I11, rx57_pos, 1
    gt $I11, rx57_eos, rx57_fail157
    substr $S10, rx57_tgt, rx57_pos, 1
    ne $S10, ucs4:",", rx57_fail157
    add rx57_pos, 1
    goto rxquantr59_loop164
  rxquantr59_done165:
    rx57_cur."!cursor_pass"(rx57_pos, "decints", 'backtrack'=>1)
    .return (rx57_cur)
  rx57_restart156:
    repr_get_attr_obj rx57_cstack, rx57_cur, rx57_curclass, "$!cstack"
  rx57_fail157:
    unless rx57_bstack, rx57_done155
    pop $I19, rx57_bstack
    if_null rx57_cstack, rx57_cstack_done160
    unless rx57_cstack, rx57_cstack_done160
    dec $I19
    set $P11, rx57_cstack[$I19]
  rx57_cstack_done160:
    pop rx57_rep, rx57_bstack
    pop rx57_pos, rx57_bstack
    pop $I19, rx57_bstack
    lt rx57_pos, -1, rx57_done155
    lt rx57_pos, 0, rx57_fail157
    eq $I19, 0, rx57_fail157
    nqp_islist $I20, rx57_cstack
    unless $I20, rx57_jump158
    elements $I18, rx57_bstack
    le $I18, 0, rx57_cut159
    dec $I18
    set $I18, rx57_bstack[$I18]
  rx57_cut159:
    assign rx57_cstack, $I18
  rx57_jump158:
    jump $I19
  rx57_done155:
    rx57_cur."!cursor_fail"()
    .return (rx57_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_19_1346233437.626_caps" :subid("cuid_memo_22_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["decint"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_19_1346233437.626_nfa" :subid("cuid_memo_23_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 44
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "decint"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 8
    push $P522, $P523
    box $P524, "ws"
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_20_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 55
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    .local pmc rx63_curclass
    .local pmc rx63_bstack
    .local pmc rx63_cstack
    (rx63_cur, rx63_tgt, rx63_pos, rx63_curclass, rx63_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx63_cur
    length rx63_eos, rx63_tgt
    eq $I19, 1, rx63_restart171
    gt rx63_pos, rx63_eos, rx63_fail172
    repr_get_attr_int $I11, self, rx63_curclass, "$!from"
    ne $I11, -1, rxscan64_done178
    goto rxscan64_scan177
  rxscan64_loop176:
    inc rx63_pos
    gt rx63_pos, rx63_eos, rx63_fail172
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!from", rx63_pos
  rxscan64_scan177:
    nqp_rxmark rx63_bstack, rxscan64_loop176, rx63_pos, 0
  rxscan64_done178:
    nqp_rxmark rx63_bstack, rxquantr65_done180, -1, 0
  rxquantr65_loop179:
    nqp_rxmark rx63_bstack, rxquantr66_done182, -1, 0
  rxquantr66_loop181:
    ge rx63_pos, rx63_eos, rx63_fail172
    substr $S11, rx63_tgt, rx63_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx63_fail172
    inc rx63_pos
    nqp_rxpeek $I19, rx63_bstack, rxquantr66_done182
    inc $I19
    inc $I19
    set rx63_rep, rx63_bstack[$I19]
    nqp_rxcommit rx63_bstack, rxquantr66_done182
    inc rx63_rep
    nqp_rxmark rx63_bstack, rxquantr66_done182, rx63_pos, rx63_rep
    goto rxquantr66_loop181
  rxquantr66_done182:
    nqp_rxpeek $I19, rx63_bstack, rxquantr65_done180
    inc $I19
    inc $I19
    set rx63_rep, rx63_bstack[$I19]
    nqp_rxcommit rx63_bstack, rxquantr65_done180
    inc rx63_rep
    nqp_rxmark rx63_bstack, rxquantr65_done180, rx63_pos, rx63_rep
    add $I11, rx63_pos, 1
    gt $I11, rx63_eos, rx63_fail172
    substr $S10, rx63_tgt, rx63_pos, 1
    ne $S10, ucs4:"_", rx63_fail172
    add rx63_pos, 1
    goto rxquantr65_loop179
  rxquantr65_done180:
    rx63_cur."!cursor_pass"(rx63_pos, "hexint", 'backtrack'=>1)
    .return (rx63_cur)
  rx63_restart171:
    repr_get_attr_obj rx63_cstack, rx63_cur, rx63_curclass, "$!cstack"
  rx63_fail172:
    unless rx63_bstack, rx63_done170
    pop $I19, rx63_bstack
    if_null rx63_cstack, rx63_cstack_done175
    unless rx63_cstack, rx63_cstack_done175
    dec $I19
    set $P11, rx63_cstack[$I19]
  rx63_cstack_done175:
    pop rx63_rep, rx63_bstack
    pop rx63_pos, rx63_bstack
    pop $I19, rx63_bstack
    lt rx63_pos, -1, rx63_done170
    lt rx63_pos, 0, rx63_fail172
    eq $I19, 0, rx63_fail172
    nqp_islist $I20, rx63_cstack
    unless $I20, rx63_jump173
    elements $I18, rx63_bstack
    le $I18, 0, rx63_cut174
    dec $I18
    set $I18, rx63_bstack[$I18]
  rx63_cut174:
    assign rx63_cstack, $I18
  rx63_jump173:
    jump $I19
  rx63_done170:
    rx63_cur."!cursor_fail"()
    .return (rx63_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1346233437.626_caps" :subid("cuid_memo_24_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1346233437.626_nfa" :subid("cuid_memo_25_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 1
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 95
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 6
    push $P518, $P519
    box $P520, "0123456789abcdefABCDEF"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 1
    push $P522, $P523
    box $P524, 0
    push $P522, $P524
    box $P525, 4
    push $P522, $P525
    box $P526, 1
    push $P522, $P526
    box $P527, 0
    push $P522, $P527
    box $P528, 3
    push $P522, $P528
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_21_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    .local pmc rx67_curclass
    .local pmc rx67_bstack
    .local pmc rx67_cstack
    (rx67_cur, rx67_tgt, rx67_pos, rx67_curclass, rx67_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx67_cur
    length rx67_eos, rx67_tgt
    eq $I19, 1, rx67_restart185
    gt rx67_pos, rx67_eos, rx67_fail186
    repr_get_attr_int $I11, self, rx67_curclass, "$!from"
    ne $I11, -1, rxscan68_done192
    goto rxscan68_scan191
  rxscan68_loop190:
    inc rx67_pos
    gt rx67_pos, rx67_eos, rx67_fail186
    repr_bind_attr_int rx67_cur, rx67_curclass, "$!from", rx67_pos
  rxscan68_scan191:
    nqp_rxmark rx67_bstack, rxscan68_loop190, rx67_pos, 0
  rxscan68_done192:
    nqp_rxmark rx67_bstack, rxquantr69_done194, -1, 0
  rxquantr69_loop193:
    repr_bind_attr_int rx67_cur, rx67_curclass, "$!pos", rx67_pos
    $P11 = rx67_cur."ws"()
    repr_get_attr_int $I11, $P11, rx67_curclass, "$!pos"
    lt $I11, 0, rx67_fail186
    repr_get_attr_int rx67_pos, $P11, rx67_curclass, "$!pos"
    repr_bind_attr_int rx67_cur, rx67_curclass, "$!pos", rx67_pos
    $P11 = rx67_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx67_curclass, "$!pos"
    lt $I11, 0, rx67_fail186
    nqp_rxmark rx67_bstack, rxsubrule71_pass196, -1, 0
  rxsubrule71_pass196:
    rx67_cstack = rx67_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx67_pos, $P11, rx67_curclass, "$!pos"
    repr_bind_attr_int rx67_cur, rx67_curclass, "$!pos", rx67_pos
    $P11 = rx67_cur."ws"()
    repr_get_attr_int $I11, $P11, rx67_curclass, "$!pos"
    lt $I11, 0, rx67_fail186
    repr_get_attr_int rx67_pos, $P11, rx67_curclass, "$!pos"
    nqp_rxpeek $I19, rx67_bstack, rxquantr69_done194
    inc $I19
    inc $I19
    set rx67_rep, rx67_bstack[$I19]
    nqp_rxcommit rx67_bstack, rxquantr69_done194
    inc rx67_rep
    nqp_rxmark rx67_bstack, rxquantr69_done194, rx67_pos, rx67_rep
    add $I11, rx67_pos, 1
    gt $I11, rx67_eos, rx67_fail186
    substr $S10, rx67_tgt, rx67_pos, 1
    ne $S10, ucs4:",", rx67_fail186
    add rx67_pos, 1
    goto rxquantr69_loop193
  rxquantr69_done194:
    rx67_cur."!cursor_pass"(rx67_pos, "hexints", 'backtrack'=>1)
    .return (rx67_cur)
  rx67_restart185:
    repr_get_attr_obj rx67_cstack, rx67_cur, rx67_curclass, "$!cstack"
  rx67_fail186:
    unless rx67_bstack, rx67_done184
    pop $I19, rx67_bstack
    if_null rx67_cstack, rx67_cstack_done189
    unless rx67_cstack, rx67_cstack_done189
    dec $I19
    set $P11, rx67_cstack[$I19]
  rx67_cstack_done189:
    pop rx67_rep, rx67_bstack
    pop rx67_pos, rx67_bstack
    pop $I19, rx67_bstack
    lt rx67_pos, -1, rx67_done184
    lt rx67_pos, 0, rx67_fail186
    eq $I19, 0, rx67_fail186
    nqp_islist $I20, rx67_cstack
    unless $I20, rx67_jump187
    elements $I18, rx67_bstack
    le $I18, 0, rx67_cut188
    dec $I18
    set $I18, rx67_bstack[$I18]
  rx67_cut188:
    assign rx67_cstack, $I18
  rx67_jump187:
    jump $I19
  rx67_done184:
    rx67_cur."!cursor_fail"()
    .return (rx67_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1346233437.626_caps" :subid("cuid_memo_26_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["hexint"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1346233437.626_nfa" :subid("cuid_memo_27_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 44
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "hexint"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 8
    push $P522, $P523
    box $P524, "ws"
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_22_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx73_tgt
    .local int rx73_pos
    .local int rx73_off
    .local int rx73_eos
    .local int rx73_rep
    .local pmc rx73_cur
    .local pmc rx73_curclass
    .local pmc rx73_bstack
    .local pmc rx73_cstack
    (rx73_cur, rx73_tgt, rx73_pos, rx73_curclass, rx73_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx73_cur
    length rx73_eos, rx73_tgt
    eq $I19, 1, rx73_restart200
    gt rx73_pos, rx73_eos, rx73_fail201
    repr_get_attr_int $I11, self, rx73_curclass, "$!from"
    ne $I11, -1, rxscan74_done207
    goto rxscan74_scan206
  rxscan74_loop205:
    inc rx73_pos
    gt rx73_pos, rx73_eos, rx73_fail201
    repr_bind_attr_int rx73_cur, rx73_curclass, "$!from", rx73_pos
  rxscan74_scan206:
    nqp_rxmark rx73_bstack, rxscan74_loop205, rx73_pos, 0
  rxscan74_done207:
    nqp_rxmark rx73_bstack, rxquantr75_done209, -1, 0
  rxquantr75_loop208:
    nqp_rxmark rx73_bstack, rxquantr76_done211, -1, 0
  rxquantr76_loop210:
    ge rx73_pos, rx73_eos, rx73_fail201
    substr $S11, rx73_tgt, rx73_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx73_fail201
    inc rx73_pos
    nqp_rxpeek $I19, rx73_bstack, rxquantr76_done211
    inc $I19
    inc $I19
    set rx73_rep, rx73_bstack[$I19]
    nqp_rxcommit rx73_bstack, rxquantr76_done211
    inc rx73_rep
    nqp_rxmark rx73_bstack, rxquantr76_done211, rx73_pos, rx73_rep
    goto rxquantr76_loop210
  rxquantr76_done211:
    nqp_rxpeek $I19, rx73_bstack, rxquantr75_done209
    inc $I19
    inc $I19
    set rx73_rep, rx73_bstack[$I19]
    nqp_rxcommit rx73_bstack, rxquantr75_done209
    inc rx73_rep
    nqp_rxmark rx73_bstack, rxquantr75_done209, rx73_pos, rx73_rep
    add $I11, rx73_pos, 1
    gt $I11, rx73_eos, rx73_fail201
    substr $S10, rx73_tgt, rx73_pos, 1
    ne $S10, ucs4:"_", rx73_fail201
    add rx73_pos, 1
    goto rxquantr75_loop208
  rxquantr75_done209:
    rx73_cur."!cursor_pass"(rx73_pos, "octint", 'backtrack'=>1)
    .return (rx73_cur)
  rx73_restart200:
    repr_get_attr_obj rx73_cstack, rx73_cur, rx73_curclass, "$!cstack"
  rx73_fail201:
    unless rx73_bstack, rx73_done199
    pop $I19, rx73_bstack
    if_null rx73_cstack, rx73_cstack_done204
    unless rx73_cstack, rx73_cstack_done204
    dec $I19
    set $P11, rx73_cstack[$I19]
  rx73_cstack_done204:
    pop rx73_rep, rx73_bstack
    pop rx73_pos, rx73_bstack
    pop $I19, rx73_bstack
    lt rx73_pos, -1, rx73_done199
    lt rx73_pos, 0, rx73_fail201
    eq $I19, 0, rx73_fail201
    nqp_islist $I20, rx73_cstack
    unless $I20, rx73_jump202
    elements $I18, rx73_bstack
    le $I18, 0, rx73_cut203
    dec $I18
    set $I18, rx73_bstack[$I18]
  rx73_cut203:
    assign rx73_cstack, $I18
  rx73_jump202:
    jump $I19
  rx73_done199:
    rx73_cur."!cursor_fail"()
    .return (rx73_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_22_1346233437.626_caps" :subid("cuid_memo_28_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_22_1346233437.626_nfa" :subid("cuid_memo_29_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 1
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 95
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 6
    push $P518, $P519
    box $P520, "01234567"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 1
    push $P522, $P523
    box $P524, 0
    push $P522, $P524
    box $P525, 4
    push $P522, $P525
    box $P526, 1
    push $P522, $P526
    box $P527, 0
    push $P522, $P527
    box $P528, 3
    push $P522, $P528
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_23_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    .local pmc rx77_curclass
    .local pmc rx77_bstack
    .local pmc rx77_cstack
    (rx77_cur, rx77_tgt, rx77_pos, rx77_curclass, rx77_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    eq $I19, 1, rx77_restart214
    gt rx77_pos, rx77_eos, rx77_fail215
    repr_get_attr_int $I11, self, rx77_curclass, "$!from"
    ne $I11, -1, rxscan78_done221
    goto rxscan78_scan220
  rxscan78_loop219:
    inc rx77_pos
    gt rx77_pos, rx77_eos, rx77_fail215
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!from", rx77_pos
  rxscan78_scan220:
    nqp_rxmark rx77_bstack, rxscan78_loop219, rx77_pos, 0
  rxscan78_done221:
    nqp_rxmark rx77_bstack, rxquantr79_done223, -1, 0
  rxquantr79_loop222:
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!pos", rx77_pos
    $P11 = rx77_cur."ws"()
    repr_get_attr_int $I11, $P11, rx77_curclass, "$!pos"
    lt $I11, 0, rx77_fail215
    repr_get_attr_int rx77_pos, $P11, rx77_curclass, "$!pos"
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!pos", rx77_pos
    $P11 = rx77_cur."octint"()
    repr_get_attr_int $I11, $P11, rx77_curclass, "$!pos"
    lt $I11, 0, rx77_fail215
    nqp_rxmark rx77_bstack, rxsubrule81_pass225, -1, 0
  rxsubrule81_pass225:
    rx77_cstack = rx77_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx77_pos, $P11, rx77_curclass, "$!pos"
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!pos", rx77_pos
    $P11 = rx77_cur."ws"()
    repr_get_attr_int $I11, $P11, rx77_curclass, "$!pos"
    lt $I11, 0, rx77_fail215
    repr_get_attr_int rx77_pos, $P11, rx77_curclass, "$!pos"
    nqp_rxpeek $I19, rx77_bstack, rxquantr79_done223
    inc $I19
    inc $I19
    set rx77_rep, rx77_bstack[$I19]
    nqp_rxcommit rx77_bstack, rxquantr79_done223
    inc rx77_rep
    nqp_rxmark rx77_bstack, rxquantr79_done223, rx77_pos, rx77_rep
    add $I11, rx77_pos, 1
    gt $I11, rx77_eos, rx77_fail215
    substr $S10, rx77_tgt, rx77_pos, 1
    ne $S10, ucs4:",", rx77_fail215
    add rx77_pos, 1
    goto rxquantr79_loop222
  rxquantr79_done223:
    rx77_cur."!cursor_pass"(rx77_pos, "octints", 'backtrack'=>1)
    .return (rx77_cur)
  rx77_restart214:
    repr_get_attr_obj rx77_cstack, rx77_cur, rx77_curclass, "$!cstack"
  rx77_fail215:
    unless rx77_bstack, rx77_done213
    pop $I19, rx77_bstack
    if_null rx77_cstack, rx77_cstack_done218
    unless rx77_cstack, rx77_cstack_done218
    dec $I19
    set $P11, rx77_cstack[$I19]
  rx77_cstack_done218:
    pop rx77_rep, rx77_bstack
    pop rx77_pos, rx77_bstack
    pop $I19, rx77_bstack
    lt rx77_pos, -1, rx77_done213
    lt rx77_pos, 0, rx77_fail215
    eq $I19, 0, rx77_fail215
    nqp_islist $I20, rx77_cstack
    unless $I20, rx77_jump216
    elements $I18, rx77_bstack
    le $I18, 0, rx77_cut217
    dec $I18
    set $I18, rx77_bstack[$I18]
  rx77_cut217:
    assign rx77_cstack, $I18
  rx77_jump216:
    jump $I19
  rx77_done213:
    rx77_cur."!cursor_fail"()
    .return (rx77_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_23_1346233437.626_caps" :subid("cuid_memo_30_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["octint"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_23_1346233437.626_nfa" :subid("cuid_memo_31_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 44
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "octint"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 8
    push $P522, $P523
    box $P524, "ws"
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_24_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 61
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
    eq $I19, 1, rx83_restart229
    gt rx83_pos, rx83_eos, rx83_fail230
    repr_get_attr_int $I11, self, rx83_curclass, "$!from"
    ne $I11, -1, rxscan84_done236
    goto rxscan84_scan235
  rxscan84_loop234:
    inc rx83_pos
    gt rx83_pos, rx83_eos, rx83_fail230
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!from", rx83_pos
  rxscan84_scan235:
    nqp_rxmark rx83_bstack, rxscan84_loop234, rx83_pos, 0
  rxscan84_done236:
    nqp_rxmark rx83_bstack, rxquantr85_done238, -1, 0
  rxquantr85_loop237:
    nqp_rxmark rx83_bstack, rxquantr86_done240, -1, 0
  rxquantr86_loop239:
    ge rx83_pos, rx83_eos, rx83_fail230
    substr $S11, rx83_tgt, rx83_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx83_fail230
    inc rx83_pos
    nqp_rxpeek $I19, rx83_bstack, rxquantr86_done240
    inc $I19
    inc $I19
    set rx83_rep, rx83_bstack[$I19]
    nqp_rxcommit rx83_bstack, rxquantr86_done240
    inc rx83_rep
    nqp_rxmark rx83_bstack, rxquantr86_done240, rx83_pos, rx83_rep
    goto rxquantr86_loop239
  rxquantr86_done240:
    nqp_rxpeek $I19, rx83_bstack, rxquantr85_done238
    inc $I19
    inc $I19
    set rx83_rep, rx83_bstack[$I19]
    nqp_rxcommit rx83_bstack, rxquantr85_done238
    inc rx83_rep
    nqp_rxmark rx83_bstack, rxquantr85_done238, rx83_pos, rx83_rep
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail230
    substr $S10, rx83_tgt, rx83_pos, 1
    ne $S10, ucs4:"_", rx83_fail230
    add rx83_pos, 1
    goto rxquantr85_loop237
  rxquantr85_done238:
    rx83_cur."!cursor_pass"(rx83_pos, "binint", 'backtrack'=>1)
    .return (rx83_cur)
  rx83_restart229:
    repr_get_attr_obj rx83_cstack, rx83_cur, rx83_curclass, "$!cstack"
  rx83_fail230:
    unless rx83_bstack, rx83_done228
    pop $I19, rx83_bstack
    if_null rx83_cstack, rx83_cstack_done233
    unless rx83_cstack, rx83_cstack_done233
    dec $I19
    set $P11, rx83_cstack[$I19]
  rx83_cstack_done233:
    pop rx83_rep, rx83_bstack
    pop rx83_pos, rx83_bstack
    pop $I19, rx83_bstack
    lt rx83_pos, -1, rx83_done228
    lt rx83_pos, 0, rx83_fail230
    eq $I19, 0, rx83_fail230
    nqp_islist $I20, rx83_cstack
    unless $I20, rx83_jump231
    elements $I18, rx83_bstack
    le $I18, 0, rx83_cut232
    dec $I18
    set $I18, rx83_bstack[$I18]
  rx83_cut232:
    assign rx83_cstack, $I18
  rx83_jump231:
    jump $I19
  rx83_done228:
    rx83_cur."!cursor_fail"()
    .return (rx83_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_24_1346233437.626_caps" :subid("cuid_memo_32_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_24_1346233437.626_nfa" :subid("cuid_memo_33_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 1
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 95
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 6
    push $P518, $P519
    box $P520, "01"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 1
    push $P522, $P523
    box $P524, 0
    push $P522, $P524
    box $P525, 4
    push $P522, $P525
    box $P526, 1
    push $P522, $P526
    box $P527, 0
    push $P522, $P527
    box $P528, 3
    push $P522, $P528
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_25_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_curclass
    .local pmc rx87_bstack
    .local pmc rx87_cstack
    (rx87_cur, rx87_tgt, rx87_pos, rx87_curclass, rx87_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx87_cur
    length rx87_eos, rx87_tgt
    eq $I19, 1, rx87_restart243
    gt rx87_pos, rx87_eos, rx87_fail244
    repr_get_attr_int $I11, self, rx87_curclass, "$!from"
    ne $I11, -1, rxscan88_done250
    goto rxscan88_scan249
  rxscan88_loop248:
    inc rx87_pos
    gt rx87_pos, rx87_eos, rx87_fail244
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!from", rx87_pos
  rxscan88_scan249:
    nqp_rxmark rx87_bstack, rxscan88_loop248, rx87_pos, 0
  rxscan88_done250:
    nqp_rxmark rx87_bstack, rxquantr89_done252, -1, 0
  rxquantr89_loop251:
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!pos", rx87_pos
    $P11 = rx87_cur."ws"()
    repr_get_attr_int $I11, $P11, rx87_curclass, "$!pos"
    lt $I11, 0, rx87_fail244
    repr_get_attr_int rx87_pos, $P11, rx87_curclass, "$!pos"
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!pos", rx87_pos
    $P11 = rx87_cur."binint"()
    repr_get_attr_int $I11, $P11, rx87_curclass, "$!pos"
    lt $I11, 0, rx87_fail244
    nqp_rxmark rx87_bstack, rxsubrule91_pass254, -1, 0
  rxsubrule91_pass254:
    rx87_cstack = rx87_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx87_pos, $P11, rx87_curclass, "$!pos"
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!pos", rx87_pos
    $P11 = rx87_cur."ws"()
    repr_get_attr_int $I11, $P11, rx87_curclass, "$!pos"
    lt $I11, 0, rx87_fail244
    repr_get_attr_int rx87_pos, $P11, rx87_curclass, "$!pos"
    nqp_rxpeek $I19, rx87_bstack, rxquantr89_done252
    inc $I19
    inc $I19
    set rx87_rep, rx87_bstack[$I19]
    nqp_rxcommit rx87_bstack, rxquantr89_done252
    inc rx87_rep
    nqp_rxmark rx87_bstack, rxquantr89_done252, rx87_pos, rx87_rep
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail244
    substr $S10, rx87_tgt, rx87_pos, 1
    ne $S10, ucs4:",", rx87_fail244
    add rx87_pos, 1
    goto rxquantr89_loop251
  rxquantr89_done252:
    rx87_cur."!cursor_pass"(rx87_pos, "binints", 'backtrack'=>1)
    .return (rx87_cur)
  rx87_restart243:
    repr_get_attr_obj rx87_cstack, rx87_cur, rx87_curclass, "$!cstack"
  rx87_fail244:
    unless rx87_bstack, rx87_done242
    pop $I19, rx87_bstack
    if_null rx87_cstack, rx87_cstack_done247
    unless rx87_cstack, rx87_cstack_done247
    dec $I19
    set $P11, rx87_cstack[$I19]
  rx87_cstack_done247:
    pop rx87_rep, rx87_bstack
    pop rx87_pos, rx87_bstack
    pop $I19, rx87_bstack
    lt rx87_pos, -1, rx87_done242
    lt rx87_pos, 0, rx87_fail244
    eq $I19, 0, rx87_fail244
    nqp_islist $I20, rx87_cstack
    unless $I20, rx87_jump245
    elements $I18, rx87_bstack
    le $I18, 0, rx87_cut246
    dec $I18
    set $I18, rx87_bstack[$I18]
  rx87_cut246:
    assign rx87_cstack, $I18
  rx87_jump245:
    jump $I19
  rx87_done242:
    rx87_cur."!cursor_fail"()
    .return (rx87_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_25_1346233437.626_caps" :subid("cuid_memo_34_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["binint"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_25_1346233437.626_nfa" :subid("cuid_memo_35_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 44
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "binint"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 8
    push $P522, $P523
    box $P524, "ws"
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_26_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_curclass
    .local pmc rx93_bstack
    .local pmc rx93_cstack
    (rx93_cur, rx93_tgt, rx93_pos, rx93_curclass, rx93_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx93_cur
    length rx93_eos, rx93_tgt
    eq $I19, 1, rx93_restart258
    gt rx93_pos, rx93_eos, rx93_fail259
    repr_get_attr_int $I11, self, rx93_curclass, "$!from"
    ne $I11, -1, rxscan94_done265
    goto rxscan94_scan264
  rxscan94_loop263:
    inc rx93_pos
    gt rx93_pos, rx93_eos, rx93_fail259
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!from", rx93_pos
  rxscan94_scan264:
    nqp_rxmark rx93_bstack, rxscan94_loop263, rx93_pos, 0
  rxscan94_done265:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt95_0267
    nqp_push_label $P11, alt95_1277
    nqp_rxmark rx93_bstack, alt95_end266, -1, 0
    rx93_cur."!alt"(rx93_pos, "alt_nfa__3_1346233438.309", $P11)
    goto rx93_fail259
  alt95_0267:
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail259
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:"0", rx93_fail259
    add rx93_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt96_0269
    nqp_push_label $P11, alt96_1271
    nqp_push_label $P11, alt96_2273
    nqp_push_label $P11, alt96_3275
    nqp_rxmark rx93_bstack, alt96_end268, -1, 0
    rx93_cur."!alt"(rx93_pos, "alt_nfa__4_1346233438.309", $P11)
    goto rx93_fail259
  alt96_0269:
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail259
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:"b", rx93_fail259
    add rx93_pos, 1
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."binint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail259
    nqp_rxmark rx93_bstack, rxsubrule97_pass270, -1, 0
  rxsubrule97_pass270:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    goto alt96_end268
  alt96_1271:
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail259
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:"o", rx93_fail259
    add rx93_pos, 1
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."octint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail259
    nqp_rxmark rx93_bstack, rxsubrule98_pass272, -1, 0
  rxsubrule98_pass272:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    goto alt96_end268
  alt96_2273:
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail259
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:"x", rx93_fail259
    add rx93_pos, 1
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail259
    nqp_rxmark rx93_bstack, rxsubrule99_pass274, -1, 0
  rxsubrule99_pass274:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    goto alt96_end268
  alt96_3275:
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail259
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:"d", rx93_fail259
    add rx93_pos, 1
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."decint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail259
    nqp_rxmark rx93_bstack, rxsubrule100_pass276, -1, 0
  rxsubrule100_pass276:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    goto alt96_end268
  alt96_end268:
    nqp_rxcommit rx93_bstack, alt96_end268
    goto alt95_end266
  alt95_1277:
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."decint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail259
    nqp_rxmark rx93_bstack, rxsubrule101_pass278, -1, 0
  rxsubrule101_pass278:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    goto alt95_end266
  alt95_end266:
    nqp_rxcommit rx93_bstack, alt95_end266
    rx93_cur."!cursor_pass"(rx93_pos, "integer", 'backtrack'=>1)
    .return (rx93_cur)
  rx93_restart258:
    repr_get_attr_obj rx93_cstack, rx93_cur, rx93_curclass, "$!cstack"
  rx93_fail259:
    unless rx93_bstack, rx93_done257
    pop $I19, rx93_bstack
    if_null rx93_cstack, rx93_cstack_done262
    unless rx93_cstack, rx93_cstack_done262
    dec $I19
    set $P11, rx93_cstack[$I19]
  rx93_cstack_done262:
    pop rx93_rep, rx93_bstack
    pop rx93_pos, rx93_bstack
    pop $I19, rx93_bstack
    lt rx93_pos, -1, rx93_done257
    lt rx93_pos, 0, rx93_fail259
    eq $I19, 0, rx93_fail259
    nqp_islist $I20, rx93_cstack
    unless $I20, rx93_jump260
    elements $I18, rx93_bstack
    le $I18, 0, rx93_cut261
    dec $I18
    set $I18, rx93_bstack[$I18]
  rx93_cut261:
    assign rx93_cstack, $I18
  rx93_jump260:
    jump $I19
  rx93_done257:
    rx93_cur."!cursor_fail"()
    .return (rx93_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346233437.626_caps" :subid("cuid_memo_36_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["VALUE"], $P502
    box $P503, 0
    set $P501["binint"], $P503
    box $P504, 0
    set $P501["octint"], $P504
    box $P505, 0
    set $P501["hexint"], $P505
    box $P506, 0
    set $P501["decint"], $P506
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346233437.626_nfa" :subid("cuid_memo_37_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 48
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    box $P507, 8
    push $P503, $P507
    box $P508, "decint"
    push $P503, $P508
    box $P509, 0
    push $P503, $P509
    push $P501, $P503
    new $P510, 'ResizablePMCArray'
    box $P511, 2
    push $P510, $P511
    box $P512, 98
    push $P510, $P512
    box $P513, 3
    push $P510, $P513
    box $P514, 2
    push $P510, $P514
    box $P515, 111
    push $P510, $P515
    box $P516, 4
    push $P510, $P516
    box $P517, 2
    push $P510, $P517
    box $P518, 120
    push $P510, $P518
    box $P519, 5
    push $P510, $P519
    box $P520, 2
    push $P510, $P520
    box $P521, 100
    push $P510, $P521
    box $P522, 6
    push $P510, $P522
    push $P501, $P510
    new $P523, 'ResizablePMCArray'
    box $P524, 8
    push $P523, $P524
    box $P525, "binint"
    push $P523, $P525
    box $P526, 0
    push $P523, $P526
    push $P501, $P523
    new $P527, 'ResizablePMCArray'
    box $P528, 8
    push $P527, $P528
    box $P529, "octint"
    push $P527, $P529
    box $P530, 0
    push $P527, $P530
    push $P501, $P527
    new $P531, 'ResizablePMCArray'
    box $P532, 8
    push $P531, $P532
    box $P533, "hexint"
    push $P531, $P533
    box $P534, 0
    push $P531, $P534
    push $P501, $P531
    new $P535, 'ResizablePMCArray'
    box $P536, 8
    push $P535, $P536
    box $P537, "decint"
    push $P535, $P537
    box $P538, 0
    push $P535, $P538
    push $P501, $P535
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346233437.626_alt_nfa__4_1346233438.309" :subid("cuid_memo_38_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 2
    push $P504, $P505
    box $P506, 98
    push $P504, $P506
    box $P507, 2
    push $P504, $P507
    push $P502, $P504
    new $P508, 'ResizablePMCArray'
    box $P509, 8
    push $P508, $P509
    box $P510, "binint"
    push $P508, $P510
    box $P511, 0
    push $P508, $P511
    push $P502, $P508
    push $P501, $P502
    new $P512, 'ResizablePMCArray'
    new $P513, 'ResizablePMCArray'
    push $P512, $P513
    new $P514, 'ResizablePMCArray'
    box $P515, 2
    push $P514, $P515
    box $P516, 111
    push $P514, $P516
    box $P517, 2
    push $P514, $P517
    push $P512, $P514
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "octint"
    push $P518, $P520
    box $P521, 0
    push $P518, $P521
    push $P512, $P518
    push $P501, $P512
    new $P522, 'ResizablePMCArray'
    new $P523, 'ResizablePMCArray'
    push $P522, $P523
    new $P524, 'ResizablePMCArray'
    box $P525, 2
    push $P524, $P525
    box $P526, 120
    push $P524, $P526
    box $P527, 2
    push $P524, $P527
    push $P522, $P524
    new $P528, 'ResizablePMCArray'
    box $P529, 8
    push $P528, $P529
    box $P530, "hexint"
    push $P528, $P530
    box $P531, 0
    push $P528, $P531
    push $P522, $P528
    push $P501, $P522
    new $P532, 'ResizablePMCArray'
    new $P533, 'ResizablePMCArray'
    push $P532, $P533
    new $P534, 'ResizablePMCArray'
    box $P535, 2
    push $P534, $P535
    box $P536, 100
    push $P534, $P536
    box $P537, 2
    push $P534, $P537
    push $P532, $P534
    new $P538, 'ResizablePMCArray'
    box $P539, 8
    push $P538, $P539
    box $P540, "decint"
    push $P538, $P540
    box $P541, 0
    push $P538, $P541
    push $P532, $P538
    push $P501, $P532
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346233437.626_alt_nfa__3_1346233438.309" :subid("cuid_memo_39_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 2
    push $P504, $P505
    box $P506, 48
    push $P504, $P506
    box $P507, 2
    push $P504, $P507
    push $P502, $P504
    new $P508, 'ResizablePMCArray'
    box $P509, 2
    push $P508, $P509
    box $P510, 98
    push $P508, $P510
    box $P511, 3
    push $P508, $P511
    box $P512, 2
    push $P508, $P512
    box $P513, 111
    push $P508, $P513
    box $P514, 4
    push $P508, $P514
    box $P515, 2
    push $P508, $P515
    box $P516, 120
    push $P508, $P516
    box $P517, 5
    push $P508, $P517
    box $P518, 2
    push $P508, $P518
    box $P519, 100
    push $P508, $P519
    box $P520, 6
    push $P508, $P520
    push $P502, $P508
    new $P521, 'ResizablePMCArray'
    box $P522, 8
    push $P521, $P522
    box $P523, "binint"
    push $P521, $P523
    box $P524, 0
    push $P521, $P524
    push $P502, $P521
    new $P525, 'ResizablePMCArray'
    box $P526, 8
    push $P525, $P526
    box $P527, "octint"
    push $P525, $P527
    box $P528, 0
    push $P525, $P528
    push $P502, $P525
    new $P529, 'ResizablePMCArray'
    box $P530, 8
    push $P529, $P530
    box $P531, "hexint"
    push $P529, $P531
    box $P532, 0
    push $P529, $P532
    push $P502, $P529
    new $P533, 'ResizablePMCArray'
    box $P534, 8
    push $P533, $P534
    box $P535, "decint"
    push $P533, $P535
    box $P536, 0
    push $P533, $P536
    push $P502, $P533
    push $P501, $P502
    new $P537, 'ResizablePMCArray'
    new $P538, 'ResizablePMCArray'
    push $P537, $P538
    new $P539, 'ResizablePMCArray'
    box $P540, 8
    push $P539, $P540
    box $P541, "decint"
    push $P539, $P541
    box $P542, 0
    push $P539, $P542
    push $P537, $P539
    push $P501, $P537
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_27_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 75
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx102_tgt
    .local int rx102_pos
    .local int rx102_off
    .local int rx102_eos
    .local int rx102_rep
    .local pmc rx102_cur
    .local pmc rx102_curclass
    .local pmc rx102_bstack
    .local pmc rx102_cstack
    (rx102_cur, rx102_tgt, rx102_pos, rx102_curclass, rx102_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx102_cur
    length rx102_eos, rx102_tgt
    eq $I19, 1, rx102_restart281
    gt rx102_pos, rx102_eos, rx102_fail282
    repr_get_attr_int $I11, self, rx102_curclass, "$!from"
    ne $I11, -1, rxscan103_done288
    goto rxscan103_scan287
  rxscan103_loop286:
    inc rx102_pos
    gt rx102_pos, rx102_eos, rx102_fail282
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!from", rx102_pos
  rxscan103_scan287:
    nqp_rxmark rx102_bstack, rxscan103_loop286, rx102_pos, 0
  rxscan103_done288:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt104_0290
    nqp_push_label $P11, alt104_1299
    nqp_push_label $P11, alt104_2310
    nqp_rxmark rx102_bstack, alt104_end289, -1, 0
    rx102_cur."!alt"(rx102_pos, "alt_nfa__5_1346233438.351", $P11)
    goto rx102_fail282
  alt104_0290:
    nqp_rxmark rx102_bstack, rxcap105_fail292, rx102_pos, 0
    add $I11, rx102_pos, 1
    gt $I11, rx102_eos, rx102_fail282
    substr $S10, rx102_tgt, rx102_pos, 1
    ne $S10, ucs4:".", rx102_fail282
    add rx102_pos, 1
    nqp_rxmark rx102_bstack, rxquantr106_done294, -1, 0
  rxquantr106_loop293:
    ge rx102_pos, rx102_eos, rx102_fail282
    is_cclass $I11, .CCLASS_NUMERIC, rx102_tgt, rx102_pos
    unless $I11, rx102_fail282
    add rx102_pos, 1
    nqp_rxpeek $I19, rx102_bstack, rxquantr106_done294
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr106_done294
    inc rx102_rep
    nqp_rxmark rx102_bstack, rxquantr106_done294, rx102_pos, rx102_rep
    goto rxquantr106_loop293
  rxquantr106_done294:
    nqp_rxpeek $I19, rx102_bstack, rxcap105_fail292
    inc $I19
    set $I11, rx102_bstack[$I19]
    $P11 = rx102_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx102_pos)
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "coeff")
    goto rxcap105_done291
  rxcap105_fail292:
    goto rx102_fail282
  rxcap105_done291:
    nqp_rxmark rx102_bstack, rxquantr107_done296, rx102_pos, 0
  rxquantr107_loop295:
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."escale"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail282
    goto rxsubrule108_pass297
  rxsubrule108_back298:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail282
  rxsubrule108_pass297:
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule108_back298
    push rx102_bstack, $I11
    push rx102_bstack, 0
    push rx102_bstack, rx102_pos
    elements $I11, rx102_cstack
    push rx102_bstack, $I11
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    nqp_rxpeek $I19, rx102_bstack, rxquantr107_done296
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr107_done296
    inc rx102_rep
  rxquantr107_done296:
    goto alt104_end289
  alt104_1299:
    nqp_rxmark rx102_bstack, rxcap109_fail301, rx102_pos, 0
    nqp_rxmark rx102_bstack, rxquantr110_done303, -1, 0
  rxquantr110_loop302:
    ge rx102_pos, rx102_eos, rx102_fail282
    is_cclass $I11, .CCLASS_NUMERIC, rx102_tgt, rx102_pos
    unless $I11, rx102_fail282
    add rx102_pos, 1
    nqp_rxpeek $I19, rx102_bstack, rxquantr110_done303
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr110_done303
    inc rx102_rep
    nqp_rxmark rx102_bstack, rxquantr110_done303, rx102_pos, rx102_rep
    goto rxquantr110_loop302
  rxquantr110_done303:
    add $I11, rx102_pos, 1
    gt $I11, rx102_eos, rx102_fail282
    substr $S10, rx102_tgt, rx102_pos, 1
    ne $S10, ucs4:".", rx102_fail282
    add rx102_pos, 1
    nqp_rxmark rx102_bstack, rxquantr111_done305, -1, 0
  rxquantr111_loop304:
    ge rx102_pos, rx102_eos, rx102_fail282
    is_cclass $I11, .CCLASS_NUMERIC, rx102_tgt, rx102_pos
    unless $I11, rx102_fail282
    add rx102_pos, 1
    nqp_rxpeek $I19, rx102_bstack, rxquantr111_done305
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr111_done305
    inc rx102_rep
    nqp_rxmark rx102_bstack, rxquantr111_done305, rx102_pos, rx102_rep
    goto rxquantr111_loop304
  rxquantr111_done305:
    nqp_rxpeek $I19, rx102_bstack, rxcap109_fail301
    inc $I19
    set $I11, rx102_bstack[$I19]
    $P11 = rx102_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx102_pos)
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "coeff")
    goto rxcap109_done300
  rxcap109_fail301:
    goto rx102_fail282
  rxcap109_done300:
    nqp_rxmark rx102_bstack, rxquantr112_done307, rx102_pos, 0
  rxquantr112_loop306:
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."escale"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail282
    goto rxsubrule113_pass308
  rxsubrule113_back309:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail282
  rxsubrule113_pass308:
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule113_back309
    push rx102_bstack, $I11
    push rx102_bstack, 0
    push rx102_bstack, rx102_pos
    elements $I11, rx102_cstack
    push rx102_bstack, $I11
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    nqp_rxpeek $I19, rx102_bstack, rxquantr112_done307
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr112_done307
    inc rx102_rep
  rxquantr112_done307:
    goto alt104_end289
  alt104_2310:
    nqp_rxmark rx102_bstack, rxcap114_fail312, rx102_pos, 0
    nqp_rxmark rx102_bstack, rxquantr115_done314, -1, 0
  rxquantr115_loop313:
    ge rx102_pos, rx102_eos, rx102_fail282
    is_cclass $I11, .CCLASS_NUMERIC, rx102_tgt, rx102_pos
    unless $I11, rx102_fail282
    add rx102_pos, 1
    nqp_rxpeek $I19, rx102_bstack, rxquantr115_done314
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr115_done314
    inc rx102_rep
    nqp_rxmark rx102_bstack, rxquantr115_done314, rx102_pos, rx102_rep
    goto rxquantr115_loop313
  rxquantr115_done314:
    nqp_rxpeek $I19, rx102_bstack, rxcap114_fail312
    inc $I19
    set $I11, rx102_bstack[$I19]
    $P11 = rx102_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx102_pos)
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "coeff")
    goto rxcap114_done311
  rxcap114_fail312:
    goto rx102_fail282
  rxcap114_done311:
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."escale"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail282
    nqp_rxmark rx102_bstack, rxsubrule116_pass315, -1, 0
  rxsubrule116_pass315:
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    goto alt104_end289
  alt104_end289:
    rx102_cur."!cursor_pass"(rx102_pos, "dec_number", 'backtrack'=>1)
    .return (rx102_cur)
  rx102_restart281:
    repr_get_attr_obj rx102_cstack, rx102_cur, rx102_curclass, "$!cstack"
  rx102_fail282:
    unless rx102_bstack, rx102_done280
    pop $I19, rx102_bstack
    if_null rx102_cstack, rx102_cstack_done285
    unless rx102_cstack, rx102_cstack_done285
    dec $I19
    set $P11, rx102_cstack[$I19]
  rx102_cstack_done285:
    pop rx102_rep, rx102_bstack
    pop rx102_pos, rx102_bstack
    pop $I19, rx102_bstack
    lt rx102_pos, -1, rx102_done280
    lt rx102_pos, 0, rx102_fail282
    eq $I19, 0, rx102_fail282
    nqp_islist $I20, rx102_cstack
    unless $I20, rx102_jump283
    elements $I18, rx102_bstack
    le $I18, 0, rx102_cut284
    dec $I18
    set $I18, rx102_bstack[$I18]
  rx102_cut284:
    assign rx102_cstack, $I18
  rx102_jump283:
    jump $I19
  rx102_done280:
    rx102_cur."!cursor_fail"()
    .return (rx102_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1346233437.626_caps" :subid("cuid_memo_40_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["coeff"], $P502
    box $P503, 2
    set $P501["escale"], $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1346233437.626_nfa" :subid("cuid_memo_41_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 46
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    box $P507, 1
    push $P503, $P507
    box $P508, 0
    push $P503, $P508
    box $P509, 6
    push $P503, $P509
    box $P510, 1
    push $P503, $P510
    box $P511, 0
    push $P503, $P511
    box $P512, 13
    push $P503, $P512
    push $P501, $P503
    new $P513, 'ResizablePMCArray'
    box $P514, 1
    push $P513, $P514
    box $P515, 0
    push $P513, $P515
    box $P516, 3
    push $P513, $P516
    push $P501, $P513
    new $P517, 'ResizablePMCArray'
    box $P518, 4
    push $P517, $P518
    box $P519, 8
    push $P517, $P519
    box $P520, 4
    push $P517, $P520
    push $P501, $P517
    new $P521, 'ResizablePMCArray'
    box $P522, 1
    push $P521, $P522
    box $P523, 0
    push $P521, $P523
    box $P524, 3
    push $P521, $P524
    box $P525, 1
    push $P521, $P525
    box $P526, 0
    push $P521, $P526
    box $P527, 5
    push $P521, $P527
    box $P528, 8
    push $P521, $P528
    box $P529, "escale"
    push $P521, $P529
    box $P530, 0
    push $P521, $P530
    box $P531, 1
    push $P521, $P531
    box $P532, 0
    push $P521, $P532
    box $P533, 0
    push $P521, $P533
    push $P501, $P521
    new $P534, 'ResizablePMCArray'
    push $P501, $P534
    new $P535, 'ResizablePMCArray'
    box $P536, 4
    push $P535, $P536
    box $P537, 8
    push $P535, $P537
    box $P538, 7
    push $P535, $P538
    push $P501, $P535
    new $P539, 'ResizablePMCArray'
    box $P540, 1
    push $P539, $P540
    box $P541, 0
    push $P539, $P541
    box $P542, 6
    push $P539, $P542
    box $P543, 1
    push $P539, $P543
    box $P544, 0
    push $P539, $P544
    box $P545, 8
    push $P539, $P545
    box $P546, 2
    push $P539, $P546
    box $P547, 46
    push $P539, $P547
    box $P548, 9
    push $P539, $P548
    push $P501, $P539
    new $P549, 'ResizablePMCArray'
    push $P501, $P549
    new $P550, 'ResizablePMCArray'
    box $P551, 1
    push $P550, $P551
    box $P552, 0
    push $P550, $P552
    box $P553, 10
    push $P550, $P553
    push $P501, $P550
    new $P554, 'ResizablePMCArray'
    box $P555, 4
    push $P554, $P555
    box $P556, 8
    push $P554, $P556
    box $P557, 11
    push $P554, $P557
    push $P501, $P554
    new $P558, 'ResizablePMCArray'
    box $P559, 1
    push $P558, $P559
    box $P560, 0
    push $P558, $P560
    box $P561, 10
    push $P558, $P561
    box $P562, 1
    push $P558, $P562
    box $P563, 0
    push $P558, $P563
    box $P564, 12
    push $P558, $P564
    box $P565, 8
    push $P558, $P565
    box $P566, "escale"
    push $P558, $P566
    box $P567, 0
    push $P558, $P567
    box $P568, 1
    push $P558, $P568
    box $P569, 0
    push $P558, $P569
    box $P570, 0
    push $P558, $P570
    push $P501, $P558
    new $P571, 'ResizablePMCArray'
    push $P501, $P571
    new $P572, 'ResizablePMCArray'
    box $P573, 4
    push $P572, $P573
    box $P574, 8
    push $P572, $P574
    box $P575, 14
    push $P572, $P575
    push $P501, $P572
    new $P576, 'ResizablePMCArray'
    box $P577, 1
    push $P576, $P577
    box $P578, 0
    push $P576, $P578
    box $P579, 13
    push $P576, $P579
    box $P580, 1
    push $P576, $P580
    box $P581, 0
    push $P576, $P581
    box $P582, 15
    push $P576, $P582
    box $P583, 8
    push $P576, $P583
    box $P584, "escale"
    push $P576, $P584
    box $P585, 0
    push $P576, $P585
    push $P501, $P576
    new $P586, 'ResizablePMCArray'
    push $P501, $P586
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1346233437.626_alt_nfa__5_1346233438.351" :subid("cuid_memo_42_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 2
    push $P504, $P505
    box $P506, 46
    push $P504, $P506
    box $P507, 2
    push $P504, $P507
    push $P502, $P504
    new $P508, 'ResizablePMCArray'
    box $P509, 1
    push $P508, $P509
    box $P510, 0
    push $P508, $P510
    box $P511, 3
    push $P508, $P511
    push $P502, $P508
    new $P512, 'ResizablePMCArray'
    box $P513, 4
    push $P512, $P513
    box $P514, 8
    push $P512, $P514
    box $P515, 4
    push $P512, $P515
    push $P502, $P512
    new $P516, 'ResizablePMCArray'
    box $P517, 1
    push $P516, $P517
    box $P518, 0
    push $P516, $P518
    box $P519, 3
    push $P516, $P519
    box $P520, 1
    push $P516, $P520
    box $P521, 0
    push $P516, $P521
    box $P522, 5
    push $P516, $P522
    box $P523, 8
    push $P516, $P523
    box $P524, "escale"
    push $P516, $P524
    box $P525, 0
    push $P516, $P525
    box $P526, 1
    push $P516, $P526
    box $P527, 0
    push $P516, $P527
    box $P528, 0
    push $P516, $P528
    push $P502, $P516
    new $P529, 'ResizablePMCArray'
    push $P502, $P529
    push $P501, $P502
    new $P530, 'ResizablePMCArray'
    new $P531, 'ResizablePMCArray'
    push $P530, $P531
    new $P532, 'ResizablePMCArray'
    box $P533, 1
    push $P532, $P533
    box $P534, 0
    push $P532, $P534
    box $P535, 2
    push $P532, $P535
    push $P530, $P532
    new $P536, 'ResizablePMCArray'
    box $P537, 4
    push $P536, $P537
    box $P538, 8
    push $P536, $P538
    box $P539, 3
    push $P536, $P539
    push $P530, $P536
    new $P540, 'ResizablePMCArray'
    box $P541, 1
    push $P540, $P541
    box $P542, 0
    push $P540, $P542
    box $P543, 2
    push $P540, $P543
    box $P544, 1
    push $P540, $P544
    box $P545, 0
    push $P540, $P545
    box $P546, 4
    push $P540, $P546
    box $P547, 2
    push $P540, $P547
    box $P548, 46
    push $P540, $P548
    box $P549, 5
    push $P540, $P549
    push $P530, $P540
    new $P550, 'ResizablePMCArray'
    push $P530, $P550
    new $P551, 'ResizablePMCArray'
    box $P552, 1
    push $P551, $P552
    box $P553, 0
    push $P551, $P553
    box $P554, 6
    push $P551, $P554
    push $P530, $P551
    new $P555, 'ResizablePMCArray'
    box $P556, 4
    push $P555, $P556
    box $P557, 8
    push $P555, $P557
    box $P558, 7
    push $P555, $P558
    push $P530, $P555
    new $P559, 'ResizablePMCArray'
    box $P560, 1
    push $P559, $P560
    box $P561, 0
    push $P559, $P561
    box $P562, 6
    push $P559, $P562
    box $P563, 1
    push $P559, $P563
    box $P564, 0
    push $P559, $P564
    box $P565, 8
    push $P559, $P565
    box $P566, 8
    push $P559, $P566
    box $P567, "escale"
    push $P559, $P567
    box $P568, 0
    push $P559, $P568
    box $P569, 1
    push $P559, $P569
    box $P570, 0
    push $P559, $P570
    box $P571, 0
    push $P559, $P571
    push $P530, $P559
    new $P572, 'ResizablePMCArray'
    push $P530, $P572
    push $P501, $P530
    new $P573, 'ResizablePMCArray'
    new $P574, 'ResizablePMCArray'
    push $P573, $P574
    new $P575, 'ResizablePMCArray'
    box $P576, 1
    push $P575, $P576
    box $P577, 0
    push $P575, $P577
    box $P578, 2
    push $P575, $P578
    push $P573, $P575
    new $P579, 'ResizablePMCArray'
    box $P580, 4
    push $P579, $P580
    box $P581, 8
    push $P579, $P581
    box $P582, 3
    push $P579, $P582
    push $P573, $P579
    new $P583, 'ResizablePMCArray'
    box $P584, 1
    push $P583, $P584
    box $P585, 0
    push $P583, $P585
    box $P586, 2
    push $P583, $P586
    box $P587, 1
    push $P583, $P587
    box $P588, 0
    push $P583, $P588
    box $P589, 4
    push $P583, $P589
    box $P590, 8
    push $P583, $P590
    box $P591, "escale"
    push $P583, $P591
    box $P592, 0
    push $P583, $P592
    push $P573, $P583
    new $P593, 'ResizablePMCArray'
    push $P573, $P593
    push $P501, $P573
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_28_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 81
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    .local pmc rx117_curclass
    .local pmc rx117_bstack
    .local pmc rx117_cstack
    (rx117_cur, rx117_tgt, rx117_pos, rx117_curclass, rx117_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx117_cur
    length rx117_eos, rx117_tgt
    eq $I19, 1, rx117_restart318
    gt rx117_pos, rx117_eos, rx117_fail319
    repr_get_attr_int $I11, self, rx117_curclass, "$!from"
    ne $I11, -1, rxscan118_done325
    goto rxscan118_scan324
  rxscan118_loop323:
    inc rx117_pos
    gt rx117_pos, rx117_eos, rx117_fail319
    repr_bind_attr_int rx117_cur, rx117_curclass, "$!from", rx117_pos
  rxscan118_scan324:
    nqp_rxmark rx117_bstack, rxscan118_loop323, rx117_pos, 0
  rxscan118_done325:
    ge rx117_pos, rx117_eos, rx117_fail319
    substr $S11, rx117_tgt, rx117_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx117_fail319
    inc rx117_pos
    nqp_rxmark rx117_bstack, rxquantr119_done327, rx117_pos, 0
  rxquantr119_loop326:
  alt120_0329:
    nqp_rxmark rx117_bstack, alt120_1330, rx117_pos, 0
    add $I11, rx117_pos, 1
    gt $I11, rx117_eos, rx117_fail319
    substr $S10, rx117_tgt, rx117_pos, 1
    ne $S10, ucs4:"-", rx117_fail319
    add rx117_pos, 1
    goto alt120_end328
  alt120_1330:
    ge rx117_pos, rx117_eos, rx117_fail319
    substr $S11, rx117_tgt, rx117_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx117_fail319
    inc rx117_pos
  alt120_end328:
    nqp_rxpeek $I19, rx117_bstack, rxquantr119_done327
    inc $I19
    inc $I19
    set rx117_rep, rx117_bstack[$I19]
    nqp_rxcommit rx117_bstack, rxquantr119_done327
    inc rx117_rep
  rxquantr119_done327:
    nqp_rxmark rx117_bstack, rxquantr121_done332, -1, 0
  rxquantr121_loop331:
    ge rx117_pos, rx117_eos, rx117_fail319
    is_cclass $I11, .CCLASS_NUMERIC, rx117_tgt, rx117_pos
    unless $I11, rx117_fail319
    add rx117_pos, 1
    nqp_rxpeek $I19, rx117_bstack, rxquantr121_done332
    inc $I19
    inc $I19
    set rx117_rep, rx117_bstack[$I19]
    nqp_rxcommit rx117_bstack, rxquantr121_done332
    inc rx117_rep
    nqp_rxmark rx117_bstack, rxquantr121_done332, rx117_pos, rx117_rep
    goto rxquantr121_loop331
  rxquantr121_done332:
    rx117_cur."!cursor_pass"(rx117_pos, "escale", 'backtrack'=>1)
    .return (rx117_cur)
  rx117_restart318:
    repr_get_attr_obj rx117_cstack, rx117_cur, rx117_curclass, "$!cstack"
  rx117_fail319:
    unless rx117_bstack, rx117_done317
    pop $I19, rx117_bstack
    if_null rx117_cstack, rx117_cstack_done322
    unless rx117_cstack, rx117_cstack_done322
    dec $I19
    set $P11, rx117_cstack[$I19]
  rx117_cstack_done322:
    pop rx117_rep, rx117_bstack
    pop rx117_pos, rx117_bstack
    pop $I19, rx117_bstack
    lt rx117_pos, -1, rx117_done317
    lt rx117_pos, 0, rx117_fail319
    eq $I19, 0, rx117_fail319
    nqp_islist $I20, rx117_cstack
    unless $I20, rx117_jump320
    elements $I18, rx117_bstack
    le $I18, 0, rx117_cut321
    dec $I18
    set $I18, rx117_bstack[$I18]
  rx117_cut321:
    assign rx117_cstack, $I18
  rx117_jump320:
    jump $I19
  rx117_done317:
    rx117_cur."!cursor_fail"()
    .return (rx117_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1346233437.626_caps" :subid("cuid_memo_43_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1346233437.626_nfa" :subid("cuid_memo_44_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 6
    push $P503, $P504
    box $P505, "Ee"
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 0
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 0
    push $P507, $P510
    box $P511, 1
    push $P507, $P511
    box $P512, 0
    push $P507, $P512
    box $P513, 3
    push $P507, $P513
    push $P501, $P507
    new $P514, 'ResizablePMCArray'
    box $P515, 1
    push $P514, $P515
    box $P516, 0
    push $P514, $P516
    box $P517, 4
    push $P514, $P517
    push $P501, $P514
    new $P518, 'ResizablePMCArray'
    box $P519, 4
    push $P518, $P519
    box $P520, 8
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 1
    push $P522, $P523
    box $P524, 0
    push $P522, $P524
    box $P525, 4
    push $P522, $P525
    box $P526, 1
    push $P522, $P526
    box $P527, 0
    push $P522, $P527
    box $P528, 0
    push $P522, $P528
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_29_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 83
    .param pmc self 
    $P501 = self."!protoregex"("quote_escape")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_curclass
    .local pmc rx122_bstack
    .local pmc rx122_cstack
    (rx122_cur, rx122_tgt, rx122_pos, rx122_curclass, rx122_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    eq $I19, 1, rx122_restart335
    gt rx122_pos, rx122_eos, rx122_fail336
    repr_get_attr_int $I11, self, rx122_curclass, "$!from"
    ne $I11, -1, rxscan123_done342
    goto rxscan123_scan341
  rxscan123_loop340:
    inc rx122_pos
    gt rx122_pos, rx122_eos, rx122_fail336
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!from", rx122_pos
  rxscan123_scan341:
    nqp_rxmark rx122_bstack, rxscan123_loop340, rx122_pos, 0
  rxscan123_done342:
    add $I11, rx122_pos, 2
    gt $I11, rx122_eos, rx122_fail336
    substr $S10, rx122_tgt, rx122_pos, 2
    ne $S10, ucs4:"\\\\", rx122_fail336
    add rx122_pos, 2
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!pos", rx122_pos
    $P11 = rx122_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx122_curclass, "$!pos"
    lt $I11, 0, rx122_fail336
    rx122_cur."!cursor_pass"(rx122_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx122_cur)
  rx122_restart335:
    repr_get_attr_obj rx122_cstack, rx122_cur, rx122_curclass, "$!cstack"
  rx122_fail336:
    unless rx122_bstack, rx122_done334
    pop $I19, rx122_bstack
    if_null rx122_cstack, rx122_cstack_done339
    unless rx122_cstack, rx122_cstack_done339
    dec $I19
    set $P11, rx122_cstack[$I19]
  rx122_cstack_done339:
    pop rx122_rep, rx122_bstack
    pop rx122_pos, rx122_bstack
    pop $I19, rx122_bstack
    lt rx122_pos, -1, rx122_done334
    lt rx122_pos, 0, rx122_fail336
    eq $I19, 0, rx122_fail336
    nqp_islist $I20, rx122_cstack
    unless $I20, rx122_jump337
    elements $I18, rx122_bstack
    le $I18, 0, rx122_cut338
    dec $I18
    set $I18, rx122_bstack[$I18]
  rx122_cut338:
    assign rx122_cstack, $I18
  rx122_jump337:
    jump $I19
  rx122_done334:
    rx122_cur."!cursor_fail"()
    .return (rx122_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_30_1346233437.626_caps" :subid("cuid_memo_45_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_30_1346233437.626_nfa" :subid("cuid_memo_46_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 92
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx124_tgt
    .local int rx124_pos
    .local int rx124_off
    .local int rx124_eos
    .local int rx124_rep
    .local pmc rx124_cur
    .local pmc rx124_curclass
    .local pmc rx124_bstack
    .local pmc rx124_cstack
    (rx124_cur, rx124_tgt, rx124_pos, rx124_curclass, rx124_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx124_cur
    length rx124_eos, rx124_tgt
    eq $I19, 1, rx124_restart345
    gt rx124_pos, rx124_eos, rx124_fail346
    repr_get_attr_int $I11, self, rx124_curclass, "$!from"
    ne $I11, -1, rxscan125_done352
    goto rxscan125_scan351
  rxscan125_loop350:
    inc rx124_pos
    gt rx124_pos, rx124_eos, rx124_fail346
    repr_bind_attr_int rx124_cur, rx124_curclass, "$!from", rx124_pos
  rxscan125_scan351:
    nqp_rxmark rx124_bstack, rxscan125_loop350, rx124_pos, 0
  rxscan125_done352:
    add $I11, rx124_pos, 1
    gt $I11, rx124_eos, rx124_fail346
    substr $S10, rx124_tgt, rx124_pos, 1
    ne $S10, ucs4:"\\", rx124_fail346
    add rx124_pos, 1
    repr_bind_attr_int rx124_cur, rx124_curclass, "$!pos", rx124_pos
    $P11 = rx124_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx124_curclass, "$!pos"
    lt $I11, 0, rx124_fail346
    repr_bind_attr_int rx124_cur, rx124_curclass, "$!pos", rx124_pos
    $P11 = rx124_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx124_curclass, "$!pos"
    lt $I11, 0, rx124_fail346
    nqp_rxmark rx124_bstack, rxsubrule126_pass353, -1, 0
  rxsubrule126_pass353:
    rx124_cstack = rx124_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx124_pos, $P11, rx124_curclass, "$!pos"
    rx124_cur."!cursor_pass"(rx124_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx124_cur)
  rx124_restart345:
    repr_get_attr_obj rx124_cstack, rx124_cur, rx124_curclass, "$!cstack"
  rx124_fail346:
    unless rx124_bstack, rx124_done344
    pop $I19, rx124_bstack
    if_null rx124_cstack, rx124_cstack_done349
    unless rx124_cstack, rx124_cstack_done349
    dec $I19
    set $P11, rx124_cstack[$I19]
  rx124_cstack_done349:
    pop rx124_rep, rx124_bstack
    pop rx124_pos, rx124_bstack
    pop $I19, rx124_bstack
    lt rx124_pos, -1, rx124_done344
    lt rx124_pos, 0, rx124_fail346
    eq $I19, 0, rx124_fail346
    nqp_islist $I20, rx124_cstack
    unless $I20, rx124_jump347
    elements $I18, rx124_bstack
    le $I18, 0, rx124_cut348
    dec $I18
    set $I18, rx124_bstack[$I18]
  rx124_cut348:
    assign rx124_cstack, $I18
  rx124_jump347:
    jump $I19
  rx124_done344:
    rx124_cur."!cursor_fail"()
    .return (rx124_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1346233437.626_caps" :subid("cuid_memo_47_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["stopper"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1346233437.626_nfa" :subid("cuid_memo_48_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "quotemod_check"
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 0
    push $P511, $P512
    box $P513, 0
    push $P511, $P513
    box $P514, 0
    push $P511, $P514
    push $P501, $P511
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_32_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    .local pmc rx127_curclass
    .local pmc rx127_bstack
    .local pmc rx127_cstack
    (rx127_cur, rx127_tgt, rx127_pos, rx127_curclass, rx127_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx127_cur
    length rx127_eos, rx127_tgt
    eq $I19, 1, rx127_restart356
    gt rx127_pos, rx127_eos, rx127_fail357
    repr_get_attr_int $I11, self, rx127_curclass, "$!from"
    ne $I11, -1, rxscan128_done363
    goto rxscan128_scan362
  rxscan128_loop361:
    inc rx127_pos
    gt rx127_pos, rx127_eos, rx127_fail357
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!from", rx127_pos
  rxscan128_scan362:
    nqp_rxmark rx127_bstack, rxscan128_loop361, rx127_pos, 0
  rxscan128_done363:
    add $I11, rx127_pos, 2
    gt $I11, rx127_eos, rx127_fail357
    substr $S10, rx127_tgt, rx127_pos, 2
    ne $S10, ucs4:"\\b", rx127_fail357
    add rx127_pos, 2
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!pos", rx127_pos
    $P11 = rx127_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx127_curclass, "$!pos"
    lt $I11, 0, rx127_fail357
    rx127_cur."!cursor_pass"(rx127_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx127_cur)
  rx127_restart356:
    repr_get_attr_obj rx127_cstack, rx127_cur, rx127_curclass, "$!cstack"
  rx127_fail357:
    unless rx127_bstack, rx127_done355
    pop $I19, rx127_bstack
    if_null rx127_cstack, rx127_cstack_done360
    unless rx127_cstack, rx127_cstack_done360
    dec $I19
    set $P11, rx127_cstack[$I19]
  rx127_cstack_done360:
    pop rx127_rep, rx127_bstack
    pop rx127_pos, rx127_bstack
    pop $I19, rx127_bstack
    lt rx127_pos, -1, rx127_done355
    lt rx127_pos, 0, rx127_fail357
    eq $I19, 0, rx127_fail357
    nqp_islist $I20, rx127_cstack
    unless $I20, rx127_jump358
    elements $I18, rx127_bstack
    le $I18, 0, rx127_cut359
    dec $I18
    set $I18, rx127_bstack[$I18]
  rx127_cut359:
    assign rx127_cstack, $I18
  rx127_jump358:
    jump $I19
  rx127_done355:
    rx127_cur."!cursor_fail"()
    .return (rx127_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1346233437.626_caps" :subid("cuid_memo_49_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1346233437.626_nfa" :subid("cuid_memo_50_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 98
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_33_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    .local pmc rx129_curclass
    .local pmc rx129_bstack
    .local pmc rx129_cstack
    (rx129_cur, rx129_tgt, rx129_pos, rx129_curclass, rx129_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx129_cur
    length rx129_eos, rx129_tgt
    eq $I19, 1, rx129_restart366
    gt rx129_pos, rx129_eos, rx129_fail367
    repr_get_attr_int $I11, self, rx129_curclass, "$!from"
    ne $I11, -1, rxscan130_done373
    goto rxscan130_scan372
  rxscan130_loop371:
    inc rx129_pos
    gt rx129_pos, rx129_eos, rx129_fail367
    repr_bind_attr_int rx129_cur, rx129_curclass, "$!from", rx129_pos
  rxscan130_scan372:
    nqp_rxmark rx129_bstack, rxscan130_loop371, rx129_pos, 0
  rxscan130_done373:
    add $I11, rx129_pos, 2
    gt $I11, rx129_eos, rx129_fail367
    substr $S10, rx129_tgt, rx129_pos, 2
    ne $S10, ucs4:"\\n", rx129_fail367
    add rx129_pos, 2
    repr_bind_attr_int rx129_cur, rx129_curclass, "$!pos", rx129_pos
    $P11 = rx129_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx129_curclass, "$!pos"
    lt $I11, 0, rx129_fail367
    rx129_cur."!cursor_pass"(rx129_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx129_cur)
  rx129_restart366:
    repr_get_attr_obj rx129_cstack, rx129_cur, rx129_curclass, "$!cstack"
  rx129_fail367:
    unless rx129_bstack, rx129_done365
    pop $I19, rx129_bstack
    if_null rx129_cstack, rx129_cstack_done370
    unless rx129_cstack, rx129_cstack_done370
    dec $I19
    set $P11, rx129_cstack[$I19]
  rx129_cstack_done370:
    pop rx129_rep, rx129_bstack
    pop rx129_pos, rx129_bstack
    pop $I19, rx129_bstack
    lt rx129_pos, -1, rx129_done365
    lt rx129_pos, 0, rx129_fail367
    eq $I19, 0, rx129_fail367
    nqp_islist $I20, rx129_cstack
    unless $I20, rx129_jump368
    elements $I18, rx129_bstack
    le $I18, 0, rx129_cut369
    dec $I18
    set $I18, rx129_bstack[$I18]
  rx129_cut369:
    assign rx129_cstack, $I18
  rx129_jump368:
    jump $I19
  rx129_done365:
    rx129_cur."!cursor_fail"()
    .return (rx129_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_33_1346233437.626_caps" :subid("cuid_memo_51_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_33_1346233437.626_nfa" :subid("cuid_memo_52_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 110
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_34_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_curclass
    .local pmc rx131_bstack
    .local pmc rx131_cstack
    (rx131_cur, rx131_tgt, rx131_pos, rx131_curclass, rx131_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx131_cur
    length rx131_eos, rx131_tgt
    eq $I19, 1, rx131_restart376
    gt rx131_pos, rx131_eos, rx131_fail377
    repr_get_attr_int $I11, self, rx131_curclass, "$!from"
    ne $I11, -1, rxscan132_done383
    goto rxscan132_scan382
  rxscan132_loop381:
    inc rx131_pos
    gt rx131_pos, rx131_eos, rx131_fail377
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!from", rx131_pos
  rxscan132_scan382:
    nqp_rxmark rx131_bstack, rxscan132_loop381, rx131_pos, 0
  rxscan132_done383:
    add $I11, rx131_pos, 2
    gt $I11, rx131_eos, rx131_fail377
    substr $S10, rx131_tgt, rx131_pos, 2
    ne $S10, ucs4:"\\r", rx131_fail377
    add rx131_pos, 2
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!pos", rx131_pos
    $P11 = rx131_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx131_curclass, "$!pos"
    lt $I11, 0, rx131_fail377
    rx131_cur."!cursor_pass"(rx131_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx131_cur)
  rx131_restart376:
    repr_get_attr_obj rx131_cstack, rx131_cur, rx131_curclass, "$!cstack"
  rx131_fail377:
    unless rx131_bstack, rx131_done375
    pop $I19, rx131_bstack
    if_null rx131_cstack, rx131_cstack_done380
    unless rx131_cstack, rx131_cstack_done380
    dec $I19
    set $P11, rx131_cstack[$I19]
  rx131_cstack_done380:
    pop rx131_rep, rx131_bstack
    pop rx131_pos, rx131_bstack
    pop $I19, rx131_bstack
    lt rx131_pos, -1, rx131_done375
    lt rx131_pos, 0, rx131_fail377
    eq $I19, 0, rx131_fail377
    nqp_islist $I20, rx131_cstack
    unless $I20, rx131_jump378
    elements $I18, rx131_bstack
    le $I18, 0, rx131_cut379
    dec $I18
    set $I18, rx131_bstack[$I18]
  rx131_cut379:
    assign rx131_cstack, $I18
  rx131_jump378:
    jump $I19
  rx131_done375:
    rx131_cur."!cursor_fail"()
    .return (rx131_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1346233437.626_caps" :subid("cuid_memo_53_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1346233437.626_nfa" :subid("cuid_memo_54_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 114
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_35_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 90
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_curclass
    .local pmc rx133_bstack
    .local pmc rx133_cstack
    (rx133_cur, rx133_tgt, rx133_pos, rx133_curclass, rx133_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx133_cur
    length rx133_eos, rx133_tgt
    eq $I19, 1, rx133_restart386
    gt rx133_pos, rx133_eos, rx133_fail387
    repr_get_attr_int $I11, self, rx133_curclass, "$!from"
    ne $I11, -1, rxscan134_done393
    goto rxscan134_scan392
  rxscan134_loop391:
    inc rx133_pos
    gt rx133_pos, rx133_eos, rx133_fail387
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!from", rx133_pos
  rxscan134_scan392:
    nqp_rxmark rx133_bstack, rxscan134_loop391, rx133_pos, 0
  rxscan134_done393:
    add $I11, rx133_pos, 2
    gt $I11, rx133_eos, rx133_fail387
    substr $S10, rx133_tgt, rx133_pos, 2
    ne $S10, ucs4:"\\t", rx133_fail387
    add rx133_pos, 2
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!pos", rx133_pos
    $P11 = rx133_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx133_curclass, "$!pos"
    lt $I11, 0, rx133_fail387
    rx133_cur."!cursor_pass"(rx133_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx133_cur)
  rx133_restart386:
    repr_get_attr_obj rx133_cstack, rx133_cur, rx133_curclass, "$!cstack"
  rx133_fail387:
    unless rx133_bstack, rx133_done385
    pop $I19, rx133_bstack
    if_null rx133_cstack, rx133_cstack_done390
    unless rx133_cstack, rx133_cstack_done390
    dec $I19
    set $P11, rx133_cstack[$I19]
  rx133_cstack_done390:
    pop rx133_rep, rx133_bstack
    pop rx133_pos, rx133_bstack
    pop $I19, rx133_bstack
    lt rx133_pos, -1, rx133_done385
    lt rx133_pos, 0, rx133_fail387
    eq $I19, 0, rx133_fail387
    nqp_islist $I20, rx133_cstack
    unless $I20, rx133_jump388
    elements $I18, rx133_bstack
    le $I18, 0, rx133_cut389
    dec $I18
    set $I18, rx133_bstack[$I18]
  rx133_cut389:
    assign rx133_cstack, $I18
  rx133_jump388:
    jump $I19
  rx133_done385:
    rx133_cur."!cursor_fail"()
    .return (rx133_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1346233437.626_caps" :subid("cuid_memo_55_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1346233437.626_nfa" :subid("cuid_memo_56_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 116
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_36_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_curclass
    .local pmc rx135_bstack
    .local pmc rx135_cstack
    (rx135_cur, rx135_tgt, rx135_pos, rx135_curclass, rx135_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx135_cur
    length rx135_eos, rx135_tgt
    eq $I19, 1, rx135_restart396
    gt rx135_pos, rx135_eos, rx135_fail397
    repr_get_attr_int $I11, self, rx135_curclass, "$!from"
    ne $I11, -1, rxscan136_done403
    goto rxscan136_scan402
  rxscan136_loop401:
    inc rx135_pos
    gt rx135_pos, rx135_eos, rx135_fail397
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!from", rx135_pos
  rxscan136_scan402:
    nqp_rxmark rx135_bstack, rxscan136_loop401, rx135_pos, 0
  rxscan136_done403:
    add $I11, rx135_pos, 2
    gt $I11, rx135_eos, rx135_fail397
    substr $S10, rx135_tgt, rx135_pos, 2
    ne $S10, ucs4:"\\f", rx135_fail397
    add rx135_pos, 2
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!pos", rx135_pos
    $P11 = rx135_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx135_curclass, "$!pos"
    lt $I11, 0, rx135_fail397
    rx135_cur."!cursor_pass"(rx135_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx135_cur)
  rx135_restart396:
    repr_get_attr_obj rx135_cstack, rx135_cur, rx135_curclass, "$!cstack"
  rx135_fail397:
    unless rx135_bstack, rx135_done395
    pop $I19, rx135_bstack
    if_null rx135_cstack, rx135_cstack_done400
    unless rx135_cstack, rx135_cstack_done400
    dec $I19
    set $P11, rx135_cstack[$I19]
  rx135_cstack_done400:
    pop rx135_rep, rx135_bstack
    pop rx135_pos, rx135_bstack
    pop $I19, rx135_bstack
    lt rx135_pos, -1, rx135_done395
    lt rx135_pos, 0, rx135_fail397
    eq $I19, 0, rx135_fail397
    nqp_islist $I20, rx135_cstack
    unless $I20, rx135_jump398
    elements $I18, rx135_bstack
    le $I18, 0, rx135_cut399
    dec $I18
    set $I18, rx135_bstack[$I18]
  rx135_cut399:
    assign rx135_cstack, $I18
  rx135_jump398:
    jump $I19
  rx135_done395:
    rx135_cur."!cursor_fail"()
    .return (rx135_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1346233437.626_caps" :subid("cuid_memo_57_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1346233437.626_nfa" :subid("cuid_memo_58_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 102
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_37_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_curclass
    .local pmc rx137_bstack
    .local pmc rx137_cstack
    (rx137_cur, rx137_tgt, rx137_pos, rx137_curclass, rx137_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx137_cur
    length rx137_eos, rx137_tgt
    eq $I19, 1, rx137_restart406
    gt rx137_pos, rx137_eos, rx137_fail407
    repr_get_attr_int $I11, self, rx137_curclass, "$!from"
    ne $I11, -1, rxscan138_done413
    goto rxscan138_scan412
  rxscan138_loop411:
    inc rx137_pos
    gt rx137_pos, rx137_eos, rx137_fail407
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!from", rx137_pos
  rxscan138_scan412:
    nqp_rxmark rx137_bstack, rxscan138_loop411, rx137_pos, 0
  rxscan138_done413:
    add $I11, rx137_pos, 2
    gt $I11, rx137_eos, rx137_fail407
    substr $S10, rx137_tgt, rx137_pos, 2
    ne $S10, ucs4:"\\e", rx137_fail407
    add rx137_pos, 2
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail407
    rx137_cur."!cursor_pass"(rx137_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx137_cur)
  rx137_restart406:
    repr_get_attr_obj rx137_cstack, rx137_cur, rx137_curclass, "$!cstack"
  rx137_fail407:
    unless rx137_bstack, rx137_done405
    pop $I19, rx137_bstack
    if_null rx137_cstack, rx137_cstack_done410
    unless rx137_cstack, rx137_cstack_done410
    dec $I19
    set $P11, rx137_cstack[$I19]
  rx137_cstack_done410:
    pop rx137_rep, rx137_bstack
    pop rx137_pos, rx137_bstack
    pop $I19, rx137_bstack
    lt rx137_pos, -1, rx137_done405
    lt rx137_pos, 0, rx137_fail407
    eq $I19, 0, rx137_fail407
    nqp_islist $I20, rx137_cstack
    unless $I20, rx137_jump408
    elements $I18, rx137_bstack
    le $I18, 0, rx137_cut409
    dec $I18
    set $I18, rx137_bstack[$I18]
  rx137_cut409:
    assign rx137_cstack, $I18
  rx137_jump408:
    jump $I19
  rx137_done405:
    rx137_cur."!cursor_fail"()
    .return (rx137_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1346233437.626_caps" :subid("cuid_memo_59_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1346233437.626_nfa" :subid("cuid_memo_60_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 101
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_38_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    .local pmc rx139_curclass
    .local pmc rx139_bstack
    .local pmc rx139_cstack
    (rx139_cur, rx139_tgt, rx139_pos, rx139_curclass, rx139_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx139_cur
    length rx139_eos, rx139_tgt
    eq $I19, 1, rx139_restart416
    gt rx139_pos, rx139_eos, rx139_fail417
    repr_get_attr_int $I11, self, rx139_curclass, "$!from"
    ne $I11, -1, rxscan140_done423
    goto rxscan140_scan422
  rxscan140_loop421:
    inc rx139_pos
    gt rx139_pos, rx139_eos, rx139_fail417
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!from", rx139_pos
  rxscan140_scan422:
    nqp_rxmark rx139_bstack, rxscan140_loop421, rx139_pos, 0
  rxscan140_done423:
    add $I11, rx139_pos, 2
    gt $I11, rx139_eos, rx139_fail417
    substr $S10, rx139_tgt, rx139_pos, 2
    ne $S10, ucs4:"\\x", rx139_fail417
    add rx139_pos, 2
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail417
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt141_0425
    nqp_push_label $P11, alt141_1427
    nqp_rxmark rx139_bstack, alt141_end424, -1, 0
    rx139_cur."!alt"(rx139_pos, "alt_nfa__6_1346233438.499", $P11)
    goto rx139_fail417
  alt141_0425:
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail417
    nqp_rxmark rx139_bstack, rxsubrule142_pass426, -1, 0
  rxsubrule142_pass426:
    rx139_cstack = rx139_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx139_pos, $P11, rx139_curclass, "$!pos"
    goto alt141_end424
  alt141_1427:
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail417
    substr $S10, rx139_tgt, rx139_pos, 1
    ne $S10, ucs4:"[", rx139_fail417
    add rx139_pos, 1
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail417
    nqp_rxmark rx139_bstack, rxsubrule143_pass428, -1, 0
  rxsubrule143_pass428:
    rx139_cstack = rx139_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx139_pos, $P11, rx139_curclass, "$!pos"
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail417
    substr $S10, rx139_tgt, rx139_pos, 1
    ne $S10, ucs4:"]", rx139_fail417
    add rx139_pos, 1
    goto alt141_end424
  alt141_end424:
    nqp_rxcommit rx139_bstack, alt141_end424
    rx139_cur."!cursor_pass"(rx139_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx139_cur)
  rx139_restart416:
    repr_get_attr_obj rx139_cstack, rx139_cur, rx139_curclass, "$!cstack"
  rx139_fail417:
    unless rx139_bstack, rx139_done415
    pop $I19, rx139_bstack
    if_null rx139_cstack, rx139_cstack_done420
    unless rx139_cstack, rx139_cstack_done420
    dec $I19
    set $P11, rx139_cstack[$I19]
  rx139_cstack_done420:
    pop rx139_rep, rx139_bstack
    pop rx139_pos, rx139_bstack
    pop $I19, rx139_bstack
    lt rx139_pos, -1, rx139_done415
    lt rx139_pos, 0, rx139_fail417
    eq $I19, 0, rx139_fail417
    nqp_islist $I20, rx139_cstack
    unless $I20, rx139_jump418
    elements $I18, rx139_bstack
    le $I18, 0, rx139_cut419
    dec $I18
    set $I18, rx139_bstack[$I18]
  rx139_cut419:
    assign rx139_cstack, $I18
  rx139_jump418:
    jump $I19
  rx139_done415:
    rx139_cur."!cursor_fail"()
    .return (rx139_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1346233437.626_caps" :subid("cuid_memo_61_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["hexint"], $P502
    box $P503, 0
    set $P501["hexints"], $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1346233437.626_nfa" :subid("cuid_memo_62_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 120
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1346233437.626_alt_nfa__6_1346233438.499" :subid("cuid_memo_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 8
    push $P504, $P505
    box $P506, "hexint"
    push $P504, $P506
    box $P507, 0
    push $P504, $P507
    push $P502, $P504
    push $P501, $P502
    new $P508, 'ResizablePMCArray'
    new $P509, 'ResizablePMCArray'
    push $P508, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 2
    push $P510, $P511
    box $P512, 91
    push $P510, $P512
    box $P513, 2
    push $P510, $P513
    push $P508, $P510
    new $P514, 'ResizablePMCArray'
    box $P515, 8
    push $P514, $P515
    box $P516, "hexints"
    push $P514, $P516
    box $P517, 3
    push $P514, $P517
    push $P508, $P514
    new $P518, 'ResizablePMCArray'
    box $P519, 2
    push $P518, $P519
    box $P520, 93
    push $P518, $P520
    box $P521, 0
    push $P518, $P521
    push $P508, $P518
    push $P501, $P508
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_39_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx144_restart431
    gt rx144_pos, rx144_eos, rx144_fail432
    repr_get_attr_int $I11, self, rx144_curclass, "$!from"
    ne $I11, -1, rxscan145_done438
    goto rxscan145_scan437
  rxscan145_loop436:
    inc rx144_pos
    gt rx144_pos, rx144_eos, rx144_fail432
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!from", rx144_pos
  rxscan145_scan437:
    nqp_rxmark rx144_bstack, rxscan145_loop436, rx144_pos, 0
  rxscan145_done438:
    add $I11, rx144_pos, 2
    gt $I11, rx144_eos, rx144_fail432
    substr $S10, rx144_tgt, rx144_pos, 2
    ne $S10, ucs4:"\\o", rx144_fail432
    add rx144_pos, 2
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail432
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt146_0440
    nqp_push_label $P11, alt146_1442
    nqp_rxmark rx144_bstack, alt146_end439, -1, 0
    rx144_cur."!alt"(rx144_pos, "alt_nfa__7_1346233438.525", $P11)
    goto rx144_fail432
  alt146_0440:
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."octint"()
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail432
    nqp_rxmark rx144_bstack, rxsubrule147_pass441, -1, 0
  rxsubrule147_pass441:
    rx144_cstack = rx144_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx144_pos, $P11, rx144_curclass, "$!pos"
    goto alt146_end439
  alt146_1442:
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail432
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:"[", rx144_fail432
    add rx144_pos, 1
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."octints"()
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail432
    nqp_rxmark rx144_bstack, rxsubrule148_pass443, -1, 0
  rxsubrule148_pass443:
    rx144_cstack = rx144_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx144_pos, $P11, rx144_curclass, "$!pos"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail432
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:"]", rx144_fail432
    add rx144_pos, 1
    goto alt146_end439
  alt146_end439:
    nqp_rxcommit rx144_bstack, alt146_end439
    rx144_cur."!cursor_pass"(rx144_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx144_cur)
  rx144_restart431:
    repr_get_attr_obj rx144_cstack, rx144_cur, rx144_curclass, "$!cstack"
  rx144_fail432:
    unless rx144_bstack, rx144_done430
    pop $I19, rx144_bstack
    if_null rx144_cstack, rx144_cstack_done435
    unless rx144_cstack, rx144_cstack_done435
    dec $I19
    set $P11, rx144_cstack[$I19]
  rx144_cstack_done435:
    pop rx144_rep, rx144_bstack
    pop rx144_pos, rx144_bstack
    pop $I19, rx144_bstack
    lt rx144_pos, -1, rx144_done430
    lt rx144_pos, 0, rx144_fail432
    eq $I19, 0, rx144_fail432
    nqp_islist $I20, rx144_cstack
    unless $I20, rx144_jump433
    elements $I18, rx144_bstack
    le $I18, 0, rx144_cut434
    dec $I18
    set $I18, rx144_bstack[$I18]
  rx144_cut434:
    assign rx144_cstack, $I18
  rx144_jump433:
    jump $I19
  rx144_done430:
    rx144_cur."!cursor_fail"()
    .return (rx144_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1346233437.626_caps" :subid("cuid_memo_64_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["octint"], $P502
    box $P503, 0
    set $P501["octints"], $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1346233437.626_nfa" :subid("cuid_memo_65_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 111
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1346233437.626_alt_nfa__7_1346233438.525" :subid("cuid_memo_66_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 8
    push $P504, $P505
    box $P506, "octint"
    push $P504, $P506
    box $P507, 0
    push $P504, $P507
    push $P502, $P504
    push $P501, $P502
    new $P508, 'ResizablePMCArray'
    new $P509, 'ResizablePMCArray'
    push $P508, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 2
    push $P510, $P511
    box $P512, 91
    push $P510, $P512
    box $P513, 2
    push $P510, $P513
    push $P508, $P510
    new $P514, 'ResizablePMCArray'
    box $P515, 8
    push $P514, $P515
    box $P516, "octints"
    push $P514, $P516
    box $P517, 3
    push $P514, $P517
    push $P508, $P514
    new $P518, 'ResizablePMCArray'
    box $P519, 2
    push $P518, $P519
    box $P520, 93
    push $P518, $P520
    box $P521, 0
    push $P518, $P521
    push $P508, $P518
    push $P501, $P508
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_40_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_curclass
    .local pmc rx149_bstack
    .local pmc rx149_cstack
    (rx149_cur, rx149_tgt, rx149_pos, rx149_curclass, rx149_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx149_cur
    length rx149_eos, rx149_tgt
    eq $I19, 1, rx149_restart446
    gt rx149_pos, rx149_eos, rx149_fail447
    repr_get_attr_int $I11, self, rx149_curclass, "$!from"
    ne $I11, -1, rxscan150_done453
    goto rxscan150_scan452
  rxscan150_loop451:
    inc rx149_pos
    gt rx149_pos, rx149_eos, rx149_fail447
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!from", rx149_pos
  rxscan150_scan452:
    nqp_rxmark rx149_bstack, rxscan150_loop451, rx149_pos, 0
  rxscan150_done453:
    add $I11, rx149_pos, 2
    gt $I11, rx149_eos, rx149_fail447
    substr $S10, rx149_tgt, rx149_pos, 2
    ne $S10, ucs4:"\\c", rx149_fail447
    add rx149_pos, 2
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail447
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail447
    nqp_rxmark rx149_bstack, rxsubrule151_pass454, -1, 0
  rxsubrule151_pass454:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
    rx149_cur."!cursor_pass"(rx149_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx149_cur)
  rx149_restart446:
    repr_get_attr_obj rx149_cstack, rx149_cur, rx149_curclass, "$!cstack"
  rx149_fail447:
    unless rx149_bstack, rx149_done445
    pop $I19, rx149_bstack
    if_null rx149_cstack, rx149_cstack_done450
    unless rx149_cstack, rx149_cstack_done450
    dec $I19
    set $P11, rx149_cstack[$I19]
  rx149_cstack_done450:
    pop rx149_rep, rx149_bstack
    pop rx149_pos, rx149_bstack
    pop $I19, rx149_bstack
    lt rx149_pos, -1, rx149_done445
    lt rx149_pos, 0, rx149_fail447
    eq $I19, 0, rx149_fail447
    nqp_islist $I20, rx149_cstack
    unless $I20, rx149_jump448
    elements $I18, rx149_bstack
    le $I18, 0, rx149_cut449
    dec $I18
    set $I18, rx149_bstack[$I18]
  rx149_cut449:
    assign rx149_cstack, $I18
  rx149_jump448:
    jump $I19
  rx149_done445:
    rx149_cur."!cursor_fail"()
    .return (rx149_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1346233437.626_caps" :subid("cuid_memo_67_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["charspec"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1346233437.626_nfa" :subid("cuid_memo_68_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 99
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_41_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 102
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_curclass
    .local pmc rx152_bstack
    .local pmc rx152_cstack
    (rx152_cur, rx152_tgt, rx152_pos, rx152_curclass, rx152_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx152_cur
    length rx152_eos, rx152_tgt
    eq $I19, 1, rx152_restart457
    gt rx152_pos, rx152_eos, rx152_fail458
    repr_get_attr_int $I11, self, rx152_curclass, "$!from"
    ne $I11, -1, rxscan153_done464
    goto rxscan153_scan463
  rxscan153_loop462:
    inc rx152_pos
    gt rx152_pos, rx152_eos, rx152_fail458
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!from", rx152_pos
  rxscan153_scan463:
    nqp_rxmark rx152_bstack, rxscan153_loop462, rx152_pos, 0
  rxscan153_done464:
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail458
    substr $S10, rx152_tgt, rx152_pos, 1
    ne $S10, ucs4:"\\", rx152_fail458
    add rx152_pos, 1
    nqp_rxmark rx152_bstack, rxcap154_fail466, rx152_pos, 0
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail458
    substr $S10, rx152_tgt, rx152_pos, 1
    ne $S10, ucs4:"0", rx152_fail458
    add rx152_pos, 1
    nqp_rxpeek $I19, rx152_bstack, rxcap154_fail466
    inc $I19
    set $I11, rx152_bstack[$I19]
    $P11 = rx152_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx152_pos)
    rx152_cstack = rx152_cur."!cursor_capture"($P11, "sym")
    goto rxcap154_done465
  rxcap154_fail466:
    goto rx152_fail458
  rxcap154_done465:
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail458
    rx152_cur."!cursor_pass"(rx152_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx152_cur)
  rx152_restart457:
    repr_get_attr_obj rx152_cstack, rx152_cur, rx152_curclass, "$!cstack"
  rx152_fail458:
    unless rx152_bstack, rx152_done456
    pop $I19, rx152_bstack
    if_null rx152_cstack, rx152_cstack_done461
    unless rx152_cstack, rx152_cstack_done461
    dec $I19
    set $P11, rx152_cstack[$I19]
  rx152_cstack_done461:
    pop rx152_rep, rx152_bstack
    pop rx152_pos, rx152_bstack
    pop $I19, rx152_bstack
    lt rx152_pos, -1, rx152_done456
    lt rx152_pos, 0, rx152_fail458
    eq $I19, 0, rx152_fail458
    nqp_islist $I20, rx152_cstack
    unless $I20, rx152_jump459
    elements $I18, rx152_bstack
    le $I18, 0, rx152_cut460
    dec $I18
    set $I18, rx152_bstack[$I18]
  rx152_cut460:
    assign rx152_cstack, $I18
  rx152_jump459:
    jump $I19
  rx152_done456:
    rx152_cur."!cursor_fail"()
    .return (rx152_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1346233437.626_caps" :subid("cuid_memo_69_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["sym"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1346233437.626_nfa" :subid("cuid_memo_70_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 92
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 48
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 8
    push $P511, $P512
    box $P513, "quotemod_check"
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_43_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .const 'Sub' $P508 = 'cuid_183_1346233437.626' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_42_1346233437.626' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_184_1346233437.626' 
    capture_lex $P508 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_curclass
    .local pmc rx155_bstack
    .local pmc rx155_cstack
    (rx155_cur, rx155_tgt, rx155_pos, rx155_curclass, rx155_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    eq $I19, 1, rx155_restart469
    gt rx155_pos, rx155_eos, rx155_fail470
    repr_get_attr_int $I11, self, rx155_curclass, "$!from"
    ne $I11, -1, rxscan156_done476
    goto rxscan156_scan475
  rxscan156_loop474:
    inc rx155_pos
    gt rx155_pos, rx155_eos, rx155_fail470
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!from", rx155_pos
  rxscan156_scan475:
    nqp_rxmark rx155_bstack, rxscan156_loop474, rx155_pos, 0
  rxscan156_done476:
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    store_lex unicode:"$\x{a2}", rx155_cur
    $P501 = $P101."MATCH"()
    set $P102, $P501
    .const 'Sub' $P502 = 'cuid_183_1346233437.626' 
    capture_lex $P502
    $P503 = $P502()
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail470
    substr $S10, rx155_tgt, rx155_pos, 1
    ne $S10, ucs4:"\\", rx155_fail470
    add rx155_pos, 1
  alt157_0478:
    nqp_rxmark rx155_bstack, alt157_1496, rx155_pos, 0
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail470
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt158_0480
    nqp_push_label $P11, alt158_1492
    nqp_rxmark rx155_bstack, alt158_end479, -1, 0
    rx155_cur."!alt"(rx155_pos, "alt_nfa__8_1346233438.613", $P11)
    goto rx155_fail470
  alt158_0480:
    .const 'Sub' $P504 = 'cuid_42_1346233437.626' 
    capture_lex $P504
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur.$P504()
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail470
    nqp_rxmark rx155_bstack, rxsubrule161_pass491, -1, 0
  rxsubrule161_pass491:
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx155_pos, $P11, rx155_curclass, "$!pos"
    goto alt158_end479
  alt158_1492:
    nqp_rxmark rx155_bstack, rxcap162_fail494, rx155_pos, 0
    ge rx155_pos, rx155_eos, rx155_fail470
    is_cclass $I11, .CCLASS_WORD, rx155_tgt, rx155_pos
    unless $I11, rx155_fail470
    add rx155_pos, 1
    nqp_rxpeek $I19, rx155_bstack, rxcap162_fail494
    inc $I19
    set $I11, rx155_bstack[$I19]
    $P11 = rx155_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx155_pos)
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "x")
    goto rxcap162_done493
  rxcap162_fail494:
    goto rx155_fail470
  rxcap162_done493:
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    store_lex unicode:"$\x{a2}", rx155_cur
    $P505 = $P101."MATCH"()
    set $P102, $P505
    .const 'Sub' $P506 = 'cuid_184_1346233437.626' 
    capture_lex $P506
    $P507 = $P506()
    goto alt158_end479
  alt158_end479:
    nqp_rxcommit rx155_bstack, alt158_end479
    goto alt157_end477
  alt157_1496:
    nqp_rxmark rx155_bstack, rxcap163_fail498, rx155_pos, 0
    ge rx155_pos, rx155_eos, rx155_fail470
    add rx155_pos, 1
    nqp_rxpeek $I19, rx155_bstack, rxcap163_fail498
    inc $I19
    set $I11, rx155_bstack[$I19]
    $P11 = rx155_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx155_pos)
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "textq")
    goto rxcap163_done497
  rxcap163_fail498:
    goto rx155_fail470
  rxcap163_done497:
  alt157_end477:
    rx155_cur."!cursor_pass"(rx155_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx155_cur)
  rx155_restart469:
    repr_get_attr_obj rx155_cstack, rx155_cur, rx155_curclass, "$!cstack"
  rx155_fail470:
    unless rx155_bstack, rx155_done468
    pop $I19, rx155_bstack
    if_null rx155_cstack, rx155_cstack_done473
    unless rx155_cstack, rx155_cstack_done473
    dec $I19
    set $P11, rx155_cstack[$I19]
  rx155_cstack_done473:
    pop rx155_rep, rx155_bstack
    pop rx155_pos, rx155_bstack
    pop $I19, rx155_bstack
    lt rx155_pos, -1, rx155_done468
    lt rx155_pos, 0, rx155_fail470
    eq $I19, 0, rx155_fail470
    nqp_islist $I20, rx155_cstack
    unless $I20, rx155_jump471
    elements $I18, rx155_bstack
    le $I18, 0, rx155_cut472
    dec $I18
    set $I18, rx155_bstack[$I18]
  rx155_cut472:
    assign rx155_cstack, $I18
  rx155_jump471:
    jump $I19
  rx155_done468:
    rx155_cur."!cursor_fail"()
    .return (rx155_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1346233437.626_caps" :subid("cuid_memo_71_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["textqq"], $P502
    box $P503, 0
    set $P501["x"], $P503
    box $P504, 0
    set $P501["textq"], $P504
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1346233437.626_alt_nfa__8_1346233438.613" :subid("cuid_memo_72_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 5
    push $P504, $P505
    box $P506, 8192
    push $P504, $P506
    box $P507, 0
    push $P504, $P507
    push $P502, $P504
    push $P501, $P502
    new $P508, 'ResizablePMCArray'
    new $P509, 'ResizablePMCArray'
    push $P508, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 4
    push $P510, $P511
    box $P512, 8192
    push $P510, $P512
    box $P513, 2
    push $P510, $P513
    push $P508, $P510
    new $P514, 'ResizablePMCArray'
    box $P515, 0
    push $P514, $P515
    box $P516, 0
    push $P514, $P516
    box $P517, 0
    push $P514, $P517
    push $P508, $P514
    push $P501, $P508
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346233437.626") :anon :lex :outer("cuid_43_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 104

    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_42_1346233437.626") :anon :lex :outer("cuid_43_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_curclass
    .local pmc rx159_bstack
    .local pmc rx159_cstack
    (rx159_cur, rx159_tgt, rx159_pos, rx159_curclass, rx159_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx159_cur
    length rx159_eos, rx159_tgt
    eq $I19, 1, rx159_restart483
    gt rx159_pos, rx159_eos, rx159_fail484
    repr_get_attr_int $I11, self, rx159_curclass, "$!from"
    ne $I11, -1, rxscan160_done490
    goto rxscan160_scan489
  rxscan160_loop488:
    inc rx159_pos
    gt rx159_pos, rx159_eos, rx159_fail484
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!from", rx159_pos
  rxscan160_scan489:
    nqp_rxmark rx159_bstack, rxscan160_loop488, rx159_pos, 0
  rxscan160_done490:
    ge rx159_pos, rx159_eos, rx159_fail484
    is_cclass $I11, .CCLASS_WORD, rx159_tgt, rx159_pos
    if $I11, rx159_fail484
    add rx159_pos, 1
    rx159_cur."!cursor_pass"(rx159_pos, 'backtrack'=>1)
    .return (rx159_cur)
  rx159_restart483:
    repr_get_attr_obj rx159_cstack, rx159_cur, rx159_curclass, "$!cstack"
  rx159_fail484:
    unless rx159_bstack, rx159_done482
    pop $I19, rx159_bstack
    if_null rx159_cstack, rx159_cstack_done487
    unless rx159_cstack, rx159_cstack_done487
    dec $I19
    set $P11, rx159_cstack[$I19]
  rx159_cstack_done487:
    pop rx159_rep, rx159_bstack
    pop rx159_pos, rx159_bstack
    pop $I19, rx159_bstack
    lt rx159_pos, -1, rx159_done482
    lt rx159_pos, 0, rx159_fail484
    eq $I19, 0, rx159_fail484
    nqp_islist $I20, rx159_cstack
    unless $I20, rx159_jump485
    elements $I18, rx159_bstack
    le $I18, 0, rx159_cut486
    dec $I18
    set $I18, rx159_bstack[$I18]
  rx159_cut486:
    assign rx159_cstack, $I18
  rx159_jump485:
    jump $I19
  rx159_done482:
    rx159_cur."!cursor_fail"()
    .return (rx159_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1346233437.626_caps" :subid("cuid_memo_73_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1346233437.626_nfa" :subid("cuid_memo_74_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 5
    push $P503, $P504
    box $P505, 8192
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346233437.626") :anon :lex :outer("cuid_43_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 109

    find_lex $P501, "$/"
    $P502 = $P501."CURSOR"()
    find_lex $P504, "$/"
    set $P503, $P504["x"]
    unless_null $P503, fallback495
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback495:
    $P506 = $P503."Str"()
    set $S503, $P506
    concat $S502, "Unrecognized backslash sequence: '\\", $S503
    concat $S501, $S502, "'"
    $P507 = $P502."panic"($S501)
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 115
    .param pmc _lex_param_0 
    .const 'Sub' $P502 = 'cuid_44_1346233437.626' 
    capture_lex $P502 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_curclass
    .local pmc rx164_bstack
    .local pmc rx164_cstack
    (rx164_cur, rx164_tgt, rx164_pos, rx164_curclass, rx164_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    eq $I19, 1, rx164_restart501
    gt rx164_pos, rx164_eos, rx164_fail502
    repr_get_attr_int $I11, self, rx164_curclass, "$!from"
    ne $I11, -1, rxscan165_done508
    goto rxscan165_scan507
  rxscan165_loop506:
    inc rx164_pos
    gt rx164_pos, rx164_eos, rx164_fail502
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!from", rx164_pos
  rxscan165_scan507:
    nqp_rxmark rx164_bstack, rxscan165_loop506, rx164_pos, 0
  rxscan165_done508:
  alt166_0510:
    nqp_rxmark rx164_bstack, alt166_1512, rx164_pos, 0
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!pos", rx164_pos
    $P11 = rx164_cur."integer"()
    repr_get_attr_int $I11, $P11, rx164_curclass, "$!pos"
    lt $I11, 0, rx164_fail502
    nqp_rxmark rx164_bstack, rxsubrule167_pass511, -1, 0
  rxsubrule167_pass511:
    rx164_cstack = rx164_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx164_pos, $P11, rx164_curclass, "$!pos"
    goto alt166_end509
  alt166_1512:
    ge rx164_pos, rx164_eos, rx164_fail502
    substr $S11, rx164_tgt, rx164_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx164_fail502
    inc rx164_pos
    set rx164_rep, 0
    nqp_rxmark rx164_bstack, rxquantf168_loop513, rx164_pos, rx164_rep
    goto rxquantf168_done514
  rxquantf168_loop513:
    set $I12, rx164_rep
    nqp_rxmark rx164_bstack, rxconj169_fail516, rx164_pos, 0
    goto rxconj169_first517
  rxconj169_fail516:
    goto rx164_fail502
  rxconj169_first517:
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail502
    substr $S10, rx164_tgt, rx164_pos, 1
    eq $S10, ucs4:"]", rx164_fail502
    add rx164_pos, 1
    nqp_rxpeek $I19, rx164_bstack, rxconj169_fail516
    inc $I19
    set $I11, rx164_bstack[$I19]
    nqp_rxmark rx164_bstack, rxconj169_fail516, $I11, rx164_pos
    set rx164_pos, $I11
    ge rx164_pos, rx164_eos, rx164_fail502
    substr $S11, rx164_tgt, rx164_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx164_fail502
    inc rx164_pos
    nqp_rxpeek $I19, rx164_bstack, rxconj169_fail516
    inc $I19
    set $I11, rx164_bstack[$I19]
    inc $I19
    set $I12, rx164_bstack[$I19]
    ne rx164_pos, $I12, rx164_fail502
    set rx164_pos, $I11
    ge rx164_pos, rx164_eos, rx164_fail502
    add rx164_pos, 1
    set rx164_rep, $I12
    inc rx164_rep
    nqp_rxmark rx164_bstack, rxquantf168_loop513, rx164_pos, rx164_rep
  rxquantf168_done514:
    ge rx164_pos, rx164_eos, rx164_fail502
    substr $S11, rx164_tgt, rx164_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx164_fail502
    inc rx164_pos
    .const 'Sub' $P501 = 'cuid_44_1346233437.626' 
    capture_lex $P501
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!pos", rx164_pos
    $P11 = rx164_cur."before"($P501)
    repr_get_attr_int $I11, $P11, rx164_curclass, "$!pos"
    lt $I11, 0, rx164_fail502
  alt166_end509:
    rx164_cur."!cursor_pass"(rx164_pos, "charname", 'backtrack'=>1)
    .return (rx164_cur)
  rx164_restart501:
    repr_get_attr_obj rx164_cstack, rx164_cur, rx164_curclass, "$!cstack"
  rx164_fail502:
    unless rx164_bstack, rx164_done500
    pop $I19, rx164_bstack
    if_null rx164_cstack, rx164_cstack_done505
    unless rx164_cstack, rx164_cstack_done505
    dec $I19
    set $P11, rx164_cstack[$I19]
  rx164_cstack_done505:
    pop rx164_rep, rx164_bstack
    pop rx164_pos, rx164_bstack
    pop $I19, rx164_bstack
    lt rx164_pos, -1, rx164_done500
    lt rx164_pos, 0, rx164_fail502
    eq $I19, 0, rx164_fail502
    nqp_islist $I20, rx164_cstack
    unless $I20, rx164_jump503
    elements $I18, rx164_bstack
    le $I18, 0, rx164_cut504
    dec $I18
    set $I18, rx164_bstack[$I18]
  rx164_cut504:
    assign rx164_cstack, $I18
  rx164_jump503:
    jump $I19
  rx164_done500:
    rx164_cur."!cursor_fail"()
    .return (rx164_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1346233437.626_caps" :subid("cuid_memo_75_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["integer"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1346233437.626") :anon :lex :outer("cuid_45_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_curclass
    .local pmc rx170_bstack
    .local pmc rx170_cstack
    (rx170_cur, rx170_tgt, rx170_pos, rx170_curclass, rx170_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    eq $I19, 1, rx170_restart520
    gt rx170_pos, rx170_eos, rx170_fail521
    repr_get_attr_int $I11, self, rx170_curclass, "$!from"
    ne $I11, -1, rxscan171_done527
    goto rxscan171_scan526
  rxscan171_loop525:
    inc rx170_pos
    gt rx170_pos, rx170_eos, rx170_fail521
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!from", rx170_pos
  rxscan171_scan526:
    nqp_rxmark rx170_bstack, rxscan171_loop525, rx170_pos, 0
  rxscan171_done527:
    nqp_rxmark rx170_bstack, rxquantr172_done529, rx170_pos, 0
  rxquantr172_loop528:
    ge rx170_pos, rx170_eos, rx170_fail521
    is_cclass $I11, .CCLASS_WHITESPACE, rx170_tgt, rx170_pos
    unless $I11, rx170_fail521
    add rx170_pos, 1
    nqp_rxpeek $I19, rx170_bstack, rxquantr172_done529
    inc $I19
    inc $I19
    set rx170_rep, rx170_bstack[$I19]
    nqp_rxcommit rx170_bstack, rxquantr172_done529
    inc rx170_rep
    nqp_rxmark rx170_bstack, rxquantr172_done529, rx170_pos, rx170_rep
    goto rxquantr172_loop528
  rxquantr172_done529:
  alt173_0531:
    nqp_rxmark rx170_bstack, alt173_1532, rx170_pos, 0
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail521
    substr $S10, rx170_tgt, rx170_pos, 1
    ne $S10, ucs4:"]", rx170_fail521
    add rx170_pos, 1
    goto alt173_end530
  alt173_1532:
    ge rx170_pos, rx170_eos, rx170_fail521
    substr $S11, rx170_tgt, rx170_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx170_fail521
    inc rx170_pos
  alt173_end530:
    rx170_cur."!cursor_pass"(rx170_pos, 'backtrack'=>1)
    .return (rx170_cur)
  rx170_restart520:
    repr_get_attr_obj rx170_cstack, rx170_cur, rx170_curclass, "$!cstack"
  rx170_fail521:
    unless rx170_bstack, rx170_done519
    pop $I19, rx170_bstack
    if_null rx170_cstack, rx170_cstack_done524
    unless rx170_cstack, rx170_cstack_done524
    dec $I19
    set $P11, rx170_cstack[$I19]
  rx170_cstack_done524:
    pop rx170_rep, rx170_bstack
    pop rx170_pos, rx170_bstack
    pop $I19, rx170_bstack
    lt rx170_pos, -1, rx170_done519
    lt rx170_pos, 0, rx170_fail521
    eq $I19, 0, rx170_fail521
    nqp_islist $I20, rx170_cstack
    unless $I20, rx170_jump522
    elements $I18, rx170_bstack
    le $I18, 0, rx170_cut523
    dec $I18
    set $I18, rx170_bstack[$I18]
  rx170_cut523:
    assign rx170_cstack, $I18
  rx170_jump522:
    jump $I19
  rx170_done519:
    rx170_cur."!cursor_fail"()
    .return (rx170_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1346233437.626_caps" :subid("cuid_memo_76_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1346233437.626_nfa" :subid("cuid_memo_77_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 4
    push $P503, $P504
    box $P505, 32
    push $P503, $P505
    box $P506, 1
    push $P503, $P506
    box $P507, 1
    push $P503, $P507
    box $P508, 0
    push $P503, $P508
    box $P509, 2
    push $P503, $P509
    push $P501, $P503
    new $P510, 'ResizablePMCArray'
    box $P511, 0
    push $P510, $P511
    box $P512, 0
    push $P510, $P512
    box $P513, 0
    push $P510, $P513
    push $P501, $P510
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_46_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 120
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
    eq $I19, 1, rx174_restart535
    gt rx174_pos, rx174_eos, rx174_fail536
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done542
    goto rxscan175_scan541
  rxscan175_loop540:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail536
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan541:
    nqp_rxmark rx174_bstack, rxscan175_loop540, rx174_pos, 0
  rxscan175_done542:
    nqp_rxmark rx174_bstack, rxquantr176_done544, -1, 0
  rxquantr176_loop543:
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."ws"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail536
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."charname"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail536
    nqp_rxmark rx174_bstack, rxsubrule178_pass546, -1, 0
  rxsubrule178_pass546:
    rx174_cstack = rx174_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."ws"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail536
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    nqp_rxpeek $I19, rx174_bstack, rxquantr176_done544
    inc $I19
    inc $I19
    set rx174_rep, rx174_bstack[$I19]
    nqp_rxcommit rx174_bstack, rxquantr176_done544
    inc rx174_rep
    nqp_rxmark rx174_bstack, rxquantr176_done544, rx174_pos, rx174_rep
    add $I11, rx174_pos, 1
    gt $I11, rx174_eos, rx174_fail536
    substr $S10, rx174_tgt, rx174_pos, 1
    ne $S10, ucs4:",", rx174_fail536
    add rx174_pos, 1
    goto rxquantr176_loop543
  rxquantr176_done544:
    rx174_cur."!cursor_pass"(rx174_pos, "charnames", 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart535:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail536:
    unless rx174_bstack, rx174_done534
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done539
    unless rx174_cstack, rx174_cstack_done539
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done539:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done534
    lt rx174_pos, 0, rx174_fail536
    eq $I19, 0, rx174_fail536
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump537
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut538
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut538:
    assign rx174_cstack, $I18
  rx174_jump537:
    jump $I19
  rx174_done534:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1346233437.626_caps" :subid("cuid_memo_78_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 2
    set $P501["charname"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1346233437.626_nfa" :subid("cuid_memo_79_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "ws"
    push $P507, $P509
    box $P510, 4
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 2
    push $P511, $P512
    box $P513, 44
    push $P511, $P513
    box $P514, 2
    push $P511, $P514
    box $P515, 1
    push $P511, $P515
    box $P516, 0
    push $P511, $P516
    box $P517, 0
    push $P511, $P517
    push $P501, $P511
    new $P518, 'ResizablePMCArray'
    box $P519, 8
    push $P518, $P519
    box $P520, "charname"
    push $P518, $P520
    box $P521, 5
    push $P518, $P521
    push $P501, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 8
    push $P522, $P523
    box $P524, "ws"
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P501, $P522
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_47_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 121
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
    eq $I19, 1, rx180_restart550
    gt rx180_pos, rx180_eos, rx180_fail551
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done557
    goto rxscan181_scan556
  rxscan181_loop555:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail551
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan556:
    nqp_rxmark rx180_bstack, rxscan181_loop555, rx180_pos, 0
  rxscan181_done557:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt182_0559
    nqp_push_label $P11, alt182_1561
    nqp_push_label $P11, alt182_2568
    nqp_push_label $P11, alt182_3569
    nqp_rxmark rx180_bstack, alt182_end558, -1, 0
    rx180_cur."!alt"(rx180_pos, "alt_nfa__9_1346233438.69", $P11)
    goto rx180_fail551
  alt182_0559:
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail551
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"[", rx180_fail551
    add rx180_pos, 1
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail551
    nqp_rxmark rx180_bstack, rxsubrule183_pass560, -1, 0
  rxsubrule183_pass560:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail551
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"]", rx180_fail551
    add rx180_pos, 1
    goto alt182_end558
  alt182_1561:
    nqp_rxmark rx180_bstack, rxquantr184_done563, -1, 0
  rxquantr184_loop562:
    ge rx180_pos, rx180_eos, rx180_fail551
    is_cclass $I11, .CCLASS_NUMERIC, rx180_tgt, rx180_pos
    unless $I11, rx180_fail551
    add rx180_pos, 1
    nqp_rxpeek $I19, rx180_bstack, rxquantr184_done563
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr184_done563
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr184_done563, rx180_pos, rx180_rep
    goto rxquantr184_loop562
  rxquantr184_done563:
    nqp_rxmark rx180_bstack, rxquantr185_done565, rx180_pos, 0
  rxquantr185_loop564:
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail551
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"_", rx180_fail551
    add rx180_pos, 1
    nqp_rxmark rx180_bstack, rxquantr186_done567, -1, 0
  rxquantr186_loop566:
    ge rx180_pos, rx180_eos, rx180_fail551
    is_cclass $I11, .CCLASS_NUMERIC, rx180_tgt, rx180_pos
    unless $I11, rx180_fail551
    add rx180_pos, 1
    nqp_rxpeek $I19, rx180_bstack, rxquantr186_done567
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr186_done567
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr186_done567, rx180_pos, rx180_rep
    goto rxquantr186_loop566
  rxquantr186_done567:
    nqp_rxpeek $I19, rx180_bstack, rxquantr185_done565
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr185_done565
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr185_done565, rx180_pos, rx180_rep
    goto rxquantr185_loop564
  rxquantr185_done565:
    goto alt182_end558
  alt182_2568:
    ge rx180_pos, rx180_eos, rx180_fail551
    substr $S11, rx180_tgt, rx180_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx180_fail551
    inc rx180_pos
    goto alt182_end558
  alt182_3569:
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail551
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    goto alt182_end558
  alt182_end558:
    nqp_rxcommit rx180_bstack, alt182_end558
    rx180_cur."!cursor_pass"(rx180_pos, "charspec", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart550:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail551:
    unless rx180_bstack, rx180_done549
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done554
    unless rx180_cstack, rx180_cstack_done554
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done554:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done549
    lt rx180_pos, 0, rx180_fail551
    eq $I19, 0, rx180_fail551
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump552
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut553
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut553:
    assign rx180_cstack, $I18
  rx180_jump552:
    jump $I19
  rx180_done549:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1346233437.626_caps" :subid("cuid_memo_80_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["charnames"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1346233437.626_nfa" :subid("cuid_memo_81_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 91
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    box $P507, 1
    push $P503, $P507
    box $P508, 0
    push $P503, $P508
    box $P509, 4
    push $P503, $P509
    box $P510, 6
    push $P503, $P510
    box $P511, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P503, $P511
    box $P512, 0
    push $P503, $P512
    box $P513, 8
    push $P503, $P513
    box $P514, "panic"
    push $P503, $P514
    box $P515, 0
    push $P503, $P515
    push $P501, $P503
    new $P516, 'ResizablePMCArray'
    box $P517, 8
    push $P516, $P517
    box $P518, "charnames"
    push $P516, $P518
    box $P519, 3
    push $P516, $P519
    push $P501, $P516
    new $P520, 'ResizablePMCArray'
    box $P521, 2
    push $P520, $P521
    box $P522, 93
    push $P520, $P522
    box $P523, 0
    push $P520, $P523
    push $P501, $P520
    new $P524, 'ResizablePMCArray'
    box $P525, 4
    push $P524, $P525
    box $P526, 8
    push $P524, $P526
    box $P527, 5
    push $P524, $P527
    push $P501, $P524
    new $P528, 'ResizablePMCArray'
    box $P529, 1
    push $P528, $P529
    box $P530, 0
    push $P528, $P530
    box $P531, 4
    push $P528, $P531
    box $P532, 1
    push $P528, $P532
    box $P533, 0
    push $P528, $P533
    box $P534, 6
    push $P528, $P534
    box $P535, 2
    push $P528, $P535
    box $P536, 95
    push $P528, $P536
    box $P537, 7
    push $P528, $P537
    box $P538, 1
    push $P528, $P538
    box $P539, 0
    push $P528, $P539
    box $P540, 0
    push $P528, $P540
    push $P501, $P528
    new $P541, 'ResizablePMCArray'
    push $P501, $P541
    new $P542, 'ResizablePMCArray'
    box $P543, 1
    push $P542, $P543
    box $P544, 0
    push $P542, $P544
    box $P545, 8
    push $P542, $P545
    push $P501, $P542
    new $P546, 'ResizablePMCArray'
    box $P547, 4
    push $P546, $P547
    box $P548, 8
    push $P546, $P548
    box $P549, 9
    push $P546, $P549
    push $P501, $P546
    new $P550, 'ResizablePMCArray'
    box $P551, 1
    push $P550, $P551
    box $P552, 0
    push $P550, $P552
    box $P553, 8
    push $P550, $P553
    box $P554, 1
    push $P550, $P554
    box $P555, 0
    push $P550, $P555
    box $P556, 5
    push $P550, $P556
    push $P501, $P550
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1346233437.626_alt_nfa__9_1346233438.69" :subid("cuid_memo_82_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    new $P503, 'ResizablePMCArray'
    push $P502, $P503
    new $P504, 'ResizablePMCArray'
    box $P505, 2
    push $P504, $P505
    box $P506, 91
    push $P504, $P506
    box $P507, 2
    push $P504, $P507
    push $P502, $P504
    new $P508, 'ResizablePMCArray'
    box $P509, 8
    push $P508, $P509
    box $P510, "charnames"
    push $P508, $P510
    box $P511, 3
    push $P508, $P511
    push $P502, $P508
    new $P512, 'ResizablePMCArray'
    box $P513, 2
    push $P512, $P513
    box $P514, 93
    push $P512, $P514
    box $P515, 0
    push $P512, $P515
    push $P502, $P512
    push $P501, $P502
    new $P516, 'ResizablePMCArray'
    new $P517, 'ResizablePMCArray'
    push $P516, $P517
    new $P518, 'ResizablePMCArray'
    box $P519, 1
    push $P518, $P519
    box $P520, 0
    push $P518, $P520
    box $P521, 2
    push $P518, $P521
    push $P516, $P518
    new $P522, 'ResizablePMCArray'
    box $P523, 4
    push $P522, $P523
    box $P524, 8
    push $P522, $P524
    box $P525, 3
    push $P522, $P525
    push $P516, $P522
    new $P526, 'ResizablePMCArray'
    box $P527, 1
    push $P526, $P527
    box $P528, 0
    push $P526, $P528
    box $P529, 2
    push $P526, $P529
    box $P530, 1
    push $P526, $P530
    box $P531, 0
    push $P526, $P531
    box $P532, 4
    push $P526, $P532
    box $P533, 2
    push $P526, $P533
    box $P534, 95
    push $P526, $P534
    box $P535, 5
    push $P526, $P535
    box $P536, 1
    push $P526, $P536
    box $P537, 0
    push $P526, $P537
    box $P538, 0
    push $P526, $P538
    push $P516, $P526
    new $P539, 'ResizablePMCArray'
    push $P516, $P539
    new $P540, 'ResizablePMCArray'
    box $P541, 1
    push $P540, $P541
    box $P542, 0
    push $P540, $P542
    box $P543, 6
    push $P540, $P543
    push $P516, $P540
    new $P544, 'ResizablePMCArray'
    box $P545, 4
    push $P544, $P545
    box $P546, 8
    push $P544, $P546
    box $P547, 7
    push $P544, $P547
    push $P516, $P544
    new $P548, 'ResizablePMCArray'
    box $P549, 1
    push $P548, $P549
    box $P550, 0
    push $P548, $P550
    box $P551, 6
    push $P548, $P551
    box $P552, 1
    push $P548, $P552
    box $P553, 0
    push $P548, $P553
    box $P554, 3
    push $P548, $P554
    push $P516, $P548
    push $P501, $P516
    new $P555, 'ResizablePMCArray'
    new $P556, 'ResizablePMCArray'
    push $P555, $P556
    new $P557, 'ResizablePMCArray'
    box $P558, 6
    push $P557, $P558
    box $P559, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P557, $P559
    box $P560, 0
    push $P557, $P560
    push $P555, $P557
    push $P501, $P555
    new $P561, 'ResizablePMCArray'
    new $P562, 'ResizablePMCArray'
    push $P561, $P562
    new $P563, 'ResizablePMCArray'
    box $P564, 8
    push $P563, $P564
    box $P565, "panic"
    push $P563, $P565
    box $P566, 0
    push $P563, $P566
    push $P561, $P563
    push $P501, $P561
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_48_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    if haz_param_1, default571
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P501
  default571:
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 

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
            ($P0, $S0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_49_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 319
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."pos"()
    set $P101, $P504
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P508, "$?PACKAGE"
    get_who $P507, $P508
    set $P506, $P507["NQPCursor"]
    unless_null $P506, fallback572
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["NQPCursor"]
    unless_null $P509, vivi_188573
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  vivi_188573:
    set $P506, $P509
  fallback572:
    repr_get_attr_str $S501, $P505, $P506, "$!target"
    box $P513, $S501
    set $P102, $P513
.annotate 'line', 321
    $P514 = _lex_param_1."push"(" at line ")
.annotate 'line', 322
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "HLL"
    get_who $P516, $P517
    set $P515, $P516["Compiler"]
    unless_null $P515, fallback574
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback574:
    $P520 = $P515."lineof"($P102, $P101)
    set $N502, $P520
    set $N503, 1
    add $N501, $N502, $N503
    $P521 = _lex_param_1."push"($N501)
.annotate 'line', 323
    $P522 = _lex_param_1."push"(", near \"")
.annotate 'line', 324
    set $S504, $P102
    set $I501, $P101
    substr $S503, $S504, $I501, 10
    escape $S502, $S503
    $P523 = _lex_param_1."push"($S502)
.annotate 'line', 325
    $P524 = _lex_param_1."push"("\"")
    join $S505, "", _lex_param_1
    box $P525, $S505
    die $P525
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_50_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 329
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501

            $P502 = getinterp
            $P502 = $P502['sub';1]
        
    set $P101, $P502
.annotate 'line', 334
    nqp_decontainerize $P503, _lex_param_0
    set $S501, $P101
    set $S503, _lex_param_1
    concat $S502, ", couldn't find final ", $S503
    $P504 = $P503."panic"("Unable to parse ", $S501, $S502)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "peek_delimiters" :subid("cuid_51_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 347
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 

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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_52_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 409
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P524 = 'cuid_185_1346233437.626' 
    capture_lex $P524 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
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
    eq $I19, 1, rx189_restart577
    gt rx189_pos, rx189_eos, rx189_fail578
    repr_get_attr_int $I11, self, rx189_curclass, "$!from"
    ne $I11, -1, rxscan190_done584
    goto rxscan190_scan583
  rxscan190_loop582:
    inc rx189_pos
    gt rx189_pos, rx189_eos, rx189_fail578
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!from", rx189_pos
  rxscan190_scan583:
    nqp_rxmark rx189_bstack, rxscan190_loop582, rx189_pos, 0
  rxscan190_done584:
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    unless_null $P101, fallback585
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["%QUOTEMOD"]
    unless_null $P504, fallback586
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    new $P509, 'Hash'
    set $P507["%QUOTEMOD"], $P509
    set $P504, $P509
  fallback586:
    unless_null $P504, vivi_191587
    die "Contextual %*QUOTEMOD not found"
    box $P510, "Contextual %*QUOTEMOD not found"
    set $P504, $P510
  vivi_191587:
    set $P101, $P504
  fallback585:
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    unless_null $P102, fallback588
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["$QUOTE_START"]
    unless_null $P511, fallback589
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P514
  fallback589:
    unless_null $P511, vivi_192590
    die "Contextual $*QUOTE_START not found"
    box $P515, "Contextual $*QUOTE_START not found"
    set $P511, $P515
  vivi_192590:
    set $P102, $P511
  fallback588:
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    unless_null $P103, fallback591
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    set $P516, $P517["$QUOTE_STOP"]
    unless_null $P516, fallback592
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P519
  fallback592:
    unless_null $P516, vivi_193593
    die "Contextual $*QUOTE_STOP not found"
    box $P520, "Contextual $*QUOTE_STOP not found"
    set $P516, $P520
  vivi_193593:
    set $P103, $P516
  fallback591:
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    $P521 = $P104."MATCH"()
    set $P105, $P521
    .const 'Sub' $P522 = 'cuid_185_1346233437.626' 
    capture_lex $P522
    $P523 = $P522()
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail578
    nqp_rxmark rx189_bstack, rxsubrule194_pass594, -1, 0
  rxsubrule194_pass594:
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx189_pos, $P11, rx189_curclass, "$!pos"
    rx189_cur."!cursor_pass"(rx189_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx189_cur)
  rx189_restart577:
    repr_get_attr_obj rx189_cstack, rx189_cur, rx189_curclass, "$!cstack"
  rx189_fail578:
    unless rx189_bstack, rx189_done576
    pop $I19, rx189_bstack
    if_null rx189_cstack, rx189_cstack_done581
    unless rx189_cstack, rx189_cstack_done581
    dec $I19
    set $P11, rx189_cstack[$I19]
  rx189_cstack_done581:
    pop rx189_rep, rx189_bstack
    pop rx189_pos, rx189_bstack
    pop $I19, rx189_bstack
    lt rx189_pos, -1, rx189_done576
    lt rx189_pos, 0, rx189_fail578
    eq $I19, 0, rx189_fail578
    nqp_islist $I20, rx189_cstack
    unless $I20, rx189_jump579
    elements $I18, rx189_bstack
    le $I18, 0, rx189_cut580
    dec $I18
    set $I18, rx189_bstack[$I18]
  rx189_cut580:
    assign rx189_cstack, $I18
  rx189_jump579:
    jump $I19
  rx189_done576:
    rx189_cur."!cursor_fail"()
    .return (rx189_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1346233437.626_caps" :subid("cuid_memo_83_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    box $P502, 0
    set $P501["quote_delimited"], $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1346233437.626_nfa" :subid("cuid_memo_84_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 1
    push $P507, $P508
    box $P509, 0
    push $P507, $P509
    box $P510, 3
    push $P507, $P510
    push $P501, $P507
    new $P511, 'ResizablePMCArray'
    box $P512, 1
    push $P511, $P512
    box $P513, 0
    push $P511, $P513
    box $P514, 4
    push $P511, $P514
    push $P501, $P511
    new $P515, 'ResizablePMCArray'
    box $P516, 0
    push $P515, $P516
    box $P517, 0
    push $P515, $P517
    box $P518, 0
    push $P515, $P518
    push $P501, $P515
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346233437.626") :anon :lex :outer("cuid_52_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 413

            
                .local pmc self, cur_class, args
                self = find_lex 'self'
                cur_class = find_lex '$cursor_class'
                args = find_lex '@args'

                .local pmc quotemod, true
                quotemod = find_lex '%*QUOTEMOD'
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
                .local string target
                .local int pos
                target = repr_get_attr_str self, cur_class, '$!target'
                pos = repr_get_attr_int self, cur_class, '$!pos'
                (start, stop) = self.'peek_delimiters'(target, pos)
                store_lex '$*QUOTE_START', start
                store_lex '$*QUOTE_STOP', stop
            
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_53_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 458
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P504 = 'cuid_186_1346233437.626' 
    capture_lex $P504 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
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
    eq $I19, 1, rx195_restart597
    gt rx195_pos, rx195_eos, rx195_fail598
    repr_get_attr_int $I11, self, rx195_curclass, "$!from"
    ne $I11, -1, rxscan196_done604
    goto rxscan196_scan603
  rxscan196_loop602:
    inc rx195_pos
    gt rx195_pos, rx195_eos, rx195_fail598
    repr_bind_attr_int rx195_cur, rx195_curclass, "$!from", rx195_pos
  rxscan196_scan603:
    nqp_rxmark rx195_bstack, rxscan196_loop602, rx195_pos, 0
  rxscan196_done604:
    repr_bind_attr_int rx195_cur, rx195_curclass, "$!pos", rx195_pos
    store_lex unicode:"$\x{a2}", rx195_cur
    $P501 = $P101."MATCH"()
    set $P102, $P501
    .const 'Sub' $P502 = 'cuid_186_1346233437.626' 
    capture_lex $P502
    $P503 = $P502()
    unless $P503, rx195_fail598
    rx195_cur."!cursor_pass"(rx195_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx195_cur)
  rx195_restart597:
    repr_get_attr_obj rx195_cstack, rx195_cur, rx195_curclass, "$!cstack"
  rx195_fail598:
    unless rx195_bstack, rx195_done596
    pop $I19, rx195_bstack
    if_null rx195_cstack, rx195_cstack_done601
    unless rx195_cstack, rx195_cstack_done601
    dec $I19
    set $P11, rx195_cstack[$I19]
  rx195_cstack_done601:
    pop rx195_rep, rx195_bstack
    pop rx195_pos, rx195_bstack
    pop $I19, rx195_bstack
    lt rx195_pos, -1, rx195_done596
    lt rx195_pos, 0, rx195_fail598
    eq $I19, 0, rx195_fail598
    nqp_islist $I20, rx195_cstack
    unless $I20, rx195_jump599
    elements $I18, rx195_bstack
    le $I18, 0, rx195_cut600
    dec $I18
    set $I18, rx195_bstack[$I18]
  rx195_cut600:
    assign rx195_cstack, $I18
  rx195_jump599:
    jump $I19
  rx195_done596:
    rx195_cur."!cursor_fail"()
    .return (rx195_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_53_1346233437.626_caps" :subid("cuid_memo_85_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_53_1346233437.626_nfa" :subid("cuid_memo_86_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 1
    push $P503, $P504
    box $P505, 0
    push $P503, $P505
    box $P506, 0
    push $P503, $P506
    push $P501, $P503
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346233437.626") :anon :lex :outer("cuid_53_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 459

    find_dynamic_lex $P502, "%*QUOTEMOD"
    unless_null $P502, fallback605
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["%QUOTEMOD"]
    unless_null $P503, fallback606
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    new $P508, 'Hash'
    set $P506["%QUOTEMOD"], $P508
    set $P503, $P508
  fallback606:
    unless_null $P503, vivi_197607
    die "Contextual %*QUOTEMOD not found"
    box $P509, "Contextual %*QUOTEMOD not found"
    set $P503, $P509
  vivi_197607:
    set $P502, $P503
  fallback605:
    find_lex $P510, "$mod"
    set $S501, $P510
    set $P501, $P502[$S501]
    unless_null $P501, fallback608
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P511
  fallback608:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_54_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 462
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, target, pos) = self.'!cursor_start'()

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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_55_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 485
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, target, pos) = self.'!cursor_start'()

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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_56_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 508
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$words", _lex_param_1 

            .include 'src/Regex/constants.pir'
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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_57_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 541
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default609
    box $P501, ""
    set _lex_param_1, $P501
  default609:
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here
            .local string tgt
            .local int pos
            (here, tgt, pos) = self.'!cursor_start'()

            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            .local pmc termcur
            repr_bind_attr_int here, cur_class, "$!pos", pos
            termcur = here.termishrx()
            pos = repr_get_attr_int termcur, cur_class, "$!pos"
            repr_bind_attr_int here, cur_class, "$!pos", pos
            if pos < 0 goto fail
            .local pmc termish
            termish = termcur.'MATCH'()

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
            .local pmc wscur, infixcur, infix
            
            # First, we need ws to match.
            repr_bind_attr_int here, cur_class, "$!pos", pos
            wscur = here.'ws'()
            pos = repr_get_attr_int wscur, cur_class, '$!pos'
            if pos < 0 goto term_done
            repr_bind_attr_int here, cur_class, "$!pos", pos
            
            # Next, try the infix itself.
            infixcur = here.'infixish'()
            pos = repr_get_attr_int infixcur, cur_class, '$!pos'
            if pos < 0 goto term_done
            infix = infixcur.'MATCH'()

            # We got an infix.
            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
          nonextterm:
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec < preclim goto term_done
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
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            self.'EXPR_reduce'(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            repr_bind_attr_int here, cur_class, "$!pos", pos
            wscur = here.'ws'()
            pos = repr_get_attr_int wscur, cur_class, '$!pos'
            repr_bind_attr_int here, cur_class, "$!pos", pos
            if pos < 0 goto fail
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            self.'EXPR_reduce'(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            here.'!cursor_pass'(pos)
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            goto done

          fail:
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_58_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 728
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$termstack", _lex_param_1 
    .lex "$opstack", _lex_param_2 

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            
            # Give it a fresh capture list, since we'll have assumed it has
            # no positional captures and not taken them.
            .local pmc cap_class
            cap_class = find_lex 'NQPCapture'
            $P0 = new ['ResizablePMCArray']
            setattribute op, cap_class, '@!array', $P0
            
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
            self.'!reduce_with_match'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce_with_match'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce_with_match'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            sym = ''
            $P0 = opOPER['sym']
            if null $P0 goto op_list_1
            sym = $P0
          op_list_1:
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $S0 = ''
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            if null $P0 goto op_sym_1
            $S0 = $P0
          op_sym_1:
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce_with_match'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "ternary" :subid("cuid_59_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    set $P501, _lex_param_1[1]
    unless_null $P501, fallback610
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback610:
    set _lex_param_1[2], $P501
    set $P504, _lex_param_1["infix"]
    unless_null $P504, fallback611
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback611:
    set $P503, $P504["EXPR"]
    unless_null $P503, fallback612
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback612:
    set _lex_param_1[1], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_60_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502

            $P503 = get_global '%!MARKHASH'
            unless null $P503 goto have_markhash
            $P503 = new ['Hash']
            set_global '%!MARKHASH', $P503
          have_markhash:
        
    set $P101, $P503
.annotate 'line', 827
    nqp_decontainerize $P504, _lex_param_0
    $P505 = $P504."!cursor_start"()
    set $P102, $P505
.annotate 'line', 828
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."pos"()
    $P508 = $P102."!cursor_pass"($P507)
    set $S501, _lex_param_1
    set $P101[$S501], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_61_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 832
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502

            $P503 = get_global '%!MARKHASH'
            unless null $P503 goto have_markhash
            $P503 = new ['Hash']
            set_global '%!MARKHASH', $P503
          have_markhash:
        
    set $P101, $P503
    set $S501, _lex_param_1
    set $P504, $P101[$S501]
    unless_null $P504, fallback613
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback613:
    set $P102, $P504
    find_lex $P508, "$?PACKAGE"
    get_who $P507, $P508
    set $P506, $P507["NQPCursor"]
    unless_null $P506, fallback618
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["NQPCursor"]
    unless_null $P509, vivi_200619
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  vivi_200619:
    set $P506, $P509
  fallback618:
    type_check $I501, $P102, $P506
    set $I503, $I501
    unless $I501 goto if199_end617 
.annotate 'line', 841
    $P513 = $P102."pos"()
    set $N501, $P513
    nqp_decontainerize $P514, _lex_param_0
    $P515 = $P514."pos"()
    set $N502, $P515
    iseq $I502, $N501, $N502
    set $I503, $I502
  if199_end617:
    box $P519, $I503
    set $P518, $P519
    if $I503 goto unless198_end615 
.annotate 'line', 842
    nqp_decontainerize $P516, _lex_param_0
    $P517 = $P516."!cursor_start"()
    set $P102, $P517
    set $P518, $P102
  unless198_end615:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_62_1346233437.626") :anon :lex :outer("cuid_63_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 847
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$lang_cursor", $P101 
    .lex "$*ACTIONS", $P102 
    .lex "self", _lex_param_0 
    .lex "$lang", _lex_param_1 
    .lex "$regex", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 848
    find_dynamic_lex $P504, "%*LANG"
    unless_null $P504, fallback620
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["%LANG"]
    unless_null $P505, fallback621
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    new $P510, 'Hash'
    set $P508["%LANG"], $P510
    set $P505, $P510
  fallback621:
    unless_null $P505, vivi_201622
    die "Contextual %*LANG not found"
    box $P511, "Contextual %*LANG not found"
    set $P505, $P511
  vivi_201622:
    set $P504, $P505
  fallback620:
    set $S501, _lex_param_1
    set $P503, $P504[$S501]
    unless_null $P503, fallback623
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P512
  fallback623:
    nqp_decontainerize $P513, _lex_param_0
    $P514 = $P513."target"()
    nqp_decontainerize $P515, _lex_param_0
    $P516 = $P515."pos"()
    $P517 = $P503."!cursor_init"($P514, $P516 :named("p"))
    set $P101, $P517
.annotate 'line', 849
    nqp_decontainerize $P519, _lex_param_0
    get_how $P518, $P519
    nqp_decontainerize $P520, _lex_param_0
    $P521 = $P518."traced"($P520)
    set $P528, $P521
    unless $P521 goto if202_end625 
.annotate 'line', 850
    get_how $P522, $P101
    nqp_decontainerize $P524, _lex_param_0
    get_how $P523, $P524
    nqp_decontainerize $P525, _lex_param_0
    $P526 = $P523."trace_depth"($P525)
    $P527 = $P522."trace-on"($P101, $P526)
    set $P528, $P527
  if202_end625:
    find_dynamic_lex $P530, "%*LANG"
    unless_null $P530, fallback626
    get_hll_global $P533, "GLOBAL"
    get_who $P532, $P533
    set $P531, $P532["%LANG"]
    unless_null $P531, fallback627
    get_hll_global $P535, "GLOBAL"
    get_who $P534, $P535
    new $P536, 'Hash'
    set $P534["%LANG"], $P536
    set $P531, $P536
  fallback627:
    unless_null $P531, vivi_203628
    die "Contextual %*LANG not found"
    box $P537, "Contextual %*LANG not found"
    set $P531, $P537
  vivi_203628:
    set $P530, $P531
  fallback626:
    set $S503, _lex_param_1
    concat $S502, $S503, "-actions"
    set $P529, $P530[$S502]
    unless_null $P529, fallback629
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P538
  fallback629:
    set $P102, $P529
.annotate 'line', 853
    set $S504, _lex_param_2
    $P539 = $P101.$S504()
    .return ($P539) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 858
    .const 'Sub' $P537 = 'cuid_187_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_64_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_65_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_66_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_67_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_68_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_69_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_70_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_71_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_72_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_73_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_74_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_75_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_76_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_77_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_78_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_79_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_80_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_81_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_82_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_83_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_84_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_85_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_86_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_87_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_88_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_89_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_90_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_91_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_92_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_93_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_94_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_95_1346233437.626' 
    capture_lex $P537 
    .const 'Sub' $P537 = 'cuid_96_1346233437.626' 
    capture_lex $P537 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P501 = 'cuid_187_1346233437.626' 
    capture_lex $P501
    set $P101, $P501
    find_lex $P503, "$?PACKAGE"
    get_who $P502, $P503
    set $P502["string_to_int"], $P101
    .const 'Sub' $P504 = 'cuid_64_1346233437.626' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_65_1346233437.626' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_66_1346233437.626' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_67_1346233437.626' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_68_1346233437.626' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_69_1346233437.626' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_70_1346233437.626' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_71_1346233437.626' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_72_1346233437.626' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_73_1346233437.626' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_74_1346233437.626' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_75_1346233437.626' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_76_1346233437.626' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_77_1346233437.626' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_78_1346233437.626' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_79_1346233437.626' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_80_1346233437.626' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_81_1346233437.626' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_82_1346233437.626' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_83_1346233437.626' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_84_1346233437.626' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_85_1346233437.626' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_86_1346233437.626' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_87_1346233437.626' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_88_1346233437.626' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_89_1346233437.626' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_90_1346233437.626' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_91_1346233437.626' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_92_1346233437.626' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_93_1346233437.626' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_94_1346233437.626' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_95_1346233437.626' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_96_1346233437.626' 
    capture_lex $P536
    .return ($P536) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_187_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 859
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $I501, _lex_param_1
    set $S501, _lex_param_0
    nqp_radix $P502, $I501, $S501, 0, 2
    set $P101, $P502
    set $S502, 2
    set $P503, $P101[$S502]
    set $N501, $P503
    set $S503, _lex_param_0
    length $I503, $S503
    set $N502, $I503
    iseq $I502, $N501, $N502
    box $P507, $I502
    set $P506, $P507
    if $I502 goto unless204_end631 
.annotate 'line', 861
    $P504 = _lex_param_0."CURSOR"()
    set $S506, _lex_param_0
    concat $S505, "'", $S506
    concat $S504, $S505, "' is not a valid number"
    $P505 = $P504."panic"($S504)
    set $P506, $P505
  unless204_end631:
    set $S507, 0
    set $P508, $P101[$S507]
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_64_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P506 = 'cuid_189_1346233437.626' 
    capture_lex $P506 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    does $I501, _lex_param_1, "array"
    unless $I501 goto if205_else632 
    .const 'Sub' $P501 = 'cuid_189_1346233437.626' 
    capture_lex $P501
    $P502 = $P501()
    set $P504, $P502
    goto if205_end633
  if205_else632:
.annotate 'line', 873
.annotate 'line', 874
    $P503 = _lex_param_1."ast"()
    set $I502, $P503
    chr $S501, $I502
    box $P505, $S501
    set $P504, $P505
  if205_end633:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346233437.626") :anon :lex :outer("cuid_64_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 867
    .const 'Sub' $P510 = 'cuid_188_1346233437.626' 
    capture_lex $P510 
    .lex "$result", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
    find_lex $P506, "$ints"
    set $P503, $P506
    iter $P505, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers634
    push_eh $P508
  for_next635:
    unless $P505, for_done637
    shift $P509, $P505
  for_redo636:
    .const 'Sub' $P507 = 'cuid_188_1346233437.626' 
    capture_lex $P507
    $P503 = $P507($P509)
    goto for_next635
  for_handlers634:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next635
    eq $P508, .CONTROL_LOOP_REDO, for_redo636
  for_done637:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346233437.626") :anon :lex :outer("cuid_189_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 869
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$result"
    set $S502, $P501
.annotate 'line', 870
    $P502 = _lex_param_0."ast"()
    set $I501, $P502
    chr $S503, $I501
    concat $S501, $S502, $S503
    box $P503, $S501
    store_lex "$result", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "CTXSAVE" :subid("cuid_65_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 880
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PAST"
    get_who $P502, $P503
    set $P501, $P502["Op"]
    unless_null $P501, fallback638
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback638:
    new $P506, 'ResizablePMCArray'
    box $P507, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P506, $P507
    box $P508, "    if null $P0 goto ctxsave_done"
    push $P506, $P508
    box $P509, "    $I0 = can $P0, \"ctxsave\""
    push $P506, $P509
    box $P510, "    unless $I0 goto ctxsave_done"
    push $P506, $P510
    box $P511, "    $P0.\"ctxsave\"()"
    push $P506, $P511
    box $P512, "  ctxsave_done:"
    push $P506, $P512
    $P513 = $P501."new"($P506 :named("inline"))
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_66_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 893
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P523 = 'cuid_190_1346233437.626' 
    capture_lex $P523 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_dynamic_lex $P504, "%*COMPILING"
    unless_null $P504, fallback639
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["%COMPILING"]
    unless_null $P505, fallback640
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    new $P510, 'Hash'
    set $P508["%COMPILING"], $P510
    set $P505, $P510
  fallback640:
    unless_null $P505, vivi_206641
    die "Contextual %*COMPILING not found"
    box $P511, "Contextual %*COMPILING not found"
    set $P505, $P511
  vivi_206641:
    set $P504, $P505
  fallback639:
    set $P503, $P504["%?OPTIONS"]
    unless_null $P503, fallback642
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P512
  fallback642:
    set $P502, $P503["outer_ctx"]
    unless_null $P502, fallback643
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P513
  fallback643:
    set $P101, $P502
    defined $I501, $P101
    box $P522, $I501
    set $P521, $P522
    unless $I501 goto if207_end645 
.annotate 'line', 895
.annotate 'line', 896
    $P517 = $P101."lexpad_full"()
    set $P514, $P517
    iter $P516, $P517
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers646
    push_eh $P519
  for_next647:
    unless $P516, for_done649
    shift $P520, $P516
  for_redo648:
    .const 'Sub' $P518 = 'cuid_190_1346233437.626' 
    capture_lex $P518
    $P514 = $P518($P520)
    goto for_next647
  for_handlers646:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next647
    eq $P519, .CONTROL_LOOP_REDO, for_redo648
  for_done649:
    pop_eh 
    set $P521, $P514
  if207_end645:
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346233437.626") :anon :lex :outer("cuid_66_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 896
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 897
    find_lex $P501, "$block"
    $P502 = _lex_param_0."key"()
    $P503 = _lex_param_0."value"()
    $P504 = $P501."symbol"($P502, "lexical" :named("scope"), $P503 :named("value"))
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_67_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_3 :opt_flag 
    .const 'Sub' $P563 = 'cuid_191_1346233437.626' 
    capture_lex $P563 
    .const 'Sub' $P563 = 'cuid_192_1346233437.626' 
    capture_lex $P563 
    if haz_param_3, default690
    nqp_get_sc_object $P562, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P562
  default690:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_650
    .lex "RETURN", $P102
    set $P504, _lex_param_2
    if _lex_param_2 goto unless208_end653 
.annotate 'line', 904
    find_lex $P502, "RETURN"
    $P503 = $P502(0)
    set $P504, $P503
  unless208_end653:
.annotate 'line', 905
    $P506 = _lex_param_1."ast"()
    set $P505, $P506
    defined $I501, $P505
    if $I501, defor654
    set $P507, _lex_param_1["OPER"]
    unless_null $P507, fallback655
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback655:
    $P509 = $P507."ast"()
    set $P505, $P509
  defor654:
    set $P101, $P505
    set $P548, $P101
    if $P101 goto unless209_end657 
.annotate 'line', 906
.annotate 'line', 907
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PAST"
    get_who $P511, $P512
    set $P510, $P511["Op"]
    unless_null $P510, fallback658
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback658:
    $P515 = $P510."new"(_lex_param_1 :named("node"))
    set $P101, $P515
    set $P518, _lex_param_1["OPER"]
    unless_null $P518, fallback661
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P519
  fallback661:
    set $P517, $P518["O"]
    unless_null $P517, fallback662
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P520
  fallback662:
    set $P516, $P517["pasttype"]
    unless_null $P516, fallback663
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P521
  fallback663:
    unless $P516 goto if210_else659 
.annotate 'line', 908
    set $P524, _lex_param_1["OPER"]
    unless_null $P524, fallback664
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P525
  fallback664:
    set $P523, $P524["O"]
    unless_null $P523, fallback665
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P526
  fallback665:
    set $P522, $P523["pasttype"]
    unless_null $P522, fallback666
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P527
  fallback666:
    set $S501, $P522
    $P528 = $P101."pasttype"($S501)
    set $P543, $P528
    goto if210_end660
  if210_else659:
    set $P531, _lex_param_1["OPER"]
    unless_null $P531, fallback669
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P531, $P532
  fallback669:
    set $P530, $P531["O"]
    unless_null $P530, fallback670
    nqp_get_sc_object $P533, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P530, $P533
  fallback670:
    set $P529, $P530["pirop"]
    unless_null $P529, fallback671
    nqp_get_sc_object $P534, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P534
  fallback671:
    set $P542, $P529
    unless $P529 goto if211_end668 
.annotate 'line', 909
    set $P537, _lex_param_1["OPER"]
    unless_null $P537, fallback672
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P538
  fallback672:
    set $P536, $P537["O"]
    unless_null $P536, fallback673
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P536, $P539
  fallback673:
    set $P535, $P536["pirop"]
    unless_null $P535, fallback674
    nqp_get_sc_object $P540, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P540
  fallback674:
    set $S502, $P535
    $P541 = $P101."pirop"($S502)
    set $P542, $P541
  if211_end668:
    set $P543, $P542
  if210_end660:
.annotate 'line', 910
    $P544 = $P101."name"()
    set $P547, $P544
    if $P544 goto unless212_end676 
    .const 'Sub' $P545 = 'cuid_191_1346233437.626' 
    capture_lex $P545
    $P546 = $P545()
    set $P547, $P546
  unless212_end676:
    set $P548, $P547
  unless209_end657:
    set $S503, _lex_param_2
    iseq $I502, $S503, "POSTFIX"
    unless $I502 goto if214_else681 
.annotate 'line', 916
    set $P549, _lex_param_1[0]
    unless_null $P549, fallback683
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P549, $P550
  fallback683:
    $P551 = $P549."ast"()
    $P552 = $P101."unshift"($P551)
    set $P560, $P552
    goto if214_end682
  if214_else681:
.annotate 'line', 917
.annotate 'line', 918
    $P556 = _lex_param_1."list"()
    set $P553, $P556
    iter $P555, $P556
    new $P558, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P558, for_handlers686
    push_eh $P558
  for_next687:
    unless $P555, for_done689
    shift $P559, $P555
  for_redo688:
    .const 'Sub' $P557 = 'cuid_192_1346233437.626' 
    capture_lex $P557
    $P553 = $P557($P559)
    goto for_next687
  for_handlers686:
    .get_results ($P558)
    pop_upto_eh $P558
    getattribute $P558, $P558, 'type'
    eq $P558, .CONTROL_LOOP_NEXT, for_next687
    eq $P558, .CONTROL_LOOP_REDO, for_redo688
  for_done689:
    pop_eh 
    set $P560, $P553
  if214_end682:
.annotate 'line', 920
    $P561 = _lex_param_1."!make"($P101)
    goto lexotic_651
  lexotic_650:
    .get_results ($P561)
  lexotic_651:
    .return ($P561) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346233437.626") :anon :lex :outer("cuid_67_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 910
    .lex "$name", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$key"
    set $S501, $P502
    iseq $I501, $S501, "LIST"
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if213_end678 
.annotate 'line', 911
    box $P503, "infix"
    store_lex "$key", $P503
    set $P504, $P503
  if213_end678:
    find_lex $P506, "$key"
    set $S506, $P506
    downcase $S505, $S506
    concat $S504, $S505, ":<"
    find_lex $P509, "$/"
    set $P508, $P509["OPER"]
    unless_null $P508, fallback679
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback679:
    set $P507, $P508["sym"]
    unless_null $P507, fallback680
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P511
  fallback680:
    set $S507, $P507
    concat $S503, $S504, $S507
    concat $S502, $S503, ">"
    box $P512, $S502
    set $P101, $P512
.annotate 'line', 913
    find_lex $P513, "$past"
    set $S509, $P101
    concat $S508, "&", $S509
    $P514 = $P513."name"($S508)
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346233437.626") :anon :lex :outer("cuid_67_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P501 = _lex_param_0."ast"()
    defined $I501, $P501
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if215_end685 
    find_lex $P502, "$past"
    $P503 = _lex_param_0."ast"()
    $P504 = $P502."push"($P503)
    set $P505, $P504
  if215_end685:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_68_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 923
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P501, _lex_param_1["circumfix"]
    unless_null $P501, fallback691
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback691:
    $P503 = $P501."ast"()
    $P504 = _lex_param_1."!make"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_69_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 925
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P501, _lex_param_1["term"]
    unless_null $P501, fallback692
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback692:
    $P503 = $P501."ast"()
    $P504 = _lex_param_1."!make"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_70_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 926
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P501, "Undef"
    $P502 = _lex_param_1."!make"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_71_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 927
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P501, _lex_param_1["term"]
    unless_null $P501, fallback693
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback693:
    $P503 = $P501."ast"()
    $P504 = _lex_param_1."!make"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_72_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 929
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P501, _lex_param_1["VALUE"]
    unless_null $P501, fallback694
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback694:
    $P503 = $P501."ast"()
    $P504 = _lex_param_1."!make"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_73_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 931
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $N501, _lex_param_1
    $P501 = _lex_param_1."!make"($N501)
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_74_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = "&string_to_int"(_lex_param_1, 10)
    $P502 = _lex_param_1."!make"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_75_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 934
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = "&string_to_int"(_lex_param_1, 16)
    $P502 = _lex_param_1."!make"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_76_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 935
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = "&string_to_int"(_lex_param_1, 8)
    $P502 = _lex_param_1."!make"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_77_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 936
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = "&string_to_int"(_lex_param_1, 2)
    $P502 = _lex_param_1."!make"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_78_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 938
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P542 = 'cuid_194_1346233437.626' 
    capture_lex $P542 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 939
    set $P502, _lex_param_1["quote_delimited"]
    unless_null $P502, fallback695
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback695:
    $P504 = $P502."ast"()
    set $P101, $P504
    find_dynamic_lex $P506, "%*QUOTEMOD"
    unless_null $P506, fallback698
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%QUOTEMOD"]
    unless_null $P507, fallback699
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%QUOTEMOD"], $P512
    set $P507, $P512
  fallback699:
    unless_null $P507, vivi_217700
    die "Contextual %*QUOTEMOD not found"
    box $P513, "Contextual %*QUOTEMOD not found"
    set $P507, $P513
  vivi_217700:
    set $P506, $P507
  fallback698:
    set $P505, $P506["w"]
    unless_null $P505, fallback701
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P514
  fallback701:
    set $P526, $P505
    unless $P505 goto if216_end697 
.annotate 'line', 940
.annotate 'line', 941
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "PAST"
    get_who $P516, $P517
    set $P515, $P516["Node"]
    unless_null $P515, fallback704
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback704:
    $P520 = $P515."ACCEPTS"($P101)
    unless $P520 goto if218_else702 
.annotate 'line', 942
    $P521 = _lex_param_1."CURSOR"()
    $P522 = $P521."panic"("Can't form :w list from non-constant strings (yet)")
    set $P525, $P522
    goto if218_end703
  if218_else702:
    .const 'Sub' $P523 = 'cuid_194_1346233437.626' 
    capture_lex $P523
    $P524 = $P523()
    set $P525, $P524
  if218_end703:
    set $P526, $P525
  if216_end697:
.annotate 'line', 955
    get_hll_global $P530, "GLOBAL"
    nqp_get_package_through_who $P529, $P530, "PAST"
    get_who $P528, $P529
    set $P527, $P528["Node"]
    unless_null $P527, fallback716
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P531
  fallback716:
    $P532 = $P527."ACCEPTS"($P101)
    isfalse $I501, $P532
    box $P540, $I501
    set $P539, $P540
    unless $I501 goto if220_end715 
.annotate 'line', 956
    get_hll_global $P536, "GLOBAL"
    nqp_get_package_through_who $P535, $P536, "PAST"
    get_who $P534, $P535
    set $P533, $P534["Val"]
    unless_null $P533, fallback717
    nqp_get_sc_object $P537, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P533, $P537
  fallback717:
    set $S501, $P101
    $P538 = $P533."new"($S501 :named("value"))
    set $P101, $P538
    set $P539, $P101
  if220_end715:
.annotate 'line', 958
    $P541 = _lex_param_1."!make"($P101)
    .return ($P541) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346233437.626") :anon :lex :outer("cuid_78_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
    .const 'Sub' $P528 = 'cuid_193_1346233437.626' 
    capture_lex $P528 
    .lex "@words", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 945
    find_lex $P508, "$/"
    find_lex $P509, "$past"
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "HLL"
    nqp_get_package_through_who $P504, $P505, "Grammar"
    get_who $P503, $P504
    set $P502, $P503["split_words"]
    unless_null $P502, fallback705
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P507
  fallback705:
    $P510 = $P502($P508, $P509)
    set $P101, $P510
    set $N501, $P101
    set $N502, 1
    isne $I501, $N501, $N502
    unless $I501 goto if219_else706 
.annotate 'line', 946
.annotate 'line', 947
    get_hll_global $P514, "GLOBAL"
    nqp_get_package_through_who $P513, $P514, "PAST"
    get_who $P512, $P513
    set $P511, $P512["Op"]
    unless_null $P511, fallback708
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P515
  fallback708:
    find_lex $P516, "$/"
    $P517 = $P511."new"("list" :named("pasttype"), $P516 :named("node"))
    store_lex "$past", $P517
    set $P518, $P101
    iter $P520, $P101
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers709
    push_eh $P522
  for_next710:
    unless $P520, for_done712
    shift $P523, $P520
  for_redo711:
    .const 'Sub' $P521 = 'cuid_193_1346233437.626' 
    capture_lex $P521
    $P518 = $P521($P523)
    goto for_next710
  for_handlers709:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next710
    eq $P522, .CONTROL_LOOP_REDO, for_redo711
  for_done712:
    pop_eh 
    set $P527, $P518
    goto if219_end707
  if219_else706:
.annotate 'line', 950
    set $P524, $P101[0]
    unless_null $P524, fallback713
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P525
  fallback713:
    set $S501, $P524
    box $P526, $S501
    store_lex "$past", $P526
    set $P527, $P526
  if219_end707:
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346233437.626") :anon :lex :outer("cuid_194_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$past"
    $P502 = $P501."push"(_lex_param_0)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_79_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 961
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P529 = 'cuid_195_1346233437.626' 
    capture_lex $P529 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    box $P504, ""
    set $P102, $P504
    set $P508, _lex_param_1["quote_atom"]
    unless_null $P508, fallback718
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback718:
    set $P505, $P508
    iter $P507, $P508
    new $P511, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P511, for_handlers727
    push_eh $P511
  for_next728:
    unless $P507, for_done730
    shift $P512, $P507
  for_redo729:
    .const 'Sub' $P510 = 'cuid_195_1346233437.626' 
    capture_lex $P510
    $P505 = $P510($P512)
    goto for_next728
  for_handlers727:
    .get_results ($P511)
    pop_upto_eh $P511
    getattribute $P511, $P511, 'type'
    eq $P511, .CONTROL_LOOP_NEXT, for_next728
    eq $P511, .CONTROL_LOOP_REDO, for_redo729
  for_done730:
    pop_eh 
    set $S501, $P102
    isgt $I501, $S501, ""
    box $P515, $I501
    set $P514, $P515
    unless $I501 goto if224_end732 
.annotate 'line', 978
    $P513 = $P101."push"($P102)
    set $P514, $P513
  if224_end732:
    unless $P101 goto if225_else733 
.annotate 'line', 979
    $P516 = $P101."shift"()
    set $P517, $P516
    goto if225_end734
  if225_else733:
    box $P518, ""
    set $P517, $P518
  if225_end734:
    set $P103, $P517
    new $P527, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P527, while226_handlers738
    push_eh $P527
  while226_test735:
    set $P526, $P101
    unless $P101 goto while226_done739 
  while226_redo737:
.annotate 'line', 980
.annotate 'line', 981
    get_hll_global $P522, "GLOBAL"
    nqp_get_package_through_who $P521, $P522, "PAST"
    get_who $P520, $P521
    set $P519, $P520["Op"]
    unless_null $P519, fallback740
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P523
  fallback740:
    $P524 = $P101."shift"()
    $P525 = $P519."new"($P103, $P524, "concat" :named("pirop"))
    set $P103, $P525
    set $P526, $P103
    goto while226_test735 
  while226_handlers738:
    .get_results ($P527)
    pop_upto_eh $P527
    getattribute $P527, $P527, 'type'
    eq $P527, .CONTROL_LOOP_NEXT, while226_test735
    eq $P527, .CONTROL_LOOP_REDO, while226_redo737
  while226_done739:
    pop_eh 
.annotate 'line', 983
    $P528 = _lex_param_1."!make"($P103)
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346233437.626") :anon :lex :outer("cuid_79_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 965
    $P502 = _lex_param_0."ast"()
    set $P101, $P502
.annotate 'line', 966
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PAST"
    get_who $P504, $P505
    set $P503, $P504["Node"]
    unless_null $P503, fallback721
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback721:
    $P508 = $P503."ACCEPTS"($P101)
    isfalse $I501, $P508
    unless $I501 goto if221_else719 
    find_lex $P509, "$lastlit"
    set $S502, $P509
    set $S503, $P101
    concat $S501, $S502, $S503
    box $P510, $S501
    store_lex "$lastlit", $P510
    set $P530, $P510
    goto if221_end720
  if221_else719:
.annotate 'line', 969
    get_hll_global $P514, "GLOBAL"
    nqp_get_package_through_who $P513, $P514, "PAST"
    get_who $P512, $P513
    set $P511, $P512["Val"]
    unless_null $P511, fallback724
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P515
  fallback724:
    $P516 = $P101."isa"($P511)
    unless $P516 goto if222_else722 
    find_lex $P517, "$lastlit"
    set $S505, $P517
.annotate 'line', 970
    $P518 = $P101."value"()
    set $S506, $P518
    concat $S504, $S505, $S506
    box $P519, $S504
    store_lex "$lastlit", $P519
    set $P529, $P519
    goto if222_end723
  if222_else722:
.annotate 'line', 972
    find_lex $P520, "$lastlit"
    set $S507, $P520
    isgt $I502, $S507, ""
    box $P525, $I502
    set $P524, $P525
    unless $I502 goto if223_end726 
.annotate 'line', 973
    find_lex $P521, "@parts"
    find_lex $P522, "$lastlit"
    $P523 = $P521."push"($P522)
    set $P524, $P523
  if223_end726:
.annotate 'line', 974
    find_lex $P526, "@parts"
    $P527 = $P526."push"($P101)
    box $P528, ""
    store_lex "$lastlit", $P528
    set $P529, $P528
  if222_end723:
    set $P530, $P529
  if221_end720:
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_80_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 986
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 987
    set $P501, _lex_param_1["quote_escape"]
    unless_null $P501, fallback743
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback743:
    unless $P501 goto if227_else741 
    set $P503, _lex_param_1["quote_escape"]
    unless_null $P503, fallback744
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback744:
    $P505 = $P503."ast"()
    set $P506, $P505
    goto if227_end742
  if227_else741:
    set $S501, _lex_param_1
    box $P507, $S501
    set $P506, $P507
  if227_end742:
    $P508 = _lex_param_1."!make"($P506)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_81_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 990
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\\")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_82_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 991
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P501, _lex_param_1["stopper"]
    unless_null $P501, fallback745
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback745:
    set $S501, $P501
    $P503 = _lex_param_1."!make"($S501)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_83_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 993
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\b")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_84_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 994
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\n")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_85_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 995
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\r")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_86_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 996
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\t")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_87_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 997
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\f")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_88_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P501 = _lex_param_1."!make"("\e")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_89_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1000
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1001
    nqp_decontainerize $P501, _lex_param_0
    set $P502, _lex_param_1["hexint"]
    unless_null $P502, fallback748
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback748:
    unless $P502 goto if228_else746 
    set $P504, _lex_param_1["hexint"]
    unless_null $P504, fallback749
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback749:
    set $P510, $P504
    goto if228_end747
  if228_else746:
    set $P507, _lex_param_1["hexints"]
    unless_null $P507, fallback750
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback750:
    set $P506, $P507["hexint"]
    unless_null $P506, fallback751
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback751:
    set $P510, $P506
  if228_end747:
    $P511 = $P501."ints_to_string"($P510)
    $P512 = _lex_param_1."!make"($P511)
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_90_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1005
    nqp_decontainerize $P501, _lex_param_0
    set $P502, _lex_param_1["octint"]
    unless_null $P502, fallback754
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback754:
    unless $P502 goto if229_else752 
    set $P504, _lex_param_1["octint"]
    unless_null $P504, fallback755
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback755:
    set $P510, $P504
    goto if229_end753
  if229_else752:
    set $P507, _lex_param_1["octints"]
    unless_null $P507, fallback756
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback756:
    set $P506, $P507["octint"]
    unless_null $P506, fallback757
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback757:
    set $P510, $P506
  if229_end753:
    $P511 = $P501."ints_to_string"($P510)
    $P512 = _lex_param_1."!make"($P511)
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_91_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1009
    set $P501, _lex_param_1["charspec"]
    unless_null $P501, fallback758
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback758:
    $P503 = $P501."ast"()
    $P504 = _lex_param_1."!make"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_92_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1013
    $P501 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_93_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1017
    set $P501, _lex_param_1["textq"]
    unless_null $P501, fallback761
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback761:
    unless $P501 goto if230_else759 
    set $P503, _lex_param_1["textq"]
    unless_null $P503, fallback762
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback762:
    $P505 = $P503."Str"()
    set $S502, $P505
    concat $S501, "\\", $S502
    box $P510, $S501
    set $P509, $P510
    goto if230_end760
  if230_else759:
    set $P506, _lex_param_1["textqq"]
    unless_null $P506, fallback763
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback763:
    $P508 = $P506."Str"()
    set $P509, $P508
  if230_end760:
    $P511 = _lex_param_1."!make"($P509)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_94_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $P502, _lex_param_1["integer"]
    unless_null $P502, fallback766
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback766:
    unless $P502 goto if231_else764 
.annotate 'line', 1022
    set $P504, _lex_param_1["integer"]
    unless_null $P504, fallback767
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback767:
    $P506 = $P504."ast"()
    set $P507, $P506
    goto if231_end765
  if231_else764:
    set $S502, _lex_param_1
    find_encoding $I502, "utf8"
    trans_encoding $S501, $S502, $I502
    find_codepoint $I501, $S501
    box $P508, $I501
    set $P507, $P508
  if231_end765:
    set $P101, $P507
    set $N501, $P101
    set $N502, 0
    islt $I503, $N501, $N502
    box $P512, $I503
    set $P511, $P512
    unless $I503 goto if232_end769 
.annotate 'line', 1026
    $P509 = _lex_param_1."CURSOR"()
    set $S504, _lex_param_1
    concat $S503, "Unrecognized character name ", $S504
    $P510 = $P509."panic"($S503)
    set $P511, $P510
  if232_end769:
.annotate 'line', 1027
    set $I504, $P101
    chr $S505, $I504
    $P513 = _lex_param_1."!make"($S505)
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_95_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P512 = 'cuid_196_1346233437.626' 
    capture_lex $P512 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
    set $P506, _lex_param_1["charname"]
    unless_null $P506, fallback770
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback770:
    set $P503, $P506
    iter $P505, $P506
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers771
    push_eh $P509
  for_next772:
    unless $P505, for_done774
    shift $P510, $P505
  for_redo773:
    .const 'Sub' $P508 = 'cuid_196_1346233437.626' 
    capture_lex $P508
    $P503 = $P508($P510)
    goto for_next772
  for_handlers771:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next772
    eq $P509, .CONTROL_LOOP_REDO, for_redo773
  for_done774:
    pop_eh 
.annotate 'line', 1033
    $P511 = _lex_param_1."!make"($P101)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346233437.626") :anon :lex :outer("cuid_95_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1032
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$str"
    set $S502, $P501
    $P502 = _lex_param_0."ast"()
    set $S503, $P502
    concat $S501, $S502, $S503
    box $P503, $S501
    store_lex "$str", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_96_1346233437.626") :anon :lex :outer("cuid_97_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1036
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1037
    set $P501, _lex_param_1["charnames"]
    unless_null $P501, fallback777
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback777:
    unless $P501 goto if233_else775 
    set $P503, _lex_param_1["charnames"]
    unless_null $P503, fallback778
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback778:
    $P505 = $P503."ast"()
    set $P507, $P505
    goto if233_end776
  if233_else775:
    $P506 = "&string_to_int"(_lex_param_1, 10)
    set $I501, $P506
    chr $S501, $I501
    box $P508, $S501
    set $P507, $P508
  if233_end776:
    $P509 = _lex_param_1."!make"($P507)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1050
    .const 'Sub' $P554 = 'cuid_197_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_98_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_99_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_100_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_101_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_102_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_103_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_104_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_105_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_106_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_107_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_108_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_109_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_110_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_111_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_112_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_113_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_114_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_115_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_116_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_117_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_118_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_119_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_120_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_121_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_122_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_123_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_124_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_125_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_126_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_127_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_128_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_129_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_130_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_131_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_132_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_133_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_134_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_135_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_136_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_137_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_138_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_139_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_140_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_141_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_142_1346233437.626' 
    capture_lex $P554 
    .const 'Sub' $P554 = 'cuid_143_1346233437.626' 
    capture_lex $P554 
    .lex "&value_type", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P501 = 'cuid_197_1346233437.626' 
    capture_lex $P501
    set $P101, $P501
    get_who $P503, $P102
    set $P502, $P503["%parrot_config"]
    unless_null $P502, fallback783
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["%parrot_config"]
    unless_null $P504, vivi_236784
    new $P507, 'Hash'
    set $P504, $P507
  vivi_236784:
    set $P502, $P504
  fallback783:
    .const 'Sub' $P508 = 'cuid_98_1346233437.626' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_99_1346233437.626' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_100_1346233437.626' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_101_1346233437.626' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_102_1346233437.626' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_103_1346233437.626' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_104_1346233437.626' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_105_1346233437.626' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_106_1346233437.626' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_107_1346233437.626' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_108_1346233437.626' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_109_1346233437.626' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_110_1346233437.626' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_111_1346233437.626' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_112_1346233437.626' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_113_1346233437.626' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_114_1346233437.626' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_115_1346233437.626' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_116_1346233437.626' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_117_1346233437.626' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_118_1346233437.626' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_119_1346233437.626' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_120_1346233437.626' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_121_1346233437.626' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_122_1346233437.626' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_123_1346233437.626' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_124_1346233437.626' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_125_1346233437.626' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_126_1346233437.626' 
    capture_lex $P536
    .const 'Sub' $P537 = 'cuid_127_1346233437.626' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_128_1346233437.626' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_129_1346233437.626' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_130_1346233437.626' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_131_1346233437.626' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_132_1346233437.626' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_133_1346233437.626' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_134_1346233437.626' 
    capture_lex $P544
    .const 'Sub' $P545 = 'cuid_135_1346233437.626' 
    capture_lex $P545
    .const 'Sub' $P546 = 'cuid_136_1346233437.626' 
    capture_lex $P546
    .const 'Sub' $P547 = 'cuid_137_1346233437.626' 
    capture_lex $P547
    .const 'Sub' $P548 = 'cuid_138_1346233437.626' 
    capture_lex $P548
    .const 'Sub' $P549 = 'cuid_139_1346233437.626' 
    capture_lex $P549
    .const 'Sub' $P550 = 'cuid_140_1346233437.626' 
    capture_lex $P550
    .const 'Sub' $P551 = 'cuid_141_1346233437.626' 
    capture_lex $P551
    .const 'Sub' $P552 = 'cuid_142_1346233437.626' 
    capture_lex $P552
    .const 'Sub' $P553 = 'cuid_143_1346233437.626' 
    capture_lex $P553
    .return ($P553) 
.end
.HLL "nqp"
.namespace []
.sub "value_type" :subid("cuid_197_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1086
    .param pmc _lex_param_0 
    .lex "$value", _lex_param_0 
    isa $I501, _lex_param_0, "NameSpace"
    unless $I501 goto if234_else779 
    set $S502, "namespace"
    goto if234_end780
  if234_else779:
    isa $I502, _lex_param_0, "Sub"
    unless $I502 goto if235_else781 
    set $S501, "sub"
    goto if235_end782
  if235_else781:
    set $S501, "var"
  if235_end782:
    set $S502, $S501
  if234_end780:
    .return ($S502) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_98_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1068
    $P504 = $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_99_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1072
    .param pmc _lex_param_0 
    .const 'Sub' $P527 = 'cuid_198_1346233437.626' 
    capture_lex $P527 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    split $P503, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P501, $P502, "@!stages", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    split $P506, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P504, $P505, "@!cmdoptions", $P506
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    box $P509, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P507, $P508, "$!usage", $P509
    nqp_decontainerize $P513, _lex_param_0
    nqp_get_sc_object $P514, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P515, $P513, $P514, "@!cmdoptions"
    set $P510, $P515
    iter $P512, $P515
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers785
    push_eh $P517
  for_next786:
    unless $P512, for_done788
    shift $P518, $P512
  for_redo787:
    .const 'Sub' $P516 = 'cuid_198_1346233437.626' 
    capture_lex $P516
    $P510 = $P516($P518)
    goto for_next786
  for_handlers785:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next786
    eq $P517, .CONTROL_LOOP_REDO, for_redo787
  for_done788:
    pop_eh 
    find_lex $P520, "$?PACKAGE"
    get_who $P519, $P520
    getinterp $P522
    set $P521, $P522[.IGLOBALS_CONFIG_HASH]
    unless_null $P521, fallback789
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P523
  fallback789:
    set $P519["%parrot_config"], $P521
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    new $P526, 'Hash'
    repr_bind_attr_obj $P524, $P525, "%!config", $P526
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346233437.626") :anon :lex :outer("cuid_99_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1079
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P507, $P504, $P506, "$!usage"
    set $S502, $P507
    set $S505, _lex_param_0
    concat $S504, "    ", $S505
    concat $S503, $S504, "\n"
    concat $S501, $S502, $S503
    box $P508, $S501
    repr_bind_attr_obj $P501, $P503, "$!usage", $P508
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "get_exports" :subid("cuid_100_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1092
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("tagset") :optional 
    .param int haz_param_4 :opt_flag 
    .param pmc _lex_param_3 :slurpy 
    .const 'Sub' $P533 = 'cuid_199_1346233437.626' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_200_1346233437.626' 
    capture_lex $P533 
    if haz_param_4, default814
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P532
  default814:
    .lex "%exports", $P101 
    .lex "%source", $P102 
    .lex "self", _lex_param_0 
    .lex "$module", _lex_param_1 
    .lex "$tagset", _lex_param_2 
    .lex "@symbols", _lex_param_3 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    does $I502, _lex_param_1, "hash"
    box $P503, $I502
    isfalse $I501, $P503
    box $P507, $I501
    set $P506, $P507
    unless $I501 goto if237_end791 
.annotate 'line', 1094
.annotate 'line', 1095
    nqp_decontainerize $P504, _lex_param_0
    $P505 = $P504."get_module"(_lex_param_1)
    set _lex_param_1, $P505
    set $P506, _lex_param_1
  if237_end791:
    set $P508, _lex_param_2
    defined $I503, $P508
    if $I503, defor792
    unless _lex_param_3 goto if238_else793 
    set $S501, "ALL"
    goto if238_end794
  if238_else793:
    set $S501, "DEFAULT"
  if238_end794:
    box $P509, $S501
    set $P508, $P509
  defor792:
    set _lex_param_2, $P508
    set $P511, _lex_param_1["EXPORT"]
    unless_null $P511, fallback795
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback795:
    set $S502, _lex_param_2
    set $P510, $P511[$S502]
    unless_null $P510, fallback796
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback796:
    set $P102, $P510
    defined $I505, $P102
    box $P514, $I505
    isfalse $I504, $P514
    box $P518, $I504
    set $P517, $P518
    unless $I504 goto if239_end798 
.annotate 'line', 1101
    set $S503, _lex_param_2
    iseq $I506, $S503, "ALL"
    unless $I506 goto if240_else799 
    set $P516, _lex_param_1
    goto if240_end800
  if240_else799:
    new $P515, 'Hash'
    set $P516, $P515
  if240_end800:
    set $P102, $P516
    set $P517, $P102
  if239_end798:
    unless _lex_param_3 goto if241_else801 
.annotate 'line', 1104
    set $P519, _lex_param_3
    iter $P521, _lex_param_3
    new $P523, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P523, for_handlers805
    push_eh $P523
  for_next806:
    unless $P521, for_done808
    shift $P524, $P521
  for_redo807:
    .const 'Sub' $P522 = 'cuid_199_1346233437.626' 
    capture_lex $P522
    $P519 = $P522($P524)
    goto for_next806
  for_handlers805:
    .get_results ($P523)
    pop_upto_eh $P523
    getattribute $P523, $P523, 'type'
    eq $P523, .CONTROL_LOOP_NEXT, for_next806
    eq $P523, .CONTROL_LOOP_REDO, for_redo807
  for_done808:
    pop_eh 
    set $P531, $P519
    goto if241_end802
  if241_else801:
.annotate 'line', 1110
    set $P525, $P102
    iter $P527, $P102
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, for_handlers810
    push_eh $P529
  for_next811:
    unless $P527, for_done813
    shift $P530, $P527
  for_redo812:
    .const 'Sub' $P528 = 'cuid_200_1346233437.626' 
    capture_lex $P528
    $P525 = $P528($P530)
    goto for_next811
  for_handlers810:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, for_next811
    eq $P529, .CONTROL_LOOP_REDO, for_redo812
  for_done813:
    pop_eh 
    set $P531, $P525
  if241_end802:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346233437.626") :anon :lex :outer("cuid_100_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1105
    .param pmc _lex_param_0 
    .lex "$value", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "%source"
    set $S501, _lex_param_0
    set $P502, $P503[$S501]
    unless_null $P502, fallback803
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback803:
    set $P101, $P502
    find_lex $P506, "%exports"
.annotate 'line', 1107
    $P507 = "&value_type"($P101)
    set $S502, $P507
    set $P505, $P506[$S502]
    unless_null $P505, fallback804
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback804:
    set $S503, _lex_param_0
    set $P505[$S503], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346233437.626") :anon :lex :outer("cuid_100_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1111
    .param pmc _lex_param_0 
    .lex "$value", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1112
    $P502 = _lex_param_0."value"()
    set $P101, $P502
    find_lex $P504, "%exports"
.annotate 'line', 1113
    $P505 = "&value_type"($P101)
    set $S501, $P505
    set $P503, $P504[$S501]
    unless_null $P503, fallback809
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback809:
    $P507 = _lex_param_0."key"()
    set $S502, $P507
    set $P503[$S502], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "get_module" :subid("cuid_101_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1119
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@name", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1120
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."parse_name"(_lex_param_1)
    set $P101, $P503
.annotate 'line', 1121
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P506, $P504, $P505, "$!language"
    set $S502, $P506
    downcase $S501, $S502
    $P507 = $P101."unshift"($S501)
    get_root_namespace $P508, $P101
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_102_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1125
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_5 :opt_flag 
    if haz_param_5, default817
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P509
  default817:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    set $P504, _lex_param_1
    unless _lex_param_1 goto if242_end816 
.annotate 'line', 1126
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_bind_attr_obj $P501, $P502, "$!language", _lex_param_1
    set $S501, _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    compreg $S501, $P503
    box $P505, $S501
    set $P504, $P505
  if242_end816:
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P508, $P506, $P507, "$!language"
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_103_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1133
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    set $S501, _lex_param_1
    compreg $P501, $S501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_104_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1137
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P503, $P501, $P502, "%!config"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_105_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1139
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1140
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."parse_name"(_lex_param_1)
    join $S501, "/", $P504
    box $P505, $S501
    set $P101, $P505
    box $P506, 0
    set $P102, $P506
    new $P508, 'ExceptionHandler'
    set_label $P508, catch_handler_244819
    $P508.'handle_types_except'(.CONTROL_ALL)
    push_eh $P508
.annotate 'line', 1142
    set $S503, $P101
    concat $S502, $S503, ".pbc"
    load_bytecode $S502
    box $P507, 1
    set $P102, $P507
    set $P509, $P102
    pop_eh 
    goto skip_handler_243818
  catch_handler_244819:
    .get_results ($P508) 
    set $I10001, 1
    set $P508["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P508
    pop_upto_eh $P508
    pop_eh 
    set $P509, $P10001
    goto skip_handler_243818
  skip_handler_243818:
    set $P511, $P102
    if $P102 goto unless245_end821 
.annotate 'line', 1143
    set $S505, $P101
    concat $S504, $S505, ".pir"
    load_bytecode $S504
    box $P510, 1
    set $P102, $P510
    set $P511, $P102
  unless245_end821:
.annotate 'line', 1144
    nqp_decontainerize $P512, _lex_param_0
    $P513 = $P512."get_module"(_lex_param_1)
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_106_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1147
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
.annotate 'line', 1149
    getinterp $P501
    $P502 = $P501."stdout_handle"()
    $P503 = $P502."tell"()
    set $N501, $P503
    find_dynamic_lex $P504, "$*AUTOPRINTPOS"
    unless_null $P504, fallback824
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$AUTOPRINTPOS"]
    unless_null $P505, fallback825
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback825:
    unless_null $P505, vivi_247826
    die "Contextual $*AUTOPRINTPOS not found"
    box $P509, "Contextual $*AUTOPRINTPOS not found"
    set $P505, $P509
  vivi_247826:
    set $P504, $P505
  fallback824:
    set $N502, $P504
    isgt $I501, $N501, $N502
    box $P511, $I501
    set $P510, $P511
    if $I501 goto unless246_end823 
    set $S501, _lex_param_1
    say $S501
    box $P512, $S501
    set $P510, $P512
  unless246_end823:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_107_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P541 = 'cuid_201_1346233437.626' 
    capture_lex $P541 
    .const 'Sub' $P541 = 'cuid_205_1346233437.626' 
    capture_lex $P541 
    .lex "&blank_context", $P101 
    .lex "$interactive_ctx", $P102 
    .lex "%interactive_pad", $P103 
    .lex "$target", $P104 
    .lex "$stdin", $P105 
    .lex "$encoding", $P106 
    .lex "$save_ctx", $P107 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .const 'Sub' $P501 = 'cuid_201_1346233437.626' 
    capture_lex $P501
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'Hash'
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
.annotate 'line', 1166
    find_lex $P510, "$?PACKAGE"
    get_who $P509, $P510
    set $P508, $P509["blank_context"]
    unless_null $P508, fallback829
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["blank_context"]
    unless_null $P511, vivi_248830
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P514
  vivi_248830:
    set $P508, $P511
  fallback829:
    null $P515
    $P516 = $P508."set_outer"($P515)
.annotate 'line', 1167
    $P517 = "&blank_context"()
    set $P102, $P517
    getattribute $P518, $P102, "lex_pad"
    set $P103, $P518
    set $P519, _lex_param_1["target"]
    unless_null $P519, fallback831
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P520
  fallback831:
    set $S502, $P519
    downcase $S501, $S502
    box $P521, $S501
    set $P104, $P521
.annotate 'line', 1173
    getinterp $P522
    $P523 = $P522."stderr_handle"()
    nqp_decontainerize $P524, _lex_param_0
    $P525 = $P524."interactive_banner"()
    $P526 = $P523."print"($P525)
.annotate 'line', 1175
    getinterp $P527
    $P528 = $P527."stdin_handle"()
    set $P105, $P528
    set $P529, _lex_param_1["encoding"]
    unless_null $P529, fallback832
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P530
  fallback832:
    set $S503, $P529
    box $P531, $S503
    set $P106, $P531
    set $P532, $P106
    unless $P106 goto if250_end836 
    set $S504, $P106
    isne $I501, $S504, "fixed_8"
    box $P533, $I501
    set $P532, $P533
  if250_end836:
    set $P535, $P532
    unless $P532 goto if249_end834 
.annotate 'line', 1177
.annotate 'line', 1178
    $P534 = $P105."encoding"($P106)
    set $P535, $P534
  if249_end834:
    new $P539, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P539, while251_handlers840
    push_eh $P539
  while251_test837:
    box $P540, 1
    set $P538, $P540
    unless 1 goto while251_done841 
  while251_redo839:
    .const 'Sub' $P536 = 'cuid_205_1346233437.626' 
    capture_lex $P536
    $P537 = $P536()
    set $P538, $P537
    goto while251_test837 
  while251_handlers840:
    .get_results ($P539)
    pop_upto_eh $P539
    getattribute $P539, $P539, 'type'
    eq $P539, .CONTROL_LOOP_NEXT, while251_test837
    eq $P539, .CONTROL_LOOP_REDO, while251_redo839
  while251_done841:
    pop_eh 
    .return ($P538) 
.end
.HLL "nqp"
.namespace []
.sub "blank_context" :subid("cuid_201_1346233437.626") :anon :lex :outer("cuid_107_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1158
    .lex "%blank_pad", $P101 
    new $P501, 'Hash'
    set $P101, $P501
    getinterp $P504
    set $P503, $P504["context"]
    unless_null $P503, fallback827
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback827:
    getattribute $P502, $P503, "lex_pad"
    copy $P502, $P101
    getinterp $P507
    set $P506, $P507["context"]
    unless_null $P506, fallback828
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P508
  fallback828:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346233437.626") :anon :lex :outer("cuid_107_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1182
    .const 'Sub' $P529 = 'cuid_203_1346233437.626' 
    capture_lex $P529 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    find_lex $P506, "$stdin"
    set $P507, $P506
    if $P506 goto unless252_end843 
    die 0, .CONTROL_LOOP_LAST
    box $P508, 0
    set $P507, $P508
  unless252_end843:
.annotate 'line', 1185
    find_lex $P511, "self"
    nqp_decontainerize $P510, $P511
    $P512 = $P510."interactive_prompt"()
    set $P509, $P512
    defined $I501, $P509
    if $I501, defor844
    box $P513, "> "
    set $P509, $P513
  defor844:
    set $P101, $P509
.annotate 'line', 1186
    find_lex $P514, "$stdin"
    set $S501, $P101
    $P515 = $P514."readline_interactive"($S501)
    set $P102, $P515
    isnull $I502, $P102
    set $I503, $I502
    unless $I502 goto if253_end846 
    die 0, .CONTROL_LOOP_LAST
    set $I503, 0
  if253_end846:
    defined $I504, $P102
    set $I505, $I504
    if $I504 goto unless254_end848 
.annotate 'line', 1189
    print "\n"
    die 0, .CONTROL_LOOP_LAST
    set $I505, 0
  unless254_end848:
.annotate 'line', 1195
    getinterp $P516
    $P517 = $P516."stdout_handle"()
    $P518 = $P517."tell"()
    set $P103, $P518
    find_lex $P520, "self"
    nqp_decontainerize $P519, $P520
    set $P104, $P519
    unless_null $P105, fallback849
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    set $P521, $P522["$MAIN_CTX"]
    unless_null $P521, fallback850
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P524
  fallback850:
    unless_null $P521, vivi_255851
    die "Contextual $*MAIN_CTX not found"
    box $P525, "Contextual $*MAIN_CTX not found"
    set $P521, $P525
  vivi_255851:
    set $P105, $P521
  fallback849:
    set $P528, $P102
    unless $P102 goto if256_end853 
    .const 'Sub' $P526 = 'cuid_203_1346233437.626' 
    capture_lex $P526
    $P527 = $P526()
    set $P528, $P527
  if256_end853:
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346233437.626") :anon :lex :outer("cuid_205_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1199
    .const 'Sub' $P548 = 'cuid_202_1346233437.626' 
    capture_lex $P548 
    .const 'Sub' $P548 = 'cuid_204_1346233437.626' 
    capture_lex $P548 
    .lex "$output", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$code"
    set $S502, $P502
    concat $S501, $S502, "\n"
    box $P503, $S501
    store_lex "$code", $P503
.annotate 'line', 1202
    new $P511, 'ExceptionHandler'
    set_label $P511, catch_handler_258855
    $P511.'handle_types_except'(.CONTROL_ALL)
    push_eh $P511
.annotate 'line', 1203
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    find_lex $P506, "$code"
    find_lex $P507, "$save_ctx"
    find_lex $P508, "%adverbs"
    $P509 = $P504."eval"($P506, $P507 :named("outer_ctx"), $P508 :flat :named)
    set $P101, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P510
    pop_eh 
    goto skip_handler_257854
  catch_handler_258855:
    .get_results ($P511) 
    .const 'Sub' $P10001 = 'cuid_202_1346233437.626' 
    capture_lex $P10001
    $P10002 = $P10001($P511)
    set $I10001, 1
    set $P511["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P511
    pop_upto_eh $P511
    pop_eh 
    set $P512, $P10003
    goto skip_handler_257854
  skip_handler_257854:
    find_dynamic_lex $P513, "$*MAIN_CTX"
    unless_null $P513, fallback858
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["$MAIN_CTX"]
    unless_null $P514, fallback859
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P517
  fallback859:
    unless_null $P514, vivi_260860
    die "Contextual $*MAIN_CTX not found"
    box $P518, "Contextual $*MAIN_CTX not found"
    set $P514, $P518
  vivi_260860:
    set $P513, $P514
  fallback858:
    defined $I501, $P513
    box $P534, $I501
    set $P533, $P534
    unless $I501 goto if259_end857 
.annotate 'line', 1209
.annotate 'line', 1210
    find_dynamic_lex $P522, "$*MAIN_CTX"
    unless_null $P522, fallback861
    get_hll_global $P525, "GLOBAL"
    get_who $P524, $P525
    set $P523, $P524["$MAIN_CTX"]
    unless_null $P523, fallback862
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P526
  fallback862:
    unless_null $P523, vivi_261863
    die "Contextual $*MAIN_CTX not found"
    box $P527, "Contextual $*MAIN_CTX not found"
    set $P523, $P527
  vivi_261863:
    set $P522, $P523
  fallback861:
    $P528 = $P522."lexpad_full"()
    set $P519, $P528
    iter $P521, $P528
    new $P530, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P530, for_handlers864
    push_eh $P530
  for_next865:
    unless $P521, for_done867
    shift $P531, $P521
  for_redo866:
    .const 'Sub' $P529 = 'cuid_204_1346233437.626' 
    capture_lex $P529
    $P519 = $P529($P531)
    goto for_next865
  for_handlers864:
    .get_results ($P530)
    pop_upto_eh $P530
    getattribute $P530, $P530, 'type'
    eq $P530, .CONTROL_LOOP_NEXT, for_next865
    eq $P530, .CONTROL_LOOP_REDO, for_redo866
  for_done867:
    pop_eh 
    find_lex $P532, "$interactive_ctx"
    store_lex "$save_ctx", $P532
    set $P533, $P532
  if259_end857:
    isnull $I502, $P101
    set $I503, $I502
    unless $I502 goto if262_end869 
    die 0, .CONTROL_LOOP_NEXT
    set $I503, 0
  if262_end869:
    find_lex $P535, "$target"
    isfalse $I504, $P535
    unless $I504 goto if263_else870 
.annotate 'line', 1217
.annotate 'line', 1218
    find_lex $P537, "self"
    nqp_decontainerize $P536, $P537
    $P538 = $P536."autoprint"($P101)
    set $P547, $P538
    goto if263_end871
  if263_else870:
    find_lex $P539, "$target"
    set $S503, $P539
    iseq $I505, $S503, "pir"
    unless $I505 goto if264_else872 
.annotate 'line', 1219
    set $S504, $P101
    say $S504
    box $P546, $S504
    set $P545, $P546
    goto if264_end873
  if264_else872:
.annotate 'line', 1221
.annotate 'line', 1222
    find_lex $P541, "self"
    nqp_decontainerize $P540, $P541
    find_lex $P542, "$target"
    find_lex $P543, "%adverbs"
    $P544 = $P540."dumper"($P101, $P542, $P543 :flat :named)
    set $P545, $P544
  if264_end873:
    set $P547, $P545
  if263_end871:
    .return ($P547) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346233437.626") :anon :lex :outer("cuid_203_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1204
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S502, $P101
    concat $S501, $S502, "\n"
    print $S501
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346233437.626") :anon :lex :outer("cuid_203_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1210
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%interactive_pad"
.annotate 'line', 1211
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    $P503 = _lex_param_0."value"()
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_108_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1228
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P517 = 'cuid_206_1346233437.626' 
    capture_lex $P517 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    interpinfo $S501, .INTERPINFO_CURRENT_RUNCORE
    box $P503, $S501
    set $P102, $P503
    set $P504, _lex_param_3["profile-compile"]
    unless_null $P504, fallback876
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback876:
    set $P506, $P504
    unless $P504 goto if265_end875 
.annotate 'line', 1232
    set_runcore "subprof_hll"
    box $P507, "subprof_hll"
    set $P506, $P507
  if265_end875:
.annotate 'line', 1235
    nqp_decontainerize $P508, _lex_param_0
    $P509 = $P508."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P509
    isa $I502, $P101, "String"
    box $P510, $I502
    isfalse $I501, $P510
    set $I504, $I501
    unless $I501 goto if267_end880 
    set $P511, _lex_param_3["target"]
    unless_null $P511, fallback881
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback881:
    set $S502, $P511
    iseq $I503, $S502, ""
    set $I504, $I503
  if267_end880:
    box $P516, $I504
    set $P515, $P516
    unless $I504 goto if266_end878 
    .const 'Sub' $P513 = 'cuid_206_1346233437.626' 
    capture_lex $P513
    $P514 = $P513()
    set $P515, $P514
  if266_end878:
    set $S503, $P102
    set_runcore $S503
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346233437.626") :anon :lex :outer("cuid_108_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1238
    .lex "$outer_ctx", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "%adverbs"
    set $P502, $P503["outer_ctx"]
    unless_null $P502, fallback882
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback882:
    set $P101, $P502
    defined $I501, $P101
    box $P510, $I501
    set $P509, $P510
    unless $I501 goto if268_end884 
.annotate 'line', 1240
.annotate 'line', 1241
    find_lex $P506, "$output"
    set $P505, $P506[0]
    unless_null $P505, fallback885
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P507
  fallback885:
    $P508 = $P505."set_outer_ctx"($P101)
    set $P509, $P508
  if268_end884:
    find_lex $P512, "%adverbs"
    set $P511, $P512["profile"]
    unless_null $P511, fallback888
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P513
  fallback888:
    set $P514, $P511
    unless $P511 goto if269_end887 
.annotate 'line', 1244
    set_runcore "subprof_hll"
    box $P515, "subprof_hll"
    set $P514, $P515
  if269_end887:
    find_lex $P517, "%adverbs"
    set $P516, $P517["trace"]
    unless_null $P516, fallback889
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P518
  fallback889:
    set $I502, $P516
    trace $I502
.annotate 'line', 1248
    find_lex $P520, "@args"
    find_lex $P519, "$output"
    $P521 = $P519($P520 :flat)
    store_lex "$output", $P521
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_109_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

                $P0 = getinterp
                $P501 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P501
    box $P502, 0
    store_dynamic_lex "$*CTXSAVE", $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_110_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1265
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    join $S501, "", _lex_param_1
    box $P501, $S501
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_111_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default892
    new $P508, 'ResizablePMCArray'
    set _lex_param_1, $P508
  default892:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N501, _lex_param_1
    box $P504, $N501
    set $P503, $P504
    unless $N501 goto if270_end891 
.annotate 'line', 1270
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_bind_attr_obj $P501, $P502, "@!stages", _lex_param_1
    set $P503, _lex_param_1
  if270_end891:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P507, $P505, $P506, "@!stages"
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_112_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N501, _lex_param_1
    box $P506, $N501
    set $P505, $P506
    unless $N501 goto if271_end894 
.annotate 'line', 1277
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback895
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback895:
    repr_bind_attr_obj $P501, $P502, "$!parsegrammar", $P503
    set $P505, $P503
  if271_end894:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P509, $P507, $P508, "$!parsegrammar"
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_113_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1283
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N501, _lex_param_1
    box $P506, $N501
    set $P505, $P506
    unless $N501 goto if272_end897 
.annotate 'line', 1284
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback898
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback898:
    repr_bind_attr_obj $P501, $P502, "$!parseactions", $P503
    set $P505, $P503
  if272_end897:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P509, $P507, $P508, "$!parseactions"
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_114_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1290
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_115_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1292
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_116_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default901
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P508
  default901:
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    defined $I501, _lex_param_1
    box $P504, $I501
    set $P503, $P504
    unless $I501 goto if273_end900 
.annotate 'line', 1295
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_bind_attr_obj $P501, $P502, "$!compiler_progname", _lex_param_1
    set $P503, _lex_param_1
  if273_end900:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P507, $P505, $P506, "$!compiler_progname"
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_117_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default904
    new $P508, 'ResizablePMCArray'
    set _lex_param_1, $P508
  default904:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N501, _lex_param_1
    box $P504, $N501
    set $P503, $P504
    unless $N501 goto if274_end903 
.annotate 'line', 1303
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_bind_attr_obj $P501, $P502, "@!cmdoptions", _lex_param_1
    set $P503, _lex_param_1
  if274_end903:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P507, $P505, $P506, "@!cmdoptions"
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_118_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1309
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$program-name", $P101 
    .lex "$res", $P102 
    .lex "%opts", $P103 
    .lex "@a", $P104 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'Hash'
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    set $P505, _lex_param_1[2]
    unless_null $P505, fallback907
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P506
  fallback907:
    set $S501, $P505
    index $I502, $S501, "@INC", 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if275_end906 
.annotate 'line', 1318
    exit 0
    set $I503, 0
  if275_end906:
    set $P507, _lex_param_1[0]
    unless_null $P507, fallback908
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback908:
    set $P101, $P507
.annotate 'line', 1323
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."process_args"(_lex_param_1)
    set $P102, $P510
.annotate 'line', 1324
    $P511 = $P102."options"()
    set $P103, $P511
.annotate 'line', 1325
    $P512 = $P102."arguments"()
    set $P104, $P512
.annotate 'line', 1327
    $P513 = _lex_param_2."update"($P103)
    set $P514, _lex_param_2["help"]
    unless_null $P514, fallback913
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P515
  fallback913:
    set $P518, $P514
    if $P514 goto unless277_end912 
    set $P516, _lex_param_2["h"]
    unless_null $P516, fallback914
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P517
  fallback914:
    set $P518, $P516
  unless277_end912:
    set $P521, $P518
    unless $P518 goto if276_end910 
.annotate 'line', 1328
    nqp_decontainerize $P519, _lex_param_0
    $P520 = $P519."usage"($P101)
    set $P521, $P520
  if276_end910:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1333
    nqp_decontainerize $P522, _lex_param_0
    $P523 = $P522."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_119_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1337
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P575 = 'cuid_207_1346233437.626' 
    capture_lex $P575 
    .const 'Sub' $P575 = 'cuid_208_1346233437.626' 
    capture_lex $P575 
    .const 'Sub' $P575 = 'cuid_209_1346233437.626' 
    capture_lex $P575 
    .const 'Sub' $P575 = 'cuid_210_1346233437.626' 
    capture_lex $P575 
    .const 'Sub' $P575 = 'cuid_211_1346233437.626' 
    capture_lex $P575 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    set $P505, _lex_param_2["version"]
    unless_null $P505, fallback919
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P506
  fallback919:
    set $P509, $P505
    if $P505 goto unless279_end918 
    set $P507, _lex_param_2["v"]
    unless_null $P507, fallback920
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback920:
    set $P509, $P507
  unless279_end918:
    set $P512, $P509
    unless $P509 goto if278_end916 
.annotate 'line', 1338
    nqp_decontainerize $P510, _lex_param_0
    $P511 = $P510."version"()
    set $P512, $P511
  if278_end916:
    set $P513, _lex_param_2["verbose-config"]
    unless_null $P513, fallback927
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback927:
    set $P517, $P513
    if $P513 goto unless282_end926 
    set $P515, _lex_param_2["V"]
    unless_null $P515, fallback928
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P516
  fallback928:
    set $P517, $P515
  unless282_end926:
    set $P520, $P517
    if $P517 goto unless281_end924 
    set $P518, _lex_param_2["show-config"]
    unless_null $P518, fallback929
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P519
  fallback929:
    set $P520, $P518
  unless281_end924:
    set $P523, $P520
    unless $P520 goto if280_end922 
.annotate 'line', 1339
    nqp_decontainerize $P521, _lex_param_0
    $P522 = $P521."verbose-config"()
    set $P523, $P522
  if280_end922:
    set $P524, _lex_param_2["nqpevent"]
    unless_null $P524, fallback932
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P525
  fallback932:
    set $P530, $P524
    unless $P524 goto if283_end931 
.annotate 'line', 1341
    nqp_decontainerize $P526, _lex_param_0
    set $P527, _lex_param_2["nqpevent"]
    unless_null $P527, fallback933
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P528
  fallback933:
    $P529 = $P526."nqpevent"($P527)
    set $P530, $P529
  if283_end931:
    box $P531, 0
    set $P103, $P531
    set $P532, _lex_param_2["target"]
    unless_null $P532, fallback934
    nqp_get_sc_object $P533, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P533
  fallback934:
    set $S502, $P532
    downcase $S501, $S502
    box $P534, $S501
    set $P104, $P534
    new $P561, 'ExceptionHandler'
    set_label $P561, catch_handler_299966
    $P561.'handle_types_except'(.CONTROL_ALL)
    push_eh $P561
.annotate 'line', 1347
    new $P559, 'ExceptionHandler'
    set_label $P559, catch_handler_295961
    $P559.'handle_types_except'(.CONTROL_ALL)
    push_eh $P559
    new $P559, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P559, catch_handler_296962
    push_eh $P559
    set $P535, _lex_param_2["e"]
    unless_null $P535, fallback937
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P536
  fallback937:
    defined $I501, $P535
    unless $I501 goto if284_else935 
    .const 'Sub' $P537 = 'cuid_207_1346233437.626' 
    capture_lex $P537
    $P538 = $P537()
    set $P551, $P538
    goto if284_end936
  if284_else935:
    isfalse $I502, _lex_param_1
    unless $I502 goto if287_else943 
.annotate 'line', 1356
    nqp_decontainerize $P539, _lex_param_0
    $P540 = $P539."interactive"(_lex_param_2 :flat :named)
    set $P101, $P540
    set $P550, $P101
    goto if287_end944
  if287_else943:
    set $P541, _lex_param_2["combine"]
    unless_null $P541, fallback947
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P542
  fallback947:
    unless $P541 goto if288_else945 
.annotate 'line', 1357
    nqp_decontainerize $P543, _lex_param_0
    $P544 = $P543."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P544
    set $P549, $P101
    goto if288_end946
  if288_else945:
.annotate 'line', 1358
    nqp_decontainerize $P545, _lex_param_0
    set $P546, _lex_param_1[0]
    unless_null $P546, fallback948
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P547
  fallback948:
    $P548 = $P545."evalfiles"($P546, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P548
    set $P549, $P101
  if288_end946:
    set $P550, $P549
  if287_end944:
    set $P551, $P550
  if284_end936:
    isnull $I504, $P101
    box $P552, $I504
    isfalse $I503, $P552
    set $I506, $I503
    unless $I503 goto if290_end952 
    set $S503, $P104
    iseq $I505, $S503, "pir"
    set $I506, $I505
  if290_end952:
    box $P556, $I506
    set $P555, $P556
    unless $I506 goto if289_end950 
    .const 'Sub' $P553 = 'cuid_208_1346233437.626' 
    capture_lex $P553
    $P554 = $P553()
    set $P555, $P554
  if289_end950:
    nqp_get_sc_object $P557, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    nqp_get_sc_object $P558, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P560, $P558
    pop_eh 
    pop_eh 
    goto skip_handler_294960
  catch_handler_295961:
    .get_results ($P559) 
    .const 'Sub' $P10001 = 'cuid_209_1346233437.626' 
    capture_lex $P10001
    $P10002 = $P10001($P559)
    set $I10001, 1
    set $P559["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P559
    pop_upto_eh $P559
    pop_eh 
    set $P560, $P10003
    goto skip_handler_294960
  catch_handler_296962:
    .get_results ($P559) 
    .const 'Sub' $P10004 = 'cuid_210_1346233437.626' 
    capture_lex $P10004
    $P10005 = $P10004($P559)
    set $I10002, 1
    set $P559["handled"], $I10002
    nqp_get_sc_object $P10006, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P559
    pop_upto_eh $P559
    pop_eh 
    set $P560, $P10006
    goto skip_handler_294960
  skip_handler_294960:
    set $P562, $P560
    pop_eh 
    goto skip_handler_298965
  catch_handler_299966:
    .get_results ($P561) 
    set $I10001, 1
    set $P561["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P561
    pop_upto_eh $P561
    pop_eh 
    set $P562, $P10001
    goto skip_handler_298965
  skip_handler_298965:
    set $P574, $P103
    unless $P103 goto if300_end968 
.annotate 'line', 1383
    set $P563, _lex_param_2["ll-exception"]
    unless_null $P563, fallback973
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P563, $P564
  fallback973:
    set $P567, $P563
    if $P563 goto unless302_end972 
    nqp_decontainerize $P565, _lex_param_0
    can $I508, $P565, "handle-exception"
    box $P566, $I508
    isfalse $I507, $P566
    box $P568, $I507
    set $P567, $P568
  unless302_end972:
    unless $P567 goto if301_else969 
    .const 'Sub' $P569 = 'cuid_211_1346233437.626' 
    capture_lex $P569
    $P570 = $P569()
    set $P573, $P570
    goto if301_end970
  if301_else969:
.annotate 'line', 1390
.annotate 'line', 1391
    nqp_decontainerize $P571, _lex_param_0
    $P572 = $P571."handle-exception"($P102)
    set $P573, $P572
  if301_end970:
    set $P574, $P573
  if300_end968:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346233437.626") :anon :lex :outer("cuid_119_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1348
    .lex "$?FILES", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    nqp_get_sc_object $P504, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    box $P505, "-e"
    repr_bind_attr_obj $P502, $P504, "$!user_progname", $P505
    box $P506, "-e"
    set $P101, $P506
.annotate 'line', 1351
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    find_lex $P510, "%adverbs"
    set $P509, $P510["e"]
    unless_null $P509, fallback938
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P511
  fallback938:
    find_lex $P512, "@a"
    find_lex $P513, "%adverbs"
    $P514 = $P507."eval"($P509, "-e", $P512 :flat, $P513 :flat :named)
    store_lex "$result", $P514
    find_lex $P515, "$target"
    set $S501, $P515
    iseq $I501, $S501, ""
    set $I503, $I501
    if $I501 goto unless286_end942 
    find_lex $P516, "$target"
    set $S502, $P516
    iseq $I502, $S502, "pir"
    set $I503, $I502
  unless286_end942:
    box $P524, $I503
    set $P523, $P524
    if $I503 goto unless285_end940 
.annotate 'line', 1352
.annotate 'line', 1353
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    find_lex $P519, "$result"
    find_lex $P520, "$target"
    find_lex $P521, "%adverbs"
    $P522 = $P517."dumper"($P519, $P520, $P521 :flat :named)
    set $P523, $P522
  unless285_end940:
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346233437.626") :anon :lex :outer("cuid_119_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1360
    .lex "$output", $P101 
    .lex "$fh", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P504, "%adverbs"
    set $P503, $P504["output"]
    unless_null $P503, fallback953
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback953:
    set $P101, $P503
    set $S501, $P101
    iseq $I501, $S501, ""
    set $I503, $I501
    if $I501 goto unless292_end957 
    set $S502, $P101
    iseq $I502, $S502, "-"
    set $I503, $I502
  unless292_end957:
    unless $I503 goto if291_else954 
.annotate 'line', 1363
    getinterp $P506
    $P507 = $P506."stdout_handle"()
    set $P510, $P507
    goto if291_end955
  if291_else954:
.annotate 'line', 1364
    new $P508, "FileHandle"
    $P509 = $P508."open"($P101, "w")
    set $P510, $P509
  if291_end955:
    set $P102, $P510
    set $P514, $P102
    if $P102 goto unless293_end959 
.annotate 'line', 1365
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    set $S504, $P101
    concat $S503, "Cannot write to ", $S504
    $P513 = $P511."panic"($S503)
    set $P514, $P513
  unless293_end959:
.annotate 'line', 1366
    find_lex $P515, "$result"
    $P516 = $P102."print"($P515)
.annotate 'line', 1367
    $P517 = $P102."close"()
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1346233437.626") :anon :lex :outer("cuid_119_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1369
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    box $P501, 1
    store_lex "$has_error", $P501
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1346233437.626") :anon :lex :outer("cuid_119_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1373
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    can $I501, $P501, "handle-control"
    unless $I501 goto if297_else963 
.annotate 'line', 1374
.annotate 'line', 1375
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."handle-control"(_lex_param_0)
    set $P506, $P505
    goto if297_end964
  if297_else963:
.annotate 'line', 1376
    rethrow _lex_param_0
    set $P506, _lex_param_0
  if297_end964:
    box $P507, 1
    store_lex "$has_error", $P507
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1346233437.626") :anon :lex :outer("cuid_119_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1384
    .lex "$err", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    getstderr $P502
    set $P101, $P502
.annotate 'line', 1386
    find_lex $P503, "$error"
    $P504 = $P101."print"($P503)
.annotate 'line', 1387
    $P505 = $P101."print"("\n")
.annotate 'line', 1388
    find_lex $P506, "$error"
    $P507 = $P506."backtrace_strings"()
    join $S501, "\n", $P507
    $P508 = $P101."print"($S501)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_120_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1397
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P537 = 'cuid_212_1346233437.626' 
    capture_lex $P537 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1399
    nqp_decontainerize $P503, _lex_param_0
    $P504 = _lex_param_1."shift"()
    $P505 = $P503."compiler_progname"($P504)
.annotate 'line', 1401
    get_hll_global $P510, "GLOBAL"
    nqp_get_package_through_who $P509, $P510, "HLL"
    nqp_get_package_through_who $P508, $P509, "CommandLine"
    get_who $P507, $P508
    set $P506, $P507["Parser"]
    unless_null $P506, fallback974
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P511
  fallback974:
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P514, $P512, $P513, "@!cmdoptions"
    $P515 = $P506."new"($P514)
    set $P101, $P515
.annotate 'line', 1402
    $P516 = $P101."add-stopper"("-e")
.annotate 'line', 1403
    $P517 = $P101."stop-after-first-arg"()
    new $P522, 'ExceptionHandler'
    set_label $P522, catch_handler_306978
    $P522.'handle_types_except'(.CONTROL_ALL)
    push_eh $P522
.annotate 'line', 1405
    new $P520, 'ExceptionHandler'
    set_label $P520, catch_handler_304976
    $P520.'handle_types_except'(.CONTROL_ALL)
    push_eh $P520
.annotate 'line', 1406
    $P518 = $P101."parse"(_lex_param_1)
    set $P102, $P518
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P519
    pop_eh 
    goto skip_handler_303975
  catch_handler_304976:
    .get_results ($P520) 
    .const 'Sub' $P10001 = 'cuid_212_1346233437.626' 
    capture_lex $P10001
    $P10002 = $P10001($P520)
    set $I10001, 1
    set $P520["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P520
    pop_upto_eh $P520
    pop_eh 
    set $P521, $P10003
    goto skip_handler_303975
  skip_handler_303975:
    set $P523, $P521
    pop_eh 
    goto skip_handler_305977
  catch_handler_306978:
    .get_results ($P522) 
    set $I10001, 1
    set $P522["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P522
    pop_upto_eh $P522
    pop_eh 
    set $P523, $P10001
    goto skip_handler_305977
  skip_handler_305977:
    unless $P102 goto if307_else979 
.annotate 'line', 1413
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
.annotate 'line', 1414
    $P526 = $P102."options"()
    repr_bind_attr_obj $P524, $P525, "%!cli-options", $P526
    nqp_decontainerize $P527, _lex_param_0
    nqp_get_sc_object $P528, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
.annotate 'line', 1415
    $P529 = $P102."arguments"()
    repr_bind_attr_obj $P527, $P528, "@!cli-arguments", $P529
    set $P536, $P529
    goto if307_end980
  if307_else979:
.annotate 'line', 1417
    nqp_decontainerize $P530, _lex_param_0
    nqp_get_sc_object $P531, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    new $P532, 'Hash'
    repr_bind_attr_obj $P530, $P531, "%!cli-options", $P532
    nqp_decontainerize $P533, _lex_param_0
    nqp_get_sc_object $P534, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    new $P535, 'ResizablePMCArray'
    repr_bind_attr_obj $P533, $P534, "@!cli-arguments", $P535
    set $P536, $P535
  if307_end980:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1346233437.626") :anon :lex :outer("cuid_120_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1407
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S501, _lex_param_0
    say $S501
.annotate 'line', 1409
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    $P503 = $P501."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_121_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1424
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P535 = 'cuid_214_1346233437.626' 
    capture_lex $P535 
    .lex "$target", $P101 
    .lex "$encoding", $P102 
    .lex "@files", $P103 
    .lex "@codes", $P104 
    .lex "$code", $P105 
    .lex "$?FILES", $P106 
    .lex "$r", $P107 
    .lex "self", _lex_param_0 
    .lex "$files", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_981
    .lex "RETURN", $P108
    set $P508, _lex_param_3["target"]
    unless_null $P508, fallback983
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback983:
    set $S502, $P508
    downcase $S501, $S502
    box $P510, $S501
    set $P101, $P510
    set $P511, _lex_param_3["encoding"]
    unless_null $P511, fallback984
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback984:
    set $P102, $P511
    does $I501, _lex_param_1, "array"
    unless $I501 goto if308_else985 
    set $P514, _lex_param_1
    goto if308_end986
  if308_else985:
    new $P513, 'ResizablePMCArray'
    push $P513, _lex_param_1
    set $P514, $P513
  if308_end986:
    set $P103, $P514
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    join $S503, ",", $P103
    box $P517, $S503
    repr_bind_attr_obj $P515, $P516, "$!user_progname", $P517
    set $P518, $P103
    iter $P520, $P103
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers993
    push_eh $P522
  for_next994:
    unless $P520, for_done996
    shift $P523, $P520
  for_redo995:
    .const 'Sub' $P521 = 'cuid_214_1346233437.626' 
    capture_lex $P521
    $P518 = $P521($P523)
    goto for_next994
  for_handlers993:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next994
    eq $P522, .CONTROL_LOOP_REDO, for_redo995
  for_done996:
    pop_eh 
    join $S504, "", $P104
    box $P524, $S504
    set $P105, $P524
    join $S505, " ", $P103
    box $P525, $S505
    set $P106, $P525
.annotate 'line', 1448
    nqp_decontainerize $P526, _lex_param_0
    $P527 = $P526."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P527
    set $S506, $P101
    iseq $I502, $S506, ""
    set $I504, $I502
    if $I502 goto unless315_end1000 
    set $S507, $P101
    iseq $I503, $S507, "pir"
    set $I504, $I503
  unless315_end1000:
    unless $I504 goto if314_else997 
.annotate 'line', 1449
    find_lex $P528, "RETURN"
    $P529 = $P528($P107)
    set $P534, $P529
    goto if314_end998
  if314_else997:
.annotate 'line', 1451
.annotate 'line', 1452
    nqp_decontainerize $P531, _lex_param_0
    $P532 = $P531."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P530, "RETURN"
    $P533 = $P530($P532)
    set $P534, $P533
  if314_end998:
    goto lexotic_982
  lexotic_981:
    .get_results ($P534)
  lexotic_982:
    .return ($P534) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1346233437.626") :anon :lex :outer("cuid_121_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1430
    .param pmc _lex_param_0 
    .const 'Sub' $P516 = 'cuid_213_1346233437.626' 
    capture_lex $P516 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, "FileHandle"
    set $P101, $P503
    box $P504, 0
    set $P102, $P504
    new $P513, 'ExceptionHandler'
    set_label $P513, catch_handler_312990
    $P513.'handle_types_except'(.CONTROL_ALL)
    push_eh $P513
.annotate 'line', 1433
    new $P511, 'ExceptionHandler'
    set_label $P511, catch_handler_310988
    $P511.'handle_types_except'(.CONTROL_ALL)
    push_eh $P511
.annotate 'line', 1437
    find_lex $P505, "$encoding"
    $P506 = $P101."encoding"($P505)
    find_lex $P507, "@codes"
.annotate 'line', 1438
    $P508 = $P101."readall"(_lex_param_0)
    set $S501, $P508
    push $P507, $S501
.annotate 'line', 1439
    $P509 = $P101."close"()
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P510
    pop_eh 
    goto skip_handler_309987
  catch_handler_310988:
    .get_results ($P511) 
    .const 'Sub' $P10001 = 'cuid_213_1346233437.626' 
    capture_lex $P10001
    $P10002 = $P10001($P511)
    set $I10001, 1
    set $P511["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P511
    pop_upto_eh $P511
    pop_eh 
    set $P512, $P10003
    goto skip_handler_309987
  skip_handler_309987:
    set $P514, $P512
    pop_eh 
    goto skip_handler_311989
  catch_handler_312990:
    .get_results ($P513) 
    set $I10001, 1
    set $P513["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P513
    pop_upto_eh $P513
    pop_eh 
    set $P514, $P10001
    goto skip_handler_311989
  skip_handler_311989:
    set $P515, $P102
    unless $P102 goto if313_end992 
    die $P102
    set $P515, $P102
  if313_end992:
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1346233437.626") :anon :lex :outer("cuid_214_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1440
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S502, _lex_param_0
    concat $S501, "Error while reading from file: ", $S502
    box $P501, $S501
    store_lex "$err", $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_122_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1456
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P533 = 'cuid_215_1346233437.626' 
    capture_lex $P533 
    .lex "%*COMPILING", $P101 
    .lex "$target", $P102 
    .lex "$result", $P103 
    .lex "$stderr", $P104 
    .lex "$stdin", $P105 
    .lex "$stagestats", $P106 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1001
    .lex "RETURN", $P107
    unless_null $P101, fallback1003
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%COMPILING"]
    unless_null $P507, fallback1004
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%COMPILING"], $P512
    set $P507, $P512
  fallback1004:
    unless_null $P507, vivi_3161005
    die "Contextual %*COMPILING not found"
    box $P513, "Contextual %*COMPILING not found"
    set $P507, $P513
  vivi_3161005:
    set $P101, $P507
  fallback1003:
    set $P101["%?OPTIONS"], _lex_param_2
    set $P514, _lex_param_2["target"]
    unless_null $P514, fallback1006
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P515
  fallback1006:
    set $S502, $P514
    downcase $S501, $S502
    box $P516, $S501
    set $P102, $P516
    set $P103, _lex_param_1
.annotate 'line', 1461
    getinterp $P517
    $P518 = $P517."stderr_handle"()
    set $P104, $P518
.annotate 'line', 1462
    getinterp $P519
    $P520 = $P519."stdin_handle"()
    set $P105, $P520
    set $P521, _lex_param_2["stagestats"]
    unless_null $P521, fallback1007
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P522
  fallback1007:
    set $P106, $P521
.annotate 'line', 1464
    nqp_decontainerize $P526, _lex_param_0
    $P527 = $P526."stages"()
    set $P523, $P527
    iter $P525, $P527
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, for_handlers1018
    push_eh $P529
  for_next1019:
    unless $P525, for_done1021
    shift $P530, $P525
  for_redo1020:
    .const 'Sub' $P528 = 'cuid_215_1346233437.626' 
    capture_lex $P528
    $P523 = $P528($P530)
    goto for_next1019
  for_handlers1018:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, for_next1019
    eq $P529, .CONTROL_LOOP_REDO, for_redo1020
  for_done1021:
    pop_eh 
    find_lex $P531, "RETURN"
    $P532 = $P531($P103)
    goto lexotic_1002
  lexotic_1001:
    .get_results ($P532)
  lexotic_1002:
    .return ($P532) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1346233437.626") :anon :lex :outer("cuid_122_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1464
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    time $N501
    box $P503, $N501
    set $P101, $P503
.annotate 'line', 1466
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    find_lex $P506, "$result"
    find_lex $P507, "%adverbs"
    set $S501, _lex_param_0
    $P508 = $P504.$S501($P506, $P507 :flat :named)
    store_lex "$result", $P508
    time $N503
    set $N504, $P101
    sub $N502, $N503, $N504
    box $P509, $N502
    set $P102, $P509
    find_lex $P510, "$stagestats"
    defined $I501, $P510
    box $P533, $I501
    set $P532, $P533
    unless $I501 goto if317_end1009 
.annotate 'line', 1468
.annotate 'line', 1469
    find_lex $P511, "$stderr"
    new $P512, 'ResizablePMCArray'
    push $P512, _lex_param_0
    push $P512, $P102
    sprintf $S502, "Stage %-11s: %7.3f", $P512
    $P513 = $P511."print"($S502)
    find_lex $P514, "$stagestats"
    set $I503, $P514
    band $I502, $I503, 4
    set $I504, $I502
    unless $I502 goto if318_end1011 
    sweep 1
    set $I504, 1
  if318_end1011:
    find_lex $P515, "$stagestats"
    set $I506, $P515
    band $I505, $I506, 2
    box $P522, $I505
    set $P521, $P522
    unless $I505 goto if319_end1013 
.annotate 'line', 1471
    find_lex $P516, "$stderr"
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    $P519 = $P517."vmstat"()
    sprintf $S503, " %11d %11d %9d %9d", $P519
    $P520 = $P516."print"($S503)
    set $P521, $P520
  if319_end1013:
.annotate 'line', 1473
    find_lex $P523, "$stderr"
    $P524 = $P523."print"("\n")
    find_lex $P525, "$stagestats"
    set $I508, $P525
    band $I507, $I508, 8
    box $P531, $I507
    set $P530, $P531
    unless $I507 goto if320_end1015 
.annotate 'line', 1474
.annotate 'line', 1475
    find_lex $P526, "$stderr"
    $P527 = $P526."print"("continue> ")
.annotate 'line', 1476
    find_lex $P528, "$stdin"
    $P529 = $P528."readline"()
    set $P530, $P529
  if320_end1015:
    set $P532, $P530
  if317_end1009:
    set $S504, _lex_param_0
    find_lex $P534, "$target"
    set $S505, $P534
    iseq $I509, $S504, $S505
    set $I510, $I509
    unless $I509 goto if321_end1017 
    die 0, .CONTROL_LOOP_LAST
    set $I510, 0
  if321_end1017:
    .return ($I510) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_123_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_124_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1488
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P541 = 'cuid_216_1346233437.626' 
    capture_lex $P541 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1022
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set $P505, _lex_param_2["transcode"]
    unless_null $P505, fallback1026
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P506
  fallback1026:
    set $P516, $P505
    unless $P505 goto if322_end1025 
.annotate 'line', 1490
    set $P511, _lex_param_2["transcode"]
    unless_null $P511, fallback1027
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback1027:
    set $S501, $P511
    split $P510, " ", $S501
    set $P507, $P510
    iter $P509, $P510
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers1030
    push_eh $P514
  for_next1031:
    unless $P509, for_done1033
    shift $P515, $P509
  for_redo1032:
    .const 'Sub' $P513 = 'cuid_216_1346233437.626' 
    capture_lex $P513
    $P507 = $P513($P515)
    goto for_next1031
  for_handlers1030:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next1031
    eq $P514, .CONTROL_LOOP_REDO, for_redo1032
  for_done1033:
    pop_eh 
    set $P516, $P507
  if322_end1025:
.annotate 'line', 1498
    nqp_decontainerize $P517, _lex_param_0
    $P518 = $P517."parsegrammar"()
    set $P102, $P518
    set $P519, _lex_param_2["target"]
    unless_null $P519, fallback1036
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P520
  fallback1036:
    set $S502, $P519
    iseq $I501, $S502, "parse"
    box $P524, $I501
    set $P523, $P524
    if $I501 goto unless325_end1035 
.annotate 'line', 1500
    nqp_decontainerize $P521, _lex_param_0
    $P522 = $P521."parseactions"()
    set $P103, $P522
    set $P523, $P103
  unless325_end1035:
    set $P525, _lex_param_2["rxtrace"]
    unless_null $P525, fallback1039
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P526
  fallback1039:
    set $P529, $P525
    unless $P525 goto if326_end1038 
.annotate 'line', 1501
    get_how $P527, $P102
    $P528 = $P527."trace-on"($P102)
    set $P529, $P528
  if326_end1038:
.annotate 'line', 1502
    $P530 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P530
    set $P531, _lex_param_2["rxtrace"]
    unless_null $P531, fallback1042
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P531, $P532
  fallback1042:
    set $P535, $P531
    unless $P531 goto if327_end1041 
.annotate 'line', 1503
    get_how $P533, $P102
    $P534 = $P533."trace-off"($P102)
    set $P535, $P534
  if327_end1041:
    set $P538, $P104
    if $P104 goto unless328_end1044 
.annotate 'line', 1504
    nqp_decontainerize $P536, _lex_param_0
    $P537 = $P536."panic"("Unable to parse source")
    set $P538, $P537
  unless328_end1044:
    find_lex $P539, "RETURN"
    $P540 = $P539($P104)
    goto lexotic_1023
  lexotic_1022:
    .get_results ($P540)
  lexotic_1023:
    .return ($P540) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1346233437.626") :anon :lex :outer("cuid_124_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1491
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P503, 'ExceptionHandler'
    set_label $P503, catch_handler_3241029
    $P503.'handle_types_except'(.CONTROL_ALL)
    push_eh $P503
.annotate 'line', 1492
    find_lex $P501, "$s"
    set $S502, $P501
    set $S503, _lex_param_0
    find_encoding $I501, $S503
    trans_encoding $S501, $S502, $I501
    box $P502, $S501
    store_lex "$s", $P502
    set $P504, $P502
    pop_eh 
    goto skip_handler_3231028
  catch_handler_3241029:
    .get_results ($P503) 
    set $I10001, 1
    set $P503["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P503
    pop_upto_eh $P503
    pop_eh 
    set $P504, $P10001
    goto skip_handler_3231028
  skip_handler_3231028:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_125_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1508
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1509
    $P502 = _lex_param_1."ast"()
    set $P101, $P502
.annotate 'line', 1511
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PAST"
    get_who $P504, $P505
    set $P503, $P504["Node"]
    unless_null $P503, fallback1049
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1049:
    $P508 = $P503."ACCEPTS"($P101)
    set $P515, $P508
    if $P508 goto unless330_end1048 
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Node"]
    unless_null $P509, fallback1050
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback1050:
    $P514 = $P509."ACCEPTS"($P101)
    set $P515, $P514
  unless330_end1048:
    set $P518, $P515
    if $P515 goto unless329_end1046 
.annotate 'line', 1510
    nqp_decontainerize $P516, _lex_param_0
    typeof $S502, _lex_param_1
    concat $S501, "Unable to obtain ast from ", $S502
    $P517 = $P516."panic"($S501)
    set $P518, $P517
  unless329_end1046:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_126_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1515
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P514 = 'cuid_217_1346233437.626' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_218_1346233437.626' 
    capture_lex $P514 
    .lex "$*PASTCOMPILER", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    compreg $P502, "PAST"
    set $P101, $P502
.annotate 'line', 1517
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PAST"
    get_who $P504, $P505
    set $P503, $P504["Node"]
    unless_null $P503, fallback1053
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1053:
    $P508 = $P503."ACCEPTS"(_lex_param_1)
    unless $P508 goto if331_else1051 
    .const 'Sub' $P509 = 'cuid_217_1346233437.626' 
    capture_lex $P509
    $P510 = $P509()
    set $P513, $P510
    goto if331_end1052
  if331_else1051:
    .const 'Sub' $P511 = 'cuid_218_1346233437.626' 
    capture_lex $P511
    $P512 = $P511()
    set $P513, $P512
  if331_end1052:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1346233437.626") :anon :lex :outer("cuid_126_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1517
    .lex "$*PIRT", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
.annotate 'line', 1519
    find_dynamic_lex $P503, "$*PASTCOMPILER"
    unless_null $P503, fallback1054
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$PASTCOMPILER"]
    unless_null $P504, fallback1055
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1055:
    unless_null $P504, vivi_3321056
    die "Contextual $*PASTCOMPILER not found"
    box $P508, "Contextual $*PASTCOMPILER not found"
    set $P504, $P508
  vivi_3321056:
    set $P503, $P504
  fallback1054:
    find_lex $P509, "$source"
    find_lex $P510, "%adverbs"
    $P511 = $P503."to_post"($P509, $P510 :flat :named)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1346233437.626") :anon :lex :outer("cuid_126_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1521
    .lex "$*PIRT", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 1
    set $P101, $P502
.annotate 'line', 1523
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Compiler"]
    unless_null $P503, fallback1057
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1057:
    find_lex $P508, "$source"
    $P509 = $P503."as_post"($P508)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_127_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1527
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    concat $S508, ".include 'cclass.pasm'\n", ".include 'except_severity.pasm'\n"
    concat $S507, $S508, ".include 'except_types.pasm'\n"
    concat $S506, $S507, ".include 'iglobals.pasm'\n"
    concat $S505, $S506, ".include 'interpinfo.pasm'\n"
    concat $S504, $S505, ".include 'iterator.pasm'\n"
    concat $S503, $S504, ".include 'sysinfo.pasm'\n"
    concat $S502, $S503, ".include 'stat.pasm'\n"
    concat $S501, $S502, ".include 'datatypes.pasm'\n"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_128_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1539
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P506 = 'cuid_219_1346233437.626' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_220_1346233437.626' 
    capture_lex $P506 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    can $I501, _lex_param_1, "pir"
    unless $I501 goto if333_else1058 
    .const 'Sub' $P501 = 'cuid_219_1346233437.626' 
    capture_lex $P501
    $P502 = $P501()
    set $P505, $P502
    goto if333_end1059
  if333_else1058:
    .const 'Sub' $P503 = 'cuid_220_1346233437.626' 
    capture_lex $P503
    $P504 = $P503()
    set $P505, $P504
  if333_end1059:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1346233437.626") :anon :lex :outer("cuid_128_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1540
    .lex "$*PIRT", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 1
    set $P101, $P502
.annotate 'line', 1542
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."pirbegin"()
    set $S502, $P505
    find_lex $P506, "$source"
    $P507 = $P506."pir"()
    set $S503, $P507
    concat $S501, $S502, $S503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1346233437.626") :anon :lex :outer("cuid_128_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1544
    .lex "$*PIRT", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
.annotate 'line', 1546
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."pirbegin"()
    set $S502, $P505
    compreg $P506, "POST"
    find_lex $P507, "$source"
    find_lex $P508, "%adverbs"
    $P509 = $P506."to_pir"($P507, $P508 :flat :named)
    set $S503, $P509
    concat $S501, $S502, $S503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "evalpmc" :subid("cuid_129_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1550
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    compreg $P502, "PIR"
    set $P101, $P502
.annotate 'line', 1552
    $P503 = $P101(_lex_param_1)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_130_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P508 = 'cuid_221_1346233437.626' 
    capture_lex $P508 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    set $P501, _lex_param_3["dumper"]
    unless_null $P501, fallback1062
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P502
  fallback1062:
    unless $P501 goto if334_else1060 
    .const 'Sub' $P503 = 'cuid_221_1346233437.626' 
    capture_lex $P503
    $P504 = $P503()
    set $P507, $P504
    goto if334_end1061
  if334_else1060:
.annotate 'line', 1561
.annotate 'line', 1562
 $P505 = get_root_global ['parrot'], '_dumper' 
    $P506 = $P505(_lex_param_1, _lex_param_2)
    set $P507, $P506
  if334_end1061:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1346233437.626") :anon :lex :outer("cuid_130_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1556
    .lex "$dumper", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    load_bytecode "PCT/Dumper.pbc"
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PCT"
    get_who $P504, $P505
    set $P503, $P504["Dumper"]
    unless_null $P503, fallback1063
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1063:
    find_lex $P509, "%options"
    set $P508, $P509["dumper"]
    unless_null $P508, fallback1064
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback1064:
    set $S502, $P508
    downcase $S501, $S502
    set $P502, $P503[$S501]
    unless_null $P502, fallback1065
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P511
  fallback1065:
    set $P101, $P502
.annotate 'line', 1559
    find_lex $P512, "$obj"
    find_lex $P513, "$name"
    $P514 = $P101($P512, $P513)
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_131_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1566
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default1068
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P506
  default1068:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    set $P502, _lex_param_1
    unless _lex_param_1 goto if335_end1067 
.annotate 'line', 1567
.annotate 'line', 1568
    $P501 = "&say"(_lex_param_1)
    set $P502, $P501
  if335_end1067:
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P505, $P503, $P504, "$!usage"
    set $S501, $P505
    say $S501
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_132_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1574
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P507, $P505, $P506, "%!config"
    set $P504, $P507["version"]
    unless_null $P504, fallback1069
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1069:
    set $P101, $P504
    find_lex $P512, "$?PACKAGE"
    get_who $P511, $P512
    set $P510, $P511["%parrot_config"]
    unless_null $P510, fallback1070
    new $P513, 'Hash'
    set $P510, $P513
  fallback1070:
    set $P509, $P510["VERSION"]
    unless_null $P509, fallback1071
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P514
  fallback1071:
    set $P102, $P509
    find_lex $P519, "$?PACKAGE"
    get_who $P518, $P519
    set $P517, $P518["%parrot_config"]
    unless_null $P517, fallback1073
    new $P520, 'Hash'
    set $P517, $P520
  fallback1073:
    set $P516, $P517["git_describe"]
    unless_null $P516, fallback1074
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P521
  fallback1074:
    set $P515, $P516
    defined $I501, $P515
    if $I501, defor1072
    box $P522, "(unknown)"
    set $P515, $P522
  defor1072:
    set $P103, $P515
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P525, $P523, $P524, "$!language"
    set $S508, $P525
    concat $S507, "This is ", $S508
    concat $S506, $S507, " version "
    set $S509, $P101
    concat $S505, $S506, $S509
    concat $S504, $S505, " built on parrot "
    set $S510, $P102
    concat $S503, $S504, $S510
    concat $S502, $S503, " revision "
    set $S511, $P103
    concat $S501, $S502, $S511
    say $S501
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "show-config" :subid("cuid_133_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1582
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."verbose-config"()
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_134_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1584
    .param pmc _lex_param_0 
    .const 'Sub' $P520 = 'cuid_222_1346233437.626' 
    capture_lex $P520 
    .const 'Sub' $P520 = 'cuid_223_1346233437.626' 
    capture_lex $P520 
    .lex "self", _lex_param_0 
    find_lex $P506, "$?PACKAGE"
    get_who $P505, $P506
    set $P504, $P505["%parrot_config"]
    unless_null $P504, fallback1075
    new $P507, 'Hash'
    set $P504, $P507
  fallback1075:
    set $P501, $P504
    iter $P503, $P504
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers1076
    push_eh $P509
  for_next1077:
    unless $P503, for_done1079
    shift $P510, $P503
  for_redo1078:
    .const 'Sub' $P508 = 'cuid_222_1346233437.626' 
    capture_lex $P508
    $P501 = $P508($P510)
    goto for_next1077
  for_handlers1076:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next1077
    eq $P509, .CONTROL_LOOP_REDO, for_redo1078
  for_done1079:
    pop_eh 
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P516, $P514, $P515, "%!config"
    set $P511, $P516
    iter $P513, $P516
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers1080
    push_eh $P518
  for_next1081:
    unless $P513, for_done1083
    shift $P519, $P513
  for_redo1082:
    .const 'Sub' $P517 = 'cuid_223_1346233437.626' 
    capture_lex $P517
    $P511 = $P517($P519)
    goto for_next1081
  for_handlers1080:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next1081
    eq $P518, .CONTROL_LOOP_REDO, for_redo1082
  for_done1083:
    pop_eh 
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1346233437.626") :anon :lex :outer("cuid_134_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1585
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1586
    $P501 = _lex_param_0."key"()
    set $S504, $P501
    concat $S503, "parrot::", $S504
    concat $S502, $S503, "="
    $P502 = _lex_param_0."value"()
    set $S505, $P502
    concat $S501, $S502, $S505
    say $S501
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1346233437.626") :anon :lex :outer("cuid_134_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1588
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P504, $P501, $P503, "$!language"
    set $S505, $P504
    concat $S504, $S505, "::"
.annotate 'line', 1589
    $P505 = _lex_param_0."key"()
    set $S506, $P505
    concat $S503, $S504, $S506
    concat $S502, $S503, "="
    $P506 = _lex_param_0."value"()
    set $S507, $P506
    concat $S501, $S502, $S507
    say $S501
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_135_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1594
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    interpinfo $I501, .INTERPINFO_TOTAL_MEM_ALLOC
    box $P502, $I501
    push $P501, $P502
    interpinfo $I502, .INTERPINFO_TOTAL_MEM_USED
    box $P503, $I502
    push $P501, $P503
    interpinfo $I503, .INTERPINFO_TOTAL_PMCS
    box $P504, $I503
    push $P501, $P504
    interpinfo $I504, .INTERPINFO_ACTIVE_PMCS
    box $P505, $I504
    push $P501, $P505
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_136_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1602
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P513 = 'cuid_225_1346233437.626' 
    capture_lex $P513 
    if haz_param_10, default1098
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P512
  default1098:
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqpevent "nqpevent: log finished"
    null $P503
    nqpevent_fh $P502, $P503
    set $P101, $P502
    isnull $I502, $P101
    box $P504, $I502
    isfalse $I501, $P504
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if337_end1087 
    set $P505, $P101
  if337_end1087:
    set $P508, $P505
    unless $P505 goto if336_end1085 
.annotate 'line', 1606
    $P507 = $P101."flush"()
    set $P508, $P507
  if336_end1085:
    set $P511, _lex_param_1
    unless _lex_param_1 goto if338_end1089 
    .const 'Sub' $P509 = 'cuid_225_1346233437.626' 
    capture_lex $P509
    $P510 = $P509()
    set $P511, $P510
  if338_end1089:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1346233437.626") :anon :lex :outer("cuid_136_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1609
    .const 'Sub' $P519 = 'cuid_224_1346233437.626' 
    capture_lex $P519 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P504, "$spec"
    set $S501, $P504
    split $P503, ";", $S501
    store_lex "$spec", $P503
    find_lex $P506, "$spec"
    set $P505, $P506[0]
    unless_null $P505, fallback1090
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P507
  fallback1090:
    set $P101, $P505
    find_lex $P509, "$spec"
    set $P508, $P509[1]
    unless_null $P508, fallback1091
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback1091:
    set $P102, $P508
    set $S502, $P101
    isgt $I501, $S502, ""
    unless $I501 goto if339_else1092 
    .const 'Sub' $P511 = 'cuid_224_1346233437.626' 
    capture_lex $P511
    $P512 = $P511()
    set $P516, $P512
    goto if339_end1093
  if339_else1092:
.annotate 'line', 1618
.annotate 'line', 1619
    getinterp $P514
    $P515 = $P514."stderr_handle"()
    nqpevent_fh $P513, $P515
    set $P516, $P513
  if339_end1093:
    set $S503, $P102
    iseq $I503, $S503, ""
    unless $I503 goto if341_else1096 
    box $P518, 31
    set $P517, $P518
    goto if341_end1097
  if341_else1096:
    set $P517, $P102
  if341_end1097:
    set $I504, $P517
    nqpdebflags $I502, $I504
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1346233437.626") :anon :lex :outer("cuid_225_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1613
    .lex "$fh", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, "FileHandle"
    set $P101, $P502
.annotate 'line', 1615
    find_lex $P503, "$file"
    $P504 = $P101."open"($P503, "w")
    set $P509, $P504
    if $P504 goto unless340_end1095 
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P507, "$file"
    set $S502, $P507
    concat $S501, "Cannot write to ", $S502
    $P508 = $P505."panic"($S501)
    set $P509, $P508
  unless340_end1095:
    nqpevent_fh $P510, $P101
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_137_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1626
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P514 = 'cuid_226_1346233437.626' 
    capture_lex $P514 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    new $P502, "ResizableStringArray"
    set $P101, $P502
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P508, $P506, $P507, "@!stages"
    set $P503, $P508
    iter $P505, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers1101
    push_eh $P510
  for_next1102:
    unless $P505, for_done1104
    shift $P511, $P505
  for_redo1103:
    .const 'Sub' $P509 = 'cuid_226_1346233437.626' 
    capture_lex $P509
    $P503 = $P509($P511)
    goto for_next1102
  for_handlers1101:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next1102
    eq $P510, .CONTROL_LOOP_REDO, for_redo1103
  for_done1104:
    pop_eh 
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_bind_attr_obj $P512, $P513, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1346233437.626") :anon :lex :outer("cuid_137_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1628
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S501, _lex_param_0
    find_lex $P501, "$stagename"
    set $S502, $P501
    isne $I501, $S501, $S502
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if342_end1100 
.annotate 'line', 1629
.annotate 'line', 1630
    find_lex $P502, "@new_stages"
    $P503 = $P502."push"(_lex_param_0)
    set $P504, $P503
  if342_end1100:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_138_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1636
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P529 = 'cuid_227_1346233437.626' 
    capture_lex $P529 
    .const 'Sub' $P529 = 'cuid_228_1346233437.626' 
    capture_lex $P529 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1105
    .lex "RETURN", $P104
    set $P504, _lex_param_2["before"]
    unless_null $P504, fallback1109
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback1109:
    unless $P504 goto if343_else1107 
.annotate 'line', 1639
    set $P506, _lex_param_2["before"]
    unless_null $P506, fallback1110
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback1110:
    set $P102, $P506
    box $P508, "before"
    set $P101, $P508
    set $P517, $P101
    goto if343_end1108
  if343_else1107:
    set $P509, _lex_param_2["after"]
    unless_null $P509, fallback1113
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P510
  fallback1113:
    unless $P509 goto if344_else1111 
.annotate 'line', 1642
    set $P511, _lex_param_2["after"]
    unless_null $P511, fallback1114
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback1114:
    set $P102, $P511
    box $P513, "after"
    set $P101, $P513
    set $P516, $P101
    goto if344_end1112
  if344_else1111:
    .const 'Sub' $P514 = 'cuid_227_1346233437.626' 
    capture_lex $P514
    $P515 = $P514()
    set $P516, $P515
  if344_end1112:
    set $P517, $P516
  if343_end1108:
    new $P518, "ResizableStringArray"
    set $P103, $P518
.annotate 'line', 1652
    nqp_decontainerize $P522, _lex_param_0
    $P523 = $P522."stages"()
    set $P519, $P523
    iter $P521, $P523
    new $P525, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P525, for_handlers1119
    push_eh $P525
  for_next1120:
    unless $P521, for_done1122
    shift $P526, $P521
  for_redo1121:
    .const 'Sub' $P524 = 'cuid_228_1346233437.626' 
    capture_lex $P524
    $P519 = $P524($P526)
    goto for_next1120
  for_handlers1119:
    .get_results ($P525)
    pop_upto_eh $P525
    getattribute $P525, $P525, 'type'
    eq $P525, .CONTROL_LOOP_NEXT, for_next1120
    eq $P525, .CONTROL_LOOP_REDO, for_redo1121
  for_done1122:
    pop_eh 
.annotate 'line', 1665
    nqp_decontainerize $P527, _lex_param_0
    $P528 = $P527."stages"($P103)
    goto lexotic_1106
  lexotic_1105:
    .get_results ($P528)
  lexotic_1106:
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1346233437.626") :anon :lex :outer("cuid_138_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1645
    .lex "@new-stages", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1646
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."stages"()
    clone $P502, $P505
    set $P101, $P502
    find_lex $P506, "$stagename"
    set $S501, $P506
    push $P101, $S501
.annotate 'line', 1648
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    $P509 = $P507."stages"($P101)
    find_lex $P510, "RETURN"
    $P511 = $P510(1)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1346233437.626") :anon :lex :outer("cuid_138_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1652
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S501, _lex_param_0
    find_lex $P501, "$where"
    set $S502, $P501
    iseq $I501, $S501, $S502
    unless $I501 goto if345_else1115 
.annotate 'line', 1653
    find_lex $P502, "$position"
    set $S503, $P502
    iseq $I502, $S503, "before"
    unless $I502 goto if346_else1117 
.annotate 'line', 1654
    find_lex $P503, "@new-stages"
    find_lex $P504, "$stagename"
    set $S504, $P504
    push $P503, $S504
    find_lex $P505, "@new-stages"
    set $S505, _lex_param_0
    push $P505, $S505
    set $P509, $P505
    goto if346_end1118
  if346_else1117:
.annotate 'line', 1657
    find_lex $P506, "@new-stages"
    set $S506, _lex_param_0
    push $P506, $S506
    find_lex $P507, "@new-stages"
    find_lex $P508, "$stagename"
    set $S507, $P508
    push $P507, $S507
    set $P509, $P507
  if346_end1118:
    set $P511, $P509
    goto if345_end1116
  if345_else1115:
.annotate 'line', 1661
    find_lex $P510, "@new-stages"
    set $S508, _lex_param_0
    push $P510, $S508
    set $P511, $P510
  if345_end1116:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_139_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1668
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_229_1346233437.626' 
    capture_lex $P524 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    set $S501, _lex_param_1
    split $P505, "::", $S501
    set $P101, $P505
    set $P506, $P101[0]
    unless_null $P506, fallback1123
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback1123:
    set $S503, $P506
    substr $S502, $S503, 0, 1
    box $P508, $S502
    set $P102, $P508
    set $S504, $P102
    index $I501, "$@%&", $S504, 0
    box $P509, $I501
    set $P103, $P509
    set $N501, $P103
    set $N502, 0
    isge $I502, $N501, $N502
    box $P517, $I502
    set $P516, $P517
    unless $I502 goto if347_end1125 
.annotate 'line', 1674
    set $P510, $P101[0]
    unless_null $P510, fallback1126
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P511
  fallback1126:
    set $S506, $P510
    substr $S505, $S506, 1
    box $P512, $S505
    set $P101[0], $P512
    set $S508, $P102
    set $P513, $P101[-1]
    unless_null $P513, fallback1127
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback1127:
    set $S509, $P513
    concat $S507, $S508, $S509
    box $P515, $S507
    set $P101[-1], $P515
    set $P516, $P515
  if347_end1125:
    set $P518, $P101
    iter $P520, $P101
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers1130
    push_eh $P522
  for_next1131:
    unless $P520, for_done1133
    shift $P523, $P520
  for_redo1132:
    .const 'Sub' $P521 = 'cuid_229_1346233437.626' 
    capture_lex $P521
    $P518 = $P521($P523)
    goto for_next1131
  for_handlers1130:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next1131
    eq $P522, .CONTROL_LOOP_REDO, for_redo1132
  for_done1133:
    pop_eh 
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1346233437.626") :anon :lex :outer("cuid_139_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1682
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S501, _lex_param_0
    iseq $I501, $S501, ""
    box $P503, $I501
    set $P502, $P503
    if $I501 goto unless348_end1129 
    find_lex $P501, "@actual_ns"
    set $S502, _lex_param_0
    push $P501, $S502
    set $P502, $P501
  unless348_end1129:
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_140_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1688
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1134
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P501
  default1134:
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop target, '!linepos'
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
            unless jpos < eos goto linepos_done_1
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
        linepos_done_1:
        linepos_done:

            # We have C<linepos>, so now we (binary) search the array
            # for the largest element that is not greater than C<pos>.
            .local int lo, hi, line
            lo = 0
            hi = elements linepos
        binary_loop:
            if lo >= hi goto binary_done
            line = lo + hi
            line = line / 2
            $I0 = linepos[line]
            if $I0 > pos goto binary_hi
            lo = line + 1
            goto binary_loop
        binary_hi:
            hi = line
            goto binary_loop
        binary_done:
            inc lo
            .return (lo)
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_141_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1754
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P504, $P502, $P503, "$!user_progname"
    set $P501, $P504
    defined $I501, $P501
    if $I501, defor1135
    box $P505, "interactive"
    set $P501, $P505
  defor1135:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_142_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1757
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P503, $P501, $P502, "%!cli-options"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_143_1346233437.626") :anon :lex :outer("cuid_144_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1758
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    repr_get_attr_obj $P503, $P501, $P502, "@!cli-arguments"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1856
    .const 'Sub' $P506 = 'cuid_145_1346233437.626' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_146_1346233437.626' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_147_1346233437.626' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_148_1346233437.626' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_149_1346233437.626' 
    capture_lex $P506 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_145_1346233437.626' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_146_1346233437.626' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_147_1346233437.626' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_148_1346233437.626' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_149_1346233437.626' 
    capture_lex $P505
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_145_1346233437.626") :anon :lex :outer("cuid_150_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1860
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    new $P503, 'ResizablePMCArray'
    repr_bind_attr_obj $P501, $P502, "@!arguments", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    new $P506, 'Hash'
    repr_bind_attr_obj $P504, $P505, "%!options", $P506
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_146_1346233437.626") :anon :lex :outer("cuid_150_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1865
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P503, $P501, $P502, "@!arguments"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_147_1346233437.626") :anon :lex :outer("cuid_150_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1866
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P503, $P501, $P502, "%!options"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_148_1346233437.626") :anon :lex :outer("cuid_150_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1868
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P503, $P501, $P502, "@!arguments"
    push $P503, _lex_param_1
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_149_1346233437.626") :anon :lex :outer("cuid_150_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1872
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P503, $P501, $P502, "%!options"
    set $S501, _lex_param_1
    exists $I501, $P503[$S501]
    unless $I501 goto if349_else1137 
.annotate 'line', 1875
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P507, $P505, $P506, "%!options"
    set $S502, _lex_param_1
    set $P504, $P507[$S502]
    unless_null $P504, fallback1141
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1141:
    does $I502, $P504, "array"
    unless $I502 goto if350_else1139 
.annotate 'line', 1876
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P512, $P510, $P511, "%!options"
    set $S503, _lex_param_1
    set $P509, $P512[$S503]
    unless_null $P509, fallback1142
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback1142:
    push $P509, _lex_param_2
    set $P523, $P509
    goto if350_end1140
  if350_else1139:
.annotate 'line', 1878
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P516, $P514, $P515, "%!options"
    set $S504, _lex_param_1
    new $P517, 'ResizablePMCArray'
    nqp_decontainerize $P519, _lex_param_0
    nqp_get_sc_object $P520, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P521, $P519, $P520, "%!options"
    set $S505, _lex_param_1
    set $P518, $P521[$S505]
    unless_null $P518, fallback1143
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P522
  fallback1143:
    push $P517, $P518
    push $P517, _lex_param_2
    set $P516[$S504], $P517
    set $P523, $P517
  if350_end1140:
    set $P527, $P523
    goto if349_end1138
  if349_else1137:
.annotate 'line', 1881
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    repr_get_attr_obj $P526, $P524, $P525, "%!options"
    set $S506, _lex_param_1
    set $P526[$S506], _lex_param_2
    set $P527, _lex_param_2
  if349_end1138:
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1887
    .const 'Sub' $P511 = 'cuid_151_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_152_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_153_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_154_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_155_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_156_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_157_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_158_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_159_1346233437.626' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_160_1346233437.626' 
    capture_lex $P511 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_151_1346233437.626' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_152_1346233437.626' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_153_1346233437.626' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_154_1346233437.626' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_155_1346233437.626' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_156_1346233437.626' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_157_1346233437.626' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_158_1346233437.626' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_159_1346233437.626' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_160_1346233437.626' 
    capture_lex $P510
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_151_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1893
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1894
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."CREATE"()
    set $P101, $P503
.annotate 'line', 1895
    $P504 = $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_152_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1899
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    box $P503, 1
    repr_bind_attr_obj $P501, $P502, "$!stop-after-first-arg", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_153_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P524 = 'cuid_230_1346233437.626' 
    capture_lex $P524 
    if haz_param_12, default1148
    new $P523, 'ResizablePMCArray'
    set _lex_param_1, $P523
  default1148:
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    new $P503, 'ResizablePMCArray'
    repr_bind_attr_obj $P501, $P502, "@!specs", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    new $P506, 'Hash'
    repr_bind_attr_obj $P504, $P505, "%!options", $P506
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    new $P509, 'Hash'
    repr_bind_attr_obj $P507, $P508, "%!stopper", $P509
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P512, $P510, $P511, "%!stopper"
    box $P513, 1
    set $P512["--"], $P513
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    box $P516, 0
    repr_bind_attr_obj $P514, $P515, "$!stop-after-first-arg", $P516
    set $P517, _lex_param_1
    iter $P519, _lex_param_1
    new $P521, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P521, for_handlers1144
    push_eh $P521
  for_next1145:
    unless $P519, for_done1147
    shift $P522, $P519
  for_redo1146:
    .const 'Sub' $P520 = 'cuid_230_1346233437.626' 
    capture_lex $P520
    $P517 = $P520($P522)
    goto for_next1145
  for_handlers1144:
    .get_results ($P521)
    pop_upto_eh $P521
    getattribute $P521, $P521, 'type'
    eq $P521, .CONTROL_LOOP_NEXT, for_next1145
    eq $P521, .CONTROL_LOOP_REDO, for_redo1146
  for_done1147:
    pop_eh 
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1346233437.626") :anon :lex :outer("cuid_153_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1909
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1910
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    $P503 = $P501."add-spec"(_lex_param_0)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_154_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1913
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P503, $P501, $P502, "%!stopper"
    set $S501, _lex_param_1
    box $P504, 1
    set $P503[$S501], $P504
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_155_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1917
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    set $S501, _lex_param_1
    split $P501, "|", $S501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add-spec" :subid("cuid_156_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1922
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P518 = 'cuid_231_1346233437.626' 
    capture_lex $P518 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    set $S501, _lex_param_1
    index $I501, $S501, "=", 0
    box $P504, $I501
    set $P101, $P504
    set $N501, $P101
    set $N502, 0
    islt $I502, $N501, $N502
    unless $I502 goto if351_else1149 
.annotate 'line', 1926
    box $P505, "b"
    set $P102, $P505
.annotate 'line', 1928
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."split-option-aliases"(_lex_param_1)
    set $P103, $P507
    set $P511, $P103
    goto if351_end1150
  if351_else1149:
.annotate 'line', 1929
    set $S503, _lex_param_1
    set $N504, $P101
    set $N505, 1
    add $N503, $N504, $N505
    set $I503, $N503
    substr $S502, $S503, $I503
    box $P508, $S502
    set $P102, $P508
.annotate 'line', 1931
    nqp_decontainerize $P509, _lex_param_0
    set $S505, _lex_param_1
    set $I504, $P101
    substr $S504, $S505, 0, $I504
    $P510 = $P509."split-option-aliases"($S504)
    set $P103, $P510
    set $P511, $P103
  if351_end1150:
    set $P512, $P103
    iter $P514, $P103
    new $P516, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P516, for_handlers1151
    push_eh $P516
  for_next1152:
    unless $P514, for_done1154
    shift $P517, $P514
  for_redo1153:
    .const 'Sub' $P515 = 'cuid_231_1346233437.626' 
    capture_lex $P515
    $P512 = $P515($P517)
    goto for_next1152
  for_handlers1151:
    .get_results ($P516)
    pop_upto_eh $P516
    getattribute $P516, $P516, 'type'
    eq $P516, .CONTROL_LOOP_NEXT, for_next1152
    eq $P516, .CONTROL_LOOP_REDO, for_redo1153
  for_done1154:
    pop_eh 
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1346233437.626") :anon :lex :outer("cuid_156_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1933
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P504, $P501, $P503, "%!options"
    set $S501, _lex_param_0
    find_lex $P505, "$type"
    set $P504[$S501], $P505
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_157_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1939
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1155
    .lex "RETURN", $P101
    set $S501, _lex_param_1
    iseq $I501, $S501, "-"
    set $I503, $I501
    if $I501 goto unless353_end1160 
    set $S502, _lex_param_1
    iseq $I502, $S502, "--"
    set $I503, $I502
  unless353_end1160:
    box $P504, $I503
    set $P503, $P504
    unless $I503 goto if352_end1158 
    find_lex $P501, "RETURN"
    $P502 = $P501(0)
    set $P503, $P502
  if352_end1158:
    set $S504, _lex_param_1
    substr $S503, $S504, 0, 1
    iseq $I504, $S503, "-"
    box $P508, $I504
    set $P507, $P508
    unless $I504 goto if354_end1162 
    find_lex $P505, "RETURN"
    $P506 = $P505(1)
    set $P507, $P506
  if354_end1162:
    box $P509, 0
    goto lexotic_1156
  lexotic_1155:
    .get_results ($P509)
  lexotic_1156:
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_158_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1945
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P505, $P503, $P504, "%!options"
    set $S501, _lex_param_1
    set $P502, $P505[$S501]
    unless_null $P502, fallback1163
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1163:
    set $P101, $P502
    set $S503, $P101
    substr $S502, $S503, 0, 1
    iseq $I501, $S502, "s"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_159_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1950
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P505, $P503, $P504, "%!options"
    set $S501, _lex_param_1
    set $P502, $P505[$S501]
    unless_null $P502, fallback1164
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1164:
    set $P101, $P502
    set $S502, $P101
    iseq $I501, $S502, "s?"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_160_1346233437.626") :anon :lex :outer("cuid_161_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1955
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P523 = 'cuid_232_1346233437.626' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_233_1346233437.626' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_235_1346233437.626' 
    capture_lex $P523 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    .const 'Sub' $P504 = 'cuid_232_1346233437.626' 
    capture_lex $P504
    set $P104, $P504
    .const 'Sub' $P505 = 'cuid_233_1346233437.626' 
    capture_lex $P505
    set $P105, $P505
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1181
    .lex "RETURN", $P106
    box $P506, 0
    set $P101, $P506
    set $N501, _lex_param_1
    box $P507, $N501
    set $P102, $P507
.annotate 'line', 1959
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "HLL"
    nqp_get_package_through_who $P510, $P511, "CommandLine"
    get_who $P509, $P510
    set $P508, $P509["Result"]
    unless_null $P508, fallback1183
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P513
  fallback1183:
    $P514 = $P508."new"()
    set $P103, $P514
.annotate 'line', 1960
    $P515 = $P103."init"()
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, while359_handlers1187
    push_eh $P519
  while359_test1184:
    set $N502, $P101
    set $N503, $P102
    islt $I501, $N502, $N503
    box $P520, $I501
    set $P518, $P520
    unless $I501 goto while359_done1188 
  while359_redo1186:
    .const 'Sub' $P516 = 'cuid_235_1346233437.626' 
    capture_lex $P516
    $P517 = $P516()
    set $P518, $P517
    goto while359_test1184 
  while359_handlers1187:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, while359_test1184
    eq $P519, .CONTROL_LOOP_REDO, while359_redo1186
  while359_done1188:
    pop_eh 
    find_lex $P521, "RETURN"
    $P522 = $P521($P103)
    goto lexotic_1182
  lexotic_1181:
    .get_results ($P522)
  lexotic_1182:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_232_1346233437.626") :anon :lex :outer("cuid_160_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1963
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_1 
    find_lex $P501, "$i"
    set $N501, $P501
    find_lex $P502, "$arg-count"
    set $N503, $P502
    set $N504, 1
    sub $N502, $N503, $N504
    iseq $I501, $N501, $N502
    unless $I501 goto if355_else1165 
.annotate 'line', 1964
    set $S503, _lex_param_0
    concat $S502, "Option ", $S503
    concat $S501, $S502, " needs a value"
    box $P503, $S501
    die $P503
    set $P529, $P503
    goto if355_end1166
  if355_else1165:
.annotate 'line', 1966
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    find_lex $P507, "@args"
    find_lex $P508, "$i"
    set $N506, $P508
    set $N507, 1
    add $N505, $N506, $N507
    set $I502, $N505
    set $P506, $P507[$I502]
    unless_null $P506, fallback1169
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback1169:
    $P510 = $P504."is-option"($P506)
    unless $P510 goto if356_else1167 
    set $S506, _lex_param_0
    concat $S505, "Option ", $S506
    concat $S504, $S505, " needs a value, but is followed by an option"
    box $P511, $S504
    die $P511
    set $P528, $P511
    goto if356_end1168
  if356_else1167:
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    nqp_get_sc_object $P515, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P516, $P513, $P515, "%!stopper"
    find_lex $P518, "@args"
    find_lex $P519, "$i"
    set $N509, $P519
    set $N510, 1
    add $N508, $N509, $N510
    set $I503, $N508
    set $P517, $P518[$I503]
    unless_null $P517, fallback1172
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P520
  fallback1172:
    set $S507, $P517
    set $P512, $P516[$S507]
    unless_null $P512, fallback1173
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P521
  fallback1173:
    unless $P512 goto if357_else1170 
.annotate 'line', 1968
    set $S510, _lex_param_0
    concat $S509, "Option ", $S510
    concat $S508, $S509, " needs a value, but is followed by a stopper"
    box $P522, $S508
    die $P522
    set $P527, $P522
    goto if357_end1171
  if357_else1170:
.annotate 'line', 1970
    find_lex $P523, "$i"
    set tmp_1, $P523
    set $N512, tmp_1
    set $N513, 1
    add $N511, $N512, $N513
    box $P524, $N511
    store_lex "$i", $P524
    find_lex $P524, "@args"
    find_lex $P525, "$i"
    set $I504, $P525
    set $P523, $P524[$I504]
    unless_null $P523, fallback1174
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P526
  fallback1174:
    set $P527, $P523
  if357_end1171:
    set $P528, $P527
  if356_end1168:
    set $P529, $P528
  if355_end1166:
    .return ($P529) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_233_1346233437.626") :anon :lex :outer("cuid_160_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1978
    .local pmc tmp_2 
    .local pmc tmp_3 
    find_lex $P501, "$i"
    set tmp_2, $P501
    set $N502, tmp_2
    set $N503, 1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$i", $P502
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, while358_handlers1178
    push_eh $P510
  while358_test1175:
    find_lex $P501, "$i"
    set $N501, $P501
    find_lex $P502, "$arg-count"
    set $N502, $P502
    islt $I501, $N501, $N502
    box $P511, $I501
    set $P509, $P511
    unless $I501 goto while358_done1179 
  while358_redo1177:
.annotate 'line', 1980
.annotate 'line', 1981
    find_lex $P503, "$result"
    find_lex $P505, "@args"
    find_lex $P506, "$i"
    set $I502, $P506
    set $P504, $P505[$I502]
    unless_null $P504, fallback1180
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1180:
    $P508 = $P503."add-argument"($P504)
    find_lex $P509, "$i"
    set tmp_3, $P509
    set $N504, tmp_3
    set $N505, 1
    add $N503, $N504, $N505
    box $P510, $N503
    store_lex "$i", $P510
    set $P509, tmp_3
    goto while358_test1175 
  while358_handlers1178:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, while358_test1175
    eq $P510, .CONTROL_LOOP_REDO, while358_redo1177
  while358_done1179:
    pop_eh 
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1346233437.626") :anon :lex :outer("cuid_160_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1986
    .const 'Sub' $P531 = 'cuid_234_1346233437.626' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_238_1346233437.626' 
    capture_lex $P531 
    .lex "$cur", $P101 
    .local pmc tmp_5 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "@args"
    find_lex $P504, "$i"
    set $I501, $P504
    set $P502, $P503[$I501]
    unless_null $P502, fallback1189
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback1189:
    set $P101, $P502
.annotate 'line', 1988
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    $P508 = $P506."is-option"($P101)
    unless $P508 goto if360_else1190 
    set $S502, $P101
    substr $S501, $S502, 0, 2
    iseq $I502, $S501, "--"
    unless $I502 goto if361_else1192 
    .const 'Sub' $P509 = 'cuid_234_1346233437.626' 
    capture_lex $P509
    $P510 = $P509()
    set $P513, $P510
    goto if361_end1193
  if361_else1192:
    .const 'Sub' $P511 = 'cuid_238_1346233437.626' 
    capture_lex $P511
    $P512 = $P511()
    set $P513, $P512
  if361_end1193:
    set $P530, $P513
    goto if360_end1191
  if360_else1190:
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    nqp_get_sc_object $P517, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P518, $P515, $P517, "%!stopper"
    set $S503, $P101
    set $P514, $P518[$S503]
    unless_null $P514, fallback1238
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P519
  fallback1238:
    unless $P514 goto if379_else1236 
.annotate 'line', 2047
.annotate 'line', 2048
    $P520 = "&slurp-rest"()
    set $P529, $P520
    goto if379_end1237
  if379_else1236:
.annotate 'line', 2049
.annotate 'line', 2050
    find_lex $P521, "$result"
    $P522 = $P521."add-argument"($P101)
    find_lex $P524, "self"
    nqp_decontainerize $P523, $P524
    nqp_get_sc_object $P525, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P526, $P523, $P525, "$!stop-after-first-arg"
    set $P528, $P526
    unless $P526 goto if380_end1240 
.annotate 'line', 2051
    $P527 = "&slurp-rest"()
    set $P528, $P527
  if380_end1240:
    set $P529, $P528
  if379_end1237:
    set $P530, $P529
  if360_end1191:
    find_lex $P531, "$i"
    set tmp_5, $P531
    set $N502, tmp_5
    set $N503, 1
    add $N501, $N502, $N503
    box $P532, $N501
    store_lex "$i", $P532
    .return (tmp_5) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1346233437.626") :anon :lex :outer("cuid_235_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1989
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    find_lex $P506, "@args"
    find_lex $P507, "$i"
    set $I501, $P507
    set $P505, $P506[$I501]
    unless_null $P505, fallback1194
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1194:
    set $S502, $P505
    substr $S501, $S502, 2
    box $P509, $S501
    set $P101, $P509
    set $S503, $P101
    index $I502, $S503, "=", 0
    box $P510, $I502
    set $P102, $P510
    box $P511, 1
    set $P103, $P511
    box $P512, 0
    set $P104, $P512
    set $N501, $P102
    set $N502, 0
    isge $I503, $N501, $N502
    unless $I503 goto if362_else1195 
.annotate 'line', 1996
    set $S505, $P101
    set $N504, $P102
    set $N505, 1
    add $N503, $N504, $N505
    set $I504, $N503
    substr $S504, $S505, $I504
    box $P513, $S504
    set $P103, $P513
    set $S507, $P101
    set $I505, $P102
    substr $S506, $S507, 0, $I505
    box $P514, $S506
    set $P101, $P514
    box $P515, 1
    set $P104, $P515
    set $P522, $P104
    goto if362_end1196
  if362_else1195:
.annotate 'line', 2000
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    $P518 = $P516."optional-value"($P101)
    set $P521, $P518
    unless $P518 goto if363_end1198 
    box $P519, ""
    set $P103, $P519
    box $P520, 1
    set $P104, $P520
    set $P521, $P104
  if363_end1198:
    set $P522, $P521
  if362_end1196:
    find_lex $P524, "self"
    nqp_decontainerize $P523, $P524
    nqp_get_sc_object $P525, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P526, $P523, $P525, "%!options"
    set $S508, $P101
    exists $I506, $P526[$S508]
    box $P529, $I506
    set $P528, $P529
    if $I506 goto unless364_end1200 
    set $S510, $P101
    concat $S509, "Illegal option --", $S510
    box $P527, $S509
    die $P527
    set $P528, $P527
  unless364_end1200:
.annotate 'line', 2005
    find_lex $P531, "self"
    nqp_decontainerize $P530, $P531
    $P532 = $P530."wants-value"($P101)
    isfalse $I507, $P532
    box $P534, $I507
    set $P533, $P534
    unless $I507 goto if366_end1204 
    set $P533, $P104
  if366_end1204:
    set $P536, $P533
    unless $P533 goto if365_end1202 
    set $S513, $P101
    concat $S512, "Option --", $S513
    concat $S511, $S512, " does not allow a value"
    box $P535, $S511
    die $P535
    set $P536, $P535
  if365_end1202:
    isfalse $I508, $P104
    box $P541, $I508
    set $P540, $P541
    unless $I508 goto if368_end1208 
.annotate 'line', 2006
    find_lex $P538, "self"
    nqp_decontainerize $P537, $P538
    $P539 = $P537."wants-value"($P101)
    set $P540, $P539
  if368_end1208:
    set $P543, $P540
    unless $P540 goto if367_end1206 
.annotate 'line', 2007
    set $S515, $P101
    concat $S514, "--", $S515
    $P542 = "&get-value"($S514)
    set $P103, $P542
    set $P543, $P103
  if367_end1206:
.annotate 'line', 2009
    find_lex $P544, "$result"
    $P545 = $P544."add-option"($P101, $P103)
    find_lex $P548, "self"
    nqp_decontainerize $P547, $P548
    nqp_get_sc_object $P549, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P550, $P547, $P549, "%!stopper"
    set $S517, $P101
    concat $S516, "--", $S517
    set $P546, $P550[$S516]
    unless_null $P546, fallback1211
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P551
  fallback1211:
    set $P559, $P546
    unless $P546 goto if369_end1210 
    find_lex $P554, "$?PACKAGE"
    get_who $P553, $P554
    set $P552, $P553["slurp-rest"]
    unless_null $P552, fallback1212
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    set $P555, $P556["slurp-rest"]
    unless_null $P555, vivi_3701213
    nqp_get_sc_object $P558, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P555, $P558
  vivi_3701213:
    set $P552, $P555
  fallback1212:
    set $P559, $P552
  if369_end1210:
    .return ($P559) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1346233437.626") :anon :lex :outer("cuid_235_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2011
    .const 'Sub' $P534 = 'cuid_237_1346233437.626' 
    capture_lex $P534 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P503, "$cur"
    set $S502, $P503
    substr $S501, $S502, 1
    box $P504, $S501
    set $P101, $P504
    set $S503, $P101
    length $I501, $S503
    box $P505, $I501
    set $P102, $P505
    set $N501, $P102
    set $N502, 1
    iseq $I502, $N501, $N502
    unless $I502 goto if371_else1214 
.annotate 'line', 2014
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    nqp_get_sc_object $P509, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P510, $P507, $P509, "%!options"
    set $S504, $P101
    set $P506, $P510[$S504]
    unless_null $P506, fallback1218
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P511
  fallback1218:
    set $P513, $P506
    if $P506 goto unless372_end1217 
    set $S506, $P101
    concat $S505, "No such option -", $S506
    box $P512, $S505
    die $P512
    set $P513, $P512
  unless372_end1217:
.annotate 'line', 2017
    find_lex $P515, "self"
    nqp_decontainerize $P514, $P515
    $P516 = $P514."wants-value"($P101)
    unless $P516 goto if373_else1219 
.annotate 'line', 2018
    find_lex $P517, "$result"
.annotate 'line', 2019
    set $S508, $P101
    concat $S507, "-", $S508
    $P518 = "&get-value"($S507)
    $P519 = $P517."add-option"($P101, $P518)
    set $P522, $P519
    goto if373_end1220
  if373_else1219:
.annotate 'line', 2020
.annotate 'line', 2021
    find_lex $P520, "$result"
    $P521 = $P520."add-option"($P101, 1)
    set $P522, $P521
  if373_end1220:
    find_lex $P525, "self"
    nqp_decontainerize $P524, $P525
    nqp_get_sc_object $P526, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P527, $P524, $P526, "%!stopper"
    set $S510, $P101
    concat $S509, "-", $S510
    set $P523, $P527[$S509]
    unless_null $P523, fallback1223
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P528
  fallback1223:
    set $P530, $P523
    unless $P523 goto if374_end1222 
.annotate 'line', 2023
    $P529 = "&slurp-rest"()
    set $P530, $P529
  if374_end1222:
    set $P533, $P530
    goto if371_end1215
  if371_else1214:
    .const 'Sub' $P531 = 'cuid_237_1346233437.626' 
    capture_lex $P531
    $P532 = $P531()
    set $P533, $P532
  if371_end1215:
    .return ($P533) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1346233437.626") :anon :lex :outer("cuid_238_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2024
    .const 'Sub' $P509 = 'cuid_236_1346233437.626' 
    capture_lex $P509 
    .lex "$i", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, while375_handlers1227
    push_eh $P507
  while375_test1224:
    set $N501, $P101
    find_lex $P503, "$len"
    set $N502, $P503
    islt $I501, $N501, $N502
    box $P508, $I501
    set $P506, $P508
    unless $I501 goto while375_done1228 
  while375_redo1226:
    .const 'Sub' $P504 = 'cuid_236_1346233437.626' 
    capture_lex $P504
    $P505 = $P504()
    set $P506, $P505
    goto while375_test1224 
  while375_handlers1227:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, while375_test1224
    eq $P507, .CONTROL_LOOP_REDO, while375_redo1226
  while375_done1228:
    pop_eh 
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1346233437.626") :anon :lex :outer("cuid_237_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2026
    .lex "$o", $P101 
    .local pmc tmp_4 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$opt"
    set $S502, $P502
    find_lex $P503, "$i"
    set $I501, $P503
    substr $S501, $S502, $I501, 1
    box $P504, $S501
    set $P101, $P504
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    repr_get_attr_obj $P509, $P506, $P508, "%!options"
    set $S503, $P101
    set $P505, $P509[$S503]
    unless_null $P505, fallback1231
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P510
  fallback1231:
    unless $P505 goto if376_else1229 
.annotate 'line', 2028
.annotate 'line', 2029
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    $P513 = $P511."wants-value"($P101)
    unless $P513 goto if377_else1232 
    find_lex $P514, "$i"
    set $N502, $P514
    set $N503, 1
    add $N501, $N502, $N503
    find_lex $P515, "$len"
    set $N504, $P515
    iseq $I502, $N501, $N504
    box $P519, $I502
    set $P518, $P519
    unless $I502 goto if378_end1235 
.annotate 'line', 2030
    set $S508, $P101
    concat $S507, "Option '", $S508
    concat $S506, $S507, "' in grouped options '-"
    find_lex $P516, "$opt"
    set $S509, $P516
    concat $S505, $S506, $S509
    concat $S504, $S505, "' needs a value, but does not have one"
    box $P517, $S504
    die $P517
    set $P518, $P517
  if378_end1235:
.annotate 'line', 2033
    find_lex $P520, "$result"
    find_lex $P521, "$opt"
    set $S511, $P521
    find_lex $P522, "$i"
    set $N506, $P522
    set $N507, 1
    add $N505, $N506, $N507
    set $I503, $N505
    substr $S510, $S511, $I503
    $P523 = $P520."add-option"($P101, $S510)
    die 0, .CONTROL_LOOP_LAST
    box $P527, 0
    set $P526, $P527
    goto if377_end1233
  if377_else1232:
.annotate 'line', 2036
.annotate 'line', 2037
    find_lex $P524, "$result"
    $P525 = $P524."add-option"($P101, 1)
    set $P526, $P525
  if377_end1233:
    set $P530, $P526
    goto if376_end1230
  if376_else1229:
.annotate 'line', 2040
    find_lex $P528, "$opt"
    set $S516, $P528
    concat $S515, "Grouped options '-", $S516
    concat $S514, $S515, "' contain '"
    set $S517, $P101
    concat $S513, $S514, $S517
    concat $S512, $S513, "', which is not a valid option"
    box $P529, $S512
    die $P529
    set $P530, $P529
  if376_end1230:
    find_lex $P531, "$i"
    set tmp_4, $P531
    set $N509, tmp_4
    set $N510, 1
    add $N508, $N509, $N510
    box $P532, $N508
    store_lex "$i", $P532
    .return (tmp_4) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346233437.626") :anon :lex :outer("cuid_1_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2081
    .const 'Sub' $P521 = 'cuid_162_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_163_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_164_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_165_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_166_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_167_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_168_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_169_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_170_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_171_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_172_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_173_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_174_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_175_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_176_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_177_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_178_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_179_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_180_1346233437.626' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_181_1346233437.626' 
    capture_lex $P521 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_162_1346233437.626' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_163_1346233437.626' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_164_1346233437.626' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_165_1346233437.626' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_166_1346233437.626' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_167_1346233437.626' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_168_1346233437.626' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_169_1346233437.626' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_170_1346233437.626' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_171_1346233437.626' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_172_1346233437.626' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_173_1346233437.626' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_174_1346233437.626' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_175_1346233437.626' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_176_1346233437.626' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_177_1346233437.626' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_178_1346233437.626' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_179_1346233437.626' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_180_1346233437.626' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_181_1346233437.626' 
    capture_lex $P520
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_162_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_13, default1246
    box $P543, "<unknown>"
    set _lex_param_2, $P543
  default1246:
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    set $S501, _lex_param_1
    nqp_create_sc $P503, $S501
    repr_bind_attr_obj $P501, $P502, "$!sc", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_bind_attr_obj $P504, $P505, "$!handle", _lex_param_1
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    new $P508, 'Hash'
    repr_bind_attr_obj $P506, $P507, "%!addr_to_slot", $P508
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    new $P511, 'ResizablePMCArray'
    repr_bind_attr_obj $P509, $P510, "@!fixup_tasks", $P511
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    new $P514, 'ResizablePMCArray'
    repr_bind_attr_obj $P512, $P513, "@!load_dependency_tasks", $P514
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    find_dynamic_lex $P519, "%*COMPILING"
    unless_null $P519, fallback1241
    get_hll_global $P522, "GLOBAL"
    get_who $P521, $P522
    set $P520, $P521["%COMPILING"]
    unless_null $P520, fallback1242
    get_hll_global $P524, "GLOBAL"
    get_who $P523, $P524
    new $P525, 'Hash'
    set $P523["%COMPILING"], $P525
    set $P520, $P525
  fallback1242:
    unless_null $P520, vivi_3811243
    die "Contextual %*COMPILING not found"
    box $P526, "Contextual %*COMPILING not found"
    set $P520, $P526
  vivi_3811243:
    set $P519, $P520
  fallback1241:
    set $P518, $P519["%?OPTIONS"]
    unless_null $P518, fallback1244
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P527
  fallback1244:
    set $P517, $P518["target"]
    unless_null $P517, fallback1245
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P528
  fallback1245:
    set $S502, $P517
    iseq $I501, $S502, "pir"
    box $P529, $I501
    repr_bind_attr_obj $P515, $P516, "$!precomp_mode", $P529
    nqp_decontainerize $P530, _lex_param_0
    nqp_get_sc_object $P531, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    box $P532, 0
    repr_bind_attr_obj $P530, $P531, "$!num_code_refs", $P532
    nqp_decontainerize $P533, _lex_param_0
    nqp_get_sc_object $P534, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    new $P535, 'ResizablePMCArray'
    repr_bind_attr_obj $P533, $P534, "$!code_ref_blocks", $P535
.annotate 'line', 2122
    nqp_decontainerize $P536, _lex_param_0
    nqp_get_sc_object $P537, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P538, $P536, $P537, "$!sc"
    $P539 = $P538."set_description"(_lex_param_2)
    nqp_decontainerize $P540, _lex_param_0
    nqp_get_sc_object $P541, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P542, $P540, $P541, "$!sc"
    nqp_push_compiling_sc $P542
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_163_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2129
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P505, $P503, $P504, "%!addr_to_slot"
    get_id $I501, _lex_param_1
    set $S501, $I501
    set $P502, $P505[$S501]
    unless_null $P502, fallback1247
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1247:
    set $P101, $P502
    defined $I502, $P101
    box $P509, $I502
    set $P508, $P509
    if $I502 goto unless382_end1249 
.annotate 'line', 2131
    box $P507, "slot_for_object called on object not in context"
    die $P507
    set $P508, $P507
  unless382_end1249:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "get_slot_past_for_object" :subid("cuid_164_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "$past", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2142
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."slot_for_object"(_lex_param_1)
    set $P101, $P504
.annotate 'line', 2143
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "PAST"
    get_who $P506, $P507
    set $P505, $P506["Op"]
    unless_null $P505, fallback1250
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback1250:
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P512, $P510, $P511, "$!handle"
    $P513 = $P505."new"($P512, $P101, "nqp_get_sc_object Psi" :named("pirop"))
    set $P102, $P513
    box $P514, 1
    set $P102["has_compile_time_value"], $P514
    set $P102["compile_time_value"], _lex_param_1
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "get_slot_past_for_code_ref_at" :subid("cuid_165_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2150
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
.annotate 'line', 2151
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PAST"
    get_who $P502, $P503
    set $P501, $P502["Op"]
    unless_null $P501, fallback1251
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1251:
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P508, $P506, $P507, "$!handle"
    $P509 = $P501."new"($P508, _lex_param_1, "nqp_get_sc_code_ref Psi" :named("pirop"))
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "set_slot_past" :subid("cuid_166_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2155
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$slot", _lex_param_1 
    .lex "$past_to_set", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1252
    .lex "RETURN", $P101
.annotate 'line', 2156
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PAST"
    get_who $P503, $P504
    set $P502, $P503["Op"]
    unless_null $P502, fallback1254
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1254:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P509, $P507, $P508, "$!handle"
    $P510 = $P502."new"($P509, _lex_param_1, _lex_param_2, "nqp_set_sc_object vsiP" :named("pirop"))
    find_lex $P501, "RETURN"
    $P511 = $P501($P510)
    goto lexotic_1253
  lexotic_1252:
    .get_results ($P511)
  lexotic_1253:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "set_cur_sc" :subid("cuid_167_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2162
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$to_wrap", _lex_param_1 
.annotate 'line', 2163
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PAST"
    get_who $P502, $P503
    set $P501, $P502["Op"]
    unless_null $P501, fallback1255
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1255:
.annotate 'line', 2166
    get_hll_global $P509, "GLOBAL"
    nqp_get_package_through_who $P508, $P509, "PAST"
    get_who $P507, $P508
    set $P506, $P507["Var"]
    unless_null $P506, fallback1256
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P510
  fallback1256:
    $P511 = $P506."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P512 = $P501."new"(_lex_param_1, $P511, "nqp_set_sc_for_object__0PP" :named("pirop"))
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "add_object_to_cur_sc_past" :subid("cuid_168_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2170
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$slot", _lex_param_1 
    .lex "$to_wrap", _lex_param_2 
.annotate 'line', 2171
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PAST"
    get_who $P502, $P503
    set $P501, $P502["Op"]
    unless_null $P501, fallback1257
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1257:
.annotate 'line', 2173
    get_hll_global $P509, "GLOBAL"
    nqp_get_package_through_who $P508, $P509, "PAST"
    get_who $P507, $P508
    set $P506, $P507["Var"]
    unless_null $P506, fallback1258
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P510
  fallback1258:
    $P511 = $P506."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P512 = $P501."new"($P511, _lex_param_1, _lex_param_2, "nqp_add_object_to_sc 2PiP" :named("pirop"))
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_169_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2180
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P504, $P502, $P503, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P504
.annotate 'line', 2182
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P507, $P505, $P506, "$!sc"
    $P508 = $P507."elems"()
    set $P101, $P508
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P511, $P509, $P510, "$!sc"
    set $I501, $P101
    set $P511[$I501], _lex_param_1
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P514, $P512, $P513, "%!addr_to_slot"
    get_id $I502, _lex_param_1
    set $S501, $I502
    set $P514[$S501], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_170_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2189
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P504, $P502, $P503, "$!num_code_refs"
    set $P101, $P504
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P509, $P507, $P508, "$!num_code_refs"
    set $N502, $P509
    set $N503, 1
    add $N501, $N502, $N503
    box $P510, $N501
    repr_bind_attr_obj $P505, $P506, "$!num_code_refs", $P510
.annotate 'line', 2192
    nqp_decontainerize $P511, _lex_param_0
    nqp_get_sc_object $P512, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P513, $P511, $P512, "$!code_ref_blocks"
    $P514 = $P513."push"(_lex_param_2)
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P517, $P515, $P516, "$!sc"
    set $I501, $P101
    nqp_add_code_ref_to_sc $P517, $I501, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_171_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!sc"
    set $I501, _lex_param_1
    nqp_add_code_ref_to_sc $P503, $I501, _lex_param_2
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_172_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2203
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!precomp_mode"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_173_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2209
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default1265
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P515
  default1265:
    if haz_param_15, default1266
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P516
  default1266:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!precomp_mode"
    unless $P503 goto if383_else1259 
.annotate 'line', 2210
    set $P508, _lex_param_1
    unless _lex_param_1 goto if384_end1262 
.annotate 'line', 2211
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P506, $P504, $P505, "@!load_dependency_tasks"
    $P507 = $P506."push"(_lex_param_1)
    set $P508, $P507
  if384_end1262:
    set $P514, $P508
    goto if383_end1260
  if383_else1259:
.annotate 'line', 2213
    set $P513, _lex_param_2
    unless _lex_param_2 goto if385_end1264 
.annotate 'line', 2214
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P511, $P509, $P510, "@!load_dependency_tasks"
    $P512 = $P511."push"(_lex_param_2)
    set $P513, $P512
  if385_end1264:
    set $P514, $P513
  if383_end1260:
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_174_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2220
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_16, default1273
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P515
  default1273:
    if haz_param_17, default1274
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P516
  default1274:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!precomp_mode"
    unless $P503 goto if386_else1267 
.annotate 'line', 2221
    set $P508, _lex_param_1
    unless _lex_param_1 goto if387_end1270 
.annotate 'line', 2222
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P506, $P504, $P505, "@!fixup_tasks"
    $P507 = $P506."push"(_lex_param_1)
    set $P508, $P507
  if387_end1270:
    set $P514, $P508
    goto if386_end1268
  if386_else1267:
.annotate 'line', 2224
    set $P513, _lex_param_2
    unless _lex_param_2 goto if388_end1272 
.annotate 'line', 2225
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P511, $P509, $P510, "@!fixup_tasks"
    $P512 = $P511."push"(_lex_param_2)
    set $P513, $P512
  if388_end1272:
    set $P514, $P513
  if386_end1268:
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "get_ref" :subid("cuid_175_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2232
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P518 = 'cuid_239_1346233437.626' 
    capture_lex $P518 
    .lex "$sc", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_for_object $P502, _lex_param_1
    set $P101, $P502
    defined $I501, $P101
    box $P509, $I501
    set $P508, $P509
    if $I501 goto unless389_end1276 
.annotate 'line', 2236
.annotate 'line', 2237
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."add_object"(_lex_param_1)
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P507, $P505, $P506, "$!sc"
    set $P101, $P507
    set $P508, $P101
  unless389_end1276:
    get_id $I503, $P101
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P512, $P510, $P511, "$!sc"
    get_id $I504, $P512
    iseq $I502, $I503, $I504
    unless $I502 goto if390_else1277 
.annotate 'line', 2244
.annotate 'line', 2245
    nqp_decontainerize $P513, _lex_param_0
    $P514 = $P513."get_slot_past_for_object"(_lex_param_1)
    set $P517, $P514
    goto if390_end1278
  if390_else1277:
    .const 'Sub' $P515 = 'cuid_239_1346233437.626' 
    capture_lex $P515
    $P516 = $P515()
    set $P517, $P516
  if390_end1278:
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1346233437.626") :anon :lex :outer("cuid_175_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2247
    .lex "$handle", $P101 
    .lex "$past", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2248
    find_lex $P503, "$sc"
    $P504 = $P503."handle"()
    set $P101, $P504
.annotate 'line', 2249
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "PAST"
    get_who $P506, $P507
    set $P505, $P506["Op"]
    unless_null $P505, fallback1279
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback1279:
.annotate 'line', 2250
    find_lex $P510, "$sc"
    find_lex $P511, "$obj"
    $P512 = $P510."slot_index_for"($P511)
    $P513 = $P505."new"($P101, $P512, "nqp_get_sc_object Psi" :named("pirop"))
    set $P102, $P513
    box $P514, 1
    set $P102["has_compile_time_value"], $P514
    find_lex $P515, "$obj"
    set $P102["compile_time_value"], $P515
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_176_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2258
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!sc"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_177_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2263
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!handle"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_178_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2267
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "$!code_ref_blocks"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_179_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2272
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "@!load_dependency_tasks"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_180_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2277
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P503, $P501, $P502, "@!fixup_tasks"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "serialize_and_produce_deserialization_past" :subid("cuid_181_1346233437.626") :anon :lex :outer("cuid_182_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2283
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P606 = 'cuid_240_1346233437.626' 
    capture_lex $P606 
    .lex "$sh", $P101 
    .lex "$serialized", $P102 
    .lex "$sh_past", $P103 
    .lex "$sh_elems", $P104 
    .lex "$i", $P105 
    .lex "$cr_past", $P106 
    .lex "self", _lex_param_0 
    .lex "$sc_reg", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    new $P507, "ResizableStringArray"
    set $P101, $P507
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P510, $P508, $P509, "$!sc"
    nqp_serialize_sc $S501, $P510, $P101
    box $P511, $S501
    set $P102, $P511
    nqp_pop_compiling_sc 
.annotate 'line', 2292
    get_hll_global $P515, "GLOBAL"
    nqp_get_package_through_who $P514, $P515, "PAST"
    get_who $P513, $P514
    set $P512, $P513["Stmts"]
    unless_null $P512, fallback1280
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P516
  fallback1280:
.annotate 'line', 2293
    get_hll_global $P520, "GLOBAL"
    nqp_get_package_through_who $P519, $P520, "PAST"
    get_who $P518, $P519
    set $P517, $P518["Op"]
    unless_null $P517, fallback1281
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P521
  fallback1281:
.annotate 'line', 2295
    get_hll_global $P525, "GLOBAL"
    nqp_get_package_through_who $P524, $P525, "PAST"
    get_who $P523, $P524
    set $P522, $P523["Var"]
    unless_null $P522, fallback1282
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P526
  fallback1282:
    $P527 = $P522."new"("register" :named("scope"), "string_heap" :named("name"), 1 :named("isdecl"))
.annotate 'line', 2296
    get_hll_global $P531, "GLOBAL"
    nqp_get_package_through_who $P530, $P531, "PAST"
    get_who $P529, $P530
    set $P528, $P529["Op"]
    unless_null $P528, fallback1283
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P532
  fallback1283:
    $P533 = $P528."new"("ResizableStringArray", "new Ps" :named("pirop"))
    $P534 = $P517."new"($P527, $P533, "bind" :named("pasttype"))
    $P535 = $P512."new"($P534)
    set $P103, $P535
    elements $I501, $P101
    box $P536, $I501
    set $P104, $P536
    box $P537, 0
    set $P105, $P537
    new $P564, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P564, while391_handlers1287
    push_eh $P564
  while391_test1284:
    set $N501, $P105
    set $N502, $P104
    islt $I502, $N501, $N502
    box $P565, $I502
    set $P563, $P565
    unless $I502 goto while391_done1288 
  while391_redo1286:
.annotate 'line', 2299
.annotate 'line', 2300
    get_hll_global $P541, "GLOBAL"
    nqp_get_package_through_who $P540, $P541, "PAST"
    get_who $P539, $P540
    set $P538, $P539["Op"]
    unless_null $P538, fallback1289
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P538, $P542
  fallback1289:
.annotate 'line', 2302
    get_hll_global $P546, "GLOBAL"
    nqp_get_package_through_who $P545, $P546, "PAST"
    get_who $P544, $P545
    set $P543, $P544["Var"]
    unless_null $P543, fallback1290
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P543, $P547
  fallback1290:
    $P548 = $P543."new"("register" :named("scope"), "string_heap" :named("name"))
    set $I504, $P105
    set $P549, $P101[$I504]
    unless_null $P549, fallback1293
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P549, $P550
  fallback1293:
    set $S502, $P549
    isnull $I503, $S502
    unless $I503 goto if392_else1291 
.annotate 'line', 2303
    get_hll_global $P554, "GLOBAL"
    nqp_get_package_through_who $P553, $P554, "PAST"
    get_who $P552, $P553
    set $P551, $P552["Op"]
    unless_null $P551, fallback1294
    nqp_get_sc_object $P555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P555
  fallback1294:
    $P556 = $P551."new"("null S" :named("pirop"))
    set $P559, $P556
    goto if392_end1292
  if392_else1291:
    set $I505, $P105
    set $P557, $P101[$I505]
    unless_null $P557, fallback1295
    nqp_get_sc_object $P558, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P557, $P558
  fallback1295:
    set $P559, $P557
  if392_end1292:
    $P560 = $P538."new"($P548, $P559, "push vPs" :named("pirop"))
    $P561 = $P103."push"($P560)
    set $N504, $P105
    set $N505, 1
    add $N503, $N504, $N505
    box $P562, $N503
    set $P105, $P562
    set $P563, $P105
    goto while391_test1284 
  while391_handlers1287:
    .get_results ($P564)
    pop_upto_eh $P564
    getattribute $P564, $P564, 'type'
    eq $P564, .CONTROL_LOOP_NEXT, while391_test1284
    eq $P564, .CONTROL_LOOP_REDO, while391_redo1286
  while391_done1288:
    pop_eh 
.annotate 'line', 2306
    get_hll_global $P569, "GLOBAL"
    nqp_get_package_through_who $P568, $P569, "PAST"
    get_who $P567, $P568
    set $P566, $P567["Var"]
    unless_null $P566, fallback1296
    nqp_get_sc_object $P570, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P566, $P570
  fallback1296:
    $P571 = $P566."new"("register" :named("scope"), "string_heap" :named("name"))
    $P572 = $P103."push"($P571)
.annotate 'line', 2309
    get_hll_global $P576, "GLOBAL"
    nqp_get_package_through_who $P575, $P576, "PAST"
    get_who $P574, $P575
    set $P573, $P574["Op"]
    unless_null $P573, fallback1297
    nqp_get_sc_object $P577, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P573, $P577
  fallback1297:
    $P578 = $P573."new"("list" :named("pasttype"))
    set $P106, $P578
    nqp_decontainerize $P582, _lex_param_0
    nqp_get_sc_object $P583, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    repr_get_attr_obj $P584, $P582, $P583, "$!code_ref_blocks"
    set $P579, $P584
    iter $P581, $P584
    new $P586, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P586, for_handlers1299
    push_eh $P586
  for_next1300:
    unless $P581, for_done1302
    shift $P587, $P581
  for_redo1301:
    .const 'Sub' $P585 = 'cuid_240_1346233437.626' 
    capture_lex $P585
    $P579 = $P585($P587)
    goto for_next1300
  for_handlers1299:
    .get_results ($P586)
    pop_upto_eh $P586
    getattribute $P586, $P586, 'type'
    eq $P586, .CONTROL_LOOP_NEXT, for_next1300
    eq $P586, .CONTROL_LOOP_REDO, for_redo1301
  for_done1302:
    pop_eh 
.annotate 'line', 2315
    get_hll_global $P591, "GLOBAL"
    nqp_get_package_through_who $P590, $P591, "PAST"
    get_who $P589, $P590
    set $P588, $P589["Op"]
    unless_null $P588, fallback1303
    nqp_get_sc_object $P592, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P588, $P592
  fallback1303:
.annotate 'line', 2318
    get_hll_global $P596, "GLOBAL"
    nqp_get_package_through_who $P595, $P596, "PAST"
    get_who $P594, $P595
    set $P593, $P594["Var"]
    unless_null $P593, fallback1304
    nqp_get_sc_object $P597, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P593, $P597
  fallback1304:
    $P598 = $P593."new"(_lex_param_1 :named("name"), "register" :named("scope"))
.annotate 'line', 2320
    get_hll_global $P602, "GLOBAL"
    nqp_get_package_through_who $P601, $P602, "PAST"
    get_who $P600, $P601
    set $P599, $P600["Block"]
    unless_null $P599, fallback1305
    nqp_get_sc_object $P603, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P599, $P603
  fallback1305:
    $P604 = $P599."new"($P106, "immediate" :named("blocktype"))
    $P605 = $P588."new"($P102, $P598, $P103, $P604, "nqp_deserialize_sc__vSPPP" :named("pirop"))
    .return ($P605) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1346233437.626") :anon :lex :outer("cuid_181_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2310
    .param pmc _lex_param_0 
    .lex "$block", _lex_param_0 
.annotate 'line', 2311
    find_lex $P501, "$cr_past"
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PAST"
    get_who $P503, $P504
    set $P502, $P503["Val"]
    unless_null $P502, fallback1298
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1298:
    $P507 = $P502."new"(_lex_param_0 :named("value"), "Sub" :named("returns"))
    $P508 = $P501."push"($P507)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1346233437.626") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P501 = 'cuid_241_1346233437.626' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P501 = "cuid_1_1346233437.626" 
    get_hll_global $P502, "ModuleLoader"
    $P503 = $P502."load_setting"("NQPCORE")
    $P504 = $P501."set_outer_ctx"($P503)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P501, "ModuleLoader"
    $P502 = $P501."load_module"("QRegex")
    nqp_create_sc $P501, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "QAST"
    push $P503, "QRegex"
    push $P503, "NQPCursorRole"
    push $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244"
    push $P503, "src\\stage2\\QRegex.nqp"
    push $P503, "NQPMatch"
    push $P503, "NQPCursor"
    push $P503, "NQPRegexMethod"
    push $P503, "NQPRegex"
    push $P503, "HLL"
    push $P503, "CREATE"
    push $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99"
    push $P503, "src\\stage2\\NQPCORE.setting"
    push $P503, "bless"
    push $P503, "BUILDALL"
    push $P503, "new"
    push $P503, "Str"
    push $P503, "Numeric"
    push $P503, "Int"
    push $P503, "at_pos"
    push $P503, "at_key"
    push $P503, "defined"
    push $P503, "ACCEPTS"
    push $P503, "isa"
    push $P503, "__dump"
    push $P503, "MATCH"
    push $P503, "Bool"
    push $P503, "parse"
    push $P503, "!INTERPOLATE"
    push $P503, "!INTERPOLATE_REGEX"
    push $P503, "target"
    push $P503, "from"
    push $P503, "pos"
    push $P503, "CAPHASH"
    push $P503, "!cursor_init"
    push $P503, "!cursor_start"
    push $P503, "!cursor_start_subcapture"
    push $P503, "!cursor_capture"
    push $P503, "!cursor_push_cstack"
    push $P503, "!cursor_pass"
    push $P503, "!cursor_fail"
    push $P503, "!cursor_next"
    push $P503, "!cursor_more"
    push $P503, "!reduce"
    push $P503, "!reduce_with_match"
    push $P503, "!protoregex"
    push $P503, "!protoregex_nfa"
    push $P503, "!protoregex_table"
    push $P503, "!alt"
    push $P503, "!alt_nfa"
    push $P503, "!BACKREF"
    push $P503, "!LITERAL"
    push $P503, "at"
    push $P503, "before"
    push $P503, "after"
    push $P503, "ws"
    push $P503, "ww"
    push $P503, "wb"
    push $P503, "ident"
    push $P503, "alpha"
    push $P503, "alnum"
    push $P503, "upper"
    push $P503, "lower"
    push $P503, "digit"
    push $P503, "xdigit"
    push $P503, "space"
    push $P503, "blank"
    push $P503, "cntrl"
    push $P503, "punct"
    push $P503, "FAILGOAL"
    push $P503, "termish"
    push $P503, "term"
    push $P503, "infix"
    push $P503, "prefix"
    push $P503, "postfix"
    push $P503, "circumfix"
    push $P503, "postcircumfix"
    push $P503, "term:sym<circumfix>"
    push $P503, "infixish"
    push $P503, "prefixish"
    push $P503, "postfixish"
    push $P503, "nullterm"
    push $P503, "nullterm_alt"
    push $P503, "nulltermish"
    push $P503, "quote_delimited"
    push $P503, "quote_atom"
    push $P503, "decint"
    push $P503, "decints"
    push $P503, "hexint"
    push $P503, "hexints"
    push $P503, "octint"
    push $P503, "octints"
    push $P503, "binint"
    push $P503, "binints"
    push $P503, "integer"
    push $P503, "dec_number"
    push $P503, "escale"
    push $P503, "quote_escape"
    push $P503, "quote_escape:sym<backslash>"
    push $P503, "quote_escape:sym<stopper>"
    push $P503, "quote_escape:sym<bs>"
    push $P503, "quote_escape:sym<nl>"
    push $P503, "quote_escape:sym<cr>"
    push $P503, "quote_escape:sym<tab>"
    push $P503, "quote_escape:sym<ff>"
    push $P503, "quote_escape:sym<esc>"
    push $P503, "quote_escape:sym<hex>"
    push $P503, "quote_escape:sym<oct>"
    push $P503, "quote_escape:sym<chr>"
    push $P503, "quote_escape:sym<0>"
    push $P503, "quote_escape:sym<misc>"
    push $P503, "charname"
    push $P503, "charnames"
    push $P503, "charspec"
    push $P503, "O"
    push $P503, "panic"
    push $P503, "peek_delimiters"
    push $P503, "quote_EXPR"
    push $P503, "quotemod_check"
    push $P503, "starter"
    push $P503, "stopper"
    push $P503, "split_words"
    push $P503, "EXPR"
    push $P503, "EXPR_reduce"
    push $P503, "ternary"
    push $P503, "MARKER"
    push $P503, "MARKED"
    push $P503, "LANG"
    push $P503, "$!orig"
    push $P503, "$!target"
    push $P503, "$!from"
    push $P503, "$!pos"
    push $P503, "$!match"
    push $P503, "$!name"
    push $P503, "$!bstack"
    push $P503, "$!cstack"
    push $P503, "$!regexsub"
    push $P503, "$!restart"
    push $P503, "ints_to_string"
    push $P503, "CTXSAVE"
    push $P503, "SET_BLOCK_OUTER_CTX"
    push $P503, "BUILD"
    push $P503, "get_exports"
    push $P503, "get_module"
    push $P503, "language"
    push $P503, "compiler"
    push $P503, "config"
    push $P503, "load_module"
    push $P503, "autoprint"
    push $P503, "interactive"
    push $P503, "eval"
    push $P503, "ctxsave"
    push $P503, "stages"
    push $P503, "parsegrammar"
    push $P503, "parseactions"
    push $P503, "interactive_banner"
    push $P503, "interactive_prompt"
    push $P503, "compiler_progname"
    push $P503, "commandline_options"
    push $P503, "command_line"
    push $P503, "command_eval"
    push $P503, "process_args"
    push $P503, "evalfiles"
    push $P503, "compile"
    push $P503, "start"
    push $P503, "past"
    push $P503, "post"
    push $P503, "pirbegin"
    push $P503, "pir"
    push $P503, "evalpmc"
    push $P503, "dumper"
    push $P503, "usage"
    push $P503, "version"
    push $P503, "show-config"
    push $P503, "verbose-config"
    push $P503, "vmstat"
    push $P503, "nqpevent"
    push $P503, "removestage"
    push $P503, "addstage"
    push $P503, "parse_name"
    push $P503, "lineof"
    push $P503, "user-progname"
    push $P503, "cli-options"
    push $P503, "cli-arguments"
    push $P503, "@!stages"
    push $P503, "$!parsegrammar"
    push $P503, "$!parseactions"
    push $P503, "@!cmdoptions"
    push $P503, "$!usage"
    push $P503, "$!compiler_progname"
    push $P503, "$!language"
    push $P503, "%!config"
    push $P503, "$!user_progname"
    push $P503, "@!cli-arguments"
    push $P503, "%!cli-options"
    push $P503, "init"
    push $P503, "arguments"
    push $P503, "options"
    push $P503, "add-argument"
    push $P503, "add-option"
    push $P503, "@!arguments"
    push $P503, "%!options"
    push $P503, "stop-after-first-arg"
    push $P503, "add-stopper"
    push $P503, "split-option-aliases"
    push $P503, "add-spec"
    push $P503, "is-option"
    push $P503, "wants-value"
    push $P503, "optional-value"
    push $P503, "@!specs"
    push $P503, "%!stopper"
    push $P503, "$!stop-after-first-arg"
    push $P503, "slot_for_object"
    push $P503, "get_slot_past_for_object"
    push $P503, "get_slot_past_for_code_ref_at"
    push $P503, "set_slot_past"
    push $P503, "set_cur_sc"
    push $P503, "add_object_to_cur_sc_past"
    push $P503, "add_object"
    push $P503, "add_root_code_ref"
    push $P503, "update_root_code_ref"
    push $P503, "is_precompilation_mode"
    push $P503, "add_load_dependency_task"
    push $P503, "add_fixup_task"
    push $P503, "get_ref"
    push $P503, "sc"
    push $P503, "handle"
    push $P503, "code_ref_blocks"
    push $P503, "load_dependency_tasks"
    push $P503, "fixup_tasks"
    push $P503, "serialize_and_produce_deserialization_past"
    push $P503, "$!sc"
    push $P503, "$!handle"
    push $P503, "$!precomp_mode"
    push $P503, "$!num_code_refs"
    push $P503, "$!code_ref_blocks"
    push $P503, "@!load_dependency_tasks"
    push $P503, "@!fixup_tasks"
    push $P503, "%!addr_to_slot"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    push $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227"
    push $P503, "src\\stage2\\gen\\nqp-mo.pm"
    push $P503, "HLL::Grammar"
    push $P503, "orig"
    push $P503, "match"
    push $P503, "name"
    push $P503, "bstack"
    push $P503, "cstack"
    push $P503, "regexsub"
    push $P503, "restart"
    push $P503, "HLL::Actions"
    push $P503, "HLL::Compiler"
    push $P503, "HLL::CommandLine::Result"
    push $P503, "HLL::CommandLine::Parser"
    push $P503, "HLL::World"
    push $P503, "CompileTimeValue"
    push $P503, "AA49D86054CDC686E34A37C6F89EC4059A76B342-1346233428.122"
    push $P503, "src\\stage2\\QASTNode.nqp"
    push $P503, "SpecialArg"
    push $P503, "Node"
    push $P503, "Regex"
    push $P503, "IVal"
    push $P503, "NVal"
    push $P503, "SVal"
    push $P503, "BVal"
    push $P503, "WVal"
    push $P503, "Want"
    push $P503, "Var"
    push $P503, "VarWithFallback"
    push $P503, "Op"
    push $P503, "VM"
    push $P503, "Stmts"
    push $P503, "Stmt"
    push $P503, "Block"
    push $P503, "BlockMemo"
    push $P503, "Unquote"
    push $P503, "CompUnit"
    push $P503, "InlinePlaceholder"
    push $P503, "NFA"
    push $P503, "Grammar"
    push $P503, "Actions"
    push $P503, "Compiler"
    push $P503, "CommandLine"
    push $P503, "World"
    push $P503, "Result"
    push $P503, "Parser"
    .const 'Sub' $P504 = 'cuid_241_1346233437.626' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAAFAAAAaAAAAAsAAADAAAAANB4AANwAAAD0KwAAsFIAAAAAAACwUgAAAAAAALBSAACwUgAAAAAAAAUAAAAGAAAADQAAAA4AAADxAAAAAAAAAPMAAAD0AAAAAwEAAAQBAAABAAAAAAAAAAEAAAAKAQAAAQAAAH4JAAABAAAAvAwAAAEAAADeEQAAAQAAAMQTAAABAAAAHhYAAAEAAACSGQAAAQAAAFIbAAABAAAA+hsAAAEAAADMHAAAAAAAALQAAAAAAAAAAAAAAAoACAAAAAIAAAACAAAAAAC1AAAAAwAAAAIAAAAAALYAAAAEAAAAAgABAAAAGwAAAAcAAAACAAEAAABFAAAACAAAAAIAAQAAAFIAAAAJAAAAAgABAAAAWAAAAAoAAAACAAEAAABcAAAACwAAAAIAAAAAALcAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAuAAAAAAAAAABAAAACgAAAAAACgB0AAAADAAAAAIAAgAAAAgAAAAPAAAAAgACAAAACQAAABAAAAACAAIAAAAKAAAAEQAAAAIAAgAAAAsAAAASAAAAAgACAAAADAAAABMAAAACAAIAAAAPAAAAFAAAAAIAAgAAABEAAAAVAAAAAgACAAAAEwAAABYAAAACAAIAAAAVAAAAFwAAAAIAAgAAABcAAAAYAAAAAgACAAAAGAAAABkAAAACAAIAAAAaAAAAGgAAAAIAAgAAABsAAAAbAAAAAgABAAAAUwAAABwAAAACAAEAAABUAAAAHQAAAAIAAQAAAFUAAAAeAAAAAgABAAAAVgAAAB8AAAACAAEAAABXAAAAIAAAAAIAAQAAAGcAAAAhAAAAAgABAAAAaAAAACIAAAACAAEAAABpAAAAIwAAAAIAAQAAAGoAAAAkAAAAAgABAAAAawAAACUAAAACAAEAAABsAAAAJgAAAAIAAQAAAG0AAAAnAAAAAgABAAAAbgAAACgAAAACAAEAAABvAAAAKQAAAAIAAQAAAHAAAAAqAAAAAgABAAAAcQAAACsAAAACAAEAAAByAAAALAAAAAIAAQAAAHMAAAAtAAAAAgABAAAAdAAAAC4AAAACAAEAAAB1AAAALwAAAAIAAQAAAHYAAAAwAAAAAgABAAAAdwAAADEAAAACAAEAAAB4AAAAMgAAAAIAAQAAAHkAAAAzAAAAAgABAAAAegAAADQAAAACAAEAAAB7AAAANQAAAAIAAQAAAHwAAAA2AAAAAgABAAAAfQAAADcAAAACAAEAAAB+AAAAOAAAAAIAAQAAAH8AAAA5AAAAAgABAAAAgAAAADoAAAACAAEAAACBAAAAOwAAAAIAAQAAAIIAAAA8AAAAAgABAAAAgwAAAD0AAAACAAEAAACEAAAAPgAAAAIAAQAAAIUAAAA/AAAAAgABAAAAhgAAAEAAAAACAAEAAACHAAAAQQAAAAIAAQAAAIgAAABCAAAAAgABAAAAiQAAAEMAAAACAAEAAACKAAAARAAAAAIAAQAAAIsAAABFAAAAAgABAAAAjAAAAEYAAAACAAEAAACNAAAARwAAAAIAAAAAADAAAABIAAAAAgAAAAAAAgAAAEkAAAACAAAAAAADAAAASgAAAAIAAAAAAAQAAABLAAAAAgAAAAAABQAAAEwAAAACAAAAAAAGAAAATQAAAAIAAAAAAAcAAABOAAAAAgAAAAAACAAAAE8AAAACAAAAAAAJAAAAUAAAAAIAAAAAAAoAAABRAAAAAgAAAAAACwAAAFIAAAACAAAAAAAMAAAAUwAAAAIAAAAAAA0AAABUAAAAAgAAAAAADgAAAFUAAAACAAAAAAAPAAAAVgAAAAIAAAAAABAAAABXAAAAAgAAAAAAEQAAAFgAAAACAAAAAAASAAAAWQAAAAIAAAAAABMAAABaAAAAAgAAAAAAFAAAAFsAAAACAAAAAAAVAAAAXAAAAAIAAAAAABYAAABdAAAAAgAAAAAAFwAAAF4AAAACAAAAAAAYAAAAXwAAAAIAAAAAABkAAABgAAAAAgAAAAAAGgAAAGEAAAACAAAAAAAbAAAAYgAAAAIAAAAAABwAAABjAAAAAgAAAAAAHQAAAGQAAAACAAAAAAAeAAAAZQAAAAIAAAAAAB8AAABmAAAAAgAAAAAAIAAAAGcAAAACAAAAAAAhAAAAaAAAAAIAAAAAACIAAABpAAAAAgAAAAAAIwAAAGoAAAACAAAAAAAkAAAAawAAAAIAAAAAACUAAABsAAAAAgAAAAAAJgAAAG0AAAACAAAAAAAnAAAAbgAAAAIAAAAAACgAAABvAAAAAgAAAAAAKQAAAHAAAAACAAAAAAAqAAAAcQAAAAIAAAAAACsAAAByAAAAAgAAAAAALAAAAHMAAAACAAAAAAAtAAAAdAAAAAIAAAAAAC4AAAB1AAAAAgAAAAAALwAAAHYAAAACAAAAAAAxAAAAdwAAAAIAAAAAADIAAAB4AAAAAgAAAAAAMwAAAHkAAAACAAAAAAA0AAAAegAAAAIAAAAAADUAAAB7AAAAAgAAAAAANgAAAHwAAAACAAAAAAA3AAAAfQAAAAIAAAAAADgAAAB+AAAAAgAAAAAAOQAAAH8AAAACAAAAAAA6AAAAgAAAAAIAAAAAADsAAACBAAAAAgAAAAAAPAAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAABAAAAAgABAAAAUgAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABUAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAAAcAAAABAAEAAQACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAABwAAAAMAAgABAAAAUgAAAAoACgAAAIIAAAAEAAAAAAAAAAAAgwAAAAQAAQAAAAAAAACEAAAABAACAAAAAAAAAIUAAAAEAAMAAAAAAAAAhgAAAAQABAAAAAAAAACHAAAABAAFAAAAAAAAAIgAAAAEAAYAAAAAAAAAiQAAAAQABwAAAAAAAACKAAAABAAIAAAAAAAAAIsAAAAEAAkAAAAAAAAAAgAAAAAAAQAAAAMAAAAAALkAAAAAAAAAPQAAAAoAAAAAAAoALgAAAAwAAAACAAIAAAAIAAAADwAAAAIAAgAAAAkAAAAQAAAAAgACAAAACgAAABEAAAACAAIAAAALAAAAEgAAAAIAAgAAAAwAAAATAAAAAgACAAAADwAAABQAAAACAAIAAAARAAAAFQAAAAIAAgAAABMAAAAWAAAAAgACAAAAFQAAABcAAAACAAIAAAAXAAAAGAAAAAIAAgAAABgAAAAZAAAAAgACAAAAGgAAABoAAAACAAIAAAAbAAAAjAAAAAIAAAAAAD4AAACNAAAAAgAAAAAAPwAAAI4AAAACAAAAAABAAAAAfAAAAAIAAAAAAEEAAABPAAAAAgAAAAAAQgAAAEgAAAACAAAAAABDAAAAUwAAAAIAAAAAAEQAAABUAAAAAgAAAAAARQAAAGAAAAACAAAAAABGAAAAYQAAAAIAAAAAAEcAAABYAAAAAgAAAAAASAAAAFoAAAACAAAAAABJAAAAXAAAAAIAAAAAAEoAAABeAAAAAgAAAAAASwAAAHcAAAACAAAAAABMAAAAVgAAAAIAAAAAAE0AAABXAAAAAgAAAAAATgAAAGQAAAACAAAAAABPAAAAZQAAAAIAAAAAAFAAAABmAAAAAgAAAAAAUQAAAGcAAAACAAAAAABSAAAAaAAAAAIAAAAAAFMAAABpAAAAAgAAAAAAVAAAAGoAAAACAAAAAABVAAAAawAAAAIAAAAAAFYAAABsAAAAAgAAAAAAVwAAAG0AAAACAAAAAABYAAAAbgAAAAIAAAAAAFkAAABvAAAAAgAAAAAAWgAAAHAAAAACAAAAAABbAAAAcQAAAAIAAAAAAFwAAAByAAAAAgAAAAAAXQAAAHMAAAACAAAAAABeAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAD0AAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAA9AAAAAwAAAAAAugAAAAAAAABfAAAACgAAAAAACgA6AAAADAAAAAIAAgAAAAgAAAAPAAAAAgACAAAACQAAABAAAAACAAIAAAAKAAAAEQAAAAIAAAAAAGAAAAASAAAAAgACAAAADAAAABMAAAACAAIAAAAPAAAAFAAAAAIAAgAAABEAAAAVAAAAAgACAAAAEwAAABYAAAACAAIAAAAVAAAAFwAAAAIAAgAAABcAAAAYAAAAAgACAAAAGAAAABkAAAACAAIAAAAaAAAAGgAAAAIAAgAAABsAAACPAAAAAgAAAAAAYQAAAJAAAAACAAAAAABiAAAAkQAAAAIAAAAAAGMAAACSAAAAAgAAAAAAZAAAAJMAAAACAAAAAABlAAAAlAAAAAIAAAAAAGYAAACVAAAAAgAAAAAAZwAAAJYAAAACAAAAAABoAAAAlwAAAAIAAAAAAGkAAACYAAAAAgAAAAAAagAAAJkAAAACAAAAAABrAAAAdQAAAAIAAAAAAGwAAACaAAAAAgAAAAAAbQAAAJsAAAACAAAAAABuAAAAnAAAAAIAAAAAAG8AAACdAAAAAgAAAAAAcAAAAJ4AAAACAAAAAABxAAAAnwAAAAIAAAAAAHIAAACgAAAAAgAAAAAAcwAAAKEAAAACAAAAAAB0AAAAogAAAAIAAAAAAHUAAACjAAAAAgAAAAAAdgAAAKQAAAACAAAAAAB3AAAApQAAAAIAAAAAAHgAAACmAAAAAgAAAAAAeQAAAB0AAAACAAAAAAB6AAAApwAAAAIAAAAAAHsAAACoAAAAAgAAAAAAfAAAAKkAAAACAAAAAAB9AAAAqgAAAAIAAAAAAH4AAACrAAAAAgAAAAAAfwAAAKwAAAACAAAAAACAAAAArQAAAAIAAAAAAIEAAACuAAAAAgAAAAAAggAAAK8AAAACAAAAAACDAAAAsAAAAAIAAAAAAIQAAACxAAAAAgAAAAAAhQAAALIAAAACAAAAAACGAAAAswAAAAIAAAAAAIcAAAC0AAAAAgAAAAAAiAAAALUAAAACAAAAAACJAAAAtgAAAAIAAAAAAIoAAAC3AAAAAgAAAAAAiwAAALgAAAACAAAAAACMAAAAuQAAAAIAAAAAAI0AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAXwAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAABAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAXwAAAAoACwAAALoAAAAEAAAAAAAAAAAAuwAAAAQAAQAAAAAAAAC8AAAABAACAAAAAAAAAL0AAAAEAAMAAAAAAAAAvgAAAAQABAAAAAAAAAC/AAAABAAFAAAAAAAAAMAAAAAEAAYAAAAAAAAAwQAAAAQABwAAAAAAAADCAAAABAAIAAAAAAAAAMMAAAAEAAkAAAAAAAAAxAAAAAQACgAAAAAAAAAAAAAAuwAAAAAAAACOAAAACgAAAAAACgASAAAADAAAAAIAAgAAAAgAAAAPAAAAAgACAAAACQAAABAAAAACAAIAAAAKAAAAEQAAAAIAAgAAAAsAAAASAAAAAgACAAAADAAAABMAAAACAAIAAAAPAAAAFAAAAAIAAgAAABEAAAAVAAAAAgACAAAAEwAAABYAAAACAAIAAAAVAAAAFwAAAAIAAgAAABcAAAAYAAAAAgACAAAAGAAAABkAAAACAAIAAAAaAAAAGgAAAAIAAgAAABsAAADFAAAAAgAAAAAAjwAAAMYAAAACAAAAAACQAAAAxwAAAAIAAAAAAJEAAADIAAAAAgAAAAAAkgAAAMkAAAACAAAAAACTAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAI4AAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAjgAAAAoAAgAAAMoAAAAEAAAAAAAAAAAAywAAAAQAAQAAAAAAAAAAAAAAvAAAAAAAAACUAAAACgAAAAAACgAWAAAADAAAAAIAAgAAAAgAAAAPAAAAAgACAAAACQAAABAAAAACAAIAAAAKAAAAEQAAAAIAAAAAAJUAAAASAAAAAgACAAAADAAAABMAAAACAAIAAAAPAAAAFAAAAAIAAgAAABEAAAAVAAAAAgACAAAAEwAAABYAAAACAAIAAAAVAAAAFwAAAAIAAgAAABcAAAAYAAAAAgACAAAAGAAAABkAAAACAAIAAAAaAAAAGgAAAAIAAgAAABsAAADMAAAAAgAAAAAAlgAAAI8AAAACAAAAAACXAAAAzQAAAAIAAAAAAJgAAADOAAAAAgAAAAAAmQAAAM8AAAACAAAAAACaAAAA0AAAAAIAAAAAAJsAAADRAAAAAgAAAAAAnAAAANIAAAACAAAAAACdAAAAHQAAAAIAAAAAAJ4AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAlAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAHAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAAJQAAAAKAAQAAADTAAAABAAAAAAAAAAAAMsAAAAEAAEAAAAAAAAA1AAAAAQAAgAAAAAAAADVAAAABAADAAAAAAAAAAAAAAC9AAAAAAAAAJ8AAAAKAAAAAAAKACEAAAAMAAAAAgACAAAACAAAAA8AAAACAAIAAAAJAAAAEAAAAAIAAgAAAAoAAAARAAAAAgACAAAACwAAABIAAAACAAIAAAAMAAAAEwAAAAIAAgAAAA8AAAAUAAAAAgACAAAAEQAAABUAAAACAAIAAAATAAAAFgAAAAIAAgAAABUAAAAXAAAAAgACAAAAFwAAABgAAAACAAIAAAAYAAAAGQAAAAIAAgAAABoAAAAaAAAAAgACAAAAGwAAAI8AAAACAAAAAACgAAAA1gAAAAIAAAAAAKEAAADXAAAAAgAAAAAAogAAANgAAAACAAAAAACjAAAA2QAAAAIAAAAAAKQAAADaAAAAAgAAAAAApQAAANsAAAACAAAAAACmAAAA3AAAAAIAAAAAAKcAAADdAAAAAgAAAAAAqAAAAN4AAAACAAAAAACpAAAA3wAAAAIAAAAAAKoAAADgAAAAAgAAAAAAqwAAAOEAAAACAAAAAACsAAAA4gAAAAIAAAAAAK0AAADjAAAAAgAAAAAArgAAAOQAAAACAAAAAACvAAAA5QAAAAIAAAAAALAAAADmAAAAAgAAAAAAsQAAAOcAAAACAAAAAACyAAAA6AAAAAIAAAAAALMAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAnwAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAQABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAAJ8AAAAKAAgAAADpAAAABAAAAAAAAAAAAOoAAAAEAAEAAAAAAAAA6wAAAAQAAgAAAAAAAADsAAAABAADAAAAAAAAAO0AAAAEAAQAAAAAAAAA7gAAAAQABQAAAAAAAADvAAAABAAGAAAAAAAAAPAAAAAEAAcAAAAAAAAAAAAAANcAAAAAAAAAtQAAAAoAFQAAAAIBAAACAAUAAAABAAAABQEAAAIABQAAAAYAAAAGAQAAAgAFAAAACgAAAAcBAAACAAUAAAAlAAAACAEAAAIABQAAAC0AAAAJAQAAAgAFAAAAMQAAAAoBAAACAAUAAAA1AAAACwEAAAIABQAAADkAAAAMAQAAAgAFAAAAOwAAAA0BAAACAAUAAAA/AAAADgEAAAIABQAAAEQAAAAPAQAAAgAFAAAATAAAABABAAACAAUAAABOAAAAEQEAAAIABQAAAFQAAAASAQAAAgAFAAAAWAAAABMBAAACAAUAAABcAAAAFAEAAAIABQAAAGAAAAAVAQAAAgAFAAAAZwAAABYBAAACAAUAAABqAAAAFwEAAAIABQAAAG0AAAAYAQAAAgAFAAAAdgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAC1AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALUAAAADAAAAAADYAAAAAAAAALYAAAAKAAEAAAAZAQAAAgABAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAC2AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALYAAAADAAAAAADZAAAAAAAAALcAAAAKAAUAAAAaAQAAAgAAAAAAAQAAABsBAAACAAAAAAA9AAAAHAEAAAIAAAAAAF8AAAAdAQAAAgAAAAAA2gAAAB4BAAACAAAAAACfAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALcAAAADAAAAAADbAAAAAAAAANoAAAAKAAIAAAAfAQAAAgAAAAAAjgAAACABAAACAAAAAACUAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAANoAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAFAAAAEAAAAAEAAAACAAAABQAAACAAAAABAAAAAgAAAAUAAAAwAAAAAQAAAAIAAAAFAAAAQAAAAAEAAAACAAAABQAAAFAAAAABAAAAAgAAAAUAAABgAAAAAQAAAAIAAAAFAAAAcAAAAAEAAAACAAAABQAAAIAAAAABAAAAAgAAAAUAAACQAAAAAQAAAAIAAAAFAAAAoAAAAAEAAAACAAAABQAAALAAAAABAAAAAgAAAAUAAADAAAAAAQAAAAIAAAAFAAAA0AAAAAEAAAACAAAABQAAAOAAAAABAAAAAgAAAAUAAADwAAAAAQAAAAIAAAAFAAAAAAEAAAEAAAACAAAABQAAABABAAABAAAAAgAAAAUAAAAgAQAAAQAAAAIAAAAFAAAAMAEAAAEAAAACAAAABQAAAEABAAABAAAAAgAAAAUAAABQAQAAAQAAAAIAAAAFAAAAYAEAAAEAAAACAAAABQAAAHABAAABAAAAAgAAAAUAAACAAQAAAQAAAAIAAAAFAAAAkAEAAAEAAAACAAAABQAAAKABAAABAAAAAgAAAAUAAACwAQAAAQAAAAIAAAAFAAAAwAEAAAEAAAACAAAABQAAANABAAABAAAAAgAAAAUAAADgAQAAAQAAAAIAAAAFAAAA8AEAAAEAAAACAAAABQAAAAACAAABAAAAAgAAAAUAAAAQAgAAAQAAAAIAAAAFAAAAIAIAAAEAAAACAAAABQAAADACAAABAAAAAgAAAAUAAABAAgAAAQAAAAIAAAAFAAAAUAIAAAEAAAACAAAABQAAAGACAAABAAAAAgAAAAUAAABwAgAAAQAAAAIAAAAFAAAAgAIAAAEAAAACAAAABQAAAJACAAABAAAAAgAAAAUAAACgAgAAAQAAAAIAAAAFAAAAsAIAAAEAAAACAAAABQAAAMACAAABAAAAAgAAAAUAAADQAgAAAQAAAAIAAAAFAAAA4AIAAAEAAAACAAAABQAAAPACAAABAAAAAgAAAAUAAAAAAwAAAQAAAAIAAAAFAAAAEAMAAAEAAAACAAAABQAAACADAAABAAAAAgAAAAUAAAAwAwAAAQAAAAIAAAAFAAAAQAMAAAEAAAACAAAABQAAAFADAAABAAAAAgAAAAUAAABgAwAAAQAAAAIAAAAFAAAAcAMAAAEAAAACAAAABQAAAIADAAABAAAAAgAAAAUAAACQAwAAAQAAAAIAAAAFAAAAoAMAAAEAAAAAAAAAAgAAALADAAAAAAAAAgAAAAUAAACwAwAAAQAAAAIAAAAFAAAAwAMAAAEAAAACAAAABQAAANADAAABAAAAAgAAAAUAAADgAwAAAQAAAAIAAAAFAAAA8AMAAAEAAAACAAAABQAAAAAEAAABAAAAAgAAAAUAAAAQBAAAAQAAAAIAAAAFAAAAIAQAAAEAAAACAAAABQAAADAEAAABAAAAAgAAAAUAAABABAAAAQAAAAIAAAAFAAAAUAQAAAEAAAACAAAABQAAAGAEAAABAAAAAgAAAAUAAABwBAAAAQAAAAIAAAAFAAAAgAQAAAEAAAACAAAABQAAAJAEAAABAAAAAgAAAAUAAACgBAAAAQAAAAIAAAAFAAAAsAQAAAEAAAACAAAABQAAAMAEAAABAAAAAgAAAAUAAADQBAAAAQAAAAIAAAAFAAAA4AQAAAEAAAACAAAABQAAAPAEAAABAAAAAgAAAAUAAAAABQAAAQAAAAIAAAAFAAAAEAUAAAEAAAACAAAABQAAACAFAAABAAAAAgAAAAUAAAAwBQAAAQAAAAIAAAAFAAAAQAUAAAEAAAACAAAABQAAAFAFAAABAAAAAgAAAAUAAABgBQAAAQAAAAIAAAAFAAAAcAUAAAEAAAACAAAABQAAAIAFAAABAAAAAgAAAAUAAACQBQAAAQAAAAIAAAAFAAAAoAUAAAEAAAACAAAABQAAALAFAAABAAAAAAAAAAMAAADABQAAAAAAAAIAAAAFAAAAwAUAAAEAAAACAAAABQAAANAFAAABAAAAAgAAAAUAAADgBQAAAQAAAAIAAAAFAAAA8AUAAAEAAAACAAAABQAAAAAGAAABAAAAAgAAAAUAAAAQBgAAAQAAAAIAAAAFAAAAIAYAAAEAAAACAAAABQAAADAGAAABAAAAAgAAAAUAAABABgAAAQAAAAIAAAAFAAAAUAYAAAEAAAACAAAABQAAAGAGAAABAAAAAgAAAAUAAABwBgAAAQAAAAIAAAAFAAAAgAYAAAEAAAACAAAABQAAAJAGAAABAAAAAgAAAAUAAACgBgAAAQAAAAIAAAAFAAAAsAYAAAEAAAACAAAABQAAAMAGAAABAAAAAgAAAAUAAADQBgAAAQAAAAIAAAAFAAAA4AYAAAEAAAACAAAABQAAAPAGAAABAAAAAgAAAAUAAAAABwAAAQAAAAIAAAAFAAAAEAcAAAEAAAACAAAABQAAACAHAAABAAAAAgAAAAUAAAAwBwAAAQAAAAIAAAAFAAAAQAcAAAEAAAACAAAABQAAAFAHAAABAAAAAgAAAAUAAABgBwAAAQAAAAIAAAAFAAAAcAcAAAEAAAACAAAABQAAAIAHAAABAAAAAgAAAAUAAACQBwAAAQAAAAIAAAAFAAAAoAcAAAEAAAACAAAABQAAALAHAAABAAAAAgAAAAUAAADABwAAAQAAAAIAAAAFAAAA0AcAAAEAAAACAAAABQAAAOAHAAABAAAAAgAAAAUAAADwBwAAAQAAAAIAAAAFAAAAAAgAAAEAAAACAAAABQAAABAIAAABAAAAAgAAAAUAAAAgCAAAAQAAAAIAAAAFAAAAMAgAAAEAAAACAAAABQAAAEAIAAABAAAAAgAAAAUAAABQCAAAAQAAAAIAAAAFAAAAYAgAAAEAAAACAAAABQAAAHAIAAABAAAAAgAAAAUAAACACAAAAQAAAAIAAAAFAAAAkAgAAAEAAAAAAAAABAAAAKAIAAAAAAAAAgAAAAUAAACgCAAAAQAAAAIAAAAFAAAAsAgAAAEAAAACAAAABQAAAMAIAAABAAAAAgAAAAUAAADQCAAAAQAAAAIAAAAFAAAA4AgAAAEAAAAAAAAABQAAAPAIAAAAAAAAAgAAAAUAAADwCAAAAQAAAAIAAAAFAAAAAAkAAAEAAAACAAAABQAAABAJAAABAAAAAgAAAAUAAAAgCQAAAQAAAAIAAAAFAAAAMAkAAAEAAAACAAAABQAAAEAJAAABAAAAAgAAAAUAAABQCQAAAQAAAAIAAAAFAAAAYAkAAAEAAAACAAAABQAAAHAJAAABAAAAAgAAAAUAAACACQAAAQAAAAAAAAAGAAAAkAkAAAAAAAACAAAABQAAAJAJAAABAAAAAgAAAAUAAACgCQAAAQAAAAIAAAAFAAAAsAkAAAEAAAACAAAABQAAAMAJAAABAAAAAgAAAAUAAADQCQAAAQAAAAIAAAAFAAAA4AkAAAEAAAACAAAABQAAAPAJAAABAAAAAgAAAAUAAAAACgAAAQAAAAIAAAAFAAAAEAoAAAEAAAACAAAABQAAACAKAAABAAAAAgAAAAUAAAAwCgAAAQAAAAIAAAAFAAAAQAoAAAEAAAACAAAABQAAAFAKAAABAAAAAgAAAAUAAABgCgAAAQAAAAIAAAAFAAAAcAoAAAEAAAACAAAABQAAAIAKAAABAAAAAgAAAAUAAACQCgAAAQAAAAIAAAAFAAAAoAoAAAEAAAACAAAABQAAALAKAAABAAAAAgAAAAUAAADACgAAAQAAAAMAAAAAAAAA0AoAAAEAAAAAAAAABwAAAOAKAAAAAAAAAAAAAAgAAADgCgAAAAAAAAAAAAAJAAAA4AoAAAAAAAAEAAAABgAAAOAKAAABAAAABAAAAAYAAACQEgAAAQAAAAQAAAAGAAAAShYAAAEAAAAEAAAABgAAAAocAAABAAAABAAAAAYAAADYHQAAAQAAAAQAAAAGAAAA1h8AAAEAAAAEAAAACAAAAPwiAAABAAAABAAAAAgAAAAcIwAAAQAAAAQAAAAIAAAARCMAAAEAAAAEAAAACAAAAGwjAAABAAAABAAAAAgAAACMIwAAAQAAAAQAAAAIAAAAtCMAAAEAAAAEAAAACAAAANwjAAABAAAABAAAAAgAAAAEJAAAAQAAAAQAAAAIAAAAJCQAAAEAAAAEAAAACAAAAEwkAAABAAAABAAAAAgAAABsJAAAAQAAAAQAAAAIAAAAjCQAAAEAAAAEAAAACAAAAKwkAAABAAAABAAAAAgAAADMJAAAAQAAAAQAAAAIAAAA7CQAAAEAAAAEAAAACAAAAAwlAAABAAAABAAAAAgAAAAsJQAAAQAAAAQAAAAIAAAAVCUAAAEAAAAEAAAACAAAAHwlAAABAAAABAAAAAgAAACkJQAAAQAAAAQAAAAIAAAAzCUAAAEAAAAEAAAACAAAAPQlAAABAAAABAAAAAgAAAAcJgAAAQAAAAQAAAAIAAAAPCYAAAEAAAAEAAAACAAAAFwmAAABAAAAAwAAAAAAAAB8JgAAAQAAAAMAAAAAAAAAjCYAAAEAAAADAAAAAAAAAJwmAAABAAAAAAAAAAoAAACsJgAAAAAAAAMAAAAAAAAArCYAAAEAAAALAAAAAAAAAAAAAQABAAEACwAAAAAAAQAAAAEAAQABAAsAAAAAAAIAAAABAAEAAQALAAAAAAADAAAAAQABAAEACwAAAAAABAAAAAEAAQABAAsAAAAAAAUAAAABAAEAAQALAAAAAAAGAAAAAQABAAEACwAAAAAABwAAAAEAAQABAAsAAAAAAAgAAAABAAEAAQALAAAAAAAJAAAAAQABAAEACwAAAAAACgAAAAEAAQABAAsAAAAAAAsAAAABAAEAAQALAAAAAAAMAAAAAQABAAEACwAAAAAADQAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQALAAAAAAAPAAAAAQABAAEACwAAAAAAEAAAAAEAAQABAAsAAAAAABEAAAABAAEAAQALAAAAAAASAAAAAQABAAEACwAAAAAAEwAAAAEAAQABAAsAAAAAABQAAAABAAEAAQALAAAAAAAVAAAAAQABAAEACwAAAAAAFgAAAAEAAQABAAsAAAAAABcAAAABAAEAAQALAAAAAAAYAAAAAQABAAEACwAAAAAAGQAAAAEAAQABAAsAAAAAABoAAAABAAEAAQALAAAAAAAbAAAAAQABAAEACwAAAAAAHAAAAAEAAQABAAsAAAAAAB0AAAABAAEAAQALAAAAAAAeAAAAAQABAAEACwAAAAAAHwAAAAEAAQABAAsAAAAAACAAAAABAAEAAQALAAAAAAAhAAAAAQABAAEACwAAAAAAIgAAAAEAAQABAAsAAAAAACMAAAABAAEAAQALAAAAAAAkAAAAAQABAAEACwAAAAAAJQAAAAEAAQABAAsAAAAAACYAAAABAAEAAQALAAAAAAAnAAAAAQABAAEACwAAAAAAKAAAAAEAAQABAAsAAAAAACkAAAABAAEAAQALAAAAAAAqAAAAAQABAAEACwAAAAAAKwAAAAEAAQABAAsAAAAAACwAAAABAAEAAQALAAAAAAAtAAAAAQABAAEACwAAAAAALgAAAAEAAQABAAsAAAAAAC8AAAABAAEAAQALAAAAAAAwAAAAAQABAAEACwAAAAAAMQAAAAEAAQABAAsAAAAAADIAAAABAAEAAQALAAAAAAAzAAAAAQABAAEACwAAAAAANAAAAAEAAQABAAsAAAAAADUAAAABAAEAAQALAAAAAAA2AAAAAQABAAEACwAAAAAANwAAAAEAAQABAAsAAAAAADgAAAABAAEAAQALAAAAAAA5AAAAAQABAAEACwAAAAAAOgAAAAEAAQABAAsAAAAAADsAAAABAAEAAQALAAAAAAA8AAAAAQABAAEACwAAAAAAPQAAAAEAAQABAAsAAAAAAD4AAAABAAEAAQALAAAAAAA/AAAAAQABAAEACwAAAAAAQAAAAAEAAQABAAsAAAAAAEEAAAABAAEAAQALAAAAAABCAAAAAQABAAEACwAAAAAAQwAAAAEAAQABAAsAAAAAAEQAAAABAAEAAQALAAAAAABFAAAAAQABAAEACwAAAAAARgAAAAEAAQABAAsAAAAAAEcAAAABAAEAAQALAAAAAABIAAAAAQABAAEACwAAAAAASQAAAAEAAQABAAsAAAAAAEoAAAABAAEAAQALAAAAAABLAAAAAQABAAEACwAAAAAATAAAAAEAAQABAAsAAAAAAE0AAAABAAEAAQALAAAAAABOAAAAAQABAAEACwAAAAAATwAAAAEAAQABAAsAAAAAAFAAAAABAAEAAQALAAAAAABRAAAAAQABAAEACwAAAAAAUgAAAAEAAQABAAsAAAAAAFMAAAABAAEAAQALAAAAAABUAAAAAQABAAEACwAAAAAAVQAAAAEAAQABAAsAAAAAAFYAAAABAAEAAQALAAAAAABXAAAAAQABAAEACwAAAAAAWAAAAAEAAQABAAsAAAAAAFkAAAABAAEAAQALAAAAAABaAAAAAQABAAEACwAAAAAAWwAAAAEAAQABAAsAAAAAAFwAAAABAAEAAQALAAAAAABdAAAAAQABAAEACwAAAAAAXgAAAAEAAQABAAsAAAAAAF8AAAABAAEAAQALAAAAAABgAAAAAQABAAEACwAAAAAAYQAAAAEAAQABAAsAAAAAAGIAAAABAAEAAQALAAAAAABjAAAAAQABAAEACwAAAAAAZAAAAAEAAQABAAsAAAAAAGUAAAABAAEAAQALAAAAAABmAAAAAQABAAEACwAAAAAAZwAAAAEAAQABAAsAAAAAAGgAAAABAAEAAQALAAAAAABpAAAAAQABAAEACwAAAAAAagAAAAEAAQABAAsAAAAAAGsAAAABAAEAAQALAAAAAABsAAAAAQABAAEACwAAAAAAbQAAAAEAAQABAAsAAAAAAG4AAAABAAEAAQALAAAAAABvAAAAAQABAAEACwAAAAAAcAAAAAEAAQABAAsAAAAAAHEAAAABAAEAAQALAAAAAAByAAAAAQABAAEACwAAAAAAcwAAAAEAAQABAAsAAAAAAHQAAAABAAEAAQALAAAAAAB1AAAAAQABAAEACwAAAAAAdgAAAAEAAQABAAsAAAAAAHcAAAABAAEAAQALAAAAAAB4AAAAAQABAAEACwAAAAAAeQAAAAEAAQABAAsAAAAAAHoAAAABAAEAAQALAAAAAAB7AAAAAQABAAEACwAAAAAAfAAAAAEAAQABAAsAAAAAAH0AAAABAAEAAQALAAAAAAB+AAAAAQABAAEACwAAAAAAfwAAAAEAAQABAAsAAAAAAIAAAAABAAEAAQALAAAAAACBAAAAAQABAAEACwAAAAAAggAAAAEAAQABAAsAAAAAAIMAAAABAAEAAQALAAAAAACEAAAAAQABAAEACwAAAAAAhQAAAAEAAQABAAsAAAAAAIYAAAABAAEAAQALAAAAAACHAAAAAQABAAEACwAAAAAAiAAAAAEAAQABAAsAAAAAAIkAAAABAAEAAQALAAAAAACKAAAAAQABAAEACwAAAAAAiwAAAAEAAQABAAsAAAAAAIwAAAABAAEAAQALAAAAAACNAAAAAQABAAEACwAAAAAAjgAAAAEAAQABAAsAAAAAAI8AAAABAAEAAQALAAAAAACQAAAAAQABAAEACwAAAAAAkQAAAAEAAQABAAsAAAAAAJIAAAABAAEAAQALAAAAAACTAAAAAQABAAEACwAAAAAAlAAAAAEAAQABAAsAAAAAAJUAAAABAAEAAQALAAAAAACWAAAAAQABAAEACwAAAAAAlwAAAAEAAQABAAsAAAAAAJgAAAABAAEAAQALAAAAAACZAAAAAQABAAEACwAAAAAAmgAAAAEAAQABAAsAAAAAAJsAAAABAAEAAQALAAAAAACcAAAAAQABAAEACwAAAAAAnQAAAAEAAQABAAsAAAAAAJ4AAAABAAEAAQALAAAAAACfAAAAAQABAAEACwAAAAAAoAAAAAEAAQABAAsAAAAAAKEAAAABAAEAAQALAAAAAACiAAAAAQABAAEACwAAAAAAowAAAAEAAQABAAsAAAAAAKQAAAABAAEAAQALAAAAAAClAAAAAQABAAEACwAAAAAApgAAAAEAAQABAAsAAAAAAKcAAAABAAEAAQALAAAAAACoAAAAAQABAAEACwAAAAAAqQAAAAEAAQABAAsAAAAAAKoAAAABAAEAAQALAAAAAACrAAAAAQABAAEACwAAAAAArAAAAAEAAQABAPIAAAAHAAAAAAAKAAAAAAAGAPUAAAAKAAAAAAAKADsAAABIAAAAAgAAAAAAAgAAAEkAAAACAAAAAAADAAAASgAAAAIAAAAAAAQAAABLAAAAAgAAAAAABQAAAEwAAAACAAAAAAAGAAAATQAAAAIAAAAAAAcAAABOAAAAAgAAAAAACAAAAE8AAAACAAAAAAAJAAAAUAAAAAIAAAAAAAoAAABRAAAAAgAAAAAACwAAAFIAAAACAAAAAAAMAAAAUwAAAAIAAAAAAA0AAABUAAAAAgAAAAAADgAAAFUAAAACAAAAAAAPAAAAVgAAAAIAAAAAABAAAABXAAAAAgAAAAAAEQAAAFgAAAACAAAAAAASAAAAWQAAAAIAAAAAABMAAABaAAAAAgAAAAAAFAAAAFsAAAACAAAAAAAVAAAAXAAAAAIAAAAAABYAAABdAAAAAgAAAAAAFwAAAF4AAAACAAAAAAAYAAAAXwAAAAIAAAAAABkAAABgAAAAAgAAAAAAGgAAAGEAAAACAAAAAAAbAAAAYgAAAAIAAAAAABwAAABjAAAAAgAAAAAAHQAAAGQAAAACAAAAAAAeAAAAZQAAAAIAAAAAAB8AAABmAAAAAgAAAAAAIAAAAGcAAAACAAAAAAAhAAAAaAAAAAIAAAAAACIAAABpAAAAAgAAAAAAIwAAAGoAAAACAAAAAAAkAAAAawAAAAIAAAAAACUAAABsAAAAAgAAAAAAJgAAAG0AAAACAAAAAAAnAAAAbgAAAAIAAAAAACgAAABvAAAAAgAAAAAAKQAAAHAAAAACAAAAAAAqAAAAcQAAAAIAAAAAACsAAAByAAAAAgAAAAAALAAAAHMAAAACAAAAAAAtAAAAdAAAAAIAAAAAAC4AAAB1AAAAAgAAAAAALwAAAEcAAAACAAAAAAAwAAAAdgAAAAIAAAAAADEAAAB3AAAAAgAAAAAAMgAAAHgAAAACAAAAAAAzAAAAeQAAAAIAAAAAADQAAAB6AAAAAgAAAAAANQAAAHsAAAACAAAAAAA2AAAAfAAAAAIAAAAAADcAAAB9AAAAAgAAAAAAOAAAAH4AAAACAAAAAAA5AAAAfwAAAAIAAAAAADoAAACAAAAAAgAAAAAAOwAAAIEAAAACAAAAAAA8AAAABwA7AAAAAgAAAAAAAgAAAAIAAAAAAAMAAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAuAAAAAgAAAAAALwAAAAIAAAAAADAAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAAAgAAAAAAOAAAAAIAAAAAADkAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAAHAAAAAAAHAAEAAAACAAEAAABSAAAABwAAAAAAAgABAAAAUgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAABAAAAAgABAAAAUgAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgD2AAAABgCCAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGACAAAAAGAIMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAIQAAAAYAhAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAiAAAABgCFAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGAPcAAAAGAIYAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYA+AAAAAYAhwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgD5AAAABgCIAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGAPoAAAAGAIkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYA+wAAAAYAigAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgD8AAAABgCLAAAABwAAAAAAAQAGAP0AAAAKAAAAAAAKACEAAACMAAAAAgAAAAAAPgAAAI0AAAACAAAAAAA/AAAAjgAAAAIAAAAAAEAAAAB8AAAAAgAAAAAAQQAAAE8AAAACAAAAAABCAAAASAAAAAIAAAAAAEMAAABTAAAAAgAAAAAARAAAAFQAAAACAAAAAABFAAAAYAAAAAIAAAAAAEYAAABhAAAAAgAAAAAARwAAAFgAAAACAAAAAABIAAAAWgAAAAIAAAAAAEkAAABcAAAAAgAAAAAASgAAAF4AAAACAAAAAABLAAAAdwAAAAIAAAAAAEwAAABWAAAAAgAAAAAATQAAAFcAAAACAAAAAABOAAAAZAAAAAIAAAAAAE8AAABlAAAAAgAAAAAAUAAAAGYAAAACAAAAAABRAAAAZwAAAAIAAAAAAFIAAABoAAAAAgAAAAAAUwAAAGkAAAACAAAAAABUAAAAagAAAAIAAAAAAFUAAABrAAAAAgAAAAAAVgAAAGwAAAACAAAAAABXAAAAbQAAAAIAAAAAAFgAAABuAAAAAgAAAAAAWQAAAG8AAAACAAAAAABaAAAAcAAAAAIAAAAAAFsAAABxAAAAAgAAAAAAXAAAAHIAAAACAAAAAABdAAAAcwAAAAIAAAAAAF4AAAAHACEAAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAACAAAAAABEAAAAAgAAAAAARQAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAACAAAAAABNAAAAAgAAAAAATgAAAAIAAAAAAE8AAAACAAAAAABQAAAAAgAAAAAAUQAAAAIAAAAAAFIAAAACAAAAAABTAAAAAgAAAAAAVAAAAAIAAAAAAFUAAAACAAAAAABWAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAIAAAAAAF4AAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAA9AAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGAP4AAAAKAAsAAAC6AAAAAgAAAAAAvgAAALsAAAACAAAAAAC/AAAAvAAAAAIAAAAAAMAAAAC9AAAAAgAAAAAAwQAAAL4AAAACAAAAAADCAAAAvwAAAAIAAAAAAMMAAADAAAAAAgAAAAAAxAAAAMEAAAACAAAAAADFAAAAwgAAAAIAAAAAAMYAAADDAAAAAgAAAAAAxwAAAMQAAAACAAAAAADIAAAACgAuAAAAEQAAAAIAAAAAAGAAAACPAAAAAgAAAAAAYQAAAJAAAAACAAAAAABiAAAAkQAAAAIAAAAAAGMAAACSAAAAAgAAAAAAZAAAAJMAAAACAAAAAABlAAAAlAAAAAIAAAAAAGYAAACVAAAAAgAAAAAAZwAAAJYAAAACAAAAAABoAAAAlwAAAAIAAAAAAGkAAACYAAAAAgAAAAAAagAAAJkAAAACAAAAAABrAAAAdQAAAAIAAAAAAGwAAACaAAAAAgAAAAAAbQAAAJsAAAACAAAAAABuAAAAnAAAAAIAAAAAAG8AAACdAAAAAgAAAAAAcAAAAJ4AAAACAAAAAABxAAAAnwAAAAIAAAAAAHIAAACgAAAAAgAAAAAAcwAAAKEAAAACAAAAAAB0AAAAogAAAAIAAAAAAHUAAACjAAAAAgAAAAAAdgAAAKQAAAACAAAAAAB3AAAApQAAAAIAAAAAAHgAAACmAAAAAgAAAAAAeQAAAB0AAAACAAAAAAB6AAAApwAAAAIAAAAAAHsAAACoAAAAAgAAAAAAfAAAAKkAAAACAAAAAAB9AAAAqgAAAAIAAAAAAH4AAACrAAAAAgAAAAAAfwAAAKwAAAACAAAAAACAAAAArQAAAAIAAAAAAIEAAACuAAAAAgAAAAAAggAAAK8AAAACAAAAAACDAAAAsAAAAAIAAAAAAIQAAACxAAAAAgAAAAAAhQAAALIAAAACAAAAAACGAAAAswAAAAIAAAAAAIcAAAC0AAAAAgAAAAAAiAAAALUAAAACAAAAAACJAAAAtgAAAAIAAAAAAIoAAAC3AAAAAgAAAAAAiwAAALgAAAACAAAAAACMAAAAuQAAAAIAAAAAAI0AAAAHAC4AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAACAAAAAABmAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAXwAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABhAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGEAAAABAAYA/wAAAAoAAgAAAMoAAAACAAAAAADJAAAAywAAAAIAAAAAAMoAAAAKAAUAAADFAAAAAgAAAAAAjwAAAMYAAAACAAAAAACQAAAAxwAAAAIAAAAAAJEAAADIAAAAAgAAAAAAkgAAAMkAAAACAAAAAACTAAAABwAFAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACOAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAI4AAAAGAMYAAAAGAMoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAjgAAAAYAxwAAAAYAywAAAAcAAgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAACOAAAABgDGAAAABgDKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAI4AAAAGAMcAAAAGAMsAAAABAAYAAAEAAAoABAAAANMAAAACAAAAAADLAAAAywAAAAIAAAAAAMwAAADUAAAAAgAAAAAAzQAAANUAAAACAAAAAADOAAAACgAKAAAAEQAAAAIAAAAAAJUAAADMAAAAAgAAAAAAlgAAAI8AAAACAAAAAACXAAAAzQAAAAIAAAAAAJgAAADOAAAAAgAAAAAAmQAAAM8AAAACAAAAAACaAAAA0AAAAAIAAAAAAJsAAADRAAAAAgAAAAAAnAAAANIAAAACAAAAAACdAAAAHQAAAAIAAAAAAJ4AAAAHAAoAAAACAAAAAACVAAAAAgAAAAAAlgAAAAIAAAAAAJcAAAACAAAAAACYAAAAAgAAAAAAmQAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAlAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACXAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAJcAAAABAAYAAQEAAAoACAAAAOkAAAACAAAAAADPAAAA6gAAAAIAAAAAANAAAADrAAAAAgAAAAAA0QAAAOwAAAACAAAAAADSAAAA7QAAAAIAAAAAANMAAADuAAAAAgAAAAAA1AAAAO8AAAACAAAAAADVAAAA8AAAAAIAAAAAANYAAAAKABQAAACPAAAAAgAAAAAAoAAAANYAAAACAAAAAAChAAAA1wAAAAIAAAAAAKIAAADYAAAAAgAAAAAAowAAANkAAAACAAAAAACkAAAA2gAAAAIAAAAAAKUAAADbAAAAAgAAAAAApgAAANwAAAACAAAAAACnAAAA3QAAAAIAAAAAAKgAAADeAAAAAgAAAAAAqQAAAN8AAAACAAAAAACqAAAA4AAAAAIAAAAAAKsAAADhAAAAAgAAAAAArAAAAOIAAAACAAAAAACtAAAA4wAAAAIAAAAAAK4AAADkAAAAAgAAAAAArwAAAOUAAAACAAAAAACwAAAA5gAAAAIAAAAAALEAAADnAAAAAgAAAAAAsgAAAOgAAAACAAAAAACzAAAABwAUAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAIAAAAAAK0AAAACAAAAAACuAAAAAgAAAAAArwAAAAIAAAAAALAAAAACAAAAAACxAAAAAgAAAAAAsgAAAAIAAAAAALMAAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACfAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAoAAAAAEABgC6AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGALsAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgC8AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYAvQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgC+AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYAvwAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAMAAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDBAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMIAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDDAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAygAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDLAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANMAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAywAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDUAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANUAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDpAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYA6gAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAOsAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDsAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYA7QAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAO4AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA7wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDwAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAdAQAABwAAAAAACgAAAAAA", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_2_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 2
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_3_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 3
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_4_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 4
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_5_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 5
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_6_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 6
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_7_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 7
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_8_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 8
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_9_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 9
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_10_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 10
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_11_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 11
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_12_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 12
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_13_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 13
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_14_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 14
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_15_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 15
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_16_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 16
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_17_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 17
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_18_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 18
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_19_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 19
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_20_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 20
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_21_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 21
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_22_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 22
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_23_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 23
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_24_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 24
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_25_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 25
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_26_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 26
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_27_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 27
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_28_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 28
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_29_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 29
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_30_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 30
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_31_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 31
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_32_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 32
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_33_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 33
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_34_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 34
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_35_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 35
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_36_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 36
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_37_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 37
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_38_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 38
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_39_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 39
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_40_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 40
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_41_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 41
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_43_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 42
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_45_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 43
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_46_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 44
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_47_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 45
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_48_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 46
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_49_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 47
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_50_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 48
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_51_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 49
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_52_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 50
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_53_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 51
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_54_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 52
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_55_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 53
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_56_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 54
    set_sub_code_object $P501, $P502
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 1
    get_who $P501, $P502
    .const 'Sub' $P503 = "cuid_56_1346233437.626" 
    set $P501["split_words"], $P503
    .const 'Sub' $P501 = "cuid_57_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 55
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_58_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 56
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_59_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 57
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_60_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 58
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_61_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 59
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_62_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 60
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_63_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_63_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_63_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_63_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 61
    get_who $P501, $P502
    .const 'Sub' $P503 = "cuid_187_1346233437.626" 
    set $P501["string_to_int"], $P503
    .const 'Sub' $P501 = "cuid_64_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 62
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_65_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 63
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_66_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 64
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_67_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 65
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_68_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 66
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_69_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 67
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_70_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 68
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_71_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 69
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_72_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 70
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_73_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 71
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_74_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 72
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_75_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 73
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_76_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 74
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_77_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 75
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_78_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 76
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_79_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 77
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_80_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 78
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_81_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 79
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_82_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 80
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_83_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 81
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_84_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 82
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_85_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 83
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_86_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 84
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_87_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 85
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_88_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 86
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_89_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 87
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_90_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 88
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_91_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 89
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_92_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 90
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_93_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 91
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_94_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 92
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_95_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 93
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_96_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 94
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_97_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 61
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_97_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_97_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 61
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_97_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_98_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 96
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_99_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 97
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_100_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 98
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_101_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 99
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_102_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 100
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_103_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 101
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_104_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 102
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_105_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 103
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_106_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 104
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_107_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 105
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_108_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 106
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_109_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 107
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_110_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 108
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_111_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 109
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_112_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 110
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_113_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 111
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_114_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 112
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_115_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 113
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_116_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 114
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_117_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 115
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_118_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 116
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_119_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 117
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_120_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 118
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_121_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 119
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_122_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 120
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_123_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 121
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_124_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 122
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_125_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 123
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_126_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 124
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_127_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 125
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_128_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 126
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_129_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 127
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_130_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 128
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_131_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 129
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_132_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 130
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_133_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 131
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_134_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 132
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_135_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 133
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_136_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 134
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_137_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 135
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_138_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 136
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_139_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 137
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_140_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 138
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_141_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 139
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_142_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 140
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_143_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 141
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_144_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_144_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_144_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 95
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_144_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_145_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 143
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_146_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 144
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_147_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 145
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_148_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 146
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_149_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 147
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_150_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_150_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_150_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 142
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_150_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_151_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 149
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_152_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 150
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_153_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 151
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_154_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 152
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_155_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 153
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_156_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 154
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_157_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 155
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_158_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 156
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_159_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 157
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_160_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 158
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_161_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_161_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_161_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 148
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_161_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_162_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 160
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_163_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 161
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_164_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 162
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_165_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 163
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_166_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 164
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_167_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 165
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_168_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 166
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_169_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 167
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_170_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 168
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_171_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 169
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_172_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 170
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_173_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 171
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_174_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 172
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_175_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 173
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_176_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 174
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_177_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 175
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_178_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 176
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_179_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 177
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_180_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 178
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_181_1346233437.626" 
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 179
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_182_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_182_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_182_1346233437.626"
    nqp_get_sc_object $P502, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 159
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_182_1346233437.626"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1346233437.626") :anon :lex :outer("cuid_242_1346233437.626")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_2_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_3_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_4_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_5_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_6_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_7_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_8_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_9_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_10_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_11_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_12_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_13_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_14_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_15_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_16_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_17_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_18_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_19_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_20_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_21_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_22_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_23_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_24_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_25_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_26_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_27_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_28_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_29_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_30_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_31_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_32_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_33_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_34_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_35_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_36_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_37_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_38_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_39_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_40_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_41_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_43_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_45_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_46_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_47_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_48_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_49_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_50_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_51_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_52_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_53_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_54_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_55_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_56_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_57_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_58_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_59_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_60_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_61_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_62_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_64_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_65_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_66_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_67_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_68_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_69_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_70_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_71_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_72_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_73_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_74_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_75_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_76_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_77_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_78_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_79_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_80_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_81_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_82_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_83_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_84_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_85_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_86_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_87_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_88_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_89_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_90_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_91_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_92_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_93_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_94_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_95_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_96_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_98_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_99_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_100_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_101_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_102_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_103_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_104_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_105_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_106_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_107_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_108_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_109_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_110_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_111_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_112_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_113_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_114_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_115_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_116_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_117_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_118_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_119_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_120_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_121_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_122_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_123_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_124_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_125_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_126_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_127_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_128_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_129_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_130_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_131_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_132_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_133_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_134_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_135_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_136_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_137_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_138_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_139_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_140_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_141_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_142_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_143_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_145_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_146_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_147_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_148_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_149_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_151_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_152_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_153_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_154_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_155_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_156_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_157_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_158_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_159_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_160_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_162_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_163_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_164_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_165_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_166_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_167_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_168_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_169_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_170_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_171_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_172_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_173_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_174_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_175_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_176_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_177_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_178_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_179_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_180_1346233437.626" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_181_1346233437.626" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1346233437.626") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P501 = "cuid_1_1346233437.626" 
    $P502 = $P501()
    .return ($P502) 
.end