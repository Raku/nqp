
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303428437.392")
.annotate 'line', 0
    .const 'Sub' $P93 = "17_1303428437.392" 
    capture_lex $P93
    .const 'Sub' $P17 = "11_1303428437.392" 
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
    .const 'Sub' $P17 = "11_1303428437.392" 
    capture_lex $P17
    $P17()
.annotate 'line', 40
    .const 'Sub' $P93 = "17_1303428437.392" 
    capture_lex $P93
    $P110 = $P93()
.annotate 'line', 1
    .return ($P110)
    .const 'Sub' $P112 = "20_1303428437.392" 
    .return ($P112)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post21") :outer("10_1303428437.392")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303428437.392" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P116, "1303428437.263"
    isnull $I117, $P116
    if $I117, if_115
    .const 'Sub' $P172 = "10_1303428437.392" 
    $P173 = $P172."get_lexinfo"()
    nqp_get_sc_object $P174, "1303428437.263", 0
    $P173."set_static_lexpad_value"("GLOBALish", $P174)
    .const 'Sub' $P175 = "10_1303428437.392" 
    $P176 = $P175."get_lexinfo"()
    $P176."finish_static_lexpad"()
    .const 'Sub' $P177 = "10_1303428437.392" 
    $P178 = $P177."get_lexinfo"()
    nqp_get_sc_object $P179, "1303428437.263", 0
    $P178."set_static_lexpad_value"("$?PACKAGE", $P179)
    .const 'Sub' $P180 = "10_1303428437.392" 
    $P181 = $P180."get_lexinfo"()
    $P181."finish_static_lexpad"()
    nqp_get_sc_object $P182, "1303428437.263", 1
    set_hll_global "ModuleLoader", $P182
    .const 'Sub' $P183 = "10_1303428437.392" 
    $P184 = $P183."get_lexinfo"()
    nqp_get_sc_object $P185, "1303428437.263", 1
    $P184."set_static_lexpad_value"("ModuleLoader", $P185)
    .const 'Sub' $P186 = "10_1303428437.392" 
    $P187 = $P186."get_lexinfo"()
    $P187."finish_static_lexpad"()
    .const 'Sub' $P188 = "11_1303428437.392" 
    $P189 = $P188."get_lexinfo"()
    nqp_get_sc_object $P190, "1303428437.263", 1
    $P189."set_static_lexpad_value"("$?PACKAGE", $P190)
    .const 'Sub' $P191 = "11_1303428437.392" 
    $P192 = $P191."get_lexinfo"()
    $P192."finish_static_lexpad"()
    .const 'Sub' $P193 = "11_1303428437.392" 
    $P194 = $P193."get_lexinfo"()
    nqp_get_sc_object $P195, "1303428437.263", 1
    $P194."set_static_lexpad_value"("$?CLASS", $P195)
    .const 'Sub' $P196 = "11_1303428437.392" 
    $P197 = $P196."get_lexinfo"()
    $P197."finish_static_lexpad"()
    nqp_get_sc_object $P198, "1303428437.263", 2
    set_hll_global ["HLL"], "SettingManager", $P198
    .const 'Sub' $P199 = "17_1303428437.392" 
    $P200 = $P199."get_lexinfo"()
    nqp_get_sc_object $P201, "1303428437.263", 2
    $P200."set_static_lexpad_value"("$?PACKAGE", $P201)
    .const 'Sub' $P202 = "17_1303428437.392" 
    $P203 = $P202."get_lexinfo"()
    $P203."finish_static_lexpad"()
    .const 'Sub' $P204 = "17_1303428437.392" 
    $P205 = $P204."get_lexinfo"()
    nqp_get_sc_object $P206, "1303428437.263", 2
    $P205."set_static_lexpad_value"("$?CLASS", $P206)
    .const 'Sub' $P207 = "17_1303428437.392" 
    $P208 = $P207."get_lexinfo"()
    $P208."finish_static_lexpad"()
    goto if_115_end
  if_115:
    nqp_dynop_setup 
    getinterp $P118
    get_class $P119, "LexPad"
    get_class $P120, "NQPLexPad"
    $P118."hll_map"($P119, $P120)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P121, "1303428437.263"
    .local pmc cur_sc
    set cur_sc, $P121
    get_hll_global $P122, "KnowHOW"
    $P123 = $P122."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P123, cur_sc
    nqp_set_sc_object "1303428437.263", 0, $P123
    .const 'Sub' $P124 = "10_1303428437.392" 
    $P125 = $P124."get_lexinfo"()
    nqp_get_sc_object $P126, "1303428437.263", 0
    $P125."set_static_lexpad_value"("GLOBALish", $P126)
    .const 'Sub' $P127 = "10_1303428437.392" 
    $P128 = $P127."get_lexinfo"()
    $P128."finish_static_lexpad"()
    .const 'Sub' $P129 = "10_1303428437.392" 
    $P130 = $P129."get_lexinfo"()
    nqp_get_sc_object $P131, "1303428437.263", 0
    $P130."set_static_lexpad_value"("$?PACKAGE", $P131)
    .const 'Sub' $P132 = "10_1303428437.392" 
    $P133 = $P132."get_lexinfo"()
    $P133."finish_static_lexpad"()
    get_hll_global $P134, "KnowHOW"
    $P135 = $P134."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P135, cur_sc
    nqp_set_sc_object "1303428437.263", 1, $P135
    nqp_get_sc_object $P136, "1303428437.263", 1
    nqp_get_sc_object $P137, "1303428437.263", 0
    get_who $P138, $P137
    set $P138["ModuleLoader"], $P136
    nqp_get_sc_object $P139, "1303428437.263", 1
    set_hll_global "ModuleLoader", $P139
    .const 'Sub' $P140 = "10_1303428437.392" 
    $P141 = $P140."get_lexinfo"()
    nqp_get_sc_object $P142, "1303428437.263", 1
    $P141."set_static_lexpad_value"("ModuleLoader", $P142)
    .const 'Sub' $P143 = "10_1303428437.392" 
    $P144 = $P143."get_lexinfo"()
    $P144."finish_static_lexpad"()
    .const 'Sub' $P145 = "11_1303428437.392" 
    $P146 = $P145."get_lexinfo"()
    nqp_get_sc_object $P147, "1303428437.263", 1
    $P146."set_static_lexpad_value"("$?PACKAGE", $P147)
    .const 'Sub' $P148 = "11_1303428437.392" 
    $P149 = $P148."get_lexinfo"()
    $P149."finish_static_lexpad"()
    .const 'Sub' $P150 = "11_1303428437.392" 
    $P151 = $P150."get_lexinfo"()
    nqp_get_sc_object $P152, "1303428437.263", 1
    $P151."set_static_lexpad_value"("$?CLASS", $P152)
    .const 'Sub' $P153 = "11_1303428437.392" 
    $P154 = $P153."get_lexinfo"()
    $P154."finish_static_lexpad"()
    get_hll_global $P155, "KnowHOW"
    $P156 = $P155."new_type"("HLL::SettingManager" :named("name"))
    nqp_set_sc_for_object $P156, cur_sc
    nqp_set_sc_object "1303428437.263", 2, $P156
    nqp_get_sc_object $P157, "1303428437.263", 2
    nqp_get_sc_object $P158, "1303428437.263", 0
    nqp_get_package_through_who $P159, $P158, "HLL"
    get_who $P160, $P159
    set $P160["SettingManager"], $P157
    nqp_get_sc_object $P161, "1303428437.263", 2
    set_hll_global ["HLL"], "SettingManager", $P161
    .const 'Sub' $P162 = "17_1303428437.392" 
    $P163 = $P162."get_lexinfo"()
    nqp_get_sc_object $P164, "1303428437.263", 2
    $P163."set_static_lexpad_value"("$?PACKAGE", $P164)
    .const 'Sub' $P165 = "17_1303428437.392" 
    $P166 = $P165."get_lexinfo"()
    $P166."finish_static_lexpad"()
    .const 'Sub' $P167 = "17_1303428437.392" 
    $P168 = $P167."get_lexinfo"()
    nqp_get_sc_object $P169, "1303428437.263", 2
    $P168."set_static_lexpad_value"("$?CLASS", $P169)
    .const 'Sub' $P170 = "17_1303428437.392" 
    $P171 = $P170."get_lexinfo"()
    $P171."finish_static_lexpad"()
  if_115_end:
    nqp_get_sc_object $P209, "1303428437.263", 0
    set_hll_global "GLOBAL", $P209
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303428437.392") :outer("10_1303428437.392")
.annotate 'line', 1
    .const 'Sub' $P82 = "16_1303428437.392" 
    capture_lex $P82
    .const 'Sub' $P42 = "14_1303428437.392" 
    capture_lex $P42
    .const 'Sub' $P26 = "13_1303428437.392" 
    capture_lex $P26
    .const 'Sub' $P22 = "12_1303428437.392" 
    capture_lex $P22
