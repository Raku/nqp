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
.sub "_block1000"  :anon :subid("10_1321350732.3287")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2096 = "183_1321350732.3287" 
    capture_lex $P2096
    .const 'Sub' $P2056 = "173_1321350732.3287" 
    capture_lex $P2056
    .const 'Sub' $P2005 = "161_1321350732.3287" 
    capture_lex $P2005
    .const 'Sub' $P1964 = "151_1321350732.3287" 
    capture_lex $P1964
    .const 'Sub' $P1497 = "90_1321350732.3287" 
    capture_lex $P1497
    .const 'Sub' $P1353 = "64_1321350732.3287" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "55_1321350732.3287" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "32_1321350732.3287" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "22_1321350732.3287" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "11_1321350732.3287" 
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
    .const 'Sub' $P1016 = "11_1321350732.3287" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "22_1321350732.3287" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "32_1321350732.3287" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "55_1321350732.3287" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "64_1321350732.3287" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 574
    .const 'Sub' $P1497 = "90_1321350732.3287" 
    capture_lex $P1497
    $P1497()
.annotate 'line', 1067
    .const 'Sub' $P1964 = "151_1321350732.3287" 
    capture_lex $P1964
    $P1964()
.annotate 'line', 1118
    .const 'Sub' $P2005 = "161_1321350732.3287" 
    capture_lex $P2005
    $P2005()
.annotate 'line', 1200
    .const 'Sub' $P2056 = "173_1321350732.3287" 
    capture_lex $P2056
    $P2056()
