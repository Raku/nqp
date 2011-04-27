
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303923586.182")
.annotate 'line', 0
    .const 'Sub' $P17 = "11_1303923586.182" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "ModuleLoader", $P15
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P17 = "11_1303923586.182" 
    capture_lex $P17
    $P17()
.annotate 'line', 112
    find_lex $P258, "ModuleLoader"
    set_hll_global "ModuleLoader", $P258
.annotate 'line', 1
    .return ()
    .const 'Sub' $P260 = "25_1303923586.182" 
    .return ($P260)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post26") :outer("10_1303923586.182")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303923586.182" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P264, "1303923585.794"
    isnull $I265, $P264
    if $I265, if_263
    .const 'Sub' $P303 = "10_1303923586.182" 
    $P304 = $P303."get_lexinfo"()
    nqp_get_sc_object $P305, "1303923585.794", 0
    $P304."set_static_lexpad_value"("GLOBALish", $P305)
    .const 'Sub' $P306 = "10_1303923586.182" 
    $P307 = $P306."get_lexinfo"()
    $P307."finish_static_lexpad"()
    .const 'Sub' $P308 = "10_1303923586.182" 
    $P309 = $P308."get_lexinfo"()
    nqp_get_sc_object $P310, "1303923585.794", 0
    $P309."set_static_lexpad_value"("$?PACKAGE", $P310)
    .const 'Sub' $P311 = "10_1303923586.182" 
    $P312 = $P311."get_lexinfo"()
    $P312."finish_static_lexpad"()
    nqp_get_sc_object $P313, "1303923585.794", 1
    set_hll_global "ModuleLoader", $P313
    .const 'Sub' $P314 = "10_1303923586.182" 
    $P315 = $P314."get_lexinfo"()
    nqp_get_sc_object $P316, "1303923585.794", 1
    $P315."set_static_lexpad_value"("ModuleLoader", $P316)
    .const 'Sub' $P317 = "10_1303923586.182" 
    $P318 = $P317."get_lexinfo"()
    $P318."finish_static_lexpad"()
    .const 'Sub' $P319 = "11_1303923586.182" 
    $P320 = $P319."get_lexinfo"()
    nqp_get_sc_object $P321, "1303923585.794", 1
    $P320."set_static_lexpad_value"("$?PACKAGE", $P321)
    .const 'Sub' $P322 = "11_1303923586.182" 
    $P323 = $P322."get_lexinfo"()
    $P323."finish_static_lexpad"()
    .const 'Sub' $P324 = "11_1303923586.182" 
    $P325 = $P324."get_lexinfo"()
    nqp_get_sc_object $P326, "1303923585.794", 1
    $P325."set_static_lexpad_value"("$?CLASS", $P326)
    .const 'Sub' $P327 = "11_1303923586.182" 
    $P328 = $P327."get_lexinfo"()
    $P328."finish_static_lexpad"()
    goto if_263_end
  if_263:
    nqp_dynop_setup 
    getinterp $P266
    get_class $P267, "LexPad"
    get_class $P268, "NQPLexPad"
    $P266."hll_map"($P267, $P268)
    nqp_create_sc $P269, "1303923585.794"
    .local pmc cur_sc
    set cur_sc, $P269
    nqp_get_sc_object $P270, "__6MODEL_CORE__", 0
    $P271 = $P270."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P271, cur_sc
    nqp_set_sc_object "1303923585.794", 0, $P271
    .const 'Sub' $P272 = "10_1303923586.182" 
    $P273 = $P272."get_lexinfo"()
    nqp_get_sc_object $P274, "1303923585.794", 0
    $P273."set_static_lexpad_value"("GLOBALish", $P274)
    .const 'Sub' $P275 = "10_1303923586.182" 
    $P276 = $P275."get_lexinfo"()
    $P276."finish_static_lexpad"()
    .const 'Sub' $P277 = "10_1303923586.182" 
    $P278 = $P277."get_lexinfo"()
    nqp_get_sc_object $P279, "1303923585.794", 0
    $P278."set_static_lexpad_value"("$?PACKAGE", $P279)
    .const 'Sub' $P280 = "10_1303923586.182" 
    $P281 = $P280."get_lexinfo"()
    $P281."finish_static_lexpad"()
    nqp_get_sc_object $P282, "__6MODEL_CORE__", 0
    $P283 = $P282."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P283, cur_sc
    nqp_set_sc_object "1303923585.794", 1, $P283
    nqp_get_sc_object $P284, "1303923585.794", 1
    nqp_get_sc_object $P285, "1303923585.794", 0
    get_who $P286, $P285
    set $P286["ModuleLoader"], $P284
    nqp_get_sc_object $P287, "1303923585.794", 1
    set_hll_global "ModuleLoader", $P287
    .const 'Sub' $P288 = "10_1303923586.182" 
    $P289 = $P288."get_lexinfo"()
    nqp_get_sc_object $P290, "1303923585.794", 1
    $P289."set_static_lexpad_value"("ModuleLoader", $P290)
    .const 'Sub' $P291 = "10_1303923586.182" 
    $P292 = $P291."get_lexinfo"()
    $P292."finish_static_lexpad"()
    .const 'Sub' $P293 = "11_1303923586.182" 
    $P294 = $P293."get_lexinfo"()
    nqp_get_sc_object $P295, "1303923585.794", 1
    $P294."set_static_lexpad_value"("$?PACKAGE", $P295)
    .const 'Sub' $P296 = "11_1303923586.182" 
    $P297 = $P296."get_lexinfo"()
    $P297."finish_static_lexpad"()
    .const 'Sub' $P298 = "11_1303923586.182" 
    $P299 = $P298."get_lexinfo"()
    nqp_get_sc_object $P300, "1303923585.794", 1
    $P299."set_static_lexpad_value"("$?CLASS", $P300)
    .const 'Sub' $P301 = "11_1303923586.182" 
    $P302 = $P301."get_lexinfo"()
    $P302."finish_static_lexpad"()
  if_263_end:
    nqp_get_sc_object $P329, "1303923585.794", 0
    set_hll_global "GLOBAL", $P329
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303923586.182") :outer("10_1303923586.182")
.annotate 'line', 1
    .const 'Sub' $P248 = "24_1303923586.182" 
    capture_lex $P248
    .const 'Sub' $P170 = "20_1303923586.182" 
    capture_lex $P170
    .const 'Sub' $P86 = "16_1303923586.182" 
    capture_lex $P86
    .const 'Sub' $P82 = "15_1303923586.182" 
    capture_lex $P82
    .const 'Sub' $P20 = "12_1303923586.182" 
    capture_lex $P20
