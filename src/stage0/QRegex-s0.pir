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
.sub "" :subid("cuid_1_1346233431.208") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P525 = 'cuid_27_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_68_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_81_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_87_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_101_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_103_1346233431.208' 
    capture_lex $P525 
    .const 'Sub' $P525 = 'cuid_104_1346233431.208' 
    capture_lex $P525 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "NQPCursorRole", $P103 
    .lex "NQPMatch", $P104 
    .lex "NQPCursor", $P105 
    .lex "NQPRegexMethod", $P106 
    .lex "NQPRegex", $P107 
    .lex "EXPORT", $P108 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P501, "$*CTXSAVE"
    set ctxsave, $P501
    isnull $I501, ctxsave
    box $P506, $I501
    set $P505, $P506
    if $I501 goto unless95_end236 
    can $I502, ctxsave, "ctxsave"
    box $P504, $I502
    set $P503, $P504
    unless $I502 goto if96_end238 
    $P502 = ctxsave."ctxsave"()
    set $P503, $P502
  if96_end238:
    set $P505, $P503
  unless95_end236:
.annotate 'line', 1
    .const 'Sub' $P507 = 'cuid_27_1346233431.208' 
    capture_lex $P507
    $P508 = $P507()
    .const 'Sub' $P509 = 'cuid_68_1346233431.208' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_81_1346233431.208' 
    capture_lex $P510
    $P511 = $P510()
    .const 'Sub' $P512 = 'cuid_87_1346233431.208' 
    capture_lex $P512
    $P513 = $P512()
    .const 'Sub' $P514 = 'cuid_101_1346233431.208' 
    capture_lex $P514
    $P515 = $P514()
    .const 'Sub' $P516 = 'cuid_103_1346233431.208' 
    capture_lex $P516
    $P517 = $P516()
    .const 'Sub' $P518 = 'cuid_104_1346233431.208' 
    capture_lex $P518
    $P519 = $P518()
    set $P524, _lex_param_0
    unless _lex_param_0 goto if286_end843 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P520, "ModuleLoader"
    getinterp $P522
    set $P521, $P522["context"]
    $P523 = $P520."set_mainline_module"($P521)
    set $P524, $P523
  if286_end843:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_27_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P551 = 'cuid_2_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_3_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_4_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_5_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_6_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_7_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_8_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_9_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_10_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_11_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_12_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_13_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_14_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_15_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_16_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_17_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_18_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_19_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_20_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_21_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_22_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_23_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_24_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_25_1346233431.208' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_26_1346233431.208' 
    capture_lex $P551 
    .lex "%cclass_code", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 75
    box $P502, .CCLASS_ANY
    set $P101["."], $P502
    box $P503, .CCLASS_NUMERIC
    set $P101["d"], $P503
    box $P504, .CCLASS_WHITESPACE
    set $P101["s"], $P504
    box $P505, .CCLASS_WORD
    set $P101["w"], $P505
    box $P506, .CCLASS_NEWLINE
    set $P101["n"], $P506
    box $P507, .CCLASS_NEWLINE
    set $P101["nl"], $P507
.annotate 'line', 7
    get_who $P508, $P102
    box $P509, 0
    set $P508["$EDGE_FATE"], $P509
    get_who $P510, $P102
    box $P511, 1
    set $P510["$EDGE_EPSILON"], $P511
    get_who $P512, $P102
    box $P513, 2
    set $P512["$EDGE_CODEPOINT"], $P513
    get_who $P514, $P102
    box $P515, 3
    set $P514["$EDGE_CODEPOINT_NEG"], $P515
    get_who $P516, $P102
    box $P517, 4
    set $P516["$EDGE_CHARCLASS"], $P517
    get_who $P518, $P102
    box $P519, 5
    set $P518["$EDGE_CHARCLASS_NEG"], $P519
    get_who $P520, $P102
    box $P521, 6
    set $P520["$EDGE_CHARLIST"], $P521
    get_who $P522, $P102
    box $P523, 7
    set $P522["$EDGE_CHARLIST_NEG"], $P523
    get_who $P524, $P102
    box $P525, 8
    set $P524["$EDGE_SUBRULE"], $P525
    .const 'Sub' $P526 = 'cuid_2_1346233431.208' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_3_1346233431.208' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_4_1346233431.208' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_5_1346233431.208' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_6_1346233431.208' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_7_1346233431.208' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_8_1346233431.208' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_9_1346233431.208' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_10_1346233431.208' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_11_1346233431.208' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_12_1346233431.208' 
    capture_lex $P536
    .const 'Sub' $P537 = 'cuid_13_1346233431.208' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_14_1346233431.208' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_15_1346233431.208' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_16_1346233431.208' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_17_1346233431.208' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_18_1346233431.208' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_19_1346233431.208' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_20_1346233431.208' 
    capture_lex $P544
    .const 'Sub' $P545 = 'cuid_21_1346233431.208' 
    capture_lex $P545
    .const 'Sub' $P546 = 'cuid_22_1346233431.208' 
    capture_lex $P546
    .const 'Sub' $P547 = 'cuid_23_1346233431.208' 
    capture_lex $P547
    .const 'Sub' $P548 = 'cuid_24_1346233431.208' 
    capture_lex $P548
    .const 'Sub' $P549 = 'cuid_25_1346233431.208' 
    capture_lex $P549
    .const 'Sub' $P550 = 'cuid_26_1346233431.208' 
    capture_lex $P550
    .return ($P550) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 22
    nqp_decontainerize $P502, _lex_param_0
    new $P503, 'ResizablePMCArray'
    new $P504, 'ResizablePMCArray'
    $P505 = $P502."bless"($P503 :named("states"), $P504 :named("edges"))
    set $P101, $P505
.annotate 'line', 23
    $P506 = $P101."addstate"()
.annotate 'line', 24
    $P507 = $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex "$id", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P504, $P502, $P503, "$!states"
    set $N501, $P504
    box $P505, $N501
    set $P101, $P505
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P508, $P506, $P507, "$!states"
    set $I501, $P101
    new $P509, 'ResizablePMCArray'
    set $P508[$I501], $P509
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default244
    box $P516, 1
    set _lex_param_5, $P516
  default244:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $P505, _lex_param_5
    unless _lex_param_5 goto if97_end240 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    box $P504, 1
    repr_bind_attr_obj $P502, $P503, "$!edges", $P504
    set $P505, $P504
  if97_end240:
    set $N501, _lex_param_2
    set $N502, 0
    islt $I501, $N501, $N502
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if98_end242 
.annotate 'line', 36
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."addstate"()
    set _lex_param_2, $P507
    set $P508, _lex_param_2
  if98_end242:
    nqp_decontainerize $P511, _lex_param_0
    nqp_get_sc_object $P512, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P513, $P511, $P512, "$!states"
    set $I502, _lex_param_1
    set $P510, $P513[$I502]
    unless_null $P510, fallback243
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback243:
    set $P101, $P510
    push $P101, _lex_param_3
    push $P101, _lex_param_4
    set $N504, _lex_param_2
    set $N505, 0
    add $N503, $N504, $N505
    box $P515, $N503
    push $P101, $P515
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!states"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 47
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P503, _lex_param_0
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 52
    $P503 = _lex_param_1."rxtype"()
    set $P502, $P503
    defined $I501, $P502
    if $I501, defor245
    box $P504, "concat"
    set $P502, $P504
  defor245:
    set $P101, $P502
.annotate 'line', 53
    nqp_decontainerize $P506, _lex_param_0
    get_how $P505, $P506
    nqp_decontainerize $P507, _lex_param_0
    $P508 = $P505."can"($P507, $P101)
    unless $P508 goto if99_else246 
