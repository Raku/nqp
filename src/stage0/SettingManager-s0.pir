
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303418102.748")
.annotate 'line', 0
    .const 'Sub' $P16 = "11_1303418102.748" 
    capture_lex $P16
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P16 = "11_1303418102.748" 
    capture_lex $P16
    $P73 = $P16()
    .return ($P73)
    .const 'Sub' $P75 = "16_1303418102.748" 
    .return ($P75)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1303418102.748")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303418102.748" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P79, "1303418102.66"
    isnull $I80, $P79
    if $I80, if_78
    .const 'Sub' $P114 = "10_1303418102.748" 
    $P115 = $P114."get_lexinfo"()
    nqp_get_sc_object $P116, "1303418102.66", 0
    $P115."set_static_lexpad_value"("GLOBALish", $P116)
    .const 'Sub' $P117 = "10_1303418102.748" 
    $P118 = $P117."get_lexinfo"()
    $P118."finish_static_lexpad"()
    .const 'Sub' $P119 = "10_1303418102.748" 
    $P120 = $P119."get_lexinfo"()
    nqp_get_sc_object $P121, "1303418102.66", 0
    $P120."set_static_lexpad_value"("$?PACKAGE", $P121)
    .const 'Sub' $P122 = "10_1303418102.748" 
    $P123 = $P122."get_lexinfo"()
    $P123."finish_static_lexpad"()
    nqp_get_sc_object $P124, "1303418102.66", 1
    set_hll_global ["HLL"], "SettingManager", $P124
    .const 'Sub' $P125 = "11_1303418102.748" 
    $P126 = $P125."get_lexinfo"()
    nqp_get_sc_object $P127, "1303418102.66", 1
    $P126."set_static_lexpad_value"("$?PACKAGE", $P127)
    .const 'Sub' $P128 = "11_1303418102.748" 
    $P129 = $P128."get_lexinfo"()
    $P129."finish_static_lexpad"()
    .const 'Sub' $P130 = "11_1303418102.748" 
    $P131 = $P130."get_lexinfo"()
    nqp_get_sc_object $P132, "1303418102.66", 1
    $P131."set_static_lexpad_value"("$?CLASS", $P132)
    .const 'Sub' $P133 = "11_1303418102.748" 
    $P134 = $P133."get_lexinfo"()
    $P134."finish_static_lexpad"()
    goto if_78_end
  if_78:
    nqp_dynop_setup 
    getinterp $P81
    get_class $P82, "LexPad"
    get_class $P83, "NQPLexPad"
    $P81."hll_map"($P82, $P83)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P84, "1303418102.66"
    .local pmc cur_sc
    set cur_sc, $P84
    get_hll_global $P85, "KnowHOW"
    $P86 = $P85."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P86, cur_sc
    nqp_set_sc_object "1303418102.66", 0, $P86
    .const 'Sub' $P87 = "10_1303418102.748" 
    $P88 = $P87."get_lexinfo"()
    nqp_get_sc_object $P89, "1303418102.66", 0
    $P88."set_static_lexpad_value"("GLOBALish", $P89)
    .const 'Sub' $P90 = "10_1303418102.748" 
    $P91 = $P90."get_lexinfo"()
    $P91."finish_static_lexpad"()
    .const 'Sub' $P92 = "10_1303418102.748" 
    $P93 = $P92."get_lexinfo"()
    nqp_get_sc_object $P94, "1303418102.66", 0
    $P93."set_static_lexpad_value"("$?PACKAGE", $P94)
    .const 'Sub' $P95 = "10_1303418102.748" 
    $P96 = $P95."get_lexinfo"()
    $P96."finish_static_lexpad"()
    get_hll_global $P97, "KnowHOW"
    $P98 = $P97."new_type"("HLL::SettingManager" :named("name"))
    nqp_set_sc_for_object $P98, cur_sc
    nqp_set_sc_object "1303418102.66", 1, $P98
    nqp_get_sc_object $P99, "1303418102.66", 1
    nqp_get_sc_object $P100, "1303418102.66", 0
    nqp_get_package_through_who $P101, $P100, "HLL"
    get_who $P102, $P101
    set $P102["SettingManager"], $P99
    nqp_get_sc_object $P103, "1303418102.66", 1
    set_hll_global ["HLL"], "SettingManager", $P103
    .const 'Sub' $P104 = "11_1303418102.748" 
    $P105 = $P104."get_lexinfo"()
    nqp_get_sc_object $P106, "1303418102.66", 1
    $P105."set_static_lexpad_value"("$?PACKAGE", $P106)
    .const 'Sub' $P107 = "11_1303418102.748" 
    $P108 = $P107."get_lexinfo"()
    $P108."finish_static_lexpad"()
    .const 'Sub' $P109 = "11_1303418102.748" 
    $P110 = $P109."get_lexinfo"()
    nqp_get_sc_object $P111, "1303418102.66", 1
    $P110."set_static_lexpad_value"("$?CLASS", $P111)
    .const 'Sub' $P112 = "11_1303418102.748" 
    $P113 = $P112."get_lexinfo"()
    $P113."finish_static_lexpad"()
  if_78_end:
    nqp_get_sc_object $P135, "1303418102.66", 0
    set_hll_global "GLOBAL", $P135
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block15"  :subid("11_1303418102.748") :outer("10_1303418102.748")
.annotate 'line', 1
    .const 'Sub' $P65 = "15_1303418102.748" 
    capture_lex $P65
    .const 'Sub' $P25 = "13_1303418102.748" 
    capture_lex $P25
    .const 'Sub' $P21 = "12_1303418102.748" 
    capture_lex $P21