.annotate 'line', 2
    $P18 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P18
.annotate 'line', 3
    $P19 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P19
.annotate 'line', 55
    .const 'Sub' $P20 = "12_1303923586.182" 
    newclosure $P77, $P20
    .lex "merge_globals", $P77
.annotate 'line', 3
    .lex "$?PACKAGE", $P78
    .lex "$?CLASS", $P79
.annotate 'line', 1
    find_lex $P80, "%modules_loaded"
    unless_null $P80, vivify_47
    $P80 = root_new ['parrot';'Hash']
  vivify_47:
    find_lex $P81, "%settings_loaded"
    unless_null $P81, vivify_48
    $P81 = root_new ['parrot';'Hash']
  vivify_48:
.annotate 'line', 14
    find_lex $P169, "merge_globals"
.annotate 'line', 77
    .const 'Sub' $P170 = "20_1303923586.182" 
    newclosure $P246, $P170
.annotate 'line', 1
    .return ($P246)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post27") :outer("11_1303923586.182")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303923586.182" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P248 = "24_1303923586.182" 
    capture_lex $P248
    $P248()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block247"  :anon :subid("24_1303923586.182") :outer("11_1303923586.182")
.annotate 'line', 1
    nqp_get_sc_object $P249, "1303923585.794", 1
    .local pmc type_obj
    set type_obj, $P249
    get_how $P250, type_obj
    .const 'Sub' $P251 = "15_1303923586.182" 
    $P250."add_method"(type_obj, "ctxsave", $P251)
    get_how $P252, type_obj
    .const 'Sub' $P253 = "16_1303923586.182" 
    $P252."add_method"(type_obj, "load_module", $P253)
    get_how $P254, type_obj
    .const 'Sub' $P255 = "20_1303923586.182" 
    $P254."add_method"(type_obj, "load_setting", $P255)
    get_how $P256, type_obj
    $P257 = $P256."compose"(type_obj)
    .return ($P257)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1303923586.182") :outer("11_1303923586.182")
    .param pmc param_21
    .param pmc param_22
