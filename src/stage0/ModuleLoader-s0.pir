
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303739772.002")
.annotate 'line', 0
    .const 'Sub' $P17 = "11_1303739772.002" 
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
    .const 'Sub' $P17 = "11_1303739772.002" 
    capture_lex $P17
    $P215 = $P17()
    .return ($P215)
    .const 'Sub' $P217 = "22_1303739772.002" 
    .return ($P217)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post23") :outer("10_1303739772.002")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303739772.002" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P221, "1303739771.695"
    isnull $I222, $P221
    if $I222, if_220
    .const 'Sub' $P260 = "10_1303739772.002" 
    $P261 = $P260."get_lexinfo"()
    nqp_get_sc_object $P262, "1303739771.695", 0
    $P261."set_static_lexpad_value"("GLOBALish", $P262)
    .const 'Sub' $P263 = "10_1303739772.002" 
    $P264 = $P263."get_lexinfo"()
    $P264."finish_static_lexpad"()
    .const 'Sub' $P265 = "10_1303739772.002" 
    $P266 = $P265."get_lexinfo"()
    nqp_get_sc_object $P267, "1303739771.695", 0
    $P266."set_static_lexpad_value"("$?PACKAGE", $P267)
    .const 'Sub' $P268 = "10_1303739772.002" 
    $P269 = $P268."get_lexinfo"()
    $P269."finish_static_lexpad"()
    nqp_get_sc_object $P270, "1303739771.695", 1
    set_hll_global "ModuleLoader", $P270
    .const 'Sub' $P271 = "10_1303739772.002" 
    $P272 = $P271."get_lexinfo"()
    nqp_get_sc_object $P273, "1303739771.695", 1
    $P272."set_static_lexpad_value"("ModuleLoader", $P273)
    .const 'Sub' $P274 = "10_1303739772.002" 
    $P275 = $P274."get_lexinfo"()
    $P275."finish_static_lexpad"()
    .const 'Sub' $P276 = "11_1303739772.002" 
    $P277 = $P276."get_lexinfo"()
    nqp_get_sc_object $P278, "1303739771.695", 1
    $P277."set_static_lexpad_value"("$?PACKAGE", $P278)
    .const 'Sub' $P279 = "11_1303739772.002" 
    $P280 = $P279."get_lexinfo"()
    $P280."finish_static_lexpad"()
    .const 'Sub' $P281 = "11_1303739772.002" 
    $P282 = $P281."get_lexinfo"()
    nqp_get_sc_object $P283, "1303739771.695", 1
    $P282."set_static_lexpad_value"("$?CLASS", $P283)
    .const 'Sub' $P284 = "11_1303739772.002" 
    $P285 = $P284."get_lexinfo"()
    $P285."finish_static_lexpad"()
    goto if_220_end
  if_220:
    nqp_dynop_setup 
    getinterp $P223
    get_class $P224, "LexPad"
    get_class $P225, "NQPLexPad"
    $P223."hll_map"($P224, $P225)
    nqp_create_sc $P226, "1303739771.695"
    .local pmc cur_sc
    set cur_sc, $P226
    get_hll_global $P227, "KnowHOW"
    $P228 = $P227."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P228, cur_sc
    nqp_set_sc_object "1303739771.695", 0, $P228
    .const 'Sub' $P229 = "10_1303739772.002" 
    $P230 = $P229."get_lexinfo"()
    nqp_get_sc_object $P231, "1303739771.695", 0
    $P230."set_static_lexpad_value"("GLOBALish", $P231)
    .const 'Sub' $P232 = "10_1303739772.002" 
    $P233 = $P232."get_lexinfo"()
    $P233."finish_static_lexpad"()
    .const 'Sub' $P234 = "10_1303739772.002" 
    $P235 = $P234."get_lexinfo"()
    nqp_get_sc_object $P236, "1303739771.695", 0
    $P235."set_static_lexpad_value"("$?PACKAGE", $P236)
    .const 'Sub' $P237 = "10_1303739772.002" 
    $P238 = $P237."get_lexinfo"()
    $P238."finish_static_lexpad"()
    get_hll_global $P239, "KnowHOW"
    $P240 = $P239."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P240, cur_sc
    nqp_set_sc_object "1303739771.695", 1, $P240
    nqp_get_sc_object $P241, "1303739771.695", 1
    nqp_get_sc_object $P242, "1303739771.695", 0
    get_who $P243, $P242
    set $P243["ModuleLoader"], $P241
    nqp_get_sc_object $P244, "1303739771.695", 1
    set_hll_global "ModuleLoader", $P244
    .const 'Sub' $P245 = "10_1303739772.002" 
    $P246 = $P245."get_lexinfo"()
    nqp_get_sc_object $P247, "1303739771.695", 1
    $P246."set_static_lexpad_value"("ModuleLoader", $P247)
    .const 'Sub' $P248 = "10_1303739772.002" 
    $P249 = $P248."get_lexinfo"()
    $P249."finish_static_lexpad"()
    .const 'Sub' $P250 = "11_1303739772.002" 
    $P251 = $P250."get_lexinfo"()
    nqp_get_sc_object $P252, "1303739771.695", 1
    $P251."set_static_lexpad_value"("$?PACKAGE", $P252)
    .const 'Sub' $P253 = "11_1303739772.002" 
    $P254 = $P253."get_lexinfo"()
    $P254."finish_static_lexpad"()
    .const 'Sub' $P255 = "11_1303739772.002" 
    $P256 = $P255."get_lexinfo"()
    nqp_get_sc_object $P257, "1303739771.695", 1
    $P256."set_static_lexpad_value"("$?CLASS", $P257)
    .const 'Sub' $P258 = "11_1303739772.002" 
    $P259 = $P258."get_lexinfo"()
    $P259."finish_static_lexpad"()
  if_220_end:
    nqp_get_sc_object $P286, "1303739771.695", 0
    set_hll_global "GLOBAL", $P286
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303739772.002") :outer("10_1303739772.002")
.annotate 'line', 1
    .const 'Sub' $P205 = "21_1303739772.002" 
    capture_lex $P205
    .const 'Sub' $P156 = "19_1303739772.002" 
    capture_lex $P156
    .const 'Sub' $P86 = "16_1303739772.002" 
    capture_lex $P86
    .const 'Sub' $P82 = "15_1303739772.002" 
    capture_lex $P82
    .const 'Sub' $P20 = "12_1303739772.002" 
    capture_lex $P20
