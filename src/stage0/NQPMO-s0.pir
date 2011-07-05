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
.sub "_block1000"  :anon :subid("10_1309859060.384")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2070 = "171_1309859060.384" 
    capture_lex $P2070
    .const 'Sub' $P2033 = "162_1309859060.384" 
    capture_lex $P2033
    .const 'Sub' $P1967 = "148_1309859060.384" 
    capture_lex $P1967
    .const 'Sub' $P1929 = "139_1309859060.384" 
    capture_lex $P1929
    .const 'Sub' $P1459 = "77_1309859060.384" 
    capture_lex $P1459
    .const 'Sub' $P1318 = "52_1309859060.384" 
    capture_lex $P1318
    .const 'Sub' $P1240 = "42_1309859060.384" 
    capture_lex $P1240
    .const 'Sub' $P1115 = "21_1309859060.384" 
    capture_lex $P1115
    .const 'Sub' $P1015 = "11_1309859060.384" 
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
    .const 'Sub' $P1015 = "11_1309859060.384" 
    capture_lex $P1015
    $P1015()
.annotate 'line', 97
    .const 'Sub' $P1115 = "21_1309859060.384" 
    capture_lex $P1115
    $P1115()
.annotate 'line', 242
    .const 'Sub' $P1240 = "42_1309859060.384" 
    capture_lex $P1240
    $P1240()
.annotate 'line', 318
    .const 'Sub' $P1318 = "52_1309859060.384" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 498
    .const 'Sub' $P1459 = "77_1309859060.384" 
    capture_lex $P1459
    $P1459()
.annotate 'line', 977
    .const 'Sub' $P1929 = "139_1309859060.384" 
    capture_lex $P1929
    $P1929()
.annotate 'line', 1023
    .const 'Sub' $P1967 = "148_1309859060.384" 
    capture_lex $P1967
    $P1967()
.annotate 'line', 1094
    .const 'Sub' $P2033 = "162_1309859060.384" 
    capture_lex $P2033
    $P2033()
.annotate 'line', 1143
    .const 'Sub' $P2070 = "171_1309859060.384" 
    capture_lex $P2070
    $P2070()
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_2073
    set $P100, $P101
    goto if_2073_end
  if_2073:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2073_end:
    .return ($P100)
    .const 'Sub' $P2075 = "172_1309859060.384" 
    .return ($P2075)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post173") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1309859060.384" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1309859056.502"
    isnull $I100, $P107
    if $I100, if_2077
    goto if_2077_end
  if_2077:
    nqp_dynop_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1309859056.502"
    .local pmc cur_sc
    set cur_sc, $P111
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 0, $P113
    .const 'Sub' $P2078 = "10_1309859060.384" 
    $P112 = $P2078."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P2079 = "10_1309859060.384" 
    $P114 = $P2079."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2080 = "10_1309859060.384" 
    $P112 = $P2080."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2081 = "10_1309859060.384" 
    $P114 = $P2081."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 1, $P113
    nqp_get_sc_object $P112, "1309859056.502", 1
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'Sub' $P2082 = "10_1309859060.384" 
    $P112 = $P2082."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 1
    $P112."set_static_lexpad_value"("RoleToRoleApplier", $P113)
    .const 'Sub' $P2083 = "10_1309859060.384" 
    $P114 = $P2083."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 1
    .const 'Sub' $P2084 = "12_1309859060.384" 
    $P113."add_method"($P114, "apply", $P2084)
    .const 'Sub' $P2085 = "11_1309859060.384" 
    $P112 = $P2085."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2086 = "11_1309859060.384" 
    $P114 = $P2086."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2087 = "11_1309859060.384" 
    $P112 = $P2087."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2088 = "11_1309859060.384" 
    $P114 = $P2088."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 3, $P113
    nqp_get_sc_object $P112, "1309859056.502", 3
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'Sub' $P2089 = "10_1309859060.384" 
    $P112 = $P2089."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 3
    $P112."set_static_lexpad_value"("NQPConcreteRoleHOW", $P113)
    .const 'Sub' $P2090 = "10_1309859060.384" 
    $P114 = $P2090."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2091 = "22_1309859060.384" 
    $P113."add_method"($P114, "new", $P2091)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2092 = "23_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2092)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2093 = "24_1309859060.384" 
    $P113."add_method"($P114, "new_type", $P2093)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2094 = "25_1309859060.384" 
    $P113."add_method"($P114, "add_method", $P2094)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2095 = "26_1309859060.384" 
    $P113."add_method"($P114, "add_multi_method", $P2095)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2096 = "27_1309859060.384" 
    $P113."add_method"($P114, "add_attribute", $P2096)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2097 = "28_1309859060.384" 
    $P113."add_method"($P114, "add_parent", $P2097)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2098 = "29_1309859060.384" 
    $P113."add_method"($P114, "add_role", $P2098)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2099 = "30_1309859060.384" 
    $P113."add_method"($P114, "add_collision", $P2099)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2100 = "31_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2100)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2101 = "33_1309859060.384" 
    $P113."add_method"($P114, "methods", $P2101)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2102 = "35_1309859060.384" 
    $P113."add_method"($P114, "method_table", $P2102)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2103 = "36_1309859060.384" 
    $P113."add_method"($P114, "collisions", $P2103)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2104 = "37_1309859060.384" 
    $P113."add_method"($P114, "name", $P2104)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2105 = "38_1309859060.384" 
    $P113."add_method"($P114, "attributes", $P2105)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2106 = "40_1309859060.384" 
    $P113."add_method"($P114, "roles", $P2106)
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    .const 'Sub' $P2107 = "41_1309859060.384" 
    $P113."add_method"($P114, "instance_of", $P2107)
    .const 'Sub' $P2108 = "21_1309859060.384" 
    $P112 = $P2108."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 3
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2109 = "21_1309859060.384" 
    $P114 = $P2109."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2110 = "21_1309859060.384" 
    $P112 = $P2110."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 3
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2111 = "21_1309859060.384" 
    $P114 = $P2111."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 3
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 3
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 21, $P113
    nqp_get_sc_object $P112, "1309859056.502", 21
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'Sub' $P2112 = "10_1309859060.384" 
    $P112 = $P2112."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 21
    $P112."set_static_lexpad_value"("RoleToClassApplier", $P113)
    .const 'Sub' $P2113 = "10_1309859060.384" 
    $P114 = $P2113."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 21
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 21
    .const 'Sub' $P2114 = "47_1309859060.384" 
    $P113."add_method"($P114, "apply", $P2114)
    .const 'Sub' $P2115 = "42_1309859060.384" 
    $P112 = $P2115."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 21
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2116 = "42_1309859060.384" 
    $P114 = $P2116."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2117 = "42_1309859060.384" 
    $P112 = $P2117."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 21
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2118 = "42_1309859060.384" 
    $P114 = $P2118."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 21
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 21
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 23, $P113
    nqp_get_sc_object $P112, "1309859056.502", 23
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'Sub' $P2119 = "10_1309859060.384" 
    $P112 = $P2119."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 23
    $P112."set_static_lexpad_value"("NQPParametricRoleHOW", $P113)
    .const 'Sub' $P2120 = "10_1309859060.384" 
    $P114 = $P2120."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2121 = "54_1309859060.384" 
    $P113."add_method"($P114, "new", $P2121)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2122 = "55_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2122)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2123 = "56_1309859060.384" 
    $P113."add_method"($P114, "new_type", $P2123)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2124 = "57_1309859060.384" 
    $P113."add_method"($P114, "set_body_block", $P2124)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2125 = "58_1309859060.384" 
    $P113."add_method"($P114, "add_method", $P2125)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2126 = "59_1309859060.384" 
    $P113."add_method"($P114, "add_multi_method", $P2126)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2127 = "60_1309859060.384" 
    $P113."add_method"($P114, "add_attribute", $P2127)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2128 = "61_1309859060.384" 
    $P113."add_method"($P114, "add_parent", $P2128)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2129 = "62_1309859060.384" 
    $P113."add_method"($P114, "add_role", $P2129)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2130 = "63_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2130)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2131 = "64_1309859060.384" 
    $P113."add_method"($P114, "parametric", $P2131)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2132 = "65_1309859060.384" 
    $P113."add_method"($P114, "instantiate", $P2132)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2133 = "70_1309859060.384" 
    $P113."add_method"($P114, "methods", $P2133)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2134 = "72_1309859060.384" 
    $P113."add_method"($P114, "method_table", $P2134)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2135 = "73_1309859060.384" 
    $P113."add_method"($P114, "name", $P2135)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2136 = "74_1309859060.384" 
    $P113."add_method"($P114, "attributes", $P2136)
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    .const 'Sub' $P2137 = "76_1309859060.384" 
    $P113."add_method"($P114, "roles", $P2137)
    .const 'Sub' $P2138 = "52_1309859060.384" 
    $P112 = $P2138."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 23
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2139 = "52_1309859060.384" 
    $P114 = $P2139."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2140 = "52_1309859060.384" 
    $P112 = $P2140."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 23
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2141 = "52_1309859060.384" 
    $P114 = $P2141."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 23
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 23
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 41, $P113
    nqp_get_sc_object $P112, "1309859056.502", 41
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'Sub' $P2142 = "10_1309859060.384" 
    $P112 = $P2142."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 41
    $P112."set_static_lexpad_value"("NQPClassHOW", $P113)
    .const 'Sub' $P2143 = "10_1309859060.384" 
    $P114 = $P2143."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2144 = "88_1309859060.384" 
    $P113."add_method"($P114, "new", $P2144)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2145 = "89_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2145)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2146 = "90_1309859060.384" 
    $P113."add_method"($P114, "new_type", $P2146)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2147 = "91_1309859060.384" 
    $P113."add_method"($P114, "add_method", $P2147)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2148 = "92_1309859060.384" 
    $P113."add_method"($P114, "add_multi_method", $P2148)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2149 = "93_1309859060.384" 
    $P113."add_method"($P114, "add_attribute", $P2149)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2150 = "94_1309859060.384" 
    $P113."add_method"($P114, "add_parent", $P2150)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2151 = "96_1309859060.384" 
    $P113."add_method"($P114, "set_default_parent", $P2151)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2152 = "97_1309859060.384" 
    $P113."add_method"($P114, "add_role", $P2152)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2153 = "99_1309859060.384" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2153)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2154 = "100_1309859060.384" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2154)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2155 = "101_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2155)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2156 = "105_1309859060.384" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2156)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2157 = "110_1309859060.384" 
    $P113."add_method"($P114, "publish_type_cache", $P2157)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2158 = "113_1309859060.384" 
    $P113."add_method"($P114, "publish_method_cache", $P2158)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2159 = "116_1309859060.384" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2159)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2160 = "119_1309859060.384" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2160)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2161 = "122_1309859060.384" 
    $P113."add_method"($P114, "parents", $P2161)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2162 = "123_1309859060.384" 
    $P113."add_method"($P114, "mro", $P2162)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2163 = "124_1309859060.384" 
    $P113."add_method"($P114, "roles", $P2163)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2164 = "125_1309859060.384" 
    $P113."add_method"($P114, "methods", $P2164)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2165 = "127_1309859060.384" 
    $P113."add_method"($P114, "method_table", $P2165)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2166 = "128_1309859060.384" 
    $P113."add_method"($P114, "name", $P2166)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2167 = "129_1309859060.384" 
    $P113."add_method"($P114, "attributes", $P2167)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2168 = "131_1309859060.384" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2168)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2169 = "132_1309859060.384" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2169)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2170 = "133_1309859060.384" 
    $P113."add_method"($P114, "isa", $P2170)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2171 = "134_1309859060.384" 
    $P113."add_method"($P114, "does", $P2171)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2172 = "135_1309859060.384" 
    $P113."add_method"($P114, "can", $P2172)
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    .const 'Sub' $P2173 = "137_1309859060.384" 
    $P113."add_method"($P114, "find_method", $P2173)
    .const 'Sub' $P2174 = "77_1309859060.384" 
    $P112 = $P2174."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 41
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2175 = "77_1309859060.384" 
    $P114 = $P2175."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2176 = "77_1309859060.384" 
    $P112 = $P2176."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 41
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2177 = "77_1309859060.384" 
    $P114 = $P2177."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 41
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 41
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 72, $P113
    nqp_get_sc_object $P112, "1309859056.502", 72
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'Sub' $P2178 = "10_1309859060.384" 
    $P112 = $P2178."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 72
    $P112."set_static_lexpad_value"("NQPNativeHOW", $P113)
    .const 'Sub' $P2179 = "10_1309859060.384" 
    $P114 = $P2179."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2180 = "140_1309859060.384" 
    $P113."add_method"($P114, "new", $P2180)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2181 = "141_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2181)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2182 = "142_1309859060.384" 
    $P113."add_method"($P114, "new_type", $P2182)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2183 = "143_1309859060.384" 
    $P113."add_method"($P114, "add_method", $P2183)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2184 = "144_1309859060.384" 
    $P113."add_method"($P114, "add_multi_method", $P2184)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2185 = "145_1309859060.384" 
    $P113."add_method"($P114, "add_attribute", $P2185)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2186 = "146_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2186)
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    .const 'Sub' $P2187 = "147_1309859060.384" 
    $P113."add_method"($P114, "name", $P2187)
    .const 'Sub' $P2188 = "139_1309859060.384" 
    $P112 = $P2188."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 72
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2189 = "139_1309859060.384" 
    $P114 = $P2189."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2190 = "139_1309859060.384" 
    $P112 = $P2190."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 72
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2191 = "139_1309859060.384" 
    $P114 = $P2191."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 72
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 72
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 81, $P113
    nqp_get_sc_object $P112, "1309859056.502", 81
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'Sub' $P2192 = "10_1309859060.384" 
    $P112 = $P2192."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 81
    $P112."set_static_lexpad_value"("NQPAttribute", $P113)
    .const 'Sub' $P2193 = "10_1309859060.384" 
    $P114 = $P2193."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2194 = "151_1309859060.384" 
    $P113."add_method"($P114, "new", $P2194)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2195 = "152_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2195)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2196 = "153_1309859060.384" 
    $P113."add_method"($P114, "name", $P2196)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2197 = "154_1309859060.384" 
    $P113."add_method"($P114, "type", $P2197)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2198 = "155_1309859060.384" 
    $P113."add_method"($P114, "box_target", $P2198)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2199 = "156_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2199)
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    .const 'Sub' $P2200 = "161_1309859060.384" 
    $P113."add_method"($P114, "has_mutator", $P2200)
    .const 'Sub' $P2201 = "148_1309859060.384" 
    $P112 = $P2201."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 81
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2202 = "148_1309859060.384" 
    $P114 = $P2202."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2203 = "148_1309859060.384" 
    $P112 = $P2203."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 81
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2204 = "148_1309859060.384" 
    $P114 = $P2204."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 81
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 81
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 89, $P113
    nqp_get_sc_object $P112, "1309859056.502", 89
    nqp_get_sc_object $P113, "1309859056.502", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'Sub' $P2205 = "10_1309859060.384" 
    $P112 = $P2205."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 89
    $P112."set_static_lexpad_value"("NQPModuleHOW", $P113)
    .const 'Sub' $P2206 = "10_1309859060.384" 
    $P114 = $P2206."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2207 = "163_1309859060.384" 
    $P113."add_method"($P114, "new", $P2207)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2208 = "164_1309859060.384" 
    $P113."add_method"($P114, "BUILD", $P2208)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2209 = "165_1309859060.384" 
    $P113."add_method"($P114, "new_type", $P2209)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2210 = "166_1309859060.384" 
    $P113."add_method"($P114, "add_method", $P2210)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2211 = "167_1309859060.384" 
    $P113."add_method"($P114, "add_multi_method", $P2211)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2212 = "168_1309859060.384" 
    $P113."add_method"($P114, "add_attribute", $P2212)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2213 = "169_1309859060.384" 
    $P113."add_method"($P114, "compose", $P2213)
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    .const 'Sub' $P2214 = "170_1309859060.384" 
    $P113."add_method"($P114, "name", $P2214)
    .const 'Sub' $P2215 = "162_1309859060.384" 
    $P112 = $P2215."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 89
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2216 = "162_1309859060.384" 
    $P114 = $P2216."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2217 = "162_1309859060.384" 
    $P112 = $P2217."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 89
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2218 = "162_1309859060.384" 
    $P114 = $P2218."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 89
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 89
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P113, cur_sc
    nqp_set_sc_object "1309859056.502", 98, $P113
    .const 'Sub' $P2219 = "10_1309859060.384" 
    $P112 = $P2219."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 98
    $P112."set_static_lexpad_value"("EXPORTHOW", $P113)
    .const 'Sub' $P2220 = "10_1309859060.384" 
    $P114 = $P2220."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2221 = "171_1309859060.384" 
    $P112 = $P2221."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 98
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2222 = "171_1309859060.384" 
    $P114 = $P2222."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2223 = "171_1309859060.384" 
    $P112 = $P2223."get_lexinfo"()
    nqp_get_sc_object $P113, "1309859056.502", 98
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2224 = "171_1309859060.384" 
    $P114 = $P2224."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1309859056.502", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1309859056.502", 98
    $P113."compose"($P114)
  if_2077_end:
    nqp_get_sc_object $P112, "1309859056.502", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1014"  :subid("11_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 5
    .const 'Sub' $P1018 = "12_1309859060.384" 
    capture_lex $P1018
    .lex "$?PACKAGE", $P1016
    .lex "$?CLASS", $P1017
.annotate 'line', 6
    .const 'Sub' $P1018 = "12_1309859060.384" 
    newclosure $P1113, $P1018