.annotate 'line', 55
    .const 'Sub' $P46 = "14_1303923586.182" 
    capture_lex $P46
    .const 'Sub' $P31 = "13_1303923586.182" 
    capture_lex $P31
    .lex "$target", param_21
    .lex "$source", param_22
.annotate 'line', 59
    $P23 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P23
.annotate 'line', 55
    find_lex $P24, "%known_symbols"
    unless_null $P24, vivify_28
    $P24 = root_new ['parrot';'Hash']
  vivify_28:
.annotate 'line', 60
    find_lex $P26, "$target"
    unless_null $P26, vivify_29
    new $P26, "Undef"
  vivify_29:
    get_who $P27, $P26
    defined $I28, $P27
    unless $I28, for_undef_30
    iter $P25, $P27
    new $P38, 'ExceptionHandler'
    set_label $P38, loop37_handler
    $P38."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P38
  loop37_test:
    unless $P25, loop37_done
    shift $P29, $P25
  loop37_redo:
    .const 'Sub' $P31 = "13_1303923586.182" 
    capture_lex $P31
    $P31($P29)
  loop37_next:
    goto loop37_test
  loop37_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P39, exception, 'type'
    eq $P39, .CONTROL_LOOP_NEXT, loop37_next
    eq $P39, .CONTROL_LOOP_REDO, loop37_redo
  loop37_done:
    pop_eh 
  for_undef_30:
.annotate 'line', 63
    find_lex $P41, "$source"
    unless_null $P41, vivify_33
    new $P41, "Undef"
  vivify_33:
    get_who $P42, $P41
    defined $I43, $P42
    unless $I43, for_undef_34
    iter $P40, $P42
    new $P75, 'ExceptionHandler'
    set_label $P75, loop74_handler
    $P75."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P75
  loop74_test:
    unless $P40, loop74_done
    shift $P44, $P40
  loop74_redo:
    .const 'Sub' $P46 = "14_1303923586.182" 
    capture_lex $P46
    $P46($P44)
  loop74_next:
    goto loop74_test
  loop74_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P76, exception, 'type'
    eq $P76, .CONTROL_LOOP_NEXT, loop74_next
    eq $P76, .CONTROL_LOOP_REDO, loop74_redo
  loop74_done:
    pop_eh 
  for_undef_34:
.annotate 'line', 55
    .return ($P40)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block30"  :anon :subid("13_1303923586.182") :outer("12_1303923586.182")
    .param pmc param_32
.annotate 'line', 60
    .lex "$_", param_32
.annotate 'line', 61
    new $P33, "Integer"
    assign $P33, 1
    find_lex $P34, "$_"
    unless_null $P34, vivify_31
    new $P34, "Undef"
  vivify_31:
    $P35 = $P34."key"()
    find_lex $P36, "%known_symbols"
    unless_null $P36, vivify_32
    $P36 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P36
  vivify_32:
    set $P36[$P35], $P33
.annotate 'line', 60
    .return ($P33)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block45"  :anon :subid("14_1303923586.182") :outer("12_1303923586.182")
    .param pmc param_48
.annotate 'line', 64
    new $P47, "Undef"
    .lex "$sym", $P47
    .lex "$_", param_48
    find_lex $P49, "$_"
    unless_null $P49, vivify_35
    new $P49, "Undef"
  vivify_35:
    $P50 = $P49."key"()
    store_lex "$sym", $P50
