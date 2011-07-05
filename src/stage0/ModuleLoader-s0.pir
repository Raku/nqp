.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1309859062.93")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1007 = "11_1309859062.93" 
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
    .const 'Sub' $P1007 = "11_1309859062.93" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 161
    find_lex $P100, "ModuleLoader"
    set_hll_global "ModuleLoader", $P100
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_1146
    set $P100, $P101
    goto if_1146_end
  if_1146:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_1146_end:
    .return ($P100)
    .const 'Sub' $P1148 = "28_1309859062.93" 
    .return ($P1148)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post29") :outer("10_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1309859062.93" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1309859062.272"
    isnull $I100, $P107
    if $I100, if_1150
    goto if_1150_end
  if_1150:
    nqp_dynop_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1309859062.272"
    .local pmc cur_sc
    set cur_sc, $P111
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859062.272", 0, $P113
    .const 'Sub' $P1151 = "10_1309859062.93" 
    $P112 = $P1151."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859062.272", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P1152 = "10_1309859062.93" 
    $P114 = $P1152."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P1153 = "10_1309859062.93" 
    $P112 = $P1153."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859062.272", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P1154 = "10_1309859062.93" 
    $P114 = $P1154."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("ModuleLoader" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859062.272", 1, $P113
    nqp_get_sc_object $P112, "1309859062.272", 1
    nqp_get_sc_object $P113, "1309859062.272", 0
    get_who $P114, $P113
    set $P114["ModuleLoader"], $P112
    .const 'Sub' $P1155 = "10_1309859062.93" 
    $P112 = $P1155."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859062.272", 1
    $P112."set_static_lexpad_value"("ModuleLoader", $P113)
    .const 'Sub' $P1156 = "10_1309859062.93" 
    $P114 = $P1156."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859062.272", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859062.272", 1
    .const 'Sub' $P1157 = "16_1309859062.93" 
    $P113."add_method"($P114, "ctxsave", $P1157)
    nqp_get_sc_object $P112, "1309859062.272", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859062.272", 1
    .const 'Sub' $P1158 = "17_1309859062.93" 
    $P113."add_method"($P114, "load_module", $P1158)
    nqp_get_sc_object $P112, "1309859062.272", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859062.272", 1
    .const 'Sub' $P1159 = "23_1309859062.93" 
    $P113."add_method"($P114, "load_setting", $P1159)
    nqp_get_sc_object $P112, "1309859062.272", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859062.272", 1
    .const 'Sub' $P1160 = "27_1309859062.93" 
    $P113."add_method"($P114, "set_mainline_module", $P1160)
    .const 'Sub' $P1161 = "11_1309859062.93" 
    $P112 = $P1161."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859062.272", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P1162 = "11_1309859062.93" 
    $P114 = $P1162."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P1163 = "11_1309859062.93" 
    $P112 = $P1163."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859062.272", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P1164 = "11_1309859062.93" 
    $P114 = $P1164."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859062.272", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859062.272", 1
    $P113."compose"($P114)
  if_1150_end:
    nqp_get_sc_object $P112, "1309859062.272", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1006"  :subid("11_1309859062.93") :outer("10_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P1136 = "27_1309859062.93" 
    capture_lex $P1136
    .const 'Sub' $P1104 = "23_1309859062.93" 
    capture_lex $P1104
    .const 'Sub' $P1049 = "17_1309859062.93" 
    capture_lex $P1049
    .const 'Sub' $P1046 = "16_1309859062.93" 
    capture_lex $P1046
    .const 'Sub' $P1014 = "12_1309859062.93" 
    capture_lex $P1014
.annotate 'line', 2
    $P1009 = root_new ['parrot';'Hash']
    set $P1008, $P1009
    .lex "%modules_loaded", $P1008
.annotate 'line', 3
    $P1011 = root_new ['parrot';'Hash']
    set $P1010, $P1011
    .lex "%settings_loaded", $P1010
.annotate 'line', 69
    new $P100, "Undef"
    set $P1012, $P100
    .lex "$stub_how", $P1012
.annotate 'line', 70
    .const 'Sub' $P1014 = "12_1309859062.93" 
    newclosure $P1041, $P1014
    set $P1013, $P1041
    .lex "merge_globals", $P1013
.annotate 'line', 69
    .lex "$?PACKAGE", $P1042
    .lex "$?CLASS", $P1043
.annotate 'line', 1
    find_lex $P1044, "%modules_loaded"
    unless_null $P1044, vivify_65
    $P1044 = root_new ['parrot';'Hash']
  vivify_65:
    find_lex $P1045, "%settings_loaded"
    unless_null $P1045, vivify_66
    $P1045 = root_new ['parrot';'Hash']
  vivify_66:
.annotate 'line', 69
    new $P102, "String"
    assign $P102, "KnowHOW"
    store_lex "$stub_how", $P102
.annotate 'line', 1
    find_lex $P102, "merge_globals"
.annotate 'line', 136
    .const 'Sub' $P1136 = "27_1309859062.93" 
    newclosure $P1145, $P1136
