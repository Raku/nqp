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

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1315057448.686")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2065 = "171_1315057448.686" 
    capture_lex $P2065
    .const 'Sub' $P2028 = "162_1315057448.686" 
    capture_lex $P2028
    .const 'Sub' $P1977 = "150_1315057448.686" 
    capture_lex $P1977
    .const 'Sub' $P1939 = "141_1315057448.686" 
    capture_lex $P1939
    .const 'Sub' $P1463 = "78_1315057448.686" 
    capture_lex $P1463
    .const 'Sub' $P1322 = "53_1315057448.686" 
    capture_lex $P1322
    .const 'Sub' $P1244 = "43_1315057448.686" 
    capture_lex $P1244
    .const 'Sub' $P1115 = "21_1315057448.686" 
    capture_lex $P1115
    .const 'Sub' $P1015 = "11_1315057448.686" 
    capture_lex $P1015
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    .lex "RoleToRoleApplier", $P1005
    .lex "NQPConcreteRoleHOW", $P1006
    .lex "RoleToClassApplier", $P1007
    .lex "NQPParametricRoleHOW", $P1008
    .lex "NQPClassHOW", $P1009
    .lex "NQPNativeHOW", $P1010
    .lex "NQPAttribute", $P1011
    .lex "NQPModuleHOW", $P1012
    .lex "EXPORTHOW", $P1013
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 5
    .const 'Sub' $P1015 = "11_1315057448.686" 
    capture_lex $P1015
    $P1015()
.annotate 'line', 97
    .const 'Sub' $P1115 = "21_1315057448.686" 
    capture_lex $P1115
    $P1115()
.annotate 'line', 246
    .const 'Sub' $P1244 = "43_1315057448.686" 
    capture_lex $P1244
    $P1244()
.annotate 'line', 322
    .const 'Sub' $P1322 = "53_1315057448.686" 
    capture_lex $P1322
    $P1322()
.annotate 'line', 502
    .const 'Sub' $P1463 = "78_1315057448.686" 
    capture_lex $P1463
    $P1463()
.annotate 'line', 992
    .const 'Sub' $P1939 = "141_1315057448.686" 
    capture_lex $P1939
    $P1939()
.annotate 'line', 1038
    .const 'Sub' $P1977 = "150_1315057448.686" 
    capture_lex $P1977
    $P1977()
.annotate 'line', 1120
    .const 'Sub' $P2028 = "162_1315057448.686" 
    capture_lex $P2028
    $P2028()
.annotate 'line', 1169
    .const 'Sub' $P2065 = "171_1315057448.686" 
    capture_lex $P2065
    $P2065()
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_2068
    set $P100, $P101
    goto if_2068_end
  if_2068:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2068_end:
    .return ($P100)
    .const 'Sub' $P2070 = "172_1315057448.686" 
    .return ($P2070)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post173") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1315057448.686" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1315057444.833"
    isnull $I100, $P107
    if $I100, if_2072
    goto if_2072_end
  if_2072:
    nqp_dynop_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1315057444.833"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I101, $P112
    unless $I101, if_2073_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2073_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 0, $P113
    .const 'Sub' $P2074 = "10_1315057448.686" 
    $P112 = $P2074."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P2075 = "10_1315057448.686" 
    $P114 = $P2075."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2076 = "10_1315057448.686" 
    $P112 = $P2076."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2077 = "10_1315057448.686" 
    $P114 = $P2077."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 1, $P113
    nqp_get_sc_object $P112, "1315057444.833", 1
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'Sub' $P2078 = "10_1315057448.686" 
    $P112 = $P2078."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 1
    $P112."set_static_lexpad_value"("RoleToRoleApplier", $P113)
    .const 'Sub' $P2079 = "10_1315057448.686" 
    $P114 = $P2079."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 1
    .const 'Sub' $P2080 = "12_1315057448.686" 
    $P113."add_method"($P114, "apply", $P2080)
    .const 'Sub' $P2081 = "11_1315057448.686" 
    $P112 = $P2081."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2082 = "11_1315057448.686" 
    $P114 = $P2082."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2083 = "11_1315057448.686" 
    $P112 = $P2083."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2084 = "11_1315057448.686" 
    $P114 = $P2084."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 3, $P113
    nqp_get_sc_object $P112, "1315057444.833", 3
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'Sub' $P2085 = "10_1315057448.686" 
    $P112 = $P2085."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 3
    $P112."set_static_lexpad_value"("NQPConcreteRoleHOW", $P113)
    .const 'Sub' $P2086 = "10_1315057448.686" 
    $P114 = $P2086."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2087 = "22_1315057448.686" 
    $P113."add_method"($P114, "new", $P2087)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2088 = "23_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2088)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2089 = "24_1315057448.686" 
    $P113."add_method"($P114, "new_type", $P2089)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2090 = "25_1315057448.686" 
    $P113."add_method"($P114, "add_method", $P2090)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2091 = "26_1315057448.686" 
    $P113."add_method"($P114, "add_multi_method", $P2091)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2092 = "27_1315057448.686" 
    $P113."add_method"($P114, "add_attribute", $P2092)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2093 = "28_1315057448.686" 
    $P113."add_method"($P114, "add_parent", $P2093)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2094 = "29_1315057448.686" 
    $P113."add_method"($P114, "add_role", $P2094)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2095 = "30_1315057448.686" 
    $P113."add_method"($P114, "add_collision", $P2095)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2096 = "31_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2096)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2097 = "33_1315057448.686" 
    $P113."add_method"($P114, "methods", $P2097)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2098 = "35_1315057448.686" 
    $P113."add_method"($P114, "method_table", $P2098)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2099 = "36_1315057448.686" 
    $P113."add_method"($P114, "collisions", $P2099)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2100 = "37_1315057448.686" 
    $P113."add_method"($P114, "name", $P2100)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2101 = "38_1315057448.686" 
    $P113."add_method"($P114, "attributes", $P2101)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2102 = "40_1315057448.686" 
    $P113."add_method"($P114, "roles", $P2102)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2103 = "41_1315057448.686" 
    $P113."add_method"($P114, "does_list", $P2103)
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    .const 'Sub' $P2104 = "42_1315057448.686" 
    $P113."add_method"($P114, "instance_of", $P2104)
    .const 'Sub' $P2105 = "21_1315057448.686" 
    $P112 = $P2105."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 3
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2106 = "21_1315057448.686" 
    $P114 = $P2106."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2107 = "21_1315057448.686" 
    $P112 = $P2107."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 3
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2108 = "21_1315057448.686" 
    $P114 = $P2108."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 3
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 22, $P113
    nqp_get_sc_object $P112, "1315057444.833", 22
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'Sub' $P2109 = "10_1315057448.686" 
    $P112 = $P2109."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 22
    $P112."set_static_lexpad_value"("RoleToClassApplier", $P113)
    .const 'Sub' $P2110 = "10_1315057448.686" 
    $P114 = $P2110."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 22
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 22
    .const 'Sub' $P2111 = "48_1315057448.686" 
    $P113."add_method"($P114, "apply", $P2111)
    .const 'Sub' $P2112 = "43_1315057448.686" 
    $P112 = $P2112."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 22
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2113 = "43_1315057448.686" 
    $P114 = $P2113."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2114 = "43_1315057448.686" 
    $P112 = $P2114."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 22
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2115 = "43_1315057448.686" 
    $P114 = $P2115."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 22
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 22
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 24, $P113
    nqp_get_sc_object $P112, "1315057444.833", 24
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'Sub' $P2116 = "10_1315057448.686" 
    $P112 = $P2116."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 24
    $P112."set_static_lexpad_value"("NQPParametricRoleHOW", $P113)
    .const 'Sub' $P2117 = "10_1315057448.686" 
    $P114 = $P2117."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2118 = "55_1315057448.686" 
    $P113."add_method"($P114, "new", $P2118)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2119 = "56_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2119)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2120 = "57_1315057448.686" 
    $P113."add_method"($P114, "new_type", $P2120)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2121 = "58_1315057448.686" 
    $P113."add_method"($P114, "set_body_block", $P2121)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2122 = "59_1315057448.686" 
    $P113."add_method"($P114, "add_method", $P2122)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2123 = "60_1315057448.686" 
    $P113."add_method"($P114, "add_multi_method", $P2123)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2124 = "61_1315057448.686" 
    $P113."add_method"($P114, "add_attribute", $P2124)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2125 = "62_1315057448.686" 
    $P113."add_method"($P114, "add_parent", $P2125)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2126 = "63_1315057448.686" 
    $P113."add_method"($P114, "add_role", $P2126)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2127 = "64_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2127)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2128 = "65_1315057448.686" 
    $P113."add_method"($P114, "parametric", $P2128)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2129 = "66_1315057448.686" 
    $P113."add_method"($P114, "specialize", $P2129)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2130 = "71_1315057448.686" 
    $P113."add_method"($P114, "methods", $P2130)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2131 = "73_1315057448.686" 
    $P113."add_method"($P114, "method_table", $P2131)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2132 = "74_1315057448.686" 
    $P113."add_method"($P114, "name", $P2132)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2133 = "75_1315057448.686" 
    $P113."add_method"($P114, "attributes", $P2133)
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    .const 'Sub' $P2134 = "77_1315057448.686" 
    $P113."add_method"($P114, "roles", $P2134)
    .const 'Sub' $P2135 = "53_1315057448.686" 
    $P112 = $P2135."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 24
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2136 = "53_1315057448.686" 
    $P114 = $P2136."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2137 = "53_1315057448.686" 
    $P112 = $P2137."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 24
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2138 = "53_1315057448.686" 
    $P114 = $P2138."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 24
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 24
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 42, $P113
    nqp_get_sc_object $P112, "1315057444.833", 42
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'Sub' $P2139 = "10_1315057448.686" 
    $P112 = $P2139."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 42
    $P112."set_static_lexpad_value"("NQPClassHOW", $P113)
    .const 'Sub' $P2140 = "10_1315057448.686" 
    $P114 = $P2140."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2141 = "89_1315057448.686" 
    $P113."add_method"($P114, "new", $P2141)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2142 = "90_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2142)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2143 = "91_1315057448.686" 
    $P113."add_method"($P114, "new_type", $P2143)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2144 = "92_1315057448.686" 
    $P113."add_method"($P114, "add_method", $P2144)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2145 = "93_1315057448.686" 
    $P113."add_method"($P114, "add_multi_method", $P2145)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2146 = "94_1315057448.686" 
    $P113."add_method"($P114, "add_attribute", $P2146)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2147 = "95_1315057448.686" 
    $P113."add_method"($P114, "add_parent", $P2147)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2148 = "97_1315057448.686" 
    $P113."add_method"($P114, "set_default_parent", $P2148)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2149 = "98_1315057448.686" 
    $P113."add_method"($P114, "add_role", $P2149)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2150 = "100_1315057448.686" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2150)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2151 = "101_1315057448.686" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2151)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2152 = "102_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2152)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2153 = "106_1315057448.686" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2153)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2154 = "111_1315057448.686" 
    $P113."add_method"($P114, "publish_type_cache", $P2154)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2155 = "114_1315057448.686" 
    $P113."add_method"($P114, "publish_method_cache", $P2155)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2156 = "117_1315057448.686" 
    $P113."add_method"($P114, "publish_boolification_spec", $P2156)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2157 = "118_1315057448.686" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2157)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2158 = "121_1315057448.686" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2158)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2159 = "124_1315057448.686" 
    $P113."add_method"($P114, "parents", $P2159)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2160 = "125_1315057448.686" 
    $P113."add_method"($P114, "mro", $P2160)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2161 = "126_1315057448.686" 
    $P113."add_method"($P114, "roles", $P2161)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2162 = "127_1315057448.686" 
    $P113."add_method"($P114, "methods", $P2162)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2163 = "129_1315057448.686" 
    $P113."add_method"($P114, "method_table", $P2163)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2164 = "130_1315057448.686" 
    $P113."add_method"($P114, "name", $P2164)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2165 = "131_1315057448.686" 
    $P113."add_method"($P114, "attributes", $P2165)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2166 = "133_1315057448.686" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2166)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2167 = "134_1315057448.686" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2167)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2168 = "135_1315057448.686" 
    $P113."add_method"($P114, "isa", $P2168)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2169 = "136_1315057448.686" 
    $P113."add_method"($P114, "does", $P2169)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2170 = "137_1315057448.686" 
    $P113."add_method"($P114, "can", $P2170)
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    .const 'Sub' $P2171 = "139_1315057448.686" 
    $P113."add_method"($P114, "find_method", $P2171)
    .const 'Sub' $P2172 = "78_1315057448.686" 
    $P112 = $P2172."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 42
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2173 = "78_1315057448.686" 
    $P114 = $P2173."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2174 = "78_1315057448.686" 
    $P112 = $P2174."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 42
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2175 = "78_1315057448.686" 
    $P114 = $P2175."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 42
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 42
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 74, $P113
    nqp_get_sc_object $P112, "1315057444.833", 74
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'Sub' $P2176 = "10_1315057448.686" 
    $P112 = $P2176."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 74
    $P112."set_static_lexpad_value"("NQPNativeHOW", $P113)
    .const 'Sub' $P2177 = "10_1315057448.686" 
    $P114 = $P2177."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2178 = "142_1315057448.686" 
    $P113."add_method"($P114, "new", $P2178)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2179 = "143_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2179)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2180 = "144_1315057448.686" 
    $P113."add_method"($P114, "new_type", $P2180)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2181 = "145_1315057448.686" 
    $P113."add_method"($P114, "add_method", $P2181)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2182 = "146_1315057448.686" 
    $P113."add_method"($P114, "add_multi_method", $P2182)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2183 = "147_1315057448.686" 
    $P113."add_method"($P114, "add_attribute", $P2183)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2184 = "148_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2184)
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    .const 'Sub' $P2185 = "149_1315057448.686" 
    $P113."add_method"($P114, "name", $P2185)
    .const 'Sub' $P2186 = "141_1315057448.686" 
    $P112 = $P2186."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 74
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2187 = "141_1315057448.686" 
    $P114 = $P2187."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2188 = "141_1315057448.686" 
    $P112 = $P2188."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 74
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2189 = "141_1315057448.686" 
    $P114 = $P2189."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 74
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 74
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 83, $P113
    nqp_get_sc_object $P112, "1315057444.833", 83
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'Sub' $P2190 = "10_1315057448.686" 
    $P112 = $P2190."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 83
    $P112."set_static_lexpad_value"("NQPAttribute", $P113)
    .const 'Sub' $P2191 = "10_1315057448.686" 
    $P114 = $P2191."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!has_type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2192 = "153_1315057448.686" 
    $P113."add_method"($P114, "new", $P2192)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2193 = "154_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2193)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2194 = "155_1315057448.686" 
    $P113."add_method"($P114, "name", $P2194)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2195 = "156_1315057448.686" 
    $P113."add_method"($P114, "type", $P2195)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2196 = "157_1315057448.686" 
    $P113."add_method"($P114, "has_accessor", $P2196)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2197 = "158_1315057448.686" 
    $P113."add_method"($P114, "build_closure", $P2197)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2198 = "159_1315057448.686" 
    $P113."add_method"($P114, "box_target", $P2198)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2199 = "160_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2199)
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    .const 'Sub' $P2200 = "161_1315057448.686" 
    $P113."add_method"($P114, "has_mutator", $P2200)
    .const 'Sub' $P2201 = "150_1315057448.686" 
    $P112 = $P2201."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 83
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2202 = "150_1315057448.686" 
    $P114 = $P2202."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2203 = "150_1315057448.686" 
    $P112 = $P2203."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 83
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2204 = "150_1315057448.686" 
    $P114 = $P2204."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 83
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 83
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 93, $P113
    nqp_get_sc_object $P112, "1315057444.833", 93
    nqp_get_sc_object $P113, "1315057444.833", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'Sub' $P2205 = "10_1315057448.686" 
    $P112 = $P2205."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 93
    $P112."set_static_lexpad_value"("NQPModuleHOW", $P113)
    .const 'Sub' $P2206 = "10_1315057448.686" 
    $P114 = $P2206."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2207 = "163_1315057448.686" 
    $P113."add_method"($P114, "new", $P2207)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2208 = "164_1315057448.686" 
    $P113."add_method"($P114, "BUILD", $P2208)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2209 = "165_1315057448.686" 
    $P113."add_method"($P114, "new_type", $P2209)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2210 = "166_1315057448.686" 
    $P113."add_method"($P114, "add_method", $P2210)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2211 = "167_1315057448.686" 
    $P113."add_method"($P114, "add_multi_method", $P2211)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2212 = "168_1315057448.686" 
    $P113."add_method"($P114, "add_attribute", $P2212)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2213 = "169_1315057448.686" 
    $P113."add_method"($P114, "compose", $P2213)
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    .const 'Sub' $P2214 = "170_1315057448.686" 
    $P113."add_method"($P114, "name", $P2214)
    .const 'Sub' $P2215 = "162_1315057448.686" 
    $P112 = $P2215."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 93
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2216 = "162_1315057448.686" 
    $P114 = $P2216."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2217 = "162_1315057448.686" 
    $P112 = $P2217."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 93
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2218 = "162_1315057448.686" 
    $P114 = $P2218."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 93
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 93
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1315057444.833", 102, $P113
    .const 'Sub' $P2219 = "10_1315057448.686" 
    $P112 = $P2219."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 102
    $P112."set_static_lexpad_value"("EXPORTHOW", $P113)
    .const 'Sub' $P2220 = "10_1315057448.686" 
    $P114 = $P2220."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2221 = "171_1315057448.686" 
    $P112 = $P2221."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 102
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2222 = "171_1315057448.686" 
    $P114 = $P2222."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2223 = "171_1315057448.686" 
    $P112 = $P2223."get_lexinfo"()
    nqp_get_sc_object $P113, "1315057444.833", 102
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2224 = "171_1315057448.686" 
    $P114 = $P2224."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1315057444.833", 102
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1315057444.833", 102
    $P113."compose"($P114)
  if_2072_end:
    nqp_get_sc_object $P112, "1315057444.833", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1014"  :subid("11_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 5
    .const 'Sub' $P1018 = "12_1315057448.686" 
    capture_lex $P1018
    .lex "$?PACKAGE", $P1016
    .lex "$?CLASS", $P1017
.annotate 'line', 6
    .const 'Sub' $P1018 = "12_1315057448.686" 
    newclosure $P1113, $P1018
.annotate 'line', 5
    .return ($P1113)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("12_1315057448.686") :outer("11_1315057448.686")
    .param pmc param_1021
    .param pmc param_1022
    .param pmc param_1023
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 6
    .const 'Sub' $P1088 = "18_1315057448.686" 
    capture_lex $P1088
    .const 'Sub' $P1073 = "17_1315057448.686" 
    capture_lex $P1073
    .const 'Sub' $P1067 = "16_1315057448.686" 
    capture_lex $P1067
    .const 'Sub' $P1035 = "13_1315057448.686" 
    capture_lex $P1035
    new $P1020, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1020, control_1019
    push_eh $P1020
    .lex "self", param_1021
    .lex "$target", param_1022
    .lex "@roles", param_1023
.annotate 'line', 8
    $P1025 = root_new ['parrot';'Hash']
    set $P1024, $P1025
    .lex "%meth_info", $P1024
.annotate 'line', 34
    $P1027 = root_new ['parrot';'Hash']
    set $P1026, $P1027
    .lex "%target_meth_info", $P1026
.annotate 'line', 35
    $P1029 = root_new ['parrot';'ResizablePMCArray']
    set $P1028, $P1029
    .lex "@target_meths", $P1028
.annotate 'line', 60
    $P1031 = root_new ['parrot';'ResizablePMCArray']
    set $P1030, $P1031
    .lex "@all_roles", $P1030
.annotate 'line', 6
    find_lex $P1032, "%meth_info"
    unless_null $P1032, vivify_174
    $P1032 = root_new ['parrot';'Hash']
  vivify_174:
.annotate 'line', 9
    find_lex $P1033, "@roles"
    unless_null $P1033, vivify_175
    $P1033 = root_new ['parrot';'ResizablePMCArray']
  vivify_175:
    defined $I100, $P1033
    unless $I100, for_undef_176
    iter $P100, $P1033
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1063_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1063_test:
    unless $P100, loop1063_done
    shift $P101, $P100
  loop1063_redo:
    .const 'Sub' $P1035 = "13_1315057448.686" 
    capture_lex $P1035
    $P1035($P101)
  loop1063_next:
    goto loop1063_test
  loop1063_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1063_next
    eq $P104, .CONTROL_LOOP_REDO, loop1063_redo
  loop1063_done:
    pop_eh 
  for_undef_176:
.annotate 'line', 6
    find_lex $P1064, "%target_meth_info"
    unless_null $P1064, vivify_200
    $P1064 = root_new ['parrot';'Hash']
  vivify_200:
.annotate 'line', 35
    find_lex $P100, "$target"
    unless_null $P100, vivify_201
    new $P100, "Undef"
  vivify_201:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_202
    new $P102, "Undef"
  vivify_202:
    $P103 = $P101."methods"($P102)
    store_lex "@target_meths", $P103
.annotate 'line', 36
    find_lex $P1065, "@target_meths"
    unless_null $P1065, vivify_203
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_203:
    defined $I100, $P1065
    unless $I100, for_undef_204
    iter $P100, $P1065
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1070_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1070_test:
    unless $P100, loop1070_done
    shift $P101, $P100
  loop1070_redo:
    .const 'Sub' $P1067 = "16_1315057448.686" 
    capture_lex $P1067
    $P1067($P101)
  loop1070_next:
    goto loop1070_test
  loop1070_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1070_next
    eq $P104, .CONTROL_LOOP_REDO, loop1070_redo
  loop1070_done:
    pop_eh 
  for_undef_204:
.annotate 'line', 41
    find_lex $P1071, "%meth_info"
    unless_null $P1071, vivify_208
    $P1071 = root_new ['parrot';'Hash']
  vivify_208:
    defined $I100, $P1071
    unless $I100, for_undef_209
    iter $P100, $P1071
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1084_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1084_test:
    unless $P100, loop1084_done
    shift $P101, $P100
  loop1084_redo:
    .const 'Sub' $P1073 = "17_1315057448.686" 
    capture_lex $P1073
    $P1073($P101)
  loop1084_next:
    goto loop1084_test
  loop1084_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1084_next
    eq $P105, .CONTROL_LOOP_REDO, loop1084_redo
  loop1084_done:
    pop_eh 
  for_undef_209:
.annotate 'line', 6
    find_lex $P1085, "@all_roles"
    unless_null $P1085, vivify_226
    $P1085 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
.annotate 'line', 61
    find_lex $P1086, "@roles"
    unless_null $P1086, vivify_227
    $P1086 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    defined $I100, $P1086
    unless $I100, for_undef_228
    iter $P100, $P1086
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1111_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1111_test:
    unless $P100, loop1111_done
    shift $P101, $P100
  loop1111_redo:
    .const 'Sub' $P1088 = "18_1315057448.686" 
    capture_lex $P1088
    $P1088($P101)
  loop1111_next:
    goto loop1111_test
  loop1111_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1111_next
    eq $P105, .CONTROL_LOOP_REDO, loop1111_redo
  loop1111_done:
    pop_eh 
  for_undef_228:
.annotate 'line', 90
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1112, "@all_roles"
    unless_null $P1112, vivify_250
    $P1112 = root_new ['parrot';'ResizablePMCArray']
  vivify_250:
    setattribute $P100, 'payload', $P1112
    throw $P100
.annotate 'line', 6
    .return ()
  control_1019:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1034"  :anon :subid("13_1315057448.686") :outer("12_1315057448.686")
    .param pmc param_1038
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1041 = "14_1315057448.686" 
    capture_lex $P1041
.annotate 'line', 10
    $P1037 = root_new ['parrot';'ResizablePMCArray']
    set $P1036, $P1037
    .lex "@methods", $P1036
    .lex "$_", param_1038
    find_lex $P102, "$_"
    unless_null $P102, vivify_177
    new $P102, "Undef"
  vivify_177:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_178
    new $P104, "Undef"
  vivify_178:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 11
    find_lex $P1039, "@methods"
    unless_null $P1039, vivify_179
    $P1039 = root_new ['parrot';'ResizablePMCArray']
  vivify_179:
    defined $I101, $P1039
    unless $I101, for_undef_180
    iter $P102, $P1039
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1062_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1062_test:
    unless $P102, loop1062_done
    shift $P103, $P102
  loop1062_redo:
    .const 'Sub' $P1041 = "14_1315057448.686" 
    capture_lex $P1041
    $P1041($P103)
  loop1062_next:
    goto loop1062_test
  loop1062_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1062_next
    eq $P109, .CONTROL_LOOP_REDO, loop1062_redo
  loop1062_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 9
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1040"  :anon :subid("14_1315057448.686") :outer("13_1315057448.686")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 11
    .const 'Sub' $P1056 = "15_1315057448.686" 
    capture_lex $P1056
.annotate 'line', 12
    new $P104, "Undef"
    set $P1042, $P104
    .lex "$name", $P1042
.annotate 'line', 13
    new $P105, "Undef"
    set $P1043, $P105
    .lex "$meth", $P1043
.annotate 'line', 14
    $P1045 = root_new ['parrot';'ResizablePMCArray']
    set $P1044, $P1045
    .lex "@meth_list", $P1044
.annotate 'line', 21
    new $P106, "Undef"
    set $P1046, $P106
    .lex "$found", $P1046
    .lex "$_", param_1047
.annotate 'line', 12
    find_lex $P107, "$_"
    unless_null $P107, vivify_181
    new $P107, "Undef"
  vivify_181:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$name", $P108
.annotate 'line', 13
    find_lex $P107, "$_"
    unless_null $P107, vivify_182
    new $P107, "Undef"
  vivify_182:
    store_lex "$meth", $P107
.annotate 'line', 11
    find_lex $P1048, "@meth_list"
    unless_null $P1048, vivify_183
    $P1048 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
.annotate 'line', 15
    find_lex $P107, "$name"
    unless_null $P107, vivify_184
    new $P107, "Undef"
  vivify_184:
    find_lex $P1050, "%meth_info"
    unless_null $P1050, vivify_185
    $P1050 = root_new ['parrot';'Hash']
  vivify_185:
    set $P108, $P1050[$P107]
    unless_null $P108, vivify_186
    new $P108, "Undef"
  vivify_186:
    defined $I102, $P108
    if $I102, if_1049
.annotate 'line', 19
    find_lex $P1052, "@meth_list"
    unless_null $P1052, vivify_187
    $P1052 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    find_lex $P109, "$name"
    unless_null $P109, vivify_188
    new $P109, "Undef"
  vivify_188:
    find_lex $P1053, "%meth_info"
    unless_null $P1053, vivify_189
    $P1053 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1053
  vivify_189:
    set $P1053[$P109], $P1052
.annotate 'line', 18
    goto if_1049_end
  if_1049:
.annotate 'line', 16
    find_lex $P109, "$name"
    unless_null $P109, vivify_190
    new $P109, "Undef"
  vivify_190:
    find_lex $P1051, "%meth_info"
    unless_null $P1051, vivify_191
    $P1051 = root_new ['parrot';'Hash']
  vivify_191:
    set $P110, $P1051[$P109]
    unless_null $P110, vivify_192
    new $P110, "Undef"
  vivify_192:
    store_lex "@meth_list", $P110
  if_1049_end:
.annotate 'line', 21
    new $P107, "Float"
    assign $P107, 0
    store_lex "$found", $P107
.annotate 'line', 22
    find_lex $P1054, "@meth_list"
    unless_null $P1054, vivify_193
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    defined $I102, $P1054
    unless $I102, for_undef_194
    iter $P107, $P1054
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1059_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1059_test:
    unless $P107, loop1059_done
    shift $P108, $P107
  loop1059_redo:
    .const 'Sub' $P1056 = "15_1315057448.686" 
    capture_lex $P1056
    $P1056($P108)
  loop1059_next:
    goto loop1059_test
  loop1059_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1059_next
    eq $P111, .CONTROL_LOOP_REDO, loop1059_redo
  loop1059_done:
    pop_eh 
  for_undef_194:
.annotate 'line', 27
    find_lex $P108, "$found"
    unless_null $P108, vivify_197
    new $P108, "Undef"
  vivify_197:
    unless $P108, unless_1060
    set $P107, $P108
    goto unless_1060_end
  unless_1060:
.annotate 'line', 28
    find_lex $P1061, "@meth_list"
    unless_null $P1061, vivify_198
    $P1061 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    find_lex $P109, "$meth"
    unless_null $P109, vivify_199
    new $P109, "Undef"
  vivify_199:
    $P110 = $P1061."push"($P109)
.annotate 'line', 27
    set $P107, $P110
  unless_1060_end:
.annotate 'line', 11
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1055"  :anon :subid("15_1315057448.686") :outer("14_1315057448.686")
    .param pmc param_1057
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 22
    .lex "$_", param_1057
.annotate 'line', 23
    find_lex $P110, "$meth"
    unless_null $P110, vivify_195
    new $P110, "Undef"
  vivify_195:
    find_lex $P111, "$_"
    unless_null $P111, vivify_196
    new $P111, "Undef"
  vivify_196:
    issame $I103, $P110, $P111
    if $I103, if_1058
    new $P109, 'Integer'
    set $P109, $I103
    goto if_1058_end
  if_1058:
.annotate 'line', 24
    new $P112, "Float"
    assign $P112, 1
    store_lex "$found", $P112
.annotate 'line', 23
    set $P109, $P112
  if_1058_end:
.annotate 'line', 22
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1066"  :anon :subid("16_1315057448.686") :outer("12_1315057448.686")
    .param pmc param_1068
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 36
    .lex "$_", param_1068
.annotate 'line', 37
    find_lex $P102, "$_"
    unless_null $P102, vivify_205
    new $P102, "Undef"
  vivify_205:
    find_lex $P103, "$_"
    unless_null $P103, vivify_206
    new $P103, "Undef"
  vivify_206:
    set $S100, $P103
    find_lex $P1069, "%target_meth_info"
    unless_null $P1069, vivify_207
    $P1069 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1069
  vivify_207:
    set $P1069[$S100], $P102
.annotate 'line', 36
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1072"  :anon :subid("17_1315057448.686") :outer("12_1315057448.686")
    .param pmc param_1077
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 42
    new $P102, "Undef"
    set $P1074, $P102
    .lex "$name", $P1074
.annotate 'line', 43
    $P1076 = root_new ['parrot';'ResizablePMCArray']
    set $P1075, $P1076
    .lex "@add_meths", $P1075
    .lex "$_", param_1077
.annotate 'line', 42
    find_lex $P103, "$_"
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    store_lex "$name", $P104
.annotate 'line', 43
    find_lex $P103, "$name"
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    find_lex $P1078, "%meth_info"
    unless_null $P1078, vivify_212
    $P1078 = root_new ['parrot';'Hash']
  vivify_212:
    set $P104, $P1078[$P103]
    unless_null $P104, vivify_213
    new $P104, "Undef"
  vivify_213:
    store_lex "@add_meths", $P104
.annotate 'line', 47
    find_lex $P104, "$name"
    unless_null $P104, vivify_214
    new $P104, "Undef"
  vivify_214:
    find_lex $P1080, "%target_meth_info"
    unless_null $P1080, vivify_215
    $P1080 = root_new ['parrot';'Hash']
  vivify_215:
    set $P105, $P1080[$P104]
    unless_null $P105, vivify_216
    new $P105, "Undef"
  vivify_216:
    defined $I101, $P105
    unless $I101, unless_1079
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1079_end
  unless_1079:
.annotate 'line', 49
    find_lex $P1082, "@add_meths"
    unless_null $P1082, vivify_217
    $P1082 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    set $N100, $P1082
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1081
.annotate 'line', 54
    find_lex $P107, "$target"
    unless_null $P107, vivify_218
    new $P107, "Undef"
  vivify_218:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_219
    new $P109, "Undef"
  vivify_219:
    find_lex $P110, "$name"
    unless_null $P110, vivify_220
    new $P110, "Undef"
  vivify_220:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 52
    set $P106, $P111
.annotate 'line', 49
    goto if_1081_end
  if_1081:
.annotate 'line', 50
    find_lex $P107, "$target"
    unless_null $P107, vivify_221
    new $P107, "Undef"
  vivify_221:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_222
    new $P109, "Undef"
  vivify_222:
    find_lex $P110, "$name"
    unless_null $P110, vivify_223
    new $P110, "Undef"
  vivify_223:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    find_lex $P1083, "@add_meths"
    unless_null $P1083, vivify_224
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
    set $P112, $P1083[$I103]
    unless_null $P112, vivify_225
    new $P112, "Undef"
  vivify_225:
    $P113 = $P108."add_method"($P109, $P110, $P112)
.annotate 'line', 49
    set $P106, $P113
  if_1081_end:
.annotate 'line', 47
    set $P103, $P106
  unless_1079_end:
.annotate 'line', 41
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1087"  :anon :subid("18_1315057448.686") :outer("12_1315057448.686")
    .param pmc param_1092
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .const 'Sub' $P1095 = "19_1315057448.686" 
    capture_lex $P1095
.annotate 'line', 62
    new $P102, "Undef"
    set $P1089, $P102
    .lex "$how", $P1089
.annotate 'line', 65
    $P1091 = root_new ['parrot';'ResizablePMCArray']
    set $P1090, $P1091
    .lex "@attributes", $P1090
    .lex "$_", param_1092
.annotate 'line', 62
    find_lex $P103, "$_"
    unless_null $P103, vivify_229
    new $P103, "Undef"
  vivify_229:
    get_how $P104, $P103
    store_lex "$how", $P104
.annotate 'line', 65
    find_lex $P103, "$how"
    unless_null $P103, vivify_230
    new $P103, "Undef"
  vivify_230:
    find_lex $P104, "$_"
    unless_null $P104, vivify_231
    new $P104, "Undef"
  vivify_231:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 66
    find_lex $P1093, "@attributes"
    unless_null $P1093, vivify_232
    $P1093 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    defined $I101, $P1093
    unless $I101, for_undef_233
    iter $P103, $P1093
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1109_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1109_test:
    unless $P103, loop1109_done
    shift $P104, $P103
  loop1109_redo:
    .const 'Sub' $P1095 = "19_1315057448.686" 
    capture_lex $P1095
    $P1095($P104)
  loop1109_next:
    goto loop1109_test
  loop1109_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1109_next
    eq $P109, .CONTROL_LOOP_REDO, loop1109_redo
  loop1109_done:
    pop_eh 
  for_undef_233:
.annotate 'line', 87
    find_lex $P1110, "@all_roles"
    unless_null $P1110, vivify_248
    $P1110 = root_new ['parrot';'ResizablePMCArray']
  vivify_248:
    find_lex $P103, "$_"
    unless_null $P103, vivify_249
    new $P103, "Undef"
  vivify_249:
    $P104 = $P1110."push"($P103)
.annotate 'line', 61
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1094"  :anon :subid("19_1315057448.686") :outer("18_1315057448.686")
    .param pmc param_1100
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .const 'Sub' $P1103 = "20_1315057448.686" 
    capture_lex $P1103
.annotate 'line', 67
    new $P105, "Undef"
    set $P1096, $P105
    .lex "$add_attr", $P1096
.annotate 'line', 68
    new $P106, "Undef"
    set $P1097, $P106
    .lex "$skip", $P1097
.annotate 'line', 69
    $P1099 = root_new ['parrot';'ResizablePMCArray']
    set $P1098, $P1099
    .lex "@cur_attrs", $P1098
    .lex "$_", param_1100
.annotate 'line', 67
    find_lex $P107, "$_"
    unless_null $P107, vivify_234
    new $P107, "Undef"
  vivify_234:
    store_lex "$add_attr", $P107
.annotate 'line', 68
    new $P107, "Float"
    assign $P107, 0
    store_lex "$skip", $P107
.annotate 'line', 69
    find_lex $P107, "$target"
    unless_null $P107, vivify_235
    new $P107, "Undef"
  vivify_235:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_236
    new $P109, "Undef"
  vivify_236:
    $P110 = $P108."attributes"($P109)
    store_lex "@cur_attrs", $P110
.annotate 'line', 70
    find_lex $P1101, "@cur_attrs"
    unless_null $P1101, vivify_237
    $P1101 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    defined $I102, $P1101
    unless $I102, for_undef_238
    iter $P107, $P1101
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1107_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1107_test:
    unless $P107, loop1107_done
    shift $P108, $P107
  loop1107_redo:
    .const 'Sub' $P1103 = "20_1315057448.686" 
    capture_lex $P1103
    $P1103($P108)
  loop1107_next:
    goto loop1107_test
  loop1107_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1107_next
    eq $P111, .CONTROL_LOOP_REDO, loop1107_redo
  loop1107_done:
    pop_eh 
  for_undef_238:
.annotate 'line', 80
    find_lex $P108, "$skip"
    unless_null $P108, vivify_244
    new $P108, "Undef"
  vivify_244:
    unless $P108, unless_1108
    set $P107, $P108
    goto unless_1108_end
  unless_1108:
.annotate 'line', 81
    find_lex $P109, "$target"
    unless_null $P109, vivify_245
    new $P109, "Undef"
  vivify_245:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_246
    new $P111, "Undef"
  vivify_246:
    find_lex $P112, "$add_attr"
    unless_null $P112, vivify_247
    new $P112, "Undef"
  vivify_247:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 80
    set $P107, $P113
  unless_1108_end:
.annotate 'line', 66
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1102"  :anon :subid("20_1315057448.686") :outer("19_1315057448.686")
    .param pmc param_1104
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 70
    .lex "$_", param_1104
.annotate 'line', 71
    find_lex $P110, "$_"
    unless_null $P110, vivify_239
    new $P110, "Undef"
  vivify_239:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_240
    new $P111, "Undef"
  vivify_240:
    issame $I103, $P110, $P111
    if $I103, if_1105
.annotate 'line', 75
    find_lex $P114, "$_"
    unless_null $P114, vivify_241
    new $P114, "Undef"
  vivify_241:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_242
    new $P115, "Undef"
  vivify_242:
    $S101 = $P115."name"()
    iseq $I104, $S100, $S101
    if $I104, if_1106
    new $P113, 'Integer'
    set $P113, $I104
    goto if_1106_end
  if_1106:
.annotate 'line', 76
    new $P116, "String"
    assign $P116, "Attribute '"
    find_lex $P117, "$_"
    unless_null $P117, vivify_243
    new $P117, "Undef"
  vivify_243:
    $S102 = $P117."name"()
    concat $P118, $P116, $S102
    concat $P119, $P118, "' conflicts in role composition"
    die $P119
  if_1106_end:
.annotate 'line', 74
    set $P109, $P113
.annotate 'line', 71
    goto if_1105_end
  if_1105:
.annotate 'line', 72
    new $P112, "Float"
    assign $P112, 1
    store_lex "$skip", $P112
.annotate 'line', 71
    set $P109, $P112
  if_1105_end:
.annotate 'line', 70
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1114"  :subid("21_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 97
    .const 'Sub' $P1239 = "42_1315057448.686" 
    capture_lex $P1239
    .const 'Sub' $P1235 = "41_1315057448.686" 
    capture_lex $P1235
    .const 'Sub' $P1231 = "40_1315057448.686" 
    capture_lex $P1231
    .const 'Sub' $P1217 = "38_1315057448.686" 
    capture_lex $P1217
    .const 'Sub' $P1214 = "37_1315057448.686" 
    capture_lex $P1214
    .const 'Sub' $P1210 = "36_1315057448.686" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "35_1315057448.686" 
    capture_lex $P1206
    .const 'Sub' $P1192 = "33_1315057448.686" 
    capture_lex $P1192
    .const 'Sub' $P1177 = "31_1315057448.686" 
    capture_lex $P1177
    .const 'Sub' $P1171 = "30_1315057448.686" 
    capture_lex $P1171
    .const 'Sub' $P1165 = "29_1315057448.686" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "28_1315057448.686" 
    capture_lex $P1161
    .const 'Sub' $P1153 = "27_1315057448.686" 
    capture_lex $P1153
    .const 'Sub' $P1140 = "26_1315057448.686" 
    capture_lex $P1140
    .const 'Sub' $P1132 = "25_1315057448.686" 
    capture_lex $P1132
    .const 'Sub' $P1127 = "24_1315057448.686" 
    capture_lex $P1127
    .const 'Sub' $P1123 = "23_1315057448.686" 
    capture_lex $P1123
    .const 'Sub' $P1118 = "22_1315057448.686" 
    capture_lex $P1118
    .lex "$?PACKAGE", $P1116
    .lex "$?CLASS", $P1117
.annotate 'line', 240
    .const 'Sub' $P1239 = "42_1315057448.686" 
    newclosure $P1242, $P1239
.annotate 'line', 97
    .return ($P1242)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1119
    .param pmc param_1120 :named("name")
    .param pmc param_1121 :named("instance_of")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 129
    .lex "self", param_1119
    .lex "$name", param_1120
    .lex "$instance_of", param_1121
.annotate 'line', 130
    new $P100, "Undef"
    set $P1122, $P100
    .lex "$obj", $P1122
    find_lex $P101, "self"
    repr_instance_of $P102, $P101
    store_lex "$obj", $P102
.annotate 'line', 131
    find_lex $P101, "$obj"
    unless_null $P101, vivify_251
    new $P101, "Undef"
  vivify_251:
    find_lex $P102, "$name"
    unless_null $P102, vivify_252
    new $P102, "Undef"
  vivify_252:
    find_lex $P103, "$instance_of"
    unless_null $P103, vivify_253
    new $P103, "Undef"
  vivify_253:
    $P101."BUILD"($P102 :named("name"), $P103 :named("instance_of"))
.annotate 'line', 129
    find_lex $P101, "$obj"
    unless_null $P101, vivify_254
    new $P101, "Undef"
  vivify_254:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1124
    .param pmc param_1125 :named("name")
    .param pmc param_1126 :named("instance_of")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 135
    .lex "self", param_1124
    .lex "$name", param_1125
    .lex "$instance_of", param_1126
.annotate 'line', 136
    find_lex $P100, "$name"
    unless_null $P100, vivify_255
    new $P100, "Undef"
  vivify_255:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!name", $P100
.annotate 'line', 137
    find_lex $P100, "$instance_of"
    unless_null $P100, vivify_256
    new $P100, "Undef"
  vivify_256:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!instance_of", $P100
.annotate 'line', 135
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1128
    .param pmc param_1130 :named("instance_of")
    .param pmc param_1129 :optional :named("name")
    .param int has_param_1129 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 142
    .lex "self", param_1128
    if has_param_1129, optparam_257
    new $P100, "String"
    assign $P100, "<anon>"
    set param_1129, $P100
  optparam_257:
    .lex "$name", param_1129
    .lex "$instance_of", param_1130
.annotate 'line', 143
    new $P101, "Undef"
    set $P1131, $P101
    .lex "$metarole", $P1131
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_258
    new $P103, "Undef"
  vivify_258:
    find_lex $P104, "$instance_of"
    unless_null $P104, vivify_259
    new $P104, "Undef"
  vivify_259:
    $P105 = $P102."new"($P103 :named("name"), $P104 :named("instance_of"))
    store_lex "$metarole", $P105
.annotate 'line', 144
    find_lex $P102, "$metarole"
    unless_null $P102, vivify_260
    new $P102, "Undef"
  vivify_260:
    new $P103, "String"
    assign $P103, "Uninstantiable"
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
.annotate 'line', 142
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1133
    .param pmc param_1134
    .param pmc param_1135
    .param pmc param_1136
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 147
    .lex "self", param_1133
    .lex "$obj", param_1134
    .lex "$name", param_1135
    .lex "$code_obj", param_1136
.annotate 'line', 148
    find_lex $P100, "$name"
    unless_null $P100, vivify_261
    new $P100, "Undef"
  vivify_261:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1138, $P102, $P103, "%!methods"
    unless_null $P1138, vivify_262
    $P1138 = root_new ['parrot';'Hash']
  vivify_262:
    set $P104, $P1138[$P100]
    unless_null $P104, vivify_263
    new $P104, "Undef"
  vivify_263:
    unless $P104, if_1137_end
.annotate 'line', 149
    new $P105, "String"
    assign $P105, "This role already has a method named "
    find_lex $P106, "$name"
    unless_null $P106, vivify_264
    new $P106, "Undef"
  vivify_264:
    concat $P107, $P105, $P106
    die $P107
  if_1137_end:
.annotate 'line', 151
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_265
    new $P100, "Undef"
  vivify_265:
    find_lex $P101, "$name"
    unless_null $P101, vivify_266
    new $P101, "Undef"
  vivify_266:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1139, $P103, $P104, "%!methods"
    unless_null $P1139, vivify_267
    $P1139 = root_new ['parrot';'Hash']
    setattribute $P103, $P104, "%!methods", $P1139
  vivify_267:
    set $P1139[$P101], $P100
.annotate 'line', 147
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1141
    .param pmc param_1142
    .param pmc param_1143
    .param pmc param_1144
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 154
    .lex "self", param_1141
    .lex "$obj", param_1142
    .lex "$name", param_1143
    .lex "$code_obj", param_1144
.annotate 'line', 155
    $P1146 = root_new ['parrot';'Hash']
    set $P1145, $P1146
    .lex "%todo", $P1145
.annotate 'line', 154
    find_lex $P1147, "%todo"
    unless_null $P1147, vivify_268
    $P1147 = root_new ['parrot';'Hash']
  vivify_268:
.annotate 'line', 156
    find_lex $P100, "$name"
    unless_null $P100, vivify_269
    new $P100, "Undef"
  vivify_269:
    find_lex $P1148, "%todo"
    unless_null $P1148, vivify_270
    $P1148 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1148
  vivify_270:
    set $P1148["name"], $P100
.annotate 'line', 157
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_271
    new $P100, "Undef"
  vivify_271:
    find_lex $P1149, "%todo"
    unless_null $P1149, vivify_272
    $P1149 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1149
  vivify_272:
    set $P1149["code"], $P100
.annotate 'line', 158
    find_lex $P1150, "%todo"
    unless_null $P1150, vivify_273
    $P1150 = root_new ['parrot';'Hash']
  vivify_273:
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1151, $P101, $P102, "@!multi_methods_to_incorporate"
    unless_null $P1151, vivify_274
    $P1151 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    set $N100, $P1151
    set $I100, $N100
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1152, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1152, vivify_275
    $P1152 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P104, $P105, "@!multi_methods_to_incorporate", $P1152
  vivify_275:
    set $P1152[$I100], $P1150
.annotate 'line', 154
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_276
    new $P100, "Undef"
  vivify_276:
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1154
    .param pmc param_1155
    .param pmc param_1156
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 162
    .lex "self", param_1154
    .lex "$obj", param_1155
    .lex "$meta_attr", param_1156
.annotate 'line', 163
    new $P100, "Undef"
    set $P1157, $P100
    .lex "$name", $P1157
    find_lex $P101, "$meta_attr"
    unless_null $P101, vivify_277
    new $P101, "Undef"
  vivify_277:
    $P102 = $P101."name"()
    store_lex "$name", $P102
.annotate 'line', 164
    find_lex $P101, "$name"
    unless_null $P101, vivify_278
    new $P101, "Undef"
  vivify_278:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1159, $P103, $P104, "%!attributes"
    unless_null $P1159, vivify_279
    $P1159 = root_new ['parrot';'Hash']
  vivify_279:
    set $P105, $P1159[$P101]
    unless_null $P105, vivify_280
    new $P105, "Undef"
  vivify_280:
    unless $P105, if_1158_end
.annotate 'line', 165
    new $P106, "String"
    assign $P106, "This role already has an attribute named "
    find_lex $P107, "$name"
    unless_null $P107, vivify_281
    new $P107, "Undef"
  vivify_281:
    concat $P108, $P106, $P107
    die $P108
  if_1158_end:
.annotate 'line', 167
    find_lex $P101, "$meta_attr"
    unless_null $P101, vivify_282
    new $P101, "Undef"
  vivify_282:
    find_lex $P102, "$name"
    unless_null $P102, vivify_283
    new $P102, "Undef"
  vivify_283:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1160, $P104, $P105, "%!attributes"
    unless_null $P1160, vivify_284
    $P1160 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!attributes", $P1160
  vivify_284:
    set $P1160[$P102], $P101
.annotate 'line', 162
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1162
    .param pmc param_1163
    .param pmc param_1164
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 170
    .lex "self", param_1162
    .lex "$obj", param_1163
    .lex "$parent", param_1164
