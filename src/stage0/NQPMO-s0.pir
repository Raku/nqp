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
.sub "_block1000"  :anon :subid("10_1316046719.21023")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P2118 = "187_1316046719.21023" 
    capture_lex $P2118
    .const 'Sub' $P2078 = "177_1316046719.21023" 
    capture_lex $P2078
    .const 'Sub' $P2027 = "165_1316046719.21023" 
    capture_lex $P2027
    .const 'Sub' $P1986 = "155_1316046719.21023" 
    capture_lex $P1986
    .const 'Sub' $P1497 = "90_1316046719.21023" 
    capture_lex $P1497
    .const 'Sub' $P1353 = "64_1316046719.21023" 
    capture_lex $P1353
    .const 'Sub' $P1282 = "55_1316046719.21023" 
    capture_lex $P1282
    .const 'Sub' $P1150 = "32_1316046719.21023" 
    capture_lex $P1150
    .const 'Sub' $P1050 = "22_1316046719.21023" 
    capture_lex $P1050
    .const 'Sub' $P1016 = "11_1316046719.21023" 
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
    .const 'Sub' $P1016 = "11_1316046719.21023" 
    capture_lex $P1016
    $P1016()
.annotate 'line', 72
    .const 'Sub' $P1050 = "22_1316046719.21023" 
    capture_lex $P1050
    $P1050()
.annotate 'line', 164
    .const 'Sub' $P1150 = "32_1316046719.21023" 
    capture_lex $P1150
    $P1150()
.annotate 'line', 317
    .const 'Sub' $P1282 = "55_1316046719.21023" 
    capture_lex $P1282
    $P1282()
.annotate 'line', 390
    .const 'Sub' $P1353 = "64_1316046719.21023" 
    capture_lex $P1353
    $P1353()
.annotate 'line', 574
    .const 'Sub' $P1497 = "90_1316046719.21023" 
    capture_lex $P1497
    $P1497()
.annotate 'line', 1078
    .const 'Sub' $P1986 = "155_1316046719.21023" 
    capture_lex $P1986
    $P1986()
.annotate 'line', 1129
    .const 'Sub' $P2027 = "165_1316046719.21023" 
    capture_lex $P2027
    $P2027()
.annotate 'line', 1211
    .const 'Sub' $P2078 = "177_1316046719.21023" 
    capture_lex $P2078
    $P2078()
.annotate 'line', 1265
    .const 'Sub' $P2118 = "187_1316046719.21023" 
    capture_lex $P2118
    $P2118()