.annotate 'line', 1
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "merge_globals"  :subid("12_1309859062.93") :outer("11_1309859062.93")
    .param pmc param_1015
    .param pmc param_1016
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 70
    .const 'Sub' $P1026 = "14_1309859062.93" 
    capture_lex $P1026
    .const 'Sub' $P1021 = "13_1309859062.93" 
    capture_lex $P1021
    .lex "$target", param_1015
    .lex "$source", param_1016
.annotate 'line', 74
    $P1018 = root_new ['parrot';'Hash']
    set $P1017, $P1018
    .lex "%known_symbols", $P1017
.annotate 'line', 70
    find_lex $P1019, "%known_symbols"
    unless_null $P1019, vivify_30
    $P1019 = root_new ['parrot';'Hash']
  vivify_30:
.annotate 'line', 75
    find_lex $P102, "$target"
    unless_null $P102, vivify_31
    new $P102, "Undef"
  vivify_31:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_32
    iter $P101, $P103
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1024_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1024_test:
    unless $P101, loop1024_done
    shift $P104, $P101
  loop1024_redo:
    .const 'Sub' $P1021 = "13_1309859062.93" 
    capture_lex $P1021
    $P1021($P104)
  loop1024_next:
    goto loop1024_test
  loop1024_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1024_next
    eq $P107, .CONTROL_LOOP_REDO, loop1024_redo
  loop1024_done:
    pop_eh 
  for_undef_32:
.annotate 'line', 78
    find_lex $P102, "$source"
    unless_null $P102, vivify_35
    new $P102, "Undef"
  vivify_35:
    get_who $P103, $P102
    defined $I100, $P103
    unless $I100, for_undef_36
    iter $P101, $P103
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1040_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1040_test:
    unless $P101, loop1040_done
    shift $P104, $P101
  loop1040_redo:
    .const 'Sub' $P1026 = "14_1309859062.93" 
    capture_lex $P1026
    $P1026($P104)
  loop1040_next:
    goto loop1040_test
  loop1040_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1040_next
    eq $P108, .CONTROL_LOOP_REDO, loop1040_redo
  loop1040_done:
    pop_eh 
  for_undef_36:
.annotate 'line', 70
    .return ($P101)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1020"  :anon :subid("13_1309859062.93") :outer("12_1309859062.93")
    .param pmc param_1022
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 75
    .lex "$_", param_1022
.annotate 'line', 76
    new $P105, "Integer"
    assign $P105, 1
    find_lex $P106, "$_"
    unless_null $P106, vivify_33
    new $P106, "Undef"
  vivify_33:
    $P107 = $P106."key"()
    find_lex $P1023, "%known_symbols"
    unless_null $P1023, vivify_34
    $P1023 = root_new ['parrot';'Hash']
    store_lex "%known_symbols", $P1023
  vivify_34:
    set $P1023[$P107], $P105
.annotate 'line', 75
    .return ($P105)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1025"  :anon :subid("14_1309859062.93") :outer("12_1309859062.93")
    .param pmc param_1028
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 78
    .const 'Sub' $P1033 = "15_1309859062.93" 
    capture_lex $P1033
.annotate 'line', 79
    new $P105, "Undef"
    set $P1027, $P105
    .lex "$sym", $P1027
    .lex "$_", param_1028
    find_lex $P106, "$_"
    unless_null $P106, vivify_37
    new $P106, "Undef"
  vivify_37:
    $P107 = $P106."key"()
    store_lex "$sym", $P107
.annotate 'line', 80
    find_lex $P107, "$sym"
    unless_null $P107, vivify_38
    new $P107, "Undef"
  vivify_38:
    find_lex $P1030, "%known_symbols"
    unless_null $P1030, vivify_39
    $P1030 = root_new ['parrot';'Hash']
  vivify_39:
    set $P108, $P1030[$P107]
    unless_null $P108, vivify_40
    new $P108, "Undef"
  vivify_40:
    isfalse $I101, $P108
    if $I101, if_1029
.annotate 'line', 83
    find_lex $P111, "$sym"
    unless_null $P111, vivify_41
    new $P111, "Undef"
  vivify_41:
    find_lex $P112, "$target"
    unless_null $P112, vivify_42
    new $P112, "Undef"
  vivify_42:
    get_who $P113, $P112
    set $P114, $P113[$P111]
    unless_null $P114, vivify_43
    new $P114, "Undef"
  vivify_43:
    find_lex $P115, "$_"
    unless_null $P115, vivify_44
    new $P115, "Undef"
  vivify_44:
    $P116 = $P115."value"()
    issame $I102, $P114, $P116
    if $I102, if_1031
.annotate 'line', 86
    .const 'Sub' $P1033 = "15_1309859062.93" 
    capture_lex $P1033
    $P122 = $P1033()
    set $P109, $P122
.annotate 'line', 83
    goto if_1031_end
  if_1031:
  if_1031_end:
    set $P106, $P109
