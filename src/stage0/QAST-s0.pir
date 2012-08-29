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
.sub "" :subid("cuid_1_1346233447.816") :anon :lex
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P2206 = 'cuid_154_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_4_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_14_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_29_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_36_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_41_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_58_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_180_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_182_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_184_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_186_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_188_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_190_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_192_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_193_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_199_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_200_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_205_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_207_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_208_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_210_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_214_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_216_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_218_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_220_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_221_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_222_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_224_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_232_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_233_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_234_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_235_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_236_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_237_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_239_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_241_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_242_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_243_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_244_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_245_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_246_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_247_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_248_1346233447.816' 
    capture_lex $P2206 
    .const 'Sub' $P2206 = 'cuid_59_1346233447.816' 
    capture_lex $P2206 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "&handle_arg", $P103 
    .lex "$exc_exclude", $P104 
    .lex "$exc_include", $P105 
    .lex "%handler_names", $P106 
    .lex "%control_map", $P107 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P501 = 'cuid_154_1346233447.816' 
    capture_lex $P501
    set $P103, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P503
    new $P504, 'Hash'
    set $P106, $P504
    new $P505, 'Hash'
    set $P107, $P505
    find_dynamic_lex $P506, "$*CTXSAVE"
    set ctxsave, $P506
    isnull $I501, ctxsave
    box $P511, $I501
    set $P510, $P511
    if $I501 goto unless15_end22 
    can $I502, ctxsave, "ctxsave"
    box $P509, $I502
    set $P508, $P509
    unless $I502 goto if16_end24 
    $P507 = ctxsave."ctxsave"()
    set $P508, $P507
  if16_end24:
    set $P510, $P508
  unless15_end22:
.annotate 'line', 1
    .const 'Sub' $P512 = 'cuid_4_1346233447.816' 
    capture_lex $P512
    $P513 = $P512()
    .const 'Sub' $P514 = 'cuid_14_1346233447.816' 
    capture_lex $P514
    $P515 = $P514()
    .const 'Sub' $P516 = 'cuid_29_1346233447.816' 
    capture_lex $P516
    $P517 = $P516()
    .const 'Sub' $P518 = 'cuid_36_1346233447.816' 
    capture_lex $P518
    $P519 = $P518()
    .const 'Sub' $P520 = 'cuid_41_1346233447.816' 
    capture_lex $P520
    $P521 = $P520()
    .const 'Sub' $P522 = 'cuid_58_1346233447.816' 
    capture_lex $P522
    $P523 = $P522()
.annotate 'line', 587
    get_hll_global $P527, "GLOBAL"
    nqp_get_package_through_who $P526, $P527, "QAST"
    get_who $P525, $P526
    set $P524, $P525["Operations"]
    unless_null $P524, fallback342
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P528
  fallback342:
    .const 'Sub' $P530 = 'cuid_180_1346233447.816' 
    capture_lex $P530
    newclosure $P529, $P530
    $P531 = $P524."add_core_op"("list", $P529, 1 :named("inlinable"))
.annotate 'line', 603
    get_hll_global $P535, "GLOBAL"
    nqp_get_package_through_who $P534, $P535, "QAST"
    get_who $P533, $P534
    set $P532, $P533["Operations"]
    unless_null $P532, fallback351
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P536
  fallback351:
    .const 'Sub' $P538 = 'cuid_182_1346233447.816' 
    capture_lex $P538
    newclosure $P537, $P538
    $P539 = $P532."add_core_op"("qlist", $P537, 1 :named("inlinable"))
.annotate 'line', 619
    get_hll_global $P543, "GLOBAL"
    nqp_get_package_through_who $P542, $P543, "QAST"
    get_who $P541, $P542
    set $P540, $P541["Operations"]
    unless_null $P540, fallback360
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P540, $P544
  fallback360:
    .const 'Sub' $P546 = 'cuid_184_1346233447.816' 
    capture_lex $P546
    newclosure $P545, $P546
    $P547 = $P540."add_core_op"("list_i", $P545, 1 :named("inlinable"))
.annotate 'line', 635
    get_hll_global $P551, "GLOBAL"
    nqp_get_package_through_who $P550, $P551, "QAST"
    get_who $P549, $P550
    set $P548, $P549["Operations"]
    unless_null $P548, fallback369
    nqp_get_sc_object $P552, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P548, $P552
  fallback369:
    .const 'Sub' $P554 = 'cuid_186_1346233447.816' 
    capture_lex $P554
    newclosure $P553, $P554
    $P555 = $P548."add_core_op"("list_s", $P553, 1 :named("inlinable"))
.annotate 'line', 651
    get_hll_global $P559, "GLOBAL"
    nqp_get_package_through_who $P558, $P559, "QAST"
    get_who $P557, $P558
    set $P556, $P557["Operations"]
    unless_null $P556, fallback378
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P556, $P560
  fallback378:
    .const 'Sub' $P562 = 'cuid_188_1346233447.816' 
    capture_lex $P562
    newclosure $P561, $P562
    $P563 = $P556."add_core_op"("list_b", $P561, 1 :named("inlinable"))
.annotate 'line', 668
    get_hll_global $P567, "GLOBAL"
    nqp_get_package_through_who $P566, $P567, "QAST"
    get_who $P565, $P566
    set $P564, $P565["Operations"]
    unless_null $P564, fallback390
    nqp_get_sc_object $P568, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P564, $P568
  fallback390:
    .const 'Sub' $P570 = 'cuid_190_1346233447.816' 
    capture_lex $P570
    newclosure $P569, $P570
    $P571 = $P564."add_core_op"("hash", $P569, 1 :named("inlinable"))
.annotate 'line', 693
    get_hll_global $P575, "GLOBAL"
    nqp_get_package_through_who $P574, $P575, "QAST"
    get_who $P573, $P574
    set $P572, $P573["Operations"]
    unless_null $P572, fallback402
    nqp_get_sc_object $P576, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P572, $P576
  fallback402:
    .const 'Sub' $P578 = 'cuid_192_1346233447.816' 
    capture_lex $P578
    newclosure $P577, $P578
    $P579 = $P572."add_core_op"("chain", $P577, 1 :named("inlinable"))
.annotate 'line', 735
    get_hll_global $P583, "GLOBAL"
    nqp_get_package_through_who $P582, $P583, "QAST"
    get_who $P581, $P582
    set $P580, $P581["Operations"]
    unless_null $P580, fallback426
    nqp_get_sc_object $P584, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P580, $P584
  fallback426:
    .const 'Sub' $P586 = 'cuid_193_1346233447.816' 
    capture_lex $P586
    newclosure $P585, $P586
    $P587 = $P580."add_core_op"("stmts", $P585, 1 :named("inlinable"))
    new $P591, 'ResizablePMCArray'
    box $P592, "if"
    push $P591, $P592
    box $P593, "unless"
    push $P591, $P593
    set $P588, $P591
    iter $P590, $P591
    new $P595, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P595, for_handlers492
    push_eh $P595
  for_next493:
    unless $P590, for_done495
    shift $P596, $P590
  for_redo494:
    .const 'Sub' $P594 = 'cuid_199_1346233447.816' 
    capture_lex $P594
    $P588 = $P594($P596)
    goto for_next493
  for_handlers492:
    .get_results ($P595)
    pop_upto_eh $P595
    getattribute $P595, $P595, 'type'
    eq $P595, .CONTROL_LOOP_NEXT, for_next493
    eq $P595, .CONTROL_LOOP_REDO, for_redo494
  for_done495:
    pop_eh 
.annotate 'line', 823
    get_hll_global $P600, "GLOBAL"
    nqp_get_package_through_who $P599, $P600, "QAST"
    get_who $P598, $P599
    set $P597, $P598["Operations"]
    unless_null $P597, fallback496
    nqp_get_sc_object $P601, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P597, $P601
  fallback496:
    .const 'Sub' $P603 = 'cuid_200_1346233447.816' 
    capture_lex $P603
    newclosure $P602, $P603
    $P604 = $P597."add_core_op"("ifnull", $P602, 1 :named("inlinable"))
    new $P608, 'ResizablePMCArray'
    box $P609, ""
    push $P608, $P609
    box $P610, "repeat_"
    push $P608, $P610
    set $P605, $P608
    iter $P607, $P608
    new $P612, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P612, for_handlers575
    push_eh $P612
  for_next576:
    unless $P607, for_done578
    shift $P613, $P607
  for_redo577:
    .const 'Sub' $P611 = 'cuid_205_1346233447.816' 
    capture_lex $P611
    $P605 = $P611($P613)
    goto for_next576
  for_handlers575:
    .get_results ($P612)
    pop_upto_eh $P612
    getattribute $P612, $P612, 'type'
    eq $P612, .CONTROL_LOOP_NEXT, for_next576
    eq $P612, .CONTROL_LOOP_REDO, for_redo577
  for_done578:
    pop_eh 
.annotate 'line', 948
    get_hll_global $P617, "GLOBAL"
    nqp_get_package_through_who $P616, $P617, "QAST"
    get_who $P615, $P616
    set $P614, $P615["Operations"]
    unless_null $P614, fallback579
    nqp_get_sc_object $P618, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P614, $P618
  fallback579:
    .const 'Sub' $P620 = 'cuid_207_1346233447.816' 
    capture_lex $P620
    newclosure $P619, $P620
    $P621 = $P614."add_core_op"("for", $P619, 1 :named("inlinable"))
.annotate 'line', 1030
    get_hll_global $P625, "GLOBAL"
    nqp_get_package_through_who $P624, $P625, "QAST"
    get_who $P623, $P624
    set $P622, $P623["Operations"]
    unless_null $P622, fallback624
    nqp_get_sc_object $P626, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P622, $P626
  fallback624:
    .const 'Sub' $P628 = 'cuid_208_1346233447.816' 
    capture_lex $P628
    newclosure $P627, $P628
    $P629 = $P622."add_core_op"("defor", $P627, 1 :named("inlinable"))
.annotate 'line', 1051
    get_hll_global $P633, "GLOBAL"
    nqp_get_package_through_who $P632, $P633, "QAST"
    get_who $P631, $P632
    set $P630, $P631["Operations"]
    unless_null $P630, fallback637
    nqp_get_sc_object $P634, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P630, $P634
  fallback637:
    .const 'Sub' $P636 = 'cuid_210_1346233447.816' 
    capture_lex $P636
    newclosure $P635, $P636
    $P637 = $P630."add_core_op"("xor", $P635, 1 :named("inlinable"))
.annotate 'line', 1120
    get_hll_global $P641, "GLOBAL"
    nqp_get_package_through_who $P640, $P641, "QAST"
    get_who $P639, $P640
    set $P638, $P639["Operations"]
    unless_null $P638, fallback669
    nqp_get_sc_object $P642, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P638, $P642
  fallback669:
    .const 'Sub' $P644 = 'cuid_214_1346233447.816' 
    capture_lex $P644
    newclosure $P643, $P644
    $P645 = $P638."add_core_op"("bind", $P643, 1 :named("inlinable"))
.annotate 'line', 1161
    get_hll_global $P649, "GLOBAL"
    nqp_get_package_through_who $P648, $P649, "QAST"
    get_who $P647, $P648
    set $P646, $P647["Operations"]
    unless_null $P646, fallback678
    nqp_get_sc_object $P650, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P646, $P650
  fallback678:
    .const 'Sub' $P652 = 'cuid_216_1346233447.816' 
    capture_lex $P652
    newclosure $P651, $P652
    $P653 = $P646."add_core_op"("call", $P651)
.annotate 'line', 1196
    get_hll_global $P657, "GLOBAL"
    nqp_get_package_through_who $P656, $P657, "QAST"
    get_who $P655, $P656
    set $P654, $P655["Operations"]
    unless_null $P654, fallback694
    nqp_get_sc_object $P658, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P654, $P658
  fallback694:
    .const 'Sub' $P660 = 'cuid_218_1346233447.816' 
    capture_lex $P660
    newclosure $P659, $P660
    $P661 = $P654."add_core_op"("callmethod", $P659, 1 :named("inlinable"))
.annotate 'line', 1246
    get_hll_global $P665, "GLOBAL"
    nqp_get_package_through_who $P664, $P665, "QAST"
    get_who $P663, $P664
    set $P662, $P663["Operations"]
    unless_null $P662, fallback714
    nqp_get_sc_object $P666, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P662, $P666
  fallback714:
    .const 'Sub' $P668 = 'cuid_220_1346233447.816' 
    capture_lex $P668
    newclosure $P667, $P668
    $P669 = $P662."add_core_op"("lexotic", $P667)
.annotate 'line', 1270
    get_hll_global $P673, "GLOBAL"
    nqp_get_package_through_who $P672, $P673, "QAST"
    get_who $P671, $P672
    set $P670, $P671["Operations"]
    unless_null $P670, fallback721
    nqp_get_sc_object $P674, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P670, $P674
  fallback721:
    .const 'Sub' $P676 = 'cuid_221_1346233447.816' 
    capture_lex $P676
    newclosure $P675, $P676
    $P677 = $P670."add_core_op"("curlexpad", $P675)
.annotate 'line', 1278
    get_hll_global $P681, "GLOBAL"
    nqp_get_package_through_who $P680, $P681, "QAST"
    get_who $P679, $P680
    set $P678, $P679["Operations"]
    unless_null $P678, fallback726
    nqp_get_sc_object $P682, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P678, $P682
  fallback726:
    .const 'Sub' $P684 = 'cuid_222_1346233447.816' 
    capture_lex $P684
    newclosure $P683, $P684
    $P685 = $P678."add_core_op"("curcode", $P683)
    box $P686, 0
    set $P104, $P686
    box $P687, 1
    set $P105, $P687
    new $P688, 'Hash'
    box $P689, ".CONTROL_ALL"
    set $P688["CATCH"], $P689
    box $P690, ".CONTROL_ALL"
    set $P688["CONTROL"], $P690
    box $P691, ".CONTROL_LOOP_NEXT"
    set $P688["NEXT"], $P691
    box $P692, ".CONTROL_LOOP_LAST"
    set $P688["LAST"], $P692
    box $P693, ".CONTROL_LOOP_REDO"
    set $P688["REDO"], $P693
    box $P694, ".CONTROL_TAKE"
    set $P688["TAKE"], $P694
    box $P695, ".CONTROL_BREAK"
    set $P688["SUCCEED"], $P695
    box $P696, ".CONTROL_CONTINUE"
    set $P688["PROCEED"], $P696
    set $P106, $P688
.annotate 'line', 1300
    get_hll_global $P700, "GLOBAL"
    nqp_get_package_through_who $P699, $P700, "QAST"
    get_who $P698, $P699
    set $P697, $P698["Operations"]
    unless_null $P697, fallback731
    nqp_get_sc_object $P701, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P697, $P701
  fallback731:
    .const 'Sub' $P703 = 'cuid_224_1346233447.816' 
    capture_lex $P703
    newclosure $P702, $P703
    $P704 = $P697."add_core_op"("handle", $P702)
.annotate 'line', 1441
    get_hll_global $P708, "GLOBAL"
    nqp_get_package_through_who $P707, $P708, "QAST"
    get_who $P706, $P707
    set $P705, $P706["Operations"]
    unless_null $P705, fallback801
    nqp_get_sc_object $P709, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P705, $P709
  fallback801:
    .const 'Sub' $P711 = 'cuid_232_1346233447.816' 
    capture_lex $P711
    newclosure $P710, $P711
    $P712 = $P705."add_core_op"("exception", $P710)
.annotate 'line', 1450
    get_hll_global $P716, "GLOBAL"
    nqp_get_package_through_who $P715, $P716, "QAST"
    get_who $P714, $P715
    set $P713, $P714["Operations"]
    unless_null $P713, fallback810
    nqp_get_sc_object $P717, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P713, $P717
  fallback810:
    .const 'Sub' $P719 = 'cuid_233_1346233447.816' 
    capture_lex $P719
    newclosure $P718, $P719
    $P720 = $P713."add_core_op"("getpayload", $P718)
.annotate 'line', 1462
    get_hll_global $P724, "GLOBAL"
    nqp_get_package_through_who $P723, $P724, "QAST"
    get_who $P722, $P723
    set $P721, $P722["Operations"]
    unless_null $P721, fallback818
    nqp_get_sc_object $P725, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P721, $P725
  fallback818:
    .const 'Sub' $P727 = 'cuid_234_1346233447.816' 
    capture_lex $P727
    newclosure $P726, $P727
    $P728 = $P721."add_core_op"("setpayload", $P726)
.annotate 'line', 1473
    get_hll_global $P732, "GLOBAL"
    nqp_get_package_through_who $P731, $P732, "QAST"
    get_who $P730, $P731
    set $P729, $P730["Operations"]
    unless_null $P729, fallback824
    nqp_get_sc_object $P733, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P729, $P733
  fallback824:
    .const 'Sub' $P735 = 'cuid_235_1346233447.816' 
    capture_lex $P735
    newclosure $P734, $P735
    $P736 = $P729."add_core_op"("getmessage", $P734)
.annotate 'line', 1487
    get_hll_global $P740, "GLOBAL"
    nqp_get_package_through_who $P739, $P740, "QAST"
    get_who $P738, $P739
    set $P737, $P738["Operations"]
    unless_null $P737, fallback835
    nqp_get_sc_object $P741, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P737, $P741
  fallback835:
    .const 'Sub' $P743 = 'cuid_236_1346233447.816' 
    capture_lex $P743
    newclosure $P742, $P743
    $P744 = $P737."add_core_op"("setmessage", $P742)
.annotate 'line', 1502
    get_hll_global $P748, "GLOBAL"
    nqp_get_package_through_who $P747, $P748, "QAST"
    get_who $P746, $P747
    set $P745, $P746["Operations"]
    unless_null $P745, fallback844
    nqp_get_sc_object $P749, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P745, $P749
  fallback844:
    .const 'Sub' $P751 = 'cuid_237_1346233447.816' 
    capture_lex $P751
    newclosure $P750, $P751
    $P752 = $P745."add_core_op"("newexception", $P750)
.annotate 'line', 1512
    get_hll_global $P756, "GLOBAL"
    nqp_get_package_through_who $P755, $P756, "QAST"
    get_who $P754, $P755
    set $P753, $P754["Operations"]
    unless_null $P753, fallback851
    nqp_get_sc_object $P757, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P753, $P757
  fallback851:
    $P758 = $P753."add_core_pirop_mapping"("die_s", "die", "0s")
.annotate 'line', 1513
    get_hll_global $P762, "GLOBAL"
    nqp_get_package_through_who $P761, $P762, "QAST"
    get_who $P760, $P761
    set $P759, $P760["Operations"]
    unless_null $P759, fallback852
    nqp_get_sc_object $P763, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P759, $P763
  fallback852:
    $P764 = $P759."add_core_pirop_mapping"("die", "die", "0P")
.annotate 'line', 1514
    get_hll_global $P768, "GLOBAL"
    nqp_get_package_through_who $P767, $P768, "QAST"
    get_who $P766, $P767
    set $P765, $P766["Operations"]
    unless_null $P765, fallback853
    nqp_get_sc_object $P769, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P765, $P769
  fallback853:
    $P770 = $P765."add_core_pirop_mapping"("throw", "throw", "0P")
.annotate 'line', 1515
    get_hll_global $P774, "GLOBAL"
    nqp_get_package_through_who $P773, $P774, "QAST"
    get_who $P772, $P773
    set $P771, $P772["Operations"]
    unless_null $P771, fallback854
    nqp_get_sc_object $P775, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P771, $P775
  fallback854:
    $P776 = $P771."add_core_pirop_mapping"("rethrow", "rethrow", "0P")
    new $P777, 'Hash'
    box $P778, ".CONTROL_LOOP_NEXT"
    set $P777["next"], $P778
    box $P779, ".CONTROL_LOOP_LAST"
    set $P777["last"], $P779
    box $P780, ".CONTROL_LOOP_REDO"
    set $P777["redo"], $P780
    set $P107, $P777
.annotate 'line', 1523
    get_hll_global $P784, "GLOBAL"
    nqp_get_package_through_who $P783, $P784, "QAST"
    get_who $P782, $P783
    set $P781, $P782["Operations"]
    unless_null $P781, fallback855
    nqp_get_sc_object $P785, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P781, $P785
  fallback855:
    .const 'Sub' $P787 = 'cuid_239_1346233447.816' 
    capture_lex $P787
    newclosure $P786, $P787
    $P788 = $P781."add_core_op"("control", $P786)
    new $P792, 'ResizablePMCArray'
    box $P793, "i"
    push $P792, $P793
    box $P794, "n"
    push $P792, $P794
    box $P795, "s"
    push $P792, $P795
    set $P789, $P792
    iter $P791, $P792
    new $P797, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P797, for_handlers865
    push_eh $P797
  for_next866:
    unless $P791, for_done868
    shift $P798, $P791
  for_redo867:
    .const 'Sub' $P796 = 'cuid_241_1346233447.816' 
    capture_lex $P796
    $P789 = $P796($P798)
    goto for_next866
  for_handlers865:
    .get_results ($P797)
    pop_upto_eh $P797
    getattribute $P797, $P797, 'type'
    eq $P797, .CONTROL_LOOP_NEXT, for_next866
    eq $P797, .CONTROL_LOOP_REDO, for_redo867
  for_done868:
    pop_eh 
.annotate 'line', 1546
    get_hll_global $P802, "GLOBAL"
    nqp_get_package_through_who $P801, $P802, "QAST"
    get_who $P800, $P801
    set $P799, $P800["Operations"]
    unless_null $P799, fallback869
    nqp_get_sc_object $P803, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P799, $P803
  fallback869:
    .const 'Sub' $P805 = 'cuid_242_1346233447.816' 
    capture_lex $P805
    newclosure $P804, $P805
    $P806 = $P799."add_hll_unbox"("nqp", "i", $P804)
.annotate 'line', 1554
    get_hll_global $P810, "GLOBAL"
    nqp_get_package_through_who $P809, $P810, "QAST"
    get_who $P808, $P809
    set $P807, $P808["Operations"]
    unless_null $P807, fallback874
    nqp_get_sc_object $P811, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P807, $P811
  fallback874:
    .const 'Sub' $P813 = 'cuid_243_1346233447.816' 
    capture_lex $P813
    newclosure $P812, $P813
    $P814 = $P807."add_hll_unbox"("nqp", "n", $P812)
.annotate 'line', 1562
    get_hll_global $P818, "GLOBAL"
    nqp_get_package_through_who $P817, $P818, "QAST"
    get_who $P816, $P817
    set $P815, $P816["Operations"]
    unless_null $P815, fallback879
    nqp_get_sc_object $P819, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P815, $P819
  fallback879:
    .const 'Sub' $P821 = 'cuid_244_1346233447.816' 
    capture_lex $P821
    newclosure $P820, $P821
    $P822 = $P815."add_hll_unbox"("nqp", "s", $P820)
.annotate 'line', 1572
    get_hll_global $P826, "GLOBAL"
    nqp_get_package_through_who $P825, $P826, "QAST"
    get_who $P824, $P825
    set $P823, $P824["Operations"]
    unless_null $P823, fallback884
    nqp_get_sc_object $P827, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P823, $P827
  fallback884:
    $P828 = $P823."add_core_pirop_mapping"("positional_get", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1573
    get_hll_global $P832, "GLOBAL"
    nqp_get_package_through_who $P831, $P832, "QAST"
    get_who $P830, $P831
    set $P829, $P830["Operations"]
    unless_null $P829, fallback885
    nqp_get_sc_object $P833, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P829, $P833
  fallback885:
    $P834 = $P829."add_core_pirop_mapping"("positional_bind", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1574
    get_hll_global $P838, "GLOBAL"
    nqp_get_package_through_who $P837, $P838, "QAST"
    get_who $P836, $P837
    set $P835, $P836["Operations"]
    unless_null $P835, fallback886
    nqp_get_sc_object $P839, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P835, $P839
  fallback886:
    $P840 = $P835."add_core_pirop_mapping"("associative_get", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1575
    get_hll_global $P844, "GLOBAL"
    nqp_get_package_through_who $P843, $P844, "QAST"
    get_who $P842, $P843
    set $P841, $P842["Operations"]
    unless_null $P841, fallback887
    nqp_get_sc_object $P845, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P841, $P845
  fallback887:
    $P846 = $P841."add_core_pirop_mapping"("associative_bind", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1578
    get_hll_global $P850, "GLOBAL"
    nqp_get_package_through_who $P849, $P850, "QAST"
    get_who $P848, $P849
    set $P847, $P848["Operations"]
    unless_null $P847, fallback888
    nqp_get_sc_object $P851, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P847, $P851
  fallback888:
    $P852 = $P847."add_core_pirop_mapping"("print", "print", "0s", 1 :named("inlinable"))
.annotate 'line', 1579
    get_hll_global $P856, "GLOBAL"
    nqp_get_package_through_who $P855, $P856, "QAST"
    get_who $P854, $P855
    set $P853, $P854["Operations"]
    unless_null $P853, fallback889
    nqp_get_sc_object $P857, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P853, $P857
  fallback889:
    $P858 = $P853."add_core_pirop_mapping"("say", "say", "0s", 1 :named("inlinable"))
.annotate 'line', 1580
    get_hll_global $P862, "GLOBAL"
    nqp_get_package_through_who $P861, $P862, "QAST"
    get_who $P860, $P861
    set $P859, $P860["Operations"]
    unless_null $P859, fallback890
    nqp_get_sc_object $P863, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P859, $P863
  fallback890:
    $P864 = $P859."add_core_pirop_mapping"("stat", "stat", "Isi", 1 :named("inlinable"))
.annotate 'line', 1581
    get_hll_global $P868, "GLOBAL"
    nqp_get_package_through_who $P867, $P868, "QAST"
    get_who $P866, $P867
    set $P865, $P866["Operations"]
    unless_null $P865, fallback891
    nqp_get_sc_object $P869, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P865, $P869
  fallback891:
    $P870 = $P865."add_core_pirop_mapping"("open", "open", "Pss", 1 :named("inlinable"))
.annotate 'line', 1584
    get_hll_global $P874, "GLOBAL"
    nqp_get_package_through_who $P873, $P874, "QAST"
    get_who $P872, $P873
    set $P871, $P872["Operations"]
    unless_null $P871, fallback892
    nqp_get_sc_object $P875, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P871, $P875
  fallback892:
    $P876 = $P871."add_core_pirop_mapping"("time_i", "time", "I", 1 :named("inlinable"))
.annotate 'line', 1585
    get_hll_global $P880, "GLOBAL"
    nqp_get_package_through_who $P879, $P880, "QAST"
    get_who $P878, $P879
    set $P877, $P878["Operations"]
    unless_null $P877, fallback893
    nqp_get_sc_object $P881, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P877, $P881
  fallback893:
    $P882 = $P877."add_core_pirop_mapping"("time_n", "time", "N", 1 :named("inlinable"))
.annotate 'line', 1588
    get_hll_global $P886, "GLOBAL"
    nqp_get_package_through_who $P885, $P886, "QAST"
    get_who $P884, $P885
    set $P883, $P884["Operations"]
    unless_null $P883, fallback894
    nqp_get_sc_object $P887, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P883, $P887
  fallback894:
    $P888 = $P883."add_core_pirop_mapping"("add_i", "add", "Iii", 1 :named("inlinable"))
.annotate 'line', 1589
    get_hll_global $P892, "GLOBAL"
    nqp_get_package_through_who $P891, $P892, "QAST"
    get_who $P890, $P891
    set $P889, $P890["Operations"]
    unless_null $P889, fallback895
    nqp_get_sc_object $P893, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P889, $P893
  fallback895:
    $P894 = $P889."add_core_pirop_mapping"("add_I", "nqp_bigint_add", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1590
    get_hll_global $P898, "GLOBAL"
    nqp_get_package_through_who $P897, $P898, "QAST"
    get_who $P896, $P897
    set $P895, $P896["Operations"]
    unless_null $P895, fallback896
    nqp_get_sc_object $P899, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P895, $P899
  fallback896:
    $P900 = $P895."add_core_pirop_mapping"("add_n", "add", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1591
    get_hll_global $P904, "GLOBAL"
    nqp_get_package_through_who $P903, $P904, "QAST"
    get_who $P902, $P903
    set $P901, $P902["Operations"]
    unless_null $P901, fallback897
    nqp_get_sc_object $P905, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P901, $P905
  fallback897:
    $P906 = $P901."add_core_pirop_mapping"("sub_i", "sub", "Iii", 1 :named("inlinable"))
.annotate 'line', 1592
    get_hll_global $P910, "GLOBAL"
    nqp_get_package_through_who $P909, $P910, "QAST"
    get_who $P908, $P909
    set $P907, $P908["Operations"]
    unless_null $P907, fallback898
    nqp_get_sc_object $P911, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P907, $P911
  fallback898:
    $P912 = $P907."add_core_pirop_mapping"("sub_I", "nqp_bigint_sub", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1593
    get_hll_global $P916, "GLOBAL"
    nqp_get_package_through_who $P915, $P916, "QAST"
    get_who $P914, $P915
    set $P913, $P914["Operations"]
    unless_null $P913, fallback899
    nqp_get_sc_object $P917, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P913, $P917
  fallback899:
    $P918 = $P913."add_core_pirop_mapping"("sub_n", "sub", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1594
    get_hll_global $P922, "GLOBAL"
    nqp_get_package_through_who $P921, $P922, "QAST"
    get_who $P920, $P921
    set $P919, $P920["Operations"]
    unless_null $P919, fallback900
    nqp_get_sc_object $P923, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P919, $P923
  fallback900:
    $P924 = $P919."add_core_pirop_mapping"("mul_i", "mul", "Iii", 1 :named("inlinable"))
.annotate 'line', 1595
    get_hll_global $P928, "GLOBAL"
    nqp_get_package_through_who $P927, $P928, "QAST"
    get_who $P926, $P927
    set $P925, $P926["Operations"]
    unless_null $P925, fallback901
    nqp_get_sc_object $P929, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P925, $P929
  fallback901:
    $P930 = $P925."add_core_pirop_mapping"("mul_I", "nqp_bigint_mul", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1596
    get_hll_global $P934, "GLOBAL"
    nqp_get_package_through_who $P933, $P934, "QAST"
    get_who $P932, $P933
    set $P931, $P932["Operations"]
    unless_null $P931, fallback902
    nqp_get_sc_object $P935, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P931, $P935
  fallback902:
    $P936 = $P931."add_core_pirop_mapping"("mul_n", "mul", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1597
    get_hll_global $P940, "GLOBAL"
    nqp_get_package_through_who $P939, $P940, "QAST"
    get_who $P938, $P939
    set $P937, $P938["Operations"]
    unless_null $P937, fallback903
    nqp_get_sc_object $P941, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P937, $P941
  fallback903:
    $P942 = $P937."add_core_pirop_mapping"("div_i", "div", "Iii", 1 :named("inlinable"))
.annotate 'line', 1598
    get_hll_global $P946, "GLOBAL"
    nqp_get_package_through_who $P945, $P946, "QAST"
    get_who $P944, $P945
    set $P943, $P944["Operations"]
    unless_null $P943, fallback904
    nqp_get_sc_object $P947, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P943, $P947
  fallback904:
    $P948 = $P943."add_core_pirop_mapping"("div_I", "nqp_bigint_div", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1599
    get_hll_global $P952, "GLOBAL"
    nqp_get_package_through_who $P951, $P952, "QAST"
    get_who $P950, $P951
    set $P949, $P950["Operations"]
    unless_null $P949, fallback905
    nqp_get_sc_object $P953, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P949, $P953
  fallback905:
    $P954 = $P949."add_core_pirop_mapping"("div_In", "nqp_bigint_div_num", "NPP", 1 :named("inlinable"))
.annotate 'line', 1600
    get_hll_global $P958, "GLOBAL"
    nqp_get_package_through_who $P957, $P958, "QAST"
    get_who $P956, $P957
    set $P955, $P956["Operations"]
    unless_null $P955, fallback906
    nqp_get_sc_object $P959, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P955, $P959
  fallback906:
    $P960 = $P955."add_core_pirop_mapping"("div_n", "div", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1601
    get_hll_global $P964, "GLOBAL"
    nqp_get_package_through_who $P963, $P964, "QAST"
    get_who $P962, $P963
    set $P961, $P962["Operations"]
    unless_null $P961, fallback907
    nqp_get_sc_object $P965, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P961, $P965
  fallback907:
    $P966 = $P961."add_core_pirop_mapping"("mod_i", "mod", "Iii", 1 :named("inlinable"))
.annotate 'line', 1602
    get_hll_global $P970, "GLOBAL"
    nqp_get_package_through_who $P969, $P970, "QAST"
    get_who $P968, $P969
    set $P967, $P968["Operations"]
    unless_null $P967, fallback908
    nqp_get_sc_object $P971, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P967, $P971
  fallback908:
    $P972 = $P967."add_core_pirop_mapping"("mod_I", "nqp_bigint_mod", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1603
    get_hll_global $P976, "GLOBAL"
    nqp_get_package_through_who $P975, $P976, "QAST"
    get_who $P974, $P975
    set $P973, $P974["Operations"]
    unless_null $P973, fallback909
    nqp_get_sc_object $P977, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P973, $P977
  fallback909:
    $P978 = $P973."add_core_pirop_mapping"("expmod_I", "nqp_bigint_exp_mod", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1604
    get_hll_global $P982, "GLOBAL"
    nqp_get_package_through_who $P981, $P982, "QAST"
    get_who $P980, $P981
    set $P979, $P980["Operations"]
    unless_null $P979, fallback910
    nqp_get_sc_object $P983, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P979, $P983
  fallback910:
    $P984 = $P979."add_core_pirop_mapping"("mod_n", "mod", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1605
    get_hll_global $P988, "GLOBAL"
    nqp_get_package_through_who $P987, $P988, "QAST"
    get_who $P986, $P987
    set $P985, $P986["Operations"]
    unless_null $P985, fallback911
    nqp_get_sc_object $P989, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P985, $P989
  fallback911:
    $P990 = $P985."add_core_pirop_mapping"("pow_n", "pow", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1606
    get_hll_global $P994, "GLOBAL"
    nqp_get_package_through_who $P993, $P994, "QAST"
    get_who $P992, $P993
    set $P991, $P992["Operations"]
    unless_null $P991, fallback912
    nqp_get_sc_object $P995, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P991, $P995
  fallback912:
    $P996 = $P991."add_core_pirop_mapping"("pow_I", "nqp_bigint_pow", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1607
    get_hll_global $P1000, "GLOBAL"
    nqp_get_package_through_who $P999, $P1000, "QAST"
    get_who $P998, $P999
    set $P997, $P998["Operations"]
    unless_null $P997, fallback913
    nqp_get_sc_object $P1001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P997, $P1001
  fallback913:
    $P1002 = $P997."add_core_pirop_mapping"("neg_i", "neg", "Ii", 1 :named("inlinable"))
.annotate 'line', 1608
    get_hll_global $P1006, "GLOBAL"
    nqp_get_package_through_who $P1005, $P1006, "QAST"
    get_who $P1004, $P1005
    set $P1003, $P1004["Operations"]
    unless_null $P1003, fallback914
    nqp_get_sc_object $P1007, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1003, $P1007
  fallback914:
    $P1008 = $P1003."add_core_pirop_mapping"("neg_I", "nqp_bigint_neg", "PPP", 1 :named("inlinable"))
.annotate 'line', 1609
    get_hll_global $P1012, "GLOBAL"
    nqp_get_package_through_who $P1011, $P1012, "QAST"
    get_who $P1010, $P1011
    set $P1009, $P1010["Operations"]
    unless_null $P1009, fallback915
    nqp_get_sc_object $P1013, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1009, $P1013
  fallback915:
    $P1014 = $P1009."add_core_pirop_mapping"("neg_n", "neg", "Nn", 1 :named("inlinable"))
.annotate 'line', 1610
    get_hll_global $P1018, "GLOBAL"
    nqp_get_package_through_who $P1017, $P1018, "QAST"
    get_who $P1016, $P1017
    set $P1015, $P1016["Operations"]
    unless_null $P1015, fallback916
    nqp_get_sc_object $P1019, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1015, $P1019
  fallback916:
    $P1020 = $P1015."add_core_pirop_mapping"("abs_i", "abs", "Ii", 1 :named("inlinable"))
.annotate 'line', 1611
    get_hll_global $P1024, "GLOBAL"
    nqp_get_package_through_who $P1023, $P1024, "QAST"
    get_who $P1022, $P1023
    set $P1021, $P1022["Operations"]
    unless_null $P1021, fallback917
    nqp_get_sc_object $P1025, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1021, $P1025
  fallback917:
    $P1026 = $P1021."add_core_pirop_mapping"("abs_I", "nqp_bigint_abs", "PPP", 1 :named("inlinable"))
.annotate 'line', 1612
    get_hll_global $P1030, "GLOBAL"
    nqp_get_package_through_who $P1029, $P1030, "QAST"
    get_who $P1028, $P1029
    set $P1027, $P1028["Operations"]
    unless_null $P1027, fallback918
    nqp_get_sc_object $P1031, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1027, $P1031
  fallback918:
    $P1032 = $P1027."add_core_pirop_mapping"("abs_n", "abs", "Nn", 1 :named("inlinable"))
.annotate 'line', 1614
    get_hll_global $P1036, "GLOBAL"
    nqp_get_package_through_who $P1035, $P1036, "QAST"
    get_who $P1034, $P1035
    set $P1033, $P1034["Operations"]
    unless_null $P1033, fallback919
    nqp_get_sc_object $P1037, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1033, $P1037
  fallback919:
    $P1038 = $P1033."add_core_pirop_mapping"("gcd_i", "gcd", "Ii", 1 :named("inlinable"))
.annotate 'line', 1615
    get_hll_global $P1042, "GLOBAL"
    nqp_get_package_through_who $P1041, $P1042, "QAST"
    get_who $P1040, $P1041
    set $P1039, $P1040["Operations"]
    unless_null $P1039, fallback920
    nqp_get_sc_object $P1043, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1039, $P1043
  fallback920:
    $P1044 = $P1039."add_core_pirop_mapping"("gcd_I", "nqp_bigint_gcd", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1616
    get_hll_global $P1048, "GLOBAL"
    nqp_get_package_through_who $P1047, $P1048, "QAST"
    get_who $P1046, $P1047
    set $P1045, $P1046["Operations"]
    unless_null $P1045, fallback921
    nqp_get_sc_object $P1049, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1045, $P1049
  fallback921:
    $P1050 = $P1045."add_core_pirop_mapping"("lcm_i", "lcm", "Ii", 1 :named("inlinable"))
.annotate 'line', 1617
    get_hll_global $P1054, "GLOBAL"
    nqp_get_package_through_who $P1053, $P1054, "QAST"
    get_who $P1052, $P1053
    set $P1051, $P1052["Operations"]
    unless_null $P1051, fallback922
    nqp_get_sc_object $P1055, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1051, $P1055
  fallback922:
    $P1056 = $P1051."add_core_pirop_mapping"("lcm_I", "nqp_bigint_lcm", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1619
    get_hll_global $P1060, "GLOBAL"
    nqp_get_package_through_who $P1059, $P1060, "QAST"
    get_who $P1058, $P1059
    set $P1057, $P1058["Operations"]
    unless_null $P1057, fallback923
    nqp_get_sc_object $P1061, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1057, $P1061
  fallback923:
    $P1062 = $P1057."add_core_pirop_mapping"("ceil_n", "ceil", "Nn", 1 :named("inlinable"))
.annotate 'line', 1620
    get_hll_global $P1066, "GLOBAL"
    nqp_get_package_through_who $P1065, $P1066, "QAST"
    get_who $P1064, $P1065
    set $P1063, $P1064["Operations"]
    unless_null $P1063, fallback924
    nqp_get_sc_object $P1067, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1063, $P1067
  fallback924:
    $P1068 = $P1063."add_core_pirop_mapping"("floor_n", "floor", "NN", 1 :named("inlinable"))
.annotate 'line', 1621
    get_hll_global $P1072, "GLOBAL"
    nqp_get_package_through_who $P1071, $P1072, "QAST"
    get_who $P1070, $P1071
    set $P1069, $P1070["Operations"]
    unless_null $P1069, fallback925
    nqp_get_sc_object $P1073, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1069, $P1073
  fallback925:
    $P1074 = $P1069."add_core_pirop_mapping"("ln_n", "ln", "Nn", 1 :named("inlinable"))
.annotate 'line', 1622
    get_hll_global $P1078, "GLOBAL"
    nqp_get_package_through_who $P1077, $P1078, "QAST"
    get_who $P1076, $P1077
    set $P1075, $P1076["Operations"]
    unless_null $P1075, fallback926
    nqp_get_sc_object $P1079, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1075, $P1079
  fallback926:
    $P1080 = $P1075."add_core_pirop_mapping"("sqrt_n", "sqrt", "Nn", 1 :named("inlinable"))
.annotate 'line', 1623
    get_hll_global $P1084, "GLOBAL"
    nqp_get_package_through_who $P1083, $P1084, "QAST"
    get_who $P1082, $P1083
    set $P1081, $P1082["Operations"]
    unless_null $P1081, fallback927
    nqp_get_sc_object $P1085, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1081, $P1085
  fallback927:
    $P1086 = $P1081."add_core_pirop_mapping"("radix", "nqp_radix", "Pisii", 1 :named("inlinable"))
.annotate 'line', 1624
    get_hll_global $P1090, "GLOBAL"
    nqp_get_package_through_who $P1089, $P1090, "QAST"
    get_who $P1088, $P1089
    set $P1087, $P1088["Operations"]
    unless_null $P1087, fallback928
    nqp_get_sc_object $P1091, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1087, $P1091
  fallback928:
    $P1092 = $P1087."add_core_pirop_mapping"("radix_I", "nqp_bigint_radix", "PisiiP", 1 :named("inlinable"))
.annotate 'line', 1625
    get_hll_global $P1096, "GLOBAL"
    nqp_get_package_through_who $P1095, $P1096, "QAST"
    get_who $P1094, $P1095
    set $P1093, $P1094["Operations"]
    unless_null $P1093, fallback929
    nqp_get_sc_object $P1097, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1093, $P1097
  fallback929:
    $P1098 = $P1093."add_core_pirop_mapping"("log_n", "ln", "NN", 1 :named("inlinable"))
.annotate 'line', 1626
    get_hll_global $P1102, "GLOBAL"
    nqp_get_package_through_who $P1101, $P1102, "QAST"
    get_who $P1100, $P1101
    set $P1099, $P1100["Operations"]
    unless_null $P1099, fallback930
    nqp_get_sc_object $P1103, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1099, $P1103
  fallback930:
    $P1104 = $P1099."add_core_pirop_mapping"("exp_n", "exp", "Nn", 1 :named("inlinable"))
.annotate 'line', 1627
    get_hll_global $P1108, "GLOBAL"
    nqp_get_package_through_who $P1107, $P1108, "QAST"
    get_who $P1106, $P1107
    set $P1105, $P1106["Operations"]
    unless_null $P1105, fallback931
    nqp_get_sc_object $P1109, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1105, $P1109
  fallback931:
    $P1110 = $P1105."add_core_pirop_mapping"("isnanorinf", "is_inf_or_nan", "In", 1 :named("inlinable"))
.annotate 'line', 1630
    get_hll_global $P1114, "GLOBAL"
    nqp_get_package_through_who $P1113, $P1114, "QAST"
    get_who $P1112, $P1113
    set $P1111, $P1112["Operations"]
    unless_null $P1111, fallback932
    nqp_get_sc_object $P1115, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1111, $P1115
  fallback932:
    $P1116 = $P1111."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1631
    get_hll_global $P1120, "GLOBAL"
    nqp_get_package_through_who $P1119, $P1120, "QAST"
    get_who $P1118, $P1119
    set $P1117, $P1118["Operations"]
    unless_null $P1117, fallback933
    nqp_get_sc_object $P1121, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1117, $P1121
  fallback933:
    $P1122 = $P1117."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1632
    get_hll_global $P1126, "GLOBAL"
    nqp_get_package_through_who $P1125, $P1126, "QAST"
    get_who $P1124, $P1125
    set $P1123, $P1124["Operations"]
    unless_null $P1123, fallback934
    nqp_get_sc_object $P1127, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1123, $P1127
  fallback934:
    $P1128 = $P1123."add_core_pirop_mapping"("cos_n", "cos", "NN", 1 :named("inlinable"))
.annotate 'line', 1633
    get_hll_global $P1132, "GLOBAL"
    nqp_get_package_through_who $P1131, $P1132, "QAST"
    get_who $P1130, $P1131
    set $P1129, $P1130["Operations"]
    unless_null $P1129, fallback935
    nqp_get_sc_object $P1133, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1129, $P1133
  fallback935:
    $P1134 = $P1129."add_core_pirop_mapping"("acos_n", "acos", "NN", 1 :named("inlinable"))
.annotate 'line', 1634
    get_hll_global $P1138, "GLOBAL"
    nqp_get_package_through_who $P1137, $P1138, "QAST"
    get_who $P1136, $P1137
    set $P1135, $P1136["Operations"]
    unless_null $P1135, fallback936
    nqp_get_sc_object $P1139, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1135, $P1139
  fallback936:
    $P1140 = $P1135."add_core_pirop_mapping"("tan_n", "tan", "NN", 1 :named("inlinable"))
.annotate 'line', 1635
    get_hll_global $P1144, "GLOBAL"
    nqp_get_package_through_who $P1143, $P1144, "QAST"
    get_who $P1142, $P1143
    set $P1141, $P1142["Operations"]
    unless_null $P1141, fallback937
    nqp_get_sc_object $P1145, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1141, $P1145
  fallback937:
    $P1146 = $P1141."add_core_pirop_mapping"("atan_n", "atan", "NN", 1 :named("inlinable"))
.annotate 'line', 1636
    get_hll_global $P1150, "GLOBAL"
    nqp_get_package_through_who $P1149, $P1150, "QAST"
    get_who $P1148, $P1149
    set $P1147, $P1148["Operations"]
    unless_null $P1147, fallback938
    nqp_get_sc_object $P1151, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1147, $P1151
  fallback938:
    $P1152 = $P1147."add_core_pirop_mapping"("atan2_n", "atan", "NNN", 1 :named("inlinable"))
.annotate 'line', 1637
    get_hll_global $P1156, "GLOBAL"
    nqp_get_package_through_who $P1155, $P1156, "QAST"
    get_who $P1154, $P1155
    set $P1153, $P1154["Operations"]
    unless_null $P1153, fallback939
    nqp_get_sc_object $P1157, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1153, $P1157
  fallback939:
    $P1158 = $P1153."add_core_pirop_mapping"("sec_n", "sec", "NN", 1 :named("inlinable"))
.annotate 'line', 1638
    get_hll_global $P1162, "GLOBAL"
    nqp_get_package_through_who $P1161, $P1162, "QAST"
    get_who $P1160, $P1161
    set $P1159, $P1160["Operations"]
    unless_null $P1159, fallback940
    nqp_get_sc_object $P1163, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1159, $P1163
  fallback940:
    $P1164 = $P1159."add_core_pirop_mapping"("asec_n", "asec", "NN", 1 :named("inlinable"))
.annotate 'line', 1639
    get_hll_global $P1168, "GLOBAL"
    nqp_get_package_through_who $P1167, $P1168, "QAST"
    get_who $P1166, $P1167
    set $P1165, $P1166["Operations"]
    unless_null $P1165, fallback941
    nqp_get_sc_object $P1169, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1165, $P1169
  fallback941:
    $P1170 = $P1165."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1640
    get_hll_global $P1174, "GLOBAL"
    nqp_get_package_through_who $P1173, $P1174, "QAST"
    get_who $P1172, $P1173
    set $P1171, $P1172["Operations"]
    unless_null $P1171, fallback942
    nqp_get_sc_object $P1175, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1171, $P1175
  fallback942:
    $P1176 = $P1171."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1641
    get_hll_global $P1180, "GLOBAL"
    nqp_get_package_through_who $P1179, $P1180, "QAST"
    get_who $P1178, $P1179
    set $P1177, $P1178["Operations"]
    unless_null $P1177, fallback943
    nqp_get_sc_object $P1181, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1177, $P1181
  fallback943:
    $P1182 = $P1177."add_core_pirop_mapping"("sinh_n", "sinh", "NN", 1 :named("inlinable"))
.annotate 'line', 1642
    get_hll_global $P1186, "GLOBAL"
    nqp_get_package_through_who $P1185, $P1186, "QAST"
    get_who $P1184, $P1185
    set $P1183, $P1184["Operations"]
    unless_null $P1183, fallback944
    nqp_get_sc_object $P1187, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1183, $P1187
  fallback944:
    $P1188 = $P1183."add_core_pirop_mapping"("cosh_n", "cosh", "NN", 1 :named("inlinable"))
.annotate 'line', 1643
    get_hll_global $P1192, "GLOBAL"
    nqp_get_package_through_who $P1191, $P1192, "QAST"
    get_who $P1190, $P1191
    set $P1189, $P1190["Operations"]
    unless_null $P1189, fallback945
    nqp_get_sc_object $P1193, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1189, $P1193
  fallback945:
    $P1194 = $P1189."add_core_pirop_mapping"("tanh_n", "tanh", "NN", 1 :named("inlinable"))
.annotate 'line', 1644
    get_hll_global $P1198, "GLOBAL"
    nqp_get_package_through_who $P1197, $P1198, "QAST"
    get_who $P1196, $P1197
    set $P1195, $P1196["Operations"]
    unless_null $P1195, fallback946
    nqp_get_sc_object $P1199, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1195, $P1199
  fallback946:
    $P1200 = $P1195."add_core_pirop_mapping"("sech_n", "sech", "NN", 1 :named("inlinable"))
.annotate 'line', 1647
    get_hll_global $P1204, "GLOBAL"
    nqp_get_package_through_who $P1203, $P1204, "QAST"
    get_who $P1202, $P1203
    set $P1201, $P1202["Operations"]
    unless_null $P1201, fallback947
    nqp_get_sc_object $P1205, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1201, $P1205
  fallback947:
    $P1206 = $P1201."add_core_pirop_mapping"("bitor_i", "bor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1648
    get_hll_global $P1210, "GLOBAL"
    nqp_get_package_through_who $P1209, $P1210, "QAST"
    get_who $P1208, $P1209
    set $P1207, $P1208["Operations"]
    unless_null $P1207, fallback948
    nqp_get_sc_object $P1211, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1207, $P1211
  fallback948:
    $P1212 = $P1207."add_core_pirop_mapping"("bitor_I", "nqp_bigint_bor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1649
    get_hll_global $P1216, "GLOBAL"
    nqp_get_package_through_who $P1215, $P1216, "QAST"
    get_who $P1214, $P1215
    set $P1213, $P1214["Operations"]
    unless_null $P1213, fallback949
    nqp_get_sc_object $P1217, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1213, $P1217
  fallback949:
    $P1218 = $P1213."add_core_pirop_mapping"("bitxor_i", "bxor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1650
    get_hll_global $P1222, "GLOBAL"
    nqp_get_package_through_who $P1221, $P1222, "QAST"
    get_who $P1220, $P1221
    set $P1219, $P1220["Operations"]
    unless_null $P1219, fallback950
    nqp_get_sc_object $P1223, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1219, $P1223
  fallback950:
    $P1224 = $P1219."add_core_pirop_mapping"("bitxor_I", "nqp_bigint_bxor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1651
    get_hll_global $P1228, "GLOBAL"
    nqp_get_package_through_who $P1227, $P1228, "QAST"
    get_who $P1226, $P1227
    set $P1225, $P1226["Operations"]
    unless_null $P1225, fallback951
    nqp_get_sc_object $P1229, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1225, $P1229
  fallback951:
    $P1230 = $P1225."add_core_pirop_mapping"("bitand_i", "band", "Iii", 1 :named("inlinable"))
.annotate 'line', 1652
    get_hll_global $P1234, "GLOBAL"
    nqp_get_package_through_who $P1233, $P1234, "QAST"
    get_who $P1232, $P1233
    set $P1231, $P1232["Operations"]
    unless_null $P1231, fallback952
    nqp_get_sc_object $P1235, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1231, $P1235
  fallback952:
    $P1236 = $P1231."add_core_pirop_mapping"("bitand_I", "nqp_bigint_band", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1653
    get_hll_global $P1240, "GLOBAL"
    nqp_get_package_through_who $P1239, $P1240, "QAST"
    get_who $P1238, $P1239
    set $P1237, $P1238["Operations"]
    unless_null $P1237, fallback953
    nqp_get_sc_object $P1241, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1237, $P1241
  fallback953:
    $P1242 = $P1237."add_core_pirop_mapping"("bitneg_i", "bnot", "Ii", 1 :named("inlinable"))
.annotate 'line', 1654
    get_hll_global $P1246, "GLOBAL"
    nqp_get_package_through_who $P1245, $P1246, "QAST"
    get_who $P1244, $P1245
    set $P1243, $P1244["Operations"]
    unless_null $P1243, fallback954
    nqp_get_sc_object $P1247, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1243, $P1247
  fallback954:
    $P1248 = $P1243."add_core_pirop_mapping"("bitneg_I", "nqp_bigint_bnot", "PPP", 1 :named("inlinable"))
.annotate 'line', 1655
    get_hll_global $P1252, "GLOBAL"
    nqp_get_package_through_who $P1251, $P1252, "QAST"
    get_who $P1250, $P1251
    set $P1249, $P1250["Operations"]
    unless_null $P1249, fallback955
    nqp_get_sc_object $P1253, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1249, $P1253
  fallback955:
    $P1254 = $P1249."add_core_pirop_mapping"("bitshiftl_i", "shl", "Iii", 1 :named("inlinable"))
.annotate 'line', 1656
    get_hll_global $P1258, "GLOBAL"
    nqp_get_package_through_who $P1257, $P1258, "QAST"
    get_who $P1256, $P1257
    set $P1255, $P1256["Operations"]
    unless_null $P1255, fallback956
    nqp_get_sc_object $P1259, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1255, $P1259
  fallback956:
    $P1260 = $P1255."add_core_pirop_mapping"("bitshiftl_I", "nqp_bigint_shl", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1657
    get_hll_global $P1264, "GLOBAL"
    nqp_get_package_through_who $P1263, $P1264, "QAST"
    get_who $P1262, $P1263
    set $P1261, $P1262["Operations"]
    unless_null $P1261, fallback957
    nqp_get_sc_object $P1265, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1261, $P1265
  fallback957:
    $P1266 = $P1261."add_core_pirop_mapping"("bitshiftr_i", "shr", "Iii", 1 :named("inlinable"))
.annotate 'line', 1658
    get_hll_global $P1270, "GLOBAL"
    nqp_get_package_through_who $P1269, $P1270, "QAST"
    get_who $P1268, $P1269
    set $P1267, $P1268["Operations"]
    unless_null $P1267, fallback958
    nqp_get_sc_object $P1271, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1267, $P1271
  fallback958:
    $P1272 = $P1267."add_core_pirop_mapping"("bitshiftr_I", "nqp_bigint_shr", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1661
    get_hll_global $P1276, "GLOBAL"
    nqp_get_package_through_who $P1275, $P1276, "QAST"
    get_who $P1274, $P1275
    set $P1273, $P1274["Operations"]
    unless_null $P1273, fallback959
    nqp_get_sc_object $P1277, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1273, $P1277
  fallback959:
    $P1278 = $P1273."add_core_pirop_mapping"("bitor_s", "bors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1662
    get_hll_global $P1282, "GLOBAL"
    nqp_get_package_through_who $P1281, $P1282, "QAST"
    get_who $P1280, $P1281
    set $P1279, $P1280["Operations"]
    unless_null $P1279, fallback960
    nqp_get_sc_object $P1283, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1279, $P1283
  fallback960:
    $P1284 = $P1279."add_core_pirop_mapping"("bitxor_s", "bxors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1663
    get_hll_global $P1288, "GLOBAL"
    nqp_get_package_through_who $P1287, $P1288, "QAST"
    get_who $P1286, $P1287
    set $P1285, $P1286["Operations"]
    unless_null $P1285, fallback961
    nqp_get_sc_object $P1289, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1285, $P1289
  fallback961:
    $P1290 = $P1285."add_core_pirop_mapping"("bitand_s", "bands", "Sss", 1 :named("inlinable"))
.annotate 'line', 1666
    get_hll_global $P1294, "GLOBAL"
    nqp_get_package_through_who $P1293, $P1294, "QAST"
    get_who $P1292, $P1293
    set $P1291, $P1292["Operations"]
    unless_null $P1291, fallback962
    nqp_get_sc_object $P1295, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1291, $P1295
  fallback962:
    $P1296 = $P1291."add_core_pirop_mapping"("chars", "length", "Is", 1 :named("inlinable"))
.annotate 'line', 1667
    get_hll_global $P1300, "GLOBAL"
    nqp_get_package_through_who $P1299, $P1300, "QAST"
    get_who $P1298, $P1299
    set $P1297, $P1298["Operations"]
    unless_null $P1297, fallback963
    nqp_get_sc_object $P1301, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1297, $P1301
  fallback963:
    $P1302 = $P1297."add_core_pirop_mapping"("concat", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1668
    get_hll_global $P1306, "GLOBAL"
    nqp_get_package_through_who $P1305, $P1306, "QAST"
    get_who $P1304, $P1305
    set $P1303, $P1304["Operations"]
    unless_null $P1303, fallback964
    nqp_get_sc_object $P1307, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1303, $P1307
  fallback964:
    $P1308 = $P1303."add_core_pirop_mapping"("concat_s", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1669
    get_hll_global $P1312, "GLOBAL"
    nqp_get_package_through_who $P1311, $P1312, "QAST"
    get_who $P1310, $P1311
    set $P1309, $P1310["Operations"]
    unless_null $P1309, fallback965
    nqp_get_sc_object $P1313, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1309, $P1313
  fallback965:
    $P1314 = $P1309."add_core_pirop_mapping"("join", "join", "SsP", 1 :named("inlinable"))
.annotate 'line', 1670
    get_hll_global $P1318, "GLOBAL"
    nqp_get_package_through_who $P1317, $P1318, "QAST"
    get_who $P1316, $P1317
    set $P1315, $P1316["Operations"]
    unless_null $P1315, fallback966
    nqp_get_sc_object $P1319, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1315, $P1319
  fallback966:
    $P1320 = $P1315."add_core_pirop_mapping"("split", "split", "Pss", 1 :named("inlinable"))
.annotate 'line', 1671
    get_hll_global $P1324, "GLOBAL"
    nqp_get_package_through_who $P1323, $P1324, "QAST"
    get_who $P1322, $P1323
    set $P1321, $P1322["Operations"]
    unless_null $P1321, fallback967
    nqp_get_sc_object $P1325, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1321, $P1325
  fallback967:
    $P1326 = $P1321."add_core_pirop_mapping"("chr", "chr", "Si", 1 :named("inlinable"))
.annotate 'line', 1672
    get_hll_global $P1330, "GLOBAL"
    nqp_get_package_through_who $P1329, $P1330, "QAST"
    get_who $P1328, $P1329
    set $P1327, $P1328["Operations"]
    unless_null $P1327, fallback968
    nqp_get_sc_object $P1331, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1327, $P1331
  fallback968:
    $P1332 = $P1327."add_core_pirop_mapping"("lc", "downcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1673
    get_hll_global $P1336, "GLOBAL"
    nqp_get_package_through_who $P1335, $P1336, "QAST"
    get_who $P1334, $P1335
    set $P1333, $P1334["Operations"]
    unless_null $P1333, fallback969
    nqp_get_sc_object $P1337, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1333, $P1337
  fallback969:
    $P1338 = $P1333."add_core_pirop_mapping"("uc", "upcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1674
    get_hll_global $P1342, "GLOBAL"
    nqp_get_package_through_who $P1341, $P1342, "QAST"
    get_who $P1340, $P1341
    set $P1339, $P1340["Operations"]
    unless_null $P1339, fallback970
    nqp_get_sc_object $P1343, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1339, $P1343
  fallback970:
    $P1344 = $P1339."add_core_pirop_mapping"("x", "repeat", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1675
    get_hll_global $P1348, "GLOBAL"
    nqp_get_package_through_who $P1347, $P1348, "QAST"
    get_who $P1346, $P1347
    set $P1345, $P1346["Operations"]
    unless_null $P1345, fallback971
    nqp_get_sc_object $P1349, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1345, $P1349
  fallback971:
    $P1350 = $P1345."add_core_pirop_mapping"("iscclass", "is_cclass", "Iisi", 1 :named("inlinable"))
.annotate 'line', 1676
    get_hll_global $P1354, "GLOBAL"
    nqp_get_package_through_who $P1353, $P1354, "QAST"
    get_who $P1352, $P1353
    set $P1351, $P1352["Operations"]
    unless_null $P1351, fallback972
    nqp_get_sc_object $P1355, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1351, $P1355
  fallback972:
    $P1356 = $P1351."add_core_pirop_mapping"("findnotcclass", "find_not_cclass", "Iisii", 1 :named("inlinable"))
.annotate 'line', 1677
    get_hll_global $P1360, "GLOBAL"
    nqp_get_package_through_who $P1359, $P1360, "QAST"
    get_who $P1358, $P1359
    set $P1357, $P1358["Operations"]
    unless_null $P1357, fallback973
    nqp_get_sc_object $P1361, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1357, $P1361
  fallback973:
    $P1362 = $P1357."add_core_pirop_mapping"("sprintf", "sprintf", "SsP", 1 :named("inlinable"))
.annotate 'line', 1680
    get_hll_global $P1366, "GLOBAL"
    nqp_get_package_through_who $P1365, $P1366, "QAST"
    get_who $P1364, $P1365
    set $P1363, $P1364["Operations"]
    unless_null $P1363, fallback974
    nqp_get_sc_object $P1367, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1363, $P1367
  fallback974:
    $P1368 = $P1363."add_core_pirop_mapping"("substr2", "substr", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1681
    get_hll_global $P1372, "GLOBAL"
    nqp_get_package_through_who $P1371, $P1372, "QAST"
    get_who $P1370, $P1371
    set $P1369, $P1370["Operations"]
    unless_null $P1369, fallback975
    nqp_get_sc_object $P1373, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1369, $P1373
  fallback975:
    $P1374 = $P1369."add_core_pirop_mapping"("substr3", "substr", "Ssii", 1 :named("inlinable"))
.annotate 'line', 1682
    get_hll_global $P1378, "GLOBAL"
    nqp_get_package_through_who $P1377, $P1378, "QAST"
    get_who $P1376, $P1377
    set $P1375, $P1376["Operations"]
    unless_null $P1375, fallback976
    nqp_get_sc_object $P1379, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1375, $P1379
  fallback976:
    .const 'Sub' $P1381 = 'cuid_245_1346233447.816' 
    capture_lex $P1381
    newclosure $P1380, $P1381
    $P1382 = $P1375."add_core_op"("substr", $P1380, 1 :named("inlinable"))
.annotate 'line', 1690
    get_hll_global $P1386, "GLOBAL"
    nqp_get_package_through_who $P1385, $P1386, "QAST"
    get_who $P1384, $P1385
    set $P1383, $P1384["Operations"]
    unless_null $P1383, fallback981
    nqp_get_sc_object $P1387, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1383, $P1387
  fallback981:
    $P1388 = $P1383."add_core_pirop_mapping"("ordfirst", "ord", "Is", 1 :named("inlinable"))
.annotate 'line', 1691
    get_hll_global $P1392, "GLOBAL"
    nqp_get_package_through_who $P1391, $P1392, "QAST"
    get_who $P1390, $P1391
    set $P1389, $P1390["Operations"]
    unless_null $P1389, fallback982
    nqp_get_sc_object $P1393, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1389, $P1393
  fallback982:
    $P1394 = $P1389."add_core_pirop_mapping"("ordat", "ord", "Isi", 1 :named("inlinable"))
.annotate 'line', 1692
    get_hll_global $P1398, "GLOBAL"
    nqp_get_package_through_who $P1397, $P1398, "QAST"
    get_who $P1396, $P1397
    set $P1395, $P1396["Operations"]
    unless_null $P1395, fallback983
    nqp_get_sc_object $P1399, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1395, $P1399
  fallback983:
    .const 'Sub' $P1401 = 'cuid_246_1346233447.816' 
    capture_lex $P1401
    newclosure $P1400, $P1401
    $P1402 = $P1395."add_core_op"("ord", $P1400, 1 :named("inlinable"))
.annotate 'line', 1700
    get_hll_global $P1406, "GLOBAL"
    nqp_get_package_through_who $P1405, $P1406, "QAST"
    get_who $P1404, $P1405
    set $P1403, $P1404["Operations"]
    unless_null $P1403, fallback988
    nqp_get_sc_object $P1407, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1403, $P1407
  fallback988:
    $P1408 = $P1403."add_core_pirop_mapping"("indexfrom", "index", "Issi", 1 :named("inlinable"))
.annotate 'line', 1701
    get_hll_global $P1412, "GLOBAL"
    nqp_get_package_through_who $P1411, $P1412, "QAST"
    get_who $P1410, $P1411
    set $P1409, $P1410["Operations"]
    unless_null $P1409, fallback989
    nqp_get_sc_object $P1413, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1409, $P1413
  fallback989:
    .const 'Sub' $P1415 = 'cuid_247_1346233447.816' 
    capture_lex $P1415
    newclosure $P1414, $P1415
    $P1416 = $P1409."add_core_op"("index", $P1414, 1 :named("inlinable"))
.annotate 'line', 1707
    get_hll_global $P1420, "GLOBAL"
    nqp_get_package_through_who $P1419, $P1420, "QAST"
    get_who $P1418, $P1419
    set $P1417, $P1418["Operations"]
    unless_null $P1417, fallback995
    nqp_get_sc_object $P1421, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1417, $P1421
  fallback995:
    $P1422 = $P1417."add_core_pirop_mapping"("rindexfrom", "rindex", "Issi", 1 :named("inlinable"))
.annotate 'line', 1708
    get_hll_global $P1426, "GLOBAL"
    nqp_get_package_through_who $P1425, $P1426, "QAST"
    get_who $P1424, $P1425
    set $P1423, $P1424["Operations"]
    unless_null $P1423, fallback996
    nqp_get_sc_object $P1427, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1423, $P1427
  fallback996:
    $P1428 = $P1423."add_core_pirop_mapping"("rindexfromend", "rindex", "Iss", 1 :named("inlinable"))
.annotate 'line', 1709
    get_hll_global $P1432, "GLOBAL"
    nqp_get_package_through_who $P1431, $P1432, "QAST"
    get_who $P1430, $P1431
    set $P1429, $P1430["Operations"]
    unless_null $P1429, fallback997
    nqp_get_sc_object $P1433, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1429, $P1433
  fallback997:
    .const 'Sub' $P1435 = 'cuid_248_1346233447.816' 
    capture_lex $P1435
    newclosure $P1434, $P1435
    $P1436 = $P1429."add_core_op"("rindex", $P1434, 1 :named("inlinable"))
.annotate 'line', 1717
    get_hll_global $P1440, "GLOBAL"
    nqp_get_package_through_who $P1439, $P1440, "QAST"
    get_who $P1438, $P1439
    set $P1437, $P1438["Operations"]
    unless_null $P1437, fallback1002
    nqp_get_sc_object $P1441, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1437, $P1441
  fallback1002:
    $P1442 = $P1437."add_core_pirop_mapping"("cmp_i", "cmp", "Iii", 1 :named("inlinable"))
.annotate 'line', 1718
    get_hll_global $P1446, "GLOBAL"
    nqp_get_package_through_who $P1445, $P1446, "QAST"
    get_who $P1444, $P1445
    set $P1443, $P1444["Operations"]
    unless_null $P1443, fallback1003
    nqp_get_sc_object $P1447, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1443, $P1447
  fallback1003:
    $P1448 = $P1443."add_core_pirop_mapping"("iseq_i", "iseq", "Iii", 1 :named("inlinable"))
.annotate 'line', 1719
    get_hll_global $P1452, "GLOBAL"
    nqp_get_package_through_who $P1451, $P1452, "QAST"
    get_who $P1450, $P1451
    set $P1449, $P1450["Operations"]
    unless_null $P1449, fallback1004
    nqp_get_sc_object $P1453, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1449, $P1453
  fallback1004:
    $P1454 = $P1449."add_core_pirop_mapping"("isne_i", "isne", "Iii", 1 :named("inlinable"))
.annotate 'line', 1720
    get_hll_global $P1458, "GLOBAL"
    nqp_get_package_through_who $P1457, $P1458, "QAST"
    get_who $P1456, $P1457
    set $P1455, $P1456["Operations"]
    unless_null $P1455, fallback1005
    nqp_get_sc_object $P1459, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1455, $P1459
  fallback1005:
    $P1460 = $P1455."add_core_pirop_mapping"("islt_i", "islt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1721
    get_hll_global $P1464, "GLOBAL"
    nqp_get_package_through_who $P1463, $P1464, "QAST"
    get_who $P1462, $P1463
    set $P1461, $P1462["Operations"]
    unless_null $P1461, fallback1006
    nqp_get_sc_object $P1465, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1461, $P1465
  fallback1006:
    $P1466 = $P1461."add_core_pirop_mapping"("isle_i", "isle", "Iii", 1 :named("inlinable"))
.annotate 'line', 1722
    get_hll_global $P1470, "GLOBAL"
    nqp_get_package_through_who $P1469, $P1470, "QAST"
    get_who $P1468, $P1469
    set $P1467, $P1468["Operations"]
    unless_null $P1467, fallback1007
    nqp_get_sc_object $P1471, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1467, $P1471
  fallback1007:
    $P1472 = $P1467."add_core_pirop_mapping"("isgt_i", "isgt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1723
    get_hll_global $P1476, "GLOBAL"
    nqp_get_package_through_who $P1475, $P1476, "QAST"
    get_who $P1474, $P1475
    set $P1473, $P1474["Operations"]
    unless_null $P1473, fallback1008
    nqp_get_sc_object $P1477, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1473, $P1477
  fallback1008:
    $P1478 = $P1473."add_core_pirop_mapping"("isge_i", "isge", "Iii", 1 :named("inlinable"))
.annotate 'line', 1725
    get_hll_global $P1482, "GLOBAL"
    nqp_get_package_through_who $P1481, $P1482, "QAST"
    get_who $P1480, $P1481
    set $P1479, $P1480["Operations"]
    unless_null $P1479, fallback1009
    nqp_get_sc_object $P1483, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1479, $P1483
  fallback1009:
    $P1484 = $P1479."add_core_pirop_mapping"("bool_I", "nqp_bigint_bool", "IP", 1 :named("inlinable"))
.annotate 'line', 1726
    get_hll_global $P1488, "GLOBAL"
    nqp_get_package_through_who $P1487, $P1488, "QAST"
    get_who $P1486, $P1487
    set $P1485, $P1486["Operations"]
    unless_null $P1485, fallback1010
    nqp_get_sc_object $P1489, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1485, $P1489
  fallback1010:
    $P1490 = $P1485."add_core_pirop_mapping"("cmp_I", "nqp_bigint_cmp", "IPP", 1 :named("inlinable"))
.annotate 'line', 1727
    get_hll_global $P1494, "GLOBAL"
    nqp_get_package_through_who $P1493, $P1494, "QAST"
    get_who $P1492, $P1493
    set $P1491, $P1492["Operations"]
    unless_null $P1491, fallback1011
    nqp_get_sc_object $P1495, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1491, $P1495
  fallback1011:
    $P1496 = $P1491."add_core_pirop_mapping"("iseq_I", "nqp_bigint_eq", "IPP", 1 :named("inlinable"))
.annotate 'line', 1728
    get_hll_global $P1500, "GLOBAL"
    nqp_get_package_through_who $P1499, $P1500, "QAST"
    get_who $P1498, $P1499
    set $P1497, $P1498["Operations"]
    unless_null $P1497, fallback1012
    nqp_get_sc_object $P1501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1497, $P1501
  fallback1012:
    $P1502 = $P1497."add_core_pirop_mapping"("isne_I", "nqp_bigint_ne", "IPP", 1 :named("inlinable"))
.annotate 'line', 1729
    get_hll_global $P1506, "GLOBAL"
    nqp_get_package_through_who $P1505, $P1506, "QAST"
    get_who $P1504, $P1505
    set $P1503, $P1504["Operations"]
    unless_null $P1503, fallback1013
    nqp_get_sc_object $P1507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1503, $P1507
  fallback1013:
    $P1508 = $P1503."add_core_pirop_mapping"("islt_I", "nqp_bigint_lt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1730
    get_hll_global $P1512, "GLOBAL"
    nqp_get_package_through_who $P1511, $P1512, "QAST"
    get_who $P1510, $P1511
    set $P1509, $P1510["Operations"]
    unless_null $P1509, fallback1014
    nqp_get_sc_object $P1513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1509, $P1513
  fallback1014:
    $P1514 = $P1509."add_core_pirop_mapping"("isle_I", "nqp_bigint_le", "IPP", 1 :named("inlinable"))
.annotate 'line', 1731
    get_hll_global $P1518, "GLOBAL"
    nqp_get_package_through_who $P1517, $P1518, "QAST"
    get_who $P1516, $P1517
    set $P1515, $P1516["Operations"]
    unless_null $P1515, fallback1015
    nqp_get_sc_object $P1519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1515, $P1519
  fallback1015:
    $P1520 = $P1515."add_core_pirop_mapping"("isgt_I", "nqp_bigint_gt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1732
    get_hll_global $P1524, "GLOBAL"
    nqp_get_package_through_who $P1523, $P1524, "QAST"
    get_who $P1522, $P1523
    set $P1521, $P1522["Operations"]
    unless_null $P1521, fallback1016
    nqp_get_sc_object $P1525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1521, $P1525
  fallback1016:
    $P1526 = $P1521."add_core_pirop_mapping"("isge_I", "nqp_bigint_ge", "IPP", 1 :named("inlinable"))
.annotate 'line', 1734
    get_hll_global $P1530, "GLOBAL"
    nqp_get_package_through_who $P1529, $P1530, "QAST"
    get_who $P1528, $P1529
    set $P1527, $P1528["Operations"]
    unless_null $P1527, fallback1017
    nqp_get_sc_object $P1531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1527, $P1531
  fallback1017:
    $P1532 = $P1527."add_core_pirop_mapping"("cmp_n", "cmp", "Inn", 1 :named("inlinable"))
.annotate 'line', 1735
    get_hll_global $P1536, "GLOBAL"
    nqp_get_package_through_who $P1535, $P1536, "QAST"
    get_who $P1534, $P1535
    set $P1533, $P1534["Operations"]
    unless_null $P1533, fallback1018
    nqp_get_sc_object $P1537, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1533, $P1537
  fallback1018:
    $P1538 = $P1533."add_core_pirop_mapping"("iseq_n", "iseq", "Inn", 1 :named("inlinable"))
.annotate 'line', 1736
    get_hll_global $P1542, "GLOBAL"
    nqp_get_package_through_who $P1541, $P1542, "QAST"
    get_who $P1540, $P1541
    set $P1539, $P1540["Operations"]
    unless_null $P1539, fallback1019
    nqp_get_sc_object $P1543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1539, $P1543
  fallback1019:
    $P1544 = $P1539."add_core_pirop_mapping"("isne_n", "isne", "Inn", 1 :named("inlinable"))
.annotate 'line', 1737
    get_hll_global $P1548, "GLOBAL"
    nqp_get_package_through_who $P1547, $P1548, "QAST"
    get_who $P1546, $P1547
    set $P1545, $P1546["Operations"]
    unless_null $P1545, fallback1020
    nqp_get_sc_object $P1549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1545, $P1549
  fallback1020:
    $P1550 = $P1545."add_core_pirop_mapping"("islt_n", "islt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1738
    get_hll_global $P1554, "GLOBAL"
    nqp_get_package_through_who $P1553, $P1554, "QAST"
    get_who $P1552, $P1553
    set $P1551, $P1552["Operations"]
    unless_null $P1551, fallback1021
    nqp_get_sc_object $P1555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1551, $P1555
  fallback1021:
    $P1556 = $P1551."add_core_pirop_mapping"("isle_n", "isle", "Inn", 1 :named("inlinable"))
.annotate 'line', 1739
    get_hll_global $P1560, "GLOBAL"
    nqp_get_package_through_who $P1559, $P1560, "QAST"
    get_who $P1558, $P1559
    set $P1557, $P1558["Operations"]
    unless_null $P1557, fallback1022
    nqp_get_sc_object $P1561, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1557, $P1561
  fallback1022:
    $P1562 = $P1557."add_core_pirop_mapping"("isgt_n", "isgt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1740
    get_hll_global $P1566, "GLOBAL"
    nqp_get_package_through_who $P1565, $P1566, "QAST"
    get_who $P1564, $P1565
    set $P1563, $P1564["Operations"]
    unless_null $P1563, fallback1023
    nqp_get_sc_object $P1567, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1563, $P1567
  fallback1023:
    $P1568 = $P1563."add_core_pirop_mapping"("isge_n", "isge", "Inn", 1 :named("inlinable"))
.annotate 'line', 1742
    get_hll_global $P1572, "GLOBAL"
    nqp_get_package_through_who $P1571, $P1572, "QAST"
    get_who $P1570, $P1571
    set $P1569, $P1570["Operations"]
    unless_null $P1569, fallback1024
    nqp_get_sc_object $P1573, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1569, $P1573
  fallback1024:
    $P1574 = $P1569."add_core_pirop_mapping"("cmp_s", "cmp", "Iss", 1 :named("inlinable"))
.annotate 'line', 1743
    get_hll_global $P1578, "GLOBAL"
    nqp_get_package_through_who $P1577, $P1578, "QAST"
    get_who $P1576, $P1577
    set $P1575, $P1576["Operations"]
    unless_null $P1575, fallback1025
    nqp_get_sc_object $P1579, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1575, $P1579
  fallback1025:
    $P1580 = $P1575."add_core_pirop_mapping"("iseq_s", "iseq", "Iss", 1 :named("inlinable"))
.annotate 'line', 1744
    get_hll_global $P1584, "GLOBAL"
    nqp_get_package_through_who $P1583, $P1584, "QAST"
    get_who $P1582, $P1583
    set $P1581, $P1582["Operations"]
    unless_null $P1581, fallback1026
    nqp_get_sc_object $P1585, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1581, $P1585
  fallback1026:
    $P1586 = $P1581."add_core_pirop_mapping"("isne_s", "isne", "Iss", 1 :named("inlinable"))
.annotate 'line', 1745
    get_hll_global $P1590, "GLOBAL"
    nqp_get_package_through_who $P1589, $P1590, "QAST"
    get_who $P1588, $P1589
    set $P1587, $P1588["Operations"]
    unless_null $P1587, fallback1027
    nqp_get_sc_object $P1591, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1587, $P1591
  fallback1027:
    $P1592 = $P1587."add_core_pirop_mapping"("islt_s", "islt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1746
    get_hll_global $P1596, "GLOBAL"
    nqp_get_package_through_who $P1595, $P1596, "QAST"
    get_who $P1594, $P1595
    set $P1593, $P1594["Operations"]
    unless_null $P1593, fallback1028
    nqp_get_sc_object $P1597, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1593, $P1597
  fallback1028:
    $P1598 = $P1593."add_core_pirop_mapping"("isle_s", "isle", "Iss", 1 :named("inlinable"))
.annotate 'line', 1747
    get_hll_global $P1602, "GLOBAL"
    nqp_get_package_through_who $P1601, $P1602, "QAST"
    get_who $P1600, $P1601
    set $P1599, $P1600["Operations"]
    unless_null $P1599, fallback1029
    nqp_get_sc_object $P1603, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1599, $P1603
  fallback1029:
    $P1604 = $P1599."add_core_pirop_mapping"("isgt_s", "isgt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1748
    get_hll_global $P1608, "GLOBAL"
    nqp_get_package_through_who $P1607, $P1608, "QAST"
    get_who $P1606, $P1607
    set $P1605, $P1606["Operations"]
    unless_null $P1605, fallback1030
    nqp_get_sc_object $P1609, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1605, $P1609
  fallback1030:
    $P1610 = $P1605."add_core_pirop_mapping"("isge_s", "isge", "Iss", 1 :named("inlinable"))
.annotate 'line', 1751
    get_hll_global $P1614, "GLOBAL"
    nqp_get_package_through_who $P1613, $P1614, "QAST"
    get_who $P1612, $P1613
    set $P1611, $P1612["Operations"]
    unless_null $P1611, fallback1031
    nqp_get_sc_object $P1615, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1611, $P1615
  fallback1031:
    $P1616 = $P1611."add_core_pirop_mapping"("fromstr_I", "nqp_bigint_from_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1752
    get_hll_global $P1620, "GLOBAL"
    nqp_get_package_through_who $P1619, $P1620, "QAST"
    get_who $P1618, $P1619
    set $P1617, $P1618["Operations"]
    unless_null $P1617, fallback1032
    nqp_get_sc_object $P1621, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1617, $P1621
  fallback1032:
    $P1622 = $P1617."add_core_pirop_mapping"("tostr_I", "nqp_bigint_to_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1753
    get_hll_global $P1626, "GLOBAL"
    nqp_get_package_through_who $P1625, $P1626, "QAST"
    get_who $P1624, $P1625
    set $P1623, $P1624["Operations"]
    unless_null $P1623, fallback1033
    nqp_get_sc_object $P1627, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1623, $P1627
  fallback1033:
    $P1628 = $P1623."add_core_pirop_mapping"("base_I", "nqp_bigint_to_str_base", "SPI", 1 :named("inlinable"))
.annotate 'line', 1754
    get_hll_global $P1632, "GLOBAL"
    nqp_get_package_through_who $P1631, $P1632, "QAST"
    get_who $P1630, $P1631
    set $P1629, $P1630["Operations"]
    unless_null $P1629, fallback1034
    nqp_get_sc_object $P1633, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1629, $P1633
  fallback1034:
    $P1634 = $P1629."add_core_pirop_mapping"("isbig_I", "nqp_bigint_is_big", "IP", 1 :named("inlinable"))
.annotate 'line', 1755
    get_hll_global $P1638, "GLOBAL"
    nqp_get_package_through_who $P1637, $P1638, "QAST"
    get_who $P1636, $P1637
    set $P1635, $P1636["Operations"]
    unless_null $P1635, fallback1035
    nqp_get_sc_object $P1639, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1635, $P1639
  fallback1035:
    $P1640 = $P1635."add_core_pirop_mapping"("fromnum_I", "nqp_bigint_from_num", "PNP", 1 :named("inlinable"))
.annotate 'line', 1756
    get_hll_global $P1644, "GLOBAL"
    nqp_get_package_through_who $P1643, $P1644, "QAST"
    get_who $P1642, $P1643
    set $P1641, $P1642["Operations"]
    unless_null $P1641, fallback1036
    nqp_get_sc_object $P1645, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1641, $P1645
  fallback1036:
    $P1646 = $P1641."add_core_pirop_mapping"("tonum_I", "nqp_bigint_to_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1759
    get_hll_global $P1650, "GLOBAL"
    nqp_get_package_through_who $P1649, $P1650, "QAST"
    get_who $P1648, $P1649
    set $P1647, $P1648["Operations"]
    unless_null $P1647, fallback1037
    nqp_get_sc_object $P1651, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1647, $P1651
  fallback1037:
    $P1652 = $P1647."add_core_pirop_mapping"("buildnativecall", "nqp_native_call_build", "vPsssPP")
.annotate 'line', 1760
    get_hll_global $P1656, "GLOBAL"
    nqp_get_package_through_who $P1655, $P1656, "QAST"
    get_who $P1654, $P1655
    set $P1653, $P1654["Operations"]
    unless_null $P1653, fallback1038
    nqp_get_sc_object $P1657, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1653, $P1657
  fallback1038:
    $P1658 = $P1653."add_core_pirop_mapping"("nativecall", "nqp_native_call", "PPPP")
.annotate 'line', 1761
    get_hll_global $P1662, "GLOBAL"
    nqp_get_package_through_who $P1661, $P1662, "QAST"
    get_who $P1660, $P1661
    set $P1659, $P1660["Operations"]
    unless_null $P1659, fallback1039
    nqp_get_sc_object $P1663, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1659, $P1663
  fallback1039:
    $P1664 = $P1659."add_core_pirop_mapping"("nativecallrefresh", "nqp_native_call_wb", "vP")
.annotate 'line', 1764
    get_hll_global $P1668, "GLOBAL"
    nqp_get_package_through_who $P1667, $P1668, "QAST"
    get_who $P1666, $P1667
    set $P1665, $P1666["Operations"]
    unless_null $P1665, fallback1040
    nqp_get_sc_object $P1669, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1665, $P1669
  fallback1040:
    $P1670 = $P1665."add_core_pirop_mapping"("not_i", "not", "Ii", 1 :named("inlinable"))
.annotate 'line', 1767
    get_hll_global $P1674, "GLOBAL"
    nqp_get_package_through_who $P1673, $P1674, "QAST"
    get_who $P1672, $P1673
    set $P1671, $P1672["Operations"]
    unless_null $P1671, fallback1041
    nqp_get_sc_object $P1675, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1671, $P1675
  fallback1041:
    $P1676 = $P1671."add_core_pirop_mapping"("atkey", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1768
    get_hll_global $P1680, "GLOBAL"
    nqp_get_package_through_who $P1679, $P1680, "QAST"
    get_who $P1678, $P1679
    set $P1677, $P1678["Operations"]
    unless_null $P1677, fallback1042
    nqp_get_sc_object $P1681, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1677, $P1681
  fallback1042:
    $P1682 = $P1677."add_core_pirop_mapping"("atkey_i", "set", "IQs", 1 :named("inlinable"))
.annotate 'line', 1769
    get_hll_global $P1686, "GLOBAL"
    nqp_get_package_through_who $P1685, $P1686, "QAST"
    get_who $P1684, $P1685
    set $P1683, $P1684["Operations"]
    unless_null $P1683, fallback1043
    nqp_get_sc_object $P1687, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1683, $P1687
  fallback1043:
    $P1688 = $P1683."add_core_pirop_mapping"("atkey_n", "set", "NQs", 1 :named("inlinable"))
.annotate 'line', 1770
    get_hll_global $P1692, "GLOBAL"
    nqp_get_package_through_who $P1691, $P1692, "QAST"
    get_who $P1690, $P1691
    set $P1689, $P1690["Operations"]
    unless_null $P1689, fallback1044
    nqp_get_sc_object $P1693, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1689, $P1693
  fallback1044:
    $P1694 = $P1689."add_core_pirop_mapping"("atkey_s", "set", "SQs", 1 :named("inlinable"))
.annotate 'line', 1771
    get_hll_global $P1698, "GLOBAL"
    nqp_get_package_through_who $P1697, $P1698, "QAST"
    get_who $P1696, $P1697
    set $P1695, $P1696["Operations"]
    unless_null $P1695, fallback1045
    nqp_get_sc_object $P1699, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1695, $P1699
  fallback1045:
    $P1700 = $P1695."add_core_pirop_mapping"("atpos", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1772
    get_hll_global $P1704, "GLOBAL"
    nqp_get_package_through_who $P1703, $P1704, "QAST"
    get_who $P1702, $P1703
    set $P1701, $P1702["Operations"]
    unless_null $P1701, fallback1046
    nqp_get_sc_object $P1705, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1701, $P1705
  fallback1046:
    $P1706 = $P1701."add_core_pirop_mapping"("atpos_i", "set", "IQi", 1 :named("inlinable"))
.annotate 'line', 1773
    get_hll_global $P1710, "GLOBAL"
    nqp_get_package_through_who $P1709, $P1710, "QAST"
    get_who $P1708, $P1709
    set $P1707, $P1708["Operations"]
    unless_null $P1707, fallback1047
    nqp_get_sc_object $P1711, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1707, $P1711
  fallback1047:
    $P1712 = $P1707."add_core_pirop_mapping"("atpos_n", "set", "NQi", 1 :named("inlinable"))
.annotate 'line', 1774
    get_hll_global $P1716, "GLOBAL"
    nqp_get_package_through_who $P1715, $P1716, "QAST"
    get_who $P1714, $P1715
    set $P1713, $P1714["Operations"]
    unless_null $P1713, fallback1048
    nqp_get_sc_object $P1717, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1713, $P1717
  fallback1048:
    $P1718 = $P1713."add_core_pirop_mapping"("atpos_s", "set", "SQi", 1 :named("inlinable"))
.annotate 'line', 1775
    get_hll_global $P1722, "GLOBAL"
    nqp_get_package_through_who $P1721, $P1722, "QAST"
    get_who $P1720, $P1721
    set $P1719, $P1720["Operations"]
    unless_null $P1719, fallback1049
    nqp_get_sc_object $P1723, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1719, $P1723
  fallback1049:
    $P1724 = $P1719."add_core_pirop_mapping"("bindkey", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1776
    get_hll_global $P1728, "GLOBAL"
    nqp_get_package_through_who $P1727, $P1728, "QAST"
    get_who $P1726, $P1727
    set $P1725, $P1726["Operations"]
    unless_null $P1725, fallback1050
    nqp_get_sc_object $P1729, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1725, $P1729
  fallback1050:
    $P1730 = $P1725."add_core_pirop_mapping"("bindkey_i", "set", "1QsI", 1 :named("inlinable"))
.annotate 'line', 1777
    get_hll_global $P1734, "GLOBAL"
    nqp_get_package_through_who $P1733, $P1734, "QAST"
    get_who $P1732, $P1733
    set $P1731, $P1732["Operations"]
    unless_null $P1731, fallback1051
    nqp_get_sc_object $P1735, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1731, $P1735
  fallback1051:
    $P1736 = $P1731."add_core_pirop_mapping"("bindkey_n", "set", "1QsN", 1 :named("inlinable"))
.annotate 'line', 1778
    get_hll_global $P1740, "GLOBAL"
    nqp_get_package_through_who $P1739, $P1740, "QAST"
    get_who $P1738, $P1739
    set $P1737, $P1738["Operations"]
    unless_null $P1737, fallback1052
    nqp_get_sc_object $P1741, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1737, $P1741
  fallback1052:
    $P1742 = $P1737."add_core_pirop_mapping"("bindkey_s", "set", "1QsS", 1 :named("inlinable"))
.annotate 'line', 1779
    get_hll_global $P1746, "GLOBAL"
    nqp_get_package_through_who $P1745, $P1746, "QAST"
    get_who $P1744, $P1745
    set $P1743, $P1744["Operations"]
    unless_null $P1743, fallback1053
    nqp_get_sc_object $P1747, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1743, $P1747
  fallback1053:
    $P1748 = $P1743."add_core_pirop_mapping"("bindpos", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1780
    get_hll_global $P1752, "GLOBAL"
    nqp_get_package_through_who $P1751, $P1752, "QAST"
    get_who $P1750, $P1751
    set $P1749, $P1750["Operations"]
    unless_null $P1749, fallback1054
    nqp_get_sc_object $P1753, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1749, $P1753
  fallback1054:
    $P1754 = $P1749."add_core_pirop_mapping"("bindpos_i", "set", "1Qii", 1 :named("inlinable"))
.annotate 'line', 1781
    get_hll_global $P1758, "GLOBAL"
    nqp_get_package_through_who $P1757, $P1758, "QAST"
    get_who $P1756, $P1757
    set $P1755, $P1756["Operations"]
    unless_null $P1755, fallback1055
    nqp_get_sc_object $P1759, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1755, $P1759
  fallback1055:
    $P1760 = $P1755."add_core_pirop_mapping"("bindpos_n", "set", "1Qin", 1 :named("inlinable"))
.annotate 'line', 1782
    get_hll_global $P1764, "GLOBAL"
    nqp_get_package_through_who $P1763, $P1764, "QAST"
    get_who $P1762, $P1763
    set $P1761, $P1762["Operations"]
    unless_null $P1761, fallback1056
    nqp_get_sc_object $P1765, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1761, $P1765
  fallback1056:
    $P1766 = $P1761."add_core_pirop_mapping"("bindpos_s", "set", "1Qis", 1 :named("inlinable"))
.annotate 'line', 1783
    get_hll_global $P1770, "GLOBAL"
    nqp_get_package_through_who $P1769, $P1770, "QAST"
    get_who $P1768, $P1769
    set $P1767, $P1768["Operations"]
    unless_null $P1767, fallback1057
    nqp_get_sc_object $P1771, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1767, $P1771
  fallback1057:
    $P1772 = $P1767."add_core_pirop_mapping"("deletekey", "delete", "0Qs", 1 :named("inlinable"))
.annotate 'line', 1784
    get_hll_global $P1776, "GLOBAL"
    nqp_get_package_through_who $P1775, $P1776, "QAST"
    get_who $P1774, $P1775
    set $P1773, $P1774["Operations"]
    unless_null $P1773, fallback1058
    nqp_get_sc_object $P1777, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1773, $P1777
  fallback1058:
    $P1778 = $P1773."add_core_pirop_mapping"("deletepos", "delete", "0Qi", 1 :named("inlinable"))
.annotate 'line', 1785
    get_hll_global $P1782, "GLOBAL"
    nqp_get_package_through_who $P1781, $P1782, "QAST"
    get_who $P1780, $P1781
    set $P1779, $P1780["Operations"]
    unless_null $P1779, fallback1059
    nqp_get_sc_object $P1783, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1779, $P1783
  fallback1059:
    $P1784 = $P1779."add_core_pirop_mapping"("existskey", "exists", "IQs", 1 :named("inlinable"))
.annotate 'line', 1786
    get_hll_global $P1788, "GLOBAL"
    nqp_get_package_through_who $P1787, $P1788, "QAST"
    get_who $P1786, $P1787
    set $P1785, $P1786["Operations"]
    unless_null $P1785, fallback1060
    nqp_get_sc_object $P1789, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1785, $P1789
  fallback1060:
    $P1790 = $P1785."add_core_pirop_mapping"("existspos", "exists", "IQi", 1 :named("inlinable"))
.annotate 'line', 1787
    get_hll_global $P1794, "GLOBAL"
    nqp_get_package_through_who $P1793, $P1794, "QAST"
    get_who $P1792, $P1793
    set $P1791, $P1792["Operations"]
    unless_null $P1791, fallback1061
    nqp_get_sc_object $P1795, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1791, $P1795
  fallback1061:
    $P1796 = $P1791."add_core_pirop_mapping"("elems", "elements", "IP", 1 :named("inlinable"))
.annotate 'line', 1788
    get_hll_global $P1800, "GLOBAL"
    nqp_get_package_through_who $P1799, $P1800, "QAST"
    get_who $P1798, $P1799
    set $P1797, $P1798["Operations"]
    unless_null $P1797, fallback1062
    nqp_get_sc_object $P1801, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1797, $P1801
  fallback1062:
    $P1802 = $P1797."add_core_pirop_mapping"("iterator", "iter", "PP", 1 :named("inlinable"))
.annotate 'line', 1789
    get_hll_global $P1806, "GLOBAL"
    nqp_get_package_through_who $P1805, $P1806, "QAST"
    get_who $P1804, $P1805
    set $P1803, $P1804["Operations"]
    unless_null $P1803, fallback1063
    nqp_get_sc_object $P1807, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1803, $P1807
  fallback1063:
    $P1808 = $P1803."add_core_pirop_mapping"("push", "push", "0PP", 1 :named("inlinable"))
.annotate 'line', 1790
    get_hll_global $P1812, "GLOBAL"
    nqp_get_package_through_who $P1811, $P1812, "QAST"
    get_who $P1810, $P1811
    set $P1809, $P1810["Operations"]
    unless_null $P1809, fallback1064
    nqp_get_sc_object $P1813, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1809, $P1813
  fallback1064:
    $P1814 = $P1809."add_core_pirop_mapping"("push_s", "push", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1791
    get_hll_global $P1818, "GLOBAL"
    nqp_get_package_through_who $P1817, $P1818, "QAST"
    get_who $P1816, $P1817
    set $P1815, $P1816["Operations"]
    unless_null $P1815, fallback1065
    nqp_get_sc_object $P1819, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1815, $P1819
  fallback1065:
    $P1820 = $P1815."add_core_pirop_mapping"("push_i", "push", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1792
    get_hll_global $P1824, "GLOBAL"
    nqp_get_package_through_who $P1823, $P1824, "QAST"
    get_who $P1822, $P1823
    set $P1821, $P1822["Operations"]
    unless_null $P1821, fallback1066
    nqp_get_sc_object $P1825, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1821, $P1825
  fallback1066:
    $P1826 = $P1821."add_core_pirop_mapping"("push_n", "push", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1793
    get_hll_global $P1830, "GLOBAL"
    nqp_get_package_through_who $P1829, $P1830, "QAST"
    get_who $P1828, $P1829
    set $P1827, $P1828["Operations"]
    unless_null $P1827, fallback1067
    nqp_get_sc_object $P1831, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1827, $P1831
  fallback1067:
    $P1832 = $P1827."add_core_pirop_mapping"("pop", "pop", "PP", 1 :named("inlinable"))
.annotate 'line', 1794
    get_hll_global $P1836, "GLOBAL"
    nqp_get_package_through_who $P1835, $P1836, "QAST"
    get_who $P1834, $P1835
    set $P1833, $P1834["Operations"]
    unless_null $P1833, fallback1068
    nqp_get_sc_object $P1837, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1833, $P1837
  fallback1068:
    $P1838 = $P1833."add_core_pirop_mapping"("pop_s", "pop", "SP", 1 :named("inlinable"))
.annotate 'line', 1795
    get_hll_global $P1842, "GLOBAL"
    nqp_get_package_through_who $P1841, $P1842, "QAST"
    get_who $P1840, $P1841
    set $P1839, $P1840["Operations"]
    unless_null $P1839, fallback1069
    nqp_get_sc_object $P1843, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1839, $P1843
  fallback1069:
    $P1844 = $P1839."add_core_pirop_mapping"("pop_i", "pop", "IP", 1 :named("inlinable"))
.annotate 'line', 1796
    get_hll_global $P1848, "GLOBAL"
    nqp_get_package_through_who $P1847, $P1848, "QAST"
    get_who $P1846, $P1847
    set $P1845, $P1846["Operations"]
    unless_null $P1845, fallback1070
    nqp_get_sc_object $P1849, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1845, $P1849
  fallback1070:
    $P1850 = $P1845."add_core_pirop_mapping"("pop_n", "pop", "NP", 1 :named("inlinable"))
.annotate 'line', 1797
    get_hll_global $P1854, "GLOBAL"
    nqp_get_package_through_who $P1853, $P1854, "QAST"
    get_who $P1852, $P1853
    set $P1851, $P1852["Operations"]
    unless_null $P1851, fallback1071
    nqp_get_sc_object $P1855, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1851, $P1855
  fallback1071:
    $P1856 = $P1851."add_core_pirop_mapping"("shift", "shift", "PP", 1 :named("inlinable"))
.annotate 'line', 1798
    get_hll_global $P1860, "GLOBAL"
    nqp_get_package_through_who $P1859, $P1860, "QAST"
    get_who $P1858, $P1859
    set $P1857, $P1858["Operations"]
    unless_null $P1857, fallback1072
    nqp_get_sc_object $P1861, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1857, $P1861
  fallback1072:
    $P1862 = $P1857."add_core_pirop_mapping"("shift_s", "shift", "SP", 1 :named("inlinable"))
.annotate 'line', 1799
    get_hll_global $P1866, "GLOBAL"
    nqp_get_package_through_who $P1865, $P1866, "QAST"
    get_who $P1864, $P1865
    set $P1863, $P1864["Operations"]
    unless_null $P1863, fallback1073
    nqp_get_sc_object $P1867, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1863, $P1867
  fallback1073:
    $P1868 = $P1863."add_core_pirop_mapping"("shift_i", "shift", "IP", 1 :named("inlinable"))
.annotate 'line', 1800
    get_hll_global $P1872, "GLOBAL"
    nqp_get_package_through_who $P1871, $P1872, "QAST"
    get_who $P1870, $P1871
    set $P1869, $P1870["Operations"]
    unless_null $P1869, fallback1074
    nqp_get_sc_object $P1873, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1869, $P1873
  fallback1074:
    $P1874 = $P1869."add_core_pirop_mapping"("shift_n", "shift", "NP", 1 :named("inlinable"))
.annotate 'line', 1801
    get_hll_global $P1878, "GLOBAL"
    nqp_get_package_through_who $P1877, $P1878, "QAST"
    get_who $P1876, $P1877
    set $P1875, $P1876["Operations"]
    unless_null $P1875, fallback1075
    nqp_get_sc_object $P1879, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1875, $P1879
  fallback1075:
    $P1880 = $P1875."add_core_pirop_mapping"("unshift", "unshift", "0PP", 1 :named("inlinable"))
.annotate 'line', 1802
    get_hll_global $P1884, "GLOBAL"
    nqp_get_package_through_who $P1883, $P1884, "QAST"
    get_who $P1882, $P1883
    set $P1881, $P1882["Operations"]
    unless_null $P1881, fallback1076
    nqp_get_sc_object $P1885, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1881, $P1885
  fallback1076:
    $P1886 = $P1881."add_core_pirop_mapping"("unshift_s", "unshift", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1803
    get_hll_global $P1890, "GLOBAL"
    nqp_get_package_through_who $P1889, $P1890, "QAST"
    get_who $P1888, $P1889
    set $P1887, $P1888["Operations"]
    unless_null $P1887, fallback1077
    nqp_get_sc_object $P1891, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1887, $P1891
  fallback1077:
    $P1892 = $P1887."add_core_pirop_mapping"("unshift_i", "unshift", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1804
    get_hll_global $P1896, "GLOBAL"
    nqp_get_package_through_who $P1895, $P1896, "QAST"
    get_who $P1894, $P1895
    set $P1893, $P1894["Operations"]
    unless_null $P1893, fallback1078
    nqp_get_sc_object $P1897, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1893, $P1897
  fallback1078:
    $P1898 = $P1893."add_core_pirop_mapping"("unshift_n", "unshift", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1805
    get_hll_global $P1902, "GLOBAL"
    nqp_get_package_through_who $P1901, $P1902, "QAST"
    get_who $P1900, $P1901
    set $P1899, $P1900["Operations"]
    unless_null $P1899, fallback1079
    nqp_get_sc_object $P1903, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1899, $P1903
  fallback1079:
    $P1904 = $P1899."add_core_pirop_mapping"("splice", "splice", "0PPii", 1 :named("inlinable"))
.annotate 'line', 1806
    get_hll_global $P1908, "GLOBAL"
    nqp_get_package_through_who $P1907, $P1908, "QAST"
    get_who $P1906, $P1907
    set $P1905, $P1906["Operations"]
    unless_null $P1905, fallback1080
    nqp_get_sc_object $P1909, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1905, $P1909
  fallback1080:
    $P1910 = $P1905."add_core_pirop_mapping"("islist", "nqp_islist", "IP", 1 :named("inlinable"))
.annotate 'line', 1807
    get_hll_global $P1914, "GLOBAL"
    nqp_get_package_through_who $P1913, $P1914, "QAST"
    get_who $P1912, $P1913
    set $P1911, $P1912["Operations"]
    unless_null $P1911, fallback1081
    nqp_get_sc_object $P1915, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1911, $P1915
  fallback1081:
    $P1916 = $P1911."add_core_pirop_mapping"("ishash", "nqp_ishash", "IP", 1 :named("inlinable"))
.annotate 'line', 1810
    get_hll_global $P1920, "GLOBAL"
    nqp_get_package_through_who $P1919, $P1920, "QAST"
    get_who $P1918, $P1919
    set $P1917, $P1918["Operations"]
    unless_null $P1917, fallback1082
    nqp_get_sc_object $P1921, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1917, $P1921
  fallback1082:
    $P1922 = $P1917."add_core_pirop_mapping"("r_atpos", "repr_at_pos_obj", "PPi", 1 :named("inlinable"))
.annotate 'line', 1811
    get_hll_global $P1926, "GLOBAL"
    nqp_get_package_through_who $P1925, $P1926, "QAST"
    get_who $P1924, $P1925
    set $P1923, $P1924["Operations"]
    unless_null $P1923, fallback1083
    nqp_get_sc_object $P1927, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1923, $P1927
  fallback1083:
    $P1928 = $P1923."add_core_pirop_mapping"("r_atpos_i", "repr_at_pos_int", "IPi", 1 :named("inlinable"))
.annotate 'line', 1812
    get_hll_global $P1932, "GLOBAL"
    nqp_get_package_through_who $P1931, $P1932, "QAST"
    get_who $P1930, $P1931
    set $P1929, $P1930["Operations"]
    unless_null $P1929, fallback1084
    nqp_get_sc_object $P1933, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1929, $P1933
  fallback1084:
    $P1934 = $P1929."add_core_pirop_mapping"("r_atpos_n", "repr_at_pos_num", "NPi", 1 :named("inlinable"))
.annotate 'line', 1813
    get_hll_global $P1938, "GLOBAL"
    nqp_get_package_through_who $P1937, $P1938, "QAST"
    get_who $P1936, $P1937
    set $P1935, $P1936["Operations"]
    unless_null $P1935, fallback1085
    nqp_get_sc_object $P1939, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1935, $P1939
  fallback1085:
    $P1940 = $P1935."add_core_pirop_mapping"("r_bindpos", "repr_bind_pos_obj", "2PiP", 1 :named("inlinable"))
.annotate 'line', 1814
    get_hll_global $P1944, "GLOBAL"
    nqp_get_package_through_who $P1943, $P1944, "QAST"
    get_who $P1942, $P1943
    set $P1941, $P1942["Operations"]
    unless_null $P1941, fallback1086
    nqp_get_sc_object $P1945, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1941, $P1945
  fallback1086:
    $P1946 = $P1941."add_core_pirop_mapping"("r_bindpos_i", "repr_bind_pos_int", "2Pii", 1 :named("inlinable"))
.annotate 'line', 1815
    get_hll_global $P1950, "GLOBAL"
    nqp_get_package_through_who $P1949, $P1950, "QAST"
    get_who $P1948, $P1949
    set $P1947, $P1948["Operations"]
    unless_null $P1947, fallback1087
    nqp_get_sc_object $P1951, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1947, $P1951
  fallback1087:
    $P1952 = $P1947."add_core_pirop_mapping"("r_bindpos_n", "repr_bind_pos_num", "2Pin", 1 :named("inlinable"))
.annotate 'line', 1818
    get_hll_global $P1956, "GLOBAL"
    nqp_get_package_through_who $P1955, $P1956, "QAST"
    get_who $P1954, $P1955
    set $P1953, $P1954["Operations"]
    unless_null $P1953, fallback1088
    nqp_get_sc_object $P1957, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1953, $P1957
  fallback1088:
    $P1958 = $P1953."add_core_pirop_mapping"("bindattr", "setattribute", "3PPsP", 1 :named("inlinable"))
.annotate 'line', 1819
    get_hll_global $P1962, "GLOBAL"
    nqp_get_package_through_who $P1961, $P1962, "QAST"
    get_who $P1960, $P1961
    set $P1959, $P1960["Operations"]
    unless_null $P1959, fallback1089
    nqp_get_sc_object $P1963, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1959, $P1963
  fallback1089:
    $P1964 = $P1959."add_core_pirop_mapping"("bindattr_i", "repr_bind_attr_int", "3PPsi", 1 :named("inlinable"))
.annotate 'line', 1820
    get_hll_global $P1968, "GLOBAL"
    nqp_get_package_through_who $P1967, $P1968, "QAST"
    get_who $P1966, $P1967
    set $P1965, $P1966["Operations"]
    unless_null $P1965, fallback1090
    nqp_get_sc_object $P1969, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1965, $P1969
  fallback1090:
    $P1970 = $P1965."add_core_pirop_mapping"("bindattr_n", "repr_bind_attr_num", "3PPsn", 1 :named("inlinable"))
.annotate 'line', 1821
    get_hll_global $P1974, "GLOBAL"
    nqp_get_package_through_who $P1973, $P1974, "QAST"
    get_who $P1972, $P1973
    set $P1971, $P1972["Operations"]
    unless_null $P1971, fallback1091
    nqp_get_sc_object $P1975, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1971, $P1975
  fallback1091:
    $P1976 = $P1971."add_core_pirop_mapping"("bindattr_s", "repr_bind_attr_str", "3PPss", 1 :named("inlinable"))
.annotate 'line', 1822
    get_hll_global $P1980, "GLOBAL"
    nqp_get_package_through_who $P1979, $P1980, "QAST"
    get_who $P1978, $P1979
    set $P1977, $P1978["Operations"]
    unless_null $P1977, fallback1092
    nqp_get_sc_object $P1981, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1977, $P1981
  fallback1092:
    $P1982 = $P1977."add_core_pirop_mapping"("getattr", "getattribute", "PPPs", 1 :named("inlinable"))
.annotate 'line', 1823
    get_hll_global $P1986, "GLOBAL"
    nqp_get_package_through_who $P1985, $P1986, "QAST"
    get_who $P1984, $P1985
    set $P1983, $P1984["Operations"]
    unless_null $P1983, fallback1093
    nqp_get_sc_object $P1987, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1983, $P1987
  fallback1093:
    $P1988 = $P1983."add_core_pirop_mapping"("getattr_i", "repr_get_attr_int", "IPPs", 1 :named("inlinable"))
.annotate 'line', 1824
    get_hll_global $P1992, "GLOBAL"
    nqp_get_package_through_who $P1991, $P1992, "QAST"
    get_who $P1990, $P1991
    set $P1989, $P1990["Operations"]
    unless_null $P1989, fallback1094
    nqp_get_sc_object $P1993, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1989, $P1993
  fallback1094:
    $P1994 = $P1989."add_core_pirop_mapping"("getattr_n", "repr_get_attr_num", "NPPs", 1 :named("inlinable"))
.annotate 'line', 1825
    get_hll_global $P1998, "GLOBAL"
    nqp_get_package_through_who $P1997, $P1998, "QAST"
    get_who $P1996, $P1997
    set $P1995, $P1996["Operations"]
    unless_null $P1995, fallback1095
    nqp_get_sc_object $P1999, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P1995, $P1999
  fallback1095:
    $P2000 = $P1995."add_core_pirop_mapping"("getattr_s", "repr_get_attr_str", "SPPs", 1 :named("inlinable"))
.annotate 'line', 1826
    get_hll_global $P2004, "GLOBAL"
    nqp_get_package_through_who $P2003, $P2004, "QAST"
    get_who $P2002, $P2003
    set $P2001, $P2002["Operations"]
    unless_null $P2001, fallback1096
    nqp_get_sc_object $P2005, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2001, $P2005
  fallback1096:
    $P2006 = $P2001."add_core_pirop_mapping"("create", "repr_instance_of", "PP", 1 :named("inlinable"))
.annotate 'line', 1827
    get_hll_global $P2010, "GLOBAL"
    nqp_get_package_through_who $P2009, $P2010, "QAST"
    get_who $P2008, $P2009
    set $P2007, $P2008["Operations"]
    unless_null $P2007, fallback1097
    nqp_get_sc_object $P2011, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2007, $P2011
  fallback1097:
    $P2012 = $P2007."add_core_pirop_mapping"("clone", "clone", "PP", 1 :named("inlinable"))
.annotate 'line', 1828
    get_hll_global $P2016, "GLOBAL"
    nqp_get_package_through_who $P2015, $P2016, "QAST"
    get_who $P2014, $P2015
    set $P2013, $P2014["Operations"]
    unless_null $P2013, fallback1098
    nqp_get_sc_object $P2017, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2013, $P2017
  fallback1098:
    $P2018 = $P2013."add_core_pirop_mapping"("isconcrete", "repr_defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1829
    get_hll_global $P2022, "GLOBAL"
    nqp_get_package_through_who $P2021, $P2022, "QAST"
    get_who $P2020, $P2021
    set $P2019, $P2020["Operations"]
    unless_null $P2019, fallback1099
    nqp_get_sc_object $P2023, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2019, $P2023
  fallback1099:
    $P2024 = $P2019."add_core_pirop_mapping"("iscont", "is_container", "IP", 1 :named("inlinable"))
.annotate 'line', 1830
    get_hll_global $P2028, "GLOBAL"
    nqp_get_package_through_who $P2027, $P2028, "QAST"
    get_who $P2026, $P2027
    set $P2025, $P2026["Operations"]
    unless_null $P2025, fallback1100
    nqp_get_sc_object $P2029, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2025, $P2029
  fallback1100:
    $P2030 = $P2025."add_core_pirop_mapping"("isnull", "isnull", "IP", 1 :named("inlinable"))
.annotate 'line', 1831
    get_hll_global $P2034, "GLOBAL"
    nqp_get_package_through_who $P2033, $P2034, "QAST"
    get_who $P2032, $P2033
    set $P2031, $P2032["Operations"]
    unless_null $P2031, fallback1101
    nqp_get_sc_object $P2035, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2031, $P2035
  fallback1101:
    $P2036 = $P2031."add_core_pirop_mapping"("isnull_s", "isnull", "IS", 1 :named("inlinable"))
.annotate 'line', 1832
    get_hll_global $P2040, "GLOBAL"
    nqp_get_package_through_who $P2039, $P2040, "QAST"
    get_who $P2038, $P2039
    set $P2037, $P2038["Operations"]
    unless_null $P2037, fallback1102
    nqp_get_sc_object $P2041, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2037, $P2041
  fallback1102:
    $P2042 = $P2037."add_core_pirop_mapping"("istrue", "istrue", "IP", 1 :named("inlinable"))
.annotate 'line', 1833
    get_hll_global $P2046, "GLOBAL"
    nqp_get_package_through_who $P2045, $P2046, "QAST"
    get_who $P2044, $P2045
    set $P2043, $P2044["Operations"]
    unless_null $P2043, fallback1103
    nqp_get_sc_object $P2047, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2043, $P2047
  fallback1103:
    $P2048 = $P2043."add_core_pirop_mapping"("isfalse", "isfalse", "IP", 1 :named("inlinable"))
.annotate 'line', 1834
    get_hll_global $P2052, "GLOBAL"
    nqp_get_package_through_who $P2051, $P2052, "QAST"
    get_who $P2050, $P2051
    set $P2049, $P2050["Operations"]
    unless_null $P2049, fallback1104
    nqp_get_sc_object $P2053, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2049, $P2053
  fallback1104:
    $P2054 = $P2049."add_core_pirop_mapping"("istype", "type_check", "IPP", 1 :named("inlinable"))
.annotate 'line', 1835
    get_hll_global $P2058, "GLOBAL"
    nqp_get_package_through_who $P2057, $P2058, "QAST"
    get_who $P2056, $P2057
    set $P2055, $P2056["Operations"]
    unless_null $P2055, fallback1105
    nqp_get_sc_object $P2059, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2055, $P2059
  fallback1105:
    $P2060 = $P2055."add_core_pirop_mapping"("null", "null", "P", 1 :named("inlinable"))
.annotate 'line', 1836
    get_hll_global $P2064, "GLOBAL"
    nqp_get_package_through_who $P2063, $P2064, "QAST"
    get_who $P2062, $P2063
    set $P2061, $P2062["Operations"]
    unless_null $P2061, fallback1106
    nqp_get_sc_object $P2065, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2061, $P2065
  fallback1106:
    $P2066 = $P2061."add_core_pirop_mapping"("null_s", "null", "S", 1 :named("inlinable"))
.annotate 'line', 1837
    get_hll_global $P2070, "GLOBAL"
    nqp_get_package_through_who $P2069, $P2070, "QAST"
    get_who $P2068, $P2069
    set $P2067, $P2068["Operations"]
    unless_null $P2067, fallback1107
    nqp_get_sc_object $P2071, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2067, $P2071
  fallback1107:
    $P2072 = $P2067."add_core_pirop_mapping"("unbox_i", "repr_unbox_int", "IP", 1 :named("inlinable"))
.annotate 'line', 1838
    get_hll_global $P2076, "GLOBAL"
    nqp_get_package_through_who $P2075, $P2076, "QAST"
    get_who $P2074, $P2075
    set $P2073, $P2074["Operations"]
    unless_null $P2073, fallback1108
    nqp_get_sc_object $P2077, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2073, $P2077
  fallback1108:
    $P2078 = $P2073."add_core_pirop_mapping"("unbox_n", "repr_unbox_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1839
    get_hll_global $P2082, "GLOBAL"
    nqp_get_package_through_who $P2081, $P2082, "QAST"
    get_who $P2080, $P2081
    set $P2079, $P2080["Operations"]
    unless_null $P2079, fallback1109
    nqp_get_sc_object $P2083, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2079, $P2083
  fallback1109:
    $P2084 = $P2079."add_core_pirop_mapping"("unbox_s", "repr_unbox_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1840
    get_hll_global $P2088, "GLOBAL"
    nqp_get_package_through_who $P2087, $P2088, "QAST"
    get_who $P2086, $P2087
    set $P2085, $P2086["Operations"]
    unless_null $P2085, fallback1110
    nqp_get_sc_object $P2089, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2085, $P2089
  fallback1110:
    $P2090 = $P2085."add_core_pirop_mapping"("box_i", "repr_box_int", "PiP", 1 :named("inlinable"))
.annotate 'line', 1841
    get_hll_global $P2094, "GLOBAL"
    nqp_get_package_through_who $P2093, $P2094, "QAST"
    get_who $P2092, $P2093
    set $P2091, $P2092["Operations"]
    unless_null $P2091, fallback1111
    nqp_get_sc_object $P2095, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2091, $P2095
  fallback1111:
    $P2096 = $P2091."add_core_pirop_mapping"("box_n", "repr_box_num", "PnP", 1 :named("inlinable"))
.annotate 'line', 1842
    get_hll_global $P2100, "GLOBAL"
    nqp_get_package_through_who $P2099, $P2100, "QAST"
    get_who $P2098, $P2099
    set $P2097, $P2098["Operations"]
    unless_null $P2097, fallback1112
    nqp_get_sc_object $P2101, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2097, $P2101
  fallback1112:
    $P2102 = $P2097."add_core_pirop_mapping"("box_s", "repr_box_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1843
    get_hll_global $P2106, "GLOBAL"
    nqp_get_package_through_who $P2105, $P2106, "QAST"
    get_who $P2104, $P2105
    set $P2103, $P2104["Operations"]
    unless_null $P2103, fallback1113
    nqp_get_sc_object $P2107, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2103, $P2107
  fallback1113:
    $P2108 = $P2103."add_core_pirop_mapping"("what", "get_what", "PP", 1 :named("inlinable"))
.annotate 'line', 1844
    get_hll_global $P2112, "GLOBAL"
    nqp_get_package_through_who $P2111, $P2112, "QAST"
    get_who $P2110, $P2111
    set $P2109, $P2110["Operations"]
    unless_null $P2109, fallback1114
    nqp_get_sc_object $P2113, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2109, $P2113
  fallback1114:
    $P2114 = $P2109."add_core_pirop_mapping"("how", "get_how", "PP", 1 :named("inlinable"))
.annotate 'line', 1845
    get_hll_global $P2118, "GLOBAL"
    nqp_get_package_through_who $P2117, $P2118, "QAST"
    get_who $P2116, $P2117
    set $P2115, $P2116["Operations"]
    unless_null $P2115, fallback1115
    nqp_get_sc_object $P2119, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2115, $P2119
  fallback1115:
    $P2120 = $P2115."add_core_pirop_mapping"("who", "get_who", "PP", 1 :named("inlinable"))
.annotate 'line', 1846
    get_hll_global $P2124, "GLOBAL"
    nqp_get_package_through_who $P2123, $P2124, "QAST"
    get_who $P2122, $P2123
    set $P2121, $P2122["Operations"]
    unless_null $P2121, fallback1116
    nqp_get_sc_object $P2125, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2121, $P2125
  fallback1116:
    $P2126 = $P2121."add_core_pirop_mapping"("where", "get_id", "IP", 1 :named("inlinable"))
.annotate 'line', 1847
    get_hll_global $P2130, "GLOBAL"
    nqp_get_package_through_who $P2129, $P2130, "QAST"
    get_who $P2128, $P2129
    set $P2127, $P2128["Operations"]
    unless_null $P2127, fallback1117
    nqp_get_sc_object $P2131, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2127, $P2131
  fallback1117:
    $P2132 = $P2127."add_core_pirop_mapping"("findmethod", "find_method", "PPs", 1 :named("inlinable"))
.annotate 'line', 1848
    get_hll_global $P2136, "GLOBAL"
    nqp_get_package_through_who $P2135, $P2136, "QAST"
    get_who $P2134, $P2135
    set $P2133, $P2134["Operations"]
    unless_null $P2133, fallback1118
    nqp_get_sc_object $P2137, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2133, $P2137
  fallback1118:
    $P2138 = $P2133."add_core_pirop_mapping"("defined", "defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1849
    get_hll_global $P2142, "GLOBAL"
    nqp_get_package_through_who $P2141, $P2142, "QAST"
    get_who $P2140, $P2141
    set $P2139, $P2140["Operations"]
    unless_null $P2139, fallback1119
    nqp_get_sc_object $P2143, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2139, $P2143
  fallback1119:
    $P2144 = $P2139."add_core_pirop_mapping"("can", "can", "IPs", 1 :named("inlinable"))
.annotate 'line', 1850
    get_hll_global $P2148, "GLOBAL"
    nqp_get_package_through_who $P2147, $P2148, "QAST"
    get_who $P2146, $P2147
    set $P2145, $P2146["Operations"]
    unless_null $P2145, fallback1120
    nqp_get_sc_object $P2149, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2145, $P2149
  fallback1120:
    $P2150 = $P2145."add_core_pirop_mapping"("reprname", "repr_name", "SP", 1 :named("inlinable"))
.annotate 'line', 1851
    get_hll_global $P2154, "GLOBAL"
    nqp_get_package_through_who $P2153, $P2154, "QAST"
    get_who $P2152, $P2153
    set $P2151, $P2152["Operations"]
    unless_null $P2151, fallback1121
    nqp_get_sc_object $P2155, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2151, $P2155
  fallback1121:
    $P2156 = $P2151."add_core_pirop_mapping"("newtype", "repr_type_object_for", "PPs", 1 :named("inlinable"))
.annotate 'line', 1852
    get_hll_global $P2160, "GLOBAL"
    nqp_get_package_through_who $P2159, $P2160, "QAST"
    get_who $P2158, $P2159
    set $P2157, $P2158["Operations"]
    unless_null $P2157, fallback1122
    nqp_get_sc_object $P2161, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2157, $P2161
  fallback1122:
    $P2162 = $P2157."add_core_pirop_mapping"("setwho", "set_who", "0PP", 1 :named("inlinable"))
.annotate 'line', 1855
    get_hll_global $P2166, "GLOBAL"
    nqp_get_package_through_who $P2165, $P2166, "QAST"
    get_who $P2164, $P2165
    set $P2163, $P2164["Operations"]
    unless_null $P2163, fallback1123
    nqp_get_sc_object $P2167, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2163, $P2167
  fallback1123:
    $P2168 = $P2163."add_core_pirop_mapping"("takeclosure", "newclosure", "PP")
.annotate 'line', 1858
    get_hll_global $P2172, "GLOBAL"
    nqp_get_package_through_who $P2171, $P2172, "QAST"
    get_who $P2170, $P2171
    set $P2169, $P2170["Operations"]
    unless_null $P2169, fallback1124
    nqp_get_sc_object $P2173, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2169, $P2173
  fallback1124:
    $P2174 = $P2169."add_core_pirop_mapping"("sha1", "nqp_sha1", "Ss")
.annotate 'line', 1859
    get_hll_global $P2178, "GLOBAL"
    nqp_get_package_through_who $P2177, $P2178, "QAST"
    get_who $P2176, $P2177
    set $P2175, $P2176["Operations"]
    unless_null $P2175, fallback1125
    nqp_get_sc_object $P2179, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2175, $P2179
  fallback1125:
    $P2180 = $P2175."add_core_pirop_mapping"("createsc", "nqp_create_sc", "Ps")
.annotate 'line', 1860
    get_hll_global $P2184, "GLOBAL"
    nqp_get_package_through_who $P2183, $P2184, "QAST"
    get_who $P2182, $P2183
    set $P2181, $P2182["Operations"]
    unless_null $P2181, fallback1126
    nqp_get_sc_object $P2185, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2181, $P2185
  fallback1126:
    $P2186 = $P2181."add_core_pirop_mapping"("deserialize", "nqp_deserialize_sc", "vsPPP")
.annotate 'line', 1863
    get_hll_global $P2190, "GLOBAL"
    nqp_get_package_through_who $P2189, $P2190, "QAST"
    get_who $P2188, $P2189
    set $P2187, $P2188["Operations"]
    unless_null $P2187, fallback1127
    nqp_get_sc_object $P2191, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2187, $P2191
  fallback1127:
    $P2192 = $P2187."add_core_pirop_mapping"("exit", "exit", "0i", 1 :named("inlinable"))
.annotate 'line', 1864
    get_hll_global $P2196, "GLOBAL"
    nqp_get_package_through_who $P2195, $P2196, "QAST"
    get_who $P2194, $P2195
    set $P2193, $P2194["Operations"]
    unless_null $P2193, fallback1128
    nqp_get_sc_object $P2197, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P2193, $P2197
  fallback1128:
    $P2198 = $P2193."add_core_pirop_mapping"("sleep", "sleep", "0n", 1 :named("inlinable"))
    .const 'Sub' $P2199 = 'cuid_59_1346233447.816' 
    capture_lex $P2199
    $P2200 = $P2199()
    set $P2205, _lex_param_0
    unless _lex_param_0 goto if718_end2713 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2201, "ModuleLoader"
    getinterp $P2203
    set $P2202, $P2203["context"]
    $P2204 = $P2201."set_mainline_module"($P2202)
    set $P2205, $P2204
  if718_end2713:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "handle_arg" :subid("cuid_154_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1137
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("coerce") :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P523 = 'cuid_153_1346233447.816' 
    capture_lex $P523 
    if haz_param_1, default20
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_5, $P522
  default20:
    .lex "$arg_post", $P101 
    .lex "$result", $P102 
    .lex "$arg", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$ops", _lex_param_2 
    .lex "@pos_arg_results", _lex_param_3 
    .lex "@named_arg_results", _lex_param_4 
    .lex "$coerce", _lex_param_5 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1138
    $P503 = _lex_param_1."as_post"(_lex_param_0)
    set $P101, $P503
    set $P505, _lex_param_5
    unless _lex_param_5 goto if10_end11 
.annotate 'line', 1139
.annotate 'line', 1140
    $P504 = _lex_param_1."coerce"($P101, _lex_param_5)
    set $P101, $P504
    set $P505, $P101
  if10_end11:
.annotate 'line', 1142
    $P506 = _lex_param_2."push"($P101)
.annotate 'line', 1143
    $P507 = $P101."result"()
    set $P102, $P507
.annotate 'line', 1144
    $P508 = _lex_param_0."flat"()
    unless $P508 goto if11_else12 
    set $S502, $P102
    concat $S501, $S502, " :flat"
    box $P509, $S501
    set $P102, $P509
.annotate 'line', 1146
    $P510 = _lex_param_0."named"()
    set $P512, $P510
    unless $P510 goto if12_end15 
    set $S504, $P102
    concat $S503, $S504, " :named"
    box $P511, $S503
    set $P102, $P511
    set $P512, $P102
  if12_end15:
    set $P517, $P512
    goto if11_end13
  if11_else12:
.annotate 'line', 1150
    $P513 = _lex_param_0."named"()
    set $P516, $P513
    unless $P513 goto if13_end17 
    .const 'Sub' $P514 = 'cuid_153_1346233447.816' 
    capture_lex $P514
    $P515 = $P514($P513)
    set $P516, $P515
  if13_end17:
    set $P517, $P516
  if11_end13:
.annotate 'line', 1153
    $P518 = _lex_param_0."named"()
    unless $P518 goto if14_else18 
.annotate 'line', 1154
    $P519 = _lex_param_4."push"($P102)
    set $P521, $P519
    goto if14_end19
  if14_else18:
.annotate 'line', 1156
.annotate 'line', 1157
    $P520 = _lex_param_3."push"($P102)
    set $P521, $P520
  if14_end19:
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1346233447.816") :anon :lex :outer("cuid_154_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1150
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P501, "$result"
    set $S504, $P501
    concat $S503, $S504, " :named("
.annotate 'line', 1151
    find_lex $P502, "$qastcomp"
    $P503 = $P502."escape"(_lex_param_0)
    set $S505, $P503
    concat $S502, $S503, $S505
    concat $S501, $S502, ")"
    box $P504, $S501
    store_lex "$result", $P504
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 10
    .const 'Sub' $P503 = 'cuid_2_1346233447.816' 
    capture_lex $P503 
    .const 'Sub' $P503 = 'cuid_3_1346233447.816' 
    capture_lex $P503 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_2_1346233447.816' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_3_1346233447.816' 
    capture_lex $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346233447.816") :anon :lex :outer("cuid_4_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 13
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "PIRT"
    get_who $P505, $P506
    set $P504, $P505["CallResult"]
    unless_null $P504, fallback25
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback25:
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "PIRT"
    get_who $P510, $P511
    set $P509, $P510["Node"]
    unless_null $P509, fallback28
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback28:
    type_check $I501, _lex_param_1, $P509
    unless $I501 goto if17_else26 
.annotate 'line', 16
    $P514 = _lex_param_1."result"()
    set $P515, $P514
    goto if17_end27
  if17_else26:
    set $P515, _lex_param_1
  if17_end27:
    set $S501, $P515
    repr_bind_attr_str $P101, $P504, "$!result", $S501
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_3_1346233447.816") :anon :lex :outer("cuid_4_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 20
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 1
    repr_get_attr_str $S501, $P501, $P502, "$!result"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 25
    .const 'Sub' $P516 = 'cuid_5_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_6_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_7_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_8_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_9_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_12_1346233447.816' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_13_1346233447.816' 
    capture_lex $P516 
    .lex "%op_compilers", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    .const 'Sub' $P504 = 'cuid_5_1346233447.816' 
    capture_lex $P504
    newclosure $P503, $P504
    set $P502["call"], $P503
    .const 'Sub' $P506 = 'cuid_6_1346233447.816' 
    capture_lex $P506
    newclosure $P505, $P506
    set $P502["callmethod"], $P505
    .const 'Sub' $P508 = 'cuid_7_1346233447.816' 
    capture_lex $P508
    newclosure $P507, $P508
    set $P502["return"], $P507
    .const 'Sub' $P510 = 'cuid_8_1346233447.816' 
    capture_lex $P510
    newclosure $P509, $P510
    set $P502["yield"], $P509
    .const 'Sub' $P512 = 'cuid_9_1346233447.816' 
    capture_lex $P512
    newclosure $P511, $P512
    set $P502["tailcall"], $P511
    .const 'Sub' $P514 = 'cuid_12_1346233447.816' 
    capture_lex $P514
    newclosure $P513, $P514
    set $P502["inline"], $P513
    set $P101, $P502
    .const 'Sub' $P515 = 'cuid_13_1346233447.816' 
    capture_lex $P515
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 27
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    find_dynamic_lex $P501, "$*HAS_RESULT"
    unless_null $P501, fallback31
    get_hll_global $P504, "GLOBAL"
    get_who $P503, $P504
    set $P502, $P503["$HAS_RESULT"]
    unless_null $P502, fallback32
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback32:
    unless_null $P502, vivi_1933
    die "Contextual $*HAS_RESULT not found"
    box $P506, "Contextual $*HAS_RESULT not found"
    set $P502, $P506
  vivi_1933:
    set $P501, $P502
  fallback31:
    unless $P501 goto if18_else29 
.annotate 'line', 29
    $P507 = _lex_param_0."shift"()
    set $S507, $P507
    concat $S506, $S507, " = "
    set $S508, $S506
    goto if18_end30
  if18_else29:
    set $S508, ""
  if18_end30:
    concat $S505, "    ", $S508
.annotate 'line', 30
    $P508 = _lex_param_0."shift"()
    set $S509, $P508
    concat $S504, $S505, $S509
    concat $S503, $S504, "("
    join $S510, ", ", _lex_param_0
    concat $S502, $S503, $S510
    concat $S501, $S502, ")"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex "$pir", $P101 
    .lex "$name", $P102 
    .lex "$invocant", $P103 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    find_dynamic_lex $P504, "$*HAS_RESULT"
    unless_null $P504, fallback36
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$HAS_RESULT"]
    unless_null $P505, fallback37
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback37:
    unless_null $P505, vivi_2138
    die "Contextual $*HAS_RESULT not found"
    box $P509, "Contextual $*HAS_RESULT not found"
    set $P505, $P509
  vivi_2138:
    set $P504, $P505
  fallback36:
    unless $P504 goto if20_else34 
.annotate 'line', 33
    $P510 = _lex_param_0."shift"()
    set $S503, $P510
    concat $S502, $S503, " = "
    set $S504, $S502
    goto if20_end35
  if20_else34:
    set $S504, ""
  if20_end35:
    concat $S501, "    ", $S504
    box $P511, $S501
    set $P101, $P511
.annotate 'line', 34
    $P512 = _lex_param_0."shift"()
    set $P102, $P512
.annotate 'line', 35
    $P513 = _lex_param_0."shift"()
    set $P103, $P513
    set $S511, $P101
    set $S512, $P103
    concat $S510, $S511, $S512
    concat $S509, $S510, "."
    set $S513, $P102
    concat $S508, $S509, $S513
    concat $S507, $S508, "("
    join $S514, ", ", _lex_param_0
    concat $S506, $S507, $S514
    concat $S505, $S506, ")"
    .return ($S505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    join $S503, ", ", _lex_param_0
    concat $S502, "    .return (", $S503
    concat $S501, $S502, ")"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    box $P501, "yield compilation NYI"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_9_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    box $P501, "tailcall compilation NYI"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .const 'Sub' $P520 = 'cuid_155_1346233447.816' 
    capture_lex $P520 
    .const 'Sub' $P520 = 'cuid_156_1346233447.816' 
    capture_lex $P520 
    .lex "$pir", $P101 
    .lex "$i", $P102 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_dynamic_lex $P503, "$*HAS_RESULT"
    unless_null $P503, fallback41
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$HAS_RESULT"]
    unless_null $P504, fallback42
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback42:
    unless_null $P504, vivi_2343
    die "Contextual $*HAS_RESULT not found"
    box $P508, "Contextual $*HAS_RESULT not found"
    set $P504, $P508
  vivi_2343:
    set $P503, $P504
  fallback41:
    unless $P503 goto if22_else39 
    .const 'Sub' $P509 = 'cuid_155_1346233447.816' 
    capture_lex $P509
    $P510 = $P509()
    set $P512, $P510
    goto if22_end40
  if22_else39:
.annotate 'line', 53
.annotate 'line', 54
    $P511 = _lex_param_0."shift"()
    set $P101, $P511
    set $P512, $P101
  if22_end40:
    box $P513, 0
    set $P102, $P513
    set $P514, _lex_param_0
    iter $P516, _lex_param_0
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers70
    push_eh $P518
  for_next71:
    unless $P516, for_done73
    shift $P519, $P516
  for_redo72:
    .const 'Sub' $P517 = 'cuid_156_1346233447.816' 
    capture_lex $P517
    $P514 = $P517($P519)
    goto for_next71
  for_handlers70:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next71
    eq $P518, .CONTROL_LOOP_REDO, for_redo72
  for_done73:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1346233447.816") :anon :lex :outer("cuid_12_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 49
    .const 'Sub' $P516 = 'cuid_10_1346233447.816' 
    capture_lex $P516 
    .lex "$result", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 50
    find_lex $P502, "@args"
    $P503 = $P502."shift"()
    set $P101, $P503
.annotate 'line', 51
    find_lex $P504, "@args"
    $P505 = $P504."shift"()
    find_lex $P508, "$?PACKAGE"
    get_who $P507, $P508
    set $P506, $P507["NQPRegex"]
    unless_null $P506, fallback44
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["NQPRegex"]
    unless_null $P509, vivi_2445
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  vivi_2445:
    set $P506, $P509
  fallback44:
    .const 'Sub' $P513 = 'cuid_10_1346233447.816' 
    capture_lex $P513
    $P514 = $P506."new"($P513)
    $P515 = "&subst"($P505, $P514, $P101, 1 :named("global"))
    store_lex "$pir", $P515
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1346233447.816") :anon :lex :outer("cuid_155_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx25_tgt
    .local int rx25_pos
    .local int rx25_off
    .local int rx25_eos
    .local int rx25_rep
    .local pmc rx25_cur
    .local pmc rx25_curclass
    .local pmc rx25_bstack
    .local pmc rx25_cstack
    (rx25_cur, rx25_tgt, rx25_pos, rx25_curclass, rx25_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx25_cur
    length rx25_eos, rx25_tgt
    eq $I19, 1, rx25_restart48
    gt rx25_pos, rx25_eos, rx25_fail49
    repr_get_attr_int $I11, self, rx25_curclass, "$!from"
    ne $I11, -1, rxscan26_done55
    goto rxscan26_scan54
  rxscan26_loop53:
    inc rx25_pos
    gt rx25_pos, rx25_eos, rx25_fail49
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!from", rx25_pos
  rxscan26_scan54:
    nqp_rxmark rx25_bstack, rxscan26_loop53, rx25_pos, 0
  rxscan26_done55:
    add $I11, rx25_pos, 2
    gt $I11, rx25_eos, rx25_fail49
    substr $S10, rx25_tgt, rx25_pos, 2
    ne $S10, ucs4:"%r", rx25_fail49
    add rx25_pos, 2
    rx25_cur."!cursor_pass"(rx25_pos, 'backtrack'=>1)
    .return (rx25_cur)
  rx25_restart48:
    repr_get_attr_obj rx25_cstack, rx25_cur, rx25_curclass, "$!cstack"
  rx25_fail49:
    unless rx25_bstack, rx25_done47
    pop $I19, rx25_bstack
    if_null rx25_cstack, rx25_cstack_done52
    unless rx25_cstack, rx25_cstack_done52
    dec $I19
    set $P11, rx25_cstack[$I19]
  rx25_cstack_done52:
    pop rx25_rep, rx25_bstack
    pop rx25_pos, rx25_bstack
    pop $I19, rx25_bstack
    lt rx25_pos, -1, rx25_done47
    lt rx25_pos, 0, rx25_fail49
    eq $I19, 0, rx25_fail49
    nqp_islist $I20, rx25_cstack
    unless $I20, rx25_jump50
    elements $I18, rx25_bstack
    le $I18, 0, rx25_cut51
    dec $I18
    set $I18, rx25_bstack[$I18]
  rx25_cut51:
    assign rx25_cstack, $I18
  rx25_jump50:
    jump $I19
  rx25_done47:
    rx25_cur."!cursor_fail"()
    .return (rx25_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346233447.816_caps" :subid("cuid_memo_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346233447.816_nfa" :subid("cuid_memo_2_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 37
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 2
    push $P507, $P508
    box $P509, 114
    push $P507, $P509
    box $P510, 0
    push $P507, $P510
    push $P501, $P507
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1346233447.816") :anon :lex :outer("cuid_12_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .const 'Sub' $P514 = 'cuid_11_1346233447.816' 
    capture_lex $P514 
    .lex "$_", _lex_param_0 
.annotate 'line', 58
    find_lex $P501, "$pir"
    find_lex $P504, "$?PACKAGE"
    get_who $P503, $P504
    set $P502, $P503["NQPRegex"]
    unless_null $P502, fallback56
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["NQPRegex"]
    unless_null $P505, vivi_2757
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  vivi_2757:
    set $P502, $P505
  fallback56:
    .const 'Sub' $P509 = 'cuid_11_1346233447.816' 
    capture_lex $P509
    $P510 = $P502."new"($P509)
    $P511 = "&subst"($P501, $P510, _lex_param_0, 1 :named("global"))
    store_lex "$pir", $P511
    find_lex $P512, "$i"
    set $N502, $P512
    set $N503, 1
    add $N501, $N502, $N503
    box $P513, $N501
    store_lex "$i", $P513
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1346233447.816") :anon :lex :outer("cuid_156_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    .local pmc rx28_curclass
    .local pmc rx28_bstack
    .local pmc rx28_cstack
    (rx28_cur, rx28_tgt, rx28_pos, rx28_curclass, rx28_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    eq $I19, 1, rx28_restart60
    gt rx28_pos, rx28_eos, rx28_fail61
    repr_get_attr_int $I11, self, rx28_curclass, "$!from"
    ne $I11, -1, rxscan29_done67
    goto rxscan29_scan66
  rxscan29_loop65:
    inc rx28_pos
    gt rx28_pos, rx28_eos, rx28_fail61
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!from", rx28_pos
  rxscan29_scan66:
    nqp_rxmark rx28_bstack, rxscan29_loop65, rx28_pos, 0
  rxscan29_done67:
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail61
    substr $S10, rx28_tgt, rx28_pos, 1
    ne $S10, ucs4:"%", rx28_fail61
    add rx28_pos, 1
    find_lex $P501, "$i"
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."!INTERPOLATE"($P501)
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail61
    goto rxsubrule30_pass68
  rxsubrule30_back69:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail61
  rxsubrule30_pass68:
    rx28_cstack = rx28_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule30_back69
    push rx28_bstack, $I11
    push rx28_bstack, 0
    push rx28_bstack, rx28_pos
    elements $I11, rx28_cstack
    push rx28_bstack, $I11
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    rx28_cur."!cursor_pass"(rx28_pos, 'backtrack'=>1)
    .return (rx28_cur)
  rx28_restart60:
    repr_get_attr_obj rx28_cstack, rx28_cur, rx28_curclass, "$!cstack"
  rx28_fail61:
    unless rx28_bstack, rx28_done59
    pop $I19, rx28_bstack
    if_null rx28_cstack, rx28_cstack_done64
    unless rx28_cstack, rx28_cstack_done64
    dec $I19
    set $P11, rx28_cstack[$I19]
  rx28_cstack_done64:
    pop rx28_rep, rx28_bstack
    pop rx28_pos, rx28_bstack
    pop $I19, rx28_bstack
    lt rx28_pos, -1, rx28_done59
    lt rx28_pos, 0, rx28_fail61
    eq $I19, 0, rx28_fail61
    nqp_islist $I20, rx28_cstack
    unless $I20, rx28_jump62
    elements $I18, rx28_bstack
    le $I18, 0, rx28_cut63
    dec $I18
    set $I18, rx28_bstack[$I18]
  rx28_cut63:
    assign rx28_cstack, $I18
  rx28_jump62:
    jump $I19
  rx28_done59:
    rx28_cur."!cursor_fail"()
    .return (rx28_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346233447.816_caps" :subid("cuid_memo_3_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P501, 'Hash'
    .return ($P501) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346233447.816_nfa" :subid("cuid_memo_4_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P501, 'ResizablePMCArray'
    new $P502, 'ResizablePMCArray'
    push $P501, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, 2
    push $P503, $P504
    box $P505, 37
    push $P503, $P505
    box $P506, 2
    push $P503, $P506
    push $P501, $P503
    new $P507, 'ResizablePMCArray'
    box $P508, 8
    push $P507, $P508
    box $P509, "!INTERPOLATE"
    push $P507, $P509
    box $P510, 0
    push $P507, $P510
    push $P501, $P507
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "children_pir" :subid("cuid_13_1346233447.816") :anon :lex :outer("cuid_14_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P508 = 'cuid_158_1346233447.816' 
    capture_lex $P508 
    .lex "@parts", $P101 
    .lex "self", _lex_param_0 
    .lex "@children", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    set $P502, _lex_param_1
    iter $P504, _lex_param_1
    new $P506, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P506, for_handlers108
    push_eh $P506
  for_next109:
    unless $P504, for_done111
    shift $P507, $P504
  for_redo110:
    .const 'Sub' $P505 = 'cuid_158_1346233447.816' 
    capture_lex $P505
    $P502 = $P505($P507)
    goto for_next109
  for_handlers108:
    .get_results ($P506)
    pop_upto_eh $P506
    getattribute $P506, $P506, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, for_next109
    eq $P506, .CONTROL_LOOP_REDO, for_redo110
  for_done111:
    pop_eh 
    join $S501, "\n", $P101
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1346233447.816") :anon :lex :outer("cuid_13_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .const 'Sub' $P527 = 'cuid_157_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_159_1346233447.816' 
    capture_lex $P527 
    .lex "$_", _lex_param_0 
    nqp_islist $I501, _lex_param_0
    unless $I501 goto if31_else74 
    .const 'Sub' $P501 = 'cuid_157_1346233447.816' 
    capture_lex $P501
    $P502 = $P501()
    set $P526, $P502
    goto if31_end75
  if31_else74:
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Sub"]
    unless_null $P503, fallback99
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback99:
    type_check $I502, _lex_param_0, $P503
    unless $I502 goto if38_else97 
.annotate 'line', 99
    find_dynamic_lex $P508, "@*PIRT_BLOCKS"
    unless_null $P508, fallback100
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["@PIRT_BLOCKS"]
    unless_null $P509, fallback101
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    new $P514, 'ResizablePMCArray'
    set $P512["@PIRT_BLOCKS"], $P514
    set $P509, $P514
  fallback101:
    unless_null $P509, vivi_39102
    die "Contextual @*PIRT_BLOCKS not found"
    box $P515, "Contextual @*PIRT_BLOCKS not found"
    set $P509, $P515
  vivi_39102:
    set $P508, $P509
  fallback100:
    push $P508, _lex_param_0
    set $P525, $P508
    goto if38_end98
  if38_else97:
    get_hll_global $P519, "GLOBAL"
    nqp_get_package_through_who $P518, $P519, "PIRT"
    get_who $P517, $P518
    set $P516, $P517["Node"]
    unless_null $P516, fallback105
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P520
  fallback105:
    type_check $I503, _lex_param_0, $P516
    unless $I503 goto if40_else103 
    .const 'Sub' $P521 = 'cuid_159_1346233447.816' 
    capture_lex $P521
    $P522 = $P521()
    set $P524, $P522
    goto if40_end104
  if40_else103:
.annotate 'line', 106
    box $P523, "Unexpected object in PIRT tree"
    die $P523
    set $P524, $P523
  if40_end104:
    set $P525, $P524
  if38_end98:
    set $P526, $P525
  if31_end75:
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1346233447.816") :anon :lex :outer("cuid_158_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 67
    .lex "$op_name", $P101 
    .lex "@op_args", $P102 
    .lex "$i", $P103 
    .lex "$c", $P104 
    .lex "$arg", $P105 
    .lex "$*HAS_RESULT", $P106 
    .lex "$result", $P107 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    find_lex $P509, "$_"
    set $P508, $P509[0]
    unless_null $P508, fallback76
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback76:
    set $P101, $P508
    box $P511, 1
    set $P103, $P511
    find_lex $P512, "$_"
    elements $I501, $P512
    box $P513, $I501
    set $P104, $P513
    box $P514, 0
    set $P106, $P514
    new $P535, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P535, while32_handlers80
    push_eh $P535
  while32_test77:
    set $N501, $P103
    set $N502, $P104
    islt $I502, $N501, $N502
    box $P536, $I502
    set $P534, $P536
    unless $I502 goto while32_done81 
  while32_redo79:
.annotate 'line', 75
    find_lex $P516, "$_"
    set $I503, $P103
    set $P515, $P516[$I503]
    unless_null $P515, fallback82
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P517
  fallback82:
    set $P105, $P515
    get_hll_global $P521, "GLOBAL"
    nqp_get_package_through_who $P520, $P521, "PIRT"
    get_who $P519, $P520
    set $P518, $P519["Node"]
    unless_null $P518, fallback85
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P522
  fallback85:
    type_check $I504, $P105, $P518
    unless $I504 goto if33_else83 
.annotate 'line', 77
.annotate 'line', 78
    $P523 = $P105."result"()
    push $P102, $P523
    set $P532, $P102
    goto if33_end84
  if33_else83:
    get_hll_global $P527, "GLOBAL"
    nqp_get_package_through_who $P526, $P527, "PIRT"
    get_who $P525, $P526
    set $P524, $P525["CallResult"]
    unless_null $P524, fallback88
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P528
  fallback88:
    type_check $I505, $P105, $P524
    unless $I505 goto if34_else86 
.annotate 'line', 80
.annotate 'line', 81
    $P529 = $P105."result"()
    set $P107, $P529
    box $P530, 1
    set $P106, $P530
    set $P531, $P106
    goto if34_end87
  if34_else86:
.annotate 'line', 84
    push $P102, $P105
    set $P531, $P102
  if34_end87:
    set $P532, $P531
  if33_end84:
    set $N504, $P103
    set $N505, 1
    add $N503, $N504, $N505
    box $P533, $N503
    set $P103, $P533
    set $P534, $P103
    goto while32_test77 
  while32_handlers80:
    .get_results ($P535)
    pop_upto_eh $P535
    getattribute $P535, $P535, 'type'
    eq $P535, .CONTROL_LOOP_NEXT, while32_test77
    eq $P535, .CONTROL_LOOP_REDO, while32_redo79
  while32_done81:
    pop_eh 
    unless_null $P106, fallback91
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    set $P537, $P538["$HAS_RESULT"]
    unless_null $P537, fallback92
    nqp_get_sc_object $P540, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P540
  fallback92:
    unless_null $P537, vivi_3693
    die "Contextual $*HAS_RESULT not found"
    box $P541, "Contextual $*HAS_RESULT not found"
    set $P537, $P541
  vivi_3693:
    set $P106, $P537
  fallback91:
    set $P542, $P106
    unless $P106 goto if35_end90 
.annotate 'line', 89
    unshift $P102, $P107
    set $P542, $P102
  if35_end90:
    find_lex $P543, "%op_compilers"
    set $S501, $P101
    exists $I506, $P543[$S501]
    unless $I506 goto if37_else94 
.annotate 'line', 92
    find_lex $P544, "@parts"
.annotate 'line', 93
    find_lex $P546, "%op_compilers"
    set $S502, $P101
    set $P545, $P546[$S502]
    unless_null $P545, fallback96
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P545, $P547
  fallback96:
    $P548 = $P545($P102)
    push $P544, $P548
    set $P551, $P544
    goto if37_end95
  if37_else94:
.annotate 'line', 95
    find_lex $P549, "@parts"
    set $S506, $P101
    concat $S505, "    ", $S506
    concat $S504, $S505, " "
    join $S507, ", ", $P102
    concat $S503, $S504, $S507
    box $P550, $S503
    push $P549, $P550
    set $P551, $P549
  if37_end95:
    .return ($P551) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1346233447.816") :anon :lex :outer("cuid_158_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 102
    .lex "$pir", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 103
    find_lex $P502, "$_"
    $P503 = $P502."pir"()
    set $P101, $P503
    set $S501, $P101
    iseq $I501, $S501, ""
    box $P506, $I501
    set $P505, $P506
    if $I501 goto unless41_end107 
    find_lex $P504, "@parts"
    push $P504, $P101
    set $P505, $P504
  unless41_end107:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_29_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 114
    .const 'Sub' $P515 = 'cuid_15_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_16_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_17_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_18_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_19_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_20_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_21_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_22_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_23_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_24_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_25_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_26_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_27_1346233447.816' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_28_1346233447.816' 
    capture_lex $P515 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_15_1346233447.816' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_16_1346233447.816' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_17_1346233447.816' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_18_1346233447.816' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_19_1346233447.816' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_20_1346233447.816' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_21_1346233447.816' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_22_1346233447.816' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_23_1346233447.816' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_24_1346233447.816' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_25_1346233447.816' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_26_1346233447.816' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_27_1346233447.816' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_28_1346233447.816' 
    capture_lex $P514
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_15_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $S502, _lex_param_1
    escape $S501, $S502
    box $P502, $S501
    set $P101, $P502
    set $S503, $P101
    index $I502, $S503, utf8:"\\x", 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    unless $I501 goto if42_else112 
    set $S506, $P101
    concat $S505, "utf8:\"", $S506
    concat $S504, $S505, "\""
    set $S515, $S504
    goto if42_end113
  if42_else112:
    set $S507, $P101
    index $I504, $S507, unicode:"\\u", 0
    set $N503, $I504
    set $N504, 0
    isge $I503, $N503, $N504
    unless $I503 goto if43_else114 
    set $S510, $P101
    concat $S509, "unicode:\"", $S510
    concat $S508, $S509, "\""
    set $S514, $S508
    goto if43_end115
  if43_else114:
    set $S513, $P101
    concat $S512, "\"", $S513
    concat $S511, $S512, "\""
    set $S514, $S511
  if43_end115:
    set $S515, $S514
  if42_end113:
    .return ($S515) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 135
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "PIRT"
    get_who $P505, $P506
    set $P504, $P505["Sub"]
    unless_null $P504, fallback116
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback116:
    new $P509, 'ResizablePMCArray'
    setattribute $P101, $P504, "@!children", $P509
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_17_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P503, $P501, $P502, "@!children"
    push $P503, _lex_param_1
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_18_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 145
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default120
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P511
  default120:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P507, _lex_param_2
    unless _lex_param_2 goto if44_end118 
.annotate 'line', 146
.annotate 'line', 147
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PIRT"
    get_who $P502, $P503
    set $P501, $P502["CallResult"]
    unless_null $P501, fallback119
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback119:
    $P506 = $P501."new"(_lex_param_2)
    push _lex_param_1, $P506
    set $P507, _lex_param_1
  if44_end118:
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P510, $P508, $P509, "@!children"
    push $P510, _lex_param_1
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "subid" :subid("cuid_19_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if45_else121 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback123
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback123:
    set $S501, $P503
    repr_bind_attr_str $P501, $P502, "$!subid", $S501
    set $S503, $S501
    goto if45_end122
  if45_else121:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S502, $P505, $P506, "$!subid"
    set $S503, $S502
  if45_end122:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "pirflags" :subid("cuid_20_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if46_else124 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback126
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback126:
    set $S501, $P503
    repr_bind_attr_str $P501, $P502, "$!pirflags", $S501
    set $S503, $S501
    goto if46_end125
  if46_else124:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S502, $P505, $P506, "$!pirflags"
    set $S503, $S502
  if46_end125:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_21_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if47_else127 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback129
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback129:
    set $S501, $P503
    repr_bind_attr_str $P501, $P502, "$!name", $S501
    set $S503, $S501
    goto if47_end128
  if47_else127:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S502, $P505, $P506, "$!name"
    set $S503, $S502
  if47_end128:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_22_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    if haz_param_3, default132
    new $P507, 'ResizablePMCArray'
    set _lex_param_1, $P507
  default132:
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    unless _lex_param_1 goto if48_else130 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_bind_attr_obj $P501, $P502, "@!loadlibs", _lex_param_1
    set $P506, _lex_param_1
    goto if48_end131
  if48_else130:
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P505, $P503, $P504, "@!loadlibs"
    set $P506, $P505
  if48_end131:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "hll" :subid("cuid_23_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 168
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if49_else133 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback135
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback135:
    set $S501, $P503
    repr_bind_attr_str $P501, $P502, "$!hll", $S501
    set $S503, $S501
    goto if49_end134
  if49_else133:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S502, $P505, $P506, "$!hll"
    set $S503, $S502
  if49_end134:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "namespace" :subid("cuid_24_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_4, default138
    new $P507, 'ResizablePMCArray'
    set _lex_param_1, $P507
  default138:
    .lex "self", _lex_param_0 
    .lex "@namespace", _lex_param_1 
    unless _lex_param_1 goto if50_else136 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_bind_attr_obj $P501, $P502, "@!namespace", _lex_param_1
    set $P506, _lex_param_1
    goto if50_end137
  if50_else136:
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P505, $P503, $P504, "@!namespace"
    set $P506, $P505
  if50_end137:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_25_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "close_sub" :subid("cuid_26_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .const 'Sub' $P590 = 'cuid_160_1346233447.816' 
    capture_lex $P590 
    .const 'Sub' $P590 = 'cuid_162_1346233447.816' 
    capture_lex $P590 
    .lex "@parts", $P101 
    .lex "$sub_decl", $P102 
    .lex "$file", $P103 
    .lex "@*PIRT_BLOCKS", $P104 
    .lex "$*SUB_LINE", $P105 
    .lex "self", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P508, $P506, $P507, "@!loadlibs"
    isnull $I501, $P508
    box $P519, $I501
    set $P518, $P519
    if $I501 goto unless51_end140 
.annotate 'line', 184
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P514, $P512, $P513, "@!loadlibs"
    set $P509, $P514
    iter $P511, $P514
    new $P516, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P516, for_handlers141
    push_eh $P516
  for_next142:
    unless $P511, for_done144
    shift $P517, $P511
  for_redo143:
    .const 'Sub' $P515 = 'cuid_160_1346233447.816' 
    capture_lex $P515
    $P509 = $P515($P517)
    goto for_next142
  for_handlers141:
    .get_results ($P516)
    pop_upto_eh $P516
    getattribute $P516, $P516, 'type'
    eq $P516, .CONTROL_LOOP_NEXT, for_next142
    eq $P516, .CONTROL_LOOP_REDO, for_redo143
  for_done144:
    pop_eh 
    set $P518, $P509
  unless51_end140:
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S501, $P520, $P521, "$!hll"
    box $P528, $S501
    set $P527, $P528
    unless $S501 goto if52_end146 
.annotate 'line', 189
.annotate 'line', 190
    nqp_decontainerize $P522, _lex_param_0
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S503, $P523, $P524, "$!hll"
    $P525 = $P522."escape"($S503)
    set $S504, $P525
    concat $S502, ".HLL ", $S504
    box $P526, $S502
    push $P101, $P526
    set $P527, $P101
  if52_end146:
    nqp_decontainerize $P529, _lex_param_0
    nqp_get_sc_object $P530, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P531, $P529, $P530, "@!namespace"
    isnull $I502, $P531
    unless $I502 goto if53_else147 
.annotate 'line', 192
    box $P532, ".namespace []"
    push $P101, $P532
    set $P535, $P101
    goto if53_end148
  if53_else147:
    .const 'Sub' $P533 = 'cuid_162_1346233447.816' 
    capture_lex $P533
    $P534 = $P533()
    set $P535, $P534
  if53_end148:
.annotate 'line', 202
    nqp_decontainerize $P536, _lex_param_0
    nqp_decontainerize $P537, _lex_param_0
    nqp_get_sc_object $P538, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S506, $P537, $P538, "$!name"
    set $S507, $S506
    if $S506 goto unless54_end154 
    set $S507, ""
  unless54_end154:
    $P539 = $P536."escape"($S507)
    set $S508, $P539
    concat $S505, ".sub ", $S508
    box $P540, $S505
    set $P102, $P540
    nqp_decontainerize $P541, _lex_param_0
    nqp_get_sc_object $P542, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S509, $P541, $P542, "$!subid"
    box $P549, $S509
    set $P548, $P549
    unless $S509 goto if55_end156 
.annotate 'line', 203
    set $S513, $P102
    concat $S512, $S513, " :subid("
.annotate 'line', 204
    nqp_decontainerize $P543, _lex_param_0
    nqp_decontainerize $P544, _lex_param_0
    nqp_get_sc_object $P545, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S514, $P544, $P545, "$!subid"
    $P546 = $P543."escape"($S514)
    set $S515, $P546
    concat $S511, $S512, $S515
    concat $S510, $S511, ")"
    box $P547, $S510
    set $P102, $P547
    set $P548, $P102
  if55_end156:
    nqp_decontainerize $P550, _lex_param_0
    nqp_get_sc_object $P551, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S516, $P550, $P551, "$!pirflags"
    box $P556, $S516
    set $P555, $P556
    unless $S516 goto if56_end158 
.annotate 'line', 206
    set $S519, $P102
    concat $S518, $S519, " "
    nqp_decontainerize $P552, _lex_param_0
    nqp_get_sc_object $P553, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S520, $P552, $P553, "$!pirflags"
    concat $S517, $S518, $S520
    box $P554, $S517
    set $P102, $P554
    set $P555, $P102
  if56_end158:
    push $P101, $P102
    find_caller_lex $P557, "$?FILES"
    set $P103, $P557
    set $P561, $P103
    unless $P103 goto if57_end160 
.annotate 'line', 213
.annotate 'line', 214
    nqp_decontainerize $P558, _lex_param_0
    $P559 = $P558."escape"($P103)
    set $S522, $P559
    concat $S521, ".annotate 'file', ", $S522
    box $P560, $S521
    push $P101, $P560
    set $P561, $P101
  if57_end160:
    unless_null $P104, fallback161
    get_hll_global $P564, "GLOBAL"
    get_who $P563, $P564
    set $P562, $P563["@PIRT_BLOCKS"]
    unless_null $P562, fallback162
    get_hll_global $P566, "GLOBAL"
    get_who $P565, $P566
    new $P567, 'ResizablePMCArray'
    set $P565["@PIRT_BLOCKS"], $P567
    set $P562, $P567
  fallback162:
    unless_null $P562, vivi_58163
    die "Contextual @*PIRT_BLOCKS not found"
    box $P568, "Contextual @*PIRT_BLOCKS not found"
    set $P562, $P568
  vivi_58163:
    set $P104, $P562
  fallback161:
    box $P569, -1
    set $P105, $P569
.annotate 'line', 220
    nqp_decontainerize $P570, _lex_param_0
    nqp_decontainerize $P571, _lex_param_0
    nqp_get_sc_object $P572, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P573, $P571, $P572, "@!children"
    $P574 = $P570."children_pir"($P573)
    push $P101, $P574
    box $P575, ".end"
    push $P101, $P575
    nqp_decontainerize $P576, _lex_param_0
    nqp_get_sc_object $P577, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    join $S523, "\n", $P101
    repr_bind_attr_str $P576, $P577, "$!cached_pir", $S523
    nqp_decontainerize $P578, _lex_param_0
    nqp_get_sc_object $P579, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    unless_null $P104, fallback164
    get_hll_global $P582, "GLOBAL"
    get_who $P581, $P582
    set $P580, $P581["@PIRT_BLOCKS"]
    unless_null $P580, fallback165
    get_hll_global $P584, "GLOBAL"
    get_who $P583, $P584
    new $P585, 'ResizablePMCArray'
    set $P583["@PIRT_BLOCKS"], $P585
    set $P580, $P585
  fallback165:
    unless_null $P580, vivi_59166
    die "Contextual @*PIRT_BLOCKS not found"
    box $P586, "Contextual @*PIRT_BLOCKS not found"
    set $P580, $P586
  vivi_59166:
    set $P104, $P580
  fallback164:
    repr_bind_attr_obj $P578, $P579, "@!nested_blocks", $P104
    nqp_decontainerize $P587, _lex_param_0
    nqp_get_sc_object $P588, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    null $P589
    repr_bind_attr_obj $P587, $P588, "@!children", $P589
    .return ($P589) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346233447.816") :anon :lex :outer("cuid_26_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 185
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "@parts"
.annotate 'line', 186
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."escape"(_lex_param_0)
    set $S502, $P504
    concat $S501, ".loadlib ", $S502
    box $P505, $S501
    push $P501, $P505
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1346233447.816") :anon :lex :outer("cuid_26_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 195
    .const 'Sub' $P514 = 'cuid_161_1346233447.816' 
    capture_lex $P514 
    .lex "@ns", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P508, $P505, $P507, "@!namespace"
    set $P502, $P508
    iter $P504, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers149
    push_eh $P510
  for_next150:
    unless $P504, for_done152
    shift $P511, $P504
  for_redo151:
    .const 'Sub' $P509 = 'cuid_161_1346233447.816' 
    capture_lex $P509
    $P502 = $P509($P511)
    goto for_next150
  for_handlers149:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next150
    eq $P510, .CONTROL_LOOP_REDO, for_redo151
  for_done152:
    pop_eh 
    find_lex $P512, "@parts"
    join $S503, ";", $P101
    concat $S502, ".namespace [", $S503
    concat $S501, $S502, "]"
    box $P513, $S501
    push $P512, $P513
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346233447.816") :anon :lex :outer("cuid_162_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 197
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "@ns"
.annotate 'line', 198
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."escape"(_lex_param_0)
    push $P501, $P504
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_27_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 232
    .param pmc _lex_param_0 
    .lex "@parts", $P101 
    .lex "self", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 234
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."collect_sub_pir_into"($P101)
    join $S501, "\n", $P101
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "collect_sub_pir_into" :subid("cuid_28_1346233447.816") :anon :lex :outer("cuid_29_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 238
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P519 = 'cuid_163_1346233447.816' 
    capture_lex $P519 
    .lex "self", _lex_param_0 
    .lex "@result", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S501, $P501, $P502, "$!cached_pir"
    box $P506, $S501
    set $P505, $P506
    if $S501 goto unless60_end168 
.annotate 'line', 240
.annotate 'line', 241
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."close_sub"()
    set $P505, $P504
  unless60_end168:
.annotate 'line', 245
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_str $S502, $P507, $P508, "$!cached_pir"
    $P509 = _lex_param_1."push"($S502)
    nqp_decontainerize $P513, _lex_param_0
    nqp_get_sc_object $P514, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    repr_get_attr_obj $P515, $P513, $P514, "@!nested_blocks"
    set $P510, $P515
    iter $P512, $P515
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers169
    push_eh $P517
  for_next170:
    unless $P512, for_done172
    shift $P518, $P512
  for_redo171:
    .const 'Sub' $P516 = 'cuid_163_1346233447.816' 
    capture_lex $P516
    $P510 = $P516($P518)
    goto for_next170
  for_handlers169:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next170
    eq $P517, .CONTROL_LOOP_REDO, for_redo171
  for_done172:
    pop_eh 
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1346233447.816") :anon :lex :outer("cuid_28_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 247
    find_lex $P501, "@result"
    $P502 = _lex_param_0."collect_sub_pir_into"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 252
    .const 'Sub' $P507 = 'cuid_30_1346233447.816' 
    capture_lex $P507 
    .const 'Sub' $P507 = 'cuid_31_1346233447.816' 
    capture_lex $P507 
    .const 'Sub' $P507 = 'cuid_32_1346233447.816' 
    capture_lex $P507 
    .const 'Sub' $P507 = 'cuid_33_1346233447.816' 
    capture_lex $P507 
    .const 'Sub' $P507 = 'cuid_34_1346233447.816' 
    capture_lex $P507 
    .const 'Sub' $P507 = 'cuid_35_1346233447.816' 
    capture_lex $P507 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_30_1346233447.816' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_31_1346233447.816' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_32_1346233447.816' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_33_1346233447.816' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_34_1346233447.816' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_35_1346233447.816' 
    capture_lex $P506
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_30_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 257
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") :optional 
    .param int haz_param_5 :opt_flag 
    if haz_param_5, default178
    box $P522, ""
    set _lex_param_1, $P522
  default178:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "PIRT"
    get_who $P505, $P506
    set $P504, $P505["Ops"]
    unless_null $P504, fallback173
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback173:
    new $P509, 'ResizablePMCArray'
    setattribute $P101, $P504, "@!children", $P509
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback174
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback174:
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "PIRT"
    get_who $P516, $P517
    set $P515, $P516["Node"]
    unless_null $P515, fallback177
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback177:
    type_check $I501, _lex_param_1, $P515
    unless $I501 goto if61_else175 
.annotate 'line', 261
    $P520 = _lex_param_1."result"()
    set $P521, $P520
    goto if61_end176
  if61_else175:
    set $P521, _lex_param_1
  if61_end176:
    set $S501, $P521
    repr_bind_attr_str $P101, $P510, "$!result", $S501
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_31_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P503, $P501, $P502, "@!children"
    push $P503, _lex_param_1
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_32_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default182
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P511
  default182:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P507, _lex_param_2
    unless _lex_param_2 goto if62_end180 
.annotate 'line', 270
.annotate 'line', 271
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PIRT"
    get_who $P502, $P503
    set $P501, $P502["CallResult"]
    unless_null $P501, fallback181
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback181:
    $P506 = $P501."new"(_lex_param_2)
    push _lex_param_1, $P506
    set $P507, _lex_param_1
  if62_end180:
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P510, $P508, $P509, "@!children"
    push $P510, _lex_param_1
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_33_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if63_else183 
.annotate 'line', 277
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback187
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback187:
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "PIRT"
    get_who $P506, $P507
    set $P505, $P506["Node"]
    unless_null $P505, fallback188
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback188:
    type_check $I501, $P503, $P505
    unless $I501 goto if64_else185 
.annotate 'line', 278
    set $P510, _lex_param_1[0]
    unless_null $P510, fallback189
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P511
  fallback189:
    $P512 = $P510."result"()
    set $P515, $P512
    goto if64_end186
  if64_else185:
    set $P513, _lex_param_1[0]
    unless_null $P513, fallback190
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback190:
    set $P515, $P513
  if64_end186:
    set $S501, $P515
    repr_bind_attr_str $P501, $P502, "$!result", $S501
    set $S503, $S501
    goto if63_end184
  if63_else183:
.annotate 'line', 280
    nqp_decontainerize $P516, _lex_param_0
    nqp_get_sc_object $P517, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_str $S502, $P516, $P517, "$!result"
    set $S503, $S502
  if63_end184:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "node" :subid("cuid_34_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if65_else191 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback193
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback193:
    repr_bind_attr_obj $P501, $P502, "$!node", $P503
    set $P508, $P503
    goto if65_end192
  if65_else191:
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P507, $P505, $P506, "$!node"
    set $P508, $P507
  if65_end192:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_35_1346233447.816") :anon :lex :outer("cuid_36_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 289
    .param pmc _lex_param_0 
    .const 'Sub' $P514 = 'cuid_164_1346233447.816' 
    capture_lex $P514 
    .lex "$ann", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P505, $P503, $P504, "$!node"
    set $P508, $P505
    unless $P505 goto if66_end195 
    .const 'Sub' $P506 = 'cuid_164_1346233447.816' 
    capture_lex $P506
    $P507 = $P506()
    set $P508, $P507
  if66_end195:
    set $S502, $P101
.annotate 'line', 298
    nqp_decontainerize $P509, _lex_param_0
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P512, $P510, $P511, "@!children"
    $P513 = $P509."children_pir"($P512)
    set $S503, $P513
    concat $S501, $S502, $S503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1346233447.816") :anon :lex :outer("cuid_35_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 291
    .lex "$line", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 292
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "HLL"
    get_who $P503, $P504
    set $P502, $P503["Compiler"]
    unless_null $P502, fallback196
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback196:
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    nqp_get_sc_object $P509, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P510, $P507, $P509, "$!node"
    $P511 = $P510."orig"()
    find_lex $P513, "self"
    nqp_decontainerize $P512, $P513
    nqp_get_sc_object $P514, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    repr_get_attr_obj $P515, $P512, $P514, "$!node"
    $P516 = $P515."from"()
    $P517 = $P502."lineof"($P511, $P516, 1 :named("cache"))
    set $P101, $P517
    set $N501, $P101
    find_dynamic_lex $P518, "$*SUB_LINE"
    unless_null $P518, fallback199
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    set $P519, $P520["$SUB_LINE"]
    unless_null $P519, fallback200
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback200:
    unless_null $P519, vivi_68201
    die "Contextual $*SUB_LINE not found"
    box $P523, "Contextual $*SUB_LINE not found"
    set $P519, $P523
  vivi_68201:
    set $P518, $P519
  fallback199:
    set $N502, $P518
    isne $I501, $N501, $N502
    box $P526, $I501
    set $P525, $P526
    unless $I501 goto if67_end198 
.annotate 'line', 293
    set $S503, $P101
    concat $S502, ".annotate 'line', ", $S503
    concat $S501, $S502, "\n"
    box $P524, $S501
    store_lex "$ann", $P524
    store_dynamic_lex "$*SUB_LINE", $P101
    set $P525, $P101
  if67_end198:
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_41_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 302
    .const 'Sub' $P508 = 'cuid_165_1346233447.816' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_37_1346233447.816' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_38_1346233447.816' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_39_1346233447.816' 
    capture_lex $P508 
    .const 'Sub' $P508 = 'cuid_40_1346233447.816' 
    capture_lex $P508 
    .lex "$serno", $P101 
    .lex "&unique", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    .const 'Sub' $P502 = 'cuid_165_1346233447.816' 
    capture_lex $P502
    set $P102, $P502
    box $P503, 10
    set $P101, $P503
    .const 'Sub' $P504 = 'cuid_37_1346233447.816' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_38_1346233447.816' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_39_1346233447.816' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_40_1346233447.816' 
    capture_lex $P507
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "unique" :subid("cuid_165_1346233447.816") :anon :lex :outer("cuid_41_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 306
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    .local pmc tmp_1 
    set $S502, _lex_param_0
    find_lex $P501, "$serno"
    set tmp_1, $P501
    set $N502, tmp_1
    set $N503, 1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$serno", $P502
    set $S503, tmp_1
    concat $S501, $S502, $S503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_37_1346233447.816") :anon :lex :outer("cuid_41_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 308
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "PIRT"
    get_who $P505, $P506
    set $P504, $P505["Label"]
    unless_null $P504, fallback202
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback202:
.annotate 'line', 310
    $P509 = "&unique"(_lex_param_1)
    set $S501, $P509
    repr_bind_attr_str $P101, $P504, "$!name", $S501
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_38_1346233447.816") :anon :lex :outer("cuid_41_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if69_else203 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
.annotate 'line', 315
    set $P503, _lex_param_1[0]
    unless_null $P503, fallback205
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P504
  fallback205:
    $P505 = "&unique"($P503)
    set $S501, $P505
    repr_bind_attr_str $P501, $P502, "$!name", $S501
    set $S503, $S501
    goto if69_end204
  if69_else203:
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
    repr_get_attr_str $S502, $P506, $P507, "$!name"
    set $S503, $S502
  if69_end204:
    .return ($S503) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_39_1346233447.816") :anon :lex :outer("cuid_41_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
    repr_get_attr_str $S501, $P501, $P502, "$!name"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_40_1346233447.816") :anon :lex :outer("cuid_41_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 322
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
    repr_get_attr_str $S503, $P501, $P502, "$!name"
    concat $S502, "  ", $S503
    concat $S501, $S502, ":"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_58_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 330
    .const 'Sub' $P527 = 'cuid_173_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_42_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_43_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_44_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_45_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_46_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_47_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_48_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_49_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_50_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_51_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_52_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_53_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_54_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_55_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_56_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_57_1346233447.816' 
    capture_lex $P527 
    .lex "%core_ops", $P101 
    .lex "%hll_ops", $P102 
    .lex "%cached_pirops", $P103 
    .lex "%hll_box", $P104 
    .lex "%hll_unbox", $P105 
    .lex "%core_inlinability", $P106 
    .lex "%hll_inlinability", $P107 
    .lex "%core_result_type", $P108 
    .lex "%hll_result_type", $P109 
    .lex "&pirop_mapper", $P110 
    .lex "$?PACKAGE", $P111 
    .lex "$?CLASS", $P112 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    new $P503, 'Hash'
    set $P103, $P503
    new $P504, 'Hash'
    set $P104, $P504
    new $P505, 'Hash'
    set $P105, $P505
    new $P506, 'Hash'
    set $P106, $P506
    new $P507, 'Hash'
    set $P107, $P507
    new $P508, 'Hash'
    set $P108, $P508
    new $P509, 'Hash'
    set $P109, $P509
    .const 'Sub' $P510 = 'cuid_173_1346233447.816' 
    capture_lex $P510
    set $P110, $P510
    .const 'Sub' $P511 = 'cuid_42_1346233447.816' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_43_1346233447.816' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_44_1346233447.816' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_45_1346233447.816' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_46_1346233447.816' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_47_1346233447.816' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_48_1346233447.816' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_49_1346233447.816' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_50_1346233447.816' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_51_1346233447.816' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_52_1346233447.816' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_53_1346233447.816' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_54_1346233447.816' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_55_1346233447.816' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_56_1346233447.816' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_57_1346233447.816' 
    capture_lex $P526
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "pirop_mapper" :subid("cuid_173_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P517 = 'cuid_167_1346233447.816' 
    capture_lex $P517 
    .lex "@arg_types", $P101 
    .lex "$ret_type", $P102 
    .lex "$ret_meth", $P103 
    .lex "$pirop", _lex_param_0 
    .lex "$sig", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    set $S501, _lex_param_1
    split $P504, "", $S501
    set $P101, $P504
.annotate 'line', 509
    $P505 = $P101."shift"()
    set $P102, $P505
    set $S502, $P102
    iseq $I501, $S502, "P"
    unless $I501 goto if70_else206 
.annotate 'line', 513
    box $P506, "fresh_p"
    set $P103, $P506
    set $P514, $P103
    goto if70_end207
  if70_else206:
    set $S503, $P102
    iseq $I502, $S503, "S"
    unless $I502 goto if71_else208 
.annotate 'line', 514
    box $P507, "fresh_s"
    set $P103, $P507
    set $P513, $P103
    goto if71_end209
  if71_else208:
    set $S504, $P102
    iseq $I503, $S504, "I"
    unless $I503 goto if72_else210 
.annotate 'line', 515
    box $P508, "fresh_i"
    set $P103, $P508
    set $P512, $P103
    goto if72_end211
  if72_else210:
    set $S505, $P102
    iseq $I504, $S505, "N"
    box $P511, $I504
    set $P510, $P511
    unless $I504 goto if73_end213 
.annotate 'line', 516
    box $P509, "fresh_n"
    set $P103, $P509
    set $P510, $P103
  if73_end213:
    set $P512, $P510
  if72_end211:
    set $P513, $P512
  if71_end209:
    set $P514, $P513
  if70_end207:
    .const 'Sub' $P516 = 'cuid_167_1346233447.816' 
    capture_lex $P516
    newclosure $P515, $P516
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1346233447.816") :anon :lex :outer("cuid_173_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 518
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P541 = 'cuid_166_1346233447.816' 
    capture_lex $P541 
    .const 'Sub' $P541 = 'cuid_169_1346233447.816' 
    capture_lex $P541 
    .const 'Sub' $P541 = 'cuid_172_1346233447.816' 
    capture_lex $P541 
    .lex "$ops", $P101 
    .lex "@args", $P102 
    .lex "$num_args", $P103 
    .lex "$i", $P104 
    .lex "$last_argtype_was_Q", $P105 
    .lex "$aggregate", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op_name", _lex_param_1 
    .lex "@op_args", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
.annotate 'line', 519
    get_hll_global $P510, "GLOBAL"
    nqp_get_package_through_who $P509, $P510, "PIRT"
    get_who $P508, $P509
    set $P507, $P508["Ops"]
    unless_null $P507, fallback214
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P511
  fallback214:
    $P512 = $P507."new"()
    set $P101, $P512
    find_lex $P513, "$ret_meth"
    set $P516, $P513
    unless $P513 goto if74_end216 
    .const 'Sub' $P514 = 'cuid_166_1346233447.816' 
    capture_lex $P514
    $P515 = $P514()
    set $P516, $P515
  if74_end216:
    set $N501, _lex_param_2
    box $P517, $N501
    set $P103, $P517
    find_lex $P518, "@arg_types"
    set $N502, $P518
    set $N503, $P103
    isne $I501, $N502, $N503
    box $P522, $I501
    set $P521, $P522
    unless $I501 goto if76_end221 
.annotate 'line', 532
    set $S505, _lex_param_1
    concat $S504, "Operation '", $S505
    concat $S503, $S504, "' requires "
    find_lex $P519, "@arg_types"
    set $N504, $P519
    set $S506, $N504
    concat $S502, $S503, $S506
    set $S508, $P103
    concat $S507, " operands, but got ", $S508
    concat $S501, $S502, $S507
    box $P520, $S501
    die $P520
    set $P521, $P520
  if76_end221:
    box $P523, 0
    set $P104, $P523
    box $P524, 0
    set $P105, $P524
    box $P525, ""
    set $P106, $P525
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, while77_handlers225
    push_eh $P529
  while77_test222:
    set $N505, $P104
    set $N506, $P103
    islt $I502, $N505, $N506
    box $P530, $I502
    set $P528, $P530
    unless $I502 goto while77_done226 
  while77_redo224:
    .const 'Sub' $P526 = 'cuid_169_1346233447.816' 
    capture_lex $P526
    $P527 = $P526()
    set $P528, $P527
    goto while77_test222 
  while77_handlers225:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, while77_test222
    eq $P529, .CONTROL_LOOP_REDO, while77_redo224
  while77_done226:
    pop_eh 
    find_lex $P531, "$ret_meth"
    isfalse $I503, $P531
    set $I505, $I503
    unless $I503 goto if84_end242 
    find_lex $P532, "$ret_type"
    set $S509, $P532
    isne $I504, $S509, "v"
    set $I505, $I504
  if84_end242:
    set $I507, $I505
    unless $I505 goto if83_end240 
    find_lex $P533, "$ret_type"
    set $N507, $P533
    set $S510, $N507
    find_lex $P534, "$ret_type"
    set $S511, $P534
    iseq $I506, $S510, $S511
    set $I507, $I506
  if83_end240:
    box $P538, $I507
    set $P537, $P538
    unless $I507 goto if82_end238 
    .const 'Sub' $P535 = 'cuid_172_1346233447.816' 
    capture_lex $P535
    $P536 = $P535()
    set $P537, $P536
  if82_end238:
.annotate 'line', 580
    find_lex $P539, "$pirop"
    $P540 = $P101."push_pirop"($P539, $P102 :flat)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346233447.816") :anon :lex :outer("cuid_167_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 524
    .lex "$reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 525
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback217
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback218
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback218:
    unless_null $P504, vivi_75219
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_75219:
    set $P503, $P504
  fallback217:
    find_lex $P502, "$ret_meth"
    set $S501, $P502
    $P509 = $P503.$S501()
    set $P101, $P509
.annotate 'line', 526
    find_lex $P510, "@args"
    $P511 = $P510."push"($P101)
.annotate 'line', 527
    find_lex $P512, "$ops"
    $P513 = $P512."result"($P101)
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346233447.816") :anon :lex :outer("cuid_167_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 539
    .const 'Sub' $P522 = 'cuid_168_1346233447.816' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_170_1346233447.816' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_171_1346233447.816' 
    capture_lex $P522 
    .lex "$arg_type", $P101 
    .lex "$operand", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P504, "@arg_types"
    find_lex $P505, "$i"
    set $I501, $P505
    set $P503, $P504[$I501]
    unless_null $P503, fallback227
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback227:
    set $P101, $P503
    find_lex $P508, "@op_args"
    find_lex $P509, "$i"
    set $I502, $P509
    set $P507, $P508[$I502]
    unless_null $P507, fallback228
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P510
  fallback228:
    set $P102, $P507
    set $S501, $P101
    iseq $I503, $S501, "Q"
    unless $I503 goto if78_else229 
    .const 'Sub' $P511 = 'cuid_168_1346233447.816' 
    capture_lex $P511
    $P512 = $P511()
    set $P519, $P512
    goto if78_end230
  if78_else229:
    find_lex $P513, "$last_argtype_was_Q"
    unless $P513 goto if79_else231 
    .const 'Sub' $P514 = 'cuid_170_1346233447.816' 
    capture_lex $P514
    $P515 = $P514()
    set $P518, $P515
    goto if79_end232
  if79_else231:
    .const 'Sub' $P516 = 'cuid_171_1346233447.816' 
    capture_lex $P516
    $P517 = $P516()
    set $P518, $P517
  if79_end232:
    set $P519, $P518
  if78_end230:
    find_lex $P520, "$i"
    set $N502, $P520
    set $N503, 1
    add $N501, $N502, $N503
    box $P521, $N501
    store_lex "$i", $P521
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346233447.816") :anon :lex :outer("cuid_169_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 542
    .lex "$post", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 543
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    find_lex $P504, "$operand"
    $P505 = $P503."as_post"($P504)
    $P506 = $P502."coerce"($P505, "P")
    set $P101, $P506
.annotate 'line', 544
    find_lex $P507, "$ops"
    $P508 = $P507."push"($P101)
.annotate 'line', 545
    $P509 = $P101."result"()
    store_lex "$aggregate", $P509
    box $P510, 1
    store_lex "$last_argtype_was_Q", $P510
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1346233447.816") :anon :lex :outer("cuid_169_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 548
    .lex "$post", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$arg_type"
    set $S501, $P502
    isne $I501, $S501, "P"
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if80_end234 
.annotate 'line', 549
.annotate 'line', 550
    find_lex $P503, "$qastcomp"
    find_lex $P504, "$operand"
    find_lex $P505, "$arg_type"
    $P506 = $P503."apply_context"($P504, $P505)
    store_lex "$operand", $P506
    set $P507, $P506
  if80_end234:
.annotate 'line', 552
    find_lex $P509, "$qastcomp"
    find_lex $P510, "$qastcomp"
    find_lex $P511, "$operand"
    $P512 = $P510."as_post"($P511)
    find_lex $P513, "$arg_type"
    $P514 = $P509."coerce"($P512, $P513)
    set $P101, $P514
.annotate 'line', 553
    find_lex $P515, "$ops"
    $P516 = $P515."push"($P101)
.annotate 'line', 554
    find_lex $P517, "@args"
    find_lex $P518, "$aggregate"
    set $S505, $P518
    concat $S504, $S505, "["
    $P519 = $P101."result"()
    set $S506, $P519
    concat $S503, $S504, $S506
    concat $S502, $S503, "]"
    $P520 = $P517."push"($S502)
    box $P521, 0
    store_lex "$last_argtype_was_Q", $P521
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346233447.816") :anon :lex :outer("cuid_169_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 557
    .lex "$post", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$arg_type"
    set $S501, $P502
    isne $I501, $S501, "P"
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if81_end236 
.annotate 'line', 558
.annotate 'line', 559
    find_lex $P503, "$qastcomp"
    find_lex $P504, "$operand"
    find_lex $P505, "$arg_type"
    $P506 = $P503."apply_context"($P504, $P505)
    store_lex "$operand", $P506
    set $P507, $P506
  if81_end236:
.annotate 'line', 561
    find_lex $P509, "$qastcomp"
    find_lex $P510, "$qastcomp"
    find_lex $P511, "$operand"
    $P512 = $P510."as_post"($P511)
    find_lex $P513, "$arg_type"
    $P514 = $P509."coerce"($P512, $P513)
    set $P101, $P514
.annotate 'line', 562
    find_lex $P515, "$ops"
    $P516 = $P515."push"($P101)
.annotate 'line', 563
    find_lex $P517, "@args"
    $P518 = $P101."result"()
    $P519 = $P517."push"($P518)
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1346233447.816") :anon :lex :outer("cuid_167_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 570
    .lex "$rreg", $P101 
    .lex "$brak", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P504, "@args"
    find_lex $P505, "$ret_type"
    set $N501, $P505
    set $I501, $N501
    set $P503, $P504[$I501]
    unless_null $P503, fallback243
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback243:
    set $P101, $P503
    set $S501, $P101
    index $I502, $S501, "[", 0
    box $P507, $I502
    set $P102, $P507
    set $N502, $P102
    set $N503, 0
    isgt $I503, $N502, $N503
    box $P510, $I503
    set $P509, $P510
    unless $I503 goto if85_end245 
.annotate 'line', 573
    set $S503, $P101
    set $N505, $P102
    set $N506, 1
    add $N504, $N505, $N506
    set $I504, $N504
    set $S504, $P101
    length $I505, $S504
    set $N508, $I505
    set $N510, $P102
    set $N511, 2
    add $N509, $N510, $N511
    sub $N507, $N508, $N509
    set $I506, $N507
    substr $S502, $S503, $I504, $I506
    box $P508, $S502
    set $P101, $P508
    set $P509, $P101
  if85_end245:
.annotate 'line', 576
    find_lex $P511, "$ops"
    $P512 = $P511."result"($P101)
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "compile_op" :subid("cuid_42_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P523 = 'cuid_174_1346233447.816' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_175_1346233447.816' 
    capture_lex $P523 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$op", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_246
    .lex "RETURN", $P102
.annotate 'line', 355
    $P502 = _lex_param_3."op"()
    set $P101, $P502
    set $P515, _lex_param_2
    unless _lex_param_2 goto if86_end249 
.annotate 'line', 356
    find_lex $P504, "%hll_ops"
    set $S501, _lex_param_2
    set $P503, $P504[$S501]
    unless_null $P503, fallback254
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback254:
    set $P511, $P503
    unless $P503 goto if88_end253 
    find_lex $P508, "%hll_ops"
    set $S502, _lex_param_2
    set $P507, $P508[$S502]
    unless_null $P507, fallback255
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P509
  fallback255:
    set $S503, $P101
    set $P506, $P507[$S503]
    unless_null $P506, fallback256
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P510
  fallback256:
    set $P511, $P506
  if88_end253:
    set $P514, $P511
    unless $P511 goto if87_end251 
    .const 'Sub' $P512 = 'cuid_174_1346233447.816' 
    capture_lex $P512
    $P513 = $P512($P511)
    set $P514, $P513
  if87_end251:
    set $P515, $P514
  if86_end249:
    find_lex $P517, "%core_ops"
    set $S504, $P101
    set $P516, $P517[$S504]
    unless_null $P516, fallback259
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P518
  fallback259:
    set $P521, $P516
    unless $P516 goto if89_end258 
    .const 'Sub' $P519 = 'cuid_175_1346233447.816' 
    capture_lex $P519
    $P520 = $P519($P516)
    set $P521, $P520
  if89_end258:
    set $S507, $P101
    concat $S506, "No registered operation handler for '", $S507
    concat $S505, $S506, "'"
    box $P522, $S505
    die $P522
    goto lexotic_247
  lexotic_246:
    .get_results ($P522)
  lexotic_247:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1346233447.816") :anon :lex :outer("cuid_42_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 357
    .param pmc _lex_param_0 
    .lex "$mapper", _lex_param_0 
.annotate 'line', 358
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$op"
    $P504 = _lex_param_0($P502, $P503)
    find_lex $P501, "RETURN"
    $P505 = $P501($P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1346233447.816") :anon :lex :outer("cuid_42_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 361
    .param pmc _lex_param_0 
    .lex "$mapper", _lex_param_0 
.annotate 'line', 362
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$op"
    $P504 = _lex_param_0($P502, $P503)
    find_lex $P501, "RETURN"
    $P505 = $P501($P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "compile_pirop" :subid("cuid_43_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P514 = 'cuid_176_1346233447.816' 
    capture_lex $P514 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$op_name", _lex_param_2 
    .lex "@op_args", _lex_param_3 
    set $S501, _lex_param_2
    index $I501, $S501, " ", 0
    box $P504, $I501
    set $P503, $P504
    unless $I501 goto if90_end261 
.annotate 'line', 369
    set $S503, _lex_param_2
    split $P501, " ", $S503
    join $S502, "__", $P501
    box $P502, $S502
    set _lex_param_2, $P502
    set $P503, _lex_param_2
  if90_end261:
    find_lex $P505, "%cached_pirops"
    set $S504, _lex_param_2
    exists $I502, $P505[$S504]
    box $P509, $I502
    set $P508, $P509
    if $I502 goto unless91_end263 
    .const 'Sub' $P506 = 'cuid_176_1346233447.816' 
    capture_lex $P506
    $P507 = $P506()
    set $P508, $P507
  unless91_end263:
.annotate 'line', 376
    find_lex $P511, "%cached_pirops"
    set $S505, _lex_param_2
    set $P510, $P511[$S505]
    unless_null $P510, fallback266
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback266:
    $P513 = $P510(_lex_param_1, _lex_param_2, _lex_param_3)
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346233447.816") :anon :lex :outer("cuid_43_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 372
    .lex "@pieces", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P503, "$op_name"
    set $S501, $P503
    split $P502, "__", $S501
    set $P101, $P502
    find_lex $P504, "%cached_pirops"
    find_lex $P505, "$op_name"
    set $S502, $P505
.annotate 'line', 374
    set $P506, $P101[0]
    unless_null $P506, fallback264
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback264:
    set $P508, $P101[1]
    unless_null $P508, fallback265
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback265:
    $P510 = "&pirop_mapper"($P506, $P508)
    set $P504[$S502], $P510
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_op" :subid("cuid_44_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 380
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("inlinable") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default267
    box $P504, 0
    set _lex_param_3, $P504
  default267:
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$handler", _lex_param_2 
    .lex "$inlinable", _lex_param_3 
    find_lex $P501, "%core_ops"
    set $S501, _lex_param_1
    set $P501[$S501], _lex_param_2
.annotate 'line', 382
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."set_core_op_inlinability"(_lex_param_1, _lex_param_3)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_op" :subid("cuid_45_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default271
    box $P511, 0
    set _lex_param_4, $P511
  default271:
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$handler", _lex_param_3 
    .lex "$inlinable", _lex_param_4 
    find_lex $P501, "%hll_ops"
    set $S501, _lex_param_1
    exists $I501, $P501[$S501]
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless92_end269 
    find_lex $P502, "%hll_ops"
    set $S502, _lex_param_1
    new $P503, 'Hash'
    set $P502[$S502], $P503
    set $P504, $P503
  unless92_end269:
    find_lex $P507, "%hll_ops"
    set $S503, _lex_param_1
    set $P506, $P507[$S503]
    unless_null $P506, fallback270
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P508
  fallback270:
    set $S504, _lex_param_2
    set $P506[$S504], _lex_param_3
.annotate 'line', 389
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."set_hll_op_inlinability"(_lex_param_1, _lex_param_2, _lex_param_4)
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_pirop_mapping" :subid("cuid_46_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 393
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P511 = 'cuid_177_1346233447.816' 
    capture_lex $P511 
    if haz_param_9, default272
    box $P510, 0
    set _lex_param_4, $P510
  default272:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$pirop", _lex_param_2 
    .lex "$sig", _lex_param_3 
    .lex "$inlinable", _lex_param_4 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 394
    $P502 = "&pirop_mapper"(_lex_param_2, _lex_param_3)
    set $P101, $P502
    find_lex $P503, "%core_ops"
    set $S501, _lex_param_1
    .const 'Sub' $P505 = 'cuid_177_1346233447.816' 
    capture_lex $P505
    newclosure $P504, $P505
    set $P503[$S501], $P504
.annotate 'line', 398
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."set_core_op_inlinability"(_lex_param_1, _lex_param_4)
.annotate 'line', 399
    nqp_decontainerize $P508, _lex_param_0
    set $S503, _lex_param_3
    substr $S502, $S503, 0, 1
    $P509 = $P508."set_core_op_result_type"(_lex_param_1, $S502)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1346233447.816") :anon :lex :outer("cuid_46_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 395
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 396
    $P502 = _lex_param_1."op"()
    $P503 = _lex_param_1."list"()
    find_lex $P501, "$pirop_mapper"
    $P504 = $P501(_lex_param_0, $P502, $P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_pirop_mapping" :subid("cuid_47_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 403
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("inlinable") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P518 = 'cuid_178_1346233447.816' 
    capture_lex $P518 
    if haz_param_10, default276
    box $P517, 0
    set _lex_param_5, $P517
  default276:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$pirop", _lex_param_3 
    .lex "$sig", _lex_param_4 
    .lex "$inlinable", _lex_param_5 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 404
    $P502 = "&pirop_mapper"(_lex_param_3, _lex_param_4)
    set $P101, $P502
    find_lex $P503, "%hll_ops"
    set $S501, _lex_param_1
    exists $I501, $P503[$S501]
    box $P507, $I501
    set $P506, $P507
    if $I501 goto unless93_end274 
    find_lex $P504, "%hll_ops"
    set $S502, _lex_param_1
    new $P505, 'Hash'
    set $P504[$S502], $P505
    set $P506, $P505
  unless93_end274:
    find_lex $P509, "%hll_ops"
    set $S503, _lex_param_1
    set $P508, $P509[$S503]
    unless_null $P508, fallback275
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback275:
    set $S504, _lex_param_2
    .const 'Sub' $P512 = 'cuid_178_1346233447.816' 
    capture_lex $P512
    newclosure $P511, $P512
    set $P508[$S504], $P511
.annotate 'line', 409
    nqp_decontainerize $P513, _lex_param_0
    $P514 = $P513."set_hll_op_inlinability"(_lex_param_1, _lex_param_2, _lex_param_5)
.annotate 'line', 410
    nqp_decontainerize $P515, _lex_param_0
    set $S506, _lex_param_4
    substr $S505, $S506, 0, 1
    $P516 = $P515."set_hll_op_result_type"(_lex_param_1, _lex_param_2, $S505)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1346233447.816") :anon :lex :outer("cuid_47_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 407
    $P502 = _lex_param_1."op"()
    $P503 = _lex_param_1."list"()
    find_lex $P501, "$pirop_mapper"
    $P504 = $P501(_lex_param_0, $P502, $P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "set_core_op_inlinability" :subid("cuid_48_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 414
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$inlinable", _lex_param_2 
    find_lex $P501, "%core_inlinability"
    set $S501, _lex_param_1
    set $P501[$S501], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "set_hll_op_inlinability" :subid("cuid_49_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$inlinable", _lex_param_3 
    find_lex $P501, "%hll_inlinability"
    set $S501, _lex_param_1
    exists $I501, $P501[$S501]
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless94_end278 
    find_lex $P502, "%hll_inlinability"
    set $S502, _lex_param_1
    new $P503, 'Hash'
    set $P502[$S502], $P503
    set $P504, $P503
  unless94_end278:
    find_lex $P507, "%hll_inlinability"
    set $S503, _lex_param_1
    set $P506, $P507[$S503]
    unless_null $P506, fallback279
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P508
  fallback279:
    set $S504, _lex_param_2
    set $P506[$S504], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "is_inlinable" :subid("cuid_50_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_280
    .lex "RETURN", $P101
    find_lex $P501, "%hll_inlinability"
    set $S501, _lex_param_1
    exists $I501, $P501[$S501]
    box $P515, $I501
    set $P514, $P515
    unless $I501 goto if95_end283 
.annotate 'line', 427
    find_lex $P503, "%hll_inlinability"
    set $S502, _lex_param_1
    set $P502, $P503[$S502]
    unless_null $P502, fallback286
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback286:
    set $S503, _lex_param_2
    exists $I502, $P502[$S503]
    box $P513, $I502
    set $P512, $P513
    unless $I502 goto if96_end285 
.annotate 'line', 428
    find_lex $P508, "%hll_inlinability"
    set $S504, _lex_param_1
    set $P507, $P508[$S504]
    unless_null $P507, fallback287
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P509
  fallback287:
    set $S505, _lex_param_2
    set $P506, $P507[$S505]
    unless_null $P506, fallback288
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P510
  fallback288:
    find_lex $P505, "RETURN"
    $P511 = $P505($P506)
    set $P512, $P511
  if96_end285:
    set $P514, $P512
  if95_end283:
    find_lex $P519, "%core_inlinability"
    set $S506, _lex_param_2
    set $P518, $P519[$S506]
    unless_null $P518, fallback290
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P520
  fallback290:
    set $P517, $P518
    defined $I503, $P517
    if $I503, defor289
    box $P521, 0
    set $P517, $P521
  defor289:
    find_lex $P516, "RETURN"
    $P522 = $P516($P517)
    goto lexotic_281
  lexotic_280:
    .get_results ($P522)
  lexotic_281:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "set_core_op_result_type" :subid("cuid_51_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 436
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$type_char", _lex_param_2 
    set $S501, _lex_param_2
    iseq $I501, $S501, "I"
    unless $I501 goto if97_else291 
.annotate 'line', 437
    find_lex $P501, "%core_result_type"
    set $S502, _lex_param_1
    find_lex $P502, "int"
    set $P501[$S502], $P502
    set $P510, $P502
    goto if97_end292
  if97_else291:
    set $S503, _lex_param_2
    iseq $I502, $S503, "N"
    unless $I502 goto if98_else293 
.annotate 'line', 440
    find_lex $P503, "%core_result_type"
    set $S504, _lex_param_1
    find_lex $P504, "num"
    set $P503[$S504], $P504
    set $P509, $P504
    goto if98_end294
  if98_else293:
    set $S505, _lex_param_2
    iseq $I503, $S505, "S"
    box $P508, $I503
    set $P507, $P508
    unless $I503 goto if99_end296 
.annotate 'line', 443
    find_lex $P505, "%core_result_type"
    set $S506, _lex_param_1
    find_lex $P506, "str"
    set $P505[$S506], $P506
    set $P507, $P506
  if99_end296:
    set $P509, $P507
  if98_end294:
    set $P510, $P509
  if97_end292:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "set_hll_op_result_type" :subid("cuid_52_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$type_char", _lex_param_3 
    find_lex $P501, "%hll_result_type"
    set $S501, _lex_param_1
    exists $I501, $P501[$S501]
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless100_end298 
    find_lex $P502, "%hll_result_type"
    set $S502, _lex_param_1
    new $P503, 'Hash'
    set $P502[$S502], $P503
    set $P504, $P503
  unless100_end298:
    set $S503, _lex_param_3
    iseq $I502, $S503, "I"
    unless $I502 goto if101_else299 
.annotate 'line', 452
    find_lex $P507, "%hll_result_type"
    set $S504, _lex_param_1
    set $P506, $P507[$S504]
    unless_null $P506, fallback301
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P508
  fallback301:
    set $S505, _lex_param_2
    find_lex $P509, "int"
    set $P506[$S505], $P509
    set $P521, $P509
    goto if101_end300
  if101_else299:
    set $S506, _lex_param_3
    iseq $I503, $S506, "N"
    unless $I503 goto if102_else302 
.annotate 'line', 455
    find_lex $P511, "%hll_result_type"
    set $S507, _lex_param_1
    set $P510, $P511[$S507]
    unless_null $P510, fallback304
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback304:
    set $S508, _lex_param_2
    find_lex $P513, "num"
    set $P510[$S508], $P513
    set $P520, $P513
    goto if102_end303
  if102_else302:
    set $S509, _lex_param_3
    iseq $I504, $S509, "S"
    box $P519, $I504
    set $P518, $P519
    unless $I504 goto if103_end306 
.annotate 'line', 458
    find_lex $P515, "%hll_result_type"
    set $S510, _lex_param_1
    set $P514, $P515[$S510]
    unless_null $P514, fallback307
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P516
  fallback307:
    set $S511, _lex_param_2
    find_lex $P517, "str"
    set $P514[$S511], $P517
    set $P518, $P517
  if103_end306:
    set $P520, $P518
  if102_end303:
    set $P521, $P520
  if101_end300:
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "attach_result_type" :subid("cuid_53_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$op", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$node", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_308
    .lex "RETURN", $P102
.annotate 'line', 465
    $P502 = _lex_param_2."op"()
    set $P101, $P502
    find_lex $P503, "%hll_result_type"
    set $S501, _lex_param_1
    exists $I501, $P503[$S501]
    box $P518, $I501
    set $P517, $P518
    unless $I501 goto if104_end311 
.annotate 'line', 466
    find_lex $P505, "%hll_result_type"
    set $S502, _lex_param_1
    set $P504, $P505[$S502]
    unless_null $P504, fallback314
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback314:
    set $S503, $P101
    exists $I502, $P504[$S503]
    box $P516, $I502
    set $P515, $P516
    unless $I502 goto if105_end313 
.annotate 'line', 467
.annotate 'line', 468
    find_lex $P509, "%hll_result_type"
    set $S504, _lex_param_1
    set $P508, $P509[$S504]
    unless_null $P508, fallback315
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P510
  fallback315:
    set $S505, $P101
    set $P507, $P508[$S505]
    unless_null $P507, fallback316
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P511
  fallback316:
    $P512 = _lex_param_2."returns"($P507)
    find_lex $P513, "RETURN"
    $P514 = $P513(1)
    set $P515, $P514
  if105_end313:
    set $P517, $P515
  if104_end311:
    find_lex $P519, "%core_result_type"
    set $S506, $P101
    exists $I503, $P519[$S506]
    box $P525, $I503
    set $P524, $P525
    unless $I503 goto if106_end318 
.annotate 'line', 472
.annotate 'line', 473
    find_lex $P521, "%core_result_type"
    set $S507, $P101
    set $P520, $P521[$S507]
    unless_null $P520, fallback319
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P522
  fallback319:
    $P523 = _lex_param_2."returns"($P520)
    set $P524, $P523
  if106_end318:
    goto lexotic_309
  lexotic_308:
    .get_results ($P524)
  lexotic_309:
    .return ($P524) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_box" :subid("cuid_54_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 478
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$handler", _lex_param_3 
    set $S501, _lex_param_2
    iseq $I501, $S501, "i"
    set $I503, $I501
    if $I501 goto unless109_end325 
    set $S502, _lex_param_2
    iseq $I502, $S502, "n"
    set $I503, $I502
  unless109_end325:
    set $I505, $I503
    if $I503 goto unless108_end323 
    set $S503, _lex_param_2
    iseq $I504, $S503, "s"
    set $I505, $I504
  unless108_end323:
    box $P503, $I505
    set $P502, $P503
    if $I505 goto unless107_end321 
.annotate 'line', 479
    set $S506, _lex_param_2
    concat $S505, "Unknown box type '", $S506
    concat $S504, $S505, "'"
    box $P501, $S504
    die $P501
    set $P502, $P501
  unless107_end321:
    find_lex $P504, "%hll_box"
    set $S507, _lex_param_1
    exists $I506, $P504[$S507]
    box $P508, $I506
    set $P507, $P508
    if $I506 goto unless110_end327 
    find_lex $P505, "%hll_box"
    set $S508, _lex_param_1
    new $P506, 'Hash'
    set $P505[$S508], $P506
    set $P507, $P506
  unless110_end327:
    find_lex $P510, "%hll_box"
    set $S509, _lex_param_1
    set $P509, $P510[$S509]
    unless_null $P509, fallback328
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P511
  fallback328:
    set $S510, _lex_param_2
    set $P509[$S510], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_unbox" :subid("cuid_55_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$handler", _lex_param_3 
    set $S501, _lex_param_2
    iseq $I501, $S501, "i"
    set $I503, $I501
    if $I501 goto unless113_end334 
    set $S502, _lex_param_2
    iseq $I502, $S502, "n"
    set $I503, $I502
  unless113_end334:
    set $I505, $I503
    if $I503 goto unless112_end332 
    set $S503, _lex_param_2
    iseq $I504, $S503, "s"
    set $I505, $I504
  unless112_end332:
    box $P503, $I505
    set $P502, $P503
    if $I505 goto unless111_end330 
.annotate 'line', 488
    set $S506, _lex_param_2
    concat $S505, "Unknown unbox type '", $S506
    concat $S504, $S505, "'"
    box $P501, $S504
    die $P501
    set $P502, $P501
  unless111_end330:
    find_lex $P504, "%hll_unbox"
    set $S507, _lex_param_1
    exists $I506, $P504[$S507]
    box $P508, $I506
    set $P507, $P508
    if $I506 goto unless114_end336 
    find_lex $P505, "%hll_unbox"
    set $S508, _lex_param_1
    new $P506, 'Hash'
    set $P505[$S508], $P506
    set $P507, $P506
  unless114_end336:
    find_lex $P510, "%hll_unbox"
    set $S509, _lex_param_1
    set $P509, $P510[$S509]
    unless_null $P509, fallback337
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P511
  fallback337:
    set $S510, _lex_param_2
    set $P509[$S510], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "box" :subid("cuid_56_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$type", _lex_param_3 
    .lex "$post", _lex_param_4 
.annotate 'line', 497
    find_lex $P503, "%hll_box"
    set $S501, _lex_param_2
    set $P502, $P503[$S501]
    unless_null $P502, fallback338
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback338:
    set $S502, _lex_param_3
    set $P501, $P502[$S502]
    unless_null $P501, fallback339
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback339:
    $P506 = $P501(_lex_param_1, _lex_param_4)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "unbox" :subid("cuid_57_1346233447.816") :anon :lex :outer("cuid_58_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$type", _lex_param_3 
    .lex "$post", _lex_param_4 
.annotate 'line', 502
    find_lex $P503, "%hll_unbox"
    set $S501, _lex_param_2
    set $P502, $P503[$S501]
    unless_null $P502, fallback340
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback340:
    set $S502, _lex_param_3
    set $P501, $P502[$S502]
    unless_null $P501, fallback341
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback341:
    $P506 = $P501(_lex_param_1, _lex_param_4)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_179_1346233447.816' 
    capture_lex $P524 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 589
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback343
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback344
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback344:
    unless_null $P504, vivi_115345
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_115345:
    set $P503, $P504
  fallback343:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 590
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback346
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback346:
    $P515 = $P510."new"($P101 :named("result"))
    set $P102, $P515
.annotate 'line', 591
    $P516 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 594
    $P520 = _lex_param_1."list"()
    set $P517, $P520
    iter $P519, $P520
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers347
    push_eh $P522
  for_next348:
    unless $P519, for_done350
    shift $P523, $P519
  for_redo349:
    .const 'Sub' $P521 = 'cuid_179_1346233447.816' 
    capture_lex $P521
    $P517 = $P521($P523)
    goto for_next348
  for_handlers347:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next348
    eq $P522, .CONTROL_LOOP_REDO, for_redo349
  for_done350:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346233447.816") :anon :lex :outer("cuid_180_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 594
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 595
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    $P504 = $P503."as_post"(_lex_param_0)
    $P505 = $P502."coerce"($P504, "P")
    set $P101, $P505
.annotate 'line', 596
    find_lex $P506, "$ops"
    $P507 = $P506."push"($P101)
.annotate 'line', 597
    find_lex $P508, "$ops"
    find_lex $P509, "$list_reg"
    $P510 = $P101."result"()
    $P511 = $P508."push_pirop"("push", $P509, $P510)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_181_1346233447.816' 
    capture_lex $P524 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 605
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback352
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback353
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback353:
    unless_null $P504, vivi_116354
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_116354:
    set $P503, $P504
  fallback352:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 606
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback355
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback355:
    $P515 = $P510."new"($P101 :named("result"))
    set $P102, $P515
.annotate 'line', 607
    $P516 = $P102."push_pirop"("new", $P101, "'QRPA'")
.annotate 'line', 610
    $P520 = _lex_param_1."list"()
    set $P517, $P520
    iter $P519, $P520
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers356
    push_eh $P522
  for_next357:
    unless $P519, for_done359
    shift $P523, $P519
  for_redo358:
    .const 'Sub' $P521 = 'cuid_181_1346233447.816' 
    capture_lex $P521
    $P517 = $P521($P523)
    goto for_next357
  for_handlers356:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next357
    eq $P522, .CONTROL_LOOP_REDO, for_redo358
  for_done359:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346233447.816") :anon :lex :outer("cuid_182_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 610
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 611
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    $P504 = $P503."as_post"(_lex_param_0)
    $P505 = $P502."coerce"($P504, "P")
    set $P101, $P505
.annotate 'line', 612
    find_lex $P506, "$ops"
    $P507 = $P506."push"($P101)
.annotate 'line', 613
    find_lex $P508, "$ops"
    find_lex $P509, "$list_reg"
    $P510 = $P101."result"()
    $P511 = $P508."push_pirop"("push", $P509, $P510)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_183_1346233447.816' 
    capture_lex $P524 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 621
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback361
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback362
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback362:
    unless_null $P504, vivi_117363
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_117363:
    set $P503, $P504
  fallback361:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 622
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback364
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback364:
    $P515 = $P510."new"($P101 :named("result"))
    set $P102, $P515
.annotate 'line', 623
    $P516 = $P102."push_pirop"("new", $P101, "'ResizableIntegerArray'")
.annotate 'line', 626
    $P520 = _lex_param_1."list"()
    set $P517, $P520
    iter $P519, $P520
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers365
    push_eh $P522
  for_next366:
    unless $P519, for_done368
    shift $P523, $P519
  for_redo367:
    .const 'Sub' $P521 = 'cuid_183_1346233447.816' 
    capture_lex $P521
    $P517 = $P521($P523)
    goto for_next366
  for_handlers365:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next366
    eq $P522, .CONTROL_LOOP_REDO, for_redo367
  for_done368:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346233447.816") :anon :lex :outer("cuid_184_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 626
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 627
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    $P504 = $P503."as_post"(_lex_param_0)
    $P505 = $P502."coerce"($P504, "i")
    set $P101, $P505
.annotate 'line', 628
    find_lex $P506, "$ops"
    $P507 = $P506."push"($P101)
.annotate 'line', 629
    find_lex $P508, "$ops"
    find_lex $P509, "$list_reg"
    $P510 = $P101."result"()
    $P511 = $P508."push_pirop"("push", $P509, $P510)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 635
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_185_1346233447.816' 
    capture_lex $P524 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 637
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback370
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback371
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback371:
    unless_null $P504, vivi_118372
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_118372:
    set $P503, $P504
  fallback370:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 638
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback373
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback373:
    $P515 = $P510."new"($P101 :named("result"))
    set $P102, $P515
.annotate 'line', 639
    $P516 = $P102."push_pirop"("new", $P101, "'ResizableStringArray'")
.annotate 'line', 642
    $P520 = _lex_param_1."list"()
    set $P517, $P520
    iter $P519, $P520
    new $P522, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P522, for_handlers374
    push_eh $P522
  for_next375:
    unless $P519, for_done377
    shift $P523, $P519
  for_redo376:
    .const 'Sub' $P521 = 'cuid_185_1346233447.816' 
    capture_lex $P521
    $P517 = $P521($P523)
    goto for_next375
  for_handlers374:
    .get_results ($P522)
    pop_upto_eh $P522
    getattribute $P522, $P522, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, for_next375
    eq $P522, .CONTROL_LOOP_REDO, for_redo376
  for_done377:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346233447.816") :anon :lex :outer("cuid_186_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 643
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    $P504 = $P503."as_post"(_lex_param_0)
    $P505 = $P502."coerce"($P504, "s")
    set $P101, $P505
.annotate 'line', 644
    find_lex $P506, "$ops"
    $P507 = $P506."push"($P101)
.annotate 'line', 645
    find_lex $P508, "$ops"
    find_lex $P509, "$list_reg"
    $P510 = $P101."result"()
    $P511 = $P508."push_pirop"("push", $P509, $P510)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P532 = 'cuid_187_1346233447.816' 
    capture_lex $P532 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$block_reg", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 653
    find_dynamic_lex $P504, "$*REGALLOC"
    unless_null $P504, fallback379
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$REGALLOC"]
    unless_null $P505, fallback380
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback380:
    unless_null $P505, vivi_119381
    die "Contextual $*REGALLOC not found"
    box $P509, "Contextual $*REGALLOC not found"
    set $P505, $P509
  vivi_119381:
    set $P504, $P505
  fallback379:
    $P510 = $P504."fresh_p"()
    set $P101, $P510
.annotate 'line', 654
    get_hll_global $P514, "GLOBAL"
    nqp_get_package_through_who $P513, $P514, "PIRT"
    get_who $P512, $P513
    set $P511, $P512["Ops"]
    unless_null $P511, fallback382
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P515
  fallback382:
    $P516 = $P511."new"($P101 :named("result"))
    set $P102, $P516
.annotate 'line', 655
    $P517 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 658
    find_dynamic_lex $P518, "$*REGALLOC"
    unless_null $P518, fallback383
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    set $P519, $P520["$REGALLOC"]
    unless_null $P519, fallback384
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback384:
    unless_null $P519, vivi_120385
    die "Contextual $*REGALLOC not found"
    box $P523, "Contextual $*REGALLOC not found"
    set $P519, $P523
  vivi_120385:
    set $P518, $P519
  fallback383:
    $P524 = $P518."fresh_p"()
    set $P103, $P524
.annotate 'line', 659
    $P528 = _lex_param_1."list"()
    set $P525, $P528
    iter $P527, $P528
    new $P530, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P530, for_handlers386
    push_eh $P530
  for_next387:
    unless $P527, for_done389
    shift $P531, $P527
  for_redo388:
    .const 'Sub' $P529 = 'cuid_187_1346233447.816' 
    capture_lex $P529
    $P525 = $P529($P531)
    goto for_next387
  for_handlers386:
    .get_results ($P530)
    pop_upto_eh $P530
    getattribute $P530, $P530, 'type'
    eq $P530, .CONTROL_LOOP_NEXT, for_next387
    eq $P530, .CONTROL_LOOP_REDO, for_redo388
  for_done389:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1346233447.816") :anon :lex :outer("cuid_188_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 659
    .param pmc _lex_param_0 
    .lex "$cuid", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 660
    $P502 = _lex_param_0."cuid"()
    set $P101, $P502
.annotate 'line', 661
    find_lex $P503, "$ops"
    find_lex $P504, "$block_reg"
    set $S505, $P504
    concat $S504, ".const 'Sub' ", $S505
    concat $S503, $S504, " = \""
    set $S506, $P101
    concat $S502, $S503, $S506
    concat $S501, $S502, "\""
    $P505 = $P503."push_pirop"($S501)
.annotate 'line', 662
    find_lex $P506, "$ops"
    find_lex $P507, "$list_reg"
    find_lex $P508, "$block_reg"
    $P509 = $P506."push_pirop"("push", $P507, $P508)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 668
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P526 = 'cuid_189_1346233447.816' 
    capture_lex $P526 
    .lex "$hash_reg", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "@op_list", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
.annotate 'line', 670
    find_dynamic_lex $P505, "$*REGALLOC"
    unless_null $P505, fallback391
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["$REGALLOC"]
    unless_null $P506, fallback392
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback392:
    unless_null $P506, vivi_121393
    die "Contextual $*REGALLOC not found"
    box $P510, "Contextual $*REGALLOC not found"
    set $P506, $P510
  vivi_121393:
    set $P505, $P506
  fallback391:
    $P511 = $P505."fresh_p"()
    set $P101, $P511
.annotate 'line', 671
    get_hll_global $P515, "GLOBAL"
    nqp_get_package_through_who $P514, $P515, "PIRT"
    get_who $P513, $P514
    set $P512, $P513["Ops"]
    unless_null $P512, fallback394
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P516
  fallback394:
    $P517 = $P512."new"($P101 :named("result"))
    set $P102, $P517
.annotate 'line', 672
    $P518 = $P102."push_pirop"("new", $P101, "'Hash'")
    box $P519, 0
    set $P103, $P519
.annotate 'line', 676
    $P520 = _lex_param_1."list"()
    set $P104, $P520
    new $P524, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P524, while122_handlers398
    push_eh $P524
  while122_test395:
    set $N501, $P103
    set $N502, $P104
    islt $I501, $N501, $N502
    box $P525, $I501
    set $P523, $P525
    unless $I501 goto while122_done399 
  while122_redo397:
    .const 'Sub' $P521 = 'cuid_189_1346233447.816' 
    capture_lex $P521
    $P522 = $P521()
    set $P523, $P522
    goto while122_test395 
  while122_handlers398:
    .get_results ($P524)
    pop_upto_eh $P524
    getattribute $P524, $P524, 'type'
    eq $P524, .CONTROL_LOOP_NEXT, while122_test395
    eq $P524, .CONTROL_LOOP_REDO, while122_redo397
  while122_done399:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346233447.816") :anon :lex :outer("cuid_190_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 677
    .lex "$kpost", $P101 
    .lex "$vpost", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 678
    find_lex $P503, "$qastcomp"
    find_lex $P504, "$qastcomp"
    find_lex $P506, "@op_list"
    find_lex $P507, "$i"
    set $I501, $P507
    set $P505, $P506[$I501]
    unless_null $P505, fallback400
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback400:
    $P509 = $P504."as_post"($P505)
    $P510 = $P503."coerce"($P509, "s")
    set $P101, $P510
.annotate 'line', 679
    find_lex $P511, "$ops"
    $P512 = $P511."push"($P101)
    find_lex $P513, "$i"
    set $N502, $P513
    set $N503, 1
    add $N501, $N502, $N503
    box $P514, $N501
    store_lex "$i", $P514
.annotate 'line', 682
    find_lex $P515, "$qastcomp"
    find_lex $P516, "$qastcomp"
    find_lex $P518, "@op_list"
    find_lex $P519, "$i"
    set $I502, $P519
    set $P517, $P518[$I502]
    unless_null $P517, fallback401
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P520
  fallback401:
    $P521 = $P516."as_post"($P517)
    $P522 = $P515."coerce"($P521, "P")
    set $P102, $P522
.annotate 'line', 683
    find_lex $P523, "$ops"
    $P524 = $P523."push"($P102)
    find_lex $P525, "$i"
    set $N505, $P525
    set $N506, 1
    add $N504, $N505, $N506
    box $P526, $N504
    store_lex "$i", $P526
.annotate 'line', 686
    find_lex $P527, "$ops"
    find_lex $P528, "$hash_reg"
    set $S504, $P528
    concat $S503, $S504, "["
    $P529 = $P101."result"()
    set $S505, $P529
    concat $S502, $S503, $S505
    concat $S501, $S502, "]"
    $P530 = $P102."result"()
    $P531 = $P527."push_pirop"("set", $S501, $P530)
    .return ($P531) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 693
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P553 = 'cuid_191_1346233447.816' 
    capture_lex $P553 
    .lex "@clist", $P101 
    .lex "$cpast", $P102 
    .lex "$ops", $P103 
    .lex "$endlabel", $P104 
    .lex "$apast", $P105 
    .lex "$apost", $P106 
    .lex "$more", $P107 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
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
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    set $P102, _lex_param_1
    new $P520, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P520, while123_handlers406
    push_eh $P520
  while123_test403:
.annotate 'line', 697
    get_hll_global $P511, "GLOBAL"
    nqp_get_package_through_who $P510, $P511, "QAST"
    get_who $P509, $P510
    set $P508, $P509["Op"]
    unless_null $P508, fallback410
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback410:
    $P513 = $P508."ACCEPTS"($P102)
    set $P515, $P513
    unless $P513 goto if124_end409 
    $P514 = $P102."op"()
    set $S501, $P514
    iseq $I501, $S501, "chain"
    box $P516, $I501
    set $P515, $P516
  if124_end409:
    set $P519, $P515
    unless $P515 goto while123_done407 
  while123_redo405:
    push $P101, $P102
    set $P517, $P102[0]
    unless_null $P517, fallback411
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback411:
    set $P102, $P517
    set $P519, $P102
    goto while123_test403 
  while123_handlers406:
    .get_results ($P520)
    pop_upto_eh $P520
    getattribute $P520, $P520, 'type'
    eq $P520, .CONTROL_LOOP_NEXT, while123_test403
    eq $P520, .CONTROL_LOOP_REDO, while123_redo405
  while123_done407:
    pop_eh 
.annotate 'line', 702
    get_hll_global $P524, "GLOBAL"
    nqp_get_package_through_who $P523, $P524, "PIRT"
    get_who $P522, $P523
    set $P521, $P522["Ops"]
    unless_null $P521, fallback412
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P525
  fallback412:
    find_dynamic_lex $P526, "$*REGALLOC"
    unless_null $P526, fallback413
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    set $P527, $P528["$REGALLOC"]
    unless_null $P527, fallback414
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P530
  fallback414:
    unless_null $P527, vivi_125415
    die "Contextual $*REGALLOC not found"
    box $P531, "Contextual $*REGALLOC not found"
    set $P527, $P531
  vivi_125415:
    set $P526, $P527
  fallback413:
    $P532 = $P526."fresh_p"()
    $P533 = $P521."new"($P532 :named("result"))
    set $P103, $P533
.annotate 'line', 703
    get_hll_global $P537, "GLOBAL"
    nqp_get_package_through_who $P536, $P537, "PIRT"
    get_who $P535, $P536
    set $P534, $P535["Label"]
    unless_null $P534, fallback416
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P534, $P538
  fallback416:
    $P539 = _lex_param_0."unique"("chain_end_")
    $P540 = $P534."new"($P539 :named("name"))
    set $P104, $P540
    pop $P541, $P101
    set $P102, $P541
    set $P542, $P102[0]
    unless_null $P542, fallback417
    nqp_get_sc_object $P543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P543
  fallback417:
    set $P105, $P542
.annotate 'line', 707
    $P544 = _lex_param_0."as_post"($P105)
    $P545 = _lex_param_0."coerce"($P544, "P")
    set $P106, $P545
.annotate 'line', 708
    $P546 = $P103."push"($P106)
    box $P547, 1
    set $P107, $P547
    new $P551, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P551, while126_handlers421
    push_eh $P551
  while126_test418:
    set $P550, $P107
    unless $P107 goto while126_done422 
  while126_redo420:
    .const 'Sub' $P548 = 'cuid_191_1346233447.816' 
    capture_lex $P548
    $P549 = $P548()
    set $P550, $P549
    goto while126_test418 
  while126_handlers421:
    .get_results ($P551)
    pop_upto_eh $P551
    getattribute $P551, $P551, 'type'
    eq $P551, .CONTROL_LOOP_NEXT, while126_test418
    eq $P551, .CONTROL_LOOP_REDO, while126_redo420
  while126_done422:
    pop_eh 
.annotate 'line', 729
    $P552 = $P103."push"($P104)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346233447.816") :anon :lex :outer("cuid_192_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 711
    .lex "$bpast", $P101 
    .lex "$bpost", $P102 
    .lex "$name", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    find_lex $P505, "$cpast"
    set $P504, $P505[1]
    unless_null $P504, fallback423
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback423:
    set $P101, $P504
.annotate 'line', 713
    find_lex $P507, "$qastcomp"
    find_lex $P508, "$qastcomp"
    $P509 = $P508."as_post"($P101)
    $P510 = $P507."coerce"($P509, "P")
    set $P102, $P510
.annotate 'line', 714
    find_lex $P511, "$ops"
    $P512 = $P511."push"($P102)
.annotate 'line', 716
    find_lex $P513, "$qastcomp"
    find_lex $P514, "$cpast"
    $P515 = $P514."name"()
    $P516 = $P513."escape"($P515)
    set $P103, $P516
.annotate 'line', 717
    find_lex $P517, "$ops"
    find_lex $P518, "$apost"
    find_lex $P519, "$ops"
    $P520 = $P517."push_pirop"("call", $P103, $P518, $P102, $P519 :named("result"))
    find_lex $P521, "@clist"
    unless $P521 goto if127_else424 
.annotate 'line', 719
.annotate 'line', 720
    find_lex $P522, "$ops"
    find_lex $P523, "$ops"
    find_lex $P524, "$endlabel"
    $P525 = $P522."push_pirop"("unless", $P523, $P524)
    find_lex $P527, "@clist"
    pop $P526, $P527
    store_lex "$cpast", $P526
    store_lex "$apost", $P102
    set $P529, $P102
    goto if127_end425
  if127_else424:
.annotate 'line', 724
    box $P528, 0
    store_lex "$more", $P528
    set $P529, $P528
  if127_end425:
    .return ($P529) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 736
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Stmts"]
    unless_null $P501, fallback427
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback427:
    $P506 = _lex_param_1."list"()
    $P507 = $P501."new"($P506 :flat)
    $P508 = _lex_param_0."as_post"($P507)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_195_1346233447.816' 
    capture_lex $P509 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 741
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Operations"]
    unless_null $P501, fallback428
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback428:
    .const 'Sub' $P507 = 'cuid_195_1346233447.816' 
    capture_lex $P507
    newclosure $P506, $P507
    $P508 = $P501."add_core_op"(_lex_param_0, $P506, 1 :named("inlinable"))
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346233447.816") :anon :lex :outer("cuid_199_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 741
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P600 = 'cuid_194_1346233447.816' 
    capture_lex $P600 
    .const 'Sub' $P600 = 'cuid_196_1346233447.816' 
    capture_lex $P600 
    .const 'Sub' $P600 = 'cuid_197_1346233447.816' 
    capture_lex $P600 
    .const 'Sub' $P600 = 'cuid_198_1346233447.816' 
    capture_lex $P600 
    .lex "$operands", $P101 
    .lex "$if_id", $P102 
    .lex "$else_lbl", $P103 
    .lex "$end_lbl", $P104 
    .lex "@comp_ops", $P105 
    .lex "@op_types", $P106 
    .lex "@im_args", $P107 
    .lex "$res_type", $P108 
    .lex "$res_reg", $P109 
    .lex "$ops", $P110 
    .lex "$cond_result", $P111 
    .lex "$then", $P112 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    new $P506, 'ResizablePMCArray'
    set $P106, $P506
    new $P507, 'ResizablePMCArray'
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
.annotate 'line', 743
    $P513 = _lex_param_1."list"()
    set $N501, $P513
    box $P514, $N501
    set $P101, $P514
    set $N502, $P101
    set $N503, 2
    islt $I501, $N502, $N503
    set $I503, $I501
    if $I501 goto unless129_end432 
    set $N504, $P101
    set $N505, 3
    isgt $I502, $N504, $N505
    set $I503, $I502
  unless129_end432:
    box $P518, $I503
    set $P517, $P518
    unless $I503 goto if128_end430 
    find_lex $P515, "$op_name"
    set $S503, $P515
    concat $S502, "Operation '", $S503
    concat $S501, $S502, "' needs either 2 or 3 operands"
    box $P516, $S501
    die $P516
    set $P517, $P516
  if128_end430:
.annotate 'line', 748
    find_lex $P519, "$op_name"
    $P520 = _lex_param_0."unique"($P519)
    set $P102, $P520
.annotate 'line', 749
    get_hll_global $P524, "GLOBAL"
    nqp_get_package_through_who $P523, $P524, "PIRT"
    get_who $P522, $P523
    set $P521, $P522["Label"]
    unless_null $P521, fallback433
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P525
  fallback433:
    set $S505, $P102
    concat $S504, $S505, "_else"
    $P526 = $P521."new"($S504 :named("name"))
    set $P103, $P526
.annotate 'line', 750
    get_hll_global $P530, "GLOBAL"
    nqp_get_package_through_who $P529, $P530, "PIRT"
    get_who $P528, $P529
    set $P527, $P528["Label"]
    unless_null $P527, fallback434
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P531
  fallback434:
    set $S507, $P102
    concat $S506, $S507, "_end"
    $P532 = $P527."new"($S506 :named("name"))
    set $P104, $P532
.annotate 'line', 757
    $P536 = _lex_param_1."list"()
    set $P533, $P536
    iter $P535, $P536
    new $P538, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P538, for_handlers454
    push_eh $P538
  for_next455:
    unless $P535, for_done457
    shift $P539, $P535
  for_redo456:
    .const 'Sub' $P537 = 'cuid_194_1346233447.816' 
    capture_lex $P537
    $P533 = $P537($P539)
    goto for_next455
  for_handlers454:
    .get_results ($P538)
    pop_upto_eh $P538
    getattribute $P538, $P538, 'type'
    eq $P538, .CONTROL_LOOP_NEXT, for_next455
    eq $P538, .CONTROL_LOOP_REDO, for_redo456
  for_done457:
    pop_eh 
    set $N506, $P101
    set $N507, 3
    iseq $I504, $N506, $N507
    unless $I504 goto if137_else458 
    set $P540, $P106[1]
    unless_null $P540, fallback462
    nqp_get_sc_object $P541, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P540, $P541
  fallback462:
    set $S508, $P540
    set $P542, $P106[2]
    unless_null $P542, fallback463
    nqp_get_sc_object $P543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P543
  fallback463:
    set $S509, $P542
    iseq $I505, $S508, $S509
    unless $I505 goto if138_else460 
    set $P544, $P106[1]
    unless_null $P544, fallback464
    nqp_get_sc_object $P545, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P544, $P545
  fallback464:
    set $S511, $P544
    downcase $S510, $S511
    set $S512, $S510
    goto if138_end461
  if138_else460:
    set $S512, "p"
  if138_end461:
    set $S518, $S512
    goto if137_end459
  if137_else458:
    set $P546, $P106[0]
    unless_null $P546, fallback467
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P547
  fallback467:
    set $S513, $P546
    set $P548, $P106[1]
    unless_null $P548, fallback468
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P548, $P549
  fallback468:
    set $S514, $P548
    iseq $I506, $S513, $S514
    unless $I506 goto if139_else465 
    set $P550, $P106[0]
    unless_null $P550, fallback469
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P550, $P551
  fallback469:
    set $S516, $P550
    downcase $S515, $S516
    set $S517, $S515
    goto if139_end466
  if139_else465:
    set $S517, "p"
  if139_end466:
    set $S518, $S517
  if137_end459:
    box $P552, $S518
    set $P108, $P552
.annotate 'line', 775
    find_dynamic_lex $P553, "$*REGALLOC"
    unless_null $P553, fallback470
    get_hll_global $P556, "GLOBAL"
    get_who $P555, $P556
    set $P554, $P555["$REGALLOC"]
    unless_null $P554, fallback471
    nqp_get_sc_object $P557, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P554, $P557
  fallback471:
    unless_null $P554, vivi_140472
    die "Contextual $*REGALLOC not found"
    box $P558, "Contextual $*REGALLOC not found"
    set $P554, $P558
  vivi_140472:
    set $P553, $P554
  fallback470:
    set $S520, $P108
    concat $S519, "fresh_", $S520
    $P559 = $P553.$S519()
    set $P109, $P559
.annotate 'line', 778
    get_hll_global $P563, "GLOBAL"
    nqp_get_package_through_who $P562, $P563, "PIRT"
    get_who $P561, $P562
    set $P560, $P561["Ops"]
    unless_null $P560, fallback473
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P560, $P564
  fallback473:
    $P565 = $P560."new"()
    set $P110, $P565
    set $N508, $P101
    set $N509, 2
    iseq $I507, $N508, $N509
    unless $I507 goto if141_else474 
    .const 'Sub' $P566 = 'cuid_196_1346233447.816' 
    capture_lex $P566
    $P567 = $P566()
    set $P573, $P567
    goto if141_end475
  if141_else474:
.annotate 'line', 786
.annotate 'line', 787
    set $P568, $P105[0]
    unless_null $P568, fallback477
    nqp_get_sc_object $P569, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P568, $P569
  fallback477:
    $P570 = $P110."push"($P568)
    set $P571, $P105[0]
    unless_null $P571, fallback478
    nqp_get_sc_object $P572, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P571, $P572
  fallback478:
    set $P111, $P571
    set $P573, $P111
  if141_end475:
    set $P574, $P107
    iter $P576, $P107
    new $P578, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P578, for_handlers479
    push_eh $P578
  for_next480:
    unless $P576, for_done482
    shift $P579, $P576
  for_redo481:
    .const 'Sub' $P577 = 'cuid_197_1346233447.816' 
    capture_lex $P577
    $P574 = $P577($P579)
    goto for_next480
  for_handlers479:
    .get_results ($P578)
    pop_upto_eh $P578
    getattribute $P578, $P578, 'type'
    eq $P578, .CONTROL_LOOP_NEXT, for_next480
    eq $P578, .CONTROL_LOOP_REDO, for_redo481
  for_done482:
    pop_eh 
.annotate 'line', 797
    find_lex $P580, "$op_name"
    set $S524, $P580
    iseq $I508, $S524, "if"
    unless $I508 goto if142_else483 
    set $S525, "unless "
    goto if142_end484
  if142_else483:
    set $S525, "if "
  if142_end484:
.annotate 'line', 798
    set $P581, $P105[0]
    unless_null $P581, fallback485
    nqp_get_sc_object $P582, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P581, $P582
  fallback485:
    $P583 = $P581."result"()
    set $S526, $P583
    concat $S523, $S525, $S526
    concat $S522, $S523, " goto "
    set $N510, $P101
    set $N511, 2
    iseq $I509, $N510, $N511
    unless $I509 goto if143_else486 
.annotate 'line', 799
    $P584 = $P104."result"()
    set $P586, $P584
    goto if143_end487
  if143_else486:
    $P585 = $P103."result"()
    set $P586, $P585
  if143_end487:
    set $S527, $P586
    concat $S521, $S522, $S527
    $P587 = $P110."push_pirop"($S521)
.annotate 'line', 802
    set $P588, $P105[1]
    unless_null $P588, fallback488
    nqp_get_sc_object $P589, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P588, $P589
  fallback488:
    $P590 = _lex_param_0."coerce"($P588, $P108)
    set $P112, $P590
.annotate 'line', 803
    $P591 = $P110."push"($P112)
.annotate 'line', 804
    $P592 = $P112."result"()
    $P593 = $P110."push_pirop"("set", $P109, $P592)
    set $N512, $P101
    set $N513, 3
    iseq $I510, $N512, $N513
    box $P597, $I510
    set $P596, $P597
    unless $I510 goto if144_end490 
    .const 'Sub' $P594 = 'cuid_198_1346233447.816' 
    capture_lex $P594
    $P595 = $P594()
    set $P596, $P595
  if144_end490:
.annotate 'line', 816
    $P598 = $P110."push"($P104)
.annotate 'line', 817
    $P599 = $P110."result"($P109)
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346233447.816") :anon :lex :outer("cuid_195_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 757
    .param pmc _lex_param_0 
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$*IMM_ARG", $P102 
    .lex "$comp", $P103 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 758
    $P504 = _lex_param_0."arity"()
    set $N501, $P504
    set $N502, 0
    isgt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if130_end436 
    get_id $I504, _lex_param_0
    find_lex $P506, "$op"
    set $P505, $P506[0]
    unless_null $P505, fallback437
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P507
  fallback437:
    get_id $I505, $P505
    iseq $I503, $I504, $I505
    box $P508, $I503
    isfalse $I502, $P508
    set $I506, $I502
  if130_end436:
    box $P509, $I506
    set $P101, $P509
    unless_null $P102, fallback438
    get_hll_global $P512, "GLOBAL"
    get_who $P511, $P512
    set $P510, $P511["$IMM_ARG"]
    unless_null $P510, fallback439
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback439:
    unless_null $P510, vivi_131440
    die "Contextual $*IMM_ARG not found"
    box $P514, "Contextual $*IMM_ARG not found"
    set $P510, $P514
  vivi_131440:
    set $P102, $P510
  fallback438:
.annotate 'line', 760
    find_lex $P515, "$qastcomp"
    $P516 = $P515."as_post"(_lex_param_0)
    set $P103, $P516
.annotate 'line', 761
    find_lex $P517, "@comp_ops"
    $P518 = $P517."push"($P103)
.annotate 'line', 762
    find_lex $P519, "@op_types"
    find_lex $P520, "$qastcomp"
    $P521 = $P103."result"()
    $P522 = $P520."infer_type"($P521)
    set $S502, $P522
    upcase $S501, $S502
    $P523 = $P519."push"($S501)
    unless_null $P101, fallback443
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["$HAVE_IMM_ARG"]
    unless_null $P524, fallback444
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P527
  fallback444:
    unless_null $P524, vivi_133445
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P528, "Contextual $*HAVE_IMM_ARG not found"
    set $P524, $P528
  vivi_133445:
    set $P101, $P524
  fallback443:
    set $P544, $P101
    unless $P101 goto if132_end442 
.annotate 'line', 763
    unless_null $P102, fallback448
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    set $P529, $P530["$IMM_ARG"]
    unless_null $P529, fallback449
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P532
  fallback449:
    unless_null $P529, vivi_135450
    die "Contextual $*IMM_ARG not found"
    box $P533, "Contextual $*IMM_ARG not found"
    set $P529, $P533
  vivi_135450:
    set $P102, $P529
  fallback448:
    unless $P102 goto if134_else446 
.annotate 'line', 764
.annotate 'line', 765
    find_lex $P534, "@im_args"
    unless_null $P102, fallback451
    get_hll_global $P537, "GLOBAL"
    get_who $P536, $P537
    set $P535, $P536["$IMM_ARG"]
    unless_null $P535, fallback452
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P538
  fallback452:
    unless_null $P535, vivi_136453
    die "Contextual $*IMM_ARG not found"
    box $P539, "Contextual $*IMM_ARG not found"
    set $P535, $P539
  vivi_136453:
    set $P102, $P535
  fallback451:
    $P540 = $P534."push"($P102)
    set $P543, $P540
    goto if134_end447
  if134_else446:
.annotate 'line', 767
    find_lex $P541, "$op_name"
    set $S504, $P541
    concat $S503, $S504, " block expects an argument, but there's no immediate block to take it"
    box $P542, $S503
    die $P542
    set $P543, $P542
  if134_end447:
    set $P544, $P543
  if132_end442:
    .return ($P544) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346233447.816") :anon :lex :outer("cuid_195_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 780
    .lex "$coerced", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 781
    find_lex $P502, "$qastcomp"
    find_lex $P504, "@comp_ops"
    set $P503, $P504[0]
    unless_null $P503, fallback476
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback476:
    find_lex $P506, "$res_type"
    $P507 = $P502."coerce"($P503, $P506)
    set $P101, $P507
.annotate 'line', 782
    find_lex $P508, "$ops"
    $P509 = $P508."push"($P101)
.annotate 'line', 783
    find_lex $P510, "$ops"
    find_lex $P511, "$res_reg"
    $P512 = $P101."result"()
    $P513 = $P510."push_pirop"("set", $P511, $P512)
    store_lex "$cond_result", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346233447.816") :anon :lex :outer("cuid_195_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 792
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 793
    find_lex $P501, "$cond_result"
    $P502 = $P501."result"()
    $P503 = _lex_param_0($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346233447.816") :anon :lex :outer("cuid_195_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 807
    .lex "$else", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 808
    find_lex $P502, "$qastcomp"
    find_lex $P504, "@comp_ops"
    set $P503, $P504[2]
    unless_null $P503, fallback491
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P505
  fallback491:
    find_lex $P506, "$res_type"
    $P507 = $P502."coerce"($P503, $P506)
    set $P101, $P507
.annotate 'line', 809
    find_lex $P508, "$ops"
    find_lex $P509, "$end_lbl"
    $P510 = $P509."result"()
    $P511 = $P508."push_pirop"("goto", $P510)
.annotate 'line', 810
    find_lex $P512, "$ops"
    find_lex $P513, "$else_lbl"
    $P514 = $P512."push"($P513)
.annotate 'line', 811
    find_lex $P515, "$ops"
    $P516 = $P515."push"($P101)
.annotate 'line', 812
    find_lex $P517, "$ops"
    find_lex $P518, "$res_reg"
    $P519 = $P101."result"()
    $P520 = $P517."push_pirop"("set", $P518, $P519)
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 823
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exprpost", $P101 
    .lex "$vivipost", $P102 
    .lex "$vivlabel", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 824
    $P505 = _lex_param_1."list"()
    set $N501, $P505
    set $N502, 2
    isne $I501, $N501, $N502
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if145_end498 
    box $P506, "The 'ifnull' op expects two children"
    die $P506
    set $P507, $P506
  if145_end498:
.annotate 'line', 828
    set $P509, _lex_param_1[0]
    unless_null $P509, fallback499
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P510
  fallback499:
    $P511 = _lex_param_0."as_post"($P509)
    set $P101, $P511
.annotate 'line', 829
    set $P512, _lex_param_1[1]
    unless_null $P512, fallback500
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P513
  fallback500:
    $P514 = _lex_param_0."as_post"($P512)
.annotate 'line', 830
    $P515 = $P101."result"()
    $P516 = _lex_param_0."infer_type"($P515)
    $P517 = _lex_param_0."coerce"($P514, $P516)
    set $P102, $P517
.annotate 'line', 831
    get_hll_global $P521, "GLOBAL"
    nqp_get_package_through_who $P520, $P521, "PIRT"
    get_who $P519, $P520
    set $P518, $P519["Label"]
    unless_null $P518, fallback501
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P522
  fallback501:
    $P523 = _lex_param_0."unique"("vivi_")
    $P524 = $P518."new"($P523 :named("name"))
    set $P103, $P524
.annotate 'line', 833
    get_hll_global $P528, "GLOBAL"
    nqp_get_package_through_who $P527, $P528, "PIRT"
    get_who $P526, $P527
    set $P525, $P526["Ops"]
    unless_null $P525, fallback502
    nqp_get_sc_object $P529, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P529
  fallback502:
    $P530 = $P525."new"()
    set $P104, $P530
.annotate 'line', 834
    $P531 = $P104."push"($P101)
.annotate 'line', 835
    $P532 = $P104."push_pirop"("unless_null", $P101, $P103)
.annotate 'line', 836
    $P533 = $P104."push"($P102)
.annotate 'line', 837
    $P534 = $P104."push_pirop"("set", $P101, $P102)
.annotate 'line', 838
    $P535 = $P104."push"($P103)
.annotate 'line', 839
    $P536 = $P101."result"()
    $P537 = $P104."result"($P536)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .const 'Sub' $P510 = 'cuid_204_1346233447.816' 
    capture_lex $P510 
    .lex "$repness", _lex_param_0 
    new $P504, 'ResizablePMCArray'
    box $P505, "while"
    push $P504, $P505
    box $P506, "until"
    push $P504, $P506
    set $P501, $P504
    iter $P503, $P504
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers571
    push_eh $P508
  for_next572:
    unless $P503, for_done574
    shift $P509, $P503
  for_redo573:
    .const 'Sub' $P507 = 'cuid_204_1346233447.816' 
    capture_lex $P507
    $P501 = $P507($P509)
    goto for_next572
  for_handlers571:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next572
    eq $P508, .CONTROL_LOOP_REDO, for_redo573
  for_done574:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346233447.816") :anon :lex :outer("cuid_205_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 845
    .param pmc _lex_param_0 
    .const 'Sub' $P510 = 'cuid_203_1346233447.816' 
    capture_lex $P510 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 846
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Operations"]
    unless_null $P501, fallback503
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback503:
    find_lex $P506, "$repness"
    set $S502, $P506
    set $S503, _lex_param_0
    concat $S501, $S502, $S503
    .const 'Sub' $P508 = 'cuid_203_1346233447.816' 
    capture_lex $P508
    newclosure $P507, $P508
    $P509 = $P501."add_core_op"($S501, $P507, 1 :named("inlinable"))
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346233447.816") :anon :lex :outer("cuid_204_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P657 = 'cuid_202_1346233447.816' 
    capture_lex $P657 
    .lex "$while_id", $P101 
    .lex "$test_lbl", $P102 
    .lex "$next_lbl", $P103 
    .lex "$redo_lbl", $P104 
    .lex "$hand_lbl", $P105 
    .lex "$done_lbl", $P106 
    .lex "@comp_ops", $P107 
    .lex "@comp_types", $P108 
    .lex "$handler", $P109 
    .lex "$*IMM_ARG", $P110 
    .lex "$res_type", $P111 
    .lex "$res_reg", $P112 
    .lex "$operands", $P113 
    .lex "$ops", $P114 
    .lex "$exc_reg", $P115 
    .lex "$coerced", $P116 
    .lex "$body", $P117 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    new $P507, 'ResizablePMCArray'
    set $P107, $P507
    new $P508, 'ResizablePMCArray'
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P113, $P513
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P114, $P514
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P115, $P515
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P116, $P516
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P117, $P517
.annotate 'line', 848
    find_lex $P518, "$op_name"
    $P519 = _lex_param_0."unique"($P518)
    set $P101, $P519
.annotate 'line', 849
    get_hll_global $P523, "GLOBAL"
    nqp_get_package_through_who $P522, $P523, "PIRT"
    get_who $P521, $P522
    set $P520, $P521["Label"]
    unless_null $P520, fallback504
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P524
  fallback504:
    set $S502, $P101
    concat $S501, $S502, "_test"
    $P525 = $P520."new"($S501 :named("name"))
    set $P102, $P525
.annotate 'line', 850
    get_hll_global $P529, "GLOBAL"
    nqp_get_package_through_who $P528, $P529, "PIRT"
    get_who $P527, $P528
    set $P526, $P527["Label"]
    unless_null $P526, fallback505
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P530
  fallback505:
    set $S504, $P101
    concat $S503, $S504, "_next"
    $P531 = $P526."new"($S503 :named("name"))
    set $P103, $P531
.annotate 'line', 851
    get_hll_global $P535, "GLOBAL"
    nqp_get_package_through_who $P534, $P535, "PIRT"
    get_who $P533, $P534
    set $P532, $P533["Label"]
    unless_null $P532, fallback506
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P536
  fallback506:
    set $S506, $P101
    concat $S505, $S506, "_redo"
    $P537 = $P532."new"($S505 :named("name"))
    set $P104, $P537
.annotate 'line', 852
    get_hll_global $P541, "GLOBAL"
    nqp_get_package_through_who $P540, $P541, "PIRT"
    get_who $P539, $P540
    set $P538, $P539["Label"]
    unless_null $P538, fallback507
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P538, $P542
  fallback507:
    set $S508, $P101
    concat $S507, $S508, "_handlers"
    $P543 = $P538."new"($S507 :named("name"))
    set $P105, $P543
.annotate 'line', 853
    get_hll_global $P547, "GLOBAL"
    nqp_get_package_through_who $P546, $P547, "PIRT"
    get_who $P545, $P546
    set $P544, $P545["Label"]
    unless_null $P544, fallback508
    nqp_get_sc_object $P548, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P544, $P548
  fallback508:
    set $S510, $P101
    concat $S509, $S510, "_done"
    $P549 = $P544."new"($S509 :named("name"))
    set $P106, $P549
    box $P550, 1
    set $P109, $P550
    unless_null $P110, fallback509
    get_hll_global $P553, "GLOBAL"
    get_who $P552, $P553
    set $P551, $P552["$IMM_ARG"]
    unless_null $P551, fallback510
    nqp_get_sc_object $P554, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P554
  fallback510:
    unless_null $P551, vivi_146511
    die "Contextual $*IMM_ARG not found"
    box $P555, "Contextual $*IMM_ARG not found"
    set $P551, $P555
  vivi_146511:
    set $P110, $P551
  fallback509:
.annotate 'line', 861
    $P559 = _lex_param_1."list"()
    set $P556, $P559
    iter $P558, $P559
    new $P561, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P561, for_handlers527
    push_eh $P561
  for_next528:
    unless $P558, for_done530
    shift $P562, $P558
  for_redo529:
    .const 'Sub' $P560 = 'cuid_202_1346233447.816' 
    capture_lex $P560
    $P556 = $P560($P562)
    goto for_next528
  for_handlers527:
    .get_results ($P561)
    pop_upto_eh $P561
    getattribute $P561, $P561, 'type'
    eq $P561, .CONTROL_LOOP_NEXT, for_next528
    eq $P561, .CONTROL_LOOP_REDO, for_redo529
  for_done530:
    pop_eh 
    set $P563, $P108[0]
    unless_null $P563, fallback533
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P563, $P564
  fallback533:
    set $S511, $P563
    set $P565, $P108[1]
    unless_null $P565, fallback534
    nqp_get_sc_object $P566, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P565, $P566
  fallback534:
    set $S512, $P565
    iseq $I501, $S511, $S512
    unless $I501 goto if153_else531 
    set $P567, $P108[0]
    unless_null $P567, fallback535
    nqp_get_sc_object $P568, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P567, $P568
  fallback535:
    set $S514, $P567
    downcase $S513, $S514
    set $S515, $S513
    goto if153_end532
  if153_else531:
    set $S515, "p"
  if153_end532:
    box $P569, $S515
    set $P111, $P569
.annotate 'line', 874
    find_dynamic_lex $P570, "$*REGALLOC"
    unless_null $P570, fallback536
    get_hll_global $P573, "GLOBAL"
    get_who $P572, $P573
    set $P571, $P572["$REGALLOC"]
    unless_null $P571, fallback537
    nqp_get_sc_object $P574, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P571, $P574
  fallback537:
    unless_null $P571, vivi_154538
    die "Contextual $*REGALLOC not found"
    box $P575, "Contextual $*REGALLOC not found"
    set $P571, $P575
  vivi_154538:
    set $P570, $P571
  fallback536:
    set $S517, $P111
    concat $S516, "fresh_", $S517
    $P576 = $P570.$S516()
    set $P112, $P576
    set $N501, $P107
    box $P577, $N501
    set $P113, $P577
    set $N502, $P113
    set $N503, 2
    isne $I502, $N502, $N503
    set $I504, $I502
    unless $I502 goto if156_end542 
    set $N504, $P113
    set $N505, 3
    isne $I503, $N504, $N505
    set $I504, $I503
  if156_end542:
    box $P582, $I504
    set $P581, $P582
    unless $I504 goto if155_end540 
    find_lex $P578, "$repness"
    set $S521, $P578
    concat $S520, "Operation '", $S521
    find_lex $P579, "$op_name"
    set $S522, $P579
    concat $S519, $S520, $S522
    concat $S518, $S519, "' needs 2 or 3 operands"
    box $P580, $S518
    die $P580
    set $P581, $P580
  if155_end540:
.annotate 'line', 882
    get_hll_global $P586, "GLOBAL"
    nqp_get_package_through_who $P585, $P586, "PIRT"
    get_who $P584, $P585
    set $P583, $P584["Ops"]
    unless_null $P583, fallback543
    nqp_get_sc_object $P587, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P583, $P587
  fallback543:
    $P588 = $P583."new"()
    set $P114, $P588
.annotate 'line', 883
    $P589 = $P114."result"($P112)
    set $P600, $P109
    unless $P109 goto if157_end545 
.annotate 'line', 886
.annotate 'line', 887
    find_dynamic_lex $P590, "$*REGALLOC"
    unless_null $P590, fallback546
    get_hll_global $P593, "GLOBAL"
    get_who $P592, $P593
    set $P591, $P592["$REGALLOC"]
    unless_null $P591, fallback547
    nqp_get_sc_object $P594, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P591, $P594
  fallback547:
    unless_null $P591, vivi_158548
    die "Contextual $*REGALLOC not found"
    box $P595, "Contextual $*REGALLOC not found"
    set $P591, $P595
  vivi_158548:
    set $P590, $P591
  fallback546:
    $P596 = $P590."fresh_p"()
    set $P115, $P596
.annotate 'line', 888
    $P597 = $P114."push_pirop"("new", $P115, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 890
    $P598 = $P114."push_pirop"("set_label", $P115, $P105)
.annotate 'line', 891
    $P599 = $P114."push_pirop"("push_eh", $P115)
    set $P600, $P599
  if157_end545:
.annotate 'line', 896
    set $P601, $P107[0]
    unless_null $P601, fallback549
    nqp_get_sc_object $P602, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P601, $P602
  fallback549:
    $P603 = _lex_param_0."coerce"($P601, $P111)
    set $P116, $P603
    find_lex $P604, "$repness"
    set $P608, $P604
    unless $P604 goto if159_end551 
.annotate 'line', 897
.annotate 'line', 900
    $P605 = $P116."result"()
    $P606 = $P114."push_pirop"("null", $P605)
.annotate 'line', 901
    $P607 = $P114."push_pirop"("goto", $P104)
    set $P608, $P607
  if159_end551:
.annotate 'line', 903
    $P609 = $P114."push"($P102)
.annotate 'line', 904
    $P610 = $P114."push"($P116)
.annotate 'line', 905
    $P611 = $P116."result"()
    $P612 = $P114."push_pirop"("set", $P112, $P611)
.annotate 'line', 906
    find_lex $P613, "$op_name"
    set $S526, $P613
    iseq $I505, $S526, "while"
    unless $I505 goto if160_else552 
    set $S527, "unless "
    goto if160_end553
  if160_else552:
    set $S527, "if "
  if160_end553:
.annotate 'line', 907
    set $P614, $P107[0]
    unless_null $P614, fallback554
    nqp_get_sc_object $P615, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P614, $P615
  fallback554:
    $P616 = $P614."result"()
    set $S528, $P616
    concat $S525, $S527, $S528
    concat $S524, $S525, " goto "
    $P617 = $P106."result"()
    set $S529, $P617
    concat $S523, $S524, $S529
    $P618 = $P114."push_pirop"($S523)
    unless_null $P110, fallback557
    get_hll_global $P621, "GLOBAL"
    get_who $P620, $P621
    set $P619, $P620["$IMM_ARG"]
    unless_null $P619, fallback558
    nqp_get_sc_object $P622, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P619, $P622
  fallback558:
    unless_null $P619, vivi_162559
    die "Contextual $*IMM_ARG not found"
    box $P623, "Contextual $*IMM_ARG not found"
    set $P619, $P623
  vivi_162559:
    set $P110, $P619
  fallback557:
    set $P631, $P110
    unless $P110 goto if161_end556 
.annotate 'line', 910
.annotate 'line', 911
    $P629 = $P116."result"()
    unless_null $P110, fallback560
    get_hll_global $P626, "GLOBAL"
    get_who $P625, $P626
    set $P624, $P625["$IMM_ARG"]
    unless_null $P624, fallback561
    nqp_get_sc_object $P627, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P624, $P627
  fallback561:
    unless_null $P624, vivi_163562
    die "Contextual $*IMM_ARG not found"
    box $P628, "Contextual $*IMM_ARG not found"
    set $P624, $P628
  vivi_163562:
    set $P110, $P624
  fallback560:
    $P630 = $P110($P629)
    set $P631, $P630
  if161_end556:
.annotate 'line', 915
    set $P632, $P107[1]
    unless_null $P632, fallback563
    nqp_get_sc_object $P633, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P632, $P633
  fallback563:
    $P634 = _lex_param_0."coerce"($P632, $P111)
    set $P117, $P634
.annotate 'line', 916
    $P635 = $P114."push"($P104)
.annotate 'line', 917
    $P636 = $P114."push"($P117)
.annotate 'line', 918
    $P637 = $P117."result"()
    $P638 = $P114."push_pirop"("set", $P112, $P637)
    set $N506, $P113
    set $N507, 3
    iseq $I506, $N506, $N507
    box $P644, $I506
    set $P643, $P644
    unless $I506 goto if164_end565 
.annotate 'line', 922
.annotate 'line', 923
    $P639 = $P114."push"($P103)
.annotate 'line', 924
    set $P640, $P107[2]
    unless_null $P640, fallback566
    nqp_get_sc_object $P641, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P640, $P641
  fallback566:
    $P642 = $P114."push"($P640)
    set $P643, $P642
  if164_end565:
.annotate 'line', 928
    $P645 = $P102."result"()
    set $S531, $P645
    concat $S530, "goto ", $S531
    $P646 = $P114."push_pirop"($S530)
    set $P656, $P109
    unless $P109 goto if165_end568 
.annotate 'line', 931
.annotate 'line', 932
    $P647 = $P114."push"($P105)
.annotate 'line', 933
    set $S534, $P115
    concat $S533, "(", $S534
    concat $S532, $S533, ")"
    $P648 = $P114."push_pirop"(".get_results", $S532)
.annotate 'line', 934
    $P649 = $P114."push_pirop"("pop_upto_eh", $P115)
.annotate 'line', 935
    $P650 = $P114."push_pirop"("getattribute", $P115, $P115, "'type'")
.annotate 'line', 936
    set $N508, $P113
    set $N509, 3
    iseq $I507, $N508, $N509
    unless $I507 goto if166_else569 
    set $P651, $P103
    goto if166_end570
  if166_else569:
    set $P651, $P102
  if166_end570:
    $P652 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_NEXT", $P651)
.annotate 'line', 938
    $P653 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_REDO", $P104)
.annotate 'line', 939
    $P654 = $P114."push"($P106)
.annotate 'line', 940
    $P655 = $P114."push_pirop"("pop_eh")
    set $P656, $P655
  if165_end568:
    .return ($P114) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346233447.816") :anon :lex :outer("cuid_203_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 861
    .param pmc _lex_param_0 
    .const 'Sub' $P506 = 'cuid_201_1346233447.816' 
    capture_lex $P506 
    .lex "$_", _lex_param_0 
.annotate 'line', 862
    $P501 = _lex_param_0."named"()
    set $S501, $P501
    iseq $I501, $S501, "nohandler"
    unless $I501 goto if147_else512 
    box $P502, 0
    store_lex "$handler", $P502
    set $P505, $P502
    goto if147_end513
  if147_else512:
    .const 'Sub' $P503 = 'cuid_201_1346233447.816' 
    capture_lex $P503
    $P504 = $P503()
    set $P505, $P504
  if147_end513:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346233447.816") :anon :lex :outer("cuid_202_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 863
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$comp", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 864
    find_lex $P503, "$_"
    $P504 = $P503."arity"()
    set $N501, $P504
    set $N502, 0
    isgt $I501, $N501, $N502
    set $I505, $I501
    unless $I501 goto if148_end515 
    find_lex $P505, "$_"
    get_id $I503, $P505
    find_lex $P507, "$op"
    $P508 = $P507."list"()
    set $P506, $P508[1]
    unless_null $P506, fallback516
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback516:
    get_id $I504, $P506
    iseq $I502, $I503, $I504
    set $I505, $I502
  if148_end515:
    box $P510, $I505
    set $P101, $P510
.annotate 'line', 865
    find_lex $P511, "$qastcomp"
    find_lex $P512, "$_"
    $P513 = $P511."as_post"($P512)
    set $P102, $P513
.annotate 'line', 866
    find_lex $P514, "@comp_ops"
    $P515 = $P514."push"($P102)
.annotate 'line', 867
    find_lex $P516, "@comp_types"
    find_lex $P517, "$qastcomp"
    $P518 = $P102."result"()
    $P519 = $P517."infer_type"($P518)
    $P520 = $P516."push"($P519)
    unless_null $P101, fallback521
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    set $P521, $P522["$HAVE_IMM_ARG"]
    unless_null $P521, fallback522
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P524
  fallback522:
    unless_null $P521, vivi_151523
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P525, "Contextual $*HAVE_IMM_ARG not found"
    set $P521, $P525
  vivi_151523:
    set $P101, $P521
  fallback521:
    set $P532, $P101
    unless $P101 goto if150_end520 
    find_dynamic_lex $P526, "$*IMM_ARG"
    unless_null $P526, fallback524
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    set $P527, $P528["$IMM_ARG"]
    unless_null $P527, fallback525
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P530
  fallback525:
    unless_null $P527, vivi_152526
    die "Contextual $*IMM_ARG not found"
    box $P531, "Contextual $*IMM_ARG not found"
    set $P527, $P531
  vivi_152526:
    set $P526, $P527
  fallback524:
    isfalse $I506, $P526
    box $P533, $I506
    set $P532, $P533
  if150_end520:
    set $P536, $P532
    unless $P532 goto if149_end518 
.annotate 'line', 868
    find_lex $P534, "$op_name"
    set $S502, $P534
    concat $S501, $S502, " block expects an argument, but there's no immediate block to take it"
    box $P535, $S501
    die $P535
    set $P536, $P535
  if149_end518:
    .return ($P536) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 948
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P638 = 'cuid_206_1346233447.816' 
    capture_lex $P638 
    .lex "$res", $P101 
    .lex "$curval", $P102 
    .lex "$iter", $P103 
    .lex "$ops", $P104 
    .lex "$listpost", $P105 
    .lex "$blockpost", $P106 
    .lex "$handler", $P107 
    .lex "$exc_reg", $P108 
    .lex "$hand_lbl", $P109 
    .lex "$lbl_next", $P110 
    .lex "$lbl_redo", $P111 
    .lex "$lbl_done", $P112 
    .lex "@valreg", $P113 
    .lex "$arity", $P114 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
    new $P513, 'ResizablePMCArray'
    set $P113, $P513
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P114, $P514
.annotate 'line', 949
    $P515 = _lex_param_1."list"()
    set $N501, $P515
    set $N502, 2
    isne $I501, $N501, $N502
    box $P518, $I501
    set $P517, $P518
    unless $I501 goto if167_end581 
    box $P516, "Operation 'for' needs 2 operands"
    die $P516
    set $P517, $P516
  if167_end581:
    set $P519, _lex_param_1[1]
    unless_null $P519, fallback584
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P520
  fallback584:
    get_hll_global $P524, "GLOBAL"
    nqp_get_package_through_who $P523, $P524, "QAST"
    get_who $P522, $P523
    set $P521, $P522["Block"]
    unless_null $P521, fallback585
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P525
  fallback585:
    type_check $I502, $P519, $P521
    box $P528, $I502
    set $P527, $P528
    if $I502 goto unless168_end583 
.annotate 'line', 952
    box $P526, "Operation 'for' expects a block as its second operand"
    die $P526
    set $P527, $P526
  unless168_end583:
.annotate 'line', 955
    set $P529, _lex_param_1[1]
    unless_null $P529, fallback588
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P530
  fallback588:
    $P531 = $P529."blocktype"()
    set $S501, $P531
    iseq $I503, $S501, "immediate"
    box $P536, $I503
    set $P535, $P536
    unless $I503 goto if169_end587 
.annotate 'line', 956
    set $P532, _lex_param_1[1]
    unless_null $P532, fallback589
    nqp_get_sc_object $P533, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P533
  fallback589:
    $P534 = $P532."blocktype"("declaration")
    set $P535, $P534
  if169_end587:
.annotate 'line', 960
    find_dynamic_lex $P537, "$*REGALLOC"
    unless_null $P537, fallback590
    get_hll_global $P540, "GLOBAL"
    get_who $P539, $P540
    set $P538, $P539["$REGALLOC"]
    unless_null $P538, fallback591
    nqp_get_sc_object $P541, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P538, $P541
  fallback591:
    unless_null $P538, vivi_170592
    die "Contextual $*REGALLOC not found"
    box $P542, "Contextual $*REGALLOC not found"
    set $P538, $P542
  vivi_170592:
    set $P537, $P538
  fallback590:
    $P543 = $P537."fresh_p"()
    set $P101, $P543
.annotate 'line', 961
    find_dynamic_lex $P544, "$*REGALLOC"
    unless_null $P544, fallback593
    get_hll_global $P547, "GLOBAL"
    get_who $P546, $P547
    set $P545, $P546["$REGALLOC"]
    unless_null $P545, fallback594
    nqp_get_sc_object $P548, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P545, $P548
  fallback594:
    unless_null $P545, vivi_171595
    die "Contextual $*REGALLOC not found"
    box $P549, "Contextual $*REGALLOC not found"
    set $P545, $P549
  vivi_171595:
    set $P544, $P545
  fallback593:
    $P550 = $P544."fresh_p"()
    set $P102, $P550
.annotate 'line', 962
    find_dynamic_lex $P551, "$*REGALLOC"
    unless_null $P551, fallback596
    get_hll_global $P554, "GLOBAL"
    get_who $P553, $P554
    set $P552, $P553["$REGALLOC"]
    unless_null $P552, fallback597
    nqp_get_sc_object $P555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P552, $P555
  fallback597:
    unless_null $P552, vivi_172598
    die "Contextual $*REGALLOC not found"
    box $P556, "Contextual $*REGALLOC not found"
    set $P552, $P556
  vivi_172598:
    set $P551, $P552
  fallback596:
    $P557 = $P551."fresh_p"()
    set $P103, $P557
.annotate 'line', 963
    get_hll_global $P561, "GLOBAL"
    nqp_get_package_through_who $P560, $P561, "PIRT"
    get_who $P559, $P560
    set $P558, $P559["Ops"]
    unless_null $P558, fallback599
    nqp_get_sc_object $P562, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P558, $P562
  fallback599:
    $P563 = $P558."new"()
    set $P104, $P563
.annotate 'line', 964
    set $P564, _lex_param_1[0]
    unless_null $P564, fallback600
    nqp_get_sc_object $P565, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P564, $P565
  fallback600:
    $P566 = _lex_param_0."as_post"($P564)
    $P567 = _lex_param_0."coerce"($P566, "P")
    set $P105, $P567
.annotate 'line', 965
    set $P568, _lex_param_1[1]
    unless_null $P568, fallback601
    nqp_get_sc_object $P569, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P568, $P569
  fallback601:
    $P570 = _lex_param_0."as_post"($P568)
    $P571 = _lex_param_0."coerce"($P570, "P")
    set $P106, $P571
.annotate 'line', 966
    $P572 = $P104."push"($P105)
.annotate 'line', 969
    $P573 = $P104."push_pirop"("set", $P101, $P105)
.annotate 'line', 970
    $P574 = $P104."push_pirop"("iter", $P103, $P105)
    box $P575, 1
    set $P107, $P575
    set $P592, $P107
    unless $P107 goto if173_end603 
.annotate 'line', 976
.annotate 'line', 977
    find_dynamic_lex $P576, "$*REGALLOC"
    unless_null $P576, fallback604
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    set $P577, $P578["$REGALLOC"]
    unless_null $P577, fallback605
    nqp_get_sc_object $P580, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P577, $P580
  fallback605:
    unless_null $P577, vivi_174606
    die "Contextual $*REGALLOC not found"
    box $P581, "Contextual $*REGALLOC not found"
    set $P577, $P581
  vivi_174606:
    set $P576, $P577
  fallback604:
    $P582 = $P576."fresh_p"()
    set $P108, $P582
.annotate 'line', 978
    get_hll_global $P586, "GLOBAL"
    nqp_get_package_through_who $P585, $P586, "PIRT"
    get_who $P584, $P585
    set $P583, $P584["Label"]
    unless_null $P583, fallback607
    nqp_get_sc_object $P587, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P583, $P587
  fallback607:
    $P588 = $P583."new"("for_handlers" :named("name"))
    set $P109, $P588
.annotate 'line', 979
    $P589 = $P104."push_pirop"("new", $P108, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 981
    $P590 = $P104."push_pirop"("set_label", $P108, $P109)
.annotate 'line', 982
    $P591 = $P104."push_pirop"("push_eh", $P108)
    set $P592, $P591
  if173_end603:
.annotate 'line', 986
    get_hll_global $P596, "GLOBAL"
    nqp_get_package_through_who $P595, $P596, "PIRT"
    get_who $P594, $P595
    set $P593, $P594["Label"]
    unless_null $P593, fallback608
    nqp_get_sc_object $P597, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P593, $P597
  fallback608:
    $P598 = $P593."new"("for_next" :named("name"))
    set $P110, $P598
.annotate 'line', 987
    get_hll_global $P602, "GLOBAL"
    nqp_get_package_through_who $P601, $P602, "PIRT"
    get_who $P600, $P601
    set $P599, $P600["Label"]
    unless_null $P599, fallback609
    nqp_get_sc_object $P603, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P599, $P603
  fallback609:
    $P604 = $P599."new"("for_redo" :named("name"))
    set $P111, $P604
.annotate 'line', 988
    get_hll_global $P608, "GLOBAL"
    nqp_get_package_through_who $P607, $P608, "PIRT"
    get_who $P606, $P607
    set $P605, $P606["Label"]
    unless_null $P605, fallback610
    nqp_get_sc_object $P609, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P605, $P609
  fallback610:
    $P610 = $P605."new"("for_done" :named("name"))
    set $P112, $P610
.annotate 'line', 989
    $P611 = $P104."push"($P110)
.annotate 'line', 990
    $P612 = $P104."push_pirop"("unless", $P103, $P112)
.annotate 'line', 994
    set $P613, _lex_param_1[1]
    unless_null $P613, fallback613
    nqp_get_sc_object $P614, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P613, $P614
  fallback613:
    $P615 = $P613."arity"()
    set $P616, $P615
    if $P615 goto unless175_end612 
    box $P617, 1
    set $P616, $P617
  unless175_end612:
    set $P114, $P616
    new $P621, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P621, while176_handlers617
    push_eh $P621
  while176_test614:
    set $N503, $P114
    set $N504, 0
    isgt $I504, $N503, $N504
    box $P622, $I504
    set $P620, $P622
    unless $I504 goto while176_done618 
  while176_redo616:
    .const 'Sub' $P618 = 'cuid_206_1346233447.816' 
    capture_lex $P618
    $P619 = $P618()
    set $P620, $P619
    goto while176_test614 
  while176_handlers617:
    .get_results ($P621)
    pop_upto_eh $P621
    getattribute $P621, $P621, 'type'
    eq $P621, .CONTROL_LOOP_NEXT, while176_test614
    eq $P621, .CONTROL_LOOP_REDO, while176_redo616
  while176_done618:
    pop_eh 
.annotate 'line', 1003
    $P623 = $P104."push"($P111)
.annotate 'line', 1004
    $P624 = $P104."push"($P106)
.annotate 'line', 1005
    $P625 = $P104."push_pirop"("call", $P106, $P113 :flat, $P101 :named("result"))
.annotate 'line', 1008
    $P626 = $P104."push_pirop"("goto", $P110)
    unless $P107 goto if178_else622 
.annotate 'line', 1011
.annotate 'line', 1012
    $P627 = $P104."push"($P109)
.annotate 'line', 1013
    set $S504, $P108
    concat $S503, "(", $S504
    concat $S502, $S503, ")"
    $P628 = $P104."push_pirop"(".get_results", $S502)
.annotate 'line', 1014
    $P629 = $P104."push_pirop"("pop_upto_eh", $P108)
.annotate 'line', 1015
    $P630 = $P104."push_pirop"("getattribute", $P108, $P108, "'type'")
.annotate 'line', 1016
    $P631 = $P104."push_pirop"("eq", $P108, ".CONTROL_LOOP_NEXT", $P110)
.annotate 'line', 1017
    $P632 = $P104."push_pirop"("eq", $P108, ".CONTROL_LOOP_REDO", $P111)
.annotate 'line', 1018
    $P633 = $P104."push"($P112)
.annotate 'line', 1019
    $P634 = $P104."push_pirop"("pop_eh")
    set $P636, $P634
    goto if178_end623
  if178_else622:
.annotate 'line', 1021
.annotate 'line', 1022
    $P635 = $P104."push"($P112)
    set $P636, $P635
  if178_end623:
.annotate 'line', 1026
    $P637 = $P104."result"($P101)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346233447.816") :anon :lex :outer("cuid_207_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 995
    .lex "$reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 996
    find_dynamic_lex $P502, "$*REGALLOC"
    unless_null $P502, fallback619
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$REGALLOC"]
    unless_null $P503, fallback620
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback620:
    unless_null $P503, vivi_177621
    die "Contextual $*REGALLOC not found"
    box $P507, "Contextual $*REGALLOC not found"
    set $P503, $P507
  vivi_177621:
    set $P502, $P503
  fallback619:
    $P508 = $P502."fresh_p"()
    set $P101, $P508
.annotate 'line', 997
    find_lex $P509, "$ops"
    find_lex $P510, "$iter"
    $P511 = $P509."push_pirop"("shift", $P101, $P510)
    find_lex $P512, "@valreg"
    push $P512, $P101
    find_lex $P513, "$arity"
    set $N502, $P513
    set $N503, 1
    sub $N501, $N502, $N503
    box $P514, $N501
    store_lex "$arity", $P514
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$lbl", $P102 
    .lex "$dreg", $P103 
    .lex "$rreg", $P104 
    .lex "$test", $P105 
    .lex "$then", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
.annotate 'line', 1031
    $P507 = _lex_param_1."list"()
    set $N501, $P507
    set $N502, 2
    isne $I501, $N501, $N502
    box $P510, $I501
    set $P509, $P510
    unless $I501 goto if179_end626 
    box $P508, "Operation 'defor' needs 2 operands"
    die $P508
    set $P509, $P508
  if179_end626:
.annotate 'line', 1034
    get_hll_global $P514, "GLOBAL"
    nqp_get_package_through_who $P513, $P514, "PIRT"
    get_who $P512, $P513
    set $P511, $P512["Ops"]
    unless_null $P511, fallback627
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P515
  fallback627:
    $P516 = $P511."new"()
    set $P101, $P516
.annotate 'line', 1035
    get_hll_global $P520, "GLOBAL"
    nqp_get_package_through_who $P519, $P520, "PIRT"
    get_who $P518, $P519
    set $P517, $P518["Label"]
    unless_null $P517, fallback628
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P521
  fallback628:
    $P522 = $P517."new"("defor" :named("name"))
    set $P102, $P522
.annotate 'line', 1036
    find_dynamic_lex $P523, "$*REGALLOC"
    unless_null $P523, fallback629
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["$REGALLOC"]
    unless_null $P524, fallback630
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P527
  fallback630:
    unless_null $P524, vivi_180631
    die "Contextual $*REGALLOC not found"
    box $P528, "Contextual $*REGALLOC not found"
    set $P524, $P528
  vivi_180631:
    set $P523, $P524
  fallback629:
    $P529 = $P523."fresh_i"()
    set $P103, $P529
.annotate 'line', 1037
    find_dynamic_lex $P530, "$*REGALLOC"
    unless_null $P530, fallback632
    get_hll_global $P533, "GLOBAL"
    get_who $P532, $P533
    set $P531, $P532["$REGALLOC"]
    unless_null $P531, fallback633
    nqp_get_sc_object $P534, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P531, $P534
  fallback633:
    unless_null $P531, vivi_181634
    die "Contextual $*REGALLOC not found"
    box $P535, "Contextual $*REGALLOC not found"
    set $P531, $P535
  vivi_181634:
    set $P530, $P531
  fallback632:
    $P536 = $P530."fresh_p"()
    set $P104, $P536
.annotate 'line', 1038
    set $P537, _lex_param_1[0]
    unless_null $P537, fallback635
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P538
  fallback635:
    $P539 = _lex_param_0."as_post"($P537)
    $P540 = _lex_param_0."coerce"($P539, "P")
    set $P105, $P540
.annotate 'line', 1039
    set $P541, _lex_param_1[1]
    unless_null $P541, fallback636
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P542
  fallback636:
    $P543 = _lex_param_0."as_post"($P541)
    $P544 = _lex_param_0."coerce"($P543, "P")
    set $P106, $P544
.annotate 'line', 1040
    $P545 = $P101."push"($P105)
.annotate 'line', 1041
    $P546 = $P101."push_pirop"("set", $P104, $P105)
.annotate 'line', 1042
    $P547 = $P101."push_pirop"("defined", $P103, $P104)
.annotate 'line', 1043
    $P548 = $P101."push_pirop"("if", $P103, $P102)
.annotate 'line', 1044
    $P549 = $P101."push"($P106)
.annotate 'line', 1045
    $P550 = $P101."push_pirop"("set", $P104, $P106)
.annotate 'line', 1046
    $P551 = $P101."push"($P102)
.annotate 'line', 1047
    $P552 = $P101."result"($P104)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1051
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P587 = 'cuid_209_1346233447.816' 
    capture_lex $P587 
    .const 'Sub' $P587 = 'cuid_212_1346233447.816' 
    capture_lex $P587 
    .const 'Sub' $P587 = 'cuid_213_1346233447.816' 
    capture_lex $P587 
    .lex "$ops", $P101 
    .lex "$falselabel", $P102 
    .lex "$endlabel", $P103 
    .lex "@childlist", $P104 
    .lex "$fpast", $P105 
    .lex "$i", $P106 
    .lex "$t", $P107 
    .lex "$u", $P108 
    .lex "$apast", $P109 
    .lex "$apost", $P110 
    .lex "$have_middle_child", $P111 
    .lex "$bpost", $P112 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
.annotate 'line', 1052
    get_hll_global $P516, "GLOBAL"
    nqp_get_package_through_who $P515, $P516, "PIRT"
    get_who $P514, $P515
    set $P513, $P514["Ops"]
    unless_null $P513, fallback638
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P517
  fallback638:
    $P518 = $P513."new"()
    set $P101, $P518
.annotate 'line', 1053
    find_dynamic_lex $P519, "$*REGALLOC"
    unless_null $P519, fallback639
    get_hll_global $P522, "GLOBAL"
    get_who $P521, $P522
    set $P520, $P521["$REGALLOC"]
    unless_null $P520, fallback640
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P523
  fallback640:
    unless_null $P520, vivi_182641
    die "Contextual $*REGALLOC not found"
    box $P524, "Contextual $*REGALLOC not found"
    set $P520, $P524
  vivi_182641:
    set $P519, $P520
  fallback639:
    $P525 = $P519."fresh_p"()
    $P526 = $P101."result"($P525)
.annotate 'line', 1055
    get_hll_global $P530, "GLOBAL"
    nqp_get_package_through_who $P529, $P530, "PIRT"
    get_who $P528, $P529
    set $P527, $P528["Label"]
    unless_null $P527, fallback642
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P531
  fallback642:
    $P532 = $P527."new"("xor_false" :named("name"))
    set $P102, $P532
.annotate 'line', 1056
    get_hll_global $P536, "GLOBAL"
    nqp_get_package_through_who $P535, $P536, "PIRT"
    get_who $P534, $P535
    set $P533, $P534["Label"]
    unless_null $P533, fallback643
    nqp_get_sc_object $P537, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P533, $P537
  fallback643:
    $P538 = $P533."new"("xor_end" :named("name"))
    set $P103, $P538
.annotate 'line', 1060
    $P542 = _lex_param_1."list"()
    set $P539, $P542
    iter $P541, $P542
    new $P544, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P544, for_handlers646
    push_eh $P544
  for_next647:
    unless $P541, for_done649
    shift $P545, $P541
  for_redo648:
    .const 'Sub' $P543 = 'cuid_209_1346233447.816' 
    capture_lex $P543
    $P539 = $P543($P545)
    goto for_next647
  for_handlers646:
    .get_results ($P544)
    pop_upto_eh $P544
    getattribute $P544, $P544, 'type'
    eq $P544, .CONTROL_LOOP_NEXT, for_next647
    eq $P544, .CONTROL_LOOP_REDO, for_redo648
  for_done649:
    pop_eh 
.annotate 'line', 1069
    find_dynamic_lex $P546, "$*REGALLOC"
    unless_null $P546, fallback650
    get_hll_global $P549, "GLOBAL"
    get_who $P548, $P549
    set $P547, $P548["$REGALLOC"]
    unless_null $P547, fallback651
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P547, $P550
  fallback651:
    unless_null $P547, vivi_184652
    die "Contextual $*REGALLOC not found"
    box $P551, "Contextual $*REGALLOC not found"
    set $P547, $P551
  vivi_184652:
    set $P546, $P547
  fallback650:
    $P552 = $P546."fresh_i"()
    set $P106, $P552
.annotate 'line', 1070
    find_dynamic_lex $P553, "$*REGALLOC"
    unless_null $P553, fallback653
    get_hll_global $P556, "GLOBAL"
    get_who $P555, $P556
    set $P554, $P555["$REGALLOC"]
    unless_null $P554, fallback654
    nqp_get_sc_object $P557, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P554, $P557
  fallback654:
    unless_null $P554, vivi_185655
    die "Contextual $*REGALLOC not found"
    box $P558, "Contextual $*REGALLOC not found"
    set $P554, $P558
  vivi_185655:
    set $P553, $P554
  fallback653:
    $P559 = $P553."fresh_i"()
    set $P107, $P559
.annotate 'line', 1071
    find_dynamic_lex $P560, "$*REGALLOC"
    unless_null $P560, fallback656
    get_hll_global $P563, "GLOBAL"
    get_who $P562, $P563
    set $P561, $P562["$REGALLOC"]
    unless_null $P561, fallback657
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P564
  fallback657:
    unless_null $P561, vivi_186658
    die "Contextual $*REGALLOC not found"
    box $P565, "Contextual $*REGALLOC not found"
    set $P561, $P565
  vivi_186658:
    set $P560, $P561
  fallback656:
    $P566 = $P560."fresh_i"()
    set $P108, $P566
    shift $P567, $P104
    set $P109, $P567
.annotate 'line', 1074
    $P568 = _lex_param_0."as_post"($P109)
    $P569 = _lex_param_0."coerce"($P568, "P")
    set $P110, $P569
.annotate 'line', 1075
    $P570 = $P101."push"($P110)
.annotate 'line', 1076
    $P571 = $P101."push_pirop"("set", $P101, $P110)
.annotate 'line', 1077
    $P572 = $P101."push_pirop"("istrue", $P107, $P110)
    box $P573, 1
    set $P111, $P573
    new $P577, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P577, while187_handlers662
    push_eh $P577
  while187_test659:
    set $P576, $P111
    unless $P111 goto while187_done663 
  while187_redo661:
    .const 'Sub' $P574 = 'cuid_212_1346233447.816' 
    capture_lex $P574
    $P575 = $P574()
    set $P576, $P575
    goto while187_test659 
  while187_handlers662:
    .get_results ($P577)
    pop_upto_eh $P577
    getattribute $P577, $P577, 'type'
    eq $P577, .CONTROL_LOOP_NEXT, while187_test659
    eq $P577, .CONTROL_LOOP_REDO, while187_redo661
  while187_done663:
    pop_eh 
.annotate 'line', 1100
    $P578 = $P101."push_pirop"("if", $P107, $P103)
.annotate 'line', 1101
    $P579 = $P101."push_pirop"("set", $P101, $P112)
.annotate 'line', 1102
    $P580 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 1103
    $P581 = $P101."push"($P102)
    unless $P105 goto if189_else667 
    .const 'Sub' $P582 = 'cuid_213_1346233447.816' 
    capture_lex $P582
    $P583 = $P582()
    set $P585, $P583
    goto if189_end668
  if189_else667:
.annotate 'line', 1110
.annotate 'line', 1111
    $P584 = $P101."push_pirop"("new", $P101, "[\"Undef\"]")
    set $P585, $P584
  if189_end668:
.annotate 'line', 1114
    $P586 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1346233447.816") :anon :lex :outer("cuid_210_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1061
    $P501 = _lex_param_0."named"()
    set $S501, $P501
    iseq $I501, $S501, "false"
    unless $I501 goto if183_else644 
    store_lex "$fpast", _lex_param_0
    set $P503, _lex_param_0
    goto if183_end645
  if183_else644:
.annotate 'line', 1064
    find_lex $P502, "@childlist"
    push $P502, _lex_param_0
    set $P503, $P502
  if183_end645:
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1346233447.816") :anon :lex :outer("cuid_210_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1081
    .const 'Sub' $P529 = 'cuid_211_1346233447.816' 
    capture_lex $P529 
    .lex "$bpast", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "@childlist"
    shift $P502, $P503
    set $P101, $P502
.annotate 'line', 1083
    find_lex $P504, "$qastcomp"
    find_lex $P505, "$qastcomp"
    $P506 = $P505."as_post"($P101)
    $P507 = $P504."coerce"($P506, "P")
    store_lex "$bpost", $P507
.annotate 'line', 1084
    find_lex $P508, "$ops"
    find_lex $P509, "$bpost"
    $P510 = $P508."push"($P509)
.annotate 'line', 1085
    find_lex $P511, "$ops"
    find_lex $P512, "$u"
    find_lex $P513, "$bpost"
    $P514 = $P511."push_pirop"("istrue", $P512, $P513)
.annotate 'line', 1086
    find_lex $P515, "$ops"
    find_lex $P516, "$i"
    find_lex $P517, "$t"
    find_lex $P518, "$u"
    $P519 = $P515."push_pirop"("and", $P516, $P517, $P518)
.annotate 'line', 1087
    find_lex $P520, "$ops"
    find_lex $P521, "$i"
    find_lex $P522, "$falselabel"
    $P523 = $P520."push_pirop"("if", $P521, $P522)
    find_lex $P524, "@childlist"
    unless $P524 goto if188_else664 
    .const 'Sub' $P525 = 'cuid_211_1346233447.816' 
    capture_lex $P525
    $P526 = $P525()
    set $P528, $P526
    goto if188_end665
  if188_else664:
.annotate 'line', 1095
    box $P527, 0
    store_lex "$have_middle_child", $P527
    set $P528, $P527
  if188_end665:
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1346233447.816") :anon :lex :outer("cuid_212_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1088
    .lex "$truelabel", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1089
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PIRT"
    get_who $P503, $P504
    set $P502, $P503["Label"]
    unless_null $P502, fallback666
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback666:
    $P507 = $P502."new"("xor_true" :named("name"))
    set $P101, $P507
.annotate 'line', 1090
    find_lex $P508, "$ops"
    find_lex $P509, "$t"
    $P510 = $P508."push_pirop"("if", $P509, $P101)
.annotate 'line', 1091
    find_lex $P511, "$ops"
    find_lex $P512, "$ops"
    find_lex $P513, "$bpost"
    $P514 = $P511."push_pirop"("set", $P512, $P513)
.annotate 'line', 1092
    find_lex $P515, "$ops"
    find_lex $P516, "$t"
    find_lex $P517, "$u"
    $P518 = $P515."push_pirop"("set", $P516, $P517)
.annotate 'line', 1093
    find_lex $P519, "$ops"
    $P520 = $P519."push"($P101)
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1346233447.816") :anon :lex :outer("cuid_210_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1105
    .lex "$fpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1106
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    find_lex $P504, "$fpast"
    $P505 = $P503."as_post"($P504)
    $P506 = $P502."coerce"($P505, "P")
    set $P101, $P506
.annotate 'line', 1107
    find_lex $P507, "$ops"
    $P508 = $P507."push"($P101)
.annotate 'line', 1108
    find_lex $P509, "$ops"
    find_lex $P510, "$ops"
    $P511 = $P509."push_pirop"("set", $P510, $P101)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@children", $P101 
    .lex "$*BINDVAL", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1122
    $P503 = _lex_param_1."list"()
    set $P101, $P503
    set $N501, $P101
    set $N502, 2
    isne $I501, $N501, $N502
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if190_end671 
.annotate 'line', 1123
    box $P504, "A 'bind' op must have exactly two children"
    die $P504
    set $P505, $P504
  if190_end671:
    set $P507, $P101[0]
    unless_null $P507, fallback674
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback674:
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Var"]
    unless_null $P509, fallback675
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback675:
    type_check $I502, $P507, $P509
    box $P516, $I502
    set $P515, $P516
    if $I502 goto unless191_end673 
.annotate 'line', 1126
    box $P514, "First child of a 'bind' op must be a QAST::Var"
    die $P514
    set $P515, $P514
  unless191_end673:
    set $P517, $P101[1]
    unless_null $P517, fallback676
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback676:
    set $P102, $P517
.annotate 'line', 1133
    set $P519, $P101[0]
    unless_null $P519, fallback677
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P520
  fallback677:
    $P521 = _lex_param_0."as_post"($P519)
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1161
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P553 = 'cuid_215_1346233447.816' 
    capture_lex $P553 
    .lex "$callee", $P101 
    .lex "@args", $P102 
    .lex "$ops", $P103 
    .lex "@pos_arg_results", $P104 
    .lex "@named_arg_results", $P105 
    .lex "$res_type", $P106 
    .lex "$res_reg", $P107 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
.annotate 'line', 1164
    $P509 = _lex_param_1."list"()
    clone $P508, $P509
    set $P102, $P508
.annotate 'line', 1165
    $P510 = _lex_param_1."name"()
    unless $P510 goto if192_else679 
.annotate 'line', 1166
    get_hll_global $P514, "GLOBAL"
    nqp_get_package_through_who $P513, $P514, "PIRT"
    get_who $P512, $P513
    set $P511, $P512["Ops"]
    unless_null $P511, fallback681
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P515
  fallback681:
    $P516 = _lex_param_1."name"()
    $P517 = _lex_param_0."escape"($P516)
    $P518 = $P511."new"($P517 :named("result"))
    set $P101, $P518
    set $P523, $P101
    goto if192_end680
  if192_else679:
    set $N501, $P102
    unless $N501 goto if193_else682 
.annotate 'line', 1168
.annotate 'line', 1169
    $P519 = $P102."shift"()
    $P520 = _lex_param_0."as_post"($P519)
    set $P101, $P520
    set $P522, $P101
    goto if193_end683
  if193_else682:
.annotate 'line', 1171
    box $P521, "No name for call and empty children list"
    die $P521
    set $P522, $P521
  if193_end683:
    set $P523, $P522
  if192_end680:
.annotate 'line', 1176
    get_hll_global $P527, "GLOBAL"
    nqp_get_package_through_who $P526, $P527, "PIRT"
    get_who $P525, $P526
    set $P524, $P525["Ops"]
    unless_null $P524, fallback684
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P528
  fallback684:
    $P529 = $P524."new"()
    set $P103, $P529
.annotate 'line', 1177
    $P530 = _lex_param_1."node"()
    set $P533, $P530
    unless $P530 goto if194_end686 
    $P531 = _lex_param_1."node"()
    $P532 = $P103."node"($P531)
    set $P533, $P532
  if194_end686:
    set $P534, $P102
    iter $P536, $P102
    new $P538, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P538, for_handlers687
    push_eh $P538
  for_next688:
    unless $P536, for_done690
    shift $P539, $P536
  for_redo689:
    .const 'Sub' $P537 = 'cuid_215_1346233447.816' 
    capture_lex $P537
    $P534 = $P537($P539)
    goto for_next688
  for_handlers687:
    .get_results ($P538)
    pop_upto_eh $P538
    getattribute $P538, $P538, 'type'
    eq $P538, .CONTROL_LOOP_NEXT, for_next688
    eq $P538, .CONTROL_LOOP_REDO, for_redo689
  for_done690:
    pop_eh 
.annotate 'line', 1185
    $P540 = _lex_param_1."returns"()
    $P541 = _lex_param_0."type_to_register_type"($P540)
    set $P106, $P541
.annotate 'line', 1186
    find_dynamic_lex $P542, "$*REGALLOC"
    unless_null $P542, fallback691
    get_hll_global $P545, "GLOBAL"
    get_who $P544, $P545
    set $P543, $P544["$REGALLOC"]
    unless_null $P543, fallback692
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P543, $P546
  fallback692:
    unless_null $P543, vivi_195693
    die "Contextual $*REGALLOC not found"
    box $P547, "Contextual $*REGALLOC not found"
    set $P543, $P547
  vivi_195693:
    set $P542, $P543
  fallback691:
    set $S503, $P106
    downcase $S502, $S503
    concat $S501, "fresh_", $S502
    $P548 = $P542.$S501()
    set $P107, $P548
.annotate 'line', 1189
    $P549 = $P103."push"($P101)
.annotate 'line', 1190
    $P550 = $P101."result"()
    $P551 = $P103."push_pirop"("call", $P550, $P104 :flat, $P105 :flat, $P107 :named("result"))
.annotate 'line', 1193
    $P552 = $P103."result"($P107)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1346233447.816") :anon :lex :outer("cuid_216_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1180
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1181
    find_lex $P501, "$qastcomp"
    find_lex $P502, "$ops"
    find_lex $P503, "@pos_arg_results"
    find_lex $P504, "@named_arg_results"
    $P505 = "&handle_arg"(_lex_param_0, $P501, $P502, $P503, $P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P558 = 'cuid_217_1346233447.816' 
    capture_lex $P558 
    .const 'Sub' $P558 = 'cuid_219_1346233447.816' 
    capture_lex $P558 
    .lex "@args", $P101 
    .lex "$name", $P102 
    .lex "$ops", $P103 
    .lex "@pos_arg_results", $P104 
    .lex "@named_arg_results", $P105 
    .lex "$inv", $P106 
    .lex "$res_type", $P107 
    .lex "$res_reg", $P108 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
.annotate 'line', 1198
    $P510 = _lex_param_1."list"()
    clone $P509, $P510
    set $P101, $P509
    set $N501, $P101
    set $N502, 0
    iseq $I501, $N501, $N502
    box $P513, $I501
    set $P512, $P513
    unless $I501 goto if196_end696 
.annotate 'line', 1199
    box $P511, "Method call node requires at least one child"
    die $P511
    set $P512, $P511
  if196_end696:
.annotate 'line', 1205
    $P514 = _lex_param_1."name"()
    unless $P514 goto if197_else697 
.annotate 'line', 1206
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "PIRT"
    get_who $P516, $P517
    set $P515, $P516["Ops"]
    unless_null $P515, fallback699
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback699:
    $P520 = _lex_param_1."name"()
    $P521 = _lex_param_0."escape"($P520)
    $P522 = $P515."new"($P521 :named("result"))
    set $P102, $P522
    set $P527, $P102
    goto if197_end698
  if197_else697:
    set $N503, $P101
    set $N504, 2
    isge $I502, $N503, $N504
    unless $I502 goto if198_else700 
    .const 'Sub' $P523 = 'cuid_217_1346233447.816' 
    capture_lex $P523
    $P524 = $P523()
    set $P526, $P524
    goto if198_end701
  if198_else700:
.annotate 'line', 1213
    box $P525, "Method call must either supply a name or have a child node that evaluates to the name"
    die $P525
    set $P526, $P525
  if198_end701:
    set $P527, $P526
  if197_end698:
.annotate 'line', 1218
    get_hll_global $P531, "GLOBAL"
    nqp_get_package_through_who $P530, $P531, "PIRT"
    get_who $P529, $P530
    set $P528, $P529["Ops"]
    unless_null $P528, fallback702
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P532
  fallback702:
    $P533 = $P528."new"()
    set $P103, $P533
.annotate 'line', 1219
    $P534 = _lex_param_1."node"()
    set $P537, $P534
    unless $P534 goto if199_end704 
    $P535 = _lex_param_1."node"()
    $P536 = $P103."node"($P535)
    set $P537, $P536
  if199_end704:
    box $P538, 1
    set $P106, $P538
    set $P539, $P101
    iter $P541, $P101
    new $P543, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P543, for_handlers707
    push_eh $P543
  for_next708:
    unless $P541, for_done710
    shift $P544, $P541
  for_redo709:
    .const 'Sub' $P542 = 'cuid_219_1346233447.816' 
    capture_lex $P542
    $P539 = $P542($P544)
    goto for_next708
  for_handlers707:
    .get_results ($P543)
    pop_upto_eh $P543
    getattribute $P543, $P543, 'type'
    eq $P543, .CONTROL_LOOP_NEXT, for_next708
    eq $P543, .CONTROL_LOOP_REDO, for_redo709
  for_done710:
    pop_eh 
.annotate 'line', 1234
    $P545 = _lex_param_1."returns"()
    $P546 = _lex_param_0."type_to_register_type"($P545)
    set $P107, $P546
.annotate 'line', 1235
    find_dynamic_lex $P547, "$*REGALLOC"
    unless_null $P547, fallback711
    get_hll_global $P550, "GLOBAL"
    get_who $P549, $P550
    set $P548, $P549["$REGALLOC"]
    unless_null $P548, fallback712
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P548, $P551
  fallback712:
    unless_null $P548, vivi_201713
    die "Contextual $*REGALLOC not found"
    box $P552, "Contextual $*REGALLOC not found"
    set $P548, $P552
  vivi_201713:
    set $P547, $P548
  fallback711:
    set $S503, $P107
    downcase $S502, $S503
    concat $S501, "fresh_", $S502
    $P553 = $P547.$S501()
    set $P108, $P553
.annotate 'line', 1238
    $P554 = $P103."push"($P102)
.annotate 'line', 1239
    $P555 = $P102."result"()
    $P556 = $P103."push_pirop"("callmethod", $P555, $P104 :flat, $P105 :flat, $P108 :named("result"))
.annotate 'line', 1242
    $P557 = $P103."result"($P108)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1346233447.816") :anon :lex :outer("cuid_218_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1208
    .lex "$invocant", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1209
    find_lex $P502, "@args"
    $P503 = $P502."shift"()
    set $P101, $P503
.annotate 'line', 1210
    find_lex $P504, "$qastcomp"
    find_lex $P505, "$qastcomp"
    find_lex $P506, "@args"
    $P507 = $P506."shift"()
    $P508 = $P505."as_post"($P507)
    $P509 = $P504."coerce"($P508, "s")
    store_lex "$name", $P509
.annotate 'line', 1211
    find_lex $P510, "@args"
    $P511 = $P510."unshift"($P101)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1346233447.816") :anon :lex :outer("cuid_218_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1223
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$inv"
    unless $P501 goto if200_else705 
.annotate 'line', 1224
.annotate 'line', 1225
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$ops"
    find_lex $P504, "@pos_arg_results"
    find_lex $P505, "@named_arg_results"
    $P506 = "&handle_arg"(_lex_param_0, $P502, $P503, $P504, $P505, "P" :named("coerce"))
    box $P507, 0
    store_lex "$inv", $P507
    set $P513, $P507
    goto if200_end706
  if200_else705:
.annotate 'line', 1228
.annotate 'line', 1229
    find_lex $P508, "$qastcomp"
    find_lex $P509, "$ops"
    find_lex $P510, "@pos_arg_results"
    find_lex $P511, "@named_arg_results"
    $P512 = "&handle_arg"(_lex_param_0, $P508, $P509, $P510, $P511)
    set $P513, $P512
  if200_end706:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$label1", $P101 
    .lex "$label2", $P102 
    .lex "$lexname", $P103 
    .lex "$ops", $P104 
    .lex "$handler", $P105 
    .lex "$cpost", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
.annotate 'line', 1247
    get_hll_global $P510, "GLOBAL"
    nqp_get_package_through_who $P509, $P510, "PIRT"
    get_who $P508, $P509
    set $P507, $P508["Label"]
    unless_null $P507, fallback715
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P511
  fallback715:
    $P512 = $P507."new"("lexotic_" :named("name"))
    set $P101, $P512
.annotate 'line', 1248
    get_hll_global $P516, "GLOBAL"
    nqp_get_package_through_who $P515, $P516, "PIRT"
    get_who $P514, $P515
    set $P513, $P514["Label"]
    unless_null $P513, fallback716
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P517
  fallback716:
    $P518 = $P513."new"("lexotic_" :named("name"))
    set $P102, $P518
.annotate 'line', 1249
    $P519 = _lex_param_1."name"()
    $P520 = _lex_param_0."escape"($P519)
    set $P103, $P520
.annotate 'line', 1251
    get_hll_global $P524, "GLOBAL"
    nqp_get_package_through_who $P523, $P524, "PIRT"
    get_who $P522, $P523
    set $P521, $P522["Ops"]
    unless_null $P521, fallback717
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P525
  fallback717:
    $P526 = $P521."new"()
    set $P104, $P526
.annotate 'line', 1252
    find_dynamic_lex $P527, "$*BLOCK"
    unless_null $P527, fallback718
    get_hll_global $P530, "GLOBAL"
    get_who $P529, $P530
    set $P528, $P529["$BLOCK"]
    unless_null $P528, fallback719
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P531
  fallback719:
    unless_null $P528, vivi_202720
    die "Contextual $*BLOCK not found"
    box $P532, "Contextual $*BLOCK not found"
    set $P528, $P532
  vivi_202720:
    set $P527, $P528
  fallback718:
    $P533 = $P527."fresh_lex_p"()
    set $P105, $P533
.annotate 'line', 1253
    $P534 = $P104."push_pirop"("root_new", $P105, "['parrot';'Continuation']")
.annotate 'line', 1254
    $P535 = $P104."push_pirop"("set_label", $P105, $P101)
.annotate 'line', 1255
    $P536 = $P104."push_pirop"(".lex", $P103, $P105)
.annotate 'line', 1257
    $P537 = _lex_param_1."list"()
    $P538 = _lex_param_0."compile_all_the_stmts"($P537)
    $P539 = _lex_param_0."coerce"($P538, "P")
    set $P106, $P539
.annotate 'line', 1258
    $P540 = $P104."push"($P106)
.annotate 'line', 1259
    $P541 = $P104."result"($P106)
.annotate 'line', 1261
    $P542 = $P104."push_pirop"("goto", $P102)
.annotate 'line', 1262
    $P543 = $P104."push"($P101)
.annotate 'line', 1263
    $P544 = $P104."result"()
    set $S503, $P544
    concat $S502, "(", $S503
    concat $S501, $S502, ")"
    $P545 = $P104."push_pirop"(".get_results", $S501)
.annotate 'line', 1264
    $P546 = $P104."push"($P102)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1270
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1271
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback722
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback723
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback723:
    unless_null $P504, vivi_203724
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_203724:
    set $P503, $P504
  fallback722:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 1272
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback725
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback725:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1273
    $P516 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1274
    set $S502, $P101
    concat $S501, $S502, "['lexpad']"
    $P517 = $P102."push_pirop"("set", $P101, $S501)
.annotate 'line', 1275
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1278
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1279
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback727
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback728
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback728:
    unless_null $P504, vivi_204729
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_204729:
    set $P503, $P504
  fallback727:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 1280
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback730
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback730:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1281
    $P516 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1282
    set $S502, $P101
    concat $S501, $S502, "['sub']"
    $P517 = $P102."push_pirop"("set", $P101, $S501)
.annotate 'line', 1283
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1300
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P613 = 'cuid_223_1346233447.816' 
    capture_lex $P613 
    .const 'Sub' $P613 = 'cuid_226_1346233447.816' 
    capture_lex $P613 
    .const 'Sub' $P613 = 'cuid_228_1346233447.816' 
    capture_lex $P613 
    .lex "@children", $P101 
    .lex "$protected", $P102 
    .lex "$procpost", $P103 
    .lex "%handlers", $P104 
    .lex "$catch", $P105 
    .lex "$control", $P106 
    .lex "@other", $P107 
    .lex "$catch_label", $P108 
    .lex "$control_label", $P109 
    .lex "$other_label", $P110 
    .lex "$num_pops", $P111 
    .lex "$skip_handler_label", $P112 
    .lex "$ops", $P113 
    .lex "$reg", $P114 
    .lex "$res_type", $P115 
    .lex "$res_reg", $P116 
    .lex "$orig_alloc", $P117 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    new $P504, 'Hash'
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P106, $P506
    new $P507, 'ResizablePMCArray'
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P113, $P513
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P114, $P514
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P115, $P515
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P116, $P516
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P117, $P517
.annotate 'line', 1301
    $P519 = _lex_param_1."list"()
    clone $P518, $P519
    set $P101, $P518
    set $N501, $P101
    set $N502, 0
    iseq $I501, $N501, $N502
    box $P522, $I501
    set $P521, $P522
    unless $I501 goto if205_end733 
.annotate 'line', 1302
    box $P520, "The 'handle' op requires at least one child"
    die $P520
    set $P521, $P520
  if205_end733:
.annotate 'line', 1308
    $P523 = $P101."shift"()
    set $P102, $P523
.annotate 'line', 1309
    $P524 = _lex_param_0."as_post"($P102)
    $P525 = _lex_param_0."coerce"($P524, "P")
    set $P103, $P525
    set $P528, $P101
    if $P101 goto unless206_end735 
.annotate 'line', 1310
    find_lex $P526, "RETURN"
    $P527 = $P526($P103)
    set $P528, $P527
  unless206_end735:
    set $P529, $P101
    iter $P531, $P101
    new $P533, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P533, for_handlers744
    push_eh $P533
  for_next745:
    unless $P531, for_done747
    shift $P534, $P531
    shift $P535, $P531
  for_redo746:
    .const 'Sub' $P532 = 'cuid_223_1346233447.816' 
    capture_lex $P532
    $P529 = $P532($P534, $P535)
    goto for_next745
  for_handlers744:
    .get_results ($P533)
    pop_upto_eh $P533
    getattribute $P533, $P533, 'type'
    eq $P533, .CONTROL_LOOP_NEXT, for_next745
    eq $P533, .CONTROL_LOOP_REDO, for_redo746
  for_done747:
    pop_eh 
    box $P536, 0
    set $P111, $P536
.annotate 'line', 1345
    get_hll_global $P540, "GLOBAL"
    nqp_get_package_through_who $P539, $P540, "PIRT"
    get_who $P538, $P539
    set $P537, $P538["Label"]
    unless_null $P537, fallback748
    nqp_get_sc_object $P541, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P541
  fallback748:
    $P542 = _lex_param_0."unique"("skip_handler_")
    $P543 = $P537."new"($P542 :named("name"))
    set $P112, $P543
.annotate 'line', 1346
    get_hll_global $P547, "GLOBAL"
    nqp_get_package_through_who $P546, $P547, "PIRT"
    get_who $P545, $P546
    set $P544, $P545["Ops"]
    unless_null $P544, fallback749
    nqp_get_sc_object $P548, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P544, $P548
  fallback749:
    $P549 = $P544."new"()
    set $P113, $P549
.annotate 'line', 1347
    find_dynamic_lex $P550, "$*REGALLOC"
    unless_null $P550, fallback750
    get_hll_global $P553, "GLOBAL"
    get_who $P552, $P553
    set $P551, $P552["$REGALLOC"]
    unless_null $P551, fallback751
    nqp_get_sc_object $P554, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P554
  fallback751:
    unless_null $P551, vivi_211752
    die "Contextual $*REGALLOC not found"
    box $P555, "Contextual $*REGALLOC not found"
    set $P551, $P555
  vivi_211752:
    set $P550, $P551
  fallback750:
    $P556 = $P550."fresh_p"()
    set $P114, $P556
    set $P569, $P105
    unless $P105 goto if212_end754 
.annotate 'line', 1348
.annotate 'line', 1349
    get_hll_global $P560, "GLOBAL"
    nqp_get_package_through_who $P559, $P560, "PIRT"
    get_who $P558, $P559
    set $P557, $P558["Label"]
    unless_null $P557, fallback755
    nqp_get_sc_object $P561, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P557, $P561
  fallback755:
    $P562 = _lex_param_0."unique"("catch_handler_")
    $P563 = $P557."new"($P562 :named("name"))
    set $P108, $P563
.annotate 'line', 1350
    $P564 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'")
.annotate 'line', 1351
    $P565 = $P113."push_pirop"("set_label", $P114, $P108)
.annotate 'line', 1352
    $P566 = $P113."push_pirop"("callmethod", "'handle_types_except'", $P114, ".CONTROL_ALL")
.annotate 'line', 1353
    $P567 = $P113."push_pirop"("push_eh", $P114)
    set $N504, $P111
    set $N505, 1
    add $N503, $N504, $N505
    box $P568, $N503
    set $P111, $P568
    set $P569, $P111
  if212_end754:
    set $P581, $P106
    unless $P106 goto if213_end757 
.annotate 'line', 1356
.annotate 'line', 1357
    get_hll_global $P573, "GLOBAL"
    nqp_get_package_through_who $P572, $P573, "PIRT"
    get_who $P571, $P572
    set $P570, $P571["Label"]
    unless_null $P570, fallback758
    nqp_get_sc_object $P574, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P570, $P574
  fallback758:
    $P575 = _lex_param_0."unique"("catch_handler_")
    $P576 = $P570."new"($P575 :named("name"))
    set $P109, $P576
.annotate 'line', 1358
    $P577 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'", "[.CONTROL_ALL]")
.annotate 'line', 1359
    $P578 = $P113."push_pirop"("set_label", $P114, $P109)
.annotate 'line', 1360
    $P579 = $P113."push_pirop"("push_eh", $P114)
    set $N507, $P111
    set $N508, 1
    add $N506, $N507, $N508
    box $P580, $N506
    set $P111, $P580
    set $P581, $P111
  if213_end757:
    set $P584, $P107
    unless $P107 goto if214_end760 
    .const 'Sub' $P582 = 'cuid_226_1346233447.816' 
    capture_lex $P582
    $P583 = $P582()
    set $P584, $P583
  if214_end760:
.annotate 'line', 1375
    $P585 = $P103."result"()
    $P586 = _lex_param_0."infer_type"($P585)
    set $S502, $P586
    downcase $S501, $S502
    box $P587, $S501
    set $P115, $P587
.annotate 'line', 1376
    find_dynamic_lex $P588, "$*REGALLOC"
    unless_null $P588, fallback767
    get_hll_global $P591, "GLOBAL"
    get_who $P590, $P591
    set $P589, $P590["$REGALLOC"]
    unless_null $P589, fallback768
    nqp_get_sc_object $P592, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P589, $P592
  fallback768:
    unless_null $P589, vivi_215769
    die "Contextual $*REGALLOC not found"
    box $P593, "Contextual $*REGALLOC not found"
    set $P589, $P593
  vivi_215769:
    set $P588, $P589
  fallback767:
    set $S504, $P115
    concat $S503, "fresh_", $S504
    $P594 = $P588.$S503()
    set $P116, $P594
.annotate 'line', 1377
    $P595 = $P113."push"($P103)
.annotate 'line', 1378
    $P596 = $P103."result"()
    $P597 = $P113."push_pirop"("set", $P116, $P596)
    new $P601, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P601, while216_handlers773
    push_eh $P601
  while216_test770:
    set $P600, $P111
    unless $P111 goto while216_done774 
  while216_redo772:
.annotate 'line', 1379
.annotate 'line', 1380
    $P598 = $P113."push_pirop"("pop_eh")
    set $N510, $P111
    set $N511, 1
    sub $N509, $N510, $N511
    box $P599, $N509
    set $P111, $P599
    set $P600, $P111
    goto while216_test770 
  while216_handlers773:
    .get_results ($P601)
    pop_upto_eh $P601
    getattribute $P601, $P601, 'type'
    eq $P601, .CONTROL_LOOP_NEXT, while216_test770
    eq $P601, .CONTROL_LOOP_REDO, while216_redo772
  while216_done774:
    pop_eh 
.annotate 'line', 1383
    $P602 = $P113."push_pirop"("goto", $P112)
    find_dynamic_lex $P603, "$*REGALLOC"
    unless_null $P603, fallback775
    get_hll_global $P606, "GLOBAL"
    get_who $P605, $P606
    set $P604, $P605["$REGALLOC"]
    unless_null $P604, fallback776
    nqp_get_sc_object $P607, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P604, $P607
  fallback776:
    unless_null $P604, vivi_217777
    die "Contextual $*REGALLOC not found"
    box $P608, "Contextual $*REGALLOC not found"
    set $P604, $P608
  vivi_217777:
    set $P603, $P604
  fallback775:
    set $P117, $P603
    .const 'Sub' $P609 = 'cuid_228_1346233447.816' 
    capture_lex $P609
    $P610 = $P609()
.annotate 'line', 1436
    $P611 = $P113."push"($P112)
.annotate 'line', 1437
    $P612 = $P113."result"($P116)
    .return ($P113) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1346233447.816") :anon :lex :outer("cuid_224_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1319
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", _lex_param_0 
    .lex "$handler_code", _lex_param_1 
    find_lex $P501, "%handler_names"
    set $S501, _lex_param_0
    exists $I501, $P501[$S501]
    unless $I501 goto if207_else736 
.annotate 'line', 1320
    find_lex $P502, "%handlers"
    set $S502, _lex_param_0
    exists $I502, $P502[$S502]
    box $P505, $I502
    set $P504, $P505
    unless $I502 goto if208_end739 
.annotate 'line', 1321
    set $S504, _lex_param_0
    concat $S503, "Multiple handlers for ", $S504
    box $P503, $S503
    die $P503
    set $P504, $P503
  if208_end739:
    find_lex $P506, "%handlers"
    set $S505, _lex_param_0
    set $P506[$S505], _lex_param_1
    set $S506, _lex_param_0
    iseq $I503, $S506, "CATCH"
    unless $I503 goto if209_else740 
.annotate 'line', 1325
    box $P507, 1
    store_lex "$catch", $P507
    set $P511, $P507
    goto if209_end741
  if209_else740:
    set $S507, _lex_param_0
    iseq $I504, $S507, "CONTROL"
    unless $I504 goto if210_else742 
.annotate 'line', 1328
    box $P508, 1
    store_lex "$control", $P508
    set $P510, $P508
    goto if210_end743
  if210_else742:
.annotate 'line', 1331
    find_lex $P509, "@other"
    push $P509, _lex_param_0
    set $P510, $P509
  if210_end743:
    set $P511, $P510
  if209_end741:
    set $P513, $P511
    goto if207_end737
  if207_else736:
.annotate 'line', 1335
    set $S510, _lex_param_0
    concat $S509, "Invalid handler type '", $S510
    concat $S508, $S509, "'"
    box $P512, $S508
    die $P512
    set $P513, $P512
  if207_end737:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1346233447.816") :anon :lex :outer("cuid_224_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1363
    .const 'Sub' $P529 = 'cuid_225_1346233447.816' 
    capture_lex $P529 
    .lex "@hnames", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P505, "@other"
    set $P502, $P505
    iter $P504, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers762
    push_eh $P507
  for_next763:
    unless $P504, for_done765
    shift $P508, $P504
  for_redo764:
    .const 'Sub' $P506 = 'cuid_225_1346233447.816' 
    capture_lex $P506
    $P502 = $P506($P508)
    goto for_next763
  for_handlers762:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next763
    eq $P507, .CONTROL_LOOP_REDO, for_redo764
  for_done765:
    pop_eh 
.annotate 'line', 1366
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "PIRT"
    get_who $P510, $P511
    set $P509, $P510["Label"]
    unless_null $P509, fallback766
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback766:
    find_lex $P514, "$qastcomp"
    $P515 = $P514."unique"("catch_handler_")
    $P516 = $P509."new"($P515 :named("name"))
    store_lex "$other_label", $P516
.annotate 'line', 1367
    find_lex $P517, "$ops"
    find_lex $P518, "$reg"
    join $S503, ", ", $P101
    concat $S502, "[", $S503
    concat $S501, $S502, "]"
    $P519 = $P517."push_pirop"("new", $P518, "'ExceptionHandler'", $S501)
.annotate 'line', 1369
    find_lex $P520, "$ops"
    find_lex $P521, "$reg"
    find_lex $P522, "$other_label"
    $P523 = $P520."push_pirop"("set_label", $P521, $P522)
.annotate 'line', 1370
    find_lex $P524, "$ops"
    find_lex $P525, "$reg"
    $P526 = $P524."push_pirop"("push_eh", $P525)
    find_lex $P527, "$num_pops"
    set $N502, $P527
    set $N503, 1
    add $N501, $N502, $N503
    box $P528, $N501
    store_lex "$num_pops", $P528
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1346233447.816") :anon :lex :outer("cuid_226_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1365
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "@hnames"
    find_lex $P503, "%handler_names"
    set $S501, _lex_param_0
    set $P502, $P503[$S501]
    unless_null $P502, fallback761
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback761:
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1346233447.816") :anon :lex :outer("cuid_224_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1387
    .const 'Sub' $P525 = 'cuid_227_1346233447.816' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_230_1346233447.816' 
    capture_lex $P525 
    .lex "$*CUR_EXCEPTION", $P101 
    .lex "$*REGALLOC", $P102 
    .lex "&simple_handler", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    .const 'Sub' $P503 = 'cuid_227_1346233447.816' 
    capture_lex $P503
    set $P103, $P503
    find_lex $P504, "$reg"
    set $P101, $P504
.annotate 'line', 1389
    find_lex $P505, "$orig_alloc"
    $P506 = $P505."handler_allocator"()
    set $P102, $P506
    find_lex $P507, "$catch"
    set $P513, $P507
    unless $P507 goto if218_end779 
.annotate 'line', 1401
.annotate 'line', 1402
    find_lex $P508, "$catch_label"
    find_lex $P510, "%handlers"
    set $P509, $P510["CATCH"]
    unless_null $P509, fallback780
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P511
  fallback780:
    $P512 = "&simple_handler"($P508, $P509)
    set $P513, $P512
  if218_end779:
    find_lex $P514, "$control"
    set $P520, $P514
    unless $P514 goto if219_end782 
.annotate 'line', 1404
.annotate 'line', 1405
    find_lex $P515, "$control_label"
    find_lex $P517, "%handlers"
    set $P516, $P517["CONTROL"]
    unless_null $P516, fallback783
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P518
  fallback783:
    $P519 = "&simple_handler"($P515, $P516)
    set $P520, $P519
  if219_end782:
    find_lex $P521, "@other"
    set $P524, $P521
    unless $P521 goto if220_end785 
    .const 'Sub' $P522 = 'cuid_230_1346233447.816' 
    capture_lex $P522
    $P523 = $P522()
    set $P524, $P523
  if220_end785:
    .return ($P524) 
.end
.HLL "nqp"
.namespace []
.sub "simple_handler" :subid("cuid_227_1346233447.816") :anon :lex :outer("cuid_228_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handler_post", $P101 
    .lex "$label", _lex_param_0 
    .lex "$handler_qast", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1391
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    $P504 = $P503."as_post"(_lex_param_1)
    $P505 = $P502."coerce"($P504, "P")
    set $P101, $P505
.annotate 'line', 1392
    find_lex $P506, "$ops"
    $P507 = $P506."push"(_lex_param_0)
.annotate 'line', 1393
    find_lex $P508, "$ops"
    find_lex $P509, "$reg"
    set $S503, $P509
    concat $S502, ".get_results (", $S503
    concat $S501, $S502, ")"
    $P510 = $P508."push_pirop"($S501)
.annotate 'line', 1394
    find_lex $P511, "$ops"
    $P512 = $P511."push"($P101)
.annotate 'line', 1395
    find_lex $P513, "$ops"
    find_lex $P514, "$reg"
    $P515 = $P513."push_pirop"("finalize", $P514)
.annotate 'line', 1396
    find_lex $P516, "$ops"
    find_lex $P517, "$reg"
    $P518 = $P516."push_pirop"("pop_upto_eh", $P517)
.annotate 'line', 1397
    find_lex $P519, "$ops"
    $P520 = $P519."push_pirop"("pop_eh")
.annotate 'line', 1398
    find_lex $P521, "$ops"
    find_lex $P522, "$res_reg"
    $P523 = $P101."result"()
    $P524 = $P521."push_pirop"("set", $P522, $P523)
.annotate 'line', 1399
    find_lex $P525, "$ops"
    find_lex $P526, "$skip_handler_label"
    $P527 = $P525."push_pirop"("goto", $P526)
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1346233447.816") :anon :lex :outer("cuid_228_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1407
    .const 'Sub' $P533 = 'cuid_229_1346233447.816' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_231_1346233447.816' 
    capture_lex $P533 
    .lex "$type_reg", $P101 
    .lex "%type_labels", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
.annotate 'line', 1408
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback786
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback787
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback787:
    unless_null $P504, vivi_221788
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_221788:
    set $P503, $P504
  fallback786:
    $P509 = $P503."fresh_i"()
    set $P101, $P509
.annotate 'line', 1409
    find_lex $P510, "$ops"
    find_lex $P511, "$other_label"
    $P512 = $P510."push"($P511)
.annotate 'line', 1410
    find_lex $P513, "$ops"
    find_lex $P514, "$reg"
    set $S503, $P514
    concat $S502, ".get_results (", $S503
    concat $S501, $S502, ")"
    $P515 = $P513."push_pirop"($S501)
.annotate 'line', 1414
    find_lex $P516, "$ops"
    find_lex $P517, "$reg"
    set $S505, $P517
    concat $S504, $S505, "[\"type\"]"
    $P518 = $P516."push_pirop"("set", $P101, $S504)
    find_lex $P522, "@other"
    set $P519, $P522
    iter $P521, $P522
    new $P524, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P524, for_handlers791
    push_eh $P524
  for_next792:
    unless $P521, for_done794
    shift $P525, $P521
  for_redo793:
    .const 'Sub' $P523 = 'cuid_229_1346233447.816' 
    capture_lex $P523
    $P519 = $P523($P525)
    goto for_next792
  for_handlers791:
    .get_results ($P524)
    pop_upto_eh $P524
    getattribute $P524, $P524, 'type'
    eq $P524, .CONTROL_LOOP_NEXT, for_next792
    eq $P524, .CONTROL_LOOP_REDO, for_redo793
  for_done794:
    pop_eh 
    find_lex $P529, "@other"
    set $P526, $P529
    iter $P528, $P529
    new $P531, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P531, for_handlers797
    push_eh $P531
  for_next798:
    unless $P528, for_done800
    shift $P532, $P528
  for_redo799:
    .const 'Sub' $P530 = 'cuid_231_1346233447.816' 
    capture_lex $P530
    $P526 = $P530($P532)
    goto for_next798
  for_handlers797:
    .get_results ($P531)
    pop_upto_eh $P531
    getattribute $P531, $P531, 'type'
    eq $P531, .CONTROL_LOOP_NEXT, for_next798
    eq $P531, .CONTROL_LOOP_REDO, for_redo799
  for_done800:
    pop_eh 
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1346233447.816") :anon :lex :outer("cuid_230_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1415
    .param pmc _lex_param_0 
    .lex "$lbl", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1416
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PIRT"
    get_who $P503, $P504
    set $P502, $P503["Label"]
    unless_null $P502, fallback789
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback789:
    find_lex $P507, "$qastcomp"
    $P508 = $P507."unique"("handle_type_")
    $P509 = $P502."new"($P508 :named("name"))
    set $P101, $P509
.annotate 'line', 1417
    find_lex $P510, "$ops"
    find_lex $P511, "$type_reg"
    find_lex $P513, "%handler_names"
    set $S501, _lex_param_0
    set $P512, $P513[$S501]
    unless_null $P512, fallback790
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P514
  fallback790:
    $P515 = $P510."push_pirop"("eq", $P511, $P512, $P101)
    find_lex $P516, "%type_labels"
    set $S502, _lex_param_0
    set $P516[$S502], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1346233447.816") :anon :lex :outer("cuid_230_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1422
    .param pmc _lex_param_0 
    .lex "$handler_post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1423
    find_lex $P502, "$qastcomp"
    find_lex $P503, "$qastcomp"
    find_lex $P505, "%handlers"
    set $S501, _lex_param_0
    set $P504, $P505[$S501]
    unless_null $P504, fallback795
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback795:
    $P507 = $P503."as_post"($P504)
    $P508 = $P502."coerce"($P507, "P")
    set $P101, $P508
.annotate 'line', 1424
    find_lex $P509, "$ops"
    find_lex $P511, "%type_labels"
    set $S502, _lex_param_0
    set $P510, $P511[$S502]
    unless_null $P510, fallback796
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback796:
    $P513 = $P509."push"($P510)
.annotate 'line', 1425
    find_lex $P514, "$ops"
    $P515 = $P514."push"($P101)
.annotate 'line', 1426
    find_lex $P516, "$ops"
    find_lex $P517, "$reg"
    $P518 = $P516."push_pirop"("finalize", $P517)
.annotate 'line', 1427
    find_lex $P519, "$ops"
    find_lex $P520, "$reg"
    $P521 = $P519."push_pirop"("pop_upto_eh", $P520)
.annotate 'line', 1428
    find_lex $P522, "$ops"
    $P523 = $P522."push_pirop"("pop_eh")
.annotate 'line', 1429
    find_lex $P524, "$ops"
    find_lex $P525, "$res_reg"
    $P526 = $P101."result"()
    $P527 = $P524."push_pirop"("set", $P525, $P526)
.annotate 'line', 1430
    find_lex $P528, "$ops"
    find_lex $P529, "$skip_handler_label"
    $P530 = $P528."push_pirop"("goto", $P529)
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1441
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P509, 'ExceptionHandler'
    set_label $P509, catch_handler_224806
    $P509.'handle_types_except'(.CONTROL_ALL)
    push_eh $P509
    find_dynamic_lex $P503, "$*CUR_EXCEPTION"
    unless_null $P503, fallback802
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$CUR_EXCEPTION"]
    unless_null $P504, fallback803
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback803:
    unless_null $P504, vivi_222804
    die "Contextual $*CUR_EXCEPTION not found"
    box $P508, "Contextual $*CUR_EXCEPTION not found"
    set $P504, $P508
  vivi_222804:
    set $P503, $P504
  fallback802:
    set $P510, $P503
    pop_eh 
    goto skip_handler_223805
  catch_handler_224806:
    .get_results ($P509) 
    set $I10001, 1
    set $P509["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P509
    pop_upto_eh $P509
    pop_eh 
    set $P510, $P10001
    goto skip_handler_223805
  skip_handler_223805:
    set $P101, $P510
    set $P512, $P101
    if $P101 goto unless225_end808 
.annotate 'line', 1443
    box $P511, "Can only use 'exception' op in the context of an exception handler"
    die $P511
    set $P512, $P511
  unless225_end808:
.annotate 'line', 1446
    get_hll_global $P516, "GLOBAL"
    nqp_get_package_through_who $P515, $P516, "PIRT"
    get_who $P514, $P515
    set $P513, $P514["Ops"]
    unless_null $P513, fallback809
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P517
  fallback809:
    $P518 = $P513."new"()
    set $P102, $P518
.annotate 'line', 1447
    $P519 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 1451
    $P504 = _lex_param_1."list"()
    set $N501, $P504
    set $N502, 1
    isne $I501, $N501, $N502
    box $P507, $I501
    set $P506, $P507
    unless $I501 goto if226_end812 
    box $P505, "The 'getpayload' op expects one child"
    die $P505
    set $P506, $P505
  if226_end812:
.annotate 'line', 1454
    set $P508, _lex_param_1[0]
    unless_null $P508, fallback813
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback813:
    $P510 = _lex_param_0."as_post"($P508)
    $P511 = _lex_param_0."coerce"($P510, "P")
    set $P101, $P511
.annotate 'line', 1455
    find_dynamic_lex $P512, "$*REGALLOC"
    unless_null $P512, fallback814
    get_hll_global $P515, "GLOBAL"
    get_who $P514, $P515
    set $P513, $P514["$REGALLOC"]
    unless_null $P513, fallback815
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P516
  fallback815:
    unless_null $P513, vivi_227816
    die "Contextual $*REGALLOC not found"
    box $P517, "Contextual $*REGALLOC not found"
    set $P513, $P517
  vivi_227816:
    set $P512, $P513
  fallback814:
    $P518 = $P512."fresh_p"()
    set $P102, $P518
.annotate 'line', 1456
    get_hll_global $P522, "GLOBAL"
    nqp_get_package_through_who $P521, $P522, "PIRT"
    get_who $P520, $P521
    set $P519, $P520["Ops"]
    unless_null $P519, fallback817
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P523
  fallback817:
    $P524 = $P519."new"()
    set $P103, $P524
.annotate 'line', 1457
    $P525 = $P103."push"($P101)
.annotate 'line', 1458
    $P526 = $P101."result"()
    $P527 = $P103."push_pirop"("getattribute", $P102, $P526, "\"payload\"")
.annotate 'line', 1459
    $P528 = $P103."result"($P102)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1462
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$payload", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 1463
    $P504 = _lex_param_1."list"()
    set $N501, $P504
    set $N502, 2
    isne $I501, $N501, $N502
    box $P507, $I501
    set $P506, $P507
    unless $I501 goto if228_end820 
    box $P505, "The 'setpayload' op expects two children"
    die $P505
    set $P506, $P505
  if228_end820:
.annotate 'line', 1466
    set $P508, _lex_param_1[0]
    unless_null $P508, fallback821
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback821:
    $P510 = _lex_param_0."as_post"($P508)
    $P511 = _lex_param_0."coerce"($P510, "P")
    set $P101, $P511
.annotate 'line', 1467
    set $P512, _lex_param_1[1]
    unless_null $P512, fallback822
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P513
  fallback822:
    $P514 = _lex_param_0."as_post"($P512)
    $P515 = _lex_param_0."coerce"($P514, "P")
    set $P102, $P515
.annotate 'line', 1468
    get_hll_global $P519, "GLOBAL"
    nqp_get_package_through_who $P518, $P519, "PIRT"
    get_who $P517, $P518
    set $P516, $P517["Ops"]
    unless_null $P516, fallback823
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P520
  fallback823:
    $P521 = $P516."new"()
    set $P103, $P521
.annotate 'line', 1469
    $P522 = $P103."push_pirop"("setattribute", $P101, "\"payload\"", $P102)
.annotate 'line', 1470
    $P523 = $P102."result"()
    $P524 = $P103."result"($P523)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1473
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$pmc", $P102 
    .lex "$reg", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 1474
    $P505 = _lex_param_1."list"()
    set $N501, $P505
    set $N502, 1
    isne $I501, $N501, $N502
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if229_end826 
    box $P506, "The 'getmessage' op expects one child"
    die $P506
    set $P507, $P506
  if229_end826:
.annotate 'line', 1477
    set $P509, _lex_param_1[0]
    unless_null $P509, fallback827
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P510
  fallback827:
    $P511 = _lex_param_0."as_post"($P509)
    $P512 = _lex_param_0."coerce"($P511, "P")
    set $P101, $P512
.annotate 'line', 1478
    find_dynamic_lex $P513, "$*REGALLOC"
    unless_null $P513, fallback828
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["$REGALLOC"]
    unless_null $P514, fallback829
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P517
  fallback829:
    unless_null $P514, vivi_230830
    die "Contextual $*REGALLOC not found"
    box $P518, "Contextual $*REGALLOC not found"
    set $P514, $P518
  vivi_230830:
    set $P513, $P514
  fallback828:
    $P519 = $P513."fresh_p"()
    set $P102, $P519
.annotate 'line', 1479
    find_dynamic_lex $P520, "$*REGALLOC"
    unless_null $P520, fallback831
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    set $P521, $P522["$REGALLOC"]
    unless_null $P521, fallback832
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P524
  fallback832:
    unless_null $P521, vivi_231833
    die "Contextual $*REGALLOC not found"
    box $P525, "Contextual $*REGALLOC not found"
    set $P521, $P525
  vivi_231833:
    set $P520, $P521
  fallback831:
    $P526 = $P520."fresh_s"()
    set $P103, $P526
.annotate 'line', 1480
    get_hll_global $P530, "GLOBAL"
    nqp_get_package_through_who $P529, $P530, "PIRT"
    get_who $P528, $P529
    set $P527, $P528["Ops"]
    unless_null $P527, fallback834
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P531
  fallback834:
    $P532 = $P527."new"()
    set $P104, $P532
.annotate 'line', 1481
    $P533 = $P104."push"($P101)
.annotate 'line', 1482
    $P534 = $P101."result"()
    $P535 = $P104."push_pirop"("getattribute", $P102, $P534, "\"message\"")
.annotate 'line', 1483
    $P536 = $P104."push_pirop"("set", $P103, $P102)
.annotate 'line', 1484
    $P537 = $P104."result"($P103)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$message", $P102 
    .lex "$pmc", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 1488
    $P505 = _lex_param_1."list"()
    set $N501, $P505
    set $N502, 2
    isne $I501, $N501, $N502
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if232_end837 
    box $P506, "The 'setmessage' op expects two children"
    die $P506
    set $P507, $P506
  if232_end837:
.annotate 'line', 1491
    set $P509, _lex_param_1[0]
    unless_null $P509, fallback838
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P510
  fallback838:
    $P511 = _lex_param_0."as_post"($P509)
    $P512 = _lex_param_0."coerce"($P511, "P")
    set $P101, $P512
.annotate 'line', 1492
    set $P513, _lex_param_1[1]
    unless_null $P513, fallback839
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback839:
    $P515 = _lex_param_0."as_post"($P513)
    $P516 = _lex_param_0."coerce"($P515, "S")
    set $P102, $P516
.annotate 'line', 1493
    find_dynamic_lex $P517, "$*REGALLOC"
    unless_null $P517, fallback840
    get_hll_global $P520, "GLOBAL"
    get_who $P519, $P520
    set $P518, $P519["$REGALLOC"]
    unless_null $P518, fallback841
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P521
  fallback841:
    unless_null $P518, vivi_233842
    die "Contextual $*REGALLOC not found"
    box $P522, "Contextual $*REGALLOC not found"
    set $P518, $P522
  vivi_233842:
    set $P517, $P518
  fallback840:
    $P523 = $P517."fresh_p"()
    set $P103, $P523
.annotate 'line', 1494
    get_hll_global $P527, "GLOBAL"
    nqp_get_package_through_who $P526, $P527, "PIRT"
    get_who $P525, $P526
    set $P524, $P525["Ops"]
    unless_null $P524, fallback843
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P528
  fallback843:
    $P529 = $P524."new"()
    set $P104, $P529
.annotate 'line', 1495
    $P530 = $P104."push"($P101)
.annotate 'line', 1496
    $P531 = $P104."push"($P102)
.annotate 'line', 1497
    $P532 = $P104."push_pirop"("box", $P103, $P102)
.annotate 'line', 1498
    $P533 = $P104."push_pirop"("setattribute", $P101, "\"message\"", $P103)
.annotate 'line', 1499
    $P534 = $P102."result"()
    $P535 = $P104."result"($P534)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1502
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1503
    $P503 = _lex_param_1."list"()
    set $N501, $P503
    set $N502, 0
    isne $I501, $N501, $N502
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if234_end846 
    box $P504, "The 'newexception' op expects no children"
    die $P504
    set $P505, $P504
  if234_end846:
.annotate 'line', 1506
    find_dynamic_lex $P507, "$*REGALLOC"
    unless_null $P507, fallback847
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    set $P508, $P509["$REGALLOC"]
    unless_null $P508, fallback848
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P511
  fallback848:
    unless_null $P508, vivi_235849
    die "Contextual $*REGALLOC not found"
    box $P512, "Contextual $*REGALLOC not found"
    set $P508, $P512
  vivi_235849:
    set $P507, $P508
  fallback847:
    $P513 = $P507."fresh_p"()
    set $P101, $P513
.annotate 'line', 1507
    get_hll_global $P517, "GLOBAL"
    nqp_get_package_through_who $P516, $P517, "PIRT"
    get_who $P515, $P516
    set $P514, $P515["Ops"]
    unless_null $P514, fallback850
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P518
  fallback850:
    $P519 = $P514."new"()
    set $P102, $P519
.annotate 'line', 1508
    $P520 = $P102."push_pirop"("new", $P101, "[\"Exception\"]")
.annotate 'line', 1509
    $P521 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P508 = 'cuid_238_1346233447.816' 
    capture_lex $P508 
    .lex "$name", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1524
    $P502 = _lex_param_1."name"()
    set $P101, $P502
    find_lex $P503, "%control_map"
    set $S501, $P101
    exists $I501, $P503[$S501]
    unless $I501 goto if236_else856 
    .const 'Sub' $P504 = 'cuid_238_1346233447.816' 
    capture_lex $P504
    $P505 = $P504()
    set $P507, $P505
    goto if236_end857
  if236_else856:
.annotate 'line', 1530
    set $S504, $P101
    concat $S503, "Unknown control exception type '", $S504
    concat $S502, $S503, "'"
    box $P506, $S502
    die $P506
    set $P507, $P506
  if236_end857:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1346233447.816") :anon :lex :outer("cuid_239_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1525
    .lex "$ops", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1526
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PIRT"
    get_who $P503, $P504
    set $P502, $P503["Ops"]
    unless_null $P502, fallback858
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback858:
    $P507 = $P502."new"("0" :named("result"))
    set $P101, $P507
.annotate 'line', 1527
    find_lex $P509, "%control_map"
    find_lex $P510, "$name"
    set $S501, $P510
    set $P508, $P509[$S501]
    unless_null $P508, fallback859
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P511
  fallback859:
    $P512 = $P101."push_pirop"("die", "0", $P508)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1536
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_240_1346233447.816' 
    capture_lex $P509 
    .lex "$_", _lex_param_0 
.annotate 'line', 1537
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Operations"]
    unless_null $P501, fallback860
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback860:
    .const 'Sub' $P507 = 'cuid_240_1346233447.816' 
    capture_lex $P507
    newclosure $P506, $P507
    $P508 = $P501."add_hll_box"("nqp", _lex_param_0, $P506)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1346233447.816") :anon :lex :outer("cuid_241_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1537
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1538
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback861
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback862
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback862:
    unless_null $P504, vivi_237863
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_237863:
    set $P503, $P504
  fallback861:
    $P509 = $P503."fresh_p"()
    set $P101, $P509
.annotate 'line', 1539
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback864
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback864:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1540
    $P516 = $P102."push"(_lex_param_1)
.annotate 'line', 1541
    $P517 = $P102."push_pirop"("box", $P101, _lex_param_1)
.annotate 'line', 1542
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1546
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1547
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback870
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback871
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback871:
    unless_null $P504, vivi_238872
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_238872:
    set $P503, $P504
  fallback870:
    $P509 = $P503."fresh_i"()
    set $P101, $P509
.annotate 'line', 1548
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback873
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback873:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1549
    $P516 = $P102."push"(_lex_param_1)
.annotate 'line', 1550
    $P517 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1551
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1554
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1555
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback875
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback876
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback876:
    unless_null $P504, vivi_239877
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_239877:
    set $P503, $P504
  fallback875:
    $P509 = $P503."fresh_n"()
    set $P101, $P509
.annotate 'line', 1556
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback878
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback878:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1557
    $P516 = $P102."push"(_lex_param_1)
.annotate 'line', 1558
    $P517 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1559
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1562
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1563
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback880
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback881
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback881:
    unless_null $P504, vivi_240882
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_240882:
    set $P503, $P504
  fallback880:
    $P509 = $P503."fresh_s"()
    set $P101, $P509
.annotate 'line', 1564
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "PIRT"
    get_who $P511, $P512
    set $P510, $P511["Ops"]
    unless_null $P510, fallback883
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback883:
    $P515 = $P510."new"()
    set $P102, $P515
.annotate 'line', 1565
    $P516 = $P102."push"(_lex_param_1)
.annotate 'line', 1566
    $P517 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1567
    $P518 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1683
    $P502 = _lex_param_1."list"()
    set $P101, $P502
.annotate 'line', 1684
    set $N501, $P101
    set $N502, 2
    iseq $I501, $N501, $N502
    unless $I501 goto if241_else977 
.annotate 'line', 1685
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Op"]
    unless_null $P503, fallback979
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback979:
    $P508 = $P503."new"($P101 :flat, "substr2" :named("op"))
    set $P515, $P508
    goto if241_end978
  if241_else977:
.annotate 'line', 1686
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Op"]
    unless_null $P509, fallback980
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback980:
    $P514 = $P509."new"($P101 :flat, "substr3" :named("op"))
    set $P515, $P514
  if241_end978:
    $P516 = _lex_param_0."as_post"($P515)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1692
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1693
    $P502 = _lex_param_1."list"()
    set $P101, $P502
.annotate 'line', 1694
    set $N501, $P101
    set $N502, 1
    iseq $I501, $N501, $N502
    unless $I501 goto if242_else984 
.annotate 'line', 1695
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Op"]
    unless_null $P503, fallback986
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback986:
    $P508 = $P503."new"($P101 :flat, "ordfirst" :named("op"))
    set $P515, $P508
    goto if242_end985
  if242_else984:
.annotate 'line', 1696
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Op"]
    unless_null $P509, fallback987
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback987:
    $P514 = $P509."new"($P101 :flat, "ordat" :named("op"))
    set $P515, $P514
  if242_end985:
    $P516 = _lex_param_0."as_post"($P515)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1701
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1702
    $P502 = _lex_param_1."list"()
    set $P101, $P502
.annotate 'line', 1703
    set $N501, $P101
    set $N502, 2
    iseq $I501, $N501, $N502
    unless $I501 goto if243_else990 
.annotate 'line', 1704
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Op"]
    unless_null $P503, fallback992
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback992:
    get_hll_global $P511, "GLOBAL"
    nqp_get_package_through_who $P510, $P511, "QAST"
    get_who $P509, $P510
    set $P508, $P509["IVal"]
    unless_null $P508, fallback993
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback993:
    $P513 = $P508."new"(0 :named("value"))
    $P514 = $P503."new"($P101 :flat, $P513, "indexfrom" :named("op"))
    set $P521, $P514
    goto if243_end991
  if243_else990:
.annotate 'line', 1705
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "QAST"
    get_who $P516, $P517
    set $P515, $P516["Op"]
    unless_null $P515, fallback994
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback994:
    $P520 = $P515."new"($P101 :flat, "indexfrom" :named("op"))
    set $P521, $P520
  if243_end991:
    $P522 = _lex_param_0."as_post"($P521)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1709
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 1710
    $P502 = _lex_param_1."list"()
    set $P101, $P502
.annotate 'line', 1711
    set $N501, $P101
    set $N502, 2
    iseq $I501, $N501, $N502
    unless $I501 goto if244_else998 
.annotate 'line', 1712
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Op"]
    unless_null $P503, fallback1000
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1000:
    $P508 = $P503."new"($P101 :flat, "rindexfromend" :named("op"))
    set $P515, $P508
    goto if244_end999
  if244_else998:
.annotate 'line', 1713
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Op"]
    unless_null $P509, fallback1001
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback1001:
    $P514 = $P509."new"($P101 :flat, "rindexfrom" :named("op"))
    set $P515, $P514
  if244_end999:
    $P516 = _lex_param_0."as_post"($P515)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1346233447.816") :anon :lex :outer("cuid_1_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1867
    .const 'Sub' $P592 = 'cuid_249_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_250_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_252_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_71_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_96_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_97_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_98_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_99_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_100_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_101_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_102_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_103_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_104_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_105_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_106_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_107_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_108_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_109_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_110_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_111_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_112_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_113_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_114_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_115_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_116_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_117_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_118_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_119_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_120_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_121_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_122_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_123_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_124_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_125_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_126_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_127_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_128_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_129_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_130_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_131_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_132_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_133_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_134_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_135_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_136_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_137_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_138_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_139_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_140_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_141_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_142_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_143_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_144_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_145_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_146_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_147_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_148_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_149_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_150_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_151_1346233447.816' 
    capture_lex $P592 
    .const 'Sub' $P592 = 'cuid_152_1346233447.816' 
    capture_lex $P592 
    .lex "RegAlloc", $P101 
    .lex "BlockInfo", $P102 
    .lex "@prim_to_reg", $P103 
    .lex "&type_to_register_type", $P104 
    .lex "@prim_to_lookup_name", $P105 
    .lex "&type_to_lookup_name", $P106 
    .lex "%hll_force_return_boxing", $P107 
    .lex "&want", $P108 
    .lex "%cclass_code", $P109 
    .lex "$?PACKAGE", $P110 
    .lex "$?CLASS", $P111 
    new $P501, 'ResizablePMCArray'
    set $P103, $P501
    .const 'Sub' $P502 = 'cuid_249_1346233447.816' 
    capture_lex $P502
    set $P104, $P502
    new $P503, 'ResizablePMCArray'
    set $P105, $P503
    .const 'Sub' $P504 = 'cuid_250_1346233447.816' 
    capture_lex $P504
    set $P106, $P504
    new $P505, 'Hash'
    set $P107, $P505
    .const 'Sub' $P506 = 'cuid_252_1346233447.816' 
    capture_lex $P506
    set $P108, $P506
    new $P507, 'Hash'
    set $P109, $P507
.annotate 'line', 2046
    get_who $P508, $P110
    box $P509, 10
    set $P508["$serno"], $P509

            $P0 = get_root_global ['parrot';'QAST'], 'Compiler'
            unless null $P0 goto have_qastcomp
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
            compreg 'QAST', $P0
          have_qastcomp:
        
.annotate 'line', 3103
    box $P510, ".CCLASS_ANY"
    set $P109["."], $P510
    box $P511, ".CCLASS_NUMERIC"
    set $P109["d"], $P511
    box $P512, ".CCLASS_WHITESPACE"
    set $P109["s"], $P512
    box $P513, ".CCLASS_WORD"
    set $P109["w"], $P513
    box $P514, ".CCLASS_NEWLINE"
    set $P109["n"], $P514
    box $P515, ".CCLASS_NEWLINE"
    set $P109["nl"], $P515
.annotate 'line', 1867
    .const 'Sub' $P516 = 'cuid_71_1346233447.816' 
    capture_lex $P516
    $P517 = $P516()
    .const 'Sub' $P518 = 'cuid_96_1346233447.816' 
    capture_lex $P518
    $P519 = $P518()
    get_who $P521, $P110
    set $P520, $P521["$serno"]
    unless_null $P520, fallback1163
    get_hll_global $P524, "GLOBAL"
    get_who $P523, $P524
    set $P522, $P523["$serno"]
    unless_null $P522, vivi_2511164
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P525
  vivi_2511164:
    set $P520, $P522
  fallback1163:
    new $P526, 'ResizablePMCArray'
    box $P527, "P"
    push $P526, $P527
    box $P528, "I"
    push $P526, $P528
    box $P529, "N"
    push $P526, $P529
    box $P530, "S"
    push $P526, $P530
    set $P103, $P526
    .const 'Sub' $P531 = 'cuid_97_1346233447.816' 
    capture_lex $P531
    new $P532, 'ResizablePMCArray'
    box $P533, "obj"
    push $P532, $P533
    box $P534, "int"
    push $P532, $P534
    box $P535, "num"
    push $P532, $P535
    box $P536, "str"
    push $P532, $P536
    set $P105, $P532
    .const 'Sub' $P537 = 'cuid_98_1346233447.816' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_99_1346233447.816' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_100_1346233447.816' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_101_1346233447.816' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_102_1346233447.816' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_103_1346233447.816' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_104_1346233447.816' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_105_1346233447.816' 
    capture_lex $P544
    .const 'Sub' $P545 = 'cuid_106_1346233447.816' 
    capture_lex $P545
    .const 'Sub' $P546 = 'cuid_107_1346233447.816' 
    capture_lex $P546
    .const 'Sub' $P547 = 'cuid_108_1346233447.816' 
    capture_lex $P547
    .const 'Sub' $P548 = 'cuid_109_1346233447.816' 
    capture_lex $P548
    .const 'Sub' $P549 = 'cuid_110_1346233447.816' 
    capture_lex $P549
    .const 'Sub' $P550 = 'cuid_111_1346233447.816' 
    capture_lex $P550
    .const 'Sub' $P551 = 'cuid_112_1346233447.816' 
    capture_lex $P551
    .const 'Sub' $P552 = 'cuid_113_1346233447.816' 
    capture_lex $P552
    .const 'Sub' $P553 = 'cuid_114_1346233447.816' 
    capture_lex $P553
    .const 'Sub' $P554 = 'cuid_115_1346233447.816' 
    capture_lex $P554
    .const 'Sub' $P555 = 'cuid_116_1346233447.816' 
    capture_lex $P555
    .const 'Sub' $P556 = 'cuid_117_1346233447.816' 
    capture_lex $P556
    .const 'Sub' $P557 = 'cuid_118_1346233447.816' 
    capture_lex $P557
    .const 'Sub' $P558 = 'cuid_119_1346233447.816' 
    capture_lex $P558
    .const 'Sub' $P559 = 'cuid_120_1346233447.816' 
    capture_lex $P559
    .const 'Sub' $P560 = 'cuid_121_1346233447.816' 
    capture_lex $P560
    .const 'Sub' $P561 = 'cuid_122_1346233447.816' 
    capture_lex $P561
    .const 'Sub' $P562 = 'cuid_123_1346233447.816' 
    capture_lex $P562
    .const 'Sub' $P563 = 'cuid_124_1346233447.816' 
    capture_lex $P563
    .const 'Sub' $P564 = 'cuid_125_1346233447.816' 
    capture_lex $P564
    .const 'Sub' $P565 = 'cuid_126_1346233447.816' 
    capture_lex $P565
    .const 'Sub' $P566 = 'cuid_127_1346233447.816' 
    capture_lex $P566
    .const 'Sub' $P567 = 'cuid_128_1346233447.816' 
    capture_lex $P567
    .const 'Sub' $P568 = 'cuid_129_1346233447.816' 
    capture_lex $P568
    .const 'Sub' $P569 = 'cuid_130_1346233447.816' 
    capture_lex $P569
    .const 'Sub' $P570 = 'cuid_131_1346233447.816' 
    capture_lex $P570
    .const 'Sub' $P571 = 'cuid_132_1346233447.816' 
    capture_lex $P571
    .const 'Sub' $P572 = 'cuid_133_1346233447.816' 
    capture_lex $P572
    .const 'Sub' $P573 = 'cuid_134_1346233447.816' 
    capture_lex $P573
    .const 'Sub' $P574 = 'cuid_135_1346233447.816' 
    capture_lex $P574
    .const 'Sub' $P575 = 'cuid_136_1346233447.816' 
    capture_lex $P575
    .const 'Sub' $P576 = 'cuid_137_1346233447.816' 
    capture_lex $P576
    .const 'Sub' $P577 = 'cuid_138_1346233447.816' 
    capture_lex $P577
    .const 'Sub' $P578 = 'cuid_139_1346233447.816' 
    capture_lex $P578
    .const 'Sub' $P579 = 'cuid_140_1346233447.816' 
    capture_lex $P579
    .const 'Sub' $P580 = 'cuid_141_1346233447.816' 
    capture_lex $P580
    .const 'Sub' $P581 = 'cuid_142_1346233447.816' 
    capture_lex $P581
    .const 'Sub' $P582 = 'cuid_143_1346233447.816' 
    capture_lex $P582
    .const 'Sub' $P583 = 'cuid_144_1346233447.816' 
    capture_lex $P583
    .const 'Sub' $P584 = 'cuid_145_1346233447.816' 
    capture_lex $P584
    .const 'Sub' $P585 = 'cuid_146_1346233447.816' 
    capture_lex $P585
    .const 'Sub' $P586 = 'cuid_147_1346233447.816' 
    capture_lex $P586
    .const 'Sub' $P587 = 'cuid_148_1346233447.816' 
    capture_lex $P587
    .const 'Sub' $P588 = 'cuid_149_1346233447.816' 
    capture_lex $P588
    .const 'Sub' $P589 = 'cuid_150_1346233447.816' 
    capture_lex $P589
    .const 'Sub' $P590 = 'cuid_151_1346233447.816' 
    capture_lex $P590
    .const 'Sub' $P591 = 'cuid_152_1346233447.816' 
    capture_lex $P591
    .return ($P591) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_249_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2059
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P502, "@prim_to_reg"
    repr_get_primitive_type_spec $I501, _lex_param_0
    set $P501, $P502[$I501]
    unless_null $P501, fallback1129
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P503
  fallback1129:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_lookup_name" :subid("cuid_250_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2067
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P502, "@prim_to_lookup_name"
    repr_get_primitive_type_spec $I501, _lex_param_0
    set $P501, $P502[$I501]
    unless_null $P501, fallback1130
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P503
  fallback1130:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "want" :subid("cuid_252_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2497
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P513 = 'cuid_251_1346233447.816' 
    capture_lex $P513 
    .lex "@possibles", $P101 
    .lex "$best", $P102 
    .lex "$node", _lex_param_0 
    .lex "$type", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2498
    $P504 = _lex_param_0."list"()
    clone $P503, $P504
    set $P101, $P503
.annotate 'line', 2499
    $P505 = $P101."shift"()
    set $P102, $P505
    set $P506, $P101
    iter $P508, $P101
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers1133
    push_eh $P510
  for_next1134:
    unless $P508, for_done1136
    shift $P511, $P508
    shift $P512, $P508
  for_redo1135:
    .const 'Sub' $P509 = 'cuid_251_1346233447.816' 
    capture_lex $P509
    $P506 = $P509($P511, $P512)
    goto for_next1134
  for_handlers1133:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next1134
    eq $P510, .CONTROL_LOOP_REDO, for_redo1135
  for_done1136:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_251_1346233447.816") :anon :lex :outer("cuid_252_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2500
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$sel", _lex_param_0 
    .lex "$ast", _lex_param_1 
    set $S501, _lex_param_0
    find_lex $P501, "$type"
    set $S502, $P501
    index $I502, $S501, $S502, 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    box $P503, $I501
    set $P502, $P503
    unless $I501 goto if245_end1132 
.annotate 'line', 2501
    store_lex "$best", _lex_param_1
    set $P502, _lex_param_1
  if245_end1132:
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1870
    .const 'Sub' $P512 = 'cuid_60_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_61_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_62_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_63_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_64_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_65_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_66_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_67_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_68_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_69_1346233447.816' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_70_1346233447.816' 
    capture_lex $P512 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_60_1346233447.816' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_61_1346233447.816' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_62_1346233447.816' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_63_1346233447.816' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_64_1346233447.816' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_65_1346233447.816' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_66_1346233447.816' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_67_1346233447.816' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_68_1346233447.816' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_69_1346233447.816' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_70_1346233447.816' 
    capture_lex $P511
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_60_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1876
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1139
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P511
  default1139:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    unless _lex_param_1 goto if246_else1137 
.annotate 'line', 1879
    $P504 = _lex_param_1."cur_p"()
    $P505 = _lex_param_1."cur_s"()
    $P506 = _lex_param_1."cur_i"()
    $P507 = _lex_param_1."cur_n"()
    $P508 = $P101."BUILD"($P504, $P505, $P506, $P507)
    set $P510, $P508
    goto if246_end1138
  if246_else1137:
.annotate 'line', 1880
    $P509 = $P101."BUILD"(500, 500, 500, 500)
    set $P510, $P509
  if246_end1138:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "handler_allocator" :subid("cuid_61_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1884
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1886
    $P504 = $P101."BUILD"(10000, 10000, 10000, 10000)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_62_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1890
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$p", _lex_param_1 
    .lex "$s", _lex_param_2 
    .lex "$i", _lex_param_3 
    .lex "$n", _lex_param_4 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    set $I501, _lex_param_1
    repr_bind_attr_int $P501, $P502, "$!cur_p", $I501
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    set $I502, _lex_param_2
    repr_bind_attr_int $P503, $P504, "$!cur_s", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    set $I503, _lex_param_3
    repr_bind_attr_int $P505, $P506, "$!cur_i", $I503
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    set $I504, _lex_param_4
    repr_bind_attr_int $P507, $P508, "$!cur_n", $I504
    .return ($I504) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_p" :subid("cuid_63_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1897
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P503, $P504, "$!cur_p"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_p", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I503, $P505, $P506, "$!cur_p"
    set $S502, $I503
    concat $S501, "$P", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_s" :subid("cuid_64_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1901
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P503, $P504, "$!cur_s"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_s", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I503, $P505, $P506, "$!cur_s"
    set $S502, $I503
    concat $S501, "$S", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_i" :subid("cuid_65_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1905
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P503, $P504, "$!cur_i"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_i", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I503, $P505, $P506, "$!cur_i"
    set $S502, $I503
    concat $S501, "$I", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_n" :subid("cuid_66_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1909
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P503, $P504, "$!cur_n"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_n", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I503, $P505, $P506, "$!cur_n"
    set $S502, $I503
    concat $S501, "$N", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "cur_p" :subid("cuid_67_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1914
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P501, $P502, "$!cur_p"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "cur_s" :subid("cuid_68_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1915
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P501, $P502, "$!cur_s"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "cur_i" :subid("cuid_69_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1916
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P501, $P502, "$!cur_i"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "cur_n" :subid("cuid_70_1346233447.816") :anon :lex :outer("cuid_71_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1917
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    repr_get_attr_int $I501, $P501, $P502, "$!cur_n"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1921
    .const 'Sub' $P531 = 'cuid_72_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_73_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_74_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_75_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_76_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_77_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_78_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_79_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_80_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_81_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_82_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_83_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_84_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_85_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_86_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_87_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_88_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_89_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_90_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_91_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_92_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_93_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_94_1346233447.816' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_95_1346233447.816' 
    capture_lex $P531 
    .lex "%longnames", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P501, 'Hash'
    set $P101, $P501
    .const 'Sub' $P502 = 'cuid_72_1346233447.816' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_73_1346233447.816' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_74_1346233447.816' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_75_1346233447.816' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_76_1346233447.816' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_77_1346233447.816' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_78_1346233447.816' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_79_1346233447.816' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_80_1346233447.816' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_81_1346233447.816' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_82_1346233447.816' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_83_1346233447.816' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_84_1346233447.816' 
    capture_lex $P514
    new $P515, 'Hash'
    box $P516, "pmc"
    set $P515["P"], $P516
    box $P517, "int"
    set $P515["I"], $P517
    box $P518, "num"
    set $P515["N"], $P518
    box $P519, "string"
    set $P515["S"], $P519
    set $P101, $P515
    .const 'Sub' $P520 = 'cuid_85_1346233447.816' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_86_1346233447.816' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_87_1346233447.816' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_88_1346233447.816' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_89_1346233447.816' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_90_1346233447.816' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_91_1346233447.816' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_92_1346233447.816' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_93_1346233447.816' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_94_1346233447.816' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_95_1346233447.816' 
    capture_lex $P530
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_72_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1938
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1940
    $P504 = $P101."BUILD"(_lex_param_1, _lex_param_2)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_73_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_obj $P501, $P502, "$!qast", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_obj $P503, $P504, "$!outer", _lex_param_2
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P507, 'ResizablePMCArray'
    repr_bind_attr_obj $P505, $P506, "@!params", $P507
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P510, 'ResizablePMCArray'
    repr_bind_attr_obj $P508, $P509, "@!locals", $P510
    nqp_decontainerize $P511, _lex_param_0
    nqp_get_sc_object $P512, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P513, 'ResizablePMCArray'
    repr_bind_attr_obj $P511, $P512, "@!lexicals", $P513
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P516, 'Hash'
    repr_bind_attr_obj $P514, $P515, "%!local_types", $P516
    nqp_decontainerize $P517, _lex_param_0
    nqp_get_sc_object $P518, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P519, 'Hash'
    repr_bind_attr_obj $P517, $P518, "%!lexical_types", $P519
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P522, 'Hash'
    repr_bind_attr_obj $P520, $P521, "%!lexical_regs", $P522
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P525, 'Hash'
    repr_bind_attr_obj $P523, $P524, "%!reg_types", $P525
    nqp_decontainerize $P526, _lex_param_0
    nqp_get_sc_object $P527, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    new $P528, 'ResizablePMCArray'
    repr_bind_attr_obj $P526, $P527, "@!loadlibs", $P528
    nqp_decontainerize $P529, _lex_param_0
    nqp_get_sc_object $P530, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_int $P529, $P530, "$!cur_lex_p", 100
    nqp_decontainerize $P531, _lex_param_0
    nqp_get_sc_object $P532, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_int $P531, $P532, "$!cur_lex_s", 100
    nqp_decontainerize $P533, _lex_param_0
    nqp_get_sc_object $P534, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_int $P533, $P534, "$!cur_lex_i", 100
    nqp_decontainerize $P535, _lex_param_0
    nqp_get_sc_object $P536, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_bind_attr_int $P535, $P536, "$!cur_lex_n", 100
    .return (100) 
.end
.HLL "nqp"
.namespace []
.sub "add_param" :subid("cuid_74_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1961
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P513 = 'cuid_253_1346233447.816' 
    capture_lex $P513 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1962
    $P501 = _lex_param_1."scope"()
    set $S501, $P501
    iseq $I501, $S501, "local"
    unless $I501 goto if247_else1140 
.annotate 'line', 1963
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."register_local"(_lex_param_1)
    set $P506, $P503
    goto if247_end1141
  if247_else1140:
    .const 'Sub' $P504 = 'cuid_253_1346233447.816' 
    capture_lex $P504
    $P505 = $P504()
    set $P506, $P505
  if247_end1141:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P509, $P507, $P508, "@!params"
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P512, $P510, $P511, "@!params"
    set $N501, $P512
    set $I502, $N501
    set $P509[$I502], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_253_1346233447.816") :anon :lex :outer("cuid_74_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1965
    .lex "$reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I501, $P502, $P504, "$!param_idx"
    set $S502, $I501
    concat $S501, "_lex_param_", $S502
    box $P505, $S501
    set $P101, $P505
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    nqp_get_sc_object $P508, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    find_lex $P510, "self"
    nqp_decontainerize $P509, $P510
    nqp_get_sc_object $P511, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I502, $P509, $P511, "$!param_idx"
    set $N502, $I502
    set $N503, 1
    add $N501, $N502, $N503
    set $I503, $N501
    repr_bind_attr_int $P506, $P508, "$!param_idx", $I503
.annotate 'line', 1968
    find_lex $P513, "self"
    nqp_decontainerize $P512, $P513
    find_lex $P514, "$var"
    $P515 = $P512."register_lexical"($P514, $P101)
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "add_lexical" :subid("cuid_75_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1973
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1974
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."register_lexical"(_lex_param_1)
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P505, $P503, $P504, "@!lexicals"
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P508, $P506, $P507, "@!lexicals"
    set $N501, $P508
    set $I501, $N501
    set $P505[$I501], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "add_local" :subid("cuid_76_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1978
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1979
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."register_local"(_lex_param_1)
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P505, $P503, $P504, "@!locals"
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P508, $P506, $P507, "@!locals"
    set $N501, $P508
    set $I501, $N501
    set $P505[$I501], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "register_lexical" :subid("cuid_77_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1983
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default1147
    nqp_get_sc_object $P529, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P529
  default1147:
    .lex "$name", $P101 
    .lex "$type", $P102 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$reg", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 1984
    $P503 = _lex_param_1."name"()
    set $P101, $P503
.annotate 'line', 1985
    $P504 = _lex_param_1."returns"()
    $P505 = "&type_to_register_type"($P504)
    set $P102, $P505
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P508, $P506, $P507, "%!lexical_types"
    set $S501, $P101
    exists $I501, $P508[$S501]
    box $P511, $I501
    set $P510, $P511
    unless $I501 goto if248_end1143 
.annotate 'line', 1986
    set $S504, $P101
    concat $S503, "Lexical '", $S504
    concat $S502, $S503, "' already declared"
    box $P509, $S502
    die $P509
    set $P510, $P509
  if248_end1143:
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P514, $P512, $P513, "%!lexical_types"
    set $S505, $P101
    set $P514[$S505], $P102
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P517, $P515, $P516, "%!lexical_regs"
    set $S506, $P101
    unless _lex_param_2 goto if249_else1144 
    set $P520, _lex_param_2
    goto if249_end1145
  if249_else1144:
.annotate 'line', 1990
    nqp_decontainerize $P518, _lex_param_0
    set $S509, $P102
    downcase $S508, $S509
    concat $S507, "fresh_lex_", $S508
    $P519 = $P518.$S507()
    set $P520, $P519
  if249_end1145:
    set $P517[$S506], $P520
    nqp_decontainerize $P521, _lex_param_0
    nqp_get_sc_object $P522, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P523, $P521, $P522, "%!reg_types"
    nqp_decontainerize $P525, _lex_param_0
    nqp_get_sc_object $P526, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P527, $P525, $P526, "%!lexical_regs"
    set $S510, $P101
    set $P524, $P527[$S510]
    unless_null $P524, fallback1146
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P528
  fallback1146:
    set $S511, $P524
    set $P523[$S511], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "register_local" :subid("cuid_78_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1994
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 1995
    $P502 = _lex_param_1."name"()
    set $P101, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P505, $P503, $P504, "%!local_types"
    set $S501, $P101
    exists $I501, $P505[$S501]
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if250_end1149 
.annotate 'line', 1996
    set $S504, $P101
    concat $S503, "Local '", $S504
    concat $S502, $S503, "' already declared"
    box $P506, $S502
    die $P506
    set $P507, $P506
  if250_end1149:
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P511, $P509, $P510, "%!local_types"
    set $S505, $P101
.annotate 'line', 1999
    $P512 = _lex_param_1."returns"()
    $P513 = "&type_to_register_type"($P512)
    set $P511[$S505], $P513
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P516, $P514, $P515, "%!reg_types"
    set $S506, $P101
    nqp_decontainerize $P518, _lex_param_0
    nqp_get_sc_object $P519, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P520, $P518, $P519, "%!local_types"
    set $S507, $P101
    set $P517, $P520[$S507]
    unless_null $P517, fallback1150
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P521
  fallback1150:
    set $P516[$S506], $P517
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_79_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2003
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!qast"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "outer" :subid("cuid_80_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2004
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!outer"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "params" :subid("cuid_81_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2005
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "@!params"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "lexicals" :subid("cuid_82_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2006
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "@!lexicals"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "locals" :subid("cuid_83_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2007
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "@!locals"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "lex_reg" :subid("cuid_84_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P504, $P502, $P503, "%!lexical_regs"
    set $S501, _lex_param_1
    set $P501, $P504[$S501]
    unless_null $P501, fallback1151
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1151:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "local_type" :subid("cuid_85_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P504, $P502, $P503, "%!local_types"
    set $S501, _lex_param_1
    set $P501, $P504[$S501]
    unless_null $P501, fallback1152
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1152:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "local_type_long" :subid("cuid_86_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2013
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P502, "%longnames"
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P506, $P504, $P505, "%!local_types"
    set $S501, _lex_param_1
    set $P503, $P506[$S501]
    unless_null $P503, fallback1153
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1153:
    set $S502, $P503
    set $P501, $P502[$S502]
    unless_null $P501, fallback1154
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P508
  fallback1154:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type" :subid("cuid_87_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2014
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P504, $P502, $P503, "%!lexical_types"
    set $S501, _lex_param_1
    set $P501, $P504[$S501]
    unless_null $P501, fallback1155
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1155:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type_long" :subid("cuid_88_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2015
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P502, "%longnames"
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P506, $P504, $P505, "%!lexical_types"
    set $S501, _lex_param_1
    set $P503, $P506[$S501]
    unless_null $P503, fallback1156
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1156:
    set $S502, $P503
    set $P501, $P502[$S502]
    unless_null $P501, fallback1157
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P508
  fallback1157:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "reg_type" :subid("cuid_89_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P504, $P502, $P503, "%!reg_types"
    set $S501, _lex_param_1
    set $P501, $P504[$S501]
    unless_null $P501, fallback1158
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1158:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_loadlibs" :subid("cuid_90_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2018
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P507 = 'cuid_254_1346233447.816' 
    capture_lex $P507 
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    set $P501, _lex_param_1
    iter $P503, _lex_param_1
    new $P505, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P505, for_handlers1159
    push_eh $P505
  for_next1160:
    unless $P503, for_done1162
    shift $P506, $P503
  for_redo1161:
    .const 'Sub' $P504 = 'cuid_254_1346233447.816' 
    capture_lex $P504
    $P501 = $P504($P506)
    goto for_next1160
  for_handlers1159:
    .get_results ($P505)
    pop_upto_eh $P505
    getattribute $P505, $P505, 'type'
    eq $P505, .CONTROL_LOOP_NEXT, for_next1160
    eq $P505, .CONTROL_LOOP_REDO, for_redo1161
  for_done1162:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1346233447.816") :anon :lex :outer("cuid_90_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2019
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    nqp_get_sc_object $P503, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P504, $P501, $P503, "@!loadlibs"
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P508, $P505, $P507, "@!loadlibs"
    set $N501, $P508
    set $I501, $N501
    set $P504[$I501], _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_91_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2023
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_obj $P503, $P501, $P502, "@!loadlibs"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_p" :subid("cuid_92_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2027
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I501, $P503, $P504, "$!cur_lex_p"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_lex_p", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I503, $P505, $P506, "$!cur_lex_p"
    set $S502, $I503
    concat $S501, "$P", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_s" :subid("cuid_93_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2031
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I501, $P503, $P504, "$!cur_lex_s"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_lex_s", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I503, $P505, $P506, "$!cur_lex_s"
    set $S502, $I503
    concat $S501, "$S", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_i" :subid("cuid_94_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2035
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I501, $P503, $P504, "$!cur_lex_i"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_lex_i", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I503, $P505, $P506, "$!cur_lex_i"
    set $S502, $I503
    concat $S501, "$I", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_n" :subid("cuid_95_1346233447.816") :anon :lex :outer("cuid_96_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2039
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I501, $P503, $P504, "$!cur_lex_n"
    set $N502, $I501
    set $N503, 1
    add $N501, $N502, $N503
    set $I502, $N501
    repr_bind_attr_int $P501, $P502, "$!cur_lex_n", $I502
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    repr_get_attr_int $I503, $P505, $P506, "$!cur_lex_n"
    set $S502, $I503
    concat $S501, "$N", $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_97_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2062
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 2063
    $P501 = "&type_to_register_type"(_lex_param_1)
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "force_return_boxing_for_hll" :subid("cuid_98_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2072
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    find_lex $P501, "%hll_force_return_boxing"
    set $S501, _lex_param_1
    box $P502, 1
    set $P501[$S501], $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "unique" :subid("cuid_99_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2076
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_13, default1166
    box $P501, ""
    set _lex_param_1, $P501
  default1166:
    .lex "self", _lex_param_0 
    .lex "$prefix", _lex_param_1 
    .local pmc tmp_2 
    set $S502, _lex_param_1
    find_lex $P503, "$?PACKAGE"
    get_who $P502, $P503
    set $P501, $P502["$serno"]
    unless_null $P501, fallback1165
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P504
  fallback1165:
    set tmp_2, $P501
    find_lex $P506, "$?PACKAGE"
    get_who $P505, $P506
    set $N502, tmp_2
    set $N503, 1
    add $N501, $N502, $N503
    box $P507, $N501
    set $P505["$serno"], $P507
    set $S503, tmp_2
    concat $S501, $S502, $S503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_100_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2077
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $S502, _lex_param_1
    escape $S501, $S502
    box $P502, $S501
    set $P101, $P502
    set $S503, $P101
    index $I502, $S503, utf8:"\\x", 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    unless $I501 goto if252_else1167 
    set $S506, $P101
    concat $S505, "utf8:\"", $S506
    concat $S504, $S505, "\""
    set $S515, $S504
    goto if252_end1168
  if252_else1167:
    set $S507, $P101
    index $I504, $S507, unicode:"\\u", 0
    set $N503, $I504
    set $N504, 0
    isge $I503, $N503, $N504
    unless $I503 goto if253_else1169 
    set $S510, $P101
    concat $S509, "unicode:\"", $S510
    concat $S508, $S509, "\""
    set $S514, $S508
    goto if253_end1170
  if253_else1169:
    set $S513, $P101
    concat $S512, "\"", $S513
    concat $S511, $S512, "\""
    set $S514, $S511
  if253_end1170:
    set $S515, $S514
  if252_end1168:
    .return ($S515) 
.end
.HLL "nqp"
.namespace []
.sub "rxescape" :subid("cuid_101_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2085
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    set $S504, _lex_param_1
    escape $S503, $S504
    concat $S502, "ucs4:\"", $S503
    concat $S501, $S502, "\""
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_102_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2087
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_14, default1176
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P518
  default1176:
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    unless _lex_param_2 goto if254_else1171 
.annotate 'line', 2088
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Want"]
    unless_null $P501, fallback1175
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1175:
    type_check $I501, _lex_param_1, $P501
    unless $I501 goto if255_else1173 
.annotate 'line', 2089
.annotate 'line', 2090
    nqp_decontainerize $P506, _lex_param_0
    nqp_decontainerize $P507, _lex_param_0
    $P508 = "&want"(_lex_param_1, _lex_param_2)
    $P509 = $P507."as_post"($P508)
    $P510 = $P506."coerce"($P509, _lex_param_2)
    set $P515, $P510
    goto if255_end1174
  if255_else1173:
.annotate 'line', 2092
.annotate 'line', 2093
    nqp_decontainerize $P511, _lex_param_0
    nqp_decontainerize $P512, _lex_param_0
    $P513 = $P512."as_post"(_lex_param_1)
    $P514 = $P511."coerce"($P513, _lex_param_2)
    set $P515, $P514
  if255_end1174:
    set $P517, $P515
    goto if254_end1172
  if254_else1171:
.annotate 'line', 2096
    multi_dispatch_over_lexical_candidates $P516
    set $P517, $P516
  if254_end1172:
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_103_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P546 = 'cuid_256_1346233447.816' 
    capture_lex $P546 
    .const 'Sub' $P546 = 'cuid_258_1346233447.816' 
    capture_lex $P546 
    .const 'Sub' $P546 = 'cuid_259_1346233447.816' 
    capture_lex $P546 
    .lex "$*HLL", $P101 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P102 
    .lex "$block_post", $P103 
    .lex "$comp_mode", $P104 
    .lex "@pre_des", $P105 
    .lex "@post_des", $P106 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    new $P506, 'ResizablePMCArray'
    set $P106, $P506
    box $P507, ""
    set $P101, $P507
.annotate 'line', 2104
    $P508 = _lex_param_1."hll"()
    set $P510, $P508
    unless $P508 goto if256_end1178 
.annotate 'line', 2105
    $P509 = _lex_param_1."hll"()
    set $P101, $P509
    set $P510, $P101
  if256_end1178:
    $P511 = _lex_param_1."list"()
    set $N501, $P511
    set $N502, 1
    isne $I501, $N501, $N502
    set $I504, $I501
    if $I501 goto unless258_end1182 
    set $P512, _lex_param_1[0]
    unless_null $P512, fallback1183
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P513
  fallback1183:
    get_hll_global $P517, "GLOBAL"
    nqp_get_package_through_who $P516, $P517, "QAST"
    get_who $P515, $P516
    set $P514, $P515["Block"]
    unless_null $P514, fallback1184
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P518
  fallback1184:
    type_check $I503, $P512, $P514
    box $P519, $I503
    isfalse $I502, $P519
    set $I504, $I502
  unless258_end1182:
    box $P522, $I504
    set $P521, $P522
    unless $I504 goto if257_end1180 
.annotate 'line', 2109
    box $P520, "QAST::CompUnit should have one child that is a QAST::Block"
    die $P520
    set $P521, $P520
  if257_end1180:
    box $P523, 1
    set $P102, $P523
.annotate 'line', 2115
    nqp_decontainerize $P524, _lex_param_0
    set $P525, _lex_param_1[0]
    unless_null $P525, fallback1185
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P526
  fallback1185:
    $P527 = $P524."as_post"($P525)
    set $P103, $P527
.annotate 'line', 2120
    $P528 = _lex_param_1."compilation_mode"()
    set $P104, $P528
.annotate 'line', 2121
    $P529 = _lex_param_1."pre_deserialize"()
    set $P105, $P529
.annotate 'line', 2122
    $P530 = _lex_param_1."post_deserialize"()
    set $P106, $P530
    set $P531, $P104
    if $P104 goto unless261_end1191 
    set $P531, $P105
  unless261_end1191:
    set $P532, $P531
    if $P531 goto unless260_end1189 
    set $P532, $P106
  unless260_end1189:
    set $P535, $P532
    unless $P532 goto if259_end1187 
    .const 'Sub' $P533 = 'cuid_256_1346233447.816' 
    capture_lex $P533
    $P534 = $P533()
    set $P535, $P534
  if259_end1187:
.annotate 'line', 2150
    $P536 = _lex_param_1."load"()
    defined $I505, $P536
    box $P540, $I505
    set $P539, $P540
    unless $I505 goto if263_end1206 
    .const 'Sub' $P537 = 'cuid_258_1346233447.816' 
    capture_lex $P537
    $P538 = $P537()
    set $P539, $P538
  if263_end1206:
.annotate 'line', 2157
    $P541 = _lex_param_1."main"()
    defined $I506, $P541
    box $P545, $I506
    set $P544, $P545
    unless $I506 goto if264_end1209 
    .const 'Sub' $P542 = 'cuid_259_1346233447.816' 
    capture_lex $P542
    $P543 = $P542()
    set $P544, $P543
  if264_end1209:
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1346233447.816") :anon :lex :outer("cuid_103_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2123
    .const 'Sub' $P539 = 'cuid_255_1346233447.816' 
    capture_lex $P539 
    .const 'Sub' $P539 = 'cuid_257_1346233447.816' 
    capture_lex $P539 
    .lex "$block", $P101 
    .lex "$sc_post", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2126
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "QAST"
    get_who $P504, $P505
    set $P503, $P504["Block"]
    unless_null $P503, fallback1192
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1192:
    $P508 = $P503."new"("raw" :named("blocktype"))
    set $P101, $P508
    find_lex $P512, "@pre_des"
    set $P509, $P512
    iter $P511, $P512
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers1194
    push_eh $P514
  for_next1195:
    unless $P511, for_done1197
    shift $P515, $P511
  for_redo1196:
    .const 'Sub' $P513 = 'cuid_255_1346233447.816' 
    capture_lex $P513
    $P509 = $P513($P515)
    goto for_next1195
  for_handlers1194:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next1195
    eq $P514, .CONTROL_LOOP_REDO, for_redo1196
  for_done1197:
    pop_eh 
    find_lex $P516, "$comp_mode"
    set $P525, $P516
    unless $P516 goto if262_end1199 
.annotate 'line', 2134
.annotate 'line', 2135
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    find_lex $P519, "$cu"
    $P520 = $P519."sc"()
    find_lex $P521, "$cu"
    $P522 = $P521."code_ref_blocks"()
    $P523 = $P517."deserialization_code"($P520, $P522)
    $P524 = $P101."push"($P523)
    set $P525, $P524
  if262_end1199:
    find_lex $P529, "@post_des"
    set $P526, $P529
    iter $P528, $P529
    new $P531, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P531, for_handlers1201
    push_eh $P531
  for_next1202:
    unless $P528, for_done1204
    shift $P532, $P528
  for_redo1203:
    .const 'Sub' $P530 = 'cuid_257_1346233447.816' 
    capture_lex $P530
    $P526 = $P530($P532)
    goto for_next1202
  for_handlers1201:
    .get_results ($P531)
    pop_upto_eh $P531
    getattribute $P531, $P531, 'type'
    eq $P531, .CONTROL_LOOP_NEXT, for_next1202
    eq $P531, .CONTROL_LOOP_REDO, for_redo1203
  for_done1204:
    pop_eh 
.annotate 'line', 2144
    find_lex $P534, "self"
    nqp_decontainerize $P533, $P534
    $P535 = $P533."as_post"($P101)
    set $P102, $P535
.annotate 'line', 2145
    $P536 = $P102."pirflags"(":load :init")
.annotate 'line', 2146
    find_lex $P537, "$block_post"
    $P538 = $P537."push"($P102)
    .return ($P538) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1346233447.816") :anon :lex :outer("cuid_256_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2129
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2130
    find_lex $P501, "$block"
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "QAST"
    get_who $P503, $P504
    set $P502, $P503["Stmt"]
    unless_null $P502, fallback1193
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1193:
    $P507 = $P502."new"(_lex_param_0)
    $P508 = $P501."push"($P507)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1346233447.816") :anon :lex :outer("cuid_256_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2139
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2140
    find_lex $P501, "$block"
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "QAST"
    get_who $P503, $P504
    set $P502, $P503["Stmt"]
    unless_null $P502, fallback1200
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1200:
    $P507 = $P502."new"(_lex_param_0)
    $P508 = $P501."push"($P507)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1346233447.816") :anon :lex :outer("cuid_103_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2150
    .lex "$load_post", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2151
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "QAST"
    get_who $P505, $P506
    set $P504, $P505["Block"]
    unless_null $P504, fallback1207
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1207:
    find_lex $P509, "$cu"
    $P510 = $P509."load"()
    $P511 = $P504."new"($P510, "raw" :named("blocktype"))
    $P512 = $P502."as_post"($P511)
    set $P101, $P512
.annotate 'line', 2152
    $P513 = $P101."pirflags"(":load")
.annotate 'line', 2153
    find_lex $P514, "$block_post"
    $P515 = $P514."push"($P101)
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1346233447.816") :anon :lex :outer("cuid_103_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2157
    .lex "$main_post", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2158
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "QAST"
    get_who $P505, $P506
    set $P504, $P505["Block"]
    unless_null $P504, fallback1210
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1210:
    find_lex $P509, "$cu"
    $P510 = $P509."main"()
    $P511 = $P504."new"($P510, "raw" :named("blocktype"))
    $P512 = $P502."as_post"($P511)
    set $P101, $P512
.annotate 'line', 2159
    $P513 = $P101."pirflags"(":main")
.annotate 'line', 2160
    find_lex $P514, "$block_post"
    $P515 = $P514."push"($P101)
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "deserialization_code" :subid("cuid_104_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2166
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$sh", $P101 
    .lex "$serialized", $P102 
    .lex "$sh_ast", $P103 
    .lex "$sh_elems", $P104 
    .lex "$i", $P105 
    .lex "$cr_past", $P106 
    .lex "self", _lex_param_0 
    .lex "$sc", _lex_param_1 
    .lex "@code_ref_blocks", _lex_param_2 
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
    nqp_serialize_sc $S501, _lex_param_1, $P101
    box $P508, $S501
    set $P102, $P508
    nqp_pop_compiling_sc 
.annotate 'line', 2175
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Op"]
    unless_null $P509, fallback1211
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback1211:
    $P514 = $P509."new"("list_s" :named("op"))
    set $P103, $P514
    elements $I501, $P101
    box $P515, $I501
    set $P104, $P515
    box $P516, 0
    set $P105, $P516
    new $P537, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P537, while265_handlers1215
    push_eh $P537
  while265_test1212:
    set $N501, $P105
    set $N502, $P104
    islt $I502, $N501, $N502
    box $P538, $I502
    set $P536, $P538
    unless $I502 goto while265_done1216 
  while265_redo1214:
.annotate 'line', 2178
.annotate 'line', 2179
    set $I504, $P105
    set $P517, $P101[$I504]
    unless_null $P517, fallback1219
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback1219:
    set $S502, $P517
    isnull $I503, $S502
    unless $I503 goto if266_else1217 
.annotate 'line', 2180
    get_hll_global $P522, "GLOBAL"
    nqp_get_package_through_who $P521, $P522, "QAST"
    get_who $P520, $P521
    set $P519, $P520["Op"]
    unless_null $P519, fallback1220
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P523
  fallback1220:
    $P524 = $P519."new"("null_s" :named("op"))
    set $P533, $P524
    goto if266_end1218
  if266_else1217:
.annotate 'line', 2181
    get_hll_global $P528, "GLOBAL"
    nqp_get_package_through_who $P527, $P528, "QAST"
    get_who $P526, $P527
    set $P525, $P526["SVal"]
    unless_null $P525, fallback1221
    nqp_get_sc_object $P529, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P529
  fallback1221:
    set $I505, $P105
    set $P530, $P101[$I505]
    unless_null $P530, fallback1222
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P530, $P531
  fallback1222:
    $P532 = $P525."new"($P530 :named("value"))
    set $P533, $P532
  if266_end1218:
    $P534 = $P103."push"($P533)
    set $N504, $P105
    set $N505, 1
    add $N503, $N504, $N505
    box $P535, $N503
    set $P105, $P535
    set $P536, $P105
    goto while265_test1212 
  while265_handlers1215:
    .get_results ($P537)
    pop_upto_eh $P537
    getattribute $P537, $P537, 'type'
    eq $P537, .CONTROL_LOOP_NEXT, while265_test1212
    eq $P537, .CONTROL_LOOP_REDO, while265_redo1214
  while265_done1216:
    pop_eh 
.annotate 'line', 2186
    get_hll_global $P542, "GLOBAL"
    nqp_get_package_through_who $P541, $P542, "QAST"
    get_who $P540, $P541
    set $P539, $P540["Op"]
    unless_null $P539, fallback1223
    nqp_get_sc_object $P543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P539, $P543
  fallback1223:
    $P544 = $P539."new"(_lex_param_2 :flat, "list_b" :named("op"))
    set $P106, $P544
.annotate 'line', 2189
    get_hll_global $P548, "GLOBAL"
    nqp_get_package_through_who $P547, $P548, "QAST"
    get_who $P546, $P547
    set $P545, $P546["Stmt"]
    unless_null $P545, fallback1224
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P545, $P549
  fallback1224:
.annotate 'line', 2190
    get_hll_global $P553, "GLOBAL"
    nqp_get_package_through_who $P552, $P553, "QAST"
    get_who $P551, $P552
    set $P550, $P551["Op"]
    unless_null $P550, fallback1225
    nqp_get_sc_object $P554, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P550, $P554
  fallback1225:
.annotate 'line', 2192
    get_hll_global $P558, "GLOBAL"
    nqp_get_package_through_who $P557, $P558, "QAST"
    get_who $P556, $P557
    set $P555, $P556["Var"]
    unless_null $P555, fallback1226
    nqp_get_sc_object $P559, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P555, $P559
  fallback1226:
    $P560 = $P555."new"("cur_sc" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 2193
    get_hll_global $P564, "GLOBAL"
    nqp_get_package_through_who $P563, $P564, "QAST"
    get_who $P562, $P563
    set $P561, $P562["Op"]
    unless_null $P561, fallback1227
    nqp_get_sc_object $P565, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P565
  fallback1227:
    get_hll_global $P569, "GLOBAL"
    nqp_get_package_through_who $P568, $P569, "QAST"
    get_who $P567, $P568
    set $P566, $P567["SVal"]
    unless_null $P566, fallback1228
    nqp_get_sc_object $P570, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P566, $P570
  fallback1228:
    $P571 = _lex_param_1."handle"()
    $P572 = $P566."new"($P571 :named("value"))
    $P573 = $P561."new"($P572, "createsc" :named("op"))
    $P574 = $P550."new"($P560, $P573, "bind" :named("op"))
.annotate 'line', 2195
    get_hll_global $P578, "GLOBAL"
    nqp_get_package_through_who $P577, $P578, "QAST"
    get_who $P576, $P577
    set $P575, $P576["Op"]
    unless_null $P575, fallback1229
    nqp_get_sc_object $P579, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P575, $P579
  fallback1229:
.annotate 'line', 2197
    get_hll_global $P583, "GLOBAL"
    nqp_get_package_through_who $P582, $P583, "QAST"
    get_who $P581, $P582
    set $P580, $P581["Var"]
    unless_null $P580, fallback1230
    nqp_get_sc_object $P584, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P580, $P584
  fallback1230:
    $P585 = $P580."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2198
    get_hll_global $P589, "GLOBAL"
    nqp_get_package_through_who $P588, $P589, "QAST"
    get_who $P587, $P588
    set $P586, $P587["SVal"]
    unless_null $P586, fallback1231
    nqp_get_sc_object $P590, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P586, $P590
  fallback1231:
    $P591 = _lex_param_1."description"()
    $P592 = $P586."new"($P591 :named("value"))
    $P593 = $P575."new"($P585, $P592, "callmethod" :named("op"), "set_description" :named("name"))
.annotate 'line', 2200
    get_hll_global $P597, "GLOBAL"
    nqp_get_package_through_who $P596, $P597, "QAST"
    get_who $P595, $P596
    set $P594, $P595["Op"]
    unless_null $P594, fallback1232
    nqp_get_sc_object $P598, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P594, $P598
  fallback1232:
.annotate 'line', 2202
    get_hll_global $P602, "GLOBAL"
    nqp_get_package_through_who $P601, $P602, "QAST"
    get_who $P600, $P601
    set $P599, $P600["SVal"]
    unless_null $P599, fallback1233
    nqp_get_sc_object $P603, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P599, $P603
  fallback1233:
    $P604 = $P599."new"($P102 :named("value"))
.annotate 'line', 2203
    get_hll_global $P608, "GLOBAL"
    nqp_get_package_through_who $P607, $P608, "QAST"
    get_who $P606, $P607
    set $P605, $P606["Var"]
    unless_null $P605, fallback1234
    nqp_get_sc_object $P609, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P605, $P609
  fallback1234:
    $P610 = $P605."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2205
    get_hll_global $P614, "GLOBAL"
    nqp_get_package_through_who $P613, $P614, "QAST"
    get_who $P612, $P613
    set $P611, $P612["Block"]
    unless_null $P611, fallback1235
    nqp_get_sc_object $P615, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P611, $P615
  fallback1235:
    $P616 = $P611."new"($P106, "immediate" :named("blocktype"))
    $P617 = $P594."new"($P604, $P610, $P103, $P616, "deserialize" :named("op"))
    $P618 = $P545."new"($P574, $P593, $P617)
    .return ($P618) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_105_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2210
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P534 = 'cuid_262_1346233447.816' 
    capture_lex $P534 
    .const 'Sub' $P534 = 'cuid_273_1346233447.816' 
    capture_lex $P534 
    .const 'Sub' $P534 = 'cuid_274_1346233447.816' 
    capture_lex $P534 
    .lex "$sub", $P101 
    .lex "$ops", $P102 
    .lex "$blocktype", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1236
    .lex "RETURN", $P104
    .const 'Sub' $P504 = 'cuid_262_1346233447.816' 
    capture_lex $P504
    $P505 = $P504()
    new $P512, 'ExceptionHandler'
    set_label $P512, catch_handler_2991324
    $P512.'handle_types_except'(.CONTROL_ALL)
    push_eh $P512
    find_dynamic_lex $P506, "$*BLOCK"
    unless_null $P506, fallback1320
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["$BLOCK"]
    unless_null $P507, fallback1321
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P510
  fallback1321:
    unless_null $P507, vivi_2971322
    die "Contextual $*BLOCK not found"
    box $P511, "Contextual $*BLOCK not found"
    set $P507, $P511
  vivi_2971322:
    set $P506, $P507
  fallback1320:
    set $P513, $P506
    pop_eh 
    goto skip_handler_2981323
  catch_handler_2991324:
    .get_results ($P512) 
    set $I10001, 1
    set $P512["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P512
    pop_upto_eh $P512
    pop_eh 
    set $P513, $P10001
    goto skip_handler_2981323
  skip_handler_2981323:
    find_lex $P514, "BlockInfo"
    type_check $I501, $P513, $P514
    box $P518, $I501
    set $P517, $P518
    if $I501 goto unless296_end1319 
.annotate 'line', 2365
    find_lex $P515, "RETURN"
    $P516 = $P515($P101)
    set $P517, $P516
  unless296_end1319:
.annotate 'line', 2371
    get_hll_global $P522, "GLOBAL"
    nqp_get_package_through_who $P521, $P522, "PIRT"
    get_who $P520, $P521
    set $P519, $P520["Ops"]
    unless_null $P519, fallback1325
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P523
  fallback1325:
    $P524 = $P519."new"()
    set $P102, $P524
.annotate 'line', 2372
    $P525 = $P102."push"($P101)
.annotate 'line', 2373
    $P526 = _lex_param_1."blocktype"()
    set $P103, $P526
    set $S501, $P103
    iseq $I502, $S501, "immediate"
    unless $I502 goto if300_else1326 
    .const 'Sub' $P527 = 'cuid_273_1346233447.816' 
    capture_lex $P527
    $P528 = $P527()
    set $P533, $P528
    goto if300_end1327
  if300_else1326:
    set $S502, $P103
    iseq $I503, $S502, "declaration"
    set $I505, $I503
    if $I503 goto unless311_end1349 
    set $S503, $P103
    iseq $I504, $S503, ""
    set $I505, $I504
  unless311_end1349:
    box $P532, $I505
    set $P531, $P532
    unless $I505 goto if310_end1347 
    .const 'Sub' $P529 = 'cuid_274_1346233447.816' 
    capture_lex $P529
    $P530 = $P529()
    set $P531, $P530
  if310_end1347:
    set $P533, $P531
  if300_end1327:
    goto lexotic_1237
  lexotic_1236:
    .get_results ($P102)
  lexotic_1237:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1346233447.816") :anon :lex :outer("cuid_105_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2213
    .const 'Sub' $P653 = 'cuid_261_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_264_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_266_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_267_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_268_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_269_1346233447.816' 
    capture_lex $P653 
    .const 'Sub' $P653 = 'cuid_271_1346233447.816' 
    capture_lex $P653 
    .lex "$*REGALLOC", $P101 
    .lex "$*BLOCKRA", $P102 
    .lex "$*BINDVAL", $P103 
    .lex "$outer", $P104 
    .lex "$block", $P105 
    .lex "@inners", $P106 
    .lex "$stmts", $P107 
    .lex "$decls", $P108 
    .lex "$opts", $P109 
    .lex "%lex_params", $P110 
    .lex "$cap_lex_reg", $P111 
    .lex "$hll", $P112 
    .lex "@loadlibs", $P113 
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
    new $P506, 'ResizablePMCArray'
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    new $P510, 'Hash'
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
    new $P513, 'ResizablePMCArray'
    set $P113, $P513
.annotate 'line', 2215
    find_lex $P514, "RegAlloc"
    $P515 = $P514."new"()
    set $P101, $P515
    unless_null $P101, fallback1238
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    set $P516, $P517["$REGALLOC"]
    unless_null $P516, fallback1239
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P519
  fallback1239:
    unless_null $P516, vivi_2671240
    die "Contextual $*REGALLOC not found"
    box $P520, "Contextual $*REGALLOC not found"
    set $P516, $P520
  vivi_2671240:
    set $P101, $P516
  fallback1238:
    set $P102, $P101
    box $P521, 0
    set $P103, $P521
    new $P528, 'ExceptionHandler'
    set_label $P528, catch_handler_2701245
    $P528.'handle_types_except'(.CONTROL_ALL)
    push_eh $P528
    find_dynamic_lex $P522, "$*BLOCK"
    unless_null $P522, fallback1241
    get_hll_global $P525, "GLOBAL"
    get_who $P524, $P525
    set $P523, $P524["$BLOCK"]
    unless_null $P523, fallback1242
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P526
  fallback1242:
    unless_null $P523, vivi_2681243
    die "Contextual $*BLOCK not found"
    box $P527, "Contextual $*BLOCK not found"
    set $P523, $P527
  vivi_2681243:
    set $P522, $P523
  fallback1241:
    set $P529, $P522
    pop_eh 
    goto skip_handler_2691244
  catch_handler_2701245:
    .get_results ($P528) 
    set $I10001, 1
    set $P528["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P528
    pop_upto_eh $P528
    pop_eh 
    set $P529, $P10001
    goto skip_handler_2691244
  skip_handler_2691244:
    set $P104, $P529
.annotate 'line', 2219
    find_lex $P530, "BlockInfo"
    find_lex $P531, "$node"
    $P532 = $P530."new"($P531, $P104)
    set $P105, $P532
    .const 'Sub' $P533 = 'cuid_261_1346233447.816' 
    capture_lex $P533
    $P534 = $P533()
.annotate 'line', 2240
    get_hll_global $P538, "GLOBAL"
    nqp_get_package_through_who $P537, $P538, "PIRT"
    get_who $P536, $P537
    set $P535, $P536["Ops"]
    unless_null $P535, fallback1252
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P539
  fallback1252:
    $P540 = $P535."new"()
    set $P108, $P540
.annotate 'line', 2241
    get_hll_global $P544, "GLOBAL"
    nqp_get_package_through_who $P543, $P544, "PIRT"
    get_who $P542, $P543
    set $P541, $P542["Ops"]
    unless_null $P541, fallback1253
    nqp_get_sc_object $P545, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P545
  fallback1253:
    $P546 = $P541."new"()
    set $P109, $P546
.annotate 'line', 2242
    find_lex $P547, "$node"
    $P548 = $P547."node"()
    set $P552, $P548
    unless $P548 goto if276_end1255 
    find_lex $P549, "$node"
    $P550 = $P549."node"()
    $P551 = $P108."node"($P550)
    set $P552, $P551
  if276_end1255:
.annotate 'line', 2244
    find_lex $P553, "$node"
    $P554 = $P553."custom_args"()
    unless $P554 goto if277_else1256 
.annotate 'line', 2245
    $P555 = $P108."push_pirop"(".param pmc CALL_SIG :call_sig")
    set $P563, $P555
    goto if277_end1257
  if277_else1256:
.annotate 'line', 2247
.annotate 'line', 2248
    $P559 = $P105."params"()
    set $P556, $P559
    iter $P558, $P559
    new $P561, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P561, for_handlers1271
    push_eh $P561
  for_next1272:
    unless $P558, for_done1274
    shift $P562, $P558
  for_redo1273:
    .const 'Sub' $P560 = 'cuid_264_1346233447.816' 
    capture_lex $P560
    $P556 = $P560($P562)
    goto for_next1272
  for_handlers1271:
    .get_results ($P561)
    pop_upto_eh $P561
    getattribute $P561, $P561, 'type'
    eq $P561, .CONTROL_LOOP_NEXT, for_next1272
    eq $P561, .CONTROL_LOOP_REDO, for_redo1273
  for_done1274:
    pop_eh 
    set $P563, $P556
  if277_end1257:
.annotate 'line', 2299
    unless_null $P101, fallback1275
    get_hll_global $P566, "GLOBAL"
    get_who $P565, $P566
    set $P564, $P565["$REGALLOC"]
    unless_null $P564, fallback1276
    nqp_get_sc_object $P567, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P564, $P567
  fallback1276:
    unless_null $P564, vivi_2831277
    die "Contextual $*REGALLOC not found"
    box $P568, "Contextual $*REGALLOC not found"
    set $P564, $P568
  vivi_2831277:
    set $P101, $P564
  fallback1275:
    $P569 = $P101."fresh_p"()
    set $P111, $P569
    set $P570, $P106
    iter $P572, $P106
    new $P574, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P574, for_handlers1278
    push_eh $P574
  for_next1279:
    unless $P572, for_done1281
    shift $P575, $P572
  for_redo1280:
    .const 'Sub' $P573 = 'cuid_266_1346233447.816' 
    capture_lex $P573
    $P570 = $P573($P575)
    goto for_next1279
  for_handlers1278:
    .get_results ($P574)
    pop_upto_eh $P574
    getattribute $P574, $P574, 'type'
    eq $P574, .CONTROL_LOOP_NEXT, for_next1279
    eq $P574, .CONTROL_LOOP_REDO, for_redo1280
  for_done1281:
    pop_eh 
.annotate 'line', 2306
    $P576 = $P108."push"($P109)
.annotate 'line', 2309
    $P580 = $P105."lexicals"()
    set $P577, $P580
    iter $P579, $P580
    new $P582, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P582, for_handlers1282
    push_eh $P582
  for_next1283:
    unless $P579, for_done1285
    shift $P583, $P579
  for_redo1284:
    .const 'Sub' $P581 = 'cuid_267_1346233447.816' 
    capture_lex $P581
    $P577 = $P581($P583)
    goto for_next1283
  for_handlers1282:
    .get_results ($P582)
    pop_upto_eh $P582
    getattribute $P582, $P582, 'type'
    eq $P582, .CONTROL_LOOP_NEXT, for_next1283
    eq $P582, .CONTROL_LOOP_REDO, for_redo1284
  for_done1285:
    pop_eh 
    set $P584, $P110
    iter $P586, $P110
    new $P588, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P588, for_handlers1286
    push_eh $P588
  for_next1287:
    unless $P586, for_done1289
    shift $P589, $P586
  for_redo1288:
    .const 'Sub' $P587 = 'cuid_268_1346233447.816' 
    capture_lex $P587
    $P584 = $P587($P589)
    goto for_next1287
  for_handlers1286:
    .get_results ($P588)
    pop_upto_eh $P588
    getattribute $P588, $P588, 'type'
    eq $P588, .CONTROL_LOOP_NEXT, for_next1287
    eq $P588, .CONTROL_LOOP_REDO, for_redo1288
  for_done1289:
    pop_eh 
.annotate 'line', 2315
    $P593 = $P105."locals"()
    set $P590, $P593
    iter $P592, $P593
    new $P595, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P595, for_handlers1290
    push_eh $P595
  for_next1291:
    unless $P592, for_done1293
    shift $P596, $P592
  for_redo1292:
    .const 'Sub' $P594 = 'cuid_269_1346233447.816' 
    capture_lex $P594
    $P590 = $P594($P596)
    goto for_next1291
  for_handlers1290:
    .get_results ($P595)
    pop_upto_eh $P595
    getattribute $P595, $P595, 'type'
    eq $P595, .CONTROL_LOOP_NEXT, for_next1291
    eq $P595, .CONTROL_LOOP_REDO, for_redo1292
  for_done1293:
    pop_eh 
.annotate 'line', 2320
    get_hll_global $P600, "GLOBAL"
    nqp_get_package_through_who $P599, $P600, "PIRT"
    get_who $P598, $P599
    set $P597, $P598["Sub"]
    unless_null $P597, fallback1294
    nqp_get_sc_object $P601, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P597, $P601
  fallback1294:
    $P602 = $P597."new"()
    store_lex "$sub", $P602
    box $P603, ""
    set $P112, $P603
    new $P610, 'ExceptionHandler'
    set_label $P610, catch_handler_2861299
    $P610.'handle_types_except'(.CONTROL_ALL)
    push_eh $P610
    find_dynamic_lex $P604, "$*HLL"
    unless_null $P604, fallback1295
    get_hll_global $P607, "GLOBAL"
    get_who $P606, $P607
    set $P605, $P606["$HLL"]
    unless_null $P605, fallback1296
    nqp_get_sc_object $P608, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P605, $P608
  fallback1296:
    unless_null $P605, vivi_2841297
    die "Contextual $*HLL not found"
    box $P609, "Contextual $*HLL not found"
    set $P605, $P609
  vivi_2841297:
    set $P604, $P605
  fallback1295:
    set $P112, $P604
    set $P611, $P112
    pop_eh 
    goto skip_handler_2851298
  catch_handler_2861299:
    .get_results ($P610) 
    set $I10001, 1
    set $P610["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P610
    pop_upto_eh $P610
    pop_eh 
    set $P611, $P10001
    goto skip_handler_2851298
  skip_handler_2851298:
    set $P614, $P112
    unless $P112 goto if287_end1301 
.annotate 'line', 2323
.annotate 'line', 2324
    find_lex $P612, "$sub"
    $P613 = $P612."hll"($P112)
    set $P614, $P613
  if287_end1301:
.annotate 'line', 2328
    find_lex $P615, "$sub"
    $P616 = $P615."push"($P108)
    .const 'Sub' $P617 = 'cuid_271_1346233447.816' 
    capture_lex $P617
    $P618 = $P617()
.annotate 'line', 2345
    find_lex $P619, "$sub"
    find_lex $P620, "$node"
    $P621 = $P620."cuid"()
    $P622 = $P619."subid"($P621)
.annotate 'line', 2346
    $P623 = $P105."outer"()
    find_lex $P624, "BlockInfo"
    type_check $I501, $P623, $P624
    unless $I501 goto if292_else1309 
.annotate 'line', 2347
    find_lex $P625, "$sub"
    find_lex $P627, "self"
    nqp_decontainerize $P626, $P627
    $P628 = $P105."outer"()
    $P629 = $P628."qast"()
    $P630 = $P629."cuid"()
    $P631 = $P626."escape"($P630)
    set $S503, $P631
    concat $S502, ":anon :lex :outer(", $S503
    concat $S501, $S502, ")"
    $P632 = $P625."pirflags"($S501)
    set $P635, $P632
    goto if292_end1310
  if292_else1309:
.annotate 'line', 2349
.annotate 'line', 2350
    find_lex $P633, "$sub"
    $P634 = $P633."pirflags"(":anon :lex")
    set $P635, $P634
  if292_end1310:
.annotate 'line', 2352
    find_lex $P636, "$sub"
    find_lex $P637, "$node"
    $P638 = $P637."name"()
    $P639 = $P636."name"($P638)
.annotate 'line', 2355
    $P640 = $P105."loadlibs"()
    set $P113, $P640
    set $P643, $P113
    unless $P113 goto if293_end1312 
.annotate 'line', 2356
    find_lex $P641, "$sub"
    $P642 = $P641."loadlibs"($P113)
    set $P643, $P642
  if293_end1312:
    find_dynamic_lex $P644, "$*QAST_BLOCK_NO_CLOSE"
    unless_null $P644, fallback1315
    get_hll_global $P647, "GLOBAL"
    get_who $P646, $P647
    set $P645, $P646["$QAST_BLOCK_NO_CLOSE"]
    unless_null $P645, fallback1316
    nqp_get_sc_object $P648, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P645, $P648
  fallback1316:
    unless_null $P645, vivi_2951317
    die "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    box $P649, "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    set $P645, $P649
  vivi_2951317:
    set $P644, $P645
  fallback1315:
    set $P652, $P644
    if $P644 goto unless294_end1314 
.annotate 'line', 2359
.annotate 'line', 2360
    find_lex $P650, "$sub"
    $P651 = $P650."close_sub"()
    set $P652, $P651
  unless294_end1314:
    .return ($P652) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2224
    .const 'Sub' $P524 = 'cuid_260_1346233447.816' 
    capture_lex $P524 
    .lex "$*BLOCK", $P101 
    .lex "@*INNERS", $P102 
    .lex "$*HAVE_IMM_ARG", $P103 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P104 
    .lex "$err", $P105 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
    find_lex $P506, "$block"
    set $P101, $P506
    find_lex $P507, "@inners"
    set $P102, $P507
    box $P508, 0
    set $P103, $P508
    box $P509, 0
    set $P104, $P509
    new $P518, 'ExceptionHandler'
    set_label $P518, catch_handler_2741249
    $P518.'handle_types_except'(.CONTROL_ALL)
    push_eh $P518
.annotate 'line', 2230
    new $P516, 'ExceptionHandler'
    set_label $P516, catch_handler_2721247
    $P516.'handle_types_except'(.CONTROL_ALL)
    push_eh $P516
.annotate 'line', 2231
    find_lex $P511, "self"
    nqp_decontainerize $P510, $P511
    find_lex $P512, "$node"
    $P513 = $P512."list"()
    $P514 = $P510."compile_all_the_stmts"($P513)
    store_lex "$stmts", $P514
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P515
    pop_eh 
    goto skip_handler_2711246
  catch_handler_2721247:
    .get_results ($P516) 
    .const 'Sub' $P10001 = 'cuid_260_1346233447.816' 
    capture_lex $P10001
    $P10002 = $P10001($P516)
    set $I10001, 1
    set $P516["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P516
    pop_upto_eh $P516
    pop_eh 
    set $P517, $P10003
    goto skip_handler_2711246
  skip_handler_2711246:
    set $P519, $P517
    pop_eh 
    goto skip_handler_2731248
  catch_handler_2741249:
    .get_results ($P518) 
    set $I10001, 1
    set $P518["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P518
    pop_upto_eh $P518
    pop_eh 
    set $P519, $P10001
    goto skip_handler_2731248
  skip_handler_2731248:
    set $P523, $P105
    unless $P105 goto if275_end1251 
.annotate 'line', 2234
.annotate 'line', 2235
    find_lex $P520, "$node"
    $P521 = $P520."name"()
    set $S503, $P521
    concat $S502, "Error while compiling block ", $S503
    set $S505, $P105
    concat $S504, ": ", $S505
    concat $S501, $S502, $S504
    box $P522, $S501
    die $P522
    set $P523, $P522
  if275_end1251:
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1346233447.816") :anon :lex :outer("cuid_261_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2232
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2248
    .param pmc _lex_param_0 
    .const 'Sub' $P535 = 'cuid_263_1346233447.816' 
    capture_lex $P535 
    .const 'Sub' $P535 = 'cuid_265_1346233447.816' 
    capture_lex $P535 
    .lex "@param", $P101 
    .lex "$reg_type", $P102 
    .lex "$_", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    box $P504, ".param"
    push $P503, $P504
    set $P101, $P503
.annotate 'line', 2252
    $P505 = _lex_param_0."scope"()
    set $S501, $P505
    iseq $I501, $S501, "local"
    unless $I501 goto if278_else1258 
.annotate 'line', 2253
    find_lex $P506, "$block"
    $P507 = _lex_param_0."name"()
    $P508 = $P506."local_type_long"($P507)
    push $P101, $P508
.annotate 'line', 2254
    $P509 = _lex_param_0."name"()
    push $P101, $P509
.annotate 'line', 2255
    find_lex $P510, "$block"
    $P511 = _lex_param_0."name"()
    $P512 = $P510."local_type"($P511)
    set $P102, $P512
    set $P515, $P102
    goto if278_end1259
  if278_else1258:
    .const 'Sub' $P513 = 'cuid_263_1346233447.816' 
    capture_lex $P513
    $P514 = $P513()
    set $P515, $P514
  if278_end1259:
.annotate 'line', 2265
    $P516 = _lex_param_0."slurpy"()
    unless $P516 goto if279_else1260 
    box $P517, ":slurpy"
    push $P101, $P517
.annotate 'line', 2267
    $P518 = _lex_param_0."named"()
    set $P520, $P518
    unless $P518 goto if280_end1263 
    box $P519, ":named"
    push $P101, $P519
    set $P520, $P101
  if280_end1263:
    set $P528, $P520
    goto if279_end1261
  if279_else1260:
.annotate 'line', 2271
    $P521 = _lex_param_0."named"()
    set $P527, $P521
    unless $P521 goto if281_end1265 
.annotate 'line', 2272
    find_lex $P523, "self"
    nqp_decontainerize $P522, $P523
    $P524 = _lex_param_0."named"()
    $P525 = $P522."escape"($P524)
    set $S504, $P525
    concat $S503, ":named(", $S504
    concat $S502, $S503, ")"
    box $P526, $S502
    push $P101, $P526
    set $P527, $P101
  if281_end1265:
    set $P528, $P527
  if279_end1261:
.annotate 'line', 2275
    $P529 = _lex_param_0."default"()
    unless $P529 goto if282_else1266 
    .const 'Sub' $P530 = 'cuid_265_1346233447.816' 
    capture_lex $P530
    $P531 = $P530()
    set $P534, $P531
    goto if282_end1267
  if282_else1266:
.annotate 'line', 2292
.annotate 'line', 2293
    find_lex $P532, "$decls"
    join $S505, " ", $P101
    $P533 = $P532."push_pirop"($S505)
    set $P534, $P533
  if282_end1267:
    .return ($P534) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1346233447.816") :anon :lex :outer("cuid_264_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2257
    .lex "$reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2258
    find_lex $P502, "$block"
    find_lex $P503, "$_"
    $P504 = $P503."name"()
    $P505 = $P502."lex_reg"($P504)
    set $P101, $P505
    find_lex $P506, "@param"
.annotate 'line', 2259
    find_lex $P507, "$block"
    find_lex $P508, "$_"
    $P509 = $P508."name"()
    $P510 = $P507."lexical_type_long"($P509)
    push $P506, $P510
    find_lex $P511, "@param"
    push $P511, $P101
    find_lex $P512, "%lex_params"
.annotate 'line', 2261
    find_lex $P513, "$_"
    $P514 = $P513."name"()
    set $S501, $P514
    set $P512[$S501], $P101
.annotate 'line', 2262
    find_lex $P515, "$block"
    find_lex $P516, "$_"
    $P517 = $P516."name"()
    $P518 = $P515."lexical_type"($P517)
    store_lex "$reg_type", $P518
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1346233447.816") :anon :lex :outer("cuid_264_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2275
    .lex "$o_flag", $P101 
    .lex "$lbl", $P102 
    .lex "$def", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    find_lex $P504, "@param"
    box $P505, ":optional"
    push $P504, $P505
.annotate 'line', 2278
    find_lex $P506, "$decls"
    find_lex $P507, "@param"
    join $S501, " ", $P507
    $P508 = $P506."push_pirop"($S501)
.annotate 'line', 2281
    get_hll_global $P512, "GLOBAL"
    nqp_get_package_through_who $P511, $P512, "QAST"
    get_who $P510, $P511
    set $P509, $P510["Node"]
    unless_null $P509, fallback1268
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P513
  fallback1268:
    $P514 = $P509."unique"("haz_param")
    set $P101, $P514
.annotate 'line', 2282
    find_lex $P515, "$decls"
    set $S504, $P101
    concat $S503, ".param int ", $S504
    concat $S502, $S503, " :opt_flag"
    $P516 = $P515."push_pirop"($S502)
.annotate 'line', 2285
    get_hll_global $P520, "GLOBAL"
    nqp_get_package_through_who $P519, $P520, "PIRT"
    get_who $P518, $P519
    set $P517, $P518["Label"]
    unless_null $P517, fallback1269
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P521
  fallback1269:
    $P522 = $P517."new"("default" :named("name"))
    set $P102, $P522
.annotate 'line', 2286
    find_lex $P524, "self"
    nqp_decontainerize $P523, $P524
    find_lex $P525, "$_"
    $P526 = $P525."default"()
    find_lex $P527, "$reg_type"
    $P528 = $P523."as_post"($P526, $P527 :named("want"))
    set $P103, $P528
.annotate 'line', 2287
    find_lex $P529, "$opts"
    $P530 = $P529."push_pirop"("if", $P101, $P102)
.annotate 'line', 2288
    find_lex $P531, "$opts"
    $P532 = $P531."push"($P103)
.annotate 'line', 2289
    find_lex $P533, "$opts"
    find_lex $P535, "@param"
    set $P534, $P535[2]
    unless_null $P534, fallback1270
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P534, $P536
  fallback1270:
    $P537 = $P103."result"()
    $P538 = $P533."push_pirop"("set", $P534, $P537)
.annotate 'line', 2290
    find_lex $P539, "$opts"
    $P540 = $P539."push"($P102)
    .return ($P540) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2300
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2301
    find_lex $P501, "$decls"
    find_lex $P502, "$cap_lex_reg"
    set $S505, $P502
    concat $S504, ".const 'Sub' ", $S505
    concat $S503, $S504, " = '"
    set $S506, _lex_param_0
    concat $S502, $S503, $S506
    concat $S501, $S502, "'"
    $P503 = $P501."push_pirop"($S501)
.annotate 'line', 2302
    find_lex $P504, "$decls"
    find_lex $P505, "$cap_lex_reg"
    set $S508, $P505
    concat $S507, "capture_lex ", $S508
    $P506 = $P504."push_pirop"($S507)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2309
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2310
    find_lex $P501, "$decls"
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = _lex_param_0."name"()
    $P505 = $P502."escape"($P504)
    set $S504, $P505
    concat $S503, ".lex ", $S504
    concat $S502, $S503, ", "
    find_lex $P506, "$block"
    $P507 = _lex_param_0."name"()
    $P508 = $P506."lex_reg"($P507)
    set $S505, $P508
    concat $S501, $S502, $S505
    $P509 = $P501."push_pirop"($S501)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2312
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2313
    find_lex $P501, "$decls"
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = _lex_param_0."key"()
    $P505 = $P502."escape"($P504)
    set $S504, $P505
    concat $S503, ".lex ", $S504
    concat $S502, $S503, ", "
    $P506 = _lex_param_0."value"()
    set $S505, $P506
    concat $S501, $S502, $S505
    $P507 = $P501."push_pirop"($S501)
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2315
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2316
    find_lex $P501, "$decls"
    find_lex $P502, "$block"
    $P503 = _lex_param_0."name"()
    $P504 = $P502."local_type_long"($P503)
    set $S504, $P504
    concat $S503, ".local ", $S504
    concat $S502, $S503, " "
    $P505 = _lex_param_0."name"()
    set $S505, $P505
    concat $S501, $S502, $S505
    $P506 = $P501."push_pirop"($S501)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1346233447.816") :anon :lex :outer("cuid_262_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2329
    .const 'Sub' $P528 = 'cuid_270_1346233447.816' 
    capture_lex $P528 
    .lex "$*BLOCK", $P101 
    .lex "$ret_type", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P503, "$block"
    set $P101, $P503
    box $P504, "P"
    set $P102, $P504
    new $P510, 'ExceptionHandler'
    set_label $P510, catch_handler_2891303
    $P510.'handle_types_except'(.CONTROL_ALL)
    push_eh $P510
.annotate 'line', 2332
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P507, "$stmts"
    $P508 = $P507."result"()
    $P509 = $P505."infer_type"($P508)
    set $P102, $P509
    set $P511, $P102
    pop_eh 
    goto skip_handler_2881302
  catch_handler_2891303:
    .get_results ($P510) 
    set $I10001, 1
    set $P510["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P510
    pop_upto_eh $P510
    pop_eh 
    set $P511, $P10001
    goto skip_handler_2881302
  skip_handler_2881302:
    set $S501, $P102
    isne $I501, $S501, "P"
    box $P517, $I501
    set $P516, $P517
    unless $I501 goto if291_end1307 
    find_lex $P513, "%hll_force_return_boxing"
    find_lex $P514, "$hll"
    set $S502, $P514
    set $P512, $P513[$S502]
    unless_null $P512, fallback1308
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P515
  fallback1308:
    set $P516, $P512
  if291_end1307:
    unless $P516 goto if290_else1304 
    .const 'Sub' $P518 = 'cuid_270_1346233447.816' 
    capture_lex $P518
    $P519 = $P518()
    set $P527, $P519
    goto if290_end1305
  if290_else1304:
.annotate 'line', 2338
.annotate 'line', 2339
    find_lex $P520, "$sub"
    find_lex $P521, "$stmts"
    $P522 = $P520."push"($P521)
.annotate 'line', 2340
    find_lex $P523, "$sub"
    find_lex $P524, "$stmts"
    $P525 = $P524."result"()
    set $S505, $P525
    concat $S504, ".return (", $S505
    concat $S503, $S504, ")"
    $P526 = $P523."push_pirop"($S503)
    set $P527, $P526
  if290_end1305:
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1346233447.816") :anon :lex :outer("cuid_271_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2333
    .lex "$boxed", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2334
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$stmts"
    $P505 = $P502."coerce"($P504, "P")
    set $P101, $P505
.annotate 'line', 2335
    find_lex $P506, "$sub"
    $P507 = $P506."push"($P101)
.annotate 'line', 2336
    find_lex $P508, "$sub"
    $P509 = $P101."result"()
    set $S503, $P509
    concat $S502, ".return (", $S503
    concat $S501, $S502, ")"
    $P510 = $P508."push_pirop"($S501)
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_273_1346233447.816") :anon :lex :outer("cuid_105_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2374
    .const 'Sub' $P558 = 'cuid_272_1346233447.816' 
    capture_lex $P558 
    .lex "$breg", $P101 
    .lex "$rtype", $P102 
    .lex "$rreg", $P103 
    .lex "$im_arg", $P104 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    new $P516, 'ExceptionHandler'
    set_label $P516, catch_handler_3031332
    $P516.'handle_types_except'(.CONTROL_ALL)
    push_eh $P516
.annotate 'line', 2376
    find_dynamic_lex $P505, "@*INNERS"
    unless_null $P505, fallback1328
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["@INNERS"]
    unless_null $P506, fallback1329
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'ResizablePMCArray'
    set $P509["@INNERS"], $P511
    set $P506, $P511
  fallback1329:
    unless_null $P506, vivi_3011330
    die "Contextual @*INNERS not found"
    box $P512, "Contextual @*INNERS not found"
    set $P506, $P512
  vivi_3011330:
    set $P505, $P506
  fallback1328:
    find_lex $P513, "$node"
    $P514 = $P513."cuid"()
    $P515 = $P505."push"($P514)
    set $P517, $P515
    pop_eh 
    goto skip_handler_3021331
  catch_handler_3031332:
    .get_results ($P516) 
    set $I10001, 1
    set $P516["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P516
    pop_upto_eh $P516
    pop_eh 
    set $P517, $P10001
    goto skip_handler_3021331
  skip_handler_3021331:
.annotate 'line', 2377
    find_dynamic_lex $P518, "$*REGALLOC"
    unless_null $P518, fallback1333
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    set $P519, $P520["$REGALLOC"]
    unless_null $P519, fallback1334
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback1334:
    unless_null $P519, vivi_3041335
    die "Contextual $*REGALLOC not found"
    box $P523, "Contextual $*REGALLOC not found"
    set $P519, $P523
  vivi_3041335:
    set $P518, $P519
  fallback1333:
    $P524 = $P518."fresh_p"()
    set $P101, $P524
.annotate 'line', 2378
    find_lex $P525, "$ops"
    set $S505, $P101
    concat $S504, ".const 'Sub' ", $S505
    concat $S503, $S504, " = '"
    find_lex $P526, "$node"
    $P527 = $P526."cuid"()
    set $S506, $P527
    concat $S502, $S503, $S506
    concat $S501, $S502, "'"
    $P528 = $P525."push_pirop"($S501)
.annotate 'line', 2379
    find_lex $P529, "$ops"
    $P530 = $P529."push_pirop"("capture_lex", $P101)
.annotate 'line', 2382
    find_lex $P531, "$node"
    $P532 = $P531."returns"()
    $P533 = "&type_to_register_type"($P532)
    set $S508, $P533
    downcase $S507, $S508
    box $P534, $S507
    set $P102, $P534
.annotate 'line', 2383
    find_dynamic_lex $P535, "$*REGALLOC"
    unless_null $P535, fallback1336
    get_hll_global $P538, "GLOBAL"
    get_who $P537, $P538
    set $P536, $P537["$REGALLOC"]
    unless_null $P536, fallback1337
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P536, $P539
  fallback1337:
    unless_null $P536, vivi_3051338
    die "Contextual $*REGALLOC not found"
    box $P540, "Contextual $*REGALLOC not found"
    set $P536, $P540
  vivi_3051338:
    set $P535, $P536
  fallback1336:
    set $S510, $P102
    concat $S509, "fresh_", $S510
    $P541 = $P535.$S509()
    set $P103, $P541
    box $P542, 0
    set $P104, $P542
    new $P549, 'ExceptionHandler'
    set_label $P549, catch_handler_3081343
    $P549.'handle_types_except'(.CONTROL_ALL)
    push_eh $P549
    find_dynamic_lex $P543, "$*HAVE_IMM_ARG"
    unless_null $P543, fallback1339
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    set $P544, $P545["$HAVE_IMM_ARG"]
    unless_null $P544, fallback1340
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P544, $P547
  fallback1340:
    unless_null $P544, vivi_3061341
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P548, "Contextual $*HAVE_IMM_ARG not found"
    set $P544, $P548
  vivi_3061341:
    set $P543, $P544
  fallback1339:
    set $P104, $P543
    set $P550, $P104
    pop_eh 
    goto skip_handler_3071342
  catch_handler_3081343:
    .get_results ($P549) 
    set $I10001, 1
    set $P549["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P549
    pop_upto_eh $P549
    pop_eh 
    set $P550, $P10001
    goto skip_handler_3071342
  skip_handler_3071342:
    unless $P104 goto if309_else1344 
.annotate 'line', 2389
    .const 'Sub' $P552 = 'cuid_272_1346233447.816' 
    capture_lex $P552
    newclosure $P551, $P552
    store_dynamic_lex "$*IMM_ARG", $P551
    set $P555, $P551
    goto if309_end1345
  if309_else1344:
.annotate 'line', 2394
.annotate 'line', 2395
    find_lex $P553, "$ops"
    $P554 = $P553."push_pirop"("call", $P101, $P103 :named("result"))
    set $P555, $P554
  if309_end1345:
.annotate 'line', 2397
    find_lex $P556, "$ops"
    $P557 = $P556."result"($P103)
    .return ($P557) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1346233447.816") :anon :lex :outer("cuid_273_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2390
    .param pmc _lex_param_0 
    .lex "$arg", _lex_param_0 
.annotate 'line', 2391
    find_lex $P501, "$ops"
    find_lex $P502, "$breg"
    find_lex $P503, "$rreg"
    $P504 = $P501."push_pirop"("call", $P502, _lex_param_0, $P503 :named("result"))
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1346233447.816") :anon :lex :outer("cuid_105_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2399
    .lex "$breg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P513, 'ExceptionHandler'
    set_label $P513, catch_handler_3141354
    $P513.'handle_types_except'(.CONTROL_ALL)
    push_eh $P513
.annotate 'line', 2401
    find_dynamic_lex $P502, "@*INNERS"
    unless_null $P502, fallback1350
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["@INNERS"]
    unless_null $P503, fallback1351
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    new $P508, 'ResizablePMCArray'
    set $P506["@INNERS"], $P508
    set $P503, $P508
  fallback1351:
    unless_null $P503, vivi_3121352
    die "Contextual @*INNERS not found"
    box $P509, "Contextual @*INNERS not found"
    set $P503, $P509
  vivi_3121352:
    set $P502, $P503
  fallback1350:
    find_lex $P510, "$node"
    $P511 = $P510."cuid"()
    $P512 = $P502."push"($P511)
    set $P514, $P512
    pop_eh 
    goto skip_handler_3131353
  catch_handler_3141354:
    .get_results ($P513) 
    set $I10001, 1
    set $P513["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P513
    pop_upto_eh $P513
    pop_eh 
    set $P514, $P10001
    goto skip_handler_3131353
  skip_handler_3131353:
.annotate 'line', 2402
    find_dynamic_lex $P515, "$*REGALLOC"
    unless_null $P515, fallback1355
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    set $P516, $P517["$REGALLOC"]
    unless_null $P516, fallback1356
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P516, $P519
  fallback1356:
    unless_null $P516, vivi_3151357
    die "Contextual $*REGALLOC not found"
    box $P520, "Contextual $*REGALLOC not found"
    set $P516, $P520
  vivi_3151357:
    set $P515, $P516
  fallback1355:
    $P521 = $P515."fresh_p"()
    set $P101, $P521
.annotate 'line', 2403
    find_lex $P522, "$ops"
    set $S505, $P101
    concat $S504, ".const 'Sub' ", $S505
    concat $S503, $S504, " = '"
    find_lex $P523, "$node"
    $P524 = $P523."cuid"()
    set $S506, $P524
    concat $S502, $S503, $S506
    concat $S501, $S502, "'"
    $P525 = $P522."push_pirop"($S501)
.annotate 'line', 2404
    find_lex $P526, "$ops"
    $P527 = $P526."push_pirop"("capture_lex", $P101)
.annotate 'line', 2405
    find_lex $P528, "$ops"
    $P529 = $P528."result"($P101)
    .return ($P529) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_106_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2410
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P506 = 'cuid_276_1346233447.816' 
    capture_lex $P506 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1358
    .lex "RETURN", $P102
    .const 'Sub' $P502 = 'cuid_276_1346233447.816' 
    capture_lex $P502
    $P503 = $P502()
    find_lex $P504, "RETURN"
    $P505 = $P504($P101)
    goto lexotic_1359
  lexotic_1358:
    .get_results ($P505)
  lexotic_1359:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1346233447.816") :anon :lex :outer("cuid_106_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2413
    .const 'Sub' $P567 = 'cuid_275_1346233447.816' 
    capture_lex $P567 
    .const 'Sub' $P567 = 'cuid_277_1346233447.816' 
    capture_lex $P567 
    .const 'Sub' $P567 = 'cuid_278_1346233447.816' 
    capture_lex $P567 
    .lex "$*REGALLOC", $P101 
    .lex "$*BLOCKRA", $P102 
    .lex "$*BINDVAL", $P103 
    .lex "$block", $P104 
    .lex "$stmts", $P105 
    .lex "$decls", $P106 
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
.annotate 'line', 2415
    find_lex $P507, "RegAlloc"
    $P508 = $P507."new"()
    set $P101, $P508
    unless_null $P101, fallback1360
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["$REGALLOC"]
    unless_null $P509, fallback1361
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback1361:
    unless_null $P509, vivi_3161362
    die "Contextual $*REGALLOC not found"
    box $P513, "Contextual $*REGALLOC not found"
    set $P509, $P513
  vivi_3161362:
    set $P101, $P509
  fallback1360:
    set $P102, $P101
    box $P514, 0
    set $P103, $P514
.annotate 'line', 2418
    find_lex $P515, "BlockInfo"
    find_lex $P516, "$node"
    $P517 = $P515."new"($P516, 0)
    set $P104, $P517
    .const 'Sub' $P518 = 'cuid_275_1346233447.816' 
    capture_lex $P518
    $P519 = $P518()
.annotate 'line', 2429
    get_hll_global $P523, "GLOBAL"
    nqp_get_package_through_who $P522, $P523, "PIRT"
    get_who $P521, $P522
    set $P520, $P521["Ops"]
    unless_null $P520, fallback1363
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P524
  fallback1363:
    $P525 = $P520."new"()
    set $P106, $P525
.annotate 'line', 2430
    $P529 = $P104."lexicals"()
    set $P526, $P529
    iter $P528, $P529
    new $P531, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P531, for_handlers1364
    push_eh $P531
  for_next1365:
    unless $P528, for_done1367
    shift $P532, $P528
  for_redo1366:
    .const 'Sub' $P530 = 'cuid_277_1346233447.816' 
    capture_lex $P530
    $P526 = $P530($P532)
    goto for_next1365
  for_handlers1364:
    .get_results ($P531)
    pop_upto_eh $P531
    getattribute $P531, $P531, 'type'
    eq $P531, .CONTROL_LOOP_NEXT, for_next1365
    eq $P531, .CONTROL_LOOP_REDO, for_redo1366
  for_done1367:
    pop_eh 
.annotate 'line', 2433
    $P536 = $P104."locals"()
    set $P533, $P536
    iter $P535, $P536
    new $P538, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P538, for_handlers1368
    push_eh $P538
  for_next1369:
    unless $P535, for_done1371
    shift $P539, $P535
  for_redo1370:
    .const 'Sub' $P537 = 'cuid_278_1346233447.816' 
    capture_lex $P537
    $P533 = $P537($P539)
    goto for_next1369
  for_handlers1368:
    .get_results ($P538)
    pop_upto_eh $P538
    getattribute $P538, $P538, 'type'
    eq $P538, .CONTROL_LOOP_NEXT, for_next1369
    eq $P538, .CONTROL_LOOP_REDO, for_redo1370
  for_done1371:
    pop_eh 
.annotate 'line', 2438
    get_hll_global $P543, "GLOBAL"
    nqp_get_package_through_who $P542, $P543, "PIRT"
    get_who $P541, $P542
    set $P540, $P541["Sub"]
    unless_null $P540, fallback1372
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P540, $P544
  fallback1372:
    $P545 = $P540."new"()
    store_lex "$sub", $P545
.annotate 'line', 2439
    find_lex $P546, "$sub"
    $P547 = $P546."push"($P106)
.annotate 'line', 2440
    find_lex $P548, "$sub"
    $P549 = $P548."push"($P105)
.annotate 'line', 2441
    find_lex $P550, "$sub"
    $P551 = $P105."result"()
    set $S503, $P551
    concat $S502, ".return (", $S503
    concat $S501, $S502, ")"
    $P552 = $P550."push_pirop"($S501)
.annotate 'line', 2445
    find_lex $P553, "$sub"
    find_lex $P554, "$node"
    $P555 = $P554."name"()
    $P556 = $P553."name"($P555)
.annotate 'line', 2446
    find_lex $P557, "$sub"
    find_lex $P558, "$node"
    $P559 = $P558."cuid"()
    $P560 = $P557."subid"($P559)
.annotate 'line', 2447
    find_lex $P561, "$sub"
    new $P562, 'ResizablePMCArray'
    box $P563, "Sub"
    push $P562, $P563
    $P564 = $P561."namespace"($P562)
.annotate 'line', 2448
    find_lex $P565, "$sub"
    $P566 = $P565."hll"("nqp")
    .return ($P566) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1346233447.816") :anon :lex :outer("cuid_276_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2422
    .lex "$*BLOCK", $P101 
    .lex "$*HLL", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P503, "$block"
    set $P101, $P503
    box $P504, "nqp"
    set $P102, $P504
.annotate 'line', 2425
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P507, "$node"
    $P508 = $P507."list"()
    $P509 = $P505."compile_all_the_stmts"($P508)
    store_lex "$stmts", $P509
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1346233447.816") :anon :lex :outer("cuid_276_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2430
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2431
    find_lex $P501, "$decls"
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = _lex_param_0."name"()
    $P505 = $P502."escape"($P504)
    set $S504, $P505
    concat $S503, ".lex ", $S504
    concat $S502, $S503, ", "
    find_lex $P506, "$block"
    $P507 = _lex_param_0."name"()
    $P508 = $P506."lex_reg"($P507)
    set $S505, $P508
    concat $S501, $S502, $S505
    $P509 = $P501."push_pirop"($S501)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_278_1346233447.816") :anon :lex :outer("cuid_276_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2433
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2434
    find_lex $P501, "$decls"
    find_lex $P502, "$block"
    $P503 = _lex_param_0."name"()
    $P504 = $P502."local_type_long"($P503)
    set $S504, $P504
    concat $S503, ".local ", $S504
    concat $S502, $S503, " "
    $P505 = _lex_param_0."name"()
    set $S505, $P505
    concat $S501, $S502, $S505
    $P506 = $P501."push_pirop"($S501)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_107_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2454
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2455
    nqp_decontainerize $P501, _lex_param_0
    $P502 = _lex_param_1."list"()
    $P503 = _lex_param_1."resultchild"()
    $P504 = _lex_param_1."node"()
    $P505 = $P501."compile_all_the_stmts"($P502, $P503, $P504 :named("node"))
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_108_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2458
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P510 = 'cuid_279_1346233447.816' 
    capture_lex $P510 
    .lex "$orig_reg", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_dynamic_lex $P502, "$*REGALLOC"
    unless_null $P502, fallback1373
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$REGALLOC"]
    unless_null $P503, fallback1374
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1374:
    unless_null $P503, vivi_3171375
    die "Contextual $*REGALLOC not found"
    box $P507, "Contextual $*REGALLOC not found"
    set $P503, $P507
  vivi_3171375:
    set $P502, $P503
  fallback1373:
    set $P101, $P502
    .const 'Sub' $P508 = 'cuid_279_1346233447.816' 
    capture_lex $P508
    $P509 = $P508()
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1346233447.816") :anon :lex :outer("cuid_108_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2460
    .lex "$*REGALLOC", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2461
    find_lex $P502, "RegAlloc"
    find_lex $P503, "$orig_reg"
    $P504 = $P502."new"($P503)
    set $P101, $P504
.annotate 'line', 2462
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P507, "$node"
    $P508 = $P507."list"()
    find_lex $P509, "$node"
    $P510 = $P509."resultchild"()
    find_lex $P511, "$node"
    $P512 = $P511."node"()
    $P513 = $P505."compile_all_the_stmts"($P508, $P510, $P512 :named("node"))
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "compile_all_the_stmts" :subid("cuid_109_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2466
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_3 :named("node") :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P529 = 'cuid_280_1346233447.816' 
    capture_lex $P529 
    if haz_param_15, default1401
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P527
  default1401:
    if haz_param_16, default1402
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P528
  default1402:
    .lex "$last", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "@stmts", _lex_param_1 
    .lex "$resultchild", _lex_param_2 
    .lex "$node", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 2468
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "PIRT"
    get_who $P506, $P507
    set $P505, $P506["Ops"]
    unless_null $P505, fallback1376
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback1376:
    $P510 = $P505."new"()
    set $P102, $P510
    set $P512, _lex_param_3
    unless _lex_param_3 goto if318_end1378 
.annotate 'line', 2469
    $P511 = $P102."node"(_lex_param_3)
    set $P512, $P511
  if318_end1378:
    box $P513, 0
    set $P103, $P513
    set $N501, _lex_param_1
    box $P514, $N501
    set $P104, $P514
    set $P515, _lex_param_1
    iter $P517, _lex_param_1
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers1393
    push_eh $P519
  for_next1394:
    unless $P517, for_done1396
    shift $P520, $P517
  for_redo1395:
    .const 'Sub' $P518 = 'cuid_280_1346233447.816' 
    capture_lex $P518
    $P515 = $P518($P520)
    goto for_next1394
  for_handlers1393:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next1394
    eq $P519, .CONTROL_LOOP_REDO, for_redo1395
  for_done1396:
    pop_eh 
    set $P522, $P101
    unless $P101 goto if326_end1400 
    defined $I502, _lex_param_2
    box $P521, $I502
    isfalse $I501, $P521
    box $P523, $I501
    set $P522, $P523
  if326_end1400:
    set $P526, $P522
    unless $P522 goto if325_end1398 
.annotate 'line', 2485
.annotate 'line', 2486
    $P524 = $P101."result"()
    $P525 = $P102."result"($P524)
    set $P526, $P525
  if325_end1398:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1346233447.816") :anon :lex :outer("cuid_109_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2472
    .param pmc _lex_param_0 
    .lex "$void", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$i"
    set $N502, $P502
    set $N503, 1
    add $N501, $N502, $N503
    find_lex $P503, "$n"
    set $N504, $P503
    islt $I501, $N501, $N504
    box $P504, $I501
    set $P101, $P504
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "QAST"
    get_who $P506, $P507
    set $P505, $P506["Want"]
    unless_null $P505, fallback1383
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback1383:
    type_check $I502, _lex_param_0, $P505
    box $P511, $I502
    set $P510, $P511
    unless $I502 goto if320_end1382 
    set $P510, $P101
  if320_end1382:
    set $P513, $P510
    unless $P510 goto if319_end1380 
.annotate 'line', 2474
.annotate 'line', 2475
    $P512 = "&want"(_lex_param_0, "v")
    set _lex_param_0, $P512
    set $P513, _lex_param_0
  if319_end1380:
.annotate 'line', 2477
    find_lex $P515, "self"
    nqp_decontainerize $P514, $P515
    $P516 = $P514."as_post"(_lex_param_0)
    store_lex "$last", $P516
    set $P522, $P101
    unless $P101 goto if322_end1387 
    get_hll_global $P520, "GLOBAL"
    nqp_get_package_through_who $P519, $P520, "QAST"
    get_who $P518, $P519
    set $P517, $P518["Var"]
    unless_null $P517, fallback1388
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P521
  fallback1388:
    type_check $I503, _lex_param_0, $P517
    box $P523, $I503
    set $P522, $P523
  if322_end1387:
    set $P527, $P522
    if $P522 goto unless321_end1385 
.annotate 'line', 2478
    find_lex $P524, "$ops"
    find_lex $P525, "$last"
    $P526 = $P524."push"($P525)
    set $P527, $P526
  unless321_end1385:
    find_lex $P528, "$resultchild"
    defined $I504, $P528
    set $I506, $I504
    unless $I504 goto if324_end1392 
    find_lex $P529, "$resultchild"
    set $N505, $P529
    find_lex $P530, "$i"
    set $N506, $P530
    iseq $I505, $N505, $N506
    set $I506, $I505
  if324_end1392:
    box $P536, $I506
    set $P535, $P536
    unless $I506 goto if323_end1390 
.annotate 'line', 2480
.annotate 'line', 2481
    find_lex $P531, "$ops"
    find_lex $P532, "$last"
    $P533 = $P532."result"()
    $P534 = $P531."result"($P533)
    set $P535, $P534
  if323_end1390:
    find_lex $P537, "$i"
    set $N508, $P537
    set $N509, 1
    add $N507, $N508, $N509
    box $P538, $N507
    store_lex "$i", $P538
    .return ($P538) 
.end
.HLL "nqp"
.namespace []
.sub "apply_context" :subid("cuid_110_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2491
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$type", _lex_param_2 
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Want"]
    unless_null $P501, fallback1405
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1405:
    type_check $I501, _lex_param_1, $P501
    unless $I501 goto if327_else1403 
.annotate 'line', 2493
    $P506 = "&want"(_lex_param_1, _lex_param_2)
    set $P507, $P506
    goto if327_end1404
  if327_else1403:
    set $P507, _lex_param_1
  if327_end1404:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_111_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2508
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P528 = 'cuid_281_1346233447.816' 
    capture_lex $P528 
    .lex "$hll", $P101 
    .lex "$result", $P102 
    .lex "$err", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    box $P504, ""
    set $P101, $P504
    new $P511, 'ExceptionHandler'
    set_label $P511, catch_handler_3301410
    $P511.'handle_types_except'(.CONTROL_ALL)
    push_eh $P511
    find_dynamic_lex $P505, "$*HLL"
    unless_null $P505, fallback1406
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["$HLL"]
    unless_null $P506, fallback1407
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback1407:
    unless_null $P506, vivi_3281408
    die "Contextual $*HLL not found"
    box $P510, "Contextual $*HLL not found"
    set $P506, $P510
  vivi_3281408:
    set $P505, $P506
  fallback1406:
    set $P101, $P505
    set $P512, $P101
    pop_eh 
    goto skip_handler_3291409
  catch_handler_3301410:
    .get_results ($P511) 
    set $I10001, 1
    set $P511["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P511
    pop_upto_eh $P511
    pop_eh 
    set $P512, $P10001
    goto skip_handler_3291409
  skip_handler_3291409:
    new $P523, 'ExceptionHandler'
    set_label $P523, catch_handler_3341415
    $P523.'handle_types_except'(.CONTROL_ALL)
    push_eh $P523
.annotate 'line', 2513
    new $P521, 'ExceptionHandler'
    set_label $P521, catch_handler_3321413
    $P521.'handle_types_except'(.CONTROL_ALL)
    push_eh $P521
.annotate 'line', 2514
    get_hll_global $P516, "GLOBAL"
    nqp_get_package_through_who $P515, $P516, "QAST"
    get_who $P514, $P515
    set $P513, $P514["Operations"]
    unless_null $P513, fallback1411
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P517
  fallback1411:
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P513."compile_op"($P518, $P101, _lex_param_1)
    set $P102, $P519
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P520
    pop_eh 
    goto skip_handler_3311412
  catch_handler_3321413:
    .get_results ($P521) 
    .const 'Sub' $P10001 = 'cuid_281_1346233447.816' 
    capture_lex $P10001
    $P10002 = $P10001($P521)
    set $I10001, 1
    set $P521["handled"], $I10001
    nqp_get_sc_object $P10003, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P521
    pop_upto_eh $P521
    pop_eh 
    set $P522, $P10003
    goto skip_handler_3311412
  skip_handler_3311412:
    set $P524, $P522
    pop_eh 
    goto skip_handler_3331414
  catch_handler_3341415:
    .get_results ($P523) 
    set $I10001, 1
    set $P523["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P523
    pop_upto_eh $P523
    pop_eh 
    set $P524, $P10001
    goto skip_handler_3331414
  skip_handler_3331414:
    set $P527, $P103
    unless $P103 goto if335_end1417 
.annotate 'line', 2517
.annotate 'line', 2518
    $P525 = _lex_param_1."op"()
    set $S503, $P525
    concat $S502, "Error while compiling op ", $S503
    set $S505, $P103
    concat $S504, ": ", $S505
    concat $S501, $S502, $S504
    box $P526, $S501
    die $P526
    set $P527, $P526
  if335_end1417:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1346233447.816") :anon :lex :outer("cuid_111_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2515
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_112_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P544 = 'cuid_283_1346233447.816' 
    capture_lex $P544 
    .const 'Sub' $P544 = 'cuid_284_1346233447.816' 
    capture_lex $P544 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1418
    .lex "RETURN", $P101
.annotate 'line', 2524
    $P501 = _lex_param_1."supports"("parrot")
    unless $P501 goto if336_else1420 
.annotate 'line', 2525
    nqp_decontainerize $P503, _lex_param_0
    $P504 = _lex_param_1."alternative"("parrot")
    $P505 = $P503."as_post"($P504)
    find_lex $P502, "RETURN"
    $P506 = $P502($P505)
    set $P543, $P506
    goto if336_end1421
  if336_else1420:
.annotate 'line', 2527
    $P507 = _lex_param_1."supports"("pirop")
    unless $P507 goto if337_else1422 
.annotate 'line', 2528
    get_hll_global $P511, "GLOBAL"
    nqp_get_package_through_who $P510, $P511, "QAST"
    get_who $P509, $P510
    set $P508, $P509["Operations"]
    unless_null $P508, fallback1424
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback1424:
    nqp_decontainerize $P513, _lex_param_0
    $P514 = _lex_param_1."alternative"("pirop")
    $P515 = _lex_param_1."list"()
    $P516 = $P508."compile_pirop"($P513, $P514, $P515)
    set $P542, $P516
    goto if337_end1423
  if337_else1422:
.annotate 'line', 2530
    $P517 = _lex_param_1."supports"("pir")
    unless $P517 goto if338_else1425 
    .const 'Sub' $P518 = 'cuid_283_1346233447.816' 
    capture_lex $P518
    $P519 = $P518()
    set $P541, $P519
    goto if338_end1426
  if338_else1425:
.annotate 'line', 2544
    $P520 = _lex_param_1."supports"("pirconst")
    unless $P520 goto if342_else1435 
    .const 'Sub' $P521 = 'cuid_284_1346233447.816' 
    capture_lex $P521
    $P522 = $P521()
    set $P540, $P522
    goto if342_end1436
  if342_else1435:
.annotate 'line', 2551
    $P523 = _lex_param_1."supports"("loadlibs")
    unless $P523 goto if344_else1440 
.annotate 'line', 2552
    find_dynamic_lex $P524, "$*BLOCK"
    unless_null $P524, fallback1442
    get_hll_global $P527, "GLOBAL"
    get_who $P526, $P527
    set $P525, $P526["$BLOCK"]
    unless_null $P525, fallback1443
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P528
  fallback1443:
    unless_null $P525, vivi_3451444
    die "Contextual $*BLOCK not found"
    box $P529, "Contextual $*BLOCK not found"
    set $P525, $P529
  vivi_3451444:
    set $P524, $P525
  fallback1442:
    $P530 = _lex_param_1."alternative"("loadlibs")
    $P531 = $P524."add_loadlibs"($P530)
.annotate 'line', 2553
    get_hll_global $P535, "GLOBAL"
    nqp_get_package_through_who $P534, $P535, "PIRT"
    get_who $P533, $P534
    set $P532, $P533["Ops"]
    unless_null $P532, fallback1445
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P536
  fallback1445:
    $P537 = $P532."new"()
    set $P539, $P537
    goto if344_end1441
  if344_else1440:
.annotate 'line', 2555
    box $P538, "To compile on the Parrot backend, QAST::VM must have an alternative 'parrot', 'pirop', 'pir' or 'loadlibs'"
    die $P538
    set $P539, $P538
  if344_end1441:
    set $P540, $P539
  if342_end1436:
    set $P541, $P540
  if338_end1426:
    set $P542, $P541
  if337_end1423:
    set $P543, $P542
  if336_end1421:
    goto lexotic_1419
  lexotic_1418:
    .get_results ($P543)
  lexotic_1419:
    .return ($P543) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_283_1346233447.816") :anon :lex :outer("cuid_112_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2530
    .const 'Sub' $P523 = 'cuid_282_1346233447.816' 
    capture_lex $P523 
    .lex "$ops", $P101 
    .lex "$pir", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2531
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Ops"]
    unless_null $P503, fallback1427
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1427:
    $P508 = $P503."new"()
    set $P101, $P508
.annotate 'line', 2532
    find_lex $P509, "$node"
    $P510 = $P509."node"()
    set $P514, $P510
    unless $P510 goto if339_end1429 
    find_lex $P511, "$node"
    $P512 = $P511."node"()
    $P513 = $P101."node"($P512)
    set $P514, $P513
  if339_end1429:
.annotate 'line', 2533
    find_lex $P515, "$node"
    $P516 = $P515."alternative"("pir")
    set $P102, $P516
    set $S501, $P102
    index $I502, $S501, "%r", 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    unless $I501 goto if340_else1430 
    .const 'Sub' $P517 = 'cuid_282_1346233447.816' 
    capture_lex $P517
    $P518 = $P517()
    set $P520, $P518
    goto if340_end1431
  if340_else1430:
.annotate 'line', 2539
.annotate 'line', 2540
    $P519 = $P101."push_pirop"("inline", $P102)
    set $P520, $P519
  if340_end1431:
    find_lex $P521, "RETURN"
    $P522 = $P521($P101)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_282_1346233447.816") :anon :lex :outer("cuid_283_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2534
    .lex "$reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2535
    find_dynamic_lex $P502, "$*REGALLOC"
    unless_null $P502, fallback1432
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$REGALLOC"]
    unless_null $P503, fallback1433
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1433:
    unless_null $P503, vivi_3411434
    die "Contextual $*REGALLOC not found"
    box $P507, "Contextual $*REGALLOC not found"
    set $P503, $P507
  vivi_3411434:
    set $P502, $P503
  fallback1432:
    $P508 = $P502."fresh_p"()
    set $P101, $P508
.annotate 'line', 2536
    find_lex $P509, "$ops"
    find_lex $P510, "$pir"
    $P511 = $P509."push_pirop"("inline", $P510, $P101 :named("result"))
.annotate 'line', 2537
    find_lex $P512, "$ops"
    $P513 = $P512."result"($P101)
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1346233447.816") :anon :lex :outer("cuid_112_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2544
    .lex "$ops", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2545
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Ops"]
    unless_null $P503, fallback1437
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1437:
    $P508 = $P503."new"()
    set $P101, $P508
.annotate 'line', 2546
    find_lex $P509, "$node"
    $P510 = $P509."node"()
    set $P514, $P510
    unless $P510 goto if343_end1439 
    find_lex $P511, "$node"
    $P512 = $P511."node"()
    $P513 = $P101."node"($P512)
    set $P514, $P513
  if343_end1439:
.annotate 'line', 2547
    find_lex $P515, "$node"
    $P516 = $P515."alternative"("pirconst")
    set $P102, $P516
.annotate 'line', 2548
    set $S502, $P102
    concat $S501, ".", $S502
    $P517 = $P101."result"($S501)
    find_lex $P518, "RETURN"
    $P519 = $P518($P101)
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_113_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2560
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2561
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."compile_var"(_lex_param_1)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_114_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2564
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P514 = 'cuid_286_1346233447.816' 
    capture_lex $P514 
    .lex "$post", $P101 
    .lex "$result", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2565
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."compile_var"(_lex_param_1)
    set $P101, $P504
    find_dynamic_lex $P505, "$*BINDVAL"
    unless_null $P505, fallback1448
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["$BINDVAL"]
    unless_null $P506, fallback1449
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback1449:
    unless_null $P506, vivi_3471450
    die "Contextual $*BINDVAL not found"
    box $P510, "Contextual $*BINDVAL not found"
    set $P506, $P510
  vivi_3471450:
    set $P505, $P506
  fallback1448:
    unless $P505 goto if346_else1446 
.annotate 'line', 2567
    set $P102, $P101
    set $P513, $P102
    goto if346_end1447
  if346_else1446:
    .const 'Sub' $P511 = 'cuid_286_1346233447.816' 
    capture_lex $P511
    $P512 = $P511()
    set $P513, $P512
  if346_end1447:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1346233447.816") :anon :lex :outer("cuid_114_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2570
    .const 'Sub' $P526 = 'cuid_285_1346233447.816' 
    capture_lex $P526 
    .lex "$lbl", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2571
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PIRT"
    get_who $P503, $P504
    set $P502, $P503["Label"]
    unless_null $P502, fallback1451
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1451:
    $P507 = $P502."new"("fallback" :named("name"))
    set $P101, $P507
.annotate 'line', 2572
    get_hll_global $P511, "GLOBAL"
    nqp_get_package_through_who $P510, $P511, "PIRT"
    get_who $P509, $P510
    set $P508, $P509["Ops"]
    unless_null $P508, fallback1452
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback1452:
    find_lex $P513, "$post"
    $P514 = $P508."new"($P513 :named("result"))
    store_lex "$result", $P514
.annotate 'line', 2573
    find_lex $P515, "$result"
    find_lex $P516, "$post"
    $P517 = $P515."push"($P516)
.annotate 'line', 2574
    find_lex $P519, "self"
    nqp_decontainerize $P518, $P519
    find_lex $P520, "$post"
    $P521 = $P518."infer_type"($P520)
    set $S502, $P521
    downcase $S501, $S502
    iseq $I501, $S501, "p"
    box $P525, $I501
    set $P524, $P525
    unless $I501 goto if348_end1454 
    .const 'Sub' $P522 = 'cuid_285_1346233447.816' 
    capture_lex $P522
    $P523 = $P522()
    set $P524, $P523
  if348_end1454:
    .return ($P524) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1346233447.816") :anon :lex :outer("cuid_286_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2574
    .lex "$fbpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2575
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$node"
    $P505 = $P504."fallback"()
    $P506 = $P502."as_post"($P505, "P" :named("want"))
    set $P101, $P506
.annotate 'line', 2576
    find_lex $P507, "$result"
    find_lex $P508, "$post"
    find_lex $P509, "$lbl"
    $P510 = $P507."push_pirop"("unless_null", $P508, $P509)
.annotate 'line', 2577
    find_lex $P511, "$result"
    $P512 = $P511."push"($P101)
.annotate 'line', 2578
    find_lex $P513, "$result"
    find_lex $P514, "$post"
    $P515 = $P513."push_pirop"("set", $P514, $P101)
.annotate 'line', 2579
    find_lex $P516, "$result"
    find_lex $P517, "$lbl"
    $P518 = $P516."push"($P517)
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "compile_var" :subid("cuid_115_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2585
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P631 = 'cuid_288_1346233447.816' 
    capture_lex $P631 
    .const 'Sub' $P631 = 'cuid_290_1346233447.816' 
    capture_lex $P631 
    .const 'Sub' $P631 = 'cuid_293_1346233447.816' 
    capture_lex $P631 
    .const 'Sub' $P631 = 'cuid_300_1346233447.816' 
    capture_lex $P631 
    .lex "$scope", $P101 
    .lex "$decl", $P102 
    .lex "$name", $P103 
    .lex "$ops", $P104 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 2586
    $P505 = _lex_param_1."scope"()
    set $P101, $P505
.annotate 'line', 2587
    $P506 = _lex_param_1."decl"()
    set $P102, $P506
    set $P536, $P102
    unless $P102 goto if349_end1456 
.annotate 'line', 2591
    set $S501, $P102
    iseq $I501, $S501, "param"
    unless $I501 goto if350_else1457 
.annotate 'line', 2594
    set $S502, $P101
    iseq $I502, $S502, "local"
    set $I504, $I502
    if $I502 goto unless352_end1462 
    set $S503, $P101
    iseq $I503, $S503, "lexical"
    set $I504, $I503
  unless352_end1462:
    unless $I504 goto if351_else1459 
.annotate 'line', 2595
.annotate 'line', 2596
    find_dynamic_lex $P507, "$*BLOCK"
    unless_null $P507, fallback1463
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    set $P508, $P509["$BLOCK"]
    unless_null $P508, fallback1464
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P511
  fallback1464:
    unless_null $P508, vivi_3531465
    die "Contextual $*BLOCK not found"
    box $P512, "Contextual $*BLOCK not found"
    set $P508, $P512
  vivi_3531465:
    set $P507, $P508
  fallback1463:
    $P513 = $P507."add_param"(_lex_param_1)
    set $P515, $P513
    goto if351_end1460
  if351_else1459:
.annotate 'line', 2598
    set $S506, $P101
    concat $S505, "Parameter cannot have scope '", $S506
    concat $S504, $S505, "'; use 'local' or 'lexical'"
    box $P514, $S504
    die $P514
    set $P515, $P514
  if351_end1460:
    set $P535, $P515
    goto if350_end1458
  if350_else1457:
    set $S507, $P102
    iseq $I505, $S507, "var"
    unless $I505 goto if354_else1466 
.annotate 'line', 2602
    set $S508, $P101
    iseq $I506, $S508, "local"
    unless $I506 goto if355_else1468 
.annotate 'line', 2603
.annotate 'line', 2604
    find_dynamic_lex $P516, "$*BLOCK"
    unless_null $P516, fallback1470
    get_hll_global $P519, "GLOBAL"
    get_who $P518, $P519
    set $P517, $P518["$BLOCK"]
    unless_null $P517, fallback1471
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P520
  fallback1471:
    unless_null $P517, vivi_3561472
    die "Contextual $*BLOCK not found"
    box $P521, "Contextual $*BLOCK not found"
    set $P517, $P521
  vivi_3561472:
    set $P516, $P517
  fallback1470:
    $P522 = $P516."add_local"(_lex_param_1)
    set $P532, $P522
    goto if355_end1469
  if355_else1468:
    set $S509, $P101
    iseq $I507, $S509, "lexical"
    unless $I507 goto if357_else1473 
.annotate 'line', 2606
.annotate 'line', 2607
    find_dynamic_lex $P523, "$*BLOCK"
    unless_null $P523, fallback1475
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["$BLOCK"]
    unless_null $P524, fallback1476
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P527
  fallback1476:
    unless_null $P524, vivi_3581477
    die "Contextual $*BLOCK not found"
    box $P528, "Contextual $*BLOCK not found"
    set $P524, $P528
  vivi_3581477:
    set $P523, $P524
  fallback1475:
    $P529 = $P523."add_lexical"(_lex_param_1)
    set $P531, $P529
    goto if357_end1474
  if357_else1473:
.annotate 'line', 2609
    set $S512, $P101
    concat $S511, "Cannot declare variable with scope '", $S512
    concat $S510, $S511, "'; use 'local' or 'lexical'"
    box $P530, $S510
    die $P530
    set $P531, $P530
  if357_end1474:
    set $P532, $P531
  if355_end1469:
    set $P534, $P532
    goto if354_end1467
  if354_else1466:
.annotate 'line', 2613
    set $S515, $P102
    concat $S514, "Don't understand declaration type '", $S515
    concat $S513, $S514, "'"
    box $P533, $S513
    die $P533
    set $P534, $P533
  if354_end1467:
    set $P535, $P534
  if350_end1458:
    set $P536, $P535
  if349_end1456:
.annotate 'line', 2620
    $P537 = _lex_param_1."name"()
    set $P103, $P537
    set $S516, $P101
    iseq $I508, $S516, ""
    box $P541, $I508
    set $P540, $P541
    unless $I508 goto if359_end1479 
    .const 'Sub' $P538 = 'cuid_288_1346233447.816' 
    capture_lex $P538
    $P539 = $P538()
    set $P540, $P539
  if359_end1479:
.annotate 'line', 2639
    get_hll_global $P545, "GLOBAL"
    nqp_get_package_through_who $P544, $P545, "PIRT"
    get_who $P543, $P544
    set $P542, $P543["Ops"]
    unless_null $P542, fallback1493
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P546
  fallback1493:
    $P547 = $P542."new"()
    set $P104, $P547
.annotate 'line', 2640
    $P548 = _lex_param_1."node"()
    set $P551, $P548
    unless $P548 goto if364_end1495 
    $P549 = _lex_param_1."node"()
    $P550 = $P104."node"($P549)
    set $P551, $P550
  if364_end1495:
    set $S517, $P101
    iseq $I509, $S517, "local"
    unless $I509 goto if365_else1496 
.annotate 'line', 2641
.annotate 'line', 2642
    find_dynamic_lex $P552, "$*BLOCK"
    unless_null $P552, fallback1500
    get_hll_global $P555, "GLOBAL"
    get_who $P554, $P555
    set $P553, $P554["$BLOCK"]
    unless_null $P553, fallback1501
    nqp_get_sc_object $P556, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P553, $P556
  fallback1501:
    unless_null $P553, vivi_3671502
    die "Contextual $*BLOCK not found"
    box $P557, "Contextual $*BLOCK not found"
    set $P553, $P557
  vivi_3671502:
    set $P552, $P553
  fallback1500:
    $P558 = $P552."local_type"($P103)
    unless $P558 goto if366_else1498 
    .const 'Sub' $P559 = 'cuid_290_1346233447.816' 
    capture_lex $P559
    $P560 = $P559($P558)
    set $P562, $P560
    goto if366_end1499
  if366_else1498:
.annotate 'line', 2650
    set $S520, $P103
    concat $S519, "Cannot reference undeclared local '", $S520
    concat $S518, $S519, "'"
    box $P561, $S518
    die $P561
    set $P562, $P561
  if366_end1499:
    set $P630, $P562
    goto if365_end1497
  if365_else1496:
    set $S521, $P101
    iseq $I510, $S521, "lexical"
    set $I512, $I510
    if $I510 goto unless372_end1514 
    set $S522, $P101
    iseq $I511, $S522, "contextual"
    set $I512, $I511
  unless372_end1514:
    unless $I512 goto if371_else1511 
    .const 'Sub' $P563 = 'cuid_293_1346233447.816' 
    capture_lex $P563
    $P564 = $P563()
    set $P629, $P564
    goto if371_end1512
  if371_else1511:
    set $S523, $P101
    iseq $I513, $S523, "attribute"
    unless $I513 goto if392_else1565 
    .const 'Sub' $P565 = 'cuid_300_1346233447.816' 
    capture_lex $P565
    $P566 = $P565()
    set $P628, $P566
    goto if392_end1566
  if392_else1565:
    set $S524, $P101
    iseq $I514, $S524, "positional"
    unless $I514 goto if398_else1582 
.annotate 'line', 2734
.annotate 'line', 2735
    nqp_decontainerize $P567, _lex_param_0
    find_dynamic_lex $P568, "$*BINDVAL"
    unless_null $P568, fallback1586
    get_hll_global $P571, "GLOBAL"
    get_who $P570, $P571
    set $P569, $P570["$BINDVAL"]
    unless_null $P569, fallback1587
    nqp_get_sc_object $P572, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P569, $P572
  fallback1587:
    unless_null $P569, vivi_4001588
    die "Contextual $*BINDVAL not found"
    box $P573, "Contextual $*BINDVAL not found"
    set $P569, $P573
  vivi_4001588:
    set $P568, $P569
  fallback1586:
    unless $P568 goto if399_else1584 
.annotate 'line', 2736
    get_hll_global $P577, "GLOBAL"
    nqp_get_package_through_who $P576, $P577, "QAST"
    get_who $P575, $P576
    set $P574, $P575["Op"]
    unless_null $P574, fallback1589
    nqp_get_sc_object $P578, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P574, $P578
  fallback1589:
    $P579 = _lex_param_1."list"()
    find_dynamic_lex $P580, "$*BINDVAL"
    unless_null $P580, fallback1590
    get_hll_global $P583, "GLOBAL"
    get_who $P582, $P583
    set $P581, $P582["$BINDVAL"]
    unless_null $P581, fallback1591
    nqp_get_sc_object $P584, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P581, $P584
  fallback1591:
    unless_null $P581, vivi_4011592
    die "Contextual $*BINDVAL not found"
    box $P585, "Contextual $*BINDVAL not found"
    set $P581, $P585
  vivi_4011592:
    set $P580, $P581
  fallback1590:
    $P586 = $P574."new"($P579 :flat, $P580, "positional_bind" :named("op"))
    set $P594, $P586
    goto if399_end1585
  if399_else1584:
.annotate 'line', 2737
    get_hll_global $P590, "GLOBAL"
    nqp_get_package_through_who $P589, $P590, "QAST"
    get_who $P588, $P589
    set $P587, $P588["Op"]
    unless_null $P587, fallback1593
    nqp_get_sc_object $P591, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P587, $P591
  fallback1593:
    $P592 = _lex_param_1."list"()
    $P593 = $P587."new"($P592 :flat, "positional_get" :named("op"))
    set $P594, $P593
  if399_end1585:
    $P595 = $P567."as_post_clear_bindval"($P594)
    set $P104, $P595
    set $P627, $P104
    goto if398_end1583
  if398_else1582:
    set $S525, $P101
    iseq $I515, $S525, "associative"
    unless $I515 goto if402_else1594 
.annotate 'line', 2739
.annotate 'line', 2740
    nqp_decontainerize $P596, _lex_param_0
    find_dynamic_lex $P597, "$*BINDVAL"
    unless_null $P597, fallback1598
    get_hll_global $P600, "GLOBAL"
    get_who $P599, $P600
    set $P598, $P599["$BINDVAL"]
    unless_null $P598, fallback1599
    nqp_get_sc_object $P601, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P598, $P601
  fallback1599:
    unless_null $P598, vivi_4041600
    die "Contextual $*BINDVAL not found"
    box $P602, "Contextual $*BINDVAL not found"
    set $P598, $P602
  vivi_4041600:
    set $P597, $P598
  fallback1598:
    unless $P597 goto if403_else1596 
.annotate 'line', 2741
    get_hll_global $P606, "GLOBAL"
    nqp_get_package_through_who $P605, $P606, "QAST"
    get_who $P604, $P605
    set $P603, $P604["Op"]
    unless_null $P603, fallback1601
    nqp_get_sc_object $P607, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P603, $P607
  fallback1601:
    $P608 = _lex_param_1."list"()
    find_dynamic_lex $P609, "$*BINDVAL"
    unless_null $P609, fallback1602
    get_hll_global $P612, "GLOBAL"
    get_who $P611, $P612
    set $P610, $P611["$BINDVAL"]
    unless_null $P610, fallback1603
    nqp_get_sc_object $P613, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P610, $P613
  fallback1603:
    unless_null $P610, vivi_4051604
    die "Contextual $*BINDVAL not found"
    box $P614, "Contextual $*BINDVAL not found"
    set $P610, $P614
  vivi_4051604:
    set $P609, $P610
  fallback1602:
    $P615 = $P603."new"($P608 :flat, $P609, "associative_bind" :named("op"))
    set $P623, $P615
    goto if403_end1597
  if403_else1596:
.annotate 'line', 2742
    get_hll_global $P619, "GLOBAL"
    nqp_get_package_through_who $P618, $P619, "QAST"
    get_who $P617, $P618
    set $P616, $P617["Op"]
    unless_null $P616, fallback1605
    nqp_get_sc_object $P620, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P616, $P620
  fallback1605:
    $P621 = _lex_param_1."list"()
    $P622 = $P616."new"($P621 :flat, "associative_get" :named("op"))
    set $P623, $P622
  if403_end1597:
    $P624 = $P596."as_post_clear_bindval"($P623)
    set $P104, $P624
    set $P626, $P104
    goto if402_end1595
  if402_else1594:
.annotate 'line', 2744
    set $S528, $P101
    concat $S527, "QAST::Var with scope '", $S528
    concat $S526, $S527, "' NYI"
    box $P625, $S526
    die $P625
    set $P626, $P625
  if402_end1595:
    set $P627, $P626
  if398_end1583:
    set $P628, $P627
  if392_end1566:
    set $P629, $P628
  if371_end1512:
    set $P630, $P629
  if365_end1497:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1346233447.816") :anon :lex :outer("cuid_115_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2621
    .const 'Sub' $P519 = 'cuid_287_1346233447.816' 
    capture_lex $P519 
    .lex "$cur_block", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_dynamic_lex $P502, "$*BLOCK"
    unless_null $P502, fallback1480
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$BLOCK"]
    unless_null $P503, fallback1481
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1481:
    unless_null $P503, vivi_3601482
    die "Contextual $*BLOCK not found"
    box $P507, "Contextual $*BLOCK not found"
    set $P503, $P507
  vivi_3601482:
    set $P502, $P503
  fallback1480:
    set $P101, $P502
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, while361_handlers1486
    push_eh $P512
  while361_test1483:
    find_lex $P508, "BlockInfo"
    type_check $I501, $P101, $P508
    box $P513, $I501
    set $P511, $P513
    unless $I501 goto while361_done1487 
  while361_redo1485:
    .const 'Sub' $P509 = 'cuid_287_1346233447.816' 
    capture_lex $P509
    $P510 = $P509()
    set $P511, $P510
    goto while361_test1483 
  while361_handlers1486:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, while361_test1483
    eq $P512, .CONTROL_LOOP_REDO, while361_redo1485
  while361_done1487:
    pop_eh 
    find_lex $P514, "$scope"
    set $S501, $P514
    iseq $I502, $S501, ""
    box $P518, $I502
    set $P517, $P518
    unless $I502 goto if363_end1492 
.annotate 'line', 2633
    find_lex $P515, "$name"
    set $S504, $P515
    concat $S503, "No scope specified or locatable in the symbol table for '", $S504
    concat $S502, $S503, "'"
    box $P516, $S502
    die $P516
    set $P517, $P516
  if363_end1492:
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1346233447.816") :anon :lex :outer("cuid_288_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2623
    .lex "%sym", $P101 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 2624
    find_lex $P502, "$cur_block"
    $P503 = $P502."qast"()
    find_lex $P504, "$name"
    $P505 = $P503."symbol"($P504)
    set $P101, $P505
    unless $P101 goto if362_else1488 
.annotate 'line', 2625
    set $P506, $P101["$scope"]
    unless_null $P506, fallback1490
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P507
  fallback1490:
    store_lex "$scope", $P506
    find_lex $P508, "NQPMu"
    store_lex "$cur_block", $P508
    set $P511, $P508
    goto if362_end1489
  if362_else1488:
.annotate 'line', 2629
.annotate 'line', 2630
    find_lex $P509, "$cur_block"
    $P510 = $P509."outer"()
    store_lex "$cur_block", $P510
    set $P511, $P510
  if362_end1489:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1346233447.816") :anon :lex :outer("cuid_115_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2642
    .param pmc _lex_param_0 
    .const 'Sub' $P513 = 'cuid_289_1346233447.816' 
    capture_lex $P513 
    .lex "$type", _lex_param_0 
    find_dynamic_lex $P501, "$*BINDVAL"
    unless_null $P501, fallback1505
    get_hll_global $P504, "GLOBAL"
    get_who $P503, $P504
    set $P502, $P503["$BINDVAL"]
    unless_null $P502, fallback1506
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback1506:
    unless_null $P502, vivi_3691507
    die "Contextual $*BINDVAL not found"
    box $P506, "Contextual $*BINDVAL not found"
    set $P502, $P506
  vivi_3691507:
    set $P501, $P502
  fallback1505:
    set $P509, $P501
    unless $P501 goto if368_end1504 
    .const 'Sub' $P507 = 'cuid_289_1346233447.816' 
    capture_lex $P507
    $P508 = $P507()
    set $P509, $P508
  if368_end1504:
.annotate 'line', 2648
    find_lex $P510, "$ops"
    find_lex $P511, "$name"
    $P512 = $P510."result"($P511)
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1346233447.816") :anon :lex :outer("cuid_290_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2643
    .lex "$valpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2644
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_dynamic_lex $P504, "$*BINDVAL"
    unless_null $P504, fallback1508
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$BINDVAL"]
    unless_null $P505, fallback1509
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1509:
    unless_null $P505, vivi_3701510
    die "Contextual $*BINDVAL not found"
    box $P509, "Contextual $*BINDVAL not found"
    set $P505, $P509
  vivi_3701510:
    set $P504, $P505
  fallback1508:
    find_lex $P510, "$type"
    set $S502, $P510
    downcase $S501, $S502
    $P511 = $P502."as_post_clear_bindval"($P504, $S501 :named("want"))
    set $P101, $P511
.annotate 'line', 2645
    find_lex $P512, "$ops"
    $P513 = $P512."push"($P101)
.annotate 'line', 2646
    find_lex $P514, "$ops"
    find_lex $P515, "$name"
    $P516 = $P101."result"()
    $P517 = $P514."push_pirop"("set", $P515, $P516)
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_293_1346233447.816") :anon :lex :outer("cuid_115_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2654
    .const 'Sub' $P528 = 'cuid_292_1346233447.816' 
    capture_lex $P528 
    .const 'Sub' $P528 = 'cuid_295_1346233447.816' 
    capture_lex $P528 
    .lex "%sym", $P101 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 2657
    find_dynamic_lex $P502, "$*BLOCK"
    unless_null $P502, fallback1515
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$BLOCK"]
    unless_null $P503, fallback1516
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1516:
    unless_null $P503, vivi_3731517
    die "Contextual $*BLOCK not found"
    box $P507, "Contextual $*BLOCK not found"
    set $P503, $P507
  vivi_3731517:
    set $P502, $P503
  fallback1515:
    $P508 = $P502."qast"()
    find_lex $P509, "$name"
    $P510 = $P508."symbol"($P509)
    set $P101, $P510
    isfalse $I501, $P101
    set $I503, $I501
    if $I501 goto unless376_end1523 
    set $P511, $P101["lazyinit"]
    unless_null $P511, fallback1524
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P512
  fallback1524:
    isfalse $I502, $P511
    set $I503, $I502
  unless376_end1523:
    box $P522, $I503
    set $P521, $P522
    unless $I503 goto if375_end1521 
.annotate 'line', 2658
    find_dynamic_lex $P513, "$*BLOCK"
    unless_null $P513, fallback1525
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["$BLOCK"]
    unless_null $P514, fallback1526
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P517
  fallback1526:
    unless_null $P514, vivi_3771527
    die "Contextual $*BLOCK not found"
    box $P518, "Contextual $*BLOCK not found"
    set $P514, $P518
  vivi_3771527:
    set $P513, $P514
  fallback1525:
    find_lex $P519, "$name"
    $P520 = $P513."lexical_type"($P519)
    set $P521, $P520
  if375_end1521:
    unless $P521 goto if374_else1518 
    .const 'Sub' $P523 = 'cuid_292_1346233447.816' 
    capture_lex $P523
    $P524 = $P523($P521)
    set $P527, $P524
    goto if374_end1519
  if374_else1518:
    .const 'Sub' $P525 = 'cuid_295_1346233447.816' 
    capture_lex $P525
    $P526 = $P525()
    set $P527, $P526
  if374_end1519:
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1346233447.816") :anon :lex :outer("cuid_293_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2658
    .param pmc _lex_param_0 
    .const 'Sub' $P521 = 'cuid_291_1346233447.816' 
    capture_lex $P521 
    .lex "$reg", $P101 
    .lex "$type", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2659
    find_dynamic_lex $P502, "$*BLOCK"
    unless_null $P502, fallback1528
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$BLOCK"]
    unless_null $P503, fallback1529
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1529:
    unless_null $P503, vivi_3781530
    die "Contextual $*BLOCK not found"
    box $P507, "Contextual $*BLOCK not found"
    set $P503, $P507
  vivi_3781530:
    set $P502, $P503
  fallback1528:
    find_lex $P508, "$name"
    $P509 = $P502."lex_reg"($P508)
    set $P101, $P509
    find_dynamic_lex $P510, "$*BINDVAL"
    unless_null $P510, fallback1533
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["$BINDVAL"]
    unless_null $P511, fallback1534
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P514
  fallback1534:
    unless_null $P511, vivi_3801535
    die "Contextual $*BINDVAL not found"
    box $P515, "Contextual $*BINDVAL not found"
    set $P511, $P515
  vivi_3801535:
    set $P510, $P511
  fallback1533:
    set $P518, $P510
    unless $P510 goto if379_end1532 
    .const 'Sub' $P516 = 'cuid_291_1346233447.816' 
    capture_lex $P516
    $P517 = $P516()
    set $P518, $P517
  if379_end1532:
.annotate 'line', 2665
    find_lex $P519, "$ops"
    $P520 = $P519."result"($P101)
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1346233447.816") :anon :lex :outer("cuid_292_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2660
    .lex "$valpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2661
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_dynamic_lex $P504, "$*BINDVAL"
    unless_null $P504, fallback1536
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$BINDVAL"]
    unless_null $P505, fallback1537
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1537:
    unless_null $P505, vivi_3811538
    die "Contextual $*BINDVAL not found"
    box $P509, "Contextual $*BINDVAL not found"
    set $P505, $P509
  vivi_3811538:
    set $P504, $P505
  fallback1536:
    find_lex $P510, "$type"
    set $S502, $P510
    downcase $S501, $S502
    $P511 = $P502."as_post_clear_bindval"($P504, $S501 :named("want"))
    set $P101, $P511
.annotate 'line', 2662
    find_lex $P512, "$ops"
    $P513 = $P512."push"($P101)
.annotate 'line', 2663
    find_lex $P514, "$ops"
    find_lex $P515, "$reg"
    $P516 = $P101."result"()
    $P517 = $P514."push_pirop"("set", $P515, $P516)
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_295_1346233447.816") :anon :lex :outer("cuid_293_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2667
    .const 'Sub' $P532 = 'cuid_294_1346233447.816' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_296_1346233447.816' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_297_1346233447.816' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_298_1346233447.816' 
    capture_lex $P532 
    .lex "$type", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2669
    find_lex $P502, "$node"
    $P503 = $P502."returns"()
    $P504 = "&type_to_register_type"($P503)
    set $P101, $P504
    set $S501, $P101
    iseq $I501, $S501, "P"
    box $P507, $I501
    set $P506, $P507
    unless $I501 goto if382_end1540 
.annotate 'line', 2670
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P505
  if382_end1540:
    find_lex $P508, "$scope"
    set $S502, $P508
    iseq $I502, $S502, "lexical"
    unless $I502 goto if383_else1541 
.annotate 'line', 2676
    find_dynamic_lex $P509, "$*BINDVAL"
    unless_null $P509, fallback1545
    get_hll_global $P512, "GLOBAL"
    get_who $P511, $P512
    set $P510, $P511["$BINDVAL"]
    unless_null $P510, fallback1546
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback1546:
    unless_null $P510, vivi_3851547
    die "Contextual $*BINDVAL not found"
    box $P514, "Contextual $*BINDVAL not found"
    set $P510, $P514
  vivi_3851547:
    set $P509, $P510
  fallback1545:
    unless $P509 goto if384_else1543 
    .const 'Sub' $P515 = 'cuid_294_1346233447.816' 
    capture_lex $P515
    $P516 = $P515()
    set $P519, $P516
    goto if384_end1544
  if384_else1543:
    .const 'Sub' $P517 = 'cuid_296_1346233447.816' 
    capture_lex $P517
    $P518 = $P517()
    set $P519, $P518
  if384_end1544:
    set $P531, $P519
    goto if383_end1542
  if383_else1541:
.annotate 'line', 2689
    find_dynamic_lex $P520, "$*BINDVAL"
    unless_null $P520, fallback1556
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    set $P521, $P522["$BINDVAL"]
    unless_null $P521, fallback1557
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P524
  fallback1557:
    unless_null $P521, vivi_3891558
    die "Contextual $*BINDVAL not found"
    box $P525, "Contextual $*BINDVAL not found"
    set $P521, $P525
  vivi_3891558:
    set $P520, $P521
  fallback1556:
    unless $P520 goto if388_else1554 
    .const 'Sub' $P526 = 'cuid_297_1346233447.816' 
    capture_lex $P526
    $P527 = $P526()
    set $P530, $P527
    goto if388_end1555
  if388_else1554:
    .const 'Sub' $P528 = 'cuid_298_1346233447.816' 
    capture_lex $P528
    $P529 = $P528()
    set $P530, $P529
  if388_end1555:
    set $P531, $P530
  if383_end1542:
    .return ($P531) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_294_1346233447.816") :anon :lex :outer("cuid_295_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2677
    .lex "$valpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2678
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_dynamic_lex $P504, "$*BINDVAL"
    unless_null $P504, fallback1548
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$BINDVAL"]
    unless_null $P505, fallback1549
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1549:
    unless_null $P505, vivi_3861550
    die "Contextual $*BINDVAL not found"
    box $P509, "Contextual $*BINDVAL not found"
    set $P505, $P509
  vivi_3861550:
    set $P504, $P505
  fallback1548:
    find_lex $P510, "$type"
    set $S502, $P510
    downcase $S501, $S502
    $P511 = $P502."as_post_clear_bindval"($P504, $S501 :named("want"))
    set $P101, $P511
.annotate 'line', 2679
    find_lex $P512, "$ops"
    $P513 = $P512."push"($P101)
.annotate 'line', 2680
    find_lex $P514, "$ops"
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    find_lex $P517, "$node"
    $P518 = $P517."name"()
    $P519 = $P515."escape"($P518)
    $P520 = $P101."result"()
    $P521 = $P514."push_pirop"("store_lex", $P519, $P520)
.annotate 'line', 2681
    find_lex $P522, "$ops"
    $P523 = $P101."result"()
    $P524 = $P522."result"($P523)
    .return ($P524) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1346233447.816") :anon :lex :outer("cuid_295_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2683
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2684
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback1551
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback1552
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1552:
    unless_null $P504, vivi_3871553
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_3871553:
    set $P503, $P504
  fallback1551:
    find_lex $P502, "$type"
    set $S503, $P502
    downcase $S502, $S503
    concat $S501, "fresh_", $S502
    $P509 = $P503.$S501()
    set $P101, $P509
.annotate 'line', 2685
    find_lex $P510, "$ops"
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    find_lex $P513, "$node"
    $P514 = $P513."name"()
    $P515 = $P511."escape"($P514)
    $P516 = $P510."push_pirop"("find_lex", $P101, $P515)
.annotate 'line', 2686
    find_lex $P517, "$ops"
    $P518 = $P517."result"($P101)
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1346233447.816") :anon :lex :outer("cuid_295_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2690
    .lex "$valpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2691
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_dynamic_lex $P504, "$*BINDVAL"
    unless_null $P504, fallback1559
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$BINDVAL"]
    unless_null $P505, fallback1560
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1560:
    unless_null $P505, vivi_3901561
    die "Contextual $*BINDVAL not found"
    box $P509, "Contextual $*BINDVAL not found"
    set $P505, $P509
  vivi_3901561:
    set $P504, $P505
  fallback1559:
    $P510 = $P502."as_post_clear_bindval"($P504, "P" :named("want"))
    set $P101, $P510
.annotate 'line', 2692
    find_lex $P511, "$ops"
    $P512 = $P511."push"($P101)
.annotate 'line', 2693
    find_lex $P513, "$ops"
    find_lex $P515, "self"
    nqp_decontainerize $P514, $P515
    find_lex $P516, "$name"
    $P517 = $P514."escape"($P516)
    $P518 = $P101."result"()
    $P519 = $P513."push_pirop"("store_dynamic_lex", $P517, $P518)
.annotate 'line', 2694
    find_lex $P520, "$ops"
    $P521 = $P101."result"()
    $P522 = $P520."result"($P521)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1346233447.816") :anon :lex :outer("cuid_295_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2696
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2697
    find_dynamic_lex $P502, "$*REGALLOC"
    unless_null $P502, fallback1562
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$REGALLOC"]
    unless_null $P503, fallback1563
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback1563:
    unless_null $P503, vivi_3911564
    die "Contextual $*REGALLOC not found"
    box $P507, "Contextual $*REGALLOC not found"
    set $P503, $P507
  vivi_3911564:
    set $P502, $P503
  fallback1562:
    $P508 = $P502."fresh_p"()
    set $P101, $P508
.annotate 'line', 2698
    find_lex $P509, "$ops"
    find_lex $P511, "self"
    nqp_decontainerize $P510, $P511
    find_lex $P512, "$name"
    $P513 = $P510."escape"($P512)
    $P514 = $P509."push_pirop"("find_dynamic_lex", $P101, $P513)
.annotate 'line', 2699
    find_lex $P515, "$ops"
    $P516 = $P515."result"($P101)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_300_1346233447.816") :anon :lex :outer("cuid_115_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2704
    .const 'Sub' $P542 = 'cuid_299_1346233447.816' 
    capture_lex $P542 
    .const 'Sub' $P542 = 'cuid_301_1346233447.816' 
    capture_lex $P542 
    .lex "@args", $P101 
    .lex "$obj", $P102 
    .lex "$han", $P103 
    .lex "$type", $P104 
    .lex "$op_type", $P105 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
.annotate 'line', 2706
    find_lex $P506, "$node"
    $P507 = $P506."list"()
    set $P101, $P507
    set $N501, $P101
    set $N502, 2
    isne $I501, $N501, $N502
    box $P510, $I501
    set $P509, $P510
    unless $I501 goto if393_end1568 
.annotate 'line', 2707
    box $P508, "An attribute lookup needs an object and a class handle"
    die $P508
    set $P509, $P508
  if393_end1568:
.annotate 'line', 2712
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    set $P513, $P101[0]
    unless_null $P513, fallback1569
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback1569:
    $P515 = $P511."as_post_clear_bindval"($P513, "P" :named("want"))
    set $P102, $P515
.annotate 'line', 2713
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    set $P518, $P101[1]
    unless_null $P518, fallback1570
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P519
  fallback1570:
    $P520 = $P516."as_post_clear_bindval"($P518, "P" :named("want"))
    set $P103, $P520
.annotate 'line', 2714
    find_lex $P521, "$ops"
    $P522 = $P521."push"($P102)
.annotate 'line', 2715
    find_lex $P523, "$ops"
    $P524 = $P523."push"($P103)
.annotate 'line', 2718
    find_lex $P525, "$node"
    $P526 = $P525."returns"()
    $P527 = "&type_to_register_type"($P526)
    set $P104, $P527
.annotate 'line', 2719
    find_lex $P528, "$node"
    $P529 = $P528."returns"()
    $P530 = "&type_to_lookup_name"($P529)
    set $P105, $P530
    find_dynamic_lex $P531, "$*BINDVAL"
    unless_null $P531, fallback1573
    get_hll_global $P534, "GLOBAL"
    get_who $P533, $P534
    set $P532, $P533["$BINDVAL"]
    unless_null $P532, fallback1574
    nqp_get_sc_object $P535, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P535
  fallback1574:
    unless_null $P532, vivi_3951575
    die "Contextual $*BINDVAL not found"
    box $P536, "Contextual $*BINDVAL not found"
    set $P532, $P536
  vivi_3951575:
    set $P531, $P532
  fallback1573:
    unless $P531 goto if394_else1571 
    .const 'Sub' $P537 = 'cuid_299_1346233447.816' 
    capture_lex $P537
    $P538 = $P537()
    set $P541, $P538
    goto if394_end1572
  if394_else1571:
    .const 'Sub' $P539 = 'cuid_301_1346233447.816' 
    capture_lex $P539
    $P540 = $P539()
    set $P541, $P540
  if394_end1572:
    .return ($P541) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1346233447.816") :anon :lex :outer("cuid_300_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2720
    .lex "$valpost", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2721
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_dynamic_lex $P504, "$*BINDVAL"
    unless_null $P504, fallback1576
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["$BINDVAL"]
    unless_null $P505, fallback1577
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P508
  fallback1577:
    unless_null $P505, vivi_3961578
    die "Contextual $*BINDVAL not found"
    box $P509, "Contextual $*BINDVAL not found"
    set $P505, $P509
  vivi_3961578:
    set $P504, $P505
  fallback1576:
    find_lex $P510, "$type"
    set $S502, $P510
    downcase $S501, $S502
    $P511 = $P502."as_post_clear_bindval"($P504, $S501 :named("want"))
    set $P101, $P511
.annotate 'line', 2722
    find_lex $P512, "$ops"
    $P513 = $P512."push"($P101)
.annotate 'line', 2723
    find_lex $P514, "$ops"
    find_lex $P515, "$op_type"
    set $S504, $P515
    concat $S503, "repr_bind_attr_", $S504
    find_lex $P516, "$obj"
    $P517 = $P516."result"()
    find_lex $P518, "$han"
    $P519 = $P518."result"()
.annotate 'line', 2724
    find_lex $P521, "self"
    nqp_decontainerize $P520, $P521
    find_lex $P522, "$name"
    $P523 = $P520."escape"($P522)
    $P524 = $P101."result"()
    $P525 = $P514."push_pirop"($S503, $P517, $P519, $P523, $P524)
.annotate 'line', 2725
    find_lex $P526, "$ops"
    $P527 = $P101."result"()
    $P528 = $P526."result"($P527)
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1346233447.816") :anon :lex :outer("cuid_300_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2727
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2728
    find_dynamic_lex $P503, "$*REGALLOC"
    unless_null $P503, fallback1579
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$REGALLOC"]
    unless_null $P504, fallback1580
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1580:
    unless_null $P504, vivi_3971581
    die "Contextual $*REGALLOC not found"
    box $P508, "Contextual $*REGALLOC not found"
    set $P504, $P508
  vivi_3971581:
    set $P503, $P504
  fallback1579:
    find_lex $P502, "$type"
    set $S503, $P502
    downcase $S502, $S503
    concat $S501, "fresh_", $S502
    $P509 = $P503.$S501()
    set $P101, $P509
.annotate 'line', 2729
    find_lex $P510, "$ops"
    find_lex $P511, "$op_type"
    set $S505, $P511
    concat $S504, "repr_get_attr_", $S505
    find_lex $P512, "$obj"
    $P513 = $P512."result"()
    find_lex $P514, "$han"
    $P515 = $P514."result"()
.annotate 'line', 2730
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    find_lex $P518, "$name"
    $P519 = $P516."escape"($P518)
    $P520 = $P510."push_pirop"($S504, $P101, $P513, $P515, $P519)
.annotate 'line', 2731
    find_lex $P521, "$ops"
    $P522 = $P521."result"($P101)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "as_post_clear_bindval" :subid("cuid_116_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default1608
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P508
  default1608:
    .lex "$*BINDVAL", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
    unless _lex_param_2 goto if406_else1606 
.annotate 'line', 2753
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."as_post"(_lex_param_1, _lex_param_2 :named("want"))
    set $P507, $P504
    goto if406_end1607
  if406_else1606:
    nqp_decontainerize $P505, _lex_param_0
    $P506 = $P505."as_post"(_lex_param_1)
    set $P507, $P506
  if406_end1607:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_117_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2756
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2758
    nqp_decontainerize $P501, _lex_param_0
    set $P502, _lex_param_1[0]
    unless_null $P502, fallback1609
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback1609:
    $P504 = $P501."as_post"($P502)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_118_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2761
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2762
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PIRT"
    get_who $P502, $P503
    set $P501, $P502["Ops"]
    unless_null $P501, fallback1610
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1610:
    $P506 = _lex_param_1."value"()
    set $S501, $P506
    $P507 = $P501."new"($S501 :named("result"))
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_119_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2765
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$val", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2766
    $P502 = _lex_param_1."value"()
    set $S501, $P502
    box $P503, $S501
    set $P101, $P503
    set $S502, $P101
    index $I502, $S502, ".", 0
    set $N501, $I502
    set $N502, 0
    isge $I501, $N501, $N502
    set $I505, $I501
    if $I501 goto unless408_end1614 
    set $S503, $P101
    index $I504, $S503, "e", 0
    set $N503, $I504
    set $N504, 0
    isgt $I503, $N503, $N504
    set $I505, $I503
  unless408_end1614:
    box $P506, $I505
    set $P505, $P506
    if $I505 goto unless407_end1612 
    set $S505, $P101
    concat $S504, $S505, ".0"
    box $P504, $S504
    set $P101, $P504
    set $P505, $P101
  unless407_end1612:
.annotate 'line', 2769
    get_hll_global $P510, "GLOBAL"
    nqp_get_package_through_who $P509, $P510, "PIRT"
    get_who $P508, $P509
    set $P507, $P508["Ops"]
    unless_null $P507, fallback1615
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P511
  fallback1615:
    $P512 = $P507."new"($P101 :named("result"))
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_120_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2772
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2773
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PIRT"
    get_who $P502, $P503
    set $P501, $P502["Ops"]
    unless_null $P501, fallback1616
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback1616:
    nqp_decontainerize $P506, _lex_param_0
    $P507 = _lex_param_1."value"()
    $P508 = $P506."escape"($P507)
    $P509 = $P501."new"($P508 :named("result"))
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_121_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2776
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cuid", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 2777
    nqp_decontainerize $P504, _lex_param_0
    $P505 = _lex_param_1."value"()
    $P506 = $P505."cuid"()
    $P507 = $P504."escape"($P506)
    set $P101, $P507
.annotate 'line', 2778
    find_dynamic_lex $P508, "$*REGALLOC"
    unless_null $P508, fallback1617
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["$REGALLOC"]
    unless_null $P509, fallback1618
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback1618:
    unless_null $P509, vivi_4091619
    die "Contextual $*REGALLOC not found"
    box $P513, "Contextual $*REGALLOC not found"
    set $P509, $P513
  vivi_4091619:
    set $P508, $P509
  fallback1617:
    $P514 = $P508."fresh_p"()
    set $P102, $P514
.annotate 'line', 2779
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "PIRT"
    get_who $P516, $P517
    set $P515, $P516["Ops"]
    unless_null $P515, fallback1620
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback1620:
    $P520 = $P515."new"($P102 :named("result"))
    set $P103, $P520
.annotate 'line', 2780
    set $S504, $P102
    concat $S503, ".const 'Sub' ", $S504
    concat $S502, $S503, " = "
    set $S505, $P101
    concat $S501, $S502, $S505
    $P521 = $P103."push_pirop"($S501)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_122_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2784
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$val", $P101 
    .lex "$sc", $P102 
    .lex "$handle", $P103 
    .lex "$idx", $P104 
    .lex "$reg", $P105 
    .lex "$ops", $P106 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 2785
    $P507 = _lex_param_1."value"()
    set $P101, $P507
    nqp_get_sc_for_object $P508, $P101
    set $P102, $P508
.annotate 'line', 2787
    $P509 = $P102."handle"()
    set $P103, $P509
.annotate 'line', 2788
    $P510 = $P102."slot_index_for"($P101)
    set $P104, $P510
.annotate 'line', 2789
    find_dynamic_lex $P511, "$*REGALLOC"
    unless_null $P511, fallback1621
    get_hll_global $P514, "GLOBAL"
    get_who $P513, $P514
    set $P512, $P513["$REGALLOC"]
    unless_null $P512, fallback1622
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P515
  fallback1622:
    unless_null $P512, vivi_4101623
    die "Contextual $*REGALLOC not found"
    box $P516, "Contextual $*REGALLOC not found"
    set $P512, $P516
  vivi_4101623:
    set $P511, $P512
  fallback1621:
    $P517 = $P511."fresh_p"()
    set $P105, $P517
.annotate 'line', 2790
    get_hll_global $P521, "GLOBAL"
    nqp_get_package_through_who $P520, $P521, "PIRT"
    get_who $P519, $P520
    set $P518, $P519["Ops"]
    unless_null $P518, fallback1624
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P522
  fallback1624:
    $P523 = $P518."new"($P105 :named("result"))
    set $P106, $P523
.annotate 'line', 2791
    nqp_decontainerize $P524, _lex_param_0
    $P525 = $P524."escape"($P103)
    set $S501, $P104
    $P526 = $P106."push_pirop"("nqp_get_sc_object", $P105, $P525, $S501)
    .return ($P106) 
.end
.HLL "nqp"
.namespace []
.sub "coerce" :subid("cuid_123_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2795
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P527 = 'cuid_302_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_303_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_304_1346233447.816' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_305_1346233447.816' 
    capture_lex $P527 
    .lex "$result", $P101 
    .lex "self", _lex_param_0 
    .lex "$post", _lex_param_1 
    .lex "$desired", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1625
    .lex "RETURN", $P102
.annotate 'line', 2796
    nqp_decontainerize $P502, _lex_param_0
    $P503 = _lex_param_1."result"()
    $P504 = $P502."infer_type"($P503)
    set $P101, $P504
    set $S501, $P101
    set $S502, _lex_param_2
    iseq $I501, $S501, $S502
    unless $I501 goto if411_else1627 
.annotate 'line', 2797
    find_lex $P505, "RETURN"
    $P506 = $P505(_lex_param_1)
    set $P526, $P506
    goto if411_end1628
  if411_else1627:
    set $S504, $P101
    downcase $S503, $S504
    set $S505, _lex_param_2
    iseq $I502, $S503, $S505
    unless $I502 goto if412_else1629 
.annotate 'line', 2801
    find_lex $P507, "RETURN"
    $P508 = $P507(_lex_param_1)
    set $P525, $P508
    goto if412_end1630
  if412_else1629:
    set $S506, $P101
    iseq $I503, $S506, "p"
    set $I505, $I503
    unless $I503 goto if414_end1634 
    set $S507, _lex_param_2
    iseq $I504, $S507, "P"
    set $I505, $I504
  if414_end1634:
    unless $I505 goto if413_else1631 
.annotate 'line', 2806
    find_lex $P509, "RETURN"
    $P510 = $P509(_lex_param_1)
    set $P524, $P510
    goto if413_end1632
  if413_else1631:
    set $S508, $P101
    set $S510, _lex_param_2
    downcase $S509, $S510
    iseq $I506, $S508, $S509
    unless $I506 goto if415_else1635 
    .const 'Sub' $P511 = 'cuid_302_1346233447.816' 
    capture_lex $P511
    $P512 = $P511()
    set $P523, $P512
    goto if415_end1636
  if415_else1635:
    set $S511, _lex_param_2
    iseq $I507, $S511, "P"
    set $I509, $I507
    if $I507 goto unless418_end1644 
    set $S512, _lex_param_2
    iseq $I508, $S512, "p"
    set $I509, $I508
  unless418_end1644:
    unless $I509 goto if417_else1641 
    .const 'Sub' $P513 = 'cuid_303_1346233447.816' 
    capture_lex $P513
    $P514 = $P513()
    set $P522, $P514
    goto if417_end1642
  if417_else1641:
    set $S513, $P101
    iseq $I510, $S513, "P"
    set $I512, $I510
    if $I510 goto unless423_end1654 
    set $S514, $P101
    iseq $I511, $S514, "p"
    set $I512, $I511
  unless423_end1654:
    unless $I512 goto if422_else1651 
    .const 'Sub' $P515 = 'cuid_304_1346233447.816' 
    capture_lex $P515
    $P516 = $P515()
    set $P521, $P516
    goto if422_end1652
  if422_else1651:
    set $S515, $P101
    index $I514, "IiNnSs", $S515, 0
    set $N501, $I514
    set $N502, 0
    isge $I513, $N501, $N502
    set $I517, $I513
    unless $I513 goto if428_end1664 
    set $S516, _lex_param_2
    index $I516, "IiNnSs", $S516, 0
    set $N503, $I516
    set $N504, 0
    isge $I515, $N503, $N504
    set $I517, $I515
  if428_end1664:
    unless $I517 goto if427_else1661 
    .const 'Sub' $P517 = 'cuid_305_1346233447.816' 
    capture_lex $P517
    $P518 = $P517()
    set $P520, $P518
    goto if427_end1662
  if427_else1661:
.annotate 'line', 2839
    set $S521, $P101
    concat $S520, "Coercion from '", $S521
    concat $S519, $S520, "' to '"
    set $S522, _lex_param_2
    concat $S518, $S519, $S522
    concat $S517, $S518, "' NYI"
    box $P519, $S517
    die $P519
    set $P520, $P519
  if427_end1662:
    set $P521, $P520
  if422_end1652:
    set $P522, $P521
  if417_end1642:
    set $P523, $P522
  if415_end1636:
    set $P524, $P523
  if413_end1632:
    set $P525, $P524
  if412_end1630:
    set $P526, $P525
  if411_end1628:
    goto lexotic_1626
  lexotic_1625:
    .get_results ($P526)
  lexotic_1626:
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_302_1346233447.816") :anon :lex :outer("cuid_123_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2810
    .lex "$ops", $P101 
    .lex "$reg", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 2812
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Ops"]
    unless_null $P503, fallback1637
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1637:
    $P508 = $P503."new"()
    set $P101, $P508
.annotate 'line', 2813
    find_dynamic_lex $P510, "$*REGALLOC"
    unless_null $P510, fallback1638
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["$REGALLOC"]
    unless_null $P511, fallback1639
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P514
  fallback1639:
    unless_null $P511, vivi_4161640
    die "Contextual $*REGALLOC not found"
    box $P515, "Contextual $*REGALLOC not found"
    set $P511, $P515
  vivi_4161640:
    set $P510, $P511
  fallback1638:
    find_lex $P509, "$result"
    set $S502, $P509
    concat $S501, "fresh_", $S502
    $P516 = $P510.$S501()
    set $P102, $P516
.annotate 'line', 2814
    find_lex $P517, "$post"
    $P518 = $P101."push"($P517)
.annotate 'line', 2815
    find_lex $P519, "$post"
    $P520 = $P101."push_pirop"("set", $P102, $P519)
.annotate 'line', 2816
    $P521 = $P101."result"($P102)
    find_lex $P522, "RETURN"
    $P523 = $P522($P101)
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_303_1346233447.816") :anon :lex :outer("cuid_123_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2819
    .lex "$hll", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
    new $P509, 'ExceptionHandler'
    set_label $P509, catch_handler_4211649
    $P509.'handle_types_except'(.CONTROL_ALL)
    push_eh $P509
    find_dynamic_lex $P503, "$*HLL"
    unless_null $P503, fallback1645
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$HLL"]
    unless_null $P504, fallback1646
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1646:
    unless_null $P504, vivi_4191647
    die "Contextual $*HLL not found"
    box $P508, "Contextual $*HLL not found"
    set $P504, $P508
  vivi_4191647:
    set $P503, $P504
  fallback1645:
    set $P101, $P503
    set $P510, $P101
    pop_eh 
    goto skip_handler_4201648
  catch_handler_4211649:
    .get_results ($P509) 
    set $I10001, 1
    set $P509["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P509
    pop_upto_eh $P509
    pop_eh 
    set $P510, $P10001
    goto skip_handler_4201648
  skip_handler_4201648:
.annotate 'line', 2822
    get_hll_global $P515, "GLOBAL"
    nqp_get_package_through_who $P514, $P515, "QAST"
    get_who $P513, $P514
    set $P512, $P513["Operations"]
    unless_null $P512, fallback1650
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P516
  fallback1650:
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    find_lex $P519, "$result"
    set $S502, $P519
    downcase $S501, $S502
    find_lex $P520, "$post"
    $P521 = $P512."box"($P517, $P101, $S501, $P520)
    find_lex $P511, "RETURN"
    $P522 = $P511($P521)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_304_1346233447.816") :anon :lex :outer("cuid_123_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2824
    .lex "$hll", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
    new $P509, 'ExceptionHandler'
    set_label $P509, catch_handler_4261659
    $P509.'handle_types_except'(.CONTROL_ALL)
    push_eh $P509
    find_dynamic_lex $P503, "$*HLL"
    unless_null $P503, fallback1655
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["$HLL"]
    unless_null $P504, fallback1656
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback1656:
    unless_null $P504, vivi_4241657
    die "Contextual $*HLL not found"
    box $P508, "Contextual $*HLL not found"
    set $P504, $P508
  vivi_4241657:
    set $P503, $P504
  fallback1655:
    set $P101, $P503
    set $P510, $P101
    pop_eh 
    goto skip_handler_4251658
  catch_handler_4261659:
    .get_results ($P509) 
    set $I10001, 1
    set $P509["handled"], $I10001
    nqp_get_sc_object $P10001, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    finalize $P509
    pop_upto_eh $P509
    pop_eh 
    set $P510, $P10001
    goto skip_handler_4251658
  skip_handler_4251658:
.annotate 'line', 2827
    get_hll_global $P515, "GLOBAL"
    nqp_get_package_through_who $P514, $P515, "QAST"
    get_who $P513, $P514
    set $P512, $P513["Operations"]
    unless_null $P512, fallback1660
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P516
  fallback1660:
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    find_lex $P519, "$desired"
    set $S502, $P519
    downcase $S501, $S502
    find_lex $P520, "$post"
    $P521 = $P512."unbox"($P517, $P101, $S501, $P520)
    find_lex $P511, "RETURN"
    $P522 = $P511($P521)
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_305_1346233447.816") :anon :lex :outer("cuid_123_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2829
    .lex "$ops", $P101 
    .lex "$rtype", $P102 
    .lex "$reg", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 2831
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "PIRT"
    get_who $P505, $P506
    set $P504, $P505["Ops"]
    unless_null $P504, fallback1665
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1665:
    $P509 = $P504."new"()
    set $P101, $P509
    find_lex $P510, "$desired"
    set $S502, $P510
    downcase $S501, $S502
    box $P511, $S501
    set $P102, $P511
.annotate 'line', 2833
    find_dynamic_lex $P512, "$*REGALLOC"
    unless_null $P512, fallback1666
    get_hll_global $P515, "GLOBAL"
    get_who $P514, $P515
    set $P513, $P514["$REGALLOC"]
    unless_null $P513, fallback1667
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P516
  fallback1667:
    unless_null $P513, vivi_4291668
    die "Contextual $*REGALLOC not found"
    box $P517, "Contextual $*REGALLOC not found"
    set $P513, $P517
  vivi_4291668:
    set $P512, $P513
  fallback1666:
    set $S504, $P102
    concat $S503, "fresh_", $S504
    $P518 = $P512.$S503()
    set $P103, $P518
.annotate 'line', 2834
    find_lex $P519, "$post"
    $P520 = $P101."push"($P519)
.annotate 'line', 2835
    find_lex $P521, "$post"
    $P522 = $P101."push_pirop"("set", $P103, $P521)
.annotate 'line', 2836
    $P523 = $P101."result"($P103)
    find_lex $P524, "RETURN"
    $P525 = $P524($P101)
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "infer_type" :subid("cuid_124_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2844
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P524 = 'cuid_306_1346233447.816' 
    capture_lex $P524 
    .lex "self", _lex_param_0 
    .lex "$inferee", _lex_param_1 
    set $S502, _lex_param_1
    substr $S501, $S502, 0, 1
    iseq $I501, $S501, "$"
    unless $I501 goto if430_else1669 
.annotate 'line', 2845
    set $S504, _lex_param_1
    substr $S503, $S504, 1, 1
    box $P523, $S503
    set $P522, $P523
    goto if430_end1670
  if430_else1669:
.annotate 'line', 2848
    find_dynamic_lex $P501, "$*BLOCK"
    unless_null $P501, fallback1673
    get_hll_global $P504, "GLOBAL"
    get_who $P503, $P504
    set $P502, $P503["$BLOCK"]
    unless_null $P502, fallback1674
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback1674:
    unless_null $P502, vivi_4321675
    die "Contextual $*BLOCK not found"
    box $P506, "Contextual $*BLOCK not found"
    set $P502, $P506
  vivi_4321675:
    set $P501, $P502
  fallback1673:
    $P507 = $P501."reg_type"(_lex_param_1)
    unless $P507 goto if431_else1671 
    .const 'Sub' $P508 = 'cuid_306_1346233447.816' 
    capture_lex $P508
    $P509 = $P508($P507)
    set $P521, $P509
    goto if431_end1672
  if431_else1671:
    set $S506, _lex_param_1
    substr $S505, $S506, 0, 1
    iseq $I502, $S505, "\""
    set $I504, $I502
    if $I502 goto unless436_end1683 
    set $S508, _lex_param_1
    substr $S507, $S508, 0, 6
    iseq $I503, $S507, "utf8:\""
    set $I504, $I503
  unless436_end1683:
    set $I506, $I504
    if $I504 goto unless435_end1681 
    set $S510, _lex_param_1
    substr $S509, $S510, 0, 6
    iseq $I505, $S509, "ucs4:\""
    set $I506, $I505
  unless435_end1681:
    set $I508, $I506
    if $I506 goto unless434_end1679 
    set $S512, _lex_param_1
    substr $S511, $S512, 0, 9
    iseq $I507, $S511, "unicode:\""
    set $I508, $I507
  unless434_end1679:
    unless $I508 goto if433_else1676 
.annotate 'line', 2854

    box $P520, "s"
    set $P519, $P520
    goto if433_end1677
  if433_else1676:
    set $S514, _lex_param_1
    substr $S513, $S514, 0, 6
    iseq $I509, $S513, ".const"
    unless $I509 goto if437_else1684 
.annotate 'line', 2857

    box $P518, "P"
    set $P517, $P518
    goto if437_end1685
  if437_else1684:
    set $S516, _lex_param_1
    substr $S515, $S516, 0, 1
    iseq $I510, $S515, "."
    unless $I510 goto if438_else1686 
.annotate 'line', 2860

    box $P516, "i"
    set $P515, $P516
    goto if438_end1687
  if438_else1686:
    set $S517, _lex_param_1
    index $I512, $S517, ".", 0
    set $N501, $I512
    set $N502, 0
    isgt $I511, $N501, $N502
    unless $I511 goto if439_else1688 
.annotate 'line', 2863

    box $P514, "n"
    set $P513, $P514
    goto if439_end1689
  if439_else1688:
    set $N503, _lex_param_1
    set $S518, $N503
    set $S519, _lex_param_1
    iseq $I513, $S518, $S519
    unless $I513 goto if440_else1690 
.annotate 'line', 2866

    box $P512, "i"
    set $P511, $P512
    goto if440_end1691
  if440_else1690:
.annotate 'line', 2869
    set $S522, _lex_param_1
    concat $S521, "Cannot infer type from '", $S522
    concat $S520, $S521, "'"
    box $P510, $S520
    die $P510
    set $P511, $P510
  if440_end1691:
    set $P513, $P511
  if439_end1689:
    set $P515, $P513
  if438_end1687:
    set $P517, $P515
  if437_end1685:
    set $P519, $P517
  if433_end1677:
    set $P521, $P519
  if431_end1672:
    set $P522, $P521
  if430_end1670:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1346233447.816") :anon :lex :outer("cuid_124_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2848
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    set $S502, _lex_param_0
    downcase $S501, $S502
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_125_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2874
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P883 = 'cuid_307_1346233447.816' 
    capture_lex $P883 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "%*REG", $P103 
    .lex "$reglist", $P104 
    .lex "$startlabel", $P105 
    .lex "$donelabel", $P106 
    .lex "$restartlabel", $P107 
    .lex "$faillabel", $P108 
    .lex "$jumplabel", $P109 
    .lex "$cutlabel", $P110 
    .lex "$cstacklabel", $P111 
    .lex "$startreg", $P112 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
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
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P111, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P112, $P512
.annotate 'line', 2875
    nqp_decontainerize $P513, _lex_param_0
    $P514 = $P513."post_new"("Ops")
    set $P101, $P514
.annotate 'line', 2876
    $P515 = _lex_param_1."node"()
    set $P518, $P515
    unless $P515 goto if441_end1693 
    $P516 = _lex_param_1."node"()
    $P517 = $P101."node"($P516)
    set $P518, $P517
  if441_end1693:
.annotate 'line', 2877
    nqp_decontainerize $P519, _lex_param_0
    $P520 = $P519."unique"("rx")
    set $S502, $P520
    concat $S501, $S502, "_"
    box $P521, $S501
    set $P102, $P521
    unless_null $P103, fallback1694
    get_hll_global $P524, "GLOBAL"
    get_who $P523, $P524
    set $P522, $P523["%REG"]
    unless_null $P522, fallback1695
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    new $P527, 'Hash'
    set $P525["%REG"], $P527
    set $P522, $P527
  fallback1695:
    unless_null $P522, vivi_4421696
    die "Contextual %*REG not found"
    box $P528, "Contextual %*REG not found"
    set $P522, $P528
  vivi_4421696:
    set $P103, $P522
  fallback1694:
    split $P529, " ", "tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc"
    set $P104, $P529
    new $P533, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P533, while443_handlers1700
    push_eh $P533
  while443_test1697:
    set $P532, $P104
    unless $P104 goto while443_done1701 
  while443_redo1699:
    .const 'Sub' $P530 = 'cuid_307_1346233447.816' 
    capture_lex $P530
    $P531 = $P530()
    set $P532, $P531
    goto while443_test1697 
  while443_handlers1700:
    .get_results ($P533)
    pop_upto_eh $P533
    getattribute $P533, $P533, 'type'
    eq $P533, .CONTROL_LOOP_NEXT, while443_test1697
    eq $P533, .CONTROL_LOOP_REDO, while443_redo1699
  while443_done1701:
    pop_eh 
.annotate 'line', 2889
    nqp_decontainerize $P534, _lex_param_0
    set $S504, $P102
    concat $S503, $S504, "start"
    $P535 = $P534."post_new"("Label", $S503 :named("name"))
    set $P105, $P535
.annotate 'line', 2890
    nqp_decontainerize $P536, _lex_param_0
    set $S506, $P102
    concat $S505, $S506, "done"
    $P537 = $P536."post_new"("Label", $S505 :named("name"))
    set $P106, $P537
.annotate 'line', 2891
    nqp_decontainerize $P538, _lex_param_0
    set $S508, $P102
    concat $S507, $S508, "restart"
    $P539 = $P538."post_new"("Label", $S507 :named("name"))
    set $P107, $P539
.annotate 'line', 2892
    nqp_decontainerize $P540, _lex_param_0
    set $S510, $P102
    concat $S509, $S510, "fail"
    $P541 = $P540."post_new"("Label", $S509 :named("name"))
    set $P108, $P541
.annotate 'line', 2893
    nqp_decontainerize $P542, _lex_param_0
    set $S512, $P102
    concat $S511, $S512, "jump"
    $P543 = $P542."post_new"("Label", $S511 :named("name"))
    set $P109, $P543
.annotate 'line', 2894
    nqp_decontainerize $P544, _lex_param_0
    set $S514, $P102
    concat $S513, $S514, "cut"
    $P545 = $P544."post_new"("Label", $S513 :named("name"))
    set $P110, $P545
.annotate 'line', 2895
    nqp_decontainerize $P546, _lex_param_0
    set $S516, $P102
    concat $S515, $S516, "cstack_done"
    $P547 = $P546."post_new"("Label", $S515 :named("name"))
    set $P111, $P547
    unless_null $P103, fallback1705
    get_hll_global $P550, "GLOBAL"
    get_who $P549, $P550
    set $P548, $P549["%REG"]
    unless_null $P548, fallback1706
    get_hll_global $P552, "GLOBAL"
    get_who $P551, $P552
    new $P553, 'Hash'
    set $P551["%REG"], $P553
    set $P548, $P553
  fallback1706:
    unless_null $P548, vivi_4451707
    die "Contextual %*REG not found"
    box $P554, "Contextual %*REG not found"
    set $P548, $P554
  vivi_4451707:
    set $P103, $P548
  fallback1705:
    set $P103["fail"], $P108
    new $P555, 'ResizablePMCArray'
    unless_null $P103, fallback1708
    get_hll_global $P559, "GLOBAL"
    get_who $P558, $P559
    set $P557, $P558["%REG"]
    unless_null $P557, fallback1709
    get_hll_global $P561, "GLOBAL"
    get_who $P560, $P561
    new $P562, 'Hash'
    set $P560["%REG"], $P562
    set $P557, $P562
  fallback1709:
    unless_null $P557, vivi_4461710
    die "Contextual %*REG not found"
    box $P563, "Contextual %*REG not found"
    set $P557, $P563
  vivi_4461710:
    set $P103, $P557
  fallback1708:
    set $P556, $P103["cur"]
    unless_null $P556, fallback1711
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P556, $P564
  fallback1711:
    push $P555, $P556
    unless_null $P103, fallback1712
    get_hll_global $P568, "GLOBAL"
    get_who $P567, $P568
    set $P566, $P567["%REG"]
    unless_null $P566, fallback1713
    get_hll_global $P570, "GLOBAL"
    get_who $P569, $P570
    new $P571, 'Hash'
    set $P569["%REG"], $P571
    set $P566, $P571
  fallback1713:
    unless_null $P566, vivi_4471714
    die "Contextual %*REG not found"
    box $P572, "Contextual %*REG not found"
    set $P566, $P572
  vivi_4471714:
    set $P103, $P566
  fallback1712:
    set $P565, $P103["tgt"]
    unless_null $P565, fallback1715
    nqp_get_sc_object $P573, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P565, $P573
  fallback1715:
    push $P555, $P565
    unless_null $P103, fallback1716
    get_hll_global $P577, "GLOBAL"
    get_who $P576, $P577
    set $P575, $P576["%REG"]
    unless_null $P575, fallback1717
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    new $P580, 'Hash'
    set $P578["%REG"], $P580
    set $P575, $P580
  fallback1717:
    unless_null $P575, vivi_4481718
    die "Contextual %*REG not found"
    box $P581, "Contextual %*REG not found"
    set $P575, $P581
  vivi_4481718:
    set $P103, $P575
  fallback1716:
    set $P574, $P103["pos"]
    unless_null $P574, fallback1719
    nqp_get_sc_object $P582, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P574, $P582
  fallback1719:
    push $P555, $P574
    unless_null $P103, fallback1720
    get_hll_global $P586, "GLOBAL"
    get_who $P585, $P586
    set $P584, $P585["%REG"]
    unless_null $P584, fallback1721
    get_hll_global $P588, "GLOBAL"
    get_who $P587, $P588
    new $P589, 'Hash'
    set $P587["%REG"], $P589
    set $P584, $P589
  fallback1721:
    unless_null $P584, vivi_4491722
    die "Contextual %*REG not found"
    box $P590, "Contextual %*REG not found"
    set $P584, $P590
  vivi_4491722:
    set $P103, $P584
  fallback1720:
    set $P583, $P103["curclass"]
    unless_null $P583, fallback1723
    nqp_get_sc_object $P591, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P583, $P591
  fallback1723:
    push $P555, $P583
    unless_null $P103, fallback1724
    get_hll_global $P595, "GLOBAL"
    get_who $P594, $P595
    set $P593, $P594["%REG"]
    unless_null $P593, fallback1725
    get_hll_global $P597, "GLOBAL"
    get_who $P596, $P597
    new $P598, 'Hash'
    set $P596["%REG"], $P598
    set $P593, $P598
  fallback1725:
    unless_null $P593, vivi_4501726
    die "Contextual %*REG not found"
    box $P599, "Contextual %*REG not found"
    set $P593, $P599
  vivi_4501726:
    set $P103, $P593
  fallback1724:
    set $P592, $P103["bstack"]
    unless_null $P592, fallback1727
    nqp_get_sc_object $P600, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P592, $P600
  fallback1727:
    push $P555, $P592
    box $P601, "$I19"
    push $P555, $P601
    join $S519, ", ", $P555
    concat $S518, "(", $S519
    concat $S517, $S518, ")"
    box $P602, $S517
    set $P112, $P602
.annotate 'line', 2900
    $P603 = $P101."push_pirop"("callmethod", "\"!cursor_start\"", "self", $P112 :named("result"))
.annotate 'line', 2901
    unless_null $P103, fallback1728
    get_hll_global $P607, "GLOBAL"
    get_who $P606, $P607
    set $P605, $P606["%REG"]
    unless_null $P605, fallback1729
    get_hll_global $P609, "GLOBAL"
    get_who $P608, $P609
    new $P610, 'Hash'
    set $P608["%REG"], $P610
    set $P605, $P610
  fallback1729:
    unless_null $P605, vivi_4511730
    die "Contextual %*REG not found"
    box $P611, "Contextual %*REG not found"
    set $P605, $P611
  vivi_4511730:
    set $P103, $P605
  fallback1728:
    set $P604, $P103["cur"]
    unless_null $P604, fallback1731
    nqp_get_sc_object $P612, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P604, $P612
  fallback1731:
    $P613 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P604)
.annotate 'line', 2902
    unless_null $P103, fallback1732
    get_hll_global $P617, "GLOBAL"
    get_who $P616, $P617
    set $P615, $P616["%REG"]
    unless_null $P615, fallback1733
    get_hll_global $P619, "GLOBAL"
    get_who $P618, $P619
    new $P620, 'Hash'
    set $P618["%REG"], $P620
    set $P615, $P620
  fallback1733:
    unless_null $P615, vivi_4521734
    die "Contextual %*REG not found"
    box $P621, "Contextual %*REG not found"
    set $P615, $P621
  vivi_4521734:
    set $P103, $P615
  fallback1732:
    set $P614, $P103["eos"]
    unless_null $P614, fallback1735
    nqp_get_sc_object $P622, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P614, $P622
  fallback1735:
    unless_null $P103, fallback1736
    get_hll_global $P626, "GLOBAL"
    get_who $P625, $P626
    set $P624, $P625["%REG"]
    unless_null $P624, fallback1737
    get_hll_global $P628, "GLOBAL"
    get_who $P627, $P628
    new $P629, 'Hash'
    set $P627["%REG"], $P629
    set $P624, $P629
  fallback1737:
    unless_null $P624, vivi_4531738
    die "Contextual %*REG not found"
    box $P630, "Contextual %*REG not found"
    set $P624, $P630
  vivi_4531738:
    set $P103, $P624
  fallback1736:
    set $P623, $P103["tgt"]
    unless_null $P623, fallback1739
    nqp_get_sc_object $P631, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P623, $P631
  fallback1739:
    $P632 = $P101."push_pirop"("length", $P614, $P623)
.annotate 'line', 2903
    $P633 = $P101."push_pirop"("eq", "$I19", 1, $P107)
.annotate 'line', 2904
    unless_null $P103, fallback1740
    get_hll_global $P637, "GLOBAL"
    get_who $P636, $P637
    set $P635, $P636["%REG"]
    unless_null $P635, fallback1741
    get_hll_global $P639, "GLOBAL"
    get_who $P638, $P639
    new $P640, 'Hash'
    set $P638["%REG"], $P640
    set $P635, $P640
  fallback1741:
    unless_null $P635, vivi_4541742
    die "Contextual %*REG not found"
    box $P641, "Contextual %*REG not found"
    set $P635, $P641
  vivi_4541742:
    set $P103, $P635
  fallback1740:
    set $P634, $P103["pos"]
    unless_null $P634, fallback1743
    nqp_get_sc_object $P642, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P634, $P642
  fallback1743:
    unless_null $P103, fallback1744
    get_hll_global $P646, "GLOBAL"
    get_who $P645, $P646
    set $P644, $P645["%REG"]
    unless_null $P644, fallback1745
    get_hll_global $P648, "GLOBAL"
    get_who $P647, $P648
    new $P649, 'Hash'
    set $P647["%REG"], $P649
    set $P644, $P649
  fallback1745:
    unless_null $P644, vivi_4551746
    die "Contextual %*REG not found"
    box $P650, "Contextual %*REG not found"
    set $P644, $P650
  vivi_4551746:
    set $P103, $P644
  fallback1744:
    set $P643, $P103["eos"]
    unless_null $P643, fallback1747
    nqp_get_sc_object $P651, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P643, $P651
  fallback1747:
    unless_null $P103, fallback1748
    get_hll_global $P655, "GLOBAL"
    get_who $P654, $P655
    set $P653, $P654["%REG"]
    unless_null $P653, fallback1749
    get_hll_global $P657, "GLOBAL"
    get_who $P656, $P657
    new $P658, 'Hash'
    set $P656["%REG"], $P658
    set $P653, $P658
  fallback1749:
    unless_null $P653, vivi_4561750
    die "Contextual %*REG not found"
    box $P659, "Contextual %*REG not found"
    set $P653, $P659
  vivi_4561750:
    set $P103, $P653
  fallback1748:
    set $P652, $P103["fail"]
    unless_null $P652, fallback1751
    nqp_get_sc_object $P660, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P652, $P660
  fallback1751:
    $P661 = $P101."push_pirop"("gt", $P634, $P643, $P652)
.annotate 'line', 2905
    nqp_decontainerize $P662, _lex_param_0
    $P663 = $P662."regex_post"(_lex_param_1)
    $P664 = $P101."push"($P663)
.annotate 'line', 2906
    $P665 = $P101."push"($P107)
.annotate 'line', 2907
    unless_null $P103, fallback1752
    get_hll_global $P669, "GLOBAL"
    get_who $P668, $P669
    set $P667, $P668["%REG"]
    unless_null $P667, fallback1753
    get_hll_global $P671, "GLOBAL"
    get_who $P670, $P671
    new $P672, 'Hash'
    set $P670["%REG"], $P672
    set $P667, $P672
  fallback1753:
    unless_null $P667, vivi_4571754
    die "Contextual %*REG not found"
    box $P673, "Contextual %*REG not found"
    set $P667, $P673
  vivi_4571754:
    set $P103, $P667
  fallback1752:
    set $P666, $P103["cstack"]
    unless_null $P666, fallback1755
    nqp_get_sc_object $P674, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P666, $P674
  fallback1755:
    unless_null $P103, fallback1756
    get_hll_global $P678, "GLOBAL"
    get_who $P677, $P678
    set $P676, $P677["%REG"]
    unless_null $P676, fallback1757
    get_hll_global $P680, "GLOBAL"
    get_who $P679, $P680
    new $P681, 'Hash'
    set $P679["%REG"], $P681
    set $P676, $P681
  fallback1757:
    unless_null $P676, vivi_4581758
    die "Contextual %*REG not found"
    box $P682, "Contextual %*REG not found"
    set $P676, $P682
  vivi_4581758:
    set $P103, $P676
  fallback1756:
    set $P675, $P103["cur"]
    unless_null $P675, fallback1759
    nqp_get_sc_object $P683, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P675, $P683
  fallback1759:
    unless_null $P103, fallback1760
    get_hll_global $P687, "GLOBAL"
    get_who $P686, $P687
    set $P685, $P686["%REG"]
    unless_null $P685, fallback1761
    get_hll_global $P689, "GLOBAL"
    get_who $P688, $P689
    new $P690, 'Hash'
    set $P688["%REG"], $P690
    set $P685, $P690
  fallback1761:
    unless_null $P685, vivi_4591762
    die "Contextual %*REG not found"
    box $P691, "Contextual %*REG not found"
    set $P685, $P691
  vivi_4591762:
    set $P103, $P685
  fallback1760:
    set $P684, $P103["curclass"]
    unless_null $P684, fallback1763
    nqp_get_sc_object $P692, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P684, $P692
  fallback1763:
    $P693 = $P101."push_pirop"("repr_get_attr_obj", $P666, $P675, $P684, "\"$!cstack\"")
.annotate 'line', 2908
    $P694 = $P101."push"($P108)
.annotate 'line', 2909
    unless_null $P103, fallback1764
    get_hll_global $P698, "GLOBAL"
    get_who $P697, $P698
    set $P696, $P697["%REG"]
    unless_null $P696, fallback1765
    get_hll_global $P700, "GLOBAL"
    get_who $P699, $P700
    new $P701, 'Hash'
    set $P699["%REG"], $P701
    set $P696, $P701
  fallback1765:
    unless_null $P696, vivi_4601766
    die "Contextual %*REG not found"
    box $P702, "Contextual %*REG not found"
    set $P696, $P702
  vivi_4601766:
    set $P103, $P696
  fallback1764:
    set $P695, $P103["bstack"]
    unless_null $P695, fallback1767
    nqp_get_sc_object $P703, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P695, $P703
  fallback1767:
    $P704 = $P101."push_pirop"("unless", $P695, $P106)
.annotate 'line', 2910
    unless_null $P103, fallback1768
    get_hll_global $P708, "GLOBAL"
    get_who $P707, $P708
    set $P706, $P707["%REG"]
    unless_null $P706, fallback1769
    get_hll_global $P710, "GLOBAL"
    get_who $P709, $P710
    new $P711, 'Hash'
    set $P709["%REG"], $P711
    set $P706, $P711
  fallback1769:
    unless_null $P706, vivi_4611770
    die "Contextual %*REG not found"
    box $P712, "Contextual %*REG not found"
    set $P706, $P712
  vivi_4611770:
    set $P103, $P706
  fallback1768:
    set $P705, $P103["bstack"]
    unless_null $P705, fallback1771
    nqp_get_sc_object $P713, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P705, $P713
  fallback1771:
    $P714 = $P101."push_pirop"("pop", "$I19", $P705)
.annotate 'line', 2911
    unless_null $P103, fallback1772
    get_hll_global $P718, "GLOBAL"
    get_who $P717, $P718
    set $P716, $P717["%REG"]
    unless_null $P716, fallback1773
    get_hll_global $P720, "GLOBAL"
    get_who $P719, $P720
    new $P721, 'Hash'
    set $P719["%REG"], $P721
    set $P716, $P721
  fallback1773:
    unless_null $P716, vivi_4621774
    die "Contextual %*REG not found"
    box $P722, "Contextual %*REG not found"
    set $P716, $P722
  vivi_4621774:
    set $P103, $P716
  fallback1772:
    set $P715, $P103["cstack"]
    unless_null $P715, fallback1775
    nqp_get_sc_object $P723, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P715, $P723
  fallback1775:
    $P724 = $P101."push_pirop"("if_null", $P715, $P111)
.annotate 'line', 2912
    unless_null $P103, fallback1776
    get_hll_global $P728, "GLOBAL"
    get_who $P727, $P728
    set $P726, $P727["%REG"]
    unless_null $P726, fallback1777
    get_hll_global $P730, "GLOBAL"
    get_who $P729, $P730
    new $P731, 'Hash'
    set $P729["%REG"], $P731
    set $P726, $P731
  fallback1777:
    unless_null $P726, vivi_4631778
    die "Contextual %*REG not found"
    box $P732, "Contextual %*REG not found"
    set $P726, $P732
  vivi_4631778:
    set $P103, $P726
  fallback1776:
    set $P725, $P103["cstack"]
    unless_null $P725, fallback1779
    nqp_get_sc_object $P733, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P725, $P733
  fallback1779:
    $P734 = $P101."push_pirop"("unless", $P725, $P111)
.annotate 'line', 2913
    $P735 = $P101."push_pirop"("dec", "$I19")
.annotate 'line', 2914
    unless_null $P103, fallback1780
    get_hll_global $P739, "GLOBAL"
    get_who $P738, $P739
    set $P737, $P738["%REG"]
    unless_null $P737, fallback1781
    get_hll_global $P741, "GLOBAL"
    get_who $P740, $P741
    new $P742, 'Hash'
    set $P740["%REG"], $P742
    set $P737, $P742
  fallback1781:
    unless_null $P737, vivi_4641782
    die "Contextual %*REG not found"
    box $P743, "Contextual %*REG not found"
    set $P737, $P743
  vivi_4641782:
    set $P103, $P737
  fallback1780:
    set $P736, $P103["cstack"]
    unless_null $P736, fallback1783
    nqp_get_sc_object $P744, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P736, $P744
  fallback1783:
    set $S521, $P736
    concat $S520, $S521, "[$I19]"
    $P745 = $P101."push_pirop"("set", "$P11", $S520)
.annotate 'line', 2915
    $P746 = $P101."push"($P111)
.annotate 'line', 2916
    unless_null $P103, fallback1784
    get_hll_global $P750, "GLOBAL"
    get_who $P749, $P750
    set $P748, $P749["%REG"]
    unless_null $P748, fallback1785
    get_hll_global $P752, "GLOBAL"
    get_who $P751, $P752
    new $P753, 'Hash'
    set $P751["%REG"], $P753
    set $P748, $P753
  fallback1785:
    unless_null $P748, vivi_4651786
    die "Contextual %*REG not found"
    box $P754, "Contextual %*REG not found"
    set $P748, $P754
  vivi_4651786:
    set $P103, $P748
  fallback1784:
    set $P747, $P103["rep"]
    unless_null $P747, fallback1787
    nqp_get_sc_object $P755, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P747, $P755
  fallback1787:
    unless_null $P103, fallback1788
    get_hll_global $P759, "GLOBAL"
    get_who $P758, $P759
    set $P757, $P758["%REG"]
    unless_null $P757, fallback1789
    get_hll_global $P761, "GLOBAL"
    get_who $P760, $P761
    new $P762, 'Hash'
    set $P760["%REG"], $P762
    set $P757, $P762
  fallback1789:
    unless_null $P757, vivi_4661790
    die "Contextual %*REG not found"
    box $P763, "Contextual %*REG not found"
    set $P757, $P763
  vivi_4661790:
    set $P103, $P757
  fallback1788:
    set $P756, $P103["bstack"]
    unless_null $P756, fallback1791
    nqp_get_sc_object $P764, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P756, $P764
  fallback1791:
    $P765 = $P101."push_pirop"("pop", $P747, $P756)
.annotate 'line', 2917
    unless_null $P103, fallback1792
    get_hll_global $P769, "GLOBAL"
    get_who $P768, $P769
    set $P767, $P768["%REG"]
    unless_null $P767, fallback1793
    get_hll_global $P771, "GLOBAL"
    get_who $P770, $P771
    new $P772, 'Hash'
    set $P770["%REG"], $P772
    set $P767, $P772
  fallback1793:
    unless_null $P767, vivi_4671794
    die "Contextual %*REG not found"
    box $P773, "Contextual %*REG not found"
    set $P767, $P773
  vivi_4671794:
    set $P103, $P767
  fallback1792:
    set $P766, $P103["pos"]
    unless_null $P766, fallback1795
    nqp_get_sc_object $P774, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P766, $P774
  fallback1795:
    unless_null $P103, fallback1796
    get_hll_global $P778, "GLOBAL"
    get_who $P777, $P778
    set $P776, $P777["%REG"]
    unless_null $P776, fallback1797
    get_hll_global $P780, "GLOBAL"
    get_who $P779, $P780
    new $P781, 'Hash'
    set $P779["%REG"], $P781
    set $P776, $P781
  fallback1797:
    unless_null $P776, vivi_4681798
    die "Contextual %*REG not found"
    box $P782, "Contextual %*REG not found"
    set $P776, $P782
  vivi_4681798:
    set $P103, $P776
  fallback1796:
    set $P775, $P103["bstack"]
    unless_null $P775, fallback1799
    nqp_get_sc_object $P783, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P775, $P783
  fallback1799:
    $P784 = $P101."push_pirop"("pop", $P766, $P775)
.annotate 'line', 2918
    unless_null $P103, fallback1800
    get_hll_global $P788, "GLOBAL"
    get_who $P787, $P788
    set $P786, $P787["%REG"]
    unless_null $P786, fallback1801
    get_hll_global $P790, "GLOBAL"
    get_who $P789, $P790
    new $P791, 'Hash'
    set $P789["%REG"], $P791
    set $P786, $P791
  fallback1801:
    unless_null $P786, vivi_4691802
    die "Contextual %*REG not found"
    box $P792, "Contextual %*REG not found"
    set $P786, $P792
  vivi_4691802:
    set $P103, $P786
  fallback1800:
    set $P785, $P103["bstack"]
    unless_null $P785, fallback1803
    nqp_get_sc_object $P793, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P785, $P793
  fallback1803:
    $P794 = $P101."push_pirop"("pop", "$I19", $P785)
.annotate 'line', 2919
    unless_null $P103, fallback1804
    get_hll_global $P798, "GLOBAL"
    get_who $P797, $P798
    set $P796, $P797["%REG"]
    unless_null $P796, fallback1805
    get_hll_global $P800, "GLOBAL"
    get_who $P799, $P800
    new $P801, 'Hash'
    set $P799["%REG"], $P801
    set $P796, $P801
  fallback1805:
    unless_null $P796, vivi_4701806
    die "Contextual %*REG not found"
    box $P802, "Contextual %*REG not found"
    set $P796, $P802
  vivi_4701806:
    set $P103, $P796
  fallback1804:
    set $P795, $P103["pos"]
    unless_null $P795, fallback1807
    nqp_get_sc_object $P803, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P795, $P803
  fallback1807:
    $P804 = $P101."push_pirop"("lt", $P795, -1, $P106)
.annotate 'line', 2920
    unless_null $P103, fallback1808
    get_hll_global $P808, "GLOBAL"
    get_who $P807, $P808
    set $P806, $P807["%REG"]
    unless_null $P806, fallback1809
    get_hll_global $P810, "GLOBAL"
    get_who $P809, $P810
    new $P811, 'Hash'
    set $P809["%REG"], $P811
    set $P806, $P811
  fallback1809:
    unless_null $P806, vivi_4711810
    die "Contextual %*REG not found"
    box $P812, "Contextual %*REG not found"
    set $P806, $P812
  vivi_4711810:
    set $P103, $P806
  fallback1808:
    set $P805, $P103["pos"]
    unless_null $P805, fallback1811
    nqp_get_sc_object $P813, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P805, $P813
  fallback1811:
    $P814 = $P101."push_pirop"("lt", $P805, 0, $P108)
.annotate 'line', 2921
    $P815 = $P101."push_pirop"("eq", "$I19", 0, $P108)
.annotate 'line', 2923
    unless_null $P103, fallback1812
    get_hll_global $P819, "GLOBAL"
    get_who $P818, $P819
    set $P817, $P818["%REG"]
    unless_null $P817, fallback1813
    get_hll_global $P821, "GLOBAL"
    get_who $P820, $P821
    new $P822, 'Hash'
    set $P820["%REG"], $P822
    set $P817, $P822
  fallback1813:
    unless_null $P817, vivi_4721814
    die "Contextual %*REG not found"
    box $P823, "Contextual %*REG not found"
    set $P817, $P823
  vivi_4721814:
    set $P103, $P817
  fallback1812:
    set $P816, $P103["cstack"]
    unless_null $P816, fallback1815
    nqp_get_sc_object $P824, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P816, $P824
  fallback1815:
    $P825 = $P101."push_pirop"("nqp_islist", "$I20", $P816)
.annotate 'line', 2924
    $P826 = $P101."push_pirop"("unless", "$I20", $P109)
.annotate 'line', 2925
    unless_null $P103, fallback1816
    get_hll_global $P830, "GLOBAL"
    get_who $P829, $P830
    set $P828, $P829["%REG"]
    unless_null $P828, fallback1817
    get_hll_global $P832, "GLOBAL"
    get_who $P831, $P832
    new $P833, 'Hash'
    set $P831["%REG"], $P833
    set $P828, $P833
  fallback1817:
    unless_null $P828, vivi_4731818
    die "Contextual %*REG not found"
    box $P834, "Contextual %*REG not found"
    set $P828, $P834
  vivi_4731818:
    set $P103, $P828
  fallback1816:
    set $P827, $P103["bstack"]
    unless_null $P827, fallback1819
    nqp_get_sc_object $P835, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P827, $P835
  fallback1819:
    $P836 = $P101."push_pirop"("elements", "$I18", $P827)
.annotate 'line', 2926
    $P837 = $P101."push_pirop"("le", "$I18", 0, $P110)
.annotate 'line', 2927
    $P838 = $P101."push_pirop"("dec", "$I18")
.annotate 'line', 2928
    unless_null $P103, fallback1820
    get_hll_global $P842, "GLOBAL"
    get_who $P841, $P842
    set $P840, $P841["%REG"]
    unless_null $P840, fallback1821
    get_hll_global $P844, "GLOBAL"
    get_who $P843, $P844
    new $P845, 'Hash'
    set $P843["%REG"], $P845
    set $P840, $P845
  fallback1821:
    unless_null $P840, vivi_4741822
    die "Contextual %*REG not found"
    box $P846, "Contextual %*REG not found"
    set $P840, $P846
  vivi_4741822:
    set $P103, $P840
  fallback1820:
    set $P839, $P103["bstack"]
    unless_null $P839, fallback1823
    nqp_get_sc_object $P847, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P839, $P847
  fallback1823:
    set $S523, $P839
    concat $S522, $S523, "[$I18]"
    $P848 = $P101."push_pirop"("set", "$I18", $S522)
.annotate 'line', 2929
    $P849 = $P101."push"($P110)
.annotate 'line', 2930
    unless_null $P103, fallback1824
    get_hll_global $P853, "GLOBAL"
    get_who $P852, $P853
    set $P851, $P852["%REG"]
    unless_null $P851, fallback1825
    get_hll_global $P855, "GLOBAL"
    get_who $P854, $P855
    new $P856, 'Hash'
    set $P854["%REG"], $P856
    set $P851, $P856
  fallback1825:
    unless_null $P851, vivi_4751826
    die "Contextual %*REG not found"
    box $P857, "Contextual %*REG not found"
    set $P851, $P857
  vivi_4751826:
    set $P103, $P851
  fallback1824:
    set $P850, $P103["cstack"]
    unless_null $P850, fallback1827
    nqp_get_sc_object $P858, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P850, $P858
  fallback1827:
    $P859 = $P101."push_pirop"("assign", $P850, "$I18")
.annotate 'line', 2931
    $P860 = $P101."push"($P109)
.annotate 'line', 2932
    $P861 = $P101."push_pirop"("jump", "$I19")
.annotate 'line', 2933
    $P862 = $P101."push"($P106)
.annotate 'line', 2934
    unless_null $P103, fallback1828
    get_hll_global $P866, "GLOBAL"
    get_who $P865, $P866
    set $P864, $P865["%REG"]
    unless_null $P864, fallback1829
    get_hll_global $P868, "GLOBAL"
    get_who $P867, $P868
    new $P869, 'Hash'
    set $P867["%REG"], $P869
    set $P864, $P869
  fallback1829:
    unless_null $P864, vivi_4761830
    die "Contextual %*REG not found"
    box $P870, "Contextual %*REG not found"
    set $P864, $P870
  vivi_4761830:
    set $P103, $P864
  fallback1828:
    set $P863, $P103["cur"]
    unless_null $P863, fallback1831
    nqp_get_sc_object $P871, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P863, $P871
  fallback1831:
    $P872 = $P101."push_pirop"("callmethod", "\"!cursor_fail\"", $P863)
.annotate 'line', 2936
    unless_null $P103, fallback1832
    get_hll_global $P876, "GLOBAL"
    get_who $P875, $P876
    set $P874, $P875["%REG"]
    unless_null $P874, fallback1833
    get_hll_global $P878, "GLOBAL"
    get_who $P877, $P878
    new $P879, 'Hash'
    set $P877["%REG"], $P879
    set $P874, $P879
  fallback1833:
    unless_null $P874, vivi_4771834
    die "Contextual %*REG not found"
    box $P880, "Contextual %*REG not found"
    set $P874, $P880
  vivi_4771834:
    set $P103, $P874
  fallback1832:
    set $P873, $P103["cur"]
    unless_null $P873, fallback1835
    nqp_get_sc_object $P881, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P873, $P881
  fallback1835:
    $P882 = $P101."result"($P873)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_307_1346233447.816") :anon :lex :outer("cuid_125_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2882
    .lex "$reg", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P504, "$reglist"
    shift $P503, $P504
    set $P101, $P503
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback1702
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback1703
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback1703:
    unless_null $P506, vivi_4441704
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_4441704:
    set $P505, $P506
  fallback1702:
    set $S501, $P101
    find_lex $P513, "$prefix"
    set $S503, $P513
    set $S504, $P101
    concat $S502, $S503, $S504
    box $P514, $S502
    set $P505[$S501], $P514
    set $P102, $P514
.annotate 'line', 2885
    find_lex $P515, "$ops"
    find_lex $P517, "$reglist"
    shift $P516, $P517
    set $S506, $P516
    concat $S505, ".local ", $S506
    $P518 = $P515."push_pirop"($S505, $P102)
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "post_children" :subid("cuid_126_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2940
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P511 = 'cuid_309_1346233447.816' 
    capture_lex $P511 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    find_dynamic_lex $P501, "$*PIRT"
    unless_null $P501, fallback1838
    get_hll_global $P504, "GLOBAL"
    get_who $P503, $P504
    set $P502, $P503["$PIRT"]
    unless_null $P502, fallback1839
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback1839:
    unless_null $P502, vivi_4791840
    die "Contextual $*PIRT not found"
    box $P506, "Contextual $*PIRT not found"
    set $P502, $P506
  vivi_4791840:
    set $P501, $P502
  fallback1838:
    unless $P501 goto if478_else1836 
    .const 'Sub' $P507 = 'cuid_309_1346233447.816' 
    capture_lex $P507
    $P508 = $P507()
    set $P510, $P508
    goto if478_end1837
  if478_else1836:
.annotate 'line', 2951

                $P0 = find_dynamic_lex '$*PASTCOMPILER'
                $P1 = find_lex '$node'
                ($P509 :slurpy) = $P0.'post_children'($P1)
            
    set $P510, $P509
  if478_end1837:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_309_1346233447.816") :anon :lex :outer("cuid_126_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2941
    .const 'Sub' $P518 = 'cuid_308_1346233447.816' 
    capture_lex $P518 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
.annotate 'line', 2942
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Ops"]
    unless_null $P503, fallback1841
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1841:
    $P508 = $P503."new"()
    set $P101, $P508
    find_lex $P512, "$node"
    $P513 = $P512."list"()
    set $P509, $P513
    iter $P511, $P513
    new $P515, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P515, for_handlers1843
    push_eh $P515
  for_next1844:
    unless $P511, for_done1846
    shift $P516, $P511
  for_redo1845:
    .const 'Sub' $P514 = 'cuid_308_1346233447.816' 
    capture_lex $P514
    $P509 = $P514($P516)
    goto for_next1844
  for_handlers1843:
    .get_results ($P515)
    pop_upto_eh $P515
    getattribute $P515, $P515, 'type'
    eq $P515, .CONTROL_LOOP_NEXT, for_next1844
    eq $P515, .CONTROL_LOOP_REDO, for_redo1845
  for_done1846:
    pop_eh 
    new $P517, 'ResizablePMCArray'
    push $P517, $P101
    push $P517, $P102
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_308_1346233447.816") :anon :lex :outer("cuid_309_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2944
    .param pmc _lex_param_0 
    .lex "$sval", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2945
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    get_hll_global $P507, "GLOBAL"
    nqp_get_package_through_who $P506, $P507, "QAST"
    get_who $P505, $P506
    set $P504, $P505["SVal"]
    unless_null $P504, fallback1842
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P508
  fallback1842:
    set $S501, _lex_param_0
    $P509 = $P504."new"($S501 :named("value"))
    $P510 = $P502."as_post"($P509)
    set $P101, $P510
.annotate 'line', 2946
    find_lex $P511, "$posts"
    $P512 = $P511."push"($P101)
    find_lex $P513, "@results"
.annotate 'line', 2947
    $P514 = $P101."result"()
    push $P513, $P514
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "children" :subid("cuid_127_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2960
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P518 = 'cuid_310_1346233447.816' 
    capture_lex $P518 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
.annotate 'line', 2961
    get_hll_global $P506, "GLOBAL"
    nqp_get_package_through_who $P505, $P506, "PIRT"
    get_who $P504, $P505
    set $P503, $P504["Ops"]
    unless_null $P503, fallback1847
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P507
  fallback1847:
    $P508 = $P503."new"()
    set $P101, $P508
    $P512 = _lex_param_1."list"()
    set $P509, $P512
    iter $P511, $P512
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers1848
    push_eh $P514
  for_next1849:
    unless $P511, for_done1851
    shift $P515, $P511
  for_redo1850:
    .const 'Sub' $P513 = 'cuid_310_1346233447.816' 
    capture_lex $P513
    $P509 = $P513($P515)
    goto for_next1849
  for_handlers1848:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next1849
    eq $P514, .CONTROL_LOOP_REDO, for_redo1850
  for_done1851:
    pop_eh 
    new $P516, 'ResizablePMCArray'
    push $P516, $P101
    push $P516, $P102
    new $P517, 'ResizablePMCArray'
    push $P516, $P517
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_310_1346233447.816") :anon :lex :outer("cuid_127_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2963
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 2964
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."as_post"(_lex_param_0)
    set $P101, $P504
.annotate 'line', 2965
    find_lex $P505, "$posts"
    $P506 = $P505."push"($P101)
.annotate 'line', 2966
    find_lex $P507, "@results"
    $P508 = $P101."result"()
    $P509 = $P507."push"($P508)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "regex_post" :subid("cuid_128_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2971
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$rxtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1852
    .lex "RETURN", $P102
.annotate 'line', 2972
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PAST"
    get_who $P503, $P504
    set $P502, $P503["Node"]
    unless_null $P502, fallback1856
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback1856:
    $P507 = $P502."ACCEPTS"(_lex_param_1)
    set $P517, $P507
    unless $P507 goto if480_end1855 
    find_dynamic_lex $P509, "$*PASTCOMPILER"
    unless_null $P509, fallback1857
    get_hll_global $P512, "GLOBAL"
    get_who $P511, $P512
    set $P510, $P511["$PASTCOMPILER"]
    unless_null $P510, fallback1858
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback1858:
    unless_null $P510, vivi_4811859
    die "Contextual $*PASTCOMPILER not found"
    box $P514, "Contextual $*PASTCOMPILER not found"
    set $P510, $P514
  vivi_4811859:
    set $P509, $P510
  fallback1857:
    $P515 = $P509."as_post"(_lex_param_1)
    find_lex $P508, "RETURN"
    $P516 = $P508($P515)
    set $P517, $P516
  if480_end1855:
.annotate 'line', 2973
    $P518 = _lex_param_1."rxtype"()
    set $P519, $P518
    if $P518 goto unless482_end1861 
    box $P520, "concat"
    set $P519, $P520
  unless482_end1861:
    set $P101, $P519
.annotate 'line', 2974
    nqp_decontainerize $P521, _lex_param_0
    set $S501, $P101
    $P522 = $P521.$S501(_lex_param_1)
    goto lexotic_1853
  lexotic_1852:
    .get_results ($P522)
  lexotic_1853:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "post_new" :subid("cuid_129_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2977
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%options", _lex_param_3 
    find_dynamic_lex $P501, "$*PIRT"
    unless_null $P501, fallback1864
    get_hll_global $P504, "GLOBAL"
    get_who $P503, $P504
    set $P502, $P503["$PIRT"]
    unless_null $P502, fallback1865
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback1865:
    unless_null $P502, vivi_4841866
    die "Contextual $*PIRT not found"
    box $P506, "Contextual $*PIRT not found"
    set $P502, $P506
  vivi_4841866:
    set $P501, $P502
  fallback1864:
    unless $P501 goto if483_else1862 
.annotate 'line', 2978
.annotate 'line', 2979
    find_lex $P511, "$?PACKAGE"
    get_who $P510, $P511
    set $P509, $P510["PIRT"]
    unless_null $P509, fallback1867
    get_hll_global $P514, "GLOBAL"
    get_who $P513, $P514
    set $P512, $P513["PIRT"]
    unless_null $P512, vivi_4851868
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P515
  vivi_4851868:
    set $P509, $P512
  fallback1867:
    get_who $P508, $P509
    set $S501, _lex_param_1
    set $P507, $P508[$S501]
    unless_null $P507, fallback1869
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P516
  fallback1869:
    $P517 = $P507."new"(_lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P519, $P517
    goto if483_end1863
  if483_else1862:
.annotate 'line', 2981

                $P0 = find_lex '$type'
                $S0 = $P0
                $P0 = get_root_global ['parrot';'POST'], $S0
                $P1 = find_lex '@args'
                $P2 = find_lex '%options'
                $P518 = $P0.'new'($P1 :flat, $P2 :flat :named)
            
    set $P519, $P518
  if483_end1863:
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_130_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2993
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P585 = 'cuid_311_1346233447.816' 
    capture_lex $P585 
    .lex "$prefix", $P101 
    .lex "$endlabel", $P102 
    .lex "$label_list_ops", $P103 
    .lex "$ops", $P104 
    .lex "$altcount", $P105 
    .lex "$iter", $P106 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1870
    .lex "RETURN", $P107
.annotate 'line', 2994
    $P507 = _lex_param_1."name"()
    set $P512, $P507
    if $P507 goto unless486_end1873 
.annotate 'line', 2995
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."altseq"(_lex_param_1)
    find_lex $P508, "RETURN"
    $P511 = $P508($P510)
    set $P512, $P511
  unless486_end1873:
.annotate 'line', 3000
    nqp_decontainerize $P513, _lex_param_0
    $P514 = $P513."unique"("alt")
    set $S502, $P514
    concat $S501, $S502, "_"
    box $P515, $S501
    set $P101, $P515
.annotate 'line', 3001
    nqp_decontainerize $P516, _lex_param_0
    set $S504, $P101
    concat $S503, $S504, "end"
    $P517 = $P516."post_new"("Label", $S503 :named("name"))
    set $P102, $P517
.annotate 'line', 3002
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P518."post_new"("Ops", "$P11" :named("result"))
    set $P103, $P519
.annotate 'line', 3003
    $P520 = $P103."push_pirop"("new", "$P11", "\"ResizableIntegerArray\"")
.annotate 'line', 3004
    nqp_decontainerize $P521, _lex_param_0
    find_dynamic_lex $P523, "%*REG"
    unless_null $P523, fallback1874
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["%REG"]
    unless_null $P524, fallback1875
    get_hll_global $P528, "GLOBAL"
    get_who $P527, $P528
    new $P529, 'Hash'
    set $P527["%REG"], $P529
    set $P524, $P529
  fallback1875:
    unless_null $P524, vivi_4871876
    die "Contextual %*REG not found"
    box $P530, "Contextual %*REG not found"
    set $P524, $P530
  vivi_4871876:
    set $P523, $P524
  fallback1874:
    set $P522, $P523["cur"]
    unless_null $P522, fallback1877
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P531
  fallback1877:
    $P532 = $P521."post_new"("Ops", $P522 :named("result"))
    set $P104, $P532
.annotate 'line', 3005
    $P533 = $P104."push"($P103)
.annotate 'line', 3006
    nqp_decontainerize $P534, _lex_param_0
    $P535 = $P534."regex_mark"($P104, $P102, -1, 0)
.annotate 'line', 3007
    find_dynamic_lex $P537, "%*REG"
    unless_null $P537, fallback1878
    get_hll_global $P540, "GLOBAL"
    get_who $P539, $P540
    set $P538, $P539["%REG"]
    unless_null $P538, fallback1879
    get_hll_global $P542, "GLOBAL"
    get_who $P541, $P542
    new $P543, 'Hash'
    set $P541["%REG"], $P543
    set $P538, $P543
  fallback1879:
    unless_null $P538, vivi_4881880
    die "Contextual %*REG not found"
    box $P544, "Contextual %*REG not found"
    set $P538, $P544
  vivi_4881880:
    set $P537, $P538
  fallback1878:
    set $P536, $P537["cur"]
    unless_null $P536, fallback1881
    nqp_get_sc_object $P545, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P536, $P545
  fallback1881:
    find_dynamic_lex $P547, "%*REG"
    unless_null $P547, fallback1882
    get_hll_global $P550, "GLOBAL"
    get_who $P549, $P550
    set $P548, $P549["%REG"]
    unless_null $P548, fallback1883
    get_hll_global $P552, "GLOBAL"
    get_who $P551, $P552
    new $P553, 'Hash'
    set $P551["%REG"], $P553
    set $P548, $P553
  fallback1883:
    unless_null $P548, vivi_4891884
    die "Contextual %*REG not found"
    box $P554, "Contextual %*REG not found"
    set $P548, $P554
  vivi_4891884:
    set $P547, $P548
  fallback1882:
    set $P546, $P547["pos"]
    unless_null $P546, fallback1885
    nqp_get_sc_object $P555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P555
  fallback1885:
.annotate 'line', 3008
    nqp_decontainerize $P556, _lex_param_0
    $P557 = _lex_param_1."name"()
    $P558 = $P556."escape"($P557)
    $P559 = $P103."result"()
    $P560 = $P104."push_pirop"("callmethod", "\"!alt\"", $P536, $P546, $P558, $P559)
.annotate 'line', 3009
    find_dynamic_lex $P562, "%*REG"
    unless_null $P562, fallback1886
    get_hll_global $P565, "GLOBAL"
    get_who $P564, $P565
    set $P563, $P564["%REG"]
    unless_null $P563, fallback1887
    get_hll_global $P567, "GLOBAL"
    get_who $P566, $P567
    new $P568, 'Hash'
    set $P566["%REG"], $P568
    set $P563, $P568
  fallback1887:
    unless_null $P563, vivi_4901888
    die "Contextual %*REG not found"
    box $P569, "Contextual %*REG not found"
    set $P563, $P569
  vivi_4901888:
    set $P562, $P563
  fallback1886:
    set $P561, $P562["fail"]
    unless_null $P561, fallback1889
    nqp_get_sc_object $P570, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P570
  fallback1889:
    $P571 = $P104."push_pirop"("goto", $P561)
    box $P572, 0
    set $P105, $P572
.annotate 'line', 3013
    $P574 = _lex_param_1."list"()
    iter $P573, $P574
    set $P106, $P573
    new $P578, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P578, while491_handlers1893
    push_eh $P578
  while491_test1890:
    set $P577, $P106
    unless $P106 goto while491_done1894 
  while491_redo1892:
    .const 'Sub' $P575 = 'cuid_311_1346233447.816' 
    capture_lex $P575
    $P576 = $P575()
    set $P577, $P576
    goto while491_test1890 
  while491_handlers1893:
    .get_results ($P578)
    pop_upto_eh $P578
    getattribute $P578, $P578, 'type'
    eq $P578, .CONTROL_LOOP_NEXT, while491_test1890
    eq $P578, .CONTROL_LOOP_REDO, while491_redo1892
  while491_done1894:
    pop_eh 
.annotate 'line', 3023
    $P579 = $P104."push"($P102)
.annotate 'line', 3024
    $P580 = _lex_param_1."backtrack"()
    set $S505, $P580
    iseq $I501, $S505, "r"
    box $P584, $I501
    set $P583, $P584
    unless $I501 goto if492_end1896 
    nqp_decontainerize $P581, _lex_param_0
    $P582 = $P581."regex_commit"($P104, $P102)
    set $P583, $P582
  if492_end1896:
    goto lexotic_1871
  lexotic_1870:
    .get_results ($P104)
  lexotic_1871:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_311_1346233447.816") :anon :lex :outer("cuid_130_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3014
    .lex "$altlabel", $P101 
    .lex "$apost", $P102 
    .local pmc tmp_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3015
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    find_lex $P505, "$prefix"
    set $S502, $P505
    find_lex $P506, "$altcount"
    set $S503, $P506
    concat $S501, $S502, $S503
    $P507 = $P503."post_new"("Label", $S501 :named("name"))
    set $P101, $P507
.annotate 'line', 3016
    find_lex $P509, "self"
    nqp_decontainerize $P508, $P509
    find_lex $P511, "$iter"
    shift $P510, $P511
    $P512 = $P508."regex_post"($P510)
    set $P102, $P512
.annotate 'line', 3017
    find_lex $P513, "$ops"
    $P514 = $P513."push"($P101)
.annotate 'line', 3018
    find_lex $P515, "$ops"
    $P516 = $P515."push"($P102)
.annotate 'line', 3019
    find_lex $P517, "$ops"
    find_lex $P518, "$endlabel"
    $P519 = $P517."push_pirop"("goto", $P518)
.annotate 'line', 3020
    find_lex $P520, "$label_list_ops"
    find_lex $P521, "$label_list_ops"
    $P522 = $P521."result"()
    $P523 = $P101."result"()
    $P524 = $P520."push_pirop"("nqp_push_label", $P522, $P523)
    find_lex $P525, "$altcount"
    set tmp_3, $P525
    set $N502, tmp_3
    set $N503, 1
    add $N501, $N502, $N503
    box $P526, $N501
    store_lex "$altcount", $P526
    .return (tmp_3) 
.end
.HLL "nqp"
.namespace []
.sub "altseq" :subid("cuid_131_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3028
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$altcount", $P103 
    .lex "$iter", $P104 
    .lex "$endlabel", $P105 
    .lex "$altlabel", $P106 
    .lex "$apost", $P107 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .local pmc tmp_4 
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
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
.annotate 'line', 3029
    nqp_decontainerize $P508, _lex_param_0
    find_dynamic_lex $P510, "%*REG"
    unless_null $P510, fallback1897
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["%REG"]
    unless_null $P511, fallback1898
    get_hll_global $P515, "GLOBAL"
    get_who $P514, $P515
    new $P516, 'Hash'
    set $P514["%REG"], $P516
    set $P511, $P516
  fallback1898:
    unless_null $P511, vivi_4931899
    die "Contextual %*REG not found"
    box $P517, "Contextual %*REG not found"
    set $P511, $P517
  vivi_4931899:
    set $P510, $P511
  fallback1897:
    set $P509, $P510["cur"]
    unless_null $P509, fallback1900
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P518
  fallback1900:
    $P519 = $P508."post_new"("Ops", $P509 :named("result"))
    set $P101, $P519
.annotate 'line', 3030
    nqp_decontainerize $P520, _lex_param_0
    $P521 = $P520."unique"("alt")
    set $S502, $P521
    concat $S501, $S502, "_"
    box $P522, $S501
    set $P102, $P522
    box $P523, 0
    set $P103, $P523
.annotate 'line', 3032
    $P525 = _lex_param_1."list"()
    iter $P524, $P525
    set $P104, $P524
.annotate 'line', 3033
    nqp_decontainerize $P526, _lex_param_0
    set $S504, $P102
    concat $S503, $S504, "end"
    $P527 = $P526."post_new"("Label", $S503 :named("name"))
    set $P105, $P527
.annotate 'line', 3034
    nqp_decontainerize $P528, _lex_param_0
    set $S506, $P102
    set $S507, $P103
    concat $S505, $S506, $S507
    $P529 = $P528."post_new"("Label", $S505 :named("name"))
    set $P106, $P529
.annotate 'line', 3035
    nqp_decontainerize $P530, _lex_param_0
    shift $P531, $P104
    $P532 = $P530."regex_post"($P531)
    set $P107, $P532
    new $P554, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P554, while494_handlers1904
    push_eh $P554
  while494_test1901:
    set $P553, $P104
    unless $P104 goto while494_done1905 
  while494_redo1903:
.annotate 'line', 3036
.annotate 'line', 3037
    $P533 = $P101."push"($P106)
    set tmp_4, $P103
    set $N502, tmp_4
    set $N503, 1
    add $N501, $N502, $N503
    box $P534, $N501
    set $P103, $P534
.annotate 'line', 3039
    nqp_decontainerize $P534, _lex_param_0
    set $S509, $P102
    set $S510, $P103
    concat $S508, $S509, $S510
    $P535 = $P534."post_new"("Label", $S508 :named("name"))
    set $P106, $P535
.annotate 'line', 3040
    nqp_decontainerize $P536, _lex_param_0
    find_dynamic_lex $P538, "%*REG"
    unless_null $P538, fallback1906
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    set $P539, $P540["%REG"]
    unless_null $P539, fallback1907
    get_hll_global $P543, "GLOBAL"
    get_who $P542, $P543
    new $P544, 'Hash'
    set $P542["%REG"], $P544
    set $P539, $P544
  fallback1907:
    unless_null $P539, vivi_4951908
    die "Contextual %*REG not found"
    box $P545, "Contextual %*REG not found"
    set $P539, $P545
  vivi_4951908:
    set $P538, $P539
  fallback1906:
    set $P537, $P538["pos"]
    unless_null $P537, fallback1909
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P546
  fallback1909:
    $P547 = $P536."regex_mark"($P101, $P106, $P537, 0)
.annotate 'line', 3041
    $P548 = $P101."push"($P107)
.annotate 'line', 3042
    $P549 = $P101."push_pirop"("goto", $P105)
.annotate 'line', 3043
    nqp_decontainerize $P550, _lex_param_0
    shift $P551, $P104
    $P552 = $P550."regex_post"($P551)
    set $P107, $P552
    set $P553, $P107
    goto while494_test1901 
  while494_handlers1904:
    .get_results ($P554)
    pop_upto_eh $P554
    getattribute $P554, $P554, 'type'
    eq $P554, .CONTROL_LOOP_NEXT, while494_test1901
    eq $P554, .CONTROL_LOOP_REDO, while494_redo1903
  while494_done1905:
    pop_eh 
.annotate 'line', 3045
    $P555 = $P101."push"($P106)
.annotate 'line', 3046
    $P556 = $P101."push"($P107)
.annotate 'line', 3047
    $P557 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_132_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3051
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$donelabel", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 3052
    nqp_decontainerize $P504, _lex_param_0
    find_dynamic_lex $P506, "%*REG"
    unless_null $P506, fallback1910
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%REG"]
    unless_null $P507, fallback1911
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%REG"], $P512
    set $P507, $P512
  fallback1911:
    unless_null $P507, vivi_4961912
    die "Contextual %*REG not found"
    box $P513, "Contextual %*REG not found"
    set $P507, $P513
  vivi_4961912:
    set $P506, $P507
  fallback1910:
    set $P505, $P506["cur"]
    unless_null $P505, fallback1913
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P514
  fallback1913:
    $P515 = $P504."post_new"("Ops", $P505 :named("result"))
    set $P101, $P515
.annotate 'line', 3053
    $P516 = _lex_param_1."subtype"()
    set $P102, $P516
.annotate 'line', 3054
    nqp_decontainerize $P517, _lex_param_0
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P518."unique"("rxanchor")
    set $S502, $P519
    concat $S501, $S502, "_done"
    $P520 = $P517."post_new"("Label", $S501 :named("name"))
    set $P103, $P520
    set $S503, $P102
    iseq $I501, $S503, "bos"
    unless $I501 goto if497_else1914 
.annotate 'line', 3055
.annotate 'line', 3056
    find_dynamic_lex $P522, "%*REG"
    unless_null $P522, fallback1916
    get_hll_global $P525, "GLOBAL"
    get_who $P524, $P525
    set $P523, $P524["%REG"]
    unless_null $P523, fallback1917
    get_hll_global $P527, "GLOBAL"
    get_who $P526, $P527
    new $P528, 'Hash'
    set $P526["%REG"], $P528
    set $P523, $P528
  fallback1917:
    unless_null $P523, vivi_4981918
    die "Contextual %*REG not found"
    box $P529, "Contextual %*REG not found"
    set $P523, $P529
  vivi_4981918:
    set $P522, $P523
  fallback1916:
    set $P521, $P522["pos"]
    unless_null $P521, fallback1919
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P530
  fallback1919:
    find_dynamic_lex $P532, "%*REG"
    unless_null $P532, fallback1920
    get_hll_global $P535, "GLOBAL"
    get_who $P534, $P535
    set $P533, $P534["%REG"]
    unless_null $P533, fallback1921
    get_hll_global $P537, "GLOBAL"
    get_who $P536, $P537
    new $P538, 'Hash'
    set $P536["%REG"], $P538
    set $P533, $P538
  fallback1921:
    unless_null $P533, vivi_4991922
    die "Contextual %*REG not found"
    box $P539, "Contextual %*REG not found"
    set $P533, $P539
  vivi_4991922:
    set $P532, $P533
  fallback1920:
    set $P531, $P532["fail"]
    unless_null $P531, fallback1923
    nqp_get_sc_object $P540, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P531, $P540
  fallback1923:
    $P541 = $P101."push_pirop"("ne", $P521, 0, $P531)
    set $P947, $P541
    goto if497_end1915
  if497_else1914:
    set $S504, $P102
    iseq $I502, $S504, "eos"
    unless $I502 goto if500_else1924 
.annotate 'line', 3058
.annotate 'line', 3059
    find_dynamic_lex $P543, "%*REG"
    unless_null $P543, fallback1926
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    set $P544, $P545["%REG"]
    unless_null $P544, fallback1927
    get_hll_global $P548, "GLOBAL"
    get_who $P547, $P548
    new $P549, 'Hash'
    set $P547["%REG"], $P549
    set $P544, $P549
  fallback1927:
    unless_null $P544, vivi_5011928
    die "Contextual %*REG not found"
    box $P550, "Contextual %*REG not found"
    set $P544, $P550
  vivi_5011928:
    set $P543, $P544
  fallback1926:
    set $P542, $P543["pos"]
    unless_null $P542, fallback1929
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P551
  fallback1929:
    find_dynamic_lex $P553, "%*REG"
    unless_null $P553, fallback1930
    get_hll_global $P556, "GLOBAL"
    get_who $P555, $P556
    set $P554, $P555["%REG"]
    unless_null $P554, fallback1931
    get_hll_global $P558, "GLOBAL"
    get_who $P557, $P558
    new $P559, 'Hash'
    set $P557["%REG"], $P559
    set $P554, $P559
  fallback1931:
    unless_null $P554, vivi_5021932
    die "Contextual %*REG not found"
    box $P560, "Contextual %*REG not found"
    set $P554, $P560
  vivi_5021932:
    set $P553, $P554
  fallback1930:
    set $P552, $P553["eos"]
    unless_null $P552, fallback1933
    nqp_get_sc_object $P561, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P552, $P561
  fallback1933:
    find_dynamic_lex $P563, "%*REG"
    unless_null $P563, fallback1934
    get_hll_global $P566, "GLOBAL"
    get_who $P565, $P566
    set $P564, $P565["%REG"]
    unless_null $P564, fallback1935
    get_hll_global $P568, "GLOBAL"
    get_who $P567, $P568
    new $P569, 'Hash'
    set $P567["%REG"], $P569
    set $P564, $P569
  fallback1935:
    unless_null $P564, vivi_5031936
    die "Contextual %*REG not found"
    box $P570, "Contextual %*REG not found"
    set $P564, $P570
  vivi_5031936:
    set $P563, $P564
  fallback1934:
    set $P562, $P563["fail"]
    unless_null $P562, fallback1937
    nqp_get_sc_object $P571, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P562, $P571
  fallback1937:
    $P572 = $P101."push_pirop"("lt", $P542, $P552, $P562)
    set $P946, $P572
    goto if500_end1925
  if500_else1924:
    set $S505, $P102
    iseq $I503, $S505, "lwb"
    unless $I503 goto if504_else1938 
.annotate 'line', 3061
.annotate 'line', 3062
    find_dynamic_lex $P574, "%*REG"
    unless_null $P574, fallback1940
    get_hll_global $P577, "GLOBAL"
    get_who $P576, $P577
    set $P575, $P576["%REG"]
    unless_null $P575, fallback1941
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    new $P580, 'Hash'
    set $P578["%REG"], $P580
    set $P575, $P580
  fallback1941:
    unless_null $P575, vivi_5051942
    die "Contextual %*REG not found"
    box $P581, "Contextual %*REG not found"
    set $P575, $P581
  vivi_5051942:
    set $P574, $P575
  fallback1940:
    set $P573, $P574["pos"]
    unless_null $P573, fallback1943
    nqp_get_sc_object $P582, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P573, $P582
  fallback1943:
    find_dynamic_lex $P584, "%*REG"
    unless_null $P584, fallback1944
    get_hll_global $P587, "GLOBAL"
    get_who $P586, $P587
    set $P585, $P586["%REG"]
    unless_null $P585, fallback1945
    get_hll_global $P589, "GLOBAL"
    get_who $P588, $P589
    new $P590, 'Hash'
    set $P588["%REG"], $P590
    set $P585, $P590
  fallback1945:
    unless_null $P585, vivi_5061946
    die "Contextual %*REG not found"
    box $P591, "Contextual %*REG not found"
    set $P585, $P591
  vivi_5061946:
    set $P584, $P585
  fallback1944:
    set $P583, $P584["eos"]
    unless_null $P583, fallback1947
    nqp_get_sc_object $P592, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P583, $P592
  fallback1947:
    find_dynamic_lex $P594, "%*REG"
    unless_null $P594, fallback1948
    get_hll_global $P597, "GLOBAL"
    get_who $P596, $P597
    set $P595, $P596["%REG"]
    unless_null $P595, fallback1949
    get_hll_global $P599, "GLOBAL"
    get_who $P598, $P599
    new $P600, 'Hash'
    set $P598["%REG"], $P600
    set $P595, $P600
  fallback1949:
    unless_null $P595, vivi_5071950
    die "Contextual %*REG not found"
    box $P601, "Contextual %*REG not found"
    set $P595, $P601
  vivi_5071950:
    set $P594, $P595
  fallback1948:
    set $P593, $P594["fail"]
    unless_null $P593, fallback1951
    nqp_get_sc_object $P602, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P593, $P602
  fallback1951:
    $P603 = $P101."push_pirop"("ge", $P573, $P583, $P593)
.annotate 'line', 3063
    find_dynamic_lex $P605, "%*REG"
    unless_null $P605, fallback1952
    get_hll_global $P608, "GLOBAL"
    get_who $P607, $P608
    set $P606, $P607["%REG"]
    unless_null $P606, fallback1953
    get_hll_global $P610, "GLOBAL"
    get_who $P609, $P610
    new $P611, 'Hash'
    set $P609["%REG"], $P611
    set $P606, $P611
  fallback1953:
    unless_null $P606, vivi_5081954
    die "Contextual %*REG not found"
    box $P612, "Contextual %*REG not found"
    set $P606, $P612
  vivi_5081954:
    set $P605, $P606
  fallback1952:
    set $P604, $P605["tgt"]
    unless_null $P604, fallback1955
    nqp_get_sc_object $P613, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P604, $P613
  fallback1955:
    find_dynamic_lex $P615, "%*REG"
    unless_null $P615, fallback1956
    get_hll_global $P618, "GLOBAL"
    get_who $P617, $P618
    set $P616, $P617["%REG"]
    unless_null $P616, fallback1957
    get_hll_global $P620, "GLOBAL"
    get_who $P619, $P620
    new $P621, 'Hash'
    set $P619["%REG"], $P621
    set $P616, $P621
  fallback1957:
    unless_null $P616, vivi_5091958
    die "Contextual %*REG not found"
    box $P622, "Contextual %*REG not found"
    set $P616, $P622
  vivi_5091958:
    set $P615, $P616
  fallback1956:
    set $P614, $P615["pos"]
    unless_null $P614, fallback1959
    nqp_get_sc_object $P623, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P614, $P623
  fallback1959:
    $P624 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P604, $P614)
.annotate 'line', 3064
    find_dynamic_lex $P626, "%*REG"
    unless_null $P626, fallback1960
    get_hll_global $P629, "GLOBAL"
    get_who $P628, $P629
    set $P627, $P628["%REG"]
    unless_null $P627, fallback1961
    get_hll_global $P631, "GLOBAL"
    get_who $P630, $P631
    new $P632, 'Hash'
    set $P630["%REG"], $P632
    set $P627, $P632
  fallback1961:
    unless_null $P627, vivi_5101962
    die "Contextual %*REG not found"
    box $P633, "Contextual %*REG not found"
    set $P627, $P633
  vivi_5101962:
    set $P626, $P627
  fallback1960:
    set $P625, $P626["fail"]
    unless_null $P625, fallback1963
    nqp_get_sc_object $P634, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P625, $P634
  fallback1963:
    $P635 = $P101."push_pirop"("unless", "$I11", $P625)
.annotate 'line', 3065
    find_dynamic_lex $P637, "%*REG"
    unless_null $P637, fallback1964
    get_hll_global $P640, "GLOBAL"
    get_who $P639, $P640
    set $P638, $P639["%REG"]
    unless_null $P638, fallback1965
    get_hll_global $P642, "GLOBAL"
    get_who $P641, $P642
    new $P643, 'Hash'
    set $P641["%REG"], $P643
    set $P638, $P643
  fallback1965:
    unless_null $P638, vivi_5111966
    die "Contextual %*REG not found"
    box $P644, "Contextual %*REG not found"
    set $P638, $P644
  vivi_5111966:
    set $P637, $P638
  fallback1964:
    set $P636, $P637["pos"]
    unless_null $P636, fallback1967
    nqp_get_sc_object $P645, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P636, $P645
  fallback1967:
    $P646 = $P101."push_pirop"("sub", "$I11", $P636, 1)
.annotate 'line', 3066
    find_dynamic_lex $P648, "%*REG"
    unless_null $P648, fallback1968
    get_hll_global $P651, "GLOBAL"
    get_who $P650, $P651
    set $P649, $P650["%REG"]
    unless_null $P649, fallback1969
    get_hll_global $P653, "GLOBAL"
    get_who $P652, $P653
    new $P654, 'Hash'
    set $P652["%REG"], $P654
    set $P649, $P654
  fallback1969:
    unless_null $P649, vivi_5121970
    die "Contextual %*REG not found"
    box $P655, "Contextual %*REG not found"
    set $P649, $P655
  vivi_5121970:
    set $P648, $P649
  fallback1968:
    set $P647, $P648["tgt"]
    unless_null $P647, fallback1971
    nqp_get_sc_object $P656, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P647, $P656
  fallback1971:
    $P657 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P647, "$I11")
.annotate 'line', 3067
    find_dynamic_lex $P659, "%*REG"
    unless_null $P659, fallback1972
    get_hll_global $P662, "GLOBAL"
    get_who $P661, $P662
    set $P660, $P661["%REG"]
    unless_null $P660, fallback1973
    get_hll_global $P664, "GLOBAL"
    get_who $P663, $P664
    new $P665, 'Hash'
    set $P663["%REG"], $P665
    set $P660, $P665
  fallback1973:
    unless_null $P660, vivi_5131974
    die "Contextual %*REG not found"
    box $P666, "Contextual %*REG not found"
    set $P660, $P666
  vivi_5131974:
    set $P659, $P660
  fallback1972:
    set $P658, $P659["fail"]
    unless_null $P658, fallback1975
    nqp_get_sc_object $P667, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P658, $P667
  fallback1975:
    $P668 = $P101."push_pirop"("if", "$I11", $P658)
    set $P945, $P668
    goto if504_end1939
  if504_else1938:
    set $S506, $P102
    iseq $I504, $S506, "rwb"
    unless $I504 goto if514_else1976 
.annotate 'line', 3069
.annotate 'line', 3070
    find_dynamic_lex $P670, "%*REG"
    unless_null $P670, fallback1978
    get_hll_global $P673, "GLOBAL"
    get_who $P672, $P673
    set $P671, $P672["%REG"]
    unless_null $P671, fallback1979
    get_hll_global $P675, "GLOBAL"
    get_who $P674, $P675
    new $P676, 'Hash'
    set $P674["%REG"], $P676
    set $P671, $P676
  fallback1979:
    unless_null $P671, vivi_5151980
    die "Contextual %*REG not found"
    box $P677, "Contextual %*REG not found"
    set $P671, $P677
  vivi_5151980:
    set $P670, $P671
  fallback1978:
    set $P669, $P670["pos"]
    unless_null $P669, fallback1981
    nqp_get_sc_object $P678, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P669, $P678
  fallback1981:
    find_dynamic_lex $P680, "%*REG"
    unless_null $P680, fallback1982
    get_hll_global $P683, "GLOBAL"
    get_who $P682, $P683
    set $P681, $P682["%REG"]
    unless_null $P681, fallback1983
    get_hll_global $P685, "GLOBAL"
    get_who $P684, $P685
    new $P686, 'Hash'
    set $P684["%REG"], $P686
    set $P681, $P686
  fallback1983:
    unless_null $P681, vivi_5161984
    die "Contextual %*REG not found"
    box $P687, "Contextual %*REG not found"
    set $P681, $P687
  vivi_5161984:
    set $P680, $P681
  fallback1982:
    set $P679, $P680["fail"]
    unless_null $P679, fallback1985
    nqp_get_sc_object $P688, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P679, $P688
  fallback1985:
    $P689 = $P101."push_pirop"("le", $P669, 0, $P679)
.annotate 'line', 3071
    find_dynamic_lex $P691, "%*REG"
    unless_null $P691, fallback1986
    get_hll_global $P694, "GLOBAL"
    get_who $P693, $P694
    set $P692, $P693["%REG"]
    unless_null $P692, fallback1987
    get_hll_global $P696, "GLOBAL"
    get_who $P695, $P696
    new $P697, 'Hash'
    set $P695["%REG"], $P697
    set $P692, $P697
  fallback1987:
    unless_null $P692, vivi_5171988
    die "Contextual %*REG not found"
    box $P698, "Contextual %*REG not found"
    set $P692, $P698
  vivi_5171988:
    set $P691, $P692
  fallback1986:
    set $P690, $P691["tgt"]
    unless_null $P690, fallback1989
    nqp_get_sc_object $P699, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P690, $P699
  fallback1989:
    find_dynamic_lex $P701, "%*REG"
    unless_null $P701, fallback1990
    get_hll_global $P704, "GLOBAL"
    get_who $P703, $P704
    set $P702, $P703["%REG"]
    unless_null $P702, fallback1991
    get_hll_global $P706, "GLOBAL"
    get_who $P705, $P706
    new $P707, 'Hash'
    set $P705["%REG"], $P707
    set $P702, $P707
  fallback1991:
    unless_null $P702, vivi_5181992
    die "Contextual %*REG not found"
    box $P708, "Contextual %*REG not found"
    set $P702, $P708
  vivi_5181992:
    set $P701, $P702
  fallback1990:
    set $P700, $P701["pos"]
    unless_null $P700, fallback1993
    nqp_get_sc_object $P709, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P700, $P709
  fallback1993:
    $P710 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P690, $P700)
.annotate 'line', 3072
    find_dynamic_lex $P712, "%*REG"
    unless_null $P712, fallback1994
    get_hll_global $P715, "GLOBAL"
    get_who $P714, $P715
    set $P713, $P714["%REG"]
    unless_null $P713, fallback1995
    get_hll_global $P717, "GLOBAL"
    get_who $P716, $P717
    new $P718, 'Hash'
    set $P716["%REG"], $P718
    set $P713, $P718
  fallback1995:
    unless_null $P713, vivi_5191996
    die "Contextual %*REG not found"
    box $P719, "Contextual %*REG not found"
    set $P713, $P719
  vivi_5191996:
    set $P712, $P713
  fallback1994:
    set $P711, $P712["fail"]
    unless_null $P711, fallback1997
    nqp_get_sc_object $P720, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P711, $P720
  fallback1997:
    $P721 = $P101."push_pirop"("if", "$I11", $P711)
.annotate 'line', 3073
    find_dynamic_lex $P723, "%*REG"
    unless_null $P723, fallback1998
    get_hll_global $P726, "GLOBAL"
    get_who $P725, $P726
    set $P724, $P725["%REG"]
    unless_null $P724, fallback1999
    get_hll_global $P728, "GLOBAL"
    get_who $P727, $P728
    new $P729, 'Hash'
    set $P727["%REG"], $P729
    set $P724, $P729
  fallback1999:
    unless_null $P724, vivi_5202000
    die "Contextual %*REG not found"
    box $P730, "Contextual %*REG not found"
    set $P724, $P730
  vivi_5202000:
    set $P723, $P724
  fallback1998:
    set $P722, $P723["pos"]
    unless_null $P722, fallback2001
    nqp_get_sc_object $P731, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P722, $P731
  fallback2001:
    $P732 = $P101."push_pirop"("sub", "$I11", $P722, 1)
.annotate 'line', 3074
    find_dynamic_lex $P734, "%*REG"
    unless_null $P734, fallback2002
    get_hll_global $P737, "GLOBAL"
    get_who $P736, $P737
    set $P735, $P736["%REG"]
    unless_null $P735, fallback2003
    get_hll_global $P739, "GLOBAL"
    get_who $P738, $P739
    new $P740, 'Hash'
    set $P738["%REG"], $P740
    set $P735, $P740
  fallback2003:
    unless_null $P735, vivi_5212004
    die "Contextual %*REG not found"
    box $P741, "Contextual %*REG not found"
    set $P735, $P741
  vivi_5212004:
    set $P734, $P735
  fallback2002:
    set $P733, $P734["tgt"]
    unless_null $P733, fallback2005
    nqp_get_sc_object $P742, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P733, $P742
  fallback2005:
    $P743 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P733, "$I11")
.annotate 'line', 3075
    find_dynamic_lex $P745, "%*REG"
    unless_null $P745, fallback2006
    get_hll_global $P748, "GLOBAL"
    get_who $P747, $P748
    set $P746, $P747["%REG"]
    unless_null $P746, fallback2007
    get_hll_global $P750, "GLOBAL"
    get_who $P749, $P750
    new $P751, 'Hash'
    set $P749["%REG"], $P751
    set $P746, $P751
  fallback2007:
    unless_null $P746, vivi_5222008
    die "Contextual %*REG not found"
    box $P752, "Contextual %*REG not found"
    set $P746, $P752
  vivi_5222008:
    set $P745, $P746
  fallback2006:
    set $P744, $P745["fail"]
    unless_null $P744, fallback2009
    nqp_get_sc_object $P753, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P744, $P753
  fallback2009:
    $P754 = $P101."push_pirop"("unless", "$I11", $P744)
    set $P944, $P754
    goto if514_end1977
  if514_else1976:
    set $S507, $P102
    iseq $I505, $S507, "bol"
    unless $I505 goto if523_else2010 
.annotate 'line', 3077
.annotate 'line', 3078
    find_dynamic_lex $P756, "%*REG"
    unless_null $P756, fallback2012
    get_hll_global $P759, "GLOBAL"
    get_who $P758, $P759
    set $P757, $P758["%REG"]
    unless_null $P757, fallback2013
    get_hll_global $P761, "GLOBAL"
    get_who $P760, $P761
    new $P762, 'Hash'
    set $P760["%REG"], $P762
    set $P757, $P762
  fallback2013:
    unless_null $P757, vivi_5242014
    die "Contextual %*REG not found"
    box $P763, "Contextual %*REG not found"
    set $P757, $P763
  vivi_5242014:
    set $P756, $P757
  fallback2012:
    set $P755, $P756["pos"]
    unless_null $P755, fallback2015
    nqp_get_sc_object $P764, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P755, $P764
  fallback2015:
    $P765 = $P101."push_pirop"("eq", $P755, 0, $P103)
.annotate 'line', 3079
    find_dynamic_lex $P767, "%*REG"
    unless_null $P767, fallback2016
    get_hll_global $P770, "GLOBAL"
    get_who $P769, $P770
    set $P768, $P769["%REG"]
    unless_null $P768, fallback2017
    get_hll_global $P772, "GLOBAL"
    get_who $P771, $P772
    new $P773, 'Hash'
    set $P771["%REG"], $P773
    set $P768, $P773
  fallback2017:
    unless_null $P768, vivi_5252018
    die "Contextual %*REG not found"
    box $P774, "Contextual %*REG not found"
    set $P768, $P774
  vivi_5252018:
    set $P767, $P768
  fallback2016:
    set $P766, $P767["pos"]
    unless_null $P766, fallback2019
    nqp_get_sc_object $P775, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P766, $P775
  fallback2019:
    find_dynamic_lex $P777, "%*REG"
    unless_null $P777, fallback2020
    get_hll_global $P780, "GLOBAL"
    get_who $P779, $P780
    set $P778, $P779["%REG"]
    unless_null $P778, fallback2021
    get_hll_global $P782, "GLOBAL"
    get_who $P781, $P782
    new $P783, 'Hash'
    set $P781["%REG"], $P783
    set $P778, $P783
  fallback2021:
    unless_null $P778, vivi_5262022
    die "Contextual %*REG not found"
    box $P784, "Contextual %*REG not found"
    set $P778, $P784
  vivi_5262022:
    set $P777, $P778
  fallback2020:
    set $P776, $P777["eos"]
    unless_null $P776, fallback2023
    nqp_get_sc_object $P785, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P776, $P785
  fallback2023:
    find_dynamic_lex $P787, "%*REG"
    unless_null $P787, fallback2024
    get_hll_global $P790, "GLOBAL"
    get_who $P789, $P790
    set $P788, $P789["%REG"]
    unless_null $P788, fallback2025
    get_hll_global $P792, "GLOBAL"
    get_who $P791, $P792
    new $P793, 'Hash'
    set $P791["%REG"], $P793
    set $P788, $P793
  fallback2025:
    unless_null $P788, vivi_5272026
    die "Contextual %*REG not found"
    box $P794, "Contextual %*REG not found"
    set $P788, $P794
  vivi_5272026:
    set $P787, $P788
  fallback2024:
    set $P786, $P787["fail"]
    unless_null $P786, fallback2027
    nqp_get_sc_object $P795, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P786, $P795
  fallback2027:
    $P796 = $P101."push_pirop"("ge", $P766, $P776, $P786)
.annotate 'line', 3080
    find_dynamic_lex $P798, "%*REG"
    unless_null $P798, fallback2028
    get_hll_global $P801, "GLOBAL"
    get_who $P800, $P801
    set $P799, $P800["%REG"]
    unless_null $P799, fallback2029
    get_hll_global $P803, "GLOBAL"
    get_who $P802, $P803
    new $P804, 'Hash'
    set $P802["%REG"], $P804
    set $P799, $P804
  fallback2029:
    unless_null $P799, vivi_5282030
    die "Contextual %*REG not found"
    box $P805, "Contextual %*REG not found"
    set $P799, $P805
  vivi_5282030:
    set $P798, $P799
  fallback2028:
    set $P797, $P798["pos"]
    unless_null $P797, fallback2031
    nqp_get_sc_object $P806, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P797, $P806
  fallback2031:
    $P807 = $P101."push_pirop"("sub", "$I11", $P797, 1)
.annotate 'line', 3081
    find_dynamic_lex $P809, "%*REG"
    unless_null $P809, fallback2032
    get_hll_global $P812, "GLOBAL"
    get_who $P811, $P812
    set $P810, $P811["%REG"]
    unless_null $P810, fallback2033
    get_hll_global $P814, "GLOBAL"
    get_who $P813, $P814
    new $P815, 'Hash'
    set $P813["%REG"], $P815
    set $P810, $P815
  fallback2033:
    unless_null $P810, vivi_5292034
    die "Contextual %*REG not found"
    box $P816, "Contextual %*REG not found"
    set $P810, $P816
  vivi_5292034:
    set $P809, $P810
  fallback2032:
    set $P808, $P809["tgt"]
    unless_null $P808, fallback2035
    nqp_get_sc_object $P817, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P808, $P817
  fallback2035:
    $P818 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P808, "$I11")
.annotate 'line', 3082
    find_dynamic_lex $P820, "%*REG"
    unless_null $P820, fallback2036
    get_hll_global $P823, "GLOBAL"
    get_who $P822, $P823
    set $P821, $P822["%REG"]
    unless_null $P821, fallback2037
    get_hll_global $P825, "GLOBAL"
    get_who $P824, $P825
    new $P826, 'Hash'
    set $P824["%REG"], $P826
    set $P821, $P826
  fallback2037:
    unless_null $P821, vivi_5302038
    die "Contextual %*REG not found"
    box $P827, "Contextual %*REG not found"
    set $P821, $P827
  vivi_5302038:
    set $P820, $P821
  fallback2036:
    set $P819, $P820["fail"]
    unless_null $P819, fallback2039
    nqp_get_sc_object $P828, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P819, $P828
  fallback2039:
    $P829 = $P101."push_pirop"("unless", "$I11", $P819)
.annotate 'line', 3083
    $P830 = $P101."push"($P103)
    set $P943, $P830
    goto if523_end2011
  if523_else2010:
    set $S508, $P102
    iseq $I506, $S508, "eol"
    unless $I506 goto if531_else2040 
.annotate 'line', 3085
.annotate 'line', 3086
    find_dynamic_lex $P832, "%*REG"
    unless_null $P832, fallback2042
    get_hll_global $P835, "GLOBAL"
    get_who $P834, $P835
    set $P833, $P834["%REG"]
    unless_null $P833, fallback2043
    get_hll_global $P837, "GLOBAL"
    get_who $P836, $P837
    new $P838, 'Hash'
    set $P836["%REG"], $P838
    set $P833, $P838
  fallback2043:
    unless_null $P833, vivi_5322044
    die "Contextual %*REG not found"
    box $P839, "Contextual %*REG not found"
    set $P833, $P839
  vivi_5322044:
    set $P832, $P833
  fallback2042:
    set $P831, $P832["tgt"]
    unless_null $P831, fallback2045
    nqp_get_sc_object $P840, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P831, $P840
  fallback2045:
    find_dynamic_lex $P842, "%*REG"
    unless_null $P842, fallback2046
    get_hll_global $P845, "GLOBAL"
    get_who $P844, $P845
    set $P843, $P844["%REG"]
    unless_null $P843, fallback2047
    get_hll_global $P847, "GLOBAL"
    get_who $P846, $P847
    new $P848, 'Hash'
    set $P846["%REG"], $P848
    set $P843, $P848
  fallback2047:
    unless_null $P843, vivi_5332048
    die "Contextual %*REG not found"
    box $P849, "Contextual %*REG not found"
    set $P843, $P849
  vivi_5332048:
    set $P842, $P843
  fallback2046:
    set $P841, $P842["pos"]
    unless_null $P841, fallback2049
    nqp_get_sc_object $P850, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P841, $P850
  fallback2049:
    $P851 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P831, $P841)
.annotate 'line', 3087
    $P852 = $P101."push_pirop"("if", "$I11", $P103)
.annotate 'line', 3088
    find_dynamic_lex $P854, "%*REG"
    unless_null $P854, fallback2050
    get_hll_global $P857, "GLOBAL"
    get_who $P856, $P857
    set $P855, $P856["%REG"]
    unless_null $P855, fallback2051
    get_hll_global $P859, "GLOBAL"
    get_who $P858, $P859
    new $P860, 'Hash'
    set $P858["%REG"], $P860
    set $P855, $P860
  fallback2051:
    unless_null $P855, vivi_5342052
    die "Contextual %*REG not found"
    box $P861, "Contextual %*REG not found"
    set $P855, $P861
  vivi_5342052:
    set $P854, $P855
  fallback2050:
    set $P853, $P854["pos"]
    unless_null $P853, fallback2053
    nqp_get_sc_object $P862, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P853, $P862
  fallback2053:
    find_dynamic_lex $P864, "%*REG"
    unless_null $P864, fallback2054
    get_hll_global $P867, "GLOBAL"
    get_who $P866, $P867
    set $P865, $P866["%REG"]
    unless_null $P865, fallback2055
    get_hll_global $P869, "GLOBAL"
    get_who $P868, $P869
    new $P870, 'Hash'
    set $P868["%REG"], $P870
    set $P865, $P870
  fallback2055:
    unless_null $P865, vivi_5352056
    die "Contextual %*REG not found"
    box $P871, "Contextual %*REG not found"
    set $P865, $P871
  vivi_5352056:
    set $P864, $P865
  fallback2054:
    set $P863, $P864["eos"]
    unless_null $P863, fallback2057
    nqp_get_sc_object $P872, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P863, $P872
  fallback2057:
    find_dynamic_lex $P874, "%*REG"
    unless_null $P874, fallback2058
    get_hll_global $P877, "GLOBAL"
    get_who $P876, $P877
    set $P875, $P876["%REG"]
    unless_null $P875, fallback2059
    get_hll_global $P879, "GLOBAL"
    get_who $P878, $P879
    new $P880, 'Hash'
    set $P878["%REG"], $P880
    set $P875, $P880
  fallback2059:
    unless_null $P875, vivi_5362060
    die "Contextual %*REG not found"
    box $P881, "Contextual %*REG not found"
    set $P875, $P881
  vivi_5362060:
    set $P874, $P875
  fallback2058:
    set $P873, $P874["fail"]
    unless_null $P873, fallback2061
    nqp_get_sc_object $P882, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P873, $P882
  fallback2061:
    $P883 = $P101."push_pirop"("ne", $P853, $P863, $P873)
.annotate 'line', 3089
    find_dynamic_lex $P885, "%*REG"
    unless_null $P885, fallback2062
    get_hll_global $P888, "GLOBAL"
    get_who $P887, $P888
    set $P886, $P887["%REG"]
    unless_null $P886, fallback2063
    get_hll_global $P890, "GLOBAL"
    get_who $P889, $P890
    new $P891, 'Hash'
    set $P889["%REG"], $P891
    set $P886, $P891
  fallback2063:
    unless_null $P886, vivi_5372064
    die "Contextual %*REG not found"
    box $P892, "Contextual %*REG not found"
    set $P886, $P892
  vivi_5372064:
    set $P885, $P886
  fallback2062:
    set $P884, $P885["pos"]
    unless_null $P884, fallback2065
    nqp_get_sc_object $P893, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P884, $P893
  fallback2065:
    $P894 = $P101."push_pirop"("eq", $P884, 0, $P103)
.annotate 'line', 3090
    find_dynamic_lex $P896, "%*REG"
    unless_null $P896, fallback2066
    get_hll_global $P899, "GLOBAL"
    get_who $P898, $P899
    set $P897, $P898["%REG"]
    unless_null $P897, fallback2067
    get_hll_global $P901, "GLOBAL"
    get_who $P900, $P901
    new $P902, 'Hash'
    set $P900["%REG"], $P902
    set $P897, $P902
  fallback2067:
    unless_null $P897, vivi_5382068
    die "Contextual %*REG not found"
    box $P903, "Contextual %*REG not found"
    set $P897, $P903
  vivi_5382068:
    set $P896, $P897
  fallback2066:
    set $P895, $P896["pos"]
    unless_null $P895, fallback2069
    nqp_get_sc_object $P904, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P895, $P904
  fallback2069:
    $P905 = $P101."push_pirop"("sub", "$I11", $P895, 1)
.annotate 'line', 3091
    find_dynamic_lex $P907, "%*REG"
    unless_null $P907, fallback2070
    get_hll_global $P910, "GLOBAL"
    get_who $P909, $P910
    set $P908, $P909["%REG"]
    unless_null $P908, fallback2071
    get_hll_global $P912, "GLOBAL"
    get_who $P911, $P912
    new $P913, 'Hash'
    set $P911["%REG"], $P913
    set $P908, $P913
  fallback2071:
    unless_null $P908, vivi_5392072
    die "Contextual %*REG not found"
    box $P914, "Contextual %*REG not found"
    set $P908, $P914
  vivi_5392072:
    set $P907, $P908
  fallback2070:
    set $P906, $P907["tgt"]
    unless_null $P906, fallback2073
    nqp_get_sc_object $P915, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P906, $P915
  fallback2073:
    $P916 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P906, "$I11")
.annotate 'line', 3092
    find_dynamic_lex $P918, "%*REG"
    unless_null $P918, fallback2074
    get_hll_global $P921, "GLOBAL"
    get_who $P920, $P921
    set $P919, $P920["%REG"]
    unless_null $P919, fallback2075
    get_hll_global $P923, "GLOBAL"
    get_who $P922, $P923
    new $P924, 'Hash'
    set $P922["%REG"], $P924
    set $P919, $P924
  fallback2075:
    unless_null $P919, vivi_5402076
    die "Contextual %*REG not found"
    box $P925, "Contextual %*REG not found"
    set $P919, $P925
  vivi_5402076:
    set $P918, $P919
  fallback2074:
    set $P917, $P918["fail"]
    unless_null $P917, fallback2077
    nqp_get_sc_object $P926, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P917, $P926
  fallback2077:
    $P927 = $P101."push_pirop"("if", "$I11", $P917)
.annotate 'line', 3093
    $P928 = $P101."push"($P103)
    set $P942, $P928
    goto if531_end2041
  if531_else2040:
    set $S509, $P102
    iseq $I507, $S509, "fail"
    box $P941, $I507
    set $P940, $P941
    unless $I507 goto if541_end2079 
.annotate 'line', 3095
.annotate 'line', 3096
    find_dynamic_lex $P930, "%*REG"
    unless_null $P930, fallback2080
    get_hll_global $P933, "GLOBAL"
    get_who $P932, $P933
    set $P931, $P932["%REG"]
    unless_null $P931, fallback2081
    get_hll_global $P935, "GLOBAL"
    get_who $P934, $P935
    new $P936, 'Hash'
    set $P934["%REG"], $P936
    set $P931, $P936
  fallback2081:
    unless_null $P931, vivi_5422082
    die "Contextual %*REG not found"
    box $P937, "Contextual %*REG not found"
    set $P931, $P937
  vivi_5422082:
    set $P930, $P931
  fallback2080:
    set $P929, $P930["fail"]
    unless_null $P929, fallback2083
    nqp_get_sc_object $P938, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P929, $P938
  fallback2083:
    $P939 = $P101."push_pirop"("goto", $P929)
    set $P940, $P939
  if541_end2079:
    set $P942, $P940
  if531_end2041:
    set $P943, $P942
  if523_end2011:
    set $P944, $P943
  if514_end1977:
    set $P945, $P944
  if504_end1939:
    set $P946, $P945
  if500_end1925:
    set $P947, $P946
  if497_end1915:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_133_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P569 = 'cuid_312_1346233447.816' 
    capture_lex $P569 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$cclass", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 3113
    nqp_decontainerize $P504, _lex_param_0
    find_dynamic_lex $P506, "%*REG"
    unless_null $P506, fallback2084
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%REG"]
    unless_null $P507, fallback2085
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%REG"], $P512
    set $P507, $P512
  fallback2085:
    unless_null $P507, vivi_5432086
    die "Contextual %*REG not found"
    box $P513, "Contextual %*REG not found"
    set $P507, $P513
  vivi_5432086:
    set $P506, $P507
  fallback2084:
    set $P505, $P506["cur"]
    unless_null $P505, fallback2087
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P514
  fallback2087:
    $P515 = $P504."post_new"("Ops", $P505 :named("result"))
    set $P101, $P515
.annotate 'line', 3114
    $P516 = _lex_param_1."subtype"()
    set $P102, $P516
.annotate 'line', 3115
    find_dynamic_lex $P518, "%*REG"
    unless_null $P518, fallback2088
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    set $P519, $P520["%REG"]
    unless_null $P519, fallback2089
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    new $P524, 'Hash'
    set $P522["%REG"], $P524
    set $P519, $P524
  fallback2089:
    unless_null $P519, vivi_5442090
    die "Contextual %*REG not found"
    box $P525, "Contextual %*REG not found"
    set $P519, $P525
  vivi_5442090:
    set $P518, $P519
  fallback2088:
    set $P517, $P518["pos"]
    unless_null $P517, fallback2091
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P526
  fallback2091:
    find_dynamic_lex $P528, "%*REG"
    unless_null $P528, fallback2092
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    set $P529, $P530["%REG"]
    unless_null $P529, fallback2093
    get_hll_global $P533, "GLOBAL"
    get_who $P532, $P533
    new $P534, 'Hash'
    set $P532["%REG"], $P534
    set $P529, $P534
  fallback2093:
    unless_null $P529, vivi_5452094
    die "Contextual %*REG not found"
    box $P535, "Contextual %*REG not found"
    set $P529, $P535
  vivi_5452094:
    set $P528, $P529
  fallback2092:
    set $P527, $P528["eos"]
    unless_null $P527, fallback2095
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P536
  fallback2095:
    find_dynamic_lex $P538, "%*REG"
    unless_null $P538, fallback2096
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    set $P539, $P540["%REG"]
    unless_null $P539, fallback2097
    get_hll_global $P543, "GLOBAL"
    get_who $P542, $P543
    new $P544, 'Hash'
    set $P542["%REG"], $P544
    set $P539, $P544
  fallback2097:
    unless_null $P539, vivi_5462098
    die "Contextual %*REG not found"
    box $P545, "Contextual %*REG not found"
    set $P539, $P545
  vivi_5462098:
    set $P538, $P539
  fallback2096:
    set $P537, $P538["fail"]
    unless_null $P537, fallback2099
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P537, $P546
  fallback2099:
    $P547 = $P101."push_pirop"("ge", $P517, $P527, $P537)
    find_lex $P549, "%cclass_code"
    set $S502, $P102
    downcase $S501, $S502
    set $P548, $P549[$S501]
    unless_null $P548, fallback2100
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P548, $P550
  fallback2100:
    set $P103, $P548
    set $P553, $P103
    if $P103 goto unless547_end2102 
.annotate 'line', 3117
    nqp_decontainerize $P551, _lex_param_0
    set $S505, $P102
    concat $S504, "Unrecognized subtype '", $S505
    concat $S503, $S504, "' in QAST::Regex cclass"
    $P552 = $P551."panic"($S503)
    set $P553, $P552
  unless547_end2102:
    set $S506, $P103
    isne $I501, $S506, ".CCLASS_ANY"
    box $P557, $I501
    set $P556, $P557
    unless $I501 goto if548_end2104 
    .const 'Sub' $P554 = 'cuid_312_1346233447.816' 
    capture_lex $P554
    $P555 = $P554()
    set $P556, $P555
  if548_end2104:
.annotate 'line', 3129
    find_dynamic_lex $P559, "%*REG"
    unless_null $P559, fallback2133
    get_hll_global $P562, "GLOBAL"
    get_who $P561, $P562
    set $P560, $P561["%REG"]
    unless_null $P560, fallback2134
    get_hll_global $P564, "GLOBAL"
    get_who $P563, $P564
    new $P565, 'Hash'
    set $P563["%REG"], $P565
    set $P560, $P565
  fallback2134:
    unless_null $P560, vivi_5572135
    die "Contextual %*REG not found"
    box $P566, "Contextual %*REG not found"
    set $P560, $P566
  vivi_5572135:
    set $P559, $P560
  fallback2133:
    set $P558, $P559["pos"]
    unless_null $P558, fallback2136
    nqp_get_sc_object $P567, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P558, $P567
  fallback2136:
    $P568 = $P101."push_pirop"("add", $P558, 1)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_312_1346233447.816") :anon :lex :outer("cuid_133_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3119
    .lex "$testop", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 3120
    find_lex $P502, "$node"
    $P503 = $P502."negate"()
    unless $P503 goto if549_else2105 
    set $S501, "if"
    goto if549_end2106
  if549_else2105:
    set $S501, "unless"
  if549_end2106:
    box $P504, $S501
    set $P101, $P504
.annotate 'line', 3121
    find_lex $P505, "$ops"
    find_lex $P506, "$cclass"
    find_dynamic_lex $P508, "%*REG"
    unless_null $P508, fallback2107
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["%REG"]
    unless_null $P509, fallback2108
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    new $P514, 'Hash'
    set $P512["%REG"], $P514
    set $P509, $P514
  fallback2108:
    unless_null $P509, vivi_5502109
    die "Contextual %*REG not found"
    box $P515, "Contextual %*REG not found"
    set $P509, $P515
  vivi_5502109:
    set $P508, $P509
  fallback2107:
    set $P507, $P508["tgt"]
    unless_null $P507, fallback2110
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P516
  fallback2110:
    find_dynamic_lex $P518, "%*REG"
    unless_null $P518, fallback2111
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    set $P519, $P520["%REG"]
    unless_null $P519, fallback2112
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    new $P524, 'Hash'
    set $P522["%REG"], $P524
    set $P519, $P524
  fallback2112:
    unless_null $P519, vivi_5512113
    die "Contextual %*REG not found"
    box $P525, "Contextual %*REG not found"
    set $P519, $P525
  vivi_5512113:
    set $P518, $P519
  fallback2111:
    set $P517, $P518["pos"]
    unless_null $P517, fallback2114
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P526
  fallback2114:
    $P527 = $P505."push_pirop"("is_cclass", "$I11", $P506, $P507, $P517)
.annotate 'line', 3122
    find_lex $P528, "$ops"
    find_dynamic_lex $P530, "%*REG"
    unless_null $P530, fallback2115
    get_hll_global $P533, "GLOBAL"
    get_who $P532, $P533
    set $P531, $P532["%REG"]
    unless_null $P531, fallback2116
    get_hll_global $P535, "GLOBAL"
    get_who $P534, $P535
    new $P536, 'Hash'
    set $P534["%REG"], $P536
    set $P531, $P536
  fallback2116:
    unless_null $P531, vivi_5522117
    die "Contextual %*REG not found"
    box $P537, "Contextual %*REG not found"
    set $P531, $P537
  vivi_5522117:
    set $P530, $P531
  fallback2115:
    set $P529, $P530["fail"]
    unless_null $P529, fallback2118
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P538
  fallback2118:
    $P539 = $P528."push_pirop"($P101, "$I11", $P529)
    find_lex $P540, "$subtype"
    set $S502, $P540
    iseq $I501, $S502, "nl"
    box $P578, $I501
    set $P577, $P578
    unless $I501 goto if553_end2120 
.annotate 'line', 3123
.annotate 'line', 3124
    find_lex $P541, "$ops"
    find_dynamic_lex $P543, "%*REG"
    unless_null $P543, fallback2121
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    set $P544, $P545["%REG"]
    unless_null $P544, fallback2122
    get_hll_global $P548, "GLOBAL"
    get_who $P547, $P548
    new $P549, 'Hash'
    set $P547["%REG"], $P549
    set $P544, $P549
  fallback2122:
    unless_null $P544, vivi_5542123
    die "Contextual %*REG not found"
    box $P550, "Contextual %*REG not found"
    set $P544, $P550
  vivi_5542123:
    set $P543, $P544
  fallback2121:
    set $P542, $P543["tgt"]
    unless_null $P542, fallback2124
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P551
  fallback2124:
    find_dynamic_lex $P553, "%*REG"
    unless_null $P553, fallback2125
    get_hll_global $P556, "GLOBAL"
    get_who $P555, $P556
    set $P554, $P555["%REG"]
    unless_null $P554, fallback2126
    get_hll_global $P558, "GLOBAL"
    get_who $P557, $P558
    new $P559, 'Hash'
    set $P557["%REG"], $P559
    set $P554, $P559
  fallback2126:
    unless_null $P554, vivi_5552127
    die "Contextual %*REG not found"
    box $P560, "Contextual %*REG not found"
    set $P554, $P560
  vivi_5552127:
    set $P553, $P554
  fallback2125:
    set $P552, $P553["pos"]
    unless_null $P552, fallback2128
    nqp_get_sc_object $P561, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P552, $P561
  fallback2128:
    $P562 = $P541."push_pirop"("substr", "$S10", $P542, $P552, 2)
.annotate 'line', 3125
    find_lex $P563, "$ops"
    $P564 = $P563."push_pirop"("iseq", "$I11", "$S10", "\"\\r\\n\"")
.annotate 'line', 3126
    find_lex $P565, "$ops"
    find_dynamic_lex $P567, "%*REG"
    unless_null $P567, fallback2129
    get_hll_global $P570, "GLOBAL"
    get_who $P569, $P570
    set $P568, $P569["%REG"]
    unless_null $P568, fallback2130
    get_hll_global $P572, "GLOBAL"
    get_who $P571, $P572
    new $P573, 'Hash'
    set $P571["%REG"], $P573
    set $P568, $P573
  fallback2130:
    unless_null $P568, vivi_5562131
    die "Contextual %*REG not found"
    box $P574, "Contextual %*REG not found"
    set $P568, $P574
  vivi_5562131:
    set $P567, $P568
  fallback2129:
    set $P566, $P567["pos"]
    unless_null $P566, fallback2132
    nqp_get_sc_object $P575, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P566, $P575
  fallback2132:
    $P576 = $P565."push_pirop"("add", $P566, "$I11")
    set $P577, $P576
  if553_end2120:
    .return ($P577) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_134_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3133
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P521 = 'cuid_313_1346233447.816' 
    capture_lex $P521 
    .lex "$ops", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 3134
    nqp_decontainerize $P502, _lex_param_0
    find_dynamic_lex $P504, "%*REG"
    unless_null $P504, fallback2137
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    set $P505, $P506["%REG"]
    unless_null $P505, fallback2138
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    new $P510, 'Hash'
    set $P508["%REG"], $P510
    set $P505, $P510
  fallback2138:
    unless_null $P505, vivi_5582139
    die "Contextual %*REG not found"
    box $P511, "Contextual %*REG not found"
    set $P505, $P511
  vivi_5582139:
    set $P504, $P505
  fallback2137:
    set $P503, $P504["cur"]
    unless_null $P503, fallback2140
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P512
  fallback2140:
    $P513 = $P502."post_new"("Ops", $P503 :named("result"))
    set $P101, $P513
.annotate 'line', 3135
    $P517 = _lex_param_1."list"()
    set $P514, $P517
    iter $P516, $P517
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers2141
    push_eh $P519
  for_next2142:
    unless $P516, for_done2144
    shift $P520, $P516
  for_redo2143:
    .const 'Sub' $P518 = 'cuid_313_1346233447.816' 
    capture_lex $P518
    $P514 = $P518($P520)
    goto for_next2142
  for_handlers2141:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next2142
    eq $P519, .CONTROL_LOOP_REDO, for_redo2143
  for_done2144:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1346233447.816") :anon :lex :outer("cuid_134_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3135
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$ops"
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."regex_post"(_lex_param_0)
    $P505 = $P501."push"($P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "conj" :subid("cuid_135_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3139
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."conjseq"(_lex_param_1)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "conjseq" :subid("cuid_136_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$conjlabel", $P103 
    .lex "$firstlabel", $P104 
    .lex "$iter", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3142
    nqp_decontainerize $P506, _lex_param_0
    find_dynamic_lex $P508, "%*REG"
    unless_null $P508, fallback2145
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["%REG"]
    unless_null $P509, fallback2146
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    new $P514, 'Hash'
    set $P512["%REG"], $P514
    set $P509, $P514
  fallback2146:
    unless_null $P509, vivi_5592147
    die "Contextual %*REG not found"
    box $P515, "Contextual %*REG not found"
    set $P509, $P515
  vivi_5592147:
    set $P508, $P509
  fallback2145:
    set $P507, $P508["cur"]
    unless_null $P507, fallback2148
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P516
  fallback2148:
    $P517 = $P506."post_new"("Ops", $P507 :named("result"))
    set $P101, $P517
.annotate 'line', 3143
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P518."unique"("rxconj")
    set $S502, $P519
    concat $S501, $S502, "_"
    box $P520, $S501
    set $P102, $P520
.annotate 'line', 3144
    nqp_decontainerize $P521, _lex_param_0
    set $S504, $P102
    concat $S503, $S504, "fail"
    $P522 = $P521."post_new"("Label", $S503 :named("name"))
    set $P103, $P522
.annotate 'line', 3145
    nqp_decontainerize $P523, _lex_param_0
    set $S506, $P102
    concat $S505, $S506, "first"
    $P524 = $P523."post_new"("Label", $S505 :named("name"))
    set $P104, $P524
.annotate 'line', 3146
    $P526 = _lex_param_1."list"()
    iter $P525, $P526
    set $P105, $P525
.annotate 'line', 3148
    nqp_decontainerize $P527, _lex_param_0
    find_dynamic_lex $P529, "%*REG"
    unless_null $P529, fallback2149
    get_hll_global $P532, "GLOBAL"
    get_who $P531, $P532
    set $P530, $P531["%REG"]
    unless_null $P530, fallback2150
    get_hll_global $P534, "GLOBAL"
    get_who $P533, $P534
    new $P535, 'Hash'
    set $P533["%REG"], $P535
    set $P530, $P535
  fallback2150:
    unless_null $P530, vivi_5602151
    die "Contextual %*REG not found"
    box $P536, "Contextual %*REG not found"
    set $P530, $P536
  vivi_5602151:
    set $P529, $P530
  fallback2149:
    set $P528, $P529["pos"]
    unless_null $P528, fallback2152
    nqp_get_sc_object $P537, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P537
  fallback2152:
    $P538 = $P527."regex_mark"($P101, $P103, $P528, 0)
.annotate 'line', 3149
    $P539 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3150
    $P540 = $P101."push"($P103)
.annotate 'line', 3151
    find_dynamic_lex $P542, "%*REG"
    unless_null $P542, fallback2153
    get_hll_global $P545, "GLOBAL"
    get_who $P544, $P545
    set $P543, $P544["%REG"]
    unless_null $P543, fallback2154
    get_hll_global $P547, "GLOBAL"
    get_who $P546, $P547
    new $P548, 'Hash'
    set $P546["%REG"], $P548
    set $P543, $P548
  fallback2154:
    unless_null $P543, vivi_5612155
    die "Contextual %*REG not found"
    box $P549, "Contextual %*REG not found"
    set $P543, $P549
  vivi_5612155:
    set $P542, $P543
  fallback2153:
    set $P541, $P542["fail"]
    unless_null $P541, fallback2156
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P550
  fallback2156:
    $P551 = $P101."push_pirop"("goto", $P541)
.annotate 'line', 3153
    $P552 = $P101."push"($P104)
.annotate 'line', 3154
    nqp_decontainerize $P553, _lex_param_0
    shift $P554, $P105
    $P555 = $P553."regex_post"($P554)
    $P556 = $P101."push"($P555)
.annotate 'line', 3156
    nqp_decontainerize $P557, _lex_param_0
    $P558 = $P557."regex_peek"($P101, $P103, "$I11")
.annotate 'line', 3157
    nqp_decontainerize $P559, _lex_param_0
    find_dynamic_lex $P561, "%*REG"
    unless_null $P561, fallback2157
    get_hll_global $P564, "GLOBAL"
    get_who $P563, $P564
    set $P562, $P563["%REG"]
    unless_null $P562, fallback2158
    get_hll_global $P566, "GLOBAL"
    get_who $P565, $P566
    new $P567, 'Hash'
    set $P565["%REG"], $P567
    set $P562, $P567
  fallback2158:
    unless_null $P562, vivi_5622159
    die "Contextual %*REG not found"
    box $P568, "Contextual %*REG not found"
    set $P562, $P568
  vivi_5622159:
    set $P561, $P562
  fallback2157:
    set $P560, $P561["pos"]
    unless_null $P560, fallback2160
    nqp_get_sc_object $P569, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P560, $P569
  fallback2160:
    $P570 = $P559."regex_mark"($P101, $P103, "$I11", $P560)
    new $P610, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P610, while563_handlers2164
    push_eh $P610
  while563_test2161:
    set $P609, $P105
    unless $P105 goto while563_done2165 
  while563_redo2163:
.annotate 'line', 3159
.annotate 'line', 3160
    find_dynamic_lex $P572, "%*REG"
    unless_null $P572, fallback2166
    get_hll_global $P575, "GLOBAL"
    get_who $P574, $P575
    set $P573, $P574["%REG"]
    unless_null $P573, fallback2167
    get_hll_global $P577, "GLOBAL"
    get_who $P576, $P577
    new $P578, 'Hash'
    set $P576["%REG"], $P578
    set $P573, $P578
  fallback2167:
    unless_null $P573, vivi_5642168
    die "Contextual %*REG not found"
    box $P579, "Contextual %*REG not found"
    set $P573, $P579
  vivi_5642168:
    set $P572, $P573
  fallback2166:
    set $P571, $P572["pos"]
    unless_null $P571, fallback2169
    nqp_get_sc_object $P580, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P571, $P580
  fallback2169:
    $P581 = $P101."push_pirop"("set", $P571, "$I11")
.annotate 'line', 3161
    nqp_decontainerize $P582, _lex_param_0
    shift $P583, $P105
    $P584 = $P582."regex_post"($P583)
    $P585 = $P101."push"($P584)
.annotate 'line', 3162
    nqp_decontainerize $P586, _lex_param_0
    $P587 = $P586."regex_peek"($P101, $P103, "$I11", "$I12")
.annotate 'line', 3163
    find_dynamic_lex $P589, "%*REG"
    unless_null $P589, fallback2170
    get_hll_global $P592, "GLOBAL"
    get_who $P591, $P592
    set $P590, $P591["%REG"]
    unless_null $P590, fallback2171
    get_hll_global $P594, "GLOBAL"
    get_who $P593, $P594
    new $P595, 'Hash'
    set $P593["%REG"], $P595
    set $P590, $P595
  fallback2171:
    unless_null $P590, vivi_5652172
    die "Contextual %*REG not found"
    box $P596, "Contextual %*REG not found"
    set $P590, $P596
  vivi_5652172:
    set $P589, $P590
  fallback2170:
    set $P588, $P589["pos"]
    unless_null $P588, fallback2173
    nqp_get_sc_object $P597, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P588, $P597
  fallback2173:
    find_dynamic_lex $P599, "%*REG"
    unless_null $P599, fallback2174
    get_hll_global $P602, "GLOBAL"
    get_who $P601, $P602
    set $P600, $P601["%REG"]
    unless_null $P600, fallback2175
    get_hll_global $P604, "GLOBAL"
    get_who $P603, $P604
    new $P605, 'Hash'
    set $P603["%REG"], $P605
    set $P600, $P605
  fallback2175:
    unless_null $P600, vivi_5662176
    die "Contextual %*REG not found"
    box $P606, "Contextual %*REG not found"
    set $P600, $P606
  vivi_5662176:
    set $P599, $P600
  fallback2174:
    set $P598, $P599["fail"]
    unless_null $P598, fallback2177
    nqp_get_sc_object $P607, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P598, $P607
  fallback2177:
    $P608 = $P101."push_pirop"("ne", $P588, "$I12", $P598)
    set $P609, $P608
    goto while563_test2161 
  while563_handlers2164:
    .get_results ($P610)
    pop_upto_eh $P610
    getattribute $P610, $P610, 'type'
    eq $P610, .CONTROL_LOOP_NEXT, while563_test2161
    eq $P610, .CONTROL_LOOP_REDO, while563_redo2163
  while563_done2165:
    pop_eh 
.annotate 'line', 3165
    $P611 = _lex_param_1."subtype"()
    set $S507, $P611
    iseq $I501, $S507, "zerowidth"
    box $P624, $I501
    set $P623, $P624
    unless $I501 goto if567_end2179 
    find_dynamic_lex $P613, "%*REG"
    unless_null $P613, fallback2180
    get_hll_global $P616, "GLOBAL"
    get_who $P615, $P616
    set $P614, $P615["%REG"]
    unless_null $P614, fallback2181
    get_hll_global $P618, "GLOBAL"
    get_who $P617, $P618
    new $P619, 'Hash'
    set $P617["%REG"], $P619
    set $P614, $P619
  fallback2181:
    unless_null $P614, vivi_5682182
    die "Contextual %*REG not found"
    box $P620, "Contextual %*REG not found"
    set $P614, $P620
  vivi_5682182:
    set $P613, $P614
  fallback2180:
    set $P612, $P613["pos"]
    unless_null $P612, fallback2183
    nqp_get_sc_object $P621, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P612, $P621
  fallback2183:
    $P622 = $P101."push_pirop"("set", $P612, "$I11")
    set $P623, $P622
  if567_end2179:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_137_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3169
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$charlist", $P102 
    .lex "$testop", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 3170
    nqp_decontainerize $P504, _lex_param_0
    find_dynamic_lex $P506, "%*REG"
    unless_null $P506, fallback2184
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%REG"]
    unless_null $P507, fallback2185
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%REG"], $P512
    set $P507, $P512
  fallback2185:
    unless_null $P507, vivi_5692186
    die "Contextual %*REG not found"
    box $P513, "Contextual %*REG not found"
    set $P507, $P513
  vivi_5692186:
    set $P506, $P507
  fallback2184:
    set $P505, $P506["cur"]
    unless_null $P505, fallback2187
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P514
  fallback2187:
    $P515 = $P504."post_new"("Ops", $P505 :named("result"))
    set $P101, $P515
.annotate 'line', 3171
    nqp_decontainerize $P516, _lex_param_0
    set $P517, _lex_param_1[0]
    unless_null $P517, fallback2188
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback2188:
    $P519 = $P516."rxescape"($P517)
    set $P102, $P519
.annotate 'line', 3172
    $P520 = _lex_param_1."negate"()
    unless $P520 goto if570_else2189 
    set $S501, "ge"
    goto if570_end2190
  if570_else2189:
    set $S501, "lt"
  if570_end2190:
    box $P521, $S501
    set $P103, $P521
.annotate 'line', 3173
    find_dynamic_lex $P523, "%*REG"
    unless_null $P523, fallback2191
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["%REG"]
    unless_null $P524, fallback2192
    get_hll_global $P528, "GLOBAL"
    get_who $P527, $P528
    new $P529, 'Hash'
    set $P527["%REG"], $P529
    set $P524, $P529
  fallback2192:
    unless_null $P524, vivi_5712193
    die "Contextual %*REG not found"
    box $P530, "Contextual %*REG not found"
    set $P524, $P530
  vivi_5712193:
    set $P523, $P524
  fallback2191:
    set $P522, $P523["pos"]
    unless_null $P522, fallback2194
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P531
  fallback2194:
    find_dynamic_lex $P533, "%*REG"
    unless_null $P533, fallback2195
    get_hll_global $P536, "GLOBAL"
    get_who $P535, $P536
    set $P534, $P535["%REG"]
    unless_null $P534, fallback2196
    get_hll_global $P538, "GLOBAL"
    get_who $P537, $P538
    new $P539, 'Hash'
    set $P537["%REG"], $P539
    set $P534, $P539
  fallback2196:
    unless_null $P534, vivi_5722197
    die "Contextual %*REG not found"
    box $P540, "Contextual %*REG not found"
    set $P534, $P540
  vivi_5722197:
    set $P533, $P534
  fallback2195:
    set $P532, $P533["eos"]
    unless_null $P532, fallback2198
    nqp_get_sc_object $P541, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P532, $P541
  fallback2198:
    find_dynamic_lex $P543, "%*REG"
    unless_null $P543, fallback2199
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    set $P544, $P545["%REG"]
    unless_null $P544, fallback2200
    get_hll_global $P548, "GLOBAL"
    get_who $P547, $P548
    new $P549, 'Hash'
    set $P547["%REG"], $P549
    set $P544, $P549
  fallback2200:
    unless_null $P544, vivi_5732201
    die "Contextual %*REG not found"
    box $P550, "Contextual %*REG not found"
    set $P544, $P550
  vivi_5732201:
    set $P543, $P544
  fallback2199:
    set $P542, $P543["fail"]
    unless_null $P542, fallback2202
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P551
  fallback2202:
    $P552 = $P101."push_pirop"("ge", $P522, $P532, $P542)
.annotate 'line', 3174
    find_dynamic_lex $P554, "%*REG"
    unless_null $P554, fallback2203
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    set $P555, $P556["%REG"]
    unless_null $P555, fallback2204
    get_hll_global $P559, "GLOBAL"
    get_who $P558, $P559
    new $P560, 'Hash'
    set $P558["%REG"], $P560
    set $P555, $P560
  fallback2204:
    unless_null $P555, vivi_5742205
    die "Contextual %*REG not found"
    box $P561, "Contextual %*REG not found"
    set $P555, $P561
  vivi_5742205:
    set $P554, $P555
  fallback2203:
    set $P553, $P554["tgt"]
    unless_null $P553, fallback2206
    nqp_get_sc_object $P562, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P553, $P562
  fallback2206:
    find_dynamic_lex $P564, "%*REG"
    unless_null $P564, fallback2207
    get_hll_global $P567, "GLOBAL"
    get_who $P566, $P567
    set $P565, $P566["%REG"]
    unless_null $P565, fallback2208
    get_hll_global $P569, "GLOBAL"
    get_who $P568, $P569
    new $P570, 'Hash'
    set $P568["%REG"], $P570
    set $P565, $P570
  fallback2208:
    unless_null $P565, vivi_5752209
    die "Contextual %*REG not found"
    box $P571, "Contextual %*REG not found"
    set $P565, $P571
  vivi_5752209:
    set $P564, $P565
  fallback2207:
    set $P563, $P564["pos"]
    unless_null $P563, fallback2210
    nqp_get_sc_object $P572, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P563, $P572
  fallback2210:
    $P573 = $P101."push_pirop"("substr", "$S11", $P553, $P563, 1)
.annotate 'line', 3175
    $P574 = $P101."push_pirop"("index", "$I11", $P102, "$S11")
.annotate 'line', 3176
    find_dynamic_lex $P576, "%*REG"
    unless_null $P576, fallback2211
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    set $P577, $P578["%REG"]
    unless_null $P577, fallback2212
    get_hll_global $P581, "GLOBAL"
    get_who $P580, $P581
    new $P582, 'Hash'
    set $P580["%REG"], $P582
    set $P577, $P582
  fallback2212:
    unless_null $P577, vivi_5762213
    die "Contextual %*REG not found"
    box $P583, "Contextual %*REG not found"
    set $P577, $P583
  vivi_5762213:
    set $P576, $P577
  fallback2211:
    set $P575, $P576["fail"]
    unless_null $P575, fallback2214
    nqp_get_sc_object $P584, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P575, $P584
  fallback2214:
    $P585 = $P101."push_pirop"($P103, "$I11", 0, $P575)
.annotate 'line', 3177
    $P586 = _lex_param_1."subtype"()
    set $S502, $P586
    iseq $I501, $S502, "zerowidth"
    box $P599, $I501
    set $P598, $P599
    if $I501 goto unless577_end2216 
    find_dynamic_lex $P588, "%*REG"
    unless_null $P588, fallback2217
    get_hll_global $P591, "GLOBAL"
    get_who $P590, $P591
    set $P589, $P590["%REG"]
    unless_null $P589, fallback2218
    get_hll_global $P593, "GLOBAL"
    get_who $P592, $P593
    new $P594, 'Hash'
    set $P592["%REG"], $P594
    set $P589, $P594
  fallback2218:
    unless_null $P589, vivi_5782219
    die "Contextual %*REG not found"
    box $P595, "Contextual %*REG not found"
    set $P589, $P595
  vivi_5782219:
    set $P588, $P589
  fallback2217:
    set $P587, $P588["pos"]
    unless_null $P587, fallback2220
    nqp_get_sc_object $P596, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P587, $P596
  fallback2220:
    $P597 = $P101."push_pirop"("inc", $P587)
    set $P598, $P597
  unless577_end2216:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_138_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$litconst", $P102 
    .lex "$litlen", $P103 
    .lex "$litpost", $P104 
    .lex "$cmpop", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3182
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."post_new"("Ops")
    set $P101, $P507
    set $P508, _lex_param_1[0]
    unless_null $P508, fallback2221
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P509
  fallback2221:
    set $P102, $P508
.annotate 'line', 3185
    $P510 = _lex_param_1."subtype"()
    set $S501, $P510
    iseq $I501, $S501, "ignorecase"
    box $P513, $I501
    set $P512, $P513
    unless $I501 goto if579_end2223 
    set $S503, $P102
    downcase $S502, $S503
    box $P511, $S502
    set $P102, $P511
    set $P512, $P102
  if579_end2223:
    set $S504, $P102
    length $I502, $S504
    box $P514, $I502
    set $P103, $P514
.annotate 'line', 3187
    nqp_decontainerize $P515, _lex_param_0
    $P516 = $P515."rxescape"($P102)
    set $P104, $P516
.annotate 'line', 3188
    $P517 = _lex_param_1."negate"()
    unless $P517 goto if580_else2224 
    set $S505, "eq"
    goto if580_end2225
  if580_else2224:
    set $S505, "ne"
  if580_end2225:
    box $P518, $S505
    set $P105, $P518
.annotate 'line', 3189
    find_dynamic_lex $P520, "%*REG"
    unless_null $P520, fallback2226
    get_hll_global $P523, "GLOBAL"
    get_who $P522, $P523
    set $P521, $P522["%REG"]
    unless_null $P521, fallback2227
    get_hll_global $P525, "GLOBAL"
    get_who $P524, $P525
    new $P526, 'Hash'
    set $P524["%REG"], $P526
    set $P521, $P526
  fallback2227:
    unless_null $P521, vivi_5812228
    die "Contextual %*REG not found"
    box $P527, "Contextual %*REG not found"
    set $P521, $P527
  vivi_5812228:
    set $P520, $P521
  fallback2226:
    set $P519, $P520["pos"]
    unless_null $P519, fallback2229
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P528
  fallback2229:
    $P529 = $P101."push_pirop"("add", "$I11", $P519, $P103)
.annotate 'line', 3190
    find_dynamic_lex $P531, "%*REG"
    unless_null $P531, fallback2230
    get_hll_global $P534, "GLOBAL"
    get_who $P533, $P534
    set $P532, $P533["%REG"]
    unless_null $P532, fallback2231
    get_hll_global $P536, "GLOBAL"
    get_who $P535, $P536
    new $P537, 'Hash'
    set $P535["%REG"], $P537
    set $P532, $P537
  fallback2231:
    unless_null $P532, vivi_5822232
    die "Contextual %*REG not found"
    box $P538, "Contextual %*REG not found"
    set $P532, $P538
  vivi_5822232:
    set $P531, $P532
  fallback2230:
    set $P530, $P531["eos"]
    unless_null $P530, fallback2233
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P530, $P539
  fallback2233:
    find_dynamic_lex $P541, "%*REG"
    unless_null $P541, fallback2234
    get_hll_global $P544, "GLOBAL"
    get_who $P543, $P544
    set $P542, $P543["%REG"]
    unless_null $P542, fallback2235
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    new $P547, 'Hash'
    set $P545["%REG"], $P547
    set $P542, $P547
  fallback2235:
    unless_null $P542, vivi_5832236
    die "Contextual %*REG not found"
    box $P548, "Contextual %*REG not found"
    set $P542, $P548
  vivi_5832236:
    set $P541, $P542
  fallback2234:
    set $P540, $P541["fail"]
    unless_null $P540, fallback2237
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P540, $P549
  fallback2237:
    $P550 = $P101."push_pirop"("gt", "$I11", $P530, $P540)
.annotate 'line', 3191
    find_dynamic_lex $P552, "%*REG"
    unless_null $P552, fallback2238
    get_hll_global $P555, "GLOBAL"
    get_who $P554, $P555
    set $P553, $P554["%REG"]
    unless_null $P553, fallback2239
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    new $P558, 'Hash'
    set $P556["%REG"], $P558
    set $P553, $P558
  fallback2239:
    unless_null $P553, vivi_5842240
    die "Contextual %*REG not found"
    box $P559, "Contextual %*REG not found"
    set $P553, $P559
  vivi_5842240:
    set $P552, $P553
  fallback2238:
    set $P551, $P552["tgt"]
    unless_null $P551, fallback2241
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P560
  fallback2241:
    find_dynamic_lex $P562, "%*REG"
    unless_null $P562, fallback2242
    get_hll_global $P565, "GLOBAL"
    get_who $P564, $P565
    set $P563, $P564["%REG"]
    unless_null $P563, fallback2243
    get_hll_global $P567, "GLOBAL"
    get_who $P566, $P567
    new $P568, 'Hash'
    set $P566["%REG"], $P568
    set $P563, $P568
  fallback2243:
    unless_null $P563, vivi_5852244
    die "Contextual %*REG not found"
    box $P569, "Contextual %*REG not found"
    set $P563, $P569
  vivi_5852244:
    set $P562, $P563
  fallback2242:
    set $P561, $P562["pos"]
    unless_null $P561, fallback2245
    nqp_get_sc_object $P570, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P570
  fallback2245:
    $P571 = $P101."push_pirop"("substr", "$S10", $P551, $P561, $P103)
.annotate 'line', 3193
    $P572 = _lex_param_1."subtype"()
    set $S506, $P572
    iseq $I503, $S506, "ignorecase"
    box $P575, $I503
    set $P574, $P575
    unless $I503 goto if586_end2247 
.annotate 'line', 3192
    $P573 = $P101."push_pirop"("downcase", "$S10", "$S10")
    set $P574, $P573
  if586_end2247:
.annotate 'line', 3194
    find_dynamic_lex $P577, "%*REG"
    unless_null $P577, fallback2248
    get_hll_global $P580, "GLOBAL"
    get_who $P579, $P580
    set $P578, $P579["%REG"]
    unless_null $P578, fallback2249
    get_hll_global $P582, "GLOBAL"
    get_who $P581, $P582
    new $P583, 'Hash'
    set $P581["%REG"], $P583
    set $P578, $P583
  fallback2249:
    unless_null $P578, vivi_5872250
    die "Contextual %*REG not found"
    box $P584, "Contextual %*REG not found"
    set $P578, $P584
  vivi_5872250:
    set $P577, $P578
  fallback2248:
    set $P576, $P577["fail"]
    unless_null $P576, fallback2251
    nqp_get_sc_object $P585, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P576, $P585
  fallback2251:
    $P586 = $P101."push_pirop"($P105, "$S10", $P104, $P576)
.annotate 'line', 3195
    find_dynamic_lex $P588, "%*REG"
    unless_null $P588, fallback2252
    get_hll_global $P591, "GLOBAL"
    get_who $P590, $P591
    set $P589, $P590["%REG"]
    unless_null $P589, fallback2253
    get_hll_global $P593, "GLOBAL"
    get_who $P592, $P593
    new $P594, 'Hash'
    set $P592["%REG"], $P594
    set $P589, $P594
  fallback2253:
    unless_null $P589, vivi_5882254
    die "Contextual %*REG not found"
    box $P595, "Contextual %*REG not found"
    set $P589, $P595
  vivi_5882254:
    set $P588, $P589
  fallback2252:
    set $P587, $P588["pos"]
    unless_null $P587, fallback2255
    nqp_get_sc_object $P596, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P587, $P596
  fallback2255:
    $P597 = $P101."push_pirop"("add", $P587, $P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "pass" :subid("cuid_139_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3199
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P556 = 'cuid_314_1346233447.816' 
    capture_lex $P556 
    .lex "$ops", $P101 
    .lex "@backtrack", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
.annotate 'line', 3200
    nqp_decontainerize $P503, _lex_param_0
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback2256
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback2257
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback2257:
    unless_null $P506, vivi_5892258
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_5892258:
    set $P505, $P506
  fallback2256:
    set $P504, $P505["cur"]
    unless_null $P504, fallback2259
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P513
  fallback2259:
    $P514 = $P503."post_new"("Ops", $P504 :named("result"))
    set $P101, $P514
.annotate 'line', 3202
    $P515 = _lex_param_1."backtrack"()
    set $S501, $P515
    isne $I501, $S501, "r"
    box $P519, $I501
    set $P518, $P519
    unless $I501 goto if590_end2261 
    new $P516, 'ResizablePMCArray'
    box $P517, "'backtrack'=>1"
    push $P516, $P517
    set $P102, $P516
    set $P518, $P102
  if590_end2261:
.annotate 'line', 3203
    $P520 = _lex_param_1."name"()
    unless $P520 goto if591_else2262 
    .const 'Sub' $P521 = 'cuid_314_1346233447.816' 
    capture_lex $P521
    $P522 = $P521()
    set $P544, $P522
    goto if591_end2263
  if591_else2262:
.annotate 'line', 3207
.annotate 'line', 3208
    find_dynamic_lex $P524, "%*REG"
    unless_null $P524, fallback2275
    get_hll_global $P527, "GLOBAL"
    get_who $P526, $P527
    set $P525, $P526["%REG"]
    unless_null $P525, fallback2276
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    new $P530, 'Hash'
    set $P528["%REG"], $P530
    set $P525, $P530
  fallback2276:
    unless_null $P525, vivi_5952277
    die "Contextual %*REG not found"
    box $P531, "Contextual %*REG not found"
    set $P525, $P531
  vivi_5952277:
    set $P524, $P525
  fallback2275:
    set $P523, $P524["cur"]
    unless_null $P523, fallback2278
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P532
  fallback2278:
    find_dynamic_lex $P534, "%*REG"
    unless_null $P534, fallback2279
    get_hll_global $P537, "GLOBAL"
    get_who $P536, $P537
    set $P535, $P536["%REG"]
    unless_null $P535, fallback2280
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    new $P540, 'Hash'
    set $P538["%REG"], $P540
    set $P535, $P540
  fallback2280:
    unless_null $P535, vivi_5962281
    die "Contextual %*REG not found"
    box $P541, "Contextual %*REG not found"
    set $P535, $P541
  vivi_5962281:
    set $P534, $P535
  fallback2279:
    set $P533, $P534["pos"]
    unless_null $P533, fallback2282
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P533, $P542
  fallback2282:
    $P543 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", $P523, $P533, $P102 :flat)
    set $P544, $P543
  if591_end2263:
.annotate 'line', 3210
    find_dynamic_lex $P546, "%*REG"
    unless_null $P546, fallback2283
    get_hll_global $P549, "GLOBAL"
    get_who $P548, $P549
    set $P547, $P548["%REG"]
    unless_null $P547, fallback2284
    get_hll_global $P551, "GLOBAL"
    get_who $P550, $P551
    new $P552, 'Hash'
    set $P550["%REG"], $P552
    set $P547, $P552
  fallback2284:
    unless_null $P547, vivi_5972285
    die "Contextual %*REG not found"
    box $P553, "Contextual %*REG not found"
    set $P547, $P553
  vivi_5972285:
    set $P546, $P547
  fallback2283:
    set $P545, $P546["cur"]
    unless_null $P545, fallback2286
    nqp_get_sc_object $P554, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P545, $P554
  fallback2286:
    $P555 = $P101."push_pirop"("return", $P545)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_314_1346233447.816") :anon :lex :outer("cuid_139_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3203
    .lex "$name", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 3204
    find_dynamic_lex $P502, "$*PASTCOMPILER"
    unless_null $P502, fallback2264
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["$PASTCOMPILER"]
    unless_null $P503, fallback2265
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P506
  fallback2265:
    unless_null $P503, vivi_5922266
    die "Contextual $*PASTCOMPILER not found"
    box $P507, "Contextual $*PASTCOMPILER not found"
    set $P503, $P507
  vivi_5922266:
    set $P502, $P503
  fallback2264:
    find_lex $P508, "$node"
    $P509 = $P508."name"()
    $P510 = $P502."as_post"($P509, "~" :named("rtype"))
    set $P101, $P510
.annotate 'line', 3205
    find_lex $P511, "$ops"
    find_dynamic_lex $P513, "%*REG"
    unless_null $P513, fallback2267
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["%REG"]
    unless_null $P514, fallback2268
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    new $P519, 'Hash'
    set $P517["%REG"], $P519
    set $P514, $P519
  fallback2268:
    unless_null $P514, vivi_5932269
    die "Contextual %*REG not found"
    box $P520, "Contextual %*REG not found"
    set $P514, $P520
  vivi_5932269:
    set $P513, $P514
  fallback2267:
    set $P512, $P513["cur"]
    unless_null $P512, fallback2270
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P521
  fallback2270:
    find_dynamic_lex $P523, "%*REG"
    unless_null $P523, fallback2271
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["%REG"]
    unless_null $P524, fallback2272
    get_hll_global $P528, "GLOBAL"
    get_who $P527, $P528
    new $P529, 'Hash'
    set $P527["%REG"], $P529
    set $P524, $P529
  fallback2272:
    unless_null $P524, vivi_5942273
    die "Contextual %*REG not found"
    box $P530, "Contextual %*REG not found"
    set $P524, $P530
  vivi_5942273:
    set $P523, $P524
  fallback2271:
    set $P522, $P523["pos"]
    unless_null $P522, fallback2274
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P531
  fallback2274:
    find_lex $P532, "@backtrack"
    $P533 = $P511."push_pirop"("callmethod", "\"!cursor_pass\"", $P512, $P522, $P101, $P532 :flat)
    .return ($P533) 
.end
.HLL "nqp"
.namespace []
.sub "pastnode" :subid("cuid_140_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3214
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cpost", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3215
    nqp_decontainerize $P503, _lex_param_0
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback2287
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback2288
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback2288:
    unless_null $P506, vivi_5982289
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_5982289:
    set $P505, $P506
  fallback2287:
    set $P504, $P505["cur"]
    unless_null $P504, fallback2290
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P513
  fallback2290:
    $P514 = $P503."post_new"("Ops", $P504 :named("result"))
    set $P101, $P514
.annotate 'line', 3216
    find_dynamic_lex $P516, "%*REG"
    unless_null $P516, fallback2291
    get_hll_global $P519, "GLOBAL"
    get_who $P518, $P519
    set $P517, $P518["%REG"]
    unless_null $P517, fallback2292
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    new $P522, 'Hash'
    set $P520["%REG"], $P522
    set $P517, $P522
  fallback2292:
    unless_null $P517, vivi_5992293
    die "Contextual %*REG not found"
    box $P523, "Contextual %*REG not found"
    set $P517, $P523
  vivi_5992293:
    set $P516, $P517
  fallback2291:
    set $P515, $P516["cur"]
    unless_null $P515, fallback2294
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P524
  fallback2294:
    find_dynamic_lex $P526, "%*REG"
    unless_null $P526, fallback2295
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    set $P527, $P528["%REG"]
    unless_null $P527, fallback2296
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    new $P532, 'Hash'
    set $P530["%REG"], $P532
    set $P527, $P532
  fallback2296:
    unless_null $P527, vivi_6002297
    die "Contextual %*REG not found"
    box $P533, "Contextual %*REG not found"
    set $P527, $P533
  vivi_6002297:
    set $P526, $P527
  fallback2295:
    set $P525, $P526["curclass"]
    unless_null $P525, fallback2298
    nqp_get_sc_object $P534, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P534
  fallback2298:
    find_dynamic_lex $P536, "%*REG"
    unless_null $P536, fallback2299
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    set $P537, $P538["%REG"]
    unless_null $P537, fallback2300
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    new $P542, 'Hash'
    set $P540["%REG"], $P542
    set $P537, $P542
  fallback2300:
    unless_null $P537, vivi_6012301
    die "Contextual %*REG not found"
    box $P543, "Contextual %*REG not found"
    set $P537, $P543
  vivi_6012301:
    set $P536, $P537
  fallback2299:
    set $P535, $P536["pos"]
    unless_null $P535, fallback2302
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P544
  fallback2302:
    $P545 = $P101."push_pirop"("repr_bind_attr_int", $P515, $P525, "\"$!pos\"", $P535)
.annotate 'line', 3217
    find_dynamic_lex $P547, "%*REG"
    unless_null $P547, fallback2303
    get_hll_global $P550, "GLOBAL"
    get_who $P549, $P550
    set $P548, $P549["%REG"]
    unless_null $P548, fallback2304
    get_hll_global $P552, "GLOBAL"
    get_who $P551, $P552
    new $P553, 'Hash'
    set $P551["%REG"], $P553
    set $P548, $P553
  fallback2304:
    unless_null $P548, vivi_6022305
    die "Contextual %*REG not found"
    box $P554, "Contextual %*REG not found"
    set $P548, $P554
  vivi_6022305:
    set $P547, $P548
  fallback2303:
    set $P546, $P547["cur"]
    unless_null $P546, fallback2306
    nqp_get_sc_object $P555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P555
  fallback2306:
    $P556 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P546)
.annotate 'line', 3218
    find_dynamic_lex $P557, "$*PASTCOMPILER"
    unless_null $P557, fallback2307
    get_hll_global $P560, "GLOBAL"
    get_who $P559, $P560
    set $P558, $P559["$PASTCOMPILER"]
    unless_null $P558, fallback2308
    nqp_get_sc_object $P561, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P558, $P561
  fallback2308:
    unless_null $P558, vivi_6032309
    die "Contextual $*PASTCOMPILER not found"
    box $P562, "Contextual $*PASTCOMPILER not found"
    set $P558, $P562
  vivi_6032309:
    set $P557, $P558
  fallback2307:
    set $P563, _lex_param_1[0]
    unless_null $P563, fallback2310
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P563, $P564
  fallback2310:
    $P565 = $P557."as_post"($P563, "P" :named("rtype"))
    set $P102, $P565
.annotate 'line', 3219
    $P566 = $P101."push"($P102)
.annotate 'line', 3220
    $P567 = _lex_param_1."subtype"()
    set $S501, $P567
    iseq $I501, $S501, "zerowidth"
    box $P581, $I501
    set $P580, $P581
    unless $I501 goto if604_end2312 
.annotate 'line', 3221
    $P568 = _lex_param_1."negate"()
    unless $P568 goto if605_else2313 
    set $S502, "if"
    goto if605_end2314
  if605_else2313:
    set $S502, "unless"
  if605_end2314:
    find_dynamic_lex $P570, "%*REG"
    unless_null $P570, fallback2315
    get_hll_global $P573, "GLOBAL"
    get_who $P572, $P573
    set $P571, $P572["%REG"]
    unless_null $P571, fallback2316
    get_hll_global $P575, "GLOBAL"
    get_who $P574, $P575
    new $P576, 'Hash'
    set $P574["%REG"], $P576
    set $P571, $P576
  fallback2316:
    unless_null $P571, vivi_6062317
    die "Contextual %*REG not found"
    box $P577, "Contextual %*REG not found"
    set $P571, $P577
  vivi_6062317:
    set $P570, $P571
  fallback2315:
    set $P569, $P570["fail"]
    unless_null $P569, fallback2318
    nqp_get_sc_object $P578, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P569, $P578
  fallback2318:
    $P579 = $P101."push_pirop"($S502, $P102, $P569)
    set $P580, $P579
  if604_end2312:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_141_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3226
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cpost", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3227
    nqp_decontainerize $P503, _lex_param_0
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback2319
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback2320
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback2320:
    unless_null $P506, vivi_6072321
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_6072321:
    set $P505, $P506
  fallback2319:
    set $P504, $P505["cur"]
    unless_null $P504, fallback2322
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P513
  fallback2322:
    $P514 = $P503."post_new"("Ops", $P504 :named("result"))
    set $P101, $P514
.annotate 'line', 3228
    find_dynamic_lex $P516, "%*REG"
    unless_null $P516, fallback2323
    get_hll_global $P519, "GLOBAL"
    get_who $P518, $P519
    set $P517, $P518["%REG"]
    unless_null $P517, fallback2324
    get_hll_global $P521, "GLOBAL"
    get_who $P520, $P521
    new $P522, 'Hash'
    set $P520["%REG"], $P522
    set $P517, $P522
  fallback2324:
    unless_null $P517, vivi_6082325
    die "Contextual %*REG not found"
    box $P523, "Contextual %*REG not found"
    set $P517, $P523
  vivi_6082325:
    set $P516, $P517
  fallback2323:
    set $P515, $P516["cur"]
    unless_null $P515, fallback2326
    nqp_get_sc_object $P524, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P524
  fallback2326:
    find_dynamic_lex $P526, "%*REG"
    unless_null $P526, fallback2327
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    set $P527, $P528["%REG"]
    unless_null $P527, fallback2328
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    new $P532, 'Hash'
    set $P530["%REG"], $P532
    set $P527, $P532
  fallback2328:
    unless_null $P527, vivi_6092329
    die "Contextual %*REG not found"
    box $P533, "Contextual %*REG not found"
    set $P527, $P533
  vivi_6092329:
    set $P526, $P527
  fallback2327:
    set $P525, $P526["curclass"]
    unless_null $P525, fallback2330
    nqp_get_sc_object $P534, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P534
  fallback2330:
    find_dynamic_lex $P536, "%*REG"
    unless_null $P536, fallback2331
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    set $P537, $P538["%REG"]
    unless_null $P537, fallback2332
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    new $P542, 'Hash'
    set $P540["%REG"], $P542
    set $P537, $P542
  fallback2332:
    unless_null $P537, vivi_6102333
    die "Contextual %*REG not found"
    box $P543, "Contextual %*REG not found"
    set $P537, $P543
  vivi_6102333:
    set $P536, $P537
  fallback2331:
    set $P535, $P536["pos"]
    unless_null $P535, fallback2334
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P544
  fallback2334:
    $P545 = $P101."push_pirop"("repr_bind_attr_int", $P515, $P525, "\"$!pos\"", $P535)
.annotate 'line', 3229
    find_dynamic_lex $P547, "%*REG"
    unless_null $P547, fallback2335
    get_hll_global $P550, "GLOBAL"
    get_who $P549, $P550
    set $P548, $P549["%REG"]
    unless_null $P548, fallback2336
    get_hll_global $P552, "GLOBAL"
    get_who $P551, $P552
    new $P553, 'Hash'
    set $P551["%REG"], $P553
    set $P548, $P553
  fallback2336:
    unless_null $P548, vivi_6112337
    die "Contextual %*REG not found"
    box $P554, "Contextual %*REG not found"
    set $P548, $P554
  vivi_6112337:
    set $P547, $P548
  fallback2335:
    set $P546, $P547["cur"]
    unless_null $P546, fallback2338
    nqp_get_sc_object $P555, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P555
  fallback2338:
    $P556 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P546)
.annotate 'line', 3230
    nqp_decontainerize $P557, _lex_param_0
    nqp_decontainerize $P558, _lex_param_0
    set $P559, _lex_param_1[0]
    unless_null $P559, fallback2339
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P559, $P560
  fallback2339:
    $P561 = $P558."as_post"($P559)
    $P562 = $P557."coerce"($P561, "P")
    set $P102, $P562
.annotate 'line', 3231
    $P563 = $P101."push"($P102)
.annotate 'line', 3232
    $P564 = _lex_param_1."subtype"()
    set $S501, $P564
    iseq $I501, $S501, "zerowidth"
    box $P578, $I501
    set $P577, $P578
    unless $I501 goto if612_end2341 
.annotate 'line', 3233
    $P565 = _lex_param_1."negate"()
    unless $P565 goto if613_else2342 
    set $S502, "if"
    goto if613_end2343
  if613_else2342:
    set $S502, "unless"
  if613_end2343:
    find_dynamic_lex $P567, "%*REG"
    unless_null $P567, fallback2344
    get_hll_global $P570, "GLOBAL"
    get_who $P569, $P570
    set $P568, $P569["%REG"]
    unless_null $P568, fallback2345
    get_hll_global $P572, "GLOBAL"
    get_who $P571, $P572
    new $P573, 'Hash'
    set $P571["%REG"], $P573
    set $P568, $P573
  fallback2345:
    unless_null $P568, vivi_6142346
    die "Contextual %*REG not found"
    box $P574, "Contextual %*REG not found"
    set $P568, $P574
  vivi_6142346:
    set $P567, $P568
  fallback2344:
    set $P566, $P567["fail"]
    unless_null $P566, fallback2347
    nqp_get_sc_object $P575, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P566, $P575
  fallback2347:
    $P576 = $P101."push_pirop"($S502, $P102, $P566)
    set $P577, $P576
  if612_end2341:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_142_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3238
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P660 = 'cuid_315_1346233447.816' 
    capture_lex $P660 
    .lex "$ops", $P101 
    .lex "$backtrack", $P102 
    .lex "$sep", $P103 
    .lex "$prefix", $P104 
    .lex "$looplabel", $P105 
    .lex "$donelabel", $P106 
    .lex "$min", $P107 
    .lex "$max", $P108 
    .lex "$needrep", $P109 
    .lex "$needmark", $P110 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P110, $P510
.annotate 'line', 3239
    nqp_decontainerize $P511, _lex_param_0
    find_dynamic_lex $P513, "%*REG"
    unless_null $P513, fallback2348
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["%REG"]
    unless_null $P514, fallback2349
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    new $P519, 'Hash'
    set $P517["%REG"], $P519
    set $P514, $P519
  fallback2349:
    unless_null $P514, vivi_6152350
    die "Contextual %*REG not found"
    box $P520, "Contextual %*REG not found"
    set $P514, $P520
  vivi_6152350:
    set $P513, $P514
  fallback2348:
    set $P512, $P513["cur"]
    unless_null $P512, fallback2351
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P521
  fallback2351:
    $P522 = $P511."post_new"("Ops", $P512 :named("result"))
    set $P101, $P522
.annotate 'line', 3240
    $P523 = _lex_param_1."backtrack"()
    set $P524, $P523
    if $P523 goto unless616_end2353 
    box $P525, "g"
    set $P524, $P525
  unless616_end2353:
    set $P102, $P524
    set $P526, _lex_param_1[1]
    unless_null $P526, fallback2354
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P527
  fallback2354:
    set $P103, $P526
.annotate 'line', 3242
    nqp_decontainerize $P528, _lex_param_0
    set $S502, $P102
    concat $S501, "rxquant", $S502
    $P529 = $P528."unique"($S501)
    set $P104, $P529
.annotate 'line', 3243
    nqp_decontainerize $P530, _lex_param_0
    set $S504, $P104
    concat $S503, $S504, "_loop"
    $P531 = $P530."post_new"("Label", $S503 :named("name"))
    set $P105, $P531
.annotate 'line', 3244
    nqp_decontainerize $P532, _lex_param_0
    set $S506, $P104
    concat $S505, $S506, "_done"
    $P533 = $P532."post_new"("Label", $S505 :named("name"))
    set $P106, $P533
.annotate 'line', 3245
    $P534 = _lex_param_1."min"()
    set $P107, $P534
.annotate 'line', 3246
    $P535 = _lex_param_1."max"()
    set $P108, $P535
    set $N501, $P107
    set $N502, 1
    isgt $I501, $N501, $N502
    set $I503, $I501
    if $I501 goto unless617_end2356 
    set $N503, $P108
    set $N504, 1
    isgt $I502, $N503, $N504
    set $I503, $I502
  unless617_end2356:
    box $P536, $I503
    set $P109, $P536
    set $P537, $P109
    if $P109 goto unless618_end2358 
    set $S507, $P102
    iseq $I504, $S507, "r"
    box $P538, $I504
    set $P537, $P538
  unless618_end2358:
    set $P110, $P537
    set $S508, $P102
    iseq $I505, $S508, "f"
    unless $I505 goto if619_else2359 
    .const 'Sub' $P539 = 'cuid_315_1346233447.816' 
    capture_lex $P539
    $P540 = $P539()
    set $P659, $P540
    goto if619_end2360
  if619_else2359:
.annotate 'line', 3273
    set $N505, $P107
    set $N506, 0
    iseq $I506, $N505, $N506
    unless $I506 goto if637_else2416 
.annotate 'line', 3274
    nqp_decontainerize $P541, _lex_param_0
    find_dynamic_lex $P543, "%*REG"
    unless_null $P543, fallback2418
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    set $P544, $P545["%REG"]
    unless_null $P544, fallback2419
    get_hll_global $P548, "GLOBAL"
    get_who $P547, $P548
    new $P549, 'Hash'
    set $P547["%REG"], $P549
    set $P544, $P549
  fallback2419:
    unless_null $P544, vivi_6382420
    die "Contextual %*REG not found"
    box $P550, "Contextual %*REG not found"
    set $P544, $P550
  vivi_6382420:
    set $P543, $P544
  fallback2418:
    set $P542, $P543["pos"]
    unless_null $P542, fallback2421
    nqp_get_sc_object $P551, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P551
  fallback2421:
    $P552 = $P541."regex_mark"($P101, $P106, $P542, 0)
    set $P556, $P552
    goto if637_end2417
  if637_else2416:
    set $P555, $P110
    unless $P110 goto if639_end2423 
.annotate 'line', 3275
    nqp_decontainerize $P553, _lex_param_0
    $P554 = $P553."regex_mark"($P101, $P106, -1, 0)
    set $P555, $P554
  if639_end2423:
    set $P556, $P555
  if637_end2417:
.annotate 'line', 3276
    $P557 = $P101."push"($P105)
.annotate 'line', 3277
    nqp_decontainerize $P558, _lex_param_0
    set $P559, _lex_param_1[0]
    unless_null $P559, fallback2424
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P559, $P560
  fallback2424:
    $P561 = $P558."regex_post"($P559)
    $P562 = $P101."push"($P561)
    set $P604, $P110
    unless $P110 goto if640_end2426 
.annotate 'line', 3278
.annotate 'line', 3279
    nqp_decontainerize $P563, _lex_param_0
    find_dynamic_lex $P565, "%*REG"
    unless_null $P565, fallback2427
    get_hll_global $P568, "GLOBAL"
    get_who $P567, $P568
    set $P566, $P567["%REG"]
    unless_null $P566, fallback2428
    get_hll_global $P570, "GLOBAL"
    get_who $P569, $P570
    new $P571, 'Hash'
    set $P569["%REG"], $P571
    set $P566, $P571
  fallback2428:
    unless_null $P566, vivi_6412429
    die "Contextual %*REG not found"
    box $P572, "Contextual %*REG not found"
    set $P566, $P572
  vivi_6412429:
    set $P565, $P566
  fallback2427:
    set $P564, $P565["rep"]
    unless_null $P564, fallback2430
    nqp_get_sc_object $P573, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P564, $P573
  fallback2430:
    $P574 = $P563."regex_peek"($P101, $P106, "*", $P564)
    set $S509, $P102
    iseq $I507, $S509, "r"
    box $P578, $I507
    set $P577, $P578
    unless $I507 goto if642_end2432 
.annotate 'line', 3280
    nqp_decontainerize $P575, _lex_param_0
    $P576 = $P575."regex_commit"($P101, $P106)
    set $P577, $P576
  if642_end2432:
.annotate 'line', 3281
    find_dynamic_lex $P580, "%*REG"
    unless_null $P580, fallback2433
    get_hll_global $P583, "GLOBAL"
    get_who $P582, $P583
    set $P581, $P582["%REG"]
    unless_null $P581, fallback2434
    get_hll_global $P585, "GLOBAL"
    get_who $P584, $P585
    new $P586, 'Hash'
    set $P584["%REG"], $P586
    set $P581, $P586
  fallback2434:
    unless_null $P581, vivi_6432435
    die "Contextual %*REG not found"
    box $P587, "Contextual %*REG not found"
    set $P581, $P587
  vivi_6432435:
    set $P580, $P581
  fallback2433:
    set $P579, $P580["rep"]
    unless_null $P579, fallback2436
    nqp_get_sc_object $P588, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P579, $P588
  fallback2436:
    $P589 = $P101."push_pirop"("inc", $P579)
    set $N507, $P108
    set $N508, 1
    isgt $I508, $N507, $N508
    box $P603, $I508
    set $P602, $P603
    unless $I508 goto if644_end2438 
.annotate 'line', 3282
    find_dynamic_lex $P591, "%*REG"
    unless_null $P591, fallback2439
    get_hll_global $P594, "GLOBAL"
    get_who $P593, $P594
    set $P592, $P593["%REG"]
    unless_null $P592, fallback2440
    get_hll_global $P596, "GLOBAL"
    get_who $P595, $P596
    new $P597, 'Hash'
    set $P595["%REG"], $P597
    set $P592, $P597
  fallback2440:
    unless_null $P592, vivi_6452441
    die "Contextual %*REG not found"
    box $P598, "Contextual %*REG not found"
    set $P592, $P598
  vivi_6452441:
    set $P591, $P592
  fallback2439:
    set $P590, $P591["rep"]
    unless_null $P590, fallback2442
    nqp_get_sc_object $P599, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P590, $P599
  fallback2442:
    $P600 = _lex_param_1."max"()
    $P601 = $P101."push_pirop"("ge", $P590, $P600, $P106)
    set $P602, $P601
  if644_end2438:
    set $P604, $P602
  if640_end2426:
    set $N509, $P108
    set $N510, 1
    iseq $I509, $N509, $N510
    box $P633, $I509
    set $P632, $P633
    if $I509 goto unless646_end2444 
.annotate 'line', 3285
.annotate 'line', 3286
    nqp_decontainerize $P605, _lex_param_0
    find_dynamic_lex $P607, "%*REG"
    unless_null $P607, fallback2445
    get_hll_global $P610, "GLOBAL"
    get_who $P609, $P610
    set $P608, $P609["%REG"]
    unless_null $P608, fallback2446
    get_hll_global $P612, "GLOBAL"
    get_who $P611, $P612
    new $P613, 'Hash'
    set $P611["%REG"], $P613
    set $P608, $P613
  fallback2446:
    unless_null $P608, vivi_6472447
    die "Contextual %*REG not found"
    box $P614, "Contextual %*REG not found"
    set $P608, $P614
  vivi_6472447:
    set $P607, $P608
  fallback2445:
    set $P606, $P607["pos"]
    unless_null $P606, fallback2448
    nqp_get_sc_object $P615, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P606, $P615
  fallback2448:
    find_dynamic_lex $P617, "%*REG"
    unless_null $P617, fallback2449
    get_hll_global $P620, "GLOBAL"
    get_who $P619, $P620
    set $P618, $P619["%REG"]
    unless_null $P618, fallback2450
    get_hll_global $P622, "GLOBAL"
    get_who $P621, $P622
    new $P623, 'Hash'
    set $P621["%REG"], $P623
    set $P618, $P623
  fallback2450:
    unless_null $P618, vivi_6482451
    die "Contextual %*REG not found"
    box $P624, "Contextual %*REG not found"
    set $P618, $P624
  vivi_6482451:
    set $P617, $P618
  fallback2449:
    set $P616, $P617["rep"]
    unless_null $P616, fallback2452
    nqp_get_sc_object $P625, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P616, $P625
  fallback2452:
    $P626 = $P605."regex_mark"($P101, $P106, $P606, $P616)
    set $P630, $P103
    unless $P103 goto if649_end2454 
.annotate 'line', 3287
    nqp_decontainerize $P627, _lex_param_0
    $P628 = $P627."regex_post"($P103)
    $P629 = $P101."push"($P628)
    set $P630, $P629
  if649_end2454:
.annotate 'line', 3288
    $P631 = $P101."push_pirop"("goto", $P105)
    set $P632, $P631
  unless646_end2444:
.annotate 'line', 3290
    $P634 = $P101."push"($P106)
    set $N511, $P107
    set $N512, 1
    isgt $I510, $N511, $N512
    box $P658, $I510
    set $P657, $P658
    unless $I510 goto if650_end2456 
.annotate 'line', 3291
    find_dynamic_lex $P636, "%*REG"
    unless_null $P636, fallback2457
    get_hll_global $P639, "GLOBAL"
    get_who $P638, $P639
    set $P637, $P638["%REG"]
    unless_null $P637, fallback2458
    get_hll_global $P641, "GLOBAL"
    get_who $P640, $P641
    new $P642, 'Hash'
    set $P640["%REG"], $P642
    set $P637, $P642
  fallback2458:
    unless_null $P637, vivi_6512459
    die "Contextual %*REG not found"
    box $P643, "Contextual %*REG not found"
    set $P637, $P643
  vivi_6512459:
    set $P636, $P637
  fallback2457:
    set $P635, $P636["rep"]
    unless_null $P635, fallback2460
    nqp_get_sc_object $P644, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P635, $P644
  fallback2460:
    $P645 = _lex_param_1."min"()
    set $N513, $P645
    find_dynamic_lex $P647, "%*REG"
    unless_null $P647, fallback2461
    get_hll_global $P650, "GLOBAL"
    get_who $P649, $P650
    set $P648, $P649["%REG"]
    unless_null $P648, fallback2462
    get_hll_global $P652, "GLOBAL"
    get_who $P651, $P652
    new $P653, 'Hash'
    set $P651["%REG"], $P653
    set $P648, $P653
  fallback2462:
    unless_null $P648, vivi_6522463
    die "Contextual %*REG not found"
    box $P654, "Contextual %*REG not found"
    set $P648, $P654
  vivi_6522463:
    set $P647, $P648
  fallback2461:
    set $P646, $P647["fail"]
    unless_null $P646, fallback2464
    nqp_get_sc_object $P655, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P646, $P655
  fallback2464:
    $P656 = $P101."push_pirop"("lt", $P635, $N513, $P646)
    set $P657, $P656
  if650_end2456:
    set $P659, $P657
  if619_end2360:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_315_1346233447.816") :anon :lex :outer("cuid_142_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3252
    .lex "$seplabel", $P101 
    .lex "$ireg", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3253
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    find_lex $P505, "$prefix"
    set $S502, $P505
    concat $S501, $S502, "_sep"
    $P506 = $P503."post_new"("Label", $S501 :named("name"))
    set $P101, $P506
    box $P507, "$I12"
    set $P102, $P507
.annotate 'line', 3255
    find_lex $P508, "$ops"
    find_dynamic_lex $P510, "%*REG"
    unless_null $P510, fallback2361
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["%REG"]
    unless_null $P511, fallback2362
    get_hll_global $P515, "GLOBAL"
    get_who $P514, $P515
    new $P516, 'Hash'
    set $P514["%REG"], $P516
    set $P511, $P516
  fallback2362:
    unless_null $P511, vivi_6202363
    die "Contextual %*REG not found"
    box $P517, "Contextual %*REG not found"
    set $P511, $P517
  vivi_6202363:
    set $P510, $P511
  fallback2361:
    set $P509, $P510["rep"]
    unless_null $P509, fallback2364
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P518
  fallback2364:
    $P519 = $P508."push_pirop"("set", $P509, 0)
    find_lex $P520, "$min"
    set $N501, $P520
    set $N502, 1
    islt $I501, $N501, $N502
    box $P550, $I501
    set $P549, $P550
    unless $I501 goto if621_end2366 
.annotate 'line', 3256
.annotate 'line', 3257
    find_lex $P522, "self"
    nqp_decontainerize $P521, $P522
    find_lex $P523, "$ops"
    find_lex $P524, "$looplabel"
    find_dynamic_lex $P526, "%*REG"
    unless_null $P526, fallback2367
    get_hll_global $P529, "GLOBAL"
    get_who $P528, $P529
    set $P527, $P528["%REG"]
    unless_null $P527, fallback2368
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    new $P532, 'Hash'
    set $P530["%REG"], $P532
    set $P527, $P532
  fallback2368:
    unless_null $P527, vivi_6222369
    die "Contextual %*REG not found"
    box $P533, "Contextual %*REG not found"
    set $P527, $P533
  vivi_6222369:
    set $P526, $P527
  fallback2367:
    set $P525, $P526["pos"]
    unless_null $P525, fallback2370
    nqp_get_sc_object $P534, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P534
  fallback2370:
    find_dynamic_lex $P536, "%*REG"
    unless_null $P536, fallback2371
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    set $P537, $P538["%REG"]
    unless_null $P537, fallback2372
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    new $P542, 'Hash'
    set $P540["%REG"], $P542
    set $P537, $P542
  fallback2372:
    unless_null $P537, vivi_6232373
    die "Contextual %*REG not found"
    box $P543, "Contextual %*REG not found"
    set $P537, $P543
  vivi_6232373:
    set $P536, $P537
  fallback2371:
    set $P535, $P536["rep"]
    unless_null $P535, fallback2374
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P544
  fallback2374:
    $P545 = $P521."regex_mark"($P523, $P524, $P525, $P535)
.annotate 'line', 3258
    find_lex $P546, "$ops"
    find_lex $P547, "$donelabel"
    $P548 = $P546."push_pirop"("goto", $P547)
    set $P549, $P548
  if621_end2366:
    find_lex $P551, "$sep"
    set $P554, $P551
    unless $P551 goto if624_end2376 
.annotate 'line', 3260
    find_lex $P552, "$ops"
    $P553 = $P552."push_pirop"("goto", $P101)
    set $P554, $P553
  if624_end2376:
.annotate 'line', 3261
    find_lex $P555, "$ops"
    find_lex $P556, "$looplabel"
    $P557 = $P555."push"($P556)
.annotate 'line', 3262
    find_lex $P558, "$ops"
    find_dynamic_lex $P560, "%*REG"
    unless_null $P560, fallback2377
    get_hll_global $P563, "GLOBAL"
    get_who $P562, $P563
    set $P561, $P562["%REG"]
    unless_null $P561, fallback2378
    get_hll_global $P565, "GLOBAL"
    get_who $P564, $P565
    new $P566, 'Hash'
    set $P564["%REG"], $P566
    set $P561, $P566
  fallback2378:
    unless_null $P561, vivi_6252379
    die "Contextual %*REG not found"
    box $P567, "Contextual %*REG not found"
    set $P561, $P567
  vivi_6252379:
    set $P560, $P561
  fallback2377:
    set $P559, $P560["rep"]
    unless_null $P559, fallback2380
    nqp_get_sc_object $P568, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P559, $P568
  fallback2380:
    $P569 = $P558."push_pirop"("set", $P102, $P559)
    find_lex $P570, "$sep"
    set $P577, $P570
    unless $P570 goto if626_end2382 
.annotate 'line', 3263
    find_lex $P571, "$ops"
    find_lex $P573, "self"
    nqp_decontainerize $P572, $P573
    find_lex $P574, "$sep"
    $P575 = $P572."regex_post"($P574)
    $P576 = $P571."push"($P575)
    set $P577, $P576
  if626_end2382:
    find_lex $P578, "$sep"
    set $P581, $P578
    unless $P578 goto if627_end2384 
.annotate 'line', 3264
    find_lex $P579, "$ops"
    $P580 = $P579."push"($P101)
    set $P581, $P580
  if627_end2384:
.annotate 'line', 3265
    find_lex $P582, "$ops"
    find_lex $P584, "self"
    nqp_decontainerize $P583, $P584
    find_lex $P586, "$node"
    set $P585, $P586[0]
    unless_null $P585, fallback2385
    nqp_get_sc_object $P587, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P585, $P587
  fallback2385:
    $P588 = $P583."regex_post"($P585)
    $P589 = $P582."push"($P588)
.annotate 'line', 3266
    find_lex $P590, "$ops"
    find_dynamic_lex $P592, "%*REG"
    unless_null $P592, fallback2386
    get_hll_global $P595, "GLOBAL"
    get_who $P594, $P595
    set $P593, $P594["%REG"]
    unless_null $P593, fallback2387
    get_hll_global $P597, "GLOBAL"
    get_who $P596, $P597
    new $P598, 'Hash'
    set $P596["%REG"], $P598
    set $P593, $P598
  fallback2387:
    unless_null $P593, vivi_6282388
    die "Contextual %*REG not found"
    box $P599, "Contextual %*REG not found"
    set $P593, $P599
  vivi_6282388:
    set $P592, $P593
  fallback2386:
    set $P591, $P592["rep"]
    unless_null $P591, fallback2389
    nqp_get_sc_object $P600, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P591, $P600
  fallback2389:
    $P601 = $P590."push_pirop"("set", $P591, $P102)
.annotate 'line', 3267
    find_lex $P602, "$ops"
    find_dynamic_lex $P604, "%*REG"
    unless_null $P604, fallback2390
    get_hll_global $P607, "GLOBAL"
    get_who $P606, $P607
    set $P605, $P606["%REG"]
    unless_null $P605, fallback2391
    get_hll_global $P609, "GLOBAL"
    get_who $P608, $P609
    new $P610, 'Hash'
    set $P608["%REG"], $P610
    set $P605, $P610
  fallback2391:
    unless_null $P605, vivi_6292392
    die "Contextual %*REG not found"
    box $P611, "Contextual %*REG not found"
    set $P605, $P611
  vivi_6292392:
    set $P604, $P605
  fallback2390:
    set $P603, $P604["rep"]
    unless_null $P603, fallback2393
    nqp_get_sc_object $P612, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P603, $P612
  fallback2393:
    $P613 = $P602."push_pirop"("inc", $P603)
    find_lex $P614, "$min"
    set $N503, $P614
    set $N504, 1
    isgt $I502, $N503, $N504
    box $P630, $I502
    set $P629, $P630
    unless $I502 goto if630_end2395 
.annotate 'line', 3268
    find_lex $P615, "$ops"
    find_dynamic_lex $P617, "%*REG"
    unless_null $P617, fallback2396
    get_hll_global $P620, "GLOBAL"
    get_who $P619, $P620
    set $P618, $P619["%REG"]
    unless_null $P618, fallback2397
    get_hll_global $P622, "GLOBAL"
    get_who $P621, $P622
    new $P623, 'Hash'
    set $P621["%REG"], $P623
    set $P618, $P623
  fallback2397:
    unless_null $P618, vivi_6312398
    die "Contextual %*REG not found"
    box $P624, "Contextual %*REG not found"
    set $P618, $P624
  vivi_6312398:
    set $P617, $P618
  fallback2396:
    set $P616, $P617["rep"]
    unless_null $P616, fallback2399
    nqp_get_sc_object $P625, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P616, $P625
  fallback2399:
    find_lex $P626, "$min"
    find_lex $P627, "$looplabel"
    $P628 = $P615."push_pirop"("lt", $P616, $P626, $P627)
    set $P629, $P628
  if630_end2395:
    find_lex $P631, "$max"
    set $N505, $P631
    set $N506, 1
    isgt $I503, $N505, $N506
    box $P647, $I503
    set $P646, $P647
    unless $I503 goto if632_end2401 
.annotate 'line', 3269
    find_lex $P632, "$ops"
    find_dynamic_lex $P634, "%*REG"
    unless_null $P634, fallback2402
    get_hll_global $P637, "GLOBAL"
    get_who $P636, $P637
    set $P635, $P636["%REG"]
    unless_null $P635, fallback2403
    get_hll_global $P639, "GLOBAL"
    get_who $P638, $P639
    new $P640, 'Hash'
    set $P638["%REG"], $P640
    set $P635, $P640
  fallback2403:
    unless_null $P635, vivi_6332404
    die "Contextual %*REG not found"
    box $P641, "Contextual %*REG not found"
    set $P635, $P641
  vivi_6332404:
    set $P634, $P635
  fallback2402:
    set $P633, $P634["rep"]
    unless_null $P633, fallback2405
    nqp_get_sc_object $P642, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P633, $P642
  fallback2405:
    find_lex $P643, "$max"
    find_lex $P644, "$donelabel"
    $P645 = $P632."push_pirop"("ge", $P633, $P643, $P644)
    set $P646, $P645
  if632_end2401:
    find_lex $P648, "$max"
    set $N507, $P648
    set $N508, 1
    isne $I504, $N507, $N508
    box $P675, $I504
    set $P674, $P675
    unless $I504 goto if634_end2407 
.annotate 'line', 3270
    find_lex $P650, "self"
    nqp_decontainerize $P649, $P650
    find_lex $P651, "$ops"
    find_lex $P652, "$looplabel"
    find_dynamic_lex $P654, "%*REG"
    unless_null $P654, fallback2408
    get_hll_global $P657, "GLOBAL"
    get_who $P656, $P657
    set $P655, $P656["%REG"]
    unless_null $P655, fallback2409
    get_hll_global $P659, "GLOBAL"
    get_who $P658, $P659
    new $P660, 'Hash'
    set $P658["%REG"], $P660
    set $P655, $P660
  fallback2409:
    unless_null $P655, vivi_6352410
    die "Contextual %*REG not found"
    box $P661, "Contextual %*REG not found"
    set $P655, $P661
  vivi_6352410:
    set $P654, $P655
  fallback2408:
    set $P653, $P654["pos"]
    unless_null $P653, fallback2411
    nqp_get_sc_object $P662, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P653, $P662
  fallback2411:
    find_dynamic_lex $P664, "%*REG"
    unless_null $P664, fallback2412
    get_hll_global $P667, "GLOBAL"
    get_who $P666, $P667
    set $P665, $P666["%REG"]
    unless_null $P665, fallback2413
    get_hll_global $P669, "GLOBAL"
    get_who $P668, $P669
    new $P670, 'Hash'
    set $P668["%REG"], $P670
    set $P665, $P670
  fallback2413:
    unless_null $P665, vivi_6362414
    die "Contextual %*REG not found"
    box $P671, "Contextual %*REG not found"
    set $P665, $P671
  vivi_6362414:
    set $P664, $P665
  fallback2412:
    set $P663, $P664["rep"]
    unless_null $P663, fallback2415
    nqp_get_sc_object $P672, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P663, $P672
  fallback2415:
    $P673 = $P649."regex_mark"($P651, $P652, $P653, $P663)
    set $P674, $P673
  if634_end2407:
.annotate 'line', 3271
    find_lex $P676, "$ops"
    find_lex $P677, "$donelabel"
    $P678 = $P676."push"($P677)
    .return ($P678) 
.end
.HLL "nqp"
.namespace []
.sub "scan" :subid("cuid_143_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3297
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$looplabel", $P103 
    .lex "$scanlabel", $P104 
    .lex "$donelabel", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3298
    nqp_decontainerize $P506, _lex_param_0
    find_dynamic_lex $P508, "%*REG"
    unless_null $P508, fallback2465
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["%REG"]
    unless_null $P509, fallback2466
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    new $P514, 'Hash'
    set $P512["%REG"], $P514
    set $P509, $P514
  fallback2466:
    unless_null $P509, vivi_6532467
    die "Contextual %*REG not found"
    box $P515, "Contextual %*REG not found"
    set $P509, $P515
  vivi_6532467:
    set $P508, $P509
  fallback2465:
    set $P507, $P508["cur"]
    unless_null $P507, fallback2468
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P516
  fallback2468:
    $P517 = $P506."post_new"("Ops", $P507 :named("result"))
    set $P101, $P517
.annotate 'line', 3299
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P518."unique"("rxscan")
    set $P102, $P519
.annotate 'line', 3300
    nqp_decontainerize $P520, _lex_param_0
    set $S502, $P102
    concat $S501, $S502, "_loop"
    $P521 = $P520."post_new"("Label", $S501 :named("name"))
    set $P103, $P521
.annotate 'line', 3301
    nqp_decontainerize $P522, _lex_param_0
    set $S504, $P102
    concat $S503, $S504, "_scan"
    $P523 = $P522."post_new"("Label", $S503 :named("name"))
    set $P104, $P523
.annotate 'line', 3302
    nqp_decontainerize $P524, _lex_param_0
    set $S506, $P102
    concat $S505, $S506, "_done"
    $P525 = $P524."post_new"("Label", $S505 :named("name"))
    set $P105, $P525
.annotate 'line', 3303
    find_dynamic_lex $P527, "%*REG"
    unless_null $P527, fallback2469
    get_hll_global $P530, "GLOBAL"
    get_who $P529, $P530
    set $P528, $P529["%REG"]
    unless_null $P528, fallback2470
    get_hll_global $P532, "GLOBAL"
    get_who $P531, $P532
    new $P533, 'Hash'
    set $P531["%REG"], $P533
    set $P528, $P533
  fallback2470:
    unless_null $P528, vivi_6542471
    die "Contextual %*REG not found"
    box $P534, "Contextual %*REG not found"
    set $P528, $P534
  vivi_6542471:
    set $P527, $P528
  fallback2469:
    set $P526, $P527["curclass"]
    unless_null $P526, fallback2472
    nqp_get_sc_object $P535, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P535
  fallback2472:
    $P536 = $P101."push_pirop"("repr_get_attr_int", "$I11", "self", $P526, "\"$!from\"")
.annotate 'line', 3304
    $P537 = $P101."push_pirop"("ne", "$I11", -1, $P105)
.annotate 'line', 3305
    $P538 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3306
    $P539 = $P101."push"($P103)
.annotate 'line', 3307
    find_dynamic_lex $P541, "%*REG"
    unless_null $P541, fallback2473
    get_hll_global $P544, "GLOBAL"
    get_who $P543, $P544
    set $P542, $P543["%REG"]
    unless_null $P542, fallback2474
    get_hll_global $P546, "GLOBAL"
    get_who $P545, $P546
    new $P547, 'Hash'
    set $P545["%REG"], $P547
    set $P542, $P547
  fallback2474:
    unless_null $P542, vivi_6552475
    die "Contextual %*REG not found"
    box $P548, "Contextual %*REG not found"
    set $P542, $P548
  vivi_6552475:
    set $P541, $P542
  fallback2473:
    set $P540, $P541["pos"]
    unless_null $P540, fallback2476
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P540, $P549
  fallback2476:
    $P550 = $P101."push_pirop"("inc", $P540)
.annotate 'line', 3308
    find_dynamic_lex $P552, "%*REG"
    unless_null $P552, fallback2477
    get_hll_global $P555, "GLOBAL"
    get_who $P554, $P555
    set $P553, $P554["%REG"]
    unless_null $P553, fallback2478
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    new $P558, 'Hash'
    set $P556["%REG"], $P558
    set $P553, $P558
  fallback2478:
    unless_null $P553, vivi_6562479
    die "Contextual %*REG not found"
    box $P559, "Contextual %*REG not found"
    set $P553, $P559
  vivi_6562479:
    set $P552, $P553
  fallback2477:
    set $P551, $P552["pos"]
    unless_null $P551, fallback2480
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P560
  fallback2480:
    find_dynamic_lex $P562, "%*REG"
    unless_null $P562, fallback2481
    get_hll_global $P565, "GLOBAL"
    get_who $P564, $P565
    set $P563, $P564["%REG"]
    unless_null $P563, fallback2482
    get_hll_global $P567, "GLOBAL"
    get_who $P566, $P567
    new $P568, 'Hash'
    set $P566["%REG"], $P568
    set $P563, $P568
  fallback2482:
    unless_null $P563, vivi_6572483
    die "Contextual %*REG not found"
    box $P569, "Contextual %*REG not found"
    set $P563, $P569
  vivi_6572483:
    set $P562, $P563
  fallback2481:
    set $P561, $P562["eos"]
    unless_null $P561, fallback2484
    nqp_get_sc_object $P570, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P570
  fallback2484:
    find_dynamic_lex $P572, "%*REG"
    unless_null $P572, fallback2485
    get_hll_global $P575, "GLOBAL"
    get_who $P574, $P575
    set $P573, $P574["%REG"]
    unless_null $P573, fallback2486
    get_hll_global $P577, "GLOBAL"
    get_who $P576, $P577
    new $P578, 'Hash'
    set $P576["%REG"], $P578
    set $P573, $P578
  fallback2486:
    unless_null $P573, vivi_6582487
    die "Contextual %*REG not found"
    box $P579, "Contextual %*REG not found"
    set $P573, $P579
  vivi_6582487:
    set $P572, $P573
  fallback2485:
    set $P571, $P572["fail"]
    unless_null $P571, fallback2488
    nqp_get_sc_object $P580, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P571, $P580
  fallback2488:
    $P581 = $P101."push_pirop"("gt", $P551, $P561, $P571)
.annotate 'line', 3309
    find_dynamic_lex $P583, "%*REG"
    unless_null $P583, fallback2489
    get_hll_global $P586, "GLOBAL"
    get_who $P585, $P586
    set $P584, $P585["%REG"]
    unless_null $P584, fallback2490
    get_hll_global $P588, "GLOBAL"
    get_who $P587, $P588
    new $P589, 'Hash'
    set $P587["%REG"], $P589
    set $P584, $P589
  fallback2490:
    unless_null $P584, vivi_6592491
    die "Contextual %*REG not found"
    box $P590, "Contextual %*REG not found"
    set $P584, $P590
  vivi_6592491:
    set $P583, $P584
  fallback2489:
    set $P582, $P583["cur"]
    unless_null $P582, fallback2492
    nqp_get_sc_object $P591, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P582, $P591
  fallback2492:
    find_dynamic_lex $P593, "%*REG"
    unless_null $P593, fallback2493
    get_hll_global $P596, "GLOBAL"
    get_who $P595, $P596
    set $P594, $P595["%REG"]
    unless_null $P594, fallback2494
    get_hll_global $P598, "GLOBAL"
    get_who $P597, $P598
    new $P599, 'Hash'
    set $P597["%REG"], $P599
    set $P594, $P599
  fallback2494:
    unless_null $P594, vivi_6602495
    die "Contextual %*REG not found"
    box $P600, "Contextual %*REG not found"
    set $P594, $P600
  vivi_6602495:
    set $P593, $P594
  fallback2493:
    set $P592, $P593["curclass"]
    unless_null $P592, fallback2496
    nqp_get_sc_object $P601, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P592, $P601
  fallback2496:
    find_dynamic_lex $P603, "%*REG"
    unless_null $P603, fallback2497
    get_hll_global $P606, "GLOBAL"
    get_who $P605, $P606
    set $P604, $P605["%REG"]
    unless_null $P604, fallback2498
    get_hll_global $P608, "GLOBAL"
    get_who $P607, $P608
    new $P609, 'Hash'
    set $P607["%REG"], $P609
    set $P604, $P609
  fallback2498:
    unless_null $P604, vivi_6612499
    die "Contextual %*REG not found"
    box $P610, "Contextual %*REG not found"
    set $P604, $P610
  vivi_6612499:
    set $P603, $P604
  fallback2497:
    set $P602, $P603["pos"]
    unless_null $P602, fallback2500
    nqp_get_sc_object $P611, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P602, $P611
  fallback2500:
    $P612 = $P101."push_pirop"("repr_bind_attr_int", $P582, $P592, "\"$!from\"", $P602)
.annotate 'line', 3310
    $P613 = $P101."push"($P104)
.annotate 'line', 3311
    nqp_decontainerize $P614, _lex_param_0
    find_dynamic_lex $P616, "%*REG"
    unless_null $P616, fallback2501
    get_hll_global $P619, "GLOBAL"
    get_who $P618, $P619
    set $P617, $P618["%REG"]
    unless_null $P617, fallback2502
    get_hll_global $P621, "GLOBAL"
    get_who $P620, $P621
    new $P622, 'Hash'
    set $P620["%REG"], $P622
    set $P617, $P622
  fallback2502:
    unless_null $P617, vivi_6622503
    die "Contextual %*REG not found"
    box $P623, "Contextual %*REG not found"
    set $P617, $P623
  vivi_6622503:
    set $P616, $P617
  fallback2501:
    set $P615, $P616["pos"]
    unless_null $P615, fallback2504
    nqp_get_sc_object $P624, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P615, $P624
  fallback2504:
    $P625 = $P614."regex_mark"($P101, $P103, $P615, 0)
.annotate 'line', 3312
    $P626 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_144_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3316
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$donelabel", $P103 
    .lex "$faillabel", $P104 
    .lex "$name", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3317
    nqp_decontainerize $P506, _lex_param_0
    find_dynamic_lex $P508, "%*REG"
    unless_null $P508, fallback2505
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["%REG"]
    unless_null $P509, fallback2506
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    new $P514, 'Hash'
    set $P512["%REG"], $P514
    set $P509, $P514
  fallback2506:
    unless_null $P509, vivi_6632507
    die "Contextual %*REG not found"
    box $P515, "Contextual %*REG not found"
    set $P509, $P515
  vivi_6632507:
    set $P508, $P509
  fallback2505:
    set $P507, $P508["cur"]
    unless_null $P507, fallback2508
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P516
  fallback2508:
    $P517 = $P506."post_new"("Ops", $P507 :named("result"))
    set $P101, $P517
.annotate 'line', 3318
    nqp_decontainerize $P518, _lex_param_0
    $P519 = $P518."unique"("rxcap")
    set $P102, $P519
.annotate 'line', 3319
    nqp_decontainerize $P520, _lex_param_0
    set $S502, $P102
    concat $S501, $S502, "_done"
    $P521 = $P520."post_new"("Label", $S501 :named("name"))
    set $P103, $P521
.annotate 'line', 3320
    nqp_decontainerize $P522, _lex_param_0
    set $S504, $P102
    concat $S503, $S504, "_fail"
    $P523 = $P522."post_new"("Label", $S503 :named("name"))
    set $P104, $P523
.annotate 'line', 3321
    find_dynamic_lex $P524, "$*PASTCOMPILER"
    unless_null $P524, fallback2509
    get_hll_global $P527, "GLOBAL"
    get_who $P526, $P527
    set $P525, $P526["$PASTCOMPILER"]
    unless_null $P525, fallback2510
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P528
  fallback2510:
    unless_null $P525, vivi_6642511
    die "Contextual $*PASTCOMPILER not found"
    box $P529, "Contextual $*PASTCOMPILER not found"
    set $P525, $P529
  vivi_6642511:
    set $P524, $P525
  fallback2509:
    $P530 = _lex_param_1."name"()
    $P531 = $P524."as_post"($P530, "*" :named("rtype"))
    set $P105, $P531
.annotate 'line', 3322
    nqp_decontainerize $P532, _lex_param_0
    find_dynamic_lex $P534, "%*REG"
    unless_null $P534, fallback2512
    get_hll_global $P537, "GLOBAL"
    get_who $P536, $P537
    set $P535, $P536["%REG"]
    unless_null $P535, fallback2513
    get_hll_global $P539, "GLOBAL"
    get_who $P538, $P539
    new $P540, 'Hash'
    set $P538["%REG"], $P540
    set $P535, $P540
  fallback2513:
    unless_null $P535, vivi_6652514
    die "Contextual %*REG not found"
    box $P541, "Contextual %*REG not found"
    set $P535, $P541
  vivi_6652514:
    set $P534, $P535
  fallback2512:
    set $P533, $P534["pos"]
    unless_null $P533, fallback2515
    nqp_get_sc_object $P542, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P533, $P542
  fallback2515:
    $P543 = $P532."regex_mark"($P101, $P104, $P533, 0)
.annotate 'line', 3323
    nqp_decontainerize $P544, _lex_param_0
    set $P545, _lex_param_1[0]
    unless_null $P545, fallback2516
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P545, $P546
  fallback2516:
    $P547 = $P544."regex_post"($P545)
    $P548 = $P101."push"($P547)
.annotate 'line', 3324
    nqp_decontainerize $P549, _lex_param_0
    $P550 = $P549."regex_peek"($P101, $P104, "$I11")
.annotate 'line', 3325
    find_dynamic_lex $P552, "%*REG"
    unless_null $P552, fallback2517
    get_hll_global $P555, "GLOBAL"
    get_who $P554, $P555
    set $P553, $P554["%REG"]
    unless_null $P553, fallback2518
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    new $P558, 'Hash'
    set $P556["%REG"], $P558
    set $P553, $P558
  fallback2518:
    unless_null $P553, vivi_6662519
    die "Contextual %*REG not found"
    box $P559, "Contextual %*REG not found"
    set $P553, $P559
  vivi_6662519:
    set $P552, $P553
  fallback2517:
    set $P551, $P552["cur"]
    unless_null $P551, fallback2520
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P560
  fallback2520:
    $P561 = $P101."push_pirop"("callmethod", "\"!cursor_start_subcapture\"", $P551, "$I11", "$P11" :named("result"))
.annotate 'line', 3326
    find_dynamic_lex $P563, "%*REG"
    unless_null $P563, fallback2521
    get_hll_global $P566, "GLOBAL"
    get_who $P565, $P566
    set $P564, $P565["%REG"]
    unless_null $P564, fallback2522
    get_hll_global $P568, "GLOBAL"
    get_who $P567, $P568
    new $P569, 'Hash'
    set $P567["%REG"], $P569
    set $P564, $P569
  fallback2522:
    unless_null $P564, vivi_6672523
    die "Contextual %*REG not found"
    box $P570, "Contextual %*REG not found"
    set $P564, $P570
  vivi_6672523:
    set $P563, $P564
  fallback2521:
    set $P562, $P563["pos"]
    unless_null $P562, fallback2524
    nqp_get_sc_object $P571, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P562, $P571
  fallback2524:
    $P572 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", "$P11", $P562)
.annotate 'line', 3327
    find_dynamic_lex $P574, "%*REG"
    unless_null $P574, fallback2525
    get_hll_global $P577, "GLOBAL"
    get_who $P576, $P577
    set $P575, $P576["%REG"]
    unless_null $P575, fallback2526
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    new $P580, 'Hash'
    set $P578["%REG"], $P580
    set $P575, $P580
  fallback2526:
    unless_null $P575, vivi_6682527
    die "Contextual %*REG not found"
    box $P581, "Contextual %*REG not found"
    set $P575, $P581
  vivi_6682527:
    set $P574, $P575
  fallback2525:
    set $P573, $P574["cur"]
    unless_null $P573, fallback2528
    nqp_get_sc_object $P582, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P573, $P582
  fallback2528:
    find_dynamic_lex $P584, "%*REG"
    unless_null $P584, fallback2529
    get_hll_global $P587, "GLOBAL"
    get_who $P586, $P587
    set $P585, $P586["%REG"]
    unless_null $P585, fallback2530
    get_hll_global $P589, "GLOBAL"
    get_who $P588, $P589
    new $P590, 'Hash'
    set $P588["%REG"], $P590
    set $P585, $P590
  fallback2530:
    unless_null $P585, vivi_6692531
    die "Contextual %*REG not found"
    box $P591, "Contextual %*REG not found"
    set $P585, $P591
  vivi_6692531:
    set $P584, $P585
  fallback2529:
    set $P583, $P584["cstack"]
    unless_null $P583, fallback2532
    nqp_get_sc_object $P592, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P583, $P592
  fallback2532:
    $P593 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P573, "$P11", $P105, $P583 :named("result"))
.annotate 'line', 3329
    $P594 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 3330
    $P595 = $P101."push"($P104)
.annotate 'line', 3331
    find_dynamic_lex $P597, "%*REG"
    unless_null $P597, fallback2533
    get_hll_global $P600, "GLOBAL"
    get_who $P599, $P600
    set $P598, $P599["%REG"]
    unless_null $P598, fallback2534
    get_hll_global $P602, "GLOBAL"
    get_who $P601, $P602
    new $P603, 'Hash'
    set $P601["%REG"], $P603
    set $P598, $P603
  fallback2534:
    unless_null $P598, vivi_6702535
    die "Contextual %*REG not found"
    box $P604, "Contextual %*REG not found"
    set $P598, $P604
  vivi_6702535:
    set $P597, $P598
  fallback2533:
    set $P596, $P597["fail"]
    unless_null $P596, fallback2536
    nqp_get_sc_object $P605, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P596, $P605
  fallback2536:
    $P606 = $P101."push_pirop"("goto", $P596)
.annotate 'line', 3332
    $P607 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_145_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3336
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P679 = 'cuid_317_1346233447.816' 
    capture_lex $P679 
    .lex "$ops", $P101 
    .lex "$name", $P102 
    .lex "$subtype", $P103 
    .lex "$cpn", $P104 
    .lex "@pargs", $P105 
    .lex "@nargs", $P106 
    .lex "$subpost", $P107 
    .lex "$testop", $P108 
    .lex "$captured", $P109 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    new $P506, 'ResizablePMCArray'
    set $P106, $P506
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P107, $P507
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P108, $P508
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P109, $P509
.annotate 'line', 3337
    nqp_decontainerize $P510, _lex_param_0
    find_dynamic_lex $P512, "%*REG"
    unless_null $P512, fallback2537
    get_hll_global $P515, "GLOBAL"
    get_who $P514, $P515
    set $P513, $P514["%REG"]
    unless_null $P513, fallback2538
    get_hll_global $P517, "GLOBAL"
    get_who $P516, $P517
    new $P518, 'Hash'
    set $P516["%REG"], $P518
    set $P513, $P518
  fallback2538:
    unless_null $P513, vivi_6712539
    die "Contextual %*REG not found"
    box $P519, "Contextual %*REG not found"
    set $P513, $P519
  vivi_6712539:
    set $P512, $P513
  fallback2537:
    set $P511, $P512["cur"]
    unless_null $P511, fallback2540
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P520
  fallback2540:
    $P521 = $P510."post_new"("Ops", $P511 :named("result"))
    set $P101, $P521
.annotate 'line', 3338
    $P522 = _lex_param_1."name"()
    defined $I501, $P522
    unless $I501 goto if672_else2541 
    find_dynamic_lex $P523, "$*PASTCOMPILER"
    unless_null $P523, fallback2543
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    set $P524, $P525["$PASTCOMPILER"]
    unless_null $P524, fallback2544
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P527
  fallback2544:
    unless_null $P524, vivi_6732545
    die "Contextual $*PASTCOMPILER not found"
    box $P528, "Contextual $*PASTCOMPILER not found"
    set $P524, $P528
  vivi_6732545:
    set $P523, $P524
  fallback2543:
    $P529 = _lex_param_1."name"()
    $P530 = $P523."as_post"($P529, "*" :named("rtype"))
    set $P531, $P530
    goto if672_end2542
  if672_else2541:
    box $P532, ""
    set $P531, $P532
  if672_end2542:
    set $P102, $P531
.annotate 'line', 3339
    $P533 = _lex_param_1."subtype"()
    set $P103, $P533
    set $P534, _lex_param_1[0]
    unless_null $P534, fallback2548
    nqp_get_sc_object $P535, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P534, $P535
  fallback2548:
    get_hll_global $P539, "GLOBAL"
    nqp_get_package_through_who $P538, $P539, "QAST"
    get_who $P537, $P538
    set $P536, $P537["Node"]
    unless_null $P536, fallback2549
    nqp_get_sc_object $P540, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P536, $P540
  fallback2549:
    type_check $I502, $P534, $P536
    unless $I502 goto if674_else2546 
.annotate 'line', 3341
    nqp_decontainerize $P541, _lex_param_0
    set $P542, _lex_param_1[0]
    unless_null $P542, fallback2550
    nqp_get_sc_object $P543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P543
  fallback2550:
    $P544 = $P541."children"($P542)
    set $P549, $P544
    goto if674_end2547
  if674_else2546:
.annotate 'line', 3342
    nqp_decontainerize $P545, _lex_param_0
    set $P546, _lex_param_1[0]
    unless_null $P546, fallback2551
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P546, $P547
  fallback2551:
    $P548 = $P545."post_children"($P546)
    set $P549, $P548
  if674_end2547:
    set $P104, $P549
    set $P551, $P104[1]
    unless_null $P551, fallback2553
    nqp_get_sc_object $P552, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P552
  fallback2553:
    set $P550, $P551
    defined $I503, $P550
    if $I503, defor2552
    new $P553, 'ResizablePMCArray'
    set $P550, $P553
  defor2552:
    set $P105, $P550
    set $P555, $P104[2]
    unless_null $P555, fallback2555
    nqp_get_sc_object $P556, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P555, $P556
  fallback2555:
    set $P554, $P555
    defined $I504, $P554
    if $I504, defor2554
    new $P557, 'ResizablePMCArray'
    set $P554, $P557
  defor2554:
    set $P106, $P554
    shift $P558, $P105
    set $P107, $P558
.annotate 'line', 3346
    $P559 = _lex_param_1."negate"()
    unless $P559 goto if675_else2556 
    set $S501, "ge"
    goto if675_end2557
  if675_else2556:
    set $S501, "lt"
  if675_end2557:
    box $P560, $S501
    set $P108, $P560
    box $P561, 0
    set $P109, $P561
.annotate 'line', 3348
    set $P562, $P104[0]
    unless_null $P562, fallback2558
    nqp_get_sc_object $P563, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P562, $P563
  fallback2558:
    $P564 = $P101."push"($P562)
.annotate 'line', 3349
    find_dynamic_lex $P566, "%*REG"
    unless_null $P566, fallback2559
    get_hll_global $P569, "GLOBAL"
    get_who $P568, $P569
    set $P567, $P568["%REG"]
    unless_null $P567, fallback2560
    get_hll_global $P571, "GLOBAL"
    get_who $P570, $P571
    new $P572, 'Hash'
    set $P570["%REG"], $P572
    set $P567, $P572
  fallback2560:
    unless_null $P567, vivi_6762561
    die "Contextual %*REG not found"
    box $P573, "Contextual %*REG not found"
    set $P567, $P573
  vivi_6762561:
    set $P566, $P567
  fallback2559:
    set $P565, $P566["cur"]
    unless_null $P565, fallback2562
    nqp_get_sc_object $P574, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P565, $P574
  fallback2562:
    find_dynamic_lex $P576, "%*REG"
    unless_null $P576, fallback2563
    get_hll_global $P579, "GLOBAL"
    get_who $P578, $P579
    set $P577, $P578["%REG"]
    unless_null $P577, fallback2564
    get_hll_global $P581, "GLOBAL"
    get_who $P580, $P581
    new $P582, 'Hash'
    set $P580["%REG"], $P582
    set $P577, $P582
  fallback2564:
    unless_null $P577, vivi_6772565
    die "Contextual %*REG not found"
    box $P583, "Contextual %*REG not found"
    set $P577, $P583
  vivi_6772565:
    set $P576, $P577
  fallback2563:
    set $P575, $P576["curclass"]
    unless_null $P575, fallback2566
    nqp_get_sc_object $P584, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P575, $P584
  fallback2566:
    find_dynamic_lex $P586, "%*REG"
    unless_null $P586, fallback2567
    get_hll_global $P589, "GLOBAL"
    get_who $P588, $P589
    set $P587, $P588["%REG"]
    unless_null $P587, fallback2568
    get_hll_global $P591, "GLOBAL"
    get_who $P590, $P591
    new $P592, 'Hash'
    set $P590["%REG"], $P592
    set $P587, $P592
  fallback2568:
    unless_null $P587, vivi_6782569
    die "Contextual %*REG not found"
    box $P593, "Contextual %*REG not found"
    set $P587, $P593
  vivi_6782569:
    set $P586, $P587
  fallback2567:
    set $P585, $P586["pos"]
    unless_null $P585, fallback2570
    nqp_get_sc_object $P594, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P585, $P594
  fallback2570:
    $P595 = $P101."push_pirop"("repr_bind_attr_int", $P565, $P575, "\"$!pos\"", $P585)
.annotate 'line', 3350
    find_dynamic_lex $P597, "%*REG"
    unless_null $P597, fallback2571
    get_hll_global $P600, "GLOBAL"
    get_who $P599, $P600
    set $P598, $P599["%REG"]
    unless_null $P598, fallback2572
    get_hll_global $P602, "GLOBAL"
    get_who $P601, $P602
    new $P603, 'Hash'
    set $P601["%REG"], $P603
    set $P598, $P603
  fallback2572:
    unless_null $P598, vivi_6792573
    die "Contextual %*REG not found"
    box $P604, "Contextual %*REG not found"
    set $P598, $P604
  vivi_6792573:
    set $P597, $P598
  fallback2571:
    set $P596, $P597["cur"]
    unless_null $P596, fallback2574
    nqp_get_sc_object $P605, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P596, $P605
  fallback2574:
    $P606 = $P101."push_pirop"("callmethod", $P107, $P596, $P105 :flat, $P106 :flat, "$P11" :named("result"))
.annotate 'line', 3351
    find_dynamic_lex $P608, "%*REG"
    unless_null $P608, fallback2575
    get_hll_global $P611, "GLOBAL"
    get_who $P610, $P611
    set $P609, $P610["%REG"]
    unless_null $P609, fallback2576
    get_hll_global $P613, "GLOBAL"
    get_who $P612, $P613
    new $P614, 'Hash'
    set $P612["%REG"], $P614
    set $P609, $P614
  fallback2576:
    unless_null $P609, vivi_6802577
    die "Contextual %*REG not found"
    box $P615, "Contextual %*REG not found"
    set $P609, $P615
  vivi_6802577:
    set $P608, $P609
  fallback2575:
    set $P607, $P608["curclass"]
    unless_null $P607, fallback2578
    nqp_get_sc_object $P616, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P607, $P616
  fallback2578:
    $P617 = $P101."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P607, "\"$!pos\"")
.annotate 'line', 3352
    find_dynamic_lex $P619, "%*REG"
    unless_null $P619, fallback2579
    get_hll_global $P622, "GLOBAL"
    get_who $P621, $P622
    set $P620, $P621["%REG"]
    unless_null $P620, fallback2580
    get_hll_global $P624, "GLOBAL"
    get_who $P623, $P624
    new $P625, 'Hash'
    set $P623["%REG"], $P625
    set $P620, $P625
  fallback2580:
    unless_null $P620, vivi_6812581
    die "Contextual %*REG not found"
    box $P626, "Contextual %*REG not found"
    set $P620, $P626
  vivi_6812581:
    set $P619, $P620
  fallback2579:
    set $P618, $P619["fail"]
    unless_null $P618, fallback2582
    nqp_get_sc_object $P627, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P618, $P627
  fallback2582:
    $P628 = $P101."push_pirop"($P108, "$I11", "0", $P618)
    set $S502, $P103
    isne $I505, $S502, "zerowidth"
    box $P632, $I505
    set $P631, $P632
    unless $I505 goto if682_end2584 
    .const 'Sub' $P629 = 'cuid_317_1346233447.816' 
    capture_lex $P629
    $P630 = $P629()
    set $P631, $P630
  if682_end2584:
    isfalse $I506, $P109
    set $I508, $I506
    unless $I506 goto if699_end2642 
    set $S503, $P103
    iseq $I507, $S503, "capture"
    set $I508, $I507
  if699_end2642:
    box $P655, $I508
    set $P654, $P655
    unless $I508 goto if698_end2640 
.annotate 'line', 3387
    find_dynamic_lex $P634, "%*REG"
    unless_null $P634, fallback2643
    get_hll_global $P637, "GLOBAL"
    get_who $P636, $P637
    set $P635, $P636["%REG"]
    unless_null $P635, fallback2644
    get_hll_global $P639, "GLOBAL"
    get_who $P638, $P639
    new $P640, 'Hash'
    set $P638["%REG"], $P640
    set $P635, $P640
  fallback2644:
    unless_null $P635, vivi_7002645
    die "Contextual %*REG not found"
    box $P641, "Contextual %*REG not found"
    set $P635, $P641
  vivi_7002645:
    set $P634, $P635
  fallback2643:
    set $P633, $P634["cur"]
    unless_null $P633, fallback2646
    nqp_get_sc_object $P642, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P633, $P642
  fallback2646:
    find_dynamic_lex $P644, "%*REG"
    unless_null $P644, fallback2647
    get_hll_global $P647, "GLOBAL"
    get_who $P646, $P647
    set $P645, $P646["%REG"]
    unless_null $P645, fallback2648
    get_hll_global $P649, "GLOBAL"
    get_who $P648, $P649
    new $P650, 'Hash'
    set $P648["%REG"], $P650
    set $P645, $P650
  fallback2648:
    unless_null $P645, vivi_7012649
    die "Contextual %*REG not found"
    box $P651, "Contextual %*REG not found"
    set $P645, $P651
  vivi_7012649:
    set $P644, $P645
  fallback2647:
    set $P643, $P644["cstack"]
    unless_null $P643, fallback2650
    nqp_get_sc_object $P652, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P643, $P652
  fallback2650:
    $P653 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P633, "$P11", $P102, $P643 :named("result"))
    set $P654, $P653
  if698_end2640:
    set $S504, $P103
    iseq $I509, $S504, "zerowidth"
    box $P678, $I509
    set $P677, $P678
    if $I509 goto unless702_end2652 
.annotate 'line', 3390
    find_dynamic_lex $P657, "%*REG"
    unless_null $P657, fallback2653
    get_hll_global $P660, "GLOBAL"
    get_who $P659, $P660
    set $P658, $P659["%REG"]
    unless_null $P658, fallback2654
    get_hll_global $P662, "GLOBAL"
    get_who $P661, $P662
    new $P663, 'Hash'
    set $P661["%REG"], $P663
    set $P658, $P663
  fallback2654:
    unless_null $P658, vivi_7032655
    die "Contextual %*REG not found"
    box $P664, "Contextual %*REG not found"
    set $P658, $P664
  vivi_7032655:
    set $P657, $P658
  fallback2653:
    set $P656, $P657["pos"]
    unless_null $P656, fallback2656
    nqp_get_sc_object $P665, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P656, $P665
  fallback2656:
    find_dynamic_lex $P667, "%*REG"
    unless_null $P667, fallback2657
    get_hll_global $P670, "GLOBAL"
    get_who $P669, $P670
    set $P668, $P669["%REG"]
    unless_null $P668, fallback2658
    get_hll_global $P672, "GLOBAL"
    get_who $P671, $P672
    new $P673, 'Hash'
    set $P671["%REG"], $P673
    set $P668, $P673
  fallback2658:
    unless_null $P668, vivi_7042659
    die "Contextual %*REG not found"
    box $P674, "Contextual %*REG not found"
    set $P668, $P674
  vivi_7042659:
    set $P667, $P668
  fallback2657:
    set $P666, $P667["curclass"]
    unless_null $P666, fallback2660
    nqp_get_sc_object $P675, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P666, $P675
  fallback2660:
    $P676 = $P101."push_pirop"("repr_get_attr_int", $P656, "$P11", $P666, "\"$!pos\"")
    set $P677, $P676
  unless702_end2652:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_317_1346233447.816") :anon :lex :outer("cuid_145_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3353
    .const 'Sub' $P523 = 'cuid_316_1346233447.816' 
    capture_lex $P523 
    .lex "$rxname", $P101 
    .lex "$passlabel", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3354
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."unique"("rxsubrule")
    set $P101, $P505
.annotate 'line', 3355
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    set $S502, $P101
    concat $S501, $S502, "_pass"
    $P508 = $P506."post_new"("Label", $S501 :named("name"))
    set $P102, $P508
.annotate 'line', 3356
    find_lex $P509, "$node"
    $P510 = $P509."backtrack"()
    set $S503, $P510
    iseq $I501, $S503, "r"
    unless $I501 goto if683_else2585 
    find_lex $P511, "$subtype"
    set $S504, $P511
    iseq $I502, $S504, "method"
    box $P519, $I502
    set $P518, $P519
    if $I502 goto unless684_end2588 
.annotate 'line', 3357
.annotate 'line', 3358
    find_lex $P513, "self"
    nqp_decontainerize $P512, $P513
    find_lex $P514, "$ops"
    $P515 = $P512."regex_mark"($P514, $P102, -1, 0)
.annotate 'line', 3359
    find_lex $P516, "$ops"
    $P517 = $P516."push"($P102)
    set $P518, $P517
  unless684_end2588:
    set $P522, $P518
    goto if683_end2586
  if683_else2585:
    .const 'Sub' $P520 = 'cuid_316_1346233447.816' 
    capture_lex $P520
    $P521 = $P520()
    set $P522, $P521
  if683_end2586:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_316_1346233447.816") :anon :lex :outer("cuid_317_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3362
    .lex "$backlabel", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 3363
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$rxname"
    set $S502, $P504
    concat $S501, $S502, "_back"
    $P505 = $P502."post_new"("Label", $S501 :named("name"))
    set $P101, $P505
.annotate 'line', 3364
    find_lex $P506, "$ops"
    find_lex $P507, "$passlabel"
    $P508 = $P506."push_pirop"("goto", $P507)
.annotate 'line', 3365
    find_lex $P509, "$ops"
    $P510 = $P509."push"($P101)
.annotate 'line', 3366
    find_lex $P511, "$ops"
    $P512 = $P511."push_pirop"("callmethod", "\"!cursor_next\"", "$P11", "$P11" :named("result"))
.annotate 'line', 3367
    find_lex $P513, "$ops"
    find_dynamic_lex $P515, "%*REG"
    unless_null $P515, fallback2589
    get_hll_global $P518, "GLOBAL"
    get_who $P517, $P518
    set $P516, $P517["%REG"]
    unless_null $P516, fallback2590
    get_hll_global $P520, "GLOBAL"
    get_who $P519, $P520
    new $P521, 'Hash'
    set $P519["%REG"], $P521
    set $P516, $P521
  fallback2590:
    unless_null $P516, vivi_6852591
    die "Contextual %*REG not found"
    box $P522, "Contextual %*REG not found"
    set $P516, $P522
  vivi_6852591:
    set $P515, $P516
  fallback2589:
    set $P514, $P515["curclass"]
    unless_null $P514, fallback2592
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P523
  fallback2592:
    $P524 = $P513."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P514, "\"$!pos\"")
.annotate 'line', 3368
    find_lex $P525, "$ops"
    find_lex $P526, "$testop"
    find_dynamic_lex $P528, "%*REG"
    unless_null $P528, fallback2593
    get_hll_global $P531, "GLOBAL"
    get_who $P530, $P531
    set $P529, $P530["%REG"]
    unless_null $P529, fallback2594
    get_hll_global $P533, "GLOBAL"
    get_who $P532, $P533
    new $P534, 'Hash'
    set $P532["%REG"], $P534
    set $P529, $P534
  fallback2594:
    unless_null $P529, vivi_6862595
    die "Contextual %*REG not found"
    box $P535, "Contextual %*REG not found"
    set $P529, $P535
  vivi_6862595:
    set $P528, $P529
  fallback2593:
    set $P527, $P528["fail"]
    unless_null $P527, fallback2596
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P527, $P536
  fallback2596:
    $P537 = $P525."push_pirop"($P526, "$I11", "0", $P527)
.annotate 'line', 3369
    find_lex $P538, "$ops"
    find_lex $P539, "$passlabel"
    $P540 = $P538."push"($P539)
    find_lex $P541, "$subtype"
    set $S503, $P541
    iseq $I501, $S503, "capture"
    unless $I501 goto if687_else2597 
.annotate 'line', 3370
.annotate 'line', 3371
    find_lex $P542, "$ops"
    find_dynamic_lex $P544, "%*REG"
    unless_null $P544, fallback2599
    get_hll_global $P547, "GLOBAL"
    get_who $P546, $P547
    set $P545, $P546["%REG"]
    unless_null $P545, fallback2600
    get_hll_global $P549, "GLOBAL"
    get_who $P548, $P549
    new $P550, 'Hash'
    set $P548["%REG"], $P550
    set $P545, $P550
  fallback2600:
    unless_null $P545, vivi_6882601
    die "Contextual %*REG not found"
    box $P551, "Contextual %*REG not found"
    set $P545, $P551
  vivi_6882601:
    set $P544, $P545
  fallback2599:
    set $P543, $P544["cur"]
    unless_null $P543, fallback2602
    nqp_get_sc_object $P552, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P543, $P552
  fallback2602:
    find_lex $P553, "$name"
    find_dynamic_lex $P555, "%*REG"
    unless_null $P555, fallback2603
    get_hll_global $P558, "GLOBAL"
    get_who $P557, $P558
    set $P556, $P557["%REG"]
    unless_null $P556, fallback2604
    get_hll_global $P560, "GLOBAL"
    get_who $P559, $P560
    new $P561, 'Hash'
    set $P559["%REG"], $P561
    set $P556, $P561
  fallback2604:
    unless_null $P556, vivi_6892605
    die "Contextual %*REG not found"
    box $P562, "Contextual %*REG not found"
    set $P556, $P562
  vivi_6892605:
    set $P555, $P556
  fallback2603:
    set $P554, $P555["cstack"]
    unless_null $P554, fallback2606
    nqp_get_sc_object $P563, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P554, $P563
  fallback2606:
    $P564 = $P542."push_pirop"("callmethod", "\"!cursor_capture\"", $P543, "$P11", $P553, $P554 :named("result"))
    box $P565, 1
    store_lex "$captured", $P565
    set $P588, $P565
    goto if687_end2598
  if687_else2597:
.annotate 'line', 3375
.annotate 'line', 3376
    find_lex $P566, "$ops"
    find_dynamic_lex $P568, "%*REG"
    unless_null $P568, fallback2607
    get_hll_global $P571, "GLOBAL"
    get_who $P570, $P571
    set $P569, $P570["%REG"]
    unless_null $P569, fallback2608
    get_hll_global $P573, "GLOBAL"
    get_who $P572, $P573
    new $P574, 'Hash'
    set $P572["%REG"], $P574
    set $P569, $P574
  fallback2608:
    unless_null $P569, vivi_6902609
    die "Contextual %*REG not found"
    box $P575, "Contextual %*REG not found"
    set $P569, $P575
  vivi_6902609:
    set $P568, $P569
  fallback2607:
    set $P567, $P568["cur"]
    unless_null $P567, fallback2610
    nqp_get_sc_object $P576, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P567, $P576
  fallback2610:
    find_dynamic_lex $P578, "%*REG"
    unless_null $P578, fallback2611
    get_hll_global $P581, "GLOBAL"
    get_who $P580, $P581
    set $P579, $P580["%REG"]
    unless_null $P579, fallback2612
    get_hll_global $P583, "GLOBAL"
    get_who $P582, $P583
    new $P584, 'Hash'
    set $P582["%REG"], $P584
    set $P579, $P584
  fallback2612:
    unless_null $P579, vivi_6912613
    die "Contextual %*REG not found"
    box $P585, "Contextual %*REG not found"
    set $P579, $P585
  vivi_6912613:
    set $P578, $P579
  fallback2611:
    set $P577, $P578["cstack"]
    unless_null $P577, fallback2614
    nqp_get_sc_object $P586, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P577, $P586
  fallback2614:
    $P587 = $P566."push_pirop"("callmethod", "\"!cursor_push_cstack\"", $P567, "$P11", $P577 :named("result"))
    set $P588, $P587
  if687_end2598:
.annotate 'line', 3379
    find_lex $P589, "$ops"
    $P590 = $P589."push_pirop"("set_addr", "$I11", $P101)
.annotate 'line', 3380
    find_lex $P591, "$ops"
    find_dynamic_lex $P593, "%*REG"
    unless_null $P593, fallback2615
    get_hll_global $P596, "GLOBAL"
    get_who $P595, $P596
    set $P594, $P595["%REG"]
    unless_null $P594, fallback2616
    get_hll_global $P598, "GLOBAL"
    get_who $P597, $P598
    new $P599, 'Hash'
    set $P597["%REG"], $P599
    set $P594, $P599
  fallback2616:
    unless_null $P594, vivi_6922617
    die "Contextual %*REG not found"
    box $P600, "Contextual %*REG not found"
    set $P594, $P600
  vivi_6922617:
    set $P593, $P594
  fallback2615:
    set $P592, $P593["bstack"]
    unless_null $P592, fallback2618
    nqp_get_sc_object $P601, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P592, $P601
  fallback2618:
    $P602 = $P591."push_pirop"("push", $P592, "$I11")
.annotate 'line', 3381
    find_lex $P603, "$ops"
    find_dynamic_lex $P605, "%*REG"
    unless_null $P605, fallback2619
    get_hll_global $P608, "GLOBAL"
    get_who $P607, $P608
    set $P606, $P607["%REG"]
    unless_null $P606, fallback2620
    get_hll_global $P610, "GLOBAL"
    get_who $P609, $P610
    new $P611, 'Hash'
    set $P609["%REG"], $P611
    set $P606, $P611
  fallback2620:
    unless_null $P606, vivi_6932621
    die "Contextual %*REG not found"
    box $P612, "Contextual %*REG not found"
    set $P606, $P612
  vivi_6932621:
    set $P605, $P606
  fallback2619:
    set $P604, $P605["bstack"]
    unless_null $P604, fallback2622
    nqp_get_sc_object $P613, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P604, $P613
  fallback2622:
    $P614 = $P603."push_pirop"("push", $P604, 0)
.annotate 'line', 3382
    find_lex $P615, "$ops"
    find_dynamic_lex $P617, "%*REG"
    unless_null $P617, fallback2623
    get_hll_global $P620, "GLOBAL"
    get_who $P619, $P620
    set $P618, $P619["%REG"]
    unless_null $P618, fallback2624
    get_hll_global $P622, "GLOBAL"
    get_who $P621, $P622
    new $P623, 'Hash'
    set $P621["%REG"], $P623
    set $P618, $P623
  fallback2624:
    unless_null $P618, vivi_6942625
    die "Contextual %*REG not found"
    box $P624, "Contextual %*REG not found"
    set $P618, $P624
  vivi_6942625:
    set $P617, $P618
  fallback2623:
    set $P616, $P617["bstack"]
    unless_null $P616, fallback2626
    nqp_get_sc_object $P625, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P616, $P625
  fallback2626:
    find_dynamic_lex $P627, "%*REG"
    unless_null $P627, fallback2627
    get_hll_global $P630, "GLOBAL"
    get_who $P629, $P630
    set $P628, $P629["%REG"]
    unless_null $P628, fallback2628
    get_hll_global $P632, "GLOBAL"
    get_who $P631, $P632
    new $P633, 'Hash'
    set $P631["%REG"], $P633
    set $P628, $P633
  fallback2628:
    unless_null $P628, vivi_6952629
    die "Contextual %*REG not found"
    box $P634, "Contextual %*REG not found"
    set $P628, $P634
  vivi_6952629:
    set $P627, $P628
  fallback2627:
    set $P626, $P627["pos"]
    unless_null $P626, fallback2630
    nqp_get_sc_object $P635, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P626, $P635
  fallback2630:
    $P636 = $P615."push_pirop"("push", $P616, $P626)
.annotate 'line', 3383
    find_lex $P637, "$ops"
    find_dynamic_lex $P639, "%*REG"
    unless_null $P639, fallback2631
    get_hll_global $P642, "GLOBAL"
    get_who $P641, $P642
    set $P640, $P641["%REG"]
    unless_null $P640, fallback2632
    get_hll_global $P644, "GLOBAL"
    get_who $P643, $P644
    new $P645, 'Hash'
    set $P643["%REG"], $P645
    set $P640, $P645
  fallback2632:
    unless_null $P640, vivi_6962633
    die "Contextual %*REG not found"
    box $P646, "Contextual %*REG not found"
    set $P640, $P646
  vivi_6962633:
    set $P639, $P640
  fallback2631:
    set $P638, $P639["cstack"]
    unless_null $P638, fallback2634
    nqp_get_sc_object $P647, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P638, $P647
  fallback2634:
    $P648 = $P637."push_pirop"("elements", "$I11", $P638)
.annotate 'line', 3384
    find_lex $P649, "$ops"
    find_dynamic_lex $P651, "%*REG"
    unless_null $P651, fallback2635
    get_hll_global $P654, "GLOBAL"
    get_who $P653, $P654
    set $P652, $P653["%REG"]
    unless_null $P652, fallback2636
    get_hll_global $P656, "GLOBAL"
    get_who $P655, $P656
    new $P657, 'Hash'
    set $P655["%REG"], $P657
    set $P652, $P657
  fallback2636:
    unless_null $P652, vivi_6972637
    die "Contextual %*REG not found"
    box $P658, "Contextual %*REG not found"
    set $P652, $P658
  vivi_6972637:
    set $P651, $P652
  fallback2635:
    set $P650, $P651["bstack"]
    unless_null $P650, fallback2638
    nqp_get_sc_object $P659, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P650, $P659
  fallback2638:
    $P660 = $P649."push_pirop"("push", $P650, "$I11")
    .return ($P660) 
.end
.HLL "nqp"
.namespace []
.sub "uniprop" :subid("cuid_146_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3395
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cmpop", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 3396
    nqp_decontainerize $P503, _lex_param_0
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback2661
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback2662
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback2662:
    unless_null $P506, vivi_7052663
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_7052663:
    set $P505, $P506
  fallback2661:
    set $P504, $P505["cur"]
    unless_null $P504, fallback2664
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P513
  fallback2664:
    $P514 = $P503."post_new"("Ops", $P504 :named("result"))
    set $P101, $P514
.annotate 'line', 3397
    $P515 = _lex_param_1."negate"()
    unless $P515 goto if706_else2665 
    set $S501, "ne"
    goto if706_end2666
  if706_else2665:
    set $S501, "eq"
  if706_end2666:
    box $P516, $S501
    set $P102, $P516
.annotate 'line', 3398
    set $P517, _lex_param_1[0]
    unless_null $P517, fallback2667
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback2667:
    set $S504, $P517
    concat $S503, "\"", $S504
    concat $S502, $S503, "\""
    $P519 = $P101."push_pirop"("assign", "$S10", $S502)
.annotate 'line', 3399
    find_dynamic_lex $P521, "%*REG"
    unless_null $P521, fallback2668
    get_hll_global $P524, "GLOBAL"
    get_who $P523, $P524
    set $P522, $P523["%REG"]
    unless_null $P522, fallback2669
    get_hll_global $P526, "GLOBAL"
    get_who $P525, $P526
    new $P527, 'Hash'
    set $P525["%REG"], $P527
    set $P522, $P527
  fallback2669:
    unless_null $P522, vivi_7072670
    die "Contextual %*REG not found"
    box $P528, "Contextual %*REG not found"
    set $P522, $P528
  vivi_7072670:
    set $P521, $P522
  fallback2668:
    set $P520, $P521["tgt"]
    unless_null $P520, fallback2671
    nqp_get_sc_object $P529, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P529
  fallback2671:
    find_dynamic_lex $P531, "%*REG"
    unless_null $P531, fallback2672
    get_hll_global $P534, "GLOBAL"
    get_who $P533, $P534
    set $P532, $P533["%REG"]
    unless_null $P532, fallback2673
    get_hll_global $P536, "GLOBAL"
    get_who $P535, $P536
    new $P537, 'Hash'
    set $P535["%REG"], $P537
    set $P532, $P537
  fallback2673:
    unless_null $P532, vivi_7082674
    die "Contextual %*REG not found"
    box $P538, "Contextual %*REG not found"
    set $P532, $P538
  vivi_7082674:
    set $P531, $P532
  fallback2672:
    set $P530, $P531["pos"]
    unless_null $P530, fallback2675
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P530, $P539
  fallback2675:
    $P540 = $P101."push_pirop"("is_uprop", "$I11", "$S10", $P520, $P530)
.annotate 'line', 3400
    find_dynamic_lex $P542, "%*REG"
    unless_null $P542, fallback2676
    get_hll_global $P545, "GLOBAL"
    get_who $P544, $P545
    set $P543, $P544["%REG"]
    unless_null $P543, fallback2677
    get_hll_global $P547, "GLOBAL"
    get_who $P546, $P547
    new $P548, 'Hash'
    set $P546["%REG"], $P548
    set $P543, $P548
  fallback2677:
    unless_null $P543, vivi_7092678
    die "Contextual %*REG not found"
    box $P549, "Contextual %*REG not found"
    set $P543, $P549
  vivi_7092678:
    set $P542, $P543
  fallback2676:
    set $P541, $P542["fail"]
    unless_null $P541, fallback2679
    nqp_get_sc_object $P550, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P550
  fallback2679:
    $P551 = $P101."push_pirop"($P102, "$I11", 0, $P541)
.annotate 'line', 3401
    $P552 = _lex_param_1."subtype"()
    set $S505, $P552
    iseq $I501, $S505, "zerowidth"
    box $P565, $I501
    set $P564, $P565
    if $I501 goto unless710_end2681 
    find_dynamic_lex $P554, "%*REG"
    unless_null $P554, fallback2682
    get_hll_global $P557, "GLOBAL"
    get_who $P556, $P557
    set $P555, $P556["%REG"]
    unless_null $P555, fallback2683
    get_hll_global $P559, "GLOBAL"
    get_who $P558, $P559
    new $P560, 'Hash'
    set $P558["%REG"], $P560
    set $P555, $P560
  fallback2683:
    unless_null $P555, vivi_7112684
    die "Contextual %*REG not found"
    box $P561, "Contextual %*REG not found"
    set $P555, $P561
  vivi_7112684:
    set $P554, $P555
  fallback2682:
    set $P553, $P554["pos"]
    unless_null $P553, fallback2685
    nqp_get_sc_object $P562, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P553, $P562
  fallback2685:
    $P563 = $P101."push_pirop"("inc", $P553)
    set $P564, $P563
  unless710_end2681:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_147_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."subrule"(_lex_param_1)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "regex_mark" :subid("cuid_148_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
    .lex "$pos", _lex_param_3 
    .lex "$rep", _lex_param_4 
.annotate 'line', 3409
    find_dynamic_lex $P502, "%*REG"
    unless_null $P502, fallback2686
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["%REG"]
    unless_null $P503, fallback2687
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    new $P508, 'Hash'
    set $P506["%REG"], $P508
    set $P503, $P508
  fallback2687:
    unless_null $P503, vivi_7122688
    die "Contextual %*REG not found"
    box $P509, "Contextual %*REG not found"
    set $P503, $P509
  vivi_7122688:
    set $P502, $P503
  fallback2686:
    set $P501, $P502["bstack"]
    unless_null $P501, fallback2689
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P510
  fallback2689:
    $P511 = _lex_param_1."push_pirop"("nqp_rxmark", $P501, _lex_param_2, _lex_param_3, _lex_param_4)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "regex_peek" :subid("cuid_149_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .const 'Sub' $P518 = 'cuid_318_1346233447.816' 
    capture_lex $P518 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
    .lex "@regs", _lex_param_3 
.annotate 'line', 3413
    find_dynamic_lex $P502, "%*REG"
    unless_null $P502, fallback2690
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["%REG"]
    unless_null $P503, fallback2691
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    new $P508, 'Hash'
    set $P506["%REG"], $P508
    set $P503, $P508
  fallback2691:
    unless_null $P503, vivi_7132692
    die "Contextual %*REG not found"
    box $P509, "Contextual %*REG not found"
    set $P503, $P509
  vivi_7132692:
    set $P502, $P503
  fallback2690:
    set $P501, $P502["bstack"]
    unless_null $P501, fallback2693
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P510
  fallback2693:
    $P511 = _lex_param_1."push_pirop"("nqp_rxpeek", "$I19", $P501, _lex_param_2)
    set $P512, _lex_param_3
    iter $P514, _lex_param_3
    new $P516, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P516, for_handlers2700
    push_eh $P516
  for_next2701:
    unless $P514, for_done2703
    shift $P517, $P514
  for_redo2702:
    .const 'Sub' $P515 = 'cuid_318_1346233447.816' 
    capture_lex $P515
    $P512 = $P515($P517)
    goto for_next2701
  for_handlers2700:
    .get_results ($P516)
    pop_upto_eh $P516
    getattribute $P516, $P516, 'type'
    eq $P516, .CONTROL_LOOP_NEXT, for_next2701
    eq $P516, .CONTROL_LOOP_REDO, for_redo2702
  for_done2703:
    pop_eh 
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_318_1346233447.816") :anon :lex :outer("cuid_149_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3414
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 3415
    find_lex $P501, "$ops"
    $P502 = $P501."push_pirop"("inc", "$I19")
    set $S501, _lex_param_0
    isne $I501, $S501, "*"
    box $P516, $I501
    set $P515, $P516
    unless $I501 goto if714_end2695 
.annotate 'line', 3416
    find_lex $P503, "$ops"
    find_dynamic_lex $P505, "%*REG"
    unless_null $P505, fallback2696
    get_hll_global $P508, "GLOBAL"
    get_who $P507, $P508
    set $P506, $P507["%REG"]
    unless_null $P506, fallback2697
    get_hll_global $P510, "GLOBAL"
    get_who $P509, $P510
    new $P511, 'Hash'
    set $P509["%REG"], $P511
    set $P506, $P511
  fallback2697:
    unless_null $P506, vivi_7152698
    die "Contextual %*REG not found"
    box $P512, "Contextual %*REG not found"
    set $P506, $P512
  vivi_7152698:
    set $P505, $P506
  fallback2696:
    set $P504, $P505["bstack"]
    unless_null $P504, fallback2699
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P513
  fallback2699:
    set $S503, $P504
    concat $S502, $S503, "[$I19]"
    $P514 = $P503."push_pirop"("set", _lex_param_0, $S502)
    set $P515, $P514
  if714_end2695:
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "regex_commit" :subid("cuid_150_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3420
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
.annotate 'line', 3421
    find_dynamic_lex $P502, "%*REG"
    unless_null $P502, fallback2704
    get_hll_global $P505, "GLOBAL"
    get_who $P504, $P505
    set $P503, $P504["%REG"]
    unless_null $P503, fallback2705
    get_hll_global $P507, "GLOBAL"
    get_who $P506, $P507
    new $P508, 'Hash'
    set $P506["%REG"], $P508
    set $P503, $P508
  fallback2705:
    unless_null $P503, vivi_7162706
    die "Contextual %*REG not found"
    box $P509, "Contextual %*REG not found"
    set $P503, $P509
  vivi_7162706:
    set $P502, $P503
  fallback2704:
    set $P501, $P502["bstack"]
    unless_null $P501, fallback2707
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P510
  fallback2707:
    $P511 = _lex_param_1."push_pirop"("nqp_rxcommit", $P501, _lex_param_2)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_151_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3424
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$unknown", _lex_param_1 
.annotate 'line', 3427
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "PAST"
    get_who $P502, $P503
    set $P501, $P502["Op"]
    unless_null $P501, fallback2710
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback2710:
    $P506 = $P501."ACCEPTS"(_lex_param_1)
    unless $P506 goto if717_else2708 
    typeof $S507, _lex_param_1
    concat $S506, "Unknown QAST node type ", $S507
    concat $S505, $S506, " (name = '"
.annotate 'line', 3429
    $P507 = _lex_param_1."name"()
    set $S508, $P507
    concat $S504, $S505, $S508
    concat $S503, $S504, "', pirop = '"
.annotate 'line', 3430
    $P508 = _lex_param_1."pirop"()
    set $S509, $P508
    concat $S502, $S503, $S509
    concat $S501, $S502, "')"
    box $P509, $S501
    die $P509
    set $P511, $P509
    goto if717_end2709
  if717_else2708:
.annotate 'line', 3432
    typeof $S511, _lex_param_1
    concat $S510, "Unknown QAST node type ", $S511
    box $P510, $S510
    die $P510
    set $P511, $P510
  if717_end2709:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "operations" :subid("cuid_152_1346233447.816") :anon :lex :outer("cuid_59_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3437
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["Operations"]
    unless_null $P501, fallback2711
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback2711:
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_320_1346233447.816") :load :init
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P501 = 'cuid_319_1346233447.816' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P501 = "cuid_1_1346233447.816" 
    get_hll_global $P502, "ModuleLoader"
    $P503 = $P502."load_setting"("NQPCORE")
    $P504 = $P501."set_outer_ctx"($P503)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P501, "ModuleLoader"
    $P502 = $P501."load_module"("NQPHLL")
    nqp_create_sc $P501, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\stage2\\QAST.nqp")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "PIRT"
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
    push $P503, "result"
    push $P503, "$!result"
    push $P503, "children_pir"
    push $P503, "escape"
    push $P503, "push"
    push $P503, "push_pirop"
    push $P503, "subid"
    push $P503, "pirflags"
    push $P503, "name"
    push $P503, "loadlibs"
    push $P503, "hll"
    push $P503, "namespace"
    push $P503, "close_sub"
    push $P503, "pir"
    push $P503, "collect_sub_pir_into"
    push $P503, "@!children"
    push $P503, "$!subid"
    push $P503, "$!pirflags"
    push $P503, "$!name"
    push $P503, "$!hll"
    push $P503, "@!namespace"
    push $P503, "@!loadlibs"
    push $P503, "@!nested_blocks"
    push $P503, "$!cached_pir"
    push $P503, "node"
    push $P503, "$!node"
    push $P503, "compile_op"
    push $P503, "compile_pirop"
    push $P503, "add_core_op"
    push $P503, "add_hll_op"
    push $P503, "add_core_pirop_mapping"
    push $P503, "add_hll_pirop_mapping"
    push $P503, "set_core_op_inlinability"
    push $P503, "set_hll_op_inlinability"
    push $P503, "is_inlinable"
    push $P503, "set_core_op_result_type"
    push $P503, "set_hll_op_result_type"
    push $P503, "attach_result_type"
    push $P503, "add_hll_box"
    push $P503, "add_hll_unbox"
    push $P503, "box"
    push $P503, "unbox"
    push $P503, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346233437.664"
    push $P503, "src\\stage2\\gen\\NQPHLL.pm"
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
    push $P503, "panic"
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
    push $P503, "parse"
    push $P503, "past"
    push $P503, "post"
    push $P503, "pirbegin"
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
    push $P503, "type_to_register_type"
    push $P503, "force_return_boxing_for_hll"
    push $P503, "unique"
    push $P503, "rxescape"
    push $P503, "as_post"
    push $P503, "deserialization_code"
    push $P503, "compile_all_the_stmts"
    push $P503, "apply_context"
    push $P503, "compile_var"
    push $P503, "as_post_clear_bindval"
    push $P503, "coerce"
    push $P503, "infer_type"
    push $P503, "post_children"
    push $P503, "children"
    push $P503, "regex_post"
    push $P503, "post_new"
    push $P503, "alt"
    push $P503, "altseq"
    push $P503, "anchor"
    push $P503, "cclass"
    push $P503, "concat"
    push $P503, "conj"
    push $P503, "conjseq"
    push $P503, "enumcharlist"
    push $P503, "literal"
    push $P503, "pass"
    push $P503, "pastnode"
    push $P503, "qastnode"
    push $P503, "quant"
    push $P503, "scan"
    push $P503, "subcapture"
    push $P503, "subrule"
    push $P503, "uniprop"
    push $P503, "ws"
    push $P503, "regex_mark"
    push $P503, "regex_peek"
    push $P503, "regex_commit"
    push $P503, "operations"
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
    push $P503, "handler_allocator"
    push $P503, "fresh_p"
    push $P503, "fresh_s"
    push $P503, "fresh_i"
    push $P503, "fresh_n"
    push $P503, "cur_p"
    push $P503, "cur_s"
    push $P503, "cur_i"
    push $P503, "cur_n"
    push $P503, "$!cur_p"
    push $P503, "$!cur_s"
    push $P503, "$!cur_i"
    push $P503, "$!cur_n"
    push $P503, "add_param"
    push $P503, "add_lexical"
    push $P503, "add_local"
    push $P503, "register_lexical"
    push $P503, "register_local"
    push $P503, "qast"
    push $P503, "outer"
    push $P503, "params"
    push $P503, "lexicals"
    push $P503, "locals"
    push $P503, "lex_reg"
    push $P503, "local_type"
    push $P503, "local_type_long"
    push $P503, "lexical_type"
    push $P503, "lexical_type_long"
    push $P503, "reg_type"
    push $P503, "add_loadlibs"
    push $P503, "fresh_lex_p"
    push $P503, "fresh_lex_s"
    push $P503, "fresh_lex_i"
    push $P503, "fresh_lex_n"
    push $P503, "$!qast"
    push $P503, "$!outer"
    push $P503, "@!params"
    push $P503, "@!locals"
    push $P503, "@!lexicals"
    push $P503, "%!local_types"
    push $P503, "%!lexical_types"
    push $P503, "%!lexical_regs"
    push $P503, "%!reg_types"
    push $P503, "$!param_idx"
    push $P503, "$!cur_lex_p"
    push $P503, "$!cur_lex_s"
    push $P503, "$!cur_lex_i"
    push $P503, "$!cur_lex_n"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    push $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227"
    push $P503, "src\\stage2\\gen\\nqp-mo.pm"
    push $P503, "PIRT::CallResult"
    push $P503, "get_string"
    push $P503, "PIRT::Node"
    push $P503, "PIRT::Sub"
    push $P503, "nested_blocks"
    push $P503, "cached_pir"
    push $P503, "PIRT::Ops"
    push $P503, "PIRT::Label"
    push $P503, "QAST::Operations"
    push $P503, "QAST::Compiler"
    push $P503, "code"
    push $P503, "RegAlloc"
    push $P503, "BlockInfo"
    push $P503, "AA49D86054CDC686E34A37C6F89EC4059A76B342-1346233428.122"
    push $P503, "src\\stage2\\QASTNode.nqp"
    push $P503, "CallResult"
    push $P503, "Node"
    push $P503, "Sub"
    push $P503, "Ops"
    push $P503, "Label"
    push $P503, "CompileTimeValue"
    push $P503, "SpecialArg"
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
    push $P503, "Operations"
    push $P503, "Compiler"
    push $P503, "NFA"
    push $P503, "Grammar"
    push $P503, "Actions"
    push $P503, "CommandLine"
    push $P503, "World"
    .const 'Sub' $P504 = 'cuid_319_1346233447.816' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAAGAAAAcAAAAA4AAADgAAAAFiEAANoAAAC2LgAARFsAAAAAAABEWwAAAAAAAERbAABEWwAAAAAAAAYAAAAHAAAADgAAAA8AAABGAAAARwAAANUAAAAAAAAA1wAAANgAAADmAAAA5wAAAAEAAAAAAAAAAQAAABgBAAABAAAAuAIAAAEAAAA2BAAAAQAAAHIHAAABAAAAqAkAAAEAAACICwAAAQAAANgNAAABAAAAMhUAAAEAAACqFwAAAQAAAAAcAAABAAAA0hwAAAEAAACuHgAAAQAAAFYfAAAAAAAAlgAAAAAAAAAAAAAACgAJAAAAAgAAAAIAAAAAAJcAAAADAAAAAgAAAAAAmAAAAAQAAAACAAAAAACZAAAABQAAAAIAAQAAABsAAAAIAAAAAgABAAAARQAAAAkAAAACAAEAAABSAAAACgAAAAIAAQAAAFgAAAALAAAAAgABAAAAXAAAAAwAAAACAAAAAACaAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAJsAAAAAAAAAAQAAAAoAAAAAAAoADgAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAACAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHAAAAAIAAAAAAAMAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAABAAAACgABAAAAHQAAAAQAAAAAAAAAAAAAAAAAnAAAAAAAAAAEAAAACgAAAAAACgAOAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAABAAAAAMAAAAAAJ0AAAAAAAAADAAAAAoAAAAAAAoAGwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAOAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAfAAAAAgAAAAAADQAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABAAAAAiAAAAAgAAAAAAEQAAACMAAAACAAAAAAASAAAAJAAAAAIAAAAAABMAAAAlAAAAAgAAAAAAFAAAACYAAAACAAAAAAAVAAAAJwAAAAIAAAAAABYAAAAcAAAAAgAAAAAAFwAAACgAAAACAAAAAAAYAAAAKQAAAAIAAAAAABkAAAAqAAAAAgAAAAAAGgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAMAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAQAAAABAAAAAAAAAAIAAAAEAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAMAAAACgAJAAAAKwAAAAQAAAAAAAAAAAAsAAAABAABAAAAAAAAAC0AAAAEAAIAAAAAAAAALgAAAAQAAwAAAAAAAAAvAAAABAAEAAAAAAAAADAAAAAEAAUAAAAAAAAAMQAAAAQABgAAAAAAAAAyAAAABAAHAAAAAAAAADMAAAAEAAgAAAAAAAAAAAAAAJ4AAAAAAAAAGwAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAcAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAgAAAAAgAAAAAAHQAAACEAAAACAAAAAAAeAAAAHAAAAAIAAAAAAB8AAAA0AAAAAgAAAAAAIAAAACkAAAACAAAAAAAhAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAABsAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAIAAAAHAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAAAQAAAADAAIAAAAAABsAAAAKAAMAAAArAAAABAAAAAAAAAAAAB0AAAAEAAEAAAAAAAAANQAAAAQAAgAAAAAAAAAAAAAAnwAAAAAAAAAiAAAACgAAAAAACgARAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAAAAACMAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAACQAAAACAAAAAAAkAAAAHAAAAAIAAAAAACUAAAApAAAAAgAAAAAAJgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAiAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAiAAAACgABAAAALgAAAAQAAAAAAAAAAAAAAAAAoAAAAAAAAAAnAAAACgAAAAAACgAdAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAA2AAAAAgAAAAAAKAAAADcAAAACAAAAAAApAAAAOAAAAAIAAAAAACoAAAA5AAAAAgAAAAAAKwAAADoAAAACAAAAAAAsAAAAOwAAAAIAAAAAAC0AAAA8AAAAAgAAAAAALgAAAD0AAAACAAAAAAAvAAAAPgAAAAIAAAAAADAAAAA/AAAAAgAAAAAAMQAAAEAAAAACAAAAAAAyAAAAQQAAAAIAAAAAADMAAABCAAAAAgAAAAAANAAAAEMAAAACAAAAAAA1AAAARAAAAAIAAAAAADYAAABFAAAAAgAAAAAANwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAnAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAJwAAAAMAAAAAAKEAAAAAAAAAOAAAAAoAAAAAAAoAYQAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAMAAABgAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAASAAAAAIAAwAAAGEAAABJAAAAAgADAAAAYgAAAEoAAAACAAMAAABjAAAASwAAAAIAAwAAAGQAAABMAAAAAgADAAAAZQAAAE0AAAACAAMAAABmAAAATgAAAAIAAwAAAGcAAABPAAAAAgADAAAAaAAAAFAAAAACAAMAAABpAAAAUQAAAAIAAwAAAGoAAABSAAAAAgADAAAAawAAAFMAAAACAAMAAABsAAAAVAAAAAIAAwAAAG0AAABVAAAAAgADAAAAbgAAAFYAAAACAAMAAABvAAAAVwAAAAIAAwAAAHAAAABYAAAAAgADAAAAcQAAAFkAAAACAAMAAAByAAAAWgAAAAIAAwAAAHMAAABbAAAAAgADAAAAdAAAAFwAAAACAAMAAAB1AAAAXQAAAAIAAwAAAHYAAABeAAAAAgADAAAAdwAAAF8AAAACAAMAAAB4AAAAYAAAAAIAAwAAAHkAAABhAAAAAgADAAAAegAAAGIAAAACAAMAAAB7AAAAYwAAAAIAAwAAAHwAAABkAAAAAgADAAAAfQAAACkAAAACAAMAAAB+AAAAZQAAAAIAAwAAAH8AAABmAAAAAgADAAAAgAAAAGcAAAACAAMAAACBAAAAaAAAAAIAAwAAAIIAAABpAAAAAgADAAAAgwAAAGoAAAACAAMAAACEAAAAawAAAAIAAwAAAIUAAABsAAAAAgADAAAAhgAAAG0AAAACAAMAAACHAAAAbgAAAAIAAwAAAIgAAABvAAAAAgADAAAAiQAAAHAAAAACAAMAAACKAAAAcQAAAAIAAwAAAIsAAAByAAAAAgADAAAAjAAAAHMAAAACAAMAAACNAAAAdAAAAAIAAAAAAF4AAAB1AAAAAgAAAAAAXwAAAHYAAAACAAAAAABgAAAAHwAAAAIAAAAAAGEAAAB3AAAAAgAAAAAAYgAAAHgAAAACAAAAAABjAAAAeQAAAAIAAAAAAGUAAAB6AAAAAgAAAAAAagAAAHsAAAACAAAAAABrAAAAfAAAAAIAAAAAAHAAAAB9AAAAAgAAAAAAcQAAAH4AAAACAAAAAAB4AAAAfwAAAAIAAAAAAHkAAACAAAAAAgAAAAAAewAAAIEAAAACAAAAAAB8AAAAggAAAAIAAAAAAH0AAACDAAAAAgAAAAAAfgAAAIQAAAACAAAAAAB/AAAAhQAAAAIAAAAAAIAAAACGAAAAAgAAAAAAgQAAAIcAAAACAAAAAACCAAAAiAAAAAIAAAAAAIMAAACJAAAAAgAAAAAAhAAAAIoAAAACAAAAAACFAAAAiwAAAAIAAAAAAIYAAACMAAAAAgAAAAAAhwAAAI0AAAACAAAAAACIAAAAjgAAAAIAAAAAAIkAAACPAAAAAgAAAAAAigAAAJAAAAACAAAAAACLAAAAkQAAAAIAAAAAAIwAAACSAAAAAgAAAAAAjQAAAJMAAAACAAAAAACOAAAAlAAAAAIAAAAAAI8AAACVAAAAAgAAAAAAkAAAAJYAAAACAAAAAACRAAAAlwAAAAIAAAAAAJIAAACYAAAAAgAAAAAAkwAAAJkAAAACAAAAAACVAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAADgAAAACAAMAAABfAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAALAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAQACAAIAAAAHAAAAAQABAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAABfAAAACgALAAAAmgAAAAQAAAAAAAAAAACbAAAABAABAAAAAAAAAJwAAAAEAAIAAAAAAAAAnQAAAAQAAwAAAAAAAACeAAAABAAEAAAAAAAAAJ8AAAAEAAUAAAAAAAAAoAAAAAQABgAAAAAAAAChAAAABAAHAAAAAAAAAKIAAAAEAAgAAAAAAAAAowAAAAQACQAAAAAAAACkAAAABAAKAAAAAAAAAAIAAAAAADgAAAADAAAAAACiAAAAAAAAADkAAAAKAAAAAAAKABcAAAANAAAAAgACAAAACAAAABAAAAACAAIAAAAJAAAAEQAAAAIAAgAAAAoAAAASAAAAAgAAAAAAOgAAABMAAAACAAIAAAAMAAAAFAAAAAIAAgAAAA8AAAAVAAAAAgACAAAAEQAAABYAAAACAAIAAAATAAAAFwAAAAIAAgAAABUAAAAYAAAAAgACAAAAFwAAABkAAAACAAIAAAAYAAAAGgAAAAIAAgAAABoAAAAbAAAAAgACAAAAGwAAAKUAAAACAAAAAAA7AAAASAAAAAIAAAAAADwAAACmAAAAAgAAAAAAPQAAAKcAAAACAAAAAAA+AAAAqAAAAAIAAAAAAD8AAACpAAAAAgAAAAAAQAAAAKoAAAACAAAAAABBAAAAqwAAAAIAAAAAAEIAAACsAAAAAgAAAAAAQwAAAK0AAAACAAAAAABEAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAADkAAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAOQAAAAoABAAAAK4AAAAEAAAAAAAAAAAArwAAAAQAAQAAAAAAAACwAAAABAACAAAAAAAAALEAAAAEAAMAAAAAAAAAAAAAAKMAAAAAAAAARQAAAAoAAAAAAAoAJAAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAABGAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAASAAAAAIAAAAAAEcAAACyAAAAAgAAAAAASAAAALMAAAACAAAAAABJAAAAtAAAAAIAAAAAAEoAAAC1AAAAAgAAAAAASwAAALYAAAACAAAAAABMAAAAtwAAAAIAAAAAAE0AAAC4AAAAAgAAAAAATgAAALkAAAACAAAAAABPAAAAugAAAAIAAAAAAFAAAAC7AAAAAgAAAAAAUQAAALwAAAACAAAAAABSAAAAvQAAAAIAAAAAAFMAAAC+AAAAAgAAAAAAVAAAAL8AAAACAAAAAABVAAAAwAAAAAIAAAAAAFYAAADBAAAAAgAAAAAAVwAAAMIAAAACAAAAAABYAAAAJQAAAAIAAAAAAFkAAADDAAAAAgAAAAAAWgAAAMQAAAACAAAAAABbAAAAxQAAAAIAAAAAAFwAAADGAAAAAgAAAAAAXQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABFAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAABwAAAAIAAgAAAAcAAAABAAEAAQABAAEAAQABAAEAAQABAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAABFAAAACgAPAAAAxwAAAAQAAAAAAAAAAADIAAAABAABAAAAAAAAAMkAAAAEAAIAAAAAAAAAygAAAAQAAwAAAAAAAADLAAAABAAEAAAAAAAAAMwAAAAEAAUAAAAAAAAAzQAAAAQABgAAAAAAAADOAAAABAAHAAAAAAAAAM8AAAAEAAgAAAAAAAAA0AAAAAQACQAAAAAAAAAxAAAABAAKAAAAAAAAANEAAAAEAAsAAAAAAAAA0gAAAAQADAAAAAAAAADTAAAABAANAAAAAAAAANQAAAAEAA4AAAAAAAAAAAAAANYAAAAAAAAAlwAAAAoABQAAAOgAAAACAAAAAAABAAAA6QAAAAIAAAAAAAQAAADqAAAAAgAAAAAADAAAAOsAAAACAAAAAAAbAAAA7AAAAAIAAAAAACIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAlwAAAAMAAAAAANcAAAAAAAAAmAAAAAoAFwAAAO0AAAACAAYAAAABAAAA7gAAAAIABgAAAAYAAADpAAAAAgAGAAAACgAAAO8AAAACAAYAAAAlAAAA8AAAAAIABgAAAC0AAADxAAAAAgAGAAAAMQAAAPIAAAACAAYAAAA1AAAA8wAAAAIABgAAADkAAAD0AAAAAgAGAAAAOwAAAPUAAAACAAYAAAA/AAAA9gAAAAIABgAAAEQAAAD3AAAAAgAGAAAATAAAAPgAAAACAAYAAABOAAAA+QAAAAIABgAAAFQAAAD6AAAAAgAGAAAAWAAAAPsAAAACAAYAAABcAAAA/AAAAAIABgAAAGAAAAD9AAAAAgAGAAAAZwAAAP4AAAACAAYAAABqAAAA/wAAAAIABgAAAG0AAAAAAQAAAgAGAAAAdgAAAAEBAAACAAAAAAAnAAAAAgEAAAIAAAAAADgAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAmAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACYAAAAAwAAAAAA2AAAAAAAAACZAAAACgABAAAAAwEAAAIAAQAAAAEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAmQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACZAAAAAwAAAAAA2QAAAAAAAACaAAAACgAFAAAABAEAAAIAAwAAAAEAAAAFAQAAAgADAAAAPQAAAAIBAAACAAMAAABfAAAABgEAAAIAAwAAANoAAAAHAQAAAgADAAAAnwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACaAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJoAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAFAAAAEAAAAAEAAAAAAAAAAgAAACAAAAAAAAAAAgAAAAUAAAAgAAAAAQAAAAIAAAAFAAAAMAAAAAEAAAACAAAABQAAAEAAAAABAAAAAgAAAAUAAABQAAAAAQAAAAIAAAAFAAAAYAAAAAEAAAACAAAABQAAAHAAAAABAAAAAgAAAAUAAACAAAAAAQAAAAAAAAADAAAAkAAAAAAAAAACAAAABQAAAJAAAAABAAAAAgAAAAUAAACgAAAAAQAAAAIAAAAFAAAAsAAAAAEAAAACAAAABQAAAMAAAAABAAAAAgAAAAUAAADQAAAAAQAAAAIAAAAFAAAA4AAAAAEAAAACAAAABQAAAPAAAAABAAAAAgAAAAUAAAAAAQAAAQAAAAIAAAAFAAAAEAEAAAEAAAACAAAABQAAACABAAABAAAAAgAAAAUAAAAwAQAAAQAAAAIAAAAFAAAAQAEAAAEAAAACAAAABQAAAFABAAABAAAAAgAAAAUAAABgAQAAAQAAAAAAAAAEAAAAcAEAAAAAAAACAAAABQAAAHABAAABAAAAAgAAAAUAAACAAQAAAQAAAAIAAAAFAAAAkAEAAAEAAAACAAAABQAAAKABAAABAAAAAgAAAAUAAACwAQAAAQAAAAIAAAAFAAAAwAEAAAEAAAAAAAAABQAAANABAAAAAAAAAgAAAAUAAADQAQAAAQAAAAIAAAAFAAAA4AEAAAEAAAACAAAABQAAAPABAAABAAAAAgAAAAUAAAAAAgAAAQAAAAAAAAAGAAAAEAIAAAAAAAACAAAABQAAABACAAABAAAAAgAAAAUAAAAgAgAAAQAAAAIAAAAFAAAAMAIAAAEAAAACAAAABQAAAEACAAABAAAAAgAAAAUAAABQAgAAAQAAAAIAAAAFAAAAYAIAAAEAAAACAAAABQAAAHACAAABAAAAAgAAAAUAAACAAgAAAQAAAAIAAAAFAAAAkAIAAAEAAAACAAAABQAAAKACAAABAAAAAgAAAAUAAACwAgAAAQAAAAIAAAAFAAAAwAIAAAEAAAACAAAABQAAANACAAABAAAAAgAAAAUAAADgAgAAAQAAAAIAAAAFAAAA8AIAAAEAAAACAAAABQAAAAADAAABAAAAAAAAAAcAAAAQAwAAAAAAAAAAAAAIAAAAEAMAAAAAAAACAAAABQAAABADAAABAAAAAgAAAAUAAAAgAwAAAQAAAAIAAAAFAAAAMAMAAAEAAAACAAAABQAAAEADAAABAAAAAgAAAAUAAABQAwAAAQAAAAIAAAAFAAAAYAMAAAEAAAACAAAABQAAAHADAAABAAAAAgAAAAUAAACAAwAAAQAAAAIAAAAFAAAAkAMAAAEAAAACAAAABQAAAKADAAABAAAAAgAAAAUAAACwAwAAAQAAAAAAAAAJAAAAwAMAAAAAAAACAAAABQAAAMADAAABAAAAAgAAAAUAAADQAwAAAQAAAAIAAAAFAAAA4AMAAAEAAAACAAAABQAAAPADAAABAAAAAgAAAAUAAAAABAAAAQAAAAIAAAAFAAAAEAQAAAEAAAACAAAABQAAACAEAAABAAAAAgAAAAUAAAAwBAAAAQAAAAIAAAAFAAAAQAQAAAEAAAACAAAABQAAAFAEAAABAAAAAgAAAAUAAABgBAAAAQAAAAIAAAAFAAAAcAQAAAEAAAACAAAABQAAAIAEAAABAAAAAgAAAAUAAACQBAAAAQAAAAIAAAAFAAAAoAQAAAEAAAACAAAABQAAALAEAAABAAAAAgAAAAUAAADABAAAAQAAAAIAAAAFAAAA0AQAAAEAAAACAAAABQAAAOAEAAABAAAAAgAAAAUAAADwBAAAAQAAAAIAAAAFAAAAAAUAAAEAAAACAAAABQAAABAFAAABAAAAAgAAAAUAAAAgBQAAAQAAAAIAAAAFAAAAMAUAAAEAAAACAAAABQAAAEAFAAABAAAAAgAAAAUAAABQBQAAAQAAAAIAAAAFAAAAYAUAAAEAAAACAAAABQAAAHAFAAABAAAAAgAAAAUAAACABQAAAQAAAAIAAAAFAAAAkAUAAAEAAAACAAAABQAAAE4GAAABAAAAAgAAAAUAAABmBgAAAQAAAAIAAAAFAAAAdgYAAAEAAAACAAAABQAAAI4GAAABAAAAAgAAAAUAAACmBgAAAQAAAAIAAAAFAAAAvgYAAAEAAAACAAAABQAAANYGAAABAAAAAgAAAAUAAADmBgAAAQAAAAIAAAAFAAAA9gYAAAEAAAACAAAABQAAAA4HAAABAAAAAgAAAAUAAAAmBwAAAQAAAAIAAAAFAAAAPgcAAAEAAAACAAAABQAAAFYHAAABAAAAAgAAAAUAAABmBwAAAQAAAAIAAAAFAAAAdgcAAAEAAAACAAAABQAAAI4HAAABAAAAAgAAAAUAAACmBwAAAQAAAAIAAAAFAAAAvgcAAAEAAAACAAAABQAAANYHAAABAAAAAgAAAAUAAADuBwAAAQAAAAIAAAAFAAAABggAAAEAAAACAAAABQAAABYIAAABAAAAAgAAAAUAAAAmCAAAAQAAAAIAAAAFAAAAPggAAAEAAAACAAAABQAAAE4IAAABAAAAAgAAAAUAAABeCAAAAQAAAAIAAAAFAAAAbggAAAEAAAACAAAABQAAAH4IAAABAAAAAgAAAAUAAACOCAAAAQAAAAIAAAAFAAAAnggAAAEAAAACAAAABQAAAK4IAAABAAAAAgAAAAUAAAC+CAAAAQAAAAIAAAAFAAAAzggAAAEAAAACAAAABQAAAN4IAAABAAAAAgAAAAUAAADuCAAAAQAAAAIAAAAFAAAA/ggAAAEAAAACAAAABQAAAA4JAAABAAAAAgAAAAUAAAAeCQAAAQAAAAIAAAAFAAAALgkAAAEAAAACAAAABQAAAD4JAAABAAAAAgAAAAUAAABOCQAAAQAAAAIAAAAFAAAAXgkAAAEAAAACAAAABQAAAG4JAAABAAAAAgAAAAUAAAB+CQAAAQAAAAIAAAAFAAAAjgkAAAEAAAACAAAABQAAAJ4JAAABAAAAAgAAAAUAAACuCQAAAQAAAAIAAAAFAAAAvgkAAAEAAAACAAAABQAAAM4JAAABAAAAAgAAAAUAAADmCQAAAQAAAAQAAAAAAAAA9gkAAAEAAAAAAAAACgAAAAYKAAAAAAAAAAAAAAsAAAAGCgAAAAAAAAAAAAAMAAAABgoAAAAAAAAAAAAADQAAAAYKAAAAAAAABQAAAAYAAAAGCgAAAQAAAAUAAAAGAAAAQAsAAAEAAAAFAAAABgAAAPoLAAABAAAABQAAAAYAAAAmEQAAAQAAAAUAAAAGAAAAdhMAAAEAAAAFAAAABgAAAOIUAAABAAAABQAAAAYAAAAEFwAAAQAAAAUAAAAGAAAAnB0AAAEAAAAFAAAABgAAALIfAAABAAAAAgAAAAYAAACaIwAAAQAAAAIAAAAGAAAAziMAAAEAAAACAAAABgAAAAIkAAABAAAAAgAAAAYAAAA2JAAAAQAAAAIAAAAGAAAAaiQAAAEAAAACAAAABgAAAJ4kAAABAAAAAgAAAAYAAADSJAAAAQAAAAIAAAAGAAAABiUAAAEAAAACAAAABgAAADolAAABAAAAAgAAAAYAAABuJQAAAQAAAAIAAAAGAAAAoiUAAAEAAAACAAAABgAAANYlAAABAAAAAgAAAAYAAAAKJgAAAQAAAAIAAAAGAAAAPiYAAAEAAAACAAAABgAAAHImAAABAAAAAgAAAAYAAACmJgAAAQAAAAIAAAAGAAAA2iYAAAEAAAAFAAAACAAAAAYnAAABAAAABQAAAAgAAAA2JwAAAQAAAAUAAAAIAAAAVicAAAEAAAAFAAAACAAAAIYnAAABAAAABQAAAAgAAAC2JwAAAQAAAAUAAAAIAAAA5icAAAEAAAAFAAAACAAAABYoAAABAAAABQAAAAgAAAA2KAAAAQAAAAUAAAAIAAAAVigAAAEAAAAFAAAACAAAAHYoAAABAAAABQAAAAgAAACmKAAAAQAAAAUAAAAIAAAAxigAAAEAAAAFAAAACAAAAPYoAAABAAAABQAAAAgAAAAeKQAAAQAAAAUAAAAIAAAATikAAAEAAAAFAAAACAAAAH4pAAABAAAABQAAAAgAAACuKQAAAQAAAAUAAAAIAAAA3ikAAAEAAAAFAAAACAAAAA4qAAABAAAABQAAAAgAAAA2KgAAAQAAAAUAAAAIAAAAXioAAAEAAAAFAAAACAAAAH4qAAABAAAABQAAAAgAAACeKgAAAQAAAAUAAAAIAAAAvioAAAEAAAAFAAAACAAAAN4qAAABAAAABQAAAAgAAAD+KgAAAQAAAAUAAAAIAAAAHisAAAEAAAAFAAAACAAAAD4rAAABAAAABQAAAAgAAABuKwAAAQAAAAUAAAAIAAAAjisAAAEAAAAFAAAACAAAAL4rAAABAAAABQAAAAgAAADuKwAAAQAAAAUAAAAIAAAAHiwAAAEAAAAEAAAAAAAAAE4sAAABAAAABAAAAAAAAABeLAAAAQAAAAQAAAAAAAAAbiwAAAEAAAAEAAAAAAAAAH4sAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQAHABEAAAACAAAAAABkAAAAAgAAAAAAZgAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB6AAAAAgAAAAAAlAAAAAMACwAAAAAAWgAAAAIAAAAAAKQAAAABAAEACwAAAAAAWwAAAAEAAQABAAsAAAAAAFwAAAACAAAAAAClAAAAAQABAAsAAAAAAF0AAAACAAAAAACmAAAAAQABAAsAAAAAAF4AAAACAAAAAACnAAAAAQABAAsAAAAAAF8AAAACAAAAAACoAAAAAQABAAsAAAAAAGAAAAABAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAIAAAAAAKkAAAABAAEACwAAAAAAYwAAAAIAAAAAAKoAAAABAAEACwAAAAAAZAAAAAIAAAAAAKsAAAABAAEACwAAAAAAZQAAAAIAAAAAAKwAAAABAAEACwAAAAAAZgAAAAEAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAgAAAAAArQAAAAEAAQALAAAAAABpAAAAAgAAAAAArgAAAAEAAQALAAAAAABqAAAAAgAAAAAArwAAAAEAAQALAAAAAABrAAAAAgAAAAAAsAAAAAEAAQALAAAAAABsAAAAAgAAAAAAsQAAAAEAAQALAAAAAABtAAAAAgAAAAAAsgAAAAEAAQALAAAAAABuAAAAAQABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAACAAAAAACzAAAAAQABAAsAAAAAAHEAAAABAAEAAQALAAAAAAByAAAAAQABAAEACwAAAAAAcwAAAAEAAQABAAsAAAAAAHQAAAABAAEAAQALAAAAAAB1AAAAAQABAAEACwAAAAAAdgAAAAEAAQABAAsAAAAAAHcAAAABAAEAAQALAAAAAAB4AAAAAQABAAEACwAAAAAAeQAAAAEAAQABAAsAAAAAAHoAAAABAAEAAQALAAAAAAB7AAAAAQABAAEACwAAAAAAfAAAAAEAAQABAAsAAAAAAH0AAAABAAEAAQALAAAAAAB+AAAAAQABAAEACwAAAAAAfwAAAAEAAQABAAsAAAAAAIAAAAABAAEAAQALAAAAAACBAAAAAQABAAEACwAAAAAAggAAAAEAAQABAAsAAAAAAIMAAAABAAEAAQALAAAAAACEAAAAAQABAAEACwAAAAAAhQAAAAEAAQABAAsAAAAAAIYAAAABAAEAAQALAAAAAACHAAAAAQABAAEACwAAAAAAiAAAAAEAAQABAAsAAAAAAIkAAAABAAEAAQALAAAAAACKAAAAAgAAAAAAtAAAAAEAAQALAAAAAACLAAAAAQABAAEA1gAAAAcAAAAAAAoAAAAAAAYA2QAAAAoAAQAAAB0AAAACAAAAAAC1AAAACgACAAAAEgAAAAIAAAAAAAIAAAAcAAAAAgAAAAAAAwAAAAcAAgAAAAIAAAAAAAIAAAACAAAAAAADAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAQAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADaAAAAAgAAAAAAAwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAEAAAAGABwAAAAGAB0AAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAQAAAAYAHAAAAAYAHQAAAAEABgDbAAAACgAAAAAACgABAAAAHgAAAAIAAAAAAAsAAAAHAAEAAAACAAAAAAALAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgDcAAAACgAJAAAAKwAAAAIAAAAAALYAAAAsAAAAAgAAAAAAtwAAAC0AAAACAAAAAAC4AAAALgAAAAIAAAAAALkAAAAvAAAAAgAAAAAAugAAADAAAAACAAAAAAC7AAAAMQAAAAIAAAAAALwAAAAyAAAAAgAAAAAAvQAAADMAAAACAAAAAAC+AAAACgAOAAAAHwAAAAIAAAAAAA0AAAASAAAAAgAAAAAADgAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABAAAAAiAAAAAgAAAAAAEQAAACMAAAACAAAAAAASAAAAJAAAAAIAAAAAABMAAAAlAAAAAgAAAAAAFAAAACYAAAACAAAAAAAVAAAAJwAAAAIAAAAAABYAAAAcAAAAAgAAAAAAFwAAACgAAAACAAAAAAAYAAAAKQAAAAIAAAAAABkAAAAqAAAAAgAAAAAAGgAAAAcADgAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAABwAAAAAABwABAAAAAgAAAAAABAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAwAAAACAAAAAAAEAAAAAgACAAAABwAAAAcAAAAAAAoAAQAAANoAAAACAAAAAAAXAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAgQAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAiAAAABgAsAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACMAAAAGAC0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJAAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAmAAAABgAvAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACcAAAAGADAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJQAAAAYAMQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgDdAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGAN4AAAAGADMAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAgQAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAiAAAABgAsAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACMAAAAGAC0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJAAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAmAAAABgAvAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACcAAAAGADAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJQAAAAYAMQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgDdAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGAN4AAAAGADMAAAABAAYA3wAAAAoAAwAAACsAAAACAAAAAAC/AAAAHQAAAAIAAAAAAMAAAAA1AAAAAgAAAAAAwQAAAAoABgAAABIAAAACAAAAAAAcAAAAIAAAAAIAAAAAAB0AAAAhAAAAAgAAAAAAHgAAABwAAAACAAAAAAAfAAAANAAAAAIAAAAAACAAAAApAAAAAgAAAAAAIQAAAAcABgAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAcAAAAAAAcAAQAAAAIAAAAAAAQAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAAbAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADaAAAAAgAAAAAAHwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAEAAAABAABAAAAAAAAAAIAAAAAABsAAAAGAIEAAAAGACsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAGwAAAAYAHAAAAAYAHQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgA0AAAABgA1AAAABwADAAAABwAEAAAABAABAAAAAAAAAAIAAAAAABsAAAAGAIEAAAAGACsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAGwAAAAYAHAAAAAYAHQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgA0AAAABgA1AAAAAQAGAOAAAAAKAAEAAAAuAAAAAgAAAAAAwgAAAAoABAAAABIAAAACAAAAAAAjAAAAJAAAAAIAAAAAACQAAAAcAAAAAgAAAAAAJQAAACkAAAACAAAAAAAmAAAABwAEAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAcAAAAAAAcAAQAAAAIAAAAAAAQAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAAiAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADaAAAAAgAAAAAAJQAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAACIAAAAGACQAAAAGAC4AAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIgAAAAYAJAAAAAYALgAAAAEABgDhAAAACgAAAAAACgAQAAAANgAAAAIAAAAAACgAAAA3AAAAAgAAAAAAKQAAADgAAAACAAAAAAAqAAAAOQAAAAIAAAAAACsAAAA6AAAAAgAAAAAALAAAADsAAAACAAAAAAAtAAAAPAAAAAIAAAAAAC4AAAA9AAAAAgAAAAAALwAAAD4AAAACAAAAAAAwAAAAPwAAAAIAAAAAADEAAABAAAAAAgAAAAAAMgAAAEEAAAACAAAAAAAzAAAAQgAAAAIAAAAAADQAAABDAAAAAgAAAAAANQAAAEQAAAACAAAAAAA2AAAARQAAAAIAAAAAADcAAAAHABAAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAuAAAAAgAAAAAALwAAAAIAAAAAADAAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAJwAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgDiAAAACgAAAAAACgAnAAAAdAAAAAIAAAAAAF4AAAB1AAAAAgAAAAAAXwAAAHYAAAACAAAAAABgAAAAHwAAAAIAAAAAAGEAAAB3AAAAAgAAAAAAYgAAAHgAAAACAAAAAABjAAAAeQAAAAIAAAAAAGUAAAB6AAAAAgAAAAAAagAAAHsAAAACAAAAAABrAAAAfAAAAAIAAAAAAHAAAAB9AAAAAgAAAAAAcQAAAH4AAAACAAAAAAB4AAAAfwAAAAIAAAAAAHkAAACAAAAAAgAAAAAAewAAAIEAAAACAAAAAAB8AAAAggAAAAIAAAAAAH0AAACDAAAAAgAAAAAAfgAAAIQAAAACAAAAAAB/AAAAhQAAAAIAAAAAAIAAAACGAAAAAgAAAAAAgQAAAIcAAAACAAAAAACCAAAAiAAAAAIAAAAAAIMAAACJAAAAAgAAAAAAhAAAAIoAAAACAAAAAACFAAAAiwAAAAIAAAAAAIYAAACMAAAAAgAAAAAAhwAAAI0AAAACAAAAAACIAAAAjgAAAAIAAAAAAIkAAACPAAAAAgAAAAAAigAAAJAAAAACAAAAAACLAAAAkQAAAAIAAAAAAIwAAACSAAAAAgAAAAAAjQAAAJMAAAACAAAAAACOAAAAlAAAAAIAAAAAAI8AAACVAAAAAgAAAAAAkAAAAJYAAAACAAAAAACRAAAAlwAAAAIAAAAAAJIAAACYAAAAAgAAAAAAkwAAAJkAAAACAAAAAACVAAAABwAnAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACVAAAABwARAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABkAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABmAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABnAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABoAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABpAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABsAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABtAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABuAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABvAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAByAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAABzAAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAB0AAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAB1AAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAB2AAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAB3AAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAAB6AAAACgACAAAAJAAAAAYAeAAAAOMAAAACAAAAAACUAAAABwABAAAAAgADAAAAXwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAADgAAAACAAMAAABfAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAwAAAGEAAAAHAAIAAAAEAAAAAAAAAAAAAgADAAAAYQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAMAAABhAAAAAQAGAOQAAAAKAAQAAACuAAAAAgAAAAAAwwAAAK8AAAACAAAAAADEAAAAsAAAAAIAAAAAAMUAAACxAAAAAgAAAAAAxgAAAAoACwAAABIAAAACAAAAAAA6AAAApQAAAAIAAAAAADsAAABIAAAAAgAAAAAAPAAAAKYAAAACAAAAAAA9AAAApwAAAAIAAAAAAD4AAACoAAAAAgAAAAAAPwAAAKkAAAACAAAAAABAAAAAqgAAAAIAAAAAAEEAAACrAAAAAgAAAAAAQgAAAKwAAAACAAAAAABDAAAArQAAAAIAAAAAAEQAAAAHAAsAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAAAgAAAAAARAAAAAcAAAAAAAcAAQAAAAIAAgAAAAcAAAAHAAAAAAACAAIAAAAHAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAADkAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAPAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAA8AAAAAQAGAOUAAAAKAA8AAADHAAAAAgAAAAAAxwAAAMgAAAACAAAAAADIAAAAyQAAAAIAAAAAAMkAAADKAAAAAgAAAAAAygAAAMsAAAACAAAAAADLAAAAzAAAAAIAAAAAAMwAAADNAAAAAgAAAAAAzQAAAM4AAAACAAAAAADOAAAAzwAAAAIAAAAAAM8AAADQAAAAAgAAAAAA0AAAADEAAAACAAAAAADRAAAA0QAAAAIAAAAAANIAAADSAAAAAgAAAAAA0wAAANMAAAACAAAAAADUAAAA1AAAAAIAAAAAANUAAAAKABgAAAASAAAAAgAAAAAARgAAAEgAAAACAAAAAABHAAAAsgAAAAIAAAAAAEgAAACzAAAAAgAAAAAASQAAALQAAAACAAAAAABKAAAAtQAAAAIAAAAAAEsAAAC2AAAAAgAAAAAATAAAALcAAAACAAAAAABNAAAAuAAAAAIAAAAAAE4AAAC5AAAAAgAAAAAATwAAALoAAAACAAAAAABQAAAAuwAAAAIAAAAAAFEAAAC8AAAAAgAAAAAAUgAAAL0AAAACAAAAAABTAAAAvgAAAAIAAAAAAFQAAAC/AAAAAgAAAAAAVQAAAMAAAAACAAAAAABWAAAAwQAAAAIAAAAAAFcAAADCAAAAAgAAAAAAWAAAACUAAAACAAAAAABZAAAAwwAAAAIAAAAAAFoAAADEAAAAAgAAAAAAWwAAAMUAAAACAAAAAABcAAAAxgAAAAIAAAAAAF0AAAAHABgAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABFAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAEcAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAARwAAAAEABwACAAAAAgAAAAAAOAAAAAIABgAAAG0AAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABgAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAZwAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAFgAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABcAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAATgAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAFQAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABEAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAATAAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAD8AAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAAtAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAMQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAADUAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAA5AAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAOwAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAACUAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAADAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABgAdAAAAAgACAAAABAAAAAQAAQAAAAAAAAADAAIAAgAAAAQAAAAEAAEAAAAAAAAABgArAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGACwAAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC0AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC4AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC8AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGADAAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAMQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAyAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGADMAAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGACsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAHQAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYANQAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAC4AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAK4AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAK8AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGALAAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGALEAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAMcAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDIAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYAyQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDKAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAzAAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDNAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAM4AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAzwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDQAAAAAgACAAAAAgAAAAQAAQAAAAAAAAADAAIAAgAAAAIAAAAEAAEAAAAAAAAABgAxAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANEAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGANIAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGANMAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGANQAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAQAAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAA", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_2_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 2
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_3_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 3
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_4_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_4_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_4_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_4_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_5_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 5
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_6_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 6
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_7_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 7
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_8_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 8
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_9_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 9
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_12_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 10
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_13_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 11
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_14_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 4
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_14_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_14_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 4
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_14_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_15_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 13
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_16_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 14
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_17_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 15
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_18_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 16
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_19_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 17
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_20_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 18
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_21_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 19
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_22_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 20
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_23_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 21
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_24_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 22
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_25_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 23
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_26_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 24
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_27_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 25
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_28_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 26
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_29_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_29_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_29_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 12
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_29_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_30_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 28
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_31_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 29
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_32_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 30
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_33_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 31
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_34_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 32
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_35_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 33
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_36_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_36_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_36_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 27
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_36_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_37_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 35
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_38_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 36
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_39_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 37
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_40_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 38
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_41_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_41_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_41_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 34
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_41_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_42_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 40
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_43_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 41
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_44_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 42
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_45_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 43
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_46_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 44
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_47_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 45
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_48_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 46
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_49_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 47
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_50_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 48
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_51_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 49
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_52_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 50
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_53_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 51
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_54_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 52
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_55_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 53
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_56_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 54
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_57_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 55
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_58_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 39
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_58_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_58_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 39
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_58_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_59_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    $P503 = $P501."set_static_lexpad_value"("RegAlloc", $P502)
    .const "LexInfo" $P504 = "cuid_59_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_60_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 58
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_61_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 59
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_62_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 60
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_63_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 61
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_64_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 62
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_65_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 63
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_66_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 64
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_67_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 65
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_68_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 66
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_69_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 67
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_70_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 68
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_71_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_71_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_71_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 57
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_71_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_59_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    $P503 = $P501."set_static_lexpad_value"("BlockInfo", $P502)
    .const "LexInfo" $P504 = "cuid_59_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_72_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 70
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_73_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 71
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_74_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 72
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_75_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 73
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_76_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 74
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_77_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 75
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_78_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 76
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_79_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 77
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_80_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 78
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_81_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 79
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_82_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 80
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_83_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 81
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_84_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 82
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_85_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 83
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_86_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 84
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_87_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 85
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_88_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 86
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_89_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 87
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_90_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 88
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_91_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 89
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_92_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 90
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_93_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 91
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_94_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 92
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_95_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 93
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_96_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_96_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_96_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 69
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_96_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_97_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 94
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_98_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 95
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_99_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 96
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_100_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 97
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_101_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 98
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_102_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 99
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_103_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 100
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_104_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 101
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_105_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 102
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_106_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 103
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_107_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 104
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_108_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 105
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_109_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 106
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_110_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 107
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_111_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 108
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_112_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 109
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_113_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 110
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_114_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 111
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_115_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 112
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_116_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 113
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_117_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 114
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_118_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 115
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_119_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 116
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_120_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 117
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_121_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 118
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_122_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 119
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_123_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 120
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_124_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 121
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_125_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 122
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_126_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 123
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_127_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 124
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_128_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 125
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_129_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 126
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_130_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 127
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_131_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 128
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_132_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 129
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_133_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 130
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_134_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 131
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_135_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 132
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_136_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 133
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_137_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 134
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_138_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 135
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_139_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 136
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_140_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 137
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_141_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 138
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_142_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 139
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_143_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 140
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_144_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 141
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_145_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 142
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_146_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 143
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_147_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 144
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_148_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 145
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_149_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 146
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_150_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 147
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_151_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 148
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_152_1346233447.816" 
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 149
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_59_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 56
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_59_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_59_1346233447.816"
    nqp_get_sc_object $P502, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 56
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_59_1346233447.816"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "5B9F058D7D242FDD79B51D58DE66B682BE0865F8-1346233447.856", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_319_1346233447.816") :anon :lex :outer("cuid_320_1346233447.816")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_2_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_3_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_5_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_6_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_7_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_8_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_9_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_12_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_13_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_15_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_16_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_17_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_18_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_19_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_20_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_21_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_22_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_23_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_24_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_25_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_26_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_27_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_28_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_30_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_31_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_32_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_33_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_34_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_35_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_37_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_38_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_39_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_40_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_42_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_43_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_44_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_45_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_46_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_47_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_48_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_49_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_50_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_51_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_52_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_53_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_54_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_55_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_56_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_57_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_60_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_61_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_62_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_63_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_64_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_65_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_66_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_67_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_68_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_69_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_70_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_72_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_73_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_74_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_75_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_76_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_77_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_78_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_79_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_80_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_81_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_82_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_83_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_84_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_85_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_86_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_87_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_88_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_89_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_90_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_91_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_92_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_93_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_94_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_95_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_97_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_98_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_99_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_100_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_101_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_102_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_103_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_104_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_105_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_106_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_107_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_108_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_109_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_110_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_111_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_112_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_113_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_114_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_115_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_116_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_117_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_118_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_119_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_120_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_121_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_122_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_123_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_124_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_125_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_126_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_127_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_128_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_129_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_130_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_131_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_132_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_133_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_134_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_135_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_136_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_137_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_138_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_139_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_140_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_141_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_142_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_143_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_144_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_145_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_146_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_147_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_148_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_149_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_150_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_151_1346233447.816" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_152_1346233447.816" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_321_1346233447.816") :load
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P501 = "cuid_1_1346233447.816" 
    $P502 = $P501()
    .return ($P502) 
.end