.annotate 'line', 65
    find_lex $P53, "$sym"
    unless_null $P53, vivify_36
    new $P53, "Undef"
  vivify_36:
    find_lex $P54, "%known_symbols"
    unless_null $P54, vivify_37
    $P54 = root_new ['parrot';'Hash']
  vivify_37:
    set $P55, $P54[$P53]
    unless_null $P55, vivify_38
    new $P55, "Undef"
  vivify_38:
    isfalse $I56, $P55
    if $I56, if_52
.annotate 'line', 68
    find_lex $P64, "$sym"
    unless_null $P64, vivify_39
    new $P64, "Undef"
  vivify_39:
    find_lex $P65, "$target"
    unless_null $P65, vivify_40
    new $P65, "Undef"
  vivify_40:
    get_who $P66, $P65
    set $P67, $P66[$P64]
    unless_null $P67, vivify_41
    new $P67, "Undef"
  vivify_41:
    find_lex $P68, "$_"
    unless_null $P68, vivify_42
    new $P68, "Undef"
  vivify_42:
    $P69 = $P68."value"()
    issame $I70, $P67, $P69
    if $I70, if_63
.annotate 'line', 72
    new $P71, 'String'
    set $P71, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P72, "$sym"
    unless_null $P72, vivify_43
    new $P72, "Undef"
  vivify_43:
    concat $P73, $P71, $P72
    die $P73
.annotate 'line', 71
    goto if_63_end
  if_63:
  if_63_end:
.annotate 'line', 68
    set $P51, $P62
.annotate 'line', 65
    goto if_52_end
  if_52:
.annotate 'line', 66
    find_lex $P57, "$_"
    unless_null $P57, vivify_44
    new $P57, "Undef"
  vivify_44:
    $P58 = $P57."value"()
    find_lex $P59, "$sym"
    unless_null $P59, vivify_45
    new $P59, "Undef"
  vivify_45:
    find_lex $P60, "$target"
    unless_null $P60, vivify_46
    new $P60, "Undef"
    store_lex "$target", $P60
  vivify_46:
    get_who $P61, $P60
    set $P61[$P59], $P58
.annotate 'line', 65
    set $P51, $P58
  if_52_end:
.annotate 'line', 63
    .return ($P51)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("15_1303923586.182") :outer("11_1303923586.182")
    .param pmc param_83
.annotate 'line', 5
    .lex "self", param_83
.annotate 'line', 7

                $P0 = getinterp
                $P84 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P84
.annotate 'line', 11
    new $P85, "Integer"
    assign $P85, 0
    store_dynamic_lex "$*CTXSAVE", $P85
.annotate 'line', 5
    .return ($P85)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_module"  :subid("16_1303923586.182") :outer("11_1303923586.182")
    .param pmc param_89
    .param pmc param_90
    .param pmc param_91
.annotate 'line', 14
    .const 'Sub' $P153 = "19_1303923586.182" 
    capture_lex $P153
    .const 'Sub' $P132 = "18_1303923586.182" 
    capture_lex $P132
    .const 'Sub' $P102 = "17_1303923586.182" 
    capture_lex $P102
    new $P88, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P88, control_87
    push_eh $P88
    .lex "self", param_89
    .lex "$module_name", param_90
    .lex "$cur_GLOBALish", param_91
.annotate 'line', 18
    new $P92, "Undef"
    .lex "$module_ctx", $P92
.annotate 'line', 19
    new $P93, "Undef"
    .lex "$path", $P93
.annotate 'line', 14
    find_lex $P94, "$module_ctx"
    unless_null $P94, vivify_49
    new $P94, "Undef"
  vivify_49:
.annotate 'line', 19
    find_lex $P95, "$module_name"
    unless_null $P95, vivify_50
    new $P95, "Undef"
  vivify_50:
    set $S96, $P95
    split $P97, "::", $S96
    join $S98, "/", $P97
    new $P99, 'String'
    set $P99, $S98
    concat $P100, $P99, ".pbc"
    store_lex "$path", $P100
.annotate 'line', 20
    .const 'Sub' $P102 = "17_1303923586.182" 
    capture_lex $P102
    $P102()
