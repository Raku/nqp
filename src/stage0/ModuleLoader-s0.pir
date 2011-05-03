
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304459373.778")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P18 = "11_1304459373.778" 
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
    .const 'Sub' $P18 = "11_1304459373.778" 
    capture_lex $P18
    $P18()
.annotate 'line', 133
    find_lex $P293, "ModuleLoader"
    set_hll_global "ModuleLoader", $P293
    find_lex $P296, "@ARGS"
    if $P296, if_295
    set $P294, $P296
    goto if_295_end
  if_295:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P297, "ModuleLoader"
    getinterp $P298
    set $P299, $P298["context"]
    $P300 = $P297."set_mainline_module"($P299)
    set $P294, $P300
  if_295_end:
.annotate 'line', 1
    .return ($P294)
    .const 'Sub' $P302 = "25_1304459373.778" 
    .return ($P302)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post26") :outer("10_1304459373.778")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304459373.778" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P306, "1304459373.318"
    isnull $I307, $P306
    if $I307, if_305
    .const 'Sub' $P363 = "10_1304459373.778" 
    $P364 = $P363."get_lexinfo"()
    nqp_get_sc_object $P365, "1304459373.318", 0
    $P364."set_static_lexpad_value"("GLOBALish", $P365)
    .const 'Sub' $P366 = "10_1304459373.778" 
    $P367 = $P366."get_lexinfo"()
    $P367."finish_static_lexpad"()
    .const 'Sub' $P368 = "10_1304459373.778" 
    $P369 = $P368."get_lexinfo"()
    nqp_get_sc_object $P370, "1304459373.318", 0
    $P369."set_static_lexpad_value"("$?PACKAGE", $P370)
    .const 'Sub' $P371 = "10_1304459373.778" 
    $P372 = $P371."get_lexinfo"()
    $P372."finish_static_lexpad"()
    .const 'Sub' $P373 = "10_1304459373.778" 
    $P374 = $P373."get_lexinfo"()
    nqp_get_sc_object $P375, "1304459373.318", 1
    $P374."set_static_lexpad_value"("ModuleLoader", $P375)
    .const 'Sub' $P376 = "10_1304459373.778" 
    $P377 = $P376."get_lexinfo"()
    $P377."finish_static_lexpad"()
    nqp_get_sc_object $P378, "1304459373.318", 2
    .const 'Sub' $P379 = "15_1304459373.778" 
    assign $P378, $P379
    nqp_get_sc_object $P380, "1304459373.318", 3
    .const 'Sub' $P381 = "16_1304459373.778" 
    assign $P380, $P381
    nqp_get_sc_object $P382, "1304459373.318", 4
    .const 'Sub' $P383 = "20_1304459373.778" 
    assign $P382, $P383
    nqp_get_sc_object $P384, "1304459373.318", 5
    .const 'Sub' $P385 = "24_1304459373.778" 
    assign $P384, $P385
    .const 'Sub' $P386 = "11_1304459373.778" 
    $P387 = $P386."get_lexinfo"()
    nqp_get_sc_object $P388, "1304459373.318", 1
    $P387."set_static_lexpad_value"("$?PACKAGE", $P388)
    .const 'Sub' $P389 = "11_1304459373.778" 
    $P390 = $P389."get_lexinfo"()
    $P390."finish_static_lexpad"()
    .const 'Sub' $P391 = "11_1304459373.778" 
    $P392 = $P391."get_lexinfo"()
    nqp_get_sc_object $P393, "1304459373.318", 1
    $P392."set_static_lexpad_value"("$?CLASS", $P393)
    .const 'Sub' $P394 = "11_1304459373.778" 
    $P395 = $P394."get_lexinfo"()
    $P395."finish_static_lexpad"()
    goto if_305_end
  if_305:
    nqp_dynop_setup 
    getinterp $P308
    get_class $P309, "LexPad"
    get_class $P310, "NQPLexPad"
    $P308."hll_map"($P309, $P310)
    nqp_create_sc $P311, "1304459373.318"
    .local pmc cur_sc
    set cur_sc, $P311
    nqp_get_sc_object $P312, "__6MODEL_CORE__", 0
    $P313 = $P312."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P313, cur_sc
    nqp_set_sc_object "1304459373.318", 0, $P313
    .const 'Sub' $P314 = "10_1304459373.778" 
    $P315 = $P314."get_lexinfo"()
    nqp_get_sc_object $P316, "1304459373.318", 0
    $P315."set_static_lexpad_value"("GLOBALish", $P316)
    .const 'Sub' $P317 = "10_1304459373.778" 
    $P318 = $P317."get_lexinfo"()
    $P318."finish_static_lexpad"()
    .const 'Sub' $P319 = "10_1304459373.778" 
    $P320 = $P319."get_lexinfo"()
    nqp_get_sc_object $P321, "1304459373.318", 0
    $P320."set_static_lexpad_value"("$?PACKAGE", $P321)
    .const 'Sub' $P322 = "10_1304459373.778" 
    $P323 = $P322."get_lexinfo"()
    $P323."finish_static_lexpad"()
    nqp_get_sc_object $P324, "__6MODEL_CORE__", 0
    $P325 = $P324."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P325, cur_sc
    nqp_set_sc_object "1304459373.318", 1, $P325
    nqp_get_sc_object $P326, "1304459373.318", 1
    nqp_get_sc_object $P327, "1304459373.318", 0
    get_who $P328, $P327
    set $P328["ModuleLoader"], $P326
    .const 'Sub' $P329 = "10_1304459373.778" 
    $P330 = $P329."get_lexinfo"()
    nqp_get_sc_object $P331, "1304459373.318", 1
    $P330."set_static_lexpad_value"("ModuleLoader", $P331)
    .const 'Sub' $P332 = "10_1304459373.778" 
    $P333 = $P332."get_lexinfo"()
    $P333."finish_static_lexpad"()
    nqp_get_sc_object $P334, "1304459373.318", 1
    get_how $P335, $P334
    nqp_get_sc_object $P336, "1304459373.318", 1
    .const 'Sub' $P337 = "15_1304459373.778" 
    $P335."add_method"($P336, "ctxsave", $P337)
    nqp_get_sc_object $P338, "1304459373.318", 1
    get_how $P339, $P338
    nqp_get_sc_object $P340, "1304459373.318", 1
    .const 'Sub' $P341 = "16_1304459373.778" 
    $P339."add_method"($P340, "load_module", $P341)
    nqp_get_sc_object $P342, "1304459373.318", 1
    get_how $P343, $P342
    nqp_get_sc_object $P344, "1304459373.318", 1
    .const 'Sub' $P345 = "20_1304459373.778" 
    $P343."add_method"($P344, "load_setting", $P345)
    nqp_get_sc_object $P346, "1304459373.318", 1
    get_how $P347, $P346
    nqp_get_sc_object $P348, "1304459373.318", 1
    .const 'Sub' $P349 = "24_1304459373.778" 
    $P347."add_method"($P348, "set_mainline_module", $P349)
    .const 'Sub' $P350 = "11_1304459373.778" 
    $P351 = $P350."get_lexinfo"()
    nqp_get_sc_object $P352, "1304459373.318", 1
    $P351."set_static_lexpad_value"("$?PACKAGE", $P352)
    .const 'Sub' $P353 = "11_1304459373.778" 
    $P354 = $P353."get_lexinfo"()
    $P354."finish_static_lexpad"()
    .const 'Sub' $P355 = "11_1304459373.778" 
    $P356 = $P355."get_lexinfo"()
    nqp_get_sc_object $P357, "1304459373.318", 1
    $P356."set_static_lexpad_value"("$?CLASS", $P357)
    .const 'Sub' $P358 = "11_1304459373.778" 
    $P359 = $P358."get_lexinfo"()
    $P359."finish_static_lexpad"()
    nqp_get_sc_object $P360, "1304459373.318", 1
    get_how $P361, $P360
    nqp_get_sc_object $P362, "1304459373.318", 1
    $P361."compose"($P362)
  if_305_end:
    nqp_get_sc_object $P396, "1304459373.318", 0
    set_hll_global "GLOBAL", $P396
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block17"  :subid("11_1304459373.778") :outer("10_1304459373.778")
.annotate 'line', 1
    .const 'Sub' $P247 = "24_1304459373.778" 
    capture_lex $P247
    .const 'Sub' $P171 = "20_1304459373.778" 
    capture_lex $P171
    .const 'Sub' $P87 = "16_1304459373.778" 
    capture_lex $P87
    .const 'Sub' $P83 = "15_1304459373.778" 
    capture_lex $P83
    .const 'Sub' $P21 = "12_1304459373.778" 
    capture_lex $P21
