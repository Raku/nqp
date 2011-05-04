
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304516014.214")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P18 = "11_1304516014.214" 
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
    .const 'Sub' $P18 = "11_1304516014.214" 
    capture_lex $P18
    $P18()
.annotate 'line', 144
    find_lex $P341, "ModuleLoader"
    set_hll_global "ModuleLoader", $P341
    find_lex $P344, "@ARGS"
    if $P344, if_343
    set $P342, $P344
    goto if_343_end
  if_343:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P345, "ModuleLoader"
    getinterp $P346
    set $P347, $P346["context"]
    $P348 = $P345."set_mainline_module"($P347)
    set $P342, $P348
  if_343_end:
.annotate 'line', 1
    .return ($P342)
    .const 'Sub' $P350 = "26_1304516014.214" 
    .return ($P350)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post27") :outer("10_1304516014.214")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304516014.214" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P354, "1304516013.691"
    isnull $I355, $P354
    if $I355, if_353
    .const 'Sub' $P411 = "10_1304516014.214" 
    $P412 = $P411."get_lexinfo"()
    nqp_get_sc_object $P413, "1304516013.691", 0
    $P412."set_static_lexpad_value"("GLOBALish", $P413)
    .const 'Sub' $P414 = "10_1304516014.214" 
    $P415 = $P414."get_lexinfo"()
    $P415."finish_static_lexpad"()
    .const 'Sub' $P416 = "10_1304516014.214" 
    $P417 = $P416."get_lexinfo"()
    nqp_get_sc_object $P418, "1304516013.691", 0
    $P417."set_static_lexpad_value"("$?PACKAGE", $P418)
    .const 'Sub' $P419 = "10_1304516014.214" 
    $P420 = $P419."get_lexinfo"()
    $P420."finish_static_lexpad"()
    .const 'Sub' $P421 = "10_1304516014.214" 
    $P422 = $P421."get_lexinfo"()
    nqp_get_sc_object $P423, "1304516013.691", 1
    $P422."set_static_lexpad_value"("ModuleLoader", $P423)
    .const 'Sub' $P424 = "10_1304516014.214" 
    $P425 = $P424."get_lexinfo"()
    $P425."finish_static_lexpad"()
    nqp_get_sc_object $P426, "1304516013.691", 2
    .const 'Sub' $P427 = "16_1304516014.214" 
    assign $P426, $P427
    nqp_get_sc_object $P428, "1304516013.691", 3
    .const 'Sub' $P429 = "17_1304516014.214" 
    assign $P428, $P429
    nqp_get_sc_object $P430, "1304516013.691", 4
    .const 'Sub' $P431 = "21_1304516014.214" 
    assign $P430, $P431
    nqp_get_sc_object $P432, "1304516013.691", 5
    .const 'Sub' $P433 = "25_1304516014.214" 
    assign $P432, $P433
    .const 'Sub' $P434 = "11_1304516014.214" 
    $P435 = $P434."get_lexinfo"()
    nqp_get_sc_object $P436, "1304516013.691", 1
    $P435."set_static_lexpad_value"("$?PACKAGE", $P436)
    .const 'Sub' $P437 = "11_1304516014.214" 
    $P438 = $P437."get_lexinfo"()
    $P438."finish_static_lexpad"()
    .const 'Sub' $P439 = "11_1304516014.214" 
    $P440 = $P439."get_lexinfo"()
    nqp_get_sc_object $P441, "1304516013.691", 1
    $P440."set_static_lexpad_value"("$?CLASS", $P441)
    .const 'Sub' $P442 = "11_1304516014.214" 
    $P443 = $P442."get_lexinfo"()
    $P443."finish_static_lexpad"()
    goto if_353_end
  if_353:
    nqp_dynop_setup 
    getinterp $P356
    get_class $P357, "LexPad"
    get_class $P358, "NQPLexPad"
    $P356."hll_map"($P357, $P358)
    nqp_create_sc $P359, "1304516013.691"
    .local pmc cur_sc
    set cur_sc, $P359
    nqp_get_sc_object $P360, "__6MODEL_CORE__", 0
    $P361 = $P360."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P361, cur_sc
    nqp_set_sc_object "1304516013.691", 0, $P361
    .const 'Sub' $P362 = "10_1304516014.214" 
    $P363 = $P362."get_lexinfo"()
    nqp_get_sc_object $P364, "1304516013.691", 0
    $P363."set_static_lexpad_value"("GLOBALish", $P364)
    .const 'Sub' $P365 = "10_1304516014.214" 
    $P366 = $P365."get_lexinfo"()
    $P366."finish_static_lexpad"()
    .const 'Sub' $P367 = "10_1304516014.214" 
    $P368 = $P367."get_lexinfo"()
    nqp_get_sc_object $P369, "1304516013.691", 0
    $P368."set_static_lexpad_value"("$?PACKAGE", $P369)
    .const 'Sub' $P370 = "10_1304516014.214" 
    $P371 = $P370."get_lexinfo"()
    $P371."finish_static_lexpad"()
    nqp_get_sc_object $P372, "__6MODEL_CORE__", 0
    $P373 = $P372."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P373, cur_sc
    nqp_set_sc_object "1304516013.691", 1, $P373
    nqp_get_sc_object $P374, "1304516013.691", 1
    nqp_get_sc_object $P375, "1304516013.691", 0
    get_who $P376, $P375
    set $P376["ModuleLoader"], $P374
    .const 'Sub' $P377 = "10_1304516014.214" 
    $P378 = $P377."get_lexinfo"()
    nqp_get_sc_object $P379, "1304516013.691", 1
    $P378."set_static_lexpad_value"("ModuleLoader", $P379)
    .const 'Sub' $P380 = "10_1304516014.214" 
    $P381 = $P380."get_lexinfo"()
    $P381."finish_static_lexpad"()
    nqp_get_sc_object $P382, "1304516013.691", 1
    get_how $P383, $P382
    nqp_get_sc_object $P384, "1304516013.691", 1
    .const 'Sub' $P385 = "16_1304516014.214" 
    $P383."add_method"($P384, "ctxsave", $P385)
    nqp_get_sc_object $P386, "1304516013.691", 1
    get_how $P387, $P386
    nqp_get_sc_object $P388, "1304516013.691", 1
    .const 'Sub' $P389 = "17_1304516014.214" 
    $P387."add_method"($P388, "load_module", $P389)
    nqp_get_sc_object $P390, "1304516013.691", 1
    get_how $P391, $P390
    nqp_get_sc_object $P392, "1304516013.691", 1
    .const 'Sub' $P393 = "21_1304516014.214" 
    $P391."add_method"($P392, "load_setting", $P393)
    nqp_get_sc_object $P394, "1304516013.691", 1
    get_how $P395, $P394
    nqp_get_sc_object $P396, "1304516013.691", 1
    .const 'Sub' $P397 = "25_1304516014.214" 
    $P395."add_method"($P396, "set_mainline_module", $P397)
    .const 'Sub' $P398 = "11_1304516014.214" 
    $P399 = $P398."get_lexinfo"()
    nqp_get_sc_object $P400, "1304516013.691", 1
    $P399."set_static_lexpad_value"("$?PACKAGE", $P400)
    .const 'Sub' $P401 = "11_1304516014.214" 
    $P402 = $P401."get_lexinfo"()
    $P402."finish_static_lexpad"()
    .const 'Sub' $P403 = "11_1304516014.214" 
    $P404 = $P403."get_lexinfo"()
    nqp_get_sc_object $P405, "1304516013.691", 1
    $P404."set_static_lexpad_value"("$?CLASS", $P405)
    .const 'Sub' $P406 = "11_1304516014.214" 
    $P407 = $P406."get_lexinfo"()
    $P407."finish_static_lexpad"()
    nqp_get_sc_object $P408, "1304516013.691", 1
    get_how $P409, $P408
    nqp_get_sc_object $P410, "1304516013.691", 1
    $P409."compose"($P410)
  if_353_end:
    nqp_get_sc_object $P444, "1304516013.691", 0
    set_hll_global "GLOBAL", $P444
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block17"  :subid("11_1304516014.214") :outer("10_1304516014.214")
.annotate 'line', 1
    .const 'Sub' $P295 = "25_1304516014.214" 
    capture_lex $P295
    .const 'Sub' $P219 = "21_1304516014.214" 
    capture_lex $P219
    .const 'Sub' $P134 = "17_1304516014.214" 
    capture_lex $P134
    .const 'Sub' $P130 = "16_1304516014.214" 
    capture_lex $P130
    .const 'Sub' $P22 = "12_1304516014.214" 
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
    .const 'Sub' $P22 = "12_1304516014.214" 
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
    .const 'Sub' $P295 = "25_1304516014.214" 
    newclosure $P340, $P295