.annotate 'line', 171
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("29_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1166
    .param pmc param_1167
    .param pmc param_1168
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 174
    .lex "self", param_1166
    .lex "$obj", param_1167
    .lex "$role", param_1168
.annotate 'line', 175
    find_lex $P100, "$role"
    unless_null $P100, vivify_285
    new $P100, "Undef"
  vivify_285:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1169, $P102, $P103, "@!roles"
    unless_null $P1169, vivify_286
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $N100, $P1169
    set $I100, $N100
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1170, $P105, $P106, "@!roles"
    unless_null $P1170, vivify_287
    $P1170 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "@!roles", $P1170
  vivify_287:
    set $P1170[$I100], $P100
.annotate 'line', 174
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1172
    .param pmc param_1173
    .param pmc param_1174
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 178
    .lex "self", param_1172
    .lex "$obj", param_1173
    .lex "$colliding_name", param_1174
.annotate 'line', 179
    find_lex $P100, "$colliding_name"
    unless_null $P100, vivify_288
    new $P100, "Undef"
  vivify_288:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1175, $P102, $P103, "@!collisions"
    unless_null $P1175, vivify_289
    $P1175 = root_new ['parrot';'ResizablePMCArray']
  vivify_289:
    set $N100, $P1175
    set $I100, $N100
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1176, $P105, $P106, "@!collisions"
    unless_null $P1176, vivify_290
    $P1176 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "@!collisions", $P1176
  vivify_290:
    set $P1176[$I100], $P100
.annotate 'line', 178
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1178
    .param pmc param_1179
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 183
    .const 'Sub' $P1184 = "32_1315057448.686" 
    capture_lex $P1184
    .lex "self", param_1178
    .lex "$obj", param_1179
.annotate 'line', 186
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1181, $P101, $P102, "@!roles"
    unless_null $P1181, vivify_291
    $P1181 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    unless $P1181, if_1180_end
.annotate 'line', 187
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1182, $P105, $P106, "@!roles"
    unless_null $P1182, vivify_292
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    defined $I100, $P1182
    unless $I100, for_undef_293
    iter $P103, $P1182
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1190_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1190_test:
    unless $P103, loop1190_done
    shift $P107, $P103
  loop1190_redo:
    .const 'Sub' $P1184 = "32_1315057448.686" 
    capture_lex $P1184
    $P1184($P107)
  loop1190_next:
    goto loop1190_test
  loop1190_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1190_next
    eq $P109, .CONTROL_LOOP_REDO, loop1190_redo
  loop1190_done:
    pop_eh 
  for_undef_293:
.annotate 'line', 191
    find_lex $P103, "RoleToRoleApplier"
    find_lex $P104, "$obj"
    unless_null $P104, vivify_301
    new $P104, "Undef"
  vivify_301:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1191, $P106, $P107, "@!roles"
    unless_null $P1191, vivify_302
    $P1191 = root_new ['parrot';'ResizablePMCArray']
  vivify_302:
    $P103."apply"($P104, $P1191)
  if_1180_end:
.annotate 'line', 195
    new $P100, "Float"
    assign $P100, 1
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!composed", $P100
.annotate 'line', 183
    find_lex $P100, "$obj"
    unless_null $P100, vivify_303
    new $P100, "Undef"
  vivify_303:
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1183"  :anon :subid("32_1315057448.686") :outer("31_1315057448.686")
    .param pmc param_1185
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 187
    .lex "$_", param_1185
.annotate 'line', 188
    find_lex $P108, "$_"
    unless_null $P108, vivify_294
    new $P108, "Undef"
  vivify_294:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1186, $P110, $P111, "@!done"
    unless_null $P1186, vivify_295
    $P1186 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N100, $P1186
    set $I101, $N100
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P1187, $P113, $P114, "@!done"
    unless_null $P1187, vivify_296
    $P1187 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P113, $P114, "@!done", $P1187
  vivify_296:
    set $P1187[$I101], $P108
.annotate 'line', 189
    find_lex $P108, "$_"
    unless_null $P108, vivify_297
    new $P108, "Undef"
  vivify_297:
    get_how $P109, $P108
    find_lex $P110, "$_"
    unless_null $P110, vivify_298
    new $P110, "Undef"
  vivify_298:
    $P111 = $P109."instance_of"($P110)
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P1188, $P113, $P114, "@!done"
    unless_null $P1188, vivify_299
    $P1188 = root_new ['parrot';'ResizablePMCArray']
  vivify_299:
    set $N100, $P1188
    set $I101, $N100
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    getattribute $P1189, $P116, $P117, "@!done"
    unless_null $P1189, vivify_300
    $P1189 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P116, $P117, "@!done", $P1189
  vivify_300:
    set $P1189[$I101], $P111
.annotate 'line', 187
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("33_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1193
    .param pmc param_1194
    .param pmc param_1195 :optional :named("local")
    .param int has_param_1195 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 204
    .const 'Sub' $P1201 = "34_1315057448.686" 
    capture_lex $P1201
    .lex "self", param_1193
    .lex "$obj", param_1194
    if has_param_1195, optparam_304
    new $P100, "Undef"
    set param_1195, $P100
  optparam_304:
    .lex "$local", param_1195
.annotate 'line', 205
    $P1197 = root_new ['parrot';'ResizablePMCArray']
    set $P1196, $P1197
    .lex "@meths", $P1196
.annotate 'line', 204
    find_lex $P1198, "@meths"
    unless_null $P1198, vivify_305
    $P1198 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
.annotate 'line', 206
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1199, $P103, $P104, "%!methods"
    unless_null $P1199, vivify_306
    $P1199 = root_new ['parrot';'Hash']
  vivify_306:
    defined $I100, $P1199
    unless $I100, for_undef_307
    iter $P101, $P1199
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1204_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1204_test:
    unless $P101, loop1204_done
    shift $P105, $P101
  loop1204_redo:
    .const 'Sub' $P1201 = "34_1315057448.686" 
    capture_lex $P1201
    $P1201($P105)
  loop1204_next:
    goto loop1204_test
  loop1204_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1204_next
    eq $P107, .CONTROL_LOOP_REDO, loop1204_redo
  loop1204_done:
    pop_eh 
  for_undef_307:
.annotate 'line', 204
    find_lex $P1205, "@meths"
    unless_null $P1205, vivify_310
    $P1205 = root_new ['parrot';'ResizablePMCArray']
  vivify_310:
    .return ($P1205)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1200"  :anon :subid("34_1315057448.686") :outer("33_1315057448.686")
    .param pmc param_1202
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .lex "$_", param_1202
.annotate 'line', 207
    find_lex $P1203, "@meths"
    unless_null $P1203, vivify_308
    $P1203 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    find_lex $P106, "$_"
    unless_null $P106, vivify_309
    new $P106, "Undef"
  vivify_309:
    $P107 = $P106."value"()
    $P108 = $P1203."push"($P107)
.annotate 'line', 206
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("35_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1207
    .param pmc param_1208
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 212
    .lex "self", param_1207
    .lex "$obj", param_1208
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1209, $P101, $P102, "%!methods"
    unless_null $P1209, vivify_311
    $P1209 = root_new ['parrot';'Hash']
  vivify_311:
    .return ($P1209)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("36_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 216
    .lex "self", param_1211
    .lex "$obj", param_1212
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1213, $P101, $P102, "@!collisions"
    unless_null $P1213, vivify_312
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_312:
    .return ($P1213)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("37_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1215
    .param pmc param_1216
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 220
    .lex "self", param_1215
    .lex "$obj", param_1216
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_313
    new $P103, "Undef"
  vivify_313:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("38_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1218
    .param pmc param_1219
    .param pmc param_1220 :optional :named("local")
    .param int has_param_1220 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 224
    .const 'Sub' $P1226 = "39_1315057448.686" 
    capture_lex $P1226
    .lex "self", param_1218
    .lex "$obj", param_1219
    if has_param_1220, optparam_314
    new $P100, "Undef"
    set param_1220, $P100
  optparam_314:
    .lex "$local", param_1220
.annotate 'line', 225
    $P1222 = root_new ['parrot';'ResizablePMCArray']
    set $P1221, $P1222
    .lex "@attrs", $P1221
.annotate 'line', 224
    find_lex $P1223, "@attrs"
    unless_null $P1223, vivify_315
    $P1223 = root_new ['parrot';'ResizablePMCArray']
  vivify_315:
.annotate 'line', 226
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1224, $P103, $P104, "%!attributes"
    unless_null $P1224, vivify_316
    $P1224 = root_new ['parrot';'Hash']
  vivify_316:
    defined $I100, $P1224
    unless $I100, for_undef_317
    iter $P101, $P1224
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1229_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1229_test:
    unless $P101, loop1229_done
    shift $P105, $P101
  loop1229_redo:
    .const 'Sub' $P1226 = "39_1315057448.686" 
    capture_lex $P1226
    $P1226($P105)
  loop1229_next:
    goto loop1229_test
  loop1229_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1229_next
    eq $P107, .CONTROL_LOOP_REDO, loop1229_redo
  loop1229_done:
    pop_eh 
  for_undef_317:
.annotate 'line', 224
    find_lex $P1230, "@attrs"
    unless_null $P1230, vivify_320
    $P1230 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    .return ($P1230)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1225"  :anon :subid("39_1315057448.686") :outer("38_1315057448.686")
    .param pmc param_1227
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 226
    .lex "$_", param_1227
.annotate 'line', 227
    find_lex $P1228, "@attrs"
    unless_null $P1228, vivify_318
    $P1228 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    find_lex $P106, "$_"
    unless_null $P106, vivify_319
    new $P106, "Undef"
  vivify_319:
    $P107 = $P106."value"()
    $P108 = $P1228."push"($P107)
.annotate 'line', 226
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("40_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1232
    .param pmc param_1233
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 232
    .lex "self", param_1232
    .lex "$obj", param_1233
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1234, $P101, $P102, "@!roles"
    unless_null $P1234, vivify_321
    $P1234 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "does_list" :anon :subid("41_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 236
    .lex "self", param_1236
    .lex "$obj", param_1237
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P1238, $P101, $P102, "@!done"
    unless_null $P1238, vivify_322
    $P1238 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("42_1315057448.686") :outer("21_1315057448.686")
    .param pmc param_1240
    .param pmc param_1241
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 240
    .lex "self", param_1240
    .lex "$obj", param_1241
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!instance_of"
    unless_null $P103, vivify_323
    new $P103, "Undef"
  vivify_323:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1243"  :subid("43_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 246
    .const 'Sub' $P1278 = "48_1315057448.686" 
    capture_lex $P1278
    .const 'Sub' $P1262 = "46_1315057448.686" 
    capture_lex $P1262
    .const 'Sub' $P1246 = "44_1315057448.686" 
    capture_lex $P1246
.annotate 'line', 248
    .const 'Sub' $P1246 = "44_1315057448.686" 
    newclosure $P1260, $P1246
    set $P1245, $P1260
    .lex "has_method", $P1245
.annotate 'line', 256
    .const 'Sub' $P1262 = "46_1315057448.686" 
    newclosure $P1275, $P1262
    set $P1261, $P1275
    .lex "has_attribute", $P1261
.annotate 'line', 246
    .lex "$?PACKAGE", $P1276
    .lex "$?CLASS", $P1277
    find_lex $P102, "has_method"
    find_lex $P102, "has_attribute"
.annotate 'line', 264
    .const 'Sub' $P1278 = "48_1315057448.686" 
    newclosure $P1320, $P1278
.annotate 'line', 246
    .return ($P1320)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("44_1315057448.686") :outer("43_1315057448.686")
    .param pmc param_1249
    .param pmc param_1250
    .param pmc param_1251
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 248
    .const 'Sub' $P1256 = "45_1315057448.686" 
    capture_lex $P1256
    new $P1248, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1248, control_1247
    push_eh $P1248
    .lex "$target", param_1249
    .lex "$name", param_1250
    .lex "$local", param_1251
.annotate 'line', 249
    $P1253 = root_new ['parrot';'ResizablePMCArray']
    set $P1252, $P1253
    .lex "@methods", $P1252
    find_lex $P100, "$target"
    unless_null $P100, vivify_324
    new $P100, "Undef"
  vivify_324:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_325
    new $P102, "Undef"
  vivify_325:
    find_lex $P103, "$local"
    unless_null $P103, vivify_326
    new $P103, "Undef"
  vivify_326:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 250
    find_lex $P1254, "@methods"
    unless_null $P1254, vivify_327
    $P1254 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    defined $I100, $P1254
    unless $I100, for_undef_328
    iter $P100, $P1254
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1259_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1259_test:
    unless $P100, loop1259_done
    shift $P101, $P100
  loop1259_redo:
    .const 'Sub' $P1256 = "45_1315057448.686" 
    capture_lex $P1256
    $P1256($P101)
  loop1259_next:
    goto loop1259_test
  loop1259_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1259_next
    eq $P104, .CONTROL_LOOP_REDO, loop1259_redo
  loop1259_done:
    pop_eh 
  for_undef_328:
.annotate 'line', 253
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 248
    .return ()
  control_1247:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1255"  :anon :subid("45_1315057448.686") :outer("44_1315057448.686")
    .param pmc param_1257
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 250
    .lex "$_", param_1257
.annotate 'line', 251
    find_lex $P103, "$_"
    unless_null $P103, vivify_329
    new $P103, "Undef"
  vivify_329:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_330
    new $P104, "Undef"
  vivify_330:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_1258
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1258_end
  if_1258:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1258_end:
.annotate 'line', 250
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("46_1315057448.686") :outer("43_1315057448.686")
    .param pmc param_1265
    .param pmc param_1266
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 256
    .const 'Sub' $P1271 = "47_1315057448.686" 
    capture_lex $P1271
    new $P1264, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1264, control_1263
    push_eh $P1264
    .lex "$target", param_1265
    .lex "$name", param_1266
.annotate 'line', 257
    $P1268 = root_new ['parrot';'ResizablePMCArray']
    set $P1267, $P1268
    .lex "@attributes", $P1267
    find_lex $P101, "$target"
    unless_null $P101, vivify_331
    new $P101, "Undef"
  vivify_331:
    get_how $P102, $P101
    find_lex $P103, "$target"
    unless_null $P103, vivify_332
    new $P103, "Undef"
  vivify_332:
    $P104 = $P102."attributes"($P103, 1 :named("local"))
    store_lex "@attributes", $P104
.annotate 'line', 258
    find_lex $P1269, "@attributes"
    unless_null $P1269, vivify_333
    $P1269 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    defined $I100, $P1269
    unless $I100, for_undef_334
    iter $P101, $P1269
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1274_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1274_test:
    unless $P101, loop1274_done
    shift $P102, $P101
  loop1274_redo:
    .const 'Sub' $P1271 = "47_1315057448.686" 
    capture_lex $P1271
    $P1271($P102)
  loop1274_next:
    goto loop1274_test
  loop1274_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1274_next
    eq $P105, .CONTROL_LOOP_REDO, loop1274_redo
  loop1274_done:
    pop_eh 
  for_undef_334:
.annotate 'line', 261
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    new $P102, "Float"
    assign $P102, 0
    setattribute $P101, 'payload', $P102
    throw $P101
.annotate 'line', 256
    .return ()
  control_1263:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1270"  :anon :subid("47_1315057448.686") :outer("46_1315057448.686")
    .param pmc param_1272
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1272
.annotate 'line', 259
    find_lex $P104, "$_"
    unless_null $P104, vivify_335
    new $P104, "Undef"
  vivify_335:
    $S100 = $P104."name"()
    find_lex $P105, "$name"
    unless_null $P105, vivify_336
    new $P105, "Undef"
  vivify_336:
    set $S101, $P105
    iseq $I101, $S100, $S101
    if $I101, if_1273
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1273_end
  if_1273:
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
  if_1273_end:
.annotate 'line', 258
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("48_1315057448.686") :outer("43_1315057448.686")
    .param pmc param_1279
    .param pmc param_1280
    .param pmc param_1281
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 264
    .const 'Sub' $P1314 = "52_1315057448.686" 
    capture_lex $P1314
    .const 'Sub' $P1308 = "51_1315057448.686" 
    capture_lex $P1308
    .const 'Sub' $P1302 = "50_1315057448.686" 
    capture_lex $P1302
    .const 'Sub' $P1297 = "49_1315057448.686" 
    capture_lex $P1297
    .lex "self", param_1279
    .lex "$target", param_1280
    .lex "@roles", param_1281
.annotate 'line', 267
    new $P102, "Undef"
    set $P1282, $P102
    .lex "$to_compose", $P1282
.annotate 'line', 268
    new $P103, "Undef"
    set $P1283, $P103
    .lex "$to_compose_meta", $P1283
.annotate 'line', 283
    $P1285 = root_new ['parrot';'ResizablePMCArray']
    set $P1284, $P1285
    .lex "@collisions", $P1284
.annotate 'line', 292
    $P1287 = root_new ['parrot';'ResizablePMCArray']
    set $P1286, $P1287
    .lex "@methods", $P1286
.annotate 'line', 300
    $P1289 = root_new ['parrot';'ResizablePMCArray']
    set $P1288, $P1289
    .lex "@attributes", $P1288
.annotate 'line', 312
    $P1291 = root_new ['parrot';'ResizablePMCArray']
    set $P1290, $P1291
    .lex "@done", $P1290
.annotate 'line', 264
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_337
    new $P104, "Undef"
  vivify_337:
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_338
    new $P104, "Undef"
  vivify_338:
.annotate 'line', 269
    find_lex $P1293, "@roles"
    unless_null $P1293, vivify_339
    $P1293 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N100, $P1293
    set $N101, 1
    iseq $I100, $N100, $N101
    if $I100, if_1292
.annotate 'line', 274
    find_lex $P104, "NQPConcreteRoleHOW"
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P109, $P106["NQPMu"]
    unless_null $P109, vivify_340
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["NQPMu"]
  vivify_340:
    $P110 = $P104."new_type"($P109 :named("instance_of"))
    store_lex "$to_compose", $P110
.annotate 'line', 275
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_341
    new $P104, "Undef"
  vivify_341:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
.annotate 'line', 276
    find_lex $P1295, "@roles"
    unless_null $P1295, vivify_342
    $P1295 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    defined $I101, $P1295
    unless $I101, for_undef_343
    iter $P104, $P1295
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1299_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1299_test:
    unless $P104, loop1299_done
    shift $P105, $P104
  loop1299_redo:
    .const 'Sub' $P1297 = "49_1315057448.686" 
    capture_lex $P1297
    $P1297($P105)
  loop1299_next:
    goto loop1299_test
  loop1299_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1299_next
    eq $P107, .CONTROL_LOOP_REDO, loop1299_redo
  loop1299_done:
    pop_eh 
  for_undef_343:
.annotate 'line', 279
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_347
    new $P104, "Undef"
  vivify_347:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_348
    new $P105, "Undef"
  vivify_348:
    $P106 = $P104."compose"($P105)
    store_lex "$to_compose", $P106
.annotate 'line', 273
    goto if_1292_end
  if_1292:
.annotate 'line', 270
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    find_lex $P1294, "@roles"
    unless_null $P1294, vivify_349
    $P1294 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P105, $P1294[$I101]
    unless_null $P105, vivify_350
    new $P105, "Undef"
  vivify_350:
    store_lex "$to_compose", $P105
.annotate 'line', 271
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_351
    new $P104, "Undef"
  vivify_351:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
  if_1292_end:
.annotate 'line', 283
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_352
    new $P104, "Undef"
  vivify_352:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_353
    new $P105, "Undef"
  vivify_353:
    $P106 = $P104."collisions"($P105)
    store_lex "@collisions", $P106
.annotate 'line', 284
    find_lex $P1300, "@collisions"
    unless_null $P1300, vivify_354
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    defined $I100, $P1300
    unless $I100, for_undef_355
    iter $P104, $P1300
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1305_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1305_test:
    unless $P104, loop1305_done
    shift $P105, $P104
  loop1305_redo:
    .const 'Sub' $P1302 = "50_1315057448.686" 
    capture_lex $P1302
    $P1302($P105)
  loop1305_next:
    goto loop1305_test
  loop1305_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1305_next
    eq $P108, .CONTROL_LOOP_REDO, loop1305_redo
  loop1305_done:
    pop_eh 
  for_undef_355:
.annotate 'line', 292
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_361
    new $P104, "Undef"
  vivify_361:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_362
    new $P105, "Undef"
  vivify_362:
    $P106 = $P104."methods"($P105)
    store_lex "@methods", $P106
.annotate 'line', 293
    find_lex $P1306, "@methods"
    unless_null $P1306, vivify_363
    $P1306 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    defined $I100, $P1306
    unless $I100, for_undef_364
    iter $P104, $P1306
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1311_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1311_test:
    unless $P104, loop1311_done
    shift $P105, $P104
  loop1311_redo:
    .const 'Sub' $P1308 = "51_1315057448.686" 
    capture_lex $P1308
    $P1308($P105)
  loop1311_next:
    goto loop1311_test
  loop1311_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1311_next
    eq $P108, .CONTROL_LOOP_REDO, loop1311_redo
  loop1311_done:
    pop_eh 
  for_undef_364:
.annotate 'line', 300
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_371
    new $P104, "Undef"
  vivify_371:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_372
    new $P105, "Undef"
  vivify_372:
    $P106 = $P104."attributes"($P105)
    store_lex "@attributes", $P106
.annotate 'line', 301
    find_lex $P1312, "@attributes"
    unless_null $P1312, vivify_373
    $P1312 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    defined $I100, $P1312
    unless $I100, for_undef_374
    iter $P104, $P1312
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1317_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1317_test:
    unless $P104, loop1317_done
    shift $P105, $P104
  loop1317_redo:
    .const 'Sub' $P1314 = "52_1315057448.686" 
    capture_lex $P1314
    $P1314($P105)
  loop1317_next:
    goto loop1317_test
  loop1317_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1317_next
    eq $P107, .CONTROL_LOOP_REDO, loop1317_redo
  loop1317_done:
    pop_eh 
  for_undef_374:
.annotate 'line', 264
    find_lex $P1318, "@done"
    unless_null $P1318, vivify_383
    $P1318 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
.annotate 'line', 313
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_384
    new $P104, "Undef"
  vivify_384:
    new $P105, "Float"
    assign $P105, 0
    set $I100, $P105
    find_lex $P1319, "@done"
    unless_null $P1319, vivify_385
    $P1319 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P1319
  vivify_385:
    set $P1319[$I100], $P104
.annotate 'line', 264
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1296"  :anon :subid("49_1315057448.686") :outer("48_1315057448.686")
    .param pmc param_1298
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 276
    .lex "$_", param_1298
.annotate 'line', 277
    find_lex $P106, "$to_compose_meta"
    unless_null $P106, vivify_344
    new $P106, "Undef"
  vivify_344:
    find_lex $P107, "$to_compose"
    unless_null $P107, vivify_345
    new $P107, "Undef"
  vivify_345:
    find_lex $P108, "$_"
    unless_null $P108, vivify_346
    new $P108, "Undef"
  vivify_346:
    $P109 = $P106."add_role"($P107, $P108)
.annotate 'line', 276
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1301"  :anon :subid("50_1315057448.686") :outer("48_1315057448.686")
    .param pmc param_1303
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 284
    .lex "$_", param_1303
.annotate 'line', 285
    find_lex $P107, "$target"
    unless_null $P107, vivify_356
    new $P107, "Undef"
  vivify_356:
    find_lex $P108, "$_"
    unless_null $P108, vivify_357
    new $P108, "Undef"
  vivify_357:
    set $S100, $P108
    $P109 = "has_method"($P107, $S100, 1)
    unless $P109, unless_1304
    set $P106, $P109
    goto unless_1304_end
  unless_1304:
.annotate 'line', 286
    new $P110, 'String'
    set $P110, "Method '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_358
    new $P111, "Undef"
  vivify_358:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' collides and a resolution must be provided by the class '"
.annotate 'line', 287
    find_lex $P114, "$target"
    unless_null $P114, vivify_359
    new $P114, "Undef"
  vivify_359:
    get_how $P115, $P114
    find_lex $P116, "$target"
    unless_null $P116, vivify_360
    new $P116, "Undef"
  vivify_360:
    $S101 = $P115."name"($P116)
    concat $P117, $P113, $S101
.annotate 'line', 286
    concat $P118, $P117, "'"
.annotate 'line', 287
    die $P118
  unless_1304_end:
.annotate 'line', 284
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1307"  :anon :subid("51_1315057448.686") :outer("48_1315057448.686")
    .param pmc param_1309
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 293
    .lex "$_", param_1309
.annotate 'line', 294
    find_lex $P107, "$target"
    unless_null $P107, vivify_365
    new $P107, "Undef"
  vivify_365:
    find_lex $P108, "$_"
    unless_null $P108, vivify_366
    new $P108, "Undef"
  vivify_366:
    set $S100, $P108
    $P109 = "has_method"($P107, $S100, 0)
    unless $P109, unless_1310
    set $P106, $P109
    goto unless_1310_end
  unless_1310:
.annotate 'line', 295
    find_lex $P110, "$target"
    unless_null $P110, vivify_367
    new $P110, "Undef"
  vivify_367:
    get_how $P111, $P110
    find_lex $P112, "$target"
    unless_null $P112, vivify_368
    new $P112, "Undef"
  vivify_368:
    find_lex $P113, "$_"
    unless_null $P113, vivify_369
    new $P113, "Undef"
  vivify_369:
    set $S101, $P113
    find_lex $P114, "$_"
    unless_null $P114, vivify_370
    new $P114, "Undef"
  vivify_370:
    $P115 = $P111."add_method"($P112, $S101, $P114)
.annotate 'line', 294
    set $P106, $P115
  unless_1310_end:
.annotate 'line', 293
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1313"  :anon :subid("52_1315057448.686") :outer("48_1315057448.686")
    .param pmc param_1315
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 301
    .lex "$_", param_1315
.annotate 'line', 302
    find_lex $P106, "$target"
    unless_null $P106, vivify_375
    new $P106, "Undef"
  vivify_375:
    find_lex $P107, "$_"
    unless_null $P107, vivify_376
    new $P107, "Undef"
  vivify_376:
    $P108 = $P107."name"()
    $P109 = "has_attribute"($P106, $P108)
    unless $P109, if_1316_end
.annotate 'line', 303
    new $P110, "String"
    assign $P110, "Attribute '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_377
    new $P111, "Undef"
  vivify_377:
    $S100 = $P111."name"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "' already exists in the class '"
.annotate 'line', 304
    find_lex $P114, "$target"
    unless_null $P114, vivify_378
    new $P114, "Undef"
  vivify_378:
    get_how $P115, $P114
    find_lex $P116, "$target"
    unless_null $P116, vivify_379
    new $P116, "Undef"
  vivify_379:
    $S101 = $P115."name"($P116)
    concat $P117, $P113, $S101
.annotate 'line', 303
    concat $P118, $P117, "', but a role also wishes to compose it"
.annotate 'line', 304
    die $P118
  if_1316_end:
.annotate 'line', 306
    find_lex $P106, "$target"
    unless_null $P106, vivify_380
    new $P106, "Undef"
  vivify_380:
    get_how $P107, $P106
    find_lex $P108, "$target"
    unless_null $P108, vivify_381
    new $P108, "Undef"
  vivify_381:
    find_lex $P109, "$_"
    unless_null $P109, vivify_382
    new $P109, "Undef"
  vivify_382:
    $P110 = $P107."add_attribute"($P108, $P109)
.annotate 'line', 301
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1321"  :subid("53_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 322
    .const 'Sub' $P1457 = "77_1315057448.686" 
    capture_lex $P1457
    .const 'Sub' $P1443 = "75_1315057448.686" 
    capture_lex $P1443
    .const 'Sub' $P1440 = "74_1315057448.686" 
    capture_lex $P1440
    .const 'Sub' $P1436 = "73_1315057448.686" 
    capture_lex $P1436
    .const 'Sub' $P1422 = "71_1315057448.686" 
    capture_lex $P1422
    .const 'Sub' $P1392 = "66_1315057448.686" 
    capture_lex $P1392
    .const 'Sub' $P1389 = "65_1315057448.686" 
    capture_lex $P1389
    .const 'Sub' $P1386 = "64_1315057448.686" 
    capture_lex $P1386
    .const 'Sub' $P1380 = "63_1315057448.686" 
    capture_lex $P1380
    .const 'Sub' $P1376 = "62_1315057448.686" 
    capture_lex $P1376
    .const 'Sub' $P1368 = "61_1315057448.686" 
    capture_lex $P1368
    .const 'Sub' $P1355 = "60_1315057448.686" 
    capture_lex $P1355
    .const 'Sub' $P1347 = "59_1315057448.686" 
    capture_lex $P1347
    .const 'Sub' $P1343 = "58_1315057448.686" 
    capture_lex $P1343
    .const 'Sub' $P1338 = "57_1315057448.686" 
    capture_lex $P1338
    .const 'Sub' $P1335 = "56_1315057448.686" 
    capture_lex $P1335
    .const 'Sub' $P1331 = "55_1315057448.686" 
    capture_lex $P1331
    .const 'Sub' $P1324 = "54_1315057448.686" 
    capture_lex $P1324
.annotate 'line', 459
    .const 'Sub' $P1324 = "54_1315057448.686" 
    newclosure $P1328, $P1324
    set $P1323, $P1328
    .lex "reify_method", $P1323
.annotate 'line', 322
    .lex "$?PACKAGE", $P1329
    .lex "$?CLASS", $P1330
    find_lex $P102, "reify_method"
.annotate 'line', 492
    .const 'Sub' $P1457 = "77_1315057448.686" 
    newclosure $P1461, $P1457
.annotate 'line', 322
    .return ($P1461)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("54_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1325
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 459
    .lex "$meth", param_1325
.annotate 'line', 460
    new $P100, "Undef"
    set $P1326, $P100
    .lex "$callback", $P1326
    find_lex $P101, "$meth"
    unless_null $P101, vivify_386
    new $P101, "Undef"
  vivify_386:
    getprop $P102, "REIFY_CALLBACK", $P101
    store_lex "$callback", $P102
.annotate 'line', 461
    find_lex $P102, "$callback"
    unless_null $P102, vivify_387
    new $P102, "Undef"
  vivify_387:
    defined $I100, $P102
    if $I100, if_1327
    find_lex $P106, "$meth"
    unless_null $P106, vivify_388
    new $P106, "Undef"
  vivify_388:
    clone $P107, $P106
    set $P101, $P107
    goto if_1327_end
  if_1327:
    find_lex $P103, "$callback"
    unless_null $P103, vivify_389
    new $P103, "Undef"
  vivify_389:
    find_lex $P104, "$meth"
    unless_null $P104, vivify_390
    new $P104, "Undef"
  vivify_390:
    $P105 = $P103($P104)
    set $P101, $P105
  if_1327_end:
.annotate 'line', 459
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("55_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1332
    .param pmc param_1333 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 352
    .lex "self", param_1332
    .lex "$name", param_1333
.annotate 'line', 353
    new $P102, "Undef"
    set $P1334, $P102
    .lex "$obj", $P1334
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 354
    find_lex $P103, "$obj"
    unless_null $P103, vivify_391
    new $P103, "Undef"
  vivify_391:
    find_lex $P104, "$name"
    unless_null $P104, vivify_392
    new $P104, "Undef"
  vivify_392:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 352
    find_lex $P103, "$obj"
    unless_null $P103, vivify_393
    new $P103, "Undef"
  vivify_393:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("56_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1336
    .param pmc param_1337 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 358
    .lex "self", param_1336
    .lex "$name", param_1337
.annotate 'line', 359
    find_lex $P102, "$name"
    unless_null $P102, vivify_394
    new $P102, "Undef"
  vivify_394:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!name", $P102
.annotate 'line', 358
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("57_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1339
    .param pmc param_1340 :optional :named("name")
    .param int has_param_1340 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 364
    .lex "self", param_1339
    if has_param_1340, optparam_395
    new $P102, "String"
    assign $P102, "<anon>"
    set param_1340, $P102
  optparam_395:
    .lex "$name", param_1340
.annotate 'line', 365
    new $P103, "Undef"
    set $P1341, $P103
    .lex "$metarole", $P1341
    find_lex $P104, "self"
    find_lex $P105, "$name"
    unless_null $P105, vivify_396
    new $P105, "Undef"
  vivify_396:
    $P106 = $P104."new"($P105 :named("name"))
    store_lex "$metarole", $P106
.annotate 'line', 367
    find_lex $P104, "$metarole"
    unless_null $P104, vivify_397
    new $P104, "Undef"
  vivify_397:
    new $P105, "String"
    assign $P105, "Uninstantiable"
    set $S100, $P105
    repr_type_object_for $P106, $P104, $S100
    $P1342 = root_new ['parrot';'Hash']
    set_who $P106, $P1342
.annotate 'line', 364
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("58_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1344
    .param pmc param_1345
    .param pmc param_1346
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 371
    .lex "self", param_1344
    .lex "$obj", param_1345
    .lex "$body_block", param_1346
.annotate 'line', 372
    find_lex $P102, "$body_block"
    unless_null $P102, vivify_398
    new $P102, "Undef"
  vivify_398:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!body_block", $P102
.annotate 'line', 371
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("59_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1348
    .param pmc param_1349
    .param pmc param_1350
    .param pmc param_1351
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 375
    .lex "self", param_1348
    .lex "$obj", param_1349
    .lex "$name", param_1350
    .lex "$code_obj", param_1351
.annotate 'line', 376
    find_lex $P102, "$name"
    unless_null $P102, vivify_399
    new $P102, "Undef"
  vivify_399:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1353, $P104, $P105, "%!methods"
    unless_null $P1353, vivify_400
    $P1353 = root_new ['parrot';'Hash']
  vivify_400:
    set $P106, $P1353[$P102]
    unless_null $P106, vivify_401
    new $P106, "Undef"
  vivify_401:
    unless $P106, if_1352_end
.annotate 'line', 377
    new $P107, "String"
    assign $P107, "This role already has a method named "
    find_lex $P108, "$name"
    unless_null $P108, vivify_402
    new $P108, "Undef"
  vivify_402:
    concat $P109, $P107, $P108
    die $P109
  if_1352_end:
.annotate 'line', 379
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_403
    new $P102, "Undef"
  vivify_403:
    find_lex $P103, "$name"
    unless_null $P103, vivify_404
    new $P103, "Undef"
  vivify_404:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1354, $P105, $P106, "%!methods"
    unless_null $P1354, vivify_405
    $P1354 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!methods", $P1354
  vivify_405:
    set $P1354[$P103], $P102
.annotate 'line', 375
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("60_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1356
    .param pmc param_1357
    .param pmc param_1358
    .param pmc param_1359
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 382
    .lex "self", param_1356
    .lex "$obj", param_1357
    .lex "$name", param_1358
    .lex "$code_obj", param_1359
.annotate 'line', 383
    $P1361 = root_new ['parrot';'Hash']
    set $P1360, $P1361
    .lex "%todo", $P1360
.annotate 'line', 382
    find_lex $P1362, "%todo"
    unless_null $P1362, vivify_406
    $P1362 = root_new ['parrot';'Hash']
  vivify_406:
.annotate 'line', 384
    find_lex $P102, "$name"
    unless_null $P102, vivify_407
    new $P102, "Undef"
  vivify_407:
    find_lex $P1363, "%todo"
    unless_null $P1363, vivify_408
    $P1363 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1363
  vivify_408:
    set $P1363["name"], $P102
.annotate 'line', 385
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_409
    new $P102, "Undef"
  vivify_409:
    find_lex $P1364, "%todo"
    unless_null $P1364, vivify_410
    $P1364 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1364
  vivify_410:
    set $P1364["code"], $P102
.annotate 'line', 386
    find_lex $P1365, "%todo"
    unless_null $P1365, vivify_411
    $P1365 = root_new ['parrot';'Hash']
  vivify_411:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1366, $P103, $P104, "@!multi_methods_to_incorporate"
    unless_null $P1366, vivify_412
    $P1366 = root_new ['parrot';'ResizablePMCArray']
  vivify_412:
    set $N100, $P1366
    set $I100, $N100
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1367, $P106, $P107, "@!multi_methods_to_incorporate"
    unless_null $P1367, vivify_413
    $P1367 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P106, $P107, "@!multi_methods_to_incorporate", $P1367
  vivify_413:
    set $P1367[$I100], $P1365
.annotate 'line', 382
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_414
    new $P102, "Undef"
  vivify_414:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("61_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1369
    .param pmc param_1370
    .param pmc param_1371
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 390
    .lex "self", param_1369
    .lex "$obj", param_1370
    .lex "$meta_attr", param_1371
.annotate 'line', 391
    new $P102, "Undef"
    set $P1372, $P102
    .lex "$name", $P1372
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_415
    new $P103, "Undef"
  vivify_415:
    $P104 = $P103."name"()
    store_lex "$name", $P104
.annotate 'line', 392
    find_lex $P103, "$name"
    unless_null $P103, vivify_416
    new $P103, "Undef"
  vivify_416:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1374, $P105, $P106, "%!attributes"
    unless_null $P1374, vivify_417
    $P1374 = root_new ['parrot';'Hash']
  vivify_417:
    set $P107, $P1374[$P103]
    unless_null $P107, vivify_418
    new $P107, "Undef"
  vivify_418:
    unless $P107, if_1373_end
.annotate 'line', 393
    new $P108, "String"
    assign $P108, "This role already has an attribute named "
    find_lex $P109, "$name"
    unless_null $P109, vivify_419
    new $P109, "Undef"
  vivify_419:
    concat $P110, $P108, $P109
    die $P110
  if_1373_end:
.annotate 'line', 395
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_420
    new $P103, "Undef"
  vivify_420:
    find_lex $P104, "$name"
    unless_null $P104, vivify_421
    new $P104, "Undef"
  vivify_421:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1375, $P106, $P107, "%!attributes"
    unless_null $P1375, vivify_422
    $P1375 = root_new ['parrot';'Hash']
    setattribute $P106, $P107, "%!attributes", $P1375
  vivify_422:
    set $P1375[$P104], $P103
.annotate 'line', 390
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("62_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 398
    .lex "self", param_1377
    .lex "$obj", param_1378
    .lex "$parent", param_1379
.annotate 'line', 399
    die "A role cannot inherit from a class"
.annotate 'line', 398
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("63_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1381
    .param pmc param_1382
    .param pmc param_1383
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 402
    .lex "self", param_1381
    .lex "$obj", param_1382
    .lex "$role", param_1383
.annotate 'line', 403
    find_lex $P102, "$role"
    unless_null $P102, vivify_423
    new $P102, "Undef"
  vivify_423:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1384, $P104, $P105, "@!roles"
    unless_null $P1384, vivify_424
    $P1384 = root_new ['parrot';'ResizablePMCArray']
  vivify_424:
    set $N100, $P1384
    set $I100, $N100
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1385, $P107, $P108, "@!roles"
    unless_null $P1385, vivify_425
    $P1385 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P107, $P108, "@!roles", $P1385
  vivify_425:
    set $P1385[$I100], $P102
.annotate 'line', 402
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("64_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1387
    .param pmc param_1388
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 407
    .lex "self", param_1387
    .lex "$obj", param_1388
.annotate 'line', 408
    new $P102, "Float"
    assign $P102, 1
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!composed", $P102
.annotate 'line', 407
    find_lex $P102, "$obj"
    unless_null $P102, vivify_426
    new $P102, "Undef"
  vivify_426:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("65_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1390
    .param pmc param_1391
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 418
    .lex "self", param_1390
    .lex "$obj", param_1391
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "specialize" :anon :subid("66_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1395
    .param pmc param_1396
    .param pmc param_1397
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 424
    .const 'Sub' $P1418 = "70_1315057448.686" 
    capture_lex $P1418
    .const 'Sub' $P1411 = "69_1315057448.686" 
    capture_lex $P1411
    .const 'Sub' $P1406 = "68_1315057448.686" 
    capture_lex $P1406
    .const 'Sub' $P1401 = "67_1315057448.686" 
    capture_lex $P1401
    new $P1394, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1394, control_1393
    push_eh $P1394
    .lex "self", param_1395
    .lex "$obj", param_1396
    .lex "$class_arg", param_1397
.annotate 'line', 430
    new $P102, "Undef"
    set $P1398, $P102
    .lex "$irole", $P1398
.annotate 'line', 427
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!body_block"
    unless_null $P106, vivify_427
    new $P106, "Undef"
  vivify_427:
    find_lex $P107, "$class_arg"
    unless_null $P107, vivify_428
    new $P107, "Undef"
  vivify_428:
    $P106($P107)
.annotate 'line', 430
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P107, $P105, $P106, "$!name"
    unless_null $P107, vivify_429
    new $P107, "Undef"
  vivify_429:
    find_lex $P108, "$obj"
    unless_null $P108, vivify_430
    new $P108, "Undef"
  vivify_430:
    $P109 = $P103."new_type"($P107 :named("name"), $P108 :named("instance_of"))
    store_lex "$irole", $P109
.annotate 'line', 434
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1399, $P105, $P106, "%!attributes"
    unless_null $P1399, vivify_431
    $P1399 = root_new ['parrot';'Hash']
  vivify_431:
    defined $I100, $P1399
    unless $I100, for_undef_432
    iter $P103, $P1399
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1403_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1403_test:
    unless $P103, loop1403_done
    shift $P107, $P103
  loop1403_redo:
    .const 'Sub' $P1401 = "67_1315057448.686" 
    capture_lex $P1401
    $P1401($P107)
  loop1403_next:
    goto loop1403_test
  loop1403_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1403_next
    eq $P109, .CONTROL_LOOP_REDO, loop1403_redo
  loop1403_done:
    pop_eh 
  for_undef_432:
.annotate 'line', 439
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1404, $P105, $P106, "%!methods"
    unless_null $P1404, vivify_436
    $P1404 = root_new ['parrot';'Hash']
  vivify_436:
    defined $I100, $P1404
    unless $I100, for_undef_437
    iter $P103, $P1404
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1408_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1408_test:
    unless $P103, loop1408_done
    shift $P107, $P103
  loop1408_redo:
    .const 'Sub' $P1406 = "68_1315057448.686" 
    capture_lex $P1406
    $P1406($P107)
  loop1408_next:
    goto loop1408_test
  loop1408_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1408_next
    eq $P109, .CONTROL_LOOP_REDO, loop1408_redo
  loop1408_done:
    pop_eh 
  for_undef_437:
.annotate 'line', 442
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1409, $P105, $P106, "@!multi_methods_to_incorporate"
    unless_null $P1409, vivify_442
    $P1409 = root_new ['parrot';'ResizablePMCArray']
  vivify_442:
    defined $I100, $P1409
    unless $I100, for_undef_443
    iter $P103, $P1409
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1415_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1415_test:
    unless $P103, loop1415_done
    shift $P107, $P103
  loop1415_redo:
    .const 'Sub' $P1411 = "69_1315057448.686" 
    capture_lex $P1411
    $P1411($P107)
  loop1415_next:
    goto loop1415_test
  loop1415_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1415_next
    eq $P109, .CONTROL_LOOP_REDO, loop1415_redo
  loop1415_done:
    pop_eh 
  for_undef_443:
.annotate 'line', 447
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1416, $P105, $P106, "@!roles"
    unless_null $P1416, vivify_450
    $P1416 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    defined $I100, $P1416
    unless $I100, for_undef_451
    iter $P103, $P1416
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1421_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1421_test:
    unless $P103, loop1421_done
    shift $P107, $P103
  loop1421_redo:
    .const 'Sub' $P1418 = "70_1315057448.686" 
    capture_lex $P1418
    $P1418($P107)
  loop1421_next:
    goto loop1421_test
  loop1421_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1421_next
    eq $P110, .CONTROL_LOOP_REDO, loop1421_redo
  loop1421_done:
    pop_eh 
  for_undef_451:
.annotate 'line', 453
    find_lex $P103, "$irole"
    unless_null $P103, vivify_458
    new $P103, "Undef"
  vivify_458:
    get_how $P104, $P103
    find_lex $P105, "$irole"
    unless_null $P105, vivify_459
    new $P105, "Undef"
  vivify_459:
    $P104."compose"($P105)
.annotate 'line', 454
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    find_lex $P104, "$irole"
    unless_null $P104, vivify_460
    new $P104, "Undef"
  vivify_460:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 424
    .return ()
  control_1393:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1400"  :anon :subid("67_1315057448.686") :outer("66_1315057448.686")
    .param pmc param_1402
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 434
    .lex "$_", param_1402
.annotate 'line', 435
    find_lex $P108, "$irole"
    unless_null $P108, vivify_433
    new $P108, "Undef"
  vivify_433:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_434
    new $P110, "Undef"
  vivify_434:
    find_lex $P111, "$_"
    unless_null $P111, vivify_435
    new $P111, "Undef"
  vivify_435:
    $P112 = $P111."value"()
    $P113 = $P109."add_attribute"($P110, $P112)
.annotate 'line', 434
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1405"  :anon :subid("68_1315057448.686") :outer("66_1315057448.686")
    .param pmc param_1407
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 439
    .lex "$_", param_1407
.annotate 'line', 440
    find_lex $P108, "$irole"
    unless_null $P108, vivify_438
    new $P108, "Undef"
  vivify_438:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_439
    new $P110, "Undef"
  vivify_439:
    find_lex $P111, "$_"
    unless_null $P111, vivify_440
    new $P111, "Undef"
  vivify_440:
    $P112 = $P111."key"()
    find_lex $P113, "$_"
    unless_null $P113, vivify_441
    new $P113, "Undef"
  vivify_441:
    $P114 = $P113."value"()
    $P115 = "reify_method"($P114)
    $P116 = $P109."add_method"($P110, $P112, $P115)
.annotate 'line', 439
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1410"  :anon :subid("69_1315057448.686") :outer("66_1315057448.686")
    .param pmc param_1412
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 442
    .lex "$_", param_1412
.annotate 'line', 443
    find_lex $P108, "$irole"
    unless_null $P108, vivify_444
    new $P108, "Undef"
  vivify_444:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_445
    new $P110, "Undef"
  vivify_445:
    find_lex $P1413, "$_"
    unless_null $P1413, vivify_446
    $P1413 = root_new ['parrot';'Hash']
  vivify_446:
    set $P111, $P1413["name"]
    unless_null $P111, vivify_447
    new $P111, "Undef"
  vivify_447:
    find_lex $P1414, "$_"
    unless_null $P1414, vivify_448
    $P1414 = root_new ['parrot';'Hash']
  vivify_448:
    set $P112, $P1414["code"]
    unless_null $P112, vivify_449
    new $P112, "Undef"
  vivify_449:
    $P113 = "reify_method"($P112)
    $P114 = $P109."add_multi_method"($P110, $P111, $P113)
.annotate 'line', 442
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1417"  :anon :subid("70_1315057448.686") :outer("66_1315057448.686")
    .param pmc param_1420
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 448
    new $P108, "Undef"
    set $P1419, $P108
    .lex "$specialized", $P1419
    .lex "$_", param_1420
    find_lex $P109, "$irole"
    unless_null $P109, vivify_452
    new $P109, "Undef"
  vivify_452:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_453
    new $P111, "Undef"
  vivify_453:
    find_lex $P112, "$class_arg"
    unless_null $P112, vivify_454
    new $P112, "Undef"
  vivify_454:
    $P113 = $P110."specialize"($P111, $P112)
    store_lex "$specialized", $P113
.annotate 'line', 449
    find_lex $P109, "$irole"
    unless_null $P109, vivify_455
    new $P109, "Undef"
  vivify_455:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_456
    new $P111, "Undef"
  vivify_456:
    find_lex $P112, "$specialized"
    unless_null $P112, vivify_457
    new $P112, "Undef"
  vivify_457:
    $P113 = $P110."add_role"($P111, $P112)
.annotate 'line', 447
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("71_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1423
    .param pmc param_1424
    .param pmc param_1425 :optional :named("local")
    .param int has_param_1425 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 468
    .const 'Sub' $P1431 = "72_1315057448.686" 
    capture_lex $P1431
    .lex "self", param_1423
    .lex "$obj", param_1424
    if has_param_1425, optparam_461
    new $P102, "Undef"
    set param_1425, $P102
  optparam_461:
    .lex "$local", param_1425
.annotate 'line', 469
    $P1427 = root_new ['parrot';'ResizablePMCArray']
    set $P1426, $P1427
    .lex "@meths", $P1426
.annotate 'line', 468
    find_lex $P1428, "@meths"
    unless_null $P1428, vivify_462
    $P1428 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
.annotate 'line', 470
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1429, $P105, $P106, "%!methods"
    unless_null $P1429, vivify_463
    $P1429 = root_new ['parrot';'Hash']
  vivify_463:
    defined $I100, $P1429
    unless $I100, for_undef_464
    iter $P103, $P1429
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1434_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1434_test:
    unless $P103, loop1434_done
    shift $P107, $P103
  loop1434_redo:
    .const 'Sub' $P1431 = "72_1315057448.686" 
    capture_lex $P1431
    $P1431($P107)
  loop1434_next:
    goto loop1434_test
  loop1434_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1434_next
    eq $P109, .CONTROL_LOOP_REDO, loop1434_redo
  loop1434_done:
    pop_eh 
  for_undef_464:
.annotate 'line', 468
    find_lex $P1435, "@meths"
    unless_null $P1435, vivify_467
    $P1435 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1430"  :anon :subid("72_1315057448.686") :outer("71_1315057448.686")
    .param pmc param_1432
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 470
    .lex "$_", param_1432
.annotate 'line', 471
    find_lex $P1433, "@meths"
    unless_null $P1433, vivify_465
    $P1433 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    find_lex $P108, "$_"
    unless_null $P108, vivify_466
    new $P108, "Undef"
  vivify_466:
    $P109 = $P108."value"()
    $P110 = $P1433."push"($P109)
.annotate 'line', 470
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("73_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1437
    .param pmc param_1438
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 476
    .lex "self", param_1437
    .lex "$obj", param_1438
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1439, $P103, $P104, "%!methods"
    unless_null $P1439, vivify_468
    $P1439 = root_new ['parrot';'Hash']
  vivify_468:
    .return ($P1439)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("74_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1441
    .param pmc param_1442
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 480
    .lex "self", param_1441
    .lex "$obj", param_1442
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!name"
    unless_null $P105, vivify_469
    new $P105, "Undef"
  vivify_469:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("75_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1444
    .param pmc param_1445
    .param pmc param_1446 :optional :named("local")
    .param int has_param_1446 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 484
    .const 'Sub' $P1452 = "76_1315057448.686" 
    capture_lex $P1452
    .lex "self", param_1444
    .lex "$obj", param_1445
    if has_param_1446, optparam_470
    new $P102, "Undef"
    set param_1446, $P102
  optparam_470:
    .lex "$local", param_1446
.annotate 'line', 485
    $P1448 = root_new ['parrot';'ResizablePMCArray']
    set $P1447, $P1448
    .lex "@attrs", $P1447
.annotate 'line', 484
    find_lex $P1449, "@attrs"
    unless_null $P1449, vivify_471
    $P1449 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
.annotate 'line', 486
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1450, $P105, $P106, "%!attributes"
    unless_null $P1450, vivify_472
    $P1450 = root_new ['parrot';'Hash']
  vivify_472:
    defined $I100, $P1450
    unless $I100, for_undef_473
    iter $P103, $P1450
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1455_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1455_test:
    unless $P103, loop1455_done
    shift $P107, $P103
  loop1455_redo:
    .const 'Sub' $P1452 = "76_1315057448.686" 
    capture_lex $P1452
    $P1452($P107)
  loop1455_next:
    goto loop1455_test
  loop1455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1455_next
    eq $P109, .CONTROL_LOOP_REDO, loop1455_redo
  loop1455_done:
    pop_eh 
  for_undef_473:
.annotate 'line', 484
    find_lex $P1456, "@attrs"
    unless_null $P1456, vivify_476
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    .return ($P1456)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1451"  :anon :subid("76_1315057448.686") :outer("75_1315057448.686")
    .param pmc param_1453
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 486
    .lex "$_", param_1453
.annotate 'line', 487
    find_lex $P1454, "@attrs"
    unless_null $P1454, vivify_474
    $P1454 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
    find_lex $P108, "$_"
    unless_null $P108, vivify_475
    new $P108, "Undef"
  vivify_475:
    $P109 = $P108."value"()
    $P110 = $P1454."push"($P109)
.annotate 'line', 486
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("77_1315057448.686") :outer("53_1315057448.686")
    .param pmc param_1458
    .param pmc param_1459
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 492
    .lex "self", param_1458
    .lex "$obj", param_1459
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1460, $P103, $P104, "@!roles"
    unless_null $P1460, vivify_477
    $P1460 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
    .return ($P1460)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1462"  :subid("78_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 502
    .const 'Sub' $P1920 = "139_1315057448.686" 
    capture_lex $P1920
    .const 'Sub' $P1904 = "137_1315057448.686" 
    capture_lex $P1904
    .const 'Sub' $P1893 = "136_1315057448.686" 
    capture_lex $P1893
    .const 'Sub' $P1881 = "135_1315057448.686" 
    capture_lex $P1881
    .const 'Sub' $P1876 = "134_1315057448.686" 
    capture_lex $P1876
    .const 'Sub' $P1871 = "133_1315057448.686" 
    capture_lex $P1871
    .const 'Sub' $P1857 = "131_1315057448.686" 
    capture_lex $P1857
    .const 'Sub' $P1854 = "130_1315057448.686" 
    capture_lex $P1854
    .const 'Sub' $P1850 = "129_1315057448.686" 
    capture_lex $P1850
    .const 'Sub' $P1836 = "127_1315057448.686" 
    capture_lex $P1836
    .const 'Sub' $P1831 = "126_1315057448.686" 
    capture_lex $P1831
    .const 'Sub' $P1827 = "125_1315057448.686" 
    capture_lex $P1827
    .const 'Sub' $P1820 = "124_1315057448.686" 
    capture_lex $P1820
    .const 'Sub' $P1796 = "121_1315057448.686" 
    capture_lex $P1796
    .const 'Sub' $P1772 = "118_1315057448.686" 
    capture_lex $P1772
    .const 'Sub' $P1767 = "117_1315057448.686" 
    capture_lex $P1767
    .const 'Sub' $P1745 = "114_1315057448.686" 
    capture_lex $P1745
    .const 'Sub' $P1726 = "111_1315057448.686" 
    capture_lex $P1726
    .const 'Sub' $P1678 = "106_1315057448.686" 
    capture_lex $P1678
    .const 'Sub' $P1648 = "102_1315057448.686" 
    capture_lex $P1648
    .const 'Sub' $P1640 = "101_1315057448.686" 
    capture_lex $P1640
    .const 'Sub' $P1632 = "100_1315057448.686" 
    capture_lex $P1632
    .const 'Sub' $P1620 = "98_1315057448.686" 
    capture_lex $P1620
    .const 'Sub' $P1616 = "97_1315057448.686" 
    capture_lex $P1616
    .const 'Sub' $P1602 = "95_1315057448.686" 
    capture_lex $P1602
    .const 'Sub' $P1594 = "94_1315057448.686" 
    capture_lex $P1594
    .const 'Sub' $P1581 = "93_1315057448.686" 
    capture_lex $P1581
    .const 'Sub' $P1571 = "92_1315057448.686" 
    capture_lex $P1571
    .const 'Sub' $P1565 = "91_1315057448.686" 
    capture_lex $P1565
    .const 'Sub' $P1562 = "90_1315057448.686" 
    capture_lex $P1562
    .const 'Sub' $P1558 = "89_1315057448.686" 
    capture_lex $P1558
    .const 'Sub' $P1494 = "82_1315057448.686" 
    capture_lex $P1494
    .const 'Sub' $P1465 = "79_1315057448.686" 
    capture_lex $P1465
.annotate 'line', 741
    .const 'Sub' $P1465 = "79_1315057448.686" 
    newclosure $P1492, $P1465
    set $P1464, $P1492
    .lex "compute_c3_mro", $P1464
.annotate 'line', 763
    .const 'Sub' $P1494 = "82_1315057448.686" 
    newclosure $P1555, $P1494
    set $P1493, $P1555
    .lex "c3_merge", $P1493
.annotate 'line', 502
    .lex "$?PACKAGE", $P1556
    .lex "$?CLASS", $P1557
    find_lex $P106, "compute_c3_mro"
    find_lex $P106, "c3_merge"
.annotate 'line', 979
    .const 'Sub' $P1920 = "139_1315057448.686" 
    newclosure $P1937, $P1920
.annotate 'line', 502
    .return ($P1937)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("79_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1468
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 741
    .const 'Sub' $P1477 = "80_1315057448.686" 
    capture_lex $P1477
    new $P1467, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1467, control_1466
    push_eh $P1467
    .lex "$class", param_1468
.annotate 'line', 742
    $P1470 = root_new ['parrot';'ResizablePMCArray']
    set $P1469, $P1470
    .lex "@immediate_parents", $P1469
.annotate 'line', 745
    $P1472 = root_new ['parrot';'ResizablePMCArray']
    set $P1471, $P1472
    .lex "@result", $P1471
.annotate 'line', 742
    find_lex $P100, "$class"
    unless_null $P100, vivify_478
    new $P100, "Undef"
  vivify_478:
    get_how $P101, $P100
    find_lex $P102, "$class"
    unless_null $P102, vivify_479
    new $P102, "Undef"
  vivify_479:
    $P103 = $P101."parents"($P102, 1 :named("local"))
    store_lex "@immediate_parents", $P103
.annotate 'line', 741
    find_lex $P1473, "@result"
    unless_null $P1473, vivify_480
    $P1473 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
.annotate 'line', 746
    find_lex $P1475, "@immediate_parents"
    unless_null $P1475, vivify_481
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_481:
    set $N100, $P1475
    unless $N100, if_1474_end
    .const 'Sub' $P1477 = "80_1315057448.686" 
    capture_lex $P1477
    $P1477()
  if_1474_end:
.annotate 'line', 758
    find_lex $P1490, "@result"
    unless_null $P1490, vivify_490
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    find_lex $P100, "$class"
    unless_null $P100, vivify_491
    new $P100, "Undef"
  vivify_491:
    $P1490."unshift"($P100)
.annotate 'line', 759
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1491, "@result"
    unless_null $P1491, vivify_492
    $P1491 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    setattribute $P100, 'payload', $P1491
    throw $P100
.annotate 'line', 741
    .return ()
  control_1466:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1476"  :anon :subid("80_1315057448.686") :outer("79_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 746
    .const 'Sub' $P1483 = "81_1315057448.686" 
    capture_lex $P1483
.annotate 'line', 749
    $P1479 = root_new ['parrot';'ResizablePMCArray']
    set $P1478, $P1479
    .lex "@merge_list", $P1478
.annotate 'line', 746
    find_lex $P1480, "@merge_list"
    unless_null $P1480, vivify_482
    $P1480 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
.annotate 'line', 750
    find_lex $P1481, "@immediate_parents"
    unless_null $P1481, vivify_483
    $P1481 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    defined $I100, $P1481
    unless $I100, for_undef_484
    iter $P100, $P1481
    new $P102, 'ExceptionHandler'
    set_label $P102, loop1486_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop1486_test:
    unless $P100, loop1486_done
    shift $P101, $P100
  loop1486_redo:
    .const 'Sub' $P1483 = "81_1315057448.686" 
    capture_lex $P1483
    $P1483($P101)
  loop1486_next:
    goto loop1486_test
  loop1486_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop1486_next
    eq $P103, .CONTROL_LOOP_REDO, loop1486_redo
  loop1486_done:
    pop_eh 
  for_undef_484:
.annotate 'line', 753
    find_lex $P1487, "@merge_list"
    unless_null $P1487, vivify_487
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    find_lex $P1488, "@immediate_parents"
    unless_null $P1488, vivify_488
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
    $P1487."push"($P1488)
.annotate 'line', 754
    find_lex $P1489, "@merge_list"
    unless_null $P1489, vivify_489
    $P1489 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    $P100 = "c3_merge"($P1489)
    store_lex "@result", $P100
.annotate 'line', 746
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1482"  :anon :subid("81_1315057448.686") :outer("80_1315057448.686")
    .param pmc param_1484
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 750
    .lex "$_", param_1484
.annotate 'line', 751
    find_lex $P1485, "@merge_list"
    unless_null $P1485, vivify_485
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    find_lex $P102, "$_"
    unless_null $P102, vivify_486
    new $P102, "Undef"
  vivify_486:
    $P103 = "compute_c3_mro"($P102)
    $P104 = $P1485."push"($P103)
.annotate 'line', 750
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("82_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1497
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 763
    .const 'Sub' $P1538 = "87_1315057448.686" 
    capture_lex $P1538
    .const 'Sub' $P1507 = "83_1315057448.686" 
    capture_lex $P1507
    new $P1496, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1496, control_1495
    push_eh $P1496
    .lex "@merge_list", param_1497
.annotate 'line', 764
    $P1499 = root_new ['parrot';'ResizablePMCArray']
    set $P1498, $P1499
    .lex "@result", $P1498
.annotate 'line', 765
    new $P101, "Undef"
    set $P1500, $P101
    .lex "$accepted", $P1500
.annotate 'line', 766
    new $P102, "Undef"
    set $P1501, $P102
    .lex "$something_accepted", $P1501
.annotate 'line', 767
    new $P103, "Undef"
    set $P1502, $P103
    .lex "$cand_count", $P1502
.annotate 'line', 810
    new $P104, "Undef"
    set $P1503, $P104
    .lex "$i", $P1503
.annotate 'line', 763
    find_lex $P1504, "@result"
    unless_null $P1504, vivify_493
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_494
    new $P105, "Undef"
  vivify_494:
.annotate 'line', 766
    new $P105, "Float"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 767
    new $P105, "Float"
    assign $P105, 0
    store_lex "$cand_count", $P105
.annotate 'line', 770
    find_lex $P1505, "@merge_list"
    unless_null $P1505, vivify_495
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    defined $I100, $P1505
    unless $I100, for_undef_496
    iter $P105, $P1505
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1532_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1532_test:
    unless $P105, loop1532_done
    shift $P106, $P105
  loop1532_redo:
    .const 'Sub' $P1507 = "83_1315057448.686" 
    capture_lex $P1507
    $P1507($P106)
  loop1532_next:
    goto loop1532_test
  loop1532_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1532_next
    eq $P109, .CONTROL_LOOP_REDO, loop1532_redo
  loop1532_done:
    pop_eh 
  for_undef_496:
.annotate 'line', 800
    find_lex $P105, "$cand_count"
    unless_null $P105, vivify_515
    new $P105, "Undef"
  vivify_515:
    set $N100, $P105
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1533_end
.annotate 'line', 801
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P1534, "@result"
    unless_null $P1534, vivify_516
    $P1534 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    setattribute $P106, 'payload', $P1534
    throw $P106
  if_1533_end:
.annotate 'line', 805
    find_lex $P105, "$something_accepted"
    unless_null $P105, vivify_517
    new $P105, "Undef"
  vivify_517:
    if $P105, unless_1535_end
.annotate 'line', 806
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1535_end:
.annotate 'line', 810
    new $P105, "Float"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 811
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1551_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1551_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_518
    new $P105, "Undef"
  vivify_518:
    set $N100, $P105
    find_lex $P1536, "@merge_list"
    unless_null $P1536, vivify_519
    $P1536 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $N101, $P1536
    islt $I100, $N100, $N101
    unless $I100, loop1551_done
  loop1551_redo:
    .const 'Sub' $P1538 = "87_1315057448.686" 
    capture_lex $P1538
    $P1538()
  loop1551_next:
    goto loop1551_test
  loop1551_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1551_next
    eq $P108, .CONTROL_LOOP_REDO, loop1551_redo
  loop1551_done:
    pop_eh 
.annotate 'line', 824
    find_lex $P1552, "@merge_list"
    unless_null $P1552, vivify_533
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    $P105 = "c3_merge"($P1552)
    store_lex "@result", $P105
.annotate 'line', 825
    find_lex $P1553, "@result"
    unless_null $P1553, vivify_534
    $P1553 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_535
    new $P105, "Undef"
  vivify_535:
    $P1553."unshift"($P105)
.annotate 'line', 826
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P1554, "@result"
    unless_null $P1554, vivify_536
    $P1554 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    setattribute $P105, 'payload', $P1554
    throw $P105
.annotate 'line', 763
    .return ()
  control_1495:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1506"  :anon :subid("83_1315057448.686") :outer("82_1315057448.686")
    .param pmc param_1510
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 770
    .const 'Sub' $P1514 = "84_1315057448.686" 
    capture_lex $P1514
.annotate 'line', 771
    $P1509 = root_new ['parrot';'ResizablePMCArray']
    set $P1508, $P1509
    .lex "@cand_list", $P1508
    .lex "$_", param_1510
    find_lex $P107, "$_"
    unless_null $P107, vivify_497
    new $P107, "Undef"
  vivify_497:
    store_lex "@cand_list", $P107
.annotate 'line', 772
    find_lex $P1512, "@cand_list"
    unless_null $P1512, vivify_498
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    set $N100, $P1512
    if $N100, if_1511
    new $P107, 'Float'
    set $P107, $N100
    goto if_1511_end
  if_1511:
    .const 'Sub' $P1514 = "84_1315057448.686" 
    capture_lex $P1514
    $P111 = $P1514()
    set $P107, $P111
  if_1511_end:
.annotate 'line', 770
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1513"  :anon :subid("84_1315057448.686") :outer("83_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 772
    .const 'Sub' $P1520 = "85_1315057448.686" 
    capture_lex $P1520
.annotate 'line', 773
    new $P108, "Undef"
    set $P1515, $P108
    .lex "$rejected", $P1515
.annotate 'line', 774
    new $P109, "Undef"
    set $P1516, $P109
    .lex "$cand_class", $P1516
.annotate 'line', 773
    new $P110, "Float"
    assign $P110, 0
    store_lex "$rejected", $P110
.annotate 'line', 774
    new $P110, "Float"
    assign $P110, 0
    set $I101, $P110
    find_lex $P1517, "@cand_list"
    unless_null $P1517, vivify_499
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
    set $P111, $P1517[$I101]
    unless_null $P111, vivify_500
    new $P111, "Undef"
  vivify_500:
    store_lex "$cand_class", $P111
.annotate 'line', 775
    find_lex $P110, "$cand_count"
    unless_null $P110, vivify_501
    new $P110, "Undef"
  vivify_501:
    add $P111, $P110, 1
    store_lex "$cand_count", $P111
.annotate 'line', 776
    find_lex $P1518, "@merge_list"
    unless_null $P1518, vivify_502
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    defined $I101, $P1518
    unless $I101, for_undef_503
    iter $P110, $P1518
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1531_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1531_test:
    unless $P110, loop1531_done
    shift $P111, $P110
  loop1531_redo:
    .const 'Sub' $P1520 = "85_1315057448.686" 
    capture_lex $P1520
    $P1520($P111)
  loop1531_next:
    goto loop1531_test
  loop1531_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1531_next
    eq $P114, .CONTROL_LOOP_REDO, loop1531_redo
  loop1531_done:
    pop_eh 
  for_undef_503:
.annotate 'line', 772
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1519"  :anon :subid("85_1315057448.686") :outer("84_1315057448.686")
    .param pmc param_1521
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 776
    .const 'Sub' $P1525 = "86_1315057448.686" 
    capture_lex $P1525
    .lex "$_", param_1521
.annotate 'line', 778
    find_lex $P112, "$_"
    unless_null $P112, vivify_504
    new $P112, "Undef"
  vivify_504:
    find_lex $P1523, "@cand_list"
    unless_null $P1523, vivify_505
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    issame $I102, $P112, $P1523
    if $I102, unless_1522_end
    .const 'Sub' $P1525 = "86_1315057448.686" 
    capture_lex $P1525
    $P1525()
  unless_1522_end:
.annotate 'line', 790
    find_lex $P113, "$rejected"
    unless_null $P113, vivify_513
    new $P113, "Undef"
  vivify_513:
    unless $P113, unless_1530
    set $P112, $P113
    goto unless_1530_end
  unless_1530:
.annotate 'line', 791
    find_lex $P114, "$cand_class"
    unless_null $P114, vivify_514
    new $P114, "Undef"
  vivify_514:
    store_lex "$accepted", $P114
.annotate 'line', 792
    new $P114, "Float"
    assign $P114, 1
    store_lex "$something_accepted", $P114
.annotate 'line', 793
    die 0, .CONTROL_LOOP_LAST
  unless_1530_end:
.annotate 'line', 776
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1524"  :anon :subid("86_1315057448.686") :outer("85_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 780
    new $P113, "Undef"
    set $P1526, $P113
    .lex "$cur_pos", $P1526
    new $P114, "Float"
    assign $P114, 1
    store_lex "$cur_pos", $P114
.annotate 'line', 781
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1529_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1529_test:
    find_lex $P114, "$cur_pos"
    unless_null $P114, vivify_506
    new $P114, "Undef"
  vivify_506:
    set $N101, $P114
    find_lex $P115, "$_"
    unless_null $P115, vivify_507
    new $P115, "Undef"
  vivify_507:
    set $N102, $P115
    isle $I103, $N101, $N102
    unless $I103, loop1529_done
  loop1529_redo:
.annotate 'line', 782
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_508
    new $P116, "Undef"
  vivify_508:
    set $I104, $P116
    find_lex $P1528, "$_"
    unless_null $P1528, vivify_509
    $P1528 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    set $P117, $P1528[$I104]
    unless_null $P117, vivify_510
    new $P117, "Undef"
  vivify_510:
    find_lex $P118, "$cand_class"
    unless_null $P118, vivify_511
    new $P118, "Undef"
  vivify_511:
    issame $I105, $P117, $P118
    unless $I105, if_1527_end
.annotate 'line', 783
    new $P119, "Float"
    assign $P119, 1
    store_lex "$rejected", $P119
  if_1527_end:
.annotate 'line', 785
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_512
    new $P116, "Undef"
  vivify_512:
    add $P117, $P116, 1
    store_lex "$cur_pos", $P117
  loop1529_next:
.annotate 'line', 781
    goto loop1529_test
  loop1529_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1529_next
    eq $P117, .CONTROL_LOOP_REDO, loop1529_redo
  loop1529_done:
    pop_eh 
.annotate 'line', 778
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1537"  :anon :subid("87_1315057448.686") :outer("82_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 811
    .const 'Sub' $P1544 = "88_1315057448.686" 
    capture_lex $P1544
.annotate 'line', 812
    $P1540 = root_new ['parrot';'ResizablePMCArray']
    set $P1539, $P1540
    .lex "@new_list", $P1539
.annotate 'line', 811
    find_lex $P1541, "@new_list"
    unless_null $P1541, vivify_520
    $P1541 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
.annotate 'line', 813
    find_lex $P107, "$i"
    unless_null $P107, vivify_521
    new $P107, "Undef"
  vivify_521:
    set $I101, $P107
    find_lex $P1542, "@merge_list"
    unless_null $P1542, vivify_522
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    set $P108, $P1542[$I101]
    unless_null $P108, vivify_523
    new $P108, "Undef"
  vivify_523:
    defined $I102, $P108
    unless $I102, for_undef_524
    iter $P106, $P108
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1548_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1548_test:
    unless $P106, loop1548_done
    shift $P109, $P106
  loop1548_redo:
    .const 'Sub' $P1544 = "88_1315057448.686" 
    capture_lex $P1544
    $P1544($P109)
  loop1548_next:
    goto loop1548_test
  loop1548_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1548_next
    eq $P112, .CONTROL_LOOP_REDO, loop1548_redo
  loop1548_done:
    pop_eh 
  for_undef_524:
.annotate 'line', 818
    find_lex $P1549, "@new_list"
    unless_null $P1549, vivify_529
    $P1549 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    find_lex $P106, "$i"
    unless_null $P106, vivify_530
    new $P106, "Undef"
  vivify_530:
    set $I101, $P106
    find_lex $P1550, "@merge_list"
    unless_null $P1550, vivify_531
    $P1550 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1550
  vivify_531:
    set $P1550[$I101], $P1549
.annotate 'line', 819
    find_lex $P106, "$i"
    unless_null $P106, vivify_532
    new $P106, "Undef"
  vivify_532:
    add $P107, $P106, 1
    store_lex "$i", $P107
.annotate 'line', 811
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1543"  :anon :subid("88_1315057448.686") :outer("87_1315057448.686")
    .param pmc param_1545
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 813
    .lex "$_", param_1545
.annotate 'line', 814
    find_lex $P111, "$_"
    unless_null $P111, vivify_525
    new $P111, "Undef"
  vivify_525:
    find_lex $P112, "$accepted"
    unless_null $P112, vivify_526
    new $P112, "Undef"
  vivify_526:
    issame $I103, $P111, $P112
    unless $I103, unless_1546
    new $P110, 'Integer'
    set $P110, $I103
    goto unless_1546_end
  unless_1546:
.annotate 'line', 815
    find_lex $P1547, "@new_list"
    unless_null $P1547, vivify_527
    $P1547 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    find_lex $P113, "$_"
    unless_null $P113, vivify_528
    new $P113, "Undef"
  vivify_528:
    $P114 = $P1547."push"($P113)
.annotate 'line', 814
    set $P110, $P114
  unless_1546_end:
.annotate 'line', 813
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("89_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1559
    .param pmc param_1560 :optional :named("name")
    .param int has_param_1560 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 540
    .lex "self", param_1559
    if has_param_1560, optparam_537
    new $P106, "Undef"
    set param_1560, $P106
  optparam_537:
    .lex "$name", param_1560
.annotate 'line', 541
    new $P107, "Undef"
    set $P1561, $P107
    .lex "$obj", $P1561
    find_lex $P108, "self"
    repr_instance_of $P109, $P108
    store_lex "$obj", $P109
.annotate 'line', 542
    find_lex $P108, "$obj"
    unless_null $P108, vivify_538
    new $P108, "Undef"
  vivify_538:
    find_lex $P109, "$name"
    unless_null $P109, vivify_539
    new $P109, "Undef"
  vivify_539:
    $P108."BUILD"($P109 :named("name"))
.annotate 'line', 540
    find_lex $P108, "$obj"
    unless_null $P108, vivify_540
    new $P108, "Undef"
  vivify_540:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("90_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1563
    .param pmc param_1564 :optional :named("name")
    .param int has_param_1564 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 546
    .lex "self", param_1563
    if has_param_1564, optparam_541
    new $P106, "Undef"
    set param_1564, $P106
  optparam_541:
    .lex "$name", param_1564
.annotate 'line', 547
    find_lex $P107, "$name"
    unless_null $P107, vivify_542
    new $P107, "Undef"
  vivify_542:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    setattribute $P109, $P110, "$!name", $P107
.annotate 'line', 546
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("91_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1566
    .param pmc param_1567 :optional :named("name")
    .param int has_param_1567 :opt_flag
    .param pmc param_1568 :optional :named("repr")
    .param int has_param_1568 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 552
    .lex "self", param_1566
    if has_param_1567, optparam_543
    new $P106, "String"
    assign $P106, "<anon>"
    set param_1567, $P106
  optparam_543:
    .lex "$name", param_1567
    if has_param_1568, optparam_544
    new $P107, "String"
    assign $P107, "P6opaque"
    set param_1568, $P107
  optparam_544:
    .lex "$repr", param_1568
.annotate 'line', 553
    new $P108, "Undef"
    set $P1569, $P108
    .lex "$metaclass", $P1569
    find_lex $P109, "self"
    find_lex $P110, "$name"
    unless_null $P110, vivify_545
    new $P110, "Undef"
  vivify_545:
    $P111 = $P109."new"($P110 :named("name"))
    store_lex "$metaclass", $P111
.annotate 'line', 555
    find_lex $P109, "$metaclass"
    unless_null $P109, vivify_546
    new $P109, "Undef"
  vivify_546:
    find_lex $P110, "$repr"
    unless_null $P110, vivify_547
    new $P110, "Undef"
  vivify_547:
    set $S100, $P110
    repr_type_object_for $P111, $P109, $S100
    $P1570 = root_new ['parrot';'Hash']
    set_who $P111, $P1570
.annotate 'line', 552
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("92_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1572
    .param pmc param_1573
    .param pmc param_1574
    .param pmc param_1575
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 559
    .lex "self", param_1572
    .lex "$obj", param_1573
    .lex "$name", param_1574
    .lex "$code_obj", param_1575
.annotate 'line', 560
    find_lex $P106, "$name"
    unless_null $P106, vivify_548
    new $P106, "Undef"
  vivify_548:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1577, $P108, $P109, "%!methods"
    unless_null $P1577, vivify_549
    $P1577 = root_new ['parrot';'Hash']
  vivify_549:
    set $P110, $P1577[$P106]
    unless_null $P110, vivify_550
    new $P110, "Undef"
  vivify_550:
    unless $P110, if_1576_end
.annotate 'line', 561
    new $P111, "String"
    assign $P111, "This class already has a method named "
    find_lex $P112, "$name"
    unless_null $P112, vivify_551
    new $P112, "Undef"
  vivify_551:
    concat $P113, $P111, $P112
    die $P113
  if_1576_end:
.annotate 'line', 563
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_552
    new $P107, "Undef"
  vivify_552:
    isnull $I100, $P107
    unless $I100, unless_1579
    new $P106, 'Integer'
    set $P106, $I100
    goto unless_1579_end
  unless_1579:
    find_lex $P108, "$code_obj"
    unless_null $P108, vivify_553
    new $P108, "Undef"
  vivify_553:
    isa $I101, $P108, "Undef"
    new $P106, 'Integer'
    set $P106, $I101
  unless_1579_end:
    unless $P106, if_1578_end
.annotate 'line', 564
    new $P109, 'String'
    set $P109, "Cannot add a null method '"
    find_lex $P110, "$name"
    unless_null $P110, vivify_554
    new $P110, "Undef"
  vivify_554:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' to class '"
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P116, $P114, $P115, "$!name"
    unless_null $P116, vivify_555
    new $P116, "Undef"
  vivify_555:
    concat $P117, $P112, $P116
    concat $P118, $P117, "'"
    die $P118
  if_1578_end:
.annotate 'line', 566
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_556
    new $P106, "Undef"
  vivify_556:
    find_lex $P107, "$name"
    unless_null $P107, vivify_557
    new $P107, "Undef"
  vivify_557:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1580, $P109, $P110, "%!methods"
    unless_null $P1580, vivify_558
    $P1580 = root_new ['parrot';'Hash']
    setattribute $P109, $P110, "%!methods", $P1580
  vivify_558:
    set $P1580[$P107], $P106
.annotate 'line', 559
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("93_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1582
    .param pmc param_1583
    .param pmc param_1584
    .param pmc param_1585
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 569
    .lex "self", param_1582
    .lex "$obj", param_1583
    .lex "$name", param_1584
    .lex "$code_obj", param_1585
.annotate 'line', 575
    $P1587 = root_new ['parrot';'Hash']
    set $P1586, $P1587
    .lex "%todo", $P1586
.annotate 'line', 569
    find_lex $P1588, "%todo"
    unless_null $P1588, vivify_559
    $P1588 = root_new ['parrot';'Hash']
  vivify_559:
.annotate 'line', 576
    find_lex $P106, "$name"
    unless_null $P106, vivify_560
    new $P106, "Undef"
  vivify_560:
    find_lex $P1589, "%todo"
    unless_null $P1589, vivify_561
    $P1589 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1589
  vivify_561:
    set $P1589["name"], $P106
.annotate 'line', 577
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    find_lex $P1590, "%todo"
    unless_null $P1590, vivify_563
    $P1590 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1590
  vivify_563:
    set $P1590["code"], $P106
.annotate 'line', 578
    find_lex $P1591, "%todo"
    unless_null $P1591, vivify_564
    $P1591 = root_new ['parrot';'Hash']
  vivify_564:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1592, $P107, $P108, "@!multi_methods_to_incorporate"
    unless_null $P1592, vivify_565
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
    set $N100, $P1592
    set $I100, $N100
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1593, $P110, $P111, "@!multi_methods_to_incorporate"
    unless_null $P1593, vivify_566
    $P1593 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P110, $P111, "@!multi_methods_to_incorporate", $P1593
  vivify_566:
    set $P1593[$I100], $P1591
.annotate 'line', 569
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_567
    new $P106, "Undef"
  vivify_567:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("94_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1595
    .param pmc param_1596
    .param pmc param_1597
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 582
    .lex "self", param_1595
    .lex "$obj", param_1596
    .lex "$meta_attr", param_1597
.annotate 'line', 583
    new $P106, "Undef"
    set $P1598, $P106
    .lex "$name", $P1598
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_568
    new $P107, "Undef"
  vivify_568:
    $P108 = $P107."name"()
    store_lex "$name", $P108
.annotate 'line', 584
    find_lex $P107, "$name"
    unless_null $P107, vivify_569
    new $P107, "Undef"
  vivify_569:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1600, $P109, $P110, "%!attributes"
    unless_null $P1600, vivify_570
    $P1600 = root_new ['parrot';'Hash']
  vivify_570:
    set $P111, $P1600[$P107]
    unless_null $P111, vivify_571
    new $P111, "Undef"
  vivify_571:
    unless $P111, if_1599_end
.annotate 'line', 585
    new $P112, "String"
    assign $P112, "This class already has an attribute named "
    find_lex $P113, "$name"
    unless_null $P113, vivify_572
    new $P113, "Undef"
  vivify_572:
    concat $P114, $P112, $P113
    die $P114
  if_1599_end:
.annotate 'line', 587
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_573
    new $P107, "Undef"
  vivify_573:
    find_lex $P108, "$name"
    unless_null $P108, vivify_574
    new $P108, "Undef"
  vivify_574:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1601, $P110, $P111, "%!attributes"
    unless_null $P1601, vivify_575
    $P1601 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!attributes", $P1601
  vivify_575:
    set $P1601[$P108], $P107
.annotate 'line', 582
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("95_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1603
    .param pmc param_1604
    .param pmc param_1605
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 590
    .const 'Sub' $P1610 = "96_1315057448.686" 
    capture_lex $P1610
    .lex "self", param_1603
    .lex "$obj", param_1604
    .lex "$parent", param_1605
.annotate 'line', 591
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!composed"
    unless_null $P109, vivify_576
    new $P109, "Undef"
  vivify_576:
    unless $P109, if_1606_end
.annotate 'line', 592
    die "NQPClassHOW does not support adding parents after being composed."
  if_1606_end:
.annotate 'line', 594
    find_lex $P106, "$obj"
    unless_null $P106, vivify_577
    new $P106, "Undef"
  vivify_577:
    find_lex $P107, "$parent"
    unless_null $P107, vivify_578
    new $P107, "Undef"
  vivify_578:
    issame $I100, $P106, $P107
    unless $I100, if_1607_end
.annotate 'line', 595
    new $P108, 'String'
    set $P108, "Class '"
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P112, $P110, $P111, "$!name"
    unless_null $P112, vivify_579
    new $P112, "Undef"
  vivify_579:
    concat $P113, $P108, $P112
    concat $P114, $P113, "' cannot inherit from itself."
    die $P114
  if_1607_end:
.annotate 'line', 597
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1608, $P108, $P109, "@!parents"
    unless_null $P1608, vivify_580
    $P1608 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    defined $I100, $P1608
    unless $I100, for_undef_581
    iter $P106, $P1608
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1613_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1613_test:
    unless $P106, loop1613_done
    shift $P110, $P106
  loop1613_redo:
    .const 'Sub' $P1610 = "96_1315057448.686" 
    capture_lex $P1610
    $P1610($P110)
  loop1613_next:
    goto loop1613_test
  loop1613_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1613_next
    eq $P113, .CONTROL_LOOP_REDO, loop1613_redo
  loop1613_done:
    pop_eh 
  for_undef_581:
.annotate 'line', 602
    find_lex $P106, "$parent"
    unless_null $P106, vivify_585
    new $P106, "Undef"
  vivify_585:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1614, $P108, $P109, "@!parents"
    unless_null $P1614, vivify_586
    $P1614 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    set $N100, $P1614
    set $I100, $N100
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1615, $P111, $P112, "@!parents"
    unless_null $P1615, vivify_587
    $P1615 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P111, $P112, "@!parents", $P1615
  vivify_587:
    set $P1615[$I100], $P106
.annotate 'line', 590
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1609"  :anon :subid("96_1315057448.686") :outer("95_1315057448.686")
    .param pmc param_1611
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 597
    .lex "$_", param_1611
.annotate 'line', 598
    find_lex $P112, "$_"
    unless_null $P112, vivify_582
    new $P112, "Undef"
  vivify_582:
    find_lex $P113, "$parent"
    unless_null $P113, vivify_583
    new $P113, "Undef"
  vivify_583:
    issame $I101, $P112, $P113
    if $I101, if_1612
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1612_end
  if_1612:
.annotate 'line', 599
    new $P114, "String"
    assign $P114, "Already have "
    find_lex $P115, "$parent"
    unless_null $P115, vivify_584
    new $P115, "Undef"
  vivify_584:
    concat $P116, $P114, $P115
    concat $P117, $P116, " as a parent class."
    die $P117
  if_1612_end:
.annotate 'line', 597
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("97_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1617
    .param pmc param_1618
    .param pmc param_1619
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 605
    .lex "self", param_1617
    .lex "$obj", param_1618
    .lex "$parent", param_1619
.annotate 'line', 606
    find_lex $P106, "$parent"
    unless_null $P106, vivify_588
    new $P106, "Undef"
  vivify_588:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!default_parent", $P106
.annotate 'line', 605
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("98_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1621
    .param pmc param_1622
    .param pmc param_1623
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 609
    .const 'Sub' $P1626 = "99_1315057448.686" 
    capture_lex $P1626
    .lex "self", param_1621
    .lex "$obj", param_1622
    .lex "$role", param_1623
.annotate 'line', 610
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1624, $P108, $P109, "@!roles"
    unless_null $P1624, vivify_589
    $P1624 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    defined $I100, $P1624
    unless $I100, for_undef_590
    iter $P106, $P1624
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1629_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1629_test:
    unless $P106, loop1629_done
    shift $P110, $P106
  loop1629_redo:
    .const 'Sub' $P1626 = "99_1315057448.686" 
    capture_lex $P1626
    $P1626($P110)
  loop1629_next:
    goto loop1629_test
  loop1629_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1629_next
    eq $P113, .CONTROL_LOOP_REDO, loop1629_redo
  loop1629_done:
    pop_eh 
  for_undef_590:
.annotate 'line', 615
    find_lex $P106, "$role"
    unless_null $P106, vivify_594
    new $P106, "Undef"
  vivify_594:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1630, $P108, $P109, "@!roles"
    unless_null $P1630, vivify_595
    $P1630 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    set $N100, $P1630
    set $I100, $N100
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1631, $P111, $P112, "@!roles"
    unless_null $P1631, vivify_596
    $P1631 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P111, $P112, "@!roles", $P1631
  vivify_596:
    set $P1631[$I100], $P106
.annotate 'line', 609
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1625"  :anon :subid("99_1315057448.686") :outer("98_1315057448.686")
    .param pmc param_1627
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 610
    .lex "$_", param_1627
.annotate 'line', 611
    find_lex $P112, "$_"
    unless_null $P112, vivify_591
    new $P112, "Undef"
  vivify_591:
    find_lex $P113, "$role"
    unless_null $P113, vivify_592
    new $P113, "Undef"
  vivify_592:
    issame $I101, $P112, $P113
    if $I101, if_1628
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1628_end
  if_1628:
.annotate 'line', 612
    new $P114, "String"
    assign $P114, "The role "
    find_lex $P115, "$role"
    unless_null $P115, vivify_593
    new $P115, "Undef"
  vivify_593:
    concat $P116, $P114, $P115
    concat $P117, $P116, " has already been added."
    die $P117
  if_1628_end:
.annotate 'line', 610
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("100_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1633
    .param pmc param_1634
    .param pmc param_1635
    .param pmc param_1636
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 618
    .lex "self", param_1633
    .lex "$obj", param_1634
    .lex "$name", param_1635
    .lex "$meth", param_1636
.annotate 'line', 619
    find_lex $P106, "$name"
    unless_null $P106, vivify_597
    new $P106, "Undef"
  vivify_597:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1638, $P108, $P109, "%!parrot_vtable_mapping"
    unless_null $P1638, vivify_598
    $P1638 = root_new ['parrot';'Hash']
  vivify_598:
    set $P110, $P1638[$P106]
    unless_null $P110, vivify_599
    new $P110, "Undef"
  vivify_599:
    defined $I100, $P110
    unless $I100, if_1637_end
.annotate 'line', 620
    new $P111, "String"
    assign $P111, "Class '"
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P115, $P113, $P114, "$!name"
    unless_null $P115, vivify_600
    new $P115, "Undef"
  vivify_600:
    concat $P116, $P111, $P115
    concat $P117, $P116, "' already has a Parrot v-table override for '"
    find_lex $P118, "$name"
    unless_null $P118, vivify_601
    new $P118, "Undef"
  vivify_601:
    concat $P119, $P117, $P118
.annotate 'line', 621
    concat $P120, $P119, "'"
.annotate 'line', 622
    die $P120
  if_1637_end:
.annotate 'line', 624
    find_lex $P106, "$meth"
    unless_null $P106, vivify_602
    new $P106, "Undef"
  vivify_602:
    find_lex $P107, "$name"
    unless_null $P107, vivify_603
    new $P107, "Undef"
  vivify_603:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1639, $P109, $P110, "%!parrot_vtable_mapping"
    unless_null $P1639, vivify_604
    $P1639 = root_new ['parrot';'Hash']
    setattribute $P109, $P110, "%!parrot_vtable_mapping", $P1639
  vivify_604:
    set $P1639[$P107], $P106
.annotate 'line', 618
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("101_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1641
    .param pmc param_1642
    .param pmc param_1643
    .param pmc param_1644
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 627
    .lex "self", param_1641
    .lex "$obj", param_1642
    .lex "$name", param_1643
    .lex "$att_name", param_1644
.annotate 'line', 628
    find_lex $P106, "$name"
    unless_null $P106, vivify_605
    new $P106, "Undef"
  vivify_605:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1646, $P108, $P109, "%!parrot_vtable_handler_mapping"
    unless_null $P1646, vivify_606
    $P1646 = root_new ['parrot';'Hash']
  vivify_606:
    set $P110, $P1646[$P106]
    unless_null $P110, vivify_607
    new $P110, "Undef"
  vivify_607:
    defined $I100, $P110
    unless $I100, if_1645_end
.annotate 'line', 629
    new $P111, "String"
    assign $P111, "Class '"
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P115, $P113, $P114, "$!name"
    unless_null $P115, vivify_608
    new $P115, "Undef"
  vivify_608:
    concat $P116, $P111, $P115
    concat $P117, $P116, "' already has a Parrot v-table handler for '"
    find_lex $P118, "$name"
    unless_null $P118, vivify_609
    new $P118, "Undef"
  vivify_609:
    concat $P119, $P117, $P118
.annotate 'line', 630
    concat $P120, $P119, "'"
.annotate 'line', 631
    die $P120
  if_1645_end:
.annotate 'line', 633
    find_lex $P106, "$obj"
    unless_null $P106, vivify_610
    new $P106, "Undef"
  vivify_610:
    find_lex $P107, "$att_name"
    unless_null $P107, vivify_611
    new $P107, "Undef"
  vivify_611:
    new $P108, "ResizablePMCArray"
    push $P108, $P106
    push $P108, $P107
    find_lex $P109, "$name"
    unless_null $P109, vivify_612
    new $P109, "Undef"
  vivify_612:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1647, $P111, $P112, "%!parrot_vtable_handler_mapping"
    unless_null $P1647, vivify_613
    $P1647 = root_new ['parrot';'Hash']
    setattribute $P111, $P112, "%!parrot_vtable_handler_mapping", $P1647
  vivify_613:
    set $P1647[$P109], $P108
.annotate 'line', 627
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("102_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1649
    .param pmc param_1650
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 636
    .const 'Sub' $P1675 = "105_1315057448.686" 
    capture_lex $P1675
    .const 'Sub' $P1654 = "103_1315057448.686" 
    capture_lex $P1654
    .lex "self", param_1649
    .lex "$obj", param_1650
.annotate 'line', 640
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1652, $P107, $P108, "@!roles"
    unless_null $P1652, vivify_614
    $P1652 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    unless $P1652, if_1651_end
    .const 'Sub' $P1654 = "103_1315057448.686" 
    capture_lex $P1654
    $P1654()
  if_1651_end:
.annotate 'line', 653
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1672, $P108, $P109, "@!parents"
    unless_null $P1672, vivify_631
    $P1672 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    set $N100, $P1672
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1671
    new $P106, 'Integer'
    set $P106, $I100
    goto if_1671_end
  if_1671:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_632
    new $P113, "Undef"
  vivify_632:
    set $S100, $P113
    isne $I101, $S100, "NQPMu"
    new $P106, 'Integer'
    set $P106, $I101
  if_1671_end:
    unless $P106, if_1670_end
.annotate 'line', 654
    find_lex $P114, "self"
    find_lex $P115, "$obj"
    unless_null $P115, vivify_633
    new $P115, "Undef"
  vivify_633:
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P119, $P117, $P118, "$!default_parent"
    unless_null $P119, vivify_634
    new $P119, "Undef"
  vivify_634:
    $P114."add_parent"($P115, $P119)
  if_1670_end:
.annotate 'line', 659
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!composed"
    unless_null $P109, vivify_635
    new $P109, "Undef"
  vivify_635:
    if $P109, unless_1673_end
.annotate 'line', 660
    find_lex $P110, "$obj"
    unless_null $P110, vivify_636
    new $P110, "Undef"
  vivify_636:
    $P111 = "compute_c3_mro"($P110)
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    setattribute $P113, $P114, "@!mro", $P111
.annotate 'line', 661
    new $P110, "Float"
    assign $P110, 1
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    setattribute $P112, $P113, "$!composed", $P110
  unless_1673_end:
.annotate 'line', 665
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_637
    new $P107, "Undef"
  vivify_637:
    $P106."incorporate_multi_candidates"($P107)
.annotate 'line', 668
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_638
    new $P108, "Undef"
  vivify_638:
    $P109 = $P107."attributes"($P108, "0" :named("local"))
    defined $I100, $P109
    unless $I100, for_undef_639
    iter $P106, $P109
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1677_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1677_test:
    unless $P106, loop1677_done
    shift $P110, $P106
  loop1677_redo:
    .const 'Sub' $P1675 = "105_1315057448.686" 
    capture_lex $P1675
    $P1675($P110)
  loop1677_next:
    goto loop1677_test
  loop1677_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1677_next
    eq $P112, .CONTROL_LOOP_REDO, loop1677_redo
  loop1677_done:
    pop_eh 
  for_undef_639:
.annotate 'line', 671
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_642
    new $P107, "Undef"
  vivify_642:
    $P106."publish_type_cache"($P107)
.annotate 'line', 672
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_643
    new $P107, "Undef"
  vivify_643:
    $P106."publish_method_cache"($P107)
.annotate 'line', 673
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    $P106."publish_boolification_spec"($P107)
.annotate 'line', 676
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_645
    new $P107, "Undef"
  vivify_645:
    $P106."publish_parrot_vtable_mapping"($P107)
.annotate 'line', 677
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_646
    new $P107, "Undef"
  vivify_646:
    $P106."publish_parrot_vtablee_handler_mapping"($P107)
.annotate 'line', 636
    find_lex $P106, "$obj"
    unless_null $P106, vivify_647
    new $P106, "Undef"
  vivify_647:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1653"  :anon :subid("103_1315057448.686") :outer("102_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 640
    .const 'Sub' $P1660 = "104_1315057448.686" 
    capture_lex $P1660
.annotate 'line', 641
    $P1656 = root_new ['parrot';'ResizablePMCArray']
    set $P1655, $P1656
    .lex "@specialized_roles", $P1655
.annotate 'line', 640
    find_lex $P1657, "@specialized_roles"
    unless_null $P1657, vivify_615
    $P1657 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
.annotate 'line', 642
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1658, $P111, $P112, "@!roles"
    unless_null $P1658, vivify_616
    $P1658 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    defined $I100, $P1658
    unless $I100, for_undef_617
    iter $P109, $P1658
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1668_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1668_test:
    unless $P109, loop1668_done
    shift $P113, $P109
  loop1668_redo:
    .const 'Sub' $P1660 = "104_1315057448.686" 
    capture_lex $P1660
    $P1660($P113)
  loop1668_next:
    goto loop1668_test
  loop1668_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1668_next
    eq $P117, .CONTROL_LOOP_REDO, loop1668_redo
  loop1668_done:
    pop_eh 
  for_undef_617:
.annotate 'line', 648
    find_lex $P109, "RoleToClassApplier"
    find_lex $P110, "$obj"
    unless_null $P110, vivify_629
    new $P110, "Undef"
  vivify_629:
    find_lex $P1669, "@specialized_roles"
    unless_null $P1669, vivify_630
    $P1669 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    $P111 = $P109."apply"($P110, $P1669)
.annotate 'line', 640
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1659"  :anon :subid("104_1315057448.686") :outer("103_1315057448.686")
    .param pmc param_1662
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 643
    new $P114, "Undef"
    set $P1661, $P114
    .lex "$ins", $P1661
    .lex "$_", param_1662
    find_lex $P115, "$_"
    unless_null $P115, vivify_618
    new $P115, "Undef"
  vivify_618:
    get_how $P116, $P115
    find_lex $P117, "$_"
    unless_null $P117, vivify_619
    new $P117, "Undef"
  vivify_619:
    find_lex $P118, "$obj"
    unless_null $P118, vivify_620
    new $P118, "Undef"
  vivify_620:
    $P119 = $P116."specialize"($P117, $P118)
    store_lex "$ins", $P119
.annotate 'line', 644
    find_lex $P1663, "@specialized_roles"
    unless_null $P1663, vivify_621
    $P1663 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    find_lex $P115, "$ins"
    unless_null $P115, vivify_622
    new $P115, "Undef"
  vivify_622:
    $P1663."push"($P115)
.annotate 'line', 645
    find_lex $P115, "$_"
    unless_null $P115, vivify_623
    new $P115, "Undef"
  vivify_623:
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P1664, $P117, $P118, "@!done"
    unless_null $P1664, vivify_624
    $P1664 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    set $N100, $P1664
    set $I101, $N100
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    getattribute $P1665, $P120, $P121, "@!done"
    unless_null $P1665, vivify_625
    $P1665 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P120, $P121, "@!done", $P1665
  vivify_625:
    set $P1665[$I101], $P115
.annotate 'line', 646
    find_lex $P115, "$ins"
    unless_null $P115, vivify_626
    new $P115, "Undef"
  vivify_626:
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P1666, $P117, $P118, "@!done"
    unless_null $P1666, vivify_627
    $P1666 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    set $N100, $P1666
    set $I101, $N100
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    getattribute $P1667, $P120, $P121, "@!done"
    unless_null $P1667, vivify_628
    $P1667 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P120, $P121, "@!done", $P1667
  vivify_628:
    set $P1667[$I101], $P115
.annotate 'line', 642
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1674"  :anon :subid("105_1315057448.686") :outer("102_1315057448.686")
    .param pmc param_1676
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 668
    .lex "$_", param_1676
    find_lex $P111, "$_"
    unless_null $P111, vivify_640
    new $P111, "Undef"
  vivify_640:
    find_lex $P112, "$obj"
    unless_null $P112, vivify_641
    new $P112, "Undef"
  vivify_641:
    $P113 = $P111."compose"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("106_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1679
    .param pmc param_1680
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 682
    .const 'Sub' $P1685 = "107_1315057448.686" 
    capture_lex $P1685
    .lex "self", param_1679
    .lex "$obj", param_1680
.annotate 'line', 683
    new $P106, "Undef"
    set $P1681, $P106
    .lex "$num_todo", $P1681
.annotate 'line', 684
    new $P107, "Undef"
    set $P1682, $P107
    .lex "$i", $P1682
.annotate 'line', 683
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1683, $P109, $P110, "@!multi_methods_to_incorporate"
    unless_null $P1683, vivify_648
    $P1683 = root_new ['parrot';'ResizablePMCArray']
  vivify_648:
    set $N100, $P1683
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$num_todo", $P111
.annotate 'line', 684
    new $P108, "Float"
    assign $P108, 0
    store_lex "$i", $P108
.annotate 'line', 685
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1725_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1725_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_649
    new $P108, "Undef"
  vivify_649:
    set $N100, $P108
    find_lex $P109, "$num_todo"
    unless_null $P109, vivify_650
    new $P109, "Undef"
  vivify_650:
    set $N101, $P109
    isne $I100, $N100, $N101
    unless $I100, loop1725_done
  loop1725_redo:
    .const 'Sub' $P1685 = "107_1315057448.686" 
    capture_lex $P1685
    $P1685()
  loop1725_next:
    goto loop1725_test
  loop1725_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1725_next
    eq $P115, .CONTROL_LOOP_REDO, loop1725_redo
  loop1725_done:
    pop_eh 
.annotate 'line', 682
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1684"  :anon :subid("107_1315057448.686") :outer("106_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 685
    .const 'Sub' $P1697 = "108_1315057448.686" 
    capture_lex $P1697
.annotate 'line', 687
    new $P110, "Undef"
    set $P1686, $P110
    .lex "$name", $P1686
.annotate 'line', 688
    new $P111, "Undef"
    set $P1687, $P111
    .lex "$code", $P1687
.annotate 'line', 692
    new $P112, "Undef"
    set $P1688, $P112
    .lex "$dispatcher", $P1688
.annotate 'line', 687
    find_lex $P113, "$i"
    unless_null $P113, vivify_651
    new $P113, "Undef"
  vivify_651:
    set $I101, $P113
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    getattribute $P1689, $P115, $P116, "@!multi_methods_to_incorporate"
    unless_null $P1689, vivify_652
    $P1689 = root_new ['parrot';'ResizablePMCArray']
  vivify_652:
    set $P1690, $P1689[$I101]
    unless_null $P1690, vivify_653
    $P1690 = root_new ['parrot';'Hash']
  vivify_653:
    set $P117, $P1690["name"]
    unless_null $P117, vivify_654
    new $P117, "Undef"
  vivify_654:
    store_lex "$name", $P117
.annotate 'line', 688
    find_lex $P113, "$i"
    unless_null $P113, vivify_655
    new $P113, "Undef"
  vivify_655:
    set $I101, $P113
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    getattribute $P1691, $P115, $P116, "@!multi_methods_to_incorporate"
    unless_null $P1691, vivify_656
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_656:
    set $P1692, $P1691[$I101]
    unless_null $P1692, vivify_657
    $P1692 = root_new ['parrot';'Hash']
  vivify_657:
    set $P117, $P1692["code"]
    unless_null $P117, vivify_658
    new $P117, "Undef"
  vivify_658:
    store_lex "$code", $P117
.annotate 'line', 692
    find_lex $P113, "$name"
    unless_null $P113, vivify_659
    new $P113, "Undef"
  vivify_659:
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    getattribute $P1693, $P115, $P116, "%!methods"
    unless_null $P1693, vivify_660
    $P1693 = root_new ['parrot';'Hash']
  vivify_660:
    set $P117, $P1693[$P113]
    unless_null $P117, vivify_661
    new $P117, "Undef"
  vivify_661:
    store_lex "$dispatcher", $P117
.annotate 'line', 693
    find_lex $P113, "$dispatcher"
    unless_null $P113, vivify_662
    new $P113, "Undef"
  vivify_662:
    defined $I101, $P113
    if $I101, if_1694
.annotate 'line', 703
    .const 'Sub' $P1697 = "108_1315057448.686" 
    capture_lex $P1697
    $P1697()
    goto if_1694_end
  if_1694:
.annotate 'line', 696
    find_lex $P114, "$dispatcher"
    unless_null $P114, vivify_693
    new $P114, "Undef"
  vivify_693:
    is_dispatcher $I102, $P114
    if $I102, if_1695
.annotate 'line', 700
    new $P115, 'String'
    set $P115, "Cannot have a multi candidate for "
    find_lex $P116, "$name"
    unless_null $P116, vivify_694
    new $P116, "Undef"
  vivify_694:
    concat $P117, $P115, $P116
    concat $P118, $P117, " when an only method is also in the class"
    die $P118
.annotate 'line', 699
    goto if_1695_end
  if_1695:
.annotate 'line', 697
    find_lex $P115, "$dispatcher"
    unless_null $P115, vivify_695
    new $P115, "Undef"
  vivify_695:
    find_lex $P116, "$code"
    unless_null $P116, vivify_696
    new $P116, "Undef"
  vivify_696:
    push_dispatchee $P115, $P116
  if_1695_end:
  if_1694_end:
.annotate 'line', 736
    find_lex $P113, "$i"
    unless_null $P113, vivify_697
    new $P113, "Undef"
  vivify_697:
    add $P114, $P113, 1
    store_lex "$i", $P114
.annotate 'line', 685
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1696"  :anon :subid("108_1315057448.686") :outer("107_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 703
    .const 'Sub' $P1703 = "109_1315057448.686" 
    capture_lex $P1703
.annotate 'line', 705
    new $P114, "Undef"
    set $P1698, $P114
    .lex "$j", $P1698
.annotate 'line', 706
    new $P115, "Undef"
    set $P1699, $P115
    .lex "$found", $P1699
.annotate 'line', 705
    new $P116, "Float"
    assign $P116, 1
    store_lex "$j", $P116
.annotate 'line', 706
    new $P116, "Float"
    assign $P116, 0
    store_lex "$found", $P116
.annotate 'line', 707
    new $P124, 'ExceptionHandler'
    set_label $P124, loop1723_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop1723_test:
    find_lex $P117, "$j"
    unless_null $P117, vivify_663
    new $P117, "Undef"
  vivify_663:
    set $N102, $P117
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    getattribute $P1701, $P119, $P120, "@!mro"
    unless_null $P1701, vivify_664
    $P1701 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    set $N103, $P1701
    isne $I102, $N102, $N103
    if $I102, if_1700
    new $P116, 'Integer'
    set $P116, $I102
    goto if_1700_end
  if_1700:
    find_lex $P121, "$found"
    unless_null $P121, vivify_665
    new $P121, "Undef"
  vivify_665:
    isfalse $I103, $P121
    new $P116, 'Integer'
    set $P116, $I103
  if_1700_end:
    unless $P116, loop1723_done
  loop1723_redo:
    .const 'Sub' $P1703 = "109_1315057448.686" 
    capture_lex $P1703
    $P1703()
  loop1723_next:
    goto loop1723_test
  loop1723_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1723_next
    eq $P126, .CONTROL_LOOP_REDO, loop1723_redo
  loop1723_done:
    pop_eh 
.annotate 'line', 732
    find_lex $P117, "$found"
    unless_null $P117, vivify_691
    new $P117, "Undef"
  vivify_691:
    unless $P117, unless_1724
    set $P116, $P117
    goto unless_1724_end
  unless_1724:
.annotate 'line', 733
    new $P118, 'String'
    set $P118, "Could not find a proto for multi "
    find_lex $P119, "$name"
    unless_null $P119, vivify_692
    new $P119, "Undef"
  vivify_692:
    concat $P120, $P118, $P119
    concat $P121, $P120, ", and proto generation is NYI"
    die $P121
  unless_1724_end:
.annotate 'line', 703
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1702"  :anon :subid("109_1315057448.686") :outer("108_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 707
    .const 'Sub' $P1713 = "110_1315057448.686" 
    capture_lex $P1713
.annotate 'line', 708
    new $P122, "Undef"
    set $P1704, $P122
    .lex "$parent", $P1704
.annotate 'line', 709
    $P1706 = root_new ['parrot';'Hash']
    set $P1705, $P1706
    .lex "%meths", $P1705
.annotate 'line', 710
    new $P123, "Undef"
    set $P1707, $P123
    .lex "$dispatcher", $P1707
.annotate 'line', 708
    find_lex $P124, "$j"
    unless_null $P124, vivify_666
    new $P124, "Undef"
  vivify_666:
    set $I104, $P124
    find_lex $P125, "self"
    nqp_decontainerize $P126, $P125
    find_lex $P127, "$?CLASS"
    getattribute $P1708, $P126, $P127, "@!mro"
    unless_null $P1708, vivify_667
    $P1708 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $P128, $P1708[$I104]
    unless_null $P128, vivify_668
    new $P128, "Undef"
  vivify_668:
    store_lex "$parent", $P128
.annotate 'line', 709
    find_lex $P124, "$parent"
    unless_null $P124, vivify_669
    new $P124, "Undef"
  vivify_669:
    get_how $P125, $P124
    find_lex $P126, "$parent"
    unless_null $P126, vivify_670
    new $P126, "Undef"
  vivify_670:
    $P127 = $P125."method_table"($P126)
    store_lex "%meths", $P127
.annotate 'line', 710
    find_lex $P124, "$name"
    unless_null $P124, vivify_671
    new $P124, "Undef"
  vivify_671:
    find_lex $P1709, "%meths"
    unless_null $P1709, vivify_672
    $P1709 = root_new ['parrot';'Hash']
  vivify_672:
    set $P125, $P1709[$P124]
    unless_null $P125, vivify_673
    new $P125, "Undef"
  vivify_673:
    store_lex "$dispatcher", $P125
.annotate 'line', 711
    find_lex $P124, "$dispatcher"
    unless_null $P124, vivify_674
    new $P124, "Undef"
  vivify_674:
    defined $I104, $P124
    unless $I104, if_1710_end
.annotate 'line', 714
    find_lex $P125, "$dispatcher"
    unless_null $P125, vivify_675
    new $P125, "Undef"
  vivify_675:
    is_dispatcher $I105, $P125
    if $I105, if_1711
.annotate 'line', 727
    new $P129, 'String'
    set $P129, "Could not find a proto for multi "
    find_lex $P130, "$name"
    unless_null $P130, vivify_676
    new $P130, "Undef"
  vivify_676:
    concat $P131, $P129, $P130
    concat $P132, $P131, " (it may exist, but an only is hiding it if so)"
    die $P132
.annotate 'line', 726
    goto if_1711_end
  if_1711:
.annotate 'line', 714
    .const 'Sub' $P1713 = "110_1315057448.686" 
    capture_lex $P1713
    $P1713()
  if_1711_end:
  if_1710_end:
.annotate 'line', 730
    find_lex $P124, "$j"
    unless_null $P124, vivify_690
    new $P124, "Undef"
  vivify_690:
    add $P125, $P124, 1
    store_lex "$j", $P125
.annotate 'line', 707
    .return ($P125)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1712"  :anon :subid("110_1315057448.686") :outer("109_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 716
    $P1715 = root_new ['parrot';'ResizablePMCArray']
    set $P1714, $P1715
    .lex "@new_dispatchees", $P1714
.annotate 'line', 718
    new $P126, "Undef"
    set $P1716, $P126
    .lex "$new_disp", $P1716
.annotate 'line', 719
    new $P127, "Undef"
    set $P1717, $P127
    .lex "$clone_callback", $P1717
.annotate 'line', 714
    find_lex $P1718, "@new_dispatchees"
    unless_null $P1718, vivify_677
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_677:
.annotate 'line', 717
    find_lex $P128, "$code"
    unless_null $P128, vivify_678
    new $P128, "Undef"
  vivify_678:
    new $P129, "Float"
    assign $P129, 0
    set $I106, $P129
    find_lex $P1719, "@new_dispatchees"
    unless_null $P1719, vivify_679
    $P1719 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1719
  vivify_679:
    set $P1719[$I106], $P128
.annotate 'line', 718
    find_lex $P128, "$dispatcher"
    unless_null $P128, vivify_680
    new $P128, "Undef"
  vivify_680:
    find_lex $P1720, "@new_dispatchees"
    unless_null $P1720, vivify_681
    $P1720 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    create_dispatch_and_add_candidates $P129, $P128, $P1720
    store_lex "$new_disp", $P129
.annotate 'line', 719
    find_lex $P128, "$dispatcher"
    unless_null $P128, vivify_682
    new $P128, "Undef"
  vivify_682:
    getprop $P129, "CLONE_CALLBACK", $P128
    store_lex "$clone_callback", $P129
.annotate 'line', 720
    find_lex $P128, "$clone_callback"
    unless_null $P128, vivify_683
    new $P128, "Undef"
  vivify_683:
    defined $I106, $P128
    unless $I106, if_1721_end
.annotate 'line', 721
    find_lex $P129, "$clone_callback"
    unless_null $P129, vivify_684
    new $P129, "Undef"
  vivify_684:
    find_lex $P130, "$dispatcher"
    unless_null $P130, vivify_685
    new $P130, "Undef"
  vivify_685:
    find_lex $P131, "$new_disp"
    unless_null $P131, vivify_686
    new $P131, "Undef"
  vivify_686:
    $P129($P130, $P131)
  if_1721_end:
.annotate 'line', 723
    find_lex $P128, "$new_disp"
    unless_null $P128, vivify_687
    new $P128, "Undef"
  vivify_687:
    find_lex $P129, "$name"
    unless_null $P129, vivify_688
    new $P129, "Undef"
  vivify_688:
    find_lex $P130, "self"
    nqp_decontainerize $P131, $P130
    find_lex $P132, "$?CLASS"
    getattribute $P1722, $P131, $P132, "%!methods"
    unless_null $P1722, vivify_689
    $P1722 = root_new ['parrot';'Hash']
    setattribute $P131, $P132, "%!methods", $P1722
  vivify_689:
    set $P1722[$P129], $P128
.annotate 'line', 724
    new $P128, "Float"
    assign $P128, 1
    store_lex "$found", $P128
.annotate 'line', 714
    .return ($P128)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("111_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1727
    .param pmc param_1728
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 829
    .const 'Sub' $P1740 = "113_1315057448.686" 
    capture_lex $P1740
    .const 'Sub' $P1734 = "112_1315057448.686" 
    capture_lex $P1734
    .lex "self", param_1727
    .lex "$obj", param_1728
.annotate 'line', 830
    $P1730 = root_new ['parrot';'ResizablePMCArray']
    set $P1729, $P1730
    .lex "@tc", $P1729
.annotate 'line', 829
    find_lex $P1731, "@tc"
    unless_null $P1731, vivify_698
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
.annotate 'line', 831
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1732, $P108, $P109, "@!mro"
    unless_null $P1732, vivify_699
    $P1732 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    defined $I100, $P1732
    unless $I100, for_undef_700
    iter $P106, $P1732
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1737_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1737_test:
    unless $P106, loop1737_done
    shift $P110, $P106
  loop1737_redo:
    .const 'Sub' $P1734 = "112_1315057448.686" 
    capture_lex $P1734
    $P1734($P110)
  loop1737_next:
    goto loop1737_test
  loop1737_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1737_next
    eq $P113, .CONTROL_LOOP_REDO, loop1737_redo
  loop1737_done:
    pop_eh 
  for_undef_700:
.annotate 'line', 832
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1738, $P108, $P109, "@!done"
    unless_null $P1738, vivify_703
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    defined $I100, $P1738
    unless $I100, for_undef_704
    iter $P106, $P1738
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1743_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1743_test:
    unless $P106, loop1743_done
    shift $P110, $P106
  loop1743_redo:
    .const 'Sub' $P1740 = "113_1315057448.686" 
    capture_lex $P1740
    $P1740($P110)
  loop1743_next:
    goto loop1743_test
  loop1743_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1743_next
    eq $P113, .CONTROL_LOOP_REDO, loop1743_redo
  loop1743_done:
    pop_eh 
  for_undef_704:
.annotate 'line', 833
    find_lex $P106, "$obj"
    unless_null $P106, vivify_707
    new $P106, "Undef"
  vivify_707:
    find_lex $P1744, "@tc"
    unless_null $P1744, vivify_708
    $P1744 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    publish_type_check_cache $P106, $P1744
.annotate 'line', 829
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1733"  :anon :subid("112_1315057448.686") :outer("111_1315057448.686")
    .param pmc param_1735
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 831
    .lex "$_", param_1735
    find_lex $P1736, "@tc"
    unless_null $P1736, vivify_701
    $P1736 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    find_lex $P111, "$_"
    unless_null $P111, vivify_702
    new $P111, "Undef"
  vivify_702:
    $P112 = $P1736."push"($P111)
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1739"  :anon :subid("113_1315057448.686") :outer("111_1315057448.686")
    .param pmc param_1741
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 832
    .lex "$_", param_1741
    find_lex $P1742, "@tc"
    unless_null $P1742, vivify_705
    $P1742 = root_new ['parrot';'ResizablePMCArray']
  vivify_705:
    find_lex $P111, "$_"
    unless_null $P111, vivify_706
    new $P111, "Undef"
  vivify_706:
    $P112 = $P1742."push"($P111)
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("114_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1746
    .param pmc param_1747
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 836
    .const 'Sub' $P1753 = "115_1315057448.686" 
    capture_lex $P1753
    .lex "self", param_1746
    .lex "$obj", param_1747
.annotate 'line', 839
    $P1749 = root_new ['parrot';'Hash']
    set $P1748, $P1749
    .lex "%cache", $P1748
.annotate 'line', 836
    find_lex $P1750, "%cache"
    unless_null $P1750, vivify_709
    $P1750 = root_new ['parrot';'Hash']
  vivify_709:
.annotate 'line', 840
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1751, $P108, $P109, "@!mro"
    unless_null $P1751, vivify_710
    $P1751 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    defined $I100, $P1751
    unless $I100, for_undef_711
    iter $P106, $P1751
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1765_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1765_test:
    unless $P106, loop1765_done
    shift $P110, $P106
  loop1765_redo:
    .const 'Sub' $P1753 = "115_1315057448.686" 
    capture_lex $P1753
    $P1753($P110)
  loop1765_next:
    goto loop1765_test
  loop1765_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1765_next
    eq $P113, .CONTROL_LOOP_REDO, loop1765_redo
  loop1765_done:
    pop_eh 
  for_undef_711:
.annotate 'line', 848
    find_lex $P106, "$obj"
    unless_null $P106, vivify_722
    new $P106, "Undef"
  vivify_722:
    find_lex $P1766, "%cache"
    unless_null $P1766, vivify_723
    $P1766 = root_new ['parrot';'Hash']
  vivify_723:
    publish_method_cache $P106, $P1766
.annotate 'line', 836
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1752"  :anon :subid("115_1315057448.686") :outer("114_1315057448.686")
    .param pmc param_1756
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 840
    .const 'Sub' $P1759 = "116_1315057448.686" 
    capture_lex $P1759
.annotate 'line', 841
    $P1755 = root_new ['parrot';'Hash']
    set $P1754, $P1755
    .lex "%methods", $P1754
    .lex "$_", param_1756
    find_lex $P111, "$_"
    unless_null $P111, vivify_712
    new $P111, "Undef"
  vivify_712:
    get_how $P112, $P111
    find_lex $P113, "$_"
    unless_null $P113, vivify_713
    new $P113, "Undef"
  vivify_713:
    $P114 = $P112."method_table"($P113)
    store_lex "%methods", $P114
.annotate 'line', 842
    find_lex $P1757, "%methods"
    unless_null $P1757, vivify_714
    $P1757 = root_new ['parrot';'Hash']
  vivify_714:
    defined $I101, $P1757
    unless $I101, for_undef_715
    iter $P111, $P1757
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1764_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1764_test:
    unless $P111, loop1764_done
    shift $P112, $P111
  loop1764_redo:
    .const 'Sub' $P1759 = "116_1315057448.686" 
    capture_lex $P1759
    $P1759($P112)
  loop1764_next:
    goto loop1764_test
  loop1764_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1764_next
    eq $P115, .CONTROL_LOOP_REDO, loop1764_redo
  loop1764_done:
    pop_eh 
  for_undef_715:
.annotate 'line', 840
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1758"  :anon :subid("116_1315057448.686") :outer("115_1315057448.686")
    .param pmc param_1760
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 842
    .lex "$_", param_1760
.annotate 'line', 843
    find_lex $P114, "$_"
    unless_null $P114, vivify_716
    new $P114, "Undef"
  vivify_716:
    $P115 = $P114."key"()
    find_lex $P1762, "%cache"
    unless_null $P1762, vivify_717
    $P1762 = root_new ['parrot';'Hash']
  vivify_717:
    set $P116, $P1762[$P115]
    unless_null $P116, vivify_718
    new $P116, "Undef"
  vivify_718:
    unless $P116, unless_1761
    set $P113, $P116
    goto unless_1761_end
  unless_1761:
.annotate 'line', 844
    find_lex $P117, "$_"
    unless_null $P117, vivify_719
    new $P117, "Undef"
  vivify_719:
    $P118 = $P117."value"()
    find_lex $P119, "$_"
    unless_null $P119, vivify_720
    new $P119, "Undef"
  vivify_720:
    $P120 = $P119."key"()
    find_lex $P1763, "%cache"
    unless_null $P1763, vivify_721
    $P1763 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1763
  vivify_721:
    set $P1763[$P120], $P118
.annotate 'line', 843
    set $P113, $P118
  unless_1761_end:
.annotate 'line', 842
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("117_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1768
    .param pmc param_1769
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 851
    .lex "self", param_1768
    .lex "$obj", param_1769
.annotate 'line', 852
    new $P106, "Undef"
    set $P1770, $P106
    .lex "$bool_meth", $P1770
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_724
    new $P108, "Undef"
  vivify_724:
    $P109 = $P107."find_method"($P108, "Bool")
    store_lex "$bool_meth", $P109
.annotate 'line', 853
    find_lex $P108, "$bool_meth"
    unless_null $P108, vivify_725
    new $P108, "Undef"
  vivify_725:
    defined $I100, $P108
    if $I100, if_1771
.annotate 'line', 857
    find_lex $P110, "$obj"
    unless_null $P110, vivify_726
    new $P110, "Undef"
  vivify_726:
    new $P111, "Float"
    assign $P111, 5
    set $I101, $P111
    null $P112
    set_boolification_spec $P110, $I101, $P112
.annotate 'line', 856
    set $P107, $P110
.annotate 'line', 853
    goto if_1771_end
  if_1771:
.annotate 'line', 854
    find_lex $P109, "$obj"
    unless_null $P109, vivify_727
    new $P109, "Undef"
  vivify_727:
    new $P110, "Float"
    assign $P110, 0
    set $I101, $P110
    find_lex $P111, "$bool_meth"
    unless_null $P111, vivify_728
    new $P111, "Undef"
  vivify_728:
    set_boolification_spec $P109, $I101, $P111
.annotate 'line', 853
    set $P107, $P109
  if_1771_end:
.annotate 'line', 851
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("118_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1773
    .param pmc param_1774
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 861
    .const 'Sub' $P1780 = "119_1315057448.686" 
    capture_lex $P1780
    .lex "self", param_1773
    .lex "$obj", param_1774
.annotate 'line', 862
    $P1776 = root_new ['parrot';'Hash']
    set $P1775, $P1776
    .lex "%mapping", $P1775
.annotate 'line', 861
    find_lex $P1777, "%mapping"
    unless_null $P1777, vivify_729
    $P1777 = root_new ['parrot';'Hash']
  vivify_729:
.annotate 'line', 863
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1778, $P108, $P109, "@!mro"
    unless_null $P1778, vivify_730
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_730:
    defined $I100, $P1778
    unless $I100, for_undef_731
    iter $P106, $P1778
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1792_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1792_test:
    unless $P106, loop1792_done
    shift $P110, $P106
  loop1792_redo:
    .const 'Sub' $P1780 = "119_1315057448.686" 
    capture_lex $P1780
    $P1780($P110)
  loop1792_next:
    goto loop1792_test
  loop1792_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1792_next
    eq $P113, .CONTROL_LOOP_REDO, loop1792_redo
  loop1792_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 871
    find_lex $P1794, "%mapping"
    unless_null $P1794, vivify_742
    $P1794 = root_new ['parrot';'Hash']
  vivify_742:
    set $N100, $P1794
    if $N100, if_1793
    new $P106, 'Float'
    set $P106, $N100
    goto if_1793_end
  if_1793:
.annotate 'line', 872
    find_lex $P107, "$obj"
    unless_null $P107, vivify_743
    new $P107, "Undef"
  vivify_743:
    find_lex $P1795, "%mapping"
    unless_null $P1795, vivify_744
    $P1795 = root_new ['parrot';'Hash']
  vivify_744:
    stable_publish_vtable_mapping $P107, $P1795
  if_1793_end:
.annotate 'line', 861
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1779"  :anon :subid("119_1315057448.686") :outer("118_1315057448.686")
    .param pmc param_1783
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 863
    .const 'Sub' $P1786 = "120_1315057448.686" 
    capture_lex $P1786
.annotate 'line', 864
    $P1782 = root_new ['parrot';'Hash']
    set $P1781, $P1782
    .lex "%map", $P1781
    .lex "$_", param_1783
    find_lex $P111, "$_"
    unless_null $P111, vivify_732
    new $P111, "Undef"
  vivify_732:
    get_how $P112, $P111
    find_lex $P113, "$_"
    unless_null $P113, vivify_733
    new $P113, "Undef"
  vivify_733:
    $P114 = $P112."parrot_vtable_mappings"($P113, 1 :named("local"))
    store_lex "%map", $P114
.annotate 'line', 865
    find_lex $P1784, "%map"
    unless_null $P1784, vivify_734
    $P1784 = root_new ['parrot';'Hash']
  vivify_734:
    defined $I101, $P1784
    unless $I101, for_undef_735
    iter $P111, $P1784
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1791_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1791_test:
    unless $P111, loop1791_done
    shift $P112, $P111
  loop1791_redo:
    .const 'Sub' $P1786 = "120_1315057448.686" 
    capture_lex $P1786
    $P1786($P112)
  loop1791_next:
    goto loop1791_test
  loop1791_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1791_next
    eq $P115, .CONTROL_LOOP_REDO, loop1791_redo
  loop1791_done:
    pop_eh 
  for_undef_735:
.annotate 'line', 863
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1785"  :anon :subid("120_1315057448.686") :outer("119_1315057448.686")
    .param pmc param_1787
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 865
    .lex "$_", param_1787
.annotate 'line', 866
    find_lex $P114, "$_"
    unless_null $P114, vivify_736
    new $P114, "Undef"
  vivify_736:
    $P115 = $P114."key"()
    find_lex $P1789, "%mapping"
    unless_null $P1789, vivify_737
    $P1789 = root_new ['parrot';'Hash']
  vivify_737:
    set $P116, $P1789[$P115]
    unless_null $P116, vivify_738
    new $P116, "Undef"
  vivify_738:
    unless $P116, unless_1788
    set $P113, $P116
    goto unless_1788_end
  unless_1788:
.annotate 'line', 867
    find_lex $P117, "$_"
    unless_null $P117, vivify_739
    new $P117, "Undef"
  vivify_739:
    $P118 = $P117."value"()
    find_lex $P119, "$_"
    unless_null $P119, vivify_740
    new $P119, "Undef"
  vivify_740:
    $P120 = $P119."key"()
    find_lex $P1790, "%mapping"
    unless_null $P1790, vivify_741
    $P1790 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1790
  vivify_741:
    set $P1790[$P120], $P118
.annotate 'line', 866
    set $P113, $P118
  unless_1788_end:
.annotate 'line', 865
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("121_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1797
    .param pmc param_1798
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 876
    .const 'Sub' $P1804 = "122_1315057448.686" 
    capture_lex $P1804
    .lex "self", param_1797
    .lex "$obj", param_1798
.annotate 'line', 877
    $P1800 = root_new ['parrot';'Hash']
    set $P1799, $P1800
    .lex "%mapping", $P1799
.annotate 'line', 876
    find_lex $P1801, "%mapping"
    unless_null $P1801, vivify_745
    $P1801 = root_new ['parrot';'Hash']
  vivify_745:
.annotate 'line', 878
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1802, $P108, $P109, "@!mro"
    unless_null $P1802, vivify_746
    $P1802 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    defined $I100, $P1802
    unless $I100, for_undef_747
    iter $P106, $P1802
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1816_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1816_test:
    unless $P106, loop1816_done
    shift $P110, $P106
  loop1816_redo:
    .const 'Sub' $P1804 = "122_1315057448.686" 
    capture_lex $P1804
    $P1804($P110)
  loop1816_next:
    goto loop1816_test
  loop1816_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1816_next
    eq $P113, .CONTROL_LOOP_REDO, loop1816_redo
  loop1816_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 886
    find_lex $P1818, "%mapping"
    unless_null $P1818, vivify_758
    $P1818 = root_new ['parrot';'Hash']
  vivify_758:
    set $N100, $P1818
    if $N100, if_1817
    new $P106, 'Float'
    set $P106, $N100
    goto if_1817_end
  if_1817:
.annotate 'line', 887
    find_lex $P107, "$obj"
    unless_null $P107, vivify_759
    new $P107, "Undef"
  vivify_759:
    find_lex $P1819, "%mapping"
    unless_null $P1819, vivify_760
    $P1819 = root_new ['parrot';'Hash']
  vivify_760:
    stable_publish_vtable_handler_mapping $P107, $P1819
  if_1817_end:
.annotate 'line', 876
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1803"  :anon :subid("122_1315057448.686") :outer("121_1315057448.686")
    .param pmc param_1807
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 878
    .const 'Sub' $P1810 = "123_1315057448.686" 
    capture_lex $P1810
.annotate 'line', 879
    $P1806 = root_new ['parrot';'Hash']
    set $P1805, $P1806
    .lex "%map", $P1805
    .lex "$_", param_1807
    find_lex $P111, "$_"
    unless_null $P111, vivify_748
    new $P111, "Undef"
  vivify_748:
    get_how $P112, $P111
    find_lex $P113, "$_"
    unless_null $P113, vivify_749
    new $P113, "Undef"
  vivify_749:
    $P114 = $P112."parrot_vtable_handler_mappings"($P113, 1 :named("local"))
    store_lex "%map", $P114
.annotate 'line', 880
    find_lex $P1808, "%map"
    unless_null $P1808, vivify_750
    $P1808 = root_new ['parrot';'Hash']
  vivify_750:
    defined $I101, $P1808
    unless $I101, for_undef_751
    iter $P111, $P1808
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1815_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1815_test:
    unless $P111, loop1815_done
    shift $P112, $P111
  loop1815_redo:
    .const 'Sub' $P1810 = "123_1315057448.686" 
    capture_lex $P1810
    $P1810($P112)
  loop1815_next:
    goto loop1815_test
  loop1815_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1815_next
    eq $P115, .CONTROL_LOOP_REDO, loop1815_redo
  loop1815_done:
    pop_eh 
  for_undef_751:
.annotate 'line', 878
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1809"  :anon :subid("123_1315057448.686") :outer("122_1315057448.686")
    .param pmc param_1811
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 880
    .lex "$_", param_1811
.annotate 'line', 881
    find_lex $P114, "$_"
    unless_null $P114, vivify_752
    new $P114, "Undef"
  vivify_752:
    $P115 = $P114."key"()
    find_lex $P1813, "%mapping"
    unless_null $P1813, vivify_753
    $P1813 = root_new ['parrot';'Hash']
  vivify_753:
    set $P116, $P1813[$P115]
    unless_null $P116, vivify_754
    new $P116, "Undef"
  vivify_754:
    unless $P116, unless_1812
    set $P113, $P116
    goto unless_1812_end
  unless_1812:
.annotate 'line', 882
    find_lex $P117, "$_"
    unless_null $P117, vivify_755
    new $P117, "Undef"
  vivify_755:
    $P118 = $P117."value"()
    find_lex $P119, "$_"
    unless_null $P119, vivify_756
    new $P119, "Undef"
  vivify_756:
    $P120 = $P119."key"()
    find_lex $P1814, "%mapping"
    unless_null $P1814, vivify_757
    $P1814 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1814
  vivify_757:
    set $P1814[$P120], $P118
.annotate 'line', 881
    set $P113, $P118
  unless_1812_end:
.annotate 'line', 880
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("124_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1821
    .param pmc param_1822
    .param pmc param_1823 :optional :named("local")
    .param int has_param_1823 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 894
    .lex "self", param_1821
    .lex "$obj", param_1822
    if has_param_1823, optparam_761
    new $P106, "Undef"
    set param_1823, $P106
  optparam_761:
    .lex "$local", param_1823
.annotate 'line', 895
    find_lex $P108, "$local"
    unless_null $P108, vivify_762
    new $P108, "Undef"
  vivify_762:
    if $P108, if_1824
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P1826, $P113, $P114, "@!mro"
    unless_null $P1826, vivify_763
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    set $P107, $P1826
    goto if_1824_end
  if_1824:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1825, $P110, $P111, "@!parents"
    unless_null $P1825, vivify_764
    $P1825 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    set $P107, $P1825
  if_1824_end:
.annotate 'line', 894
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("125_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1828
    .param pmc param_1829
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 898
    .lex "self", param_1828
    .lex "$obj", param_1829
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1830, $P107, $P108, "@!mro"
    unless_null $P1830, vivify_765
    $P1830 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    .return ($P1830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("126_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1832
    .param pmc param_1833
    .param pmc param_1834 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 902
    .lex "self", param_1832
    .lex "$obj", param_1833
    .lex "$local", param_1834
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1835, $P107, $P108, "@!roles"
    unless_null $P1835, vivify_766
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
    .return ($P1835)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("127_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1837
    .param pmc param_1838
    .param pmc param_1839 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 906
    .const 'Sub' $P1845 = "128_1315057448.686" 
    capture_lex $P1845
    .lex "self", param_1837
    .lex "$obj", param_1838
    .lex "$local", param_1839
.annotate 'line', 907
    $P1841 = root_new ['parrot';'ResizablePMCArray']
    set $P1840, $P1841
    .lex "@meths", $P1840
.annotate 'line', 906
    find_lex $P1842, "@meths"
    unless_null $P1842, vivify_767
    $P1842 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
.annotate 'line', 908
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1843, $P108, $P109, "%!methods"
    unless_null $P1843, vivify_768
    $P1843 = root_new ['parrot';'Hash']
  vivify_768:
    defined $I100, $P1843
    unless $I100, for_undef_769
    iter $P106, $P1843
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1848_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1848_test:
    unless $P106, loop1848_done
    shift $P110, $P106
  loop1848_redo:
    .const 'Sub' $P1845 = "128_1315057448.686" 
    capture_lex $P1845
    $P1845($P110)
  loop1848_next:
    goto loop1848_test
  loop1848_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1848_next
    eq $P112, .CONTROL_LOOP_REDO, loop1848_redo
  loop1848_done:
    pop_eh 
  for_undef_769:
.annotate 'line', 906
    find_lex $P1849, "@meths"
    unless_null $P1849, vivify_772
    $P1849 = root_new ['parrot';'ResizablePMCArray']
  vivify_772:
    .return ($P1849)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1844"  :anon :subid("128_1315057448.686") :outer("127_1315057448.686")
    .param pmc param_1846
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 908
    .lex "$_", param_1846
.annotate 'line', 909
    find_lex $P1847, "@meths"
    unless_null $P1847, vivify_770
    $P1847 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    find_lex $P111, "$_"
    unless_null $P111, vivify_771
    new $P111, "Undef"
  vivify_771:
    $P112 = $P111."value"()
    $P113 = $P1847."push"($P112)
.annotate 'line', 908
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("129_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 914
    .lex "self", param_1851
    .lex "$obj", param_1852
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1853, $P107, $P108, "%!methods"
    unless_null $P1853, vivify_773
    $P1853 = root_new ['parrot';'Hash']
  vivify_773:
    .return ($P1853)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("130_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1855
    .param pmc param_1856
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 918
    .lex "self", param_1855
    .lex "$obj", param_1856
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!name"
    unless_null $P109, vivify_774
    new $P109, "Undef"
  vivify_774:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("131_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1858
    .param pmc param_1859
    .param pmc param_1860 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 922
    .const 'Sub' $P1866 = "132_1315057448.686" 
    capture_lex $P1866
    .lex "self", param_1858
    .lex "$obj", param_1859
    .lex "$local", param_1860
.annotate 'line', 923
    $P1862 = root_new ['parrot';'ResizablePMCArray']
    set $P1861, $P1862
    .lex "@attrs", $P1861
.annotate 'line', 922
    find_lex $P1863, "@attrs"
    unless_null $P1863, vivify_775
    $P1863 = root_new ['parrot';'ResizablePMCArray']
  vivify_775:
.annotate 'line', 924
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1864, $P108, $P109, "%!attributes"
    unless_null $P1864, vivify_776
    $P1864 = root_new ['parrot';'Hash']
  vivify_776:
    defined $I100, $P1864
    unless $I100, for_undef_777
    iter $P106, $P1864
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1869_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1869_test:
    unless $P106, loop1869_done
    shift $P110, $P106
  loop1869_redo:
    .const 'Sub' $P1866 = "132_1315057448.686" 
    capture_lex $P1866
    $P1866($P110)
  loop1869_next:
    goto loop1869_test
  loop1869_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1869_next
    eq $P112, .CONTROL_LOOP_REDO, loop1869_redo
  loop1869_done:
    pop_eh 
  for_undef_777:
.annotate 'line', 922
    find_lex $P1870, "@attrs"
    unless_null $P1870, vivify_780
    $P1870 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1865"  :anon :subid("132_1315057448.686") :outer("131_1315057448.686")
    .param pmc param_1867
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 924
    .lex "$_", param_1867
.annotate 'line', 925
    find_lex $P1868, "@attrs"
    unless_null $P1868, vivify_778
    $P1868 = root_new ['parrot';'ResizablePMCArray']
  vivify_778:
    find_lex $P111, "$_"
    unless_null $P111, vivify_779
    new $P111, "Undef"
  vivify_779:
    $P112 = $P111."value"()
    $P113 = $P1868."push"($P112)
.annotate 'line', 924
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("133_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1872
    .param pmc param_1873
    .param pmc param_1874 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 930
    .lex "self", param_1872
    .lex "$obj", param_1873
    .lex "$local", param_1874
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1875, $P107, $P108, "%!parrot_vtable_mapping"
    unless_null $P1875, vivify_781
    $P1875 = root_new ['parrot';'Hash']
  vivify_781:
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("134_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1877
    .param pmc param_1878
    .param pmc param_1879 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 934
    .lex "self", param_1877
    .lex "$obj", param_1878
    .lex "$local", param_1879
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1880, $P107, $P108, "%!parrot_vtable_handler_mapping"
    unless_null $P1880, vivify_782
    $P1880 = root_new ['parrot';'Hash']
  vivify_782:
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("135_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1884
    .param pmc param_1885
    .param pmc param_1886
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 942
    new $P1883, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1883, control_1882
    push_eh $P1883
    .lex "self", param_1884
    .lex "$obj", param_1885
    .lex "$check", param_1886
.annotate 'line', 943
    new $P106, "Undef"
    set $P1887, $P106
    .lex "$check-class", $P1887
.annotate 'line', 944
    new $P107, "Undef"
    set $P1888, $P107
    .lex "$i", $P1888
.annotate 'line', 943
    find_lex $P108, "$check"
    unless_null $P108, vivify_783
    new $P108, "Undef"
  vivify_783:
    get_what $P109, $P108
    store_lex "$check-class", $P109
.annotate 'line', 944
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1889, $P109, $P110, "@!mro"
    unless_null $P1889, vivify_784
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $N100, $P1889
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$i", $P111
.annotate 'line', 945
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1892_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1892_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_785
    new $P108, "Undef"
  vivify_785:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1892_done
  loop1892_redo:
.annotate 'line', 946
    find_lex $P109, "$i"
    unless_null $P109, vivify_786
    new $P109, "Undef"
  vivify_786:
    sub $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 947
    find_lex $P109, "$i"
    unless_null $P109, vivify_787
    new $P109, "Undef"
  vivify_787:
    set $I101, $P109
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1891, $P111, $P112, "@!mro"
    unless_null $P1891, vivify_788
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_788:
    set $P113, $P1891[$I101]
    unless_null $P113, vivify_789
    new $P113, "Undef"
  vivify_789:
    find_lex $P114, "$check-class"
    unless_null $P114, vivify_790
    new $P114, "Undef"
  vivify_790:
    issame $I102, $P113, $P114
    unless $I102, if_1890_end
.annotate 'line', 948
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1890_end:
  loop1892_next:
.annotate 'line', 945
    goto loop1892_test
  loop1892_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1892_next
    eq $P110, .CONTROL_LOOP_REDO, loop1892_redo
  loop1892_done:
    pop_eh 
.annotate 'line', 951
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 942
    .return ()
  control_1882:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("136_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1896
    .param pmc param_1897
    .param pmc param_1898
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 954
    new $P1895, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1895, control_1894
    push_eh $P1895
    .lex "self", param_1896
    .lex "$obj", param_1897
    .lex "$check", param_1898
.annotate 'line', 955
    new $P106, "Undef"
    set $P1899, $P106
    .lex "$i", $P1899
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1900, $P108, $P109, "@!done"
    unless_null $P1900, vivify_791
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_791:
    set $N100, $P1900
    new $P110, 'Float'
    set $P110, $N100
    store_lex "$i", $P110
.annotate 'line', 956
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1903_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1903_test:
    find_lex $P107, "$i"
    unless_null $P107, vivify_792
    new $P107, "Undef"
  vivify_792:
    set $N100, $P107
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1903_done
  loop1903_redo:
.annotate 'line', 957
    find_lex $P108, "$i"
    unless_null $P108, vivify_793
    new $P108, "Undef"
  vivify_793:
    sub $P109, $P108, 1
    store_lex "$i", $P109
.annotate 'line', 958
    find_lex $P108, "$i"
    unless_null $P108, vivify_794
    new $P108, "Undef"
  vivify_794:
    set $I101, $P108
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1902, $P110, $P111, "@!done"
    unless_null $P1902, vivify_795
    $P1902 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    set $P112, $P1902[$I101]
    unless_null $P112, vivify_796
    new $P112, "Undef"
  vivify_796:
    find_lex $P113, "$check"
    unless_null $P113, vivify_797
    new $P113, "Undef"
  vivify_797:
    issame $I102, $P112, $P113
    unless $I102, if_1901_end
.annotate 'line', 959
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    new $P115, "Float"
    assign $P115, 1
    setattribute $P114, 'payload', $P115
    throw $P114
  if_1901_end:
  loop1903_next:
.annotate 'line', 956
    goto loop1903_test
  loop1903_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1903_next
    eq $P109, .CONTROL_LOOP_REDO, loop1903_redo
  loop1903_done:
    pop_eh 
.annotate 'line', 962
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 954
    .return ()
  control_1894:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("137_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1907
    .param pmc param_1908
    .param pmc param_1909
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 965
    .const 'Sub' $P1912 = "138_1315057448.686" 
    capture_lex $P1912
    new $P1906, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1906, control_1905
    push_eh $P1906
    .lex "self", param_1907
    .lex "$obj", param_1908
    .lex "$name", param_1909
.annotate 'line', 966
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1910, $P108, $P109, "@!mro"
    unless_null $P1910, vivify_798
    $P1910 = root_new ['parrot';'ResizablePMCArray']
  vivify_798:
    defined $I100, $P1910
    unless $I100, for_undef_799
    iter $P106, $P1910
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1919_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1919_test:
    unless $P106, loop1919_done
    shift $P110, $P106
  loop1919_redo:
    .const 'Sub' $P1912 = "138_1315057448.686" 
    capture_lex $P1912
    $P1912($P110)
  loop1919_next:
    goto loop1919_test
  loop1919_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1919_next
    eq $P114, .CONTROL_LOOP_REDO, loop1919_redo
  loop1919_done:
    pop_eh 
  for_undef_799:
.annotate 'line', 973
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 0
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 965
    .return ()
  control_1905:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1911"  :anon :subid("138_1315057448.686") :outer("137_1315057448.686")
    .param pmc param_1916
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 967
    $P1914 = root_new ['parrot';'Hash']
    set $P1913, $P1914
    .lex "%meths", $P1913
.annotate 'line', 968
    new $P111, "Undef"
    set $P1915, $P111
    .lex "$can", $P1915
    .lex "$_", param_1916
.annotate 'line', 967
    find_lex $P112, "$_"
    unless_null $P112, vivify_800
    new $P112, "Undef"
  vivify_800:
    get_how $P113, $P112
    find_lex $P114, "$obj"
    unless_null $P114, vivify_801
    new $P114, "Undef"
  vivify_801:
    $P115 = $P113."method_table"($P114)
    store_lex "%meths", $P115
.annotate 'line', 968
    find_lex $P112, "$name"
    unless_null $P112, vivify_802
    new $P112, "Undef"
  vivify_802:
    find_lex $P1917, "%meths"
    unless_null $P1917, vivify_803
    $P1917 = root_new ['parrot';'Hash']
  vivify_803:
    set $P113, $P1917[$P112]
    unless_null $P113, vivify_804
    new $P113, "Undef"
  vivify_804:
    store_lex "$can", $P113
.annotate 'line', 969
    find_lex $P113, "$can"
    unless_null $P113, vivify_805
    new $P113, "Undef"
  vivify_805:
    defined $I101, $P113
    if $I101, if_1918
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1918_end
  if_1918:
.annotate 'line', 970
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    find_lex $P115, "$can"
    unless_null $P115, vivify_806
    new $P115, "Undef"
  vivify_806:
    setattribute $P114, 'payload', $P115
    throw $P114
  if_1918_end:
.annotate 'line', 966
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("139_1315057448.686") :outer("78_1315057448.686")
    .param pmc param_1923
    .param pmc param_1924
    .param pmc param_1925
    .param pmc param_1926 :optional :named("no_fallback")
    .param int has_param_1926 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 979
    .const 'Sub' $P1929 = "140_1315057448.686" 
    capture_lex $P1929
    new $P1922, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1922, control_1921
    push_eh $P1922
    .lex "self", param_1923
    .lex "$obj", param_1924
    .lex "$name", param_1925
    if has_param_1926, optparam_807
    new $P106, "Undef"
    set param_1926, $P106
  optparam_807:
    .lex "$no_fallback", param_1926
.annotate 'line', 980
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1927, $P109, $P110, "@!mro"
    unless_null $P1927, vivify_808
    $P1927 = root_new ['parrot';'ResizablePMCArray']
  vivify_808:
    defined $I100, $P1927
    unless $I100, for_undef_809
    iter $P107, $P1927
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1936_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1936_test:
    unless $P107, loop1936_done
    shift $P111, $P107
  loop1936_redo:
    .const 'Sub' $P1929 = "140_1315057448.686" 
    capture_lex $P1929
    $P1929($P111)
  loop1936_next:
    goto loop1936_test
  loop1936_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1936_next
    eq $P115, .CONTROL_LOOP_REDO, loop1936_redo
  loop1936_done:
    pop_eh 
  for_undef_809:
.annotate 'line', 987
    null $P107
.annotate 'line', 979
    .return ($P107)
  control_1921:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1928"  :anon :subid("140_1315057448.686") :outer("139_1315057448.686")
    .param pmc param_1933
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 981
    $P1931 = root_new ['parrot';'Hash']
    set $P1930, $P1931
    .lex "%meths", $P1930
.annotate 'line', 982
    new $P112, "Undef"
    set $P1932, $P112
    .lex "$found", $P1932
    .lex "$_", param_1933
.annotate 'line', 981
    find_lex $P113, "$_"
    unless_null $P113, vivify_810
    new $P113, "Undef"
  vivify_810:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_811
    new $P115, "Undef"
  vivify_811:
    $P116 = $P114."method_table"($P115)
    store_lex "%meths", $P116
.annotate 'line', 982
    find_lex $P113, "$name"
    unless_null $P113, vivify_812
    new $P113, "Undef"
  vivify_812:
    find_lex $P1934, "%meths"
    unless_null $P1934, vivify_813
    $P1934 = root_new ['parrot';'Hash']
  vivify_813:
    set $P114, $P1934[$P113]
    unless_null $P114, vivify_814
    new $P114, "Undef"
  vivify_814:
    store_lex "$found", $P114
.annotate 'line', 983
    find_lex $P114, "$found"
    unless_null $P114, vivify_815
    new $P114, "Undef"
  vivify_815:
    defined $I101, $P114
    if $I101, if_1935
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1935_end
  if_1935:
.annotate 'line', 984
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    find_lex $P116, "$found"
    unless_null $P116, vivify_816
    new $P116, "Undef"
  vivify_816:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1935_end:
.annotate 'line', 980
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1938"  :subid("141_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 992
    .const 'Sub' $P1972 = "149_1315057448.686" 
    capture_lex $P1972
    .const 'Sub' $P1969 = "148_1315057448.686" 
    capture_lex $P1969
    .const 'Sub' $P1965 = "147_1315057448.686" 
    capture_lex $P1965
    .const 'Sub' $P1960 = "146_1315057448.686" 
    capture_lex $P1960
    .const 'Sub' $P1955 = "145_1315057448.686" 
    capture_lex $P1955
    .const 'Sub' $P1949 = "144_1315057448.686" 
    capture_lex $P1949
    .const 'Sub' $P1946 = "143_1315057448.686" 
    capture_lex $P1946
    .const 'Sub' $P1942 = "142_1315057448.686" 
    capture_lex $P1942
    .lex "$?PACKAGE", $P1940
    .lex "$?CLASS", $P1941
.annotate 'line', 1032
    .const 'Sub' $P1972 = "149_1315057448.686" 
    newclosure $P1975, $P1972
.annotate 'line', 992
    .return ($P1975)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("142_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1943
    .param pmc param_1944 :optional :named("name")
    .param int has_param_1944 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 996
    .lex "self", param_1943
    if has_param_1944, optparam_817
    new $P100, "Undef"
    set param_1944, $P100
  optparam_817:
    .lex "$name", param_1944
.annotate 'line', 997
    new $P101, "Undef"
    set $P1945, $P101
    .lex "$obj", $P1945
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 998
    find_lex $P102, "$obj"
    unless_null $P102, vivify_818
    new $P102, "Undef"
  vivify_818:
    find_lex $P103, "$name"
    unless_null $P103, vivify_819
    new $P103, "Undef"
  vivify_819:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 996
    find_lex $P102, "$obj"
    unless_null $P102, vivify_820
    new $P102, "Undef"
  vivify_820:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("143_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1947
    .param pmc param_1948 :optional :named("name")
    .param int has_param_1948 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1002
    .lex "self", param_1947
    if has_param_1948, optparam_821
    new $P100, "Undef"
    set param_1948, $P100
  optparam_821:
    .lex "$name", param_1948
.annotate 'line', 1003
    find_lex $P101, "$name"
    unless_null $P101, vivify_822
    new $P101, "Undef"
  vivify_822:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!name", $P101
.annotate 'line', 1002
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("144_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1950
    .param pmc param_1952 :named("repr")
    .param pmc param_1951 :optional :named("name")
    .param int has_param_1951 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1009
    .lex "self", param_1950
    if has_param_1951, optparam_823
    new $P100, "String"
    assign $P100, "<anon>"
    set param_1951, $P100
  optparam_823:
    .lex "$name", param_1951
    .lex "$repr", param_1952
.annotate 'line', 1010
    new $P101, "Undef"
    set $P1953, $P101
    .lex "$metaclass", $P1953
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_824
    new $P103, "Undef"
  vivify_824:
    $P104 = $P102."new"($P103 :named("name"))
    store_lex "$metaclass", $P104
.annotate 'line', 1012
    find_lex $P102, "$metaclass"
    unless_null $P102, vivify_825
    new $P102, "Undef"
  vivify_825:
    find_lex $P103, "$repr"
    unless_null $P103, vivify_826
    new $P103, "Undef"
  vivify_826:
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
    $P1954 = root_new ['parrot';'Hash']
    set_who $P104, $P1954
.annotate 'line', 1009
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("145_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1956
    .param pmc param_1957
    .param pmc param_1958
    .param pmc param_1959
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1016
    .lex "self", param_1956
    .lex "$obj", param_1957
    .lex "$name", param_1958
    .lex "$code_obj", param_1959
.annotate 'line', 1017
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1016
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("146_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1961
    .param pmc param_1962
    .param pmc param_1963
    .param pmc param_1964
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1020
    .lex "self", param_1961
    .lex "$obj", param_1962
    .lex "$name", param_1963
    .lex "$code_obj", param_1964
.annotate 'line', 1021
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1020
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("147_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1966
    .param pmc param_1967
    .param pmc param_1968
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1024
    .lex "self", param_1966
    .lex "$obj", param_1967
    .lex "$meta_attr", param_1968
.annotate 'line', 1025
    die "Native types may not have attributes"
.annotate 'line', 1024
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("148_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1970
    .param pmc param_1971
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1028
    .lex "self", param_1970
    .lex "$obj", param_1971
.annotate 'line', 1029
    new $P100, "Float"
    assign $P100, 1
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!composed", $P100
.annotate 'line', 1028
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("149_1315057448.686") :outer("141_1315057448.686")
    .param pmc param_1973
    .param pmc param_1974
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1032
    .lex "self", param_1973
    .lex "$obj", param_1974
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_827
    new $P103, "Undef"
  vivify_827:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1976"  :subid("150_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1038
    .const 'Sub' $P2025 = "161_1315057448.686" 
    capture_lex $P2025
    .const 'Sub' $P2022 = "160_1315057448.686" 
    capture_lex $P2022
    .const 'Sub' $P2019 = "159_1315057448.686" 
    capture_lex $P2019
    .const 'Sub' $P2017 = "158_1315057448.686" 
    capture_lex $P2017
    .const 'Sub' $P2015 = "157_1315057448.686" 
    capture_lex $P2015
    .const 'Sub' $P2012 = "156_1315057448.686" 
    capture_lex $P2012
    .const 'Sub' $P2010 = "155_1315057448.686" 
    capture_lex $P2010
    .const 'Sub' $P2004 = "154_1315057448.686" 
    capture_lex $P2004
    .const 'Sub' $P1996 = "153_1315057448.686" 
    capture_lex $P1996
    .const 'Sub' $P1979 = "151_1315057448.686" 
    capture_lex $P1979
.annotate 'line', 1109
    .const 'Sub' $P1979 = "151_1315057448.686" 
    newclosure $P1993, $P1979
    set $P1978, $P1993
    .lex "has_method", $P1978
.annotate 'line', 1038
    .lex "$?PACKAGE", $P1994
    .lex "$?CLASS", $P1995
    find_lex $P101, "has_method"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("151_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_1982
    .param pmc param_1983
    .param pmc param_1984
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1109
    .const 'Sub' $P1989 = "152_1315057448.686" 
    capture_lex $P1989
    new $P1981, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1981, control_1980
    push_eh $P1981
    .lex "$target", param_1982
    .lex "$name", param_1983
    .lex "$local", param_1984
.annotate 'line', 1110
    $P1986 = root_new ['parrot';'ResizablePMCArray']
    set $P1985, $P1986
    .lex "@methods", $P1985
    find_lex $P100, "$target"
    unless_null $P100, vivify_828
    new $P100, "Undef"
  vivify_828:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_829
    new $P102, "Undef"
  vivify_829:
    find_lex $P103, "$local"
    unless_null $P103, vivify_830
    new $P103, "Undef"
  vivify_830:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 1111
    find_lex $P1987, "@methods"
    unless_null $P1987, vivify_831
    $P1987 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    defined $I100, $P1987
    unless $I100, for_undef_832
    iter $P100, $P1987
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1992_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1992_test:
    unless $P100, loop1992_done
    shift $P101, $P100
  loop1992_redo:
    .const 'Sub' $P1989 = "152_1315057448.686" 
    capture_lex $P1989
    $P1989($P101)
  loop1992_next:
    goto loop1992_test
  loop1992_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1992_next
    eq $P104, .CONTROL_LOOP_REDO, loop1992_redo
  loop1992_done:
    pop_eh 
  for_undef_832:
.annotate 'line', 1114
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1109
    .return ()
  control_1980:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1988"  :anon :subid("152_1315057448.686") :outer("151_1315057448.686")
    .param pmc param_1990
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1111
    .lex "$_", param_1990
.annotate 'line', 1112
    find_lex $P103, "$_"
    unless_null $P103, vivify_833
    new $P103, "Undef"
  vivify_833:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_834
    new $P104, "Undef"
  vivify_834:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_1991
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1991_end
  if_1991:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1991_end:
.annotate 'line', 1111
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("153_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_1997
    .param pmc param_1998 :named("name")
    .param pmc param_1999 :optional :named("box_target")
    .param int has_param_1999 :opt_flag
    .param pmc param_2000 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1044
    .lex "self", param_1997
    .lex "$name", param_1998
    if has_param_1999, optparam_835
    new $P101, "Undef"
    set param_1999, $P101
  optparam_835:
    .lex "$box_target", param_1999
    .lex "%extra", param_2000
.annotate 'line', 1045
    new $P102, "Undef"
    set $P2001, $P102
    .lex "$attr", $P2001
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$attr", $P104
.annotate 'line', 1046
    find_lex $P103, "$attr"
    unless_null $P103, vivify_836
    new $P103, "Undef"
  vivify_836:
    find_lex $P104, "$name"
    unless_null $P104, vivify_837
    new $P104, "Undef"
  vivify_837:
    find_lex $P2002, "%extra"
    unless_null $P2002, vivify_838
    $P2002 = root_new ['parrot';'Hash']
  vivify_838:
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_839
    new $P105, "Undef"
  vivify_839:
.annotate 'line', 1047
    find_lex $P2003, "%extra"
    unless_null $P2003, vivify_840
    $P2003 = root_new ['parrot';'Hash']
  vivify_840:
    exists $I100, $P2003["type"]
.annotate 'line', 1046
    $P103."BUILD"($P2002 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1044
    find_lex $P103, "$attr"
    unless_null $P103, vivify_841
    new $P103, "Undef"
  vivify_841:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("154_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2005
    .param pmc param_2006 :optional :named("name")
    .param int has_param_2006 :opt_flag
    .param pmc param_2007 :optional :named("type")
    .param int has_param_2007 :opt_flag
    .param pmc param_2008 :optional :named("has_type")
    .param int has_param_2008 :opt_flag
    .param pmc param_2009 :optional :named("box_target")
    .param int has_param_2009 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1051
    .lex "self", param_2005
    if has_param_2006, optparam_842
    new $P101, "Undef"
    set param_2006, $P101
  optparam_842:
    .lex "$name", param_2006
    if has_param_2007, optparam_843
    new $P102, "Undef"
    set param_2007, $P102
  optparam_843:
    .lex "$type", param_2007
    if has_param_2008, optparam_844
    new $P103, "Undef"
    set param_2008, $P103
  optparam_844:
    .lex "$has_type", param_2008
    if has_param_2009, optparam_845
    new $P104, "Undef"
    set param_2009, $P104
  optparam_845:
    .lex "$box_target", param_2009
.annotate 'line', 1052
    find_lex $P105, "$name"
    unless_null $P105, vivify_846
    new $P105, "Undef"
  vivify_846:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!name", $P105
.annotate 'line', 1053
    find_lex $P105, "$type"
    unless_null $P105, vivify_847
    new $P105, "Undef"
  vivify_847:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!type", $P105
.annotate 'line', 1054
    find_lex $P105, "$has_type"
    unless_null $P105, vivify_848
    new $P105, "Undef"
  vivify_848:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!has_type", $P105
.annotate 'line', 1055
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_849
    new $P105, "Undef"
  vivify_849:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!box_target", $P105
.annotate 'line', 1051
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("155_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2011
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1058
    .lex "self", param_2011
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_850
    new $P104, "Undef"
  vivify_850:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("156_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2013
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1062
    .lex "self", param_2013
.annotate 'line', 1063
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!has_type"
    unless_null $P105, vivify_851
    new $P105, "Undef"
  vivify_851:
    if $P105, if_2014
    null $P110
    set $P101, $P110
    goto if_2014_end
  if_2014:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!type"
    unless_null $P109, vivify_852
    new $P109, "Undef"
  vivify_852:
    set $P101, $P109
  if_2014_end:
.annotate 'line', 1062
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("157_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2016
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1066
    .lex "self", param_2016
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("158_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2018
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1070
    .lex "self", param_2018
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("159_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2020
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1074
    .lex "self", param_2020
.annotate 'line', 1075
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!box_target"
    unless_null $P105, vivify_853
    new $P105, "Undef"
  vivify_853:
    if $P105, if_2021
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2021_end
  if_2021:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2021_end:
.annotate 'line', 1074
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("160_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2023
    .param pmc param_2024
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1078
    .lex "self", param_2023
    .lex "$obj", param_2024
    find_lex $P101, "$obj"
    unless_null $P101, vivify_854
    new $P101, "Undef"
  vivify_854:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("161_1315057448.686") :outer("150_1315057448.686")
    .param pmc param_2026
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1105
    .lex "self", param_2026
.annotate 'line', 1106
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_855
    new $P104, "Undef"
  vivify_855:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1105
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2027"  :subid("162_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1120
    .const 'Sub' $P2060 = "170_1315057448.686" 
    capture_lex $P2060
    .const 'Sub' $P2057 = "169_1315057448.686" 
    capture_lex $P2057
    .const 'Sub' $P2053 = "168_1315057448.686" 
    capture_lex $P2053
    .const 'Sub' $P2048 = "167_1315057448.686" 
    capture_lex $P2048
    .const 'Sub' $P2043 = "166_1315057448.686" 
    capture_lex $P2043
    .const 'Sub' $P2038 = "165_1315057448.686" 
    capture_lex $P2038
    .const 'Sub' $P2035 = "164_1315057448.686" 
    capture_lex $P2035
    .const 'Sub' $P2031 = "163_1315057448.686" 
    capture_lex $P2031
    .lex "$?PACKAGE", $P2029
    .lex "$?CLASS", $P2030
.annotate 'line', 1161
    .const 'Sub' $P2060 = "170_1315057448.686" 
    newclosure $P2063, $P2060
.annotate 'line', 1120
    .return ($P2063)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("163_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2032
    .param pmc param_2033 :optional :named("name")
    .param int has_param_2033 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1124
    .lex "self", param_2032
    if has_param_2033, optparam_856
    new $P100, "Undef"
    set param_2033, $P100
  optparam_856:
    .lex "$name", param_2033
.annotate 'line', 1125
    new $P101, "Undef"
    set $P2034, $P101
    .lex "$obj", $P2034
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 1126
    find_lex $P102, "$obj"
    unless_null $P102, vivify_857
    new $P102, "Undef"
  vivify_857:
    find_lex $P103, "$name"
    unless_null $P103, vivify_858
    new $P103, "Undef"
  vivify_858:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 1124
    find_lex $P102, "$obj"
    unless_null $P102, vivify_859
    new $P102, "Undef"
  vivify_859:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("164_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2036
    .param pmc param_2037 :optional :named("name")
    .param int has_param_2037 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1130
    .lex "self", param_2036
    if has_param_2037, optparam_860
    new $P100, "Undef"
    set param_2037, $P100
  optparam_860:
    .lex "$name", param_2037
.annotate 'line', 1131
    find_lex $P101, "$name"
    unless_null $P101, vivify_861
    new $P101, "Undef"
  vivify_861:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!name", $P101
.annotate 'line', 1130
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("165_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2039
    .param pmc param_2040 :optional :named("name")
    .param int has_param_2040 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1136
    .lex "self", param_2039
    if has_param_2040, optparam_862
    new $P100, "String"
    assign $P100, "<anon>"
    set param_2040, $P100
  optparam_862:
    .lex "$name", param_2040
.annotate 'line', 1137
    new $P101, "Undef"
    set $P2041, $P101
    .lex "$metaclass", $P2041
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_863
    new $P103, "Undef"
  vivify_863:
    $P104 = $P102."new"($P103 :named("name"))
    store_lex "$metaclass", $P104
.annotate 'line', 1139
    find_lex $P102, "$metaclass"
    unless_null $P102, vivify_864
    new $P102, "Undef"
  vivify_864:
    new $P103, "String"
    assign $P103, "Uninstantiable"
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
    $P2042 = root_new ['parrot';'Hash']
    set_who $P104, $P2042
.annotate 'line', 1136
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("166_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2044
    .param pmc param_2045
    .param pmc param_2046
    .param pmc param_2047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1143
    .lex "self", param_2044
    .lex "$obj", param_2045
    .lex "$name", param_2046
    .lex "$code_obj", param_2047
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("167_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2049
    .param pmc param_2050
    .param pmc param_2051
    .param pmc param_2052
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1149
    .lex "self", param_2049
    .lex "$obj", param_2050
    .lex "$name", param_2051
    .lex "$code_obj", param_2052
.annotate 'line', 1150
    die "Modules may not have methods"
.annotate 'line', 1149
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("168_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2054
    .param pmc param_2055
    .param pmc param_2056
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1153
    .lex "self", param_2054
    .lex "$obj", param_2055
    .lex "$meta_attr", param_2056
.annotate 'line', 1154
    die "Modules may not have attributes"
.annotate 'line', 1153
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("169_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2058
    .param pmc param_2059
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2058
    .lex "$obj", param_2059
.annotate 'line', 1158
    new $P100, "Float"
    assign $P100, 1
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!composed", $P100
.annotate 'line', 1157
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("170_1315057448.686") :outer("162_1315057448.686")
    .param pmc param_2061
    .param pmc param_2062
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2061
    .lex "$obj", param_2062
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_865
    new $P103, "Undef"
  vivify_865:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "_block2064"  :anon :subid("171_1315057448.686") :outer("10_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1169
    .lex "$?PACKAGE", $P2066
    .lex "$?CLASS", $P2067
.annotate 'line', 1170
    find_lex $P100, "NQPModuleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_866
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_866:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1171
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_867
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_867:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1172
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_868
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_868:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1173
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_869
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_869:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1174
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_870
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_870:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1175
    find_lex $P100, "NQPParametricRoleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_871
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_871:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1176
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_872
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_872:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1177
    find_lex $P100, "NQPNativeHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_873
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_873:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1169
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2069" :load :anon :subid("172_1315057448.686")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1
    .const 'Sub' $P2071 = "10_1315057448.686" 
    $P106 = $P2071()
    .return ($P106)
.end

