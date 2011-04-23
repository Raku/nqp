
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303576200.736")
.annotate 'line', 0
    .const 'Sub' $P17 = "11_1303576200.736" 
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
    .const 'Sub' $P17 = "11_1303576200.736" 
    capture_lex $P17
    $P94 = $P17()
    .return ($P94)
    .const 'Sub' $P96 = "17_1303576200.736" 
    .return ($P96)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post18") :outer("10_1303576200.736")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303576200.736" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P100, "1303576200.623"
    isnull $I101, $P100
    if $I101, if_99
    .const 'Sub' $P139 = "10_1303576200.736" 
    $P140 = $P139."get_lexinfo"()
    nqp_get_sc_object $P141, "1303576200.623", 0
    $P140."set_static_lexpad_value"("GLOBALish", $P141)
    .const 'Sub' $P142 = "10_1303576200.736" 
    $P143 = $P142."get_lexinfo"()
    $P143."finish_static_lexpad"()
    .const 'Sub' $P144 = "10_1303576200.736" 
    $P145 = $P144."get_lexinfo"()
    nqp_get_sc_object $P146, "1303576200.623", 0
    $P145."set_static_lexpad_value"("$?PACKAGE", $P146)
    .const 'Sub' $P147 = "10_1303576200.736" 
    $P148 = $P147."get_lexinfo"()
    $P148."finish_static_lexpad"()
    nqp_get_sc_object $P149, "1303576200.623", 1
    set_hll_global "ModuleLoader", $P149
    .const 'Sub' $P150 = "10_1303576200.736" 
    $P151 = $P150."get_lexinfo"()
    nqp_get_sc_object $P152, "1303576200.623", 1
    $P151."set_static_lexpad_value"("ModuleLoader", $P152)
    .const 'Sub' $P153 = "10_1303576200.736" 
    $P154 = $P153."get_lexinfo"()
    $P154."finish_static_lexpad"()
    .const 'Sub' $P155 = "11_1303576200.736" 
    $P156 = $P155."get_lexinfo"()
    nqp_get_sc_object $P157, "1303576200.623", 1
    $P156."set_static_lexpad_value"("$?PACKAGE", $P157)
    .const 'Sub' $P158 = "11_1303576200.736" 
    $P159 = $P158."get_lexinfo"()
    $P159."finish_static_lexpad"()
    .const 'Sub' $P160 = "11_1303576200.736" 
    $P161 = $P160."get_lexinfo"()
    nqp_get_sc_object $P162, "1303576200.623", 1
    $P161."set_static_lexpad_value"("$?CLASS", $P162)
    .const 'Sub' $P163 = "11_1303576200.736" 
    $P164 = $P163."get_lexinfo"()
    $P164."finish_static_lexpad"()
    goto if_99_end
  if_99:
    nqp_dynop_setup 
    getinterp $P102
    get_class $P103, "LexPad"
    get_class $P104, "NQPLexPad"
    $P102."hll_map"($P103, $P104)
    nqp_create_sc $P105, "1303576200.623"
    .local pmc cur_sc
    set cur_sc, $P105
    get_hll_global $P106, "KnowHOW"
    $P107 = $P106."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P107, cur_sc
    nqp_set_sc_object "1303576200.623", 0, $P107
    .const 'Sub' $P108 = "10_1303576200.736" 
    $P109 = $P108."get_lexinfo"()
    nqp_get_sc_object $P110, "1303576200.623", 0
    $P109."set_static_lexpad_value"("GLOBALish", $P110)
    .const 'Sub' $P111 = "10_1303576200.736" 
    $P112 = $P111."get_lexinfo"()
    $P112."finish_static_lexpad"()
    .const 'Sub' $P113 = "10_1303576200.736" 
    $P114 = $P113."get_lexinfo"()
    nqp_get_sc_object $P115, "1303576200.623", 0
    $P114."set_static_lexpad_value"("$?PACKAGE", $P115)
    .const 'Sub' $P116 = "10_1303576200.736" 
    $P117 = $P116."get_lexinfo"()
    $P117."finish_static_lexpad"()
    get_hll_global $P118, "KnowHOW"
    $P119 = $P118."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P119, cur_sc
    nqp_set_sc_object "1303576200.623", 1, $P119
    nqp_get_sc_object $P120, "1303576200.623", 1
    nqp_get_sc_object $P121, "1303576200.623", 0
    get_who $P122, $P121
    set $P122["ModuleLoader"], $P120
    nqp_get_sc_object $P123, "1303576200.623", 1
    set_hll_global "ModuleLoader", $P123
    .const 'Sub' $P124 = "10_1303576200.736" 
    $P125 = $P124."get_lexinfo"()
    nqp_get_sc_object $P126, "1303576200.623", 1
    $P125."set_static_lexpad_value"("ModuleLoader", $P126)
    .const 'Sub' $P127 = "10_1303576200.736" 
    $P128 = $P127."get_lexinfo"()
    $P128."finish_static_lexpad"()
    .const 'Sub' $P129 = "11_1303576200.736" 
    $P130 = $P129."get_lexinfo"()
    nqp_get_sc_object $P131, "1303576200.623", 1
    $P130."set_static_lexpad_value"("$?PACKAGE", $P131)
    .const 'Sub' $P132 = "11_1303576200.736" 
    $P133 = $P132."get_lexinfo"()
    $P133."finish_static_lexpad"()
    .const 'Sub' $P134 = "11_1303576200.736" 
    $P135 = $P134."get_lexinfo"()
    nqp_get_sc_object $P136, "1303576200.623", 1
    $P135."set_static_lexpad_value"("$?CLASS", $P136)
    .const 'Sub' $P137 = "11_1303576200.736" 
    $P138 = $P137."get_lexinfo"()
    $P138."finish_static_lexpad"()
  if_99_end:
    nqp_get_sc_object $P165, "1303576200.623", 0
    set_hll_global "GLOBAL", $P165
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303576200.736") :outer("10_1303576200.736")
.annotate 'line', 1
    .const 'Sub' $P84 = "16_1303576200.736" 
    capture_lex $P84
    .const 'Sub' $P44 = "14_1303576200.736" 
    capture_lex $P44
    .const 'Sub' $P26 = "13_1303576200.736" 
    capture_lex $P26
    .const 'Sub' $P22 = "12_1303576200.736" 
    capture_lex $P22
