
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303597758.082")
.annotate 'line', 0
    .const 'Sub' $P17 = "11_1303597758.082" 
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
    .const 'Sub' $P17 = "11_1303597758.082" 
    capture_lex $P17
    $P196 = $P17()
    .return ($P196)
    .const 'Sub' $P198 = "22_1303597758.082" 
    .return ($P198)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post23") :outer("10_1303597758.082")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303597758.082" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P202, "1303597757.802"
    isnull $I203, $P202
    if $I203, if_201
    .const 'Sub' $P241 = "10_1303597758.082" 
    $P242 = $P241."get_lexinfo"()
    nqp_get_sc_object $P243, "1303597757.802", 0
    $P242."set_static_lexpad_value"("GLOBALish", $P243)
    .const 'Sub' $P244 = "10_1303597758.082" 
    $P245 = $P244."get_lexinfo"()
    $P245."finish_static_lexpad"()
    .const 'Sub' $P246 = "10_1303597758.082" 
    $P247 = $P246."get_lexinfo"()
    nqp_get_sc_object $P248, "1303597757.802", 0
    $P247."set_static_lexpad_value"("$?PACKAGE", $P248)
    .const 'Sub' $P249 = "10_1303597758.082" 
    $P250 = $P249."get_lexinfo"()
    $P250."finish_static_lexpad"()
    nqp_get_sc_object $P251, "1303597757.802", 1
    set_hll_global "ModuleLoader", $P251
    .const 'Sub' $P252 = "10_1303597758.082" 
    $P253 = $P252."get_lexinfo"()
    nqp_get_sc_object $P254, "1303597757.802", 1
    $P253."set_static_lexpad_value"("ModuleLoader", $P254)
    .const 'Sub' $P255 = "10_1303597758.082" 
    $P256 = $P255."get_lexinfo"()
    $P256."finish_static_lexpad"()
    .const 'Sub' $P257 = "11_1303597758.082" 
    $P258 = $P257."get_lexinfo"()
    nqp_get_sc_object $P259, "1303597757.802", 1
    $P258."set_static_lexpad_value"("$?PACKAGE", $P259)
    .const 'Sub' $P260 = "11_1303597758.082" 
    $P261 = $P260."get_lexinfo"()
    $P261."finish_static_lexpad"()
    .const 'Sub' $P262 = "11_1303597758.082" 
    $P263 = $P262."get_lexinfo"()
    nqp_get_sc_object $P264, "1303597757.802", 1
    $P263."set_static_lexpad_value"("$?CLASS", $P264)
    .const 'Sub' $P265 = "11_1303597758.082" 
    $P266 = $P265."get_lexinfo"()
    $P266."finish_static_lexpad"()
    goto if_201_end
  if_201:
    nqp_dynop_setup 
    getinterp $P204
    get_class $P205, "LexPad"
    get_class $P206, "NQPLexPad"
    $P204."hll_map"($P205, $P206)
    nqp_create_sc $P207, "1303597757.802"
    .local pmc cur_sc
    set cur_sc, $P207
    get_hll_global $P208, "KnowHOW"
    $P209 = $P208."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P209, cur_sc
    nqp_set_sc_object "1303597757.802", 0, $P209
    .const 'Sub' $P210 = "10_1303597758.082" 
    $P211 = $P210."get_lexinfo"()
    nqp_get_sc_object $P212, "1303597757.802", 0
    $P211."set_static_lexpad_value"("GLOBALish", $P212)
    .const 'Sub' $P213 = "10_1303597758.082" 
    $P214 = $P213."get_lexinfo"()
    $P214."finish_static_lexpad"()
    .const 'Sub' $P215 = "10_1303597758.082" 
    $P216 = $P215."get_lexinfo"()
    nqp_get_sc_object $P217, "1303597757.802", 0
    $P216."set_static_lexpad_value"("$?PACKAGE", $P217)
    .const 'Sub' $P218 = "10_1303597758.082" 
    $P219 = $P218."get_lexinfo"()
    $P219."finish_static_lexpad"()
    get_hll_global $P220, "KnowHOW"
    $P221 = $P220."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P221, cur_sc
    nqp_set_sc_object "1303597757.802", 1, $P221
    nqp_get_sc_object $P222, "1303597757.802", 1
    nqp_get_sc_object $P223, "1303597757.802", 0
    get_who $P224, $P223
    set $P224["ModuleLoader"], $P222
    nqp_get_sc_object $P225, "1303597757.802", 1
    set_hll_global "ModuleLoader", $P225
    .const 'Sub' $P226 = "10_1303597758.082" 
    $P227 = $P226."get_lexinfo"()
    nqp_get_sc_object $P228, "1303597757.802", 1
    $P227."set_static_lexpad_value"("ModuleLoader", $P228)
    .const 'Sub' $P229 = "10_1303597758.082" 
    $P230 = $P229."get_lexinfo"()
    $P230."finish_static_lexpad"()
    .const 'Sub' $P231 = "11_1303597758.082" 
    $P232 = $P231."get_lexinfo"()
    nqp_get_sc_object $P233, "1303597757.802", 1
    $P232."set_static_lexpad_value"("$?PACKAGE", $P233)
    .const 'Sub' $P234 = "11_1303597758.082" 
    $P235 = $P234."get_lexinfo"()
    $P235."finish_static_lexpad"()
    .const 'Sub' $P236 = "11_1303597758.082" 
    $P237 = $P236."get_lexinfo"()
    nqp_get_sc_object $P238, "1303597757.802", 1
    $P237."set_static_lexpad_value"("$?CLASS", $P238)
    .const 'Sub' $P239 = "11_1303597758.082" 
    $P240 = $P239."get_lexinfo"()
    $P240."finish_static_lexpad"()
  if_201_end:
    nqp_get_sc_object $P267, "1303597757.802", 0
    set_hll_global "GLOBAL", $P267
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303597758.082") :outer("10_1303597758.082")
.annotate 'line', 1
    .const 'Sub' $P186 = "21_1303597758.082" 
    capture_lex $P186
    .const 'Sub' $P146 = "19_1303597758.082" 
    capture_lex $P146
    .const 'Sub' $P86 = "16_1303597758.082" 
    capture_lex $P86
    .const 'Sub' $P82 = "15_1303597758.082" 
    capture_lex $P82
    .const 'Sub' $P20 = "12_1303597758.082" 
    capture_lex $P20
