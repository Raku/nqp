
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303429648.202")
.annotate 'line', 0
    .const 'Sub' $P17 = "11_1303429648.202" 
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
    .const 'Sub' $P17 = "11_1303429648.202" 
    capture_lex $P17
    $P92 = $P17()
    .return ($P92)
    .const 'Sub' $P94 = "17_1303429648.202" 
    .return ($P94)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post18") :outer("10_1303429648.202")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303429648.202" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P98, "1303429648.09"
    isnull $I99, $P98
    if $I99, if_97
    .const 'Sub' $P137 = "10_1303429648.202" 
    $P138 = $P137."get_lexinfo"()
    nqp_get_sc_object $P139, "1303429648.09", 0
    $P138."set_static_lexpad_value"("GLOBALish", $P139)
    .const 'Sub' $P140 = "10_1303429648.202" 
    $P141 = $P140."get_lexinfo"()
    $P141."finish_static_lexpad"()
    .const 'Sub' $P142 = "10_1303429648.202" 
    $P143 = $P142."get_lexinfo"()
    nqp_get_sc_object $P144, "1303429648.09", 0
    $P143."set_static_lexpad_value"("$?PACKAGE", $P144)
    .const 'Sub' $P145 = "10_1303429648.202" 
    $P146 = $P145."get_lexinfo"()
    $P146."finish_static_lexpad"()
    nqp_get_sc_object $P147, "1303429648.09", 1
    set_hll_global "ModuleLoader", $P147
    .const 'Sub' $P148 = "10_1303429648.202" 
    $P149 = $P148."get_lexinfo"()
    nqp_get_sc_object $P150, "1303429648.09", 1
    $P149."set_static_lexpad_value"("ModuleLoader", $P150)
    .const 'Sub' $P151 = "10_1303429648.202" 
    $P152 = $P151."get_lexinfo"()
    $P152."finish_static_lexpad"()
    .const 'Sub' $P153 = "11_1303429648.202" 
    $P154 = $P153."get_lexinfo"()
    nqp_get_sc_object $P155, "1303429648.09", 1
    $P154."set_static_lexpad_value"("$?PACKAGE", $P155)
    .const 'Sub' $P156 = "11_1303429648.202" 
    $P157 = $P156."get_lexinfo"()
    $P157."finish_static_lexpad"()
    .const 'Sub' $P158 = "11_1303429648.202" 
    $P159 = $P158."get_lexinfo"()
    nqp_get_sc_object $P160, "1303429648.09", 1
    $P159."set_static_lexpad_value"("$?CLASS", $P160)
    .const 'Sub' $P161 = "11_1303429648.202" 
    $P162 = $P161."get_lexinfo"()
    $P162."finish_static_lexpad"()
    goto if_97_end
  if_97:
    nqp_dynop_setup 
    getinterp $P100
    get_class $P101, "LexPad"
    get_class $P102, "NQPLexPad"
    $P100."hll_map"($P101, $P102)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P103, "1303429648.09"
    .local pmc cur_sc
    set cur_sc, $P103
    get_hll_global $P104, "KnowHOW"
    $P105 = $P104."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P105, cur_sc
    nqp_set_sc_object "1303429648.09", 0, $P105
    .const 'Sub' $P106 = "10_1303429648.202" 
    $P107 = $P106."get_lexinfo"()
    nqp_get_sc_object $P108, "1303429648.09", 0
    $P107."set_static_lexpad_value"("GLOBALish", $P108)
    .const 'Sub' $P109 = "10_1303429648.202" 
    $P110 = $P109."get_lexinfo"()
    $P110."finish_static_lexpad"()
    .const 'Sub' $P111 = "10_1303429648.202" 
    $P112 = $P111."get_lexinfo"()
    nqp_get_sc_object $P113, "1303429648.09", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P114 = "10_1303429648.202" 
    $P115 = $P114."get_lexinfo"()
    $P115."finish_static_lexpad"()
    get_hll_global $P116, "KnowHOW"
    $P117 = $P116."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P117, cur_sc
    nqp_set_sc_object "1303429648.09", 1, $P117
    nqp_get_sc_object $P118, "1303429648.09", 1
    nqp_get_sc_object $P119, "1303429648.09", 0
    get_who $P120, $P119
    set $P120["ModuleLoader"], $P118
    nqp_get_sc_object $P121, "1303429648.09", 1
    set_hll_global "ModuleLoader", $P121
    .const 'Sub' $P122 = "10_1303429648.202" 
    $P123 = $P122."get_lexinfo"()
    nqp_get_sc_object $P124, "1303429648.09", 1
    $P123."set_static_lexpad_value"("ModuleLoader", $P124)
    .const 'Sub' $P125 = "10_1303429648.202" 
    $P126 = $P125."get_lexinfo"()
    $P126."finish_static_lexpad"()
    .const 'Sub' $P127 = "11_1303429648.202" 
    $P128 = $P127."get_lexinfo"()
    nqp_get_sc_object $P129, "1303429648.09", 1
    $P128."set_static_lexpad_value"("$?PACKAGE", $P129)
    .const 'Sub' $P130 = "11_1303429648.202" 
    $P131 = $P130."get_lexinfo"()
    $P131."finish_static_lexpad"()
    .const 'Sub' $P132 = "11_1303429648.202" 
    $P133 = $P132."get_lexinfo"()
    nqp_get_sc_object $P134, "1303429648.09", 1
    $P133."set_static_lexpad_value"("$?CLASS", $P134)
    .const 'Sub' $P135 = "11_1303429648.202" 
    $P136 = $P135."get_lexinfo"()
    $P136."finish_static_lexpad"()
  if_97_end:
    nqp_get_sc_object $P163, "1303429648.09", 0
    set_hll_global "GLOBAL", $P163
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block16"  :subid("11_1303429648.202") :outer("10_1303429648.202")
.annotate 'line', 1
    .const 'Sub' $P82 = "16_1303429648.202" 
    capture_lex $P82
    .const 'Sub' $P42 = "14_1303429648.202" 
    capture_lex $P42
    .const 'Sub' $P26 = "13_1303429648.202" 
    capture_lex $P26
    .const 'Sub' $P22 = "12_1303429648.202" 
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
.annotate 'line', 22
    .const 'Sub' $P42 = "14_1303429648.202" 
    newclosure $P80, $P42