.annotate 'line', 5
    .return ($P1113)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("12_1309859060.384") :outer("11_1309859060.384")
    .param pmc param_1021
    .param pmc param_1022
    .param pmc param_1023
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 6
    .const 'Sub' $P1088 = "18_1309859060.384" 
    capture_lex $P1088
    .const 'Sub' $P1073 = "17_1309859060.384" 
    capture_lex $P1073
    .const 'Sub' $P1067 = "16_1309859060.384" 
    capture_lex $P1067
    .const 'Sub' $P1035 = "13_1309859060.384" 
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
    .const 'Sub' $P1035 = "13_1309859060.384" 
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
    .const 'Sub' $P1067 = "16_1309859060.384" 
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
    .const 'Sub' $P1073 = "17_1309859060.384" 
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
    .const 'Sub' $P1088 = "18_1309859060.384" 
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
.sub "_block1034"  :anon :subid("13_1309859060.384") :outer("12_1309859060.384")
    .param pmc param_1038
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1041 = "14_1309859060.384" 
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
    .const 'Sub' $P1041 = "14_1309859060.384" 
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
.sub "_block1040"  :anon :subid("14_1309859060.384") :outer("13_1309859060.384")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 11
    .const 'Sub' $P1056 = "15_1309859060.384" 
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
    new $P107, "Integer"
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
    .const 'Sub' $P1056 = "15_1309859060.384" 
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
.sub "_block1055"  :anon :subid("15_1309859060.384") :outer("14_1309859060.384")
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
.sub "_block1066"  :anon :subid("16_1309859060.384") :outer("12_1309859060.384")
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
.sub "_block1072"  :anon :subid("17_1309859060.384") :outer("12_1309859060.384")
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
    iseq $I102, $N100, 1.0
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
    find_lex $P1083, "@add_meths"
    unless_null $P1083, vivify_224
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
    set $P111, $P1083[0]
    unless_null $P111, vivify_225
    new $P111, "Undef"
  vivify_225:
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
.sub "_block1087"  :anon :subid("18_1309859060.384") :outer("12_1309859060.384")
    .param pmc param_1092
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .const 'Sub' $P1095 = "19_1309859060.384" 
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
    .const 'Sub' $P1095 = "19_1309859060.384" 
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
.sub "_block1094"  :anon :subid("19_1309859060.384") :outer("18_1309859060.384")
    .param pmc param_1100
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .const 'Sub' $P1103 = "20_1309859060.384" 
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
    new $P107, "Integer"
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
    .const 'Sub' $P1103 = "20_1309859060.384" 
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
.sub "_block1102"  :anon :subid("20_1309859060.384") :outer("19_1309859060.384")
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
.sub "_block1114"  :subid("21_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 97
    .const 'Sub' $P1235 = "41_1309859060.384" 
    capture_lex $P1235
    .const 'Sub' $P1231 = "40_1309859060.384" 
    capture_lex $P1231
    .const 'Sub' $P1217 = "38_1309859060.384" 
    capture_lex $P1217
    .const 'Sub' $P1214 = "37_1309859060.384" 
    capture_lex $P1214
    .const 'Sub' $P1210 = "36_1309859060.384" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "35_1309859060.384" 
    capture_lex $P1206
    .const 'Sub' $P1192 = "33_1309859060.384" 
    capture_lex $P1192
    .const 'Sub' $P1177 = "31_1309859060.384" 
    capture_lex $P1177
    .const 'Sub' $P1171 = "30_1309859060.384" 
    capture_lex $P1171
    .const 'Sub' $P1165 = "29_1309859060.384" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "28_1309859060.384" 
    capture_lex $P1161
    .const 'Sub' $P1153 = "27_1309859060.384" 
    capture_lex $P1153
    .const 'Sub' $P1140 = "26_1309859060.384" 
    capture_lex $P1140
    .const 'Sub' $P1132 = "25_1309859060.384" 
    capture_lex $P1132
    .const 'Sub' $P1127 = "24_1309859060.384" 
    capture_lex $P1127
    .const 'Sub' $P1123 = "23_1309859060.384" 
    capture_lex $P1123
    .const 'Sub' $P1118 = "22_1309859060.384" 
    capture_lex $P1118
    .lex "$?PACKAGE", $P1116
    .lex "$?CLASS", $P1117
.annotate 'line', 236
    .const 'Sub' $P1235 = "41_1309859060.384" 
    newclosure $P1238, $P1235
.annotate 'line', 97
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1309859060.384") :outer("21_1309859060.384")
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
.sub "BUILD" :anon :subid("23_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!name", $P100
.annotate 'line', 137
    find_lex $P100, "$instance_of"
    unless_null $P100, vivify_256
    new $P100, "Undef"
  vivify_256:
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!instance_of", $P100
.annotate 'line', 135
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1309859060.384") :outer("21_1309859060.384")
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
.sub "add_method" :anon :subid("25_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P102, "$?CLASS"
    getattribute $P1138, $P101, $P102, "%!methods"
    unless_null $P1138, vivify_262
    $P1138 = root_new ['parrot';'Hash']
  vivify_262:
    set $P103, $P1138[$P100]
    unless_null $P103, vivify_263
    new $P103, "Undef"
  vivify_263:
    unless $P103, if_1137_end
.annotate 'line', 149
    new $P104, "String"
    assign $P104, "This role already has a method named "
    find_lex $P105, "$name"
    unless_null $P105, vivify_264
    new $P105, "Undef"
  vivify_264:
    concat $P106, $P104, $P105
    die $P106
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
    find_lex $P103, "$?CLASS"
    getattribute $P1139, $P102, $P103, "%!methods"
    unless_null $P1139, vivify_267
    $P1139 = root_new ['parrot';'Hash']
    setattribute $P102, $P103, "%!methods", $P1139
  vivify_267:
    set $P1139[$P101], $P100
.annotate 'line', 147
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P101, "$?CLASS"
    getattribute $P1151, $P100, $P101, "@!multi_methods_to_incorporate"
    unless_null $P1151, vivify_274
    $P1151 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    set $N100, $P1151
    set $I100, $N100
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1152, $P102, $P103, "@!multi_methods_to_incorporate"
    unless_null $P1152, vivify_275
    $P1152 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P102, $P103, "@!multi_methods_to_incorporate", $P1152
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
.sub "add_attribute" :anon :subid("27_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P103, "$?CLASS"
    getattribute $P1159, $P102, $P103, "%!attributes"
    unless_null $P1159, vivify_279
    $P1159 = root_new ['parrot';'Hash']
  vivify_279:
    set $P104, $P1159[$P101]
    unless_null $P104, vivify_280
    new $P104, "Undef"
  vivify_280:
    unless $P104, if_1158_end
.annotate 'line', 165
    new $P105, "String"
    assign $P105, "This role already has an attribute named "
    find_lex $P106, "$name"
    unless_null $P106, vivify_281
    new $P106, "Undef"
  vivify_281:
    concat $P107, $P105, $P106
    die $P107
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
    find_lex $P104, "$?CLASS"
    getattribute $P1160, $P103, $P104, "%!attributes"
    unless_null $P1160, vivify_284
    $P1160 = root_new ['parrot';'Hash']
    setattribute $P103, $P104, "%!attributes", $P1160
  vivify_284:
    set $P1160[$P102], $P101
.annotate 'line', 162
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1309859060.384") :outer("21_1309859060.384")
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
.sub "add_role" :anon :subid("29_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P102, "$?CLASS"
    getattribute $P1169, $P101, $P102, "@!roles"
    unless_null $P1169, vivify_286
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $N100, $P1169
    set $I100, $N100
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1170, $P103, $P104, "@!roles"
    unless_null $P1170, vivify_287
    $P1170 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P103, $P104, "@!roles", $P1170
  vivify_287:
    set $P1170[$I100], $P100
.annotate 'line', 174
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1309859060.384") :outer("21_1309859060.384")
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
    find_lex $P102, "$?CLASS"
    getattribute $P1175, $P101, $P102, "@!collisions"
    unless_null $P1175, vivify_289
    $P1175 = root_new ['parrot';'ResizablePMCArray']
  vivify_289:
    set $N100, $P1175
    set $I100, $N100
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1176, $P103, $P104, "@!collisions"
    unless_null $P1176, vivify_290
    $P1176 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P103, $P104, "@!collisions", $P1176
  vivify_290:
    set $P1176[$I100], $P100
.annotate 'line', 178
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1178
    .param pmc param_1179
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 183
    .const 'Sub' $P1184 = "32_1309859060.384" 
    capture_lex $P1184
    .lex "self", param_1178
    .lex "$obj", param_1179
.annotate 'line', 186
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1181, $P100, $P101, "@!roles"
    unless_null $P1181, vivify_291
    $P1181 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    unless $P1181, if_1180_end
.annotate 'line', 187
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1182, $P103, $P104, "@!roles"
    unless_null $P1182, vivify_292
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    defined $I100, $P1182
    unless $I100, for_undef_293
    iter $P102, $P1182
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1190_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1190_test:
    unless $P102, loop1190_done
    shift $P105, $P102
  loop1190_redo:
    .const 'Sub' $P1184 = "32_1309859060.384" 
    capture_lex $P1184
    $P1184($P105)
  loop1190_next:
    goto loop1190_test
  loop1190_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1190_next
    eq $P107, .CONTROL_LOOP_REDO, loop1190_redo
  loop1190_done:
    pop_eh 
  for_undef_293:
.annotate 'line', 191
    find_lex $P102, "RoleToRoleApplier"
    find_lex $P103, "$obj"
    unless_null $P103, vivify_301
    new $P103, "Undef"
  vivify_301:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1191, $P104, $P105, "@!roles"
    unless_null $P1191, vivify_302
    $P1191 = root_new ['parrot';'ResizablePMCArray']
  vivify_302:
    $P102."apply"($P103, $P1191)
  if_1180_end:
.annotate 'line', 195
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 183
    find_lex $P100, "$obj"
    unless_null $P100, vivify_303
    new $P100, "Undef"
  vivify_303:
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1183"  :anon :subid("32_1309859060.384") :outer("31_1309859060.384")
    .param pmc param_1185
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 187
    .lex "$_", param_1185
.annotate 'line', 188
    find_lex $P106, "$_"
    unless_null $P106, vivify_294
    new $P106, "Undef"
  vivify_294:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1186, $P107, $P108, "@!done"
    unless_null $P1186, vivify_295
    $P1186 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N100, $P1186
    set $I101, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1187, $P109, $P110, "@!done"
    unless_null $P1187, vivify_296
    $P1187 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!done", $P1187
  vivify_296:
    set $P1187[$I101], $P106
.annotate 'line', 189
    find_lex $P106, "$_"
    unless_null $P106, vivify_297
    new $P106, "Undef"
  vivify_297:
    get_how $P107, $P106
    find_lex $P108, "$_"
    unless_null $P108, vivify_298
    new $P108, "Undef"
  vivify_298:
    $P109 = $P107."instance_of"($P108)
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1188, $P110, $P111, "@!done"
    unless_null $P1188, vivify_299
    $P1188 = root_new ['parrot';'ResizablePMCArray']
  vivify_299:
    set $N100, $P1188
    set $I101, $N100
    find_lex $P112, "self"
    find_lex $P113, "$?CLASS"
    getattribute $P1189, $P112, $P113, "@!done"
    unless_null $P1189, vivify_300
    $P1189 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P112, $P113, "@!done", $P1189
  vivify_300:
    set $P1189[$I101], $P109
.annotate 'line', 187
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("33_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1193
    .param pmc param_1194
    .param pmc param_1195 :optional :named("local")
    .param int has_param_1195 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 204
    .const 'Sub' $P1201 = "34_1309859060.384" 
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
    find_lex $P103, "$?CLASS"
    getattribute $P1199, $P102, $P103, "%!methods"
    unless_null $P1199, vivify_306
    $P1199 = root_new ['parrot';'Hash']
  vivify_306:
    defined $I100, $P1199
    unless $I100, for_undef_307
    iter $P101, $P1199
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1204_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1204_test:
    unless $P101, loop1204_done
    shift $P104, $P101
  loop1204_redo:
    .const 'Sub' $P1201 = "34_1309859060.384" 
    capture_lex $P1201
    $P1201($P104)
  loop1204_next:
    goto loop1204_test
  loop1204_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1204_next
    eq $P106, .CONTROL_LOOP_REDO, loop1204_redo
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
.sub "_block1200"  :anon :subid("34_1309859060.384") :outer("33_1309859060.384")
    .param pmc param_1202
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .lex "$_", param_1202
.annotate 'line', 207
    find_lex $P1203, "@meths"
    unless_null $P1203, vivify_308
    $P1203 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    find_lex $P105, "$_"
    unless_null $P105, vivify_309
    new $P105, "Undef"
  vivify_309:
    $P106 = $P105."value"()
    $P107 = $P1203."push"($P106)
.annotate 'line', 206
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("35_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1207
    .param pmc param_1208
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 212
    .lex "self", param_1207
    .lex "$obj", param_1208
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1209, $P100, $P101, "%!methods"
    unless_null $P1209, vivify_311
    $P1209 = root_new ['parrot';'Hash']
  vivify_311:
    .return ($P1209)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("36_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 216
    .lex "self", param_1211
    .lex "$obj", param_1212
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1213, $P100, $P101, "@!collisions"
    unless_null $P1213, vivify_312
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_312:
    .return ($P1213)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("37_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1215
    .param pmc param_1216
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 220
    .lex "self", param_1215
    .lex "$obj", param_1216
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_313
    new $P102, "Undef"
  vivify_313:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("38_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1218
    .param pmc param_1219
    .param pmc param_1220 :optional :named("local")
    .param int has_param_1220 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 224
    .const 'Sub' $P1226 = "39_1309859060.384" 
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
    find_lex $P103, "$?CLASS"
    getattribute $P1224, $P102, $P103, "%!attributes"
    unless_null $P1224, vivify_316
    $P1224 = root_new ['parrot';'Hash']
  vivify_316:
    defined $I100, $P1224
    unless $I100, for_undef_317
    iter $P101, $P1224
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1229_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1229_test:
    unless $P101, loop1229_done
    shift $P104, $P101
  loop1229_redo:
    .const 'Sub' $P1226 = "39_1309859060.384" 
    capture_lex $P1226
    $P1226($P104)
  loop1229_next:
    goto loop1229_test
  loop1229_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1229_next
    eq $P106, .CONTROL_LOOP_REDO, loop1229_redo
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
.sub "_block1225"  :anon :subid("39_1309859060.384") :outer("38_1309859060.384")
    .param pmc param_1227
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 226
    .lex "$_", param_1227
.annotate 'line', 227
    find_lex $P1228, "@attrs"
    unless_null $P1228, vivify_318
    $P1228 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    find_lex $P105, "$_"
    unless_null $P105, vivify_319
    new $P105, "Undef"
  vivify_319:
    $P106 = $P105."value"()
    $P107 = $P1228."push"($P106)
.annotate 'line', 226
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("40_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1232
    .param pmc param_1233
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 232
    .lex "self", param_1232
    .lex "$obj", param_1233
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P1234, $P100, $P101, "@!roles"
    unless_null $P1234, vivify_321
    $P1234 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("41_1309859060.384") :outer("21_1309859060.384")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 236
    .lex "self", param_1236
    .lex "$obj", param_1237
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!instance_of"
    unless_null $P102, vivify_322
    new $P102, "Undef"
  vivify_322:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1239"  :subid("42_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 242
    .const 'Sub' $P1274 = "47_1309859060.384" 
    capture_lex $P1274
    .const 'Sub' $P1258 = "45_1309859060.384" 
    capture_lex $P1258
    .const 'Sub' $P1242 = "43_1309859060.384" 
    capture_lex $P1242
.annotate 'line', 244
    .const 'Sub' $P1242 = "43_1309859060.384" 
    newclosure $P1256, $P1242
    set $P1241, $P1256
    .lex "has_method", $P1241
.annotate 'line', 252
    .const 'Sub' $P1258 = "45_1309859060.384" 
    newclosure $P1271, $P1258
    set $P1257, $P1271
    .lex "has_attribute", $P1257
.annotate 'line', 242
    .lex "$?PACKAGE", $P1272
    .lex "$?CLASS", $P1273
    find_lex $P102, "has_method"
    find_lex $P102, "has_attribute"
.annotate 'line', 260
    .const 'Sub' $P1274 = "47_1309859060.384" 
    newclosure $P1316, $P1274
.annotate 'line', 242
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1309859060.384") :outer("42_1309859060.384")
    .param pmc param_1245
    .param pmc param_1246
    .param pmc param_1247
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 244
    .const 'Sub' $P1252 = "44_1309859060.384" 
    capture_lex $P1252
    new $P1244, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1244, control_1243
    push_eh $P1244
    .lex "$target", param_1245
    .lex "$name", param_1246
    .lex "$local", param_1247
.annotate 'line', 245
    $P1249 = root_new ['parrot';'ResizablePMCArray']
    set $P1248, $P1249
    .lex "@methods", $P1248
    find_lex $P100, "$target"
    unless_null $P100, vivify_323
    new $P100, "Undef"
  vivify_323:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_324
    new $P102, "Undef"
  vivify_324:
    find_lex $P103, "$local"
    unless_null $P103, vivify_325
    new $P103, "Undef"
  vivify_325:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 246
    find_lex $P1250, "@methods"
    unless_null $P1250, vivify_326
    $P1250 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    defined $I100, $P1250
    unless $I100, for_undef_327
    iter $P100, $P1250
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1255_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1255_test:
    unless $P100, loop1255_done
    shift $P101, $P100
  loop1255_redo:
    .const 'Sub' $P1252 = "44_1309859060.384" 
    capture_lex $P1252
    $P1252($P101)
  loop1255_next:
    goto loop1255_test
  loop1255_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1255_next
    eq $P104, .CONTROL_LOOP_REDO, loop1255_redo
  loop1255_done:
    pop_eh 
  for_undef_327:
.annotate 'line', 249
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Integer"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 244
    .return ()
  control_1243:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1251"  :anon :subid("44_1309859060.384") :outer("43_1309859060.384")
    .param pmc param_1253
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 246
    .lex "$_", param_1253
.annotate 'line', 247
    find_lex $P103, "$_"
    unless_null $P103, vivify_328
    new $P103, "Undef"
  vivify_328:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_329
    new $P104, "Undef"
  vivify_329:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_1254
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1254_end
  if_1254:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Integer"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1254_end:
.annotate 'line', 246
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1309859060.384") :outer("42_1309859060.384")
    .param pmc param_1261
    .param pmc param_1262
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 252
    .const 'Sub' $P1267 = "46_1309859060.384" 
    capture_lex $P1267
    new $P1260, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1260, control_1259
    push_eh $P1260
    .lex "$target", param_1261
    .lex "$name", param_1262
.annotate 'line', 253
    $P1264 = root_new ['parrot';'ResizablePMCArray']
    set $P1263, $P1264
    .lex "@attributes", $P1263
    find_lex $P101, "$target"
    unless_null $P101, vivify_330
    new $P101, "Undef"
  vivify_330:
    get_how $P102, $P101
    find_lex $P103, "$target"
    unless_null $P103, vivify_331
    new $P103, "Undef"
  vivify_331:
    $P104 = $P102."attributes"($P103, 1 :named("local"))
    store_lex "@attributes", $P104
.annotate 'line', 254
    find_lex $P1265, "@attributes"
    unless_null $P1265, vivify_332
    $P1265 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    defined $I100, $P1265
    unless $I100, for_undef_333
    iter $P101, $P1265
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1270_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1270_test:
    unless $P101, loop1270_done
    shift $P102, $P101
  loop1270_redo:
    .const 'Sub' $P1267 = "46_1309859060.384" 
    capture_lex $P1267
    $P1267($P102)
  loop1270_next:
    goto loop1270_test
  loop1270_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1270_next
    eq $P105, .CONTROL_LOOP_REDO, loop1270_redo
  loop1270_done:
    pop_eh 
  for_undef_333:
.annotate 'line', 257
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    new $P102, "Integer"
    assign $P102, 0
    setattribute $P101, 'payload', $P102
    throw $P101
.annotate 'line', 252
    .return ()
  control_1259:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block1266"  :anon :subid("46_1309859060.384") :outer("45_1309859060.384")
    .param pmc param_1268
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 254
    .lex "$_", param_1268
.annotate 'line', 255
    find_lex $P104, "$_"
    unless_null $P104, vivify_334
    new $P104, "Undef"
  vivify_334:
    $S100 = $P104."name"()
    find_lex $P105, "$name"
    unless_null $P105, vivify_335
    new $P105, "Undef"
  vivify_335:
    set $S101, $P105
    iseq $I101, $S100, $S101
    if $I101, if_1269
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1269_end
  if_1269:
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Integer"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
  if_1269_end:
.annotate 'line', 254
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("47_1309859060.384") :outer("42_1309859060.384")
    .param pmc param_1275
    .param pmc param_1276
    .param pmc param_1277
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 260
    .const 'Sub' $P1310 = "51_1309859060.384" 
    capture_lex $P1310
    .const 'Sub' $P1304 = "50_1309859060.384" 
    capture_lex $P1304
    .const 'Sub' $P1298 = "49_1309859060.384" 
    capture_lex $P1298
    .const 'Sub' $P1293 = "48_1309859060.384" 
    capture_lex $P1293
    .lex "self", param_1275
    .lex "$target", param_1276
    .lex "@roles", param_1277
.annotate 'line', 263
    new $P102, "Undef"
    set $P1278, $P102
    .lex "$to_compose", $P1278
.annotate 'line', 264
    new $P103, "Undef"
    set $P1279, $P103
    .lex "$to_compose_meta", $P1279
.annotate 'line', 279
    $P1281 = root_new ['parrot';'ResizablePMCArray']
    set $P1280, $P1281
    .lex "@collisions", $P1280
.annotate 'line', 288
    $P1283 = root_new ['parrot';'ResizablePMCArray']
    set $P1282, $P1283
    .lex "@methods", $P1282
.annotate 'line', 296
    $P1285 = root_new ['parrot';'ResizablePMCArray']
    set $P1284, $P1285
    .lex "@attributes", $P1284
.annotate 'line', 308
    $P1287 = root_new ['parrot';'ResizablePMCArray']
    set $P1286, $P1287
    .lex "@done", $P1286
.annotate 'line', 260
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_336
    new $P104, "Undef"
  vivify_336:
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_337
    new $P104, "Undef"
  vivify_337:
.annotate 'line', 265
    find_lex $P1289, "@roles"
    unless_null $P1289, vivify_338
    $P1289 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $N100, $P1289
    iseq $I100, $N100, 1.0
    if $I100, if_1288
.annotate 'line', 270
    find_lex $P104, "NQPConcreteRoleHOW"
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P109, $P106["NQPMu"]
    unless_null $P109, vivify_339
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["NQPMu"]
  vivify_339:
    $P110 = $P104."new_type"($P109 :named("instance_of"))
    store_lex "$to_compose", $P110
.annotate 'line', 271
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_340
    new $P104, "Undef"
  vivify_340:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
.annotate 'line', 272
    find_lex $P1291, "@roles"
    unless_null $P1291, vivify_341
    $P1291 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    defined $I101, $P1291
    unless $I101, for_undef_342
    iter $P104, $P1291
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1295_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1295_test:
    unless $P104, loop1295_done
    shift $P105, $P104
  loop1295_redo:
    .const 'Sub' $P1293 = "48_1309859060.384" 
    capture_lex $P1293
    $P1293($P105)
  loop1295_next:
    goto loop1295_test
  loop1295_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1295_next
    eq $P107, .CONTROL_LOOP_REDO, loop1295_redo
  loop1295_done:
    pop_eh 
  for_undef_342:
.annotate 'line', 275
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_346
    new $P104, "Undef"
  vivify_346:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_347
    new $P105, "Undef"
  vivify_347:
    $P106 = $P104."compose"($P105)
    store_lex "$to_compose", $P106
.annotate 'line', 269
    goto if_1288_end
  if_1288:
.annotate 'line', 266
    find_lex $P1290, "@roles"
    unless_null $P1290, vivify_348
    $P1290 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    set $P104, $P1290[0]
    unless_null $P104, vivify_349
    new $P104, "Undef"
  vivify_349:
    store_lex "$to_compose", $P104
.annotate 'line', 267
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_350
    new $P104, "Undef"
  vivify_350:
    get_how $P105, $P104
    store_lex "$to_compose_meta", $P105
  if_1288_end:
.annotate 'line', 279
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_351
    new $P104, "Undef"
  vivify_351:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_352
    new $P105, "Undef"
  vivify_352:
    $P106 = $P104."collisions"($P105)
    store_lex "@collisions", $P106
.annotate 'line', 280
    find_lex $P1296, "@collisions"
    unless_null $P1296, vivify_353
    $P1296 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    defined $I100, $P1296
    unless $I100, for_undef_354
    iter $P104, $P1296
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1301_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1301_test:
    unless $P104, loop1301_done
    shift $P105, $P104
  loop1301_redo:
    .const 'Sub' $P1298 = "49_1309859060.384" 
    capture_lex $P1298
    $P1298($P105)
  loop1301_next:
    goto loop1301_test
  loop1301_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1301_next
    eq $P108, .CONTROL_LOOP_REDO, loop1301_redo
  loop1301_done:
    pop_eh 
  for_undef_354:
.annotate 'line', 288
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_360
    new $P104, "Undef"
  vivify_360:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_361
    new $P105, "Undef"
  vivify_361:
    $P106 = $P104."methods"($P105)
    store_lex "@methods", $P106
.annotate 'line', 289
    find_lex $P1302, "@methods"
    unless_null $P1302, vivify_362
    $P1302 = root_new ['parrot';'ResizablePMCArray']
  vivify_362:
    defined $I100, $P1302
    unless $I100, for_undef_363
    iter $P104, $P1302
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1307_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1307_test:
    unless $P104, loop1307_done
    shift $P105, $P104
  loop1307_redo:
    .const 'Sub' $P1304 = "50_1309859060.384" 
    capture_lex $P1304
    $P1304($P105)
  loop1307_next:
    goto loop1307_test
  loop1307_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1307_next
    eq $P108, .CONTROL_LOOP_REDO, loop1307_redo
  loop1307_done:
    pop_eh 
  for_undef_363:
.annotate 'line', 296
    find_lex $P104, "$to_compose_meta"
    unless_null $P104, vivify_370
    new $P104, "Undef"
  vivify_370:
    find_lex $P105, "$to_compose"
    unless_null $P105, vivify_371
    new $P105, "Undef"
  vivify_371:
    $P106 = $P104."attributes"($P105)
    store_lex "@attributes", $P106
.annotate 'line', 297
    find_lex $P1308, "@attributes"
    unless_null $P1308, vivify_372
    $P1308 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    defined $I100, $P1308
    unless $I100, for_undef_373
    iter $P104, $P1308
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1313_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1313_test:
    unless $P104, loop1313_done
    shift $P105, $P104
  loop1313_redo:
    .const 'Sub' $P1310 = "51_1309859060.384" 
    capture_lex $P1310
    $P1310($P105)
  loop1313_next:
    goto loop1313_test
  loop1313_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1313_next
    eq $P107, .CONTROL_LOOP_REDO, loop1313_redo
  loop1313_done:
    pop_eh 
  for_undef_373:
.annotate 'line', 260
    find_lex $P1314, "@done"
    unless_null $P1314, vivify_382
    $P1314 = root_new ['parrot';'ResizablePMCArray']
  vivify_382:
.annotate 'line', 309
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_383
    new $P104, "Undef"
  vivify_383:
    find_lex $P1315, "@done"
    unless_null $P1315, vivify_384
    $P1315 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P1315
  vivify_384:
    set $P1315[0], $P104
.annotate 'line', 260
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1292"  :anon :subid("48_1309859060.384") :outer("47_1309859060.384")
    .param pmc param_1294
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 272
    .lex "$_", param_1294
.annotate 'line', 273
    find_lex $P106, "$to_compose_meta"
    unless_null $P106, vivify_343
    new $P106, "Undef"
  vivify_343:
    find_lex $P107, "$to_compose"
    unless_null $P107, vivify_344
    new $P107, "Undef"
  vivify_344:
    find_lex $P108, "$_"
    unless_null $P108, vivify_345
    new $P108, "Undef"
  vivify_345:
    $P109 = $P106."add_role"($P107, $P108)
.annotate 'line', 272
    .return ($P109)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1297"  :anon :subid("49_1309859060.384") :outer("47_1309859060.384")
    .param pmc param_1299
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 280
    .lex "$_", param_1299
.annotate 'line', 281
    find_lex $P107, "$target"
    unless_null $P107, vivify_355
    new $P107, "Undef"
  vivify_355:
    find_lex $P108, "$_"
    unless_null $P108, vivify_356
    new $P108, "Undef"
  vivify_356:
    set $S100, $P108
    $P109 = "has_method"($P107, $S100, 1)
    unless $P109, unless_1300
    set $P106, $P109
    goto unless_1300_end
  unless_1300:
.annotate 'line', 282
    new $P110, 'String'
    set $P110, "Method '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_357
    new $P111, "Undef"
  vivify_357:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' collides and a resolution must be provided by the class '"
.annotate 'line', 283
    find_lex $P114, "$target"
    unless_null $P114, vivify_358
    new $P114, "Undef"
  vivify_358:
    get_how $P115, $P114
    find_lex $P116, "$target"
    unless_null $P116, vivify_359
    new $P116, "Undef"
  vivify_359:
    $S101 = $P115."name"($P116)
    concat $P117, $P113, $S101
.annotate 'line', 282
    concat $P118, $P117, "'"
.annotate 'line', 283
    die $P118
  unless_1300_end:
.annotate 'line', 280
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1303"  :anon :subid("50_1309859060.384") :outer("47_1309859060.384")
    .param pmc param_1305
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 289
    .lex "$_", param_1305
.annotate 'line', 290
    find_lex $P107, "$target"
    unless_null $P107, vivify_364
    new $P107, "Undef"
  vivify_364:
    find_lex $P108, "$_"
    unless_null $P108, vivify_365
    new $P108, "Undef"
  vivify_365:
    set $S100, $P108
    $P109 = "has_method"($P107, $S100, 0)
    unless $P109, unless_1306
    set $P106, $P109
    goto unless_1306_end
  unless_1306:
.annotate 'line', 291
    find_lex $P110, "$target"
    unless_null $P110, vivify_366
    new $P110, "Undef"
  vivify_366:
    get_how $P111, $P110
    find_lex $P112, "$target"
    unless_null $P112, vivify_367
    new $P112, "Undef"
  vivify_367:
    find_lex $P113, "$_"
    unless_null $P113, vivify_368
    new $P113, "Undef"
  vivify_368:
    set $S101, $P113
    find_lex $P114, "$_"
    unless_null $P114, vivify_369
    new $P114, "Undef"
  vivify_369:
    $P115 = $P111."add_method"($P112, $S101, $P114)
.annotate 'line', 290
    set $P106, $P115
  unless_1306_end:
.annotate 'line', 289
    .return ($P106)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1309"  :anon :subid("51_1309859060.384") :outer("47_1309859060.384")
    .param pmc param_1311
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1311
.annotate 'line', 298
    find_lex $P106, "$target"
    unless_null $P106, vivify_374
    new $P106, "Undef"
  vivify_374:
    find_lex $P107, "$_"
    unless_null $P107, vivify_375
    new $P107, "Undef"
  vivify_375:
    $P108 = $P107."name"()
    $P109 = "has_attribute"($P106, $P108)
    unless $P109, if_1312_end
.annotate 'line', 299
    new $P110, "String"
    assign $P110, "Attribute '"
    find_lex $P111, "$_"
    unless_null $P111, vivify_376
    new $P111, "Undef"
  vivify_376:
    $S100 = $P111."name"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "' already exists in the class '"
.annotate 'line', 300
    find_lex $P114, "$target"
    unless_null $P114, vivify_377
    new $P114, "Undef"
  vivify_377:
    get_how $P115, $P114
    find_lex $P116, "$target"
    unless_null $P116, vivify_378
    new $P116, "Undef"
  vivify_378:
    $S101 = $P115."name"($P116)
    concat $P117, $P113, $S101
.annotate 'line', 299
    concat $P118, $P117, "', but a role also wishes to compose it"
.annotate 'line', 300
    die $P118
  if_1312_end:
.annotate 'line', 302
    find_lex $P106, "$target"
    unless_null $P106, vivify_379
    new $P106, "Undef"
  vivify_379:
    get_how $P107, $P106
    find_lex $P108, "$target"
    unless_null $P108, vivify_380
    new $P108, "Undef"
  vivify_380:
    find_lex $P109, "$_"
    unless_null $P109, vivify_381
    new $P109, "Undef"
  vivify_381:
    $P110 = $P107."add_attribute"($P108, $P109)
.annotate 'line', 297
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1317"  :subid("52_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 318
    .const 'Sub' $P1453 = "76_1309859060.384" 
    capture_lex $P1453
    .const 'Sub' $P1439 = "74_1309859060.384" 
    capture_lex $P1439
    .const 'Sub' $P1436 = "73_1309859060.384" 
    capture_lex $P1436
    .const 'Sub' $P1432 = "72_1309859060.384" 
    capture_lex $P1432
    .const 'Sub' $P1418 = "70_1309859060.384" 
    capture_lex $P1418
    .const 'Sub' $P1388 = "65_1309859060.384" 
    capture_lex $P1388
    .const 'Sub' $P1385 = "64_1309859060.384" 
    capture_lex $P1385
    .const 'Sub' $P1382 = "63_1309859060.384" 
    capture_lex $P1382
    .const 'Sub' $P1376 = "62_1309859060.384" 
    capture_lex $P1376
    .const 'Sub' $P1372 = "61_1309859060.384" 
    capture_lex $P1372
    .const 'Sub' $P1364 = "60_1309859060.384" 
    capture_lex $P1364
    .const 'Sub' $P1351 = "59_1309859060.384" 
    capture_lex $P1351
    .const 'Sub' $P1343 = "58_1309859060.384" 
    capture_lex $P1343
    .const 'Sub' $P1339 = "57_1309859060.384" 
    capture_lex $P1339
    .const 'Sub' $P1334 = "56_1309859060.384" 
    capture_lex $P1334
    .const 'Sub' $P1331 = "55_1309859060.384" 
    capture_lex $P1331
    .const 'Sub' $P1327 = "54_1309859060.384" 
    capture_lex $P1327
    .const 'Sub' $P1320 = "53_1309859060.384" 
    capture_lex $P1320
.annotate 'line', 455
    .const 'Sub' $P1320 = "53_1309859060.384" 
    newclosure $P1324, $P1320
    set $P1319, $P1324
    .lex "reify_method", $P1319
.annotate 'line', 318
    .lex "$?PACKAGE", $P1325
    .lex "$?CLASS", $P1326
    find_lex $P102, "reify_method"
.annotate 'line', 488
    .const 'Sub' $P1453 = "76_1309859060.384" 
    newclosure $P1457, $P1453
.annotate 'line', 318
    .return ($P1457)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1321
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 455
    .lex "$meth", param_1321
.annotate 'line', 456
    new $P100, "Undef"
    set $P1322, $P100
    .lex "$callback", $P1322
    find_lex $P101, "$meth"
    unless_null $P101, vivify_385
    new $P101, "Undef"
  vivify_385:
    getprop $P102, "REIFY_CALLBACK", $P101
    store_lex "$callback", $P102
.annotate 'line', 457
    find_lex $P102, "$callback"
    unless_null $P102, vivify_386
    new $P102, "Undef"
  vivify_386:
    defined $I100, $P102
    if $I100, if_1323
    find_lex $P106, "$meth"
    unless_null $P106, vivify_387
    new $P106, "Undef"
  vivify_387:
    clone $P107, $P106
    set $P101, $P107
    goto if_1323_end
  if_1323:
    find_lex $P103, "$callback"
    unless_null $P103, vivify_388
    new $P103, "Undef"
  vivify_388:
    find_lex $P104, "$meth"
    unless_null $P104, vivify_389
    new $P104, "Undef"
  vivify_389:
    $P105 = $P103($P104)
    set $P101, $P105
  if_1323_end:
.annotate 'line', 455
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("54_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1328
    .param pmc param_1329 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 348
    .lex "self", param_1328
    .lex "$name", param_1329
.annotate 'line', 349
    new $P102, "Undef"
    set $P1330, $P102
    .lex "$obj", $P1330
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 350
    find_lex $P103, "$obj"
    unless_null $P103, vivify_390
    new $P103, "Undef"
  vivify_390:
    find_lex $P104, "$name"
    unless_null $P104, vivify_391
    new $P104, "Undef"
  vivify_391:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 348
    find_lex $P103, "$obj"
    unless_null $P103, vivify_392
    new $P103, "Undef"
  vivify_392:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("55_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1332
    .param pmc param_1333 :named("name")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 354
    .lex "self", param_1332
    .lex "$name", param_1333
.annotate 'line', 355
    find_lex $P102, "$name"
    unless_null $P102, vivify_393
    new $P102, "Undef"
  vivify_393:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!name", $P102
.annotate 'line', 354
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("56_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1335
    .param pmc param_1336 :optional :named("name")
    .param int has_param_1336 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 360
    .lex "self", param_1335
    if has_param_1336, optparam_394
    new $P102, "String"
    assign $P102, "<anon>"
    set param_1336, $P102
  optparam_394:
    .lex "$name", param_1336
.annotate 'line', 361
    new $P103, "Undef"
    set $P1337, $P103
    .lex "$metarole", $P1337
    find_lex $P104, "self"
    find_lex $P105, "$name"
    unless_null $P105, vivify_395
    new $P105, "Undef"
  vivify_395:
    $P106 = $P104."new"($P105 :named("name"))
    store_lex "$metarole", $P106
.annotate 'line', 363
    find_lex $P104, "$metarole"
    unless_null $P104, vivify_396
    new $P104, "Undef"
  vivify_396:
    new $P105, "String"
    assign $P105, "Uninstantiable"
    set $S100, $P105
    repr_type_object_for $P106, $P104, $S100
    $P1338 = root_new ['parrot';'Hash']
    set_who $P106, $P1338
.annotate 'line', 360
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("57_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1340
    .param pmc param_1341
    .param pmc param_1342
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 367
    .lex "self", param_1340
    .lex "$obj", param_1341
    .lex "$body_block", param_1342
.annotate 'line', 368
    find_lex $P102, "$body_block"
    unless_null $P102, vivify_397
    new $P102, "Undef"
  vivify_397:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!body_block", $P102
.annotate 'line', 367
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("58_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1344
    .param pmc param_1345
    .param pmc param_1346
    .param pmc param_1347
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 371
    .lex "self", param_1344
    .lex "$obj", param_1345
    .lex "$name", param_1346
    .lex "$code_obj", param_1347
.annotate 'line', 372
    find_lex $P102, "$name"
    unless_null $P102, vivify_398
    new $P102, "Undef"
  vivify_398:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1349, $P103, $P104, "%!methods"
    unless_null $P1349, vivify_399
    $P1349 = root_new ['parrot';'Hash']
  vivify_399:
    set $P105, $P1349[$P102]
    unless_null $P105, vivify_400
    new $P105, "Undef"
  vivify_400:
    unless $P105, if_1348_end
.annotate 'line', 373
    new $P106, "String"
    assign $P106, "This role already has a method named "
    find_lex $P107, "$name"
    unless_null $P107, vivify_401
    new $P107, "Undef"
  vivify_401:
    concat $P108, $P106, $P107
    die $P108
  if_1348_end:
.annotate 'line', 375
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_402
    new $P102, "Undef"
  vivify_402:
    find_lex $P103, "$name"
    unless_null $P103, vivify_403
    new $P103, "Undef"
  vivify_403:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1350, $P104, $P105, "%!methods"
    unless_null $P1350, vivify_404
    $P1350 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!methods", $P1350
  vivify_404:
    set $P1350[$P103], $P102
.annotate 'line', 371
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("59_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1352
    .param pmc param_1353
    .param pmc param_1354
    .param pmc param_1355
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 378
    .lex "self", param_1352
    .lex "$obj", param_1353
    .lex "$name", param_1354
    .lex "$code_obj", param_1355
.annotate 'line', 379
    $P1357 = root_new ['parrot';'Hash']
    set $P1356, $P1357
    .lex "%todo", $P1356
.annotate 'line', 378
    find_lex $P1358, "%todo"
    unless_null $P1358, vivify_405
    $P1358 = root_new ['parrot';'Hash']
  vivify_405:
.annotate 'line', 380
    find_lex $P102, "$name"
    unless_null $P102, vivify_406
    new $P102, "Undef"
  vivify_406:
    find_lex $P1359, "%todo"
    unless_null $P1359, vivify_407
    $P1359 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1359
  vivify_407:
    set $P1359["name"], $P102
.annotate 'line', 381
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_408
    new $P102, "Undef"
  vivify_408:
    find_lex $P1360, "%todo"
    unless_null $P1360, vivify_409
    $P1360 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1360
  vivify_409:
    set $P1360["code"], $P102
.annotate 'line', 382
    find_lex $P1361, "%todo"
    unless_null $P1361, vivify_410
    $P1361 = root_new ['parrot';'Hash']
  vivify_410:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1362, $P102, $P103, "@!multi_methods_to_incorporate"
    unless_null $P1362, vivify_411
    $P1362 = root_new ['parrot';'ResizablePMCArray']
  vivify_411:
    set $N100, $P1362
    set $I100, $N100
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1363, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1363, vivify_412
    $P1363 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P104, $P105, "@!multi_methods_to_incorporate", $P1363
  vivify_412:
    set $P1363[$I100], $P1361
.annotate 'line', 378
    find_lex $P102, "$code_obj"
    unless_null $P102, vivify_413
    new $P102, "Undef"
  vivify_413:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("60_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1365
    .param pmc param_1366
    .param pmc param_1367
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 386
    .lex "self", param_1365
    .lex "$obj", param_1366
    .lex "$meta_attr", param_1367
.annotate 'line', 387
    new $P102, "Undef"
    set $P1368, $P102
    .lex "$name", $P1368
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_414
    new $P103, "Undef"
  vivify_414:
    $P104 = $P103."name"()
    store_lex "$name", $P104
.annotate 'line', 388
    find_lex $P103, "$name"
    unless_null $P103, vivify_415
    new $P103, "Undef"
  vivify_415:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1370, $P104, $P105, "%!attributes"
    unless_null $P1370, vivify_416
    $P1370 = root_new ['parrot';'Hash']
  vivify_416:
    set $P106, $P1370[$P103]
    unless_null $P106, vivify_417
    new $P106, "Undef"
  vivify_417:
    unless $P106, if_1369_end
.annotate 'line', 389
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    find_lex $P108, "$name"
    unless_null $P108, vivify_418
    new $P108, "Undef"
  vivify_418:
    concat $P109, $P107, $P108
    die $P109
  if_1369_end:
.annotate 'line', 391
    find_lex $P103, "$meta_attr"
    unless_null $P103, vivify_419
    new $P103, "Undef"
  vivify_419:
    find_lex $P104, "$name"
    unless_null $P104, vivify_420
    new $P104, "Undef"
  vivify_420:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P1371, $P105, $P106, "%!attributes"
    unless_null $P1371, vivify_421
    $P1371 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!attributes", $P1371
  vivify_421:
    set $P1371[$P104], $P103
.annotate 'line', 386
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("61_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1373
    .param pmc param_1374
    .param pmc param_1375
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 394
    .lex "self", param_1373
    .lex "$obj", param_1374
    .lex "$parent", param_1375
.annotate 'line', 395
    die "A role cannot inherit from a class"
.annotate 'line', 394
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("62_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 398
    .lex "self", param_1377
    .lex "$obj", param_1378
    .lex "$role", param_1379
.annotate 'line', 399
    find_lex $P102, "$role"
    unless_null $P102, vivify_422
    new $P102, "Undef"
  vivify_422:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1380, $P103, $P104, "@!roles"
    unless_null $P1380, vivify_423
    $P1380 = root_new ['parrot';'ResizablePMCArray']
  vivify_423:
    set $N100, $P1380
    set $I100, $N100
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P1381, $P105, $P106, "@!roles"
    unless_null $P1381, vivify_424
    $P1381 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "@!roles", $P1381
  vivify_424:
    set $P1381[$I100], $P102
.annotate 'line', 398
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("63_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1383
    .param pmc param_1384
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 403
    .lex "self", param_1383
    .lex "$obj", param_1384
.annotate 'line', 404
    new $P102, "Integer"
    assign $P102, 1
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!composed", $P102
.annotate 'line', 403
    find_lex $P102, "$obj"
    unless_null $P102, vivify_425
    new $P102, "Undef"
  vivify_425:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("64_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1386
    .param pmc param_1387
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 414
    .lex "self", param_1386
    .lex "$obj", param_1387
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate" :anon :subid("65_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1391
    .param pmc param_1392
    .param pmc param_1393
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 420
    .const 'Sub' $P1414 = "69_1309859060.384" 
    capture_lex $P1414
    .const 'Sub' $P1407 = "68_1309859060.384" 
    capture_lex $P1407
    .const 'Sub' $P1402 = "67_1309859060.384" 
    capture_lex $P1402
    .const 'Sub' $P1397 = "66_1309859060.384" 
    capture_lex $P1397
    new $P1390, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1390, control_1389
    push_eh $P1390
    .lex "self", param_1391
    .lex "$obj", param_1392
    .lex "$class_arg", param_1393
.annotate 'line', 426
    new $P102, "Undef"
    set $P1394, $P102
    .lex "$irole", $P1394
.annotate 'line', 423
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!body_block"
    unless_null $P105, vivify_426
    new $P105, "Undef"
  vivify_426:
    find_lex $P106, "$class_arg"
    unless_null $P106, vivify_427
    new $P106, "Undef"
  vivify_427:
    $P105($P106)
.annotate 'line', 426
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!name"
    unless_null $P106, vivify_428
    new $P106, "Undef"
  vivify_428:
    find_lex $P107, "$obj"
    unless_null $P107, vivify_429
    new $P107, "Undef"
  vivify_429:
    $P108 = $P103."new_type"($P106 :named("name"), $P107 :named("instance_of"))
    store_lex "$irole", $P108
.annotate 'line', 430
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1395, $P104, $P105, "%!attributes"
    unless_null $P1395, vivify_430
    $P1395 = root_new ['parrot';'Hash']
  vivify_430:
    defined $I100, $P1395
    unless $I100, for_undef_431
    iter $P103, $P1395
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1399_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1399_test:
    unless $P103, loop1399_done
    shift $P106, $P103
  loop1399_redo:
    .const 'Sub' $P1397 = "66_1309859060.384" 
    capture_lex $P1397
    $P1397($P106)
  loop1399_next:
    goto loop1399_test
  loop1399_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1399_next
    eq $P108, .CONTROL_LOOP_REDO, loop1399_redo
  loop1399_done:
    pop_eh 
  for_undef_431:
.annotate 'line', 435
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1400, $P104, $P105, "%!methods"
    unless_null $P1400, vivify_435
    $P1400 = root_new ['parrot';'Hash']
  vivify_435:
    defined $I100, $P1400
    unless $I100, for_undef_436
    iter $P103, $P1400
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1404_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1404_test:
    unless $P103, loop1404_done
    shift $P106, $P103
  loop1404_redo:
    .const 'Sub' $P1402 = "67_1309859060.384" 
    capture_lex $P1402
    $P1402($P106)
  loop1404_next:
    goto loop1404_test
  loop1404_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1404_next
    eq $P108, .CONTROL_LOOP_REDO, loop1404_redo
  loop1404_done:
    pop_eh 
  for_undef_436:
.annotate 'line', 438
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1405, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1405, vivify_441
    $P1405 = root_new ['parrot';'ResizablePMCArray']
  vivify_441:
    defined $I100, $P1405
    unless $I100, for_undef_442
    iter $P103, $P1405
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1411_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1411_test:
    unless $P103, loop1411_done
    shift $P106, $P103
  loop1411_redo:
    .const 'Sub' $P1407 = "68_1309859060.384" 
    capture_lex $P1407
    $P1407($P106)
  loop1411_next:
    goto loop1411_test
  loop1411_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1411_next
    eq $P108, .CONTROL_LOOP_REDO, loop1411_redo
  loop1411_done:
    pop_eh 
  for_undef_442:
.annotate 'line', 443
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1412, $P104, $P105, "@!roles"
    unless_null $P1412, vivify_449
    $P1412 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    defined $I100, $P1412
    unless $I100, for_undef_450
    iter $P103, $P1412
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1417_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1417_test:
    unless $P103, loop1417_done
    shift $P106, $P103
  loop1417_redo:
    .const 'Sub' $P1414 = "69_1309859060.384" 
    capture_lex $P1414
    $P1414($P106)
  loop1417_next:
    goto loop1417_test
  loop1417_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1417_next
    eq $P109, .CONTROL_LOOP_REDO, loop1417_redo
  loop1417_done:
    pop_eh 
  for_undef_450:
.annotate 'line', 449
    find_lex $P103, "$irole"
    unless_null $P103, vivify_457
    new $P103, "Undef"
  vivify_457:
    get_how $P104, $P103
    find_lex $P105, "$irole"
    unless_null $P105, vivify_458
    new $P105, "Undef"
  vivify_458:
    $P104."compose"($P105)
.annotate 'line', 450
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    find_lex $P104, "$irole"
    unless_null $P104, vivify_459
    new $P104, "Undef"
  vivify_459:
    setattribute $P103, 'payload', $P104
    throw $P103
.annotate 'line', 420
    .return ()
  control_1389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1396"  :anon :subid("66_1309859060.384") :outer("65_1309859060.384")
    .param pmc param_1398
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 430
    .lex "$_", param_1398
.annotate 'line', 431
    find_lex $P107, "$irole"
    unless_null $P107, vivify_432
    new $P107, "Undef"
  vivify_432:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_433
    new $P109, "Undef"
  vivify_433:
    find_lex $P110, "$_"
    unless_null $P110, vivify_434
    new $P110, "Undef"
  vivify_434:
    $P111 = $P110."value"()
    $P112 = $P108."add_attribute"($P109, $P111)
.annotate 'line', 430
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1401"  :anon :subid("67_1309859060.384") :outer("65_1309859060.384")
    .param pmc param_1403
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 435
    .lex "$_", param_1403
.annotate 'line', 436
    find_lex $P107, "$irole"
    unless_null $P107, vivify_437
    new $P107, "Undef"
  vivify_437:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_438
    new $P109, "Undef"
  vivify_438:
    find_lex $P110, "$_"
    unless_null $P110, vivify_439
    new $P110, "Undef"
  vivify_439:
    $P111 = $P110."key"()
    find_lex $P112, "$_"
    unless_null $P112, vivify_440
    new $P112, "Undef"
  vivify_440:
    $P113 = $P112."value"()
    $P114 = "reify_method"($P113)
    $P115 = $P108."add_method"($P109, $P111, $P114)
.annotate 'line', 435
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1406"  :anon :subid("68_1309859060.384") :outer("65_1309859060.384")
    .param pmc param_1408
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 438
    .lex "$_", param_1408
.annotate 'line', 439
    find_lex $P107, "$irole"
    unless_null $P107, vivify_443
    new $P107, "Undef"
  vivify_443:
    get_how $P108, $P107
    find_lex $P109, "$irole"
    unless_null $P109, vivify_444
    new $P109, "Undef"
  vivify_444:
    find_lex $P1409, "$_"
    unless_null $P1409, vivify_445
    $P1409 = root_new ['parrot';'Hash']
  vivify_445:
    set $P110, $P1409["name"]
    unless_null $P110, vivify_446
    new $P110, "Undef"
  vivify_446:
    find_lex $P1410, "$_"
    unless_null $P1410, vivify_447
    $P1410 = root_new ['parrot';'Hash']
  vivify_447:
    set $P111, $P1410["code"]
    unless_null $P111, vivify_448
    new $P111, "Undef"
  vivify_448:
    $P112 = "reify_method"($P111)
    $P113 = $P108."add_multi_method"($P109, $P110, $P112)
.annotate 'line', 438
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1413"  :anon :subid("69_1309859060.384") :outer("65_1309859060.384")
    .param pmc param_1416
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 444
    new $P107, "Undef"
    set $P1415, $P107
    .lex "$instantiated", $P1415
    .lex "$_", param_1416
    find_lex $P108, "$irole"
    unless_null $P108, vivify_451
    new $P108, "Undef"
  vivify_451:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_452
    new $P110, "Undef"
  vivify_452:
    find_lex $P111, "$class_arg"
    unless_null $P111, vivify_453
    new $P111, "Undef"
  vivify_453:
    $P112 = $P109."instantiate"($P110, $P111)
    store_lex "$instantiated", $P112
.annotate 'line', 445
    find_lex $P108, "$irole"
    unless_null $P108, vivify_454
    new $P108, "Undef"
  vivify_454:
    get_how $P109, $P108
    find_lex $P110, "$irole"
    unless_null $P110, vivify_455
    new $P110, "Undef"
  vivify_455:
    find_lex $P111, "$instantiated"
    unless_null $P111, vivify_456
    new $P111, "Undef"
  vivify_456:
    $P112 = $P109."add_role"($P110, $P111)
.annotate 'line', 443
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("70_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1419
    .param pmc param_1420
    .param pmc param_1421 :optional :named("local")
    .param int has_param_1421 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 464
    .const 'Sub' $P1427 = "71_1309859060.384" 
    capture_lex $P1427
    .lex "self", param_1419
    .lex "$obj", param_1420
    if has_param_1421, optparam_460
    new $P102, "Undef"
    set param_1421, $P102
  optparam_460:
    .lex "$local", param_1421
.annotate 'line', 465
    $P1423 = root_new ['parrot';'ResizablePMCArray']
    set $P1422, $P1423
    .lex "@meths", $P1422
.annotate 'line', 464
    find_lex $P1424, "@meths"
    unless_null $P1424, vivify_461
    $P1424 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
.annotate 'line', 466
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1425, $P104, $P105, "%!methods"
    unless_null $P1425, vivify_462
    $P1425 = root_new ['parrot';'Hash']
  vivify_462:
    defined $I100, $P1425
    unless $I100, for_undef_463
    iter $P103, $P1425
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1430_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1430_test:
    unless $P103, loop1430_done
    shift $P106, $P103
  loop1430_redo:
    .const 'Sub' $P1427 = "71_1309859060.384" 
    capture_lex $P1427
    $P1427($P106)
  loop1430_next:
    goto loop1430_test
  loop1430_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1430_next
    eq $P108, .CONTROL_LOOP_REDO, loop1430_redo
  loop1430_done:
    pop_eh 
  for_undef_463:
.annotate 'line', 464
    find_lex $P1431, "@meths"
    unless_null $P1431, vivify_466
    $P1431 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    .return ($P1431)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1426"  :anon :subid("71_1309859060.384") :outer("70_1309859060.384")
    .param pmc param_1428
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 466
    .lex "$_", param_1428
.annotate 'line', 467
    find_lex $P1429, "@meths"
    unless_null $P1429, vivify_464
    $P1429 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    find_lex $P107, "$_"
    unless_null $P107, vivify_465
    new $P107, "Undef"
  vivify_465:
    $P108 = $P107."value"()
    $P109 = $P1429."push"($P108)
.annotate 'line', 466
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("72_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1433
    .param pmc param_1434
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 472
    .lex "self", param_1433
    .lex "$obj", param_1434
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1435, $P102, $P103, "%!methods"
    unless_null $P1435, vivify_467
    $P1435 = root_new ['parrot';'Hash']
  vivify_467:
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("73_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1437
    .param pmc param_1438
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 476
    .lex "self", param_1437
    .lex "$obj", param_1438
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_468
    new $P104, "Undef"
  vivify_468:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("74_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1440
    .param pmc param_1441
    .param pmc param_1442 :optional :named("local")
    .param int has_param_1442 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 480
    .const 'Sub' $P1448 = "75_1309859060.384" 
    capture_lex $P1448
    .lex "self", param_1440
    .lex "$obj", param_1441
    if has_param_1442, optparam_469
    new $P102, "Undef"
    set param_1442, $P102
  optparam_469:
    .lex "$local", param_1442
.annotate 'line', 481
    $P1444 = root_new ['parrot';'ResizablePMCArray']
    set $P1443, $P1444
    .lex "@attrs", $P1443
.annotate 'line', 480
    find_lex $P1445, "@attrs"
    unless_null $P1445, vivify_470
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
.annotate 'line', 482
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1446, $P104, $P105, "%!attributes"
    unless_null $P1446, vivify_471
    $P1446 = root_new ['parrot';'Hash']
  vivify_471:
    defined $I100, $P1446
    unless $I100, for_undef_472
    iter $P103, $P1446
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1451_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1451_test:
    unless $P103, loop1451_done
    shift $P106, $P103
  loop1451_redo:
    .const 'Sub' $P1448 = "75_1309859060.384" 
    capture_lex $P1448
    $P1448($P106)
  loop1451_next:
    goto loop1451_test
  loop1451_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1451_next
    eq $P108, .CONTROL_LOOP_REDO, loop1451_redo
  loop1451_done:
    pop_eh 
  for_undef_472:
.annotate 'line', 480
    find_lex $P1452, "@attrs"
    unless_null $P1452, vivify_475
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_475:
    .return ($P1452)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1447"  :anon :subid("75_1309859060.384") :outer("74_1309859060.384")
    .param pmc param_1449
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 482
    .lex "$_", param_1449
.annotate 'line', 483
    find_lex $P1450, "@attrs"
    unless_null $P1450, vivify_473
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
    find_lex $P107, "$_"
    unless_null $P107, vivify_474
    new $P107, "Undef"
  vivify_474:
    $P108 = $P107."value"()
    $P109 = $P1450."push"($P108)
.annotate 'line', 482
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("76_1309859060.384") :outer("52_1309859060.384")
    .param pmc param_1454
    .param pmc param_1455
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 488
    .lex "self", param_1454
    .lex "$obj", param_1455
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1456, $P102, $P103, "@!roles"
    unless_null $P1456, vivify_476
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    .return ($P1456)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1458"  :subid("77_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 498
    .const 'Sub' $P1911 = "137_1309859060.384" 
    capture_lex $P1911
    .const 'Sub' $P1895 = "135_1309859060.384" 
    capture_lex $P1895
    .const 'Sub' $P1884 = "134_1309859060.384" 
    capture_lex $P1884
    .const 'Sub' $P1872 = "133_1309859060.384" 
    capture_lex $P1872
    .const 'Sub' $P1867 = "132_1309859060.384" 
    capture_lex $P1867
    .const 'Sub' $P1862 = "131_1309859060.384" 
    capture_lex $P1862
    .const 'Sub' $P1848 = "129_1309859060.384" 
    capture_lex $P1848
    .const 'Sub' $P1845 = "128_1309859060.384" 
    capture_lex $P1845
    .const 'Sub' $P1841 = "127_1309859060.384" 
    capture_lex $P1841
    .const 'Sub' $P1827 = "125_1309859060.384" 
    capture_lex $P1827
    .const 'Sub' $P1822 = "124_1309859060.384" 
    capture_lex $P1822
    .const 'Sub' $P1818 = "123_1309859060.384" 
    capture_lex $P1818
    .const 'Sub' $P1811 = "122_1309859060.384" 
    capture_lex $P1811
    .const 'Sub' $P1787 = "119_1309859060.384" 
    capture_lex $P1787
    .const 'Sub' $P1763 = "116_1309859060.384" 
    capture_lex $P1763
    .const 'Sub' $P1741 = "113_1309859060.384" 
    capture_lex $P1741
    .const 'Sub' $P1722 = "110_1309859060.384" 
    capture_lex $P1722
    .const 'Sub' $P1674 = "105_1309859060.384" 
    capture_lex $P1674
    .const 'Sub' $P1644 = "101_1309859060.384" 
    capture_lex $P1644
    .const 'Sub' $P1636 = "100_1309859060.384" 
    capture_lex $P1636
    .const 'Sub' $P1628 = "99_1309859060.384" 
    capture_lex $P1628
    .const 'Sub' $P1616 = "97_1309859060.384" 
    capture_lex $P1616
    .const 'Sub' $P1612 = "96_1309859060.384" 
    capture_lex $P1612
    .const 'Sub' $P1598 = "94_1309859060.384" 
    capture_lex $P1598
    .const 'Sub' $P1590 = "93_1309859060.384" 
    capture_lex $P1590
    .const 'Sub' $P1577 = "92_1309859060.384" 
    capture_lex $P1577
    .const 'Sub' $P1567 = "91_1309859060.384" 
    capture_lex $P1567
    .const 'Sub' $P1561 = "90_1309859060.384" 
    capture_lex $P1561
    .const 'Sub' $P1558 = "89_1309859060.384" 
    capture_lex $P1558
    .const 'Sub' $P1554 = "88_1309859060.384" 
    capture_lex $P1554
    .const 'Sub' $P1490 = "81_1309859060.384" 
    capture_lex $P1490
    .const 'Sub' $P1461 = "78_1309859060.384" 
    capture_lex $P1461
.annotate 'line', 736
    .const 'Sub' $P1461 = "78_1309859060.384" 
    newclosure $P1488, $P1461
    set $P1460, $P1488
    .lex "compute_c3_mro", $P1460
.annotate 'line', 758
    .const 'Sub' $P1490 = "81_1309859060.384" 
    newclosure $P1551, $P1490
    set $P1489, $P1551
    .lex "c3_merge", $P1489
.annotate 'line', 498
    .lex "$?PACKAGE", $P1552
    .lex "$?CLASS", $P1553
    find_lex $P106, "compute_c3_mro"
    find_lex $P106, "c3_merge"
.annotate 'line', 964
    .const 'Sub' $P1911 = "137_1309859060.384" 
    newclosure $P1927, $P1911
.annotate 'line', 498
    .return ($P1927)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1464
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 736
    .const 'Sub' $P1473 = "79_1309859060.384" 
    capture_lex $P1473
    new $P1463, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1463, control_1462
    push_eh $P1463
    .lex "$class", param_1464
.annotate 'line', 737
    $P1466 = root_new ['parrot';'ResizablePMCArray']
    set $P1465, $P1466
    .lex "@immediate_parents", $P1465
.annotate 'line', 740
    $P1468 = root_new ['parrot';'ResizablePMCArray']
    set $P1467, $P1468
    .lex "@result", $P1467
.annotate 'line', 737
    find_lex $P100, "$class"
    unless_null $P100, vivify_477
    new $P100, "Undef"
  vivify_477:
    get_how $P101, $P100
    find_lex $P102, "$class"
    unless_null $P102, vivify_478
    new $P102, "Undef"
  vivify_478:
    $P103 = $P101."parents"($P102, 1 :named("local"))
    store_lex "@immediate_parents", $P103
.annotate 'line', 736
    find_lex $P1469, "@result"
    unless_null $P1469, vivify_479
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
.annotate 'line', 741
    find_lex $P1471, "@immediate_parents"
    unless_null $P1471, vivify_480
    $P1471 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
    set $N100, $P1471
    unless $N100, if_1470_end
    .const 'Sub' $P1473 = "79_1309859060.384" 
    capture_lex $P1473
    $P1473()
  if_1470_end:
.annotate 'line', 753
    find_lex $P1486, "@result"
    unless_null $P1486, vivify_489
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    find_lex $P100, "$class"
    unless_null $P100, vivify_490
    new $P100, "Undef"
  vivify_490:
    $P1486."unshift"($P100)
.annotate 'line', 754
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1487, "@result"
    unless_null $P1487, vivify_491
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    setattribute $P100, 'payload', $P1487
    throw $P100
.annotate 'line', 736
    .return ()
  control_1462:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1472"  :anon :subid("79_1309859060.384") :outer("78_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 741
    .const 'Sub' $P1479 = "80_1309859060.384" 
    capture_lex $P1479
.annotate 'line', 744
    $P1475 = root_new ['parrot';'ResizablePMCArray']
    set $P1474, $P1475
    .lex "@merge_list", $P1474
.annotate 'line', 741
    find_lex $P1476, "@merge_list"
    unless_null $P1476, vivify_481
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_481:
.annotate 'line', 745
    find_lex $P1477, "@immediate_parents"
    unless_null $P1477, vivify_482
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
    defined $I100, $P1477
    unless $I100, for_undef_483
    iter $P100, $P1477
    new $P102, 'ExceptionHandler'
    set_label $P102, loop1482_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop1482_test:
    unless $P100, loop1482_done
    shift $P101, $P100
  loop1482_redo:
    .const 'Sub' $P1479 = "80_1309859060.384" 
    capture_lex $P1479
    $P1479($P101)
  loop1482_next:
    goto loop1482_test
  loop1482_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop1482_next
    eq $P103, .CONTROL_LOOP_REDO, loop1482_redo
  loop1482_done:
    pop_eh 
  for_undef_483:
.annotate 'line', 748
    find_lex $P1483, "@merge_list"
    unless_null $P1483, vivify_486
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    find_lex $P1484, "@immediate_parents"
    unless_null $P1484, vivify_487
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    $P1483."push"($P1484)
.annotate 'line', 749
    find_lex $P1485, "@merge_list"
    unless_null $P1485, vivify_488
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
    $P100 = "c3_merge"($P1485)
    store_lex "@result", $P100
.annotate 'line', 741
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1478"  :anon :subid("80_1309859060.384") :outer("79_1309859060.384")
    .param pmc param_1480
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 745
    .lex "$_", param_1480
.annotate 'line', 746
    find_lex $P1481, "@merge_list"
    unless_null $P1481, vivify_484
    $P1481 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
    find_lex $P102, "$_"
    unless_null $P102, vivify_485
    new $P102, "Undef"
  vivify_485:
    $P103 = "compute_c3_mro"($P102)
    $P104 = $P1481."push"($P103)
.annotate 'line', 745
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1493
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 758
    .const 'Sub' $P1534 = "86_1309859060.384" 
    capture_lex $P1534
    .const 'Sub' $P1503 = "82_1309859060.384" 
    capture_lex $P1503
    new $P1492, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1492, control_1491
    push_eh $P1492
    .lex "@merge_list", param_1493
.annotate 'line', 759
    $P1495 = root_new ['parrot';'ResizablePMCArray']
    set $P1494, $P1495
    .lex "@result", $P1494
.annotate 'line', 760
    new $P101, "Undef"
    set $P1496, $P101
    .lex "$accepted", $P1496
.annotate 'line', 761
    new $P102, "Undef"
    set $P1497, $P102
    .lex "$something_accepted", $P1497
.annotate 'line', 762
    new $P103, "Undef"
    set $P1498, $P103
    .lex "$cand_count", $P1498
.annotate 'line', 805
    new $P104, "Undef"
    set $P1499, $P104
    .lex "$i", $P1499
.annotate 'line', 758
    find_lex $P1500, "@result"
    unless_null $P1500, vivify_492
    $P1500 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_493
    new $P105, "Undef"
  vivify_493:
.annotate 'line', 761
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 762
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$cand_count", $P105
.annotate 'line', 765
    find_lex $P1501, "@merge_list"
    unless_null $P1501, vivify_494
    $P1501 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    defined $I100, $P1501
    unless $I100, for_undef_495
    iter $P105, $P1501
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1528_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1528_test:
    unless $P105, loop1528_done
    shift $P106, $P105
  loop1528_redo:
    .const 'Sub' $P1503 = "82_1309859060.384" 
    capture_lex $P1503
    $P1503($P106)
  loop1528_next:
    goto loop1528_test
  loop1528_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1528_next
    eq $P109, .CONTROL_LOOP_REDO, loop1528_redo
  loop1528_done:
    pop_eh 
  for_undef_495:
.annotate 'line', 795
    find_lex $P105, "$cand_count"
    unless_null $P105, vivify_514
    new $P105, "Undef"
  vivify_514:
    set $N100, $P105
    iseq $I100, $N100, 0.0
    unless $I100, if_1529_end
.annotate 'line', 796
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P1530, "@result"
    unless_null $P1530, vivify_515
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    setattribute $P106, 'payload', $P1530
    throw $P106
  if_1529_end:
.annotate 'line', 800
    find_lex $P105, "$something_accepted"
    unless_null $P105, vivify_516
    new $P105, "Undef"
  vivify_516:
    if $P105, unless_1531_end
.annotate 'line', 801
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1531_end:
.annotate 'line', 805
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 806
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1547_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1547_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_517
    new $P105, "Undef"
  vivify_517:
    set $N100, $P105
    find_lex $P1532, "@merge_list"
    unless_null $P1532, vivify_518
    $P1532 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    set $N101, $P1532
    islt $I100, $N100, $N101
    unless $I100, loop1547_done
  loop1547_redo:
    .const 'Sub' $P1534 = "86_1309859060.384" 
    capture_lex $P1534
    $P1534()
  loop1547_next:
    goto loop1547_test
  loop1547_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1547_next
    eq $P108, .CONTROL_LOOP_REDO, loop1547_redo
  loop1547_done:
    pop_eh 
.annotate 'line', 819
    find_lex $P1548, "@merge_list"
    unless_null $P1548, vivify_532
    $P1548 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    $P105 = "c3_merge"($P1548)
    store_lex "@result", $P105
.annotate 'line', 820
    find_lex $P1549, "@result"
    unless_null $P1549, vivify_533
    $P1549 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    find_lex $P105, "$accepted"
    unless_null $P105, vivify_534
    new $P105, "Undef"
  vivify_534:
    $P1549."unshift"($P105)
.annotate 'line', 821
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P1550, "@result"
    unless_null $P1550, vivify_535
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    setattribute $P105, 'payload', $P1550
    throw $P105
.annotate 'line', 758
    .return ()
  control_1491:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1502"  :anon :subid("82_1309859060.384") :outer("81_1309859060.384")
    .param pmc param_1506
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 765
    .const 'Sub' $P1510 = "83_1309859060.384" 
    capture_lex $P1510
.annotate 'line', 766
    $P1505 = root_new ['parrot';'ResizablePMCArray']
    set $P1504, $P1505
    .lex "@cand_list", $P1504
    .lex "$_", param_1506
    find_lex $P107, "$_"
    unless_null $P107, vivify_496
    new $P107, "Undef"
  vivify_496:
    store_lex "@cand_list", $P107
.annotate 'line', 767
    find_lex $P1508, "@cand_list"
    unless_null $P1508, vivify_497
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    set $N100, $P1508
    if $N100, if_1507
    new $P107, 'Float'
    set $P107, $N100
    goto if_1507_end
  if_1507:
    .const 'Sub' $P1510 = "83_1309859060.384" 
    capture_lex $P1510
    $P111 = $P1510()
    set $P107, $P111
  if_1507_end:
.annotate 'line', 765
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1509"  :anon :subid("83_1309859060.384") :outer("82_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 767
    .const 'Sub' $P1516 = "84_1309859060.384" 
    capture_lex $P1516
.annotate 'line', 768
    new $P108, "Undef"
    set $P1511, $P108
    .lex "$rejected", $P1511
.annotate 'line', 769
    new $P109, "Undef"
    set $P1512, $P109
    .lex "$cand_class", $P1512
.annotate 'line', 768
    new $P110, "Integer"
    assign $P110, 0
    store_lex "$rejected", $P110
.annotate 'line', 769
    find_lex $P1513, "@cand_list"
    unless_null $P1513, vivify_498
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    set $P110, $P1513[0]
    unless_null $P110, vivify_499
    new $P110, "Undef"
  vivify_499:
    store_lex "$cand_class", $P110
.annotate 'line', 770
    find_lex $P110, "$cand_count"
    unless_null $P110, vivify_500
    new $P110, "Undef"
  vivify_500:
    add $P111, $P110, 1
    store_lex "$cand_count", $P111
.annotate 'line', 771
    find_lex $P1514, "@merge_list"
    unless_null $P1514, vivify_501
    $P1514 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    defined $I101, $P1514
    unless $I101, for_undef_502
    iter $P110, $P1514
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1527_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1527_test:
    unless $P110, loop1527_done
    shift $P111, $P110
  loop1527_redo:
    .const 'Sub' $P1516 = "84_1309859060.384" 
    capture_lex $P1516
    $P1516($P111)
  loop1527_next:
    goto loop1527_test
  loop1527_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1527_next
    eq $P114, .CONTROL_LOOP_REDO, loop1527_redo
  loop1527_done:
    pop_eh 
  for_undef_502:
.annotate 'line', 767
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1515"  :anon :subid("84_1309859060.384") :outer("83_1309859060.384")
    .param pmc param_1517
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 771
    .const 'Sub' $P1521 = "85_1309859060.384" 
    capture_lex $P1521
    .lex "$_", param_1517
.annotate 'line', 773
    find_lex $P112, "$_"
    unless_null $P112, vivify_503
    new $P112, "Undef"
  vivify_503:
    find_lex $P1519, "@cand_list"
    unless_null $P1519, vivify_504
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    issame $I102, $P112, $P1519
    if $I102, unless_1518_end
    .const 'Sub' $P1521 = "85_1309859060.384" 
    capture_lex $P1521
    $P1521()
  unless_1518_end:
.annotate 'line', 785
    find_lex $P113, "$rejected"
    unless_null $P113, vivify_512
    new $P113, "Undef"
  vivify_512:
    unless $P113, unless_1526
    set $P112, $P113
    goto unless_1526_end
  unless_1526:
.annotate 'line', 786
    find_lex $P114, "$cand_class"
    unless_null $P114, vivify_513
    new $P114, "Undef"
  vivify_513:
    store_lex "$accepted", $P114
.annotate 'line', 787
    new $P114, "Integer"
    assign $P114, 1
    store_lex "$something_accepted", $P114
.annotate 'line', 788
    die 0, .CONTROL_LOOP_LAST
  unless_1526_end:
.annotate 'line', 771
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1520"  :anon :subid("85_1309859060.384") :outer("84_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 775
    new $P113, "Undef"
    set $P1522, $P113
    .lex "$cur_pos", $P1522
    new $P114, "Integer"
    assign $P114, 1
    store_lex "$cur_pos", $P114
.annotate 'line', 776
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1525_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1525_test:
    find_lex $P114, "$cur_pos"
    unless_null $P114, vivify_505
    new $P114, "Undef"
  vivify_505:
    set $N101, $P114
    find_lex $P115, "$_"
    unless_null $P115, vivify_506
    new $P115, "Undef"
  vivify_506:
    set $N102, $P115
    isle $I103, $N101, $N102
    unless $I103, loop1525_done
  loop1525_redo:
.annotate 'line', 777
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_507
    new $P116, "Undef"
  vivify_507:
    set $I104, $P116
    find_lex $P1524, "$_"
    unless_null $P1524, vivify_508
    $P1524 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
    set $P117, $P1524[$I104]
    unless_null $P117, vivify_509
    new $P117, "Undef"
  vivify_509:
    find_lex $P118, "$cand_class"
    unless_null $P118, vivify_510
    new $P118, "Undef"
  vivify_510:
    issame $I105, $P117, $P118
    unless $I105, if_1523_end
.annotate 'line', 778
    new $P119, "Integer"
    assign $P119, 1
    store_lex "$rejected", $P119
  if_1523_end:
.annotate 'line', 780
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_511
    new $P116, "Undef"
  vivify_511:
    add $P117, $P116, 1
    store_lex "$cur_pos", $P117
  loop1525_next:
.annotate 'line', 776
    goto loop1525_test
  loop1525_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1525_next
    eq $P117, .CONTROL_LOOP_REDO, loop1525_redo
  loop1525_done:
    pop_eh 
.annotate 'line', 773
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1533"  :anon :subid("86_1309859060.384") :outer("81_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 806
    .const 'Sub' $P1540 = "87_1309859060.384" 
    capture_lex $P1540
.annotate 'line', 807
    $P1536 = root_new ['parrot';'ResizablePMCArray']
    set $P1535, $P1536
    .lex "@new_list", $P1535
.annotate 'line', 806
    find_lex $P1537, "@new_list"
    unless_null $P1537, vivify_519
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
.annotate 'line', 808
    find_lex $P107, "$i"
    unless_null $P107, vivify_520
    new $P107, "Undef"
  vivify_520:
    set $I101, $P107
    find_lex $P1538, "@merge_list"
    unless_null $P1538, vivify_521
    $P1538 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    set $P108, $P1538[$I101]
    unless_null $P108, vivify_522
    new $P108, "Undef"
  vivify_522:
    defined $I102, $P108
    unless $I102, for_undef_523
    iter $P106, $P108
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1544_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1544_test:
    unless $P106, loop1544_done
    shift $P109, $P106
  loop1544_redo:
    .const 'Sub' $P1540 = "87_1309859060.384" 
    capture_lex $P1540
    $P1540($P109)
  loop1544_next:
    goto loop1544_test
  loop1544_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1544_next
    eq $P112, .CONTROL_LOOP_REDO, loop1544_redo
  loop1544_done:
    pop_eh 
  for_undef_523:
.annotate 'line', 813
    find_lex $P1545, "@new_list"
    unless_null $P1545, vivify_528
    $P1545 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    find_lex $P106, "$i"
    unless_null $P106, vivify_529
    new $P106, "Undef"
  vivify_529:
    set $I101, $P106
    find_lex $P1546, "@merge_list"
    unless_null $P1546, vivify_530
    $P1546 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1546
  vivify_530:
    set $P1546[$I101], $P1545
.annotate 'line', 814
    find_lex $P106, "$i"
    unless_null $P106, vivify_531
    new $P106, "Undef"
  vivify_531:
    add $P107, $P106, 1
    store_lex "$i", $P107
.annotate 'line', 806
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1539"  :anon :subid("87_1309859060.384") :outer("86_1309859060.384")
    .param pmc param_1541
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 808
    .lex "$_", param_1541
.annotate 'line', 809
    find_lex $P111, "$_"
    unless_null $P111, vivify_524
    new $P111, "Undef"
  vivify_524:
    find_lex $P112, "$accepted"
    unless_null $P112, vivify_525
    new $P112, "Undef"
  vivify_525:
    issame $I103, $P111, $P112
    unless $I103, unless_1542
    new $P110, 'Integer'
    set $P110, $I103
    goto unless_1542_end
  unless_1542:
.annotate 'line', 810
    find_lex $P1543, "@new_list"
    unless_null $P1543, vivify_526
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    find_lex $P113, "$_"
    unless_null $P113, vivify_527
    new $P113, "Undef"
  vivify_527:
    $P114 = $P1543."push"($P113)
.annotate 'line', 809
    set $P110, $P114
  unless_1542_end:
.annotate 'line', 808
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("88_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1555
    .param pmc param_1556 :optional :named("name")
    .param int has_param_1556 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 536
    .lex "self", param_1555
    if has_param_1556, optparam_536
    new $P106, "Undef"
    set param_1556, $P106
  optparam_536:
    .lex "$name", param_1556
.annotate 'line', 537
    new $P107, "Undef"
    set $P1557, $P107
    .lex "$obj", $P1557
    find_lex $P108, "self"
    repr_instance_of $P109, $P108
    store_lex "$obj", $P109
.annotate 'line', 538
    find_lex $P108, "$obj"
    unless_null $P108, vivify_537
    new $P108, "Undef"
  vivify_537:
    find_lex $P109, "$name"
    unless_null $P109, vivify_538
    new $P109, "Undef"
  vivify_538:
    $P108."BUILD"($P109 :named("name"))
.annotate 'line', 536
    find_lex $P108, "$obj"
    unless_null $P108, vivify_539
    new $P108, "Undef"
  vivify_539:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("89_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1559
    .param pmc param_1560 :optional :named("name")
    .param int has_param_1560 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 542
    .lex "self", param_1559
    if has_param_1560, optparam_540
    new $P106, "Undef"
    set param_1560, $P106
  optparam_540:
    .lex "$name", param_1560
.annotate 'line', 543
    find_lex $P107, "$name"
    unless_null $P107, vivify_541
    new $P107, "Undef"
  vivify_541:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!name", $P107
.annotate 'line', 542
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("90_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1562
    .param pmc param_1563 :optional :named("name")
    .param int has_param_1563 :opt_flag
    .param pmc param_1564 :optional :named("repr")
    .param int has_param_1564 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 548
    .lex "self", param_1562
    if has_param_1563, optparam_542
    new $P106, "String"
    assign $P106, "<anon>"
    set param_1563, $P106
  optparam_542:
    .lex "$name", param_1563
    if has_param_1564, optparam_543
    new $P107, "String"
    assign $P107, "P6opaque"
    set param_1564, $P107
  optparam_543:
    .lex "$repr", param_1564
.annotate 'line', 549
    new $P108, "Undef"
    set $P1565, $P108
    .lex "$metaclass", $P1565
    find_lex $P109, "self"
    find_lex $P110, "$name"
    unless_null $P110, vivify_544
    new $P110, "Undef"
  vivify_544:
    $P111 = $P109."new"($P110 :named("name"))
    store_lex "$metaclass", $P111
.annotate 'line', 551
    find_lex $P109, "$metaclass"
    unless_null $P109, vivify_545
    new $P109, "Undef"
  vivify_545:
    find_lex $P110, "$repr"
    unless_null $P110, vivify_546
    new $P110, "Undef"
  vivify_546:
    set $S100, $P110
    repr_type_object_for $P111, $P109, $S100
    $P1566 = root_new ['parrot';'Hash']
    set_who $P111, $P1566
.annotate 'line', 548
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("91_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1568
    .param pmc param_1569
    .param pmc param_1570
    .param pmc param_1571
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 555
    .lex "self", param_1568
    .lex "$obj", param_1569
    .lex "$name", param_1570
    .lex "$code_obj", param_1571
.annotate 'line', 556
    find_lex $P106, "$name"
    unless_null $P106, vivify_547
    new $P106, "Undef"
  vivify_547:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1573, $P107, $P108, "%!methods"
    unless_null $P1573, vivify_548
    $P1573 = root_new ['parrot';'Hash']
  vivify_548:
    set $P109, $P1573[$P106]
    unless_null $P109, vivify_549
    new $P109, "Undef"
  vivify_549:
    unless $P109, if_1572_end
.annotate 'line', 557
    new $P110, "String"
    assign $P110, "This class already has a method named "
    find_lex $P111, "$name"
    unless_null $P111, vivify_550
    new $P111, "Undef"
  vivify_550:
    concat $P112, $P110, $P111
    die $P112
  if_1572_end:
.annotate 'line', 559
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_551
    new $P107, "Undef"
  vivify_551:
    isnull $I100, $P107
    unless $I100, unless_1575
    new $P106, 'Integer'
    set $P106, $I100
    goto unless_1575_end
  unless_1575:
    find_lex $P108, "$code_obj"
    unless_null $P108, vivify_552
    new $P108, "Undef"
  vivify_552:
    isa $I101, $P108, "Undef"
    new $P106, 'Integer'
    set $P106, $I101
  unless_1575_end:
    unless $P106, if_1574_end
.annotate 'line', 560
    new $P109, 'String'
    set $P109, "Cannot add a null method '"
    find_lex $P110, "$name"
    unless_null $P110, vivify_553
    new $P110, "Undef"
  vivify_553:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' to class '"
    find_lex $P113, "self"
    find_lex $P114, "$?CLASS"
    getattribute $P115, $P113, $P114, "$!name"
    unless_null $P115, vivify_554
    new $P115, "Undef"
  vivify_554:
    concat $P116, $P112, $P115
    concat $P117, $P116, "'"
    die $P117
  if_1574_end:
.annotate 'line', 562
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_555
    new $P106, "Undef"
  vivify_555:
    find_lex $P107, "$name"
    unless_null $P107, vivify_556
    new $P107, "Undef"
  vivify_556:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1576, $P108, $P109, "%!methods"
    unless_null $P1576, vivify_557
    $P1576 = root_new ['parrot';'Hash']
    setattribute $P108, $P109, "%!methods", $P1576
  vivify_557:
    set $P1576[$P107], $P106
.annotate 'line', 555
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("92_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1578
    .param pmc param_1579
    .param pmc param_1580
    .param pmc param_1581
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 565
    .lex "self", param_1578
    .lex "$obj", param_1579
    .lex "$name", param_1580
    .lex "$code_obj", param_1581
.annotate 'line', 571
    $P1583 = root_new ['parrot';'Hash']
    set $P1582, $P1583
    .lex "%todo", $P1582
.annotate 'line', 565
    find_lex $P1584, "%todo"
    unless_null $P1584, vivify_558
    $P1584 = root_new ['parrot';'Hash']
  vivify_558:
.annotate 'line', 572
    find_lex $P106, "$name"
    unless_null $P106, vivify_559
    new $P106, "Undef"
  vivify_559:
    find_lex $P1585, "%todo"
    unless_null $P1585, vivify_560
    $P1585 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1585
  vivify_560:
    set $P1585["name"], $P106
.annotate 'line', 573
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_561
    new $P106, "Undef"
  vivify_561:
    find_lex $P1586, "%todo"
    unless_null $P1586, vivify_562
    $P1586 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1586
  vivify_562:
    set $P1586["code"], $P106
.annotate 'line', 574
    find_lex $P1587, "%todo"
    unless_null $P1587, vivify_563
    $P1587 = root_new ['parrot';'Hash']
  vivify_563:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1588, $P106, $P107, "@!multi_methods_to_incorporate"
    unless_null $P1588, vivify_564
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_564:
    set $N100, $P1588
    set $I100, $N100
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1589, $P108, $P109, "@!multi_methods_to_incorporate"
    unless_null $P1589, vivify_565
    $P1589 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P108, $P109, "@!multi_methods_to_incorporate", $P1589
  vivify_565:
    set $P1589[$I100], $P1587
.annotate 'line', 565
    find_lex $P106, "$code_obj"
    unless_null $P106, vivify_566
    new $P106, "Undef"
  vivify_566:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("93_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1591
    .param pmc param_1592
    .param pmc param_1593
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 578
    .lex "self", param_1591
    .lex "$obj", param_1592
    .lex "$meta_attr", param_1593
.annotate 'line', 579
    new $P106, "Undef"
    set $P1594, $P106
    .lex "$name", $P1594
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_567
    new $P107, "Undef"
  vivify_567:
    $P108 = $P107."name"()
    store_lex "$name", $P108
.annotate 'line', 580
    find_lex $P107, "$name"
    unless_null $P107, vivify_568
    new $P107, "Undef"
  vivify_568:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1596, $P108, $P109, "%!attributes"
    unless_null $P1596, vivify_569
    $P1596 = root_new ['parrot';'Hash']
  vivify_569:
    set $P110, $P1596[$P107]
    unless_null $P110, vivify_570
    new $P110, "Undef"
  vivify_570:
    unless $P110, if_1595_end
.annotate 'line', 581
    new $P111, "String"
    assign $P111, "This class already has an attribute named "
    find_lex $P112, "$name"
    unless_null $P112, vivify_571
    new $P112, "Undef"
  vivify_571:
    concat $P113, $P111, $P112
    die $P113
  if_1595_end:
.annotate 'line', 583
    find_lex $P107, "$meta_attr"
    unless_null $P107, vivify_572
    new $P107, "Undef"
  vivify_572:
    find_lex $P108, "$name"
    unless_null $P108, vivify_573
    new $P108, "Undef"
  vivify_573:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1597, $P109, $P110, "%!attributes"
    unless_null $P1597, vivify_574
    $P1597 = root_new ['parrot';'Hash']
    setattribute $P109, $P110, "%!attributes", $P1597
  vivify_574:
    set $P1597[$P108], $P107
.annotate 'line', 578
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("94_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1599
    .param pmc param_1600
    .param pmc param_1601
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 586
    .const 'Sub' $P1606 = "95_1309859060.384" 
    capture_lex $P1606
    .lex "self", param_1599
    .lex "$obj", param_1600
    .lex "$parent", param_1601
.annotate 'line', 587
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!composed"
    unless_null $P108, vivify_575
    new $P108, "Undef"
  vivify_575:
    unless $P108, if_1602_end
.annotate 'line', 588
    die "NQPClassHOW does not support adding parents after being composed."
  if_1602_end:
.annotate 'line', 590
    find_lex $P106, "$obj"
    unless_null $P106, vivify_576
    new $P106, "Undef"
  vivify_576:
    find_lex $P107, "$parent"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    issame $I100, $P106, $P107
    unless $I100, if_1603_end
.annotate 'line', 591
    new $P108, 'String'
    set $P108, "Class '"
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!name"
    unless_null $P111, vivify_578
    new $P111, "Undef"
  vivify_578:
    concat $P112, $P108, $P111
    concat $P113, $P112, "' cannot inherit from itself."
    die $P113
  if_1603_end:
.annotate 'line', 593
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1604, $P107, $P108, "@!parents"
    unless_null $P1604, vivify_579
    $P1604 = root_new ['parrot';'ResizablePMCArray']
  vivify_579:
    defined $I100, $P1604
    unless $I100, for_undef_580
    iter $P106, $P1604
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1609_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1609_test:
    unless $P106, loop1609_done
    shift $P109, $P106
  loop1609_redo:
    .const 'Sub' $P1606 = "95_1309859060.384" 
    capture_lex $P1606
    $P1606($P109)
  loop1609_next:
    goto loop1609_test
  loop1609_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1609_next
    eq $P112, .CONTROL_LOOP_REDO, loop1609_redo
  loop1609_done:
    pop_eh 
  for_undef_580:
.annotate 'line', 598
    find_lex $P106, "$parent"
    unless_null $P106, vivify_584
    new $P106, "Undef"
  vivify_584:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1610, $P107, $P108, "@!parents"
    unless_null $P1610, vivify_585
    $P1610 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $N100, $P1610
    set $I100, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1611, $P109, $P110, "@!parents"
    unless_null $P1611, vivify_586
    $P1611 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!parents", $P1611
  vivify_586:
    set $P1611[$I100], $P106
.annotate 'line', 586
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1605"  :anon :subid("95_1309859060.384") :outer("94_1309859060.384")
    .param pmc param_1607
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 593
    .lex "$_", param_1607
.annotate 'line', 594
    find_lex $P111, "$_"
    unless_null $P111, vivify_581
    new $P111, "Undef"
  vivify_581:
    find_lex $P112, "$parent"
    unless_null $P112, vivify_582
    new $P112, "Undef"
  vivify_582:
    issame $I101, $P111, $P112
    if $I101, if_1608
    new $P110, 'Integer'
    set $P110, $I101
    goto if_1608_end
  if_1608:
.annotate 'line', 595
    new $P113, "String"
    assign $P113, "Already have "
    find_lex $P114, "$parent"
    unless_null $P114, vivify_583
    new $P114, "Undef"
  vivify_583:
    concat $P115, $P113, $P114
    concat $P116, $P115, " as a parent class."
    die $P116
  if_1608_end:
.annotate 'line', 593
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("96_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1613
    .param pmc param_1614
    .param pmc param_1615
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 601
    .lex "self", param_1613
    .lex "$obj", param_1614
    .lex "$parent", param_1615
.annotate 'line', 602
    find_lex $P106, "$parent"
    unless_null $P106, vivify_587
    new $P106, "Undef"
  vivify_587:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!default_parent", $P106
.annotate 'line', 601
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("97_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1617
    .param pmc param_1618
    .param pmc param_1619
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 605
    .const 'Sub' $P1622 = "98_1309859060.384" 
    capture_lex $P1622
    .lex "self", param_1617
    .lex "$obj", param_1618
    .lex "$role", param_1619
.annotate 'line', 606
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1620, $P107, $P108, "@!roles"
    unless_null $P1620, vivify_588
    $P1620 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    defined $I100, $P1620
    unless $I100, for_undef_589
    iter $P106, $P1620
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1625_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1625_test:
    unless $P106, loop1625_done
    shift $P109, $P106
  loop1625_redo:
    .const 'Sub' $P1622 = "98_1309859060.384" 
    capture_lex $P1622
    $P1622($P109)
  loop1625_next:
    goto loop1625_test
  loop1625_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1625_next
    eq $P112, .CONTROL_LOOP_REDO, loop1625_redo
  loop1625_done:
    pop_eh 
  for_undef_589:
.annotate 'line', 611
    find_lex $P106, "$role"
    unless_null $P106, vivify_593
    new $P106, "Undef"
  vivify_593:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1626, $P107, $P108, "@!roles"
    unless_null $P1626, vivify_594
    $P1626 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
    set $N100, $P1626
    set $I100, $N100
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1627, $P109, $P110, "@!roles"
    unless_null $P1627, vivify_595
    $P1627 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P109, $P110, "@!roles", $P1627
  vivify_595:
    set $P1627[$I100], $P106
.annotate 'line', 605
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1621"  :anon :subid("98_1309859060.384") :outer("97_1309859060.384")
    .param pmc param_1623
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 606
    .lex "$_", param_1623
.annotate 'line', 607
    find_lex $P111, "$_"
    unless_null $P111, vivify_590
    new $P111, "Undef"
  vivify_590:
    find_lex $P112, "$role"
    unless_null $P112, vivify_591
    new $P112, "Undef"
  vivify_591:
    issame $I101, $P111, $P112
    if $I101, if_1624
    new $P110, 'Integer'
    set $P110, $I101
    goto if_1624_end
  if_1624:
.annotate 'line', 608
    new $P113, "String"
    assign $P113, "The role "
    find_lex $P114, "$role"
    unless_null $P114, vivify_592
    new $P114, "Undef"
  vivify_592:
    concat $P115, $P113, $P114
    concat $P116, $P115, " has already been added."
    die $P116
  if_1624_end:
.annotate 'line', 606
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("99_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1629
    .param pmc param_1630
    .param pmc param_1631
    .param pmc param_1632
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 614
    .lex "self", param_1629
    .lex "$obj", param_1630
    .lex "$name", param_1631
    .lex "$meth", param_1632
.annotate 'line', 615
    find_lex $P106, "$name"
    unless_null $P106, vivify_596
    new $P106, "Undef"
  vivify_596:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1634, $P107, $P108, "%!parrot_vtable_mapping"
    unless_null $P1634, vivify_597
    $P1634 = root_new ['parrot';'Hash']
  vivify_597:
    set $P109, $P1634[$P106]
    unless_null $P109, vivify_598
    new $P109, "Undef"
  vivify_598:
    defined $I100, $P109
    unless $I100, if_1633_end
.annotate 'line', 616
    new $P110, "String"
    assign $P110, "Class '"
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_599
    new $P113, "Undef"
  vivify_599:
    concat $P114, $P110, $P113
    concat $P115, $P114, "' already has a Parrot v-table override for '"
    find_lex $P116, "$name"
    unless_null $P116, vivify_600
    new $P116, "Undef"
  vivify_600:
    concat $P117, $P115, $P116
.annotate 'line', 617
    concat $P118, $P117, "'"
.annotate 'line', 618
    die $P118
  if_1633_end:
.annotate 'line', 620
    find_lex $P106, "$meth"
    unless_null $P106, vivify_601
    new $P106, "Undef"
  vivify_601:
    find_lex $P107, "$name"
    unless_null $P107, vivify_602
    new $P107, "Undef"
  vivify_602:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1635, $P108, $P109, "%!parrot_vtable_mapping"
    unless_null $P1635, vivify_603
    $P1635 = root_new ['parrot';'Hash']
    setattribute $P108, $P109, "%!parrot_vtable_mapping", $P1635
  vivify_603:
    set $P1635[$P107], $P106
.annotate 'line', 614
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("100_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1637
    .param pmc param_1638
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 623
    .lex "self", param_1637
    .lex "$obj", param_1638
    .lex "$name", param_1639
    .lex "$att_name", param_1640
.annotate 'line', 624
    find_lex $P106, "$name"
    unless_null $P106, vivify_604
    new $P106, "Undef"
  vivify_604:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1642, $P107, $P108, "%!parrot_vtable_handler_mapping"
    unless_null $P1642, vivify_605
    $P1642 = root_new ['parrot';'Hash']
  vivify_605:
    set $P109, $P1642[$P106]
    unless_null $P109, vivify_606
    new $P109, "Undef"
  vivify_606:
    defined $I100, $P109
    unless $I100, if_1641_end
.annotate 'line', 625
    new $P110, "String"
    assign $P110, "Class '"
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_607
    new $P113, "Undef"
  vivify_607:
    concat $P114, $P110, $P113
    concat $P115, $P114, "' already has a Parrot v-table handler for '"
    find_lex $P116, "$name"
    unless_null $P116, vivify_608
    new $P116, "Undef"
  vivify_608:
    concat $P117, $P115, $P116
.annotate 'line', 626
    concat $P118, $P117, "'"
.annotate 'line', 627
    die $P118
  if_1641_end:
.annotate 'line', 629
    find_lex $P106, "$obj"
    unless_null $P106, vivify_609
    new $P106, "Undef"
  vivify_609:
    find_lex $P107, "$att_name"
    unless_null $P107, vivify_610
    new $P107, "Undef"
  vivify_610:
    new $P108, "ResizablePMCArray"
    push $P108, $P106
    push $P108, $P107
    find_lex $P109, "$name"
    unless_null $P109, vivify_611
    new $P109, "Undef"
  vivify_611:
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1643, $P110, $P111, "%!parrot_vtable_handler_mapping"
    unless_null $P1643, vivify_612
    $P1643 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!parrot_vtable_handler_mapping", $P1643
  vivify_612:
    set $P1643[$P109], $P108
.annotate 'line', 623
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("101_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 632
    .const 'Sub' $P1671 = "104_1309859060.384" 
    capture_lex $P1671
    .const 'Sub' $P1650 = "102_1309859060.384" 
    capture_lex $P1650
    .lex "self", param_1645
    .lex "$obj", param_1646
.annotate 'line', 636
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1648, $P106, $P107, "@!roles"
    unless_null $P1648, vivify_613
    $P1648 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
    unless $P1648, if_1647_end
    .const 'Sub' $P1650 = "102_1309859060.384" 
    capture_lex $P1650
    $P1650()
  if_1647_end:
.annotate 'line', 649
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1668, $P107, $P108, "@!parents"
    unless_null $P1668, vivify_630
    $P1668 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    set $N100, $P1668
    iseq $I100, $N100, 0.0
    if $I100, if_1667
    new $P106, 'Integer'
    set $P106, $I100
    goto if_1667_end
  if_1667:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!name"
    unless_null $P111, vivify_631
    new $P111, "Undef"
  vivify_631:
    set $S100, $P111
    isne $I101, $S100, "NQPMu"
    new $P106, 'Integer'
    set $P106, $I101
  if_1667_end:
    unless $P106, if_1666_end
.annotate 'line', 650
    find_lex $P112, "self"
    find_lex $P113, "$obj"
    unless_null $P113, vivify_632
    new $P113, "Undef"
  vivify_632:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P116, $P114, $P115, "$!default_parent"
    unless_null $P116, vivify_633
    new $P116, "Undef"
  vivify_633:
    $P112."add_parent"($P113, $P116)
  if_1666_end:
.annotate 'line', 655
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!composed"
    unless_null $P108, vivify_634
    new $P108, "Undef"
  vivify_634:
    if $P108, unless_1669_end
.annotate 'line', 656
    find_lex $P109, "$obj"
    unless_null $P109, vivify_635
    new $P109, "Undef"
  vivify_635:
    $P110 = "compute_c3_mro"($P109)
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    setattribute $P111, $P112, "@!mro", $P110
.annotate 'line', 657
    new $P109, "Integer"
    assign $P109, 1
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    setattribute $P110, $P111, "$!composed", $P109
  unless_1669_end:
.annotate 'line', 661
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_636
    new $P107, "Undef"
  vivify_636:
    $P106."incorporate_multi_candidates"($P107)
.annotate 'line', 664
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_637
    new $P108, "Undef"
  vivify_637:
    $P109 = $P107."attributes"($P108, "0" :named("local"))
    defined $I100, $P109
    unless $I100, for_undef_638
    iter $P106, $P109
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1673_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1673_test:
    unless $P106, loop1673_done
    shift $P110, $P106
  loop1673_redo:
    .const 'Sub' $P1671 = "104_1309859060.384" 
    capture_lex $P1671
    $P1671($P110)
  loop1673_next:
    goto loop1673_test
  loop1673_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1673_next
    eq $P112, .CONTROL_LOOP_REDO, loop1673_redo
  loop1673_done:
    pop_eh 
  for_undef_638:
.annotate 'line', 667
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_641
    new $P107, "Undef"
  vivify_641:
    $P106."publish_type_cache"($P107)
.annotate 'line', 668
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_642
    new $P107, "Undef"
  vivify_642:
    $P106."publish_method_cache"($P107)
.annotate 'line', 671
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_643
    new $P107, "Undef"
  vivify_643:
    $P106."publish_parrot_vtable_mapping"($P107)
.annotate 'line', 672
    find_lex $P106, "self"
    find_lex $P107, "$obj"
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    $P106."publish_parrot_vtablee_handler_mapping"($P107)
.annotate 'line', 632
    find_lex $P106, "$obj"
    unless_null $P106, vivify_645
    new $P106, "Undef"
  vivify_645:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1649"  :anon :subid("102_1309859060.384") :outer("101_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 636
    .const 'Sub' $P1656 = "103_1309859060.384" 
    capture_lex $P1656
.annotate 'line', 637
    $P1652 = root_new ['parrot';'ResizablePMCArray']
    set $P1651, $P1652
    .lex "@instantiated_roles", $P1651
.annotate 'line', 636
    find_lex $P1653, "@instantiated_roles"
    unless_null $P1653, vivify_614
    $P1653 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
.annotate 'line', 638
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1654, $P109, $P110, "@!roles"
    unless_null $P1654, vivify_615
    $P1654 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    defined $I100, $P1654
    unless $I100, for_undef_616
    iter $P108, $P1654
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1664_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1664_test:
    unless $P108, loop1664_done
    shift $P111, $P108
  loop1664_redo:
    .const 'Sub' $P1656 = "103_1309859060.384" 
    capture_lex $P1656
    $P1656($P111)
  loop1664_next:
    goto loop1664_test
  loop1664_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1664_next
    eq $P115, .CONTROL_LOOP_REDO, loop1664_redo
  loop1664_done:
    pop_eh 
  for_undef_616:
.annotate 'line', 644
    find_lex $P108, "RoleToClassApplier"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_628
    new $P109, "Undef"
  vivify_628:
    find_lex $P1665, "@instantiated_roles"
    unless_null $P1665, vivify_629
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    $P110 = $P108."apply"($P109, $P1665)
.annotate 'line', 636
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1655"  :anon :subid("103_1309859060.384") :outer("102_1309859060.384")
    .param pmc param_1658
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 639
    new $P112, "Undef"
    set $P1657, $P112
    .lex "$ins", $P1657
    .lex "$_", param_1658
    find_lex $P113, "$_"
    unless_null $P113, vivify_617
    new $P113, "Undef"
  vivify_617:
    get_how $P114, $P113
    find_lex $P115, "$_"
    unless_null $P115, vivify_618
    new $P115, "Undef"
  vivify_618:
    find_lex $P116, "$obj"
    unless_null $P116, vivify_619
    new $P116, "Undef"
  vivify_619:
    $P117 = $P114."instantiate"($P115, $P116)
    store_lex "$ins", $P117
.annotate 'line', 640
    find_lex $P1659, "@instantiated_roles"
    unless_null $P1659, vivify_620
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    find_lex $P113, "$ins"
    unless_null $P113, vivify_621
    new $P113, "Undef"
  vivify_621:
    $P1659."push"($P113)
.annotate 'line', 641
    find_lex $P113, "$_"
    unless_null $P113, vivify_622
    new $P113, "Undef"
  vivify_622:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1660, $P114, $P115, "@!done"
    unless_null $P1660, vivify_623
    $P1660 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    set $N100, $P1660
    set $I101, $N100
    find_lex $P116, "self"
    find_lex $P117, "$?CLASS"
    getattribute $P1661, $P116, $P117, "@!done"
    unless_null $P1661, vivify_624
    $P1661 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P116, $P117, "@!done", $P1661
  vivify_624:
    set $P1661[$I101], $P113
.annotate 'line', 642
    find_lex $P113, "$ins"
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
.annotate 'line', 638
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1670"  :anon :subid("104_1309859060.384") :outer("101_1309859060.384")
    .param pmc param_1672
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 664
    .lex "$_", param_1672
    find_lex $P111, "$_"
    unless_null $P111, vivify_639
    new $P111, "Undef"
  vivify_639:
    find_lex $P112, "$obj"
    unless_null $P112, vivify_640
    new $P112, "Undef"
  vivify_640:
    $P113 = $P111."compose"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("105_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1675
    .param pmc param_1676
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 677
    .const 'Sub' $P1681 = "106_1309859060.384" 
    capture_lex $P1681
    .lex "self", param_1675
    .lex "$obj", param_1676
.annotate 'line', 678
    new $P106, "Undef"
    set $P1677, $P106
    .lex "$num_todo", $P1677
.annotate 'line', 679
    new $P107, "Undef"
    set $P1678, $P107
    .lex "$i", $P1678
.annotate 'line', 678
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1679, $P108, $P109, "@!multi_methods_to_incorporate"
    unless_null $P1679, vivify_646
    $P1679 = root_new ['parrot';'ResizablePMCArray']
  vivify_646:
    set $N100, $P1679
    new $P110, 'Float'
    set $P110, $N100
    store_lex "$num_todo", $P110
.annotate 'line', 679
    new $P108, "Integer"
    assign $P108, 0
    store_lex "$i", $P108
.annotate 'line', 680
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1721_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1721_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_647
    new $P108, "Undef"
  vivify_647:
    set $N100, $P108
    find_lex $P109, "$num_todo"
    unless_null $P109, vivify_648
    new $P109, "Undef"
  vivify_648:
    set $N101, $P109
    isne $I100, $N100, $N101
    unless $I100, loop1721_done
  loop1721_redo:
    .const 'Sub' $P1681 = "106_1309859060.384" 
    capture_lex $P1681
    $P1681()
  loop1721_next:
    goto loop1721_test
  loop1721_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1721_next
    eq $P115, .CONTROL_LOOP_REDO, loop1721_redo
  loop1721_done:
    pop_eh 
.annotate 'line', 677
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1680"  :anon :subid("106_1309859060.384") :outer("105_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 680
    .const 'Sub' $P1693 = "107_1309859060.384" 
    capture_lex $P1693
.annotate 'line', 682
    new $P110, "Undef"
    set $P1682, $P110
    .lex "$name", $P1682
.annotate 'line', 683
    new $P111, "Undef"
    set $P1683, $P111
    .lex "$code", $P1683
.annotate 'line', 687
    new $P112, "Undef"
    set $P1684, $P112
    .lex "$dispatcher", $P1684
.annotate 'line', 682
    find_lex $P113, "$i"
    unless_null $P113, vivify_649
    new $P113, "Undef"
  vivify_649:
    set $I101, $P113
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1685, $P114, $P115, "@!multi_methods_to_incorporate"
    unless_null $P1685, vivify_650
    $P1685 = root_new ['parrot';'ResizablePMCArray']
  vivify_650:
    set $P1686, $P1685[$I101]
    unless_null $P1686, vivify_651
    $P1686 = root_new ['parrot';'Hash']
  vivify_651:
    set $P116, $P1686["name"]
    unless_null $P116, vivify_652
    new $P116, "Undef"
  vivify_652:
    store_lex "$name", $P116
.annotate 'line', 683
    find_lex $P113, "$i"
    unless_null $P113, vivify_653
    new $P113, "Undef"
  vivify_653:
    set $I101, $P113
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1687, $P114, $P115, "@!multi_methods_to_incorporate"
    unless_null $P1687, vivify_654
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_654:
    set $P1688, $P1687[$I101]
    unless_null $P1688, vivify_655
    $P1688 = root_new ['parrot';'Hash']
  vivify_655:
    set $P116, $P1688["code"]
    unless_null $P116, vivify_656
    new $P116, "Undef"
  vivify_656:
    store_lex "$code", $P116
.annotate 'line', 687
    find_lex $P113, "$name"
    unless_null $P113, vivify_657
    new $P113, "Undef"
  vivify_657:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P1689, $P114, $P115, "%!methods"
    unless_null $P1689, vivify_658
    $P1689 = root_new ['parrot';'Hash']
  vivify_658:
    set $P116, $P1689[$P113]
    unless_null $P116, vivify_659
    new $P116, "Undef"
  vivify_659:
    store_lex "$dispatcher", $P116
.annotate 'line', 688
    find_lex $P113, "$dispatcher"
    unless_null $P113, vivify_660
    new $P113, "Undef"
  vivify_660:
    defined $I101, $P113
    if $I101, if_1690
.annotate 'line', 698
    .const 'Sub' $P1693 = "107_1309859060.384" 
    capture_lex $P1693
    $P1693()
    goto if_1690_end
  if_1690:
.annotate 'line', 691
    find_lex $P114, "$dispatcher"
    unless_null $P114, vivify_691
    new $P114, "Undef"
  vivify_691:
    is_dispatcher $I102, $P114
    if $I102, if_1691
.annotate 'line', 695
    new $P115, 'String'
    set $P115, "Cannot have a multi candidate for "
    find_lex $P116, "$name"
    unless_null $P116, vivify_692
    new $P116, "Undef"
  vivify_692:
    concat $P117, $P115, $P116
    concat $P118, $P117, " when an only method is also in the class"
    die $P118
.annotate 'line', 694
    goto if_1691_end
  if_1691:
.annotate 'line', 692
    find_lex $P115, "$dispatcher"
    unless_null $P115, vivify_693
    new $P115, "Undef"
  vivify_693:
    find_lex $P116, "$code"
    unless_null $P116, vivify_694
    new $P116, "Undef"
  vivify_694:
    push_dispatchee $P115, $P116
  if_1691_end:
  if_1690_end:
.annotate 'line', 731
    find_lex $P113, "$i"
    unless_null $P113, vivify_695
    new $P113, "Undef"
  vivify_695:
    add $P114, $P113, 1
    store_lex "$i", $P114
.annotate 'line', 680
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1692"  :anon :subid("107_1309859060.384") :outer("106_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 698
    .const 'Sub' $P1699 = "108_1309859060.384" 
    capture_lex $P1699
.annotate 'line', 700
    new $P114, "Undef"
    set $P1694, $P114
    .lex "$j", $P1694
.annotate 'line', 701
    new $P115, "Undef"
    set $P1695, $P115
    .lex "$found", $P1695
.annotate 'line', 700
    new $P116, "Integer"
    assign $P116, 1
    store_lex "$j", $P116
.annotate 'line', 701
    new $P116, "Integer"
    assign $P116, 0
    store_lex "$found", $P116
.annotate 'line', 702
    new $P123, 'ExceptionHandler'
    set_label $P123, loop1719_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop1719_test:
    find_lex $P117, "$j"
    unless_null $P117, vivify_661
    new $P117, "Undef"
  vivify_661:
    set $N102, $P117
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P1697, $P118, $P119, "@!mro"
    unless_null $P1697, vivify_662
    $P1697 = root_new ['parrot';'ResizablePMCArray']
  vivify_662:
    set $N103, $P1697
    isne $I102, $N102, $N103
    if $I102, if_1696
    new $P116, 'Integer'
    set $P116, $I102
    goto if_1696_end
  if_1696:
    find_lex $P120, "$found"
    unless_null $P120, vivify_663
    new $P120, "Undef"
  vivify_663:
    isfalse $I103, $P120
    new $P116, 'Integer'
    set $P116, $I103
  if_1696_end:
    unless $P116, loop1719_done
  loop1719_redo:
    .const 'Sub' $P1699 = "108_1309859060.384" 
    capture_lex $P1699
    $P1699()
  loop1719_next:
    goto loop1719_test
  loop1719_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop1719_next
    eq $P125, .CONTROL_LOOP_REDO, loop1719_redo
  loop1719_done:
    pop_eh 
.annotate 'line', 727
    find_lex $P117, "$found"
    unless_null $P117, vivify_689
    new $P117, "Undef"
  vivify_689:
    unless $P117, unless_1720
    set $P116, $P117
    goto unless_1720_end
  unless_1720:
.annotate 'line', 728
    new $P118, 'String'
    set $P118, "Could not find a proto for multi "
    find_lex $P119, "$name"
    unless_null $P119, vivify_690
    new $P119, "Undef"
  vivify_690:
    concat $P120, $P118, $P119
    concat $P121, $P120, ", and proto generation is NYI"
    die $P121
  unless_1720_end:
.annotate 'line', 698
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1698"  :anon :subid("108_1309859060.384") :outer("107_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 702
    .const 'Sub' $P1709 = "109_1309859060.384" 
    capture_lex $P1709
.annotate 'line', 703
    new $P121, "Undef"
    set $P1700, $P121
    .lex "$parent", $P1700
.annotate 'line', 704
    $P1702 = root_new ['parrot';'Hash']
    set $P1701, $P1702
    .lex "%meths", $P1701
.annotate 'line', 705
    new $P122, "Undef"
    set $P1703, $P122
    .lex "$dispatcher", $P1703
.annotate 'line', 703
    find_lex $P123, "$j"
    unless_null $P123, vivify_664
    new $P123, "Undef"
  vivify_664:
    set $I104, $P123
    find_lex $P124, "self"
    find_lex $P125, "$?CLASS"
    getattribute $P1704, $P124, $P125, "@!mro"
    unless_null $P1704, vivify_665
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $P126, $P1704[$I104]
    unless_null $P126, vivify_666
    new $P126, "Undef"
  vivify_666:
    store_lex "$parent", $P126
.annotate 'line', 704
    find_lex $P123, "$parent"
    unless_null $P123, vivify_667
    new $P123, "Undef"
  vivify_667:
    get_how $P124, $P123
    find_lex $P125, "$parent"
    unless_null $P125, vivify_668
    new $P125, "Undef"
  vivify_668:
    $P126 = $P124."method_table"($P125)
    store_lex "%meths", $P126
.annotate 'line', 705
    find_lex $P123, "$name"
    unless_null $P123, vivify_669
    new $P123, "Undef"
  vivify_669:
    find_lex $P1705, "%meths"
    unless_null $P1705, vivify_670
    $P1705 = root_new ['parrot';'Hash']
  vivify_670:
    set $P124, $P1705[$P123]
    unless_null $P124, vivify_671
    new $P124, "Undef"
  vivify_671:
    store_lex "$dispatcher", $P124
.annotate 'line', 706
    find_lex $P123, "$dispatcher"
    unless_null $P123, vivify_672
    new $P123, "Undef"
  vivify_672:
    defined $I104, $P123
    unless $I104, if_1706_end
.annotate 'line', 709
    find_lex $P124, "$dispatcher"
    unless_null $P124, vivify_673
    new $P124, "Undef"
  vivify_673:
    is_dispatcher $I105, $P124
    if $I105, if_1707
.annotate 'line', 722
    new $P128, 'String'
    set $P128, "Could not find a proto for multi "
    find_lex $P129, "$name"
    unless_null $P129, vivify_674
    new $P129, "Undef"
  vivify_674:
    concat $P130, $P128, $P129
    concat $P131, $P130, " (it may exist, but an only is hiding it if so)"
    die $P131
.annotate 'line', 721
    goto if_1707_end
  if_1707:
.annotate 'line', 709
    .const 'Sub' $P1709 = "109_1309859060.384" 
    capture_lex $P1709
    $P1709()
  if_1707_end:
  if_1706_end:
.annotate 'line', 725
    find_lex $P123, "$j"
    unless_null $P123, vivify_688
    new $P123, "Undef"
  vivify_688:
    add $P124, $P123, 1
    store_lex "$j", $P124
.annotate 'line', 702
    .return ($P124)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1708"  :anon :subid("109_1309859060.384") :outer("108_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 711
    $P1711 = root_new ['parrot';'ResizablePMCArray']
    set $P1710, $P1711
    .lex "@new_dispatchees", $P1710
.annotate 'line', 713
    new $P125, "Undef"
    set $P1712, $P125
    .lex "$new_disp", $P1712
.annotate 'line', 714
    new $P126, "Undef"
    set $P1713, $P126
    .lex "$clone_callback", $P1713
.annotate 'line', 709
    find_lex $P1714, "@new_dispatchees"
    unless_null $P1714, vivify_675
    $P1714 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
.annotate 'line', 712
    find_lex $P127, "$code"
    unless_null $P127, vivify_676
    new $P127, "Undef"
  vivify_676:
    find_lex $P1715, "@new_dispatchees"
    unless_null $P1715, vivify_677
    $P1715 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1715
  vivify_677:
    set $P1715[0], $P127
.annotate 'line', 713
    find_lex $P127, "$dispatcher"
    unless_null $P127, vivify_678
    new $P127, "Undef"
  vivify_678:
    find_lex $P1716, "@new_dispatchees"
    unless_null $P1716, vivify_679
    $P1716 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
    create_dispatch_and_add_candidates $P128, $P127, $P1716
    store_lex "$new_disp", $P128
.annotate 'line', 714
    find_lex $P127, "$dispatcher"
    unless_null $P127, vivify_680
    new $P127, "Undef"
  vivify_680:
    getprop $P128, "CLONE_CALLBACK", $P127
    store_lex "$clone_callback", $P128
.annotate 'line', 715
    find_lex $P127, "$clone_callback"
    unless_null $P127, vivify_681
    new $P127, "Undef"
  vivify_681:
    defined $I106, $P127
    unless $I106, if_1717_end
.annotate 'line', 716
    find_lex $P128, "$clone_callback"
    unless_null $P128, vivify_682
    new $P128, "Undef"
  vivify_682:
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_683
    new $P129, "Undef"
  vivify_683:
    find_lex $P130, "$new_disp"
    unless_null $P130, vivify_684
    new $P130, "Undef"
  vivify_684:
    $P128($P129, $P130)
  if_1717_end:
.annotate 'line', 718
    find_lex $P127, "$new_disp"
    unless_null $P127, vivify_685
    new $P127, "Undef"
  vivify_685:
    find_lex $P128, "$name"
    unless_null $P128, vivify_686
    new $P128, "Undef"
  vivify_686:
    find_lex $P129, "self"
    find_lex $P130, "$?CLASS"
    getattribute $P1718, $P129, $P130, "%!methods"
    unless_null $P1718, vivify_687
    $P1718 = root_new ['parrot';'Hash']
    setattribute $P129, $P130, "%!methods", $P1718
  vivify_687:
    set $P1718[$P128], $P127
.annotate 'line', 719
    new $P127, "Integer"
    assign $P127, 1
    store_lex "$found", $P127
.annotate 'line', 709
    .return ($P127)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("110_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1723
    .param pmc param_1724
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 824
    .const 'Sub' $P1736 = "112_1309859060.384" 
    capture_lex $P1736
    .const 'Sub' $P1730 = "111_1309859060.384" 
    capture_lex $P1730
    .lex "self", param_1723
    .lex "$obj", param_1724
.annotate 'line', 825
    $P1726 = root_new ['parrot';'ResizablePMCArray']
    set $P1725, $P1726
    .lex "@tc", $P1725
.annotate 'line', 824
    find_lex $P1727, "@tc"
    unless_null $P1727, vivify_696
    $P1727 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
.annotate 'line', 826
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1728, $P107, $P108, "@!mro"
    unless_null $P1728, vivify_697
    $P1728 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    defined $I100, $P1728
    unless $I100, for_undef_698
    iter $P106, $P1728
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1733_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1733_test:
    unless $P106, loop1733_done
    shift $P109, $P106
  loop1733_redo:
    .const 'Sub' $P1730 = "111_1309859060.384" 
    capture_lex $P1730
    $P1730($P109)
  loop1733_next:
    goto loop1733_test
  loop1733_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1733_next
    eq $P112, .CONTROL_LOOP_REDO, loop1733_redo
  loop1733_done:
    pop_eh 
  for_undef_698:
.annotate 'line', 827
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1734, $P107, $P108, "@!done"
    unless_null $P1734, vivify_701
    $P1734 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    defined $I100, $P1734
    unless $I100, for_undef_702
    iter $P106, $P1734
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1739_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1739_test:
    unless $P106, loop1739_done
    shift $P109, $P106
  loop1739_redo:
    .const 'Sub' $P1736 = "112_1309859060.384" 
    capture_lex $P1736
    $P1736($P109)
  loop1739_next:
    goto loop1739_test
  loop1739_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1739_next
    eq $P112, .CONTROL_LOOP_REDO, loop1739_redo
  loop1739_done:
    pop_eh 
  for_undef_702:
.annotate 'line', 828
    find_lex $P106, "$obj"
    unless_null $P106, vivify_705
    new $P106, "Undef"
  vivify_705:
    find_lex $P1740, "@tc"
    unless_null $P1740, vivify_706
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    publish_type_check_cache $P106, $P1740
.annotate 'line', 824
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1729"  :anon :subid("111_1309859060.384") :outer("110_1309859060.384")
    .param pmc param_1731
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 826
    .lex "$_", param_1731
    find_lex $P1732, "@tc"
    unless_null $P1732, vivify_699
    $P1732 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    find_lex $P110, "$_"
    unless_null $P110, vivify_700
    new $P110, "Undef"
  vivify_700:
    $P111 = $P1732."push"($P110)
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1735"  :anon :subid("112_1309859060.384") :outer("110_1309859060.384")
    .param pmc param_1737
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 827
    .lex "$_", param_1737
    find_lex $P1738, "@tc"
    unless_null $P1738, vivify_703
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    find_lex $P110, "$_"
    unless_null $P110, vivify_704
    new $P110, "Undef"
  vivify_704:
    $P111 = $P1738."push"($P110)
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("113_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1742
    .param pmc param_1743
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 831
    .const 'Sub' $P1749 = "114_1309859060.384" 
    capture_lex $P1749
    .lex "self", param_1742
    .lex "$obj", param_1743
.annotate 'line', 834
    $P1745 = root_new ['parrot';'Hash']
    set $P1744, $P1745
    .lex "%cache", $P1744
.annotate 'line', 831
    find_lex $P1746, "%cache"
    unless_null $P1746, vivify_707
    $P1746 = root_new ['parrot';'Hash']
  vivify_707:
.annotate 'line', 835
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1747, $P107, $P108, "@!mro"
    unless_null $P1747, vivify_708
    $P1747 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    defined $I100, $P1747
    unless $I100, for_undef_709
    iter $P106, $P1747
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1761_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1761_test:
    unless $P106, loop1761_done
    shift $P109, $P106
  loop1761_redo:
    .const 'Sub' $P1749 = "114_1309859060.384" 
    capture_lex $P1749
    $P1749($P109)
  loop1761_next:
    goto loop1761_test
  loop1761_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1761_next
    eq $P112, .CONTROL_LOOP_REDO, loop1761_redo
  loop1761_done:
    pop_eh 
  for_undef_709:
.annotate 'line', 843
    find_lex $P106, "$obj"
    unless_null $P106, vivify_720
    new $P106, "Undef"
  vivify_720:
    find_lex $P1762, "%cache"
    unless_null $P1762, vivify_721
    $P1762 = root_new ['parrot';'Hash']
  vivify_721:
    publish_method_cache $P106, $P1762
.annotate 'line', 831
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1748"  :anon :subid("114_1309859060.384") :outer("113_1309859060.384")
    .param pmc param_1752
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 835
    .const 'Sub' $P1755 = "115_1309859060.384" 
    capture_lex $P1755
.annotate 'line', 836
    $P1751 = root_new ['parrot';'Hash']
    set $P1750, $P1751
    .lex "%methods", $P1750
    .lex "$_", param_1752
    find_lex $P110, "$_"
    unless_null $P110, vivify_710
    new $P110, "Undef"
  vivify_710:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_711
    new $P112, "Undef"
  vivify_711:
    $P113 = $P111."method_table"($P112)
    store_lex "%methods", $P113
.annotate 'line', 837
    find_lex $P1753, "%methods"
    unless_null $P1753, vivify_712
    $P1753 = root_new ['parrot';'Hash']
  vivify_712:
    defined $I101, $P1753
    unless $I101, for_undef_713
    iter $P110, $P1753
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1760_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1760_test:
    unless $P110, loop1760_done
    shift $P111, $P110
  loop1760_redo:
    .const 'Sub' $P1755 = "115_1309859060.384" 
    capture_lex $P1755
    $P1755($P111)
  loop1760_next:
    goto loop1760_test
  loop1760_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1760_next
    eq $P114, .CONTROL_LOOP_REDO, loop1760_redo
  loop1760_done:
    pop_eh 
  for_undef_713:
.annotate 'line', 835
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1754"  :anon :subid("115_1309859060.384") :outer("114_1309859060.384")
    .param pmc param_1756
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 837
    .lex "$_", param_1756
.annotate 'line', 838
    find_lex $P113, "$_"
    unless_null $P113, vivify_714
    new $P113, "Undef"
  vivify_714:
    $P114 = $P113."key"()
    find_lex $P1758, "%cache"
    unless_null $P1758, vivify_715
    $P1758 = root_new ['parrot';'Hash']
  vivify_715:
    set $P115, $P1758[$P114]
    unless_null $P115, vivify_716
    new $P115, "Undef"
  vivify_716:
    unless $P115, unless_1757
    set $P112, $P115
    goto unless_1757_end
  unless_1757:
.annotate 'line', 839
    find_lex $P116, "$_"
    unless_null $P116, vivify_717
    new $P116, "Undef"
  vivify_717:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_718
    new $P118, "Undef"
  vivify_718:
    $P119 = $P118."key"()
    find_lex $P1759, "%cache"
    unless_null $P1759, vivify_719
    $P1759 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1759
  vivify_719:
    set $P1759[$P119], $P117
.annotate 'line', 838
    set $P112, $P117
  unless_1757_end:
.annotate 'line', 837
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("116_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1764
    .param pmc param_1765
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 846
    .const 'Sub' $P1771 = "117_1309859060.384" 
    capture_lex $P1771
    .lex "self", param_1764
    .lex "$obj", param_1765
.annotate 'line', 847
    $P1767 = root_new ['parrot';'Hash']
    set $P1766, $P1767
    .lex "%mapping", $P1766
.annotate 'line', 846
    find_lex $P1768, "%mapping"
    unless_null $P1768, vivify_722
    $P1768 = root_new ['parrot';'Hash']
  vivify_722:
.annotate 'line', 848
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1769, $P107, $P108, "@!mro"
    unless_null $P1769, vivify_723
    $P1769 = root_new ['parrot';'ResizablePMCArray']
  vivify_723:
    defined $I100, $P1769
    unless $I100, for_undef_724
    iter $P106, $P1769
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1783_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1783_test:
    unless $P106, loop1783_done
    shift $P109, $P106
  loop1783_redo:
    .const 'Sub' $P1771 = "117_1309859060.384" 
    capture_lex $P1771
    $P1771($P109)
  loop1783_next:
    goto loop1783_test
  loop1783_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1783_next
    eq $P112, .CONTROL_LOOP_REDO, loop1783_redo
  loop1783_done:
    pop_eh 
  for_undef_724:
.annotate 'line', 856
    find_lex $P1785, "%mapping"
    unless_null $P1785, vivify_735
    $P1785 = root_new ['parrot';'Hash']
  vivify_735:
    set $N100, $P1785
    if $N100, if_1784
    new $P106, 'Float'
    set $P106, $N100
    goto if_1784_end
  if_1784:
.annotate 'line', 857
    find_lex $P107, "$obj"
    unless_null $P107, vivify_736
    new $P107, "Undef"
  vivify_736:
    find_lex $P1786, "%mapping"
    unless_null $P1786, vivify_737
    $P1786 = root_new ['parrot';'Hash']
  vivify_737:
    stable_publish_vtable_mapping $P107, $P1786
  if_1784_end:
.annotate 'line', 846
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1770"  :anon :subid("117_1309859060.384") :outer("116_1309859060.384")
    .param pmc param_1774
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 848
    .const 'Sub' $P1777 = "118_1309859060.384" 
    capture_lex $P1777
.annotate 'line', 849
    $P1773 = root_new ['parrot';'Hash']
    set $P1772, $P1773
    .lex "%map", $P1772
    .lex "$_", param_1774
    find_lex $P110, "$_"
    unless_null $P110, vivify_725
    new $P110, "Undef"
  vivify_725:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_726
    new $P112, "Undef"
  vivify_726:
    $P113 = $P111."parrot_vtable_mappings"($P112, 1 :named("local"))
    store_lex "%map", $P113
.annotate 'line', 850
    find_lex $P1775, "%map"
    unless_null $P1775, vivify_727
    $P1775 = root_new ['parrot';'Hash']
  vivify_727:
    defined $I101, $P1775
    unless $I101, for_undef_728
    iter $P110, $P1775
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1782_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1782_test:
    unless $P110, loop1782_done
    shift $P111, $P110
  loop1782_redo:
    .const 'Sub' $P1777 = "118_1309859060.384" 
    capture_lex $P1777
    $P1777($P111)
  loop1782_next:
    goto loop1782_test
  loop1782_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1782_next
    eq $P114, .CONTROL_LOOP_REDO, loop1782_redo
  loop1782_done:
    pop_eh 
  for_undef_728:
.annotate 'line', 848
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1776"  :anon :subid("118_1309859060.384") :outer("117_1309859060.384")
    .param pmc param_1778
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 850
    .lex "$_", param_1778
.annotate 'line', 851
    find_lex $P113, "$_"
    unless_null $P113, vivify_729
    new $P113, "Undef"
  vivify_729:
    $P114 = $P113."key"()
    find_lex $P1780, "%mapping"
    unless_null $P1780, vivify_730
    $P1780 = root_new ['parrot';'Hash']
  vivify_730:
    set $P115, $P1780[$P114]
    unless_null $P115, vivify_731
    new $P115, "Undef"
  vivify_731:
    unless $P115, unless_1779
    set $P112, $P115
    goto unless_1779_end
  unless_1779:
.annotate 'line', 852
    find_lex $P116, "$_"
    unless_null $P116, vivify_732
    new $P116, "Undef"
  vivify_732:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_733
    new $P118, "Undef"
  vivify_733:
    $P119 = $P118."key"()
    find_lex $P1781, "%mapping"
    unless_null $P1781, vivify_734
    $P1781 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1781
  vivify_734:
    set $P1781[$P119], $P117
.annotate 'line', 851
    set $P112, $P117
  unless_1779_end:
.annotate 'line', 850
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("119_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1788
    .param pmc param_1789
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 861
    .const 'Sub' $P1795 = "120_1309859060.384" 
    capture_lex $P1795
    .lex "self", param_1788
    .lex "$obj", param_1789
.annotate 'line', 862
    $P1791 = root_new ['parrot';'Hash']
    set $P1790, $P1791
    .lex "%mapping", $P1790
.annotate 'line', 861
    find_lex $P1792, "%mapping"
    unless_null $P1792, vivify_738
    $P1792 = root_new ['parrot';'Hash']
  vivify_738:
.annotate 'line', 863
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1793, $P107, $P108, "@!mro"
    unless_null $P1793, vivify_739
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    defined $I100, $P1793
    unless $I100, for_undef_740
    iter $P106, $P1793
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1807_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1807_test:
    unless $P106, loop1807_done
    shift $P109, $P106
  loop1807_redo:
    .const 'Sub' $P1795 = "120_1309859060.384" 
    capture_lex $P1795
    $P1795($P109)
  loop1807_next:
    goto loop1807_test
  loop1807_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop1807_next
    eq $P112, .CONTROL_LOOP_REDO, loop1807_redo
  loop1807_done:
    pop_eh 
  for_undef_740:
.annotate 'line', 871
    find_lex $P1809, "%mapping"
    unless_null $P1809, vivify_751
    $P1809 = root_new ['parrot';'Hash']
  vivify_751:
    set $N100, $P1809
    if $N100, if_1808
    new $P106, 'Float'
    set $P106, $N100
    goto if_1808_end
  if_1808:
.annotate 'line', 872
    find_lex $P107, "$obj"
    unless_null $P107, vivify_752
    new $P107, "Undef"
  vivify_752:
    find_lex $P1810, "%mapping"
    unless_null $P1810, vivify_753
    $P1810 = root_new ['parrot';'Hash']
  vivify_753:
    stable_publish_vtable_handler_mapping $P107, $P1810
  if_1808_end:
.annotate 'line', 861
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1794"  :anon :subid("120_1309859060.384") :outer("119_1309859060.384")
    .param pmc param_1798
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 863
    .const 'Sub' $P1801 = "121_1309859060.384" 
    capture_lex $P1801
.annotate 'line', 864
    $P1797 = root_new ['parrot';'Hash']
    set $P1796, $P1797
    .lex "%map", $P1796
    .lex "$_", param_1798
    find_lex $P110, "$_"
    unless_null $P110, vivify_741
    new $P110, "Undef"
  vivify_741:
    get_how $P111, $P110
    find_lex $P112, "$_"
    unless_null $P112, vivify_742
    new $P112, "Undef"
  vivify_742:
    $P113 = $P111."parrot_vtable_handler_mappings"($P112, 1 :named("local"))
    store_lex "%map", $P113
.annotate 'line', 865
    find_lex $P1799, "%map"
    unless_null $P1799, vivify_743
    $P1799 = root_new ['parrot';'Hash']
  vivify_743:
    defined $I101, $P1799
    unless $I101, for_undef_744
    iter $P110, $P1799
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1806_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1806_test:
    unless $P110, loop1806_done
    shift $P111, $P110
  loop1806_redo:
    .const 'Sub' $P1801 = "121_1309859060.384" 
    capture_lex $P1801
    $P1801($P111)
  loop1806_next:
    goto loop1806_test
  loop1806_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1806_next
    eq $P114, .CONTROL_LOOP_REDO, loop1806_redo
  loop1806_done:
    pop_eh 
  for_undef_744:
.annotate 'line', 863
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1800"  :anon :subid("121_1309859060.384") :outer("120_1309859060.384")
    .param pmc param_1802
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 865
    .lex "$_", param_1802
.annotate 'line', 866
    find_lex $P113, "$_"
    unless_null $P113, vivify_745
    new $P113, "Undef"
  vivify_745:
    $P114 = $P113."key"()
    find_lex $P1804, "%mapping"
    unless_null $P1804, vivify_746
    $P1804 = root_new ['parrot';'Hash']
  vivify_746:
    set $P115, $P1804[$P114]
    unless_null $P115, vivify_747
    new $P115, "Undef"
  vivify_747:
    unless $P115, unless_1803
    set $P112, $P115
    goto unless_1803_end
  unless_1803:
.annotate 'line', 867
    find_lex $P116, "$_"
    unless_null $P116, vivify_748
    new $P116, "Undef"
  vivify_748:
    $P117 = $P116."value"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_749
    new $P118, "Undef"
  vivify_749:
    $P119 = $P118."key"()
    find_lex $P1805, "%mapping"
    unless_null $P1805, vivify_750
    $P1805 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1805
  vivify_750:
    set $P1805[$P119], $P117
.annotate 'line', 866
    set $P112, $P117
  unless_1803_end:
.annotate 'line', 865
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("122_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1812
    .param pmc param_1813
    .param pmc param_1814 :optional :named("local")
    .param int has_param_1814 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 879
    .lex "self", param_1812
    .lex "$obj", param_1813
    if has_param_1814, optparam_754
    new $P106, "Undef"
    set param_1814, $P106
  optparam_754:
    .lex "$local", param_1814
.annotate 'line', 880
    find_lex $P108, "$local"
    unless_null $P108, vivify_755
    new $P108, "Undef"
  vivify_755:
    if $P108, if_1815
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P1817, $P111, $P112, "@!mro"
    unless_null $P1817, vivify_756
    $P1817 = root_new ['parrot';'ResizablePMCArray']
  vivify_756:
    set $P107, $P1817
    goto if_1815_end
  if_1815:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1816, $P109, $P110, "@!parents"
    unless_null $P1816, vivify_757
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
    set $P107, $P1816
  if_1815_end:
.annotate 'line', 879
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("123_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1819
    .param pmc param_1820
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 883
    .lex "self", param_1819
    .lex "$obj", param_1820
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1821, $P106, $P107, "@!mro"
    unless_null $P1821, vivify_758
    $P1821 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    .return ($P1821)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("124_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1823
    .param pmc param_1824
    .param pmc param_1825 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 887
    .lex "self", param_1823
    .lex "$obj", param_1824
    .lex "$local", param_1825
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1826, $P106, $P107, "@!roles"
    unless_null $P1826, vivify_759
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    .return ($P1826)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("125_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1828
    .param pmc param_1829
    .param pmc param_1830 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 891
    .const 'Sub' $P1836 = "126_1309859060.384" 
    capture_lex $P1836
    .lex "self", param_1828
    .lex "$obj", param_1829
    .lex "$local", param_1830
.annotate 'line', 892
    $P1832 = root_new ['parrot';'ResizablePMCArray']
    set $P1831, $P1832
    .lex "@meths", $P1831
.annotate 'line', 891
    find_lex $P1833, "@meths"
    unless_null $P1833, vivify_760
    $P1833 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
.annotate 'line', 893
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1834, $P107, $P108, "%!methods"
    unless_null $P1834, vivify_761
    $P1834 = root_new ['parrot';'Hash']
  vivify_761:
    defined $I100, $P1834
    unless $I100, for_undef_762
    iter $P106, $P1834
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1839_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1839_test:
    unless $P106, loop1839_done
    shift $P109, $P106
  loop1839_redo:
    .const 'Sub' $P1836 = "126_1309859060.384" 
    capture_lex $P1836
    $P1836($P109)
  loop1839_next:
    goto loop1839_test
  loop1839_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1839_next
    eq $P111, .CONTROL_LOOP_REDO, loop1839_redo
  loop1839_done:
    pop_eh 
  for_undef_762:
.annotate 'line', 891
    find_lex $P1840, "@meths"
    unless_null $P1840, vivify_765
    $P1840 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    .return ($P1840)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1835"  :anon :subid("126_1309859060.384") :outer("125_1309859060.384")
    .param pmc param_1837
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 893
    .lex "$_", param_1837
.annotate 'line', 894
    find_lex $P1838, "@meths"
    unless_null $P1838, vivify_763
    $P1838 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    find_lex $P110, "$_"
    unless_null $P110, vivify_764
    new $P110, "Undef"
  vivify_764:
    $P111 = $P110."value"()
    $P112 = $P1838."push"($P111)
.annotate 'line', 893
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("127_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1842
    .param pmc param_1843
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 899
    .lex "self", param_1842
    .lex "$obj", param_1843
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1844, $P106, $P107, "%!methods"
    unless_null $P1844, vivify_766
    $P1844 = root_new ['parrot';'Hash']
  vivify_766:
    .return ($P1844)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("128_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1846
    .param pmc param_1847
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 903
    .lex "self", param_1846
    .lex "$obj", param_1847
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!name"
    unless_null $P108, vivify_767
    new $P108, "Undef"
  vivify_767:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("129_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1849
    .param pmc param_1850
    .param pmc param_1851 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 907
    .const 'Sub' $P1857 = "130_1309859060.384" 
    capture_lex $P1857
    .lex "self", param_1849
    .lex "$obj", param_1850
    .lex "$local", param_1851
.annotate 'line', 908
    $P1853 = root_new ['parrot';'ResizablePMCArray']
    set $P1852, $P1853
    .lex "@attrs", $P1852
.annotate 'line', 907
    find_lex $P1854, "@attrs"
    unless_null $P1854, vivify_768
    $P1854 = root_new ['parrot';'ResizablePMCArray']
  vivify_768:
.annotate 'line', 909
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1855, $P107, $P108, "%!attributes"
    unless_null $P1855, vivify_769
    $P1855 = root_new ['parrot';'Hash']
  vivify_769:
    defined $I100, $P1855
    unless $I100, for_undef_770
    iter $P106, $P1855
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1860_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1860_test:
    unless $P106, loop1860_done
    shift $P109, $P106
  loop1860_redo:
    .const 'Sub' $P1857 = "130_1309859060.384" 
    capture_lex $P1857
    $P1857($P109)
  loop1860_next:
    goto loop1860_test
  loop1860_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1860_next
    eq $P111, .CONTROL_LOOP_REDO, loop1860_redo
  loop1860_done:
    pop_eh 
  for_undef_770:
.annotate 'line', 907
    find_lex $P1861, "@attrs"
    unless_null $P1861, vivify_773
    $P1861 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    .return ($P1861)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1856"  :anon :subid("130_1309859060.384") :outer("129_1309859060.384")
    .param pmc param_1858
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 909
    .lex "$_", param_1858
.annotate 'line', 910
    find_lex $P1859, "@attrs"
    unless_null $P1859, vivify_771
    $P1859 = root_new ['parrot';'ResizablePMCArray']
  vivify_771:
    find_lex $P110, "$_"
    unless_null $P110, vivify_772
    new $P110, "Undef"
  vivify_772:
    $P111 = $P110."value"()
    $P112 = $P1859."push"($P111)
.annotate 'line', 909
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("131_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1863
    .param pmc param_1864
    .param pmc param_1865 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 915
    .lex "self", param_1863
    .lex "$obj", param_1864
    .lex "$local", param_1865
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1866, $P106, $P107, "%!parrot_vtable_mapping"
    unless_null $P1866, vivify_774
    $P1866 = root_new ['parrot';'Hash']
  vivify_774:
    .return ($P1866)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("132_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1868
    .param pmc param_1869
    .param pmc param_1870 :named("local")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 919
    .lex "self", param_1868
    .lex "$obj", param_1869
    .lex "$local", param_1870
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P1871, $P106, $P107, "%!parrot_vtable_handler_mapping"
    unless_null $P1871, vivify_775
    $P1871 = root_new ['parrot';'Hash']
  vivify_775:
    .return ($P1871)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("133_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1875
    .param pmc param_1876
    .param pmc param_1877
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 927
    new $P1874, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1874, control_1873
    push_eh $P1874
    .lex "self", param_1875
    .lex "$obj", param_1876
    .lex "$check", param_1877
.annotate 'line', 928
    new $P106, "Undef"
    set $P1878, $P106
    .lex "$check-class", $P1878
.annotate 'line', 929
    new $P107, "Undef"
    set $P1879, $P107
    .lex "$i", $P1879
.annotate 'line', 928
    find_lex $P108, "$check"
    unless_null $P108, vivify_776
    new $P108, "Undef"
  vivify_776:
    get_what $P109, $P108
    store_lex "$check-class", $P109
.annotate 'line', 929
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P1880, $P108, $P109, "@!mro"
    unless_null $P1880, vivify_777
    $P1880 = root_new ['parrot';'ResizablePMCArray']
  vivify_777:
    set $N100, $P1880
    new $P110, 'Float'
    set $P110, $N100
    store_lex "$i", $P110
.annotate 'line', 930
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1883_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1883_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_778
    new $P108, "Undef"
  vivify_778:
    set $N100, $P108
    isgt $I100, $N100, 0.0
    unless $I100, loop1883_done
  loop1883_redo:
.annotate 'line', 931
    find_lex $P109, "$i"
    unless_null $P109, vivify_779
    new $P109, "Undef"
  vivify_779:
    sub $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 932
    find_lex $P109, "$i"
    unless_null $P109, vivify_780
    new $P109, "Undef"
  vivify_780:
    set $I101, $P109
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1882, $P110, $P111, "@!mro"
    unless_null $P1882, vivify_781
    $P1882 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P112, $P1882[$I101]
    unless_null $P112, vivify_782
    new $P112, "Undef"
  vivify_782:
    find_lex $P113, "$check-class"
    unless_null $P113, vivify_783
    new $P113, "Undef"
  vivify_783:
    issame $I102, $P112, $P113
    unless $I102, if_1881_end
.annotate 'line', 933
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    new $P115, "Integer"
    assign $P115, 1
    setattribute $P114, 'payload', $P115
    throw $P114
  if_1881_end:
  loop1883_next:
.annotate 'line', 930
    goto loop1883_test
  loop1883_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1883_next
    eq $P110, .CONTROL_LOOP_REDO, loop1883_redo
  loop1883_done:
    pop_eh 
.annotate 'line', 936
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Integer"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 927
    .return ()
  control_1873:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("134_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1887
    .param pmc param_1888
    .param pmc param_1889
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 939
    new $P1886, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1886, control_1885
    push_eh $P1886
    .lex "self", param_1887
    .lex "$obj", param_1888
    .lex "$check", param_1889
.annotate 'line', 940
    new $P106, "Undef"
    set $P1890, $P106
    .lex "$i", $P1890
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1891, $P107, $P108, "@!done"
    unless_null $P1891, vivify_784
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $N100, $P1891
    new $P109, 'Float'
    set $P109, $N100
    store_lex "$i", $P109
.annotate 'line', 941
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1894_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1894_test:
    find_lex $P107, "$i"
    unless_null $P107, vivify_785
    new $P107, "Undef"
  vivify_785:
    set $N100, $P107
    isgt $I100, $N100, 0.0
    unless $I100, loop1894_done
  loop1894_redo:
.annotate 'line', 942
    find_lex $P108, "$i"
    unless_null $P108, vivify_786
    new $P108, "Undef"
  vivify_786:
    sub $P109, $P108, 1
    store_lex "$i", $P109
.annotate 'line', 943
    find_lex $P108, "$i"
    unless_null $P108, vivify_787
    new $P108, "Undef"
  vivify_787:
    set $I101, $P108
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P1893, $P109, $P110, "@!done"
    unless_null $P1893, vivify_788
    $P1893 = root_new ['parrot';'ResizablePMCArray']
  vivify_788:
    set $P111, $P1893[$I101]
    unless_null $P111, vivify_789
    new $P111, "Undef"
  vivify_789:
    find_lex $P112, "$check"
    unless_null $P112, vivify_790
    new $P112, "Undef"
  vivify_790:
    issame $I102, $P111, $P112
    unless $I102, if_1892_end
.annotate 'line', 944
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    new $P114, "Integer"
    assign $P114, 1
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1892_end:
  loop1894_next:
.annotate 'line', 941
    goto loop1894_test
  loop1894_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1894_next
    eq $P109, .CONTROL_LOOP_REDO, loop1894_redo
  loop1894_done:
    pop_eh 
.annotate 'line', 947
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Integer"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 939
    .return ()
  control_1885:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("135_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1898
    .param pmc param_1899
    .param pmc param_1900
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 950
    .const 'Sub' $P1903 = "136_1309859060.384" 
    capture_lex $P1903
    new $P1897, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1897, control_1896
    push_eh $P1897
    .lex "self", param_1898
    .lex "$obj", param_1899
    .lex "$name", param_1900
.annotate 'line', 951
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1901, $P107, $P108, "@!mro"
    unless_null $P1901, vivify_791
    $P1901 = root_new ['parrot';'ResizablePMCArray']
  vivify_791:
    defined $I100, $P1901
    unless $I100, for_undef_792
    iter $P106, $P1901
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1910_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1910_test:
    unless $P106, loop1910_done
    shift $P109, $P106
  loop1910_redo:
    .const 'Sub' $P1903 = "136_1309859060.384" 
    capture_lex $P1903
    $P1903($P109)
  loop1910_next:
    goto loop1910_test
  loop1910_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1910_next
    eq $P113, .CONTROL_LOOP_REDO, loop1910_redo
  loop1910_done:
    pop_eh 
  for_undef_792:
.annotate 'line', 958
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Integer"
    assign $P107, 0
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 950
    .return ()
  control_1896:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1902"  :anon :subid("136_1309859060.384") :outer("135_1309859060.384")
    .param pmc param_1907
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 952
    $P1905 = root_new ['parrot';'Hash']
    set $P1904, $P1905
    .lex "%meths", $P1904
.annotate 'line', 953
    new $P110, "Undef"
    set $P1906, $P110
    .lex "$can", $P1906
    .lex "$_", param_1907
.annotate 'line', 952
    find_lex $P111, "$_"
    unless_null $P111, vivify_793
    new $P111, "Undef"
  vivify_793:
    get_how $P112, $P111
    find_lex $P113, "$obj"
    unless_null $P113, vivify_794
    new $P113, "Undef"
  vivify_794:
    $P114 = $P112."method_table"($P113)
    store_lex "%meths", $P114
.annotate 'line', 953
    find_lex $P111, "$name"
    unless_null $P111, vivify_795
    new $P111, "Undef"
  vivify_795:
    find_lex $P1908, "%meths"
    unless_null $P1908, vivify_796
    $P1908 = root_new ['parrot';'Hash']
  vivify_796:
    set $P112, $P1908[$P111]
    unless_null $P112, vivify_797
    new $P112, "Undef"
  vivify_797:
    store_lex "$can", $P112
.annotate 'line', 954
    find_lex $P112, "$can"
    unless_null $P112, vivify_798
    new $P112, "Undef"
  vivify_798:
    defined $I101, $P112
    if $I101, if_1909
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1909_end
  if_1909:
.annotate 'line', 955
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    find_lex $P114, "$can"
    unless_null $P114, vivify_799
    new $P114, "Undef"
  vivify_799:
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1909_end:
.annotate 'line', 951
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("137_1309859060.384") :outer("77_1309859060.384")
    .param pmc param_1914
    .param pmc param_1915
    .param pmc param_1916
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 964
    .const 'Sub' $P1919 = "138_1309859060.384" 
    capture_lex $P1919
    new $P1913, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1913, control_1912
    push_eh $P1913
    .lex "self", param_1914
    .lex "$obj", param_1915
    .lex "$name", param_1916
.annotate 'line', 965
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P1917, $P107, $P108, "@!mro"
    unless_null $P1917, vivify_800
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    defined $I100, $P1917
    unless $I100, for_undef_801
    iter $P106, $P1917
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1926_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1926_test:
    unless $P106, loop1926_done
    shift $P109, $P106
  loop1926_redo:
    .const 'Sub' $P1919 = "138_1309859060.384" 
    capture_lex $P1919
    $P1919($P109)
  loop1926_next:
    goto loop1926_test
  loop1926_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1926_next
    eq $P113, .CONTROL_LOOP_REDO, loop1926_redo
  loop1926_done:
    pop_eh 
  for_undef_801:
.annotate 'line', 972
    null $P106
.annotate 'line', 964
    .return ($P106)
  control_1912:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1918"  :anon :subid("138_1309859060.384") :outer("137_1309859060.384")
    .param pmc param_1923
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 966
    $P1921 = root_new ['parrot';'Hash']
    set $P1920, $P1921
    .lex "%meths", $P1920
.annotate 'line', 967
    new $P110, "Undef"
    set $P1922, $P110
    .lex "$found", $P1922
    .lex "$_", param_1923
.annotate 'line', 966
    find_lex $P111, "$_"
    unless_null $P111, vivify_802
    new $P111, "Undef"
  vivify_802:
    get_how $P112, $P111
    find_lex $P113, "$obj"
    unless_null $P113, vivify_803
    new $P113, "Undef"
  vivify_803:
    $P114 = $P112."method_table"($P113)
    store_lex "%meths", $P114
.annotate 'line', 967
    find_lex $P111, "$name"
    unless_null $P111, vivify_804
    new $P111, "Undef"
  vivify_804:
    find_lex $P1924, "%meths"
    unless_null $P1924, vivify_805
    $P1924 = root_new ['parrot';'Hash']
  vivify_805:
    set $P112, $P1924[$P111]
    unless_null $P112, vivify_806
    new $P112, "Undef"
  vivify_806:
    store_lex "$found", $P112
.annotate 'line', 968
    find_lex $P112, "$found"
    unless_null $P112, vivify_807
    new $P112, "Undef"
  vivify_807:
    defined $I101, $P112
    if $I101, if_1925
    new $P111, 'Integer'
    set $P111, $I101
    goto if_1925_end
  if_1925:
.annotate 'line', 969
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    find_lex $P114, "$found"
    unless_null $P114, vivify_808
    new $P114, "Undef"
  vivify_808:
    setattribute $P113, 'payload', $P114
    throw $P113
  if_1925_end:
.annotate 'line', 965
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1928"  :subid("139_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 977
    .const 'Sub' $P1962 = "147_1309859060.384" 
    capture_lex $P1962
    .const 'Sub' $P1959 = "146_1309859060.384" 
    capture_lex $P1959
    .const 'Sub' $P1955 = "145_1309859060.384" 
    capture_lex $P1955
    .const 'Sub' $P1950 = "144_1309859060.384" 
    capture_lex $P1950
    .const 'Sub' $P1945 = "143_1309859060.384" 
    capture_lex $P1945
    .const 'Sub' $P1939 = "142_1309859060.384" 
    capture_lex $P1939
    .const 'Sub' $P1936 = "141_1309859060.384" 
    capture_lex $P1936
    .const 'Sub' $P1932 = "140_1309859060.384" 
    capture_lex $P1932
    .lex "$?PACKAGE", $P1930
    .lex "$?CLASS", $P1931
.annotate 'line', 1017
    .const 'Sub' $P1962 = "147_1309859060.384" 
    newclosure $P1965, $P1962
.annotate 'line', 977
    .return ($P1965)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("140_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1933
    .param pmc param_1934 :optional :named("name")
    .param int has_param_1934 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 981
    .lex "self", param_1933
    if has_param_1934, optparam_809
    new $P100, "Undef"
    set param_1934, $P100
  optparam_809:
    .lex "$name", param_1934
.annotate 'line', 982
    new $P101, "Undef"
    set $P1935, $P101
    .lex "$obj", $P1935
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 983
    find_lex $P102, "$obj"
    unless_null $P102, vivify_810
    new $P102, "Undef"
  vivify_810:
    find_lex $P103, "$name"
    unless_null $P103, vivify_811
    new $P103, "Undef"
  vivify_811:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 981
    find_lex $P102, "$obj"
    unless_null $P102, vivify_812
    new $P102, "Undef"
  vivify_812:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("141_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1937
    .param pmc param_1938 :optional :named("name")
    .param int has_param_1938 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 987
    .lex "self", param_1937
    if has_param_1938, optparam_813
    new $P100, "Undef"
    set param_1938, $P100
  optparam_813:
    .lex "$name", param_1938
.annotate 'line', 988
    find_lex $P101, "$name"
    unless_null $P101, vivify_814
    new $P101, "Undef"
  vivify_814:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!name", $P101
.annotate 'line', 987
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("142_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1940
    .param pmc param_1942 :named("repr")
    .param pmc param_1941 :optional :named("name")
    .param int has_param_1941 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 994
    .lex "self", param_1940
    if has_param_1941, optparam_815
    new $P100, "String"
    assign $P100, "<anon>"
    set param_1941, $P100
  optparam_815:
    .lex "$name", param_1941
    .lex "$repr", param_1942
.annotate 'line', 995
    new $P101, "Undef"
    set $P1943, $P101
    .lex "$metaclass", $P1943
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_816
    new $P103, "Undef"
  vivify_816:
    $P104 = $P102."new"($P103 :named("name"))
    store_lex "$metaclass", $P104
.annotate 'line', 997
    find_lex $P102, "$metaclass"
    unless_null $P102, vivify_817
    new $P102, "Undef"
  vivify_817:
    find_lex $P103, "$repr"
    unless_null $P103, vivify_818
    new $P103, "Undef"
  vivify_818:
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
    $P1944 = root_new ['parrot';'Hash']
    set_who $P104, $P1944
.annotate 'line', 994
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("143_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1946
    .param pmc param_1947
    .param pmc param_1948
    .param pmc param_1949
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1001
    .lex "self", param_1946
    .lex "$obj", param_1947
    .lex "$name", param_1948
    .lex "$code_obj", param_1949
.annotate 'line', 1002
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1001
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("144_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1951
    .param pmc param_1952
    .param pmc param_1953
    .param pmc param_1954
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1005
    .lex "self", param_1951
    .lex "$obj", param_1952
    .lex "$name", param_1953
    .lex "$code_obj", param_1954
.annotate 'line', 1006
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1005
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("145_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1956
    .param pmc param_1957
    .param pmc param_1958
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1009
    .lex "self", param_1956
    .lex "$obj", param_1957
    .lex "$meta_attr", param_1958
.annotate 'line', 1010
    die "Native types may not have attributes"
.annotate 'line', 1009
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("146_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1960
    .param pmc param_1961
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1013
    .lex "self", param_1960
    .lex "$obj", param_1961
.annotate 'line', 1014
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 1013
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("147_1309859060.384") :outer("139_1309859060.384")
    .param pmc param_1963
    .param pmc param_1964
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1017
    .lex "self", param_1963
    .lex "$obj", param_1964
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_819
    new $P102, "Undef"
  vivify_819:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1966"  :subid("148_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1023
    .const 'Sub' $P2030 = "161_1309859060.384" 
    capture_lex $P2030
    .const 'Sub' $P2007 = "156_1309859060.384" 
    capture_lex $P2007
    .const 'Sub' $P2004 = "155_1309859060.384" 
    capture_lex $P2004
    .const 'Sub' $P1999 = "154_1309859060.384" 
    capture_lex $P1999
    .const 'Sub' $P1997 = "153_1309859060.384" 
    capture_lex $P1997
    .const 'Sub' $P1992 = "152_1309859060.384" 
    capture_lex $P1992
    .const 'Sub' $P1986 = "151_1309859060.384" 
    capture_lex $P1986
    .const 'Sub' $P1969 = "149_1309859060.384" 
    capture_lex $P1969
.annotate 'line', 1083
    .const 'Sub' $P1969 = "149_1309859060.384" 
    newclosure $P1983, $P1969
    set $P1968, $P1983
    .lex "has_method", $P1968
.annotate 'line', 1023
    .lex "$?PACKAGE", $P1984
    .lex "$?CLASS", $P1985
    find_lex $P101, "has_method"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("149_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_1972
    .param pmc param_1973
    .param pmc param_1974
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1083
    .const 'Sub' $P1979 = "150_1309859060.384" 
    capture_lex $P1979
    new $P1971, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1971, control_1970
    push_eh $P1971
    .lex "$target", param_1972
    .lex "$name", param_1973
    .lex "$local", param_1974
.annotate 'line', 1084
    $P1976 = root_new ['parrot';'ResizablePMCArray']
    set $P1975, $P1976
    .lex "@methods", $P1975
    find_lex $P100, "$target"
    unless_null $P100, vivify_820
    new $P100, "Undef"
  vivify_820:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_821
    new $P102, "Undef"
  vivify_821:
    find_lex $P103, "$local"
    unless_null $P103, vivify_822
    new $P103, "Undef"
  vivify_822:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 1085
    find_lex $P1977, "@methods"
    unless_null $P1977, vivify_823
    $P1977 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    defined $I100, $P1977
    unless $I100, for_undef_824
    iter $P100, $P1977
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1982_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1982_test:
    unless $P100, loop1982_done
    shift $P101, $P100
  loop1982_redo:
    .const 'Sub' $P1979 = "150_1309859060.384" 
    capture_lex $P1979
    $P1979($P101)
  loop1982_next:
    goto loop1982_test
  loop1982_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1982_next
    eq $P104, .CONTROL_LOOP_REDO, loop1982_redo
  loop1982_done:
    pop_eh 
  for_undef_824:
.annotate 'line', 1088
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Integer"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1083
    .return ()
  control_1970:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1978"  :anon :subid("150_1309859060.384") :outer("149_1309859060.384")
    .param pmc param_1980
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1085
    .lex "$_", param_1980
.annotate 'line', 1086
    find_lex $P103, "$_"
    unless_null $P103, vivify_825
    new $P103, "Undef"
  vivify_825:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_826
    new $P104, "Undef"
  vivify_826:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_1981
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1981_end
  if_1981:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Integer"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_1981_end:
.annotate 'line', 1085
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("151_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_1987
    .param pmc param_1988 :named("name")
    .param pmc param_1989 :optional :named("type")
    .param int has_param_1989 :opt_flag
    .param pmc param_1990 :optional :named("box_target")
    .param int has_param_1990 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1028
    .lex "self", param_1987
    .lex "$name", param_1988
    if has_param_1989, optparam_827
    new $P101, "Undef"
    set param_1989, $P101
  optparam_827:
    .lex "$type", param_1989
    if has_param_1990, optparam_828
    new $P102, "Undef"
    set param_1990, $P102
  optparam_828:
    .lex "$box_target", param_1990
.annotate 'line', 1029
    new $P103, "Undef"
    set $P1991, $P103
    .lex "$attr", $P1991
    find_lex $P104, "self"
    repr_instance_of $P105, $P104
    store_lex "$attr", $P105
.annotate 'line', 1030
    find_lex $P104, "$attr"
    unless_null $P104, vivify_829
    new $P104, "Undef"
  vivify_829:
    find_lex $P105, "$name"
    unless_null $P105, vivify_830
    new $P105, "Undef"
  vivify_830:
    find_lex $P106, "$type"
    unless_null $P106, vivify_831
    new $P106, "Undef"
  vivify_831:
    find_lex $P107, "$box_target"
    unless_null $P107, vivify_832
    new $P107, "Undef"
  vivify_832:
    $P104."BUILD"($P105 :named("name"), $P106 :named("type"), $P107 :named("box_target"))
.annotate 'line', 1028
    find_lex $P104, "$attr"
    unless_null $P104, vivify_833
    new $P104, "Undef"
  vivify_833:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("152_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_1993
    .param pmc param_1994 :optional :named("name")
    .param int has_param_1994 :opt_flag
    .param pmc param_1995 :optional :named("type")
    .param int has_param_1995 :opt_flag
    .param pmc param_1996 :optional :named("box_target")
    .param int has_param_1996 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1034
    .lex "self", param_1993
    if has_param_1994, optparam_834
    new $P101, "Undef"
    set param_1994, $P101
  optparam_834:
    .lex "$name", param_1994
    if has_param_1995, optparam_835
    new $P102, "Undef"
    set param_1995, $P102
  optparam_835:
    .lex "$type", param_1995
    if has_param_1996, optparam_836
    new $P103, "Undef"
    set param_1996, $P103
  optparam_836:
    .lex "$box_target", param_1996
.annotate 'line', 1035
    find_lex $P104, "$name"
    unless_null $P104, vivify_837
    new $P104, "Undef"
  vivify_837:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!name", $P104
.annotate 'line', 1036
    find_lex $P104, "$type"
    unless_null $P104, vivify_838
    new $P104, "Undef"
  vivify_838:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!type", $P104
.annotate 'line', 1037
    find_lex $P104, "$box_target"
    unless_null $P104, vivify_839
    new $P104, "Undef"
  vivify_839:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!box_target", $P104
.annotate 'line', 1034
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("153_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_1998
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1040
    .lex "self", param_1998
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_840
    new $P103, "Undef"
  vivify_840:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("154_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_2000
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1044
    .lex "self", param_2000
.annotate 'line', 1045
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!type"
    unless_null $P103, vivify_841
    new $P103, "Undef"
  vivify_841:
    set $P2001, $P103
    defined $I2003, $P2001
    if $I2003, default_2002
    null $P104
    set $P2001, $P104
  default_2002:
.annotate 'line', 1044
    .return ($P2001)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("155_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_2005
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1048
    .lex "self", param_2005
.annotate 'line', 1049
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!box_target"
    unless_null $P104, vivify_842
    new $P104, "Undef"
  vivify_842:
    if $P104, if_2006
    new $P106, "Integer"
    assign $P106, 0
    set $P101, $P106
    goto if_2006_end
  if_2006:
    new $P105, "Integer"
    assign $P105, 1
    set $P101, $P105
  if_2006_end:
.annotate 'line', 1048
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("156_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_2008
    .param pmc param_2009
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1052
    .const 'Sub' $P2023 = "159_1309859060.384" 
    capture_lex $P2023
    .const 'Sub' $P2013 = "157_1309859060.384" 
    capture_lex $P2013
    .lex "self", param_2008
    .lex "$obj", param_2009
.annotate 'line', 1053
    new $P101, "Undef"
    set $P2010, $P101
    .lex "$long_name", $P2010
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_843
    new $P104, "Undef"
  vivify_843:
    set $S100, $P104
    new $P105, 'String'
    set $P105, $S100
    store_lex "$long_name", $P105
.annotate 'line', 1054
    find_lex $P103, "self"
    $P104 = $P103."has_mutator"()
    if $P104, if_2011
.annotate 'line', 1066
    .const 'Sub' $P2023 = "159_1309859060.384" 
    capture_lex $P2023
    $P110 = $P2023()
    set $P102, $P110
.annotate 'line', 1054
    goto if_2011_end
  if_2011:
    .const 'Sub' $P2013 = "157_1309859060.384" 
    capture_lex $P2013
    $P107 = $P2013()
    set $P102, $P107
  if_2011_end:
.annotate 'line', 1052
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2022"  :anon :subid("159_1309859060.384") :outer("156_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1066
    .const 'Sub' $P2027 = "160_1309859060.384" 
    capture_lex $P2027
.annotate 'line', 1067
    new $P108, "Undef"
    set $P2024, $P108
    .lex "$method", $P2024
    find_lex $P109, "$long_name"
    unless_null $P109, vivify_844
    new $P109, "Undef"
  vivify_844:
    set $S100, $P109
    substr $S101, $S100, 2
    new $P110, 'String'
    set $P110, $S101
    store_lex "$method", $P110
.annotate 'line', 1068
    find_lex $P110, "$obj"
    unless_null $P110, vivify_845
    new $P110, "Undef"
  vivify_845:
    find_lex $P111, "$method"
    unless_null $P111, vivify_846
    new $P111, "Undef"
  vivify_846:
    $P112 = "has_method"($P110, $P111, 0)
    unless $P112, unless_2025
    set $P109, $P112
    goto unless_2025_end
  unless_2025:
.annotate 'line', 1069
    find_lex $P113, "$obj"
    unless_null $P113, vivify_847
    new $P113, "Undef"
  vivify_847:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_848
    new $P115, "Undef"
  vivify_848:
    find_lex $P116, "$method"
    unless_null $P116, vivify_849
    new $P116, "Undef"
  vivify_849:
.annotate 'line', 1070
    .const 'Sub' $P2027 = "160_1309859060.384" 
    newclosure $P2029, $P2027
    $P117 = $P114."add_method"($P115, $P116, $P2029)
.annotate 'line', 1068
    set $P109, $P117
  unless_2025_end:
.annotate 'line', 1066
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2026"  :anon :subid("160_1309859060.384") :outer("159_1309859060.384")
    .param pmc param_2028
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1070
    .lex "self", param_2028
.annotate 'line', 1071
    find_lex $P117, "self"
    find_lex $P118, "$obj"
    unless_null $P118, vivify_850
    new $P118, "Undef"
  vivify_850:
    get_what $P119, $P118
    find_lex $P120, "$long_name"
    unless_null $P120, vivify_851
    new $P120, "Undef"
  vivify_851:
    set $S100, $P120
    getattribute $P121, $P117, $P119, $S100
.annotate 'line', 1070
    .return ($P121)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2012"  :anon :subid("157_1309859060.384") :outer("156_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1054
    .const 'Sub' $P2017 = "158_1309859060.384" 
    capture_lex $P2017
.annotate 'line', 1055
    new $P105, "Undef"
    set $P2014, $P105
    .lex "$method", $P2014
    find_lex $P106, "$long_name"
    unless_null $P106, vivify_852
    new $P106, "Undef"
  vivify_852:
    set $S100, $P106
    substr $S101, $S100, 1
    new $P107, 'String'
    set $P107, $S101
    store_lex "$method", $P107
.annotate 'line', 1056
    find_lex $P107, "$obj"
    unless_null $P107, vivify_853
    new $P107, "Undef"
  vivify_853:
    find_lex $P108, "$method"
    unless_null $P108, vivify_854
    new $P108, "Undef"
  vivify_854:
    $P109 = "has_method"($P107, $P108, 0)
    unless $P109, unless_2015
    set $P106, $P109
    goto unless_2015_end
  unless_2015:
.annotate 'line', 1057
    find_lex $P110, "$obj"
    unless_null $P110, vivify_855
    new $P110, "Undef"
  vivify_855:
    get_how $P111, $P110
    find_lex $P112, "$obj"
    unless_null $P112, vivify_856
    new $P112, "Undef"
  vivify_856:
    get_what $P113, $P112
    find_lex $P114, "$method"
    unless_null $P114, vivify_857
    new $P114, "Undef"
  vivify_857:
    .const 'Sub' $P2017 = "158_1309859060.384" 
    newclosure $P2021, $P2017
    $P116 = $P111."add_method"($P113, $P114, $P2021)
.annotate 'line', 1056
    set $P106, $P116
  unless_2015_end:
.annotate 'line', 1054
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2016"  :anon :subid("158_1309859060.384") :outer("157_1309859060.384")
    .param pmc param_2018
    .param pmc param_2019 :optional
    .param int has_param_2019 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1057
    .lex "self", param_2018
    if has_param_2019, optparam_858
    new $P115, "Undef"
    set param_2019, $P115
  optparam_858:
    .lex "$value", param_2019
.annotate 'line', 1059
    find_lex $P116, "$value"
    unless_null $P116, vivify_859
    new $P116, "Undef"
  vivify_859:
    defined $I100, $P116
    unless $I100, if_2020_end
.annotate 'line', 1058
    find_lex $P117, "self"
    find_lex $P118, "$obj"
    unless_null $P118, vivify_860
    new $P118, "Undef"
  vivify_860:
    get_what $P119, $P118
    find_lex $P120, "$long_name"
    unless_null $P120, vivify_861
    new $P120, "Undef"
  vivify_861:
    set $S100, $P120
    find_lex $P121, "$value"
    unless_null $P121, vivify_862
    new $P121, "Undef"
  vivify_862:
    setattribute $P117, $P119, $S100, $P121
  if_2020_end:
.annotate 'line', 1061
    find_lex $P116, "self"
    find_lex $P117, "$obj"
    unless_null $P117, vivify_863
    new $P117, "Undef"
  vivify_863:
    get_what $P118, $P117
    find_lex $P119, "$long_name"
    unless_null $P119, vivify_864
    new $P119, "Undef"
  vivify_864:
    set $S100, $P119
    getattribute $P120, $P116, $P118, $S100
.annotate 'line', 1057
    .return ($P120)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("161_1309859060.384") :outer("148_1309859060.384")
    .param pmc param_2031
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1079
    .lex "self", param_2031
.annotate 'line', 1080
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!name"
    unless_null $P103, vivify_865
    new $P103, "Undef"
  vivify_865:
    set $S100, $P103
    substr $S101, $S100, 1, 1
    isne $I100, $S101, "!"
.annotate 'line', 1079
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2032"  :subid("162_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1094
    .const 'Sub' $P2065 = "170_1309859060.384" 
    capture_lex $P2065
    .const 'Sub' $P2062 = "169_1309859060.384" 
    capture_lex $P2062
    .const 'Sub' $P2058 = "168_1309859060.384" 
    capture_lex $P2058
    .const 'Sub' $P2053 = "167_1309859060.384" 
    capture_lex $P2053
    .const 'Sub' $P2048 = "166_1309859060.384" 
    capture_lex $P2048
    .const 'Sub' $P2043 = "165_1309859060.384" 
    capture_lex $P2043
    .const 'Sub' $P2040 = "164_1309859060.384" 
    capture_lex $P2040
    .const 'Sub' $P2036 = "163_1309859060.384" 
    capture_lex $P2036
    .lex "$?PACKAGE", $P2034
    .lex "$?CLASS", $P2035
.annotate 'line', 1135
    .const 'Sub' $P2065 = "170_1309859060.384" 
    newclosure $P2068, $P2065
.annotate 'line', 1094
    .return ($P2068)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("163_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2037
    .param pmc param_2038 :optional :named("name")
    .param int has_param_2038 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1098
    .lex "self", param_2037
    if has_param_2038, optparam_866
    new $P100, "Undef"
    set param_2038, $P100
  optparam_866:
    .lex "$name", param_2038
.annotate 'line', 1099
    new $P101, "Undef"
    set $P2039, $P101
    .lex "$obj", $P2039
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 1100
    find_lex $P102, "$obj"
    unless_null $P102, vivify_867
    new $P102, "Undef"
  vivify_867:
    find_lex $P103, "$name"
    unless_null $P103, vivify_868
    new $P103, "Undef"
  vivify_868:
    $P102."BUILD"($P103 :named("name"))
.annotate 'line', 1098
    find_lex $P102, "$obj"
    unless_null $P102, vivify_869
    new $P102, "Undef"
  vivify_869:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("164_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2041
    .param pmc param_2042 :optional :named("name")
    .param int has_param_2042 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1104
    .lex "self", param_2041
    if has_param_2042, optparam_870
    new $P100, "Undef"
    set param_2042, $P100
  optparam_870:
    .lex "$name", param_2042
.annotate 'line', 1105
    find_lex $P101, "$name"
    unless_null $P101, vivify_871
    new $P101, "Undef"
  vivify_871:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!name", $P101
.annotate 'line', 1104
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("165_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2044
    .param pmc param_2045 :optional :named("name")
    .param int has_param_2045 :opt_flag
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1110
    .lex "self", param_2044
    if has_param_2045, optparam_872
    new $P100, "String"
    assign $P100, "<anon>"
    set param_2045, $P100
  optparam_872:
    .lex "$name", param_2045
.annotate 'line', 1111
    new $P101, "Undef"
    set $P2046, $P101
    .lex "$metaclass", $P2046
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_873
    new $P103, "Undef"
  vivify_873:
    $P104 = $P102."new"($P103 :named("name"))
    store_lex "$metaclass", $P104
.annotate 'line', 1113
    find_lex $P102, "$metaclass"
    unless_null $P102, vivify_874
    new $P102, "Undef"
  vivify_874:
    new $P103, "String"
    assign $P103, "Uninstantiable"
    set $S100, $P103
    repr_type_object_for $P104, $P102, $S100
    $P2047 = root_new ['parrot';'Hash']
    set_who $P104, $P2047
.annotate 'line', 1110
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("166_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2049
    .param pmc param_2050
    .param pmc param_2051
    .param pmc param_2052
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1117
    .lex "self", param_2049
    .lex "$obj", param_2050
    .lex "$name", param_2051
    .lex "$code_obj", param_2052
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("167_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2054
    .param pmc param_2055
    .param pmc param_2056
    .param pmc param_2057
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2054
    .lex "$obj", param_2055
    .lex "$name", param_2056
    .lex "$code_obj", param_2057
.annotate 'line', 1124
    die "Modules may not have methods"
.annotate 'line', 1123
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("168_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2059
    .param pmc param_2060
    .param pmc param_2061
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1127
    .lex "self", param_2059
    .lex "$obj", param_2060
    .lex "$meta_attr", param_2061
.annotate 'line', 1128
    die "Modules may not have attributes"
.annotate 'line', 1127
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("169_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2063
    .param pmc param_2064
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1131
    .lex "self", param_2063
    .lex "$obj", param_2064
.annotate 'line', 1132
    new $P100, "Integer"
    assign $P100, 1
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    setattribute $P101, $P102, "$!composed", $P100
.annotate 'line', 1131
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("170_1309859060.384") :outer("162_1309859060.384")
    .param pmc param_2066
    .param pmc param_2067
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1135
    .lex "self", param_2066
    .lex "$obj", param_2067
    find_lex $P100, "self"
    find_lex $P101, "$?CLASS"
    getattribute $P102, $P100, $P101, "$!name"
    unless_null $P102, vivify_875
    new $P102, "Undef"
  vivify_875:
    .return ($P102)
.end


.HLL "nqp"

.namespace []
.sub "_block2069"  :anon :subid("171_1309859060.384") :outer("10_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1143
    .lex "$?PACKAGE", $P2071
    .lex "$?CLASS", $P2072
.annotate 'line', 1144
    find_lex $P100, "NQPModuleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_876
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_876:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1145
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_877
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_877:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1146
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_878
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_878:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1147
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_879
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_879:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1148
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_880
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_880:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1149
    find_lex $P100, "NQPParametricRoleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_881
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_881:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1150
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_882
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_882:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1151
    find_lex $P100, "NQPNativeHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_883
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_883:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1143
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2074" :load :anon :subid("172_1309859060.384")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1
    .const 'Sub' $P2076 = "10_1309859060.384" 
    $P106 = $P2076()
    .return ($P106)
.end

