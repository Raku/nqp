
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299591512.729")
.annotate 'line', 0
    get_hll_global $P18, ["HLL";"SettingManager"], "_block17" 
    capture_lex $P18
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, ["HLL"], "SettingManager"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P18, ["HLL";"SettingManager"], "_block17" 
    capture_lex $P18
    $P75 = $P18()
    .return ($P75)
    .const 'Sub' $P77 = "16_1299591512.729" 
    .return ($P77)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1299591512.729")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299591512.729" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P81, "1299591512.64"
    isnull $I82, $P81
    if $I82, if_80
    goto if_80_end
  if_80:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P83, "1299591512.64"
  if_80_end:
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block17"  :subid("11_1299591512.729") :outer("10_1299591512.729")
.annotate 'line', 1
    .const 'Sub' $P66 = "15_1299591512.729" 
    capture_lex $P66
    .const 'Sub' $P26 = "13_1299591512.729" 
    capture_lex $P26
    .const 'Sub' $P22 = "12_1299591512.729" 
    capture_lex $P22
    get_global $P19, "$?CLASS"
.annotate 'line', 2
    $P20 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P20
.annotate 'line', 1
    find_lex $P21, "%settings_loaded"
.annotate 'line', 13
    .const 'Sub' $P26 = "13_1299591512.729" 
    newclosure $P64, $P26
.annotate 'line', 1
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post18") :outer("11_1299591512.729")
.annotate 'line', 1
    get_hll_global $P18, ["HLL";"SettingManager"], "_block17" 
    .local pmc block
    set block, $P18
    .const 'Sub' $P66 = "15_1299591512.729" 
    capture_lex $P66
    $P66()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block65"  :anon :subid("15_1299591512.729") :outer("11_1299591512.729")
.annotate 'line', 1
    get_hll_global $P67, "KnowHOW"
    $P68 = $P67."new_type"("SettingManager" :named("name"))
    .local pmc type_obj
    set type_obj, $P68
    set_hll_global ["HLL"], "SettingManager", type_obj
    set_global "$?CLASS", type_obj
    get_how $P69, type_obj
    .const 'Sub' $P70 = "12_1299591512.729" 
    $P69."add_method"(type_obj, "ctxsave", $P70)
    get_how $P71, type_obj
    .const 'Sub' $P72 = "13_1299591512.729" 
    $P71."add_method"(type_obj, "load_setting", $P72)
    get_how $P73, type_obj
    $P74 = $P73."compose"(type_obj)
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "ctxsave"  :subid("12_1299591512.729") :outer("11_1299591512.729")
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

.namespace ["HLL";"SettingManager"]
.include "except_types.pasm"
.sub "load_setting"  :subid("13_1299591512.729") :outer("11_1299591512.729")
    .param pmc param_29
    .param pmc param_30
.annotate 'line', 13
    .const 'Sub' $P41 = "14_1299591512.729" 
    capture_lex $P41
    new $P28, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P28, control_27
    push_eh $P28
    .lex "self", param_29
    .lex "$setting_name", param_30
.annotate 'line', 14
    find_lex $P32, "$setting_name"
    set $S33, $P32
    isne $I34, $S33, "NULL"
    unless $I34, if_31_end
.annotate 'line', 16
    find_lex $P36, "$setting_name"
    find_lex $P37, "%settings_loaded"
    unless_null $P37, vivify_19
    $P37 = root_new ['parrot';'Hash']
  vivify_19:
    set $P38, $P37[$P36]
    unless_null $P38, vivify_20
    new $P38, "Undef"
  vivify_20:
    defined $I39, $P38
    if $I39, unless_35_end
    .const 'Sub' $P41 = "14_1299591512.729" 
    capture_lex $P41
    $P41()
  unless_35_end:
  if_31_end:
.annotate 'line', 26
    new $P59, "Exception"
    set $P59['type'], .CONTROL_RETURN
    find_lex $P60, "$setting_name"
    find_lex $P61, "%settings_loaded"
    unless_null $P61, vivify_28
    $P61 = root_new ['parrot';'Hash']
  vivify_28:
    set $P62, $P61[$P60]
    unless_null $P62, vivify_29
    new $P62, "Undef"
  vivify_29:
    setattribute $P59, 'payload', $P62
    throw $P59
.annotate 'line', 13
    .return ()
  control_27:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P63, exception, "payload"
    .return ($P63)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block40"  :anon :subid("14_1299591512.729") :outer("13_1299591512.729")
.annotate 'line', 17
    new $P42, "Undef"
    .lex "$*CTXSAVE", $P42
.annotate 'line', 18
    new $P43, "Undef"
    .lex "$*MAIN_CTX", $P43
.annotate 'line', 17
    find_lex $P44, "self"
    store_lex "$*CTXSAVE", $P44
    find_lex $P45, "$*MAIN_CTX"
    unless_null $P45, vivify_21
    get_hll_global $P45, "$MAIN_CTX"
    unless_null $P45, vivify_22
    die "Contextual $*MAIN_CTX not found"
  vivify_22:
  vivify_21:
.annotate 'line', 19
    find_lex $P46, "$setting_name"
    concat $P47, $P46, ".setting.pbc"
    set $S48, $P47
    load_bytecode $S48
.annotate 'line', 20
    find_lex $P50, "$*MAIN_CTX"
    unless_null $P50, vivify_23
    get_hll_global $P50, "$MAIN_CTX"
    unless_null $P50, vivify_24
    die "Contextual $*MAIN_CTX not found"
  vivify_24:
  vivify_23:
    defined $I51, $P50
    if $I51, unless_49_end
.annotate 'line', 21
    new $P52, 'String'
    set $P52, "Unable to load setting "
    find_lex $P53, "$setting_name"
    concat $P54, $P52, $P53
    concat $P55, $P54, "; maybe it is missing a YOU_ARE_HERE?"
    die $P55
  unless_49_end:
.annotate 'line', 23
    find_lex $P56, "$*MAIN_CTX"
    unless_null $P56, vivify_25
    get_hll_global $P56, "$MAIN_CTX"
    unless_null $P56, vivify_26
    die "Contextual $*MAIN_CTX not found"
  vivify_26:
  vivify_25:
    find_lex $P57, "$setting_name"
    find_lex $P58, "%settings_loaded"
    unless_null $P58, vivify_27
    $P58 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P58
  vivify_27:
    set $P58[$P57], $P56
.annotate 'line', 16
    .return ($P56)
.end


.HLL "nqp"

.namespace []
.sub "_block76" :load :anon :subid("16_1299591512.729")
.annotate 'line', 1
    .const 'Sub' $P78 = "10_1299591512.729" 
    $P79 = $P78()
    .return ($P79)
.end

