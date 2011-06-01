
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1306916533.54814")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P18 = "11_1306916533.54814" 
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
    .const 'Sub' $P18 = "11_1306916533.54814" 
    capture_lex $P18
    $P18()
.annotate 'line', 147
    find_lex $P356, "ModuleLoader"
    set_hll_global "ModuleLoader", $P356
    find_lex $P359, "@ARGS"
    if $P359, if_358
    set $P357, $P359
    goto if_358_end
  if_358:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P360, "ModuleLoader"
    getinterp $P361
    set $P362, $P361["context"]
    $P363 = $P360."set_mainline_module"($P362)
    set $P357, $P363
  if_358_end:
.annotate 'line', 1
    .return ($P357)
    .const 'Sub' $P365 = "26_1306916533.54814" 
    .return ($P365)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post27") :outer("10_1306916533.54814")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1306916533.54814" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P369, "1306916532.85303"
    isnull $I370, $P369
    if $I370, if_368
    .const 'Sub' $P426 = "10_1306916533.54814" 
    $P427 = $P426."get_lexinfo"()
    nqp_get_sc_object $P428, "1306916532.85303", 0
    $P427."set_static_lexpad_value"("GLOBALish", $P428)
    .const 'Sub' $P429 = "10_1306916533.54814" 
    $P430 = $P429."get_lexinfo"()
    $P430."finish_static_lexpad"()
    .const 'Sub' $P431 = "10_1306916533.54814" 
    $P432 = $P431."get_lexinfo"()
    nqp_get_sc_object $P433, "1306916532.85303", 0
    $P432."set_static_lexpad_value"("$?PACKAGE", $P433)
    .const 'Sub' $P434 = "10_1306916533.54814" 
    $P435 = $P434."get_lexinfo"()
    $P435."finish_static_lexpad"()
    .const 'Sub' $P436 = "10_1306916533.54814" 
    $P437 = $P436."get_lexinfo"()
    nqp_get_sc_object $P438, "1306916532.85303", 1
    $P437."set_static_lexpad_value"("ModuleLoader", $P438)
    .const 'Sub' $P439 = "10_1306916533.54814" 
    $P440 = $P439."get_lexinfo"()
    $P440."finish_static_lexpad"()
    nqp_get_sc_object $P441, "1306916532.85303", 2
    .const 'Sub' $P442 = "16_1306916533.54814" 
    assign $P441, $P442
    nqp_get_sc_object $P443, "1306916532.85303", 3
    .const 'Sub' $P444 = "17_1306916533.54814" 
    assign $P443, $P444
    nqp_get_sc_object $P445, "1306916532.85303", 4
    .const 'Sub' $P446 = "21_1306916533.54814" 
    assign $P445, $P446
    nqp_get_sc_object $P447, "1306916532.85303", 5
    .const 'Sub' $P448 = "25_1306916533.54814" 
    assign $P447, $P448
    .const 'Sub' $P449 = "11_1306916533.54814" 
    $P450 = $P449."get_lexinfo"()
    nqp_get_sc_object $P451, "1306916532.85303", 1
    $P450."set_static_lexpad_value"("$?PACKAGE", $P451)
    .const 'Sub' $P452 = "11_1306916533.54814" 
    $P453 = $P452."get_lexinfo"()
    $P453."finish_static_lexpad"()
    .const 'Sub' $P454 = "11_1306916533.54814" 
    $P455 = $P454."get_lexinfo"()
    nqp_get_sc_object $P456, "1306916532.85303", 1
    $P455."set_static_lexpad_value"("$?CLASS", $P456)
    .const 'Sub' $P457 = "11_1306916533.54814" 
    $P458 = $P457."get_lexinfo"()
    $P458."finish_static_lexpad"()
    goto if_368_end
  if_368:
    nqp_dynop_setup 
    getinterp $P371
    get_class $P372, "LexPad"
    get_class $P373, "NQPLexPad"
    $P371."hll_map"($P372, $P373)
    nqp_create_sc $P374, "1306916532.85303"
    .local pmc cur_sc
    set cur_sc, $P374
    nqp_get_sc_object $P375, "__6MODEL_CORE__", 0
    $P376 = $P375."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P376, cur_sc
    nqp_set_sc_object "1306916532.85303", 0, $P376
    .const 'Sub' $P377 = "10_1306916533.54814" 
    $P378 = $P377."get_lexinfo"()
    nqp_get_sc_object $P379, "1306916532.85303", 0
    $P378."set_static_lexpad_value"("GLOBALish", $P379)
    .const 'Sub' $P380 = "10_1306916533.54814" 
    $P381 = $P380."get_lexinfo"()
    $P381."finish_static_lexpad"()
    .const 'Sub' $P382 = "10_1306916533.54814" 
    $P383 = $P382."get_lexinfo"()
    nqp_get_sc_object $P384, "1306916532.85303", 0
    $P383."set_static_lexpad_value"("$?PACKAGE", $P384)
    .const 'Sub' $P385 = "10_1306916533.54814" 
    $P386 = $P385."get_lexinfo"()
    $P386."finish_static_lexpad"()
    nqp_get_sc_object $P387, "__6MODEL_CORE__", 0
    $P388 = $P387."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P388, cur_sc
    nqp_set_sc_object "1306916532.85303", 1, $P388
    nqp_get_sc_object $P389, "1306916532.85303", 1
    nqp_get_sc_object $P390, "1306916532.85303", 0
    get_who $P391, $P390
    set $P391["ModuleLoader"], $P389
    .const 'Sub' $P392 = "10_1306916533.54814" 
    $P393 = $P392."get_lexinfo"()
    nqp_get_sc_object $P394, "1306916532.85303", 1
    $P393."set_static_lexpad_value"("ModuleLoader", $P394)
    .const 'Sub' $P395 = "10_1306916533.54814" 
    $P396 = $P395."get_lexinfo"()
    $P396."finish_static_lexpad"()
    nqp_get_sc_object $P397, "1306916532.85303", 1
    get_how $P398, $P397
    nqp_get_sc_object $P399, "1306916532.85303", 1
    .const 'Sub' $P400 = "16_1306916533.54814" 
    $P398."add_method"($P399, "ctxsave", $P400)
    nqp_get_sc_object $P401, "1306916532.85303", 1
    get_how $P402, $P401
    nqp_get_sc_object $P403, "1306916532.85303", 1
    .const 'Sub' $P404 = "17_1306916533.54814" 
    $P402."add_method"($P403, "load_module", $P404)
    nqp_get_sc_object $P405, "1306916532.85303", 1
    get_how $P406, $P405
    nqp_get_sc_object $P407, "1306916532.85303", 1
    .const 'Sub' $P408 = "21_1306916533.54814" 
    $P406."add_method"($P407, "load_setting", $P408)
    nqp_get_sc_object $P409, "1306916532.85303", 1
    get_how $P410, $P409
    nqp_get_sc_object $P411, "1306916532.85303", 1
    .const 'Sub' $P412 = "25_1306916533.54814" 
    $P410."add_method"($P411, "set_mainline_module", $P412)
    .const 'Sub' $P413 = "11_1306916533.54814" 
    $P414 = $P413."get_lexinfo"()
    nqp_get_sc_object $P415, "1306916532.85303", 1
    $P414."set_static_lexpad_value"("$?PACKAGE", $P415)
    .const 'Sub' $P416 = "11_1306916533.54814" 
    $P417 = $P416."get_lexinfo"()
    $P417."finish_static_lexpad"()
    .const 'Sub' $P418 = "11_1306916533.54814" 
    $P419 = $P418."get_lexinfo"()
    nqp_get_sc_object $P420, "1306916532.85303", 1
    $P419."set_static_lexpad_value"("$?CLASS", $P420)
    .const 'Sub' $P421 = "11_1306916533.54814" 
    $P422 = $P421."get_lexinfo"()
    $P422."finish_static_lexpad"()
    nqp_get_sc_object $P423, "1306916532.85303", 1
    get_how $P424, $P423
    nqp_get_sc_object $P425, "1306916532.85303", 1
    $P424."compose"($P425)
  if_368_end:
    nqp_get_sc_object $P459, "1306916532.85303", 0
    set_hll_global "GLOBAL", $P459
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block17"  :subid("11_1306916533.54814") :outer("10_1306916533.54814")
.annotate 'line', 1
    .const 'Sub' $P295 = "25_1306916533.54814" 
    capture_lex $P295
    .const 'Sub' $P219 = "21_1306916533.54814" 
    capture_lex $P219
    .const 'Sub' $P134 = "17_1306916533.54814" 
    capture_lex $P134
    .const 'Sub' $P130 = "16_1306916533.54814" 
    capture_lex $P130
    .const 'Sub' $P22 = "12_1306916533.54814" 
    capture_lex $P22