.annotate 'line', 1254
    .const 'Sub' $P2096 = "183_1321350732.3287" 
    capture_lex $P2096
    $P2096()
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_2099
    set $P100, $P101
    goto if_2099_end
  if_2099:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2099_end:
    .return ($P100)
    .const 'Sub' $P2101 = "184_1321350732.3287" 
    .return ($P2101)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post185") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1321350732.3287" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1321350728.68316"
    isnull $I100, $P107
    if $I100, if_2103
    goto if_2103_end
  if_2103:
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1321350728.68316"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src/stage2/gen/nqp-mo.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I101, $P112
    unless $I101, if_2104_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2104_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P113
    .const 'Sub' $P2105 = "10_1321350732.3287" 
    $P112 = $P2105."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P2106 = "10_1321350732.3287" 
    $P114 = $P2106."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2107 = "10_1321350732.3287" 
    $P112 = $P2107."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2108 = "10_1321350732.3287" 
    $P114 = $P2108."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("Archetypes" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P113
    .const 'Sub' $P2109 = "10_1321350732.3287" 
    $P112 = $P2109."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 1
    $P112."set_static_lexpad_value"("Archetypes", $P113)
    .const 'Sub' $P2110 = "10_1321350732.3287" 
    $P114 = $P2110."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominal" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!generic" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!parametric" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2111 = "12_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2111)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2112 = "13_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2112)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2113 = "14_1321350732.3287" 
    $P113."add_method"($P114, "nominal", $P2113)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2114 = "15_1321350732.3287" 
    $P113."add_method"($P114, "nominalizable", $P2114)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2115 = "16_1321350732.3287" 
    $P113."add_method"($P114, "inheritable", $P2115)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2116 = "17_1321350732.3287" 
    $P113."add_method"($P114, "inheritalizable", $P2116)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2117 = "18_1321350732.3287" 
    $P113."add_method"($P114, "composable", $P2117)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2118 = "19_1321350732.3287" 
    $P113."add_method"($P114, "composalizable", $P2118)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2119 = "20_1321350732.3287" 
    $P113."add_method"($P114, "generic", $P2119)
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    .const 'Sub' $P2120 = "21_1321350732.3287" 
    $P113."add_method"($P114, "parametric", $P2120)
    .const 'Sub' $P2121 = "11_1321350732.3287" 
    $P112 = $P2121."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2122 = "11_1321350732.3287" 
    $P114 = $P2122."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2123 = "11_1321350732.3287" 
    $P112 = $P2123."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2124 = "11_1321350732.3287" 
    $P114 = $P2124."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 12, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 12
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'Sub' $P2125 = "10_1321350732.3287" 
    $P112 = $P2125."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 12
    $P112."set_static_lexpad_value"("RoleToRoleApplier", $P113)
    .const 'Sub' $P2126 = "10_1321350732.3287" 
    $P114 = $P2126."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 12
    .const 'Sub' $P2127 = "23_1321350732.3287" 
    $P113."add_method"($P114, "apply", $P2127)
    .const 'Sub' $P2128 = "22_1321350732.3287" 
    $P112 = $P2128."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 12
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2129 = "22_1321350732.3287" 
    $P114 = $P2129."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2130 = "22_1321350732.3287" 
    $P112 = $P2130."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 12
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2131 = "22_1321350732.3287" 
    $P114 = $P2131."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 12
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 14, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 14
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'Sub' $P2132 = "10_1321350732.3287" 
    $P112 = $P2132."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 14
    $P112."set_static_lexpad_value"("NQPConcreteRoleHOW", $P113)
    .const 'Sub' $P2133 = "10_1321350732.3287" 
    $P114 = $P2133."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!role_typecheck_list" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2134 = "33_1321350732.3287" 
    $P113."add_method"($P114, "archetypes", $P2134)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2135 = "34_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2135)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2136 = "35_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2136)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2137 = "36_1321350732.3287" 
    $P113."add_method"($P114, "new_type", $P2137)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2138 = "37_1321350732.3287" 
    $P113."add_method"($P114, "add_method", $P2138)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2139 = "38_1321350732.3287" 
    $P113."add_method"($P114, "add_multi_method", $P2139)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2140 = "39_1321350732.3287" 
    $P113."add_method"($P114, "add_attribute", $P2140)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2141 = "40_1321350732.3287" 
    $P113."add_method"($P114, "add_parent", $P2141)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2142 = "41_1321350732.3287" 
    $P113."add_method"($P114, "add_role", $P2142)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2143 = "42_1321350732.3287" 
    $P113."add_method"($P114, "add_collision", $P2143)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2144 = "43_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2144)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2145 = "45_1321350732.3287" 
    $P113."add_method"($P114, "methods", $P2145)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2146 = "47_1321350732.3287" 
    $P113."add_method"($P114, "method_table", $P2146)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2147 = "48_1321350732.3287" 
    $P113."add_method"($P114, "collisions", $P2147)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2148 = "49_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2148)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2149 = "50_1321350732.3287" 
    $P113."add_method"($P114, "attributes", $P2149)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2150 = "52_1321350732.3287" 
    $P113."add_method"($P114, "roles", $P2150)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2151 = "53_1321350732.3287" 
    $P113."add_method"($P114, "role_typecheck_list", $P2151)
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    .const 'Sub' $P2152 = "54_1321350732.3287" 
    $P113."add_method"($P114, "instance_of", $P2152)
    .const 'Sub' $P2153 = "32_1321350732.3287" 
    $P112 = $P2153."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 14
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2154 = "32_1321350732.3287" 
    $P114 = $P2154."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2155 = "32_1321350732.3287" 
    $P112 = $P2155."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 14
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2156 = "32_1321350732.3287" 
    $P114 = $P2156."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 14
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 34, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 34
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'Sub' $P2157 = "10_1321350732.3287" 
    $P112 = $P2157."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 34
    $P112."set_static_lexpad_value"("RoleToClassApplier", $P113)
    .const 'Sub' $P2158 = "10_1321350732.3287" 
    $P114 = $P2158."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 34
    .const 'Sub' $P2159 = "59_1321350732.3287" 
    $P113."add_method"($P114, "apply", $P2159)
    .const 'Sub' $P2160 = "55_1321350732.3287" 
    $P112 = $P2160."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 34
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2161 = "55_1321350732.3287" 
    $P114 = $P2161."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2162 = "55_1321350732.3287" 
    $P112 = $P2162."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 34
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2163 = "55_1321350732.3287" 
    $P114 = $P2163."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 34
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 36, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 36
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'Sub' $P2164 = "10_1321350732.3287" 
    $P112 = $P2164."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 36
    $P112."set_static_lexpad_value"("NQPParametricRoleHOW", $P113)
    .const 'Sub' $P2165 = "10_1321350732.3287" 
    $P114 = $P2165."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2166 = "66_1321350732.3287" 
    $P113."add_method"($P114, "archetypes", $P2166)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2167 = "67_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2167)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2168 = "68_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2168)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2169 = "69_1321350732.3287" 
    $P113."add_method"($P114, "new_type", $P2169)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2170 = "70_1321350732.3287" 
    $P113."add_method"($P114, "set_body_block", $P2170)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2171 = "71_1321350732.3287" 
    $P113."add_method"($P114, "add_method", $P2171)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2172 = "72_1321350732.3287" 
    $P113."add_method"($P114, "add_multi_method", $P2172)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2173 = "73_1321350732.3287" 
    $P113."add_method"($P114, "add_attribute", $P2173)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2174 = "74_1321350732.3287" 
    $P113."add_method"($P114, "add_parent", $P2174)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2175 = "75_1321350732.3287" 
    $P113."add_method"($P114, "add_role", $P2175)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2176 = "76_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2176)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2177 = "77_1321350732.3287" 
    $P113."add_method"($P114, "parametric", $P2177)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2178 = "78_1321350732.3287" 
    $P113."add_method"($P114, "specialize", $P2178)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2179 = "83_1321350732.3287" 
    $P113."add_method"($P114, "methods", $P2179)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2180 = "85_1321350732.3287" 
    $P113."add_method"($P114, "method_table", $P2180)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2181 = "86_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2181)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2182 = "87_1321350732.3287" 
    $P113."add_method"($P114, "attributes", $P2182)
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    .const 'Sub' $P2183 = "89_1321350732.3287" 
    $P113."add_method"($P114, "roles", $P2183)
    .const 'Sub' $P2184 = "64_1321350732.3287" 
    $P112 = $P2184."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 36
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2185 = "64_1321350732.3287" 
    $P114 = $P2185."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2186 = "64_1321350732.3287" 
    $P112 = $P2186."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 36
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2187 = "64_1321350732.3287" 
    $P114 = $P2187."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 36
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 55, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 55
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'Sub' $P2188 = "10_1321350732.3287" 
    $P112 = $P2188."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P112."set_static_lexpad_value"("NQPClassHOW", $P113)
    .const 'Sub' $P2189 = "10_1321350732.3287" 
    $P114 = $P2189."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2190 = "101_1321350732.3287" 
    $P113."add_method"($P114, "archetypes", $P2190)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2191 = "102_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2191)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2192 = "103_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2192)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2193 = "104_1321350732.3287" 
    $P113."add_method"($P114, "new_type", $P2193)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2194 = "105_1321350732.3287" 
    $P113."add_method"($P114, "add_method", $P2194)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2195 = "106_1321350732.3287" 
    $P113."add_method"($P114, "add_multi_method", $P2195)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2196 = "107_1321350732.3287" 
    $P113."add_method"($P114, "add_attribute", $P2196)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2197 = "108_1321350732.3287" 
    $P113."add_method"($P114, "add_parent", $P2197)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2198 = "110_1321350732.3287" 
    $P113."add_method"($P114, "set_default_parent", $P2198)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2199 = "111_1321350732.3287" 
    $P113."add_method"($P114, "add_role", $P2199)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2200 = "113_1321350732.3287" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2200)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2201 = "114_1321350732.3287" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2201)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2202 = "115_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2202)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2203 = "119_1321350732.3287" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2203)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2204 = "124_1321350732.3287" 
    $P113."add_method"($P114, "publish_type_cache", $P2204)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2205 = "127_1321350732.3287" 
    $P113."add_method"($P114, "publish_method_cache", $P2205)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2206 = "129_1321350732.3287" 
    $P113."add_method"($P114, "publish_boolification_spec", $P2206)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2207 = "130_1321350732.3287" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2207)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2208 = "132_1321350732.3287" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2208)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2209 = "134_1321350732.3287" 
    $P113."add_method"($P114, "parents", $P2209)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2210 = "135_1321350732.3287" 
    $P113."add_method"($P114, "mro", $P2210)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2211 = "136_1321350732.3287" 
    $P113."add_method"($P114, "roles", $P2211)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2212 = "137_1321350732.3287" 
    $P113."add_method"($P114, "methods", $P2212)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2213 = "139_1321350732.3287" 
    $P113."add_method"($P114, "method_table", $P2213)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2214 = "140_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2214)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2215 = "141_1321350732.3287" 
    $P113."add_method"($P114, "attributes", $P2215)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2216 = "143_1321350732.3287" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2216)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2217 = "144_1321350732.3287" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2217)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2218 = "145_1321350732.3287" 
    $P113."add_method"($P114, "isa", $P2218)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2219 = "146_1321350732.3287" 
    $P113."add_method"($P114, "does", $P2219)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2220 = "147_1321350732.3287" 
    $P113."add_method"($P114, "can", $P2220)
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    .const 'Sub' $P2221 = "149_1321350732.3287" 
    $P113."add_method"($P114, "find_method", $P2221)
    .const 'Sub' $P2222 = "90_1321350732.3287" 
    $P112 = $P2222."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2223 = "90_1321350732.3287" 
    $P114 = $P2223."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2224 = "90_1321350732.3287" 
    $P112 = $P2224."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2225 = "90_1321350732.3287" 
    $P114 = $P2225."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 55
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 88, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 88
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'Sub' $P2226 = "10_1321350732.3287" 
    $P112 = $P2226."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 88
    $P112."set_static_lexpad_value"("NQPNativeHOW", $P113)
    .const 'Sub' $P2227 = "10_1321350732.3287" 
    $P114 = $P2227."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2228 = "152_1321350732.3287" 
    $P113."add_method"($P114, "archetypes", $P2228)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2229 = "153_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2229)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2230 = "154_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2230)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2231 = "155_1321350732.3287" 
    $P113."add_method"($P114, "new_type", $P2231)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2232 = "156_1321350732.3287" 
    $P113."add_method"($P114, "add_method", $P2232)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2233 = "157_1321350732.3287" 
    $P113."add_method"($P114, "add_multi_method", $P2233)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2234 = "158_1321350732.3287" 
    $P113."add_method"($P114, "add_attribute", $P2234)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2235 = "159_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2235)
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    .const 'Sub' $P2236 = "160_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2236)
    .const 'Sub' $P2237 = "151_1321350732.3287" 
    $P112 = $P2237."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 88
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2238 = "151_1321350732.3287" 
    $P114 = $P2238."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2239 = "151_1321350732.3287" 
    $P112 = $P2239."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 88
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2240 = "151_1321350732.3287" 
    $P114 = $P2240."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 88
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_add_object_to_sc cur_sc, 98, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 98
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'Sub' $P2241 = "10_1321350732.3287" 
    $P112 = $P2241."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 98
    $P112."set_static_lexpad_value"("NQPAttribute", $P113)
    .const 'Sub' $P2242 = "10_1321350732.3287" 
    $P114 = $P2242."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!has_type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2243 = "164_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2243)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2244 = "165_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2244)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2245 = "166_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2245)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2246 = "167_1321350732.3287" 
    $P113."add_method"($P114, "type", $P2246)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2247 = "168_1321350732.3287" 
    $P113."add_method"($P114, "has_accessor", $P2247)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2248 = "169_1321350732.3287" 
    $P113."add_method"($P114, "build_closure", $P2248)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2249 = "170_1321350732.3287" 
    $P113."add_method"($P114, "box_target", $P2249)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2250 = "171_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2250)
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    .const 'Sub' $P2251 = "172_1321350732.3287" 
    $P113."add_method"($P114, "has_mutator", $P2251)
    .const 'Sub' $P2252 = "161_1321350732.3287" 
    $P112 = $P2252."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 98
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2253 = "161_1321350732.3287" 
    $P114 = $P2253."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2254 = "161_1321350732.3287" 
    $P112 = $P2254."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 98
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2255 = "161_1321350732.3287" 
    $P114 = $P2255."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 98
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 108, $P113
    nqp_get_sc_object $P112, "1321350728.68316", 108
    nqp_get_sc_object $P113, "1321350728.68316", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'Sub' $P2256 = "10_1321350732.3287" 
    $P112 = $P2256."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 108
    $P112."set_static_lexpad_value"("NQPModuleHOW", $P113)
    .const 'Sub' $P2257 = "10_1321350732.3287" 
    $P114 = $P2257."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2258 = "174_1321350732.3287" 
    $P113."add_method"($P114, "archetypes", $P2258)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2259 = "175_1321350732.3287" 
    $P113."add_method"($P114, "new", $P2259)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2260 = "176_1321350732.3287" 
    $P113."add_method"($P114, "BUILD", $P2260)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2261 = "177_1321350732.3287" 
    $P113."add_method"($P114, "new_type", $P2261)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2262 = "178_1321350732.3287" 
    $P113."add_method"($P114, "add_method", $P2262)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2263 = "179_1321350732.3287" 
    $P113."add_method"($P114, "add_multi_method", $P2263)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2264 = "180_1321350732.3287" 
    $P113."add_method"($P114, "add_attribute", $P2264)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2265 = "181_1321350732.3287" 
    $P113."add_method"($P114, "compose", $P2265)
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    .const 'Sub' $P2266 = "182_1321350732.3287" 
    $P113."add_method"($P114, "name", $P2266)
    .const 'Sub' $P2267 = "173_1321350732.3287" 
    $P112 = $P2267."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 108
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2268 = "173_1321350732.3287" 
    $P114 = $P2268."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2269 = "173_1321350732.3287" 
    $P112 = $P2269."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 108
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2270 = "173_1321350732.3287" 
    $P114 = $P2270."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 108
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 118, $P113
    .const 'Sub' $P2271 = "10_1321350732.3287" 
    $P112 = $P2271."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 118
    $P112."set_static_lexpad_value"("EXPORTHOW", $P113)
    .const 'Sub' $P2272 = "10_1321350732.3287" 
    $P114 = $P2272."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2273 = "183_1321350732.3287" 
    $P112 = $P2273."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 118
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2274 = "183_1321350732.3287" 
    $P114 = $P2274."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2275 = "183_1321350732.3287" 
    $P112 = $P2275."get_lexinfo"()
    nqp_get_sc_object $P113, "1321350728.68316", 118
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2276 = "183_1321350732.3287" 
    $P114 = $P2276."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1321350728.68316", 118
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1321350728.68316", 118
    $P113."compose"($P114)
  if_2103_end:
    nqp_get_sc_object $P112, "1321350728.68316", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("11_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "21_1321350732.3287" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "20_1321350732.3287" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "19_1321350732.3287" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "18_1321350732.3287" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "17_1321350732.3287" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "16_1321350732.3287" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "15_1321350732.3287" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "14_1321350732.3287" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "13_1321350732.3287" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "12_1321350732.3287" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "21_1321350732.3287" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("12_1321350732.3287") :outer("11_1321350732.3287")
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
    if has_param_1021, optparam_186
    new $P100, "Undef"
    set param_1021, $P100
  optparam_186:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_187
    new $P101, "Undef"
    set param_1022, $P101
  optparam_187:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_188
    new $P102, "Undef"
    set param_1023, $P102
  optparam_188:
    .lex "$composable", param_1023
    if has_param_1024, optparam_189
    new $P103, "Undef"
    set param_1024, $P103
  optparam_189:
    .lex "$parametric", param_1024
.annotate 'line', 48
    new $P104, "Undef"
    set $P1025, $P104
    .lex "$arch", $P1025
    find_lex $P105, "self"
    repr_instance_of $P106, $P105
    store_lex "$arch", $P106
.annotate 'line', 49
    find_lex $P105, "$arch"
    unless_null $P105, vivify_190
    new $P105, "Undef"
  vivify_190:
    find_lex $P106, "$nominal"
    unless_null $P106, vivify_191
    new $P106, "Undef"
  vivify_191:
    find_lex $P107, "$inheritable"
    unless_null $P107, vivify_192
    new $P107, "Undef"
  vivify_192:
    find_lex $P108, "$composable"
    unless_null $P108, vivify_193
    new $P108, "Undef"
  vivify_193:
    find_lex $P109, "$parametric"
    unless_null $P109, vivify_194
    new $P109, "Undef"
  vivify_194:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    find_lex $P105, "$arch"
    unless_null $P105, vivify_195
    new $P105, "Undef"
  vivify_195:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("13_1321350732.3287") :outer("11_1321350732.3287")
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
    if has_param_1028, optparam_196
    new $P100, "Undef"
    set param_1028, $P100
  optparam_196:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_197
    new $P101, "Undef"
    set param_1029, $P101
  optparam_197:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_198
    new $P102, "Undef"
    set param_1030, $P102
  optparam_198:
    .lex "$composable", param_1030
    if has_param_1031, optparam_199
    new $P103, "Undef"
    set param_1031, $P103
  optparam_199:
    .lex "$parametric", param_1031
.annotate 'line', 55
    find_lex $P104, "$nominal"
    unless_null $P104, vivify_200
    new $P104, "Undef"
  vivify_200:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!nominal", 0, $P104
.annotate 'line', 56
    find_lex $P104, "$inheritable"
    unless_null $P104, vivify_201
    new $P104, "Undef"
  vivify_201:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!inheritable", 2, $P104
.annotate 'line', 57
    find_lex $P104, "$composable"
    unless_null $P104, vivify_202
    new $P104, "Undef"
  vivify_202:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!composable", 4, $P104
.annotate 'line', 58
    find_lex $P104, "$parametric"
    unless_null $P104, vivify_203
    new $P104, "Undef"
  vivify_203:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!parametric", 7, $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("14_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!nominal", 0
    unless_null $P103, vivify_204
    new $P103, "Undef"
  vivify_204:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("15_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!nominalizable", 1
    unless_null $P103, vivify_205
    new $P103, "Undef"
  vivify_205:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("16_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritable", 2
    unless_null $P103, vivify_206
    new $P103, "Undef"
  vivify_206:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("17_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!inheritalizable", 3
    unless_null $P103, vivify_207
    new $P103, "Undef"
  vivify_207:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("18_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!composable", 4
    unless_null $P103, vivify_208
    new $P103, "Undef"
  vivify_208:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("19_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!composalizable", 5
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("20_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!generic", 6
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("21_1321350732.3287") :outer("11_1321350732.3287")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    repr_get_attr_obj $P103, $P101, $P102, "$!parametric", 7
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("22_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "23_1321350732.3287" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "23_1321350732.3287" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("23_1321350732.3287") :outer("22_1321350732.3287")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "29_1321350732.3287" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "28_1321350732.3287" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "27_1321350732.3287" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "24_1321350732.3287" 
    capture_lex $P1070
    new $P1055, ['ExceptionHandler'], .CONTROL_RETURN
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
    find_lex $P1067, "%meth_info"
    unless_null $P1067, vivify_212
    $P1067 = root_new ['parrot';'Hash']
  vivify_212:
.annotate 'line', 76
    find_lex $P1068, "@roles"
    unless_null $P1068, vivify_213
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_213:
    defined $I100, $P1068
    unless $I100, for_undef_214
    iter $P100, $P1068
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1098_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "24_1321350732.3287" 
    capture_lex $P1070
    $P1070($P101)
  loop1098_next:
    goto loop1098_test
  loop1098_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1098_next
    eq $P104, .CONTROL_LOOP_REDO, loop1098_redo
  loop1098_done:
    pop_eh 
  for_undef_214:
.annotate 'line', 73
    find_lex $P1099, "%target_meth_info"
    unless_null $P1099, vivify_238
    $P1099 = root_new ['parrot';'Hash']
  vivify_238:
.annotate 'line', 102
    find_lex $P100, "$target"
    unless_null $P100, vivify_239
    new $P100, "Undef"
  vivify_239:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_240
    new $P102, "Undef"
  vivify_240:
    $P103 = $P101."methods"($P102)
    store_lex "@target_meths", $P103
.annotate 'line', 103
    find_lex $P1100, "@target_meths"
    unless_null $P1100, vivify_241
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    defined $I100, $P1100
    unless $I100, for_undef_242
    iter $P100, $P1100
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1105_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "27_1321350732.3287" 
    capture_lex $P1102
    $P1102($P101)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P104, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_242:
.annotate 'line', 108
    find_lex $P1106, "%meth_info"
    unless_null $P1106, vivify_246
    $P1106 = root_new ['parrot';'Hash']
  vivify_246:
    defined $I100, $P1106
    unless $I100, for_undef_247
    iter $P100, $P1106
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1119_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "28_1321350732.3287" 
    capture_lex $P1108
    $P1108($P101)
  loop1119_next:
    goto loop1119_test
  loop1119_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1119_next
    eq $P105, .CONTROL_LOOP_REDO, loop1119_redo
  loop1119_done:
    pop_eh 
  for_undef_247:
.annotate 'line', 73
    find_lex $P1120, "@all_roles"
    unless_null $P1120, vivify_264
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
.annotate 'line', 128
    find_lex $P1121, "@roles"
    unless_null $P1121, vivify_265
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_265:
    defined $I100, $P1121
    unless $I100, for_undef_266
    iter $P100, $P1121
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1146_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "29_1321350732.3287" 
    capture_lex $P1123
    $P1123($P101)
  loop1146_next:
    goto loop1146_test
  loop1146_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, 'type'
    eq $P105, .CONTROL_LOOP_NEXT, loop1146_next
    eq $P105, .CONTROL_LOOP_REDO, loop1146_redo
  loop1146_done:
    pop_eh 
  for_undef_266:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1147, "@all_roles"
    unless_null $P1147, vivify_288
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
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
.sub "_block1069"  :anon :subid("24_1321350732.3287") :outer("23_1321350732.3287")
    .param pmc param_1073
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "25_1321350732.3287" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_215
    new $P102, "Undef"
  vivify_215:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_216
    new $P104, "Undef"
  vivify_216:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 78
    find_lex $P1074, "@methods"
    unless_null $P1074, vivify_217
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    defined $I101, $P1074
    unless $I101, for_undef_218
    iter $P102, $P1074
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1097_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "25_1321350732.3287" 
    capture_lex $P1076
    $P1076($P103)
  loop1097_next:
    goto loop1097_test
  loop1097_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1097_next
    eq $P109, .CONTROL_LOOP_REDO, loop1097_redo
  loop1097_done:
    pop_eh 
  for_undef_218:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("25_1321350732.3287") :outer("24_1321350732.3287")
    .param pmc param_1082
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "26_1321350732.3287" 
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
    unless_null $P107, vivify_219
    new $P107, "Undef"
  vivify_219:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$name", $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_220
    new $P107, "Undef"
  vivify_220:
    store_lex "$meth", $P107
.annotate 'line', 78
    find_lex $P1083, "@meth_list"
    unless_null $P1083, vivify_221
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
.annotate 'line', 82
    find_lex $P107, "$name"
    unless_null $P107, vivify_222
    new $P107, "Undef"
  vivify_222:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_223
    $P1085 = root_new ['parrot';'Hash']
  vivify_223:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_224
    new $P108, "Undef"
  vivify_224:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    find_lex $P1087, "@meth_list"
    unless_null $P1087, vivify_225
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    find_lex $P109, "$name"
    unless_null $P109, vivify_226
    new $P109, "Undef"
  vivify_226:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_227
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_227:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    find_lex $P109, "$name"
    unless_null $P109, vivify_228
    new $P109, "Undef"
  vivify_228:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_229
    $P1086 = root_new ['parrot';'Hash']
  vivify_229:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_230
    new $P110, "Undef"
  vivify_230:
    store_lex "@meth_list", $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    store_lex "$found", $P107
.annotate 'line', 89
    find_lex $P1089, "@meth_list"
    unless_null $P1089, vivify_231
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    defined $I102, $P1089
    unless $I102, for_undef_232
    iter $P107, $P1089
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1094_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "26_1321350732.3287" 
    capture_lex $P1091
    $P1091($P108)
  loop1094_next:
    goto loop1094_test
  loop1094_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1094_next
    eq $P111, .CONTROL_LOOP_REDO, loop1094_redo
  loop1094_done:
    pop_eh 
  for_undef_232:
.annotate 'line', 94
    find_lex $P108, "$found"
    unless_null $P108, vivify_235
    new $P108, "Undef"
  vivify_235:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    find_lex $P1096, "@meth_list"
    unless_null $P1096, vivify_236
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    find_lex $P109, "$meth"
    unless_null $P109, vivify_237
    new $P109, "Undef"
  vivify_237:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("26_1321350732.3287") :outer("25_1321350732.3287")
    .param pmc param_1092
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_233
    new $P110, "Undef"
  vivify_233:
    find_lex $P111, "$_"
    unless_null $P111, vivify_234
    new $P111, "Undef"
  vivify_234:
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
.sub "_block1101"  :anon :subid("27_1321350732.3287") :outer("23_1321350732.3287")
    .param pmc param_1103
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_243
    new $P102, "Undef"
  vivify_243:
    find_lex $P103, "$_"
    unless_null $P103, vivify_244
    new $P103, "Undef"
  vivify_244:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_245
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_245:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("28_1321350732.3287") :outer("23_1321350732.3287")
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
    unless_null $P103, vivify_248
    new $P103, "Undef"
  vivify_248:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    store_lex "$name", $P104
.annotate 'line', 110
    find_lex $P103, "$name"
    unless_null $P103, vivify_249
    new $P103, "Undef"
  vivify_249:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_250
    $P1113 = root_new ['parrot';'Hash']
  vivify_250:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_251
    new $P104, "Undef"
  vivify_251:
    store_lex "@add_meths", $P104
.annotate 'line', 114
    find_lex $P104, "$name"
    unless_null $P104, vivify_252
    new $P104, "Undef"
  vivify_252:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_253
    $P1115 = root_new ['parrot';'Hash']
  vivify_253:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_254
    new $P105, "Undef"
  vivify_254:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    find_lex $P1117, "@add_meths"
    unless_null $P1117, vivify_255
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_256
    new $P107, "Undef"
  vivify_256:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_257
    new $P109, "Undef"
  vivify_257:
    find_lex $P110, "$name"
    unless_null $P110, vivify_258
    new $P110, "Undef"
  vivify_258:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_259
    new $P107, "Undef"
  vivify_259:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_260
    new $P109, "Undef"
  vivify_260:
    find_lex $P110, "$name"
    unless_null $P110, vivify_261
    new $P110, "Undef"
  vivify_261:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    find_lex $P1118, "@add_meths"
    unless_null $P1118, vivify_262
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    set $P112, $P1118[$I103]
    unless_null $P112, vivify_263
    new $P112, "Undef"
  vivify_263:
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
.sub "_block1122"  :anon :subid("29_1321350732.3287") :outer("23_1321350732.3287")
    .param pmc param_1127
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "30_1321350732.3287" 
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
    unless_null $P103, vivify_267
    new $P103, "Undef"
  vivify_267:
    get_how $P104, $P103
    store_lex "$how", $P104
.annotate 'line', 132
    find_lex $P103, "$how"
    unless_null $P103, vivify_268
    new $P103, "Undef"
  vivify_268:
    find_lex $P104, "$_"
    unless_null $P104, vivify_269
    new $P104, "Undef"
  vivify_269:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 133
    find_lex $P1128, "@attributes"
    unless_null $P1128, vivify_270
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    defined $I101, $P1128
    unless $I101, for_undef_271
    iter $P103, $P1128
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1144_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "30_1321350732.3287" 
    capture_lex $P1130
    $P1130($P104)
  loop1144_next:
    goto loop1144_test
  loop1144_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1144_next
    eq $P109, .CONTROL_LOOP_REDO, loop1144_redo
  loop1144_done:
    pop_eh 
  for_undef_271:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_286
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    find_lex $P103, "$_"
    unless_null $P103, vivify_287
    new $P103, "Undef"
  vivify_287:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("30_1321350732.3287") :outer("29_1321350732.3287")
    .param pmc param_1135
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "31_1321350732.3287" 
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
    unless_null $P107, vivify_272
    new $P107, "Undef"
  vivify_272:
    store_lex "$add_attr", $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    store_lex "$skip", $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_273
    new $P107, "Undef"
  vivify_273:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_274
    new $P109, "Undef"
  vivify_274:
    $P110 = $P108."attributes"($P109)
    store_lex "@cur_attrs", $P110
.annotate 'line', 137
    find_lex $P1136, "@cur_attrs"
    unless_null $P1136, vivify_275
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    defined $I102, $P1136
    unless $I102, for_undef_276
    iter $P107, $P1136
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1142_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "31_1321350732.3287" 
    capture_lex $P1138
    $P1138($P108)
  loop1142_next:
    goto loop1142_test
  loop1142_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1142_next
    eq $P111, .CONTROL_LOOP_REDO, loop1142_redo
  loop1142_done:
    pop_eh 
  for_undef_276:
.annotate 'line', 147
    find_lex $P108, "$skip"
    unless_null $P108, vivify_282
    new $P108, "Undef"
  vivify_282:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_283
    new $P109, "Undef"
  vivify_283:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_284
    new $P111, "Undef"
  vivify_284:
    find_lex $P112, "$add_attr"
    unless_null $P112, vivify_285
    new $P112, "Undef"
  vivify_285:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("31_1321350732.3287") :outer("30_1321350732.3287")
    .param pmc param_1139
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_277
    new $P110, "Undef"
  vivify_277:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_278
    new $P111, "Undef"
  vivify_278:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_279
    new $P114, "Undef"
  vivify_279:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_280
    new $P115, "Undef"
  vivify_280:
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
    unless_null $P117, vivify_281
    new $P117, "Undef"
  vivify_281:
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
.sub "_block1149"  :subid("32_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "54_1321350732.3287" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "53_1321350732.3287" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "52_1321350732.3287" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "50_1321350732.3287" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "49_1321350732.3287" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "48_1321350732.3287" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "47_1321350732.3287" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "45_1321350732.3287" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "43_1321350732.3287" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "42_1321350732.3287" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "41_1321350732.3287" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "40_1321350732.3287" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "39_1321350732.3287" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "38_1321350732.3287" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "37_1321350732.3287" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "36_1321350732.3287" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "35_1321350732.3287" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "34_1321350732.3287" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "33_1321350732.3287" 
    capture_lex $P1154
.annotate 'line', 190
    new $P100, "Undef"
    set $P1151, $P100
    .lex "$archetypes", $P1151
    .lex "$?PACKAGE", $P1152
    .lex "$?CLASS", $P1153
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"), 1 :named("composable"))
    store_lex "$archetypes", $P102
.annotate 'line', 311
    .const 'Sub' $P1277 = "54_1321350732.3287" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("33_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1155
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_289
    new $P101, "Undef"
  vivify_289:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("34_1321350732.3287") :outer("32_1321350732.3287")
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
    find_lex $P102, "self"
    repr_instance_of $P103, $P102
    store_lex "$obj", $P103
.annotate 'line', 202
    find_lex $P102, "$obj"
    unless_null $P102, vivify_290
    new $P102, "Undef"
  vivify_290:
    find_lex $P103, "$name"
    unless_null $P103, vivify_291
    new $P103, "Undef"
  vivify_291:
    find_lex $P104, "$instance_of"
    unless_null $P104, vivify_292
    new $P104, "Undef"
  vivify_292:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    find_lex $P102, "$obj"
    unless_null $P102, vivify_293
    new $P102, "Undef"
  vivify_293:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("35_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1162
    .param pmc param_1163 :named("name")
    .param pmc param_1164 :named("instance_of")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 206
    .lex "self", param_1162
    .lex "$name", param_1163
    .lex "$instance_of", param_1164
.annotate 'line', 207
    find_lex $P101, "$name"
    unless_null $P101, vivify_294
    new $P101, "Undef"
  vivify_294:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!name", 0, $P101
.annotate 'line', 208
    find_lex $P101, "$instance_of"
    unless_null $P101, vivify_295
    new $P101, "Undef"
  vivify_295:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!instance_of", 1, $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("36_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_296
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_296:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_297
    new $P104, "Undef"
  vivify_297:
    find_lex $P105, "$instance_of"
    unless_null $P105, vivify_298
    new $P105, "Undef"
  vivify_298:
    $P106 = $P103."new"($P104 :named("name"), $P105 :named("instance_of"))
    store_lex "$metarole", $P106
.annotate 'line', 215
    find_lex $P103, "$metarole"
    unless_null $P103, vivify_299
    new $P103, "Undef"
  vivify_299:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("37_1321350732.3287") :outer("32_1321350732.3287")
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
    find_lex $P101, "$name"
    unless_null $P101, vivify_300
    new $P101, "Undef"
  vivify_300:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1176, $P103, $P104, "%!methods", 3
    unless_null $P1176, vivify_301
    $P1176 = root_new ['parrot';'Hash']
  vivify_301:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_302
    new $P105, "Undef"
  vivify_302:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    find_lex $P107, "$name"
    unless_null $P107, vivify_303
    new $P107, "Undef"
  vivify_303:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_304
    new $P101, "Undef"
  vivify_304:
    find_lex $P102, "$name"
    unless_null $P102, vivify_305
    new $P102, "Undef"
  vivify_305:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1177, $P104, $P105, "%!methods", 3
    unless_null $P1177, vivify_306
    $P1177 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!methods", 3, $P1177
  vivify_306:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("38_1321350732.3287") :outer("32_1321350732.3287")
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
    find_lex $P1185, "%todo"
    unless_null $P1185, vivify_307
    $P1185 = root_new ['parrot';'Hash']
  vivify_307:
.annotate 'line', 227
    find_lex $P101, "$name"
    unless_null $P101, vivify_308
    new $P101, "Undef"
  vivify_308:
    find_lex $P1186, "%todo"
    unless_null $P1186, vivify_309
    $P1186 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1186
  vivify_309:
    set $P1186["name"], $P101
.annotate 'line', 228
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_310
    new $P101, "Undef"
  vivify_310:
    find_lex $P1187, "%todo"
    unless_null $P1187, vivify_311
    $P1187 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1187
  vivify_311:
    set $P1187["code"], $P101
.annotate 'line', 229
    find_lex $P1188, "%todo"
    unless_null $P1188, vivify_312
    $P1188 = root_new ['parrot';'Hash']
  vivify_312:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1189, $P102, $P103, "@!multi_methods_to_incorporate", 4
    unless_null $P1189, vivify_313
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    set $N100, $P1189
    set $I100, $N100
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1190, $P105, $P106, "@!multi_methods_to_incorporate", 4
    unless_null $P1190, vivify_314
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "@!multi_methods_to_incorporate", 4, $P1190
  vivify_314:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_315
    new $P101, "Undef"
  vivify_315:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("39_1321350732.3287") :outer("32_1321350732.3287")
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
    find_lex $P102, "$meta_attr"
    unless_null $P102, vivify_316
    new $P102, "Undef"
  vivify_316:
    $P103 = $P102."name"()
    store_lex "$name", $P103
.annotate 'line', 235
    find_lex $P102, "$name"
    unless_null $P102, vivify_317
    new $P102, "Undef"
  vivify_317:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1197, $P104, $P105, "%!attributes", 2
    unless_null $P1197, vivify_318
    $P1197 = root_new ['parrot';'Hash']
  vivify_318:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_319
    new $P106, "Undef"
  vivify_319:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    find_lex $P108, "$name"
    unless_null $P108, vivify_320
    new $P108, "Undef"
  vivify_320:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    find_lex $P102, "$meta_attr"
    unless_null $P102, vivify_321
    new $P102, "Undef"
  vivify_321:
    find_lex $P103, "$name"
    unless_null $P103, vivify_322
    new $P103, "Undef"
  vivify_322:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1198, $P105, $P106, "%!attributes", 2
    unless_null $P1198, vivify_323
    $P1198 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!attributes", 2, $P1198
  vivify_323:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("40_1321350732.3287") :outer("32_1321350732.3287")
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
.sub "add_role" :anon :subid("41_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1204
    .param pmc param_1205
    .param pmc param_1206
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 245
    .lex "self", param_1204
    .lex "$obj", param_1205
    .lex "$role", param_1206
.annotate 'line', 246
    find_lex $P101, "$role"
    unless_null $P101, vivify_324
    new $P101, "Undef"
  vivify_324:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1207, $P103, $P104, "@!roles", 6
    unless_null $P1207, vivify_325
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_325:
    set $N100, $P1207
    set $I100, $N100
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1208, $P106, $P107, "@!roles", 6
    unless_null $P1208, vivify_326
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!roles", 6, $P1208
  vivify_326:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("42_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1210
    .param pmc param_1211
    .param pmc param_1212
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 249
    .lex "self", param_1210
    .lex "$obj", param_1211
    .lex "$colliding_name", param_1212
.annotate 'line', 250
    find_lex $P101, "$colliding_name"
    unless_null $P101, vivify_327
    new $P101, "Undef"
  vivify_327:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1213, $P103, $P104, "@!collisions", 5
    unless_null $P1213, vivify_328
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    set $N100, $P1213
    set $I100, $N100
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1214, $P106, $P107, "@!collisions", 5
    unless_null $P1214, vivify_329
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P106, $P107, "@!collisions", 5, $P1214
  vivify_329:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("43_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "44_1321350732.3287" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1219, $P102, $P103, "@!roles", 6
    unless_null $P1219, vivify_330
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_330:
    unless $P1219, if_1218_end
.annotate 'line', 258
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1220, $P106, $P107, "@!roles", 6
    unless_null $P1220, vivify_331
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_331:
    defined $I100, $P1220
    unless $I100, for_undef_332
    iter $P104, $P1220
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1228_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "44_1321350732.3287" 
    capture_lex $P1222
    $P1222($P108)
  loop1228_next:
    goto loop1228_test
  loop1228_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1228_next
    eq $P110, .CONTROL_LOOP_REDO, loop1228_redo
  loop1228_done:
    pop_eh 
  for_undef_332:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    find_lex $P105, "$obj"
    unless_null $P105, vivify_340
    new $P105, "Undef"
  vivify_340:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1229, $P107, $P108, "@!roles", 6
    unless_null $P1229, vivify_341
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 8, $P101
.annotate 'line', 254
    find_lex $P101, "$obj"
    unless_null $P101, vivify_342
    new $P101, "Undef"
  vivify_342:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("44_1321350732.3287") :outer("43_1321350732.3287")
    .param pmc param_1223
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_333
    new $P109, "Undef"
  vivify_333:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1224, $P111, $P112, "@!role_typecheck_list", 7
    unless_null $P1224, vivify_334
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1225, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1225, vivify_335
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P114, $P115, "@!role_typecheck_list", 7, $P1225
  vivify_335:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_336
    new $P109, "Undef"
  vivify_336:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_337
    new $P111, "Undef"
  vivify_337:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1226, $P114, $P115, "@!role_typecheck_list", 7
    unless_null $P1226, vivify_338
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    repr_get_attr_obj $P1227, $P117, $P118, "@!role_typecheck_list", 7
    unless_null $P1227, vivify_339
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P117, $P118, "@!role_typecheck_list", 7, $P1227
  vivify_339:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("45_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "46_1321350732.3287" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_343
    new $P101, "Undef"
    set param_1233, $P101
  optparam_343:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    find_lex $P1236, "@meths"
    unless_null $P1236, vivify_344
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
.annotate 'line', 277
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1237, $P104, $P105, "%!methods", 3
    unless_null $P1237, vivify_345
    $P1237 = root_new ['parrot';'Hash']
  vivify_345:
    defined $I100, $P1237
    unless $I100, for_undef_346
    iter $P102, $P1237
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1242_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "46_1321350732.3287" 
    capture_lex $P1239
    $P1239($P106)
  loop1242_next:
    goto loop1242_test
  loop1242_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1242_next
    eq $P108, .CONTROL_LOOP_REDO, loop1242_redo
  loop1242_done:
    pop_eh 
  for_undef_346:
.annotate 'line', 275
    find_lex $P1243, "@meths"
    unless_null $P1243, vivify_349
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("46_1321350732.3287") :outer("45_1321350732.3287")
    .param pmc param_1240
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_347
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    find_lex $P107, "$_"
    unless_null $P107, vivify_348
    new $P107, "Undef"
  vivify_348:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("47_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1247, $P102, $P103, "%!methods", 3
    unless_null $P1247, vivify_350
    $P1247 = root_new ['parrot';'Hash']
  vivify_350:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("48_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1251, $P102, $P103, "@!collisions", 5
    unless_null $P1251, vivify_351
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("49_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_352
    new $P104, "Undef"
  vivify_352:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("50_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "51_1321350732.3287" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_353
    new $P101, "Undef"
    set param_1258, $P101
  optparam_353:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    find_lex $P1261, "@attrs"
    unless_null $P1261, vivify_354
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
.annotate 'line', 297
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1262, $P104, $P105, "%!attributes", 2
    unless_null $P1262, vivify_355
    $P1262 = root_new ['parrot';'Hash']
  vivify_355:
    defined $I100, $P1262
    unless $I100, for_undef_356
    iter $P102, $P1262
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1267_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "51_1321350732.3287" 
    capture_lex $P1264
    $P1264($P106)
  loop1267_next:
    goto loop1267_test
  loop1267_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1267_next
    eq $P108, .CONTROL_LOOP_REDO, loop1267_redo
  loop1267_done:
    pop_eh 
  for_undef_356:
.annotate 'line', 295
    find_lex $P1268, "@attrs"
    unless_null $P1268, vivify_359
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_359:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("51_1321350732.3287") :outer("50_1321350732.3287")
    .param pmc param_1265
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_357
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_357:
    find_lex $P107, "$_"
    unless_null $P107, vivify_358
    new $P107, "Undef"
  vivify_358:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("52_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1272, $P102, $P103, "@!roles", 6
    unless_null $P1272, vivify_360
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_360:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("53_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P1276, $P102, $P103, "@!role_typecheck_list", 7
    unless_null $P1276, vivify_361
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("54_1321350732.3287") :outer("32_1321350732.3287")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!instance_of", 1
    unless_null $P104, vivify_362
    new $P104, "Undef"
  vivify_362:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("55_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "59_1321350732.3287" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "57_1321350732.3287" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "56_1321350732.3287" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "56_1321350732.3287" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "57_1321350732.3287" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    find_lex $P101, "has_method"
    find_lex $P101, "has_attribute"
.annotate 'line', 332
    .const 'Sub' $P1309 = "59_1321350732.3287" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("56_1321350732.3287") :outer("55_1321350732.3287")
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
    find_lex $P100, "$target"
    unless_null $P100, vivify_363
    new $P100, "Undef"
  vivify_363:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_364
    new $P102, "Undef"
  vivify_364:
    $P103 = $P101."method_table"($P102)
    store_lex "%mt", $P103
.annotate 'line', 321
    find_lex $P100, "$name"
    unless_null $P100, vivify_365
    new $P100, "Undef"
  vivify_365:
    find_lex $P1290, "%mt"
    unless_null $P1290, vivify_366
    $P1290 = root_new ['parrot';'Hash']
  vivify_366:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("57_1321350732.3287") :outer("55_1321350732.3287")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "58_1321350732.3287" 
    capture_lex $P1302
    new $P1295, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1295, control_1294
    push_eh $P1295
    .lex "$target", param_1296
    .lex "$name", param_1297
.annotate 'line', 325
    $P1299 = root_new ['parrot';'ResizablePMCArray']
    set $P1298, $P1299
    .lex "@attributes", $P1298
    find_lex $P100, "$target"
    unless_null $P100, vivify_367
    new $P100, "Undef"
  vivify_367:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_368
    new $P102, "Undef"
  vivify_368:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    store_lex "@attributes", $P103
.annotate 'line', 326
    find_lex $P1300, "@attributes"
    unless_null $P1300, vivify_369
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    defined $I101, $P1300
    unless $I101, for_undef_370
    iter $P100, $P1300
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1305_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "58_1321350732.3287" 
    capture_lex $P1302
    $P1302($P101)
  loop1305_next:
    goto loop1305_test
  loop1305_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1305_next
    eq $P104, .CONTROL_LOOP_REDO, loop1305_redo
  loop1305_done:
    pop_eh 
  for_undef_370:
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
.sub "_block1301"  :anon :subid("58_1321350732.3287") :outer("57_1321350732.3287")
    .param pmc param_1303
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_371
    new $P103, "Undef"
  vivify_371:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_372
    new $P104, "Undef"
  vivify_372:
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
.sub "apply" :anon :subid("59_1321350732.3287") :outer("55_1321350732.3287")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "63_1321350732.3287" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "62_1321350732.3287" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "61_1321350732.3287" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "60_1321350732.3287" 
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
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_373
    new $P103, "Undef"
  vivify_373:
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_374
    new $P103, "Undef"
  vivify_374:
.annotate 'line', 337
    find_lex $P1324, "@roles"
    unless_null $P1324, vivify_375
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_375:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_376
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_376:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    store_lex "$to_compose", $P109
.annotate 'line', 343
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_377
    new $P103, "Undef"
  vivify_377:
    get_how $P104, $P103
    store_lex "$to_compose_meta", $P104
.annotate 'line', 344
    find_lex $P1326, "@roles"
    unless_null $P1326, vivify_378
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    defined $I102, $P1326
    unless $I102, for_undef_379
    iter $P103, $P1326
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1330_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "60_1321350732.3287" 
    capture_lex $P1328
    $P1328($P104)
  loop1330_next:
    goto loop1330_test
  loop1330_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1330_next
    eq $P106, .CONTROL_LOOP_REDO, loop1330_redo
  loop1330_done:
    pop_eh 
  for_undef_379:
.annotate 'line', 347
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_383
    new $P103, "Undef"
  vivify_383:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_384
    new $P104, "Undef"
  vivify_384:
    $P105 = $P103."compose"($P104)
    store_lex "$to_compose", $P105
.annotate 'line', 341
    goto if_1323_end
  if_1323:
.annotate 'line', 338
    new $P103, "Float"
    assign $P103, 0
    set $I102, $P103
    find_lex $P1325, "@roles"
    unless_null $P1325, vivify_385
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_385:
    set $P104, $P1325[$I102]
    unless_null $P104, vivify_386
    new $P104, "Undef"
  vivify_386:
    store_lex "$to_compose", $P104
.annotate 'line', 339
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_387
    new $P103, "Undef"
  vivify_387:
    get_how $P104, $P103
    store_lex "$to_compose_meta", $P104
  if_1323_end:
.annotate 'line', 351
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_388
    new $P103, "Undef"
  vivify_388:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_389
    new $P104, "Undef"
  vivify_389:
    $P105 = $P103."collisions"($P104)
    store_lex "@collisions", $P105
.annotate 'line', 352
    find_lex $P1331, "@collisions"
    unless_null $P1331, vivify_390
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    defined $I101, $P1331
    unless $I101, for_undef_391
    iter $P103, $P1331
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1336_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "61_1321350732.3287" 
    capture_lex $P1333
    $P1333($P104)
  loop1336_next:
    goto loop1336_test
  loop1336_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1336_next
    eq $P107, .CONTROL_LOOP_REDO, loop1336_redo
  loop1336_done:
    pop_eh 
  for_undef_391:
.annotate 'line', 360
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_397
    new $P103, "Undef"
  vivify_397:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_398
    new $P104, "Undef"
  vivify_398:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 361
    find_lex $P1337, "@methods"
    unless_null $P1337, vivify_399
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_399:
    defined $I101, $P1337
    unless $I101, for_undef_400
    iter $P103, $P1337
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1342_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "62_1321350732.3287" 
    capture_lex $P1339
    $P1339($P104)
  loop1342_next:
    goto loop1342_test
  loop1342_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1342_next
    eq $P107, .CONTROL_LOOP_REDO, loop1342_redo
  loop1342_done:
    pop_eh 
  for_undef_400:
.annotate 'line', 368
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_407
    new $P103, "Undef"
  vivify_407:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_408
    new $P104, "Undef"
  vivify_408:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 369
    find_lex $P1343, "@attributes"
    unless_null $P1343, vivify_409
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_409:
    defined $I101, $P1343
    unless $I101, for_undef_410
    iter $P103, $P1343
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1348_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "63_1321350732.3287" 
    capture_lex $P1345
    $P1345($P104)
  loop1348_next:
    goto loop1348_test
  loop1348_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1348_next
    eq $P106, .CONTROL_LOOP_REDO, loop1348_redo
  loop1348_done:
    pop_eh 
  for_undef_410:
.annotate 'line', 332
    find_lex $P1349, "@done"
    unless_null $P1349, vivify_419
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_419:
.annotate 'line', 381
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_420
    new $P103, "Undef"
  vivify_420:
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    find_lex $P1350, "@done"
    unless_null $P1350, vivify_421
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P1350
  vivify_421:
    set $P1350[$I101], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("60_1321350732.3287") :outer("59_1321350732.3287")
    .param pmc param_1329
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_380
    new $P105, "Undef"
  vivify_380:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_381
    new $P106, "Undef"
  vivify_381:
    find_lex $P107, "$_"
    unless_null $P107, vivify_382
    new $P107, "Undef"
  vivify_382:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("61_1321350732.3287") :outer("59_1321350732.3287")
    .param pmc param_1334
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_392
    new $P106, "Undef"
  vivify_392:
    find_lex $P107, "$_"
    unless_null $P107, vivify_393
    new $P107, "Undef"
  vivify_393:
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
    unless_null $P110, vivify_394
    new $P110, "Undef"
  vivify_394:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_395
    new $P113, "Undef"
  vivify_395:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_396
    new $P115, "Undef"
  vivify_396:
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
.sub "_block1338"  :anon :subid("62_1321350732.3287") :outer("59_1321350732.3287")
    .param pmc param_1340
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_401
    new $P106, "Undef"
  vivify_401:
    find_lex $P107, "$_"
    unless_null $P107, vivify_402
    new $P107, "Undef"
  vivify_402:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_403
    new $P109, "Undef"
  vivify_403:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_404
    new $P111, "Undef"
  vivify_404:
    find_lex $P112, "$_"
    unless_null $P112, vivify_405
    new $P112, "Undef"
  vivify_405:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_406
    new $P113, "Undef"
  vivify_406:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("63_1321350732.3287") :outer("59_1321350732.3287")
    .param pmc param_1346
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_411
    new $P105, "Undef"
  vivify_411:
    find_lex $P106, "$_"
    unless_null $P106, vivify_412
    new $P106, "Undef"
  vivify_412:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_413
    new $P110, "Undef"
  vivify_413:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_414
    new $P113, "Undef"
  vivify_414:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_415
    new $P115, "Undef"
  vivify_415:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_416
    new $P105, "Undef"
  vivify_416:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_417
    new $P107, "Undef"
  vivify_417:
    find_lex $P108, "$_"
    unless_null $P108, vivify_418
    new $P108, "Undef"
  vivify_418:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("64_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1491 = "89_1321350732.3287" 
    capture_lex $P1491
    .const 'Sub' $P1477 = "87_1321350732.3287" 
    capture_lex $P1477
    .const 'Sub' $P1474 = "86_1321350732.3287" 
    capture_lex $P1474
    .const 'Sub' $P1470 = "85_1321350732.3287" 
    capture_lex $P1470
    .const 'Sub' $P1456 = "83_1321350732.3287" 
    capture_lex $P1456
    .const 'Sub' $P1426 = "78_1321350732.3287" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "77_1321350732.3287" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "76_1321350732.3287" 
    capture_lex $P1420
    .const 'Sub' $P1414 = "75_1321350732.3287" 
    capture_lex $P1414
    .const 'Sub' $P1410 = "74_1321350732.3287" 
    capture_lex $P1410
    .const 'Sub' $P1402 = "73_1321350732.3287" 
    capture_lex $P1402
    .const 'Sub' $P1389 = "72_1321350732.3287" 
    capture_lex $P1389
    .const 'Sub' $P1381 = "71_1321350732.3287" 
    capture_lex $P1381
    .const 'Sub' $P1377 = "70_1321350732.3287" 
    capture_lex $P1377
    .const 'Sub' $P1372 = "69_1321350732.3287" 
    capture_lex $P1372
    .const 'Sub' $P1369 = "68_1321350732.3287" 
    capture_lex $P1369
    .const 'Sub' $P1365 = "67_1321350732.3287" 
    capture_lex $P1365
    .const 'Sub' $P1363 = "66_1321350732.3287" 
    capture_lex $P1363
    .const 'Sub' $P1356 = "65_1321350732.3287" 
    capture_lex $P1356
.annotate 'line', 414
    new $P100, "Undef"
    set $P1354, $P100
    .lex "$archetypes", $P1354
.annotate 'line', 531
    .const 'Sub' $P1356 = "65_1321350732.3287" 
    newclosure $P1360, $P1356
    set $P1355, $P1360
    .lex "reify_method", $P1355
.annotate 'line', 414
    .lex "$?PACKAGE", $P1361
    .lex "$?CLASS", $P1362
    find_lex $P103, "Archetypes"
    $P104 = $P103."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    store_lex "$archetypes", $P104
.annotate 'line', 390
    find_lex $P103, "reify_method"
.annotate 'line', 564
    .const 'Sub' $P1491 = "89_1321350732.3287" 
    newclosure $P1495, $P1491
.annotate 'line', 390
    .return ($P1495)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("65_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1357
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 531
    .lex "$meth", param_1357
.annotate 'line', 532
    new $P101, "Undef"
    set $P1358, $P101
    .lex "$callback", $P1358
    find_lex $P102, "$meth"
    unless_null $P102, vivify_422
    new $P102, "Undef"
  vivify_422:
    getprop $P103, "REIFY_CALLBACK", $P102
    store_lex "$callback", $P103
.annotate 'line', 533
    find_lex $P103, "$callback"
    unless_null $P103, vivify_423
    new $P103, "Undef"
  vivify_423:
    defined $I100, $P103
    if $I100, if_1359
    find_lex $P107, "$meth"
    unless_null $P107, vivify_424
    new $P107, "Undef"
  vivify_424:
    clone $P108, $P107
    set $P102, $P108
    goto if_1359_end
  if_1359:
    find_lex $P104, "$callback"
    unless_null $P104, vivify_425
    new $P104, "Undef"
  vivify_425:
    find_lex $P105, "$meth"
    unless_null $P105, vivify_426
    new $P105, "Undef"
  vivify_426:
    $P106 = $P104($P105)
    set $P102, $P106
  if_1359_end:
.annotate 'line', 531
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("66_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1364
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1364
    find_lex $P103, "$archetypes"
    unless_null $P103, vivify_427
    new $P103, "Undef"
  vivify_427:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("67_1321350732.3287") :outer("64_1321350732.3287")
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
    find_lex $P104, "self"
    repr_instance_of $P105, $P104
    store_lex "$obj", $P105
.annotate 'line', 426
    find_lex $P104, "$obj"
    unless_null $P104, vivify_428
    new $P104, "Undef"
  vivify_428:
    find_lex $P105, "$name"
    unless_null $P105, vivify_429
    new $P105, "Undef"
  vivify_429:
    $P104."BUILD"($P105 :named("name"))
.annotate 'line', 424
    find_lex $P104, "$obj"
    unless_null $P104, vivify_430
    new $P104, "Undef"
  vivify_430:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("68_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1370
    .param pmc param_1371 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1370
    .lex "$name", param_1371
.annotate 'line', 431
    find_lex $P103, "$name"
    unless_null $P103, vivify_431
    new $P103, "Undef"
  vivify_431:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!name", 0, $P103
.annotate 'line', 430
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("69_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1373
    .param pmc param_1374 :optional :named("name")
    .param int has_param_1374 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1373
    if has_param_1374, optparam_432
    new $P103, "String"
    assign $P103, "<anon>"
    set param_1374, $P103
  optparam_432:
    .lex "$name", param_1374
.annotate 'line', 437
    new $P104, "Undef"
    set $P1375, $P104
    .lex "$metarole", $P1375
    find_lex $P105, "self"
    find_lex $P106, "$name"
    unless_null $P106, vivify_433
    new $P106, "Undef"
  vivify_433:
    $P107 = $P105."new"($P106 :named("name"))
    store_lex "$metarole", $P107
.annotate 'line', 439
    find_lex $P105, "$metarole"
    unless_null $P105, vivify_434
    new $P105, "Undef"
  vivify_434:
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
.sub "set_body_block" :anon :subid("70_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1378
    .param pmc param_1379
    .param pmc param_1380
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 443
    .lex "self", param_1378
    .lex "$obj", param_1379
    .lex "$body_block", param_1380
.annotate 'line', 444
    find_lex $P103, "$body_block"
    unless_null $P103, vivify_435
    new $P103, "Undef"
  vivify_435:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!body_block", 6, $P103
.annotate 'line', 443
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("71_1321350732.3287") :outer("64_1321350732.3287")
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
    find_lex $P103, "$name"
    unless_null $P103, vivify_436
    new $P103, "Undef"
  vivify_436:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1387, $P105, $P106, "%!methods", 2
    unless_null $P1387, vivify_437
    $P1387 = root_new ['parrot';'Hash']
  vivify_437:
    set $P107, $P1387[$P103]
    unless_null $P107, vivify_438
    new $P107, "Undef"
  vivify_438:
    unless $P107, if_1386_end
.annotate 'line', 449
    new $P108, "String"
    assign $P108, "This role already has a method named "
    find_lex $P109, "$name"
    unless_null $P109, vivify_439
    new $P109, "Undef"
  vivify_439:
    concat $P110, $P108, $P109
    die $P110
  if_1386_end:
.annotate 'line', 451
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_440
    new $P103, "Undef"
  vivify_440:
    find_lex $P104, "$name"
    unless_null $P104, vivify_441
    new $P104, "Undef"
  vivify_441:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1388, $P106, $P107, "%!methods", 2
    unless_null $P1388, vivify_442
    $P1388 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P106, $P107, "%!methods", 2, $P1388
  vivify_442:
    set $P1388[$P104], $P103
.annotate 'line', 447
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("72_1321350732.3287") :outer("64_1321350732.3287")
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
    find_lex $P1396, "%todo"
    unless_null $P1396, vivify_443
    $P1396 = root_new ['parrot';'Hash']
  vivify_443:
.annotate 'line', 456
    find_lex $P103, "$name"
    unless_null $P103, vivify_444
    new $P103, "Undef"
  vivify_444:
    find_lex $P1397, "%todo"
    unless_null $P1397, vivify_445
    $P1397 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1397
  vivify_445:
    set $P1397["name"], $P103
.annotate 'line', 457
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_446
    new $P103, "Undef"
  vivify_446:
    find_lex $P1398, "%todo"
    unless_null $P1398, vivify_447
    $P1398 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1398
  vivify_447:
    set $P1398["code"], $P103
.annotate 'line', 458
    find_lex $P1399, "%todo"
    unless_null $P1399, vivify_448
    $P1399 = root_new ['parrot';'Hash']
  vivify_448:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1400, $P104, $P105, "@!multi_methods_to_incorporate", 3
    unless_null $P1400, vivify_449
    $P1400 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    set $N100, $P1400
    set $I100, $N100
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1401, $P107, $P108, "@!multi_methods_to_incorporate", 3
    unless_null $P1401, vivify_450
    $P1401 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P107, $P108, "@!multi_methods_to_incorporate", 3, $P1401
  vivify_450:
    set $P1401[$I100], $P1399
.annotate 'line', 454
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_451
    new $P103, "Undef"
  vivify_451:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("73_1321350732.3287") :outer("64_1321350732.3287")
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
    find_lex $P104, "$meta_attr"
    unless_null $P104, vivify_452
    new $P104, "Undef"
  vivify_452:
    $P105 = $P104."name"()
    store_lex "$name", $P105
.annotate 'line', 464
    find_lex $P104, "$name"
    unless_null $P104, vivify_453
    new $P104, "Undef"
  vivify_453:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1408, $P106, $P107, "%!attributes", 1
    unless_null $P1408, vivify_454
    $P1408 = root_new ['parrot';'Hash']
  vivify_454:
    set $P108, $P1408[$P104]
    unless_null $P108, vivify_455
    new $P108, "Undef"
  vivify_455:
    unless $P108, if_1407_end
.annotate 'line', 465
    new $P109, "String"
    assign $P109, "This role already has an attribute named "
    find_lex $P110, "$name"
    unless_null $P110, vivify_456
    new $P110, "Undef"
  vivify_456:
    concat $P111, $P109, $P110
    die $P111
  if_1407_end:
.annotate 'line', 467
    find_lex $P104, "$meta_attr"
    unless_null $P104, vivify_457
    new $P104, "Undef"
  vivify_457:
    find_lex $P105, "$name"
    unless_null $P105, vivify_458
    new $P105, "Undef"
  vivify_458:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P1409, $P107, $P108, "%!attributes", 1
    unless_null $P1409, vivify_459
    $P1409 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P107, $P108, "%!attributes", 1, $P1409
  vivify_459:
    set $P1409[$P105], $P104
.annotate 'line', 462
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("74_1321350732.3287") :outer("64_1321350732.3287")
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
.sub "add_role" :anon :subid("75_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1415
    .param pmc param_1416
    .param pmc param_1417
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 474
    .lex "self", param_1415
    .lex "$obj", param_1416
    .lex "$role", param_1417
.annotate 'line', 475
    find_lex $P103, "$role"
    unless_null $P103, vivify_460
    new $P103, "Undef"
  vivify_460:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P1418, $P105, $P106, "@!roles", 4
    unless_null $P1418, vivify_461
    $P1418 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    set $N100, $P1418
    set $I100, $N100
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1419, $P108, $P109, "@!roles", 4
    unless_null $P1419, vivify_462
    $P1419 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P108, $P109, "@!roles", 4, $P1419
  vivify_462:
    set $P1419[$I100], $P103
.annotate 'line', 474
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("76_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1421
    .param pmc param_1422
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 479
    .lex "self", param_1421
    .lex "$obj", param_1422
.annotate 'line', 480
    new $P103, "Float"
    assign $P103, 1
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!composed", 5, $P103
.annotate 'line', 479
    find_lex $P103, "$obj"
    unless_null $P103, vivify_463
    new $P103, "Undef"
  vivify_463:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("77_1321350732.3287") :outer("64_1321350732.3287")
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
.sub "specialize" :anon :subid("78_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1429
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1452 = "82_1321350732.3287" 
    capture_lex $P1452
    .const 'Sub' $P1445 = "81_1321350732.3287" 
    capture_lex $P1445
    .const 'Sub' $P1440 = "80_1321350732.3287" 
    capture_lex $P1440
    .const 'Sub' $P1435 = "79_1321350732.3287" 
    capture_lex $P1435
    new $P1428, ['ExceptionHandler'], .CONTROL_RETURN
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
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!body_block", 6
    unless_null $P107, vivify_464
    new $P107, "Undef"
  vivify_464:
    find_lex $P108, "$class_arg"
    unless_null $P108, vivify_465
    new $P108, "Undef"
  vivify_465:
    $P107($P108)
.annotate 'line', 502
    find_lex $P104, "NQPConcreteRoleHOW"
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P108, $P106, $P107, "$!name", 0
    unless_null $P108, vivify_466
    new $P108, "Undef"
  vivify_466:
    find_lex $P109, "$obj"
    unless_null $P109, vivify_467
    new $P109, "Undef"
  vivify_467:
    $P110 = $P104."new_type"($P108 :named("name"), $P109 :named("instance_of"))
    store_lex "$irole", $P110
.annotate 'line', 506
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1433, $P106, $P107, "%!attributes", 1
    unless_null $P1433, vivify_468
    $P1433 = root_new ['parrot';'Hash']
  vivify_468:
    defined $I100, $P1433
    unless $I100, for_undef_469
    iter $P104, $P1433
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1437_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1437_test:
    unless $P104, loop1437_done
    shift $P108, $P104
  loop1437_redo:
    .const 'Sub' $P1435 = "79_1321350732.3287" 
    capture_lex $P1435
    $P1435($P108)
  loop1437_next:
    goto loop1437_test
  loop1437_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1437_next
    eq $P110, .CONTROL_LOOP_REDO, loop1437_redo
  loop1437_done:
    pop_eh 
  for_undef_469:
.annotate 'line', 511
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1438, $P106, $P107, "%!methods", 2
    unless_null $P1438, vivify_473
    $P1438 = root_new ['parrot';'Hash']
  vivify_473:
    defined $I100, $P1438
    unless $I100, for_undef_474
    iter $P104, $P1438
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1442_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1442_test:
    unless $P104, loop1442_done
    shift $P108, $P104
  loop1442_redo:
    .const 'Sub' $P1440 = "80_1321350732.3287" 
    capture_lex $P1440
    $P1440($P108)
  loop1442_next:
    goto loop1442_test
  loop1442_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1442_next
    eq $P110, .CONTROL_LOOP_REDO, loop1442_redo
  loop1442_done:
    pop_eh 
  for_undef_474:
.annotate 'line', 514
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1443, $P106, $P107, "@!multi_methods_to_incorporate", 3
    unless_null $P1443, vivify_479
    $P1443 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    defined $I100, $P1443
    unless $I100, for_undef_480
    iter $P104, $P1443
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1449_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1449_test:
    unless $P104, loop1449_done
    shift $P108, $P104
  loop1449_redo:
    .const 'Sub' $P1445 = "81_1321350732.3287" 
    capture_lex $P1445
    $P1445($P108)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1449_next
    eq $P110, .CONTROL_LOOP_REDO, loop1449_redo
  loop1449_done:
    pop_eh 
  for_undef_480:
.annotate 'line', 519
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1450, $P106, $P107, "@!roles", 4
    unless_null $P1450, vivify_487
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    defined $I100, $P1450
    unless $I100, for_undef_488
    iter $P104, $P1450
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1455_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1455_test:
    unless $P104, loop1455_done
    shift $P108, $P104
  loop1455_redo:
    .const 'Sub' $P1452 = "82_1321350732.3287" 
    capture_lex $P1452
    $P1452($P108)
  loop1455_next:
    goto loop1455_test
  loop1455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1455_next
    eq $P111, .CONTROL_LOOP_REDO, loop1455_redo
  loop1455_done:
    pop_eh 
  for_undef_488:
.annotate 'line', 525
    find_lex $P104, "$irole"
    unless_null $P104, vivify_495
    new $P104, "Undef"
  vivify_495:
    get_how $P105, $P104
    find_lex $P106, "$irole"
    unless_null $P106, vivify_496
    new $P106, "Undef"
  vivify_496:
    $P105."compose"($P106)
.annotate 'line', 526
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    find_lex $P105, "$irole"
    unless_null $P105, vivify_497
    new $P105, "Undef"
  vivify_497:
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
.sub "_block1434"  :anon :subid("79_1321350732.3287") :outer("78_1321350732.3287")
    .param pmc param_1436
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1436
.annotate 'line', 507
    find_lex $P109, "$irole"
    unless_null $P109, vivify_470
    new $P109, "Undef"
  vivify_470:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_471
    new $P111, "Undef"
  vivify_471:
    find_lex $P112, "$_"
    unless_null $P112, vivify_472
    new $P112, "Undef"
  vivify_472:
    $P113 = $P112."value"()
    $P114 = $P110."add_attribute"($P111, $P113)
.annotate 'line', 506
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1439"  :anon :subid("80_1321350732.3287") :outer("78_1321350732.3287")
    .param pmc param_1441
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1441
.annotate 'line', 512
    find_lex $P109, "$irole"
    unless_null $P109, vivify_475
    new $P109, "Undef"
  vivify_475:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_476
    new $P111, "Undef"
  vivify_476:
    find_lex $P112, "$_"
    unless_null $P112, vivify_477
    new $P112, "Undef"
  vivify_477:
    $P113 = $P112."key"()
    find_lex $P114, "$_"
    unless_null $P114, vivify_478
    new $P114, "Undef"
  vivify_478:
    $P115 = $P114."value"()
    $P116 = "reify_method"($P115)
    $P117 = $P110."add_method"($P111, $P113, $P116)
.annotate 'line', 511
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1444"  :anon :subid("81_1321350732.3287") :outer("78_1321350732.3287")
    .param pmc param_1446
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1446
.annotate 'line', 515
    find_lex $P109, "$irole"
    unless_null $P109, vivify_481
    new $P109, "Undef"
  vivify_481:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_482
    new $P111, "Undef"
  vivify_482:
    find_lex $P1447, "$_"
    unless_null $P1447, vivify_483
    $P1447 = root_new ['parrot';'Hash']
  vivify_483:
    set $P112, $P1447["name"]
    unless_null $P112, vivify_484
    new $P112, "Undef"
  vivify_484:
    find_lex $P1448, "$_"
    unless_null $P1448, vivify_485
    $P1448 = root_new ['parrot';'Hash']
  vivify_485:
    set $P113, $P1448["code"]
    unless_null $P113, vivify_486
    new $P113, "Undef"
  vivify_486:
    $P114 = "reify_method"($P113)
    $P115 = $P110."add_multi_method"($P111, $P112, $P114)
.annotate 'line', 514
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1451"  :anon :subid("82_1321350732.3287") :outer("78_1321350732.3287")
    .param pmc param_1454
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 520
    new $P109, "Undef"
    set $P1453, $P109
    .lex "$specialized", $P1453
    .lex "$_", param_1454
    find_lex $P110, "$irole"
    unless_null $P110, vivify_489
    new $P110, "Undef"
  vivify_489:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_490
    new $P112, "Undef"
  vivify_490:
    find_lex $P113, "$class_arg"
    unless_null $P113, vivify_491
    new $P113, "Undef"
  vivify_491:
    $P114 = $P111."specialize"($P112, $P113)
    store_lex "$specialized", $P114
.annotate 'line', 521
    find_lex $P110, "$irole"
    unless_null $P110, vivify_492
    new $P110, "Undef"
  vivify_492:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_493
    new $P112, "Undef"
  vivify_493:
    find_lex $P113, "$specialized"
    unless_null $P113, vivify_494
    new $P113, "Undef"
  vivify_494:
    $P114 = $P111."add_role"($P112, $P113)
.annotate 'line', 519
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("83_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1457
    .param pmc param_1458
    .param pmc param_1459 :optional :named("local")
    .param int has_param_1459 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 540
    .const 'Sub' $P1465 = "84_1321350732.3287" 
    capture_lex $P1465
    .lex "self", param_1457
    .lex "$obj", param_1458
    if has_param_1459, optparam_498
    new $P103, "Undef"
    set param_1459, $P103
  optparam_498:
    .lex "$local", param_1459
.annotate 'line', 541
    $P1461 = root_new ['parrot';'ResizablePMCArray']
    set $P1460, $P1461
    .lex "@meths", $P1460
.annotate 'line', 540
    find_lex $P1462, "@meths"
    unless_null $P1462, vivify_499
    $P1462 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
.annotate 'line', 542
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1463, $P106, $P107, "%!methods", 2
    unless_null $P1463, vivify_500
    $P1463 = root_new ['parrot';'Hash']
  vivify_500:
    defined $I100, $P1463
    unless $I100, for_undef_501
    iter $P104, $P1463
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1468_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1468_test:
    unless $P104, loop1468_done
    shift $P108, $P104
  loop1468_redo:
    .const 'Sub' $P1465 = "84_1321350732.3287" 
    capture_lex $P1465
    $P1465($P108)
  loop1468_next:
    goto loop1468_test
  loop1468_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1468_next
    eq $P110, .CONTROL_LOOP_REDO, loop1468_redo
  loop1468_done:
    pop_eh 
  for_undef_501:
.annotate 'line', 540
    find_lex $P1469, "@meths"
    unless_null $P1469, vivify_504
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    .return ($P1469)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1464"  :anon :subid("84_1321350732.3287") :outer("83_1321350732.3287")
    .param pmc param_1466
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 542
    .lex "$_", param_1466
.annotate 'line', 543
    find_lex $P1467, "@meths"
    unless_null $P1467, vivify_502
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    find_lex $P109, "$_"
    unless_null $P109, vivify_503
    new $P109, "Undef"
  vivify_503:
    $P110 = $P109."value"()
    $P111 = $P1467."push"($P110)
.annotate 'line', 542
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("85_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1471
    .param pmc param_1472
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 548
    .lex "self", param_1471
    .lex "$obj", param_1472
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1473, $P104, $P105, "%!methods", 2
    unless_null $P1473, vivify_505
    $P1473 = root_new ['parrot';'Hash']
  vivify_505:
    .return ($P1473)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("86_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1475
    .param pmc param_1476
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 552
    .lex "self", param_1475
    .lex "$obj", param_1476
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!name", 0
    unless_null $P106, vivify_506
    new $P106, "Undef"
  vivify_506:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("87_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1478
    .param pmc param_1479
    .param pmc param_1480 :optional :named("local")
    .param int has_param_1480 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 556
    .const 'Sub' $P1486 = "88_1321350732.3287" 
    capture_lex $P1486
    .lex "self", param_1478
    .lex "$obj", param_1479
    if has_param_1480, optparam_507
    new $P103, "Undef"
    set param_1480, $P103
  optparam_507:
    .lex "$local", param_1480
.annotate 'line', 557
    $P1482 = root_new ['parrot';'ResizablePMCArray']
    set $P1481, $P1482
    .lex "@attrs", $P1481
.annotate 'line', 556
    find_lex $P1483, "@attrs"
    unless_null $P1483, vivify_508
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
.annotate 'line', 558
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P1484, $P106, $P107, "%!attributes", 1
    unless_null $P1484, vivify_509
    $P1484 = root_new ['parrot';'Hash']
  vivify_509:
    defined $I100, $P1484
    unless $I100, for_undef_510
    iter $P104, $P1484
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1489_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1489_test:
    unless $P104, loop1489_done
    shift $P108, $P104
  loop1489_redo:
    .const 'Sub' $P1486 = "88_1321350732.3287" 
    capture_lex $P1486
    $P1486($P108)
  loop1489_next:
    goto loop1489_test
  loop1489_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1489_next
    eq $P110, .CONTROL_LOOP_REDO, loop1489_redo
  loop1489_done:
    pop_eh 
  for_undef_510:
.annotate 'line', 556
    find_lex $P1490, "@attrs"
    unless_null $P1490, vivify_513
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    .return ($P1490)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1485"  :anon :subid("88_1321350732.3287") :outer("87_1321350732.3287")
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 558
    .lex "$_", param_1487
.annotate 'line', 559
    find_lex $P1488, "@attrs"
    unless_null $P1488, vivify_511
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    find_lex $P109, "$_"
    unless_null $P109, vivify_512
    new $P109, "Undef"
  vivify_512:
    $P110 = $P109."value"()
    $P111 = $P1488."push"($P110)
.annotate 'line', 558
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("89_1321350732.3287") :outer("64_1321350732.3287")
    .param pmc param_1492
    .param pmc param_1493
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 564
    .lex "self", param_1492
    .lex "$obj", param_1493
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1494, $P104, $P105, "@!roles", 4
    unless_null $P1494, vivify_514
    $P1494 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    .return ($P1494)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1496"  :subid("90_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 574
    .const 'Sub' $P1945 = "149_1321350732.3287" 
    capture_lex $P1945
    .const 'Sub' $P1929 = "147_1321350732.3287" 
    capture_lex $P1929
    .const 'Sub' $P1918 = "146_1321350732.3287" 
    capture_lex $P1918
    .const 'Sub' $P1906 = "145_1321350732.3287" 
    capture_lex $P1906
    .const 'Sub' $P1901 = "144_1321350732.3287" 
    capture_lex $P1901
    .const 'Sub' $P1896 = "143_1321350732.3287" 
    capture_lex $P1896
    .const 'Sub' $P1882 = "141_1321350732.3287" 
    capture_lex $P1882
    .const 'Sub' $P1879 = "140_1321350732.3287" 
    capture_lex $P1879
    .const 'Sub' $P1875 = "139_1321350732.3287" 
    capture_lex $P1875
    .const 'Sub' $P1861 = "137_1321350732.3287" 
    capture_lex $P1861
    .const 'Sub' $P1856 = "136_1321350732.3287" 
    capture_lex $P1856
    .const 'Sub' $P1852 = "135_1321350732.3287" 
    capture_lex $P1852
    .const 'Sub' $P1845 = "134_1321350732.3287" 
    capture_lex $P1845
    .const 'Sub' $P1826 = "132_1321350732.3287" 
    capture_lex $P1826
    .const 'Sub' $P1807 = "130_1321350732.3287" 
    capture_lex $P1807
    .const 'Sub' $P1802 = "129_1321350732.3287" 
    capture_lex $P1802
    .const 'Sub' $P1785 = "127_1321350732.3287" 
    capture_lex $P1785
    .const 'Sub' $P1766 = "124_1321350732.3287" 
    capture_lex $P1766
    .const 'Sub' $P1718 = "119_1321350732.3287" 
    capture_lex $P1718
    .const 'Sub' $P1688 = "115_1321350732.3287" 
    capture_lex $P1688
    .const 'Sub' $P1680 = "114_1321350732.3287" 
    capture_lex $P1680
    .const 'Sub' $P1672 = "113_1321350732.3287" 
    capture_lex $P1672
    .const 'Sub' $P1660 = "111_1321350732.3287" 
    capture_lex $P1660
    .const 'Sub' $P1656 = "110_1321350732.3287" 
    capture_lex $P1656
    .const 'Sub' $P1642 = "108_1321350732.3287" 
    capture_lex $P1642
    .const 'Sub' $P1634 = "107_1321350732.3287" 
    capture_lex $P1634
    .const 'Sub' $P1621 = "106_1321350732.3287" 
    capture_lex $P1621
    .const 'Sub' $P1611 = "105_1321350732.3287" 
    capture_lex $P1611
    .const 'Sub' $P1605 = "104_1321350732.3287" 
    capture_lex $P1605
    .const 'Sub' $P1602 = "103_1321350732.3287" 
    capture_lex $P1602
    .const 'Sub' $P1598 = "102_1321350732.3287" 
    capture_lex $P1598
    .const 'Sub' $P1596 = "101_1321350732.3287" 
    capture_lex $P1596
    .const 'Sub' $P1532 = "94_1321350732.3287" 
    capture_lex $P1532
    .const 'Sub' $P1500 = "91_1321350732.3287" 
    capture_lex $P1500
.annotate 'line', 607
    new $P100, "Undef"
    set $P1498, $P100
    .lex "$archetypes", $P1498
.annotate 'line', 820
    .const 'Sub' $P1500 = "91_1321350732.3287" 
    newclosure $P1530, $P1500
    set $P1499, $P1530
    .lex "compute_c3_mro", $P1499
.annotate 'line', 846
    .const 'Sub' $P1532 = "94_1321350732.3287" 
    newclosure $P1593, $P1532
    set $P1531, $P1593
    .lex "c3_merge", $P1531
.annotate 'line', 607
    .lex "$?PACKAGE", $P1594
    .lex "$?CLASS", $P1595
    find_lex $P107, "Archetypes"
    $P108 = $P107."new"(1 :named("nominal"), 1 :named("inheritable"))
    store_lex "$archetypes", $P108
.annotate 'line', 574
    find_lex $P107, "compute_c3_mro"
    find_lex $P107, "c3_merge"
.annotate 'line', 1054
    .const 'Sub' $P1945 = "149_1321350732.3287" 
    newclosure $P1962, $P1945
.annotate 'line', 574
    .return ($P1962)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("91_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1503
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 820
    .const 'Sub' $P1515 = "92_1321350732.3287" 
    capture_lex $P1515
    new $P1502, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1502, control_1501
    push_eh $P1502
    .lex "$class", param_1503
.annotate 'line', 821
    $P1505 = root_new ['parrot';'ResizablePMCArray']
    set $P1504, $P1505
    .lex "@immediate_parents", $P1504
.annotate 'line', 824
    $P1507 = root_new ['parrot';'ResizablePMCArray']
    set $P1506, $P1507
    .lex "@result", $P1506
.annotate 'line', 821
    find_lex $P101, "$class"
    unless_null $P101, vivify_515
    new $P101, "Undef"
  vivify_515:
    get_how $P102, $P101
    find_lex $P103, "$class"
    unless_null $P103, vivify_516
    new $P103, "Undef"
  vivify_516:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    store_lex "@immediate_parents", $P104
.annotate 'line', 820
    find_lex $P1508, "@result"
    unless_null $P1508, vivify_517
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
.annotate 'line', 825
    find_lex $P1510, "@immediate_parents"
    unless_null $P1510, vivify_518
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    set $N100, $P1510
    unless $N100, if_1509_end
.annotate 'line', 826
    find_lex $P1512, "@immediate_parents"
    unless_null $P1512, vivify_519
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $N101, $P1512
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1511
.annotate 'line', 828
    .const 'Sub' $P1515 = "92_1321350732.3287" 
    capture_lex $P1515
    $P1515()
    goto if_1511_end
  if_1511:
.annotate 'line', 827
    new $P101, "Float"
    assign $P101, 0
    set $I101, $P101
    find_lex $P1513, "@immediate_parents"
    unless_null $P1513, vivify_528
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    set $P102, $P1513[$I101]
    unless_null $P102, vivify_529
    new $P102, "Undef"
  vivify_529:
    $P103 = "compute_c3_mro"($P102)
    store_lex "@result", $P103
  if_1511_end:
  if_1509_end:
.annotate 'line', 841
    find_lex $P1528, "@result"
    unless_null $P1528, vivify_530
    $P1528 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    find_lex $P101, "$class"
    unless_null $P101, vivify_531
    new $P101, "Undef"
  vivify_531:
    $P1528."unshift"($P101)
.annotate 'line', 842
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    find_lex $P1529, "@result"
    unless_null $P1529, vivify_532
    $P1529 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    setattribute $P101, 'payload', $P1529
    throw $P101
.annotate 'line', 820
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
.sub "_block1514"  :anon :subid("92_1321350732.3287") :outer("91_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 828
    .const 'Sub' $P1521 = "93_1321350732.3287" 
    capture_lex $P1521
.annotate 'line', 831
    $P1517 = root_new ['parrot';'ResizablePMCArray']
    set $P1516, $P1517
    .lex "@merge_list", $P1516
.annotate 'line', 828
    find_lex $P1518, "@merge_list"
    unless_null $P1518, vivify_520
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
.annotate 'line', 832
    find_lex $P1519, "@immediate_parents"
    unless_null $P1519, vivify_521
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    defined $I101, $P1519
    unless $I101, for_undef_522
    iter $P101, $P1519
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1524_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1524_test:
    unless $P101, loop1524_done
    shift $P102, $P101
  loop1524_redo:
    .const 'Sub' $P1521 = "93_1321350732.3287" 
    capture_lex $P1521
    $P1521($P102)
  loop1524_next:
    goto loop1524_test
  loop1524_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1524_next
    eq $P104, .CONTROL_LOOP_REDO, loop1524_redo
  loop1524_done:
    pop_eh 
  for_undef_522:
.annotate 'line', 835
    find_lex $P1525, "@merge_list"
    unless_null $P1525, vivify_525
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    find_lex $P1526, "@immediate_parents"
    unless_null $P1526, vivify_526
    $P1526 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    $P1525."push"($P1526)
.annotate 'line', 836
    find_lex $P1527, "@merge_list"
    unless_null $P1527, vivify_527
    $P1527 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P101 = "c3_merge"($P1527)
    store_lex "@result", $P101
.annotate 'line', 828
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1520"  :anon :subid("93_1321350732.3287") :outer("92_1321350732.3287")
    .param pmc param_1522
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 832
    .lex "$_", param_1522
.annotate 'line', 833
    find_lex $P1523, "@merge_list"
    unless_null $P1523, vivify_523
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    find_lex $P103, "$_"
    unless_null $P103, vivify_524
    new $P103, "Undef"
  vivify_524:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1523."push"($P104)
.annotate 'line', 832
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("94_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1535
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 846
    .const 'Sub' $P1576 = "99_1321350732.3287" 
    capture_lex $P1576
    .const 'Sub' $P1545 = "95_1321350732.3287" 
    capture_lex $P1545
    new $P1534, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1534, control_1533
    push_eh $P1534
    .lex "@merge_list", param_1535
.annotate 'line', 847
    $P1537 = root_new ['parrot';'ResizablePMCArray']
    set $P1536, $P1537
    .lex "@result", $P1536
.annotate 'line', 848
    new $P102, "Undef"
    set $P1538, $P102
    .lex "$accepted", $P1538
.annotate 'line', 849
    new $P103, "Undef"
    set $P1539, $P103
    .lex "$something_accepted", $P1539
.annotate 'line', 850
    new $P104, "Undef"
    set $P1540, $P104
    .lex "$cand_count", $P1540
.annotate 'line', 893
    new $P105, "Undef"
    set $P1541, $P105
    .lex "$i", $P1541
.annotate 'line', 846
    find_lex $P1542, "@result"
    unless_null $P1542, vivify_533
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    find_lex $P106, "$accepted"
    unless_null $P106, vivify_534
    new $P106, "Undef"
  vivify_534:
.annotate 'line', 849
    new $P106, "Float"
    assign $P106, 0
    store_lex "$something_accepted", $P106
.annotate 'line', 850
    new $P106, "Float"
    assign $P106, 0
    store_lex "$cand_count", $P106
.annotate 'line', 853
    find_lex $P1543, "@merge_list"
    unless_null $P1543, vivify_535
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    defined $I100, $P1543
    unless $I100, for_undef_536
    iter $P106, $P1543
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1570_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1570_test:
    unless $P106, loop1570_done
    shift $P107, $P106
  loop1570_redo:
    .const 'Sub' $P1545 = "95_1321350732.3287" 
    capture_lex $P1545
    $P1545($P107)
  loop1570_next:
    goto loop1570_test
  loop1570_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1570_next
    eq $P110, .CONTROL_LOOP_REDO, loop1570_redo
  loop1570_done:
    pop_eh 
  for_undef_536:
.annotate 'line', 883
    find_lex $P106, "$cand_count"
    unless_null $P106, vivify_555
    new $P106, "Undef"
  vivify_555:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1571_end
.annotate 'line', 884
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_lex $P1572, "@result"
    unless_null $P1572, vivify_556
    $P1572 = root_new ['parrot';'ResizablePMCArray']
  vivify_556:
    setattribute $P107, 'payload', $P1572
    throw $P107
  if_1571_end:
.annotate 'line', 888
    find_lex $P106, "$something_accepted"
    unless_null $P106, vivify_557
    new $P106, "Undef"
  vivify_557:
    if $P106, unless_1573_end
.annotate 'line', 889
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1573_end:
.annotate 'line', 893
    new $P106, "Float"
    assign $P106, 0
    store_lex "$i", $P106
.annotate 'line', 894
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1589_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1589_test:
    find_lex $P106, "$i"
    unless_null $P106, vivify_558
    new $P106, "Undef"
  vivify_558:
    set $N100, $P106
    find_lex $P1574, "@merge_list"
    unless_null $P1574, vivify_559
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_559:
    set $N101, $P1574
    islt $I100, $N100, $N101
    unless $I100, loop1589_done
  loop1589_redo:
    .const 'Sub' $P1576 = "99_1321350732.3287" 
    capture_lex $P1576
    $P1576()
  loop1589_next:
    goto loop1589_test
  loop1589_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1589_next
    eq $P109, .CONTROL_LOOP_REDO, loop1589_redo
  loop1589_done:
    pop_eh 
.annotate 'line', 907
    find_lex $P1590, "@merge_list"
    unless_null $P1590, vivify_573
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    $P106 = "c3_merge"($P1590)
    store_lex "@result", $P106
.annotate 'line', 908
    find_lex $P1591, "@result"
    unless_null $P1591, vivify_574
    $P1591 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    find_lex $P106, "$accepted"
    unless_null $P106, vivify_575
    new $P106, "Undef"
  vivify_575:
    $P1591."unshift"($P106)
.annotate 'line', 909
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P1592, "@result"
    unless_null $P1592, vivify_576
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    setattribute $P106, 'payload', $P1592
    throw $P106
.annotate 'line', 846
    .return ()
  control_1533:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1544"  :anon :subid("95_1321350732.3287") :outer("94_1321350732.3287")
    .param pmc param_1548
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 853
    .const 'Sub' $P1552 = "96_1321350732.3287" 
    capture_lex $P1552
.annotate 'line', 854
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    set $P1546, $P1547
    .lex "@cand_list", $P1546
    .lex "$_", param_1548
    find_lex $P108, "$_"
    unless_null $P108, vivify_537
    new $P108, "Undef"
  vivify_537:
    store_lex "@cand_list", $P108
.annotate 'line', 855
    find_lex $P1550, "@cand_list"
    unless_null $P1550, vivify_538
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    set $N100, $P1550
    if $N100, if_1549
    new $P108, 'Float'
    set $P108, $N100
    goto if_1549_end
  if_1549:
    .const 'Sub' $P1552 = "96_1321350732.3287" 
    capture_lex $P1552
    $P112 = $P1552()
    set $P108, $P112
  if_1549_end:
.annotate 'line', 853
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1551"  :anon :subid("96_1321350732.3287") :outer("95_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 855
    .const 'Sub' $P1558 = "97_1321350732.3287" 
    capture_lex $P1558
.annotate 'line', 856
    new $P109, "Undef"
    set $P1553, $P109
    .lex "$rejected", $P1553
.annotate 'line', 857
    new $P110, "Undef"
    set $P1554, $P110
    .lex "$cand_class", $P1554
.annotate 'line', 856
    new $P111, "Float"
    assign $P111, 0
    store_lex "$rejected", $P111
.annotate 'line', 857
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    find_lex $P1555, "@cand_list"
    unless_null $P1555, vivify_539
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    set $P112, $P1555[$I101]
    unless_null $P112, vivify_540
    new $P112, "Undef"
  vivify_540:
    store_lex "$cand_class", $P112
.annotate 'line', 858
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_541
    new $P111, "Undef"
  vivify_541:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 859
    find_lex $P1556, "@merge_list"
    unless_null $P1556, vivify_542
    $P1556 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    defined $I101, $P1556
    unless $I101, for_undef_543
    iter $P111, $P1556
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1568_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1568_test:
    unless $P111, loop1568_done
    shift $P112, $P111
  loop1568_redo:
    .const 'Sub' $P1558 = "97_1321350732.3287" 
    capture_lex $P1558
    $P1558($P112)
  loop1568_next:
    goto loop1568_test
  loop1568_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1568_next
    eq $P115, .CONTROL_LOOP_REDO, loop1568_redo
  loop1568_done:
    pop_eh 
  for_undef_543:
.annotate 'line', 874
    find_lex $P112, "$rejected"
    unless_null $P112, vivify_553
    new $P112, "Undef"
  vivify_553:
    unless $P112, unless_1569
    set $P111, $P112
    goto unless_1569_end
  unless_1569:
.annotate 'line', 875
    find_lex $P113, "$cand_class"
    unless_null $P113, vivify_554
    new $P113, "Undef"
  vivify_554:
    store_lex "$accepted", $P113
.annotate 'line', 876
    new $P113, "Float"
    assign $P113, 1
    store_lex "$something_accepted", $P113
.annotate 'line', 877
    die 0, .CONTROL_LOOP_LAST
  unless_1569_end:
.annotate 'line', 855
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1557"  :anon :subid("97_1321350732.3287") :outer("96_1321350732.3287")
    .param pmc param_1559
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 859
    .const 'Sub' $P1563 = "98_1321350732.3287" 
    capture_lex $P1563
    .lex "$_", param_1559
.annotate 'line', 861
    find_lex $P114, "$_"
    unless_null $P114, vivify_544
    new $P114, "Undef"
  vivify_544:
    find_lex $P1561, "@cand_list"
    unless_null $P1561, vivify_545
    $P1561 = root_new ['parrot';'ResizablePMCArray']
  vivify_545:
    issame $I102, $P114, $P1561
    unless $I102, unless_1560
    new $P113, 'Integer'
    set $P113, $I102
    goto unless_1560_end
  unless_1560:
    .const 'Sub' $P1563 = "98_1321350732.3287" 
    capture_lex $P1563
    $P116 = $P1563()
    set $P113, $P116
  unless_1560_end:
.annotate 'line', 859
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1562"  :anon :subid("98_1321350732.3287") :outer("97_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 863
    new $P115, "Undef"
    set $P1564, $P115
    .lex "$cur_pos", $P1564
    new $P116, "Float"
    assign $P116, 1
    store_lex "$cur_pos", $P116
.annotate 'line', 864
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1567_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1567_test:
    find_lex $P116, "$cur_pos"
    unless_null $P116, vivify_546
    new $P116, "Undef"
  vivify_546:
    set $N101, $P116
    find_lex $P117, "$_"
    unless_null $P117, vivify_547
    new $P117, "Undef"
  vivify_547:
    set $N102, $P117
    isle $I103, $N101, $N102
    unless $I103, loop1567_done
  loop1567_redo:
.annotate 'line', 865
    find_lex $P118, "$cur_pos"
    unless_null $P118, vivify_548
    new $P118, "Undef"
  vivify_548:
    set $I104, $P118
    find_lex $P1566, "$_"
    unless_null $P1566, vivify_549
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    set $P119, $P1566[$I104]
    unless_null $P119, vivify_550
    new $P119, "Undef"
  vivify_550:
    find_lex $P120, "$cand_class"
    unless_null $P120, vivify_551
    new $P120, "Undef"
  vivify_551:
    issame $I105, $P119, $P120
    unless $I105, if_1565_end
.annotate 'line', 866
    new $P121, "Float"
    assign $P121, 1
    store_lex "$rejected", $P121
  if_1565_end:
.annotate 'line', 868
    find_lex $P118, "$cur_pos"
    unless_null $P118, vivify_552
    new $P118, "Undef"
  vivify_552:
    add $P119, $P118, 1
    store_lex "$cur_pos", $P119
  loop1567_next:
.annotate 'line', 864
    goto loop1567_test
  loop1567_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1567_next
    eq $P119, .CONTROL_LOOP_REDO, loop1567_redo
  loop1567_done:
    pop_eh 
.annotate 'line', 861
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1575"  :anon :subid("99_1321350732.3287") :outer("94_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 894
    .const 'Sub' $P1582 = "100_1321350732.3287" 
    capture_lex $P1582
.annotate 'line', 895
    $P1578 = root_new ['parrot';'ResizablePMCArray']
    set $P1577, $P1578
    .lex "@new_list", $P1577
.annotate 'line', 894
    find_lex $P1579, "@new_list"
    unless_null $P1579, vivify_560
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_560:
.annotate 'line', 896
    find_lex $P108, "$i"
    unless_null $P108, vivify_561
    new $P108, "Undef"
  vivify_561:
    set $I101, $P108
    find_lex $P1580, "@merge_list"
    unless_null $P1580, vivify_562
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_562:
    set $P109, $P1580[$I101]
    unless_null $P109, vivify_563
    new $P109, "Undef"
  vivify_563:
    defined $I102, $P109
    unless $I102, for_undef_564
    iter $P107, $P109
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1586_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1586_test:
    unless $P107, loop1586_done
    shift $P110, $P107
  loop1586_redo:
    .const 'Sub' $P1582 = "100_1321350732.3287" 
    capture_lex $P1582
    $P1582($P110)
  loop1586_next:
    goto loop1586_test
  loop1586_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1586_next
    eq $P113, .CONTROL_LOOP_REDO, loop1586_redo
  loop1586_done:
    pop_eh 
  for_undef_564:
.annotate 'line', 901
    find_lex $P1587, "@new_list"
    unless_null $P1587, vivify_569
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_569:
    find_lex $P107, "$i"
    unless_null $P107, vivify_570
    new $P107, "Undef"
  vivify_570:
    set $I101, $P107
    find_lex $P1588, "@merge_list"
    unless_null $P1588, vivify_571
    $P1588 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1588
  vivify_571:
    set $P1588[$I101], $P1587
.annotate 'line', 902
    find_lex $P107, "$i"
    unless_null $P107, vivify_572
    new $P107, "Undef"
  vivify_572:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 894
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1581"  :anon :subid("100_1321350732.3287") :outer("99_1321350732.3287")
    .param pmc param_1583
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 896
    .lex "$_", param_1583
.annotate 'line', 897
    find_lex $P112, "$_"
    unless_null $P112, vivify_565
    new $P112, "Undef"
  vivify_565:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_566
    new $P113, "Undef"
  vivify_566:
    issame $I103, $P112, $P113
    unless $I103, unless_1584
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1584_end
  unless_1584:
.annotate 'line', 898
    find_lex $P1585, "@new_list"
    unless_null $P1585, vivify_567
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    find_lex $P114, "$_"
    unless_null $P114, vivify_568
    new $P114, "Undef"
  vivify_568:
    $P115 = $P1585."push"($P114)
.annotate 'line', 897
    set $P111, $P115
  unless_1584_end:
.annotate 'line', 896
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("101_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1597
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 608
    .lex "self", param_1597
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("102_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1599
    .param pmc param_1600 :optional :named("name")
    .param int has_param_1600 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 617
    .lex "self", param_1599
    if has_param_1600, optparam_578
    new $P107, "Undef"
    set param_1600, $P107
  optparam_578:
    .lex "$name", param_1600
.annotate 'line', 618
    new $P108, "Undef"
    set $P1601, $P108
    .lex "$obj", $P1601
    find_lex $P109, "self"
    repr_instance_of $P110, $P109
    store_lex "$obj", $P110
.annotate 'line', 619
    find_lex $P109, "$obj"
    unless_null $P109, vivify_579
    new $P109, "Undef"
  vivify_579:
    find_lex $P110, "$name"
    unless_null $P110, vivify_580
    new $P110, "Undef"
  vivify_580:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 617
    find_lex $P109, "$obj"
    unless_null $P109, vivify_581
    new $P109, "Undef"
  vivify_581:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("103_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1603
    .param pmc param_1604 :optional :named("name")
    .param int has_param_1604 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 623
    .lex "self", param_1603
    if has_param_1604, optparam_582
    new $P107, "Undef"
    set param_1604, $P107
  optparam_582:
    .lex "$name", param_1604
.annotate 'line', 624
    find_lex $P108, "$name"
    unless_null $P108, vivify_583
    new $P108, "Undef"
  vivify_583:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_bind_attr_obj $P110, $P111, "$!name", 0, $P108
.annotate 'line', 623
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("104_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1606
    .param pmc param_1607 :optional :named("name")
    .param int has_param_1607 :opt_flag
    .param pmc param_1608 :optional :named("repr")
    .param int has_param_1608 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 629
    .lex "self", param_1606
    if has_param_1607, optparam_584
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1607, $P107
  optparam_584:
    .lex "$name", param_1607
    if has_param_1608, optparam_585
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1608, $P108
  optparam_585:
    .lex "$repr", param_1608
.annotate 'line', 630
    new $P109, "Undef"
    set $P1609, $P109
    .lex "$metaclass", $P1609
    find_lex $P110, "self"
    find_lex $P111, "$name"
    unless_null $P111, vivify_586
    new $P111, "Undef"
  vivify_586:
    $P112 = $P110."new"($P111 :named("name"))
    store_lex "$metaclass", $P112
.annotate 'line', 632
    find_lex $P110, "$metaclass"
    unless_null $P110, vivify_587
    new $P110, "Undef"
  vivify_587:
    find_lex $P111, "$repr"
    unless_null $P111, vivify_588
    new $P111, "Undef"
  vivify_588:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1610 = root_new ['parrot';'Hash']
    set_who $P112, $P1610
.annotate 'line', 629
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("105_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1612
    .param pmc param_1613
    .param pmc param_1614
    .param pmc param_1615
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 636
    .lex "self", param_1612
    .lex "$obj", param_1613
    .lex "$name", param_1614
    .lex "$code_obj", param_1615
.annotate 'line', 637
    find_lex $P107, "$name"
    unless_null $P107, vivify_589
    new $P107, "Undef"
  vivify_589:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1617, $P109, $P110, "%!methods", 2
    unless_null $P1617, vivify_590
    $P1617 = root_new ['parrot';'Hash']
  vivify_590:
    set $P111, $P1617[$P107]
    unless_null $P111, vivify_591
    new $P111, "Undef"
  vivify_591:
    unless $P111, if_1616_end
.annotate 'line', 638
    new $P112, "String"
    assign $P112, "This class already has a method named "
    find_lex $P113, "$name"
    unless_null $P113, vivify_592
    new $P113, "Undef"
  vivify_592:
    concat $P114, $P112, $P113
    die $P114
  if_1616_end:
.annotate 'line', 640
    find_lex $P108, "$code_obj"
    unless_null $P108, vivify_593
    new $P108, "Undef"
  vivify_593:
    isnull $I100, $P108
    unless $I100, unless_1619
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1619_end
  unless_1619:
    find_lex $P109, "$code_obj"
    unless_null $P109, vivify_594
    new $P109, "Undef"
  vivify_594:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1619_end:
    unless $P107, if_1618_end
.annotate 'line', 641
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    find_lex $P111, "$name"
    unless_null $P111, vivify_595
    new $P111, "Undef"
  vivify_595:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    repr_get_attr_obj $P117, $P115, $P116, "$!name", 0
    unless_null $P117, vivify_596
    new $P117, "Undef"
  vivify_596:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1618_end:
.annotate 'line', 643
    find_lex $P107, "$obj"
    unless_null $P107, vivify_597
    new $P107, "Undef"
  vivify_597:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 644
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_598
    new $P107, "Undef"
  vivify_598:
    find_lex $P108, "$name"
    unless_null $P108, vivify_599
    new $P108, "Undef"
  vivify_599:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1620, $P110, $P111, "%!methods", 2
    unless_null $P1620, vivify_600
    $P1620 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!methods", 2, $P1620
  vivify_600:
    set $P1620[$P108], $P107
.annotate 'line', 636
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("106_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1622
    .param pmc param_1623
    .param pmc param_1624
    .param pmc param_1625
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 647
    .lex "self", param_1622
    .lex "$obj", param_1623
    .lex "$name", param_1624
    .lex "$code_obj", param_1625
.annotate 'line', 653
    $P1627 = root_new ['parrot';'Hash']
    set $P1626, $P1627
    .lex "%todo", $P1626
.annotate 'line', 647
    find_lex $P1628, "%todo"
    unless_null $P1628, vivify_601
    $P1628 = root_new ['parrot';'Hash']
  vivify_601:
.annotate 'line', 654
    find_lex $P107, "$name"
    unless_null $P107, vivify_602
    new $P107, "Undef"
  vivify_602:
    find_lex $P1629, "%todo"
    unless_null $P1629, vivify_603
    $P1629 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1629
  vivify_603:
    set $P1629["name"], $P107
.annotate 'line', 655
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_604
    new $P107, "Undef"
  vivify_604:
    find_lex $P1630, "%todo"
    unless_null $P1630, vivify_605
    $P1630 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1630
  vivify_605:
    set $P1630["code"], $P107
.annotate 'line', 656
    find_lex $P1631, "%todo"
    unless_null $P1631, vivify_606
    $P1631 = root_new ['parrot';'Hash']
  vivify_606:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1632, $P108, $P109, "@!multi_methods_to_incorporate", 3
    unless_null $P1632, vivify_607
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    set $N100, $P1632
    set $I100, $N100
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1633, $P111, $P112, "@!multi_methods_to_incorporate", 3
    unless_null $P1633, vivify_608
    $P1633 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P111, $P112, "@!multi_methods_to_incorporate", 3, $P1633
  vivify_608:
    set $P1633[$I100], $P1631
.annotate 'line', 657
    find_lex $P107, "$obj"
    unless_null $P107, vivify_609
    new $P107, "Undef"
  vivify_609:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 647
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_610
    new $P107, "Undef"
  vivify_610:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("107_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1635
    .param pmc param_1636
    .param pmc param_1637
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 661
    .lex "self", param_1635
    .lex "$obj", param_1636
    .lex "$meta_attr", param_1637
.annotate 'line', 662
    new $P107, "Undef"
    set $P1638, $P107
    .lex "$name", $P1638
    find_lex $P108, "$meta_attr"
    unless_null $P108, vivify_611
    new $P108, "Undef"
  vivify_611:
    $P109 = $P108."name"()
    store_lex "$name", $P109
.annotate 'line', 663
    find_lex $P108, "$name"
    unless_null $P108, vivify_612
    new $P108, "Undef"
  vivify_612:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1640, $P110, $P111, "%!attributes", 1
    unless_null $P1640, vivify_613
    $P1640 = root_new ['parrot';'Hash']
  vivify_613:
    set $P112, $P1640[$P108]
    unless_null $P112, vivify_614
    new $P112, "Undef"
  vivify_614:
    unless $P112, if_1639_end
.annotate 'line', 664
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    find_lex $P114, "$name"
    unless_null $P114, vivify_615
    new $P114, "Undef"
  vivify_615:
    concat $P115, $P113, $P114
    die $P115
  if_1639_end:
.annotate 'line', 666
    find_lex $P108, "$meta_attr"
    unless_null $P108, vivify_616
    new $P108, "Undef"
  vivify_616:
    find_lex $P109, "$name"
    unless_null $P109, vivify_617
    new $P109, "Undef"
  vivify_617:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1641, $P111, $P112, "%!attributes", 1
    unless_null $P1641, vivify_618
    $P1641 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P111, $P112, "%!attributes", 1, $P1641
  vivify_618:
    set $P1641[$P109], $P108
.annotate 'line', 661
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("108_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1643
    .param pmc param_1644
    .param pmc param_1645
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 669
    .const 'Sub' $P1650 = "109_1321350732.3287" 
    capture_lex $P1650
    .lex "self", param_1643
    .lex "$obj", param_1644
    .lex "$parent", param_1645
.annotate 'line', 670
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_619
    new $P110, "Undef"
  vivify_619:
    unless $P110, if_1646_end
.annotate 'line', 671
    die "NQPClassHOW does not support adding parents after being composed."
  if_1646_end:
.annotate 'line', 673
    find_lex $P107, "$obj"
    unless_null $P107, vivify_620
    new $P107, "Undef"
  vivify_620:
    find_lex $P108, "$parent"
    unless_null $P108, vivify_621
    new $P108, "Undef"
  vivify_621:
    issame $I100, $P107, $P108
    unless $I100, if_1647_end
.annotate 'line', 674
    new $P109, 'String'
    set $P109, "Class '"
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P113, $P111, $P112, "$!name", 0
    unless_null $P113, vivify_622
    new $P113, "Undef"
  vivify_622:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1647_end:
.annotate 'line', 676
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1648, $P109, $P110, "@!parents", 4
    unless_null $P1648, vivify_623
    $P1648 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    defined $I100, $P1648
    unless $I100, for_undef_624
    iter $P107, $P1648
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1653_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1653_test:
    unless $P107, loop1653_done
    shift $P111, $P107
  loop1653_redo:
    .const 'Sub' $P1650 = "109_1321350732.3287" 
    capture_lex $P1650
    $P1650($P111)
  loop1653_next:
    goto loop1653_test
  loop1653_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1653_next
    eq $P114, .CONTROL_LOOP_REDO, loop1653_redo
  loop1653_done:
    pop_eh 
  for_undef_624:
.annotate 'line', 681
    find_lex $P107, "$parent"
    unless_null $P107, vivify_628
    new $P107, "Undef"
  vivify_628:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1654, $P109, $P110, "@!parents", 4
    unless_null $P1654, vivify_629
    $P1654 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $N100, $P1654
    set $I100, $N100
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1655, $P112, $P113, "@!parents", 4
    unless_null $P1655, vivify_630
    $P1655 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!parents", 4, $P1655
  vivify_630:
    set $P1655[$I100], $P107
.annotate 'line', 669
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1649"  :anon :subid("109_1321350732.3287") :outer("108_1321350732.3287")
    .param pmc param_1651
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 676
    .lex "$_", param_1651
.annotate 'line', 677
    find_lex $P113, "$_"
    unless_null $P113, vivify_625
    new $P113, "Undef"
  vivify_625:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_626
    new $P114, "Undef"
  vivify_626:
    issame $I101, $P113, $P114
    if $I101, if_1652
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1652_end
  if_1652:
.annotate 'line', 678
    new $P115, "String"
    assign $P115, "Already have "
    find_lex $P116, "$parent"
    unless_null $P116, vivify_627
    new $P116, "Undef"
  vivify_627:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1652_end:
.annotate 'line', 676
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("110_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1657
    .param pmc param_1658
    .param pmc param_1659
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 684
    .lex "self", param_1657
    .lex "$obj", param_1658
    .lex "$parent", param_1659
.annotate 'line', 685
    find_lex $P107, "$parent"
    unless_null $P107, vivify_631
    new $P107, "Undef"
  vivify_631:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_bind_attr_obj $P109, $P110, "$!default_parent", 6, $P107
.annotate 'line', 684
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("111_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1661
    .param pmc param_1662
    .param pmc param_1663
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 688
    .const 'Sub' $P1666 = "112_1321350732.3287" 
    capture_lex $P1666
    .lex "self", param_1661
    .lex "$obj", param_1662
    .lex "$role", param_1663
.annotate 'line', 689
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1664, $P109, $P110, "@!roles", 5
    unless_null $P1664, vivify_632
    $P1664 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I100, $P1664
    unless $I100, for_undef_633
    iter $P107, $P1664
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1669_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1669_test:
    unless $P107, loop1669_done
    shift $P111, $P107
  loop1669_redo:
    .const 'Sub' $P1666 = "112_1321350732.3287" 
    capture_lex $P1666
    $P1666($P111)
  loop1669_next:
    goto loop1669_test
  loop1669_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1669_next
    eq $P114, .CONTROL_LOOP_REDO, loop1669_redo
  loop1669_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 694
    find_lex $P107, "$role"
    unless_null $P107, vivify_637
    new $P107, "Undef"
  vivify_637:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1670, $P109, $P110, "@!roles", 5
    unless_null $P1670, vivify_638
    $P1670 = root_new ['parrot';'ResizablePMCArray']
  vivify_638:
    set $N100, $P1670
    set $I100, $N100
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1671, $P112, $P113, "@!roles", 5
    unless_null $P1671, vivify_639
    $P1671 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P112, $P113, "@!roles", 5, $P1671
  vivify_639:
    set $P1671[$I100], $P107
.annotate 'line', 688
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1665"  :anon :subid("112_1321350732.3287") :outer("111_1321350732.3287")
    .param pmc param_1667
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 689
    .lex "$_", param_1667
.annotate 'line', 690
    find_lex $P113, "$_"
    unless_null $P113, vivify_634
    new $P113, "Undef"
  vivify_634:
    find_lex $P114, "$role"
    unless_null $P114, vivify_635
    new $P114, "Undef"
  vivify_635:
    issame $I101, $P113, $P114
    if $I101, if_1668
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1668_end
  if_1668:
.annotate 'line', 691
    new $P115, "String"
    assign $P115, "The role "
    find_lex $P116, "$role"
    unless_null $P116, vivify_636
    new $P116, "Undef"
  vivify_636:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1668_end:
.annotate 'line', 689
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("113_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1673
    .param pmc param_1674
    .param pmc param_1675
    .param pmc param_1676
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 697
    .lex "self", param_1673
    .lex "$obj", param_1674
    .lex "$name", param_1675
    .lex "$meth", param_1676
.annotate 'line', 698
    find_lex $P107, "$name"
    unless_null $P107, vivify_640
    new $P107, "Undef"
  vivify_640:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1678, $P109, $P110, "%!parrot_vtable_mapping", 12
    unless_null $P1678, vivify_641
    $P1678 = root_new ['parrot';'Hash']
  vivify_641:
    set $P111, $P1678[$P107]
    unless_null $P111, vivify_642
    new $P111, "Undef"
  vivify_642:
    defined $I100, $P111
    unless $I100, if_1677_end
.annotate 'line', 699
    new $P112, "String"
    assign $P112, "Class '"
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_643
    new $P116, "Undef"
  vivify_643:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    find_lex $P119, "$name"
    unless_null $P119, vivify_644
    new $P119, "Undef"
  vivify_644:
    concat $P120, $P118, $P119
.annotate 'line', 700
    concat $P121, $P120, "'"
.annotate 'line', 701
    die $P121
  if_1677_end:
.annotate 'line', 703
    find_lex $P107, "$meth"
    unless_null $P107, vivify_645
    new $P107, "Undef"
  vivify_645:
    find_lex $P108, "$name"
    unless_null $P108, vivify_646
    new $P108, "Undef"
  vivify_646:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1679, $P110, $P111, "%!parrot_vtable_mapping", 12
    unless_null $P1679, vivify_647
    $P1679 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P110, $P111, "%!parrot_vtable_mapping", 12, $P1679
  vivify_647:
    set $P1679[$P108], $P107
.annotate 'line', 697
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("114_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1681
    .param pmc param_1682
    .param pmc param_1683
    .param pmc param_1684
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 706
    .lex "self", param_1681
    .lex "$obj", param_1682
    .lex "$name", param_1683
    .lex "$att_name", param_1684
.annotate 'line', 707
    find_lex $P107, "$name"
    unless_null $P107, vivify_648
    new $P107, "Undef"
  vivify_648:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1686, $P109, $P110, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1686, vivify_649
    $P1686 = root_new ['parrot';'Hash']
  vivify_649:
    set $P111, $P1686[$P107]
    unless_null $P111, vivify_650
    new $P111, "Undef"
  vivify_650:
    defined $I100, $P111
    unless $I100, if_1685_end
.annotate 'line', 708
    new $P112, "String"
    assign $P112, "Class '"
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P116, $P114, $P115, "$!name", 0
    unless_null $P116, vivify_651
    new $P116, "Undef"
  vivify_651:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    find_lex $P119, "$name"
    unless_null $P119, vivify_652
    new $P119, "Undef"
  vivify_652:
    concat $P120, $P118, $P119
.annotate 'line', 709
    concat $P121, $P120, "'"
.annotate 'line', 710
    die $P121
  if_1685_end:
.annotate 'line', 712
    find_lex $P107, "$obj"
    unless_null $P107, vivify_653
    new $P107, "Undef"
  vivify_653:
    find_lex $P108, "$att_name"
    unless_null $P108, vivify_654
    new $P108, "Undef"
  vivify_654:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    find_lex $P110, "$name"
    unless_null $P110, vivify_655
    new $P110, "Undef"
  vivify_655:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1687, $P112, $P113, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1687, vivify_656
    $P1687 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!parrot_vtable_handler_mapping", 13, $P1687
  vivify_656:
    set $P1687[$P110], $P109
.annotate 'line', 706
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("115_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1689
    .param pmc param_1690
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 715
    .const 'Sub' $P1715 = "118_1321350732.3287" 
    capture_lex $P1715
    .const 'Sub' $P1694 = "116_1321350732.3287" 
    capture_lex $P1694
    .lex "self", param_1689
    .lex "$obj", param_1690
.annotate 'line', 719
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1692, $P108, $P109, "@!roles", 5
    unless_null $P1692, vivify_657
    $P1692 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    unless $P1692, if_1691_end
    .const 'Sub' $P1694 = "116_1321350732.3287" 
    capture_lex $P1694
    $P1694()
  if_1691_end:
.annotate 'line', 732
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1712, $P109, $P110, "@!parents", 4
    unless_null $P1712, vivify_674
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    set $N100, $P1712
    set $N101, 0
    iseq $I100, $N100, $N101
    if $I100, if_1711
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1711_end
  if_1711:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P114, $P112, $P113, "$!name", 0
    unless_null $P114, vivify_675
    new $P114, "Undef"
  vivify_675:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1711_end:
    unless $P107, if_1710_end
.annotate 'line', 733
    find_lex $P115, "self"
    find_lex $P116, "$obj"
    unless_null $P116, vivify_676
    new $P116, "Undef"
  vivify_676:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P120, $P118, $P119, "$!default_parent", 6
    unless_null $P120, vivify_677
    new $P120, "Undef"
  vivify_677:
    $P115."add_parent"($P116, $P120)
  if_1710_end:
.annotate 'line', 738
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!composed", 9
    unless_null $P110, vivify_678
    new $P110, "Undef"
  vivify_678:
    if $P110, unless_1713_end
.annotate 'line', 739
    find_lex $P111, "$obj"
    unless_null $P111, vivify_679
    new $P111, "Undef"
  vivify_679:
    $P112 = "compute_c3_mro"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_bind_attr_obj $P114, $P115, "@!mro", 10, $P112
.annotate 'line', 740
    new $P111, "Float"
    assign $P111, 1
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    repr_bind_attr_obj $P113, $P114, "$!composed", 9, $P111
  unless_1713_end:
.annotate 'line', 744
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_680
    new $P108, "Undef"
  vivify_680:
    $P107."incorporate_multi_candidates"($P108)
.annotate 'line', 747
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_681
    new $P109, "Undef"
  vivify_681:
    $P110 = $P108."attributes"($P109, "0" :named("local"))
    defined $I100, $P110
    unless $I100, for_undef_682
    iter $P107, $P110
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1717_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1717_test:
    unless $P107, loop1717_done
    shift $P111, $P107
  loop1717_redo:
    .const 'Sub' $P1715 = "118_1321350732.3287" 
    capture_lex $P1715
    $P1715($P111)
  loop1717_next:
    goto loop1717_test
  loop1717_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1717_next
    eq $P113, .CONTROL_LOOP_REDO, loop1717_redo
  loop1717_done:
    pop_eh 
  for_undef_682:
.annotate 'line', 750
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_685
    new $P108, "Undef"
  vivify_685:
    $P107."publish_type_cache"($P108)
.annotate 'line', 751
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_686
    new $P108, "Undef"
  vivify_686:
    $P107."publish_method_cache"($P108)
.annotate 'line', 752
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_687
    new $P108, "Undef"
  vivify_687:
    $P107."publish_boolification_spec"($P108)
.annotate 'line', 755
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_688
    new $P108, "Undef"
  vivify_688:
    $P107."publish_parrot_vtable_mapping"($P108)
.annotate 'line', 756
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_689
    new $P108, "Undef"
  vivify_689:
    $P107."publish_parrot_vtablee_handler_mapping"($P108)
.annotate 'line', 715
    find_lex $P107, "$obj"
    unless_null $P107, vivify_690
    new $P107, "Undef"
  vivify_690:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1693"  :anon :subid("116_1321350732.3287") :outer("115_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 719
    .const 'Sub' $P1700 = "117_1321350732.3287" 
    capture_lex $P1700
.annotate 'line', 720
    $P1696 = root_new ['parrot';'ResizablePMCArray']
    set $P1695, $P1696
    .lex "@specialized_roles", $P1695
.annotate 'line', 719
    find_lex $P1697, "@specialized_roles"
    unless_null $P1697, vivify_658
    $P1697 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
.annotate 'line', 721
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1698, $P112, $P113, "@!roles", 5
    unless_null $P1698, vivify_659
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I100, $P1698
    unless $I100, for_undef_660
    iter $P110, $P1698
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1708_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1708_test:
    unless $P110, loop1708_done
    shift $P114, $P110
  loop1708_redo:
    .const 'Sub' $P1700 = "117_1321350732.3287" 
    capture_lex $P1700
    $P1700($P114)
  loop1708_next:
    goto loop1708_test
  loop1708_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1708_next
    eq $P118, .CONTROL_LOOP_REDO, loop1708_redo
  loop1708_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 727
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_672
    new $P111, "Undef"
  vivify_672:
    find_lex $P1709, "@specialized_roles"
    unless_null $P1709, vivify_673
    $P1709 = root_new ['parrot';'ResizablePMCArray']
  vivify_673:
    $P112 = $P110."apply"($P111, $P1709)
.annotate 'line', 719
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1699"  :anon :subid("117_1321350732.3287") :outer("116_1321350732.3287")
    .param pmc param_1702
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 722
    new $P115, "Undef"
    set $P1701, $P115
    .lex "$ins", $P1701
    .lex "$_", param_1702
    find_lex $P116, "$_"
    unless_null $P116, vivify_661
    new $P116, "Undef"
  vivify_661:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_662
    new $P118, "Undef"
  vivify_662:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_663
    new $P119, "Undef"
  vivify_663:
    $P120 = $P117."specialize"($P118, $P119)
    store_lex "$ins", $P120
.annotate 'line', 723
    find_lex $P1703, "@specialized_roles"
    unless_null $P1703, vivify_664
    $P1703 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    find_lex $P116, "$ins"
    unless_null $P116, vivify_665
    new $P116, "Undef"
  vivify_665:
    $P1703."push"($P116)
.annotate 'line', 724
    find_lex $P116, "$_"
    unless_null $P116, vivify_666
    new $P116, "Undef"
  vivify_666:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P1704, $P118, $P119, "@!done", 11
    unless_null $P1704, vivify_667
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $N100, $P1704
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    repr_get_attr_obj $P1705, $P121, $P122, "@!done", 11
    unless_null $P1705, vivify_668
    $P1705 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1705
  vivify_668:
    set $P1705[$I101], $P116
.annotate 'line', 725
    find_lex $P116, "$ins"
    unless_null $P116, vivify_669
    new $P116, "Undef"
  vivify_669:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P1706, $P118, $P119, "@!done", 11
    unless_null $P1706, vivify_670
    $P1706 = root_new ['parrot';'ResizablePMCArray']
  vivify_670:
    set $N100, $P1706
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    repr_get_attr_obj $P1707, $P121, $P122, "@!done", 11
    unless_null $P1707, vivify_671
    $P1707 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P121, $P122, "@!done", 11, $P1707
  vivify_671:
    set $P1707[$I101], $P116
.annotate 'line', 721
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1714"  :anon :subid("118_1321350732.3287") :outer("115_1321350732.3287")
    .param pmc param_1716
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 747
    .lex "$_", param_1716
    find_lex $P112, "$_"
    unless_null $P112, vivify_683
    new $P112, "Undef"
  vivify_683:
    find_lex $P113, "$obj"
    unless_null $P113, vivify_684
    new $P113, "Undef"
  vivify_684:
    $P114 = $P112."compose"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("119_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1719
    .param pmc param_1720
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 761
    .const 'Sub' $P1725 = "120_1321350732.3287" 
    capture_lex $P1725
    .lex "self", param_1719
    .lex "$obj", param_1720
.annotate 'line', 762
    new $P107, "Undef"
    set $P1721, $P107
    .lex "$num_todo", $P1721
.annotate 'line', 763
    new $P108, "Undef"
    set $P1722, $P108
    .lex "$i", $P1722
.annotate 'line', 762
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1723, $P110, $P111, "@!multi_methods_to_incorporate", 3
    unless_null $P1723, vivify_691
    $P1723 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    set $N100, $P1723
    new $P112, 'Float'
    set $P112, $N100
    store_lex "$num_todo", $P112
.annotate 'line', 763
    new $P109, "Float"
    assign $P109, 0
    store_lex "$i", $P109
.annotate 'line', 764
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1765_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1765_test:
    find_lex $P109, "$i"
    unless_null $P109, vivify_692
    new $P109, "Undef"
  vivify_692:
    set $N100, $P109
    find_lex $P110, "$num_todo"
    unless_null $P110, vivify_693
    new $P110, "Undef"
  vivify_693:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1765_done
  loop1765_redo:
    .const 'Sub' $P1725 = "120_1321350732.3287" 
    capture_lex $P1725
    $P1725()
  loop1765_next:
    goto loop1765_test
  loop1765_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1765_next
    eq $P116, .CONTROL_LOOP_REDO, loop1765_redo
  loop1765_done:
    pop_eh 
.annotate 'line', 761
    .return ($I100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1724"  :anon :subid("120_1321350732.3287") :outer("119_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 764
    .const 'Sub' $P1737 = "121_1321350732.3287" 
    capture_lex $P1737
.annotate 'line', 766
    new $P111, "Undef"
    set $P1726, $P111
    .lex "$name", $P1726
.annotate 'line', 767
    new $P112, "Undef"
    set $P1727, $P112
    .lex "$code", $P1727
.annotate 'line', 771
    new $P113, "Undef"
    set $P1728, $P113
    .lex "$dispatcher", $P1728
.annotate 'line', 766
    find_lex $P114, "$i"
    unless_null $P114, vivify_694
    new $P114, "Undef"
  vivify_694:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1729, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1729, vivify_695
    $P1729 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    set $P1730, $P1729[$I101]
    unless_null $P1730, vivify_696
    $P1730 = root_new ['parrot';'Hash']
  vivify_696:
    set $P118, $P1730["name"]
    unless_null $P118, vivify_697
    new $P118, "Undef"
  vivify_697:
    store_lex "$name", $P118
.annotate 'line', 767
    find_lex $P114, "$i"
    unless_null $P114, vivify_698
    new $P114, "Undef"
  vivify_698:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1731, $P116, $P117, "@!multi_methods_to_incorporate", 3
    unless_null $P1731, vivify_699
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    set $P1732, $P1731[$I101]
    unless_null $P1732, vivify_700
    $P1732 = root_new ['parrot';'Hash']
  vivify_700:
    set $P118, $P1732["code"]
    unless_null $P118, vivify_701
    new $P118, "Undef"
  vivify_701:
    store_lex "$code", $P118
.annotate 'line', 771
    find_lex $P114, "$name"
    unless_null $P114, vivify_702
    new $P114, "Undef"
  vivify_702:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    repr_get_attr_obj $P1733, $P116, $P117, "%!methods", 2
    unless_null $P1733, vivify_703
    $P1733 = root_new ['parrot';'Hash']
  vivify_703:
    set $P118, $P1733[$P114]
    unless_null $P118, vivify_704
    new $P118, "Undef"
  vivify_704:
    store_lex "$dispatcher", $P118
.annotate 'line', 772
    find_lex $P114, "$dispatcher"
    unless_null $P114, vivify_705
    new $P114, "Undef"
  vivify_705:
    defined $I101, $P114
    if $I101, if_1734
.annotate 'line', 782
    .const 'Sub' $P1737 = "121_1321350732.3287" 
    capture_lex $P1737
    $P1737()
    goto if_1734_end
  if_1734:
.annotate 'line', 775
    find_lex $P115, "$dispatcher"
    unless_null $P115, vivify_736
    new $P115, "Undef"
  vivify_736:
    is_dispatcher $I102, $P115
    if $I102, if_1735
.annotate 'line', 779
    new $P116, 'String'
    set $P116, "Cannot have a multi candidate for "
    find_lex $P117, "$name"
    unless_null $P117, vivify_737
    new $P117, "Undef"
  vivify_737:
    concat $P118, $P116, $P117
    concat $P119, $P118, " when an only method is also in the class"
    die $P119
.annotate 'line', 778
    goto if_1735_end
  if_1735:
.annotate 'line', 776
    find_lex $P116, "$dispatcher"
    unless_null $P116, vivify_738
    new $P116, "Undef"
  vivify_738:
    find_lex $P117, "$code"
    unless_null $P117, vivify_739
    new $P117, "Undef"
  vivify_739:
    push_dispatchee $P116, $P117
  if_1735_end:
  if_1734_end:
.annotate 'line', 815
    find_lex $P114, "$i"
    unless_null $P114, vivify_740
    new $P114, "Undef"
  vivify_740:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 764
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1736"  :anon :subid("121_1321350732.3287") :outer("120_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 782
    .const 'Sub' $P1743 = "122_1321350732.3287" 
    capture_lex $P1743
.annotate 'line', 784
    new $P115, "Undef"
    set $P1738, $P115
    .lex "$j", $P1738
.annotate 'line', 785
    new $P116, "Undef"
    set $P1739, $P116
    .lex "$found", $P1739
.annotate 'line', 784
    new $P117, "Float"
    assign $P117, 1
    store_lex "$j", $P117
.annotate 'line', 785
    new $P117, "Float"
    assign $P117, 0
    store_lex "$found", $P117
.annotate 'line', 786
    new $P125, 'ExceptionHandler'
    set_label $P125, loop1763_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop1763_test:
    find_lex $P118, "$j"
    unless_null $P118, vivify_706
    new $P118, "Undef"
  vivify_706:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P1741, $P120, $P121, "@!mro", 10
    unless_null $P1741, vivify_707
    $P1741 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    set $N103, $P1741
    isne $I102, $N102, $N103
    if $I102, if_1740
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1740_end
  if_1740:
    find_lex $P122, "$found"
    unless_null $P122, vivify_708
    new $P122, "Undef"
  vivify_708:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1740_end:
    unless $P117, loop1763_done
  loop1763_redo:
    .const 'Sub' $P1743 = "122_1321350732.3287" 
    capture_lex $P1743
    $P1743()
  loop1763_next:
    goto loop1763_test
  loop1763_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1763_next
    eq $P127, .CONTROL_LOOP_REDO, loop1763_redo
  loop1763_done:
    pop_eh 
.annotate 'line', 811
    find_lex $P118, "$found"
    unless_null $P118, vivify_734
    new $P118, "Undef"
  vivify_734:
    unless $P118, unless_1764
    set $P117, $P118
    goto unless_1764_end
  unless_1764:
.annotate 'line', 812
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_735
    new $P120, "Undef"
  vivify_735:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1764_end:
.annotate 'line', 782
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1742"  :anon :subid("122_1321350732.3287") :outer("121_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 786
    .const 'Sub' $P1753 = "123_1321350732.3287" 
    capture_lex $P1753
.annotate 'line', 787
    new $P123, "Undef"
    set $P1744, $P123
    .lex "$parent", $P1744
.annotate 'line', 788
    $P1746 = root_new ['parrot';'Hash']
    set $P1745, $P1746
    .lex "%meths", $P1745
.annotate 'line', 789
    new $P124, "Undef"
    set $P1747, $P124
    .lex "$dispatcher", $P1747
.annotate 'line', 787
    find_lex $P125, "$j"
    unless_null $P125, vivify_709
    new $P125, "Undef"
  vivify_709:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    find_lex $P128, "$?CLASS"
    repr_get_attr_obj $P1748, $P127, $P128, "@!mro", 10
    unless_null $P1748, vivify_710
    $P1748 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    set $P129, $P1748[$I104]
    unless_null $P129, vivify_711
    new $P129, "Undef"
  vivify_711:
    store_lex "$parent", $P129
.annotate 'line', 788
    find_lex $P125, "$parent"
    unless_null $P125, vivify_712
    new $P125, "Undef"
  vivify_712:
    get_how $P126, $P125
    find_lex $P127, "$parent"
    unless_null $P127, vivify_713
    new $P127, "Undef"
  vivify_713:
    $P128 = $P126."method_table"($P127)
    store_lex "%meths", $P128
.annotate 'line', 789
    find_lex $P125, "$name"
    unless_null $P125, vivify_714
    new $P125, "Undef"
  vivify_714:
    find_lex $P1749, "%meths"
    unless_null $P1749, vivify_715
    $P1749 = root_new ['parrot';'Hash']
  vivify_715:
    set $P126, $P1749[$P125]
    unless_null $P126, vivify_716
    new $P126, "Undef"
  vivify_716:
    store_lex "$dispatcher", $P126
.annotate 'line', 790
    find_lex $P125, "$dispatcher"
    unless_null $P125, vivify_717
    new $P125, "Undef"
  vivify_717:
    defined $I104, $P125
    unless $I104, if_1750_end
.annotate 'line', 793
    find_lex $P126, "$dispatcher"
    unless_null $P126, vivify_718
    new $P126, "Undef"
  vivify_718:
    is_dispatcher $I105, $P126
    if $I105, if_1751
.annotate 'line', 806
    new $P130, 'String'
    set $P130, "Could not find a proto for multi "
    find_lex $P131, "$name"
    unless_null $P131, vivify_719
    new $P131, "Undef"
  vivify_719:
    concat $P132, $P130, $P131
    concat $P133, $P132, " (it may exist, but an only is hiding it if so)"
    die $P133
.annotate 'line', 805
    goto if_1751_end
  if_1751:
.annotate 'line', 793
    .const 'Sub' $P1753 = "123_1321350732.3287" 
    capture_lex $P1753
    $P1753()
  if_1751_end:
  if_1750_end:
.annotate 'line', 809
    find_lex $P125, "$j"
    unless_null $P125, vivify_733
    new $P125, "Undef"
  vivify_733:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 786
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1752"  :anon :subid("123_1321350732.3287") :outer("122_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 795
    $P1755 = root_new ['parrot';'ResizablePMCArray']
    set $P1754, $P1755
    .lex "@new_dispatchees", $P1754
.annotate 'line', 797
    new $P127, "Undef"
    set $P1756, $P127
    .lex "$new_disp", $P1756
.annotate 'line', 798
    new $P128, "Undef"
    set $P1757, $P128
    .lex "$clone_callback", $P1757
.annotate 'line', 793
    find_lex $P1758, "@new_dispatchees"
    unless_null $P1758, vivify_720
    $P1758 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
.annotate 'line', 796
    find_lex $P129, "$code"
    unless_null $P129, vivify_721
    new $P129, "Undef"
  vivify_721:
    new $P130, "Float"
    assign $P130, 0
    set $I106, $P130
    find_lex $P1759, "@new_dispatchees"
    unless_null $P1759, vivify_722
    $P1759 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1759
  vivify_722:
    set $P1759[$I106], $P129
.annotate 'line', 797
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_723
    new $P129, "Undef"
  vivify_723:
    find_lex $P1760, "@new_dispatchees"
    unless_null $P1760, vivify_724
    $P1760 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    create_dispatch_and_add_candidates $P130, $P129, $P1760
    store_lex "$new_disp", $P130
.annotate 'line', 798
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_725
    new $P129, "Undef"
  vivify_725:
    getprop $P130, "CLONE_CALLBACK", $P129
    store_lex "$clone_callback", $P130
.annotate 'line', 799
    find_lex $P129, "$clone_callback"
    unless_null $P129, vivify_726
    new $P129, "Undef"
  vivify_726:
    defined $I106, $P129
    unless $I106, if_1761_end
.annotate 'line', 800
    find_lex $P130, "$clone_callback"
    unless_null $P130, vivify_727
    new $P130, "Undef"
  vivify_727:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_728
    new $P131, "Undef"
  vivify_728:
    find_lex $P132, "$new_disp"
    unless_null $P132, vivify_729
    new $P132, "Undef"
  vivify_729:
    $P130($P131, $P132)
  if_1761_end:
.annotate 'line', 802
    find_lex $P129, "$new_disp"
    unless_null $P129, vivify_730
    new $P129, "Undef"
  vivify_730:
    find_lex $P130, "$name"
    unless_null $P130, vivify_731
    new $P130, "Undef"
  vivify_731:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    find_lex $P133, "$?CLASS"
    repr_get_attr_obj $P1762, $P132, $P133, "%!methods", 2
    unless_null $P1762, vivify_732
    $P1762 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P132, $P133, "%!methods", 2, $P1762
  vivify_732:
    set $P1762[$P130], $P129
.annotate 'line', 803
    new $P129, "Float"
    assign $P129, 1
    store_lex "$found", $P129
.annotate 'line', 793
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("124_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1767
    .param pmc param_1768
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 912
    .const 'Sub' $P1780 = "126_1321350732.3287" 
    capture_lex $P1780
    .const 'Sub' $P1774 = "125_1321350732.3287" 
    capture_lex $P1774
    .lex "self", param_1767
    .lex "$obj", param_1768
.annotate 'line', 913
    $P1770 = root_new ['parrot';'ResizablePMCArray']
    set $P1769, $P1770
    .lex "@tc", $P1769
.annotate 'line', 912
    find_lex $P1771, "@tc"
    unless_null $P1771, vivify_741
    $P1771 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
.annotate 'line', 914
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1772, $P109, $P110, "@!mro", 10
    unless_null $P1772, vivify_742
    $P1772 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
    defined $I100, $P1772
    unless $I100, for_undef_743
    iter $P107, $P1772
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1777_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1777_test:
    unless $P107, loop1777_done
    shift $P111, $P107
  loop1777_redo:
    .const 'Sub' $P1774 = "125_1321350732.3287" 
    capture_lex $P1774
    $P1774($P111)
  loop1777_next:
    goto loop1777_test
  loop1777_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1777_next
    eq $P114, .CONTROL_LOOP_REDO, loop1777_redo
  loop1777_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 915
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1778, $P109, $P110, "@!done", 11
    unless_null $P1778, vivify_746
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    defined $I100, $P1778
    unless $I100, for_undef_747
    iter $P107, $P1778
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1783_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1783_test:
    unless $P107, loop1783_done
    shift $P111, $P107
  loop1783_redo:
    .const 'Sub' $P1780 = "126_1321350732.3287" 
    capture_lex $P1780
    $P1780($P111)
  loop1783_next:
    goto loop1783_test
  loop1783_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1783_next
    eq $P114, .CONTROL_LOOP_REDO, loop1783_redo
  loop1783_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 916
    find_lex $P107, "$obj"
    unless_null $P107, vivify_750
    new $P107, "Undef"
  vivify_750:
    find_lex $P1784, "@tc"
    unless_null $P1784, vivify_751
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    publish_type_check_cache $P107, $P1784
.annotate 'line', 912
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1773"  :anon :subid("125_1321350732.3287") :outer("124_1321350732.3287")
    .param pmc param_1775
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 914
    .lex "$_", param_1775
    find_lex $P1776, "@tc"
    unless_null $P1776, vivify_744
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    find_lex $P112, "$_"
    unless_null $P112, vivify_745
    new $P112, "Undef"
  vivify_745:
    $P113 = $P1776."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1779"  :anon :subid("126_1321350732.3287") :outer("124_1321350732.3287")
    .param pmc param_1781
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 915
    .lex "$_", param_1781
    find_lex $P1782, "@tc"
    unless_null $P1782, vivify_748
    $P1782 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    find_lex $P112, "$_"
    unless_null $P112, vivify_749
    new $P112, "Undef"
  vivify_749:
    $P113 = $P1782."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("127_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1786
    .param pmc param_1787
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 919
    .const 'Sub' $P1797 = "128_1321350732.3287" 
    capture_lex $P1797
    .lex "self", param_1786
    .lex "$obj", param_1787
.annotate 'line', 922
    $P1789 = root_new ['parrot';'Hash']
    set $P1788, $P1789
    .lex "%cache", $P1788
.annotate 'line', 923
    $P1791 = root_new ['parrot';'ResizablePMCArray']
    set $P1790, $P1791
    .lex "@mro_reversed", $P1790
.annotate 'line', 919
    find_lex $P1792, "%cache"
    unless_null $P1792, vivify_752
    $P1792 = root_new ['parrot';'Hash']
  vivify_752:
.annotate 'line', 923
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1793, $P108, $P109, "@!mro", 10
    unless_null $P1793, vivify_753
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
    clone $P110, $P1793
    store_lex "@mro_reversed", $P110
.annotate 'line', 924
    find_lex $P1794, "@mro_reversed"
    unless_null $P1794, vivify_754
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    $P1794."reverse"()
.annotate 'line', 925
    find_lex $P1795, "@mro_reversed"
    unless_null $P1795, vivify_755
    $P1795 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    defined $I100, $P1795
    unless $I100, for_undef_756
    iter $P107, $P1795
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1800_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1800_test:
    unless $P107, loop1800_done
    shift $P108, $P107
  loop1800_redo:
    .const 'Sub' $P1797 = "128_1321350732.3287" 
    capture_lex $P1797
    $P1797($P108)
  loop1800_next:
    goto loop1800_test
  loop1800_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1800_next
    eq $P110, .CONTROL_LOOP_REDO, loop1800_redo
  loop1800_done:
    pop_eh 
  for_undef_756:
.annotate 'line', 928
    find_lex $P107, "$obj"
    unless_null $P107, vivify_760
    new $P107, "Undef"
  vivify_760:
    find_lex $P1801, "%cache"
    unless_null $P1801, vivify_761
    $P1801 = root_new ['parrot';'Hash']
  vivify_761:
    publish_method_cache $P107, $P1801
.annotate 'line', 929
    find_lex $P107, "$obj"
    unless_null $P107, vivify_762
    new $P107, "Undef"
  vivify_762:
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 919
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1796"  :anon :subid("128_1321350732.3287") :outer("127_1321350732.3287")
    .param pmc param_1798
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 925
    .lex "$_", param_1798
.annotate 'line', 926
    find_lex $P1799, "%cache"
    unless_null $P1799, vivify_757
    $P1799 = root_new ['parrot';'Hash']
  vivify_757:
    find_lex $P109, "$_"
    unless_null $P109, vivify_758
    new $P109, "Undef"
  vivify_758:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_759
    new $P111, "Undef"
  vivify_759:
    $P112 = $P110."method_table"($P111)
    $P113 = $P1799."update"($P112)
.annotate 'line', 925
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("129_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1803
    .param pmc param_1804
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 932
    .lex "self", param_1803
    .lex "$obj", param_1804
.annotate 'line', 933
    new $P107, "Undef"
    set $P1805, $P107
    .lex "$bool_meth", $P1805
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_763
    new $P109, "Undef"
  vivify_763:
    $P110 = $P108."find_method"($P109, "Bool")
    store_lex "$bool_meth", $P110
.annotate 'line', 934
    find_lex $P109, "$bool_meth"
    unless_null $P109, vivify_764
    new $P109, "Undef"
  vivify_764:
    defined $I100, $P109
    if $I100, if_1806
.annotate 'line', 938
    find_lex $P111, "$obj"
    unless_null $P111, vivify_765
    new $P111, "Undef"
  vivify_765:
    new $P112, "Float"
    assign $P112, 5
    set $I101, $P112
    null $P113
    set_boolification_spec $P111, $I101, $P113
.annotate 'line', 937
    set $P108, $P111
.annotate 'line', 934
    goto if_1806_end
  if_1806:
.annotate 'line', 935
    find_lex $P110, "$obj"
    unless_null $P110, vivify_766
    new $P110, "Undef"
  vivify_766:
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    find_lex $P112, "$bool_meth"
    unless_null $P112, vivify_767
    new $P112, "Undef"
  vivify_767:
    set_boolification_spec $P110, $I101, $P112
.annotate 'line', 934
    set $P108, $P110
  if_1806_end:
.annotate 'line', 932
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("130_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1808
    .param pmc param_1809
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 942
    .const 'Sub' $P1819 = "131_1321350732.3287" 
    capture_lex $P1819
    .lex "self", param_1808
    .lex "$obj", param_1809
.annotate 'line', 943
    $P1811 = root_new ['parrot';'Hash']
    set $P1810, $P1811
    .lex "%mapping", $P1810
.annotate 'line', 944
    $P1813 = root_new ['parrot';'ResizablePMCArray']
    set $P1812, $P1813
    .lex "@mro_reversed", $P1812
.annotate 'line', 942
    find_lex $P1814, "%mapping"
    unless_null $P1814, vivify_768
    $P1814 = root_new ['parrot';'Hash']
  vivify_768:
.annotate 'line', 944
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1815, $P108, $P109, "@!mro", 10
    unless_null $P1815, vivify_769
    $P1815 = root_new ['parrot';'ResizablePMCArray']
  vivify_769:
    clone $P110, $P1815
    store_lex "@mro_reversed", $P110
.annotate 'line', 945
    find_lex $P1816, "@mro_reversed"
    unless_null $P1816, vivify_770
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    $P1816."reverse"()
.annotate 'line', 946
    find_lex $P1817, "@mro_reversed"
    unless_null $P1817, vivify_771
    $P1817 = root_new ['parrot';'ResizablePMCArray']
  vivify_771:
    defined $I100, $P1817
    unless $I100, for_undef_772
    iter $P107, $P1817
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1822_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1822_test:
    unless $P107, loop1822_done
    shift $P108, $P107
  loop1822_redo:
    .const 'Sub' $P1819 = "131_1321350732.3287" 
    capture_lex $P1819
    $P1819($P108)
  loop1822_next:
    goto loop1822_test
  loop1822_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1822_next
    eq $P110, .CONTROL_LOOP_REDO, loop1822_redo
  loop1822_done:
    pop_eh 
  for_undef_772:
.annotate 'line', 949
    find_lex $P1824, "%mapping"
    unless_null $P1824, vivify_776
    $P1824 = root_new ['parrot';'Hash']
  vivify_776:
    set $N100, $P1824
    if $N100, if_1823
    new $P107, 'Float'
    set $P107, $N100
    goto if_1823_end
  if_1823:
.annotate 'line', 950
    find_lex $P108, "$obj"
    unless_null $P108, vivify_777
    new $P108, "Undef"
  vivify_777:
    find_lex $P1825, "%mapping"
    unless_null $P1825, vivify_778
    $P1825 = root_new ['parrot';'Hash']
  vivify_778:
    stable_publish_vtable_mapping $P108, $P1825
  if_1823_end:
.annotate 'line', 942
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1818"  :anon :subid("131_1321350732.3287") :outer("130_1321350732.3287")
    .param pmc param_1820
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 946
    .lex "$_", param_1820
.annotate 'line', 947
    find_lex $P1821, "%mapping"
    unless_null $P1821, vivify_773
    $P1821 = root_new ['parrot';'Hash']
  vivify_773:
    find_lex $P109, "$_"
    unless_null $P109, vivify_774
    new $P109, "Undef"
  vivify_774:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_775
    new $P111, "Undef"
  vivify_775:
    $P112 = $P110."parrot_vtable_mappings"($P111, 1 :named("local"))
    $P113 = $P1821."update"($P112)
.annotate 'line', 946
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("132_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1827
    .param pmc param_1828
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 954
    .const 'Sub' $P1838 = "133_1321350732.3287" 
    capture_lex $P1838
    .lex "self", param_1827
    .lex "$obj", param_1828
.annotate 'line', 955
    $P1830 = root_new ['parrot';'Hash']
    set $P1829, $P1830
    .lex "%mapping", $P1829
.annotate 'line', 956
    $P1832 = root_new ['parrot';'ResizablePMCArray']
    set $P1831, $P1832
    .lex "@mro_reversed", $P1831
.annotate 'line', 954
    find_lex $P1833, "%mapping"
    unless_null $P1833, vivify_779
    $P1833 = root_new ['parrot';'Hash']
  vivify_779:
.annotate 'line', 956
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1834, $P108, $P109, "@!mro", 10
    unless_null $P1834, vivify_780
    $P1834 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    clone $P110, $P1834
    store_lex "@mro_reversed", $P110
.annotate 'line', 957
    find_lex $P1835, "@mro_reversed"
    unless_null $P1835, vivify_781
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    $P1835."reverse"()
.annotate 'line', 958
    find_lex $P1836, "@mro_reversed"
    unless_null $P1836, vivify_782
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_782:
    defined $I100, $P1836
    unless $I100, for_undef_783
    iter $P107, $P1836
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1841_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1841_test:
    unless $P107, loop1841_done
    shift $P108, $P107
  loop1841_redo:
    .const 'Sub' $P1838 = "133_1321350732.3287" 
    capture_lex $P1838
    $P1838($P108)
  loop1841_next:
    goto loop1841_test
  loop1841_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1841_next
    eq $P110, .CONTROL_LOOP_REDO, loop1841_redo
  loop1841_done:
    pop_eh 
  for_undef_783:
.annotate 'line', 961
    find_lex $P1843, "%mapping"
    unless_null $P1843, vivify_787
    $P1843 = root_new ['parrot';'Hash']
  vivify_787:
    set $N100, $P1843
    if $N100, if_1842
    new $P107, 'Float'
    set $P107, $N100
    goto if_1842_end
  if_1842:
.annotate 'line', 962
    find_lex $P108, "$obj"
    unless_null $P108, vivify_788
    new $P108, "Undef"
  vivify_788:
    find_lex $P1844, "%mapping"
    unless_null $P1844, vivify_789
    $P1844 = root_new ['parrot';'Hash']
  vivify_789:
    stable_publish_vtable_handler_mapping $P108, $P1844
  if_1842_end:
.annotate 'line', 954
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1837"  :anon :subid("133_1321350732.3287") :outer("132_1321350732.3287")
    .param pmc param_1839
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 958
    .lex "$_", param_1839
.annotate 'line', 959
    find_lex $P1840, "%mapping"
    unless_null $P1840, vivify_784
    $P1840 = root_new ['parrot';'Hash']
  vivify_784:
    find_lex $P109, "$_"
    unless_null $P109, vivify_785
    new $P109, "Undef"
  vivify_785:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_786
    new $P111, "Undef"
  vivify_786:
    $P112 = $P110."parrot_vtable_handler_mappings"($P111, 1 :named("local"))
    $P113 = $P1840."update"($P112)
.annotate 'line', 958
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("134_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1846
    .param pmc param_1847
    .param pmc param_1848 :optional :named("local")
    .param int has_param_1848 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 969
    .lex "self", param_1846
    .lex "$obj", param_1847
    if has_param_1848, optparam_790
    new $P107, "Undef"
    set param_1848, $P107
  optparam_790:
    .lex "$local", param_1848
.annotate 'line', 970
    find_lex $P109, "$local"
    unless_null $P109, vivify_791
    new $P109, "Undef"
  vivify_791:
    if $P109, if_1849
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P1851, $P114, $P115, "@!mro", 10
    unless_null $P1851, vivify_792
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_792:
    set $P108, $P1851
    goto if_1849_end
  if_1849:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1850, $P111, $P112, "@!parents", 4
    unless_null $P1850, vivify_793
    $P1850 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    set $P108, $P1850
  if_1849_end:
.annotate 'line', 969
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("135_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1853
    .param pmc param_1854
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 973
    .lex "self", param_1853
    .lex "$obj", param_1854
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1855, $P108, $P109, "@!mro", 10
    unless_null $P1855, vivify_794
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_794:
    .return ($P1855)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("136_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1857
    .param pmc param_1858
    .param pmc param_1859 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 977
    .lex "self", param_1857
    .lex "$obj", param_1858
    .lex "$local", param_1859
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1860, $P108, $P109, "@!roles", 5
    unless_null $P1860, vivify_795
    $P1860 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    .return ($P1860)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("137_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1862
    .param pmc param_1863
    .param pmc param_1864 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 981
    .const 'Sub' $P1870 = "138_1321350732.3287" 
    capture_lex $P1870
    .lex "self", param_1862
    .lex "$obj", param_1863
    .lex "$local", param_1864
.annotate 'line', 982
    $P1866 = root_new ['parrot';'ResizablePMCArray']
    set $P1865, $P1866
    .lex "@meths", $P1865
.annotate 'line', 981
    find_lex $P1867, "@meths"
    unless_null $P1867, vivify_796
    $P1867 = root_new ['parrot';'ResizablePMCArray']
  vivify_796:
.annotate 'line', 983
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1868, $P109, $P110, "%!methods", 2
    unless_null $P1868, vivify_797
    $P1868 = root_new ['parrot';'Hash']
  vivify_797:
    defined $I100, $P1868
    unless $I100, for_undef_798
    iter $P107, $P1868
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1873_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1873_test:
    unless $P107, loop1873_done
    shift $P111, $P107
  loop1873_redo:
    .const 'Sub' $P1870 = "138_1321350732.3287" 
    capture_lex $P1870
    $P1870($P111)
  loop1873_next:
    goto loop1873_test
  loop1873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1873_next
    eq $P113, .CONTROL_LOOP_REDO, loop1873_redo
  loop1873_done:
    pop_eh 
  for_undef_798:
.annotate 'line', 981
    find_lex $P1874, "@meths"
    unless_null $P1874, vivify_801
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_801:
    .return ($P1874)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1869"  :anon :subid("138_1321350732.3287") :outer("137_1321350732.3287")
    .param pmc param_1871
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 983
    .lex "$_", param_1871
.annotate 'line', 984
    find_lex $P1872, "@meths"
    unless_null $P1872, vivify_799
    $P1872 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    find_lex $P112, "$_"
    unless_null $P112, vivify_800
    new $P112, "Undef"
  vivify_800:
    $P113 = $P112."value"()
    $P114 = $P1872."push"($P113)
.annotate 'line', 983
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("139_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1876
    .param pmc param_1877
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 989
    .lex "self", param_1876
    .lex "$obj", param_1877
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1878, $P108, $P109, "%!methods", 2
    unless_null $P1878, vivify_802
    $P1878 = root_new ['parrot';'Hash']
  vivify_802:
    .return ($P1878)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("140_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1880
    .param pmc param_1881
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 993
    .lex "self", param_1880
    .lex "$obj", param_1881
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!name", 0
    unless_null $P110, vivify_803
    new $P110, "Undef"
  vivify_803:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("141_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1883
    .param pmc param_1884
    .param pmc param_1885 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 997
    .const 'Sub' $P1891 = "142_1321350732.3287" 
    capture_lex $P1891
    .lex "self", param_1883
    .lex "$obj", param_1884
    .lex "$local", param_1885
.annotate 'line', 998
    $P1887 = root_new ['parrot';'ResizablePMCArray']
    set $P1886, $P1887
    .lex "@attrs", $P1886
.annotate 'line', 997
    find_lex $P1888, "@attrs"
    unless_null $P1888, vivify_804
    $P1888 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
.annotate 'line', 999
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1889, $P109, $P110, "%!attributes", 1
    unless_null $P1889, vivify_805
    $P1889 = root_new ['parrot';'Hash']
  vivify_805:
    defined $I100, $P1889
    unless $I100, for_undef_806
    iter $P107, $P1889
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1894_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1894_test:
    unless $P107, loop1894_done
    shift $P111, $P107
  loop1894_redo:
    .const 'Sub' $P1891 = "142_1321350732.3287" 
    capture_lex $P1891
    $P1891($P111)
  loop1894_next:
    goto loop1894_test
  loop1894_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1894_next
    eq $P113, .CONTROL_LOOP_REDO, loop1894_redo
  loop1894_done:
    pop_eh 
  for_undef_806:
.annotate 'line', 997
    find_lex $P1895, "@attrs"
    unless_null $P1895, vivify_809
    $P1895 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
    .return ($P1895)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1890"  :anon :subid("142_1321350732.3287") :outer("141_1321350732.3287")
    .param pmc param_1892
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 999
    .lex "$_", param_1892
.annotate 'line', 1000
    find_lex $P1893, "@attrs"
    unless_null $P1893, vivify_807
    $P1893 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    find_lex $P112, "$_"
    unless_null $P112, vivify_808
    new $P112, "Undef"
  vivify_808:
    $P113 = $P112."value"()
    $P114 = $P1893."push"($P113)
.annotate 'line', 999
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("143_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1897
    .param pmc param_1898
    .param pmc param_1899 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1005
    .lex "self", param_1897
    .lex "$obj", param_1898
    .lex "$local", param_1899
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1900, $P108, $P109, "%!parrot_vtable_mapping", 12
    unless_null $P1900, vivify_810
    $P1900 = root_new ['parrot';'Hash']
  vivify_810:
    .return ($P1900)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("144_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1902
    .param pmc param_1903
    .param pmc param_1904 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1009
    .lex "self", param_1902
    .lex "$obj", param_1903
    .lex "$local", param_1904
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P1905, $P108, $P109, "%!parrot_vtable_handler_mapping", 13
    unless_null $P1905, vivify_811
    $P1905 = root_new ['parrot';'Hash']
  vivify_811:
    .return ($P1905)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("145_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1909
    .param pmc param_1910
    .param pmc param_1911
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1017
    new $P1908, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1908, control_1907
    push_eh $P1908
    .lex "self", param_1909
    .lex "$obj", param_1910
    .lex "$check", param_1911
.annotate 'line', 1018
    new $P107, "Undef"
    set $P1912, $P107
    .lex "$check-class", $P1912
.annotate 'line', 1019
    new $P108, "Undef"
    set $P1913, $P108
    .lex "$i", $P1913
.annotate 'line', 1018
    find_lex $P109, "$check"
    unless_null $P109, vivify_812
    new $P109, "Undef"
  vivify_812:
    get_what $P110, $P109
    store_lex "$check-class", $P110
.annotate 'line', 1019
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1914, $P110, $P111, "@!mro", 10
    unless_null $P1914, vivify_813
    $P1914 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
    set $N100, $P1914
    new $P112, 'Float'
    set $P112, $N100
    store_lex "$i", $P112
.annotate 'line', 1020
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1917_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1917_test:
    find_lex $P109, "$i"
    unless_null $P109, vivify_814
    new $P109, "Undef"
  vivify_814:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1917_done
  loop1917_redo:
.annotate 'line', 1021
    find_lex $P110, "$i"
    unless_null $P110, vivify_815
    new $P110, "Undef"
  vivify_815:
    sub $P111, $P110, 1
    store_lex "$i", $P111
.annotate 'line', 1022
    find_lex $P110, "$i"
    unless_null $P110, vivify_816
    new $P110, "Undef"
  vivify_816:
    set $I101, $P110
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P1916, $P112, $P113, "@!mro", 10
    unless_null $P1916, vivify_817
    $P1916 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
    set $P114, $P1916[$I101]
    unless_null $P114, vivify_818
    new $P114, "Undef"
  vivify_818:
    find_lex $P115, "$check-class"
    unless_null $P115, vivify_819
    new $P115, "Undef"
  vivify_819:
    issame $I102, $P114, $P115
    unless $I102, if_1915_end
.annotate 'line', 1023
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1915_end:
  loop1917_next:
.annotate 'line', 1020
    goto loop1917_test
  loop1917_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1917_next
    eq $P111, .CONTROL_LOOP_REDO, loop1917_redo
  loop1917_done:
    pop_eh 
.annotate 'line', 1026
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1017
    .return ()
  control_1907:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("146_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1921
    .param pmc param_1922
    .param pmc param_1923
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1029
    new $P1920, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1920, control_1919
    push_eh $P1920
    .lex "self", param_1921
    .lex "$obj", param_1922
    .lex "$check", param_1923
.annotate 'line', 1030
    new $P107, "Undef"
    set $P1924, $P107
    .lex "$i", $P1924
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1925, $P109, $P110, "@!done", 11
    unless_null $P1925, vivify_820
    $P1925 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    set $N100, $P1925
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$i", $P111
.annotate 'line', 1031
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1928_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1928_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_821
    new $P108, "Undef"
  vivify_821:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1928_done
  loop1928_redo:
.annotate 'line', 1032
    find_lex $P109, "$i"
    unless_null $P109, vivify_822
    new $P109, "Undef"
  vivify_822:
    sub $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 1033
    find_lex $P109, "$i"
    unless_null $P109, vivify_823
    new $P109, "Undef"
  vivify_823:
    set $I101, $P109
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P1927, $P111, $P112, "@!done", 11
    unless_null $P1927, vivify_824
    $P1927 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    set $P113, $P1927[$I101]
    unless_null $P113, vivify_825
    new $P113, "Undef"
  vivify_825:
    find_lex $P114, "$check"
    unless_null $P114, vivify_826
    new $P114, "Undef"
  vivify_826:
    issame $I102, $P113, $P114
    unless $I102, if_1926_end
.annotate 'line', 1034
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1926_end:
  loop1928_next:
.annotate 'line', 1031
    goto loop1928_test
  loop1928_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1928_next
    eq $P110, .CONTROL_LOOP_REDO, loop1928_redo
  loop1928_done:
    pop_eh 
.annotate 'line', 1037
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1029
    .return ()
  control_1919:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("147_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1040
    .const 'Sub' $P1937 = "148_1321350732.3287" 
    capture_lex $P1937
    new $P1931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1931, control_1930
    push_eh $P1931
    .lex "self", param_1932
    .lex "$obj", param_1933
    .lex "$name", param_1934
.annotate 'line', 1041
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P1935, $P109, $P110, "@!mro", 10
    unless_null $P1935, vivify_827
    $P1935 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    defined $I100, $P1935
    unless $I100, for_undef_828
    iter $P107, $P1935
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1944_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1944_test:
    unless $P107, loop1944_done
    shift $P111, $P107
  loop1944_redo:
    .const 'Sub' $P1937 = "148_1321350732.3287" 
    capture_lex $P1937
    $P1937($P111)
  loop1944_next:
    goto loop1944_test
  loop1944_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1944_next
    eq $P115, .CONTROL_LOOP_REDO, loop1944_redo
  loop1944_done:
    pop_eh 
  for_undef_828:
.annotate 'line', 1048
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1040
    .return ()
  control_1930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1936"  :anon :subid("148_1321350732.3287") :outer("147_1321350732.3287")
    .param pmc param_1941
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1042
    $P1939 = root_new ['parrot';'Hash']
    set $P1938, $P1939
    .lex "%meths", $P1938
.annotate 'line', 1043
    new $P112, "Undef"
    set $P1940, $P112
    .lex "$can", $P1940
    .lex "$_", param_1941
.annotate 'line', 1042
    find_lex $P113, "$_"
    unless_null $P113, vivify_829
    new $P113, "Undef"
  vivify_829:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_830
    new $P115, "Undef"
  vivify_830:
    $P116 = $P114."method_table"($P115)
    store_lex "%meths", $P116
.annotate 'line', 1043
    find_lex $P113, "$name"
    unless_null $P113, vivify_831
    new $P113, "Undef"
  vivify_831:
    find_lex $P1942, "%meths"
    unless_null $P1942, vivify_832
    $P1942 = root_new ['parrot';'Hash']
  vivify_832:
    set $P114, $P1942[$P113]
    unless_null $P114, vivify_833
    new $P114, "Undef"
  vivify_833:
    store_lex "$can", $P114
.annotate 'line', 1044
    find_lex $P114, "$can"
    unless_null $P114, vivify_834
    new $P114, "Undef"
  vivify_834:
    defined $I101, $P114
    if $I101, if_1943
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1943_end
  if_1943:
.annotate 'line', 1045
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    find_lex $P116, "$can"
    unless_null $P116, vivify_835
    new $P116, "Undef"
  vivify_835:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1943_end:
.annotate 'line', 1041
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("149_1321350732.3287") :outer("90_1321350732.3287")
    .param pmc param_1948
    .param pmc param_1949
    .param pmc param_1950
    .param pmc param_1951 :optional :named("no_fallback")
    .param int has_param_1951 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1054
    .const 'Sub' $P1954 = "150_1321350732.3287" 
    capture_lex $P1954
    new $P1947, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1947, control_1946
    push_eh $P1947
    .lex "self", param_1948
    .lex "$obj", param_1949
    .lex "$name", param_1950
    if has_param_1951, optparam_836
    new $P107, "Undef"
    set param_1951, $P107
  optparam_836:
    .lex "$no_fallback", param_1951
.annotate 'line', 1055
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1952, $P110, $P111, "@!mro", 10
    unless_null $P1952, vivify_837
    $P1952 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    defined $I100, $P1952
    unless $I100, for_undef_838
    iter $P108, $P1952
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1961_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1961_test:
    unless $P108, loop1961_done
    shift $P112, $P108
  loop1961_redo:
    .const 'Sub' $P1954 = "150_1321350732.3287" 
    capture_lex $P1954
    $P1954($P112)
  loop1961_next:
    goto loop1961_test
  loop1961_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1961_next
    eq $P116, .CONTROL_LOOP_REDO, loop1961_redo
  loop1961_done:
    pop_eh 
  for_undef_838:
.annotate 'line', 1062
    null $P108
.annotate 'line', 1054
    .return ($P108)
  control_1946:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1953"  :anon :subid("150_1321350732.3287") :outer("149_1321350732.3287")
    .param pmc param_1958
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1056
    $P1956 = root_new ['parrot';'Hash']
    set $P1955, $P1956
    .lex "%meths", $P1955
.annotate 'line', 1057
    new $P113, "Undef"
    set $P1957, $P113
    .lex "$found", $P1957
    .lex "$_", param_1958
.annotate 'line', 1056
    find_lex $P114, "$_"
    unless_null $P114, vivify_839
    new $P114, "Undef"
  vivify_839:
    get_how $P115, $P114
    find_lex $P116, "$obj"
    unless_null $P116, vivify_840
    new $P116, "Undef"
  vivify_840:
    $P117 = $P115."method_table"($P116)
    store_lex "%meths", $P117
.annotate 'line', 1057
    find_lex $P114, "$name"
    unless_null $P114, vivify_841
    new $P114, "Undef"
  vivify_841:
    find_lex $P1959, "%meths"
    unless_null $P1959, vivify_842
    $P1959 = root_new ['parrot';'Hash']
  vivify_842:
    set $P115, $P1959[$P114]
    unless_null $P115, vivify_843
    new $P115, "Undef"
  vivify_843:
    store_lex "$found", $P115
.annotate 'line', 1058
    find_lex $P115, "$found"
    unless_null $P115, vivify_844
    new $P115, "Undef"
  vivify_844:
    defined $I101, $P115
    if $I101, if_1960
    new $P114, 'Integer'
    set $P114, $I101
    goto if_1960_end
  if_1960:
.annotate 'line', 1059
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    find_lex $P117, "$found"
    unless_null $P117, vivify_845
    new $P117, "Undef"
  vivify_845:
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1960_end:
.annotate 'line', 1055
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1963"  :subid("151_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1067
    .const 'Sub' $P2000 = "160_1321350732.3287" 
    capture_lex $P2000
    .const 'Sub' $P1997 = "159_1321350732.3287" 
    capture_lex $P1997
    .const 'Sub' $P1993 = "158_1321350732.3287" 
    capture_lex $P1993
    .const 'Sub' $P1988 = "157_1321350732.3287" 
    capture_lex $P1988
    .const 'Sub' $P1983 = "156_1321350732.3287" 
    capture_lex $P1983
    .const 'Sub' $P1977 = "155_1321350732.3287" 
    capture_lex $P1977
    .const 'Sub' $P1974 = "154_1321350732.3287" 
    capture_lex $P1974
    .const 'Sub' $P1970 = "153_1321350732.3287" 
    capture_lex $P1970
    .const 'Sub' $P1968 = "152_1321350732.3287" 
    capture_lex $P1968
.annotate 'line', 1071
    new $P100, "Undef"
    set $P1965, $P100
    .lex "$archetypes", $P1965
    .lex "$?PACKAGE", $P1966
    .lex "$?CLASS", $P1967
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    store_lex "$archetypes", $P102
.annotate 'line', 1112
    .const 'Sub' $P2000 = "160_1321350732.3287" 
    newclosure $P2003, $P2000
.annotate 'line', 1067
    .return ($P2003)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("152_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1969
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1072
    .lex "self", param_1969
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_846
    new $P101, "Undef"
  vivify_846:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("153_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1971
    .param pmc param_1972 :optional :named("name")
    .param int has_param_1972 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1076
    .lex "self", param_1971
    if has_param_1972, optparam_847
    new $P101, "Undef"
    set param_1972, $P101
  optparam_847:
    .lex "$name", param_1972
.annotate 'line', 1077
    new $P102, "Undef"
    set $P1973, $P102
    .lex "$obj", $P1973
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1078
    find_lex $P103, "$obj"
    unless_null $P103, vivify_848
    new $P103, "Undef"
  vivify_848:
    find_lex $P104, "$name"
    unless_null $P104, vivify_849
    new $P104, "Undef"
  vivify_849:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1076
    find_lex $P103, "$obj"
    unless_null $P103, vivify_850
    new $P103, "Undef"
  vivify_850:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("154_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1975
    .param pmc param_1976 :optional :named("name")
    .param int has_param_1976 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1082
    .lex "self", param_1975
    if has_param_1976, optparam_851
    new $P101, "Undef"
    set param_1976, $P101
  optparam_851:
    .lex "$name", param_1976
.annotate 'line', 1083
    find_lex $P102, "$name"
    unless_null $P102, vivify_852
    new $P102, "Undef"
  vivify_852:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1082
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("155_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1978
    .param pmc param_1980 :named("repr")
    .param pmc param_1979 :optional :named("name")
    .param int has_param_1979 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1089
    .lex "self", param_1978
    if has_param_1979, optparam_853
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1979, $P101
  optparam_853:
    .lex "$name", param_1979
    .lex "$repr", param_1980
.annotate 'line', 1090
    new $P102, "Undef"
    set $P1981, $P102
    .lex "$metaclass", $P1981
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_854
    new $P104, "Undef"
  vivify_854:
    $P105 = $P103."new"($P104 :named("name"))
    store_lex "$metaclass", $P105
.annotate 'line', 1092
    find_lex $P103, "$metaclass"
    unless_null $P103, vivify_855
    new $P103, "Undef"
  vivify_855:
    find_lex $P104, "$repr"
    unless_null $P104, vivify_856
    new $P104, "Undef"
  vivify_856:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P1982 = root_new ['parrot';'Hash']
    set_who $P105, $P1982
.annotate 'line', 1089
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("156_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1984
    .param pmc param_1985
    .param pmc param_1986
    .param pmc param_1987
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1096
    .lex "self", param_1984
    .lex "$obj", param_1985
    .lex "$name", param_1986
    .lex "$code_obj", param_1987
.annotate 'line', 1097
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1096
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("157_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1989
    .param pmc param_1990
    .param pmc param_1991
    .param pmc param_1992
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1100
    .lex "self", param_1989
    .lex "$obj", param_1990
    .lex "$name", param_1991
    .lex "$code_obj", param_1992
.annotate 'line', 1101
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1100
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("158_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1994
    .param pmc param_1995
    .param pmc param_1996
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1104
    .lex "self", param_1994
    .lex "$obj", param_1995
    .lex "$meta_attr", param_1996
.annotate 'line', 1105
    die "Native types may not have attributes"
.annotate 'line', 1104
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("159_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_1998
    .param pmc param_1999
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1108
    .lex "self", param_1998
    .lex "$obj", param_1999
.annotate 'line', 1109
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1108
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("160_1321350732.3287") :outer("151_1321350732.3287")
    .param pmc param_2001
    .param pmc param_2002
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1112
    .lex "self", param_2001
    .lex "$obj", param_2002
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_857
    new $P104, "Undef"
  vivify_857:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2004"  :subid("161_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1118
    .const 'Sub' $P2053 = "172_1321350732.3287" 
    capture_lex $P2053
    .const 'Sub' $P2050 = "171_1321350732.3287" 
    capture_lex $P2050
    .const 'Sub' $P2047 = "170_1321350732.3287" 
    capture_lex $P2047
    .const 'Sub' $P2045 = "169_1321350732.3287" 
    capture_lex $P2045
    .const 'Sub' $P2043 = "168_1321350732.3287" 
    capture_lex $P2043
    .const 'Sub' $P2040 = "167_1321350732.3287" 
    capture_lex $P2040
    .const 'Sub' $P2038 = "166_1321350732.3287" 
    capture_lex $P2038
    .const 'Sub' $P2032 = "165_1321350732.3287" 
    capture_lex $P2032
    .const 'Sub' $P2024 = "164_1321350732.3287" 
    capture_lex $P2024
    .const 'Sub' $P2007 = "162_1321350732.3287" 
    capture_lex $P2007
.annotate 'line', 1189
    .const 'Sub' $P2007 = "162_1321350732.3287" 
    newclosure $P2021, $P2007
    set $P2006, $P2021
    .lex "has_method", $P2006
.annotate 'line', 1118
    .lex "$?PACKAGE", $P2022
    .lex "$?CLASS", $P2023
    find_lex $P101, "has_method"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("162_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2010
    .param pmc param_2011
    .param pmc param_2012
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1189
    .const 'Sub' $P2017 = "163_1321350732.3287" 
    capture_lex $P2017
    new $P2009, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2009, control_2008
    push_eh $P2009
    .lex "$target", param_2010
    .lex "$name", param_2011
    .lex "$local", param_2012
.annotate 'line', 1190
    $P2014 = root_new ['parrot';'ResizablePMCArray']
    set $P2013, $P2014
    .lex "@methods", $P2013
    find_lex $P100, "$target"
    unless_null $P100, vivify_858
    new $P100, "Undef"
  vivify_858:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_859
    new $P102, "Undef"
  vivify_859:
    find_lex $P103, "$local"
    unless_null $P103, vivify_860
    new $P103, "Undef"
  vivify_860:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 1191
    find_lex $P2015, "@methods"
    unless_null $P2015, vivify_861
    $P2015 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    defined $I100, $P2015
    unless $I100, for_undef_862
    iter $P100, $P2015
    new $P103, 'ExceptionHandler'
    set_label $P103, loop2020_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop2020_test:
    unless $P100, loop2020_done
    shift $P101, $P100
  loop2020_redo:
    .const 'Sub' $P2017 = "163_1321350732.3287" 
    capture_lex $P2017
    $P2017($P101)
  loop2020_next:
    goto loop2020_test
  loop2020_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2020_next
    eq $P104, .CONTROL_LOOP_REDO, loop2020_redo
  loop2020_done:
    pop_eh 
  for_undef_862:
.annotate 'line', 1194
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1189
    .return ()
  control_2008:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2016"  :anon :subid("163_1321350732.3287") :outer("162_1321350732.3287")
    .param pmc param_2018
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1191
    .lex "$_", param_2018
.annotate 'line', 1192
    find_lex $P103, "$_"
    unless_null $P103, vivify_863
    new $P103, "Undef"
  vivify_863:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_864
    new $P104, "Undef"
  vivify_864:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2019
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2019_end
  if_2019:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2019_end:
.annotate 'line', 1191
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("164_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2025
    .param pmc param_2026 :named("name")
    .param pmc param_2027 :optional :named("box_target")
    .param int has_param_2027 :opt_flag
    .param pmc param_2028 :slurpy :named
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1124
    .lex "self", param_2025
    .lex "$name", param_2026
    if has_param_2027, optparam_865
    new $P101, "Undef"
    set param_2027, $P101
  optparam_865:
    .lex "$box_target", param_2027
    .lex "%extra", param_2028
.annotate 'line', 1125
    new $P102, "Undef"
    set $P2029, $P102
    .lex "$attr", $P2029
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$attr", $P104
.annotate 'line', 1126
    find_lex $P103, "$attr"
    unless_null $P103, vivify_866
    new $P103, "Undef"
  vivify_866:
    find_lex $P104, "$name"
    unless_null $P104, vivify_867
    new $P104, "Undef"
  vivify_867:
    find_lex $P2030, "%extra"
    unless_null $P2030, vivify_868
    $P2030 = root_new ['parrot';'Hash']
  vivify_868:
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_869
    new $P105, "Undef"
  vivify_869:
.annotate 'line', 1127
    find_lex $P2031, "%extra"
    unless_null $P2031, vivify_870
    $P2031 = root_new ['parrot';'Hash']
  vivify_870:
    exists $I100, $P2031["type"]
.annotate 'line', 1126
    $P103."BUILD"($P2030 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1124
    find_lex $P103, "$attr"
    unless_null $P103, vivify_871
    new $P103, "Undef"
  vivify_871:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("165_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2033
    .param pmc param_2034 :optional :named("name")
    .param int has_param_2034 :opt_flag
    .param pmc param_2035 :optional :named("type")
    .param int has_param_2035 :opt_flag
    .param pmc param_2036 :optional :named("has_type")
    .param int has_param_2036 :opt_flag
    .param pmc param_2037 :optional :named("box_target")
    .param int has_param_2037 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1131
    .lex "self", param_2033
    if has_param_2034, optparam_872
    new $P101, "Undef"
    set param_2034, $P101
  optparam_872:
    .lex "$name", param_2034
    if has_param_2035, optparam_873
    new $P102, "Undef"
    set param_2035, $P102
  optparam_873:
    .lex "$type", param_2035
    if has_param_2036, optparam_874
    new $P103, "Undef"
    set param_2036, $P103
  optparam_874:
    .lex "$has_type", param_2036
    if has_param_2037, optparam_875
    new $P104, "Undef"
    set param_2037, $P104
  optparam_875:
    .lex "$box_target", param_2037
.annotate 'line', 1132
    find_lex $P105, "$name"
    unless_null $P105, vivify_876
    new $P105, "Undef"
  vivify_876:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!name", 0, $P105
.annotate 'line', 1133
    find_lex $P105, "$type"
    unless_null $P105, vivify_877
    new $P105, "Undef"
  vivify_877:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!type", 1, $P105
.annotate 'line', 1134
    find_lex $P105, "$has_type"
    unless_null $P105, vivify_878
    new $P105, "Undef"
  vivify_878:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!has_type", 2, $P105
.annotate 'line', 1135
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_879
    new $P105, "Undef"
  vivify_879:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!box_target", 3, $P105
.annotate 'line', 1131
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("166_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1138
    .lex "self", param_2039
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_880
    new $P104, "Undef"
  vivify_880:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("167_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2041
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1142
    .lex "self", param_2041
.annotate 'line', 1143
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!has_type", 2
    unless_null $P105, vivify_881
    new $P105, "Undef"
  vivify_881:
    if $P105, if_2042
    null $P110
    set $P101, $P110
    goto if_2042_end
  if_2042:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!type", 1
    unless_null $P109, vivify_882
    new $P109, "Undef"
  vivify_882:
    set $P101, $P109
  if_2042_end:
.annotate 'line', 1142
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("168_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2044
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1146
    .lex "self", param_2044
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("169_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2046
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1150
    .lex "self", param_2046
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("170_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2048
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1154
    .lex "self", param_2048
.annotate 'line', 1155
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!box_target", 3
    unless_null $P105, vivify_883
    new $P105, "Undef"
  vivify_883:
    if $P105, if_2049
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2049_end
  if_2049:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2049_end:
.annotate 'line', 1154
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("171_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2051
    .param pmc param_2052
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1158
    .lex "self", param_2051
    .lex "$obj", param_2052
    find_lex $P101, "$obj"
    unless_null $P101, vivify_884
    new $P101, "Undef"
  vivify_884:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("172_1321350732.3287") :outer("161_1321350732.3287")
    .param pmc param_2054
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1185
    .lex "self", param_2054
.annotate 'line', 1186
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_885
    new $P104, "Undef"
  vivify_885:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1185
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2055"  :subid("173_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1200
    .const 'Sub' $P2091 = "182_1321350732.3287" 
    capture_lex $P2091
    .const 'Sub' $P2088 = "181_1321350732.3287" 
    capture_lex $P2088
    .const 'Sub' $P2084 = "180_1321350732.3287" 
    capture_lex $P2084
    .const 'Sub' $P2079 = "179_1321350732.3287" 
    capture_lex $P2079
    .const 'Sub' $P2074 = "178_1321350732.3287" 
    capture_lex $P2074
    .const 'Sub' $P2069 = "177_1321350732.3287" 
    capture_lex $P2069
    .const 'Sub' $P2066 = "176_1321350732.3287" 
    capture_lex $P2066
    .const 'Sub' $P2062 = "175_1321350732.3287" 
    capture_lex $P2062
    .const 'Sub' $P2060 = "174_1321350732.3287" 
    capture_lex $P2060
.annotate 'line', 1204
    new $P100, "Undef"
    set $P2057, $P100
    .lex "$archetypes", $P2057
    .lex "$?PACKAGE", $P2058
    .lex "$?CLASS", $P2059
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    store_lex "$archetypes", $P102
.annotate 'line', 1246
    .const 'Sub' $P2091 = "182_1321350732.3287" 
    newclosure $P2094, $P2091
.annotate 'line', 1200
    .return ($P2094)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("174_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2061
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1205
    .lex "self", param_2061
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_886
    new $P101, "Undef"
  vivify_886:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("175_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2063
    .param pmc param_2064 :optional :named("name")
    .param int has_param_2064 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1209
    .lex "self", param_2063
    if has_param_2064, optparam_887
    new $P101, "Undef"
    set param_2064, $P101
  optparam_887:
    .lex "$name", param_2064
.annotate 'line', 1210
    new $P102, "Undef"
    set $P2065, $P102
    .lex "$obj", $P2065
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1211
    find_lex $P103, "$obj"
    unless_null $P103, vivify_888
    new $P103, "Undef"
  vivify_888:
    find_lex $P104, "$name"
    unless_null $P104, vivify_889
    new $P104, "Undef"
  vivify_889:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1209
    find_lex $P103, "$obj"
    unless_null $P103, vivify_890
    new $P103, "Undef"
  vivify_890:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("176_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2067
    .param pmc param_2068 :optional :named("name")
    .param int has_param_2068 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1215
    .lex "self", param_2067
    if has_param_2068, optparam_891
    new $P101, "Undef"
    set param_2068, $P101
  optparam_891:
    .lex "$name", param_2068
.annotate 'line', 1216
    find_lex $P102, "$name"
    unless_null $P102, vivify_892
    new $P102, "Undef"
  vivify_892:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!name", 0, $P102
.annotate 'line', 1215
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("177_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2070
    .param pmc param_2071 :optional :named("name")
    .param int has_param_2071 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1221
    .lex "self", param_2070
    if has_param_2071, optparam_893
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2071, $P101
  optparam_893:
    .lex "$name", param_2071
.annotate 'line', 1222
    new $P102, "Undef"
    set $P2072, $P102
    .lex "$metaclass", $P2072
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_894
    new $P104, "Undef"
  vivify_894:
    $P105 = $P103."new"($P104 :named("name"))
    store_lex "$metaclass", $P105
.annotate 'line', 1224
    find_lex $P103, "$metaclass"
    unless_null $P103, vivify_895
    new $P103, "Undef"
  vivify_895:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2073 = root_new ['parrot';'Hash']
    set_who $P105, $P2073
.annotate 'line', 1221
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("178_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2075
    .param pmc param_2076
    .param pmc param_2077
    .param pmc param_2078
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1228
    .lex "self", param_2075
    .lex "$obj", param_2076
    .lex "$name", param_2077
    .lex "$code_obj", param_2078
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("179_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2080
    .param pmc param_2081
    .param pmc param_2082
    .param pmc param_2083
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1234
    .lex "self", param_2080
    .lex "$obj", param_2081
    .lex "$name", param_2082
    .lex "$code_obj", param_2083
.annotate 'line', 1235
    die "Modules may not have methods"
.annotate 'line', 1234
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("180_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2085
    .param pmc param_2086
    .param pmc param_2087
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1238
    .lex "self", param_2085
    .lex "$obj", param_2086
    .lex "$meta_attr", param_2087
.annotate 'line', 1239
    die "Modules may not have attributes"
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("181_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2089
    .param pmc param_2090
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1242
    .lex "self", param_2089
    .lex "$obj", param_2090
.annotate 'line', 1243
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!composed", 1, $P101
.annotate 'line', 1242
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("182_1321350732.3287") :outer("173_1321350732.3287")
    .param pmc param_2092
    .param pmc param_2093
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1246
    .lex "self", param_2092
    .lex "$obj", param_2093
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!name", 0
    unless_null $P104, vivify_896
    new $P104, "Undef"
  vivify_896:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2095"  :anon :subid("183_1321350732.3287") :outer("10_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1254
    .lex "$?PACKAGE", $P2097
    .lex "$?CLASS", $P2098
.annotate 'line', 1255
    find_lex $P100, "NQPModuleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_897
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_897:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1256
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_898
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_898:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1257
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_899
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_899:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1258
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_900
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_900:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1259
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_901
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_901:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1260
    find_lex $P100, "NQPParametricRoleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_902
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_902:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1261
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_903
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_903:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1262
    find_lex $P100, "NQPNativeHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_904
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_904:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1254
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2100" :load :anon :subid("184_1321350732.3287")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1
    .const 'Sub' $P2102 = "10_1321350732.3287" 
    $P106 = $P2102()
    .return ($P106)
.end