.annotate 'line', 2
    $P18 = root_new ['parrot';'Hash']
    .lex "%modules_loaded", $P18
.annotate 'line', 3
    $P19 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P19
.annotate 'line', 52
    .const 'Sub' $P20 = "12_1303739772.002" 
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
    find_lex $P155, "merge_globals"
.annotate 'line', 74
    .const 'Sub' $P156 = "19_1303739772.002" 
    newclosure $P203, $P156
.annotate 'line', 1
    .return ($P203)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post24") :outer("11_1303739772.002")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303739772.002" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P205 = "21_1303739772.002" 
    capture_lex $P205
    $P205()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block204"  :anon :subid("21_1303739772.002") :outer("11_1303739772.002")
.annotate 'line', 1
    nqp_get_sc_object $P206, "1303739771.695", 1
    .local pmc type_obj
    set type_obj, $P206
    get_how $P207, type_obj
    .const 'Sub' $P208 = "15_1303739772.002" 
    $P207."add_method"(type_obj, "ctxsave", $P208)
    get_how $P209, type_obj
    .const 'Sub' $P210 = "16_1303739772.002" 
    $P209."add_method"(type_obj, "load_module", $P210)
    get_how $P211, type_obj
    .const 'Sub' $P212 = "19_1303739772.002" 
    $P211."add_method"(type_obj, "load_setting", $P212)
    get_how $P213, type_obj
    $P214 = $P213."compose"(type_obj)
    .return ($P214)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1303739772.002") :outer("11_1303739772.002")
    .param pmc param_21
    .param pmc param_22