.annotate 'line', 1
    .return ($P340)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1304516014.214") :outer("11_1304516014.214")
    .param pmc param_23
    .param pmc param_24
.annotate 'line', 56
    .const 'Sub' $P48 = "14_1304516014.214" 
    capture_lex $P48
    .const 'Sub' $P33 = "13_1304516014.214" 
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
    .const 'Sub' $P33 = "13_1304516014.214" 
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
    .const 'Sub' $P48 = "14_1304516014.214" 
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
.sub "_block32"  :anon :subid("13_1304516014.214") :outer("12_1304516014.214")
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
.sub "_block47"  :anon :subid("14_1304516014.214") :outer("12_1304516014.214")
    .param pmc param_50
.annotate 'line', 64
    .const 'Sub' $P74 = "15_1304516014.214" 
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
    .const 'Sub' $P74 = "15_1304516014.214" 
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
.sub "_block73"  :anon :subid("15_1304516014.214") :outer("14_1304516014.214")
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
.sub "ctxsave"  :subid("16_1304516014.214") :outer("11_1304516014.214")
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
.sub "load_module"  :subid("17_1304516014.214") :outer("11_1304516014.214")
    .param pmc param_137
    .param pmc param_138
    .param pmc param_139
.annotate 'line', 14
    .const 'Sub' $P201 = "20_1304516014.214" 
    capture_lex $P201
    .const 'Sub' $P180 = "19_1304516014.214" 
    capture_lex $P180
    .const 'Sub' $P150 = "18_1304516014.214" 
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
    .const 'Sub' $P150 = "18_1304516014.214" 
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
    .const 'Sub' $P180 = "19_1304516014.214" 
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
    .const 'Sub' $P201 = "20_1304516014.214" 
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
.sub "_block149"  :anon :subid("18_1304516014.214") :outer("17_1304516014.214")
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
.sub "_block179"  :anon :subid("19_1304516014.214") :outer("17_1304516014.214")
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
.sub "_block200"  :anon :subid("20_1304516014.214") :outer("17_1304516014.214")
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
.sub "load_setting"  :subid("21_1304516014.214") :outer("11_1304516014.214")
    .param pmc param_222
    .param pmc param_223