.annotate 'line', 2
    $P18 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P18
.annotate 'line', 3
    $P19 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P19
.annotate 'line', 48
    .const 'Sub' $P20 = "12_1303597758.082" 
    newclosure $P77, $P20
    .lex "merge_globals", $P77
.annotate 'line', 3
    .lex "$?PACKAGE", $P78
    .lex "$?CLASS", $P79
.annotate 'line', 1
    find_lex $P80, "%modules_loaded"
    unless_null $P80, vivify_44
    $P80 = root_new ['parrot';'Hash']
  vivify_44:
    find_lex $P81, "%settings_loaded"
    unless_null $P81, vivify_45
    $P81 = root_new ['parrot';'Hash']
  vivify_45:
.annotate 'line', 14
    find_lex $P145, "merge_globals"
.annotate 'line', 70
    .const 'Sub' $P146 = "19_1303597758.082" 
    newclosure $P184, $P146
.annotate 'line', 1
    .return ($P184)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post24") :outer("11_1303597758.082")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303597758.082" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P186 = "21_1303597758.082" 
    capture_lex $P186
    $P186()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block185"  :anon :subid("21_1303597758.082") :outer("11_1303597758.082")
.annotate 'line', 1
    nqp_get_sc_object $P187, "1303597757.802", 1
    .local pmc type_obj
    set type_obj, $P187
    get_how $P188, type_obj
    .const 'Sub' $P189 = "15_1303597758.082" 
    $P188."add_method"(type_obj, "ctxsave", $P189)
    get_how $P190, type_obj
    .const 'Sub' $P191 = "16_1303597758.082" 
    $P190."add_method"(type_obj, "load_module", $P191)
    get_how $P192, type_obj
    .const 'Sub' $P193 = "19_1303597758.082" 
    $P192."add_method"(type_obj, "load_setting", $P193)
    get_how $P194, type_obj
    $P195 = $P194."compose"(type_obj)
    .return ($P195)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1303597758.082") :outer("11_1303597758.082")
    .param pmc param_21
    .param pmc param_22
