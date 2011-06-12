.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1307873279.27498")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P18 = "11_1307873279.27498" 
    capture_lex $P18
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
    .lex "ModuleLoader", $P16
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P18 = "11_1307873279.27498" 
    capture_lex $P18
    $P18()
.annotate 'line', 161
    find_lex $P386, "ModuleLoader"
    set_hll_global "ModuleLoader", $P386
    find_lex $P389, "@ARGS"
    if $P389, if_388
    set $P387, $P389
    goto if_388_end
  if_388:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P390, "ModuleLoader"
    getinterp $P391
    set $P392, $P391["context"]
    $P393 = $P390."set_mainline_module"($P392)
    set $P387, $P393
  if_388_end:
.annotate 'line', 1
    .return ($P387)
    .const 'Sub' $P395 = "28_1307873279.27498" 
    .return ($P395)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post29") :outer("10_1307873279.27498")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1307873279.27498" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P399, "1307873278.84287"
    isnull $I400, $P399
    if $I400, if_398
    .const 'Sub' $P456 = "10_1307873279.27498" 
    $P457 = $P456."get_lexinfo"()
    nqp_get_sc_object $P458, "1307873278.84287", 0
    $P457."set_static_lexpad_value"("GLOBALish", $P458)
    .const 'Sub' $P459 = "10_1307873279.27498" 
    $P460 = $P459."get_lexinfo"()
    $P460."finish_static_lexpad"()
    .const 'Sub' $P461 = "10_1307873279.27498" 
    $P462 = $P461."get_lexinfo"()
    nqp_get_sc_object $P463, "1307873278.84287", 0
    $P462."set_static_lexpad_value"("$?PACKAGE", $P463)
    .const 'Sub' $P464 = "10_1307873279.27498" 
    $P465 = $P464."get_lexinfo"()
    $P465."finish_static_lexpad"()
    .const 'Sub' $P466 = "10_1307873279.27498" 
    $P467 = $P466."get_lexinfo"()
    nqp_get_sc_object $P468, "1307873278.84287", 1
    $P467."set_static_lexpad_value"("ModuleLoader", $P468)
    .const 'Sub' $P469 = "10_1307873279.27498" 
    $P470 = $P469."get_lexinfo"()
    $P470."finish_static_lexpad"()
    nqp_get_sc_object $P471, "1307873278.84287", 2
    .const 'Sub' $P472 = "16_1307873279.27498" 
    assign $P471, $P472
    nqp_get_sc_object $P473, "1307873278.84287", 3
    .const 'Sub' $P474 = "17_1307873279.27498" 
    assign $P473, $P474
    nqp_get_sc_object $P475, "1307873278.84287", 4
    .const 'Sub' $P476 = "23_1307873279.27498" 
    assign $P475, $P476
    nqp_get_sc_object $P477, "1307873278.84287", 5
    .const 'Sub' $P478 = "27_1307873279.27498" 
    assign $P477, $P478
    .const 'Sub' $P479 = "11_1307873279.27498" 
    $P480 = $P479."get_lexinfo"()
    nqp_get_sc_object $P481, "1307873278.84287", 1
    $P480."set_static_lexpad_value"("$?PACKAGE", $P481)
    .const 'Sub' $P482 = "11_1307873279.27498" 
    $P483 = $P482."get_lexinfo"()
    $P483."finish_static_lexpad"()
    .const 'Sub' $P484 = "11_1307873279.27498" 
    $P485 = $P484."get_lexinfo"()
    nqp_get_sc_object $P486, "1307873278.84287", 1
    $P485."set_static_lexpad_value"("$?CLASS", $P486)
    .const 'Sub' $P487 = "11_1307873279.27498" 
    $P488 = $P487."get_lexinfo"()
    $P488."finish_static_lexpad"()
    goto if_398_end
  if_398:
    nqp_dynop_setup 
    getinterp $P401
    get_class $P402, "LexPad"
    get_class $P403, "NQPLexPad"
    $P401."hll_map"($P402, $P403)
    nqp_create_sc $P404, "1307873278.84287"
    .local pmc cur_sc
    set cur_sc, $P404
    nqp_get_sc_object $P405, "__6MODEL_CORE__", 0
    $P406 = $P405."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P406, cur_sc
    nqp_set_sc_object "1307873278.84287", 0, $P406
    .const 'Sub' $P407 = "10_1307873279.27498" 
    $P408 = $P407."get_lexinfo"()
    nqp_get_sc_object $P409, "1307873278.84287", 0
    $P408."set_static_lexpad_value"("GLOBALish", $P409)
    .const 'Sub' $P410 = "10_1307873279.27498" 
    $P411 = $P410."get_lexinfo"()
    $P411."finish_static_lexpad"()
    .const 'Sub' $P412 = "10_1307873279.27498" 
    $P413 = $P412."get_lexinfo"()
    nqp_get_sc_object $P414, "1307873278.84287", 0
    $P413."set_static_lexpad_value"("$?PACKAGE", $P414)
    .const 'Sub' $P415 = "10_1307873279.27498" 
    $P416 = $P415."get_lexinfo"()
    $P416."finish_static_lexpad"()
    nqp_get_sc_object $P417, "__6MODEL_CORE__", 0
    $P418 = $P417."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P418, cur_sc
    nqp_set_sc_object "1307873278.84287", 1, $P418
    nqp_get_sc_object $P419, "1307873278.84287", 1
    nqp_get_sc_object $P420, "1307873278.84287", 0
    get_who $P421, $P420
    set $P421["ModuleLoader"], $P419
    .const 'Sub' $P422 = "10_1307873279.27498" 
    $P423 = $P422."get_lexinfo"()
    nqp_get_sc_object $P424, "1307873278.84287", 1
    $P423."set_static_lexpad_value"("ModuleLoader", $P424)
    .const 'Sub' $P425 = "10_1307873279.27498" 
    $P426 = $P425."get_lexinfo"()
    $P426."finish_static_lexpad"()
    nqp_get_sc_object $P427, "1307873278.84287", 1
    get_how $P428, $P427
    nqp_get_sc_object $P429, "1307873278.84287", 1
    .const 'Sub' $P430 = "16_1307873279.27498" 
    $P428."add_method"($P429, "ctxsave", $P430)
    nqp_get_sc_object $P431, "1307873278.84287", 1
    get_how $P432, $P431
    nqp_get_sc_object $P433, "1307873278.84287", 1
    .const 'Sub' $P434 = "17_1307873279.27498" 
    $P432."add_method"($P433, "load_module", $P434)
    nqp_get_sc_object $P435, "1307873278.84287", 1
    get_how $P436, $P435
    nqp_get_sc_object $P437, "1307873278.84287", 1
    .const 'Sub' $P438 = "23_1307873279.27498" 
    $P436."add_method"($P437, "load_setting", $P438)
    nqp_get_sc_object $P439, "1307873278.84287", 1
    get_how $P440, $P439
    nqp_get_sc_object $P441, "1307873278.84287", 1
    .const 'Sub' $P442 = "27_1307873279.27498" 
    $P440."add_method"($P441, "set_mainline_module", $P442)
    .const 'Sub' $P443 = "11_1307873279.27498" 
    $P444 = $P443."get_lexinfo"()
    nqp_get_sc_object $P445, "1307873278.84287", 1
    $P444."set_static_lexpad_value"("$?PACKAGE", $P445)
    .const 'Sub' $P446 = "11_1307873279.27498" 
    $P447 = $P446."get_lexinfo"()
    $P447."finish_static_lexpad"()
    .const 'Sub' $P448 = "11_1307873279.27498" 
    $P449 = $P448."get_lexinfo"()
    nqp_get_sc_object $P450, "1307873278.84287", 1
    $P449."set_static_lexpad_value"("$?CLASS", $P450)
    .const 'Sub' $P451 = "11_1307873279.27498" 
    $P452 = $P451."get_lexinfo"()
    $P452."finish_static_lexpad"()
    nqp_get_sc_object $P453, "1307873278.84287", 1
    get_how $P454, $P453
    nqp_get_sc_object $P455, "1307873278.84287", 1
    $P454."compose"($P455)
  if_398_end:
    nqp_get_sc_object $P489, "1307873278.84287", 0
    set_hll_global "GLOBAL", $P489
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block17"  :subid("11_1307873279.27498") :outer("10_1307873279.27498")
.annotate 'line', 1
    .const 'Sub' $P325 = "27_1307873279.27498" 
    capture_lex $P325
    .const 'Sub' $P249 = "23_1307873279.27498" 
    capture_lex $P249
    .const 'Sub' $P134 = "17_1307873279.27498" 
    capture_lex $P134
    .const 'Sub' $P130 = "16_1307873279.27498" 
    capture_lex $P130
    .const 'Sub' $P22 = "12_1307873279.27498" 
    capture_lex $P22
