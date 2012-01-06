.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1325892446.38")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1007 = "11_1325892446.38" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "ModuleLoader", $P1005
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P1007 = "11_1325892446.38" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 178
    set $P100, $P1005
    set_hll_global "ModuleLoader", $P100
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_1155
    set $P100, $P101
    goto if_1155_end
  if_1155:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_1155_end:
    .return ($P100)
    .const 'Sub' $P1157 = "29_1325892446.38" 
    .return ($P1157)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post30") :outer("10_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1325892446.38" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113"
    isnull $I100, $P107
    if $I100, if_1159
    goto if_1159_end
  if_1159:
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src\\ModuleLoader.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I101, $P112
    unless $I101, if_1160_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_1160_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P113
    .const 'LexInfo' $P1161 = "10_1325892446.38" 
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 0
    $P1161."set_static_lexpad_value"("GLOBALish", $P112)
    .const 'LexInfo' $P1162 = "10_1325892446.38" 
    $P1162."finish_static_lexpad"()
    .const 'LexInfo' $P1163 = "10_1325892446.38" 
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 0
    $P1163."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P1164 = "10_1325892446.38" 
    $P1164."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("ModuleLoader" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P113
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    nqp_get_sc_object $P113, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 0
    get_who $P114, $P113
    set $P114["ModuleLoader"], $P112
    .const 'LexInfo' $P1165 = "10_1325892446.38" 
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    $P1165."set_static_lexpad_value"("ModuleLoader", $P112)
    .const 'LexInfo' $P1166 = "10_1325892446.38" 
    $P1166."finish_static_lexpad"()
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    .const '' $P1167 = "16_1325892446.38" 
    $P113."add_method"($P114, "search_path", $P1167)
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    .const '' $P1168 = "19_1325892446.38" 
    $P113."add_method"($P114, "ctxsave", $P1168)
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    .const '' $P1169 = "20_1325892446.38" 
    $P113."add_method"($P114, "load_module", $P1169)
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    .const '' $P1170 = "24_1325892446.38" 
    $P113."add_method"($P114, "load_setting", $P1170)
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    .const '' $P1171 = "28_1325892446.38" 
    $P113."add_method"($P114, "set_mainline_module", $P1171)
    .const 'LexInfo' $P1172 = "11_1325892446.38" 
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    $P1172."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P1173 = "11_1325892446.38" 
    $P1173."finish_static_lexpad"()
    .const 'LexInfo' $P1174 = "11_1325892446.38" 
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    $P1174."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P1175 = "11_1325892446.38" 
    $P1175."finish_static_lexpad"()
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 1
    $P113."compose"($P114)
  if_1159_end:
    nqp_get_sc_object $P112, "A46965044FF31CDC6AACA202FB502E0ADE47655E-1325892446.113", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1006"  :subid("11_1325892446.38") :outer("10_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P1145 = "28_1325892446.38" 
    capture_lex $P1145
    .const 'Sub' $P1117 = "24_1325892446.38" 
    capture_lex $P1117
    .const 'Sub' $P1085 = "20_1325892446.38" 
    capture_lex $P1085
    .const 'Sub' $P1082 = "19_1325892446.38" 
    capture_lex $P1082
    .const 'Sub' $P1046 = "16_1325892446.38" 
    capture_lex $P1046
    .const 'Sub' $P1014 = "12_1325892446.38" 
    capture_lex $P1014
.annotate 'line', 2
    $P1009 = root_new ['parrot';'Hash']
    set $P1008, $P1009
    .lex "%modules_loaded", $P1008
.annotate 'line', 3
    $P1011 = root_new ['parrot';'Hash']
    set $P1010, $P1011
    .lex "%settings_loaded", $P1010
.annotate 'line', 85
    new $P100, "Undef"
    set $P1012, $P100
    .lex "$stub_how", $P1012
.annotate 'line', 86
    .const 'Sub' $P1014 = "12_1325892446.38" 
    newclosure $P1041, $P1014
    set $P1013, $P1041
    .lex "merge_globals", $P1013
.annotate 'line', 85
    .lex "$?PACKAGE", $P1042
    .lex "$?CLASS", $P1043
.annotate 'line', 1
    set $P1044, $P1008
    unless_null $P1044, vivify_66
    $P1044 = root_new ['parrot';'Hash']
  vivify_66:
    set $P1045, $P1010
    unless_null $P1045, vivify_67
    $P1045 = root_new ['parrot';'Hash']
  vivify_67:
.annotate 'line', 85
    new $P102, "String"
    assign $P102, "KnowHOW"
    set $P1012, $P102
.annotate 'line', 1
    set $P102, $P1013
.annotate 'line', 153
    .const 'Sub' $P1145 = "28_1325892446.38" 
    newclosure $P1154, $P1145
.annotate 'line', 1
    .return ($P1154)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1015
    .param pmc param_1016
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 86
    .const 'Sub' $P1026 = "14_1325892446.38" 
    capture_lex $P1026
    .const 'Sub' $P1021 = "13_1325892446.38" 
    capture_lex $P1021
    .lex "$target", param_1015
    .lex "$source", param_1016
.annotate 'line', 90
    $P1018 = root_new ['parrot';'Hash']
    set $P1017, $P1018
    .lex "%known_symbols", $P1017
