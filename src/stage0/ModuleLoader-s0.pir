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
.sub "_block1000"  :anon :subid("15_1339198191.422")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1193 = "34_1339198191.422" 
    capture_lex $P1193
    .const 'Sub' $P1007 = "16_1339198191.422" 
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
    .const 'Sub' $P1007 = "16_1339198191.422" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 200
    set $P100, $P1005
    set_hll_global "ModuleLoader", $P100
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_1188
    set $P100, $P101
    goto if_1188_end
  if_1188:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_1188_end:
    .return ($P100)
    .const 'Sub' $P1190 = "33_1339198191.422" 
    .return ($P1190)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post35") :outer("15_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "15_1339198191.422" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src\\ModuleLoader.pm")
    set $S100, "AQAAAEAAAAABAAAASAAAAAIAAABYAAAA4AEAAAQAAAAgAgAAhgIAAAAAAACGAgAAAAAAAIYCAACGAgAAAAAAAAkAAAAAAAAAAQAAAAAAAAADAAAAqAAAAAAAAAACAAAAAAAAAAAAAAAKAAEAAAACAAAAAgAAAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAADAAAAAAAAAAEAAAAKAAAAAAAKAAUAAAAEAAAACwAAAAAAAAAAAAUAAAALAAAAAAABAAAABgAAAAsAAAAAAAIAAAAHAAAACwAAAAAAAwAAAAgAAAALAAAAAAAEAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAoAAAAHAAAAAAAKAAAAAAALAAAABwAAAAAACgAFAAAADAAAAAsAAAAAAAAAAAANAAAACwAAAAAAAQAAAA4AAAALAAAAAAACAAAADwAAAAsAAAAAAAMAAAAQAAAACwAAAAAABAAAAA=="
    new $P111, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P111
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "ModuleLoader"
    push string_heap, "P6opaque"
    push string_heap, "search_path"
    push string_heap, "ctxsave"
    push string_heap, "load_module"
    push string_heap, "load_setting"
    push string_heap, "set_mainline_module"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "ModuleLoader"
    push string_heap, "search_path"
    push string_heap, "ctxsave"
    push string_heap, "load_module"
    push string_heap, "load_setting"
    push string_heap, "set_mainline_module"
    .const 'Sub' $P1193 = "34_1339198191.422" 
    capture_lex $P1193
    $P113 = $P1193()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P1199 = "15_1339198191.422" 
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 0
    $P1199."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P1200 = "15_1339198191.422" 
    $P1200."finish_static_lexpad"()
    .const 'LexInfo' $P1201 = "15_1339198191.422" 
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 0
    $P1201."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1202 = "15_1339198191.422" 
    $P1202."finish_static_lexpad"()
    .const 'LexInfo' $P1203 = "15_1339198191.422" 
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 1
    $P1203."set_static_lexpad_value"("ModuleLoader", $P114)
    .const 'LexInfo' $P1204 = "15_1339198191.422" 
    $P1204."finish_static_lexpad"()
    .const 'LexInfo' $P1205 = "16_1339198191.422" 
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 1
    $P1205."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1206 = "16_1339198191.422" 
    $P1206."finish_static_lexpad"()
    .const 'LexInfo' $P1207 = "16_1339198191.422" 
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 1
    $P1207."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1208 = "16_1339198191.422" 
    $P1208."finish_static_lexpad"()
    nqp_get_sc_object $P114, "F57AE1380887C84191CE5EFA4367ABA391199C08-1339198191.344", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block1192"  :anon :subid("34_1339198191.422") :outer("15_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1194 = "10_1339198191.422" 
    .const 'Sub' $P1195 = "11_1339198191.422" 
    .const 'Sub' $P1196 = "12_1339198191.422" 
    .const 'Sub' $P1197 = "13_1339198191.422" 
    .const 'Sub' $P1198 = "14_1339198191.422" 
    new $P112, "ResizablePMCArray"
    push $P112, $P1194
    push $P112, $P1195
    push $P112, $P1196
    push $P112, $P1197
    push $P112, $P1198
    .return ($P112)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1006"  :subid("16_1339198191.422") :outer("15_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P1178 = "14_1339198191.422" 
    capture_lex $P1178
    .const 'Sub' $P1150 = "13_1339198191.422" 
    capture_lex $P1150
    .const 'Sub' $P1115 = "12_1339198191.422" 
    capture_lex $P1115
    .const 'Sub' $P1112 = "11_1339198191.422" 
    capture_lex $P1112
    .const 'Sub' $P1076 = "10_1339198191.422" 
    capture_lex $P1076
    .const 'Sub' $P1014 = "17_1339198191.422" 
    capture_lex $P1014
.annotate 'line', 2
    $P1009 = root_new ['parrot';'Hash']
    set $P1008, $P1009
    .lex "%modules_loaded", $P1008
.annotate 'line', 3
    $P1011 = root_new ['parrot';'Hash']
    set $P1010, $P1011
    .lex "%settings_loaded", $P1010
.annotate 'line', 87
    new $P100, "Undef"
    set $P1012, $P100
    .lex "$stub_how", $P1012
.annotate 'line', 88
    .const 'Sub' $P1014 = "17_1339198191.422" 
    newclosure $P1071, $P1014
    set $P1013, $P1071
    .lex "merge_globals", $P1013
.annotate 'line', 87
    .lex "$?PACKAGE", $P1072
    .lex "$?CLASS", $P1073
.annotate 'line', 1
    set $P1074, $P1008
    unless_null $P1074, vivify_97
    $P1074 = root_new ['parrot';'Hash']
  vivify_97:
    set $P1075, $P1010
    unless_null $P1075, vivify_98
    $P1075 = root_new ['parrot';'Hash']
  vivify_98:
.annotate 'line', 87
    new $P102, "String"
    assign $P102, "KnowHOW"
    set $P1012, $P102
.annotate 'line', 1
    set $P102, $P1013
.annotate 'line', 175
    .const 'Sub' $P1178 = "14_1339198191.422" 
    newclosure $P1187, $P1178