.annotate 'line', 1
    .return ($P80)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "" :load :init :subid("post19") :outer("11_1303429648.202")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1303429648.202" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P82 = "16_1303429648.202" 
    capture_lex $P82
    $P82()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block81"  :anon :subid("16_1303429648.202") :outer("11_1303429648.202")
.annotate 'line', 1
    nqp_get_sc_object $P83, "1303429648.09", 1
    .local pmc type_obj
    set type_obj, $P83
    get_how $P84, type_obj
    .const 'Sub' $P85 = "12_1303429648.202" 
    $P84."add_method"(type_obj, "ctxsave", $P85)
    get_how $P86, type_obj
    .const 'Sub' $P87 = "13_1303429648.202" 
    $P86."add_method"(type_obj, "load_module", $P87)
    get_how $P88, type_obj
    .const 'Sub' $P89 = "14_1303429648.202" 
    $P88."add_method"(type_obj, "load_setting", $P89)
    get_how $P90, type_obj
    $P91 = $P90."compose"(type_obj)
    .return ($P91)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave"  :subid("12_1303429648.202") :outer("11_1303429648.202")
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
.sub "load_module"  :subid("13_1303429648.202") :outer("11_1303429648.202")
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
    unless_null $P33, vivify_21
    get_hll_global $P33, "$MAIN_CTX"
    unless_null $P33, vivify_22
    die "Contextual $*MAIN_CTX not found"
  vivify_22:
  vivify_21:
.annotate 'line', 18
    find_lex $P34, "$module_name"
    unless_null $P34, vivify_23
    new $P34, "Undef"
  vivify_23:
    set $S35, $P34
    split $P36, "::", $S35
    join $S37, "/", $P36
    new $P38, 'String'
    set $P38, $S37
    concat $P39, $P38, ".pbc"
    store_lex "$path", $P39
.annotate 'line', 19
    find_lex $P40, "$path"
    unless_null $P40, vivify_24
    new $P40, "Undef"
  vivify_24:
    set $S41, $P40
    load_bytecode $S41