.annotate 'line', 54
    nqp_decontainerize $P509, _lex_param_0
    set $S501, $P101
    $P510 = $P509.$S501(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P513, $P510
    goto if99_end247
  if99_else246:
.annotate 'line', 55
    nqp_decontainerize $P511, _lex_param_0
    $P512 = $P511."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P513, $P512
  if99_end247:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 59
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P504, "$?PACKAGE"
    get_who $P503, $P504
    set $P502, $P503["$EDGE_FATE"]
    unless_null $P502, fallback248
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback248:
    $P506 = $P501."addedge"(_lex_param_2, 0, $P502, 0, 0 :named("newedge"))
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P508 = 'cuid_106_1346233431.208' 
    capture_lex $P508 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 63
    $P504 = _lex_param_1."list"()
    set $P501, $P504
    iter $P503, $P504
    new $P506, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P506, for_handlers253
    push_eh $P506
  for_next254:
    unless $P503, for_done256
    shift $P507, $P503
  for_redo255:
    .const 'Sub' $P505 = 'cuid_106_1346233431.208' 
    capture_lex $P505
    $P501 = $P505($P507)
    goto for_next254
  for_handlers253:
    .get_results ($P506)
    pop_upto_eh $P506
    getattribute $P506, $P506, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, for_next254
    eq $P506, .CONTROL_LOOP_REDO, for_redo255
  for_done256:
    pop_eh 
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1346233431.208") :anon :lex :outer("cuid_9_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "$st", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 64
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$from"
    find_lex $P505, "$to"
    $P506 = $P502."regex_nfa"(_lex_param_0, $P504, $P505)
    set $P101, $P506
    find_lex $P507, "$to"
    set $N501, $P507
    set $N502, 0
    islt $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if101_end252 
    set $N503, $P101
    set $N504, 0
    isgt $I502, $N503, $N504
    set $I503, $I502
  if101_end252:
    box $P509, $I503
    set $P508, $P509
    unless $I503 goto if100_end250 
    store_lex "$to", $P101
    set $P508, $P101
  if100_end250:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 71
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P504, "$?PACKAGE"
    get_who $P503, $P504
    set $P502, $P503["$EDGE_EPSILON"]
    unless_null $P502, fallback257
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback257:
    $P506 = $P501."addedge"(_lex_param_2, _lex_param_3, $P502, 0)
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 85
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P504, "$?PACKAGE"
    get_who $P503, $P504
    set $P502, $P503["$EDGE_CHARCLASS"]
    unless_null $P502, fallback258
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback258:
    set $N502, $P502
    $P506 = _lex_param_1."negate"()
    istrue $I501, $P506
    set $N503, $I501
    add $N501, $N502, $N503
    find_lex $P508, "%cclass_code"
.annotate 'line', 86
    $P509 = _lex_param_1."subtype"()
    set $S502, $P509
    downcase $S501, $S502
    set $P507, $P508[$S501]
    unless_null $P507, fallback259
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P510
  fallback259:
    $P511 = $P501."addedge"(_lex_param_2, _lex_param_3, $N501, $P507)
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$i", $P101 
    .lex "$n", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    box $P503, 0
    set $P101, $P503
.annotate 'line', 91
    $P504 = _lex_param_1."list"()
    set $N502, $P504
    set $N503, 1
    sub $N501, $N502, $N503
    box $P505, $N501
    set $P102, $P505
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, while102_handlers263
    push_eh $P512
  while102_test260:
    set $N504, _lex_param_2
    set $N505, 0
    isgt $I501, $N504, $N505
    set $I503, $I501
    unless $I501 goto if103_end266 
    set $N506, $P101
    set $N507, $P102
    islt $I502, $N506, $N507
    set $I503, $I502
  if103_end266:
    box $P513, $I503
    set $P511, $P513
    unless $I503 goto while102_done264 
  while102_redo262:
.annotate 'line', 92
.annotate 'line', 93
    nqp_decontainerize $P506, _lex_param_0
    set $I504, $P101
    set $P507, _lex_param_1[$I504]
    unless_null $P507, fallback267
    nqp_get_sc_object $P508, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P508
  fallback267:
    $P509 = $P506."regex_nfa"($P507, _lex_param_2, -1)
    set _lex_param_2, $P509
    set $N509, $P101
    set $N510, 1
    add $N508, $N509, $N510
    box $P510, $N508
    set $P101, $P510
    set $P511, $P101
    goto while102_test260 
  while102_handlers263:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, while102_test260
    eq $P512, .CONTROL_LOOP_REDO, while102_redo262
  while102_done264:
    pop_eh 
    set $N511, _lex_param_2
    set $N512, 0
    isgt $I505, $N511, $N512
    set $I507, $I505
    unless $I505 goto if105_end271 
    set $N513, $P102
    set $N514, 0
    isge $I506, $N513, $N514
    set $I507, $I506
  if105_end271:
    unless $I507 goto if104_else268 
.annotate 'line', 96
    nqp_decontainerize $P514, _lex_param_0
    set $I508, $P101
    set $P515, _lex_param_1[$I508]
    unless_null $P515, fallback272
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P516
  fallback272:
    $P517 = $P514."regex_nfa"($P515, _lex_param_2, _lex_param_3)
    set $P518, $P517
    goto if104_end269
  if104_else268:
    set $P518, _lex_param_3
  if104_end269:
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 99
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $P502, _lex_param_1[0]
    unless_null $P502, fallback273
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback273:
    set $P101, $P502
.annotate 'line', 101
    $P504 = _lex_param_1."subtype"()
    set $S501, $P504
    iseq $I501, $S501, "zerowidth"
    unless $I501 goto if106_else274 
.annotate 'line', 102
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P508, "$?PACKAGE"
    get_who $P507, $P508
    set $P506, $P507["$EDGE_CHARLIST"]
    unless_null $P506, fallback276
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback276:
    set $N502, $P506
    $P510 = _lex_param_1."negate"()
    istrue $I502, $P510
    set $N503, $I502
    add $N501, $N502, $N503
    $P511 = $P505."addedge"(_lex_param_2, -1, $N501, $P101)
    set _lex_param_2, $P511
.annotate 'line', 103
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P515, "$?PACKAGE"
    get_who $P514, $P515
    set $P513, $P514["$EDGE_FATE"]
    unless_null $P513, fallback277
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P516
  fallback277:
    $P517 = $P512."addedge"(_lex_param_2, 0, $P513, 0)
    set $P525, $P517
    goto if106_end275
  if106_else274:
.annotate 'line', 105
.annotate 'line', 106
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P521, "$?PACKAGE"
    get_who $P520, $P521
    set $P519, $P520["$EDGE_CHARLIST"]
    unless_null $P519, fallback278
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback278:
    set $N505, $P519
    $P523 = _lex_param_1."negate"()
    istrue $I503, $P523
    set $N506, $I503
    add $N504, $N505, $N506
    $P524 = $P518."addedge"(_lex_param_2, _lex_param_3, $N504, $P101)
    set $P525, $P524
  if106_end275:
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$litconst", $P101 
    .lex "$litlen", $P102 
    .lex "$i", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    set $P504, _lex_param_1[0]
    unless_null $P504, fallback279
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P505
  fallback279:
    set $P101, $P504
    set $S501, $P101
    length $I501, $S501
    set $N502, $I501
    set $N503, 1
    sub $N501, $N502, $N503
    box $P506, $N501
    set $P102, $P506
    box $P507, 0
    set $P103, $P507
    set $N504, $P102
    set $N505, 0
    isge $I502, $N504, $N505
    unless $I502 goto if107_else280 
.annotate 'line', 114
    new $P516, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P516, while108_handlers285
    push_eh $P516
  while108_test282:
    set $N506, $P103
    set $N507, $P102
    islt $I503, $N506, $N507
    box $P517, $I503
    set $P515, $P517
    unless $I503 goto while108_done286 
  while108_redo284:
.annotate 'line', 115
.annotate 'line', 116
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P511, "$?PACKAGE"
    get_who $P510, $P511
    set $P509, $P510["$EDGE_CODEPOINT"]
    unless_null $P509, fallback287
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback287:
    set $S502, $P101
    set $I505, $P103
    ord $I504, $S502, $I505
    $P513 = $P508."addedge"(_lex_param_2, -1, $P509, $I504)
    set _lex_param_2, $P513
    set $N509, $P103
    set $N510, 1
    add $N508, $N509, $N510
    box $P514, $N508
    set $P103, $P514
    set $P515, $P103
    goto while108_test282 
  while108_handlers285:
    .get_results ($P516)
    pop_upto_eh $P516
    getattribute $P516, $P516, 'type'
    eq $P516, .CONTROL_LOOP_NEXT, while108_test282
    eq $P516, .CONTROL_LOOP_REDO, while108_redo284
  while108_done286:
    pop_eh 
.annotate 'line', 119
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P521, "$?PACKAGE"
    get_who $P520, $P521
    set $P519, $P520["$EDGE_CODEPOINT"]
    unless_null $P519, fallback288
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback288:
    set $S503, $P101
    set $I507, $P103
    ord $I506, $S503, $I507
    $P523 = $P518."addedge"(_lex_param_2, _lex_param_3, $P519, $I506)
    set $P530, $P523
    goto if107_end281
  if107_else280:
.annotate 'line', 121
.annotate 'line', 122
    nqp_decontainerize $P524, _lex_param_0
    find_lex $P527, "$?PACKAGE"
    get_who $P526, $P527
    set $P525, $P526["$EDGE_EPSILON"]
    unless_null $P525, fallback289
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P525, $P528
  fallback289:
    $P529 = $P524."addedge"(_lex_param_2, _lex_param_3, $P525, 0)
    set $P530, $P529
  if107_end281:
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P570 = 'cuid_107_1346233431.208' 
    capture_lex $P570 
    .const 'Sub' $P570 = 'cuid_108_1346233431.208' 
    capture_lex $P570 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 127
    $P502 = _lex_param_1."subtype"()
    set $P101, $P502
.annotate 'line', 128
    $P503 = _lex_param_1."name"()
    set $S501, $P503
    iseq $I501, $S501, "before"
    set $I503, $I501
    unless $I501 goto if110_end293 
    $P504 = _lex_param_1."negate"()
    isfalse $I502, $P504
    set $I503, $I502
  if110_end293:
    unless $I503 goto if109_else290 
    .const 'Sub' $P505 = 'cuid_107_1346233431.208' 
    capture_lex $P505
    $P506 = $P505()
    set $P569, $P506
    goto if109_end291
  if109_else290:
    set $S502, $P101
    isne $I504, $S502, "zerowidth"
    set $I510, $I504
    unless $I504 goto if112_end300 
.annotate 'line', 134
    $P507 = _lex_param_1."name"()
    set $S503, $P507
    iseq $I505, $S503, "alpha"
    set $I509, $I505
    if $I505 goto unless113_end302 
    set $S504, $P101
    iseq $I506, $S504, "method"
    set $I508, $I506
    unless $I506 goto if114_end304 
.annotate 'line', 136
    get_hll_global $P511, "GLOBAL"
    nqp_get_package_through_who $P510, $P511, "QAST"
    get_who $P509, $P510
    set $P508, $P509["SVal"]
    unless_null $P508, fallback307
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback307:
    set $P514, _lex_param_1[0]
    unless_null $P514, fallback308
    nqp_get_sc_object $P515, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P515
  fallback308:
    set $P513, $P514[0]
    unless_null $P513, fallback309
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P516
  fallback309:
    $P517 = $P508."ACCEPTS"($P513)
    unless $P517 goto if115_else305 
    set $P519, _lex_param_1[0]
    unless_null $P519, fallback310
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P520
  fallback310:
    set $P518, $P519[0]
    unless_null $P518, fallback311
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P521
  fallback311:
    $P522 = $P518."value"()
    set $P527, $P522
    goto if115_end306
  if115_else305:
    set $P524, _lex_param_1[0]
    unless_null $P524, fallback312
    nqp_get_sc_object $P525, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P525
  fallback312:
    set $P523, $P524[0]
    unless_null $P523, fallback313
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P523, $P526
  fallback313:
    set $P527, $P523
  if115_end306:
    set $S505, $P527
    iseq $I507, $S505, "alpha"
    set $I508, $I507
  if114_end304:
    set $I509, $I508
  unless113_end302:
    set $I510, $I509
  if112_end300:
    unless $I510 goto if111_else297 
.annotate 'line', 137
    nqp_decontainerize $P528, _lex_param_0
    find_lex $P531, "$?PACKAGE"
    get_who $P530, $P531
    set $P529, $P530["$EDGE_CHARCLASS"]
    unless_null $P529, fallback314
    nqp_get_sc_object $P532, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P532
  fallback314:
    set $N502, $P529
    $P533 = _lex_param_1."negate"()
    set $N503, $P533
    add $N501, $N502, $N503
    $P534 = $P528."addedge"(_lex_param_2, _lex_param_3, $N501, .CCLASS_ALPHABETIC)
    set _lex_param_3, $P534
.annotate 'line', 139
    nqp_decontainerize $P535, _lex_param_0
    find_lex $P538, "$?PACKAGE"
    get_who $P537, $P538
    set $P536, $P537["$EDGE_CODEPOINT"]
    unless_null $P536, fallback315
    nqp_get_sc_object $P539, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P536, $P539
  fallback315:
    set $N505, $P536
    $P540 = _lex_param_1."negate"()
    set $N506, $P540
    add $N504, $N505, $N506
    $P541 = $P535."addedge"(_lex_param_2, _lex_param_3, $N504, 95)
    set $P568, $P541
    goto if111_end298
  if111_else297:
    set $S506, $P101
    iseq $I511, $S506, "zerowidth"
    unless $I511 goto if116_else316 
.annotate 'line', 141
.annotate 'line', 142
    $P542 = _lex_param_1."negate"()
    unless $P542 goto if117_else318 
.annotate 'line', 143
    nqp_decontainerize $P543, _lex_param_0
    $P544 = $P543."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P547, $P544
    goto if117_end319
  if117_else318:
    .const 'Sub' $P545 = 'cuid_108_1346233431.208' 
    capture_lex $P545
    $P546 = $P545()
    set $P547, $P546
  if117_end319:
    set $P567, $P547
    goto if116_end317
  if116_else316:
.annotate 'line', 151
    set $S507, $P101
    iseq $I512, $S507, "capture"
    box $P551, $I512
    set $P550, $P551
    unless $I512 goto if119_end324 
    set $P548, _lex_param_1[1]
    unless_null $P548, fallback325
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P548, $P549
  fallback325:
    set $P550, $P548
  if119_end324:
    unless $P550 goto if118_else321 
.annotate 'line', 153
    nqp_decontainerize $P552, _lex_param_0
    set $P553, _lex_param_1[1]
    unless_null $P553, fallback326
    nqp_get_sc_object $P554, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P553, $P554
  fallback326:
    $P555 = $P552."regex_nfa"($P553, _lex_param_2, _lex_param_3)
    set $P566, $P555
    goto if118_end322
  if118_else321:
.annotate 'line', 154
    nqp_decontainerize $P556, _lex_param_0
    find_lex $P559, "$?PACKAGE"
    get_who $P558, $P559
    set $P557, $P558["$EDGE_SUBRULE"]
    unless_null $P557, fallback327
    nqp_get_sc_object $P560, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P557, $P560
  fallback327:
    set $P562, _lex_param_1[0]
    unless_null $P562, fallback328
    nqp_get_sc_object $P563, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P562, $P563
  fallback328:
    set $P561, $P562[0]
    unless_null $P561, fallback329
    nqp_get_sc_object $P564, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P561, $P564
  fallback329:
    $P565 = $P556."addedge"(_lex_param_2, _lex_param_3, $P557, $P561)
    set $P566, $P565
  if118_end322:
    set $P567, $P566
  if116_end317:
    set $P568, $P567
  if111_end298:
    set $P569, $P568
  if109_end291:
    .return ($P569) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1346233431.208") :anon :lex :outer("cuid_15_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 128
    .lex "$end", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 129
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."addstate"()
    set $P101, $P504
.annotate 'line', 130
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P510, "$node"
    set $P509, $P510[0]
    unless_null $P509, fallback294
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P511
  fallback294:
    set $P508, $P509[1]
    unless_null $P508, fallback295
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P512
  fallback295:
    set $P507, $P508["orig_qast"]
    unless_null $P507, fallback296
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P507, $P513
  fallback296:
    find_lex $P514, "$from"
    $P515 = $P505."regex_nfa"($P507, $P514, $P101)
.annotate 'line', 131
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    find_lex $P518, "$node"
    find_lex $P519, "$to"
    $P520 = $P516."fate"($P518, $P101, $P519)
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1346233431.208") :anon :lex :outer("cuid_15_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 145
    .lex "$end", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 146
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."addstate"()
    set $P101, $P504
.annotate 'line', 147
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    find_lex $P507, "$from"
    find_lex $P510, "$?PACKAGE"
    get_who $P509, $P510
    set $P508, $P509["$EDGE_SUBRULE"]
    unless_null $P508, fallback320
    nqp_get_sc_object $P511, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P508, $P511
  fallback320:
    find_lex $P512, "$node"
    $P513 = $P512."name"()
    $P514 = $P505."addedge"($P507, $P101, $P508, $P513)
.annotate 'line', 148
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    find_lex $P517, "$node"
    find_lex $P518, "$to"
    $P519 = $P515."fate"($P517, $P101, $P518)
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_16_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P531 = 'cuid_110_1346233431.208' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_112_1346233431.208' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_113_1346233431.208' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_114_1346233431.208' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_115_1346233431.208' 
    capture_lex $P531 
    .lex "$min", $P101 
    .lex "$max", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_330
    .lex "RETURN", $P103
    set $N502, 0
.annotate 'line', 159
    $P504 = _lex_param_1."min"()
    set $P503, $P504
    defined $I501, $P503
    if $I501, defor332
    box $P505, 0
    set $P503, $P505
  defor332:
    set $N503, $P503
    add $N501, $N502, $N503
    box $P506, $N501
    set $P101, $P506
    set $N505, 0
.annotate 'line', 160
    $P508 = _lex_param_1."max"()
    set $P507, $P508
    defined $I502, $P507
    if $I502, defor333
    box $P509, -1
    set $P507, $P509
  defor333:
    set $N506, $P507
    add $N504, $N505, $N506
    box $P510, $N504
    set $P102, $P510
    set $N507, $P102
    set $N508, 1
    isgt $I503, $N507, $N508
    set $I505, $I503
    if $I503 goto unless121_end337 
    set $N509, $P101
    set $N510, 1
    isgt $I504, $N509, $N510
    set $I505, $I504
  unless121_end337:
    box $P514, $I505
    set $P513, $P514
    unless $I505 goto if120_end335 
    .const 'Sub' $P511 = 'cuid_110_1346233431.208' 
    capture_lex $P511
    $P512 = $P511()
    set $P513, $P512
  if120_end335:
    set $N511, $P102
    set $N512, -1
    iseq $I506, $N511, $N512
    unless $I506 goto if133_else373 
.annotate 'line', 193
    set $N513, $P101
    set $N514, 0
    iseq $I507, $N513, $N514
    unless $I507 goto if134_else375 
.annotate 'line', 194
    set $P515, _lex_param_1[1]
    unless_null $P515, fallback379
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P516
  fallback379:
    defined $I508, $P515
    unless $I508 goto if135_else377 
    .const 'Sub' $P517 = 'cuid_112_1346233431.208' 
    capture_lex $P517
    $P518 = $P517()
    set $P521, $P518
    goto if135_end378
  if135_else377:
    .const 'Sub' $P519 = 'cuid_113_1346233431.208' 
    capture_lex $P519
    $P520 = $P519()
    set $P521, $P520
  if135_end378:
    set $P524, $P521
    goto if134_end376
  if134_else375:
    .const 'Sub' $P522 = 'cuid_114_1346233431.208' 
    capture_lex $P522
    $P523 = $P522()
    set $P524, $P523
  if134_end376:
    set $P530, _lex_param_3
    goto if133_end374
  if133_else373:
    set $N515, $P101
    set $N516, 0
    iseq $I509, $N515, $N516
    set $I511, $I509
    unless $I509 goto if144_end410 
    set $N517, $P102
    set $N518, 1
    iseq $I510, $N517, $N518
    set $I511, $I510
  if144_end410:
    unless $I511 goto if143_else407 
    .const 'Sub' $P525 = 'cuid_115_1346233431.208' 
    capture_lex $P525
    $P526 = $P525()
    set $P529, $P526
    goto if143_end408
  if143_else407:
.annotate 'line', 231
.annotate 'line', 232
    nqp_decontainerize $P527, _lex_param_0
    $P528 = $P527."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P529, $P528
  if143_end408:
    set $P530, $P529
  if133_end374:
    goto lexotic_331
  lexotic_330:
    .get_results ($P530)
  lexotic_331:
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1346233431.208") :anon :lex :outer("cuid_16_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .const 'Sub' $P557 = 'cuid_109_1346233431.208' 
    capture_lex $P557 
    .const 'Sub' $P557 = 'cuid_111_1346233431.208' 
    capture_lex $P557 
    .lex "$count", $P101 
    .lex "$st", $P102 
    .lex "$has_sep", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    box $P504, 0
    set $P101, $P504
    find_lex $P506, "$node"
    set $P505, $P506[1]
    unless_null $P505, fallback338
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P507
  fallback338:
    defined $I501, $P505
    box $P508, $I501
    set $P103, $P508
    new $P535, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P535, while122_handlers342
    push_eh $P535
  while122_test339:
    set $N501, $P101
    find_lex $P509, "$max"
    set $N502, $P509
    islt $I502, $N501, $N502
    set $I504, $I502
    if $I502 goto unless123_end345 
    set $N503, $P101
    find_lex $P510, "$min"
    set $N504, $P510
    islt $I503, $N503, $N504
    set $I504, $I503
  unless123_end345:
    box $P536, $I504
    set $P534, $P536
    unless $I504 goto while122_done343 
  while122_redo341:
.annotate 'line', 166
    set $N505, $P101
    find_lex $P511, "$min"
    set $N506, $P511
    isge $I505, $N505, $N506
    box $P515, $I505
    set $P514, $P515
    unless $I505 goto if124_end347 
    .const 'Sub' $P512 = 'cuid_109_1346233431.208' 
    capture_lex $P512
    $P513 = $P512()
    set $P514, $P513
  if124_end347:
    set $P516, $P103
    unless $P103 goto if127_end354 
    set $N507, $P101
    set $N508, 0
    isgt $I506, $N507, $N508
    box $P517, $I506
    set $P516, $P517
  if127_end354:
    set $P525, $P516
    unless $P516 goto if126_end352 
.annotate 'line', 171
.annotate 'line', 172
    find_lex $P519, "self"
    nqp_decontainerize $P518, $P519
    find_lex $P521, "$node"
    set $P520, $P521[1]
    unless_null $P520, fallback355
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P522
  fallback355:
    find_lex $P523, "$from"
    $P524 = $P518."regex_nfa"($P520, $P523, -1)
    store_lex "$from", $P524
    set $P525, $P524
  if126_end352:
.annotate 'line', 174
    find_lex $P527, "self"
    nqp_decontainerize $P526, $P527
    find_lex $P529, "$node"
    set $P528, $P529[0]
    unless_null $P528, fallback356
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P530
  fallback356:
    find_lex $P531, "$from"
    $P532 = $P526."regex_nfa"($P528, $P531, -1)
    store_lex "$from", $P532
    set $N510, $P101
    set $N511, 1
    add $N509, $N510, $N511
    box $P533, $N509
    set $P101, $P533
    set $P534, $P101
    goto while122_test339 
  while122_handlers342:
    .get_results ($P535)
    pop_upto_eh $P535
    getattribute $P535, $P535, 'type'
    eq $P535, .CONTROL_LOOP_NEXT, while122_test339
    eq $P535, .CONTROL_LOOP_REDO, while122_redo341
  while122_done343:
    pop_eh 
.annotate 'line', 177
    find_lex $P538, "self"
    nqp_decontainerize $P537, $P538
    find_lex $P539, "$from"
    find_lex $P540, "$to"
    find_lex $P543, "$?PACKAGE"
    get_who $P542, $P543
    set $P541, $P542["$EDGE_EPSILON"]
    unless_null $P541, fallback357
    nqp_get_sc_object $P544, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P541, $P544
  fallback357:
    $P545 = $P537."addedge"($P539, $P540, $P541, 0)
    find_lex $P546, "$max"
    set $N512, $P546
    set $N513, -1
    iseq $I507, $N512, $N513
    box $P550, $I507
    set $P549, $P550
    unless $I507 goto if128_end359 
    .const 'Sub' $P547 = 'cuid_111_1346233431.208' 
    capture_lex $P547
    $P548 = $P547()
    set $P549, $P548
  if128_end359:
    find_lex $P551, "$to"
    set $N514, $P551
    set $N515, 0
    islt $I508, $N514, $N515
    set $I510, $I508
    unless $I508 goto if132_end372 
    set $N516, $P102
    set $N517, 0
    isgt $I509, $N516, $N517
    set $I510, $I509
  if132_end372:
    box $P553, $I510
    set $P552, $P553
    unless $I510 goto if131_end370 
    store_lex "$to", $P102
    set $P552, $P102
  if131_end370:
    find_lex $P555, "$to"
    find_lex $P554, "RETURN"
    $P556 = $P554($P555)
    .return ($P556) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1346233431.208") :anon :lex :outer("cuid_110_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 167
    .lex "$f", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 168
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$from"
    find_lex $P505, "$to"
    find_lex $P508, "$?PACKAGE"
    get_who $P507, $P508
    set $P506, $P507["$EDGE_EPSILON"]
    unless_null $P506, fallback348
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P506, $P509
  fallback348:
    $P510 = $P502."addedge"($P504, $P505, $P506, 0)
    set $P101, $P510
    find_lex $P511, "$st"
    set $P512, $P511
    if $P511 goto unless125_end350 
    set $P512, $P101
  unless125_end350:
    store_lex "$st", $P512
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1346233431.208") :anon :lex :outer("cuid_110_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 178
    .lex "$start", $P101 
    .lex "$looper", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 179
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    $P505 = $P503."addstate"()
    set $P101, $P505
.annotate 'line', 180
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    find_lex $P508, "$from"
    find_lex $P511, "$?PACKAGE"
    get_who $P510, $P511
    set $P509, $P510["$EDGE_EPSILON"]
    unless_null $P509, fallback360
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback360:
    $P513 = $P506."addedge"($P508, $P101, $P509, 0)
    store_lex "$from", $P101
.annotate 'line', 182
    find_lex $P515, "self"
    nqp_decontainerize $P514, $P515
    $P516 = $P514."addstate"()
    set $P102, $P516
.annotate 'line', 183
    find_lex $P518, "self"
    nqp_decontainerize $P517, $P518
    find_lex $P519, "$to"
    find_lex $P522, "$?PACKAGE"
    get_who $P521, $P522
    set $P520, $P521["$EDGE_EPSILON"]
    unless_null $P520, fallback361
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P523
  fallback361:
    $P524 = $P517."addedge"($P102, $P519, $P520, 0)
.annotate 'line', 184
    find_lex $P526, "self"
    nqp_decontainerize $P525, $P526
    find_lex $P527, "$from"
    find_lex $P530, "$?PACKAGE"
    get_who $P529, $P530
    set $P528, $P529["$EDGE_EPSILON"]
    unless_null $P528, fallback362
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P531
  fallback362:
    $P532 = $P525."addedge"($P102, $P527, $P528, 0)
    find_lex $P533, "$has_sep"
    set $P535, $P533
    unless $P533 goto if130_end366 
    find_lex $P534, "$count"
    set $N501, $P534
    set $N502, 0
    isgt $I501, $N501, $N502
    box $P536, $I501
    set $P535, $P536
  if130_end366:
    set $P544, $P535
    unless $P535 goto if129_end364 
.annotate 'line', 185
.annotate 'line', 186
    find_lex $P538, "self"
    nqp_decontainerize $P537, $P538
    find_lex $P540, "$node"
    set $P539, $P540[1]
    unless_null $P539, fallback367
    nqp_get_sc_object $P541, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P539, $P541
  fallback367:
    find_lex $P542, "$from"
    $P543 = $P537."regex_nfa"($P539, $P542, -1)
    store_lex "$from", $P543
    set $P544, $P543
  if129_end364:
.annotate 'line', 188
    find_lex $P546, "self"
    nqp_decontainerize $P545, $P546
    find_lex $P548, "$node"
    set $P547, $P548[0]
    unless_null $P547, fallback368
    nqp_get_sc_object $P549, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P547, $P549
  fallback368:
    find_lex $P550, "$from"
    $P551 = $P545."regex_nfa"($P547, $P550, $P102)
    .return ($P551) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1346233431.208") :anon :lex :outer("cuid_16_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 195
    .lex "$start", $P101 
    .lex "$looper", $P102 
    .lex "$st", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 196
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    $P506 = $P504."addstate"()
    set $P101, $P506
.annotate 'line', 197
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    find_lex $P509, "$from"
    find_lex $P512, "$?PACKAGE"
    get_who $P511, $P512
    set $P510, $P511["$EDGE_EPSILON"]
    unless_null $P510, fallback380
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback380:
    $P514 = $P507."addedge"($P509, $P101, $P510, 0)
.annotate 'line', 198
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    $P517 = $P515."addstate"()
    set $P102, $P517
.annotate 'line', 199
    find_lex $P519, "self"
    nqp_decontainerize $P518, $P519
    find_lex $P521, "$node"
    set $P520, $P521[0]
    unless_null $P520, fallback381
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P522
  fallback381:
    $P523 = $P518."regex_nfa"($P520, $P101, $P102)
    set $P103, $P523
.annotate 'line', 200
    find_lex $P525, "self"
    nqp_decontainerize $P524, $P525
    find_lex $P527, "$node"
    set $P526, $P527[1]
    unless_null $P526, fallback382
    nqp_get_sc_object $P528, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P528
  fallback382:
    $P529 = $P524."regex_nfa"($P526, $P102, $P101)
.annotate 'line', 201
    find_lex $P531, "self"
    nqp_decontainerize $P530, $P531
    find_lex $P532, "$to"
    find_lex $P535, "$?PACKAGE"
    get_who $P534, $P535
    set $P533, $P534["$EDGE_EPSILON"]
    unless_null $P533, fallback383
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P533, $P536
  fallback383:
    $P537 = $P530."addedge"($P102, $P532, $P533, 0)
.annotate 'line', 202
    find_lex $P539, "self"
    nqp_decontainerize $P538, $P539
    find_lex $P540, "$from"
    find_lex $P541, "$to"
    find_lex $P544, "$?PACKAGE"
    get_who $P543, $P544
    set $P542, $P543["$EDGE_EPSILON"]
    unless_null $P542, fallback384
    nqp_get_sc_object $P545, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P545
  fallback384:
    $P546 = $P538."addedge"($P540, $P541, $P542, 0)
    set $P103, $P546
    find_lex $P547, "$to"
    set $N501, $P547
    set $N502, 0
    islt $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if137_end388 
    set $N503, $P103
    set $N504, 0
    isgt $I502, $N503, $N504
    set $I503, $I502
  if137_end388:
    box $P549, $I503
    set $P548, $P549
    unless $I503 goto if136_end386 
    store_lex "$to", $P103
    set $P548, $P103
  if136_end386:
    .return ($P548) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1346233431.208") :anon :lex :outer("cuid_16_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 205
    .lex "$st", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 206
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P505, "$node"
    set $P504, $P505[0]
    unless_null $P504, fallback389
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback389:
    find_lex $P507, "$from"
    find_lex $P508, "$from"
    $P509 = $P502."regex_nfa"($P504, $P507, $P508)
.annotate 'line', 207
    find_lex $P511, "self"
    nqp_decontainerize $P510, $P511
    find_lex $P512, "$from"
    find_lex $P513, "$to"
    find_lex $P516, "$?PACKAGE"
    get_who $P515, $P516
    set $P514, $P515["$EDGE_EPSILON"]
    unless_null $P514, fallback390
    nqp_get_sc_object $P517, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P514, $P517
  fallback390:
    $P518 = $P510."addedge"($P512, $P513, $P514, 0)
    set $P101, $P518
    find_lex $P519, "$to"
    set $N501, $P519
    set $N502, 0
    islt $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if139_end394 
    set $N503, $P101
    set $N504, 0
    isgt $I502, $N503, $N504
    set $I503, $I502
  if139_end394:
    box $P521, $I503
    set $P520, $P521
    unless $I503 goto if138_end392 
    store_lex "$to", $P101
    set $P520, $P101
  if138_end392:
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1346233431.208") :anon :lex :outer("cuid_16_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 210
    .lex "$start", $P101 
    .lex "$looper", $P102 
    .lex "$st", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 211
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    $P506 = $P504."addstate"()
    set $P101, $P506
.annotate 'line', 212
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    find_lex $P509, "$from"
    find_lex $P512, "$?PACKAGE"
    get_who $P511, $P512
    set $P510, $P511["$EDGE_EPSILON"]
    unless_null $P510, fallback395
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P513
  fallback395:
    $P514 = $P507."addedge"($P509, $P101, $P510, 0)
.annotate 'line', 213
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    $P517 = $P515."addstate"()
    set $P102, $P517
.annotate 'line', 214
    find_lex $P519, "self"
    nqp_decontainerize $P518, $P519
    find_lex $P521, "$node"
    set $P520, $P521[0]
    unless_null $P520, fallback396
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P522
  fallback396:
    $P523 = $P518."regex_nfa"($P520, $P101, $P102)
    set $P103, $P523
    find_lex $P525, "$node"
    set $P524, $P525[1]
    unless_null $P524, fallback399
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P524, $P526
  fallback399:
    defined $I501, $P524
    unless $I501 goto if140_else397 
.annotate 'line', 215
.annotate 'line', 216
    find_lex $P528, "self"
    nqp_decontainerize $P527, $P528
    find_lex $P530, "$node"
    set $P529, $P530[1]
    unless_null $P529, fallback400
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P531
  fallback400:
    $P532 = $P527."regex_nfa"($P529, $P102, $P101)
    set $P540, $P532
    goto if140_end398
  if140_else397:
.annotate 'line', 218
.annotate 'line', 219
    find_lex $P534, "self"
    nqp_decontainerize $P533, $P534
    find_lex $P537, "$?PACKAGE"
    get_who $P536, $P537
    set $P535, $P536["$EDGE_EPSILON"]
    unless_null $P535, fallback401
    nqp_get_sc_object $P538, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P538
  fallback401:
    $P539 = $P533."addedge"($P102, $P101, $P535, 0)
    set $P540, $P539
  if140_end398:
.annotate 'line', 221
    find_lex $P542, "self"
    nqp_decontainerize $P541, $P542
    find_lex $P543, "$to"
    find_lex $P546, "$?PACKAGE"
    get_who $P545, $P546
    set $P544, $P545["$EDGE_EPSILON"]
    unless_null $P544, fallback402
    nqp_get_sc_object $P547, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P544, $P547
  fallback402:
    $P548 = $P541."addedge"($P102, $P543, $P544, 0)
    find_lex $P549, "$to"
    set $N501, $P549
    set $N502, 0
    islt $I502, $N501, $N502
    set $I504, $I502
    unless $I502 goto if142_end406 
    set $N503, $P103
    set $N504, 0
    isgt $I503, $N503, $N504
    set $I504, $I503
  if142_end406:
    box $P551, $I504
    set $P550, $P551
    unless $I504 goto if141_end404 
    store_lex "$to", $P103
    set $P550, $P103
  if141_end404:
    .return ($P550) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1346233431.208") :anon :lex :outer("cuid_16_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 225
    .lex "$st", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 226
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P505, "$node"
    set $P504, $P505[0]
    unless_null $P504, fallback411
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback411:
    find_lex $P507, "$from"
    find_lex $P508, "$to"
    $P509 = $P502."regex_nfa"($P504, $P507, $P508)
    set $P101, $P509
    find_lex $P510, "$to"
    set $N501, $P510
    set $N502, 0
    islt $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if146_end415 
    set $N503, $P101
    set $N504, 0
    isgt $I502, $N503, $N504
    set $I503, $I502
  if146_end415:
    box $P512, $I503
    set $P511, $P512
    unless $I503 goto if145_end413 
    store_lex "$to", $P101
    set $P511, $P101
  if145_end413:
.annotate 'line', 228
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    find_lex $P515, "$from"
    find_lex $P516, "$to"
    find_lex $P519, "$?PACKAGE"
    get_who $P518, $P519
    set $P517, $P518["$EDGE_EPSILON"]
    unless_null $P517, fallback416
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P520
  fallback416:
    $P521 = $P513."addedge"($P515, $P516, $P517, 0)
    set $P101, $P521
    find_lex $P522, "$to"
    set $N505, $P522
    set $N506, 0
    islt $I504, $N505, $N506
    set $I506, $I504
    unless $I504 goto if148_end420 
    set $N507, $P101
    set $N508, 0
    isgt $I505, $N507, $N508
    set $I506, $I505
  if148_end420:
    box $P524, $I506
    set $P523, $P524
    unless $I506 goto if147_end418 
    store_lex "$to", $P101
    set $P523, $P101
  if147_end418:
    find_lex $P525, "$to"
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "pastnode" :subid("cuid_17_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 236
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 237
    $P501 = _lex_param_1."subtype"()
    set $S501, $P501
    iseq $I501, $S501, "zerowidth"
    set $I503, $I501
    if $I501 goto unless150_end424 
    $P502 = _lex_param_1."subtype"()
    set $S502, $P502
    iseq $I502, $S502, "declarative"
    set $I503, $I502
  unless150_end424:
    unless $I503 goto if149_else421 
.annotate 'line', 238
    nqp_decontainerize $P503, _lex_param_0
    find_lex $P506, "$?PACKAGE"
    get_who $P505, $P506
    set $P504, $P505["$EDGE_EPSILON"]
    unless_null $P504, fallback425
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback425:
    $P508 = $P503."addedge"(_lex_param_2, _lex_param_3, $P504, 0)
    set $P511, $P508
    goto if149_end422
  if149_else421:
.annotate 'line', 239
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P511, $P510
  if149_end422:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 243
    $P501 = _lex_param_1."subtype"()
    set $S501, $P501
    iseq $I501, $S501, "zerowidth"
    set $I503, $I501
    if $I501 goto unless152_end429 
    $P502 = _lex_param_1."subtype"()
    set $S502, $P502
    iseq $I502, $S502, "declarative"
    set $I503, $I502
  unless152_end429:
    unless $I503 goto if151_else426 
.annotate 'line', 244
    nqp_decontainerize $P503, _lex_param_0
    find_lex $P506, "$?PACKAGE"
    get_who $P505, $P506
    set $P504, $P505["$EDGE_EPSILON"]
    unless_null $P504, fallback430
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback430:
    $P508 = $P503."addedge"(_lex_param_2, _lex_param_3, $P504, 0)
    set $P511, $P508
    goto if151_end427
  if151_else426:
.annotate 'line', 245
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P511, $P510
  if151_end427:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 249
    nqp_decontainerize $P501, _lex_param_0
    set $P502, _lex_param_1[0]
    unless_null $P502, fallback431
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback431:
    $P504 = $P501."regex_nfa"($P502, _lex_param_2, _lex_param_3)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_20_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_8 :opt_flag 
    .const 'Sub' $P531 = 'cuid_116_1346233431.208' 
    capture_lex $P531 
    if haz_param_8, default445
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P530
  default445:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_432
    .lex "RETURN", $P102
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P504, $P502, $P503, "$!edges"
    set $P514, $P504
    if $P504 goto unless153_end435 
.annotate 'line', 253
    set $P507, _lex_param_1
    if _lex_param_1 goto unless154_end437 
    find_lex $P505, "RETURN"
    $P506 = $P505(0)
    set $P507, $P506
  unless154_end437:
.annotate 'line', 255
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P511, "$?PACKAGE"
    get_who $P510, $P511
    set $P509, $P510["$EDGE_FATE"]
    unless_null $P509, fallback438
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback438:
    $P513 = $P508."addedge"(1, 0, $P509, 0, 1 :named("newedge"))
    set $P514, $P513
  unless153_end435:
.annotate 'line', 257
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "PAST"
    get_who $P516, $P517
    set $P515, $P516["Op"]
    unless_null $P515, fallback439
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback439:
    $P520 = $P515."new"("list" :named("pasttype"))
    set $P101, $P520
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P526, $P524, $P525, "$!states"
    set $P521, $P526
    iter $P523, $P526
    new $P528, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P528, for_handlers441
    push_eh $P528
  for_next442:
    unless $P523, for_done444
    shift $P529, $P523
  for_redo443:
    .const 'Sub' $P527 = 'cuid_116_1346233431.208' 
    capture_lex $P527
    $P521 = $P527($P529)
    goto for_next442
  for_handlers441:
    .get_results ($P528)
    pop_upto_eh $P528
    getattribute $P528, $P528, 'type'
    eq $P528, .CONTROL_LOOP_NEXT, for_next442
    eq $P528, .CONTROL_LOOP_REDO, for_redo443
  for_done444:
    pop_eh 
    goto lexotic_433
  lexotic_432:
    .get_results ($P101)
  lexotic_433:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1346233431.208") :anon :lex :outer("cuid_20_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 258
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 259
    find_lex $P501, "$past"
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "PAST"
    get_who $P503, $P504
    set $P502, $P503["Op"]
    unless_null $P502, fallback440
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback440:
    $P507 = $P502."new"(_lex_param_0 :flat, "list" :named("pasttype"))
    $P508 = $P501."push"($P507)
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_21_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 264
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P531 = 'cuid_118_1346233431.208' 
    capture_lex $P531 
    if haz_param_9, default470
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_1, $P530
  default470:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_446
    .lex "RETURN", $P102
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P504, $P502, $P503, "$!edges"
    set $P514, $P504
    if $P504 goto unless155_end449 
.annotate 'line', 265
    set $P507, _lex_param_1
    if _lex_param_1 goto unless156_end451 
    find_lex $P505, "RETURN"
    $P506 = $P505(0)
    set $P507, $P506
  unless156_end451:
.annotate 'line', 267
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P511, "$?PACKAGE"
    get_who $P510, $P511
    set $P509, $P510["$EDGE_FATE"]
    unless_null $P509, fallback452
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P509, $P512
  fallback452:
    $P513 = $P508."addedge"(1, 0, $P509, 0, 1 :named("newedge"))
    set $P514, $P513
  unless155_end449:
.annotate 'line', 269
    get_hll_global $P518, "GLOBAL"
    nqp_get_package_through_who $P517, $P518, "QAST"
    get_who $P516, $P517
    set $P515, $P516["Op"]
    unless_null $P515, fallback453
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback453:
    $P520 = $P515."new"("list" :named("op"))
    set $P101, $P520
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P526, $P524, $P525, "$!states"
    set $P521, $P526
    iter $P523, $P526
    new $P528, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P528, for_handlers466
    push_eh $P528
  for_next467:
    unless $P523, for_done469
    shift $P529, $P523
  for_redo468:
    .const 'Sub' $P527 = 'cuid_118_1346233431.208' 
    capture_lex $P527
    $P521 = $P527($P529)
    goto for_next467
  for_handlers466:
    .get_results ($P528)
    pop_upto_eh $P528
    getattribute $P528, $P528, 'type'
    eq $P528, .CONTROL_LOOP_NEXT, for_next467
    eq $P528, .CONTROL_LOOP_REDO, for_redo468
  for_done469:
    pop_eh 
    goto lexotic_447
  lexotic_446:
    .get_results ($P101)
  lexotic_447:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1346233431.208") :anon :lex :outer("cuid_21_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 270
    .param pmc _lex_param_0 
    .const 'Sub' $P516 = 'cuid_117_1346233431.208' 
    capture_lex $P516 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 271
    get_hll_global $P505, "GLOBAL"
    nqp_get_package_through_who $P504, $P505, "QAST"
    get_who $P503, $P504
    set $P502, $P503["Op"]
    unless_null $P502, fallback454
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P506
  fallback454:
    $P507 = $P502."new"("list" :named("op"))
    set $P101, $P507
    set $P508, _lex_param_0
    iter $P510, _lex_param_0
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers462
    push_eh $P512
  for_next463:
    unless $P510, for_done465
    shift $P513, $P510
  for_redo464:
    .const 'Sub' $P511 = 'cuid_117_1346233431.208' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next463
  for_handlers462:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next463
    eq $P512, .CONTROL_LOOP_REDO, for_redo464
  for_done465:
    pop_eh 
.annotate 'line', 283
    find_lex $P514, "$past"
    $P515 = $P514."push"($P101)
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1346233431.208") :anon :lex :outer("cuid_118_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 272
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 273
    get_hll_global $P504, "GLOBAL"
    nqp_get_package_through_who $P503, $P504, "QAST"
    get_who $P502, $P503
    set $P501, $P502["SVal"]
    unless_null $P501, fallback457
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P505
  fallback457:
    $P506 = $P501."ACCEPTS"(_lex_param_0)
    unless $P506 goto if157_else455 
.annotate 'line', 274
    find_lex $P507, "$list"
    $P508 = $P507."push"(_lex_param_0)
    set $P526, $P508
    goto if157_end456
  if157_else455:
    set $N501, _lex_param_0
    set $S501, $N501
    set $S502, _lex_param_0
    iseq $I501, $S501, $S502
    unless $I501 goto if158_else458 
.annotate 'line', 276
.annotate 'line', 277
    find_lex $P509, "$list"
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "QAST"
    get_who $P511, $P512
    set $P510, $P511["IVal"]
    unless_null $P510, fallback460
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback460:
    $P515 = $P510."new"(_lex_param_0 :named("value"))
    $P516 = $P509."push"($P515)
    set $P525, $P516
    goto if158_end459
  if158_else458:
.annotate 'line', 279
.annotate 'line', 280
    find_lex $P517, "$list"
    get_hll_global $P521, "GLOBAL"
    nqp_get_package_through_who $P520, $P521, "QAST"
    get_who $P519, $P520
    set $P518, $P519["SVal"]
    unless_null $P518, fallback461
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P522
  fallback461:
    $P523 = $P518."new"(_lex_param_0 :named("value"))
    $P524 = $P517."push"($P523)
    set $P525, $P524
  if158_end459:
    set $P526, $P525
  if157_end456:
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_22_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 288
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P520 = 'cuid_119_1346233431.208' 
    capture_lex $P520 
    .const 'Sub' $P520 = 'cuid_121_1346233431.208' 
    capture_lex $P520 
    if haz_param_10, default494
    new $P519, 'Hash'
    set _lex_param_6, $P519
  default494:
    .lex "%seen", $P101 
    .lex "@substates", $P102 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "$cursor", _lex_param_4 
    .lex "$name", _lex_param_5 
    .lex "%caller_seen", _lex_param_6 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    clone $P503, _lex_param_6
    set $P101, $P503
    set $S501, _lex_param_5
    can $I501, _lex_param_4, $S501
    box $P515, $I501
    set $P514, $P515
    unless $I501 goto if159_end472 
.annotate 'line', 292
    set $S502, _lex_param_5
    exists $I503, $P101[$S502]
    box $P504, $I503
    isfalse $I502, $P504
    box $P508, $I502
    set $P507, $P508
    unless $I502 goto if160_end474 
    .const 'Sub' $P505 = 'cuid_119_1346233431.208' 
    capture_lex $P505
    $P506 = $P505()
    set $P507, $P506
  if160_end474:
    isfalse $I504, $P102
    set $I507, $I504
    unless $I504 goto if164_end482 
    set $S503, _lex_param_5
    exists $I506, $P101[$S503]
    box $P509, $I506
    isfalse $I505, $P509
    set $I507, $I505
  if164_end482:
    box $P513, $I507
    set $P512, $P513
    unless $I507 goto if163_end480 
    .const 'Sub' $P510 = 'cuid_121_1346233431.208' 
    capture_lex $P510
    $P511 = $P510()
    set $P512, $P511
  if163_end480:
    set $P514, $P512
  if159_end472:
    set $S504, _lex_param_5
    box $P516, 1
    set $P101[$S504], $P516
.annotate 'line', 314
    nqp_decontainerize $P517, _lex_param_0
    $P518 = $P517."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1346233431.208") :anon :lex :outer("cuid_22_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 293
    .lex "$meth", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 294
    find_lex $P503, "$cursor"
    get_how $P502, $P503
    find_lex $P504, "$cursor"
    find_lex $P505, "$name"
    $P506 = $P502."find_method"($P504, $P505, 1 :named("no_trace"))
    set $P101, $P506
    can $I501, $P101, "nqpattr"
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if161_end476 
.annotate 'line', 295
    $P507 = $P101."nqpattr"("nfa")
    store_lex "@substates", $P507
    set $P508, $P507
  if161_end476:
    find_lex $P510, "@substates"
    isnull $I502, $P510
    box $P513, $I502
    set $P512, $P513
    unless $I502 goto if162_end478 
    new $P511, 'ResizablePMCArray'
    store_lex "@substates", $P511
    set $P512, $P511
  if162_end478:
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1346233431.208") :anon :lex :outer("cuid_22_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 298
    .const 'Sub' $P531 = 'cuid_120_1346233431.208' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_122_1346233431.208' 
    capture_lex $P531 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $P103 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 301
    find_lex $P505, "$cursor"
    get_how $P504, $P505
    find_lex $P506, "$cursor"
    .const 'Sub' $P508 = 'cuid_120_1346233431.208' 
    capture_lex $P508
    newclosure $P507, $P508
    $P509 = $P504."cache"($P506, "!protoregex_table", $P507)
    set $P101, $P509
.annotate 'line', 302
    get_hll_global $P513, "GLOBAL"
    nqp_get_package_through_who $P512, $P513, "QRegex"
    get_who $P511, $P512
    set $P510, $P511["NFA"]
    unless_null $P510, fallback483
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P514
  fallback483:
    $P515 = $P510."new"()
    set $P102, $P515
    box $P516, 0
    set $P103, $P516
    find_lex $P517, "$name"
    set $S501, $P517
    exists $I501, $P101[$S501]
    box $P528, $I501
    set $P527, $P528
    unless $I501 goto if165_end485 
.annotate 'line', 304
    find_lex $P522, "$name"
    set $S502, $P522
    set $P521, $P101[$S502]
    unless_null $P521, fallback486
    nqp_get_sc_object $P523, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P521, $P523
  fallback486:
    set $P518, $P521
    iter $P520, $P521
    new $P525, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P525, for_handlers488
    push_eh $P525
  for_next489:
    unless $P520, for_done491
    shift $P526, $P520
  for_redo490:
    .const 'Sub' $P524 = 'cuid_122_1346233431.208' 
    capture_lex $P524
    $P518 = $P524($P526)
    goto for_next489
  for_handlers488:
    .get_results ($P525)
    pop_upto_eh $P525
    getattribute $P525, $P525, 'type'
    eq $P525, .CONTROL_LOOP_NEXT, for_next489
    eq $P525, .CONTROL_LOOP_REDO, for_redo490
  for_done491:
    pop_eh 
    set $P527, $P518
  if165_end485:
    set $P530, $P103
    unless $P103 goto if166_end493 
.annotate 'line', 310
    $P529 = $P102."states"()
    store_lex "@substates", $P529
    set $P530, $P529
  if166_end493:
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1346233431.208") :anon :lex :outer("cuid_121_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 301

    find_lex $P501, "$cursor"
    $P502 = $P501."!protoregex_table"()
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1346233431.208") :anon :lex :outer("cuid_121_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 305
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 306
    find_lex $P501, "$nfa"
    find_lex $P504, "$?PACKAGE"
    get_who $P503, $P504
    set $P502, $P503["$EDGE_SUBRULE"]
    unless_null $P502, fallback487
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback487:
    $P506 = $P501."addedge"(1, 0, $P502, _lex_param_0)
    box $P507, 1
    store_lex "$gotmatch", $P507
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_23_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P511 = 'cuid_124_1346233431.208' 
    capture_lex $P511 
    if haz_param_11, default530
    new $P510, 'Hash'
    set _lex_param_6, $P510
  default530:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if167_else495 
    .const 'Sub' $P501 = 'cuid_124_1346233431.208' 
    capture_lex $P501
    $P502 = $P501()
    set $P509, $P502
    goto if167_end496
  if167_else495:
.annotate 'line', 353
.annotate 'line', 354
    nqp_decontainerize $P503, _lex_param_0
    find_lex $P506, "$?PACKAGE"
    get_who $P505, $P506
    set $P504, $P505["$EDGE_FATE"]
    unless_null $P504, fallback529
    nqp_get_sc_object $P507, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P507
  fallback529:
    $P508 = $P503."addedge"(_lex_param_1, 0, $P504, _lex_param_3)
    set $P509, $P508
  if167_end496:
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1346233431.208") :anon :lex :outer("cuid_23_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 318
    .const 'Sub' $P557 = 'cuid_123_1346233431.208' 
    capture_lex $P557 
    .lex "$substart", $P101 
    .lex "$subend", $P102 
    .lex "$i", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
.annotate 'line', 320
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    $P506 = $P504."addstate"()
    set $P101, $P506
    find_lex $P508, "@substates"
    clone $P507, $P508
    store_lex "@substates", $P507
    find_lex $P510, "@substates"
    shift $P509, $P510
    new $P520, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P520, while168_handlers500
    push_eh $P520
  while168_test497:
    find_lex $P511, "@substates"
    set $P519, $P511
    unless $P511 goto while168_done501 
  while168_redo499:
    find_lex $P513, "self"
    nqp_decontainerize $P512, $P513
    nqp_get_sc_object $P514, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P515, $P512, $P514, "$!states"
    find_lex $P518, "@substates"
    shift $P517, $P518
    clone $P516, $P517
    push $P515, $P516
    set $P519, $P515
    goto while168_test497 
  while168_handlers500:
    .get_results ($P520)
    pop_upto_eh $P520
    getattribute $P520, $P520, 'type'
    eq $P520, .CONTROL_LOOP_NEXT, while168_test497
    eq $P520, .CONTROL_LOOP_REDO, while168_redo499
  while168_done501:
    pop_eh 
    find_lex $P522, "self"
    nqp_decontainerize $P521, $P522
    nqp_get_sc_object $P523, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P524, $P521, $P523, "$!states"
    elements $I501, $P524
    box $P525, $I501
    set $P102, $P525
    set $P103, $P101
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, while169_handlers505
    push_eh $P529
  while169_test502:
    set $N501, $P103
    set $N502, $P102
    islt $I502, $N501, $N502
    box $P530, $I502
    set $P528, $P530
    unless $I502 goto while169_done506 
  while169_redo504:
    .const 'Sub' $P526 = 'cuid_123_1346233431.208' 
    capture_lex $P526
    $P527 = $P526()
    set $P528, $P527
    goto while169_test502 
  while169_handlers505:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, while169_test502
    eq $P529, .CONTROL_LOOP_REDO, while169_redo504
  while169_done506:
    pop_eh 
.annotate 'line', 348
    find_lex $P532, "self"
    nqp_decontainerize $P531, $P532
    find_lex $P533, "$start"
    set $N504, $P101
    set $N505, 1
    add $N503, $N504, $N505
    find_lex $P536, "$?PACKAGE"
    get_who $P535, $P536
    set $P534, $P535["$EDGE_EPSILON"]
    unless_null $P534, fallback524
    nqp_get_sc_object $P537, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P534, $P537
  fallback524:
    $P538 = $P531."addedge"($P533, $N503, $P534, 0)
    find_lex $P539, "$to"
    set $N506, $P539
    set $N507, 0
    isgt $I503, $N506, $N507
    unless $I503 goto if173_else525 
.annotate 'line', 350
    find_lex $P541, "self"
    nqp_decontainerize $P540, $P541
    find_lex $P542, "$to"
    find_lex $P545, "$?PACKAGE"
    get_who $P544, $P545
    set $P543, $P544["$EDGE_EPSILON"]
    unless_null $P543, fallback527
    nqp_get_sc_object $P546, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P543, $P546
  fallback527:
    $P547 = $P540."addedge"($P101, $P542, $P543, 0)
    set $P556, $P547
    goto if173_end526
  if173_else525:
.annotate 'line', 351
    find_lex $P549, "self"
    nqp_decontainerize $P548, $P549
    find_lex $P552, "$?PACKAGE"
    get_who $P551, $P552
    set $P550, $P551["$EDGE_FATE"]
    unless_null $P550, fallback528
    nqp_get_sc_object $P553, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P550, $P553
  fallback528:
    find_lex $P554, "$fate"
    $P555 = $P548."addedge"($P101, 0, $P550, $P554)
    set $P556, $P555
  if173_end526:
    .return ($P556) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1346233431.208") :anon :lex :outer("cuid_124_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 334
    .lex "$substate", $P101 
    .lex "$j", $P102 
    .lex "$k", $P103 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P508, $P505, $P507, "$!states"
    find_lex $P509, "$i"
    set $I501, $P509
    set $P504, $P508[$I501]
    unless_null $P504, fallback507
    nqp_get_sc_object $P510, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P510
  fallback507:
    set $P101, $P504
    box $P511, 0
    set $P102, $P511
    elements $I502, $P101
    box $P512, $I502
    set $P103, $P512
    new $P547, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P547, while170_handlers511
    push_eh $P547
  while170_test508:
    set $N501, $P102
    set $N502, $P103
    islt $I503, $N501, $N502
    box $P548, $I503
    set $P546, $P548
    unless $I503 goto while170_done512 
  while170_redo510:
.annotate 'line', 338
    set $N504, $P102
    set $N505, 2
    add $N503, $N504, $N505
    set $I504, $N503
    set $N508, $P102
    set $N509, 2
    add $N507, $N508, $N509
    set $I505, $N507
    set $P513, $P101[$I505]
    unless_null $P513, fallback513
    nqp_get_sc_object $P514, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P513, $P514
  fallback513:
    set $N510, $P513
    find_lex $P515, "$substart"
    set $N511, $P515
    add $N506, $N510, $N511
    box $P516, $N506
    set $P101[$I504], $P516
    set $I507, $P102
    set $P517, $P101[$I507]
    unless_null $P517, fallback516
    nqp_get_sc_object $P518, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P518
  fallback516:
    set $N512, $P517
    find_lex $P521, "$?PACKAGE"
    get_who $P520, $P521
    set $P519, $P520["$EDGE_FATE"]
    unless_null $P519, fallback517
    nqp_get_sc_object $P522, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P519, $P522
  fallback517:
    set $N513, $P519
    iseq $I506, $N512, $N513
    box $P525, $I506
    set $P524, $P525
    unless $I506 goto if171_end515 
    set $N515, $P102
    set $N516, 1
    add $N514, $N515, $N516
    set $I508, $N514
    find_lex $P523, "$fate"
    set $P101[$I508], $P523
    set $P524, $P523
  if171_end515:
    set $I510, $P102
    set $P526, $P101[$I510]
    unless_null $P526, fallback520
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P527
  fallback520:
    set $N517, $P526
    find_lex $P530, "$?PACKAGE"
    get_who $P529, $P530
    set $P528, $P529["$EDGE_SUBRULE"]
    unless_null $P528, fallback521
    nqp_get_sc_object $P531, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P528, $P531
  fallback521:
    set $N518, $P528
    iseq $I509, $N517, $N518
    box $P544, $I509
    set $P543, $P544
    unless $I509 goto if172_end519 
.annotate 'line', 342
    find_lex $P533, "self"
    nqp_decontainerize $P532, $P533
    find_lex $P534, "$i"
    set $N520, $P102
    set $N521, 2
    add $N519, $N520, $N521
    set $I511, $N519
    set $P535, $P101[$I511]
    unless_null $P535, fallback522
    nqp_get_sc_object $P536, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P535, $P536
  fallback522:
    find_lex $P537, "$fate"
    find_lex $P538, "$cursor"
    set $N523, $P102
    set $N524, 1
    add $N522, $N523, $N524
    set $I512, $N522
    set $P539, $P101[$I512]
    unless_null $P539, fallback523
    nqp_get_sc_object $P540, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P539, $P540
  fallback523:
    find_lex $P541, "%seen"
    $P542 = $P532."mergesubrule"($P534, $P535, $P537, $P538, $P539, $P541)
    set $P543, $P542
  if172_end519:
    set $N526, $P102
    set $N527, 3
    add $N525, $N526, $N527
    box $P545, $N525
    set $P102, $P545
    set $P546, $P102
    goto while170_test508 
  while170_handlers511:
    .get_results ($P547)
    pop_upto_eh $P547
    getattribute $P547, $P547, 'type'
    eq $P547, .CONTROL_LOOP_NEXT, while170_test508
    eq $P547, .CONTROL_LOOP_REDO, while170_redo510
  while170_done512:
    pop_eh 
    find_lex $P549, "$i"
    set $N529, $P549
    set $N530, 1
    add $N528, $N529, $N530
    box $P550, $N528
    store_lex "$i", $P550
    .return ($P550) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_24_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 358
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P504, $P502, $P503, "$!states"
    set $S501, _lex_param_1
    set $I501, _lex_param_2
    nqp_nfa_run_protoregex $P501, $P504, $S501, $I501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_25_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    .lex "$bstack", _lex_param_3 
    .lex "$cstack", _lex_param_4 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!states"
    set $S501, _lex_param_1
    set $I501, _lex_param_2
    nqp_nfa_run_alternation $P503, $S501, $I501, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_26_1346233431.208") :anon :lex :outer("cuid_27_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P518 = 'cuid_125_1346233431.208' 
    capture_lex $P518 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 413
    $P503 = _lex_param_1."newIndent"()
    set $P101, $P503
.annotate 'line', 414
    $P504 = "&print"("[")
    box $P505, 0
    set $P102, $P505
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    repr_get_attr_obj $P511, $P509, $P510, "$!states"
    set $P506, $P511
    iter $P508, $P511
    new $P513, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P513, for_handlers531
    push_eh $P513
  for_next532:
    unless $P508, for_done534
    shift $P514, $P508
  for_redo533:
    .const 'Sub' $P512 = 'cuid_125_1346233431.208' 
    capture_lex $P512
    $P506 = $P512($P514)
    goto for_next532
  for_handlers531:
    .get_results ($P513)
    pop_upto_eh $P513
    getattribute $P513, $P513, 'type'
    eq $P513, .CONTROL_LOOP_NEXT, for_next532
    eq $P513, .CONTROL_LOOP_REDO, for_redo533
  for_done534:
    pop_eh 
.annotate 'line', 420
    $P515 = _lex_param_1."deleteIndent"()
.annotate 'line', 421
    $P516 = _lex_param_1."indent"()
    $P517 = "&print"("\n", $P516, "]")
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1346233431.208") :anon :lex :outer("cuid_26_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 416
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 417
    find_lex $P501, "$subindent"
    set $S504, $P501
    concat $S503, "\n", $S504
    concat $S502, $S503, "'%d' => [%s]"
    new $P502, 'ResizablePMCArray'
    find_lex $P503, "$st"
    push $P502, $P503
    join $S505, ", ", _lex_param_0
    box $P504, $S505
    push $P502, $P504
    sprintf $S501, $S502, $P502
    $P505 = "&print"($S501)
    find_lex $P506, "$st"
    set $N502, $P506
    set $N503, 1
    add $N501, $N502, $N503
    box $P507, $N501
    store_lex "$st", $P507
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .const 'Sub' $P545 = 'cuid_28_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_29_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_30_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_31_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_32_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_33_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_34_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_35_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_36_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_37_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_38_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_39_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_40_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_41_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_42_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_43_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_44_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_45_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_46_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_47_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_48_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_49_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_50_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_51_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_52_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_53_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_54_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_55_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_56_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_57_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_58_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_59_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_60_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_61_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_62_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_63_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_64_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_65_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_66_1346233431.208' 
    capture_lex $P545 
    .const 'Sub' $P545 = 'cuid_67_1346233431.208' 
    capture_lex $P545 
    .lex "$NO_CAPS", $P101 
    .lex "$pass_mark", $P102 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    .const 'Sub' $P503 = 'cuid_28_1346233431.208' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_29_1346233431.208' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_30_1346233431.208' 
    capture_lex $P505
    new $P506, 'Hash'
    set $P101, $P506
    .const 'Sub' $P507 = 'cuid_31_1346233431.208' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_32_1346233431.208' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_33_1346233431.208' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_34_1346233431.208' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_35_1346233431.208' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_36_1346233431.208' 
    capture_lex $P512
    box $P513, 1
    set $P102, $P513
    .const 'Sub' $P514 = 'cuid_37_1346233431.208' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_38_1346233431.208' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_39_1346233431.208' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_40_1346233431.208' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_41_1346233431.208' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_42_1346233431.208' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_43_1346233431.208' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_44_1346233431.208' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_45_1346233431.208' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_46_1346233431.208' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_47_1346233431.208' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_48_1346233431.208' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_49_1346233431.208' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_50_1346233431.208' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_51_1346233431.208' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_52_1346233431.208' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_53_1346233431.208' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_54_1346233431.208' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_55_1346233431.208' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_56_1346233431.208' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_57_1346233431.208' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_58_1346233431.208' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_59_1346233431.208' 
    capture_lex $P536
    .const 'Sub' $P537 = 'cuid_60_1346233431.208' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_61_1346233431.208' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_62_1346233431.208' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_63_1346233431.208' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_64_1346233431.208' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_65_1346233431.208' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_66_1346233431.208' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_67_1346233431.208' 
    capture_lex $P544
    .return ($P544) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_28_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 438
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    repr_get_attr_str $S501, $P501, $P502, "$!target"
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_29_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 439
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    repr_get_attr_int $I501, $P501, $P502, "$!from"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_30_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 440
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    repr_get_attr_int $I501, $P501, $P502, "$!pos"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_31_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 443
    .param pmc _lex_param_0 
    .const 'Sub' $P574 = 'cuid_88_1346233431.208' 
    capture_lex $P574 
    .lex "$caps", $P101 
    .lex "%caplist", $P102 
    .lex "$iter", $P103 
    .lex "$curcap", $P104 
    .lex "$subcur", $P105 
    .lex "$submatch", $P106 
    .lex "$name", $P107 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'Hash'
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
    new $P508, 'Hash'
    set $P101, $P508
    find_lex $P509, "$NO_CAPS"
    set $P102, $P509
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_obj $P512, $P510, $P511, "$!regexsub"
    isnull $I502, $P512
    box $P513, $I502
    isfalse $I501, $P513
    box $P518, $I501
    set $P517, $P518
    unless $I501 goto if175_end538 
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_obj $P516, $P514, $P515, "$!regexsub"
    set $P517, $P516
  if175_end538:
    set $P537, $P517
    unless $P517 goto if174_end536 
.annotate 'line', 452
.annotate 'line', 453
    nqp_decontainerize $P519, _lex_param_0
    find_lex $P520, "$?CLASS"
    repr_get_attr_obj $P521, $P519, $P520, "$!regexsub"
    $P522 = $P521."nqpattr"("caps")
    set $P102, $P522
    isnull $I504, $P102
    box $P523, $I504
    isfalse $I503, $P523
    box $P525, $I503
    set $P524, $P525
    unless $I503 goto if177_end542 
    set $P524, $P102
  if177_end542:
    set $P536, $P524
    unless $P524 goto if176_end540 
.annotate 'line', 454
    iter $P526, $P102
    set $P103, $P526
    new $P535, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P535, while178_handlers546
    push_eh $P535
  while178_test543:
    set $P534, $P103
    unless $P103 goto while178_done547 
  while178_redo545:
.annotate 'line', 456
    shift $P527, $P103
    set $S501, $P527
    box $P528, $S501
    set $P104, $P528
    set $S502, $P104
    set $P529, $P102[$S502]
    unless_null $P529, fallback550
    nqp_get_sc_object $P530, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P529, $P530
  fallback550:
    set $N501, $P529
    set $N502, 2
    isge $I505, $N501, $N502
    box $P533, $I505
    set $P532, $P533
    unless $I505 goto if179_end549 
    set $S503, $P104
    new $P531, 'ResizablePMCArray'
    set $P101[$S503], $P531
    set $P532, $P531
  if179_end549:
    set $P534, $P532
    goto while178_test543 
  while178_handlers546:
    .get_results ($P535)
    pop_upto_eh $P535
    getattribute $P535, $P535, 'type'
    eq $P535, .CONTROL_LOOP_NEXT, while178_test543
    eq $P535, .CONTROL_LOOP_REDO, while178_redo545
  while178_done547:
    pop_eh 
    set $P536, $P534
  if176_end540:
    set $P537, $P536
  if174_end536:
    nqp_decontainerize $P538, _lex_param_0
    find_lex $P539, "$?CLASS"
    repr_get_attr_obj $P540, $P538, $P539, "$!cstack"
    isnull $I507, $P540
    box $P541, $I507
    isfalse $I506, $P541
    box $P546, $I506
    set $P545, $P546
    unless $I506 goto if181_end554 
    nqp_decontainerize $P542, _lex_param_0
    find_lex $P543, "$?CLASS"
    repr_get_attr_obj $P544, $P542, $P543, "$!cstack"
    set $P545, $P544
  if181_end554:
    set $P573, $P545
    unless $P545 goto if180_end552 
.annotate 'line', 462
    nqp_decontainerize $P548, _lex_param_0
    find_lex $P549, "$?CLASS"
    repr_get_attr_obj $P550, $P548, $P549, "$!cstack"
    iter $P547, $P550
    set $P103, $P547
    new $P572, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P572, while182_handlers558
    push_eh $P572
  while182_test555:
    set $P571, $P103
    unless $P103 goto while182_done559 
  while182_redo557:
.annotate 'line', 464
    shift $P551, $P103
    set $P105, $P551
.annotate 'line', 466
    $P552 = $P105."MATCH"()
    set $P106, $P552
    find_lex $P554, "$?CLASS"
    getattribute $P553, $P105, $P554, "$!name"
    set $P107, $P553
    isnull $I509, $P107
    box $P555, $I509
    isfalse $I508, $P555
    set $I511, $I508
    unless $I508 goto if184_end563 
    defined $I510, $P107
    set $I511, $I510
  if184_end563:
    box $P570, $I511
    set $P569, $P570
    unless $I511 goto if183_end561 
.annotate 'line', 468
    set $S504, $P107
    index $I513, $S504, "=", 0
    set $N503, $I513
    set $N504, 0
    islt $I512, $N503, $N504
    unless $I512 goto if185_else564 
.annotate 'line', 469
    set $S505, $P107
    set $P556, $P102[$S505]
    unless_null $P556, fallback568
    nqp_get_sc_object $P557, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P556, $P557
  fallback568:
    set $N505, $P556
    set $N506, 2
    isge $I514, $N505, $N506
    unless $I514 goto if186_else566 
    set $S506, $P107
    set $P558, $P101[$S506]
    unless_null $P558, fallback569
    nqp_get_sc_object $P559, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P558, $P559
  fallback569:
    push $P558, $P106
    set $P560, $P558
    goto if186_end567
  if186_else566:
    set $S507, $P107
    set $P101[$S507], $P106
    set $P560, $P106
  if186_end567:
    set $P568, $P560
    goto if185_end565
  if185_else564:
.annotate 'line', 474
    set $S508, $P107
    split $P564, "=", $S508
    set $P561, $P564
    iter $P563, $P564
    new $P566, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P566, for_handlers574
    push_eh $P566
  for_next575:
    unless $P563, for_done577
    shift $P567, $P563
  for_redo576:
    .const 'Sub' $P565 = 'cuid_88_1346233431.208' 
    capture_lex $P565
    $P561 = $P565($P567)
    goto for_next575
  for_handlers574:
    .get_results ($P566)
    pop_upto_eh $P566
    getattribute $P566, $P566, 'type'
    eq $P566, .CONTROL_LOOP_NEXT, for_next575
    eq $P566, .CONTROL_LOOP_REDO, for_redo576
  for_done577:
    pop_eh 
    set $P568, $P561
  if185_end565:
    set $P569, $P568
  if183_end561:
    set $P571, $P569
    goto while182_test555 
  while182_handlers558:
    .get_results ($P572)
    pop_upto_eh $P572
    getattribute $P572, $P572, 'type'
    eq $P572, .CONTROL_LOOP_NEXT, while182_test555
    eq $P572, .CONTROL_LOOP_REDO, while182_redo557
  while182_done559:
    pop_eh 
    set $P573, $P571
  if180_end552:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1346233431.208") :anon :lex :outer("cuid_31_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 475
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P502, "%caplist"
    set $S501, _lex_param_0
    set $P501, $P502[$S501]
    unless_null $P501, fallback572
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P501, $P503
  fallback572:
    set $N501, $P501
    set $N502, 2
    isge $I501, $N501, $N502
    unless $I501 goto if187_else570 
    find_lex $P505, "$caps"
    set $S502, _lex_param_0
    set $P504, $P505[$S502]
    unless_null $P504, fallback573
    nqp_get_sc_object $P506, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P504, $P506
  fallback573:
    find_lex $P507, "$submatch"
    push $P504, $P507
    set $P510, $P504
    goto if187_end571
  if187_else570:
    find_lex $P508, "$caps"
    set $S503, _lex_param_0
    find_lex $P509, "$submatch"
    set $P508[$S503], $P509
    set $P510, $P509
  if187_end571:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_32_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_12, default580
    box $P511, 0
    set _lex_param_2, $P511
  default580:
    if haz_param_13, default581
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P512
  default581:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 488
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."CREATE"()
    set $P101, $P503
    find_lex $P504, "$?CLASS"
    setattribute $P101, $P504, "$!orig", _lex_param_1
    set $S502, _lex_param_1
    find_encoding $I501, "ucs4"
    trans_encoding $S501, $S502, $I501
    box $P505, $S501
    set _lex_param_1, $P505
    find_lex $P506, "$?CLASS"
    set $S503, _lex_param_1
    repr_bind_attr_str $P101, $P506, "$!target", $S503
    defined $I502, _lex_param_3
    unless $I502 goto if188_else578 
.annotate 'line', 492
    find_lex $P507, "$?CLASS"
    repr_bind_attr_int $P101, $P507, "$!from", -1
    find_lex $P508, "$?CLASS"
    set $I503, _lex_param_3
    repr_bind_attr_int $P101, $P508, "$!pos", $I503
    set $I506, $I503
    goto if188_end579
  if188_else578:
.annotate 'line', 496
    find_lex $P509, "$?CLASS"
    set $I504, _lex_param_2
    repr_bind_attr_int $P101, $P509, "$!from", $I504
    find_lex $P510, "$?CLASS"
    set $I505, _lex_param_2
    repr_bind_attr_int $P101, $P510, "$!pos", $I505
    set $I506, $I505
  if188_end579:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_33_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 503
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    find_lex $P504, "$?CLASS"
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P506, "$?CLASS"
    repr_get_attr_obj $P507, $P505, $P506, "$!orig"
    setattribute $P101, $P504, "$!orig", $P507
    find_lex $P508, "$?CLASS"

            $P0 = getinterp
            $P509 = $P0['sub';1]
        
    setattribute $P101, $P508, "$!regexsub", $P509
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_obj $P512, $P510, $P511, "$!restart"
    set $P537, $P512
    unless $P512 goto if189_end583 
.annotate 'line', 510
    find_lex $P513, "$?CLASS"
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I501, $P514, $P515, "$!pos"
    repr_bind_attr_int $P101, $P513, "$!pos", $I501
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_obj $P518, $P516, $P517, "$!cstack"
    set $P524, $P518
    unless $P518 goto if190_end585 
    find_lex $P519, "$?CLASS"
    nqp_decontainerize $P521, _lex_param_0
    find_lex $P522, "$?CLASS"
    repr_get_attr_obj $P523, $P521, $P522, "$!cstack"
    clone $P520, $P523
    setattribute $P101, $P519, "$!cstack", $P520
    set $P524, $P520
  if190_end585:
    find_lex $P525, "$?CLASS"
    nqp_decontainerize $P526, _lex_param_0
    find_lex $P527, "$?CLASS"
    repr_get_attr_str $S501, $P526, $P527, "$!target"
    repr_bind_attr_str $P101, $P525, "$!target", $S501
    find_lex $P528, "$?CLASS"
    nqp_decontainerize $P529, _lex_param_0
    find_lex $P530, "$?CLASS"
    repr_get_attr_int $I502, $P529, $P530, "$!from"
    repr_bind_attr_int $P101, $P528, "$!from", $I502
    find_lex $P531, "$?CLASS"
    find_lex $P532, "$?CLASS"
    nqp_decontainerize $P534, _lex_param_0
    find_lex $P535, "$?CLASS"
    repr_get_attr_obj $P536, $P534, $P535, "$!bstack"
    clone $P533, $P536
    setattribute $P101, $P532, "$!bstack", $P533
    .return ($P101, $S501, $I502, $P531, $P533, 1)
    set $P537, $P101
  if189_end583:
    find_lex $P538, "$?CLASS"
    repr_bind_attr_int $P101, $P538, "$!pos", -3
    find_lex $P539, "$?CLASS"
    nqp_decontainerize $P540, _lex_param_0
    find_lex $P541, "$?CLASS"
    repr_get_attr_str $S502, $P540, $P541, "$!target"
    repr_bind_attr_str $P101, $P539, "$!target", $S502
    find_lex $P542, "$?CLASS"
    nqp_decontainerize $P543, _lex_param_0
    find_lex $P544, "$?CLASS"
    repr_get_attr_int $I503, $P543, $P544, "$!pos"
    repr_bind_attr_int $P101, $P542, "$!from", $I503
    find_lex $P545, "$?CLASS"
    find_lex $P546, "$?CLASS"
    new $P547, "ResizableIntegerArray"
    setattribute $P101, $P546, "$!bstack", $P547
    .return ($P101, $S502, $I503, $P545, $P547, 0)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_34_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 532
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
    find_lex $P504, "$?CLASS"
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P506, "$?CLASS"
    repr_get_attr_obj $P507, $P505, $P506, "$!orig"
    setattribute $P101, $P504, "$!orig", $P507
    find_lex $P508, "$?CLASS"
    nqp_decontainerize $P509, _lex_param_0
    find_lex $P510, "$?CLASS"
    repr_get_attr_str $S501, $P509, $P510, "$!target"
    repr_bind_attr_str $P101, $P508, "$!target", $S501
    find_lex $P511, "$?CLASS"
    set $I501, _lex_param_1
    repr_bind_attr_int $P101, $P511, "$!from", $I501
    find_lex $P512, "$?CLASS"
    repr_bind_attr_int $P101, $P512, "$!pos", -3
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_capture" :subid("cuid_35_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 541
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    .lex "$name", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    null $P503
    repr_bind_attr_obj $P501, $P502, "$!match", $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_obj $P506, $P504, $P505, "$!cstack"
    defined $I501, $P506
    box $P511, $I501
    set $P510, $P511
    if $I501 goto unless191_end587 
    nqp_decontainerize $P507, _lex_param_0
    find_lex $P508, "$?CLASS"
    new $P509, 'ResizablePMCArray'
    repr_bind_attr_obj $P507, $P508, "$!cstack", $P509
    set $P510, $P509
  unless191_end587:
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_obj $P514, $P512, $P513, "$!cstack"
    push $P514, _lex_param_1
    find_lex $P515, "$?CLASS"
    setattribute _lex_param_1, $P515, "$!name", _lex_param_2
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_obj $P518, $P516, $P517, "$!bstack"
    push $P518, 0
    nqp_decontainerize $P519, _lex_param_0
    find_lex $P520, "$?CLASS"
    repr_get_attr_obj $P521, $P519, $P520, "$!bstack"
    nqp_decontainerize $P522, _lex_param_0
    find_lex $P523, "$?CLASS"
    repr_get_attr_int $I502, $P522, $P523, "$!pos"
    push $P521, $I502
    nqp_decontainerize $P524, _lex_param_0
    find_lex $P525, "$?CLASS"
    repr_get_attr_obj $P526, $P524, $P525, "$!bstack"
    push $P526, 0
    nqp_decontainerize $P527, _lex_param_0
    find_lex $P528, "$?CLASS"
    repr_get_attr_obj $P529, $P527, $P528, "$!bstack"
    nqp_decontainerize $P530, _lex_param_0
    find_lex $P531, "$?CLASS"
    repr_get_attr_obj $P532, $P530, $P531, "$!cstack"
    elements $I503, $P532
    push $P529, $I503
    nqp_decontainerize $P533, _lex_param_0
    find_lex $P534, "$?CLASS"
    repr_get_attr_obj $P535, $P533, $P534, "$!cstack"
    .return ($P535) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_push_cstack" :subid("cuid_36_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 553
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    repr_get_attr_obj $P503, $P501, $P502, "$!cstack"
    defined $I501, $P503
    box $P508, $I501
    set $P507, $P508
    if $I501 goto unless192_end589 
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    new $P506, 'ResizablePMCArray'
    repr_bind_attr_obj $P504, $P505, "$!cstack", $P506
    set $P507, $P506
  unless192_end589:
    nqp_decontainerize $P509, _lex_param_0
    find_lex $P510, "$?CLASS"
    repr_get_attr_obj $P511, $P509, $P510, "$!cstack"
    push $P511, _lex_param_1
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_obj $P514, $P512, $P513, "$!cstack"
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pass" :subid("cuid_37_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default596
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_2, $P519
  default596:
    if haz_param_15, default597
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P520
  default597:
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$backtrack", _lex_param_3 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    find_lex $P503, "$pass_mark"
    repr_bind_attr_obj $P501, $P502, "$!match", $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    set $I501, _lex_param_1
    repr_bind_attr_int $P504, $P505, "$!pos", $I501
    set $P511, _lex_param_3
    unless _lex_param_3 goto if193_end591 
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_obj $P510, $P508, $P509, "$!regexsub"
    repr_bind_attr_obj $P506, $P507, "$!restart", $P510
    set $P511, $P510
  if193_end591:
    set $P515, _lex_param_3
    if _lex_param_3 goto unless194_end593 
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    null $P514
    repr_bind_attr_obj $P512, $P513, "$!bstack", $P514
    set $P515, $P514
  unless194_end593:
    set $P518, _lex_param_2
    unless _lex_param_2 goto if195_end595 
.annotate 'line', 567
    nqp_decontainerize $P516, _lex_param_0
    $P517 = $P516."!reduce"(_lex_param_2)
    set $P518, $P517
  if195_end595:
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_38_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    null $P503
    repr_bind_attr_obj $P501, $P502, "$!match", $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    null $P506
    repr_bind_attr_obj $P504, $P505, "$!bstack", $P506
    nqp_decontainerize $P507, _lex_param_0
    find_lex $P508, "$?CLASS"
    repr_bind_attr_int $P507, $P508, "$!pos", -3
    .return (-3) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_next" :subid("cuid_39_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 576
    .param pmc _lex_param_0 
    .const 'Sub' $P512 = 'cuid_89_1346233431.208' 
    capture_lex $P512 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    find_lex $P502, "$?CLASS"
    repr_get_attr_obj $P503, $P501, $P502, "$!restart"
    unless $P503 goto if196_else598 
.annotate 'line', 577
.annotate 'line', 578
    nqp_decontainerize $P507, _lex_param_0
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_obj $P506, $P504, $P505, "$!restart"
    $P508 = $P506($P507)
    set $P511, $P508
    goto if196_end599
  if196_else598:
    .const 'Sub' $P509 = 'cuid_89_1346233431.208' 
    capture_lex $P509
    $P510 = $P509()
    set $P511, $P510
  if196_end599:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1346233431.208") :anon :lex :outer("cuid_39_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 580
    .lex "$cur", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 581
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    $P504 = $P502."!cursor_start"()
    set $P101, $P504
.annotate 'line', 582
    $P505 = $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_40_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_600
    .lex "RETURN", $P102
    set $P502, _lex_param_1["ex"]
    unless_null $P502, fallback604
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P503
  fallback604:
    set $P508, $P502
    unless $P502 goto if197_end603 
.annotate 'line', 588
    nqp_decontainerize $P505, _lex_param_0
    $P506 = $P505."!cursor_next"()
    find_lex $P504, "RETURN"
    $P507 = $P504($P506)
    set $P508, $P507
  if197_end603:
.annotate 'line', 589
    nqp_decontainerize $P509, _lex_param_0
    $P510 = $P509."CREATE"()
    set $P101, $P510
    find_lex $P511, "$?CLASS"
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_obj $P514, $P512, $P513, "$!orig"
    setattribute $P101, $P511, "$!orig", $P514
    find_lex $P515, "$?CLASS"
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_str $S501, $P516, $P517, "$!target"
    repr_bind_attr_str $P101, $P515, "$!target", $S501
    find_lex $P518, "$?CLASS"
    repr_bind_attr_int $P101, $P518, "$!from", -1
    find_lex $P519, "$?CLASS"
    set $P520, _lex_param_1["ov"]
    unless_null $P520, fallback609
    nqp_get_sc_object $P521, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P520, $P521
  fallback609:
    set $P526, $P520
    if $P520 goto unless199_end608 
    nqp_decontainerize $P522, _lex_param_0
    find_lex $P523, "$?CLASS"
    repr_get_attr_int $I502, $P522, $P523, "$!from"
    set $N501, $I502
    nqp_decontainerize $P524, _lex_param_0
    find_lex $P525, "$?CLASS"
    repr_get_attr_int $I503, $P524, $P525, "$!pos"
    set $N502, $I503
    isge $I501, $N501, $N502
    box $P527, $I501
    set $P526, $P527
  unless199_end608:
    unless $P526 goto if198_else605 
    nqp_decontainerize $P528, _lex_param_0
    find_lex $P529, "$?CLASS"
    repr_get_attr_int $I504, $P528, $P529, "$!from"
    set $N504, $I504
    set $N505, 1
    add $N503, $N504, $N505
    box $P533, $N503
    set $P532, $P533
    goto if198_end606
  if198_else605:
    nqp_decontainerize $P530, _lex_param_0
    find_lex $P531, "$?CLASS"
    repr_get_attr_int $I505, $P530, $P531, "$!pos"
    box $P534, $I505
    set $P532, $P534
  if198_end606:
    set $I506, $P532
    repr_bind_attr_int $P101, $P519, "$!pos", $I506
.annotate 'line', 595
    nqp_decontainerize $P535, _lex_param_0
    find_lex $P536, "$?CLASS"
    repr_get_attr_obj $P537, $P535, $P536, "$!regexsub"
    $P538 = $P537($P101)
    goto lexotic_601
  lexotic_600:
    .get_results ($P538)
  lexotic_601:
    .return ($P538) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_41_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 598
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_dynamic_lex $P502, "$*ACTIONS"
    set $P101, $P502
    isnull $I502, $P101
    box $P503, $I502
    isfalse $I501, $P503
    set $I504, $I501
    unless $I501 goto if201_end613 
    set $S501, _lex_param_1
    can $I503, $P101, $S501
    set $I504, $I503
  if201_end613:
    box $P509, $I504
    set $P508, $P509
    unless $I504 goto if200_end611 
.annotate 'line', 600
    nqp_decontainerize $P505, _lex_param_0
    $P506 = $P505."MATCH"()
    set $S502, _lex_param_1
    find_method $P504, $P101, $S502
    $P507 = $P504($P101, $P506)
    set $P508, $P507
  if200_end611:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_42_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 604
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_dynamic_lex $P502, "$*ACTIONS"
    set $P101, $P502
    isnull $I502, $P101
    box $P503, $I502
    isfalse $I501, $P503
    set $I504, $I501
    unless $I501 goto if203_end617 
    set $S501, _lex_param_1
    can $I503, $P101, $S501
    set $I504, $I503
  if203_end617:
    box $P507, $I504
    set $P506, $P507
    unless $I504 goto if202_end615 
.annotate 'line', 606
    set $S502, _lex_param_1
    find_method $P504, $P101, $S502
    $P505 = $P504($P101, _lex_param_3, _lex_param_2)
    set $P506, $P505
  if202_end615:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_43_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 610
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P530 = 'cuid_90_1346233431.208' 
    capture_lex $P530 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
.annotate 'line', 612
    nqp_decontainerize $P507, _lex_param_0
    get_how $P506, $P507
    nqp_decontainerize $P508, _lex_param_0
    .const 'Sub' $P510 = 'cuid_90_1346233431.208' 
    capture_lex $P510
    newclosure $P509, $P510
    $P511 = $P506."cache"($P508, _lex_param_1, $P509)
    set $P101, $P511
.annotate 'line', 613
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_str $S501, $P512, $P513, "$!target"
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I501, $P514, $P515, "$!pos"
    $P516 = $P101."run"($S501, $I501)
    set $P102, $P516
.annotate 'line', 616
    $P518 = $P101."states"()
    set $P517, $P518[0]
    unless_null $P517, fallback618
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P517, $P519
  fallback618:
    set $P103, $P517
    new $P525, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P525, while204_handlers622
    push_eh $P525
  while204_test619:
    set $P524, $P102
    unless $P102 goto while204_done623 
  while204_redo621:
.annotate 'line', 619
    pop $I502, $P102
    set $P520, $P103[$I502]
    set $P105, $P520
.annotate 'line', 622
    nqp_decontainerize $P521, _lex_param_0
    set $S502, $P105
    $P522 = $P521.$S502()
    set $P104, $P522
    find_lex $P523, "$?CLASS"
    repr_get_attr_int $I504, $P104, $P523, "$!pos"
    set $N501, $I504
    set $N502, 0
    isge $I503, $N501, $N502
    set $I505, $I503
    unless $I503 goto if205_end625 
    die 0, .CONTROL_LOOP_LAST
    set $I505, 0
  if205_end625:
    box $P526, $I505
    set $P524, $P526
    goto while204_test619 
  while204_handlers622:
    .get_results ($P525)
    pop_upto_eh $P525
    getattribute $P525, $P525, 'type'
    eq $P525, .CONTROL_LOOP_NEXT, while204_test619
    eq $P525, .CONTROL_LOOP_REDO, while204_redo621
  while204_done623:
    pop_eh 
    set $P527, $P104
    defined $I506, $P527
    if $I506, defor626
.annotate 'line', 625
    nqp_decontainerize $P528, _lex_param_0
    $P529 = $P528."!cursor_start"()
    set $P527, $P529
  defor626:
    .return ($P527) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1346233431.208") :anon :lex :outer("cuid_43_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 612

    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    find_lex $P503, "$name"
    $P504 = $P501."!protoregex_nfa"($P503)
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_44_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 628
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P533 = 'cuid_91_1346233431.208' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_92_1346233431.208' 
    capture_lex $P533 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $P104 
    .lex "$fate", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P105, $P505
.annotate 'line', 629
    nqp_decontainerize $P507, _lex_param_0
    get_how $P506, $P507
    nqp_decontainerize $P508, _lex_param_0
    .const 'Sub' $P510 = 'cuid_91_1346233431.208' 
    capture_lex $P510
    newclosure $P509, $P510
    $P511 = $P506."cache"($P508, "!protoregex_table", $P509)
    set $P101, $P511
.annotate 'line', 630
    get_hll_global $P515, "GLOBAL"
    nqp_get_package_through_who $P514, $P515, "QRegex"
    get_who $P513, $P514
    set $P512, $P513["NFA"]
    unless_null $P512, fallback627
    nqp_get_sc_object $P516, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P512, $P516
  fallback627:
    $P517 = $P512."new"()
    set $P102, $P517
.annotate 'line', 631
    $P519 = $P102."states"()
    set $P518, $P519[0]
    unless_null $P518, fallback628
    nqp_get_sc_object $P520, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P518, $P520
  fallback628:
    set $P103, $P518
    box $P521, 1
    set $P104, $P521
    box $P522, 0
    set $P105, $P522
    set $S501, _lex_param_1
    exists $I501, $P101[$S501]
    box $P532, $I501
    set $P531, $P532
    unless $I501 goto if206_end630 
.annotate 'line', 634
    set $S502, _lex_param_1
    set $P526, $P101[$S502]
    unless_null $P526, fallback631
    nqp_get_sc_object $P527, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P526, $P527
  fallback631:
    set $P523, $P526
    iter $P525, $P526
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, for_handlers632
    push_eh $P529
  for_next633:
    unless $P525, for_done635
    shift $P530, $P525
  for_redo634:
    .const 'Sub' $P528 = 'cuid_92_1346233431.208' 
    capture_lex $P528
    $P523 = $P528($P530)
    goto for_next633
  for_handlers632:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, for_next633
    eq $P529, .CONTROL_LOOP_REDO, for_redo634
  for_done635:
    pop_eh 
    set $P531, $P523
  if206_end630:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1346233431.208") :anon :lex :outer("cuid_44_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 629

    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    $P503 = $P501."!protoregex_table"()
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1346233431.208") :anon :lex :outer("cuid_44_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 635
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    find_lex $P501, "$fate"
    set $N502, $P501
    set $N503, 1
    add $N501, $N502, $N503
    box $P502, $N501
    store_lex "$fate", $P502
    find_lex $P503, "@fates"
    find_lex $P504, "$fate"
    set $I501, $P504
    set $P503[$I501], _lex_param_0
.annotate 'line', 638
    find_lex $P505, "$nfa"
    find_lex $P506, "$start"
    find_lex $P507, "$fate"
    find_lex $P509, "self"
    nqp_decontainerize $P508, $P509
    $P510 = $P505."mergesubrule"($P506, 0, $P507, $P508, _lex_param_0)
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_table" :subid("cuid_45_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .const 'Sub' $P512 = 'cuid_94_1346233431.208' 
    capture_lex $P512 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 646
    nqp_decontainerize $P506, _lex_param_0
    get_how $P505, $P506
    nqp_decontainerize $P507, _lex_param_0
    $P508 = $P505."methods"($P507)
    set $P502, $P508
    iter $P504, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers641
    push_eh $P510
  for_next642:
    unless $P504, for_done644
    shift $P511, $P504
  for_redo643:
    .const 'Sub' $P509 = 'cuid_94_1346233431.208' 
    capture_lex $P509
    $P502 = $P509($P511)
    goto for_next642
  for_handlers641:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next642
    eq $P510, .CONTROL_LOOP_REDO, for_redo643
  for_done644:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1346233431.208") :anon :lex :outer("cuid_45_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_93_1346233431.208' 
    capture_lex $P509 
    .lex "$methname", $P101 
    .lex "$sympos", $P102 
    .lex "$meth", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    set $S501, _lex_param_0
    box $P503, $S501
    set $P101, $P503
    set $S502, $P101
    index $I501, $S502, ":sym<", 0
    box $P504, $I501
    set $P102, $P504
    set $N501, $P102
    set $N502, 0
    isgt $I502, $N501, $N502
    box $P508, $I502
    set $P507, $P508
    unless $I502 goto if207_end637 
    .const 'Sub' $P505 = 'cuid_93_1346233431.208' 
    capture_lex $P505
    $P506 = $P505()
    set $P507, $P506
  if207_end637:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1346233431.208") :anon :lex :outer("cuid_94_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 649
    .lex "$prefix", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$methname"
    set $S502, $P502
    find_lex $P503, "$sympos"
    set $I501, $P503
    substr $S501, $S502, 0, $I501
    box $P504, $S501
    set $P101, $P504
    find_lex $P505, "%protorx"
    set $S503, $P101
    exists $I502, $P505[$S503]
    box $P509, $I502
    set $P508, $P509
    if $I502 goto unless208_end639 
    find_lex $P506, "%protorx"
    set $S504, $P101
    new $P507, 'ResizablePMCArray'
    set $P506[$S504], $P507
    set $P508, $P507
  unless208_end639:
    find_lex $P511, "%protorx"
    set $S505, $P101
    set $P510, $P511[$S505]
    unless_null $P510, fallback640
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P510, $P512
  fallback640:
    find_lex $P513, "$methname"
    push $P510, $P513
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_46_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 658
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P518 = 'cuid_95_1346233431.208' 
    capture_lex $P518 
    if haz_param_16, default645
    new $P517, 'ResizablePMCArray'
    set _lex_param_3, $P517
  default645:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 659
    nqp_decontainerize $P503, _lex_param_0
    get_how $P502, $P503
    nqp_decontainerize $P504, _lex_param_0
    .const 'Sub' $P506 = 'cuid_95_1346233431.208' 
    capture_lex $P506
    newclosure $P505, $P506
    $P507 = $P502."cache"($P504, _lex_param_2, $P505)
    set $P101, $P507
.annotate 'line', 660
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S501, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_obj $P512, $P510, $P511, "$!bstack"
    nqp_decontainerize $P513, _lex_param_0
    find_lex $P514, "$?CLASS"
    repr_get_attr_obj $P515, $P513, $P514, "$!cstack"
    $P516 = $P101."run_alt"($S501, _lex_param_1, $P512, $P515)
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1346233431.208") :anon :lex :outer("cuid_46_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 659

    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    find_lex $P503, "$name"
    find_lex $P504, "@labels"
    $P505 = $P501."!alt_nfa"($P503, $P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_47_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 663
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P526 = 'cuid_96_1346233431.208' 
    capture_lex $P526 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $P103 
    .lex "$fate", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_get_sc_object $P503, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P103, $P503
    nqp_get_sc_object $P504, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P104, $P504
.annotate 'line', 664
    get_hll_global $P508, "GLOBAL"
    nqp_get_package_through_who $P507, $P508, "QRegex"
    get_who $P506, $P507
    set $P505, $P506["NFA"]
    unless_null $P505, fallback646
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P505, $P509
  fallback646:
    $P510 = $P505."new"()
    set $P101, $P510
.annotate 'line', 665
    $P512 = $P101."states"()
    set $P511, $P512[0]
    unless_null $P511, fallback647
    nqp_get_sc_object $P513, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P511, $P513
  fallback647:
    set $P102, $P511
    box $P514, 1
    set $P103, $P514
    box $P515, 0
    set $P104, $P515
.annotate 'line', 668
    nqp_decontainerize $P519, _lex_param_0
    find_lex $P520, "$?CLASS"
    repr_get_attr_obj $P521, $P519, $P520, "$!regexsub"
    $P522 = $P521."nqpattr"(_lex_param_1)
    set $P516, $P522
    iter $P518, $P522
    new $P524, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P524, for_handlers649
    push_eh $P524
  for_next650:
    unless $P518, for_done652
    shift $P525, $P518
  for_redo651:
    .const 'Sub' $P523 = 'cuid_96_1346233431.208' 
    capture_lex $P523
    $P516 = $P523($P525)
    goto for_next650
  for_handlers649:
    .get_results ($P524)
    pop_upto_eh $P524
    getattribute $P524, $P524, 'type'
    eq $P524, .CONTROL_LOOP_NEXT, for_next650
    eq $P524, .CONTROL_LOOP_REDO, for_redo651
  for_done652:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1346233431.208") :anon :lex :outer("cuid_47_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 668
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P503, "@labels"
    find_lex $P504, "$fate"
    set $I501, $P504
    set $P502, $P503[$I501]
    unless_null $P502, fallback648
    nqp_get_sc_object $P505, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P502, $P505
  fallback648:
    set $P101, $P502
    find_lex $P506, "$fate"
    set $N502, $P506
    set $N503, 1
    add $N501, $N502, $N503
    box $P507, $N501
    store_lex "$fate", $P507
    find_lex $P508, "@fates"
    find_lex $P509, "$fate"
    set $I502, $P509
    set $P508[$I502], $P101
.annotate 'line', 672
    find_lex $P510, "$nfa"
    find_lex $P511, "$start"
    find_lex $P512, "$fate"
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    $P515 = $P510."mergesubstates"($P511, 0, $P512, _lex_param_0, $P513)
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_48_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 677
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P535 = 'cuid_97_1346233431.208' 
    capture_lex $P535 
    .lex "$cur", $P101 
    .lex "$n", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 678
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."!cursor_start"()
    set $P101, $P504
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P506, "$?CLASS"
    repr_get_attr_obj $P507, $P505, $P506, "$!cstack"
    unless $P507 goto if209_else653 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_obj $P510, $P508, $P509, "$!cstack"
    elements $I501, $P510
    set $N502, $I501
    set $N503, 1
    sub $N501, $N502, $N503
    box $P512, $N501
    set $P511, $P512
    goto if209_end654
  if209_else653:
    box $P513, -1
    set $P511, $P513
  if209_end654:
    set $P102, $P511
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, while210_handlers658
    push_eh $P529
  while210_test655:
    set $N504, $P102
    set $N505, 0
    isge $I502, $N504, $N505
    set $I508, $I502
    unless $I502 goto if211_end661 
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_obj $P518, $P516, $P517, "$!cstack"
    set $I504, $P102
    set $P515, $P518[$I504]
    unless_null $P515, fallback664
    nqp_get_sc_object $P519, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P515, $P519
  fallback664:
    find_lex $P520, "$?CLASS"
    getattribute $P514, $P515, $P520, "$!name"
    isnull $I503, $P514
    set $I507, $I503
    if $I503 goto unless212_end663 
    nqp_decontainerize $P523, _lex_param_0
    find_lex $P524, "$?CLASS"
    repr_get_attr_obj $P525, $P523, $P524, "$!cstack"
    set $I506, $P102
    set $P522, $P525[$I506]
    unless_null $P522, fallback665
    nqp_get_sc_object $P526, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P522, $P526
  fallback665:
    find_lex $P527, "$?CLASS"
    getattribute $P521, $P522, $P527, "$!name"
    set $S501, $P521
    set $S502, _lex_param_1
    isne $I505, $S501, $S502
    set $I507, $I505
  unless212_end663:
    set $I508, $I507
  if211_end661:
    box $P530, $I508
    set $P528, $P530
    unless $I508 goto while210_done659 
  while210_redo657:
    set tmp_2, $P102
    set $N507, tmp_2
    set $N508, 1
    sub $N506, $N507, $N508
    box $P528, $N506
    set $P102, $P528
    set $P528, tmp_2
    goto while210_test655 
  while210_handlers658:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, while210_test655
    eq $P529, .CONTROL_LOOP_REDO, while210_redo657
  while210_done659:
    pop_eh 
    set $N506, $P102
    set $N507, 0
    isge $I509, $N506, $N507
    box $P534, $I509
    set $P533, $P534
    unless $I509 goto if213_end667 
    .const 'Sub' $P531 = 'cuid_97_1346233431.208' 
    capture_lex $P531
    $P532 = $P531()
    set $P533, $P532
  if213_end667:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1346233431.208") :anon :lex :outer("cuid_48_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 682
    .lex "$subcur", $P101 
    .lex "$litlen", $P102 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    find_lex $P506, "$?CLASS"
    repr_get_attr_obj $P507, $P504, $P506, "$!cstack"
    find_lex $P508, "$n"
    set $I501, $P508
    set $P503, $P507[$I501]
    unless_null $P503, fallback668
    nqp_get_sc_object $P509, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P503, $P509
  fallback668:
    set $P101, $P503
.annotate 'line', 684
    $P510 = $P101."pos"()
    set $N502, $P510
    $P511 = $P101."from"()
    set $N503, $P511
    sub $N501, $N502, $N503
    box $P512, $N501
    set $P102, $P512
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    find_lex $P515, "$?CLASS"
    repr_get_attr_str $S502, $P513, $P515, "$!target"
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    find_lex $P518, "$?CLASS"
    repr_get_attr_int $I503, $P516, $P518, "$!pos"
    set $I504, $P102
    substr $S501, $S502, $I503, $I504
    find_lex $P520, "self"
    nqp_decontainerize $P519, $P520
    find_lex $P521, "$?CLASS"
    repr_get_attr_str $S504, $P519, $P521, "$!target"
.annotate 'line', 687
    $P522 = $P101."from"()
    set $I505, $P522
    set $I506, $P102
    substr $S503, $S504, $I505, $I506
    iseq $I502, $S501, $S503
    box $P529, $I502
    set $P528, $P529
    unless $I502 goto if214_end670 
.annotate 'line', 685
    find_lex $P523, "$cur"
    find_lex $P525, "self"
    nqp_decontainerize $P524, $P525
    find_lex $P526, "$?CLASS"
    repr_get_attr_int $I507, $P524, $P526, "$!pos"
    set $N505, $I507
    set $N506, $P102
    add $N504, $N505, $N506
    $P527 = $P523."!cursor_pass"($N504, "")
    set $P528, $P527
  if214_end670:
    .return ($P528) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_49_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 692
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default677
    box $P519, 0
    set _lex_param_2, $P519
  default677:
    .lex "$cur", $P101 
    .lex "$litlen", $P102 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
.annotate 'line', 693
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."!cursor_start"()
    set $P101, $P504
    set $S501, _lex_param_1
    length $I501, $S501
    box $P505, $I501
    set $P102, $P505
    set $N501, $P102
    set $N502, 1
    islt $I502, $N501, $N502
    set $I510, $I502
    if $I502 goto unless216_end674 
    unless _lex_param_2 goto if217_else675 
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S504, $P506, $P507, "$!target"
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_int $I504, $P508, $P509, "$!pos"
    set $I505, $P102
    substr $S503, $S504, $I504, $I505
    downcase $S502, $S503
    set $S506, _lex_param_1
    downcase $S505, $S506
    iseq $I503, $S502, $S505
    set $I509, $I503
    goto if217_end676
  if217_else675:
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_str $S508, $P510, $P511, "$!target"
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $I508, $P102
    substr $S507, $S508, $I507, $I508
    set $S509, _lex_param_1
    iseq $I506, $S507, $S509
    set $I509, $I506
  if217_end676:
    set $I510, $I509
  unless216_end674:
    box $P518, $I510
    set $P517, $P518
    unless $I510 goto if215_end672 
.annotate 'line', 695
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I511, $P514, $P515, "$!pos"
    set $N504, $I511
    set $N505, $P102
    add $N503, $N504, $N505
    $P516 = $P101."!cursor_pass"($N503)
    set $P517, $P516
  if215_end672:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_50_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 702
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 703
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    set $N501, _lex_param_1
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N502, $I502
    iseq $I501, $N501, $N502
    box $P510, $I501
    set $P509, $P510
    unless $I501 goto if218_end679 
.annotate 'line', 704
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_int $I503, $P506, $P507, "$!pos"
    $P508 = $P101."!cursor_pass"($I503)
    set $P509, $P508
  if218_end679:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_51_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 708
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 709
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    find_lex $P504, "$?CLASS"
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P506, "$?CLASS"
    repr_get_attr_int $I501, $P505, $P506, "$!pos"
    repr_bind_attr_int $P101, $P504, "$!pos", $I501
.annotate 'line', 711
    $P507 = _lex_param_1($P101)
    find_lex $P508, "$?CLASS"
    repr_get_attr_int $I503, $P507, $P508, "$!pos"
    set $N501, $I503
    set $N502, 0
    isge $I502, $N501, $N502
    unless $I502 goto if219_else680 
.annotate 'line', 712
    nqp_decontainerize $P509, _lex_param_0
    find_lex $P510, "$?CLASS"
    repr_get_attr_int $I504, $P509, $P510, "$!pos"
    $P511 = $P101."!cursor_pass"($I504, "before")
    set $P513, $P511
    goto if219_end681
  if219_else680:
    find_lex $P512, "$?CLASS"
    repr_bind_attr_int $P101, $P512, "$!pos", -3
    box $P514, -3
    set $P513, $P514
  if219_end681:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_52_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 720
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    find_lex $P504, "$?CLASS"
.annotate 'line', 721
    nqp_decontainerize $P505, _lex_param_0
    find_lex $P506, "$?CLASS"
    repr_get_attr_str $S501, $P505, $P506, "$!target"
    box $P507, $S501
    $P508 = $P507."reverse"()
    set $S502, $P508
    repr_bind_attr_str $P101, $P504, "$!target", $S502
    find_lex $P509, "$?CLASS"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_str $S503, $P510, $P511, "$!target"
    length $I501, $S503
    set $N502, $I501
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I502, $P512, $P513, "$!pos"
    set $N503, $I502
    sub $N501, $N502, $N503
    set $I503, $N501
    repr_bind_attr_int $P101, $P509, "$!from", $I503
    find_lex $P514, "$?CLASS"
    nqp_decontainerize $P515, _lex_param_0
    find_lex $P516, "$?CLASS"
    repr_get_attr_str $S504, $P515, $P516, "$!target"
    length $I504, $S504
    set $N505, $I504
    nqp_decontainerize $P517, _lex_param_0
    find_lex $P518, "$?CLASS"
    repr_get_attr_int $I505, $P517, $P518, "$!pos"
    set $N506, $I505
    sub $N504, $N505, $N506
    set $I506, $N504
    repr_bind_attr_int $P101, $P514, "$!pos", $I506
.annotate 'line', 724
    $P519 = _lex_param_1($P101)
    find_lex $P520, "$?CLASS"
    repr_get_attr_int $I508, $P519, $P520, "$!pos"
    set $N507, $I508
    set $N508, 0
    isge $I507, $N507, $N508
    unless $I507 goto if220_else682 
.annotate 'line', 725
    nqp_decontainerize $P521, _lex_param_0
    find_lex $P522, "$?CLASS"
    repr_get_attr_int $I509, $P521, $P522, "$!pos"
    $P523 = $P101."!cursor_pass"($I509, "after")
    set $P525, $P523
    goto if220_end683
  if220_else682:
    find_lex $P524, "$?CLASS"
    repr_bind_attr_int $P101, $P524, "$!pos", -3
    box $P526, -3
    set $P525, $P526
  if220_end683:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_53_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 730
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 732
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    isge $I501, $N501, $N502
    unless $I501 goto if221_else684 
.annotate 'line', 734
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_int $I504, $P508, $P509, "$!pos"
    $P510 = $P101."!cursor_pass"($I504, "ws")
    set $P532, $P510
    goto if221_end685
  if221_else684:
    nqp_decontainerize $P511, _lex_param_0
    find_lex $P512, "$?CLASS"
    repr_get_attr_int $I506, $P511, $P512, "$!pos"
    set $N503, $I506
    set $N504, 1
    islt $I505, $N503, $N504
    set $I510, $I505
    if $I505 goto unless224_end691 
    nqp_decontainerize $P513, _lex_param_0
    find_lex $P514, "$?CLASS"
    repr_get_attr_str $S502, $P513, $P514, "$!target"
    nqp_decontainerize $P515, _lex_param_0
    find_lex $P516, "$?CLASS"
    repr_get_attr_int $I509, $P515, $P516, "$!pos"
    is_cclass $I508, .CCLASS_WORD, $S502, $I509
    box $P517, $I508
    isfalse $I507, $P517
    set $I510, $I507
  unless224_end691:
    set $I515, $I510
    if $I510 goto unless223_end689 
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P519, "$?CLASS"
    repr_get_attr_str $S503, $P518, $P519, "$!target"
    nqp_decontainerize $P520, _lex_param_0
    find_lex $P521, "$?CLASS"
    repr_get_attr_int $I513, $P520, $P521, "$!pos"
    set $N506, $I513
    set $N507, 1
    sub $N505, $N506, $N507
    set $I514, $N505
    is_cclass $I512, .CCLASS_WORD, $S503, $I514
    box $P522, $I512
    isfalse $I511, $P522
    set $I515, $I511
  unless223_end689:
    box $P531, $I515
    set $P530, $P531
    unless $I515 goto if222_end687 
.annotate 'line', 738
    nqp_decontainerize $P523, _lex_param_0
    find_lex $P524, "$?CLASS"
    repr_get_attr_str $S504, $P523, $P524, "$!target"
    nqp_decontainerize $P525, _lex_param_0
    find_lex $P526, "$?CLASS"
    repr_get_attr_int $I517, $P525, $P526, "$!pos"
    nqp_decontainerize $P527, _lex_param_0
    find_lex $P528, "$?CLASS"
    repr_get_attr_str $S505, $P527, $P528, "$!target"
    length $I518, $S505
    find_not_cclass $I516, .CCLASS_WHITESPACE, $S504, $I517, $I518
    $P529 = $P101."!cursor_pass"($I516, "ws")
    set $P530, $P529
  if222_end687:
    set $P532, $P530
  if221_end685:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_54_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 745
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 746
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    set $N502, 0
    isgt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if228_end699 
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_int $I504, $P506, $P507, "$!pos"
    set $N503, $I504
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S501, $P508, $P509, "$!target"
    length $I505, $S501
    set $N504, $I505
    isne $I503, $N503, $N504
    set $I506, $I503
  if228_end699:
    set $I509, $I506
    unless $I506 goto if227_end697 
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_str $S502, $P510, $P511, "$!target"
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I508, $P512, $P513, "$!pos"
    is_cclass $I507, .CCLASS_WORD, $S502, $I508
    set $I509, $I507
  if227_end697:
    set $I513, $I509
    unless $I509 goto if226_end695 
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_str $S503, $P514, $P515, "$!target"
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_int $I511, $P516, $P517, "$!pos"
    set $N506, $I511
    set $N507, 1
    sub $N505, $N506, $N507
    set $I512, $N505
    is_cclass $I510, .CCLASS_WORD, $S503, $I512
    set $I513, $I510
  if226_end695:
    box $P522, $I513
    set $P521, $P522
    unless $I513 goto if225_end693 
.annotate 'line', 747
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P519, "$?CLASS"
    repr_get_attr_int $I514, $P518, $P519, "$!pos"
    $P520 = $P101."!cursor_pass"($I514, "ww")
    set $P521, $P520
  if225_end693:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_55_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 755
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 756
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    set $N502, 0
    iseq $I501, $N501, $N502
    set $I505, $I501
    unless $I501 goto if232_end707 
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_int $I504, $P508, $P509, "$!pos"
    is_cclass $I503, .CCLASS_WORD, $S501, $I504
    set $I505, $I503
  if232_end707:
    set $I513, $I505
    if $I505 goto unless231_end705 
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I507, $P510, $P511, "$!pos"
    set $N503, $I507
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_str $S502, $P512, $P513, "$!target"
    length $I508, $S502
    set $N504, $I508
    iseq $I506, $N503, $N504
    set $I512, $I506
    unless $I506 goto if233_end709 
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_str $S503, $P514, $P515, "$!target"
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_int $I510, $P516, $P517, "$!pos"
    set $N506, $I510
    set $N507, 1
    sub $N505, $N506, $N507
    set $I511, $N505
    is_cclass $I509, .CCLASS_WORD, $S503, $I511
    set $I512, $I509
  if233_end709:
    set $I513, $I512
  unless231_end705:
    set $I520, $I513
    if $I513 goto unless230_end703 
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P519, "$?CLASS"
    repr_get_attr_str $S504, $P518, $P519, "$!target"
    nqp_decontainerize $P520, _lex_param_0
    find_lex $P521, "$?CLASS"
    repr_get_attr_int $I516, $P520, $P521, "$!pos"
    set $N509, $I516
    set $N510, 1
    sub $N508, $N509, $N510
    set $I517, $N508
    is_cclass $I515, .CCLASS_WORD, $S504, $I517
    set $N511, $I515
    nqp_decontainerize $P522, _lex_param_0
    find_lex $P523, "$?CLASS"
    repr_get_attr_str $S505, $P522, $P523, "$!target"
    nqp_decontainerize $P524, _lex_param_0
    find_lex $P525, "$?CLASS"
    repr_get_attr_int $I519, $P524, $P525, "$!pos"
    is_cclass $I518, .CCLASS_WORD, $S505, $I519
    set $N512, $I518
    isne $I514, $N511, $N512
    set $I520, $I514
  unless230_end703:
    box $P530, $I520
    set $P529, $P530
    unless $I520 goto if229_end701 
.annotate 'line', 757
    nqp_decontainerize $P526, _lex_param_0
    find_lex $P527, "$?CLASS"
    repr_get_attr_int $I521, $P526, $P527, "$!pos"
    $P528 = $P101."!cursor_pass"($I521, "wb")
    set $P529, $P528
  if229_end701:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_56_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 766
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 767
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I510, $I501
    unless $I501 goto if235_end713 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I506, $P510, $P511, "$!pos"
    ord $I505, $S502, $I506
    set $N503, $I505
    set $N504, 95
    iseq $I504, $N503, $N504
    set $I509, $I504
    if $I504 goto unless236_end715 
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_str $S503, $P512, $P513, "$!target"
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I508, $P514, $P515, "$!pos"
    is_cclass $I507, .CCLASS_ALPHABETIC, $S503, $I508
    set $I509, $I507
  unless236_end715:
    set $I510, $I509
  if235_end713:
    box $P524, $I510
    set $P523, $P524
    unless $I510 goto if234_end711 
.annotate 'line', 768
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_str $S504, $P516, $P517, "$!target"
    nqp_decontainerize $P518, _lex_param_0
    find_lex $P519, "$?CLASS"
    repr_get_attr_int $I512, $P518, $P519, "$!pos"
    nqp_decontainerize $P520, _lex_param_0
    find_lex $P521, "$?CLASS"
    repr_get_attr_str $S505, $P520, $P521, "$!target"
    length $I513, $S505
    find_not_cclass $I511, .CCLASS_WORD, $S504, $I512, $I513
    $P522 = $P101."!cursor_pass"($I511)
    set $P523, $P522
  if234_end711:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_57_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 779
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I510, $I501
    unless $I501 goto if238_end719 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_ALPHABETIC, $S502, $I505
    set $I509, $I504
    if $I504 goto unless239_end721 
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_str $S503, $P512, $P513, "$!target"
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I508, $P514, $P515, "$!pos"
    ord $I507, $S503, $I508
    set $N503, $I507
    set $N504, 95
    iseq $I506, $N503, $N504
    set $I509, $I506
  unless239_end721:
    set $I510, $I509
  if238_end719:
    box $P520, $I510
    set $P519, $P520
    unless $I510 goto if237_end717 
.annotate 'line', 780
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_int $I511, $P516, $P517, "$!pos"
    set $N506, $I511
    set $N507, 1
    add $N505, $N506, $N507
    $P518 = $P101."!cursor_pass"($N505, "alpha")
    set $P519, $P518
  if237_end717:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_58_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 788
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I510, $I501
    unless $I501 goto if241_end725 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_ALPHANUMERIC, $S502, $I505
    set $I509, $I504
    if $I504 goto unless242_end727 
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_str $S503, $P512, $P513, "$!target"
    nqp_decontainerize $P514, _lex_param_0
    find_lex $P515, "$?CLASS"
    repr_get_attr_int $I508, $P514, $P515, "$!pos"
    ord $I507, $S503, $I508
    set $N503, $I507
    set $N504, 95
    iseq $I506, $N503, $N504
    set $I509, $I506
  unless242_end727:
    set $I510, $I509
  if241_end725:
    box $P520, $I510
    set $P519, $P520
    unless $I510 goto if240_end723 
.annotate 'line', 789
    nqp_decontainerize $P516, _lex_param_0
    find_lex $P517, "$?CLASS"
    repr_get_attr_int $I511, $P516, $P517, "$!pos"
    set $N506, $I511
    set $N507, 1
    add $N505, $N506, $N507
    $P518 = $P101."!cursor_pass"($N505, "alnum")
    set $P519, $P518
  if240_end723:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_59_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 797
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if244_end731 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_UPPERCASE, $S502, $I505
    set $I506, $I504
  if244_end731:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if243_end729 
.annotate 'line', 798
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "upper")
    set $P515, $P514
  if243_end729:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_60_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 805
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if246_end735 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_LOWERCASE, $S502, $I505
    set $I506, $I504
  if246_end735:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if245_end733 
.annotate 'line', 806
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "lower")
    set $P515, $P514
  if245_end733:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_61_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 813
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if248_end739 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_NUMERIC, $S502, $I505
    set $I506, $I504
  if248_end739:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if247_end737 
.annotate 'line', 814
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "digit")
    set $P515, $P514
  if247_end737:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_62_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 820
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 821
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if250_end743 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_HEXADECIMAL, $S502, $I505
    set $I506, $I504
  if250_end743:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if249_end741 