.annotate 'line', 2
    $P19 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P19
.annotate 'line', 3
    $P20 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P20
.annotate 'line', 55
    .const 'Sub' $P21 = "12_1304459373.778" 
    newclosure $P78, $P21
    .lex "merge_globals", $P78
.annotate 'line', 3
    .lex "$?PACKAGE", $P79
    .lex "$?CLASS", $P80
.annotate 'line', 1
    find_lex $P81, "%modules_loaded"
    unless_null $P81, vivify_46
    $P81 = root_new ['parrot';'Hash']
  vivify_46:
    find_lex $P82, "%settings_loaded"
    unless_null $P82, vivify_47
    $P82 = root_new ['parrot';'Hash']
  vivify_47:
.annotate 'line', 14
    find_lex $P170, "merge_globals"
.annotate 'line', 111
    .const 'Sub' $P247 = "24_1304459373.778" 
    newclosure $P292, $P247
.annotate 'line', 1
    .return ($P292)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1304459373.778") :outer("11_1304459373.778")
    .param pmc param_22
    .param pmc param_23
.annotate 'line', 55
    .const 'Sub' $P47 = "14_1304459373.778" 
    capture_lex $P47
    .const 'Sub' $P32 = "13_1304459373.778" 
    capture_lex $P32
    .lex "$target", param_22
    .lex "$source", param_23