.annotate 'line', 52
    .const 'Sub' $P46 = "14_1303739772.002" 
    capture_lex $P46
    .const 'Sub' $P31 = "13_1303739772.002" 
    capture_lex $P31
    .lex "$target", param_21
    .lex "$source", param_22
.annotate 'line', 56
    $P23 = root_new ['parrot';'Hash']
    .lex "%known_symbols", $P23
.annotate 'line', 52
    find_lex $P24, "%known_symbols"
    unless_null $P24, vivify_25
    $P24 = root_new ['parrot';'Hash']
  vivify_25:
.annotate 'line', 57
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
    .const 'Sub' $P31 = "13_1303739772.002" 
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
.annotate 'line', 60
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
    .const 'Sub' $P46 = "14_1303739772.002" 
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
.annotate 'line', 52
    .return ($P40)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block30"  :anon :subid("13_1303739772.002") :outer("12_1303739772.002")
    .param pmc param_32
.annotate 'line', 57
    .lex "$_", param_32
.annotate 'line', 58
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
.annotate 'line', 57
    .return ($P33)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block45"  :anon :subid("14_1303739772.002") :outer("12_1303739772.002")
    .param pmc param_48
.annotate 'line', 61
    new $P47, "Undef"
    .lex "$sym", $P47
    .lex "$_", param_48
    find_lex $P49, "$_"
    unless_null $P49, vivify_32
    new $P49, "Undef"
  vivify_32:
    $P50 = $P49."key"()
    store_lex "$sym", $P50
.annotate 'line', 62
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
.annotate 'line', 65
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
.annotate 'line', 69
    new $P71, 'String'
    set $P71, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P72, "$sym"
    unless_null $P72, vivify_40
    new $P72, "Undef"
  vivify_40:
    concat $P73, $P71, $P72
    die $P73
.annotate 'line', 68
    goto if_63_end
  if_63:
  if_63_end:
.annotate 'line', 65
    set $P51, $P62
.annotate 'line', 62
    goto if_52_end
  if_52:
.annotate 'line', 63
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
.annotate 'line', 62
    set $P51, $P58
  if_52_end:
.annotate 'line', 60
    .return ($P51)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("15_1303739772.002") :outer("11_1303739772.002")
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
.sub "load_module"  :subid("16_1303739772.002") :outer("11_1303739772.002")
    .param pmc param_89
    .param pmc param_90
    .param pmc param_91
    .param pmc param_92 :optional :named("prefix")
    .param int has_param_92 :opt_flag
.annotate 'line', 14
    .const 'Sub' $P139 = "18_1303739772.002" 
    capture_lex $P139
    .const 'Sub' $P118 = "17_1303739772.002" 
    capture_lex $P118
    new $P88, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P88, control_87
    push_eh $P88
    .lex "self", param_89
    .lex "$module_name", param_90
    .lex "$cur_GLOBALish", param_91
    if has_param_92, optparam_46
    new $P93, "Undef"
    set param_92, $P93
  optparam_46:
    .lex "$prefix", param_92
.annotate 'line', 18
    new $P94, "Undef"
    .lex "$module_ctx", $P94
.annotate 'line', 19
    new $P95, "Undef"
    .lex "$path", $P95
.annotate 'line', 14
    find_lex $P96, "$module_ctx"
    unless_null $P96, vivify_47
    new $P96, "Undef"
  vivify_47:
.annotate 'line', 19
    find_lex $P97, "$module_name"
    unless_null $P97, vivify_48
    new $P97, "Undef"
  vivify_48:
    set $S98, $P97
    split $P99, "::", $S98
    join $S100, "/", $P99
    new $P101, 'String'
    set $P101, $S100
    concat $P102, $P101, ".pbc"
    store_lex "$path", $P102