.annotate 'line', 2
    $P18 = root_new ['parrot';'Hash']
    .lex "%settings_loaded", $P18
    .lex "$?PACKAGE", $P19
    .lex "$?CLASS", $P20
.annotate 'line', 1
    find_lex $P21, "%settings_loaded"
    unless_null $P21, vivify_23
    $P21 = root_new ['parrot';'Hash']
  vivify_23:
.annotate 'line', 22
    .const 'Sub' $P42 = "14_1303428437.392" 
    newclosure $P80, $P42
.annotate 'line', 1
    .return ($P80)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post22") :outer("11_1303428437.392")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303428437.392" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P82 = "16_1303428437.392" 
    capture_lex $P82
    $P82()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block81"  :anon :subid("16_1303428437.392") :outer("11_1303428437.392")
.annotate 'line', 1
    nqp_get_sc_object $P83, "1303428437.263", 1
    .local pmc type_obj
    set type_obj, $P83
    get_how $P84, type_obj
    .const 'Sub' $P85 = "12_1303428437.392" 
    $P84."add_method"(type_obj, "ctxsave", $P85)
    get_how $P86, type_obj
    .const 'Sub' $P87 = "13_1303428437.392" 
    $P86."add_method"(type_obj, "load_module", $P87)
    get_how $P88, type_obj
    .const 'Sub' $P89 = "14_1303428437.392" 
    $P88."add_method"(type_obj, "load_setting", $P89)
    get_how $P90, type_obj
    $P91 = $P90."compose"(type_obj)
    .return ($P91)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("12_1303428437.392") :outer("11_1303428437.392")
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
.sub "load_module"  :subid("13_1303428437.392") :outer("11_1303428437.392")
    .param pmc param_27
    .param pmc param_28