.annotate 'line', 1
    .return ($P1187)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("17_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1015
    .param pmc param_1016
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 88
    .const 'Sub' $P1026 = "19_1339198191.422" 
    capture_lex $P1026
    .const 'Sub' $P1021 = "18_1339198191.422" 
    capture_lex $P1021
    .lex "$target", param_1015
    .lex "$source", param_1016
.annotate 'line', 92
    $P1018 = root_new ['parrot';'Hash']
    set $P1017, $P1018
    .lex "%known_symbols", $P1017
.annotate 'line', 88
    set $P1019, $P1017
    unless_null $P1019, vivify_36
    $P1019 = root_new ['parrot';'Hash']
  vivify_36:
.annotate 'line', 93
    set $P102, param_1015
    unless_null $P102, vivify_37
    new $P102, "Undef"
  vivify_37:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_38
    iter $P101, $P103
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1024_handler
    push_eh $P106
  loop1024_test:
    unless $P101, loop1024_done
    shift $P104, $P101
  loop1024_redo:
    .const 'Sub' $P1021 = "18_1339198191.422" 
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
  for_undef_38:
.annotate 'line', 96
    set $P102, param_1016
    unless_null $P102, vivify_41
    new $P102, "Undef"
  vivify_41:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_42
    iter $P101, $P103
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1070_handler
    push_eh $P107
  loop1070_test:
    unless $P101, loop1070_done
    shift $P104, $P101
  loop1070_redo:
    .const 'Sub' $P1026 = "19_1339198191.422" 
    capture_lex $P1026
    $P1026($P104)
  loop1070_next:
    goto loop1070_test
  loop1070_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1070_next
    eq $P108, .CONTROL_LOOP_REDO, loop1070_redo
  loop1070_done:
    pop_eh 
  for_undef_42:
.annotate 'line', 88
    .return ($P101)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1020"  :anon :subid("18_1339198191.422") :outer("17_1339198191.422")
    .param pmc param_1022
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 93
    .lex "$_", param_1022
.annotate 'line', 94
    new $P105, "Float"
    assign $P105, 1
    find_lex $P106, "$_"
    unless_null $P106, vivify_39
    new $P106, "Undef"
  vivify_39:
    $P107 = $P106."key"()
    find_lex $P1023, "%known_symbols"
    unless_null $P1023, vivify_40
    $P1023 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P1023
  vivify_40:
    set $P1023[$P107], $P105
.annotate 'line', 93
    .return ($P105)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1025"  :anon :subid("19_1339198191.422") :outer("17_1339198191.422")
    .param pmc param_1028
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 96
    .const 'Sub' $P1063 = "24_1339198191.422" 
    capture_lex $P1063
    .const 'Sub' $P1032 = "20_1339198191.422" 
    capture_lex $P1032
.annotate 'line', 97
    new $P105, "Undef"
    set $P1027, $P105
    .lex "$sym", $P1027
    .lex "$_", param_1028
    find_lex $P106, "$_"
    unless_null $P106, vivify_43
    new $P106, "Undef"
  vivify_43:
    $P107 = $P106."key"()
    set $P1027, $P107
.annotate 'line', 98
    set $P107, $P1027
    unless_null $P107, vivify_44
    new $P107, "Undef"
  vivify_44:
    find_lex $P1030, "%known_symbols"
    unless_null $P1030, vivify_45
    $P1030 = root_new ['parrot';'Hash']
  vivify_45:
    set $P108, $P1030[$P107]
    unless_null $P108, vivify_46
    new $P108, "Undef"
  vivify_46:
    isfalse $I101, $P108
    if $I101, if_1029
.annotate 'line', 121
    set $P113, $P1027
    unless_null $P113, vivify_47
    new $P113, "Undef"
  vivify_47:
    find_lex $P114, "$target"
    unless_null $P114, vivify_48
    new $P114, "Undef"
  vivify_48:
    get_who $P115, $P114
    set $P116, $P115[$P113]
    unless_null $P116, vivify_49
    new $P116, "Undef"
  vivify_49:
    find_lex $P117, "$_"
    unless_null $P117, vivify_50
    new $P117, "Undef"
  vivify_50:
    $P118 = $P117."value"()
    issame $I102, $P116, $P118
    if $I102, if_1061
.annotate 'line', 124
    .const 'Sub' $P1063 = "24_1339198191.422" 
    capture_lex $P1063
    $P124 = $P1063()
    set $P112, $P124
.annotate 'line', 121
    goto if_1061_end
  if_1061:
  if_1061_end:
    set $P106, $P112
.annotate 'line', 98
    goto if_1029_end
  if_1029:
    .const 'Sub' $P1032 = "20_1339198191.422" 
    capture_lex $P1032
    $P111 = $P1032()
    set $P106, $P111
  if_1029_end:
.annotate 'line', 96
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1062"  :anon :subid("24_1339198191.422") :outer("19_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 125
    new $P119, "Undef"
    set $P1064, $P119
    .lex "$source_mo", $P1064
.annotate 'line', 126
    new $P120, "Undef"
    set $P1065, $P120
    .lex "$source_is_stub", $P1065
.annotate 'line', 127
    new $P121, "Undef"
    set $P1066, $P121
    .lex "$target_mo", $P1066
.annotate 'line', 128
    new $P122, "Undef"
    set $P1067, $P122
    .lex "$target_is_stub", $P1067
.annotate 'line', 125
    find_lex $P123, "$_"
    unless_null $P123, vivify_51
    new $P123, "Undef"
  vivify_51:
    $P124 = $P123."value"()
    get_how $P125, $P124
    set $P1064, $P125
.annotate 'line', 126
    set $P123, $P1064
    unless_null $P123, vivify_52
    new $P123, "Undef"
  vivify_52:
    get_what $P124, $P123
    get_how $P125, $P124
    set $P126, $P1064
    unless_null $P126, vivify_53
    new $P126, "Undef"
  vivify_53:
    $S100 = $P125."name"($P126)
    find_lex $P127, "$stub_how"
    unless_null $P127, vivify_54
    new $P127, "Undef"
  vivify_54:
    set $S101, $P127
    iseq $I103, $S100, $S101
    new $P128, 'Integer'
    set $P128, $I103
    set $P1065, $P128
.annotate 'line', 127
    find_lex $P123, "$sym"
    unless_null $P123, vivify_55
    new $P123, "Undef"
  vivify_55:
    find_lex $P124, "$target"
    unless_null $P124, vivify_56
    new $P124, "Undef"
  vivify_56:
    get_who $P125, $P124
    set $P126, $P125[$P123]
    unless_null $P126, vivify_57
    new $P126, "Undef"
  vivify_57:
    get_how $P127, $P126
    set $P1066, $P127
.annotate 'line', 128
    set $P123, $P1066
    unless_null $P123, vivify_58
    new $P123, "Undef"
  vivify_58:
    get_what $P124, $P123
    get_how $P125, $P124
    set $P126, $P1066
    unless_null $P126, vivify_59
    new $P126, "Undef"
  vivify_59:
    $S100 = $P125."name"($P126)
    find_lex $P127, "$stub_how"
    unless_null $P127, vivify_60
    new $P127, "Undef"
  vivify_60:
    set $S101, $P127
    iseq $I103, $S100, $S101
    new $P128, 'Integer'
    set $P128, $I103
    set $P1067, $P128
.annotate 'line', 129
    set $P125, $P1065
    unless_null $P125, vivify_61
    new $P125, "Undef"
  vivify_61:
    if $P125, if_1069
    set $P124, $P125
    goto if_1069_end
  if_1069:
    set $P126, $P1067
    unless_null $P126, vivify_62
    new $P126, "Undef"
  vivify_62:
    set $P124, $P126
  if_1069_end:
    if $P124, if_1068
.annotate 'line', 134
    new $P127, 'String'
    set $P127, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P128, "$sym"
    unless_null $P128, vivify_63
    new $P128, "Undef"
  vivify_63:
    concat $P129, $P127, $P128
    die $P129
.annotate 'line', 133
    goto if_1068_end
  if_1068:
.annotate 'line', 131
    find_lex $P127, "$sym"
    unless_null $P127, vivify_64
    new $P127, "Undef"
  vivify_64:
    find_lex $P128, "$target"
    unless_null $P128, vivify_65
    new $P128, "Undef"
  vivify_65:
    get_who $P129, $P128
    set $P130, $P129[$P127]
    unless_null $P130, vivify_66
    new $P130, "Undef"
  vivify_66:
    find_lex $P131, "$_"
    unless_null $P131, vivify_67
    new $P131, "Undef"
  vivify_67:
    $P132 = $P131."value"()
    $P133 = "merge_globals"($P130, $P132)
.annotate 'line', 129
    set $P123, $P133
  if_1068_end:
.annotate 'line', 124
    .return ($P123)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1031"  :anon :subid("20_1339198191.422") :outer("19_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 98
    .const 'Sub' $P1049 = "22_1339198191.422" 
    capture_lex $P1049
    .const 'Sub' $P1035 = "21_1339198191.422" 
    capture_lex $P1035
.annotate 'line', 99
    new $P109, "Undef"
    set $P1033, $P109
    .lex "$source_is_stub", $P1033
    new $P110, "Float"
    assign $P110, 0
    set $P1033, $P110
.annotate 'line', 100
    .const 'Sub' $P1035 = "21_1339198191.422" 
    capture_lex $P1035
    $P1035()
.annotate 'line', 106
    set $P111, $P1033
    unless_null $P111, vivify_76
    new $P111, "Undef"
  vivify_76:
    if $P111, if_1047
.annotate 'line', 118
    find_lex $P116, "$_"
    unless_null $P116, vivify_77
    new $P116, "Undef"
  vivify_77:
    $P117 = $P116."value"()
    find_lex $P118, "$sym"
    unless_null $P118, vivify_78
    new $P118, "Undef"
  vivify_78:
    find_lex $P119, "$target"
    unless_null $P119, vivify_79
    new $P119, "Undef"
    store_lex "$target", $P119
  vivify_79:
    get_who $P120, $P119
    set $P120[$P118], $P117
.annotate 'line', 117
    set $P110, $P117
.annotate 'line', 106
    goto if_1047_end
  if_1047:
    .const 'Sub' $P1049 = "22_1339198191.422" 
    capture_lex $P1049
    $P115 = $P1049()
    set $P110, $P115
  if_1047_end:
.annotate 'line', 98
    .return ($P110)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1034"  :anon :subid("21_1339198191.422") :outer("20_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 100
    new $P1042, 'ExceptionHandler'
    set_label $P1042, control_1041
    $P1042."handle_types_except"(.CONTROL_ALL)
    push_eh $P1042
.annotate 'line', 101
    new $P110, "Undef"
    set $P1036, $P110
    .lex "$source_mo", $P1036
    find_lex $P111, "$_"
    unless_null $P111, vivify_68
    new $P111, "Undef"
  vivify_68:
    $P112 = $P111."value"()
    get_how $P113, $P112
    set $P1036, $P113
.annotate 'line', 102
    set $P114, $P1036
    unless_null $P114, vivify_69
    new $P114, "Undef"
  vivify_69:
    get_what $P115, $P114
    get_how $P116, $P115
    set $P117, $P1036
    unless_null $P117, vivify_70
    new $P117, "Undef"
  vivify_70:
    $S100 = $P116."name"($P117)
    find_lex $P118, "$stub_how"
    unless_null $P118, vivify_71
    new $P118, "Undef"
  vivify_71:
    set $S101, $P118
    iseq $I102, $S100, $S101
    if $I102, if_1039
    new $P113, 'Integer'
    set $P113, $I102
    goto if_1039_end
  if_1039:
.annotate 'line', 103
    find_lex $P119, "$_"
    unless_null $P119, vivify_72
    new $P119, "Undef"
  vivify_72:
    $P120 = $P119."value"()
    get_who $P121, $P120
    isnull $I103, $P121
    new $P122, 'Integer'
    set $P122, $I103
    isfalse $I104, $P122
    new $P113, 'Integer'
    set $P113, $I104
  if_1039_end:
.annotate 'line', 102
    if $P113, if_1038
    set $P112, $P113
    goto if_1038_end
  if_1038:
.annotate 'line', 103
    find_lex $P123, "$_"
    unless_null $P123, vivify_73
    new $P123, "Undef"
  vivify_73:
    $P124 = $P123."value"()
    get_who $P125, $P124
    set $P112, $P125
  if_1038_end:
    if $P112, if_1037
    set $P111, $P112
    goto if_1037_end
  if_1037:
.annotate 'line', 104
    find_lex $P126, "$_"
    unless_null $P126, vivify_74
    new $P126, "Undef"
  vivify_74:
    $P127 = $P126."value"()
    get_how $P128, $P127
    find_lex $P129, "$_"
    unless_null $P129, vivify_75
    new $P129, "Undef"
  vivify_75:
    $P130 = $P129."value"()
    $S102 = $P128."name"($P130)
    isne $I105, $S102, "PAST"
    new $P111, 'Integer'
    set $P111, $I105
  if_1037_end:
.annotate 'line', 103
    store_lex "$source_is_stub", $P111
.annotate 'line', 100
    pop_eh 
    goto skip_handler_1040
  control_1041:
    peek_exception $P1043
    .local pmc exception 
    .get_results (exception) 
    new $P1045, 'Integer'
    set $P1045, 1
    set exception["handled"], $P1045
    set $I1046, exception["handled"]
    eq $I1046, 1, handled_1044
    rethrow exception
  handled_1044:
    finalize $P1043
    .return (exception)
  skip_handler_1040:
    .return ($P111)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1048"  :anon :subid("22_1339198191.422") :outer("20_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 106
    .const 'Sub' $P1056 = "23_1339198191.422" 
    capture_lex $P1056
.annotate 'line', 107
    new $P112, "Undef"
    set $P1050, $P112
    .lex "$source", $P1050
.annotate 'line', 108
    new $P113, "Undef"
    set $P1051, $P113
    .lex "$source_clone", $P1051
.annotate 'line', 110
    $P1053 = root_new ['parrot';'Hash']
    set $P1052, $P1053
    .lex "%WHO_clone", $P1052
.annotate 'line', 107
    find_lex $P114, "$_"
    unless_null $P114, vivify_80
    new $P114, "Undef"
  vivify_80:
    $P115 = $P114."value"()
    set $P1050, $P115
.annotate 'line', 108
    set $P114, $P1050
    unless_null $P114, vivify_81
    new $P114, "Undef"
  vivify_81:
    get_how $P115, $P114
    set $P116, $P1050
    unless_null $P116, vivify_82
    new $P116, "Undef"
  vivify_82:
    get_how $P117, $P116
    set $P118, $P1050
    unless_null $P118, vivify_83
    new $P118, "Undef"
  vivify_83:
    $P119 = $P117."name"($P118)
    $P120 = $P115."new_type"($P119 :named("name"))
    set $P1051, $P120
.annotate 'line', 109
    set $P114, $P1051
    unless_null $P114, vivify_84
    new $P114, "Undef"
  vivify_84:
    get_how $P115, $P114
    set $P116, $P1051
    unless_null $P116, vivify_85
    new $P116, "Undef"
  vivify_85:
    $P115."compose"($P116)
.annotate 'line', 106
    set $P1054, $P1052
    unless_null $P1054, vivify_86
    $P1054 = root_new ['parrot';'Hash']
  vivify_86:
.annotate 'line', 111
    set $P115, $P1050
    unless_null $P115, vivify_87
    new $P115, "Undef"
  vivify_87:
    get_who $P116, $P115
    defined $I102, $P116
    unless $I102, for_undef_88
    iter $P114, $P116
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1059_handler
    push_eh $P118
  loop1059_test:
    unless $P114, loop1059_done
    shift $P117, $P114
  loop1059_redo:
    .const 'Sub' $P1056 = "23_1339198191.422" 
    capture_lex $P1056
    $P1056($P117)
  loop1059_next:
    goto loop1059_test
  loop1059_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1059_next
    eq $P120, .CONTROL_LOOP_REDO, loop1059_redo
  loop1059_done:
    pop_eh 
  for_undef_88:
.annotate 'line', 114
    set $P114, $P1051
    unless_null $P114, vivify_92
    new $P114, "Undef"
  vivify_92:
    set $P1060, $P1052
    unless_null $P1060, vivify_93
    $P1060 = root_new ['parrot';'Hash']
  vivify_93:
    set_who $P114, $P1060
.annotate 'line', 115
    set $P114, $P1051
    unless_null $P114, vivify_94
    new $P114, "Undef"
  vivify_94:
    find_lex $P115, "$sym"
    unless_null $P115, vivify_95
    new $P115, "Undef"
  vivify_95:
    find_lex $P116, "$target"
    unless_null $P116, vivify_96
    new $P116, "Undef"
    store_lex "$target", $P116
  vivify_96:
    get_who $P117, $P116
    set $P117[$P115], $P114
.annotate 'line', 106
    .return ($P114)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1055"  :anon :subid("23_1339198191.422") :outer("22_1339198191.422")
    .param pmc param_1057
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 111
    .lex "$_", param_1057
.annotate 'line', 112
    find_lex $P118, "$_"
    unless_null $P118, vivify_89
    new $P118, "Undef"
  vivify_89:
    $P119 = $P118."value"()
    find_lex $P120, "$_"
    unless_null $P120, vivify_90
    new $P120, "Undef"
  vivify_90:
    $P121 = $P120."key"()
    find_lex $P1058, "%WHO_clone"
    unless_null $P1058, vivify_91
    $P1058 = root_new ['parrot';'Hash']
    store_lex "%WHO_clone", $P1058
  vivify_91:
    set $P1058[$P121], $P119
.annotate 'line', 111
    .return ($P119)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "search_path" :anon :subid("10_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1077
    .param pmc param_1078
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 5
    .const 'Sub' $P1098 = "26_1339198191.422" 
    capture_lex $P1098
    .const 'Sub' $P1086 = "25_1339198191.422" 
    capture_lex $P1086
    .lex "self", param_1077
    .lex "$explicit_path", param_1078
.annotate 'line', 6
    $P1080 = root_new ['parrot';'ResizablePMCArray']
    set $P1079, $P1080
    .lex "@search_paths", $P1079
.annotate 'line', 10
    new $P102, "Undef"
    set $P1081, $P102
    .lex "$explicit", $P1081
.annotate 'line', 27
    $P1083 = root_new ['parrot';'Hash']
    set $P1082, $P1083
    .lex "%conf", $P1082
.annotate 'line', 5
    set $P1084, $P1079
    unless_null $P1084, vivify_99
    $P1084 = root_new ['parrot';'ResizablePMCArray']
  vivify_99:
    set $P103, $P1081
    unless_null $P103, vivify_100
    new $P103, "Undef"
  vivify_100:
.annotate 'line', 11
    .const 'Sub' $P1086 = "25_1339198191.422" 
    capture_lex $P1086
    $P1086()
.annotate 'line', 12
    set $P103, $P1081
    unless_null $P103, vivify_106
    new $P103, "Undef"
  vivify_106:
    if $P103, if_1095
.annotate 'line', 15
    .const 'Sub' $P1098 = "26_1339198191.422" 
    capture_lex $P1098
    $P1098()
    goto if_1095_end
  if_1095:
.annotate 'line', 13
    set $P1096, $P1079
    unless_null $P1096, vivify_113
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_113:
    set $P104, $P1081
    unless_null $P104, vivify_114
    new $P104, "Undef"
  vivify_114:
    $P1096."push"($P104)
  if_1095_end:
.annotate 'line', 23
    set $P1106, $P1079
    unless_null $P1106, vivify_115
    $P1106 = root_new ['parrot';'ResizablePMCArray']
  vivify_115:
    $P1106."push"(".")
.annotate 'line', 24
    set $P1107, $P1079
    unless_null $P1107, vivify_116
    $P1107 = root_new ['parrot';'ResizablePMCArray']
  vivify_116:
    $P1107."push"("blib")
.annotate 'line', 27
    getinterp $P103
    set $P104, $P103[.IGLOBALS_CONFIG_HASH]
    unless_null $P104, vivify_117
    new $P104, "Undef"
  vivify_117:
    set $P1082, $P104
.annotate 'line', 28
    set $P1108, $P1079
    unless_null $P1108, vivify_118
    $P1108 = root_new ['parrot';'ResizablePMCArray']
  vivify_118:
    set $P1109, $P1082
    unless_null $P1109, vivify_119
    $P1109 = root_new ['parrot';'Hash']
  vivify_119:
    set $P103, $P1109["libdir"]
    unless_null $P103, vivify_120
    new $P103, "Undef"
  vivify_120:
    set $P1110, $P1082
    unless_null $P1110, vivify_121
    $P1110 = root_new ['parrot';'Hash']
  vivify_121:
    set $P104, $P1110["versiondir"]
    unless_null $P104, vivify_122
    new $P104, "Undef"
  vivify_122:
    concat $P105, $P103, $P104
    concat $P106, $P105, "/languages/nqp/lib"
    $P1108."push"($P106)
.annotate 'line', 5
    set $P1111, $P1079
    unless_null $P1111, vivify_123
    $P1111 = root_new ['parrot';'ResizablePMCArray']
  vivify_123:
    .return ($P1111)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1085"  :anon :subid("25_1339198191.422") :outer("10_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 11
    new $P1090, 'ExceptionHandler'
    set_label $P1090, control_1089
    $P1090."handle_types_except"(.CONTROL_ALL)
    push_eh $P1090
    find_lex $P103, "$explicit_path"
    unless_null $P103, vivify_101
    new $P103, "Undef"
  vivify_101:
    find_dynamic_lex $P106, "%*COMPILING"
    unless_null $P106, vivify_102
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%COMPILING"]
    unless_null $P106, vivify_103
    die "Contextual %*COMPILING not found"
  vivify_103:
  vivify_102:
    set $P1087, $P106["%?OPTIONS"]
    unless_null $P1087, vivify_104
    $P1087 = root_new ['parrot';'Hash']
  vivify_104:
    set $P107, $P1087[$P103]
    unless_null $P107, vivify_105
    new $P107, "Undef"
  vivify_105:
    store_lex "$explicit", $P107
    pop_eh 
    goto skip_handler_1088
  control_1089:
    peek_exception $P1091
    .local pmc exception 
    .get_results (exception) 
    new $P1093, 'Integer'
    set $P1093, 1
    set exception["handled"], $P1093
    set $I1094, exception["handled"]
    eq $I1094, 1, handled_1092
    rethrow exception
  handled_1092:
    finalize $P1091
    .return (exception)
  skip_handler_1088:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1097"  :anon :subid("26_1339198191.422") :outer("10_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 16
    $P1100 = root_new ['parrot';'ResizablePMCArray']
    set $P1099, $P1100
    .lex "@lib_paths", $P1099
    getinterp $P104
    set $P1101, $P104[.IGLOBALS_LIB_PATHS]
    unless_null $P1101, vivify_107
    $P1101 = root_new ['parrot';'ResizablePMCArray']
  vivify_107:
    set $P105, $P1101[1]
    unless_null $P105, vivify_108
    new $P105, "Undef"
  vivify_108:
    set $P1099, $P105
.annotate 'line', 17
    set $P1103, $P1099
    unless_null $P1103, vivify_109
    $P1103 = root_new ['parrot';'ResizablePMCArray']
  vivify_109:
    set $N100, $P1103
    set $N101, 3
    isgt $I100, $N100, $N101
    if $I100, if_1102
    new $P104, 'Integer'
    set $P104, $I100
    goto if_1102_end
  if_1102:
.annotate 'line', 18
    find_lex $P1104, "@search_paths"
    unless_null $P1104, vivify_110
    $P1104 = root_new ['parrot';'ResizablePMCArray']
  vivify_110:
    set $P1105, $P1099
    unless_null $P1105, vivify_111
    $P1105 = root_new ['parrot';'ResizablePMCArray']
  vivify_111:
    set $P105, $P1105[0]
    unless_null $P105, vivify_112
    new $P105, "Undef"
  vivify_112:
    $P106 = $P1104."push"($P105)
.annotate 'line', 17
    set $P104, $P106
  if_1102_end:
.annotate 'line', 15
    .return ($P104)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave" :anon :subid("11_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1113
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 34
    .lex "self", param_1113
.annotate 'line', 36

                $P0 = getinterp
                $P1114 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1114
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
.sub "load_module" :anon :subid("12_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1118
    .param pmc param_1119
    .param pmc param_1120 :slurpy
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 43
    .const 'Sub' $P1142 = "29_1339198191.422" 
    capture_lex $P1142
    .const 'Sub' $P1135 = "28_1339198191.422" 
    capture_lex $P1135
    .const 'Sub' $P1127 = "27_1339198191.422" 
    capture_lex $P1127
    new $P1117, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1117, control_1116
    push_eh $P1117
    .lex "self", param_1118
    .lex "$module_name", param_1119
    .lex "@global_merge_target", param_1120
.annotate 'line', 47
    new $P102, "Undef"
    set $P1121, $P102
    .lex "$module_ctx", $P1121
.annotate 'line', 48
    new $P103, "Undef"
    set $P1122, $P103
    .lex "$path", $P1122
.annotate 'line', 49
    $P1124 = root_new ['parrot';'ResizablePMCArray']
    set $P1123, $P1124
    .lex "@prefixes", $P1123
.annotate 'line', 43
    set $P104, $P1121
    unless_null $P104, vivify_124
    new $P104, "Undef"
  vivify_124:
.annotate 'line', 48
    set $P104, param_1119
    unless_null $P104, vivify_125
    new $P104, "Undef"
  vivify_125:
    set $S100, $P104
    split $P105, "::", $S100
    join $S101, "/", $P105
    new $P106, 'String'
    set $P106, $S101
    concat $P107, $P106, ".pbc"
    set $P1122, $P107
.annotate 'line', 49
    set $P104, param_1118
    nqp_decontainerize $P105, $P104
    $P106 = $P105."search_path"("module-path")
    set $P1123, $P106
.annotate 'line', 50
    set $P1125, $P1123
    unless_null $P1125, vivify_126
    $P1125 = root_new ['parrot';'ResizablePMCArray']
  vivify_126:
    defined $I100, $P1125
    unless $I100, for_undef_127
    iter $P104, $P1125
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1130_handler
    push_eh $P107
  loop1130_test:
    unless $P104, loop1130_done
    shift $P105, $P104
  loop1130_redo:
    .const 'Sub' $P1127 = "27_1339198191.422" 
    capture_lex $P1127
    $P1127($P105)
  loop1130_next:
    goto loop1130_test
  loop1130_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1130_next
    eq $P108, .CONTROL_LOOP_REDO, loop1130_redo
  loop1130_done:
    pop_eh 
  for_undef_127:
.annotate 'line', 56
    set $P104, $P1122
    unless_null $P104, vivify_132
    new $P104, "Undef"
  vivify_132:
    find_lex $P1132, "%modules_loaded"
    unless_null $P1132, vivify_133
    $P1132 = root_new ['parrot';'Hash']
  vivify_133:
    set $P105, $P1132[$P104]
    unless_null $P105, vivify_134
    new $P105, "Undef"
  vivify_134:
    defined $I100, $P105
    if $I100, if_1131
.annotate 'line', 59
    .const 'Sub' $P1135 = "28_1339198191.422" 
    capture_lex $P1135
    $P1135()
    goto if_1131_end
  if_1131:
.annotate 'line', 57
    set $P106, $P1122
    unless_null $P106, vivify_143
    new $P106, "Undef"
  vivify_143:
    find_lex $P1133, "%modules_loaded"
    unless_null $P1133, vivify_144
    $P1133 = root_new ['parrot';'Hash']
  vivify_144:
    set $P107, $P1133[$P106]
    unless_null $P107, vivify_145
    new $P107, "Undef"
  vivify_145:
    set $P1121, $P107
  if_1131_end:
.annotate 'line', 69
    set $P104, $P1121
    unless_null $P104, vivify_146
    new $P104, "Undef"
  vivify_146:
    defined $I100, $P104
    unless $I100, if_1140_end
    .const 'Sub' $P1142 = "29_1339198191.422" 
    capture_lex $P1142
    $P1142()
  if_1140_end:
.annotate 'line', 79
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    set $P105, $P1121
    unless_null $P105, vivify_155
    new $P105, "Undef"
  vivify_155:
    setattribute $P104, 'payload', $P105
    throw $P104
.annotate 'line', 43
    .return ()
  control_1116:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1126"  :anon :subid("27_1339198191.422") :outer("12_1339198191.422")
    .param pmc param_1128
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 50
    .lex "$prefix", param_1128
.annotate 'line', 51
    set $P107, param_1128
    unless_null $P107, vivify_128
    new $P107, "Undef"
  vivify_128:
    concat $P108, $P107, "/"
    find_lex $P109, "$path"
    unless_null $P109, vivify_129
    new $P109, "Undef"
  vivify_129:
    concat $P110, $P108, $P109
    set $S100, $P110
    stat $I101, $S100, 0
    if $I101, if_1129
    new $P106, 'Integer'
    set $P106, $I101
    goto if_1129_end
  if_1129:
.annotate 'line', 52
    set $P111, param_1128
    unless_null $P111, vivify_130
    new $P111, "Undef"
  vivify_130:
    concat $P112, $P111, "/"
    find_lex $P113, "$path"
    unless_null $P113, vivify_131
    new $P113, "Undef"
  vivify_131:
    concat $P114, $P112, $P113
    store_lex "$path", $P114
.annotate 'line', 53
    die 0, .CONTROL_LOOP_LAST
  if_1129_end:
.annotate 'line', 50
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1134"  :anon :subid("28_1339198191.422") :outer("12_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 60
    new $P106, "Undef"
    set $P1136, $P106
    .lex "$*CTXSAVE", $P1136
.annotate 'line', 61
    new $P107, "Undef"
    set $P1137, $P107
    .lex "$*MAIN_CTX", $P1137
.annotate 'line', 62
    new $P108, "Undef"
    set $P1138, $P108
    .lex "$preserve_global", $P1138
.annotate 'line', 60
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    set $P1136, $P110
.annotate 'line', 59
    set $P111, $P1137
    unless_null $P111, vivify_135
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_136
    die "Contextual $*MAIN_CTX not found"
  vivify_136:
  vivify_135:
.annotate 'line', 62
    get_hll_global $P109, "GLOBAL"
    set $P1138, $P109
.annotate 'line', 63
    find_lex $P109, "$path"
    unless_null $P109, vivify_137
    new $P109, "Undef"
  vivify_137:
    set $S100, $P109
    load_bytecode $S100
.annotate 'line', 64
    set $P109, $P1138
    unless_null $P109, vivify_138
    new $P109, "Undef"
  vivify_138:
    set_hll_global "GLOBAL", $P109
.annotate 'line', 65
    set $P111, $P1137
    unless_null $P111, vivify_139
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_140
    die "Contextual $*MAIN_CTX not found"
  vivify_140:
  vivify_139:
    store_lex "$module_ctx", $P111
    find_lex $P112, "$path"
    unless_null $P112, vivify_141
    new $P112, "Undef"
  vivify_141:
    find_lex $P1139, "%modules_loaded"
    unless_null $P1139, vivify_142
    $P1139 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1139
  vivify_142:
    set $P1139[$P112], $P111
.annotate 'line', 59
    .return ($P111)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1141"  :anon :subid("29_1339198191.422") :outer("12_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 71
    new $P105, "Undef"
    set $P1143, $P105
    .lex "$UNIT", $P1143
    find_lex $P106, "$module_ctx"
    unless_null $P106, vivify_147
    new $P106, "Undef"
  vivify_147:
    getattribute $P107, $P106, "lex_pad"
    set $P1143, $P107
.annotate 'line', 72
    set $P1145, $P1143
    unless_null $P1145, vivify_148
    $P1145 = root_new ['parrot';'Hash']
  vivify_148:
    set $P107, $P1145["GLOBALish"]
    unless_null $P107, vivify_149
    new $P107, "Undef"
  vivify_149:
    isnull $I101, $P107
    unless $I101, unless_1144
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_1144_end
  unless_1144:
.annotate 'line', 73
    find_lex $P1147, "@global_merge_target"
    unless_null $P1147, vivify_150
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_150:
    set $N100, $P1147
    if $N100, if_1146
    new $P108, 'Float'
    set $P108, $N100
    goto if_1146_end
  if_1146:
.annotate 'line', 74
    find_lex $P1148, "@global_merge_target"
    unless_null $P1148, vivify_151
    $P1148 = root_new ['parrot';'ResizablePMCArray']
  vivify_151:
    set $P109, $P1148[0]
    unless_null $P109, vivify_152
    new $P109, "Undef"
  vivify_152:
    set $P1149, $P1143
    unless_null $P1149, vivify_153
    $P1149 = root_new ['parrot';'Hash']
  vivify_153:
    set $P110, $P1149["GLOBALish"]
    unless_null $P110, vivify_154
    new $P110, "Undef"
  vivify_154:
    $P111 = "merge_globals"($P109, $P110)
.annotate 'line', 73
    set $P108, $P111
  if_1146_end:
.annotate 'line', 72
    set $P106, $P108
  unless_1144_end:
.annotate 'line', 69
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting" :anon :subid("13_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1153
    .param pmc param_1154
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 140
    .const 'Sub' $P1158 = "30_1339198191.422" 
    capture_lex $P1158
    new $P1152, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1152, control_1151
    push_eh $P1152
    .lex "self", param_1153
    .lex "$setting_name", param_1154
.annotate 'line', 141
    new $P102, "Undef"
    set $P1155, $P102
    .lex "$setting", $P1155
.annotate 'line', 140
    set $P103, $P1155
    unless_null $P103, vivify_156
    new $P103, "Undef"
  vivify_156:
.annotate 'line', 143
    set $P103, param_1154
    unless_null $P103, vivify_157
    new $P103, "Undef"
  vivify_157:
    set $S100, $P103
    isne $I100, $S100, "NULL"
    unless $I100, if_1156_end
    .const 'Sub' $P1158 = "30_1339198191.422" 
    capture_lex $P1158
    $P1158()
  if_1156_end:
.annotate 'line', 170
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    set $P104, $P1155
    unless_null $P104, vivify_182
    new $P104, "Undef"
  vivify_182:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 140
    .return ()
  control_1151:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1157"  :anon :subid("30_1339198191.422") :outer("13_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 143
    .const 'Sub' $P1171 = "32_1339198191.422" 
    capture_lex $P1171
    .const 'Sub' $P1164 = "31_1339198191.422" 
    capture_lex $P1164
.annotate 'line', 145
    new $P104, "Undef"
    set $P1159, $P104
    .lex "$path", $P1159
.annotate 'line', 146
    $P1161 = root_new ['parrot';'ResizablePMCArray']
    set $P1160, $P1161
    .lex "@prefixes", $P1160
.annotate 'line', 145
    find_lex $P105, "$setting_name"
    unless_null $P105, vivify_158
    new $P105, "Undef"
  vivify_158:
    concat $P106, $P105, ".setting.pbc"
    set $P1159, $P106
.annotate 'line', 146
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    $P107 = $P106."search_path"("setting-path")
    set $P1160, $P107
.annotate 'line', 147
    set $P1162, $P1160
    unless_null $P1162, vivify_159
    $P1162 = root_new ['parrot';'ResizablePMCArray']
  vivify_159:
    defined $I101, $P1162
    unless $I101, for_undef_160
    iter $P105, $P1162
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1167_handler
    push_eh $P108
  loop1167_test:
    unless $P105, loop1167_done
    shift $P106, $P105
  loop1167_redo:
    .const 'Sub' $P1164 = "31_1339198191.422" 
    capture_lex $P1164
    $P1164($P106)
  loop1167_next:
    goto loop1167_test
  loop1167_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1167_next
    eq $P109, .CONTROL_LOOP_REDO, loop1167_redo
  loop1167_done:
    pop_eh 
  for_undef_160:
.annotate 'line', 155
    set $P105, $P1159
    unless_null $P105, vivify_165
    new $P105, "Undef"
  vivify_165:
    find_lex $P1169, "%settings_loaded"
    unless_null $P1169, vivify_166
    $P1169 = root_new ['parrot';'Hash']
  vivify_166:
    set $P106, $P1169[$P105]
    unless_null $P106, vivify_167
    new $P106, "Undef"
  vivify_167:
    defined $I101, $P106
    if $I101, unless_1168_end
    .const 'Sub' $P1171 = "32_1339198191.422" 
    capture_lex $P1171
    $P1171()
  unless_1168_end:
.annotate 'line', 167
    set $P105, $P1159
    unless_null $P105, vivify_179
    new $P105, "Undef"
  vivify_179:
    find_lex $P1177, "%settings_loaded"
    unless_null $P1177, vivify_180
    $P1177 = root_new ['parrot';'Hash']
  vivify_180:
    set $P106, $P1177[$P105]
    unless_null $P106, vivify_181
    new $P106, "Undef"
  vivify_181:
    store_lex "$setting", $P106
.annotate 'line', 143
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1163"  :anon :subid("31_1339198191.422") :outer("30_1339198191.422")
    .param pmc param_1165
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 147
    .lex "$prefix", param_1165
.annotate 'line', 148
    set $P108, param_1165
    unless_null $P108, vivify_161
    new $P108, "Undef"
  vivify_161:
    concat $P109, $P108, "/"
    find_lex $P110, "$path"
    unless_null $P110, vivify_162
    new $P110, "Undef"
  vivify_162:
    concat $P111, $P109, $P110
    set $S101, $P111
    stat $I102, $S101, 0
    if $I102, if_1166
    new $P107, 'Integer'
    set $P107, $I102
    goto if_1166_end
  if_1166:
.annotate 'line', 149
    set $P112, param_1165
    unless_null $P112, vivify_163
    new $P112, "Undef"
  vivify_163:
    concat $P113, $P112, "/"
    find_lex $P114, "$path"
    unless_null $P114, vivify_164
    new $P114, "Undef"
  vivify_164:
    concat $P115, $P113, $P114
    store_lex "$path", $P115
.annotate 'line', 150
    die 0, .CONTROL_LOOP_LAST
  if_1166_end:
.annotate 'line', 147
    .return ($P107)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1170"  :anon :subid("32_1339198191.422") :outer("30_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 156
    new $P107, "Undef"
    set $P1172, $P107
    .lex "$*CTXSAVE", $P1172
.annotate 'line', 157
    new $P108, "Undef"
    set $P1173, $P108
    .lex "$*MAIN_CTX", $P1173
.annotate 'line', 158
    new $P109, "Undef"
    set $P1174, $P109
    .lex "$preserve_global", $P1174
.annotate 'line', 156
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    set $P1172, $P111
.annotate 'line', 155
    set $P112, $P1173
    unless_null $P112, vivify_168
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_169
    die "Contextual $*MAIN_CTX not found"
  vivify_169:
  vivify_168:
.annotate 'line', 158
    get_hll_global $P110, "GLOBAL"
    set $P1174, $P110
.annotate 'line', 159
    find_lex $P110, "$path"
    unless_null $P110, vivify_170
    new $P110, "Undef"
  vivify_170:
    set $S101, $P110
    load_bytecode $S101
.annotate 'line', 160
    set $P110, $P1174
    unless_null $P110, vivify_171
    new $P110, "Undef"
  vivify_171:
    set_hll_global "GLOBAL", $P110
.annotate 'line', 161
    set $P112, $P1173
    unless_null $P112, vivify_172
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_173
    die "Contextual $*MAIN_CTX not found"
  vivify_173:
  vivify_172:
    defined $I102, $P112
    if $I102, unless_1175_end
.annotate 'line', 162
    new $P113, 'String'
    set $P113, "Unable to load setting "
    find_lex $P114, "$setting_name"
    unless_null $P114, vivify_174
    new $P114, "Undef"
  vivify_174:
    concat $P115, $P113, $P114
    concat $P116, $P115, "; maybe it is missing a YOU_ARE_HERE?"
    die $P116
  unless_1175_end:
.annotate 'line', 164
    set $P112, $P1173
    unless_null $P112, vivify_175
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_176
    die "Contextual $*MAIN_CTX not found"
  vivify_176:
  vivify_175:
    find_lex $P113, "$path"
    unless_null $P113, vivify_177
    new $P113, "Undef"
  vivify_177:
    find_lex $P1176, "%settings_loaded"
    unless_null $P1176, vivify_178
    $P1176 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P1176
  vivify_178:
    set $P1176[$P113], $P112
.annotate 'line', 155
    .return ($P112)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module" :anon :subid("14_1339198191.422") :outer("16_1339198191.422")
    .param pmc param_1179
    .param pmc param_1180
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 175
    .lex "self", param_1179
    .lex "$mainline_ctx", param_1180
.annotate 'line', 178
    new $P102, "Undef"
    set $P1181, $P102
    .lex "$module_name", $P1181
    getinterp $P103
    set $P1182, $P103[2]
    unless_null $P1182, vivify_183
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
    set $P104, $P1182[0]
    unless_null $P104, vivify_184
    new $P104, "Undef"
  vivify_184:
    set $P1181, $P104
.annotate 'line', 179
    set $P103, $P1181
    unless_null $P103, vivify_185
    new $P103, "Undef"
  vivify_185:
    set $S100, $P103
    substr $S101, $S100, 0, 2
    iseq $I100, $S101, "./"
    unless $I100, if_1183_end
.annotate 'line', 180
    set $P104, $P1181
    unless_null $P104, vivify_186
    new $P104, "Undef"
  vivify_186:
    set $S102, $P104
    set $P105, $P1181
    unless_null $P105, vivify_187
    new $P105, "Undef"
  vivify_187:
    set $S103, $P105
    length $I101, $S103
    new $P106, 'Integer'
    set $P106, $I101
    sub $P107, $P106, 2
    set $I102, $P107
    substr $S104, $S102, 2, $I102
    new $P108, 'String'
    set $P108, $S104
    set $P1181, $P108
  if_1183_end:
.annotate 'line', 182
    set $P103, $P1181
    unless_null $P103, vivify_188
    new $P103, "Undef"
  vivify_188:
    set $S100, $P103
    set $P104, $P1181
    unless_null $P104, vivify_189
    new $P104, "Undef"
  vivify_189:
    set $S101, $P104
    length $I100, $S101
    new $P105, 'Integer'
    set $P105, $I100
    sub $P106, $P105, 4
    set $I101, $P106
    substr $S102, $S100, $I101, 4
    iseq $I102, $S102, ".pbc"
    if $I102, if_1184
.annotate 'line', 185
    set $P107, $P1181
    unless_null $P107, vivify_190
    new $P107, "Undef"
  vivify_190:
    set $S103, $P107
    set $P108, $P1181
    unless_null $P108, vivify_191
    new $P108, "Undef"
  vivify_191:
    set $S104, $P108
    length $I103, $S104
    new $P109, 'Integer'
    set $P109, $I103
    sub $P110, $P109, 4
    set $I104, $P110
    substr $S105, $S103, $I104, 4
    iseq $I105, $S105, ".exe"
    if $I105, if_1185
.annotate 'line', 190
    set $P111, $P1181
    unless_null $P111, vivify_192
    new $P111, "Undef"
  vivify_192:
    concat $P112, $P111, ".pbc"
    set $P1181, $P112
.annotate 'line', 189
    goto if_1185_end
  if_1185:
.annotate 'line', 187
    set $P111, $P1181
    unless_null $P111, vivify_193
    new $P111, "Undef"
  vivify_193:
    set $S106, $P111
    set $P112, $P1181
    unless_null $P112, vivify_194
    new $P112, "Undef"
  vivify_194:
    set $S107, $P112
    length $I106, $S107
    new $P113, 'Integer'
    set $P113, $I106
    sub $P114, $P113, 3
    set $I107, $P114
    substr $S108, $S106, 0, $I107
    new $P115, 'String'
    set $P115, $S108
    concat $P116, $P115, "pbc"
    set $P1181, $P116
  if_1185_end:
.annotate 'line', 185
    goto if_1184_end
  if_1184:
  if_1184_end:
.annotate 'line', 194
    set $P103, param_1180
    unless_null $P103, vivify_195
    new $P103, "Undef"
  vivify_195:
    set $P104, $P1181
    unless_null $P104, vivify_196
    new $P104, "Undef"
  vivify_196:
    find_lex $P1186, "%modules_loaded"
    unless_null $P1186, vivify_197
    $P1186 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1186
  vivify_197:
    set $P1186[$P104], $P103
.annotate 'line', 175
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "_block1189" :load :anon :subid("33_1339198191.422")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const '' $P1191 = "15_1339198191.422" 
    $P106 = $P1191()
    .return ($P106)
.end

