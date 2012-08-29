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
.sub "" :subid("cuid_1_1346233425.954") :anon :lex
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P553 = 'cuid_39_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_40_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_41_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_42_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_44_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_45_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_47_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_49_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_51_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_52_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_53_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_54_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_55_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_2_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_3_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_4_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_5_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_11_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_12_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_33_1346233425.954' 
    capture_lex $P553 
    .const 'Sub' $P553 = 'cuid_38_1346233425.954' 
    capture_lex $P553 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORTHOW", $P103 
    .lex "int", $P104 
    .lex "num", $P105 
    .lex "str", $P106 
    .lex "NQPRoutine", $P107 
    .lex "NQPSignature", $P108 
    .lex "NQPMu", $P109 
    .lex "NQPCapture", $P110 
    .lex "&open", $P111 
    .lex "&close", $P112 
    .lex "&slurp", $P113 
    .lex "&spew", $P114 
    .lex "&print", $P115 
    .lex "&say", $P116 
    .lex "&match", $P117 
    .lex "&subst", $P118 
    .lex "&hash", $P119 
    .lex "$test_counter", $P120 
    .lex "$todo_upto_test_num", $P121 
    .lex "$todo_reason", $P122 
    .lex "&plan", $P123 
    .lex "&ok", $P124 
    .lex "&todo", $P125 
    .lex "&skip", $P126 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P501 = 'cuid_39_1346233425.954' 
    capture_lex $P501
    set $P111, $P501
    .const 'Sub' $P502 = 'cuid_40_1346233425.954' 
    capture_lex $P502
    set $P112, $P502
    .const 'Sub' $P503 = 'cuid_41_1346233425.954' 
    capture_lex $P503
    set $P113, $P503
    .const 'Sub' $P504 = 'cuid_42_1346233425.954' 
    capture_lex $P504
    set $P114, $P504
    .const 'Sub' $P505 = 'cuid_44_1346233425.954' 
    capture_lex $P505
    set $P115, $P505
    .const 'Sub' $P506 = 'cuid_45_1346233425.954' 
    capture_lex $P506
    set $P116, $P506
    .const 'Sub' $P507 = 'cuid_47_1346233425.954' 
    capture_lex $P507
    set $P117, $P507
    .const 'Sub' $P508 = 'cuid_49_1346233425.954' 
    capture_lex $P508
    set $P118, $P508
    .const 'Sub' $P509 = 'cuid_51_1346233425.954' 
    capture_lex $P509
    set $P119, $P509
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P120, $P510
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P121, $P511
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P122, $P512
    .const 'Sub' $P513 = 'cuid_52_1346233425.954' 
    capture_lex $P513
    set $P123, $P513
    .const 'Sub' $P514 = 'cuid_53_1346233425.954' 
    capture_lex $P514
    set $P124, $P514
    .const 'Sub' $P515 = 'cuid_54_1346233425.954' 
    capture_lex $P515
    set $P125, $P515
    .const 'Sub' $P516 = 'cuid_55_1346233425.954' 
    capture_lex $P516
    set $P126, $P516
.annotate 'line', 1
    .const 'Sub' $P517 = 'cuid_2_1346233425.954' 
    capture_lex $P517
    $P518 = $P517()
    .const 'Sub' $P519 = 'cuid_3_1346233425.954' 
    capture_lex $P519
    $P520 = $P519()
    .const 'Sub' $P521 = 'cuid_4_1346233425.954' 
    capture_lex $P521
    $P522 = $P521()
    .const 'Sub' $P523 = 'cuid_5_1346233425.954' 
    capture_lex $P523
    $P524 = $P523()
    .const 'Sub' $P525 = 'cuid_11_1346233425.954' 
    capture_lex $P525
    $P526 = $P525()
    new $P527, 'Hash'
    new $P528, 'ResizablePMCArray'
    push $P528, $P107
    box $P529, "$!do"
    push $P528, $P529
    set $P527["invoke"], $P528
    new $P530, 'ResizablePMCArray'
    push $P530, $P107
    box $P531, "$!do"
    push $P530, $P531
    set $P527["get_string"], $P530
    stable_publish_vtable_handler_mapping $P107, $P527
    null $P532
    set_boolification_spec $P107, 5, $P532
    .const 'Sub' $P533 = 'cuid_12_1346233425.954' 
    capture_lex $P533
    $P534 = $P533()
    .const 'Sub' $P535 = 'cuid_33_1346233425.954' 
    capture_lex $P535
    $P536 = $P535()
    nqp_set_nqpmu $P109
    .const 'Sub' $P537 = 'cuid_38_1346233425.954' 
    capture_lex $P537
    $P538 = $P537()
    box $P539, 0
    set $P120, $P539
    box $P540, 0
    set $P121, $P540
    box $P541, ""
    set $P122, $P541
    find_dynamic_lex $P542, "$*CTXSAVE"
    set ctxsave, $P542
    isnull $I501, ctxsave
    box $P547, $I501
    set $P546, $P547
    if $I501 goto unless46_end122 
    can $I502, ctxsave, "ctxsave"
    box $P545, $I502
    set $P544, $P545
    unless $I502 goto if47_end124 
    $P543 = ctxsave."ctxsave"()
    set $P544, $P543
  if47_end124:
    set $P546, $P544
  unless46_end122:
    set $P552, _lex_param_0
    unless _lex_param_0 goto if48_end126 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P548, "ModuleLoader"
    getinterp $P550
    set $P549, $P550["context"]
    $P551 = $P548."set_mainline_module"($P549)
    set $P552, $P551
  if48_end126:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_39_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 284
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("r") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc _lex_param_2 :named("w") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_3 :named("a") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_4 :named("bin") :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_1, default16
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P507
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P508
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P509
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_4, $P510
  default19:
    .lex "$mode", $P101 
    .lex "$handle", $P102 
    .lex "$filename", _lex_param_0 
    .lex "$r", _lex_param_1 
    .lex "$w", _lex_param_2 
    .lex "$a", _lex_param_3 
    .lex "$bin", _lex_param_4 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    unless _lex_param_2 goto if10_else10 
    set $S502, "w"
    goto if10_end11
  if10_else10:
    unless _lex_param_3 goto if11_else12 
    set $S501, "wa"
    goto if11_end13
  if11_else12:
    set $S501, "r"
  if11_end13:
    set $S502, $S501
  if10_end11:
    box $P503, $S502
    set $P101, $P503
    new $P504, "FileHandle"
    set $P102, $P504
.annotate 'line', 287
    $P505 = $P102."open"(_lex_param_0, $P101)