.annotate 'line', 2
    $P18 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P18
    .lex "$?PACKAGE", $P19
    .lex "$?CLASS", $P20
.annotate 'line', 1
    find_lex $P21, "%settings_loaded"
    unless_null $P21, vivify_20
    $P21 = root_new ['parrot';'Hash']
  vivify_20:
.annotate 'line', 21
    .const 'Sub' $P44 = "14_1303576200.736" 
    newclosure $P82, $P44
.annotate 'line', 1
    .return ($P82)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post19") :outer("11_1303576200.736")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303576200.736" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P84 = "16_1303576200.736" 
    capture_lex $P84
    $P84()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block83"  :anon :subid("16_1303576200.736") :outer("11_1303576200.736")
.annotate 'line', 1
    nqp_get_sc_object $P85, "1303576200.623", 1
    .local pmc type_obj
    set type_obj, $P85
    get_how $P86, type_obj
    .const 'Sub' $P87 = "12_1303576200.736" 
    $P86."add_method"(type_obj, "ctxsave", $P87)
    get_how $P88, type_obj
    .const 'Sub' $P89 = "13_1303576200.736" 
    $P88."add_method"(type_obj, "load_module", $P89)
    get_how $P90, type_obj
    .const 'Sub' $P91 = "14_1303576200.736" 
    $P90."add_method"(type_obj, "load_setting", $P91)
    get_how $P92, type_obj
    $P93 = $P92."compose"(type_obj)
    .return ($P93)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("12_1303576200.736") :outer("11_1303576200.736")
    .param pmc param_23
.annotate 'line', 4
    .lex "self", param_23
.annotate 'line', 6

                $P0 = getinterp
                $P24 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P24
.annotate 'line', 10
    new $P25, "Integer"
    assign $P25, 0
    store_dynamic_lex "$*CTXSAVE", $P25
.annotate 'line', 4
    .return ($P25)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "load_module"  :subid("13_1303576200.736") :outer("11_1303576200.736")
    .param pmc param_27
    .param pmc param_28
    .param pmc param_29 :optional
    .param int has_param_29 :opt_flag
.annotate 'line', 13
    .lex "self", param_27
    .lex "$module_name", param_28
    if has_param_29, optparam_21
    new $P30, "Undef"
    set param_29, $P30
  optparam_21:
    .lex "$cur_GLOBALish", param_29
.annotate 'line', 15
    new $P31, "Undef"
    .lex "$*CTXSAVE", $P31
.annotate 'line', 16
    new $P32, "Undef"
    .lex "$*MAIN_CTX", $P32
.annotate 'line', 17
    new $P33, "Undef"
    .lex "$path", $P33
.annotate 'line', 15
    find_lex $P34, "self"
    store_lex "$*CTXSAVE", $P34
    find_lex $P35, "$*MAIN_CTX"
    unless_null $P35, vivify_22
    get_hll_global $P35, "$MAIN_CTX"
    unless_null $P35, vivify_23
    die "Contextual $*MAIN_CTX not found"
  vivify_23:
  vivify_22:
.annotate 'line', 17
    find_lex $P36, "$module_name"
    unless_null $P36, vivify_24
    new $P36, "Undef"
  vivify_24:
    set $S37, $P36
    split $P38, "::", $S37
    join $S39, "/", $P38
    new $P40, 'String'
    set $P40, $S39
    concat $P41, $P40, ".pbc"
    store_lex "$path", $P41