.annotate 'line', 48
    .const 'Sub' $P46 = "14_1303597758.082" 
    capture_lex $P46
    .const 'Sub' $P31 = "13_1303597758.082" 
    capture_lex $P31
    .lex "$target", param_21
    .lex "$source", param_22
.annotate 'line', 52
    $P23 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P23
.annotate 'line', 48
    find_lex $P24, "%known_symbols"
    unless_null $P24, vivify_25
    $P24 = root_new ['parrot';'Hash']
  vivify_25:
.annotate 'line', 53
    find_lex $P26, "$target"
    unless_null $P26, vivify_26
    new $P26, "Undef"
  vivify_26:
    get_who $P27, $P26
    defined $I28, $P27
    unless $I28, for_undef_27
    iter $P25, $P27
    new $P38, 'ExceptionHandler'
    set_label $P38, loop37_handler
    $P38."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P38
  loop37_test:
    unless $P25, loop37_done
    shift $P29, $P25
  loop37_redo:
    .const 'Sub' $P31 = "13_1303597758.082" 
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
  for_undef_27:
.annotate 'line', 56
    find_lex $P41, "$source"
    unless_null $P41, vivify_30
    new $P41, "Undef"
  vivify_30:
    get_who $P42, $P41
    defined $I43, $P42
    unless $I43, for_undef_31
    iter $P40, $P42
    new $P75, 'ExceptionHandler'
    set_label $P75, loop74_handler
    $P75."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P75
  loop74_test:
    unless $P40, loop74_done
    shift $P44, $P40
  loop74_redo:
    .const 'Sub' $P46 = "14_1303597758.082" 
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
  for_undef_31:
.annotate 'line', 48
    .return ($P40)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block30"  :anon :subid("13_1303597758.082") :outer("12_1303597758.082")
    .param pmc param_32
.annotate 'line', 53
    .lex "$_", param_32
.annotate 'line', 54
    new $P33, "Integer"
    assign $P33, 1
    find_lex $P34, "$_"
    unless_null $P34, vivify_28
    new $P34, "Undef"
  vivify_28:
    $P35 = $P34."key"()
    find_lex $P36, "%known_symbols"
    unless_null $P36, vivify_29
    $P36 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P36
  vivify_29:
    set $P36[$P35], $P33
.annotate 'line', 53
    .return ($P33)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block45"  :anon :subid("14_1303597758.082") :outer("12_1303597758.082")
    .param pmc param_48
.annotate 'line', 57
    new $P47, "Undef"
    .lex "$sym", $P47
    .lex "$_", param_48
    find_lex $P49, "$_"
    unless_null $P49, vivify_32
    new $P49, "Undef"
  vivify_32:
    $P50 = $P49."key"()
    store_lex "$sym", $P50
.annotate 'line', 58
    find_lex $P53, "$sym"
    unless_null $P53, vivify_33
    new $P53, "Undef"
  vivify_33:
    find_lex $P54, "%known_symbols"
    unless_null $P54, vivify_34
    $P54 = root_new ['parrot';'Hash']
  vivify_34:
    set $P55, $P54[$P53]
    unless_null $P55, vivify_35
    new $P55, "Undef"
  vivify_35:
    isfalse $I56, $P55
    if $I56, if_52
.annotate 'line', 61
    find_lex $P64, "$sym"
    unless_null $P64, vivify_36
    new $P64, "Undef"
  vivify_36:
    find_lex $P65, "$target"
    unless_null $P65, vivify_37
    new $P65, "Undef"
  vivify_37:
    get_who $P66, $P65
    set $P67, $P66[$P64]
    unless_null $P67, vivify_38
    new $P67, "Undef"
  vivify_38:
    find_lex $P68, "$_"
    unless_null $P68, vivify_39
    new $P68, "Undef"
  vivify_39:
    $P69 = $P68."value"()
    issame $I70, $P67, $P69
    if $I70, if_63
.annotate 'line', 65
    new $P71, 'String'
    set $P71, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P72, "$sym"
    unless_null $P72, vivify_40
    new $P72, "Undef"
  vivify_40:
    concat $P73, $P71, $P72
    die $P73
