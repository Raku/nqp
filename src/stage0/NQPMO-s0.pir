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
.sub "_block1000"  :anon :subid("10_1323686348.97588")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2109 = "184_1323686348.97588" 
    capture_lex $P2109
    .const 'Sub' $P2069 = "174_1323686348.97588" 
    capture_lex $P2069
    .const 'Sub' $P2018 = "162_1323686348.97588" 
    capture_lex $P2018
    .const 'Sub' $P1977 = "152_1323686348.97588" 
    capture_lex $P1977
    .const 'Sub' $P1497 = "90_1323686348.97588" 
    capture_lex $P1497
    .const 'Sub' $P1353 = "64_1323686348.97588" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "55_1323686348.97588" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "32_1323686348.97588" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "22_1323686348.97588" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "11_1323686348.97588" 
    capture_lex $P1016
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "Archetypes", $P1005
    .lex "RoleToRoleApplier", $P1006
    .lex "NQPConcreteRoleHOW", $P1007
    .lex "RoleToClassApplier", $P1008
    .lex "NQPParametricRoleHOW", $P1009
    .lex "NQPClassHOW", $P1010
    .lex "NQPNativeHOW", $P1011
    .lex "NQPAttribute", $P1012
    .lex "NQPModuleHOW", $P1013
    .lex "EXPORTHOW", $P1014
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P1016 = "11_1323686348.97588" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "22_1323686348.97588" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "32_1323686348.97588" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "55_1323686348.97588" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "64_1323686348.97588" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 574
    .const 'Sub' $P1497 = "90_1323686348.97588" 
    capture_lex $P1497
    $P1497()
.annotate 'line', 1082
    .const 'Sub' $P1977 = "152_1323686348.97588" 
    capture_lex $P1977
    $P1977()
.annotate 'line', 1133
    .const 'Sub' $P2018 = "162_1323686348.97588" 
    capture_lex $P2018
    $P2018()
.annotate 'line', 1215
    .const 'Sub' $P2069 = "174_1323686348.97588" 
    capture_lex $P2069
    $P2069()