.annotate 'line', 1
    find_lex $P101, "@ARGS"
    if $P101, if_2121
    set $P100, $P101
    goto if_2121_end
  if_2121:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_2121_end:
    .return ($P100)
    .const 'Sub' $P2123 = "188_1316046719.21023" 
    .return ($P2123)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post189") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1316046719.21023" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P107, "1316046691.74044"
    isnull $I100, $P107
    if $I100, if_2125
    goto if_2125_end
  if_2125:
    nqp_dynop_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "1316046691.74044"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src/stage2/gen/nqp-mo.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I101, $P112
    unless $I101, if_2126_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2126_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P113
    .const 'Sub' $P2127 = "10_1316046719.21023" 
    $P112 = $P2127."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 0
    $P112."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'Sub' $P2128 = "10_1316046719.21023" 
    $P114 = $P2128."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2129 = "10_1316046719.21023" 
    $P112 = $P2129."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 0
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2130 = "10_1316046719.21023" 
    $P114 = $P2130."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("Archetypes" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P113
    .const 'Sub' $P2131 = "10_1316046719.21023" 
    $P112 = $P2131."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 1
    $P112."set_static_lexpad_value"("Archetypes", $P113)
    .const 'Sub' $P2132 = "10_1316046719.21023" 
    $P114 = $P2132."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominal" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!nominalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!inheritalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composalizable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!generic" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!parametric" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2133 = "12_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2133)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2134 = "13_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2134)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2135 = "14_1316046719.21023" 
    $P113."add_method"($P114, "nominal", $P2135)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2136 = "15_1316046719.21023" 
    $P113."add_method"($P114, "nominalizable", $P2136)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2137 = "16_1316046719.21023" 
    $P113."add_method"($P114, "inheritable", $P2137)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2138 = "17_1316046719.21023" 
    $P113."add_method"($P114, "inheritalizable", $P2138)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2139 = "18_1316046719.21023" 
    $P113."add_method"($P114, "composable", $P2139)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2140 = "19_1316046719.21023" 
    $P113."add_method"($P114, "composalizable", $P2140)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2141 = "20_1316046719.21023" 
    $P113."add_method"($P114, "generic", $P2141)
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    .const 'Sub' $P2142 = "21_1316046719.21023" 
    $P113."add_method"($P114, "parametric", $P2142)
    .const 'Sub' $P2143 = "11_1316046719.21023" 
    $P112 = $P2143."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 1
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2144 = "11_1316046719.21023" 
    $P114 = $P2144."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2145 = "11_1316046719.21023" 
    $P112 = $P2145."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 1
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2146 = "11_1316046719.21023" 
    $P114 = $P2146."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToRoleApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 12, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 12
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["RoleToRoleApplier"], $P112
    .const 'Sub' $P2147 = "10_1316046719.21023" 
    $P112 = $P2147."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 12
    $P112."set_static_lexpad_value"("RoleToRoleApplier", $P113)
    .const 'Sub' $P2148 = "10_1316046719.21023" 
    $P114 = $P2148."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 12
    .const 'Sub' $P2149 = "23_1316046719.21023" 
    $P113."add_method"($P114, "apply", $P2149)
    .const 'Sub' $P2150 = "22_1316046719.21023" 
    $P112 = $P2150."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 12
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2151 = "22_1316046719.21023" 
    $P114 = $P2151."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2152 = "22_1316046719.21023" 
    $P112 = $P2152."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 12
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2153 = "22_1316046719.21023" 
    $P114 = $P2153."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 12
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 12
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 14, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 14
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPConcreteRoleHOW"], $P112
    .const 'Sub' $P2154 = "10_1316046719.21023" 
    $P112 = $P2154."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 14
    $P112."set_static_lexpad_value"("NQPConcreteRoleHOW", $P113)
    .const 'Sub' $P2155 = "10_1316046719.21023" 
    $P114 = $P2155."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!instance_of" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!collisions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!role_typecheck_list" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2156 = "33_1316046719.21023" 
    $P113."add_method"($P114, "archetypes", $P2156)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2157 = "34_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2157)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2158 = "35_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2158)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2159 = "36_1316046719.21023" 
    $P113."add_method"($P114, "new_type", $P2159)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2160 = "37_1316046719.21023" 
    $P113."add_method"($P114, "add_method", $P2160)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2161 = "38_1316046719.21023" 
    $P113."add_method"($P114, "add_multi_method", $P2161)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2162 = "39_1316046719.21023" 
    $P113."add_method"($P114, "add_attribute", $P2162)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2163 = "40_1316046719.21023" 
    $P113."add_method"($P114, "add_parent", $P2163)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2164 = "41_1316046719.21023" 
    $P113."add_method"($P114, "add_role", $P2164)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2165 = "42_1316046719.21023" 
    $P113."add_method"($P114, "add_collision", $P2165)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2166 = "43_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2166)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2167 = "45_1316046719.21023" 
    $P113."add_method"($P114, "methods", $P2167)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2168 = "47_1316046719.21023" 
    $P113."add_method"($P114, "method_table", $P2168)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2169 = "48_1316046719.21023" 
    $P113."add_method"($P114, "collisions", $P2169)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2170 = "49_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2170)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2171 = "50_1316046719.21023" 
    $P113."add_method"($P114, "attributes", $P2171)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2172 = "52_1316046719.21023" 
    $P113."add_method"($P114, "roles", $P2172)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2173 = "53_1316046719.21023" 
    $P113."add_method"($P114, "role_typecheck_list", $P2173)
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    .const 'Sub' $P2174 = "54_1316046719.21023" 
    $P113."add_method"($P114, "instance_of", $P2174)
    .const 'Sub' $P2175 = "32_1316046719.21023" 
    $P112 = $P2175."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 14
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2176 = "32_1316046719.21023" 
    $P114 = $P2176."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2177 = "32_1316046719.21023" 
    $P112 = $P2177."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 14
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2178 = "32_1316046719.21023" 
    $P114 = $P2178."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 14
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 14
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("RoleToClassApplier" :named("name"))
    nqp_add_object_to_sc cur_sc, 34, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 34
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["RoleToClassApplier"], $P112
    .const 'Sub' $P2179 = "10_1316046719.21023" 
    $P112 = $P2179."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 34
    $P112."set_static_lexpad_value"("RoleToClassApplier", $P113)
    .const 'Sub' $P2180 = "10_1316046719.21023" 
    $P114 = $P2180."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 34
    .const 'Sub' $P2181 = "59_1316046719.21023" 
    $P113."add_method"($P114, "apply", $P2181)
    .const 'Sub' $P2182 = "55_1316046719.21023" 
    $P112 = $P2182."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 34
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2183 = "55_1316046719.21023" 
    $P114 = $P2183."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2184 = "55_1316046719.21023" 
    $P112 = $P2184."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 34
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2185 = "55_1316046719.21023" 
    $P114 = $P2185."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 34
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 34
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 36, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 36
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPParametricRoleHOW"], $P112
    .const 'Sub' $P2186 = "10_1316046719.21023" 
    $P112 = $P2186."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 36
    $P112."set_static_lexpad_value"("NQPParametricRoleHOW", $P113)
    .const 'Sub' $P2187 = "10_1316046719.21023" 
    $P114 = $P2187."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!body_block" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2188 = "66_1316046719.21023" 
    $P113."add_method"($P114, "archetypes", $P2188)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2189 = "67_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2189)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2190 = "68_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2190)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2191 = "69_1316046719.21023" 
    $P113."add_method"($P114, "new_type", $P2191)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2192 = "70_1316046719.21023" 
    $P113."add_method"($P114, "set_body_block", $P2192)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2193 = "71_1316046719.21023" 
    $P113."add_method"($P114, "add_method", $P2193)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2194 = "72_1316046719.21023" 
    $P113."add_method"($P114, "add_multi_method", $P2194)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2195 = "73_1316046719.21023" 
    $P113."add_method"($P114, "add_attribute", $P2195)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2196 = "74_1316046719.21023" 
    $P113."add_method"($P114, "add_parent", $P2196)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2197 = "75_1316046719.21023" 
    $P113."add_method"($P114, "add_role", $P2197)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2198 = "76_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2198)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2199 = "77_1316046719.21023" 
    $P113."add_method"($P114, "parametric", $P2199)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2200 = "78_1316046719.21023" 
    $P113."add_method"($P114, "specialize", $P2200)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2201 = "83_1316046719.21023" 
    $P113."add_method"($P114, "methods", $P2201)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2202 = "85_1316046719.21023" 
    $P113."add_method"($P114, "method_table", $P2202)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2203 = "86_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2203)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2204 = "87_1316046719.21023" 
    $P113."add_method"($P114, "attributes", $P2204)
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    .const 'Sub' $P2205 = "89_1316046719.21023" 
    $P113."add_method"($P114, "roles", $P2205)
    .const 'Sub' $P2206 = "64_1316046719.21023" 
    $P112 = $P2206."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 36
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2207 = "64_1316046719.21023" 
    $P114 = $P2207."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2208 = "64_1316046719.21023" 
    $P112 = $P2208."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 36
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2209 = "64_1316046719.21023" 
    $P114 = $P2209."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 36
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 36
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPClassHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 55, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 55
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPClassHOW"], $P112
    .const 'Sub' $P2210 = "10_1316046719.21023" 
    $P112 = $P2210."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 55
    $P112."set_static_lexpad_value"("NQPClassHOW", $P113)
    .const 'Sub' $P2211 = "10_1316046719.21023" 
    $P114 = $P2211."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!attributes" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!methods" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!multi_methods_to_incorporate" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!parents" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!roles" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!default_parent" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!vtable" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!method-vtable-slots" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!mro" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("@!done" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2212 = "101_1316046719.21023" 
    $P113."add_method"($P114, "archetypes", $P2212)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2213 = "102_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2213)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2214 = "103_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2214)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2215 = "104_1316046719.21023" 
    $P113."add_method"($P114, "new_type", $P2215)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2216 = "105_1316046719.21023" 
    $P113."add_method"($P114, "add_method", $P2216)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2217 = "106_1316046719.21023" 
    $P113."add_method"($P114, "add_multi_method", $P2217)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2218 = "107_1316046719.21023" 
    $P113."add_method"($P114, "add_attribute", $P2218)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2219 = "108_1316046719.21023" 
    $P113."add_method"($P114, "add_parent", $P2219)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2220 = "110_1316046719.21023" 
    $P113."add_method"($P114, "set_default_parent", $P2220)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2221 = "111_1316046719.21023" 
    $P113."add_method"($P114, "add_role", $P2221)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2222 = "113_1316046719.21023" 
    $P113."add_method"($P114, "add_parrot_vtable_mapping", $P2222)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2223 = "114_1316046719.21023" 
    $P113."add_method"($P114, "add_parrot_vtable_handler_mapping", $P2223)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2224 = "115_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2224)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2225 = "119_1316046719.21023" 
    $P113."add_method"($P114, "incorporate_multi_candidates", $P2225)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2226 = "124_1316046719.21023" 
    $P113."add_method"($P114, "publish_type_cache", $P2226)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2227 = "127_1316046719.21023" 
    $P113."add_method"($P114, "publish_method_cache", $P2227)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2228 = "131_1316046719.21023" 
    $P113."add_method"($P114, "publish_boolification_spec", $P2228)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2229 = "132_1316046719.21023" 
    $P113."add_method"($P114, "publish_parrot_vtable_mapping", $P2229)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2230 = "135_1316046719.21023" 
    $P113."add_method"($P114, "publish_parrot_vtablee_handler_mapping", $P2230)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2231 = "138_1316046719.21023" 
    $P113."add_method"($P114, "parents", $P2231)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2232 = "139_1316046719.21023" 
    $P113."add_method"($P114, "mro", $P2232)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2233 = "140_1316046719.21023" 
    $P113."add_method"($P114, "roles", $P2233)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2234 = "141_1316046719.21023" 
    $P113."add_method"($P114, "methods", $P2234)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2235 = "143_1316046719.21023" 
    $P113."add_method"($P114, "method_table", $P2235)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2236 = "144_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2236)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2237 = "145_1316046719.21023" 
    $P113."add_method"($P114, "attributes", $P2237)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2238 = "147_1316046719.21023" 
    $P113."add_method"($P114, "parrot_vtable_mappings", $P2238)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2239 = "148_1316046719.21023" 
    $P113."add_method"($P114, "parrot_vtable_handler_mappings", $P2239)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2240 = "149_1316046719.21023" 
    $P113."add_method"($P114, "isa", $P2240)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2241 = "150_1316046719.21023" 
    $P113."add_method"($P114, "does", $P2241)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2242 = "151_1316046719.21023" 
    $P113."add_method"($P114, "can", $P2242)
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    .const 'Sub' $P2243 = "153_1316046719.21023" 
    $P113."add_method"($P114, "find_method", $P2243)
    .const 'Sub' $P2244 = "90_1316046719.21023" 
    $P112 = $P2244."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 55
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2245 = "90_1316046719.21023" 
    $P114 = $P2245."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2246 = "90_1316046719.21023" 
    $P112 = $P2246."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 55
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2247 = "90_1316046719.21023" 
    $P114 = $P2247."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 55
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 55
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPNativeHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 88, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 88
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPNativeHOW"], $P112
    .const 'Sub' $P2248 = "10_1316046719.21023" 
    $P112 = $P2248."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 88
    $P112."set_static_lexpad_value"("NQPNativeHOW", $P113)
    .const 'Sub' $P2249 = "10_1316046719.21023" 
    $P114 = $P2249."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2250 = "156_1316046719.21023" 
    $P113."add_method"($P114, "archetypes", $P2250)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2251 = "157_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2251)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2252 = "158_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2252)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2253 = "159_1316046719.21023" 
    $P113."add_method"($P114, "new_type", $P2253)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2254 = "160_1316046719.21023" 
    $P113."add_method"($P114, "add_method", $P2254)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2255 = "161_1316046719.21023" 
    $P113."add_method"($P114, "add_multi_method", $P2255)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2256 = "162_1316046719.21023" 
    $P113."add_method"($P114, "add_attribute", $P2256)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2257 = "163_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2257)
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    .const 'Sub' $P2258 = "164_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2258)
    .const 'Sub' $P2259 = "155_1316046719.21023" 
    $P112 = $P2259."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 88
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2260 = "155_1316046719.21023" 
    $P114 = $P2260."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2261 = "155_1316046719.21023" 
    $P112 = $P2261."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 88
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2262 = "155_1316046719.21023" 
    $P114 = $P2262."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 88
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 88
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPAttribute" :named("name"))
    nqp_add_object_to_sc cur_sc, 98, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 98
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPAttribute"], $P112
    .const 'Sub' $P2263 = "10_1316046719.21023" 
    $P112 = $P2263."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 98
    $P112."set_static_lexpad_value"("NQPAttribute", $P113)
    .const 'Sub' $P2264 = "10_1316046719.21023" 
    $P114 = $P2264."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!has_type" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!box_target" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2265 = "168_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2265)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2266 = "169_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2266)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2267 = "170_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2267)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2268 = "171_1316046719.21023" 
    $P113."add_method"($P114, "type", $P2268)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2269 = "172_1316046719.21023" 
    $P113."add_method"($P114, "has_accessor", $P2269)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2270 = "173_1316046719.21023" 
    $P113."add_method"($P114, "build_closure", $P2270)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2271 = "174_1316046719.21023" 
    $P113."add_method"($P114, "box_target", $P2271)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2272 = "175_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2272)
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    .const 'Sub' $P2273 = "176_1316046719.21023" 
    $P113."add_method"($P114, "has_mutator", $P2273)
    .const 'Sub' $P2274 = "165_1316046719.21023" 
    $P112 = $P2274."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 98
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2275 = "165_1316046719.21023" 
    $P114 = $P2275."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2276 = "165_1316046719.21023" 
    $P112 = $P2276."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 98
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2277 = "165_1316046719.21023" 
    $P114 = $P2277."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 98
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 98
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("NQPModuleHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 108, $P113
    nqp_get_sc_object $P112, "1316046691.74044", 108
    nqp_get_sc_object $P113, "1316046691.74044", 0
    get_who $P114, $P113
    set $P114["NQPModuleHOW"], $P112
    .const 'Sub' $P2278 = "10_1316046719.21023" 
    $P112 = $P2278."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 108
    $P112."set_static_lexpad_value"("NQPModuleHOW", $P113)
    .const 'Sub' $P2279 = "10_1316046719.21023" 
    $P114 = $P2279."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!name" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 2
    $P116 = $P115."new"("$!composed" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2280 = "178_1316046719.21023" 
    $P113."add_method"($P114, "archetypes", $P2280)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2281 = "179_1316046719.21023" 
    $P113."add_method"($P114, "new", $P2281)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2282 = "180_1316046719.21023" 
    $P113."add_method"($P114, "BUILD", $P2282)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2283 = "181_1316046719.21023" 
    $P113."add_method"($P114, "new_type", $P2283)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2284 = "182_1316046719.21023" 
    $P113."add_method"($P114, "add_method", $P2284)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2285 = "183_1316046719.21023" 
    $P113."add_method"($P114, "add_multi_method", $P2285)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2286 = "184_1316046719.21023" 
    $P113."add_method"($P114, "add_attribute", $P2286)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2287 = "185_1316046719.21023" 
    $P113."add_method"($P114, "compose", $P2287)
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    .const 'Sub' $P2288 = "186_1316046719.21023" 
    $P113."add_method"($P114, "name", $P2288)
    .const 'Sub' $P2289 = "177_1316046719.21023" 
    $P112 = $P2289."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 108
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2290 = "177_1316046719.21023" 
    $P114 = $P2290."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2291 = "177_1316046719.21023" 
    $P112 = $P2291."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 108
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2292 = "177_1316046719.21023" 
    $P114 = $P2292."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 108
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 108
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("EXPORTHOW" :named("name"))
    nqp_add_object_to_sc cur_sc, 118, $P113
    .const 'Sub' $P2293 = "10_1316046719.21023" 
    $P112 = $P2293."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 118
    $P112."set_static_lexpad_value"("EXPORTHOW", $P113)
    .const 'Sub' $P2294 = "10_1316046719.21023" 
    $P114 = $P2294."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2295 = "187_1316046719.21023" 
    $P112 = $P2295."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 118
    $P112."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'Sub' $P2296 = "187_1316046719.21023" 
    $P114 = $P2296."get_lexinfo"()
    $P114."finish_static_lexpad"()
    .const 'Sub' $P2297 = "187_1316046719.21023" 
    $P112 = $P2297."get_lexinfo"()
    nqp_get_sc_object $P113, "1316046691.74044", 118
    $P112."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'Sub' $P2298 = "187_1316046719.21023" 
    $P114 = $P2298."get_lexinfo"()
    $P114."finish_static_lexpad"()
    nqp_get_sc_object $P112, "1316046691.74044", 118
    get_how $P113, $P112
    nqp_get_sc_object $P114, "1316046691.74044", 118
    $P113."compose"($P114)
  if_2125_end:
    nqp_get_sc_object $P112, "1316046691.74044", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace []
.sub "_block1015"  :anon :subid("11_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P1046 = "21_1316046719.21023" 
    capture_lex $P1046
    .const 'Sub' $P1044 = "20_1316046719.21023" 
    capture_lex $P1044
    .const 'Sub' $P1042 = "19_1316046719.21023" 
    capture_lex $P1042
    .const 'Sub' $P1040 = "18_1316046719.21023" 
    capture_lex $P1040
    .const 'Sub' $P1038 = "17_1316046719.21023" 
    capture_lex $P1038
    .const 'Sub' $P1036 = "16_1316046719.21023" 
    capture_lex $P1036
    .const 'Sub' $P1034 = "15_1316046719.21023" 
    capture_lex $P1034
    .const 'Sub' $P1032 = "14_1316046719.21023" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "13_1316046719.21023" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "12_1316046719.21023" 
    capture_lex $P1019
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 68
    .const 'Sub' $P1046 = "21_1316046719.21023" 
    newclosure $P1048, $P1046
.annotate 'line', 9
    .return ($P1048)
.end


.HLL "nqp"

.namespace []
.sub "new" :anon :subid("12_1316046719.21023") :outer("11_1316046719.21023")
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
    if has_param_1021, optparam_190
    new $P100, "Undef"
    set param_1021, $P100
  optparam_190:
    .lex "$nominal", param_1021
    if has_param_1022, optparam_191
    new $P101, "Undef"
    set param_1022, $P101
  optparam_191:
    .lex "$inheritable", param_1022
    if has_param_1023, optparam_192
    new $P102, "Undef"
    set param_1023, $P102
  optparam_192:
    .lex "$composable", param_1023
    if has_param_1024, optparam_193
    new $P103, "Undef"
    set param_1024, $P103
  optparam_193:
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
    unless_null $P105, vivify_194
    new $P105, "Undef"
  vivify_194:
    find_lex $P106, "$nominal"
    unless_null $P106, vivify_195
    new $P106, "Undef"
  vivify_195:
    find_lex $P107, "$inheritable"
    unless_null $P107, vivify_196
    new $P107, "Undef"
  vivify_196:
    find_lex $P108, "$composable"
    unless_null $P108, vivify_197
    new $P108, "Undef"
  vivify_197:
    find_lex $P109, "$parametric"
    unless_null $P109, vivify_198
    new $P109, "Undef"
  vivify_198:
    $P105."BUILD"($P106 :named("nominal"), $P107 :named("inheritable"), $P108 :named("composable"), $P109 :named("parametric"))
.annotate 'line', 47
    find_lex $P105, "$arch"
    unless_null $P105, vivify_199
    new $P105, "Undef"
  vivify_199:
    .return ($P105)
.end


.HLL "nqp"

.namespace []
.sub "BUILD" :anon :subid("13_1316046719.21023") :outer("11_1316046719.21023")
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
    if has_param_1028, optparam_200
    new $P100, "Undef"
    set param_1028, $P100
  optparam_200:
    .lex "$nominal", param_1028
    if has_param_1029, optparam_201
    new $P101, "Undef"
    set param_1029, $P101
  optparam_201:
    .lex "$inheritable", param_1029
    if has_param_1030, optparam_202
    new $P102, "Undef"
    set param_1030, $P102
  optparam_202:
    .lex "$composable", param_1030
    if has_param_1031, optparam_203
    new $P103, "Undef"
    set param_1031, $P103
  optparam_203:
    .lex "$parametric", param_1031
.annotate 'line', 55
    find_lex $P104, "$nominal"
    unless_null $P104, vivify_204
    new $P104, "Undef"
  vivify_204:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!nominal", $P104
.annotate 'line', 56
    find_lex $P104, "$inheritable"
    unless_null $P104, vivify_205
    new $P104, "Undef"
  vivify_205:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!inheritable", $P104
.annotate 'line', 57
    find_lex $P104, "$composable"
    unless_null $P104, vivify_206
    new $P104, "Undef"
  vivify_206:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!composable", $P104
.annotate 'line', 58
    find_lex $P104, "$parametric"
    unless_null $P104, vivify_207
    new $P104, "Undef"
  vivify_207:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!parametric", $P104
.annotate 'line', 54
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "nominal" :anon :subid("14_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 61
    .lex "self", param_1033
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!nominal"
    unless_null $P103, vivify_208
    new $P103, "Undef"
  vivify_208:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "nominalizable" :anon :subid("15_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 62
    .lex "self", param_1035
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!nominalizable"
    unless_null $P103, vivify_209
    new $P103, "Undef"
  vivify_209:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritable" :anon :subid("16_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 63
    .lex "self", param_1037
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!inheritable"
    unless_null $P103, vivify_210
    new $P103, "Undef"
  vivify_210:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "inheritalizable" :anon :subid("17_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 64
    .lex "self", param_1039
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!inheritalizable"
    unless_null $P103, vivify_211
    new $P103, "Undef"
  vivify_211:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composable" :anon :subid("18_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 65
    .lex "self", param_1041
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!composable"
    unless_null $P103, vivify_212
    new $P103, "Undef"
  vivify_212:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "composalizable" :anon :subid("19_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 66
    .lex "self", param_1043
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!composalizable"
    unless_null $P103, vivify_213
    new $P103, "Undef"
  vivify_213:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "generic" :anon :subid("20_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 67
    .lex "self", param_1045
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!generic"
    unless_null $P103, vivify_214
    new $P103, "Undef"
  vivify_214:
    .return ($P103)
.end


.HLL "nqp"

.namespace []
.sub "parametric" :anon :subid("21_1316046719.21023") :outer("11_1316046719.21023")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 68
    .lex "self", param_1047
    find_lex $P100, "self"
    nqp_decontainerize $P101, $P100
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!parametric"
    unless_null $P103, vivify_215
    new $P103, "Undef"
  vivify_215:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1049"  :subid("22_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P1053 = "23_1316046719.21023" 
    capture_lex $P1053
    .lex "$?PACKAGE", $P1051
    .lex "$?CLASS", $P1052
.annotate 'line', 73
    .const 'Sub' $P1053 = "23_1316046719.21023" 
    newclosure $P1148, $P1053
.annotate 'line', 72
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("23_1316046719.21023") :outer("22_1316046719.21023")
    .param pmc param_1056
    .param pmc param_1057
    .param pmc param_1058
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 73
    .const 'Sub' $P1123 = "29_1316046719.21023" 
    capture_lex $P1123
    .const 'Sub' $P1108 = "28_1316046719.21023" 
    capture_lex $P1108
    .const 'Sub' $P1102 = "27_1316046719.21023" 
    capture_lex $P1102
    .const 'Sub' $P1070 = "24_1316046719.21023" 
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
    unless_null $P1067, vivify_216
    $P1067 = root_new ['parrot';'Hash']
  vivify_216:
.annotate 'line', 76
    find_lex $P1068, "@roles"
    unless_null $P1068, vivify_217
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    defined $I100, $P1068
    unless $I100, for_undef_218
    iter $P100, $P1068
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1098_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1098_test:
    unless $P100, loop1098_done
    shift $P101, $P100
  loop1098_redo:
    .const 'Sub' $P1070 = "24_1316046719.21023" 
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
  for_undef_218:
.annotate 'line', 73
    find_lex $P1099, "%target_meth_info"
    unless_null $P1099, vivify_242
    $P1099 = root_new ['parrot';'Hash']
  vivify_242:
.annotate 'line', 102
    find_lex $P100, "$target"
    unless_null $P100, vivify_243
    new $P100, "Undef"
  vivify_243:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_244
    new $P102, "Undef"
  vivify_244:
    $P103 = $P101."methods"($P102)
    store_lex "@target_meths", $P103
.annotate 'line', 103
    find_lex $P1100, "@target_meths"
    unless_null $P1100, vivify_245
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_245:
    defined $I100, $P1100
    unless $I100, for_undef_246
    iter $P100, $P1100
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1105_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1105_test:
    unless $P100, loop1105_done
    shift $P101, $P100
  loop1105_redo:
    .const 'Sub' $P1102 = "27_1316046719.21023" 
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
  for_undef_246:
.annotate 'line', 108
    find_lex $P1106, "%meth_info"
    unless_null $P1106, vivify_250
    $P1106 = root_new ['parrot';'Hash']
  vivify_250:
    defined $I100, $P1106
    unless $I100, for_undef_251
    iter $P100, $P1106
    new $P104, 'ExceptionHandler'
    set_label $P104, loop1119_handler
    $P104."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P104
  loop1119_test:
    unless $P100, loop1119_done
    shift $P101, $P100
  loop1119_redo:
    .const 'Sub' $P1108 = "28_1316046719.21023" 
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
  for_undef_251:
.annotate 'line', 73
    find_lex $P1120, "@all_roles"
    unless_null $P1120, vivify_268
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
.annotate 'line', 128
    find_lex $P1121, "@roles"
    unless_null $P1121, vivify_269
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_269:
    defined $I100, $P1121
    unless $I100, for_undef_270
    iter $P100, $P1121
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1146_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1146_test:
    unless $P100, loop1146_done
    shift $P101, $P100
  loop1146_redo:
    .const 'Sub' $P1123 = "29_1316046719.21023" 
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
  for_undef_270:
.annotate 'line', 157
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    find_lex $P1147, "@all_roles"
    unless_null $P1147, vivify_292
    $P1147 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
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
.sub "_block1069"  :anon :subid("24_1316046719.21023") :outer("23_1316046719.21023")
    .param pmc param_1073
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 76
    .const 'Sub' $P1076 = "25_1316046719.21023" 
    capture_lex $P1076
.annotate 'line', 77
    $P1072 = root_new ['parrot';'ResizablePMCArray']
    set $P1071, $P1072
    .lex "@methods", $P1071
    .lex "$_", param_1073
    find_lex $P102, "$_"
    unless_null $P102, vivify_219
    new $P102, "Undef"
  vivify_219:
    get_how $P103, $P102
    find_lex $P104, "$_"
    unless_null $P104, vivify_220
    new $P104, "Undef"
  vivify_220:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 78
    find_lex $P1074, "@methods"
    unless_null $P1074, vivify_221
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    defined $I101, $P1074
    unless $I101, for_undef_222
    iter $P102, $P1074
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1097_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1097_test:
    unless $P102, loop1097_done
    shift $P103, $P102
  loop1097_redo:
    .const 'Sub' $P1076 = "25_1316046719.21023" 
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
  for_undef_222:
.annotate 'line', 76
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1075"  :anon :subid("25_1316046719.21023") :outer("24_1316046719.21023")
    .param pmc param_1082
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 78
    .const 'Sub' $P1091 = "26_1316046719.21023" 
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
    unless_null $P107, vivify_223
    new $P107, "Undef"
  vivify_223:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$name", $P108
.annotate 'line', 80
    find_lex $P107, "$_"
    unless_null $P107, vivify_224
    new $P107, "Undef"
  vivify_224:
    store_lex "$meth", $P107
.annotate 'line', 78
    find_lex $P1083, "@meth_list"
    unless_null $P1083, vivify_225
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
.annotate 'line', 82
    find_lex $P107, "$name"
    unless_null $P107, vivify_226
    new $P107, "Undef"
  vivify_226:
    find_lex $P1085, "%meth_info"
    unless_null $P1085, vivify_227
    $P1085 = root_new ['parrot';'Hash']
  vivify_227:
    set $P108, $P1085[$P107]
    unless_null $P108, vivify_228
    new $P108, "Undef"
  vivify_228:
    defined $I102, $P108
    if $I102, if_1084
.annotate 'line', 86
    find_lex $P1087, "@meth_list"
    unless_null $P1087, vivify_229
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    find_lex $P109, "$name"
    unless_null $P109, vivify_230
    new $P109, "Undef"
  vivify_230:
    find_lex $P1088, "%meth_info"
    unless_null $P1088, vivify_231
    $P1088 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P1088
  vivify_231:
    set $P1088[$P109], $P1087
.annotate 'line', 85
    goto if_1084_end
  if_1084:
.annotate 'line', 83
    find_lex $P109, "$name"
    unless_null $P109, vivify_232
    new $P109, "Undef"
  vivify_232:
    find_lex $P1086, "%meth_info"
    unless_null $P1086, vivify_233
    $P1086 = root_new ['parrot';'Hash']
  vivify_233:
    set $P110, $P1086[$P109]
    unless_null $P110, vivify_234
    new $P110, "Undef"
  vivify_234:
    store_lex "@meth_list", $P110
  if_1084_end:
.annotate 'line', 88
    new $P107, "Float"
    assign $P107, 0
    store_lex "$found", $P107
.annotate 'line', 89
    find_lex $P1089, "@meth_list"
    unless_null $P1089, vivify_235
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    defined $I102, $P1089
    unless $I102, for_undef_236
    iter $P107, $P1089
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1094_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1094_test:
    unless $P107, loop1094_done
    shift $P108, $P107
  loop1094_redo:
    .const 'Sub' $P1091 = "26_1316046719.21023" 
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
  for_undef_236:
.annotate 'line', 94
    find_lex $P108, "$found"
    unless_null $P108, vivify_239
    new $P108, "Undef"
  vivify_239:
    unless $P108, unless_1095
    set $P107, $P108
    goto unless_1095_end
  unless_1095:
.annotate 'line', 95
    find_lex $P1096, "@meth_list"
    unless_null $P1096, vivify_240
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    find_lex $P109, "$meth"
    unless_null $P109, vivify_241
    new $P109, "Undef"
  vivify_241:
    $P110 = $P1096."push"($P109)
.annotate 'line', 94
    set $P107, $P110
  unless_1095_end:
.annotate 'line', 78
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1090"  :anon :subid("26_1316046719.21023") :outer("25_1316046719.21023")
    .param pmc param_1092
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 89
    .lex "$_", param_1092
.annotate 'line', 90
    find_lex $P110, "$meth"
    unless_null $P110, vivify_237
    new $P110, "Undef"
  vivify_237:
    find_lex $P111, "$_"
    unless_null $P111, vivify_238
    new $P111, "Undef"
  vivify_238:
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
.sub "_block1101"  :anon :subid("27_1316046719.21023") :outer("23_1316046719.21023")
    .param pmc param_1103
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 103
    .lex "$_", param_1103
.annotate 'line', 104
    find_lex $P102, "$_"
    unless_null $P102, vivify_247
    new $P102, "Undef"
  vivify_247:
    find_lex $P103, "$_"
    unless_null $P103, vivify_248
    new $P103, "Undef"
  vivify_248:
    set $S100, $P103
    find_lex $P1104, "%target_meth_info"
    unless_null $P1104, vivify_249
    $P1104 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P1104
  vivify_249:
    set $P1104[$S100], $P102
.annotate 'line', 103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1107"  :anon :subid("28_1316046719.21023") :outer("23_1316046719.21023")
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
    unless_null $P103, vivify_252
    new $P103, "Undef"
  vivify_252:
    set $S100, $P103
    new $P104, 'String'
    set $P104, $S100
    store_lex "$name", $P104
.annotate 'line', 110
    find_lex $P103, "$name"
    unless_null $P103, vivify_253
    new $P103, "Undef"
  vivify_253:
    find_lex $P1113, "%meth_info"
    unless_null $P1113, vivify_254
    $P1113 = root_new ['parrot';'Hash']
  vivify_254:
    set $P104, $P1113[$P103]
    unless_null $P104, vivify_255
    new $P104, "Undef"
  vivify_255:
    store_lex "@add_meths", $P104
.annotate 'line', 114
    find_lex $P104, "$name"
    unless_null $P104, vivify_256
    new $P104, "Undef"
  vivify_256:
    find_lex $P1115, "%target_meth_info"
    unless_null $P1115, vivify_257
    $P1115 = root_new ['parrot';'Hash']
  vivify_257:
    set $P105, $P1115[$P104]
    unless_null $P105, vivify_258
    new $P105, "Undef"
  vivify_258:
    defined $I101, $P105
    unless $I101, unless_1114
    new $P103, 'Integer'
    set $P103, $I101
    goto unless_1114_end
  unless_1114:
.annotate 'line', 116
    find_lex $P1117, "@add_meths"
    unless_null $P1117, vivify_259
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_259:
    set $N100, $P1117
    set $N101, 1
    iseq $I102, $N100, $N101
    if $I102, if_1116
.annotate 'line', 121
    find_lex $P107, "$target"
    unless_null $P107, vivify_260
    new $P107, "Undef"
  vivify_260:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_261
    new $P109, "Undef"
  vivify_261:
    find_lex $P110, "$name"
    unless_null $P110, vivify_262
    new $P110, "Undef"
  vivify_262:
    $P111 = $P108."add_collision"($P109, $P110)
.annotate 'line', 119
    set $P106, $P111
.annotate 'line', 116
    goto if_1116_end
  if_1116:
.annotate 'line', 117
    find_lex $P107, "$target"
    unless_null $P107, vivify_263
    new $P107, "Undef"
  vivify_263:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_264
    new $P109, "Undef"
  vivify_264:
    find_lex $P110, "$name"
    unless_null $P110, vivify_265
    new $P110, "Undef"
  vivify_265:
    new $P111, "Float"
    assign $P111, 0
    set $I103, $P111
    find_lex $P1118, "@add_meths"
    unless_null $P1118, vivify_266
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_266:
    set $P112, $P1118[$I103]
    unless_null $P112, vivify_267
    new $P112, "Undef"
  vivify_267:
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
.sub "_block1122"  :anon :subid("29_1316046719.21023") :outer("23_1316046719.21023")
    .param pmc param_1127
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 128
    .const 'Sub' $P1130 = "30_1316046719.21023" 
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
    unless_null $P103, vivify_271
    new $P103, "Undef"
  vivify_271:
    get_how $P104, $P103
    store_lex "$how", $P104
.annotate 'line', 132
    find_lex $P103, "$how"
    unless_null $P103, vivify_272
    new $P103, "Undef"
  vivify_272:
    find_lex $P104, "$_"
    unless_null $P104, vivify_273
    new $P104, "Undef"
  vivify_273:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 133
    find_lex $P1128, "@attributes"
    unless_null $P1128, vivify_274
    $P1128 = root_new ['parrot';'ResizablePMCArray']
  vivify_274:
    defined $I101, $P1128
    unless $I101, for_undef_275
    iter $P103, $P1128
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1144_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1144_test:
    unless $P103, loop1144_done
    shift $P104, $P103
  loop1144_redo:
    .const 'Sub' $P1130 = "30_1316046719.21023" 
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
  for_undef_275:
.annotate 'line', 154
    find_lex $P1145, "@all_roles"
    unless_null $P1145, vivify_290
    $P1145 = root_new ['parrot';'ResizablePMCArray']
  vivify_290:
    find_lex $P103, "$_"
    unless_null $P103, vivify_291
    new $P103, "Undef"
  vivify_291:
    $P104 = $P1145."push"($P103)
.annotate 'line', 128
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("30_1316046719.21023") :outer("29_1316046719.21023")
    .param pmc param_1135
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 133
    .const 'Sub' $P1138 = "31_1316046719.21023" 
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
    unless_null $P107, vivify_276
    new $P107, "Undef"
  vivify_276:
    store_lex "$add_attr", $P107
.annotate 'line', 135
    new $P107, "Float"
    assign $P107, 0
    store_lex "$skip", $P107
.annotate 'line', 136
    find_lex $P107, "$target"
    unless_null $P107, vivify_277
    new $P107, "Undef"
  vivify_277:
    get_how $P108, $P107
    find_lex $P109, "$target"
    unless_null $P109, vivify_278
    new $P109, "Undef"
  vivify_278:
    $P110 = $P108."attributes"($P109)
    store_lex "@cur_attrs", $P110
.annotate 'line', 137
    find_lex $P1136, "@cur_attrs"
    unless_null $P1136, vivify_279
    $P1136 = root_new ['parrot';'ResizablePMCArray']
  vivify_279:
    defined $I102, $P1136
    unless $I102, for_undef_280
    iter $P107, $P1136
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1142_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1142_test:
    unless $P107, loop1142_done
    shift $P108, $P107
  loop1142_redo:
    .const 'Sub' $P1138 = "31_1316046719.21023" 
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
  for_undef_280:
.annotate 'line', 147
    find_lex $P108, "$skip"
    unless_null $P108, vivify_286
    new $P108, "Undef"
  vivify_286:
    unless $P108, unless_1143
    set $P107, $P108
    goto unless_1143_end
  unless_1143:
.annotate 'line', 148
    find_lex $P109, "$target"
    unless_null $P109, vivify_287
    new $P109, "Undef"
  vivify_287:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_288
    new $P111, "Undef"
  vivify_288:
    find_lex $P112, "$add_attr"
    unless_null $P112, vivify_289
    new $P112, "Undef"
  vivify_289:
    $P113 = $P110."add_attribute"($P111, $P112)
.annotate 'line', 147
    set $P107, $P113
  unless_1143_end:
.annotate 'line', 133
    .return ($P107)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block1137"  :anon :subid("31_1316046719.21023") :outer("30_1316046719.21023")
    .param pmc param_1139
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 137
    .lex "$_", param_1139
.annotate 'line', 138
    find_lex $P110, "$_"
    unless_null $P110, vivify_281
    new $P110, "Undef"
  vivify_281:
    find_lex $P111, "$add_attr"
    unless_null $P111, vivify_282
    new $P111, "Undef"
  vivify_282:
    issame $I103, $P110, $P111
    if $I103, if_1140
.annotate 'line', 142
    find_lex $P114, "$_"
    unless_null $P114, vivify_283
    new $P114, "Undef"
  vivify_283:
    $S100 = $P114."name"()
    find_lex $P115, "$add_attr"
    unless_null $P115, vivify_284
    new $P115, "Undef"
  vivify_284:
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
    unless_null $P117, vivify_285
    new $P117, "Undef"
  vivify_285:
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
.sub "_block1149"  :subid("32_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P1277 = "54_1316046719.21023" 
    capture_lex $P1277
    .const 'Sub' $P1273 = "53_1316046719.21023" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "52_1316046719.21023" 
    capture_lex $P1269
    .const 'Sub' $P1255 = "50_1316046719.21023" 
    capture_lex $P1255
    .const 'Sub' $P1252 = "49_1316046719.21023" 
    capture_lex $P1252
    .const 'Sub' $P1248 = "48_1316046719.21023" 
    capture_lex $P1248
    .const 'Sub' $P1244 = "47_1316046719.21023" 
    capture_lex $P1244
    .const 'Sub' $P1230 = "45_1316046719.21023" 
    capture_lex $P1230
    .const 'Sub' $P1215 = "43_1316046719.21023" 
    capture_lex $P1215
    .const 'Sub' $P1209 = "42_1316046719.21023" 
    capture_lex $P1209
    .const 'Sub' $P1203 = "41_1316046719.21023" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "40_1316046719.21023" 
    capture_lex $P1199
    .const 'Sub' $P1191 = "39_1316046719.21023" 
    capture_lex $P1191
    .const 'Sub' $P1178 = "38_1316046719.21023" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "37_1316046719.21023" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "36_1316046719.21023" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "35_1316046719.21023" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "34_1316046719.21023" 
    capture_lex $P1156
    .const 'Sub' $P1154 = "33_1316046719.21023" 
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
    .const 'Sub' $P1277 = "54_1316046719.21023" 
    newclosure $P1280, $P1277
.annotate 'line', 164
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "archetypes" :anon :subid("33_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1155
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 191
    .lex "self", param_1155
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_293
    new $P101, "Undef"
  vivify_293:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("34_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P102, vivify_294
    new $P102, "Undef"
  vivify_294:
    find_lex $P103, "$name"
    unless_null $P103, vivify_295
    new $P103, "Undef"
  vivify_295:
    find_lex $P104, "$instance_of"
    unless_null $P104, vivify_296
    new $P104, "Undef"
  vivify_296:
    $P102."BUILD"($P103 :named("name"), $P104 :named("instance_of"))
.annotate 'line', 200
    find_lex $P102, "$obj"
    unless_null $P102, vivify_297
    new $P102, "Undef"
  vivify_297:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("35_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P101, vivify_298
    new $P101, "Undef"
  vivify_298:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!name", $P101
.annotate 'line', 208
    find_lex $P101, "$instance_of"
    unless_null $P101, vivify_299
    new $P101, "Undef"
  vivify_299:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!instance_of", $P101
.annotate 'line', 206
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("36_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1166
    .param pmc param_1168 :named("instance_of")
    .param pmc param_1167 :optional :named("name")
    .param int has_param_1167 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 213
    .lex "self", param_1166
    if has_param_1167, optparam_300
    new $P101, "String"
    assign $P101, "<anon>"
    set param_1167, $P101
  optparam_300:
    .lex "$name", param_1167
    .lex "$instance_of", param_1168
.annotate 'line', 214
    new $P102, "Undef"
    set $P1169, $P102
    .lex "$metarole", $P1169
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_301
    new $P104, "Undef"
  vivify_301:
    find_lex $P105, "$instance_of"
    unless_null $P105, vivify_302
    new $P105, "Undef"
  vivify_302:
    $P106 = $P103."new"($P104 :named("name"), $P105 :named("instance_of"))
    store_lex "$metarole", $P106
.annotate 'line', 215
    find_lex $P103, "$metarole"
    unless_null $P103, vivify_303
    new $P103, "Undef"
  vivify_303:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
.annotate 'line', 213
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("37_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P101, vivify_304
    new $P101, "Undef"
  vivify_304:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1176, $P103, $P104, "%!methods"
    unless_null $P1176, vivify_305
    $P1176 = root_new ['parrot';'Hash']
  vivify_305:
    set $P105, $P1176[$P101]
    unless_null $P105, vivify_306
    new $P105, "Undef"
  vivify_306:
    unless $P105, if_1175_end
.annotate 'line', 220
    new $P106, "String"
    assign $P106, "This role already has a method named "
    find_lex $P107, "$name"
    unless_null $P107, vivify_307
    new $P107, "Undef"
  vivify_307:
    concat $P108, $P106, $P107
    die $P108
  if_1175_end:
.annotate 'line', 222
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_308
    new $P101, "Undef"
  vivify_308:
    find_lex $P102, "$name"
    unless_null $P102, vivify_309
    new $P102, "Undef"
  vivify_309:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1177, $P104, $P105, "%!methods"
    unless_null $P1177, vivify_310
    $P1177 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!methods", $P1177
  vivify_310:
    set $P1177[$P102], $P101
.annotate 'line', 218
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("38_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P1185, vivify_311
    $P1185 = root_new ['parrot';'Hash']
  vivify_311:
.annotate 'line', 227
    find_lex $P101, "$name"
    unless_null $P101, vivify_312
    new $P101, "Undef"
  vivify_312:
    find_lex $P1186, "%todo"
    unless_null $P1186, vivify_313
    $P1186 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1186
  vivify_313:
    set $P1186["name"], $P101
.annotate 'line', 228
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_314
    new $P101, "Undef"
  vivify_314:
    find_lex $P1187, "%todo"
    unless_null $P1187, vivify_315
    $P1187 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1187
  vivify_315:
    set $P1187["code"], $P101
.annotate 'line', 229
    find_lex $P1188, "%todo"
    unless_null $P1188, vivify_316
    $P1188 = root_new ['parrot';'Hash']
  vivify_316:
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1189, $P102, $P103, "@!multi_methods_to_incorporate"
    unless_null $P1189, vivify_317
    $P1189 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N100, $P1189
    set $I100, $N100
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1190, $P105, $P106, "@!multi_methods_to_incorporate"
    unless_null $P1190, vivify_318
    $P1190 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "@!multi_methods_to_incorporate", $P1190
  vivify_318:
    set $P1190[$I100], $P1188
.annotate 'line', 225
    find_lex $P101, "$code_obj"
    unless_null $P101, vivify_319
    new $P101, "Undef"
  vivify_319:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("39_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P102, vivify_320
    new $P102, "Undef"
  vivify_320:
    $P103 = $P102."name"()
    store_lex "$name", $P103
.annotate 'line', 235
    find_lex $P102, "$name"
    unless_null $P102, vivify_321
    new $P102, "Undef"
  vivify_321:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1197, $P104, $P105, "%!attributes"
    unless_null $P1197, vivify_322
    $P1197 = root_new ['parrot';'Hash']
  vivify_322:
    set $P106, $P1197[$P102]
    unless_null $P106, vivify_323
    new $P106, "Undef"
  vivify_323:
    unless $P106, if_1196_end
.annotate 'line', 236
    new $P107, "String"
    assign $P107, "This role already has an attribute named "
    find_lex $P108, "$name"
    unless_null $P108, vivify_324
    new $P108, "Undef"
  vivify_324:
    concat $P109, $P107, $P108
    die $P109
  if_1196_end:
.annotate 'line', 238
    find_lex $P102, "$meta_attr"
    unless_null $P102, vivify_325
    new $P102, "Undef"
  vivify_325:
    find_lex $P103, "$name"
    unless_null $P103, vivify_326
    new $P103, "Undef"
  vivify_326:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1198, $P105, $P106, "%!attributes"
    unless_null $P1198, vivify_327
    $P1198 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!attributes", $P1198
  vivify_327:
    set $P1198[$P103], $P102
.annotate 'line', 233
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("40_1316046719.21023") :outer("32_1316046719.21023")
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
.sub "add_role" :anon :subid("41_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P101, vivify_328
    new $P101, "Undef"
  vivify_328:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1207, $P103, $P104, "@!roles"
    unless_null $P1207, vivify_329
    $P1207 = root_new ['parrot';'ResizablePMCArray']
  vivify_329:
    set $N100, $P1207
    set $I100, $N100
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1208, $P106, $P107, "@!roles"
    unless_null $P1208, vivify_330
    $P1208 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P106, $P107, "@!roles", $P1208
  vivify_330:
    set $P1208[$I100], $P101
.annotate 'line', 245
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("42_1316046719.21023") :outer("32_1316046719.21023")
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
    unless_null $P101, vivify_331
    new $P101, "Undef"
  vivify_331:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1213, $P103, $P104, "@!collisions"
    unless_null $P1213, vivify_332
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    set $N100, $P1213
    set $I100, $N100
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1214, $P106, $P107, "@!collisions"
    unless_null $P1214, vivify_333
    $P1214 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P106, $P107, "@!collisions", $P1214
  vivify_333:
    set $P1214[$I100], $P101
.annotate 'line', 249
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("43_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 254
    .const 'Sub' $P1222 = "44_1316046719.21023" 
    capture_lex $P1222
    .lex "self", param_1216
    .lex "$obj", param_1217
.annotate 'line', 257
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1219, $P102, $P103, "@!roles"
    unless_null $P1219, vivify_334
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    unless $P1219, if_1218_end
.annotate 'line', 258
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1220, $P106, $P107, "@!roles"
    unless_null $P1220, vivify_335
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    defined $I100, $P1220
    unless $I100, for_undef_336
    iter $P104, $P1220
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1228_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1228_test:
    unless $P104, loop1228_done
    shift $P108, $P104
  loop1228_redo:
    .const 'Sub' $P1222 = "44_1316046719.21023" 
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
  for_undef_336:
.annotate 'line', 262
    find_lex $P104, "RoleToRoleApplier"
    find_lex $P105, "$obj"
    unless_null $P105, vivify_344
    new $P105, "Undef"
  vivify_344:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1229, $P107, $P108, "@!roles"
    unless_null $P1229, vivify_345
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    $P104."apply"($P105, $P1229)
  if_1218_end:
.annotate 'line', 266
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!composed", $P101
.annotate 'line', 254
    find_lex $P101, "$obj"
    unless_null $P101, vivify_346
    new $P101, "Undef"
  vivify_346:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1221"  :anon :subid("44_1316046719.21023") :outer("43_1316046719.21023")
    .param pmc param_1223
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 258
    .lex "$_", param_1223
.annotate 'line', 259
    find_lex $P109, "$_"
    unless_null $P109, vivify_337
    new $P109, "Undef"
  vivify_337:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1224, $P111, $P112, "@!role_typecheck_list"
    unless_null $P1224, vivify_338
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $N100, $P1224
    set $I101, $N100
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P1225, $P114, $P115, "@!role_typecheck_list"
    unless_null $P1225, vivify_339
    $P1225 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P114, $P115, "@!role_typecheck_list", $P1225
  vivify_339:
    set $P1225[$I101], $P109
.annotate 'line', 260
    find_lex $P109, "$_"
    unless_null $P109, vivify_340
    new $P109, "Undef"
  vivify_340:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_341
    new $P111, "Undef"
  vivify_341:
    $P112 = $P110."instance_of"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P1226, $P114, $P115, "@!role_typecheck_list"
    unless_null $P1226, vivify_342
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    set $N100, $P1226
    set $I101, $N100
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P1227, $P117, $P118, "@!role_typecheck_list"
    unless_null $P1227, vivify_343
    $P1227 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P117, $P118, "@!role_typecheck_list", $P1227
  vivify_343:
    set $P1227[$I101], $P112
.annotate 'line', 258
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("45_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1231
    .param pmc param_1232
    .param pmc param_1233 :optional :named("local")
    .param int has_param_1233 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 275
    .const 'Sub' $P1239 = "46_1316046719.21023" 
    capture_lex $P1239
    .lex "self", param_1231
    .lex "$obj", param_1232
    if has_param_1233, optparam_347
    new $P101, "Undef"
    set param_1233, $P101
  optparam_347:
    .lex "$local", param_1233
.annotate 'line', 276
    $P1235 = root_new ['parrot';'ResizablePMCArray']
    set $P1234, $P1235
    .lex "@meths", $P1234
.annotate 'line', 275
    find_lex $P1236, "@meths"
    unless_null $P1236, vivify_348
    $P1236 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
.annotate 'line', 277
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1237, $P104, $P105, "%!methods"
    unless_null $P1237, vivify_349
    $P1237 = root_new ['parrot';'Hash']
  vivify_349:
    defined $I100, $P1237
    unless $I100, for_undef_350
    iter $P102, $P1237
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1242_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1242_test:
    unless $P102, loop1242_done
    shift $P106, $P102
  loop1242_redo:
    .const 'Sub' $P1239 = "46_1316046719.21023" 
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
  for_undef_350:
.annotate 'line', 275
    find_lex $P1243, "@meths"
    unless_null $P1243, vivify_353
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1238"  :anon :subid("46_1316046719.21023") :outer("45_1316046719.21023")
    .param pmc param_1240
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 277
    .lex "$_", param_1240
.annotate 'line', 278
    find_lex $P1241, "@meths"
    unless_null $P1241, vivify_351
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    find_lex $P107, "$_"
    unless_null $P107, vivify_352
    new $P107, "Undef"
  vivify_352:
    $P108 = $P107."value"()
    $P109 = $P1241."push"($P108)
.annotate 'line', 277
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("47_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 283
    .lex "self", param_1245
    .lex "$obj", param_1246
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1247, $P102, $P103, "%!methods"
    unless_null $P1247, vivify_354
    $P1247 = root_new ['parrot';'Hash']
  vivify_354:
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("48_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 287
    .lex "self", param_1249
    .lex "$obj", param_1250
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1251, $P102, $P103, "@!collisions"
    unless_null $P1251, vivify_355
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("49_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 291
    .lex "self", param_1253
    .lex "$obj", param_1254
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_356
    new $P104, "Undef"
  vivify_356:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("50_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258 :optional :named("local")
    .param int has_param_1258 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 295
    .const 'Sub' $P1264 = "51_1316046719.21023" 
    capture_lex $P1264
    .lex "self", param_1256
    .lex "$obj", param_1257
    if has_param_1258, optparam_357
    new $P101, "Undef"
    set param_1258, $P101
  optparam_357:
    .lex "$local", param_1258
.annotate 'line', 296
    $P1260 = root_new ['parrot';'ResizablePMCArray']
    set $P1259, $P1260
    .lex "@attrs", $P1259
.annotate 'line', 295
    find_lex $P1261, "@attrs"
    unless_null $P1261, vivify_358
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
.annotate 'line', 297
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1262, $P104, $P105, "%!attributes"
    unless_null $P1262, vivify_359
    $P1262 = root_new ['parrot';'Hash']
  vivify_359:
    defined $I100, $P1262
    unless $I100, for_undef_360
    iter $P102, $P1262
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1267_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1267_test:
    unless $P102, loop1267_done
    shift $P106, $P102
  loop1267_redo:
    .const 'Sub' $P1264 = "51_1316046719.21023" 
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
  for_undef_360:
.annotate 'line', 295
    find_lex $P1268, "@attrs"
    unless_null $P1268, vivify_363
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1263"  :anon :subid("51_1316046719.21023") :outer("50_1316046719.21023")
    .param pmc param_1265
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 297
    .lex "$_", param_1265
.annotate 'line', 298
    find_lex $P1266, "@attrs"
    unless_null $P1266, vivify_361
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    find_lex $P107, "$_"
    unless_null $P107, vivify_362
    new $P107, "Undef"
  vivify_362:
    $P108 = $P107."value"()
    $P109 = $P1266."push"($P108)
.annotate 'line', 297
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("52_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 303
    .lex "self", param_1270
    .lex "$obj", param_1271
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1272, $P102, $P103, "@!roles"
    unless_null $P1272, vivify_364
    $P1272 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "role_typecheck_list" :anon :subid("53_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 307
    .lex "self", param_1274
    .lex "$obj", param_1275
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P1276, $P102, $P103, "@!role_typecheck_list"
    unless_null $P1276, vivify_365
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    .return ($P1276)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("54_1316046719.21023") :outer("32_1316046719.21023")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 311
    .lex "self", param_1278
    .lex "$obj", param_1279
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!instance_of"
    unless_null $P104, vivify_366
    new $P104, "Undef"
  vivify_366:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1281"  :subid("55_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 317
    .const 'Sub' $P1309 = "59_1316046719.21023" 
    capture_lex $P1309
    .const 'Sub' $P1293 = "57_1316046719.21023" 
    capture_lex $P1293
    .const 'Sub' $P1284 = "56_1316046719.21023" 
    capture_lex $P1284
.annotate 'line', 319
    .const 'Sub' $P1284 = "56_1316046719.21023" 
    newclosure $P1291, $P1284
    set $P1283, $P1291
    .lex "has_method", $P1283
.annotate 'line', 324
    .const 'Sub' $P1293 = "57_1316046719.21023" 
    newclosure $P1306, $P1293
    set $P1292, $P1306
    .lex "has_attribute", $P1292
.annotate 'line', 317
    .lex "$?PACKAGE", $P1307
    .lex "$?CLASS", $P1308
    find_lex $P101, "has_method"
    find_lex $P101, "has_attribute"
.annotate 'line', 332
    .const 'Sub' $P1309 = "59_1316046719.21023" 
    newclosure $P1351, $P1309
.annotate 'line', 317
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "has_method"  :subid("56_1316046719.21023") :outer("55_1316046719.21023")
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
    unless_null $P100, vivify_367
    new $P100, "Undef"
  vivify_367:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_368
    new $P102, "Undef"
  vivify_368:
    $P103 = $P101."method_table"($P102)
    store_lex "%mt", $P103
.annotate 'line', 321
    find_lex $P100, "$name"
    unless_null $P100, vivify_369
    new $P100, "Undef"
  vivify_369:
    find_lex $P1290, "%mt"
    unless_null $P1290, vivify_370
    $P1290 = root_new ['parrot';'Hash']
  vivify_370:
    exists $I100, $P1290[$P100]
.annotate 'line', 319
    .return ($I100)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("57_1316046719.21023") :outer("55_1316046719.21023")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P1302 = "58_1316046719.21023" 
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
    unless_null $P100, vivify_371
    new $P100, "Undef"
  vivify_371:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_372
    new $P102, "Undef"
  vivify_372:
    $P103 = $P101."attributes"($P102, 1 :named("local"))
    store_lex "@attributes", $P103
.annotate 'line', 326
    find_lex $P1300, "@attributes"
    unless_null $P1300, vivify_373
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    defined $I101, $P1300
    unless $I101, for_undef_374
    iter $P100, $P1300
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1305_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1305_test:
    unless $P100, loop1305_done
    shift $P101, $P100
  loop1305_redo:
    .const 'Sub' $P1302 = "58_1316046719.21023" 
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
  for_undef_374:
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
.sub "_block1301"  :anon :subid("58_1316046719.21023") :outer("57_1316046719.21023")
    .param pmc param_1303
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 326
    .lex "$_", param_1303
.annotate 'line', 327
    find_lex $P103, "$_"
    unless_null $P103, vivify_375
    new $P103, "Undef"
  vivify_375:
    $S100 = $P103."name"()
    find_lex $P104, "$name"
    unless_null $P104, vivify_376
    new $P104, "Undef"
  vivify_376:
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
.sub "apply" :anon :subid("59_1316046719.21023") :outer("55_1316046719.21023")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 332
    .const 'Sub' $P1345 = "63_1316046719.21023" 
    capture_lex $P1345
    .const 'Sub' $P1339 = "62_1316046719.21023" 
    capture_lex $P1339
    .const 'Sub' $P1333 = "61_1316046719.21023" 
    capture_lex $P1333
    .const 'Sub' $P1328 = "60_1316046719.21023" 
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
    unless_null $P103, vivify_377
    new $P103, "Undef"
  vivify_377:
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_378
    new $P103, "Undef"
  vivify_378:
.annotate 'line', 337
    find_lex $P1324, "@roles"
    unless_null $P1324, vivify_379
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
    set $N100, $P1324
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, if_1323
.annotate 'line', 342
    find_lex $P103, "NQPConcreteRoleHOW"
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P108, $P105["NQPMu"]
    unless_null $P108, vivify_380
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["NQPMu"]
  vivify_380:
    $P109 = $P103."new_type"($P108 :named("instance_of"))
    store_lex "$to_compose", $P109
.annotate 'line', 343
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_381
    new $P103, "Undef"
  vivify_381:
    get_how $P104, $P103
    store_lex "$to_compose_meta", $P104
.annotate 'line', 344
    find_lex $P1326, "@roles"
    unless_null $P1326, vivify_382
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_382:
    defined $I102, $P1326
    unless $I102, for_undef_383
    iter $P103, $P1326
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1330_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1330_test:
    unless $P103, loop1330_done
    shift $P104, $P103
  loop1330_redo:
    .const 'Sub' $P1328 = "60_1316046719.21023" 
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
  for_undef_383:
.annotate 'line', 347
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_387
    new $P103, "Undef"
  vivify_387:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_388
    new $P104, "Undef"
  vivify_388:
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
    unless_null $P1325, vivify_389
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_389:
    set $P104, $P1325[$I102]
    unless_null $P104, vivify_390
    new $P104, "Undef"
  vivify_390:
    store_lex "$to_compose", $P104
.annotate 'line', 339
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_391
    new $P103, "Undef"
  vivify_391:
    get_how $P104, $P103
    store_lex "$to_compose_meta", $P104
  if_1323_end:
.annotate 'line', 351
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_392
    new $P103, "Undef"
  vivify_392:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_393
    new $P104, "Undef"
  vivify_393:
    $P105 = $P103."collisions"($P104)
    store_lex "@collisions", $P105
.annotate 'line', 352
    find_lex $P1331, "@collisions"
    unless_null $P1331, vivify_394
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_394:
    defined $I101, $P1331
    unless $I101, for_undef_395
    iter $P103, $P1331
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1336_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1336_test:
    unless $P103, loop1336_done
    shift $P104, $P103
  loop1336_redo:
    .const 'Sub' $P1333 = "61_1316046719.21023" 
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
  for_undef_395:
.annotate 'line', 360
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_401
    new $P103, "Undef"
  vivify_401:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_402
    new $P104, "Undef"
  vivify_402:
    $P105 = $P103."methods"($P104)
    store_lex "@methods", $P105
.annotate 'line', 361
    find_lex $P1337, "@methods"
    unless_null $P1337, vivify_403
    $P1337 = root_new ['parrot';'ResizablePMCArray']
  vivify_403:
    defined $I101, $P1337
    unless $I101, for_undef_404
    iter $P103, $P1337
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1342_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1342_test:
    unless $P103, loop1342_done
    shift $P104, $P103
  loop1342_redo:
    .const 'Sub' $P1339 = "62_1316046719.21023" 
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
  for_undef_404:
.annotate 'line', 368
    find_lex $P103, "$to_compose_meta"
    unless_null $P103, vivify_411
    new $P103, "Undef"
  vivify_411:
    find_lex $P104, "$to_compose"
    unless_null $P104, vivify_412
    new $P104, "Undef"
  vivify_412:
    $P105 = $P103."attributes"($P104)
    store_lex "@attributes", $P105
.annotate 'line', 369
    find_lex $P1343, "@attributes"
    unless_null $P1343, vivify_413
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_413:
    defined $I101, $P1343
    unless $I101, for_undef_414
    iter $P103, $P1343
    new $P105, 'ExceptionHandler'
    set_label $P105, loop1348_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop1348_test:
    unless $P103, loop1348_done
    shift $P104, $P103
  loop1348_redo:
    .const 'Sub' $P1345 = "63_1316046719.21023" 
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
  for_undef_414:
.annotate 'line', 332
    find_lex $P1349, "@done"
    unless_null $P1349, vivify_423
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_423:
.annotate 'line', 381
    find_lex $P103, "$to_compose"
    unless_null $P103, vivify_424
    new $P103, "Undef"
  vivify_424:
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    find_lex $P1350, "@done"
    unless_null $P1350, vivify_425
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P1350
  vivify_425:
    set $P1350[$I101], $P103
.annotate 'line', 332
    .return ($P103)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1327"  :anon :subid("60_1316046719.21023") :outer("59_1316046719.21023")
    .param pmc param_1329
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 344
    .lex "$_", param_1329
.annotate 'line', 345
    find_lex $P105, "$to_compose_meta"
    unless_null $P105, vivify_384
    new $P105, "Undef"
  vivify_384:
    find_lex $P106, "$to_compose"
    unless_null $P106, vivify_385
    new $P106, "Undef"
  vivify_385:
    find_lex $P107, "$_"
    unless_null $P107, vivify_386
    new $P107, "Undef"
  vivify_386:
    $P108 = $P105."add_role"($P106, $P107)
.annotate 'line', 344
    .return ($P108)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1332"  :anon :subid("61_1316046719.21023") :outer("59_1316046719.21023")
    .param pmc param_1334
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 352
    .lex "$_", param_1334
.annotate 'line', 353
    find_lex $P106, "$target"
    unless_null $P106, vivify_396
    new $P106, "Undef"
  vivify_396:
    find_lex $P107, "$_"
    unless_null $P107, vivify_397
    new $P107, "Undef"
  vivify_397:
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
    unless_null $P110, vivify_398
    new $P110, "Undef"
  vivify_398:
    concat $P111, $P109, $P110
    concat $P112, $P111, "' collides and a resolution must be provided by the class '"
.annotate 'line', 355
    find_lex $P113, "$target"
    unless_null $P113, vivify_399
    new $P113, "Undef"
  vivify_399:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_400
    new $P115, "Undef"
  vivify_400:
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
.sub "_block1338"  :anon :subid("62_1316046719.21023") :outer("59_1316046719.21023")
    .param pmc param_1340
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 361
    .lex "$_", param_1340
.annotate 'line', 362
    find_lex $P106, "$target"
    unless_null $P106, vivify_405
    new $P106, "Undef"
  vivify_405:
    find_lex $P107, "$_"
    unless_null $P107, vivify_406
    new $P107, "Undef"
  vivify_406:
    set $S100, $P107
    $P108 = "has_method"($P106, $S100, 0)
    unless $P108, unless_1341
    set $P105, $P108
    goto unless_1341_end
  unless_1341:
.annotate 'line', 363
    find_lex $P109, "$target"
    unless_null $P109, vivify_407
    new $P109, "Undef"
  vivify_407:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_408
    new $P111, "Undef"
  vivify_408:
    find_lex $P112, "$_"
    unless_null $P112, vivify_409
    new $P112, "Undef"
  vivify_409:
    set $S101, $P112
    find_lex $P113, "$_"
    unless_null $P113, vivify_410
    new $P113, "Undef"
  vivify_410:
    $P114 = $P110."add_method"($P111, $S101, $P113)
.annotate 'line', 362
    set $P105, $P114
  unless_1341_end:
.annotate 'line', 361
    .return ($P105)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block1344"  :anon :subid("63_1316046719.21023") :outer("59_1316046719.21023")
    .param pmc param_1346
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 369
    .lex "$_", param_1346
.annotate 'line', 370
    find_lex $P105, "$target"
    unless_null $P105, vivify_415
    new $P105, "Undef"
  vivify_415:
    find_lex $P106, "$_"
    unless_null $P106, vivify_416
    new $P106, "Undef"
  vivify_416:
    $P107 = $P106."name"()
    $P108 = "has_attribute"($P105, $P107)
    unless $P108, if_1347_end
.annotate 'line', 371
    new $P109, "String"
    assign $P109, "Attribute '"
    find_lex $P110, "$_"
    unless_null $P110, vivify_417
    new $P110, "Undef"
  vivify_417:
    $S100 = $P110."name"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "' already exists in the class '"
.annotate 'line', 372
    find_lex $P113, "$target"
    unless_null $P113, vivify_418
    new $P113, "Undef"
  vivify_418:
    get_how $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_419
    new $P115, "Undef"
  vivify_419:
    $S101 = $P114."name"($P115)
    concat $P116, $P112, $S101
.annotate 'line', 371
    concat $P117, $P116, "', but a role also wishes to compose it"
.annotate 'line', 372
    die $P117
  if_1347_end:
.annotate 'line', 374
    find_lex $P105, "$target"
    unless_null $P105, vivify_420
    new $P105, "Undef"
  vivify_420:
    get_how $P106, $P105
    find_lex $P107, "$target"
    unless_null $P107, vivify_421
    new $P107, "Undef"
  vivify_421:
    find_lex $P108, "$_"
    unless_null $P108, vivify_422
    new $P108, "Undef"
  vivify_422:
    $P109 = $P106."add_attribute"($P107, $P108)
.annotate 'line', 369
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1352"  :subid("64_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 390
    .const 'Sub' $P1491 = "89_1316046719.21023" 
    capture_lex $P1491
    .const 'Sub' $P1477 = "87_1316046719.21023" 
    capture_lex $P1477
    .const 'Sub' $P1474 = "86_1316046719.21023" 
    capture_lex $P1474
    .const 'Sub' $P1470 = "85_1316046719.21023" 
    capture_lex $P1470
    .const 'Sub' $P1456 = "83_1316046719.21023" 
    capture_lex $P1456
    .const 'Sub' $P1426 = "78_1316046719.21023" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "77_1316046719.21023" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "76_1316046719.21023" 
    capture_lex $P1420
    .const 'Sub' $P1414 = "75_1316046719.21023" 
    capture_lex $P1414
    .const 'Sub' $P1410 = "74_1316046719.21023" 
    capture_lex $P1410
    .const 'Sub' $P1402 = "73_1316046719.21023" 
    capture_lex $P1402
    .const 'Sub' $P1389 = "72_1316046719.21023" 
    capture_lex $P1389
    .const 'Sub' $P1381 = "71_1316046719.21023" 
    capture_lex $P1381
    .const 'Sub' $P1377 = "70_1316046719.21023" 
    capture_lex $P1377
    .const 'Sub' $P1372 = "69_1316046719.21023" 
    capture_lex $P1372
    .const 'Sub' $P1369 = "68_1316046719.21023" 
    capture_lex $P1369
    .const 'Sub' $P1365 = "67_1316046719.21023" 
    capture_lex $P1365
    .const 'Sub' $P1363 = "66_1316046719.21023" 
    capture_lex $P1363
    .const 'Sub' $P1356 = "65_1316046719.21023" 
    capture_lex $P1356
.annotate 'line', 414
    new $P100, "Undef"
    set $P1354, $P100
    .lex "$archetypes", $P1354
.annotate 'line', 531
    .const 'Sub' $P1356 = "65_1316046719.21023" 
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
    .const 'Sub' $P1491 = "89_1316046719.21023" 
    newclosure $P1495, $P1491
.annotate 'line', 390
    .return ($P1495)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("65_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1357
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 531
    .lex "$meth", param_1357
.annotate 'line', 532
    new $P101, "Undef"
    set $P1358, $P101
    .lex "$callback", $P1358
    find_lex $P102, "$meth"
    unless_null $P102, vivify_426
    new $P102, "Undef"
  vivify_426:
    getprop $P103, "REIFY_CALLBACK", $P102
    store_lex "$callback", $P103
.annotate 'line', 533
    find_lex $P103, "$callback"
    unless_null $P103, vivify_427
    new $P103, "Undef"
  vivify_427:
    defined $I100, $P103
    if $I100, if_1359
    find_lex $P107, "$meth"
    unless_null $P107, vivify_428
    new $P107, "Undef"
  vivify_428:
    clone $P108, $P107
    set $P102, $P108
    goto if_1359_end
  if_1359:
    find_lex $P104, "$callback"
    unless_null $P104, vivify_429
    new $P104, "Undef"
  vivify_429:
    find_lex $P105, "$meth"
    unless_null $P105, vivify_430
    new $P105, "Undef"
  vivify_430:
    $P106 = $P104($P105)
    set $P102, $P106
  if_1359_end:
.annotate 'line', 531
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "archetypes" :anon :subid("66_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1364
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 415
    .lex "self", param_1364
    find_lex $P103, "$archetypes"
    unless_null $P103, vivify_431
    new $P103, "Undef"
  vivify_431:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("67_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P104, vivify_432
    new $P104, "Undef"
  vivify_432:
    find_lex $P105, "$name"
    unless_null $P105, vivify_433
    new $P105, "Undef"
  vivify_433:
    $P104."BUILD"($P105 :named("name"))
.annotate 'line', 424
    find_lex $P104, "$obj"
    unless_null $P104, vivify_434
    new $P104, "Undef"
  vivify_434:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("68_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1370
    .param pmc param_1371 :named("name")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 430
    .lex "self", param_1370
    .lex "$name", param_1371
.annotate 'line', 431
    find_lex $P103, "$name"
    unless_null $P103, vivify_435
    new $P103, "Undef"
  vivify_435:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!name", $P103
.annotate 'line', 430
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("69_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1373
    .param pmc param_1374 :optional :named("name")
    .param int has_param_1374 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 436
    .lex "self", param_1373
    if has_param_1374, optparam_436
    new $P103, "String"
    assign $P103, "<anon>"
    set param_1374, $P103
  optparam_436:
    .lex "$name", param_1374
.annotate 'line', 437
    new $P104, "Undef"
    set $P1375, $P104
    .lex "$metarole", $P1375
    find_lex $P105, "self"
    find_lex $P106, "$name"
    unless_null $P106, vivify_437
    new $P106, "Undef"
  vivify_437:
    $P107 = $P105."new"($P106 :named("name"))
    store_lex "$metarole", $P107
.annotate 'line', 439
    find_lex $P105, "$metarole"
    unless_null $P105, vivify_438
    new $P105, "Undef"
  vivify_438:
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
.sub "set_body_block" :anon :subid("70_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P103, vivify_439
    new $P103, "Undef"
  vivify_439:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!body_block", $P103
.annotate 'line', 443
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("71_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P103, vivify_440
    new $P103, "Undef"
  vivify_440:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1387, $P105, $P106, "%!methods"
    unless_null $P1387, vivify_441
    $P1387 = root_new ['parrot';'Hash']
  vivify_441:
    set $P107, $P1387[$P103]
    unless_null $P107, vivify_442
    new $P107, "Undef"
  vivify_442:
    unless $P107, if_1386_end
.annotate 'line', 449
    new $P108, "String"
    assign $P108, "This role already has a method named "
    find_lex $P109, "$name"
    unless_null $P109, vivify_443
    new $P109, "Undef"
  vivify_443:
    concat $P110, $P108, $P109
    die $P110
  if_1386_end:
.annotate 'line', 451
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_444
    new $P103, "Undef"
  vivify_444:
    find_lex $P104, "$name"
    unless_null $P104, vivify_445
    new $P104, "Undef"
  vivify_445:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1388, $P106, $P107, "%!methods"
    unless_null $P1388, vivify_446
    $P1388 = root_new ['parrot';'Hash']
    setattribute $P106, $P107, "%!methods", $P1388
  vivify_446:
    set $P1388[$P104], $P103
.annotate 'line', 447
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("72_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P1396, vivify_447
    $P1396 = root_new ['parrot';'Hash']
  vivify_447:
.annotate 'line', 456
    find_lex $P103, "$name"
    unless_null $P103, vivify_448
    new $P103, "Undef"
  vivify_448:
    find_lex $P1397, "%todo"
    unless_null $P1397, vivify_449
    $P1397 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1397
  vivify_449:
    set $P1397["name"], $P103
.annotate 'line', 457
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_450
    new $P103, "Undef"
  vivify_450:
    find_lex $P1398, "%todo"
    unless_null $P1398, vivify_451
    $P1398 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1398
  vivify_451:
    set $P1398["code"], $P103
.annotate 'line', 458
    find_lex $P1399, "%todo"
    unless_null $P1399, vivify_452
    $P1399 = root_new ['parrot';'Hash']
  vivify_452:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1400, $P104, $P105, "@!multi_methods_to_incorporate"
    unless_null $P1400, vivify_453
    $P1400 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $N100, $P1400
    set $I100, $N100
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1401, $P107, $P108, "@!multi_methods_to_incorporate"
    unless_null $P1401, vivify_454
    $P1401 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P107, $P108, "@!multi_methods_to_incorporate", $P1401
  vivify_454:
    set $P1401[$I100], $P1399
.annotate 'line', 454
    find_lex $P103, "$code_obj"
    unless_null $P103, vivify_455
    new $P103, "Undef"
  vivify_455:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("73_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P104, vivify_456
    new $P104, "Undef"
  vivify_456:
    $P105 = $P104."name"()
    store_lex "$name", $P105
.annotate 'line', 464
    find_lex $P104, "$name"
    unless_null $P104, vivify_457
    new $P104, "Undef"
  vivify_457:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1408, $P106, $P107, "%!attributes"
    unless_null $P1408, vivify_458
    $P1408 = root_new ['parrot';'Hash']
  vivify_458:
    set $P108, $P1408[$P104]
    unless_null $P108, vivify_459
    new $P108, "Undef"
  vivify_459:
    unless $P108, if_1407_end
.annotate 'line', 465
    new $P109, "String"
    assign $P109, "This role already has an attribute named "
    find_lex $P110, "$name"
    unless_null $P110, vivify_460
    new $P110, "Undef"
  vivify_460:
    concat $P111, $P109, $P110
    die $P111
  if_1407_end:
.annotate 'line', 467
    find_lex $P104, "$meta_attr"
    unless_null $P104, vivify_461
    new $P104, "Undef"
  vivify_461:
    find_lex $P105, "$name"
    unless_null $P105, vivify_462
    new $P105, "Undef"
  vivify_462:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P1409, $P107, $P108, "%!attributes"
    unless_null $P1409, vivify_463
    $P1409 = root_new ['parrot';'Hash']
    setattribute $P107, $P108, "%!attributes", $P1409
  vivify_463:
    set $P1409[$P105], $P104
.annotate 'line', 462
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("74_1316046719.21023") :outer("64_1316046719.21023")
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
.sub "add_role" :anon :subid("75_1316046719.21023") :outer("64_1316046719.21023")
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
    unless_null $P103, vivify_464
    new $P103, "Undef"
  vivify_464:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P1418, $P105, $P106, "@!roles"
    unless_null $P1418, vivify_465
    $P1418 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    set $N100, $P1418
    set $I100, $N100
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1419, $P108, $P109, "@!roles"
    unless_null $P1419, vivify_466
    $P1419 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P108, $P109, "@!roles", $P1419
  vivify_466:
    set $P1419[$I100], $P103
.annotate 'line', 474
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("76_1316046719.21023") :outer("64_1316046719.21023")
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
    setattribute $P105, $P106, "$!composed", $P103
.annotate 'line', 479
    find_lex $P103, "$obj"
    unless_null $P103, vivify_467
    new $P103, "Undef"
  vivify_467:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("77_1316046719.21023") :outer("64_1316046719.21023")
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
.sub "specialize" :anon :subid("78_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1429
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 496
    .const 'Sub' $P1452 = "82_1316046719.21023" 
    capture_lex $P1452
    .const 'Sub' $P1445 = "81_1316046719.21023" 
    capture_lex $P1445
    .const 'Sub' $P1440 = "80_1316046719.21023" 
    capture_lex $P1440
    .const 'Sub' $P1435 = "79_1316046719.21023" 
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
    getattribute $P107, $P105, $P106, "$!body_block"
    unless_null $P107, vivify_468
    new $P107, "Undef"
  vivify_468:
    find_lex $P108, "$class_arg"
    unless_null $P108, vivify_469
    new $P108, "Undef"
  vivify_469:
    $P107($P108)
.annotate 'line', 502
    find_lex $P104, "NQPConcreteRoleHOW"
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!name"
    unless_null $P108, vivify_470
    new $P108, "Undef"
  vivify_470:
    find_lex $P109, "$obj"
    unless_null $P109, vivify_471
    new $P109, "Undef"
  vivify_471:
    $P110 = $P104."new_type"($P108 :named("name"), $P109 :named("instance_of"))
    store_lex "$irole", $P110
.annotate 'line', 506
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1433, $P106, $P107, "%!attributes"
    unless_null $P1433, vivify_472
    $P1433 = root_new ['parrot';'Hash']
  vivify_472:
    defined $I100, $P1433
    unless $I100, for_undef_473
    iter $P104, $P1433
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1437_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1437_test:
    unless $P104, loop1437_done
    shift $P108, $P104
  loop1437_redo:
    .const 'Sub' $P1435 = "79_1316046719.21023" 
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
  for_undef_473:
.annotate 'line', 511
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1438, $P106, $P107, "%!methods"
    unless_null $P1438, vivify_477
    $P1438 = root_new ['parrot';'Hash']
  vivify_477:
    defined $I100, $P1438
    unless $I100, for_undef_478
    iter $P104, $P1438
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1442_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1442_test:
    unless $P104, loop1442_done
    shift $P108, $P104
  loop1442_redo:
    .const 'Sub' $P1440 = "80_1316046719.21023" 
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
  for_undef_478:
.annotate 'line', 514
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1443, $P106, $P107, "@!multi_methods_to_incorporate"
    unless_null $P1443, vivify_483
    $P1443 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    defined $I100, $P1443
    unless $I100, for_undef_484
    iter $P104, $P1443
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1449_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1449_test:
    unless $P104, loop1449_done
    shift $P108, $P104
  loop1449_redo:
    .const 'Sub' $P1445 = "81_1316046719.21023" 
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
  for_undef_484:
.annotate 'line', 519
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1450, $P106, $P107, "@!roles"
    unless_null $P1450, vivify_491
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    defined $I100, $P1450
    unless $I100, for_undef_492
    iter $P104, $P1450
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1455_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1455_test:
    unless $P104, loop1455_done
    shift $P108, $P104
  loop1455_redo:
    .const 'Sub' $P1452 = "82_1316046719.21023" 
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
  for_undef_492:
.annotate 'line', 525
    find_lex $P104, "$irole"
    unless_null $P104, vivify_499
    new $P104, "Undef"
  vivify_499:
    get_how $P105, $P104
    find_lex $P106, "$irole"
    unless_null $P106, vivify_500
    new $P106, "Undef"
  vivify_500:
    $P105."compose"($P106)
.annotate 'line', 526
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    find_lex $P105, "$irole"
    unless_null $P105, vivify_501
    new $P105, "Undef"
  vivify_501:
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
.sub "_block1434"  :anon :subid("79_1316046719.21023") :outer("78_1316046719.21023")
    .param pmc param_1436
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 506
    .lex "$_", param_1436
.annotate 'line', 507
    find_lex $P109, "$irole"
    unless_null $P109, vivify_474
    new $P109, "Undef"
  vivify_474:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_475
    new $P111, "Undef"
  vivify_475:
    find_lex $P112, "$_"
    unless_null $P112, vivify_476
    new $P112, "Undef"
  vivify_476:
    $P113 = $P112."value"()
    $P114 = $P110."add_attribute"($P111, $P113)
.annotate 'line', 506
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1439"  :anon :subid("80_1316046719.21023") :outer("78_1316046719.21023")
    .param pmc param_1441
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 511
    .lex "$_", param_1441
.annotate 'line', 512
    find_lex $P109, "$irole"
    unless_null $P109, vivify_479
    new $P109, "Undef"
  vivify_479:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_480
    new $P111, "Undef"
  vivify_480:
    find_lex $P112, "$_"
    unless_null $P112, vivify_481
    new $P112, "Undef"
  vivify_481:
    $P113 = $P112."key"()
    find_lex $P114, "$_"
    unless_null $P114, vivify_482
    new $P114, "Undef"
  vivify_482:
    $P115 = $P114."value"()
    $P116 = "reify_method"($P115)
    $P117 = $P110."add_method"($P111, $P113, $P116)
.annotate 'line', 511
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1444"  :anon :subid("81_1316046719.21023") :outer("78_1316046719.21023")
    .param pmc param_1446
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 514
    .lex "$_", param_1446
.annotate 'line', 515
    find_lex $P109, "$irole"
    unless_null $P109, vivify_485
    new $P109, "Undef"
  vivify_485:
    get_how $P110, $P109
    find_lex $P111, "$irole"
    unless_null $P111, vivify_486
    new $P111, "Undef"
  vivify_486:
    find_lex $P1447, "$_"
    unless_null $P1447, vivify_487
    $P1447 = root_new ['parrot';'Hash']
  vivify_487:
    set $P112, $P1447["name"]
    unless_null $P112, vivify_488
    new $P112, "Undef"
  vivify_488:
    find_lex $P1448, "$_"
    unless_null $P1448, vivify_489
    $P1448 = root_new ['parrot';'Hash']
  vivify_489:
    set $P113, $P1448["code"]
    unless_null $P113, vivify_490
    new $P113, "Undef"
  vivify_490:
    $P114 = "reify_method"($P113)
    $P115 = $P110."add_multi_method"($P111, $P112, $P114)
.annotate 'line', 514
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1451"  :anon :subid("82_1316046719.21023") :outer("78_1316046719.21023")
    .param pmc param_1454
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 520
    new $P109, "Undef"
    set $P1453, $P109
    .lex "$specialized", $P1453
    .lex "$_", param_1454
    find_lex $P110, "$irole"
    unless_null $P110, vivify_493
    new $P110, "Undef"
  vivify_493:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_494
    new $P112, "Undef"
  vivify_494:
    find_lex $P113, "$class_arg"
    unless_null $P113, vivify_495
    new $P113, "Undef"
  vivify_495:
    $P114 = $P111."specialize"($P112, $P113)
    store_lex "$specialized", $P114
.annotate 'line', 521
    find_lex $P110, "$irole"
    unless_null $P110, vivify_496
    new $P110, "Undef"
  vivify_496:
    get_how $P111, $P110
    find_lex $P112, "$irole"
    unless_null $P112, vivify_497
    new $P112, "Undef"
  vivify_497:
    find_lex $P113, "$specialized"
    unless_null $P113, vivify_498
    new $P113, "Undef"
  vivify_498:
    $P114 = $P111."add_role"($P112, $P113)
.annotate 'line', 519
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("83_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1457
    .param pmc param_1458
    .param pmc param_1459 :optional :named("local")
    .param int has_param_1459 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 540
    .const 'Sub' $P1465 = "84_1316046719.21023" 
    capture_lex $P1465
    .lex "self", param_1457
    .lex "$obj", param_1458
    if has_param_1459, optparam_502
    new $P103, "Undef"
    set param_1459, $P103
  optparam_502:
    .lex "$local", param_1459
.annotate 'line', 541
    $P1461 = root_new ['parrot';'ResizablePMCArray']
    set $P1460, $P1461
    .lex "@meths", $P1460
.annotate 'line', 540
    find_lex $P1462, "@meths"
    unless_null $P1462, vivify_503
    $P1462 = root_new ['parrot';'ResizablePMCArray']
  vivify_503:
.annotate 'line', 542
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1463, $P106, $P107, "%!methods"
    unless_null $P1463, vivify_504
    $P1463 = root_new ['parrot';'Hash']
  vivify_504:
    defined $I100, $P1463
    unless $I100, for_undef_505
    iter $P104, $P1463
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1468_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1468_test:
    unless $P104, loop1468_done
    shift $P108, $P104
  loop1468_redo:
    .const 'Sub' $P1465 = "84_1316046719.21023" 
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
  for_undef_505:
.annotate 'line', 540
    find_lex $P1469, "@meths"
    unless_null $P1469, vivify_508
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
    .return ($P1469)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1464"  :anon :subid("84_1316046719.21023") :outer("83_1316046719.21023")
    .param pmc param_1466
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 542
    .lex "$_", param_1466
.annotate 'line', 543
    find_lex $P1467, "@meths"
    unless_null $P1467, vivify_506
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    find_lex $P109, "$_"
    unless_null $P109, vivify_507
    new $P109, "Undef"
  vivify_507:
    $P110 = $P109."value"()
    $P111 = $P1467."push"($P110)
.annotate 'line', 542
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("85_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1471
    .param pmc param_1472
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 548
    .lex "self", param_1471
    .lex "$obj", param_1472
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1473, $P104, $P105, "%!methods"
    unless_null $P1473, vivify_509
    $P1473 = root_new ['parrot';'Hash']
  vivify_509:
    .return ($P1473)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("86_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1475
    .param pmc param_1476
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 552
    .lex "self", param_1475
    .lex "$obj", param_1476
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!name"
    unless_null $P106, vivify_510
    new $P106, "Undef"
  vivify_510:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("87_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1478
    .param pmc param_1479
    .param pmc param_1480 :optional :named("local")
    .param int has_param_1480 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 556
    .const 'Sub' $P1486 = "88_1316046719.21023" 
    capture_lex $P1486
    .lex "self", param_1478
    .lex "$obj", param_1479
    if has_param_1480, optparam_511
    new $P103, "Undef"
    set param_1480, $P103
  optparam_511:
    .lex "$local", param_1480
.annotate 'line', 557
    $P1482 = root_new ['parrot';'ResizablePMCArray']
    set $P1481, $P1482
    .lex "@attrs", $P1481
.annotate 'line', 556
    find_lex $P1483, "@attrs"
    unless_null $P1483, vivify_512
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_512:
.annotate 'line', 558
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P1484, $P106, $P107, "%!attributes"
    unless_null $P1484, vivify_513
    $P1484 = root_new ['parrot';'Hash']
  vivify_513:
    defined $I100, $P1484
    unless $I100, for_undef_514
    iter $P104, $P1484
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1489_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1489_test:
    unless $P104, loop1489_done
    shift $P108, $P104
  loop1489_redo:
    .const 'Sub' $P1486 = "88_1316046719.21023" 
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
  for_undef_514:
.annotate 'line', 556
    find_lex $P1490, "@attrs"
    unless_null $P1490, vivify_517
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    .return ($P1490)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1485"  :anon :subid("88_1316046719.21023") :outer("87_1316046719.21023")
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 558
    .lex "$_", param_1487
.annotate 'line', 559
    find_lex $P1488, "@attrs"
    unless_null $P1488, vivify_515
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    find_lex $P109, "$_"
    unless_null $P109, vivify_516
    new $P109, "Undef"
  vivify_516:
    $P110 = $P109."value"()
    $P111 = $P1488."push"($P110)
.annotate 'line', 558
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("89_1316046719.21023") :outer("64_1316046719.21023")
    .param pmc param_1492
    .param pmc param_1493
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 564
    .lex "self", param_1492
    .lex "$obj", param_1493
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1494, $P104, $P105, "@!roles"
    unless_null $P1494, vivify_518
    $P1494 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    .return ($P1494)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1496"  :subid("90_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 574
    .const 'Sub' $P1967 = "153_1316046719.21023" 
    capture_lex $P1967
    .const 'Sub' $P1951 = "151_1316046719.21023" 
    capture_lex $P1951
    .const 'Sub' $P1940 = "150_1316046719.21023" 
    capture_lex $P1940
    .const 'Sub' $P1928 = "149_1316046719.21023" 
    capture_lex $P1928
    .const 'Sub' $P1923 = "148_1316046719.21023" 
    capture_lex $P1923
    .const 'Sub' $P1918 = "147_1316046719.21023" 
    capture_lex $P1918
    .const 'Sub' $P1904 = "145_1316046719.21023" 
    capture_lex $P1904
    .const 'Sub' $P1901 = "144_1316046719.21023" 
    capture_lex $P1901
    .const 'Sub' $P1897 = "143_1316046719.21023" 
    capture_lex $P1897
    .const 'Sub' $P1883 = "141_1316046719.21023" 
    capture_lex $P1883
    .const 'Sub' $P1878 = "140_1316046719.21023" 
    capture_lex $P1878
    .const 'Sub' $P1874 = "139_1316046719.21023" 
    capture_lex $P1874
    .const 'Sub' $P1867 = "138_1316046719.21023" 
    capture_lex $P1867
    .const 'Sub' $P1843 = "135_1316046719.21023" 
    capture_lex $P1843
    .const 'Sub' $P1819 = "132_1316046719.21023" 
    capture_lex $P1819
    .const 'Sub' $P1814 = "131_1316046719.21023" 
    capture_lex $P1814
    .const 'Sub' $P1785 = "127_1316046719.21023" 
    capture_lex $P1785
    .const 'Sub' $P1766 = "124_1316046719.21023" 
    capture_lex $P1766
    .const 'Sub' $P1718 = "119_1316046719.21023" 
    capture_lex $P1718
    .const 'Sub' $P1688 = "115_1316046719.21023" 
    capture_lex $P1688
    .const 'Sub' $P1680 = "114_1316046719.21023" 
    capture_lex $P1680
    .const 'Sub' $P1672 = "113_1316046719.21023" 
    capture_lex $P1672
    .const 'Sub' $P1660 = "111_1316046719.21023" 
    capture_lex $P1660
    .const 'Sub' $P1656 = "110_1316046719.21023" 
    capture_lex $P1656
    .const 'Sub' $P1642 = "108_1316046719.21023" 
    capture_lex $P1642
    .const 'Sub' $P1634 = "107_1316046719.21023" 
    capture_lex $P1634
    .const 'Sub' $P1621 = "106_1316046719.21023" 
    capture_lex $P1621
    .const 'Sub' $P1611 = "105_1316046719.21023" 
    capture_lex $P1611
    .const 'Sub' $P1605 = "104_1316046719.21023" 
    capture_lex $P1605
    .const 'Sub' $P1602 = "103_1316046719.21023" 
    capture_lex $P1602
    .const 'Sub' $P1598 = "102_1316046719.21023" 
    capture_lex $P1598
    .const 'Sub' $P1596 = "101_1316046719.21023" 
    capture_lex $P1596
    .const 'Sub' $P1532 = "94_1316046719.21023" 
    capture_lex $P1532
    .const 'Sub' $P1500 = "91_1316046719.21023" 
    capture_lex $P1500
.annotate 'line', 607
    new $P100, "Undef"
    set $P1498, $P100
    .lex "$archetypes", $P1498
.annotate 'line', 820
    .const 'Sub' $P1500 = "91_1316046719.21023" 
    newclosure $P1530, $P1500
    set $P1499, $P1530
    .lex "compute_c3_mro", $P1499
.annotate 'line', 846
    .const 'Sub' $P1532 = "94_1316046719.21023" 
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
.annotate 'line', 1065
    .const 'Sub' $P1967 = "153_1316046719.21023" 
    newclosure $P1984, $P1967
.annotate 'line', 574
    .return ($P1984)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("91_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1503
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 820
    .const 'Sub' $P1515 = "92_1316046719.21023" 
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
    unless_null $P101, vivify_519
    new $P101, "Undef"
  vivify_519:
    get_how $P102, $P101
    find_lex $P103, "$class"
    unless_null $P103, vivify_520
    new $P103, "Undef"
  vivify_520:
    $P104 = $P102."parents"($P103, 1 :named("local"))
    store_lex "@immediate_parents", $P104
.annotate 'line', 820
    find_lex $P1508, "@result"
    unless_null $P1508, vivify_521
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
.annotate 'line', 825
    find_lex $P1510, "@immediate_parents"
    unless_null $P1510, vivify_522
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    set $N100, $P1510
    unless $N100, if_1509_end
.annotate 'line', 826
    find_lex $P1512, "@immediate_parents"
    unless_null $P1512, vivify_523
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_523:
    set $N101, $P1512
    set $N102, 1
    iseq $I100, $N101, $N102
    if $I100, if_1511
.annotate 'line', 828
    .const 'Sub' $P1515 = "92_1316046719.21023" 
    capture_lex $P1515
    $P1515()
    goto if_1511_end
  if_1511:
.annotate 'line', 827
    new $P101, "Float"
    assign $P101, 0
    set $I101, $P101
    find_lex $P1513, "@immediate_parents"
    unless_null $P1513, vivify_532
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    set $P102, $P1513[$I101]
    unless_null $P102, vivify_533
    new $P102, "Undef"
  vivify_533:
    $P103 = "compute_c3_mro"($P102)
    store_lex "@result", $P103
  if_1511_end:
  if_1509_end:
.annotate 'line', 841
    find_lex $P1528, "@result"
    unless_null $P1528, vivify_534
    $P1528 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    find_lex $P101, "$class"
    unless_null $P101, vivify_535
    new $P101, "Undef"
  vivify_535:
    $P1528."unshift"($P101)
.annotate 'line', 842
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    find_lex $P1529, "@result"
    unless_null $P1529, vivify_536
    $P1529 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
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
.sub "_block1514"  :anon :subid("92_1316046719.21023") :outer("91_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 828
    .const 'Sub' $P1521 = "93_1316046719.21023" 
    capture_lex $P1521
.annotate 'line', 831
    $P1517 = root_new ['parrot';'ResizablePMCArray']
    set $P1516, $P1517
    .lex "@merge_list", $P1516
.annotate 'line', 828
    find_lex $P1518, "@merge_list"
    unless_null $P1518, vivify_524
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
.annotate 'line', 832
    find_lex $P1519, "@immediate_parents"
    unless_null $P1519, vivify_525
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    defined $I101, $P1519
    unless $I101, for_undef_526
    iter $P101, $P1519
    new $P103, 'ExceptionHandler'
    set_label $P103, loop1524_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop1524_test:
    unless $P101, loop1524_done
    shift $P102, $P101
  loop1524_redo:
    .const 'Sub' $P1521 = "93_1316046719.21023" 
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
  for_undef_526:
.annotate 'line', 835
    find_lex $P1525, "@merge_list"
    unless_null $P1525, vivify_529
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    find_lex $P1526, "@immediate_parents"
    unless_null $P1526, vivify_530
    $P1526 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P1525."push"($P1526)
.annotate 'line', 836
    find_lex $P1527, "@merge_list"
    unless_null $P1527, vivify_531
    $P1527 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    $P101 = "c3_merge"($P1527)
    store_lex "@result", $P101
.annotate 'line', 828
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1520"  :anon :subid("93_1316046719.21023") :outer("92_1316046719.21023")
    .param pmc param_1522
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 832
    .lex "$_", param_1522
.annotate 'line', 833
    find_lex $P1523, "@merge_list"
    unless_null $P1523, vivify_527
    $P1523 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    find_lex $P103, "$_"
    unless_null $P103, vivify_528
    new $P103, "Undef"
  vivify_528:
    $P104 = "compute_c3_mro"($P103)
    $P105 = $P1523."push"($P104)
.annotate 'line', 832
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("94_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1535
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 846
    .const 'Sub' $P1576 = "99_1316046719.21023" 
    capture_lex $P1576
    .const 'Sub' $P1545 = "95_1316046719.21023" 
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
    unless_null $P1542, vivify_537
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_537:
    find_lex $P106, "$accepted"
    unless_null $P106, vivify_538
    new $P106, "Undef"
  vivify_538:
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
    unless_null $P1543, vivify_539
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    defined $I100, $P1543
    unless $I100, for_undef_540
    iter $P106, $P1543
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1570_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1570_test:
    unless $P106, loop1570_done
    shift $P107, $P106
  loop1570_redo:
    .const 'Sub' $P1545 = "95_1316046719.21023" 
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
  for_undef_540:
.annotate 'line', 883
    find_lex $P106, "$cand_count"
    unless_null $P106, vivify_559
    new $P106, "Undef"
  vivify_559:
    set $N100, $P106
    set $N101, 0
    iseq $I100, $N100, $N101
    unless $I100, if_1571_end
.annotate 'line', 884
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_lex $P1572, "@result"
    unless_null $P1572, vivify_560
    $P1572 = root_new ['parrot';'ResizablePMCArray']
  vivify_560:
    setattribute $P107, 'payload', $P1572
    throw $P107
  if_1571_end:
.annotate 'line', 888
    find_lex $P106, "$something_accepted"
    unless_null $P106, vivify_561
    new $P106, "Undef"
  vivify_561:
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
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    set $N100, $P106
    find_lex $P1574, "@merge_list"
    unless_null $P1574, vivify_563
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $N101, $P1574
    islt $I100, $N100, $N101
    unless $I100, loop1589_done
  loop1589_redo:
    .const 'Sub' $P1576 = "99_1316046719.21023" 
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
    unless_null $P1590, vivify_577
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_577:
    $P106 = "c3_merge"($P1590)
    store_lex "@result", $P106
.annotate 'line', 908
    find_lex $P1591, "@result"
    unless_null $P1591, vivify_578
    $P1591 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    find_lex $P106, "$accepted"
    unless_null $P106, vivify_579
    new $P106, "Undef"
  vivify_579:
    $P1591."unshift"($P106)
.annotate 'line', 909
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P1592, "@result"
    unless_null $P1592, vivify_580
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
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
.sub "_block1544"  :anon :subid("95_1316046719.21023") :outer("94_1316046719.21023")
    .param pmc param_1548
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 853
    .const 'Sub' $P1552 = "96_1316046719.21023" 
    capture_lex $P1552
.annotate 'line', 854
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    set $P1546, $P1547
    .lex "@cand_list", $P1546
    .lex "$_", param_1548
    find_lex $P108, "$_"
    unless_null $P108, vivify_541
    new $P108, "Undef"
  vivify_541:
    store_lex "@cand_list", $P108
.annotate 'line', 855
    find_lex $P1550, "@cand_list"
    unless_null $P1550, vivify_542
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    set $N100, $P1550
    if $N100, if_1549
    new $P108, 'Float'
    set $P108, $N100
    goto if_1549_end
  if_1549:
    .const 'Sub' $P1552 = "96_1316046719.21023" 
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
.sub "_block1551"  :anon :subid("96_1316046719.21023") :outer("95_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 855
    .const 'Sub' $P1558 = "97_1316046719.21023" 
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
    unless_null $P1555, vivify_543
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_543:
    set $P112, $P1555[$I101]
    unless_null $P112, vivify_544
    new $P112, "Undef"
  vivify_544:
    store_lex "$cand_class", $P112
.annotate 'line', 858
    find_lex $P111, "$cand_count"
    unless_null $P111, vivify_545
    new $P111, "Undef"
  vivify_545:
    add $P112, $P111, 1
    store_lex "$cand_count", $P112
.annotate 'line', 859
    find_lex $P1556, "@merge_list"
    unless_null $P1556, vivify_546
    $P1556 = root_new ['parrot';'ResizablePMCArray']
  vivify_546:
    defined $I101, $P1556
    unless $I101, for_undef_547
    iter $P111, $P1556
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1569_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1569_test:
    unless $P111, loop1569_done
    shift $P112, $P111
  loop1569_redo:
    .const 'Sub' $P1558 = "97_1316046719.21023" 
    capture_lex $P1558
    $P1558($P112)
  loop1569_next:
    goto loop1569_test
  loop1569_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1569_next
    eq $P115, .CONTROL_LOOP_REDO, loop1569_redo
  loop1569_done:
    pop_eh 
  for_undef_547:
.annotate 'line', 855
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1557"  :anon :subid("97_1316046719.21023") :outer("96_1316046719.21023")
    .param pmc param_1559
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 859
    .const 'Sub' $P1563 = "98_1316046719.21023" 
    capture_lex $P1563
    .lex "$_", param_1559
.annotate 'line', 861
    find_lex $P113, "$_"
    unless_null $P113, vivify_548
    new $P113, "Undef"
  vivify_548:
    find_lex $P1561, "@cand_list"
    unless_null $P1561, vivify_549
    $P1561 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    issame $I102, $P113, $P1561
    if $I102, unless_1560_end
    .const 'Sub' $P1563 = "98_1316046719.21023" 
    capture_lex $P1563
    $P1563()
  unless_1560_end:
.annotate 'line', 873
    find_lex $P114, "$rejected"
    unless_null $P114, vivify_557
    new $P114, "Undef"
  vivify_557:
    unless $P114, unless_1568
    set $P113, $P114
    goto unless_1568_end
  unless_1568:
.annotate 'line', 874
    find_lex $P115, "$cand_class"
    unless_null $P115, vivify_558
    new $P115, "Undef"
  vivify_558:
    store_lex "$accepted", $P115
.annotate 'line', 875
    new $P115, "Float"
    assign $P115, 1
    store_lex "$something_accepted", $P115
.annotate 'line', 876
    die 0, .CONTROL_LOOP_LAST
  unless_1568_end:
.annotate 'line', 859
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1562"  :anon :subid("98_1316046719.21023") :outer("97_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 863
    new $P114, "Undef"
    set $P1564, $P114
    .lex "$cur_pos", $P1564
    new $P115, "Float"
    assign $P115, 1
    store_lex "$cur_pos", $P115
.annotate 'line', 864
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1567_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1567_test:
    find_lex $P115, "$cur_pos"
    unless_null $P115, vivify_550
    new $P115, "Undef"
  vivify_550:
    set $N101, $P115
    find_lex $P116, "$_"
    unless_null $P116, vivify_551
    new $P116, "Undef"
  vivify_551:
    set $N102, $P116
    isle $I103, $N101, $N102
    unless $I103, loop1567_done
  loop1567_redo:
.annotate 'line', 865
    find_lex $P117, "$cur_pos"
    unless_null $P117, vivify_552
    new $P117, "Undef"
  vivify_552:
    set $I104, $P117
    find_lex $P1566, "$_"
    unless_null $P1566, vivify_553
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_553:
    set $P118, $P1566[$I104]
    unless_null $P118, vivify_554
    new $P118, "Undef"
  vivify_554:
    find_lex $P119, "$cand_class"
    unless_null $P119, vivify_555
    new $P119, "Undef"
  vivify_555:
    issame $I105, $P118, $P119
    unless $I105, if_1565_end
.annotate 'line', 866
    new $P120, "Float"
    assign $P120, 1
    store_lex "$rejected", $P120
  if_1565_end:
.annotate 'line', 868
    find_lex $P117, "$cur_pos"
    unless_null $P117, vivify_556
    new $P117, "Undef"
  vivify_556:
    add $P118, $P117, 1
    store_lex "$cur_pos", $P118
  loop1567_next:
.annotate 'line', 864
    goto loop1567_test
  loop1567_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1567_next
    eq $P118, .CONTROL_LOOP_REDO, loop1567_redo
  loop1567_done:
    pop_eh 
.annotate 'line', 861
    .return ($I103)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1575"  :anon :subid("99_1316046719.21023") :outer("94_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 894
    .const 'Sub' $P1582 = "100_1316046719.21023" 
    capture_lex $P1582
.annotate 'line', 895
    $P1578 = root_new ['parrot';'ResizablePMCArray']
    set $P1577, $P1578
    .lex "@new_list", $P1577
.annotate 'line', 894
    find_lex $P1579, "@new_list"
    unless_null $P1579, vivify_564
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_564:
.annotate 'line', 896
    find_lex $P108, "$i"
    unless_null $P108, vivify_565
    new $P108, "Undef"
  vivify_565:
    set $I101, $P108
    find_lex $P1580, "@merge_list"
    unless_null $P1580, vivify_566
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_566:
    set $P109, $P1580[$I101]
    unless_null $P109, vivify_567
    new $P109, "Undef"
  vivify_567:
    defined $I102, $P109
    unless $I102, for_undef_568
    iter $P107, $P109
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1586_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1586_test:
    unless $P107, loop1586_done
    shift $P110, $P107
  loop1586_redo:
    .const 'Sub' $P1582 = "100_1316046719.21023" 
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
  for_undef_568:
.annotate 'line', 901
    find_lex $P1587, "@new_list"
    unless_null $P1587, vivify_573
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    find_lex $P107, "$i"
    unless_null $P107, vivify_574
    new $P107, "Undef"
  vivify_574:
    set $I101, $P107
    find_lex $P1588, "@merge_list"
    unless_null $P1588, vivify_575
    $P1588 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1588
  vivify_575:
    set $P1588[$I101], $P1587
.annotate 'line', 902
    find_lex $P107, "$i"
    unless_null $P107, vivify_576
    new $P107, "Undef"
  vivify_576:
    add $P108, $P107, 1
    store_lex "$i", $P108
.annotate 'line', 894
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1581"  :anon :subid("100_1316046719.21023") :outer("99_1316046719.21023")
    .param pmc param_1583
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 896
    .lex "$_", param_1583
.annotate 'line', 897
    find_lex $P112, "$_"
    unless_null $P112, vivify_569
    new $P112, "Undef"
  vivify_569:
    find_lex $P113, "$accepted"
    unless_null $P113, vivify_570
    new $P113, "Undef"
  vivify_570:
    issame $I103, $P112, $P113
    unless $I103, unless_1584
    new $P111, 'Integer'
    set $P111, $I103
    goto unless_1584_end
  unless_1584:
.annotate 'line', 898
    find_lex $P1585, "@new_list"
    unless_null $P1585, vivify_571
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_571:
    find_lex $P114, "$_"
    unless_null $P114, vivify_572
    new $P114, "Undef"
  vivify_572:
    $P115 = $P1585."push"($P114)
.annotate 'line', 897
    set $P111, $P115
  unless_1584_end:
.annotate 'line', 896
    .return ($P111)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "archetypes" :anon :subid("101_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1597
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 608
    .lex "self", param_1597
    find_lex $P107, "$archetypes"
    unless_null $P107, vivify_581
    new $P107, "Undef"
  vivify_581:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("102_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1599
    .param pmc param_1600 :optional :named("name")
    .param int has_param_1600 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 617
    .lex "self", param_1599
    if has_param_1600, optparam_582
    new $P107, "Undef"
    set param_1600, $P107
  optparam_582:
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
    unless_null $P109, vivify_583
    new $P109, "Undef"
  vivify_583:
    find_lex $P110, "$name"
    unless_null $P110, vivify_584
    new $P110, "Undef"
  vivify_584:
    $P109."BUILD"($P110 :named("name"))
.annotate 'line', 617
    find_lex $P109, "$obj"
    unless_null $P109, vivify_585
    new $P109, "Undef"
  vivify_585:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("103_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1603
    .param pmc param_1604 :optional :named("name")
    .param int has_param_1604 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 623
    .lex "self", param_1603
    if has_param_1604, optparam_586
    new $P107, "Undef"
    set param_1604, $P107
  optparam_586:
    .lex "$name", param_1604
.annotate 'line', 624
    find_lex $P108, "$name"
    unless_null $P108, vivify_587
    new $P108, "Undef"
  vivify_587:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    setattribute $P110, $P111, "$!name", $P108
.annotate 'line', 623
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("104_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1606
    .param pmc param_1607 :optional :named("name")
    .param int has_param_1607 :opt_flag
    .param pmc param_1608 :optional :named("repr")
    .param int has_param_1608 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 629
    .lex "self", param_1606
    if has_param_1607, optparam_588
    new $P107, "String"
    assign $P107, "<anon>"
    set param_1607, $P107
  optparam_588:
    .lex "$name", param_1607
    if has_param_1608, optparam_589
    new $P108, "String"
    assign $P108, "P6opaque"
    set param_1608, $P108
  optparam_589:
    .lex "$repr", param_1608
.annotate 'line', 630
    new $P109, "Undef"
    set $P1609, $P109
    .lex "$metaclass", $P1609
    find_lex $P110, "self"
    find_lex $P111, "$name"
    unless_null $P111, vivify_590
    new $P111, "Undef"
  vivify_590:
    $P112 = $P110."new"($P111 :named("name"))
    store_lex "$metaclass", $P112
.annotate 'line', 632
    find_lex $P110, "$metaclass"
    unless_null $P110, vivify_591
    new $P110, "Undef"
  vivify_591:
    find_lex $P111, "$repr"
    unless_null $P111, vivify_592
    new $P111, "Undef"
  vivify_592:
    set $S100, $P111
    repr_type_object_for $P112, $P110, $S100
    $P1610 = root_new ['parrot';'Hash']
    set_who $P112, $P1610
.annotate 'line', 629
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("105_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P107, vivify_593
    new $P107, "Undef"
  vivify_593:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1617, $P109, $P110, "%!methods"
    unless_null $P1617, vivify_594
    $P1617 = root_new ['parrot';'Hash']
  vivify_594:
    set $P111, $P1617[$P107]
    unless_null $P111, vivify_595
    new $P111, "Undef"
  vivify_595:
    unless $P111, if_1616_end
.annotate 'line', 638
    new $P112, "String"
    assign $P112, "This class already has a method named "
    find_lex $P113, "$name"
    unless_null $P113, vivify_596
    new $P113, "Undef"
  vivify_596:
    concat $P114, $P112, $P113
    die $P114
  if_1616_end:
.annotate 'line', 640
    find_lex $P108, "$code_obj"
    unless_null $P108, vivify_597
    new $P108, "Undef"
  vivify_597:
    isnull $I100, $P108
    unless $I100, unless_1619
    new $P107, 'Integer'
    set $P107, $I100
    goto unless_1619_end
  unless_1619:
    find_lex $P109, "$code_obj"
    unless_null $P109, vivify_598
    new $P109, "Undef"
  vivify_598:
    isa $I101, $P109, "Undef"
    new $P107, 'Integer'
    set $P107, $I101
  unless_1619_end:
    unless $P107, if_1618_end
.annotate 'line', 641
    new $P110, 'String'
    set $P110, "Cannot add a null method '"
    find_lex $P111, "$name"
    unless_null $P111, vivify_599
    new $P111, "Undef"
  vivify_599:
    concat $P112, $P110, $P111
    concat $P113, $P112, "' to class '"
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$?CLASS"
    getattribute $P117, $P115, $P116, "$!name"
    unless_null $P117, vivify_600
    new $P117, "Undef"
  vivify_600:
    concat $P118, $P113, $P117
    concat $P119, $P118, "'"
    die $P119
  if_1618_end:
.annotate 'line', 643
    find_lex $P107, "$obj"
    unless_null $P107, vivify_601
    new $P107, "Undef"
  vivify_601:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 644
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_602
    new $P107, "Undef"
  vivify_602:
    find_lex $P108, "$name"
    unless_null $P108, vivify_603
    new $P108, "Undef"
  vivify_603:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1620, $P110, $P111, "%!methods"
    unless_null $P1620, vivify_604
    $P1620 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!methods", $P1620
  vivify_604:
    set $P1620[$P108], $P107
.annotate 'line', 636
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("106_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P1628, vivify_605
    $P1628 = root_new ['parrot';'Hash']
  vivify_605:
.annotate 'line', 654
    find_lex $P107, "$name"
    unless_null $P107, vivify_606
    new $P107, "Undef"
  vivify_606:
    find_lex $P1629, "%todo"
    unless_null $P1629, vivify_607
    $P1629 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1629
  vivify_607:
    set $P1629["name"], $P107
.annotate 'line', 655
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_608
    new $P107, "Undef"
  vivify_608:
    find_lex $P1630, "%todo"
    unless_null $P1630, vivify_609
    $P1630 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1630
  vivify_609:
    set $P1630["code"], $P107
.annotate 'line', 656
    find_lex $P1631, "%todo"
    unless_null $P1631, vivify_610
    $P1631 = root_new ['parrot';'Hash']
  vivify_610:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1632, $P108, $P109, "@!multi_methods_to_incorporate"
    unless_null $P1632, vivify_611
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_611:
    set $N100, $P1632
    set $I100, $N100
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1633, $P111, $P112, "@!multi_methods_to_incorporate"
    unless_null $P1633, vivify_612
    $P1633 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P111, $P112, "@!multi_methods_to_incorporate", $P1633
  vivify_612:
    set $P1633[$I100], $P1631
.annotate 'line', 657
    find_lex $P107, "$obj"
    unless_null $P107, vivify_613
    new $P107, "Undef"
  vivify_613:
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 647
    find_lex $P107, "$code_obj"
    unless_null $P107, vivify_614
    new $P107, "Undef"
  vivify_614:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("107_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P108, vivify_615
    new $P108, "Undef"
  vivify_615:
    $P109 = $P108."name"()
    store_lex "$name", $P109
.annotate 'line', 663
    find_lex $P108, "$name"
    unless_null $P108, vivify_616
    new $P108, "Undef"
  vivify_616:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1640, $P110, $P111, "%!attributes"
    unless_null $P1640, vivify_617
    $P1640 = root_new ['parrot';'Hash']
  vivify_617:
    set $P112, $P1640[$P108]
    unless_null $P112, vivify_618
    new $P112, "Undef"
  vivify_618:
    unless $P112, if_1639_end
.annotate 'line', 664
    new $P113, "String"
    assign $P113, "This class already has an attribute named "
    find_lex $P114, "$name"
    unless_null $P114, vivify_619
    new $P114, "Undef"
  vivify_619:
    concat $P115, $P113, $P114
    die $P115
  if_1639_end:
.annotate 'line', 666
    find_lex $P108, "$meta_attr"
    unless_null $P108, vivify_620
    new $P108, "Undef"
  vivify_620:
    find_lex $P109, "$name"
    unless_null $P109, vivify_621
    new $P109, "Undef"
  vivify_621:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1641, $P111, $P112, "%!attributes"
    unless_null $P1641, vivify_622
    $P1641 = root_new ['parrot';'Hash']
    setattribute $P111, $P112, "%!attributes", $P1641
  vivify_622:
    set $P1641[$P109], $P108
.annotate 'line', 661
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("108_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1643
    .param pmc param_1644
    .param pmc param_1645
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 669
    .const 'Sub' $P1650 = "109_1316046719.21023" 
    capture_lex $P1650
    .lex "self", param_1643
    .lex "$obj", param_1644
    .lex "$parent", param_1645
.annotate 'line', 670
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!composed"
    unless_null $P110, vivify_623
    new $P110, "Undef"
  vivify_623:
    unless $P110, if_1646_end
.annotate 'line', 671
    die "NQPClassHOW does not support adding parents after being composed."
  if_1646_end:
.annotate 'line', 673
    find_lex $P107, "$obj"
    unless_null $P107, vivify_624
    new $P107, "Undef"
  vivify_624:
    find_lex $P108, "$parent"
    unless_null $P108, vivify_625
    new $P108, "Undef"
  vivify_625:
    issame $I100, $P107, $P108
    unless $I100, if_1647_end
.annotate 'line', 674
    new $P109, 'String'
    set $P109, "Class '"
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P113, $P111, $P112, "$!name"
    unless_null $P113, vivify_626
    new $P113, "Undef"
  vivify_626:
    concat $P114, $P109, $P113
    concat $P115, $P114, "' cannot inherit from itself."
    die $P115
  if_1647_end:
.annotate 'line', 676
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1648, $P109, $P110, "@!parents"
    unless_null $P1648, vivify_627
    $P1648 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    defined $I100, $P1648
    unless $I100, for_undef_628
    iter $P107, $P1648
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1653_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1653_test:
    unless $P107, loop1653_done
    shift $P111, $P107
  loop1653_redo:
    .const 'Sub' $P1650 = "109_1316046719.21023" 
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
  for_undef_628:
.annotate 'line', 681
    find_lex $P107, "$parent"
    unless_null $P107, vivify_632
    new $P107, "Undef"
  vivify_632:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1654, $P109, $P110, "@!parents"
    unless_null $P1654, vivify_633
    $P1654 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $N100, $P1654
    set $I100, $N100
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P1655, $P112, $P113, "@!parents"
    unless_null $P1655, vivify_634
    $P1655 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P112, $P113, "@!parents", $P1655
  vivify_634:
    set $P1655[$I100], $P107
.annotate 'line', 669
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1649"  :anon :subid("109_1316046719.21023") :outer("108_1316046719.21023")
    .param pmc param_1651
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 676
    .lex "$_", param_1651
.annotate 'line', 677
    find_lex $P113, "$_"
    unless_null $P113, vivify_629
    new $P113, "Undef"
  vivify_629:
    find_lex $P114, "$parent"
    unless_null $P114, vivify_630
    new $P114, "Undef"
  vivify_630:
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
    unless_null $P116, vivify_631
    new $P116, "Undef"
  vivify_631:
    concat $P117, $P115, $P116
    concat $P118, $P117, " as a parent class."
    die $P118
  if_1652_end:
.annotate 'line', 676
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("110_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P107, vivify_635
    new $P107, "Undef"
  vivify_635:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    setattribute $P109, $P110, "$!default_parent", $P107
.annotate 'line', 684
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("111_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1661
    .param pmc param_1662
    .param pmc param_1663
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 688
    .const 'Sub' $P1666 = "112_1316046719.21023" 
    capture_lex $P1666
    .lex "self", param_1661
    .lex "$obj", param_1662
    .lex "$role", param_1663
.annotate 'line', 689
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1664, $P109, $P110, "@!roles"
    unless_null $P1664, vivify_636
    $P1664 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
    defined $I100, $P1664
    unless $I100, for_undef_637
    iter $P107, $P1664
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1669_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1669_test:
    unless $P107, loop1669_done
    shift $P111, $P107
  loop1669_redo:
    .const 'Sub' $P1666 = "112_1316046719.21023" 
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
  for_undef_637:
.annotate 'line', 694
    find_lex $P107, "$role"
    unless_null $P107, vivify_641
    new $P107, "Undef"
  vivify_641:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1670, $P109, $P110, "@!roles"
    unless_null $P1670, vivify_642
    $P1670 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $N100, $P1670
    set $I100, $N100
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P1671, $P112, $P113, "@!roles"
    unless_null $P1671, vivify_643
    $P1671 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P112, $P113, "@!roles", $P1671
  vivify_643:
    set $P1671[$I100], $P107
.annotate 'line', 688
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1665"  :anon :subid("112_1316046719.21023") :outer("111_1316046719.21023")
    .param pmc param_1667
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 689
    .lex "$_", param_1667
.annotate 'line', 690
    find_lex $P113, "$_"
    unless_null $P113, vivify_638
    new $P113, "Undef"
  vivify_638:
    find_lex $P114, "$role"
    unless_null $P114, vivify_639
    new $P114, "Undef"
  vivify_639:
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
    unless_null $P116, vivify_640
    new $P116, "Undef"
  vivify_640:
    concat $P117, $P115, $P116
    concat $P118, $P117, " has already been added."
    die $P118
  if_1668_end:
.annotate 'line', 689
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("113_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1678, $P109, $P110, "%!parrot_vtable_mapping"
    unless_null $P1678, vivify_645
    $P1678 = root_new ['parrot';'Hash']
  vivify_645:
    set $P111, $P1678[$P107]
    unless_null $P111, vivify_646
    new $P111, "Undef"
  vivify_646:
    defined $I100, $P111
    unless $I100, if_1677_end
.annotate 'line', 699
    new $P112, "String"
    assign $P112, "Class '"
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P116, $P114, $P115, "$!name"
    unless_null $P116, vivify_647
    new $P116, "Undef"
  vivify_647:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table override for '"
    find_lex $P119, "$name"
    unless_null $P119, vivify_648
    new $P119, "Undef"
  vivify_648:
    concat $P120, $P118, $P119
.annotate 'line', 700
    concat $P121, $P120, "'"
.annotate 'line', 701
    die $P121
  if_1677_end:
.annotate 'line', 703
    find_lex $P107, "$meth"
    unless_null $P107, vivify_649
    new $P107, "Undef"
  vivify_649:
    find_lex $P108, "$name"
    unless_null $P108, vivify_650
    new $P108, "Undef"
  vivify_650:
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1679, $P110, $P111, "%!parrot_vtable_mapping"
    unless_null $P1679, vivify_651
    $P1679 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!parrot_vtable_mapping", $P1679
  vivify_651:
    set $P1679[$P108], $P107
.annotate 'line', 697
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("114_1316046719.21023") :outer("90_1316046719.21023")
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
    unless_null $P107, vivify_652
    new $P107, "Undef"
  vivify_652:
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1686, $P109, $P110, "%!parrot_vtable_handler_mapping"
    unless_null $P1686, vivify_653
    $P1686 = root_new ['parrot';'Hash']
  vivify_653:
    set $P111, $P1686[$P107]
    unless_null $P111, vivify_654
    new $P111, "Undef"
  vivify_654:
    defined $I100, $P111
    unless $I100, if_1685_end
.annotate 'line', 708
    new $P112, "String"
    assign $P112, "Class '"
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P116, $P114, $P115, "$!name"
    unless_null $P116, vivify_655
    new $P116, "Undef"
  vivify_655:
    concat $P117, $P112, $P116
    concat $P118, $P117, "' already has a Parrot v-table handler for '"
    find_lex $P119, "$name"
    unless_null $P119, vivify_656
    new $P119, "Undef"
  vivify_656:
    concat $P120, $P118, $P119
.annotate 'line', 709
    concat $P121, $P120, "'"
.annotate 'line', 710
    die $P121
  if_1685_end:
.annotate 'line', 712
    find_lex $P107, "$obj"
    unless_null $P107, vivify_657
    new $P107, "Undef"
  vivify_657:
    find_lex $P108, "$att_name"
    unless_null $P108, vivify_658
    new $P108, "Undef"
  vivify_658:
    new $P109, "ResizablePMCArray"
    push $P109, $P107
    push $P109, $P108
    find_lex $P110, "$name"
    unless_null $P110, vivify_659
    new $P110, "Undef"
  vivify_659:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P1687, $P112, $P113, "%!parrot_vtable_handler_mapping"
    unless_null $P1687, vivify_660
    $P1687 = root_new ['parrot';'Hash']
    setattribute $P112, $P113, "%!parrot_vtable_handler_mapping", $P1687
  vivify_660:
    set $P1687[$P110], $P109
.annotate 'line', 706
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("115_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1689
    .param pmc param_1690
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 715
    .const 'Sub' $P1715 = "118_1316046719.21023" 
    capture_lex $P1715
    .const 'Sub' $P1694 = "116_1316046719.21023" 
    capture_lex $P1694
    .lex "self", param_1689
    .lex "$obj", param_1690
.annotate 'line', 719
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1692, $P108, $P109, "@!roles"
    unless_null $P1692, vivify_661
    $P1692 = root_new ['parrot';'ResizablePMCArray']
  vivify_661:
    unless $P1692, if_1691_end
    .const 'Sub' $P1694 = "116_1316046719.21023" 
    capture_lex $P1694
    $P1694()
  if_1691_end:
.annotate 'line', 732
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1712, $P109, $P110, "@!parents"
    unless_null $P1712, vivify_678
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
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
    getattribute $P114, $P112, $P113, "$!name"
    unless_null $P114, vivify_679
    new $P114, "Undef"
  vivify_679:
    set $S100, $P114
    isne $I101, $S100, "NQPMu"
    new $P107, 'Integer'
    set $P107, $I101
  if_1711_end:
    unless $P107, if_1710_end
.annotate 'line', 733
    find_lex $P115, "self"
    find_lex $P116, "$obj"
    unless_null $P116, vivify_680
    new $P116, "Undef"
  vivify_680:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    getattribute $P120, $P118, $P119, "$!default_parent"
    unless_null $P120, vivify_681
    new $P120, "Undef"
  vivify_681:
    $P115."add_parent"($P116, $P120)
  if_1710_end:
.annotate 'line', 738
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!composed"
    unless_null $P110, vivify_682
    new $P110, "Undef"
  vivify_682:
    if $P110, unless_1713_end
.annotate 'line', 739
    find_lex $P111, "$obj"
    unless_null $P111, vivify_683
    new $P111, "Undef"
  vivify_683:
    $P112 = "compute_c3_mro"($P111)
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    setattribute $P114, $P115, "@!mro", $P112
.annotate 'line', 740
    new $P111, "Float"
    assign $P111, 1
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    setattribute $P113, $P114, "$!composed", $P111
  unless_1713_end:
.annotate 'line', 744
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_684
    new $P108, "Undef"
  vivify_684:
    $P107."incorporate_multi_candidates"($P108)
.annotate 'line', 747
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_685
    new $P109, "Undef"
  vivify_685:
    $P110 = $P108."attributes"($P109, "0" :named("local"))
    defined $I100, $P110
    unless $I100, for_undef_686
    iter $P107, $P110
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1717_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1717_test:
    unless $P107, loop1717_done
    shift $P111, $P107
  loop1717_redo:
    .const 'Sub' $P1715 = "118_1316046719.21023" 
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
  for_undef_686:
.annotate 'line', 750
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_689
    new $P108, "Undef"
  vivify_689:
    $P107."publish_type_cache"($P108)
.annotate 'line', 751
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_690
    new $P108, "Undef"
  vivify_690:
    $P107."publish_method_cache"($P108)
.annotate 'line', 752
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_691
    new $P108, "Undef"
  vivify_691:
    $P107."publish_boolification_spec"($P108)
.annotate 'line', 755
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_692
    new $P108, "Undef"
  vivify_692:
    $P107."publish_parrot_vtable_mapping"($P108)
.annotate 'line', 756
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_693
    new $P108, "Undef"
  vivify_693:
    $P107."publish_parrot_vtablee_handler_mapping"($P108)
.annotate 'line', 715
    find_lex $P107, "$obj"
    unless_null $P107, vivify_694
    new $P107, "Undef"
  vivify_694:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1693"  :anon :subid("116_1316046719.21023") :outer("115_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 719
    .const 'Sub' $P1700 = "117_1316046719.21023" 
    capture_lex $P1700
.annotate 'line', 720
    $P1696 = root_new ['parrot';'ResizablePMCArray']
    set $P1695, $P1696
    .lex "@specialized_roles", $P1695
.annotate 'line', 719
    find_lex $P1697, "@specialized_roles"
    unless_null $P1697, vivify_662
    $P1697 = root_new ['parrot';'ResizablePMCArray']
  vivify_662:
.annotate 'line', 721
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P1698, $P112, $P113, "@!roles"
    unless_null $P1698, vivify_663
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    defined $I100, $P1698
    unless $I100, for_undef_664
    iter $P110, $P1698
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1708_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1708_test:
    unless $P110, loop1708_done
    shift $P114, $P110
  loop1708_redo:
    .const 'Sub' $P1700 = "117_1316046719.21023" 
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
  for_undef_664:
.annotate 'line', 727
    find_lex $P110, "RoleToClassApplier"
    find_lex $P111, "$obj"
    unless_null $P111, vivify_676
    new $P111, "Undef"
  vivify_676:
    find_lex $P1709, "@specialized_roles"
    unless_null $P1709, vivify_677
    $P1709 = root_new ['parrot';'ResizablePMCArray']
  vivify_677:
    $P112 = $P110."apply"($P111, $P1709)
.annotate 'line', 719
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1699"  :anon :subid("117_1316046719.21023") :outer("116_1316046719.21023")
    .param pmc param_1702
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 722
    new $P115, "Undef"
    set $P1701, $P115
    .lex "$ins", $P1701
    .lex "$_", param_1702
    find_lex $P116, "$_"
    unless_null $P116, vivify_665
    new $P116, "Undef"
  vivify_665:
    get_how $P117, $P116
    find_lex $P118, "$_"
    unless_null $P118, vivify_666
    new $P118, "Undef"
  vivify_666:
    find_lex $P119, "$obj"
    unless_null $P119, vivify_667
    new $P119, "Undef"
  vivify_667:
    $P120 = $P117."specialize"($P118, $P119)
    store_lex "$ins", $P120
.annotate 'line', 723
    find_lex $P1703, "@specialized_roles"
    unless_null $P1703, vivify_668
    $P1703 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    find_lex $P116, "$ins"
    unless_null $P116, vivify_669
    new $P116, "Undef"
  vivify_669:
    $P1703."push"($P116)
.annotate 'line', 724
    find_lex $P116, "$_"
    unless_null $P116, vivify_670
    new $P116, "Undef"
  vivify_670:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    getattribute $P1704, $P118, $P119, "@!done"
    unless_null $P1704, vivify_671
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_671:
    set $N100, $P1704
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    getattribute $P1705, $P121, $P122, "@!done"
    unless_null $P1705, vivify_672
    $P1705 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P121, $P122, "@!done", $P1705
  vivify_672:
    set $P1705[$I101], $P116
.annotate 'line', 725
    find_lex $P116, "$ins"
    unless_null $P116, vivify_673
    new $P116, "Undef"
  vivify_673:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    getattribute $P1706, $P118, $P119, "@!done"
    unless_null $P1706, vivify_674
    $P1706 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    set $N100, $P1706
    set $I101, $N100
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    find_lex $P122, "$?CLASS"
    getattribute $P1707, $P121, $P122, "@!done"
    unless_null $P1707, vivify_675
    $P1707 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P121, $P122, "@!done", $P1707
  vivify_675:
    set $P1707[$I101], $P116
.annotate 'line', 721
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1714"  :anon :subid("118_1316046719.21023") :outer("115_1316046719.21023")
    .param pmc param_1716
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 747
    .lex "$_", param_1716
    find_lex $P112, "$_"
    unless_null $P112, vivify_687
    new $P112, "Undef"
  vivify_687:
    find_lex $P113, "$obj"
    unless_null $P113, vivify_688
    new $P113, "Undef"
  vivify_688:
    $P114 = $P112."compose"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("119_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1719
    .param pmc param_1720
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 761
    .const 'Sub' $P1725 = "120_1316046719.21023" 
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
    getattribute $P1723, $P110, $P111, "@!multi_methods_to_incorporate"
    unless_null $P1723, vivify_695
    $P1723 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
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
    unless_null $P109, vivify_696
    new $P109, "Undef"
  vivify_696:
    set $N100, $P109
    find_lex $P110, "$num_todo"
    unless_null $P110, vivify_697
    new $P110, "Undef"
  vivify_697:
    set $N101, $P110
    isne $I100, $N100, $N101
    unless $I100, loop1765_done
  loop1765_redo:
    .const 'Sub' $P1725 = "120_1316046719.21023" 
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
.sub "_block1724"  :anon :subid("120_1316046719.21023") :outer("119_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 764
    .const 'Sub' $P1737 = "121_1316046719.21023" 
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
    unless_null $P114, vivify_698
    new $P114, "Undef"
  vivify_698:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    getattribute $P1729, $P116, $P117, "@!multi_methods_to_incorporate"
    unless_null $P1729, vivify_699
    $P1729 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    set $P1730, $P1729[$I101]
    unless_null $P1730, vivify_700
    $P1730 = root_new ['parrot';'Hash']
  vivify_700:
    set $P118, $P1730["name"]
    unless_null $P118, vivify_701
    new $P118, "Undef"
  vivify_701:
    store_lex "$name", $P118
.annotate 'line', 767
    find_lex $P114, "$i"
    unless_null $P114, vivify_702
    new $P114, "Undef"
  vivify_702:
    set $I101, $P114
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    getattribute $P1731, $P116, $P117, "@!multi_methods_to_incorporate"
    unless_null $P1731, vivify_703
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    set $P1732, $P1731[$I101]
    unless_null $P1732, vivify_704
    $P1732 = root_new ['parrot';'Hash']
  vivify_704:
    set $P118, $P1732["code"]
    unless_null $P118, vivify_705
    new $P118, "Undef"
  vivify_705:
    store_lex "$code", $P118
.annotate 'line', 771
    find_lex $P114, "$name"
    unless_null $P114, vivify_706
    new $P114, "Undef"
  vivify_706:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$?CLASS"
    getattribute $P1733, $P116, $P117, "%!methods"
    unless_null $P1733, vivify_707
    $P1733 = root_new ['parrot';'Hash']
  vivify_707:
    set $P118, $P1733[$P114]
    unless_null $P118, vivify_708
    new $P118, "Undef"
  vivify_708:
    store_lex "$dispatcher", $P118
.annotate 'line', 772
    find_lex $P114, "$dispatcher"
    unless_null $P114, vivify_709
    new $P114, "Undef"
  vivify_709:
    defined $I101, $P114
    if $I101, if_1734
.annotate 'line', 782
    .const 'Sub' $P1737 = "121_1316046719.21023" 
    capture_lex $P1737
    $P1737()
    goto if_1734_end
  if_1734:
.annotate 'line', 775
    find_lex $P115, "$dispatcher"
    unless_null $P115, vivify_740
    new $P115, "Undef"
  vivify_740:
    is_dispatcher $I102, $P115
    if $I102, if_1735
.annotate 'line', 779
    new $P116, 'String'
    set $P116, "Cannot have a multi candidate for "
    find_lex $P117, "$name"
    unless_null $P117, vivify_741
    new $P117, "Undef"
  vivify_741:
    concat $P118, $P116, $P117
    concat $P119, $P118, " when an only method is also in the class"
    die $P119
.annotate 'line', 778
    goto if_1735_end
  if_1735:
.annotate 'line', 776
    find_lex $P116, "$dispatcher"
    unless_null $P116, vivify_742
    new $P116, "Undef"
  vivify_742:
    find_lex $P117, "$code"
    unless_null $P117, vivify_743
    new $P117, "Undef"
  vivify_743:
    push_dispatchee $P116, $P117
  if_1735_end:
  if_1734_end:
.annotate 'line', 815
    find_lex $P114, "$i"
    unless_null $P114, vivify_744
    new $P114, "Undef"
  vivify_744:
    add $P115, $P114, 1
    store_lex "$i", $P115
.annotate 'line', 764
    .return ($P115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1736"  :anon :subid("121_1316046719.21023") :outer("120_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 782
    .const 'Sub' $P1743 = "122_1316046719.21023" 
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
    unless_null $P118, vivify_710
    new $P118, "Undef"
  vivify_710:
    set $N102, $P118
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    getattribute $P1741, $P120, $P121, "@!mro"
    unless_null $P1741, vivify_711
    $P1741 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    set $N103, $P1741
    isne $I102, $N102, $N103
    if $I102, if_1740
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1740_end
  if_1740:
    find_lex $P122, "$found"
    unless_null $P122, vivify_712
    new $P122, "Undef"
  vivify_712:
    isfalse $I103, $P122
    new $P117, 'Integer'
    set $P117, $I103
  if_1740_end:
    unless $P117, loop1763_done
  loop1763_redo:
    .const 'Sub' $P1743 = "122_1316046719.21023" 
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
    unless_null $P118, vivify_738
    new $P118, "Undef"
  vivify_738:
    unless $P118, unless_1764
    set $P117, $P118
    goto unless_1764_end
  unless_1764:
.annotate 'line', 812
    new $P119, 'String'
    set $P119, "Could not find a proto for multi "
    find_lex $P120, "$name"
    unless_null $P120, vivify_739
    new $P120, "Undef"
  vivify_739:
    concat $P121, $P119, $P120
    concat $P122, $P121, ", and proto generation is NYI"
    die $P122
  unless_1764_end:
.annotate 'line', 782
    .return ($P117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1742"  :anon :subid("122_1316046719.21023") :outer("121_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 786
    .const 'Sub' $P1753 = "123_1316046719.21023" 
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
    unless_null $P125, vivify_713
    new $P125, "Undef"
  vivify_713:
    set $I104, $P125
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    find_lex $P128, "$?CLASS"
    getattribute $P1748, $P127, $P128, "@!mro"
    unless_null $P1748, vivify_714
    $P1748 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    set $P129, $P1748[$I104]
    unless_null $P129, vivify_715
    new $P129, "Undef"
  vivify_715:
    store_lex "$parent", $P129
.annotate 'line', 788
    find_lex $P125, "$parent"
    unless_null $P125, vivify_716
    new $P125, "Undef"
  vivify_716:
    get_how $P126, $P125
    find_lex $P127, "$parent"
    unless_null $P127, vivify_717
    new $P127, "Undef"
  vivify_717:
    $P128 = $P126."method_table"($P127)
    store_lex "%meths", $P128
.annotate 'line', 789
    find_lex $P125, "$name"
    unless_null $P125, vivify_718
    new $P125, "Undef"
  vivify_718:
    find_lex $P1749, "%meths"
    unless_null $P1749, vivify_719
    $P1749 = root_new ['parrot';'Hash']
  vivify_719:
    set $P126, $P1749[$P125]
    unless_null $P126, vivify_720
    new $P126, "Undef"
  vivify_720:
    store_lex "$dispatcher", $P126
.annotate 'line', 790
    find_lex $P125, "$dispatcher"
    unless_null $P125, vivify_721
    new $P125, "Undef"
  vivify_721:
    defined $I104, $P125
    unless $I104, if_1750_end
.annotate 'line', 793
    find_lex $P126, "$dispatcher"
    unless_null $P126, vivify_722
    new $P126, "Undef"
  vivify_722:
    is_dispatcher $I105, $P126
    if $I105, if_1751
.annotate 'line', 806
    new $P130, 'String'
    set $P130, "Could not find a proto for multi "
    find_lex $P131, "$name"
    unless_null $P131, vivify_723
    new $P131, "Undef"
  vivify_723:
    concat $P132, $P130, $P131
    concat $P133, $P132, " (it may exist, but an only is hiding it if so)"
    die $P133
.annotate 'line', 805
    goto if_1751_end
  if_1751:
.annotate 'line', 793
    .const 'Sub' $P1753 = "123_1316046719.21023" 
    capture_lex $P1753
    $P1753()
  if_1751_end:
  if_1750_end:
.annotate 'line', 809
    find_lex $P125, "$j"
    unless_null $P125, vivify_737
    new $P125, "Undef"
  vivify_737:
    add $P126, $P125, 1
    store_lex "$j", $P126
.annotate 'line', 786
    .return ($P126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1752"  :anon :subid("123_1316046719.21023") :outer("122_1316046719.21023")
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
    unless_null $P1758, vivify_724
    $P1758 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
.annotate 'line', 796
    find_lex $P129, "$code"
    unless_null $P129, vivify_725
    new $P129, "Undef"
  vivify_725:
    new $P130, "Float"
    assign $P130, 0
    set $I106, $P130
    find_lex $P1759, "@new_dispatchees"
    unless_null $P1759, vivify_726
    $P1759 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1759
  vivify_726:
    set $P1759[$I106], $P129
.annotate 'line', 797
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_727
    new $P129, "Undef"
  vivify_727:
    find_lex $P1760, "@new_dispatchees"
    unless_null $P1760, vivify_728
    $P1760 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    create_dispatch_and_add_candidates $P130, $P129, $P1760
    store_lex "$new_disp", $P130
.annotate 'line', 798
    find_lex $P129, "$dispatcher"
    unless_null $P129, vivify_729
    new $P129, "Undef"
  vivify_729:
    getprop $P130, "CLONE_CALLBACK", $P129
    store_lex "$clone_callback", $P130
.annotate 'line', 799
    find_lex $P129, "$clone_callback"
    unless_null $P129, vivify_730
    new $P129, "Undef"
  vivify_730:
    defined $I106, $P129
    unless $I106, if_1761_end
.annotate 'line', 800
    find_lex $P130, "$clone_callback"
    unless_null $P130, vivify_731
    new $P130, "Undef"
  vivify_731:
    find_lex $P131, "$dispatcher"
    unless_null $P131, vivify_732
    new $P131, "Undef"
  vivify_732:
    find_lex $P132, "$new_disp"
    unless_null $P132, vivify_733
    new $P132, "Undef"
  vivify_733:
    $P130($P131, $P132)
  if_1761_end:
.annotate 'line', 802
    find_lex $P129, "$new_disp"
    unless_null $P129, vivify_734
    new $P129, "Undef"
  vivify_734:
    find_lex $P130, "$name"
    unless_null $P130, vivify_735
    new $P130, "Undef"
  vivify_735:
    find_lex $P131, "self"
    nqp_decontainerize $P132, $P131
    find_lex $P133, "$?CLASS"
    getattribute $P1762, $P132, $P133, "%!methods"
    unless_null $P1762, vivify_736
    $P1762 = root_new ['parrot';'Hash']
    setattribute $P132, $P133, "%!methods", $P1762
  vivify_736:
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
.sub "publish_type_cache" :anon :subid("124_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1767
    .param pmc param_1768
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 912
    .const 'Sub' $P1780 = "126_1316046719.21023" 
    capture_lex $P1780
    .const 'Sub' $P1774 = "125_1316046719.21023" 
    capture_lex $P1774
    .lex "self", param_1767
    .lex "$obj", param_1768
.annotate 'line', 913
    $P1770 = root_new ['parrot';'ResizablePMCArray']
    set $P1769, $P1770
    .lex "@tc", $P1769
.annotate 'line', 912
    find_lex $P1771, "@tc"
    unless_null $P1771, vivify_745
    $P1771 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
.annotate 'line', 914
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1772, $P109, $P110, "@!mro"
    unless_null $P1772, vivify_746
    $P1772 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    defined $I100, $P1772
    unless $I100, for_undef_747
    iter $P107, $P1772
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1777_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1777_test:
    unless $P107, loop1777_done
    shift $P111, $P107
  loop1777_redo:
    .const 'Sub' $P1774 = "125_1316046719.21023" 
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
  for_undef_747:
.annotate 'line', 915
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1778, $P109, $P110, "@!done"
    unless_null $P1778, vivify_750
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_750:
    defined $I100, $P1778
    unless $I100, for_undef_751
    iter $P107, $P1778
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1783_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1783_test:
    unless $P107, loop1783_done
    shift $P111, $P107
  loop1783_redo:
    .const 'Sub' $P1780 = "126_1316046719.21023" 
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
  for_undef_751:
.annotate 'line', 916
    find_lex $P107, "$obj"
    unless_null $P107, vivify_754
    new $P107, "Undef"
  vivify_754:
    find_lex $P1784, "@tc"
    unless_null $P1784, vivify_755
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    publish_type_check_cache $P107, $P1784
.annotate 'line', 912
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1773"  :anon :subid("125_1316046719.21023") :outer("124_1316046719.21023")
    .param pmc param_1775
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 914
    .lex "$_", param_1775
    find_lex $P1776, "@tc"
    unless_null $P1776, vivify_748
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    find_lex $P112, "$_"
    unless_null $P112, vivify_749
    new $P112, "Undef"
  vivify_749:
    $P113 = $P1776."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1779"  :anon :subid("126_1316046719.21023") :outer("124_1316046719.21023")
    .param pmc param_1781
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 915
    .lex "$_", param_1781
    find_lex $P1782, "@tc"
    unless_null $P1782, vivify_752
    $P1782 = root_new ['parrot';'ResizablePMCArray']
  vivify_752:
    find_lex $P112, "$_"
    unless_null $P112, vivify_753
    new $P112, "Undef"
  vivify_753:
    $P113 = $P1782."push"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("127_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1786
    .param pmc param_1787
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 919
    .const 'Sub' $P1802 = "129_1316046719.21023" 
    capture_lex $P1802
    .const 'Sub' $P1796 = "128_1316046719.21023" 
    capture_lex $P1796
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
    unless_null $P1792, vivify_756
    $P1792 = root_new ['parrot';'Hash']
  vivify_756:
    find_lex $P1793, "@mro_reversed"
    unless_null $P1793, vivify_757
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
.annotate 'line', 924
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1794, $P109, $P110, "@!mro"
    unless_null $P1794, vivify_758
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I100, $P1794
    unless $I100, for_undef_759
    iter $P107, $P1794
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1799_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1799_test:
    unless $P107, loop1799_done
    shift $P111, $P107
  loop1799_redo:
    .const 'Sub' $P1796 = "128_1316046719.21023" 
    capture_lex $P1796
    $P1796($P111)
  loop1799_next:
    goto loop1799_test
  loop1799_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1799_next
    eq $P114, .CONTROL_LOOP_REDO, loop1799_redo
  loop1799_done:
    pop_eh 
  for_undef_759:
.annotate 'line', 927
    find_lex $P1800, "@mro_reversed"
    unless_null $P1800, vivify_762
    $P1800 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    defined $I100, $P1800
    unless $I100, for_undef_763
    iter $P107, $P1800
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1812_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1812_test:
    unless $P107, loop1812_done
    shift $P108, $P107
  loop1812_redo:
    .const 'Sub' $P1802 = "129_1316046719.21023" 
    capture_lex $P1802
    $P1802($P108)
  loop1812_next:
    goto loop1812_test
  loop1812_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1812_next
    eq $P111, .CONTROL_LOOP_REDO, loop1812_redo
  loop1812_done:
    pop_eh 
  for_undef_763:
.annotate 'line', 933
    find_lex $P107, "$obj"
    unless_null $P107, vivify_771
    new $P107, "Undef"
  vivify_771:
    find_lex $P1813, "%cache"
    unless_null $P1813, vivify_772
    $P1813 = root_new ['parrot';'Hash']
  vivify_772:
    publish_method_cache $P107, $P1813
.annotate 'line', 934
    find_lex $P107, "$obj"
    unless_null $P107, vivify_773
    new $P107, "Undef"
  vivify_773:
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    set_method_cache_authoritativeness $P107, $I100
.annotate 'line', 919
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1795"  :anon :subid("128_1316046719.21023") :outer("127_1316046719.21023")
    .param pmc param_1797
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 924
    .lex "$_", param_1797
.annotate 'line', 925
    find_lex $P1798, "@mro_reversed"
    unless_null $P1798, vivify_760
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    find_lex $P112, "$_"
    unless_null $P112, vivify_761
    new $P112, "Undef"
  vivify_761:
    $P113 = $P1798."unshift"($P112)
.annotate 'line', 924
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1801"  :anon :subid("129_1316046719.21023") :outer("127_1316046719.21023")
    .param pmc param_1805
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 927
    .const 'Sub' $P1808 = "130_1316046719.21023" 
    capture_lex $P1808
.annotate 'line', 928
    $P1804 = root_new ['parrot';'Hash']
    set $P1803, $P1804
    .lex "%methods", $P1803
    .lex "$_", param_1805
    find_lex $P109, "$_"
    unless_null $P109, vivify_764
    new $P109, "Undef"
  vivify_764:
    get_how $P110, $P109
    find_lex $P111, "$_"
    unless_null $P111, vivify_765
    new $P111, "Undef"
  vivify_765:
    $P112 = $P110."method_table"($P111)
    store_lex "%methods", $P112
.annotate 'line', 929
    find_lex $P1806, "%methods"
    unless_null $P1806, vivify_766
    $P1806 = root_new ['parrot';'Hash']
  vivify_766:
    defined $I101, $P1806
    unless $I101, for_undef_767
    iter $P109, $P1806
    new $P111, 'ExceptionHandler'
    set_label $P111, loop1811_handler
    $P111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P111
  loop1811_test:
    unless $P109, loop1811_done
    shift $P110, $P109
  loop1811_redo:
    .const 'Sub' $P1808 = "130_1316046719.21023" 
    capture_lex $P1808
    $P1808($P110)
  loop1811_next:
    goto loop1811_test
  loop1811_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1811_next
    eq $P113, .CONTROL_LOOP_REDO, loop1811_redo
  loop1811_done:
    pop_eh 
  for_undef_767:
.annotate 'line', 927
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1807"  :anon :subid("130_1316046719.21023") :outer("129_1316046719.21023")
    .param pmc param_1809
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 929
    .lex "$_", param_1809
.annotate 'line', 930
    find_lex $P111, "$_"
    unless_null $P111, vivify_768
    new $P111, "Undef"
  vivify_768:
    $P112 = $P111."value"()
    find_lex $P113, "$_"
    unless_null $P113, vivify_769
    new $P113, "Undef"
  vivify_769:
    $P114 = $P113."key"()
    find_lex $P1810, "%cache"
    unless_null $P1810, vivify_770
    $P1810 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1810
  vivify_770:
    set $P1810[$P114], $P112
.annotate 'line', 929
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "publish_boolification_spec" :anon :subid("131_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 937
    .lex "self", param_1815
    .lex "$obj", param_1816
.annotate 'line', 938
    new $P107, "Undef"
    set $P1817, $P107
    .lex "$bool_meth", $P1817
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_774
    new $P109, "Undef"
  vivify_774:
    $P110 = $P108."find_method"($P109, "Bool")
    store_lex "$bool_meth", $P110
.annotate 'line', 939
    find_lex $P109, "$bool_meth"
    unless_null $P109, vivify_775
    new $P109, "Undef"
  vivify_775:
    defined $I100, $P109
    if $I100, if_1818
.annotate 'line', 943
    find_lex $P111, "$obj"
    unless_null $P111, vivify_776
    new $P111, "Undef"
  vivify_776:
    new $P112, "Float"
    assign $P112, 5
    set $I101, $P112
    null $P113
    set_boolification_spec $P111, $I101, $P113
.annotate 'line', 942
    set $P108, $P111
.annotate 'line', 939
    goto if_1818_end
  if_1818:
.annotate 'line', 940
    find_lex $P110, "$obj"
    unless_null $P110, vivify_777
    new $P110, "Undef"
  vivify_777:
    new $P111, "Float"
    assign $P111, 0
    set $I101, $P111
    find_lex $P112, "$bool_meth"
    unless_null $P112, vivify_778
    new $P112, "Undef"
  vivify_778:
    set_boolification_spec $P110, $I101, $P112
.annotate 'line', 939
    set $P108, $P110
  if_1818_end:
.annotate 'line', 937
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("132_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1820
    .param pmc param_1821
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 947
    .const 'Sub' $P1827 = "133_1316046719.21023" 
    capture_lex $P1827
    .lex "self", param_1820
    .lex "$obj", param_1821
.annotate 'line', 948
    $P1823 = root_new ['parrot';'Hash']
    set $P1822, $P1823
    .lex "%mapping", $P1822
.annotate 'line', 947
    find_lex $P1824, "%mapping"
    unless_null $P1824, vivify_779
    $P1824 = root_new ['parrot';'Hash']
  vivify_779:
.annotate 'line', 949
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1825, $P109, $P110, "@!mro"
    unless_null $P1825, vivify_780
    $P1825 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    defined $I100, $P1825
    unless $I100, for_undef_781
    iter $P107, $P1825
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1839_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1839_test:
    unless $P107, loop1839_done
    shift $P111, $P107
  loop1839_redo:
    .const 'Sub' $P1827 = "133_1316046719.21023" 
    capture_lex $P1827
    $P1827($P111)
  loop1839_next:
    goto loop1839_test
  loop1839_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1839_next
    eq $P114, .CONTROL_LOOP_REDO, loop1839_redo
  loop1839_done:
    pop_eh 
  for_undef_781:
.annotate 'line', 957
    find_lex $P1841, "%mapping"
    unless_null $P1841, vivify_792
    $P1841 = root_new ['parrot';'Hash']
  vivify_792:
    set $N100, $P1841
    if $N100, if_1840
    new $P107, 'Float'
    set $P107, $N100
    goto if_1840_end
  if_1840:
.annotate 'line', 958
    find_lex $P108, "$obj"
    unless_null $P108, vivify_793
    new $P108, "Undef"
  vivify_793:
    find_lex $P1842, "%mapping"
    unless_null $P1842, vivify_794
    $P1842 = root_new ['parrot';'Hash']
  vivify_794:
    stable_publish_vtable_mapping $P108, $P1842
  if_1840_end:
.annotate 'line', 947
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1826"  :anon :subid("133_1316046719.21023") :outer("132_1316046719.21023")
    .param pmc param_1830
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 949
    .const 'Sub' $P1833 = "134_1316046719.21023" 
    capture_lex $P1833
.annotate 'line', 950
    $P1829 = root_new ['parrot';'Hash']
    set $P1828, $P1829
    .lex "%map", $P1828
    .lex "$_", param_1830
    find_lex $P112, "$_"
    unless_null $P112, vivify_782
    new $P112, "Undef"
  vivify_782:
    get_how $P113, $P112
    find_lex $P114, "$_"
    unless_null $P114, vivify_783
    new $P114, "Undef"
  vivify_783:
    $P115 = $P113."parrot_vtable_mappings"($P114, 1 :named("local"))
    store_lex "%map", $P115
.annotate 'line', 951
    find_lex $P1831, "%map"
    unless_null $P1831, vivify_784
    $P1831 = root_new ['parrot';'Hash']
  vivify_784:
    defined $I101, $P1831
    unless $I101, for_undef_785
    iter $P112, $P1831
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1838_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1838_test:
    unless $P112, loop1838_done
    shift $P113, $P112
  loop1838_redo:
    .const 'Sub' $P1833 = "134_1316046719.21023" 
    capture_lex $P1833
    $P1833($P113)
  loop1838_next:
    goto loop1838_test
  loop1838_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1838_next
    eq $P116, .CONTROL_LOOP_REDO, loop1838_redo
  loop1838_done:
    pop_eh 
  for_undef_785:
.annotate 'line', 949
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1832"  :anon :subid("134_1316046719.21023") :outer("133_1316046719.21023")
    .param pmc param_1834
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 951
    .lex "$_", param_1834
.annotate 'line', 952
    find_lex $P115, "$_"
    unless_null $P115, vivify_786
    new $P115, "Undef"
  vivify_786:
    $P116 = $P115."key"()
    find_lex $P1836, "%mapping"
    unless_null $P1836, vivify_787
    $P1836 = root_new ['parrot';'Hash']
  vivify_787:
    set $P117, $P1836[$P116]
    unless_null $P117, vivify_788
    new $P117, "Undef"
  vivify_788:
    unless $P117, unless_1835
    set $P114, $P117
    goto unless_1835_end
  unless_1835:
.annotate 'line', 953
    find_lex $P118, "$_"
    unless_null $P118, vivify_789
    new $P118, "Undef"
  vivify_789:
    $P119 = $P118."value"()
    find_lex $P120, "$_"
    unless_null $P120, vivify_790
    new $P120, "Undef"
  vivify_790:
    $P121 = $P120."key"()
    find_lex $P1837, "%mapping"
    unless_null $P1837, vivify_791
    $P1837 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1837
  vivify_791:
    set $P1837[$P121], $P119
.annotate 'line', 952
    set $P114, $P119
  unless_1835_end:
.annotate 'line', 951
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("135_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1844
    .param pmc param_1845
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 962
    .const 'Sub' $P1851 = "136_1316046719.21023" 
    capture_lex $P1851
    .lex "self", param_1844
    .lex "$obj", param_1845
.annotate 'line', 963
    $P1847 = root_new ['parrot';'Hash']
    set $P1846, $P1847
    .lex "%mapping", $P1846
.annotate 'line', 962
    find_lex $P1848, "%mapping"
    unless_null $P1848, vivify_795
    $P1848 = root_new ['parrot';'Hash']
  vivify_795:
.annotate 'line', 964
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1849, $P109, $P110, "@!mro"
    unless_null $P1849, vivify_796
    $P1849 = root_new ['parrot';'ResizablePMCArray']
  vivify_796:
    defined $I100, $P1849
    unless $I100, for_undef_797
    iter $P107, $P1849
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1863_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1863_test:
    unless $P107, loop1863_done
    shift $P111, $P107
  loop1863_redo:
    .const 'Sub' $P1851 = "136_1316046719.21023" 
    capture_lex $P1851
    $P1851($P111)
  loop1863_next:
    goto loop1863_test
  loop1863_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1863_next
    eq $P114, .CONTROL_LOOP_REDO, loop1863_redo
  loop1863_done:
    pop_eh 
  for_undef_797:
.annotate 'line', 972
    find_lex $P1865, "%mapping"
    unless_null $P1865, vivify_808
    $P1865 = root_new ['parrot';'Hash']
  vivify_808:
    set $N100, $P1865
    if $N100, if_1864
    new $P107, 'Float'
    set $P107, $N100
    goto if_1864_end
  if_1864:
.annotate 'line', 973
    find_lex $P108, "$obj"
    unless_null $P108, vivify_809
    new $P108, "Undef"
  vivify_809:
    find_lex $P1866, "%mapping"
    unless_null $P1866, vivify_810
    $P1866 = root_new ['parrot';'Hash']
  vivify_810:
    stable_publish_vtable_handler_mapping $P108, $P1866
  if_1864_end:
.annotate 'line', 962
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1850"  :anon :subid("136_1316046719.21023") :outer("135_1316046719.21023")
    .param pmc param_1854
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 964
    .const 'Sub' $P1857 = "137_1316046719.21023" 
    capture_lex $P1857
.annotate 'line', 965
    $P1853 = root_new ['parrot';'Hash']
    set $P1852, $P1853
    .lex "%map", $P1852
    .lex "$_", param_1854
    find_lex $P112, "$_"
    unless_null $P112, vivify_798
    new $P112, "Undef"
  vivify_798:
    get_how $P113, $P112
    find_lex $P114, "$_"
    unless_null $P114, vivify_799
    new $P114, "Undef"
  vivify_799:
    $P115 = $P113."parrot_vtable_handler_mappings"($P114, 1 :named("local"))
    store_lex "%map", $P115
.annotate 'line', 966
    find_lex $P1855, "%map"
    unless_null $P1855, vivify_800
    $P1855 = root_new ['parrot';'Hash']
  vivify_800:
    defined $I101, $P1855
    unless $I101, for_undef_801
    iter $P112, $P1855
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1862_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1862_test:
    unless $P112, loop1862_done
    shift $P113, $P112
  loop1862_redo:
    .const 'Sub' $P1857 = "137_1316046719.21023" 
    capture_lex $P1857
    $P1857($P113)
  loop1862_next:
    goto loop1862_test
  loop1862_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1862_next
    eq $P116, .CONTROL_LOOP_REDO, loop1862_redo
  loop1862_done:
    pop_eh 
  for_undef_801:
.annotate 'line', 964
    .return ($P112)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1856"  :anon :subid("137_1316046719.21023") :outer("136_1316046719.21023")
    .param pmc param_1858
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 966
    .lex "$_", param_1858
.annotate 'line', 967
    find_lex $P115, "$_"
    unless_null $P115, vivify_802
    new $P115, "Undef"
  vivify_802:
    $P116 = $P115."key"()
    find_lex $P1860, "%mapping"
    unless_null $P1860, vivify_803
    $P1860 = root_new ['parrot';'Hash']
  vivify_803:
    set $P117, $P1860[$P116]
    unless_null $P117, vivify_804
    new $P117, "Undef"
  vivify_804:
    unless $P117, unless_1859
    set $P114, $P117
    goto unless_1859_end
  unless_1859:
.annotate 'line', 968
    find_lex $P118, "$_"
    unless_null $P118, vivify_805
    new $P118, "Undef"
  vivify_805:
    $P119 = $P118."value"()
    find_lex $P120, "$_"
    unless_null $P120, vivify_806
    new $P120, "Undef"
  vivify_806:
    $P121 = $P120."key"()
    find_lex $P1861, "%mapping"
    unless_null $P1861, vivify_807
    $P1861 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1861
  vivify_807:
    set $P1861[$P121], $P119
.annotate 'line', 967
    set $P114, $P119
  unless_1859_end:
.annotate 'line', 966
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("138_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1868
    .param pmc param_1869
    .param pmc param_1870 :optional :named("local")
    .param int has_param_1870 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 980
    .lex "self", param_1868
    .lex "$obj", param_1869
    if has_param_1870, optparam_811
    new $P107, "Undef"
    set param_1870, $P107
  optparam_811:
    .lex "$local", param_1870
.annotate 'line', 981
    find_lex $P109, "$local"
    unless_null $P109, vivify_812
    new $P109, "Undef"
  vivify_812:
    if $P109, if_1871
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    getattribute $P1873, $P114, $P115, "@!mro"
    unless_null $P1873, vivify_813
    $P1873 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
    set $P108, $P1873
    goto if_1871_end
  if_1871:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1872, $P111, $P112, "@!parents"
    unless_null $P1872, vivify_814
    $P1872 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    set $P108, $P1872
  if_1871_end:
.annotate 'line', 980
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "mro" :anon :subid("139_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1875
    .param pmc param_1876
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 984
    .lex "self", param_1875
    .lex "$obj", param_1876
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1877, $P108, $P109, "@!mro"
    unless_null $P1877, vivify_815
    $P1877 = root_new ['parrot';'ResizablePMCArray']
  vivify_815:
    .return ($P1877)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("140_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1879
    .param pmc param_1880
    .param pmc param_1881 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 988
    .lex "self", param_1879
    .lex "$obj", param_1880
    .lex "$local", param_1881
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1882, $P108, $P109, "@!roles"
    unless_null $P1882, vivify_816
    $P1882 = root_new ['parrot';'ResizablePMCArray']
  vivify_816:
    .return ($P1882)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("141_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1884
    .param pmc param_1885
    .param pmc param_1886 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 992
    .const 'Sub' $P1892 = "142_1316046719.21023" 
    capture_lex $P1892
    .lex "self", param_1884
    .lex "$obj", param_1885
    .lex "$local", param_1886
.annotate 'line', 993
    $P1888 = root_new ['parrot';'ResizablePMCArray']
    set $P1887, $P1888
    .lex "@meths", $P1887
.annotate 'line', 992
    find_lex $P1889, "@meths"
    unless_null $P1889, vivify_817
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
.annotate 'line', 994
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1890, $P109, $P110, "%!methods"
    unless_null $P1890, vivify_818
    $P1890 = root_new ['parrot';'Hash']
  vivify_818:
    defined $I100, $P1890
    unless $I100, for_undef_819
    iter $P107, $P1890
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1895_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1895_test:
    unless $P107, loop1895_done
    shift $P111, $P107
  loop1895_redo:
    .const 'Sub' $P1892 = "142_1316046719.21023" 
    capture_lex $P1892
    $P1892($P111)
  loop1895_next:
    goto loop1895_test
  loop1895_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1895_next
    eq $P113, .CONTROL_LOOP_REDO, loop1895_redo
  loop1895_done:
    pop_eh 
  for_undef_819:
.annotate 'line', 992
    find_lex $P1896, "@meths"
    unless_null $P1896, vivify_822
    $P1896 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    .return ($P1896)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1891"  :anon :subid("142_1316046719.21023") :outer("141_1316046719.21023")
    .param pmc param_1893
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 994
    .lex "$_", param_1893
.annotate 'line', 995
    find_lex $P1894, "@meths"
    unless_null $P1894, vivify_820
    $P1894 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    find_lex $P112, "$_"
    unless_null $P112, vivify_821
    new $P112, "Undef"
  vivify_821:
    $P113 = $P112."value"()
    $P114 = $P1894."push"($P113)
.annotate 'line', 994
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("143_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1898
    .param pmc param_1899
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1000
    .lex "self", param_1898
    .lex "$obj", param_1899
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1900, $P108, $P109, "%!methods"
    unless_null $P1900, vivify_823
    $P1900 = root_new ['parrot';'Hash']
  vivify_823:
    .return ($P1900)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("144_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1902
    .param pmc param_1903
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1004
    .lex "self", param_1902
    .lex "$obj", param_1903
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!name"
    unless_null $P110, vivify_824
    new $P110, "Undef"
  vivify_824:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("145_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1905
    .param pmc param_1906
    .param pmc param_1907 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1008
    .const 'Sub' $P1913 = "146_1316046719.21023" 
    capture_lex $P1913
    .lex "self", param_1905
    .lex "$obj", param_1906
    .lex "$local", param_1907
.annotate 'line', 1009
    $P1909 = root_new ['parrot';'ResizablePMCArray']
    set $P1908, $P1909
    .lex "@attrs", $P1908
.annotate 'line', 1008
    find_lex $P1910, "@attrs"
    unless_null $P1910, vivify_825
    $P1910 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
.annotate 'line', 1010
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1911, $P109, $P110, "%!attributes"
    unless_null $P1911, vivify_826
    $P1911 = root_new ['parrot';'Hash']
  vivify_826:
    defined $I100, $P1911
    unless $I100, for_undef_827
    iter $P107, $P1911
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1916_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1916_test:
    unless $P107, loop1916_done
    shift $P111, $P107
  loop1916_redo:
    .const 'Sub' $P1913 = "146_1316046719.21023" 
    capture_lex $P1913
    $P1913($P111)
  loop1916_next:
    goto loop1916_test
  loop1916_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1916_next
    eq $P113, .CONTROL_LOOP_REDO, loop1916_redo
  loop1916_done:
    pop_eh 
  for_undef_827:
.annotate 'line', 1008
    find_lex $P1917, "@attrs"
    unless_null $P1917, vivify_830
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    .return ($P1917)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1912"  :anon :subid("146_1316046719.21023") :outer("145_1316046719.21023")
    .param pmc param_1914
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1010
    .lex "$_", param_1914
.annotate 'line', 1011
    find_lex $P1915, "@attrs"
    unless_null $P1915, vivify_828
    $P1915 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    find_lex $P112, "$_"
    unless_null $P112, vivify_829
    new $P112, "Undef"
  vivify_829:
    $P113 = $P112."value"()
    $P114 = $P1915."push"($P113)
.annotate 'line', 1010
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("147_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1919
    .param pmc param_1920
    .param pmc param_1921 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1016
    .lex "self", param_1919
    .lex "$obj", param_1920
    .lex "$local", param_1921
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1922, $P108, $P109, "%!parrot_vtable_mapping"
    unless_null $P1922, vivify_831
    $P1922 = root_new ['parrot';'Hash']
  vivify_831:
    .return ($P1922)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("148_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1924
    .param pmc param_1925
    .param pmc param_1926 :named("local")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1020
    .lex "self", param_1924
    .lex "$obj", param_1925
    .lex "$local", param_1926
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P1927, $P108, $P109, "%!parrot_vtable_handler_mapping"
    unless_null $P1927, vivify_832
    $P1927 = root_new ['parrot';'Hash']
  vivify_832:
    .return ($P1927)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("149_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1931
    .param pmc param_1932
    .param pmc param_1933
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1028
    new $P1930, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1930, control_1929
    push_eh $P1930
    .lex "self", param_1931
    .lex "$obj", param_1932
    .lex "$check", param_1933
.annotate 'line', 1029
    new $P107, "Undef"
    set $P1934, $P107
    .lex "$check-class", $P1934
.annotate 'line', 1030
    new $P108, "Undef"
    set $P1935, $P108
    .lex "$i", $P1935
.annotate 'line', 1029
    find_lex $P109, "$check"
    unless_null $P109, vivify_833
    new $P109, "Undef"
  vivify_833:
    get_what $P110, $P109
    store_lex "$check-class", $P110
.annotate 'line', 1030
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1936, $P110, $P111, "@!mro"
    unless_null $P1936, vivify_834
    $P1936 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $N100, $P1936
    new $P112, 'Float'
    set $P112, $N100
    store_lex "$i", $P112
.annotate 'line', 1031
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1939_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1939_test:
    find_lex $P109, "$i"
    unless_null $P109, vivify_835
    new $P109, "Undef"
  vivify_835:
    set $N100, $P109
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1939_done
  loop1939_redo:
.annotate 'line', 1032
    find_lex $P110, "$i"
    unless_null $P110, vivify_836
    new $P110, "Undef"
  vivify_836:
    sub $P111, $P110, 1
    store_lex "$i", $P111
.annotate 'line', 1033
    find_lex $P110, "$i"
    unless_null $P110, vivify_837
    new $P110, "Undef"
  vivify_837:
    set $I101, $P110
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P1938, $P112, $P113, "@!mro"
    unless_null $P1938, vivify_838
    $P1938 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $P114, $P1938[$I101]
    unless_null $P114, vivify_839
    new $P114, "Undef"
  vivify_839:
    find_lex $P115, "$check-class"
    unless_null $P115, vivify_840
    new $P115, "Undef"
  vivify_840:
    issame $I102, $P114, $P115
    unless $I102, if_1937_end
.annotate 'line', 1034
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1937_end:
  loop1939_next:
.annotate 'line', 1031
    goto loop1939_test
  loop1939_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1939_next
    eq $P111, .CONTROL_LOOP_REDO, loop1939_redo
  loop1939_done:
    pop_eh 
.annotate 'line', 1037
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1028
    .return ()
  control_1929:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("150_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1943
    .param pmc param_1944
    .param pmc param_1945
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1040
    new $P1942, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1942, control_1941
    push_eh $P1942
    .lex "self", param_1943
    .lex "$obj", param_1944
    .lex "$check", param_1945
.annotate 'line', 1041
    new $P107, "Undef"
    set $P1946, $P107
    .lex "$i", $P1946
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1947, $P109, $P110, "@!done"
    unless_null $P1947, vivify_841
    $P1947 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N100, $P1947
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$i", $P111
.annotate 'line', 1042
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1950_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1950_test:
    find_lex $P108, "$i"
    unless_null $P108, vivify_842
    new $P108, "Undef"
  vivify_842:
    set $N100, $P108
    set $N101, 0
    isgt $I100, $N100, $N101
    unless $I100, loop1950_done
  loop1950_redo:
.annotate 'line', 1043
    find_lex $P109, "$i"
    unless_null $P109, vivify_843
    new $P109, "Undef"
  vivify_843:
    sub $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 1044
    find_lex $P109, "$i"
    unless_null $P109, vivify_844
    new $P109, "Undef"
  vivify_844:
    set $I101, $P109
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P1949, $P111, $P112, "@!done"
    unless_null $P1949, vivify_845
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P113, $P1949[$I101]
    unless_null $P113, vivify_846
    new $P113, "Undef"
  vivify_846:
    find_lex $P114, "$check"
    unless_null $P114, vivify_847
    new $P114, "Undef"
  vivify_847:
    issame $I102, $P113, $P114
    unless $I102, if_1948_end
.annotate 'line', 1045
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Float"
    assign $P116, 1
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1948_end:
  loop1950_next:
.annotate 'line', 1042
    goto loop1950_test
  loop1950_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1950_next
    eq $P110, .CONTROL_LOOP_REDO, loop1950_redo
  loop1950_done:
    pop_eh 
.annotate 'line', 1048
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    new $P109, "Float"
    assign $P109, 0
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1040
    .return ()
  control_1941:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("151_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1954
    .param pmc param_1955
    .param pmc param_1956
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1051
    .const 'Sub' $P1959 = "152_1316046719.21023" 
    capture_lex $P1959
    new $P1953, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1953, control_1952
    push_eh $P1953
    .lex "self", param_1954
    .lex "$obj", param_1955
    .lex "$name", param_1956
.annotate 'line', 1052
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P1957, $P109, $P110, "@!mro"
    unless_null $P1957, vivify_848
    $P1957 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    defined $I100, $P1957
    unless $I100, for_undef_849
    iter $P107, $P1957
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1966_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1966_test:
    unless $P107, loop1966_done
    shift $P111, $P107
  loop1966_redo:
    .const 'Sub' $P1959 = "152_1316046719.21023" 
    capture_lex $P1959
    $P1959($P111)
  loop1966_next:
    goto loop1966_test
  loop1966_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1966_next
    eq $P115, .CONTROL_LOOP_REDO, loop1966_redo
  loop1966_done:
    pop_eh 
  for_undef_849:
.annotate 'line', 1059
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Float"
    assign $P108, 0
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1051
    .return ()
  control_1952:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1958"  :anon :subid("152_1316046719.21023") :outer("151_1316046719.21023")
    .param pmc param_1963
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1053
    $P1961 = root_new ['parrot';'Hash']
    set $P1960, $P1961
    .lex "%meths", $P1960
.annotate 'line', 1054
    new $P112, "Undef"
    set $P1962, $P112
    .lex "$can", $P1962
    .lex "$_", param_1963
.annotate 'line', 1053
    find_lex $P113, "$_"
    unless_null $P113, vivify_850
    new $P113, "Undef"
  vivify_850:
    get_how $P114, $P113
    find_lex $P115, "$obj"
    unless_null $P115, vivify_851
    new $P115, "Undef"
  vivify_851:
    $P116 = $P114."method_table"($P115)
    store_lex "%meths", $P116
.annotate 'line', 1054
    find_lex $P113, "$name"
    unless_null $P113, vivify_852
    new $P113, "Undef"
  vivify_852:
    find_lex $P1964, "%meths"
    unless_null $P1964, vivify_853
    $P1964 = root_new ['parrot';'Hash']
  vivify_853:
    set $P114, $P1964[$P113]
    unless_null $P114, vivify_854
    new $P114, "Undef"
  vivify_854:
    store_lex "$can", $P114
.annotate 'line', 1055
    find_lex $P114, "$can"
    unless_null $P114, vivify_855
    new $P114, "Undef"
  vivify_855:
    defined $I101, $P114
    if $I101, if_1965
    new $P113, 'Integer'
    set $P113, $I101
    goto if_1965_end
  if_1965:
.annotate 'line', 1056
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    find_lex $P116, "$can"
    unless_null $P116, vivify_856
    new $P116, "Undef"
  vivify_856:
    setattribute $P115, 'payload', $P116
    throw $P115
  if_1965_end:
.annotate 'line', 1052
    .return ($P113)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("153_1316046719.21023") :outer("90_1316046719.21023")
    .param pmc param_1970
    .param pmc param_1971
    .param pmc param_1972
    .param pmc param_1973 :optional :named("no_fallback")
    .param int has_param_1973 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1065
    .const 'Sub' $P1976 = "154_1316046719.21023" 
    capture_lex $P1976
    new $P1969, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1969, control_1968
    push_eh $P1969
    .lex "self", param_1970
    .lex "$obj", param_1971
    .lex "$name", param_1972
    if has_param_1973, optparam_857
    new $P107, "Undef"
    set param_1973, $P107
  optparam_857:
    .lex "$no_fallback", param_1973
.annotate 'line', 1066
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1974, $P110, $P111, "@!mro"
    unless_null $P1974, vivify_858
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_858:
    defined $I100, $P1974
    unless $I100, for_undef_859
    iter $P108, $P1974
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1983_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1983_test:
    unless $P108, loop1983_done
    shift $P112, $P108
  loop1983_redo:
    .const 'Sub' $P1976 = "154_1316046719.21023" 
    capture_lex $P1976
    $P1976($P112)
  loop1983_next:
    goto loop1983_test
  loop1983_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1983_next
    eq $P116, .CONTROL_LOOP_REDO, loop1983_redo
  loop1983_done:
    pop_eh 
  for_undef_859:
.annotate 'line', 1073
    null $P108
.annotate 'line', 1065
    .return ($P108)
  control_1968:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1975"  :anon :subid("154_1316046719.21023") :outer("153_1316046719.21023")
    .param pmc param_1980
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1067
    $P1978 = root_new ['parrot';'Hash']
    set $P1977, $P1978
    .lex "%meths", $P1977
.annotate 'line', 1068
    new $P113, "Undef"
    set $P1979, $P113
    .lex "$found", $P1979
    .lex "$_", param_1980
.annotate 'line', 1067
    find_lex $P114, "$_"
    unless_null $P114, vivify_860
    new $P114, "Undef"
  vivify_860:
    get_how $P115, $P114
    find_lex $P116, "$obj"
    unless_null $P116, vivify_861
    new $P116, "Undef"
  vivify_861:
    $P117 = $P115."method_table"($P116)
    store_lex "%meths", $P117
.annotate 'line', 1068
    find_lex $P114, "$name"
    unless_null $P114, vivify_862
    new $P114, "Undef"
  vivify_862:
    find_lex $P1981, "%meths"
    unless_null $P1981, vivify_863
    $P1981 = root_new ['parrot';'Hash']
  vivify_863:
    set $P115, $P1981[$P114]
    unless_null $P115, vivify_864
    new $P115, "Undef"
  vivify_864:
    store_lex "$found", $P115
.annotate 'line', 1069
    find_lex $P115, "$found"
    unless_null $P115, vivify_865
    new $P115, "Undef"
  vivify_865:
    defined $I101, $P115
    if $I101, if_1982
    new $P114, 'Integer'
    set $P114, $I101
    goto if_1982_end
  if_1982:
.annotate 'line', 1070
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    find_lex $P117, "$found"
    unless_null $P117, vivify_866
    new $P117, "Undef"
  vivify_866:
    setattribute $P116, 'payload', $P117
    throw $P116
  if_1982_end:
.annotate 'line', 1066
    .return ($P114)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1985"  :subid("155_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1078
    .const 'Sub' $P2022 = "164_1316046719.21023" 
    capture_lex $P2022
    .const 'Sub' $P2019 = "163_1316046719.21023" 
    capture_lex $P2019
    .const 'Sub' $P2015 = "162_1316046719.21023" 
    capture_lex $P2015
    .const 'Sub' $P2010 = "161_1316046719.21023" 
    capture_lex $P2010
    .const 'Sub' $P2005 = "160_1316046719.21023" 
    capture_lex $P2005
    .const 'Sub' $P1999 = "159_1316046719.21023" 
    capture_lex $P1999
    .const 'Sub' $P1996 = "158_1316046719.21023" 
    capture_lex $P1996
    .const 'Sub' $P1992 = "157_1316046719.21023" 
    capture_lex $P1992
    .const 'Sub' $P1990 = "156_1316046719.21023" 
    capture_lex $P1990
.annotate 'line', 1082
    new $P100, "Undef"
    set $P1987, $P100
    .lex "$archetypes", $P1987
    .lex "$?PACKAGE", $P1988
    .lex "$?CLASS", $P1989
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"(1 :named("nominal"))
    store_lex "$archetypes", $P102
.annotate 'line', 1123
    .const 'Sub' $P2022 = "164_1316046719.21023" 
    newclosure $P2025, $P2022
.annotate 'line', 1078
    .return ($P2025)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "archetypes" :anon :subid("156_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_1991
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1083
    .lex "self", param_1991
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_867
    new $P101, "Undef"
  vivify_867:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("157_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_1993
    .param pmc param_1994 :optional :named("name")
    .param int has_param_1994 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1087
    .lex "self", param_1993
    if has_param_1994, optparam_868
    new $P101, "Undef"
    set param_1994, $P101
  optparam_868:
    .lex "$name", param_1994
.annotate 'line', 1088
    new $P102, "Undef"
    set $P1995, $P102
    .lex "$obj", $P1995
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1089
    find_lex $P103, "$obj"
    unless_null $P103, vivify_869
    new $P103, "Undef"
  vivify_869:
    find_lex $P104, "$name"
    unless_null $P104, vivify_870
    new $P104, "Undef"
  vivify_870:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1087
    find_lex $P103, "$obj"
    unless_null $P103, vivify_871
    new $P103, "Undef"
  vivify_871:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("158_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_1997
    .param pmc param_1998 :optional :named("name")
    .param int has_param_1998 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1093
    .lex "self", param_1997
    if has_param_1998, optparam_872
    new $P101, "Undef"
    set param_1998, $P101
  optparam_872:
    .lex "$name", param_1998
.annotate 'line', 1094
    find_lex $P102, "$name"
    unless_null $P102, vivify_873
    new $P102, "Undef"
  vivify_873:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!name", $P102
.annotate 'line', 1093
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("159_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2000
    .param pmc param_2002 :named("repr")
    .param pmc param_2001 :optional :named("name")
    .param int has_param_2001 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1100
    .lex "self", param_2000
    if has_param_2001, optparam_874
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2001, $P101
  optparam_874:
    .lex "$name", param_2001
    .lex "$repr", param_2002
.annotate 'line', 1101
    new $P102, "Undef"
    set $P2003, $P102
    .lex "$metaclass", $P2003
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_875
    new $P104, "Undef"
  vivify_875:
    $P105 = $P103."new"($P104 :named("name"))
    store_lex "$metaclass", $P105
.annotate 'line', 1103
    find_lex $P103, "$metaclass"
    unless_null $P103, vivify_876
    new $P103, "Undef"
  vivify_876:
    find_lex $P104, "$repr"
    unless_null $P104, vivify_877
    new $P104, "Undef"
  vivify_877:
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2004 = root_new ['parrot';'Hash']
    set_who $P105, $P2004
.annotate 'line', 1100
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("160_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2006
    .param pmc param_2007
    .param pmc param_2008
    .param pmc param_2009
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1107
    .lex "self", param_2006
    .lex "$obj", param_2007
    .lex "$name", param_2008
    .lex "$code_obj", param_2009
.annotate 'line', 1108
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1107
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("161_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2011
    .param pmc param_2012
    .param pmc param_2013
    .param pmc param_2014
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1111
    .lex "self", param_2011
    .lex "$obj", param_2012
    .lex "$name", param_2013
    .lex "$code_obj", param_2014
.annotate 'line', 1112
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1111
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("162_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2016
    .param pmc param_2017
    .param pmc param_2018
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1115
    .lex "self", param_2016
    .lex "$obj", param_2017
    .lex "$meta_attr", param_2018
.annotate 'line', 1116
    die "Native types may not have attributes"
.annotate 'line', 1115
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("163_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2020
    .param pmc param_2021
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1119
    .lex "self", param_2020
    .lex "$obj", param_2021
.annotate 'line', 1120
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!composed", $P101
.annotate 'line', 1119
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("164_1316046719.21023") :outer("155_1316046719.21023")
    .param pmc param_2023
    .param pmc param_2024
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1123
    .lex "self", param_2023
    .lex "$obj", param_2024
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_878
    new $P104, "Undef"
  vivify_878:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2026"  :subid("165_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1129
    .const 'Sub' $P2075 = "176_1316046719.21023" 
    capture_lex $P2075
    .const 'Sub' $P2072 = "175_1316046719.21023" 
    capture_lex $P2072
    .const 'Sub' $P2069 = "174_1316046719.21023" 
    capture_lex $P2069
    .const 'Sub' $P2067 = "173_1316046719.21023" 
    capture_lex $P2067
    .const 'Sub' $P2065 = "172_1316046719.21023" 
    capture_lex $P2065
    .const 'Sub' $P2062 = "171_1316046719.21023" 
    capture_lex $P2062
    .const 'Sub' $P2060 = "170_1316046719.21023" 
    capture_lex $P2060
    .const 'Sub' $P2054 = "169_1316046719.21023" 
    capture_lex $P2054
    .const 'Sub' $P2046 = "168_1316046719.21023" 
    capture_lex $P2046
    .const 'Sub' $P2029 = "166_1316046719.21023" 
    capture_lex $P2029
.annotate 'line', 1200
    .const 'Sub' $P2029 = "166_1316046719.21023" 
    newclosure $P2043, $P2029
    set $P2028, $P2043
    .lex "has_method", $P2028
.annotate 'line', 1129
    .lex "$?PACKAGE", $P2044
    .lex "$?CLASS", $P2045
    find_lex $P101, "has_method"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("166_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2032
    .param pmc param_2033
    .param pmc param_2034
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1200
    .const 'Sub' $P2039 = "167_1316046719.21023" 
    capture_lex $P2039
    new $P2031, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2031, control_2030
    push_eh $P2031
    .lex "$target", param_2032
    .lex "$name", param_2033
    .lex "$local", param_2034
.annotate 'line', 1201
    $P2036 = root_new ['parrot';'ResizablePMCArray']
    set $P2035, $P2036
    .lex "@methods", $P2035
    find_lex $P100, "$target"
    unless_null $P100, vivify_879
    new $P100, "Undef"
  vivify_879:
    get_how $P101, $P100
    find_lex $P102, "$target"
    unless_null $P102, vivify_880
    new $P102, "Undef"
  vivify_880:
    find_lex $P103, "$local"
    unless_null $P103, vivify_881
    new $P103, "Undef"
  vivify_881:
    $P104 = $P101."methods"($P102, $P103 :named("local"))
    store_lex "@methods", $P104
.annotate 'line', 1202
    find_lex $P2037, "@methods"
    unless_null $P2037, vivify_882
    $P2037 = root_new ['parrot';'ResizablePMCArray']
  vivify_882:
    defined $I100, $P2037
    unless $I100, for_undef_883
    iter $P100, $P2037
    new $P103, 'ExceptionHandler'
    set_label $P103, loop2042_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop2042_test:
    unless $P100, loop2042_done
    shift $P101, $P100
  loop2042_redo:
    .const 'Sub' $P2039 = "167_1316046719.21023" 
    capture_lex $P2039
    $P2039($P101)
  loop2042_next:
    goto loop2042_test
  loop2042_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2042_next
    eq $P104, .CONTROL_LOOP_REDO, loop2042_redo
  loop2042_done:
    pop_eh 
  for_undef_883:
.annotate 'line', 1205
    new $P100, "Exception"
    set $P100['type'], .CONTROL_RETURN
    new $P101, "Float"
    assign $P101, 0
    setattribute $P100, 'payload', $P101
    throw $P100
.annotate 'line', 1200
    .return ()
  control_2030:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, "payload"
    .return ($P100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2038"  :anon :subid("167_1316046719.21023") :outer("166_1316046719.21023")
    .param pmc param_2040
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1202
    .lex "$_", param_2040
.annotate 'line', 1203
    find_lex $P103, "$_"
    unless_null $P103, vivify_884
    new $P103, "Undef"
  vivify_884:
    set $S100, $P103
    find_lex $P104, "$name"
    unless_null $P104, vivify_885
    new $P104, "Undef"
  vivify_885:
    set $S101, $P104
    iseq $I101, $S100, $S101
    if $I101, if_2041
    new $P102, 'Integer'
    set $P102, $I101
    goto if_2041_end
  if_2041:
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    new $P106, "Float"
    assign $P106, 1
    setattribute $P105, 'payload', $P106
    throw $P105
  if_2041_end:
.annotate 'line', 1202
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("168_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2047
    .param pmc param_2048 :named("name")
    .param pmc param_2049 :optional :named("box_target")
    .param int has_param_2049 :opt_flag
    .param pmc param_2050 :slurpy :named
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1135
    .lex "self", param_2047
    .lex "$name", param_2048
    if has_param_2049, optparam_886
    new $P101, "Undef"
    set param_2049, $P101
  optparam_886:
    .lex "$box_target", param_2049
    .lex "%extra", param_2050
.annotate 'line', 1136
    new $P102, "Undef"
    set $P2051, $P102
    .lex "$attr", $P2051
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$attr", $P104
.annotate 'line', 1137
    find_lex $P103, "$attr"
    unless_null $P103, vivify_887
    new $P103, "Undef"
  vivify_887:
    find_lex $P104, "$name"
    unless_null $P104, vivify_888
    new $P104, "Undef"
  vivify_888:
    find_lex $P2052, "%extra"
    unless_null $P2052, vivify_889
    $P2052 = root_new ['parrot';'Hash']
  vivify_889:
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_890
    new $P105, "Undef"
  vivify_890:
.annotate 'line', 1138
    find_lex $P2053, "%extra"
    unless_null $P2053, vivify_891
    $P2053 = root_new ['parrot';'Hash']
  vivify_891:
    exists $I100, $P2053["type"]
.annotate 'line', 1137
    $P103."BUILD"($P2052 :flat, $P104 :named("name"), $P105 :named("box_target"), $I100 :named("has_type"))
.annotate 'line', 1135
    find_lex $P103, "$attr"
    unless_null $P103, vivify_892
    new $P103, "Undef"
  vivify_892:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("169_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2055
    .param pmc param_2056 :optional :named("name")
    .param int has_param_2056 :opt_flag
    .param pmc param_2057 :optional :named("type")
    .param int has_param_2057 :opt_flag
    .param pmc param_2058 :optional :named("has_type")
    .param int has_param_2058 :opt_flag
    .param pmc param_2059 :optional :named("box_target")
    .param int has_param_2059 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1142
    .lex "self", param_2055
    if has_param_2056, optparam_893
    new $P101, "Undef"
    set param_2056, $P101
  optparam_893:
    .lex "$name", param_2056
    if has_param_2057, optparam_894
    new $P102, "Undef"
    set param_2057, $P102
  optparam_894:
    .lex "$type", param_2057
    if has_param_2058, optparam_895
    new $P103, "Undef"
    set param_2058, $P103
  optparam_895:
    .lex "$has_type", param_2058
    if has_param_2059, optparam_896
    new $P104, "Undef"
    set param_2059, $P104
  optparam_896:
    .lex "$box_target", param_2059
.annotate 'line', 1143
    find_lex $P105, "$name"
    unless_null $P105, vivify_897
    new $P105, "Undef"
  vivify_897:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!name", $P105
.annotate 'line', 1144
    find_lex $P105, "$type"
    unless_null $P105, vivify_898
    new $P105, "Undef"
  vivify_898:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!type", $P105
.annotate 'line', 1145
    find_lex $P105, "$has_type"
    unless_null $P105, vivify_899
    new $P105, "Undef"
  vivify_899:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!has_type", $P105
.annotate 'line', 1146
    find_lex $P105, "$box_target"
    unless_null $P105, vivify_900
    new $P105, "Undef"
  vivify_900:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!box_target", $P105
.annotate 'line', 1142
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("170_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2061
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1149
    .lex "self", param_2061
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_901
    new $P104, "Undef"
  vivify_901:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("171_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2063
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1153
    .lex "self", param_2063
.annotate 'line', 1154
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!has_type"
    unless_null $P105, vivify_902
    new $P105, "Undef"
  vivify_902:
    if $P105, if_2064
    null $P110
    set $P101, $P110
    goto if_2064_end
  if_2064:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!type"
    unless_null $P109, vivify_903
    new $P109, "Undef"
  vivify_903:
    set $P101, $P109
  if_2064_end:
.annotate 'line', 1153
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_accessor" :anon :subid("172_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2066
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1157
    .lex "self", param_2066
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "build_closure" :anon :subid("173_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2068
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1161
    .lex "self", param_2068
    .return (0)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("174_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2070
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1165
    .lex "self", param_2070
.annotate 'line', 1166
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!box_target"
    unless_null $P105, vivify_904
    new $P105, "Undef"
  vivify_904:
    if $P105, if_2071
    new $P107, "Float"
    assign $P107, 0
    set $P101, $P107
    goto if_2071_end
  if_2071:
    new $P106, "Float"
    assign $P106, 1
    set $P101, $P106
  if_2071_end:
.annotate 'line', 1165
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("175_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2073
    .param pmc param_2074
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1169
    .lex "self", param_2073
    .lex "$obj", param_2074
    find_lex $P101, "$obj"
    unless_null $P101, vivify_905
    new $P101, "Undef"
  vivify_905:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("176_1316046719.21023") :outer("165_1316046719.21023")
    .param pmc param_2076
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1196
    .lex "self", param_2076
.annotate 'line', 1197
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_906
    new $P104, "Undef"
  vivify_906:
    set $S100, $P104
    new $P105, "Float"
    assign $P105, 1
    set $I100, $P105
    new $P106, "Float"
    assign $P106, 1
    set $I101, $P106
    substr $S101, $S100, $I100, $I101
    isne $I102, $S101, "!"
.annotate 'line', 1196
    .return ($I102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2077"  :subid("177_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1211
    .const 'Sub' $P2113 = "186_1316046719.21023" 
    capture_lex $P2113
    .const 'Sub' $P2110 = "185_1316046719.21023" 
    capture_lex $P2110
    .const 'Sub' $P2106 = "184_1316046719.21023" 
    capture_lex $P2106
    .const 'Sub' $P2101 = "183_1316046719.21023" 
    capture_lex $P2101
    .const 'Sub' $P2096 = "182_1316046719.21023" 
    capture_lex $P2096
    .const 'Sub' $P2091 = "181_1316046719.21023" 
    capture_lex $P2091
    .const 'Sub' $P2088 = "180_1316046719.21023" 
    capture_lex $P2088
    .const 'Sub' $P2084 = "179_1316046719.21023" 
    capture_lex $P2084
    .const 'Sub' $P2082 = "178_1316046719.21023" 
    capture_lex $P2082
.annotate 'line', 1215
    new $P100, "Undef"
    set $P2079, $P100
    .lex "$archetypes", $P2079
    .lex "$?PACKAGE", $P2080
    .lex "$?CLASS", $P2081
    find_lex $P101, "Archetypes"
    $P102 = $P101."new"()
    store_lex "$archetypes", $P102
.annotate 'line', 1257
    .const 'Sub' $P2113 = "186_1316046719.21023" 
    newclosure $P2116, $P2113
.annotate 'line', 1211
    .return ($P2116)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "archetypes" :anon :subid("178_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2083
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1216
    .lex "self", param_2083
    find_lex $P101, "$archetypes"
    unless_null $P101, vivify_907
    new $P101, "Undef"
  vivify_907:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("179_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2085
    .param pmc param_2086 :optional :named("name")
    .param int has_param_2086 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1220
    .lex "self", param_2085
    if has_param_2086, optparam_908
    new $P101, "Undef"
    set param_2086, $P101
  optparam_908:
    .lex "$name", param_2086
.annotate 'line', 1221
    new $P102, "Undef"
    set $P2087, $P102
    .lex "$obj", $P2087
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1222
    find_lex $P103, "$obj"
    unless_null $P103, vivify_909
    new $P103, "Undef"
  vivify_909:
    find_lex $P104, "$name"
    unless_null $P104, vivify_910
    new $P104, "Undef"
  vivify_910:
    $P103."BUILD"($P104 :named("name"))
.annotate 'line', 1220
    find_lex $P103, "$obj"
    unless_null $P103, vivify_911
    new $P103, "Undef"
  vivify_911:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("180_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2089
    .param pmc param_2090 :optional :named("name")
    .param int has_param_2090 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1226
    .lex "self", param_2089
    if has_param_2090, optparam_912
    new $P101, "Undef"
    set param_2090, $P101
  optparam_912:
    .lex "$name", param_2090
.annotate 'line', 1227
    find_lex $P102, "$name"
    unless_null $P102, vivify_913
    new $P102, "Undef"
  vivify_913:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!name", $P102
.annotate 'line', 1226
    .return ($P102)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("181_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2092
    .param pmc param_2093 :optional :named("name")
    .param int has_param_2093 :opt_flag
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1232
    .lex "self", param_2092
    if has_param_2093, optparam_914
    new $P101, "String"
    assign $P101, "<anon>"
    set param_2093, $P101
  optparam_914:
    .lex "$name", param_2093
.annotate 'line', 1233
    new $P102, "Undef"
    set $P2094, $P102
    .lex "$metaclass", $P2094
    find_lex $P103, "self"
    find_lex $P104, "$name"
    unless_null $P104, vivify_915
    new $P104, "Undef"
  vivify_915:
    $P105 = $P103."new"($P104 :named("name"))
    store_lex "$metaclass", $P105
.annotate 'line', 1235
    find_lex $P103, "$metaclass"
    unless_null $P103, vivify_916
    new $P103, "Undef"
  vivify_916:
    new $P104, "String"
    assign $P104, "Uninstantiable"
    set $S100, $P104
    repr_type_object_for $P105, $P103, $S100
    $P2095 = root_new ['parrot';'Hash']
    set_who $P105, $P2095
.annotate 'line', 1232
    .return ($P105)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("182_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2097
    .param pmc param_2098
    .param pmc param_2099
    .param pmc param_2100
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1239
    .lex "self", param_2097
    .lex "$obj", param_2098
    .lex "$name", param_2099
    .lex "$code_obj", param_2100
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("183_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2102
    .param pmc param_2103
    .param pmc param_2104
    .param pmc param_2105
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1245
    .lex "self", param_2102
    .lex "$obj", param_2103
    .lex "$name", param_2104
    .lex "$code_obj", param_2105
.annotate 'line', 1246
    die "Modules may not have methods"
.annotate 'line', 1245
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("184_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2107
    .param pmc param_2108
    .param pmc param_2109
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1249
    .lex "self", param_2107
    .lex "$obj", param_2108
    .lex "$meta_attr", param_2109
.annotate 'line', 1250
    die "Modules may not have attributes"
.annotate 'line', 1249
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("185_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2111
    .param pmc param_2112
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1253
    .lex "self", param_2111
    .lex "$obj", param_2112
.annotate 'line', 1254
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!composed", $P101
.annotate 'line', 1253
    .return ($P101)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("186_1316046719.21023") :outer("177_1316046719.21023")
    .param pmc param_2114
    .param pmc param_2115
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1257
    .lex "self", param_2114
    .lex "$obj", param_2115
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!name"
    unless_null $P104, vivify_917
    new $P104, "Undef"
  vivify_917:
    .return ($P104)
.end


.HLL "nqp"

.namespace []
.sub "_block2117"  :anon :subid("187_1316046719.21023") :outer("10_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1265
    .lex "$?PACKAGE", $P2119
    .lex "$?CLASS", $P2120
.annotate 'line', 1266
    find_lex $P100, "NQPModuleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_918
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_918:
    get_who $P102, $P101
    set $P102["module"], $P100
.annotate 'line', 1267
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_919
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_919:
    get_who $P102, $P101
    set $P102["class"], $P100
.annotate 'line', 1268
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_920
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_920:
    get_who $P102, $P101
    set $P102["class-attr"], $P100
.annotate 'line', 1269
    find_lex $P100, "NQPClassHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_921
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_921:
    get_who $P102, $P101
    set $P102["grammar"], $P100
.annotate 'line', 1270
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_922
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_922:
    get_who $P102, $P101
    set $P102["grammar-attr"], $P100
.annotate 'line', 1271
    find_lex $P100, "NQPParametricRoleHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_923
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_923:
    get_who $P102, $P101
    set $P102["role"], $P100
.annotate 'line', 1272
    find_lex $P100, "NQPAttribute"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_924
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_924:
    get_who $P102, $P101
    set $P102["role-attr"], $P100
.annotate 'line', 1273
    find_lex $P100, "NQPNativeHOW"
    find_lex $P101, "$?PACKAGE"
    unless_null $P101, vivify_925
    new $P101, "Undef"
    store_lex "$?PACKAGE", $P101
  vivify_925:
    get_who $P102, $P101
    set $P102["native"], $P100
.annotate 'line', 1265
    .return ($P100)
.end


.HLL "nqp"

.namespace []
.sub "_block2122" :load :anon :subid("188_1316046719.21023")
.annotate 'file', "src/stage2/gen/nqp-mo.pm"
.annotate 'line', 1
    .const 'Sub' $P2124 = "10_1316046719.21023" 
    $P106 = $P2124()
    .return ($P106)
.end