.annotate 'line', 80
    goto if_1029_end
  if_1029:
.annotate 'line', 81
    find_lex $P109, "$_"
    unless_null $P109, vivify_62
    new $P109, "Undef"
  vivify_62:
    $P110 = $P109."value"()
    find_lex $P111, "$sym"
    unless_null $P111, vivify_63
    new $P111, "Undef"
  vivify_63:
    find_lex $P112, "$target"
    unless_null $P112, vivify_64
    new $P112, "Undef"
    store_lex "$target", $P112
  vivify_64:
    get_who $P113, $P112
    set $P113[$P111], $P110
.annotate 'line', 80
    set $P106, $P110
  if_1029_end:
.annotate 'line', 78
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1032"  :anon :subid("15_1309859062.93") :outer("14_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 87
    new $P117, "Undef"
    set $P1034, $P117
    .lex "$source_mo", $P1034
.annotate 'line', 88
    new $P118, "Undef"
    set $P1035, $P118
    .lex "$source_is_stub", $P1035
.annotate 'line', 89
    new $P119, "Undef"
    set $P1036, $P119
    .lex "$target_mo", $P1036
.annotate 'line', 90
    new $P120, "Undef"
    set $P1037, $P120
    .lex "$target_is_stub", $P1037
.annotate 'line', 87
    find_lex $P121, "$_"
    unless_null $P121, vivify_45
    new $P121, "Undef"
  vivify_45:
    $P122 = $P121."value"()
    get_how $P123, $P122
    store_lex "$source_mo", $P123
.annotate 'line', 88
    find_lex $P121, "$source_mo"
    unless_null $P121, vivify_46
    new $P121, "Undef"
  vivify_46:
    get_what $P122, $P121
    get_how $P123, $P122
    find_lex $P124, "$source_mo"
    unless_null $P124, vivify_47
    new $P124, "Undef"
  vivify_47:
    $S100 = $P123."name"($P124)
    find_lex $P125, "$stub_how"
    unless_null $P125, vivify_48
    new $P125, "Undef"
  vivify_48:
    set $S101, $P125
    iseq $I103, $S100, $S101
    new $P126, 'Integer'
    set $P126, $I103
    store_lex "$source_is_stub", $P126
.annotate 'line', 89
    find_lex $P121, "$sym"
    unless_null $P121, vivify_49
    new $P121, "Undef"
  vivify_49:
    find_lex $P122, "$target"
    unless_null $P122, vivify_50
    new $P122, "Undef"
  vivify_50:
    get_who $P123, $P122
    set $P124, $P123[$P121]
    unless_null $P124, vivify_51
    new $P124, "Undef"
  vivify_51:
    get_how $P125, $P124
    store_lex "$target_mo", $P125
.annotate 'line', 90
    find_lex $P121, "$target_mo"
    unless_null $P121, vivify_52
    new $P121, "Undef"
  vivify_52:
    get_what $P122, $P121
    get_how $P123, $P122
    find_lex $P124, "$target_mo"
    unless_null $P124, vivify_53
    new $P124, "Undef"
  vivify_53:
    $S100 = $P123."name"($P124)
    find_lex $P125, "$stub_how"
    unless_null $P125, vivify_54
    new $P125, "Undef"
  vivify_54:
    set $S101, $P125
    iseq $I103, $S100, $S101
    new $P126, 'Integer'
    set $P126, $I103
    store_lex "$target_is_stub", $P126
.annotate 'line', 91
    find_lex $P123, "$source_is_stub"
    unless_null $P123, vivify_55
    new $P123, "Undef"
  vivify_55:
    if $P123, if_1039
    set $P122, $P123
    goto if_1039_end
  if_1039:
    find_lex $P124, "$target_is_stub"
    unless_null $P124, vivify_56
    new $P124, "Undef"
  vivify_56:
    set $P122, $P124
  if_1039_end:
    if $P122, if_1038
.annotate 'line', 96
    new $P125, 'String'
    set $P125, "Merging GLOBAL symbols failed: duplicate definition of symbol "
    find_lex $P126, "$sym"
    unless_null $P126, vivify_57
    new $P126, "Undef"
  vivify_57:
    concat $P127, $P125, $P126
    die $P127
.annotate 'line', 95
    goto if_1038_end
  if_1038:
.annotate 'line', 93
    find_lex $P125, "$sym"
    unless_null $P125, vivify_58
    new $P125, "Undef"
  vivify_58:
    find_lex $P126, "$target"
    unless_null $P126, vivify_59
    new $P126, "Undef"
  vivify_59:
    get_who $P127, $P126
    set $P128, $P127[$P125]
    unless_null $P128, vivify_60
    new $P128, "Undef"
  vivify_60:
    find_lex $P129, "$_"
    unless_null $P129, vivify_61
    new $P129, "Undef"
  vivify_61:
    $P130 = $P129."value"()
    $P131 = "merge_globals"($P128, $P130)
.annotate 'line', 91
    set $P121, $P131
  if_1038_end:
.annotate 'line', 86
    .return ($P121)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "ctxsave" :anon :subid("16_1309859062.93") :outer("11_1309859062.93")
    .param pmc param_1047
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 5
    .lex "self", param_1047
.annotate 'line', 7

                $P0 = getinterp
                $P1048 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1048
.annotate 'line', 11
    new $P102, "Integer"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 5
    .return ($P102)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_module" :anon :subid("17_1309859062.93") :outer("11_1309859062.93")
    .param pmc param_1052
    .param pmc param_1053
    .param pmc param_1054
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 14
    .const 'Sub' $P1099 = "22_1309859062.93" 
    capture_lex $P1099
    .const 'Sub' $P1092 = "21_1309859062.93" 
    capture_lex $P1092
    .const 'Sub' $P1084 = "20_1309859062.93" 
    capture_lex $P1084
    .const 'Sub' $P1060 = "18_1309859062.93" 
    capture_lex $P1060
    new $P1051, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1051, control_1050
    push_eh $P1051
    .lex "self", param_1052
    .lex "$module_name", param_1053
    .lex "$cur_GLOBALish", param_1054
.annotate 'line', 18
    new $P102, "Undef"
    set $P1055, $P102
    .lex "$module_ctx", $P1055
.annotate 'line', 19
    new $P103, "Undef"
    set $P1056, $P103
    .lex "$path", $P1056
.annotate 'line', 20
    $P1058 = root_new ['parrot';'ResizablePMCArray']
    set $P1057, $P1058
    .lex "@prefixes", $P1057
.annotate 'line', 14
    find_lex $P104, "$module_ctx"
    unless_null $P104, vivify_67
    new $P104, "Undef"
  vivify_67:
.annotate 'line', 19
    find_lex $P104, "$module_name"
    unless_null $P104, vivify_68
    new $P104, "Undef"
  vivify_68:
    set $S100, $P104
    split $P105, "::", $S100
    join $S101, "/", $P105
    new $P106, 'String'
    set $P106, $S101
    concat $P107, $P106, ".pbc"
    store_lex "$path", $P107
.annotate 'line', 20
    new $P104, "ResizablePMCArray"
    store_lex "@prefixes", $P104
.annotate 'line', 21
    .const 'Sub' $P1060 = "18_1309859062.93" 
    capture_lex $P1060
    $P1060()
.annotate 'line', 34
    find_lex $P1082, "@prefixes"
    unless_null $P1082, vivify_80
    $P1082 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    defined $I100, $P1082
    unless $I100, for_undef_81
    iter $P104, $P1082
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1087_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1087_test:
    unless $P104, loop1087_done
    shift $P105, $P104
  loop1087_redo:
    .const 'Sub' $P1084 = "20_1309859062.93" 
    capture_lex $P1084
    $P1084($P105)
  loop1087_next:
    goto loop1087_test
  loop1087_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1087_next
    eq $P108, .CONTROL_LOOP_REDO, loop1087_redo
  loop1087_done:
    pop_eh 
  for_undef_81:
.annotate 'line', 40
    find_lex $P104, "$path"
    unless_null $P104, vivify_86
    new $P104, "Undef"
  vivify_86:
    find_lex $P1089, "%modules_loaded"
    unless_null $P1089, vivify_87
    $P1089 = root_new ['parrot';'Hash']
  vivify_87:
    set $P105, $P1089[$P104]
    unless_null $P105, vivify_88
    new $P105, "Undef"
  vivify_88:
    defined $I100, $P105
    if $I100, if_1088
.annotate 'line', 43
    .const 'Sub' $P1092 = "21_1309859062.93" 
    capture_lex $P1092
    $P1092()
    goto if_1088_end
  if_1088:
.annotate 'line', 41
    find_lex $P106, "$path"
    unless_null $P106, vivify_97
    new $P106, "Undef"
  vivify_97:
    find_lex $P1090, "%modules_loaded"
    unless_null $P1090, vivify_98
    $P1090 = root_new ['parrot';'Hash']
  vivify_98:
    set $P107, $P1090[$P106]
    unless_null $P107, vivify_99
    new $P107, "Undef"
  vivify_99:
    store_lex "$module_ctx", $P107
  if_1088_end:
.annotate 'line', 53
    find_lex $P104, "$module_ctx"
    unless_null $P104, vivify_100
    new $P104, "Undef"
  vivify_100:
    defined $I100, $P104
    unless $I100, if_1097_end
    .const 'Sub' $P1099 = "22_1309859062.93" 
    capture_lex $P1099
    $P1099()
  if_1097_end:
.annotate 'line', 61
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    find_lex $P105, "$module_ctx"
    unless_null $P105, vivify_107
    new $P105, "Undef"
  vivify_107:
    setattribute $P104, 'payload', $P105
    throw $P104
.annotate 'line', 14
    .return ()
  control_1050:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1059"  :anon :subid("18_1309859062.93") :outer("17_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 21
    .const 'Sub' $P1073 = "19_1309859062.93" 
    capture_lex $P1073
    new $P1069, 'ExceptionHandler'
    set_label $P1069, control_1068
    $P1069."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1069