.annotate 'line', 2
    $P19 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P19
.annotate 'line', 3
    $P20 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P20
.annotate 'line', 69
    new $P21, "Undef"
    .lex "$stub_how", $P21
.annotate 'line', 70
    .const 'Sub' $P22 = "12_1307873279.27498" 
    newclosure $P125, $P22
    .lex "merge_globals", $P125
.annotate 'line', 69
    .lex "$?PACKAGE", $P126
    .lex "$?CLASS", $P127
.annotate 'line', 1
    find_lex $P128, "%modules_loaded"
    unless_null $P128, vivify_65
    $P128 = root_new ['parrot';'Hash']
  vivify_65:
    find_lex $P129, "%settings_loaded"
    unless_null $P129, vivify_66
    $P129 = root_new ['parrot';'Hash']
  vivify_66:
.annotate 'line', 69
    new $P247, "String"
    assign $P247, "KnowHOW"
    store_lex "$stub_how", $P247
    find_lex $P248, "merge_globals"
.annotate 'line', 136
    .const 'Sub' $P325 = "27_1307873279.27498" 
    newclosure $P385, $P325
.annotate 'line', 1
    .return ($P385)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1307873279.27498") :outer("11_1307873279.27498")
    .param pmc param_23
    .param pmc param_24
.annotate 'line', 70
    .const 'Sub' $P48 = "14_1307873279.27498" 
    capture_lex $P48
    .const 'Sub' $P33 = "13_1307873279.27498" 
    capture_lex $P33
    .lex "$target", param_23
    .lex "$source", param_24
.annotate 'line', 74
    $P25 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P25
.annotate 'line', 70
    find_lex $P26, "%known_symbols"
    unless_null $P26, vivify_30
    $P26 = root_new ['parrot';'Hash']
  vivify_30:
.annotate 'line', 75
    find_lex $P28, "$target"
    unless_null $P28, vivify_31
    new $P28, "Undef"
  vivify_31:
    get_who $P29, $P28
    defined $I30, $P29
    unless $I30, for_undef_32
    iter $P27, $P29
    new $P40, 'ExceptionHandler'
    set_label $P40, loop39_handler
    $P40."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P40
  loop39_test:
    unless $P27, loop39_done
    shift $P31, $P27
  loop39_redo:
    .const 'Sub' $P33 = "13_1307873279.27498" 
    capture_lex $P33
    $P33($P31)
  loop39_next:
    goto loop39_test
  loop39_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P41, exception, 'type'
    eq $P41, .CONTROL_LOOP_NEXT, loop39_next
    eq $P41, .CONTROL_LOOP_REDO, loop39_redo
  loop39_done:
    pop_eh 
  for_undef_32:
.annotate 'line', 78
    find_lex $P43, "$source"
    unless_null $P43, vivify_35
    new $P43, "Undef"
  vivify_35:
    get_who $P44, $P43
    defined $I45, $P44
    unless $I45, for_undef_36
    iter $P42, $P44
    new $P123, 'ExceptionHandler'
    set_label $P123, loop122_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop122_test:
    unless $P42, loop122_done
    shift $P46, $P42
  loop122_redo:
    .const 'Sub' $P48 = "14_1307873279.27498" 
    capture_lex $P48
    $P48($P46)
  loop122_next:
    goto loop122_test
  loop122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop122_next
    eq $P124, .CONTROL_LOOP_REDO, loop122_redo
  loop122_done:
    pop_eh 
  for_undef_36:
.annotate 'line', 70
    .return ($P42)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block32"  :anon :subid("13_1307873279.27498") :outer("12_1307873279.27498")
    .param pmc param_34
.annotate 'line', 75
    .lex "$_", param_34
.annotate 'line', 76
    new $P35, "Integer"
    assign $P35, 1
    find_lex $P36, "$_"
    unless_null $P36, vivify_33
    new $P36, "Undef"
  vivify_33:
    $P37 = $P36."key"()
    find_lex $P38, "%known_symbols"
    unless_null $P38, vivify_34
    $P38 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P38
  vivify_34:
    set $P38[$P37], $P35
.annotate 'line', 75
    .return ($P35)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block47"  :anon :subid("14_1307873279.27498") :outer("12_1307873279.27498")
    .param pmc param_50
.annotate 'line', 78
    .const 'Sub' $P74 = "15_1307873279.27498" 
    capture_lex $P74
.annotate 'line', 79
    new $P49, "Undef"
    .lex "$sym", $P49
    .lex "$_", param_50
    find_lex $P51, "$_"
    unless_null $P51, vivify_37
    new $P51, "Undef"
  vivify_37:
    $P52 = $P51."key"()
    store_lex "$sym", $P52
.annotate 'line', 80
    find_lex $P55, "$sym"
    unless_null $P55, vivify_38
    new $P55, "Undef"
  vivify_38:
    find_lex $P56, "%known_symbols"
    unless_null $P56, vivify_39
    $P56 = root_new ['parrot';'Hash']
  vivify_39:
    set $P57, $P56[$P55]
    unless_null $P57, vivify_40
    new $P57, "Undef"
  vivify_40:
    isfalse $I58, $P57
    if $I58, if_54
.annotate 'line', 83
    find_lex $P66, "$sym"
    unless_null $P66, vivify_41
    new $P66, "Undef"
  vivify_41:
    find_lex $P67, "$target"
    unless_null $P67, vivify_42
    new $P67, "Undef"
  vivify_42:
    get_who $P68, $P67
    set $P69, $P68[$P66]
    unless_null $P69, vivify_43
    new $P69, "Undef"
  vivify_43:
    find_lex $P70, "$_"
    unless_null $P70, vivify_44
    new $P70, "Undef"
  vivify_44:
    $P71 = $P70."value"()
    issame $I72, $P69, $P71
    if $I72, if_65
.annotate 'line', 86
    .const 'Sub' $P74 = "15_1307873279.27498" 
    capture_lex $P74
    $P121 = $P74()
    set $P64, $P121
.annotate 'line', 83
    goto if_65_end
  if_65:
  if_65_end:
    set $P53, $P64
.annotate 'line', 80
    goto if_54_end
  if_54:
.annotate 'line', 81
    find_lex $P59, "$_"
    unless_null $P59, vivify_62
    new $P59, "Undef"
  vivify_62:
    $P60 = $P59."value"()
    find_lex $P61, "$sym"
    unless_null $P61, vivify_63
    new $P61, "Undef"
  vivify_63:
    find_lex $P62, "$target"
    unless_null $P62, vivify_64
    new $P62, "Undef"
    store_lex "$target", $P62
  vivify_64:
    get_who $P63, $P62
    set $P63[$P61], $P60
.annotate 'line', 80
    set $P53, $P60
  if_54_end:
.annotate 'line', 78
    .return ($P53)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block73"  :anon :subid("15_1307873279.27498") :outer("14_1307873279.27498")
.annotate 'line', 87
    new $P75, "Undef"
    .lex "$source_mo", $P75
.annotate 'line', 88
    new $P76, "Undef"
    .lex "$source_is_stub", $P76
.annotate 'line', 89
    new $P77, "Undef"
    .lex "$target_mo", $P77
.annotate 'line', 90
    new $P78, "Undef"
    .lex "$target_is_stub", $P78
.annotate 'line', 87
    find_lex $P79, "$_"
    unless_null $P79, vivify_45
    new $P79, "Undef"
  vivify_45:
    $P80 = $P79."value"()
    get_how $P81, $P80
    store_lex "$source_mo", $P81
.annotate 'line', 88
    find_lex $P82, "$source_mo"
    unless_null $P82, vivify_46
    new $P82, "Undef"
  vivify_46:
    get_what $P83, $P82
    get_how $P84, $P83
    find_lex $P85, "$source_mo"
    unless_null $P85, vivify_47
    new $P85, "Undef"
  vivify_47:
    $S86 = $P84."name"($P85)
    find_lex $P87, "$stub_how"
    unless_null $P87, vivify_48
    new $P87, "Undef"
  vivify_48:
    set $S88, $P87
    iseq $I89, $S86, $S88
    new $P90, 'Integer'
    set $P90, $I89
    store_lex "$source_is_stub", $P90