.annotate 'line', 59
    $P24 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P24
.annotate 'line', 55
    find_lex $P25, "%known_symbols"
    unless_null $P25, vivify_27
    $P25 = root_new ['parrot';'Hash']
  vivify_27:
.annotate 'line', 60
    find_lex $P27, "$target"
    unless_null $P27, vivify_28
    new $P27, "Undef"
  vivify_28:
    get_who $P28, $P27
    defined $I29, $P28
    unless $I29, for_undef_29
    iter $P26, $P28
    new $P39, 'ExceptionHandler'
    set_label $P39, loop38_handler
    $P39."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P39
  loop38_test:
    unless $P26, loop38_done
    shift $P30, $P26
  loop38_redo:
    .const 'Sub' $P32 = "13_1304459373.778" 
    capture_lex $P32
    $P32($P30)
  loop38_next:
    goto loop38_test
  loop38_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P40, exception, 'type'
    eq $P40, .CONTROL_LOOP_NEXT, loop38_next
    eq $P40, .CONTROL_LOOP_REDO, loop38_redo
  loop38_done:
    pop_eh 
  for_undef_29:
.annotate 'line', 63
    find_lex $P42, "$source"
    unless_null $P42, vivify_32
    new $P42, "Undef"
  vivify_32:
    get_who $P43, $P42
    defined $I44, $P43
    unless $I44, for_undef_33
    iter $P41, $P43
    new $P76, 'ExceptionHandler'
    set_label $P76, loop75_handler
    $P76."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P76
  loop75_test:
    unless $P41, loop75_done
    shift $P45, $P41
  loop75_redo:
    .const 'Sub' $P47 = "14_1304459373.778" 
    capture_lex $P47
    $P47($P45)
  loop75_next:
    goto loop75_test
  loop75_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P77, exception, 'type'
    eq $P77, .CONTROL_LOOP_NEXT, loop75_next
    eq $P77, .CONTROL_LOOP_REDO, loop75_redo
  loop75_done:
    pop_eh 
  for_undef_33:
.annotate 'line', 55
    .return ($P41)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block31"  :anon :subid("13_1304459373.778") :outer("12_1304459373.778")
    .param pmc param_33
.annotate 'line', 60
    .lex "$_", param_33
.annotate 'line', 61
    new $P34, "Integer"
    assign $P34, 1
    find_lex $P35, "$_"
    unless_null $P35, vivify_30
    new $P35, "Undef"
  vivify_30:
    $P36 = $P35."key"()
    find_lex $P37, "%known_symbols"
    unless_null $P37, vivify_31
    $P37 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P37
  vivify_31:
    set $P37[$P36], $P34
.annotate 'line', 60
    .return ($P34)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block46"  :anon :subid("14_1304459373.778") :outer("12_1304459373.778")
    .param pmc param_49
.annotate 'line', 64
    new $P48, "Undef"
    .lex "$sym", $P48
    .lex "$_", param_49
    find_lex $P50, "$_"
    unless_null $P50, vivify_34
    new $P50, "Undef"
  vivify_34:
    $P51 = $P50."key"()
    store_lex "$sym", $P51
.annotate 'line', 65
    find_lex $P54, "$sym"
    unless_null $P54, vivify_35
    new $P54, "Undef"
  vivify_35:
    find_lex $P55, "%known_symbols"
    unless_null $P55, vivify_36
    $P55 = root_new ['parrot';'Hash']
  vivify_36:
    set $P56, $P55[$P54]
    unless_null $P56, vivify_37
    new $P56, "Undef"
  vivify_37:
    isfalse $I57, $P56
    if $I57, if_53
