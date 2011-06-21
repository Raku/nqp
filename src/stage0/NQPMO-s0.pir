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
.sub "_block1000"  :anon :subid("10_1308672481.963")
    .param pmc param_1002 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2069 = "170_1308672481.963" 
    capture_lex $P2069
    .const 'Sub' $P2031 = "161_1308672481.963" 
    capture_lex $P2031
    .const 'Sub' $P1965 = "147_1308672481.963" 
    capture_lex $P1965
    .const 'Sub' $P1927 = "138_1308672481.963" 
    capture_lex $P1927
    .const 'Sub' $P1461 = "77_1308672481.963" 
    capture_lex $P1461
    .const 'Sub' $P1319 = "52_1308672481.963" 
    capture_lex $P1319
    .const 'Sub' $P1241 = "42_1308672481.963" 
    capture_lex $P1241
    .const 'Sub' $P1115 = "21_1308672481.963" 
    capture_lex $P1115
    .const 'Sub' $P1015 = "11_1308672481.963" 
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
    .const 'Sub' $P1015 = "11_1308672481.963" 
    capture_lex $P1015
    $P1015()
.annotate 'line', 97
    .const 'Sub' $P1115 = "21_1308672481.963" 
    capture_lex $P1115
    $P1115()
.annotate 'line', 242
    .const 'Sub' $P1241 = "42_1308672481.963" 
    capture_lex $P1241
    $P1241()
.annotate 'line', 318
    .const 'Sub' $P1319 = "52_1308672481.963" 
    capture_lex $P1319
    $P1319()
.annotate 'line', 498
    .const 'Sub' $P1461 = "77_1308672481.963" 
    capture_lex $P1461
    $P1461()
.annotate 'line', 972
    .const 'Sub' $P1927 = "138_1308672481.963" 
    capture_lex $P1927
    $P1927()
.annotate 'line', 1018
    .const 'Sub' $P1965 = "147_1308672481.963" 
    capture_lex $P1965
    $P1965()
.annotate 'line', 1089
    .const 'Sub' $P2031 = "161_1308672481.963" 
    capture_lex $P2031
    $P2031()
.annotate 'line', 1138
    .const 'Sub' $P2069 = "170_1308672481.963" 
    capture_lex $P2069
    $P2069()
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_2072
    set $P100, $P101
    goto if_2072_end
  if_2072:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2072_end:
    .return ($P100)
    .const 'Sub' $P2074 = "171_1308672481.963" 
    .return ($P2074)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post172") :outer("10_1308672481.963")
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1308672481.963" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1308672478.93415"
    isnull $I100, $P107
    if $I100, if_2076
    goto if_2076_end
  if_2076:
    nqp_dynop_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1308672478.93415"
    .local pmc cur_sc
    set cur_sc, $P111
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 0, $P113
    .const 'Sub' $P2077 = "10_1308672481.963" 
    $P112 = $P2077."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P2078 = "10_1308672481.963" 
    $P114 = $P2078."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2079 = "10_1308672481.963" 
    $P112 = $P2079."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2080 = "10_1308672481.963" 
    $P114 = $P2080."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 1, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 1
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'Sub' $P2081 = "10_1308672481.963" 
    $P112 = $P2081."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 1
    $P112."set_static_lexpad_value"("RoleToRoleApplier", $P113)
    .const 'Sub' $P2082 = "10_1308672481.963" 
    $P114 = $P2082."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 1
    .const 'Sub' $P2083 = "12_1308672481.963" 
    $P113."add_method"($P114, "apply", $P2083)
    .const 'Sub' $P2084 = "11_1308672481.963" 
    $P112 = $P2084."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2085 = "11_1308672481.963" 
    $P114 = $P2085."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2086 = "11_1308672481.963" 
    $P112 = $P2086."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2087 = "11_1308672481.963" 
    $P114 = $P2087."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 3, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 3
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'Sub' $P2088 = "10_1308672481.963" 
    $P112 = $P2088."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 3
    $P112."set_static_lexpad_value"("NQPConcreteRoleHOW", $P113)
    .const 'Sub' $P2089 = "10_1308672481.963" 
    $P114 = $P2089."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2090 = "22_1308672481.963" 
    $P113."add_method"($P114, "new", $P2090)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2091 = "23_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2091)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2092 = "24_1308672481.963" 
    $P113."add_method"($P114, "new_type", $P2092)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2093 = "25_1308672481.963" 
    $P113."add_method"($P114, "add_method", $P2093)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2094 = "26_1308672481.963" 
    $P113."add_method"($P114, "add_multi_method", $P2094)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2095 = "27_1308672481.963" 
    $P113."add_method"($P114, "add_attribute", $P2095)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2096 = "28_1308672481.963" 
    $P113."add_method"($P114, "add_parent", $P2096)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2097 = "29_1308672481.963" 
    $P113."add_method"($P114, "add_role", $P2097)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2098 = "30_1308672481.963" 
    $P113."add_method"($P114, "add_collision", $P2098)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2099 = "31_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2099)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2100 = "33_1308672481.963" 
    $P113."add_method"($P114, "methods", $P2100)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2101 = "35_1308672481.963" 
    $P113."add_method"($P114, "method_table", $P2101)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2102 = "36_1308672481.963" 
    $P113."add_method"($P114, "collisions", $P2102)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2103 = "37_1308672481.963" 
    $P113."add_method"($P114, "name", $P2103)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2104 = "38_1308672481.963" 
    $P113."add_method"($P114, "attributes", $P2104)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2105 = "40_1308672481.963" 
    $P113."add_method"($P114, "roles", $P2105)
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    .const 'Sub' $P2106 = "41_1308672481.963" 
    $P113."add_method"($P114, "instance_of", $P2106)
    .const 'Sub' $P2107 = "21_1308672481.963" 
    $P112 = $P2107."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 3
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2108 = "21_1308672481.963" 
    $P114 = $P2108."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2109 = "21_1308672481.963" 
    $P112 = $P2109."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 3
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2110 = "21_1308672481.963" 
    $P114 = $P2110."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 3
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 21, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 21
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'Sub' $P2111 = "10_1308672481.963" 
    $P112 = $P2111."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 21
    $P112."set_static_lexpad_value"("RoleToClassApplier", $P113)
    .const 'Sub' $P2112 = "10_1308672481.963" 
    $P114 = $P2112."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 21
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 21
    .const 'Sub' $P2113 = "47_1308672481.963" 
    $P113."add_method"($P114, "apply", $P2113)
    .const 'Sub' $P2114 = "42_1308672481.963" 
    $P112 = $P2114."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 21
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2115 = "42_1308672481.963" 
    $P114 = $P2115."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2116 = "42_1308672481.963" 
    $P112 = $P2116."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 21
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2117 = "42_1308672481.963" 
    $P114 = $P2117."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 21
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 21
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 23, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 23
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'Sub' $P2118 = "10_1308672481.963" 
    $P112 = $P2118."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 23
    $P112."set_static_lexpad_value"("NQPParametricRoleHOW", $P113)
    .const 'Sub' $P2119 = "10_1308672481.963" 
    $P114 = $P2119."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2120 = "54_1308672481.963" 
    $P113."add_method"($P114, "new", $P2120)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2121 = "55_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2121)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2122 = "56_1308672481.963" 
    $P113."add_method"($P114, "new_type", $P2122)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2123 = "57_1308672481.963" 
    $P113."add_method"($P114, "set_body_block", $P2123)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2124 = "58_1308672481.963" 
    $P113."add_method"($P114, "add_method", $P2124)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2125 = "59_1308672481.963" 
    $P113."add_method"($P114, "add_multi_method", $P2125)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2126 = "60_1308672481.963" 
    $P113."add_method"($P114, "add_attribute", $P2126)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2127 = "61_1308672481.963" 
    $P113."add_method"($P114, "add_parent", $P2127)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2128 = "62_1308672481.963" 
    $P113."add_method"($P114, "add_role", $P2128)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2129 = "63_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2129)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2130 = "64_1308672481.963" 
    $P113."add_method"($P114, "parametric", $P2130)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2131 = "65_1308672481.963" 
    $P113."add_method"($P114, "instantiate", $P2131)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2132 = "70_1308672481.963" 
    $P113."add_method"($P114, "methods", $P2132)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2133 = "72_1308672481.963" 
    $P113."add_method"($P114, "method_table", $P2133)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2134 = "73_1308672481.963" 
    $P113."add_method"($P114, "name", $P2134)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2135 = "74_1308672481.963" 
    $P113."add_method"($P114, "attributes", $P2135)
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    .const 'Sub' $P2136 = "76_1308672481.963" 
    $P113."add_method"($P114, "roles", $P2136)
    .const 'Sub' $P2137 = "52_1308672481.963" 
    $P112 = $P2137."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 23
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2138 = "52_1308672481.963" 
    $P114 = $P2138."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2139 = "52_1308672481.963" 
    $P112 = $P2139."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 23
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2140 = "52_1308672481.963" 
    $P114 = $P2140."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 23
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 41, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 41
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'Sub' $P2141 = "10_1308672481.963" 
    $P112 = $P2141."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P112."set_static_lexpad_value"("NQPClassHOW", $P113)
    .const 'Sub' $P2142 = "10_1308672481.963" 
    $P114 = $P2142."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2143 = "88_1308672481.963" 
    $P113."add_method"($P114, "new", $P2143)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2144 = "89_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2144)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2145 = "90_1308672481.963" 
    $P113."add_method"($P114, "new_type", $P2145)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2146 = "91_1308672481.963" 
    $P113."add_method"($P114, "add_method", $P2146)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2147 = "92_1308672481.963" 
    $P113."add_method"($P114, "add_multi_method", $P2147)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2148 = "93_1308672481.963" 
    $P113."add_method"($P114, "add_attribute", $P2148)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2149 = "94_1308672481.963" 
    $P113."add_method"($P114, "add_parent", $P2149)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2150 = "96_1308672481.963" 
    $P113."add_method"($P114, "set_default_parent", $P2150)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2151 = "97_1308672481.963" 
    $P113."add_method"($P114, "add_role", $P2151)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2152 = "99_1308672481.963" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2152)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2153 = "100_1308672481.963" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2153)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2154 = "101_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2154)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2155 = "105_1308672481.963" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2155)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2156 = "110_1308672481.963" 
    $P113."add_method"($P114, "publish_type_cache", $P2156)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2157 = "113_1308672481.963" 
    $P113."add_method"($P114, "publish_method_cache", $P2157)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2158 = "116_1308672481.963" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2158)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2159 = "119_1308672481.963" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2159)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2160 = "122_1308672481.963" 
    $P113."add_method"($P114, "parents", $P2160)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2161 = "123_1308672481.963" 
    $P113."add_method"($P114, "roles", $P2161)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2162 = "124_1308672481.963" 
    $P113."add_method"($P114, "methods", $P2162)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2163 = "126_1308672481.963" 
    $P113."add_method"($P114, "method_table", $P2163)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2164 = "127_1308672481.963" 
    $P113."add_method"($P114, "name", $P2164)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2165 = "128_1308672481.963" 
    $P113."add_method"($P114, "attributes", $P2165)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2166 = "130_1308672481.963" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2166)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2167 = "131_1308672481.963" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2167)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2168 = "132_1308672481.963" 
    $P113."add_method"($P114, "isa", $P2168)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2169 = "133_1308672481.963" 
    $P113."add_method"($P114, "does", $P2169)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2170 = "134_1308672481.963" 
    $P113."add_method"($P114, "can", $P2170)
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    .const 'Sub' $P2171 = "136_1308672481.963" 
    $P113."add_method"($P114, "find_method", $P2171)
    .const 'Sub' $P2172 = "77_1308672481.963" 
    $P112 = $P2172."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2173 = "77_1308672481.963" 
    $P114 = $P2173."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2174 = "77_1308672481.963" 
    $P112 = $P2174."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2175 = "77_1308672481.963" 
    $P114 = $P2175."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 41
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 71, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 71
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'Sub' $P2176 = "10_1308672481.963" 
    $P112 = $P2176."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 71
    $P112."set_static_lexpad_value"("NQPNativeHOW", $P113)
    .const 'Sub' $P2177 = "10_1308672481.963" 
    $P114 = $P2177."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2178 = "139_1308672481.963" 
    $P113."add_method"($P114, "new", $P2178)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2179 = "140_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2179)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2180 = "141_1308672481.963" 
    $P113."add_method"($P114, "new_type", $P2180)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2181 = "142_1308672481.963" 
    $P113."add_method"($P114, "add_method", $P2181)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2182 = "143_1308672481.963" 
    $P113."add_method"($P114, "add_multi_method", $P2182)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2183 = "144_1308672481.963" 
    $P113."add_method"($P114, "add_attribute", $P2183)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2184 = "145_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2184)
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    .const 'Sub' $P2185 = "146_1308672481.963" 
    $P113."add_method"($P114, "name", $P2185)
    .const 'Sub' $P2186 = "138_1308672481.963" 
    $P112 = $P2186."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 71
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2187 = "138_1308672481.963" 
    $P114 = $P2187."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2188 = "138_1308672481.963" 
    $P112 = $P2188."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 71
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2189 = "138_1308672481.963" 
    $P114 = $P2189."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 71
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 71
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 80, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 80
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'Sub' $P2190 = "10_1308672481.963" 
    $P112 = $P2190."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 80
    $P112."set_static_lexpad_value"("NQPAttribute", $P113)
    .const 'Sub' $P2191 = "10_1308672481.963" 
    $P114 = $P2191."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2192 = "150_1308672481.963" 
    $P113."add_method"($P114, "new", $P2192)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2193 = "151_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2193)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2194 = "152_1308672481.963" 
    $P113."add_method"($P114, "name", $P2194)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2195 = "153_1308672481.963" 
    $P113."add_method"($P114, "type", $P2195)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2196 = "154_1308672481.963" 
    $P113."add_method"($P114, "box_target", $P2196)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2197 = "155_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2197)
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    .const 'Sub' $P2198 = "160_1308672481.963" 
    $P113."add_method"($P114, "has_mutator", $P2198)
    .const 'Sub' $P2199 = "147_1308672481.963" 
    $P112 = $P2199."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 80
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2200 = "147_1308672481.963" 
    $P114 = $P2200."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2201 = "147_1308672481.963" 
    $P112 = $P2201."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 80
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2202 = "147_1308672481.963" 
    $P114 = $P2202."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 80
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 80
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 88, $P113
    nqp_get_sc_object $P112, "1308672478.93415", 88
    nqp_get_sc_object $P113, "1308672478.93415", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'Sub' $P2203 = "10_1308672481.963" 
    $P112 = $P2203."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 88
    $P112."set_static_lexpad_value"("NQPModuleHOW", $P113)
    .const 'Sub' $P2204 = "10_1308672481.963" 
    $P114 = $P2204."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2205 = "162_1308672481.963" 
    $P113."add_method"($P114, "new", $P2205)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2206 = "163_1308672481.963" 
    $P113."add_method"($P114, "BUILD", $P2206)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2207 = "164_1308672481.963" 
    $P113."add_method"($P114, "new_type", $P2207)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2208 = "165_1308672481.963" 
    $P113."add_method"($P114, "add_method", $P2208)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2209 = "166_1308672481.963" 
    $P113."add_method"($P114, "add_multi_method", $P2209)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2210 = "167_1308672481.963" 
    $P113."add_method"($P114, "add_attribute", $P2210)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2211 = "168_1308672481.963" 
    $P113."add_method"($P114, "compose", $P2211)
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    .const 'Sub' $P2212 = "169_1308672481.963" 
    $P113."add_method"($P114, "name", $P2212)
    .const 'Sub' $P2213 = "161_1308672481.963" 
    $P112 = $P2213."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 88
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2214 = "161_1308672481.963" 
    $P114 = $P2214."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2215 = "161_1308672481.963" 
    $P112 = $P2215."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 88
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2216 = "161_1308672481.963" 
    $P114 = $P2216."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 88
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1308672478.93415", 97, $P113
    .const 'Sub' $P2217 = "10_1308672481.963" 
    $P112 = $P2217."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 97
    $P112."set_static_lexpad_value"("EXPORTHOW", $P113)
    .const 'Sub' $P2218 = "10_1308672481.963" 
    $P114 = $P2218."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2219 = "170_1308672481.963" 
    $P112 = $P2219."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 97
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2220 = "170_1308672481.963" 
    $P114 = $P2220."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2221 = "170_1308672481.963" 
    $P112 = $P2221."get_lexinfo"()
    nqp_get_sc_object $P113, "1308672478.93415", 97
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2222 = "170_1308672481.963" 
    $P114 = $P2222."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1308672478.93415", 97
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1308672478.93415", 97
    $P113."compose"($P114)
  if_2076_end:
    nqp_get_sc_object $P112, "1308672478.93415", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1014"  :subid("11_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 5
    .const 'Sub' $P1018 = "12_1308672481.963" 
    capture_lex $P1018
    .lex "$?PACKAGE", $P1016
    .lex "$?CLASS", $P1017
.annotate 'line', 6
    .const 'Sub' $P1018 = "12_1308672481.963" 
    newclosure $P1113, $P1018
.annotate 'line', 5
    .return ($P1113)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("12_1308672481.963") :outer("11_1308672481.963")
    .param pmc param_1021
    .param pmc param_1022
    .param pmc param_1023
.annotate 'line', 6
    .const 'Sub' $P1088 = "18_1308672481.963" 
    capture_lex $P1088
    .const 'Sub' $P1073 = "17_1308672481.963" 
    capture_lex $P1073
    .const 'Sub' $P1067 = "16_1308672481.963" 
    capture_lex $P1067
    .const 'Sub' $P1035 = "13_1308672481.963" 
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
    unless_null $P1032, vivify_173
    $P1032 = root_new ['parrot';'Hash']
  vivify_173:
.annotate 'line', 9
    find_lex $P1033, "@roles"
    unless_null $P1033, vivify_174
    $P1033 = root_new ['parrot';'ResizablePMCArray']
  vivify_174:
    defined $I100, $P1033
    unless $I100, for_undef_175
    iter $P100, $P1033
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1063_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1063_test:
    unless $P100, loop1063_done
    shift $P101, $P100
  loop1063_redo:
    .const 'Sub' $P1035 = "13_1308672481.963" 
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
  for_undef_175:
.annotate 'line', 6
    find_lex $P1064, "%target_meth_info"
    unless_null $P1064, vivify_199
    $P1064 = root_new ['parrot';'Hash']
  vivify_199:
.annotate 'line', 35
    find_lex $P100, "$target"
    unless_null $P100, vivify_200
    new $P100, "Undef"
  vivify_200:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_201
    new $P102, "Undef"
  vivify_201:
    $P103 = $P101."methods"($P102)
    store_lex "@target_meths", $P103
.annotate 'line', 36
    find_lex $P1065, "@target_meths"
    unless_null $P1065, vivify_202
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    defined $I100, $P1065
    unless $I100, for_undef_203
    iter $P100, $P1065
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1070_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1070_test:
    unless $P100, loop1070_done
    shift $P101, $P100
  loop1070_redo:
    .const 'Sub' $P1067 = "16_1308672481.963" 
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
  for_undef_203:
.annotate 'line', 41
    find_lex $P1071, "%meth_info"
    unless_null $P1071, vivify_207
    $P1071 = root_new ['parrot';'Hash']
  vivify_207:
    defined $I100, $P1071
    unless $I100, for_undef_208
    iter $P100, $P1071
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1084_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1084_test:
    unless $P100, loop1084_done
    shift $P101, $P100
  loop1084_redo:
    .const 'Sub' $P1073 = "17_1308672481.963" 
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
  for_undef_208:
.annotate 'line', 6
    find_lex $P1085, "@all_roles"
    unless_null $P1085, vivify_225
    $P1085 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
.annotate 'line', 61
    find_lex $P1086, "@roles"
    unless_null $P1086, vivify_226
    $P1086 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    defined $I100, $P1086
    unless $I100, for_undef_227
    iter $P100, $P1086
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1111_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1111_test:
    unless $P100, loop1111_done
    shift $P101, $P100
  loop1111_redo:
    .const 'Sub' $P1088 = "18_1308672481.963" 
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
  for_undef_227:
.annotate 'line', 90
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1112, "@all_roles"
    unless_null $P1112, vivify_249
    $P1112 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
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
.sub "_block1034"  :anon :subid("13_1308672481.963") :outer("12_1308672481.963")
    .param pmc param_1038
.annotate 'line', 9
    .const 'Sub' $P1041 = "14_1308672481.963" 
    capture_lex $P1041
.annotate 'line', 10
    $P1037 = root_new ['parrot';'ResizablePMCArray']
    set $P1036, $P1037
    .lex "@methods", $P1036
    .lex "$_", param_1038
    find_lex $P102, "$_"
    unless_null $P102, vivify_176
    new $P102, "Undef"
  vivify_176:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_177
    new $P104, "Undef"
  vivify_177:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 11
    find_lex $P1039, "@methods"
    unless_null $P1039, vivify_178
    $P1039 = root_new ['parrot';'ResizablePMCArray']
  vivify_178:
    defined $I101, $P1039
    unless $I101, for_undef_179
    iter $P102, $P1039
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1062_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1062_test:
    unless $P102, loop1062_done
    shift $P103, $P102
  loop1062_redo:
    .const 'Sub' $P1041 = "14_1308672481.963" 
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
  for_undef_179:
.annotate 'line', 9
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1040"  :anon :subid("14_1308672481.963") :outer("13_1308672481.963")
    .param pmc param_1047
.annotate 'line', 11
    .const 'Sub' $P1056 = "15_1308672481.963" 
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
    unless_null $P107, vivify_180
    new $P107, "Undef"
  vivify_180:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$name", $P108
.annotate 'line', 13
    find_lex $P107, "$_"
    unless_null $P107, vivify_181
    new $P107, "Undef"
  vivify_181:
    store_lex "$meth", $P107
.annotate 'line', 11
    find_lex $P1048, "@meth_list"
    unless_null $P1048, vivify_182
    $P1048 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
.annotate 'line', 15
    find_lex $P107, "$name"
    unless_null $P107, vivify_183
    new $P107, "Undef"
  vivify_183:
    find_lex $P1050, "%meth_info"
    unless_null $P1050, vivify_184
    $P1050 = root_new ['parrot';'Hash']
  vivify_184:
    set $P108, $P1050[$P107]
    unless_null $P108, vivify_185
    new $P108, "Undef"
  vivify_185:
    defined $I102, $P108
    if $I102, if_1049
.annotate 'line', 19
    find_lex $P1052, "@meth_list"
    unless_null $P1052, vivify_186
    $P1052 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    find_lex $P109, "$name"
    unless_null $P109, vivify_187
    new $P109, "Undef"
  vivify_187:
    find_lex $P1053, "%meth_info"
    unless_null $P1053, vivify_188
    $P1053 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1053
  vivify_188:
    set $P1053[$P109], $P1052
.annotate 'line', 18
    goto if_1049_end
  if_1049:
.annotate 'line', 16
    find_lex $P109, "$name"
    unless_null $P109, vivify_189
    new $P109, "Undef"
  vivify_189:
    find_lex $P1051, "%meth_info"
    unless_null $P1051, vivify_190
    $P1051 = root_new ['parrot';'Hash']
  vivify_190:
    set $P110, $P1051[$P109]
    unless_null $P110, vivify_191
    new $P110, "Undef"
  vivify_191:
    store_lex "@meth_list", $P110
  if_1049_end:
.annotate 'line', 21
    new $P107, "Integer"
    assign $P107, 0
    store_lex "$found", $P107
.annotate 'line', 22
    find_lex $P1054, "@meth_list"
    unless_null $P1054, vivify_192
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    defined $I102, $P1054
    unless $I102, for_undef_193
    iter $P107, $P1054
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1059_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1059_test:
    unless $P107, loop1059_done
    shift $P108, $P107
  loop1059_redo:
    .const 'Sub' $P1056 = "15_1308672481.963" 
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
  for_undef_193:
.annotate 'line', 27
    find_lex $P108, "$found"
    unless_null $P108, vivify_196
    new $P108, "Undef"
  vivify_196:
    unless $P108, unless_1060
    set $P107, $P108
    goto unless_1060_end
  unless_1060:
.annotate 'line', 28
    find_lex $P1061, "@meth_list"
    unless_null $P1061, vivify_197
    $P1061 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    find_lex $P109, "$meth"
    unless_null $P109, vivify_198
    new $P109, "Undef"
  vivify_198:
    $P110 = $P1061."push"($P109)
.annotate 'line', 27
    set $P107, $P110
  unless_1060_end:
.annotate 'line', 11
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1055"  :anon :subid("15_1308672481.963") :outer("14_1308672481.963")
    .param pmc param_1057
.annotate 'line', 22
    .lex "$_", param_1057
.annotate 'line', 23
    find_lex $P110, "$meth"
    unless_null $P110, vivify_194
    new $P110, "Undef"
  vivify_194:
    find_lex $P111, "$_"
    unless_null $P111, vivify_195
    new $P111, "Undef"
  vivify_195:
    issame $I103, $P110, $P111
    if $I103, if_1058
    new $P109, 'Integer'
    set $P109, $I103
    goto if_1058_end
  if_1058:
.annotate 'line', 24
    new $P112, "Integer"
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
.sub "_block1066"  :anon :subid("16_1308672481.963") :outer("12_1308672481.963")
    .param pmc param_1068
.annotate 'line', 36
    .lex "$_", param_1068
.annotate 'line', 37
    find_lex $P102, "$_"
    unless_null $P102, vivify_204
    new $P102, "Undef"
  vivify_204:
    find_lex $P103, "$_"
    unless_null $P103, vivify_205
    new $P103, "Undef"
  vivify_205:
    set $S100, $P103
    find_lex $P1069, "%target_meth_info"
    unless_null $P1069, vivify_206
    $P1069 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1069
  vivify_206:
    set $P1069[$S100], $P102