.annotate 'line', 89
    find_lex $P91, "$sym"
    unless_null $P91, vivify_49
    new $P91, "Undef"
  vivify_49:
    find_lex $P92, "$target"
    unless_null $P92, vivify_50
    new $P92, "Undef"
  vivify_50:
    get_who $P93, $P92
    set $P94, $P93[$P91]
    unless_null $P94, vivify_51
    new $P94, "Undef"
  vivify_51:
    get_how $P95, $P94
    store_lex "$target_mo", $P95
.annotate 'line', 90
    find_lex $P96, "$target_mo"
    unless_null $P96, vivify_52
    new $P96, "Undef"
  vivify_52:
    get_what $P97, $P96
    get_how $P98, $P97
    find_lex $P99, "$target_mo"
    unless_null $P99, vivify_53
    new $P99, "Undef"
  vivify_53:
    $S100 = $P98."name"($P99)
    find_lex $P101, "$stub_how"
    unless_null $P101, vivify_54
    new $P101, "Undef"
  vivify_54:
    set $S102, $P101
    iseq $I103, $S100, $S102
    new $P104, 'Integer'
    set $P104, $I103
    store_lex "$target_is_stub", $P104
.annotate 'line', 91
    find_lex $P109, "$source_is_stub"
    unless_null $P109, vivify_55
    new $P109, "Undef"
  vivify_55:
    if $P109, if_108
    set $P107, $P109
    goto if_108_end
  if_108:
    find_lex $P110, "$target_is_stub"
    unless_null $P110, vivify_56
    new $P110, "Undef"
  vivify_56:
    set $P107, $P110
  if_108_end:
    if $P107, if_106
.annotate 'line', 96
    new $P118, 'String'
    set $P118, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P119, "$sym"
    unless_null $P119, vivify_57
    new $P119, "Undef"
  vivify_57:
    concat $P120, $P118, $P119
    die $P120
.annotate 'line', 95
    goto if_106_end
  if_106:
.annotate 'line', 93
    find_lex $P111, "$sym"
    unless_null $P111, vivify_58
    new $P111, "Undef"
  vivify_58:
    find_lex $P112, "$target"
    unless_null $P112, vivify_59
    new $P112, "Undef"
  vivify_59:
    get_who $P113, $P112
    set $P114, $P113[$P111]
    unless_null $P114, vivify_60
    new $P114, "Undef"
  vivify_60:
    find_lex $P115, "$_"
    unless_null $P115, vivify_61
    new $P115, "Undef"
  vivify_61:
    $P116 = $P115."value"()
    $P117 = "merge_globals"($P114, $P116)
.annotate 'line', 91
    set $P105, $P117
  if_106_end:
.annotate 'line', 86
    .return ($P105)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave" :anon :subid("16_1307873279.27498") :outer("11_1307873279.27498")
    .param pmc param_131
.annotate 'line', 5
    .lex "self", param_131
.annotate 'line', 7

                $P0 = getinterp
                $P132 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P132
.annotate 'line', 11
    new $P133, "Integer"
    assign $P133, 0
    store_dynamic_lex "$*CTXSAVE", $P133
.annotate 'line', 5
    .return ($P133)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_module" :anon :subid("17_1307873279.27498") :outer("11_1307873279.27498")
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139
.annotate 'line', 14
    .const 'Sub' $P231 = "22_1307873279.27498" 
    capture_lex $P231
    .const 'Sub' $P210 = "21_1307873279.27498" 
    capture_lex $P210
    .const 'Sub' $P184 = "20_1307873279.27498" 
    capture_lex $P184
    .const 'Sub' $P152 = "18_1307873279.27498" 
    capture_lex $P152
    new $P136, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P136, control_135
    push_eh $P136
    .lex "self", param_137
    .lex "$module_name", param_138
    .lex "$cur_GLOBALish", param_139
.annotate 'line', 18
    new $P140, "Undef"
    .lex "$module_ctx", $P140
.annotate 'line', 19
    new $P141, "Undef"
    .lex "$path", $P141
.annotate 'line', 20
    $P142 = root_new ['parrot';'ResizablePMCArray']
    .lex "@prefixes", $P142
.annotate 'line', 14
    find_lex $P143, "$module_ctx"
    unless_null $P143, vivify_67
    new $P143, "Undef"
  vivify_67:
.annotate 'line', 19
    find_lex $P144, "$module_name"
    unless_null $P144, vivify_68
    new $P144, "Undef"
  vivify_68:
    set $S145, $P144
    split $P146, "::", $S145
    join $S147, "/", $P146
    new $P148, 'String'
    set $P148, $S147
    concat $P149, $P148, ".pbc"
    store_lex "$path", $P149
.annotate 'line', 20
    new $P150, "ResizablePMCArray"
    store_lex "@prefixes", $P150
.annotate 'line', 21
    .const 'Sub' $P152 = "18_1307873279.27498" 
    capture_lex $P152
    $P152()
.annotate 'line', 34
    find_lex $P180, "@prefixes"
    unless_null $P180, vivify_80
    $P180 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    defined $I181, $P180
    unless $I181, for_undef_81
    iter $P179, $P180
    new $P199, 'ExceptionHandler'
    set_label $P199, loop198_handler
    $P199."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P199
  loop198_test:
    unless $P179, loop198_done
    shift $P182, $P179
  loop198_redo:
    .const 'Sub' $P184 = "20_1307873279.27498" 
    capture_lex $P184
    $P184($P182)
  loop198_next:
    goto loop198_test
  loop198_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P200, exception, 'type'
    eq $P200, .CONTROL_LOOP_NEXT, loop198_next
    eq $P200, .CONTROL_LOOP_REDO, loop198_redo
  loop198_done:
    pop_eh 
  for_undef_81:
.annotate 'line', 40
    find_lex $P202, "$path"
    unless_null $P202, vivify_86
    new $P202, "Undef"
  vivify_86:
    find_lex $P203, "%modules_loaded"
    unless_null $P203, vivify_87
    $P203 = root_new ['parrot';'Hash']
  vivify_87:
    set $P204, $P203[$P202]
    unless_null $P204, vivify_88
    new $P204, "Undef"
  vivify_88:
    defined $I205, $P204
    if $I205, if_201
.annotate 'line', 43
    .const 'Sub' $P210 = "21_1307873279.27498" 
    capture_lex $P210
    $P210()
    goto if_201_end
  if_201:
.annotate 'line', 41
    find_lex $P206, "$path"
    unless_null $P206, vivify_97
    new $P206, "Undef"
  vivify_97:
    find_lex $P207, "%modules_loaded"
    unless_null $P207, vivify_98
    $P207 = root_new ['parrot';'Hash']
  vivify_98:
    set $P208, $P207[$P206]
    unless_null $P208, vivify_99
    new $P208, "Undef"
  vivify_99:
    store_lex "$module_ctx", $P208
  if_201_end:
.annotate 'line', 53
    find_lex $P228, "$module_ctx"
    unless_null $P228, vivify_100
    new $P228, "Undef"
  vivify_100:
    defined $I229, $P228
    unless $I229, if_227_end
    .const 'Sub' $P231 = "22_1307873279.27498" 
    capture_lex $P231
    $P231()
  if_227_end:
.annotate 'line', 61
    new $P244, "Exception"
    set $P244['type'], .CONTROL_RETURN
    find_lex $P245, "$module_ctx"
    unless_null $P245, vivify_107
    new $P245, "Undef"
  vivify_107:
    setattribute $P244, 'payload', $P245
    throw $P244
.annotate 'line', 14
    .return ()
  control_135:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P246, exception, "payload"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block151"  :anon :subid("18_1307873279.27498") :outer("17_1307873279.27498")
.annotate 'line', 21
    .const 'Sub' $P171 = "19_1307873279.27498" 
    capture_lex $P171
    new $P167, 'ExceptionHandler'
    set_label $P167, control_166
    $P167."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P167
.annotate 'line', 22
    new $P153, "Undef"
    .lex "$prefix", $P153
    find_dynamic_lex $P156, "%*COMPILING"
    unless_null $P156, vivify_69
    get_hll_global $P154, "GLOBAL"
    get_who $P155, $P154
    set $P156, $P155["%COMPILING"]
    unless_null $P156, vivify_70
    die "Contextual %*COMPILING not found"
  vivify_70:
  vivify_69:
    set $P157, $P156["%?OPTIONS"]
    unless_null $P157, vivify_71
    $P157 = root_new ['parrot';'Hash']
  vivify_71:
    set $P158, $P157["module-path"]
    unless_null $P158, vivify_72
    new $P158, "Undef"
  vivify_72:
    store_lex "$prefix", $P158
.annotate 'line', 23
    find_lex $P160, "$prefix"
    unless_null $P160, vivify_73
    new $P160, "Undef"
  vivify_73:
    if $P160, if_159
.annotate 'line', 26
    find_lex $P163, "@prefixes"
    unless_null $P163, vivify_74
    $P163 = root_new ['parrot';'ResizablePMCArray']
  vivify_74:
    push $P163, "."
.annotate 'line', 27
    find_lex $P164, "@prefixes"
    unless_null $P164, vivify_75
    $P164 = root_new ['parrot';'ResizablePMCArray']
  vivify_75:
    push $P164, "blib"
.annotate 'line', 25
    goto if_159_end
  if_159:
.annotate 'line', 24
    find_lex $P161, "@prefixes"
    unless_null $P161, vivify_76
    $P161 = root_new ['parrot';'ResizablePMCArray']
  vivify_76:
    find_lex $P162, "$prefix"
    unless_null $P162, vivify_77
    new $P162, "Undef"
  vivify_77:
    push $P161, $P162
  if_159_end:
.annotate 'line', 21
    pop_eh 
    goto skip_handler_165
  control_166:
.annotate 'line', 29
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P171 = "19_1307873279.27498" 
    newclosure $P176, $P171
    $P176(exception)
    new $P177, 'Integer'
    set $P177, 1
    set exception["handled"], $P177
    set $I178, exception["handled"]
    ne $I178, 1, nothandled_169
  handled_168:
    .return (exception)
  nothandled_169:
    rethrow exception
  skip_handler_165:
.annotate 'line', 21
    .return ()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block170"  :anon :subid("19_1307873279.27498") :outer("18_1307873279.27498")
    .param pmc param_172
.annotate 'line', 29
    .lex "$_", param_172
    find_lex $P173, "$_"
    .lex "$!", $P173
.annotate 'line', 30
    find_lex $P174, "@prefixes"
    unless_null $P174, vivify_78
    $P174 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    push $P174, "."
.annotate 'line', 31
    find_lex $P175, "@prefixes"
    unless_null $P175, vivify_79
    $P175 = root_new ['parrot';'ResizablePMCArray']
  vivify_79:
    push $P175, "blib"
.annotate 'line', 29
    .return ($P175)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block183"  :anon :subid("20_1307873279.27498") :outer("17_1307873279.27498")
    .param pmc param_185
.annotate 'line', 34
    .lex "$prefix", param_185
.annotate 'line', 35
    find_lex $P188, "$prefix"
    unless_null $P188, vivify_82
    new $P188, "Undef"
  vivify_82:
    concat $P189, $P188, "/"
    find_lex $P190, "$path"
    unless_null $P190, vivify_83
    new $P190, "Undef"
  vivify_83:
    concat $P191, $P189, $P190
    set $S192, $P191
    stat $I193, $S192, 0
    if $I193, if_187
    new $P186, 'Integer'
    set $P186, $I193
    goto if_187_end
  if_187:
.annotate 'line', 36
    find_lex $P194, "$prefix"
    unless_null $P194, vivify_84
    new $P194, "Undef"
  vivify_84:
    concat $P195, $P194, "/"
    find_lex $P196, "$path"
    unless_null $P196, vivify_85
    new $P196, "Undef"
  vivify_85:
    concat $P197, $P195, $P196
    store_lex "$path", $P197
.annotate 'line', 37
    die 0, .CONTROL_LOOP_LAST
  if_187_end:
.annotate 'line', 34
    .return ($P186)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block209"  :anon :subid("21_1307873279.27498") :outer("17_1307873279.27498")
.annotate 'line', 44
    new $P211, "Undef"
    .lex "$*CTXSAVE", $P211
.annotate 'line', 45
    new $P212, "Undef"
    .lex "$*MAIN_CTX", $P212
.annotate 'line', 46
    new $P213, "Undef"
    .lex "$preserve_global", $P213
.annotate 'line', 44
    find_lex $P214, "self"
    store_lex "$*CTXSAVE", $P214
    find_lex $P217, "$*MAIN_CTX"
    unless_null $P217, vivify_89
    get_hll_global $P215, "GLOBAL"
    get_who $P216, $P215
    set $P217, $P216["$MAIN_CTX"]
    unless_null $P217, vivify_90
    die "Contextual $*MAIN_CTX not found"
  vivify_90:
  vivify_89:
.annotate 'line', 46
    get_hll_global $P218, "GLOBAL"
    store_lex "$preserve_global", $P218
.annotate 'line', 47
    find_lex $P219, "$path"
    unless_null $P219, vivify_91
    new $P219, "Undef"
  vivify_91:
    set $S220, $P219
    load_bytecode $S220
.annotate 'line', 48
    find_lex $P221, "$preserve_global"
    unless_null $P221, vivify_92
    new $P221, "Undef"
  vivify_92:
    set_hll_global "GLOBAL", $P221
.annotate 'line', 49
    find_lex $P224, "$*MAIN_CTX"
    unless_null $P224, vivify_93
    get_hll_global $P222, "GLOBAL"
    get_who $P223, $P222
    set $P224, $P223["$MAIN_CTX"]
    unless_null $P224, vivify_94
    die "Contextual $*MAIN_CTX not found"
  vivify_94:
  vivify_93:
    store_lex "$module_ctx", $P224
    find_lex $P225, "$path"
    unless_null $P225, vivify_95
    new $P225, "Undef"
  vivify_95:
    find_lex $P226, "%modules_loaded"
    unless_null $P226, vivify_96
    $P226 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P226
  vivify_96:
    set $P226[$P225], $P224
.annotate 'line', 43
    .return ($P224)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block230"  :anon :subid("22_1307873279.27498") :outer("17_1307873279.27498")
.annotate 'line', 55
    new $P232, "Undef"
    .lex "$UNIT", $P232
    find_lex $P233, "$module_ctx"
    unless_null $P233, vivify_101
    new $P233, "Undef"
  vivify_101:
    getattribute $P234, $P233, "lex_pad"
    store_lex "$UNIT", $P234
.annotate 'line', 56
    find_lex $P237, "$UNIT"
    unless_null $P237, vivify_102
    $P237 = root_new ['parrot';'Hash']
  vivify_102:
    set $P238, $P237["GLOBALish"]
    unless_null $P238, vivify_103
    new $P238, "Undef"
  vivify_103:
    isnull $I239, $P238
    unless $I239, unless_236
    new $P235, 'Integer'
    set $P235, $I239
    goto unless_236_end
  unless_236:
.annotate 'line', 57
    find_lex $P240, "$cur_GLOBALish"
    unless_null $P240, vivify_104
    new $P240, "Undef"
  vivify_104:
    find_lex $P241, "$UNIT"
    unless_null $P241, vivify_105
    $P241 = root_new ['parrot';'Hash']
  vivify_105:
    set $P242, $P241["GLOBALish"]
    unless_null $P242, vivify_106
    new $P242, "Undef"
  vivify_106:
    $P243 = "merge_globals"($P240, $P242)
.annotate 'line', 56
    set $P235, $P243
  unless_236_end:
.annotate 'line', 53
    .return ($P235)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting" :anon :subid("23_1307873279.27498") :outer("11_1307873279.27498")
    .param pmc param_252
    .param pmc param_253
.annotate 'line', 102
    .const 'Sub' $P261 = "24_1307873279.27498" 
    capture_lex $P261
    new $P251, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P251, control_250
    push_eh $P251
    .lex "self", param_252
    .lex "$setting_name", param_253
.annotate 'line', 103
    new $P254, "Undef"
    .lex "$setting", $P254
.annotate 'line', 102
    find_lex $P255, "$setting"
    unless_null $P255, vivify_108
    new $P255, "Undef"
  vivify_108:
.annotate 'line', 105
    find_lex $P257, "$setting_name"
    unless_null $P257, vivify_109
    new $P257, "Undef"
  vivify_109:
    set $S258, $P257
    isne $I259, $S258, "NULL"
    unless $I259, if_256_end
    .const 'Sub' $P261 = "24_1307873279.27498" 
    capture_lex $P261
    $P261()
  if_256_end:
.annotate 'line', 131
    new $P322, "Exception"
    set $P322['type'], .CONTROL_RETURN
    find_lex $P323, "$setting"
    unless_null $P323, vivify_135
    new $P323, "Undef"
  vivify_135:
    setattribute $P322, 'payload', $P323
    throw $P322
.annotate 'line', 102
    .return ()
  control_250:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P324, exception, "payload"
    .return ($P324)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block260"  :anon :subid("24_1307873279.27498") :outer("23_1307873279.27498")