.annotate 'line', 2
    $P19 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P19
.annotate 'line', 3
    $P20 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P20
.annotate 'line', 55
    new $P21, "Undef"
    .lex "$stub_how", $P21
.annotate 'line', 56
    .const 'Sub' $P22 = "12_1306916533.54814" 
    newclosure $P125, $P22
    .lex "merge_globals", $P125
.annotate 'line', 55
    .lex "$?PACKAGE", $P126
    .lex "$?CLASS", $P127
.annotate 'line', 1
    find_lex $P128, "%modules_loaded"
    unless_null $P128, vivify_63
    $P128 = root_new ['parrot';'Hash']
  vivify_63:
    find_lex $P129, "%settings_loaded"
    unless_null $P129, vivify_64
    $P129 = root_new ['parrot';'Hash']
  vivify_64:
.annotate 'line', 55
    new $P217, "String"
    assign $P217, "KnowHOW"
    store_lex "$stub_how", $P217
    find_lex $P218, "merge_globals"
.annotate 'line', 122
    .const 'Sub' $P295 = "25_1306916533.54814" 
    newclosure $P355, $P295
.annotate 'line', 1
    .return ($P355)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1306916533.54814") :outer("11_1306916533.54814")
    .param pmc param_23
    .param pmc param_24
.annotate 'line', 56
    .const 'Sub' $P48 = "14_1306916533.54814" 
    capture_lex $P48
    .const 'Sub' $P33 = "13_1306916533.54814" 
    capture_lex $P33
    .lex "$target", param_23
    .lex "$source", param_24
