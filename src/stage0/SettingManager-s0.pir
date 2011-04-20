
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303340957.788")
.annotate 'line', 0
    get_hll_global $P15, ["HLL";"SettingManager"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    .lex "GLOBALish", $P13
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P15, ["HLL";"SettingManager"], "_block14" 
    capture_lex $P15
    $P72 = $P15()
    .return ($P72)
    .const 'Sub' $P74 = "16_1303340957.788" 
    .return ($P74)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1303340957.788")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303340957.788" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P78, "1303340957.7"
    isnull $I79, $P78
    if $I79, if_77
    .const 'Sub' $P104 = "10_1303340957.788" 
    $P105 = $P104."get_lexinfo"()
    nqp_get_sc_object $P106, "1303340957.7", 0
    $P105."set_static_lexpad_value"("GLOBALish", $P106)
    .const 'Sub' $P107 = "10_1303340957.788" 
    $P108 = $P107."get_lexinfo"()
    $P108."finish_static_lexpad"()
    nqp_get_sc_object $P109, "1303340957.7", 1
    set_hll_global ["HLL"], "SettingManager", $P109
    .const 'Sub' $P110 = "11_1303340957.788" 
    $P111 = $P110."get_lexinfo"()
    nqp_get_sc_object $P112, "1303340957.7", 1
    $P111."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'Sub' $P113 = "11_1303340957.788" 
    $P114 = $P113."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P115 = "11_1303340957.788" 
    $P116 = $P115."get_lexinfo"()
    nqp_get_sc_object $P117, "1303340957.7", 1
    $P116."set_static_lexpad_value"("$?CLASS", $P117)
    .const 'Sub' $P118 = "11_1303340957.788" 
    $P119 = $P118."get_lexinfo"()
    $P119."finish_static_lexpad"()
    goto if_77_end
  if_77:
    nqp_dynop_setup 
    getinterp $P80
    get_class $P81, "LexPad"
    get_class $P82, "NQPLexPad"
    $P80."hll_map"($P81, $P82)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P83, "1303340957.7"
    .local pmc cur_sc
    set cur_sc, $P83
    get_hll_global $P84, "KnowHOW"
    $P85 = $P84."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P85, cur_sc
    nqp_set_sc_object "1303340957.7", 0, $P85
    .const 'Sub' $P86 = "10_1303340957.788" 
    $P87 = $P86."get_lexinfo"()
    nqp_get_sc_object $P88, "1303340957.7", 0
    $P87."set_static_lexpad_value"("GLOBALish", $P88)
    .const 'Sub' $P89 = "10_1303340957.788" 
    $P90 = $P89."get_lexinfo"()
    $P90."finish_static_lexpad"()
    get_hll_global $P91, "KnowHOW"
    $P92 = $P91."new_type"("HLL::SettingManager" :named("name"))
    nqp_set_sc_for_object $P92, cur_sc
    nqp_set_sc_object "1303340957.7", 1, $P92
    nqp_get_sc_object $P93, "1303340957.7", 1
    set_hll_global ["HLL"], "SettingManager", $P93
    .const 'Sub' $P94 = "11_1303340957.788" 
    $P95 = $P94."get_lexinfo"()
    nqp_get_sc_object $P96, "1303340957.7", 1
    $P95."set_static_lexpad_value"("$?PACKAGE", $P96)
    .const 'Sub' $P97 = "11_1303340957.788" 
    $P98 = $P97."get_lexinfo"()
    $P98."finish_static_lexpad"()
    .const 'Sub' $P99 = "11_1303340957.788" 
    $P100 = $P99."get_lexinfo"()
    nqp_get_sc_object $P101, "1303340957.7", 1
    $P100."set_static_lexpad_value"("$?CLASS", $P101)
    .const 'Sub' $P102 = "11_1303340957.788" 
    $P103 = $P102."get_lexinfo"()
    $P103."finish_static_lexpad"()
  if_77_end:
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block14"  :subid("11_1303340957.788") :outer("10_1303340957.788")
.annotate 'line', 1
    .const 'Sub' $P64 = "15_1303340957.788" 
    capture_lex $P64
    .const 'Sub' $P24 = "13_1303340957.788" 
    capture_lex $P24
    .const 'Sub' $P20 = "12_1303340957.788" 
    capture_lex $P20
.annotate 'line', 2
    $P16 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P16
    .lex "$?PACKAGE", $P17
    .lex "$?CLASS", $P18
.annotate 'line', 1
    find_lex $P19, "%settings_loaded"
    unless_null $P19, vivify_19
    $P19 = root_new ['parrot';'Hash']
  vivify_19:
.annotate 'line', 13
    .const 'Sub' $P24 = "13_1303340957.788" 
    newclosure $P62, $P24
.annotate 'line', 1
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post18") :outer("11_1303340957.788")
.annotate 'line', 1
    get_hll_global $P15, ["HLL";"SettingManager"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P64 = "15_1303340957.788" 
    capture_lex $P64
    $P64()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block63"  :anon :subid("15_1303340957.788") :outer("11_1303340957.788")
.annotate 'line', 1
    nqp_get_sc_object $P65, "1303340957.7", 1
    .local pmc type_obj
    set type_obj, $P65
    get_how $P66, type_obj
    .const 'Sub' $P67 = "12_1303340957.788" 
    $P66."add_method"(type_obj, "ctxsave", $P67)
    get_how $P68, type_obj
    .const 'Sub' $P69 = "13_1303340957.788" 
    $P68."add_method"(type_obj, "load_setting", $P69)
    get_how $P70, type_obj
    $P71 = $P70."compose"(type_obj)
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "ctxsave"  :subid("12_1303340957.788") :outer("11_1303340957.788")
    .param pmc param_21
.annotate 'line', 4
    .lex "self", param_21
.annotate 'line', 6

                $P0 = getinterp
                $P22 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P22
.annotate 'line', 10
    new $P23, "Integer"
    assign $P23, 0
    store_dynamic_lex "$*CTXSAVE", $P23
.annotate 'line', 4
    .return ($P23)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.include "except_types.pasm"
.sub "load_setting"  :subid("13_1303340957.788") :outer("11_1303340957.788")
    .param pmc param_27
    .param pmc param_28
.annotate 'line', 13
    .const 'Sub' $P39 = "14_1303340957.788" 
    capture_lex $P39
    new $P26, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P26, control_25
    push_eh $P26
    .lex "self", param_27
    .lex "$setting_name", param_28
.annotate 'line', 14
    find_lex $P30, "$setting_name"
    unless_null $P30, vivify_20
    new $P30, "Undef"
  vivify_20:
    set $S31, $P30
    isne $I32, $S31, "NULL"
    unless $I32, if_29_end
.annotate 'line', 16
    find_lex $P34, "$setting_name"
    unless_null $P34, vivify_21
    new $P34, "Undef"
  vivify_21:
    find_lex $P35, "%settings_loaded"
    unless_null $P35, vivify_22
    $P35 = root_new ['parrot';'Hash']
  vivify_22:
    set $P36, $P35[$P34]
    unless_null $P36, vivify_23
    new $P36, "Undef"
  vivify_23:
    defined $I37, $P36
    if $I37, unless_33_end
    .const 'Sub' $P39 = "14_1303340957.788" 
    capture_lex $P39
    $P39()
  unless_33_end:
  if_29_end:
.annotate 'line', 26
    new $P57, "Exception"
    set $P57['type'], .CONTROL_RETURN
    find_lex $P58, "$setting_name"
    unless_null $P58, vivify_34
    new $P58, "Undef"
  vivify_34:
    find_lex $P59, "%settings_loaded"
    unless_null $P59, vivify_35
    $P59 = root_new ['parrot';'Hash']
  vivify_35:
    set $P60, $P59[$P58]
    unless_null $P60, vivify_36
    new $P60, "Undef"
  vivify_36:
    setattribute $P57, 'payload', $P60
    throw $P57
.annotate 'line', 13
    .return ()
  control_25:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P61, exception, "payload"
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block38"  :anon :subid("14_1303340957.788") :outer("13_1303340957.788")
.annotate 'line', 17
    new $P40, "Undef"
    .lex "$*CTXSAVE", $P40
.annotate 'line', 18
    new $P41, "Undef"
    .lex "$*MAIN_CTX", $P41
.annotate 'line', 17
    find_lex $P42, "self"
    store_lex "$*CTXSAVE", $P42
    find_lex $P43, "$*MAIN_CTX"
    unless_null $P43, vivify_24
    get_hll_global $P43, "$MAIN_CTX"
    unless_null $P43, vivify_25
    die "Contextual $*MAIN_CTX not found"
  vivify_25:
  vivify_24:
.annotate 'line', 19
    find_lex $P44, "$setting_name"
    unless_null $P44, vivify_26
    new $P44, "Undef"
  vivify_26:
    concat $P45, $P44, ".setting.pbc"
    set $S46, $P45
    load_bytecode $S46
.annotate 'line', 20
    find_lex $P48, "$*MAIN_CTX"
    unless_null $P48, vivify_27
    get_hll_global $P48, "$MAIN_CTX"
    unless_null $P48, vivify_28
    die "Contextual $*MAIN_CTX not found"
  vivify_28:
  vivify_27:
    defined $I49, $P48
    if $I49, unless_47_end
.annotate 'line', 21
    new $P50, 'String'
    set $P50, "Unable to load setting "
    find_lex $P51, "$setting_name"
    unless_null $P51, vivify_29
    new $P51, "Undef"
  vivify_29:
    concat $P52, $P50, $P51
    concat $P53, $P52, "; maybe it is missing a YOU_ARE_HERE?"
    die $P53
  unless_47_end:
.annotate 'line', 23
    find_lex $P54, "$*MAIN_CTX"
    unless_null $P54, vivify_30
    get_hll_global $P54, "$MAIN_CTX"
    unless_null $P54, vivify_31
    die "Contextual $*MAIN_CTX not found"
  vivify_31:
  vivify_30:
    find_lex $P55, "$setting_name"
    unless_null $P55, vivify_32
    new $P55, "Undef"
  vivify_32:
    find_lex $P56, "%settings_loaded"
    unless_null $P56, vivify_33
    $P56 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P56
  vivify_33:
    set $P56[$P55], $P54
.annotate 'line', 16
    .return ($P54)
.end


.HLL "nqp"

.namespace []
.sub "_block73" :load :anon :subid("16_1303340957.788")
.annotate 'line', 1
    .const 'Sub' $P75 = "10_1303340957.788" 
    $P76 = $P75()
    .return ($P76)
.end