.annotate 'line', 36
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1072"  :anon :subid("17_1308672481.963") :outer("12_1308672481.963")
    .param pmc param_1077
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
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    store_lex "$name", $P104
.annotate 'line', 43
    find_lex $P103, "$name"
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    find_lex $P1078, "%meth_info"
    unless_null $P1078, vivify_211
    $P1078 = root_new ['parrot';'Hash']
  vivify_211:
    set $P104, $P1078[$P103]
    unless_null $P104, vivify_212
    new $P104, "Undef"
  vivify_212:
    store_lex "@add_meths", $P104
.annotate 'line', 47
    find_lex $P104, "$name"
    unless_null $P104, vivify_213
    new $P104, "Undef"
  vivify_213:
    find_lex $P1080, "%target_meth_info"
    unless_null $P1080, vivify_214
    $P1080 = root_new ['parrot';'Hash']
  vivify_214:
    set $P105, $P1080[$P104]
    unless_null $P105, vivify_215
    new $P105, "Undef"
  vivify_215:
    defined $I101, $P105
    unless $I101, unless_1079
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1079_end
  unless_1079:
.annotate 'line', 49
    find_lex $P1082, "@add_meths"
    unless_null $P1082, vivify_216
    $P1082 = root_new ['parrot';'ResizablePMCArray']
  vivify_216:
    set $N100, $P1082
    iseq $I102, $N100, 1.0
    if $I102, if_1081
.annotate 'line', 54
    find_lex $P107, "$target"
    unless_null $P107, vivify_217
    new $P107, "Undef"
  vivify_217:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_218
    new $P109, "Undef"
  vivify_218:
    find_lex $P110, "$name"
    unless_null $P110, vivify_219
    new $P110, "Undef"
  vivify_219:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 52
    set $P106, $P111
.annotate 'line', 49
    goto if_1081_end
  if_1081:
.annotate 'line', 50
    find_lex $P107, "$target"
    unless_null $P107, vivify_220
    new $P107, "Undef"
  vivify_220:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_221
    new $P109, "Undef"
  vivify_221:
    find_lex $P110, "$name"
    unless_null $P110, vivify_222
    new $P110, "Undef"
  vivify_222:
    find_lex $P1083, "@add_meths"
    unless_null $P1083, vivify_223
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    set $P111, $P1083[0]
    unless_null $P111, vivify_224
    new $P111, "Undef"
  vivify_224:
    $P112 = $P108."add_method"($P109, $P110, $P111)
.annotate 'line', 49
    set $P106, $P112
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
.sub "_block1087"  :anon :subid("18_1308672481.963") :outer("12_1308672481.963")
    .param pmc param_1092
.annotate 'line', 61
    .const 'Sub' $P1095 = "19_1308672481.963" 
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
    unless_null $P103, vivify_228
    new $P103, "Undef"
  vivify_228:
    get_how $P104, $P103
    store_lex "$how", $P104
.annotate 'line', 65
    find_lex $P103, "$how"
    unless_null $P103, vivify_229
    new $P103, "Undef"
  vivify_229:
    find_lex $P104, "$_"
    unless_null $P104, vivify_230
    new $P104, "Undef"
  vivify_230:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 66
    find_lex $P1093, "@attributes"
    unless_null $P1093, vivify_231
    $P1093 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    defined $I101, $P1093
    unless $I101, for_undef_232
    iter $P103, $P1093
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1109_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1109_test:
    unless $P103, loop1109_done
    shift $P104, $P103
  loop1109_redo:
    .const 'Sub' $P1095 = "19_1308672481.963" 
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
  for_undef_232:
.annotate 'line', 87
    find_lex $P1110, "@all_roles"
    unless_null $P1110, vivify_247
    $P1110 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    find_lex $P103, "$_"
    unless_null $P103, vivify_248
    new $P103, "Undef"
  vivify_248:
    $P104 = $P1110."push"($P103)
.annotate 'line', 61
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1094"  :anon :subid("19_1308672481.963") :outer("18_1308672481.963")
    .param pmc param_1100
.annotate 'line', 66
    .const 'Sub' $P1103 = "20_1308672481.963" 
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
    unless_null $P107, vivify_233
    new $P107, "Undef"
  vivify_233:
    store_lex "$add_attr", $P107
.annotate 'line', 68
    new $P107, "Integer"
    assign $P107, 0
    store_lex "$skip", $P107
.annotate 'line', 69
    find_lex $P107, "$target"
    unless_null $P107, vivify_234
    new $P107, "Undef"
  vivify_234:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_235
    new $P109, "Undef"
  vivify_235:
    $P110 = $P108."attributes"($P109)
    store_lex "@cur_attrs", $P110
.annotate 'line', 70
    find_lex $P1101, "@cur_attrs"
    unless_null $P1101, vivify_236
    $P1101 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    defined $I102, $P1101
    unless $I102, for_undef_237
    iter $P107, $P1101
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1107_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1107_test:
    unless $P107, loop1107_done
    shift $P108, $P107
  loop1107_redo:
    .const 'Sub' $P1103 = "20_1308672481.963" 
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
  for_undef_237:
.annotate 'line', 80
    find_lex $P108, "$skip"
    unless_null $P108, vivify_243
    new $P108, "Undef"
  vivify_243:
    unless $P108, unless_1108
    set $P107, $P108
    goto unless_1108_end
  unless_1108:
.annotate 'line', 81
    find_lex $P109, "$target"
    unless_null $P109, vivify_244
    new $P109, "Undef"
  vivify_244:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_245
    new $P111, "Undef"
  vivify_245:
    find_lex $P112, "$add_attr"
    unless_null $P112, vivify_246
    new $P112, "Undef"
  vivify_246:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 80
    set $P107, $P113
  unless_1108_end:
.annotate 'line', 66
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1102"  :anon :subid("20_1308672481.963") :outer("19_1308672481.963")
    .param pmc param_1104
.annotate 'line', 70
    .lex "$_", param_1104
.annotate 'line', 71
    find_lex $P110, "$_"
    unless_null $P110, vivify_238
    new $P110, "Undef"
  vivify_238:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_239
    new $P111, "Undef"
  vivify_239:
    issame $I103, $P110, $P111
    if $I103, if_1105