.annotate 'line', 88
    .const 'Sub' $P231 = "22_1304516014.214" 
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
    .const 'Sub' $P231 = "22_1304516014.214" 
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
.sub "_block230"  :anon :subid("22_1304516014.214") :outer("21_1304516014.214")
.annotate 'line', 91
    .const 'Sub' $P263 = "24_1304516014.214" 
    capture_lex $P263
    .const 'Sub' $P236 = "23_1304516014.214" 
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
    .const 'Sub' $P236 = "23_1304516014.214" 
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
    .const 'Sub' $P263 = "24_1304516014.214" 
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
.sub "_block235"  :anon :subid("23_1304516014.214") :outer("22_1304516014.214")
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
.sub "_block262"  :anon :subid("24_1304516014.214") :outer("22_1304516014.214")
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
.sub "set_mainline_module"  :subid("25_1304516014.214") :outer("11_1304516014.214")
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
    find_lex $P305, "$module_name"
    unless_null $P305, vivify_127
    new $P305, "Undef"
  vivify_127:
    set $S306, $P305
    length $I307, $S306
    new $P308, 'Integer'
    set $P308, $I307
    sub $P309, $P308, 4
    set $I310, $P309
    substr $S311, $S304, $I310, 4
    iseq $I312, $S311, ".pbc"
    if $I312, if_302
.annotate 'line', 129
    find_lex $P314, "$module_name"
    unless_null $P314, vivify_128
    new $P314, "Undef"
  vivify_128:
    set $S315, $P314
    find_lex $P316, "$module_name"
    unless_null $P316, vivify_129
    new $P316, "Undef"
  vivify_129:
    set $S317, $P316
    length $I318, $S317
    new $P319, 'Integer'
    set $P319, $I318
    sub $P320, $P319, 4
    set $I321, $P320
    substr $S322, $S315, $I321, 4
    iseq $I323, $S322, ".exe"
    if $I323, if_313
.annotate 'line', 134
    find_lex $P335, "$module_name"
    unless_null $P335, vivify_130
    new $P335, "Undef"
  vivify_130:
    concat $P336, $P335, ".pbc"
    store_lex "$module_name", $P336
.annotate 'line', 133
    goto if_313_end
  if_313:
.annotate 'line', 131
    find_lex $P324, "$module_name"
    unless_null $P324, vivify_131
    new $P324, "Undef"
  vivify_131:
    set $S325, $P324
    find_lex $P326, "$module_name"
    unless_null $P326, vivify_132
    new $P326, "Undef"
  vivify_132:
    set $S327, $P326
    length $I328, $S327
    new $P329, 'Integer'
    set $P329, $I328
    sub $P330, $P329, 3
    set $I331, $P330
    substr $S332, $S325, 0, $I331
    new $P333, 'String'
    set $P333, $S332
    concat $P334, $P333, "pbc"
    store_lex "$module_name", $P334
  if_313_end:
.annotate 'line', 129
    goto if_302_end
  if_302:
  if_302_end:
.annotate 'line', 138
    find_lex $P337, "$mainline_ctx"
    unless_null $P337, vivify_133
    new $P337, "Undef"
  vivify_133:
    find_lex $P338, "$module_name"
    unless_null $P338, vivify_134
    new $P338, "Undef"
  vivify_134:
    find_lex $P339, "%modules_loaded"
    unless_null $P339, vivify_135
    $P339 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P339
  vivify_135:
    set $P339[$P338], $P337
.annotate 'line', 122
    .return ($P337)
.end


.HLL "nqp"

.namespace []
.sub "_block349" :load :anon :subid("26_1304516014.214")
.annotate 'line', 1
    .const 'Sub' $P351 = "10_1304516014.214" 
    $P352 = $P351()
    .return ($P352)
.end