.annotate 'line', 26
    find_lex $P124, "$path"
    unless_null $P124, vivify_58
    new $P124, "Undef"
  vivify_58:
    find_lex $P125, "%modules_loaded"
    unless_null $P125, vivify_59
    $P125 = root_new ['parrot';'Hash']
  vivify_59:
    set $P126, $P125[$P124]
    unless_null $P126, vivify_60
    new $P126, "Undef"
  vivify_60:
    defined $I127, $P126
    if $I127, if_123
.annotate 'line', 29
    .const 'Sub' $P132 = "18_1303923586.182" 
    capture_lex $P132
    $P132()
    goto if_123_end
  if_123:
.annotate 'line', 27
    find_lex $P128, "$path"
    unless_null $P128, vivify_69
    new $P128, "Undef"
  vivify_69:
    find_lex $P129, "%modules_loaded"
    unless_null $P129, vivify_70
    $P129 = root_new ['parrot';'Hash']
  vivify_70:
    set $P130, $P129[$P128]
    unless_null $P130, vivify_71
    new $P130, "Undef"
  vivify_71:
    store_lex "$module_ctx", $P130
  if_123_end:
.annotate 'line', 39
    find_lex $P150, "$module_ctx"
    unless_null $P150, vivify_72
    new $P150, "Undef"
  vivify_72:
    defined $I151, $P150
    unless $I151, if_149_end
    .const 'Sub' $P153 = "19_1303923586.182" 
    capture_lex $P153
    $P153()
  if_149_end:
.annotate 'line', 47
    new $P166, "Exception"
    set $P166['type'], .CONTROL_RETURN
    find_lex $P167, "$module_ctx"
    unless_null $P167, vivify_79
    new $P167, "Undef"
  vivify_79:
    setattribute $P166, 'payload', $P167
    throw $P166
.annotate 'line', 14
    .return ()
  control_87:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P168, exception, "payload"
    .return ($P168)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block101"  :anon :subid("17_1303923586.182") :outer("16_1303923586.182")
.annotate 'line', 20
    new $P118, 'ExceptionHandler'
    set_label $P118, control_117
    $P118."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P118
.annotate 'line', 21
    new $P103, "Undef"
    .lex "$prefix", $P103
    find_dynamic_lex $P106, "%*COMPILING"
    unless_null $P106, vivify_51
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%COMPILING"]
    unless_null $P106, vivify_52
    die "Contextual %*COMPILING not found"
  vivify_52:
  vivify_51:
    set $P107, $P106["%?OPTIONS"]
    unless_null $P107, vivify_53
    $P107 = root_new ['parrot';'Hash']
  vivify_53:
    set $P108, $P107["module-path"]
    unless_null $P108, vivify_54
    new $P108, "Undef"
  vivify_54:
    store_lex "$prefix", $P108
.annotate 'line', 22
    find_lex $P111, "$prefix"
    unless_null $P111, vivify_55
    new $P111, "Undef"
  vivify_55:
    if $P111, if_110
    set $P109, $P111
    goto if_110_end
  if_110:
.annotate 'line', 23
    find_lex $P112, "$prefix"
    unless_null $P112, vivify_56
    new $P112, "Undef"
  vivify_56:
    concat $P113, $P112, "/"
    find_lex $P114, "$path"
    unless_null $P114, vivify_57
    new $P114, "Undef"
  vivify_57:
    concat $P115, $P113, $P114
    store_lex "$path", $P115
.annotate 'line', 22
    set $P109, $P115
  if_110_end:
.annotate 'line', 20
    pop_eh 
    goto skip_handler_116
  control_117:
    .local pmc exception 
    .get_results (exception) 
    new $P121, 'Integer'
    set $P121, 1
    set exception["handled"], $P121
    set $I122, exception["handled"]
    ne $I122, 1, nothandled_120
  handled_119:
    .return (exception)
  nothandled_120:
    rethrow exception
  skip_handler_116:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block131"  :anon :subid("18_1303923586.182") :outer("16_1303923586.182")
