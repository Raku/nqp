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
.sub "_block1000"  :anon :subid("10_1315150101.74")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 0
    .const 'Sub' $P2098 = "258_1315150101.74" 
    capture_lex $P2098
    .const 'Sub' $P1494 = "176_1315150101.74" 
    capture_lex $P1494
    .const 'Sub' $P1012 = "12_1315150101.74" 
    capture_lex $P1012
    .const 'Sub' $P1007 = "11_1315150101.74" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 829
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$p6regex", $P1005
.annotate 'line', 834
    .const 'Sub' $P1007 = "11_1315150101.74" 
    newclosure $P1010, $P1007
    set $P1006, $P1010
    .lex "MAIN", $P1006
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1012 = "12_1315150101.74" 
    capture_lex $P1012
    $P1012()
.annotate 'line', 213
    .const 'Sub' $P1494 = "176_1315150101.74" 
    capture_lex $P1494
    $P1494()
.annotate 'line', 826
    .const 'Sub' $P2098 = "258_1315150101.74" 
    capture_lex $P2098
    $P2098()
.annotate 'line', 829
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P103, $P101, "Regex"
    nqp_get_package_through_who $P104, $P103, "P6Regex"
    get_who $P105, $P104
    set $P106, $P105["Compiler"]
    $P107 = $P106."new"()
    store_lex "$p6regex", $P107
.annotate 'line', 830
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_1174
    new $P101, "Undef"
  vivify_1174:
    $P101."language"("Regex::P6Regex")
.annotate 'line', 831
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_1175
    new $P101, "Undef"
  vivify_1175:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "Regex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Grammar"]
    $P101."parsegrammar"($P107)
.annotate 'line', 832
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_1176
    new $P101, "Undef"
  vivify_1176:
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "Regex"
    nqp_get_package_through_who $P105, $P104, "P6Regex"
    get_who $P106, $P105
    set $P107, $P106["Actions"]
    $P101."parseactions"($P107)
.annotate 'line', 1
    find_lex $P101, "MAIN"
    find_lex $P103, "@ARGS"
    if $P103, if_2101
    set $P101, $P103
    goto if_2101_end
  if_2101:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P104, "ModuleLoader"
    getinterp $P105
    set $P106, $P105["context"]
    $P104."set_mainline_module"($P106)
    .const 'Sub' $P2102 = "11_1315150101.74" 
    find_lex $P107, "@ARGS"
    $P108 = $P2102($P107 :flat)
    set $P101, $P108
  if_2101_end:
    .return ($P101)
    .const 'Sub' $P2104 = "259_1315150101.74" 
    .return ($P2104)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post260") :outer("10_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1315150101.74" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P110, "1315150098.281"
    isnull $I100, $P110
    if $I100, if_2106
    goto if_2106_end
  if_2106:
    nqp_dynop_setup 
    getinterp $P111
    get_class $P112, "LexPad"
    get_class $P113, "NQPLexPad"
    $P111."hll_map"($P112, $P113)
    nqp_create_sc $P114, "1315150098.281"
    .local pmc cur_sc
    set cur_sc, $P114
    cur_sc."set_description"("src\\stage2\\gen\\NQPP6Regex.pm")
    nqp_get_sc $P115, "__6MODEL_CORE__"
    isnull $I101, $P115
    unless $I101, if_2107_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2107_end:
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 0
    $P116 = $P115."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P116
    .const 'Sub' $P2108 = "10_1315150101.74" 
    $P115 = $P2108."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 0
    $P115."set_static_lexpad_value"("GLOBALish", $P116)
    .const 'Sub' $P2109 = "10_1315150101.74" 
    $P117 = $P2109."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2110 = "10_1315150101.74" 
    $P115 = $P2110."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 0
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2111 = "10_1315150101.74" 
    $P117 = $P2111."get_lexinfo"()
    $P117."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    $P116 = $P115."load_setting"("NQPCORE")
    block."set_outer_ctx"($P116)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    nqp_get_sc_object $P116, "1315150098.281", 0
    $P115."load_module"("NQPRegex", $P116)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    nqp_get_sc_object $P116, "1315150098.281", 0
    $P115."load_module"("NQPHLL", $P116)
    nqp_get_sc $P115, "1315150083.514"
    isnull $I101, $P115
    unless $I101, if_2112_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\gen\\nqp-mo.pm loaded"
    die $S100
  if_2112_end:
    nqp_get_sc_object $P115, "1315150083.514", 42
    $P116 = $P115."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P116
    nqp_get_sc_object $P115, "1315150098.281", 1
    nqp_get_sc_object $P116, "1315150098.281", 0
    nqp_get_package_through_who $P117, $P116, "Regex"
    nqp_get_package_through_who $P118, $P117, "P6Regex"
    get_who $P119, $P118
    set $P119["Grammar"], $P115
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2113 = "13_1315150101.74" 
    $P116."add_method"($P117, "obs", $P2113)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2114 = "14_1315150101.74" 
    $P116."add_method"($P117, "ws", $P2114)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2115 = "15_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__ws", $P2115)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2116 = "16_1315150101.74" 
    $P116."add_method"($P117, "normspace", $P2116)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2117 = "18_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__normspace", $P2117)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2118 = "19_1315150101.74" 
    $P116."add_method"($P117, "identifier", $P2118)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2119 = "20_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__identifier", $P2119)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2120 = "21_1315150101.74" 
    $P116."add_method"($P117, "arg", $P2120)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2121 = "22_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__arg", $P2121)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2122 = "23_1315150101.74" 
    $P116."add_method"($P117, "arglist", $P2122)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2123 = "24_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__arglist", $P2123)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2124 = "25_1315150101.74" 
    $P116."add_method"($P117, "TOP", $P2124)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2125 = "26_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__TOP", $P2125)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2126 = "27_1315150101.74" 
    $P116."add_method"($P117, "nibbler", $P2126)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2127 = "29_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__nibbler", $P2127)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2128 = "30_1315150101.74" 
    $P116."add_method"($P117, "termconj", $P2128)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2129 = "31_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__termconj", $P2129)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2130 = "32_1315150101.74" 
    $P116."add_method"($P117, "termish", $P2130)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2131 = "34_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__termish", $P2131)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2132 = "35_1315150101.74" 
    $P116."add_method"($P117, "quantified_atom", $P2132)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2133 = "37_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantified_atom", $P2133)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2134 = "38_1315150101.74" 
    $P116."add_method"($P117, "atom", $P2134)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2135 = "40_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__atom", $P2135)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2136 = "41_1315150101.74" 
    $P116."add_method"($P117, "quantifier", $P2136)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2137 = "42_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier", $P2137)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2138 = "43_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<*>", $P2138)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2139 = "44_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier:sym<*>", $P2139)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2140 = "45_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<+>", $P2140)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2141 = "46_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier:sym<+>", $P2141)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2142 = "47_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<?>", $P2142)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2143 = "48_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier:sym<?>", $P2143)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2144 = "49_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<{N,M}>", $P2144)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2145 = "54_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier:sym<{N,M}>", $P2145)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2146 = "55_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<**>", $P2146)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2147 = "56_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__quantifier:sym<**>", $P2147)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2148 = "57_1315150101.74" 
    $P116."add_method"($P117, "backmod", $P2148)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2149 = "59_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backmod", $P2149)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2150 = "60_1315150101.74" 
    $P116."add_method"($P117, "metachar", $P2150)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2151 = "61_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar", $P2151)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2152 = "62_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<ws>", $P2152)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2153 = "63_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<ws>", $P2153)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2154 = "64_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<[ ]>", $P2154)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2155 = "65_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<[ ]>", $P2155)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2156 = "66_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<( )>", $P2156)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2157 = "67_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<( )>", $P2157)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2158 = "68_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<'>", $P2158)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2159 = "69_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<'>", $P2159)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2160 = "70_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<\">", $P2160)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2161 = "71_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<\">", $P2161)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2162 = "72_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<.>", $P2162)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2163 = "73_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<.>", $P2163)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2164 = "74_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<^>", $P2164)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2165 = "75_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<^>", $P2165)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2166 = "76_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<^^>", $P2166)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2167 = "77_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<^^>", $P2167)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2168 = "78_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<$>", $P2168)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2169 = "79_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<$>", $P2169)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2170 = "80_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<$$>", $P2170)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2171 = "81_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<$$>", $P2171)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2172 = "82_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<:::>", $P2172)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2173 = "83_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<:::>", $P2173)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2174 = "84_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<::>", $P2174)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2175 = "85_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<::>", $P2175)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2176 = "86_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<lwb>", $P2176)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2177 = "87_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<lwb>", $P2177)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2178 = "88_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<rwb>", $P2178)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2179 = "89_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<rwb>", $P2179)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2180 = "90_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<bs>", $P2180)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2181 = "91_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<bs>", $P2181)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2182 = "92_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<mod>", $P2182)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2183 = "93_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<mod>", $P2183)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2184 = "94_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<quantifier>", $P2184)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2185 = "95_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<quantifier>", $P2185)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2186 = "96_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<~>", $P2186)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2187 = "97_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<~>", $P2187)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2188 = "98_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<{*}>", $P2188)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2189 = "99_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<{*}>", $P2189)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2190 = "100_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<assert>", $P2190)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2191 = "101_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<assert>", $P2191)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2192 = "102_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<var>", $P2192)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2193 = "103_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<var>", $P2193)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2194 = "104_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<PIR>", $P2194)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2195 = "105_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__metachar:sym<PIR>", $P2195)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2196 = "106_1315150101.74" 
    $P116."add_method"($P117, "backslash", $P2196)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2197 = "107_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash", $P2197)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2198 = "108_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<w>", $P2198)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2199 = "109_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<w>", $P2199)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2200 = "110_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<b>", $P2200)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2201 = "111_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<b>", $P2201)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2202 = "112_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<e>", $P2202)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2203 = "113_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<e>", $P2203)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2204 = "114_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<f>", $P2204)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2205 = "115_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<f>", $P2205)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2206 = "116_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<h>", $P2206)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2207 = "117_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<h>", $P2207)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2208 = "118_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<r>", $P2208)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2209 = "119_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<r>", $P2209)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2210 = "120_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<t>", $P2210)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2211 = "121_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<t>", $P2211)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2212 = "122_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<v>", $P2212)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2213 = "123_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<v>", $P2213)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2214 = "124_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<o>", $P2214)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2215 = "125_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<o>", $P2215)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2216 = "126_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<x>", $P2216)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2217 = "127_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<x>", $P2217)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2218 = "128_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<c>", $P2218)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2219 = "129_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<c>", $P2219)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2220 = "130_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<A>", $P2220)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2221 = "131_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<A>", $P2221)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2222 = "132_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<z>", $P2222)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2223 = "133_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<z>", $P2223)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2224 = "134_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<Z>", $P2224)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2225 = "135_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<Z>", $P2225)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2226 = "136_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<Q>", $P2226)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2227 = "137_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<Q>", $P2227)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2228 = "138_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<unrec>", $P2228)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2229 = "140_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<unrec>", $P2229)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2230 = "141_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<misc>", $P2230)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2231 = "142_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__backslash:sym<misc>", $P2231)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2232 = "143_1315150101.74" 
    $P116."add_method"($P117, "assertion", $P2232)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2233 = "144_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion", $P2233)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2234 = "145_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<?>", $P2234)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2235 = "147_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion:sym<?>", $P2235)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2236 = "148_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<!>", $P2236)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2237 = "150_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion:sym<!>", $P2237)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2238 = "151_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<method>", $P2238)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2239 = "152_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion:sym<method>", $P2239)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2240 = "153_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<name>", $P2240)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2241 = "155_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion:sym<name>", $P2241)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2242 = "156_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<[>", $P2242)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2243 = "158_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__assertion:sym<[>", $P2243)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2244 = "159_1315150101.74" 
    $P116."add_method"($P117, "cclass_elem", $P2244)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2245 = "164_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__cclass_elem", $P2245)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2246 = "165_1315150101.74" 
    $P116."add_method"($P117, "mod_internal", $P2246)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2247 = "167_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__mod_internal", $P2247)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2248 = "168_1315150101.74" 
    $P116."add_method"($P117, "mod_ident", $P2248)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2249 = "169_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__mod_ident", $P2249)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2250 = "170_1315150101.74" 
    $P116."add_method"($P117, "mod_ident:sym<ignorecase>", $P2250)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2251 = "171_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__mod_ident:sym<ignorecase>", $P2251)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2252 = "172_1315150101.74" 
    $P116."add_method"($P117, "mod_ident:sym<ratchet>", $P2252)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2253 = "173_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__mod_ident:sym<ratchet>", $P2253)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2254 = "174_1315150101.74" 
    $P116."add_method"($P117, "mod_ident:sym<sigspace>", $P2254)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    .const 'Sub' $P2255 = "175_1315150101.74" 
    $P116."add_method"($P117, "!PREFIX__mod_ident:sym<sigspace>", $P2255)
    .const 'Sub' $P2256 = "12_1315150101.74" 
    $P115 = $P2256."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 1
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2257 = "12_1315150101.74" 
    $P117 = $P2257."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2258 = "12_1315150101.74" 
    $P115 = $P2258."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 1
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2259 = "12_1315150101.74" 
    $P117 = $P2259."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc $P115, "1315150090.044"
    isnull $I101, $P115
    unless $I101, if_2260_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\gen\\NQPHLL.pm loaded"
    die $S100
  if_2260_end:
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    nqp_get_sc_object $P118, "1315150090.044", 1
    $P116."add_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1315150098.281", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 1
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1315150083.514", 42
    $P116 = $P115."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_add_object_to_sc cur_sc, 145, $P116
    nqp_get_sc_object $P115, "1315150098.281", 145
    nqp_get_sc_object $P116, "1315150098.281", 0
    nqp_get_package_through_who $P117, $P116, "Regex"
    nqp_get_package_through_who $P118, $P117, "P6Regex"
    get_who $P119, $P118
    set $P119["Actions"], $P115
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2261 = "192_1315150101.74" 
    $P116."add_method"($P117, "arg", $P2261)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2262 = "193_1315150101.74" 
    $P116."add_method"($P117, "arglist", $P2262)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2263 = "195_1315150101.74" 
    $P116."add_method"($P117, "TOP", $P2263)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2264 = "196_1315150101.74" 
    $P116."add_method"($P117, "nibbler", $P2264)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2265 = "199_1315150101.74" 
    $P116."add_method"($P117, "termconj", $P2265)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2266 = "201_1315150101.74" 
    $P116."add_method"($P117, "termish", $P2266)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2267 = "203_1315150101.74" 
    $P116."add_method"($P117, "quantified_atom", $P2267)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2268 = "205_1315150101.74" 
    $P116."add_method"($P117, "atom", $P2268)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2269 = "206_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<*>", $P2269)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2270 = "207_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<+>", $P2270)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2271 = "208_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<?>", $P2271)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2272 = "209_1315150101.74" 
    $P116."add_method"($P117, "quantifier:sym<**>", $P2272)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2273 = "211_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<ws>", $P2273)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2274 = "212_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<[ ]>", $P2274)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2275 = "213_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<( )>", $P2275)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2276 = "214_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<'>", $P2276)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2277 = "215_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<\">", $P2277)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2278 = "216_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<.>", $P2278)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2279 = "217_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<^>", $P2279)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2280 = "218_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<^^>", $P2280)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2281 = "219_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<$>", $P2281)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2282 = "220_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<$$>", $P2282)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2283 = "221_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<:::>", $P2283)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2284 = "222_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<lwb>", $P2284)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2285 = "223_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<rwb>", $P2285)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2286 = "224_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<bs>", $P2286)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2287 = "225_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<mod>", $P2287)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2288 = "226_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<assert>", $P2288)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2289 = "227_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<~>", $P2289)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2290 = "228_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<{*}>", $P2290)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2291 = "229_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<var>", $P2291)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2292 = "230_1315150101.74" 
    $P116."add_method"($P117, "metachar:sym<PIR>", $P2292)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2293 = "231_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<w>", $P2293)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2294 = "232_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<b>", $P2294)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2295 = "233_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<e>", $P2295)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2296 = "234_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<f>", $P2296)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2297 = "235_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<h>", $P2297)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2298 = "236_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<r>", $P2298)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2299 = "237_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<t>", $P2299)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2300 = "238_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<v>", $P2300)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2301 = "239_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<o>", $P2301)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2302 = "240_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<x>", $P2302)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2303 = "241_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<c>", $P2303)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2304 = "242_1315150101.74" 
    $P116."add_method"($P117, "backslash:sym<misc>", $P2304)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2305 = "243_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<?>", $P2305)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2306 = "244_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<!>", $P2306)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2307 = "245_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<method>", $P2307)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2308 = "246_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<name>", $P2308)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2309 = "249_1315150101.74" 
    $P116."add_method"($P117, "assertion:sym<[>", $P2309)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2310 = "251_1315150101.74" 
    $P116."add_method"($P117, "cclass_elem", $P2310)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2311 = "255_1315150101.74" 
    $P116."add_method"($P117, "mod_internal", $P2311)
    .const 'Sub' $P2312 = "177_1315150101.74" 
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_who $P116, $P115
    set $P116["buildsub"], $P2312
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2313 = "256_1315150101.74" 
    $P116."add_method"($P117, "subrule_alias", $P2313)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    .const 'Sub' $P2314 = "257_1315150101.74" 
    $P116."add_method"($P117, "named_assertion", $P2314)
    .const 'Sub' $P2315 = "176_1315150101.74" 
    $P115 = $P2315."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 145
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2316 = "176_1315150101.74" 
    $P117 = $P2316."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2317 = "176_1315150101.74" 
    $P115 = $P2317."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 145
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2318 = "176_1315150101.74" 
    $P117 = $P2318."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    nqp_get_sc_object $P118, "1315150090.044", 105
    $P116."add_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1315150098.281", 145
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 145
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1315150083.514", 42
    $P116 = $P115."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_add_object_to_sc cur_sc, 199, $P116
    nqp_get_sc_object $P115, "1315150098.281", 199
    nqp_get_sc_object $P116, "1315150098.281", 0
    nqp_get_package_through_who $P117, $P116, "Regex"
    nqp_get_package_through_who $P118, $P117, "P6Regex"
    get_who $P119, $P118
    set $P119["Compiler"], $P115
    .const 'Sub' $P2319 = "258_1315150101.74" 
    $P115 = $P2319."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 199
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2320 = "258_1315150101.74" 
    $P117 = $P2320."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2321 = "258_1315150101.74" 
    $P115 = $P2321."get_lexinfo"()
    nqp_get_sc_object $P116, "1315150098.281", 199
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2322 = "258_1315150101.74" 
    $P117 = $P2322."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1315150098.281", 199
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 199
    nqp_get_sc_object $P118, "1315150090.044", 138
    $P116."add_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1315150098.281", 199
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1315150098.281", 199
    $P116."compose"($P117)
  if_2106_end:
    nqp_get_sc_object $P115, "1315150098.281", 0
    set_hll_global "GLOBAL", $P115
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1315150101.74") :outer("10_1315150101.74")
    .param pmc param_1008
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 834
    .lex "@ARGS", param_1008
.annotate 'line', 835
    find_lex $P101, "$p6regex"
    unless_null $P101, vivify_261
    new $P101, "Undef"
  vivify_261:
    find_lex $P1009, "@ARGS"
    unless_null $P1009, vivify_262
    $P1009 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    $P102 = $P101."command_line"($P1009, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 834
    .return ($P102)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1011"  :subid("12_1315150101.74") :outer("10_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1492 = "175_1315150101.74" 
    capture_lex $P1492
    .const 'Sub' $P1487 = "174_1315150101.74" 
    capture_lex $P1487
    .const 'Sub' $P1486 = "173_1315150101.74" 
    capture_lex $P1486
    .const 'Sub' $P1481 = "172_1315150101.74" 
    capture_lex $P1481
    .const 'Sub' $P1480 = "171_1315150101.74" 
    capture_lex $P1480
    .const 'Sub' $P1475 = "170_1315150101.74" 
    capture_lex $P1475
    .const 'Sub' $P1470 = "167_1315150101.74" 
    capture_lex $P1470
    .const 'Sub' $P1457 = "165_1315150101.74" 
    capture_lex $P1457
    .const 'Sub' $P1456 = "164_1315150101.74" 
    capture_lex $P1456
    .const 'Sub' $P1424 = "159_1315150101.74" 
    capture_lex $P1424
    .const 'Sub' $P1423 = "158_1315150101.74" 
    capture_lex $P1423
    .const 'Sub' $P1413 = "156_1315150101.74" 
    capture_lex $P1413
    .const 'Sub' $P1412 = "155_1315150101.74" 
    capture_lex $P1412
    .const 'Sub' $P1403 = "153_1315150101.74" 
    capture_lex $P1403
    .const 'Sub' $P1402 = "152_1315150101.74" 
    capture_lex $P1402
    .const 'Sub' $P1399 = "151_1315150101.74" 
    capture_lex $P1399
    .const 'Sub' $P1398 = "150_1315150101.74" 
    capture_lex $P1398
    .const 'Sub' $P1390 = "148_1315150101.74" 
    capture_lex $P1390
    .const 'Sub' $P1389 = "147_1315150101.74" 
    capture_lex $P1389
    .const 'Sub' $P1381 = "145_1315150101.74" 
    capture_lex $P1381
    .const 'Sub' $P1376 = "142_1315150101.74" 
    capture_lex $P1376
    .const 'Sub' $P1373 = "141_1315150101.74" 
    capture_lex $P1373
    .const 'Sub' $P1372 = "140_1315150101.74" 
    capture_lex $P1372
    .const 'Sub' $P1367 = "138_1315150101.74" 
    capture_lex $P1367
    .const 'Sub' $P1366 = "137_1315150101.74" 
    capture_lex $P1366
    .const 'Sub' $P1363 = "136_1315150101.74" 
    capture_lex $P1363
    .const 'Sub' $P1362 = "135_1315150101.74" 
    capture_lex $P1362
    .const 'Sub' $P1359 = "134_1315150101.74" 
    capture_lex $P1359
    .const 'Sub' $P1358 = "133_1315150101.74" 
    capture_lex $P1358
    .const 'Sub' $P1355 = "132_1315150101.74" 
    capture_lex $P1355
    .const 'Sub' $P1354 = "131_1315150101.74" 
    capture_lex $P1354
    .const 'Sub' $P1351 = "130_1315150101.74" 
    capture_lex $P1351
    .const 'Sub' $P1350 = "129_1315150101.74" 
    capture_lex $P1350
    .const 'Sub' $P1346 = "128_1315150101.74" 
    capture_lex $P1346
    .const 'Sub' $P1345 = "127_1315150101.74" 
    capture_lex $P1345
    .const 'Sub' $P1340 = "126_1315150101.74" 
    capture_lex $P1340
    .const 'Sub' $P1339 = "125_1315150101.74" 
    capture_lex $P1339
    .const 'Sub' $P1334 = "124_1315150101.74" 
    capture_lex $P1334
    .const 'Sub' $P1333 = "123_1315150101.74" 
    capture_lex $P1333
    .const 'Sub' $P1329 = "122_1315150101.74" 
    capture_lex $P1329
    .const 'Sub' $P1328 = "121_1315150101.74" 
    capture_lex $P1328
    .const 'Sub' $P1324 = "120_1315150101.74" 
    capture_lex $P1324
    .const 'Sub' $P1323 = "119_1315150101.74" 
    capture_lex $P1323
    .const 'Sub' $P1319 = "118_1315150101.74" 
    capture_lex $P1319
    .const 'Sub' $P1318 = "117_1315150101.74" 
    capture_lex $P1318
    .const 'Sub' $P1314 = "116_1315150101.74" 
    capture_lex $P1314
    .const 'Sub' $P1313 = "115_1315150101.74" 
    capture_lex $P1313
    .const 'Sub' $P1309 = "114_1315150101.74" 
    capture_lex $P1309
    .const 'Sub' $P1308 = "113_1315150101.74" 
    capture_lex $P1308
    .const 'Sub' $P1304 = "112_1315150101.74" 
    capture_lex $P1304
    .const 'Sub' $P1303 = "111_1315150101.74" 
    capture_lex $P1303
    .const 'Sub' $P1299 = "110_1315150101.74" 
    capture_lex $P1299
    .const 'Sub' $P1298 = "109_1315150101.74" 
    capture_lex $P1298
    .const 'Sub' $P1294 = "108_1315150101.74" 
    capture_lex $P1294
    .const 'Sub' $P1289 = "105_1315150101.74" 
    capture_lex $P1289
    .const 'Sub' $P1283 = "104_1315150101.74" 
    capture_lex $P1283
    .const 'Sub' $P1282 = "103_1315150101.74" 
    capture_lex $P1282
    .const 'Sub' $P1274 = "102_1315150101.74" 
    capture_lex $P1274
    .const 'Sub' $P1273 = "101_1315150101.74" 
    capture_lex $P1273
    .const 'Sub' $P1269 = "100_1315150101.74" 
    capture_lex $P1269
    .const 'Sub' $P1268 = "99_1315150101.74" 
    capture_lex $P1268
    .const 'Sub' $P1258 = "98_1315150101.74" 
    capture_lex $P1258
    .const 'Sub' $P1257 = "97_1315150101.74" 
    capture_lex $P1257
    .const 'Sub' $P1253 = "96_1315150101.74" 
    capture_lex $P1253
    .const 'Sub' $P1252 = "95_1315150101.74" 
    capture_lex $P1252
    .const 'Sub' $P1249 = "94_1315150101.74" 
    capture_lex $P1249
    .const 'Sub' $P1248 = "93_1315150101.74" 
    capture_lex $P1248
    .const 'Sub' $P1245 = "92_1315150101.74" 
    capture_lex $P1245
    .const 'Sub' $P1244 = "91_1315150101.74" 
    capture_lex $P1244
    .const 'Sub' $P1241 = "90_1315150101.74" 
    capture_lex $P1241
    .const 'Sub' $P1240 = "89_1315150101.74" 
    capture_lex $P1240
    .const 'Sub' $P1235 = "88_1315150101.74" 
    capture_lex $P1235
    .const 'Sub' $P1234 = "87_1315150101.74" 
    capture_lex $P1234
    .const 'Sub' $P1229 = "86_1315150101.74" 
    capture_lex $P1229
    .const 'Sub' $P1228 = "85_1315150101.74" 
    capture_lex $P1228
    .const 'Sub' $P1224 = "84_1315150101.74" 
    capture_lex $P1224
    .const 'Sub' $P1223 = "83_1315150101.74" 
    capture_lex $P1223
    .const 'Sub' $P1219 = "82_1315150101.74" 
    capture_lex $P1219
    .const 'Sub' $P1218 = "81_1315150101.74" 
    capture_lex $P1218
    .const 'Sub' $P1214 = "80_1315150101.74" 
    capture_lex $P1214
    .const 'Sub' $P1213 = "79_1315150101.74" 
    capture_lex $P1213
    .const 'Sub' $P1209 = "78_1315150101.74" 
    capture_lex $P1209
    .const 'Sub' $P1208 = "77_1315150101.74" 
    capture_lex $P1208
    .const 'Sub' $P1204 = "76_1315150101.74" 
    capture_lex $P1204
    .const 'Sub' $P1203 = "75_1315150101.74" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "74_1315150101.74" 
    capture_lex $P1199
    .const 'Sub' $P1198 = "73_1315150101.74" 
    capture_lex $P1198
    .const 'Sub' $P1194 = "72_1315150101.74" 
    capture_lex $P1194
    .const 'Sub' $P1193 = "71_1315150101.74" 
    capture_lex $P1193
    .const 'Sub' $P1190 = "70_1315150101.74" 
    capture_lex $P1190
    .const 'Sub' $P1189 = "69_1315150101.74" 
    capture_lex $P1189
    .const 'Sub' $P1186 = "68_1315150101.74" 
    capture_lex $P1186
    .const 'Sub' $P1185 = "67_1315150101.74" 
    capture_lex $P1185
    .const 'Sub' $P1182 = "66_1315150101.74" 
    capture_lex $P1182
    .const 'Sub' $P1181 = "65_1315150101.74" 
    capture_lex $P1181
    .const 'Sub' $P1178 = "64_1315150101.74" 
    capture_lex $P1178
    .const 'Sub' $P1177 = "63_1315150101.74" 
    capture_lex $P1177
    .const 'Sub' $P1174 = "62_1315150101.74" 
    capture_lex $P1174
    .const 'Sub' $P1169 = "59_1315150101.74" 
    capture_lex $P1169
    .const 'Sub' $P1160 = "57_1315150101.74" 
    capture_lex $P1160
    .const 'Sub' $P1159 = "56_1315150101.74" 
    capture_lex $P1159
    .const 'Sub' $P1146 = "55_1315150101.74" 
    capture_lex $P1146
    .const 'Sub' $P1145 = "54_1315150101.74" 
    capture_lex $P1145
    .const 'Sub' $P1127 = "49_1315150101.74" 
    capture_lex $P1127
    .const 'Sub' $P1126 = "48_1315150101.74" 
    capture_lex $P1126
    .const 'Sub' $P1122 = "47_1315150101.74" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "46_1315150101.74" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "45_1315150101.74" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "44_1315150101.74" 
    capture_lex $P1116
    .const 'Sub' $P1112 = "43_1315150101.74" 
    capture_lex $P1112
    .const 'Sub' $P1107 = "40_1315150101.74" 
    capture_lex $P1107
    .const 'Sub' $P1097 = "38_1315150101.74" 
    capture_lex $P1097
    .const 'Sub' $P1096 = "37_1315150101.74" 
    capture_lex $P1096
    .const 'Sub' $P1087 = "35_1315150101.74" 
    capture_lex $P1087
    .const 'Sub' $P1086 = "34_1315150101.74" 
    capture_lex $P1086
    .const 'Sub' $P1076 = "32_1315150101.74" 
    capture_lex $P1076
    .const 'Sub' $P1075 = "31_1315150101.74" 
    capture_lex $P1075
    .const 'Sub' $P1069 = "30_1315150101.74" 
    capture_lex $P1069
    .const 'Sub' $P1068 = "29_1315150101.74" 
    capture_lex $P1068
    .const 'Sub' $P1056 = "27_1315150101.74" 
    capture_lex $P1056
    .const 'Sub' $P1055 = "26_1315150101.74" 
    capture_lex $P1055
    .const 'Sub' $P1051 = "25_1315150101.74" 
    capture_lex $P1051
    .const 'Sub' $P1050 = "24_1315150101.74" 
    capture_lex $P1050
    .const 'Sub' $P1046 = "23_1315150101.74" 
    capture_lex $P1046
    .const 'Sub' $P1045 = "22_1315150101.74" 
    capture_lex $P1045
    .const 'Sub' $P1040 = "21_1315150101.74" 
    capture_lex $P1040
    .const 'Sub' $P1039 = "20_1315150101.74" 
    capture_lex $P1039
    .const 'Sub' $P1035 = "19_1315150101.74" 
    capture_lex $P1035
    .const 'Sub' $P1034 = "18_1315150101.74" 
    capture_lex $P1034
    .const 'Sub' $P1026 = "16_1315150101.74" 
    capture_lex $P1026
    .const 'Sub' $P1025 = "15_1315150101.74" 
    capture_lex $P1025
    .const 'Sub' $P1020 = "14_1315150101.74" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "13_1315150101.74" 
    capture_lex $P1015
    .lex "$?PACKAGE", $P1013
    .lex "$?CLASS", $P1014
    .const 'Sub' $P1492 = "175_1315150101.74" 
    capture_lex $P1492
    .return ($P1492)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs" :anon :subid("13_1315150101.74") :outer("12_1315150101.74")
    .param pmc param_1016
    .param pmc param_1017
    .param pmc param_1018
    .param pmc param_1019 :optional
    .param int has_param_1019 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 9
    .lex "self", param_1016
    .lex "$old", param_1017
    .lex "$new", param_1018
    if has_param_1019, optparam_263
    new $P101, "String"
    assign $P101, "in Perl 6"
    set param_1019, $P101
  optparam_263:
    .lex "$when", param_1019
.annotate 'line', 10
    find_lex $P103, "self"
    new $P104, "String"
    assign $P104, "Unsupported use of "
    find_lex $P105, "$old"
    unless_null $P105, vivify_264
    new $P105, "Undef"
  vivify_264:
    set $S100, $P105
    concat $P106, $P104, $S100
    concat $P107, $P106, ";"
.annotate 'line', 11
    find_lex $P108, "$when"
    unless_null $P108, vivify_265
    new $P108, "Undef"
  vivify_265:
    set $S101, $P108
    concat $P109, $P107, $S101
    concat $P110, $P109, " please use "
    find_lex $P111, "$new"
    unless_null $P111, vivify_266
    new $P111, "Undef"
  vivify_266:
    set $S102, $P111
    concat $P112, $P110, $S102
    $P113 = $P103."panic"($P112)
.annotate 'line', 9
    .return ($P113)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1021_tgt
    .local int rx1021_pos
    .local int rx1021_off
    .local int rx1021_eos
    .local int rx1021_rep
    .local pmc rx1021_cur
    .local pmc rx1021_debug
    (rx1021_cur, rx1021_pos, rx1021_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1021_cur
    .local pmc match
    .lex "$/", match
    length rx1021_eos, rx1021_tgt
    gt rx1021_pos, rx1021_eos, rx1021_done
    set rx1021_off, 0
    lt rx1021_pos, 2, rx1021_start
    sub rx1021_off, rx1021_pos, 1
    substr rx1021_tgt, rx1021_tgt, rx1021_off
  rx1021_start:
    eq $I10, 1, rx1021_restart
    if_null rx1021_debug, debug_267
    rx1021_cur."!cursor_debug"("START", "ws")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1022_done
    goto rxscan1022_scan
  rxscan1022_loop:
    (rx1021_pos) = rx1021_cur."from"()
    inc rx1021_pos
    rx1021_cur."!cursor_from"(rx1021_pos)
    ge rx1021_pos, rx1021_eos, rxscan1022_done
  rxscan1022_scan:
    set_addr $I10, rxscan1022_loop
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  rxscan1022_done:
.annotate 'line', 14
  # rx rxquantr1023 ** 0..*
    set_addr $I10, rxquantr1023_done
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  rxquantr1023_loop:
  alt1024_0:
    set_addr $I10, alt1024_1
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx1021_pos, rx1021_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1021_tgt, $I10, rx1021_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1021_fail
    add rx1021_pos, rx1021_off, $I11
    goto alt1024_end
  alt1024_1:
  # rx literal  "#"
    add $I11, rx1021_pos, 1
    gt $I11, rx1021_eos, rx1021_fail
    sub $I11, rx1021_pos, rx1021_off
    ord $I11, rx1021_tgt, $I11
    ne $I11, 35, rx1021_fail
    add rx1021_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx1021_pos, rx1021_off
    find_cclass $I11, .CCLASS_NEWLINE, rx1021_tgt, $I10, rx1021_eos
    add rx1021_pos, rx1021_off, $I11
  alt1024_end:
    set_addr $I10, rxquantr1023_done
    (rx1021_rep) = rx1021_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1023_done
    rx1021_cur."!mark_push"(rx1021_rep, rx1021_pos, $I10)
    goto rxquantr1023_loop
  rxquantr1023_done:
  # rx pass
    rx1021_cur."!cursor_pass"(rx1021_pos, "ws")
    if_null rx1021_debug, debug_268
    rx1021_cur."!cursor_debug"("PASS", "ws", " at pos=", rx1021_pos)
  debug_268:
    .return (rx1021_cur)
  rx1021_restart:
.annotate 'line', 7
    if_null rx1021_debug, debug_269
    rx1021_cur."!cursor_debug"("NEXT", "ws")
  debug_269:
  rx1021_fail:
    (rx1021_rep, rx1021_pos, $I10, $P10) = rx1021_cur."!mark_fail"(0)
    lt rx1021_pos, -1, rx1021_done
    eq rx1021_pos, -1, rx1021_fail
    jump $I10
  rx1021_done:
    rx1021_cur."!cursor_fail"()
    if_null rx1021_debug, debug_270
    rx1021_cur."!cursor_debug"("FAIL", "ws")
  debug_270:
    .return (rx1021_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("15_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1030 = "17_1315150101.74" 
    capture_lex $P1030
    .local string rx1027_tgt
    .local int rx1027_pos
    .local int rx1027_off
    .local int rx1027_eos
    .local int rx1027_rep
    .local pmc rx1027_cur
    .local pmc rx1027_debug
    (rx1027_cur, rx1027_pos, rx1027_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1027_cur
    .local pmc match
    .lex "$/", match
    length rx1027_eos, rx1027_tgt
    gt rx1027_pos, rx1027_eos, rx1027_done
    set rx1027_off, 0
    lt rx1027_pos, 2, rx1027_start
    sub rx1027_off, rx1027_pos, 1
    substr rx1027_tgt, rx1027_tgt, rx1027_off
  rx1027_start:
    eq $I10, 1, rx1027_restart
    if_null rx1027_debug, debug_271
    rx1027_cur."!cursor_debug"("START", "normspace")
  debug_271:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1028_done
    goto rxscan1028_scan
  rxscan1028_loop:
    (rx1027_pos) = rx1027_cur."from"()
    inc rx1027_pos
    rx1027_cur."!cursor_from"(rx1027_pos)
    ge rx1027_pos, rx1027_eos, rxscan1028_done
  rxscan1028_scan:
    set_addr $I10, rxscan1028_loop
    rx1027_cur."!mark_push"(0, rx1027_pos, $I10)
  rxscan1028_done:
.annotate 'line', 16
  # rx subrule "before" subtype=zerowidth negate=
    rx1027_cur."!cursor_pos"(rx1027_pos)
    .const 'Sub' $P1030 = "17_1315150101.74" 
    capture_lex $P1030
    $P10 = rx1027_cur."before"($P1030)
    unless $P10, rx1027_fail
  # rx subrule "ws" subtype=method negate=
    rx1027_cur."!cursor_pos"(rx1027_pos)
    $P10 = rx1027_cur."ws"()
    unless $P10, rx1027_fail
    rx1027_pos = $P10."pos"()
  # rx pass
    rx1027_cur."!cursor_pass"(rx1027_pos, "normspace")
    if_null rx1027_debug, debug_276
    rx1027_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx1027_pos)
  debug_276:
    .return (rx1027_cur)
  rx1027_restart:
.annotate 'line', 7
    if_null rx1027_debug, debug_277
    rx1027_cur."!cursor_debug"("NEXT", "normspace")
  debug_277:
  rx1027_fail:
    (rx1027_rep, rx1027_pos, $I10, $P10) = rx1027_cur."!mark_fail"(0)
    lt rx1027_pos, -1, rx1027_done
    eq rx1027_pos, -1, rx1027_fail
    jump $I10
  rx1027_done:
    rx1027_cur."!cursor_fail"()
    if_null rx1027_debug, debug_278
    rx1027_cur."!cursor_debug"("FAIL", "normspace")
  debug_278:
    .return (rx1027_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1029"  :anon :subid("17_1315150101.74") :method :outer("16_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 16
    .local string rx1031_tgt
    .local int rx1031_pos
    .local int rx1031_off
    .local int rx1031_eos
    .local int rx1031_rep
    .local pmc rx1031_cur
    .local pmc rx1031_debug
    (rx1031_cur, rx1031_pos, rx1031_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1031_cur
    .local pmc match
    .lex "$/", match
    length rx1031_eos, rx1031_tgt
    gt rx1031_pos, rx1031_eos, rx1031_done
    set rx1031_off, 0
    lt rx1031_pos, 2, rx1031_start
    sub rx1031_off, rx1031_pos, 1
    substr rx1031_tgt, rx1031_tgt, rx1031_off
  rx1031_start:
    eq $I10, 1, rx1031_restart
    if_null rx1031_debug, debug_272
    rx1031_cur."!cursor_debug"("START", "")
  debug_272:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1032_done
    goto rxscan1032_scan
  rxscan1032_loop:
    (rx1031_pos) = rx1031_cur."from"()
    inc rx1031_pos
    rx1031_cur."!cursor_from"(rx1031_pos)
    ge rx1031_pos, rx1031_eos, rxscan1032_done
  rxscan1032_scan:
    set_addr $I10, rxscan1032_loop
    rx1031_cur."!mark_push"(0, rx1031_pos, $I10)
  rxscan1032_done:
  alt1033_0:
    set_addr $I10, alt1033_1
    rx1031_cur."!mark_push"(0, rx1031_pos, $I10)
  # rx charclass s
    ge rx1031_pos, rx1031_eos, rx1031_fail
    sub $I10, rx1031_pos, rx1031_off
    is_cclass $I11, .CCLASS_WHITESPACE, rx1031_tgt, $I10
    unless $I11, rx1031_fail
    inc rx1031_pos
    goto alt1033_end
  alt1033_1:
  # rx literal  "#"
    add $I11, rx1031_pos, 1
    gt $I11, rx1031_eos, rx1031_fail
    sub $I11, rx1031_pos, rx1031_off
    ord $I11, rx1031_tgt, $I11
    ne $I11, 35, rx1031_fail
    add rx1031_pos, 1
  alt1033_end:
  # rx pass
    rx1031_cur."!cursor_pass"(rx1031_pos, "")
    if_null rx1031_debug, debug_273
    rx1031_cur."!cursor_debug"("PASS", "", " at pos=", rx1031_pos)
  debug_273:
    .return (rx1031_cur)
  rx1031_restart:
    if_null rx1031_debug, debug_274
    rx1031_cur."!cursor_debug"("NEXT", "")
  debug_274:
  rx1031_fail:
    (rx1031_rep, rx1031_pos, $I10, $P10) = rx1031_cur."!mark_fail"(0)
    lt rx1031_pos, -1, rx1031_done
    eq rx1031_pos, -1, rx1031_fail
    jump $I10
  rx1031_done:
    rx1031_cur."!cursor_fail"()
    if_null rx1031_debug, debug_275
    rx1031_cur."!cursor_debug"("FAIL", "")
  debug_275:
    .return (rx1031_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("18_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1036_tgt
    .local int rx1036_pos
    .local int rx1036_off
    .local int rx1036_eos
    .local int rx1036_rep
    .local pmc rx1036_cur
    .local pmc rx1036_debug
    (rx1036_cur, rx1036_pos, rx1036_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1036_cur
    .local pmc match
    .lex "$/", match
    length rx1036_eos, rx1036_tgt
    gt rx1036_pos, rx1036_eos, rx1036_done
    set rx1036_off, 0
    lt rx1036_pos, 2, rx1036_start
    sub rx1036_off, rx1036_pos, 1
    substr rx1036_tgt, rx1036_tgt, rx1036_off
  rx1036_start:
    eq $I10, 1, rx1036_restart
    if_null rx1036_debug, debug_279
    rx1036_cur."!cursor_debug"("START", "identifier")
  debug_279:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1037_done
    goto rxscan1037_scan
  rxscan1037_loop:
    (rx1036_pos) = rx1036_cur."from"()
    inc rx1036_pos
    rx1036_cur."!cursor_from"(rx1036_pos)
    ge rx1036_pos, rx1036_eos, rxscan1037_done
  rxscan1037_scan:
    set_addr $I10, rxscan1037_loop
    rx1036_cur."!mark_push"(0, rx1036_pos, $I10)
  rxscan1037_done:
.annotate 'line', 18
  # rx subrule "ident" subtype=method negate=
    rx1036_cur."!cursor_pos"(rx1036_pos)
    $P10 = rx1036_cur."ident"()
    unless $P10, rx1036_fail
    rx1036_pos = $P10."pos"()
  # rx rxquantr1038 ** 0..*
    set_addr $I10, rxquantr1038_done
    rx1036_cur."!mark_push"(0, rx1036_pos, $I10)
  rxquantr1038_loop:
  # rx enumcharlist negate=0 
    ge rx1036_pos, rx1036_eos, rx1036_fail
    sub $I10, rx1036_pos, rx1036_off
    substr $S10, rx1036_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx1036_fail
    inc rx1036_pos
  # rx subrule "ident" subtype=method negate=
    rx1036_cur."!cursor_pos"(rx1036_pos)
    $P10 = rx1036_cur."ident"()
    unless $P10, rx1036_fail
    rx1036_pos = $P10."pos"()
    set_addr $I10, rxquantr1038_done
    (rx1036_rep) = rx1036_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1038_done
    rx1036_cur."!mark_push"(rx1036_rep, rx1036_pos, $I10)
    goto rxquantr1038_loop
  rxquantr1038_done:
  # rx pass
    rx1036_cur."!cursor_pass"(rx1036_pos, "identifier")
    if_null rx1036_debug, debug_280
    rx1036_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx1036_pos)
  debug_280:
    .return (rx1036_cur)
  rx1036_restart:
.annotate 'line', 7
    if_null rx1036_debug, debug_281
    rx1036_cur."!cursor_debug"("NEXT", "identifier")
  debug_281:
  rx1036_fail:
    (rx1036_rep, rx1036_pos, $I10, $P10) = rx1036_cur."!mark_fail"(0)
    lt rx1036_pos, -1, rx1036_done
    eq rx1036_pos, -1, rx1036_fail
    jump $I10
  rx1036_done:
    rx1036_cur."!cursor_fail"()
    if_null rx1036_debug, debug_282
    rx1036_cur."!cursor_debug"("FAIL", "identifier")
  debug_282:
    .return (rx1036_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :subid("20_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("ident", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1041_tgt
    .local int rx1041_pos
    .local int rx1041_off
    .local int rx1041_eos
    .local int rx1041_rep
    .local pmc rx1041_cur
    .local pmc rx1041_debug
    (rx1041_cur, rx1041_pos, rx1041_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1041_cur
    .local pmc match
    .lex "$/", match
    length rx1041_eos, rx1041_tgt
    gt rx1041_pos, rx1041_eos, rx1041_done
    set rx1041_off, 0
    lt rx1041_pos, 2, rx1041_start
    sub rx1041_off, rx1041_pos, 1
    substr rx1041_tgt, rx1041_tgt, rx1041_off
  rx1041_start:
    eq $I10, 1, rx1041_restart
    if_null rx1041_debug, debug_283
    rx1041_cur."!cursor_debug"("START", "arg")
  debug_283:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1042_done
    goto rxscan1042_scan
  rxscan1042_loop:
    (rx1041_pos) = rx1041_cur."from"()
    inc rx1041_pos
    rx1041_cur."!cursor_from"(rx1041_pos)
    ge rx1041_pos, rx1041_eos, rxscan1042_done
  rxscan1042_scan:
    set_addr $I10, rxscan1042_loop
    rx1041_cur."!mark_push"(0, rx1041_pos, $I10)
  rxscan1042_done:
  alt1043_0:
.annotate 'line', 21
    set_addr $I10, alt1043_1
    rx1041_cur."!mark_push"(0, rx1041_pos, $I10)
.annotate 'line', 22
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1041_pos, rx1041_off
    substr $S10, rx1041_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx1041_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1041_cur."!cursor_pos"(rx1041_pos)
    $P10 = rx1041_cur."quote_EXPR"(":q")
    unless $P10, rx1041_fail
    rx1041_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1041_pos = $P10."pos"()
    goto alt1043_end
  alt1043_1:
    set_addr $I10, alt1043_2
    rx1041_cur."!mark_push"(0, rx1041_pos, $I10)
.annotate 'line', 23
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1041_pos, rx1041_off
    substr $S10, rx1041_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx1041_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1041_cur."!cursor_pos"(rx1041_pos)
    $P10 = rx1041_cur."quote_EXPR"(":qq")
    unless $P10, rx1041_fail
    rx1041_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1041_pos = $P10."pos"()
    goto alt1043_end
  alt1043_2:
.annotate 'line', 24
  # rx subcapture "val"
    set_addr $I10, rxcap_1044_fail
    rx1041_cur."!mark_push"(0, rx1041_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1041_pos, rx1041_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1041_tgt, $I10, rx1041_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1041_fail
    add rx1041_pos, rx1041_off, $I11
    set_addr $I10, rxcap_1044_fail
    ($I12, $I11) = rx1041_cur."!mark_peek"($I10)
    rx1041_cur."!cursor_pos"($I11)
    ($P10) = rx1041_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1041_pos, "")
    rx1041_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_1044_done
  rxcap_1044_fail:
    goto rx1041_fail
  rxcap_1044_done:
  alt1043_end:
.annotate 'line', 20
  # rx pass
    rx1041_cur."!cursor_pass"(rx1041_pos, "arg")
    if_null rx1041_debug, debug_284
    rx1041_cur."!cursor_debug"("PASS", "arg", " at pos=", rx1041_pos)
  debug_284:
    .return (rx1041_cur)
  rx1041_restart:
.annotate 'line', 7
    if_null rx1041_debug, debug_285
    rx1041_cur."!cursor_debug"("NEXT", "arg")
  debug_285:
  rx1041_fail:
    (rx1041_rep, rx1041_pos, $I10, $P10) = rx1041_cur."!mark_fail"(0)
    lt rx1041_pos, -1, rx1041_done
    eq rx1041_pos, -1, rx1041_fail
    jump $I10
  rx1041_done:
    rx1041_cur."!cursor_fail"()
    if_null rx1041_debug, debug_286
    rx1041_cur."!cursor_debug"("FAIL", "arg")
  debug_286:
    .return (rx1041_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("22_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    push $P101, "\""
    push $P101, "'"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1047_tgt
    .local int rx1047_pos
    .local int rx1047_off
    .local int rx1047_eos
    .local int rx1047_rep
    .local pmc rx1047_cur
    .local pmc rx1047_debug
    (rx1047_cur, rx1047_pos, rx1047_tgt, $I10) = self."!cursor_start"()
    rx1047_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx1047_cur
    .local pmc match
    .lex "$/", match
    length rx1047_eos, rx1047_tgt
    gt rx1047_pos, rx1047_eos, rx1047_done
    set rx1047_off, 0
    lt rx1047_pos, 2, rx1047_start
    sub rx1047_off, rx1047_pos, 1
    substr rx1047_tgt, rx1047_tgt, rx1047_off
  rx1047_start:
    eq $I10, 1, rx1047_restart
    if_null rx1047_debug, debug_287
    rx1047_cur."!cursor_debug"("START", "arglist")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1048_done
    goto rxscan1048_scan
  rxscan1048_loop:
    (rx1047_pos) = rx1047_cur."from"()
    inc rx1047_pos
    rx1047_cur."!cursor_from"(rx1047_pos)
    ge rx1047_pos, rx1047_eos, rxscan1048_done
  rxscan1048_scan:
    set_addr $I10, rxscan1048_loop
    rx1047_cur."!mark_push"(0, rx1047_pos, $I10)
  rxscan1048_done:
.annotate 'line', 28
  # rx subrule "ws" subtype=method negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."ws"()
    unless $P10, rx1047_fail
    rx1047_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."arg"()
    unless $P10, rx1047_fail
    rx1047_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx1047_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."ws"()
    unless $P10, rx1047_fail
    rx1047_pos = $P10."pos"()
  # rx rxquantr1049 ** 0..*
    set_addr $I10, rxquantr1049_done
    rx1047_cur."!mark_push"(0, rx1047_pos, $I10)
  rxquantr1049_loop:
  # rx subrule "ws" subtype=method negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."ws"()
    unless $P10, rx1047_fail
    rx1047_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx1047_pos, 1
    gt $I11, rx1047_eos, rx1047_fail
    sub $I11, rx1047_pos, rx1047_off
    ord $I11, rx1047_tgt, $I11
    ne $I11, 44, rx1047_fail
    add rx1047_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."ws"()
    unless $P10, rx1047_fail
    rx1047_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."arg"()
    unless $P10, rx1047_fail
    rx1047_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx1047_pos = $P10."pos"()
    set_addr $I10, rxquantr1049_done
    (rx1047_rep) = rx1047_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1049_done
    rx1047_cur."!mark_push"(rx1047_rep, rx1047_pos, $I10)
    goto rxquantr1049_loop
  rxquantr1049_done:
  # rx subrule "ws" subtype=method negate=
    rx1047_cur."!cursor_pos"(rx1047_pos)
    $P10 = rx1047_cur."ws"()
    unless $P10, rx1047_fail
    rx1047_pos = $P10."pos"()
  # rx pass
    rx1047_cur."!cursor_pass"(rx1047_pos, "arglist")
    if_null rx1047_debug, debug_288
    rx1047_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx1047_pos)
  debug_288:
    .return (rx1047_cur)
  rx1047_restart:
.annotate 'line', 7
    if_null rx1047_debug, debug_289
    rx1047_cur."!cursor_debug"("NEXT", "arglist")
  debug_289:
  rx1047_fail:
    (rx1047_rep, rx1047_pos, $I10, $P10) = rx1047_cur."!mark_fail"(0)
    lt rx1047_pos, -1, rx1047_done
    eq rx1047_pos, -1, rx1047_fail
    jump $I10
  rx1047_done:
    rx1047_cur."!cursor_fail"()
    if_null rx1047_debug, debug_290
    rx1047_cur."!cursor_debug"("FAIL", "arglist")
  debug_290:
    .return (rx1047_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("24_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P107 = self."!PREFIX__!subrule"("ws", "")
    new $P108, "ResizablePMCArray"
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1052_tgt
    .local int rx1052_pos
    .local int rx1052_off
    .local int rx1052_eos
    .local int rx1052_rep
    .local pmc rx1052_cur
    .local pmc rx1052_debug
    (rx1052_cur, rx1052_pos, rx1052_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1052_cur
    .local pmc match
    .lex "$/", match
    length rx1052_eos, rx1052_tgt
    gt rx1052_pos, rx1052_eos, rx1052_done
    set rx1052_off, 0
    lt rx1052_pos, 2, rx1052_start
    sub rx1052_off, rx1052_pos, 1
    substr rx1052_tgt, rx1052_tgt, rx1052_off
  rx1052_start:
    eq $I10, 1, rx1052_restart
    if_null rx1052_debug, debug_291
    rx1052_cur."!cursor_debug"("START", "TOP")
  debug_291:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1053_done
    goto rxscan1053_scan
  rxscan1053_loop:
    (rx1052_pos) = rx1052_cur."from"()
    inc rx1052_pos
    rx1052_cur."!cursor_from"(rx1052_pos)
    ge rx1052_pos, rx1052_eos, rxscan1053_done
  rxscan1053_scan:
    set_addr $I10, rxscan1053_loop
    rx1052_cur."!mark_push"(0, rx1052_pos, $I10)
  rxscan1053_done:
.annotate 'line', 31
  # rx subrule "nibbler" subtype=capture negate=
    rx1052_cur."!cursor_pos"(rx1052_pos)
    $P10 = rx1052_cur."nibbler"()
    unless $P10, rx1052_fail
    rx1052_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1052_pos = $P10."pos"()
  alt1054_0:
.annotate 'line', 32
    set_addr $I10, alt1054_1
    rx1052_cur."!mark_push"(0, rx1052_pos, $I10)
  # rxanchor eos
    ne rx1052_pos, rx1052_eos, rx1052_fail
    goto alt1054_end
  alt1054_1:
  # rx subrule "panic" subtype=method negate=
    rx1052_cur."!cursor_pos"(rx1052_pos)
    $P10 = rx1052_cur."panic"("Confused")
    unless $P10, rx1052_fail
    rx1052_pos = $P10."pos"()
  alt1054_end:
.annotate 'line', 30
  # rx pass
    rx1052_cur."!cursor_pass"(rx1052_pos, "TOP")
    if_null rx1052_debug, debug_292
    rx1052_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx1052_pos)
  debug_292:
    .return (rx1052_cur)
  rx1052_restart:
.annotate 'line', 7
    if_null rx1052_debug, debug_293
    rx1052_cur."!cursor_debug"("NEXT", "TOP")
  debug_293:
  rx1052_fail:
    (rx1052_rep, rx1052_pos, $I10, $P10) = rx1052_cur."!mark_fail"(0)
    lt rx1052_pos, -1, rx1052_done
    eq rx1052_pos, -1, rx1052_fail
    jump $I10
  rx1052_done:
    rx1052_cur."!cursor_fail"()
    if_null rx1052_debug, debug_294
    rx1052_cur."!cursor_debug"("FAIL", "TOP")
  debug_294:
    .return (rx1052_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("26_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("nibbler", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1065 = "28_1315150101.74" 
    capture_lex $P1065
    .local string rx1057_tgt
    .local int rx1057_pos
    .local int rx1057_off
    .local int rx1057_eos
    .local int rx1057_rep
    .local pmc rx1057_cur
    .local pmc rx1057_debug
    (rx1057_cur, rx1057_pos, rx1057_tgt, $I10) = self."!cursor_start"()
    rx1057_cur."!cursor_caparray"("termconj", "0")
    .lex unicode:"$\x{a2}", rx1057_cur
    .local pmc match
    .lex "$/", match
    length rx1057_eos, rx1057_tgt
    gt rx1057_pos, rx1057_eos, rx1057_done
    set rx1057_off, 0
    lt rx1057_pos, 2, rx1057_start
    sub rx1057_off, rx1057_pos, 1
    substr rx1057_tgt, rx1057_tgt, rx1057_off
  rx1057_start:
    eq $I10, 1, rx1057_restart
    if_null rx1057_debug, debug_295
    rx1057_cur."!cursor_debug"("START", "nibbler")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1058_done
    goto rxscan1058_scan
  rxscan1058_loop:
    (rx1057_pos) = rx1057_cur."from"()
    inc rx1057_pos
    rx1057_cur."!cursor_from"(rx1057_pos)
    ge rx1057_pos, rx1057_eos, rxscan1058_done
  rxscan1058_scan:
    set_addr $I10, rxscan1058_loop
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  rxscan1058_done:
.annotate 'line', 36
  # rx reduce name="nibbler" key="open"
    rx1057_cur."!cursor_pos"(rx1057_pos)
    rx1057_cur."!reduce"("nibbler", "open")
.annotate 'line', 37
  # rx rxquantr1059 ** 0..1
    set_addr $I10, rxquantr1059_done
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  rxquantr1059_loop:
  # rx subrule "ws" subtype=method negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."ws"()
    unless $P10, rx1057_fail
    rx1057_pos = $P10."pos"()
  alt1060_0:
    set_addr $I10, alt1060_1
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  # rx literal  "||"
    add $I11, rx1057_pos, 2
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    substr $S10, rx1057_tgt, $I11, 2
    ne $S10, "||", rx1057_fail
    add rx1057_pos, 2
    goto alt1060_end
  alt1060_1:
    set_addr $I10, alt1060_2
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  # rx literal  "|"
    add $I11, rx1057_pos, 1
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    ord $I11, rx1057_tgt, $I11
    ne $I11, 124, rx1057_fail
    add rx1057_pos, 1
    goto alt1060_end
  alt1060_2:
    set_addr $I10, alt1060_3
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1057_pos, 2
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    substr $S10, rx1057_tgt, $I11, 2
    ne $S10, "&&", rx1057_fail
    add rx1057_pos, 2
    goto alt1060_end
  alt1060_3:
  # rx literal  "&"
    add $I11, rx1057_pos, 1
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    ord $I11, rx1057_tgt, $I11
    ne $I11, 38, rx1057_fail
    add rx1057_pos, 1
  alt1060_end:
    set_addr $I10, rxquantr1059_done
    (rx1057_rep) = rx1057_cur."!mark_commit"($I10)
  rxquantr1059_done:
.annotate 'line', 38
  # rx subrule "termconj" subtype=capture negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."termconj"()
    unless $P10, rx1057_fail
    rx1057_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx1057_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr1061 ** 0..*
    set_addr $I10, rxquantr1061_done
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  rxquantr1061_loop:
  alt1062_0:
.annotate 'line', 40
    set_addr $I10, alt1062_1
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  # rx literal  "||"
    add $I11, rx1057_pos, 2
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    substr $S10, rx1057_tgt, $I11, 2
    ne $S10, "||", rx1057_fail
    add rx1057_pos, 2
    goto alt1062_end
  alt1062_1:
  # rx literal  "|"
    add $I11, rx1057_pos, 1
    gt $I11, rx1057_eos, rx1057_fail
    sub $I11, rx1057_pos, rx1057_off
    ord $I11, rx1057_tgt, $I11
    ne $I11, 124, rx1057_fail
    add rx1057_pos, 1
  alt1062_end:
  alt1063_0:
    set_addr $I10, alt1063_1
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."termconj"()
    unless $P10, rx1057_fail
    rx1057_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx1057_pos = $P10."pos"()
    goto alt1063_end
  alt1063_1:
    set_addr $I10, alt1063_2
    rx1057_cur."!mark_push"(0, rx1057_pos, $I10)
.annotate 'line', 41
  # rx subrule $P1065 subtype=capture negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    .const 'Sub' $P1065 = "28_1315150101.74" 
    capture_lex $P1065
    $P10 = rx1057_cur.$P1065()
    unless $P10, rx1057_fail
    rx1057_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx1057_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."panic"("Unrecognized regex metacharacter (must be quoted to match literally)")
    unless $P10, rx1057_fail
    rx1057_pos = $P10."pos"()
    goto alt1063_end
  alt1063_2:
.annotate 'line', 42
  # rx subrule "panic" subtype=method negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."panic"("Null pattern not allowed")
    unless $P10, rx1057_fail
    rx1057_pos = $P10."pos"()
  alt1063_end:
.annotate 'line', 43
    set_addr $I10, rxquantr1061_done
    (rx1057_rep) = rx1057_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1061_done
    rx1057_cur."!mark_push"(rx1057_rep, rx1057_pos, $I10)
    goto rxquantr1061_loop
  rxquantr1061_done:
.annotate 'line', 35
  # rx pass
    rx1057_cur."!cursor_pass"(rx1057_pos, "nibbler")
    if_null rx1057_debug, debug_300
    rx1057_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx1057_pos)
  debug_300:
    .return (rx1057_cur)
  rx1057_restart:
.annotate 'line', 7
    if_null rx1057_debug, debug_301
    rx1057_cur."!cursor_debug"("NEXT", "nibbler")
  debug_301:
  rx1057_fail:
    (rx1057_rep, rx1057_pos, $I10, $P10) = rx1057_cur."!mark_fail"(0)
    lt rx1057_pos, -1, rx1057_done
    eq rx1057_pos, -1, rx1057_fail
    jump $I10
  rx1057_done:
    rx1057_cur."!cursor_fail"()
    if_null rx1057_debug, debug_302
    rx1057_cur."!cursor_debug"("FAIL", "nibbler")
  debug_302:
    .return (rx1057_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1064"  :anon :subid("28_1315150101.74") :method :outer("27_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 41
    .local string rx1066_tgt
    .local int rx1066_pos
    .local int rx1066_off
    .local int rx1066_eos
    .local int rx1066_rep
    .local pmc rx1066_cur
    .local pmc rx1066_debug
    (rx1066_cur, rx1066_pos, rx1066_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1066_cur
    .local pmc match
    .lex "$/", match
    length rx1066_eos, rx1066_tgt
    gt rx1066_pos, rx1066_eos, rx1066_done
    set rx1066_off, 0
    lt rx1066_pos, 2, rx1066_start
    sub rx1066_off, rx1066_pos, 1
    substr rx1066_tgt, rx1066_tgt, rx1066_off
  rx1066_start:
    eq $I10, 1, rx1066_restart
    if_null rx1066_debug, debug_296
    rx1066_cur."!cursor_debug"("START", "")
  debug_296:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1067_done
    goto rxscan1067_scan
  rxscan1067_loop:
    (rx1066_pos) = rx1066_cur."from"()
    inc rx1066_pos
    rx1066_cur."!cursor_from"(rx1066_pos)
    ge rx1066_pos, rx1066_eos, rxscan1067_done
  rxscan1067_scan:
    set_addr $I10, rxscan1067_loop
    rx1066_cur."!mark_push"(0, rx1066_pos, $I10)
  rxscan1067_done:
  # rx charclass W
    ge rx1066_pos, rx1066_eos, rx1066_fail
    sub $I10, rx1066_pos, rx1066_off
    is_cclass $I11, .CCLASS_WORD, rx1066_tgt, $I10
    if $I11, rx1066_fail
    inc rx1066_pos
  # rx pass
    rx1066_cur."!cursor_pass"(rx1066_pos, "")
    if_null rx1066_debug, debug_297
    rx1066_cur."!cursor_debug"("PASS", "", " at pos=", rx1066_pos)
  debug_297:
    .return (rx1066_cur)
  rx1066_restart:
    if_null rx1066_debug, debug_298
    rx1066_cur."!cursor_debug"("NEXT", "")
  debug_298:
  rx1066_fail:
    (rx1066_rep, rx1066_pos, $I10, $P10) = rx1066_cur."!mark_fail"(0)
    lt rx1066_pos, -1, rx1066_done
    eq rx1066_pos, -1, rx1066_fail
    jump $I10
  rx1066_done:
    rx1066_cur."!cursor_fail"()
    if_null rx1066_debug, debug_299
    rx1066_cur."!cursor_debug"("FAIL", "")
  debug_299:
    .return (rx1066_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("29_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("30_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1070_tgt
    .local int rx1070_pos
    .local int rx1070_off
    .local int rx1070_eos
    .local int rx1070_rep
    .local pmc rx1070_cur
    .local pmc rx1070_debug
    (rx1070_cur, rx1070_pos, rx1070_tgt, $I10) = self."!cursor_start"()
    rx1070_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx1070_cur
    .local pmc match
    .lex "$/", match
    length rx1070_eos, rx1070_tgt
    gt rx1070_pos, rx1070_eos, rx1070_done
    set rx1070_off, 0
    lt rx1070_pos, 2, rx1070_start
    sub rx1070_off, rx1070_pos, 1
    substr rx1070_tgt, rx1070_tgt, rx1070_off
  rx1070_start:
    eq $I10, 1, rx1070_restart
    if_null rx1070_debug, debug_303
    rx1070_cur."!cursor_debug"("START", "termconj")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1071_done
    goto rxscan1071_scan
  rxscan1071_loop:
    (rx1070_pos) = rx1070_cur."from"()
    inc rx1070_pos
    rx1070_cur."!cursor_from"(rx1070_pos)
    ge rx1070_pos, rx1070_eos, rxscan1071_done
  rxscan1071_scan:
    set_addr $I10, rxscan1071_loop
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  rxscan1071_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."termish"()
    unless $P10, rx1070_fail
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx1070_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr1072 ** 0..*
    set_addr $I10, rxquantr1072_done
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  rxquantr1072_loop:
  alt1073_0:
.annotate 'line', 48
    set_addr $I10, alt1073_1
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1070_pos, 2
    gt $I11, rx1070_eos, rx1070_fail
    sub $I11, rx1070_pos, rx1070_off
    substr $S10, rx1070_tgt, $I11, 2
    ne $S10, "&&", rx1070_fail
    add rx1070_pos, 2
    goto alt1073_end
  alt1073_1:
  # rx literal  "&"
    add $I11, rx1070_pos, 1
    gt $I11, rx1070_eos, rx1070_fail
    sub $I11, rx1070_pos, rx1070_off
    ord $I11, rx1070_tgt, $I11
    ne $I11, 38, rx1070_fail
    add rx1070_pos, 1
  alt1073_end:
  alt1074_0:
.annotate 'line', 49
    set_addr $I10, alt1074_1
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."termish"()
    unless $P10, rx1070_fail
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx1070_pos = $P10."pos"()
    goto alt1074_end
  alt1074_1:
  # rx subrule "panic" subtype=method negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."panic"("Null pattern not allowed")
    unless $P10, rx1070_fail
    rx1070_pos = $P10."pos"()
  alt1074_end:
.annotate 'line', 50
    set_addr $I10, rxquantr1072_done
    (rx1070_rep) = rx1070_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1072_done
    rx1070_cur."!mark_push"(rx1070_rep, rx1070_pos, $I10)
    goto rxquantr1072_loop
  rxquantr1072_done:
.annotate 'line', 46
  # rx pass
    rx1070_cur."!cursor_pass"(rx1070_pos, "termconj")
    if_null rx1070_debug, debug_304
    rx1070_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx1070_pos)
  debug_304:
    .return (rx1070_cur)
  rx1070_restart:
.annotate 'line', 7
    if_null rx1070_debug, debug_305
    rx1070_cur."!cursor_debug"("NEXT", "termconj")
  debug_305:
  rx1070_fail:
    (rx1070_rep, rx1070_pos, $I10, $P10) = rx1070_cur."!mark_fail"(0)
    lt rx1070_pos, -1, rx1070_done
    eq rx1070_pos, -1, rx1070_fail
    jump $I10
  rx1070_done:
    rx1070_cur."!cursor_fail"()
    if_null rx1070_debug, debug_306
    rx1070_cur."!cursor_debug"("FAIL", "termconj")
  debug_306:
    .return (rx1070_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :subid("31_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("termish", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("32_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1083 = "33_1315150101.74" 
    capture_lex $P1083
    .local string rx1077_tgt
    .local int rx1077_pos
    .local int rx1077_off
    .local int rx1077_eos
    .local int rx1077_rep
    .local pmc rx1077_cur
    .local pmc rx1077_debug
    (rx1077_cur, rx1077_pos, rx1077_tgt, $I10) = self."!cursor_start"()
    rx1077_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx1077_cur
    .local pmc match
    .lex "$/", match
    length rx1077_eos, rx1077_tgt
    gt rx1077_pos, rx1077_eos, rx1077_done
    set rx1077_off, 0
    lt rx1077_pos, 2, rx1077_start
    sub rx1077_off, rx1077_pos, 1
    substr rx1077_tgt, rx1077_tgt, rx1077_off
  rx1077_start:
    eq $I10, 1, rx1077_restart
    if_null rx1077_debug, debug_307
    rx1077_cur."!cursor_debug"("START", "termish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1078_done
    goto rxscan1078_scan
  rxscan1078_loop:
    (rx1077_pos) = rx1077_cur."from"()
    inc rx1077_pos
    rx1077_cur."!cursor_from"(rx1077_pos)
    ge rx1077_pos, rx1077_eos, rxscan1078_done
  rxscan1078_scan:
    set_addr $I10, rxscan1078_loop
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10)
  rxscan1078_done:
  alt1079_0:
.annotate 'line', 53
    set_addr $I10, alt1079_1
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10)
.annotate 'line', 54
  # rx rxquantr1080 ** 1..*
    set_addr $I10, rxquantr1080_done
    rx1077_cur."!mark_push"(0, -1, $I10)
  rxquantr1080_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."quantified_atom"()
    unless $P10, rx1077_fail
    goto rxsubrule1081_pass
  rxsubrule1081_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1077_fail
  rxsubrule1081_pass:
    set_addr $I10, rxsubrule1081_back
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx1077_pos = $P10."pos"()
    set_addr $I10, rxquantr1080_done
    (rx1077_rep) = rx1077_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1080_done
    rx1077_cur."!mark_push"(rx1077_rep, rx1077_pos, $I10)
    goto rxquantr1080_loop
  rxquantr1080_done:
    goto alt1079_end
  alt1079_1:
.annotate 'line', 55
  # rx subrule $P1083 subtype=capture negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    .const 'Sub' $P1083 = "33_1315150101.74" 
    capture_lex $P1083
    $P10 = rx1077_cur.$P1083()
    unless $P10, rx1077_fail
    rx1077_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx1077_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."panic"("Unrecognized regex metacharacter (must be quoted to match literally)")
    unless $P10, rx1077_fail
    rx1077_pos = $P10."pos"()
  alt1079_end:
.annotate 'line', 53
  # rx pass
    rx1077_cur."!cursor_pass"(rx1077_pos, "termish")
    if_null rx1077_debug, debug_312
    rx1077_cur."!cursor_debug"("PASS", "termish", " at pos=", rx1077_pos)
  debug_312:
    .return (rx1077_cur)
  rx1077_restart:
.annotate 'line', 7
    if_null rx1077_debug, debug_313
    rx1077_cur."!cursor_debug"("NEXT", "termish")
  debug_313:
  rx1077_fail:
    (rx1077_rep, rx1077_pos, $I10, $P10) = rx1077_cur."!mark_fail"(0)
    lt rx1077_pos, -1, rx1077_done
    eq rx1077_pos, -1, rx1077_fail
    jump $I10
  rx1077_done:
    rx1077_cur."!cursor_fail"()
    if_null rx1077_debug, debug_314
    rx1077_cur."!cursor_debug"("FAIL", "termish")
  debug_314:
    .return (rx1077_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1082"  :anon :subid("33_1315150101.74") :method :outer("32_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 55
    .local string rx1084_tgt
    .local int rx1084_pos
    .local int rx1084_off
    .local int rx1084_eos
    .local int rx1084_rep
    .local pmc rx1084_cur
    .local pmc rx1084_debug
    (rx1084_cur, rx1084_pos, rx1084_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1084_cur
    .local pmc match
    .lex "$/", match
    length rx1084_eos, rx1084_tgt
    gt rx1084_pos, rx1084_eos, rx1084_done
    set rx1084_off, 0
    lt rx1084_pos, 2, rx1084_start
    sub rx1084_off, rx1084_pos, 1
    substr rx1084_tgt, rx1084_tgt, rx1084_off
  rx1084_start:
    eq $I10, 1, rx1084_restart
    if_null rx1084_debug, debug_308
    rx1084_cur."!cursor_debug"("START", "")
  debug_308:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1085_done
    goto rxscan1085_scan
  rxscan1085_loop:
    (rx1084_pos) = rx1084_cur."from"()
    inc rx1084_pos
    rx1084_cur."!cursor_from"(rx1084_pos)
    ge rx1084_pos, rx1084_eos, rxscan1085_done
  rxscan1085_scan:
    set_addr $I10, rxscan1085_loop
    rx1084_cur."!mark_push"(0, rx1084_pos, $I10)
  rxscan1085_done:
  # rx charclass W
    ge rx1084_pos, rx1084_eos, rx1084_fail
    sub $I10, rx1084_pos, rx1084_off
    is_cclass $I11, .CCLASS_WORD, rx1084_tgt, $I10
    if $I11, rx1084_fail
    inc rx1084_pos
  # rx pass
    rx1084_cur."!cursor_pass"(rx1084_pos, "")
    if_null rx1084_debug, debug_309
    rx1084_cur."!cursor_debug"("PASS", "", " at pos=", rx1084_pos)
  debug_309:
    .return (rx1084_cur)
  rx1084_restart:
    if_null rx1084_debug, debug_310
    rx1084_cur."!cursor_debug"("NEXT", "")
  debug_310:
  rx1084_fail:
    (rx1084_rep, rx1084_pos, $I10, $P10) = rx1084_cur."!mark_fail"(0)
    lt rx1084_pos, -1, rx1084_done
    eq rx1084_pos, -1, rx1084_fail
    jump $I10
  rx1084_done:
    rx1084_cur."!cursor_fail"()
    if_null rx1084_debug, debug_311
    rx1084_cur."!cursor_debug"("FAIL", "")
  debug_311:
    .return (rx1084_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("34_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("35_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1093 = "36_1315150101.74" 
    capture_lex $P1093
    .local string rx1088_tgt
    .local int rx1088_pos
    .local int rx1088_off
    .local int rx1088_eos
    .local int rx1088_rep
    .local pmc rx1088_cur
    .local pmc rx1088_debug
    (rx1088_cur, rx1088_pos, rx1088_tgt, $I10) = self."!cursor_start"()
    rx1088_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx1088_cur
    .local pmc match
    .lex "$/", match
    length rx1088_eos, rx1088_tgt
    gt rx1088_pos, rx1088_eos, rx1088_done
    set rx1088_off, 0
    lt rx1088_pos, 2, rx1088_start
    sub rx1088_off, rx1088_pos, 1
    substr rx1088_tgt, rx1088_tgt, rx1088_off
  rx1088_start:
    eq $I10, 1, rx1088_restart
    if_null rx1088_debug, debug_315
    rx1088_cur."!cursor_debug"("START", "quantified_atom")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1089_done
    goto rxscan1089_scan
  rxscan1089_loop:
    (rx1088_pos) = rx1088_cur."from"()
    inc rx1088_pos
    rx1088_cur."!cursor_from"(rx1088_pos)
    ge rx1088_pos, rx1088_eos, rxscan1089_done
  rxscan1089_scan:
    set_addr $I10, rxscan1089_loop
    rx1088_cur."!mark_push"(0, rx1088_pos, $I10)
  rxscan1089_done:
.annotate 'line', 59
  # rx subrule "atom" subtype=capture negate=
    rx1088_cur."!cursor_pos"(rx1088_pos)
    $P10 = rx1088_cur."atom"()
    unless $P10, rx1088_fail
    rx1088_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx1088_pos = $P10."pos"()
  # rx rxquantr1090 ** 0..1
    set_addr $I10, rxquantr1090_done
    rx1088_cur."!mark_push"(0, rx1088_pos, $I10)
  rxquantr1090_loop:
  # rx subrule "ws" subtype=method negate=
    rx1088_cur."!cursor_pos"(rx1088_pos)
    $P10 = rx1088_cur."ws"()
    unless $P10, rx1088_fail
    rx1088_pos = $P10."pos"()
  alt1091_0:
    set_addr $I10, alt1091_1
    rx1088_cur."!mark_push"(0, rx1088_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx1088_cur."!cursor_pos"(rx1088_pos)
    $P10 = rx1088_cur."quantifier"()
    unless $P10, rx1088_fail
    rx1088_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx1088_pos = $P10."pos"()
    goto alt1091_end
  alt1091_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx1088_cur."!cursor_pos"(rx1088_pos)
    .const 'Sub' $P1093 = "36_1315150101.74" 
    capture_lex $P1093
    $P10 = rx1088_cur."before"($P1093)
    unless $P10, rx1088_fail
  # rx subrule "backmod" subtype=capture negate=
    rx1088_cur."!cursor_pos"(rx1088_pos)
    $P10 = rx1088_cur."backmod"()
    unless $P10, rx1088_fail
    rx1088_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx1088_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx1088_cur."!cursor_pos"(rx1088_pos)
    $P10 = rx1088_cur."alpha"()
    if $P10, rx1088_fail
  alt1091_end:
    set_addr $I10, rxquantr1090_done
    (rx1088_rep) = rx1088_cur."!mark_commit"($I10)
  rxquantr1090_done:
.annotate 'line', 58
  # rx pass
    rx1088_cur."!cursor_pass"(rx1088_pos, "quantified_atom")
    if_null rx1088_debug, debug_320
    rx1088_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx1088_pos)
  debug_320:
    .return (rx1088_cur)
  rx1088_restart:
.annotate 'line', 7
    if_null rx1088_debug, debug_321
    rx1088_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_321:
  rx1088_fail:
    (rx1088_rep, rx1088_pos, $I10, $P10) = rx1088_cur."!mark_fail"(0)
    lt rx1088_pos, -1, rx1088_done
    eq rx1088_pos, -1, rx1088_fail
    jump $I10
  rx1088_done:
    rx1088_cur."!cursor_fail"()
    if_null rx1088_debug, debug_322
    rx1088_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_322:
    .return (rx1088_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1092"  :anon :subid("36_1315150101.74") :method :outer("35_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 59
    .local string rx1094_tgt
    .local int rx1094_pos
    .local int rx1094_off
    .local int rx1094_eos
    .local int rx1094_rep
    .local pmc rx1094_cur
    .local pmc rx1094_debug
    (rx1094_cur, rx1094_pos, rx1094_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1094_cur
    .local pmc match
    .lex "$/", match
    length rx1094_eos, rx1094_tgt
    gt rx1094_pos, rx1094_eos, rx1094_done
    set rx1094_off, 0
    lt rx1094_pos, 2, rx1094_start
    sub rx1094_off, rx1094_pos, 1
    substr rx1094_tgt, rx1094_tgt, rx1094_off
  rx1094_start:
    eq $I10, 1, rx1094_restart
    if_null rx1094_debug, debug_316
    rx1094_cur."!cursor_debug"("START", "")
  debug_316:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1095_done
    goto rxscan1095_scan
  rxscan1095_loop:
    (rx1094_pos) = rx1094_cur."from"()
    inc rx1094_pos
    rx1094_cur."!cursor_from"(rx1094_pos)
    ge rx1094_pos, rx1094_eos, rxscan1095_done
  rxscan1095_scan:
    set_addr $I10, rxscan1095_loop
    rx1094_cur."!mark_push"(0, rx1094_pos, $I10)
  rxscan1095_done:
  # rx literal  ":"
    add $I11, rx1094_pos, 1
    gt $I11, rx1094_eos, rx1094_fail
    sub $I11, rx1094_pos, rx1094_off
    ord $I11, rx1094_tgt, $I11
    ne $I11, 58, rx1094_fail
    add rx1094_pos, 1
  # rx pass
    rx1094_cur."!cursor_pass"(rx1094_pos, "")
    if_null rx1094_debug, debug_317
    rx1094_cur."!cursor_debug"("PASS", "", " at pos=", rx1094_pos)
  debug_317:
    .return (rx1094_cur)
  rx1094_restart:
    if_null rx1094_debug, debug_318
    rx1094_cur."!cursor_debug"("NEXT", "")
  debug_318:
  rx1094_fail:
    (rx1094_rep, rx1094_pos, $I10, $P10) = rx1094_cur."!mark_fail"(0)
    lt rx1094_pos, -1, rx1094_done
    eq rx1094_pos, -1, rx1094_fail
    jump $I10
  rx1094_done:
    rx1094_cur."!cursor_fail"()
    if_null rx1094_debug, debug_319
    rx1094_cur."!cursor_debug"("FAIL", "")
  debug_319:
    .return (rx1094_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("37_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("atom", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("38_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1104 = "39_1315150101.74" 
    capture_lex $P1104
    .local string rx1098_tgt
    .local int rx1098_pos
    .local int rx1098_off
    .local int rx1098_eos
    .local int rx1098_rep
    .local pmc rx1098_cur
    .local pmc rx1098_debug
    (rx1098_cur, rx1098_pos, rx1098_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1098_cur
    .local pmc match
    .lex "$/", match
    length rx1098_eos, rx1098_tgt
    gt rx1098_pos, rx1098_eos, rx1098_done
    set rx1098_off, 0
    lt rx1098_pos, 2, rx1098_start
    sub rx1098_off, rx1098_pos, 1
    substr rx1098_tgt, rx1098_tgt, rx1098_off
  rx1098_start:
    eq $I10, 1, rx1098_restart
    if_null rx1098_debug, debug_323
    rx1098_cur."!cursor_debug"("START", "atom")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1099_done
    goto rxscan1099_scan
  rxscan1099_loop:
    (rx1098_pos) = rx1098_cur."from"()
    inc rx1098_pos
    rx1098_cur."!cursor_from"(rx1098_pos)
    ge rx1098_pos, rx1098_eos, rxscan1099_done
  rxscan1099_scan:
    set_addr $I10, rxscan1099_loop
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
  rxscan1099_done:
  alt1100_0:
.annotate 'line', 64
    set_addr $I10, alt1100_1
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
.annotate 'line', 65
  # rx charclass w
    ge rx1098_pos, rx1098_eos, rx1098_fail
    sub $I10, rx1098_pos, rx1098_off
    is_cclass $I11, .CCLASS_WORD, rx1098_tgt, $I10
    unless $I11, rx1098_fail
    inc rx1098_pos
  # rx rxquantr1101 ** 0..1
    set_addr $I10, rxquantr1101_done
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
  rxquantr1101_loop:
  # rx rxquantg1102 ** 1..*
  rxquantg1102_loop:
  # rx charclass w
    ge rx1098_pos, rx1098_eos, rx1098_fail
    sub $I10, rx1098_pos, rx1098_off
    is_cclass $I11, .CCLASS_WORD, rx1098_tgt, $I10
    unless $I11, rx1098_fail
    inc rx1098_pos
    set_addr $I10, rxquantg1102_done
    rx1098_cur."!mark_push"(rx1098_rep, rx1098_pos, $I10)
    goto rxquantg1102_loop
  rxquantg1102_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx1098_cur."!cursor_pos"(rx1098_pos)
    .const 'Sub' $P1104 = "39_1315150101.74" 
    capture_lex $P1104
    $P10 = rx1098_cur."before"($P1104)
    unless $P10, rx1098_fail
    set_addr $I10, rxquantr1101_done
    (rx1098_rep) = rx1098_cur."!mark_commit"($I10)
  rxquantr1101_done:
    goto alt1100_end
  alt1100_1:
.annotate 'line', 66
  # rx subrule "metachar" subtype=capture negate=
    rx1098_cur."!cursor_pos"(rx1098_pos)
    $P10 = rx1098_cur."metachar"()
    unless $P10, rx1098_fail
    rx1098_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx1098_pos = $P10."pos"()
  alt1100_end:
.annotate 'line', 62
  # rx pass
    rx1098_cur."!cursor_pass"(rx1098_pos, "atom")
    if_null rx1098_debug, debug_328
    rx1098_cur."!cursor_debug"("PASS", "atom", " at pos=", rx1098_pos)
  debug_328:
    .return (rx1098_cur)
  rx1098_restart:
.annotate 'line', 7
    if_null rx1098_debug, debug_329
    rx1098_cur."!cursor_debug"("NEXT", "atom")
  debug_329:
  rx1098_fail:
    (rx1098_rep, rx1098_pos, $I10, $P10) = rx1098_cur."!mark_fail"(0)
    lt rx1098_pos, -1, rx1098_done
    eq rx1098_pos, -1, rx1098_fail
    jump $I10
  rx1098_done:
    rx1098_cur."!cursor_fail"()
    if_null rx1098_debug, debug_330
    rx1098_cur."!cursor_debug"("FAIL", "atom")
  debug_330:
    .return (rx1098_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1103"  :anon :subid("39_1315150101.74") :method :outer("38_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 65
    .local string rx1105_tgt
    .local int rx1105_pos
    .local int rx1105_off
    .local int rx1105_eos
    .local int rx1105_rep
    .local pmc rx1105_cur
    .local pmc rx1105_debug
    (rx1105_cur, rx1105_pos, rx1105_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1105_cur
    .local pmc match
    .lex "$/", match
    length rx1105_eos, rx1105_tgt
    gt rx1105_pos, rx1105_eos, rx1105_done
    set rx1105_off, 0
    lt rx1105_pos, 2, rx1105_start
    sub rx1105_off, rx1105_pos, 1
    substr rx1105_tgt, rx1105_tgt, rx1105_off
  rx1105_start:
    eq $I10, 1, rx1105_restart
    if_null rx1105_debug, debug_324
    rx1105_cur."!cursor_debug"("START", "")
  debug_324:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1106_done
    goto rxscan1106_scan
  rxscan1106_loop:
    (rx1105_pos) = rx1105_cur."from"()
    inc rx1105_pos
    rx1105_cur."!cursor_from"(rx1105_pos)
    ge rx1105_pos, rx1105_eos, rxscan1106_done
  rxscan1106_scan:
    set_addr $I10, rxscan1106_loop
    rx1105_cur."!mark_push"(0, rx1105_pos, $I10)
  rxscan1106_done:
  # rx charclass w
    ge rx1105_pos, rx1105_eos, rx1105_fail
    sub $I10, rx1105_pos, rx1105_off
    is_cclass $I11, .CCLASS_WORD, rx1105_tgt, $I10
    unless $I11, rx1105_fail
    inc rx1105_pos
  # rx pass
    rx1105_cur."!cursor_pass"(rx1105_pos, "")
    if_null rx1105_debug, debug_325
    rx1105_cur."!cursor_debug"("PASS", "", " at pos=", rx1105_pos)
  debug_325:
    .return (rx1105_cur)
  rx1105_restart:
    if_null rx1105_debug, debug_326
    rx1105_cur."!cursor_debug"("NEXT", "")
  debug_326:
  rx1105_fail:
    (rx1105_rep, rx1105_pos, $I10, $P10) = rx1105_cur."!mark_fail"(0)
    lt rx1105_pos, -1, rx1105_done
    eq rx1105_pos, -1, rx1105_fail
    jump $I10
  rx1105_done:
    rx1105_cur."!cursor_fail"()
    if_null rx1105_debug, debug_327
    rx1105_cur."!cursor_debug"("FAIL", "")
  debug_327:
    .return (rx1105_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("40_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("metachar", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("41_1315150101.74")
    .param pmc param_1109
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 70
    .lex "self", param_1109
    $P101 = param_1109."!protoregex"("quantifier")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("42_1315150101.74")
    .param pmc param_1111
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 70
    .lex "self", param_1111
    $P103 = param_1111."!PREFIX__!protoregex"("quantifier")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("43_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1113_tgt
    .local int rx1113_pos
    .local int rx1113_off
    .local int rx1113_eos
    .local int rx1113_rep
    .local pmc rx1113_cur
    .local pmc rx1113_debug
    (rx1113_cur, rx1113_pos, rx1113_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1113_cur
    .local pmc match
    .lex "$/", match
    length rx1113_eos, rx1113_tgt
    gt rx1113_pos, rx1113_eos, rx1113_done
    set rx1113_off, 0
    lt rx1113_pos, 2, rx1113_start
    sub rx1113_off, rx1113_pos, 1
    substr rx1113_tgt, rx1113_tgt, rx1113_off
  rx1113_start:
    eq $I10, 1, rx1113_restart
    if_null rx1113_debug, debug_331
    rx1113_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1114_done
    goto rxscan1114_scan
  rxscan1114_loop:
    (rx1113_pos) = rx1113_cur."from"()
    inc rx1113_pos
    rx1113_cur."!cursor_from"(rx1113_pos)
    ge rx1113_pos, rx1113_eos, rxscan1114_done
  rxscan1114_scan:
    set_addr $I10, rxscan1114_loop
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  rxscan1114_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_1115_fail
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  # rx literal  "*"
    add $I11, rx1113_pos, 1
    gt $I11, rx1113_eos, rx1113_fail
    sub $I11, rx1113_pos, rx1113_off
    ord $I11, rx1113_tgt, $I11
    ne $I11, 42, rx1113_fail
    add rx1113_pos, 1
    set_addr $I10, rxcap_1115_fail
    ($I12, $I11) = rx1113_cur."!mark_peek"($I10)
    rx1113_cur."!cursor_pos"($I11)
    ($P10) = rx1113_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1113_pos, "")
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1115_done
  rxcap_1115_fail:
    goto rx1113_fail
  rxcap_1115_done:
  # rx subrule "backmod" subtype=capture negate=
    rx1113_cur."!cursor_pos"(rx1113_pos)
    $P10 = rx1113_cur."backmod"()
    unless $P10, rx1113_fail
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx1113_pos = $P10."pos"()
  # rx pass
    rx1113_cur."!cursor_pass"(rx1113_pos, "quantifier:sym<*>")
    if_null rx1113_debug, debug_332
    rx1113_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx1113_pos)
  debug_332:
    .return (rx1113_cur)
  rx1113_restart:
.annotate 'line', 7
    if_null rx1113_debug, debug_333
    rx1113_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_333:
  rx1113_fail:
    (rx1113_rep, rx1113_pos, $I10, $P10) = rx1113_cur."!mark_fail"(0)
    lt rx1113_pos, -1, rx1113_done
    eq rx1113_pos, -1, rx1113_fail
    jump $I10
  rx1113_done:
    rx1113_cur."!cursor_fail"()
    if_null rx1113_debug, debug_334
    rx1113_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_334:
    .return (rx1113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("44_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("backmod", "*")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("45_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1118_tgt
    .local int rx1118_pos
    .local int rx1118_off
    .local int rx1118_eos
    .local int rx1118_rep
    .local pmc rx1118_cur
    .local pmc rx1118_debug
    (rx1118_cur, rx1118_pos, rx1118_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1118_cur
    .local pmc match
    .lex "$/", match
    length rx1118_eos, rx1118_tgt
    gt rx1118_pos, rx1118_eos, rx1118_done
    set rx1118_off, 0
    lt rx1118_pos, 2, rx1118_start
    sub rx1118_off, rx1118_pos, 1
    substr rx1118_tgt, rx1118_tgt, rx1118_off
  rx1118_start:
    eq $I10, 1, rx1118_restart
    if_null rx1118_debug, debug_335
    rx1118_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1119_done
    goto rxscan1119_scan
  rxscan1119_loop:
    (rx1118_pos) = rx1118_cur."from"()
    inc rx1118_pos
    rx1118_cur."!cursor_from"(rx1118_pos)
    ge rx1118_pos, rx1118_eos, rxscan1119_done
  rxscan1119_scan:
    set_addr $I10, rxscan1119_loop
    rx1118_cur."!mark_push"(0, rx1118_pos, $I10)
  rxscan1119_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_1120_fail
    rx1118_cur."!mark_push"(0, rx1118_pos, $I10)
  # rx literal  "+"
    add $I11, rx1118_pos, 1
    gt $I11, rx1118_eos, rx1118_fail
    sub $I11, rx1118_pos, rx1118_off
    ord $I11, rx1118_tgt, $I11
    ne $I11, 43, rx1118_fail
    add rx1118_pos, 1
    set_addr $I10, rxcap_1120_fail
    ($I12, $I11) = rx1118_cur."!mark_peek"($I10)
    rx1118_cur."!cursor_pos"($I11)
    ($P10) = rx1118_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1118_pos, "")
    rx1118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1120_done
  rxcap_1120_fail:
    goto rx1118_fail
  rxcap_1120_done:
  # rx subrule "backmod" subtype=capture negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."backmod"()
    unless $P10, rx1118_fail
    rx1118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx1118_pos = $P10."pos"()
  # rx pass
    rx1118_cur."!cursor_pass"(rx1118_pos, "quantifier:sym<+>")
    if_null rx1118_debug, debug_336
    rx1118_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx1118_pos)
  debug_336:
    .return (rx1118_cur)
  rx1118_restart:
.annotate 'line', 7
    if_null rx1118_debug, debug_337
    rx1118_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_337:
  rx1118_fail:
    (rx1118_rep, rx1118_pos, $I10, $P10) = rx1118_cur."!mark_fail"(0)
    lt rx1118_pos, -1, rx1118_done
    eq rx1118_pos, -1, rx1118_fail
    jump $I10
  rx1118_done:
    rx1118_cur."!cursor_fail"()
    if_null rx1118_debug, debug_338
    rx1118_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_338:
    .return (rx1118_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("46_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("backmod", "+")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("47_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1123_tgt
    .local int rx1123_pos
    .local int rx1123_off
    .local int rx1123_eos
    .local int rx1123_rep
    .local pmc rx1123_cur
    .local pmc rx1123_debug
    (rx1123_cur, rx1123_pos, rx1123_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1123_cur
    .local pmc match
    .lex "$/", match
    length rx1123_eos, rx1123_tgt
    gt rx1123_pos, rx1123_eos, rx1123_done
    set rx1123_off, 0
    lt rx1123_pos, 2, rx1123_start
    sub rx1123_off, rx1123_pos, 1
    substr rx1123_tgt, rx1123_tgt, rx1123_off
  rx1123_start:
    eq $I10, 1, rx1123_restart
    if_null rx1123_debug, debug_339
    rx1123_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1124_done
    goto rxscan1124_scan
  rxscan1124_loop:
    (rx1123_pos) = rx1123_cur."from"()
    inc rx1123_pos
    rx1123_cur."!cursor_from"(rx1123_pos)
    ge rx1123_pos, rx1123_eos, rxscan1124_done
  rxscan1124_scan:
    set_addr $I10, rxscan1124_loop
    rx1123_cur."!mark_push"(0, rx1123_pos, $I10)
  rxscan1124_done:
.annotate 'line', 73
  # rx subcapture "sym"
    set_addr $I10, rxcap_1125_fail
    rx1123_cur."!mark_push"(0, rx1123_pos, $I10)
  # rx literal  "?"
    add $I11, rx1123_pos, 1
    gt $I11, rx1123_eos, rx1123_fail
    sub $I11, rx1123_pos, rx1123_off
    ord $I11, rx1123_tgt, $I11
    ne $I11, 63, rx1123_fail
    add rx1123_pos, 1
    set_addr $I10, rxcap_1125_fail
    ($I12, $I11) = rx1123_cur."!mark_peek"($I10)
    rx1123_cur."!cursor_pos"($I11)
    ($P10) = rx1123_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1123_pos, "")
    rx1123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1125_done
  rxcap_1125_fail:
    goto rx1123_fail
  rxcap_1125_done:
  # rx subrule "backmod" subtype=capture negate=
    rx1123_cur."!cursor_pos"(rx1123_pos)
    $P10 = rx1123_cur."backmod"()
    unless $P10, rx1123_fail
    rx1123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx1123_pos = $P10."pos"()
  # rx pass
    rx1123_cur."!cursor_pass"(rx1123_pos, "quantifier:sym<?>")
    if_null rx1123_debug, debug_340
    rx1123_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx1123_pos)
  debug_340:
    .return (rx1123_cur)
  rx1123_restart:
.annotate 'line', 7
    if_null rx1123_debug, debug_341
    rx1123_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_341:
  rx1123_fail:
    (rx1123_rep, rx1123_pos, $I10, $P10) = rx1123_cur."!mark_fail"(0)
    lt rx1123_pos, -1, rx1123_done
    eq rx1123_pos, -1, rx1123_fail
    jump $I10
  rx1123_done:
    rx1123_cur."!cursor_fail"()
    if_null rx1123_debug, debug_342
    rx1123_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_342:
    .return (rx1123_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("48_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("backmod", "?")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("49_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1142 = "53_1315150101.74" 
    capture_lex $P1142
    .const 'Sub' $P1137 = "52_1315150101.74" 
    capture_lex $P1137
    .const 'Sub' $P1133 = "51_1315150101.74" 
    capture_lex $P1133
    .const 'Sub' $P1131 = "50_1315150101.74" 
    capture_lex $P1131
    .local string rx1128_tgt
    .local int rx1128_pos
    .local int rx1128_off
    .local int rx1128_eos
    .local int rx1128_rep
    .local pmc rx1128_cur
    .local pmc rx1128_debug
    (rx1128_cur, rx1128_pos, rx1128_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1128_cur
    .local pmc match
    .lex "$/", match
    length rx1128_eos, rx1128_tgt
    gt rx1128_pos, rx1128_eos, rx1128_done
    set rx1128_off, 0
    lt rx1128_pos, 2, rx1128_start
    sub rx1128_off, rx1128_pos, 1
    substr rx1128_tgt, rx1128_tgt, rx1128_off
  rx1128_start:
    eq $I10, 1, rx1128_restart
    if_null rx1128_debug, debug_343
    rx1128_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1129_done
    goto rxscan1129_scan
  rxscan1129_loop:
    (rx1128_pos) = rx1128_cur."from"()
    inc rx1128_pos
    rx1128_cur."!cursor_from"(rx1128_pos)
    ge rx1128_pos, rx1128_eos, rxscan1129_done
  rxscan1129_scan:
    set_addr $I10, rxscan1129_loop
    rx1128_cur."!mark_push"(0, rx1128_pos, $I10)
  rxscan1129_done:
.annotate 'line', 74
    rx1128_cur."!cursor_pos"(rx1128_pos)
    find_lex $P101, unicode:"$\x{a2}"
    $P103 = $P101."MATCH"()
    store_lex "$/", $P103
    .const 'Sub' $P1131 = "50_1315150101.74" 
    capture_lex $P1131
    $P104 = $P1131()
  # rx literal  "{"
    add $I11, rx1128_pos, 1
    gt $I11, rx1128_eos, rx1128_fail
    sub $I11, rx1128_pos, rx1128_off
    ord $I11, rx1128_tgt, $I11
    ne $I11, 123, rx1128_fail
    add rx1128_pos, 1
  # rx subrule $P1133 subtype=capture negate=
    rx1128_cur."!cursor_pos"(rx1128_pos)
    .const 'Sub' $P1133 = "51_1315150101.74" 
    capture_lex $P1133
    $P10 = rx1128_cur.$P1133()
    unless $P10, rx1128_fail
    rx1128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx1128_pos = $P10."pos"()
  # rx subrule $P1137 subtype=capture negate=
    rx1128_cur."!cursor_pos"(rx1128_pos)
    .const 'Sub' $P1137 = "52_1315150101.74" 
    capture_lex $P1137
    $P10 = rx1128_cur.$P1137()
    unless $P10, rx1128_fail
    rx1128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx1128_pos = $P10."pos"()
  # rx subrule $P1142 subtype=capture negate=
    rx1128_cur."!cursor_pos"(rx1128_pos)
    .const 'Sub' $P1142 = "53_1315150101.74" 
    capture_lex $P1142
    $P10 = rx1128_cur.$P1142()
    unless $P10, rx1128_fail
    rx1128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx1128_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx1128_pos, 1
    gt $I11, rx1128_eos, rx1128_fail
    sub $I11, rx1128_pos, rx1128_off
    ord $I11, rx1128_tgt, $I11
    ne $I11, 125, rx1128_fail
    add rx1128_pos, 1
.annotate 'line', 75
  # rx subrule "obs" subtype=method negate=
    rx1128_cur."!cursor_pos"(rx1128_pos)
    $P10 = rx1128_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx1128_fail
    rx1128_pos = $P10."pos"()
.annotate 'line', 74
  # rx pass
    rx1128_cur."!cursor_pass"(rx1128_pos, "quantifier:sym<{N,M}>")
    if_null rx1128_debug, debug_356
    rx1128_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx1128_pos)
  debug_356:
    .return (rx1128_cur)
  rx1128_restart:
.annotate 'line', 7
    if_null rx1128_debug, debug_357
    rx1128_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_357:
  rx1128_fail:
    (rx1128_rep, rx1128_pos, $I10, $P10) = rx1128_cur."!mark_fail"(0)
    lt rx1128_pos, -1, rx1128_done
    eq rx1128_pos, -1, rx1128_fail
    jump $I10
  rx1128_done:
    rx1128_cur."!cursor_fail"()
    if_null rx1128_debug, debug_358
    rx1128_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_358:
    .return (rx1128_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1130"  :anon :subid("50_1315150101.74") :outer("49_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 74
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1132"  :anon :subid("51_1315150101.74") :method :outer("49_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 74
    .local string rx1134_tgt
    .local int rx1134_pos
    .local int rx1134_off
    .local int rx1134_eos
    .local int rx1134_rep
    .local pmc rx1134_cur
    .local pmc rx1134_debug
    (rx1134_cur, rx1134_pos, rx1134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1134_cur
    .local pmc match
    .lex "$/", match
    length rx1134_eos, rx1134_tgt
    gt rx1134_pos, rx1134_eos, rx1134_done
    set rx1134_off, 0
    lt rx1134_pos, 2, rx1134_start
    sub rx1134_off, rx1134_pos, 1
    substr rx1134_tgt, rx1134_tgt, rx1134_off
  rx1134_start:
    eq $I10, 1, rx1134_restart
    if_null rx1134_debug, debug_344
    rx1134_cur."!cursor_debug"("START", "")
  debug_344:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1135_done
    goto rxscan1135_scan
  rxscan1135_loop:
    (rx1134_pos) = rx1134_cur."from"()
    inc rx1134_pos
    rx1134_cur."!cursor_from"(rx1134_pos)
    ge rx1134_pos, rx1134_eos, rxscan1135_done
  rxscan1135_scan:
    set_addr $I10, rxscan1135_loop
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  rxscan1135_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx1134_pos, rx1134_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1134_tgt, $I10, rx1134_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1134_fail
    add rx1134_pos, rx1134_off, $I11
  # rx pass
    rx1134_cur."!cursor_pass"(rx1134_pos, "")
    if_null rx1134_debug, debug_345
    rx1134_cur."!cursor_debug"("PASS", "", " at pos=", rx1134_pos)
  debug_345:
    .return (rx1134_cur)
  rx1134_restart:
    if_null rx1134_debug, debug_346
    rx1134_cur."!cursor_debug"("NEXT", "")
  debug_346:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_347
    rx1134_cur."!cursor_debug"("FAIL", "")
  debug_347:
    .return (rx1134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1136"  :anon :subid("52_1315150101.74") :method :outer("49_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 74
    .local string rx1138_tgt
    .local int rx1138_pos
    .local int rx1138_off
    .local int rx1138_eos
    .local int rx1138_rep
    .local pmc rx1138_cur
    .local pmc rx1138_debug
    (rx1138_cur, rx1138_pos, rx1138_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1138_cur
    .local pmc match
    .lex "$/", match
    length rx1138_eos, rx1138_tgt
    gt rx1138_pos, rx1138_eos, rx1138_done
    set rx1138_off, 0
    lt rx1138_pos, 2, rx1138_start
    sub rx1138_off, rx1138_pos, 1
    substr rx1138_tgt, rx1138_tgt, rx1138_off
  rx1138_start:
    eq $I10, 1, rx1138_restart
    if_null rx1138_debug, debug_348
    rx1138_cur."!cursor_debug"("START", "")
  debug_348:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1139_done
    goto rxscan1139_scan
  rxscan1139_loop:
    (rx1138_pos) = rx1138_cur."from"()
    inc rx1138_pos
    rx1138_cur."!cursor_from"(rx1138_pos)
    ge rx1138_pos, rx1138_eos, rxscan1139_done
  rxscan1139_scan:
    set_addr $I10, rxscan1139_loop
    rx1138_cur."!mark_push"(0, rx1138_pos, $I10)
  rxscan1139_done:
  # rx rxquantr1140 ** 0..1
    set_addr $I10, rxquantr1140_done
    rx1138_cur."!mark_push"(0, rx1138_pos, $I10)
  rxquantr1140_loop:
  # rx literal  ","
    add $I11, rx1138_pos, 1
    gt $I11, rx1138_eos, rx1138_fail
    sub $I11, rx1138_pos, rx1138_off
    ord $I11, rx1138_tgt, $I11
    ne $I11, 44, rx1138_fail
    add rx1138_pos, 1
    set_addr $I10, rxquantr1140_done
    (rx1138_rep) = rx1138_cur."!mark_commit"($I10)
  rxquantr1140_done:
  # rx pass
    rx1138_cur."!cursor_pass"(rx1138_pos, "")
    if_null rx1138_debug, debug_349
    rx1138_cur."!cursor_debug"("PASS", "", " at pos=", rx1138_pos)
  debug_349:
    .return (rx1138_cur)
  rx1138_restart:
    if_null rx1138_debug, debug_350
    rx1138_cur."!cursor_debug"("NEXT", "")
  debug_350:
  rx1138_fail:
    (rx1138_rep, rx1138_pos, $I10, $P10) = rx1138_cur."!mark_fail"(0)
    lt rx1138_pos, -1, rx1138_done
    eq rx1138_pos, -1, rx1138_fail
    jump $I10
  rx1138_done:
    rx1138_cur."!cursor_fail"()
    if_null rx1138_debug, debug_351
    rx1138_cur."!cursor_debug"("FAIL", "")
  debug_351:
    .return (rx1138_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1141"  :anon :subid("53_1315150101.74") :method :outer("49_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 74
    .local string rx1143_tgt
    .local int rx1143_pos
    .local int rx1143_off
    .local int rx1143_eos
    .local int rx1143_rep
    .local pmc rx1143_cur
    .local pmc rx1143_debug
    (rx1143_cur, rx1143_pos, rx1143_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1143_cur
    .local pmc match
    .lex "$/", match
    length rx1143_eos, rx1143_tgt
    gt rx1143_pos, rx1143_eos, rx1143_done
    set rx1143_off, 0
    lt rx1143_pos, 2, rx1143_start
    sub rx1143_off, rx1143_pos, 1
    substr rx1143_tgt, rx1143_tgt, rx1143_off
  rx1143_start:
    eq $I10, 1, rx1143_restart
    if_null rx1143_debug, debug_352
    rx1143_cur."!cursor_debug"("START", "")
  debug_352:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1144_done
    goto rxscan1144_scan
  rxscan1144_loop:
    (rx1143_pos) = rx1143_cur."from"()
    inc rx1143_pos
    rx1143_cur."!cursor_from"(rx1143_pos)
    ge rx1143_pos, rx1143_eos, rxscan1144_done
  rxscan1144_scan:
    set_addr $I10, rxscan1144_loop
    rx1143_cur."!mark_push"(0, rx1143_pos, $I10)
  rxscan1144_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx1143_pos, rx1143_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1143_tgt, $I10, rx1143_eos
    add rx1143_pos, rx1143_off, $I11
  # rx pass
    rx1143_cur."!cursor_pass"(rx1143_pos, "")
    if_null rx1143_debug, debug_353
    rx1143_cur."!cursor_debug"("PASS", "", " at pos=", rx1143_pos)
  debug_353:
    .return (rx1143_cur)
  rx1143_restart:
    if_null rx1143_debug, debug_354
    rx1143_cur."!cursor_debug"("NEXT", "")
  debug_354:
  rx1143_fail:
    (rx1143_rep, rx1143_pos, $I10, $P10) = rx1143_cur."!mark_fail"(0)
    lt rx1143_pos, -1, rx1143_done
    eq rx1143_pos, -1, rx1143_fail
    jump $I10
  rx1143_done:
    rx1143_cur."!cursor_fail"()
    if_null rx1143_debug, debug_355
    rx1143_cur."!cursor_debug"("FAIL", "")
  debug_355:
    .return (rx1143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :subid("54_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("55_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1147_tgt
    .local int rx1147_pos
    .local int rx1147_off
    .local int rx1147_eos
    .local int rx1147_rep
    .local pmc rx1147_cur
    .local pmc rx1147_debug
    (rx1147_cur, rx1147_pos, rx1147_tgt, $I10) = self."!cursor_start"()
    rx1147_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx1147_cur
    .local pmc match
    .lex "$/", match
    length rx1147_eos, rx1147_tgt
    gt rx1147_pos, rx1147_eos, rx1147_done
    set rx1147_off, 0
    lt rx1147_pos, 2, rx1147_start
    sub rx1147_off, rx1147_pos, 1
    substr rx1147_tgt, rx1147_tgt, rx1147_off
  rx1147_start:
    eq $I10, 1, rx1147_restart
    if_null rx1147_debug, debug_359
    rx1147_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1148_done
    goto rxscan1148_scan
  rxscan1148_loop:
    (rx1147_pos) = rx1147_cur."from"()
    inc rx1147_pos
    rx1147_cur."!cursor_from"(rx1147_pos)
    ge rx1147_pos, rx1147_eos, rxscan1148_done
  rxscan1148_scan:
    set_addr $I10, rxscan1148_loop
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxscan1148_done:
.annotate 'line', 78
  # rx subcapture "sym"
    set_addr $I10, rxcap_1149_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx literal  "**"
    add $I11, rx1147_pos, 2
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    substr $S10, rx1147_tgt, $I11, 2
    ne $S10, "**", rx1147_fail
    add rx1147_pos, 2
    set_addr $I10, rxcap_1149_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1149_done
  rxcap_1149_fail:
    goto rx1147_fail
  rxcap_1149_done:
  # rx rxquantr1150 ** 0..1
    set_addr $I10, rxquantr1150_done
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxquantr1150_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."normspace"()
    unless $P10, rx1147_fail
    goto rxsubrule1151_pass
  rxsubrule1151_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1147_fail
  rxsubrule1151_pass:
    set_addr $I10, rxsubrule1151_back
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx1147_pos = $P10."pos"()
    set_addr $I10, rxquantr1150_done
    (rx1147_rep) = rx1147_cur."!mark_commit"($I10)
  rxquantr1150_done:
  # rx subrule "backmod" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."backmod"()
    unless $P10, rx1147_fail
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx1147_pos = $P10."pos"()
  # rx rxquantr1152 ** 0..1
    set_addr $I10, rxquantr1152_done
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxquantr1152_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."normspace"()
    unless $P10, rx1147_fail
    goto rxsubrule1153_pass
  rxsubrule1153_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1147_fail
  rxsubrule1153_pass:
    set_addr $I10, rxsubrule1153_back
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx1147_pos = $P10."pos"()
    set_addr $I10, rxquantr1152_done
    (rx1147_rep) = rx1147_cur."!mark_commit"($I10)
  rxquantr1152_done:
  alt1154_0:
.annotate 'line', 79
    set_addr $I10, alt1154_1
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
.annotate 'line', 80
  # rx subcapture "min"
    set_addr $I10, rxcap_1155_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
    set_addr $I10, rxcap_1155_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_1155_done
  rxcap_1155_fail:
    goto rx1147_fail
  rxcap_1155_done:
.annotate 'line', 87
  # rx rxquantr1156 ** 0..1
    set_addr $I10, rxquantr1156_done
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxquantr1156_loop:
.annotate 'line', 81
  # rx literal  ".."
    add $I11, rx1147_pos, 2
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    substr $S10, rx1147_tgt, $I11, 2
    ne $S10, "..", rx1147_fail
    add rx1147_pos, 2
.annotate 'line', 82
  # rx subcapture "max"
    set_addr $I10, rxcap_1158_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  alt1157_0:
    set_addr $I10, alt1157_1
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
.annotate 'line', 83
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
    goto alt1157_end
  alt1157_1:
    set_addr $I10, alt1157_2
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
.annotate 'line', 84
  # rx literal  "*"
    add $I11, rx1147_pos, 1
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    ord $I11, rx1147_tgt, $I11
    ne $I11, 42, rx1147_fail
    add rx1147_pos, 1
    goto alt1157_end
  alt1157_2:
.annotate 'line', 85
  # rx subrule "panic" subtype=method negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx1147_fail
    rx1147_pos = $P10."pos"()
  alt1157_end:
.annotate 'line', 82
    set_addr $I10, rxcap_1158_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_1158_done
  rxcap_1158_fail:
    goto rx1147_fail
  rxcap_1158_done:
.annotate 'line', 87
    set_addr $I10, rxquantr1156_done
    (rx1147_rep) = rx1147_cur."!mark_commit"($I10)
  rxquantr1156_done:
.annotate 'line', 80
    goto alt1154_end
  alt1154_1:
.annotate 'line', 88
  # rx subrule "quantified_atom" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."quantified_atom"()
    unless $P10, rx1147_fail
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx1147_pos = $P10."pos"()
  alt1154_end:
.annotate 'line', 77
  # rx pass
    rx1147_cur."!cursor_pass"(rx1147_pos, "quantifier:sym<**>")
    if_null rx1147_debug, debug_360
    rx1147_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx1147_pos)
  debug_360:
    .return (rx1147_cur)
  rx1147_restart:
.annotate 'line', 7
    if_null rx1147_debug, debug_361
    rx1147_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_361:
  rx1147_fail:
    (rx1147_rep, rx1147_pos, $I10, $P10) = rx1147_cur."!mark_fail"(0)
    lt rx1147_pos, -1, rx1147_done
    eq rx1147_pos, -1, rx1147_fail
    jump $I10
  rx1147_done:
    rx1147_cur."!cursor_fail"()
    if_null rx1147_debug, debug_362
    rx1147_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_362:
    .return (rx1147_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("56_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "**"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("57_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1166 = "58_1315150101.74" 
    capture_lex $P1166
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    .local pmc rx1161_debug
    (rx1161_cur, rx1161_pos, rx1161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    gt rx1161_pos, rx1161_eos, rx1161_done
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
    eq $I10, 1, rx1161_restart
    if_null rx1161_debug, debug_363
    rx1161_cur."!cursor_debug"("START", "backmod")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1162_done
    goto rxscan1162_scan
  rxscan1162_loop:
    (rx1161_pos) = rx1161_cur."from"()
    inc rx1161_pos
    rx1161_cur."!cursor_from"(rx1161_pos)
    ge rx1161_pos, rx1161_eos, rxscan1162_done
  rxscan1162_scan:
    set_addr $I10, rxscan1162_loop
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxscan1162_done:
.annotate 'line', 92
  # rx rxquantr1163 ** 0..1
    set_addr $I10, rxquantr1163_done
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxquantr1163_loop:
  # rx literal  ":"
    add $I11, rx1161_pos, 1
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    ord $I11, rx1161_tgt, $I11
    ne $I11, 58, rx1161_fail
    add rx1161_pos, 1
    set_addr $I10, rxquantr1163_done
    (rx1161_rep) = rx1161_cur."!mark_commit"($I10)
  rxquantr1163_done:
  alt1164_0:
    set_addr $I10, alt1164_1
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  # rx literal  "?"
    add $I11, rx1161_pos, 1
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    ord $I11, rx1161_tgt, $I11
    ne $I11, 63, rx1161_fail
    add rx1161_pos, 1
    goto alt1164_end
  alt1164_1:
    set_addr $I10, alt1164_2
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  # rx literal  "!"
    add $I11, rx1161_pos, 1
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    ord $I11, rx1161_tgt, $I11
    ne $I11, 33, rx1161_fail
    add rx1161_pos, 1
    goto alt1164_end
  alt1164_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx1161_cur."!cursor_pos"(rx1161_pos)
    .const 'Sub' $P1166 = "58_1315150101.74" 
    capture_lex $P1166
    $P10 = rx1161_cur."before"($P1166)
    if $P10, rx1161_fail
  alt1164_end:
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "backmod")
    if_null rx1161_debug, debug_368
    rx1161_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx1161_pos)
  debug_368:
    .return (rx1161_cur)
  rx1161_restart:
.annotate 'line', 7
    if_null rx1161_debug, debug_369
    rx1161_cur."!cursor_debug"("NEXT", "backmod")
  debug_369:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_370
    rx1161_cur."!cursor_debug"("FAIL", "backmod")
  debug_370:
    .return (rx1161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1165"  :anon :subid("58_1315150101.74") :method :outer("57_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 92
    .local string rx1167_tgt
    .local int rx1167_pos
    .local int rx1167_off
    .local int rx1167_eos
    .local int rx1167_rep
    .local pmc rx1167_cur
    .local pmc rx1167_debug
    (rx1167_cur, rx1167_pos, rx1167_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1167_cur
    .local pmc match
    .lex "$/", match
    length rx1167_eos, rx1167_tgt
    gt rx1167_pos, rx1167_eos, rx1167_done
    set rx1167_off, 0
    lt rx1167_pos, 2, rx1167_start
    sub rx1167_off, rx1167_pos, 1
    substr rx1167_tgt, rx1167_tgt, rx1167_off
  rx1167_start:
    eq $I10, 1, rx1167_restart
    if_null rx1167_debug, debug_364
    rx1167_cur."!cursor_debug"("START", "")
  debug_364:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1168_done
    goto rxscan1168_scan
  rxscan1168_loop:
    (rx1167_pos) = rx1167_cur."from"()
    inc rx1167_pos
    rx1167_cur."!cursor_from"(rx1167_pos)
    ge rx1167_pos, rx1167_eos, rxscan1168_done
  rxscan1168_scan:
    set_addr $I10, rxscan1168_loop
    rx1167_cur."!mark_push"(0, rx1167_pos, $I10)
  rxscan1168_done:
  # rx literal  ":"
    add $I11, rx1167_pos, 1
    gt $I11, rx1167_eos, rx1167_fail
    sub $I11, rx1167_pos, rx1167_off
    ord $I11, rx1167_tgt, $I11
    ne $I11, 58, rx1167_fail
    add rx1167_pos, 1
  # rx pass
    rx1167_cur."!cursor_pass"(rx1167_pos, "")
    if_null rx1167_debug, debug_365
    rx1167_cur."!cursor_debug"("PASS", "", " at pos=", rx1167_pos)
  debug_365:
    .return (rx1167_cur)
  rx1167_restart:
    if_null rx1167_debug, debug_366
    rx1167_cur."!cursor_debug"("NEXT", "")
  debug_366:
  rx1167_fail:
    (rx1167_rep, rx1167_pos, $I10, $P10) = rx1167_cur."!mark_fail"(0)
    lt rx1167_pos, -1, rx1167_done
    eq rx1167_pos, -1, rx1167_fail
    jump $I10
  rx1167_done:
    rx1167_cur."!cursor_fail"()
    if_null rx1167_debug, debug_367
    rx1167_cur."!cursor_debug"("FAIL", "")
  debug_367:
    .return (rx1167_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("59_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("60_1315150101.74")
    .param pmc param_1171
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 94
    .lex "self", param_1171
    $P101 = param_1171."!protoregex"("metachar")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("61_1315150101.74")
    .param pmc param_1173
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 94
    .lex "self", param_1173
    $P103 = param_1173."!PREFIX__!protoregex"("metachar")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("62_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1175_tgt
    .local int rx1175_pos
    .local int rx1175_off
    .local int rx1175_eos
    .local int rx1175_rep
    .local pmc rx1175_cur
    .local pmc rx1175_debug
    (rx1175_cur, rx1175_pos, rx1175_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1175_cur
    .local pmc match
    .lex "$/", match
    length rx1175_eos, rx1175_tgt
    gt rx1175_pos, rx1175_eos, rx1175_done
    set rx1175_off, 0
    lt rx1175_pos, 2, rx1175_start
    sub rx1175_off, rx1175_pos, 1
    substr rx1175_tgt, rx1175_tgt, rx1175_off
  rx1175_start:
    eq $I10, 1, rx1175_restart
    if_null rx1175_debug, debug_371
    rx1175_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1176_done
    goto rxscan1176_scan
  rxscan1176_loop:
    (rx1175_pos) = rx1175_cur."from"()
    inc rx1175_pos
    rx1175_cur."!cursor_from"(rx1175_pos)
    ge rx1175_pos, rx1175_eos, rxscan1176_done
  rxscan1176_scan:
    set_addr $I10, rxscan1176_loop
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  rxscan1176_done:
.annotate 'line', 95
  # rx subrule "normspace" subtype=method negate=
    rx1175_cur."!cursor_pos"(rx1175_pos)
    $P10 = rx1175_cur."normspace"()
    unless $P10, rx1175_fail
    rx1175_pos = $P10."pos"()
  # rx pass
    rx1175_cur."!cursor_pass"(rx1175_pos, "metachar:sym<ws>")
    if_null rx1175_debug, debug_372
    rx1175_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx1175_pos)
  debug_372:
    .return (rx1175_cur)
  rx1175_restart:
.annotate 'line', 7
    if_null rx1175_debug, debug_373
    rx1175_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_373:
  rx1175_fail:
    (rx1175_rep, rx1175_pos, $I10, $P10) = rx1175_cur."!mark_fail"(0)
    lt rx1175_pos, -1, rx1175_done
    eq rx1175_pos, -1, rx1175_fail
    jump $I10
  rx1175_done:
    rx1175_cur."!cursor_fail"()
    if_null rx1175_debug, debug_374
    rx1175_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_374:
    .return (rx1175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("63_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("normspace", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("64_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1179_tgt
    .local int rx1179_pos
    .local int rx1179_off
    .local int rx1179_eos
    .local int rx1179_rep
    .local pmc rx1179_cur
    .local pmc rx1179_debug
    (rx1179_cur, rx1179_pos, rx1179_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1179_cur
    .local pmc match
    .lex "$/", match
    length rx1179_eos, rx1179_tgt
    gt rx1179_pos, rx1179_eos, rx1179_done
    set rx1179_off, 0
    lt rx1179_pos, 2, rx1179_start
    sub rx1179_off, rx1179_pos, 1
    substr rx1179_tgt, rx1179_tgt, rx1179_off
  rx1179_start:
    eq $I10, 1, rx1179_restart
    if_null rx1179_debug, debug_375
    rx1179_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1180_done
    goto rxscan1180_scan
  rxscan1180_loop:
    (rx1179_pos) = rx1179_cur."from"()
    inc rx1179_pos
    rx1179_cur."!cursor_from"(rx1179_pos)
    ge rx1179_pos, rx1179_eos, rxscan1180_done
  rxscan1180_scan:
    set_addr $I10, rxscan1180_loop
    rx1179_cur."!mark_push"(0, rx1179_pos, $I10)
  rxscan1180_done:
.annotate 'line', 96
  # rx literal  "["
    add $I11, rx1179_pos, 1
    gt $I11, rx1179_eos, rx1179_fail
    sub $I11, rx1179_pos, rx1179_off
    ord $I11, rx1179_tgt, $I11
    ne $I11, 91, rx1179_fail
    add rx1179_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx1179_cur."!cursor_pos"(rx1179_pos)
    $P10 = rx1179_cur."nibbler"()
    unless $P10, rx1179_fail
    rx1179_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1179_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1179_pos, 1
    gt $I11, rx1179_eos, rx1179_fail
    sub $I11, rx1179_pos, rx1179_off
    ord $I11, rx1179_tgt, $I11
    ne $I11, 93, rx1179_fail
    add rx1179_pos, 1
  # rx pass
    rx1179_cur."!cursor_pass"(rx1179_pos, "metachar:sym<[ ]>")
    if_null rx1179_debug, debug_376
    rx1179_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx1179_pos)
  debug_376:
    .return (rx1179_cur)
  rx1179_restart:
.annotate 'line', 7
    if_null rx1179_debug, debug_377
    rx1179_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_377:
  rx1179_fail:
    (rx1179_rep, rx1179_pos, $I10, $P10) = rx1179_cur."!mark_fail"(0)
    lt rx1179_pos, -1, rx1179_done
    eq rx1179_pos, -1, rx1179_fail
    jump $I10
  rx1179_done:
    rx1179_cur."!cursor_fail"()
    if_null rx1179_debug, debug_378
    rx1179_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_378:
    .return (rx1179_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("65_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("66_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1183_tgt
    .local int rx1183_pos
    .local int rx1183_off
    .local int rx1183_eos
    .local int rx1183_rep
    .local pmc rx1183_cur
    .local pmc rx1183_debug
    (rx1183_cur, rx1183_pos, rx1183_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1183_cur
    .local pmc match
    .lex "$/", match
    length rx1183_eos, rx1183_tgt
    gt rx1183_pos, rx1183_eos, rx1183_done
    set rx1183_off, 0
    lt rx1183_pos, 2, rx1183_start
    sub rx1183_off, rx1183_pos, 1
    substr rx1183_tgt, rx1183_tgt, rx1183_off
  rx1183_start:
    eq $I10, 1, rx1183_restart
    if_null rx1183_debug, debug_379
    rx1183_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1184_done
    goto rxscan1184_scan
  rxscan1184_loop:
    (rx1183_pos) = rx1183_cur."from"()
    inc rx1183_pos
    rx1183_cur."!cursor_from"(rx1183_pos)
    ge rx1183_pos, rx1183_eos, rxscan1184_done
  rxscan1184_scan:
    set_addr $I10, rxscan1184_loop
    rx1183_cur."!mark_push"(0, rx1183_pos, $I10)
  rxscan1184_done:
.annotate 'line', 97
  # rx literal  "("
    add $I11, rx1183_pos, 1
    gt $I11, rx1183_eos, rx1183_fail
    sub $I11, rx1183_pos, rx1183_off
    ord $I11, rx1183_tgt, $I11
    ne $I11, 40, rx1183_fail
    add rx1183_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx1183_cur."!cursor_pos"(rx1183_pos)
    $P10 = rx1183_cur."nibbler"()
    unless $P10, rx1183_fail
    rx1183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1183_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1183_pos, 1
    gt $I11, rx1183_eos, rx1183_fail
    sub $I11, rx1183_pos, rx1183_off
    ord $I11, rx1183_tgt, $I11
    ne $I11, 41, rx1183_fail
    add rx1183_pos, 1
  # rx pass
    rx1183_cur."!cursor_pass"(rx1183_pos, "metachar:sym<( )>")
    if_null rx1183_debug, debug_380
    rx1183_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx1183_pos)
  debug_380:
    .return (rx1183_cur)
  rx1183_restart:
.annotate 'line', 7
    if_null rx1183_debug, debug_381
    rx1183_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_381:
  rx1183_fail:
    (rx1183_rep, rx1183_pos, $I10, $P10) = rx1183_cur."!mark_fail"(0)
    lt rx1183_pos, -1, rx1183_done
    eq rx1183_pos, -1, rx1183_fail
    jump $I10
  rx1183_done:
    rx1183_cur."!cursor_fail"()
    if_null rx1183_debug, debug_382
    rx1183_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_382:
    .return (rx1183_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("67_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("68_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1187_tgt
    .local int rx1187_pos
    .local int rx1187_off
    .local int rx1187_eos
    .local int rx1187_rep
    .local pmc rx1187_cur
    .local pmc rx1187_debug
    (rx1187_cur, rx1187_pos, rx1187_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1187_cur
    .local pmc match
    .lex "$/", match
    length rx1187_eos, rx1187_tgt
    gt rx1187_pos, rx1187_eos, rx1187_done
    set rx1187_off, 0
    lt rx1187_pos, 2, rx1187_start
    sub rx1187_off, rx1187_pos, 1
    substr rx1187_tgt, rx1187_tgt, rx1187_off
  rx1187_start:
    eq $I10, 1, rx1187_restart
    if_null rx1187_debug, debug_383
    rx1187_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1188_done
    goto rxscan1188_scan
  rxscan1188_loop:
    (rx1187_pos) = rx1187_cur."from"()
    inc rx1187_pos
    rx1187_cur."!cursor_from"(rx1187_pos)
    ge rx1187_pos, rx1187_eos, rxscan1188_done
  rxscan1188_scan:
    set_addr $I10, rxscan1188_loop
    rx1187_cur."!mark_push"(0, rx1187_pos, $I10)
  rxscan1188_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1187_pos, rx1187_off
    substr $S10, rx1187_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx1187_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1187_cur."!cursor_pos"(rx1187_pos)
    $P10 = rx1187_cur."quote_EXPR"(":q")
    unless $P10, rx1187_fail
    rx1187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1187_pos = $P10."pos"()
  # rx pass
    rx1187_cur."!cursor_pass"(rx1187_pos, "metachar:sym<'>")
    if_null rx1187_debug, debug_384
    rx1187_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx1187_pos)
  debug_384:
    .return (rx1187_cur)
  rx1187_restart:
.annotate 'line', 7
    if_null rx1187_debug, debug_385
    rx1187_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_385:
  rx1187_fail:
    (rx1187_rep, rx1187_pos, $I10, $P10) = rx1187_cur."!mark_fail"(0)
    lt rx1187_pos, -1, rx1187_done
    eq rx1187_pos, -1, rx1187_fail
    jump $I10
  rx1187_done:
    rx1187_cur."!cursor_fail"()
    if_null rx1187_debug, debug_386
    rx1187_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_386:
    .return (rx1187_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("69_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "'"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("70_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1191_tgt
    .local int rx1191_pos
    .local int rx1191_off
    .local int rx1191_eos
    .local int rx1191_rep
    .local pmc rx1191_cur
    .local pmc rx1191_debug
    (rx1191_cur, rx1191_pos, rx1191_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1191_cur
    .local pmc match
    .lex "$/", match
    length rx1191_eos, rx1191_tgt
    gt rx1191_pos, rx1191_eos, rx1191_done
    set rx1191_off, 0
    lt rx1191_pos, 2, rx1191_start
    sub rx1191_off, rx1191_pos, 1
    substr rx1191_tgt, rx1191_tgt, rx1191_off
  rx1191_start:
    eq $I10, 1, rx1191_restart
    if_null rx1191_debug, debug_387
    rx1191_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1192_done
    goto rxscan1192_scan
  rxscan1192_loop:
    (rx1191_pos) = rx1191_cur."from"()
    inc rx1191_pos
    rx1191_cur."!cursor_from"(rx1191_pos)
    ge rx1191_pos, rx1191_eos, rxscan1192_done
  rxscan1192_scan:
    set_addr $I10, rxscan1192_loop
    rx1191_cur."!mark_push"(0, rx1191_pos, $I10)
  rxscan1192_done:
.annotate 'line', 99
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx1191_pos, rx1191_off
    substr $S10, rx1191_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx1191_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1191_cur."!cursor_pos"(rx1191_pos)
    $P10 = rx1191_cur."quote_EXPR"(":qq")
    unless $P10, rx1191_fail
    rx1191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1191_pos = $P10."pos"()
  # rx pass
    rx1191_cur."!cursor_pass"(rx1191_pos, "metachar:sym<\">")
    if_null rx1191_debug, debug_388
    rx1191_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx1191_pos)
  debug_388:
    .return (rx1191_cur)
  rx1191_restart:
.annotate 'line', 7
    if_null rx1191_debug, debug_389
    rx1191_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_389:
  rx1191_fail:
    (rx1191_rep, rx1191_pos, $I10, $P10) = rx1191_cur."!mark_fail"(0)
    lt rx1191_pos, -1, rx1191_done
    eq rx1191_pos, -1, rx1191_fail
    jump $I10
  rx1191_done:
    rx1191_cur."!cursor_fail"()
    if_null rx1191_debug, debug_390
    rx1191_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_390:
    .return (rx1191_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :subid("71_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "\""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("72_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1195_tgt
    .local int rx1195_pos
    .local int rx1195_off
    .local int rx1195_eos
    .local int rx1195_rep
    .local pmc rx1195_cur
    .local pmc rx1195_debug
    (rx1195_cur, rx1195_pos, rx1195_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1195_cur
    .local pmc match
    .lex "$/", match
    length rx1195_eos, rx1195_tgt
    gt rx1195_pos, rx1195_eos, rx1195_done
    set rx1195_off, 0
    lt rx1195_pos, 2, rx1195_start
    sub rx1195_off, rx1195_pos, 1
    substr rx1195_tgt, rx1195_tgt, rx1195_off
  rx1195_start:
    eq $I10, 1, rx1195_restart
    if_null rx1195_debug, debug_391
    rx1195_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1196_done
    goto rxscan1196_scan
  rxscan1196_loop:
    (rx1195_pos) = rx1195_cur."from"()
    inc rx1195_pos
    rx1195_cur."!cursor_from"(rx1195_pos)
    ge rx1195_pos, rx1195_eos, rxscan1196_done
  rxscan1196_scan:
    set_addr $I10, rxscan1196_loop
    rx1195_cur."!mark_push"(0, rx1195_pos, $I10)
  rxscan1196_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_1197_fail
    rx1195_cur."!mark_push"(0, rx1195_pos, $I10)
  # rx literal  "."
    add $I11, rx1195_pos, 1
    gt $I11, rx1195_eos, rx1195_fail
    sub $I11, rx1195_pos, rx1195_off
    ord $I11, rx1195_tgt, $I11
    ne $I11, 46, rx1195_fail
    add rx1195_pos, 1
    set_addr $I10, rxcap_1197_fail
    ($I12, $I11) = rx1195_cur."!mark_peek"($I10)
    rx1195_cur."!cursor_pos"($I11)
    ($P10) = rx1195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1195_pos, "")
    rx1195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1197_done
  rxcap_1197_fail:
    goto rx1195_fail
  rxcap_1197_done:
  # rx pass
    rx1195_cur."!cursor_pass"(rx1195_pos, "metachar:sym<.>")
    if_null rx1195_debug, debug_392
    rx1195_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx1195_pos)
  debug_392:
    .return (rx1195_cur)
  rx1195_restart:
.annotate 'line', 7
    if_null rx1195_debug, debug_393
    rx1195_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_393:
  rx1195_fail:
    (rx1195_rep, rx1195_pos, $I10, $P10) = rx1195_cur."!mark_fail"(0)
    lt rx1195_pos, -1, rx1195_done
    eq rx1195_pos, -1, rx1195_fail
    jump $I10
  rx1195_done:
    rx1195_cur."!cursor_fail"()
    if_null rx1195_debug, debug_394
    rx1195_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_394:
    .return (rx1195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("73_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "."
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("74_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1200_tgt
    .local int rx1200_pos
    .local int rx1200_off
    .local int rx1200_eos
    .local int rx1200_rep
    .local pmc rx1200_cur
    .local pmc rx1200_debug
    (rx1200_cur, rx1200_pos, rx1200_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1200_cur
    .local pmc match
    .lex "$/", match
    length rx1200_eos, rx1200_tgt
    gt rx1200_pos, rx1200_eos, rx1200_done
    set rx1200_off, 0
    lt rx1200_pos, 2, rx1200_start
    sub rx1200_off, rx1200_pos, 1
    substr rx1200_tgt, rx1200_tgt, rx1200_off
  rx1200_start:
    eq $I10, 1, rx1200_restart
    if_null rx1200_debug, debug_395
    rx1200_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1201_done
    goto rxscan1201_scan
  rxscan1201_loop:
    (rx1200_pos) = rx1200_cur."from"()
    inc rx1200_pos
    rx1200_cur."!cursor_from"(rx1200_pos)
    ge rx1200_pos, rx1200_eos, rxscan1201_done
  rxscan1201_scan:
    set_addr $I10, rxscan1201_loop
    rx1200_cur."!mark_push"(0, rx1200_pos, $I10)
  rxscan1201_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_1202_fail
    rx1200_cur."!mark_push"(0, rx1200_pos, $I10)
  # rx literal  "^"
    add $I11, rx1200_pos, 1
    gt $I11, rx1200_eos, rx1200_fail
    sub $I11, rx1200_pos, rx1200_off
    ord $I11, rx1200_tgt, $I11
    ne $I11, 94, rx1200_fail
    add rx1200_pos, 1
    set_addr $I10, rxcap_1202_fail
    ($I12, $I11) = rx1200_cur."!mark_peek"($I10)
    rx1200_cur."!cursor_pos"($I11)
    ($P10) = rx1200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1200_pos, "")
    rx1200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1202_done
  rxcap_1202_fail:
    goto rx1200_fail
  rxcap_1202_done:
  # rx pass
    rx1200_cur."!cursor_pass"(rx1200_pos, "metachar:sym<^>")
    if_null rx1200_debug, debug_396
    rx1200_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx1200_pos)
  debug_396:
    .return (rx1200_cur)
  rx1200_restart:
.annotate 'line', 7
    if_null rx1200_debug, debug_397
    rx1200_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_397:
  rx1200_fail:
    (rx1200_rep, rx1200_pos, $I10, $P10) = rx1200_cur."!mark_fail"(0)
    lt rx1200_pos, -1, rx1200_done
    eq rx1200_pos, -1, rx1200_fail
    jump $I10
  rx1200_done:
    rx1200_cur."!cursor_fail"()
    if_null rx1200_debug, debug_398
    rx1200_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_398:
    .return (rx1200_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("75_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "^"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("76_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1205_tgt
    .local int rx1205_pos
    .local int rx1205_off
    .local int rx1205_eos
    .local int rx1205_rep
    .local pmc rx1205_cur
    .local pmc rx1205_debug
    (rx1205_cur, rx1205_pos, rx1205_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1205_cur
    .local pmc match
    .lex "$/", match
    length rx1205_eos, rx1205_tgt
    gt rx1205_pos, rx1205_eos, rx1205_done
    set rx1205_off, 0
    lt rx1205_pos, 2, rx1205_start
    sub rx1205_off, rx1205_pos, 1
    substr rx1205_tgt, rx1205_tgt, rx1205_off
  rx1205_start:
    eq $I10, 1, rx1205_restart
    if_null rx1205_debug, debug_399
    rx1205_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1206_done
    goto rxscan1206_scan
  rxscan1206_loop:
    (rx1205_pos) = rx1205_cur."from"()
    inc rx1205_pos
    rx1205_cur."!cursor_from"(rx1205_pos)
    ge rx1205_pos, rx1205_eos, rxscan1206_done
  rxscan1206_scan:
    set_addr $I10, rxscan1206_loop
    rx1205_cur."!mark_push"(0, rx1205_pos, $I10)
  rxscan1206_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_1207_fail
    rx1205_cur."!mark_push"(0, rx1205_pos, $I10)
  # rx literal  "^^"
    add $I11, rx1205_pos, 2
    gt $I11, rx1205_eos, rx1205_fail
    sub $I11, rx1205_pos, rx1205_off
    substr $S10, rx1205_tgt, $I11, 2
    ne $S10, "^^", rx1205_fail
    add rx1205_pos, 2
    set_addr $I10, rxcap_1207_fail
    ($I12, $I11) = rx1205_cur."!mark_peek"($I10)
    rx1205_cur."!cursor_pos"($I11)
    ($P10) = rx1205_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1205_pos, "")
    rx1205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1207_done
  rxcap_1207_fail:
    goto rx1205_fail
  rxcap_1207_done:
  # rx pass
    rx1205_cur."!cursor_pass"(rx1205_pos, "metachar:sym<^^>")
    if_null rx1205_debug, debug_400
    rx1205_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx1205_pos)
  debug_400:
    .return (rx1205_cur)
  rx1205_restart:
.annotate 'line', 7
    if_null rx1205_debug, debug_401
    rx1205_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_401:
  rx1205_fail:
    (rx1205_rep, rx1205_pos, $I10, $P10) = rx1205_cur."!mark_fail"(0)
    lt rx1205_pos, -1, rx1205_done
    eq rx1205_pos, -1, rx1205_fail
    jump $I10
  rx1205_done:
    rx1205_cur."!cursor_fail"()
    if_null rx1205_debug, debug_402
    rx1205_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_402:
    .return (rx1205_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("77_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "^^"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("78_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1210_tgt
    .local int rx1210_pos
    .local int rx1210_off
    .local int rx1210_eos
    .local int rx1210_rep
    .local pmc rx1210_cur
    .local pmc rx1210_debug
    (rx1210_cur, rx1210_pos, rx1210_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1210_cur
    .local pmc match
    .lex "$/", match
    length rx1210_eos, rx1210_tgt
    gt rx1210_pos, rx1210_eos, rx1210_done
    set rx1210_off, 0
    lt rx1210_pos, 2, rx1210_start
    sub rx1210_off, rx1210_pos, 1
    substr rx1210_tgt, rx1210_tgt, rx1210_off
  rx1210_start:
    eq $I10, 1, rx1210_restart
    if_null rx1210_debug, debug_403
    rx1210_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1211_done
    goto rxscan1211_scan
  rxscan1211_loop:
    (rx1210_pos) = rx1210_cur."from"()
    inc rx1210_pos
    rx1210_cur."!cursor_from"(rx1210_pos)
    ge rx1210_pos, rx1210_eos, rxscan1211_done
  rxscan1211_scan:
    set_addr $I10, rxscan1211_loop
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  rxscan1211_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_1212_fail
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  # rx literal  "$"
    add $I11, rx1210_pos, 1
    gt $I11, rx1210_eos, rx1210_fail
    sub $I11, rx1210_pos, rx1210_off
    ord $I11, rx1210_tgt, $I11
    ne $I11, 36, rx1210_fail
    add rx1210_pos, 1
    set_addr $I10, rxcap_1212_fail
    ($I12, $I11) = rx1210_cur."!mark_peek"($I10)
    rx1210_cur."!cursor_pos"($I11)
    ($P10) = rx1210_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1210_pos, "")
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1212_done
  rxcap_1212_fail:
    goto rx1210_fail
  rxcap_1212_done:
  # rx pass
    rx1210_cur."!cursor_pass"(rx1210_pos, "metachar:sym<$>")
    if_null rx1210_debug, debug_404
    rx1210_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx1210_pos)
  debug_404:
    .return (rx1210_cur)
  rx1210_restart:
.annotate 'line', 7
    if_null rx1210_debug, debug_405
    rx1210_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_405:
  rx1210_fail:
    (rx1210_rep, rx1210_pos, $I10, $P10) = rx1210_cur."!mark_fail"(0)
    lt rx1210_pos, -1, rx1210_done
    eq rx1210_pos, -1, rx1210_fail
    jump $I10
  rx1210_done:
    rx1210_cur."!cursor_fail"()
    if_null rx1210_debug, debug_406
    rx1210_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_406:
    .return (rx1210_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("79_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "$"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("80_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1215_tgt
    .local int rx1215_pos
    .local int rx1215_off
    .local int rx1215_eos
    .local int rx1215_rep
    .local pmc rx1215_cur
    .local pmc rx1215_debug
    (rx1215_cur, rx1215_pos, rx1215_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1215_cur
    .local pmc match
    .lex "$/", match
    length rx1215_eos, rx1215_tgt
    gt rx1215_pos, rx1215_eos, rx1215_done
    set rx1215_off, 0
    lt rx1215_pos, 2, rx1215_start
    sub rx1215_off, rx1215_pos, 1
    substr rx1215_tgt, rx1215_tgt, rx1215_off
  rx1215_start:
    eq $I10, 1, rx1215_restart
    if_null rx1215_debug, debug_407
    rx1215_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1216_done
    goto rxscan1216_scan
  rxscan1216_loop:
    (rx1215_pos) = rx1215_cur."from"()
    inc rx1215_pos
    rx1215_cur."!cursor_from"(rx1215_pos)
    ge rx1215_pos, rx1215_eos, rxscan1216_done
  rxscan1216_scan:
    set_addr $I10, rxscan1216_loop
    rx1215_cur."!mark_push"(0, rx1215_pos, $I10)
  rxscan1216_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_1217_fail
    rx1215_cur."!mark_push"(0, rx1215_pos, $I10)
  # rx literal  "$$"
    add $I11, rx1215_pos, 2
    gt $I11, rx1215_eos, rx1215_fail
    sub $I11, rx1215_pos, rx1215_off
    substr $S10, rx1215_tgt, $I11, 2
    ne $S10, "$$", rx1215_fail
    add rx1215_pos, 2
    set_addr $I10, rxcap_1217_fail
    ($I12, $I11) = rx1215_cur."!mark_peek"($I10)
    rx1215_cur."!cursor_pos"($I11)
    ($P10) = rx1215_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1215_pos, "")
    rx1215_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1217_done
  rxcap_1217_fail:
    goto rx1215_fail
  rxcap_1217_done:
  # rx pass
    rx1215_cur."!cursor_pass"(rx1215_pos, "metachar:sym<$$>")
    if_null rx1215_debug, debug_408
    rx1215_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx1215_pos)
  debug_408:
    .return (rx1215_cur)
  rx1215_restart:
.annotate 'line', 7
    if_null rx1215_debug, debug_409
    rx1215_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_409:
  rx1215_fail:
    (rx1215_rep, rx1215_pos, $I10, $P10) = rx1215_cur."!mark_fail"(0)
    lt rx1215_pos, -1, rx1215_done
    eq rx1215_pos, -1, rx1215_fail
    jump $I10
  rx1215_done:
    rx1215_cur."!cursor_fail"()
    if_null rx1215_debug, debug_410
    rx1215_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_410:
    .return (rx1215_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("81_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "$$"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("82_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1220_tgt
    .local int rx1220_pos
    .local int rx1220_off
    .local int rx1220_eos
    .local int rx1220_rep
    .local pmc rx1220_cur
    .local pmc rx1220_debug
    (rx1220_cur, rx1220_pos, rx1220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1220_cur
    .local pmc match
    .lex "$/", match
    length rx1220_eos, rx1220_tgt
    gt rx1220_pos, rx1220_eos, rx1220_done
    set rx1220_off, 0
    lt rx1220_pos, 2, rx1220_start
    sub rx1220_off, rx1220_pos, 1
    substr rx1220_tgt, rx1220_tgt, rx1220_off
  rx1220_start:
    eq $I10, 1, rx1220_restart
    if_null rx1220_debug, debug_411
    rx1220_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1221_done
    goto rxscan1221_scan
  rxscan1221_loop:
    (rx1220_pos) = rx1220_cur."from"()
    inc rx1220_pos
    rx1220_cur."!cursor_from"(rx1220_pos)
    ge rx1220_pos, rx1220_eos, rxscan1221_done
  rxscan1221_scan:
    set_addr $I10, rxscan1221_loop
    rx1220_cur."!mark_push"(0, rx1220_pos, $I10)
  rxscan1221_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_1222_fail
    rx1220_cur."!mark_push"(0, rx1220_pos, $I10)
  # rx literal  ":::"
    add $I11, rx1220_pos, 3
    gt $I11, rx1220_eos, rx1220_fail
    sub $I11, rx1220_pos, rx1220_off
    substr $S10, rx1220_tgt, $I11, 3
    ne $S10, ":::", rx1220_fail
    add rx1220_pos, 3
    set_addr $I10, rxcap_1222_fail
    ($I12, $I11) = rx1220_cur."!mark_peek"($I10)
    rx1220_cur."!cursor_pos"($I11)
    ($P10) = rx1220_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1220_pos, "")
    rx1220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1222_done
  rxcap_1222_fail:
    goto rx1220_fail
  rxcap_1222_done:
  # rx subrule "panic" subtype=method negate=
    rx1220_cur."!cursor_pos"(rx1220_pos)
    $P10 = rx1220_cur."panic"("::: not yet implemented")
    unless $P10, rx1220_fail
    rx1220_pos = $P10."pos"()
  # rx pass
    rx1220_cur."!cursor_pass"(rx1220_pos, "metachar:sym<:::>")
    if_null rx1220_debug, debug_412
    rx1220_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx1220_pos)
  debug_412:
    .return (rx1220_cur)
  rx1220_restart:
.annotate 'line', 7
    if_null rx1220_debug, debug_413
    rx1220_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_413:
  rx1220_fail:
    (rx1220_rep, rx1220_pos, $I10, $P10) = rx1220_cur."!mark_fail"(0)
    lt rx1220_pos, -1, rx1220_done
    eq rx1220_pos, -1, rx1220_fail
    jump $I10
  rx1220_done:
    rx1220_cur."!cursor_fail"()
    if_null rx1220_debug, debug_414
    rx1220_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_414:
    .return (rx1220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("83_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("panic", ":::")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("84_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1225_tgt
    .local int rx1225_pos
    .local int rx1225_off
    .local int rx1225_eos
    .local int rx1225_rep
    .local pmc rx1225_cur
    .local pmc rx1225_debug
    (rx1225_cur, rx1225_pos, rx1225_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1225_cur
    .local pmc match
    .lex "$/", match
    length rx1225_eos, rx1225_tgt
    gt rx1225_pos, rx1225_eos, rx1225_done
    set rx1225_off, 0
    lt rx1225_pos, 2, rx1225_start
    sub rx1225_off, rx1225_pos, 1
    substr rx1225_tgt, rx1225_tgt, rx1225_off
  rx1225_start:
    eq $I10, 1, rx1225_restart
    if_null rx1225_debug, debug_415
    rx1225_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1226_done
    goto rxscan1226_scan
  rxscan1226_loop:
    (rx1225_pos) = rx1225_cur."from"()
    inc rx1225_pos
    rx1225_cur."!cursor_from"(rx1225_pos)
    ge rx1225_pos, rx1225_eos, rxscan1226_done
  rxscan1226_scan:
    set_addr $I10, rxscan1226_loop
    rx1225_cur."!mark_push"(0, rx1225_pos, $I10)
  rxscan1226_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_1227_fail
    rx1225_cur."!mark_push"(0, rx1225_pos, $I10)
  # rx literal  "::"
    add $I11, rx1225_pos, 2
    gt $I11, rx1225_eos, rx1225_fail
    sub $I11, rx1225_pos, rx1225_off
    substr $S10, rx1225_tgt, $I11, 2
    ne $S10, "::", rx1225_fail
    add rx1225_pos, 2
    set_addr $I10, rxcap_1227_fail
    ($I12, $I11) = rx1225_cur."!mark_peek"($I10)
    rx1225_cur."!cursor_pos"($I11)
    ($P10) = rx1225_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1225_pos, "")
    rx1225_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1227_done
  rxcap_1227_fail:
    goto rx1225_fail
  rxcap_1227_done:
  # rx subrule "panic" subtype=method negate=
    rx1225_cur."!cursor_pos"(rx1225_pos)
    $P10 = rx1225_cur."panic"(":: not yet implemented")
    unless $P10, rx1225_fail
    rx1225_pos = $P10."pos"()
  # rx pass
    rx1225_cur."!cursor_pass"(rx1225_pos, "metachar:sym<::>")
    if_null rx1225_debug, debug_416
    rx1225_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx1225_pos)
  debug_416:
    .return (rx1225_cur)
  rx1225_restart:
.annotate 'line', 7
    if_null rx1225_debug, debug_417
    rx1225_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_417:
  rx1225_fail:
    (rx1225_rep, rx1225_pos, $I10, $P10) = rx1225_cur."!mark_fail"(0)
    lt rx1225_pos, -1, rx1225_done
    eq rx1225_pos, -1, rx1225_fail
    jump $I10
  rx1225_done:
    rx1225_cur."!cursor_fail"()
    if_null rx1225_debug, debug_418
    rx1225_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_418:
    .return (rx1225_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("85_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("panic", "::")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("86_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1230_tgt
    .local int rx1230_pos
    .local int rx1230_off
    .local int rx1230_eos
    .local int rx1230_rep
    .local pmc rx1230_cur
    .local pmc rx1230_debug
    (rx1230_cur, rx1230_pos, rx1230_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1230_cur
    .local pmc match
    .lex "$/", match
    length rx1230_eos, rx1230_tgt
    gt rx1230_pos, rx1230_eos, rx1230_done
    set rx1230_off, 0
    lt rx1230_pos, 2, rx1230_start
    sub rx1230_off, rx1230_pos, 1
    substr rx1230_tgt, rx1230_tgt, rx1230_off
  rx1230_start:
    eq $I10, 1, rx1230_restart
    if_null rx1230_debug, debug_419
    rx1230_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1231_done
    goto rxscan1231_scan
  rxscan1231_loop:
    (rx1230_pos) = rx1230_cur."from"()
    inc rx1230_pos
    rx1230_cur."!cursor_from"(rx1230_pos)
    ge rx1230_pos, rx1230_eos, rxscan1231_done
  rxscan1231_scan:
    set_addr $I10, rxscan1231_loop
    rx1230_cur."!mark_push"(0, rx1230_pos, $I10)
  rxscan1231_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_1233_fail
    rx1230_cur."!mark_push"(0, rx1230_pos, $I10)
  alt1232_0:
    set_addr $I10, alt1232_1
    rx1230_cur."!mark_push"(0, rx1230_pos, $I10)
  # rx literal  "<<"
    add $I11, rx1230_pos, 2
    gt $I11, rx1230_eos, rx1230_fail
    sub $I11, rx1230_pos, rx1230_off
    substr $S10, rx1230_tgt, $I11, 2
    ne $S10, "<<", rx1230_fail
    add rx1230_pos, 2
    goto alt1232_end
  alt1232_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx1230_pos, 1
    gt $I11, rx1230_eos, rx1230_fail
    sub $I11, rx1230_pos, rx1230_off
    ord $I11, rx1230_tgt, $I11
    ne $I11, 171, rx1230_fail
    add rx1230_pos, 1
  alt1232_end:
    set_addr $I10, rxcap_1233_fail
    ($I12, $I11) = rx1230_cur."!mark_peek"($I10)
    rx1230_cur."!cursor_pos"($I11)
    ($P10) = rx1230_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1230_pos, "")
    rx1230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1233_done
  rxcap_1233_fail:
    goto rx1230_fail
  rxcap_1233_done:
  # rx pass
    rx1230_cur."!cursor_pass"(rx1230_pos, "metachar:sym<lwb>")
    if_null rx1230_debug, debug_420
    rx1230_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx1230_pos)
  debug_420:
    .return (rx1230_cur)
  rx1230_restart:
.annotate 'line', 7
    if_null rx1230_debug, debug_421
    rx1230_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_421:
  rx1230_fail:
    (rx1230_rep, rx1230_pos, $I10, $P10) = rx1230_cur."!mark_fail"(0)
    lt rx1230_pos, -1, rx1230_done
    eq rx1230_pos, -1, rx1230_fail
    jump $I10
  rx1230_done:
    rx1230_cur."!cursor_fail"()
    if_null rx1230_debug, debug_422
    rx1230_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_422:
    .return (rx1230_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("87_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, unicode:"\x{ab}"
    push $P101, "<<"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("88_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1236_tgt
    .local int rx1236_pos
    .local int rx1236_off
    .local int rx1236_eos
    .local int rx1236_rep
    .local pmc rx1236_cur
    .local pmc rx1236_debug
    (rx1236_cur, rx1236_pos, rx1236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1236_cur
    .local pmc match
    .lex "$/", match
    length rx1236_eos, rx1236_tgt
    gt rx1236_pos, rx1236_eos, rx1236_done
    set rx1236_off, 0
    lt rx1236_pos, 2, rx1236_start
    sub rx1236_off, rx1236_pos, 1
    substr rx1236_tgt, rx1236_tgt, rx1236_off
  rx1236_start:
    eq $I10, 1, rx1236_restart
    if_null rx1236_debug, debug_423
    rx1236_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1237_done
    goto rxscan1237_scan
  rxscan1237_loop:
    (rx1236_pos) = rx1236_cur."from"()
    inc rx1236_pos
    rx1236_cur."!cursor_from"(rx1236_pos)
    ge rx1236_pos, rx1236_eos, rxscan1237_done
  rxscan1237_scan:
    set_addr $I10, rxscan1237_loop
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
  rxscan1237_done:
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_1239_fail
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
  alt1238_0:
    set_addr $I10, alt1238_1
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
  # rx literal  ">>"
    add $I11, rx1236_pos, 2
    gt $I11, rx1236_eos, rx1236_fail
    sub $I11, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I11, 2
    ne $S10, ">>", rx1236_fail
    add rx1236_pos, 2
    goto alt1238_end
  alt1238_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx1236_pos, 1
    gt $I11, rx1236_eos, rx1236_fail
    sub $I11, rx1236_pos, rx1236_off
    ord $I11, rx1236_tgt, $I11
    ne $I11, 187, rx1236_fail
    add rx1236_pos, 1
  alt1238_end:
    set_addr $I10, rxcap_1239_fail
    ($I12, $I11) = rx1236_cur."!mark_peek"($I10)
    rx1236_cur."!cursor_pos"($I11)
    ($P10) = rx1236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1236_pos, "")
    rx1236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1239_done
  rxcap_1239_fail:
    goto rx1236_fail
  rxcap_1239_done:
  # rx pass
    rx1236_cur."!cursor_pass"(rx1236_pos, "metachar:sym<rwb>")
    if_null rx1236_debug, debug_424
    rx1236_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx1236_pos)
  debug_424:
    .return (rx1236_cur)
  rx1236_restart:
.annotate 'line', 7
    if_null rx1236_debug, debug_425
    rx1236_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_425:
  rx1236_fail:
    (rx1236_rep, rx1236_pos, $I10, $P10) = rx1236_cur."!mark_fail"(0)
    lt rx1236_pos, -1, rx1236_done
    eq rx1236_pos, -1, rx1236_fail
    jump $I10
  rx1236_done:
    rx1236_cur."!cursor_fail"()
    if_null rx1236_debug, debug_426
    rx1236_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_426:
    .return (rx1236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("89_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, unicode:"\x{bb}"
    push $P101, ">>"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("90_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1242_tgt
    .local int rx1242_pos
    .local int rx1242_off
    .local int rx1242_eos
    .local int rx1242_rep
    .local pmc rx1242_cur
    .local pmc rx1242_debug
    (rx1242_cur, rx1242_pos, rx1242_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1242_cur
    .local pmc match
    .lex "$/", match
    length rx1242_eos, rx1242_tgt
    gt rx1242_pos, rx1242_eos, rx1242_done
    set rx1242_off, 0
    lt rx1242_pos, 2, rx1242_start
    sub rx1242_off, rx1242_pos, 1
    substr rx1242_tgt, rx1242_tgt, rx1242_off
  rx1242_start:
    eq $I10, 1, rx1242_restart
    if_null rx1242_debug, debug_427
    rx1242_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1243_done
    goto rxscan1243_scan
  rxscan1243_loop:
    (rx1242_pos) = rx1242_cur."from"()
    inc rx1242_pos
    rx1242_cur."!cursor_from"(rx1242_pos)
    ge rx1242_pos, rx1242_eos, rxscan1243_done
  rxscan1243_scan:
    set_addr $I10, rxscan1243_loop
    rx1242_cur."!mark_push"(0, rx1242_pos, $I10)
  rxscan1243_done:
.annotate 'line', 109
  # rx literal  "\\"
    add $I11, rx1242_pos, 1
    gt $I11, rx1242_eos, rx1242_fail
    sub $I11, rx1242_pos, rx1242_off
    ord $I11, rx1242_tgt, $I11
    ne $I11, 92, rx1242_fail
    add rx1242_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx1242_cur."!cursor_pos"(rx1242_pos)
    $P10 = rx1242_cur."backslash"()
    unless $P10, rx1242_fail
    rx1242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx1242_pos = $P10."pos"()
  # rx pass
    rx1242_cur."!cursor_pass"(rx1242_pos, "metachar:sym<bs>")
    if_null rx1242_debug, debug_428
    rx1242_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx1242_pos)
  debug_428:
    .return (rx1242_cur)
  rx1242_restart:
.annotate 'line', 7
    if_null rx1242_debug, debug_429
    rx1242_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_429:
  rx1242_fail:
    (rx1242_rep, rx1242_pos, $I10, $P10) = rx1242_cur."!mark_fail"(0)
    lt rx1242_pos, -1, rx1242_done
    eq rx1242_pos, -1, rx1242_fail
    jump $I10
  rx1242_done:
    rx1242_cur."!cursor_fail"()
    if_null rx1242_debug, debug_430
    rx1242_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_430:
    .return (rx1242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("91_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("92_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1246_tgt
    .local int rx1246_pos
    .local int rx1246_off
    .local int rx1246_eos
    .local int rx1246_rep
    .local pmc rx1246_cur
    .local pmc rx1246_debug
    (rx1246_cur, rx1246_pos, rx1246_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1246_cur
    .local pmc match
    .lex "$/", match
    length rx1246_eos, rx1246_tgt
    gt rx1246_pos, rx1246_eos, rx1246_done
    set rx1246_off, 0
    lt rx1246_pos, 2, rx1246_start
    sub rx1246_off, rx1246_pos, 1
    substr rx1246_tgt, rx1246_tgt, rx1246_off
  rx1246_start:
    eq $I10, 1, rx1246_restart
    if_null rx1246_debug, debug_431
    rx1246_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1247_done
    goto rxscan1247_scan
  rxscan1247_loop:
    (rx1246_pos) = rx1246_cur."from"()
    inc rx1246_pos
    rx1246_cur."!cursor_from"(rx1246_pos)
    ge rx1246_pos, rx1246_eos, rxscan1247_done
  rxscan1247_scan:
    set_addr $I10, rxscan1247_loop
    rx1246_cur."!mark_push"(0, rx1246_pos, $I10)
  rxscan1247_done:
.annotate 'line', 110
  # rx subrule "mod_internal" subtype=capture negate=
    rx1246_cur."!cursor_pos"(rx1246_pos)
    $P10 = rx1246_cur."mod_internal"()
    unless $P10, rx1246_fail
    rx1246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx1246_pos = $P10."pos"()
  # rx pass
    rx1246_cur."!cursor_pass"(rx1246_pos, "metachar:sym<mod>")
    if_null rx1246_debug, debug_432
    rx1246_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx1246_pos)
  debug_432:
    .return (rx1246_cur)
  rx1246_restart:
.annotate 'line', 7
    if_null rx1246_debug, debug_433
    rx1246_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_433:
  rx1246_fail:
    (rx1246_rep, rx1246_pos, $I10, $P10) = rx1246_cur."!mark_fail"(0)
    lt rx1246_pos, -1, rx1246_done
    eq rx1246_pos, -1, rx1246_fail
    jump $I10
  rx1246_done:
    rx1246_cur."!cursor_fail"()
    if_null rx1246_debug, debug_434
    rx1246_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_434:
    .return (rx1246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("93_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("94_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1250_tgt
    .local int rx1250_pos
    .local int rx1250_off
    .local int rx1250_eos
    .local int rx1250_rep
    .local pmc rx1250_cur
    .local pmc rx1250_debug
    (rx1250_cur, rx1250_pos, rx1250_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1250_cur
    .local pmc match
    .lex "$/", match
    length rx1250_eos, rx1250_tgt
    gt rx1250_pos, rx1250_eos, rx1250_done
    set rx1250_off, 0
    lt rx1250_pos, 2, rx1250_start
    sub rx1250_off, rx1250_pos, 1
    substr rx1250_tgt, rx1250_tgt, rx1250_off
  rx1250_start:
    eq $I10, 1, rx1250_restart
    if_null rx1250_debug, debug_435
    rx1250_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_435:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1251_done
    goto rxscan1251_scan
  rxscan1251_loop:
    (rx1250_pos) = rx1250_cur."from"()
    inc rx1250_pos
    rx1250_cur."!cursor_from"(rx1250_pos)
    ge rx1250_pos, rx1250_eos, rxscan1251_done
  rxscan1251_scan:
    set_addr $I10, rxscan1251_loop
    rx1250_cur."!mark_push"(0, rx1250_pos, $I10)
  rxscan1251_done:
.annotate 'line', 112
  # rx subrule "quantifier" subtype=capture negate=
    rx1250_cur."!cursor_pos"(rx1250_pos)
    $P10 = rx1250_cur."quantifier"()
    unless $P10, rx1250_fail
    rx1250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx1250_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx1250_cur."!cursor_pos"(rx1250_pos)
    $P10 = rx1250_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx1250_fail
    rx1250_pos = $P10."pos"()
.annotate 'line', 111
  # rx pass
    rx1250_cur."!cursor_pass"(rx1250_pos, "metachar:sym<quantifier>")
    if_null rx1250_debug, debug_436
    rx1250_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx1250_pos)
  debug_436:
    .return (rx1250_cur)
  rx1250_restart:
.annotate 'line', 7
    if_null rx1250_debug, debug_437
    rx1250_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_437:
  rx1250_fail:
    (rx1250_rep, rx1250_pos, $I10, $P10) = rx1250_cur."!mark_fail"(0)
    lt rx1250_pos, -1, rx1250_done
    eq rx1250_pos, -1, rx1250_fail
    jump $I10
  rx1250_done:
    rx1250_cur."!cursor_fail"()
    if_null rx1250_debug, debug_438
    rx1250_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_438:
    .return (rx1250_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :subid("95_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("quantifier", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("96_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1254_tgt
    .local int rx1254_pos
    .local int rx1254_off
    .local int rx1254_eos
    .local int rx1254_rep
    .local pmc rx1254_cur
    .local pmc rx1254_debug
    (rx1254_cur, rx1254_pos, rx1254_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1254_cur
    .local pmc match
    .lex "$/", match
    length rx1254_eos, rx1254_tgt
    gt rx1254_pos, rx1254_eos, rx1254_done
    set rx1254_off, 0
    lt rx1254_pos, 2, rx1254_start
    sub rx1254_off, rx1254_pos, 1
    substr rx1254_tgt, rx1254_tgt, rx1254_off
  rx1254_start:
    eq $I10, 1, rx1254_restart
    if_null rx1254_debug, debug_439
    rx1254_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1255_done
    goto rxscan1255_scan
  rxscan1255_loop:
    (rx1254_pos) = rx1254_cur."from"()
    inc rx1254_pos
    rx1254_cur."!cursor_from"(rx1254_pos)
    ge rx1254_pos, rx1254_eos, rxscan1255_done
  rxscan1255_scan:
    set_addr $I10, rxscan1255_loop
    rx1254_cur."!mark_push"(0, rx1254_pos, $I10)
  rxscan1255_done:
.annotate 'line', 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_1256_fail
    rx1254_cur."!mark_push"(0, rx1254_pos, $I10)
  # rx literal  "~"
    add $I11, rx1254_pos, 1
    gt $I11, rx1254_eos, rx1254_fail
    sub $I11, rx1254_pos, rx1254_off
    ord $I11, rx1254_tgt, $I11
    ne $I11, 126, rx1254_fail
    add rx1254_pos, 1
    set_addr $I10, rxcap_1256_fail
    ($I12, $I11) = rx1254_cur."!mark_peek"($I10)
    rx1254_cur."!cursor_pos"($I11)
    ($P10) = rx1254_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1254_pos, "")
    rx1254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1256_done
  rxcap_1256_fail:
    goto rx1254_fail
  rxcap_1256_done:
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx1254_cur."!cursor_pos"(rx1254_pos)
    $P10 = rx1254_cur."ws"()
    unless $P10, rx1254_fail
    rx1254_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx1254_cur."!cursor_pos"(rx1254_pos)
    $P10 = rx1254_cur."quantified_atom"()
    unless $P10, rx1254_fail
    rx1254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx1254_pos = $P10."pos"()
.annotate 'line', 119
  # rx subrule "ws" subtype=method negate=
    rx1254_cur."!cursor_pos"(rx1254_pos)
    $P10 = rx1254_cur."ws"()
    unless $P10, rx1254_fail
    rx1254_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx1254_cur."!cursor_pos"(rx1254_pos)
    $P10 = rx1254_cur."quantified_atom"()
    unless $P10, rx1254_fail
    rx1254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1254_pos = $P10."pos"()
.annotate 'line', 116
  # rx pass
    rx1254_cur."!cursor_pass"(rx1254_pos, "metachar:sym<~>")
    if_null rx1254_debug, debug_440
    rx1254_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx1254_pos)
  debug_440:
    .return (rx1254_cur)
  rx1254_restart:
.annotate 'line', 7
    if_null rx1254_debug, debug_441
    rx1254_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_441:
  rx1254_fail:
    (rx1254_rep, rx1254_pos, $I10, $P10) = rx1254_cur."!mark_fail"(0)
    lt rx1254_pos, -1, rx1254_done
    eq rx1254_pos, -1, rx1254_fail
    jump $I10
  rx1254_done:
    rx1254_cur."!cursor_fail"()
    if_null rx1254_debug, debug_442
    rx1254_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_442:
    .return (rx1254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("97_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("ws", "~")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("98_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1259_tgt
    .local int rx1259_pos
    .local int rx1259_off
    .local int rx1259_eos
    .local int rx1259_rep
    .local pmc rx1259_cur
    .local pmc rx1259_debug
    (rx1259_cur, rx1259_pos, rx1259_tgt, $I10) = self."!cursor_start"()
    rx1259_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx1259_cur
    .local pmc match
    .lex "$/", match
    length rx1259_eos, rx1259_tgt
    gt rx1259_pos, rx1259_eos, rx1259_done
    set rx1259_off, 0
    lt rx1259_pos, 2, rx1259_start
    sub rx1259_off, rx1259_pos, 1
    substr rx1259_tgt, rx1259_tgt, rx1259_off
  rx1259_start:
    eq $I10, 1, rx1259_restart
    if_null rx1259_debug, debug_443
    rx1259_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_443:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1260_done
    goto rxscan1260_scan
  rxscan1260_loop:
    (rx1259_pos) = rx1259_cur."from"()
    inc rx1259_pos
    rx1259_cur."!cursor_from"(rx1259_pos)
    ge rx1259_pos, rx1259_eos, rxscan1260_done
  rxscan1260_scan:
    set_addr $I10, rxscan1260_loop
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  rxscan1260_done:
.annotate 'line', 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_1261_fail
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx1259_pos, 3
    gt $I11, rx1259_eos, rx1259_fail
    sub $I11, rx1259_pos, rx1259_off
    substr $S10, rx1259_tgt, $I11, 3
    ne $S10, "{*}", rx1259_fail
    add rx1259_pos, 3
    set_addr $I10, rxcap_1261_fail
    ($I12, $I11) = rx1259_cur."!mark_peek"($I10)
    rx1259_cur."!cursor_pos"($I11)
    ($P10) = rx1259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1259_pos, "")
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1261_done
  rxcap_1261_fail:
    goto rx1259_fail
  rxcap_1261_done:
.annotate 'line', 124
  # rx rxquantr1262 ** 0..1
    set_addr $I10, rxquantr1262_done
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  rxquantr1262_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx1259_pos, rx1259_off
    set rx1259_rep, 0
    sub $I12, rx1259_eos, rx1259_pos
  rxenumcharlistq1263_loop:
    le $I12, 0, rxenumcharlistq1263_done
    substr $S10, rx1259_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq1263_done
    inc rx1259_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1263_loop
  rxenumcharlistq1263_done:
    add rx1259_pos, rx1259_pos, rx1259_rep
  # rx literal  "#= "
    add $I11, rx1259_pos, 3
    gt $I11, rx1259_eos, rx1259_fail
    sub $I11, rx1259_pos, rx1259_off
    substr $S10, rx1259_tgt, $I11, 3
    ne $S10, "#= ", rx1259_fail
    add rx1259_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx1259_pos, rx1259_off
    set rx1259_rep, 0
    sub $I12, rx1259_eos, rx1259_pos
  rxenumcharlistq1264_loop:
    le $I12, 0, rxenumcharlistq1264_done
    substr $S10, rx1259_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq1264_done
    inc rx1259_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1264_loop
  rxenumcharlistq1264_done:
    add rx1259_pos, rx1259_pos, rx1259_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_1267_fail
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx1259_pos, rx1259_off
    find_cclass $I11, .CCLASS_WHITESPACE, rx1259_tgt, $I10, rx1259_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1259_fail
    add rx1259_pos, rx1259_off, $I11
  # rx rxquantr1265 ** 0..*
    set_addr $I10, rxquantr1265_done
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  rxquantr1265_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1259_pos, rx1259_off
    set rx1259_rep, 0
    sub $I12, rx1259_eos, rx1259_pos
  rxenumcharlistq1266_loop:
    le $I12, 0, rxenumcharlistq1266_done
    substr $S10, rx1259_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq1266_done
    inc rx1259_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1266_loop
  rxenumcharlistq1266_done:
    lt rx1259_rep, 1, rx1259_fail
    add rx1259_pos, rx1259_pos, rx1259_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx1259_pos, rx1259_off
    find_cclass $I11, .CCLASS_WHITESPACE, rx1259_tgt, $I10, rx1259_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1259_fail
    add rx1259_pos, rx1259_off, $I11
    set_addr $I10, rxquantr1265_done
    (rx1259_rep) = rx1259_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1265_done
    rx1259_cur."!mark_push"(rx1259_rep, rx1259_pos, $I10)
    goto rxquantr1265_loop
  rxquantr1265_done:
    set_addr $I10, rxcap_1267_fail
    ($I12, $I11) = rx1259_cur."!mark_peek"($I10)
    rx1259_cur."!cursor_pos"($I11)
    ($P10) = rx1259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1259_pos, "")
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_1267_done
  rxcap_1267_fail:
    goto rx1259_fail
  rxcap_1267_done:
    set_addr $I10, rxquantr1262_done
    (rx1259_rep) = rx1259_cur."!mark_commit"($I10)
  rxquantr1262_done:
.annotate 'line', 122
  # rx pass
    rx1259_cur."!cursor_pass"(rx1259_pos, "metachar:sym<{*}>")
    if_null rx1259_debug, debug_444
    rx1259_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx1259_pos)
  debug_444:
    .return (rx1259_cur)
  rx1259_restart:
.annotate 'line', 7
    if_null rx1259_debug, debug_445
    rx1259_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_445:
  rx1259_fail:
    (rx1259_rep, rx1259_pos, $I10, $P10) = rx1259_cur."!mark_fail"(0)
    lt rx1259_pos, -1, rx1259_done
    eq rx1259_pos, -1, rx1259_fail
    jump $I10
  rx1259_done:
    rx1259_cur."!cursor_fail"()
    if_null rx1259_debug, debug_446
    rx1259_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_446:
    .return (rx1259_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("99_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "{*}"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("100_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1270_tgt
    .local int rx1270_pos
    .local int rx1270_off
    .local int rx1270_eos
    .local int rx1270_rep
    .local pmc rx1270_cur
    .local pmc rx1270_debug
    (rx1270_cur, rx1270_pos, rx1270_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1270_cur
    .local pmc match
    .lex "$/", match
    length rx1270_eos, rx1270_tgt
    gt rx1270_pos, rx1270_eos, rx1270_done
    set rx1270_off, 0
    lt rx1270_pos, 2, rx1270_start
    sub rx1270_off, rx1270_pos, 1
    substr rx1270_tgt, rx1270_tgt, rx1270_off
  rx1270_start:
    eq $I10, 1, rx1270_restart
    if_null rx1270_debug, debug_447
    rx1270_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1271_done
    goto rxscan1271_scan
  rxscan1271_loop:
    (rx1270_pos) = rx1270_cur."from"()
    inc rx1270_pos
    rx1270_cur."!cursor_from"(rx1270_pos)
    ge rx1270_pos, rx1270_eos, rxscan1271_done
  rxscan1271_scan:
    set_addr $I10, rxscan1271_loop
    rx1270_cur."!mark_push"(0, rx1270_pos, $I10)
  rxscan1271_done:
.annotate 'line', 127
  # rx literal  "<"
    add $I11, rx1270_pos, 1
    gt $I11, rx1270_eos, rx1270_fail
    sub $I11, rx1270_pos, rx1270_off
    ord $I11, rx1270_tgt, $I11
    ne $I11, 60, rx1270_fail
    add rx1270_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1270_cur."!cursor_pos"(rx1270_pos)
    $P10 = rx1270_cur."assertion"()
    unless $P10, rx1270_fail
    rx1270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1270_pos = $P10."pos"()
  alt1272_0:
.annotate 'line', 128
    set_addr $I10, alt1272_1
    rx1270_cur."!mark_push"(0, rx1270_pos, $I10)
  # rx literal  ">"
    add $I11, rx1270_pos, 1
    gt $I11, rx1270_eos, rx1270_fail
    sub $I11, rx1270_pos, rx1270_off
    ord $I11, rx1270_tgt, $I11
    ne $I11, 62, rx1270_fail
    add rx1270_pos, 1
    goto alt1272_end
  alt1272_1:
  # rx subrule "panic" subtype=method negate=
    rx1270_cur."!cursor_pos"(rx1270_pos)
    $P10 = rx1270_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx1270_fail
    rx1270_pos = $P10."pos"()
  alt1272_end:
.annotate 'line', 126
  # rx pass
    rx1270_cur."!cursor_pass"(rx1270_pos, "metachar:sym<assert>")
    if_null rx1270_debug, debug_448
    rx1270_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx1270_pos)
  debug_448:
    .return (rx1270_cur)
  rx1270_restart:
.annotate 'line', 7
    if_null rx1270_debug, debug_449
    rx1270_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_449:
  rx1270_fail:
    (rx1270_rep, rx1270_pos, $I10, $P10) = rx1270_cur."!mark_fail"(0)
    lt rx1270_pos, -1, rx1270_done
    eq rx1270_pos, -1, rx1270_fail
    jump $I10
  rx1270_done:
    rx1270_cur."!cursor_fail"()
    if_null rx1270_debug, debug_450
    rx1270_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_450:
    .return (rx1270_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("101_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("assertion", "<")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("102_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1275_tgt
    .local int rx1275_pos
    .local int rx1275_off
    .local int rx1275_eos
    .local int rx1275_rep
    .local pmc rx1275_cur
    .local pmc rx1275_debug
    (rx1275_cur, rx1275_pos, rx1275_tgt, $I10) = self."!cursor_start"()
    rx1275_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx1275_cur
    .local pmc match
    .lex "$/", match
    length rx1275_eos, rx1275_tgt
    gt rx1275_pos, rx1275_eos, rx1275_done
    set rx1275_off, 0
    lt rx1275_pos, 2, rx1275_start
    sub rx1275_off, rx1275_pos, 1
    substr rx1275_tgt, rx1275_tgt, rx1275_off
  rx1275_start:
    eq $I10, 1, rx1275_restart
    if_null rx1275_debug, debug_451
    rx1275_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_451:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1276_done
    goto rxscan1276_scan
  rxscan1276_loop:
    (rx1275_pos) = rx1275_cur."from"()
    inc rx1275_pos
    rx1275_cur."!cursor_from"(rx1275_pos)
    ge rx1275_pos, rx1275_eos, rxscan1276_done
  rxscan1276_scan:
    set_addr $I10, rxscan1276_loop
    rx1275_cur."!mark_push"(0, rx1275_pos, $I10)
  rxscan1276_done:
  alt1277_0:
.annotate 'line', 132
    set_addr $I10, alt1277_1
    rx1275_cur."!mark_push"(0, rx1275_pos, $I10)
.annotate 'line', 133
  # rx literal  "$<"
    add $I11, rx1275_pos, 2
    gt $I11, rx1275_eos, rx1275_fail
    sub $I11, rx1275_pos, rx1275_off
    substr $S10, rx1275_tgt, $I11, 2
    ne $S10, "$<", rx1275_fail
    add rx1275_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_1279_fail
    rx1275_cur."!mark_push"(0, rx1275_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx1275_pos, rx1275_off
    set rx1275_rep, 0
    sub $I12, rx1275_eos, rx1275_pos
  rxenumcharlistq1278_loop:
    le $I12, 0, rxenumcharlistq1278_done
    substr $S10, rx1275_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq1278_done
    inc rx1275_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1278_loop
  rxenumcharlistq1278_done:
    lt rx1275_rep, 1, rx1275_fail
    add rx1275_pos, rx1275_pos, rx1275_rep
    set_addr $I10, rxcap_1279_fail
    ($I12, $I11) = rx1275_cur."!mark_peek"($I10)
    rx1275_cur."!cursor_pos"($I11)
    ($P10) = rx1275_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1275_pos, "")
    rx1275_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_1279_done
  rxcap_1279_fail:
    goto rx1275_fail
  rxcap_1279_done:
  # rx literal  ">"
    add $I11, rx1275_pos, 1
    gt $I11, rx1275_eos, rx1275_fail
    sub $I11, rx1275_pos, rx1275_off
    ord $I11, rx1275_tgt, $I11
    ne $I11, 62, rx1275_fail
    add rx1275_pos, 1
    goto alt1277_end
  alt1277_1:
.annotate 'line', 134
  # rx literal  "$"
    add $I11, rx1275_pos, 1
    gt $I11, rx1275_eos, rx1275_fail
    sub $I11, rx1275_pos, rx1275_off
    ord $I11, rx1275_tgt, $I11
    ne $I11, 36, rx1275_fail
    add rx1275_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_1280_fail
    rx1275_cur."!mark_push"(0, rx1275_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1275_pos, rx1275_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1275_tgt, $I10, rx1275_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1275_fail
    add rx1275_pos, rx1275_off, $I11
    set_addr $I10, rxcap_1280_fail
    ($I12, $I11) = rx1275_cur."!mark_peek"($I10)
    rx1275_cur."!cursor_pos"($I11)
    ($P10) = rx1275_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1275_pos, "")
    rx1275_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_1280_done
  rxcap_1280_fail:
    goto rx1275_fail
  rxcap_1280_done:
  alt1277_end:
.annotate 'line', 137
  # rx rxquantr1281 ** 0..1
    set_addr $I10, rxquantr1281_done
    rx1275_cur."!mark_push"(0, rx1275_pos, $I10)
  rxquantr1281_loop:
  # rx subrule "ws" subtype=method negate=
    rx1275_cur."!cursor_pos"(rx1275_pos)
    $P10 = rx1275_cur."ws"()
    unless $P10, rx1275_fail
    rx1275_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx1275_pos, 1
    gt $I11, rx1275_eos, rx1275_fail
    sub $I11, rx1275_pos, rx1275_off
    ord $I11, rx1275_tgt, $I11
    ne $I11, 61, rx1275_fail
    add rx1275_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1275_cur."!cursor_pos"(rx1275_pos)
    $P10 = rx1275_cur."ws"()
    unless $P10, rx1275_fail
    rx1275_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx1275_cur."!cursor_pos"(rx1275_pos)
    $P10 = rx1275_cur."quantified_atom"()
    unless $P10, rx1275_fail
    rx1275_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx1275_pos = $P10."pos"()
    set_addr $I10, rxquantr1281_done
    (rx1275_rep) = rx1275_cur."!mark_commit"($I10)
  rxquantr1281_done:
.annotate 'line', 131
  # rx pass
    rx1275_cur."!cursor_pass"(rx1275_pos, "metachar:sym<var>")
    if_null rx1275_debug, debug_452
    rx1275_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx1275_pos)
  debug_452:
    .return (rx1275_cur)
  rx1275_restart:
.annotate 'line', 7
    if_null rx1275_debug, debug_453
    rx1275_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_453:
  rx1275_fail:
    (rx1275_rep, rx1275_pos, $I10, $P10) = rx1275_cur."!mark_fail"(0)
    lt rx1275_pos, -1, rx1275_done
    eq rx1275_pos, -1, rx1275_fail
    jump $I10
  rx1275_done:
    rx1275_cur."!cursor_fail"()
    if_null rx1275_debug, debug_454
    rx1275_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_454:
    .return (rx1275_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("103_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "$"
    push $P101, "$<"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("104_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1284_tgt
    .local int rx1284_pos
    .local int rx1284_off
    .local int rx1284_eos
    .local int rx1284_rep
    .local pmc rx1284_cur
    .local pmc rx1284_debug
    (rx1284_cur, rx1284_pos, rx1284_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1284_cur
    .local pmc match
    .lex "$/", match
    length rx1284_eos, rx1284_tgt
    gt rx1284_pos, rx1284_eos, rx1284_done
    set rx1284_off, 0
    lt rx1284_pos, 2, rx1284_start
    sub rx1284_off, rx1284_pos, 1
    substr rx1284_tgt, rx1284_tgt, rx1284_off
  rx1284_start:
    eq $I10, 1, rx1284_restart
    if_null rx1284_debug, debug_455
    rx1284_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_455:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1285_done
    goto rxscan1285_scan
  rxscan1285_loop:
    (rx1284_pos) = rx1284_cur."from"()
    inc rx1284_pos
    rx1284_cur."!cursor_from"(rx1284_pos)
    ge rx1284_pos, rx1284_eos, rxscan1285_done
  rxscan1285_scan:
    set_addr $I10, rxscan1285_loop
    rx1284_cur."!mark_push"(0, rx1284_pos, $I10)
  rxscan1285_done:
.annotate 'line', 141
  # rx literal  ":PIR{{"
    add $I11, rx1284_pos, 6
    gt $I11, rx1284_eos, rx1284_fail
    sub $I11, rx1284_pos, rx1284_off
    substr $S10, rx1284_tgt, $I11, 6
    ne $S10, ":PIR{{", rx1284_fail
    add rx1284_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_1288_fail
    rx1284_cur."!mark_push"(0, rx1284_pos, $I10)
  # rx rxquantf1286 ** 0..*
    set_addr $I10, rxquantf1286_loop
    rx1284_cur."!mark_push"(0, rx1284_pos, $I10)
    goto rxquantf1286_done
  rxquantf1286_loop:
  # rx charclass .
    ge rx1284_pos, rx1284_eos, rx1284_fail
    inc rx1284_pos
    set_addr $I10, rxquantf1286_loop
    rx1284_cur."!mark_push"(rx1284_rep, rx1284_pos, $I10)
  rxquantf1286_done:
    set_addr $I10, rxcap_1288_fail
    ($I12, $I11) = rx1284_cur."!mark_peek"($I10)
    rx1284_cur."!cursor_pos"($I11)
    ($P10) = rx1284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1284_pos, "")
    rx1284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_1288_done
  rxcap_1288_fail:
    goto rx1284_fail
  rxcap_1288_done:
  # rx literal  "}}"
    add $I11, rx1284_pos, 2
    gt $I11, rx1284_eos, rx1284_fail
    sub $I11, rx1284_pos, rx1284_off
    substr $S10, rx1284_tgt, $I11, 2
    ne $S10, "}}", rx1284_fail
    add rx1284_pos, 2
.annotate 'line', 140
  # rx pass
    rx1284_cur."!cursor_pass"(rx1284_pos, "metachar:sym<PIR>")
    if_null rx1284_debug, debug_456
    rx1284_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx1284_pos)
  debug_456:
    .return (rx1284_cur)
  rx1284_restart:
.annotate 'line', 7
    if_null rx1284_debug, debug_457
    rx1284_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_457:
  rx1284_fail:
    (rx1284_rep, rx1284_pos, $I10, $P10) = rx1284_cur."!mark_fail"(0)
    lt rx1284_pos, -1, rx1284_done
    eq rx1284_pos, -1, rx1284_fail
    jump $I10
  rx1284_done:
    rx1284_cur."!cursor_fail"()
    if_null rx1284_debug, debug_458
    rx1284_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_458:
    .return (rx1284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("105_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ":PIR{{"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("106_1315150101.74")
    .param pmc param_1291
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 144
    .lex "self", param_1291
    $P101 = param_1291."!protoregex"("backslash")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("107_1315150101.74")
    .param pmc param_1293
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 144
    .lex "self", param_1293
    $P103 = param_1293."!PREFIX__!protoregex"("backslash")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("108_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1295_tgt
    .local int rx1295_pos
    .local int rx1295_off
    .local int rx1295_eos
    .local int rx1295_rep
    .local pmc rx1295_cur
    .local pmc rx1295_debug
    (rx1295_cur, rx1295_pos, rx1295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1295_cur
    .local pmc match
    .lex "$/", match
    length rx1295_eos, rx1295_tgt
    gt rx1295_pos, rx1295_eos, rx1295_done
    set rx1295_off, 0
    lt rx1295_pos, 2, rx1295_start
    sub rx1295_off, rx1295_pos, 1
    substr rx1295_tgt, rx1295_tgt, rx1295_off
  rx1295_start:
    eq $I10, 1, rx1295_restart
    if_null rx1295_debug, debug_459
    rx1295_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1296_done
    goto rxscan1296_scan
  rxscan1296_loop:
    (rx1295_pos) = rx1295_cur."from"()
    inc rx1295_pos
    rx1295_cur."!cursor_from"(rx1295_pos)
    ge rx1295_pos, rx1295_eos, rxscan1296_done
  rxscan1296_scan:
    set_addr $I10, rxscan1296_loop
    rx1295_cur."!mark_push"(0, rx1295_pos, $I10)
  rxscan1296_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_1297_fail
    rx1295_cur."!mark_push"(0, rx1295_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1295_pos, rx1295_eos, rx1295_fail
    sub $I10, rx1295_pos, rx1295_off
    substr $S10, rx1295_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx1295_fail
    inc rx1295_pos
    set_addr $I10, rxcap_1297_fail
    ($I12, $I11) = rx1295_cur."!mark_peek"($I10)
    rx1295_cur."!cursor_pos"($I11)
    ($P10) = rx1295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1295_pos, "")
    rx1295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1297_done
  rxcap_1297_fail:
    goto rx1295_fail
  rxcap_1297_done:
  # rx pass
    rx1295_cur."!cursor_pass"(rx1295_pos, "backslash:sym<w>")
    if_null rx1295_debug, debug_460
    rx1295_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx1295_pos)
  debug_460:
    .return (rx1295_cur)
  rx1295_restart:
.annotate 'line', 7
    if_null rx1295_debug, debug_461
    rx1295_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_461:
  rx1295_fail:
    (rx1295_rep, rx1295_pos, $I10, $P10) = rx1295_cur."!mark_fail"(0)
    lt rx1295_pos, -1, rx1295_done
    eq rx1295_pos, -1, rx1295_fail
    jump $I10
  rx1295_done:
    rx1295_cur."!cursor_fail"()
    if_null rx1295_debug, debug_462
    rx1295_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_462:
    .return (rx1295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("109_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "d"
    push $P101, "s"
    push $P101, "w"
    push $P101, "n"
    push $P101, "D"
    push $P101, "S"
    push $P101, "W"
    push $P101, "N"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("110_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1300_tgt
    .local int rx1300_pos
    .local int rx1300_off
    .local int rx1300_eos
    .local int rx1300_rep
    .local pmc rx1300_cur
    .local pmc rx1300_debug
    (rx1300_cur, rx1300_pos, rx1300_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1300_cur
    .local pmc match
    .lex "$/", match
    length rx1300_eos, rx1300_tgt
    gt rx1300_pos, rx1300_eos, rx1300_done
    set rx1300_off, 0
    lt rx1300_pos, 2, rx1300_start
    sub rx1300_off, rx1300_pos, 1
    substr rx1300_tgt, rx1300_tgt, rx1300_off
  rx1300_start:
    eq $I10, 1, rx1300_restart
    if_null rx1300_debug, debug_463
    rx1300_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_463:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1301_done
    goto rxscan1301_scan
  rxscan1301_loop:
    (rx1300_pos) = rx1300_cur."from"()
    inc rx1300_pos
    rx1300_cur."!cursor_from"(rx1300_pos)
    ge rx1300_pos, rx1300_eos, rxscan1301_done
  rxscan1301_scan:
    set_addr $I10, rxscan1301_loop
    rx1300_cur."!mark_push"(0, rx1300_pos, $I10)
  rxscan1301_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_1302_fail
    rx1300_cur."!mark_push"(0, rx1300_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1300_pos, rx1300_eos, rx1300_fail
    sub $I10, rx1300_pos, rx1300_off
    substr $S10, rx1300_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx1300_fail
    inc rx1300_pos
    set_addr $I10, rxcap_1302_fail
    ($I12, $I11) = rx1300_cur."!mark_peek"($I10)
    rx1300_cur."!cursor_pos"($I11)
    ($P10) = rx1300_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1300_pos, "")
    rx1300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1302_done
  rxcap_1302_fail:
    goto rx1300_fail
  rxcap_1302_done:
  # rx pass
    rx1300_cur."!cursor_pass"(rx1300_pos, "backslash:sym<b>")
    if_null rx1300_debug, debug_464
    rx1300_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx1300_pos)
  debug_464:
    .return (rx1300_cur)
  rx1300_restart:
.annotate 'line', 7
    if_null rx1300_debug, debug_465
    rx1300_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_465:
  rx1300_fail:
    (rx1300_rep, rx1300_pos, $I10, $P10) = rx1300_cur."!mark_fail"(0)
    lt rx1300_pos, -1, rx1300_done
    eq rx1300_pos, -1, rx1300_fail
    jump $I10
  rx1300_done:
    rx1300_cur."!cursor_fail"()
    if_null rx1300_debug, debug_466
    rx1300_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_466:
    .return (rx1300_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("111_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "b"
    push $P101, "B"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("112_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1305_tgt
    .local int rx1305_pos
    .local int rx1305_off
    .local int rx1305_eos
    .local int rx1305_rep
    .local pmc rx1305_cur
    .local pmc rx1305_debug
    (rx1305_cur, rx1305_pos, rx1305_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1305_cur
    .local pmc match
    .lex "$/", match
    length rx1305_eos, rx1305_tgt
    gt rx1305_pos, rx1305_eos, rx1305_done
    set rx1305_off, 0
    lt rx1305_pos, 2, rx1305_start
    sub rx1305_off, rx1305_pos, 1
    substr rx1305_tgt, rx1305_tgt, rx1305_off
  rx1305_start:
    eq $I10, 1, rx1305_restart
    if_null rx1305_debug, debug_467
    rx1305_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1306_done
    goto rxscan1306_scan
  rxscan1306_loop:
    (rx1305_pos) = rx1305_cur."from"()
    inc rx1305_pos
    rx1305_cur."!cursor_from"(rx1305_pos)
    ge rx1305_pos, rx1305_eos, rxscan1306_done
  rxscan1306_scan:
    set_addr $I10, rxscan1306_loop
    rx1305_cur."!mark_push"(0, rx1305_pos, $I10)
  rxscan1306_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_1307_fail
    rx1305_cur."!mark_push"(0, rx1305_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1305_pos, rx1305_eos, rx1305_fail
    sub $I10, rx1305_pos, rx1305_off
    substr $S10, rx1305_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx1305_fail
    inc rx1305_pos
    set_addr $I10, rxcap_1307_fail
    ($I12, $I11) = rx1305_cur."!mark_peek"($I10)
    rx1305_cur."!cursor_pos"($I11)
    ($P10) = rx1305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1305_pos, "")
    rx1305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1307_done
  rxcap_1307_fail:
    goto rx1305_fail
  rxcap_1307_done:
  # rx pass
    rx1305_cur."!cursor_pass"(rx1305_pos, "backslash:sym<e>")
    if_null rx1305_debug, debug_468
    rx1305_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx1305_pos)
  debug_468:
    .return (rx1305_cur)
  rx1305_restart:
.annotate 'line', 7
    if_null rx1305_debug, debug_469
    rx1305_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_469:
  rx1305_fail:
    (rx1305_rep, rx1305_pos, $I10, $P10) = rx1305_cur."!mark_fail"(0)
    lt rx1305_pos, -1, rx1305_done
    eq rx1305_pos, -1, rx1305_fail
    jump $I10
  rx1305_done:
    rx1305_cur."!cursor_fail"()
    if_null rx1305_debug, debug_470
    rx1305_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_470:
    .return (rx1305_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("113_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "e"
    push $P101, "E"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("114_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1310_tgt
    .local int rx1310_pos
    .local int rx1310_off
    .local int rx1310_eos
    .local int rx1310_rep
    .local pmc rx1310_cur
    .local pmc rx1310_debug
    (rx1310_cur, rx1310_pos, rx1310_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1310_cur
    .local pmc match
    .lex "$/", match
    length rx1310_eos, rx1310_tgt
    gt rx1310_pos, rx1310_eos, rx1310_done
    set rx1310_off, 0
    lt rx1310_pos, 2, rx1310_start
    sub rx1310_off, rx1310_pos, 1
    substr rx1310_tgt, rx1310_tgt, rx1310_off
  rx1310_start:
    eq $I10, 1, rx1310_restart
    if_null rx1310_debug, debug_471
    rx1310_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_471:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1311_done
    goto rxscan1311_scan
  rxscan1311_loop:
    (rx1310_pos) = rx1310_cur."from"()
    inc rx1310_pos
    rx1310_cur."!cursor_from"(rx1310_pos)
    ge rx1310_pos, rx1310_eos, rxscan1311_done
  rxscan1311_scan:
    set_addr $I10, rxscan1311_loop
    rx1310_cur."!mark_push"(0, rx1310_pos, $I10)
  rxscan1311_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_1312_fail
    rx1310_cur."!mark_push"(0, rx1310_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1310_pos, rx1310_eos, rx1310_fail
    sub $I10, rx1310_pos, rx1310_off
    substr $S10, rx1310_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx1310_fail
    inc rx1310_pos
    set_addr $I10, rxcap_1312_fail
    ($I12, $I11) = rx1310_cur."!mark_peek"($I10)
    rx1310_cur."!cursor_pos"($I11)
    ($P10) = rx1310_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1310_pos, "")
    rx1310_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1312_done
  rxcap_1312_fail:
    goto rx1310_fail
  rxcap_1312_done:
  # rx pass
    rx1310_cur."!cursor_pass"(rx1310_pos, "backslash:sym<f>")
    if_null rx1310_debug, debug_472
    rx1310_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx1310_pos)
  debug_472:
    .return (rx1310_cur)
  rx1310_restart:
.annotate 'line', 7
    if_null rx1310_debug, debug_473
    rx1310_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_473:
  rx1310_fail:
    (rx1310_rep, rx1310_pos, $I10, $P10) = rx1310_cur."!mark_fail"(0)
    lt rx1310_pos, -1, rx1310_done
    eq rx1310_pos, -1, rx1310_fail
    jump $I10
  rx1310_done:
    rx1310_cur."!cursor_fail"()
    if_null rx1310_debug, debug_474
    rx1310_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_474:
    .return (rx1310_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("115_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "f"
    push $P101, "F"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("116_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1315_tgt
    .local int rx1315_pos
    .local int rx1315_off
    .local int rx1315_eos
    .local int rx1315_rep
    .local pmc rx1315_cur
    .local pmc rx1315_debug
    (rx1315_cur, rx1315_pos, rx1315_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1315_cur
    .local pmc match
    .lex "$/", match
    length rx1315_eos, rx1315_tgt
    gt rx1315_pos, rx1315_eos, rx1315_done
    set rx1315_off, 0
    lt rx1315_pos, 2, rx1315_start
    sub rx1315_off, rx1315_pos, 1
    substr rx1315_tgt, rx1315_tgt, rx1315_off
  rx1315_start:
    eq $I10, 1, rx1315_restart
    if_null rx1315_debug, debug_475
    rx1315_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_475:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1316_done
    goto rxscan1316_scan
  rxscan1316_loop:
    (rx1315_pos) = rx1315_cur."from"()
    inc rx1315_pos
    rx1315_cur."!cursor_from"(rx1315_pos)
    ge rx1315_pos, rx1315_eos, rxscan1316_done
  rxscan1316_scan:
    set_addr $I10, rxscan1316_loop
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  rxscan1316_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_1317_fail
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1315_pos, rx1315_eos, rx1315_fail
    sub $I10, rx1315_pos, rx1315_off
    substr $S10, rx1315_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx1315_fail
    inc rx1315_pos
    set_addr $I10, rxcap_1317_fail
    ($I12, $I11) = rx1315_cur."!mark_peek"($I10)
    rx1315_cur."!cursor_pos"($I11)
    ($P10) = rx1315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1315_pos, "")
    rx1315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1317_done
  rxcap_1317_fail:
    goto rx1315_fail
  rxcap_1317_done:
  # rx pass
    rx1315_cur."!cursor_pass"(rx1315_pos, "backslash:sym<h>")
    if_null rx1315_debug, debug_476
    rx1315_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx1315_pos)
  debug_476:
    .return (rx1315_cur)
  rx1315_restart:
.annotate 'line', 7
    if_null rx1315_debug, debug_477
    rx1315_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_477:
  rx1315_fail:
    (rx1315_rep, rx1315_pos, $I10, $P10) = rx1315_cur."!mark_fail"(0)
    lt rx1315_pos, -1, rx1315_done
    eq rx1315_pos, -1, rx1315_fail
    jump $I10
  rx1315_done:
    rx1315_cur."!cursor_fail"()
    if_null rx1315_debug, debug_478
    rx1315_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_478:
    .return (rx1315_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("117_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "h"
    push $P101, "H"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("118_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1320_tgt
    .local int rx1320_pos
    .local int rx1320_off
    .local int rx1320_eos
    .local int rx1320_rep
    .local pmc rx1320_cur
    .local pmc rx1320_debug
    (rx1320_cur, rx1320_pos, rx1320_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1320_cur
    .local pmc match
    .lex "$/", match
    length rx1320_eos, rx1320_tgt
    gt rx1320_pos, rx1320_eos, rx1320_done
    set rx1320_off, 0
    lt rx1320_pos, 2, rx1320_start
    sub rx1320_off, rx1320_pos, 1
    substr rx1320_tgt, rx1320_tgt, rx1320_off
  rx1320_start:
    eq $I10, 1, rx1320_restart
    if_null rx1320_debug, debug_479
    rx1320_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_479:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1321_done
    goto rxscan1321_scan
  rxscan1321_loop:
    (rx1320_pos) = rx1320_cur."from"()
    inc rx1320_pos
    rx1320_cur."!cursor_from"(rx1320_pos)
    ge rx1320_pos, rx1320_eos, rxscan1321_done
  rxscan1321_scan:
    set_addr $I10, rxscan1321_loop
    rx1320_cur."!mark_push"(0, rx1320_pos, $I10)
  rxscan1321_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_1322_fail
    rx1320_cur."!mark_push"(0, rx1320_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1320_pos, rx1320_eos, rx1320_fail
    sub $I10, rx1320_pos, rx1320_off
    substr $S10, rx1320_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx1320_fail
    inc rx1320_pos
    set_addr $I10, rxcap_1322_fail
    ($I12, $I11) = rx1320_cur."!mark_peek"($I10)
    rx1320_cur."!cursor_pos"($I11)
    ($P10) = rx1320_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1320_pos, "")
    rx1320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1322_done
  rxcap_1322_fail:
    goto rx1320_fail
  rxcap_1322_done:
  # rx pass
    rx1320_cur."!cursor_pass"(rx1320_pos, "backslash:sym<r>")
    if_null rx1320_debug, debug_480
    rx1320_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx1320_pos)
  debug_480:
    .return (rx1320_cur)
  rx1320_restart:
.annotate 'line', 7
    if_null rx1320_debug, debug_481
    rx1320_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_481:
  rx1320_fail:
    (rx1320_rep, rx1320_pos, $I10, $P10) = rx1320_cur."!mark_fail"(0)
    lt rx1320_pos, -1, rx1320_done
    eq rx1320_pos, -1, rx1320_fail
    jump $I10
  rx1320_done:
    rx1320_cur."!cursor_fail"()
    if_null rx1320_debug, debug_482
    rx1320_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_482:
    .return (rx1320_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("119_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "r"
    push $P101, "R"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("120_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1325_tgt
    .local int rx1325_pos
    .local int rx1325_off
    .local int rx1325_eos
    .local int rx1325_rep
    .local pmc rx1325_cur
    .local pmc rx1325_debug
    (rx1325_cur, rx1325_pos, rx1325_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1325_cur
    .local pmc match
    .lex "$/", match
    length rx1325_eos, rx1325_tgt
    gt rx1325_pos, rx1325_eos, rx1325_done
    set rx1325_off, 0
    lt rx1325_pos, 2, rx1325_start
    sub rx1325_off, rx1325_pos, 1
    substr rx1325_tgt, rx1325_tgt, rx1325_off
  rx1325_start:
    eq $I10, 1, rx1325_restart
    if_null rx1325_debug, debug_483
    rx1325_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_483:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1326_done
    goto rxscan1326_scan
  rxscan1326_loop:
    (rx1325_pos) = rx1325_cur."from"()
    inc rx1325_pos
    rx1325_cur."!cursor_from"(rx1325_pos)
    ge rx1325_pos, rx1325_eos, rxscan1326_done
  rxscan1326_scan:
    set_addr $I10, rxscan1326_loop
    rx1325_cur."!mark_push"(0, rx1325_pos, $I10)
  rxscan1326_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_1327_fail
    rx1325_cur."!mark_push"(0, rx1325_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1325_pos, rx1325_eos, rx1325_fail
    sub $I10, rx1325_pos, rx1325_off
    substr $S10, rx1325_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx1325_fail
    inc rx1325_pos
    set_addr $I10, rxcap_1327_fail
    ($I12, $I11) = rx1325_cur."!mark_peek"($I10)
    rx1325_cur."!cursor_pos"($I11)
    ($P10) = rx1325_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1325_pos, "")
    rx1325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1327_done
  rxcap_1327_fail:
    goto rx1325_fail
  rxcap_1327_done:
  # rx pass
    rx1325_cur."!cursor_pass"(rx1325_pos, "backslash:sym<t>")
    if_null rx1325_debug, debug_484
    rx1325_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx1325_pos)
  debug_484:
    .return (rx1325_cur)
  rx1325_restart:
.annotate 'line', 7
    if_null rx1325_debug, debug_485
    rx1325_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_485:
  rx1325_fail:
    (rx1325_rep, rx1325_pos, $I10, $P10) = rx1325_cur."!mark_fail"(0)
    lt rx1325_pos, -1, rx1325_done
    eq rx1325_pos, -1, rx1325_fail
    jump $I10
  rx1325_done:
    rx1325_cur."!cursor_fail"()
    if_null rx1325_debug, debug_486
    rx1325_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_486:
    .return (rx1325_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("121_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "t"
    push $P101, "T"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("122_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1330_tgt
    .local int rx1330_pos
    .local int rx1330_off
    .local int rx1330_eos
    .local int rx1330_rep
    .local pmc rx1330_cur
    .local pmc rx1330_debug
    (rx1330_cur, rx1330_pos, rx1330_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1330_cur
    .local pmc match
    .lex "$/", match
    length rx1330_eos, rx1330_tgt
    gt rx1330_pos, rx1330_eos, rx1330_done
    set rx1330_off, 0
    lt rx1330_pos, 2, rx1330_start
    sub rx1330_off, rx1330_pos, 1
    substr rx1330_tgt, rx1330_tgt, rx1330_off
  rx1330_start:
    eq $I10, 1, rx1330_restart
    if_null rx1330_debug, debug_487
    rx1330_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1331_done
    goto rxscan1331_scan
  rxscan1331_loop:
    (rx1330_pos) = rx1330_cur."from"()
    inc rx1330_pos
    rx1330_cur."!cursor_from"(rx1330_pos)
    ge rx1330_pos, rx1330_eos, rxscan1331_done
  rxscan1331_scan:
    set_addr $I10, rxscan1331_loop
    rx1330_cur."!mark_push"(0, rx1330_pos, $I10)
  rxscan1331_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_1332_fail
    rx1330_cur."!mark_push"(0, rx1330_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1330_pos, rx1330_eos, rx1330_fail
    sub $I10, rx1330_pos, rx1330_off
    substr $S10, rx1330_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx1330_fail
    inc rx1330_pos
    set_addr $I10, rxcap_1332_fail
    ($I12, $I11) = rx1330_cur."!mark_peek"($I10)
    rx1330_cur."!cursor_pos"($I11)
    ($P10) = rx1330_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1330_pos, "")
    rx1330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1332_done
  rxcap_1332_fail:
    goto rx1330_fail
  rxcap_1332_done:
  # rx pass
    rx1330_cur."!cursor_pass"(rx1330_pos, "backslash:sym<v>")
    if_null rx1330_debug, debug_488
    rx1330_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx1330_pos)
  debug_488:
    .return (rx1330_cur)
  rx1330_restart:
.annotate 'line', 7
    if_null rx1330_debug, debug_489
    rx1330_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_489:
  rx1330_fail:
    (rx1330_rep, rx1330_pos, $I10, $P10) = rx1330_cur."!mark_fail"(0)
    lt rx1330_pos, -1, rx1330_done
    eq rx1330_pos, -1, rx1330_fail
    jump $I10
  rx1330_done:
    rx1330_cur."!cursor_fail"()
    if_null rx1330_debug, debug_490
    rx1330_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_490:
    .return (rx1330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("123_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "v"
    push $P101, "V"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("124_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1335_tgt
    .local int rx1335_pos
    .local int rx1335_off
    .local int rx1335_eos
    .local int rx1335_rep
    .local pmc rx1335_cur
    .local pmc rx1335_debug
    (rx1335_cur, rx1335_pos, rx1335_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1335_cur
    .local pmc match
    .lex "$/", match
    length rx1335_eos, rx1335_tgt
    gt rx1335_pos, rx1335_eos, rx1335_done
    set rx1335_off, 0
    lt rx1335_pos, 2, rx1335_start
    sub rx1335_off, rx1335_pos, 1
    substr rx1335_tgt, rx1335_tgt, rx1335_off
  rx1335_start:
    eq $I10, 1, rx1335_restart
    if_null rx1335_debug, debug_491
    rx1335_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_491:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1336_done
    goto rxscan1336_scan
  rxscan1336_loop:
    (rx1335_pos) = rx1335_cur."from"()
    inc rx1335_pos
    rx1335_cur."!cursor_from"(rx1335_pos)
    ge rx1335_pos, rx1335_eos, rxscan1336_done
  rxscan1336_scan:
    set_addr $I10, rxscan1336_loop
    rx1335_cur."!mark_push"(0, rx1335_pos, $I10)
  rxscan1336_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_1337_fail
    rx1335_cur."!mark_push"(0, rx1335_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1335_pos, rx1335_eos, rx1335_fail
    sub $I10, rx1335_pos, rx1335_off
    substr $S10, rx1335_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx1335_fail
    inc rx1335_pos
    set_addr $I10, rxcap_1337_fail
    ($I12, $I11) = rx1335_cur."!mark_peek"($I10)
    rx1335_cur."!cursor_pos"($I11)
    ($P10) = rx1335_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1335_pos, "")
    rx1335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1337_done
  rxcap_1337_fail:
    goto rx1335_fail
  rxcap_1337_done:
  alt1338_0:
    set_addr $I10, alt1338_1
    rx1335_cur."!mark_push"(0, rx1335_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx1335_cur."!cursor_pos"(rx1335_pos)
    $P10 = rx1335_cur."octint"()
    unless $P10, rx1335_fail
    rx1335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1335_pos = $P10."pos"()
    goto alt1338_end
  alt1338_1:
  # rx literal  "["
    add $I11, rx1335_pos, 1
    gt $I11, rx1335_eos, rx1335_fail
    sub $I11, rx1335_pos, rx1335_off
    ord $I11, rx1335_tgt, $I11
    ne $I11, 91, rx1335_fail
    add rx1335_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx1335_cur."!cursor_pos"(rx1335_pos)
    $P10 = rx1335_cur."octints"()
    unless $P10, rx1335_fail
    rx1335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx1335_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1335_pos, 1
    gt $I11, rx1335_eos, rx1335_fail
    sub $I11, rx1335_pos, rx1335_off
    ord $I11, rx1335_tgt, $I11
    ne $I11, 93, rx1335_fail
    add rx1335_pos, 1
  alt1338_end:
  # rx pass
    rx1335_cur."!cursor_pass"(rx1335_pos, "backslash:sym<o>")
    if_null rx1335_debug, debug_492
    rx1335_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx1335_pos)
  debug_492:
    .return (rx1335_cur)
  rx1335_restart:
.annotate 'line', 7
    if_null rx1335_debug, debug_493
    rx1335_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_493:
  rx1335_fail:
    (rx1335_rep, rx1335_pos, $I10, $P10) = rx1335_cur."!mark_fail"(0)
    lt rx1335_pos, -1, rx1335_done
    eq rx1335_pos, -1, rx1335_fail
    jump $I10
  rx1335_done:
    rx1335_cur."!cursor_fail"()
    if_null rx1335_debug, debug_494
    rx1335_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_494:
    .return (rx1335_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("125_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("octints", "O[")
    $P103 = self."!PREFIX__!subrule"("octint", "O")
    $P104 = self."!PREFIX__!subrule"("octints", "o[")
    $P105 = self."!PREFIX__!subrule"("octint", "o")
    new $P106, "ResizablePMCArray"
    push $P106, $P101
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("126_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1341_tgt
    .local int rx1341_pos
    .local int rx1341_off
    .local int rx1341_eos
    .local int rx1341_rep
    .local pmc rx1341_cur
    .local pmc rx1341_debug
    (rx1341_cur, rx1341_pos, rx1341_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1341_cur
    .local pmc match
    .lex "$/", match
    length rx1341_eos, rx1341_tgt
    gt rx1341_pos, rx1341_eos, rx1341_done
    set rx1341_off, 0
    lt rx1341_pos, 2, rx1341_start
    sub rx1341_off, rx1341_pos, 1
    substr rx1341_tgt, rx1341_tgt, rx1341_off
  rx1341_start:
    eq $I10, 1, rx1341_restart
    if_null rx1341_debug, debug_495
    rx1341_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1342_done
    goto rxscan1342_scan
  rxscan1342_loop:
    (rx1341_pos) = rx1341_cur."from"()
    inc rx1341_pos
    rx1341_cur."!cursor_from"(rx1341_pos)
    ge rx1341_pos, rx1341_eos, rxscan1342_done
  rxscan1342_scan:
    set_addr $I10, rxscan1342_loop
    rx1341_cur."!mark_push"(0, rx1341_pos, $I10)
  rxscan1342_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_1343_fail
    rx1341_cur."!mark_push"(0, rx1341_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1341_pos, rx1341_eos, rx1341_fail
    sub $I10, rx1341_pos, rx1341_off
    substr $S10, rx1341_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx1341_fail
    inc rx1341_pos
    set_addr $I10, rxcap_1343_fail
    ($I12, $I11) = rx1341_cur."!mark_peek"($I10)
    rx1341_cur."!cursor_pos"($I11)
    ($P10) = rx1341_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1341_pos, "")
    rx1341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1343_done
  rxcap_1343_fail:
    goto rx1341_fail
  rxcap_1343_done:
  alt1344_0:
    set_addr $I10, alt1344_1
    rx1341_cur."!mark_push"(0, rx1341_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx1341_cur."!cursor_pos"(rx1341_pos)
    $P10 = rx1341_cur."hexint"()
    unless $P10, rx1341_fail
    rx1341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1341_pos = $P10."pos"()
    goto alt1344_end
  alt1344_1:
  # rx literal  "["
    add $I11, rx1341_pos, 1
    gt $I11, rx1341_eos, rx1341_fail
    sub $I11, rx1341_pos, rx1341_off
    ord $I11, rx1341_tgt, $I11
    ne $I11, 91, rx1341_fail
    add rx1341_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx1341_cur."!cursor_pos"(rx1341_pos)
    $P10 = rx1341_cur."hexints"()
    unless $P10, rx1341_fail
    rx1341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx1341_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1341_pos, 1
    gt $I11, rx1341_eos, rx1341_fail
    sub $I11, rx1341_pos, rx1341_off
    ord $I11, rx1341_tgt, $I11
    ne $I11, 93, rx1341_fail
    add rx1341_pos, 1
  alt1344_end:
  # rx pass
    rx1341_cur."!cursor_pass"(rx1341_pos, "backslash:sym<x>")
    if_null rx1341_debug, debug_496
    rx1341_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx1341_pos)
  debug_496:
    .return (rx1341_cur)
  rx1341_restart:
.annotate 'line', 7
    if_null rx1341_debug, debug_497
    rx1341_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_497:
  rx1341_fail:
    (rx1341_rep, rx1341_pos, $I10, $P10) = rx1341_cur."!mark_fail"(0)
    lt rx1341_pos, -1, rx1341_done
    eq rx1341_pos, -1, rx1341_fail
    jump $I10
  rx1341_done:
    rx1341_cur."!cursor_fail"()
    if_null rx1341_debug, debug_498
    rx1341_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_498:
    .return (rx1341_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("127_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("hexints", "X[")
    $P103 = self."!PREFIX__!subrule"("hexint", "X")
    $P104 = self."!PREFIX__!subrule"("hexints", "x[")
    $P105 = self."!PREFIX__!subrule"("hexint", "x")
    new $P106, "ResizablePMCArray"
    push $P106, $P101
    push $P106, $P103
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("128_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1347_tgt
    .local int rx1347_pos
    .local int rx1347_off
    .local int rx1347_eos
    .local int rx1347_rep
    .local pmc rx1347_cur
    .local pmc rx1347_debug
    (rx1347_cur, rx1347_pos, rx1347_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1347_cur
    .local pmc match
    .lex "$/", match
    length rx1347_eos, rx1347_tgt
    gt rx1347_pos, rx1347_eos, rx1347_done
    set rx1347_off, 0
    lt rx1347_pos, 2, rx1347_start
    sub rx1347_off, rx1347_pos, 1
    substr rx1347_tgt, rx1347_tgt, rx1347_off
  rx1347_start:
    eq $I10, 1, rx1347_restart
    if_null rx1347_debug, debug_499
    rx1347_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_499:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1348_done
    goto rxscan1348_scan
  rxscan1348_loop:
    (rx1347_pos) = rx1347_cur."from"()
    inc rx1347_pos
    rx1347_cur."!cursor_from"(rx1347_pos)
    ge rx1347_pos, rx1347_eos, rxscan1348_done
  rxscan1348_scan:
    set_addr $I10, rxscan1348_loop
    rx1347_cur."!mark_push"(0, rx1347_pos, $I10)
  rxscan1348_done:
.annotate 'line', 155
  # rx subcapture "sym"
    set_addr $I10, rxcap_1349_fail
    rx1347_cur."!mark_push"(0, rx1347_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1347_pos, rx1347_eos, rx1347_fail
    sub $I10, rx1347_pos, rx1347_off
    substr $S10, rx1347_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx1347_fail
    inc rx1347_pos
    set_addr $I10, rxcap_1349_fail
    ($I12, $I11) = rx1347_cur."!mark_peek"($I10)
    rx1347_cur."!cursor_pos"($I11)
    ($P10) = rx1347_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1347_pos, "")
    rx1347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1349_done
  rxcap_1349_fail:
    goto rx1347_fail
  rxcap_1349_done:
  # rx subrule "charspec" subtype=capture negate=
    rx1347_cur."!cursor_pos"(rx1347_pos)
    $P10 = rx1347_cur."charspec"()
    unless $P10, rx1347_fail
    rx1347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx1347_pos = $P10."pos"()
  # rx pass
    rx1347_cur."!cursor_pass"(rx1347_pos, "backslash:sym<c>")
    if_null rx1347_debug, debug_500
    rx1347_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx1347_pos)
  debug_500:
    .return (rx1347_cur)
  rx1347_restart:
.annotate 'line', 7
    if_null rx1347_debug, debug_501
    rx1347_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_501:
  rx1347_fail:
    (rx1347_rep, rx1347_pos, $I10, $P10) = rx1347_cur."!mark_fail"(0)
    lt rx1347_pos, -1, rx1347_done
    eq rx1347_pos, -1, rx1347_fail
    jump $I10
  rx1347_done:
    rx1347_cur."!cursor_fail"()
    if_null rx1347_debug, debug_502
    rx1347_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_502:
    .return (rx1347_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("129_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("charspec", "C")
    $P103 = self."!PREFIX__!subrule"("charspec", "c")
    new $P104, "ResizablePMCArray"
    push $P104, $P101
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("130_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1352_tgt
    .local int rx1352_pos
    .local int rx1352_off
    .local int rx1352_eos
    .local int rx1352_rep
    .local pmc rx1352_cur
    .local pmc rx1352_debug
    (rx1352_cur, rx1352_pos, rx1352_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1352_cur
    .local pmc match
    .lex "$/", match
    length rx1352_eos, rx1352_tgt
    gt rx1352_pos, rx1352_eos, rx1352_done
    set rx1352_off, 0
    lt rx1352_pos, 2, rx1352_start
    sub rx1352_off, rx1352_pos, 1
    substr rx1352_tgt, rx1352_tgt, rx1352_off
  rx1352_start:
    eq $I10, 1, rx1352_restart
    if_null rx1352_debug, debug_503
    rx1352_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_503:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1353_done
    goto rxscan1353_scan
  rxscan1353_loop:
    (rx1352_pos) = rx1352_cur."from"()
    inc rx1352_pos
    rx1352_cur."!cursor_from"(rx1352_pos)
    ge rx1352_pos, rx1352_eos, rxscan1353_done
  rxscan1353_scan:
    set_addr $I10, rxscan1353_loop
    rx1352_cur."!mark_push"(0, rx1352_pos, $I10)
  rxscan1353_done:
.annotate 'line', 156
  # rx literal  "A"
    add $I11, rx1352_pos, 1
    gt $I11, rx1352_eos, rx1352_fail
    sub $I11, rx1352_pos, rx1352_off
    ord $I11, rx1352_tgt, $I11
    ne $I11, 65, rx1352_fail
    add rx1352_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx1352_cur."!cursor_pos"(rx1352_pos)
    $P10 = rx1352_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx1352_fail
    rx1352_pos = $P10."pos"()
  # rx pass
    rx1352_cur."!cursor_pass"(rx1352_pos, "backslash:sym<A>")
    if_null rx1352_debug, debug_504
    rx1352_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx1352_pos)
  debug_504:
    .return (rx1352_cur)
  rx1352_restart:
.annotate 'line', 7
    if_null rx1352_debug, debug_505
    rx1352_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_505:
  rx1352_fail:
    (rx1352_rep, rx1352_pos, $I10, $P10) = rx1352_cur."!mark_fail"(0)
    lt rx1352_pos, -1, rx1352_done
    eq rx1352_pos, -1, rx1352_fail
    jump $I10
  rx1352_done:
    rx1352_cur."!cursor_fail"()
    if_null rx1352_debug, debug_506
    rx1352_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_506:
    .return (rx1352_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("131_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("obs", "A")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("132_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1356_tgt
    .local int rx1356_pos
    .local int rx1356_off
    .local int rx1356_eos
    .local int rx1356_rep
    .local pmc rx1356_cur
    .local pmc rx1356_debug
    (rx1356_cur, rx1356_pos, rx1356_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1356_cur
    .local pmc match
    .lex "$/", match
    length rx1356_eos, rx1356_tgt
    gt rx1356_pos, rx1356_eos, rx1356_done
    set rx1356_off, 0
    lt rx1356_pos, 2, rx1356_start
    sub rx1356_off, rx1356_pos, 1
    substr rx1356_tgt, rx1356_tgt, rx1356_off
  rx1356_start:
    eq $I10, 1, rx1356_restart
    if_null rx1356_debug, debug_507
    rx1356_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_507:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1357_done
    goto rxscan1357_scan
  rxscan1357_loop:
    (rx1356_pos) = rx1356_cur."from"()
    inc rx1356_pos
    rx1356_cur."!cursor_from"(rx1356_pos)
    ge rx1356_pos, rx1356_eos, rxscan1357_done
  rxscan1357_scan:
    set_addr $I10, rxscan1357_loop
    rx1356_cur."!mark_push"(0, rx1356_pos, $I10)
  rxscan1357_done:
.annotate 'line', 157
  # rx literal  "z"
    add $I11, rx1356_pos, 1
    gt $I11, rx1356_eos, rx1356_fail
    sub $I11, rx1356_pos, rx1356_off
    ord $I11, rx1356_tgt, $I11
    ne $I11, 122, rx1356_fail
    add rx1356_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx1356_cur."!cursor_pos"(rx1356_pos)
    $P10 = rx1356_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx1356_fail
    rx1356_pos = $P10."pos"()
  # rx pass
    rx1356_cur."!cursor_pass"(rx1356_pos, "backslash:sym<z>")
    if_null rx1356_debug, debug_508
    rx1356_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx1356_pos)
  debug_508:
    .return (rx1356_cur)
  rx1356_restart:
.annotate 'line', 7
    if_null rx1356_debug, debug_509
    rx1356_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_509:
  rx1356_fail:
    (rx1356_rep, rx1356_pos, $I10, $P10) = rx1356_cur."!mark_fail"(0)
    lt rx1356_pos, -1, rx1356_done
    eq rx1356_pos, -1, rx1356_fail
    jump $I10
  rx1356_done:
    rx1356_cur."!cursor_fail"()
    if_null rx1356_debug, debug_510
    rx1356_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_510:
    .return (rx1356_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("133_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("obs", "z")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("134_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1360_tgt
    .local int rx1360_pos
    .local int rx1360_off
    .local int rx1360_eos
    .local int rx1360_rep
    .local pmc rx1360_cur
    .local pmc rx1360_debug
    (rx1360_cur, rx1360_pos, rx1360_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1360_cur
    .local pmc match
    .lex "$/", match
    length rx1360_eos, rx1360_tgt
    gt rx1360_pos, rx1360_eos, rx1360_done
    set rx1360_off, 0
    lt rx1360_pos, 2, rx1360_start
    sub rx1360_off, rx1360_pos, 1
    substr rx1360_tgt, rx1360_tgt, rx1360_off
  rx1360_start:
    eq $I10, 1, rx1360_restart
    if_null rx1360_debug, debug_511
    rx1360_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_511:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1361_done
    goto rxscan1361_scan
  rxscan1361_loop:
    (rx1360_pos) = rx1360_cur."from"()
    inc rx1360_pos
    rx1360_cur."!cursor_from"(rx1360_pos)
    ge rx1360_pos, rx1360_eos, rxscan1361_done
  rxscan1361_scan:
    set_addr $I10, rxscan1361_loop
    rx1360_cur."!mark_push"(0, rx1360_pos, $I10)
  rxscan1361_done:
.annotate 'line', 158
  # rx literal  "Z"
    add $I11, rx1360_pos, 1
    gt $I11, rx1360_eos, rx1360_fail
    sub $I11, rx1360_pos, rx1360_off
    ord $I11, rx1360_tgt, $I11
    ne $I11, 90, rx1360_fail
    add rx1360_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx1360_cur."!cursor_pos"(rx1360_pos)
    $P10 = rx1360_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx1360_fail
    rx1360_pos = $P10."pos"()
  # rx pass
    rx1360_cur."!cursor_pass"(rx1360_pos, "backslash:sym<Z>")
    if_null rx1360_debug, debug_512
    rx1360_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx1360_pos)
  debug_512:
    .return (rx1360_cur)
  rx1360_restart:
.annotate 'line', 7
    if_null rx1360_debug, debug_513
    rx1360_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_513:
  rx1360_fail:
    (rx1360_rep, rx1360_pos, $I10, $P10) = rx1360_cur."!mark_fail"(0)
    lt rx1360_pos, -1, rx1360_done
    eq rx1360_pos, -1, rx1360_fail
    jump $I10
  rx1360_done:
    rx1360_cur."!cursor_fail"()
    if_null rx1360_debug, debug_514
    rx1360_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_514:
    .return (rx1360_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("135_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("obs", "Z")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("136_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1364_tgt
    .local int rx1364_pos
    .local int rx1364_off
    .local int rx1364_eos
    .local int rx1364_rep
    .local pmc rx1364_cur
    .local pmc rx1364_debug
    (rx1364_cur, rx1364_pos, rx1364_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1364_cur
    .local pmc match
    .lex "$/", match
    length rx1364_eos, rx1364_tgt
    gt rx1364_pos, rx1364_eos, rx1364_done
    set rx1364_off, 0
    lt rx1364_pos, 2, rx1364_start
    sub rx1364_off, rx1364_pos, 1
    substr rx1364_tgt, rx1364_tgt, rx1364_off
  rx1364_start:
    eq $I10, 1, rx1364_restart
    if_null rx1364_debug, debug_515
    rx1364_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_515:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1365_done
    goto rxscan1365_scan
  rxscan1365_loop:
    (rx1364_pos) = rx1364_cur."from"()
    inc rx1364_pos
    rx1364_cur."!cursor_from"(rx1364_pos)
    ge rx1364_pos, rx1364_eos, rxscan1365_done
  rxscan1365_scan:
    set_addr $I10, rxscan1365_loop
    rx1364_cur."!mark_push"(0, rx1364_pos, $I10)
  rxscan1365_done:
.annotate 'line', 159
  # rx literal  "Q"
    add $I11, rx1364_pos, 1
    gt $I11, rx1364_eos, rx1364_fail
    sub $I11, rx1364_pos, rx1364_off
    ord $I11, rx1364_tgt, $I11
    ne $I11, 81, rx1364_fail
    add rx1364_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx1364_cur."!cursor_pos"(rx1364_pos)
    $P10 = rx1364_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx1364_fail
    rx1364_pos = $P10."pos"()
  # rx pass
    rx1364_cur."!cursor_pass"(rx1364_pos, "backslash:sym<Q>")
    if_null rx1364_debug, debug_516
    rx1364_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx1364_pos)
  debug_516:
    .return (rx1364_cur)
  rx1364_restart:
.annotate 'line', 7
    if_null rx1364_debug, debug_517
    rx1364_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_517:
  rx1364_fail:
    (rx1364_rep, rx1364_pos, $I10, $P10) = rx1364_cur."!mark_fail"(0)
    lt rx1364_pos, -1, rx1364_done
    eq rx1364_pos, -1, rx1364_fail
    jump $I10
  rx1364_done:
    rx1364_cur."!cursor_fail"()
    if_null rx1364_debug, debug_518
    rx1364_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_518:
    .return (rx1364_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("137_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("obs", "Q")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("138_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1371 = "139_1315150101.74" 
    capture_lex $P1371
    .local string rx1368_tgt
    .local int rx1368_pos
    .local int rx1368_off
    .local int rx1368_eos
    .local int rx1368_rep
    .local pmc rx1368_cur
    .local pmc rx1368_debug
    (rx1368_cur, rx1368_pos, rx1368_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1368_cur
    .local pmc match
    .lex "$/", match
    length rx1368_eos, rx1368_tgt
    gt rx1368_pos, rx1368_eos, rx1368_done
    set rx1368_off, 0
    lt rx1368_pos, 2, rx1368_start
    sub rx1368_off, rx1368_pos, 1
    substr rx1368_tgt, rx1368_tgt, rx1368_off
  rx1368_start:
    eq $I10, 1, rx1368_restart
    if_null rx1368_debug, debug_519
    rx1368_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_519:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1369_done
    goto rxscan1369_scan
  rxscan1369_loop:
    (rx1368_pos) = rx1368_cur."from"()
    inc rx1368_pos
    rx1368_cur."!cursor_from"(rx1368_pos)
    ge rx1368_pos, rx1368_eos, rxscan1369_done
  rxscan1369_scan:
    set_addr $I10, rxscan1369_loop
    rx1368_cur."!mark_push"(0, rx1368_pos, $I10)
  rxscan1369_done:
.annotate 'line', 160
    rx1368_cur."!cursor_pos"(rx1368_pos)
    find_lex $P101, unicode:"$\x{a2}"
    $P103 = $P101."MATCH"()
    store_lex "$/", $P103
    .const 'Sub' $P1371 = "139_1315150101.74" 
    capture_lex $P1371
    $P104 = $P1371()
  # rx charclass w
    ge rx1368_pos, rx1368_eos, rx1368_fail
    sub $I10, rx1368_pos, rx1368_off
    is_cclass $I11, .CCLASS_WORD, rx1368_tgt, $I10
    unless $I11, rx1368_fail
    inc rx1368_pos
  # rx subrule "panic" subtype=method negate=
    rx1368_cur."!cursor_pos"(rx1368_pos)
    $P10 = rx1368_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx1368_fail
    rx1368_pos = $P10."pos"()
  # rx pass
    rx1368_cur."!cursor_pass"(rx1368_pos, "backslash:sym<unrec>")
    if_null rx1368_debug, debug_520
    rx1368_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx1368_pos)
  debug_520:
    .return (rx1368_cur)
  rx1368_restart:
.annotate 'line', 7
    if_null rx1368_debug, debug_521
    rx1368_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_521:
  rx1368_fail:
    (rx1368_rep, rx1368_pos, $I10, $P10) = rx1368_cur."!mark_fail"(0)
    lt rx1368_pos, -1, rx1368_done
    eq rx1368_pos, -1, rx1368_fail
    jump $I10
  rx1368_done:
    rx1368_cur."!cursor_fail"()
    if_null rx1368_debug, debug_522
    rx1368_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_522:
    .return (rx1368_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1370"  :anon :subid("139_1315150101.74") :outer("138_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 160
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :subid("140_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("141_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1374_tgt
    .local int rx1374_pos
    .local int rx1374_off
    .local int rx1374_eos
    .local int rx1374_rep
    .local pmc rx1374_cur
    .local pmc rx1374_debug
    (rx1374_cur, rx1374_pos, rx1374_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1374_cur
    .local pmc match
    .lex "$/", match
    length rx1374_eos, rx1374_tgt
    gt rx1374_pos, rx1374_eos, rx1374_done
    set rx1374_off, 0
    lt rx1374_pos, 2, rx1374_start
    sub rx1374_off, rx1374_pos, 1
    substr rx1374_tgt, rx1374_tgt, rx1374_off
  rx1374_start:
    eq $I10, 1, rx1374_restart
    if_null rx1374_debug, debug_523
    rx1374_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_523:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1375_done
    goto rxscan1375_scan
  rxscan1375_loop:
    (rx1374_pos) = rx1374_cur."from"()
    inc rx1374_pos
    rx1374_cur."!cursor_from"(rx1374_pos)
    ge rx1374_pos, rx1374_eos, rxscan1375_done
  rxscan1375_scan:
    set_addr $I10, rxscan1375_loop
    rx1374_cur."!mark_push"(0, rx1374_pos, $I10)
  rxscan1375_done:
.annotate 'line', 161
  # rx charclass W
    ge rx1374_pos, rx1374_eos, rx1374_fail
    sub $I10, rx1374_pos, rx1374_off
    is_cclass $I11, .CCLASS_WORD, rx1374_tgt, $I10
    if $I11, rx1374_fail
    inc rx1374_pos
  # rx pass
    rx1374_cur."!cursor_pass"(rx1374_pos, "backslash:sym<misc>")
    if_null rx1374_debug, debug_524
    rx1374_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx1374_pos)
  debug_524:
    .return (rx1374_cur)
  rx1374_restart:
.annotate 'line', 7
    if_null rx1374_debug, debug_525
    rx1374_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_525:
  rx1374_fail:
    (rx1374_rep, rx1374_pos, $I10, $P10) = rx1374_cur."!mark_fail"(0)
    lt rx1374_pos, -1, rx1374_done
    eq rx1374_pos, -1, rx1374_fail
    jump $I10
  rx1374_done:
    rx1374_cur."!cursor_fail"()
    if_null rx1374_debug, debug_526
    rx1374_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_526:
    .return (rx1374_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("142_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("143_1315150101.74")
    .param pmc param_1378
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 163
    .lex "self", param_1378
    $P101 = param_1378."!protoregex"("assertion")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("144_1315150101.74")
    .param pmc param_1380
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 163
    .lex "self", param_1380
    $P103 = param_1380."!PREFIX__!protoregex"("assertion")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("145_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1386 = "146_1315150101.74" 
    capture_lex $P1386
    .local string rx1382_tgt
    .local int rx1382_pos
    .local int rx1382_off
    .local int rx1382_eos
    .local int rx1382_rep
    .local pmc rx1382_cur
    .local pmc rx1382_debug
    (rx1382_cur, rx1382_pos, rx1382_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1382_cur
    .local pmc match
    .lex "$/", match
    length rx1382_eos, rx1382_tgt
    gt rx1382_pos, rx1382_eos, rx1382_done
    set rx1382_off, 0
    lt rx1382_pos, 2, rx1382_start
    sub rx1382_off, rx1382_pos, 1
    substr rx1382_tgt, rx1382_tgt, rx1382_off
  rx1382_start:
    eq $I10, 1, rx1382_restart
    if_null rx1382_debug, debug_527
    rx1382_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_527:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1383_done
    goto rxscan1383_scan
  rxscan1383_loop:
    (rx1382_pos) = rx1382_cur."from"()
    inc rx1382_pos
    rx1382_cur."!cursor_from"(rx1382_pos)
    ge rx1382_pos, rx1382_eos, rxscan1383_done
  rxscan1383_scan:
    set_addr $I10, rxscan1383_loop
    rx1382_cur."!mark_push"(0, rx1382_pos, $I10)
  rxscan1383_done:
.annotate 'line', 165
  # rx literal  "?"
    add $I11, rx1382_pos, 1
    gt $I11, rx1382_eos, rx1382_fail
    sub $I11, rx1382_pos, rx1382_off
    ord $I11, rx1382_tgt, $I11
    ne $I11, 63, rx1382_fail
    add rx1382_pos, 1
  alt1384_0:
    set_addr $I10, alt1384_1
    rx1382_cur."!mark_push"(0, rx1382_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx1382_cur."!cursor_pos"(rx1382_pos)
    .const 'Sub' $P1386 = "146_1315150101.74" 
    capture_lex $P1386
    $P10 = rx1382_cur."before"($P1386)
    unless $P10, rx1382_fail
    goto alt1384_end
  alt1384_1:
  # rx subrule "assertion" subtype=capture negate=
    rx1382_cur."!cursor_pos"(rx1382_pos)
    $P10 = rx1382_cur."assertion"()
    unless $P10, rx1382_fail
    rx1382_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1382_pos = $P10."pos"()
  alt1384_end:
  # rx pass
    rx1382_cur."!cursor_pass"(rx1382_pos, "assertion:sym<?>")
    if_null rx1382_debug, debug_532
    rx1382_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx1382_pos)
  debug_532:
    .return (rx1382_cur)
  rx1382_restart:
.annotate 'line', 7
    if_null rx1382_debug, debug_533
    rx1382_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_533:
  rx1382_fail:
    (rx1382_rep, rx1382_pos, $I10, $P10) = rx1382_cur."!mark_fail"(0)
    lt rx1382_pos, -1, rx1382_done
    eq rx1382_pos, -1, rx1382_fail
    jump $I10
  rx1382_done:
    rx1382_cur."!cursor_fail"()
    if_null rx1382_debug, debug_534
    rx1382_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_534:
    .return (rx1382_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1385"  :anon :subid("146_1315150101.74") :method :outer("145_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 165
    .local string rx1387_tgt
    .local int rx1387_pos
    .local int rx1387_off
    .local int rx1387_eos
    .local int rx1387_rep
    .local pmc rx1387_cur
    .local pmc rx1387_debug
    (rx1387_cur, rx1387_pos, rx1387_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1387_cur
    .local pmc match
    .lex "$/", match
    length rx1387_eos, rx1387_tgt
    gt rx1387_pos, rx1387_eos, rx1387_done
    set rx1387_off, 0
    lt rx1387_pos, 2, rx1387_start
    sub rx1387_off, rx1387_pos, 1
    substr rx1387_tgt, rx1387_tgt, rx1387_off
  rx1387_start:
    eq $I10, 1, rx1387_restart
    if_null rx1387_debug, debug_528
    rx1387_cur."!cursor_debug"("START", "")
  debug_528:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1388_done
    goto rxscan1388_scan
  rxscan1388_loop:
    (rx1387_pos) = rx1387_cur."from"()
    inc rx1387_pos
    rx1387_cur."!cursor_from"(rx1387_pos)
    ge rx1387_pos, rx1387_eos, rxscan1388_done
  rxscan1388_scan:
    set_addr $I10, rxscan1388_loop
    rx1387_cur."!mark_push"(0, rx1387_pos, $I10)
  rxscan1388_done:
  # rx literal  ">"
    add $I11, rx1387_pos, 1
    gt $I11, rx1387_eos, rx1387_fail
    sub $I11, rx1387_pos, rx1387_off
    ord $I11, rx1387_tgt, $I11
    ne $I11, 62, rx1387_fail
    add rx1387_pos, 1
  # rx pass
    rx1387_cur."!cursor_pass"(rx1387_pos, "")
    if_null rx1387_debug, debug_529
    rx1387_cur."!cursor_debug"("PASS", "", " at pos=", rx1387_pos)
  debug_529:
    .return (rx1387_cur)
  rx1387_restart:
    if_null rx1387_debug, debug_530
    rx1387_cur."!cursor_debug"("NEXT", "")
  debug_530:
  rx1387_fail:
    (rx1387_rep, rx1387_pos, $I10, $P10) = rx1387_cur."!mark_fail"(0)
    lt rx1387_pos, -1, rx1387_done
    eq rx1387_pos, -1, rx1387_fail
    jump $I10
  rx1387_done:
    rx1387_cur."!cursor_fail"()
    if_null rx1387_debug, debug_531
    rx1387_cur."!cursor_debug"("FAIL", "")
  debug_531:
    .return (rx1387_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("147_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("assertion", "?")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, "?"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("148_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1395 = "149_1315150101.74" 
    capture_lex $P1395
    .local string rx1391_tgt
    .local int rx1391_pos
    .local int rx1391_off
    .local int rx1391_eos
    .local int rx1391_rep
    .local pmc rx1391_cur
    .local pmc rx1391_debug
    (rx1391_cur, rx1391_pos, rx1391_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1391_cur
    .local pmc match
    .lex "$/", match
    length rx1391_eos, rx1391_tgt
    gt rx1391_pos, rx1391_eos, rx1391_done
    set rx1391_off, 0
    lt rx1391_pos, 2, rx1391_start
    sub rx1391_off, rx1391_pos, 1
    substr rx1391_tgt, rx1391_tgt, rx1391_off
  rx1391_start:
    eq $I10, 1, rx1391_restart
    if_null rx1391_debug, debug_535
    rx1391_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_535:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1392_done
    goto rxscan1392_scan
  rxscan1392_loop:
    (rx1391_pos) = rx1391_cur."from"()
    inc rx1391_pos
    rx1391_cur."!cursor_from"(rx1391_pos)
    ge rx1391_pos, rx1391_eos, rxscan1392_done
  rxscan1392_scan:
    set_addr $I10, rxscan1392_loop
    rx1391_cur."!mark_push"(0, rx1391_pos, $I10)
  rxscan1392_done:
.annotate 'line', 166
  # rx literal  "!"
    add $I11, rx1391_pos, 1
    gt $I11, rx1391_eos, rx1391_fail
    sub $I11, rx1391_pos, rx1391_off
    ord $I11, rx1391_tgt, $I11
    ne $I11, 33, rx1391_fail
    add rx1391_pos, 1
  alt1393_0:
    set_addr $I10, alt1393_1
    rx1391_cur."!mark_push"(0, rx1391_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx1391_cur."!cursor_pos"(rx1391_pos)
    .const 'Sub' $P1395 = "149_1315150101.74" 
    capture_lex $P1395
    $P10 = rx1391_cur."before"($P1395)
    unless $P10, rx1391_fail
    goto alt1393_end
  alt1393_1:
  # rx subrule "assertion" subtype=capture negate=
    rx1391_cur."!cursor_pos"(rx1391_pos)
    $P10 = rx1391_cur."assertion"()
    unless $P10, rx1391_fail
    rx1391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1391_pos = $P10."pos"()
  alt1393_end:
  # rx pass
    rx1391_cur."!cursor_pass"(rx1391_pos, "assertion:sym<!>")
    if_null rx1391_debug, debug_540
    rx1391_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx1391_pos)
  debug_540:
    .return (rx1391_cur)
  rx1391_restart:
.annotate 'line', 7
    if_null rx1391_debug, debug_541
    rx1391_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_541:
  rx1391_fail:
    (rx1391_rep, rx1391_pos, $I10, $P10) = rx1391_cur."!mark_fail"(0)
    lt rx1391_pos, -1, rx1391_done
    eq rx1391_pos, -1, rx1391_fail
    jump $I10
  rx1391_done:
    rx1391_cur."!cursor_fail"()
    if_null rx1391_debug, debug_542
    rx1391_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_542:
    .return (rx1391_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1394"  :anon :subid("149_1315150101.74") :method :outer("148_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 166
    .local string rx1396_tgt
    .local int rx1396_pos
    .local int rx1396_off
    .local int rx1396_eos
    .local int rx1396_rep
    .local pmc rx1396_cur
    .local pmc rx1396_debug
    (rx1396_cur, rx1396_pos, rx1396_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1396_cur
    .local pmc match
    .lex "$/", match
    length rx1396_eos, rx1396_tgt
    gt rx1396_pos, rx1396_eos, rx1396_done
    set rx1396_off, 0
    lt rx1396_pos, 2, rx1396_start
    sub rx1396_off, rx1396_pos, 1
    substr rx1396_tgt, rx1396_tgt, rx1396_off
  rx1396_start:
    eq $I10, 1, rx1396_restart
    if_null rx1396_debug, debug_536
    rx1396_cur."!cursor_debug"("START", "")
  debug_536:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1397_done
    goto rxscan1397_scan
  rxscan1397_loop:
    (rx1396_pos) = rx1396_cur."from"()
    inc rx1396_pos
    rx1396_cur."!cursor_from"(rx1396_pos)
    ge rx1396_pos, rx1396_eos, rxscan1397_done
  rxscan1397_scan:
    set_addr $I10, rxscan1397_loop
    rx1396_cur."!mark_push"(0, rx1396_pos, $I10)
  rxscan1397_done:
  # rx literal  ">"
    add $I11, rx1396_pos, 1
    gt $I11, rx1396_eos, rx1396_fail
    sub $I11, rx1396_pos, rx1396_off
    ord $I11, rx1396_tgt, $I11
    ne $I11, 62, rx1396_fail
    add rx1396_pos, 1
  # rx pass
    rx1396_cur."!cursor_pass"(rx1396_pos, "")
    if_null rx1396_debug, debug_537
    rx1396_cur."!cursor_debug"("PASS", "", " at pos=", rx1396_pos)
  debug_537:
    .return (rx1396_cur)
  rx1396_restart:
    if_null rx1396_debug, debug_538
    rx1396_cur."!cursor_debug"("NEXT", "")
  debug_538:
  rx1396_fail:
    (rx1396_rep, rx1396_pos, $I10, $P10) = rx1396_cur."!mark_fail"(0)
    lt rx1396_pos, -1, rx1396_done
    eq rx1396_pos, -1, rx1396_fail
    jump $I10
  rx1396_done:
    rx1396_cur."!cursor_fail"()
    if_null rx1396_debug, debug_539
    rx1396_cur."!cursor_debug"("FAIL", "")
  debug_539:
    .return (rx1396_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("150_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("assertion", "!")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, "!"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("151_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1400_tgt
    .local int rx1400_pos
    .local int rx1400_off
    .local int rx1400_eos
    .local int rx1400_rep
    .local pmc rx1400_cur
    .local pmc rx1400_debug
    (rx1400_cur, rx1400_pos, rx1400_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1400_cur
    .local pmc match
    .lex "$/", match
    length rx1400_eos, rx1400_tgt
    gt rx1400_pos, rx1400_eos, rx1400_done
    set rx1400_off, 0
    lt rx1400_pos, 2, rx1400_start
    sub rx1400_off, rx1400_pos, 1
    substr rx1400_tgt, rx1400_tgt, rx1400_off
  rx1400_start:
    eq $I10, 1, rx1400_restart
    if_null rx1400_debug, debug_543
    rx1400_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_543:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1401_done
    goto rxscan1401_scan
  rxscan1401_loop:
    (rx1400_pos) = rx1400_cur."from"()
    inc rx1400_pos
    rx1400_cur."!cursor_from"(rx1400_pos)
    ge rx1400_pos, rx1400_eos, rxscan1401_done
  rxscan1401_scan:
    set_addr $I10, rxscan1401_loop
    rx1400_cur."!mark_push"(0, rx1400_pos, $I10)
  rxscan1401_done:
.annotate 'line', 169
  # rx literal  "."
    add $I11, rx1400_pos, 1
    gt $I11, rx1400_eos, rx1400_fail
    sub $I11, rx1400_pos, rx1400_off
    ord $I11, rx1400_tgt, $I11
    ne $I11, 46, rx1400_fail
    add rx1400_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1400_cur."!cursor_pos"(rx1400_pos)
    $P10 = rx1400_cur."assertion"()
    unless $P10, rx1400_fail
    rx1400_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1400_pos = $P10."pos"()
.annotate 'line', 168
  # rx pass
    rx1400_cur."!cursor_pass"(rx1400_pos, "assertion:sym<method>")
    if_null rx1400_debug, debug_544
    rx1400_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx1400_pos)
  debug_544:
    .return (rx1400_cur)
  rx1400_restart:
.annotate 'line', 7
    if_null rx1400_debug, debug_545
    rx1400_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_545:
  rx1400_fail:
    (rx1400_rep, rx1400_pos, $I10, $P10) = rx1400_cur."!mark_fail"(0)
    lt rx1400_pos, -1, rx1400_done
    eq rx1400_pos, -1, rx1400_fail
    jump $I10
  rx1400_done:
    rx1400_cur."!cursor_fail"()
    if_null rx1400_debug, debug_546
    rx1400_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_546:
    .return (rx1400_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("152_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("assertion", ".")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("153_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1409 = "154_1315150101.74" 
    capture_lex $P1409
    .local string rx1404_tgt
    .local int rx1404_pos
    .local int rx1404_off
    .local int rx1404_eos
    .local int rx1404_rep
    .local pmc rx1404_cur
    .local pmc rx1404_debug
    (rx1404_cur, rx1404_pos, rx1404_tgt, $I10) = self."!cursor_start"()
    rx1404_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx1404_cur
    .local pmc match
    .lex "$/", match
    length rx1404_eos, rx1404_tgt
    gt rx1404_pos, rx1404_eos, rx1404_done
    set rx1404_off, 0
    lt rx1404_pos, 2, rx1404_start
    sub rx1404_off, rx1404_pos, 1
    substr rx1404_tgt, rx1404_tgt, rx1404_off
  rx1404_start:
    eq $I10, 1, rx1404_restart
    if_null rx1404_debug, debug_547
    rx1404_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_547:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1405_done
    goto rxscan1405_scan
  rxscan1405_loop:
    (rx1404_pos) = rx1404_cur."from"()
    inc rx1404_pos
    rx1404_cur."!cursor_from"(rx1404_pos)
    ge rx1404_pos, rx1404_eos, rxscan1405_done
  rxscan1405_scan:
    set_addr $I10, rxscan1405_loop
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
  rxscan1405_done:
.annotate 'line', 173
  # rx subrule "identifier" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."identifier"()
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx1404_pos = $P10."pos"()
.annotate 'line', 180
  # rx rxquantr1406 ** 0..1
    set_addr $I10, rxquantr1406_done
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
  rxquantr1406_loop:
  alt1407_0:
.annotate 'line', 174
    set_addr $I10, alt1407_1
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
.annotate 'line', 175
  # rx subrule "before" subtype=zerowidth negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    .const 'Sub' $P1409 = "154_1315150101.74" 
    capture_lex $P1409
    $P10 = rx1404_cur."before"($P1409)
    unless $P10, rx1404_fail
    goto alt1407_end
  alt1407_1:
    set_addr $I10, alt1407_2
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
.annotate 'line', 176
  # rx literal  "="
    add $I11, rx1404_pos, 1
    gt $I11, rx1404_eos, rx1404_fail
    sub $I11, rx1404_pos, rx1404_off
    ord $I11, rx1404_tgt, $I11
    ne $I11, 61, rx1404_fail
    add rx1404_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."assertion"()
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1404_pos = $P10."pos"()
    goto alt1407_end
  alt1407_2:
    set_addr $I10, alt1407_3
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
.annotate 'line', 177
  # rx literal  ":"
    add $I11, rx1404_pos, 1
    gt $I11, rx1404_eos, rx1404_fail
    sub $I11, rx1404_pos, rx1404_off
    ord $I11, rx1404_tgt, $I11
    ne $I11, 58, rx1404_fail
    add rx1404_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."arglist"()
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1404_pos = $P10."pos"()
    goto alt1407_end
  alt1407_3:
    set_addr $I10, alt1407_4
    rx1404_cur."!mark_push"(0, rx1404_pos, $I10)
.annotate 'line', 178
  # rx literal  "("
    add $I11, rx1404_pos, 1
    gt $I11, rx1404_eos, rx1404_fail
    sub $I11, rx1404_pos, rx1404_off
    ord $I11, rx1404_tgt, $I11
    ne $I11, 40, rx1404_fail
    add rx1404_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."arglist"()
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1404_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1404_pos, 1
    gt $I11, rx1404_eos, rx1404_fail
    sub $I11, rx1404_pos, rx1404_off
    ord $I11, rx1404_tgt, $I11
    ne $I11, 41, rx1404_fail
    add rx1404_pos, 1
    goto alt1407_end
  alt1407_4:
.annotate 'line', 179
  # rx subrule "normspace" subtype=method negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."normspace"()
    unless $P10, rx1404_fail
    rx1404_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1404_cur."!cursor_pos"(rx1404_pos)
    $P10 = rx1404_cur."nibbler"()
    unless $P10, rx1404_fail
    rx1404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1404_pos = $P10."pos"()
  alt1407_end:
.annotate 'line', 180
    set_addr $I10, rxquantr1406_done
    (rx1404_rep) = rx1404_cur."!mark_commit"($I10)
  rxquantr1406_done:
.annotate 'line', 172
  # rx pass
    rx1404_cur."!cursor_pass"(rx1404_pos, "assertion:sym<name>")
    if_null rx1404_debug, debug_552
    rx1404_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx1404_pos)
  debug_552:
    .return (rx1404_cur)
  rx1404_restart:
.annotate 'line', 7
    if_null rx1404_debug, debug_553
    rx1404_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_553:
  rx1404_fail:
    (rx1404_rep, rx1404_pos, $I10, $P10) = rx1404_cur."!mark_fail"(0)
    lt rx1404_pos, -1, rx1404_done
    eq rx1404_pos, -1, rx1404_fail
    jump $I10
  rx1404_done:
    rx1404_cur."!cursor_fail"()
    if_null rx1404_debug, debug_554
    rx1404_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_554:
    .return (rx1404_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1408"  :anon :subid("154_1315150101.74") :method :outer("153_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 175
    .local string rx1410_tgt
    .local int rx1410_pos
    .local int rx1410_off
    .local int rx1410_eos
    .local int rx1410_rep
    .local pmc rx1410_cur
    .local pmc rx1410_debug
    (rx1410_cur, rx1410_pos, rx1410_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1410_cur
    .local pmc match
    .lex "$/", match
    length rx1410_eos, rx1410_tgt
    gt rx1410_pos, rx1410_eos, rx1410_done
    set rx1410_off, 0
    lt rx1410_pos, 2, rx1410_start
    sub rx1410_off, rx1410_pos, 1
    substr rx1410_tgt, rx1410_tgt, rx1410_off
  rx1410_start:
    eq $I10, 1, rx1410_restart
    if_null rx1410_debug, debug_548
    rx1410_cur."!cursor_debug"("START", "")
  debug_548:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1411_done
    goto rxscan1411_scan
  rxscan1411_loop:
    (rx1410_pos) = rx1410_cur."from"()
    inc rx1410_pos
    rx1410_cur."!cursor_from"(rx1410_pos)
    ge rx1410_pos, rx1410_eos, rxscan1411_done
  rxscan1411_scan:
    set_addr $I10, rxscan1411_loop
    rx1410_cur."!mark_push"(0, rx1410_pos, $I10)
  rxscan1411_done:
  # rx literal  ">"
    add $I11, rx1410_pos, 1
    gt $I11, rx1410_eos, rx1410_fail
    sub $I11, rx1410_pos, rx1410_off
    ord $I11, rx1410_tgt, $I11
    ne $I11, 62, rx1410_fail
    add rx1410_pos, 1
  # rx pass
    rx1410_cur."!cursor_pass"(rx1410_pos, "")
    if_null rx1410_debug, debug_549
    rx1410_cur."!cursor_debug"("PASS", "", " at pos=", rx1410_pos)
  debug_549:
    .return (rx1410_cur)
  rx1410_restart:
    if_null rx1410_debug, debug_550
    rx1410_cur."!cursor_debug"("NEXT", "")
  debug_550:
  rx1410_fail:
    (rx1410_rep, rx1410_pos, $I10, $P10) = rx1410_cur."!mark_fail"(0)
    lt rx1410_pos, -1, rx1410_done
    eq rx1410_pos, -1, rx1410_fail
    jump $I10
  rx1410_done:
    rx1410_cur."!cursor_fail"()
    if_null rx1410_debug, debug_551
    rx1410_cur."!cursor_debug"("FAIL", "")
  debug_551:
    .return (rx1410_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("155_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("identifier", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("156_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1417 = "157_1315150101.74" 
    capture_lex $P1417
    .local string rx1414_tgt
    .local int rx1414_pos
    .local int rx1414_off
    .local int rx1414_eos
    .local int rx1414_rep
    .local pmc rx1414_cur
    .local pmc rx1414_debug
    (rx1414_cur, rx1414_pos, rx1414_tgt, $I10) = self."!cursor_start"()
    rx1414_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx1414_cur
    .local pmc match
    .lex "$/", match
    length rx1414_eos, rx1414_tgt
    gt rx1414_pos, rx1414_eos, rx1414_done
    set rx1414_off, 0
    lt rx1414_pos, 2, rx1414_start
    sub rx1414_off, rx1414_pos, 1
    substr rx1414_tgt, rx1414_tgt, rx1414_off
  rx1414_start:
    eq $I10, 1, rx1414_restart
    if_null rx1414_debug, debug_555
    rx1414_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_555:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1415_done
    goto rxscan1415_scan
  rxscan1415_loop:
    (rx1414_pos) = rx1414_cur."from"()
    inc rx1414_pos
    rx1414_cur."!cursor_from"(rx1414_pos)
    ge rx1414_pos, rx1414_eos, rxscan1415_done
  rxscan1415_scan:
    set_addr $I10, rxscan1415_loop
    rx1414_cur."!mark_push"(0, rx1414_pos, $I10)
  rxscan1415_done:
.annotate 'line', 183
  # rx subrule "before" subtype=zerowidth negate=
    rx1414_cur."!cursor_pos"(rx1414_pos)
    .const 'Sub' $P1417 = "157_1315150101.74" 
    capture_lex $P1417
    $P10 = rx1414_cur."before"($P1417)
    unless $P10, rx1414_fail
  # rx rxquantr1421 ** 1..*
    set_addr $I10, rxquantr1421_done
    rx1414_cur."!mark_push"(0, -1, $I10)
  rxquantr1421_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx1414_cur."!cursor_pos"(rx1414_pos)
    $P10 = rx1414_cur."cclass_elem"()
    unless $P10, rx1414_fail
    goto rxsubrule1422_pass
  rxsubrule1422_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1414_fail
  rxsubrule1422_pass:
    set_addr $I10, rxsubrule1422_back
    rx1414_cur."!mark_push"(0, rx1414_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx1414_pos = $P10."pos"()
    set_addr $I10, rxquantr1421_done
    (rx1414_rep) = rx1414_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1421_done
    rx1414_cur."!mark_push"(rx1414_rep, rx1414_pos, $I10)
    goto rxquantr1421_loop
  rxquantr1421_done:
  # rx pass
    rx1414_cur."!cursor_pass"(rx1414_pos, "assertion:sym<[>")
    if_null rx1414_debug, debug_560
    rx1414_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx1414_pos)
  debug_560:
    .return (rx1414_cur)
  rx1414_restart:
.annotate 'line', 7
    if_null rx1414_debug, debug_561
    rx1414_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_561:
  rx1414_fail:
    (rx1414_rep, rx1414_pos, $I10, $P10) = rx1414_cur."!mark_fail"(0)
    lt rx1414_pos, -1, rx1414_done
    eq rx1414_pos, -1, rx1414_fail
    jump $I10
  rx1414_done:
    rx1414_cur."!cursor_fail"()
    if_null rx1414_debug, debug_562
    rx1414_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_562:
    .return (rx1414_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1416"  :anon :subid("157_1315150101.74") :method :outer("156_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 183
    .local string rx1418_tgt
    .local int rx1418_pos
    .local int rx1418_off
    .local int rx1418_eos
    .local int rx1418_rep
    .local pmc rx1418_cur
    .local pmc rx1418_debug
    (rx1418_cur, rx1418_pos, rx1418_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1418_cur
    .local pmc match
    .lex "$/", match
    length rx1418_eos, rx1418_tgt
    gt rx1418_pos, rx1418_eos, rx1418_done
    set rx1418_off, 0
    lt rx1418_pos, 2, rx1418_start
    sub rx1418_off, rx1418_pos, 1
    substr rx1418_tgt, rx1418_tgt, rx1418_off
  rx1418_start:
    eq $I10, 1, rx1418_restart
    if_null rx1418_debug, debug_556
    rx1418_cur."!cursor_debug"("START", "")
  debug_556:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1419_done
    goto rxscan1419_scan
  rxscan1419_loop:
    (rx1418_pos) = rx1418_cur."from"()
    inc rx1418_pos
    rx1418_cur."!cursor_from"(rx1418_pos)
    ge rx1418_pos, rx1418_eos, rxscan1419_done
  rxscan1419_scan:
    set_addr $I10, rxscan1419_loop
    rx1418_cur."!mark_push"(0, rx1418_pos, $I10)
  rxscan1419_done:
  alt1420_0:
    set_addr $I10, alt1420_1
    rx1418_cur."!mark_push"(0, rx1418_pos, $I10)
  # rx literal  "["
    add $I11, rx1418_pos, 1
    gt $I11, rx1418_eos, rx1418_fail
    sub $I11, rx1418_pos, rx1418_off
    ord $I11, rx1418_tgt, $I11
    ne $I11, 91, rx1418_fail
    add rx1418_pos, 1
    goto alt1420_end
  alt1420_1:
    set_addr $I10, alt1420_2
    rx1418_cur."!mark_push"(0, rx1418_pos, $I10)
  # rx literal  "+"
    add $I11, rx1418_pos, 1
    gt $I11, rx1418_eos, rx1418_fail
    sub $I11, rx1418_pos, rx1418_off
    ord $I11, rx1418_tgt, $I11
    ne $I11, 43, rx1418_fail
    add rx1418_pos, 1
    goto alt1420_end
  alt1420_2:
  # rx literal  "-"
    add $I11, rx1418_pos, 1
    gt $I11, rx1418_eos, rx1418_fail
    sub $I11, rx1418_pos, rx1418_off
    ord $I11, rx1418_tgt, $I11
    ne $I11, 45, rx1418_fail
    add rx1418_pos, 1
  alt1420_end:
  # rx pass
    rx1418_cur."!cursor_pass"(rx1418_pos, "")
    if_null rx1418_debug, debug_557
    rx1418_cur."!cursor_debug"("PASS", "", " at pos=", rx1418_pos)
  debug_557:
    .return (rx1418_cur)
  rx1418_restart:
    if_null rx1418_debug, debug_558
    rx1418_cur."!cursor_debug"("NEXT", "")
  debug_558:
  rx1418_fail:
    (rx1418_rep, rx1418_pos, $I10, $P10) = rx1418_cur."!mark_fail"(0)
    lt rx1418_pos, -1, rx1418_done
    eq rx1418_pos, -1, rx1418_fail
    jump $I10
  rx1418_done:
    rx1418_cur."!cursor_fail"()
    if_null rx1418_debug, debug_559
    rx1418_cur."!cursor_debug"("FAIL", "")
  debug_559:
    .return (rx1418_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("158_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("159_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1434 = "160_1315150101.74" 
    capture_lex $P1434
    .local string rx1425_tgt
    .local int rx1425_pos
    .local int rx1425_off
    .local int rx1425_eos
    .local int rx1425_rep
    .local pmc rx1425_cur
    .local pmc rx1425_debug
    (rx1425_cur, rx1425_pos, rx1425_tgt, $I10) = self."!cursor_start"()
    rx1425_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx1425_cur
    .local pmc match
    .lex "$/", match
    length rx1425_eos, rx1425_tgt
    gt rx1425_pos, rx1425_eos, rx1425_done
    set rx1425_off, 0
    lt rx1425_pos, 2, rx1425_start
    sub rx1425_off, rx1425_pos, 1
    substr rx1425_tgt, rx1425_tgt, rx1425_off
  rx1425_start:
    eq $I10, 1, rx1425_restart
    if_null rx1425_debug, debug_563
    rx1425_cur."!cursor_debug"("START", "cclass_elem")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1426_done
    goto rxscan1426_scan
  rxscan1426_loop:
    (rx1425_pos) = rx1425_cur."from"()
    inc rx1425_pos
    rx1425_cur."!cursor_from"(rx1425_pos)
    ge rx1425_pos, rx1425_eos, rxscan1426_done
  rxscan1426_scan:
    set_addr $I10, rxscan1426_loop
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  rxscan1426_done:
.annotate 'line', 186
  # rx subcapture "sign"
    set_addr $I10, rxcap_1428_fail
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  alt1427_0:
    set_addr $I10, alt1427_1
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  # rx literal  "+"
    add $I11, rx1425_pos, 1
    gt $I11, rx1425_eos, rx1425_fail
    sub $I11, rx1425_pos, rx1425_off
    ord $I11, rx1425_tgt, $I11
    ne $I11, 43, rx1425_fail
    add rx1425_pos, 1
    goto alt1427_end
  alt1427_1:
    set_addr $I10, alt1427_2
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  # rx literal  "-"
    add $I11, rx1425_pos, 1
    gt $I11, rx1425_eos, rx1425_fail
    sub $I11, rx1425_pos, rx1425_off
    ord $I11, rx1425_tgt, $I11
    ne $I11, 45, rx1425_fail
    add rx1425_pos, 1
    goto alt1427_end
  alt1427_2:
  alt1427_end:
    set_addr $I10, rxcap_1428_fail
    ($I12, $I11) = rx1425_cur."!mark_peek"($I10)
    rx1425_cur."!cursor_pos"($I11)
    ($P10) = rx1425_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1425_pos, "")
    rx1425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_1428_done
  rxcap_1428_fail:
    goto rx1425_fail
  rxcap_1428_done:
.annotate 'line', 187
  # rx rxquantr1429 ** 0..1
    set_addr $I10, rxquantr1429_done
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  rxquantr1429_loop:
  # rx subrule "normspace" subtype=method negate=
    rx1425_cur."!cursor_pos"(rx1425_pos)
    $P10 = rx1425_cur."normspace"()
    unless $P10, rx1425_fail
    goto rxsubrule1430_pass
  rxsubrule1430_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1425_fail
  rxsubrule1430_pass:
    set_addr $I10, rxsubrule1430_back
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10, $P10)
    rx1425_pos = $P10."pos"()
    set_addr $I10, rxquantr1429_done
    (rx1425_rep) = rx1425_cur."!mark_commit"($I10)
  rxquantr1429_done:
  alt1431_0:
.annotate 'line', 188
    set_addr $I10, alt1431_1
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
.annotate 'line', 189
  # rx literal  "["
    add $I11, rx1425_pos, 1
    gt $I11, rx1425_eos, rx1425_fail
    sub $I11, rx1425_pos, rx1425_off
    ord $I11, rx1425_tgt, $I11
    ne $I11, 91, rx1425_fail
    add rx1425_pos, 1
.annotate 'line', 192
  # rx rxquantr1432 ** 0..*
    set_addr $I10, rxquantr1432_done
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  rxquantr1432_loop:
.annotate 'line', 189
  # rx subrule $P1434 subtype=capture negate=
    rx1425_cur."!cursor_pos"(rx1425_pos)
    .const 'Sub' $P1434 = "160_1315150101.74" 
    capture_lex $P1434
    $P10 = rx1425_cur.$P1434()
    unless $P10, rx1425_fail
    goto rxsubrule1452_pass
  rxsubrule1452_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1425_fail
  rxsubrule1452_pass:
    set_addr $I10, rxsubrule1452_back
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx1425_pos = $P10."pos"()
.annotate 'line', 192
    set_addr $I10, rxquantr1432_done
    (rx1425_rep) = rx1425_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1432_done
    rx1425_cur."!mark_push"(rx1425_rep, rx1425_pos, $I10)
    goto rxquantr1432_loop
  rxquantr1432_done:
.annotate 'line', 193
  # rx charclass_q s r 0..-1
    sub $I10, rx1425_pos, rx1425_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1425_tgt, $I10, rx1425_eos
    add rx1425_pos, rx1425_off, $I11
  # rx literal  "]"
    add $I11, rx1425_pos, 1
    gt $I11, rx1425_eos, rx1425_fail
    sub $I11, rx1425_pos, rx1425_off
    ord $I11, rx1425_tgt, $I11
    ne $I11, 93, rx1425_fail
    add rx1425_pos, 1
.annotate 'line', 189
    goto alt1431_end
  alt1431_1:
.annotate 'line', 194
  # rx subcapture "name"
    set_addr $I10, rxcap_1453_fail
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx1425_pos, rx1425_off
    find_not_cclass $I11, .CCLASS_WORD, rx1425_tgt, $I10, rx1425_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1425_fail
    add rx1425_pos, rx1425_off, $I11
    set_addr $I10, rxcap_1453_fail
    ($I12, $I11) = rx1425_cur."!mark_peek"($I10)
    rx1425_cur."!cursor_pos"($I11)
    ($P10) = rx1425_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1425_pos, "")
    rx1425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_1453_done
  rxcap_1453_fail:
    goto rx1425_fail
  rxcap_1453_done:
  alt1431_end:
.annotate 'line', 196
  # rx rxquantr1454 ** 0..1
    set_addr $I10, rxquantr1454_done
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10)
  rxquantr1454_loop:
  # rx subrule "normspace" subtype=method negate=
    rx1425_cur."!cursor_pos"(rx1425_pos)
    $P10 = rx1425_cur."normspace"()
    unless $P10, rx1425_fail
    goto rxsubrule1455_pass
  rxsubrule1455_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1425_fail
  rxsubrule1455_pass:
    set_addr $I10, rxsubrule1455_back
    rx1425_cur."!mark_push"(0, rx1425_pos, $I10, $P10)
    rx1425_pos = $P10."pos"()
    set_addr $I10, rxquantr1454_done
    (rx1425_rep) = rx1425_cur."!mark_commit"($I10)
  rxquantr1454_done:
.annotate 'line', 185
  # rx pass
    rx1425_cur."!cursor_pass"(rx1425_pos, "cclass_elem")
    if_null rx1425_debug, debug_580
    rx1425_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx1425_pos)
  debug_580:
    .return (rx1425_cur)
  rx1425_restart:
.annotate 'line', 7
    if_null rx1425_debug, debug_581
    rx1425_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_581:
  rx1425_fail:
    (rx1425_rep, rx1425_pos, $I10, $P10) = rx1425_cur."!mark_fail"(0)
    lt rx1425_pos, -1, rx1425_done
    eq rx1425_pos, -1, rx1425_fail
    jump $I10
  rx1425_done:
    rx1425_cur."!cursor_fail"()
    if_null rx1425_debug, debug_582
    rx1425_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_582:
    .return (rx1425_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1433"  :anon :subid("160_1315150101.74") :method :outer("159_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 189
    .const 'Sub' $P1449 = "163_1315150101.74" 
    capture_lex $P1449
    .const 'Sub' $P1444 = "162_1315150101.74" 
    capture_lex $P1444
    .const 'Sub' $P1440 = "161_1315150101.74" 
    capture_lex $P1440
    .local string rx1435_tgt
    .local int rx1435_pos
    .local int rx1435_off
    .local int rx1435_eos
    .local int rx1435_rep
    .local pmc rx1435_cur
    .local pmc rx1435_debug
    (rx1435_cur, rx1435_pos, rx1435_tgt, $I10) = self."!cursor_start"()
    rx1435_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx1435_cur
    .local pmc match
    .lex "$/", match
    length rx1435_eos, rx1435_tgt
    gt rx1435_pos, rx1435_eos, rx1435_done
    set rx1435_off, 0
    lt rx1435_pos, 2, rx1435_start
    sub rx1435_off, rx1435_pos, 1
    substr rx1435_tgt, rx1435_tgt, rx1435_off
  rx1435_start:
    eq $I10, 1, rx1435_restart
    if_null rx1435_debug, debug_564
    rx1435_cur."!cursor_debug"("START", "")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1436_done
    goto rxscan1436_scan
  rxscan1436_loop:
    (rx1435_pos) = rx1435_cur."from"()
    inc rx1435_pos
    rx1435_cur."!cursor_from"(rx1435_pos)
    ge rx1435_pos, rx1435_eos, rxscan1436_done
  rxscan1436_scan:
    set_addr $I10, rxscan1436_loop
    rx1435_cur."!mark_push"(0, rx1435_pos, $I10)
  rxscan1436_done:
  alt1437_0:
    set_addr $I10, alt1437_1
    rx1435_cur."!mark_push"(0, rx1435_pos, $I10)
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx1435_pos, rx1435_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1435_tgt, $I10, rx1435_eos
    add rx1435_pos, rx1435_off, $I11
  # rx literal  "-"
    add $I11, rx1435_pos, 1
    gt $I11, rx1435_eos, rx1435_fail
    sub $I11, rx1435_pos, rx1435_off
    ord $I11, rx1435_tgt, $I11
    ne $I11, 45, rx1435_fail
    add rx1435_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx1435_cur."!cursor_pos"(rx1435_pos)
    $P10 = rx1435_cur."obs"("- as character range", "..")
    unless $P10, rx1435_fail
    rx1435_pos = $P10."pos"()
    goto alt1437_end
  alt1437_1:
.annotate 'line', 191
  # rx charclass_q s r 0..-1
    sub $I10, rx1435_pos, rx1435_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1435_tgt, $I10, rx1435_eos
    add rx1435_pos, rx1435_off, $I11
  alt1438_0:
    set_addr $I10, alt1438_1
    rx1435_cur."!mark_push"(0, rx1435_pos, $I10)
  # rx literal  "\\"
    add $I11, rx1435_pos, 1
    gt $I11, rx1435_eos, rx1435_fail
    sub $I11, rx1435_pos, rx1435_off
    ord $I11, rx1435_tgt, $I11
    ne $I11, 92, rx1435_fail
    add rx1435_pos, 1
  # rx subrule $P1440 subtype=capture negate=
    rx1435_cur."!cursor_pos"(rx1435_pos)
    .const 'Sub' $P1440 = "161_1315150101.74" 
    capture_lex $P1440
    $P10 = rx1435_cur.$P1440()
    unless $P10, rx1435_fail
    rx1435_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx1435_pos = $P10."pos"()
    goto alt1438_end
  alt1438_1:
  # rx subrule $P1444 subtype=capture negate=
    rx1435_cur."!cursor_pos"(rx1435_pos)
    .const 'Sub' $P1444 = "162_1315150101.74" 
    capture_lex $P1444
    $P10 = rx1435_cur.$P1444()
    unless $P10, rx1435_fail
    rx1435_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx1435_pos = $P10."pos"()
  alt1438_end:
  # rx rxquantr1447 ** 0..1
    set_addr $I10, rxquantr1447_done
    rx1435_cur."!mark_push"(0, rx1435_pos, $I10)
  rxquantr1447_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx1435_pos, rx1435_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1435_tgt, $I10, rx1435_eos
    add rx1435_pos, rx1435_off, $I11
  # rx literal  ".."
    add $I11, rx1435_pos, 2
    gt $I11, rx1435_eos, rx1435_fail
    sub $I11, rx1435_pos, rx1435_off
    substr $S10, rx1435_tgt, $I11, 2
    ne $S10, "..", rx1435_fail
    add rx1435_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx1435_pos, rx1435_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1435_tgt, $I10, rx1435_eos
    add rx1435_pos, rx1435_off, $I11
  # rx subrule $P1449 subtype=capture negate=
    rx1435_cur."!cursor_pos"(rx1435_pos)
    .const 'Sub' $P1449 = "163_1315150101.74" 
    capture_lex $P1449
    $P10 = rx1435_cur.$P1449()
    unless $P10, rx1435_fail
    rx1435_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx1435_pos = $P10."pos"()
    set_addr $I10, rxquantr1447_done
    (rx1435_rep) = rx1435_cur."!mark_commit"($I10)
  rxquantr1447_done:
  alt1437_end:
.annotate 'line', 189
  # rx pass
    rx1435_cur."!cursor_pass"(rx1435_pos, "")
    if_null rx1435_debug, debug_577
    rx1435_cur."!cursor_debug"("PASS", "", " at pos=", rx1435_pos)
  debug_577:
    .return (rx1435_cur)
  rx1435_restart:
    if_null rx1435_debug, debug_578
    rx1435_cur."!cursor_debug"("NEXT", "")
  debug_578:
  rx1435_fail:
    (rx1435_rep, rx1435_pos, $I10, $P10) = rx1435_cur."!mark_fail"(0)
    lt rx1435_pos, -1, rx1435_done
    eq rx1435_pos, -1, rx1435_fail
    jump $I10
  rx1435_done:
    rx1435_cur."!cursor_fail"()
    if_null rx1435_debug, debug_579
    rx1435_cur."!cursor_debug"("FAIL", "")
  debug_579:
    .return (rx1435_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1439"  :anon :subid("161_1315150101.74") :method :outer("160_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 191
    .local string rx1441_tgt
    .local int rx1441_pos
    .local int rx1441_off
    .local int rx1441_eos
    .local int rx1441_rep
    .local pmc rx1441_cur
    .local pmc rx1441_debug
    (rx1441_cur, rx1441_pos, rx1441_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1441_cur
    .local pmc match
    .lex "$/", match
    length rx1441_eos, rx1441_tgt
    gt rx1441_pos, rx1441_eos, rx1441_done
    set rx1441_off, 0
    lt rx1441_pos, 2, rx1441_start
    sub rx1441_off, rx1441_pos, 1
    substr rx1441_tgt, rx1441_tgt, rx1441_off
  rx1441_start:
    eq $I10, 1, rx1441_restart
    if_null rx1441_debug, debug_565
    rx1441_cur."!cursor_debug"("START", "")
  debug_565:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1442_done
    goto rxscan1442_scan
  rxscan1442_loop:
    (rx1441_pos) = rx1441_cur."from"()
    inc rx1441_pos
    rx1441_cur."!cursor_from"(rx1441_pos)
    ge rx1441_pos, rx1441_eos, rxscan1442_done
  rxscan1442_scan:
    set_addr $I10, rxscan1442_loop
    rx1441_cur."!mark_push"(0, rx1441_pos, $I10)
  rxscan1442_done:
  # rx charclass .
    ge rx1441_pos, rx1441_eos, rx1441_fail
    inc rx1441_pos
  # rx pass
    rx1441_cur."!cursor_pass"(rx1441_pos, "")
    if_null rx1441_debug, debug_566
    rx1441_cur."!cursor_debug"("PASS", "", " at pos=", rx1441_pos)
  debug_566:
    .return (rx1441_cur)
  rx1441_restart:
    if_null rx1441_debug, debug_567
    rx1441_cur."!cursor_debug"("NEXT", "")
  debug_567:
  rx1441_fail:
    (rx1441_rep, rx1441_pos, $I10, $P10) = rx1441_cur."!mark_fail"(0)
    lt rx1441_pos, -1, rx1441_done
    eq rx1441_pos, -1, rx1441_fail
    jump $I10
  rx1441_done:
    rx1441_cur."!cursor_fail"()
    if_null rx1441_debug, debug_568
    rx1441_cur."!cursor_debug"("FAIL", "")
  debug_568:
    .return (rx1441_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1443"  :anon :subid("162_1315150101.74") :method :outer("160_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 191
    .local string rx1445_tgt
    .local int rx1445_pos
    .local int rx1445_off
    .local int rx1445_eos
    .local int rx1445_rep
    .local pmc rx1445_cur
    .local pmc rx1445_debug
    (rx1445_cur, rx1445_pos, rx1445_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1445_cur
    .local pmc match
    .lex "$/", match
    length rx1445_eos, rx1445_tgt
    gt rx1445_pos, rx1445_eos, rx1445_done
    set rx1445_off, 0
    lt rx1445_pos, 2, rx1445_start
    sub rx1445_off, rx1445_pos, 1
    substr rx1445_tgt, rx1445_tgt, rx1445_off
  rx1445_start:
    eq $I10, 1, rx1445_restart
    if_null rx1445_debug, debug_569
    rx1445_cur."!cursor_debug"("START", "")
  debug_569:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1446_done
    goto rxscan1446_scan
  rxscan1446_loop:
    (rx1445_pos) = rx1445_cur."from"()
    inc rx1445_pos
    rx1445_cur."!cursor_from"(rx1445_pos)
    ge rx1445_pos, rx1445_eos, rxscan1446_done
  rxscan1446_scan:
    set_addr $I10, rxscan1446_loop
    rx1445_cur."!mark_push"(0, rx1445_pos, $I10)
  rxscan1446_done:
  # rx enumcharlist negate=1 
    ge rx1445_pos, rx1445_eos, rx1445_fail
    sub $I10, rx1445_pos, rx1445_off
    substr $S10, rx1445_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx1445_fail
    inc rx1445_pos
  # rx pass
    rx1445_cur."!cursor_pass"(rx1445_pos, "")
    if_null rx1445_debug, debug_570
    rx1445_cur."!cursor_debug"("PASS", "", " at pos=", rx1445_pos)
  debug_570:
    .return (rx1445_cur)
  rx1445_restart:
    if_null rx1445_debug, debug_571
    rx1445_cur."!cursor_debug"("NEXT", "")
  debug_571:
  rx1445_fail:
    (rx1445_rep, rx1445_pos, $I10, $P10) = rx1445_cur."!mark_fail"(0)
    lt rx1445_pos, -1, rx1445_done
    eq rx1445_pos, -1, rx1445_fail
    jump $I10
  rx1445_done:
    rx1445_cur."!cursor_fail"()
    if_null rx1445_debug, debug_572
    rx1445_cur."!cursor_debug"("FAIL", "")
  debug_572:
    .return (rx1445_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1448"  :anon :subid("163_1315150101.74") :method :outer("160_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 191
    .local string rx1450_tgt
    .local int rx1450_pos
    .local int rx1450_off
    .local int rx1450_eos
    .local int rx1450_rep
    .local pmc rx1450_cur
    .local pmc rx1450_debug
    (rx1450_cur, rx1450_pos, rx1450_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1450_cur
    .local pmc match
    .lex "$/", match
    length rx1450_eos, rx1450_tgt
    gt rx1450_pos, rx1450_eos, rx1450_done
    set rx1450_off, 0
    lt rx1450_pos, 2, rx1450_start
    sub rx1450_off, rx1450_pos, 1
    substr rx1450_tgt, rx1450_tgt, rx1450_off
  rx1450_start:
    eq $I10, 1, rx1450_restart
    if_null rx1450_debug, debug_573
    rx1450_cur."!cursor_debug"("START", "")
  debug_573:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1451_done
    goto rxscan1451_scan
  rxscan1451_loop:
    (rx1450_pos) = rx1450_cur."from"()
    inc rx1450_pos
    rx1450_cur."!cursor_from"(rx1450_pos)
    ge rx1450_pos, rx1450_eos, rxscan1451_done
  rxscan1451_scan:
    set_addr $I10, rxscan1451_loop
    rx1450_cur."!mark_push"(0, rx1450_pos, $I10)
  rxscan1451_done:
  # rx charclass .
    ge rx1450_pos, rx1450_eos, rx1450_fail
    inc rx1450_pos
  # rx pass
    rx1450_cur."!cursor_pass"(rx1450_pos, "")
    if_null rx1450_debug, debug_574
    rx1450_cur."!cursor_debug"("PASS", "", " at pos=", rx1450_pos)
  debug_574:
    .return (rx1450_cur)
  rx1450_restart:
    if_null rx1450_debug, debug_575
    rx1450_cur."!cursor_debug"("NEXT", "")
  debug_575:
  rx1450_fail:
    (rx1450_rep, rx1450_pos, $I10, $P10) = rx1450_cur."!mark_fail"(0)
    lt rx1450_pos, -1, rx1450_done
    eq rx1450_pos, -1, rx1450_fail
    jump $I10
  rx1450_done:
    rx1450_cur."!cursor_fail"()
    if_null rx1450_debug, debug_576
    rx1450_cur."!cursor_debug"("FAIL", "")
  debug_576:
    .return (rx1450_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("164_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, ""
    push $P101, "-"
    push $P101, "+"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("165_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .const 'Sub' $P1463 = "166_1315150101.74" 
    capture_lex $P1463
    .local string rx1458_tgt
    .local int rx1458_pos
    .local int rx1458_off
    .local int rx1458_eos
    .local int rx1458_rep
    .local pmc rx1458_cur
    .local pmc rx1458_debug
    (rx1458_cur, rx1458_pos, rx1458_tgt, $I10) = self."!cursor_start"()
    rx1458_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx1458_cur
    .local pmc match
    .lex "$/", match
    length rx1458_eos, rx1458_tgt
    gt rx1458_pos, rx1458_eos, rx1458_done
    set rx1458_off, 0
    lt rx1458_pos, 2, rx1458_start
    sub rx1458_off, rx1458_pos, 1
    substr rx1458_tgt, rx1458_tgt, rx1458_off
  rx1458_start:
    eq $I10, 1, rx1458_restart
    if_null rx1458_debug, debug_583
    rx1458_cur."!cursor_debug"("START", "mod_internal")
  debug_583:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1459_done
    goto rxscan1459_scan
  rxscan1459_loop:
    (rx1458_pos) = rx1458_cur."from"()
    inc rx1458_pos
    rx1458_cur."!cursor_from"(rx1458_pos)
    ge rx1458_pos, rx1458_eos, rxscan1459_done
  rxscan1459_scan:
    set_addr $I10, rxscan1459_loop
    rx1458_cur."!mark_push"(0, rx1458_pos, $I10)
  rxscan1459_done:
  alt1460_0:
.annotate 'line', 200
    set_addr $I10, alt1460_1
    rx1458_cur."!mark_push"(0, rx1458_pos, $I10)
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx1458_pos, 1
    gt $I11, rx1458_eos, rx1458_fail
    sub $I11, rx1458_pos, rx1458_off
    ord $I11, rx1458_tgt, $I11
    ne $I11, 58, rx1458_fail
    add rx1458_pos, 1
  # rx rxquantr1461 ** 1..1
    set_addr $I10, rxquantr1461_done
    rx1458_cur."!mark_push"(0, -1, $I10)
  rxquantr1461_loop:
  # rx subrule $P1463 subtype=capture negate=
    rx1458_cur."!cursor_pos"(rx1458_pos)
    .const 'Sub' $P1463 = "166_1315150101.74" 
    capture_lex $P1463
    $P10 = rx1458_cur.$P1463()
    unless $P10, rx1458_fail
    goto rxsubrule1467_pass
  rxsubrule1467_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1458_fail
  rxsubrule1467_pass:
    set_addr $I10, rxsubrule1467_back
    rx1458_cur."!mark_push"(0, rx1458_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx1458_pos = $P10."pos"()
    set_addr $I10, rxquantr1461_done
    (rx1458_rep) = rx1458_cur."!mark_commit"($I10)
  rxquantr1461_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx1458_cur."!cursor_pos"(rx1458_pos)
    $P10 = rx1458_cur."mod_ident"()
    unless $P10, rx1458_fail
    rx1458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx1458_pos = $P10."pos"()
  # rxanchor rwb
    le rx1458_pos, 0, rx1458_fail
    sub $I10, rx1458_pos, rx1458_off
    is_cclass $I11, .CCLASS_WORD, rx1458_tgt, $I10
    if $I11, rx1458_fail
    dec $I10
    is_cclass $I11, .CCLASS_WORD, rx1458_tgt, $I10
    unless $I11, rx1458_fail
    goto alt1460_end
  alt1460_1:
.annotate 'line', 202
  # rx literal  ":"
    add $I11, rx1458_pos, 1
    gt $I11, rx1458_eos, rx1458_fail
    sub $I11, rx1458_pos, rx1458_off
    ord $I11, rx1458_tgt, $I11
    ne $I11, 58, rx1458_fail
    add rx1458_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx1458_cur."!cursor_pos"(rx1458_pos)
    $P10 = rx1458_cur."mod_ident"()
    unless $P10, rx1458_fail
    rx1458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx1458_pos = $P10."pos"()
  # rx rxquantr1468 ** 0..1
    set_addr $I10, rxquantr1468_done
    rx1458_cur."!mark_push"(0, rx1458_pos, $I10)
  rxquantr1468_loop:
  # rx literal  "("
    add $I11, rx1458_pos, 1
    gt $I11, rx1458_eos, rx1458_fail
    sub $I11, rx1458_pos, rx1458_off
    ord $I11, rx1458_tgt, $I11
    ne $I11, 40, rx1458_fail
    add rx1458_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_1469_fail
    rx1458_cur."!mark_push"(0, rx1458_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1458_pos, rx1458_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1458_tgt, $I10, rx1458_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1458_fail
    add rx1458_pos, rx1458_off, $I11
    set_addr $I10, rxcap_1469_fail
    ($I12, $I11) = rx1458_cur."!mark_peek"($I10)
    rx1458_cur."!cursor_pos"($I11)
    ($P10) = rx1458_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1458_pos, "")
    rx1458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_1469_done
  rxcap_1469_fail:
    goto rx1458_fail
  rxcap_1469_done:
  # rx literal  ")"
    add $I11, rx1458_pos, 1
    gt $I11, rx1458_eos, rx1458_fail
    sub $I11, rx1458_pos, rx1458_off
    ord $I11, rx1458_tgt, $I11
    ne $I11, 41, rx1458_fail
    add rx1458_pos, 1
    set_addr $I10, rxquantr1468_done
    (rx1458_rep) = rx1458_cur."!mark_commit"($I10)
  rxquantr1468_done:
  alt1460_end:
.annotate 'line', 199
  # rx pass
    rx1458_cur."!cursor_pass"(rx1458_pos, "mod_internal")
    if_null rx1458_debug, debug_588
    rx1458_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx1458_pos)
  debug_588:
    .return (rx1458_cur)
  rx1458_restart:
.annotate 'line', 7
    if_null rx1458_debug, debug_589
    rx1458_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_589:
  rx1458_fail:
    (rx1458_rep, rx1458_pos, $I10, $P10) = rx1458_cur."!mark_fail"(0)
    lt rx1458_pos, -1, rx1458_done
    eq rx1458_pos, -1, rx1458_fail
    jump $I10
  rx1458_done:
    rx1458_cur."!cursor_fail"()
    if_null rx1458_debug, debug_590
    rx1458_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_590:
    .return (rx1458_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block1462"  :anon :subid("166_1315150101.74") :method :outer("165_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 201
    .local string rx1464_tgt
    .local int rx1464_pos
    .local int rx1464_off
    .local int rx1464_eos
    .local int rx1464_rep
    .local pmc rx1464_cur
    .local pmc rx1464_debug
    (rx1464_cur, rx1464_pos, rx1464_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1464_cur
    .local pmc match
    .lex "$/", match
    length rx1464_eos, rx1464_tgt
    gt rx1464_pos, rx1464_eos, rx1464_done
    set rx1464_off, 0
    lt rx1464_pos, 2, rx1464_start
    sub rx1464_off, rx1464_pos, 1
    substr rx1464_tgt, rx1464_tgt, rx1464_off
  rx1464_start:
    eq $I10, 1, rx1464_restart
    if_null rx1464_debug, debug_584
    rx1464_cur."!cursor_debug"("START", "")
  debug_584:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1465_done
    goto rxscan1465_scan
  rxscan1465_loop:
    (rx1464_pos) = rx1464_cur."from"()
    inc rx1464_pos
    rx1464_cur."!cursor_from"(rx1464_pos)
    ge rx1464_pos, rx1464_eos, rxscan1465_done
  rxscan1465_scan:
    set_addr $I10, rxscan1465_loop
    rx1464_cur."!mark_push"(0, rx1464_pos, $I10)
  rxscan1465_done:
  alt1466_0:
    set_addr $I10, alt1466_1
    rx1464_cur."!mark_push"(0, rx1464_pos, $I10)
  # rx literal  "!"
    add $I11, rx1464_pos, 1
    gt $I11, rx1464_eos, rx1464_fail
    sub $I11, rx1464_pos, rx1464_off
    ord $I11, rx1464_tgt, $I11
    ne $I11, 33, rx1464_fail
    add rx1464_pos, 1
    goto alt1466_end
  alt1466_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx1464_pos, rx1464_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1464_tgt, $I10, rx1464_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1464_fail
    add rx1464_pos, rx1464_off, $I11
  alt1466_end:
  # rx pass
    rx1464_cur."!cursor_pass"(rx1464_pos, "")
    if_null rx1464_debug, debug_585
    rx1464_cur."!cursor_debug"("PASS", "", " at pos=", rx1464_pos)
  debug_585:
    .return (rx1464_cur)
  rx1464_restart:
    if_null rx1464_debug, debug_586
    rx1464_cur."!cursor_debug"("NEXT", "")
  debug_586:
  rx1464_fail:
    (rx1464_rep, rx1464_pos, $I10, $P10) = rx1464_cur."!mark_fail"(0)
    lt rx1464_pos, -1, rx1464_done
    eq rx1464_pos, -1, rx1464_fail
    jump $I10
  rx1464_done:
    rx1464_cur."!cursor_fail"()
    if_null rx1464_debug, debug_587
    rx1464_cur."!cursor_debug"("FAIL", "")
  debug_587:
    .return (rx1464_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("167_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    $P101 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, ":"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("168_1315150101.74")
    .param pmc param_1472
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 206
    .lex "self", param_1472
    $P101 = param_1472."!protoregex"("mod_ident")
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("169_1315150101.74")
    .param pmc param_1474
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 206
    .lex "self", param_1474
    $P103 = param_1474."!PREFIX__!protoregex"("mod_ident")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("170_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1476_tgt
    .local int rx1476_pos
    .local int rx1476_off
    .local int rx1476_eos
    .local int rx1476_rep
    .local pmc rx1476_cur
    .local pmc rx1476_debug
    (rx1476_cur, rx1476_pos, rx1476_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1476_cur
    .local pmc match
    .lex "$/", match
    length rx1476_eos, rx1476_tgt
    gt rx1476_pos, rx1476_eos, rx1476_done
    set rx1476_off, 0
    lt rx1476_pos, 2, rx1476_start
    sub rx1476_off, rx1476_pos, 1
    substr rx1476_tgt, rx1476_tgt, rx1476_off
  rx1476_start:
    eq $I10, 1, rx1476_restart
    if_null rx1476_debug, debug_591
    rx1476_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_591:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1477_done
    goto rxscan1477_scan
  rxscan1477_loop:
    (rx1476_pos) = rx1476_cur."from"()
    inc rx1476_pos
    rx1476_cur."!cursor_from"(rx1476_pos)
    ge rx1476_pos, rx1476_eos, rxscan1477_done
  rxscan1477_scan:
    set_addr $I10, rxscan1477_loop
    rx1476_cur."!mark_push"(0, rx1476_pos, $I10)
  rxscan1477_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_1478_fail
    rx1476_cur."!mark_push"(0, rx1476_pos, $I10)
  # rx literal  "i"
    add $I11, rx1476_pos, 1
    gt $I11, rx1476_eos, rx1476_fail
    sub $I11, rx1476_pos, rx1476_off
    ord $I11, rx1476_tgt, $I11
    ne $I11, 105, rx1476_fail
    add rx1476_pos, 1
    set_addr $I10, rxcap_1478_fail
    ($I12, $I11) = rx1476_cur."!mark_peek"($I10)
    rx1476_cur."!cursor_pos"($I11)
    ($P10) = rx1476_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1476_pos, "")
    rx1476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1478_done
  rxcap_1478_fail:
    goto rx1476_fail
  rxcap_1478_done:
  # rx rxquantr1479 ** 0..1
    set_addr $I10, rxquantr1479_done
    rx1476_cur."!mark_push"(0, rx1476_pos, $I10)
  rxquantr1479_loop:
  # rx literal  "gnorecase"
    add $I11, rx1476_pos, 9
    gt $I11, rx1476_eos, rx1476_fail
    sub $I11, rx1476_pos, rx1476_off
    substr $S10, rx1476_tgt, $I11, 9
    ne $S10, "gnorecase", rx1476_fail
    add rx1476_pos, 9
    set_addr $I10, rxquantr1479_done
    (rx1476_rep) = rx1476_cur."!mark_commit"($I10)
  rxquantr1479_done:
  # rx pass
    rx1476_cur."!cursor_pass"(rx1476_pos, "mod_ident:sym<ignorecase>")
    if_null rx1476_debug, debug_592
    rx1476_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx1476_pos)
  debug_592:
    .return (rx1476_cur)
  rx1476_restart:
.annotate 'line', 7
    if_null rx1476_debug, debug_593
    rx1476_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_593:
  rx1476_fail:
    (rx1476_rep, rx1476_pos, $I10, $P10) = rx1476_cur."!mark_fail"(0)
    lt rx1476_pos, -1, rx1476_done
    eq rx1476_pos, -1, rx1476_fail
    jump $I10
  rx1476_done:
    rx1476_cur."!cursor_fail"()
    if_null rx1476_debug, debug_594
    rx1476_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_594:
    .return (rx1476_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("171_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "i"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("172_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1482_tgt
    .local int rx1482_pos
    .local int rx1482_off
    .local int rx1482_eos
    .local int rx1482_rep
    .local pmc rx1482_cur
    .local pmc rx1482_debug
    (rx1482_cur, rx1482_pos, rx1482_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1482_cur
    .local pmc match
    .lex "$/", match
    length rx1482_eos, rx1482_tgt
    gt rx1482_pos, rx1482_eos, rx1482_done
    set rx1482_off, 0
    lt rx1482_pos, 2, rx1482_start
    sub rx1482_off, rx1482_pos, 1
    substr rx1482_tgt, rx1482_tgt, rx1482_off
  rx1482_start:
    eq $I10, 1, rx1482_restart
    if_null rx1482_debug, debug_595
    rx1482_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_595:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1483_done
    goto rxscan1483_scan
  rxscan1483_loop:
    (rx1482_pos) = rx1482_cur."from"()
    inc rx1482_pos
    rx1482_cur."!cursor_from"(rx1482_pos)
    ge rx1482_pos, rx1482_eos, rxscan1483_done
  rxscan1483_scan:
    set_addr $I10, rxscan1483_loop
    rx1482_cur."!mark_push"(0, rx1482_pos, $I10)
  rxscan1483_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_1484_fail
    rx1482_cur."!mark_push"(0, rx1482_pos, $I10)
  # rx literal  "r"
    add $I11, rx1482_pos, 1
    gt $I11, rx1482_eos, rx1482_fail
    sub $I11, rx1482_pos, rx1482_off
    ord $I11, rx1482_tgt, $I11
    ne $I11, 114, rx1482_fail
    add rx1482_pos, 1
    set_addr $I10, rxcap_1484_fail
    ($I12, $I11) = rx1482_cur."!mark_peek"($I10)
    rx1482_cur."!cursor_pos"($I11)
    ($P10) = rx1482_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1482_pos, "")
    rx1482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1484_done
  rxcap_1484_fail:
    goto rx1482_fail
  rxcap_1484_done:
  # rx rxquantr1485 ** 0..1
    set_addr $I10, rxquantr1485_done
    rx1482_cur."!mark_push"(0, rx1482_pos, $I10)
  rxquantr1485_loop:
  # rx literal  "atchet"
    add $I11, rx1482_pos, 6
    gt $I11, rx1482_eos, rx1482_fail
    sub $I11, rx1482_pos, rx1482_off
    substr $S10, rx1482_tgt, $I11, 6
    ne $S10, "atchet", rx1482_fail
    add rx1482_pos, 6
    set_addr $I10, rxquantr1485_done
    (rx1482_rep) = rx1482_cur."!mark_commit"($I10)
  rxquantr1485_done:
  # rx pass
    rx1482_cur."!cursor_pass"(rx1482_pos, "mod_ident:sym<ratchet>")
    if_null rx1482_debug, debug_596
    rx1482_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx1482_pos)
  debug_596:
    .return (rx1482_cur)
  rx1482_restart:
.annotate 'line', 7
    if_null rx1482_debug, debug_597
    rx1482_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_597:
  rx1482_fail:
    (rx1482_rep, rx1482_pos, $I10, $P10) = rx1482_cur."!mark_fail"(0)
    lt rx1482_pos, -1, rx1482_done
    eq rx1482_pos, -1, rx1482_fail
    jump $I10
  rx1482_done:
    rx1482_cur."!cursor_fail"()
    if_null rx1482_debug, debug_598
    rx1482_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_598:
    .return (rx1482_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("173_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "r"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("174_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    .local string rx1488_tgt
    .local int rx1488_pos
    .local int rx1488_off
    .local int rx1488_eos
    .local int rx1488_rep
    .local pmc rx1488_cur
    .local pmc rx1488_debug
    (rx1488_cur, rx1488_pos, rx1488_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1488_cur
    .local pmc match
    .lex "$/", match
    length rx1488_eos, rx1488_tgt
    gt rx1488_pos, rx1488_eos, rx1488_done
    set rx1488_off, 0
    lt rx1488_pos, 2, rx1488_start
    sub rx1488_off, rx1488_pos, 1
    substr rx1488_tgt, rx1488_tgt, rx1488_off
  rx1488_start:
    eq $I10, 1, rx1488_restart
    if_null rx1488_debug, debug_599
    rx1488_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_599:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1489_done
    goto rxscan1489_scan
  rxscan1489_loop:
    (rx1488_pos) = rx1488_cur."from"()
    inc rx1488_pos
    rx1488_cur."!cursor_from"(rx1488_pos)
    ge rx1488_pos, rx1488_eos, rxscan1489_done
  rxscan1489_scan:
    set_addr $I10, rxscan1489_loop
    rx1488_cur."!mark_push"(0, rx1488_pos, $I10)
  rxscan1489_done:
.annotate 'line', 209
  # rx subcapture "sym"
    set_addr $I10, rxcap_1490_fail
    rx1488_cur."!mark_push"(0, rx1488_pos, $I10)
  # rx literal  "s"
    add $I11, rx1488_pos, 1
    gt $I11, rx1488_eos, rx1488_fail
    sub $I11, rx1488_pos, rx1488_off
    ord $I11, rx1488_tgt, $I11
    ne $I11, 115, rx1488_fail
    add rx1488_pos, 1
    set_addr $I10, rxcap_1490_fail
    ($I12, $I11) = rx1488_cur."!mark_peek"($I10)
    rx1488_cur."!cursor_pos"($I11)
    ($P10) = rx1488_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1488_pos, "")
    rx1488_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1490_done
  rxcap_1490_fail:
    goto rx1488_fail
  rxcap_1490_done:
  # rx rxquantr1491 ** 0..1
    set_addr $I10, rxquantr1491_done
    rx1488_cur."!mark_push"(0, rx1488_pos, $I10)
  rxquantr1491_loop:
  # rx literal  "igspace"
    add $I11, rx1488_pos, 7
    gt $I11, rx1488_eos, rx1488_fail
    sub $I11, rx1488_pos, rx1488_off
    substr $S10, rx1488_tgt, $I11, 7
    ne $S10, "igspace", rx1488_fail
    add rx1488_pos, 7
    set_addr $I10, rxquantr1491_done
    (rx1488_rep) = rx1488_cur."!mark_commit"($I10)
  rxquantr1491_done:
  # rx pass
    rx1488_cur."!cursor_pass"(rx1488_pos, "mod_ident:sym<sigspace>")
    if_null rx1488_debug, debug_600
    rx1488_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx1488_pos)
  debug_600:
    .return (rx1488_cur)
  rx1488_restart:
.annotate 'line', 7
    if_null rx1488_debug, debug_601
    rx1488_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_601:
  rx1488_fail:
    (rx1488_rep, rx1488_pos, $I10, $P10) = rx1488_cur."!mark_fail"(0)
    lt rx1488_pos, -1, rx1488_done
    eq rx1488_pos, -1, rx1488_fail
    jump $I10
  rx1488_done:
    rx1488_cur."!cursor_fail"()
    if_null rx1488_debug, debug_602
    rx1488_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_602:
    .return (rx1488_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("175_1315150101.74") :method :outer("12_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 7
    new $P101, "ResizablePMCArray"
    push $P101, "s"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1493"  :subid("176_1315150101.74") :outer("10_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 213
    .const 'Sub' $P2090 = "257_1315150101.74" 
    capture_lex $P2090
    .const 'Sub' $P2085 = "256_1315150101.74" 
    capture_lex $P2085
    .const 'Sub' $P2070 = "255_1315150101.74" 
    capture_lex $P2070
    .const 'Sub' $P2041 = "251_1315150101.74" 
    capture_lex $P2041
    .const 'Sub' $P2024 = "249_1315150101.74" 
    capture_lex $P2024
    .const 'Sub' $P1996 = "246_1315150101.74" 
    capture_lex $P1996
    .const 'Sub' $P1991 = "245_1315150101.74" 
    capture_lex $P1991
    .const 'Sub' $P1984 = "244_1315150101.74" 
    capture_lex $P1984
    .const 'Sub' $P1977 = "243_1315150101.74" 
    capture_lex $P1977
    .const 'Sub' $P1973 = "242_1315150101.74" 
    capture_lex $P1973
    .const 'Sub' $P1969 = "241_1315150101.74" 
    capture_lex $P1969
    .const 'Sub' $P1959 = "240_1315150101.74" 
    capture_lex $P1959
    .const 'Sub' $P1949 = "239_1315150101.74" 
    capture_lex $P1949
    .const 'Sub' $P1944 = "238_1315150101.74" 
    capture_lex $P1944
    .const 'Sub' $P1939 = "237_1315150101.74" 
    capture_lex $P1939
    .const 'Sub' $P1934 = "236_1315150101.74" 
    capture_lex $P1934
    .const 'Sub' $P1929 = "235_1315150101.74" 
    capture_lex $P1929
    .const 'Sub' $P1924 = "234_1315150101.74" 
    capture_lex $P1924
    .const 'Sub' $P1919 = "233_1315150101.74" 
    capture_lex $P1919
    .const 'Sub' $P1914 = "232_1315150101.74" 
    capture_lex $P1914
    .const 'Sub' $P1906 = "231_1315150101.74" 
    capture_lex $P1906
    .const 'Sub' $P1902 = "230_1315150101.74" 
    capture_lex $P1902
    .const 'Sub' $P1884 = "229_1315150101.74" 
    capture_lex $P1884
    .const 'Sub' $P1876 = "228_1315150101.74" 
    capture_lex $P1876
    .const 'Sub' $P1870 = "227_1315150101.74" 
    capture_lex $P1870
    .const 'Sub' $P1866 = "226_1315150101.74" 
    capture_lex $P1866
    .const 'Sub' $P1862 = "225_1315150101.74" 
    capture_lex $P1862
    .const 'Sub' $P1858 = "224_1315150101.74" 
    capture_lex $P1858
    .const 'Sub' $P1854 = "223_1315150101.74" 
    capture_lex $P1854
    .const 'Sub' $P1850 = "222_1315150101.74" 
    capture_lex $P1850
    .const 'Sub' $P1846 = "221_1315150101.74" 
    capture_lex $P1846
    .const 'Sub' $P1842 = "220_1315150101.74" 
    capture_lex $P1842
    .const 'Sub' $P1838 = "219_1315150101.74" 
    capture_lex $P1838
    .const 'Sub' $P1834 = "218_1315150101.74" 
    capture_lex $P1834
    .const 'Sub' $P1830 = "217_1315150101.74" 
    capture_lex $P1830
    .const 'Sub' $P1826 = "216_1315150101.74" 
    capture_lex $P1826
    .const 'Sub' $P1816 = "215_1315150101.74" 
    capture_lex $P1816
    .const 'Sub' $P1806 = "214_1315150101.74" 
    capture_lex $P1806
    .const 'Sub' $P1800 = "213_1315150101.74" 
    capture_lex $P1800
    .const 'Sub' $P1796 = "212_1315150101.74" 
    capture_lex $P1796
    .const 'Sub' $P1789 = "211_1315150101.74" 
    capture_lex $P1789
    .const 'Sub' $P1762 = "209_1315150101.74" 
    capture_lex $P1762
    .const 'Sub' $P1757 = "208_1315150101.74" 
    capture_lex $P1757
    .const 'Sub' $P1752 = "207_1315150101.74" 
    capture_lex $P1752
    .const 'Sub' $P1747 = "206_1315150101.74" 
    capture_lex $P1747
    .const 'Sub' $P1737 = "205_1315150101.74" 
    capture_lex $P1737
    .const 'Sub' $P1714 = "203_1315150101.74" 
    capture_lex $P1714
    .const 'Sub' $P1692 = "201_1315150101.74" 
    capture_lex $P1692
    .const 'Sub' $P1679 = "199_1315150101.74" 
    capture_lex $P1679
    .const 'Sub' $P1651 = "196_1315150101.74" 
    capture_lex $P1651
    .const 'Sub' $P1646 = "195_1315150101.74" 
    capture_lex $P1646
    .const 'Sub' $P1637 = "193_1315150101.74" 
    capture_lex $P1637
    .const 'Sub' $P1630 = "192_1315150101.74" 
    capture_lex $P1630
    .const 'Sub' $P1617 = "191_1315150101.74" 
    capture_lex $P1617
    .const 'Sub' $P1510 = "178_1315150101.74" 
    capture_lex $P1510
    .const 'Sub' $P1496 = "177_1315150101.74" 
    capture_lex $P1496
.annotate 'line', 720
    .const 'Sub' $P1496 = "177_1315150101.74" 
    newclosure $P1508, $P1496
    set $P1495, $P1508
    .lex "buildsub", $P1495
.annotate 'line', 213
    find_lex $P108, "buildsub"
    find_lex $P109, "$?PACKAGE"
    get_who $P110, $P109
    set $P110["buildsub"], $P108
.annotate 'line', 738
    .const 'Sub' $P1510 = "178_1315150101.74" 
    newclosure $P1615, $P1510
    set $P1509, $P1615
    .lex "capnames", $P1509
.annotate 'line', 804
    .const 'Sub' $P1617 = "191_1315150101.74" 
    newclosure $P1625, $P1617
    set $P1616, $P1625
    .lex "backmod", $P1616
.annotate 'line', 213
    .lex "$?PACKAGE", $P1626
    .lex "$?CLASS", $P1627
.annotate 'line', 220

            $P1628 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1628, $P0
        
    find_lex $P113, "$?PACKAGE"
    get_who $P114, $P113
    set $P114["@MODIFIERS"], $P1628
.annotate 'line', 213
    find_lex $P113, "$?PACKAGE"
    get_who $P114, $P113
    set $P1629, $P114["@MODIFIERS"]
    unless_null $P1629, vivify_720
    $P1629 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    find_lex $P113, "$?PACKAGE"
    get_who $P114, $P113
    set $P115, $P114["$REGEXNAME"]
    unless_null $P115, vivify_721
    new $P115, "Undef"
  vivify_721:
    find_lex $P113, "buildsub"
    find_lex $P113, "capnames"
    find_lex $P113, "backmod"
.annotate 'line', 817
    .const 'Sub' $P2090 = "257_1315150101.74" 
    newclosure $P2096, $P2090
.annotate 'line', 213
    .return ($P2096)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("177_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1497
    .param pmc param_1498 :optional
    .param int has_param_1498 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 720
    .lex "$rpast", param_1497
    if has_param_1498, optparam_603
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P103, $P101, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Block"]
    $P106 = $P105."new"()
    set param_1498, $P106
  optparam_603:
    .lex "$block", param_1498
.annotate 'line', 721
    $P1500 = root_new ['parrot';'Hash']
    set $P1499, $P1500
    .lex "%capnames", $P1499
    find_lex $P107, "$rpast"
    unless_null $P107, vivify_604
    new $P107, "Undef"
  vivify_604:
    $P108 = "capnames"($P107, 0)
    store_lex "%capnames", $P108
.annotate 'line', 722
    new $P107, "Float"
    assign $P107, 0
    find_lex $P1501, "%capnames"
    unless_null $P1501, vivify_605
    $P1501 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1501
  vivify_605:
    set $P1501[""], $P107
.annotate 'line', 723
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "PAST"
    get_who $P109, $P108
    set $P110, $P109["Regex"]
.annotate 'line', 724
    get_hll_global $P111, "GLOBAL"
    nqp_get_package_through_who $P112, $P111, "PAST"
    get_who $P113, $P112
    set $P114, $P113["Regex"]
    $P115 = $P114."new"("scan" :named("pasttype"))
    find_lex $P116, "$rpast"
    unless_null $P116, vivify_606
    new $P116, "Undef"
  vivify_606:
.annotate 'line', 726
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
.annotate 'line', 727
    new $P122, "Float"
    assign $P122, 0
    set $I100, $P122
    find_lex $P123, "$?PACKAGE"
    get_who $P124, $P123
    set $P1503, $P124["@MODIFIERS"]
    unless_null $P1503, vivify_607
    $P1503 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    set $P1504, $P1503[$I100]
    unless_null $P1504, vivify_608
    $P1504 = root_new ['parrot';'Hash']
  vivify_608:
    set $P125, $P1504["r"]
    unless_null $P125, vivify_609
    new $P125, "Undef"
  vivify_609:
    if $P125, if_1502
    new $P127, "String"
    assign $P127, "g"
    set $P121, $P127
    goto if_1502_end
  if_1502:
    new $P126, "String"
    assign $P126, "r"
    set $P121, $P126
  if_1502_end:
.annotate 'line', 726
    $P128 = $P120."new"("pass" :named("pasttype"), $P121 :named("backtrack"))
    find_lex $P1505, "%capnames"
    unless_null $P1505, vivify_610
    $P1505 = root_new ['parrot';'Hash']
  vivify_610:
    $P129 = $P110."new"($P115, $P116, $P128, "concat" :named("pasttype"), $P1505 :named("capnames"))
.annotate 'line', 723
    store_lex "$rpast", $P129
.annotate 'line', 731
    find_lex $P107, "$block"
    unless_null $P107, vivify_611
    new $P107, "Undef"
  vivify_611:
    $P108 = $P107."symbol"(unicode:"$\x{a2}")
    if $P108, unless_1506_end
    find_lex $P109, "$block"
    unless_null $P109, vivify_612
    new $P109, "Undef"
  vivify_612:
    $P109."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_1506_end:
.annotate 'line', 732
    find_lex $P107, "$block"
    unless_null $P107, vivify_613
    new $P107, "Undef"
  vivify_613:
    $P108 = $P107."symbol"("$/")
    if $P108, unless_1507_end
    find_lex $P109, "$block"
    unless_null $P109, vivify_614
    new $P109, "Undef"
  vivify_614:
    $P109."symbol"("$/", "lexical" :named("scope"))
  unless_1507_end:
.annotate 'line', 733
    find_lex $P107, "$block"
    unless_null $P107, vivify_615
    new $P107, "Undef"
  vivify_615:
    find_lex $P108, "$rpast"
    unless_null $P108, vivify_616
    new $P108, "Undef"
  vivify_616:
    $P107."push"($P108)
.annotate 'line', 734
    find_lex $P107, "$block"
    unless_null $P107, vivify_617
    new $P107, "Undef"
  vivify_617:
    $P107."blocktype"("method")
.annotate 'line', 720
    find_lex $P107, "$block"
    unless_null $P107, vivify_618
    new $P107, "Undef"
  vivify_618:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("178_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 738
    .const 'Sub' $P1602 = "189_1315150101.74" 
    capture_lex $P1602
    .const 'Sub' $P1575 = "186_1315150101.74" 
    capture_lex $P1575
    .const 'Sub' $P1559 = "184_1315150101.74" 
    capture_lex $P1559
    .const 'Sub' $P1542 = "182_1315150101.74" 
    capture_lex $P1542
    .const 'Sub' $P1519 = "179_1315150101.74" 
    capture_lex $P1519
    .lex "$ast", param_1511
    .lex "$count", param_1512
.annotate 'line', 739
    $P1514 = root_new ['parrot';'Hash']
    set $P1513, $P1514
    .lex "%capnames", $P1513
.annotate 'line', 740
    new $P111, "Undef"
    set $P1515, $P111
    .lex "$pasttype", $P1515
.annotate 'line', 738
    find_lex $P1516, "%capnames"
    unless_null $P1516, vivify_619
    $P1516 = root_new ['parrot';'Hash']
  vivify_619:
.annotate 'line', 740
    find_lex $P112, "$ast"
    unless_null $P112, vivify_620
    new $P112, "Undef"
  vivify_620:
    $P113 = $P112."pasttype"()
    store_lex "$pasttype", $P113
.annotate 'line', 741
    find_lex $P112, "$pasttype"
    unless_null $P112, vivify_621
    new $P112, "Undef"
  vivify_621:
    set $S100, $P112
    iseq $I100, $S100, "alt"
    if $I100, if_1517
.annotate 'line', 754
    find_lex $P115, "$pasttype"
    unless_null $P115, vivify_622
    new $P115, "Undef"
  vivify_622:
    set $S101, $P115
    iseq $I101, $S101, "concat"
    if $I101, if_1540
.annotate 'line', 763
    find_lex $P117, "$pasttype"
    unless_null $P117, vivify_623
    new $P117, "Undef"
  vivify_623:
    set $S102, $P117
    iseq $I102, $S102, "subrule"
    if $I102, if_1557
    new $P116, 'Integer'
    set $P116, $I102
    goto if_1557_end
  if_1557:
    find_lex $P118, "$ast"
    unless_null $P118, vivify_624
    new $P118, "Undef"
  vivify_624:
    $S103 = $P118."subtype"()
    iseq $I103, $S103, "capture"
    new $P116, 'Integer'
    set $P116, $I103
  if_1557_end:
    if $P116, if_1556
.annotate 'line', 776
    find_lex $P121, "$pasttype"
    unless_null $P121, vivify_625
    new $P121, "Undef"
  vivify_625:
    set $S104, $P121
    iseq $I104, $S104, "subcapture"
    if $I104, if_1573
.annotate 'line', 793
    find_lex $P124, "$pasttype"
    unless_null $P124, vivify_626
    new $P124, "Undef"
  vivify_626:
    set $S105, $P124
    iseq $I105, $S105, "quant"
    unless $I105, if_1600_end
    .const 'Sub' $P1602 = "189_1315150101.74" 
    capture_lex $P1602
    $P1602()
  if_1600_end:
    goto if_1573_end
  if_1573:
.annotate 'line', 776
    .const 'Sub' $P1575 = "186_1315150101.74" 
    capture_lex $P1575
    $P1575()
  if_1573_end:
    goto if_1556_end
  if_1556:
.annotate 'line', 763
    .const 'Sub' $P1559 = "184_1315150101.74" 
    capture_lex $P1559
    $P1559()
  if_1556_end:
    goto if_1540_end
  if_1540:
.annotate 'line', 755
    find_lex $P117, "$ast"
    unless_null $P117, vivify_671
    new $P117, "Undef"
  vivify_671:
    $P118 = $P117."list"()
    defined $I102, $P118
    unless $I102, for_undef_672
    iter $P116, $P118
    new $P121, 'ExceptionHandler'
    set_label $P121, loop1555_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop1555_test:
    unless $P116, loop1555_done
    shift $P119, $P116
  loop1555_redo:
    .const 'Sub' $P1542 = "182_1315150101.74" 
    capture_lex $P1542
    $P1542($P119)
  loop1555_next:
    goto loop1555_test
  loop1555_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1555_next
    eq $P122, .CONTROL_LOOP_REDO, loop1555_redo
  loop1555_done:
    pop_eh 
  for_undef_672:
  if_1540_end:
.annotate 'line', 754
    goto if_1517_end
  if_1517:
.annotate 'line', 741
    .const 'Sub' $P1519 = "179_1315150101.74" 
    capture_lex $P1519
    $P1519()
  if_1517_end:
.annotate 'line', 800
    find_lex $P112, "$count"
    unless_null $P112, vivify_708
    new $P112, "Undef"
  vivify_708:
    find_lex $P1613, "%capnames"
    unless_null $P1613, vivify_709
    $P1613 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1613
  vivify_709:
    set $P1613[""], $P112
.annotate 'line', 738
    find_lex $P1614, "%capnames"
    unless_null $P1614, vivify_710
    $P1614 = root_new ['parrot';'Hash']
  vivify_710:
    .return ($P1614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1601"  :anon :subid("189_1315150101.74") :outer("178_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 793
    .const 'Sub' $P1608 = "190_1315150101.74" 
    capture_lex $P1608
.annotate 'line', 794
    $P1604 = root_new ['parrot';'Hash']
    set $P1603, $P1604
    .lex "%astcap", $P1603
    new $P125, "Float"
    assign $P125, 0
    set $I106, $P125
    find_lex $P1605, "$ast"
    unless_null $P1605, vivify_627
    $P1605 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    set $P126, $P1605[$I106]
    unless_null $P126, vivify_628
    new $P126, "Undef"
  vivify_628:
    find_lex $P127, "$count"
    unless_null $P127, vivify_629
    new $P127, "Undef"
  vivify_629:
    $P128 = "capnames"($P126, $P127)
    store_lex "%astcap", $P128
.annotate 'line', 795
    find_lex $P1606, "%astcap"
    unless_null $P1606, vivify_630
    $P1606 = root_new ['parrot';'Hash']
  vivify_630:
    defined $I106, $P1606
    unless $I106, for_undef_631
    iter $P125, $P1606
    new $P128, 'ExceptionHandler'
    set_label $P128, loop1611_handler
    $P128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P128
  loop1611_test:
    unless $P125, loop1611_done
    shift $P126, $P125
  loop1611_redo:
    .const 'Sub' $P1608 = "190_1315150101.74" 
    capture_lex $P1608
    $P1608($P126)
  loop1611_next:
    goto loop1611_test
  loop1611_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop1611_next
    eq $P129, .CONTROL_LOOP_REDO, loop1611_redo
  loop1611_done:
    pop_eh 
  for_undef_631:
.annotate 'line', 798
    find_lex $P1612, "%astcap"
    unless_null $P1612, vivify_634
    $P1612 = root_new ['parrot';'Hash']
  vivify_634:
    set $P125, $P1612[""]
    unless_null $P125, vivify_635
    new $P125, "Undef"
  vivify_635:
    store_lex "$count", $P125
.annotate 'line', 793
    .return ($P125)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1607"  :anon :subid("190_1315150101.74") :outer("189_1315150101.74")
    .param pmc param_1609
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 795
    .lex "$_", param_1609
.annotate 'line', 796
    new $P127, "Float"
    assign $P127, 2
    find_lex $P128, "$_"
    unless_null $P128, vivify_632
    new $P128, "Undef"
  vivify_632:
    find_lex $P1610, "%capnames"
    unless_null $P1610, vivify_633
    $P1610 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1610
  vivify_633:
    set $P1610[$P128], $P127
.annotate 'line', 795
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1574"  :anon :subid("186_1315150101.74") :outer("178_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 776
    .const 'Sub' $P1593 = "188_1315150101.74" 
    capture_lex $P1593
    .const 'Sub' $P1584 = "187_1315150101.74" 
    capture_lex $P1584
.annotate 'line', 777
    new $P122, "Undef"
    set $P1576, $P122
    .lex "$name", $P1576
.annotate 'line', 778
    $P1578 = root_new ['parrot';'ResizablePMCArray']
    set $P1577, $P1578
    .lex "@names", $P1577
.annotate 'line', 787
    $P1580 = root_new ['parrot';'Hash']
    set $P1579, $P1580
    .lex "%x", $P1579
.annotate 'line', 777
    find_lex $P123, "$ast"
    unless_null $P123, vivify_636
    new $P123, "Undef"
  vivify_636:
    $P124 = $P123."name"()
    store_lex "$name", $P124
.annotate 'line', 778

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1581 = split '=', $S0
            
    store_lex "@names", $P1581
.annotate 'line', 783
    find_lex $P1582, "@names"
    unless_null $P1582, vivify_637
    $P1582 = root_new ['parrot';'ResizablePMCArray']
  vivify_637:
    defined $I105, $P1582
    unless $I105, for_undef_638
    iter $P123, $P1582
    new $P126, 'ExceptionHandler'
    set_label $P126, loop1589_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop1589_test:
    unless $P123, loop1589_done
    shift $P124, $P123
  loop1589_redo:
    .const 'Sub' $P1584 = "187_1315150101.74" 
    capture_lex $P1584
    $P1584($P124)
  loop1589_next:
    goto loop1589_test
  loop1589_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1589_next
    eq $P127, .CONTROL_LOOP_REDO, loop1589_redo
  loop1589_done:
    pop_eh 
  for_undef_638:
.annotate 'line', 787
    new $P123, "Float"
    assign $P123, 0
    set $I105, $P123
    find_lex $P1590, "$ast"
    unless_null $P1590, vivify_644
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_644:
    set $P124, $P1590[$I105]
    unless_null $P124, vivify_645
    new $P124, "Undef"
  vivify_645:
    find_lex $P125, "$count"
    unless_null $P125, vivify_646
    new $P125, "Undef"
  vivify_646:
    $P126 = "capnames"($P124, $P125)
    store_lex "%x", $P126
.annotate 'line', 788
    find_lex $P1591, "%x"
    unless_null $P1591, vivify_647
    $P1591 = root_new ['parrot';'Hash']
  vivify_647:
    defined $I105, $P1591
    unless $I105, for_undef_648
    iter $P123, $P1591
    new $P125, 'ExceptionHandler'
    set_label $P125, loop1598_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop1598_test:
    unless $P123, loop1598_done
    shift $P124, $P123
  loop1598_redo:
    .const 'Sub' $P1593 = "188_1315150101.74" 
    capture_lex $P1593
    $P1593($P124)
  loop1598_next:
    goto loop1598_test
  loop1598_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1598_next
    eq $P126, .CONTROL_LOOP_REDO, loop1598_redo
  loop1598_done:
    pop_eh 
  for_undef_648:
.annotate 'line', 791
    find_lex $P1599, "%x"
    unless_null $P1599, vivify_657
    $P1599 = root_new ['parrot';'Hash']
  vivify_657:
    set $P123, $P1599[""]
    unless_null $P123, vivify_658
    new $P123, "Undef"
  vivify_658:
    store_lex "$count", $P123
.annotate 'line', 776
    .return ($P123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1583"  :anon :subid("187_1315150101.74") :outer("186_1315150101.74")
    .param pmc param_1585
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 783
    .lex "$_", param_1585
.annotate 'line', 784
    find_lex $P126, "$_"
    unless_null $P126, vivify_639
    new $P126, "Undef"
  vivify_639:
    set $S105, $P126
    iseq $I106, $S105, "0"
    unless $I106, unless_1587
    new $P125, 'Integer'
    set $P125, $I106
    goto unless_1587_end
  unless_1587:
    find_lex $P127, "$_"
    unless_null $P127, vivify_640
    new $P127, "Undef"
  vivify_640:
    set $N100, $P127
    set $N101, 0
    isgt $I107, $N100, $N101
    new $P125, 'Integer'
    set $P125, $I107
  unless_1587_end:
    unless $P125, if_1586_end
    find_lex $P128, "$_"
    unless_null $P128, vivify_641
    new $P128, "Undef"
  vivify_641:
    add $P129, $P128, 1
    store_lex "$count", $P129
  if_1586_end:
.annotate 'line', 785
    new $P125, "Float"
    assign $P125, 1
    find_lex $P126, "$_"
    unless_null $P126, vivify_642
    new $P126, "Undef"
  vivify_642:
    find_lex $P1588, "%capnames"
    unless_null $P1588, vivify_643
    $P1588 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1588
  vivify_643:
    set $P1588[$P126], $P125
.annotate 'line', 783
    .return ($P125)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1592"  :anon :subid("188_1315150101.74") :outer("186_1315150101.74")
    .param pmc param_1594
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 788
    .lex "$_", param_1594
.annotate 'line', 789
    find_lex $P125, "$_"
    unless_null $P125, vivify_649
    new $P125, "Undef"
  vivify_649:
    find_lex $P1595, "%capnames"
    unless_null $P1595, vivify_650
    $P1595 = root_new ['parrot';'Hash']
  vivify_650:
    set $P126, $P1595[$P125]
    unless_null $P126, vivify_651
    new $P126, "Undef"
  vivify_651:
    set $N100, $P126
    new $P127, 'Float'
    set $P127, $N100
    find_lex $P128, "$_"
    unless_null $P128, vivify_652
    new $P128, "Undef"
  vivify_652:
    find_lex $P1596, "%x"
    unless_null $P1596, vivify_653
    $P1596 = root_new ['parrot';'Hash']
  vivify_653:
    set $P129, $P1596[$P128]
    unless_null $P129, vivify_654
    new $P129, "Undef"
  vivify_654:
    add $P130, $P127, $P129
    find_lex $P131, "$_"
    unless_null $P131, vivify_655
    new $P131, "Undef"
  vivify_655:
    find_lex $P1597, "%capnames"
    unless_null $P1597, vivify_656
    $P1597 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1597
  vivify_656:
    set $P1597[$P131], $P130
.annotate 'line', 788
    .return ($P130)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("184_1315150101.74") :outer("178_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 763
    .const 'Sub' $P1567 = "185_1315150101.74" 
    capture_lex $P1567
.annotate 'line', 764
    new $P119, "Undef"
    set $P1560, $P119
    .lex "$name", $P1560
.annotate 'line', 766
    $P1562 = root_new ['parrot';'ResizablePMCArray']
    set $P1561, $P1562
    .lex "@names", $P1561
.annotate 'line', 764
    find_lex $P120, "$ast"
    unless_null $P120, vivify_659
    new $P120, "Undef"
  vivify_659:
    $P121 = $P120."name"()
    store_lex "$name", $P121
.annotate 'line', 765
    find_lex $P120, "$name"
    unless_null $P120, vivify_660
    new $P120, "Undef"
  vivify_660:
    set $S104, $P120
    iseq $I104, $S104, ""
    unless $I104, if_1563_end
    find_lex $P121, "$count"
    unless_null $P121, vivify_661
    new $P121, "Undef"
  vivify_661:
    store_lex "$name", $P121
    find_lex $P121, "$ast"
    unless_null $P121, vivify_662
    new $P121, "Undef"
  vivify_662:
    find_lex $P122, "$name"
    unless_null $P122, vivify_663
    new $P122, "Undef"
  vivify_663:
    $P121."name"($P122)
  if_1563_end:
.annotate 'line', 766

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1564 = split '=', $S0
            
    store_lex "@names", $P1564
.annotate 'line', 771
    find_lex $P1565, "@names"
    unless_null $P1565, vivify_664
    $P1565 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    defined $I104, $P1565
    unless $I104, for_undef_665
    iter $P120, $P1565
    new $P123, 'ExceptionHandler'
    set_label $P123, loop1572_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop1572_test:
    unless $P120, loop1572_done
    shift $P121, $P120
  loop1572_redo:
    .const 'Sub' $P1567 = "185_1315150101.74" 
    capture_lex $P1567
    $P1567($P121)
  loop1572_next:
    goto loop1572_test
  loop1572_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1572_next
    eq $P124, .CONTROL_LOOP_REDO, loop1572_redo
  loop1572_done:
    pop_eh 
  for_undef_665:
.annotate 'line', 763
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1566"  :anon :subid("185_1315150101.74") :outer("184_1315150101.74")
    .param pmc param_1568
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 771
    .lex "$_", param_1568
.annotate 'line', 772
    find_lex $P123, "$_"
    unless_null $P123, vivify_666
    new $P123, "Undef"
  vivify_666:
    set $S104, $P123
    iseq $I105, $S104, "0"
    unless $I105, unless_1570
    new $P122, 'Integer'
    set $P122, $I105
    goto unless_1570_end
  unless_1570:
    find_lex $P124, "$_"
    unless_null $P124, vivify_667
    new $P124, "Undef"
  vivify_667:
    set $N100, $P124
    set $N101, 0
    isgt $I106, $N100, $N101
    new $P122, 'Integer'
    set $P122, $I106
  unless_1570_end:
    unless $P122, if_1569_end
    find_lex $P125, "$_"
    unless_null $P125, vivify_668
    new $P125, "Undef"
  vivify_668:
    add $P126, $P125, 1
    store_lex "$count", $P126
  if_1569_end:
.annotate 'line', 773
    new $P122, "Float"
    assign $P122, 1
    find_lex $P123, "$_"
    unless_null $P123, vivify_669
    new $P123, "Undef"
  vivify_669:
    find_lex $P1571, "%capnames"
    unless_null $P1571, vivify_670
    $P1571 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1571
  vivify_670:
    set $P1571[$P123], $P122
.annotate 'line', 771
    .return ($P122)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1541"  :anon :subid("182_1315150101.74") :outer("178_1315150101.74")
    .param pmc param_1545
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 755
    .const 'Sub' $P1548 = "183_1315150101.74" 
    capture_lex $P1548
.annotate 'line', 756
    $P1544 = root_new ['parrot';'Hash']
    set $P1543, $P1544
    .lex "%x", $P1543
    .lex "$_", param_1545
    find_lex $P120, "$_"
    unless_null $P120, vivify_673
    new $P120, "Undef"
  vivify_673:
    find_lex $P121, "$count"
    unless_null $P121, vivify_674
    new $P121, "Undef"
  vivify_674:
    $P122 = "capnames"($P120, $P121)
    store_lex "%x", $P122
.annotate 'line', 757
    find_lex $P1546, "%x"
    unless_null $P1546, vivify_675
    $P1546 = root_new ['parrot';'Hash']
  vivify_675:
    defined $I103, $P1546
    unless $I103, for_undef_676
    iter $P120, $P1546
    new $P122, 'ExceptionHandler'
    set_label $P122, loop1553_handler
    $P122."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P122
  loop1553_test:
    unless $P120, loop1553_done
    shift $P121, $P120
  loop1553_redo:
    .const 'Sub' $P1548 = "183_1315150101.74" 
    capture_lex $P1548
    $P1548($P121)
  loop1553_next:
    goto loop1553_test
  loop1553_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop1553_next
    eq $P123, .CONTROL_LOOP_REDO, loop1553_redo
  loop1553_done:
    pop_eh 
  for_undef_676:
.annotate 'line', 760
    find_lex $P1554, "%x"
    unless_null $P1554, vivify_685
    $P1554 = root_new ['parrot';'Hash']
  vivify_685:
    set $P120, $P1554[""]
    unless_null $P120, vivify_686
    new $P120, "Undef"
  vivify_686:
    store_lex "$count", $P120
.annotate 'line', 755
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1547"  :anon :subid("183_1315150101.74") :outer("182_1315150101.74")
    .param pmc param_1549
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 757
    .lex "$_", param_1549
.annotate 'line', 758
    find_lex $P122, "$_"
    unless_null $P122, vivify_677
    new $P122, "Undef"
  vivify_677:
    find_lex $P1550, "%capnames"
    unless_null $P1550, vivify_678
    $P1550 = root_new ['parrot';'Hash']
  vivify_678:
    set $P123, $P1550[$P122]
    unless_null $P123, vivify_679
    new $P123, "Undef"
  vivify_679:
    set $N100, $P123
    new $P124, 'Float'
    set $P124, $N100
    find_lex $P125, "$_"
    unless_null $P125, vivify_680
    new $P125, "Undef"
  vivify_680:
    find_lex $P1551, "%x"
    unless_null $P1551, vivify_681
    $P1551 = root_new ['parrot';'Hash']
  vivify_681:
    set $P126, $P1551[$P125]
    unless_null $P126, vivify_682
    new $P126, "Undef"
  vivify_682:
    add $P127, $P124, $P126
    find_lex $P128, "$_"
    unless_null $P128, vivify_683
    new $P128, "Undef"
  vivify_683:
    find_lex $P1552, "%capnames"
    unless_null $P1552, vivify_684
    $P1552 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1552
  vivify_684:
    set $P1552[$P128], $P127
.annotate 'line', 757
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1518"  :anon :subid("179_1315150101.74") :outer("178_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 741
    .const 'Sub' $P1522 = "180_1315150101.74" 
    capture_lex $P1522
.annotate 'line', 742
    new $P113, "Undef"
    set $P1520, $P113
    .lex "$max", $P1520
    find_lex $P114, "$count"
    unless_null $P114, vivify_687
    new $P114, "Undef"
  vivify_687:
    store_lex "$max", $P114
.annotate 'line', 743
    find_lex $P115, "$ast"
    unless_null $P115, vivify_688
    new $P115, "Undef"
  vivify_688:
    $P116 = $P115."list"()
    defined $I101, $P116
    unless $I101, for_undef_689
    iter $P114, $P116
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1539_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1539_test:
    unless $P114, loop1539_done
    shift $P117, $P114
  loop1539_redo:
    .const 'Sub' $P1522 = "180_1315150101.74" 
    capture_lex $P1522
    $P1522($P117)
  loop1539_next:
    goto loop1539_test
  loop1539_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1539_next
    eq $P120, .CONTROL_LOOP_REDO, loop1539_redo
  loop1539_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 752
    find_lex $P114, "$max"
    unless_null $P114, vivify_707
    new $P114, "Undef"
  vivify_707:
    store_lex "$count", $P114
.annotate 'line', 741
    .return ($P114)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1521"  :anon :subid("180_1315150101.74") :outer("179_1315150101.74")
    .param pmc param_1525
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 743
    .const 'Sub' $P1528 = "181_1315150101.74" 
    capture_lex $P1528
.annotate 'line', 744
    $P1524 = root_new ['parrot';'Hash']
    set $P1523, $P1524
    .lex "%x", $P1523
    .lex "$_", param_1525
    find_lex $P118, "$_"
    unless_null $P118, vivify_690
    new $P118, "Undef"
  vivify_690:
    find_lex $P119, "$count"
    unless_null $P119, vivify_691
    new $P119, "Undef"
  vivify_691:
    $P120 = "capnames"($P118, $P119)
    store_lex "%x", $P120
.annotate 'line', 745
    find_lex $P1526, "%x"
    unless_null $P1526, vivify_692
    $P1526 = root_new ['parrot';'Hash']
  vivify_692:
    defined $I102, $P1526
    unless $I102, for_undef_693
    iter $P118, $P1526
    new $P121, 'ExceptionHandler'
    set_label $P121, loop1535_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop1535_test:
    unless $P118, loop1535_done
    shift $P119, $P118
  loop1535_redo:
    .const 'Sub' $P1528 = "181_1315150101.74" 
    capture_lex $P1528
    $P1528($P119)
  loop1535_next:
    goto loop1535_test
  loop1535_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1535_next
    eq $P122, .CONTROL_LOOP_REDO, loop1535_redo
  loop1535_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 750
    find_lex $P1537, "%x"
    unless_null $P1537, vivify_702
    $P1537 = root_new ['parrot';'Hash']
  vivify_702:
    set $P119, $P1537[""]
    unless_null $P119, vivify_703
    new $P119, "Undef"
  vivify_703:
    set $N100, $P119
    find_lex $P120, "$max"
    unless_null $P120, vivify_704
    new $P120, "Undef"
  vivify_704:
    set $N101, $P120
    isgt $I102, $N100, $N101
    if $I102, if_1536
    new $P118, 'Integer'
    set $P118, $I102
    goto if_1536_end
  if_1536:
    find_lex $P1538, "%x"
    unless_null $P1538, vivify_705
    $P1538 = root_new ['parrot';'Hash']
  vivify_705:
    set $P121, $P1538[""]
    unless_null $P121, vivify_706
    new $P121, "Undef"
  vivify_706:
    store_lex "$max", $P121
    set $P118, $P121
  if_1536_end:
.annotate 'line', 743
    .return ($P118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1527"  :anon :subid("181_1315150101.74") :outer("180_1315150101.74")
    .param pmc param_1529
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 745
    .lex "$_", param_1529
.annotate 'line', 746
    find_lex $P122, "$_"
    unless_null $P122, vivify_694
    new $P122, "Undef"
  vivify_694:
    find_lex $P1532, "%capnames"
    unless_null $P1532, vivify_695
    $P1532 = root_new ['parrot';'Hash']
  vivify_695:
    set $P123, $P1532[$P122]
    unless_null $P123, vivify_696
    new $P123, "Undef"
  vivify_696:
    set $N100, $P123
    set $N101, 2
    islt $I103, $N100, $N101
    if $I103, if_1531
    new $P121, 'Integer'
    set $P121, $I103
    goto if_1531_end
  if_1531:
    find_lex $P124, "$_"
    unless_null $P124, vivify_697
    new $P124, "Undef"
  vivify_697:
    find_lex $P1533, "%x"
    unless_null $P1533, vivify_698
    $P1533 = root_new ['parrot';'Hash']
  vivify_698:
    set $P125, $P1533[$P124]
    unless_null $P125, vivify_699
    new $P125, "Undef"
  vivify_699:
    set $N102, $P125
    set $N103, 1
    iseq $I104, $N102, $N103
    new $P121, 'Integer'
    set $P121, $I104
  if_1531_end:
    if $P121, if_1530
    new $P127, "Float"
    assign $P127, 2
    set $P120, $P127
    goto if_1530_end
  if_1530:
    new $P126, "Float"
    assign $P126, 1
    set $P120, $P126
  if_1530_end:
.annotate 'line', 747
    find_lex $P128, "$_"
    unless_null $P128, vivify_700
    new $P128, "Undef"
  vivify_700:
    find_lex $P1534, "%capnames"
    unless_null $P1534, vivify_701
    $P1534 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1534
  vivify_701:
    set $P1534[$P128], $P120
.annotate 'line', 745
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("191_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1618
    .param pmc param_1619
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 804
    .lex "$ast", param_1618
    .lex "$backmod", param_1619
.annotate 'line', 805
    find_lex $P112, "$backmod"
    unless_null $P112, vivify_711
    new $P112, "Undef"
  vivify_711:
    set $S100, $P112
    iseq $I100, $S100, ":"
    if $I100, if_1620
.annotate 'line', 806
    find_lex $P114, "$backmod"
    unless_null $P114, vivify_712
    new $P114, "Undef"
  vivify_712:
    set $S101, $P114
    iseq $I101, $S101, ":?"
    unless $I101, unless_1622
    new $P113, 'Integer'
    set $P113, $I101
    goto unless_1622_end
  unless_1622:
    find_lex $P115, "$backmod"
    unless_null $P115, vivify_713
    new $P115, "Undef"
  vivify_713:
    set $S102, $P115
    iseq $I102, $S102, "?"
    new $P113, 'Integer'
    set $P113, $I102
  unless_1622_end:
    if $P113, if_1621
.annotate 'line', 807
    find_lex $P117, "$backmod"
    unless_null $P117, vivify_714
    new $P117, "Undef"
  vivify_714:
    set $S103, $P117
    iseq $I103, $S103, ":!"
    unless $I103, unless_1624
    new $P116, 'Integer'
    set $P116, $I103
    goto unless_1624_end
  unless_1624:
    find_lex $P118, "$backmod"
    unless_null $P118, vivify_715
    new $P118, "Undef"
  vivify_715:
    set $S104, $P118
    iseq $I104, $S104, "!"
    new $P116, 'Integer'
    set $P116, $I104
  unless_1624_end:
    unless $P116, if_1623_end
    find_lex $P119, "$ast"
    unless_null $P119, vivify_716
    new $P119, "Undef"
  vivify_716:
    $P119."backtrack"("g")
  if_1623_end:
    goto if_1621_end
  if_1621:
.annotate 'line', 806
    find_lex $P116, "$ast"
    unless_null $P116, vivify_717
    new $P116, "Undef"
  vivify_717:
    $P116."backtrack"("f")
  if_1621_end:
    goto if_1620_end
  if_1620:
.annotate 'line', 805
    find_lex $P113, "$ast"
    unless_null $P113, vivify_718
    new $P113, "Undef"
  vivify_718:
    $P113."backtrack"("r")
  if_1620_end:
.annotate 'line', 804
    find_lex $P112, "$ast"
    unless_null $P112, vivify_719
    new $P112, "Undef"
  vivify_719:
    .return ($P112)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg" :anon :subid("192_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1631
    .param pmc param_1632
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 227
    .lex "self", param_1631
    .lex "$/", param_1632
.annotate 'line', 228
    find_lex $P113, "$/"
    find_lex $P1634, "$/"
    unless_null $P1634, vivify_722
    $P1634 = root_new ['parrot';'Hash']
  vivify_722:
    set $P115, $P1634["quote_EXPR"]
    unless_null $P115, vivify_723
    new $P115, "Undef"
  vivify_723:
    if $P115, if_1633
    find_lex $P1636, "$/"
    unless_null $P1636, vivify_724
    $P1636 = root_new ['parrot';'Hash']
  vivify_724:
    set $P118, $P1636["val"]
    unless_null $P118, vivify_725
    new $P118, "Undef"
  vivify_725:
    set $N100, $P118
    new $P114, 'Float'
    set $P114, $N100
    goto if_1633_end
  if_1633:
    find_lex $P1635, "$/"
    unless_null $P1635, vivify_726
    $P1635 = root_new ['parrot';'Hash']
  vivify_726:
    set $P116, $P1635["quote_EXPR"]
    unless_null $P116, vivify_727
    new $P116, "Undef"
  vivify_727:
    $P117 = $P116."ast"()
    set $P114, $P117
  if_1633_end:
    $P119 = $P113."!make"($P114)
.annotate 'line', 227
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist" :anon :subid("193_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1638
    .param pmc param_1639
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 231
    .const 'Sub' $P1643 = "194_1315150101.74" 
    capture_lex $P1643
    .lex "self", param_1638
    .lex "$/", param_1639
.annotate 'line', 232
    new $P113, "Undef"
    set $P1640, $P113
    .lex "$past", $P1640
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Op"]
    $P118 = $P117."new"("list" :named("pasttype"))
    store_lex "$past", $P118
.annotate 'line', 233
    find_lex $P1641, "$/"
    unless_null $P1641, vivify_728
    $P1641 = root_new ['parrot';'Hash']
  vivify_728:
    set $P115, $P1641["arg"]
    unless_null $P115, vivify_729
    new $P115, "Undef"
  vivify_729:
    defined $I100, $P115
    unless $I100, for_undef_730
    iter $P114, $P115
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1645_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1645_test:
    unless $P114, loop1645_done
    shift $P116, $P114
  loop1645_redo:
    .const 'Sub' $P1643 = "194_1315150101.74" 
    capture_lex $P1643
    $P1643($P116)
  loop1645_next:
    goto loop1645_test
  loop1645_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1645_next
    eq $P118, .CONTROL_LOOP_REDO, loop1645_redo
  loop1645_done:
    pop_eh 
  for_undef_730:
.annotate 'line', 234
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_733
    new $P115, "Undef"
  vivify_733:
    $P116 = $P114."!make"($P115)
.annotate 'line', 231
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1642"  :anon :subid("194_1315150101.74") :outer("193_1315150101.74")
    .param pmc param_1644
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 233
    .lex "$_", param_1644
    find_lex $P117, "$past"
    unless_null $P117, vivify_731
    new $P117, "Undef"
  vivify_731:
    find_lex $P118, "$_"
    unless_null $P118, vivify_732
    new $P118, "Undef"
  vivify_732:
    $P119 = $P118."ast"()
    $P120 = $P117."push"($P119)
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP" :anon :subid("195_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1647
    .param pmc param_1648
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 237
    .lex "self", param_1647
    .lex "$/", param_1648
.annotate 'line', 238
    new $P113, "Undef"
    set $P1649, $P113
    .lex "$past", $P1649
    find_lex $P1650, "$/"
    unless_null $P1650, vivify_734
    $P1650 = root_new ['parrot';'Hash']
  vivify_734:
    set $P114, $P1650["nibbler"]
    unless_null $P114, vivify_735
    new $P114, "Undef"
  vivify_735:
    $P115 = $P114."ast"()
    $P116 = "buildsub"($P115)
    store_lex "$past", $P116
.annotate 'line', 239
    find_lex $P114, "$past"
    unless_null $P114, vivify_736
    new $P114, "Undef"
  vivify_736:
    find_lex $P115, "$/"
    unless_null $P115, vivify_737
    new $P115, "Undef"
  vivify_737:
    $P114."node"($P115)
.annotate 'line', 240
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_738
    new $P115, "Undef"
  vivify_738:
    $P116 = $P114."!make"($P115)
.annotate 'line', 237
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler" :anon :subid("196_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1654
    .param pmc param_1655
    .param pmc param_1656 :optional
    .param int has_param_1656 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 243
    .const 'Sub' $P1674 = "198_1315150101.74" 
    capture_lex $P1674
    .const 'Sub' $P1660 = "197_1315150101.74" 
    capture_lex $P1660
    new $P1653, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1653, control_1652
    push_eh $P1653
    .lex "self", param_1654
    .lex "$/", param_1655
    if has_param_1656, optparam_739
    new $P113, "Undef"
    set param_1656, $P113
  optparam_739:
    .lex "$key", param_1656
.annotate 'line', 252
    new $P114, "Undef"
    set $P1657, $P114
    .lex "$past", $P1657
.annotate 'line', 244
    find_lex $P115, "$key"
    unless_null $P115, vivify_740
    new $P115, "Undef"
  vivify_740:
    set $S100, $P115
    iseq $I100, $S100, "open"
    unless $I100, if_1658_end
    .const 'Sub' $P1660 = "197_1315150101.74" 
    capture_lex $P1660
    $P1660()
  if_1658_end:
.annotate 'line', 251
    find_lex $P115, "$?PACKAGE"
    get_who $P116, $P115
    set $P1669, $P116["@MODIFIERS"]
    unless_null $P1669, vivify_746
    $P1669 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    $P1669."shift"()
.annotate 'line', 243
    find_lex $P115, "$past"
    unless_null $P115, vivify_747
    new $P115, "Undef"
  vivify_747:
.annotate 'line', 253
    find_lex $P1671, "$/"
    unless_null $P1671, vivify_748
    $P1671 = root_new ['parrot';'Hash']
  vivify_748:
    set $P115, $P1671["termconj"]
    unless_null $P115, vivify_749
    new $P115, "Undef"
  vivify_749:
    set $N100, $P115
    set $N101, 1
    isgt $I100, $N100, $N101
    if $I100, if_1670
.annotate 'line', 260
    new $P116, "Float"
    assign $P116, 0
    set $I101, $P116
    find_lex $P1677, "$/"
    unless_null $P1677, vivify_750
    $P1677 = root_new ['parrot';'Hash']
  vivify_750:
    set $P1678, $P1677["termconj"]
    unless_null $P1678, vivify_751
    $P1678 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    set $P117, $P1678[$I101]
    unless_null $P117, vivify_752
    new $P117, "Undef"
  vivify_752:
    $P118 = $P117."ast"()
    store_lex "$past", $P118
.annotate 'line', 259
    goto if_1670_end
  if_1670:
.annotate 'line', 254
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Regex"]
    find_lex $P120, "$/"
    unless_null $P120, vivify_753
    new $P120, "Undef"
  vivify_753:
    $P121 = $P119."new"("alt" :named("pasttype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 255
    find_lex $P1672, "$/"
    unless_null $P1672, vivify_754
    $P1672 = root_new ['parrot';'Hash']
  vivify_754:
    set $P117, $P1672["termconj"]
    unless_null $P117, vivify_755
    new $P117, "Undef"
  vivify_755:
    defined $I101, $P117
    unless $I101, for_undef_756
    iter $P116, $P117
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1676_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1676_test:
    unless $P116, loop1676_done
    shift $P118, $P116
  loop1676_redo:
    .const 'Sub' $P1674 = "198_1315150101.74" 
    capture_lex $P1674
    $P1674($P118)
  loop1676_next:
    goto loop1676_test
  loop1676_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1676_next
    eq $P120, .CONTROL_LOOP_REDO, loop1676_redo
  loop1676_done:
    pop_eh 
  for_undef_756:
  if_1670_end:
.annotate 'line', 262
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_759
    new $P116, "Undef"
  vivify_759:
    $P117 = $P115."!make"($P116)
.annotate 'line', 243
    .return ($P117)
  control_1652:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, "payload"
    .return ($P115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1659"  :anon :subid("197_1315150101.74") :outer("196_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 245
    $P1662 = root_new ['parrot';'Hash']
    set $P1661, $P1662
    .lex "%old", $P1661
.annotate 'line', 246
    $P1664 = root_new ['parrot';'Hash']
    set $P1663, $P1664
    .lex "%new", $P1663
.annotate 'line', 245
    new $P116, "Float"
    assign $P116, 0
    set $I101, $P116
    find_lex $P117, "$?PACKAGE"
    get_who $P118, $P117
    set $P1665, $P118["@MODIFIERS"]
    unless_null $P1665, vivify_741
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    set $P119, $P1665[$I101]
    unless_null $P119, vivify_742
    new $P119, "Undef"
  vivify_742:
    store_lex "%old", $P119
.annotate 'line', 246
    find_lex $P1666, "%old"
    unless_null $P1666, vivify_743
    $P1666 = root_new ['parrot';'Hash']
  vivify_743:
    clone $P116, $P1666
    store_lex "%new", $P116
.annotate 'line', 247
    find_lex $P116, "$?PACKAGE"
    get_who $P117, $P116
    set $P1667, $P117["@MODIFIERS"]
    unless_null $P1667, vivify_744
    $P1667 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    find_lex $P1668, "%new"
    unless_null $P1668, vivify_745
    $P1668 = root_new ['parrot';'Hash']
  vivify_745:
    $P1667."unshift"($P1668)
.annotate 'line', 248
    new $P116, "Exception"
    set $P116['type'], .CONTROL_RETURN
    new $P117, "Float"
    assign $P117, 1
    setattribute $P116, 'payload', $P117
    throw $P116
.annotate 'line', 244
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1673"  :anon :subid("198_1315150101.74") :outer("196_1315150101.74")
    .param pmc param_1675
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 255
    .lex "$_", param_1675
.annotate 'line', 256
    find_lex $P119, "$past"
    unless_null $P119, vivify_757
    new $P119, "Undef"
  vivify_757:
    find_lex $P120, "$_"
    unless_null $P120, vivify_758
    new $P120, "Undef"
  vivify_758:
    $P121 = $P120."ast"()
    $P122 = $P119."push"($P121)
.annotate 'line', 255
    .return ($P122)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj" :anon :subid("199_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1680
    .param pmc param_1681
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 265
    .const 'Sub' $P1687 = "200_1315150101.74" 
    capture_lex $P1687
    .lex "self", param_1680
    .lex "$/", param_1681
.annotate 'line', 266
    new $P113, "Undef"
    set $P1682, $P113
    .lex "$past", $P1682
.annotate 'line', 265
    find_lex $P114, "$past"
    unless_null $P114, vivify_760
    new $P114, "Undef"
  vivify_760:
.annotate 'line', 267
    find_lex $P1684, "$/"
    unless_null $P1684, vivify_761
    $P1684 = root_new ['parrot';'Hash']
  vivify_761:
    set $P114, $P1684["termish"]
    unless_null $P114, vivify_762
    new $P114, "Undef"
  vivify_762:
    set $N100, $P114
    set $N101, 1
    isgt $I100, $N100, $N101
    if $I100, if_1683
.annotate 'line', 274
    new $P115, "Float"
    assign $P115, 0
    set $I101, $P115
    find_lex $P1690, "$/"
    unless_null $P1690, vivify_763
    $P1690 = root_new ['parrot';'Hash']
  vivify_763:
    set $P1691, $P1690["termish"]
    unless_null $P1691, vivify_764
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    set $P116, $P1691[$I101]
    unless_null $P116, vivify_765
    new $P116, "Undef"
  vivify_765:
    $P117 = $P116."ast"()
    store_lex "$past", $P117
.annotate 'line', 273
    goto if_1683_end
  if_1683:
.annotate 'line', 268
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$/"
    unless_null $P119, vivify_766
    new $P119, "Undef"
  vivify_766:
    $P120 = $P118."new"("conj" :named("pasttype"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 269
    find_lex $P1685, "$/"
    unless_null $P1685, vivify_767
    $P1685 = root_new ['parrot';'Hash']
  vivify_767:
    set $P116, $P1685["termish"]
    unless_null $P116, vivify_768
    new $P116, "Undef"
  vivify_768:
    defined $I101, $P116
    unless $I101, for_undef_769
    iter $P115, $P116
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1689_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1689_test:
    unless $P115, loop1689_done
    shift $P117, $P115
  loop1689_redo:
    .const 'Sub' $P1687 = "200_1315150101.74" 
    capture_lex $P1687
    $P1687($P117)
  loop1689_next:
    goto loop1689_test
  loop1689_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1689_next
    eq $P119, .CONTROL_LOOP_REDO, loop1689_redo
  loop1689_done:
    pop_eh 
  for_undef_769:
  if_1683_end:
.annotate 'line', 276
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_772
    new $P115, "Undef"
  vivify_772:
    $P116 = $P114."!make"($P115)
.annotate 'line', 265
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1686"  :anon :subid("200_1315150101.74") :outer("199_1315150101.74")
    .param pmc param_1688
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 269
    .lex "$_", param_1688
.annotate 'line', 270
    find_lex $P118, "$past"
    unless_null $P118, vivify_770
    new $P118, "Undef"
  vivify_770:
    find_lex $P119, "$_"
    unless_null $P119, vivify_771
    new $P119, "Undef"
  vivify_771:
    $P120 = $P119."ast"()
    $P121 = $P118."push"($P120)
.annotate 'line', 269
    .return ($P121)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish" :anon :subid("201_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1693
    .param pmc param_1694
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 279
    .const 'Sub' $P1699 = "202_1315150101.74" 
    capture_lex $P1699
    .lex "self", param_1693
    .lex "$/", param_1694
.annotate 'line', 280
    new $P113, "Undef"
    set $P1695, $P113
    .lex "$past", $P1695
.annotate 'line', 281
    new $P114, "Undef"
    set $P1696, $P114
    .lex "$lastlit", $P1696
.annotate 'line', 280
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$/"
    unless_null $P119, vivify_773
    new $P119, "Undef"
  vivify_773:
    $P120 = $P118."new"("concat" :named("pasttype"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 281
    new $P115, "Float"
    assign $P115, 0
    store_lex "$lastlit", $P115
.annotate 'line', 282
    find_lex $P1697, "$/"
    unless_null $P1697, vivify_774
    $P1697 = root_new ['parrot';'Hash']
  vivify_774:
    set $P116, $P1697["noun"]
    unless_null $P116, vivify_775
    new $P116, "Undef"
  vivify_775:
    defined $I100, $P116
    unless $I100, for_undef_776
    iter $P115, $P116
    new $P120, 'ExceptionHandler'
    set_label $P120, loop1713_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop1713_test:
    unless $P115, loop1713_done
    shift $P117, $P115
  loop1713_redo:
    .const 'Sub' $P1699 = "202_1315150101.74" 
    capture_lex $P1699
    $P1699($P117)
  loop1713_next:
    goto loop1713_test
  loop1713_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop1713_next
    eq $P121, .CONTROL_LOOP_REDO, loop1713_redo
  loop1713_done:
    pop_eh 
  for_undef_776:
.annotate 'line', 297
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_794
    new $P116, "Undef"
  vivify_794:
    $P117 = $P115."!make"($P116)
.annotate 'line', 279
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1698"  :anon :subid("202_1315150101.74") :outer("201_1315150101.74")
    .param pmc param_1701
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 283
    new $P118, "Undef"
    set $P1700, $P118
    .lex "$ast", $P1700
    .lex "$_", param_1701
    find_lex $P119, "$_"
    unless_null $P119, vivify_777
    new $P119, "Undef"
  vivify_777:
    $P120 = $P119."ast"()
    store_lex "$ast", $P120
.annotate 'line', 284
    find_lex $P120, "$ast"
    unless_null $P120, vivify_778
    new $P120, "Undef"
  vivify_778:
    if $P120, if_1702
    set $P119, $P120
    goto if_1702_end
  if_1702:
.annotate 'line', 285
    find_lex $P124, "$lastlit"
    unless_null $P124, vivify_779
    new $P124, "Undef"
  vivify_779:
    if $P124, if_1705
    set $P123, $P124
    goto if_1705_end
  if_1705:
    find_lex $P125, "$ast"
    unless_null $P125, vivify_780
    new $P125, "Undef"
  vivify_780:
    $S100 = $P125."pasttype"()
    iseq $I101, $S100, "literal"
    new $P123, 'Integer'
    set $P123, $I101
  if_1705_end:
    if $P123, if_1704
    set $P122, $P123
    goto if_1704_end
  if_1704:
.annotate 'line', 286
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Node"]
    new $P130, "Float"
    assign $P130, 0
    set $I102, $P130
    find_lex $P1706, "$ast"
    unless_null $P1706, vivify_781
    $P1706 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P131, $P1706[$I102]
    unless_null $P131, vivify_782
    new $P131, "Undef"
  vivify_782:
    $P132 = $P129."ACCEPTS"($P131)
    isfalse $I103, $P132
    new $P122, 'Integer'
    set $P122, $I103
  if_1704_end:
    if $P122, if_1703
.annotate 'line', 290
    find_lex $P133, "$past"
    unless_null $P133, vivify_783
    new $P133, "Undef"
  vivify_783:
    find_lex $P134, "$ast"
    unless_null $P134, vivify_784
    new $P134, "Undef"
  vivify_784:
    $P133."push"($P134)
.annotate 'line', 291
    find_lex $P135, "$ast"
    unless_null $P135, vivify_785
    new $P135, "Undef"
  vivify_785:
    $S101 = $P135."pasttype"()
    iseq $I104, $S101, "literal"
    if $I104, if_1711
    new $P134, 'Integer'
    set $P134, $I104
    goto if_1711_end
  if_1711:
.annotate 'line', 292
    get_hll_global $P136, "GLOBAL"
    nqp_get_package_through_who $P138, $P136, "PAST"
    get_who $P139, $P138
    set $P140, $P139["Node"]
    new $P141, "Float"
    assign $P141, 0
    set $I105, $P141
    find_lex $P1712, "$ast"
    unless_null $P1712, vivify_786
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P142, $P1712[$I105]
    unless_null $P142, vivify_787
    new $P142, "Undef"
  vivify_787:
    $P143 = $P140."ACCEPTS"($P142)
    isfalse $I106, $P143
    new $P134, 'Integer'
    set $P134, $I106
  if_1711_end:
    if $P134, if_1710
    new $P145, "Float"
    assign $P145, 0
    set $P133, $P145
    goto if_1710_end
  if_1710:
    find_lex $P144, "$ast"
    unless_null $P144, vivify_788
    new $P144, "Undef"
  vivify_788:
    set $P133, $P144
  if_1710_end:
.annotate 'line', 293
    store_lex "$lastlit", $P133
.annotate 'line', 289
    set $P121, $P133
.annotate 'line', 286
    goto if_1703_end
  if_1703:
.annotate 'line', 287
    new $P133, "Float"
    assign $P133, 0
    set $I104, $P133
    find_lex $P1707, "$lastlit"
    unless_null $P1707, vivify_789
    $P1707 = root_new ['parrot';'ResizablePMCArray']
  vivify_789:
    set $P134, $P1707[$I104]
    unless_null $P134, vivify_790
    new $P134, "Undef"
  vivify_790:
    new $P135, "Float"
    assign $P135, 0
    set $I105, $P135
    find_lex $P1708, "$ast"
    unless_null $P1708, vivify_791
    $P1708 = root_new ['parrot';'ResizablePMCArray']
  vivify_791:
    set $P136, $P1708[$I105]
    unless_null $P136, vivify_792
    new $P136, "Undef"
  vivify_792:
    concat $P137, $P134, $P136
    new $P138, "Float"
    assign $P138, 0
    set $I106, $P138
    find_lex $P1709, "$lastlit"
    unless_null $P1709, vivify_793
    $P1709 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1709
  vivify_793:
    set $P1709[$I106], $P137
.annotate 'line', 286
    set $P121, $P137
  if_1703_end:
.annotate 'line', 284
    set $P119, $P121
  if_1702_end:
.annotate 'line', 282
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom" :anon :subid("203_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1715
    .param pmc param_1716
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 300
    .const 'Sub' $P1722 = "204_1315150101.74" 
    capture_lex $P1722
    .lex "self", param_1715
    .lex "$/", param_1716
.annotate 'line', 301
    new $P113, "Undef"
    set $P1717, $P113
    .lex "$past", $P1717
    find_lex $P1718, "$/"
    unless_null $P1718, vivify_795
    $P1718 = root_new ['parrot';'Hash']
  vivify_795:
    set $P114, $P1718["atom"]
    unless_null $P114, vivify_796
    new $P114, "Undef"
  vivify_796:
    $P115 = $P114."ast"()
    store_lex "$past", $P115
.annotate 'line', 302
    find_lex $P1720, "$/"
    unless_null $P1720, vivify_797
    $P1720 = root_new ['parrot';'Hash']
  vivify_797:
    set $P114, $P1720["quantifier"]
    unless_null $P114, vivify_798
    new $P114, "Undef"
  vivify_798:
    if $P114, if_1719
.annotate 'line', 308
    new $P117, "Float"
    assign $P117, 0
    set $I100, $P117
    find_lex $P1728, "$/"
    unless_null $P1728, vivify_799
    $P1728 = root_new ['parrot';'Hash']
  vivify_799:
    set $P1729, $P1728["backmod"]
    unless_null $P1729, vivify_800
    $P1729 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    set $P118, $P1729[$I100]
    unless_null $P118, vivify_801
    new $P118, "Undef"
  vivify_801:
    unless $P118, if_1727_end
    find_lex $P119, "$past"
    unless_null $P119, vivify_802
    new $P119, "Undef"
  vivify_802:
    new $P120, "Float"
    assign $P120, 0
    set $I101, $P120
    find_lex $P1730, "$/"
    unless_null $P1730, vivify_803
    $P1730 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1731, $P1730["backmod"]
    unless_null $P1731, vivify_804
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P121, $P1731[$I101]
    unless_null $P121, vivify_805
    new $P121, "Undef"
  vivify_805:
    "backmod"($P119, $P121)
  if_1727_end:
    goto if_1719_end
  if_1719:
.annotate 'line', 302
    .const 'Sub' $P1722 = "204_1315150101.74" 
    capture_lex $P1722
    $P1722()
  if_1719_end:
.annotate 'line', 309
    find_lex $P116, "$past"
    unless_null $P116, vivify_814
    new $P116, "Undef"
  vivify_814:
    if $P116, if_1734
    set $P115, $P116
    goto if_1734_end
  if_1734:
    find_lex $P117, "$past"
    unless_null $P117, vivify_815
    new $P117, "Undef"
  vivify_815:
    $P118 = $P117."backtrack"()
    isfalse $I100, $P118
    new $P115, 'Integer'
    set $P115, $I100
  if_1734_end:
    if $P115, if_1733
    set $P114, $P115
    goto if_1733_end
  if_1733:
    new $P119, "Float"
    assign $P119, 0
    set $I101, $P119
    find_lex $P120, "$?PACKAGE"
    get_who $P121, $P120
    set $P1735, $P121["@MODIFIERS"]
    unless_null $P1735, vivify_816
    $P1735 = root_new ['parrot';'ResizablePMCArray']
  vivify_816:
    set $P1736, $P1735[$I101]
    unless_null $P1736, vivify_817
    $P1736 = root_new ['parrot';'Hash']
  vivify_817:
    set $P122, $P1736["r"]
    unless_null $P122, vivify_818
    new $P122, "Undef"
  vivify_818:
    set $P114, $P122
  if_1733_end:
    unless $P114, if_1732_end
.annotate 'line', 310
    find_lex $P123, "$past"
    unless_null $P123, vivify_819
    new $P123, "Undef"
  vivify_819:
    $P123."backtrack"("r")
  if_1732_end:
.annotate 'line', 312
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_820
    new $P115, "Undef"
  vivify_820:
    $P116 = $P114."!make"($P115)
.annotate 'line', 300
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1721"  :anon :subid("204_1315150101.74") :outer("203_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 304
    new $P115, "Undef"
    set $P1723, $P115
    .lex "$qast", $P1723
.annotate 'line', 303
    find_lex $P116, "$past"
    unless_null $P116, vivify_806
    new $P116, "Undef"
  vivify_806:
    isfalse $I100, $P116
    unless $I100, if_1724_end
    find_lex $P117, "$/"
    unless_null $P117, vivify_807
    new $P117, "Undef"
  vivify_807:
    $P118 = $P117."CURSOR"()
    $P118."panic"("Quantifier follows nothing")
  if_1724_end:
.annotate 'line', 304
    new $P116, "Float"
    assign $P116, 0
    set $I100, $P116
    find_lex $P1725, "$/"
    unless_null $P1725, vivify_808
    $P1725 = root_new ['parrot';'Hash']
  vivify_808:
    set $P1726, $P1725["quantifier"]
    unless_null $P1726, vivify_809
    $P1726 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
    set $P117, $P1726[$I100]
    unless_null $P117, vivify_810
    new $P117, "Undef"
  vivify_810:
    $P118 = $P117."ast"()
    store_lex "$qast", $P118
.annotate 'line', 305
    find_lex $P116, "$qast"
    unless_null $P116, vivify_811
    new $P116, "Undef"
  vivify_811:
    find_lex $P117, "$past"
    unless_null $P117, vivify_812
    new $P117, "Undef"
  vivify_812:
    $P116."unshift"($P117)
.annotate 'line', 306
    find_lex $P116, "$qast"
    unless_null $P116, vivify_813
    new $P116, "Undef"
  vivify_813:
    store_lex "$past", $P116
.annotate 'line', 302
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom" :anon :subid("205_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1738
    .param pmc param_1739
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 315
    .lex "self", param_1738
    .lex "$/", param_1739
.annotate 'line', 316
    new $P113, "Undef"
    set $P1740, $P113
    .lex "$past", $P1740
.annotate 'line', 315
    find_lex $P114, "$past"
    unless_null $P114, vivify_821
    new $P114, "Undef"
  vivify_821:
.annotate 'line', 317
    find_lex $P1742, "$/"
    unless_null $P1742, vivify_822
    $P1742 = root_new ['parrot';'Hash']
  vivify_822:
    set $P114, $P1742["metachar"]
    unless_null $P114, vivify_823
    new $P114, "Undef"
  vivify_823:
    if $P114, if_1741
.annotate 'line', 319
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$/"
    unless_null $P119, vivify_824
    new $P119, "Undef"
  vivify_824:
    set $S100, $P119
    find_lex $P120, "$/"
    unless_null $P120, vivify_825
    new $P120, "Undef"
  vivify_825:
    $P121 = $P118."new"($S100, "literal" :named("pasttype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 320
    new $P115, "Float"
    assign $P115, 0
    set $I100, $P115
    find_lex $P116, "$?PACKAGE"
    get_who $P117, $P116
    set $P1745, $P117["@MODIFIERS"]
    unless_null $P1745, vivify_826
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $P1746, $P1745[$I100]
    unless_null $P1746, vivify_827
    $P1746 = root_new ['parrot';'Hash']
  vivify_827:
    set $P118, $P1746["i"]
    unless_null $P118, vivify_828
    new $P118, "Undef"
  vivify_828:
    unless $P118, if_1744_end
    find_lex $P119, "$past"
    unless_null $P119, vivify_829
    new $P119, "Undef"
  vivify_829:
    $P119."subtype"("ignorecase")
  if_1744_end:
.annotate 'line', 318
    goto if_1741_end
  if_1741:
.annotate 'line', 317
    find_lex $P1743, "$/"
    unless_null $P1743, vivify_830
    $P1743 = root_new ['parrot';'Hash']
  vivify_830:
    set $P115, $P1743["metachar"]
    unless_null $P115, vivify_831
    new $P115, "Undef"
  vivify_831:
    $P116 = $P115."ast"()
    store_lex "$past", $P116
  if_1741_end:
.annotate 'line', 322
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_832
    new $P115, "Undef"
  vivify_832:
    $P116 = $P114."!make"($P115)
.annotate 'line', 315
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>" :anon :subid("206_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1748
    .param pmc param_1749
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 325
    .lex "self", param_1748
    .lex "$/", param_1749
.annotate 'line', 326
    new $P113, "Undef"
    set $P1750, $P113
    .lex "$past", $P1750
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_833
    new $P118, "Undef"
  vivify_833:
    $P119 = $P117."new"("quant" :named("pasttype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 327
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_834
    new $P115, "Undef"
  vivify_834:
    find_lex $P1751, "$/"
    unless_null $P1751, vivify_835
    $P1751 = root_new ['parrot';'Hash']
  vivify_835:
    set $P116, $P1751["backmod"]
    unless_null $P116, vivify_836
    new $P116, "Undef"
  vivify_836:
    $P117 = "backmod"($P115, $P116)
    $P118 = $P114."!make"($P117)
.annotate 'line', 325
    .return ($P118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>" :anon :subid("207_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1753
    .param pmc param_1754
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 330
    .lex "self", param_1753
    .lex "$/", param_1754
.annotate 'line', 331
    new $P113, "Undef"
    set $P1755, $P113
    .lex "$past", $P1755
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_837
    new $P118, "Undef"
  vivify_837:
    $P119 = $P117."new"("quant" :named("pasttype"), 1 :named("min"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 332
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_838
    new $P115, "Undef"
  vivify_838:
    find_lex $P1756, "$/"
    unless_null $P1756, vivify_839
    $P1756 = root_new ['parrot';'Hash']
  vivify_839:
    set $P116, $P1756["backmod"]
    unless_null $P116, vivify_840
    new $P116, "Undef"
  vivify_840:
    $P117 = "backmod"($P115, $P116)
    $P118 = $P114."!make"($P117)
.annotate 'line', 330
    .return ($P118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>" :anon :subid("208_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1758
    .param pmc param_1759
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 335
    .lex "self", param_1758
    .lex "$/", param_1759
.annotate 'line', 336
    new $P113, "Undef"
    set $P1760, $P113
    .lex "$past", $P1760
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_841
    new $P118, "Undef"
  vivify_841:
    $P119 = $P117."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 337
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_842
    new $P115, "Undef"
  vivify_842:
    find_lex $P1761, "$/"
    unless_null $P1761, vivify_843
    $P1761 = root_new ['parrot';'Hash']
  vivify_843:
    set $P116, $P1761["backmod"]
    unless_null $P116, vivify_844
    new $P116, "Undef"
  vivify_844:
    $P117 = "backmod"($P115, $P116)
    $P114."!make"($P117)
.annotate 'line', 338
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_845
    new $P115, "Undef"
  vivify_845:
    $P116 = $P114."!make"($P115)
.annotate 'line', 335
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>" :anon :subid("209_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1763
    .param pmc param_1764
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 341
    .const 'Sub' $P1774 = "210_1315150101.74" 
    capture_lex $P1774
    .lex "self", param_1763
    .lex "$/", param_1764
.annotate 'line', 342
    new $P113, "Undef"
    set $P1765, $P113
    .lex "$past", $P1765
.annotate 'line', 343
    new $P114, "Undef"
    set $P1766, $P114
    .lex "$ws", $P1766
.annotate 'line', 341
    find_lex $P115, "$past"
    unless_null $P115, vivify_846
    new $P115, "Undef"
  vivify_846:
.annotate 'line', 343
    find_lex $P1768, "$/"
    unless_null $P1768, vivify_847
    $P1768 = root_new ['parrot';'Hash']
  vivify_847:
    set $P116, $P1768["normspace"]
    unless_null $P116, vivify_848
    new $P116, "Undef"
  vivify_848:
    if $P116, if_1767
    set $P115, $P116
    goto if_1767_end
  if_1767:
    new $P117, "Float"
    assign $P117, 0
    set $I100, $P117
    find_lex $P118, "$?PACKAGE"
    get_who $P119, $P118
    set $P1769, $P119["@MODIFIERS"]
    unless_null $P1769, vivify_849
    $P1769 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P1770, $P1769[$I100]
    unless_null $P1770, vivify_850
    $P1770 = root_new ['parrot';'Hash']
  vivify_850:
    set $P120, $P1770["s"]
    unless_null $P120, vivify_851
    new $P120, "Undef"
  vivify_851:
    set $P115, $P120
  if_1767_end:
    store_lex "$ws", $P115
.annotate 'line', 344
    find_lex $P1772, "$/"
    unless_null $P1772, vivify_852
    $P1772 = root_new ['parrot';'Hash']
  vivify_852:
    set $P115, $P1772["quantified_atom"]
    unless_null $P115, vivify_853
    new $P115, "Undef"
  vivify_853:
    if $P115, if_1771
.annotate 'line', 360
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P1778, "$/"
    unless_null $P1778, vivify_854
    $P1778 = root_new ['parrot';'Hash']
  vivify_854:
    set $P121, $P1778["min"]
    unless_null $P121, vivify_855
    new $P121, "Undef"
  vivify_855:
    set $N100, $P121
    find_lex $P122, "$/"
    unless_null $P122, vivify_856
    new $P122, "Undef"
  vivify_856:
    $P124 = $P120."new"("quant" :named("pasttype"), $N100 :named("min"), $P122 :named("node"))
    store_lex "$past", $P124
.annotate 'line', 361
    find_lex $P1780, "$/"
    unless_null $P1780, vivify_857
    $P1780 = root_new ['parrot';'Hash']
  vivify_857:
    set $P117, $P1780["max"]
    unless_null $P117, vivify_858
    new $P117, "Undef"
  vivify_858:
    isfalse $I100, $P117
    if $I100, if_1779
.annotate 'line', 362
    new $P118, "Float"
    assign $P118, 0
    set $I101, $P118
    find_lex $P1783, "$/"
    unless_null $P1783, vivify_859
    $P1783 = root_new ['parrot';'Hash']
  vivify_859:
    set $P1784, $P1783["max"]
    unless_null $P1784, vivify_860
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $P119, $P1784[$I101]
    unless_null $P119, vivify_861
    new $P119, "Undef"
  vivify_861:
    set $S100, $P119
    isne $I102, $S100, "*"
    unless $I102, if_1782_end
    find_lex $P120, "$past"
    unless_null $P120, vivify_862
    new $P120, "Undef"
  vivify_862:
    new $P121, "Float"
    assign $P121, 0
    set $I103, $P121
    find_lex $P1785, "$/"
    unless_null $P1785, vivify_863
    $P1785 = root_new ['parrot';'Hash']
  vivify_863:
    set $P1786, $P1785["max"]
    unless_null $P1786, vivify_864
    $P1786 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P122, $P1786[$I103]
    unless_null $P122, vivify_865
    new $P122, "Undef"
  vivify_865:
    set $N100, $P122
    $P120."max"($N100)
  if_1782_end:
    goto if_1779_end
  if_1779:
.annotate 'line', 361
    find_lex $P118, "$past"
    unless_null $P118, vivify_866
    new $P118, "Undef"
  vivify_866:
    find_lex $P1781, "$/"
    unless_null $P1781, vivify_867
    $P1781 = root_new ['parrot';'Hash']
  vivify_867:
    set $P119, $P1781["min"]
    unless_null $P119, vivify_868
    new $P119, "Undef"
  vivify_868:
    set $N100, $P119
    $P118."max"($N100)
  if_1779_end:
.annotate 'line', 363
    find_lex $P117, "$ws"
    unless_null $P117, vivify_869
    new $P117, "Undef"
  vivify_869:
    unless $P117, if_1787_end
    find_lex $P118, "$past"
    unless_null $P118, vivify_870
    new $P118, "Undef"
  vivify_870:
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    $P124 = $P122."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P118."sep"($P124)
  if_1787_end:
.annotate 'line', 359
    goto if_1771_end
  if_1771:
.annotate 'line', 344
    .const 'Sub' $P1774 = "210_1315150101.74" 
    capture_lex $P1774
    $P1774()
  if_1771_end:
.annotate 'line', 367
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_877
    new $P116, "Undef"
  vivify_877:
    find_lex $P1788, "$/"
    unless_null $P1788, vivify_878
    $P1788 = root_new ['parrot';'Hash']
  vivify_878:
    set $P117, $P1788["backmod"]
    unless_null $P117, vivify_879
    new $P117, "Undef"
  vivify_879:
    $P118 = "backmod"($P116, $P117)
    $P119 = $P115."!make"($P118)
.annotate 'line', 341
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1773"  :anon :subid("210_1315150101.74") :outer("209_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 345
    new $P116, "Undef"
    set $P1775, $P116
    .lex "$ast", $P1775
    find_lex $P1776, "$/"
    unless_null $P1776, vivify_871
    $P1776 = root_new ['parrot';'Hash']
  vivify_871:
    set $P117, $P1776["quantified_atom"]
    unless_null $P117, vivify_872
    new $P117, "Undef"
  vivify_872:
    $P118 = $P117."ast"()
    store_lex "$ast", $P118
.annotate 'line', 346
    find_lex $P117, "$ws"
    unless_null $P117, vivify_873
    new $P117, "Undef"
  vivify_873:
    unless $P117, if_1777_end
.annotate 'line', 347
    get_hll_global $P118, "GLOBAL"
    nqp_get_package_through_who $P119, $P118, "PAST"
    get_who $P120, $P119
    set $P121, $P120["Regex"]
.annotate 'line', 349
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "PAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    $P126 = $P125."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P127, "$ast"
    unless_null $P127, vivify_874
    new $P127, "Undef"
  vivify_874:
.annotate 'line', 352
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "PAST"
    get_who $P130, $P129
    set $P131, $P130["Regex"]
    $P132 = $P131."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P133 = $P121."new"($P126, $P127, $P132, "concat" :named("pasttype"))
.annotate 'line', 347
    store_lex "$ast", $P133
  if_1777_end:
.annotate 'line', 356
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P121, "$ast"
    unless_null $P121, vivify_875
    new $P121, "Undef"
  vivify_875:
    find_lex $P122, "$/"
    unless_null $P122, vivify_876
    new $P122, "Undef"
  vivify_876:
    $P123 = $P120."new"("quant" :named("pasttype"), 1 :named("min"), $P121 :named("sep"), $P122 :named("node"))
    store_lex "$past", $P123
.annotate 'line', 344
    .return ($P123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>" :anon :subid("211_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1790
    .param pmc param_1791
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 370
    .lex "self", param_1790
    .lex "$/", param_1791
.annotate 'line', 371
    new $P113, "Undef"
    set $P1792, $P113
    .lex "$past", $P1792
.annotate 'line', 372
    new $P115, "Float"
    assign $P115, 0
    set $I100, $P115
    find_lex $P116, "$?PACKAGE"
    get_who $P117, $P116
    set $P1794, $P117["@MODIFIERS"]
    unless_null $P1794, vivify_880
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    set $P1795, $P1794[$I100]
    unless_null $P1795, vivify_881
    $P1795 = root_new ['parrot';'Hash']
  vivify_881:
    set $P118, $P1795["s"]
    unless_null $P118, vivify_882
    new $P118, "Undef"
  vivify_882:
    if $P118, if_1793
    new $P125, "Float"
    assign $P125, 0
    set $P114, $P125
    goto if_1793_end
  if_1793:
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
    find_lex $P123, "$/"
    unless_null $P123, vivify_883
    new $P123, "Undef"
  vivify_883:
    $P124 = $P122."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P123 :named("node"))
    set $P114, $P124
  if_1793_end:
    store_lex "$past", $P114
.annotate 'line', 375
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_884
    new $P115, "Undef"
  vivify_884:
    $P116 = $P114."!make"($P115)
.annotate 'line', 370
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>" :anon :subid("212_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1797
    .param pmc param_1798
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 379
    .lex "self", param_1797
    .lex "$/", param_1798
.annotate 'line', 380
    find_lex $P113, "$/"
    find_lex $P1799, "$/"
    unless_null $P1799, vivify_885
    $P1799 = root_new ['parrot';'Hash']
  vivify_885:
    set $P114, $P1799["nibbler"]
    unless_null $P114, vivify_886
    new $P114, "Undef"
  vivify_886:
    $P115 = $P114."ast"()
    $P116 = $P113."!make"($P115)
.annotate 'line', 379
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>" :anon :subid("213_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1801
    .param pmc param_1802
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 383
    .lex "self", param_1801
    .lex "$/", param_1802
.annotate 'line', 384
    new $P113, "Undef"
    set $P1803, $P113
    .lex "$subpast", $P1803
.annotate 'line', 385
    new $P114, "Undef"
    set $P1804, $P114
    .lex "$past", $P1804
.annotate 'line', 384
    find_lex $P1805, "$/"
    unless_null $P1805, vivify_887
    $P1805 = root_new ['parrot';'Hash']
  vivify_887:
    set $P115, $P1805["nibbler"]
    unless_null $P115, vivify_888
    new $P115, "Undef"
  vivify_888:
    $P116 = $P115."ast"()
    $P117 = "buildsub"($P116)
    store_lex "$subpast", $P117
.annotate 'line', 385
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$subpast"
    unless_null $P119, vivify_889
    new $P119, "Undef"
  vivify_889:
    find_lex $P120, "$/"
    unless_null $P120, vivify_890
    new $P120, "Undef"
  vivify_890:
    $P121 = $P118."new"($P119, "subrule" :named("pasttype"), "capture" :named("subtype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 387
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_891
    new $P116, "Undef"
  vivify_891:
    $P117 = $P115."!make"($P116)
.annotate 'line', 383
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>" :anon :subid("214_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1807
    .param pmc param_1808
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 390
    .lex "self", param_1807
    .lex "$/", param_1808
.annotate 'line', 391
    new $P113, "Undef"
    set $P1809, $P113
    .lex "$quote", $P1809
.annotate 'line', 393
    new $P114, "Undef"
    set $P1810, $P114
    .lex "$past", $P1810
.annotate 'line', 391
    find_lex $P1811, "$/"
    unless_null $P1811, vivify_892
    $P1811 = root_new ['parrot';'Hash']
  vivify_892:
    set $P115, $P1811["quote_EXPR"]
    unless_null $P115, vivify_893
    new $P115, "Undef"
  vivify_893:
    $P116 = $P115."ast"()
    store_lex "$quote", $P116
.annotate 'line', 392
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Val"]
    find_lex $P119, "$quote"
    unless_null $P119, vivify_894
    new $P119, "Undef"
  vivify_894:
    $P120 = $P118."ACCEPTS"($P119)
    unless $P120, if_1812_end
    find_lex $P121, "$quote"
    unless_null $P121, vivify_895
    new $P121, "Undef"
  vivify_895:
    $P122 = $P121."value"()
    store_lex "$quote", $P122
  if_1812_end:
.annotate 'line', 393
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$quote"
    unless_null $P119, vivify_896
    new $P119, "Undef"
  vivify_896:
    find_lex $P120, "$/"
    unless_null $P120, vivify_897
    new $P120, "Undef"
  vivify_897:
    $P121 = $P118."new"($P119, "literal" :named("pasttype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 394
    new $P115, "Float"
    assign $P115, 0
    set $I100, $P115
    find_lex $P116, "$?PACKAGE"
    get_who $P117, $P116
    set $P1814, $P117["@MODIFIERS"]
    unless_null $P1814, vivify_898
    $P1814 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    set $P1815, $P1814[$I100]
    unless_null $P1815, vivify_899
    $P1815 = root_new ['parrot';'Hash']
  vivify_899:
    set $P118, $P1815["i"]
    unless_null $P118, vivify_900
    new $P118, "Undef"
  vivify_900:
    unless $P118, if_1813_end
    find_lex $P119, "$past"
    unless_null $P119, vivify_901
    new $P119, "Undef"
  vivify_901:
    $P119."subtype"("ignorecase")
  if_1813_end:
.annotate 'line', 395
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_902
    new $P116, "Undef"
  vivify_902:
    $P117 = $P115."!make"($P116)
.annotate 'line', 390
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">" :anon :subid("215_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1817
    .param pmc param_1818
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 398
    .lex "self", param_1817
    .lex "$/", param_1818
.annotate 'line', 399
    new $P113, "Undef"
    set $P1819, $P113
    .lex "$quote", $P1819
.annotate 'line', 401
    new $P114, "Undef"
    set $P1820, $P114
    .lex "$past", $P1820
.annotate 'line', 399
    find_lex $P1821, "$/"
    unless_null $P1821, vivify_903
    $P1821 = root_new ['parrot';'Hash']
  vivify_903:
    set $P115, $P1821["quote_EXPR"]
    unless_null $P115, vivify_904
    new $P115, "Undef"
  vivify_904:
    $P116 = $P115."ast"()
    store_lex "$quote", $P116
.annotate 'line', 400
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Val"]
    find_lex $P119, "$quote"
    unless_null $P119, vivify_905
    new $P119, "Undef"
  vivify_905:
    $P120 = $P118."ACCEPTS"($P119)
    unless $P120, if_1822_end
    find_lex $P121, "$quote"
    unless_null $P121, vivify_906
    new $P121, "Undef"
  vivify_906:
    $P122 = $P121."value"()
    store_lex "$quote", $P122
  if_1822_end:
.annotate 'line', 401
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$quote"
    unless_null $P119, vivify_907
    new $P119, "Undef"
  vivify_907:
    find_lex $P120, "$/"
    unless_null $P120, vivify_908
    new $P120, "Undef"
  vivify_908:
    $P121 = $P118."new"($P119, "literal" :named("pasttype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 402
    new $P115, "Float"
    assign $P115, 0
    set $I100, $P115
    find_lex $P116, "$?PACKAGE"
    get_who $P117, $P116
    set $P1824, $P117["@MODIFIERS"]
    unless_null $P1824, vivify_909
    $P1824 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    set $P1825, $P1824[$I100]
    unless_null $P1825, vivify_910
    $P1825 = root_new ['parrot';'Hash']
  vivify_910:
    set $P118, $P1825["i"]
    unless_null $P118, vivify_911
    new $P118, "Undef"
  vivify_911:
    unless $P118, if_1823_end
    find_lex $P119, "$past"
    unless_null $P119, vivify_912
    new $P119, "Undef"
  vivify_912:
    $P119."subtype"("ignorecase")
  if_1823_end:
.annotate 'line', 403
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_913
    new $P116, "Undef"
  vivify_913:
    $P117 = $P115."!make"($P116)
.annotate 'line', 398
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>" :anon :subid("216_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1827
    .param pmc param_1828
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 406
    .lex "self", param_1827
    .lex "$/", param_1828
.annotate 'line', 407
    new $P113, "Undef"
    set $P1829, $P113
    .lex "$past", $P1829
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_914
    new $P118, "Undef"
  vivify_914:
    $P119 = $P117."new"("charclass" :named("pasttype"), "." :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 408
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_915
    new $P115, "Undef"
  vivify_915:
    $P116 = $P114."!make"($P115)
.annotate 'line', 406
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>" :anon :subid("217_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1831
    .param pmc param_1832
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 411
    .lex "self", param_1831
    .lex "$/", param_1832
.annotate 'line', 412
    new $P113, "Undef"
    set $P1833, $P113
    .lex "$past", $P1833
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_916
    new $P118, "Undef"
  vivify_916:
    $P119 = $P117."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 413
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_917
    new $P115, "Undef"
  vivify_917:
    $P116 = $P114."!make"($P115)
.annotate 'line', 411
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>" :anon :subid("218_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1835
    .param pmc param_1836
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 416
    .lex "self", param_1835
    .lex "$/", param_1836
.annotate 'line', 417
    new $P113, "Undef"
    set $P1837, $P113
    .lex "$past", $P1837
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_918
    new $P118, "Undef"
  vivify_918:
    $P119 = $P117."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 418
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_919
    new $P115, "Undef"
  vivify_919:
    $P116 = $P114."!make"($P115)
.annotate 'line', 416
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>" :anon :subid("219_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1839
    .param pmc param_1840
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 421
    .lex "self", param_1839
    .lex "$/", param_1840
.annotate 'line', 422
    new $P113, "Undef"
    set $P1841, $P113
    .lex "$past", $P1841
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_920
    new $P118, "Undef"
  vivify_920:
    $P119 = $P117."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 423
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_921
    new $P115, "Undef"
  vivify_921:
    $P116 = $P114."!make"($P115)
.annotate 'line', 421
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>" :anon :subid("220_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1843
    .param pmc param_1844
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 426
    .lex "self", param_1843
    .lex "$/", param_1844
.annotate 'line', 427
    new $P113, "Undef"
    set $P1845, $P113
    .lex "$past", $P1845
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_922
    new $P118, "Undef"
  vivify_922:
    $P119 = $P117."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 428
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_923
    new $P115, "Undef"
  vivify_923:
    $P116 = $P114."!make"($P115)
.annotate 'line', 426
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>" :anon :subid("221_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1847
    .param pmc param_1848
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 431
    .lex "self", param_1847
    .lex "$/", param_1848
.annotate 'line', 432
    new $P113, "Undef"
    set $P1849, $P113
    .lex "$past", $P1849
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_924
    new $P118, "Undef"
  vivify_924:
    $P119 = $P117."new"("cut" :named("pasttype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 433
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_925
    new $P115, "Undef"
  vivify_925:
    $P116 = $P114."!make"($P115)
.annotate 'line', 431
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>" :anon :subid("222_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 436
    .lex "self", param_1851
    .lex "$/", param_1852
.annotate 'line', 437
    new $P113, "Undef"
    set $P1853, $P113
    .lex "$past", $P1853
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_926
    new $P118, "Undef"
  vivify_926:
    $P119 = $P117."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 438
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_927
    new $P115, "Undef"
  vivify_927:
    $P116 = $P114."!make"($P115)
.annotate 'line', 436
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>" :anon :subid("223_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1855
    .param pmc param_1856
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 441
    .lex "self", param_1855
    .lex "$/", param_1856
.annotate 'line', 442
    new $P113, "Undef"
    set $P1857, $P113
    .lex "$past", $P1857
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_928
    new $P118, "Undef"
  vivify_928:
    $P119 = $P117."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P118 :named("node"))
    store_lex "$past", $P119
.annotate 'line', 443
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_929
    new $P115, "Undef"
  vivify_929:
    $P116 = $P114."!make"($P115)
.annotate 'line', 441
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>" :anon :subid("224_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1859
    .param pmc param_1860
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 446
    .lex "self", param_1859
    .lex "$/", param_1860
.annotate 'line', 447
    find_lex $P113, "$/"
    find_lex $P1861, "$/"
    unless_null $P1861, vivify_930
    $P1861 = root_new ['parrot';'Hash']
  vivify_930:
    set $P114, $P1861["backslash"]
    unless_null $P114, vivify_931
    new $P114, "Undef"
  vivify_931:
    $P115 = $P114."ast"()
    $P116 = $P113."!make"($P115)
.annotate 'line', 446
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>" :anon :subid("225_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1863
    .param pmc param_1864
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 450
    .lex "self", param_1863
    .lex "$/", param_1864
.annotate 'line', 451
    find_lex $P113, "$/"
    find_lex $P1865, "$/"
    unless_null $P1865, vivify_932
    $P1865 = root_new ['parrot';'Hash']
  vivify_932:
    set $P114, $P1865["mod_internal"]
    unless_null $P114, vivify_933
    new $P114, "Undef"
  vivify_933:
    $P115 = $P114."ast"()
    $P116 = $P113."!make"($P115)
.annotate 'line', 450
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>" :anon :subid("226_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1867
    .param pmc param_1868
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 454
    .lex "self", param_1867
    .lex "$/", param_1868
.annotate 'line', 455
    find_lex $P113, "$/"
    find_lex $P1869, "$/"
    unless_null $P1869, vivify_934
    $P1869 = root_new ['parrot';'Hash']
  vivify_934:
    set $P114, $P1869["assertion"]
    unless_null $P114, vivify_935
    new $P114, "Undef"
  vivify_935:
    $P115 = $P114."ast"()
    $P116 = $P113."!make"($P115)
.annotate 'line', 454
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>" :anon :subid("227_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1871
    .param pmc param_1872
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 458
    .lex "self", param_1871
    .lex "$/", param_1872
.annotate 'line', 459
    find_lex $P113, "$/"
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 460
    find_lex $P1873, "$/"
    unless_null $P1873, vivify_936
    $P1873 = root_new ['parrot';'Hash']
  vivify_936:
    set $P118, $P1873["EXPR"]
    unless_null $P118, vivify_937
    new $P118, "Undef"
  vivify_937:
    $P119 = $P118."ast"()
.annotate 'line', 461
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Regex"]
.annotate 'line', 462
    find_lex $P1874, "$/"
    unless_null $P1874, vivify_938
    $P1874 = root_new ['parrot';'Hash']
  vivify_938:
    set $P124, $P1874["GOAL"]
    unless_null $P124, vivify_939
    new $P124, "Undef"
  vivify_939:
    $P125 = $P124."ast"()
.annotate 'line', 463
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    find_lex $P1875, "$/"
    unless_null $P1875, vivify_940
    $P1875 = root_new ['parrot';'Hash']
  vivify_940:
    set $P130, $P1875["GOAL"]
    unless_null $P130, vivify_941
    new $P130, "Undef"
  vivify_941:
    set $S100, $P130
    $P131 = $P129."new"("FAILGOAL", $S100, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P132 = $P123."new"($P125, $P131, "alt" :named("pasttype"))
.annotate 'line', 461
    $P133 = $P117."new"($P119, $P132, "concat" :named("pasttype"))
.annotate 'line', 459
    $P134 = $P113."!make"($P133)
.annotate 'line', 458
    .return ($P134)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>" :anon :subid("228_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1877
    .param pmc param_1878
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 471
    .lex "self", param_1877
    .lex "$/", param_1878
.annotate 'line', 472
    new $P113, "Undef"
    set $P1879, $P113
    .lex "$past", $P1879
.annotate 'line', 473
    find_lex $P1881, "$/"
    unless_null $P1881, vivify_942
    $P1881 = root_new ['parrot';'Hash']
  vivify_942:
    set $P115, $P1881["key"]
    unless_null $P115, vivify_943
    new $P115, "Undef"
  vivify_943:
    if $P115, if_1880
    new $P124, "Float"
    assign $P124, 0
    set $P114, $P124
    goto if_1880_end
  if_1880:
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Regex"]
    new $P120, "Float"
    assign $P120, 0
    set $I100, $P120
    find_lex $P1882, "$/"
    unless_null $P1882, vivify_944
    $P1882 = root_new ['parrot';'Hash']
  vivify_944:
    set $P1883, $P1882["key"]
    unless_null $P1883, vivify_945
    $P1883 = root_new ['parrot';'ResizablePMCArray']
  vivify_945:
    set $P121, $P1883[$I100]
    unless_null $P121, vivify_946
    new $P121, "Undef"
  vivify_946:
    set $S100, $P121
    find_lex $P122, "$/"
    unless_null $P122, vivify_947
    new $P122, "Undef"
  vivify_947:
    $P123 = $P119."new"($S100, "reduce" :named("pasttype"), $P122 :named("node"))
    set $P114, $P123
  if_1880_end:
    store_lex "$past", $P114
.annotate 'line', 475
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_948
    new $P115, "Undef"
  vivify_948:
    $P116 = $P114."!make"($P115)
.annotate 'line', 471
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>" :anon :subid("229_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1885
    .param pmc param_1886
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 478
    .lex "self", param_1885
    .lex "$/", param_1886
.annotate 'line', 479
    new $P113, "Undef"
    set $P1887, $P113
    .lex "$past", $P1887
.annotate 'line', 480
    new $P114, "Undef"
    set $P1888, $P114
    .lex "$name", $P1888
.annotate 'line', 478
    find_lex $P115, "$past"
    unless_null $P115, vivify_949
    new $P115, "Undef"
  vivify_949:
.annotate 'line', 480
    find_lex $P1890, "$/"
    unless_null $P1890, vivify_950
    $P1890 = root_new ['parrot';'Hash']
  vivify_950:
    set $P116, $P1890["pos"]
    unless_null $P116, vivify_951
    new $P116, "Undef"
  vivify_951:
    if $P116, if_1889
    find_lex $P1892, "$/"
    unless_null $P1892, vivify_952
    $P1892 = root_new ['parrot';'Hash']
  vivify_952:
    set $P118, $P1892["name"]
    unless_null $P118, vivify_953
    new $P118, "Undef"
  vivify_953:
    set $S100, $P118
    new $P115, 'String'
    set $P115, $S100
    goto if_1889_end
  if_1889:
    find_lex $P1891, "$/"
    unless_null $P1891, vivify_954
    $P1891 = root_new ['parrot';'Hash']
  vivify_954:
    set $P117, $P1891["pos"]
    unless_null $P117, vivify_955
    new $P117, "Undef"
  vivify_955:
    set $N100, $P117
    new $P115, 'Float'
    set $P115, $N100
  if_1889_end:
    store_lex "$name", $P115
.annotate 'line', 481
    find_lex $P1894, "$/"
    unless_null $P1894, vivify_956
    $P1894 = root_new ['parrot';'Hash']
  vivify_956:
    set $P115, $P1894["quantified_atom"]
    unless_null $P115, vivify_957
    new $P115, "Undef"
  vivify_957:
    if $P115, if_1893
.annotate 'line', 492
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Regex"]
    find_lex $P120, "$name"
    unless_null $P120, vivify_958
    new $P120, "Undef"
  vivify_958:
    find_lex $P121, "$/"
    unless_null $P121, vivify_959
    new $P121, "Undef"
  vivify_959:
    $P122 = $P119."new"("!BACKREF", $P120, "subrule" :named("pasttype"), "method" :named("subtype"), $P121 :named("node"))
    store_lex "$past", $P122
.annotate 'line', 491
    goto if_1893_end
  if_1893:
.annotate 'line', 482
    new $P116, "Float"
    assign $P116, 0
    set $I100, $P116
    find_lex $P1895, "$/"
    unless_null $P1895, vivify_960
    $P1895 = root_new ['parrot';'Hash']
  vivify_960:
    set $P1896, $P1895["quantified_atom"]
    unless_null $P1896, vivify_961
    $P1896 = root_new ['parrot';'ResizablePMCArray']
  vivify_961:
    set $P117, $P1896[$I100]
    unless_null $P117, vivify_962
    new $P117, "Undef"
  vivify_962:
    $P118 = $P117."ast"()
    store_lex "$past", $P118
.annotate 'line', 483
    find_lex $P117, "$past"
    unless_null $P117, vivify_963
    new $P117, "Undef"
  vivify_963:
    $S100 = $P117."pasttype"()
    iseq $I100, $S100, "quant"
    if $I100, if_1898
    new $P116, 'Integer'
    set $P116, $I100
    goto if_1898_end
  if_1898:
    new $P118, "Float"
    assign $P118, 0
    set $I101, $P118
    find_lex $P1899, "$past"
    unless_null $P1899, vivify_964
    $P1899 = root_new ['parrot';'ResizablePMCArray']
  vivify_964:
    set $P119, $P1899[$I101]
    unless_null $P119, vivify_965
    new $P119, "Undef"
  vivify_965:
    $S101 = $P119."pasttype"()
    iseq $I102, $S101, "subrule"
    new $P116, 'Integer'
    set $P116, $I102
  if_1898_end:
    if $P116, if_1897
.annotate 'line', 486
    find_lex $P120, "$past"
    unless_null $P120, vivify_966
    new $P120, "Undef"
  vivify_966:
    $S102 = $P120."pasttype"()
    iseq $I103, $S102, "subrule"
    if $I103, if_1901
.annotate 'line', 488
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    find_lex $P125, "$past"
    unless_null $P125, vivify_967
    new $P125, "Undef"
  vivify_967:
    find_lex $P126, "$name"
    unless_null $P126, vivify_968
    new $P126, "Undef"
  vivify_968:
    find_lex $P127, "$/"
    unless_null $P127, vivify_969
    new $P127, "Undef"
  vivify_969:
    $P128 = $P124."new"($P125, $P126 :named("name"), "subcapture" :named("pasttype"), $P127 :named("node"))
    store_lex "$past", $P128
.annotate 'line', 487
    goto if_1901_end
  if_1901:
.annotate 'line', 486
    find_lex $P121, "self"
    find_lex $P122, "$past"
    unless_null $P122, vivify_970
    new $P122, "Undef"
  vivify_970:
    find_lex $P123, "$name"
    unless_null $P123, vivify_971
    new $P123, "Undef"
  vivify_971:
    $P121."subrule_alias"($P122, $P123)
  if_1901_end:
    goto if_1897_end
  if_1897:
.annotate 'line', 484
    find_lex $P120, "self"
    new $P121, "Float"
    assign $P121, 0
    set $I103, $P121
    find_lex $P1900, "$past"
    unless_null $P1900, vivify_972
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_972:
    set $P122, $P1900[$I103]
    unless_null $P122, vivify_973
    new $P122, "Undef"
  vivify_973:
    find_lex $P123, "$name"
    unless_null $P123, vivify_974
    new $P123, "Undef"
  vivify_974:
    $P120."subrule_alias"($P122, $P123)
  if_1897_end:
  if_1893_end:
.annotate 'line', 495
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_975
    new $P116, "Undef"
  vivify_975:
    $P117 = $P115."!make"($P116)
.annotate 'line', 478
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>" :anon :subid("230_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1903
    .param pmc param_1904
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 498
    .lex "self", param_1903
    .lex "$/", param_1904
.annotate 'line', 499
    find_lex $P113, "$/"
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 500
    get_hll_global $P118, "GLOBAL"
    nqp_get_package_through_who $P119, $P118, "PAST"
    get_who $P120, $P119
    set $P121, $P120["Op"]
    find_lex $P1905, "$/"
    unless_null $P1905, vivify_976
    $P1905 = root_new ['parrot';'Hash']
  vivify_976:
    set $P122, $P1905["pir"]
    unless_null $P122, vivify_977
    new $P122, "Undef"
  vivify_977:
    set $S100, $P122
    $P123 = $P121."new"($S100 :named("inline"), "inline" :named("pasttype"))
    find_lex $P124, "$/"
    unless_null $P124, vivify_978
    new $P124, "Undef"
  vivify_978:
    $P125 = $P117."new"($P123, "pastnode" :named("pasttype"), $P124 :named("node"))
.annotate 'line', 499
    $P126 = $P113."!make"($P125)
.annotate 'line', 498
    .return ($P126)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>" :anon :subid("231_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1907
    .param pmc param_1908
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 506
    .lex "self", param_1907
    .lex "$/", param_1908
.annotate 'line', 507
    new $P113, "Undef"
    set $P1909, $P113
    .lex "$subtype", $P1909
.annotate 'line', 508
    new $P114, "Undef"
    set $P1910, $P114
    .lex "$past", $P1910
.annotate 'line', 507
    find_lex $P1912, "$/"
    unless_null $P1912, vivify_979
    $P1912 = root_new ['parrot';'Hash']
  vivify_979:
    set $P116, $P1912["sym"]
    unless_null $P116, vivify_980
    new $P116, "Undef"
  vivify_980:
    set $S100, $P116
    iseq $I100, $S100, "n"
    if $I100, if_1911
    find_lex $P1913, "$/"
    unless_null $P1913, vivify_981
    $P1913 = root_new ['parrot';'Hash']
  vivify_981:
    set $P118, $P1913["sym"]
    unless_null $P118, vivify_982
    new $P118, "Undef"
  vivify_982:
    set $S101, $P118
    new $P115, 'String'
    set $P115, $S101
    goto if_1911_end
  if_1911:
    new $P117, "String"
    assign $P117, "nl"
    set $P115, $P117
  if_1911_end:
    store_lex "$subtype", $P115
.annotate 'line', 508
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$subtype"
    unless_null $P119, vivify_983
    new $P119, "Undef"
  vivify_983:
    find_lex $P120, "$/"
    unless_null $P120, vivify_984
    new $P120, "Undef"
  vivify_984:
    $P121 = $P118."new"("charclass" :named("pasttype"), $P119 :named("subtype"), $P120 :named("node"))
    store_lex "$past", $P121
.annotate 'line', 509
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_985
    new $P116, "Undef"
  vivify_985:
    $P117 = $P115."!make"($P116)
.annotate 'line', 506
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>" :anon :subid("232_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1915
    .param pmc param_1916
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 512
    .lex "self", param_1915
    .lex "$/", param_1916
.annotate 'line', 513
    new $P113, "Undef"
    set $P1917, $P113
    .lex "$past", $P1917
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 514
    find_lex $P1918, "$/"
    unless_null $P1918, vivify_986
    $P1918 = root_new ['parrot';'Hash']
  vivify_986:
    set $P118, $P1918["sym"]
    unless_null $P118, vivify_987
    new $P118, "Undef"
  vivify_987:
    set $S100, $P118
    iseq $I100, $S100, "B"
.annotate 'line', 513
    find_lex $P119, "$/"
    unless_null $P119, vivify_988
    new $P119, "Undef"
  vivify_988:
    $P120 = $P117."new"("\b", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 515
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_989
    new $P115, "Undef"
  vivify_989:
    $P116 = $P114."!make"($P115)
.annotate 'line', 512
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>" :anon :subid("233_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1920
    .param pmc param_1921
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 518
    .lex "self", param_1920
    .lex "$/", param_1921
.annotate 'line', 519
    new $P113, "Undef"
    set $P1922, $P113
    .lex "$past", $P1922
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 520
    find_lex $P1923, "$/"
    unless_null $P1923, vivify_990
    $P1923 = root_new ['parrot';'Hash']
  vivify_990:
    set $P118, $P1923["sym"]
    unless_null $P118, vivify_991
    new $P118, "Undef"
  vivify_991:
    set $S100, $P118
    iseq $I100, $S100, "E"
.annotate 'line', 519
    find_lex $P119, "$/"
    unless_null $P119, vivify_992
    new $P119, "Undef"
  vivify_992:
    $P120 = $P117."new"("\e", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 521
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_993
    new $P115, "Undef"
  vivify_993:
    $P116 = $P114."!make"($P115)
.annotate 'line', 518
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>" :anon :subid("234_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1925
    .param pmc param_1926
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 524
    .lex "self", param_1925
    .lex "$/", param_1926
.annotate 'line', 525
    new $P113, "Undef"
    set $P1927, $P113
    .lex "$past", $P1927
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 526
    find_lex $P1928, "$/"
    unless_null $P1928, vivify_994
    $P1928 = root_new ['parrot';'Hash']
  vivify_994:
    set $P118, $P1928["sym"]
    unless_null $P118, vivify_995
    new $P118, "Undef"
  vivify_995:
    set $S100, $P118
    iseq $I100, $S100, "F"
.annotate 'line', 525
    find_lex $P119, "$/"
    unless_null $P119, vivify_996
    new $P119, "Undef"
  vivify_996:
    $P120 = $P117."new"("\f", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 527
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_997
    new $P115, "Undef"
  vivify_997:
    $P116 = $P114."!make"($P115)
.annotate 'line', 524
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>" :anon :subid("235_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1930
    .param pmc param_1931
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 530
    .lex "self", param_1930
    .lex "$/", param_1931
.annotate 'line', 531
    new $P113, "Undef"
    set $P1932, $P113
    .lex "$past", $P1932
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 532
    find_lex $P1933, "$/"
    unless_null $P1933, vivify_998
    $P1933 = root_new ['parrot';'Hash']
  vivify_998:
    set $P118, $P1933["sym"]
    unless_null $P118, vivify_999
    new $P118, "Undef"
  vivify_999:
    set $S100, $P118
    iseq $I100, $S100, "H"
.annotate 'line', 531
    find_lex $P119, "$/"
    unless_null $P119, vivify_1000
    new $P119, "Undef"
  vivify_1000:
    $P120 = $P117."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 533
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1001
    new $P115, "Undef"
  vivify_1001:
    $P116 = $P114."!make"($P115)
.annotate 'line', 530
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>" :anon :subid("236_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1935
    .param pmc param_1936
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 536
    .lex "self", param_1935
    .lex "$/", param_1936
.annotate 'line', 537
    new $P113, "Undef"
    set $P1937, $P113
    .lex "$past", $P1937
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 538
    find_lex $P1938, "$/"
    unless_null $P1938, vivify_1002
    $P1938 = root_new ['parrot';'Hash']
  vivify_1002:
    set $P118, $P1938["sym"]
    unless_null $P118, vivify_1003
    new $P118, "Undef"
  vivify_1003:
    set $S100, $P118
    iseq $I100, $S100, "R"
.annotate 'line', 537
    find_lex $P119, "$/"
    unless_null $P119, vivify_1004
    new $P119, "Undef"
  vivify_1004:
    $P120 = $P117."new"("\r", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 539
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1005
    new $P115, "Undef"
  vivify_1005:
    $P116 = $P114."!make"($P115)
.annotate 'line', 536
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>" :anon :subid("237_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1940
    .param pmc param_1941
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 542
    .lex "self", param_1940
    .lex "$/", param_1941
.annotate 'line', 543
    new $P113, "Undef"
    set $P1942, $P113
    .lex "$past", $P1942
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 544
    find_lex $P1943, "$/"
    unless_null $P1943, vivify_1006
    $P1943 = root_new ['parrot';'Hash']
  vivify_1006:
    set $P118, $P1943["sym"]
    unless_null $P118, vivify_1007
    new $P118, "Undef"
  vivify_1007:
    set $S100, $P118
    iseq $I100, $S100, "T"
.annotate 'line', 543
    find_lex $P119, "$/"
    unless_null $P119, vivify_1008
    new $P119, "Undef"
  vivify_1008:
    $P120 = $P117."new"("\t", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 545
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1009
    new $P115, "Undef"
  vivify_1009:
    $P116 = $P114."!make"($P115)
.annotate 'line', 542
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>" :anon :subid("238_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1945
    .param pmc param_1946
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 548
    .lex "self", param_1945
    .lex "$/", param_1946
.annotate 'line', 549
    new $P113, "Undef"
    set $P1947, $P113
    .lex "$past", $P1947
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
.annotate 'line', 551
    find_lex $P1948, "$/"
    unless_null $P1948, vivify_1010
    $P1948 = root_new ['parrot';'Hash']
  vivify_1010:
    set $P118, $P1948["sym"]
    unless_null $P118, vivify_1011
    new $P118, "Undef"
  vivify_1011:
    set $S100, $P118
    iseq $I100, $S100, "V"
.annotate 'line', 549
    find_lex $P119, "$/"
    unless_null $P119, vivify_1012
    new $P119, "Undef"
  vivify_1012:
    $P120 = $P117."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I100 :named("negate"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 552
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1013
    new $P115, "Undef"
  vivify_1013:
    $P116 = $P114."!make"($P115)
.annotate 'line', 548
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>" :anon :subid("239_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1950
    .param pmc param_1951
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 555
    .lex "self", param_1950
    .lex "$/", param_1951
.annotate 'line', 556
    new $P113, "Undef"
    set $P1952, $P113
    .lex "$octlit", $P1952
.annotate 'line', 557
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Actions"
    get_who $P117, $P116
    set $P118, $P117["ints_to_string"]
    find_lex $P1954, "$/"
    unless_null $P1954, vivify_1014
    $P1954 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P120, $P1954["octint"]
    unless_null $P120, vivify_1015
    new $P120, "Undef"
  vivify_1015:
    unless $P120, unless_1953
    set $P119, $P120
    goto unless_1953_end
  unless_1953:
    find_lex $P1955, "$/"
    unless_null $P1955, vivify_1016
    $P1955 = root_new ['parrot';'Hash']
  vivify_1016:
    set $P1956, $P1955["octints"]
    unless_null $P1956, vivify_1017
    $P1956 = root_new ['parrot';'Hash']
  vivify_1017:
    set $P121, $P1956["octint"]
    unless_null $P121, vivify_1018
    new $P121, "Undef"
  vivify_1018:
    set $P119, $P121
  unless_1953_end:
    $P122 = $P118($P119)
    store_lex "$octlit", $P122
.annotate 'line', 558
    find_lex $P114, "$/"
    find_lex $P1958, "$/"
    unless_null $P1958, vivify_1019
    $P1958 = root_new ['parrot';'Hash']
  vivify_1019:
    set $P116, $P1958["sym"]
    unless_null $P116, vivify_1020
    new $P116, "Undef"
  vivify_1020:
    set $S100, $P116
    iseq $I100, $S100, "O"
    if $I100, if_1957
.annotate 'line', 561
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "PAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    find_lex $P128, "$octlit"
    unless_null $P128, vivify_1021
    new $P128, "Undef"
  vivify_1021:
    find_lex $P129, "$/"
    unless_null $P129, vivify_1022
    new $P129, "Undef"
  vivify_1022:
    $P130 = $P127."new"($P128, "literal" :named("pasttype"), $P129 :named("node"))
    set $P115, $P130
.annotate 'line', 558
    goto if_1957_end
  if_1957:
.annotate 'line', 559
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P121, "$octlit"
    unless_null $P121, vivify_1023
    new $P121, "Undef"
  vivify_1023:
    find_lex $P122, "$/"
    unless_null $P122, vivify_1024
    new $P122, "Undef"
  vivify_1024:
    $P123 = $P120."new"($P121, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P122 :named("node"))
    set $P115, $P123
  if_1957_end:
    $P131 = $P114."!make"($P115)
.annotate 'line', 555
    .return ($P131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>" :anon :subid("240_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1960
    .param pmc param_1961
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 564
    .lex "self", param_1960
    .lex "$/", param_1961
.annotate 'line', 565
    new $P113, "Undef"
    set $P1962, $P113
    .lex "$hexlit", $P1962
.annotate 'line', 566
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Actions"
    get_who $P117, $P116
    set $P118, $P117["ints_to_string"]
    find_lex $P1964, "$/"
    unless_null $P1964, vivify_1025
    $P1964 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P120, $P1964["hexint"]
    unless_null $P120, vivify_1026
    new $P120, "Undef"
  vivify_1026:
    unless $P120, unless_1963
    set $P119, $P120
    goto unless_1963_end
  unless_1963:
    find_lex $P1965, "$/"
    unless_null $P1965, vivify_1027
    $P1965 = root_new ['parrot';'Hash']
  vivify_1027:
    set $P1966, $P1965["hexints"]
    unless_null $P1966, vivify_1028
    $P1966 = root_new ['parrot';'Hash']
  vivify_1028:
    set $P121, $P1966["hexint"]
    unless_null $P121, vivify_1029
    new $P121, "Undef"
  vivify_1029:
    set $P119, $P121
  unless_1963_end:
    $P122 = $P118($P119)
    store_lex "$hexlit", $P122
.annotate 'line', 567
    find_lex $P114, "$/"
    find_lex $P1968, "$/"
    unless_null $P1968, vivify_1030
    $P1968 = root_new ['parrot';'Hash']
  vivify_1030:
    set $P116, $P1968["sym"]
    unless_null $P116, vivify_1031
    new $P116, "Undef"
  vivify_1031:
    set $S100, $P116
    iseq $I100, $S100, "X"
    if $I100, if_1967
.annotate 'line', 570
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "PAST"
    get_who $P126, $P125
    set $P127, $P126["Regex"]
    find_lex $P128, "$hexlit"
    unless_null $P128, vivify_1032
    new $P128, "Undef"
  vivify_1032:
    find_lex $P129, "$/"
    unless_null $P129, vivify_1033
    new $P129, "Undef"
  vivify_1033:
    $P130 = $P127."new"($P128, "literal" :named("pasttype"), $P129 :named("node"))
    set $P115, $P130
.annotate 'line', 567
    goto if_1967_end
  if_1967:
.annotate 'line', 568
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P121, "$hexlit"
    unless_null $P121, vivify_1034
    new $P121, "Undef"
  vivify_1034:
    find_lex $P122, "$/"
    unless_null $P122, vivify_1035
    new $P122, "Undef"
  vivify_1035:
    $P123 = $P120."new"($P121, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P122 :named("node"))
    set $P115, $P123
  if_1967_end:
    $P131 = $P114."!make"($P115)
.annotate 'line', 564
    .return ($P131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>" :anon :subid("241_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1970
    .param pmc param_1971
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 573
    .lex "self", param_1970
    .lex "$/", param_1971
.annotate 'line', 574
    find_lex $P113, "$/"
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P1972, "$/"
    unless_null $P1972, vivify_1036
    $P1972 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P118, $P1972["charspec"]
    unless_null $P118, vivify_1037
    new $P118, "Undef"
  vivify_1037:
    $P119 = $P118."ast"()
    find_lex $P120, "$/"
    unless_null $P120, vivify_1038
    new $P120, "Undef"
  vivify_1038:
    $P121 = $P117."new"($P119, "literal" :named("pasttype"), $P120 :named("node"))
    $P122 = $P113."!make"($P121)
.annotate 'line', 573
    .return ($P122)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>" :anon :subid("242_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1974
    .param pmc param_1975
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 577
    .lex "self", param_1974
    .lex "$/", param_1975
.annotate 'line', 578
    new $P113, "Undef"
    set $P1976, $P113
    .lex "$past", $P1976
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Regex"]
    find_lex $P118, "$/"
    unless_null $P118, vivify_1039
    new $P118, "Undef"
  vivify_1039:
    set $S100, $P118
    find_lex $P119, "$/"
    unless_null $P119, vivify_1040
    new $P119, "Undef"
  vivify_1040:
    $P120 = $P117."new"($S100, "literal" :named("pasttype"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 579
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1041
    new $P115, "Undef"
  vivify_1041:
    $P116 = $P114."!make"($P115)
.annotate 'line', 577
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>" :anon :subid("243_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1978
    .param pmc param_1979
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 583
    .lex "self", param_1978
    .lex "$/", param_1979
.annotate 'line', 584
    new $P113, "Undef"
    set $P1980, $P113
    .lex "$past", $P1980
.annotate 'line', 583
    find_lex $P114, "$past"
    unless_null $P114, vivify_1042
    new $P114, "Undef"
  vivify_1042:
.annotate 'line', 585
    find_lex $P1982, "$/"
    unless_null $P1982, vivify_1043
    $P1982 = root_new ['parrot';'Hash']
  vivify_1043:
    set $P114, $P1982["assertion"]
    unless_null $P114, vivify_1044
    new $P114, "Undef"
  vivify_1044:
    if $P114, if_1981
.annotate 'line', 589
    new $P115, "Float"
    assign $P115, 0
    store_lex "$past", $P115
    goto if_1981_end
  if_1981:
.annotate 'line', 586
    find_lex $P1983, "$/"
    unless_null $P1983, vivify_1045
    $P1983 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P115, $P1983["assertion"]
    unless_null $P115, vivify_1046
    new $P115, "Undef"
  vivify_1046:
    $P116 = $P115."ast"()
    store_lex "$past", $P116
.annotate 'line', 587
    find_lex $P115, "$past"
    unless_null $P115, vivify_1047
    new $P115, "Undef"
  vivify_1047:
    $P115."subtype"("zerowidth")
  if_1981_end:
.annotate 'line', 590
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1048
    new $P115, "Undef"
  vivify_1048:
    $P116 = $P114."!make"($P115)
.annotate 'line', 583
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>" :anon :subid("244_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1985
    .param pmc param_1986
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 593
    .lex "self", param_1985
    .lex "$/", param_1986
.annotate 'line', 594
    new $P113, "Undef"
    set $P1987, $P113
    .lex "$past", $P1987
.annotate 'line', 593
    find_lex $P114, "$past"
    unless_null $P114, vivify_1049
    new $P114, "Undef"
  vivify_1049:
.annotate 'line', 595
    find_lex $P1989, "$/"
    unless_null $P1989, vivify_1050
    $P1989 = root_new ['parrot';'Hash']
  vivify_1050:
    set $P114, $P1989["assertion"]
    unless_null $P114, vivify_1051
    new $P114, "Undef"
  vivify_1051:
    if $P114, if_1988
.annotate 'line', 601
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$/"
    unless_null $P119, vivify_1052
    new $P119, "Undef"
  vivify_1052:
    $P120 = $P118."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 600
    goto if_1988_end
  if_1988:
.annotate 'line', 596
    find_lex $P1990, "$/"
    unless_null $P1990, vivify_1053
    $P1990 = root_new ['parrot';'Hash']
  vivify_1053:
    set $P115, $P1990["assertion"]
    unless_null $P115, vivify_1054
    new $P115, "Undef"
  vivify_1054:
    $P116 = $P115."ast"()
    store_lex "$past", $P116
.annotate 'line', 597
    find_lex $P115, "$past"
    unless_null $P115, vivify_1055
    new $P115, "Undef"
  vivify_1055:
    find_lex $P116, "$past"
    unless_null $P116, vivify_1056
    new $P116, "Undef"
  vivify_1056:
    $P117 = $P116."negate"()
    isfalse $I100, $P117
    $P115."negate"($I100)
.annotate 'line', 598
    find_lex $P115, "$past"
    unless_null $P115, vivify_1057
    new $P115, "Undef"
  vivify_1057:
    $P115."subtype"("zerowidth")
  if_1988_end:
.annotate 'line', 603
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1058
    new $P115, "Undef"
  vivify_1058:
    $P116 = $P114."!make"($P115)
.annotate 'line', 593
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>" :anon :subid("245_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1992
    .param pmc param_1993
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 606
    .lex "self", param_1992
    .lex "$/", param_1993
.annotate 'line', 607
    new $P113, "Undef"
    set $P1994, $P113
    .lex "$past", $P1994
    find_lex $P1995, "$/"
    unless_null $P1995, vivify_1059
    $P1995 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P114, $P1995["assertion"]
    unless_null $P114, vivify_1060
    new $P114, "Undef"
  vivify_1060:
    $P115 = $P114."ast"()
    store_lex "$past", $P115
.annotate 'line', 608
    find_lex $P114, "$past"
    unless_null $P114, vivify_1061
    new $P114, "Undef"
  vivify_1061:
    $P114."subtype"("method")
.annotate 'line', 609
    find_lex $P114, "$past"
    unless_null $P114, vivify_1062
    new $P114, "Undef"
  vivify_1062:
    $P114."name"("")
.annotate 'line', 610
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_1063
    new $P115, "Undef"
  vivify_1063:
    $P116 = $P114."!make"($P115)
.annotate 'line', 606
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>" :anon :subid("246_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_1997
    .param pmc param_1998
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 613
    .const 'Sub' $P2021 = "248_1315150101.74" 
    capture_lex $P2021
    .const 'Sub' $P2008 = "247_1315150101.74" 
    capture_lex $P2008
    .lex "self", param_1997
    .lex "$/", param_1998
.annotate 'line', 614
    new $P113, "Undef"
    set $P1999, $P113
    .lex "$name", $P1999
.annotate 'line', 615
    new $P114, "Undef"
    set $P2000, $P114
    .lex "$past", $P2000
.annotate 'line', 614
    find_lex $P2001, "$/"
    unless_null $P2001, vivify_1064
    $P2001 = root_new ['parrot';'Hash']
  vivify_1064:
    set $P115, $P2001["longname"]
    unless_null $P115, vivify_1065
    new $P115, "Undef"
  vivify_1065:
    set $S100, $P115
    new $P116, 'String'
    set $P116, $S100
    store_lex "$name", $P116
.annotate 'line', 613
    find_lex $P115, "$past"
    unless_null $P115, vivify_1066
    new $P115, "Undef"
  vivify_1066:
.annotate 'line', 616
    find_lex $P2003, "$/"
    unless_null $P2003, vivify_1067
    $P2003 = root_new ['parrot';'Hash']
  vivify_1067:
    set $P115, $P2003["assertion"]
    unless_null $P115, vivify_1068
    new $P115, "Undef"
  vivify_1068:
    if $P115, if_2002
.annotate 'line', 620
    find_lex $P116, "$name"
    unless_null $P116, vivify_1069
    new $P116, "Undef"
  vivify_1069:
    set $S100, $P116
    iseq $I100, $S100, "sym"
    if $I100, if_2006
.annotate 'line', 637
    find_lex $P119, "self"
    find_lex $P120, "$/"
    unless_null $P120, vivify_1070
    new $P120, "Undef"
  vivify_1070:
    $P121 = $P119."named_assertion"($P120)
    store_lex "$past", $P121
.annotate 'line', 638
    find_lex $P2013, "$/"
    unless_null $P2013, vivify_1071
    $P2013 = root_new ['parrot';'Hash']
  vivify_1071:
    set $P119, $P2013["nibbler"]
    unless_null $P119, vivify_1072
    new $P119, "Undef"
  vivify_1072:
    if $P119, if_2012
.annotate 'line', 641
    find_lex $P2017, "$/"
    unless_null $P2017, vivify_1073
    $P2017 = root_new ['parrot';'Hash']
  vivify_1073:
    set $P120, $P2017["arglist"]
    unless_null $P120, vivify_1074
    new $P120, "Undef"
  vivify_1074:
    unless $P120, if_2016_end
.annotate 'line', 642
    new $P122, "Float"
    assign $P122, 0
    set $I101, $P122
    find_lex $P2018, "$/"
    unless_null $P2018, vivify_1075
    $P2018 = root_new ['parrot';'Hash']
  vivify_1075:
    set $P2019, $P2018["arglist"]
    unless_null $P2019, vivify_1076
    $P2019 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    set $P123, $P2019[$I101]
    unless_null $P123, vivify_1077
    new $P123, "Undef"
  vivify_1077:
    $P124 = $P123."ast"()
    $P125 = $P124."list"()
    defined $I102, $P125
    unless $I102, for_undef_1078
    iter $P121, $P125
    new $P127, 'ExceptionHandler'
    set_label $P127, loop2023_handler
    $P127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P127
  loop2023_test:
    unless $P121, loop2023_done
    shift $P126, $P121
  loop2023_redo:
    .const 'Sub' $P2021 = "248_1315150101.74" 
    capture_lex $P2021
    $P2021($P126)
  loop2023_next:
    goto loop2023_test
  loop2023_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop2023_next
    eq $P128, .CONTROL_LOOP_REDO, loop2023_redo
  loop2023_done:
    pop_eh 
  for_undef_1078:
  if_2016_end:
.annotate 'line', 641
    goto if_2012_end
  if_2012:
.annotate 'line', 639
    find_lex $P120, "$past"
    unless_null $P120, vivify_1081
    new $P120, "Undef"
  vivify_1081:
    new $P121, "Float"
    assign $P121, 0
    set $I101, $P121
    find_lex $P2014, "$/"
    unless_null $P2014, vivify_1082
    $P2014 = root_new ['parrot';'Hash']
  vivify_1082:
    set $P2015, $P2014["nibbler"]
    unless_null $P2015, vivify_1083
    $P2015 = root_new ['parrot';'ResizablePMCArray']
  vivify_1083:
    set $P122, $P2015[$I101]
    unless_null $P122, vivify_1084
    new $P122, "Undef"
  vivify_1084:
    $P123 = $P122."ast"()
    $P124 = "buildsub"($P123)
    $P120."push"($P124)
  if_2012_end:
.annotate 'line', 636
    goto if_2006_end
  if_2006:
.annotate 'line', 620
    .const 'Sub' $P2008 = "247_1315150101.74" 
    capture_lex $P2008
    $P2008()
  if_2006_end:
    goto if_2002_end
  if_2002:
.annotate 'line', 617
    new $P116, "Float"
    assign $P116, 0
    set $I100, $P116
    find_lex $P2004, "$/"
    unless_null $P2004, vivify_1089
    $P2004 = root_new ['parrot';'Hash']
  vivify_1089:
    set $P2005, $P2004["assertion"]
    unless_null $P2005, vivify_1090
    $P2005 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P117, $P2005[$I100]
    unless_null $P117, vivify_1091
    new $P117, "Undef"
  vivify_1091:
    $P118 = $P117."ast"()
    store_lex "$past", $P118
.annotate 'line', 618
    find_lex $P116, "self"
    find_lex $P117, "$past"
    unless_null $P117, vivify_1092
    new $P117, "Undef"
  vivify_1092:
    find_lex $P118, "$name"
    unless_null $P118, vivify_1093
    new $P118, "Undef"
  vivify_1093:
    $P116."subrule_alias"($P117, $P118)
  if_2002_end:
.annotate 'line', 645
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_1094
    new $P116, "Undef"
  vivify_1094:
    $P117 = $P115."!make"($P116)
.annotate 'line', 613
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2020"  :anon :subid("248_1315150101.74") :outer("246_1315150101.74")
    .param pmc param_2022
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 642
    .lex "$_", param_2022
    find_lex $P127, "$past"
    unless_null $P127, vivify_1079
    new $P127, "Undef"
  vivify_1079:
    find_lex $P128, "$_"
    unless_null $P128, vivify_1080
    new $P128, "Undef"
  vivify_1080:
    $P129 = $P127."push"($P128)
    .return ($P129)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2007"  :anon :subid("247_1315150101.74") :outer("246_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 621
    new $P117, "Undef"
    set $P2009, $P117
    .lex "$rxname", $P2009
.annotate 'line', 622
    new $P118, "Undef"
    set $P2010, $P118
    .lex "$regexsym", $P2010
.annotate 'line', 621
    find_lex $P119, "$?PACKAGE"
    get_who $P120, $P119
    set $P121, $P120["$REGEXNAME"]
    unless_null $P121, vivify_1085
    new $P121, "Undef"
  vivify_1085:
    store_lex "$rxname", $P121
.annotate 'line', 622

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2011 = box $S0
            
    store_lex "$regexsym", $P2011
.annotate 'line', 631
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Regex"]
.annotate 'line', 632
    get_hll_global $P123, "GLOBAL"
    nqp_get_package_through_who $P124, $P123, "PAST"
    get_who $P125, $P124
    set $P126, $P125["Regex"]
    find_lex $P127, "$regexsym"
    unless_null $P127, vivify_1086
    new $P127, "Undef"
  vivify_1086:
    $P128 = $P126."new"($P127, "literal" :named("pasttype"))
    find_lex $P129, "$name"
    unless_null $P129, vivify_1087
    new $P129, "Undef"
  vivify_1087:
    find_lex $P130, "$/"
    unless_null $P130, vivify_1088
    new $P130, "Undef"
  vivify_1088:
    $P131 = $P122."new"($P128, $P129 :named("name"), "subcapture" :named("pasttype"), $P130 :named("node"))
.annotate 'line', 631
    store_lex "$past", $P131
.annotate 'line', 620
    .return ($P131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>" :anon :subid("249_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_2025
    .param pmc param_2026
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 648
    .const 'Sub' $P2036 = "250_1315150101.74" 
    capture_lex $P2036
    .lex "self", param_2025
    .lex "$/", param_2026
.annotate 'line', 649
    new $P113, "Undef"
    set $P2027, $P113
    .lex "$clist", $P2027
.annotate 'line', 650
    new $P114, "Undef"
    set $P2028, $P114
    .lex "$past", $P2028
.annotate 'line', 659
    new $P115, "Undef"
    set $P2029, $P115
    .lex "$i", $P2029
.annotate 'line', 660
    new $P116, "Undef"
    set $P2030, $P116
    .lex "$n", $P2030
.annotate 'line', 649
    find_lex $P2031, "$/"
    unless_null $P2031, vivify_1095
    $P2031 = root_new ['parrot';'Hash']
  vivify_1095:
    set $P117, $P2031["cclass_elem"]
    unless_null $P117, vivify_1096
    new $P117, "Undef"
  vivify_1096:
    store_lex "$clist", $P117
.annotate 'line', 650
    new $P117, "Float"
    assign $P117, 0
    set $I100, $P117
    find_lex $P2032, "$clist"
    unless_null $P2032, vivify_1097
    $P2032 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    set $P118, $P2032[$I100]
    unless_null $P118, vivify_1098
    new $P118, "Undef"
  vivify_1098:
    $P119 = $P118."ast"()
    store_lex "$past", $P119
.annotate 'line', 651
    find_lex $P118, "$past"
    unless_null $P118, vivify_1099
    new $P118, "Undef"
  vivify_1099:
    $P119 = $P118."negate"()
    if $P119, if_2034
    set $P117, $P119
    goto if_2034_end
  if_2034:
    find_lex $P120, "$past"
    unless_null $P120, vivify_1100
    new $P120, "Undef"
  vivify_1100:
    $S100 = $P120."pasttype"()
    iseq $I100, $S100, "subrule"
    new $P117, 'Integer'
    set $P117, $I100
  if_2034_end:
    unless $P117, if_2033_end
.annotate 'line', 652
    find_lex $P121, "$past"
    unless_null $P121, vivify_1101
    new $P121, "Undef"
  vivify_1101:
    $P121."subtype"("zerowidth")
.annotate 'line', 653
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Regex"]
    find_lex $P125, "$past"
    unless_null $P125, vivify_1102
    new $P125, "Undef"
  vivify_1102:
.annotate 'line', 655
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Regex"]
    $P130 = $P129."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P131, "$/"
    unless_null $P131, vivify_1103
    new $P131, "Undef"
  vivify_1103:
    $P132 = $P124."new"($P125, $P130, $P131 :named("node"))
.annotate 'line', 653
    store_lex "$past", $P132
  if_2033_end:
.annotate 'line', 659
    new $P117, "Float"
    assign $P117, 1
    store_lex "$i", $P117
.annotate 'line', 660
    find_lex $P117, "$clist"
    unless_null $P117, vivify_1104
    new $P117, "Undef"
  vivify_1104:
    set $N100, $P117
    new $P118, 'Float'
    set $P118, $N100
    store_lex "$n", $P118
.annotate 'line', 661
    new $P120, 'ExceptionHandler'
    set_label $P120, loop2040_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop2040_test:
    find_lex $P117, "$i"
    unless_null $P117, vivify_1105
    new $P117, "Undef"
  vivify_1105:
    set $N100, $P117
    find_lex $P118, "$n"
    unless_null $P118, vivify_1106
    new $P118, "Undef"
  vivify_1106:
    set $N101, $P118
    islt $I100, $N100, $N101
    unless $I100, loop2040_done
  loop2040_redo:
    .const 'Sub' $P2036 = "250_1315150101.74" 
    capture_lex $P2036
    $P2036()
  loop2040_next:
    goto loop2040_test
  loop2040_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop2040_next
    eq $P122, .CONTROL_LOOP_REDO, loop2040_redo
  loop2040_done:
    pop_eh 
.annotate 'line', 672
    find_lex $P117, "$/"
    find_lex $P118, "$past"
    unless_null $P118, vivify_1119
    new $P118, "Undef"
  vivify_1119:
    $P119 = $P117."!make"($P118)
.annotate 'line', 648
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2035"  :anon :subid("250_1315150101.74") :outer("249_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 662
    new $P119, "Undef"
    set $P2037, $P119
    .lex "$ast", $P2037
    find_lex $P120, "$i"
    unless_null $P120, vivify_1107
    new $P120, "Undef"
  vivify_1107:
    set $I101, $P120
    find_lex $P2038, "$clist"
    unless_null $P2038, vivify_1108
    $P2038 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    set $P121, $P2038[$I101]
    unless_null $P121, vivify_1109
    new $P121, "Undef"
  vivify_1109:
    $P122 = $P121."ast"()
    store_lex "$ast", $P122
.annotate 'line', 663
    find_lex $P120, "$ast"
    unless_null $P120, vivify_1110
    new $P120, "Undef"
  vivify_1110:
    $P121 = $P120."negate"()
    if $P121, if_2039
.annotate 'line', 668
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "PAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    find_lex $P126, "$past"
    unless_null $P126, vivify_1111
    new $P126, "Undef"
  vivify_1111:
    find_lex $P127, "$ast"
    unless_null $P127, vivify_1112
    new $P127, "Undef"
  vivify_1112:
    find_lex $P128, "$/"
    unless_null $P128, vivify_1113
    new $P128, "Undef"
  vivify_1113:
    $P129 = $P125."new"($P126, $P127, "alt" :named("pasttype"), $P128 :named("node"))
    store_lex "$past", $P129
.annotate 'line', 667
    goto if_2039_end
  if_2039:
.annotate 'line', 664
    find_lex $P122, "$ast"
    unless_null $P122, vivify_1114
    new $P122, "Undef"
  vivify_1114:
    $P122."subtype"("zerowidth")
.annotate 'line', 665
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "PAST"
    get_who $P124, $P123
    set $P125, $P124["Regex"]
    find_lex $P126, "$ast"
    unless_null $P126, vivify_1115
    new $P126, "Undef"
  vivify_1115:
    find_lex $P127, "$past"
    unless_null $P127, vivify_1116
    new $P127, "Undef"
  vivify_1116:
    find_lex $P128, "$/"
    unless_null $P128, vivify_1117
    new $P128, "Undef"
  vivify_1117:
    $P129 = $P125."new"($P126, $P127, "concat" :named("pasttype"), $P128 :named("node"))
    store_lex "$past", $P129
  if_2039_end:
.annotate 'line', 670
    find_lex $P120, "$i"
    unless_null $P120, vivify_1118
    new $P120, "Undef"
  vivify_1118:
    add $P121, $P120, 1
    store_lex "$i", $P121
.annotate 'line', 661
    .return ($P121)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem" :anon :subid("251_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_2042
    .param pmc param_2043
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 675
    .const 'Sub' $P2054 = "253_1315150101.74" 
    capture_lex $P2054
    .const 'Sub' $P2049 = "252_1315150101.74" 
    capture_lex $P2049
    .lex "self", param_2042
    .lex "$/", param_2043
.annotate 'line', 676
    new $P113, "Undef"
    set $P2044, $P113
    .lex "$str", $P2044
.annotate 'line', 677
    new $P114, "Undef"
    set $P2045, $P114
    .lex "$past", $P2045
.annotate 'line', 676
    new $P115, "String"
    assign $P115, ""
    store_lex "$str", $P115
.annotate 'line', 675
    find_lex $P115, "$past"
    unless_null $P115, vivify_1120
    new $P115, "Undef"
  vivify_1120:
.annotate 'line', 678
    find_lex $P2047, "$/"
    unless_null $P2047, vivify_1121
    $P2047 = root_new ['parrot';'Hash']
  vivify_1121:
    set $P115, $P2047["name"]
    unless_null $P115, vivify_1122
    new $P115, "Undef"
  vivify_1122:
    if $P115, if_2046
.annotate 'line', 682
    find_lex $P2052, "$/"
    unless_null $P2052, vivify_1123
    $P2052 = root_new ['parrot';'Hash']
  vivify_1123:
    set $P118, $P2052["charspec"]
    unless_null $P118, vivify_1124
    new $P118, "Undef"
  vivify_1124:
    defined $I100, $P118
    unless $I100, for_undef_1125
    iter $P117, $P118
    new $P121, 'ExceptionHandler'
    set_label $P121, loop2068_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop2068_test:
    unless $P117, loop2068_done
    shift $P119, $P117
  loop2068_redo:
    .const 'Sub' $P2054 = "253_1315150101.74" 
    capture_lex $P2054
    $P2054($P119)
  loop2068_next:
    goto loop2068_test
  loop2068_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop2068_next
    eq $P122, .CONTROL_LOOP_REDO, loop2068_redo
  loop2068_done:
    pop_eh 
  for_undef_1125:
.annotate 'line', 707
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P121, "$str"
    unless_null $P121, vivify_1138
    new $P121, "Undef"
  vivify_1138:
    find_lex $P122, "$/"
    unless_null $P122, vivify_1139
    new $P122, "Undef"
  vivify_1139:
    $P124 = $P120."new"($P121, "enumcharlist" :named("pasttype"), $P122 :named("node"))
    store_lex "$past", $P124
.annotate 'line', 681
    goto if_2046_end
  if_2046:
.annotate 'line', 678
    .const 'Sub' $P2049 = "252_1315150101.74" 
    capture_lex $P2049
    $P2049()
  if_2046_end:
.annotate 'line', 709
    find_lex $P115, "$past"
    unless_null $P115, vivify_1144
    new $P115, "Undef"
  vivify_1144:
    find_lex $P2069, "$/"
    unless_null $P2069, vivify_1145
    $P2069 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P116, $P2069["sign"]
    unless_null $P116, vivify_1146
    new $P116, "Undef"
  vivify_1146:
    set $S100, $P116
    iseq $I100, $S100, "-"
    $P115."negate"($I100)
.annotate 'line', 710
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_1147
    new $P116, "Undef"
  vivify_1147:
    $P117 = $P115."!make"($P116)
.annotate 'line', 675
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2053"  :anon :subid("253_1315150101.74") :outer("251_1315150101.74")
    .param pmc param_2055
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 682
    .const 'Sub' $P2059 = "254_1315150101.74" 
    capture_lex $P2059
    .lex "$_", param_2055
.annotate 'line', 683
    new $P121, "Float"
    assign $P121, 1
    set $I101, $P121
    find_lex $P2057, "$_"
    unless_null $P2057, vivify_1126
    $P2057 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P122, $P2057[$I101]
    unless_null $P122, vivify_1127
    new $P122, "Undef"
  vivify_1127:
    if $P122, if_2056
.annotate 'line', 705
    find_lex $P128, "$str"
    unless_null $P128, vivify_1128
    new $P128, "Undef"
  vivify_1128:
    new $P130, "Float"
    assign $P130, 0
    set $I102, $P130
    find_lex $P2067, "$_"
    unless_null $P2067, vivify_1129
    $P2067 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P131, $P2067[$I102]
    unless_null $P131, vivify_1130
    new $P131, "Undef"
  vivify_1130:
    concat $P132, $P128, $P131
    store_lex "$str", $P132
    set $P120, $P132
.annotate 'line', 683
    goto if_2056_end
  if_2056:
    .const 'Sub' $P2059 = "254_1315150101.74" 
    capture_lex $P2059
    $P127 = $P2059()
    set $P120, $P127
  if_2056_end:
.annotate 'line', 682
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2058"  :anon :subid("254_1315150101.74") :outer("253_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 684
    new $P124, "Undef"
    set $P2060, $P124
    .lex "$a", $P2060
.annotate 'line', 685
    new $P125, "Undef"
    set $P2061, $P125
    .lex "$b", $P2061
.annotate 'line', 686
    new $P126, "Undef"
    set $P2062, $P126
    .lex "$c", $P2062
.annotate 'line', 684
    new $P127, "Float"
    assign $P127, 0
    set $I102, $P127
    find_lex $P2063, "$_"
    unless_null $P2063, vivify_1131
    $P2063 = root_new ['parrot';'ResizablePMCArray']
  vivify_1131:
    set $P128, $P2063[$I102]
    unless_null $P128, vivify_1132
    new $P128, "Undef"
  vivify_1132:
    store_lex "$a", $P128
.annotate 'line', 685
    new $P127, "Float"
    assign $P127, 0
    set $I102, $P127
    new $P128, "Float"
    assign $P128, 1
    set $I103, $P128
    find_lex $P2064, "$_"
    unless_null $P2064, vivify_1133
    $P2064 = root_new ['parrot';'ResizablePMCArray']
  vivify_1133:
    set $P2065, $P2064[$I103]
    unless_null $P2065, vivify_1134
    $P2065 = root_new ['parrot';'ResizablePMCArray']
  vivify_1134:
    set $P129, $P2065[$I102]
    unless_null $P129, vivify_1135
    new $P129, "Undef"
  vivify_1135:
    store_lex "$b", $P129
.annotate 'line', 686

                                 $P0 = find_lex '$a'
                                 $S0 = $P0
                                 $I0 = ord $S0
                                 $P1 = find_lex '$b'
                                 $S1 = $P1
                                 $I1 = ord $S1
                                 $S2 = ''
                               cclass_loop:
                                 if $I0 > $I1 goto cclass_done
                                 $S0 = chr $I0
                                 $S2 .= $S0
                                 inc $I0
                                 goto cclass_loop
                               cclass_done:
                                 $P2066 = box $S2
                             
    store_lex "$c", $P2066
.annotate 'line', 703
    find_lex $P127, "$str"
    unless_null $P127, vivify_1136
    new $P127, "Undef"
  vivify_1136:
    find_lex $P128, "$c"
    unless_null $P128, vivify_1137
    new $P128, "Undef"
  vivify_1137:
    concat $P129, $P127, $P128
    store_lex "$str", $P129
.annotate 'line', 683
    .return ($P129)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2048"  :anon :subid("252_1315150101.74") :outer("251_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 679
    new $P116, "Undef"
    set $P2050, $P116
    .lex "$name", $P2050
    find_lex $P2051, "$/"
    unless_null $P2051, vivify_1140
    $P2051 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P117, $P2051["name"]
    unless_null $P117, vivify_1141
    new $P117, "Undef"
  vivify_1141:
    set $S100, $P117
    new $P118, 'String'
    set $P118, $S100
    store_lex "$name", $P118
.annotate 'line', 680
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Regex"]
    find_lex $P121, "$name"
    unless_null $P121, vivify_1142
    new $P121, "Undef"
  vivify_1142:
    find_lex $P122, "$/"
    unless_null $P122, vivify_1143
    new $P122, "Undef"
  vivify_1143:
    $P123 = $P120."new"($P121, "subrule" :named("pasttype"), "method" :named("subtype"), $P122 :named("node"))
    store_lex "$past", $P123
.annotate 'line', 678
    .return ($P123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal" :anon :subid("255_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_2071
    .param pmc param_2072
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 713
    .lex "self", param_2071
    .lex "$/", param_2072
.annotate 'line', 714
    $P2074 = root_new ['parrot';'Hash']
    set $P2073, $P2074
    .lex "%mods", $P2073
.annotate 'line', 715
    new $P113, "Undef"
    set $P2075, $P113
    .lex "$n", $P2075
.annotate 'line', 714
    new $P114, "Float"
    assign $P114, 0
    set $I100, $P114
    find_lex $P115, "$?PACKAGE"
    get_who $P116, $P115
    set $P2076, $P116["@MODIFIERS"]
    unless_null $P2076, vivify_1148
    $P2076 = root_new ['parrot';'ResizablePMCArray']
  vivify_1148:
    set $P117, $P2076[$I100]
    unless_null $P117, vivify_1149
    new $P117, "Undef"
  vivify_1149:
    store_lex "%mods", $P117
.annotate 'line', 715
    new $P115, "Float"
    assign $P115, 0
    set $I100, $P115
    find_lex $P2078, "$/"
    unless_null $P2078, vivify_1150
    $P2078 = root_new ['parrot';'Hash']
  vivify_1150:
    set $P2079, $P2078["n"]
    unless_null $P2079, vivify_1151
    $P2079 = root_new ['parrot';'ResizablePMCArray']
  vivify_1151:
    set $P116, $P2079[$I100]
    unless_null $P116, vivify_1152
    new $P116, "Undef"
  vivify_1152:
    set $S100, $P116
    isgt $I101, $S100, ""
    if $I101, if_2077
    new $P119, "Float"
    assign $P119, 1
    set $P114, $P119
    goto if_2077_end
  if_2077:
    new $P117, "Float"
    assign $P117, 0
    set $I102, $P117
    find_lex $P2080, "$/"
    unless_null $P2080, vivify_1153
    $P2080 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2081, $P2080["n"]
    unless_null $P2081, vivify_1154
    $P2081 = root_new ['parrot';'ResizablePMCArray']
  vivify_1154:
    set $P118, $P2081[$I102]
    unless_null $P118, vivify_1155
    new $P118, "Undef"
  vivify_1155:
    set $N100, $P118
    new $P114, 'Float'
    set $P114, $N100
  if_2077_end:
    store_lex "$n", $P114
.annotate 'line', 716
    find_lex $P114, "$n"
    unless_null $P114, vivify_1156
    new $P114, "Undef"
  vivify_1156:
    find_lex $P2082, "$/"
    unless_null $P2082, vivify_1157
    $P2082 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P2083, $P2082["mod_ident"]
    unless_null $P2083, vivify_1158
    $P2083 = root_new ['parrot';'Hash']
  vivify_1158:
    set $P115, $P2083["sym"]
    unless_null $P115, vivify_1159
    new $P115, "Undef"
  vivify_1159:
    set $S100, $P115
    find_lex $P2084, "%mods"
    unless_null $P2084, vivify_1160
    $P2084 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2084
  vivify_1160:
    set $P2084[$S100], $P114
.annotate 'line', 717
    find_lex $P114, "$/"
    $P115 = $P114."!make"(0)
.annotate 'line', 713
    .return ($P115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias" :anon :subid("256_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_2086
    .param pmc param_2087
    .param pmc param_2088
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 811
    .lex "self", param_2086
    .lex "$past", param_2087
    .lex "$name", param_2088
.annotate 'line', 812
    find_lex $P113, "$past"
    unless_null $P113, vivify_1161
    new $P113, "Undef"
  vivify_1161:
    $S100 = $P113."name"()
    isgt $I100, $S100, ""
    if $I100, if_2089
.annotate 'line', 813
    find_lex $P114, "$past"
    unless_null $P114, vivify_1162
    new $P114, "Undef"
  vivify_1162:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1163
    new $P115, "Undef"
  vivify_1163:
    $P114."name"($P115)
    goto if_2089_end
  if_2089:
.annotate 'line', 812
    find_lex $P114, "$past"
    unless_null $P114, vivify_1164
    new $P114, "Undef"
  vivify_1164:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1165
    new $P115, "Undef"
  vivify_1165:
    concat $P116, $P115, "="
    find_lex $P117, "$past"
    unless_null $P117, vivify_1166
    new $P117, "Undef"
  vivify_1166:
    $S101 = $P117."name"()
    concat $P118, $P116, $S101
    $P114."name"($P118)
  if_2089_end:
.annotate 'line', 814
    find_lex $P113, "$past"
    unless_null $P113, vivify_1167
    new $P113, "Undef"
  vivify_1167:
    $P114 = $P113."subtype"("capture")
.annotate 'line', 811
    .return ($P114)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion" :anon :subid("257_1315150101.74") :outer("176_1315150101.74")
    .param pmc param_2091
    .param pmc param_2092
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 817
    .lex "self", param_2091
    .lex "$/", param_2092
.annotate 'line', 818
    new $P113, "Undef"
    set $P2093, $P113
    .lex "$name", $P2093
.annotate 'line', 819
    new $P114, "Undef"
    set $P2094, $P114
    .lex "$past", $P2094
.annotate 'line', 818
    find_lex $P2095, "$/"
    unless_null $P2095, vivify_1168
    $P2095 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P115, $P2095["longname"]
    unless_null $P115, vivify_1169
    new $P115, "Undef"
  vivify_1169:
    set $S100, $P115
    new $P116, 'String'
    set $P116, $S100
    store_lex "$name", $P116
.annotate 'line', 819
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Regex"]
    find_lex $P119, "$name"
    unless_null $P119, vivify_1170
    new $P119, "Undef"
  vivify_1170:
    find_lex $P120, "$name"
    unless_null $P120, vivify_1171
    new $P120, "Undef"
  vivify_1171:
    find_lex $P121, "$/"
    unless_null $P121, vivify_1172
    new $P121, "Undef"
  vivify_1172:
    $P122 = $P118."new"($P119, $P120 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P121 :named("node"))
    store_lex "$past", $P122
.annotate 'line', 817
    find_lex $P115, "$past"
    unless_null $P115, vivify_1173
    new $P115, "Undef"
  vivify_1173:
    .return ($P115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2097"  :subid("258_1315150101.74") :outer("10_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 826
    .lex "$?PACKAGE", $P2099
    .lex "$?CLASS", $P2100
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block2103" :load :anon :subid("259_1315150101.74")
.annotate 'file', "src\\stage2\\gen\\NQPP6Regex.pm"
.annotate 'line', 1
    .const 'Sub' $P2105 = "10_1315150101.74" 
    $P109 = $P2105()
    .return ($P109)
.end