.annotate 'line', 60
    $P25 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P25
.annotate 'line', 56
    find_lex $P26, "%known_symbols"
    unless_null $P26, vivify_28
    $P26 = root_new ['parrot';'Hash']
  vivify_28:
.annotate 'line', 61
    find_lex $P28, "$target"
    unless_null $P28, vivify_29
    new $P28, "Undef"
  vivify_29:
    get_who $P29, $P28
    defined $I30, $P29
    unless $I30, for_undef_30
    iter $P27, $P29
    new $P40, 'ExceptionHandler'
    set_label $P40, loop39_handler
    $P40."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P40
  loop39_test:
    unless $P27, loop39_done
    shift $P31, $P27
  loop39_redo:
    .const 'Sub' $P33 = "13_1306916533.54814" 
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
  for_undef_30:
.annotate 'line', 64
    find_lex $P43, "$source"
    unless_null $P43, vivify_33
    new $P43, "Undef"
  vivify_33:
    get_who $P44, $P43
    defined $I45, $P44
    unless $I45, for_undef_34
    iter $P42, $P44
    new $P123, 'ExceptionHandler'
    set_label $P123, loop122_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop122_test:
    unless $P42, loop122_done
    shift $P46, $P42
  loop122_redo:
    .const 'Sub' $P48 = "14_1306916533.54814" 
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
  for_undef_34:
.annotate 'line', 56
    .return ($P42)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block32"  :anon :subid("13_1306916533.54814") :outer("12_1306916533.54814")
    .param pmc param_34
.annotate 'line', 61
    .lex "$_", param_34
.annotate 'line', 62
    new $P35, "Integer"
    assign $P35, 1
    find_lex $P36, "$_"
    unless_null $P36, vivify_31
    new $P36, "Undef"
  vivify_31:
    $P37 = $P36."key"()
    find_lex $P38, "%known_symbols"
    unless_null $P38, vivify_32
    $P38 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P38
  vivify_32:
    set $P38[$P37], $P35
.annotate 'line', 61
    .return ($P35)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block47"  :anon :subid("14_1306916533.54814") :outer("12_1306916533.54814")
    .param pmc param_50
.annotate 'line', 64
    .const 'Sub' $P74 = "15_1306916533.54814" 
    capture_lex $P74
.annotate 'line', 65
    new $P49, "Undef"
    .lex "$sym", $P49
    .lex "$_", param_50
    find_lex $P51, "$_"
    unless_null $P51, vivify_35
    new $P51, "Undef"
  vivify_35:
    $P52 = $P51."key"()
    store_lex "$sym", $P52
.annotate 'line', 66
    find_lex $P55, "$sym"
    unless_null $P55, vivify_36
    new $P55, "Undef"
  vivify_36:
    find_lex $P56, "%known_symbols"
    unless_null $P56, vivify_37
    $P56 = root_new ['parrot';'Hash']
  vivify_37:
    set $P57, $P56[$P55]
    unless_null $P57, vivify_38
    new $P57, "Undef"
  vivify_38:
    isfalse $I58, $P57
    if $I58, if_54
.annotate 'line', 69
    find_lex $P66, "$sym"
    unless_null $P66, vivify_39
    new $P66, "Undef"
  vivify_39:
    find_lex $P67, "$target"
    unless_null $P67, vivify_40
    new $P67, "Undef"
  vivify_40:
    get_who $P68, $P67
    set $P69, $P68[$P66]
    unless_null $P69, vivify_41
    new $P69, "Undef"
  vivify_41:
    find_lex $P70, "$_"
    unless_null $P70, vivify_42
    new $P70, "Undef"
  vivify_42:
    $P71 = $P70."value"()
    issame $I72, $P69, $P71
    if $I72, if_65
.annotate 'line', 72
    .const 'Sub' $P74 = "15_1306916533.54814" 
    capture_lex $P74
    $P121 = $P74()
    set $P64, $P121
.annotate 'line', 69
    goto if_65_end
  if_65:
  if_65_end:
    set $P53, $P64
.annotate 'line', 66
    goto if_54_end
  if_54:
.annotate 'line', 67
    find_lex $P59, "$_"
    unless_null $P59, vivify_60
    new $P59, "Undef"
  vivify_60:
    $P60 = $P59."value"()
    find_lex $P61, "$sym"
    unless_null $P61, vivify_61
    new $P61, "Undef"
  vivify_61:
    find_lex $P62, "$target"
    unless_null $P62, vivify_62
    new $P62, "Undef"
    store_lex "$target", $P62
  vivify_62:
    get_who $P63, $P62
    set $P63[$P61], $P60
.annotate 'line', 66
    set $P53, $P60
  if_54_end:
.annotate 'line', 64
    .return ($P53)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block73"  :anon :subid("15_1306916533.54814") :outer("14_1306916533.54814")
.annotate 'line', 73
    new $P75, "Undef"
    .lex "$source_mo", $P75
.annotate 'line', 74
    new $P76, "Undef"
    .lex "$source_is_stub", $P76