.annotate 'line', 30
    new $P133, "Undef"
    .lex "$*CTXSAVE", $P133
.annotate 'line', 31
    new $P134, "Undef"
    .lex "$*MAIN_CTX", $P134
.annotate 'line', 32
    new $P135, "Undef"
    .lex "$preserve_global", $P135
.annotate 'line', 30
    find_lex $P136, "self"
    store_lex "$*CTXSAVE", $P136
    find_lex $P139, "$*MAIN_CTX"
    unless_null $P139, vivify_61
    get_hll_global $P137, "GLOBAL"
    get_who $P138, $P137
    set $P139, $P138["$MAIN_CTX"]
    unless_null $P139, vivify_62
    die "Contextual $*MAIN_CTX not found"
  vivify_62:
  vivify_61:
.annotate 'line', 32
    get_hll_global $P140, "GLOBAL"
    store_lex "$preserve_global", $P140
.annotate 'line', 33
    find_lex $P141, "$path"
    unless_null $P141, vivify_63
    new $P141, "Undef"
  vivify_63:
    set $S142, $P141
    load_bytecode $S142
.annotate 'line', 34
    find_lex $P143, "$preserve_global"
    unless_null $P143, vivify_64
    new $P143, "Undef"
  vivify_64:
    set_hll_global "GLOBAL", $P143
.annotate 'line', 35
    find_lex $P146, "$*MAIN_CTX"
    unless_null $P146, vivify_65
    get_hll_global $P144, "GLOBAL"
    get_who $P145, $P144
    set $P146, $P145["$MAIN_CTX"]
    unless_null $P146, vivify_66
    die "Contextual $*MAIN_CTX not found"
  vivify_66:
  vivify_65:
    store_lex "$module_ctx", $P146
    find_lex $P147, "$path"
    unless_null $P147, vivify_67
    new $P147, "Undef"
  vivify_67:
    find_lex $P148, "%modules_loaded"
    unless_null $P148, vivify_68
    $P148 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P148
  vivify_68:
    set $P148[$P147], $P146
.annotate 'line', 29
    .return ($P146)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block152"  :anon :subid("19_1303923586.182") :outer("16_1303923586.182")
.annotate 'line', 41
    new $P154, "Undef"
    .lex "$UNIT", $P154
    find_lex $P155, "$module_ctx"
    unless_null $P155, vivify_73
    new $P155, "Undef"
  vivify_73:
    getattribute $P156, $P155, "lex_pad"
    store_lex "$UNIT", $P156
.annotate 'line', 42
    find_lex $P159, "$UNIT"
    unless_null $P159, vivify_74
    $P159 = root_new ['parrot';'Hash']
  vivify_74:
    set $P160, $P159["GLOBALish"]
    unless_null $P160, vivify_75
    new $P160, "Undef"
  vivify_75:
    isnull $I161, $P160
    unless $I161, unless_158
    new $P157, 'Integer'
    set $P157, $I161
    goto unless_158_end
  unless_158:
.annotate 'line', 43
    find_lex $P162, "$cur_GLOBALish"
    unless_null $P162, vivify_76
    new $P162, "Undef"
  vivify_76:
    find_lex $P163, "$UNIT"
    unless_null $P163, vivify_77
    $P163 = root_new ['parrot';'Hash']
  vivify_77:
    set $P164, $P163["GLOBALish"]
    unless_null $P164, vivify_78
    new $P164, "Undef"
  vivify_78:
    $P165 = "merge_globals"($P162, $P164)
.annotate 'line', 42
    set $P157, $P165
  unless_158_end:
.annotate 'line', 39
    .return ($P157)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("20_1303923586.182") :outer("11_1303923586.182")
    .param pmc param_173
    .param pmc param_174
.annotate 'line', 77
    .const 'Sub' $P182 = "21_1303923586.182" 
    capture_lex $P182
    new $P172, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P172, control_171
    push_eh $P172
    .lex "self", param_173
    .lex "$setting_name", param_174
.annotate 'line', 78
    new $P175, "Undef"
    .lex "$setting", $P175