.annotate 'line', 68
    find_lex $P65, "$sym"
    unless_null $P65, vivify_38
    new $P65, "Undef"
  vivify_38:
    find_lex $P66, "$target"
    unless_null $P66, vivify_39
    new $P66, "Undef"
  vivify_39:
    get_who $P67, $P66
    set $P68, $P67[$P65]
    unless_null $P68, vivify_40
    new $P68, "Undef"
  vivify_40:
    find_lex $P69, "$_"
    unless_null $P69, vivify_41
    new $P69, "Undef"
  vivify_41:
    $P70 = $P69."value"()
    issame $I71, $P68, $P70
    if $I71, if_64
.annotate 'line', 72
    new $P72, 'String'
    set $P72, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P73, "$sym"
    unless_null $P73, vivify_42
    new $P73, "Undef"
  vivify_42:
    concat $P74, $P72, $P73
    die $P74
.annotate 'line', 71
    goto if_64_end
  if_64:
  if_64_end:
.annotate 'line', 68
    set $P52, $P63
.annotate 'line', 65
    goto if_53_end
  if_53:
.annotate 'line', 66
    find_lex $P58, "$_"
    unless_null $P58, vivify_43
    new $P58, "Undef"
  vivify_43:
    $P59 = $P58."value"()
    find_lex $P60, "$sym"
    unless_null $P60, vivify_44
    new $P60, "Undef"
  vivify_44:
    find_lex $P61, "$target"
    unless_null $P61, vivify_45
    new $P61, "Undef"
    store_lex "$target", $P61
  vivify_45:
    get_who $P62, $P61
    set $P62[$P60], $P59
.annotate 'line', 65
    set $P52, $P59
  if_53_end:
.annotate 'line', 63
    .return ($P52)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("15_1304459373.778") :outer("11_1304459373.778")
    .param pmc param_84
.annotate 'line', 5
    .lex "self", param_84
.annotate 'line', 7

                $P0 = getinterp
                $P85 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P85
.annotate 'line', 11
    new $P86, "Integer"
    assign $P86, 0
    store_dynamic_lex "$*CTXSAVE", $P86
.annotate 'line', 5
    .return ($P86)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_module"  :subid("16_1304459373.778") :outer("11_1304459373.778")
    .param pmc param_90
    .param pmc param_91
    .param pmc param_92
.annotate 'line', 14
    .const 'Sub' $P154 = "19_1304459373.778" 
    capture_lex $P154
    .const 'Sub' $P133 = "18_1304459373.778" 
    capture_lex $P133
    .const 'Sub' $P103 = "17_1304459373.778" 
    capture_lex $P103
    new $P89, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P89, control_88
    push_eh $P89
    .lex "self", param_90
    .lex "$module_name", param_91
    .lex "$cur_GLOBALish", param_92
.annotate 'line', 18
    new $P93, "Undef"
    .lex "$module_ctx", $P93
.annotate 'line', 19
    new $P94, "Undef"
    .lex "$path", $P94
.annotate 'line', 14
    find_lex $P95, "$module_ctx"
    unless_null $P95, vivify_48
    new $P95, "Undef"
  vivify_48:
.annotate 'line', 19
    find_lex $P96, "$module_name"
    unless_null $P96, vivify_49
    new $P96, "Undef"
  vivify_49:
    set $S97, $P96
    split $P98, "::", $S97
    join $S99, "/", $P98
    new $P100, 'String'
    set $P100, $S99
    concat $P101, $P100, ".pbc"
    store_lex "$path", $P101
.annotate 'line', 20
    .const 'Sub' $P103 = "17_1304459373.778" 
    capture_lex $P103
    $P103()
.annotate 'line', 26
    find_lex $P125, "$path"
    unless_null $P125, vivify_57
    new $P125, "Undef"
  vivify_57:
    find_lex $P126, "%modules_loaded"
    unless_null $P126, vivify_58
    $P126 = root_new ['parrot';'Hash']
  vivify_58:
    set $P127, $P126[$P125]
    unless_null $P127, vivify_59
    new $P127, "Undef"
  vivify_59:
    defined $I128, $P127
    if $I128, if_124
.annotate 'line', 29
    .const 'Sub' $P133 = "18_1304459373.778" 
    capture_lex $P133
    $P133()
    goto if_124_end
  if_124:
.annotate 'line', 27
    find_lex $P129, "$path"
    unless_null $P129, vivify_68
    new $P129, "Undef"
  vivify_68:
    find_lex $P130, "%modules_loaded"
    unless_null $P130, vivify_69
    $P130 = root_new ['parrot';'Hash']
  vivify_69:
    set $P131, $P130[$P129]
    unless_null $P131, vivify_70
    new $P131, "Undef"
  vivify_70:
    store_lex "$module_ctx", $P131
  if_124_end:
.annotate 'line', 39
    find_lex $P151, "$module_ctx"
    unless_null $P151, vivify_71
    new $P151, "Undef"
  vivify_71:
    defined $I152, $P151
    unless $I152, if_150_end
    .const 'Sub' $P154 = "19_1304459373.778" 
    capture_lex $P154
    $P154()
  if_150_end:
.annotate 'line', 47
    new $P167, "Exception"
    set $P167['type'], .CONTROL_RETURN
    find_lex $P168, "$module_ctx"
    unless_null $P168, vivify_78
    new $P168, "Undef"
  vivify_78:
    setattribute $P167, 'payload', $P168
    throw $P167
.annotate 'line', 14
    .return ()
  control_88:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P169, exception, "payload"
    .return ($P169)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block102"  :anon :subid("17_1304459373.778") :outer("16_1304459373.778")
.annotate 'line', 20
    new $P119, 'ExceptionHandler'
    set_label $P119, control_118
    $P119."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P119
.annotate 'line', 21
    new $P104, "Undef"
    .lex "$prefix", $P104
    find_dynamic_lex $P107, "%*COMPILING"
    unless_null $P107, vivify_50
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_51
    die "Contextual %*COMPILING not found"
  vivify_51:
  vivify_50:
    set $P108, $P107["%?OPTIONS"]
    unless_null $P108, vivify_52
    $P108 = root_new ['parrot';'Hash']
  vivify_52:
    set $P109, $P108["module-path"]
    unless_null $P109, vivify_53
    new $P109, "Undef"
  vivify_53:
    store_lex "$prefix", $P109
.annotate 'line', 22
    find_lex $P112, "$prefix"
    unless_null $P112, vivify_54
    new $P112, "Undef"
  vivify_54:
    if $P112, if_111
    set $P110, $P112
    goto if_111_end
  if_111:
.annotate 'line', 23
    find_lex $P113, "$prefix"
    unless_null $P113, vivify_55
    new $P113, "Undef"
  vivify_55:
    concat $P114, $P113, "/"
    find_lex $P115, "$path"
    unless_null $P115, vivify_56
    new $P115, "Undef"
  vivify_56:
    concat $P116, $P114, $P115
    store_lex "$path", $P116
.annotate 'line', 22
    set $P110, $P116
  if_111_end:
.annotate 'line', 20
    pop_eh 
    goto skip_handler_117
  control_118:
    .local pmc exception 
    .get_results (exception) 
    new $P122, 'Integer'
    set $P122, 1
    set exception["handled"], $P122
    set $I123, exception["handled"]
    ne $I123, 1, nothandled_121
  handled_120:
    .return (exception)
  nothandled_121:
    rethrow exception
  skip_handler_117:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block132"  :anon :subid("18_1304459373.778") :outer("16_1304459373.778")
.annotate 'line', 30
    new $P134, "Undef"
    .lex "$*CTXSAVE", $P134
.annotate 'line', 31
    new $P135, "Undef"
    .lex "$*MAIN_CTX", $P135
.annotate 'line', 32
    new $P136, "Undef"
    .lex "$preserve_global", $P136
.annotate 'line', 30
    find_lex $P137, "self"
    store_lex "$*CTXSAVE", $P137
    find_lex $P140, "$*MAIN_CTX"
    unless_null $P140, vivify_60
    get_hll_global $P138, "GLOBAL"
    get_who $P139, $P138
    set $P140, $P139["$MAIN_CTX"]
    unless_null $P140, vivify_61
    die "Contextual $*MAIN_CTX not found"
  vivify_61:
  vivify_60:
.annotate 'line', 32
    get_hll_global $P141, "GLOBAL"
    store_lex "$preserve_global", $P141
.annotate 'line', 33
    find_lex $P142, "$path"
    unless_null $P142, vivify_62
    new $P142, "Undef"
  vivify_62:
    set $S143, $P142
    load_bytecode $S143
.annotate 'line', 34
    find_lex $P144, "$preserve_global"
    unless_null $P144, vivify_63
    new $P144, "Undef"
  vivify_63:
    set_hll_global "GLOBAL", $P144
.annotate 'line', 35
    find_lex $P147, "$*MAIN_CTX"
    unless_null $P147, vivify_64
    get_hll_global $P145, "GLOBAL"
    get_who $P146, $P145
    set $P147, $P146["$MAIN_CTX"]
    unless_null $P147, vivify_65
    die "Contextual $*MAIN_CTX not found"
  vivify_65:
  vivify_64:
    store_lex "$module_ctx", $P147
    find_lex $P148, "$path"
    unless_null $P148, vivify_66
    new $P148, "Undef"
  vivify_66:
    find_lex $P149, "%modules_loaded"
    unless_null $P149, vivify_67
    $P149 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P149
  vivify_67:
    set $P149[$P148], $P147