.annotate 'line', 105
    .const 'Sub' $P293 = "26_1307873279.27498" 
    capture_lex $P293
    .const 'Sub' $P266 = "25_1307873279.27498" 
    capture_lex $P266
.annotate 'line', 107
    new $P262, "Undef"
    .lex "$path", $P262
    find_lex $P263, "$setting_name"
    unless_null $P263, vivify_110
    new $P263, "Undef"
  vivify_110:
    concat $P264, $P263, ".setting.pbc"
    store_lex "$path", $P264
.annotate 'line', 108
    .const 'Sub' $P266 = "25_1307873279.27498" 
    capture_lex $P266
    $P266()
.annotate 'line', 116
    find_lex $P288, "$path"
    unless_null $P288, vivify_118
    new $P288, "Undef"
  vivify_118:
    find_lex $P289, "%settings_loaded"
    unless_null $P289, vivify_119
    $P289 = root_new ['parrot';'Hash']
  vivify_119:
    set $P290, $P289[$P288]
    unless_null $P290, vivify_120
    new $P290, "Undef"
  vivify_120:
    defined $I291, $P290
    if $I291, unless_287_end
    .const 'Sub' $P293 = "26_1307873279.27498" 
    capture_lex $P293
    $P293()
  unless_287_end:
.annotate 'line', 128
    find_lex $P319, "$path"
    unless_null $P319, vivify_132
    new $P319, "Undef"
  vivify_132:
    find_lex $P320, "%settings_loaded"
    unless_null $P320, vivify_133
    $P320 = root_new ['parrot';'Hash']
  vivify_133:
    set $P321, $P320[$P319]
    unless_null $P321, vivify_134
    new $P321, "Undef"
  vivify_134:
    store_lex "$setting", $P321
.annotate 'line', 105
    .return ($P321)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block265"  :anon :subid("25_1307873279.27498") :outer("24_1307873279.27498")
.annotate 'line', 108
    new $P282, 'ExceptionHandler'
    set_label $P282, control_281
    $P282."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P282
.annotate 'line', 109
    new $P267, "Undef"
    .lex "$prefix", $P267
    find_dynamic_lex $P270, "%*COMPILING"
    unless_null $P270, vivify_111
    get_hll_global $P268, "GLOBAL"
    get_who $P269, $P268
    set $P270, $P269["%COMPILING"]
    unless_null $P270, vivify_112
    die "Contextual %*COMPILING not found"
  vivify_112:
  vivify_111:
    set $P271, $P270["%?OPTIONS"]
    unless_null $P271, vivify_113
    $P271 = root_new ['parrot';'Hash']
  vivify_113:
    set $P272, $P271["setting-path"]
    unless_null $P272, vivify_114
    new $P272, "Undef"
  vivify_114:
    store_lex "$prefix", $P272
.annotate 'line', 110
    find_lex $P275, "$prefix"
    unless_null $P275, vivify_115
    new $P275, "Undef"
  vivify_115:
    if $P275, if_274
    set $P273, $P275
    goto if_274_end
  if_274:
.annotate 'line', 111
    find_lex $P276, "$prefix"
    unless_null $P276, vivify_116
    new $P276, "Undef"
  vivify_116:
    concat $P277, $P276, "/"
    find_lex $P278, "$path"
    unless_null $P278, vivify_117
    new $P278, "Undef"
  vivify_117:
    concat $P279, $P277, $P278
    store_lex "$path", $P279
.annotate 'line', 110
    set $P273, $P279
  if_274_end:
.annotate 'line', 108
    pop_eh 
    goto skip_handler_280
  control_281:
    .local pmc exception 
    .get_results (exception) 
    new $P285, 'Integer'
    set $P285, 1
    set exception["handled"], $P285
    set $I286, exception["handled"]
    ne $I286, 1, nothandled_284
  handled_283:
    .return (exception)
  nothandled_284:
    rethrow exception
  skip_handler_280:
    .return ($P273)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block292"  :anon :subid("26_1307873279.27498") :outer("24_1307873279.27498")
.annotate 'line', 117
    new $P294, "Undef"
    .lex "$*CTXSAVE", $P294
.annotate 'line', 118
    new $P295, "Undef"
    .lex "$*MAIN_CTX", $P295
.annotate 'line', 119
    new $P296, "Undef"
    .lex "$preserve_global", $P296
.annotate 'line', 117
    find_lex $P297, "self"
    store_lex "$*CTXSAVE", $P297
    find_lex $P300, "$*MAIN_CTX"
    unless_null $P300, vivify_121
    get_hll_global $P298, "GLOBAL"
    get_who $P299, $P298
    set $P300, $P299["$MAIN_CTX"]
    unless_null $P300, vivify_122
    die "Contextual $*MAIN_CTX not found"
  vivify_122:
  vivify_121:
.annotate 'line', 119
    get_hll_global $P301, "GLOBAL"
    store_lex "$preserve_global", $P301
.annotate 'line', 120
    find_lex $P302, "$path"
    unless_null $P302, vivify_123
    new $P302, "Undef"
  vivify_123:
    set $S303, $P302
    load_bytecode $S303
.annotate 'line', 121
    find_lex $P304, "$preserve_global"
    unless_null $P304, vivify_124
    new $P304, "Undef"
  vivify_124:
    set_hll_global "GLOBAL", $P304
.annotate 'line', 122
    find_lex $P308, "$*MAIN_CTX"
    unless_null $P308, vivify_125
    get_hll_global $P306, "GLOBAL"
    get_who $P307, $P306
    set $P308, $P307["$MAIN_CTX"]
    unless_null $P308, vivify_126
    die "Contextual $*MAIN_CTX not found"
  vivify_126:
  vivify_125:
    defined $I309, $P308
    if $I309, unless_305_end