.annotate 'line', 822
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "xdigit")
    set $P515, $P514
  if249_end741:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_63_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 828
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 829
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if252_end747 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_WHITESPACE, $S502, $I505
    set $I506, $I504
  if252_end747:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if251_end745 
.annotate 'line', 830
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "space")
    set $P515, $P514
  if251_end745:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_64_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 836
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 837
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if254_end751 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_BLANK, $S502, $I505
    set $I506, $I504
  if254_end751:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if253_end749 
.annotate 'line', 838
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "blank")
    set $P515, $P514
  if253_end749:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_65_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 845
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if256_end755 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_CONTROL, $S502, $I505
    set $I506, $I504
  if256_end755:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if255_end753 
.annotate 'line', 846
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "cntrl")
    set $P515, $P514
  if255_end753:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_66_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 853
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."!cursor_start"()
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    find_lex $P505, "$?CLASS"
    repr_get_attr_int $I502, $P504, $P505, "$!pos"
    set $N501, $I502
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    repr_get_attr_str $S501, $P506, $P507, "$!target"
    length $I503, $S501
    set $N502, $I503
    islt $I501, $N501, $N502
    set $I506, $I501
    unless $I501 goto if258_end759 
    nqp_decontainerize $P508, _lex_param_0
    find_lex $P509, "$?CLASS"
    repr_get_attr_str $S502, $P508, $P509, "$!target"
    nqp_decontainerize $P510, _lex_param_0
    find_lex $P511, "$?CLASS"
    repr_get_attr_int $I505, $P510, $P511, "$!pos"
    is_cclass $I504, .CCLASS_PUNCTUATION, $S502, $I505
    set $I506, $I504
  if258_end759:
    box $P516, $I506
    set $P515, $P516
    unless $I506 goto if257_end757 