.annotate 'line', 75
    new $P77, "Undef"
    .lex "$target_mo", $P77
.annotate 'line', 76
    new $P78, "Undef"
    .lex "$target_is_stub", $P78
.annotate 'line', 73
    find_lex $P79, "$_"
    unless_null $P79, vivify_43
    new $P79, "Undef"
  vivify_43:
    $P80 = $P79."value"()
    get_how $P81, $P80
    store_lex "$source_mo", $P81
.annotate 'line', 74
    find_lex $P82, "$source_mo"
    unless_null $P82, vivify_44
    new $P82, "Undef"
  vivify_44:
    get_what $P83, $P82
    get_how $P84, $P83
    find_lex $P85, "$source_mo"
    unless_null $P85, vivify_45
    new $P85, "Undef"
  vivify_45:
    $S86 = $P84."name"($P85)
    find_lex $P87, "$stub_how"
    unless_null $P87, vivify_46
    new $P87, "Undef"
  vivify_46:
    set $S88, $P87
    iseq $I89, $S86, $S88
    new $P90, 'Integer'
    set $P90, $I89
    store_lex "$source_is_stub", $P90
.annotate 'line', 75
    find_lex $P91, "$sym"
    unless_null $P91, vivify_47
    new $P91, "Undef"
  vivify_47:
    find_lex $P92, "$target"
    unless_null $P92, vivify_48
    new $P92, "Undef"
  vivify_48:
    get_who $P93, $P92
    set $P94, $P93[$P91]
    unless_null $P94, vivify_49
    new $P94, "Undef"
  vivify_49:
    get_how $P95, $P94
    store_lex "$target_mo", $P95
.annotate 'line', 76
    find_lex $P96, "$target_mo"
    unless_null $P96, vivify_50
    new $P96, "Undef"
  vivify_50:
    get_what $P97, $P96
    get_how $P98, $P97
    find_lex $P99, "$target_mo"
    unless_null $P99, vivify_51
    new $P99, "Undef"
  vivify_51:
    $S100 = $P98."name"($P99)
    find_lex $P101, "$stub_how"
    unless_null $P101, vivify_52
    new $P101, "Undef"
  vivify_52:
    set $S102, $P101
    iseq $I103, $S100, $S102
    new $P104, 'Integer'
    set $P104, $I103
    store_lex "$target_is_stub", $P104
.annotate 'line', 77
    find_lex $P109, "$source_is_stub"
    unless_null $P109, vivify_53
    new $P109, "Undef"
  vivify_53:
    if $P109, if_108
    set $P107, $P109
    goto if_108_end
  if_108:
    find_lex $P110, "$target_is_stub"
    unless_null $P110, vivify_54
    new $P110, "Undef"
  vivify_54:
    set $P107, $P110
  if_108_end:
    if $P107, if_106
.annotate 'line', 82
    new $P118, 'String'
    set $P118, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P119, "$sym"
    unless_null $P119, vivify_55
    new $P119, "Undef"
  vivify_55:
    concat $P120, $P118, $P119
    die $P120
.annotate 'line', 81
    goto if_106_end
  if_106:
.annotate 'line', 79
    find_lex $P111, "$sym"
    unless_null $P111, vivify_56
    new $P111, "Undef"
  vivify_56:
    find_lex $P112, "$target"
    unless_null $P112, vivify_57
    new $P112, "Undef"
  vivify_57:
    get_who $P113, $P112
    set $P114, $P113[$P111]
    unless_null $P114, vivify_58
    new $P114, "Undef"
  vivify_58:
    find_lex $P115, "$_"
    unless_null $P115, vivify_59
    new $P115, "Undef"
  vivify_59:
    $P116 = $P115."value"()
    $P117 = "merge_globals"($P114, $P116)
.annotate 'line', 77
    set $P105, $P117
  if_106_end:
.annotate 'line', 72
    .return ($P105)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave" :anon :subid("16_1306916533.54814") :outer("11_1306916533.54814")
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
.sub "load_module" :anon :subid("17_1306916533.54814") :outer("11_1306916533.54814")
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139
.annotate 'line', 14
    .const 'Sub' $P201 = "20_1306916533.54814" 
    capture_lex $P201
    .const 'Sub' $P180 = "19_1306916533.54814" 
    capture_lex $P180
    .const 'Sub' $P150 = "18_1306916533.54814" 
    capture_lex $P150
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
.annotate 'line', 14
    find_lex $P142, "$module_ctx"
    unless_null $P142, vivify_65
    new $P142, "Undef"
  vivify_65:
.annotate 'line', 19
    find_lex $P143, "$module_name"
    unless_null $P143, vivify_66
    new $P143, "Undef"
  vivify_66:
    set $S144, $P143
    split $P145, "::", $S144
    join $S146, "/", $P145
    new $P147, 'String'
    set $P147, $S146
    concat $P148, $P147, ".pbc"
    store_lex "$path", $P148
.annotate 'line', 20
    .const 'Sub' $P150 = "18_1306916533.54814" 
    capture_lex $P150
    $P150()