.annotate 'line', 75
    find_lex $P114, "$_"
    unless_null $P114, vivify_240
    new $P114, "Undef"
  vivify_240:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_241
    new $P115, "Undef"
  vivify_241:
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
    unless_null $P117, vivify_242
    new $P117, "Undef"
  vivify_242:
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
    new $P112, "Integer"
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
.sub "_block1114"  :subid("21_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 97
    .const 'Sub' $P1236 = "41_1308672481.963" 
    capture_lex $P1236
    .const 'Sub' $P1232 = "40_1308672481.963" 
    capture_lex $P1232
    .const 'Sub' $P1218 = "38_1308672481.963" 
    capture_lex $P1218
    .const 'Sub' $P1215 = "37_1308672481.963" 
    capture_lex $P1215
    .const 'Sub' $P1211 = "36_1308672481.963" 
    capture_lex $P1211
    .const 'Sub' $P1207 = "35_1308672481.963" 
    capture_lex $P1207
    .const 'Sub' $P1193 = "33_1308672481.963" 
    capture_lex $P1193
    .const 'Sub' $P1178 = "31_1308672481.963" 
    capture_lex $P1178
    .const 'Sub' $P1172 = "30_1308672481.963" 
    capture_lex $P1172
    .const 'Sub' $P1166 = "29_1308672481.963" 
    capture_lex $P1166
    .const 'Sub' $P1162 = "28_1308672481.963" 
    capture_lex $P1162
    .const 'Sub' $P1154 = "27_1308672481.963" 
    capture_lex $P1154
    .const 'Sub' $P1141 = "26_1308672481.963" 
    capture_lex $P1141
    .const 'Sub' $P1133 = "25_1308672481.963" 
    capture_lex $P1133
    .const 'Sub' $P1127 = "24_1308672481.963" 
    capture_lex $P1127
    .const 'Sub' $P1123 = "23_1308672481.963" 
    capture_lex $P1123
    .const 'Sub' $P1118 = "22_1308672481.963" 
    capture_lex $P1118
    .lex "$?PACKAGE", $P1116
    .lex "$?CLASS", $P1117
.annotate 'line', 236
    .const 'Sub' $P1236 = "41_1308672481.963" 
    newclosure $P1239, $P1236
.annotate 'line', 97
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1119
    .param pmc param_1120 :named("name")
    .param pmc param_1121 :named("instance_of")
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
    unless_null $P101, vivify_250
    new $P101, "Undef"
  vivify_250:
    find_lex $P102, "$name"
    unless_null $P102, vivify_251
    new $P102, "Undef"
  vivify_251:
    find_lex $P103, "$instance_of"
    unless_null $P103, vivify_252
    new $P103, "Undef"
  vivify_252:
    $P101."BUILD"($P102 :named("name"), $P103 :named("instance_of"))
.annotate 'line', 129
    find_lex $P101, "$obj"
    unless_null $P101, vivify_253
    new $P101, "Undef"
  vivify_253:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1124
    .param pmc param_1125 :named("name")
    .param pmc param_1126 :named("instance_of")
.annotate 'line', 135
    .lex "self", param_1124
    .lex "$name", param_1125
    .lex "$instance_of", param_1126
.annotate 'line', 136
    find_lex $P100, "$name"
    unless_null $P100, vivify_254
    new $P100, "Undef"
  vivify_254:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!name", $P100
.annotate 'line', 137
    find_lex $P100, "$instance_of"
    unless_null $P100, vivify_255
    new $P100, "Undef"
  vivify_255:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!instance_of", $P100
.annotate 'line', 135
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1128
    .param pmc param_1131 :named("instance_of")
    .param pmc param_1129 :optional :named("name")
    .param int has_param_1129 :opt_flag
    .param pmc param_1130 :optional :named("repr")
    .param int has_param_1130 :opt_flag
.annotate 'line', 142
    .lex "self", param_1128
    if has_param_1129, optparam_256
    new $P100, "String"
    assign $P100, "<anon>"
    set param_1129, $P100
  optparam_256:
    .lex "$name", param_1129
    if has_param_1130, optparam_257
    new $P101, "String"
    assign $P101, "P6opaque"
    set param_1130, $P101
  optparam_257:
    .lex "$repr", param_1130
    .lex "$instance_of", param_1131
.annotate 'line', 143
    new $P102, "Undef"
    set $P1132, $P102
    .lex "$metarole", $P1132
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_258
    new $P104, "Undef"
  vivify_258:
    find_lex $P105, "$instance_of"
    unless_null $P105, vivify_259
    new $P105, "Undef"
  vivify_259:
    $P106 = $P103."new"($P104 :named("name"), $P105 :named("instance_of"))
    store_lex "$metarole", $P106
.annotate 'line', 144
    find_lex $P103, "$metarole"
    unless_null $P103, vivify_260
    new $P103, "Undef"
  vivify_260:
    find_lex $P104, "$repr"
    unless_null $P104, vivify_261
    new $P104, "Undef"
  vivify_261:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 142
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1134
    .param pmc param_1135
    .param pmc param_1136
    .param pmc param_1137
.annotate 'line', 147
    .lex "self", param_1134
    .lex "$obj", param_1135
    .lex "$name", param_1136
    .lex "$code_obj", param_1137
.annotate 'line', 148
    find_lex $P100, "$name"
    unless_null $P100, vivify_262
    new $P100, "Undef"
  vivify_262:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P1139, $P101, $P102, "%!methods"
    unless_null $P1139, vivify_263
    $P1139 = root_new ['parrot';'Hash']
  vivify_263:
    set $P103, $P1139[$P100]
    unless_null $P103, vivify_264
    new $P103, "Undef"
  vivify_264:
    unless $P103, if_1138_end
.annotate 'line', 149
    new $P104, "String"
    assign $P104, "This role already has a method named "
    find_lex $P105, "$name"
    unless_null $P105, vivify_265
    new $P105, "Undef"
  vivify_265:
    concat $P106, $P104, $P105
    die $P106
  if_1138_end:
.annotate 'line', 151
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_266
    new $P100, "Undef"
  vivify_266:
    find_lex $P101, "$name"
    unless_null $P101, vivify_267
    new $P101, "Undef"
  vivify_267:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1140, $P102, $P103, "%!methods"
    unless_null $P1140, vivify_268
    $P1140 = root_new ['parrot';'Hash']
    setattribute $P102, $P103, "%!methods", $P1140
  vivify_268:
    set $P1140[$P101], $P100
.annotate 'line', 147
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1142
    .param pmc param_1143
    .param pmc param_1144
    .param pmc param_1145
.annotate 'line', 154
    .lex "self", param_1142
    .lex "$obj", param_1143
    .lex "$name", param_1144
    .lex "$code_obj", param_1145
.annotate 'line', 155
    $P1147 = root_new ['parrot';'Hash']
    set $P1146, $P1147
    .lex "%todo", $P1146
.annotate 'line', 154
    find_lex $P1148, "%todo"
    unless_null $P1148, vivify_269
    $P1148 = root_new ['parrot';'Hash']
  vivify_269:
.annotate 'line', 156
    find_lex $P100, "$name"
    unless_null $P100, vivify_270
    new $P100, "Undef"
  vivify_270:
    find_lex $P1149, "%todo"
    unless_null $P1149, vivify_271
    $P1149 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1149
  vivify_271:
    set $P1149["name"], $P100
.annotate 'line', 157
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_272
    new $P100, "Undef"
  vivify_272:
    find_lex $P1150, "%todo"
    unless_null $P1150, vivify_273
    $P1150 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1150
  vivify_273:
    set $P1150["code"], $P100
.annotate 'line', 158
    find_lex $P1151, "%todo"
    unless_null $P1151, vivify_274
    $P1151 = root_new ['parrot';'Hash']
  vivify_274:
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1152, $P100, $P101, "@!multi_methods_to_incorporate"
    unless_null $P1152, vivify_275
    $P1152 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $N100, $P1152
    set $I100, $N100
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1153, $P102, $P103, "@!multi_methods_to_incorporate"
    unless_null $P1153, vivify_276
    $P1153 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P102, $P103, "@!multi_methods_to_incorporate", $P1153
  vivify_276:
    set $P1153[$I100], $P1151
.annotate 'line', 154
    find_lex $P100, "$code_obj"
    unless_null $P100, vivify_277
    new $P100, "Undef"
  vivify_277:
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1155
    .param pmc param_1156
    .param pmc param_1157
.annotate 'line', 162
    .lex "self", param_1155
    .lex "$obj", param_1156
    .lex "$meta_attr", param_1157
.annotate 'line', 163
    new $P100, "Undef"
    set $P1158, $P100
    .lex "$name", $P1158
    find_lex $P101, "$meta_attr"
    unless_null $P101, vivify_278
    new $P101, "Undef"
  vivify_278:
    $P102 = $P101."name"()
    store_lex "$name", $P102
.annotate 'line', 164
    find_lex $P101, "$name"
    unless_null $P101, vivify_279
    new $P101, "Undef"
  vivify_279:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1160, $P102, $P103, "%!attributes"
    unless_null $P1160, vivify_280
    $P1160 = root_new ['parrot';'Hash']
  vivify_280:
    set $P104, $P1160[$P101]
    unless_null $P104, vivify_281
    new $P104, "Undef"
  vivify_281:
    unless $P104, if_1159_end
.annotate 'line', 165
    new $P105, "String"
    assign $P105, "This role already has an attribute named "
    find_lex $P106, "$name"
    unless_null $P106, vivify_282
    new $P106, "Undef"
  vivify_282:
    concat $P107, $P105, $P106
    die $P107
  if_1159_end:
.annotate 'line', 167
    find_lex $P101, "$meta_attr"
    unless_null $P101, vivify_283
    new $P101, "Undef"
  vivify_283:
    find_lex $P102, "$name"
    unless_null $P102, vivify_284
    new $P102, "Undef"
  vivify_284:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1161, $P103, $P104, "%!attributes"
    unless_null $P1161, vivify_285
    $P1161 = root_new ['parrot';'Hash']
    setattribute $P103, $P104, "%!attributes", $P1161
  vivify_285:
    set $P1161[$P102], $P101
.annotate 'line', 162
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1163
    .param pmc param_1164
    .param pmc param_1165
.annotate 'line', 170
    .lex "self", param_1163
    .lex "$obj", param_1164
    .lex "$parent", param_1165
.annotate 'line', 171
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("29_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1167
    .param pmc param_1168
    .param pmc param_1169
.annotate 'line', 174
    .lex "self", param_1167
    .lex "$obj", param_1168
    .lex "$role", param_1169
.annotate 'line', 175
    find_lex $P100, "$role"
    unless_null $P100, vivify_286
    new $P100, "Undef"
  vivify_286:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P1170, $P101, $P102, "@!roles"
    unless_null $P1170, vivify_287
    $P1170 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    set $N100, $P1170
    set $I100, $N100
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1171, $P103, $P104, "@!roles"
    unless_null $P1171, vivify_288
    $P1171 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P103, $P104, "@!roles", $P1171
  vivify_288:
    set $P1171[$I100], $P100
.annotate 'line', 174
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1173
    .param pmc param_1174
    .param pmc param_1175
.annotate 'line', 178
    .lex "self", param_1173
    .lex "$obj", param_1174
    .lex "$colliding_name", param_1175
.annotate 'line', 179
    find_lex $P100, "$colliding_name"
    unless_null $P100, vivify_289
    new $P100, "Undef"
  vivify_289:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P1176, $P101, $P102, "@!collisions"
    unless_null $P1176, vivify_290
    $P1176 = root_new ['parrot';'ResizablePMCArray']
  vivify_290:
    set $N100, $P1176
    set $I100, $N100
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1177, $P103, $P104, "@!collisions"
    unless_null $P1177, vivify_291
    $P1177 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P103, $P104, "@!collisions", $P1177
  vivify_291:
    set $P1177[$I100], $P100
.annotate 'line', 178
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1179
    .param pmc param_1180
.annotate 'line', 183
    .const 'Sub' $P1185 = "32_1308672481.963" 
    capture_lex $P1185
    .lex "self", param_1179
    .lex "$obj", param_1180
.annotate 'line', 186
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1182, $P100, $P101, "@!roles"
    unless_null $P1182, vivify_292
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    unless $P1182, if_1181_end
.annotate 'line', 187
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1183, $P103, $P104, "@!roles"
    unless_null $P1183, vivify_293
    $P1183 = root_new ['parrot';'ResizablePMCArray']
  vivify_293:
    defined $I100, $P1183
    unless $I100, for_undef_294
    iter $P102, $P1183
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1191_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1191_test:
    unless $P102, loop1191_done
    shift $P105, $P102
  loop1191_redo:
    .const 'Sub' $P1185 = "32_1308672481.963" 
    capture_lex $P1185
    $P1185($P105)
  loop1191_next:
    goto loop1191_test
  loop1191_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1191_next
    eq $P107, .CONTROL_LOOP_REDO, loop1191_redo
  loop1191_done:
    pop_eh 
  for_undef_294:
.annotate 'line', 191
    find_lex $P102, "RoleToRoleApplier"
    find_lex $P103, "$obj"
    unless_null $P103, vivify_302
    new $P103, "Undef"
  vivify_302:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1192, $P104, $P105, "@!roles"
    unless_null $P1192, vivify_303
    $P1192 = root_new ['parrot';'ResizablePMCArray']
  vivify_303:
    $P102."apply"($P103, $P1192)
  if_1181_end:
.annotate 'line', 195
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 183
    find_lex $P100, "$obj"
    unless_null $P100, vivify_304
    new $P100, "Undef"
  vivify_304:
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1184"  :anon :subid("32_1308672481.963") :outer("31_1308672481.963")
    .param pmc param_1186
.annotate 'line', 187
    .lex "$_", param_1186
.annotate 'line', 188
    find_lex $P106, "$_"
    unless_null $P106, vivify_295
    new $P106, "Undef"
  vivify_295:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1187, $P107, $P108, "@!done"
    unless_null $P1187, vivify_296
    $P1187 = root_new ['parrot';'ResizablePMCArray']
  vivify_296:
    set $N100, $P1187
    set $I101, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1188, $P109, $P110, "@!done"
    unless_null $P1188, vivify_297
    $P1188 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!done", $P1188
  vivify_297:
    set $P1188[$I101], $P106
.annotate 'line', 189
    find_lex $P106, "$_"
    unless_null $P106, vivify_298
    new $P106, "Undef"
  vivify_298:
    get_how $P107, $P106
    find_lex $P108, "$_"
    unless_null $P108, vivify_299
    new $P108, "Undef"
  vivify_299:
    $P109 = $P107."instance_of"($P108)
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1189, $P110, $P111, "@!done"
    unless_null $P1189, vivify_300
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
    set $N100, $P1189
    set $I101, $N100
    find_lex $P112, "self"
    find_lex $P113, "$?CLASS"
    getattribute $P1190, $P112, $P113, "@!done"
    unless_null $P1190, vivify_301
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P112, $P113, "@!done", $P1190
  vivify_301:
    set $P1190[$I101], $P109
.annotate 'line', 187
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("33_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1194
    .param pmc param_1195
    .param pmc param_1196 :optional :named("local")
    .param int has_param_1196 :opt_flag
.annotate 'line', 204
    .const 'Sub' $P1202 = "34_1308672481.963" 
    capture_lex $P1202
    .lex "self", param_1194
    .lex "$obj", param_1195
    if has_param_1196, optparam_305
    new $P100, "Undef"
    set param_1196, $P100
  optparam_305:
    .lex "$local", param_1196
.annotate 'line', 205
    $P1198 = root_new ['parrot';'ResizablePMCArray']
    set $P1197, $P1198
    .lex "@meths", $P1197
.annotate 'line', 204
    find_lex $P1199, "@meths"
    unless_null $P1199, vivify_306
    $P1199 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
.annotate 'line', 206
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1200, $P102, $P103, "%!methods"
    unless_null $P1200, vivify_307
    $P1200 = root_new ['parrot';'Hash']
  vivify_307:
    defined $I100, $P1200
    unless $I100, for_undef_308
    iter $P101, $P1200
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1205_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1205_test:
    unless $P101, loop1205_done
    shift $P104, $P101
  loop1205_redo:
    .const 'Sub' $P1202 = "34_1308672481.963" 
    capture_lex $P1202
    $P1202($P104)
  loop1205_next:
    goto loop1205_test
  loop1205_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1205_next
    eq $P106, .CONTROL_LOOP_REDO, loop1205_redo
  loop1205_done:
    pop_eh 
  for_undef_308:
.annotate 'line', 204
    find_lex $P1206, "@meths"
    unless_null $P1206, vivify_311
    $P1206 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
    .return ($P1206)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1201"  :anon :subid("34_1308672481.963") :outer("33_1308672481.963")
    .param pmc param_1203
.annotate 'line', 206
    .lex "$_", param_1203
.annotate 'line', 207
    find_lex $P1204, "@meths"
    unless_null $P1204, vivify_309
    $P1204 = root_new ['parrot';'ResizablePMCArray']
  vivify_309:
    find_lex $P105, "$_"
    unless_null $P105, vivify_310
    new $P105, "Undef"
  vivify_310:
    $P106 = $P105."value"()
    $P107 = $P1204."push"($P106)
.annotate 'line', 206
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("35_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1208
    .param pmc param_1209
.annotate 'line', 212
    .lex "self", param_1208
    .lex "$obj", param_1209
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1210, $P100, $P101, "%!methods"
    unless_null $P1210, vivify_312
    $P1210 = root_new ['parrot';'Hash']
  vivify_312:
    .return ($P1210)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("36_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1212
    .param pmc param_1213
.annotate 'line', 216
    .lex "self", param_1212
    .lex "$obj", param_1213
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1214, $P100, $P101, "@!collisions"
    unless_null $P1214, vivify_313
    $P1214 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    .return ($P1214)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("37_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'line', 220
    .lex "self", param_1216
    .lex "$obj", param_1217
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_314
    new $P102, "Undef"
  vivify_314:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("38_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1219
    .param pmc param_1220
    .param pmc param_1221 :optional :named("local")
    .param int has_param_1221 :opt_flag
.annotate 'line', 224
    .const 'Sub' $P1227 = "39_1308672481.963" 
    capture_lex $P1227
    .lex "self", param_1219
    .lex "$obj", param_1220
    if has_param_1221, optparam_315
    new $P100, "Undef"
    set param_1221, $P100
  optparam_315:
    .lex "$local", param_1221
.annotate 'line', 225
    $P1223 = root_new ['parrot';'ResizablePMCArray']
    set $P1222, $P1223
    .lex "@attrs", $P1222
.annotate 'line', 224
    find_lex $P1224, "@attrs"
    unless_null $P1224, vivify_316
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 226
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1225, $P102, $P103, "%!attributes"
    unless_null $P1225, vivify_317
    $P1225 = root_new ['parrot';'Hash']
  vivify_317:
    defined $I100, $P1225
    unless $I100, for_undef_318
    iter $P101, $P1225
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1230_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1230_test:
    unless $P101, loop1230_done
    shift $P104, $P101
  loop1230_redo:
    .const 'Sub' $P1227 = "39_1308672481.963" 
    capture_lex $P1227
    $P1227($P104)
  loop1230_next:
    goto loop1230_test
  loop1230_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1230_next
    eq $P106, .CONTROL_LOOP_REDO, loop1230_redo
  loop1230_done:
    pop_eh 
  for_undef_318:
.annotate 'line', 224
    find_lex $P1231, "@attrs"
    unless_null $P1231, vivify_321
    $P1231 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    .return ($P1231)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1226"  :anon :subid("39_1308672481.963") :outer("38_1308672481.963")
    .param pmc param_1228
.annotate 'line', 226
    .lex "$_", param_1228
.annotate 'line', 227
    find_lex $P1229, "@attrs"
    unless_null $P1229, vivify_319
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
    find_lex $P105, "$_"
    unless_null $P105, vivify_320
    new $P105, "Undef"
  vivify_320:
    $P106 = $P105."value"()
    $P107 = $P1229."push"($P106)
.annotate 'line', 226
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("40_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1233
    .param pmc param_1234
.annotate 'line', 232
    .lex "self", param_1233
    .lex "$obj", param_1234
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1235, $P100, $P101, "@!roles"
    unless_null $P1235, vivify_322
    $P1235 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    .return ($P1235)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("41_1308672481.963") :outer("21_1308672481.963")
    .param pmc param_1237
    .param pmc param_1238
.annotate 'line', 236
    .lex "self", param_1237
    .lex "$obj", param_1238
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!instance_of"
    unless_null $P102, vivify_323
    new $P102, "Undef"
  vivify_323:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1240"  :subid("42_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 242
    .const 'Sub' $P1275 = "47_1308672481.963" 
    capture_lex $P1275
    .const 'Sub' $P1259 = "45_1308672481.963" 
    capture_lex $P1259
    .const 'Sub' $P1243 = "43_1308672481.963" 
    capture_lex $P1243
.annotate 'line', 244
    .const 'Sub' $P1243 = "43_1308672481.963" 
    newclosure $P1257, $P1243
    set $P1242, $P1257
    .lex "has_method", $P1242
.annotate 'line', 252
    .const 'Sub' $P1259 = "45_1308672481.963" 
    newclosure $P1272, $P1259
    set $P1258, $P1272
    .lex "has_attribute", $P1258
.annotate 'line', 242
    .lex "$?PACKAGE", $P1273
    .lex "$?CLASS", $P1274
    find_lex $P102, "has_method"
    find_lex $P102, "has_attribute"
.annotate 'line', 260
    .const 'Sub' $P1275 = "47_1308672481.963" 
    newclosure $P1317, $P1275
.annotate 'line', 242
    .return ($P1317)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1308672481.963") :outer("42_1308672481.963")
    .param pmc param_1246
    .param pmc param_1247
    .param pmc param_1248
.annotate 'line', 244
    .const 'Sub' $P1253 = "44_1308672481.963" 
    capture_lex $P1253
    new $P1245, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1245, control_1244
    push_eh $P1245
    .lex "$target", param_1246
    .lex "$name", param_1247
    .lex "$local", param_1248
.annotate 'line', 245
    $P1250 = root_new ['parrot';'ResizablePMCArray']
    set $P1249, $P1250
    .lex "@methods", $P1249
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
.annotate 'line', 246
    find_lex $P1251, "@methods"
    unless_null $P1251, vivify_327
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    defined $I100, $P1251
    unless $I100, for_undef_328
    iter $P100, $P1251
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1256_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1256_test:
    unless $P100, loop1256_done
    shift $P101, $P100
  loop1256_redo:
    .const 'Sub' $P1253 = "44_1308672481.963" 
    capture_lex $P1253
    $P1253($P101)
  loop1256_next:
    goto loop1256_test
  loop1256_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1256_next
    eq $P104, .CONTROL_LOOP_REDO, loop1256_redo
  loop1256_done:
    pop_eh 
  for_undef_328:
.annotate 'line', 249
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Integer"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 244
    .return ()
  control_1244:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1252"  :anon :subid("44_1308672481.963") :outer("43_1308672481.963")
    .param pmc param_1254
.annotate 'line', 246
    .lex "$_", param_1254
.annotate 'line', 247
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
    if $I101, if_1255
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1255_end
  if_1255:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Integer"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1255_end:
.annotate 'line', 246
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1308672481.963") :outer("42_1308672481.963")
    .param pmc param_1262
    .param pmc param_1263
.annotate 'line', 252
    .const 'Sub' $P1268 = "46_1308672481.963" 
    capture_lex $P1268
    new $P1261, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1261, control_1260
    push_eh $P1261
    .lex "$target", param_1262
    .lex "$name", param_1263
.annotate 'line', 253
    $P1265 = root_new ['parrot';'ResizablePMCArray']
    set $P1264, $P1265
    .lex "@attributes", $P1264
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
.annotate 'line', 254
    find_lex $P1266, "@attributes"
    unless_null $P1266, vivify_333
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    defined $I100, $P1266
    unless $I100, for_undef_334
    iter $P101, $P1266
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1271_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1271_test:
    unless $P101, loop1271_done
    shift $P102, $P101
  loop1271_redo:
    .const 'Sub' $P1268 = "46_1308672481.963" 
    capture_lex $P1268
    $P1268($P102)
  loop1271_next:
    goto loop1271_test
  loop1271_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1271_next
    eq $P105, .CONTROL_LOOP_REDO, loop1271_redo
  loop1271_done:
    pop_eh 
  for_undef_334:
.annotate 'line', 257
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    new $P102, "Integer"
    assign $P102, 0
    setattribute $P101, 'payload', $P102
    throw $P101
.annotate 'line', 252
    .return ()
  control_1260:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1267"  :anon :subid("46_1308672481.963") :outer("45_1308672481.963")
    .param pmc param_1269
.annotate 'line', 254
    .lex "$_", param_1269
.annotate 'line', 255
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
    if $I101, if_1270
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1270_end
  if_1270:
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Integer"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
  if_1270_end:
.annotate 'line', 254
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("47_1308672481.963") :outer("42_1308672481.963")
    .param pmc param_1276
    .param pmc param_1277
    .param pmc param_1278
.annotate 'line', 260
    .const 'Sub' $P1311 = "51_1308672481.963" 
    capture_lex $P1311
    .const 'Sub' $P1305 = "50_1308672481.963" 
    capture_lex $P1305
    .const 'Sub' $P1299 = "49_1308672481.963" 
    capture_lex $P1299
    .const 'Sub' $P1294 = "48_1308672481.963" 
    capture_lex $P1294
    .lex "self", param_1276
    .lex "$target", param_1277
    .lex "@roles", param_1278
.annotate 'line', 263
    new $P102, "Undef"
    set $P1279, $P102
    .lex "$to_compose", $P1279
.annotate 'line', 264
    new $P103, "Undef"
    set $P1280, $P103
    .lex "$to_compose_meta", $P1280
.annotate 'line', 279
    $P1282 = root_new ['parrot';'ResizablePMCArray']
    set $P1281, $P1282
    .lex "@collisions", $P1281
.annotate 'line', 288
    $P1284 = root_new ['parrot';'ResizablePMCArray']
    set $P1283, $P1284
    .lex "@methods", $P1283
.annotate 'line', 296
    $P1286 = root_new ['parrot';'ResizablePMCArray']
    set $P1285, $P1286
    .lex "@attributes", $P1285
.annotate 'line', 308
    $P1288 = root_new ['parrot';'ResizablePMCArray']
    set $P1287, $P1288
    .lex "@done", $P1287
.annotate 'line', 260
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_337
    new $P104, "Undef"
  vivify_337:
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_338
    new $P104, "Undef"
  vivify_338:
.annotate 'line', 265
    find_lex $P1290, "@roles"
    unless_null $P1290, vivify_339
    $P1290 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N100, $P1290
    iseq $I100, $N100, 1.0
    if $I100, if_1289
.annotate 'line', 270
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
.annotate 'line', 271
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_341
    new $P104, "Undef"
  vivify_341:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
.annotate 'line', 272
    find_lex $P1292, "@roles"
    unless_null $P1292, vivify_342
    $P1292 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    defined $I101, $P1292
    unless $I101, for_undef_343
    iter $P104, $P1292
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1296_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1296_test:
    unless $P104, loop1296_done
    shift $P105, $P104
  loop1296_redo:
    .const 'Sub' $P1294 = "48_1308672481.963" 
    capture_lex $P1294
    $P1294($P105)
  loop1296_next:
    goto loop1296_test
  loop1296_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1296_next
    eq $P107, .CONTROL_LOOP_REDO, loop1296_redo
  loop1296_done:
    pop_eh 
  for_undef_343:
.annotate 'line', 275
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
.annotate 'line', 269
    goto if_1289_end
  if_1289:
.annotate 'line', 266
    find_lex $P1291, "@roles"
    unless_null $P1291, vivify_349
    $P1291 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P104, $P1291[0]
    unless_null $P104, vivify_350
    new $P104, "Undef"
  vivify_350:
    store_lex "$to_compose", $P104
.annotate 'line', 267
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_351
    new $P104, "Undef"
  vivify_351:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
  if_1289_end:
.annotate 'line', 279
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
.annotate 'line', 280
    find_lex $P1297, "@collisions"
    unless_null $P1297, vivify_354
    $P1297 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    defined $I100, $P1297
    unless $I100, for_undef_355
    iter $P104, $P1297
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1302_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1302_test:
    unless $P104, loop1302_done
    shift $P105, $P104
  loop1302_redo:
    .const 'Sub' $P1299 = "49_1308672481.963" 
    capture_lex $P1299
    $P1299($P105)
  loop1302_next:
    goto loop1302_test
  loop1302_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1302_next
    eq $P108, .CONTROL_LOOP_REDO, loop1302_redo
  loop1302_done:
    pop_eh 
  for_undef_355:
.annotate 'line', 288
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
.annotate 'line', 289
    find_lex $P1303, "@methods"
    unless_null $P1303, vivify_363
    $P1303 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    defined $I100, $P1303
    unless $I100, for_undef_364
    iter $P104, $P1303
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1308_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1308_test:
    unless $P104, loop1308_done
    shift $P105, $P104
  loop1308_redo:
    .const 'Sub' $P1305 = "50_1308672481.963" 
    capture_lex $P1305
    $P1305($P105)
  loop1308_next:
    goto loop1308_test
  loop1308_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1308_next
    eq $P108, .CONTROL_LOOP_REDO, loop1308_redo
  loop1308_done:
    pop_eh 
  for_undef_364:
.annotate 'line', 296
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
.annotate 'line', 297
    find_lex $P1309, "@attributes"
    unless_null $P1309, vivify_373
    $P1309 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    defined $I100, $P1309
    unless $I100, for_undef_374
    iter $P104, $P1309
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1314_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1314_test:
    unless $P104, loop1314_done
    shift $P105, $P104
  loop1314_redo:
    .const 'Sub' $P1311 = "51_1308672481.963" 
    capture_lex $P1311
    $P1311($P105)
  loop1314_next:
    goto loop1314_test
  loop1314_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1314_next
    eq $P107, .CONTROL_LOOP_REDO, loop1314_redo
  loop1314_done:
    pop_eh 
  for_undef_374:
.annotate 'line', 260
    find_lex $P1315, "@done"
    unless_null $P1315, vivify_383
    $P1315 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
.annotate 'line', 309
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_384
    new $P104, "Undef"
  vivify_384:
    find_lex $P1316, "@done"
    unless_null $P1316, vivify_385
    $P1316 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P1316
  vivify_385:
    set $P1316[0], $P104
.annotate 'line', 260
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1293"  :anon :subid("48_1308672481.963") :outer("47_1308672481.963")
    .param pmc param_1295
.annotate 'line', 272
    .lex "$_", param_1295
.annotate 'line', 273
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
.annotate 'line', 272
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1298"  :anon :subid("49_1308672481.963") :outer("47_1308672481.963")
    .param pmc param_1300
.annotate 'line', 280
    .lex "$_", param_1300
.annotate 'line', 281
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
    unless $P109, unless_1301
    set $P106, $P109
    goto unless_1301_end
  unless_1301:
.annotate 'line', 282
    new $P110, 'String'
    set $P110, "Method '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_358
    new $P111, "Undef"
  vivify_358:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' collides and a resolution must be provided by the class '"
.annotate 'line', 283
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
.annotate 'line', 282
    concat $P118, $P117, "'"
.annotate 'line', 283
    die $P118
  unless_1301_end:
.annotate 'line', 280
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1304"  :anon :subid("50_1308672481.963") :outer("47_1308672481.963")
    .param pmc param_1306
.annotate 'line', 289
    .lex "$_", param_1306
.annotate 'line', 290
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
    unless $P109, unless_1307
    set $P106, $P109
    goto unless_1307_end
  unless_1307:
.annotate 'line', 291
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
.annotate 'line', 290
    set $P106, $P115
  unless_1307_end:
.annotate 'line', 289
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1310"  :anon :subid("51_1308672481.963") :outer("47_1308672481.963")
    .param pmc param_1312
.annotate 'line', 297
    .lex "$_", param_1312
.annotate 'line', 298
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
    unless $P109, if_1313_end
.annotate 'line', 299
    new $P110, "String"
    assign $P110, "Attribute '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_377
    new $P111, "Undef"
  vivify_377:
    $S100 = $P111."name"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "' already exists in the class '"
.annotate 'line', 300
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
.annotate 'line', 299
    concat $P118, $P117, "', but a role also wishes to compose it"
.annotate 'line', 300
    die $P118
  if_1313_end:
.annotate 'line', 302
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
.annotate 'line', 297
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1318"  :subid("52_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 318
    .const 'Sub' $P1455 = "76_1308672481.963" 
    capture_lex $P1455
    .const 'Sub' $P1441 = "74_1308672481.963" 
    capture_lex $P1441
    .const 'Sub' $P1438 = "73_1308672481.963" 
    capture_lex $P1438
    .const 'Sub' $P1434 = "72_1308672481.963" 
    capture_lex $P1434
    .const 'Sub' $P1420 = "70_1308672481.963" 
    capture_lex $P1420
    .const 'Sub' $P1390 = "65_1308672481.963" 
    capture_lex $P1390
    .const 'Sub' $P1387 = "64_1308672481.963" 
    capture_lex $P1387
    .const 'Sub' $P1384 = "63_1308672481.963" 
    capture_lex $P1384
    .const 'Sub' $P1378 = "62_1308672481.963" 
    capture_lex $P1378
    .const 'Sub' $P1374 = "61_1308672481.963" 
    capture_lex $P1374
    .const 'Sub' $P1366 = "60_1308672481.963" 
    capture_lex $P1366
    .const 'Sub' $P1353 = "59_1308672481.963" 
    capture_lex $P1353
    .const 'Sub' $P1345 = "58_1308672481.963" 
    capture_lex $P1345
    .const 'Sub' $P1341 = "57_1308672481.963" 
    capture_lex $P1341
    .const 'Sub' $P1335 = "56_1308672481.963" 
    capture_lex $P1335
    .const 'Sub' $P1332 = "55_1308672481.963" 
    capture_lex $P1332
    .const 'Sub' $P1328 = "54_1308672481.963" 
    capture_lex $P1328
    .const 'Sub' $P1321 = "53_1308672481.963" 
    capture_lex $P1321
.annotate 'line', 455
    .const 'Sub' $P1321 = "53_1308672481.963" 
    newclosure $P1325, $P1321
    set $P1320, $P1325
    .lex "reify_method", $P1320
.annotate 'line', 318
    .lex "$?PACKAGE", $P1326
    .lex "$?CLASS", $P1327
    find_lex $P102, "reify_method"
.annotate 'line', 488
    .const 'Sub' $P1455 = "76_1308672481.963" 
    newclosure $P1459, $P1455
.annotate 'line', 318
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1322
.annotate 'line', 455
    .lex "$meth", param_1322
.annotate 'line', 456
    new $P100, "Undef"
    set $P1323, $P100
    .lex "$callback", $P1323
    find_lex $P101, "$meth"
    unless_null $P101, vivify_386
    new $P101, "Undef"
  vivify_386:
    getprop $P102, "REIFY_CALLBACK", $P101
    store_lex "$callback", $P102
.annotate 'line', 457
    find_lex $P102, "$callback"
    unless_null $P102, vivify_387
    new $P102, "Undef"
  vivify_387:
    defined $I100, $P102
    if $I100, if_1324
    find_lex $P106, "$meth"
    unless_null $P106, vivify_388
    new $P106, "Undef"
  vivify_388:
    clone $P107, $P106
    set $P101, $P107
    goto if_1324_end
  if_1324:
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
  if_1324_end:
.annotate 'line', 455
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("54_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1329
    .param pmc param_1330 :named("name")
.annotate 'line', 348
    .lex "self", param_1329
    .lex "$name", param_1330
.annotate 'line', 349
    new $P102, "Undef"
    set $P1331, $P102
    .lex "$obj", $P1331
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 350
    find_lex $P103, "$obj"
    unless_null $P103, vivify_391
    new $P103, "Undef"
  vivify_391:
    find_lex $P104, "$name"
    unless_null $P104, vivify_392
    new $P104, "Undef"
  vivify_392:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 348
    find_lex $P103, "$obj"
    unless_null $P103, vivify_393
    new $P103, "Undef"
  vivify_393:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("55_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1333
    .param pmc param_1334 :named("name")
.annotate 'line', 354
    .lex "self", param_1333
    .lex "$name", param_1334
.annotate 'line', 355
    find_lex $P102, "$name"
    unless_null $P102, vivify_394
    new $P102, "Undef"
  vivify_394:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!name", $P102
.annotate 'line', 354
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("56_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1336
    .param pmc param_1337 :optional :named("name")
    .param int has_param_1337 :opt_flag
    .param pmc param_1338 :optional :named("repr")
    .param int has_param_1338 :opt_flag
.annotate 'line', 360
    .lex "self", param_1336
    if has_param_1337, optparam_395
    new $P102, "String"
    assign $P102, "<anon>"
    set param_1337, $P102
  optparam_395:
    .lex "$name", param_1337
    if has_param_1338, optparam_396
    new $P103, "String"
    assign $P103, "P6opaque"
    set param_1338, $P103
  optparam_396:
    .lex "$repr", param_1338
.annotate 'line', 361
    new $P104, "Undef"
    set $P1339, $P104
    .lex "$metarole", $P1339
    find_lex $P105, "self"
    find_lex $P106, "$name"
    unless_null $P106, vivify_397
    new $P106, "Undef"
  vivify_397:
    $P107 = $P105."new"($P106 :named("name"))
    store_lex "$metarole", $P107
.annotate 'line', 363
    find_lex $P105, "$metarole"
    unless_null $P105, vivify_398
    new $P105, "Undef"
  vivify_398:
    find_lex $P106, "$repr"
    unless_null $P106, vivify_399
    new $P106, "Undef"
  vivify_399:
    set $S100, $P106
    repr_type_object_for $P107, $P105, $S100
    $P1340 = root_new ['parrot';'Hash']
    set_who $P107, $P1340
.annotate 'line', 360
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("57_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1342
    .param pmc param_1343
    .param pmc param_1344
.annotate 'line', 367
    .lex "self", param_1342
    .lex "$obj", param_1343
    .lex "$body_block", param_1344
.annotate 'line', 368
    find_lex $P102, "$body_block"
    unless_null $P102, vivify_400
    new $P102, "Undef"
  vivify_400:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!body_block", $P102
.annotate 'line', 367
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("58_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1346
    .param pmc param_1347
    .param pmc param_1348
    .param pmc param_1349
.annotate 'line', 371
    .lex "self", param_1346
    .lex "$obj", param_1347
    .lex "$name", param_1348
    .lex "$code_obj", param_1349
.annotate 'line', 372
    find_lex $P102, "$name"
    unless_null $P102, vivify_401
    new $P102, "Undef"
  vivify_401:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1351, $P103, $P104, "%!methods"
    unless_null $P1351, vivify_402
    $P1351 = root_new ['parrot';'Hash']
  vivify_402:
    set $P105, $P1351[$P102]
    unless_null $P105, vivify_403
    new $P105, "Undef"
  vivify_403:
    unless $P105, if_1350_end
.annotate 'line', 373
    new $P106, "String"
    assign $P106, "This role already has a method named "
    find_lex $P107, "$name"
    unless_null $P107, vivify_404
    new $P107, "Undef"
  vivify_404:
    concat $P108, $P106, $P107
    die $P108
  if_1350_end:
.annotate 'line', 375
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_405
    new $P102, "Undef"
  vivify_405:
    find_lex $P103, "$name"
    unless_null $P103, vivify_406
    new $P103, "Undef"
  vivify_406:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1352, $P104, $P105, "%!methods"
    unless_null $P1352, vivify_407
    $P1352 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!methods", $P1352
  vivify_407:
    set $P1352[$P103], $P102
.annotate 'line', 371
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("59_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1354
    .param pmc param_1355
    .param pmc param_1356
    .param pmc param_1357
.annotate 'line', 378
    .lex "self", param_1354
    .lex "$obj", param_1355
    .lex "$name", param_1356
    .lex "$code_obj", param_1357
.annotate 'line', 379
    $P1359 = root_new ['parrot';'Hash']
    set $P1358, $P1359
    .lex "%todo", $P1358
.annotate 'line', 378
    find_lex $P1360, "%todo"
    unless_null $P1360, vivify_408
    $P1360 = root_new ['parrot';'Hash']
  vivify_408:
.annotate 'line', 380
    find_lex $P102, "$name"
    unless_null $P102, vivify_409
    new $P102, "Undef"
  vivify_409:
    find_lex $P1361, "%todo"
    unless_null $P1361, vivify_410
    $P1361 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1361
  vivify_410:
    set $P1361["name"], $P102
.annotate 'line', 381
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_411
    new $P102, "Undef"
  vivify_411:
    find_lex $P1362, "%todo"
    unless_null $P1362, vivify_412
    $P1362 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1362
  vivify_412:
    set $P1362["code"], $P102
.annotate 'line', 382
    find_lex $P1363, "%todo"
    unless_null $P1363, vivify_413
    $P1363 = root_new ['parrot';'Hash']
  vivify_413:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1364, $P102, $P103, "@!multi_methods_to_incorporate"
    unless_null $P1364, vivify_414
    $P1364 = root_new ['parrot';'ResizablePMCArray']
  vivify_414:
    set $N100, $P1364
    set $I100, $N100
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1365, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1365, vivify_415
    $P1365 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P104, $P105, "@!multi_methods_to_incorporate", $P1365
  vivify_415:
    set $P1365[$I100], $P1363
.annotate 'line', 378
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_416
    new $P102, "Undef"
  vivify_416:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("60_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1367
    .param pmc param_1368
    .param pmc param_1369
.annotate 'line', 386
    .lex "self", param_1367
    .lex "$obj", param_1368
    .lex "$meta_attr", param_1369
.annotate 'line', 387
    new $P102, "Undef"
    set $P1370, $P102
    .lex "$name", $P1370
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_417
    new $P103, "Undef"
  vivify_417:
    $P104 = $P103."name"()
    store_lex "$name", $P104
.annotate 'line', 388
    find_lex $P103, "$name"
    unless_null $P103, vivify_418
    new $P103, "Undef"
  vivify_418:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1372, $P104, $P105, "%!attributes"
    unless_null $P1372, vivify_419
    $P1372 = root_new ['parrot';'Hash']
  vivify_419:
    set $P106, $P1372[$P103]
    unless_null $P106, vivify_420
    new $P106, "Undef"
  vivify_420:
    unless $P106, if_1371_end
.annotate 'line', 389
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    find_lex $P108, "$name"
    unless_null $P108, vivify_421
    new $P108, "Undef"
  vivify_421:
    concat $P109, $P107, $P108
    die $P109
  if_1371_end:
.annotate 'line', 391
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_422
    new $P103, "Undef"
  vivify_422:
    find_lex $P104, "$name"
    unless_null $P104, vivify_423
    new $P104, "Undef"
  vivify_423:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P1373, $P105, $P106, "%!attributes"
    unless_null $P1373, vivify_424
    $P1373 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!attributes", $P1373
  vivify_424:
    set $P1373[$P104], $P103
.annotate 'line', 386
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("61_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1375
    .param pmc param_1376
    .param pmc param_1377
.annotate 'line', 394
    .lex "self", param_1375
    .lex "$obj", param_1376
    .lex "$parent", param_1377
.annotate 'line', 395
    die "A role cannot inherit from a class"
.annotate 'line', 394
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("62_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1379
    .param pmc param_1380
    .param pmc param_1381
.annotate 'line', 398
    .lex "self", param_1379
    .lex "$obj", param_1380
    .lex "$role", param_1381
.annotate 'line', 399
    find_lex $P102, "$role"
    unless_null $P102, vivify_425
    new $P102, "Undef"
  vivify_425:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1382, $P103, $P104, "@!roles"
    unless_null $P1382, vivify_426
    $P1382 = root_new ['parrot';'ResizablePMCArray']
  vivify_426:
    set $N100, $P1382
    set $I100, $N100
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P1383, $P105, $P106, "@!roles"
    unless_null $P1383, vivify_427
    $P1383 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "@!roles", $P1383
  vivify_427:
    set $P1383[$I100], $P102
.annotate 'line', 398
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("63_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1385
    .param pmc param_1386
.annotate 'line', 403
    .lex "self", param_1385
    .lex "$obj", param_1386
.annotate 'line', 404
    new $P102, "Integer"
    assign $P102, 1
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!composed", $P102
.annotate 'line', 403
    find_lex $P102, "$obj"
    unless_null $P102, vivify_428
    new $P102, "Undef"
  vivify_428:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("64_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1388
    .param pmc param_1389
.annotate 'line', 414
    .lex "self", param_1388
    .lex "$obj", param_1389
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate" :anon :subid("65_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1393
    .param pmc param_1394
    .param pmc param_1395
.annotate 'line', 420
    .const 'Sub' $P1416 = "69_1308672481.963" 
    capture_lex $P1416
    .const 'Sub' $P1409 = "68_1308672481.963" 
    capture_lex $P1409
    .const 'Sub' $P1404 = "67_1308672481.963" 
    capture_lex $P1404
    .const 'Sub' $P1399 = "66_1308672481.963" 
    capture_lex $P1399
    new $P1392, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1392, control_1391
    push_eh $P1392
    .lex "self", param_1393
    .lex "$obj", param_1394
    .lex "$class_arg", param_1395
.annotate 'line', 426
    new $P102, "Undef"
    set $P1396, $P102
    .lex "$irole", $P1396
.annotate 'line', 423
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!body_block"
    unless_null $P105, vivify_429
    new $P105, "Undef"
  vivify_429:
    find_lex $P106, "$class_arg"
    unless_null $P106, vivify_430
    new $P106, "Undef"
  vivify_430:
    $P105($P106)
.annotate 'line', 426
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!name"
    unless_null $P106, vivify_431
    new $P106, "Undef"
  vivify_431:
    find_lex $P107, "$obj"
    unless_null $P107, vivify_432
    new $P107, "Undef"
  vivify_432:
    $P108 = $P103."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    store_lex "$irole", $P108
.annotate 'line', 430
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1397, $P104, $P105, "%!attributes"
    unless_null $P1397, vivify_433
    $P1397 = root_new ['parrot';'Hash']
  vivify_433:
    defined $I100, $P1397
    unless $I100, for_undef_434
    iter $P103, $P1397
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1401_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1401_test:
    unless $P103, loop1401_done
    shift $P106, $P103
  loop1401_redo:
    .const 'Sub' $P1399 = "66_1308672481.963" 
    capture_lex $P1399
    $P1399($P106)
  loop1401_next:
    goto loop1401_test
  loop1401_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1401_next
    eq $P108, .CONTROL_LOOP_REDO, loop1401_redo
  loop1401_done:
    pop_eh 
  for_undef_434:
.annotate 'line', 435
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1402, $P104, $P105, "%!methods"
    unless_null $P1402, vivify_438
    $P1402 = root_new ['parrot';'Hash']
  vivify_438:
    defined $I100, $P1402
    unless $I100, for_undef_439
    iter $P103, $P1402
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1406_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1406_test:
    unless $P103, loop1406_done
    shift $P106, $P103
  loop1406_redo:
    .const 'Sub' $P1404 = "67_1308672481.963" 
    capture_lex $P1404
    $P1404($P106)
  loop1406_next:
    goto loop1406_test
  loop1406_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1406_next
    eq $P108, .CONTROL_LOOP_REDO, loop1406_redo
  loop1406_done:
    pop_eh 
  for_undef_439:
.annotate 'line', 438
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1407, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1407, vivify_444
    $P1407 = root_new ['parrot';'ResizablePMCArray']
  vivify_444:
    defined $I100, $P1407
    unless $I100, for_undef_445
    iter $P103, $P1407
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1413_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1413_test:
    unless $P103, loop1413_done
    shift $P106, $P103
  loop1413_redo:
    .const 'Sub' $P1409 = "68_1308672481.963" 
    capture_lex $P1409
    $P1409($P106)
  loop1413_next:
    goto loop1413_test
  loop1413_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1413_next
    eq $P108, .CONTROL_LOOP_REDO, loop1413_redo
  loop1413_done:
    pop_eh 
  for_undef_445:
.annotate 'line', 443
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1414, $P104, $P105, "@!roles"
    unless_null $P1414, vivify_452
    $P1414 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    defined $I100, $P1414
    unless $I100, for_undef_453
    iter $P103, $P1414
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1419_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1419_test:
    unless $P103, loop1419_done
    shift $P106, $P103
  loop1419_redo:
    .const 'Sub' $P1416 = "69_1308672481.963" 
    capture_lex $P1416
    $P1416($P106)
  loop1419_next:
    goto loop1419_test
  loop1419_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1419_next
    eq $P109, .CONTROL_LOOP_REDO, loop1419_redo
  loop1419_done:
    pop_eh 
  for_undef_453:
.annotate 'line', 449
    find_lex $P103, "$irole"
    unless_null $P103, vivify_460
    new $P103, "Undef"
  vivify_460:
    get_how $P104, $P103
    find_lex $P105, "$irole"
    unless_null $P105, vivify_461
    new $P105, "Undef"
  vivify_461:
    $P104."compose"($P105)
.annotate 'line', 450
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    find_lex $P104, "$irole"
    unless_null $P104, vivify_462
    new $P104, "Undef"
  vivify_462:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 420
    .return ()
  control_1391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1398"  :anon :subid("66_1308672481.963") :outer("65_1308672481.963")
    .param pmc param_1400
.annotate 'line', 430
    .lex "$_", param_1400
.annotate 'line', 431
    find_lex $P107, "$irole"
    unless_null $P107, vivify_435
    new $P107, "Undef"
  vivify_435:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_436
    new $P109, "Undef"
  vivify_436:
    find_lex $P110, "$_"
    unless_null $P110, vivify_437
    new $P110, "Undef"
  vivify_437:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 430
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1403"  :anon :subid("67_1308672481.963") :outer("65_1308672481.963")
    .param pmc param_1405
.annotate 'line', 435
    .lex "$_", param_1405
.annotate 'line', 436
    find_lex $P107, "$irole"
    unless_null $P107, vivify_440
    new $P107, "Undef"
  vivify_440:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_441
    new $P109, "Undef"
  vivify_441:
    find_lex $P110, "$_"
    unless_null $P110, vivify_442
    new $P110, "Undef"
  vivify_442:
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_443
    new $P112, "Undef"
  vivify_443:
    $P113 = $P112."value"()
    $P114 = "reify_method"($P113)
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 435
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1408"  :anon :subid("68_1308672481.963") :outer("65_1308672481.963")
    .param pmc param_1410
.annotate 'line', 438
    .lex "$_", param_1410
.annotate 'line', 439
    find_lex $P107, "$irole"
    unless_null $P107, vivify_446
    new $P107, "Undef"
  vivify_446:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_447
    new $P109, "Undef"
  vivify_447:
    find_lex $P1411, "$_"
    unless_null $P1411, vivify_448
    $P1411 = root_new ['parrot';'Hash']
  vivify_448:
    set $P110, $P1411["name"]
    unless_null $P110, vivify_449
    new $P110, "Undef"
  vivify_449:
    find_lex $P1412, "$_"
    unless_null $P1412, vivify_450
    $P1412 = root_new ['parrot';'Hash']
  vivify_450:
    set $P111, $P1412["code"]
    unless_null $P111, vivify_451
    new $P111, "Undef"
  vivify_451:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 438
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1415"  :anon :subid("69_1308672481.963") :outer("65_1308672481.963")
    .param pmc param_1418
.annotate 'line', 444
    new $P107, "Undef"
    set $P1417, $P107
    .lex "$instantiated", $P1417
    .lex "$_", param_1418
    find_lex $P108, "$irole"
    unless_null $P108, vivify_454
    new $P108, "Undef"
  vivify_454:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_455
    new $P110, "Undef"
  vivify_455:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_456
    new $P111, "Undef"
  vivify_456:
    $P112 = $P109."instantiate"($P110, $P111)
    store_lex "$instantiated", $P112
.annotate 'line', 445
    find_lex $P108, "$irole"
    unless_null $P108, vivify_457
    new $P108, "Undef"
  vivify_457:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_458
    new $P110, "Undef"
  vivify_458:
    find_lex $P111, "$instantiated"
    unless_null $P111, vivify_459
    new $P111, "Undef"
  vivify_459:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 443
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("70_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1421
    .param pmc param_1422
    .param pmc param_1423 :optional :named("local")
    .param int has_param_1423 :opt_flag
.annotate 'line', 464
    .const 'Sub' $P1429 = "71_1308672481.963" 
    capture_lex $P1429
    .lex "self", param_1421
    .lex "$obj", param_1422
    if has_param_1423, optparam_463
    new $P102, "Undef"
    set param_1423, $P102
  optparam_463:
    .lex "$local", param_1423
.annotate 'line', 465
    $P1425 = root_new ['parrot';'ResizablePMCArray']
    set $P1424, $P1425
    .lex "@meths", $P1424
.annotate 'line', 464
    find_lex $P1426, "@meths"
    unless_null $P1426, vivify_464
    $P1426 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
.annotate 'line', 466
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1427, $P104, $P105, "%!methods"
    unless_null $P1427, vivify_465
    $P1427 = root_new ['parrot';'Hash']
  vivify_465:
    defined $I100, $P1427
    unless $I100, for_undef_466
    iter $P103, $P1427
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1432_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1432_test:
    unless $P103, loop1432_done
    shift $P106, $P103
  loop1432_redo:
    .const 'Sub' $P1429 = "71_1308672481.963" 
    capture_lex $P1429
    $P1429($P106)
  loop1432_next:
    goto loop1432_test
  loop1432_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1432_next
    eq $P108, .CONTROL_LOOP_REDO, loop1432_redo
  loop1432_done:
    pop_eh 
  for_undef_466:
.annotate 'line', 464
    find_lex $P1433, "@meths"
    unless_null $P1433, vivify_469
    $P1433 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    .return ($P1433)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1428"  :anon :subid("71_1308672481.963") :outer("70_1308672481.963")
    .param pmc param_1430
.annotate 'line', 466
    .lex "$_", param_1430
.annotate 'line', 467
    find_lex $P1431, "@meths"
    unless_null $P1431, vivify_467
    $P1431 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    find_lex $P107, "$_"
    unless_null $P107, vivify_468
    new $P107, "Undef"
  vivify_468:
    $P108 = $P107."value"()
    $P109 = $P1431."push"($P108)
.annotate 'line', 466
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("72_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1435
    .param pmc param_1436
.annotate 'line', 472
    .lex "self", param_1435
    .lex "$obj", param_1436
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1437, $P102, $P103, "%!methods"
    unless_null $P1437, vivify_470
    $P1437 = root_new ['parrot';'Hash']
  vivify_470:
    .return ($P1437)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("73_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1439
    .param pmc param_1440
.annotate 'line', 476
    .lex "self", param_1439
    .lex "$obj", param_1440
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_471
    new $P104, "Undef"
  vivify_471:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("74_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1442
    .param pmc param_1443
    .param pmc param_1444 :optional :named("local")
    .param int has_param_1444 :opt_flag
.annotate 'line', 480
    .const 'Sub' $P1450 = "75_1308672481.963" 
    capture_lex $P1450
    .lex "self", param_1442
    .lex "$obj", param_1443
    if has_param_1444, optparam_472
    new $P102, "Undef"
    set param_1444, $P102
  optparam_472:
    .lex "$local", param_1444
.annotate 'line', 481
    $P1446 = root_new ['parrot';'ResizablePMCArray']
    set $P1445, $P1446
    .lex "@attrs", $P1445
.annotate 'line', 480
    find_lex $P1447, "@attrs"
    unless_null $P1447, vivify_473
    $P1447 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 482
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1448, $P104, $P105, "%!attributes"
    unless_null $P1448, vivify_474
    $P1448 = root_new ['parrot';'Hash']
  vivify_474:
    defined $I100, $P1448
    unless $I100, for_undef_475
    iter $P103, $P1448
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1453_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1453_test:
    unless $P103, loop1453_done
    shift $P106, $P103
  loop1453_redo:
    .const 'Sub' $P1450 = "75_1308672481.963" 
    capture_lex $P1450
    $P1450($P106)
  loop1453_next:
    goto loop1453_test
  loop1453_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1453_next
    eq $P108, .CONTROL_LOOP_REDO, loop1453_redo
  loop1453_done:
    pop_eh 
  for_undef_475:
.annotate 'line', 480
    find_lex $P1454, "@attrs"
    unless_null $P1454, vivify_478
    $P1454 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    .return ($P1454)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1449"  :anon :subid("75_1308672481.963") :outer("74_1308672481.963")
    .param pmc param_1451
.annotate 'line', 482
    .lex "$_", param_1451
.annotate 'line', 483
    find_lex $P1452, "@attrs"
    unless_null $P1452, vivify_476
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    find_lex $P107, "$_"
    unless_null $P107, vivify_477
    new $P107, "Undef"
  vivify_477:
    $P108 = $P107."value"()
    $P109 = $P1452."push"($P108)
.annotate 'line', 482
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("76_1308672481.963") :outer("52_1308672481.963")
    .param pmc param_1456
    .param pmc param_1457
.annotate 'line', 488
    .lex "self", param_1456
    .lex "$obj", param_1457
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1458, $P102, $P103, "@!roles"
    unless_null $P1458, vivify_479
    $P1458 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    .return ($P1458)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1460"  :subid("77_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 498
    .const 'Sub' $P1909 = "136_1308672481.963" 
    capture_lex $P1909
    .const 'Sub' $P1893 = "134_1308672481.963" 
    capture_lex $P1893
    .const 'Sub' $P1882 = "133_1308672481.963" 
    capture_lex $P1882
    .const 'Sub' $P1870 = "132_1308672481.963" 
    capture_lex $P1870
    .const 'Sub' $P1865 = "131_1308672481.963" 
    capture_lex $P1865
    .const 'Sub' $P1860 = "130_1308672481.963" 
    capture_lex $P1860
    .const 'Sub' $P1846 = "128_1308672481.963" 
    capture_lex $P1846
    .const 'Sub' $P1843 = "127_1308672481.963" 
    capture_lex $P1843
    .const 'Sub' $P1839 = "126_1308672481.963" 
    capture_lex $P1839
    .const 'Sub' $P1825 = "124_1308672481.963" 
    capture_lex $P1825
    .const 'Sub' $P1820 = "123_1308672481.963" 
    capture_lex $P1820
    .const 'Sub' $P1813 = "122_1308672481.963" 
    capture_lex $P1813
    .const 'Sub' $P1789 = "119_1308672481.963" 
    capture_lex $P1789
    .const 'Sub' $P1765 = "116_1308672481.963" 
    capture_lex $P1765
    .const 'Sub' $P1743 = "113_1308672481.963" 
    capture_lex $P1743
    .const 'Sub' $P1724 = "110_1308672481.963" 
    capture_lex $P1724
    .const 'Sub' $P1676 = "105_1308672481.963" 
    capture_lex $P1676
    .const 'Sub' $P1646 = "101_1308672481.963" 
    capture_lex $P1646
    .const 'Sub' $P1638 = "100_1308672481.963" 
    capture_lex $P1638
    .const 'Sub' $P1630 = "99_1308672481.963" 
    capture_lex $P1630
    .const 'Sub' $P1618 = "97_1308672481.963" 
    capture_lex $P1618
    .const 'Sub' $P1614 = "96_1308672481.963" 
    capture_lex $P1614
    .const 'Sub' $P1600 = "94_1308672481.963" 
    capture_lex $P1600
    .const 'Sub' $P1592 = "93_1308672481.963" 
    capture_lex $P1592
    .const 'Sub' $P1579 = "92_1308672481.963" 
    capture_lex $P1579
    .const 'Sub' $P1569 = "91_1308672481.963" 
    capture_lex $P1569
    .const 'Sub' $P1563 = "90_1308672481.963" 
    capture_lex $P1563
    .const 'Sub' $P1560 = "89_1308672481.963" 
    capture_lex $P1560
    .const 'Sub' $P1556 = "88_1308672481.963" 
    capture_lex $P1556
    .const 'Sub' $P1492 = "81_1308672481.963" 
    capture_lex $P1492
    .const 'Sub' $P1463 = "78_1308672481.963" 
    capture_lex $P1463
.annotate 'line', 735
    .const 'Sub' $P1463 = "78_1308672481.963" 
    newclosure $P1490, $P1463
    set $P1462, $P1490
    .lex "compute_c3_mro", $P1462
.annotate 'line', 757
    .const 'Sub' $P1492 = "81_1308672481.963" 
    newclosure $P1553, $P1492
    set $P1491, $P1553
    .lex "c3_merge", $P1491
.annotate 'line', 498
    .lex "$?PACKAGE", $P1554
    .lex "$?CLASS", $P1555
    find_lex $P106, "compute_c3_mro"
    find_lex $P106, "c3_merge"
.annotate 'line', 959
    .const 'Sub' $P1909 = "136_1308672481.963" 
    newclosure $P1925, $P1909
.annotate 'line', 498
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1466
.annotate 'line', 735
    .const 'Sub' $P1475 = "79_1308672481.963" 
    capture_lex $P1475
    new $P1465, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1465, control_1464
    push_eh $P1465
    .lex "$class", param_1466
.annotate 'line', 736
    $P1468 = root_new ['parrot';'ResizablePMCArray']
    set $P1467, $P1468
    .lex "@immediate_parents", $P1467
.annotate 'line', 739
    $P1470 = root_new ['parrot';'ResizablePMCArray']
    set $P1469, $P1470
    .lex "@result", $P1469
.annotate 'line', 736
    find_lex $P100, "$class"
    unless_null $P100, vivify_480
    new $P100, "Undef"
  vivify_480:
    get_how $P101, $P100
    find_lex $P102, "$class"
    unless_null $P102, vivify_481
    new $P102, "Undef"
  vivify_481:
    $P103 = $P101."parents"($P102, 1 :named("local"))
    store_lex "@immediate_parents", $P103
.annotate 'line', 735
    find_lex $P1471, "@result"
    unless_null $P1471, vivify_482
    $P1471 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
.annotate 'line', 740
    find_lex $P1473, "@immediate_parents"
    unless_null $P1473, vivify_483
    $P1473 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    set $N100, $P1473
    unless $N100, if_1472_end
    .const 'Sub' $P1475 = "79_1308672481.963" 
    capture_lex $P1475
    $P1475()
  if_1472_end:
.annotate 'line', 752
    find_lex $P1488, "@result"
    unless_null $P1488, vivify_492
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P100, "$class"
    unless_null $P100, vivify_493
    new $P100, "Undef"
  vivify_493:
    $P1488."unshift"($P100)
.annotate 'line', 753
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1489, "@result"
    unless_null $P1489, vivify_494
    $P1489 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    setattribute $P100, 'payload', $P1489
    throw $P100
.annotate 'line', 735
    .return ()
  control_1464:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1474"  :anon :subid("79_1308672481.963") :outer("78_1308672481.963")
.annotate 'line', 740
    .const 'Sub' $P1481 = "80_1308672481.963" 
    capture_lex $P1481
.annotate 'line', 743
    $P1477 = root_new ['parrot';'ResizablePMCArray']
    set $P1476, $P1477
    .lex "@merge_list", $P1476
.annotate 'line', 740
    find_lex $P1478, "@merge_list"
    unless_null $P1478, vivify_484
    $P1478 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
.annotate 'line', 744
    find_lex $P1479, "@immediate_parents"
    unless_null $P1479, vivify_485
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    defined $I100, $P1479
    unless $I100, for_undef_486
    iter $P100, $P1479
    new $P102, 'ExceptionHandler'
    set_label $P102, loop1484_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop1484_test:
    unless $P100, loop1484_done
    shift $P101, $P100
  loop1484_redo:
    .const 'Sub' $P1481 = "80_1308672481.963" 
    capture_lex $P1481
    $P1481($P101)
  loop1484_next:
    goto loop1484_test
  loop1484_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop1484_next
    eq $P103, .CONTROL_LOOP_REDO, loop1484_redo
  loop1484_done:
    pop_eh 
  for_undef_486:
.annotate 'line', 747
    find_lex $P1485, "@merge_list"
    unless_null $P1485, vivify_489
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    find_lex $P1486, "@immediate_parents"
    unless_null $P1486, vivify_490
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    $P1485."push"($P1486)
.annotate 'line', 748
    find_lex $P1487, "@merge_list"
    unless_null $P1487, vivify_491
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    $P100 = "c3_merge"($P1487)
    store_lex "@result", $P100
.annotate 'line', 740
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1480"  :anon :subid("80_1308672481.963") :outer("79_1308672481.963")
    .param pmc param_1482
.annotate 'line', 744
    .lex "$_", param_1482
.annotate 'line', 745
    find_lex $P1483, "@merge_list"
    unless_null $P1483, vivify_487
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    find_lex $P102, "$_"
    unless_null $P102, vivify_488
    new $P102, "Undef"
  vivify_488:
    $P103 = "compute_c3_mro"($P102)
    $P104 = $P1483."push"($P103)
.annotate 'line', 744
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1495
.annotate 'line', 757
    .const 'Sub' $P1536 = "86_1308672481.963" 
    capture_lex $P1536
    .const 'Sub' $P1505 = "82_1308672481.963" 
    capture_lex $P1505
    new $P1494, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1494, control_1493
    push_eh $P1494
    .lex "@merge_list", param_1495
.annotate 'line', 758
    $P1497 = root_new ['parrot';'ResizablePMCArray']
    set $P1496, $P1497
    .lex "@result", $P1496
.annotate 'line', 759
    new $P101, "Undef"
    set $P1498, $P101
    .lex "$accepted", $P1498
.annotate 'line', 760
    new $P102, "Undef"
    set $P1499, $P102
    .lex "$something_accepted", $P1499
.annotate 'line', 761
    new $P103, "Undef"
    set $P1500, $P103
    .lex "$cand_count", $P1500
.annotate 'line', 804
    new $P104, "Undef"
    set $P1501, $P104
    .lex "$i", $P1501
.annotate 'line', 757
    find_lex $P1502, "@result"
    unless_null $P1502, vivify_495
    $P1502 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_496
    new $P105, "Undef"
  vivify_496:
.annotate 'line', 760
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 761
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$cand_count", $P105
.annotate 'line', 764
    find_lex $P1503, "@merge_list"
    unless_null $P1503, vivify_497
    $P1503 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    defined $I100, $P1503
    unless $I100, for_undef_498
    iter $P105, $P1503
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1530_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1530_test:
    unless $P105, loop1530_done
    shift $P106, $P105
  loop1530_redo:
    .const 'Sub' $P1505 = "82_1308672481.963" 
    capture_lex $P1505
    $P1505($P106)
  loop1530_next:
    goto loop1530_test
  loop1530_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1530_next
    eq $P109, .CONTROL_LOOP_REDO, loop1530_redo
  loop1530_done:
    pop_eh 
  for_undef_498:
.annotate 'line', 794
    find_lex $P105, "$cand_count"
    unless_null $P105, vivify_517
    new $P105, "Undef"
  vivify_517:
    set $N100, $P105
    iseq $I100, $N100, 0.0
    unless $I100, if_1531_end
.annotate 'line', 795
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P1532, "@result"
    unless_null $P1532, vivify_518
    $P1532 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    setattribute $P106, 'payload', $P1532
    throw $P106
  if_1531_end:
.annotate 'line', 799
    find_lex $P105, "$something_accepted"
    unless_null $P105, vivify_519
    new $P105, "Undef"
  vivify_519:
    if $P105, unless_1533_end
.annotate 'line', 800
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1533_end:
.annotate 'line', 804
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 805
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1549_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1549_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_520
    new $P105, "Undef"
  vivify_520:
    set $N100, $P105
    find_lex $P1534, "@merge_list"
    unless_null $P1534, vivify_521
    $P1534 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    set $N101, $P1534
    islt $I100, $N100, $N101
    unless $I100, loop1549_done
  loop1549_redo:
    .const 'Sub' $P1536 = "86_1308672481.963" 
    capture_lex $P1536
    $P1536()
  loop1549_next:
    goto loop1549_test
  loop1549_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1549_next
    eq $P108, .CONTROL_LOOP_REDO, loop1549_redo
  loop1549_done:
    pop_eh 
.annotate 'line', 818
    find_lex $P1550, "@merge_list"
    unless_null $P1550, vivify_535
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    $P105 = "c3_merge"($P1550)
    store_lex "@result", $P105
.annotate 'line', 819
    find_lex $P1551, "@result"
    unless_null $P1551, vivify_536
    $P1551 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_537
    new $P105, "Undef"
  vivify_537:
    $P1551."unshift"($P105)
.annotate 'line', 820
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P1552, "@result"
    unless_null $P1552, vivify_538
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    setattribute $P105, 'payload', $P1552
    throw $P105
.annotate 'line', 757
    .return ()
  control_1493:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1504"  :anon :subid("82_1308672481.963") :outer("81_1308672481.963")
    .param pmc param_1508
.annotate 'line', 764
    .const 'Sub' $P1512 = "83_1308672481.963" 
    capture_lex $P1512
.annotate 'line', 765
    $P1507 = root_new ['parrot';'ResizablePMCArray']
    set $P1506, $P1507
    .lex "@cand_list", $P1506
    .lex "$_", param_1508
    find_lex $P107, "$_"
    unless_null $P107, vivify_499
    new $P107, "Undef"
  vivify_499:
    store_lex "@cand_list", $P107
.annotate 'line', 766
    find_lex $P1510, "@cand_list"
    unless_null $P1510, vivify_500
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    set $N100, $P1510
    if $N100, if_1509
    new $P107, 'Float'
    set $P107, $N100
    goto if_1509_end
  if_1509:
    .const 'Sub' $P1512 = "83_1308672481.963" 
    capture_lex $P1512
    $P111 = $P1512()
    set $P107, $P111
  if_1509_end:
.annotate 'line', 764
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1511"  :anon :subid("83_1308672481.963") :outer("82_1308672481.963")
.annotate 'line', 766
    .const 'Sub' $P1518 = "84_1308672481.963" 
    capture_lex $P1518
.annotate 'line', 767
    new $P108, "Undef"
    set $P1513, $P108
    .lex "$rejected", $P1513
.annotate 'line', 768
    new $P109, "Undef"
    set $P1514, $P109
    .lex "$cand_class", $P1514
.annotate 'line', 767
    new $P110, "Integer"
    assign $P110, 0
    store_lex "$rejected", $P110
.annotate 'line', 768
    find_lex $P1515, "@cand_list"
    unless_null $P1515, vivify_501
    $P1515 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    set $P110, $P1515[0]
    unless_null $P110, vivify_502
    new $P110, "Undef"
  vivify_502:
    store_lex "$cand_class", $P110
.annotate 'line', 769
    find_lex $P110, "$cand_count"
    unless_null $P110, vivify_503
    new $P110, "Undef"
  vivify_503:
    add $P111, $P110, 1
    store_lex "$cand_count", $P111
.annotate 'line', 770
    find_lex $P1516, "@merge_list"
    unless_null $P1516, vivify_504
    $P1516 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    defined $I101, $P1516
    unless $I101, for_undef_505
    iter $P110, $P1516
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1529_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1529_test:
    unless $P110, loop1529_done
    shift $P111, $P110
  loop1529_redo:
    .const 'Sub' $P1518 = "84_1308672481.963" 
    capture_lex $P1518
    $P1518($P111)
  loop1529_next:
    goto loop1529_test
  loop1529_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1529_next
    eq $P114, .CONTROL_LOOP_REDO, loop1529_redo
  loop1529_done:
    pop_eh 
  for_undef_505:
.annotate 'line', 766
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1517"  :anon :subid("84_1308672481.963") :outer("83_1308672481.963")
    .param pmc param_1519
.annotate 'line', 770
    .const 'Sub' $P1523 = "85_1308672481.963" 
    capture_lex $P1523
    .lex "$_", param_1519
.annotate 'line', 772
    find_lex $P112, "$_"
    unless_null $P112, vivify_506
    new $P112, "Undef"
  vivify_506:
    find_lex $P1521, "@cand_list"
    unless_null $P1521, vivify_507
    $P1521 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    issame $I102, $P112, $P1521
    if $I102, unless_1520_end
    .const 'Sub' $P1523 = "85_1308672481.963" 
    capture_lex $P1523
    $P1523()
  unless_1520_end:
.annotate 'line', 784
    find_lex $P113, "$rejected"
    unless_null $P113, vivify_515
    new $P113, "Undef"
  vivify_515:
    unless $P113, unless_1528
    set $P112, $P113
    goto unless_1528_end
  unless_1528:
.annotate 'line', 785
    find_lex $P114, "$cand_class"
    unless_null $P114, vivify_516
    new $P114, "Undef"
  vivify_516:
    store_lex "$accepted", $P114
.annotate 'line', 786
    new $P114, "Integer"
    assign $P114, 1
    store_lex "$something_accepted", $P114
.annotate 'line', 787
    die 0, .CONTROL_LOOP_LAST
  unless_1528_end:
.annotate 'line', 770
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1522"  :anon :subid("85_1308672481.963") :outer("84_1308672481.963")
.annotate 'line', 774
    new $P113, "Undef"
    set $P1524, $P113
    .lex "$cur_pos", $P1524
    new $P114, "Integer"
    assign $P114, 1
    store_lex "$cur_pos", $P114
.annotate 'line', 775
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1527_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1527_test:
    find_lex $P114, "$cur_pos"
    unless_null $P114, vivify_508
    new $P114, "Undef"
  vivify_508:
    set $N101, $P114
    find_lex $P115, "$_"
    unless_null $P115, vivify_509
    new $P115, "Undef"
  vivify_509:
    set $N102, $P115
    isle $I103, $N101, $N102
    unless $I103, loop1527_done
  loop1527_redo:
.annotate 'line', 776
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_510
    new $P116, "Undef"
  vivify_510:
    set $I104, $P116
    find_lex $P1526, "$_"
    unless_null $P1526, vivify_511
    $P1526 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    set $P117, $P1526[$I104]
    unless_null $P117, vivify_512
    new $P117, "Undef"
  vivify_512:
    find_lex $P118, "$cand_class"
    unless_null $P118, vivify_513
    new $P118, "Undef"
  vivify_513:
    issame $I105, $P117, $P118
    unless $I105, if_1525_end
.annotate 'line', 777
    new $P119, "Integer"
    assign $P119, 1
    store_lex "$rejected", $P119
  if_1525_end:
.annotate 'line', 779
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_514
    new $P116, "Undef"
  vivify_514:
    add $P117, $P116, 1
    store_lex "$cur_pos", $P117
  loop1527_next:
.annotate 'line', 775
    goto loop1527_test
  loop1527_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1527_next
    eq $P117, .CONTROL_LOOP_REDO, loop1527_redo
  loop1527_done:
    pop_eh 
.annotate 'line', 772
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1535"  :anon :subid("86_1308672481.963") :outer("81_1308672481.963")
.annotate 'line', 805
    .const 'Sub' $P1542 = "87_1308672481.963" 
    capture_lex $P1542
.annotate 'line', 806
    $P1538 = root_new ['parrot';'ResizablePMCArray']
    set $P1537, $P1538
    .lex "@new_list", $P1537
.annotate 'line', 805
    find_lex $P1539, "@new_list"
    unless_null $P1539, vivify_522
    $P1539 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
.annotate 'line', 807
    find_lex $P107, "$i"
    unless_null $P107, vivify_523
    new $P107, "Undef"
  vivify_523:
    set $I101, $P107
    find_lex $P1540, "@merge_list"
    unless_null $P1540, vivify_524
    $P1540 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $P108, $P1540[$I101]
    unless_null $P108, vivify_525
    new $P108, "Undef"
  vivify_525:
    defined $I102, $P108
    unless $I102, for_undef_526
    iter $P106, $P108
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1546_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1546_test:
    unless $P106, loop1546_done
    shift $P109, $P106
  loop1546_redo:
    .const 'Sub' $P1542 = "87_1308672481.963" 
    capture_lex $P1542
    $P1542($P109)
  loop1546_next:
    goto loop1546_test
  loop1546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1546_next
    eq $P112, .CONTROL_LOOP_REDO, loop1546_redo
  loop1546_done:
    pop_eh 
  for_undef_526:
.annotate 'line', 812
    find_lex $P1547, "@new_list"
    unless_null $P1547, vivify_531
    $P1547 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    find_lex $P106, "$i"
    unless_null $P106, vivify_532
    new $P106, "Undef"
  vivify_532:
    set $I101, $P106
    find_lex $P1548, "@merge_list"
    unless_null $P1548, vivify_533
    $P1548 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1548
  vivify_533:
    set $P1548[$I101], $P1547
.annotate 'line', 813
    find_lex $P106, "$i"
    unless_null $P106, vivify_534
    new $P106, "Undef"
  vivify_534:
    add $P107, $P106, 1
    store_lex "$i", $P107
.annotate 'line', 805
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1541"  :anon :subid("87_1308672481.963") :outer("86_1308672481.963")
    .param pmc param_1543
.annotate 'line', 807
    .lex "$_", param_1543
.annotate 'line', 808
    find_lex $P111, "$_"
    unless_null $P111, vivify_527
    new $P111, "Undef"
  vivify_527:
    find_lex $P112, "$accepted"
    unless_null $P112, vivify_528
    new $P112, "Undef"
  vivify_528:
    issame $I103, $P111, $P112
    unless $I103, unless_1544
    new $P110, 'Integer'
    set $P110, $I103
    goto unless_1544_end
  unless_1544:
.annotate 'line', 809
    find_lex $P1545, "@new_list"
    unless_null $P1545, vivify_529
    $P1545 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    find_lex $P113, "$_"
    unless_null $P113, vivify_530
    new $P113, "Undef"
  vivify_530:
    $P114 = $P1545."push"($P113)
.annotate 'line', 808
    set $P110, $P114
  unless_1544_end:
.annotate 'line', 807
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("88_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1557
    .param pmc param_1558 :optional :named("name")
    .param int has_param_1558 :opt_flag
.annotate 'line', 535
    .lex "self", param_1557
    if has_param_1558, optparam_539
    new $P106, "Undef"
    set param_1558, $P106
  optparam_539:
    .lex "$name", param_1558
.annotate 'line', 536
    new $P107, "Undef"
    set $P1559, $P107
    .lex "$obj", $P1559
    find_lex $P108, "self"
    repr_instance_of $P109, $P108
    store_lex "$obj", $P109
.annotate 'line', 537
    find_lex $P108, "$obj"
    unless_null $P108, vivify_540
    new $P108, "Undef"
  vivify_540:
    find_lex $P109, "$name"
    unless_null $P109, vivify_541
    new $P109, "Undef"
  vivify_541:
    $P108."BUILD"($P109 :named("name"))
.annotate 'line', 535
    find_lex $P108, "$obj"
    unless_null $P108, vivify_542
    new $P108, "Undef"
  vivify_542:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("89_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1561
    .param pmc param_1562 :optional :named("name")
    .param int has_param_1562 :opt_flag
.annotate 'line', 541
    .lex "self", param_1561
    if has_param_1562, optparam_543
    new $P106, "Undef"
    set param_1562, $P106
  optparam_543:
    .lex "$name", param_1562
.annotate 'line', 542
    find_lex $P107, "$name"
    unless_null $P107, vivify_544
    new $P107, "Undef"
  vivify_544:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!name", $P107
.annotate 'line', 541
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("90_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1564
    .param pmc param_1565 :optional :named("name")
    .param int has_param_1565 :opt_flag
    .param pmc param_1566 :optional :named("repr")
    .param int has_param_1566 :opt_flag
.annotate 'line', 547
    .lex "self", param_1564
    if has_param_1565, optparam_545
    new $P106, "String"
    assign $P106, "<anon>"
    set param_1565, $P106
  optparam_545:
    .lex "$name", param_1565
    if has_param_1566, optparam_546
    new $P107, "String"
    assign $P107, "P6opaque"
    set param_1566, $P107
  optparam_546:
    .lex "$repr", param_1566
.annotate 'line', 548
    new $P108, "Undef"
    set $P1567, $P108
    .lex "$metaclass", $P1567
    find_lex $P109, "self"
    find_lex $P110, "$name"
    unless_null $P110, vivify_547
    new $P110, "Undef"
  vivify_547:
    $P111 = $P109."new"($P110 :named("name"))
    store_lex "$metaclass", $P111
.annotate 'line', 550
    find_lex $P109, "$metaclass"
    unless_null $P109, vivify_548
    new $P109, "Undef"
  vivify_548:
    find_lex $P110, "$repr"
    unless_null $P110, vivify_549
    new $P110, "Undef"
  vivify_549:
    set $S100, $P110
    repr_type_object_for $P111, $P109, $S100
    $P1568 = root_new ['parrot';'Hash']
    set_who $P111, $P1568
.annotate 'line', 547
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("91_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1570
    .param pmc param_1571
    .param pmc param_1572
    .param pmc param_1573
.annotate 'line', 554
    .lex "self", param_1570
    .lex "$obj", param_1571
    .lex "$name", param_1572
    .lex "$code_obj", param_1573
.annotate 'line', 555
    find_lex $P106, "$name"
    unless_null $P106, vivify_550
    new $P106, "Undef"
  vivify_550:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1575, $P107, $P108, "%!methods"
    unless_null $P1575, vivify_551
    $P1575 = root_new ['parrot';'Hash']
  vivify_551:
    set $P109, $P1575[$P106]
    unless_null $P109, vivify_552
    new $P109, "Undef"
  vivify_552:
    unless $P109, if_1574_end
.annotate 'line', 556
    new $P110, "String"
    assign $P110, "This class already has a method named "
    find_lex $P111, "$name"
    unless_null $P111, vivify_553
    new $P111, "Undef"
  vivify_553:
    concat $P112, $P110, $P111
    die $P112
  if_1574_end:
.annotate 'line', 558
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_554
    new $P107, "Undef"
  vivify_554:
    isnull $I100, $P107
    unless $I100, unless_1577
    new $P106, 'Integer'
    set $P106, $I100
    goto unless_1577_end
  unless_1577:
    find_lex $P108, "$code_obj"
    unless_null $P108, vivify_555
    new $P108, "Undef"
  vivify_555:
    isa $I101, $P108, "Undef"
    new $P106, 'Integer'
    set $P106, $I101
  unless_1577_end:
    unless $P106, if_1576_end
.annotate 'line', 559
    new $P109, 'String'
    set $P109, "Cannot add a null method '"
    find_lex $P110, "$name"
    unless_null $P110, vivify_556
    new $P110, "Undef"
  vivify_556:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' to class '"
    find_lex $P113, "self"
    find_lex $P114, "$?CLASS"
    getattribute $P115, $P113, $P114, "$!name"
    unless_null $P115, vivify_557
    new $P115, "Undef"
  vivify_557:
    concat $P116, $P112, $P115
    concat $P117, $P116, "'"
    die $P117
  if_1576_end:
.annotate 'line', 561
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_558
    new $P106, "Undef"
  vivify_558:
    find_lex $P107, "$name"
    unless_null $P107, vivify_559
    new $P107, "Undef"
  vivify_559:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1578, $P108, $P109, "%!methods"
    unless_null $P1578, vivify_560
    $P1578 = root_new ['parrot';'Hash']
    setattribute $P108, $P109, "%!methods", $P1578
  vivify_560:
    set $P1578[$P107], $P106
.annotate 'line', 554
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("92_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1580
    .param pmc param_1581
    .param pmc param_1582
    .param pmc param_1583
.annotate 'line', 564
    .lex "self", param_1580
    .lex "$obj", param_1581
    .lex "$name", param_1582
    .lex "$code_obj", param_1583
.annotate 'line', 570
    $P1585 = root_new ['parrot';'Hash']
    set $P1584, $P1585
    .lex "%todo", $P1584
.annotate 'line', 564
    find_lex $P1586, "%todo"
    unless_null $P1586, vivify_561
    $P1586 = root_new ['parrot';'Hash']
  vivify_561:
.annotate 'line', 571
    find_lex $P106, "$name"
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    find_lex $P1587, "%todo"
    unless_null $P1587, vivify_563
    $P1587 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1587
  vivify_563:
    set $P1587["name"], $P106
.annotate 'line', 572
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_564
    new $P106, "Undef"
  vivify_564:
    find_lex $P1588, "%todo"
    unless_null $P1588, vivify_565
    $P1588 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1588
  vivify_565:
    set $P1588["code"], $P106
.annotate 'line', 573
    find_lex $P1589, "%todo"
    unless_null $P1589, vivify_566
    $P1589 = root_new ['parrot';'Hash']
  vivify_566:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1590, $P106, $P107, "@!multi_methods_to_incorporate"
    unless_null $P1590, vivify_567
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    set $N100, $P1590
    set $I100, $N100
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1591, $P108, $P109, "@!multi_methods_to_incorporate"
    unless_null $P1591, vivify_568
    $P1591 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P108, $P109, "@!multi_methods_to_incorporate", $P1591
  vivify_568:
    set $P1591[$I100], $P1589
.annotate 'line', 564
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_569
    new $P106, "Undef"
  vivify_569:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("93_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1593
    .param pmc param_1594
    .param pmc param_1595
.annotate 'line', 577
    .lex "self", param_1593
    .lex "$obj", param_1594
    .lex "$meta_attr", param_1595
.annotate 'line', 578
    new $P106, "Undef"
    set $P1596, $P106
    .lex "$name", $P1596
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_570
    new $P107, "Undef"
  vivify_570:
    $P108 = $P107."name"()
    store_lex "$name", $P108
.annotate 'line', 579
    find_lex $P107, "$name"
    unless_null $P107, vivify_571
    new $P107, "Undef"
  vivify_571:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1598, $P108, $P109, "%!attributes"
    unless_null $P1598, vivify_572
    $P1598 = root_new ['parrot';'Hash']
  vivify_572:
    set $P110, $P1598[$P107]
    unless_null $P110, vivify_573
    new $P110, "Undef"
  vivify_573:
    unless $P110, if_1597_end
.annotate 'line', 580
    new $P111, "String"
    assign $P111, "This class already has an attribute named "
    find_lex $P112, "$name"
    unless_null $P112, vivify_574
    new $P112, "Undef"
  vivify_574:
    concat $P113, $P111, $P112
    die $P113
  if_1597_end:
.annotate 'line', 582
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    find_lex $P108, "$name"
    unless_null $P108, vivify_576
    new $P108, "Undef"
  vivify_576:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1599, $P109, $P110, "%!attributes"
    unless_null $P1599, vivify_577
    $P1599 = root_new ['parrot';'Hash']
    setattribute $P109, $P110, "%!attributes", $P1599
  vivify_577:
    set $P1599[$P108], $P107
.annotate 'line', 577
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("94_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1601
    .param pmc param_1602
    .param pmc param_1603
.annotate 'line', 585
    .const 'Sub' $P1608 = "95_1308672481.963" 
    capture_lex $P1608
    .lex "self", param_1601
    .lex "$obj", param_1602
    .lex "$parent", param_1603
.annotate 'line', 586
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!composed"
    unless_null $P108, vivify_578
    new $P108, "Undef"
  vivify_578:
    unless $P108, if_1604_end
.annotate 'line', 587
    die "NQPClassHOW does not support adding parents after being composed."
  if_1604_end:
.annotate 'line', 589
    find_lex $P106, "$obj"
    unless_null $P106, vivify_579
    new $P106, "Undef"
  vivify_579:
    find_lex $P107, "$parent"
    unless_null $P107, vivify_580
    new $P107, "Undef"
  vivify_580:
    issame $I100, $P106, $P107
    unless $I100, if_1605_end
.annotate 'line', 590
    new $P108, 'String'
    set $P108, "Class '"
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!name"
    unless_null $P111, vivify_581
    new $P111, "Undef"
  vivify_581:
    concat $P112, $P108, $P111
    concat $P113, $P112, "' cannot inherit from itself."
    die $P113
  if_1605_end:
.annotate 'line', 592
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1606, $P107, $P108, "@!parents"
    unless_null $P1606, vivify_582
    $P1606 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    defined $I100, $P1606
    unless $I100, for_undef_583
    iter $P106, $P1606
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1611_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1611_test:
    unless $P106, loop1611_done
    shift $P109, $P106
  loop1611_redo:
    .const 'Sub' $P1608 = "95_1308672481.963" 
    capture_lex $P1608
    $P1608($P109)
  loop1611_next:
    goto loop1611_test
  loop1611_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1611_next
    eq $P112, .CONTROL_LOOP_REDO, loop1611_redo
  loop1611_done:
    pop_eh 
  for_undef_583:
.annotate 'line', 597
    find_lex $P106, "$parent"
    unless_null $P106, vivify_587
    new $P106, "Undef"
  vivify_587:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1612, $P107, $P108, "@!parents"
    unless_null $P1612, vivify_588
    $P1612 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N100, $P1612
    set $I100, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1613, $P109, $P110, "@!parents"
    unless_null $P1613, vivify_589
    $P1613 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!parents", $P1613
  vivify_589:
    set $P1613[$I100], $P106
.annotate 'line', 585
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1607"  :anon :subid("95_1308672481.963") :outer("94_1308672481.963")
    .param pmc param_1609
.annotate 'line', 592
    .lex "$_", param_1609
.annotate 'line', 593
    find_lex $P111, "$_"
    unless_null $P111, vivify_584
    new $P111, "Undef"
  vivify_584:
    find_lex $P112, "$parent"
    unless_null $P112, vivify_585
    new $P112, "Undef"
  vivify_585:
    issame $I101, $P111, $P112
    if $I101, if_1610
    new $P110, 'Integer'
    set $P110, $I101
    goto if_1610_end
  if_1610:
.annotate 'line', 594
    new $P113, "String"
    assign $P113, "Already have "
    find_lex $P114, "$parent"
    unless_null $P114, vivify_586
    new $P114, "Undef"
  vivify_586:
    concat $P115, $P113, $P114
    concat $P116, $P115, " as a parent class."
    die $P116
  if_1610_end:
.annotate 'line', 592
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("96_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1615
    .param pmc param_1616
    .param pmc param_1617
.annotate 'line', 600
    .lex "self", param_1615
    .lex "$obj", param_1616
    .lex "$parent", param_1617
.annotate 'line', 601
    find_lex $P106, "$parent"
    unless_null $P106, vivify_590
    new $P106, "Undef"
  vivify_590:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!default_parent", $P106
.annotate 'line', 600
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("97_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1619
    .param pmc param_1620
    .param pmc param_1621
.annotate 'line', 604
    .const 'Sub' $P1624 = "98_1308672481.963" 
    capture_lex $P1624
    .lex "self", param_1619
    .lex "$obj", param_1620
    .lex "$role", param_1621
.annotate 'line', 605
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1622, $P107, $P108, "@!roles"
    unless_null $P1622, vivify_591
    $P1622 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I100, $P1622
    unless $I100, for_undef_592
    iter $P106, $P1622
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1627_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1627_test:
    unless $P106, loop1627_done
    shift $P109, $P106
  loop1627_redo:
    .const 'Sub' $P1624 = "98_1308672481.963" 
    capture_lex $P1624
    $P1624($P109)
  loop1627_next:
    goto loop1627_test
  loop1627_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1627_next
    eq $P112, .CONTROL_LOOP_REDO, loop1627_redo
  loop1627_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 610
    find_lex $P106, "$role"
    unless_null $P106, vivify_596
    new $P106, "Undef"
  vivify_596:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1628, $P107, $P108, "@!roles"
    unless_null $P1628, vivify_597
    $P1628 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N100, $P1628
    set $I100, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1629, $P109, $P110, "@!roles"
    unless_null $P1629, vivify_598
    $P1629 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!roles", $P1629
  vivify_598:
    set $P1629[$I100], $P106
.annotate 'line', 604
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1623"  :anon :subid("98_1308672481.963") :outer("97_1308672481.963")
    .param pmc param_1625
.annotate 'line', 605
    .lex "$_", param_1625
.annotate 'line', 606
    find_lex $P111, "$_"
    unless_null $P111, vivify_593
    new $P111, "Undef"
  vivify_593:
    find_lex $P112, "$role"
    unless_null $P112, vivify_594
    new $P112, "Undef"
  vivify_594:
    issame $I101, $P111, $P112
    if $I101, if_1626
    new $P110, 'Integer'
    set $P110, $I101
    goto if_1626_end
  if_1626:
.annotate 'line', 607
    new $P113, "String"
    assign $P113, "The role "
    find_lex $P114, "$role"
    unless_null $P114, vivify_595
    new $P114, "Undef"
  vivify_595:
    concat $P115, $P113, $P114
    concat $P116, $P115, " has already been added."
    die $P116
  if_1626_end:
.annotate 'line', 605
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("99_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1631
    .param pmc param_1632
    .param pmc param_1633
    .param pmc param_1634
.annotate 'line', 613
    .lex "self", param_1631
    .lex "$obj", param_1632
    .lex "$name", param_1633
    .lex "$meth", param_1634
.annotate 'line', 614
    find_lex $P106, "$name"
    unless_null $P106, vivify_599
    new $P106, "Undef"
  vivify_599:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1636, $P107, $P108, "%!parrot_vtable_mapping"
    unless_null $P1636, vivify_600
    $P1636 = root_new ['parrot';'Hash']
  vivify_600:
    set $P109, $P1636[$P106]
    unless_null $P109, vivify_601
    new $P109, "Undef"
  vivify_601:
    defined $I100, $P109
    unless $I100, if_1635_end
.annotate 'line', 615
    new $P110, "String"
    assign $P110, "Class '"
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_602
    new $P113, "Undef"
  vivify_602:
    concat $P114, $P110, $P113
    concat $P115, $P114, "' already has a Parrot v-table override for '"
    find_lex $P116, "$name"
    unless_null $P116, vivify_603
    new $P116, "Undef"
  vivify_603:
    concat $P117, $P115, $P116
.annotate 'line', 616
    concat $P118, $P117, "'"
.annotate 'line', 617
    die $P118
  if_1635_end:
.annotate 'line', 619
    find_lex $P106, "$meth"
    unless_null $P106, vivify_604
    new $P106, "Undef"
  vivify_604:
    find_lex $P107, "$name"
    unless_null $P107, vivify_605
    new $P107, "Undef"
  vivify_605:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1637, $P108, $P109, "%!parrot_vtable_mapping"
    unless_null $P1637, vivify_606
    $P1637 = root_new ['parrot';'Hash']
    setattribute $P108, $P109, "%!parrot_vtable_mapping", $P1637
  vivify_606:
    set $P1637[$P107], $P106
.annotate 'line', 613
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("100_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1639
    .param pmc param_1640
    .param pmc param_1641
    .param pmc param_1642
.annotate 'line', 622
    .lex "self", param_1639
    .lex "$obj", param_1640
    .lex "$name", param_1641
    .lex "$att_name", param_1642
.annotate 'line', 623
    find_lex $P106, "$name"
    unless_null $P106, vivify_607
    new $P106, "Undef"
  vivify_607:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1644, $P107, $P108, "%!parrot_vtable_handler_mapping"
    unless_null $P1644, vivify_608
    $P1644 = root_new ['parrot';'Hash']
  vivify_608:
    set $P109, $P1644[$P106]
    unless_null $P109, vivify_609
    new $P109, "Undef"
  vivify_609:
    defined $I100, $P109
    unless $I100, if_1643_end
.annotate 'line', 624
    new $P110, "String"
    assign $P110, "Class '"
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_610
    new $P113, "Undef"
  vivify_610:
    concat $P114, $P110, $P113
    concat $P115, $P114, "' already has a Parrot v-table handler for '"
    find_lex $P116, "$name"
    unless_null $P116, vivify_611
    new $P116, "Undef"
  vivify_611:
    concat $P117, $P115, $P116
.annotate 'line', 625
    concat $P118, $P117, "'"
.annotate 'line', 626
    die $P118
  if_1643_end:
.annotate 'line', 628
    find_lex $P106, "$obj"
    unless_null $P106, vivify_612
    new $P106, "Undef"
  vivify_612:
    find_lex $P107, "$att_name"
    unless_null $P107, vivify_613
    new $P107, "Undef"
  vivify_613:
    new $P108, "ResizablePMCArray"
    push $P108, $P106
    push $P108, $P107
    find_lex $P109, "$name"
    unless_null $P109, vivify_614
    new $P109, "Undef"
  vivify_614:
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1645, $P110, $P111, "%!parrot_vtable_handler_mapping"
    unless_null $P1645, vivify_615
    $P1645 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!parrot_vtable_handler_mapping", $P1645
  vivify_615:
    set $P1645[$P109], $P108
.annotate 'line', 622
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("101_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1647
    .param pmc param_1648
.annotate 'line', 631
    .const 'Sub' $P1673 = "104_1308672481.963" 
    capture_lex $P1673
    .const 'Sub' $P1652 = "102_1308672481.963" 
    capture_lex $P1652
    .lex "self", param_1647
    .lex "$obj", param_1648
.annotate 'line', 635
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1650, $P106, $P107, "@!roles"
    unless_null $P1650, vivify_616
    $P1650 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    unless $P1650, if_1649_end
    .const 'Sub' $P1652 = "102_1308672481.963" 
    capture_lex $P1652
    $P1652()
  if_1649_end:
.annotate 'line', 648
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1670, $P107, $P108, "@!parents"
    unless_null $P1670, vivify_633
    $P1670 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $N100, $P1670
    iseq $I100, $N100, 0.0
    if $I100, if_1669
    new $P106, 'Integer'
    set $P106, $I100
    goto if_1669_end
  if_1669:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!name"
    unless_null $P111, vivify_634
    new $P111, "Undef"
  vivify_634:
    set $S100, $P111
    isne $I101, $S100, "NQPMu"
    new $P106, 'Integer'
    set $P106, $I101
  if_1669_end:
    unless $P106, if_1668_end
.annotate 'line', 649
    find_lex $P112, "self"
    find_lex $P113, "$obj"
    unless_null $P113, vivify_635
    new $P113, "Undef"
  vivify_635:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P116, $P114, $P115, "$!default_parent"
    unless_null $P116, vivify_636
    new $P116, "Undef"
  vivify_636:
    $P112."add_parent"($P113, $P116)
  if_1668_end:
.annotate 'line', 654
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!composed"
    unless_null $P108, vivify_637
    new $P108, "Undef"
  vivify_637:
    if $P108, unless_1671_end
.annotate 'line', 655
    find_lex $P109, "$obj"
    unless_null $P109, vivify_638
    new $P109, "Undef"
  vivify_638:
    $P110 = "compute_c3_mro"($P109)
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    setattribute $P111, $P112, "@!mro", $P110
.annotate 'line', 656
    new $P109, "Integer"
    assign $P109, 1
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    setattribute $P110, $P111, "$!composed", $P109
  unless_1671_end:
.annotate 'line', 660
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_639
    new $P107, "Undef"
  vivify_639:
    $P106."incorporate_multi_candidates"($P107)
.annotate 'line', 663
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_640
    new $P108, "Undef"
  vivify_640:
    $P109 = $P107."attributes"($P108, "0" :named("local"))
    defined $I100, $P109
    unless $I100, for_undef_641
    iter $P106, $P109
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1675_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1675_test:
    unless $P106, loop1675_done
    shift $P110, $P106
  loop1675_redo:
    .const 'Sub' $P1673 = "104_1308672481.963" 
    capture_lex $P1673
    $P1673($P110)
  loop1675_next:
    goto loop1675_test
  loop1675_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1675_next
    eq $P112, .CONTROL_LOOP_REDO, loop1675_redo
  loop1675_done:
    pop_eh 
  for_undef_641:
.annotate 'line', 666
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    $P106."publish_type_cache"($P107)
.annotate 'line', 667
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_645
    new $P107, "Undef"
  vivify_645:
    $P106."publish_method_cache"($P107)
.annotate 'line', 670
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_646
    new $P107, "Undef"
  vivify_646:
    $P106."publish_parrot_vtable_mapping"($P107)
.annotate 'line', 671
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_647
    new $P107, "Undef"
  vivify_647:
    $P106."publish_parrot_vtablee_handler_mapping"($P107)
.annotate 'line', 631
    find_lex $P106, "$obj"
    unless_null $P106, vivify_648
    new $P106, "Undef"
  vivify_648:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1651"  :anon :subid("102_1308672481.963") :outer("101_1308672481.963")
.annotate 'line', 635
    .const 'Sub' $P1658 = "103_1308672481.963" 
    capture_lex $P1658
.annotate 'line', 636
    $P1654 = root_new ['parrot';'ResizablePMCArray']
    set $P1653, $P1654
    .lex "@instantiated_roles", $P1653
.annotate 'line', 635
    find_lex $P1655, "@instantiated_roles"
    unless_null $P1655, vivify_617
    $P1655 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
.annotate 'line', 637
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1656, $P109, $P110, "@!roles"
    unless_null $P1656, vivify_618
    $P1656 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    defined $I100, $P1656
    unless $I100, for_undef_619
    iter $P108, $P1656
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1666_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1666_test:
    unless $P108, loop1666_done
    shift $P111, $P108
  loop1666_redo:
    .const 'Sub' $P1658 = "103_1308672481.963" 
    capture_lex $P1658
    $P1658($P111)
  loop1666_next:
    goto loop1666_test
  loop1666_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1666_next
    eq $P115, .CONTROL_LOOP_REDO, loop1666_redo
  loop1666_done:
    pop_eh 
  for_undef_619:
.annotate 'line', 643
    find_lex $P108, "RoleToClassApplier"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_631
    new $P109, "Undef"
  vivify_631:
    find_lex $P1667, "@instantiated_roles"
    unless_null $P1667, vivify_632
    $P1667 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    $P110 = $P108."apply"($P109, $P1667)
.annotate 'line', 635
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1657"  :anon :subid("103_1308672481.963") :outer("102_1308672481.963")
    .param pmc param_1660
.annotate 'line', 638
    new $P112, "Undef"
    set $P1659, $P112
    .lex "$ins", $P1659
    .lex "$_", param_1660
    find_lex $P113, "$_"
    unless_null $P113, vivify_620
    new $P113, "Undef"
  vivify_620:
    get_how $P114, $P113
    find_lex $P115, "$_"
    unless_null $P115, vivify_621
    new $P115, "Undef"
  vivify_621:
    find_lex $P116, "$obj"
    unless_null $P116, vivify_622
    new $P116, "Undef"
  vivify_622:
    $P117 = $P114."instantiate"($P115, $P116)
    store_lex "$ins", $P117
.annotate 'line', 639
    find_lex $P1661, "@instantiated_roles"
    unless_null $P1661, vivify_623
    $P1661 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P113, "$ins"
    unless_null $P113, vivify_624
    new $P113, "Undef"
  vivify_624:
    $P1661."push"($P113)
.annotate 'line', 640
    find_lex $P113, "$_"
    unless_null $P113, vivify_625
    new $P113, "Undef"
  vivify_625:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1662, $P114, $P115, "@!done"
    unless_null $P1662, vivify_626
    $P1662 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    set $N100, $P1662
    set $I101, $N100
    find_lex $P116, "self"
    find_lex $P117, "$?CLASS"
    getattribute $P1663, $P116, $P117, "@!done"
    unless_null $P1663, vivify_627
    $P1663 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P116, $P117, "@!done", $P1663
  vivify_627:
    set $P1663[$I101], $P113
.annotate 'line', 641
    find_lex $P113, "$ins"
    unless_null $P113, vivify_628
    new $P113, "Undef"
  vivify_628:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1664, $P114, $P115, "@!done"
    unless_null $P1664, vivify_629
    $P1664 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $N100, $P1664
    set $I101, $N100
    find_lex $P116, "self"
    find_lex $P117, "$?CLASS"
    getattribute $P1665, $P116, $P117, "@!done"
    unless_null $P1665, vivify_630
    $P1665 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P116, $P117, "@!done", $P1665
  vivify_630:
    set $P1665[$I101], $P113
.annotate 'line', 637
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1672"  :anon :subid("104_1308672481.963") :outer("101_1308672481.963")
    .param pmc param_1674
.annotate 'line', 663
    .lex "$_", param_1674
    find_lex $P111, "$_"
    unless_null $P111, vivify_642
    new $P111, "Undef"
  vivify_642:
    find_lex $P112, "$obj"
    unless_null $P112, vivify_643
    new $P112, "Undef"
  vivify_643:
    $P113 = $P111."compose"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("105_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1677
    .param pmc param_1678
.annotate 'line', 676
    .const 'Sub' $P1683 = "106_1308672481.963" 
    capture_lex $P1683
    .lex "self", param_1677
    .lex "$obj", param_1678
.annotate 'line', 677
    new $P106, "Undef"
    set $P1679, $P106
    .lex "$num_todo", $P1679
.annotate 'line', 678
    new $P107, "Undef"
    set $P1680, $P107
    .lex "$i", $P1680
.annotate 'line', 677
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1681, $P108, $P109, "@!multi_methods_to_incorporate"
    unless_null $P1681, vivify_649
    $P1681 = root_new ['parrot';'ResizablePMCArray']
  vivify_649:
    set $N100, $P1681
    new $P110, 'Float'
    set $P110, $N100
    store_lex "$num_todo", $P110
.annotate 'line', 678
    new $P108, "Integer"
    assign $P108, 0
    store_lex "$i", $P108
.annotate 'line', 679
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1723_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1723_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_650
    new $P108, "Undef"
  vivify_650:
    set $N100, $P108
    find_lex $P109, "$num_todo"
    unless_null $P109, vivify_651
    new $P109, "Undef"
  vivify_651:
    set $N101, $P109
    isne $I100, $N100, $N101
    unless $I100, loop1723_done
  loop1723_redo:
    .const 'Sub' $P1683 = "106_1308672481.963" 
    capture_lex $P1683
    $P1683()
  loop1723_next:
    goto loop1723_test
  loop1723_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1723_next
    eq $P115, .CONTROL_LOOP_REDO, loop1723_redo
  loop1723_done:
    pop_eh 
.annotate 'line', 676
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1682"  :anon :subid("106_1308672481.963") :outer("105_1308672481.963")
.annotate 'line', 679
    .const 'Sub' $P1695 = "107_1308672481.963" 
    capture_lex $P1695
.annotate 'line', 681
    new $P110, "Undef"
    set $P1684, $P110
    .lex "$name", $P1684
.annotate 'line', 682
    new $P111, "Undef"
    set $P1685, $P111
    .lex "$code", $P1685
.annotate 'line', 686
    new $P112, "Undef"
    set $P1686, $P112
    .lex "$dispatcher", $P1686
.annotate 'line', 681
    find_lex $P113, "$i"
    unless_null $P113, vivify_652
    new $P113, "Undef"
  vivify_652:
    set $I101, $P113
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1687, $P114, $P115, "@!multi_methods_to_incorporate"
    unless_null $P1687, vivify_653
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_653:
    set $P1688, $P1687[$I101]
    unless_null $P1688, vivify_654
    $P1688 = root_new ['parrot';'Hash']
  vivify_654:
    set $P116, $P1688["name"]
    unless_null $P116, vivify_655
    new $P116, "Undef"
  vivify_655:
    store_lex "$name", $P116
.annotate 'line', 682
    find_lex $P113, "$i"
    unless_null $P113, vivify_656
    new $P113, "Undef"
  vivify_656:
    set $I101, $P113
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1689, $P114, $P115, "@!multi_methods_to_incorporate"
    unless_null $P1689, vivify_657
    $P1689 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    set $P1690, $P1689[$I101]
    unless_null $P1690, vivify_658
    $P1690 = root_new ['parrot';'Hash']
  vivify_658:
    set $P116, $P1690["code"]
    unless_null $P116, vivify_659
    new $P116, "Undef"
  vivify_659:
    store_lex "$code", $P116
.annotate 'line', 686
    find_lex $P113, "$name"
    unless_null $P113, vivify_660
    new $P113, "Undef"
  vivify_660:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1691, $P114, $P115, "%!methods"
    unless_null $P1691, vivify_661
    $P1691 = root_new ['parrot';'Hash']
  vivify_661:
    set $P116, $P1691[$P113]
    unless_null $P116, vivify_662
    new $P116, "Undef"
  vivify_662:
    store_lex "$dispatcher", $P116
.annotate 'line', 687
    find_lex $P113, "$dispatcher"
    unless_null $P113, vivify_663
    new $P113, "Undef"
  vivify_663:
    defined $I101, $P113
    if $I101, if_1692
.annotate 'line', 697
    .const 'Sub' $P1695 = "107_1308672481.963" 
    capture_lex $P1695
    $P1695()
    goto if_1692_end
  if_1692:
.annotate 'line', 690
    find_lex $P114, "$dispatcher"
    unless_null $P114, vivify_694
    new $P114, "Undef"
  vivify_694:
    is_dispatcher $I102, $P114
    if $I102, if_1693
.annotate 'line', 694
    new $P115, 'String'
    set $P115, "Cannot have a multi candidate for "
    find_lex $P116, "$name"
    unless_null $P116, vivify_695
    new $P116, "Undef"
  vivify_695:
    concat $P117, $P115, $P116
    concat $P118, $P117, " when an only method is also in the class"
    die $P118
.annotate 'line', 693
    goto if_1693_end
  if_1693:
.annotate 'line', 691
    find_lex $P115, "$dispatcher"
    unless_null $P115, vivify_696
    new $P115, "Undef"
  vivify_696:
    find_lex $P116, "$code"
    unless_null $P116, vivify_697
    new $P116, "Undef"
  vivify_697:
    push_dispatchee $P115, $P116
  if_1693_end:
  if_1692_end:
.annotate 'line', 730
    find_lex $P113, "$i"
    unless_null $P113, vivify_698
    new $P113, "Undef"
  vivify_698:
    add $P114, $P113, 1
    store_lex "$i", $P114
.annotate 'line', 679
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1694"  :anon :subid("107_1308672481.963") :outer("106_1308672481.963")
.annotate 'line', 697
    .const 'Sub' $P1701 = "108_1308672481.963" 
    capture_lex $P1701
.annotate 'line', 699
    new $P114, "Undef"
    set $P1696, $P114
    .lex "$j", $P1696
.annotate 'line', 700
    new $P115, "Undef"
    set $P1697, $P115
    .lex "$found", $P1697
.annotate 'line', 699
    new $P116, "Integer"
    assign $P116, 1
    store_lex "$j", $P116
.annotate 'line', 700
    new $P116, "Integer"
    assign $P116, 0
    store_lex "$found", $P116
.annotate 'line', 701
    new $P123, 'ExceptionHandler'
    set_label $P123, loop1721_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop1721_test:
    find_lex $P117, "$j"
    unless_null $P117, vivify_664
    new $P117, "Undef"
  vivify_664:
    set $N102, $P117
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P1699, $P118, $P119, "@!mro"
    unless_null $P1699, vivify_665
    $P1699 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $N103, $P1699
    isne $I102, $N102, $N103
    if $I102, if_1698
    new $P116, 'Integer'
    set $P116, $I102
    goto if_1698_end
  if_1698:
    find_lex $P120, "$found"
    unless_null $P120, vivify_666
    new $P120, "Undef"
  vivify_666:
    isfalse $I103, $P120
    new $P116, 'Integer'
    set $P116, $I103
  if_1698_end:
    unless $P116, loop1721_done
  loop1721_redo:
    .const 'Sub' $P1701 = "108_1308672481.963" 
    capture_lex $P1701
    $P1701()
  loop1721_next:
    goto loop1721_test
  loop1721_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop1721_next
    eq $P125, .CONTROL_LOOP_REDO, loop1721_redo
  loop1721_done:
    pop_eh 
.annotate 'line', 726
    find_lex $P117, "$found"
    unless_null $P117, vivify_692
    new $P117, "Undef"
  vivify_692:
    unless $P117, unless_1722
    set $P116, $P117
    goto unless_1722_end
  unless_1722:
.annotate 'line', 727
    new $P118, 'String'
    set $P118, "Could not find a proto for multi "
    find_lex $P119, "$name"
    unless_null $P119, vivify_693
    new $P119, "Undef"
  vivify_693:
    concat $P120, $P118, $P119
    concat $P121, $P120, ", and proto generation is NYI"
    die $P121
  unless_1722_end:
.annotate 'line', 697
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1700"  :anon :subid("108_1308672481.963") :outer("107_1308672481.963")
.annotate 'line', 701
    .const 'Sub' $P1711 = "109_1308672481.963" 
    capture_lex $P1711
.annotate 'line', 702
    new $P121, "Undef"
    set $P1702, $P121
    .lex "$parent", $P1702
.annotate 'line', 703
    $P1704 = root_new ['parrot';'Hash']
    set $P1703, $P1704
    .lex "%meths", $P1703
.annotate 'line', 704
    new $P122, "Undef"
    set $P1705, $P122
    .lex "$dispatcher", $P1705
.annotate 'line', 702
    find_lex $P123, "$j"
    unless_null $P123, vivify_667
    new $P123, "Undef"
  vivify_667:
    set $I104, $P123
    find_lex $P124, "self"
    find_lex $P125, "$?CLASS"
    getattribute $P1706, $P124, $P125, "@!mro"
    unless_null $P1706, vivify_668
    $P1706 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P126, $P1706[$I104]
    unless_null $P126, vivify_669
    new $P126, "Undef"
  vivify_669:
    store_lex "$parent", $P126
.annotate 'line', 703
    find_lex $P123, "$parent"
    unless_null $P123, vivify_670
    new $P123, "Undef"
  vivify_670:
    get_how $P124, $P123
    find_lex $P125, "$parent"
    unless_null $P125, vivify_671
    new $P125, "Undef"
  vivify_671:
    $P126 = $P124."method_table"($P125)
    store_lex "%meths", $P126
.annotate 'line', 704
    find_lex $P123, "$name"
    unless_null $P123, vivify_672
    new $P123, "Undef"
  vivify_672:
    find_lex $P1707, "%meths"
    unless_null $P1707, vivify_673
    $P1707 = root_new ['parrot';'Hash']
  vivify_673:
    set $P124, $P1707[$P123]
    unless_null $P124, vivify_674
    new $P124, "Undef"
  vivify_674:
    store_lex "$dispatcher", $P124
.annotate 'line', 705
    find_lex $P123, "$dispatcher"
    unless_null $P123, vivify_675
    new $P123, "Undef"
  vivify_675:
    defined $I104, $P123
    unless $I104, if_1708_end
.annotate 'line', 708
    find_lex $P124, "$dispatcher"
    unless_null $P124, vivify_676
    new $P124, "Undef"
  vivify_676:
    is_dispatcher $I105, $P124
    if $I105, if_1709
.annotate 'line', 721
    new $P128, 'String'
    set $P128, "Could not find a proto for multi "
    find_lex $P129, "$name"
    unless_null $P129, vivify_677
    new $P129, "Undef"
  vivify_677:
    concat $P130, $P128, $P129
    concat $P131, $P130, " (it may exist, but an only is hiding it if so)"
    die $P131
.annotate 'line', 720
    goto if_1709_end
  if_1709:
.annotate 'line', 708
    .const 'Sub' $P1711 = "109_1308672481.963" 
    capture_lex $P1711
    $P1711()
  if_1709_end:
  if_1708_end:
.annotate 'line', 724
    find_lex $P123, "$j"
    unless_null $P123, vivify_691
    new $P123, "Undef"
  vivify_691:
    add $P124, $P123, 1
    store_lex "$j", $P124
.annotate 'line', 701
    .return ($P124)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1710"  :anon :subid("109_1308672481.963") :outer("108_1308672481.963")
.annotate 'line', 710
    $P1713 = root_new ['parrot';'ResizablePMCArray']
    set $P1712, $P1713
    .lex "@new_dispatchees", $P1712
.annotate 'line', 712
    new $P125, "Undef"
    set $P1714, $P125
    .lex "$new_disp", $P1714
.annotate 'line', 713
    new $P126, "Undef"
    set $P1715, $P126
    .lex "$clone_callback", $P1715
.annotate 'line', 708
    find_lex $P1716, "@new_dispatchees"
    unless_null $P1716, vivify_678
    $P1716 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
.annotate 'line', 711
    find_lex $P127, "$code"
    unless_null $P127, vivify_679
    new $P127, "Undef"
  vivify_679:
    find_lex $P1717, "@new_dispatchees"
    unless_null $P1717, vivify_680
    $P1717 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1717
  vivify_680:
    set $P1717[0], $P127
.annotate 'line', 712
    find_lex $P127, "$dispatcher"
    unless_null $P127, vivify_681
    new $P127, "Undef"
  vivify_681:
    find_lex $P1718, "@new_dispatchees"
    unless_null $P1718, vivify_682
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    create_dispatch_and_add_candidates $P128, $P127, $P1718
    store_lex "$new_disp", $P128
.annotate 'line', 713
    find_lex $P127, "$dispatcher"
    unless_null $P127, vivify_683
    new $P127, "Undef"
  vivify_683:
    getprop $P128, "CLONE_CALLBACK", $P127
    store_lex "$clone_callback", $P128
.annotate 'line', 714
    find_lex $P127, "$clone_callback"
    unless_null $P127, vivify_684
    new $P127, "Undef"
  vivify_684:
    defined $I106, $P127
    unless $I106, if_1719_end
.annotate 'line', 715
    find_lex $P128, "$clone_callback"
    unless_null $P128, vivify_685
    new $P128, "Undef"
  vivify_685:
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_686
    new $P129, "Undef"
  vivify_686:
    find_lex $P130, "$new_disp"
    unless_null $P130, vivify_687
    new $P130, "Undef"
  vivify_687:
    $P128($P129, $P130)
  if_1719_end:
.annotate 'line', 717
    find_lex $P127, "$new_disp"
    unless_null $P127, vivify_688
    new $P127, "Undef"
  vivify_688:
    find_lex $P128, "$name"
    unless_null $P128, vivify_689
    new $P128, "Undef"
  vivify_689:
    find_lex $P129, "self"
    find_lex $P130, "$?CLASS"
    getattribute $P1720, $P129, $P130, "%!methods"
    unless_null $P1720, vivify_690
    $P1720 = root_new ['parrot';'Hash']
    setattribute $P129, $P130, "%!methods", $P1720
  vivify_690:
    set $P1720[$P128], $P127
.annotate 'line', 718
    new $P127, "Integer"
    assign $P127, 1
    store_lex "$found", $P127
.annotate 'line', 708
    .return ($P127)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("110_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1725
    .param pmc param_1726
.annotate 'line', 823
    .const 'Sub' $P1738 = "112_1308672481.963" 
    capture_lex $P1738
    .const 'Sub' $P1732 = "111_1308672481.963" 
    capture_lex $P1732
    .lex "self", param_1725
    .lex "$obj", param_1726
.annotate 'line', 824
    $P1728 = root_new ['parrot';'ResizablePMCArray']
    set $P1727, $P1728
    .lex "@tc", $P1727
.annotate 'line', 823
    find_lex $P1729, "@tc"
    unless_null $P1729, vivify_699
    $P1729 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
.annotate 'line', 825
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1730, $P107, $P108, "@!mro"
    unless_null $P1730, vivify_700
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_700:
    defined $I100, $P1730
    unless $I100, for_undef_701
    iter $P106, $P1730
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1735_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1735_test:
    unless $P106, loop1735_done
    shift $P109, $P106
  loop1735_redo:
    .const 'Sub' $P1732 = "111_1308672481.963" 
    capture_lex $P1732
    $P1732($P109)
  loop1735_next:
    goto loop1735_test
  loop1735_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1735_next
    eq $P112, .CONTROL_LOOP_REDO, loop1735_redo
  loop1735_done:
    pop_eh 
  for_undef_701:
.annotate 'line', 826
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1736, $P107, $P108, "@!done"
    unless_null $P1736, vivify_704
    $P1736 = root_new ['parrot';'ResizablePMCArray']
  vivify_704:
    defined $I100, $P1736
    unless $I100, for_undef_705
    iter $P106, $P1736
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1741_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1741_test:
    unless $P106, loop1741_done
    shift $P109, $P106
  loop1741_redo:
    .const 'Sub' $P1738 = "112_1308672481.963" 
    capture_lex $P1738
    $P1738($P109)
  loop1741_next:
    goto loop1741_test
  loop1741_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1741_next
    eq $P112, .CONTROL_LOOP_REDO, loop1741_redo
  loop1741_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 827
    find_lex $P106, "$obj"
    unless_null $P106, vivify_708
    new $P106, "Undef"
  vivify_708:
    find_lex $P1742, "@tc"
    unless_null $P1742, vivify_709
    $P1742 = root_new ['parrot';'ResizablePMCArray']
  vivify_709:
    publish_type_check_cache $P106, $P1742
.annotate 'line', 823
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1731"  :anon :subid("111_1308672481.963") :outer("110_1308672481.963")
    .param pmc param_1733
.annotate 'line', 825
    .lex "$_", param_1733
    find_lex $P1734, "@tc"
    unless_null $P1734, vivify_702
    $P1734 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    find_lex $P110, "$_"
    unless_null $P110, vivify_703
    new $P110, "Undef"
  vivify_703:
    $P111 = $P1734."push"($P110)
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1737"  :anon :subid("112_1308672481.963") :outer("110_1308672481.963")
    .param pmc param_1739
.annotate 'line', 826
    .lex "$_", param_1739
    find_lex $P1740, "@tc"
    unless_null $P1740, vivify_706
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    find_lex $P110, "$_"
    unless_null $P110, vivify_707
    new $P110, "Undef"
  vivify_707:
    $P111 = $P1740."push"($P110)
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("113_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1744
    .param pmc param_1745
.annotate 'line', 830
    .const 'Sub' $P1751 = "114_1308672481.963" 
    capture_lex $P1751
    .lex "self", param_1744
    .lex "$obj", param_1745
.annotate 'line', 833
    $P1747 = root_new ['parrot';'Hash']
    set $P1746, $P1747
    .lex "%cache", $P1746
.annotate 'line', 830
    find_lex $P1748, "%cache"
    unless_null $P1748, vivify_710
    $P1748 = root_new ['parrot';'Hash']
  vivify_710:
.annotate 'line', 834
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1749, $P107, $P108, "@!mro"
    unless_null $P1749, vivify_711
    $P1749 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    defined $I100, $P1749
    unless $I100, for_undef_712
    iter $P106, $P1749
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1763_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1763_test:
    unless $P106, loop1763_done
    shift $P109, $P106
  loop1763_redo:
    .const 'Sub' $P1751 = "114_1308672481.963" 
    capture_lex $P1751
    $P1751($P109)
  loop1763_next:
    goto loop1763_test
  loop1763_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1763_next
    eq $P112, .CONTROL_LOOP_REDO, loop1763_redo
  loop1763_done:
    pop_eh 
  for_undef_712:
.annotate 'line', 842
    find_lex $P106, "$obj"
    unless_null $P106, vivify_723
    new $P106, "Undef"
  vivify_723:
    find_lex $P1764, "%cache"
    unless_null $P1764, vivify_724
    $P1764 = root_new ['parrot';'Hash']
  vivify_724:
    publish_method_cache $P106, $P1764
.annotate 'line', 830
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1750"  :anon :subid("114_1308672481.963") :outer("113_1308672481.963")
    .param pmc param_1754
.annotate 'line', 834
    .const 'Sub' $P1757 = "115_1308672481.963" 
    capture_lex $P1757
.annotate 'line', 835
    $P1753 = root_new ['parrot';'Hash']
    set $P1752, $P1753
    .lex "%methods", $P1752
    .lex "$_", param_1754
    find_lex $P110, "$_"
    unless_null $P110, vivify_713
    new $P110, "Undef"
  vivify_713:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_714
    new $P112, "Undef"
  vivify_714:
    $P113 = $P111."method_table"($P112)
    store_lex "%methods", $P113
.annotate 'line', 836
    find_lex $P1755, "%methods"
    unless_null $P1755, vivify_715
    $P1755 = root_new ['parrot';'Hash']
  vivify_715:
    defined $I101, $P1755
    unless $I101, for_undef_716
    iter $P110, $P1755
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1762_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1762_test:
    unless $P110, loop1762_done
    shift $P111, $P110
  loop1762_redo:
    .const 'Sub' $P1757 = "115_1308672481.963" 
    capture_lex $P1757
    $P1757($P111)
  loop1762_next:
    goto loop1762_test
  loop1762_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1762_next
    eq $P114, .CONTROL_LOOP_REDO, loop1762_redo
  loop1762_done:
    pop_eh 
  for_undef_716:
.annotate 'line', 834
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1756"  :anon :subid("115_1308672481.963") :outer("114_1308672481.963")
    .param pmc param_1758
.annotate 'line', 836
    .lex "$_", param_1758
.annotate 'line', 837
    find_lex $P113, "$_"
    unless_null $P113, vivify_717
    new $P113, "Undef"
  vivify_717:
    $P114 = $P113."key"()
    find_lex $P1760, "%cache"
    unless_null $P1760, vivify_718
    $P1760 = root_new ['parrot';'Hash']
  vivify_718:
    set $P115, $P1760[$P114]
    unless_null $P115, vivify_719
    new $P115, "Undef"
  vivify_719:
    unless $P115, unless_1759
    set $P112, $P115
    goto unless_1759_end
  unless_1759:
.annotate 'line', 838
    find_lex $P116, "$_"
    unless_null $P116, vivify_720
    new $P116, "Undef"
  vivify_720:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_721
    new $P118, "Undef"
  vivify_721:
    $P119 = $P118."key"()
    find_lex $P1761, "%cache"
    unless_null $P1761, vivify_722
    $P1761 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1761
  vivify_722:
    set $P1761[$P119], $P117
.annotate 'line', 837
    set $P112, $P117
  unless_1759_end:
.annotate 'line', 836
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("116_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1766
    .param pmc param_1767
.annotate 'line', 845
    .const 'Sub' $P1773 = "117_1308672481.963" 
    capture_lex $P1773
    .lex "self", param_1766
    .lex "$obj", param_1767
.annotate 'line', 846
    $P1769 = root_new ['parrot';'Hash']
    set $P1768, $P1769
    .lex "%mapping", $P1768
.annotate 'line', 845
    find_lex $P1770, "%mapping"
    unless_null $P1770, vivify_725
    $P1770 = root_new ['parrot';'Hash']
  vivify_725:
.annotate 'line', 847
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1771, $P107, $P108, "@!mro"
    unless_null $P1771, vivify_726
    $P1771 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    defined $I100, $P1771
    unless $I100, for_undef_727
    iter $P106, $P1771
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1785_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1785_test:
    unless $P106, loop1785_done
    shift $P109, $P106
  loop1785_redo:
    .const 'Sub' $P1773 = "117_1308672481.963" 
    capture_lex $P1773
    $P1773($P109)
  loop1785_next:
    goto loop1785_test
  loop1785_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1785_next
    eq $P112, .CONTROL_LOOP_REDO, loop1785_redo
  loop1785_done:
    pop_eh 
  for_undef_727:
.annotate 'line', 855
    find_lex $P1787, "%mapping"
    unless_null $P1787, vivify_738
    $P1787 = root_new ['parrot';'Hash']
  vivify_738:
    set $N100, $P1787
    if $N100, if_1786
    new $P106, 'Float'
    set $P106, $N100
    goto if_1786_end
  if_1786:
.annotate 'line', 856
    find_lex $P107, "$obj"
    unless_null $P107, vivify_739
    new $P107, "Undef"
  vivify_739:
    find_lex $P1788, "%mapping"
    unless_null $P1788, vivify_740
    $P1788 = root_new ['parrot';'Hash']
  vivify_740:
    stable_publish_vtable_mapping $P107, $P1788
  if_1786_end:
.annotate 'line', 845
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1772"  :anon :subid("117_1308672481.963") :outer("116_1308672481.963")
    .param pmc param_1776
.annotate 'line', 847
    .const 'Sub' $P1779 = "118_1308672481.963" 
    capture_lex $P1779
.annotate 'line', 848
    $P1775 = root_new ['parrot';'Hash']
    set $P1774, $P1775
    .lex "%map", $P1774
    .lex "$_", param_1776
    find_lex $P110, "$_"
    unless_null $P110, vivify_728
    new $P110, "Undef"
  vivify_728:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_729
    new $P112, "Undef"
  vivify_729:
    $P113 = $P111."parrot_vtable_mappings"($P112, 1 :named("local"))
    store_lex "%map", $P113
.annotate 'line', 849
    find_lex $P1777, "%map"
    unless_null $P1777, vivify_730
    $P1777 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I101, $P1777
    unless $I101, for_undef_731
    iter $P110, $P1777
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1784_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1784_test:
    unless $P110, loop1784_done
    shift $P111, $P110
  loop1784_redo:
    .const 'Sub' $P1779 = "118_1308672481.963" 
    capture_lex $P1779
    $P1779($P111)
  loop1784_next:
    goto loop1784_test
  loop1784_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1784_next
    eq $P114, .CONTROL_LOOP_REDO, loop1784_redo
  loop1784_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 847
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1778"  :anon :subid("118_1308672481.963") :outer("117_1308672481.963")
    .param pmc param_1780
.annotate 'line', 849
    .lex "$_", param_1780
.annotate 'line', 850
    find_lex $P113, "$_"
    unless_null $P113, vivify_732
    new $P113, "Undef"
  vivify_732:
    $P114 = $P113."key"()
    find_lex $P1782, "%mapping"
    unless_null $P1782, vivify_733
    $P1782 = root_new ['parrot';'Hash']
  vivify_733:
    set $P115, $P1782[$P114]
    unless_null $P115, vivify_734
    new $P115, "Undef"
  vivify_734:
    unless $P115, unless_1781
    set $P112, $P115
    goto unless_1781_end
  unless_1781:
.annotate 'line', 851
    find_lex $P116, "$_"
    unless_null $P116, vivify_735
    new $P116, "Undef"
  vivify_735:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_736
    new $P118, "Undef"
  vivify_736:
    $P119 = $P118."key"()
    find_lex $P1783, "%mapping"
    unless_null $P1783, vivify_737
    $P1783 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1783
  vivify_737:
    set $P1783[$P119], $P117
.annotate 'line', 850
    set $P112, $P117
  unless_1781_end:
.annotate 'line', 849
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("119_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1790
    .param pmc param_1791
.annotate 'line', 860
    .const 'Sub' $P1797 = "120_1308672481.963" 
    capture_lex $P1797
    .lex "self", param_1790
    .lex "$obj", param_1791
.annotate 'line', 861
    $P1793 = root_new ['parrot';'Hash']
    set $P1792, $P1793
    .lex "%mapping", $P1792
.annotate 'line', 860
    find_lex $P1794, "%mapping"
    unless_null $P1794, vivify_741
    $P1794 = root_new ['parrot';'Hash']
  vivify_741:
.annotate 'line', 862
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1795, $P107, $P108, "@!mro"
    unless_null $P1795, vivify_742
    $P1795 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
    defined $I100, $P1795
    unless $I100, for_undef_743
    iter $P106, $P1795
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1809_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1809_test:
    unless $P106, loop1809_done
    shift $P109, $P106
  loop1809_redo:
    .const 'Sub' $P1797 = "120_1308672481.963" 
    capture_lex $P1797
    $P1797($P109)
  loop1809_next:
    goto loop1809_test
  loop1809_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1809_next
    eq $P112, .CONTROL_LOOP_REDO, loop1809_redo
  loop1809_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 870
    find_lex $P1811, "%mapping"
    unless_null $P1811, vivify_754
    $P1811 = root_new ['parrot';'Hash']
  vivify_754:
    set $N100, $P1811
    if $N100, if_1810
    new $P106, 'Float'
    set $P106, $N100
    goto if_1810_end
  if_1810:
.annotate 'line', 871
    find_lex $P107, "$obj"
    unless_null $P107, vivify_755
    new $P107, "Undef"
  vivify_755:
    find_lex $P1812, "%mapping"
    unless_null $P1812, vivify_756
    $P1812 = root_new ['parrot';'Hash']
  vivify_756:
    stable_publish_vtable_handler_mapping $P107, $P1812
  if_1810_end:
.annotate 'line', 860
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1796"  :anon :subid("120_1308672481.963") :outer("119_1308672481.963")
    .param pmc param_1800
.annotate 'line', 862
    .const 'Sub' $P1803 = "121_1308672481.963" 
    capture_lex $P1803
.annotate 'line', 863
    $P1799 = root_new ['parrot';'Hash']
    set $P1798, $P1799
    .lex "%map", $P1798
    .lex "$_", param_1800
    find_lex $P110, "$_"
    unless_null $P110, vivify_744
    new $P110, "Undef"
  vivify_744:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_745
    new $P112, "Undef"
  vivify_745:
    $P113 = $P111."parrot_vtable_handler_mappings"($P112, 1 :named("local"))
    store_lex "%map", $P113
.annotate 'line', 864
    find_lex $P1801, "%map"
    unless_null $P1801, vivify_746
    $P1801 = root_new ['parrot';'Hash']
  vivify_746:
    defined $I101, $P1801
    unless $I101, for_undef_747
    iter $P110, $P1801
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1808_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1808_test:
    unless $P110, loop1808_done
    shift $P111, $P110
  loop1808_redo:
    .const 'Sub' $P1803 = "121_1308672481.963" 
    capture_lex $P1803
    $P1803($P111)
  loop1808_next:
    goto loop1808_test
  loop1808_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1808_next
    eq $P114, .CONTROL_LOOP_REDO, loop1808_redo
  loop1808_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 862
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1802"  :anon :subid("121_1308672481.963") :outer("120_1308672481.963")
    .param pmc param_1804
.annotate 'line', 864
    .lex "$_", param_1804
.annotate 'line', 865
    find_lex $P113, "$_"
    unless_null $P113, vivify_748
    new $P113, "Undef"
  vivify_748:
    $P114 = $P113."key"()
    find_lex $P1806, "%mapping"
    unless_null $P1806, vivify_749
    $P1806 = root_new ['parrot';'Hash']
  vivify_749:
    set $P115, $P1806[$P114]
    unless_null $P115, vivify_750
    new $P115, "Undef"
  vivify_750:
    unless $P115, unless_1805
    set $P112, $P115
    goto unless_1805_end
  unless_1805:
.annotate 'line', 866
    find_lex $P116, "$_"
    unless_null $P116, vivify_751
    new $P116, "Undef"
  vivify_751:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_752
    new $P118, "Undef"
  vivify_752:
    $P119 = $P118."key"()
    find_lex $P1807, "%mapping"
    unless_null $P1807, vivify_753
    $P1807 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1807
  vivify_753:
    set $P1807[$P119], $P117
.annotate 'line', 865
    set $P112, $P117
  unless_1805_end:
.annotate 'line', 864
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("122_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1814
    .param pmc param_1815
    .param pmc param_1816 :optional :named("local")
    .param int has_param_1816 :opt_flag
.annotate 'line', 878
    .lex "self", param_1814
    .lex "$obj", param_1815
    if has_param_1816, optparam_757
    new $P106, "Undef"
    set param_1816, $P106
  optparam_757:
    .lex "$local", param_1816
.annotate 'line', 879
    find_lex $P108, "$local"
    unless_null $P108, vivify_758
    new $P108, "Undef"
  vivify_758:
    if $P108, if_1817
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P1819, $P111, $P112, "@!mro"
    unless_null $P1819, vivify_759
    $P1819 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P107, $P1819
    goto if_1817_end
  if_1817:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1818, $P109, $P110, "@!parents"
    unless_null $P1818, vivify_760
    $P1818 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    set $P107, $P1818
  if_1817_end:
.annotate 'line', 878
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("123_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1821
    .param pmc param_1822
    .param pmc param_1823 :named("local")
.annotate 'line', 882
    .lex "self", param_1821
    .lex "$obj", param_1822
    .lex "$local", param_1823
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1824, $P106, $P107, "@!roles"
    unless_null $P1824, vivify_761
    $P1824 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    .return ($P1824)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("124_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1826
    .param pmc param_1827
    .param pmc param_1828 :named("local")
.annotate 'line', 886
    .const 'Sub' $P1834 = "125_1308672481.963" 
    capture_lex $P1834
    .lex "self", param_1826
    .lex "$obj", param_1827
    .lex "$local", param_1828
.annotate 'line', 887
    $P1830 = root_new ['parrot';'ResizablePMCArray']
    set $P1829, $P1830
    .lex "@meths", $P1829
.annotate 'line', 886
    find_lex $P1831, "@meths"
    unless_null $P1831, vivify_762
    $P1831 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
.annotate 'line', 888
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1832, $P107, $P108, "%!methods"
    unless_null $P1832, vivify_763
    $P1832 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I100, $P1832
    unless $I100, for_undef_764
    iter $P106, $P1832
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1837_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1837_test:
    unless $P106, loop1837_done
    shift $P109, $P106
  loop1837_redo:
    .const 'Sub' $P1834 = "125_1308672481.963" 
    capture_lex $P1834
    $P1834($P109)
  loop1837_next:
    goto loop1837_test
  loop1837_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1837_next
    eq $P111, .CONTROL_LOOP_REDO, loop1837_redo
  loop1837_done:
    pop_eh 
  for_undef_764:
.annotate 'line', 886
    find_lex $P1838, "@meths"
    unless_null $P1838, vivify_767
    $P1838 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    .return ($P1838)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1833"  :anon :subid("125_1308672481.963") :outer("124_1308672481.963")
    .param pmc param_1835
.annotate 'line', 888
    .lex "$_", param_1835
.annotate 'line', 889
    find_lex $P1836, "@meths"
    unless_null $P1836, vivify_765
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    find_lex $P110, "$_"
    unless_null $P110, vivify_766
    new $P110, "Undef"
  vivify_766:
    $P111 = $P110."value"()
    $P112 = $P1836."push"($P111)
.annotate 'line', 888
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("126_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1840
    .param pmc param_1841
.annotate 'line', 894
    .lex "self", param_1840
    .lex "$obj", param_1841
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1842, $P106, $P107, "%!methods"
    unless_null $P1842, vivify_768
    $P1842 = root_new ['parrot';'Hash']
  vivify_768:
    .return ($P1842)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("127_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1844
    .param pmc param_1845
.annotate 'line', 898
    .lex "self", param_1844
    .lex "$obj", param_1845
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!name"
    unless_null $P108, vivify_769
    new $P108, "Undef"
  vivify_769:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("128_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1847
    .param pmc param_1848
    .param pmc param_1849 :named("local")
.annotate 'line', 902
    .const 'Sub' $P1855 = "129_1308672481.963" 
    capture_lex $P1855
    .lex "self", param_1847
    .lex "$obj", param_1848
    .lex "$local", param_1849
.annotate 'line', 903
    $P1851 = root_new ['parrot';'ResizablePMCArray']
    set $P1850, $P1851
    .lex "@attrs", $P1850
.annotate 'line', 902
    find_lex $P1852, "@attrs"
    unless_null $P1852, vivify_770
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
.annotate 'line', 904
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1853, $P107, $P108, "%!attributes"
    unless_null $P1853, vivify_771
    $P1853 = root_new ['parrot';'Hash']
  vivify_771:
    defined $I100, $P1853
    unless $I100, for_undef_772
    iter $P106, $P1853
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1858_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1858_test:
    unless $P106, loop1858_done
    shift $P109, $P106
  loop1858_redo:
    .const 'Sub' $P1855 = "129_1308672481.963" 
    capture_lex $P1855
    $P1855($P109)
  loop1858_next:
    goto loop1858_test
  loop1858_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1858_next
    eq $P111, .CONTROL_LOOP_REDO, loop1858_redo
  loop1858_done:
    pop_eh 
  for_undef_772:
.annotate 'line', 902
    find_lex $P1859, "@attrs"
    unless_null $P1859, vivify_775
    $P1859 = root_new ['parrot';'ResizablePMCArray']
  vivify_775:
    .return ($P1859)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1854"  :anon :subid("129_1308672481.963") :outer("128_1308672481.963")
    .param pmc param_1856
.annotate 'line', 904
    .lex "$_", param_1856
.annotate 'line', 905
    find_lex $P1857, "@attrs"
    unless_null $P1857, vivify_773
    $P1857 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    find_lex $P110, "$_"
    unless_null $P110, vivify_774
    new $P110, "Undef"
  vivify_774:
    $P111 = $P110."value"()
    $P112 = $P1857."push"($P111)
.annotate 'line', 904
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("130_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1861
    .param pmc param_1862
    .param pmc param_1863 :named("local")
.annotate 'line', 910
    .lex "self", param_1861
    .lex "$obj", param_1862
    .lex "$local", param_1863
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1864, $P106, $P107, "%!parrot_vtable_mapping"
    unless_null $P1864, vivify_776
    $P1864 = root_new ['parrot';'Hash']
  vivify_776:
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("131_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1866
    .param pmc param_1867
    .param pmc param_1868 :named("local")
.annotate 'line', 914
    .lex "self", param_1866
    .lex "$obj", param_1867
    .lex "$local", param_1868
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1869, $P106, $P107, "%!parrot_vtable_handler_mapping"
    unless_null $P1869, vivify_777
    $P1869 = root_new ['parrot';'Hash']
  vivify_777:
    .return ($P1869)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("132_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1873
    .param pmc param_1874
    .param pmc param_1875
.annotate 'line', 922
    new $P1872, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1872, control_1871
    push_eh $P1872
    .lex "self", param_1873
    .lex "$obj", param_1874
    .lex "$check", param_1875
.annotate 'line', 923
    new $P106, "Undef"
    set $P1876, $P106
    .lex "$check-class", $P1876
.annotate 'line', 924
    new $P107, "Undef"
    set $P1877, $P107
    .lex "$i", $P1877
.annotate 'line', 923
    find_lex $P108, "$check"
    unless_null $P108, vivify_778
    new $P108, "Undef"
  vivify_778:
    get_what $P109, $P108
    store_lex "$check-class", $P109
.annotate 'line', 924
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1878, $P108, $P109, "@!mro"
    unless_null $P1878, vivify_779
    $P1878 = root_new ['parrot';'ResizablePMCArray']
  vivify_779:
    set $N100, $P1878
    new $P110, 'Float'
    set $P110, $N100
    store_lex "$i", $P110
.annotate 'line', 925
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1881_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1881_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_780
    new $P108, "Undef"
  vivify_780:
    set $N100, $P108
    isgt $I100, $N100, 0.0
    unless $I100, loop1881_done
  loop1881_redo:
.annotate 'line', 926
    find_lex $P109, "$i"
    unless_null $P109, vivify_781
    new $P109, "Undef"
  vivify_781:
    sub $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 927
    find_lex $P109, "$i"
    unless_null $P109, vivify_782
    new $P109, "Undef"
  vivify_782:
    set $I101, $P109
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1880, $P110, $P111, "@!mro"
    unless_null $P1880, vivify_783
    $P1880 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    set $P112, $P1880[$I101]
    unless_null $P112, vivify_784
    new $P112, "Undef"
  vivify_784:
    find_lex $P113, "$check-class"
    unless_null $P113, vivify_785
    new $P113, "Undef"
  vivify_785:
    issame $I102, $P112, $P113
    unless $I102, if_1879_end
.annotate 'line', 928
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    new $P115, "Integer"
    assign $P115, 1
    setattribute $P114, 'payload', $P115
    throw $P114
  if_1879_end:
  loop1881_next:
.annotate 'line', 925
    goto loop1881_test
  loop1881_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1881_next
    eq $P110, .CONTROL_LOOP_REDO, loop1881_redo
  loop1881_done:
    pop_eh 
.annotate 'line', 931
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Integer"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 922
    .return ()
  control_1871:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("133_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1885
    .param pmc param_1886
    .param pmc param_1887
.annotate 'line', 934
    new $P1884, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1884, control_1883
    push_eh $P1884
    .lex "self", param_1885
    .lex "$obj", param_1886
    .lex "$check", param_1887
.annotate 'line', 935
    new $P106, "Undef"
    set $P1888, $P106
    .lex "$i", $P1888
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1889, $P107, $P108, "@!done"
    unless_null $P1889, vivify_786
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $N100, $P1889
    new $P109, 'Float'
    set $P109, $N100
    store_lex "$i", $P109
.annotate 'line', 936
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1892_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1892_test:
    find_lex $P107, "$i"
    unless_null $P107, vivify_787
    new $P107, "Undef"
  vivify_787:
    set $N100, $P107
    isgt $I100, $N100, 0.0
    unless $I100, loop1892_done
  loop1892_redo:
.annotate 'line', 937
    find_lex $P108, "$i"
    unless_null $P108, vivify_788
    new $P108, "Undef"
  vivify_788:
    sub $P109, $P108, 1
    store_lex "$i", $P109
.annotate 'line', 938
    find_lex $P108, "$i"
    unless_null $P108, vivify_789
    new $P108, "Undef"
  vivify_789:
    set $I101, $P108
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1891, $P109, $P110, "@!done"
    unless_null $P1891, vivify_790
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    set $P111, $P1891[$I101]
    unless_null $P111, vivify_791
    new $P111, "Undef"
  vivify_791:
    find_lex $P112, "$check"
    unless_null $P112, vivify_792
    new $P112, "Undef"
  vivify_792:
    issame $I102, $P111, $P112
    unless $I102, if_1890_end
.annotate 'line', 939
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    new $P114, "Integer"
    assign $P114, 1
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1890_end:
  loop1892_next:
.annotate 'line', 936
    goto loop1892_test
  loop1892_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1892_next
    eq $P109, .CONTROL_LOOP_REDO, loop1892_redo
  loop1892_done:
    pop_eh 
.annotate 'line', 942
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Integer"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 934
    .return ()
  control_1883:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("134_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1896
    .param pmc param_1897
    .param pmc param_1898
.annotate 'line', 945
    .const 'Sub' $P1901 = "135_1308672481.963" 
    capture_lex $P1901
    new $P1895, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1895, control_1894
    push_eh $P1895
    .lex "self", param_1896
    .lex "$obj", param_1897
    .lex "$name", param_1898
.annotate 'line', 946
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1899, $P107, $P108, "@!mro"
    unless_null $P1899, vivify_793
    $P1899 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    defined $I100, $P1899
    unless $I100, for_undef_794
    iter $P106, $P1899
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1908_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1908_test:
    unless $P106, loop1908_done
    shift $P109, $P106
  loop1908_redo:
    .const 'Sub' $P1901 = "135_1308672481.963" 
    capture_lex $P1901
    $P1901($P109)
  loop1908_next:
    goto loop1908_test
  loop1908_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1908_next
    eq $P113, .CONTROL_LOOP_REDO, loop1908_redo
  loop1908_done:
    pop_eh 
  for_undef_794:
.annotate 'line', 953
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Integer"
    assign $P107, 0
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 945
    .return ()
  control_1894:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1900"  :anon :subid("135_1308672481.963") :outer("134_1308672481.963")
    .param pmc param_1905
.annotate 'line', 947
    $P1903 = root_new ['parrot';'Hash']
    set $P1902, $P1903
    .lex "%meths", $P1902
.annotate 'line', 948
    new $P110, "Undef"
    set $P1904, $P110
    .lex "$can", $P1904
    .lex "$_", param_1905
.annotate 'line', 947
    find_lex $P111, "$_"
    unless_null $P111, vivify_795
    new $P111, "Undef"
  vivify_795:
    get_how $P112, $P111
    find_lex $P113, "$obj"
    unless_null $P113, vivify_796
    new $P113, "Undef"
  vivify_796:
    $P114 = $P112."method_table"($P113)
    store_lex "%meths", $P114
.annotate 'line', 948
    find_lex $P111, "$name"
    unless_null $P111, vivify_797
    new $P111, "Undef"
  vivify_797:
    find_lex $P1906, "%meths"
    unless_null $P1906, vivify_798
    $P1906 = root_new ['parrot';'Hash']
  vivify_798:
    set $P112, $P1906[$P111]
    unless_null $P112, vivify_799
    new $P112, "Undef"
  vivify_799:
    store_lex "$can", $P112
.annotate 'line', 949
    find_lex $P112, "$can"
    unless_null $P112, vivify_800
    new $P112, "Undef"
  vivify_800:
    defined $I101, $P112
    if $I101, if_1907
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1907_end
  if_1907:
.annotate 'line', 950
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    find_lex $P114, "$can"
    unless_null $P114, vivify_801
    new $P114, "Undef"
  vivify_801:
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1907_end:
.annotate 'line', 946
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("136_1308672481.963") :outer("77_1308672481.963")
    .param pmc param_1912
    .param pmc param_1913
    .param pmc param_1914
.annotate 'line', 959
    .const 'Sub' $P1917 = "137_1308672481.963" 
    capture_lex $P1917
    new $P1911, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1911, control_1910
    push_eh $P1911
    .lex "self", param_1912
    .lex "$obj", param_1913
    .lex "$name", param_1914
.annotate 'line', 960
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1915, $P107, $P108, "@!mro"
    unless_null $P1915, vivify_802
    $P1915 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    defined $I100, $P1915
    unless $I100, for_undef_803
    iter $P106, $P1915
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1924_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1924_test:
    unless $P106, loop1924_done
    shift $P109, $P106
  loop1924_redo:
    .const 'Sub' $P1917 = "137_1308672481.963" 
    capture_lex $P1917
    $P1917($P109)
  loop1924_next:
    goto loop1924_test
  loop1924_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1924_next
    eq $P113, .CONTROL_LOOP_REDO, loop1924_redo
  loop1924_done:
    pop_eh 
  for_undef_803:
.annotate 'line', 967
    null $P106
.annotate 'line', 959
    .return ($P106)
  control_1910:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1916"  :anon :subid("137_1308672481.963") :outer("136_1308672481.963")
    .param pmc param_1921
.annotate 'line', 961
    $P1919 = root_new ['parrot';'Hash']
    set $P1918, $P1919
    .lex "%meths", $P1918
.annotate 'line', 962
    new $P110, "Undef"
    set $P1920, $P110
    .lex "$found", $P1920
    .lex "$_", param_1921
.annotate 'line', 961
    find_lex $P111, "$_"
    unless_null $P111, vivify_804
    new $P111, "Undef"
  vivify_804:
    get_how $P112, $P111
    find_lex $P113, "$obj"
    unless_null $P113, vivify_805
    new $P113, "Undef"
  vivify_805:
    $P114 = $P112."method_table"($P113)
    store_lex "%meths", $P114
.annotate 'line', 962
    find_lex $P111, "$name"
    unless_null $P111, vivify_806
    new $P111, "Undef"
  vivify_806:
    find_lex $P1922, "%meths"
    unless_null $P1922, vivify_807
    $P1922 = root_new ['parrot';'Hash']
  vivify_807:
    set $P112, $P1922[$P111]
    unless_null $P112, vivify_808
    new $P112, "Undef"
  vivify_808:
    store_lex "$found", $P112
.annotate 'line', 963
    find_lex $P112, "$found"
    unless_null $P112, vivify_809
    new $P112, "Undef"
  vivify_809:
    defined $I101, $P112
    if $I101, if_1923
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1923_end
  if_1923:
.annotate 'line', 964
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    find_lex $P114, "$found"
    unless_null $P114, vivify_810
    new $P114, "Undef"
  vivify_810:
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1923_end:
.annotate 'line', 960
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1926"  :subid("138_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 972
    .const 'Sub' $P1960 = "146_1308672481.963" 
    capture_lex $P1960
    .const 'Sub' $P1957 = "145_1308672481.963" 
    capture_lex $P1957
    .const 'Sub' $P1953 = "144_1308672481.963" 
    capture_lex $P1953
    .const 'Sub' $P1948 = "143_1308672481.963" 
    capture_lex $P1948
    .const 'Sub' $P1943 = "142_1308672481.963" 
    capture_lex $P1943
    .const 'Sub' $P1937 = "141_1308672481.963" 
    capture_lex $P1937
    .const 'Sub' $P1934 = "140_1308672481.963" 
    capture_lex $P1934
    .const 'Sub' $P1930 = "139_1308672481.963" 
    capture_lex $P1930
    .lex "$?PACKAGE", $P1928
    .lex "$?CLASS", $P1929
.annotate 'line', 1012
    .const 'Sub' $P1960 = "146_1308672481.963" 
    newclosure $P1963, $P1960
.annotate 'line', 972
    .return ($P1963)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("139_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1931
    .param pmc param_1932 :optional :named("name")
    .param int has_param_1932 :opt_flag
.annotate 'line', 976
    .lex "self", param_1931
    if has_param_1932, optparam_811
    new $P100, "Undef"
    set param_1932, $P100
  optparam_811:
    .lex "$name", param_1932
.annotate 'line', 977
    new $P101, "Undef"
    set $P1933, $P101
    .lex "$obj", $P1933
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 978
    find_lex $P102, "$obj"
    unless_null $P102, vivify_812
    new $P102, "Undef"
  vivify_812:
    find_lex $P103, "$name"
    unless_null $P103, vivify_813
    new $P103, "Undef"
  vivify_813:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 976
    find_lex $P102, "$obj"
    unless_null $P102, vivify_814
    new $P102, "Undef"
  vivify_814:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("140_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1935
    .param pmc param_1936 :optional :named("name")
    .param int has_param_1936 :opt_flag
.annotate 'line', 982
    .lex "self", param_1935
    if has_param_1936, optparam_815
    new $P100, "Undef"
    set param_1936, $P100
  optparam_815:
    .lex "$name", param_1936
.annotate 'line', 983
    find_lex $P101, "$name"
    unless_null $P101, vivify_816
    new $P101, "Undef"
  vivify_816:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!name", $P101
.annotate 'line', 982
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("141_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1938
    .param pmc param_1940 :named("repr")
    .param pmc param_1939 :optional :named("name")
    .param int has_param_1939 :opt_flag
.annotate 'line', 989
    .lex "self", param_1938
    if has_param_1939, optparam_817
    new $P100, "String"
    assign $P100, "<anon>"
    set param_1939, $P100
  optparam_817:
    .lex "$name", param_1939
    .lex "$repr", param_1940
.annotate 'line', 990
    new $P101, "Undef"
    set $P1941, $P101
    .lex "$metaclass", $P1941
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_818
    new $P103, "Undef"
  vivify_818:
    $P104 = $P102."new"($P103 :named("name"))
    store_lex "$metaclass", $P104
.annotate 'line', 992
    find_lex $P102, "$metaclass"
    unless_null $P102, vivify_819
    new $P102, "Undef"
  vivify_819:
    find_lex $P103, "$repr"
    unless_null $P103, vivify_820
    new $P103, "Undef"
  vivify_820:
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
    $P1942 = root_new ['parrot';'Hash']
    set_who $P104, $P1942
.annotate 'line', 989
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("142_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1944
    .param pmc param_1945
    .param pmc param_1946
    .param pmc param_1947
.annotate 'line', 996
    .lex "self", param_1944
    .lex "$obj", param_1945
    .lex "$name", param_1946
    .lex "$code_obj", param_1947
.annotate 'line', 997
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 996
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("143_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1949
    .param pmc param_1950
    .param pmc param_1951
    .param pmc param_1952
.annotate 'line', 1000
    .lex "self", param_1949
    .lex "$obj", param_1950
    .lex "$name", param_1951
    .lex "$code_obj", param_1952
.annotate 'line', 1001
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1000
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("144_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1954
    .param pmc param_1955
    .param pmc param_1956
.annotate 'line', 1004
    .lex "self", param_1954
    .lex "$obj", param_1955
    .lex "$meta_attr", param_1956
.annotate 'line', 1005
    die "Native types may not have attributes"
.annotate 'line', 1004
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("145_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1958
    .param pmc param_1959
.annotate 'line', 1008
    .lex "self", param_1958
    .lex "$obj", param_1959
.annotate 'line', 1009
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 1008
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("146_1308672481.963") :outer("138_1308672481.963")
    .param pmc param_1961
    .param pmc param_1962
.annotate 'line', 1012
    .lex "self", param_1961
    .lex "$obj", param_1962
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_821
    new $P102, "Undef"
  vivify_821:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1964"  :subid("147_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 1018
    .const 'Sub' $P2028 = "160_1308672481.963" 
    capture_lex $P2028
    .const 'Sub' $P2005 = "155_1308672481.963" 
    capture_lex $P2005
    .const 'Sub' $P2002 = "154_1308672481.963" 
    capture_lex $P2002
    .const 'Sub' $P1997 = "153_1308672481.963" 
    capture_lex $P1997
    .const 'Sub' $P1995 = "152_1308672481.963" 
    capture_lex $P1995
    .const 'Sub' $P1990 = "151_1308672481.963" 
    capture_lex $P1990
    .const 'Sub' $P1984 = "150_1308672481.963" 
    capture_lex $P1984
    .const 'Sub' $P1967 = "148_1308672481.963" 
    capture_lex $P1967
.annotate 'line', 1078
    .const 'Sub' $P1967 = "148_1308672481.963" 
    newclosure $P1981, $P1967
    set $P1966, $P1981
    .lex "has_method", $P1966
.annotate 'line', 1018
    .lex "$?PACKAGE", $P1982
    .lex "$?CLASS", $P1983
    find_lex $P101, "has_method"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("148_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_1970
    .param pmc param_1971
    .param pmc param_1972
.annotate 'line', 1078
    .const 'Sub' $P1977 = "149_1308672481.963" 
    capture_lex $P1977
    new $P1969, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1969, control_1968
    push_eh $P1969
    .lex "$target", param_1970
    .lex "$name", param_1971
    .lex "$local", param_1972
.annotate 'line', 1079
    $P1974 = root_new ['parrot';'ResizablePMCArray']
    set $P1973, $P1974
    .lex "@methods", $P1973
    find_lex $P100, "$target"
    unless_null $P100, vivify_822
    new $P100, "Undef"
  vivify_822:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_823
    new $P102, "Undef"
  vivify_823:
    find_lex $P103, "$local"
    unless_null $P103, vivify_824
    new $P103, "Undef"
  vivify_824:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 1080
    find_lex $P1975, "@methods"
    unless_null $P1975, vivify_825
    $P1975 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    defined $I100, $P1975
    unless $I100, for_undef_826
    iter $P100, $P1975
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1980_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1980_test:
    unless $P100, loop1980_done
    shift $P101, $P100
  loop1980_redo:
    .const 'Sub' $P1977 = "149_1308672481.963" 
    capture_lex $P1977
    $P1977($P101)
  loop1980_next:
    goto loop1980_test
  loop1980_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1980_next
    eq $P104, .CONTROL_LOOP_REDO, loop1980_redo
  loop1980_done:
    pop_eh 
  for_undef_826:
.annotate 'line', 1083
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Integer"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1078
    .return ()
  control_1968:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1976"  :anon :subid("149_1308672481.963") :outer("148_1308672481.963")
    .param pmc param_1978
.annotate 'line', 1080
    .lex "$_", param_1978
.annotate 'line', 1081
    find_lex $P103, "$_"
    unless_null $P103, vivify_827
    new $P103, "Undef"
  vivify_827:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_828
    new $P104, "Undef"
  vivify_828:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_1979
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1979_end
  if_1979:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Integer"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1979_end:
.annotate 'line', 1080
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("150_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_1985
    .param pmc param_1986 :named("name")
    .param pmc param_1987 :optional :named("type")
    .param int has_param_1987 :opt_flag
    .param pmc param_1988 :optional :named("box_target")
    .param int has_param_1988 :opt_flag
.annotate 'line', 1023
    .lex "self", param_1985
    .lex "$name", param_1986
    if has_param_1987, optparam_829
    new $P101, "Undef"
    set param_1987, $P101
  optparam_829:
    .lex "$type", param_1987
    if has_param_1988, optparam_830
    new $P102, "Undef"
    set param_1988, $P102
  optparam_830:
    .lex "$box_target", param_1988
.annotate 'line', 1024
    new $P103, "Undef"
    set $P1989, $P103
    .lex "$attr", $P1989
    find_lex $P104, "self"
    repr_instance_of $P105, $P104
    store_lex "$attr", $P105
.annotate 'line', 1025
    find_lex $P104, "$attr"
    unless_null $P104, vivify_831
    new $P104, "Undef"
  vivify_831:
    find_lex $P105, "$name"
    unless_null $P105, vivify_832
    new $P105, "Undef"
  vivify_832:
    find_lex $P106, "$type"
    unless_null $P106, vivify_833
    new $P106, "Undef"
  vivify_833:
    find_lex $P107, "$box_target"
    unless_null $P107, vivify_834
    new $P107, "Undef"
  vivify_834:
    $P104."BUILD"($P105 :named("name"), $P106 :named("type"), $P107 :named("box_target"))
.annotate 'line', 1023
    find_lex $P104, "$attr"
    unless_null $P104, vivify_835
    new $P104, "Undef"
  vivify_835:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("151_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_1991
    .param pmc param_1992 :optional :named("name")
    .param int has_param_1992 :opt_flag
    .param pmc param_1993 :optional :named("type")
    .param int has_param_1993 :opt_flag
    .param pmc param_1994 :optional :named("box_target")
    .param int has_param_1994 :opt_flag
.annotate 'line', 1029
    .lex "self", param_1991
    if has_param_1992, optparam_836
    new $P101, "Undef"
    set param_1992, $P101
  optparam_836:
    .lex "$name", param_1992
    if has_param_1993, optparam_837
    new $P102, "Undef"
    set param_1993, $P102
  optparam_837:
    .lex "$type", param_1993
    if has_param_1994, optparam_838
    new $P103, "Undef"
    set param_1994, $P103
  optparam_838:
    .lex "$box_target", param_1994
.annotate 'line', 1030
    find_lex $P104, "$name"
    unless_null $P104, vivify_839
    new $P104, "Undef"
  vivify_839:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!name", $P104
.annotate 'line', 1031
    find_lex $P104, "$type"
    unless_null $P104, vivify_840
    new $P104, "Undef"
  vivify_840:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!type", $P104
.annotate 'line', 1032
    find_lex $P104, "$box_target"
    unless_null $P104, vivify_841
    new $P104, "Undef"
  vivify_841:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!box_target", $P104
.annotate 'line', 1029
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("152_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_1996
.annotate 'line', 1035
    .lex "self", param_1996
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_842
    new $P103, "Undef"
  vivify_842:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("153_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_1998
.annotate 'line', 1039
    .lex "self", param_1998
.annotate 'line', 1040
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!type"
    unless_null $P103, vivify_843
    new $P103, "Undef"
  vivify_843:
    set $P1999, $P103
    defined $I2001, $P1999
    if $I2001, default_2000
    null $P104
    set $P1999, $P104
  default_2000:
.annotate 'line', 1039
    .return ($P1999)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("154_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_2003
.annotate 'line', 1043
    .lex "self", param_2003
.annotate 'line', 1044
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!box_target"
    unless_null $P104, vivify_844
    new $P104, "Undef"
  vivify_844:
    if $P104, if_2004
    new $P106, "Integer"
    assign $P106, 0
    set $P101, $P106
    goto if_2004_end
  if_2004:
    new $P105, "Integer"
    assign $P105, 1
    set $P101, $P105
  if_2004_end:
.annotate 'line', 1043
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("155_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_2006
    .param pmc param_2007
.annotate 'line', 1047
    .const 'Sub' $P2021 = "158_1308672481.963" 
    capture_lex $P2021
    .const 'Sub' $P2011 = "156_1308672481.963" 
    capture_lex $P2011
    .lex "self", param_2006
    .lex "$obj", param_2007
.annotate 'line', 1048
    new $P101, "Undef"
    set $P2008, $P101
    .lex "$long_name", $P2008
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_845
    new $P104, "Undef"
  vivify_845:
    set $S100, $P104
    new $P105, 'String'
    set $P105, $S100
    store_lex "$long_name", $P105
.annotate 'line', 1049
    find_lex $P103, "self"
    $P104 = $P103."has_mutator"()
    if $P104, if_2009
.annotate 'line', 1061
    .const 'Sub' $P2021 = "158_1308672481.963" 
    capture_lex $P2021
    $P110 = $P2021()
    set $P102, $P110
.annotate 'line', 1049
    goto if_2009_end
  if_2009:
    .const 'Sub' $P2011 = "156_1308672481.963" 
    capture_lex $P2011
    $P107 = $P2011()
    set $P102, $P107
  if_2009_end:
.annotate 'line', 1047
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2020"  :anon :subid("158_1308672481.963") :outer("155_1308672481.963")
.annotate 'line', 1061
    .const 'Sub' $P2025 = "159_1308672481.963" 
    capture_lex $P2025
.annotate 'line', 1062
    new $P108, "Undef"
    set $P2022, $P108
    .lex "$method", $P2022
    find_lex $P109, "$long_name"
    unless_null $P109, vivify_846
    new $P109, "Undef"
  vivify_846:
    set $S100, $P109
    substr $S101, $S100, 2
    new $P110, 'String'
    set $P110, $S101
    store_lex "$method", $P110
.annotate 'line', 1063
    find_lex $P110, "$obj"
    unless_null $P110, vivify_847
    new $P110, "Undef"
  vivify_847:
    find_lex $P111, "$method"
    unless_null $P111, vivify_848
    new $P111, "Undef"
  vivify_848:
    $P112 = "has_method"($P110, $P111, 0)
    unless $P112, unless_2023
    set $P109, $P112
    goto unless_2023_end
  unless_2023:
.annotate 'line', 1064
    find_lex $P113, "$obj"
    unless_null $P113, vivify_849
    new $P113, "Undef"
  vivify_849:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_850
    new $P115, "Undef"
  vivify_850:
    find_lex $P116, "$method"
    unless_null $P116, vivify_851
    new $P116, "Undef"
  vivify_851:
.annotate 'line', 1065
    .const 'Sub' $P2025 = "159_1308672481.963" 
    newclosure $P2027, $P2025
    $P117 = $P114."add_method"($P115, $P116, $P2027)
.annotate 'line', 1063
    set $P109, $P117
  unless_2023_end:
.annotate 'line', 1061
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2024"  :anon :subid("159_1308672481.963") :outer("158_1308672481.963")
    .param pmc param_2026
.annotate 'line', 1065
    .lex "self", param_2026
.annotate 'line', 1066
    find_lex $P117, "self"
    find_lex $P118, "$obj"
    unless_null $P118, vivify_852
    new $P118, "Undef"
  vivify_852:
    get_what $P119, $P118
    find_lex $P120, "$long_name"
    unless_null $P120, vivify_853
    new $P120, "Undef"
  vivify_853:
    set $S100, $P120
    getattribute $P121, $P117, $P119, $S100
.annotate 'line', 1065
    .return ($P121)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2010"  :anon :subid("156_1308672481.963") :outer("155_1308672481.963")
.annotate 'line', 1049
    .const 'Sub' $P2015 = "157_1308672481.963" 
    capture_lex $P2015
.annotate 'line', 1050
    new $P105, "Undef"
    set $P2012, $P105
    .lex "$method", $P2012
    find_lex $P106, "$long_name"
    unless_null $P106, vivify_854
    new $P106, "Undef"
  vivify_854:
    set $S100, $P106
    substr $S101, $S100, 1
    new $P107, 'String'
    set $P107, $S101
    store_lex "$method", $P107
.annotate 'line', 1051
    find_lex $P107, "$obj"
    unless_null $P107, vivify_855
    new $P107, "Undef"
  vivify_855:
    find_lex $P108, "$method"
    unless_null $P108, vivify_856
    new $P108, "Undef"
  vivify_856:
    $P109 = "has_method"($P107, $P108, 0)
    unless $P109, unless_2013
    set $P106, $P109
    goto unless_2013_end
  unless_2013:
.annotate 'line', 1052
    find_lex $P110, "$obj"
    unless_null $P110, vivify_857
    new $P110, "Undef"
  vivify_857:
    get_how $P111, $P110
    find_lex $P112, "$obj"
    unless_null $P112, vivify_858
    new $P112, "Undef"
  vivify_858:
    get_what $P113, $P112
    find_lex $P114, "$method"
    unless_null $P114, vivify_859
    new $P114, "Undef"
  vivify_859:
    .const 'Sub' $P2015 = "157_1308672481.963" 
    newclosure $P2019, $P2015
    $P116 = $P111."add_method"($P113, $P114, $P2019)
.annotate 'line', 1051
    set $P106, $P116
  unless_2013_end:
.annotate 'line', 1049
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2014"  :anon :subid("157_1308672481.963") :outer("156_1308672481.963")
    .param pmc param_2016
    .param pmc param_2017 :optional
    .param int has_param_2017 :opt_flag
.annotate 'line', 1052
    .lex "self", param_2016
    if has_param_2017, optparam_860
    new $P115, "Undef"
    set param_2017, $P115
  optparam_860:
    .lex "$value", param_2017
.annotate 'line', 1054
    find_lex $P116, "$value"
    unless_null $P116, vivify_861
    new $P116, "Undef"
  vivify_861:
    defined $I100, $P116
    unless $I100, if_2018_end
.annotate 'line', 1053
    find_lex $P117, "self"
    find_lex $P118, "$obj"
    unless_null $P118, vivify_862
    new $P118, "Undef"
  vivify_862:
    get_what $P119, $P118
    find_lex $P120, "$long_name"
    unless_null $P120, vivify_863
    new $P120, "Undef"
  vivify_863:
    set $S100, $P120
    find_lex $P121, "$value"
    unless_null $P121, vivify_864
    new $P121, "Undef"
  vivify_864:
    setattribute $P117, $P119, $S100, $P121
  if_2018_end:
.annotate 'line', 1056
    find_lex $P116, "self"
    find_lex $P117, "$obj"
    unless_null $P117, vivify_865
    new $P117, "Undef"
  vivify_865:
    get_what $P118, $P117
    find_lex $P119, "$long_name"
    unless_null $P119, vivify_866
    new $P119, "Undef"
  vivify_866:
    set $S100, $P119
    getattribute $P120, $P116, $P118, $S100
.annotate 'line', 1052
    .return ($P120)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("160_1308672481.963") :outer("147_1308672481.963")
    .param pmc param_2029
.annotate 'line', 1074
    .lex "self", param_2029
.annotate 'line', 1075
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_867
    new $P103, "Undef"
  vivify_867:
    set $S100, $P103
    substr $S101, $S100, 1, 1
    isne $I100, $S101, "!"
.annotate 'line', 1074
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2030"  :subid("161_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 1089
    .const 'Sub' $P2064 = "169_1308672481.963" 
    capture_lex $P2064
    .const 'Sub' $P2061 = "168_1308672481.963" 
    capture_lex $P2061
    .const 'Sub' $P2057 = "167_1308672481.963" 
    capture_lex $P2057
    .const 'Sub' $P2052 = "166_1308672481.963" 
    capture_lex $P2052
    .const 'Sub' $P2047 = "165_1308672481.963" 
    capture_lex $P2047
    .const 'Sub' $P2041 = "164_1308672481.963" 
    capture_lex $P2041
    .const 'Sub' $P2038 = "163_1308672481.963" 
    capture_lex $P2038
    .const 'Sub' $P2034 = "162_1308672481.963" 
    capture_lex $P2034
    .lex "$?PACKAGE", $P2032
    .lex "$?CLASS", $P2033
.annotate 'line', 1130
    .const 'Sub' $P2064 = "169_1308672481.963" 
    newclosure $P2067, $P2064
.annotate 'line', 1089
    .return ($P2067)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("162_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2035
    .param pmc param_2036 :optional :named("name")
    .param int has_param_2036 :opt_flag
.annotate 'line', 1093
    .lex "self", param_2035
    if has_param_2036, optparam_868
    new $P100, "Undef"
    set param_2036, $P100
  optparam_868:
    .lex "$name", param_2036
.annotate 'line', 1094
    new $P101, "Undef"
    set $P2037, $P101
    .lex "$obj", $P2037
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 1095
    find_lex $P102, "$obj"
    unless_null $P102, vivify_869
    new $P102, "Undef"
  vivify_869:
    find_lex $P103, "$name"
    unless_null $P103, vivify_870
    new $P103, "Undef"
  vivify_870:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 1093
    find_lex $P102, "$obj"
    unless_null $P102, vivify_871
    new $P102, "Undef"
  vivify_871:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("163_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2039
    .param pmc param_2040 :optional :named("name")
    .param int has_param_2040 :opt_flag
.annotate 'line', 1099
    .lex "self", param_2039
    if has_param_2040, optparam_872
    new $P100, "Undef"
    set param_2040, $P100
  optparam_872:
    .lex "$name", param_2040
.annotate 'line', 1100
    find_lex $P101, "$name"
    unless_null $P101, vivify_873
    new $P101, "Undef"
  vivify_873:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!name", $P101
.annotate 'line', 1099
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("164_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2042
    .param pmc param_2043 :optional :named("name")
    .param int has_param_2043 :opt_flag
    .param pmc param_2044 :optional :named("repr")
    .param int has_param_2044 :opt_flag
.annotate 'line', 1105
    .lex "self", param_2042
    if has_param_2043, optparam_874
    new $P100, "String"
    assign $P100, "<anon>"
    set param_2043, $P100
  optparam_874:
    .lex "$name", param_2043
    if has_param_2044, optparam_875
    new $P101, "String"
    assign $P101, "P6opaque"
    set param_2044, $P101
  optparam_875:
    .lex "$repr", param_2044
.annotate 'line', 1106
    new $P102, "Undef"
    set $P2045, $P102
    .lex "$metaclass", $P2045
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_876
    new $P104, "Undef"
  vivify_876:
    $P105 = $P103."new"($P104 :named("name"))
    store_lex "$metaclass", $P105
.annotate 'line', 1108
    find_lex $P103, "$metaclass"
    unless_null $P103, vivify_877
    new $P103, "Undef"
  vivify_877:
    find_lex $P104, "$repr"
    unless_null $P104, vivify_878
    new $P104, "Undef"
  vivify_878:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2046 = root_new ['parrot';'Hash']
    set_who $P105, $P2046
.annotate 'line', 1105
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("165_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2048
    .param pmc param_2049
    .param pmc param_2050
    .param pmc param_2051
.annotate 'line', 1112
    .lex "self", param_2048
    .lex "$obj", param_2049
    .lex "$name", param_2050
    .lex "$code_obj", param_2051
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("166_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2053
    .param pmc param_2054
    .param pmc param_2055
    .param pmc param_2056
.annotate 'line', 1118
    .lex "self", param_2053
    .lex "$obj", param_2054
    .lex "$name", param_2055
    .lex "$code_obj", param_2056
.annotate 'line', 1119
    die "Modules may not have methods"
.annotate 'line', 1118
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("167_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2058
    .param pmc param_2059
    .param pmc param_2060
.annotate 'line', 1122
    .lex "self", param_2058
    .lex "$obj", param_2059
    .lex "$meta_attr", param_2060
.annotate 'line', 1123
    die "Modules may not have attributes"
.annotate 'line', 1122
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("168_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2062
    .param pmc param_2063
.annotate 'line', 1126
    .lex "self", param_2062
    .lex "$obj", param_2063
.annotate 'line', 1127
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 1126
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("169_1308672481.963") :outer("161_1308672481.963")
    .param pmc param_2065
    .param pmc param_2066
.annotate 'line', 1130
    .lex "self", param_2065
    .lex "$obj", param_2066
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_879
    new $P102, "Undef"
  vivify_879:
    .return ($P102)
.end


.HLL "nqp"

.namespace []
.sub "_block2068"  :anon :subid("170_1308672481.963") :outer("10_1308672481.963")
.annotate 'line', 1138
    .lex "$?PACKAGE", $P2070
    .lex "$?CLASS", $P2071
.annotate 'line', 1139
    find_lex $P100, "NQPModuleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_880
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_880:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1140
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_881
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_881:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1141
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_882
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_882:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1142
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_883
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_883:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1143
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_884
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_884:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1144
    find_lex $P100, "NQPParametricRoleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_885
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_885:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1145
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_886
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_886:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1146
    find_lex $P100, "NQPNativeHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_887
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_887:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1138
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2073" :load :anon :subid("171_1308672481.963")
.annotate 'line', 1
    .const 'Sub' $P2075 = "10_1308672481.963" 
    $P106 = $P2075()
    .return ($P106)
.end

