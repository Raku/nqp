
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051189.888")
.annotate 'line', 0
    get_hll_global $P17, ["HLL";"SettingManager"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P17, ["HLL";"SettingManager"], "_block16" 
    capture_lex $P17
    $P73 = $P17()
    .return ($P73)
    .const 'Sub' $P75 = "16_1300051189.888" 
    .return ($P75)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1300051189.888")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051189.888" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P79, "1300051189.803"
    isnull $I80, $P79
    if $I80, if_78
    nqp_get_sc_object $P85, "1300051189.803", 0
    set_hll_global ["HLL"], "SettingManager", $P85
    goto if_78_end
  if_78:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P81, "1300051189.803"
    .local pmc cur_sc
    set cur_sc, $P81
    get_hll_global $P82, "KnowHOW"
    $P83 = $P82."new_type"("HLL::SettingManager" :named("name"))
    nqp_set_sc_for_object $P83, cur_sc
    nqp_set_sc_object "1300051189.803", 0, $P83
    nqp_get_sc_object $P84, "1300051189.803", 0
    set_hll_global ["HLL"], "SettingManager", $P84
  if_78_end:
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block16"  :subid("11_1300051189.888") :outer("10_1300051189.888")
.annotate 'line', 1
    .const 'Sub' $P65 = "15_1300051189.888" 
    capture_lex $P65
    .const 'Sub' $P25 = "13_1300051189.888" 
    capture_lex $P25
    .const 'Sub' $P21 = "12_1300051189.888" 
    capture_lex $P21
    get_global $P18, "$?CLASS"
.annotate 'line', 2
    $P19 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P19
.annotate 'line', 1
    find_lex $P20, "%settings_loaded"
.annotate 'line', 13
    .const 'Sub' $P25 = "13_1300051189.888" 
    newclosure $P63, $P25
.annotate 'line', 1
    .return ($P63)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post18") :outer("11_1300051189.888")
.annotate 'line', 1
    get_hll_global $P17, ["HLL";"SettingManager"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P65 = "15_1300051189.888" 
    capture_lex $P65
    $P65()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block64"  :anon :subid("15_1300051189.888") :outer("11_1300051189.888")
.annotate 'line', 1
    nqp_get_sc_object $P66, "1300051189.803", 0
    .local pmc type_obj
    set type_obj, $P66
    set_global "$?CLASS", type_obj
    get_how $P67, type_obj
    .const 'Sub' $P68 = "12_1300051189.888" 
    $P67."add_method"(type_obj, "ctxsave", $P68)
    get_how $P69, type_obj
    .const 'Sub' $P70 = "13_1300051189.888" 
    $P69."add_method"(type_obj, "load_setting", $P70)
    get_how $P71, type_obj
    $P72 = $P71."compose"(type_obj)
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "ctxsave"  :subid("12_1300051189.888") :outer("11_1300051189.888")
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
.sub "load_setting"  :subid("13_1300051189.888") :outer("11_1300051189.888")
    .param pmc param_28
    .param pmc param_29
.annotate 'line', 13
    .const 'Sub' $P40 = "14_1300051189.888" 
    capture_lex $P40
    new $P27, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P27, control_26
    push_eh $P27
    .lex "self", param_28
    .lex "$setting_name", param_29
.annotate 'line', 14
    find_lex $P31, "$setting_name"
    set $S32, $P31
    isne $I33, $S32, "NULL"
    unless $I33, if_30_end
.annotate 'line', 16
    find_lex $P35, "$setting_name"
    find_lex $P36, "%settings_loaded"
    unless_null $P36, vivify_19
    $P36 = root_new ['parrot';'Hash']
  vivify_19:
    set $P37, $P36[$P35]
    unless_null $P37, vivify_20
    new $P37, "Undef"
  vivify_20:
    defined $I38, $P37
    if $I38, unless_34_end
    .const 'Sub' $P40 = "14_1300051189.888" 
    capture_lex $P40
    $P40()
  unless_34_end:
  if_30_end:
.annotate 'line', 26
    new $P58, "Exception"
    set $P58['type'], .CONTROL_RETURN
    find_lex $P59, "$setting_name"
    find_lex $P60, "%settings_loaded"
    unless_null $P60, vivify_28
    $P60 = root_new ['parrot';'Hash']
  vivify_28:
    set $P61, $P60[$P59]
    unless_null $P61, vivify_29
    new $P61, "Undef"
  vivify_29:
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
.sub "_block39"  :anon :subid("14_1300051189.888") :outer("13_1300051189.888")
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
    unless_null $P44, vivify_21
    get_hll_global $P44, "$MAIN_CTX"
    unless_null $P44, vivify_22
    die "Contextual $*MAIN_CTX not found"
  vivify_22:
  vivify_21:
.annotate 'line', 19
    find_lex $P45, "$setting_name"
    concat $P46, $P45, ".setting.pbc"
    set $S47, $P46
    load_bytecode $S47
.annotate 'line', 20
    find_lex $P49, "$*MAIN_CTX"
    unless_null $P49, vivify_23
    get_hll_global $P49, "$MAIN_CTX"
    unless_null $P49, vivify_24
    die "Contextual $*MAIN_CTX not found"
  vivify_24:
  vivify_23:
    defined $I50, $P49
    if $I50, unless_48_end
.annotate 'line', 21
    new $P51, 'String'
    set $P51, "Unable to load setting "
    find_lex $P52, "$setting_name"
    concat $P53, $P51, $P52
    concat $P54, $P53, "; maybe it is missing a YOU_ARE_HERE?"
    die $P54
  unless_48_end:
.annotate 'line', 23
    find_lex $P55, "$*MAIN_CTX"
    unless_null $P55, vivify_25
    get_hll_global $P55, "$MAIN_CTX"
    unless_null $P55, vivify_26
    die "Contextual $*MAIN_CTX not found"
  vivify_26:
  vivify_25:
    find_lex $P56, "$setting_name"
    find_lex $P57, "%settings_loaded"
    unless_null $P57, vivify_27
    $P57 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P57
  vivify_27:
    set $P57[$P56], $P55
.annotate 'line', 16
    .return ($P55)
.end


.HLL "nqp"

.namespace []
.sub "_block74" :load :anon :subid("16_1300051189.888")
.annotate 'line', 1
    .const 'Sub' $P76 = "10_1300051189.888" 
    $P77 = $P76()
    .return ($P77)
.end