.annotate 'line', 22
    new $P104, "Undef"
    set $P1061, $P104
    .lex "$prefix", $P1061
    find_dynamic_lex $P107, "%*COMPILING"
    unless_null $P107, vivify_69
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_70
    die "Contextual %*COMPILING not found"
  vivify_70:
  vivify_69:
    set $P1062, $P107["%?OPTIONS"]
    unless_null $P1062, vivify_71
    $P1062 = root_new ['parrot';'Hash']
  vivify_71:
    set $P108, $P1062["module-path"]
    unless_null $P108, vivify_72
    new $P108, "Undef"
  vivify_72:
    store_lex "$prefix", $P108
.annotate 'line', 23
    find_lex $P105, "$prefix"
    unless_null $P105, vivify_73
    new $P105, "Undef"
  vivify_73:
    if $P105, if_1063
.annotate 'line', 26
    find_lex $P1065, "@prefixes"
    unless_null $P1065, vivify_74
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_74:
    push $P1065, "."
.annotate 'line', 27
    find_lex $P1066, "@prefixes"
    unless_null $P1066, vivify_75
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_75:
    push $P1066, "blib"
.annotate 'line', 25
    goto if_1063_end
  if_1063:
.annotate 'line', 24
    find_lex $P1064, "@prefixes"
    unless_null $P1064, vivify_76
    $P1064 = root_new ['parrot';'ResizablePMCArray']
  vivify_76:
    find_lex $P106, "$prefix"
    unless_null $P106, vivify_77
    new $P106, "Undef"
  vivify_77:
    push $P1064, $P106
  if_1063_end:
.annotate 'line', 21
    pop_eh 
    goto skip_handler_1067
  control_1068:
.annotate 'line', 29
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1073 = "19_1309859062.93" 
    newclosure $P1079, $P1073
    $P1079(exception)
    new $P1080, 'Integer'
    set $P1080, 1
    set exception["handled"], $P1080
    set $I1081, exception["handled"]
    ne $I1081, 1, nothandled_1071
  handled_1070:
    .return (exception)
  nothandled_1071:
    rethrow exception
  skip_handler_1067:
.annotate 'line', 21
    .return ()
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1072"  :anon :subid("19_1309859062.93") :outer("18_1309859062.93")
    .param pmc param_1074
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 29
    .lex "$_", param_1074
    find_lex $P1075, "$_"
    set $P1076, $P1075
    .lex "$!", $P1076
.annotate 'line', 30
    find_lex $P1077, "@prefixes"
    unless_null $P1077, vivify_78
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    push $P1077, "."
.annotate 'line', 31
    find_lex $P1078, "@prefixes"
    unless_null $P1078, vivify_79
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_79:
    push $P1078, "blib"
.annotate 'line', 29
    .return ($P1078)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1083"  :anon :subid("20_1309859062.93") :outer("17_1309859062.93")
    .param pmc param_1085
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 34
    .lex "$prefix", param_1085
.annotate 'line', 35
    find_lex $P107, "$prefix"
    unless_null $P107, vivify_82
    new $P107, "Undef"
  vivify_82:
    concat $P108, $P107, "/"
    find_lex $P109, "$path"
    unless_null $P109, vivify_83
    new $P109, "Undef"
  vivify_83:
    concat $P110, $P108, $P109
    set $S100, $P110
    stat $I101, $S100, 0
    if $I101, if_1086
    new $P106, 'Integer'
    set $P106, $I101
    goto if_1086_end
  if_1086:
.annotate 'line', 36
    find_lex $P111, "$prefix"
    unless_null $P111, vivify_84
    new $P111, "Undef"
  vivify_84:
    concat $P112, $P111, "/"
    find_lex $P113, "$path"
    unless_null $P113, vivify_85
    new $P113, "Undef"
  vivify_85:
    concat $P114, $P112, $P113
    store_lex "$path", $P114
.annotate 'line', 37
    die 0, .CONTROL_LOOP_LAST
  if_1086_end:
.annotate 'line', 34
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1091"  :anon :subid("21_1309859062.93") :outer("17_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 44
    new $P106, "Undef"
    set $P1093, $P106
    .lex "$*CTXSAVE", $P1093
.annotate 'line', 45
    new $P107, "Undef"
    set $P1094, $P107
    .lex "$*MAIN_CTX", $P1094
.annotate 'line', 46
    new $P108, "Undef"
    set $P1095, $P108
    .lex "$preserve_global", $P1095
.annotate 'line', 44
    find_lex $P109, "self"
    store_lex "$*CTXSAVE", $P109
.annotate 'line', 43
    find_lex $P111, "$*MAIN_CTX"
    unless_null $P111, vivify_89
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_90
    die "Contextual $*MAIN_CTX not found"
  vivify_90:
  vivify_89:
.annotate 'line', 46
    get_hll_global $P109, "GLOBAL"
    store_lex "$preserve_global", $P109