.annotate 'line', 20
    find_lex $P104, "$prefix"
    unless_null $P104, vivify_49
    new $P104, "Undef"
  vivify_49:
    unless $P104, if_103_end
.annotate 'line', 21
    find_lex $P105, "$prefix"
    unless_null $P105, vivify_50
    new $P105, "Undef"
  vivify_50:
    concat $P106, $P105, "/"
    find_lex $P107, "$path"
    unless_null $P107, vivify_51
    new $P107, "Undef"
  vivify_51:
    concat $P108, $P106, $P107
    store_lex "$path", $P108
  if_103_end:
.annotate 'line', 23
    find_lex $P110, "$path"
    unless_null $P110, vivify_52
    new $P110, "Undef"
  vivify_52:
    find_lex $P111, "%modules_loaded"
    unless_null $P111, vivify_53
    $P111 = root_new ['parrot';'Hash']
  vivify_53:
    set $P112, $P111[$P110]
    unless_null $P112, vivify_54
    new $P112, "Undef"
  vivify_54:
    defined $I113, $P112
    if $I113, if_109
.annotate 'line', 26
    .const 'Sub' $P118 = "17_1303739772.002" 
    capture_lex $P118
    $P118()
    goto if_109_end
  if_109:
.annotate 'line', 24
    find_lex $P114, "$path"
    unless_null $P114, vivify_63
    new $P114, "Undef"
  vivify_63:
    find_lex $P115, "%modules_loaded"
    unless_null $P115, vivify_64
    $P115 = root_new ['parrot';'Hash']
  vivify_64:
    set $P116, $P115[$P114]
    unless_null $P116, vivify_65
    new $P116, "Undef"
  vivify_65:
    store_lex "$module_ctx", $P116
  if_109_end:
.annotate 'line', 36
    find_lex $P136, "$module_ctx"
    unless_null $P136, vivify_66
    new $P136, "Undef"
  vivify_66:
    defined $I137, $P136
    unless $I137, if_135_end
    .const 'Sub' $P139 = "18_1303739772.002" 
    capture_lex $P139
    $P139()
  if_135_end:
.annotate 'line', 44
    new $P152, "Exception"
    set $P152['type'], .CONTROL_RETURN
    find_lex $P153, "$module_ctx"
    unless_null $P153, vivify_73
    new $P153, "Undef"
  vivify_73:
    setattribute $P152, 'payload', $P153
    throw $P152
.annotate 'line', 14
    .return ()
  control_87:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P154, exception, "payload"
    .return ($P154)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block117"  :anon :subid("17_1303739772.002") :outer("16_1303739772.002")
.annotate 'line', 27
    new $P119, "Undef"
    .lex "$*CTXSAVE", $P119
.annotate 'line', 28
    new $P120, "Undef"
    .lex "$*MAIN_CTX", $P120
.annotate 'line', 29
    new $P121, "Undef"
    .lex "$preserve_global", $P121
.annotate 'line', 27
    find_lex $P122, "self"
    store_lex "$*CTXSAVE", $P122
    find_lex $P125, "$*MAIN_CTX"
    unless_null $P125, vivify_55
    get_hll_global $P123, "GLOBAL"
    get_who $P124, $P123
    set $P125, $P124["$MAIN_CTX"]
    unless_null $P125, vivify_56
    die "Contextual $*MAIN_CTX not found"
  vivify_56:
  vivify_55:
.annotate 'line', 29
    get_hll_global $P126, "GLOBAL"
    store_lex "$preserve_global", $P126
.annotate 'line', 30
    find_lex $P127, "$path"
    unless_null $P127, vivify_57
    new $P127, "Undef"
  vivify_57:
    set $S128, $P127
    load_bytecode $S128