.annotate 'line', 77
    find_lex $P176, "$setting"
    unless_null $P176, vivify_80
    new $P176, "Undef"
  vivify_80:
.annotate 'line', 80
    find_lex $P178, "$setting_name"
    unless_null $P178, vivify_81
    new $P178, "Undef"
  vivify_81:
    set $S179, $P178
    isne $I180, $S179, "NULL"
    unless $I180, if_177_end
    .const 'Sub' $P182 = "21_1303923586.182" 
    capture_lex $P182
    $P182()
  if_177_end:
.annotate 'line', 106
    new $P243, "Exception"
    set $P243['type'], .CONTROL_RETURN
    find_lex $P244, "$setting"
    unless_null $P244, vivify_107
    new $P244, "Undef"
  vivify_107:
    setattribute $P243, 'payload', $P244
    throw $P243
.annotate 'line', 77
    .return ()
  control_171:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block181"  :anon :subid("21_1303923586.182") :outer("20_1303923586.182")
.annotate 'line', 80
    .const 'Sub' $P214 = "23_1303923586.182" 
    capture_lex $P214
    .const 'Sub' $P187 = "22_1303923586.182" 
    capture_lex $P187
.annotate 'line', 82
    new $P183, "Undef"
    .lex "$path", $P183
    find_lex $P184, "$setting_name"
    unless_null $P184, vivify_82
    new $P184, "Undef"
  vivify_82:
    concat $P185, $P184, ".setting.pbc"
    store_lex "$path", $P185
.annotate 'line', 83
    .const 'Sub' $P187 = "22_1303923586.182" 
    capture_lex $P187
    $P187()
.annotate 'line', 91
    find_lex $P209, "$path"
    unless_null $P209, vivify_90
    new $P209, "Undef"
  vivify_90:
    find_lex $P210, "%settings_loaded"
    unless_null $P210, vivify_91
    $P210 = root_new ['parrot';'Hash']
  vivify_91:
    set $P211, $P210[$P209]
    unless_null $P211, vivify_92
    new $P211, "Undef"
  vivify_92:
    defined $I212, $P211
    if $I212, unless_208_end
    .const 'Sub' $P214 = "23_1303923586.182" 
    capture_lex $P214
    $P214()
  unless_208_end:
.annotate 'line', 103
    find_lex $P240, "$path"
    unless_null $P240, vivify_104
    new $P240, "Undef"
  vivify_104:
    find_lex $P241, "%settings_loaded"
    unless_null $P241, vivify_105
    $P241 = root_new ['parrot';'Hash']
  vivify_105:
    set $P242, $P241[$P240]
    unless_null $P242, vivify_106
    new $P242, "Undef"
  vivify_106:
    store_lex "$setting", $P242
.annotate 'line', 80
    .return ($P242)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block186"  :anon :subid("22_1303923586.182") :outer("21_1303923586.182")
.annotate 'line', 83
    new $P203, 'ExceptionHandler'
    set_label $P203, control_202
    $P203."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P203
.annotate 'line', 84
    new $P188, "Undef"
    .lex "$prefix", $P188
    find_dynamic_lex $P191, "%*COMPILING"
    unless_null $P191, vivify_83
    get_hll_global $P189, "GLOBAL"
    get_who $P190, $P189
    set $P191, $P190["%COMPILING"]
    unless_null $P191, vivify_84
    die "Contextual %*COMPILING not found"
  vivify_84:
  vivify_83:
    set $P192, $P191["%?OPTIONS"]
    unless_null $P192, vivify_85
    $P192 = root_new ['parrot';'Hash']
  vivify_85:
    set $P193, $P192["setting-path"]
    unless_null $P193, vivify_86
    new $P193, "Undef"
  vivify_86:
    store_lex "$prefix", $P193
.annotate 'line', 85
    find_lex $P196, "$prefix"
    unless_null $P196, vivify_87
    new $P196, "Undef"
  vivify_87:
    if $P196, if_195
    set $P194, $P196
    goto if_195_end
  if_195:
.annotate 'line', 86
    find_lex $P197, "$prefix"
    unless_null $P197, vivify_88
    new $P197, "Undef"
  vivify_88:
    concat $P198, $P197, "/"
    find_lex $P199, "$path"
    unless_null $P199, vivify_89
    new $P199, "Undef"
  vivify_89:
    concat $P200, $P198, $P199
    store_lex "$path", $P200
.annotate 'line', 85
    set $P194, $P200
  if_195_end:
.annotate 'line', 83
    pop_eh 
    goto skip_handler_201
  control_202:
    .local pmc exception 
    .get_results (exception) 
    new $P206, 'Integer'
    set $P206, 1
    set exception["handled"], $P206
    set $I207, exception["handled"]
    ne $I207, 1, nothandled_205
  handled_204:
    .return (exception)
  nothandled_205:
    rethrow exception
  skip_handler_201:
    .return ($P194)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block213"  :anon :subid("23_1303923586.182") :outer("21_1303923586.182")
.annotate 'line', 92
    new $P215, "Undef"
    .lex "$*CTXSAVE", $P215
.annotate 'line', 93
    new $P216, "Undef"
    .lex "$*MAIN_CTX", $P216
.annotate 'line', 94
    new $P217, "Undef"
    .lex "$preserve_global", $P217
.annotate 'line', 92
    find_lex $P218, "self"
    store_lex "$*CTXSAVE", $P218
    find_lex $P221, "$*MAIN_CTX"
    unless_null $P221, vivify_93
    get_hll_global $P219, "GLOBAL"
    get_who $P220, $P219
    set $P221, $P220["$MAIN_CTX"]
    unless_null $P221, vivify_94
    die "Contextual $*MAIN_CTX not found"
  vivify_94:
  vivify_93:
.annotate 'line', 94
    get_hll_global $P222, "GLOBAL"
    store_lex "$preserve_global", $P222
.annotate 'line', 95
    find_lex $P223, "$path"
    unless_null $P223, vivify_95
    new $P223, "Undef"
  vivify_95:
    set $S224, $P223
    load_bytecode $S224
.annotate 'line', 96
    find_lex $P225, "$preserve_global"
    unless_null $P225, vivify_96
    new $P225, "Undef"
  vivify_96:
    set_hll_global "GLOBAL", $P225
.annotate 'line', 97
    find_lex $P229, "$*MAIN_CTX"
    unless_null $P229, vivify_97
    get_hll_global $P227, "GLOBAL"
    get_who $P228, $P227
    set $P229, $P228["$MAIN_CTX"]
    unless_null $P229, vivify_98
    die "Contextual $*MAIN_CTX not found"
  vivify_98:
  vivify_97:
    defined $I230, $P229
    if $I230, unless_226_end
.annotate 'line', 98
    new $P231, 'String'
    set $P231, "Unable to load setting "
    find_lex $P232, "$setting_name"
    unless_null $P232, vivify_99
    new $P232, "Undef"
  vivify_99:
    concat $P233, $P231, $P232
    concat $P234, $P233, "; maybe it is missing a YOU_ARE_HERE?"
    die $P234
  unless_226_end:
.annotate 'line', 100
    find_lex $P237, "$*MAIN_CTX"
    unless_null $P237, vivify_100
    get_hll_global $P235, "GLOBAL"
    get_who $P236, $P235
    set $P237, $P236["$MAIN_CTX"]
    unless_null $P237, vivify_101
    die "Contextual $*MAIN_CTX not found"
  vivify_101:
  vivify_100:
    find_lex $P238, "$path"
    unless_null $P238, vivify_102
    new $P238, "Undef"
  vivify_102:
    find_lex $P239, "%settings_loaded"
    unless_null $P239, vivify_103
    $P239 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P239
  vivify_103:
    set $P239[$P238], $P237
.annotate 'line', 91
    .return ($P237)
.end


.HLL "nqp"

.namespace []
.sub "_block259" :load :anon :subid("25_1303923586.182")
.annotate 'line', 1
    .const 'Sub' $P261 = "10_1303923586.182" 
    $P262 = $P261()
    .return ($P262)
.end