.annotate 'line', 18
    find_lex $P42, "$path"
    unless_null $P42, vivify_25
    new $P42, "Undef"
  vivify_25:
    set $S43, $P42
    load_bytecode $S43
.annotate 'line', 13
    .return ()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("14_1303576200.736") :outer("11_1303576200.736")
    .param pmc param_47
    .param pmc param_48
.annotate 'line', 21
    .const 'Sub' $P59 = "15_1303576200.736" 
    capture_lex $P59
    new $P46, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P46, control_45
    push_eh $P46
    .lex "self", param_47
    .lex "$setting_name", param_48
.annotate 'line', 22
    find_lex $P50, "$setting_name"
    unless_null $P50, vivify_26
    new $P50, "Undef"
  vivify_26:
    set $S51, $P50
    isne $I52, $S51, "NULL"
    unless $I52, if_49_end
.annotate 'line', 24
    find_lex $P54, "$setting_name"
    unless_null $P54, vivify_27
    new $P54, "Undef"
  vivify_27:
    find_lex $P55, "%settings_loaded"
    unless_null $P55, vivify_28
    $P55 = root_new ['parrot';'Hash']
  vivify_28:
    set $P56, $P55[$P54]
    unless_null $P56, vivify_29
    new $P56, "Undef"
  vivify_29:
    defined $I57, $P56
    if $I57, unless_53_end
    .const 'Sub' $P59 = "15_1303576200.736" 
    capture_lex $P59
    $P59()
  unless_53_end:
  if_49_end:
.annotate 'line', 34
    new $P77, "Exception"
    set $P77['type'], .CONTROL_RETURN
    find_lex $P78, "$setting_name"
    unless_null $P78, vivify_40
    new $P78, "Undef"
  vivify_40:
    find_lex $P79, "%settings_loaded"
    unless_null $P79, vivify_41
    $P79 = root_new ['parrot';'Hash']
  vivify_41:
    set $P80, $P79[$P78]
    unless_null $P80, vivify_42
    new $P80, "Undef"
  vivify_42:
    setattribute $P77, 'payload', $P80
    throw $P77
.annotate 'line', 21
    .return ()
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P81, exception, "payload"
    .return ($P81)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block58"  :anon :subid("15_1303576200.736") :outer("14_1303576200.736")
.annotate 'line', 25
    new $P60, "Undef"
    .lex "$*CTXSAVE", $P60
.annotate 'line', 26
    new $P61, "Undef"
    .lex "$*MAIN_CTX", $P61
.annotate 'line', 25
    find_lex $P62, "self"
    store_lex "$*CTXSAVE", $P62
    find_lex $P63, "$*MAIN_CTX"
    unless_null $P63, vivify_30
    get_hll_global $P63, "$MAIN_CTX"
    unless_null $P63, vivify_31
    die "Contextual $*MAIN_CTX not found"
  vivify_31:
  vivify_30:
.annotate 'line', 27
    find_lex $P64, "$setting_name"
    unless_null $P64, vivify_32
    new $P64, "Undef"
  vivify_32:
    concat $P65, $P64, ".setting.pbc"
    set $S66, $P65
    load_bytecode $S66
.annotate 'line', 28
    find_lex $P68, "$*MAIN_CTX"
    unless_null $P68, vivify_33
    get_hll_global $P68, "$MAIN_CTX"
    unless_null $P68, vivify_34
    die "Contextual $*MAIN_CTX not found"
  vivify_34:
  vivify_33:
    defined $I69, $P68
    if $I69, unless_67_end
.annotate 'line', 29
    new $P70, 'String'
    set $P70, "Unable to load setting "
    find_lex $P71, "$setting_name"
    unless_null $P71, vivify_35
    new $P71, "Undef"
  vivify_35:
    concat $P72, $P70, $P71
    concat $P73, $P72, "; maybe it is missing a YOU_ARE_HERE?"
    die $P73
  unless_67_end:
.annotate 'line', 31
    find_lex $P74, "$*MAIN_CTX"
    unless_null $P74, vivify_36
    get_hll_global $P74, "$MAIN_CTX"
    unless_null $P74, vivify_37
    die "Contextual $*MAIN_CTX not found"
  vivify_37:
  vivify_36:
    find_lex $P75, "$setting_name"
    unless_null $P75, vivify_38
    new $P75, "Undef"
  vivify_38:
    find_lex $P76, "%settings_loaded"
    unless_null $P76, vivify_39
    $P76 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P76
  vivify_39:
    set $P76[$P75], $P74
.annotate 'line', 24
    .return ($P74)
.end


.HLL "nqp"

.namespace []
.sub "_block95" :load :anon :subid("17_1303576200.736")
.annotate 'line', 1
    .const 'Sub' $P97 = "10_1303576200.736" 
    $P98 = $P97()
    .return ($P98)
.end