.annotate 'line', 26
    find_lex $P172, "$path"
    unless_null $P172, vivify_74
    new $P172, "Undef"
  vivify_74:
    find_lex $P173, "%modules_loaded"
    unless_null $P173, vivify_75
    $P173 = root_new ['parrot';'Hash']
  vivify_75:
    set $P174, $P173[$P172]
    unless_null $P174, vivify_76
    new $P174, "Undef"
  vivify_76:
    defined $I175, $P174
    if $I175, if_171
.annotate 'line', 29
    .const 'Sub' $P180 = "19_1306916533.54814" 
    capture_lex $P180
    $P180()
    goto if_171_end
  if_171:
.annotate 'line', 27
    find_lex $P176, "$path"
    unless_null $P176, vivify_85
    new $P176, "Undef"
  vivify_85:
    find_lex $P177, "%modules_loaded"
    unless_null $P177, vivify_86
    $P177 = root_new ['parrot';'Hash']
  vivify_86:
    set $P178, $P177[$P176]
    unless_null $P178, vivify_87
    new $P178, "Undef"
  vivify_87:
    store_lex "$module_ctx", $P178
  if_171_end:
.annotate 'line', 39
    find_lex $P198, "$module_ctx"
    unless_null $P198, vivify_88
    new $P198, "Undef"
  vivify_88:
    defined $I199, $P198
    unless $I199, if_197_end
    .const 'Sub' $P201 = "20_1306916533.54814" 
    capture_lex $P201
    $P201()
  if_197_end:
.annotate 'line', 47
    new $P214, "Exception"
    set $P214['type'], .CONTROL_RETURN
    find_lex $P215, "$module_ctx"
    unless_null $P215, vivify_95
    new $P215, "Undef"
  vivify_95:
    setattribute $P214, 'payload', $P215
    throw $P214
.annotate 'line', 14
    .return ()
  control_135:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P216, exception, "payload"
    .return ($P216)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block149"  :anon :subid("18_1306916533.54814") :outer("17_1306916533.54814")
.annotate 'line', 20
    new $P166, 'ExceptionHandler'
    set_label $P166, control_165
    $P166."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P166
.annotate 'line', 21
    new $P151, "Undef"
    .lex "$prefix", $P151
    find_dynamic_lex $P154, "%*COMPILING"
    unless_null $P154, vivify_67
    get_hll_global $P152, "GLOBAL"
    get_who $P153, $P152
    set $P154, $P153["%COMPILING"]
    unless_null $P154, vivify_68
    die "Contextual %*COMPILING not found"
  vivify_68:
  vivify_67:
    set $P155, $P154["%?OPTIONS"]
    unless_null $P155, vivify_69
    $P155 = root_new ['parrot';'Hash']
  vivify_69:
    set $P156, $P155["module-path"]
    unless_null $P156, vivify_70
    new $P156, "Undef"
  vivify_70:
    store_lex "$prefix", $P156
.annotate 'line', 22
    find_lex $P159, "$prefix"
    unless_null $P159, vivify_71
    new $P159, "Undef"
  vivify_71:
    if $P159, if_158
    set $P157, $P159
    goto if_158_end
  if_158:
.annotate 'line', 23
    find_lex $P160, "$prefix"
    unless_null $P160, vivify_72
    new $P160, "Undef"
  vivify_72:
    concat $P161, $P160, "/"
    find_lex $P162, "$path"
    unless_null $P162, vivify_73
    new $P162, "Undef"
  vivify_73:
    concat $P163, $P161, $P162
    store_lex "$path", $P163
.annotate 'line', 22
    set $P157, $P163
  if_158_end:
.annotate 'line', 20
    pop_eh 
    goto skip_handler_164
  control_165:
    .local pmc exception 
    .get_results (exception) 
    new $P169, 'Integer'
    set $P169, 1
    set exception["handled"], $P169
    set $I170, exception["handled"]
    ne $I170, 1, nothandled_168
  handled_167:
    .return (exception)
  nothandled_168:
    rethrow exception
  skip_handler_164:
    .return ($P157)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block179"  :anon :subid("19_1306916533.54814") :outer("17_1306916533.54814")
.annotate 'line', 30
    new $P181, "Undef"
    .lex "$*CTXSAVE", $P181
.annotate 'line', 31
    new $P182, "Undef"
    .lex "$*MAIN_CTX", $P182
.annotate 'line', 32
    new $P183, "Undef"
    .lex "$preserve_global", $P183
.annotate 'line', 30
    find_lex $P184, "self"
    store_lex "$*CTXSAVE", $P184
    find_lex $P187, "$*MAIN_CTX"
    unless_null $P187, vivify_77
    get_hll_global $P185, "GLOBAL"
    get_who $P186, $P185
    set $P187, $P186["$MAIN_CTX"]
    unless_null $P187, vivify_78
    die "Contextual $*MAIN_CTX not found"
  vivify_78:
  vivify_77:
.annotate 'line', 32
    get_hll_global $P188, "GLOBAL"
    store_lex "$preserve_global", $P188
.annotate 'line', 33
    find_lex $P189, "$path"
    unless_null $P189, vivify_79
    new $P189, "Undef"
  vivify_79:
    set $S190, $P189
    load_bytecode $S190