.annotate 'line', 31
    find_lex $P129, "$preserve_global"
    unless_null $P129, vivify_58
    new $P129, "Undef"
  vivify_58:
    set_hll_global "GLOBAL", $P129
.annotate 'line', 32
    find_lex $P132, "$*MAIN_CTX"
    unless_null $P132, vivify_59
    get_hll_global $P130, "GLOBAL"
    get_who $P131, $P130
    set $P132, $P131["$MAIN_CTX"]
    unless_null $P132, vivify_60
    die "Contextual $*MAIN_CTX not found"
  vivify_60:
  vivify_59:
    store_lex "$module_ctx", $P132
    find_lex $P133, "$path"
    unless_null $P133, vivify_61
    new $P133, "Undef"
  vivify_61:
    find_lex $P134, "%modules_loaded"
    unless_null $P134, vivify_62
    $P134 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P134
  vivify_62:
    set $P134[$P133], $P132
.annotate 'line', 26
    .return ($P132)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block138"  :anon :subid("18_1303739772.002") :outer("16_1303739772.002")
.annotate 'line', 38
    new $P140, "Undef"
    .lex "$UNIT", $P140
    find_lex $P141, "$module_ctx"
    unless_null $P141, vivify_67
    new $P141, "Undef"
  vivify_67:
    getattribute $P142, $P141, "lex_pad"
    store_lex "$UNIT", $P142
.annotate 'line', 39
    find_lex $P145, "$UNIT"
    unless_null $P145, vivify_68
    $P145 = root_new ['parrot';'Hash']
  vivify_68:
    set $P146, $P145["GLOBALish"]
    unless_null $P146, vivify_69
    new $P146, "Undef"
  vivify_69:
    isnull $I147, $P146
    unless $I147, unless_144
    new $P143, 'Integer'
    set $P143, $I147
    goto unless_144_end
  unless_144:
.annotate 'line', 40
    find_lex $P148, "$cur_GLOBALish"
    unless_null $P148, vivify_70
    new $P148, "Undef"
  vivify_70:
    find_lex $P149, "$UNIT"
    unless_null $P149, vivify_71
    $P149 = root_new ['parrot';'Hash']
  vivify_71:
    set $P150, $P149["GLOBALish"]
    unless_null $P150, vivify_72
    new $P150, "Undef"
  vivify_72:
    $P151 = "merge_globals"($P148, $P150)
.annotate 'line', 39
    set $P143, $P151
  unless_144_end:
.annotate 'line', 36
    .return ($P143)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("19_1303739772.002") :outer("11_1303739772.002")
    .param pmc param_159
    .param pmc param_160
.annotate 'line', 74
    .const 'Sub' $P171 = "20_1303739772.002" 
    capture_lex $P171
    new $P158, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P158, control_157
    push_eh $P158
    .lex "self", param_159
    .lex "$setting_name", param_160
.annotate 'line', 75
    find_lex $P162, "$setting_name"
    unless_null $P162, vivify_74
    new $P162, "Undef"
  vivify_74:
    set $S163, $P162
    isne $I164, $S163, "NULL"
    unless $I164, if_161_end
.annotate 'line', 77
    find_lex $P166, "$setting_name"
    unless_null $P166, vivify_75
    new $P166, "Undef"
  vivify_75:
    find_lex $P167, "%settings_loaded"
    unless_null $P167, vivify_76
    $P167 = root_new ['parrot';'Hash']
  vivify_76:
    set $P168, $P167[$P166]
    unless_null $P168, vivify_77
    new $P168, "Undef"
  vivify_77:
    defined $I169, $P168
    if $I169, unless_165_end
    .const 'Sub' $P171 = "20_1303739772.002" 
    capture_lex $P171
    $P171()
  unless_165_end:
  if_161_end:
.annotate 'line', 90
    new $P198, "Exception"
    set $P198['type'], .CONTROL_RETURN
    find_lex $P199, "$setting_name"
    unless_null $P199, vivify_89
    new $P199, "Undef"
  vivify_89:
    find_lex $P200, "%settings_loaded"
    unless_null $P200, vivify_90
    $P200 = root_new ['parrot';'Hash']
  vivify_90:
    set $P201, $P200[$P199]
    unless_null $P201, vivify_91
    new $P201, "Undef"
  vivify_91:
    setattribute $P198, 'payload', $P201
    throw $P198
.annotate 'line', 74
    .return ()
  control_157:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P202, exception, "payload"
    .return ($P202)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block170"  :anon :subid("20_1303739772.002") :outer("19_1303739772.002")
.annotate 'line', 78
    new $P172, "Undef"
    .lex "$*CTXSAVE", $P172
.annotate 'line', 79
    new $P173, "Undef"
    .lex "$*MAIN_CTX", $P173
.annotate 'line', 80
    new $P174, "Undef"
    .lex "$preserve_global", $P174
.annotate 'line', 78
    find_lex $P175, "self"
    store_lex "$*CTXSAVE", $P175
    find_lex $P178, "$*MAIN_CTX"
    unless_null $P178, vivify_78
    get_hll_global $P176, "GLOBAL"
    get_who $P177, $P176
    set $P178, $P177["$MAIN_CTX"]
    unless_null $P178, vivify_79
    die "Contextual $*MAIN_CTX not found"
  vivify_79:
  vivify_78:
.annotate 'line', 80
    get_hll_global $P179, "GLOBAL"
    store_lex "$preserve_global", $P179
.annotate 'line', 81
    find_lex $P180, "$setting_name"
    unless_null $P180, vivify_80
    new $P180, "Undef"
  vivify_80:
    concat $P181, $P180, ".setting.pbc"
    set $S182, $P181
    load_bytecode $S182
.annotate 'line', 82
    find_lex $P183, "$preserve_global"
    unless_null $P183, vivify_81
    new $P183, "Undef"
  vivify_81:
    set_hll_global "GLOBAL", $P183
.annotate 'line', 83
    find_lex $P187, "$*MAIN_CTX"
    unless_null $P187, vivify_82
    get_hll_global $P185, "GLOBAL"
    get_who $P186, $P185
    set $P187, $P186["$MAIN_CTX"]
    unless_null $P187, vivify_83
    die "Contextual $*MAIN_CTX not found"
  vivify_83:
  vivify_82:
    defined $I188, $P187
    if $I188, unless_184_end
.annotate 'line', 84
    new $P189, 'String'
    set $P189, "Unable to load setting "
    find_lex $P190, "$setting_name"
    unless_null $P190, vivify_84
    new $P190, "Undef"
  vivify_84:
    concat $P191, $P189, $P190
    concat $P192, $P191, "; maybe it is missing a YOU_ARE_HERE?"
    die $P192
  unless_184_end:
.annotate 'line', 86
    find_lex $P195, "$*MAIN_CTX"
    unless_null $P195, vivify_85
    get_hll_global $P193, "GLOBAL"
    get_who $P194, $P193
    set $P195, $P194["$MAIN_CTX"]
    unless_null $P195, vivify_86
    die "Contextual $*MAIN_CTX not found"
  vivify_86:
  vivify_85:
    find_lex $P196, "$setting_name"
    unless_null $P196, vivify_87
    new $P196, "Undef"
  vivify_87:
    find_lex $P197, "%settings_loaded"
    unless_null $P197, vivify_88
    $P197 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P197
  vivify_88:
    set $P197[$P196], $P195
.annotate 'line', 77
    .return ($P195)
.end


.HLL "nqp"

.namespace []
.sub "_block216" :load :anon :subid("22_1303739772.002")
.annotate 'line', 1
    .const 'Sub' $P218 = "10_1303739772.002" 
    $P219 = $P218()
    .return ($P219)
.end