.annotate 'line', 288
    unless _lex_param_4 goto if12_else14 
    set $S503, "binary"
    goto if12_end15
  if12_else14:
    set $S503, "utf8"
  if12_end15:
    $P506 = $P102."encoding"($S503)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "close" :subid("cuid_40_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 296
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
.annotate 'line', 297
    $P501 = _lex_param_0."close"()
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_41_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 304
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 305
    $P503 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P503
.annotate 'line', 306
    $P504 = $P101."readall"()
    set $P102, $P504
.annotate 'line', 307
    $P505 = $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_42_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 316
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 317
    $P502 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P502
.annotate 'line', 318
    $P503 = $P101."print"(_lex_param_1)
.annotate 'line', 319
    $P504 = $P101."close"()
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_44_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 322
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P507 = 'cuid_43_1346233425.954' 
    capture_lex $P507 
    .lex "@args", _lex_param_0 
    set $P501, _lex_param_0
    iter $P503, _lex_param_0
    new $P505, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P505, for_handlers20
    push_eh $P505
  for_next21:
    unless $P503, for_done23
    shift $P506, $P503
  for_redo22:
    .const 'Sub' $P504 = 'cuid_43_1346233425.954' 
    capture_lex $P504
    $P501 = $P504($P506)
    goto for_next21
  for_handlers20:
    .get_results ($P505)
    pop_upto_eh $P505
    getattribute $P505, $P505, 'type'
    eq $P505, .CONTROL_LOOP_NEXT, for_next21
    eq $P505, .CONTROL_LOOP_REDO, for_redo22
  for_done23:
    pop_eh 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1346233425.954") :anon :lex :outer("cuid_44_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 323
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S501, _lex_param_0
    print $S501
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_45_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 329
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 330
    $P501 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "match" :subid("cuid_47_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 347
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P507 = 'cuid_46_1346233425.954' 
    capture_lex $P507 
    if haz_param_5, default31
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P506
  default31:
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 348
    $P502 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P502
    unless _lex_param_2 goto if13_else24 
    .const 'Sub' $P503 = 'cuid_46_1346233425.954' 
    capture_lex $P503
    $P504 = $P503()
    set $P505, $P504
    goto if13_end25
  if13_else24:
.annotate 'line', 357

    set $P505, $P101
  if13_end25:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1346233425.954") :anon :lex :outer("cuid_47_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 349
    .lex "@matches", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    new $P513, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P513, while14_handlers29
    push_eh $P513
  while14_test26:
    find_lex $P502, "$match"
    set $P512, $P502
    unless $P502 goto while14_done30 
  while14_redo28:
.annotate 'line', 351
.annotate 'line', 352
    find_lex $P503, "$match"
    $P504 = $P101."push"($P503)
.annotate 'line', 353
    find_lex $P505, "$match"
    $P506 = $P505."CURSOR"()
    find_lex $P507, "$text"
    find_lex $P508, "$regex"
    find_lex $P509, "$match"
    $P510 = $P509."to"()
    $P511 = $P506."parse"($P507, $P508 :named("rule"), $P510 :named("c"))
    store_lex "$match", $P511
    set $P512, $P511
    goto while14_test26 
  while14_handlers29:
    .get_results ($P513)
    pop_upto_eh $P513
    getattribute $P513, $P513, 'type'
    eq $P513, .CONTROL_LOOP_NEXT, while14_test26
    eq $P513, .CONTROL_LOOP_REDO, while14_redo28
  while14_done30:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subst" :subid("cuid_49_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 369
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P523 = 'cuid_48_1346233425.954' 
    capture_lex $P523 
    if haz_param_6, default46
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P522
  default46:
    .lex "@matches", $P101 
    .lex "$is_code", $P102 
    .lex "$offset", $P103 
    .lex "$result", $P104 
    .lex "$chars", $P105 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$repl", _lex_param_2 
    .lex "$global", _lex_param_3 
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
    unless _lex_param_3 goto if15_else32 
.annotate 'line', 370
    $P506 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P509, $P506
    goto if15_end33
  if15_else32:
    new $P507, 'ResizablePMCArray'
.annotate 'line', 371
    $P508 = _lex_param_1."ACCEPTS"(_lex_param_0)
    push $P507, $P508
    set $P509, $P507
  if15_end33:
    set $P101, $P509
    isa $I501, _lex_param_2, "Sub"
    box $P510, $I501
    set $P102, $P510
    box $P511, 0
    set $P103, $P511
    new $P512, "StringBuilder"
    set $P104, $P512
    set $P513, $P101
    iter $P515, $P101
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers40
    push_eh $P517
  for_next41:
    unless $P515, for_done43
    shift $P518, $P515
  for_redo42:
    .const 'Sub' $P516 = 'cuid_48_1346233425.954' 
    capture_lex $P516
    $P513 = $P516($P518)
    goto for_next41
  for_handlers40:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next41
    eq $P517, .CONTROL_LOOP_REDO, for_redo42
  for_done43:
    pop_eh 
    set $S501, _lex_param_0
    length $I502, $S501
    box $P519, $I502
    set $P105, $P519
    set $N501, $P105
    set $N502, $P103
    isgt $I503, $N501, $N502
    box $P521, $I503
    set $P520, $P521
    unless $I503 goto if19_end45 
    set $S503, _lex_param_0
    set $I504, $P103
    set $I505, $P105
    substr $S502, $S503, $I504, $I505
    push $P104, $S502
    set $P520, $P104
  if19_end45:
    set $S504, $P104
    .return ($S504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_48_1346233425.954") :anon :lex :outer("cuid_49_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P517, _lex_param_0
    unless _lex_param_0 goto if16_end35 
.annotate 'line', 377
.annotate 'line', 379
    $P501 = _lex_param_0."from"()
    set $N501, $P501
    find_lex $P502, "$offset"
    set $N502, $P502
    isgt $I501, $N501, $N502
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if17_end37 
    find_lex $P503, "$result"
    find_lex $P504, "$text"
    set $S502, $P504
    find_lex $P505, "$offset"
    set $I502, $P505
.annotate 'line', 378
    $P506 = _lex_param_0."from"()
    set $N504, $P506
    find_lex $P507, "$offset"
    set $N505, $P507
    sub $N503, $N504, $N505
    set $I503, $N503
    substr $S501, $S502, $I502, $I503
    push $P503, $S501
    set $P508, $P503
  if17_end37:
    find_lex $P510, "$result"
    find_lex $P511, "$is_code"
    unless $P511 goto if18_else38 
.annotate 'line', 380
    find_lex $P512, "$repl"
    $P513 = $P512(_lex_param_0)
    set $P515, $P513
    goto if18_end39
  if18_else38:
    find_lex $P514, "$repl"
    set $P515, $P514
  if18_end39:
    set $S503, $P515
    push $P510, $S503
.annotate 'line', 381
    $P516 = _lex_param_0."to"()
    store_lex "$offset", $P516
    set $P517, $P516
  if16_end35:
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_51_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 395
    .param pmc _lex_param_0 :slurpy :named 
    .const 'Sub' $P508 = 'cuid_50_1346233425.954' 
    capture_lex $P508 
    .lex "%h", $P101 
    .lex "%new", _lex_param_0 
    new $P501, 'Hash'
    set $P101, $P501
    set $P502, _lex_param_0
    iter $P504, _lex_param_0
    new $P506, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P506, for_handlers48
    push_eh $P506
  for_next49:
    unless $P504, for_done51
    shift $P507, $P504
  for_redo50:
    .const 'Sub' $P505 = 'cuid_50_1346233425.954' 
    capture_lex $P505
    $P502 = $P505($P507)
    goto for_next49
  for_handlers48:
    .get_results ($P506)
    pop_upto_eh $P506
    getattribute $P506, $P506, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, for_next49
    eq $P506, .CONTROL_LOOP_REDO, for_redo50
  for_done51:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_50_1346233425.954") :anon :lex :outer("cuid_51_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 397
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%h"
    set $S501, _lex_param_0
    find_lex $P503, "%new"
    set $S502, _lex_param_0
    set $P502, $P503[$S502]
    unless_null $P502, fallback47
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P504
  fallback47:
    set $P501[$S501], $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_52_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 409
    set $S502, _lex_param_0
    concat $S501, "1..", $S502
    $P501 = "&say"($S501)
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_53_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default60
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P516
  default60:
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    find_lex $P501, "$test_counter"
    set $N502, $P501
    set $N503, 1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$test_counter", $P502
    set $P504, _lex_param_0
    if _lex_param_0 goto unless20_end53 
.annotate 'line', 415
.annotate 'line', 416
    $P503 = "&print"("not ")
    set $P504, $P503
  unless20_end53:
.annotate 'line', 418
    find_lex $P505, "$test_counter"
    set $S502, $P505
    concat $S501, "ok ", $S502
    $P506 = "&print"($S501)
    set $P508, _lex_param_1
    unless _lex_param_1 goto if21_end55 
.annotate 'line', 419
.annotate 'line', 420
    set $S504, _lex_param_1
    concat $S503, " - ", $S504
    $P507 = "&print"($S503)
    set $P508, $P507
  if21_end55:
    find_lex $P509, "$test_counter"
    set $N504, $P509
    find_lex $P510, "$todo_upto_test_num"
    set $N505, $P510
    isle $I501, $N504, $N505
    box $P514, $I501
    set $P513, $P514
    unless $I501 goto if22_end57 
.annotate 'line', 422
.annotate 'line', 423
    find_lex $P511, "$todo_reason"
    $P512 = "&print"($P511)
    set $P513, $P512
  if22_end57:
.annotate 'line', 425
    $P515 = "&print"("\n")
    unless _lex_param_0 goto if23_else58 
    set $I502, 1
    goto if23_end59
  if23_else58:
    set $I502, 0
  if23_end59:
    .return ($I502) 
.end
.HLL "nqp"
.namespace []
.sub "todo" :subid("cuid_54_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 430
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reason", _lex_param_0 
    .lex "$count", _lex_param_1 
    find_lex $P501, "$test_counter"
    set $N502, $P501
    set $N503, _lex_param_1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$todo_upto_test_num", $P502
    set $S502, _lex_param_0
    concat $S501, "# TODO ", $S502
    box $P503, $S501
    store_lex "$todo_reason", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "skip" :subid("cuid_55_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 435
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P501, "$test_counter"
    set $N502, $P501
    set $N503, 1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$test_counter", $P502
.annotate 'line', 437
    find_lex $P503, "$test_counter"
    set $S505, $P503
    concat $S504, "ok ", $S505
    concat $S503, $S504, " # SKIP "
    set $S506, _lex_param_0
    concat $S502, $S503, $S506
    concat $S501, $S502, "\n"
    $P504 = "&say"($S501)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_2_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P501, $P101
    get_who $P503, $P101
    set $P502, $P503["NQPModuleHOW"]
    unless_null $P502, fallback61
    get_hll_global $P506, "GLOBAL"
    get_who $P505, $P506
    set $P504, $P505["NQPModuleHOW"]
    unless_null $P504, vivi_2462
    null $P507
    set $P504, $P507
  vivi_2462:
    set $P502, $P504
  fallback61:
    set $P501["module"], $P502
    get_who $P508, $P101
    get_who $P510, $P101
    set $P509, $P510["NQPClassHOW"]
    unless_null $P509, fallback63
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["NQPClassHOW"]
    unless_null $P511, vivi_2564
    null $P514
    set $P511, $P514
  vivi_2564:
    set $P509, $P511
  fallback63:
    set $P508["class"], $P509
    get_who $P515, $P101
    get_who $P517, $P101
    set $P516, $P517["NQPAttribute"]
    unless_null $P516, fallback65
    get_hll_global $P520, "GLOBAL"
    get_who $P519, $P520
    set $P518, $P519["NQPAttribute"]
    unless_null $P518, vivi_2666
    null $P521
    set $P518, $P521
  vivi_2666:
    set $P516, $P518
  fallback65:
    set $P515["class-attr"], $P516
    get_who $P522, $P101
    get_who $P524, $P101
    set $P523, $P524["NQPClassHOW"]
    unless_null $P523, fallback67
    get_hll_global $P527, "GLOBAL"
    get_who $P526, $P527
    set $P525, $P526["NQPClassHOW"]
    unless_null $P525, vivi_2768
    null $P528
    set $P525, $P528
  vivi_2768:
    set $P523, $P525
  fallback67:
    set $P522["grammar"], $P523
    get_who $P529, $P101
    get_who $P531, $P101
    set $P530, $P531["NQPAttribute"]
    unless_null $P530, fallback69
    get_hll_global $P534, "GLOBAL"
    get_who $P533, $P534
    set $P532, $P533["NQPAttribute"]
    unless_null $P532, vivi_2870
    null $P535
    set $P532, $P535
  vivi_2870:
    set $P530, $P532
  fallback69:
    set $P529["grammar-attr"], $P530
    get_who $P536, $P101
    get_who $P538, $P101
    set $P537, $P538["NQPParametricRoleHOW"]
    unless_null $P537, fallback71
    get_hll_global $P541, "GLOBAL"
    get_who $P540, $P541
    set $P539, $P540["NQPParametricRoleHOW"]
    unless_null $P539, vivi_2972
    null $P542
    set $P539, $P542
  vivi_2972:
    set $P537, $P539
  fallback71:
    set $P536["role"], $P537
    get_who $P543, $P101
    get_who $P545, $P101
    set $P544, $P545["NQPAttribute"]
    unless_null $P544, fallback73
    get_hll_global $P548, "GLOBAL"
    get_who $P547, $P548
    set $P546, $P547["NQPAttribute"]
    unless_null $P546, vivi_3074
    null $P549
    set $P546, $P549
  vivi_3074:
    set $P544, $P546
  fallback73:
    set $P543["role-attr"], $P544
    get_who $P550, $P101
    get_who $P552, $P101
    set $P551, $P552["NQPNativeHOW"]
    unless_null $P551, fallback75
    get_hll_global $P555, "GLOBAL"
    get_who $P554, $P555
    set $P553, $P554["NQPNativeHOW"]
    unless_null $P553, vivi_3176
    null $P556
    set $P553, $P556
  vivi_3176:
    set $P551, $P553
  fallback75:
    set $P550["native"], $P551
    .return ($P551) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_3_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P506 = 'cuid_6_1346233425.954' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_7_1346233425.954' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_8_1346233425.954' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_9_1346233425.954' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_10_1346233425.954' 
    capture_lex $P506 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_6_1346233425.954' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_7_1346233425.954' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_8_1346233425.954' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_9_1346233425.954' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_10_1346233425.954' 
    capture_lex $P505
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "add_dispatchee" :subid("cuid_6_1346233425.954") :anon :lex :outer("cuid_11_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 35
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    null $P503
    repr_bind_attr_obj $P501, $P502, "$!dispatch_cache", $P503
.annotate 'line', 37
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P506, $P504, $P505, "$!dispatchees"
    $P507 = $P506."push"(_lex_param_1)
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "is_dispatcher" :subid("cuid_7_1346233425.954") :anon :lex :outer("cuid_11_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P503, $P501, $P502, "$!dispatchees"
    defined $I501, $P503
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_8_1346233425.954") :anon :lex :outer("cuid_11_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 42
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "$clone_callback", $P103 
    .lex "self", _lex_param_0 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P507, $P505, $P506, "$!do"
    clone $P504, $P507
    set $P101, $P504
    nqp_decontainerize $P509, _lex_param_0
    repr_clone $P508, $P509
    set $P102, $P508
    find_lex $P510, "NQPRoutine"
    setattribute $P102, $P510, "$!do", $P101
    find_lex $P511, "NQPRoutine"
    nqp_decontainerize $P513, _lex_param_0
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P515, $P513, $P514, "$!dispatchees"
    clone $P512, $P515
    setattribute $P102, $P511, "$!dispatchees", $P512
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P517, _lex_param_0
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P519, $P517, $P518, "$!do"
    getprop $P516, $P519, "CLONE_CALLBACK"
    set $P103, $P516
    defined $I501, $P103
    box $P525, $I501
    set $P524, $P525
    unless $I501 goto if32_end78 
.annotate 'line', 54
.annotate 'line', 55
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P522, $P520, $P521, "$!do"
    $P523 = $P103($P522, $P101, $P102)
    set $P524, $P523
  if32_end78:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_9_1346233425.954") :anon :lex :outer("cuid_11_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "$clone_callback", $P103 
    .lex "self", _lex_param_0 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P507, $P505, $P506, "$!do"
    clone $P504, $P507
    set $P101, $P504
    nqp_decontainerize $P509, _lex_param_0
    repr_clone $P508, $P509
    set $P102, $P508
    find_lex $P510, "NQPRoutine"
    setattribute $P102, $P510, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P514, $P512, $P513, "$!do"
    getprop $P511, $P514, "CLONE_CALLBACK"
    set $P103, $P511
    defined $I501, $P103
    box $P520, $I501
    set $P519, $P520
    unless $I501 goto if33_end80 
.annotate 'line', 71
.annotate 'line', 72
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P517, $P515, $P516, "$!do"
    $P518 = $P103($P517, $P101, $P102)
    set $P519, $P518
  if33_end80:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "nqpattr" :subid("cuid_10_1346233425.954") :anon :lex :outer("cuid_11_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
.annotate 'line', 78
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    repr_get_attr_obj $P503, $P501, $P502, "$!do"
    $P504 = $P503."nqpattr"(_lex_param_1)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 87
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_33_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 93
    .const 'Sub' $P521 = 'cuid_13_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_14_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_15_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_16_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_17_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_18_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_19_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_20_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_21_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_22_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_23_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_24_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_25_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_26_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_27_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_28_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_29_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_30_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_31_1346233425.954' 
    capture_lex $P521 
    .const 'Sub' $P521 = 'cuid_32_1346233425.954' 
    capture_lex $P521 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_13_1346233425.954' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_14_1346233425.954' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_15_1346233425.954' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_16_1346233425.954' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_17_1346233425.954' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_18_1346233425.954' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_19_1346233425.954' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_20_1346233425.954' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_21_1346233425.954' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_22_1346233425.954' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_23_1346233425.954' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_24_1346233425.954' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_25_1346233425.954' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_26_1346233425.954' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_27_1346233425.954' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_28_1346233425.954' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_29_1346233425.954' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_30_1346233425.954' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_31_1346233425.954' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_32_1346233425.954' 
    capture_lex $P520
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_13_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 94
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P502, _lex_param_0
    repr_instance_of $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_14_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 98
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P501
.annotate 'line', 99
    nqp_decontainerize $P502, $P101
    $P503 = $P502."CREATE"()
    set $P102, $P503
.annotate 'line', 100
    $P504 = $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_15_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P516 = 'cuid_57_1346233425.954' 
    capture_lex $P516 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P503
.annotate 'line', 106
    nqp_decontainerize $P505, $P101
    get_how $P504, $P505
    nqp_decontainerize $P506, $P101
    $P507 = $P504."BUILDALLPLAN"($P506)
    set $P102, $P507
    elements $I501, $P102
    box $P508, $I501
    set $P103, $P508
    box $P509, 0
    set $P104, $P509
    new $P513, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P513, while34_handlers84
    push_eh $P513
  while34_test81:
    set $N501, $P104
    set $N502, $P103
    islt $I502, $N501, $N502
    box $P514, $I502
    set $P512, $P514
    unless $I502 goto while34_done85 
  while34_redo83:
    .const 'Sub' $P510 = 'cuid_57_1346233425.954' 
    capture_lex $P510
    $P511 = $P510()
    set $P512, $P511
    goto while34_test81 
  while34_handlers84:
    .get_results ($P513)
    pop_upto_eh $P513
    getattribute $P513, $P513, 'type'
    eq $P513, .CONTROL_LOOP_NEXT, while34_test81
    eq $P513, .CONTROL_LOOP_REDO, while34_redo83
  while34_done85:
    pop_eh 
    nqp_decontainerize $P515, $P101
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1346233425.954") :anon :lex :outer("cuid_15_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 109
    .const 'Sub' $P527 = 'cuid_56_1346233425.954' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_58_1346233425.954' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_59_1346233425.954' 
    capture_lex $P527 
    .lex "$task", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "$build_plan"
    find_lex $P504, "$i"
    set $I501, $P504
    set $P502, $P503[$I501]
    set $P101, $P502
    find_lex $P505, "$i"
    set $N502, $P505
    set $N503, 1
    add $N501, $N502, $N503
    box $P506, $N501
    store_lex "$i", $P506
    set $P507, $P101[0]
    set $I503, $P507
    iseq $I502, $I503, 0
    unless $I502 goto if35_else86 
.annotate 'line', 112
.annotate 'line', 114
    find_lex $P510, "self"
    nqp_decontainerize $P509, $P510
    find_lex $P511, "%attrinit"
    set $P508, $P101[1]
    $P512 = $P508($P509, $P511 :flat :named)
    set $P526, $P512
    goto if35_end87
  if35_else86:
    set $P513, $P101[0]
    set $I505, $P513
    iseq $I504, $I505, 1
    unless $I504 goto if36_else88 
    .const 'Sub' $P514 = 'cuid_56_1346233425.954' 
    capture_lex $P514
    $P515 = $P514()
    set $P525, $P515
    goto if36_end89
  if36_else88:
    set $P516, $P101[0]
    set $I507, $P516
    iseq $I506, $I507, 2
    unless $I506 goto if38_else93 
    .const 'Sub' $P517 = 'cuid_58_1346233425.954' 
    capture_lex $P517
    $P518 = $P517()
    set $P524, $P518
    goto if38_end94
  if38_else93:
    set $P519, $P101[0]
    set $I509, $P519
    iseq $I508, $I509, 3
    unless $I508 goto if40_else98 
    .const 'Sub' $P520 = 'cuid_59_1346233425.954' 
    capture_lex $P520
    $P521 = $P520()
    set $P523, $P521
    goto if40_end99
  if40_else98:
.annotate 'line', 152
    box $P522, "Invalid BUILDALLPLAN"
    die $P522
    set $P523, $P522
  if40_end99:
    set $P524, $P523
  if38_end94:
    set $P525, $P524
  if36_end89:
    set $P526, $P525
  if35_end87:
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_56_1346233425.954") :anon :lex :outer("cuid_57_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 116
    .lex "$key_name", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "$task"
    set $P502, $P503[2]
    set $P101, $P502
    find_lex $P504, "%attrinit"
    set $S501, $P101
    exists $I501, $P504[$S501]
    box $P514, $I501
    set $P513, $P514
    unless $I501 goto if37_end91 
.annotate 'line', 119
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P508, "$task"
    set $P507, $P508[1]
    find_lex $P509, "$task"
    set $S502, $P509[3]
    find_lex $P511, "%attrinit"
    set $S503, $P101
    set $P510, $P511[$S503]
    unless_null $P510, fallback92
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback92:
    setattribute $P505, $P507, $S502, $P510
    set $P513, $P510
  if37_end91:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_58_1346233425.954") :anon :lex :outer("cuid_57_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 123
    .lex "$key_name", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "$task"
    set $P502, $P503[2]
    set $P101, $P502
    find_lex $P504, "%attrinit"
    set $S501, $P101
    exists $I501, $P504[$S501]
    unless $I501 goto if39_else95 
.annotate 'line', 127
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P508, "$task"
    set $P507, $P508[1]
    find_lex $P509, "$task"
    set $S502, $P509[3]
    find_lex $P511, "%attrinit"
    set $S503, $P101
    set $P510, $P511[$S503]
    unless_null $P510, fallback97
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback97:
    setattribute $P505, $P507, $S502, $P510
    set $P519, $P510
    goto if39_end96
  if39_else95:
.annotate 'line', 130
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    find_lex $P516, "$task"
    set $P515, $P516[1]
    find_lex $P517, "$task"
    set $S504, $P517[3]
    new $P518, 'ResizablePMCArray'
    setattribute $P513, $P515, $S504, $P518
    set $P519, $P518
  if39_end96:
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1346233425.954") :anon :lex :outer("cuid_57_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 134
    .lex "$key_name", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "$task"
    set $P502, $P503[2]
    set $P101, $P502
    find_lex $P504, "%attrinit"
    set $S501, $P101
    exists $I501, $P504[$S501]
    unless $I501 goto if41_else100 
.annotate 'line', 138
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P508, "$task"
    set $P507, $P508[1]
    find_lex $P509, "$task"
    set $S502, $P509[3]
    find_lex $P511, "%attrinit"
    set $S503, $P101
    set $P510, $P511[$S503]
    unless_null $P510, fallback102
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback102:
    setattribute $P505, $P507, $S502, $P510
    set $P519, $P510
    goto if41_end101
  if41_else100:
.annotate 'line', 141
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    find_lex $P516, "$task"
    set $P515, $P516[1]
    find_lex $P517, "$task"
    set $S504, $P517[3]
    new $P518, 'Hash'
    setattribute $P513, $P515, $S504, $P518
    set $P519, $P518
  if41_end101:
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 159
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 160
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."bless"(_lex_param_1 :flat :named)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_17_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 163
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_18_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 164
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_19_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 167
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 168
    nqp_decontainerize $P502, $P101
    get_how $P501, $P502
    nqp_decontainerize $P503, $P101
    $P504 = $P501."name"($P503)
    set $S504, $P504
    concat $S503, $S504, "<"
    nqp_decontainerize $P505, $P101
    get_id $I501, $P505
    set $S505, $I501
    concat $S502, $S503, $S505
    concat $S501, $S502, ">"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_20_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 171
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_21_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_22_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_23_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 177
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_24_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_25_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 182
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    set $P101, _lex_param_0
    find_lex $P501, "NQPMu"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_26_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 186
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_27_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 187
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$key", _lex_param_1 
    set $P101, _lex_param_0
    find_lex $P501, "NQPMu"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_28_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    repr_defined $I501, $P501
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_29_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 195
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_30_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    set $P101, _lex_param_0
    nqp_decontainerize $P502, $P101
    get_what $P501, $P502
    type_check $I501, _lex_param_1, $P501
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_31_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 201
    nqp_decontainerize $P502, _lex_param_0
    get_how $P501, $P502
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P501."isa"($P503, _lex_param_1)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_32_1346233425.954") :anon :lex :outer("cuid_33_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 204
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P522 = 'cuid_61_1346233425.954' 
    capture_lex $P522 
    .lex "$subindent", $P101 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_103
    .lex "RETURN", $P102
    nqp_decontainerize $P502, _lex_param_0
    repr_defined $I501, $P502
    box $P506, $I501
    set $P505, $P506
    if $I501 goto unless42_end106 
    find_lex $P503, "RETURN"
    $P504 = $P503(0)
    set $P505, $P504
  unless42_end106:
.annotate 'line', 206
    $P507 = _lex_param_1."newIndent"()
    set $P101, $P507
.annotate 'line', 207
    $P508 = "&print"("{")
.annotate 'line', 208
    nqp_decontainerize $P513, _lex_param_0
    get_how $P512, $P513
    nqp_decontainerize $P514, _lex_param_0
    $P515 = $P512."parents"($P514)
    set $P509, $P515
    iter $P511, $P515
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers117
    push_eh $P517
  for_next118:
    unless $P511, for_done120
    shift $P518, $P511
  for_redo119:
    .const 'Sub' $P516 = 'cuid_61_1346233425.954' 
    capture_lex $P516
    $P509 = $P516($P518)
    goto for_next118
  for_handlers117:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next118
    eq $P517, .CONTROL_LOOP_REDO, for_redo119
  for_done120:
    pop_eh 
.annotate 'line', 227
    $P519 = _lex_param_1."deleteIndent"()
.annotate 'line', 228
    $P520 = _lex_param_1."indent"()
    $P521 = "&print"("\n", $P520, "}")
    goto lexotic_104
  lexotic_103:
    .get_results ($P521)
  lexotic_104:
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_61_1346233425.954") :anon :lex :outer("cuid_32_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 208
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_60_1346233425.954' 
    capture_lex $P509 
    .lex "$type", _lex_param_0 
.annotate 'line', 209
    get_how $P504, _lex_param_0
    $P505 = $P504."attributes"(_lex_param_0, 1 :named("local"))
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers113
    push_eh $P507
  for_next114:
    unless $P503, for_done116
    shift $P508, $P503
  for_redo115:
    .const 'Sub' $P506 = 'cuid_60_1346233425.954' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next114
  for_handlers113:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next114
    eq $P507, .CONTROL_LOOP_REDO, for_redo115
  for_done116:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_60_1346233425.954") :anon :lex :outer("cuid_61_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 209
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$attrtype", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 210
    $P503 = _lex_param_0."name"()
    set $P101, $P503
.annotate 'line', 211
    $P504 = _lex_param_0."type"()
    set $P102, $P504
.annotate 'line', 212
    find_lex $P505, "$subindent"
    find_lex $P507, "$type"
    get_how $P506, $P507
    find_lex $P508, "$type"
    $P509 = $P506."name"($P508)
    $P510 = "&print"("\n", $P505, $P509, "::", $P101, " => ")
    get_id $I502, $P102
    find_lex $P511, "int"
    get_id $I503, $P511
    iseq $I501, $I502, $I503
    unless $I501 goto if43_else107 
.annotate 'line', 213
.annotate 'line', 214
    find_lex $P512, "$dumper"
    find_lex $P513, "$label"
    find_lex $P515, "self"
    nqp_decontainerize $P514, $P515
    find_lex $P516, "$type"
    set $S501, $P101
    repr_get_attr_int $I504, $P514, $P516, $S501
    $P517 = $P512."dump"($P513, $I504)
    set $P541, $P517
    goto if43_end108
  if43_else107:
    get_id $I506, $P102
    find_lex $P518, "num"
    get_id $I507, $P518
    iseq $I505, $I506, $I507
    unless $I505 goto if44_else109 
.annotate 'line', 216
.annotate 'line', 217
    find_lex $P519, "$dumper"
    find_lex $P520, "$label"
    find_lex $P522, "self"
    nqp_decontainerize $P521, $P522
    find_lex $P523, "$type"
    set $S502, $P101
    repr_get_attr_num $N501, $P521, $P523, $S502
    $P524 = $P519."dump"($P520, $N501)
    set $P540, $P524
    goto if44_end110
  if44_else109:
    get_id $I509, $P102
    find_lex $P525, "str"
    get_id $I510, $P525
    iseq $I508, $I509, $I510
    unless $I508 goto if45_else111 
.annotate 'line', 219
.annotate 'line', 220
    find_lex $P526, "$dumper"
    find_lex $P527, "$label"
    find_lex $P529, "self"
    nqp_decontainerize $P528, $P529
    find_lex $P530, "$type"
    set $S504, $P101
    repr_get_attr_str $S503, $P528, $P530, $S504
    $P531 = $P526."dump"($P527, $S503)
    set $P539, $P531
    goto if45_end112
  if45_else111:
.annotate 'line', 222
.annotate 'line', 223
    find_lex $P532, "$dumper"
    find_lex $P533, "$label"
    find_lex $P536, "self"
    nqp_decontainerize $P535, $P536
    find_lex $P537, "$type"
    set $S505, $P101
    getattribute $P534, $P535, $P537, $S505
    $P538 = $P532."dump"($P533, $P534)
    set $P539, $P538
  if45_end112:
    set $P540, $P539
  if44_end110:
    set $P541, $P540
  if43_end108:
    .return ($P541) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_38_1346233425.954") :anon :lex :outer("cuid_1_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 235
    .const 'Sub' $P505 = 'cuid_34_1346233425.954' 
    capture_lex $P505 
    .const 'Sub' $P505 = 'cuid_35_1346233425.954' 
    capture_lex $P505 
    .const 'Sub' $P505 = 'cuid_36_1346233425.954' 
    capture_lex $P505 
    .const 'Sub' $P505 = 'cuid_37_1346233425.954' 
    capture_lex $P505 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_34_1346233425.954' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_35_1346233425.954' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_36_1346233425.954' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_37_1346233425.954' 
    capture_lex $P504
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_34_1346233425.954") :anon :lex :outer("cuid_38_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 256
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 257
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."CREATE"()
    set $P101, $P503
.annotate 'line', 258
    $P504 = $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_35_1346233425.954") :anon :lex :outer("cuid_38_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 262
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    new $P503, 'ResizablePMCArray'
    repr_bind_attr_obj $P501, $P502, "@!array", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    new $P506, 'Hash'
    repr_bind_attr_obj $P504, $P505, "%!hash", $P506
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_36_1346233425.954") :anon :lex :outer("cuid_38_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 267
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    repr_get_attr_obj $P503, $P501, $P502, "@!array"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_37_1346233425.954") :anon :lex :outer("cuid_38_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    repr_get_attr_obj $P503, $P501, $P502, "%!hash"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_63_1346233425.954") :load :init
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P501 = 'cuid_62_1346233425.954' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P501, "ModuleLoader"
    $P502 = $P501."load_module"("nqpmo")
    nqp_create_sc $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "RoleToRoleApplier"
    push $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227"
    push $P503, "src\\stage2\\gen\\nqp-mo.pm"
    push $P503, "NQPConcreteRoleHOW"
    push $P503, "RoleToClassApplier"
    push $P503, "NQPParametricRoleHOW"
    push $P503, "NQPClassHOW"
    push $P503, "NQPNativeHOW"
    push $P503, "NQPAttribute"
    push $P503, "NQPModuleHOW"
    push $P503, "Uninstantiable"
    push $P503, "P6int"
    push $P503, "P6num"
    push $P503, "P6str"
    push $P503, "add_dispatchee"
    push $P503, "is_dispatcher"
    push $P503, "derive_dispatcher"
    push $P503, "clone"
    push $P503, "nqpattr"
    push $P503, "$!do"
    push $P503, "$!signature"
    push $P503, "$!dispatchees"
    push $P503, "$!dispatch_cache"
    push $P503, "$!types"
    push $P503, "$!definednesses"
    push $P503, "CREATE"
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
    push $P503, "BUILD"
    push $P503, "list"
    push $P503, "hash"
    push $P503, "@!array"
    push $P503, "%!hash"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    push $P503, "EXPORTHOW"
    push $P503, "int"
    push $P503, "num"
    push $P503, "str"
    push $P503, ".annotate 'line', 257"
    push $P503, "    get_who $P543, $P101\n    get_who $P545, $P101\n    set $P544, $P545[\"NQPAttribute\"]\n    unless_null $P544, fallback73\n    get_hll_global $P548, \"GLOBAL\"\n    get_who $P547, $P548\n    set $P546, $P547[\"NQPAttribute\"]\n    unless_null $P546, vivi_3074\n    null $P549\n    set $P546, $P549\n  vivi_3074:\n    set $P544, $P546\n  fallback73:\n    set $P543[\"role-attr\"], $P544"
    push $P503, "NQPMu"
    push $P503, "name"
    push $P503, "code"
    push $P503, "get_string"
    push $P503, "get_number"
    push $P503, "get_integer"
    push $P503, "get_pmc_keyed_int"
    push $P503, "get_pmc_keyed_str"
    push $P503, "NQPCapture"
    push $P503, "set_pmc_keyed_int"
    push $P503, "exists_keyed_int"
    push $P503, "delete_keyed_int"
    push $P503, "unshift_pmc"
    push $P503, "push_pmc"
    push $P503, "get_pmc_keyed"
    push $P503, "set_pmc_keyed_str"
    push $P503, "set_pmc_keyed"
    push $P503, "exists_keyed"
    push $P503, "exists_keyed_str"
    push $P503, "delete_keyed"
    push $P503, "delete_keyed_str"
    .const 'Sub' $P504 = 'cuid_62_1346233425.954' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAACAAAAUAAAAAkAAACYAAAA0AcAADkAAABgCwAAbhUAAAAAAABuFQAAAAAAAG4VAABuFQAAAAAAAAMAAAAEAAAALQAAAAAAAAABAAAAAAAAAAwAAAAKAQAADQAAAE4BAAAOAAAAjgEAAA8AAADOAQAAAQAAAA4CAAABAAAASgMAAAEAAAAUBAAAAQAAAG4FAAAAAAAAIQAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAQAAAAIAAAAFAAAAAgABAAAAAwAAAAYAAAACAAEAAAAEAAAABwAAAAIAAQAAAAUAAAAIAAAAAgABAAAABgAAAAkAAAACAAEAAAAHAAAACgAAAAIAAQAAAAgAAAALAAAAAgABAAAACQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAAiAAAAAAAAAAEAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMAAAAAAAAAAgAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAMAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQAAAAAAAAAEAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACYAAAAAAAAABQAAAAoAAAAAAAoABQAAABAAAAALAAAAAAAAAAAAEQAAAAsAAAAAAAEAAAASAAAACwAAAAAAAgAAABMAAAALAAAAAAADAAAAFAAAAAsAAAAAAAQAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAQAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAAAAAAAAnAAAAAAAAAAYAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAAgAAABkAAAAEAAAAAAAAAAAAGgAAAAQAAQAAAAAAAAAAAAAAKAAAAAAAAAAHAAAACgAAAAAACgANAAAAGwAAAAIAAAAAAAgAAAAcAAAAAgAAAAAACQAAAB0AAAACAAAAAAAKAAAAHgAAAAIAAAAAAAsAAAAfAAAAAgAAAAAADAAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABEAAAAiAAAAAgAAAAAAEwAAACMAAAACAAAAAAAVAAAAJAAAAAIAAAAAABcAAAAlAAAAAgAAAAAAGAAAACYAAAACAAAAAAAaAAAAJwAAAAIAAAAAABsAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAMAAAAAACkAAAAAAAAAHAAAAAoAAAAAAAoAEAAAABsAAAACAAAAAAAIAAAAHAAAAAIAAAAAAAkAAAAdAAAAAgAAAAAACgAAAB4AAAACAAAAAAAdAAAAHwAAAAIAAAAAAAwAAAAgAAAAAgAAAAAADwAAACEAAAACAAAAAAARAAAAIgAAAAIAAAAAABMAAAAjAAAAAgAAAAAAFQAAACQAAAACAAAAAAAXAAAAJQAAAAIAAAAAABgAAAAmAAAAAgAAAAAAGgAAACcAAAACAAAAAAAbAAAAKAAAAAIAAAAAAB4AAAApAAAAAgAAAAAAHwAAACoAAAACAAAAAAAgAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAABwAAAACAAAAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgAAAAAABwAAAAMAAgAAAAAAHAAAAAoAAgAAACsAAAAEAAAAAAAAAAAALAAAAAQAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAEAAAAAAAAABQAAABAAAAABAAAAAAAAAAUAAAAgAAAAAQAAAAAAAAAFAAAAMAAAAAEAAAAAAAAABQAAAEAAAAABAAAAAAAAAAUAAABoAAAAAQAAAAAAAAAFAAAAgAAAAAEAAAAAAAAABQAAAJgAAAABAAAAAAAAAAUAAAC2AAAAAQAAAAAAAAAFAAAAzgAAAAEAAAAAAAAABQAAAOwAAAABAAAAAAAAAAUAAAAEAQAAAQAAAAAAAAAFAAAAIgEAAAEAAAAAAAAABQAAADoBAAABAAAAAAAAAAUAAABYAQAAAQAAAAAAAAAFAAAAcAEAAAEAAAAAAAAABQAAAIABAAABAAAAAAAAAAUAAACeAQAAAQAAAAAAAAAFAAAAtgEAAAEAAAAAAAAABQAAAMYBAAABAAAAAAAAAAgAAADWAQAAAAAAAAAAAAAFAAAA1gEAAAEAAAAAAAAABQAAAOYBAAABAAAAAAAAAAUAAAD2AQAAAQAAAAAAAAAFAAAABgIAAAEAAAACAAAAAAAAABYCAAABAAAAAQAAAAkAAAAmAgAAAQAAAAEAAAAHAAAANgIAAAEAAAABAAAABwAAAEYCAAABAAAAAQAAAAcAAABWAgAAAQAAAAIAAAAAAAAAZgIAAAEAAAACAAAAAAAAAOQCAAABAAAAAQAAAAYAAAAIAwAAAQAAAAEAAAAGAAAA9AUAAAEAAAAAAAAABgAAALIIAAABAAAAAAAAAAYAAADSCAAAAQAAAAAAAAAGAAAA8ggAAAEAAAAAAAAABgAAABIJAAABAAAAAAAAAAYAAAAyCQAAAQAAAAAAAAAGAAAAXgkAAAEAAAAAAAAABgAAAIoJAAABAAAAAgAAAAIAAAC2CQAAAQAAAAIAAAACAAAAugkAAAEAAAACAAAAAgAAAL4JAAABAAAAAgAAAAIAAADCCQAAAQAAAAIAAAACAAAAxgkAAAEAAAACAAAAAgAAAMoJAAABAAAAAQAAAAgAAADOCQAAAQAAAAEAAAAIAAAA7gkAAAEAAAALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEABwACAAAAAgAAAAAADQAAAAIAAAAAAA4AAAADAAsAAAAAAAoAAAACAAAAAAAqAAAAAQABAAsAAAAAAAsAAAACAAAAAAArAAAAAQABAAsAAAAAAAwAAAABAAcAAQAAAAIAAAAAABAAAAADAAsAAAAAAA0AAAACAAAAAAAsAAAAAQABAAsAAAAAAA4AAAABAAcAAQAAAAIAAAAAABIAAAADAAsAAAAAAA8AAAACAAAAAAAtAAAAAQABAAsAAAAAABAAAAABAAcAAQAAAAIAAAAAABQAAAADAAsAAAAAABEAAAACAAAAAAAuAAAAAQABAAsAAAAAABIAAAABAAcAAQAAAAIAAAAAABYAAAADAAsAAAAAABMAAAACAAAAAAAvAAAAAQABAAsAAAAAABQAAAABAAEAAQALAAAAAAAVAAAAAQAHAAEAAAACAAAAAAAZAAAAAwALAAAAAAAWAAAAAgAAAAAAMAAAAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQAuAAAABwAAAAAACgAAAAAABgAvAAAABAABAAAAAAAAAAYAMAAAAAQAAQAAAAAAAAAGADEAAAAEAAEAAAAAAAAABgAyAAAABAABAAAAAAAAADMAAAAHAAQAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAACgAFAAAAEAAAAAsAAAAAAAAAAAARAAAACwAAAAAAAQAAABIAAAALAAAAAAACAAAAEwAAAAsAAAAAAAMAAAAUAAAACwAAAAAABAAAADQAAAAHAAIAAAACAAAAAAA1AAAAAgAAAAAANgAAAAoAAAAAAAYANQAAAAoAAAAAAAoADQAAABsAAAACAAAAAAAIAAAAHAAAAAIAAAAAAAkAAAAdAAAAAgAAAAAACgAAAB4AAAACAAAAAAALAAAAHwAAAAIAAAAAAAwAAAAgAAAAAgAAAAAADwAAACEAAAACAAAAAAARAAAAIgAAAAIAAAAAABMAAAAjAAAAAgAAAAAAFQAAACQAAAACAAAAAAAXAAAAJQAAAAIAAAAAABgAAAAmAAAAAgAAAAAAGgAAACcAAAACAAAAAAAbAAAABwANAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAAPAAAAAgAAAAAAEQAAAAIAAAAAABMAAAACAAAAAAAVAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAcABwAAAAoAAgAAADYAAAAGAB8AAAA3AAAAAgAAAAAADQAAAAoAAgAAADYAAAAGAB8AAAA3AAAAAgAAAAAADgAAAAoAAgAAADYAAAAGACAAAAA3AAAAAgAAAAAAEAAAAAoAAgAAADYAAAAGACEAAAA3AAAAAgAAAAAAEgAAAAoAAgAAADYAAAAGACIAAAA3AAAAAgAAAAAAFAAAAAoAAgAAADYAAAAGACMAAAA3AAAAAgAAAAAAFgAAAAoAAgAAADYAAAAGACUAAAA3AAAAAgAAAAAAGQAAAAcAAAAAAAcAAAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAABwAAAAcAAAAAAAoABgAAADgAAAACAAAAAAAMAAAAOQAAAAIAAAAAAA8AAAA6AAAAAgAAAAAAEQAAADsAAAACAAAAAAATAAAAPAAAAAIAAAAAABUAAAAkAAAAAgAAAAAAFwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGAD0AAAAKAAIAAAArAAAAAgAAAAAANwAAACwAAAACAAAAAAA4AAAACgAEAAAAHgAAAAIAAAAAAB0AAAAoAAAAAgAAAAAAHgAAACkAAAACAAAAAAAfAAAAKgAAAAIAAAAAACAAAAAHAAQAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAABwAAAAAABwABAAAAAgAAAAAABwAAAAcAAAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAHAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAKAA4AAAA7AAAABwACAAAAAgAAAAAAHAAAAAYAKwAAAD4AAAAHAAIAAAACAAAAAAAcAAAABgArAAAAPwAAAAcAAgAAAAIAAAAAABwAAAAGACsAAABAAAAABwACAAAAAgAAAAAAHAAAAAYAKwAAAEEAAAAHAAIAAAACAAAAAAAcAAAABgArAAAAQgAAAAcAAgAAAAIAAAAAABwAAAAGACsAAAA8AAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEMAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAARAAAAAcAAgAAAAIAAAAAABwAAAAGACwAAABFAAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEYAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAARwAAAAcAAgAAAAIAAAAAABwAAAAGACwAAABIAAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEkAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAHgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAAeAAAAAQAHAAEAAAACAAAAAAAHAAAABwABAAAABAACAAAAAAAAAAcAAQAAAAIAAAAAAAcAAAAHAAEAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAABwAAAAcAAQAAAAQAAgAAAAAAAAAHAAEAAAACAAAAAAAHAAAABwABAAAABAACAAAAAAAAAAcAAgAAAAIAAAAAAAcAAAADAAcAAgAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAABwAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAAHAAAAAwAHAAIAAAAEAAIAAAAAAAAABAAAAAAAAAAAABUAAAAWAAAAFwAAABgAAAAZAAAAGgAAAAYAKwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAsAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAA=", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 1
    $P503 = $P501."set_static_lexpad_value"("EXPORTHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_2_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_2_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_2_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_2_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 2
    $P503 = $P501."set_static_lexpad_value"("int", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_3_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 2
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_3_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_3_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 2
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_3_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 3
    $P503 = $P501."set_static_lexpad_value"("num", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_4_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 3
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_4_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_4_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 3
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_4_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 4
    $P503 = $P501."set_static_lexpad_value"("str", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_5_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 4
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_5_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_5_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 4
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_5_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    $P503 = $P501."set_static_lexpad_value"("NQPRoutine", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_11_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_11_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_11_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 5
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_11_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 6
    $P503 = $P501."set_static_lexpad_value"("NQPSignature", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_12_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 6
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_12_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_12_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 6
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_12_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    $P503 = $P501."set_static_lexpad_value"("NQPMu", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_13_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 8
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_14_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 9
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_15_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 10
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_16_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 11
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_17_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 12
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_18_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 13
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_19_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 14
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_20_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 15
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_21_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 16
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_22_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 17
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_23_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 18
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_24_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 19
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_25_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 20
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_26_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 21
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_27_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 22
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_28_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 23
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_29_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 24
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_30_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 25
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_31_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 26
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_32_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 27
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_33_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_33_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_33_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_33_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    $P503 = $P501."set_static_lexpad_value"("NQPCapture", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_34_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 29
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_35_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 30
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_36_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 31
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_37_1346233425.954" 
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 32
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_38_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_38_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_38_1346233425.954"
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 28
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_38_1346233425.954"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_62_1346233425.954") :anon :lex :outer("cuid_63_1346233425.954")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_6_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_7_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_8_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_9_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_10_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_13_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_14_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_15_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_16_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_17_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_18_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_19_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_20_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_21_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_22_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_23_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_24_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_25_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_26_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_27_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_28_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_29_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_30_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_31_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_32_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_34_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_35_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_36_1346233425.954" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_37_1346233425.954" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_64_1346233425.954") :load
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P501 = "cuid_1_1346233425.954" 
    $P502 = $P501()
    .return ($P502) 
.end