.annotate 'line', 854
    nqp_decontainerize $P512, _lex_param_0
    find_lex $P513, "$?CLASS"
    repr_get_attr_int $I507, $P512, $P513, "$!pos"
    set $N504, $I507
    set $N505, 1
    add $N503, $N504, $N505
    $P514 = $P101."!cursor_pass"($N503, "punct")
    set $P515, $P514
  if257_end757:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_67_1346233431.208") :anon :lex :outer("cuid_68_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 860
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
    set $S503, $P101
    concat $S502, "Unable to parse ", $S503
    set $S505, _lex_param_1
    concat $S504, ", couldn't find final ", $S505
    concat $S501, $S502, $S504
    box $P503, $S501
    die $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_81_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 870
    .const 'Sub' $P513 = 'cuid_69_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_70_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_71_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_72_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_73_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_74_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_75_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_76_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_77_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_78_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_79_1346233431.208' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_80_1346233431.208' 
    capture_lex $P513 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_69_1346233431.208' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_70_1346233431.208' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_71_1346233431.208' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_72_1346233431.208' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_73_1346233431.208' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_74_1346233431.208' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_75_1346233431.208' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_76_1346233431.208' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_77_1346233431.208' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_78_1346233431.208' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_79_1346233431.208' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_80_1346233431.208' 
    capture_lex $P512
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_69_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I501, $P501, $P502, "$!from"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_70_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 878
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!orig"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_71_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I501, $P501, $P502, "$!to"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_72_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 880
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!cursor"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_73_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!orig"
    set $S502, $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I501, $P504, $P505, "$!from"
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I502, $P506, $P507, "$!to"
    set $N502, $I502
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I503, $P508, $P509, "$!from"
    set $N503, $I503
    sub $N501, $N502, $N503
    set $I504, $N501
    substr $S501, $S502, $I501, $I504
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 882
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."Str"()
    set $N501, $P502
    .return ($N501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_75_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."Str"()
    set $N501, $P502
    .return ($N501) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_76_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 884
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I502, $P501, $P502, "$!to"
    set $N501, $I502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I503, $P503, $P504, "$!from"
    set $N502, $I503
    isge $I501, $N501, $N502
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_77_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 885
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I502, $P501, $P502, "$!to"
    set $N501, $I502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I503, $P503, $P504, "$!from"
    set $N502, $I503
    isge $I501, $N501, $N502
    unless $I501 goto if259_else760 
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I504, $P505, $P506, "$!to"
    set $N504, $I504
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_int $I505, $P507, $P508, "$!from"
    set $N505, $I505
    sub $N503, $N504, $N505
    box $P510, $N503
    set $P509, $P510
    goto if259_end761
  if259_else760:
    box $P511, 0
    set $P509, $P511
  if259_end761:
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_78_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 887
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_bind_attr_obj $P501, $P502, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_79_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 888
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    repr_get_attr_obj $P503, $P501, $P502, "$!ast"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_80_1346233431.208") :anon :lex :outer("cuid_81_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 890
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P520 = 'cuid_128_1346233431.208' 
    capture_lex $P520 
    .const 'Sub' $P520 = 'cuid_129_1346233431.208' 
    capture_lex $P520 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P501 = 'cuid_128_1346233431.208' 
    capture_lex $P501
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    set $S506, _lex_param_1
    concat $S505, $S506, ": "
.annotate 'line', 902
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."Str"()
    set $S508, $P504
    escape $S507, $S508
    concat $S504, $S505, $S507
    concat $S503, $S504, " @ "
    nqp_decontainerize $P505, _lex_param_0
    $P506 = $P505."from"()
    set $S509, $P506
    concat $S502, $S503, $S509
    concat $S501, $S502, "\n"
    box $P507, $S501
    set $P102, $P507
    set $S511, $P102
.annotate 'line', 903
    nqp_decontainerize $P508, _lex_param_0
    $P509 = $P508."list"()
    $P510 = "&dump_array"(_lex_param_1, $P509)
    set $S512, $P510
    concat $S510, $S511, $S512
    box $P511, $S510
    set $P102, $P511
.annotate 'line', 904
    nqp_decontainerize $P515, _lex_param_0
    $P516 = $P515."hash"()
    set $P512, $P516
    iter $P514, $P516
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers770
    push_eh $P518
  for_next771:
    unless $P514, for_done773
    shift $P519, $P514
  for_redo772:
    .const 'Sub' $P517 = 'cuid_129_1346233431.208' 
    capture_lex $P517
    $P512 = $P517($P519)
    goto for_next771
  for_handlers770:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next771
    eq $P518, .CONTROL_LOOP_REDO, for_redo772
  for_done773:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_128_1346233431.208") :anon :lex :outer("cuid_80_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 891
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P513 = 'cuid_127_1346233431.208' 
    capture_lex $P513 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, ""
    set $P101, $P502
.annotate 'line', 893
    find_lex $P503, "NQPCapture"
    $P504 = $P503."ACCEPTS"(_lex_param_1)
    unless $P504 goto if260_else762 
    set $S502, $P101
.annotate 'line', 894
    $P505 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S503, $P505
    concat $S501, $S502, $S503
    box $P506, $S501
    set $P101, $P506
    set $P512, $P101
    goto if260_end763
  if260_else762:
    isnull $I502, _lex_param_1
    box $P507, $I502
    isfalse $I501, $P507
    box $P511, $I501
    set $P510, $P511
    unless $I501 goto if261_end765 
    .const 'Sub' $P508 = 'cuid_127_1346233431.208' 
    capture_lex $P508
    $P509 = $P508()
    set $P510, $P509
  if261_end765:
    set $P512, $P510
  if260_end763:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1346233431.208") :anon :lex :outer("cuid_128_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 896
    .const 'Sub' $P510 = 'cuid_126_1346233431.208' 
    capture_lex $P510 
    .lex "$n", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
    find_lex $P506, "$item"
    set $P503, $P506
    iter $P505, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers766
    push_eh $P508
  for_next767:
    unless $P505, for_done769
    shift $P509, $P505
  for_redo768:
    .const 'Sub' $P507 = 'cuid_126_1346233431.208' 
    capture_lex $P507
    $P503 = $P507($P509)
    goto for_next767
  for_handlers766:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next767
    eq $P508, .CONTROL_LOOP_REDO, for_redo768
  for_done769:
    pop_eh 
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1346233431.208") :anon :lex :outer("cuid_127_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 898
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_3 
    find_lex $P501, "$str"
    set $S502, $P501
    find_lex $P502, "$key"
    set $S504, $P502
    find_lex $P503, "$n"
    set $S507, $P503
    concat $S506, "[", $S507
    concat $S505, $S506, "]"
    concat $S503, $S504, $S505
    $P504 = "&dump_array"($S503, _lex_param_0)
    set $S508, $P504
    concat $S501, $S502, $S508
    box $P505, $S501
    store_lex "$str", $P505
    find_lex $P506, "$n"
    set tmp_3, $P506
    set $N502, tmp_3
    set $N503, 1
    add $N501, $N502, $N503
    box $P507, $N501
    store_lex "$n", $P507
    .return (tmp_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1346233431.208") :anon :lex :outer("cuid_80_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 904
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$str"
    set $S502, $P501
    find_lex $P502, "$key"
    set $S506, $P502
    concat $S505, $S506, "<"
    $P503 = _lex_param_0."key"()
    set $S507, $P503
    concat $S504, $S505, $S507
    concat $S503, $S504, ">"
    $P504 = _lex_param_0."value"()
    $P505 = "&dump_array"($S503, $P504)
    set $S508, $P505
    concat $S501, $S502, $S508
    box $P506, $S501
    store_lex "$str", $P506
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 909
    .const 'Sub' $P510 = 'cuid_82_1346233431.208' 
    capture_lex $P510 
    .const 'Sub' $P510 = 'cuid_83_1346233431.208' 
    capture_lex $P510 
    .const 'Sub' $P510 = 'cuid_84_1346233431.208' 
    capture_lex $P510 
    .const 'Sub' $P510 = 'cuid_85_1346233431.208' 
    capture_lex $P510 
    .const 'Sub' $P510 = 'cuid_86_1346233431.208' 
    capture_lex $P510 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P101, $P503
    new $P504, 'Hash'
    set $P102, $P504
    .const 'Sub' $P505 = 'cuid_82_1346233431.208' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_83_1346233431.208' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_84_1346233431.208' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_85_1346233431.208' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_86_1346233431.208' 
    capture_lex $P509
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_82_1346233431.208") :anon :lex :outer("cuid_87_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 912
    .param pmc _lex_param_0 
    .const 'Sub' $P510 = 'cuid_130_1346233431.208' 
    capture_lex $P510 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    find_lex $P504, "NQPCursor"
    getattribute $P502, $P503, $P504, "$!match"
    set $P101, $P502
    find_lex $P505, "NQPMatch"
    type_check $I501, $P101, $P505
    set $I503, $I501
    if $I501 goto unless263_end777 
    nqp_ishash $I502, $P101
    set $I503, $I502
  unless263_end777:
    box $P509, $I503
    set $P508, $P509
    if $I503 goto unless262_end775 
    .const 'Sub' $P506 = 'cuid_130_1346233431.208' 
    capture_lex $P506
    $P507 = $P506()
    set $P508, $P507
  unless262_end775:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1346233431.208") :anon :lex :outer("cuid_82_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 914
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $P104 
    .lex "$iter", $P105 
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
    find_lex $P506, "$EMPTY_MATCH_LIST"
    set $P101, $P506
    find_lex $P507, "$EMPTY_MATCH_HASH"
    set $P102, $P507
    find_lex $P509, "NQPMatch"
    repr_instance_of $P508, $P509
    store_lex "$match", $P508
    find_lex $P511, "self"
    nqp_decontainerize $P510, $P511
    find_lex $P512, "NQPCursor"
    find_lex $P513, "$match"
    setattribute $P510, $P512, "$!match", $P513
    find_lex $P514, "$match"
    find_lex $P515, "NQPMatch"
    find_lex $P517, "self"
    nqp_decontainerize $P516, $P517
    setattribute $P514, $P515, "$!cursor", $P516
    find_lex $P518, "$match"
    find_lex $P519, "NQPMatch"
    find_lex $P522, "self"
    nqp_decontainerize $P521, $P522
    find_lex $P523, "NQPCursor"
    getattribute $P520, $P521, $P523, "$!orig"
    setattribute $P518, $P519, "$!orig", $P520
    find_lex $P524, "$match"
    find_lex $P525, "NQPMatch"
    find_lex $P527, "self"
    nqp_decontainerize $P526, $P527
    find_lex $P528, "NQPCursor"
    repr_get_attr_int $I501, $P526, $P528, "$!from"
    repr_bind_attr_int $P524, $P525, "$!from", $I501
    find_lex $P529, "$match"
    find_lex $P530, "NQPMatch"
    find_lex $P532, "self"
    nqp_decontainerize $P531, $P532
    find_lex $P533, "NQPCursor"
    repr_get_attr_int $I502, $P531, $P533, "$!pos"
    repr_bind_attr_int $P529, $P530, "$!to", $I502
.annotate 'line', 923
    find_lex $P535, "self"
    nqp_decontainerize $P534, $P535
    $P536 = $P534."CAPHASH"()
    set $P103, $P536
    iter $P537, $P103
    set $P105, $P537
    new $P557, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P557, while264_handlers781
    push_eh $P557
  while264_test778:
    set $P556, $P105
    unless $P105 goto while264_done782 
  while264_redo780:
.annotate 'line', 926
    shift $P538, $P105
    set $S501, $P538
    box $P539, $S501
    set $P104, $P539
    set $S502, $P104
    iseq $I503, $S502, "$!from"
    set $I505, $I503
    if $I503 goto unless266_end786 
    set $S503, $P104
    iseq $I504, $S503, "$!to"
    set $I505, $I504
  unless266_end786:
    unless $I505 goto if265_else783 
.annotate 'line', 928
    find_lex $P540, "$match"
    find_lex $P541, "NQPMatch"
    set $S504, $P104
.annotate 'line', 929
    set $S505, $P104
    set $P542, $P103[$S505]
    unless_null $P542, fallback787
    nqp_get_sc_object $P543, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P542, $P543
  fallback787:
    $P544 = $P542."from"()
    set $I506, $P544
    repr_bind_attr_int $P540, $P541, $S504, $I506
    box $P555, $I506
    set $P554, $P555
    goto if265_end784
  if265_else783:
    set $S506, $P104
    is_cclass $I507, .CCLASS_NUMERIC, $S506, 0
    unless $I507 goto if267_else788 
.annotate 'line', 931
    set $P546, $P101
    if $P101 goto unless268_end791 
    new $P545, 'ResizablePMCArray'
    set $P101, $P545
    set $P546, $P101
  unless268_end791:
    set $I508, $P104
    set $S507, $P104
    set $P547, $P103[$S507]
    unless_null $P547, fallback792
    nqp_get_sc_object $P548, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P547, $P548
  fallback792:
    set $P101[$I508], $P547
    set $P553, $P547
    goto if267_end789
  if267_else788:
.annotate 'line', 935
    set $P550, $P102
    if $P102 goto unless269_end794 
    new $P549, 'Hash'
    set $P102, $P549
    set $P550, $P102
  unless269_end794:
    set $S508, $P104
    set $S509, $P104
    set $P551, $P103[$S509]
    unless_null $P551, fallback795
    nqp_get_sc_object $P552, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P551, $P552
  fallback795:
    set $P102[$S508], $P551
    set $P553, $P551
  if267_end789:
    set $P554, $P553
  if265_end784:
    set $P556, $P554
    goto while264_test778 
  while264_handlers781:
    .get_results ($P557)
    pop_upto_eh $P557
    getattribute $P557, $P557, 'type'
    eq $P557, .CONTROL_LOOP_NEXT, while264_test778
    eq $P557, .CONTROL_LOOP_REDO, while264_redo780
  while264_done782:
    pop_eh 
    find_lex $P558, "$match"
    find_lex $P559, "NQPCapture"
    setattribute $P558, $P559, "@!array", $P101
    find_lex $P560, "$match"
    find_lex $P561, "NQPCapture"
    setattribute $P560, $P561, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_83_1346233431.208") :anon :lex :outer("cuid_87_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 946
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P502, _lex_param_0
    find_lex $P503, "$?CLASS"
    getattribute $P501, $P502, $P503, "$!match"
    isnull $I502, $P501
    box $P504, $I502
    isfalse $I501, $P504
    set $I504, $I501
    unless $I501 goto if270_end797 
    nqp_decontainerize $P506, _lex_param_0
    find_lex $P507, "$?CLASS"
    getattribute $P505, $P506, $P507, "$!match"
    istrue $I503, $P505
    set $I504, $I503
  if270_end797:
    .return ($I504) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_84_1346233431.208") :anon :lex :outer("cuid_87_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 951
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_18, default800
    box $P511, "TOP"
    set _lex_param_2, $P511
  default800:
    if haz_param_19, default801
    nqp_get_sc_object $P512, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set _lex_param_3, $P512
  default801:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    nqp_get_sc_object $P502, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P102, $P502
    set $P101, _lex_param_3
.annotate 'line', 953
    nqp_decontainerize $P503, _lex_param_0
    $P504 = $P503."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P504
    is_invokable $I501, _lex_param_2
    unless $I501 goto if271_else798 
.annotate 'line', 955
    $P505 = _lex_param_2($P102)
    $P506 = $P505."MATCH"()
    set $P510, $P506
    goto if271_end799
  if271_else798:
.annotate 'line', 956
    set $S501, _lex_param_2
    find_method $P507, $P102, $S501
    $P508 = $P507($P102)
    $P509 = $P508."MATCH"()
    set $P510, $P509
  if271_end799:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_85_1346233431.208") :anon :lex :outer("cuid_87_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 959
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P506 = 'cuid_135_1346233431.208' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_136_1346233431.208' 
    capture_lex $P506 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_802
    .lex "RETURN", $P101
    does $I501, _lex_param_1, "array"
    unless $I501 goto if272_else804 
    .const 'Sub' $P501 = 'cuid_135_1346233431.208' 
    capture_lex $P501
    $P502 = $P501()
    set $P505, $P502
    goto if272_end805
  if272_else804:
    .const 'Sub' $P503 = 'cuid_136_1346233431.208' 
    capture_lex $P503
    $P504 = $P503()
    set $P505, $P504
  if272_end805:
    goto lexotic_803
  lexotic_802:
    .get_results ($P505)
  lexotic_803:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1346233431.208") :anon :lex :outer("cuid_85_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 960
    .const 'Sub' $P526 = 'cuid_133_1346233431.208' 
    capture_lex $P526 
    .lex "$maxlen", $P101 
    .lex "$cur", $P102 
    .lex "$pos", $P103 
    .lex "$tgt", $P104 
    .lex "$eos", $P105 
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
    box $P506, -1
    set $P101, $P506
.annotate 'line', 962
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    $P509 = $P507."!cursor_start"()
    set $P102, $P509
    find_lex $P510, "$?CLASS"
    repr_get_attr_int $I501, $P102, $P510, "$!from"
    box $P511, $I501
    set $P103, $P511
.annotate 'line', 964
    $P512 = $P102."target"()
    set $P104, $P512
    set $S501, $P104
    length $I502, $S501
    box $P513, $I502
    set $P105, $P513
    find_lex $P517, "$var"
    set $P514, $P517
    iter $P516, $P517
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers818
    push_eh $P519
  for_next819:
    unless $P516, for_done821
    shift $P520, $P516
  for_redo820:
    .const 'Sub' $P518 = 'cuid_133_1346233431.208' 
    capture_lex $P518
    $P514 = $P518($P520)
    goto for_next819
  for_handlers818:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next819
    eq $P519, .CONTROL_LOOP_REDO, for_redo820
  for_done821:
    pop_eh 
    set $N501, $P101
    set $N502, 0
    isge $I503, $N501, $N502
    box $P523, $I503
    set $P522, $P523
    unless $I503 goto if279_end823 
.annotate 'line', 981
    set $N504, $P103
    set $N505, $P101
    add $N503, $N504, $N505
    $P521 = $P102."!cursor_pass"($N503, "")
    set $P522, $P521
  if279_end823:
    find_lex $P524, "RETURN"
    $P525 = $P524($P102)
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1346233431.208") :anon :lex :outer("cuid_135_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 966
    .param pmc _lex_param_0 
    .const 'Sub' $P506 = 'cuid_132_1346233431.208' 
    capture_lex $P506 
    .const 'Sub' $P506 = 'cuid_134_1346233431.208' 
    capture_lex $P506 
    .lex "$_", _lex_param_0 
    is_invokable $I501, _lex_param_0
    unless $I501 goto if273_else806 
    .const 'Sub' $P501 = 'cuid_132_1346233431.208' 
    capture_lex $P501
    $P502 = $P501()
    set $P505, $P502
    goto if273_end807
  if273_else806:
    .const 'Sub' $P503 = 'cuid_134_1346233431.208' 
    capture_lex $P503
    $P504 = $P503()
    set $P505, $P504
  if273_end807:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1346233431.208") :anon :lex :outer("cuid_133_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 967
    .const 'Sub' $P509 = 'cuid_131_1346233431.208' 
    capture_lex $P509 
    .lex "$res", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
.annotate 'line', 968
    find_lex $P504, "self"
    nqp_decontainerize $P503, $P504
    find_lex $P502, "$_"
    $P505 = $P502($P503)
    set $P101, $P505
    set $P508, $P101
    unless $P101 goto if274_end809 
    .const 'Sub' $P506 = 'cuid_131_1346233431.208' 
    capture_lex $P506
    $P507 = $P506()
    set $P508, $P507
  if274_end809:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1346233431.208") :anon :lex :outer("cuid_132_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 969
    .lex "$adv", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$res"
    find_lex $P503, "$?CLASS"
    repr_get_attr_int $I501, $P502, $P503, "$!pos"
    box $P504, $I501
    set $P101, $P504
    set $N502, $P101
    find_lex $P505, "$pos"
    set $N503, $P505
    sub $N501, $N502, $N503
    box $P506, $N501
    set $P101, $P506
    set $N504, $P101
    find_lex $P507, "$maxlen"
    set $N505, $P507
    isgt $I502, $N504, $N505
    box $P509, $I502
    set $P508, $P509
    unless $I502 goto if275_end811 
    store_lex "$maxlen", $P101
    set $P508, $P101
  if275_end811:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1346233431.208") :anon :lex :outer("cuid_133_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 975
    .lex "$len", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    find_lex $P502, "$_"
    set $S501, $P502
    length $I501, $S501
    box $P503, $I501
    set $P101, $P503
    set $N501, $P101
    find_lex $P504, "$maxlen"
    set $N502, $P504
    isgt $I502, $N501, $N502
    set $I504, $I502
    unless $I502 goto if278_end817 
    find_lex $P505, "$pos"
    set $N504, $P505
    set $N505, $P101
    add $N503, $N504, $N505
    find_lex $P506, "$eos"
    set $N506, $P506
    isle $I503, $N503, $N506
    set $I504, $I503
  if278_end817:
    set $I508, $I504
    unless $I504 goto if277_end815 
    find_lex $P507, "$tgt"
    set $S503, $P507
    find_lex $P508, "$pos"
    set $I506, $P508
    set $I507, $P101
    substr $S502, $S503, $I506, $I507
    find_lex $P509, "$_"
    set $S504, $P509
    iseq $I505, $S502, $S504
    set $I508, $I505
  if277_end815:
    box $P511, $I508
    set $P510, $P511
    unless $I508 goto if276_end813 
    store_lex "$maxlen", $P101
    set $P510, $P101
  if276_end813:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1346233431.208") :anon :lex :outer("cuid_85_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 984
    .lex "$cur", $P101 
    .lex "$pos", $P102 
    .lex "$tgt", $P103 
    .lex "$len", $P104 
    .lex "$adv", $P105 
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
    find_lex $P506, "$var"
    is_invokable $I501, $P506
    box $P514, $I501
    set $P513, $P514
    unless $I501 goto if280_end825 
.annotate 'line', 985
    find_lex $P510, "self"
    nqp_decontainerize $P509, $P510
    find_lex $P508, "$var"
    $P511 = $P508($P509)
    find_lex $P507, "RETURN"
    $P512 = $P507($P511)
    set $P513, $P512
  if280_end825:
.annotate 'line', 986
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    $P517 = $P515."!cursor_start"()
    set $P101, $P517
    find_lex $P518, "$?CLASS"
    repr_get_attr_int $I502, $P101, $P518, "$!from"
    box $P519, $I502
    set $P102, $P519
.annotate 'line', 988
    $P520 = $P101."target"()
    set $P103, $P520
    find_lex $P521, "$var"
    set $S501, $P521
    length $I503, $S501
    box $P522, $I503
    set $P104, $P522
    set $N502, $P102
    set $N503, $P104
    add $N501, $N502, $N503
    box $P523, $N501
    set $P105, $P523
    set $N504, $P105
    set $S502, $P103
    length $I505, $S502
    set $N505, $I505
    isgt $I504, $N504, $N505
    set $I509, $I504
    if $I504 goto unless282_end829 
    set $S504, $P103
    set $I507, $P102
    set $I508, $P104
    substr $S503, $S504, $I507, $I508
    find_lex $P524, "$var"
    set $S505, $P524
    isne $I506, $S503, $S505
    set $I509, $I506
  unless282_end829:
    box $P528, $I509
    set $P527, $P528
    unless $I509 goto if281_end827 
    find_lex $P525, "RETURN"
    $P526 = $P525($P101)
    set $P527, $P526
  if281_end827:
.annotate 'line', 993
    $P529 = $P101."!cursor_pass"($P105, "")
    find_lex $P530, "RETURN"
    $P531 = $P530($P101)
    .return ($P531) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_86_1346233431.208") :anon :lex :outer("cuid_87_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P509 = 'cuid_139_1346233431.208' 
    capture_lex $P509 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_830
    .lex "RETURN", $P101
    is_invokable $I501, _lex_param_1
    box $P504, $I501
    set $P503, $P504
    if $I501 goto unless283_end833 
    .const 'Sub' $P501 = 'cuid_139_1346233431.208' 
    capture_lex $P501
    $P502 = $P501()
    set $P503, $P502
  unless283_end833:
.annotate 'line', 1014
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."!INTERPOLATE"(_lex_param_1)
    find_lex $P505, "RETURN"
    $P508 = $P505($P507)
    goto lexotic_831
  lexotic_830:
    .get_results ($P508)
  lexotic_831:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1346233431.208") :anon :lex :outer("cuid_86_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 999
    .const 'Sub' $P509 = 'cuid_138_1346233431.208' 
    capture_lex $P509 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    compreg $P502, "QRegex::P6Regex"
    set $P101, $P502
    find_lex $P503, "$var"
    does $I501, $P503, "array"
    unless $I501 goto if284_else834 
    .const 'Sub' $P504 = 'cuid_138_1346233431.208' 
    capture_lex $P504
    $P505 = $P504()
    set $P508, $P505
    goto if284_end835
  if284_else834:
.annotate 'line', 1010
.annotate 'line', 1011
    find_lex $P506, "$var"
    $P507 = $P101."compile"($P506)
    store_lex "$var", $P507
    set $P508, $P507
  if284_end835:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1346233431.208") :anon :lex :outer("cuid_139_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1001
    .const 'Sub' $P510 = 'cuid_137_1346233431.208' 
    capture_lex $P510 
    .lex "$res", $P101 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P101, $P502
    find_lex $P506, "$var"
    set $P503, $P506
    iter $P505, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers838
    push_eh $P508
  for_next839:
    unless $P505, for_done841
    shift $P509, $P505
  for_redo840:
    .const 'Sub' $P507 = 'cuid_137_1346233431.208' 
    capture_lex $P507
    $P503 = $P507($P509)
    goto for_next839
  for_handlers838:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next839
    eq $P508, .CONTROL_LOOP_REDO, for_redo840
  for_done841:
    pop_eh 
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1346233431.208") :anon :lex :outer("cuid_138_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1003
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P501, "07D402AEDF5610FACB7346C622DDB1FFA6DD134D-1346233425.99", 7
    set $P101, $P501
    set $P101, _lex_param_0
    is_invokable $I501, $P101
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless285_end837 
.annotate 'line', 1005
    find_lex $P502, "$rxcompiler"
    $P503 = $P502."compile"($P101)
    set $P101, $P503
    set $P504, $P101
  unless285_end837:
    find_lex $P506, "$res"
    push $P506, $P101
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1018
    .const 'Sub' $P504 = 'cuid_98_1346233431.208' 
    capture_lex $P504 
    .const 'Sub' $P504 = 'cuid_99_1346233431.208' 
    capture_lex $P504 
    .const 'Sub' $P504 = 'cuid_100_1346233431.208' 
    capture_lex $P504 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_98_1346233431.208' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_99_1346233431.208' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_100_1346233431.208' 
    capture_lex $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_98_1346233431.208") :anon :lex :outer("cuid_101_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1021
    nqp_decontainerize $P501, _lex_param_0
    $P502 = $P501."bless"(_lex_param_1 :named("code"))
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_99_1346233431.208") :anon :lex :outer("cuid_101_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1023
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1024
    find_lex $P501, "NQPCursor"
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P501."parse"(_lex_param_1, $P502 :named("rule"))
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_100_1346233431.208") :anon :lex :outer("cuid_101_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1026
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 88
    repr_get_attr_obj $P503, $P501, $P502, "$!code"
    set $S501, $P503
    .return ($S501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1031
    .const 'Sub' $P502 = 'cuid_102_1346233431.208' 
    capture_lex $P502 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_102_1346233431.208' 
    capture_lex $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_102_1346233431.208") :anon :lex :outer("cuid_103_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1032
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1033
    find_lex $P501, "NQPCursor"
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P501."parse"(_lex_param_1, $P502 :named("rule"), 0 :named("c"))
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1346233431.208") :anon :lex :outer("cuid_1_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1037
    .const 'Sub' $P503 = 'cuid_105_1346233431.208' 
    capture_lex $P503 
    .lex "DEFAULT", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P501 = 'cuid_105_1346233431.208' 
    capture_lex $P501
    $P502 = $P501()
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1346233431.208") :anon :lex :outer("cuid_104_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1038
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P501, $P101
    find_lex $P502, "NQPCursorRole"
    set $P501["NQPCursorRole"], $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1346233431.208") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P501 = 'cuid_140_1346233431.208' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P501 = "cuid_1_1346233431.208" 
    get_hll_global $P502, "ModuleLoader"
    $P503 = $P502."load_setting"("NQPCORE")
    $P504 = $P501."set_outer_ctx"($P503)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P501, "ModuleLoader"
    $P502 = $P501."load_module"("QASTNode")
    nqp_create_sc $P501, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\stage2\\QRegex.nqp")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "QAST"
    push $P503, "QRegex"
    push $P503, "NQPCursorRole"
    push $P503, "NQPMatch"
    push $P503, "NQPCursor"
    push $P503, "NQPRegexMethod"
    push $P503, "NQPRegex"
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
    push $P503, "addstate"
    push $P503, "addedge"
    push $P503, "states"
    push $P503, "addnode"
    push $P503, "regex_nfa"
    push $P503, "fate"
    push $P503, "alt"
    push $P503, "anchor"
    push $P503, "cclass"
    push $P503, "concat"
    push $P503, "enumcharlist"
    push $P503, "literal"
    push $P503, "subrule"
    push $P503, "quant"
    push $P503, "pastnode"
    push $P503, "qastnode"
    push $P503, "subcapture"
    push $P503, "past"
    push $P503, "qast"
    push $P503, "mergesubrule"
    push $P503, "mergesubstates"
    push $P503, "run"
    push $P503, "run_alt"
    push $P503, "$!states"
    push $P503, "$!edges"
    push $P503, "Uninstantiable"
    push $P503, "BUILD"
    push $P503, "list"
    push $P503, "hash"
    push $P503, "from"
    push $P503, "orig"
    push $P503, "to"
    push $P503, "CURSOR"
    push $P503, "Bool"
    push $P503, "chars"
    push $P503, "!make"
    push $P503, "ast"
    push $P503, "!dump_str"
    push $P503, "@!array"
    push $P503, "%!hash"
    push $P503, "$!orig"
    push $P503, "$!from"
    push $P503, "$!to"
    push $P503, "$!ast"
    push $P503, "$!cursor"
    push $P503, "MATCH"
    push $P503, "parse"
    push $P503, "!INTERPOLATE"
    push $P503, "!INTERPOLATE_REGEX"
    push $P503, "target"
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
    push $P503, "$!target"
    push $P503, "$!pos"
    push $P503, "$!match"
    push $P503, "$!name"
    push $P503, "$!bstack"
    push $P503, "$!cstack"
    push $P503, "$!regexsub"
    push $P503, "$!restart"
    push $P503, "$!code"
    push $P503, "DEFAULT"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    push $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227"
    push $P503, "src\\stage2\\gen\\nqp-mo.pm"
    push $P503, "QRegex::NFA"
    push $P503, "edges"
    push $P503, "get_string"
    push $P503, "get_integer"
    push $P503, "get_number"
    push $P503, "match"
    push $P503, "name"
    push $P503, "bstack"
    push $P503, "cstack"
    push $P503, "regexsub"
    push $P503, "restart"
    push $P503, "invoke"
    push $P503, "code"
    push $P503, "EXPORT"
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
    push $P503, "$NO_CAPS"
    push $P503, "$pass_mark"
    push $P503, "$?CLASS"
    .const 'Sub' $P504 = 'cuid_140_1346233431.208' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAsBMAAKkAAABAHgAAKkAAACgAAADqQwAAAQAAAPpDAAAoRAAAAAAAAAoAAAALAAAAegAAAAAAAAB8AAAAfQAAAI0AAACOAAAAAQAAAAAAAAABAAAA/AAAADEAAADyAwAAAQAAADIEAAABAAAAQAcAAAEAAACGDAAAAQAAABoOAAAxAAAAxA8AADEAAAAWEAAAAQAAAFoQAAABAAAAGhIAADEAAAC0EgAAAAAAAGAAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABhAAAAAwAAAAIAAAAAAGIAAAAEAAAAAgAAAAAAGwAAAAUAAAACAAAAAABFAAAABgAAAAIAAAAAAFIAAAAHAAAAAgAAAAAAWAAAAAgAAAACAAAAAABcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGMAAAAAAAAAAQAAAAoAAAAAAAoAJAAAAAkAAAACAAEAAAAIAAAADAAAAAIAAQAAAAkAAAANAAAAAgABAAAACgAAAA4AAAACAAAAAAACAAAADwAAAAIAAQAAAAwAAAAQAAAAAgABAAAADwAAABEAAAACAAEAAAARAAAAEgAAAAIAAQAAABMAAAATAAAAAgABAAAAFQAAABQAAAACAAEAAAAXAAAAFQAAAAIAAQAAABgAAAAWAAAAAgABAAAAGgAAABcAAAACAAAAAAAaAAAAGAAAAAIAAAAAAAMAAAAZAAAAAgAAAAAABAAAABoAAAACAAAAAAAFAAAAGwAAAAIAAAAAAAYAAAAcAAAAAgAAAAAABwAAAB0AAAACAAAAAAAIAAAAHgAAAAIAAAAAAAkAAAAfAAAAAgAAAAAACgAAACAAAAACAAAAAAALAAAAIQAAAAIAAAAAAAwAAAAiAAAAAgAAAAAADQAAACMAAAACAAAAAAAOAAAAJAAAAAIAAAAAAA8AAAAlAAAAAgAAAAAAEAAAACYAAAACAAAAAAARAAAAJwAAAAIAAAAAABIAAAAoAAAAAgAAAAAAEwAAACkAAAACAAAAAAAUAAAAKgAAAAIAAAAAABUAAAArAAAAAgAAAAAAFgAAACwAAAACAAAAAAAXAAAALQAAAAIAAAAAABgAAAAuAAAAAgAAAAAAGQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAABAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAABwAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAAQAAAAoAAgAAAC8AAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAAAAAAZAAAAAAAAAAbAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGUAAAAAAAAARQAAAAoAAAAAAAoAGQAAAAkAAAACAAEAAAAIAAAADAAAAAIAAQAAAAkAAAANAAAAAgABAAAACgAAAA4AAAACAAEAAAAdAAAADwAAAAIAAAAAAEoAAAAQAAAAAgABAAAADwAAABEAAAACAAEAAAARAAAAEgAAAAIAAQAAABMAAAATAAAAAgABAAAAFQAAABQAAAACAAEAAAAXAAAAFQAAAAIAAQAAABgAAAAWAAAAAgABAAAAGgAAABcAAAACAAEAAAAbAAAAMgAAAAIAAQAAAB4AAAAzAAAAAgABAAAAHwAAADQAAAACAAEAAAAgAAAANQAAAAIAAAAAAEYAAAA2AAAAAgAAAAAARwAAADcAAAACAAAAAABIAAAAOAAAAAIAAAAAAEkAAAA5AAAAAgAAAAAATQAAADoAAAACAAAAAABOAAAAOwAAAAIAAAAAAE8AAAA8AAAAAgAAAAAAUAAAAD0AAAACAAAAAABRAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAEUAAAACAAEAAAAcAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAE0AAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAEAAAAHAAAAAQABAAIAAQAAAAcAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAAAcAAAADAAIAAQAAABwAAAAKAAIAAAA+AAAABAAAAAAAAAAAAD8AAAAEAAEAAAAAAAAAAgAAAAAARQAAAAoABQAAAEAAAAAEAAIAAAAAAAAAQQAAAAQAAwAAAAAAAABCAAAABAAEAAAAAAAAAEMAAAAEAAUAAAAAAAAARAAAAAQABgAAAAAAAAAAAAAAZgAAAAAAAABSAAAACgAAAAAACgA6AAAACQAAAAIAAQAAAAgAAAAMAAAAAgABAAAACQAAAA0AAAACAAEAAAAKAAAADgAAAAIAAQAAAAsAAAAPAAAAAgABAAAADAAAABAAAAACAAEAAAAPAAAAEQAAAAIAAQAAABEAAAASAAAAAgABAAAAEwAAABMAAAACAAEAAAAVAAAAFAAAAAIAAQAAABcAAAAVAAAAAgABAAAAGAAAABYAAAACAAEAAAAaAAAAFwAAAAIAAQAAABsAAABFAAAAAgAAAAAAUwAAADkAAAACAAAAAABUAAAARgAAAAIAAAAAAFUAAABHAAAAAgAAAAAAVgAAAEgAAAACAAAAAABXAAAASQAAAAIAAAAAAGcAAAA1AAAAAgAAAAAAaAAAAEoAAAACAAAAAABpAAAASwAAAAIAAAAAAGoAAABMAAAAAgAAAAAAawAAAE0AAAACAAAAAABsAAAATgAAAAIAAAAAAG0AAABPAAAAAgAAAAAAbgAAAFAAAAACAAAAAABvAAAAUQAAAAIAAAAAAHAAAABSAAAAAgAAAAAAcQAAAFMAAAACAAAAAAByAAAAVAAAAAIAAAAAAHMAAABVAAAAAgAAAAAAdAAAAFYAAAACAAAAAAB1AAAAVwAAAAIAAAAAAHYAAABYAAAAAgAAAAAAdwAAAFkAAAACAAAAAAB4AAAAWgAAAAIAAAAAAHkAAABbAAAAAgAAAAAAegAAAFwAAAACAAAAAAB7AAAAXQAAAAIAAAAAAHwAAABeAAAAAgAAAAAAfQAAAF8AAAACAAAAAAB+AAAAYAAAAAIAAAAAAH8AAABhAAAAAgAAAAAAgAAAAGIAAAACAAAAAACBAAAAYwAAAAIAAAAAAIIAAABkAAAAAgAAAAAAgwAAAGUAAAACAAAAAACEAAAAZgAAAAIAAAAAAIUAAABnAAAAAgAAAAAAhgAAAGgAAAACAAAAAACHAAAAaQAAAAIAAAAAAIgAAABqAAAAAgAAAAAAiQAAAGsAAAACAAAAAACKAAAAbAAAAAIAAAAAAIsAAABtAAAAAgAAAAAAjAAAAG4AAAACAAAAAACNAAAAbwAAAAIAAAAAAI4AAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAUgAAAAIAAQAAAAcAAAACAAAAAAAbAAAAAgAAAAAAjwAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAFQAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAEAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAABwAAAAEAAQABAAIAAQAAAAcAAAACAAEAAAAHAAAAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAHAAAAAwACAAAAAABSAAAACgAKAAAAQAAAAAQAAAAAAAAAAABwAAAABAABAAAAAAAAAEEAAAAEAAIAAAAAAAAAcQAAAAQAAwAAAAAAAAByAAAABAAEAAAAAAAAAHMAAAAEAAUAAAAAAAAAdAAAAAQABgAAAAAAAAB1AAAABAAHAAAAAAAAAHYAAAAEAAgAAAAAAAAAdwAAAAQACQAAAAAAAAAAAAAAkAAAAAAAAABYAAAACgAAAAAACgANAAAACQAAAAIAAQAAAAgAAAAMAAAAAgABAAAACQAAAA0AAAACAAEAAAAKAAAADgAAAAIAAAAAAFkAAAAPAAAAAgAAAAAAWwAAABAAAAACAAEAAAAPAAAAEQAAAAIAAQAAABEAAAASAAAAAgABAAAAEwAAABMAAAACAAEAAAAVAAAAFAAAAAIAAQAAABcAAAAVAAAAAgAAAAAAWgAAABYAAAACAAEAAAAaAAAAFwAAAAIAAQAAABsAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAWAAAAAIAAQAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAAAcAAAADAAIAAAAAAFgAAAAKAAEAAAB4AAAABAAAAAAAAAAAAAAAAACRAAAAAAAAAFwAAAAKAAAAAAAKAA0AAAAJAAAAAgABAAAACAAAAAwAAAACAAEAAAAJAAAADQAAAAIAAQAAAAoAAAAOAAAAAgAAAAAAWQAAAA8AAAACAAAAAABbAAAAEAAAAAIAAQAAAA8AAAARAAAAAgABAAAAEQAAABIAAAACAAEAAAATAAAAEwAAAAIAAQAAABUAAAAUAAAAAgABAAAAFwAAABUAAAACAAAAAABdAAAAFgAAAAIAAQAAABoAAAAXAAAAAgABAAAAGwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABcAAAAAgAAAAAAWAAAAAIAAQAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAAAcAAAADAAIAAAAAAFgAAAAKAAEAAAB4AAAABAAAAAAAAAAAAAIAAAAAAFwAAAADAAAAAACSAAAAAAAAAF4AAAAKAAEAAAB5AAAAAgAAAAAAXwAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkwAAAAAAAABfAAAACgAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmAAAAAAAAAGEAAAAKABUAAACMAAAAAgAEAAAAAQAAAI8AAAACAAQAAAAGAAAAkAAAAAIABAAAAAoAAACRAAAAAgAEAAAAJQAAAJIAAAACAAQAAAAtAAAAkwAAAAIABAAAADEAAACUAAAAAgAEAAAANQAAAJUAAAACAAQAAAA5AAAAlgAAAAIABAAAADsAAACXAAAAAgAEAAAAPwAAAJgAAAACAAQAAABEAAAAmQAAAAIABAAAAEwAAACaAAAAAgAEAAAATgAAAJsAAAACAAQAAABUAAAAnAAAAAIABAAAAFgAAACdAAAAAgAEAAAAXAAAAJ4AAAACAAQAAABgAAAAnwAAAAIABAAAAGcAAACgAAAAAgAEAAAAagAAAKEAAAACAAQAAABtAAAAogAAAAIABAAAAHYAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAYQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABhAAAAAwAAAAAApwAAAAAAAABiAAAACgABAAAAowAAAAIAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAYgAAAAMAAAAAAKgAAAAAAAAAjwAAAAMAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAQAAAAAQAAAAEAAAAFAAAAIAAAAAEAAAABAAAABQAAADAAAAABAAAAAQAAAAUAAABAAAAAAQAAAAEAAAAFAAAAUAAAAAEAAAABAAAABQAAAGAAAAABAAAAAQAAAAUAAABwAAAAAQAAAAEAAAAFAAAAgAAAAAEAAAABAAAABQAAAJAAAAABAAAAAQAAAAUAAACgAAAAAQAAAAEAAAAFAAAAsAAAAAEAAAABAAAABQAAAMAAAAABAAAAAQAAAAUAAADQAAAAAQAAAAEAAAAFAAAA4AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAAAQAAAQAAAAEAAAAFAAAAEAEAAAEAAAABAAAABQAAACABAAABAAAAAQAAAAUAAAAwAQAAAQAAAAEAAAAFAAAAQAEAAAEAAAABAAAABQAAAFABAAABAAAAAQAAAAUAAABgAQAAAQAAAAEAAAAFAAAAcAEAAAEAAAABAAAABQAAAIABAAABAAAAAAAAAAIAAACQAQAAAAAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKABAAABAAAAAQAAAAUAAACwAQAAAQAAAAEAAAAFAAAAwAEAAAEAAAABAAAABQAAANABAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA8AEAAAEAAAABAAAABQAAAAACAAABAAAAAQAAAAUAAAAQAgAAAQAAAAEAAAAFAAAAIAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABAAgAAAQAAAAEAAAAFAAAAUAIAAAEAAAABAAAABQAAAGACAAABAAAAAQAAAAUAAABwAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJACAAABAAAAAQAAAAUAAACgAgAAAQAAAAEAAAAFAAAAsAIAAAEAAAABAAAABQAAAMACAAABAAAAAQAAAAUAAADQAgAAAQAAAAEAAAAFAAAA4AIAAAEAAAABAAAABQAAAPACAAABAAAAAQAAAAUAAAAAAwAAAQAAAAEAAAAFAAAAEAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAAwAwAAAQAAAAEAAAAFAAAAQAMAAAEAAAABAAAABQAAAFADAAABAAAAAQAAAAUAAABgAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIADAAABAAAAAQAAAAUAAACQAwAAAQAAAAEAAAAFAAAAoAMAAAEAAAABAAAABQAAALADAAABAAAAAQAAAAUAAADAAwAAAQAAAAEAAAAFAAAA0AMAAAEAAAABAAAABQAAAOADAAABAAAAAQAAAAUAAADwAwAAAQAAAAEAAAAFAAAAAAQAAAEAAAABAAAABQAAABAEAAABAAAAAAAAAAMAAAAgBAAAAAAAAAEAAAAFAAAAIAQAAAEAAAABAAAABQAAADAEAAABAAAAAQAAAAUAAABABAAAAQAAAAEAAAAFAAAAUAQAAAEAAAABAAAABQAAAGAEAAABAAAAAQAAAAUAAABwBAAAAQAAAAEAAAAFAAAAgAQAAAEAAAABAAAABQAAAJAEAAABAAAAAQAAAAUAAACgBAAAAQAAAAEAAAAFAAAAsAQAAAEAAAABAAAABQAAAMAEAAABAAAAAQAAAAUAAADQBAAAAQAAAAAAAAAEAAAA4AQAAAAAAAABAAAABQAAAOAEAAABAAAAAQAAAAUAAADwBAAAAQAAAAEAAAAFAAAAAAUAAAEAAAABAAAABQAAABAFAAABAAAAAQAAAAUAAAAgBQAAAQAAAAAAAAAFAAAAMAUAAAAAAAABAAAABQAAADAFAAABAAAAAQAAAAUAAABABQAAAQAAAAEAAAAFAAAAUAUAAAEAAAAAAAAABgAAAGAFAAAAAAAAAQAAAAUAAABgBQAAAQAAAAAAAAAHAAAAcAUAAAAAAAAAAAAACAAAAHAFAAAAAAAAAgAAAAAAAABwBQAAAQAAAAAAAAAJAAAAgAUAAAAAAAAAAAAACgAAAIAFAAAAAAAAAwAAAAYAAACABQAAAQAAAAMAAAAFAAAALgkAAAEAAAADAAAABgAAABwMAAABAAAAAwAAAAYAAABuDgAAAQAAAAEAAAAFAAAA6hYAAAEAAAABAAAABQAAAPoWAAABAAAAAQAAAAUAAAAKFwAAAQAAAAEAAAAFAAAAGhcAAAEAAAABAAAABQAAACoXAAABAAAAAQAAAAUAAAA6FwAAAQAAAAEAAAAFAAAAShcAAAEAAAABAAAABQAAAFoXAAABAAAAAQAAAAUAAABqFwAAAQAAAAEAAAAFAAAAehcAAAEAAAABAAAABQAAAIoXAAABAAAAAQAAAAUAAACaFwAAAQAAAAEAAAAFAAAAqhcAAAEAAAABAAAABQAAALoXAAABAAAAAQAAAAUAAADKFwAAAQAAAAEAAAAFAAAA2hcAAAEAAAABAAAABQAAAOoXAAABAAAAAQAAAAUAAAD6FwAAAQAAAAEAAAAFAAAAChgAAAEAAAABAAAABQAAABoYAAABAAAAAQAAAAUAAAAqGAAAAQAAAAEAAAAFAAAAOhgAAAEAAAABAAAABQAAAEoYAAABAAAAAQAAAAUAAABaGAAAAQAAAAEAAAAFAAAAahgAAAEAAAABAAAABQAAAHoYAAABAAAAAQAAAAUAAACKGAAAAQAAAAEAAAAFAAAAmhgAAAEAAAABAAAABQAAAKoYAAABAAAAAQAAAAUAAAC6GAAAAQAAAAEAAAAFAAAAyhgAAAEAAAABAAAABQAAANoYAAABAAAAAQAAAAUAAADqGAAAAQAAAAEAAAAFAAAA+hgAAAEAAAABAAAABQAAAAoZAAABAAAAAQAAAAUAAAAaGQAAAQAAAAEAAAAFAAAAKhkAAAEAAAABAAAABQAAADoZAAABAAAAAQAAAAUAAABKGQAAAQAAAAEAAAAFAAAAWhkAAAEAAAAAAAAACwAAAGoZAAAAAAAAAwAAAAYAAABqGQAAAQAAAAMAAAAGAAAA1hoAAAEAAAADAAAACQAAALgbAAABAAAAAwAAAAkAAADIGwAAAQAAAAMAAAAIAAAA2BsAAAEAAAADAAAACAAAAAAcAAABAAAAAwAAAAgAAAAoHAAAAQAAAAMAAAAIAAAAUBwAAAEAAAADAAAACAAAAIAcAAABAAAAAwAAAAgAAACwHAAAAQAAAAMAAAAIAAAA4BwAAAEAAAADAAAACAAAAAgdAAABAAAAAwAAAAgAAAAwHQAAAQAAAAMAAAAIAAAAWB0AAAEAAAADAAAACAAAAIAdAAABAAAAAwAAAAgAAACoHQAAAQAAAAMAAAAIAAAA0B0AAAEAAAADAAAACAAAAPgdAAABAAAAAwAAAAgAAAAoHgAAAQAAAAMAAAAIAAAAWB4AAAEAAAADAAAACAAAAIAeAAABAAAAAwAAAAgAAACoHgAAAQAAAAIAAAAAAAAA0B4AAAEAAAACAAAAAAAAAOAeAAABAAAAAwAAAAMAAADwHgAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEACwAAAAAAVgAAAAEAAQABAHsAAAAHAAAAAAAKAAAAAAAGAH4AAAAKAAIAAAAvAAAAAgAAAAAAlAAAADAAAAACAAAAAACVAAAACgAZAAAADgAAAAIAAAAAAAIAAAAYAAAAAgAAAAAAAwAAABkAAAACAAAAAAAEAAAAGgAAAAIAAAAAAAUAAAAbAAAAAgAAAAAABgAAABwAAAACAAAAAAAHAAAAHQAAAAIAAAAAAAgAAAAeAAAAAgAAAAAACQAAAB8AAAACAAAAAAAKAAAAIAAAAAIAAAAAAAsAAAAhAAAAAgAAAAAADAAAACIAAAACAAAAAAANAAAAIwAAAAIAAAAAAA4AAAAkAAAAAgAAAAAADwAAACUAAAACAAAAAAAQAAAAJgAAAAIAAAAAABEAAAAnAAAAAgAAAAAAEgAAACgAAAACAAAAAAATAAAAKQAAAAIAAAAAABQAAAAqAAAAAgAAAAAAFQAAACsAAAACAAAAAAAWAAAALAAAAAIAAAAAABcAAAAtAAAAAgAAAAAAGAAAAC4AAAACAAAAAAAZAAAAFwAAAAIAAAAAABoAAAAHABkAAAACAAAAAAACAAAAAgAAAAAAAwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAABwAAAAAABwABAAAAAgABAAAABwAAAAcAAAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAQAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAABAAAABgAaAAAABgAvAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAEAAAAGAH8AAAAGADAAAAAHAAIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAQAAAAYAGgAAAAYALwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAABAAAABgB/AAAABgAwAAAAAQAGAAQAAAAKAAoAAABAAAAAAgAAAAAAlgAAAHAAAAACAAAAAACXAAAAQQAAAAIAAAAAAJgAAABxAAAAAgAAAAAAmQAAAHIAAAACAAAAAACaAAAAcwAAAAIAAAAAAJsAAAB0AAAAAgAAAAAAnAAAAHUAAAACAAAAAACdAAAAdgAAAAIAAAAAAJ4AAAB3AAAAAgAAAAAAnwAAAAoAKAAAAEkAAAACAAAAAAAcAAAANQAAAAIAAAAAAB0AAABKAAAAAgAAAAAAHgAAAEsAAAACAAAAAAAfAAAATAAAAAIAAAAAACAAAABNAAAAAgAAAAAAIQAAAE4AAAACAAAAAAAiAAAATwAAAAIAAAAAACMAAABQAAAAAgAAAAAAJAAAAFEAAAACAAAAAAAlAAAAUgAAAAIAAAAAACYAAABTAAAAAgAAAAAAJwAAAFQAAAACAAAAAAAoAAAAVQAAAAIAAAAAACkAAABWAAAAAgAAAAAAKgAAAFcAAAACAAAAAAArAAAAWAAAAAIAAAAAACwAAABZAAAAAgAAAAAALQAAAFoAAAACAAAAAAAuAAAAWwAAAAIAAAAAAC8AAABcAAAAAgAAAAAAMAAAAF0AAAACAAAAAAAxAAAAXgAAAAIAAAAAADIAAABfAAAAAgAAAAAAMwAAAGAAAAACAAAAAAA0AAAAYQAAAAIAAAAAADUAAABiAAAAAgAAAAAANgAAAGMAAAACAAAAAAA3AAAAZAAAAAIAAAAAADgAAABlAAAAAgAAAAAAOQAAAGYAAAACAAAAAAA6AAAAZwAAAAIAAAAAADsAAABoAAAAAgAAAAAAPAAAAGkAAAACAAAAAAA9AAAAagAAAAIAAAAAAD4AAABrAAAAAgAAAAAAPwAAAGwAAAACAAAAAABAAAAAbQAAAAIAAAAAAEEAAABuAAAAAgAAAAAAQgAAAG8AAAACAAAAAABDAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAEQAAAAGAAUAAAAKAAUAAABAAAAAAgAAAAAAoAAAAEEAAAACAAAAAAChAAAAQgAAAAIAAAAAAKIAAABDAAAAAgAAAAAAowAAAEQAAAACAAAAAACkAAAACgAKAAAANQAAAAIAAAAAAEYAAAA2AAAAAgAAAAAARwAAADcAAAACAAAAAABIAAAAOAAAAAIAAAAAAEkAAAAPAAAAAgAAAAAASgAAADkAAAACAAAAAABNAAAAOgAAAAIAAAAAAE4AAAA7AAAAAgAAAAAATwAAADwAAAACAAAAAABQAAAAPQAAAAIAAAAAAFEAAAAHAAoAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAABwAAAAAABwABAAAAAgABAAAAHAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAEUAAAACAAEAAAAcAAAAAgABAAAABwAAAAcAAAAAAAoAAwAAAIAAAAACAAAAAABKAAAAgQAAAAIAAAAAAEsAAACCAAAAAgAAAAAATAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAQAAAB4AAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAAHgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAeAAAAAQAGAAYAAAAKAAoAAABAAAAAAgAAAAAAlgAAAHAAAAACAAAAAACXAAAAQQAAAAIAAAAAAJgAAABxAAAAAgAAAAAAmQAAAHIAAAACAAAAAACaAAAAcwAAAAIAAAAAAJsAAAB0AAAAAgAAAAAAnAAAAHUAAAACAAAAAACdAAAAdgAAAAIAAAAAAJ4AAAB3AAAAAgAAAAAAnwAAAAoALQAAAEUAAAACAAAAAABTAAAAOQAAAAIAAAAAAFQAAABGAAAAAgAAAAAAVQAAAEcAAAACAAAAAABWAAAASAAAAAIAAAAAAFcAAABJAAAAAgAAAAAAZwAAADUAAAACAAAAAABoAAAASgAAAAIAAAAAAGkAAABLAAAAAgAAAAAAagAAAEwAAAACAAAAAABrAAAATQAAAAIAAAAAAGwAAABOAAAAAgAAAAAAbQAAAE8AAAACAAAAAABuAAAAUAAAAAIAAAAAAG8AAABRAAAAAgAAAAAAcAAAAFIAAAACAAAAAABxAAAAUwAAAAIAAAAAAHIAAABUAAAAAgAAAAAAcwAAAFUAAAACAAAAAAB0AAAAVgAAAAIAAAAAAHUAAABXAAAAAgAAAAAAdgAAAFgAAAACAAAAAAB3AAAAWQAAAAIAAAAAAHgAAABaAAAAAgAAAAAAeQAAAFsAAAACAAAAAAB6AAAAXAAAAAIAAAAAAHsAAABdAAAAAgAAAAAAfAAAAF4AAAACAAAAAAB9AAAAXwAAAAIAAAAAAH4AAABgAAAAAgAAAAAAfwAAAGEAAAACAAAAAACAAAAAYgAAAAIAAAAAAIEAAABjAAAAAgAAAAAAggAAAGQAAAACAAAAAACDAAAAZQAAAAIAAAAAAIQAAABmAAAAAgAAAAAAhQAAAGcAAAACAAAAAACGAAAAaAAAAAIAAAAAAIcAAABpAAAAAgAAAAAAiAAAAGoAAAACAAAAAACJAAAAawAAAAIAAAAAAIoAAABsAAAAAgAAAAAAiwAAAG0AAAACAAAAAACMAAAAbgAAAAIAAAAAAI0AAABvAAAAAgAAAAAAjgAAAAcALQAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAcAAAAAAAcAAQAAAAIAAQAAAAcAAAAHAAEAAAACAAAAAAAbAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABSAAAAAgABAAAABwAAAAcAAgAAAAIAAAAAABsAAAACAAAAAACPAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANgAAAAYAQAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBJAAAABgBwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGADUAAAAGAEEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYASgAAAAYAcQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCDAAAABgByAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIQAAAAGAHMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhQAAAAYAdAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCGAAAABgB1AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIcAAAAGAHYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAiAAAAAYAdwAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgA2AAAABgBAAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAEkAAAAGAHAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANQAAAAYAQQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBKAAAABgBxAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIMAAAAGAHIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhAAAAAYAcwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCFAAAABgB0AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIYAAAAGAHUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhwAAAAYAdgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCIAAAABgB3AAAAAQAMAAAAAABXAAAAAQABAAEADAAAAAAAWAAAAAEAAQABAAwAAAAAAFkAAAABAAEAAQAMAAAAAABaAAAAAQABAAEADAAAAAAAWwAAAAEAAQABAAwAAAAAAFwAAAABAAEAAQAMAAAAAABdAAAAAQABAAEADAAAAAAAXgAAAAEAAQABAAwAAAAAAF8AAAABAAEAAQAMAAAAAABgAAAAAQABAAEADAAAAAAAYQAAAAEAAQABAAwAAAAAAGIAAAABAAEAAQAMAAAAAABjAAAAAQABAAEADAAAAAAAZAAAAAEAAQABAAwAAAAAAGUAAAABAAEAAQAMAAAAAABmAAAAAQABAAEADAAAAAAAZwAAAAEAAQABAAwAAAAAAGgAAAABAAEAAQAMAAAAAABpAAAAAQABAAEADAAAAAAAagAAAAEAAQABAAwAAAAAAGsAAAABAAEAAQAMAAAAAABsAAAAAQABAAEADAAAAAAAbQAAAAEAAQABAAwAAAAAAG4AAAABAAEAAQAMAAAAAABvAAAAAQABAAEADAAAAAAAcAAAAAEAAQABAAwAAAAAAHEAAAABAAEAAQAMAAAAAAByAAAAAQABAAEADAAAAAAAcwAAAAEAAQABAAwAAAAAAHQAAAABAAEAAQAMAAAAAAB1AAAAAQABAAEADAAAAAAAdgAAAAEAAQABAAwAAAAAAHcAAAABAAEAAQAMAAAAAAB4AAAAAQABAAEADAAAAAAAeQAAAAEAAQABAAwAAAAAAHoAAAABAAEAAQAMAAAAAAB7AAAAAQABAAEADAAAAAAAfAAAAAEAAQABAAwAAAAAAH0AAAABAAEAAQAMAAAAAAB+AAAAAQABAAEABgAHAAAACgABAAAAeAAAAAIAAAAAAKUAAAAKAAMAAAAOAAAAAgAAAAAAWQAAABUAAAACAAAAAABaAAAADwAAAAIAAAAAAFsAAAAHAAMAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAAHAAAAAAAHAAEAAAACAAEAAAAHAAAABwAAAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABYAAAAAgABAAAABwAAAAcAAAAAAAoAAQAAAIAAAAACAAAAAABbAAAACgABAAAAiQAAAAcAAgAAAAIAAAAAAFgAAAAGAHgAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCKAAAABgB4AAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFgAAAAGAIoAAAAGAHgAAAABAAYACAAAAAoAAAAAAAoAAQAAABUAAAACAAAAAABdAAAABwABAAAAAgAAAAAAXQAAAAcAAAAAAAcAAQAAAAIAAAAAAFgAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABcAAAAAgAAAAAAWAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCKAAAABgB4AAAABwAAAAAAAQAGAIsAAAAEAAEAAAAAAAAABgB5AAAABAABAAAAAAAAAAYALwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGADAAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgBAAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAcAAAAAIAAQAAAAQAAAAEAAEAAAAAAAAAAwACAAEAAAAEAAAABAABAAAAAAAAAAYAQQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAcQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAcgAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHMAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB0AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAdQAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHYAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB3AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAQAAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAEEAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAEIAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAEMAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgBEAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAeAAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAYABAAAAAIAAAAAABsAAAAKAAoAAABAAAAAAgAAAAAAlgAAAHAAAAACAAAAAACXAAAAQQAAAAIAAAAAAJgAAABxAAAAAgAAAAAAmQAAAHIAAAACAAAAAACaAAAAcwAAAAIAAAAAAJsAAAB0AAAAAgAAAAAAnAAAAHUAAAACAAAAAACdAAAAdgAAAAIAAAAAAJ4AAAB3AAAAAgAAAAAAnwAAAAoAKAAAAEkAAAACAAAAAABnAAAANQAAAAIAAAAAAGgAAABKAAAAAgAAAAAAaQAAAEsAAAACAAAAAABqAAAATAAAAAIAAAAAAGsAAABNAAAAAgAAAAAAbAAAAE4AAAACAAAAAABtAAAATwAAAAIAAAAAAG4AAABQAAAAAgAAAAAAbwAAAFEAAAACAAAAAABwAAAAUgAAAAIAAAAAAHEAAABTAAAAAgAAAAAAcgAAAFQAAAACAAAAAABzAAAAVQAAAAIAAAAAAHQAAABWAAAAAgAAAAAAdQAAAFcAAAACAAAAAAB2AAAAWAAAAAIAAAAAAHcAAABZAAAAAgAAAAAAeAAAAFoAAAACAAAAAAB5AAAAWwAAAAIAAAAAAHoAAABcAAAAAgAAAAAAewAAAF0AAAACAAAAAAB8AAAAXgAAAAIAAAAAAH0AAABfAAAAAgAAAAAAfgAAAGAAAAACAAAAAAB/AAAAYQAAAAIAAAAAAIAAAABiAAAAAgAAAAAAgQAAAGMAAAACAAAAAACCAAAAZAAAAAIAAAAAAIMAAABlAAAAAgAAAAAAhAAAAGYAAAACAAAAAACFAAAAZwAAAAIAAAAAAIYAAABoAAAAAgAAAAAAhwAAAGkAAAACAAAAAACIAAAAagAAAAIAAAAAAIkAAABrAAAAAgAAAAAAigAAAGwAAAACAAAAAACLAAAAbQAAAAIAAAAAAIwAAABuAAAAAgAAAAAAjQAAAG8AAAACAAAAAACOAAAABwAAAAAABwAAAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAAAAAAZAAAAAQAAAAEAAAAAAAAAZwAAAAAAAAAaAAAAAQAAAAEAAAAAAAAAaAAAAAAAAAAbAAAAAQAAAAEAAAAAAAAAaQAAAAAAAAAcAAAAAQAAAAEAAAAAAAAAagAAAAAAAAAdAAAAAQAAAAEAAAAAAAAAawAAAAAAAAAeAAAAAQAAAAEAAAAAAAAAbAAAAAAAAAAfAAAAAQAAAAEAAAAAAAAAbQAAAAAAAAAgAAAAAQAAAAEAAAAAAAAAbgAAAAAAAAAhAAAAAQAAAAEAAAAAAAAAbwAAAAAAAAAiAAAAAQAAAAEAAAAAAAAAcAAAAAAAAAAjAAAAAQAAAAEAAAAAAAAAcQAAAAAAAAAkAAAAAQAAAAEAAAAAAAAAcgAAAAAAAAAlAAAAAQAAAAEAAAAAAAAAcwAAAAAAAAAmAAAAAQAAAAEAAAAAAAAAdAAAAAAAAAAnAAAAAQAAAAEAAAAAAAAAdQAAAAAAAAAoAAAAAQAAAAEAAAAAAAAAdgAAAAAAAAApAAAAAQAAAAEAAAAAAAAAdwAAAAAAAAAqAAAAAQAAAAEAAAAAAAAAeAAAAAAAAAArAAAAAQAAAAEAAAAAAAAAeQAAAAAAAAAsAAAAAQAAAAEAAAAAAAAAegAAAAAAAAAtAAAAAQAAAAEAAAAAAAAAewAAAAAAAAAuAAAAAQAAAAEAAAAAAAAAfAAAAAAAAAAvAAAAAQAAAAEAAAAAAAAAfQAAAAAAAAAwAAAAAQAAAAEAAAAAAAAAfgAAAAAAAAAxAAAAAQAAAAEAAAAAAAAAfwAAAAAAAAAyAAAAAQAAAAEAAAAAAAAAgAAAAAAAAAAzAAAAAQAAAAEAAAAAAAAAgQAAAAAAAAA0AAAAAQAAAAEAAAAAAAAAggAAAAAAAAA1AAAAAQAAAAEAAAAAAAAAgwAAAAAAAAA2AAAAAQAAAAEAAAAAAAAAhAAAAAAAAAA3AAAAAQAAAAEAAAAAAAAAhQAAAAAAAAA4AAAAAQAAAAEAAAAAAAAAhgAAAAAAAAA5AAAAAQAAAAEAAAAAAAAAhwAAAAAAAAA6AAAAAQAAAAEAAAAAAAAAiAAAAAAAAAA7AAAAAQAAAAEAAAAAAAAAiQAAAAAAAAA8AAAAAQAAAAEAAAAAAAAAigAAAAAAAAA9AAAAAQAAAAEAAAAAAAAAiwAAAAAAAAA+AAAAAQAAAAEAAAAAAAAAjAAAAAAAAAA/AAAAAQAAAAEAAAAAAAAAjQAAAAAAAABAAAAAAQAAAAEAAAAAAAAAjgAAAAAAAABBAAAAAAAAAAAAAAADAAAAAAAAAKQAAAAKAAAAAAClAAAABAABAAAAAAAAAKYAAAACAAAAAABSAAAA", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_2_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 2
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_3_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 3
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_4_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 4
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_5_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 5
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_6_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 6
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_7_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 7
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_8_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 8
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_9_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 9
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_10_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 10
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_11_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 11
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_12_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 12
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_13_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 13
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_14_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 14
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_15_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 15
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_16_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 16
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_17_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 17
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_18_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 18
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_19_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 19
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_20_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 20
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_21_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 21
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_22_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 22
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_23_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 23
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_24_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 24
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_25_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 25
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_26_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 26
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_27_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_27_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_27_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_27_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 27
    $P503 = $P501."set_static_lexpad_value"("NQPCursorRole", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_28_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 28
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_29_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 29
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_30_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 30
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_31_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 31
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_32_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 32
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_33_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 33
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_34_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 34
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_35_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 35
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_36_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 36
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_37_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 37
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_38_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 38
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_39_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 39
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_40_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 40
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_41_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 41
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_42_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 42
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_43_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 43
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_44_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 44
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_45_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 45
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_46_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 46
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_47_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 47
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_48_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 48
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_49_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 49
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_50_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 50
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_51_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 51
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_52_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 52
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_53_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 53
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_54_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 54
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_55_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 55
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_56_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 56
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_57_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 57
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_58_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 58
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_59_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 59
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_60_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 60
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_61_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 61
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_62_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 62
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_63_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 63
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_64_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 64
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_65_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 65
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_66_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 66
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_67_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 67
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_68_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 68
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_68_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 27
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_68_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_68_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 27
    $P503 = $P501."set_static_lexpad_value"("$?ROLE", $P502)
    .const "LexInfo" $P504 = "cuid_68_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    $P503 = $P501."set_static_lexpad_value"("NQPMatch", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_69_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 70
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_70_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 71
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_71_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 72
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_72_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 73
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_73_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 74
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_74_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 75
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_75_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 76
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_76_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 77
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_77_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 78
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_78_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 79
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_79_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 80
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_80_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 81
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_81_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_81_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_81_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 69
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_81_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 82
    $P503 = $P501."set_static_lexpad_value"("NQPCursor", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_82_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 83
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_83_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 84
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_84_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 85
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_85_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 86
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_86_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 87
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_87_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 82
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_87_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_87_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 82
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_87_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 88
    $P503 = $P501."set_static_lexpad_value"("NQPRegexMethod", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_98_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 89
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_99_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 90
    set_sub_code_object $P501, $P502
    .const 'Sub' $P501 = "cuid_100_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 91
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_101_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 88
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_101_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_101_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 88
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_101_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 92
    $P503 = $P501."set_static_lexpad_value"("NQPRegex", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const 'Sub' $P501 = "cuid_102_1346233431.208" 
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 93
    set_sub_code_object $P501, $P502
    .const "LexInfo" $P501 = "cuid_103_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 92
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_103_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_103_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 92
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_103_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 94
    $P503 = $P501."set_static_lexpad_value"("EXPORT", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_104_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 95
    $P503 = $P501."set_static_lexpad_value"("DEFAULT", $P502)
    .const "LexInfo" $P504 = "cuid_104_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_105_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 95
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_105_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_105_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 95
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_105_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_104_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 94
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_104_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_104_1346233431.208"
    nqp_get_sc_object $P502, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 94
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_104_1346233431.208"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "3F04B14CE2A0361857F90C7B424E866EF9110B88-1346233431.244", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1346233431.208") :anon :lex :outer("cuid_141_1346233431.208")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_2_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_3_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_4_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_5_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_6_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_7_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_8_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_9_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_10_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_11_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_12_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_13_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_14_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_15_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_16_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_17_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_18_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_19_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_20_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_21_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_22_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_23_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_24_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_25_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_26_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_28_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_29_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_30_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_31_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_32_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_33_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_34_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_35_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_36_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_37_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_38_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_39_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_40_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_41_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_42_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_43_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_44_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_45_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_46_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_47_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_48_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_49_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_50_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_51_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_52_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_53_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_54_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_55_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_56_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_57_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_58_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_59_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_60_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_61_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_62_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_63_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_64_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_65_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_66_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_67_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_68_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_69_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_70_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_71_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_72_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_73_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_74_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_75_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_76_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_77_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_78_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_79_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_80_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_82_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_83_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_84_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_85_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_86_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_98_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_99_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_100_1346233431.208" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_102_1346233431.208" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1346233431.208") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P501 = "cuid_1_1346233431.208" 
    $P502 = $P501()
    .return ($P502) 
.end