.annotate 'line', 13
    .return ()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting"  :subid("14_1303429648.202") :outer("11_1303429648.202")
    .param pmc param_45
    .param pmc param_46
.annotate 'line', 22
    .const 'Sub' $P57 = "15_1303429648.202" 
    capture_lex $P57
    new $P44, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P44, control_43
    push_eh $P44
    .lex "self", param_45
    .lex "$setting_name", param_46
.annotate 'line', 23
    find_lex $P48, "$setting_name"
    unless_null $P48, vivify_25
    new $P48, "Undef"
  vivify_25:
    set $S49, $P48
    isne $I50, $S49, "NULL"
    unless $I50, if_47_end
.annotate 'line', 25
    find_lex $P52, "$setting_name"
    unless_null $P52, vivify_26
    new $P52, "Undef"
  vivify_26:
    find_lex $P53, "%settings_loaded"
    unless_null $P53, vivify_27
    $P53 = root_new ['parrot';'Hash']
  vivify_27:
    set $P54, $P53[$P52]
    unless_null $P54, vivify_28
    new $P54, "Undef"
  vivify_28:
    defined $I55, $P54
    if $I55, unless_51_end
    .const 'Sub' $P57 = "15_1303429648.202" 
    capture_lex $P57
    $P57()
  unless_51_end:
  if_47_end:
.annotate 'line', 35
    new $P75, "Exception"
    set $P75['type'], .CONTROL_RETURN
    find_lex $P76, "$setting_name"
    unless_null $P76, vivify_39
    new $P76, "Undef"
  vivify_39:
    find_lex $P77, "%settings_loaded"
    unless_null $P77, vivify_40
    $P77 = root_new ['parrot';'Hash']
  vivify_40:
    set $P78, $P77[$P76]
    unless_null $P78, vivify_41
    new $P78, "Undef"
  vivify_41:
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
.sub "_block56"  :anon :subid("15_1303429648.202") :outer("14_1303429648.202")
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
    unless_null $P61, vivify_29
    get_hll_global $P61, "$MAIN_CTX"
    unless_null $P61, vivify_30
    die "Contextual $*MAIN_CTX not found"
  vivify_30:
  vivify_29:
.annotate 'line', 28
    find_lex $P62, "$setting_name"
    unless_null $P62, vivify_31
    new $P62, "Undef"
  vivify_31:
    concat $P63, $P62, ".setting.pbc"
    set $S64, $P63
    load_bytecode $S64
.annotate 'line', 29
    find_lex $P66, "$*MAIN_CTX"
    unless_null $P66, vivify_32
    get_hll_global $P66, "$MAIN_CTX"
    unless_null $P66, vivify_33
    die "Contextual $*MAIN_CTX not found"
  vivify_33:
  vivify_32:
    defined $I67, $P66
    if $I67, unless_65_end
.annotate 'line', 30
    new $P68, 'String'
    set $P68, "Unable to load setting "
    find_lex $P69, "$setting_name"
    unless_null $P69, vivify_34
    new $P69, "Undef"
  vivify_34:
    concat $P70, $P68, $P69
    concat $P71, $P70, "; maybe it is missing a YOU_ARE_HERE?"
    die $P71
  unless_65_end:
.annotate 'line', 32
    find_lex $P72, "$*MAIN_CTX"
    unless_null $P72, vivify_35
    get_hll_global $P72, "$MAIN_CTX"
    unless_null $P72, vivify_36
    die "Contextual $*MAIN_CTX not found"
  vivify_36:
  vivify_35:
    find_lex $P73, "$setting_name"
    unless_null $P73, vivify_37
    new $P73, "Undef"
  vivify_37:
    find_lex $P74, "%settings_loaded"
    unless_null $P74, vivify_38
    $P74 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P74
  vivify_38:
    set $P74[$P73], $P72
.annotate 'line', 25
    .return ($P72)
.end


.HLL "nqp"

.namespace []
.sub "_block93" :load :anon :subid("17_1303429648.202")
.annotate 'line', 1
    .const 'Sub' $P95 = "10_1303429648.202" 
    $P96 = $P95()
    .return ($P96)
.end