.annotate 'line', 29
    .return ($P147)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block153"  :anon :subid("19_1304459373.778") :outer("16_1304459373.778")
.annotate 'line', 41
    new $P155, "Undef"
    .lex "$UNIT", $P155
    find_lex $P156, "$module_ctx"
    unless_null $P156, vivify_72
    new $P156, "Undef"
  vivify_72:
    getattribute $P157, $P156, "lex_pad"
    store_lex "$UNIT", $P157
.annotate 'line', 42
    find_lex $P160, "$UNIT"
    unless_null $P160, vivify_73
    $P160 = root_new ['parrot';'Hash']
  vivify_73:
    set $P161, $P160["GLOBALish"]
    unless_null $P161, vivify_74
    new $P161, "Undef"
  vivify_74:
    isnull $I162, $P161
    unless $I162, unless_159
    new $P158, 'Integer'
    set $P158, $I162
    goto unless_159_end
  unless_159:
.annotate 'line', 43
    find_lex $P163, "$cur_GLOBALish"
    unless_null $P163, vivify_75
    new $P163, "Undef"
  vivify_75:
    find_lex $P164, "$UNIT"
    unless_null $P164, vivify_76
    $P164 = root_new ['parrot';'Hash']
  vivify_76:
    set $P165, $P164["GLOBALish"]
    unless_null $P165, vivify_77
    new $P165, "Undef"
  vivify_77:
    $P166 = "merge_globals"($P163, $P165)
.annotate 'line', 42
    set $P158, $P166
  unless_159_end:
.annotate 'line', 39
    .return ($P158)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("20_1304459373.778") :outer("11_1304459373.778")
    .param pmc param_174
    .param pmc param_175
.annotate 'line', 77
    .const 'Sub' $P183 = "21_1304459373.778" 
    capture_lex $P183
    new $P173, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P173, control_172
    push_eh $P173
    .lex "self", param_174
    .lex "$setting_name", param_175
.annotate 'line', 78
    new $P176, "Undef"
    .lex "$setting", $P176
.annotate 'line', 77
    find_lex $P177, "$setting"
    unless_null $P177, vivify_79
    new $P177, "Undef"
  vivify_79:
.annotate 'line', 80
    find_lex $P179, "$setting_name"
    unless_null $P179, vivify_80
    new $P179, "Undef"
  vivify_80:
    set $S180, $P179
    isne $I181, $S180, "NULL"
    unless $I181, if_178_end
    .const 'Sub' $P183 = "21_1304459373.778" 
    capture_lex $P183
    $P183()
  if_178_end:
.annotate 'line', 106
    new $P244, "Exception"
    set $P244['type'], .CONTROL_RETURN
    find_lex $P245, "$setting"
    unless_null $P245, vivify_106
    new $P245, "Undef"
  vivify_106:
    setattribute $P244, 'payload', $P245
    throw $P244
.annotate 'line', 77
    .return ()
  control_172:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P246, exception, "payload"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block182"  :anon :subid("21_1304459373.778") :outer("20_1304459373.778")
.annotate 'line', 80
    .const 'Sub' $P215 = "23_1304459373.778" 
    capture_lex $P215
    .const 'Sub' $P188 = "22_1304459373.778" 
    capture_lex $P188
.annotate 'line', 82
    new $P184, "Undef"
    .lex "$path", $P184
    find_lex $P185, "$setting_name"
    unless_null $P185, vivify_81
    new $P185, "Undef"
  vivify_81:
    concat $P186, $P185, ".setting.pbc"
    store_lex "$path", $P186
.annotate 'line', 83
    .const 'Sub' $P188 = "22_1304459373.778" 
    capture_lex $P188
    $P188()
.annotate 'line', 91
    find_lex $P210, "$path"
    unless_null $P210, vivify_89
    new $P210, "Undef"
  vivify_89:
    find_lex $P211, "%settings_loaded"
    unless_null $P211, vivify_90
    $P211 = root_new ['parrot';'Hash']
  vivify_90:
    set $P212, $P211[$P210]
    unless_null $P212, vivify_91
    new $P212, "Undef"
  vivify_91:
    defined $I213, $P212
    if $I213, unless_209_end
    .const 'Sub' $P215 = "23_1304459373.778" 
    capture_lex $P215
    $P215()
  unless_209_end:
.annotate 'line', 103
    find_lex $P241, "$path"
    unless_null $P241, vivify_103
    new $P241, "Undef"
  vivify_103:
    find_lex $P242, "%settings_loaded"
    unless_null $P242, vivify_104
    $P242 = root_new ['parrot';'Hash']
  vivify_104:
    set $P243, $P242[$P241]
    unless_null $P243, vivify_105
    new $P243, "Undef"
  vivify_105:
    store_lex "$setting", $P243
.annotate 'line', 80
    .return ($P243)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block187"  :anon :subid("22_1304459373.778") :outer("21_1304459373.778")
.annotate 'line', 83
    new $P204, 'ExceptionHandler'
    set_label $P204, control_203
    $P204."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P204
.annotate 'line', 84
    new $P189, "Undef"
    .lex "$prefix", $P189
    find_dynamic_lex $P192, "%*COMPILING"
    unless_null $P192, vivify_82
    get_hll_global $P190, "GLOBAL"
    get_who $P191, $P190
    set $P192, $P191["%COMPILING"]
    unless_null $P192, vivify_83
    die "Contextual %*COMPILING not found"
  vivify_83:
  vivify_82:
    set $P193, $P192["%?OPTIONS"]
    unless_null $P193, vivify_84
    $P193 = root_new ['parrot';'Hash']
  vivify_84:
    set $P194, $P193["setting-path"]
    unless_null $P194, vivify_85
    new $P194, "Undef"
  vivify_85:
    store_lex "$prefix", $P194
.annotate 'line', 85
    find_lex $P197, "$prefix"
    unless_null $P197, vivify_86
    new $P197, "Undef"
  vivify_86:
    if $P197, if_196
    set $P195, $P197
    goto if_196_end
  if_196:
.annotate 'line', 86
    find_lex $P198, "$prefix"
    unless_null $P198, vivify_87
    new $P198, "Undef"
  vivify_87:
    concat $P199, $P198, "/"
    find_lex $P200, "$path"
    unless_null $P200, vivify_88
    new $P200, "Undef"
  vivify_88:
    concat $P201, $P199, $P200
    store_lex "$path", $P201
.annotate 'line', 85
    set $P195, $P201
  if_196_end:
.annotate 'line', 83
    pop_eh 
    goto skip_handler_202
  control_203:
    .local pmc exception 
    .get_results (exception) 
    new $P207, 'Integer'
    set $P207, 1
    set exception["handled"], $P207
    set $I208, exception["handled"]
    ne $I208, 1, nothandled_206
  handled_205:
    .return (exception)
  nothandled_206:
    rethrow exception
  skip_handler_202:
    .return ($P195)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block214"  :anon :subid("23_1304459373.778") :outer("21_1304459373.778")
.annotate 'line', 92
    new $P216, "Undef"
    .lex "$*CTXSAVE", $P216
.annotate 'line', 93
    new $P217, "Undef"
    .lex "$*MAIN_CTX", $P217
.annotate 'line', 94
    new $P218, "Undef"
    .lex "$preserve_global", $P218
.annotate 'line', 92
    find_lex $P219, "self"
    store_lex "$*CTXSAVE", $P219
    find_lex $P222, "$*MAIN_CTX"
    unless_null $P222, vivify_92
    get_hll_global $P220, "GLOBAL"
    get_who $P221, $P220
    set $P222, $P221["$MAIN_CTX"]
    unless_null $P222, vivify_93
    die "Contextual $*MAIN_CTX not found"
  vivify_93:
  vivify_92:
.annotate 'line', 94
    get_hll_global $P223, "GLOBAL"
    store_lex "$preserve_global", $P223
.annotate 'line', 95
    find_lex $P224, "$path"
    unless_null $P224, vivify_94
    new $P224, "Undef"
  vivify_94:
    set $S225, $P224
    load_bytecode $S225
.annotate 'line', 96
    find_lex $P226, "$preserve_global"
    unless_null $P226, vivify_95
    new $P226, "Undef"
  vivify_95:
    set_hll_global "GLOBAL", $P226
.annotate 'line', 97
    find_lex $P230, "$*MAIN_CTX"
    unless_null $P230, vivify_96
    get_hll_global $P228, "GLOBAL"
    get_who $P229, $P228
    set $P230, $P229["$MAIN_CTX"]
    unless_null $P230, vivify_97
    die "Contextual $*MAIN_CTX not found"
  vivify_97:
  vivify_96:
    defined $I231, $P230
    if $I231, unless_227_end