.annotate 'line', 2
    $P17 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P17
    .lex "$?PACKAGE", $P18
    .lex "$?CLASS", $P19
.annotate 'line', 1
    find_lex $P20, "%settings_loaded"
    unless_null $P20, vivify_19
    $P20 = root_new ['parrot';'Hash']
  vivify_19:
.annotate 'line', 13
    .const 'Sub' $P25 = "13_1303418102.748" 
    newclosure $P63, $P25
.annotate 'line', 1
    .return ($P63)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post18") :outer("11_1303418102.748")
.annotate 'line', 1
    .const 'Sub' $P16 = "11_1303418102.748" 
    .local pmc block
    set block, $P16
    .const 'Sub' $P65 = "15_1303418102.748" 
    capture_lex $P65
    $P65()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block64"  :anon :subid("15_1303418102.748") :outer("11_1303418102.748")
.annotate 'line', 1
    nqp_get_sc_object $P66, "1303418102.66", 1
    .local pmc type_obj
    set type_obj, $P66
    get_how $P67, type_obj
    .const 'Sub' $P68 = "12_1303418102.748" 
    $P67."add_method"(type_obj, "ctxsave", $P68)
    get_how $P69, type_obj
    .const 'Sub' $P70 = "13_1303418102.748" 
    $P69."add_method"(type_obj, "load_setting", $P70)
    get_how $P71, type_obj
    $P72 = $P71."compose"(type_obj)
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "ctxsave"  :subid("12_1303418102.748") :outer("11_1303418102.748")
    .param pmc param_22
.annotate 'line', 4
    .lex "self", param_22
.annotate 'line', 6

                $P0 = getinterp
                $P23 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P23
.annotate 'line', 10
    new $P24, "Integer"
    assign $P24, 0
    store_dynamic_lex "$*CTXSAVE", $P24
.annotate 'line', 4
    .return ($P24)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.include "except_types.pasm"
.sub "load_setting"  :subid("13_1303418102.748") :outer("11_1303418102.748")
    .param pmc param_28
    .param pmc param_29
.annotate 'line', 13
    .const 'Sub' $P40 = "14_1303418102.748" 
    capture_lex $P40
    new $P27, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P27, control_26
    push_eh $P27
    .lex "self", param_28
    .lex "$setting_name", param_29
.annotate 'line', 14
    find_lex $P31, "$setting_name"
    unless_null $P31, vivify_20
    new $P31, "Undef"
  vivify_20:
    set $S32, $P31
    isne $I33, $S32, "NULL"
    unless $I33, if_30_end