.annotate 'line', 34
    find_lex $P191, "$preserve_global"
    unless_null $P191, vivify_80
    new $P191, "Undef"
  vivify_80:
    set_hll_global "GLOBAL", $P191
.annotate 'line', 35
    find_lex $P194, "$*MAIN_CTX"
    unless_null $P194, vivify_81
    get_hll_global $P192, "GLOBAL"
    get_who $P193, $P192
    set $P194, $P193["$MAIN_CTX"]
    unless_null $P194, vivify_82
    die "Contextual $*MAIN_CTX not found"
  vivify_82:
  vivify_81:
    store_lex "$module_ctx", $P194
    find_lex $P195, "$path"
    unless_null $P195, vivify_83
    new $P195, "Undef"
  vivify_83:
    find_lex $P196, "%modules_loaded"
    unless_null $P196, vivify_84
    $P196 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P196
  vivify_84:
    set $P196[$P195], $P194
.annotate 'line', 29
    .return ($P194)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block200"  :anon :subid("20_1306916533.54814") :outer("17_1306916533.54814")
.annotate 'line', 41
    new $P202, "Undef"
    .lex "$UNIT", $P202
    find_lex $P203, "$module_ctx"
    unless_null $P203, vivify_89
    new $P203, "Undef"
  vivify_89:
    getattribute $P204, $P203, "lex_pad"
    store_lex "$UNIT", $P204
.annotate 'line', 42
    find_lex $P207, "$UNIT"
    unless_null $P207, vivify_90
    $P207 = root_new ['parrot';'Hash']
  vivify_90:
    set $P208, $P207["GLOBALish"]
    unless_null $P208, vivify_91
    new $P208, "Undef"
  vivify_91:
    isnull $I209, $P208
    unless $I209, unless_206
    new $P205, 'Integer'
    set $P205, $I209
    goto unless_206_end
  unless_206:
.annotate 'line', 43
    find_lex $P210, "$cur_GLOBALish"
    unless_null $P210, vivify_92
    new $P210, "Undef"
  vivify_92:
    find_lex $P211, "$UNIT"
    unless_null $P211, vivify_93
    $P211 = root_new ['parrot';'Hash']
  vivify_93:
    set $P212, $P211["GLOBALish"]
    unless_null $P212, vivify_94
    new $P212, "Undef"
  vivify_94:
    $P213 = "merge_globals"($P210, $P212)
.annotate 'line', 42
    set $P205, $P213
  unless_206_end:
.annotate 'line', 39
    .return ($P205)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting" :anon :subid("21_1306916533.54814") :outer("11_1306916533.54814")
    .param pmc param_222
    .param pmc param_223
.annotate 'line', 88
    .const 'Sub' $P231 = "22_1306916533.54814" 
    capture_lex $P231
    new $P221, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P221, control_220
    push_eh $P221
    .lex "self", param_222
    .lex "$setting_name", param_223
.annotate 'line', 89
    new $P224, "Undef"
    .lex "$setting", $P224
.annotate 'line', 88
    find_lex $P225, "$setting"
    unless_null $P225, vivify_96
    new $P225, "Undef"
  vivify_96:
.annotate 'line', 91
    find_lex $P227, "$setting_name"
    unless_null $P227, vivify_97
    new $P227, "Undef"
  vivify_97:
    set $S228, $P227
    isne $I229, $S228, "NULL"
    unless $I229, if_226_end
    .const 'Sub' $P231 = "22_1306916533.54814" 
    capture_lex $P231
    $P231()
  if_226_end:
.annotate 'line', 117
    new $P292, "Exception"
    set $P292['type'], .CONTROL_RETURN
    find_lex $P293, "$setting"
    unless_null $P293, vivify_123
    new $P293, "Undef"
  vivify_123:
    setattribute $P292, 'payload', $P293
    throw $P292
.annotate 'line', 88
    .return ()
  control_220:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P294, exception, "payload"
    .return ($P294)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block230"  :anon :subid("22_1306916533.54814") :outer("21_1306916533.54814")
.annotate 'line', 91
    .const 'Sub' $P263 = "24_1306916533.54814" 
    capture_lex $P263
    .const 'Sub' $P236 = "23_1306916533.54814" 
    capture_lex $P236
.annotate 'line', 93
    new $P232, "Undef"
    .lex "$path", $P232
    find_lex $P233, "$setting_name"
    unless_null $P233, vivify_98
    new $P233, "Undef"
  vivify_98:
    concat $P234, $P233, ".setting.pbc"
    store_lex "$path", $P234
.annotate 'line', 94
    .const 'Sub' $P236 = "23_1306916533.54814" 
    capture_lex $P236
    $P236()
.annotate 'line', 102
    find_lex $P258, "$path"
    unless_null $P258, vivify_106
    new $P258, "Undef"
  vivify_106:
    find_lex $P259, "%settings_loaded"
    unless_null $P259, vivify_107
    $P259 = root_new ['parrot';'Hash']
  vivify_107:
    set $P260, $P259[$P258]
    unless_null $P260, vivify_108
    new $P260, "Undef"
  vivify_108:
    defined $I261, $P260
    if $I261, unless_257_end
    .const 'Sub' $P263 = "24_1306916533.54814" 
    capture_lex $P263
    $P263()
  unless_257_end:
.annotate 'line', 114
    find_lex $P289, "$path"
    unless_null $P289, vivify_120
    new $P289, "Undef"
  vivify_120:
    find_lex $P290, "%settings_loaded"
    unless_null $P290, vivify_121
    $P290 = root_new ['parrot';'Hash']
  vivify_121:
    set $P291, $P290[$P289]
    unless_null $P291, vivify_122
    new $P291, "Undef"
  vivify_122:
    store_lex "$setting", $P291
.annotate 'line', 91
    .return ($P291)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block235"  :anon :subid("23_1306916533.54814") :outer("22_1306916533.54814")
.annotate 'line', 94
    new $P252, 'ExceptionHandler'
    set_label $P252, control_251
    $P252."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P252
.annotate 'line', 95
    new $P237, "Undef"
    .lex "$prefix", $P237
    find_dynamic_lex $P240, "%*COMPILING"
    unless_null $P240, vivify_99
    get_hll_global $P238, "GLOBAL"
    get_who $P239, $P238
    set $P240, $P239["%COMPILING"]
    unless_null $P240, vivify_100
    die "Contextual %*COMPILING not found"
  vivify_100:
  vivify_99:
    set $P241, $P240["%?OPTIONS"]
    unless_null $P241, vivify_101
    $P241 = root_new ['parrot';'Hash']
  vivify_101:
    set $P242, $P241["setting-path"]
    unless_null $P242, vivify_102
    new $P242, "Undef"
  vivify_102:
    store_lex "$prefix", $P242
.annotate 'line', 96
    find_lex $P245, "$prefix"
    unless_null $P245, vivify_103
    new $P245, "Undef"
  vivify_103:
    if $P245, if_244
    set $P243, $P245
    goto if_244_end
  if_244:
.annotate 'line', 97
    find_lex $P246, "$prefix"
    unless_null $P246, vivify_104
    new $P246, "Undef"
  vivify_104:
    concat $P247, $P246, "/"
    find_lex $P248, "$path"
    unless_null $P248, vivify_105
    new $P248, "Undef"
  vivify_105:
    concat $P249, $P247, $P248
    store_lex "$path", $P249
.annotate 'line', 96
    set $P243, $P249
  if_244_end:
.annotate 'line', 94
    pop_eh 
    goto skip_handler_250
  control_251:
    .local pmc exception 
    .get_results (exception) 
    new $P255, 'Integer'
    set $P255, 1
    set exception["handled"], $P255
    set $I256, exception["handled"]
    ne $I256, 1, nothandled_254
  handled_253:
    .return (exception)
  nothandled_254:
    rethrow exception
  skip_handler_250:
    .return ($P243)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block262"  :anon :subid("24_1306916533.54814") :outer("22_1306916533.54814")
.annotate 'line', 103
    new $P264, "Undef"
    .lex "$*CTXSAVE", $P264
.annotate 'line', 104
    new $P265, "Undef"
    .lex "$*MAIN_CTX", $P265
.annotate 'line', 105
    new $P266, "Undef"
    .lex "$preserve_global", $P266
.annotate 'line', 103
    find_lex $P267, "self"
    store_lex "$*CTXSAVE", $P267
    find_lex $P270, "$*MAIN_CTX"
    unless_null $P270, vivify_109
    get_hll_global $P268, "GLOBAL"
    get_who $P269, $P268
    set $P270, $P269["$MAIN_CTX"]
    unless_null $P270, vivify_110
    die "Contextual $*MAIN_CTX not found"
  vivify_110:
  vivify_109:
.annotate 'line', 105
    get_hll_global $P271, "GLOBAL"
    store_lex "$preserve_global", $P271
.annotate 'line', 106
    find_lex $P272, "$path"
    unless_null $P272, vivify_111
    new $P272, "Undef"
  vivify_111:
    set $S273, $P272
    load_bytecode $S273
.annotate 'line', 107
    find_lex $P274, "$preserve_global"
    unless_null $P274, vivify_112
    new $P274, "Undef"
  vivify_112:
    set_hll_global "GLOBAL", $P274
.annotate 'line', 108
    find_lex $P278, "$*MAIN_CTX"
    unless_null $P278, vivify_113
    get_hll_global $P276, "GLOBAL"
    get_who $P277, $P276
    set $P278, $P277["$MAIN_CTX"]
    unless_null $P278, vivify_114
    die "Contextual $*MAIN_CTX not found"
  vivify_114:
  vivify_113:
    defined $I279, $P278
    if $I279, unless_275_end
.annotate 'line', 109
    new $P280, 'String'
    set $P280, "Unable to load setting "
    find_lex $P281, "$setting_name"
    unless_null $P281, vivify_115
    new $P281, "Undef"
  vivify_115:
    concat $P282, $P280, $P281
    concat $P283, $P282, "; maybe it is missing a YOU_ARE_HERE?"
    die $P283
  unless_275_end:
.annotate 'line', 111
    find_lex $P286, "$*MAIN_CTX"
    unless_null $P286, vivify_116
    get_hll_global $P284, "GLOBAL"
    get_who $P285, $P284
    set $P286, $P285["$MAIN_CTX"]
    unless_null $P286, vivify_117
    die "Contextual $*MAIN_CTX not found"
  vivify_117:
  vivify_116:
    find_lex $P287, "$path"
    unless_null $P287, vivify_118
    new $P287, "Undef"
  vivify_118:
    find_lex $P288, "%settings_loaded"
    unless_null $P288, vivify_119
    $P288 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P288
  vivify_119:
    set $P288[$P287], $P286
.annotate 'line', 102
    .return ($P286)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module" :anon :subid("25_1306916533.54814") :outer("11_1306916533.54814")
    .param pmc param_296
    .param pmc param_297
.annotate 'line', 122
    .lex "self", param_296
    .lex "$mainline_ctx", param_297
.annotate 'line', 125
    new $P298, "Undef"
    .lex "$module_name", $P298
    getinterp $P299
    set $P300, $P299[2]
    unless_null $P300, vivify_124
    $P300 = root_new ['parrot';'ResizablePMCArray']
  vivify_124:
    set $P301, $P300[0]
    unless_null $P301, vivify_125
    new $P301, "Undef"
  vivify_125:
    store_lex "$module_name", $P301
.annotate 'line', 126
    find_lex $P303, "$module_name"
    unless_null $P303, vivify_126
    new $P303, "Undef"
  vivify_126:
    set $S304, $P303
    substr $S305, $S304, 0, 2
    iseq $I306, $S305, "./"
    unless $I306, if_302_end
.annotate 'line', 127
    find_lex $P307, "$module_name"
    unless_null $P307, vivify_127
    new $P307, "Undef"
  vivify_127:
    set $S308, $P307
    find_lex $P309, "$module_name"
    unless_null $P309, vivify_128
    new $P309, "Undef"
  vivify_128:
    set $S310, $P309
    length $I311, $S310
    new $P312, 'Integer'
    set $P312, $I311
    sub $P313, $P312, 2
    set $I314, $P313
    substr $S315, $S308, 2, $I314
    new $P316, 'String'
    set $P316, $S315
    store_lex "$module_name", $P316
  if_302_end:
.annotate 'line', 129
    find_lex $P318, "$module_name"
    unless_null $P318, vivify_129
    new $P318, "Undef"
  vivify_129:
    set $S319, $P318
    find_lex $P320, "$module_name"
    unless_null $P320, vivify_130
    new $P320, "Undef"
  vivify_130:
    set $S321, $P320
    length $I322, $S321
    new $P323, 'Integer'
    set $P323, $I322
    sub $P324, $P323, 4
    set $I325, $P324
    substr $S326, $S319, $I325, 4
    iseq $I327, $S326, ".pbc"
    if $I327, if_317
.annotate 'line', 132
    find_lex $P329, "$module_name"
    unless_null $P329, vivify_131
    new $P329, "Undef"
  vivify_131:
    set $S330, $P329
    find_lex $P331, "$module_name"
    unless_null $P331, vivify_132
    new $P331, "Undef"
  vivify_132:
    set $S332, $P331
    length $I333, $S332
    new $P334, 'Integer'
    set $P334, $I333
    sub $P335, $P334, 4
    set $I336, $P335
    substr $S337, $S330, $I336, 4
    iseq $I338, $S337, ".exe"
    if $I338, if_328
.annotate 'line', 137
    find_lex $P350, "$module_name"
    unless_null $P350, vivify_133
    new $P350, "Undef"
  vivify_133:
    concat $P351, $P350, ".pbc"
    store_lex "$module_name", $P351
.annotate 'line', 136
    goto if_328_end
  if_328:
.annotate 'line', 134
    find_lex $P339, "$module_name"
    unless_null $P339, vivify_134
    new $P339, "Undef"
  vivify_134:
    set $S340, $P339
    find_lex $P341, "$module_name"
    unless_null $P341, vivify_135
    new $P341, "Undef"
  vivify_135:
    set $S342, $P341
    length $I343, $S342
    new $P344, 'Integer'
    set $P344, $I343
    sub $P345, $P344, 3
    set $I346, $P345
    substr $S347, $S340, 0, $I346
    new $P348, 'String'
    set $P348, $S347
    concat $P349, $P348, "pbc"
    store_lex "$module_name", $P349
  if_328_end:
.annotate 'line', 132
    goto if_317_end
  if_317:
  if_317_end:
.annotate 'line', 141
    find_lex $P352, "$mainline_ctx"
    unless_null $P352, vivify_136
    new $P352, "Undef"
  vivify_136:
    find_lex $P353, "$module_name"
    unless_null $P353, vivify_137
    new $P353, "Undef"
  vivify_137:
    find_lex $P354, "%modules_loaded"
    unless_null $P354, vivify_138
    $P354 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P354
  vivify_138:
    set $P354[$P353], $P352
.annotate 'line', 122
    .return ($P352)
.end


.HLL "nqp"

.namespace []
.sub "_block364" :load :anon :subid("26_1306916533.54814")
.annotate 'line', 1
    .const 'Sub' $P366 = "10_1306916533.54814" 
    $P367 = $P366()
    .return ($P367)
.end