.annotate 'line', 1269
    .const 'Sub' $P2109 = "184_1323686348.97588" 
    capture_lex $P2109
    $P2109()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_2112
    set $P100, $P101
    goto if_2112_end
  if_2112:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2112_end:
    .return ($P100)
    .const 'Sub' $P2114 = "185_1323686348.97588" 
    .return ($P2114)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post186") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1323686348.97588" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1323686346.03416"
    isnull $I100, $P107
    if $I100, if_2116
    goto if_2116_end
  if_2116:
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1323686346.03416"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src/stage2/gen/nqp-mo.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I101, $P112
    unless $I101, if_2117_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2117_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P113
    .const 'LexInfo' $P2118 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 0
    $P2118."set_static_lexpad_value"("GLOBALish", $P112)
    .const 'LexInfo' $P2119 = "10_1323686348.97588" 
    $P2119."finish_static_lexpad"()
    .const 'LexInfo' $P2120 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 0
    $P2120."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2121 = "10_1323686348.97588" 
    $P2121."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("Archetypes" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P113
    .const 'LexInfo' $P2122 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 1
    $P2122."set_static_lexpad_value"("Archetypes", $P112)
    .const 'LexInfo' $P2123 = "10_1323686348.97588" 
    $P2123."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominal" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!generic" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!parametric" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2124 = "12_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2124)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2125 = "13_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2125)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2126 = "14_1323686348.97588" 
    $P113."add_method"($P114, "nominal", $P2126)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2127 = "15_1323686348.97588" 
    $P113."add_method"($P114, "nominalizable", $P2127)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2128 = "16_1323686348.97588" 
    $P113."add_method"($P114, "inheritable", $P2128)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2129 = "17_1323686348.97588" 
    $P113."add_method"($P114, "inheritalizable", $P2129)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2130 = "18_1323686348.97588" 
    $P113."add_method"($P114, "composable", $P2130)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2131 = "19_1323686348.97588" 
    $P113."add_method"($P114, "composalizable", $P2131)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2132 = "20_1323686348.97588" 
    $P113."add_method"($P114, "generic", $P2132)
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    .const '' $P2133 = "21_1323686348.97588" 
    $P113."add_method"($P114, "parametric", $P2133)
    .const 'LexInfo' $P2134 = "11_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 1
    $P2134."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2135 = "11_1323686348.97588" 
    $P2135."finish_static_lexpad"()
    .const 'LexInfo' $P2136 = "11_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 1
    $P2136."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2137 = "11_1323686348.97588" 
    $P2137."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 12, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 12
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'LexInfo' $P2138 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 12
    $P2138."set_static_lexpad_value"("RoleToRoleApplier", $P112)
    .const 'LexInfo' $P2139 = "10_1323686348.97588" 
    $P2139."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 12
    .const '' $P2140 = "23_1323686348.97588" 
    $P113."add_method"($P114, "apply", $P2140)
    .const 'LexInfo' $P2141 = "22_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 12
    $P2141."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2142 = "22_1323686348.97588" 
    $P2142."finish_static_lexpad"()
    .const 'LexInfo' $P2143 = "22_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 12
    $P2143."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2144 = "22_1323686348.97588" 
    $P2144."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 12
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 14, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 14
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'LexInfo' $P2145 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 14
    $P2145."set_static_lexpad_value"("NQPConcreteRoleHOW", $P112)
    .const 'LexInfo' $P2146 = "10_1323686348.97588" 
    $P2146."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!role_typecheck_list" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2147 = "33_1323686348.97588" 
    $P113."add_method"($P114, "archetypes", $P2147)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2148 = "34_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2148)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2149 = "35_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2149)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2150 = "36_1323686348.97588" 
    $P113."add_method"($P114, "new_type", $P2150)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2151 = "37_1323686348.97588" 
    $P113."add_method"($P114, "add_method", $P2151)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2152 = "38_1323686348.97588" 
    $P113."add_method"($P114, "add_multi_method", $P2152)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2153 = "39_1323686348.97588" 
    $P113."add_method"($P114, "add_attribute", $P2153)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2154 = "40_1323686348.97588" 
    $P113."add_method"($P114, "add_parent", $P2154)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2155 = "41_1323686348.97588" 
    $P113."add_method"($P114, "add_role", $P2155)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2156 = "42_1323686348.97588" 
    $P113."add_method"($P114, "add_collision", $P2156)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2157 = "43_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2157)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2158 = "45_1323686348.97588" 
    $P113."add_method"($P114, "methods", $P2158)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2159 = "47_1323686348.97588" 
    $P113."add_method"($P114, "method_table", $P2159)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2160 = "48_1323686348.97588" 
    $P113."add_method"($P114, "collisions", $P2160)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2161 = "49_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2161)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2162 = "50_1323686348.97588" 
    $P113."add_method"($P114, "attributes", $P2162)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2163 = "52_1323686348.97588" 
    $P113."add_method"($P114, "roles", $P2163)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2164 = "53_1323686348.97588" 
    $P113."add_method"($P114, "role_typecheck_list", $P2164)
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    .const '' $P2165 = "54_1323686348.97588" 
    $P113."add_method"($P114, "instance_of", $P2165)
    .const 'LexInfo' $P2166 = "32_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 14
    $P2166."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2167 = "32_1323686348.97588" 
    $P2167."finish_static_lexpad"()
    .const 'LexInfo' $P2168 = "32_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 14
    $P2168."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2169 = "32_1323686348.97588" 
    $P2169."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 14
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 34, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 34
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'LexInfo' $P2170 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 34
    $P2170."set_static_lexpad_value"("RoleToClassApplier", $P112)
    .const 'LexInfo' $P2171 = "10_1323686348.97588" 
    $P2171."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 34
    .const '' $P2172 = "59_1323686348.97588" 
    $P113."add_method"($P114, "apply", $P2172)
    .const 'LexInfo' $P2173 = "55_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 34
    $P2173."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2174 = "55_1323686348.97588" 
    $P2174."finish_static_lexpad"()
    .const 'LexInfo' $P2175 = "55_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 34
    $P2175."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2176 = "55_1323686348.97588" 
    $P2176."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 34
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 36, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 36
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'LexInfo' $P2177 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 36
    $P2177."set_static_lexpad_value"("NQPParametricRoleHOW", $P112)
    .const 'LexInfo' $P2178 = "10_1323686348.97588" 
    $P2178."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2179 = "66_1323686348.97588" 
    $P113."add_method"($P114, "archetypes", $P2179)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2180 = "67_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2180)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2181 = "68_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2181)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2182 = "69_1323686348.97588" 
    $P113."add_method"($P114, "new_type", $P2182)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2183 = "70_1323686348.97588" 
    $P113."add_method"($P114, "set_body_block", $P2183)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2184 = "71_1323686348.97588" 
    $P113."add_method"($P114, "add_method", $P2184)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2185 = "72_1323686348.97588" 
    $P113."add_method"($P114, "add_multi_method", $P2185)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2186 = "73_1323686348.97588" 
    $P113."add_method"($P114, "add_attribute", $P2186)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2187 = "74_1323686348.97588" 
    $P113."add_method"($P114, "add_parent", $P2187)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2188 = "75_1323686348.97588" 
    $P113."add_method"($P114, "add_role", $P2188)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2189 = "76_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2189)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2190 = "77_1323686348.97588" 
    $P113."add_method"($P114, "parametric", $P2190)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2191 = "78_1323686348.97588" 
    $P113."add_method"($P114, "specialize", $P2191)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2192 = "83_1323686348.97588" 
    $P113."add_method"($P114, "methods", $P2192)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2193 = "85_1323686348.97588" 
    $P113."add_method"($P114, "method_table", $P2193)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2194 = "86_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2194)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2195 = "87_1323686348.97588" 
    $P113."add_method"($P114, "attributes", $P2195)
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    .const '' $P2196 = "89_1323686348.97588" 
    $P113."add_method"($P114, "roles", $P2196)
    .const 'LexInfo' $P2197 = "64_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 36
    $P2197."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2198 = "64_1323686348.97588" 
    $P2198."finish_static_lexpad"()
    .const 'LexInfo' $P2199 = "64_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 36
    $P2199."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2200 = "64_1323686348.97588" 
    $P2200."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 36
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 55, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 55
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'LexInfo' $P2201 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 55
    $P2201."set_static_lexpad_value"("NQPClassHOW", $P112)
    .const 'LexInfo' $P2202 = "10_1323686348.97588" 
    $P2202."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!cache" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2203 = "101_1323686348.97588" 
    $P113."add_method"($P114, "archetypes", $P2203)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2204 = "102_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2204)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2205 = "103_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2205)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2206 = "104_1323686348.97588" 
    $P113."add_method"($P114, "new_type", $P2206)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2207 = "105_1323686348.97588" 
    $P113."add_method"($P114, "add_method", $P2207)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2208 = "106_1323686348.97588" 
    $P113."add_method"($P114, "add_multi_method", $P2208)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2209 = "107_1323686348.97588" 
    $P113."add_method"($P114, "add_attribute", $P2209)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2210 = "108_1323686348.97588" 
    $P113."add_method"($P114, "add_parent", $P2210)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2211 = "110_1323686348.97588" 
    $P113."add_method"($P114, "set_default_parent", $P2211)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2212 = "111_1323686348.97588" 
    $P113."add_method"($P114, "add_role", $P2212)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2213 = "113_1323686348.97588" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2213)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2214 = "114_1323686348.97588" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2214)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2215 = "115_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2215)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2216 = "119_1323686348.97588" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2216)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2217 = "124_1323686348.97588" 
    $P113."add_method"($P114, "publish_type_cache", $P2217)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2218 = "127_1323686348.97588" 
    $P113."add_method"($P114, "publish_method_cache", $P2218)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2219 = "129_1323686348.97588" 
    $P113."add_method"($P114, "publish_boolification_spec", $P2219)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2220 = "130_1323686348.97588" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2220)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2221 = "132_1323686348.97588" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2221)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2222 = "134_1323686348.97588" 
    $P113."add_method"($P114, "parents", $P2222)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2223 = "135_1323686348.97588" 
    $P113."add_method"($P114, "mro", $P2223)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2224 = "136_1323686348.97588" 
    $P113."add_method"($P114, "roles", $P2224)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2225 = "137_1323686348.97588" 
    $P113."add_method"($P114, "methods", $P2225)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2226 = "139_1323686348.97588" 
    $P113."add_method"($P114, "method_table", $P2226)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2227 = "140_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2227)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2228 = "141_1323686348.97588" 
    $P113."add_method"($P114, "attributes", $P2228)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2229 = "143_1323686348.97588" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2229)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2230 = "144_1323686348.97588" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2230)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2231 = "145_1323686348.97588" 
    $P113."add_method"($P114, "isa", $P2231)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2232 = "146_1323686348.97588" 
    $P113."add_method"($P114, "does", $P2232)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2233 = "147_1323686348.97588" 
    $P113."add_method"($P114, "can", $P2233)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2234 = "149_1323686348.97588" 
    $P113."add_method"($P114, "find_method", $P2234)
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    .const '' $P2235 = "151_1323686348.97588" 
    $P113."add_method"($P114, "cache", $P2235)
    .const 'LexInfo' $P2236 = "90_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 55
    $P2236."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2237 = "90_1323686348.97588" 
    $P2237."finish_static_lexpad"()
    .const 'LexInfo' $P2238 = "90_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 55
    $P2238."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2239 = "90_1323686348.97588" 
    $P2239."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 55
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 89, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 89
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'LexInfo' $P2240 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 89
    $P2240."set_static_lexpad_value"("NQPNativeHOW", $P112)
    .const 'LexInfo' $P2241 = "10_1323686348.97588" 
    $P2241."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2242 = "153_1323686348.97588" 
    $P113."add_method"($P114, "archetypes", $P2242)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2243 = "154_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2243)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2244 = "155_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2244)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2245 = "156_1323686348.97588" 
    $P113."add_method"($P114, "new_type", $P2245)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2246 = "157_1323686348.97588" 
    $P113."add_method"($P114, "add_method", $P2246)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2247 = "158_1323686348.97588" 
    $P113."add_method"($P114, "add_multi_method", $P2247)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2248 = "159_1323686348.97588" 
    $P113."add_method"($P114, "add_attribute", $P2248)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2249 = "160_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2249)
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    .const '' $P2250 = "161_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2250)
    .const 'LexInfo' $P2251 = "152_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 89
    $P2251."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2252 = "152_1323686348.97588" 
    $P2252."finish_static_lexpad"()
    .const 'LexInfo' $P2253 = "152_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 89
    $P2253."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2254 = "152_1323686348.97588" 
    $P2254."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 89
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_add_object_to_sc cur_sc, 99, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 99
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'LexInfo' $P2255 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 99
    $P2255."set_static_lexpad_value"("NQPAttribute", $P112)
    .const 'LexInfo' $P2256 = "10_1323686348.97588" 
    $P2256."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!has_type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2257 = "165_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2257)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2258 = "166_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2258)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2259 = "167_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2259)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2260 = "168_1323686348.97588" 
    $P113."add_method"($P114, "type", $P2260)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2261 = "169_1323686348.97588" 
    $P113."add_method"($P114, "has_accessor", $P2261)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2262 = "170_1323686348.97588" 
    $P113."add_method"($P114, "build_closure", $P2262)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2263 = "171_1323686348.97588" 
    $P113."add_method"($P114, "box_target", $P2263)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2264 = "172_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2264)
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    .const '' $P2265 = "173_1323686348.97588" 
    $P113."add_method"($P114, "has_mutator", $P2265)
    .const 'LexInfo' $P2266 = "162_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 99
    $P2266."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2267 = "162_1323686348.97588" 
    $P2267."finish_static_lexpad"()
    .const 'LexInfo' $P2268 = "162_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 99
    $P2268."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2269 = "162_1323686348.97588" 
    $P2269."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 99
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 99
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 109, $P113
    nqp_get_sc_object $P112, "1323686346.03416", 109
    nqp_get_sc_object $P113, "1323686346.03416", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'LexInfo' $P2270 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 109
    $P2270."set_static_lexpad_value"("NQPModuleHOW", $P112)
    .const 'LexInfo' $P2271 = "10_1323686348.97588" 
    $P2271."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2272 = "175_1323686348.97588" 
    $P113."add_method"($P114, "archetypes", $P2272)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2273 = "176_1323686348.97588" 
    $P113."add_method"($P114, "new", $P2273)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2274 = "177_1323686348.97588" 
    $P113."add_method"($P114, "BUILD", $P2274)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2275 = "178_1323686348.97588" 
    $P113."add_method"($P114, "new_type", $P2275)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2276 = "179_1323686348.97588" 
    $P113."add_method"($P114, "add_method", $P2276)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2277 = "180_1323686348.97588" 
    $P113."add_method"($P114, "add_multi_method", $P2277)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2278 = "181_1323686348.97588" 
    $P113."add_method"($P114, "add_attribute", $P2278)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2279 = "182_1323686348.97588" 
    $P113."add_method"($P114, "compose", $P2279)
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    .const '' $P2280 = "183_1323686348.97588" 
    $P113."add_method"($P114, "name", $P2280)
    .const 'LexInfo' $P2281 = "174_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 109
    $P2281."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2282 = "174_1323686348.97588" 
    $P2282."finish_static_lexpad"()
    .const 'LexInfo' $P2283 = "174_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 109
    $P2283."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2284 = "174_1323686348.97588" 
    $P2284."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 109
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 109
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 119, $P113
    .const 'LexInfo' $P2285 = "10_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 119
    $P2285."set_static_lexpad_value"("EXPORTHOW", $P112)
    .const 'LexInfo' $P2286 = "10_1323686348.97588" 
    $P2286."finish_static_lexpad"()
    .const 'LexInfo' $P2287 = "184_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 119
    $P2287."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2288 = "184_1323686348.97588" 
    $P2288."finish_static_lexpad"()
    .const 'LexInfo' $P2289 = "184_1323686348.97588" 
    nqp_get_sc_object $P112, "1323686346.03416", 119
    $P2289."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2290 = "184_1323686348.97588" 
    $P2290."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1323686346.03416", 119
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1323686346.03416", 119
    $P113."compose"($P114)
  if_2116_end:
    nqp_get_sc_object $P112, "1323686346.03416", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("11_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "21_1323686348.97588" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "20_1323686348.97588" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "19_1323686348.97588" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "18_1323686348.97588" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "17_1323686348.97588" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "16_1323686348.97588" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "15_1323686348.97588" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "14_1323686348.97588" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "13_1323686348.97588" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "12_1323686348.97588" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "21_1323686348.97588" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("12_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1020
    .param pmc param_1021 :optional :named("nominal")
    .param int has_param_1021 :opt_flag
    .param pmc param_1022 :optional :named("inheritable")
    .param int has_param_1022 :opt_flag
    .param pmc param_1023 :optional :named("composable")
    .param int has_param_1023 :opt_flag
    .param pmc param_1024 :optional :named("parametric")
    .param int has_param_1024 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 47
    .lex "self", param_1020
    if has_param_1021, optparam_187
    new $P100, "Undef"
    set param_1021, $P100
  optparam_187:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_188
    new $P101, "Undef"
    set param_1022, $P101
  optparam_188:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_189
    new $P102, "Undef"
    set param_1023, $P102
  optparam_189:
    .lex "$composable", param_1023
    if has_param_1024, optparam_190
    new $P103, "Undef"
    set param_1024, $P103
  optparam_190:
    .lex "$parametric", param_1024
.annotate 'line', 48
    new $P104, "Undef"
    set $P1025, $P104
    .lex "$arch", $P1025
    set $P105, param_1020
    nqp_decontainerize $P106, $P105
    repr_instance_of $P107, $P106
    set $P1025, $P107
.annotate 'line', 49
    set $P105, $P1025
    unless_null $P105, vivify_191
    new $P105, "Undef"
  vivify_191:
    set $P106, param_1021
    unless_null $P106, vivify_192
    new $P106, "Undef"
  vivify_192:
    set $P107, param_1022
    unless_null $P107, vivify_193
    new $P107, "Undef"
  vivify_193:
    set $P108, param_1023
    unless_null $P108, vivify_194
    new $P108, "Undef"
  vivify_194:
    set $P109, param_1024
    unless_null $P109, vivify_195
    new $P109, "Undef"
  vivify_195:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    set $P105, $P1025
    unless_null $P105, vivify_196
    new $P105, "Undef"
  vivify_196:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("13_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1027
    .param pmc param_1028 :optional :named("nominal")
    .param int has_param_1028 :opt_flag
    .param pmc param_1029 :optional :named("inheritable")
    .param int has_param_1029 :opt_flag
    .param pmc param_1030 :optional :named("composable")
    .param int has_param_1030 :opt_flag
    .param pmc param_1031 :optional :named("parametric")
    .param int has_param_1031 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 54
    .lex "self", param_1027
    if has_param_1028, optparam_197
    new $P100, "Undef"
    set param_1028, $P100
  optparam_197:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_198
    new $P101, "Undef"
    set param_1029, $P101
  optparam_198:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_199
    new $P102, "Undef"
    set param_1030, $P102
  optparam_199:
    .lex "$composable", param_1030
    if has_param_1031, optparam_200
    new $P103, "Undef"
    set param_1031, $P103
  optparam_200:
    .lex "$parametric", param_1031
.annotate 'line', 55
    set $P104, param_1028
    unless_null $P104, vivify_201
    new $P104, "Undef"
  vivify_201:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    set $P104, param_1029
    unless_null $P104, vivify_202
    new $P104, "Undef"
  vivify_202:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    set $P104, param_1030
    unless_null $P104, vivify_203
    new $P104, "Undef"
  vivify_203:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    set $P104, param_1031
    unless_null $P104, vivify_204
    new $P104, "Undef"
  vivify_204:
    set $P105, param_1027
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("14_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_205
    new $P103, "Undef"
  vivify_205:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("15_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    set $P100, param_1035
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_206
    new $P103, "Undef"
  vivify_206:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("16_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    set $P100, param_1037
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_207
    new $P103, "Undef"
  vivify_207:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("17_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    set $P100, param_1039
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_208
    new $P103, "Undef"
  vivify_208:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("18_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    set $P100, param_1041
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("19_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    set $P100, param_1043
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("20_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    set $P100, param_1045
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("21_1323686348.97588") :outer("11_1323686348.97588")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    set $P100, param_1047
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_212
    new $P103, "Undef"
  vivify_212:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("22_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "23_1323686348.97588" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "23_1323686348.97588" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("23_1323686348.97588") :outer("22_1323686348.97588")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "29_1323686348.97588" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "28_1323686348.97588" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "27_1323686348.97588" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "24_1323686348.97588" 
    capture_lex $P1070
    new $P1055, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1055, control_1054
    push_eh $P1055
    .lex "self", param_1056
    .lex "$target", param_1057
    .lex "@roles", param_1058
.annotate 'line', 75
    $P1060 = root_new ['parrot';'Hash']
    set $P1059, $P1060
    .lex "%meth_info", $P1059
.annotate 'line', 101
    $P1062 = root_new ['parrot';'Hash']
    set $P1061, $P1062
    .lex "%target_meth_info", $P1061
.annotate 'line', 102
    $P1064 = root_new ['parrot';'ResizablePMCArray']
    set $P1063, $P1064
    .lex "@target_meths", $P1063
.annotate 'line', 127
    $P1066 = root_new ['parrot';'ResizablePMCArray']
    set $P1065, $P1066
    .lex "@all_roles", $P1065
.annotate 'line', 73
    set $P1067, $P1059
    unless_null $P1067, vivify_213
    $P1067 = root_new ['parrot';'Hash']
  vivify_213:
.annotate 'line', 76
    set $P1068, param_1058
    unless_null $P1068, vivify_214
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_214:
    defined $I100, $P1068
    unless $I100, for_undef_215
    iter $P100, $P1068
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1098_handler
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "24_1323686348.97588" 
    capture_lex $P1070
    $P1070($P101)
  loop1098_next:
    goto loop1098_test
  loop1098_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1098_next
    eq $P104, .CONTROL_LOOP_REDO, loop1098_redo
  loop1098_done:
    pop_eh 
  for_undef_215:
.annotate 'line', 73
    set $P1099, $P1061
    unless_null $P1099, vivify_239
    $P1099 = root_new ['parrot';'Hash']
  vivify_239:
.annotate 'line', 102
    set $P100, param_1057
    unless_null $P100, vivify_240
    new $P100, "Undef"
  vivify_240:
    get_how $P101, $P100
    set $P102, param_1057
    unless_null $P102, vivify_241
    new $P102, "Undef"
  vivify_241:
    $P103 = $P101."methods"($P102)
    set $P1063, $P103
.annotate 'line', 103
    set $P1100, $P1063
    unless_null $P1100, vivify_242
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_242:
    defined $I100, $P1100
    unless $I100, for_undef_243
    iter $P100, $P1100
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1105_handler
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "27_1323686348.97588" 
    capture_lex $P1102
    $P1102($P101)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P104, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_243:
.annotate 'line', 108
    set $P1106, $P1059
    unless_null $P1106, vivify_247
    $P1106 = root_new ['parrot';'Hash']
  vivify_247:
    defined $I100, $P1106
    unless $I100, for_undef_248
    iter $P100, $P1106
    new $P104, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P104, loop1119_handler
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "28_1323686348.97588" 
    capture_lex $P1108
    $P1108($P101)
  loop1119_next:
    goto loop1119_test
  loop1119_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1119_next
    eq $P105, .CONTROL_LOOP_REDO, loop1119_redo
  loop1119_done:
    pop_eh 
  for_undef_248:
.annotate 'line', 73
    set $P1120, $P1065
    unless_null $P1120, vivify_265
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_265:
.annotate 'line', 128
    set $P1121, param_1058
    unless_null $P1121, vivify_266
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_266:
    defined $I100, $P1121
    unless $I100, for_undef_267
    iter $P100, $P1121
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1146_handler
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "29_1323686348.97588" 
    capture_lex $P1123
    $P1123($P101)
  loop1146_next:
    goto loop1146_test
  loop1146_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1146_next
    eq $P105, .CONTROL_LOOP_REDO, loop1146_redo
  loop1146_done:
    pop_eh 
  for_undef_267:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    set $P1147, $P1065
    unless_null $P1147, vivify_289
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_289:
    setattribute $P100, 'payload', $P1147
    throw $P100
.annotate 'line', 73
    .return ()
  control_1054:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1069"  :anon :subid("24_1323686348.97588") :outer("23_1323686348.97588")
    .param pmc param_1073
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "25_1323686348.97588" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_216
    new $P102, "Undef"
  vivify_216:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_217
    new $P104, "Undef"
  vivify_217:
    $P105 = $P103."methods"($P104)
    set $P1071, $P105
.annotate 'line', 78
    set $P1074, $P1071
    unless_null $P1074, vivify_218
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    defined $I101, $P1074
    unless $I101, for_undef_219
    iter $P102, $P1074
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1097_handler
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "25_1323686348.97588" 
    capture_lex $P1076
    $P1076($P103)
  loop1097_next:
    goto loop1097_test
  loop1097_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1097_next
    eq $P109, .CONTROL_LOOP_REDO, loop1097_redo
  loop1097_done:
    pop_eh 
  for_undef_219:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("25_1323686348.97588") :outer("24_1323686348.97588")
    .param pmc param_1082
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "26_1323686348.97588" 
    capture_lex $P1091
.annotate 'line', 79
    new $P104, "Undef"
    set $P1077, $P104
    .lex "$name", $P1077
.annotate 'line', 80
    new $P105, "Undef"
    set $P1078, $P105
    .lex "$meth", $P1078
.annotate 'line', 81
    $P1080 = root_new ['parrot';'ResizablePMCArray']
    set $P1079, $P1080
    .lex "@meth_list", $P1079
.annotate 'line', 88
    new $P106, "Undef"
    set $P1081, $P106
    .lex "$found", $P1081
    .lex "$_", param_1082
.annotate 'line', 79
    find_lex $P107, "$_"
    unless_null $P107, vivify_220
    new $P107, "Undef"
  vivify_220:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1077, $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_221
    new $P107, "Undef"
  vivify_221:
    set $P1078, $P107
.annotate 'line', 78
    set $P1083, $P1079
    unless_null $P1083, vivify_222
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_222:
.annotate 'line', 82
    set $P107, $P1077
    unless_null $P107, vivify_223
    new $P107, "Undef"
  vivify_223:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_224
    $P1085 = root_new ['parrot';'Hash']
  vivify_224:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_225
    new $P108, "Undef"
  vivify_225:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    set $P1087, $P1079
    unless_null $P1087, vivify_226
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    set $P109, $P1077
    unless_null $P109, vivify_227
    new $P109, "Undef"
  vivify_227:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_228
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_228:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    set $P109, $P1077
    unless_null $P109, vivify_229
    new $P109, "Undef"
  vivify_229:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_230
    $P1086 = root_new ['parrot';'Hash']
  vivify_230:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_231
    new $P110, "Undef"
  vivify_231:
    set $P1079, $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    set $P1081, $P107
.annotate 'line', 89
    set $P1089, $P1079
    unless_null $P1089, vivify_232
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    defined $I102, $P1089
    unless $I102, for_undef_233
    iter $P107, $P1089
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1094_handler
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "26_1323686348.97588" 
    capture_lex $P1091
    $P1091($P108)
  loop1094_next:
    goto loop1094_test
  loop1094_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1094_next
    eq $P111, .CONTROL_LOOP_REDO, loop1094_redo
  loop1094_done:
    pop_eh 
  for_undef_233:
.annotate 'line', 94
    set $P108, $P1081
    unless_null $P108, vivify_236
    new $P108, "Undef"
  vivify_236:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    set $P1096, $P1079
    unless_null $P1096, vivify_237
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    set $P109, $P1078
    unless_null $P109, vivify_238
    new $P109, "Undef"
  vivify_238:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("26_1323686348.97588") :outer("25_1323686348.97588")
    .param pmc param_1092
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_234
    new $P110, "Undef"
  vivify_234:
    find_lex $P111, "$_"
    unless_null $P111, vivify_235
    new $P111, "Undef"
  vivify_235:
    issame $I103, $P110, $P111
    if $I103, if_1093
    new $P109, 'Integer'
    set $P109, $I103
    goto if_1093_end
  if_1093:
.annotate 'line', 91
    new $P112, "Float"
    assign $P112, 1
    store_lex "$found", $P112
.annotate 'line', 90
    set $P109, $P112
  if_1093_end:
.annotate 'line', 89
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1101"  :anon :subid("27_1323686348.97588") :outer("23_1323686348.97588")
    .param pmc param_1103
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_244
    new $P102, "Undef"
  vivify_244:
    find_lex $P103, "$_"
    unless_null $P103, vivify_245
    new $P103, "Undef"
  vivify_245:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_246
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_246:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("28_1323686348.97588") :outer("23_1323686348.97588")
    .param pmc param_1112
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 109
    new $P102, "Undef"
    set $P1109, $P102
    .lex "$name", $P1109
.annotate 'line', 110
    $P1111 = root_new ['parrot';'ResizablePMCArray']
    set $P1110, $P1111
    .lex "@add_meths", $P1110
    .lex "$_", param_1112
.annotate 'line', 109
    find_lex $P103, "$_"
    unless_null $P103, vivify_249
    new $P103, "Undef"
  vivify_249:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    set $P1109, $P104
.annotate 'line', 110
    set $P103, $P1109
    unless_null $P103, vivify_250
    new $P103, "Undef"
  vivify_250:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_251
    $P1113 = root_new ['parrot';'Hash']
  vivify_251:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_252
    new $P104, "Undef"
  vivify_252:
    set $P1110, $P104
.annotate 'line', 114
    set $P104, $P1109
    unless_null $P104, vivify_253
    new $P104, "Undef"
  vivify_253:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_254
    $P1115 = root_new ['parrot';'Hash']
  vivify_254:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_255
    new $P105, "Undef"
  vivify_255:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    set $P1117, $P1110
    unless_null $P1117, vivify_256
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_256:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_257
    new $P107, "Undef"
  vivify_257:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_258
    new $P109, "Undef"
  vivify_258:
    set $P110, $P1109
    unless_null $P110, vivify_259
    new $P110, "Undef"
  vivify_259:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_260
    new $P107, "Undef"
  vivify_260:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_261
    new $P109, "Undef"
  vivify_261:
    set $P110, $P1109
    unless_null $P110, vivify_262
    new $P110, "Undef"
  vivify_262:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    set $P1118, $P1110
    unless_null $P1118, vivify_263
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    set $P112, $P1118[$I103]
    unless_null $P112, vivify_264
    new $P112, "Undef"
  vivify_264:
    $P113 = $P108."add_method"($P109, $P110, $P112)
.annotate 'line', 116
    set $P106, $P113
  if_1116_end:
.annotate 'line', 114
    set $P103, $P106
  unless_1114_end:
.annotate 'line', 108
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1122"  :anon :subid("29_1323686348.97588") :outer("23_1323686348.97588")
    .param pmc param_1127
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "30_1323686348.97588" 
    capture_lex $P1130
.annotate 'line', 129
    new $P102, "Undef"
    set $P1124, $P102
    .lex "$how", $P1124
.annotate 'line', 132
    $P1126 = root_new ['parrot';'ResizablePMCArray']
    set $P1125, $P1126
    .lex "@attributes", $P1125
    .lex "$_", param_1127
.annotate 'line', 129
    find_lex $P103, "$_"
    unless_null $P103, vivify_268
    new $P103, "Undef"
  vivify_268:
    get_how $P104, $P103
    set $P1124, $P104
.annotate 'line', 132
    set $P103, $P1124
    unless_null $P103, vivify_269
    new $P103, "Undef"
  vivify_269:
    find_lex $P104, "$_"
    unless_null $P104, vivify_270
    new $P104, "Undef"
  vivify_270:
    $P105 = $P103."attributes"($P104)
    set $P1125, $P105
.annotate 'line', 133
    set $P1128, $P1125
    unless_null $P1128, vivify_271
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_271:
    defined $I101, $P1128
    unless $I101, for_undef_272
    iter $P103, $P1128
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1144_handler
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "30_1323686348.97588" 
    capture_lex $P1130
    $P1130($P104)
  loop1144_next:
    goto loop1144_test
  loop1144_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1144_next
    eq $P109, .CONTROL_LOOP_REDO, loop1144_redo
  loop1144_done:
    pop_eh 
  for_undef_272:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_287
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    find_lex $P103, "$_"
    unless_null $P103, vivify_288
    new $P103, "Undef"
  vivify_288:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("30_1323686348.97588") :outer("29_1323686348.97588")
    .param pmc param_1135
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "31_1323686348.97588" 
    capture_lex $P1138
.annotate 'line', 134
    new $P105, "Undef"
    set $P1131, $P105
    .lex "$add_attr", $P1131
.annotate 'line', 135
    new $P106, "Undef"
    set $P1132, $P106
    .lex "$skip", $P1132
.annotate 'line', 136
    $P1134 = root_new ['parrot';'ResizablePMCArray']
    set $P1133, $P1134
    .lex "@cur_attrs", $P1133
    .lex "$_", param_1135
.annotate 'line', 134
    find_lex $P107, "$_"
    unless_null $P107, vivify_273
    new $P107, "Undef"
  vivify_273:
    set $P1131, $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    set $P1132, $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_274
    new $P107, "Undef"
  vivify_274:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_275
    new $P109, "Undef"
  vivify_275:
    $P110 = $P108."attributes"($P109)
    set $P1133, $P110
.annotate 'line', 137
    set $P1136, $P1133
    unless_null $P1136, vivify_276
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_276:
    defined $I102, $P1136
    unless $I102, for_undef_277
    iter $P107, $P1136
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1142_handler
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "31_1323686348.97588" 
    capture_lex $P1138
    $P1138($P108)
  loop1142_next:
    goto loop1142_test
  loop1142_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1142_next
    eq $P111, .CONTROL_LOOP_REDO, loop1142_redo
  loop1142_done:
    pop_eh 
  for_undef_277:
.annotate 'line', 147
    set $P108, $P1132
    unless_null $P108, vivify_283
    new $P108, "Undef"
  vivify_283:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_284
    new $P109, "Undef"
  vivify_284:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_285
    new $P111, "Undef"
  vivify_285:
    set $P112, $P1131
    unless_null $P112, vivify_286
    new $P112, "Undef"
  vivify_286:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("31_1323686348.97588") :outer("30_1323686348.97588")
    .param pmc param_1139
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_278
    new $P110, "Undef"
  vivify_278:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_279
    new $P111, "Undef"
  vivify_279:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_280
    new $P114, "Undef"
  vivify_280:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_281
    new $P115, "Undef"
  vivify_281:
    $S101 = $P115."name"()
    iseq $I104, $S100, $S101
    if $I104, if_1141
    new $P113, 'Integer'
    set $P113, $I104
    goto if_1141_end
  if_1141:
.annotate 'line', 143
    new $P116, "String"
    assign $P116, "Attribute '"
    find_lex $P117, "$_"
    unless_null $P117, vivify_282
    new $P117, "Undef"
  vivify_282:
    $S102 = $P117."name"()
    concat $P118, $P116, $S102
    concat $P119, $P118, "' conflicts in role composition"
    die $P119
  if_1141_end:
.annotate 'line', 141
    set $P109, $P113
.annotate 'line', 138
    goto if_1140_end
  if_1140:
.annotate 'line', 139
    new $P112, "Float"
    assign $P112, 1
    store_lex "$skip", $P112
.annotate 'line', 138
    set $P109, $P112
  if_1140_end:
.annotate 'line', 137
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1149"  :subid("32_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "54_1323686348.97588" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "53_1323686348.97588" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "52_1323686348.97588" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "50_1323686348.97588" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "49_1323686348.97588" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "48_1323686348.97588" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "47_1323686348.97588" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "45_1323686348.97588" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "43_1323686348.97588" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "42_1323686348.97588" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "41_1323686348.97588" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "40_1323686348.97588" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "39_1323686348.97588" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "38_1323686348.97588" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "37_1323686348.97588" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "36_1323686348.97588" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "35_1323686348.97588" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "34_1323686348.97588" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "33_1323686348.97588" 
    capture_lex $P1154
.annotate 'line', 190
    new $P100, "Undef"
    set $P1151, $P100
    .lex "$archetypes", $P1151
    .lex "$?PACKAGE", $P1152
    .lex "$?CLASS", $P1153
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"), 1 :named("composable"))
    set $P1151, $P102
.annotate 'line', 311
    .const 'Sub' $P1277 = "54_1323686348.97588" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("33_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1155
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_290
    new $P101, "Undef"
  vivify_290:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("34_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1157
    .param pmc param_1158 :named("name")
    .param pmc param_1159 :named("instance_of")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 200
    .lex "self", param_1157
    .lex "$name", param_1158
    .lex "$instance_of", param_1159
.annotate 'line', 201
    new $P101, "Undef"
    set $P1160, $P101
    .lex "$obj", $P1160
    set $P102, param_1157
    nqp_decontainerize $P103, $P102
    repr_instance_of $P104, $P103
    set $P1160, $P104
.annotate 'line', 202
    set $P102, $P1160
    unless_null $P102, vivify_291
    new $P102, "Undef"
  vivify_291:
    set $P103, param_1158
    unless_null $P103, vivify_292
    new $P103, "Undef"
  vivify_292:
    set $P104, param_1159
    unless_null $P104, vivify_293
    new $P104, "Undef"
  vivify_293:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    set $P102, $P1160
    unless_null $P102, vivify_294
    new $P102, "Undef"
  vivify_294:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("35_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1162
    .param pmc param_1163 :named("name")
    .param pmc param_1164 :named("instance_of")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 206
    .lex "self", param_1162
    .lex "$name", param_1163
    .lex "$instance_of", param_1164
.annotate 'line', 207
    set $P101, param_1163
    unless_null $P101, vivify_295
    new $P101, "Undef"
  vivify_295:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    set $P101, param_1164
    unless_null $P101, vivify_296
    new $P101, "Undef"
  vivify_296:
    set $P102, param_1162
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("36_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_297
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_297:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    set $P103, param_1166
    nqp_decontainerize $P104, $P103
    set $P105, param_1167
    unless_null $P105, vivify_298
    new $P105, "Undef"
  vivify_298:
    set $P106, param_1168
    unless_null $P106, vivify_299
    new $P106, "Undef"
  vivify_299:
    $P107 = $P104."new"($P105 :named("name"), $P106 :named("instance_of"))
    set $P1169, $P107
.annotate 'line', 215
    set $P103, $P1169
    unless_null $P103, vivify_300
    new $P103, "Undef"
  vivify_300:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("37_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1171
    .param pmc param_1172
    .param pmc param_1173
    .param pmc param_1174
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 218
    .lex "self", param_1171
    .lex "$obj", param_1172
    .lex "$name", param_1173
    .lex "$code_obj", param_1174
.annotate 'line', 219
    set $P101, param_1173
    unless_null $P101, vivify_301
    new $P101, "Undef"
  vivify_301:
    set $P102, param_1171
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_302
    $P1176 = root_new ['parrot';'Hash']
  vivify_302:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_303
    new $P105, "Undef"
  vivify_303:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    set $P107, param_1173
    unless_null $P107, vivify_304
    new $P107, "Undef"
  vivify_304:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    set $P101, param_1174
    unless_null $P101, vivify_305
    new $P101, "Undef"
  vivify_305:
    set $P102, param_1173
    unless_null $P102, vivify_306
    new $P102, "Undef"
  vivify_306:
    set $P103, param_1171
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_307
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_307:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("38_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1179
    .param pmc param_1180
    .param pmc param_1181
    .param pmc param_1182
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 225
    .lex "self", param_1179
    .lex "$obj", param_1180
    .lex "$name", param_1181
    .lex "$code_obj", param_1182
.annotate 'line', 226
    $P1184 = root_new ['parrot';'Hash']
    set $P1183, $P1184
    .lex "%todo", $P1183
.annotate 'line', 225
    set $P1185, $P1183
    unless_null $P1185, vivify_308
    $P1185 = root_new ['parrot';'Hash']
  vivify_308:
.annotate 'line', 227
    set $P101, param_1181
    unless_null $P101, vivify_309
    new $P101, "Undef"
  vivify_309:
    set $P1186, $P1183
    unless_null $P1186, vivify_310
    $P1186 = root_new ['parrot';'Hash']
    set $P1183, $P1186
  vivify_310:
    set $P1186["name"], $P101
.annotate 'line', 228
    set $P101, param_1182
    unless_null $P101, vivify_311
    new $P101, "Undef"
  vivify_311:
    set $P1187, $P1183
    unless_null $P1187, vivify_312
    $P1187 = root_new ['parrot';'Hash']
    set $P1183, $P1187
  vivify_312:
    set $P1187["code"], $P101
.annotate 'line', 229
    set $P1188, $P1183
    unless_null $P1188, vivify_313
    $P1188 = root_new ['parrot';'Hash']
  vivify_313:
    set $P101, param_1179
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_314
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    set $N100, $P1189
    set $I100, $N100
    set $P104, param_1179
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_315
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_315:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    set $P101, param_1182
    unless_null $P101, vivify_316
    new $P101, "Undef"
  vivify_316:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("39_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1192
    .param pmc param_1193
    .param pmc param_1194
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 233
    .lex "self", param_1192
    .lex "$obj", param_1193
    .lex "$meta_attr", param_1194
.annotate 'line', 234
    new $P101, "Undef"
    set $P1195, $P101
    .lex "$name", $P1195
    set $P102, param_1194
    unless_null $P102, vivify_317
    new $P102, "Undef"
  vivify_317:
    $P103 = $P102."name"()
    set $P1195, $P103
.annotate 'line', 235
    set $P102, $P1195
    unless_null $P102, vivify_318
    new $P102, "Undef"
  vivify_318:
    set $P103, param_1192
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_319
    $P1197 = root_new ['parrot';'Hash']
  vivify_319:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_320
    new $P106, "Undef"
  vivify_320:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    set $P108, $P1195
    unless_null $P108, vivify_321
    new $P108, "Undef"
  vivify_321:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    set $P102, param_1194
    unless_null $P102, vivify_322
    new $P102, "Undef"
  vivify_322:
    set $P103, $P1195
    unless_null $P103, vivify_323
    new $P103, "Undef"
  vivify_323:
    set $P104, param_1192
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_324
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_324:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("40_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1200
    .param pmc param_1201
    .param pmc param_1202
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 241
    .lex "self", param_1200
    .lex "$obj", param_1201
    .lex "$parent", param_1202
.annotate 'line', 242
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 241
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("41_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1204
    .param pmc param_1205
    .param pmc param_1206
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 245
    .lex "self", param_1204
    .lex "$obj", param_1205
    .lex "$role", param_1206
.annotate 'line', 246
    set $P101, param_1206
    unless_null $P101, vivify_325
    new $P101, "Undef"
  vivify_325:
    set $P102, param_1204
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_326
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    set $N100, $P1207
    set $I100, $N100
    set $P105, param_1204
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_327
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_327:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("42_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1210
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 249
    .lex "self", param_1210
    .lex "$obj", param_1211
    .lex "$colliding_name", param_1212
.annotate 'line', 250
    set $P101, param_1212
    unless_null $P101, vivify_328
    new $P101, "Undef"
  vivify_328:
    set $P102, param_1210
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_329
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_329:
    set $N100, $P1213
    set $I100, $N100
    set $P105, param_1210
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_330
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_330:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("43_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "44_1323686348.97588" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    set $P101, param_1216
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_331
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_331:
    unless $P1219, if_1218_end
.annotate 'line', 258
    set $P105, param_1216
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_332
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    defined $I100, $P1220
    unless $I100, for_undef_333
    iter $P104, $P1220
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1228_handler
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "44_1323686348.97588" 
    capture_lex $P1222
    $P1222($P108)
  loop1228_next:
    goto loop1228_test
  loop1228_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1228_next
    eq $P110, .CONTROL_LOOP_REDO, loop1228_redo
  loop1228_done:
    pop_eh 
  for_undef_333:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    set $P105, param_1217
    unless_null $P105, vivify_341
    new $P105, "Undef"
  vivify_341:
    set $P106, param_1216
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_342
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_1216
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    set $P101, param_1217
    unless_null $P101, vivify_343
    new $P101, "Undef"
  vivify_343:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("44_1323686348.97588") :outer("43_1323686348.97588")
    .param pmc param_1223
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_334
    new $P109, "Undef"
  vivify_334:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_335
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_336
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_336:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_337
    new $P109, "Undef"
  vivify_337:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_338
    new $P111, "Undef"
  vivify_338:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_339
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_340
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_340:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("45_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "46_1323686348.97588" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_344
    new $P101, "Undef"
    set param_1233, $P101
  optparam_344:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    set $P1236, $P1234
    unless_null $P1236, vivify_345
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
.annotate 'line', 277
    set $P103, param_1231
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_346
    $P1237 = root_new ['parrot';'Hash']
  vivify_346:
    defined $I100, $P1237
    unless $I100, for_undef_347
    iter $P102, $P1237
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1242_handler
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "46_1323686348.97588" 
    capture_lex $P1239
    $P1239($P106)
  loop1242_next:
    goto loop1242_test
  loop1242_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1242_next
    eq $P108, .CONTROL_LOOP_REDO, loop1242_redo
  loop1242_done:
    pop_eh 
  for_undef_347:
.annotate 'line', 275
    set $P1243, $P1234
    unless_null $P1243, vivify_350
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_350:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("46_1323686348.97588") :outer("45_1323686348.97588")
    .param pmc param_1240
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_348
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    find_lex $P107, "$_"
    unless_null $P107, vivify_349
    new $P107, "Undef"
  vivify_349:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("47_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    set $P101, param_1245
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_351
    $P1247 = root_new ['parrot';'Hash']
  vivify_351:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("48_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    set $P101, param_1249
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_352
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("49_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    set $P101, param_1253
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_353
    new $P104, "Undef"
  vivify_353:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("50_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "51_1323686348.97588" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_354
    new $P101, "Undef"
    set param_1258, $P101
  optparam_354:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    set $P1261, $P1259
    unless_null $P1261, vivify_355
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
.annotate 'line', 297
    set $P103, param_1256
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_356
    $P1262 = root_new ['parrot';'Hash']
  vivify_356:
    defined $I100, $P1262
    unless $I100, for_undef_357
    iter $P102, $P1262
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1267_handler
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "51_1323686348.97588" 
    capture_lex $P1264
    $P1264($P106)
  loop1267_next:
    goto loop1267_test
  loop1267_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1267_next
    eq $P108, .CONTROL_LOOP_REDO, loop1267_redo
  loop1267_done:
    pop_eh 
  for_undef_357:
.annotate 'line', 295
    set $P1268, $P1259
    unless_null $P1268, vivify_360
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_360:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("51_1323686348.97588") :outer("50_1323686348.97588")
    .param pmc param_1265
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_358
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    find_lex $P107, "$_"
    unless_null $P107, vivify_359
    new $P107, "Undef"
  vivify_359:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("52_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    set $P101, param_1270
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_361
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("53_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    set $P101, param_1274
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_362
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_362:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("54_1323686348.97588") :outer("32_1323686348.97588")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    set $P101, param_1278
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_363
    new $P104, "Undef"
  vivify_363:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("55_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "59_1323686348.97588" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "57_1323686348.97588" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "56_1323686348.97588" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "56_1323686348.97588" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "57_1323686348.97588" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    set $P101, $P1283
    set $P101, $P1292
.annotate 'line', 332
    .const 'Sub' $P1309 = "59_1323686348.97588" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("56_1323686348.97588") :outer("55_1323686348.97588")
    .param pmc param_1285
    .param pmc param_1286
    .param pmc param_1287
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 319
    .lex "$target", param_1285
    .lex "$name", param_1286
    .lex "$local", param_1287
.annotate 'line', 320
    $P1289 = root_new ['parrot';'Hash']
    set $P1288, $P1289
    .lex "%mt", $P1288
    set $P100, param_1285
    unless_null $P100, vivify_364
    new $P100, "Undef"
  vivify_364:
    get_how $P101, $P100
    set $P102, param_1285
    unless_null $P102, vivify_365
    new $P102, "Undef"
  vivify_365:
    $P103 = $P101."method_table"($P102)
    set $P1288, $P103
.annotate 'line', 321
    set $P100, param_1286
    unless_null $P100, vivify_366
    new $P100, "Undef"
  vivify_366:
    set $P1290, $P1288
    unless_null $P1290, vivify_367
    $P1290 = root_new ['parrot';'Hash']
  vivify_367:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("57_1323686348.97588") :outer("55_1323686348.97588")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "58_1323686348.97588" 
    capture_lex $P1302
    new $P1295, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1295, control_1294
    push_eh $P1295
    .lex "$target", param_1296
    .lex "$name", param_1297
.annotate 'line', 325
    $P1299 = root_new ['parrot';'ResizablePMCArray']
    set $P1298, $P1299
    .lex "@attributes", $P1298
    set $P100, param_1296
    unless_null $P100, vivify_368
    new $P100, "Undef"
  vivify_368:
    get_how $P101, $P100
    set $P102, param_1296
    unless_null $P102, vivify_369
    new $P102, "Undef"
  vivify_369:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    set $P1298, $P103
.annotate 'line', 326
    set $P1300, $P1298
    unless_null $P1300, vivify_370
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_370:
    defined $I101, $P1300
    unless $I101, for_undef_371
    iter $P100, $P1300
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1305_handler
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "58_1323686348.97588" 
    capture_lex $P1302
    $P1302($P101)
  loop1305_next:
    goto loop1305_test
  loop1305_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1305_next
    eq $P104, .CONTROL_LOOP_REDO, loop1305_redo
  loop1305_done:
    pop_eh 
  for_undef_371:
.annotate 'line', 329
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 324
    .return ()
  control_1294:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1301"  :anon :subid("58_1323686348.97588") :outer("57_1323686348.97588")
    .param pmc param_1303
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_372
    new $P103, "Undef"
  vivify_372:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_373
    new $P104, "Undef"
  vivify_373:
    set $S101, $P104
    iseq $I102, $S100, $S101
    if $I102, if_1304
    new $P102, 'Integer'
    set $P102, $I102
    goto if_1304_end
  if_1304:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1304_end:
.annotate 'line', 326
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("59_1323686348.97588") :outer("55_1323686348.97588")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "63_1323686348.97588" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "62_1323686348.97588" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "61_1323686348.97588" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "60_1323686348.97588" 
    capture_lex $P1328
    .lex "self", param_1310
    .lex "$target", param_1311
    .lex "@roles", param_1312
.annotate 'line', 335
    new $P101, "Undef"
    set $P1313, $P101
    .lex "$to_compose", $P1313
.annotate 'line', 336
    new $P102, "Undef"
    set $P1314, $P102
    .lex "$to_compose_meta", $P1314
.annotate 'line', 351
    $P1316 = root_new ['parrot';'ResizablePMCArray']
    set $P1315, $P1316
    .lex "@collisions", $P1315
.annotate 'line', 360
    $P1318 = root_new ['parrot';'ResizablePMCArray']
    set $P1317, $P1318
    .lex "@methods", $P1317
.annotate 'line', 368
    $P1320 = root_new ['parrot';'ResizablePMCArray']
    set $P1319, $P1320
    .lex "@attributes", $P1319
.annotate 'line', 380
    $P1322 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1322
    .lex "@done", $P1321
.annotate 'line', 332
    set $P103, $P1313
    unless_null $P103, vivify_374
    new $P103, "Undef"
  vivify_374:
    set $P103, $P1314
    unless_null $P103, vivify_375
    new $P103, "Undef"
  vivify_375:
.annotate 'line', 337
    set $P1324, param_1312
    unless_null $P1324, vivify_376
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_376:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_377
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_377:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    set $P1313, $P109
.annotate 'line', 343
    set $P103, $P1313
    unless_null $P103, vivify_378
    new $P103, "Undef"
  vivify_378:
    get_how $P104, $P103
    set $P1314, $P104
.annotate 'line', 344
    set $P1326, param_1312
    unless_null $P1326, vivify_379
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
    defined $I102, $P1326
    unless $I102, for_undef_380
    iter $P103, $P1326
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1330_handler
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "60_1323686348.97588" 
    capture_lex $P1328
    $P1328($P104)
  loop1330_next:
    goto loop1330_test
  loop1330_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1330_next
    eq $P106, .CONTROL_LOOP_REDO, loop1330_redo
  loop1330_done:
    pop_eh 
  for_undef_380:
.annotate 'line', 347
    set $P103, $P1314
    unless_null $P103, vivify_384
    new $P103, "Undef"
  vivify_384:
    set $P104, $P1313
    unless_null $P104, vivify_385
    new $P104, "Undef"
  vivify_385:
    $P105 = $P103."compose"($P104)
    set $P1313, $P105
.annotate 'line', 341
    goto if_1323_end
  if_1323:
.annotate 'line', 338
    new $P103, "Float"
    assign $P103, 0
    set $I102, $P103
    set $P1325, param_1312
    unless_null $P1325, vivify_386
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_386:
    set $P104, $P1325[$I102]
    unless_null $P104, vivify_387
    new $P104, "Undef"
  vivify_387:
    set $P1313, $P104
.annotate 'line', 339
    set $P103, $P1313
    unless_null $P103, vivify_388
    new $P103, "Undef"
  vivify_388:
    get_how $P104, $P103
    set $P1314, $P104
  if_1323_end:
.annotate 'line', 351
    set $P103, $P1314
    unless_null $P103, vivify_389
    new $P103, "Undef"
  vivify_389:
    set $P104, $P1313
    unless_null $P104, vivify_390
    new $P104, "Undef"
  vivify_390:
    $P105 = $P103."collisions"($P104)
    set $P1315, $P105
.annotate 'line', 352
    set $P1331, $P1315
    unless_null $P1331, vivify_391
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_391:
    defined $I101, $P1331
    unless $I101, for_undef_392
    iter $P103, $P1331
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1336_handler
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "61_1323686348.97588" 
    capture_lex $P1333
    $P1333($P104)
  loop1336_next:
    goto loop1336_test
  loop1336_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1336_next
    eq $P107, .CONTROL_LOOP_REDO, loop1336_redo
  loop1336_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 360
    set $P103, $P1314
    unless_null $P103, vivify_398
    new $P103, "Undef"
  vivify_398:
    set $P104, $P1313
    unless_null $P104, vivify_399
    new $P104, "Undef"
  vivify_399:
    $P105 = $P103."methods"($P104)
    set $P1317, $P105
.annotate 'line', 361
    set $P1337, $P1317
    unless_null $P1337, vivify_400
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_400:
    defined $I101, $P1337
    unless $I101, for_undef_401
    iter $P103, $P1337
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1342_handler
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "62_1323686348.97588" 
    capture_lex $P1339
    $P1339($P104)
  loop1342_next:
    goto loop1342_test
  loop1342_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1342_next
    eq $P107, .CONTROL_LOOP_REDO, loop1342_redo
  loop1342_done:
    pop_eh 
  for_undef_401:
.annotate 'line', 368
    set $P103, $P1314
    unless_null $P103, vivify_408
    new $P103, "Undef"
  vivify_408:
    set $P104, $P1313
    unless_null $P104, vivify_409
    new $P104, "Undef"
  vivify_409:
    $P105 = $P103."attributes"($P104)
    set $P1319, $P105
.annotate 'line', 369
    set $P1343, $P1319
    unless_null $P1343, vivify_410
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_410:
    defined $I101, $P1343
    unless $I101, for_undef_411
    iter $P103, $P1343
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1348_handler
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "63_1323686348.97588" 
    capture_lex $P1345
    $P1345($P104)
  loop1348_next:
    goto loop1348_test
  loop1348_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1348_next
    eq $P106, .CONTROL_LOOP_REDO, loop1348_redo
  loop1348_done:
    pop_eh 
  for_undef_411:
.annotate 'line', 332
    set $P1349, $P1321
    unless_null $P1349, vivify_420
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_420:
.annotate 'line', 381
    set $P103, $P1313
    unless_null $P103, vivify_421
    new $P103, "Undef"
  vivify_421:
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    set $P1350, $P1321
    unless_null $P1350, vivify_422
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1321, $P1350
  vivify_422:
    set $P1350[$I101], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("60_1323686348.97588") :outer("59_1323686348.97588")
    .param pmc param_1329
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_381
    new $P105, "Undef"
  vivify_381:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_382
    new $P106, "Undef"
  vivify_382:
    find_lex $P107, "$_"
    unless_null $P107, vivify_383
    new $P107, "Undef"
  vivify_383:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("61_1323686348.97588") :outer("59_1323686348.97588")
    .param pmc param_1334
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_393
    new $P106, "Undef"
  vivify_393:
    find_lex $P107, "$_"
    unless_null $P107, vivify_394
    new $P107, "Undef"
  vivify_394:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 1)
    unless $P108, unless_1335
    set $P105, $P108
    goto unless_1335_end
  unless_1335:
.annotate 'line', 354
    new $P109, 'String'
    set $P109, "Method '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_395
    new $P110, "Undef"
  vivify_395:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_396
    new $P113, "Undef"
  vivify_396:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_397
    new $P115, "Undef"
  vivify_397:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 354
    concat $P117, $P116, "'"
.annotate 'line', 355
    die $P117
  unless_1335_end:
.annotate 'line', 352
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1338"  :anon :subid("62_1323686348.97588") :outer("59_1323686348.97588")
    .param pmc param_1340
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_402
    new $P106, "Undef"
  vivify_402:
    find_lex $P107, "$_"
    unless_null $P107, vivify_403
    new $P107, "Undef"
  vivify_403:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_404
    new $P109, "Undef"
  vivify_404:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_405
    new $P111, "Undef"
  vivify_405:
    find_lex $P112, "$_"
    unless_null $P112, vivify_406
    new $P112, "Undef"
  vivify_406:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_407
    new $P113, "Undef"
  vivify_407:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("63_1323686348.97588") :outer("59_1323686348.97588")
    .param pmc param_1346
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_412
    new $P105, "Undef"
  vivify_412:
    find_lex $P106, "$_"
    unless_null $P106, vivify_413
    new $P106, "Undef"
  vivify_413:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_414
    new $P110, "Undef"
  vivify_414:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_415
    new $P113, "Undef"
  vivify_415:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_416
    new $P115, "Undef"
  vivify_416:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_417
    new $P105, "Undef"
  vivify_417:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_418
    new $P107, "Undef"
  vivify_418:
    find_lex $P108, "$_"
    unless_null $P108, vivify_419
    new $P108, "Undef"
  vivify_419:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("64_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1491 = "89_1323686348.97588" 
    capture_lex $P1491
    .const 'Sub' $P1477 = "87_1323686348.97588" 
    capture_lex $P1477
    .const 'Sub' $P1474 = "86_1323686348.97588" 
    capture_lex $P1474
    .const 'Sub' $P1470 = "85_1323686348.97588" 
    capture_lex $P1470
    .const 'Sub' $P1456 = "83_1323686348.97588" 
    capture_lex $P1456
    .const 'Sub' $P1426 = "78_1323686348.97588" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "77_1323686348.97588" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "76_1323686348.97588" 
    capture_lex $P1420
    .const 'Sub' $P1414 = "75_1323686348.97588" 
    capture_lex $P1414
    .const 'Sub' $P1410 = "74_1323686348.97588" 
    capture_lex $P1410
    .const 'Sub' $P1402 = "73_1323686348.97588" 
    capture_lex $P1402
    .const 'Sub' $P1389 = "72_1323686348.97588" 
    capture_lex $P1389
    .const 'Sub' $P1381 = "71_1323686348.97588" 
    capture_lex $P1381
    .const 'Sub' $P1377 = "70_1323686348.97588" 
    capture_lex $P1377
    .const 'Sub' $P1372 = "69_1323686348.97588" 
    capture_lex $P1372
    .const 'Sub' $P1369 = "68_1323686348.97588" 
    capture_lex $P1369
    .const 'Sub' $P1365 = "67_1323686348.97588" 
    capture_lex $P1365
    .const 'Sub' $P1363 = "66_1323686348.97588" 
    capture_lex $P1363
    .const 'Sub' $P1356 = "65_1323686348.97588" 
    capture_lex $P1356
.annotate 'line', 414
    new $P100, "Undef"
    set $P1354, $P100
    .lex "$archetypes", $P1354
.annotate 'line', 531
    .const 'Sub' $P1356 = "65_1323686348.97588" 
    newclosure $P1360, $P1356
    set $P1355, $P1360
    .lex "reify_method", $P1355
.annotate 'line', 414
    .lex "$?PACKAGE", $P1361
    .lex "$?CLASS", $P1362
    find_lex $P103, "Archetypes"
    $P104 = $P103."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P1354, $P104
.annotate 'line', 390
    set $P103, $P1355
.annotate 'line', 564
    .const 'Sub' $P1491 = "89_1323686348.97588" 
    newclosure $P1495, $P1491
.annotate 'line', 390
    .return ($P1495)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("65_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1357
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 531
    .lex "$meth", param_1357
.annotate 'line', 532
    new $P101, "Undef"
    set $P1358, $P101
    .lex "$callback", $P1358
    set $P102, param_1357
    unless_null $P102, vivify_423
    new $P102, "Undef"
  vivify_423:
    getprop $P103, "REIFY_CALLBACK", $P102
    set $P1358, $P103
.annotate 'line', 533
    set $P103, $P1358
    unless_null $P103, vivify_424
    new $P103, "Undef"
  vivify_424:
    defined $I100, $P103
    if $I100, if_1359
    set $P107, param_1357
    unless_null $P107, vivify_425
    new $P107, "Undef"
  vivify_425:
    clone $P108, $P107
    set $P102, $P108
    goto if_1359_end
  if_1359:
    set $P104, $P1358
    unless_null $P104, vivify_426
    new $P104, "Undef"
  vivify_426:
    set $P105, param_1357
    unless_null $P105, vivify_427
    new $P105, "Undef"
  vivify_427:
    $P106 = $P104($P105)
    set $P102, $P106
  if_1359_end:
.annotate 'line', 531
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("66_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1364
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1364
    find_lex $P103, "$archetypes"
    unless_null $P103, vivify_428
    new $P103, "Undef"
  vivify_428:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("67_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1366
    .param pmc param_1367 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 424
    .lex "self", param_1366
    .lex "$name", param_1367
.annotate 'line', 425
    new $P103, "Undef"
    set $P1368, $P103
    .lex "$obj", $P1368
    set $P104, param_1366
    nqp_decontainerize $P105, $P104
    repr_instance_of $P106, $P105
    set $P1368, $P106
.annotate 'line', 426
    set $P104, $P1368
    unless_null $P104, vivify_429
    new $P104, "Undef"
  vivify_429:
    set $P105, param_1367
    unless_null $P105, vivify_430
    new $P105, "Undef"
  vivify_430:
    $P104."BUILD"($P105 :named("name"))
.annotate 'line', 424
    set $P104, $P1368
    unless_null $P104, vivify_431
    new $P104, "Undef"
  vivify_431:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("68_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1370
    .param pmc param_1371 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1370
    .lex "$name", param_1371
.annotate 'line', 431
    set $P103, param_1371
    unless_null $P103, vivify_432
    new $P103, "Undef"
  vivify_432:
    set $P104, param_1370
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!name", 0, $P103
.annotate 'line', 430
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("69_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1373
    .param pmc param_1374 :optional :named("name")
    .param int has_param_1374 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1373
    if has_param_1374, optparam_433
    new $P103, "String"
    assign $P103, "<anon>"
    set param_1374, $P103
  optparam_433:
    .lex "$name", param_1374
.annotate 'line', 437
    new $P104, "Undef"
    set $P1375, $P104
    .lex "$metarole", $P1375
    set $P105, param_1373
    nqp_decontainerize $P106, $P105
    set $P107, param_1374
    unless_null $P107, vivify_434
    new $P107, "Undef"
  vivify_434:
    $P108 = $P106."new"($P107 :named("name"))
    set $P1375, $P108
.annotate 'line', 439
    set $P105, $P1375
    unless_null $P105, vivify_435
    new $P105, "Undef"
  vivify_435:
    new $P106, "String"
    assign $P106, "Uninstantiable"
    set $S100, $P106
    repr_type_object_for $P107, $P105, $S100
    $P1376 = root_new ['parrot';'Hash']
    set_who $P107, $P1376
.annotate 'line', 436
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("70_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1378
    .param pmc param_1379
    .param pmc param_1380
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 443
    .lex "self", param_1378
    .lex "$obj", param_1379
    .lex "$body_block", param_1380
.annotate 'line', 444
    set $P103, param_1380
    unless_null $P103, vivify_436
    new $P103, "Undef"
  vivify_436:
    set $P104, param_1378
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!body_block", 6, $P103
.annotate 'line', 443
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("71_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1382
    .param pmc param_1383
    .param pmc param_1384
    .param pmc param_1385
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 447
    .lex "self", param_1382
    .lex "$obj", param_1383
    .lex "$name", param_1384
    .lex "$code_obj", param_1385
.annotate 'line', 448
    set $P103, param_1384
    unless_null $P103, vivify_437
    new $P103, "Undef"
  vivify_437:
    set $P104, param_1382
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1387, $P105, $P106, "%!methods", 2
    unless_null $P1387, vivify_438
    $P1387 = root_new ['parrot';'Hash']
  vivify_438:
    set $P107, $P1387[$P103]
    unless_null $P107, vivify_439
    new $P107, "Undef"
  vivify_439:
    unless $P107, if_1386_end
.annotate 'line', 449
    new $P108, "String"
    assign $P108, "This role already has a method named "
    set $P109, param_1384
    unless_null $P109, vivify_440
    new $P109, "Undef"
  vivify_440:
    concat $P110, $P108, $P109
    die $P110
  if_1386_end:
.annotate 'line', 451
    set $P103, param_1385
    unless_null $P103, vivify_441
    new $P103, "Undef"
  vivify_441:
    set $P104, param_1384
    unless_null $P104, vivify_442
    new $P104, "Undef"
  vivify_442:
    set $P105, param_1382
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1388, $P106, $P107, "%!methods", 2
    unless_null $P1388, vivify_443
    $P1388 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P106, $P107, "%!methods", 2, $P1388
  vivify_443:
    set $P1388[$P104], $P103
.annotate 'line', 447
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("72_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1390
    .param pmc param_1391
    .param pmc param_1392
    .param pmc param_1393
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 454
    .lex "self", param_1390
    .lex "$obj", param_1391
    .lex "$name", param_1392
    .lex "$code_obj", param_1393
.annotate 'line', 455
    $P1395 = root_new ['parrot';'Hash']
    set $P1394, $P1395
    .lex "%todo", $P1394
.annotate 'line', 454
    set $P1396, $P1394
    unless_null $P1396, vivify_444
    $P1396 = root_new ['parrot';'Hash']
  vivify_444:
.annotate 'line', 456
    set $P103, param_1392
    unless_null $P103, vivify_445
    new $P103, "Undef"
  vivify_445:
    set $P1397, $P1394
    unless_null $P1397, vivify_446
    $P1397 = root_new ['parrot';'Hash']
    set $P1394, $P1397
  vivify_446:
    set $P1397["name"], $P103
.annotate 'line', 457
    set $P103, param_1393
    unless_null $P103, vivify_447
    new $P103, "Undef"
  vivify_447:
    set $P1398, $P1394
    unless_null $P1398, vivify_448
    $P1398 = root_new ['parrot';'Hash']
    set $P1394, $P1398
  vivify_448:
    set $P1398["code"], $P103
.annotate 'line', 458
    set $P1399, $P1394
    unless_null $P1399, vivify_449
    $P1399 = root_new ['parrot';'Hash']
  vivify_449:
    set $P103, param_1390
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1400, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1400, vivify_450
    $P1400 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    set $N100, $P1400
    set $I100, $N100
    set $P106, param_1390
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1401, $P107, $P108, "@!multi_methods_to_incorporate", 3
    unless_null $P1401, vivify_451
    $P1401 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P107, $P108, "@!multi_methods_to_incorporate", 3, $P1401
  vivify_451:
    set $P1401[$I100], $P1399
.annotate 'line', 454
    set $P103, param_1393
    unless_null $P103, vivify_452
    new $P103, "Undef"
  vivify_452:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("73_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1403
    .param pmc param_1404
    .param pmc param_1405
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 462
    .lex "self", param_1403
    .lex "$obj", param_1404
    .lex "$meta_attr", param_1405
.annotate 'line', 463
    new $P103, "Undef"
    set $P1406, $P103
    .lex "$name", $P1406
    set $P104, param_1405
    unless_null $P104, vivify_453
    new $P104, "Undef"
  vivify_453:
    $P105 = $P104."name"()
    set $P1406, $P105
.annotate 'line', 464
    set $P104, $P1406
    unless_null $P104, vivify_454
    new $P104, "Undef"
  vivify_454:
    set $P105, param_1403
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1408, $P106, $P107, "%!attributes", 1
    unless_null $P1408, vivify_455
    $P1408 = root_new ['parrot';'Hash']
  vivify_455:
    set $P108, $P1408[$P104]
    unless_null $P108, vivify_456
    new $P108, "Undef"
  vivify_456:
    unless $P108, if_1407_end
.annotate 'line', 465
    new $P109, "String"
    assign $P109, "This role already has an attribute named "
    set $P110, $P1406
    unless_null $P110, vivify_457
    new $P110, "Undef"
  vivify_457:
    concat $P111, $P109, $P110
    die $P111
  if_1407_end:
.annotate 'line', 467
    set $P104, param_1405
    unless_null $P104, vivify_458
    new $P104, "Undef"
  vivify_458:
    set $P105, $P1406
    unless_null $P105, vivify_459
    new $P105, "Undef"
  vivify_459:
    set $P106, param_1403
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1409, $P107, $P108, "%!attributes", 1
    unless_null $P1409, vivify_460
    $P1409 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P107, $P108, "%!attributes", 1, $P1409
  vivify_460:
    set $P1409[$P105], $P104
.annotate 'line', 462
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("74_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1411
    .param pmc param_1412
    .param pmc param_1413
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 470
    .lex "self", param_1411
    .lex "$obj", param_1412
    .lex "$parent", param_1413
.annotate 'line', 471
    die "A role cannot inherit from a class"
.annotate 'line', 470
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("75_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1415
    .param pmc param_1416
    .param pmc param_1417
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 474
    .lex "self", param_1415
    .lex "$obj", param_1416
    .lex "$role", param_1417
.annotate 'line', 475
    set $P103, param_1417
    unless_null $P103, vivify_461
    new $P103, "Undef"
  vivify_461:
    set $P104, param_1415
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1418, $P105, $P106, "@!roles", 4
    unless_null $P1418, vivify_462
    $P1418 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    set $N100, $P1418
    set $I100, $N100
    set $P107, param_1415
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1419, $P108, $P109, "@!roles", 4
    unless_null $P1419, vivify_463
    $P1419 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P108, $P109, "@!roles", 4, $P1419
  vivify_463:
    set $P1419[$I100], $P103
.annotate 'line', 474
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("76_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1421
    .param pmc param_1422
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 479
    .lex "self", param_1421
    .lex "$obj", param_1422
.annotate 'line', 480
    new $P103, "Float"
    assign $P103, 1
    set $P104, param_1421
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!composed", 5, $P103
.annotate 'line', 479
    set $P103, param_1422
    unless_null $P103, vivify_464
    new $P103, "Undef"
  vivify_464:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("77_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 490
    .lex "self", param_1424
    .lex "$obj", param_1425
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "specialize" :anon :subid("78_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1429
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1452 = "82_1323686348.97588" 
    capture_lex $P1452
    .const 'Sub' $P1445 = "81_1323686348.97588" 
    capture_lex $P1445
    .const 'Sub' $P1440 = "80_1323686348.97588" 
    capture_lex $P1440
    .const 'Sub' $P1435 = "79_1323686348.97588" 
    capture_lex $P1435
    new $P1428, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1428, control_1427
    push_eh $P1428
    .lex "self", param_1429
    .lex "$obj", param_1430
    .lex "$class_arg", param_1431
.annotate 'line', 502
    new $P103, "Undef"
    set $P1432, $P103
    .lex "$irole", $P1432
.annotate 'line', 499
    set $P104, param_1429
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!body_block", 6
    unless_null $P107, vivify_465
    new $P107, "Undef"
  vivify_465:
    set $P108, param_1431
    unless_null $P108, vivify_466
    new $P108, "Undef"
  vivify_466:
    $P107($P108)
.annotate 'line', 502
    find_lex $P104, "NQPConcreteRoleHOW"
    set $P105, param_1429
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P108, $P106, $P107, "$!name", 0
    unless_null $P108, vivify_467
    new $P108, "Undef"
  vivify_467:
    set $P109, param_1430
    unless_null $P109, vivify_468
    new $P109, "Undef"
  vivify_468:
    $P110 = $P104."new_type"($P108 :named("name"), $P109 :named("instance_of"))
    set $P1432, $P110
.annotate 'line', 506
    set $P105, param_1429
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1433, $P106, $P107, "%!attributes", 1
    unless_null $P1433, vivify_469
    $P1433 = root_new ['parrot';'Hash']
  vivify_469:
    defined $I100, $P1433
    unless $I100, for_undef_470
    iter $P104, $P1433
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1437_handler
    push_eh $P109
  loop1437_test:
    unless $P104, loop1437_done
    shift $P108, $P104
  loop1437_redo:
    .const 'Sub' $P1435 = "79_1323686348.97588" 
    capture_lex $P1435
    $P1435($P108)
  loop1437_next:
    goto loop1437_test
  loop1437_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1437_next
    eq $P110, .CONTROL_LOOP_REDO, loop1437_redo
  loop1437_done:
    pop_eh 
  for_undef_470:
.annotate 'line', 511
    set $P105, param_1429
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1438, $P106, $P107, "%!methods", 2
    unless_null $P1438, vivify_474
    $P1438 = root_new ['parrot';'Hash']
  vivify_474:
    defined $I100, $P1438
    unless $I100, for_undef_475
    iter $P104, $P1438
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1442_handler
    push_eh $P109
  loop1442_test:
    unless $P104, loop1442_done
    shift $P108, $P104
  loop1442_redo:
    .const 'Sub' $P1440 = "80_1323686348.97588" 
    capture_lex $P1440
    $P1440($P108)
  loop1442_next:
    goto loop1442_test
  loop1442_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1442_next
    eq $P110, .CONTROL_LOOP_REDO, loop1442_redo
  loop1442_done:
    pop_eh 
  for_undef_475:
.annotate 'line', 514
    set $P105, param_1429
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1443, $P106, $P107, "@!multi_methods_to_incorporate", 3
    unless_null $P1443, vivify_480
    $P1443 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
    defined $I100, $P1443
    unless $I100, for_undef_481
    iter $P104, $P1443
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1449_handler
    push_eh $P109
  loop1449_test:
    unless $P104, loop1449_done
    shift $P108, $P104
  loop1449_redo:
    .const 'Sub' $P1445 = "81_1323686348.97588" 
    capture_lex $P1445
    $P1445($P108)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1449_next
    eq $P110, .CONTROL_LOOP_REDO, loop1449_redo
  loop1449_done:
    pop_eh 
  for_undef_481:
.annotate 'line', 519
    set $P105, param_1429
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1450, $P106, $P107, "@!roles", 4
    unless_null $P1450, vivify_488
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
    defined $I100, $P1450
    unless $I100, for_undef_489
    iter $P104, $P1450
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1455_handler
    push_eh $P110
  loop1455_test:
    unless $P104, loop1455_done
    shift $P108, $P104
  loop1455_redo:
    .const 'Sub' $P1452 = "82_1323686348.97588" 
    capture_lex $P1452
    $P1452($P108)
  loop1455_next:
    goto loop1455_test
  loop1455_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1455_next
    eq $P111, .CONTROL_LOOP_REDO, loop1455_redo
  loop1455_done:
    pop_eh 
  for_undef_489:
.annotate 'line', 525
    set $P104, $P1432
    unless_null $P104, vivify_496
    new $P104, "Undef"
  vivify_496:
    get_how $P105, $P104
    set $P106, $P1432
    unless_null $P106, vivify_497
    new $P106, "Undef"
  vivify_497:
    $P105."compose"($P106)
.annotate 'line', 526
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    set $P105, $P1432
    unless_null $P105, vivify_498
    new $P105, "Undef"
  vivify_498:
    setattribute $P104, 'payload', $P105
    throw $P104
.annotate 'line', 496
    .return ()
  control_1427:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1434"  :anon :subid("79_1323686348.97588") :outer("78_1323686348.97588")
    .param pmc param_1436
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1436
.annotate 'line', 507
    find_lex $P109, "$irole"
    unless_null $P109, vivify_471
    new $P109, "Undef"
  vivify_471:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_472
    new $P111, "Undef"
  vivify_472:
    find_lex $P112, "$_"
    unless_null $P112, vivify_473
    new $P112, "Undef"
  vivify_473:
    $P113 = $P112."value"()
    $P114 = $P110."add_attribute"($P111, $P113)
.annotate 'line', 506
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1439"  :anon :subid("80_1323686348.97588") :outer("78_1323686348.97588")
    .param pmc param_1441
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1441
.annotate 'line', 512
    find_lex $P109, "$irole"
    unless_null $P109, vivify_476
    new $P109, "Undef"
  vivify_476:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_477
    new $P111, "Undef"
  vivify_477:
    find_lex $P112, "$_"
    unless_null $P112, vivify_478
    new $P112, "Undef"
  vivify_478:
    $P113 = $P112."key"()
    find_lex $P114, "$_"
    unless_null $P114, vivify_479
    new $P114, "Undef"
  vivify_479:
    $P115 = $P114."value"()
    $P116 = "reify_method"($P115)
    $P117 = $P110."add_method"($P111, $P113, $P116)
.annotate 'line', 511
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1444"  :anon :subid("81_1323686348.97588") :outer("78_1323686348.97588")
    .param pmc param_1446
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1446
.annotate 'line', 515
    find_lex $P109, "$irole"
    unless_null $P109, vivify_482
    new $P109, "Undef"
  vivify_482:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_483
    new $P111, "Undef"
  vivify_483:
    find_lex $P1447, "$_"
    unless_null $P1447, vivify_484
    $P1447 = root_new ['parrot';'Hash']
  vivify_484:
    set $P112, $P1447["name"]
    unless_null $P112, vivify_485
    new $P112, "Undef"
  vivify_485:
    find_lex $P1448, "$_"
    unless_null $P1448, vivify_486
    $P1448 = root_new ['parrot';'Hash']
  vivify_486:
    set $P113, $P1448["code"]
    unless_null $P113, vivify_487
    new $P113, "Undef"
  vivify_487:
    $P114 = "reify_method"($P113)
    $P115 = $P110."add_multi_method"($P111, $P112, $P114)
.annotate 'line', 514
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1451"  :anon :subid("82_1323686348.97588") :outer("78_1323686348.97588")
    .param pmc param_1454
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 520
    new $P109, "Undef"
    set $P1453, $P109
    .lex "$specialized", $P1453
    .lex "$_", param_1454
    find_lex $P110, "$irole"
    unless_null $P110, vivify_490
    new $P110, "Undef"
  vivify_490:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_491
    new $P112, "Undef"
  vivify_491:
    find_lex $P113, "$class_arg"
    unless_null $P113, vivify_492
    new $P113, "Undef"
  vivify_492:
    $P114 = $P111."specialize"($P112, $P113)
    set $P1453, $P114
.annotate 'line', 521
    find_lex $P110, "$irole"
    unless_null $P110, vivify_493
    new $P110, "Undef"
  vivify_493:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_494
    new $P112, "Undef"
  vivify_494:
    set $P113, $P1453
    unless_null $P113, vivify_495
    new $P113, "Undef"
  vivify_495:
    $P114 = $P111."add_role"($P112, $P113)
.annotate 'line', 519
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("83_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1457
    .param pmc param_1458
    .param pmc param_1459 :optional :named("local")
    .param int has_param_1459 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 540
    .const 'Sub' $P1465 = "84_1323686348.97588" 
    capture_lex $P1465
    .lex "self", param_1457
    .lex "$obj", param_1458
    if has_param_1459, optparam_499
    new $P103, "Undef"
    set param_1459, $P103
  optparam_499:
    .lex "$local", param_1459
.annotate 'line', 541
    $P1461 = root_new ['parrot';'ResizablePMCArray']
    set $P1460, $P1461
    .lex "@meths", $P1460
.annotate 'line', 540
    set $P1462, $P1460
    unless_null $P1462, vivify_500
    $P1462 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
.annotate 'line', 542
    set $P105, param_1457
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1463, $P106, $P107, "%!methods", 2
    unless_null $P1463, vivify_501
    $P1463 = root_new ['parrot';'Hash']
  vivify_501:
    defined $I100, $P1463
    unless $I100, for_undef_502
    iter $P104, $P1463
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1468_handler
    push_eh $P109
  loop1468_test:
    unless $P104, loop1468_done
    shift $P108, $P104
  loop1468_redo:
    .const 'Sub' $P1465 = "84_1323686348.97588" 
    capture_lex $P1465
    $P1465($P108)
  loop1468_next:
    goto loop1468_test
  loop1468_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1468_next
    eq $P110, .CONTROL_LOOP_REDO, loop1468_redo
  loop1468_done:
    pop_eh 
  for_undef_502:
.annotate 'line', 540
    set $P1469, $P1460
    unless_null $P1469, vivify_505
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    .return ($P1469)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1464"  :anon :subid("84_1323686348.97588") :outer("83_1323686348.97588")
    .param pmc param_1466
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 542
    .lex "$_", param_1466
.annotate 'line', 543
    find_lex $P1467, "@meths"
    unless_null $P1467, vivify_503
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_503:
    find_lex $P109, "$_"
    unless_null $P109, vivify_504
    new $P109, "Undef"
  vivify_504:
    $P110 = $P109."value"()
    $P111 = $P1467."push"($P110)
.annotate 'line', 542
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("85_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1471
    .param pmc param_1472
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 548
    .lex "self", param_1471
    .lex "$obj", param_1472
    set $P103, param_1471
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1473, $P104, $P105, "%!methods", 2
    unless_null $P1473, vivify_506
    $P1473 = root_new ['parrot';'Hash']
  vivify_506:
    .return ($P1473)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("86_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1475
    .param pmc param_1476
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 552
    .lex "self", param_1475
    .lex "$obj", param_1476
    set $P103, param_1475
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_507
    new $P106, "Undef"
  vivify_507:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("87_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1478
    .param pmc param_1479
    .param pmc param_1480 :optional :named("local")
    .param int has_param_1480 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 556
    .const 'Sub' $P1486 = "88_1323686348.97588" 
    capture_lex $P1486
    .lex "self", param_1478
    .lex "$obj", param_1479
    if has_param_1480, optparam_508
    new $P103, "Undef"
    set param_1480, $P103
  optparam_508:
    .lex "$local", param_1480
.annotate 'line', 557
    $P1482 = root_new ['parrot';'ResizablePMCArray']
    set $P1481, $P1482
    .lex "@attrs", $P1481
.annotate 'line', 556
    set $P1483, $P1481
    unless_null $P1483, vivify_509
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
.annotate 'line', 558
    set $P105, param_1478
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1484, $P106, $P107, "%!attributes", 1
    unless_null $P1484, vivify_510
    $P1484 = root_new ['parrot';'Hash']
  vivify_510:
    defined $I100, $P1484
    unless $I100, for_undef_511
    iter $P104, $P1484
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1489_handler
    push_eh $P109
  loop1489_test:
    unless $P104, loop1489_done
    shift $P108, $P104
  loop1489_redo:
    .const 'Sub' $P1486 = "88_1323686348.97588" 
    capture_lex $P1486
    $P1486($P108)
  loop1489_next:
    goto loop1489_test
  loop1489_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1489_next
    eq $P110, .CONTROL_LOOP_REDO, loop1489_redo
  loop1489_done:
    pop_eh 
  for_undef_511:
.annotate 'line', 556
    set $P1490, $P1481
    unless_null $P1490, vivify_514
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    .return ($P1490)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1485"  :anon :subid("88_1323686348.97588") :outer("87_1323686348.97588")
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 558
    .lex "$_", param_1487
.annotate 'line', 559
    find_lex $P1488, "@attrs"
    unless_null $P1488, vivify_512
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_512:
    find_lex $P109, "$_"
    unless_null $P109, vivify_513
    new $P109, "Undef"
  vivify_513:
    $P110 = $P109."value"()
    $P111 = $P1488."push"($P110)
.annotate 'line', 558
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("89_1323686348.97588") :outer("64_1323686348.97588")
    .param pmc param_1492
    .param pmc param_1493
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 564
    .lex "self", param_1492
    .lex "$obj", param_1493
    set $P103, param_1492
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1494, $P104, $P105, "@!roles", 4
    unless_null $P1494, vivify_515
    $P1494 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    .return ($P1494)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1496"  :subid("90_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 574
    .const 'Sub' $P1963 = "151_1323686348.97588" 
    capture_lex $P1963
    .const 'Sub' $P1946 = "149_1323686348.97588" 
    capture_lex $P1946
    .const 'Sub' $P1930 = "147_1323686348.97588" 
    capture_lex $P1930
    .const 'Sub' $P1919 = "146_1323686348.97588" 
    capture_lex $P1919
    .const 'Sub' $P1907 = "145_1323686348.97588" 
    capture_lex $P1907
    .const 'Sub' $P1902 = "144_1323686348.97588" 
    capture_lex $P1902
    .const 'Sub' $P1897 = "143_1323686348.97588" 
    capture_lex $P1897
    .const 'Sub' $P1883 = "141_1323686348.97588" 
    capture_lex $P1883
    .const 'Sub' $P1880 = "140_1323686348.97588" 
    capture_lex $P1880
    .const 'Sub' $P1876 = "139_1323686348.97588" 
    capture_lex $P1876
    .const 'Sub' $P1862 = "137_1323686348.97588" 
    capture_lex $P1862
    .const 'Sub' $P1857 = "136_1323686348.97588" 
    capture_lex $P1857
    .const 'Sub' $P1853 = "135_1323686348.97588" 
    capture_lex $P1853
    .const 'Sub' $P1846 = "134_1323686348.97588" 
    capture_lex $P1846
    .const 'Sub' $P1827 = "132_1323686348.97588" 
    capture_lex $P1827
    .const 'Sub' $P1808 = "130_1323686348.97588" 
    capture_lex $P1808
    .const 'Sub' $P1803 = "129_1323686348.97588" 
    capture_lex $P1803
    .const 'Sub' $P1786 = "127_1323686348.97588" 
    capture_lex $P1786
    .const 'Sub' $P1767 = "124_1323686348.97588" 
    capture_lex $P1767
    .const 'Sub' $P1719 = "119_1323686348.97588" 
    capture_lex $P1719
    .const 'Sub' $P1689 = "115_1323686348.97588" 
    capture_lex $P1689
    .const 'Sub' $P1681 = "114_1323686348.97588" 
    capture_lex $P1681
    .const 'Sub' $P1673 = "113_1323686348.97588" 
    capture_lex $P1673
    .const 'Sub' $P1661 = "111_1323686348.97588" 
    capture_lex $P1661
    .const 'Sub' $P1657 = "110_1323686348.97588" 
    capture_lex $P1657
    .const 'Sub' $P1643 = "108_1323686348.97588" 
    capture_lex $P1643
    .const 'Sub' $P1635 = "107_1323686348.97588" 
    capture_lex $P1635
    .const 'Sub' $P1622 = "106_1323686348.97588" 
    capture_lex $P1622
    .const 'Sub' $P1611 = "105_1323686348.97588" 
    capture_lex $P1611
    .const 'Sub' $P1605 = "104_1323686348.97588" 
    capture_lex $P1605
    .const 'Sub' $P1602 = "103_1323686348.97588" 
    capture_lex $P1602
    .const 'Sub' $P1598 = "102_1323686348.97588" 
    capture_lex $P1598
    .const 'Sub' $P1596 = "101_1323686348.97588" 
    capture_lex $P1596
    .const 'Sub' $P1532 = "94_1323686348.97588" 
    capture_lex $P1532
    .const 'Sub' $P1500 = "91_1323686348.97588" 
    capture_lex $P1500
.annotate 'line', 610
    new $P100, "Undef"
    set $P1498, $P100
    .lex "$archetypes", $P1498
.annotate 'line', 824
    .const 'Sub' $P1500 = "91_1323686348.97588" 
    newclosure $P1530, $P1500
    set $P1499, $P1530
    .lex "compute_c3_mro", $P1499
.annotate 'line', 850
    .const 'Sub' $P1532 = "94_1323686348.97588" 
    newclosure $P1593, $P1532
    set $P1531, $P1593
    .lex "c3_merge", $P1531
.annotate 'line', 610
    .lex "$?PACKAGE", $P1594
    .lex "$?CLASS", $P1595
    find_lex $P107, "Archetypes"
    $P108 = $P107."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P1498, $P108
.annotate 'line', 574
    set $P107, $P1499
    set $P107, $P1531
.annotate 'line', 1073
    .const 'Sub' $P1963 = "151_1323686348.97588" 
    newclosure $P1975, $P1963
.annotate 'line', 574
    .return ($P1975)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("91_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1503
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 824
    .const 'Sub' $P1515 = "92_1323686348.97588" 
    capture_lex $P1515
    new $P1502, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1502, control_1501
    push_eh $P1502
    .lex "$class", param_1503
.annotate 'line', 825
    $P1505 = root_new ['parrot';'ResizablePMCArray']
    set $P1504, $P1505
    .lex "@immediate_parents", $P1504
.annotate 'line', 828
    $P1507 = root_new ['parrot';'ResizablePMCArray']
    set $P1506, $P1507
    .lex "@result", $P1506
.annotate 'line', 825
    set $P101, param_1503
    unless_null $P101, vivify_516
    new $P101, "Undef"
  vivify_516:
    get_how $P102, $P101
    set $P103, param_1503
    unless_null $P103, vivify_517
    new $P103, "Undef"
  vivify_517:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    set $P1504, $P104
.annotate 'line', 824
    set $P1508, $P1506
    unless_null $P1508, vivify_518
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
.annotate 'line', 829
    set $P1510, $P1504
    unless_null $P1510, vivify_519
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $N100, $P1510
    unless $N100, if_1509_end
.annotate 'line', 830
    set $P1512, $P1504
    unless_null $P1512, vivify_520
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
    set $N101, $P1512
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1511
.annotate 'line', 832
    .const 'Sub' $P1515 = "92_1323686348.97588" 
    capture_lex $P1515
    $P1515()
    goto if_1511_end
  if_1511:
.annotate 'line', 831
    new $P101, "Float"
    assign $P101, 0
    set $I101, $P101
    set $P1513, $P1504
    unless_null $P1513, vivify_529
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    set $P102, $P1513[$I101]
    unless_null $P102, vivify_530
    new $P102, "Undef"
  vivify_530:
    $P103 = "compute_c3_mro"($P102)
    set $P1506, $P103
  if_1511_end:
  if_1509_end:
.annotate 'line', 845
    set $P1528, $P1506
    unless_null $P1528, vivify_531
    $P1528 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    set $P101, param_1503
    unless_null $P101, vivify_532
    new $P101, "Undef"
  vivify_532:
    $P1528."unshift"($P101)
.annotate 'line', 846
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    set $P1529, $P1506
    unless_null $P1529, vivify_533
    $P1529 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    setattribute $P101, 'payload', $P1529
    throw $P101
.annotate 'line', 824
    .return ()
  control_1501:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1514"  :anon :subid("92_1323686348.97588") :outer("91_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 832
    .const 'Sub' $P1521 = "93_1323686348.97588" 
    capture_lex $P1521
.annotate 'line', 835
    $P1517 = root_new ['parrot';'ResizablePMCArray']
    set $P1516, $P1517
    .lex "@merge_list", $P1516
.annotate 'line', 832
    set $P1518, $P1516
    unless_null $P1518, vivify_521
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
.annotate 'line', 836
    find_lex $P1519, "@immediate_parents"
    unless_null $P1519, vivify_522
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    defined $I101, $P1519
    unless $I101, for_undef_523
    iter $P101, $P1519
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1524_handler
    push_eh $P103
  loop1524_test:
    unless $P101, loop1524_done
    shift $P102, $P101
  loop1524_redo:
    .const 'Sub' $P1521 = "93_1323686348.97588" 
    capture_lex $P1521
    $P1521($P102)
  loop1524_next:
    goto loop1524_test
  loop1524_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1524_next
    eq $P104, .CONTROL_LOOP_REDO, loop1524_redo
  loop1524_done:
    pop_eh 
  for_undef_523:
.annotate 'line', 839
    set $P1525, $P1516
    unless_null $P1525, vivify_526
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    find_lex $P1526, "@immediate_parents"
    unless_null $P1526, vivify_527
    $P1526 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P1525."push"($P1526)
.annotate 'line', 840
    set $P1527, $P1516
    unless_null $P1527, vivify_528
    $P1527 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    $P101 = "c3_merge"($P1527)
    store_lex "@result", $P101
.annotate 'line', 832
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1520"  :anon :subid("93_1323686348.97588") :outer("92_1323686348.97588")
    .param pmc param_1522
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 836
    .lex "$_", param_1522
.annotate 'line', 837
    find_lex $P1523, "@merge_list"
    unless_null $P1523, vivify_524
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    find_lex $P103, "$_"
    unless_null $P103, vivify_525
    new $P103, "Undef"
  vivify_525:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1523."push"($P104)
.annotate 'line', 836
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("94_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1535
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 850
    .const 'Sub' $P1576 = "99_1323686348.97588" 
    capture_lex $P1576
    .const 'Sub' $P1545 = "95_1323686348.97588" 
    capture_lex $P1545
    new $P1534, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1534, control_1533
    push_eh $P1534
    .lex "@merge_list", param_1535
.annotate 'line', 851
    $P1537 = root_new ['parrot';'ResizablePMCArray']
    set $P1536, $P1537
    .lex "@result", $P1536
.annotate 'line', 852
    new $P102, "Undef"
    set $P1538, $P102
    .lex "$accepted", $P1538
.annotate 'line', 853
    new $P103, "Undef"
    set $P1539, $P103
    .lex "$something_accepted", $P1539
.annotate 'line', 854
    new $P104, "Undef"
    set $P1540, $P104
    .lex "$cand_count", $P1540
.annotate 'line', 897
    new $P105, "Undef"
    set $P1541, $P105
    .lex "$i", $P1541
.annotate 'line', 850
    set $P1542, $P1536
    unless_null $P1542, vivify_534
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    set $P106, $P1538
    unless_null $P106, vivify_535
    new $P106, "Undef"
  vivify_535:
.annotate 'line', 853
    new $P106, "Float"
    assign $P106, 0
    set $P1539, $P106
.annotate 'line', 854
    new $P106, "Float"
    assign $P106, 0
    set $P1540, $P106
.annotate 'line', 857
    set $P1543, param_1535
    unless_null $P1543, vivify_536
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    defined $I100, $P1543
    unless $I100, for_undef_537
    iter $P106, $P1543
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1570_handler
    push_eh $P109
  loop1570_test:
    unless $P106, loop1570_done
    shift $P107, $P106
  loop1570_redo:
    .const 'Sub' $P1545 = "95_1323686348.97588" 
    capture_lex $P1545
    $P1545($P107)
  loop1570_next:
    goto loop1570_test
  loop1570_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1570_next
    eq $P110, .CONTROL_LOOP_REDO, loop1570_redo
  loop1570_done:
    pop_eh 
  for_undef_537:
.annotate 'line', 887
    set $P106, $P1540
    unless_null $P106, vivify_556
    new $P106, "Undef"
  vivify_556:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1571_end
.annotate 'line', 888
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    set $P1572, $P1536
    unless_null $P1572, vivify_557
    $P1572 = root_new ['parrot';'ResizablePMCArray']
  vivify_557:
    setattribute $P107, 'payload', $P1572
    throw $P107
  if_1571_end:
.annotate 'line', 892
    set $P106, $P1539
    unless_null $P106, vivify_558
    new $P106, "Undef"
  vivify_558:
    if $P106, unless_1573_end
.annotate 'line', 893
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1573_end:
.annotate 'line', 897
    new $P106, "Float"
    assign $P106, 0
    set $P1541, $P106
.annotate 'line', 898
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1589_handler
    push_eh $P107
  loop1589_test:
    set $P106, $P1541
    unless_null $P106, vivify_559
    new $P106, "Undef"
  vivify_559:
    set $N100, $P106
    set $P1574, param_1535
    unless_null $P1574, vivify_560
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_560:
    set $N101, $P1574
    islt $I100, $N100, $N101
    unless $I100, loop1589_done
  loop1589_redo:
    .const 'Sub' $P1576 = "99_1323686348.97588" 
    capture_lex $P1576
    $P1576()
  loop1589_next:
    goto loop1589_test
  loop1589_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1589_next
    eq $P109, .CONTROL_LOOP_REDO, loop1589_redo
  loop1589_done:
    pop_eh 
.annotate 'line', 911
    set $P1590, param_1535
    unless_null $P1590, vivify_574
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    $P106 = "c3_merge"($P1590)
    set $P1536, $P106
.annotate 'line', 912
    set $P1591, $P1536
    unless_null $P1591, vivify_575
    $P1591 = root_new ['parrot';'ResizablePMCArray']
  vivify_575:
    set $P106, $P1538
    unless_null $P106, vivify_576
    new $P106, "Undef"
  vivify_576:
    $P1591."unshift"($P106)
.annotate 'line', 913
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P1592, $P1536
    unless_null $P1592, vivify_577
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_577:
    setattribute $P106, 'payload', $P1592
    throw $P106
.annotate 'line', 850
    .return ()
  control_1533:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1544"  :anon :subid("95_1323686348.97588") :outer("94_1323686348.97588")
    .param pmc param_1548
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 857
    .const 'Sub' $P1552 = "96_1323686348.97588" 
    capture_lex $P1552
.annotate 'line', 858
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    set $P1546, $P1547
    .lex "@cand_list", $P1546
    .lex "$_", param_1548
    find_lex $P108, "$_"
    unless_null $P108, vivify_538
    new $P108, "Undef"
  vivify_538:
    set $P1546, $P108
.annotate 'line', 859
    set $P1550, $P1546
    unless_null $P1550, vivify_539
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    set $N100, $P1550
    if $N100, if_1549
    new $P108, 'Float'
    set $P108, $N100
    goto if_1549_end
  if_1549:
    .const 'Sub' $P1552 = "96_1323686348.97588" 
    capture_lex $P1552
    $P112 = $P1552()
    set $P108, $P112
  if_1549_end:
.annotate 'line', 857
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1551"  :anon :subid("96_1323686348.97588") :outer("95_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 859
    .const 'Sub' $P1558 = "97_1323686348.97588" 
    capture_lex $P1558
.annotate 'line', 860
    new $P109, "Undef"
    set $P1553, $P109
    .lex "$rejected", $P1553
.annotate 'line', 861
    new $P110, "Undef"
    set $P1554, $P110
    .lex "$cand_class", $P1554
.annotate 'line', 860
    new $P111, "Float"
    assign $P111, 0
    set $P1553, $P111
.annotate 'line', 861
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    find_lex $P1555, "@cand_list"
    unless_null $P1555, vivify_540
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_540:
    set $P112, $P1555[$I101]
    unless_null $P112, vivify_541
    new $P112, "Undef"
  vivify_541:
    set $P1554, $P112
.annotate 'line', 862
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_542
    new $P111, "Undef"
  vivify_542:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 863
    find_lex $P1556, "@merge_list"
    unless_null $P1556, vivify_543
    $P1556 = root_new ['parrot';'ResizablePMCArray']
  vivify_543:
    defined $I101, $P1556
    unless $I101, for_undef_544
    iter $P111, $P1556
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1568_handler
    push_eh $P114
  loop1568_test:
    unless $P111, loop1568_done
    shift $P112, $P111
  loop1568_redo:
    .const 'Sub' $P1558 = "97_1323686348.97588" 
    capture_lex $P1558
    $P1558($P112)
  loop1568_next:
    goto loop1568_test
  loop1568_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1568_next
    eq $P115, .CONTROL_LOOP_REDO, loop1568_redo
  loop1568_done:
    pop_eh 
  for_undef_544:
.annotate 'line', 878
    set $P112, $P1553
    unless_null $P112, vivify_554
    new $P112, "Undef"
  vivify_554:
    unless $P112, unless_1569
    set $P111, $P112
    goto unless_1569_end
  unless_1569:
.annotate 'line', 879
    set $P113, $P1554
    unless_null $P113, vivify_555
    new $P113, "Undef"
  vivify_555:
    store_lex "$accepted", $P113
.annotate 'line', 880
    new $P113, "Float"
    assign $P113, 1
    store_lex "$something_accepted", $P113
.annotate 'line', 881
    die 0, .CONTROL_LOOP_LAST
  unless_1569_end:
.annotate 'line', 859
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1557"  :anon :subid("97_1323686348.97588") :outer("96_1323686348.97588")
    .param pmc param_1559
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 863
    .const 'Sub' $P1563 = "98_1323686348.97588" 
    capture_lex $P1563
    .lex "$_", param_1559
.annotate 'line', 865
    find_lex $P114, "$_"
    unless_null $P114, vivify_545
    new $P114, "Undef"
  vivify_545:
    find_lex $P1561, "@cand_list"
    unless_null $P1561, vivify_546
    $P1561 = root_new ['parrot';'ResizablePMCArray']
  vivify_546:
    issame $I102, $P114, $P1561
    unless $I102, unless_1560
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1560_end
  unless_1560:
    .const 'Sub' $P1563 = "98_1323686348.97588" 
    capture_lex $P1563
    $P116 = $P1563()
    set $P113, $P116
  unless_1560_end:
.annotate 'line', 863
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1562"  :anon :subid("98_1323686348.97588") :outer("97_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 867
    new $P115, "Undef"
    set $P1564, $P115
    .lex "$cur_pos", $P1564
    new $P116, "Float"
    assign $P116, 1
    set $P1564, $P116
.annotate 'line', 868
    new $P118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P118, loop1567_handler
    push_eh $P118
  loop1567_test:
    set $P116, $P1564
    unless_null $P116, vivify_547
    new $P116, "Undef"
  vivify_547:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_548
    new $P117, "Undef"
  vivify_548:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1567_done
  loop1567_redo:
.annotate 'line', 869
    set $P118, $P1564
    unless_null $P118, vivify_549
    new $P118, "Undef"
  vivify_549:
    set $I104, $P118
    find_lex $P1566, "$_"
    unless_null $P1566, vivify_550
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_550:
    set $P119, $P1566[$I104]
    unless_null $P119, vivify_551
    new $P119, "Undef"
  vivify_551:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_552
    new $P120, "Undef"
  vivify_552:
    issame $I105, $P119, $P120
    unless $I105, if_1565_end
.annotate 'line', 870
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1565_end:
.annotate 'line', 872
    set $P118, $P1564
    unless_null $P118, vivify_553
    new $P118, "Undef"
  vivify_553:
    add $P119, $P118, 1
    set $P1564, $P119
  loop1567_next:
.annotate 'line', 868
    goto loop1567_test
  loop1567_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1567_next
    eq $P119, .CONTROL_LOOP_REDO, loop1567_redo
  loop1567_done:
    pop_eh 
.annotate 'line', 865
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1575"  :anon :subid("99_1323686348.97588") :outer("94_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 898
    .const 'Sub' $P1582 = "100_1323686348.97588" 
    capture_lex $P1582
.annotate 'line', 899
    $P1578 = root_new ['parrot';'ResizablePMCArray']
    set $P1577, $P1578
    .lex "@new_list", $P1577
.annotate 'line', 898
    set $P1579, $P1577
    unless_null $P1579, vivify_561
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_561:
.annotate 'line', 900
    find_lex $P108, "$i"
    unless_null $P108, vivify_562
    new $P108, "Undef"
  vivify_562:
    set $I101, $P108
    find_lex $P1580, "@merge_list"
    unless_null $P1580, vivify_563
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $P109, $P1580[$I101]
    unless_null $P109, vivify_564
    new $P109, "Undef"
  vivify_564:
    defined $I102, $P109
    unless $I102, for_undef_565
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1586_handler
    push_eh $P112
  loop1586_test:
    unless $P107, loop1586_done
    shift $P110, $P107
  loop1586_redo:
    .const 'Sub' $P1582 = "100_1323686348.97588" 
    capture_lex $P1582
    $P1582($P110)
  loop1586_next:
    goto loop1586_test
  loop1586_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1586_next
    eq $P113, .CONTROL_LOOP_REDO, loop1586_redo
  loop1586_done:
    pop_eh 
  for_undef_565:
.annotate 'line', 905
    set $P1587, $P1577
    unless_null $P1587, vivify_570
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_570:
    find_lex $P107, "$i"
    unless_null $P107, vivify_571
    new $P107, "Undef"
  vivify_571:
    set $I101, $P107
    find_lex $P1588, "@merge_list"
    unless_null $P1588, vivify_572
    $P1588 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1588
  vivify_572:
    set $P1588[$I101], $P1587
.annotate 'line', 906
    find_lex $P107, "$i"
    unless_null $P107, vivify_573
    new $P107, "Undef"
  vivify_573:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 898
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1581"  :anon :subid("100_1323686348.97588") :outer("99_1323686348.97588")
    .param pmc param_1583
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 900
    .lex "$_", param_1583
.annotate 'line', 901
    find_lex $P112, "$_"
    unless_null $P112, vivify_566
    new $P112, "Undef"
  vivify_566:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_567
    new $P113, "Undef"
  vivify_567:
    issame $I103, $P112, $P113
    unless $I103, unless_1584
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1584_end
  unless_1584:
.annotate 'line', 902
    find_lex $P1585, "@new_list"
    unless_null $P1585, vivify_568
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_568:
    find_lex $P114, "$_"
    unless_null $P114, vivify_569
    new $P114, "Undef"
  vivify_569:
    $P115 = $P1585."push"($P114)
.annotate 'line', 901
    set $P111, $P115
  unless_1584_end:
.annotate 'line', 900
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("101_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1597
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 611
    .lex "self", param_1597
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_578
    new $P107, "Undef"
  vivify_578:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("102_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1599
    .param pmc param_1600 :optional :named("name")
    .param int has_param_1600 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 620
    .lex "self", param_1599
    if has_param_1600, optparam_579
    new $P107, "Undef"
    set param_1600, $P107
  optparam_579:
    .lex "$name", param_1600
.annotate 'line', 621
    new $P108, "Undef"
    set $P1601, $P108
    .lex "$obj", $P1601
    set $P109, param_1599
    nqp_decontainerize $P110, $P109
    repr_instance_of $P111, $P110
    set $P1601, $P111
.annotate 'line', 622
    set $P109, $P1601
    unless_null $P109, vivify_580
    new $P109, "Undef"
  vivify_580:
    set $P110, param_1600
    unless_null $P110, vivify_581
    new $P110, "Undef"
  vivify_581:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 620
    set $P109, $P1601
    unless_null $P109, vivify_582
    new $P109, "Undef"
  vivify_582:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("103_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1603
    .param pmc param_1604 :optional :named("name")
    .param int has_param_1604 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 626
    .lex "self", param_1603
    if has_param_1604, optparam_583
    new $P107, "Undef"
    set param_1604, $P107
  optparam_583:
    .lex "$name", param_1604
.annotate 'line', 627
    set $P108, param_1604
    unless_null $P108, vivify_584
    new $P108, "Undef"
  vivify_584:
    set $P109, param_1603
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 626
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("104_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1606
    .param pmc param_1607 :optional :named("name")
    .param int has_param_1607 :opt_flag
    .param pmc param_1608 :optional :named("repr")
    .param int has_param_1608 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 632
    .lex "self", param_1606
    if has_param_1607, optparam_585
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1607, $P107
  optparam_585:
    .lex "$name", param_1607
    if has_param_1608, optparam_586
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1608, $P108
  optparam_586:
    .lex "$repr", param_1608
.annotate 'line', 633
    new $P109, "Undef"
    set $P1609, $P109
    .lex "$metaclass", $P1609
    set $P110, param_1606
    nqp_decontainerize $P111, $P110
    set $P112, param_1607
    unless_null $P112, vivify_587
    new $P112, "Undef"
  vivify_587:
    $P113 = $P111."new"($P112 :named("name"))
    set $P1609, $P113
.annotate 'line', 635
    set $P110, $P1609
    unless_null $P110, vivify_588
    new $P110, "Undef"
  vivify_588:
    set $P111, param_1608
    unless_null $P111, vivify_589
    new $P111, "Undef"
  vivify_589:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1610 = root_new ['parrot';'Hash']
    set_who $P112, $P1610
.annotate 'line', 632
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("105_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1612
    .param pmc param_1613
    .param pmc param_1614
    .param pmc param_1615
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 639
    .lex "self", param_1612
    .lex "$obj", param_1613
    .lex "$name", param_1614
    .lex "$code_obj", param_1615
.annotate 'line', 640
    set $P107, param_1614
    unless_null $P107, vivify_590
    new $P107, "Undef"
  vivify_590:
    set $P108, param_1612
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1617, $P109, $P110, "%!methods", 2
    unless_null $P1617, vivify_591
    $P1617 = root_new ['parrot';'Hash']
  vivify_591:
    set $P111, $P1617[$P107]
    unless_null $P111, vivify_592
    new $P111, "Undef"
  vivify_592:
    unless $P111, if_1616_end
.annotate 'line', 641
    new $P112, "String"
    assign $P112, "This class already has a method named "
    set $P113, param_1614
    unless_null $P113, vivify_593
    new $P113, "Undef"
  vivify_593:
    concat $P114, $P112, $P113
    die $P114
  if_1616_end:
.annotate 'line', 643
    set $P108, param_1615
    unless_null $P108, vivify_594
    new $P108, "Undef"
  vivify_594:
    isnull $I100, $P108
    unless $I100, unless_1619
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1619_end
  unless_1619:
    set $P109, param_1615
    unless_null $P109, vivify_595
    new $P109, "Undef"
  vivify_595:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1619_end:
    unless $P107, if_1618_end
.annotate 'line', 644
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    set $P111, param_1614
    unless_null $P111, vivify_596
    new $P111, "Undef"
  vivify_596:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    set $P114, param_1612
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_597
    new $P117, "Undef"
  vivify_597:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1618_end:
.annotate 'line', 646
    set $P107, param_1613
    unless_null $P107, vivify_598
    new $P107, "Undef"
  vivify_598:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 647
    $P1620 = root_new ['parrot';'Hash']
    set $P107, param_1612
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_bind_attr_obj $P108, $P109, "%!cache", 12, $P1620
.annotate 'line', 648
    set $P107, param_1615
    unless_null $P107, vivify_599
    new $P107, "Undef"
  vivify_599:
    set $P108, param_1614
    unless_null $P108, vivify_600
    new $P108, "Undef"
  vivify_600:
    set $P109, param_1612
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1621, $P110, $P111, "%!methods", 2
    unless_null $P1621, vivify_601
    $P1621 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1621
  vivify_601:
    set $P1621[$P108], $P107
.annotate 'line', 639
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("106_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1623
    .param pmc param_1624
    .param pmc param_1625
    .param pmc param_1626
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 651
    .lex "self", param_1623
    .lex "$obj", param_1624
    .lex "$name", param_1625
    .lex "$code_obj", param_1626
.annotate 'line', 657
    $P1628 = root_new ['parrot';'Hash']
    set $P1627, $P1628
    .lex "%todo", $P1627
.annotate 'line', 651
    set $P1629, $P1627
    unless_null $P1629, vivify_602
    $P1629 = root_new ['parrot';'Hash']
  vivify_602:
.annotate 'line', 658
    set $P107, param_1625
    unless_null $P107, vivify_603
    new $P107, "Undef"
  vivify_603:
    set $P1630, $P1627
    unless_null $P1630, vivify_604
    $P1630 = root_new ['parrot';'Hash']
    set $P1627, $P1630
  vivify_604:
    set $P1630["name"], $P107
.annotate 'line', 659
    set $P107, param_1626
    unless_null $P107, vivify_605
    new $P107, "Undef"
  vivify_605:
    set $P1631, $P1627
    unless_null $P1631, vivify_606
    $P1631 = root_new ['parrot';'Hash']
    set $P1627, $P1631
  vivify_606:
    set $P1631["code"], $P107
.annotate 'line', 660
    set $P1632, $P1627
    unless_null $P1632, vivify_607
    $P1632 = root_new ['parrot';'Hash']
  vivify_607:
    set $P107, param_1623
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1633, $P108, $P109, "@!multi_methods_to_incorporate", 3
    unless_null $P1633, vivify_608
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    set $N100, $P1633
    set $I100, $N100
    set $P110, param_1623
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1634, $P111, $P112, "@!multi_methods_to_incorporate", 3
    unless_null $P1634, vivify_609
    $P1634 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 3, $P1634
  vivify_609:
    set $P1634[$I100], $P1632
.annotate 'line', 661
    set $P107, param_1624
    unless_null $P107, vivify_610
    new $P107, "Undef"
  vivify_610:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 651
    set $P107, param_1626
    unless_null $P107, vivify_611
    new $P107, "Undef"
  vivify_611:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("107_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1636
    .param pmc param_1637
    .param pmc param_1638
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 665
    .lex "self", param_1636
    .lex "$obj", param_1637
    .lex "$meta_attr", param_1638
.annotate 'line', 666
    new $P107, "Undef"
    set $P1639, $P107
    .lex "$name", $P1639
    set $P108, param_1638
    unless_null $P108, vivify_612
    new $P108, "Undef"
  vivify_612:
    $P109 = $P108."name"()
    set $P1639, $P109
.annotate 'line', 667
    set $P108, $P1639
    unless_null $P108, vivify_613
    new $P108, "Undef"
  vivify_613:
    set $P109, param_1636
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1641, $P110, $P111, "%!attributes", 1
    unless_null $P1641, vivify_614
    $P1641 = root_new ['parrot';'Hash']
  vivify_614:
    set $P112, $P1641[$P108]
    unless_null $P112, vivify_615
    new $P112, "Undef"
  vivify_615:
    unless $P112, if_1640_end
.annotate 'line', 668
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    set $P114, $P1639
    unless_null $P114, vivify_616
    new $P114, "Undef"
  vivify_616:
    concat $P115, $P113, $P114
    die $P115
  if_1640_end:
.annotate 'line', 670
    set $P108, param_1638
    unless_null $P108, vivify_617
    new $P108, "Undef"
  vivify_617:
    set $P109, $P1639
    unless_null $P109, vivify_618
    new $P109, "Undef"
  vivify_618:
    set $P110, param_1636
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1642, $P111, $P112, "%!attributes", 1
    unless_null $P1642, vivify_619
    $P1642 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1642
  vivify_619:
    set $P1642[$P109], $P108
.annotate 'line', 665
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("108_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1644
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 673
    .const 'Sub' $P1651 = "109_1323686348.97588" 
    capture_lex $P1651
    .lex "self", param_1644
    .lex "$obj", param_1645
    .lex "$parent", param_1646
.annotate 'line', 674
    set $P107, param_1644
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_620
    new $P110, "Undef"
  vivify_620:
    unless $P110, if_1647_end
.annotate 'line', 675
    die "NQPClassHOW does not support adding parents after being composed."
  if_1647_end:
.annotate 'line', 677
    set $P107, param_1645
    unless_null $P107, vivify_621
    new $P107, "Undef"
  vivify_621:
    set $P108, param_1646
    unless_null $P108, vivify_622
    new $P108, "Undef"
  vivify_622:
    issame $I100, $P107, $P108
    unless $I100, if_1648_end
.annotate 'line', 678
    new $P109, 'String'
    set $P109, "Class '"
    set $P110, param_1644
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_623
    new $P113, "Undef"
  vivify_623:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1648_end:
.annotate 'line', 680
    set $P108, param_1644
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1649, $P109, $P110, "@!parents", 4
    unless_null $P1649, vivify_624
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    defined $I100, $P1649
    unless $I100, for_undef_625
    iter $P107, $P1649
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1654_handler
    push_eh $P113
  loop1654_test:
    unless $P107, loop1654_done
    shift $P111, $P107
  loop1654_redo:
    .const 'Sub' $P1651 = "109_1323686348.97588" 
    capture_lex $P1651
    $P1651($P111)
  loop1654_next:
    goto loop1654_test
  loop1654_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1654_next
    eq $P114, .CONTROL_LOOP_REDO, loop1654_redo
  loop1654_done:
    pop_eh 
  for_undef_625:
.annotate 'line', 685
    set $P107, param_1646
    unless_null $P107, vivify_629
    new $P107, "Undef"
  vivify_629:
    set $P108, param_1644
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1655, $P109, $P110, "@!parents", 4
    unless_null $P1655, vivify_630
    $P1655 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    set $N100, $P1655
    set $I100, $N100
    set $P111, param_1644
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1656, $P112, $P113, "@!parents", 4
    unless_null $P1656, vivify_631
    $P1656 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 4, $P1656
  vivify_631:
    set $P1656[$I100], $P107
.annotate 'line', 673
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1650"  :anon :subid("109_1323686348.97588") :outer("108_1323686348.97588")
    .param pmc param_1652
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 680
    .lex "$_", param_1652
.annotate 'line', 681
    find_lex $P113, "$_"
    unless_null $P113, vivify_626
    new $P113, "Undef"
  vivify_626:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_627
    new $P114, "Undef"
  vivify_627:
    issame $I101, $P113, $P114
    if $I101, if_1653
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1653_end
  if_1653:
.annotate 'line', 682
    new $P115, "String"
    assign $P115, "Already have "
    find_lex $P116, "$parent"
    unless_null $P116, vivify_628
    new $P116, "Undef"
  vivify_628:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1653_end:
.annotate 'line', 680
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("110_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1658
    .param pmc param_1659
    .param pmc param_1660
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 688
    .lex "self", param_1658
    .lex "$obj", param_1659
    .lex "$parent", param_1660
.annotate 'line', 689
    set $P107, param_1660
    unless_null $P107, vivify_632
    new $P107, "Undef"
  vivify_632:
    set $P108, param_1658
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 6, $P107
.annotate 'line', 688
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("111_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1662
    .param pmc param_1663
    .param pmc param_1664
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 692
    .const 'Sub' $P1667 = "112_1323686348.97588" 
    capture_lex $P1667
    .lex "self", param_1662
    .lex "$obj", param_1663
    .lex "$role", param_1664
.annotate 'line', 693
    set $P108, param_1662
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1665, $P109, $P110, "@!roles", 5
    unless_null $P1665, vivify_633
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    defined $I100, $P1665
    unless $I100, for_undef_634
    iter $P107, $P1665
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1670_handler
    push_eh $P113
  loop1670_test:
    unless $P107, loop1670_done
    shift $P111, $P107
  loop1670_redo:
    .const 'Sub' $P1667 = "112_1323686348.97588" 
    capture_lex $P1667
    $P1667($P111)
  loop1670_next:
    goto loop1670_test
  loop1670_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1670_next
    eq $P114, .CONTROL_LOOP_REDO, loop1670_redo
  loop1670_done:
    pop_eh 
  for_undef_634:
.annotate 'line', 698
    set $P107, param_1664
    unless_null $P107, vivify_638
    new $P107, "Undef"
  vivify_638:
    set $P108, param_1662
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1671, $P109, $P110, "@!roles", 5
    unless_null $P1671, vivify_639
    $P1671 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $N100, $P1671
    set $I100, $N100
    set $P111, param_1662
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1672, $P112, $P113, "@!roles", 5
    unless_null $P1672, vivify_640
    $P1672 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 5, $P1672
  vivify_640:
    set $P1672[$I100], $P107
.annotate 'line', 692
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1666"  :anon :subid("112_1323686348.97588") :outer("111_1323686348.97588")
    .param pmc param_1668
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 693
    .lex "$_", param_1668
.annotate 'line', 694
    find_lex $P113, "$_"
    unless_null $P113, vivify_635
    new $P113, "Undef"
  vivify_635:
    find_lex $P114, "$role"
    unless_null $P114, vivify_636
    new $P114, "Undef"
  vivify_636:
    issame $I101, $P113, $P114
    if $I101, if_1669
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1669_end
  if_1669:
.annotate 'line', 695
    new $P115, "String"
    assign $P115, "The role "
    find_lex $P116, "$role"
    unless_null $P116, vivify_637
    new $P116, "Undef"
  vivify_637:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1669_end:
.annotate 'line', 693
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("113_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1674
    .param pmc param_1675
    .param pmc param_1676
    .param pmc param_1677
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 701
    .lex "self", param_1674
    .lex "$obj", param_1675
    .lex "$name", param_1676
    .lex "$meth", param_1677
.annotate 'line', 702
    set $P107, param_1676
    unless_null $P107, vivify_641
    new $P107, "Undef"
  vivify_641:
    set $P108, param_1674
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1679, $P109, $P110, "%!parrot_vtable_mapping", 13
    unless_null $P1679, vivify_642
    $P1679 = root_new ['parrot';'Hash']
  vivify_642:
    set $P111, $P1679[$P107]
    unless_null $P111, vivify_643
    new $P111, "Undef"
  vivify_643:
    defined $I100, $P111
    unless $I100, if_1678_end
.annotate 'line', 703
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1674
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_644
    new $P116, "Undef"
  vivify_644:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    set $P119, param_1676
    unless_null $P119, vivify_645
    new $P119, "Undef"
  vivify_645:
    concat $P120, $P118, $P119
.annotate 'line', 704
    concat $P121, $P120, "'"
.annotate 'line', 705
    die $P121
  if_1678_end:
.annotate 'line', 707
    set $P107, param_1677
    unless_null $P107, vivify_646
    new $P107, "Undef"
  vivify_646:
    set $P108, param_1676
    unless_null $P108, vivify_647
    new $P108, "Undef"
  vivify_647:
    set $P109, param_1674
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1680, $P110, $P111, "%!parrot_vtable_mapping", 13
    unless_null $P1680, vivify_648
    $P1680 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 13, $P1680
  vivify_648:
    set $P1680[$P108], $P107
.annotate 'line', 701
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("114_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1682
    .param pmc param_1683
    .param pmc param_1684
    .param pmc param_1685
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 710
    .lex "self", param_1682
    .lex "$obj", param_1683
    .lex "$name", param_1684
    .lex "$att_name", param_1685
.annotate 'line', 711
    set $P107, param_1684
    unless_null $P107, vivify_649
    new $P107, "Undef"
  vivify_649:
    set $P108, param_1682
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1687, $P109, $P110, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1687, vivify_650
    $P1687 = root_new ['parrot';'Hash']
  vivify_650:
    set $P111, $P1687[$P107]
    unless_null $P111, vivify_651
    new $P111, "Undef"
  vivify_651:
    defined $I100, $P111
    unless $I100, if_1686_end
.annotate 'line', 712
    new $P112, "String"
    assign $P112, "Class '"
    set $P113, param_1682
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_652
    new $P116, "Undef"
  vivify_652:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    set $P119, param_1684
    unless_null $P119, vivify_653
    new $P119, "Undef"
  vivify_653:
    concat $P120, $P118, $P119
.annotate 'line', 713
    concat $P121, $P120, "'"
.annotate 'line', 714
    die $P121
  if_1686_end:
.annotate 'line', 716
    set $P107, param_1683
    unless_null $P107, vivify_654
    new $P107, "Undef"
  vivify_654:
    set $P108, param_1685
    unless_null $P108, vivify_655
    new $P108, "Undef"
  vivify_655:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    set $P110, param_1684
    unless_null $P110, vivify_656
    new $P110, "Undef"
  vivify_656:
    set $P111, param_1682
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1688, $P112, $P113, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1688, vivify_657
    $P1688 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 14, $P1688
  vivify_657:
    set $P1688[$P110], $P109
.annotate 'line', 710
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("115_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 719
    .const 'Sub' $P1716 = "118_1323686348.97588" 
    capture_lex $P1716
    .const 'Sub' $P1695 = "116_1323686348.97588" 
    capture_lex $P1695
    .lex "self", param_1690
    .lex "$obj", param_1691
.annotate 'line', 723
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1693, $P108, $P109, "@!roles", 5
    unless_null $P1693, vivify_658
    $P1693 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
    unless $P1693, if_1692_end
    .const 'Sub' $P1695 = "116_1323686348.97588" 
    capture_lex $P1695
    $P1695()
  if_1692_end:
.annotate 'line', 736
    set $P108, param_1690
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1713, $P109, $P110, "@!parents", 4
    unless_null $P1713, vivify_675
    $P1713 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
    set $N100, $P1713
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1712
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1712_end
  if_1712:
    set $P111, param_1690
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_676
    new $P114, "Undef"
  vivify_676:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1712_end:
    unless $P107, if_1711_end
.annotate 'line', 737
    set $P115, param_1690
    nqp_decontainerize $P116, $P115
    set $P117, param_1691
    unless_null $P117, vivify_677
    new $P117, "Undef"
  vivify_677:
    set $P118, param_1690
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P121, $P119, $P120, "$!default_parent", 6
    unless_null $P121, vivify_678
    new $P121, "Undef"
  vivify_678:
    $P116."add_parent"($P117, $P121)
  if_1711_end:
.annotate 'line', 742
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_679
    new $P110, "Undef"
  vivify_679:
    if $P110, unless_1714_end
.annotate 'line', 743
    set $P111, param_1691
    unless_null $P111, vivify_680
    new $P111, "Undef"
  vivify_680:
    $P112 = "compute_c3_mro"($P111)
    set $P113, param_1690
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_bind_attr_obj $P114, $P115, "@!mro", 10, $P112
.annotate 'line', 744
    new $P111, "Float"
    assign $P111, 1
    set $P112, param_1690
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    repr_bind_attr_obj $P113, $P114, "$!composed", 9, $P111
  unless_1714_end:
.annotate 'line', 748
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_681
    new $P109, "Undef"
  vivify_681:
    $P108."incorporate_multi_candidates"($P109)
.annotate 'line', 751
    set $P108, param_1690
    nqp_decontainerize $P109, $P108
    set $P110, param_1691
    unless_null $P110, vivify_682
    new $P110, "Undef"
  vivify_682:
    $P111 = $P109."attributes"($P110, "0" :named("local"))
    defined $I100, $P111
    unless $I100, for_undef_683
    iter $P107, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1718_handler
    push_eh $P113
  loop1718_test:
    unless $P107, loop1718_done
    shift $P112, $P107
  loop1718_redo:
    .const 'Sub' $P1716 = "118_1323686348.97588" 
    capture_lex $P1716
    $P1716($P112)
  loop1718_next:
    goto loop1718_test
  loop1718_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1718_next
    eq $P114, .CONTROL_LOOP_REDO, loop1718_redo
  loop1718_done:
    pop_eh 
  for_undef_683:
.annotate 'line', 754
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_686
    new $P109, "Undef"
  vivify_686:
    $P108."publish_type_cache"($P109)
.annotate 'line', 755
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_687
    new $P109, "Undef"
  vivify_687:
    $P108."publish_method_cache"($P109)
.annotate 'line', 756
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_688
    new $P109, "Undef"
  vivify_688:
    $P108."publish_boolification_spec"($P109)
.annotate 'line', 759
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_689
    new $P109, "Undef"
  vivify_689:
    $P108."publish_parrot_vtable_mapping"($P109)
.annotate 'line', 760
    set $P107, param_1690
    nqp_decontainerize $P108, $P107
    set $P109, param_1691
    unless_null $P109, vivify_690
    new $P109, "Undef"
  vivify_690:
    $P108."publish_parrot_vtablee_handler_mapping"($P109)
.annotate 'line', 719
    set $P107, param_1691
    unless_null $P107, vivify_691
    new $P107, "Undef"
  vivify_691:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1694"  :anon :subid("116_1323686348.97588") :outer("115_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 723
    .const 'Sub' $P1701 = "117_1323686348.97588" 
    capture_lex $P1701
.annotate 'line', 724
    $P1697 = root_new ['parrot';'ResizablePMCArray']
    set $P1696, $P1697
    .lex "@specialized_roles", $P1696
.annotate 'line', 723
    set $P1698, $P1696
    unless_null $P1698, vivify_659
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
.annotate 'line', 725
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1699, $P112, $P113, "@!roles", 5
    unless_null $P1699, vivify_660
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
    defined $I100, $P1699
    unless $I100, for_undef_661
    iter $P110, $P1699
    new $P117, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P117, loop1709_handler
    push_eh $P117
  loop1709_test:
    unless $P110, loop1709_done
    shift $P114, $P110
  loop1709_redo:
    .const 'Sub' $P1701 = "117_1323686348.97588" 
    capture_lex $P1701
    $P1701($P114)
  loop1709_next:
    goto loop1709_test
  loop1709_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1709_next
    eq $P118, .CONTROL_LOOP_REDO, loop1709_redo
  loop1709_done:
    pop_eh 
  for_undef_661:
.annotate 'line', 731
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_673
    new $P111, "Undef"
  vivify_673:
    set $P1710, $P1696
    unless_null $P1710, vivify_674
    $P1710 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    $P112 = $P110."apply"($P111, $P1710)
.annotate 'line', 723
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1700"  :anon :subid("117_1323686348.97588") :outer("116_1323686348.97588")
    .param pmc param_1703
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 726
    new $P115, "Undef"
    set $P1702, $P115
    .lex "$ins", $P1702
    .lex "$_", param_1703
    find_lex $P116, "$_"
    unless_null $P116, vivify_662
    new $P116, "Undef"
  vivify_662:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_663
    new $P118, "Undef"
  vivify_663:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_664
    new $P119, "Undef"
  vivify_664:
    $P120 = $P117."specialize"($P118, $P119)
    set $P1702, $P120
.annotate 'line', 727
    find_lex $P1704, "@specialized_roles"
    unless_null $P1704, vivify_665
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $P116, $P1702
    unless_null $P116, vivify_666
    new $P116, "Undef"
  vivify_666:
    $P1704."push"($P116)
.annotate 'line', 728
    find_lex $P116, "$_"
    unless_null $P116, vivify_667
    new $P116, "Undef"
  vivify_667:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P1705, $P118, $P119, "@!done", 11
    unless_null $P1705, vivify_668
    $P1705 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $N100, $P1705
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    repr_get_attr_obj $P1706, $P121, $P122, "@!done", 11
    unless_null $P1706, vivify_669
    $P1706 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1706
  vivify_669:
    set $P1706[$I101], $P116
.annotate 'line', 729
    set $P116, $P1702
    unless_null $P116, vivify_670
    new $P116, "Undef"
  vivify_670:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P1707, $P118, $P119, "@!done", 11
    unless_null $P1707, vivify_671
    $P1707 = root_new ['parrot';'ResizablePMCArray']
  vivify_671:
    set $N100, $P1707
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    repr_get_attr_obj $P1708, $P121, $P122, "@!done", 11
    unless_null $P1708, vivify_672
    $P1708 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1708
  vivify_672:
    set $P1708[$I101], $P116
.annotate 'line', 725
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1715"  :anon :subid("118_1323686348.97588") :outer("115_1323686348.97588")
    .param pmc param_1717
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 751
    .lex "$_", param_1717
    find_lex $P113, "$_"
    unless_null $P113, vivify_684
    new $P113, "Undef"
  vivify_684:
    find_lex $P114, "$obj"
    unless_null $P114, vivify_685
    new $P114, "Undef"
  vivify_685:
    $P115 = $P113."compose"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("119_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1720
    .param pmc param_1721
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 765
    .const 'Sub' $P1726 = "120_1323686348.97588" 
    capture_lex $P1726
    .lex "self", param_1720
    .lex "$obj", param_1721
.annotate 'line', 766
    new $P107, "Undef"
    set $P1722, $P107
    .lex "$num_todo", $P1722
.annotate 'line', 767
    new $P108, "Undef"
    set $P1723, $P108
    .lex "$i", $P1723
.annotate 'line', 766
    set $P109, param_1720
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1724, $P110, $P111, "@!multi_methods_to_incorporate", 3
    unless_null $P1724, vivify_692
    $P1724 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    set $N100, $P1724
    new $P112, 'Float'
    set $P112, $N100
    set $P1722, $P112
.annotate 'line', 767
    new $P109, "Float"
    assign $P109, 0
    set $P1723, $P109
.annotate 'line', 768
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1766_handler
    push_eh $P114
  loop1766_test:
    set $P109, $P1723
    unless_null $P109, vivify_693
    new $P109, "Undef"
  vivify_693:
    set $N100, $P109
    set $P110, $P1722
    unless_null $P110, vivify_694
    new $P110, "Undef"
  vivify_694:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1766_done
  loop1766_redo:
    .const 'Sub' $P1726 = "120_1323686348.97588" 
    capture_lex $P1726
    $P1726()
  loop1766_next:
    goto loop1766_test
  loop1766_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1766_next
    eq $P116, .CONTROL_LOOP_REDO, loop1766_redo
  loop1766_done:
    pop_eh 
.annotate 'line', 765
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1725"  :anon :subid("120_1323686348.97588") :outer("119_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 768
    .const 'Sub' $P1738 = "121_1323686348.97588" 
    capture_lex $P1738
.annotate 'line', 770
    new $P111, "Undef"
    set $P1727, $P111
    .lex "$name", $P1727
.annotate 'line', 771
    new $P112, "Undef"
    set $P1728, $P112
    .lex "$code", $P1728
.annotate 'line', 775
    new $P113, "Undef"
    set $P1729, $P113
    .lex "$dispatcher", $P1729
.annotate 'line', 770
    find_lex $P114, "$i"
    unless_null $P114, vivify_695
    new $P114, "Undef"
  vivify_695:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1730, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1730, vivify_696
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
    set $P1731, $P1730[$I101]
    unless_null $P1731, vivify_697
    $P1731 = root_new ['parrot';'Hash']
  vivify_697:
    set $P118, $P1731["name"]
    unless_null $P118, vivify_698
    new $P118, "Undef"
  vivify_698:
    set $P1727, $P118
.annotate 'line', 771
    find_lex $P114, "$i"
    unless_null $P114, vivify_699
    new $P114, "Undef"
  vivify_699:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1732, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1732, vivify_700
    $P1732 = root_new ['parrot';'ResizablePMCArray']
  vivify_700:
    set $P1733, $P1732[$I101]
    unless_null $P1733, vivify_701
    $P1733 = root_new ['parrot';'Hash']
  vivify_701:
    set $P118, $P1733["code"]
    unless_null $P118, vivify_702
    new $P118, "Undef"
  vivify_702:
    set $P1728, $P118
.annotate 'line', 775
    set $P114, $P1727
    unless_null $P114, vivify_703
    new $P114, "Undef"
  vivify_703:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1734, $P116, $P117, "%!methods", 2
    unless_null $P1734, vivify_704
    $P1734 = root_new ['parrot';'Hash']
  vivify_704:
    set $P118, $P1734[$P114]
    unless_null $P118, vivify_705
    new $P118, "Undef"
  vivify_705:
    set $P1729, $P118
.annotate 'line', 776
    set $P114, $P1729
    unless_null $P114, vivify_706
    new $P114, "Undef"
  vivify_706:
    defined $I101, $P114
    if $I101, if_1735
.annotate 'line', 786
    .const 'Sub' $P1738 = "121_1323686348.97588" 
    capture_lex $P1738
    $P1738()
    goto if_1735_end
  if_1735:
.annotate 'line', 779
    set $P115, $P1729
    unless_null $P115, vivify_737
    new $P115, "Undef"
  vivify_737:
    is_dispatcher $I102, $P115
    if $I102, if_1736
.annotate 'line', 783
    new $P116, 'String'
    set $P116, "Cannot have a multi candidate for "
    set $P117, $P1727
    unless_null $P117, vivify_738
    new $P117, "Undef"
  vivify_738:
    concat $P118, $P116, $P117
    concat $P119, $P118, " when an only method is also in the class"
    die $P119
.annotate 'line', 782
    goto if_1736_end
  if_1736:
.annotate 'line', 780
    set $P116, $P1729
    unless_null $P116, vivify_739
    new $P116, "Undef"
  vivify_739:
    set $P117, $P1728
    unless_null $P117, vivify_740
    new $P117, "Undef"
  vivify_740:
    push_dispatchee $P116, $P117
  if_1736_end:
  if_1735_end:
.annotate 'line', 819
    find_lex $P114, "$i"
    unless_null $P114, vivify_741
    new $P114, "Undef"
  vivify_741:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 768
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1737"  :anon :subid("121_1323686348.97588") :outer("120_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 786
    .const 'Sub' $P1744 = "122_1323686348.97588" 
    capture_lex $P1744
.annotate 'line', 788
    new $P115, "Undef"
    set $P1739, $P115
    .lex "$j", $P1739
.annotate 'line', 789
    new $P116, "Undef"
    set $P1740, $P116
    .lex "$found", $P1740
.annotate 'line', 788
    new $P117, "Float"
    assign $P117, 1
    set $P1739, $P117
.annotate 'line', 789
    new $P117, "Float"
    assign $P117, 0
    set $P1740, $P117
.annotate 'line', 790
    new $P125, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P125, loop1764_handler
    push_eh $P125
  loop1764_test:
    set $P118, $P1739
    unless_null $P118, vivify_707
    new $P118, "Undef"
  vivify_707:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P1742, $P120, $P121, "@!mro", 10
    unless_null $P1742, vivify_708
    $P1742 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    set $N103, $P1742
    isne $I102, $N102, $N103
    if $I102, if_1741
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1741_end
  if_1741:
    set $P122, $P1740
    unless_null $P122, vivify_709
    new $P122, "Undef"
  vivify_709:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1741_end:
    unless $P117, loop1764_done
  loop1764_redo:
    .const 'Sub' $P1744 = "122_1323686348.97588" 
    capture_lex $P1744
    $P1744()
  loop1764_next:
    goto loop1764_test
  loop1764_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1764_next
    eq $P127, .CONTROL_LOOP_REDO, loop1764_redo
  loop1764_done:
    pop_eh 
.annotate 'line', 815
    set $P118, $P1740
    unless_null $P118, vivify_735
    new $P118, "Undef"
  vivify_735:
    unless $P118, unless_1765
    set $P117, $P118
    goto unless_1765_end
  unless_1765:
.annotate 'line', 816
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_736
    new $P120, "Undef"
  vivify_736:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1765_end:
.annotate 'line', 786
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1743"  :anon :subid("122_1323686348.97588") :outer("121_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 790
    .const 'Sub' $P1754 = "123_1323686348.97588" 
    capture_lex $P1754
.annotate 'line', 791
    new $P123, "Undef"
    set $P1745, $P123
    .lex "$parent", $P1745
.annotate 'line', 792
    $P1747 = root_new ['parrot';'Hash']
    set $P1746, $P1747
    .lex "%meths", $P1746
.annotate 'line', 793
    new $P124, "Undef"
    set $P1748, $P124
    .lex "$dispatcher", $P1748
.annotate 'line', 791
    find_lex $P125, "$j"
    unless_null $P125, vivify_710
    new $P125, "Undef"
  vivify_710:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    find_lex $P128, "$?CLASS"
    repr_get_attr_obj $P1749, $P127, $P128, "@!mro", 10
    unless_null $P1749, vivify_711
    $P1749 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    set $P129, $P1749[$I104]
    unless_null $P129, vivify_712
    new $P129, "Undef"
  vivify_712:
    set $P1745, $P129
.annotate 'line', 792
    set $P125, $P1745
    unless_null $P125, vivify_713
    new $P125, "Undef"
  vivify_713:
    get_how $P126, $P125
    set $P127, $P1745
    unless_null $P127, vivify_714
    new $P127, "Undef"
  vivify_714:
    $P128 = $P126."method_table"($P127)
    set $P1746, $P128
.annotate 'line', 793
    find_lex $P125, "$name"
    unless_null $P125, vivify_715
    new $P125, "Undef"
  vivify_715:
    set $P1750, $P1746
    unless_null $P1750, vivify_716
    $P1750 = root_new ['parrot';'Hash']
  vivify_716:
    set $P126, $P1750[$P125]
    unless_null $P126, vivify_717
    new $P126, "Undef"
  vivify_717:
    set $P1748, $P126
.annotate 'line', 794
    set $P125, $P1748
    unless_null $P125, vivify_718
    new $P125, "Undef"
  vivify_718:
    defined $I104, $P125
    unless $I104, if_1751_end
.annotate 'line', 797
    set $P126, $P1748
    unless_null $P126, vivify_719
    new $P126, "Undef"
  vivify_719:
    is_dispatcher $I105, $P126
    if $I105, if_1752
.annotate 'line', 810
    new $P130, 'String'
    set $P130, "Could not find a proto for multi "
    find_lex $P131, "$name"
    unless_null $P131, vivify_720
    new $P131, "Undef"
  vivify_720:
    concat $P132, $P130, $P131
    concat $P133, $P132, " (it may exist, but an only is hiding it if so)"
    die $P133
.annotate 'line', 809
    goto if_1752_end
  if_1752:
.annotate 'line', 797
    .const 'Sub' $P1754 = "123_1323686348.97588" 
    capture_lex $P1754
    $P1754()
  if_1752_end:
  if_1751_end:
.annotate 'line', 813
    find_lex $P125, "$j"
    unless_null $P125, vivify_734
    new $P125, "Undef"
  vivify_734:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 790
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1753"  :anon :subid("123_1323686348.97588") :outer("122_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 799
    $P1756 = root_new ['parrot';'ResizablePMCArray']
    set $P1755, $P1756
    .lex "@new_dispatchees", $P1755
.annotate 'line', 801
    new $P127, "Undef"
    set $P1757, $P127
    .lex "$new_disp", $P1757
.annotate 'line', 802
    new $P128, "Undef"
    set $P1758, $P128
    .lex "$clone_callback", $P1758
.annotate 'line', 797
    set $P1759, $P1755
    unless_null $P1759, vivify_721
    $P1759 = root_new ['parrot';'ResizablePMCArray']
  vivify_721:
.annotate 'line', 800
    find_lex $P129, "$code"
    unless_null $P129, vivify_722
    new $P129, "Undef"
  vivify_722:
    new $P130, "Float"
    assign $P130, 0
    set $I106, $P130
    set $P1760, $P1755
    unless_null $P1760, vivify_723
    $P1760 = root_new ['parrot';'ResizablePMCArray']
    set $P1755, $P1760
  vivify_723:
    set $P1760[$I106], $P129
.annotate 'line', 801
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_724
    new $P129, "Undef"
  vivify_724:
    set $P1761, $P1755
    unless_null $P1761, vivify_725
    $P1761 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    create_dispatch_and_add_candidates $P130, $P129, $P1761
    set $P1757, $P130
.annotate 'line', 802
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_726
    new $P129, "Undef"
  vivify_726:
    getprop $P130, "CLONE_CALLBACK", $P129
    set $P1758, $P130
.annotate 'line', 803
    set $P129, $P1758
    unless_null $P129, vivify_727
    new $P129, "Undef"
  vivify_727:
    defined $I106, $P129
    unless $I106, if_1762_end
.annotate 'line', 804
    set $P130, $P1758
    unless_null $P130, vivify_728
    new $P130, "Undef"
  vivify_728:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_729
    new $P131, "Undef"
  vivify_729:
    set $P132, $P1757
    unless_null $P132, vivify_730
    new $P132, "Undef"
  vivify_730:
    $P130($P131, $P132)
  if_1762_end:
.annotate 'line', 806
    set $P129, $P1757
    unless_null $P129, vivify_731
    new $P129, "Undef"
  vivify_731:
    find_lex $P130, "$name"
    unless_null $P130, vivify_732
    new $P130, "Undef"
  vivify_732:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    find_lex $P133, "$?CLASS"
    repr_get_attr_obj $P1763, $P132, $P133, "%!methods", 2
    unless_null $P1763, vivify_733
    $P1763 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1763
  vivify_733:
    set $P1763[$P130], $P129
.annotate 'line', 807
    new $P129, "Float"
    assign $P129, 1
    store_lex "$found", $P129
.annotate 'line', 797
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("124_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1768
    .param pmc param_1769
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 916
    .const 'Sub' $P1781 = "126_1323686348.97588" 
    capture_lex $P1781
    .const 'Sub' $P1775 = "125_1323686348.97588" 
    capture_lex $P1775
    .lex "self", param_1768
    .lex "$obj", param_1769
.annotate 'line', 917
    $P1771 = root_new ['parrot';'ResizablePMCArray']
    set $P1770, $P1771
    .lex "@tc", $P1770
.annotate 'line', 916
    set $P1772, $P1770
    unless_null $P1772, vivify_742
    $P1772 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
.annotate 'line', 918
    set $P108, param_1768
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1773, $P109, $P110, "@!mro", 10
    unless_null $P1773, vivify_743
    $P1773 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    defined $I100, $P1773
    unless $I100, for_undef_744
    iter $P107, $P1773
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1778_handler
    push_eh $P112
  loop1778_test:
    unless $P107, loop1778_done
    shift $P111, $P107
  loop1778_redo:
    .const 'Sub' $P1775 = "125_1323686348.97588" 
    capture_lex $P1775
    $P1775($P111)
  loop1778_next:
    goto loop1778_test
  loop1778_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1778_next
    eq $P114, .CONTROL_LOOP_REDO, loop1778_redo
  loop1778_done:
    pop_eh 
  for_undef_744:
.annotate 'line', 919
    set $P108, param_1768
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1779, $P109, $P110, "@!done", 11
    unless_null $P1779, vivify_747
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_747:
    defined $I100, $P1779
    unless $I100, for_undef_748
    iter $P107, $P1779
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1784_handler
    push_eh $P112
  loop1784_test:
    unless $P107, loop1784_done
    shift $P111, $P107
  loop1784_redo:
    .const 'Sub' $P1781 = "126_1323686348.97588" 
    capture_lex $P1781
    $P1781($P111)
  loop1784_next:
    goto loop1784_test
  loop1784_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1784_next
    eq $P114, .CONTROL_LOOP_REDO, loop1784_redo
  loop1784_done:
    pop_eh 
  for_undef_748:
.annotate 'line', 920
    set $P107, param_1769
    unless_null $P107, vivify_751
    new $P107, "Undef"
  vivify_751:
    set $P1785, $P1770
    unless_null $P1785, vivify_752
    $P1785 = root_new ['parrot';'ResizablePMCArray']
  vivify_752:
    publish_type_check_cache $P107, $P1785
.annotate 'line', 916
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1774"  :anon :subid("125_1323686348.97588") :outer("124_1323686348.97588")
    .param pmc param_1776
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 918
    .lex "$_", param_1776
    find_lex $P1777, "@tc"
    unless_null $P1777, vivify_745
    $P1777 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
    find_lex $P112, "$_"
    unless_null $P112, vivify_746
    new $P112, "Undef"
  vivify_746:
    $P113 = $P1777."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1780"  :anon :subid("126_1323686348.97588") :outer("124_1323686348.97588")
    .param pmc param_1782
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 919
    .lex "$_", param_1782
    find_lex $P1783, "@tc"
    unless_null $P1783, vivify_749
    $P1783 = root_new ['parrot';'ResizablePMCArray']
  vivify_749:
    find_lex $P112, "$_"
    unless_null $P112, vivify_750
    new $P112, "Undef"
  vivify_750:
    $P113 = $P1783."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("127_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1787
    .param pmc param_1788
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 923
    .const 'Sub' $P1798 = "128_1323686348.97588" 
    capture_lex $P1798
    .lex "self", param_1787
    .lex "$obj", param_1788
.annotate 'line', 926
    $P1790 = root_new ['parrot';'Hash']
    set $P1789, $P1790
    .lex "%cache", $P1789
.annotate 'line', 927
    $P1792 = root_new ['parrot';'ResizablePMCArray']
    set $P1791, $P1792
    .lex "@mro_reversed", $P1791
.annotate 'line', 923
    set $P1793, $P1789
    unless_null $P1793, vivify_753
    $P1793 = root_new ['parrot';'Hash']
  vivify_753:
.annotate 'line', 927
    set $P107, param_1787
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1794, $P108, $P109, "@!mro", 10
    unless_null $P1794, vivify_754
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    clone $P110, $P1794
    set $P1791, $P110
.annotate 'line', 928
    set $P1795, $P1791
    unless_null $P1795, vivify_755
    $P1795 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    $P1795."reverse"()
.annotate 'line', 929
    set $P1796, $P1791
    unless_null $P1796, vivify_756
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_756:
    defined $I100, $P1796
    unless $I100, for_undef_757
    iter $P107, $P1796
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1801_handler
    push_eh $P109
  loop1801_test:
    unless $P107, loop1801_done
    shift $P108, $P107
  loop1801_redo:
    .const 'Sub' $P1798 = "128_1323686348.97588" 
    capture_lex $P1798
    $P1798($P108)
  loop1801_next:
    goto loop1801_test
  loop1801_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1801_next
    eq $P110, .CONTROL_LOOP_REDO, loop1801_redo
  loop1801_done:
    pop_eh 
  for_undef_757:
.annotate 'line', 932
    set $P107, param_1788
    unless_null $P107, vivify_761
    new $P107, "Undef"
  vivify_761:
    set $P1802, $P1789
    unless_null $P1802, vivify_762
    $P1802 = root_new ['parrot';'Hash']
  vivify_762:
    publish_method_cache $P107, $P1802
.annotate 'line', 933
    set $P107, param_1788
    unless_null $P107, vivify_763
    new $P107, "Undef"
  vivify_763:
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 923
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1797"  :anon :subid("128_1323686348.97588") :outer("127_1323686348.97588")
    .param pmc param_1799
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 929
    .lex "$_", param_1799
.annotate 'line', 930
    find_lex $P1800, "%cache"
    unless_null $P1800, vivify_758
    $P1800 = root_new ['parrot';'Hash']
  vivify_758:
    find_lex $P109, "$_"
    unless_null $P109, vivify_759
    new $P109, "Undef"
  vivify_759:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_760
    new $P111, "Undef"
  vivify_760:
    $P112 = $P110."method_table"($P111)
    $P113 = $P1800."update"($P112)
.annotate 'line', 929
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("129_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1804
    .param pmc param_1805
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 936
    .lex "self", param_1804
    .lex "$obj", param_1805
.annotate 'line', 937
    new $P107, "Undef"
    set $P1806, $P107
    .lex "$bool_meth", $P1806
    set $P108, param_1804
    nqp_decontainerize $P109, $P108
    set $P110, param_1805
    unless_null $P110, vivify_764
    new $P110, "Undef"
  vivify_764:
    $P111 = $P109."find_method"($P110, "Bool")
    set $P1806, $P111
.annotate 'line', 938
    set $P109, $P1806
    unless_null $P109, vivify_765
    new $P109, "Undef"
  vivify_765:
    defined $I100, $P109
    if $I100, if_1807
.annotate 'line', 942
    set $P111, param_1805
    unless_null $P111, vivify_766
    new $P111, "Undef"
  vivify_766:
    new $P112, "Float"
    assign $P112, 5
    set $I101, $P112
    null $P113
    set_boolification_spec $P111, $I101, $P113
.annotate 'line', 941
    set $P108, $P111
.annotate 'line', 938
    goto if_1807_end
  if_1807:
.annotate 'line', 939
    set $P110, param_1805
    unless_null $P110, vivify_767
    new $P110, "Undef"
  vivify_767:
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    set $P112, $P1806
    unless_null $P112, vivify_768
    new $P112, "Undef"
  vivify_768:
    set_boolification_spec $P110, $I101, $P112
.annotate 'line', 938
    set $P108, $P110
  if_1807_end:
.annotate 'line', 936
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("130_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1809
    .param pmc param_1810
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 946
    .const 'Sub' $P1820 = "131_1323686348.97588" 
    capture_lex $P1820
    .lex "self", param_1809
    .lex "$obj", param_1810
.annotate 'line', 947
    $P1812 = root_new ['parrot';'Hash']
    set $P1811, $P1812
    .lex "%mapping", $P1811
.annotate 'line', 948
    $P1814 = root_new ['parrot';'ResizablePMCArray']
    set $P1813, $P1814
    .lex "@mro_reversed", $P1813
.annotate 'line', 946
    set $P1815, $P1811
    unless_null $P1815, vivify_769
    $P1815 = root_new ['parrot';'Hash']
  vivify_769:
.annotate 'line', 948
    set $P107, param_1809
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1816, $P108, $P109, "@!mro", 10
    unless_null $P1816, vivify_770
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    clone $P110, $P1816
    set $P1813, $P110
.annotate 'line', 949
    set $P1817, $P1813
    unless_null $P1817, vivify_771
    $P1817 = root_new ['parrot';'ResizablePMCArray']
  vivify_771:
    $P1817."reverse"()
.annotate 'line', 950
    set $P1818, $P1813
    unless_null $P1818, vivify_772
    $P1818 = root_new ['parrot';'ResizablePMCArray']
  vivify_772:
    defined $I100, $P1818
    unless $I100, for_undef_773
    iter $P107, $P1818
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1823_handler
    push_eh $P109
  loop1823_test:
    unless $P107, loop1823_done
    shift $P108, $P107
  loop1823_redo:
    .const 'Sub' $P1820 = "131_1323686348.97588" 
    capture_lex $P1820
    $P1820($P108)
  loop1823_next:
    goto loop1823_test
  loop1823_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1823_next
    eq $P110, .CONTROL_LOOP_REDO, loop1823_redo
  loop1823_done:
    pop_eh 
  for_undef_773:
.annotate 'line', 953
    set $P1825, $P1811
    unless_null $P1825, vivify_777
    $P1825 = root_new ['parrot';'Hash']
  vivify_777:
    set $N100, $P1825
    if $N100, if_1824
    new $P107, 'Float'
    set $P107, $N100
    goto if_1824_end
  if_1824:
.annotate 'line', 954
    set $P108, param_1810
    unless_null $P108, vivify_778
    new $P108, "Undef"
  vivify_778:
    set $P1826, $P1811
    unless_null $P1826, vivify_779
    $P1826 = root_new ['parrot';'Hash']
  vivify_779:
    stable_publish_vtable_mapping $P108, $P1826
  if_1824_end:
.annotate 'line', 946
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1819"  :anon :subid("131_1323686348.97588") :outer("130_1323686348.97588")
    .param pmc param_1821
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 950
    .lex "$_", param_1821
.annotate 'line', 951
    find_lex $P1822, "%mapping"
    unless_null $P1822, vivify_774
    $P1822 = root_new ['parrot';'Hash']
  vivify_774:
    find_lex $P109, "$_"
    unless_null $P109, vivify_775
    new $P109, "Undef"
  vivify_775:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_776
    new $P111, "Undef"
  vivify_776:
    $P112 = $P110."parrot_vtable_mappings"($P111, 1 :named("local"))
    $P113 = $P1822."update"($P112)
.annotate 'line', 950
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("132_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1828
    .param pmc param_1829
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 958
    .const 'Sub' $P1839 = "133_1323686348.97588" 
    capture_lex $P1839
    .lex "self", param_1828
    .lex "$obj", param_1829
.annotate 'line', 959
    $P1831 = root_new ['parrot';'Hash']
    set $P1830, $P1831
    .lex "%mapping", $P1830
.annotate 'line', 960
    $P1833 = root_new ['parrot';'ResizablePMCArray']
    set $P1832, $P1833
    .lex "@mro_reversed", $P1832
.annotate 'line', 958
    set $P1834, $P1830
    unless_null $P1834, vivify_780
    $P1834 = root_new ['parrot';'Hash']
  vivify_780:
.annotate 'line', 960
    set $P107, param_1828
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1835, $P108, $P109, "@!mro", 10
    unless_null $P1835, vivify_781
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    clone $P110, $P1835
    set $P1832, $P110
.annotate 'line', 961
    set $P1836, $P1832
    unless_null $P1836, vivify_782
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_782:
    $P1836."reverse"()
.annotate 'line', 962
    set $P1837, $P1832
    unless_null $P1837, vivify_783
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    defined $I100, $P1837
    unless $I100, for_undef_784
    iter $P107, $P1837
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1842_handler
    push_eh $P109
  loop1842_test:
    unless $P107, loop1842_done
    shift $P108, $P107
  loop1842_redo:
    .const 'Sub' $P1839 = "133_1323686348.97588" 
    capture_lex $P1839
    $P1839($P108)
  loop1842_next:
    goto loop1842_test
  loop1842_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1842_next
    eq $P110, .CONTROL_LOOP_REDO, loop1842_redo
  loop1842_done:
    pop_eh 
  for_undef_784:
.annotate 'line', 965
    set $P1844, $P1830
    unless_null $P1844, vivify_788
    $P1844 = root_new ['parrot';'Hash']
  vivify_788:
    set $N100, $P1844
    if $N100, if_1843
    new $P107, 'Float'
    set $P107, $N100
    goto if_1843_end
  if_1843:
.annotate 'line', 966
    set $P108, param_1829
    unless_null $P108, vivify_789
    new $P108, "Undef"
  vivify_789:
    set $P1845, $P1830
    unless_null $P1845, vivify_790
    $P1845 = root_new ['parrot';'Hash']
  vivify_790:
    stable_publish_vtable_handler_mapping $P108, $P1845
  if_1843_end:
.annotate 'line', 958
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1838"  :anon :subid("133_1323686348.97588") :outer("132_1323686348.97588")
    .param pmc param_1840
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 962
    .lex "$_", param_1840
.annotate 'line', 963
    find_lex $P1841, "%mapping"
    unless_null $P1841, vivify_785
    $P1841 = root_new ['parrot';'Hash']
  vivify_785:
    find_lex $P109, "$_"
    unless_null $P109, vivify_786
    new $P109, "Undef"
  vivify_786:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_787
    new $P111, "Undef"
  vivify_787:
    $P112 = $P110."parrot_vtable_handler_mappings"($P111, 1 :named("local"))
    $P113 = $P1841."update"($P112)
.annotate 'line', 962
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("134_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1847
    .param pmc param_1848
    .param pmc param_1849 :optional :named("local")
    .param int has_param_1849 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 974
    .lex "self", param_1847
    .lex "$obj", param_1848
    if has_param_1849, optparam_791
    new $P107, "Undef"
    set param_1849, $P107
  optparam_791:
    .lex "$local", param_1849
.annotate 'line', 975
    set $P109, param_1849
    unless_null $P109, vivify_792
    new $P109, "Undef"
  vivify_792:
    if $P109, if_1850
    set $P113, param_1847
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1852, $P114, $P115, "@!mro", 10
    unless_null $P1852, vivify_793
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    set $P108, $P1852
    goto if_1850_end
  if_1850:
    set $P110, param_1847
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1851, $P111, $P112, "@!parents", 4
    unless_null $P1851, vivify_794
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_794:
    set $P108, $P1851
  if_1850_end:
.annotate 'line', 974
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("135_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1854
    .param pmc param_1855
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 978
    .lex "self", param_1854
    .lex "$obj", param_1855
    set $P107, param_1854
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1856, $P108, $P109, "@!mro", 10
    unless_null $P1856, vivify_795
    $P1856 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    .return ($P1856)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("136_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1858
    .param pmc param_1859
    .param pmc param_1860 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 982
    .lex "self", param_1858
    .lex "$obj", param_1859
    .lex "$local", param_1860
    set $P107, param_1858
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1861, $P108, $P109, "@!roles", 5
    unless_null $P1861, vivify_796
    $P1861 = root_new ['parrot';'ResizablePMCArray']
  vivify_796:
    .return ($P1861)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("137_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1863
    .param pmc param_1864
    .param pmc param_1865 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 986
    .const 'Sub' $P1871 = "138_1323686348.97588" 
    capture_lex $P1871
    .lex "self", param_1863
    .lex "$obj", param_1864
    .lex "$local", param_1865
.annotate 'line', 987
    $P1867 = root_new ['parrot';'ResizablePMCArray']
    set $P1866, $P1867
    .lex "@meths", $P1866
.annotate 'line', 986
    set $P1868, $P1866
    unless_null $P1868, vivify_797
    $P1868 = root_new ['parrot';'ResizablePMCArray']
  vivify_797:
.annotate 'line', 988
    set $P108, param_1863
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1869, $P109, $P110, "%!methods", 2
    unless_null $P1869, vivify_798
    $P1869 = root_new ['parrot';'Hash']
  vivify_798:
    defined $I100, $P1869
    unless $I100, for_undef_799
    iter $P107, $P1869
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1874_handler
    push_eh $P112
  loop1874_test:
    unless $P107, loop1874_done
    shift $P111, $P107
  loop1874_redo:
    .const 'Sub' $P1871 = "138_1323686348.97588" 
    capture_lex $P1871
    $P1871($P111)
  loop1874_next:
    goto loop1874_test
  loop1874_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1874_next
    eq $P113, .CONTROL_LOOP_REDO, loop1874_redo
  loop1874_done:
    pop_eh 
  for_undef_799:
.annotate 'line', 986
    set $P1875, $P1866
    unless_null $P1875, vivify_802
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1870"  :anon :subid("138_1323686348.97588") :outer("137_1323686348.97588")
    .param pmc param_1872
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 988
    .lex "$_", param_1872
.annotate 'line', 989
    find_lex $P1873, "@meths"
    unless_null $P1873, vivify_800
    $P1873 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    find_lex $P112, "$_"
    unless_null $P112, vivify_801
    new $P112, "Undef"
  vivify_801:
    $P113 = $P112."value"()
    $P114 = $P1873."push"($P113)
.annotate 'line', 988
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("139_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1877
    .param pmc param_1878
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 994
    .lex "self", param_1877
    .lex "$obj", param_1878
    set $P107, param_1877
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1879, $P108, $P109, "%!methods", 2
    unless_null $P1879, vivify_803
    $P1879 = root_new ['parrot';'Hash']
  vivify_803:
    .return ($P1879)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("140_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1881
    .param pmc param_1882
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 998
    .lex "self", param_1881
    .lex "$obj", param_1882
    set $P107, param_1881
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_804
    new $P110, "Undef"
  vivify_804:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("141_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1884
    .param pmc param_1885
    .param pmc param_1886 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1002
    .const 'Sub' $P1892 = "142_1323686348.97588" 
    capture_lex $P1892
    .lex "self", param_1884
    .lex "$obj", param_1885
    .lex "$local", param_1886
.annotate 'line', 1003
    $P1888 = root_new ['parrot';'ResizablePMCArray']
    set $P1887, $P1888
    .lex "@attrs", $P1887
.annotate 'line', 1002
    set $P1889, $P1887
    unless_null $P1889, vivify_805
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_805:
.annotate 'line', 1004
    set $P108, param_1884
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1890, $P109, $P110, "%!attributes", 1
    unless_null $P1890, vivify_806
    $P1890 = root_new ['parrot';'Hash']
  vivify_806:
    defined $I100, $P1890
    unless $I100, for_undef_807
    iter $P107, $P1890
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1895_handler
    push_eh $P112
  loop1895_test:
    unless $P107, loop1895_done
    shift $P111, $P107
  loop1895_redo:
    .const 'Sub' $P1892 = "142_1323686348.97588" 
    capture_lex $P1892
    $P1892($P111)
  loop1895_next:
    goto loop1895_test
  loop1895_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1895_next
    eq $P113, .CONTROL_LOOP_REDO, loop1895_redo
  loop1895_done:
    pop_eh 
  for_undef_807:
.annotate 'line', 1002
    set $P1896, $P1887
    unless_null $P1896, vivify_810
    $P1896 = root_new ['parrot';'ResizablePMCArray']
  vivify_810:
    .return ($P1896)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1891"  :anon :subid("142_1323686348.97588") :outer("141_1323686348.97588")
    .param pmc param_1893
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1004
    .lex "$_", param_1893
.annotate 'line', 1005
    find_lex $P1894, "@attrs"
    unless_null $P1894, vivify_808
    $P1894 = root_new ['parrot';'ResizablePMCArray']
  vivify_808:
    find_lex $P112, "$_"
    unless_null $P112, vivify_809
    new $P112, "Undef"
  vivify_809:
    $P113 = $P112."value"()
    $P114 = $P1894."push"($P113)
.annotate 'line', 1004
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("143_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1898
    .param pmc param_1899
    .param pmc param_1900 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1010
    .lex "self", param_1898
    .lex "$obj", param_1899
    .lex "$local", param_1900
    set $P107, param_1898
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1901, $P108, $P109, "%!parrot_vtable_mapping", 13
    unless_null $P1901, vivify_811
    $P1901 = root_new ['parrot';'Hash']
  vivify_811:
    .return ($P1901)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("144_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1903
    .param pmc param_1904
    .param pmc param_1905 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1014
    .lex "self", param_1903
    .lex "$obj", param_1904
    .lex "$local", param_1905
    set $P107, param_1903
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1906, $P108, $P109, "%!parrot_vtable_handler_mapping", 14
    unless_null $P1906, vivify_812
    $P1906 = root_new ['parrot';'Hash']
  vivify_812:
    .return ($P1906)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("145_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1910
    .param pmc param_1911
    .param pmc param_1912
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1022
    new $P1909, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1909, control_1908
    push_eh $P1909
    .lex "self", param_1910
    .lex "$obj", param_1911
    .lex "$check", param_1912
.annotate 'line', 1023
    new $P107, "Undef"
    set $P1913, $P107
    .lex "$check-class", $P1913
.annotate 'line', 1024
    new $P108, "Undef"
    set $P1914, $P108
    .lex "$i", $P1914
.annotate 'line', 1023
    set $P109, param_1912
    unless_null $P109, vivify_813
    new $P109, "Undef"
  vivify_813:
    get_what $P110, $P109
    set $P1913, $P110
.annotate 'line', 1024
    set $P109, param_1910
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1915, $P110, $P111, "@!mro", 10
    unless_null $P1915, vivify_814
    $P1915 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    set $N100, $P1915
    new $P112, 'Float'
    set $P112, $N100
    set $P1914, $P112
.annotate 'line', 1025
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1918_handler
    push_eh $P110
  loop1918_test:
    set $P109, $P1914
    unless_null $P109, vivify_815
    new $P109, "Undef"
  vivify_815:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1918_done
  loop1918_redo:
.annotate 'line', 1026
    set $P110, $P1914
    unless_null $P110, vivify_816
    new $P110, "Undef"
  vivify_816:
    sub $P111, $P110, 1
    set $P1914, $P111
.annotate 'line', 1027
    set $P110, $P1914
    unless_null $P110, vivify_817
    new $P110, "Undef"
  vivify_817:
    set $I101, $P110
    set $P111, param_1910
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1917, $P112, $P113, "@!mro", 10
    unless_null $P1917, vivify_818
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_818:
    set $P114, $P1917[$I101]
    unless_null $P114, vivify_819
    new $P114, "Undef"
  vivify_819:
    set $P115, $P1913
    unless_null $P115, vivify_820
    new $P115, "Undef"
  vivify_820:
    issame $I102, $P114, $P115
    unless $I102, if_1916_end
.annotate 'line', 1028
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1916_end:
  loop1918_next:
.annotate 'line', 1025
    goto loop1918_test
  loop1918_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1918_next
    eq $P111, .CONTROL_LOOP_REDO, loop1918_redo
  loop1918_done:
    pop_eh 
.annotate 'line', 1031
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1022
    .return ()
  control_1908:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("146_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1922
    .param pmc param_1923
    .param pmc param_1924
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1034
    new $P1921, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1921, control_1920
    push_eh $P1921
    .lex "self", param_1922
    .lex "$obj", param_1923
    .lex "$check", param_1924
.annotate 'line', 1035
    new $P107, "Undef"
    set $P1925, $P107
    .lex "$i", $P1925
    set $P108, param_1922
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1926, $P109, $P110, "@!done", 11
    unless_null $P1926, vivify_821
    $P1926 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $N100, $P1926
    new $P111, 'Float'
    set $P111, $N100
    set $P1925, $P111
.annotate 'line', 1036
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1929_handler
    push_eh $P109
  loop1929_test:
    set $P108, $P1925
    unless_null $P108, vivify_822
    new $P108, "Undef"
  vivify_822:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1929_done
  loop1929_redo:
.annotate 'line', 1037
    set $P109, $P1925
    unless_null $P109, vivify_823
    new $P109, "Undef"
  vivify_823:
    sub $P110, $P109, 1
    set $P1925, $P110
.annotate 'line', 1038
    set $P109, $P1925
    unless_null $P109, vivify_824
    new $P109, "Undef"
  vivify_824:
    set $I101, $P109
    set $P110, param_1922
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1928, $P111, $P112, "@!done", 11
    unless_null $P1928, vivify_825
    $P1928 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $P113, $P1928[$I101]
    unless_null $P113, vivify_826
    new $P113, "Undef"
  vivify_826:
    set $P114, param_1924
    unless_null $P114, vivify_827
    new $P114, "Undef"
  vivify_827:
    issame $I102, $P113, $P114
    unless $I102, if_1927_end
.annotate 'line', 1039
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1927_end:
  loop1929_next:
.annotate 'line', 1036
    goto loop1929_test
  loop1929_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1929_next
    eq $P110, .CONTROL_LOOP_REDO, loop1929_redo
  loop1929_done:
    pop_eh 
.annotate 'line', 1042
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1034
    .return ()
  control_1920:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("147_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1933
    .param pmc param_1934
    .param pmc param_1935
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1045
    .const 'Sub' $P1938 = "148_1323686348.97588" 
    capture_lex $P1938
    new $P1932, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1932, control_1931
    push_eh $P1932
    .lex "self", param_1933
    .lex "$obj", param_1934
    .lex "$name", param_1935
.annotate 'line', 1046
    set $P108, param_1933
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1936, $P109, $P110, "@!mro", 10
    unless_null $P1936, vivify_828
    $P1936 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    defined $I100, $P1936
    unless $I100, for_undef_829
    iter $P107, $P1936
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1945_handler
    push_eh $P114
  loop1945_test:
    unless $P107, loop1945_done
    shift $P111, $P107
  loop1945_redo:
    .const 'Sub' $P1938 = "148_1323686348.97588" 
    capture_lex $P1938
    $P1938($P111)
  loop1945_next:
    goto loop1945_test
  loop1945_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1945_next
    eq $P115, .CONTROL_LOOP_REDO, loop1945_redo
  loop1945_done:
    pop_eh 
  for_undef_829:
.annotate 'line', 1053
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1045
    .return ()
  control_1931:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1937"  :anon :subid("148_1323686348.97588") :outer("147_1323686348.97588")
    .param pmc param_1942
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1047
    $P1940 = root_new ['parrot';'Hash']
    set $P1939, $P1940
    .lex "%meths", $P1939
.annotate 'line', 1048
    new $P112, "Undef"
    set $P1941, $P112
    .lex "$can", $P1941
    .lex "$_", param_1942
.annotate 'line', 1047
    find_lex $P113, "$_"
    unless_null $P113, vivify_830
    new $P113, "Undef"
  vivify_830:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_831
    new $P115, "Undef"
  vivify_831:
    $P116 = $P114."method_table"($P115)
    set $P1939, $P116
.annotate 'line', 1048
    find_lex $P113, "$name"
    unless_null $P113, vivify_832
    new $P113, "Undef"
  vivify_832:
    set $P1943, $P1939
    unless_null $P1943, vivify_833
    $P1943 = root_new ['parrot';'Hash']
  vivify_833:
    set $P114, $P1943[$P113]
    unless_null $P114, vivify_834
    new $P114, "Undef"
  vivify_834:
    set $P1941, $P114
.annotate 'line', 1049
    set $P114, $P1941
    unless_null $P114, vivify_835
    new $P114, "Undef"
  vivify_835:
    defined $I101, $P114
    if $I101, if_1944
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1944_end
  if_1944:
.annotate 'line', 1050
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    set $P116, $P1941
    unless_null $P116, vivify_836
    new $P116, "Undef"
  vivify_836:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1944_end:
.annotate 'line', 1046
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("149_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1949
    .param pmc param_1950
    .param pmc param_1951
    .param pmc param_1952 :optional :named("no_fallback")
    .param int has_param_1952 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1059
    .const 'Sub' $P1955 = "150_1323686348.97588" 
    capture_lex $P1955
    new $P1948, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1948, control_1947
    push_eh $P1948
    .lex "self", param_1949
    .lex "$obj", param_1950
    .lex "$name", param_1951
    if has_param_1952, optparam_837
    new $P107, "Undef"
    set param_1952, $P107
  optparam_837:
    .lex "$no_fallback", param_1952
.annotate 'line', 1060
    set $P109, param_1949
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1953, $P110, $P111, "@!mro", 10
    unless_null $P1953, vivify_838
    $P1953 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    defined $I100, $P1953
    unless $I100, for_undef_839
    iter $P108, $P1953
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1962_handler
    push_eh $P115
  loop1962_test:
    unless $P108, loop1962_done
    shift $P112, $P108
  loop1962_redo:
    .const 'Sub' $P1955 = "150_1323686348.97588" 
    capture_lex $P1955
    $P1955($P112)
  loop1962_next:
    goto loop1962_test
  loop1962_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1962_next
    eq $P116, .CONTROL_LOOP_REDO, loop1962_redo
  loop1962_done:
    pop_eh 
  for_undef_839:
.annotate 'line', 1067
    null $P108
.annotate 'line', 1059
    .return ($P108)
  control_1947:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1954"  :anon :subid("150_1323686348.97588") :outer("149_1323686348.97588")
    .param pmc param_1959
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1061
    $P1957 = root_new ['parrot';'Hash']
    set $P1956, $P1957
    .lex "%meths", $P1956
.annotate 'line', 1062
    new $P113, "Undef"
    set $P1958, $P113
    .lex "$found", $P1958
    .lex "$_", param_1959
.annotate 'line', 1061
    find_lex $P114, "$_"
    unless_null $P114, vivify_840
    new $P114, "Undef"
  vivify_840:
    get_how $P115, $P114
    find_lex $P116, "$obj"
    unless_null $P116, vivify_841
    new $P116, "Undef"
  vivify_841:
    $P117 = $P115."method_table"($P116)
    set $P1956, $P117
.annotate 'line', 1062
    find_lex $P114, "$name"
    unless_null $P114, vivify_842
    new $P114, "Undef"
  vivify_842:
    set $P1960, $P1956
    unless_null $P1960, vivify_843
    $P1960 = root_new ['parrot';'Hash']
  vivify_843:
    set $P115, $P1960[$P114]
    unless_null $P115, vivify_844
    new $P115, "Undef"
  vivify_844:
    set $P1958, $P115
.annotate 'line', 1063
    set $P115, $P1958
    unless_null $P115, vivify_845
    new $P115, "Undef"
  vivify_845:
    defined $I101, $P115
    if $I101, if_1961
    new $P114, 'Integer'
    set $P114, $I101
    goto if_1961_end
  if_1961:
.annotate 'line', 1064
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    set $P117, $P1958
    unless_null $P117, vivify_846
    new $P117, "Undef"
  vivify_846:
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1961_end:
.annotate 'line', 1060
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "cache" :anon :subid("151_1323686348.97588") :outer("90_1323686348.97588")
    .param pmc param_1964
    .param pmc param_1965
    .param pmc param_1966
    .param pmc param_1967
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1073
    .lex "self", param_1964
    .lex "$obj", param_1965
    .lex "$key", param_1966
    .lex "$value_generator", param_1967
.annotate 'line', 1074
    set $P107, param_1964
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1969, $P108, $P109, "%!cache", 12
    unless_null $P1969, vivify_847
    $P1969 = root_new ['parrot';'Hash']
  vivify_847:
    if $P1969, unless_1968_end
    $P1970 = root_new ['parrot';'Hash']
    set $P110, param_1964
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_bind_attr_obj $P111, $P112, "%!cache", 12, $P1970
  unless_1968_end:
.annotate 'line', 1075
    set $P111, param_1966
    unless_null $P111, vivify_848
    new $P111, "Undef"
  vivify_848:
    set $P108, param_1964
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1972, $P109, $P110, "%!cache", 12
    unless_null $P1972, vivify_849
    $P1972 = root_new ['parrot';'Hash']
  vivify_849:
    exists $I100, $P1972[$P111]
    if $I100, if_1971
.annotate 'line', 1077
    set $P117, param_1967
    unless_null $P117, vivify_850
    new $P117, "Undef"
  vivify_850:
    $P118 = $P117()
    set $P119, param_1966
    unless_null $P119, vivify_851
    new $P119, "Undef"
  vivify_851:
    set $P120, param_1964
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    repr_get_attr_obj $P1974, $P121, $P122, "%!cache", 12
    unless_null $P1974, vivify_852
    $P1974 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P121, $P122, "%!cache", 12, $P1974
  vivify_852:
    set $P1974[$P119], $P118
    set $P107, $P118
.annotate 'line', 1075
    goto if_1971_end
  if_1971:
    set $P112, param_1966
    unless_null $P112, vivify_853
    new $P112, "Undef"
  vivify_853:
    set $P113, param_1964
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1973, $P114, $P115, "%!cache", 12
    unless_null $P1973, vivify_854
    $P1973 = root_new ['parrot';'Hash']
  vivify_854:
    set $P116, $P1973[$P112]
    unless_null $P116, vivify_855
    new $P116, "Undef"
  vivify_855:
    set $P107, $P116
  if_1971_end:
.annotate 'line', 1073
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1976"  :subid("152_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1082
    .const 'Sub' $P2013 = "161_1323686348.97588" 
    capture_lex $P2013
    .const 'Sub' $P2010 = "160_1323686348.97588" 
    capture_lex $P2010
    .const 'Sub' $P2006 = "159_1323686348.97588" 
    capture_lex $P2006
    .const 'Sub' $P2001 = "158_1323686348.97588" 
    capture_lex $P2001
    .const 'Sub' $P1996 = "157_1323686348.97588" 
    capture_lex $P1996
    .const 'Sub' $P1990 = "156_1323686348.97588" 
    capture_lex $P1990
    .const 'Sub' $P1987 = "155_1323686348.97588" 
    capture_lex $P1987
    .const 'Sub' $P1983 = "154_1323686348.97588" 
    capture_lex $P1983
    .const 'Sub' $P1981 = "153_1323686348.97588" 
    capture_lex $P1981
.annotate 'line', 1086
    new $P100, "Undef"
    set $P1978, $P100
    .lex "$archetypes", $P1978
    .lex "$?PACKAGE", $P1979
    .lex "$?CLASS", $P1980
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    set $P1978, $P102
.annotate 'line', 1127
    .const 'Sub' $P2013 = "161_1323686348.97588" 
    newclosure $P2016, $P2013
.annotate 'line', 1082
    .return ($P2016)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("153_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_1982
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1087
    .lex "self", param_1982
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_856
    new $P101, "Undef"
  vivify_856:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("154_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_1984
    .param pmc param_1985 :optional :named("name")
    .param int has_param_1985 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1091
    .lex "self", param_1984
    if has_param_1985, optparam_857
    new $P101, "Undef"
    set param_1985, $P101
  optparam_857:
    .lex "$name", param_1985
.annotate 'line', 1092
    new $P102, "Undef"
    set $P1986, $P102
    .lex "$obj", $P1986
    set $P103, param_1984
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P1986, $P105
.annotate 'line', 1093
    set $P103, $P1986
    unless_null $P103, vivify_858
    new $P103, "Undef"
  vivify_858:
    set $P104, param_1985
    unless_null $P104, vivify_859
    new $P104, "Undef"
  vivify_859:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1091
    set $P103, $P1986
    unless_null $P103, vivify_860
    new $P103, "Undef"
  vivify_860:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("155_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_1988
    .param pmc param_1989 :optional :named("name")
    .param int has_param_1989 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1097
    .lex "self", param_1988
    if has_param_1989, optparam_861
    new $P101, "Undef"
    set param_1989, $P101
  optparam_861:
    .lex "$name", param_1989
.annotate 'line', 1098
    set $P102, param_1989
    unless_null $P102, vivify_862
    new $P102, "Undef"
  vivify_862:
    set $P103, param_1988
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1097
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("156_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_1991
    .param pmc param_1993 :named("repr")
    .param pmc param_1992 :optional :named("name")
    .param int has_param_1992 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1104
    .lex "self", param_1991
    if has_param_1992, optparam_863
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1992, $P101
  optparam_863:
    .lex "$name", param_1992
    .lex "$repr", param_1993
.annotate 'line', 1105
    new $P102, "Undef"
    set $P1994, $P102
    .lex "$metaclass", $P1994
    set $P103, param_1991
    nqp_decontainerize $P104, $P103
    set $P105, param_1992
    unless_null $P105, vivify_864
    new $P105, "Undef"
  vivify_864:
    $P106 = $P104."new"($P105 :named("name"))
    set $P1994, $P106
.annotate 'line', 1107
    set $P103, $P1994
    unless_null $P103, vivify_865
    new $P103, "Undef"
  vivify_865:
    set $P104, param_1993
    unless_null $P104, vivify_866
    new $P104, "Undef"
  vivify_866:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P1995 = root_new ['parrot';'Hash']
    set_who $P105, $P1995
.annotate 'line', 1104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("157_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_1997
    .param pmc param_1998
    .param pmc param_1999
    .param pmc param_2000
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1111
    .lex "self", param_1997
    .lex "$obj", param_1998
    .lex "$name", param_1999
    .lex "$code_obj", param_2000
.annotate 'line', 1112
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1111
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("158_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_2002
    .param pmc param_2003
    .param pmc param_2004
    .param pmc param_2005
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1115
    .lex "self", param_2002
    .lex "$obj", param_2003
    .lex "$name", param_2004
    .lex "$code_obj", param_2005
.annotate 'line', 1116
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1115
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("159_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_2007
    .param pmc param_2008
    .param pmc param_2009
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1119
    .lex "self", param_2007
    .lex "$obj", param_2008
    .lex "$meta_attr", param_2009
.annotate 'line', 1120
    die "Native types may not have attributes"
.annotate 'line', 1119
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("160_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_2011
    .param pmc param_2012
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2011
    .lex "$obj", param_2012
.annotate 'line', 1124
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2011
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1123
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("161_1323686348.97588") :outer("152_1323686348.97588")
    .param pmc param_2014
    .param pmc param_2015
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1127
    .lex "self", param_2014
    .lex "$obj", param_2015
    set $P101, param_2014
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_867
    new $P104, "Undef"
  vivify_867:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2017"  :subid("162_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1133
    .const 'Sub' $P2066 = "173_1323686348.97588" 
    capture_lex $P2066
    .const 'Sub' $P2063 = "172_1323686348.97588" 
    capture_lex $P2063
    .const 'Sub' $P2060 = "171_1323686348.97588" 
    capture_lex $P2060
    .const 'Sub' $P2058 = "170_1323686348.97588" 
    capture_lex $P2058
    .const 'Sub' $P2056 = "169_1323686348.97588" 
    capture_lex $P2056
    .const 'Sub' $P2053 = "168_1323686348.97588" 
    capture_lex $P2053
    .const 'Sub' $P2051 = "167_1323686348.97588" 
    capture_lex $P2051
    .const 'Sub' $P2045 = "166_1323686348.97588" 
    capture_lex $P2045
    .const 'Sub' $P2037 = "165_1323686348.97588" 
    capture_lex $P2037
    .const 'Sub' $P2020 = "163_1323686348.97588" 
    capture_lex $P2020
.annotate 'line', 1204
    .const 'Sub' $P2020 = "163_1323686348.97588" 
    newclosure $P2034, $P2020
    set $P2019, $P2034
    .lex "has_method", $P2019
.annotate 'line', 1133
    .lex "$?PACKAGE", $P2035
    .lex "$?CLASS", $P2036
    set $P101, $P2019
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("163_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2023
    .param pmc param_2024
    .param pmc param_2025
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1204
    .const 'Sub' $P2030 = "164_1323686348.97588" 
    capture_lex $P2030
    new $P2022, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2022, control_2021
    push_eh $P2022
    .lex "$target", param_2023
    .lex "$name", param_2024
    .lex "$local", param_2025
.annotate 'line', 1205
    $P2027 = root_new ['parrot';'ResizablePMCArray']
    set $P2026, $P2027
    .lex "@methods", $P2026
    set $P100, param_2023
    unless_null $P100, vivify_868
    new $P100, "Undef"
  vivify_868:
    get_how $P101, $P100
    set $P102, param_2023
    unless_null $P102, vivify_869
    new $P102, "Undef"
  vivify_869:
    set $P103, param_2025
    unless_null $P103, vivify_870
    new $P103, "Undef"
  vivify_870:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    set $P2026, $P104
.annotate 'line', 1206
    set $P2028, $P2026
    unless_null $P2028, vivify_871
    $P2028 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    defined $I100, $P2028
    unless $I100, for_undef_872
    iter $P100, $P2028
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2033_handler
    push_eh $P103
  loop2033_test:
    unless $P100, loop2033_done
    shift $P101, $P100
  loop2033_redo:
    .const 'Sub' $P2030 = "164_1323686348.97588" 
    capture_lex $P2030
    $P2030($P101)
  loop2033_next:
    goto loop2033_test
  loop2033_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2033_next
    eq $P104, .CONTROL_LOOP_REDO, loop2033_redo
  loop2033_done:
    pop_eh 
  for_undef_872:
.annotate 'line', 1209
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1204
    .return ()
  control_2021:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2029"  :anon :subid("164_1323686348.97588") :outer("163_1323686348.97588")
    .param pmc param_2031
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1206
    .lex "$_", param_2031
.annotate 'line', 1207
    find_lex $P103, "$_"
    unless_null $P103, vivify_873
    new $P103, "Undef"
  vivify_873:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_874
    new $P104, "Undef"
  vivify_874:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2032
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2032_end
  if_2032:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2032_end:
.annotate 'line', 1206
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("165_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2038
    .param pmc param_2039 :named("name")
    .param pmc param_2040 :optional :named("box_target")
    .param int has_param_2040 :opt_flag
    .param pmc param_2041 :slurpy :named
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1139
    .lex "self", param_2038
    .lex "$name", param_2039
    if has_param_2040, optparam_875
    new $P101, "Undef"
    set param_2040, $P101
  optparam_875:
    .lex "$box_target", param_2040
    .lex "%extra", param_2041
.annotate 'line', 1140
    new $P102, "Undef"
    set $P2042, $P102
    .lex "$attr", $P2042
    set $P103, param_2038
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2042, $P105
.annotate 'line', 1141
    set $P103, $P2042
    unless_null $P103, vivify_876
    new $P103, "Undef"
  vivify_876:
    set $P104, param_2039
    unless_null $P104, vivify_877
    new $P104, "Undef"
  vivify_877:
    set $P2043, param_2041
    unless_null $P2043, vivify_878
    $P2043 = root_new ['parrot';'Hash']
  vivify_878:
    set $P105, param_2040
    unless_null $P105, vivify_879
    new $P105, "Undef"
  vivify_879:
.annotate 'line', 1142
    set $P2044, param_2041
    unless_null $P2044, vivify_880
    $P2044 = root_new ['parrot';'Hash']
  vivify_880:
    exists $I100, $P2044["type"]
.annotate 'line', 1141
    $P103."BUILD"($P2043 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1139
    set $P103, $P2042
    unless_null $P103, vivify_881
    new $P103, "Undef"
  vivify_881:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("166_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2046
    .param pmc param_2047 :optional :named("name")
    .param int has_param_2047 :opt_flag
    .param pmc param_2048 :optional :named("type")
    .param int has_param_2048 :opt_flag
    .param pmc param_2049 :optional :named("has_type")
    .param int has_param_2049 :opt_flag
    .param pmc param_2050 :optional :named("box_target")
    .param int has_param_2050 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1146
    .lex "self", param_2046
    if has_param_2047, optparam_882
    new $P101, "Undef"
    set param_2047, $P101
  optparam_882:
    .lex "$name", param_2047
    if has_param_2048, optparam_883
    new $P102, "Undef"
    set param_2048, $P102
  optparam_883:
    .lex "$type", param_2048
    if has_param_2049, optparam_884
    new $P103, "Undef"
    set param_2049, $P103
  optparam_884:
    .lex "$has_type", param_2049
    if has_param_2050, optparam_885
    new $P104, "Undef"
    set param_2050, $P104
  optparam_885:
    .lex "$box_target", param_2050
.annotate 'line', 1147
    set $P105, param_2047
    unless_null $P105, vivify_886
    new $P105, "Undef"
  vivify_886:
    set $P106, param_2046
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1148
    set $P105, param_2048
    unless_null $P105, vivify_887
    new $P105, "Undef"
  vivify_887:
    set $P106, param_2046
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1149
    set $P105, param_2049
    unless_null $P105, vivify_888
    new $P105, "Undef"
  vivify_888:
    set $P106, param_2046
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1150
    set $P105, param_2050
    unless_null $P105, vivify_889
    new $P105, "Undef"
  vivify_889:
    set $P106, param_2046
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1146
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("167_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2052
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1153
    .lex "self", param_2052
    set $P101, param_2052
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_890
    new $P104, "Undef"
  vivify_890:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("168_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2054
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2054
.annotate 'line', 1158
    set $P102, param_2054
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_891
    new $P105, "Undef"
  vivify_891:
    if $P105, if_2055
    null $P110
    set $P101, $P110
    goto if_2055_end
  if_2055:
    set $P106, param_2054
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_892
    new $P109, "Undef"
  vivify_892:
    set $P101, $P109
  if_2055_end:
.annotate 'line', 1157
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("169_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2057
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2057
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("170_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2059
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1165
    .lex "self", param_2059
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("171_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2061
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1169
    .lex "self", param_2061
.annotate 'line', 1170
    set $P102, param_2061
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_893
    new $P105, "Undef"
  vivify_893:
    if $P105, if_2062
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2062_end
  if_2062:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2062_end:
.annotate 'line', 1169
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("172_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2064
    .param pmc param_2065
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1173
    .lex "self", param_2064
    .lex "$obj", param_2065
    set $P101, param_2065
    unless_null $P101, vivify_894
    new $P101, "Undef"
  vivify_894:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("173_1323686348.97588") :outer("162_1323686348.97588")
    .param pmc param_2067
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1200
    .lex "self", param_2067
.annotate 'line', 1201
    set $P101, param_2067
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_895
    new $P104, "Undef"
  vivify_895:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1200
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2068"  :subid("174_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1215
    .const 'Sub' $P2104 = "183_1323686348.97588" 
    capture_lex $P2104
    .const 'Sub' $P2101 = "182_1323686348.97588" 
    capture_lex $P2101
    .const 'Sub' $P2097 = "181_1323686348.97588" 
    capture_lex $P2097
    .const 'Sub' $P2092 = "180_1323686348.97588" 
    capture_lex $P2092
    .const 'Sub' $P2087 = "179_1323686348.97588" 
    capture_lex $P2087
    .const 'Sub' $P2082 = "178_1323686348.97588" 
    capture_lex $P2082
    .const 'Sub' $P2079 = "177_1323686348.97588" 
    capture_lex $P2079
    .const 'Sub' $P2075 = "176_1323686348.97588" 
    capture_lex $P2075
    .const 'Sub' $P2073 = "175_1323686348.97588" 
    capture_lex $P2073
.annotate 'line', 1219
    new $P100, "Undef"
    set $P2070, $P100
    .lex "$archetypes", $P2070
    .lex "$?PACKAGE", $P2071
    .lex "$?CLASS", $P2072
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    set $P2070, $P102
.annotate 'line', 1261
    .const 'Sub' $P2104 = "183_1323686348.97588" 
    newclosure $P2107, $P2104
.annotate 'line', 1215
    .return ($P2107)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("175_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2074
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1220
    .lex "self", param_2074
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_896
    new $P101, "Undef"
  vivify_896:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("176_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2076
    .param pmc param_2077 :optional :named("name")
    .param int has_param_2077 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1224
    .lex "self", param_2076
    if has_param_2077, optparam_897
    new $P101, "Undef"
    set param_2077, $P101
  optparam_897:
    .lex "$name", param_2077
.annotate 'line', 1225
    new $P102, "Undef"
    set $P2078, $P102
    .lex "$obj", $P2078
    set $P103, param_2076
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P2078, $P105
.annotate 'line', 1226
    set $P103, $P2078
    unless_null $P103, vivify_898
    new $P103, "Undef"
  vivify_898:
    set $P104, param_2077
    unless_null $P104, vivify_899
    new $P104, "Undef"
  vivify_899:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1224
    set $P103, $P2078
    unless_null $P103, vivify_900
    new $P103, "Undef"
  vivify_900:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("177_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2080
    .param pmc param_2081 :optional :named("name")
    .param int has_param_2081 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1230
    .lex "self", param_2080
    if has_param_2081, optparam_901
    new $P101, "Undef"
    set param_2081, $P101
  optparam_901:
    .lex "$name", param_2081
.annotate 'line', 1231
    set $P102, param_2081
    unless_null $P102, vivify_902
    new $P102, "Undef"
  vivify_902:
    set $P103, param_2080
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1230
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("178_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2083
    .param pmc param_2084 :optional :named("name")
    .param int has_param_2084 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1236
    .lex "self", param_2083
    if has_param_2084, optparam_903
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2084, $P101
  optparam_903:
    .lex "$name", param_2084
.annotate 'line', 1237
    new $P102, "Undef"
    set $P2085, $P102
    .lex "$metaclass", $P2085
    set $P103, param_2083
    nqp_decontainerize $P104, $P103
    set $P105, param_2084
    unless_null $P105, vivify_904
    new $P105, "Undef"
  vivify_904:
    $P106 = $P104."new"($P105 :named("name"))
    set $P2085, $P106
.annotate 'line', 1239
    set $P103, $P2085
    unless_null $P103, vivify_905
    new $P103, "Undef"
  vivify_905:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2086 = root_new ['parrot';'Hash']
    set_who $P105, $P2086
.annotate 'line', 1236
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("179_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2088
    .param pmc param_2089
    .param pmc param_2090
    .param pmc param_2091
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1243
    .lex "self", param_2088
    .lex "$obj", param_2089
    .lex "$name", param_2090
    .lex "$code_obj", param_2091
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("180_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2093
    .param pmc param_2094
    .param pmc param_2095
    .param pmc param_2096
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1249
    .lex "self", param_2093
    .lex "$obj", param_2094
    .lex "$name", param_2095
    .lex "$code_obj", param_2096
.annotate 'line', 1250
    die "Modules may not have methods"
.annotate 'line', 1249
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("181_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2098
    .param pmc param_2099
    .param pmc param_2100
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1253
    .lex "self", param_2098
    .lex "$obj", param_2099
    .lex "$meta_attr", param_2100
.annotate 'line', 1254
    die "Modules may not have attributes"
.annotate 'line', 1253
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("182_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2102
    .param pmc param_2103
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1257
    .lex "self", param_2102
    .lex "$obj", param_2103
.annotate 'line', 1258
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2102
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1257
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("183_1323686348.97588") :outer("174_1323686348.97588")
    .param pmc param_2105
    .param pmc param_2106
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1261
    .lex "self", param_2105
    .lex "$obj", param_2106
    set $P101, param_2105
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_906
    new $P104, "Undef"
  vivify_906:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2108"  :anon :subid("184_1323686348.97588") :outer("10_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1269
    .lex "$?PACKAGE", $P2110
    .lex "$?CLASS", $P2111
.annotate 'line', 1270
    find_lex $P100, "NQPModuleHOW"
    set $P101, $P2110
    unless_null $P101, vivify_907
    new $P101, "Undef"
    set $P2110, $P101
  vivify_907:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1271
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2110
    unless_null $P101, vivify_908
    new $P101, "Undef"
    set $P2110, $P101
  vivify_908:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1272
    find_lex $P100, "NQPAttribute"
    set $P101, $P2110
    unless_null $P101, vivify_909
    new $P101, "Undef"
    set $P2110, $P101
  vivify_909:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1273
    find_lex $P100, "NQPClassHOW"
    set $P101, $P2110
    unless_null $P101, vivify_910
    new $P101, "Undef"
    set $P2110, $P101
  vivify_910:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1274
    find_lex $P100, "NQPAttribute"
    set $P101, $P2110
    unless_null $P101, vivify_911
    new $P101, "Undef"
    set $P2110, $P101
  vivify_911:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1275
    find_lex $P100, "NQPParametricRoleHOW"
    set $P101, $P2110
    unless_null $P101, vivify_912
    new $P101, "Undef"
    set $P2110, $P101
  vivify_912:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1276
    find_lex $P100, "NQPAttribute"
    set $P101, $P2110
    unless_null $P101, vivify_913
    new $P101, "Undef"
    set $P2110, $P101
  vivify_913:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1277
    find_lex $P100, "NQPNativeHOW"
    set $P101, $P2110
    unless_null $P101, vivify_914
    new $P101, "Undef"
    set $P2110, $P101
  vivify_914:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1269
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2113" :load :anon :subid("185_1323686348.97588")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1
    .const '' $P2115 = "10_1323686348.97588" 
    $P106 = $P2115()
    .return ($P106)
.end