.annotate 'line', 16
    find_lex $P35, "$setting_name"
    unless_null $P35, vivify_21
    new $P35, "Undef"
  vivify_21:
    find_lex $P36, "%settings_loaded"
    unless_null $P36, vivify_22
    $P36 = root_new ['parrot';'Hash']
  vivify_22:
    set $P37, $P36[$P35]
    unless_null $P37, vivify_23
    new $P37, "Undef"
  vivify_23:
    defined $I38, $P37
    if $I38, unless_34_end
    .const 'Sub' $P40 = "14_1303418102.748" 
    capture_lex $P40
    $P40()
  unless_34_end:
  if_30_end:
.annotate 'line', 26
    new $P58, "Exception"
    set $P58['type'], .CONTROL_RETURN
    find_lex $P59, "$setting_name"
    unless_null $P59, vivify_34
    new $P59, "Undef"
  vivify_34:
    find_lex $P60, "%settings_loaded"
    unless_null $P60, vivify_35
    $P60 = root_new ['parrot';'Hash']
  vivify_35:
    set $P61, $P60[$P59]
    unless_null $P61, vivify_36
    new $P61, "Undef"
  vivify_36:
    setattribute $P58, 'payload', $P61
    throw $P58
.annotate 'line', 13
    .return ()
  control_26:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P62, exception, "payload"
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block39"  :anon :subid("14_1303418102.748") :outer("13_1303418102.748")
.annotate 'line', 17
    new $P41, "Undef"
    .lex "$*CTXSAVE", $P41
.annotate 'line', 18
    new $P42, "Undef"
    .lex "$*MAIN_CTX", $P42
.annotate 'line', 17
    find_lex $P43, "self"
    store_lex "$*CTXSAVE", $P43
    find_lex $P44, "$*MAIN_CTX"
    unless_null $P44, vivify_24
    get_hll_global $P44, "$MAIN_CTX"
    unless_null $P44, vivify_25
    die "Contextual $*MAIN_CTX not found"
  vivify_25:
  vivify_24:
.annotate 'line', 19
    find_lex $P45, "$setting_name"
    unless_null $P45, vivify_26
    new $P45, "Undef"
  vivify_26:
    concat $P46, $P45, ".setting.pbc"
    set $S47, $P46
    load_bytecode $S47
.annotate 'line', 20
    find_lex $P49, "$*MAIN_CTX"
    unless_null $P49, vivify_27
    get_hll_global $P49, "$MAIN_CTX"
    unless_null $P49, vivify_28
    die "Contextual $*MAIN_CTX not found"
  vivify_28:
  vivify_27:
    defined $I50, $P49
    if $I50, unless_48_end
.annotate 'line', 21
    new $P51, 'String'
    set $P51, "Unable to load setting "
    find_lex $P52, "$setting_name"
    unless_null $P52, vivify_29
    new $P52, "Undef"
  vivify_29:
    concat $P53, $P51, $P52
    concat $P54, $P53, "; maybe it is missing a YOU_ARE_HERE?"
    die $P54
  unless_48_end:
.annotate 'line', 23
    find_lex $P55, "$*MAIN_CTX"
    unless_null $P55, vivify_30
    get_hll_global $P55, "$MAIN_CTX"
    unless_null $P55, vivify_31
    die "Contextual $*MAIN_CTX not found"
  vivify_31:
  vivify_30:
    find_lex $P56, "$setting_name"
    unless_null $P56, vivify_32
    new $P56, "Undef"
  vivify_32:
    find_lex $P57, "%settings_loaded"
    unless_null $P57, vivify_33
    $P57 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P57
  vivify_33:
    set $P57[$P56], $P55
.annotate 'line', 16
    .return ($P55)
.end


.HLL "nqp"

.namespace []
.sub "_block74" :load :anon :subid("16_1303418102.748")
.annotate 'line', 1
    .const 'Sub' $P76 = "10_1303418102.748" 
    $P77 = $P76()
    .return ($P77)
.end