.annotate 'line', 123
    new $P310, 'String'
    set $P310, "Unable to load setting "
    find_lex $P311, "$setting_name"
    unless_null $P311, vivify_127
    new $P311, "Undef"
  vivify_127:
    concat $P312, $P310, $P311
    concat $P313, $P312, "; maybe it is missing a YOU_ARE_HERE?"
    die $P313
  unless_305_end:
.annotate 'line', 125
    find_lex $P316, "$*MAIN_CTX"
    unless_null $P316, vivify_128
    get_hll_global $P314, "GLOBAL"
    get_who $P315, $P314
    set $P316, $P315["$MAIN_CTX"]
    unless_null $P316, vivify_129
    die "Contextual $*MAIN_CTX not found"
  vivify_129:
  vivify_128:
    find_lex $P317, "$path"
    unless_null $P317, vivify_130
    new $P317, "Undef"
  vivify_130:
    find_lex $P318, "%settings_loaded"
    unless_null $P318, vivify_131
    $P318 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P318
  vivify_131:
    set $P318[$P317], $P316
.annotate 'line', 116
    .return ($P316)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module" :anon :subid("27_1307873279.27498") :outer("11_1307873279.27498")
    .param pmc param_326
    .param pmc param_327
.annotate 'line', 136
    .lex "self", param_326
    .lex "$mainline_ctx", param_327
.annotate 'line', 139
    new $P328, "Undef"
    .lex "$module_name", $P328
    getinterp $P329
    set $P330, $P329[2]
    unless_null $P330, vivify_136
    $P330 = root_new ['parrot';'ResizablePMCArray']
  vivify_136:
    set $P331, $P330[0]
    unless_null $P331, vivify_137
    new $P331, "Undef"
  vivify_137:
    store_lex "$module_name", $P331
.annotate 'line', 140
    find_lex $P333, "$module_name"
    unless_null $P333, vivify_138
    new $P333, "Undef"
  vivify_138:
    set $S334, $P333
    substr $S335, $S334, 0, 2
    iseq $I336, $S335, "./"
    unless $I336, if_332_end
.annotate 'line', 141
    find_lex $P337, "$module_name"
    unless_null $P337, vivify_139
    new $P337, "Undef"
  vivify_139:
    set $S338, $P337
    find_lex $P339, "$module_name"
    unless_null $P339, vivify_140
    new $P339, "Undef"
  vivify_140:
    set $S340, $P339
    length $I341, $S340
    new $P342, 'Integer'
    set $P342, $I341
    sub $P343, $P342, 2
    set $I344, $P343
    substr $S345, $S338, 2, $I344
    new $P346, 'String'
    set $P346, $S345
    store_lex "$module_name", $P346
  if_332_end:
.annotate 'line', 143
    find_lex $P348, "$module_name"
    unless_null $P348, vivify_141
    new $P348, "Undef"
  vivify_141:
    set $S349, $P348
    find_lex $P350, "$module_name"
    unless_null $P350, vivify_142
    new $P350, "Undef"
  vivify_142:
    set $S351, $P350
    length $I352, $S351
    new $P353, 'Integer'
    set $P353, $I352
    sub $P354, $P353, 4
    set $I355, $P354
    substr $S356, $S349, $I355, 4
    iseq $I357, $S356, ".pbc"
    if $I357, if_347
.annotate 'line', 146
    find_lex $P359, "$module_name"
    unless_null $P359, vivify_143
    new $P359, "Undef"
  vivify_143:
    set $S360, $P359
    find_lex $P361, "$module_name"
    unless_null $P361, vivify_144
    new $P361, "Undef"
  vivify_144:
    set $S362, $P361
    length $I363, $S362
    new $P364, 'Integer'
    set $P364, $I363
    sub $P365, $P364, 4
    set $I366, $P365
    substr $S367, $S360, $I366, 4
    iseq $I368, $S367, ".exe"
    if $I368, if_358
.annotate 'line', 151
    find_lex $P380, "$module_name"
    unless_null $P380, vivify_145
    new $P380, "Undef"
  vivify_145:
    concat $P381, $P380, ".pbc"
    store_lex "$module_name", $P381
.annotate 'line', 150
    goto if_358_end
  if_358:
.annotate 'line', 148
    find_lex $P369, "$module_name"
    unless_null $P369, vivify_146
    new $P369, "Undef"
  vivify_146:
    set $S370, $P369
    find_lex $P371, "$module_name"
    unless_null $P371, vivify_147
    new $P371, "Undef"
  vivify_147:
    set $S372, $P371
    length $I373, $S372
    new $P374, 'Integer'
    set $P374, $I373
    sub $P375, $P374, 3
    set $I376, $P375
    substr $S377, $S370, 0, $I376
    new $P378, 'String'
    set $P378, $S377
    concat $P379, $P378, "pbc"
    store_lex "$module_name", $P379
  if_358_end:
.annotate 'line', 146
    goto if_347_end
  if_347:
  if_347_end:
.annotate 'line', 155
    find_lex $P382, "$mainline_ctx"
    unless_null $P382, vivify_148
    new $P382, "Undef"
  vivify_148:
    find_lex $P383, "$module_name"
    unless_null $P383, vivify_149
    new $P383, "Undef"
  vivify_149:
    find_lex $P384, "%modules_loaded"
    unless_null $P384, vivify_150
    $P384 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P384
  vivify_150:
    set $P384[$P383], $P382
.annotate 'line', 136
    .return ($P382)
.end


.HLL "nqp"

.namespace []
.sub "_block394" :load :anon :subid("28_1307873279.27498")
.annotate 'line', 1
    .const 'Sub' $P396 = "10_1307873279.27498" 
    $P397 = $P396()
    .return ($P397)
.end