.annotate 'line', 86
    set $P1019, $P1017
    unless_null $P1019, vivify_31
    $P1019 = root_new ['parrot';'Hash']
  vivify_31:
.annotate 'line', 91
    set $P102, param_1015
    unless_null $P102, vivify_32
    new $P102, "Undef"
  vivify_32:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_33
    iter $P101, $P103
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1024_handler
    push_eh $P106
  loop1024_test:
    unless $P101, loop1024_done
    shift $P104, $P101
  loop1024_redo:
    .const 'Sub' $P1021 = "13_1325892446.38" 
    capture_lex $P1021
    $P1021($P104)
  loop1024_next:
    goto loop1024_test
  loop1024_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1024_next
    eq $P107, .CONTROL_LOOP_REDO, loop1024_redo
  loop1024_done:
    pop_eh 
  for_undef_33:
.annotate 'line', 94
    set $P102, param_1016
    unless_null $P102, vivify_36
    new $P102, "Undef"
  vivify_36:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_37
    iter $P101, $P103
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1040_handler
    push_eh $P107
  loop1040_test:
    unless $P101, loop1040_done
    shift $P104, $P101
  loop1040_redo:
    .const 'Sub' $P1026 = "14_1325892446.38" 
    capture_lex $P1026
    $P1026($P104)
  loop1040_next:
    goto loop1040_test
  loop1040_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1040_next
    eq $P108, .CONTROL_LOOP_REDO, loop1040_redo
  loop1040_done:
    pop_eh 
  for_undef_37:
.annotate 'line', 86
    .return ($P101)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1020"  :anon :subid("13_1325892446.38") :outer("12_1325892446.38")
    .param pmc param_1022
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 91
    .lex "$_", param_1022
.annotate 'line', 92
    new $P105, "Float"
    assign $P105, 1
    find_lex $P106, "$_"
    unless_null $P106, vivify_34
    new $P106, "Undef"
  vivify_34:
    $P107 = $P106."key"()
    find_lex $P1023, "%known_symbols"
    unless_null $P1023, vivify_35
    $P1023 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P1023
  vivify_35:
    set $P1023[$P107], $P105
.annotate 'line', 91
    .return ($P105)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1025"  :anon :subid("14_1325892446.38") :outer("12_1325892446.38")
    .param pmc param_1028
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 94
    .const 'Sub' $P1033 = "15_1325892446.38" 
    capture_lex $P1033
.annotate 'line', 95
    new $P105, "Undef"
    set $P1027, $P105
    .lex "$sym", $P1027
    .lex "$_", param_1028
    find_lex $P106, "$_"
    unless_null $P106, vivify_38
    new $P106, "Undef"
  vivify_38:
    $P107 = $P106."key"()
    set $P1027, $P107
.annotate 'line', 96
    set $P107, $P1027
    unless_null $P107, vivify_39
    new $P107, "Undef"
  vivify_39:
    find_lex $P1030, "%known_symbols"
    unless_null $P1030, vivify_40
    $P1030 = root_new ['parrot';'Hash']
  vivify_40:
    set $P108, $P1030[$P107]
    unless_null $P108, vivify_41
    new $P108, "Undef"
  vivify_41:
    isfalse $I101, $P108
    if $I101, if_1029
.annotate 'line', 99
    set $P111, $P1027
    unless_null $P111, vivify_42
    new $P111, "Undef"
  vivify_42:
    find_lex $P112, "$target"
    unless_null $P112, vivify_43
    new $P112, "Undef"
  vivify_43:
    get_who $P113, $P112
    set $P114, $P113[$P111]
    unless_null $P114, vivify_44
    new $P114, "Undef"
  vivify_44:
    find_lex $P115, "$_"
    unless_null $P115, vivify_45
    new $P115, "Undef"
  vivify_45:
    $P116 = $P115."value"()
    issame $I102, $P114, $P116
    if $I102, if_1031
.annotate 'line', 102
    .const 'Sub' $P1033 = "15_1325892446.38" 
    capture_lex $P1033
    $P122 = $P1033()
    set $P109, $P122
.annotate 'line', 99
    goto if_1031_end
  if_1031:
  if_1031_end:
    set $P106, $P109
.annotate 'line', 96
    goto if_1029_end
  if_1029:
.annotate 'line', 97
    find_lex $P109, "$_"
    unless_null $P109, vivify_63
    new $P109, "Undef"
  vivify_63:
    $P110 = $P109."value"()
    set $P111, $P1027
    unless_null $P111, vivify_64
    new $P111, "Undef"
  vivify_64:
    find_lex $P112, "$target"
    unless_null $P112, vivify_65
    new $P112, "Undef"
    store_lex "$target", $P112
  vivify_65:
    get_who $P113, $P112
    set $P113[$P111], $P110
.annotate 'line', 96
    set $P106, $P110
  if_1029_end:
.annotate 'line', 94
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1032"  :anon :subid("15_1325892446.38") :outer("14_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 103
    new $P117, "Undef"
    set $P1034, $P117
    .lex "$source_mo", $P1034
.annotate 'line', 104
    new $P118, "Undef"
    set $P1035, $P118
    .lex "$source_is_stub", $P1035