.annotate 'line', 64
    goto if_63_end
  if_63:
  if_63_end:
.annotate 'line', 61
    set $P51, $P62
.annotate 'line', 58
    goto if_52_end
  if_52:
.annotate 'line', 59
    find_lex $P57, "$_"
    unless_null $P57, vivify_41
    new $P57, "Undef"
  vivify_41:
    $P58 = $P57."value"()
    find_lex $P59, "$sym"
    unless_null $P59, vivify_42
    new $P59, "Undef"
  vivify_42:
    find_lex $P60, "$target"
    unless_null $P60, vivify_43
    new $P60, "Undef"
    store_lex "$target", $P60
  vivify_43:
    get_who $P61, $P60
    set $P61[$P59], $P58
.annotate 'line', 58
    set $P51, $P58
  if_52_end:
.annotate 'line', 56
    .return ($P51)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("15_1303597758.082") :outer("11_1303597758.082")
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
.sub "load_module"  :subid("16_1303597758.082") :outer("11_1303597758.082")
    .param pmc param_87
    .param pmc param_88
    .param pmc param_89
    .param pmc param_90 :optional :named("prefix")
    .param int has_param_90 :opt_flag
.annotate 'line', 14
    .const 'Sub' $P131 = "18_1303597758.082" 
    capture_lex $P131
    .const 'Sub' $P116 = "17_1303597758.082" 
    capture_lex $P116
    .lex "self", param_87
    .lex "$module_name", param_88
    .lex "$cur_GLOBALish", param_89
    if has_param_90, optparam_46
    new $P91, "Undef"
    set param_90, $P91
  optparam_46:
    .lex "$prefix", param_90
.annotate 'line', 18
    new $P92, "Undef"
    .lex "$module_ctx", $P92
.annotate 'line', 19
    new $P93, "Undef"
    .lex "$path", $P93
.annotate 'line', 14
    find_lex $P94, "$module_ctx"
    unless_null $P94, vivify_47
    new $P94, "Undef"
  vivify_47:
.annotate 'line', 19
    find_lex $P95, "$module_name"
    unless_null $P95, vivify_48
    new $P95, "Undef"
  vivify_48:
    set $S96, $P95
    split $P97, "::", $S96
    join $S98, "/", $P97
    new $P99, 'String'
    set $P99, $S98
    concat $P100, $P99, ".pbc"
    store_lex "$path", $P100
.annotate 'line', 20
    find_lex $P102, "$prefix"
    unless_null $P102, vivify_49
    new $P102, "Undef"
  vivify_49:
    unless $P102, if_101_end
.annotate 'line', 21
    find_lex $P103, "$prefix"
    unless_null $P103, vivify_50
    new $P103, "Undef"
  vivify_50:
    concat $P104, $P103, "/"
    find_lex $P105, "$path"
    unless_null $P105, vivify_51
    new $P105, "Undef"
  vivify_51:
    concat $P106, $P104, $P105
    store_lex "$path", $P106
  if_101_end:
.annotate 'line', 23
    find_lex $P108, "$path"
    unless_null $P108, vivify_52
    new $P108, "Undef"
  vivify_52:
    find_lex $P109, "%modules_loaded"
    unless_null $P109, vivify_53
    $P109 = root_new ['parrot';'Hash']
  vivify_53:
    set $P110, $P109[$P108]
    unless_null $P110, vivify_54
    new $P110, "Undef"
  vivify_54:
    defined $I111, $P110
    if $I111, if_107
.annotate 'line', 26
    .const 'Sub' $P116 = "17_1303597758.082" 
    capture_lex $P116
    $P116()
    goto if_107_end
  if_107:
.annotate 'line', 24
    find_lex $P112, "$path"
    unless_null $P112, vivify_62
    new $P112, "Undef"
  vivify_62:
    find_lex $P113, "%modules_loaded"
    unless_null $P113, vivify_63
    $P113 = root_new ['parrot';'Hash']
  vivify_63:
    set $P114, $P113[$P112]
    unless_null $P114, vivify_64
    new $P114, "Undef"
  vivify_64:
    store_lex "$module_ctx", $P114
  if_107_end:
.annotate 'line', 35
    find_lex $P128, "$module_ctx"
    unless_null $P128, vivify_65
    new $P128, "Undef"
  vivify_65:
    defined $I129, $P128
    if $I129, if_127
    new $P126, 'Integer'
    set $P126, $I129
    goto if_127_end
  if_127:
    .const 'Sub' $P131 = "18_1303597758.082" 
    capture_lex $P131
    $P144 = $P131()
    set $P126, $P144
  if_127_end:
.annotate 'line', 14
    .return ($P126)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block115"  :anon :subid("17_1303597758.082") :outer("16_1303597758.082")
.annotate 'line', 27
    new $P117, "Undef"
    .lex "$*CTXSAVE", $P117
.annotate 'line', 28
    new $P118, "Undef"
    .lex "$*MAIN_CTX", $P118
.annotate 'line', 27
    find_lex $P119, "self"
    store_lex "$*CTXSAVE", $P119
    find_lex $P120, "$*MAIN_CTX"
    unless_null $P120, vivify_55
    get_hll_global $P120, "$MAIN_CTX"
    unless_null $P120, vivify_56
    die "Contextual $*MAIN_CTX not found"
  vivify_56:
  vivify_55:
.annotate 'line', 29
    find_lex $P121, "$path"
    unless_null $P121, vivify_57
    new $P121, "Undef"
  vivify_57:
    set $S122, $P121
    load_bytecode $S122
.annotate 'line', 30
    find_lex $P123, "$*MAIN_CTX"
    unless_null $P123, vivify_58
    get_hll_global $P123, "$MAIN_CTX"
    unless_null $P123, vivify_59
    die "Contextual $*MAIN_CTX not found"
  vivify_59:
  vivify_58:
    store_lex "$module_ctx", $P123
    find_lex $P124, "$path"
    unless_null $P124, vivify_60
    new $P124, "Undef"
  vivify_60:
    find_lex $P125, "%modules_loaded"
    unless_null $P125, vivify_61
    $P125 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P125
  vivify_61:
    set $P125[$P124], $P123
.annotate 'line', 26
    .return ($P123)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block130"  :anon :subid("18_1303597758.082") :outer("16_1303597758.082")
.annotate 'line', 36
    new $P132, "Undef"
    .lex "$UNIT", $P132
    find_lex $P133, "$module_ctx"
    unless_null $P133, vivify_66
    new $P133, "Undef"
  vivify_66:
    getattribute $P134, $P133, "lex_pad"
    store_lex "$UNIT", $P134
.annotate 'line', 37
    find_lex $P137, "$UNIT"
    unless_null $P137, vivify_67
    $P137 = root_new ['parrot';'Hash']
  vivify_67:
    set $P138, $P137["GLOBALish"]
    unless_null $P138, vivify_68
    new $P138, "Undef"
  vivify_68:
    isnull $I139, $P138
    unless $I139, unless_136
    new $P135, 'Integer'
    set $P135, $I139
    goto unless_136_end
  unless_136:
.annotate 'line', 38
    find_lex $P140, "$cur_GLOBALish"
    unless_null $P140, vivify_69
    new $P140, "Undef"
  vivify_69:
    find_lex $P141, "$UNIT"
    unless_null $P141, vivify_70
    $P141 = root_new ['parrot';'Hash']
  vivify_70:
    set $P142, $P141["GLOBALish"]
    unless_null $P142, vivify_71
    new $P142, "Undef"
  vivify_71:
    $P143 = "merge_globals"($P140, $P142)
.annotate 'line', 37
    set $P135, $P143
  unless_136_end:
.annotate 'line', 35
    .return ($P135)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("19_1303597758.082") :outer("11_1303597758.082")
    .param pmc param_149
    .param pmc param_150
.annotate 'line', 70
    .const 'Sub' $P161 = "20_1303597758.082" 
    capture_lex $P161
    new $P148, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P148, control_147
    push_eh $P148
    .lex "self", param_149
    .lex "$setting_name", param_150
