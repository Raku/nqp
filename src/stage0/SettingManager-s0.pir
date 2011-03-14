
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300146765.253")
.annotate 'line', 0
    get_hll_global $P14, ["HLL";"SettingManager"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P14, ["HLL";"SettingManager"], "_block13" 
    capture_lex $P14
    $P70 = $P14()
    .return ($P70)
    .const 'Sub' $P72 = "16_1300146765.253" 
    .return ($P72)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1300146765.253")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300146765.253" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P76, "1300146765.164"
    isnull $I77, $P76
    if $I77, if_75
    nqp_get_sc_object $P85, "1300146765.164", 0
    set_hll_global ["HLL"], "SettingManager", $P85
    goto if_75_end
  if_75:
    nqp_dynop_setup 
    getinterp $P78
    get_class $P79, "LexPad"
    get_class $P80, "NQPLexPad"
    $P78."hll_map"($P79, $P80)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P81, "1300146765.164"
    .local pmc cur_sc
    set cur_sc, $P81
    get_hll_global $P82, "KnowHOW"
    $P83 = $P82."new_type"("HLL::SettingManager" :named("name"))
    nqp_set_sc_for_object $P83, cur_sc
    nqp_set_sc_object "1300146765.164", 0, $P83
    nqp_get_sc_object $P84, "1300146765.164", 0
    set_hll_global ["HLL"], "SettingManager", $P84
  if_75_end:
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block13"  :subid("11_1300146765.253") :outer("10_1300146765.253")
.annotate 'line', 1
    .const 'Sub' $P62 = "15_1300146765.253" 
    capture_lex $P62
    .const 'Sub' $P22 = "13_1300146765.253" 
    capture_lex $P22
    .const 'Sub' $P18 = "12_1300146765.253" 
    capture_lex $P18
    get_global $P15, "$?CLASS"
.annotate 'line', 2
    $P16 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P16
.annotate 'line', 1
    find_lex $P17, "%settings_loaded"
.annotate 'line', 13
    .const 'Sub' $P22 = "13_1300146765.253" 
    newclosure $P60, $P22
.annotate 'line', 1
    .return ($P60)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post18") :outer("11_1300146765.253")
.annotate 'line', 1
    get_hll_global $P14, ["HLL";"SettingManager"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P62 = "15_1300146765.253" 
    capture_lex $P62
    $P62()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block61"  :anon :subid("15_1300146765.253") :outer("11_1300146765.253")
.annotate 'line', 1
    nqp_get_sc_object $P63, "1300146765.164", 0
    .local pmc type_obj
    set type_obj, $P63
    set_global "$?CLASS", type_obj
    get_how $P64, type_obj
    .const 'Sub' $P65 = "12_1300146765.253" 
    $P64."add_method"(type_obj, "ctxsave", $P65)
    get_how $P66, type_obj
    .const 'Sub' $P67 = "13_1300146765.253" 
    $P66."add_method"(type_obj, "load_setting", $P67)
    get_how $P68, type_obj
    $P69 = $P68."compose"(type_obj)
    .return ($P69)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "ctxsave"  :subid("12_1300146765.253") :outer("11_1300146765.253")
    .param pmc param_19
.annotate 'line', 4
    .lex "self", param_19
.annotate 'line', 6

                $P0 = getinterp
                $P20 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P20
.annotate 'line', 10
    new $P21, "Integer"
    assign $P21, 0
    store_dynamic_lex "$*CTXSAVE", $P21
.annotate 'line', 4
    .return ($P21)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.include "except_types.pasm"
.sub "load_setting"  :subid("13_1300146765.253") :outer("11_1300146765.253")
    .param pmc param_25
    .param pmc param_26
.annotate 'line', 13
    .const 'Sub' $P37 = "14_1300146765.253" 
    capture_lex $P37
    new $P24, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P24, control_23
    push_eh $P24
    .lex "self", param_25
    .lex "$setting_name", param_26
.annotate 'line', 14
    find_lex $P28, "$setting_name"
    set $S29, $P28
    isne $I30, $S29, "NULL"
    unless $I30, if_27_end
.annotate 'line', 16
    find_lex $P32, "$setting_name"
    find_lex $P33, "%settings_loaded"
    unless_null $P33, vivify_19
    $P33 = root_new ['parrot';'Hash']
  vivify_19:
    set $P34, $P33[$P32]
    unless_null $P34, vivify_20
    new $P34, "Undef"
  vivify_20:
    defined $I35, $P34
    if $I35, unless_31_end
    .const 'Sub' $P37 = "14_1300146765.253" 
    capture_lex $P37
    $P37()
  unless_31_end:
  if_27_end:
.annotate 'line', 26
    new $P55, "Exception"
    set $P55['type'], .CONTROL_RETURN
    find_lex $P56, "$setting_name"
    find_lex $P57, "%settings_loaded"
    unless_null $P57, vivify_28
    $P57 = root_new ['parrot';'Hash']
  vivify_28:
    set $P58, $P57[$P56]
    unless_null $P58, vivify_29
    new $P58, "Undef"
  vivify_29:
    setattribute $P55, 'payload', $P58
    throw $P55
.annotate 'line', 13
    .return ()
  control_23:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P59, exception, "payload"
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block36"  :anon :subid("14_1300146765.253") :outer("13_1300146765.253")
.annotate 'line', 17
    new $P38, "Undef"
    .lex "$*CTXSAVE", $P38
.annotate 'line', 18
    new $P39, "Undef"
    .lex "$*MAIN_CTX", $P39
.annotate 'line', 17
    find_lex $P40, "self"
    store_lex "$*CTXSAVE", $P40
    find_lex $P41, "$*MAIN_CTX"
    unless_null $P41, vivify_21
    get_hll_global $P41, "$MAIN_CTX"
    unless_null $P41, vivify_22
    die "Contextual $*MAIN_CTX not found"
  vivify_22:
  vivify_21:
.annotate 'line', 19
    find_lex $P42, "$setting_name"
    concat $P43, $P42, ".setting.pbc"
    set $S44, $P43
    load_bytecode $S44
.annotate 'line', 20
    find_lex $P46, "$*MAIN_CTX"
    unless_null $P46, vivify_23
    get_hll_global $P46, "$MAIN_CTX"
    unless_null $P46, vivify_24
    die "Contextual $*MAIN_CTX not found"
  vivify_24:
  vivify_23:
    defined $I47, $P46
    if $I47, unless_45_end
.annotate 'line', 21
    new $P48, 'String'
    set $P48, "Unable to load setting "
    find_lex $P49, "$setting_name"
    concat $P50, $P48, $P49
    concat $P51, $P50, "; maybe it is missing a YOU_ARE_HERE?"
    die $P51
  unless_45_end:
.annotate 'line', 23
    find_lex $P52, "$*MAIN_CTX"
    unless_null $P52, vivify_25
    get_hll_global $P52, "$MAIN_CTX"
    unless_null $P52, vivify_26
    die "Contextual $*MAIN_CTX not found"
  vivify_26:
  vivify_25:
    find_lex $P53, "$setting_name"
    find_lex $P54, "%settings_loaded"
    unless_null $P54, vivify_27
    $P54 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P54
  vivify_27:
    set $P54[$P53], $P52
.annotate 'line', 16
    .return ($P52)
.end


.HLL "nqp"

.namespace []
.sub "_block71" :load :anon :subid("16_1300146765.253")
.annotate 'line', 1
    .const 'Sub' $P73 = "10_1300146765.253" 
    $P74 = $P73()
    .return ($P74)
.end