.annotate 'line', 105
    new $P119, "Undef"
    set $P1036, $P119
    .lex "$target_mo", $P1036
.annotate 'line', 106
    new $P120, "Undef"
    set $P1037, $P120
    .lex "$target_is_stub", $P1037
.annotate 'line', 103
    find_lex $P121, "$_"
    unless_null $P121, vivify_46
    new $P121, "Undef"
  vivify_46:
    $P122 = $P121."value"()
    get_how $P123, $P122
    set $P1034, $P123
.annotate 'line', 104
    set $P121, $P1034
    unless_null $P121, vivify_47
    new $P121, "Undef"
  vivify_47:
    get_what $P122, $P121
    get_how $P123, $P122
    set $P124, $P1034
    unless_null $P124, vivify_48
    new $P124, "Undef"
  vivify_48:
    $S100 = $P123."name"($P124)
    find_lex $P125, "$stub_how"
    unless_null $P125, vivify_49
    new $P125, "Undef"
  vivify_49:
    set $S101, $P125
    iseq $I103, $S100, $S101
    new $P126, 'Integer'
    set $P126, $I103
    set $P1035, $P126
.annotate 'line', 105
    find_lex $P121, "$sym"
    unless_null $P121, vivify_50
    new $P121, "Undef"
  vivify_50:
    find_lex $P122, "$target"
    unless_null $P122, vivify_51
    new $P122, "Undef"
  vivify_51:
    get_who $P123, $P122
    set $P124, $P123[$P121]
    unless_null $P124, vivify_52
    new $P124, "Undef"
  vivify_52:
    get_how $P125, $P124
    set $P1036, $P125
.annotate 'line', 106
    set $P121, $P1036
    unless_null $P121, vivify_53
    new $P121, "Undef"
  vivify_53:
    get_what $P122, $P121
    get_how $P123, $P122
    set $P124, $P1036
    unless_null $P124, vivify_54
    new $P124, "Undef"
  vivify_54:
    $S100 = $P123."name"($P124)
    find_lex $P125, "$stub_how"
    unless_null $P125, vivify_55
    new $P125, "Undef"
  vivify_55:
    set $S101, $P125
    iseq $I103, $S100, $S101
    new $P126, 'Integer'
    set $P126, $I103
    set $P1037, $P126
.annotate 'line', 107
    set $P123, $P1035
    unless_null $P123, vivify_56
    new $P123, "Undef"
  vivify_56:
    if $P123, if_1039
    set $P122, $P123
    goto if_1039_end
  if_1039:
    set $P124, $P1037
    unless_null $P124, vivify_57
    new $P124, "Undef"
  vivify_57:
    set $P122, $P124
  if_1039_end:
    if $P122, if_1038
.annotate 'line', 112
    new $P125, 'String'
    set $P125, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P126, "$sym"
    unless_null $P126, vivify_58
    new $P126, "Undef"
  vivify_58:
    concat $P127, $P125, $P126
    die $P127
.annotate 'line', 111
    goto if_1038_end
  if_1038:
.annotate 'line', 109
    find_lex $P125, "$sym"
    unless_null $P125, vivify_59
    new $P125, "Undef"
  vivify_59:
    find_lex $P126, "$target"
    unless_null $P126, vivify_60
    new $P126, "Undef"
  vivify_60:
    get_who $P127, $P126
    set $P128, $P127[$P125]
    unless_null $P128, vivify_61
    new $P128, "Undef"
  vivify_61:
    find_lex $P129, "$_"
    unless_null $P129, vivify_62
    new $P129, "Undef"
  vivify_62:
    $P130 = $P129."value"()
    $P131 = "merge_globals"($P128, $P130)
.annotate 'line', 107
    set $P121, $P131
  if_1038_end:
.annotate 'line', 102
    .return ($P121)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "search_path" :anon :subid("16_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1047
    .param pmc param_1048
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 5
    .const 'Sub' $P1068 = "18_1325892446.38" 
    capture_lex $P1068
    .const 'Sub' $P1056 = "17_1325892446.38" 
    capture_lex $P1056
    .lex "self", param_1047
    .lex "$explicit_path", param_1048
.annotate 'line', 6
    $P1050 = root_new ['parrot';'ResizablePMCArray']
    set $P1049, $P1050
    .lex "@search_paths", $P1049
.annotate 'line', 10
    new $P102, "Undef"
    set $P1051, $P102
    .lex "$explicit", $P1051
.annotate 'line', 27
    $P1053 = root_new ['parrot';'Hash']
    set $P1052, $P1053
    .lex "%conf", $P1052
.annotate 'line', 5
    set $P1054, $P1049
    unless_null $P1054, vivify_68
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_68:
    set $P103, $P1051
    unless_null $P103, vivify_69
    new $P103, "Undef"
  vivify_69:
.annotate 'line', 11
    .const 'Sub' $P1056 = "17_1325892446.38" 
    capture_lex $P1056
    $P1056()
.annotate 'line', 12
    set $P103, $P1051
    unless_null $P103, vivify_75
    new $P103, "Undef"
  vivify_75:
    if $P103, if_1065
.annotate 'line', 15
    .const 'Sub' $P1068 = "18_1325892446.38" 
    capture_lex $P1068
    $P1068()
    goto if_1065_end
  if_1065:
.annotate 'line', 13
    set $P1066, $P1049
    unless_null $P1066, vivify_82
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_82:
    set $P104, $P1051
    unless_null $P104, vivify_83
    new $P104, "Undef"
  vivify_83:
    $P1066."push"($P104)
  if_1065_end:
.annotate 'line', 23
    set $P1076, $P1049
    unless_null $P1076, vivify_84
    $P1076 = root_new ['parrot';'ResizablePMCArray']
  vivify_84:
    $P1076."push"(".")
.annotate 'line', 24
    set $P1077, $P1049
    unless_null $P1077, vivify_85
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_85:
    $P1077."push"("blib")
.annotate 'line', 27
    getinterp $P103
    set $P104, $P103[.IGLOBALS_CONFIG_HASH]
    unless_null $P104, vivify_86
    new $P104, "Undef"
  vivify_86:
    set $P1052, $P104
.annotate 'line', 28
    set $P1078, $P1049
    unless_null $P1078, vivify_87
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_87:
    set $P1079, $P1052
    unless_null $P1079, vivify_88
    $P1079 = root_new ['parrot';'Hash']
  vivify_88:
    set $P103, $P1079["libdir"]
    unless_null $P103, vivify_89
    new $P103, "Undef"
  vivify_89:
    set $P1080, $P1052
    unless_null $P1080, vivify_90
    $P1080 = root_new ['parrot';'Hash']
  vivify_90:
    set $P104, $P1080["versiondir"]
    unless_null $P104, vivify_91
    new $P104, "Undef"
  vivify_91:
    concat $P105, $P103, $P104
    concat $P106, $P105, "/languages/nqp/lib"
    $P1078."push"($P106)
.annotate 'line', 5
    set $P1081, $P1049
    unless_null $P1081, vivify_92
    $P1081 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
    .return ($P1081)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1055"  :anon :subid("17_1325892446.38") :outer("16_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 11
    new $P1060, 'ExceptionHandler'
    set_label $P1060, control_1059
    $P1060."handle_types_except"(.CONTROL_ALL)
    push_eh $P1060
    find_lex $P103, "$explicit_path"
    unless_null $P103, vivify_70
    new $P103, "Undef"
  vivify_70:
    find_dynamic_lex $P106, "%*COMPILING"
    unless_null $P106, vivify_71
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%COMPILING"]
    unless_null $P106, vivify_72
    die "Contextual %*COMPILING not found"
  vivify_72:
  vivify_71:
    set $P1057, $P106["%?OPTIONS"]
    unless_null $P1057, vivify_73
    $P1057 = root_new ['parrot';'Hash']
  vivify_73:
    set $P107, $P1057[$P103]
    unless_null $P107, vivify_74
    new $P107, "Undef"
  vivify_74:
    store_lex "$explicit", $P107
    pop_eh 
    goto skip_handler_1058
  control_1059:
    peek_exception $P1061
    .local pmc exception 
    .get_results (exception) 
    new $P1063, 'Integer'
    set $P1063, 1
    set exception["handled"], $P1063
    set $I1064, exception["handled"]
    eq $I1064, 1, handled_1062
    rethrow exception
  handled_1062:
    finalize $P1061
    .return (exception)
  skip_handler_1058:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1067"  :anon :subid("18_1325892446.38") :outer("16_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 16
    $P1070 = root_new ['parrot';'ResizablePMCArray']
    set $P1069, $P1070
    .lex "@lib_paths", $P1069
    new $P104, "Float"
    assign $P104, 1
    set $I100, $P104
    getinterp $P105
    set $P1071, $P105[.IGLOBALS_LIB_PATHS]
    unless_null $P1071, vivify_76
    $P1071 = root_new ['parrot';'ResizablePMCArray']
  vivify_76:
    set $P106, $P1071[$I100]
    unless_null $P106, vivify_77
    new $P106, "Undef"
  vivify_77:
    set $P1069, $P106
.annotate 'line', 17
    set $P1073, $P1069
    unless_null $P1073, vivify_78
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    set $N100, $P1073
    set $N101, 3
    isgt $I100, $N100, $N101
    if $I100, if_1072
    new $P104, 'Integer'
    set $P104, $I100
    goto if_1072_end
  if_1072:
.annotate 'line', 18
    find_lex $P1074, "@search_paths"
    unless_null $P1074, vivify_79
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_79:
    new $P105, "Float"
    assign $P105, 0
    set $I101, $P105
    set $P1075, $P1069
    unless_null $P1075, vivify_80
    $P1075 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    set $P106, $P1075[$I101]
    unless_null $P106, vivify_81
    new $P106, "Undef"
  vivify_81:
    $P107 = $P1074."push"($P106)
.annotate 'line', 17
    set $P104, $P107
  if_1072_end:
.annotate 'line', 15
    .return ($P104)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave" :anon :subid("19_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1083
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 34
    .lex "self", param_1083
.annotate 'line', 36

                $P0 = getinterp
                $P1084 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1084
.annotate 'line', 40
    new $P102, "Float"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 34
    .return ($P102)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_module" :anon :subid("20_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1088
    .param pmc param_1089
    .param pmc param_1090
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 43
    .const 'Sub' $P1112 = "23_1325892446.38" 
    capture_lex $P1112
    .const 'Sub' $P1105 = "22_1325892446.38" 
    capture_lex $P1105
    .const 'Sub' $P1097 = "21_1325892446.38" 
    capture_lex $P1097
    new $P1087, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1087, control_1086
    push_eh $P1087
    .lex "self", param_1088
    .lex "$module_name", param_1089
    .lex "$cur_GLOBALish", param_1090
.annotate 'line', 47
    new $P102, "Undef"
    set $P1091, $P102
    .lex "$module_ctx", $P1091
.annotate 'line', 48
    new $P103, "Undef"
    set $P1092, $P103
    .lex "$path", $P1092
.annotate 'line', 49
    $P1094 = root_new ['parrot';'ResizablePMCArray']
    set $P1093, $P1094
    .lex "@prefixes", $P1093
.annotate 'line', 43
    set $P104, $P1091
    unless_null $P104, vivify_93
    new $P104, "Undef"
  vivify_93:
.annotate 'line', 48
    set $P104, param_1089
    unless_null $P104, vivify_94
    new $P104, "Undef"
  vivify_94:
    set $S100, $P104
    split $P105, "::", $S100
    join $S101, "/", $P105
    new $P106, 'String'
    set $P106, $S101
    concat $P107, $P106, ".pbc"
    set $P1092, $P107
.annotate 'line', 49
    set $P104, param_1088
    nqp_decontainerize $P105, $P104
    $P106 = $P105."search_path"("module-path")
    set $P1093, $P106
.annotate 'line', 50
    set $P1095, $P1093
    unless_null $P1095, vivify_95
    $P1095 = root_new ['parrot';'ResizablePMCArray']
  vivify_95:
    defined $I100, $P1095
    unless $I100, for_undef_96
    iter $P104, $P1095
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1100_handler
    push_eh $P107
  loop1100_test:
    unless $P104, loop1100_done
    shift $P105, $P104
  loop1100_redo:
    .const 'Sub' $P1097 = "21_1325892446.38" 
    capture_lex $P1097
    $P1097($P105)
  loop1100_next:
    goto loop1100_test
  loop1100_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1100_next
    eq $P108, .CONTROL_LOOP_REDO, loop1100_redo
  loop1100_done:
    pop_eh 
  for_undef_96:
.annotate 'line', 56
    set $P104, $P1092
    unless_null $P104, vivify_101
    new $P104, "Undef"
  vivify_101:
    find_lex $P1102, "%modules_loaded"
    unless_null $P1102, vivify_102
    $P1102 = root_new ['parrot';'Hash']
  vivify_102:
    set $P105, $P1102[$P104]
    unless_null $P105, vivify_103
    new $P105, "Undef"
  vivify_103:
    defined $I100, $P105
    if $I100, if_1101
.annotate 'line', 59
    .const 'Sub' $P1105 = "22_1325892446.38" 
    capture_lex $P1105
    $P1105()
    goto if_1101_end
  if_1101:
.annotate 'line', 57
    set $P106, $P1092
    unless_null $P106, vivify_112
    new $P106, "Undef"
  vivify_112:
    find_lex $P1103, "%modules_loaded"
    unless_null $P1103, vivify_113
    $P1103 = root_new ['parrot';'Hash']
  vivify_113:
    set $P107, $P1103[$P106]
    unless_null $P107, vivify_114
    new $P107, "Undef"
  vivify_114:
    set $P1091, $P107
  if_1101_end:
.annotate 'line', 69
    set $P104, $P1091
    unless_null $P104, vivify_115
    new $P104, "Undef"
  vivify_115:
    defined $I100, $P104
    unless $I100, if_1110_end
    .const 'Sub' $P1112 = "23_1325892446.38" 
    capture_lex $P1112
    $P1112()
  if_1110_end:
.annotate 'line', 77
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    set $P105, $P1091
    unless_null $P105, vivify_122
    new $P105, "Undef"
  vivify_122:
    setattribute $P104, 'payload', $P105
    throw $P104
.annotate 'line', 43
    .return ()
  control_1086:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1096"  :anon :subid("21_1325892446.38") :outer("20_1325892446.38")
    .param pmc param_1098
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 50
    .lex "$prefix", param_1098
.annotate 'line', 51
    set $P107, param_1098
    unless_null $P107, vivify_97
    new $P107, "Undef"
  vivify_97:
    concat $P108, $P107, "/"
    find_lex $P109, "$path"
    unless_null $P109, vivify_98
    new $P109, "Undef"
  vivify_98:
    concat $P110, $P108, $P109
    set $S100, $P110
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    stat $I102, $S100, $I101
    if $I102, if_1099
    new $P106, 'Integer'
    set $P106, $I102
    goto if_1099_end
  if_1099:
.annotate 'line', 52
    set $P112, param_1098
    unless_null $P112, vivify_99
    new $P112, "Undef"
  vivify_99:
    concat $P113, $P112, "/"
    find_lex $P114, "$path"
    unless_null $P114, vivify_100
    new $P114, "Undef"
  vivify_100:
    concat $P115, $P113, $P114
    store_lex "$path", $P115
.annotate 'line', 53
    die 0, .CONTROL_LOOP_LAST
  if_1099_end:
.annotate 'line', 50
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1104"  :anon :subid("22_1325892446.38") :outer("20_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 60
    new $P106, "Undef"
    set $P1106, $P106
    .lex "$*CTXSAVE", $P1106
.annotate 'line', 61
    new $P107, "Undef"
    set $P1107, $P107
    .lex "$*MAIN_CTX", $P1107
.annotate 'line', 62
    new $P108, "Undef"
    set $P1108, $P108
    .lex "$preserve_global", $P1108
.annotate 'line', 60
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    set $P1106, $P110
.annotate 'line', 59
    set $P111, $P1107
    unless_null $P111, vivify_104
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_105
    die "Contextual $*MAIN_CTX not found"
  vivify_105:
  vivify_104:
.annotate 'line', 62
    get_hll_global $P109, "GLOBAL"
    set $P1108, $P109
.annotate 'line', 63
    find_lex $P109, "$path"
    unless_null $P109, vivify_106
    new $P109, "Undef"
  vivify_106:
    set $S100, $P109
    load_bytecode $S100
.annotate 'line', 64
    set $P109, $P1108
    unless_null $P109, vivify_107
    new $P109, "Undef"
  vivify_107:
    set_hll_global "GLOBAL", $P109
.annotate 'line', 65
    set $P111, $P1107
    unless_null $P111, vivify_108
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_109
    die "Contextual $*MAIN_CTX not found"
  vivify_109:
  vivify_108:
    store_lex "$module_ctx", $P111
    find_lex $P112, "$path"
    unless_null $P112, vivify_110
    new $P112, "Undef"
  vivify_110:
    find_lex $P1109, "%modules_loaded"
    unless_null $P1109, vivify_111
    $P1109 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1109
  vivify_111:
    set $P1109[$P112], $P111
.annotate 'line', 59
    .return ($P111)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1111"  :anon :subid("23_1325892446.38") :outer("20_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 71
    new $P105, "Undef"
    set $P1113, $P105
    .lex "$UNIT", $P1113
    find_lex $P106, "$module_ctx"
    unless_null $P106, vivify_116
    new $P106, "Undef"
  vivify_116:
    getattribute $P107, $P106, "lex_pad"
    set $P1113, $P107
.annotate 'line', 72
    set $P1115, $P1113
    unless_null $P1115, vivify_117
    $P1115 = root_new ['parrot';'Hash']
  vivify_117:
    set $P107, $P1115["GLOBALish"]
    unless_null $P107, vivify_118
    new $P107, "Undef"
  vivify_118:
    isnull $I101, $P107
    unless $I101, unless_1114
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 73
    find_lex $P108, "$cur_GLOBALish"
    unless_null $P108, vivify_119
    new $P108, "Undef"
  vivify_119:
    set $P1116, $P1113
    unless_null $P1116, vivify_120
    $P1116 = root_new ['parrot';'Hash']
  vivify_120:
    set $P109, $P1116["GLOBALish"]
    unless_null $P109, vivify_121
    new $P109, "Undef"
  vivify_121:
    $P110 = "merge_globals"($P108, $P109)
.annotate 'line', 72
    set $P106, $P110
  unless_1114_end:
.annotate 'line', 69
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting" :anon :subid("24_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1120
    .param pmc param_1121
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 118
    .const 'Sub' $P1125 = "25_1325892446.38" 
    capture_lex $P1125
    new $P1119, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1119, control_1118
    push_eh $P1119
    .lex "self", param_1120
    .lex "$setting_name", param_1121
.annotate 'line', 119
    new $P102, "Undef"
    set $P1122, $P102
    .lex "$setting", $P1122
.annotate 'line', 118
    set $P103, $P1122
    unless_null $P103, vivify_123
    new $P103, "Undef"
  vivify_123:
.annotate 'line', 121
    set $P103, param_1121
    unless_null $P103, vivify_124
    new $P103, "Undef"
  vivify_124:
    set $S100, $P103
    isne $I100, $S100, "NULL"
    unless $I100, if_1123_end
    .const 'Sub' $P1125 = "25_1325892446.38" 
    capture_lex $P1125
    $P1125()
  if_1123_end:
.annotate 'line', 148
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    set $P104, $P1122
    unless_null $P104, vivify_149
    new $P104, "Undef"
  vivify_149:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 118
    .return ()
  control_1118:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1124"  :anon :subid("25_1325892446.38") :outer("24_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 121
    .const 'Sub' $P1138 = "27_1325892446.38" 
    capture_lex $P1138
    .const 'Sub' $P1131 = "26_1325892446.38" 
    capture_lex $P1131
.annotate 'line', 123
    new $P104, "Undef"
    set $P1126, $P104
    .lex "$path", $P1126
.annotate 'line', 124
    $P1128 = root_new ['parrot';'ResizablePMCArray']
    set $P1127, $P1128
    .lex "@prefixes", $P1127
.annotate 'line', 123
    find_lex $P105, "$setting_name"
    unless_null $P105, vivify_125
    new $P105, "Undef"
  vivify_125:
    concat $P106, $P105, ".setting.pbc"
    set $P1126, $P106
.annotate 'line', 124
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    $P107 = $P106."search_path"("setting-path")
    set $P1127, $P107
.annotate 'line', 125
    set $P1129, $P1127
    unless_null $P1129, vivify_126
    $P1129 = root_new ['parrot';'ResizablePMCArray']
  vivify_126:
    defined $I101, $P1129
    unless $I101, for_undef_127
    iter $P105, $P1129
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1134_handler
    push_eh $P108
  loop1134_test:
    unless $P105, loop1134_done
    shift $P106, $P105
  loop1134_redo:
    .const 'Sub' $P1131 = "26_1325892446.38" 
    capture_lex $P1131
    $P1131($P106)
  loop1134_next:
    goto loop1134_test
  loop1134_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1134_next
    eq $P109, .CONTROL_LOOP_REDO, loop1134_redo
  loop1134_done:
    pop_eh 
  for_undef_127:
.annotate 'line', 133
    set $P105, $P1126
    unless_null $P105, vivify_132
    new $P105, "Undef"
  vivify_132:
    find_lex $P1136, "%settings_loaded"
    unless_null $P1136, vivify_133
    $P1136 = root_new ['parrot';'Hash']
  vivify_133:
    set $P106, $P1136[$P105]
    unless_null $P106, vivify_134
    new $P106, "Undef"
  vivify_134:
    defined $I101, $P106
    if $I101, unless_1135_end
    .const 'Sub' $P1138 = "27_1325892446.38" 
    capture_lex $P1138
    $P1138()
  unless_1135_end:
.annotate 'line', 145
    set $P105, $P1126
    unless_null $P105, vivify_146
    new $P105, "Undef"
  vivify_146:
    find_lex $P1144, "%settings_loaded"
    unless_null $P1144, vivify_147
    $P1144 = root_new ['parrot';'Hash']
  vivify_147:
    set $P106, $P1144[$P105]
    unless_null $P106, vivify_148
    new $P106, "Undef"
  vivify_148:
    store_lex "$setting", $P106
.annotate 'line', 121
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1130"  :anon :subid("26_1325892446.38") :outer("25_1325892446.38")
    .param pmc param_1132
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 125
    .lex "$prefix", param_1132
.annotate 'line', 126
    set $P108, param_1132
    unless_null $P108, vivify_128
    new $P108, "Undef"
  vivify_128:
    concat $P109, $P108, "/"
    find_lex $P110, "$path"
    unless_null $P110, vivify_129
    new $P110, "Undef"
  vivify_129:
    concat $P111, $P109, $P110
    set $S101, $P111
    new $P112, "Float"
    assign $P112, 0
    set $I102, $P112
    stat $I103, $S101, $I102
    if $I103, if_1133
    new $P107, 'Integer'
    set $P107, $I103
    goto if_1133_end
  if_1133:
.annotate 'line', 127
    set $P113, param_1132
    unless_null $P113, vivify_130
    new $P113, "Undef"
  vivify_130:
    concat $P114, $P113, "/"
    find_lex $P115, "$path"
    unless_null $P115, vivify_131
    new $P115, "Undef"
  vivify_131:
    concat $P116, $P114, $P115
    store_lex "$path", $P116
.annotate 'line', 128
    die 0, .CONTROL_LOOP_LAST
  if_1133_end:
.annotate 'line', 125
    .return ($P107)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1137"  :anon :subid("27_1325892446.38") :outer("25_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 134
    new $P107, "Undef"
    set $P1139, $P107
    .lex "$*CTXSAVE", $P1139
.annotate 'line', 135
    new $P108, "Undef"
    set $P1140, $P108
    .lex "$*MAIN_CTX", $P1140
.annotate 'line', 136
    new $P109, "Undef"
    set $P1141, $P109
    .lex "$preserve_global", $P1141
.annotate 'line', 134
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    set $P1139, $P111
.annotate 'line', 133
    set $P112, $P1140
    unless_null $P112, vivify_135
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_136
    die "Contextual $*MAIN_CTX not found"
  vivify_136:
  vivify_135:
.annotate 'line', 136
    get_hll_global $P110, "GLOBAL"
    set $P1141, $P110
.annotate 'line', 137
    find_lex $P110, "$path"
    unless_null $P110, vivify_137
    new $P110, "Undef"
  vivify_137:
    set $S101, $P110
    load_bytecode $S101
.annotate 'line', 138
    set $P110, $P1141
    unless_null $P110, vivify_138
    new $P110, "Undef"
  vivify_138:
    set_hll_global "GLOBAL", $P110
.annotate 'line', 139
    set $P112, $P1140
    unless_null $P112, vivify_139
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_140
    die "Contextual $*MAIN_CTX not found"
  vivify_140:
  vivify_139:
    defined $I102, $P112
    if $I102, unless_1142_end
.annotate 'line', 140
    new $P113, 'String'
    set $P113, "Unable to load setting "
    find_lex $P114, "$setting_name"
    unless_null $P114, vivify_141
    new $P114, "Undef"
  vivify_141:
    concat $P115, $P113, $P114
    concat $P116, $P115, "; maybe it is missing a YOU_ARE_HERE?"
    die $P116
  unless_1142_end:
.annotate 'line', 142
    set $P112, $P1140
    unless_null $P112, vivify_142
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_143
    die "Contextual $*MAIN_CTX not found"
  vivify_143:
  vivify_142:
    find_lex $P113, "$path"
    unless_null $P113, vivify_144
    new $P113, "Undef"
  vivify_144:
    find_lex $P1143, "%settings_loaded"
    unless_null $P1143, vivify_145
    $P1143 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P1143
  vivify_145:
    set $P1143[$P113], $P112
.annotate 'line', 133
    .return ($P112)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module" :anon :subid("28_1325892446.38") :outer("11_1325892446.38")
    .param pmc param_1146
    .param pmc param_1147
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 153
    .lex "self", param_1146
    .lex "$mainline_ctx", param_1147
.annotate 'line', 156
    new $P102, "Undef"
    set $P1148, $P102
    .lex "$module_name", $P1148
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    new $P104, "Float"
    assign $P104, 2
    set $I101, $P104
    getinterp $P105
    set $P1149, $P105[$I101]
    unless_null $P1149, vivify_150
    $P1149 = root_new ['parrot';'ResizablePMCArray']
  vivify_150:
    set $P106, $P1149[$I100]
    unless_null $P106, vivify_151
    new $P106, "Undef"
  vivify_151:
    set $P1148, $P106
.annotate 'line', 157
    set $P103, $P1148
    unless_null $P103, vivify_152
    new $P103, "Undef"
  vivify_152:
    set $S100, $P103
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    new $P105, "Float"
    assign $P105, 2
    set $I101, $P105
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "./"
    unless $I102, if_1150_end
.annotate 'line', 158
    set $P106, $P1148
    unless_null $P106, vivify_153
    new $P106, "Undef"
  vivify_153:
    set $S102, $P106
    new $P107, "Float"
    assign $P107, 2
    set $I103, $P107
    set $P108, $P1148
    unless_null $P108, vivify_154
    new $P108, "Undef"
  vivify_154:
    set $S103, $P108
    length $I104, $S103
    new $P109, 'Integer'
    set $P109, $I104
    sub $P110, $P109, 2
    set $I105, $P110
    substr $S104, $S102, $I103, $I105
    new $P111, 'String'
    set $P111, $S104
    set $P1148, $P111
  if_1150_end:
.annotate 'line', 160
    set $P103, $P1148
    unless_null $P103, vivify_155
    new $P103, "Undef"
  vivify_155:
    set $S100, $P103
    set $P104, $P1148
    unless_null $P104, vivify_156
    new $P104, "Undef"
  vivify_156:
    set $S101, $P104
    length $I100, $S101
    new $P105, 'Integer'
    set $P105, $I100
    sub $P106, $P105, 4
    set $I101, $P106
    new $P107, "Float"
    assign $P107, 4
    set $I102, $P107
    substr $S102, $S100, $I101, $I102
    iseq $I103, $S102, ".pbc"
    if $I103, if_1151
.annotate 'line', 163
    set $P108, $P1148
    unless_null $P108, vivify_157
    new $P108, "Undef"
  vivify_157:
    set $S103, $P108
    set $P109, $P1148
    unless_null $P109, vivify_158
    new $P109, "Undef"
  vivify_158:
    set $S104, $P109
    length $I104, $S104
    new $P110, 'Integer'
    set $P110, $I104
    sub $P111, $P110, 4
    set $I105, $P111
    new $P112, "Float"
    assign $P112, 4
    set $I106, $P112
    substr $S105, $S103, $I105, $I106
    iseq $I107, $S105, ".exe"
    if $I107, if_1152
.annotate 'line', 168
    set $P113, $P1148
    unless_null $P113, vivify_159
    new $P113, "Undef"
  vivify_159:
    concat $P114, $P113, ".pbc"
    set $P1148, $P114
.annotate 'line', 167
    goto if_1152_end
  if_1152:
.annotate 'line', 165
    set $P113, $P1148
    unless_null $P113, vivify_160
    new $P113, "Undef"
  vivify_160:
    set $S106, $P113
    new $P114, "Float"
    assign $P114, 0
    set $I108, $P114
    set $P115, $P1148
    unless_null $P115, vivify_161
    new $P115, "Undef"
  vivify_161:
    set $S107, $P115
    length $I109, $S107
    new $P116, 'Integer'
    set $P116, $I109
    sub $P117, $P116, 3
    set $I110, $P117
    substr $S108, $S106, $I108, $I110
    new $P118, 'String'
    set $P118, $S108
    concat $P119, $P118, "pbc"
    set $P1148, $P119
  if_1152_end:
.annotate 'line', 163
    goto if_1151_end
  if_1151:
  if_1151_end:
.annotate 'line', 172
    set $P103, param_1147
    unless_null $P103, vivify_162
    new $P103, "Undef"
  vivify_162:
    set $P104, $P1148
    unless_null $P104, vivify_163
    new $P104, "Undef"
  vivify_163:
    find_lex $P1153, "%modules_loaded"
    unless_null $P1153, vivify_164
    $P1153 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1153
  vivify_164:
    set $P1153[$P104], $P103
.annotate 'line', 153
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "_block1156" :load :anon :subid("29_1325892446.38")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const '' $P1158 = "10_1325892446.38" 
    $P106 = $P1158()
    .return ($P106)
.end