.annotate 'line', 47
    find_lex $P109, "$path"
    unless_null $P109, vivify_91
    new $P109, "Undef"
  vivify_91:
    set $S100, $P109
    load_bytecode $S100
.annotate 'line', 48
    find_lex $P109, "$preserve_global"
    unless_null $P109, vivify_92
    new $P109, "Undef"
  vivify_92:
    set_hll_global "GLOBAL", $P109
.annotate 'line', 49
    find_lex $P111, "$*MAIN_CTX"
    unless_null $P111, vivify_93
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["$MAIN_CTX"]
    unless_null $P111, vivify_94
    die "Contextual $*MAIN_CTX not found"
  vivify_94:
  vivify_93:
    store_lex "$module_ctx", $P111
    find_lex $P112, "$path"
    unless_null $P112, vivify_95
    new $P112, "Undef"
  vivify_95:
    find_lex $P1096, "%modules_loaded"
    unless_null $P1096, vivify_96
    $P1096 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1096
  vivify_96:
    set $P1096[$P112], $P111
.annotate 'line', 43
    .return ($P111)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1098"  :anon :subid("22_1309859062.93") :outer("17_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 55
    new $P105, "Undef"
    set $P1100, $P105
    .lex "$UNIT", $P1100
    find_lex $P106, "$module_ctx"
    unless_null $P106, vivify_101
    new $P106, "Undef"
  vivify_101:
    getattribute $P107, $P106, "lex_pad"
    store_lex "$UNIT", $P107
.annotate 'line', 56
    find_lex $P1102, "$UNIT"
    unless_null $P1102, vivify_102
    $P1102 = root_new ['parrot';'Hash']
  vivify_102:
    set $P107, $P1102["GLOBALish"]
    unless_null $P107, vivify_103
    new $P107, "Undef"
  vivify_103:
    isnull $I101, $P107
    unless $I101, unless_1101
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_1101_end
  unless_1101:
.annotate 'line', 57
    find_lex $P108, "$cur_GLOBALish"
    unless_null $P108, vivify_104
    new $P108, "Undef"
  vivify_104:
    find_lex $P1103, "$UNIT"
    unless_null $P1103, vivify_105
    $P1103 = root_new ['parrot';'Hash']
  vivify_105:
    set $P109, $P1103["GLOBALish"]
    unless_null $P109, vivify_106
    new $P109, "Undef"
  vivify_106:
    $P110 = "merge_globals"($P108, $P109)
.annotate 'line', 56
    set $P106, $P110
  unless_1101_end:
.annotate 'line', 53
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "load_setting" :anon :subid("23_1309859062.93") :outer("11_1309859062.93")
    .param pmc param_1107
    .param pmc param_1108
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 102
    .const 'Sub' $P1112 = "24_1309859062.93" 
    capture_lex $P1112
    new $P1106, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1106, control_1105
    push_eh $P1106
    .lex "self", param_1107
    .lex "$setting_name", param_1108
.annotate 'line', 103
    new $P102, "Undef"
    set $P1109, $P102
    .lex "$setting", $P1109
.annotate 'line', 102
    find_lex $P103, "$setting"
    unless_null $P103, vivify_108
    new $P103, "Undef"
  vivify_108:
.annotate 'line', 105
    find_lex $P103, "$setting_name"
    unless_null $P103, vivify_109
    new $P103, "Undef"
  vivify_109:
    set $S100, $P103
    isne $I100, $S100, "NULL"
    unless $I100, if_1110_end
    .const 'Sub' $P1112 = "24_1309859062.93" 
    capture_lex $P1112
    $P1112()
  if_1110_end:
.annotate 'line', 131
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    find_lex $P104, "$setting"
    unless_null $P104, vivify_135
    new $P104, "Undef"
  vivify_135:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 102
    .return ()
  control_1105:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1111"  :anon :subid("24_1309859062.93") :outer("23_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 105
    .const 'Sub' $P1129 = "26_1309859062.93" 
    capture_lex $P1129
    .const 'Sub' $P1115 = "25_1309859062.93" 
    capture_lex $P1115
.annotate 'line', 107
    new $P104, "Undef"
    set $P1113, $P104
    .lex "$path", $P1113
    find_lex $P105, "$setting_name"
    unless_null $P105, vivify_110
    new $P105, "Undef"
  vivify_110:
    concat $P106, $P105, ".setting.pbc"
    store_lex "$path", $P106
.annotate 'line', 108
    .const 'Sub' $P1115 = "25_1309859062.93" 
    capture_lex $P1115
    $P1115()
.annotate 'line', 116
    find_lex $P105, "$path"
    unless_null $P105, vivify_118
    new $P105, "Undef"
  vivify_118:
    find_lex $P1127, "%settings_loaded"
    unless_null $P1127, vivify_119
    $P1127 = root_new ['parrot';'Hash']
  vivify_119:
    set $P106, $P1127[$P105]
    unless_null $P106, vivify_120
    new $P106, "Undef"
  vivify_120:
    defined $I101, $P106
    if $I101, unless_1126_end
    .const 'Sub' $P1129 = "26_1309859062.93" 
    capture_lex $P1129
    $P1129()
  unless_1126_end:
.annotate 'line', 128
    find_lex $P105, "$path"
    unless_null $P105, vivify_132
    new $P105, "Undef"
  vivify_132:
    find_lex $P1135, "%settings_loaded"
    unless_null $P1135, vivify_133
    $P1135 = root_new ['parrot';'Hash']
  vivify_133:
    set $P106, $P1135[$P105]
    unless_null $P106, vivify_134
    new $P106, "Undef"
  vivify_134:
    store_lex "$setting", $P106
.annotate 'line', 105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.include "except_types.pasm"
.sub "_block1114"  :anon :subid("25_1309859062.93") :outer("24_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 108
    new $P1121, 'ExceptionHandler'
    set_label $P1121, control_1120
    $P1121."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1121
.annotate 'line', 109
    new $P105, "Undef"
    set $P1116, $P105
    .lex "$prefix", $P1116
    find_dynamic_lex $P108, "%*COMPILING"
    unless_null $P108, vivify_111
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%COMPILING"]
    unless_null $P108, vivify_112
    die "Contextual %*COMPILING not found"
  vivify_112:
  vivify_111:
    set $P1117, $P108["%?OPTIONS"]
    unless_null $P1117, vivify_113
    $P1117 = root_new ['parrot';'Hash']
  vivify_113:
    set $P109, $P1117["setting-path"]
    unless_null $P109, vivify_114
    new $P109, "Undef"
  vivify_114:
    store_lex "$prefix", $P109
.annotate 'line', 110
    find_lex $P107, "$prefix"
    unless_null $P107, vivify_115
    new $P107, "Undef"
  vivify_115:
    if $P107, if_1118
    set $P106, $P107
    goto if_1118_end
  if_1118:
.annotate 'line', 111
    find_lex $P108, "$prefix"
    unless_null $P108, vivify_116
    new $P108, "Undef"
  vivify_116:
    concat $P109, $P108, "/"
    find_lex $P110, "$path"
    unless_null $P110, vivify_117
    new $P110, "Undef"
  vivify_117:
    concat $P111, $P109, $P110
    store_lex "$path", $P111
.annotate 'line', 110
    set $P106, $P111
  if_1118_end:
.annotate 'line', 108
    pop_eh 
    goto skip_handler_1119
  control_1120:
    .local pmc exception 
    .get_results (exception) 
    new $P1124, 'Integer'
    set $P1124, 1
    set exception["handled"], $P1124
    set $I1125, exception["handled"]
    ne $I1125, 1, nothandled_1123
  handled_1122:
    .return (exception)
  nothandled_1123:
    rethrow exception
  skip_handler_1119:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "_block1128"  :anon :subid("26_1309859062.93") :outer("24_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 117
    new $P107, "Undef"
    set $P1130, $P107
    .lex "$*CTXSAVE", $P1130
.annotate 'line', 118
    new $P108, "Undef"
    set $P1131, $P108
    .lex "$*MAIN_CTX", $P1131
.annotate 'line', 119
    new $P109, "Undef"
    set $P1132, $P109
    .lex "$preserve_global", $P1132
.annotate 'line', 117
    find_lex $P110, "self"
    store_lex "$*CTXSAVE", $P110
.annotate 'line', 116
    find_lex $P112, "$*MAIN_CTX"
    unless_null $P112, vivify_121
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_122
    die "Contextual $*MAIN_CTX not found"
  vivify_122:
  vivify_121:
.annotate 'line', 119
    get_hll_global $P110, "GLOBAL"
    store_lex "$preserve_global", $P110
.annotate 'line', 120
    find_lex $P110, "$path"
    unless_null $P110, vivify_123
    new $P110, "Undef"
  vivify_123:
    set $S101, $P110
    load_bytecode $S101
.annotate 'line', 121
    find_lex $P110, "$preserve_global"
    unless_null $P110, vivify_124
    new $P110, "Undef"
  vivify_124:
    set_hll_global "GLOBAL", $P110
.annotate 'line', 122
    find_lex $P112, "$*MAIN_CTX"
    unless_null $P112, vivify_125
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_126
    die "Contextual $*MAIN_CTX not found"
  vivify_126:
  vivify_125:
    defined $I102, $P112
    if $I102, unless_1133_end
.annotate 'line', 123
    new $P113, 'String'
    set $P113, "Unable to load setting "
    find_lex $P114, "$setting_name"
    unless_null $P114, vivify_127
    new $P114, "Undef"
  vivify_127:
    concat $P115, $P113, $P114
    concat $P116, $P115, "; maybe it is missing a YOU_ARE_HERE?"
    die $P116
  unless_1133_end:
.annotate 'line', 125
    find_lex $P112, "$*MAIN_CTX"
    unless_null $P112, vivify_128
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["$MAIN_CTX"]
    unless_null $P112, vivify_129
    die "Contextual $*MAIN_CTX not found"
  vivify_129:
  vivify_128:
    find_lex $P113, "$path"
    unless_null $P113, vivify_130
    new $P113, "Undef"
  vivify_130:
    find_lex $P1134, "%settings_loaded"
    unless_null $P1134, vivify_131
    $P1134 = root_new ['parrot';'Hash']
    store_lex "%settings_loaded", $P1134
  vivify_131:
    set $P1134[$P113], $P112
.annotate 'line', 116
    .return ($P112)
.end


.HLL "nqp"

.namespace ["ModuleLoader"]
.sub "set_mainline_module" :anon :subid("27_1309859062.93") :outer("11_1309859062.93")
    .param pmc param_1137
    .param pmc param_1138
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 136
    .lex "self", param_1137
    .lex "$mainline_ctx", param_1138
.annotate 'line', 139
    new $P102, "Undef"
    set $P1139, $P102
    .lex "$module_name", $P1139
    getinterp $P103
    set $P1140, $P103[2]
    unless_null $P1140, vivify_136
    $P1140 = root_new ['parrot';'ResizablePMCArray']
  vivify_136:
    set $P104, $P1140[0]
    unless_null $P104, vivify_137
    new $P104, "Undef"
  vivify_137:
    store_lex "$module_name", $P104
.annotate 'line', 140
    find_lex $P103, "$module_name"
    unless_null $P103, vivify_138
    new $P103, "Undef"
  vivify_138:
    set $S100, $P103
    substr $S101, $S100, 0, 2
    iseq $I100, $S101, "./"
    unless $I100, if_1141_end
.annotate 'line', 141
    find_lex $P104, "$module_name"
    unless_null $P104, vivify_139
    new $P104, "Undef"
  vivify_139:
    set $S102, $P104
    find_lex $P105, "$module_name"
    unless_null $P105, vivify_140
    new $P105, "Undef"
  vivify_140:
    set $S103, $P105
    length $I101, $S103
    new $P106, 'Integer'
    set $P106, $I101
    sub $P107, $P106, 2
    set $I102, $P107
    substr $S104, $S102, 2, $I102
    new $P108, 'String'
    set $P108, $S104
    store_lex "$module_name", $P108
  if_1141_end:
.annotate 'line', 143
    find_lex $P103, "$module_name"
    unless_null $P103, vivify_141
    new $P103, "Undef"
  vivify_141:
    set $S100, $P103
    find_lex $P104, "$module_name"
    unless_null $P104, vivify_142
    new $P104, "Undef"
  vivify_142:
    set $S101, $P104
    length $I100, $S101
    new $P105, 'Integer'
    set $P105, $I100
    sub $P106, $P105, 4
    set $I101, $P106
    substr $S102, $S100, $I101, 4
    iseq $I102, $S102, ".pbc"
    if $I102, if_1142
.annotate 'line', 146
    find_lex $P107, "$module_name"
    unless_null $P107, vivify_143
    new $P107, "Undef"
  vivify_143:
    set $S103, $P107
    find_lex $P108, "$module_name"
    unless_null $P108, vivify_144
    new $P108, "Undef"
  vivify_144:
    set $S104, $P108
    length $I103, $S104
    new $P109, 'Integer'
    set $P109, $I103
    sub $P110, $P109, 4
    set $I104, $P110
    substr $S105, $S103, $I104, 4
    iseq $I105, $S105, ".exe"
    if $I105, if_1143
.annotate 'line', 151
    find_lex $P111, "$module_name"
    unless_null $P111, vivify_145
    new $P111, "Undef"
  vivify_145:
    concat $P112, $P111, ".pbc"
    store_lex "$module_name", $P112
.annotate 'line', 150
    goto if_1143_end
  if_1143:
.annotate 'line', 148
    find_lex $P111, "$module_name"
    unless_null $P111, vivify_146
    new $P111, "Undef"
  vivify_146:
    set $S106, $P111
    find_lex $P112, "$module_name"
    unless_null $P112, vivify_147
    new $P112, "Undef"
  vivify_147:
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
    store_lex "$module_name", $P116
  if_1143_end:
.annotate 'line', 146
    goto if_1142_end
  if_1142:
  if_1142_end:
.annotate 'line', 155
    find_lex $P103, "$mainline_ctx"
    unless_null $P103, vivify_148
    new $P103, "Undef"
  vivify_148:
    find_lex $P104, "$module_name"
    unless_null $P104, vivify_149
    new $P104, "Undef"
  vivify_149:
    find_lex $P1144, "%modules_loaded"
    unless_null $P1144, vivify_150
    $P1144 = root_new ['parrot';'Hash']
    store_lex "%modules_loaded", $P1144
  vivify_150:
    set $P1144[$P104], $P103
.annotate 'line', 136
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "_block1147" :load :anon :subid("28_1309859062.93")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P1149 = "10_1309859062.93" 
    $P106 = $P1149()
    .return ($P106)
.end