.annotate 'line', 13
    .lex "self", param_27
    .lex "$module_name", param_28
.annotate 'line', 16
    new $P29, "Undef"
    .lex "$*CTXSAVE", $P29
.annotate 'line', 17
    new $P30, "Undef"
    .lex "$*MAIN_CTX", $P30
.annotate 'line', 18
    new $P31, "Undef"
    .lex "$path", $P31
.annotate 'line', 16
    find_lex $P32, "self"
    store_lex "$*CTXSAVE", $P32
    find_lex $P33, "$*MAIN_CTX"
    unless_null $P33, vivify_24
    get_hll_global $P33, "$MAIN_CTX"
    unless_null $P33, vivify_25
    die "Contextual $*MAIN_CTX not found"
  vivify_25:
  vivify_24:
.annotate 'line', 18
    find_lex $P34, "$module_name"
    unless_null $P34, vivify_26
    new $P34, "Undef"
  vivify_26:
    set $S35, $P34
    split $P36, "::", $S35
    join $S37, "/", $P36
    new $P38, 'String'
    set $P38, $S37
    concat $P39, $P38, ".pbc"
    store_lex "$path", $P39
.annotate 'line', 19
    find_lex $P40, "$path"
    unless_null $P40, vivify_27
    new $P40, "Undef"
  vivify_27:
    set $S41, $P40
    load_bytecode $S41
.annotate 'line', 13
    .return ()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("14_1303428437.392") :outer("11_1303428437.392")
    .param pmc param_45
    .param pmc param_46
.annotate 'line', 22
    .const 'Sub' $P57 = "15_1303428437.392" 
    capture_lex $P57
    new $P44, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P44, control_43
    push_eh $P44
    .lex "self", param_45
    .lex "$setting_name", param_46
.annotate 'line', 23
    find_lex $P48, "$setting_name"
    unless_null $P48, vivify_28
    new $P48, "Undef"
  vivify_28:
    set $S49, $P48
    isne $I50, $S49, "NULL"
    unless $I50, if_47_end
.annotate 'line', 25
    find_lex $P52, "$setting_name"
    unless_null $P52, vivify_29
    new $P52, "Undef"
  vivify_29:
    find_lex $P53, "%settings_loaded"
    unless_null $P53, vivify_30
    $P53 = root_new ['parrot';'Hash']
  vivify_30:
    set $P54, $P53[$P52]
    unless_null $P54, vivify_31
    new $P54, "Undef"
  vivify_31:
    defined $I55, $P54
    if $I55, unless_51_end
    .const 'Sub' $P57 = "15_1303428437.392" 
    capture_lex $P57
    $P57()
  unless_51_end:
  if_47_end:
.annotate 'line', 35
    new $P75, "Exception"
    set $P75['type'], .CONTROL_RETURN
    find_lex $P76, "$setting_name"
    unless_null $P76, vivify_42
    new $P76, "Undef"
  vivify_42:
    find_lex $P77, "%settings_loaded"
    unless_null $P77, vivify_43
    $P77 = root_new ['parrot';'Hash']
  vivify_43:
    set $P78, $P77[$P76]
    unless_null $P78, vivify_44
    new $P78, "Undef"
  vivify_44:
    setattribute $P75, 'payload', $P78
    throw $P75