.annotate 'line', 71
    find_lex $P152, "$setting_name"
    unless_null $P152, vivify_72
    new $P152, "Undef"
  vivify_72:
    set $S153, $P152
    isne $I154, $S153, "NULL"
    unless $I154, if_151_end
.annotate 'line', 73
    find_lex $P156, "$setting_name"
    unless_null $P156, vivify_73
    new $P156, "Undef"
  vivify_73:
    find_lex $P157, "%settings_loaded"
    unless_null $P157, vivify_74
    $P157 = root_new ['parrot';'Hash']
  vivify_74:
    set $P158, $P157[$P156]
    unless_null $P158, vivify_75
    new $P158, "Undef"
  vivify_75:
    defined $I159, $P158
    if $I159, unless_155_end
    .const 'Sub' $P161 = "20_1303597758.082" 
    capture_lex $P161
    $P161()
  unless_155_end:
  if_151_end:
.annotate 'line', 83
    new $P179, "Exception"
    set $P179['type'], .CONTROL_RETURN
    find_lex $P180, "$setting_name"
    unless_null $P180, vivify_86
    new $P180, "Undef"
  vivify_86:
    find_lex $P181, "%settings_loaded"
    unless_null $P181, vivify_87
    $P181 = root_new ['parrot';'Hash']
  vivify_87:
    set $P182, $P181[$P180]
    unless_null $P182, vivify_88
    new $P182, "Undef"
  vivify_88:
    setattribute $P179, 'payload', $P182
    throw $P179
.annotate 'line', 70
    .return ()
  control_147:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P183, exception, "payload"
    .return ($P183)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block160"  :anon :subid("20_1303597758.082") :outer("19_1303597758.082")
.annotate 'line', 74
    new $P162, "Undef"
    .lex "$*CTXSAVE", $P162
.annotate 'line', 75
    new $P163, "Undef"
    .lex "$*MAIN_CTX", $P163
.annotate 'line', 74
    find_lex $P164, "self"
    store_lex "$*CTXSAVE", $P164
    find_lex $P165, "$*MAIN_CTX"
    unless_null $P165, vivify_76
    get_hll_global $P165, "$MAIN_CTX"
    unless_null $P165, vivify_77
    die "Contextual $*MAIN_CTX not found"
  vivify_77:
  vivify_76:
.annotate 'line', 76
    find_lex $P166, "$setting_name"
    unless_null $P166, vivify_78
    new $P166, "Undef"
  vivify_78:
    concat $P167, $P166, ".setting.pbc"
    set $S168, $P167
    load_bytecode $S168
.annotate 'line', 77
    find_lex $P170, "$*MAIN_CTX"
    unless_null $P170, vivify_79
    get_hll_global $P170, "$MAIN_CTX"
    unless_null $P170, vivify_80
    die "Contextual $*MAIN_CTX not found"
  vivify_80:
  vivify_79:
    defined $I171, $P170
    if $I171, unless_169_end
.annotate 'line', 78
    new $P172, 'String'
    set $P172, "Unable to load setting "
    find_lex $P173, "$setting_name"
    unless_null $P173, vivify_81
    new $P173, "Undef"
  vivify_81:
    concat $P174, $P172, $P173
    concat $P175, $P174, "; maybe it is missing a YOU_ARE_HERE?"
    die $P175
  unless_169_end:
.annotate 'line', 80
    find_lex $P176, "$*MAIN_CTX"
    unless_null $P176, vivify_82
    get_hll_global $P176, "$MAIN_CTX"
    unless_null $P176, vivify_83
    die "Contextual $*MAIN_CTX not found"
  vivify_83:
  vivify_82:
    find_lex $P177, "$setting_name"
    unless_null $P177, vivify_84
    new $P177, "Undef"
  vivify_84:
    find_lex $P178, "%settings_loaded"
    unless_null $P178, vivify_85
    $P178 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P178
  vivify_85:
    set $P178[$P177], $P176
.annotate 'line', 73
    .return ($P176)
.end


.HLL "nqp"

.namespace []
.sub "_block197" :load :anon :subid("22_1303597758.082")
.annotate 'line', 1
    .const 'Sub' $P199 = "10_1303597758.082" 
    $P200 = $P199()
    .return ($P200)
.end