.annotate 'line', 98
    new $P232, 'String'
    set $P232, "Unable to load setting "
    find_lex $P233, "$setting_name"
    unless_null $P233, vivify_98
    new $P233, "Undef"
  vivify_98:
    concat $P234, $P232, $P233
    concat $P235, $P234, "; maybe it is missing a YOU_ARE_HERE?"
    die $P235
  unless_227_end:
.annotate 'line', 100
    find_lex $P238, "$*MAIN_CTX"
    unless_null $P238, vivify_99
    get_hll_global $P236, "GLOBAL"
    get_who $P237, $P236
    set $P238, $P237["$MAIN_CTX"]
    unless_null $P238, vivify_100
    die "Contextual $*MAIN_CTX not found"
  vivify_100:
  vivify_99:
    find_lex $P239, "$path"
    unless_null $P239, vivify_101
    new $P239, "Undef"
  vivify_101:
    find_lex $P240, "%settings_loaded"
    unless_null $P240, vivify_102
    $P240 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P240
  vivify_102:
    set $P240[$P239], $P238
.annotate 'line', 91
    .return ($P238)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module"  :subid("24_1304459373.778") :outer("11_1304459373.778")
    .param pmc param_248
    .param pmc param_249
.annotate 'line', 111
    .lex "self", param_248
    .lex "$mainline_ctx", param_249
.annotate 'line', 114
    new $P250, "Undef"
    .lex "$module_name", $P250
    getinterp $P251
    set $P252, $P251[2]
    unless_null $P252, vivify_107
    $P252 = root_new ['parrot';'ResizablePMCArray']
  vivify_107:
    set $P253, $P252[0]
    unless_null $P253, vivify_108
    new $P253, "Undef"
  vivify_108:
    store_lex "$module_name", $P253
.annotate 'line', 115
    find_lex $P255, "$module_name"
    unless_null $P255, vivify_109
    new $P255, "Undef"
  vivify_109:
    set $S256, $P255
    find_lex $P257, "$module_name"
    unless_null $P257, vivify_110
    new $P257, "Undef"
  vivify_110:
    set $S258, $P257
    length $I259, $S258
    new $P260, 'Integer'
    set $P260, $I259
    sub $P261, $P260, 4
    set $I262, $P261
    substr $S263, $S256, $I262, 4
    iseq $I264, $S263, ".pbc"
    if $I264, if_254
.annotate 'line', 118
    find_lex $P266, "$module_name"
    unless_null $P266, vivify_111
    new $P266, "Undef"
  vivify_111:
    set $S267, $P266
    find_lex $P268, "$module_name"
    unless_null $P268, vivify_112
    new $P268, "Undef"
  vivify_112:
    set $S269, $P268
    length $I270, $S269
    new $P271, 'Integer'
    set $P271, $I270
    sub $P272, $P271, 4
    set $I273, $P272
    substr $S274, $S267, $I273, 4
    iseq $I275, $S274, ".exe"
    if $I275, if_265
.annotate 'line', 123
    find_lex $P287, "$module_name"
    unless_null $P287, vivify_113
    new $P287, "Undef"
  vivify_113:
    concat $P288, $P287, ".pbc"
    store_lex "$module_name", $P288
.annotate 'line', 122
    goto if_265_end
  if_265:
.annotate 'line', 120
    find_lex $P276, "$module_name"
    unless_null $P276, vivify_114
    new $P276, "Undef"
  vivify_114:
    set $S277, $P276
    find_lex $P278, "$module_name"
    unless_null $P278, vivify_115
    new $P278, "Undef"
  vivify_115:
    set $S279, $P278
    length $I280, $S279
    new $P281, 'Integer'
    set $P281, $I280
    sub $P282, $P281, 3
    set $I283, $P282
    substr $S284, $S277, 0, $I283
    new $P285, 'String'
    set $P285, $S284
    concat $P286, $P285, "pbc"
    store_lex "$module_name", $P286
  if_265_end:
.annotate 'line', 118
    goto if_254_end
  if_254:
  if_254_end:
.annotate 'line', 127
    find_lex $P289, "$mainline_ctx"
    unless_null $P289, vivify_116
    new $P289, "Undef"
  vivify_116:
    find_lex $P290, "$module_name"
    unless_null $P290, vivify_117
    new $P290, "Undef"
  vivify_117:
    find_lex $P291, "%modules_loaded"
    unless_null $P291, vivify_118
    $P291 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P291
  vivify_118:
    set $P291[$P290], $P289
.annotate 'line', 111
    .return ($P289)
.end


.HLL "nqp"

.namespace []
.sub "_block301" :load :anon :subid("25_1304459373.778")
.annotate 'line', 1
    .const 'Sub' $P303 = "10_1304459373.778" 
    $P304 = $P303()
    .return ($P304)
.end