.annotate 'line', 22
    .return ()
  control_43:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P79, exception, "payload"
    .return ($P79)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block56"  :anon :subid("15_1303428437.392") :outer("14_1303428437.392")
.annotate 'line', 26
    new $P58, "Undef"
    .lex "$*CTXSAVE", $P58
.annotate 'line', 27
    new $P59, "Undef"
    .lex "$*MAIN_CTX", $P59
.annotate 'line', 26
    find_lex $P60, "self"
    store_lex "$*CTXSAVE", $P60
    find_lex $P61, "$*MAIN_CTX"
    unless_null $P61, vivify_32
    get_hll_global $P61, "$MAIN_CTX"
    unless_null $P61, vivify_33
    die "Contextual $*MAIN_CTX not found"
  vivify_33:
  vivify_32:
.annotate 'line', 28
    find_lex $P62, "$setting_name"
    unless_null $P62, vivify_34
    new $P62, "Undef"
  vivify_34:
    concat $P63, $P62, ".setting.pbc"
    set $S64, $P63
    load_bytecode $S64
.annotate 'line', 29
    find_lex $P66, "$*MAIN_CTX"
    unless_null $P66, vivify_35
    get_hll_global $P66, "$MAIN_CTX"
    unless_null $P66, vivify_36
    die "Contextual $*MAIN_CTX not found"
  vivify_36:
  vivify_35:
    defined $I67, $P66
    if $I67, unless_65_end
.annotate 'line', 30
    new $P68, 'String'
    set $P68, "Unable to load setting "
    find_lex $P69, "$setting_name"
    unless_null $P69, vivify_37
    new $P69, "Undef"
  vivify_37:
    concat $P70, $P68, $P69
    concat $P71, $P70, "; maybe it is missing a YOU_ARE_HERE?"
    die $P71
  unless_65_end:
.annotate 'line', 32
    find_lex $P72, "$*MAIN_CTX"
    unless_null $P72, vivify_38
    get_hll_global $P72, "$MAIN_CTX"
    unless_null $P72, vivify_39
    die "Contextual $*MAIN_CTX not found"
  vivify_39:
  vivify_38:
    find_lex $P73, "$setting_name"
    unless_null $P73, vivify_40
    new $P73, "Undef"
  vivify_40:
    find_lex $P74, "%settings_loaded"
    unless_null $P74, vivify_41
    $P74 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P74
  vivify_41:
    set $P74[$P73], $P72
.annotate 'line', 25
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block92"  :subid("17_1303428437.392") :outer("10_1303428437.392")
.annotate 'line', 40
    .const 'Sub' $P104 = "19_1303428437.392" 
    capture_lex $P104
    .const 'Sub' $P96 = "18_1303428437.392" 
    capture_lex $P96
    .lex "$?PACKAGE", $P94
    .lex "$?CLASS", $P95
.annotate 'line', 41
    .const 'Sub' $P96 = "18_1303428437.392" 
    newclosure $P102, $P96
.annotate 'line', 40
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "" :load :init :subid("post45") :outer("17_1303428437.392")
.annotate 'line', 40
    .const 'Sub' $P93 = "17_1303428437.392" 
    .local pmc block
    set block, $P93
    .const 'Sub' $P104 = "19_1303428437.392" 
    capture_lex $P104
    $P104()
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "_block103"  :anon :subid("19_1303428437.392") :outer("17_1303428437.392")
.annotate 'line', 40
    nqp_get_sc_object $P105, "1303428437.263", 2
    .local pmc type_obj
    set type_obj, $P105
    get_how $P106, type_obj
    .const 'Sub' $P107 = "18_1303428437.392" 
    $P106."add_method"(type_obj, "load_setting", $P107)
    get_how $P108, type_obj
    $P109 = $P108."compose"(type_obj)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"SettingManager"]
.sub "load_setting"  :subid("18_1303428437.392") :outer("17_1303428437.392")
    .param pmc param_97
    .param pmc param_98
.annotate 'line', 41
    .lex "self", param_97
    .lex "$setting_name", param_98
.annotate 'line', 42
    find_lex $P99, "ModuleLoader"
    find_lex $P100, "$setting_name"
    unless_null $P100, vivify_46
    new $P100, "Undef"
  vivify_46:
    $P101 = $P99."load_setting"($P100)
.annotate 'line', 41
    .return ($P101)
.end


.HLL "nqp"

.namespace []
.sub "_block111" :load :anon :subid("20_1303428437.392")
.annotate 'line', 1
    .const 'Sub' $P113 = "10_1303428437.392" 
    $P114 = $P113()
    .return ($P114)
.end

