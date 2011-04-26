
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303857426.514")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2824 = "258_1303857426.514" 
    capture_lex $P2824
    .const 'Sub' $P928 = "175_1303857426.514" 
    capture_lex $P928
    .const 'Sub' $P24 = "12_1303857426.514" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1303857426.514" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 828
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 833
    .const 'Sub' $P17 = "11_1303857426.514" 
    newclosure $P22, $P17
    .lex "MAIN", $P22
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1303857426.514" 
    capture_lex $P24
    $P24()
.annotate 'line', 212
    .const 'Sub' $P928 = "175_1303857426.514" 
    capture_lex $P928
    $P928()
.annotate 'line', 825
    .const 'Sub' $P2824 = "258_1303857426.514" 
    capture_lex $P2824
    $P2824()
.annotate 'line', 828
    get_hll_global $P2832, "GLOBAL"
    nqp_get_package_through_who $P2833, $P2832, "Regex"
    nqp_get_package_through_who $P2834, $P2833, "P6Regex"
    get_who $P2835, $P2834
    set $P2836, $P2835["Compiler"]
    $P2837 = $P2836."new"()
    store_lex "$p6regex", $P2837
.annotate 'line', 829
    find_lex $P2838, "$p6regex"
    unless_null $P2838, vivify_1170
    new $P2838, "Undef"
  vivify_1170:
    $P2838."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2839, "$p6regex"
    unless_null $P2839, vivify_1171
    new $P2839, "Undef"
  vivify_1171:
    get_hll_global $P2840, "GLOBAL"
    nqp_get_package_through_who $P2841, $P2840, "Regex"
    nqp_get_package_through_who $P2842, $P2841, "P6Regex"
    get_who $P2843, $P2842
    set $P2844, $P2843["Grammar"]
    $P2839."parsegrammar"($P2844)
.annotate 'line', 831
    find_lex $P2845, "$p6regex"
    unless_null $P2845, vivify_1172
    new $P2845, "Undef"
  vivify_1172:
    get_hll_global $P2846, "GLOBAL"
    nqp_get_package_through_who $P2847, $P2846, "Regex"
    nqp_get_package_through_who $P2848, $P2847, "P6Regex"
    get_who $P2849, $P2848
    set $P2850, $P2849["Actions"]
    $P2845."parseactions"($P2850)
    find_lex $P2851, "MAIN"
    find_lex $P2854, "@ARGS"
    if $P2854, if_2853
    set $P2852, $P2854
    goto if_2853_end
  if_2853:
    .const 'Sub' $P2855 = "11_1303857426.514" 
    find_lex $P2856, "@ARGS"
    $P2857 = $P2855($P2856 :flat)
    set $P2852, $P2857
  if_2853_end:
.annotate 'line', 1
    .return ($P2852)
    .const 'Sub' $P2859 = "260_1303857426.514" 
    .return ($P2859)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post261") :outer("10_1303857426.514")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303857426.514" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2863, "1303857421.716"
    isnull $I2864, $P2863
    if $I2864, if_2862
    .const 'Sub' $P2956 = "10_1303857426.514" 
    $P2957 = $P2956."get_lexinfo"()
    nqp_get_sc_object $P2958, "1303857421.716", 0
    $P2957."set_static_lexpad_value"("GLOBALish", $P2958)
    .const 'Sub' $P2959 = "10_1303857426.514" 
    $P2960 = $P2959."get_lexinfo"()
    $P2960."finish_static_lexpad"()
    .const 'Sub' $P2961 = "10_1303857426.514" 
    $P2962 = $P2961."get_lexinfo"()
    nqp_get_sc_object $P2963, "1303857421.716", 0
    $P2962."set_static_lexpad_value"("$?PACKAGE", $P2963)
    .const 'Sub' $P2964 = "10_1303857426.514" 
    $P2965 = $P2964."get_lexinfo"()
    $P2965."finish_static_lexpad"()
    nqp_get_sc_object $P2966, "1303857421.716", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2966
    .const 'Sub' $P2967 = "12_1303857426.514" 
    $P2968 = $P2967."get_lexinfo"()
    nqp_get_sc_object $P2969, "1303857421.716", 1
    $P2968."set_static_lexpad_value"("$?PACKAGE", $P2969)
    .const 'Sub' $P2970 = "12_1303857426.514" 
    $P2971 = $P2970."get_lexinfo"()
    $P2971."finish_static_lexpad"()
    .const 'Sub' $P2972 = "12_1303857426.514" 
    $P2973 = $P2972."get_lexinfo"()
    nqp_get_sc_object $P2974, "1303857421.716", 1
    $P2973."set_static_lexpad_value"("$?CLASS", $P2974)
    .const 'Sub' $P2975 = "12_1303857426.514" 
    $P2976 = $P2975."get_lexinfo"()
    $P2976."finish_static_lexpad"()
    nqp_get_sc_object $P2977, "1303857421.716", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2977
    .const 'Sub' $P2978 = "176_1303857426.514" 
    nqp_get_sc_object $P2979, "1303857421.716", 2
    get_who $P2980, $P2979
    set $P2980["buildsub"], $P2978
    .const 'Sub' $P2981 = "175_1303857426.514" 
    $P2982 = $P2981."get_lexinfo"()
    nqp_get_sc_object $P2983, "1303857421.716", 2
    $P2982."set_static_lexpad_value"("$?PACKAGE", $P2983)
    .const 'Sub' $P2984 = "175_1303857426.514" 
    $P2985 = $P2984."get_lexinfo"()
    $P2985."finish_static_lexpad"()
    .const 'Sub' $P2986 = "175_1303857426.514" 
    $P2987 = $P2986."get_lexinfo"()
    nqp_get_sc_object $P2988, "1303857421.716", 2
    $P2987."set_static_lexpad_value"("$?CLASS", $P2988)
    .const 'Sub' $P2989 = "175_1303857426.514" 
    $P2990 = $P2989."get_lexinfo"()
    $P2990."finish_static_lexpad"()
    nqp_get_sc_object $P2991, "1303857421.716", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2991
    .const 'Sub' $P2992 = "258_1303857426.514" 
    $P2993 = $P2992."get_lexinfo"()
    nqp_get_sc_object $P2994, "1303857421.716", 3
    $P2993."set_static_lexpad_value"("$?PACKAGE", $P2994)
    .const 'Sub' $P2995 = "258_1303857426.514" 
    $P2996 = $P2995."get_lexinfo"()
    $P2996."finish_static_lexpad"()
    .const 'Sub' $P2997 = "258_1303857426.514" 
    $P2998 = $P2997."get_lexinfo"()
    nqp_get_sc_object $P2999, "1303857421.716", 3
    $P2998."set_static_lexpad_value"("$?CLASS", $P2999)
    .const 'Sub' $P3000 = "258_1303857426.514" 
    $P3001 = $P3000."get_lexinfo"()
    $P3001."finish_static_lexpad"()
    goto if_2862_end
  if_2862:
    nqp_dynop_setup 
    getinterp $P2865
    get_class $P2866, "LexPad"
    get_class $P2867, "NQPLexPad"
    $P2865."hll_map"($P2866, $P2867)
    nqp_create_sc $P2868, "1303857421.716"
    .local pmc cur_sc
    set cur_sc, $P2868
    nqp_get_sc_object $P2869, "__6MODEL_CORE__", 0
    $P2870 = $P2869."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2870, cur_sc
    nqp_set_sc_object "1303857421.716", 0, $P2870
    .const 'Sub' $P2871 = "10_1303857426.514" 
    $P2872 = $P2871."get_lexinfo"()
    nqp_get_sc_object $P2873, "1303857421.716", 0
    $P2872."set_static_lexpad_value"("GLOBALish", $P2873)
    .const 'Sub' $P2874 = "10_1303857426.514" 
    $P2875 = $P2874."get_lexinfo"()
    $P2875."finish_static_lexpad"()
    .const 'Sub' $P2876 = "10_1303857426.514" 
    $P2877 = $P2876."get_lexinfo"()
    nqp_get_sc_object $P2878, "1303857421.716", 0
    $P2877."set_static_lexpad_value"("$?PACKAGE", $P2878)
    .const 'Sub' $P2879 = "10_1303857426.514" 
    $P2880 = $P2879."get_lexinfo"()
    $P2880."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2881, "ModuleLoader"
    $P2882 = $P2881."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2882)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2883, "ModuleLoader"
    nqp_get_sc_object $P2884, "1303857421.716", 0
    $P2883."load_module"("Regex", $P2884)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2885, "ModuleLoader"
    nqp_get_sc_object $P2886, "1303857421.716", 0
    $P2885."load_module"("HLL", $P2886)
    nqp_get_sc_object $P2887, "1303857403.801", 6
    $P2888 = $P2887."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2888, cur_sc
    nqp_set_sc_object "1303857421.716", 1, $P2888
    nqp_get_sc_object $P2889, "1303857421.716", 1
    nqp_get_sc_object $P2890, "1303857421.716", 0
    nqp_get_package_through_who $P2891, $P2890, "Regex"
    nqp_get_package_through_who $P2892, $P2891, "P6Regex"
    get_who $P2893, $P2892
    set $P2893["Grammar"], $P2889
    nqp_get_sc_object $P2894, "1303857421.716", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2894
    .const 'Sub' $P2895 = "12_1303857426.514" 
    $P2896 = $P2895."get_lexinfo"()
    nqp_get_sc_object $P2897, "1303857421.716", 1
    $P2896."set_static_lexpad_value"("$?PACKAGE", $P2897)
    .const 'Sub' $P2898 = "12_1303857426.514" 
    $P2899 = $P2898."get_lexinfo"()
    $P2899."finish_static_lexpad"()
    .const 'Sub' $P2900 = "12_1303857426.514" 
    $P2901 = $P2900."get_lexinfo"()
    nqp_get_sc_object $P2902, "1303857421.716", 1
    $P2901."set_static_lexpad_value"("$?CLASS", $P2902)
    .const 'Sub' $P2903 = "12_1303857426.514" 
    $P2904 = $P2903."get_lexinfo"()
    $P2904."finish_static_lexpad"()
    nqp_get_sc_object $P2905, "1303857421.716", 1
    get_how $P2906, $P2905
    nqp_get_sc_object $P2907, "1303857421.716", 1
    nqp_get_sc_object $P2908, "1303857411.111", 1
    $P2906."add_parent"($P2907, $P2908)
    nqp_get_sc_object $P2909, "1303857403.801", 6
    $P2910 = $P2909."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2910, cur_sc
    nqp_set_sc_object "1303857421.716", 2, $P2910
    nqp_get_sc_object $P2911, "1303857421.716", 2
    nqp_get_sc_object $P2912, "1303857421.716", 0
    nqp_get_package_through_who $P2913, $P2912, "Regex"
    nqp_get_package_through_who $P2914, $P2913, "P6Regex"
    get_who $P2915, $P2914
    set $P2915["Actions"], $P2911
    nqp_get_sc_object $P2916, "1303857421.716", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2916
    .const 'Sub' $P2917 = "176_1303857426.514" 
    nqp_get_sc_object $P2918, "1303857421.716", 2
    get_who $P2919, $P2918
    set $P2919["buildsub"], $P2917
    .const 'Sub' $P2920 = "175_1303857426.514" 
    $P2921 = $P2920."get_lexinfo"()
    nqp_get_sc_object $P2922, "1303857421.716", 2
    $P2921."set_static_lexpad_value"("$?PACKAGE", $P2922)
    .const 'Sub' $P2923 = "175_1303857426.514" 
    $P2924 = $P2923."get_lexinfo"()
    $P2924."finish_static_lexpad"()
    .const 'Sub' $P2925 = "175_1303857426.514" 
    $P2926 = $P2925."get_lexinfo"()
    nqp_get_sc_object $P2927, "1303857421.716", 2
    $P2926."set_static_lexpad_value"("$?CLASS", $P2927)
    .const 'Sub' $P2928 = "175_1303857426.514" 
    $P2929 = $P2928."get_lexinfo"()
    $P2929."finish_static_lexpad"()
    nqp_get_sc_object $P2930, "1303857421.716", 2
    get_how $P2931, $P2930
    nqp_get_sc_object $P2932, "1303857421.716", 2
    nqp_get_sc_object $P2933, "1303857411.111", 2
    $P2931."add_parent"($P2932, $P2933)
    nqp_get_sc_object $P2934, "1303857403.801", 6
    $P2935 = $P2934."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2935, cur_sc
    nqp_set_sc_object "1303857421.716", 3, $P2935
    nqp_get_sc_object $P2936, "1303857421.716", 3
    nqp_get_sc_object $P2937, "1303857421.716", 0
    nqp_get_package_through_who $P2938, $P2937, "Regex"
    nqp_get_package_through_who $P2939, $P2938, "P6Regex"
    get_who $P2940, $P2939
    set $P2940["Compiler"], $P2936
    nqp_get_sc_object $P2941, "1303857421.716", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2941
    .const 'Sub' $P2942 = "258_1303857426.514" 
    $P2943 = $P2942."get_lexinfo"()
    nqp_get_sc_object $P2944, "1303857421.716", 3
    $P2943."set_static_lexpad_value"("$?PACKAGE", $P2944)
    .const 'Sub' $P2945 = "258_1303857426.514" 
    $P2946 = $P2945."get_lexinfo"()
    $P2946."finish_static_lexpad"()
    .const 'Sub' $P2947 = "258_1303857426.514" 
    $P2948 = $P2947."get_lexinfo"()
    nqp_get_sc_object $P2949, "1303857421.716", 3
    $P2948."set_static_lexpad_value"("$?CLASS", $P2949)
    .const 'Sub' $P2950 = "258_1303857426.514" 
    $P2951 = $P2950."get_lexinfo"()
    $P2951."finish_static_lexpad"()
    nqp_get_sc_object $P2952, "1303857421.716", 3
    get_how $P2953, $P2952
    nqp_get_sc_object $P2954, "1303857421.716", 3
    nqp_get_sc_object $P2955, "1303857411.111", 3
    $P2953."add_parent"($P2954, $P2955)
  if_2862_end:
    nqp_get_sc_object $P3002, "1303857421.716", 0
    set_hll_global "GLOBAL", $P3002
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1303857426.514") :outer("10_1303857426.514")
    .param pmc param_18
.annotate 'line', 833
    .lex "@ARGS", param_18
.annotate 'line', 834
    find_lex $P19, "$p6regex"
    unless_null $P19, vivify_262
    new $P19, "Undef"
  vivify_262:
    find_lex $P20, "@ARGS"
    unless_null $P20, vivify_263
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    $P21 = $P19."command_line"($P20, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 833
    .return ($P21)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block23"  :subid("12_1303857426.514") :outer("10_1303857426.514")
.annotate 'line', 9
    .const 'Sub' $P637 = "174_1303857426.514" 
    capture_lex $P637
    .const 'Sub' $P629 = "172_1303857426.514" 
    capture_lex $P629
    .const 'Sub' $P622 = "170_1303857426.514" 
    capture_lex $P622
    .const 'Sub' $P615 = "168_1303857426.514" 
    capture_lex $P615
    .const 'Sub' $P593 = "163_1303857426.514" 
    capture_lex $P593
    .const 'Sub' $P559 = "157_1303857426.514" 
    capture_lex $P559
    .const 'Sub' $P547 = "154_1303857426.514" 
    capture_lex $P547
    .const 'Sub' $P535 = "151_1303857426.514" 
    capture_lex $P535
    .const 'Sub' $P529 = "149_1303857426.514" 
    capture_lex $P529
    .const 'Sub' $P518 = "146_1303857426.514" 
    capture_lex $P518
    .const 'Sub' $P507 = "143_1303857426.514" 
    capture_lex $P507
    .const 'Sub' $P496 = "139_1303857426.514" 
    capture_lex $P496
    .const 'Sub' $P486 = "136_1303857426.514" 
    capture_lex $P486
    .const 'Sub' $P480 = "134_1303857426.514" 
    capture_lex $P480
    .const 'Sub' $P474 = "132_1303857426.514" 
    capture_lex $P474
    .const 'Sub' $P468 = "130_1303857426.514" 
    capture_lex $P468
    .const 'Sub' $P462 = "128_1303857426.514" 
    capture_lex $P462
    .const 'Sub' $P454 = "126_1303857426.514" 
    capture_lex $P454
    .const 'Sub' $P443 = "124_1303857426.514" 
    capture_lex $P443
    .const 'Sub' $P432 = "122_1303857426.514" 
    capture_lex $P432
    .const 'Sub' $P426 = "120_1303857426.514" 
    capture_lex $P426
    .const 'Sub' $P420 = "118_1303857426.514" 
    capture_lex $P420
    .const 'Sub' $P414 = "116_1303857426.514" 
    capture_lex $P414
    .const 'Sub' $P408 = "114_1303857426.514" 
    capture_lex $P408
    .const 'Sub' $P402 = "112_1303857426.514" 
    capture_lex $P402
    .const 'Sub' $P396 = "110_1303857426.514" 
    capture_lex $P396
    .const 'Sub' $P390 = "108_1303857426.514" 
    capture_lex $P390
    .const 'Sub' $P384 = "106_1303857426.514" 
    capture_lex $P384
    .const 'Sub' $P370 = "102_1303857426.514" 
    capture_lex $P370
    .const 'Sub' $P360 = "100_1303857426.514" 
    capture_lex $P360
    .const 'Sub' $P353 = "98_1303857426.514" 
    capture_lex $P353
    .const 'Sub' $P341 = "96_1303857426.514" 
    capture_lex $P341
    .const 'Sub' $P334 = "94_1303857426.514" 
    capture_lex $P334
    .const 'Sub' $P328 = "92_1303857426.514" 
    capture_lex $P328
    .const 'Sub' $P322 = "90_1303857426.514" 
    capture_lex $P322
    .const 'Sub' $P316 = "88_1303857426.514" 
    capture_lex $P316
    .const 'Sub' $P309 = "86_1303857426.514" 
    capture_lex $P309
    .const 'Sub' $P302 = "84_1303857426.514" 
    capture_lex $P302
    .const 'Sub' $P295 = "82_1303857426.514" 
    capture_lex $P295
    .const 'Sub' $P288 = "80_1303857426.514" 
    capture_lex $P288
    .const 'Sub' $P282 = "78_1303857426.514" 
    capture_lex $P282
    .const 'Sub' $P276 = "76_1303857426.514" 
    capture_lex $P276
    .const 'Sub' $P270 = "74_1303857426.514" 
    capture_lex $P270
    .const 'Sub' $P264 = "72_1303857426.514" 
    capture_lex $P264
    .const 'Sub' $P258 = "70_1303857426.514" 
    capture_lex $P258
    .const 'Sub' $P253 = "68_1303857426.514" 
    capture_lex $P253
    .const 'Sub' $P248 = "66_1303857426.514" 
    capture_lex $P248
    .const 'Sub' $P242 = "64_1303857426.514" 
    capture_lex $P242
    .const 'Sub' $P236 = "62_1303857426.514" 
    capture_lex $P236
    .const 'Sub' $P230 = "60_1303857426.514" 
    capture_lex $P230
    .const 'Sub' $P213 = "55_1303857426.514" 
    capture_lex $P213
    .const 'Sub' $P198 = "53_1303857426.514" 
    capture_lex $P198
    .const 'Sub' $P175 = "47_1303857426.514" 
    capture_lex $P175
    .const 'Sub' $P168 = "45_1303857426.514" 
    capture_lex $P168
    .const 'Sub' $P161 = "43_1303857426.514" 
    capture_lex $P161
    .const 'Sub' $P154 = "41_1303857426.514" 
    capture_lex $P154
    .const 'Sub' $P135 = "36_1303857426.514" 
    capture_lex $P135
    .const 'Sub' $P123 = "33_1303857426.514" 
    capture_lex $P123
    .const 'Sub' $P116 = "31_1303857426.514" 
    capture_lex $P116
    .const 'Sub' $P107 = "29_1303857426.514" 
    capture_lex $P107
    .const 'Sub' $P97 = "27_1303857426.514" 
    capture_lex $P97
    .const 'Sub' $P90 = "25_1303857426.514" 
    capture_lex $P90
    .const 'Sub' $P78 = "23_1303857426.514" 
    capture_lex $P78
    .const 'Sub' $P71 = "21_1303857426.514" 
    capture_lex $P71
    .const 'Sub' $P64 = "19_1303857426.514" 
    capture_lex $P64
    .const 'Sub' $P54 = "16_1303857426.514" 
    capture_lex $P54
    .const 'Sub' $P47 = "14_1303857426.514" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1303857426.514" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 11
    .const 'Sub' $P629 = "172_1303857426.514" 
    capture_lex $P629
.annotate 'line', 9
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post264") :outer("12_1303857426.514")
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1303857426.514" 
    .local pmc block
    set block, $P24
    .const 'Sub' $P637 = "174_1303857426.514" 
    capture_lex $P637
    $P637()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block636"  :anon :subid("174_1303857426.514") :outer("12_1303857426.514")
.annotate 'line', 9
    nqp_get_sc_object $P638, "1303857421.716", 1
    .local pmc type_obj
    set type_obj, $P638
    get_how $P639, type_obj
    .const 'Sub' $P640 = "13_1303857426.514" 
    $P639."add_method"(type_obj, "obs", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "14_1303857426.514" 
    $P641."add_method"(type_obj, "ws", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__ws"
    $P643."add_method"(type_obj, "!PREFIX__ws", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "16_1303857426.514" 
    $P645."add_method"(type_obj, "normspace", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__normspace"
    $P647."add_method"(type_obj, "!PREFIX__normspace", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "19_1303857426.514" 
    $P649."add_method"(type_obj, "identifier", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__identifier"
    $P651."add_method"(type_obj, "!PREFIX__identifier", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "21_1303857426.514" 
    $P653."add_method"(type_obj, "arg", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__arg"
    $P655."add_method"(type_obj, "!PREFIX__arg", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "23_1303857426.514" 
    $P657."add_method"(type_obj, "arglist", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__arglist"
    $P659."add_method"(type_obj, "!PREFIX__arglist", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "25_1303857426.514" 
    $P661."add_method"(type_obj, "TOP", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__TOP"
    $P663."add_method"(type_obj, "!PREFIX__TOP", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "27_1303857426.514" 
    $P665."add_method"(type_obj, "nibbler", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__nibbler"
    $P667."add_method"(type_obj, "!PREFIX__nibbler", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "29_1303857426.514" 
    $P669."add_method"(type_obj, "termconj", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__termconj"
    $P671."add_method"(type_obj, "!PREFIX__termconj", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "31_1303857426.514" 
    $P673."add_method"(type_obj, "termish", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__termish"
    $P675."add_method"(type_obj, "!PREFIX__termish", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "33_1303857426.514" 
    $P677."add_method"(type_obj, "quantified_atom", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__quantified_atom"
    $P679."add_method"(type_obj, "!PREFIX__quantified_atom", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "36_1303857426.514" 
    $P681."add_method"(type_obj, "atom", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__atom"
    $P683."add_method"(type_obj, "!PREFIX__atom", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "39_1303857426.514" 
    $P685."add_method"(type_obj, "quantifier", $P686)
    get_how $P687, type_obj
    .const 'Sub' $P688 = "40_1303857426.514" 
    $P687."add_method"(type_obj, "!PREFIX__quantifier", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "41_1303857426.514" 
    $P689."add_method"(type_obj, "quantifier:sym<*>", $P690)
    get_how $P691, type_obj
    get_global $P692, "!PREFIX__quantifier:sym<*>"
    $P691."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "43_1303857426.514" 
    $P693."add_method"(type_obj, "quantifier:sym<+>", $P694)
    get_how $P695, type_obj
    get_global $P696, "!PREFIX__quantifier:sym<+>"
    $P695."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "45_1303857426.514" 
    $P697."add_method"(type_obj, "quantifier:sym<?>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__quantifier:sym<?>"
    $P699."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "47_1303857426.514" 
    $P701."add_method"(type_obj, "quantifier:sym<{N,M}>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__quantifier:sym<{N,M}>"
    $P703."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "53_1303857426.514" 
    $P705."add_method"(type_obj, "quantifier:sym<**>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__quantifier:sym<**>"
    $P707."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "55_1303857426.514" 
    $P709."add_method"(type_obj, "backmod", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__backmod"
    $P711."add_method"(type_obj, "!PREFIX__backmod", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "58_1303857426.514" 
    $P713."add_method"(type_obj, "metachar", $P714)
    get_how $P715, type_obj
    .const 'Sub' $P716 = "59_1303857426.514" 
    $P715."add_method"(type_obj, "!PREFIX__metachar", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "60_1303857426.514" 
    $P717."add_method"(type_obj, "metachar:sym<ws>", $P718)
    get_how $P719, type_obj
    get_global $P720, "!PREFIX__metachar:sym<ws>"
    $P719."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "62_1303857426.514" 
    $P721."add_method"(type_obj, "metachar:sym<[ ]>", $P722)
    get_how $P723, type_obj
    get_global $P724, "!PREFIX__metachar:sym<[ ]>"
    $P723."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "64_1303857426.514" 
    $P725."add_method"(type_obj, "metachar:sym<( )>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__metachar:sym<( )>"
    $P727."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "66_1303857426.514" 
    $P729."add_method"(type_obj, "metachar:sym<'>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__metachar:sym<'>"
    $P731."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "68_1303857426.514" 
    $P733."add_method"(type_obj, "metachar:sym<\">", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__metachar:sym<\">"
    $P735."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "70_1303857426.514" 
    $P737."add_method"(type_obj, "metachar:sym<.>", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__metachar:sym<.>"
    $P739."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P740)
    get_how $P741, type_obj
    .const 'Sub' $P742 = "72_1303857426.514" 
    $P741."add_method"(type_obj, "metachar:sym<^>", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__metachar:sym<^>"
    $P743."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P744)
    get_how $P745, type_obj
    .const 'Sub' $P746 = "74_1303857426.514" 
    $P745."add_method"(type_obj, "metachar:sym<^^>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__metachar:sym<^^>"
    $P747."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P748)
    get_how $P749, type_obj
    .const 'Sub' $P750 = "76_1303857426.514" 
    $P749."add_method"(type_obj, "metachar:sym<$>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__metachar:sym<$>"
    $P751."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P752)
    get_how $P753, type_obj
    .const 'Sub' $P754 = "78_1303857426.514" 
    $P753."add_method"(type_obj, "metachar:sym<$$>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__metachar:sym<$$>"
    $P755."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P756)
    get_how $P757, type_obj
    .const 'Sub' $P758 = "80_1303857426.514" 
    $P757."add_method"(type_obj, "metachar:sym<:::>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__metachar:sym<:::>"
    $P759."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P760)
    get_how $P761, type_obj
    .const 'Sub' $P762 = "82_1303857426.514" 
    $P761."add_method"(type_obj, "metachar:sym<::>", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__metachar:sym<::>"
    $P763."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P764)
    get_how $P765, type_obj
    .const 'Sub' $P766 = "84_1303857426.514" 
    $P765."add_method"(type_obj, "metachar:sym<lwb>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__metachar:sym<lwb>"
    $P767."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P768)
    get_how $P769, type_obj
    .const 'Sub' $P770 = "86_1303857426.514" 
    $P769."add_method"(type_obj, "metachar:sym<rwb>", $P770)
    get_how $P771, type_obj
    get_global $P772, "!PREFIX__metachar:sym<rwb>"
    $P771."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P772)
    get_how $P773, type_obj
    .const 'Sub' $P774 = "88_1303857426.514" 
    $P773."add_method"(type_obj, "metachar:sym<bs>", $P774)
    get_how $P775, type_obj
    get_global $P776, "!PREFIX__metachar:sym<bs>"
    $P775."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P776)
    get_how $P777, type_obj
    .const 'Sub' $P778 = "90_1303857426.514" 
    $P777."add_method"(type_obj, "metachar:sym<mod>", $P778)
    get_how $P779, type_obj
    get_global $P780, "!PREFIX__metachar:sym<mod>"
    $P779."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P780)
    get_how $P781, type_obj
    .const 'Sub' $P782 = "92_1303857426.514" 
    $P781."add_method"(type_obj, "metachar:sym<quantifier>", $P782)
    get_how $P783, type_obj
    get_global $P784, "!PREFIX__metachar:sym<quantifier>"
    $P783."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P784)
    get_how $P785, type_obj
    .const 'Sub' $P786 = "94_1303857426.514" 
    $P785."add_method"(type_obj, "metachar:sym<~>", $P786)
    get_how $P787, type_obj
    get_global $P788, "!PREFIX__metachar:sym<~>"
    $P787."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P788)
    get_how $P789, type_obj
    .const 'Sub' $P790 = "96_1303857426.514" 
    $P789."add_method"(type_obj, "metachar:sym<{*}>", $P790)
    get_how $P791, type_obj
    get_global $P792, "!PREFIX__metachar:sym<{*}>"
    $P791."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P792)
    get_how $P793, type_obj
    .const 'Sub' $P794 = "98_1303857426.514" 
    $P793."add_method"(type_obj, "metachar:sym<assert>", $P794)
    get_how $P795, type_obj
    get_global $P796, "!PREFIX__metachar:sym<assert>"
    $P795."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P796)
    get_how $P797, type_obj
    .const 'Sub' $P798 = "100_1303857426.514" 
    $P797."add_method"(type_obj, "metachar:sym<var>", $P798)
    get_how $P799, type_obj
    get_global $P800, "!PREFIX__metachar:sym<var>"
    $P799."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P800)
    get_how $P801, type_obj
    .const 'Sub' $P802 = "102_1303857426.514" 
    $P801."add_method"(type_obj, "metachar:sym<PIR>", $P802)
    get_how $P803, type_obj
    get_global $P804, "!PREFIX__metachar:sym<PIR>"
    $P803."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P804)
    get_how $P805, type_obj
    .const 'Sub' $P806 = "104_1303857426.514" 
    $P805."add_method"(type_obj, "backslash", $P806)
    get_how $P807, type_obj
    .const 'Sub' $P808 = "105_1303857426.514" 
    $P807."add_method"(type_obj, "!PREFIX__backslash", $P808)
    get_how $P809, type_obj
    .const 'Sub' $P810 = "106_1303857426.514" 
    $P809."add_method"(type_obj, "backslash:sym<w>", $P810)
    get_how $P811, type_obj
    get_global $P812, "!PREFIX__backslash:sym<w>"
    $P811."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P812)
    get_how $P813, type_obj
    .const 'Sub' $P814 = "108_1303857426.514" 
    $P813."add_method"(type_obj, "backslash:sym<b>", $P814)
    get_how $P815, type_obj
    get_global $P816, "!PREFIX__backslash:sym<b>"
    $P815."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P816)
    get_how $P817, type_obj
    .const 'Sub' $P818 = "110_1303857426.514" 
    $P817."add_method"(type_obj, "backslash:sym<e>", $P818)
    get_how $P819, type_obj
    get_global $P820, "!PREFIX__backslash:sym<e>"
    $P819."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P820)
    get_how $P821, type_obj
    .const 'Sub' $P822 = "112_1303857426.514" 
    $P821."add_method"(type_obj, "backslash:sym<f>", $P822)
    get_how $P823, type_obj
    get_global $P824, "!PREFIX__backslash:sym<f>"
    $P823."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P824)
    get_how $P825, type_obj
    .const 'Sub' $P826 = "114_1303857426.514" 
    $P825."add_method"(type_obj, "backslash:sym<h>", $P826)
    get_how $P827, type_obj
    get_global $P828, "!PREFIX__backslash:sym<h>"
    $P827."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P828)
    get_how $P829, type_obj
    .const 'Sub' $P830 = "116_1303857426.514" 
    $P829."add_method"(type_obj, "backslash:sym<r>", $P830)
    get_how $P831, type_obj
    get_global $P832, "!PREFIX__backslash:sym<r>"
    $P831."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P832)
    get_how $P833, type_obj
    .const 'Sub' $P834 = "118_1303857426.514" 
    $P833."add_method"(type_obj, "backslash:sym<t>", $P834)
    get_how $P835, type_obj
    get_global $P836, "!PREFIX__backslash:sym<t>"
    $P835."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P836)
    get_how $P837, type_obj
    .const 'Sub' $P838 = "120_1303857426.514" 
    $P837."add_method"(type_obj, "backslash:sym<v>", $P838)
    get_how $P839, type_obj
    get_global $P840, "!PREFIX__backslash:sym<v>"
    $P839."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P840)
    get_how $P841, type_obj
    .const 'Sub' $P842 = "122_1303857426.514" 
    $P841."add_method"(type_obj, "backslash:sym<o>", $P842)
    get_how $P843, type_obj
    get_global $P844, "!PREFIX__backslash:sym<o>"
    $P843."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P844)
    get_how $P845, type_obj
    .const 'Sub' $P846 = "124_1303857426.514" 
    $P845."add_method"(type_obj, "backslash:sym<x>", $P846)
    get_how $P847, type_obj
    get_global $P848, "!PREFIX__backslash:sym<x>"
    $P847."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P848)
    get_how $P849, type_obj
    .const 'Sub' $P850 = "126_1303857426.514" 
    $P849."add_method"(type_obj, "backslash:sym<c>", $P850)
    get_how $P851, type_obj
    get_global $P852, "!PREFIX__backslash:sym<c>"
    $P851."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P852)
    get_how $P853, type_obj
    .const 'Sub' $P854 = "128_1303857426.514" 
    $P853."add_method"(type_obj, "backslash:sym<A>", $P854)
    get_how $P855, type_obj
    get_global $P856, "!PREFIX__backslash:sym<A>"
    $P855."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P856)
    get_how $P857, type_obj
    .const 'Sub' $P858 = "130_1303857426.514" 
    $P857."add_method"(type_obj, "backslash:sym<z>", $P858)
    get_how $P859, type_obj
    get_global $P860, "!PREFIX__backslash:sym<z>"
    $P859."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P860)
    get_how $P861, type_obj
    .const 'Sub' $P862 = "132_1303857426.514" 
    $P861."add_method"(type_obj, "backslash:sym<Z>", $P862)
    get_how $P863, type_obj
    get_global $P864, "!PREFIX__backslash:sym<Z>"
    $P863."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P864)
    get_how $P865, type_obj
    .const 'Sub' $P866 = "134_1303857426.514" 
    $P865."add_method"(type_obj, "backslash:sym<Q>", $P866)
    get_how $P867, type_obj
    get_global $P868, "!PREFIX__backslash:sym<Q>"
    $P867."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P868)
    get_how $P869, type_obj
    .const 'Sub' $P870 = "136_1303857426.514" 
    $P869."add_method"(type_obj, "backslash:sym<unrec>", $P870)
    get_how $P871, type_obj
    get_global $P872, "!PREFIX__backslash:sym<unrec>"
    $P871."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P872)
    get_how $P873, type_obj
    .const 'Sub' $P874 = "139_1303857426.514" 
    $P873."add_method"(type_obj, "backslash:sym<misc>", $P874)
    get_how $P875, type_obj
    get_global $P876, "!PREFIX__backslash:sym<misc>"
    $P875."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P876)
    get_how $P877, type_obj
    .const 'Sub' $P878 = "141_1303857426.514" 
    $P877."add_method"(type_obj, "assertion", $P878)
    get_how $P879, type_obj
    .const 'Sub' $P880 = "142_1303857426.514" 
    $P879."add_method"(type_obj, "!PREFIX__assertion", $P880)
    get_how $P881, type_obj
    .const 'Sub' $P882 = "143_1303857426.514" 
    $P881."add_method"(type_obj, "assertion:sym<?>", $P882)
    get_how $P883, type_obj
    get_global $P884, "!PREFIX__assertion:sym<?>"
    $P883."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P884)
    get_how $P885, type_obj
    .const 'Sub' $P886 = "146_1303857426.514" 
    $P885."add_method"(type_obj, "assertion:sym<!>", $P886)
    get_how $P887, type_obj
    get_global $P888, "!PREFIX__assertion:sym<!>"
    $P887."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P888)
    get_how $P889, type_obj
    .const 'Sub' $P890 = "149_1303857426.514" 
    $P889."add_method"(type_obj, "assertion:sym<method>", $P890)
    get_how $P891, type_obj
    get_global $P892, "!PREFIX__assertion:sym<method>"
    $P891."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P892)
    get_how $P893, type_obj
    .const 'Sub' $P894 = "151_1303857426.514" 
    $P893."add_method"(type_obj, "assertion:sym<name>", $P894)
    get_how $P895, type_obj
    get_global $P896, "!PREFIX__assertion:sym<name>"
    $P895."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P896)
    get_how $P897, type_obj
    .const 'Sub' $P898 = "154_1303857426.514" 
    $P897."add_method"(type_obj, "assertion:sym<[>", $P898)
    get_how $P899, type_obj
    get_global $P900, "!PREFIX__assertion:sym<[>"
    $P899."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P900)
    get_how $P901, type_obj
    .const 'Sub' $P902 = "157_1303857426.514" 
    $P901."add_method"(type_obj, "cclass_elem", $P902)
    get_how $P903, type_obj
    get_global $P904, "!PREFIX__cclass_elem"
    $P903."add_method"(type_obj, "!PREFIX__cclass_elem", $P904)
    get_how $P905, type_obj
    .const 'Sub' $P906 = "163_1303857426.514" 
    $P905."add_method"(type_obj, "mod_internal", $P906)
    get_how $P907, type_obj
    get_global $P908, "!PREFIX__mod_internal"
    $P907."add_method"(type_obj, "!PREFIX__mod_internal", $P908)
    get_how $P909, type_obj
    .const 'Sub' $P910 = "166_1303857426.514" 
    $P909."add_method"(type_obj, "mod_ident", $P910)
    get_how $P911, type_obj
    .const 'Sub' $P912 = "167_1303857426.514" 
    $P911."add_method"(type_obj, "!PREFIX__mod_ident", $P912)
    get_how $P913, type_obj
    .const 'Sub' $P914 = "168_1303857426.514" 
    $P913."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P914)
    get_how $P915, type_obj
    get_global $P916, "!PREFIX__mod_ident:sym<ignorecase>"
    $P915."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P916)
    get_how $P917, type_obj
    .const 'Sub' $P918 = "170_1303857426.514" 
    $P917."add_method"(type_obj, "mod_ident:sym<ratchet>", $P918)
    get_how $P919, type_obj
    get_global $P920, "!PREFIX__mod_ident:sym<ratchet>"
    $P919."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P920)
    get_how $P921, type_obj
    .const 'Sub' $P922 = "172_1303857426.514" 
    $P921."add_method"(type_obj, "mod_ident:sym<sigspace>", $P922)
    get_how $P923, type_obj
    get_global $P924, "!PREFIX__mod_ident:sym<sigspace>"
    $P923."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P924)
    get_how $P925, type_obj
    $P926 = $P925."compose"(type_obj)
    .return ($P926)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1303857426.514") :outer("12_1303857426.514")
    .param pmc param_28
    .param pmc param_29
    .param pmc param_30
    .param pmc param_31 :optional
    .param int has_param_31 :opt_flag
.annotate 'line', 11
    .lex "self", param_28
    .lex "$old", param_29
    .lex "$new", param_30
    if has_param_31, optparam_265
    new $P32, "String"
    assign $P32, "in Perl 6"
    set param_31, $P32
  optparam_265:
    .lex "$when", param_31
.annotate 'line', 12
    find_lex $P33, "self"
    new $P34, "String"
    assign $P34, "Unsupported use of "
    find_lex $P35, "$old"
    unless_null $P35, vivify_266
    new $P35, "Undef"
  vivify_266:
    set $S36, $P35
    concat $P37, $P34, $S36
    concat $P38, $P37, ";"
.annotate 'line', 13
    find_lex $P39, "$when"
    unless_null $P39, vivify_267
    new $P39, "Undef"
  vivify_267:
    set $S40, $P39
    concat $P41, $P38, $S40
    concat $P42, $P41, " please use "
    find_lex $P43, "$new"
    unless_null $P43, vivify_268
    new $P43, "Undef"
  vivify_268:
    set $S44, $P43
    concat $P45, $P42, $S44
    $P46 = $P33."panic"($P45)
.annotate 'line', 11
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_debug
    (rx48_cur, rx48_pos, rx48_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx48_cur
    .local pmc match
    .lex "$/", match
    length rx48_eos, rx48_tgt
    gt rx48_pos, rx48_eos, rx48_done
    set rx48_off, 0
    lt rx48_pos, 2, rx48_start
    sub rx48_off, rx48_pos, 1
    substr rx48_tgt, rx48_tgt, rx48_off
  rx48_start:
    eq $I10, 1, rx48_restart
    if_null rx48_debug, debug_269
    rx48_cur."!cursor_debug"("START", "ws")
  debug_269:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    (rx48_pos) = rx48_cur."from"()
    inc rx48_pos
    rx48_cur."!cursor_from"(rx48_pos)
    ge rx48_pos, rx48_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan51_done:
.annotate 'line', 16
  # rx rxquantr52 ** 0..*
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxquantr52_loop:
  alt53_0:
    set_addr $I10, alt53_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx48_pos, rx48_off
    find_not_cclass $I11, 32, rx48_tgt, $I10, rx48_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx48_fail
    add rx48_pos, rx48_off, $I11
    goto alt53_end
  alt53_1:
  # rx literal  "#"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    ord $I11, rx48_tgt, $I11
    ne $I11, 35, rx48_fail
    add rx48_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx48_pos, rx48_off
    find_cclass $I11, 4096, rx48_tgt, $I10, rx48_eos
    add rx48_pos, rx48_off, $I11
  alt53_end:
    set_addr $I10, rxquantr52_done
    (rx48_rep) = rx48_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(rx48_rep, rx48_pos, $I10)
    goto rxquantr52_loop
  rxquantr52_done:
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "ws")
    if_null rx48_debug, debug_270
    rx48_cur."!cursor_debug"("PASS", "ws", " at pos=", rx48_pos)
  debug_270:
    .return (rx48_cur)
  rx48_restart:
.annotate 'line', 11
    if_null rx48_debug, debug_271
    rx48_cur."!cursor_debug"("NEXT", "ws")
  debug_271:
  rx48_fail:
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    if_null rx48_debug, debug_272
    rx48_cur."!cursor_debug"("FAIL", "ws")
  debug_272:
    .return (rx48_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1303857426.514") :method
.annotate 'line', 11
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P60 = "18_1303857426.514" 
    capture_lex $P60
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    .local pmc rx55_debug
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    gt rx55_pos, rx55_eos, rx55_done
    set rx55_off, 0
    lt rx55_pos, 2, rx55_start
    sub rx55_off, rx55_pos, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
    eq $I10, 1, rx55_restart
    if_null rx55_debug, debug_273
    rx55_cur."!cursor_debug"("START", "normspace")
  debug_273:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    (rx55_pos) = rx55_cur."from"()
    inc rx55_pos
    rx55_cur."!cursor_from"(rx55_pos)
    ge rx55_pos, rx55_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan58_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    .const 'Sub' $P60 = "18_1303857426.514" 
    capture_lex $P60
    $P10 = rx55_cur."before"($P60)
    unless $P10, rx55_fail
  # rx subrule "ws" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ws"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "normspace")
    if_null rx55_debug, debug_278
    rx55_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx55_pos)
  debug_278:
    .return (rx55_cur)
  rx55_restart:
.annotate 'line', 11
    if_null rx55_debug, debug_279
    rx55_cur."!cursor_debug"("NEXT", "normspace")
  debug_279:
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    if_null rx55_debug, debug_280
    rx55_cur."!cursor_debug"("FAIL", "normspace")
  debug_280:
    .return (rx55_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1303857426.514") :method
.annotate 'line', 11
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block59"  :anon :subid("18_1303857426.514") :method :outer("16_1303857426.514")
.annotate 'line', 18
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    .local pmc rx61_debug
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx61_cur
    .local pmc match
    .lex "$/", match
    length rx61_eos, rx61_tgt
    gt rx61_pos, rx61_eos, rx61_done
    set rx61_off, 0
    lt rx61_pos, 2, rx61_start
    sub rx61_off, rx61_pos, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
    eq $I10, 1, rx61_restart
    if_null rx61_debug, debug_274
    rx61_cur."!cursor_debug"("START", "")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan62_done
    goto rxscan62_scan
  rxscan62_loop:
    (rx61_pos) = rx61_cur."from"()
    inc rx61_pos
    rx61_cur."!cursor_from"(rx61_pos)
    ge rx61_pos, rx61_eos, rxscan62_done
  rxscan62_scan:
    set_addr $I10, rxscan62_loop
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxscan62_done:
  alt63_0:
    set_addr $I10, alt63_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  # rx charclass s
    ge rx61_pos, rx61_eos, rx61_fail
    sub $I10, rx61_pos, rx61_off
    is_cclass $I11, 32, rx61_tgt, $I10
    unless $I11, rx61_fail
    inc rx61_pos
    goto alt63_end
  alt63_1:
  # rx literal  "#"
    add $I11, rx61_pos, 1
    gt $I11, rx61_eos, rx61_fail
    sub $I11, rx61_pos, rx61_off
    ord $I11, rx61_tgt, $I11
    ne $I11, 35, rx61_fail
    add rx61_pos, 1
  alt63_end:
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "")
    if_null rx61_debug, debug_275
    rx61_cur."!cursor_debug"("PASS", "", " at pos=", rx61_pos)
  debug_275:
    .return (rx61_cur)
  rx61_restart:
    if_null rx61_debug, debug_276
    rx61_cur."!cursor_debug"("NEXT", "")
  debug_276:
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    if_null rx61_debug, debug_277
    rx61_cur."!cursor_debug"("FAIL", "")
  debug_277:
    .return (rx61_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    .local pmc rx65_debug
    (rx65_cur, rx65_pos, rx65_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx65_cur
    .local pmc match
    .lex "$/", match
    length rx65_eos, rx65_tgt
    gt rx65_pos, rx65_eos, rx65_done
    set rx65_off, 0
    lt rx65_pos, 2, rx65_start
    sub rx65_off, rx65_pos, 1
    substr rx65_tgt, rx65_tgt, rx65_off
  rx65_start:
    eq $I10, 1, rx65_restart
    if_null rx65_debug, debug_281
    rx65_cur."!cursor_debug"("START", "identifier")
  debug_281:
    $I10 = self.'from'()
    ne $I10, -1, rxscan69_done
    goto rxscan69_scan
  rxscan69_loop:
    (rx65_pos) = rx65_cur."from"()
    inc rx65_pos
    rx65_cur."!cursor_from"(rx65_pos)
    ge rx65_pos, rx65_eos, rxscan69_done
  rxscan69_scan:
    set_addr $I10, rxscan69_loop
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxscan69_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ident"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx rxquantr70 ** 0..*
    set_addr $I10, rxquantr70_done
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxquantr70_loop:
  # rx enumcharlist negate=0 
    ge rx65_pos, rx65_eos, rx65_fail
    sub $I10, rx65_pos, rx65_off
    substr $S10, rx65_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx65_fail
    inc rx65_pos
  # rx subrule "ident" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ident"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
    set_addr $I10, rxquantr70_done
    (rx65_rep) = rx65_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr70_done
    rx65_cur."!mark_push"(rx65_rep, rx65_pos, $I10)
    goto rxquantr70_loop
  rxquantr70_done:
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "identifier")
    if_null rx65_debug, debug_282
    rx65_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx65_pos)
  debug_282:
    .return (rx65_cur)
  rx65_restart:
.annotate 'line', 11
    if_null rx65_debug, debug_283
    rx65_cur."!cursor_debug"("NEXT", "identifier")
  debug_283:
  rx65_fail:
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    if_null rx65_debug, debug_284
    rx65_cur."!cursor_debug"("FAIL", "identifier")
  debug_284:
    .return (rx65_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1303857426.514") :method
.annotate 'line', 11
    $P67 = self."!PREFIX__!subrule"("ident", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx72_tgt
    .local int rx72_pos
    .local int rx72_off
    .local int rx72_eos
    .local int rx72_rep
    .local pmc rx72_cur
    .local pmc rx72_debug
    (rx72_cur, rx72_pos, rx72_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx72_cur
    .local pmc match
    .lex "$/", match
    length rx72_eos, rx72_tgt
    gt rx72_pos, rx72_eos, rx72_done
    set rx72_off, 0
    lt rx72_pos, 2, rx72_start
    sub rx72_off, rx72_pos, 1
    substr rx72_tgt, rx72_tgt, rx72_off
  rx72_start:
    eq $I10, 1, rx72_restart
    if_null rx72_debug, debug_285
    rx72_cur."!cursor_debug"("START", "arg")
  debug_285:
    $I10 = self.'from'()
    ne $I10, -1, rxscan75_done
    goto rxscan75_scan
  rxscan75_loop:
    (rx72_pos) = rx72_cur."from"()
    inc rx72_pos
    rx72_cur."!cursor_from"(rx72_pos)
    ge rx72_pos, rx72_eos, rxscan75_done
  rxscan75_scan:
    set_addr $I10, rxscan75_loop
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  rxscan75_done:
  alt76_0:
.annotate 'line', 23
    set_addr $I10, alt76_1
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx72_pos, rx72_off
    substr $S10, rx72_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx72_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."quote_EXPR"(":q")
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx72_pos = $P10."pos"()
    goto alt76_end
  alt76_1:
    set_addr $I10, alt76_2
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx72_pos, rx72_off
    substr $S10, rx72_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx72_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."quote_EXPR"(":qq")
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx72_pos = $P10."pos"()
    goto alt76_end
  alt76_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_77_fail
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx72_pos, rx72_off
    find_not_cclass $I11, 8, rx72_tgt, $I10, rx72_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx72_fail
    add rx72_pos, rx72_off, $I11
    set_addr $I10, rxcap_77_fail
    ($I12, $I11) = rx72_cur."!mark_peek"($I10)
    rx72_cur."!cursor_pos"($I11)
    ($P10) = rx72_cur."!cursor_start"()
    $P10."!cursor_pass"(rx72_pos, "")
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_77_done
  rxcap_77_fail:
    goto rx72_fail
  rxcap_77_done:
  alt76_end:
.annotate 'line', 22
  # rx pass
    rx72_cur."!cursor_pass"(rx72_pos, "arg")
    if_null rx72_debug, debug_286
    rx72_cur."!cursor_debug"("PASS", "arg", " at pos=", rx72_pos)
  debug_286:
    .return (rx72_cur)
  rx72_restart:
.annotate 'line', 11
    if_null rx72_debug, debug_287
    rx72_cur."!cursor_debug"("NEXT", "arg")
  debug_287:
  rx72_fail:
    (rx72_rep, rx72_pos, $I10, $P10) = rx72_cur."!mark_fail"(0)
    lt rx72_pos, -1, rx72_done
    eq rx72_pos, -1, rx72_fail
    jump $I10
  rx72_done:
    rx72_cur."!cursor_fail"()
    if_null rx72_debug, debug_288
    rx72_cur."!cursor_debug"("FAIL", "arg")
  debug_288:
    .return (rx72_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1303857426.514") :method
.annotate 'line', 11
    new $P74, "ResizablePMCArray"
    push $P74, ""
    push $P74, "\""
    push $P74, "'"
    .return ($P74)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    .local pmc rx79_debug
    (rx79_cur, rx79_pos, rx79_tgt, $I10) = self."!cursor_start"()
    rx79_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx79_cur
    .local pmc match
    .lex "$/", match
    length rx79_eos, rx79_tgt
    gt rx79_pos, rx79_eos, rx79_done
    set rx79_off, 0
    lt rx79_pos, 2, rx79_start
    sub rx79_off, rx79_pos, 1
    substr rx79_tgt, rx79_tgt, rx79_off
  rx79_start:
    eq $I10, 1, rx79_restart
    if_null rx79_debug, debug_289
    rx79_cur."!cursor_debug"("START", "arglist")
  debug_289:
    $I10 = self.'from'()
    ne $I10, -1, rxscan83_done
    goto rxscan83_scan
  rxscan83_loop:
    (rx79_pos) = rx79_cur."from"()
    inc rx79_pos
    rx79_cur."!cursor_from"(rx79_pos)
    ge rx79_pos, rx79_eos, rxscan83_done
  rxscan83_scan:
    set_addr $I10, rxscan83_loop
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxscan83_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."arg"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx79_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx rxquantr86 ** 0..*
    set_addr $I10, rxquantr86_done
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxquantr86_loop:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx79_pos, 1
    gt $I11, rx79_eos, rx79_fail
    sub $I11, rx79_pos, rx79_off
    ord $I11, rx79_tgt, $I11
    ne $I11, 44, rx79_fail
    add rx79_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."arg"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx79_pos = $P10."pos"()
    set_addr $I10, rxquantr86_done
    (rx79_rep) = rx79_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr86_done
    rx79_cur."!mark_push"(rx79_rep, rx79_pos, $I10)
    goto rxquantr86_loop
  rxquantr86_done:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "arglist")
    if_null rx79_debug, debug_290
    rx79_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx79_pos)
  debug_290:
    .return (rx79_cur)
  rx79_restart:
.annotate 'line', 11
    if_null rx79_debug, debug_291
    rx79_cur."!cursor_debug"("NEXT", "arglist")
  debug_291:
  rx79_fail:
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    if_null rx79_debug, debug_292
    rx79_cur."!cursor_debug"("FAIL", "arglist")
  debug_292:
    .return (rx79_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1303857426.514") :method
.annotate 'line', 11
    $P81 = self."!PREFIX__!subrule"("ws", "")
    new $P82, "ResizablePMCArray"
    push $P82, $P81
    .return ($P82)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    .local pmc rx91_debug
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx91_cur
    .local pmc match
    .lex "$/", match
    length rx91_eos, rx91_tgt
    gt rx91_pos, rx91_eos, rx91_done
    set rx91_off, 0
    lt rx91_pos, 2, rx91_start
    sub rx91_off, rx91_pos, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
    eq $I10, 1, rx91_restart
    if_null rx91_debug, debug_293
    rx91_cur."!cursor_debug"("START", "TOP")
  debug_293:
    $I10 = self.'from'()
    ne $I10, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    (rx91_pos) = rx91_cur."from"()
    inc rx91_pos
    rx91_cur."!cursor_from"(rx91_pos)
    ge rx91_pos, rx91_eos, rxscan95_done
  rxscan95_scan:
    set_addr $I10, rxscan95_loop
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  rxscan95_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."nibbler"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx91_pos = $P10."pos"()
  alt96_0:
.annotate 'line', 34
    set_addr $I10, alt96_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rxanchor eos
    ne rx91_pos, rx91_eos, rx91_fail
    goto alt96_end
  alt96_1:
  # rx subrule "panic" subtype=method negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."panic"("Confused")
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
  alt96_end:
.annotate 'line', 32
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "TOP")
    if_null rx91_debug, debug_294
    rx91_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx91_pos)
  debug_294:
    .return (rx91_cur)
  rx91_restart:
.annotate 'line', 11
    if_null rx91_debug, debug_295
    rx91_cur."!cursor_debug"("NEXT", "TOP")
  debug_295:
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    if_null rx91_debug, debug_296
    rx91_cur."!cursor_debug"("FAIL", "TOP")
  debug_296:
    .return (rx91_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1303857426.514") :method
.annotate 'line', 11
    $P93 = self."!PREFIX__!subrule"("nibbler", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P93
    .return ($P94)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    gt rx98_pos, rx98_eos, rx98_done
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    eq $I10, 1, rx98_restart
    if_null rx98_debug, debug_297
    rx98_cur."!cursor_debug"("START", "nibbler")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx98_pos) = rx98_cur."from"()
    inc rx98_pos
    rx98_cur."!cursor_from"(rx98_pos)
    ge rx98_pos, rx98_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan101_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx98_cur."!cursor_pos"(rx98_pos)
    rx98_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr102 ** 0..1
    set_addr $I10, rxquantr102_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr102_loop:
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt103_0:
    set_addr $I10, alt103_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "||"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "||", rx98_fail
    add rx98_pos, 2
    goto alt103_end
  alt103_1:
    set_addr $I10, alt103_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
    goto alt103_end
  alt103_2:
    set_addr $I10, alt103_3
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "&&"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "&&", rx98_fail
    add rx98_pos, 2
    goto alt103_end
  alt103_3:
  # rx literal  "&"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 38, rx98_fail
    add rx98_pos, 1
  alt103_end:
    set_addr $I10, rxquantr102_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
  rxquantr102_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr104 ** 0..*
    set_addr $I10, rxquantr104_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr104_loop:
  alt105_0:
.annotate 'line', 41
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "||"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "||", rx98_fail
    add rx98_pos, 2
    goto alt105_end
  alt105_1:
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
  alt105_end:
  alt106_0:
.annotate 'line', 42
    set_addr $I10, alt106_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
    goto alt106_end
  alt106_1:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Null pattern not allowed")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt106_end:
.annotate 'line', 43
    set_addr $I10, rxquantr104_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr104_done
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I10)
    goto rxquantr104_loop
  rxquantr104_done:
.annotate 'line', 37
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "nibbler")
    if_null rx98_debug, debug_298
    rx98_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx98_pos)
  debug_298:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 11
    if_null rx98_debug, debug_299
    rx98_cur."!cursor_debug"("NEXT", "nibbler")
  debug_299:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_300
    rx98_cur."!cursor_debug"("FAIL", "nibbler")
  debug_300:
    .return (rx98_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1303857426.514") :method
.annotate 'line', 11
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_debug
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    rx108_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx108_cur
    .local pmc match
    .lex "$/", match
    length rx108_eos, rx108_tgt
    gt rx108_pos, rx108_eos, rx108_done
    set rx108_off, 0
    lt rx108_pos, 2, rx108_start
    sub rx108_off, rx108_pos, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
    eq $I10, 1, rx108_restart
    if_null rx108_debug, debug_301
    rx108_cur."!cursor_debug"("START", "termconj")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan112_done
    goto rxscan112_scan
  rxscan112_loop:
    (rx108_pos) = rx108_cur."from"()
    inc rx108_pos
    rx108_cur."!cursor_from"(rx108_pos)
    ge rx108_pos, rx108_eos, rxscan112_done
  rxscan112_scan:
    set_addr $I10, rxscan112_loop
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxscan112_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."termish"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx108_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr113 ** 0..*
    set_addr $I10, rxquantr113_done
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxquantr113_loop:
  alt114_0:
.annotate 'line', 48
    set_addr $I10, alt114_1
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  # rx literal  "&&"
    add $I11, rx108_pos, 2
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    substr $S10, rx108_tgt, $I11, 2
    ne $S10, "&&", rx108_fail
    add rx108_pos, 2
    goto alt114_end
  alt114_1:
  # rx literal  "&"
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    ord $I11, rx108_tgt, $I11
    ne $I11, 38, rx108_fail
    add rx108_pos, 1
  alt114_end:
  alt115_0:
.annotate 'line', 49
    set_addr $I10, alt115_1
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."termish"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx108_pos = $P10."pos"()
    goto alt115_end
  alt115_1:
  # rx subrule "panic" subtype=method negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."panic"("Null pattern not allowed")
    unless $P10, rx108_fail
    rx108_pos = $P10."pos"()
  alt115_end:
.annotate 'line', 50
    set_addr $I10, rxquantr113_done
    (rx108_rep) = rx108_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr113_done
    rx108_cur."!mark_push"(rx108_rep, rx108_pos, $I10)
    goto rxquantr113_loop
  rxquantr113_done:
.annotate 'line', 46
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "termconj")
    if_null rx108_debug, debug_302
    rx108_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx108_pos)
  debug_302:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 11
    if_null rx108_debug, debug_303
    rx108_cur."!cursor_debug"("NEXT", "termconj")
  debug_303:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_304
    rx108_cur."!cursor_debug"("FAIL", "termconj")
  debug_304:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1303857426.514") :method
.annotate 'line', 11
    $P110 = self."!PREFIX__!subrule"("termish", "")
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    .local pmc rx117_debug
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    rx117_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx117_cur
    .local pmc match
    .lex "$/", match
    length rx117_eos, rx117_tgt
    gt rx117_pos, rx117_eos, rx117_done
    set rx117_off, 0
    lt rx117_pos, 2, rx117_start
    sub rx117_off, rx117_pos, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
    eq $I10, 1, rx117_restart
    if_null rx117_debug, debug_305
    rx117_cur."!cursor_debug"("START", "termish")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan120_done
    goto rxscan120_scan
  rxscan120_loop:
    (rx117_pos) = rx117_cur."from"()
    inc rx117_pos
    rx117_cur."!cursor_from"(rx117_pos)
    ge rx117_pos, rx117_eos, rxscan120_done
  rxscan120_scan:
    set_addr $I10, rxscan120_loop
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  rxscan120_done:
.annotate 'line', 54
  # rx rxquantr121 ** 1..*
    set_addr $I10, rxquantr121_done
    rx117_cur."!mark_push"(0, -1, $I10)
  rxquantr121_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."quantified_atom"()
    unless $P10, rx117_fail
    goto rxsubrule122_pass
  rxsubrule122_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx117_fail
  rxsubrule122_pass:
    set_addr $I10, rxsubrule122_back
    rx117_cur."!mark_push"(0, rx117_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx117_pos = $P10."pos"()
    set_addr $I10, rxquantr121_done
    (rx117_rep) = rx117_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr121_done
    rx117_cur."!mark_push"(rx117_rep, rx117_pos, $I10)
    goto rxquantr121_loop
  rxquantr121_done:
.annotate 'line', 53
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "termish")
    if_null rx117_debug, debug_306
    rx117_cur."!cursor_debug"("PASS", "termish", " at pos=", rx117_pos)
  debug_306:
    .return (rx117_cur)
  rx117_restart:
.annotate 'line', 11
    if_null rx117_debug, debug_307
    rx117_cur."!cursor_debug"("NEXT", "termish")
  debug_307:
  rx117_fail:
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    if_null rx117_debug, debug_308
    rx117_cur."!cursor_debug"("FAIL", "termish")
  debug_308:
    .return (rx117_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1303857426.514") :method
.annotate 'line', 11
    new $P119, "ResizablePMCArray"
    push $P119, ""
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P132 = "35_1303857426.514" 
    capture_lex $P132
    .local string rx124_tgt
    .local int rx124_pos
    .local int rx124_off
    .local int rx124_eos
    .local int rx124_rep
    .local pmc rx124_cur
    .local pmc rx124_debug
    (rx124_cur, rx124_pos, rx124_tgt, $I10) = self."!cursor_start"()
    rx124_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx124_cur
    .local pmc match
    .lex "$/", match
    length rx124_eos, rx124_tgt
    gt rx124_pos, rx124_eos, rx124_done
    set rx124_off, 0
    lt rx124_pos, 2, rx124_start
    sub rx124_off, rx124_pos, 1
    substr rx124_tgt, rx124_tgt, rx124_off
  rx124_start:
    eq $I10, 1, rx124_restart
    if_null rx124_debug, debug_309
    rx124_cur."!cursor_debug"("START", "quantified_atom")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    (rx124_pos) = rx124_cur."from"()
    inc rx124_pos
    rx124_cur."!cursor_from"(rx124_pos)
    ge rx124_pos, rx124_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  rxscan128_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."atom"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx124_pos = $P10."pos"()
  # rx rxquantr129 ** 0..1
    set_addr $I10, rxquantr129_done
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  rxquantr129_loop:
  # rx subrule "ws" subtype=method negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."ws"()
    unless $P10, rx124_fail
    rx124_pos = $P10."pos"()
  alt130_0:
    set_addr $I10, alt130_1
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."quantifier"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx124_pos = $P10."pos"()
    goto alt130_end
  alt130_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    .const 'Sub' $P132 = "35_1303857426.514" 
    capture_lex $P132
    $P10 = rx124_cur."before"($P132)
    unless $P10, rx124_fail
  # rx subrule "backmod" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."backmod"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx124_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."alpha"()
    if $P10, rx124_fail
  alt130_end:
    set_addr $I10, rxquantr129_done
    (rx124_rep) = rx124_cur."!mark_commit"($I10)
  rxquantr129_done:
.annotate 'line', 57
  # rx pass
    rx124_cur."!cursor_pass"(rx124_pos, "quantified_atom")
    if_null rx124_debug, debug_314
    rx124_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx124_pos)
  debug_314:
    .return (rx124_cur)
  rx124_restart:
.annotate 'line', 11
    if_null rx124_debug, debug_315
    rx124_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_315:
  rx124_fail:
    (rx124_rep, rx124_pos, $I10, $P10) = rx124_cur."!mark_fail"(0)
    lt rx124_pos, -1, rx124_done
    eq rx124_pos, -1, rx124_fail
    jump $I10
  rx124_done:
    rx124_cur."!cursor_fail"()
    if_null rx124_debug, debug_316
    rx124_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_316:
    .return (rx124_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1303857426.514") :method
.annotate 'line', 11
    $P126 = self."!PREFIX__!subrule"("atom", "")
    new $P127, "ResizablePMCArray"
    push $P127, $P126
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block131"  :anon :subid("35_1303857426.514") :method :outer("33_1303857426.514")
.annotate 'line', 58
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_debug
    (rx133_cur, rx133_pos, rx133_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx133_cur
    .local pmc match
    .lex "$/", match
    length rx133_eos, rx133_tgt
    gt rx133_pos, rx133_eos, rx133_done
    set rx133_off, 0
    lt rx133_pos, 2, rx133_start
    sub rx133_off, rx133_pos, 1
    substr rx133_tgt, rx133_tgt, rx133_off
  rx133_start:
    eq $I10, 1, rx133_restart
    if_null rx133_debug, debug_310
    rx133_cur."!cursor_debug"("START", "")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan134_done
    goto rxscan134_scan
  rxscan134_loop:
    (rx133_pos) = rx133_cur."from"()
    inc rx133_pos
    rx133_cur."!cursor_from"(rx133_pos)
    ge rx133_pos, rx133_eos, rxscan134_done
  rxscan134_scan:
    set_addr $I10, rxscan134_loop
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxscan134_done:
  # rx literal  ":"
    add $I11, rx133_pos, 1
    gt $I11, rx133_eos, rx133_fail
    sub $I11, rx133_pos, rx133_off
    ord $I11, rx133_tgt, $I11
    ne $I11, 58, rx133_fail
    add rx133_pos, 1
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "")
    if_null rx133_debug, debug_311
    rx133_cur."!cursor_debug"("PASS", "", " at pos=", rx133_pos)
  debug_311:
    .return (rx133_cur)
  rx133_restart:
    if_null rx133_debug, debug_312
    rx133_cur."!cursor_debug"("NEXT", "")
  debug_312:
  rx133_fail:
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    if_null rx133_debug, debug_313
    rx133_cur."!cursor_debug"("FAIL", "")
  debug_313:
    .return (rx133_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("36_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P145 = "38_1303857426.514" 
    capture_lex $P145
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_debug
    (rx136_cur, rx136_pos, rx136_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx136_cur
    .local pmc match
    .lex "$/", match
    length rx136_eos, rx136_tgt
    gt rx136_pos, rx136_eos, rx136_done
    set rx136_off, 0
    lt rx136_pos, 2, rx136_start
    sub rx136_off, rx136_pos, 1
    substr rx136_tgt, rx136_tgt, rx136_off
  rx136_start:
    eq $I10, 1, rx136_restart
    if_null rx136_debug, debug_317
    rx136_cur."!cursor_debug"("START", "atom")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx136_pos) = rx136_cur."from"()
    inc rx136_pos
    rx136_cur."!cursor_from"(rx136_pos)
    ge rx136_pos, rx136_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxscan140_done:
  alt141_0:
.annotate 'line', 63
    set_addr $I10, alt141_1
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
  # rx rxquantr142 ** 0..1
    set_addr $I10, rxquantr142_done
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxquantr142_loop:
  # rx rxquantg143 ** 1..*
  rxquantg143_loop:
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
    set_addr $I10, rxquantg143_done
    rx136_cur."!mark_push"(rx136_rep, rx136_pos, $I10)
    goto rxquantg143_loop
  rxquantg143_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx136_cur."!cursor_pos"(rx136_pos)
    .const 'Sub' $P145 = "38_1303857426.514" 
    capture_lex $P145
    $P10 = rx136_cur."before"($P145)
    unless $P10, rx136_fail
    set_addr $I10, rxquantr142_done
    (rx136_rep) = rx136_cur."!mark_commit"($I10)
  rxquantr142_done:
    goto alt141_end
  alt141_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx136_cur."!cursor_pos"(rx136_pos)
    $P10 = rx136_cur."metachar"()
    unless $P10, rx136_fail
    rx136_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx136_pos = $P10."pos"()
  alt141_end:
.annotate 'line', 61
  # rx pass
    rx136_cur."!cursor_pass"(rx136_pos, "atom")
    if_null rx136_debug, debug_322
    rx136_cur."!cursor_debug"("PASS", "atom", " at pos=", rx136_pos)
  debug_322:
    .return (rx136_cur)
  rx136_restart:
.annotate 'line', 11
    if_null rx136_debug, debug_323
    rx136_cur."!cursor_debug"("NEXT", "atom")
  debug_323:
  rx136_fail:
    (rx136_rep, rx136_pos, $I10, $P10) = rx136_cur."!mark_fail"(0)
    lt rx136_pos, -1, rx136_done
    eq rx136_pos, -1, rx136_fail
    jump $I10
  rx136_done:
    rx136_cur."!cursor_fail"()
    if_null rx136_debug, debug_324
    rx136_cur."!cursor_debug"("FAIL", "atom")
  debug_324:
    .return (rx136_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1303857426.514") :method
.annotate 'line', 11
    $P138 = self."!PREFIX__!subrule"("metachar", "")
    new $P139, "ResizablePMCArray"
    push $P139, $P138
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block144"  :anon :subid("38_1303857426.514") :method :outer("36_1303857426.514")
.annotate 'line', 64
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    .local pmc rx146_debug
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    gt rx146_pos, rx146_eos, rx146_done
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    eq $I10, 1, rx146_restart
    if_null rx146_debug, debug_318
    rx146_cur."!cursor_debug"("START", "")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    (rx146_pos) = rx146_cur."from"()
    inc rx146_pos
    rx146_cur."!cursor_from"(rx146_pos)
    ge rx146_pos, rx146_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan147_done:
  # rx charclass w
    ge rx146_pos, rx146_eos, rx146_fail
    sub $I10, rx146_pos, rx146_off
    is_cclass $I11, 8192, rx146_tgt, $I10
    unless $I11, rx146_fail
    inc rx146_pos
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "")
    if_null rx146_debug, debug_319
    rx146_cur."!cursor_debug"("PASS", "", " at pos=", rx146_pos)
  debug_319:
    .return (rx146_cur)
  rx146_restart:
    if_null rx146_debug, debug_320
    rx146_cur."!cursor_debug"("NEXT", "")
  debug_320:
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    if_null rx146_debug, debug_321
    rx146_cur."!cursor_debug"("FAIL", "")
  debug_321:
    .return (rx146_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("39_1303857426.514")
    .param pmc param_149
.annotate 'line', 69
    .lex "self", param_149
    $P150 = param_149."!protoregex"("quantifier")
    .return ($P150)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1303857426.514")
    .param pmc param_152
.annotate 'line', 69
    .lex "self", param_152
    $P153 = param_152."!PREFIX__!protoregex"("quantifier")
    .return ($P153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx155_cur
    .local pmc match
    .lex "$/", match
    length rx155_eos, rx155_tgt
    gt rx155_pos, rx155_eos, rx155_done
    set rx155_off, 0
    lt rx155_pos, 2, rx155_start
    sub rx155_off, rx155_pos, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    eq $I10, 1, rx155_restart
    if_null rx155_debug, debug_325
    rx155_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan159_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_160_fail
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  # rx literal  "*"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 42, rx155_fail
    add rx155_pos, 1
    set_addr $I10, rxcap_160_fail
    ($I12, $I11) = rx155_cur."!mark_peek"($I10)
    rx155_cur."!cursor_pos"($I11)
    ($P10) = rx155_cur."!cursor_start"()
    $P10."!cursor_pass"(rx155_pos, "")
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_160_done
  rxcap_160_fail:
    goto rx155_fail
  rxcap_160_done:
  # rx subrule "backmod" subtype=capture negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."backmod"()
    unless $P10, rx155_fail
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx155_pos = $P10."pos"()
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "quantifier:sym<*>")
    if_null rx155_debug, debug_326
    rx155_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx155_pos)
  debug_326:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 11
    if_null rx155_debug, debug_327
    rx155_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_327:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_328
    rx155_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_328:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1303857426.514") :method
.annotate 'line', 11
    $P157 = self."!PREFIX__!subrule"("backmod", "*")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_329
    rx162_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan166_done
    goto rxscan166_scan
  rxscan166_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan166_done
  rxscan166_scan:
    set_addr $I10, rxscan166_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan166_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_167_fail
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  # rx literal  "+"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 43, rx162_fail
    add rx162_pos, 1
    set_addr $I10, rxcap_167_fail
    ($I12, $I11) = rx162_cur."!mark_peek"($I10)
    rx162_cur."!cursor_pos"($I11)
    ($P10) = rx162_cur."!cursor_start"()
    $P10."!cursor_pass"(rx162_pos, "")
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_167_done
  rxcap_167_fail:
    goto rx162_fail
  rxcap_167_done:
  # rx subrule "backmod" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."backmod"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx162_pos = $P10."pos"()
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "quantifier:sym<+>")
    if_null rx162_debug, debug_330
    rx162_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx162_pos)
  debug_330:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 11
    if_null rx162_debug, debug_331
    rx162_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_331:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_332
    rx162_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_332:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1303857426.514") :method
.annotate 'line', 11
    $P164 = self."!PREFIX__!subrule"("backmod", "+")
    new $P165, "ResizablePMCArray"
    push $P165, $P164
    .return ($P165)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    gt rx169_pos, rx169_eos, rx169_done
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    eq $I10, 1, rx169_restart
    if_null rx169_debug, debug_333
    rx169_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan173_done
    goto rxscan173_scan
  rxscan173_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan173_done
  rxscan173_scan:
    set_addr $I10, rxscan173_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan173_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_174_fail
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  # rx literal  "?"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 63, rx169_fail
    add rx169_pos, 1
    set_addr $I10, rxcap_174_fail
    ($I12, $I11) = rx169_cur."!mark_peek"($I10)
    rx169_cur."!cursor_pos"($I11)
    ($P10) = rx169_cur."!cursor_start"()
    $P10."!cursor_pass"(rx169_pos, "")
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_174_done
  rxcap_174_fail:
    goto rx169_fail
  rxcap_174_done:
  # rx subrule "backmod" subtype=capture negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."backmod"()
    unless $P10, rx169_fail
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx169_pos = $P10."pos"()
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "quantifier:sym<?>")
    if_null rx169_debug, debug_334
    rx169_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx169_pos)
  debug_334:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 11
    if_null rx169_debug, debug_335
    rx169_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_335:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_336
    rx169_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_336:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1303857426.514") :method
.annotate 'line', 11
    $P171 = self."!PREFIX__!subrule"("backmod", "?")
    new $P172, "ResizablePMCArray"
    push $P172, $P171
    .return ($P172)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P195 = "52_1303857426.514" 
    capture_lex $P195
    .const 'Sub' $P190 = "51_1303857426.514" 
    capture_lex $P190
    .const 'Sub' $P186 = "50_1303857426.514" 
    capture_lex $P186
    .const 'Sub' $P183 = "49_1303857426.514" 
    capture_lex $P183
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx176_cur
    .local pmc match
    .lex "$/", match
    length rx176_eos, rx176_tgt
    gt rx176_pos, rx176_eos, rx176_done
    set rx176_off, 0
    lt rx176_pos, 2, rx176_start
    sub rx176_off, rx176_pos, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
    eq $I10, 1, rx176_restart
    if_null rx176_debug, debug_337
    rx176_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan179_done:
.annotate 'line', 73
    rx176_cur."!cursor_pos"(rx176_pos)
    find_lex $P180, unicode:"$\x{a2}"
    $P181 = $P180."MATCH"()
    store_lex "$/", $P181
    .const 'Sub' $P183 = "49_1303857426.514" 
    capture_lex $P183
    $P184 = $P183()
  # rx literal  "{"
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 123, rx176_fail
    add rx176_pos, 1
  # rx subrule $P186 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P186 = "50_1303857426.514" 
    capture_lex $P186
    $P10 = rx176_cur.$P186()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx176_pos = $P10."pos"()
  # rx subrule $P190 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P190 = "51_1303857426.514" 
    capture_lex $P190
    $P10 = rx176_cur.$P190()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx176_pos = $P10."pos"()
  # rx subrule $P195 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P195 = "52_1303857426.514" 
    capture_lex $P195
    $P10 = rx176_cur.$P195()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx176_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 125, rx176_fail
    add rx176_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "quantifier:sym<{N,M}>")
    if_null rx176_debug, debug_350
    rx176_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx176_pos)
  debug_350:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 11
    if_null rx176_debug, debug_351
    rx176_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_351:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_352
    rx176_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_352:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1303857426.514") :method
.annotate 'line', 11
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("49_1303857426.514") :outer("47_1303857426.514")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block185"  :anon :subid("50_1303857426.514") :method :outer("47_1303857426.514")
.annotate 'line', 73
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    .local pmc rx187_debug
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    gt rx187_pos, rx187_eos, rx187_done
    set rx187_off, 0
    lt rx187_pos, 2, rx187_start
    sub rx187_off, rx187_pos, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
    eq $I10, 1, rx187_restart
    if_null rx187_debug, debug_338
    rx187_cur."!cursor_debug"("START", "")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan188_done
    goto rxscan188_scan
  rxscan188_loop:
    (rx187_pos) = rx187_cur."from"()
    inc rx187_pos
    rx187_cur."!cursor_from"(rx187_pos)
    ge rx187_pos, rx187_eos, rxscan188_done
  rxscan188_scan:
    set_addr $I10, rxscan188_loop
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxscan188_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx187_pos, rx187_off
    find_not_cclass $I11, 8, rx187_tgt, $I10, rx187_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx187_fail
    add rx187_pos, rx187_off, $I11
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "")
    if_null rx187_debug, debug_339
    rx187_cur."!cursor_debug"("PASS", "", " at pos=", rx187_pos)
  debug_339:
    .return (rx187_cur)
  rx187_restart:
    if_null rx187_debug, debug_340
    rx187_cur."!cursor_debug"("NEXT", "")
  debug_340:
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    if_null rx187_debug, debug_341
    rx187_cur."!cursor_debug"("FAIL", "")
  debug_341:
    .return (rx187_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block189"  :anon :subid("51_1303857426.514") :method :outer("47_1303857426.514")
.annotate 'line', 73
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    .local pmc rx191_debug
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    gt rx191_pos, rx191_eos, rx191_done
    set rx191_off, 0
    lt rx191_pos, 2, rx191_start
    sub rx191_off, rx191_pos, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
    eq $I10, 1, rx191_restart
    if_null rx191_debug, debug_342
    rx191_cur."!cursor_debug"("START", "")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    (rx191_pos) = rx191_cur."from"()
    inc rx191_pos
    rx191_cur."!cursor_from"(rx191_pos)
    ge rx191_pos, rx191_eos, rxscan192_done
  rxscan192_scan:
    set_addr $I10, rxscan192_loop
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxscan192_done:
  # rx rxquantr193 ** 0..1
    set_addr $I10, rxquantr193_done
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxquantr193_loop:
  # rx literal  ","
    add $I11, rx191_pos, 1
    gt $I11, rx191_eos, rx191_fail
    sub $I11, rx191_pos, rx191_off
    ord $I11, rx191_tgt, $I11
    ne $I11, 44, rx191_fail
    add rx191_pos, 1
    set_addr $I10, rxquantr193_done
    (rx191_rep) = rx191_cur."!mark_commit"($I10)
  rxquantr193_done:
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "")
    if_null rx191_debug, debug_343
    rx191_cur."!cursor_debug"("PASS", "", " at pos=", rx191_pos)
  debug_343:
    .return (rx191_cur)
  rx191_restart:
    if_null rx191_debug, debug_344
    rx191_cur."!cursor_debug"("NEXT", "")
  debug_344:
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    if_null rx191_debug, debug_345
    rx191_cur."!cursor_debug"("FAIL", "")
  debug_345:
    .return (rx191_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block194"  :anon :subid("52_1303857426.514") :method :outer("47_1303857426.514")
.annotate 'line', 73
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    .local pmc rx196_debug
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx196_cur
    .local pmc match
    .lex "$/", match
    length rx196_eos, rx196_tgt
    gt rx196_pos, rx196_eos, rx196_done
    set rx196_off, 0
    lt rx196_pos, 2, rx196_start
    sub rx196_off, rx196_pos, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
    eq $I10, 1, rx196_restart
    if_null rx196_debug, debug_346
    rx196_cur."!cursor_debug"("START", "")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan197_done
    goto rxscan197_scan
  rxscan197_loop:
    (rx196_pos) = rx196_cur."from"()
    inc rx196_pos
    rx196_cur."!cursor_from"(rx196_pos)
    ge rx196_pos, rx196_eos, rxscan197_done
  rxscan197_scan:
    set_addr $I10, rxscan197_loop
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxscan197_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx196_pos, rx196_off
    find_not_cclass $I11, 8, rx196_tgt, $I10, rx196_eos
    add rx196_pos, rx196_off, $I11
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "")
    if_null rx196_debug, debug_347
    rx196_cur."!cursor_debug"("PASS", "", " at pos=", rx196_pos)
  debug_347:
    .return (rx196_cur)
  rx196_restart:
    if_null rx196_debug, debug_348
    rx196_cur."!cursor_debug"("NEXT", "")
  debug_348:
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    if_null rx196_debug, debug_349
    rx196_cur."!cursor_debug"("FAIL", "")
  debug_349:
    .return (rx196_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("53_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    .local pmc rx199_debug
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx199_cur
    .local pmc match
    .lex "$/", match
    length rx199_eos, rx199_tgt
    gt rx199_pos, rx199_eos, rx199_done
    set rx199_off, 0
    lt rx199_pos, 2, rx199_start
    sub rx199_off, rx199_pos, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
    eq $I10, 1, rx199_restart
    if_null rx199_debug, debug_353
    rx199_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx199_pos) = rx199_cur."from"()
    inc rx199_pos
    rx199_cur."!cursor_from"(rx199_pos)
    ge rx199_pos, rx199_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxscan202_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_203_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx literal  "**"
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, "**", rx199_fail
    add rx199_pos, 2
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx199_fail
  rxcap_203_done:
  # rx rxquantr204 ** 0..1
    set_addr $I10, rxquantr204_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr204_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."normspace"()
    unless $P10, rx199_fail
    goto rxsubrule205_pass
  rxsubrule205_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule205_pass:
    set_addr $I10, rxsubrule205_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr204_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr204_done:
  # rx subrule "backmod" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."backmod"()
    unless $P10, rx199_fail
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx199_pos = $P10."pos"()
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr206_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."normspace"()
    unless $P10, rx199_fail
    goto rxsubrule207_pass
  rxsubrule207_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule207_pass:
    set_addr $I10, rxsubrule207_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr206_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr206_done:
  alt208_0:
.annotate 'line', 78
    set_addr $I10, alt208_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_209_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    set_addr $I10, rxcap_209_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_209_done
  rxcap_209_fail:
    goto rx199_fail
  rxcap_209_done:
.annotate 'line', 86
  # rx rxquantr210 ** 0..1
    set_addr $I10, rxquantr210_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr210_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, "..", rx199_fail
    add rx199_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_212_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  alt211_0:
    set_addr $I10, alt211_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    goto alt211_end
  alt211_1:
    set_addr $I10, alt211_2
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx199_pos, 1
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    ord $I11, rx199_tgt, $I11
    ne $I11, 42, rx199_fail
    add rx199_pos, 1
    goto alt211_end
  alt211_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx199_fail
    rx199_pos = $P10."pos"()
  alt211_end:
.annotate 'line', 81
    set_addr $I10, rxcap_212_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_212_done
  rxcap_212_fail:
    goto rx199_fail
  rxcap_212_done:
.annotate 'line', 86
    set_addr $I10, rxquantr210_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr210_done:
.annotate 'line', 79
    goto alt208_end
  alt208_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."quantified_atom"()
    unless $P10, rx199_fail
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx199_pos = $P10."pos"()
  alt208_end:
.annotate 'line', 76
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "quantifier:sym<**>")
    if_null rx199_debug, debug_354
    rx199_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx199_pos)
  debug_354:
    .return (rx199_cur)
  rx199_restart:
.annotate 'line', 11
    if_null rx199_debug, debug_355
    rx199_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_355:
  rx199_fail:
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    if_null rx199_debug, debug_356
    rx199_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_356:
    .return (rx199_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1303857426.514") :method
.annotate 'line', 11
    new $P201, "ResizablePMCArray"
    push $P201, "**"
    .return ($P201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P221 = "57_1303857426.514" 
    capture_lex $P221
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    .local pmc rx214_debug
    (rx214_cur, rx214_pos, rx214_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx214_cur
    .local pmc match
    .lex "$/", match
    length rx214_eos, rx214_tgt
    gt rx214_pos, rx214_eos, rx214_done
    set rx214_off, 0
    lt rx214_pos, 2, rx214_start
    sub rx214_off, rx214_pos, 1
    substr rx214_tgt, rx214_tgt, rx214_off
  rx214_start:
    eq $I10, 1, rx214_restart
    if_null rx214_debug, debug_357
    rx214_cur."!cursor_debug"("START", "backmod")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan217_done
    goto rxscan217_scan
  rxscan217_loop:
    (rx214_pos) = rx214_cur."from"()
    inc rx214_pos
    rx214_cur."!cursor_from"(rx214_pos)
    ge rx214_pos, rx214_eos, rxscan217_done
  rxscan217_scan:
    set_addr $I10, rxscan217_loop
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  rxscan217_done:
.annotate 'line', 91
  # rx rxquantr218 ** 0..1
    set_addr $I10, rxquantr218_done
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  rxquantr218_loop:
  # rx literal  ":"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 58, rx214_fail
    add rx214_pos, 1
    set_addr $I10, rxquantr218_done
    (rx214_rep) = rx214_cur."!mark_commit"($I10)
  rxquantr218_done:
  alt219_0:
    set_addr $I10, alt219_1
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  # rx literal  "?"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 63, rx214_fail
    add rx214_pos, 1
    goto alt219_end
  alt219_1:
    set_addr $I10, alt219_2
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  # rx literal  "!"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 33, rx214_fail
    add rx214_pos, 1
    goto alt219_end
  alt219_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx214_cur."!cursor_pos"(rx214_pos)
    .const 'Sub' $P221 = "57_1303857426.514" 
    capture_lex $P221
    $P10 = rx214_cur."before"($P221)
    if $P10, rx214_fail
  alt219_end:
  # rx pass
    rx214_cur."!cursor_pass"(rx214_pos, "backmod")
    if_null rx214_debug, debug_362
    rx214_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx214_pos)
  debug_362:
    .return (rx214_cur)
  rx214_restart:
.annotate 'line', 11
    if_null rx214_debug, debug_363
    rx214_cur."!cursor_debug"("NEXT", "backmod")
  debug_363:
  rx214_fail:
    (rx214_rep, rx214_pos, $I10, $P10) = rx214_cur."!mark_fail"(0)
    lt rx214_pos, -1, rx214_done
    eq rx214_pos, -1, rx214_fail
    jump $I10
  rx214_done:
    rx214_cur."!cursor_fail"()
    if_null rx214_debug, debug_364
    rx214_cur."!cursor_debug"("FAIL", "backmod")
  debug_364:
    .return (rx214_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1303857426.514") :method
.annotate 'line', 11
    new $P216, "ResizablePMCArray"
    push $P216, ""
    .return ($P216)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block220"  :anon :subid("57_1303857426.514") :method :outer("55_1303857426.514")
.annotate 'line', 91
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_debug
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx222_cur
    .local pmc match
    .lex "$/", match
    length rx222_eos, rx222_tgt
    gt rx222_pos, rx222_eos, rx222_done
    set rx222_off, 0
    lt rx222_pos, 2, rx222_start
    sub rx222_off, rx222_pos, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
    eq $I10, 1, rx222_restart
    if_null rx222_debug, debug_358
    rx222_cur."!cursor_debug"("START", "")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    (rx222_pos) = rx222_cur."from"()
    inc rx222_pos
    rx222_cur."!cursor_from"(rx222_pos)
    ge rx222_pos, rx222_eos, rxscan223_done
  rxscan223_scan:
    set_addr $I10, rxscan223_loop
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  rxscan223_done:
  # rx literal  ":"
    add $I11, rx222_pos, 1
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    ord $I11, rx222_tgt, $I11
    ne $I11, 58, rx222_fail
    add rx222_pos, 1
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "")
    if_null rx222_debug, debug_359
    rx222_cur."!cursor_debug"("PASS", "", " at pos=", rx222_pos)
  debug_359:
    .return (rx222_cur)
  rx222_restart:
    if_null rx222_debug, debug_360
    rx222_cur."!cursor_debug"("NEXT", "")
  debug_360:
  rx222_fail:
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    if_null rx222_debug, debug_361
    rx222_cur."!cursor_debug"("FAIL", "")
  debug_361:
    .return (rx222_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("58_1303857426.514")
    .param pmc param_225
.annotate 'line', 93
    .lex "self", param_225
    $P226 = param_225."!protoregex"("metachar")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1303857426.514")
    .param pmc param_228
.annotate 'line', 93
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("metachar")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    gt rx231_pos, rx231_eos, rx231_done
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    eq $I10, 1, rx231_restart
    if_null rx231_debug, debug_365
    rx231_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan235_done
    goto rxscan235_scan
  rxscan235_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan235_done
  rxscan235_scan:
    set_addr $I10, rxscan235_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan235_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."normspace"()
    unless $P10, rx231_fail
    rx231_pos = $P10."pos"()
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "metachar:sym<ws>")
    if_null rx231_debug, debug_366
    rx231_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx231_pos)
  debug_366:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 11
    if_null rx231_debug, debug_367
    rx231_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_367:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_368
    rx231_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_368:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1303857426.514") :method
.annotate 'line', 11
    $P233 = self."!PREFIX__!subrule"("normspace", "")
    new $P234, "ResizablePMCArray"
    push $P234, $P233
    .return ($P234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    .local pmc rx237_debug
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx237_cur
    .local pmc match
    .lex "$/", match
    length rx237_eos, rx237_tgt
    gt rx237_pos, rx237_eos, rx237_done
    set rx237_off, 0
    lt rx237_pos, 2, rx237_start
    sub rx237_off, rx237_pos, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
    eq $I10, 1, rx237_restart
    if_null rx237_debug, debug_369
    rx237_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan241_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 91, rx237_fail
    add rx237_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."nibbler"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx237_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 93, rx237_fail
    add rx237_pos, 1
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "metachar:sym<[ ]>")
    if_null rx237_debug, debug_370
    rx237_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx237_pos)
  debug_370:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 11
    if_null rx237_debug, debug_371
    rx237_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_371:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_372
    rx237_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_372:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1303857426.514") :method
.annotate 'line', 11
    $P239 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx243_tgt
    .local int rx243_pos
    .local int rx243_off
    .local int rx243_eos
    .local int rx243_rep
    .local pmc rx243_cur
    .local pmc rx243_debug
    (rx243_cur, rx243_pos, rx243_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx243_cur
    .local pmc match
    .lex "$/", match
    length rx243_eos, rx243_tgt
    gt rx243_pos, rx243_eos, rx243_done
    set rx243_off, 0
    lt rx243_pos, 2, rx243_start
    sub rx243_off, rx243_pos, 1
    substr rx243_tgt, rx243_tgt, rx243_off
  rx243_start:
    eq $I10, 1, rx243_restart
    if_null rx243_debug, debug_373
    rx243_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx243_pos) = rx243_cur."from"()
    inc rx243_pos
    rx243_cur."!cursor_from"(rx243_pos)
    ge rx243_pos, rx243_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx243_cur."!mark_push"(0, rx243_pos, $I10)
  rxscan247_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx243_pos, 1
    gt $I11, rx243_eos, rx243_fail
    sub $I11, rx243_pos, rx243_off
    ord $I11, rx243_tgt, $I11
    ne $I11, 40, rx243_fail
    add rx243_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx243_cur."!cursor_pos"(rx243_pos)
    $P10 = rx243_cur."nibbler"()
    unless $P10, rx243_fail
    rx243_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx243_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx243_pos, 1
    gt $I11, rx243_eos, rx243_fail
    sub $I11, rx243_pos, rx243_off
    ord $I11, rx243_tgt, $I11
    ne $I11, 41, rx243_fail
    add rx243_pos, 1
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "metachar:sym<( )>")
    if_null rx243_debug, debug_374
    rx243_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx243_pos)
  debug_374:
    .return (rx243_cur)
  rx243_restart:
.annotate 'line', 11
    if_null rx243_debug, debug_375
    rx243_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_375:
  rx243_fail:
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    if_null rx243_debug, debug_376
    rx243_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_376:
    .return (rx243_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1303857426.514") :method
.annotate 'line', 11
    $P245 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P246, "ResizablePMCArray"
    push $P246, $P245
    .return ($P246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_debug
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    gt rx249_pos, rx249_eos, rx249_done
    set rx249_off, 0
    lt rx249_pos, 2, rx249_start
    sub rx249_off, rx249_pos, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    eq $I10, 1, rx249_restart
    if_null rx249_debug, debug_377
    rx249_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    (rx249_pos) = rx249_cur."from"()
    inc rx249_pos
    rx249_cur."!cursor_from"(rx249_pos)
    ge rx249_pos, rx249_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan252_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx249_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."quote_EXPR"(":q")
    unless $P10, rx249_fail
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx249_pos = $P10."pos"()
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<'>")
    if_null rx249_debug, debug_378
    rx249_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx249_pos)
  debug_378:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 11
    if_null rx249_debug, debug_379
    rx249_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_379:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_380
    rx249_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_380:
    .return (rx249_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1303857426.514") :method
.annotate 'line', 11
    new $P251, "ResizablePMCArray"
    push $P251, "'"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    .local pmc rx254_debug
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx254_cur
    .local pmc match
    .lex "$/", match
    length rx254_eos, rx254_tgt
    gt rx254_pos, rx254_eos, rx254_done
    set rx254_off, 0
    lt rx254_pos, 2, rx254_start
    sub rx254_off, rx254_pos, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
    eq $I10, 1, rx254_restart
    if_null rx254_debug, debug_381
    rx254_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan257_done
    goto rxscan257_scan
  rxscan257_loop:
    (rx254_pos) = rx254_cur."from"()
    inc rx254_pos
    rx254_cur."!cursor_from"(rx254_pos)
    ge rx254_pos, rx254_eos, rxscan257_done
  rxscan257_scan:
    set_addr $I10, rxscan257_loop
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  rxscan257_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx254_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quote_EXPR"(":qq")
    unless $P10, rx254_fail
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx254_pos = $P10."pos"()
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<\">")
    if_null rx254_debug, debug_382
    rx254_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx254_pos)
  debug_382:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 11
    if_null rx254_debug, debug_383
    rx254_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_383:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_384
    rx254_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_384:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("69_1303857426.514") :method
.annotate 'line', 11
    new $P256, "ResizablePMCArray"
    push $P256, "\""
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx259_tgt
    .local int rx259_pos
    .local int rx259_off
    .local int rx259_eos
    .local int rx259_rep
    .local pmc rx259_cur
    .local pmc rx259_debug
    (rx259_cur, rx259_pos, rx259_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx259_cur
    .local pmc match
    .lex "$/", match
    length rx259_eos, rx259_tgt
    gt rx259_pos, rx259_eos, rx259_done
    set rx259_off, 0
    lt rx259_pos, 2, rx259_start
    sub rx259_off, rx259_pos, 1
    substr rx259_tgt, rx259_tgt, rx259_off
  rx259_start:
    eq $I10, 1, rx259_restart
    if_null rx259_debug, debug_385
    rx259_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan262_done
    goto rxscan262_scan
  rxscan262_loop:
    (rx259_pos) = rx259_cur."from"()
    inc rx259_pos
    rx259_cur."!cursor_from"(rx259_pos)
    ge rx259_pos, rx259_eos, rxscan262_done
  rxscan262_scan:
    set_addr $I10, rxscan262_loop
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  rxscan262_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_263_fail
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  # rx literal  "."
    add $I11, rx259_pos, 1
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    ord $I11, rx259_tgt, $I11
    ne $I11, 46, rx259_fail
    add rx259_pos, 1
    set_addr $I10, rxcap_263_fail
    ($I12, $I11) = rx259_cur."!mark_peek"($I10)
    rx259_cur."!cursor_pos"($I11)
    ($P10) = rx259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx259_pos, "")
    rx259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_263_done
  rxcap_263_fail:
    goto rx259_fail
  rxcap_263_done:
  # rx pass
    rx259_cur."!cursor_pass"(rx259_pos, "metachar:sym<.>")
    if_null rx259_debug, debug_386
    rx259_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx259_pos)
  debug_386:
    .return (rx259_cur)
  rx259_restart:
.annotate 'line', 11
    if_null rx259_debug, debug_387
    rx259_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_387:
  rx259_fail:
    (rx259_rep, rx259_pos, $I10, $P10) = rx259_cur."!mark_fail"(0)
    lt rx259_pos, -1, rx259_done
    eq rx259_pos, -1, rx259_fail
    jump $I10
  rx259_done:
    rx259_cur."!cursor_fail"()
    if_null rx259_debug, debug_388
    rx259_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_388:
    .return (rx259_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1303857426.514") :method
.annotate 'line', 11
    new $P261, "ResizablePMCArray"
    push $P261, "."
    .return ($P261)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    .local pmc rx265_debug
    (rx265_cur, rx265_pos, rx265_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx265_cur
    .local pmc match
    .lex "$/", match
    length rx265_eos, rx265_tgt
    gt rx265_pos, rx265_eos, rx265_done
    set rx265_off, 0
    lt rx265_pos, 2, rx265_start
    sub rx265_off, rx265_pos, 1
    substr rx265_tgt, rx265_tgt, rx265_off
  rx265_start:
    eq $I10, 1, rx265_restart
    if_null rx265_debug, debug_389
    rx265_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx265_pos) = rx265_cur."from"()
    inc rx265_pos
    rx265_cur."!cursor_from"(rx265_pos)
    ge rx265_pos, rx265_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  rxscan268_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_269_fail
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  # rx literal  "^"
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 94, rx265_fail
    add rx265_pos, 1
    set_addr $I10, rxcap_269_fail
    ($I12, $I11) = rx265_cur."!mark_peek"($I10)
    rx265_cur."!cursor_pos"($I11)
    ($P10) = rx265_cur."!cursor_start"()
    $P10."!cursor_pass"(rx265_pos, "")
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_269_done
  rxcap_269_fail:
    goto rx265_fail
  rxcap_269_done:
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "metachar:sym<^>")
    if_null rx265_debug, debug_390
    rx265_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx265_pos)
  debug_390:
    .return (rx265_cur)
  rx265_restart:
.annotate 'line', 11
    if_null rx265_debug, debug_391
    rx265_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_391:
  rx265_fail:
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    if_null rx265_debug, debug_392
    rx265_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_392:
    .return (rx265_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1303857426.514") :method
.annotate 'line', 11
    new $P267, "ResizablePMCArray"
    push $P267, "^"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_debug
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx271_cur
    .local pmc match
    .lex "$/", match
    length rx271_eos, rx271_tgt
    gt rx271_pos, rx271_eos, rx271_done
    set rx271_off, 0
    lt rx271_pos, 2, rx271_start
    sub rx271_off, rx271_pos, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
    eq $I10, 1, rx271_restart
    if_null rx271_debug, debug_393
    rx271_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan274_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_275_fail
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx literal  "^^"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "^^", rx271_fail
    add rx271_pos, 2
    set_addr $I10, rxcap_275_fail
    ($I12, $I11) = rx271_cur."!mark_peek"($I10)
    rx271_cur."!cursor_pos"($I11)
    ($P10) = rx271_cur."!cursor_start"()
    $P10."!cursor_pass"(rx271_pos, "")
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_275_done
  rxcap_275_fail:
    goto rx271_fail
  rxcap_275_done:
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "metachar:sym<^^>")
    if_null rx271_debug, debug_394
    rx271_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx271_pos)
  debug_394:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 11
    if_null rx271_debug, debug_395
    rx271_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_395:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_396
    rx271_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_396:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1303857426.514") :method
.annotate 'line', 11
    new $P273, "ResizablePMCArray"
    push $P273, "^^"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_debug
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    gt rx277_pos, rx277_eos, rx277_done
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    eq $I10, 1, rx277_restart
    if_null rx277_debug, debug_397
    rx277_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_281_fail
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx literal  "$"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 36, rx277_fail
    add rx277_pos, 1
    set_addr $I10, rxcap_281_fail
    ($I12, $I11) = rx277_cur."!mark_peek"($I10)
    rx277_cur."!cursor_pos"($I11)
    ($P10) = rx277_cur."!cursor_start"()
    $P10."!cursor_pass"(rx277_pos, "")
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_281_done
  rxcap_281_fail:
    goto rx277_fail
  rxcap_281_done:
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "metachar:sym<$>")
    if_null rx277_debug, debug_398
    rx277_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx277_pos)
  debug_398:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 11
    if_null rx277_debug, debug_399
    rx277_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_399:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_400
    rx277_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_400:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1303857426.514") :method
.annotate 'line', 11
    new $P279, "ResizablePMCArray"
    push $P279, "$"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_debug
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    gt rx283_pos, rx283_eos, rx283_done
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    eq $I10, 1, rx283_restart
    if_null rx283_debug, debug_401
    rx283_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan286_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_287_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx literal  "$$"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "$$", rx283_fail
    add rx283_pos, 2
    set_addr $I10, rxcap_287_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_287_done
  rxcap_287_fail:
    goto rx283_fail
  rxcap_287_done:
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "metachar:sym<$$>")
    if_null rx283_debug, debug_402
    rx283_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx283_pos)
  debug_402:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 11
    if_null rx283_debug, debug_403
    rx283_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_403:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_404
    rx283_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_404:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1303857426.514") :method
.annotate 'line', 11
    new $P285, "ResizablePMCArray"
    push $P285, "$$"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    .local pmc rx289_debug
    (rx289_cur, rx289_pos, rx289_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx289_cur
    .local pmc match
    .lex "$/", match
    length rx289_eos, rx289_tgt
    gt rx289_pos, rx289_eos, rx289_done
    set rx289_off, 0
    lt rx289_pos, 2, rx289_start
    sub rx289_off, rx289_pos, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
    eq $I10, 1, rx289_restart
    if_null rx289_debug, debug_405
    rx289_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan293_done
    goto rxscan293_scan
  rxscan293_loop:
    (rx289_pos) = rx289_cur."from"()
    inc rx289_pos
    rx289_cur."!cursor_from"(rx289_pos)
    ge rx289_pos, rx289_eos, rxscan293_done
  rxscan293_scan:
    set_addr $I10, rxscan293_loop
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  rxscan293_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_294_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  ":::"
    add $I11, rx289_pos, 3
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 3
    ne $S10, ":::", rx289_fail
    add rx289_pos, 3
    set_addr $I10, rxcap_294_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_294_done
  rxcap_294_fail:
    goto rx289_fail
  rxcap_294_done:
  # rx subrule "panic" subtype=method negate=
    rx289_cur."!cursor_pos"(rx289_pos)
    $P10 = rx289_cur."panic"("::: not yet implemented")
    unless $P10, rx289_fail
    rx289_pos = $P10."pos"()
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "metachar:sym<:::>")
    if_null rx289_debug, debug_406
    rx289_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx289_pos)
  debug_406:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 11
    if_null rx289_debug, debug_407
    rx289_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_407:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_408
    rx289_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_408:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1303857426.514") :method
.annotate 'line', 11
    $P291 = self."!PREFIX__!subrule"("panic", ":::")
    new $P292, "ResizablePMCArray"
    push $P292, $P291
    .return ($P292)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    .local pmc rx296_debug
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx296_cur
    .local pmc match
    .lex "$/", match
    length rx296_eos, rx296_tgt
    gt rx296_pos, rx296_eos, rx296_done
    set rx296_off, 0
    lt rx296_pos, 2, rx296_start
    sub rx296_off, rx296_pos, 1
    substr rx296_tgt, rx296_tgt, rx296_off
  rx296_start:
    eq $I10, 1, rx296_restart
    if_null rx296_debug, debug_409
    rx296_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan300_done
    goto rxscan300_scan
  rxscan300_loop:
    (rx296_pos) = rx296_cur."from"()
    inc rx296_pos
    rx296_cur."!cursor_from"(rx296_pos)
    ge rx296_pos, rx296_eos, rxscan300_done
  rxscan300_scan:
    set_addr $I10, rxscan300_loop
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  rxscan300_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_301_fail
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  # rx literal  "::"
    add $I11, rx296_pos, 2
    gt $I11, rx296_eos, rx296_fail
    sub $I11, rx296_pos, rx296_off
    substr $S10, rx296_tgt, $I11, 2
    ne $S10, "::", rx296_fail
    add rx296_pos, 2
    set_addr $I10, rxcap_301_fail
    ($I12, $I11) = rx296_cur."!mark_peek"($I10)
    rx296_cur."!cursor_pos"($I11)
    ($P10) = rx296_cur."!cursor_start"()
    $P10."!cursor_pass"(rx296_pos, "")
    rx296_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_301_done
  rxcap_301_fail:
    goto rx296_fail
  rxcap_301_done:
  # rx subrule "panic" subtype=method negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."panic"(":: not yet implemented")
    unless $P10, rx296_fail
    rx296_pos = $P10."pos"()
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "metachar:sym<::>")
    if_null rx296_debug, debug_410
    rx296_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx296_pos)
  debug_410:
    .return (rx296_cur)
  rx296_restart:
.annotate 'line', 11
    if_null rx296_debug, debug_411
    rx296_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_411:
  rx296_fail:
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    if_null rx296_debug, debug_412
    rx296_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_412:
    .return (rx296_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1303857426.514") :method
.annotate 'line', 11
    $P298 = self."!PREFIX__!subrule"("panic", "::")
    new $P299, "ResizablePMCArray"
    push $P299, $P298
    .return ($P299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx303_tgt
    .local int rx303_pos
    .local int rx303_off
    .local int rx303_eos
    .local int rx303_rep
    .local pmc rx303_cur
    .local pmc rx303_debug
    (rx303_cur, rx303_pos, rx303_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx303_cur
    .local pmc match
    .lex "$/", match
    length rx303_eos, rx303_tgt
    gt rx303_pos, rx303_eos, rx303_done
    set rx303_off, 0
    lt rx303_pos, 2, rx303_start
    sub rx303_off, rx303_pos, 1
    substr rx303_tgt, rx303_tgt, rx303_off
  rx303_start:
    eq $I10, 1, rx303_restart
    if_null rx303_debug, debug_413
    rx303_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan306_done
    goto rxscan306_scan
  rxscan306_loop:
    (rx303_pos) = rx303_cur."from"()
    inc rx303_pos
    rx303_cur."!cursor_from"(rx303_pos)
    ge rx303_pos, rx303_eos, rxscan306_done
  rxscan306_scan:
    set_addr $I10, rxscan306_loop
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  rxscan306_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_308_fail
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  alt307_0:
    set_addr $I10, alt307_1
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  # rx literal  "<<"
    add $I11, rx303_pos, 2
    gt $I11, rx303_eos, rx303_fail
    sub $I11, rx303_pos, rx303_off
    substr $S10, rx303_tgt, $I11, 2
    ne $S10, "<<", rx303_fail
    add rx303_pos, 2
    goto alt307_end
  alt307_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx303_pos, 1
    gt $I11, rx303_eos, rx303_fail
    sub $I11, rx303_pos, rx303_off
    ord $I11, rx303_tgt, $I11
    ne $I11, 171, rx303_fail
    add rx303_pos, 1
  alt307_end:
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx303_cur."!mark_peek"($I10)
    rx303_cur."!cursor_pos"($I11)
    ($P10) = rx303_cur."!cursor_start"()
    $P10."!cursor_pass"(rx303_pos, "")
    rx303_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx303_fail
  rxcap_308_done:
  # rx pass
    rx303_cur."!cursor_pass"(rx303_pos, "metachar:sym<lwb>")
    if_null rx303_debug, debug_414
    rx303_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx303_pos)
  debug_414:
    .return (rx303_cur)
  rx303_restart:
.annotate 'line', 11
    if_null rx303_debug, debug_415
    rx303_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_415:
  rx303_fail:
    (rx303_rep, rx303_pos, $I10, $P10) = rx303_cur."!mark_fail"(0)
    lt rx303_pos, -1, rx303_done
    eq rx303_pos, -1, rx303_fail
    jump $I10
  rx303_done:
    rx303_cur."!cursor_fail"()
    if_null rx303_debug, debug_416
    rx303_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_416:
    .return (rx303_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1303857426.514") :method
.annotate 'line', 11
    new $P305, "ResizablePMCArray"
    push $P305, unicode:"\x{ab}"
    push $P305, "<<"
    .return ($P305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    .local pmc rx310_debug
    (rx310_cur, rx310_pos, rx310_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx310_cur
    .local pmc match
    .lex "$/", match
    length rx310_eos, rx310_tgt
    gt rx310_pos, rx310_eos, rx310_done
    set rx310_off, 0
    lt rx310_pos, 2, rx310_start
    sub rx310_off, rx310_pos, 1
    substr rx310_tgt, rx310_tgt, rx310_off
  rx310_start:
    eq $I10, 1, rx310_restart
    if_null rx310_debug, debug_417
    rx310_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan313_done
    goto rxscan313_scan
  rxscan313_loop:
    (rx310_pos) = rx310_cur."from"()
    inc rx310_pos
    rx310_cur."!cursor_from"(rx310_pos)
    ge rx310_pos, rx310_eos, rxscan313_done
  rxscan313_scan:
    set_addr $I10, rxscan313_loop
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  rxscan313_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  alt314_0:
    set_addr $I10, alt314_1
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  # rx literal  ">>"
    add $I11, rx310_pos, 2
    gt $I11, rx310_eos, rx310_fail
    sub $I11, rx310_pos, rx310_off
    substr $S10, rx310_tgt, $I11, 2
    ne $S10, ">>", rx310_fail
    add rx310_pos, 2
    goto alt314_end
  alt314_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx310_pos, 1
    gt $I11, rx310_eos, rx310_fail
    sub $I11, rx310_pos, rx310_off
    ord $I11, rx310_tgt, $I11
    ne $I11, 187, rx310_fail
    add rx310_pos, 1
  alt314_end:
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx310_cur."!mark_peek"($I10)
    rx310_cur."!cursor_pos"($I11)
    ($P10) = rx310_cur."!cursor_start"()
    $P10."!cursor_pass"(rx310_pos, "")
    rx310_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx310_fail
  rxcap_315_done:
  # rx pass
    rx310_cur."!cursor_pass"(rx310_pos, "metachar:sym<rwb>")
    if_null rx310_debug, debug_418
    rx310_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx310_pos)
  debug_418:
    .return (rx310_cur)
  rx310_restart:
.annotate 'line', 11
    if_null rx310_debug, debug_419
    rx310_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_419:
  rx310_fail:
    (rx310_rep, rx310_pos, $I10, $P10) = rx310_cur."!mark_fail"(0)
    lt rx310_pos, -1, rx310_done
    eq rx310_pos, -1, rx310_fail
    jump $I10
  rx310_done:
    rx310_cur."!cursor_fail"()
    if_null rx310_debug, debug_420
    rx310_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_420:
    .return (rx310_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1303857426.514") :method
.annotate 'line', 11
    new $P312, "ResizablePMCArray"
    push $P312, unicode:"\x{bb}"
    push $P312, ">>"
    .return ($P312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    .local pmc rx317_debug
    (rx317_cur, rx317_pos, rx317_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx317_cur
    .local pmc match
    .lex "$/", match
    length rx317_eos, rx317_tgt
    gt rx317_pos, rx317_eos, rx317_done
    set rx317_off, 0
    lt rx317_pos, 2, rx317_start
    sub rx317_off, rx317_pos, 1
    substr rx317_tgt, rx317_tgt, rx317_off
  rx317_start:
    eq $I10, 1, rx317_restart
    if_null rx317_debug, debug_421
    rx317_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan321_done
    goto rxscan321_scan
  rxscan321_loop:
    (rx317_pos) = rx317_cur."from"()
    inc rx317_pos
    rx317_cur."!cursor_from"(rx317_pos)
    ge rx317_pos, rx317_eos, rxscan321_done
  rxscan321_scan:
    set_addr $I10, rxscan321_loop
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  rxscan321_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx317_pos, 1
    gt $I11, rx317_eos, rx317_fail
    sub $I11, rx317_pos, rx317_off
    ord $I11, rx317_tgt, $I11
    ne $I11, 92, rx317_fail
    add rx317_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx317_cur."!cursor_pos"(rx317_pos)
    $P10 = rx317_cur."backslash"()
    unless $P10, rx317_fail
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx317_pos = $P10."pos"()
  # rx pass
    rx317_cur."!cursor_pass"(rx317_pos, "metachar:sym<bs>")
    if_null rx317_debug, debug_422
    rx317_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx317_pos)
  debug_422:
    .return (rx317_cur)
  rx317_restart:
.annotate 'line', 11
    if_null rx317_debug, debug_423
    rx317_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_423:
  rx317_fail:
    (rx317_rep, rx317_pos, $I10, $P10) = rx317_cur."!mark_fail"(0)
    lt rx317_pos, -1, rx317_done
    eq rx317_pos, -1, rx317_fail
    jump $I10
  rx317_done:
    rx317_cur."!cursor_fail"()
    if_null rx317_debug, debug_424
    rx317_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_424:
    .return (rx317_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1303857426.514") :method
.annotate 'line', 11
    $P319 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P320, "ResizablePMCArray"
    push $P320, $P319
    .return ($P320)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    .local pmc rx323_debug
    (rx323_cur, rx323_pos, rx323_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx323_cur
    .local pmc match
    .lex "$/", match
    length rx323_eos, rx323_tgt
    gt rx323_pos, rx323_eos, rx323_done
    set rx323_off, 0
    lt rx323_pos, 2, rx323_start
    sub rx323_off, rx323_pos, 1
    substr rx323_tgt, rx323_tgt, rx323_off
  rx323_start:
    eq $I10, 1, rx323_restart
    if_null rx323_debug, debug_425
    rx323_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan327_done
    goto rxscan327_scan
  rxscan327_loop:
    (rx323_pos) = rx323_cur."from"()
    inc rx323_pos
    rx323_cur."!cursor_from"(rx323_pos)
    ge rx323_pos, rx323_eos, rxscan327_done
  rxscan327_scan:
    set_addr $I10, rxscan327_loop
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  rxscan327_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."mod_internal"()
    unless $P10, rx323_fail
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx323_pos = $P10."pos"()
  # rx pass
    rx323_cur."!cursor_pass"(rx323_pos, "metachar:sym<mod>")
    if_null rx323_debug, debug_426
    rx323_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx323_pos)
  debug_426:
    .return (rx323_cur)
  rx323_restart:
.annotate 'line', 11
    if_null rx323_debug, debug_427
    rx323_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_427:
  rx323_fail:
    (rx323_rep, rx323_pos, $I10, $P10) = rx323_cur."!mark_fail"(0)
    lt rx323_pos, -1, rx323_done
    eq rx323_pos, -1, rx323_fail
    jump $I10
  rx323_done:
    rx323_cur."!cursor_fail"()
    if_null rx323_debug, debug_428
    rx323_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_428:
    .return (rx323_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1303857426.514") :method
.annotate 'line', 11
    $P325 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P326, "ResizablePMCArray"
    push $P326, $P325
    .return ($P326)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    .local pmc rx329_debug
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    gt rx329_pos, rx329_eos, rx329_done
    set rx329_off, 0
    lt rx329_pos, 2, rx329_start
    sub rx329_off, rx329_pos, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
    eq $I10, 1, rx329_restart
    if_null rx329_debug, debug_429
    rx329_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan333_done
    goto rxscan333_scan
  rxscan333_loop:
    (rx329_pos) = rx329_cur."from"()
    inc rx329_pos
    rx329_cur."!cursor_from"(rx329_pos)
    ge rx329_pos, rx329_eos, rxscan333_done
  rxscan333_scan:
    set_addr $I10, rxscan333_loop
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  rxscan333_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."quantifier"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx329_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "metachar:sym<quantifier>")
    if_null rx329_debug, debug_430
    rx329_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx329_pos)
  debug_430:
    .return (rx329_cur)
  rx329_restart:
.annotate 'line', 11
    if_null rx329_debug, debug_431
    rx329_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_431:
  rx329_fail:
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    if_null rx329_debug, debug_432
    rx329_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_432:
    .return (rx329_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1303857426.514") :method
.annotate 'line', 11
    $P331 = self."!PREFIX__!subrule"("quantifier", "")
    new $P332, "ResizablePMCArray"
    push $P332, $P331
    .return ($P332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx335_tgt
    .local int rx335_pos
    .local int rx335_off
    .local int rx335_eos
    .local int rx335_rep
    .local pmc rx335_cur
    .local pmc rx335_debug
    (rx335_cur, rx335_pos, rx335_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx335_cur
    .local pmc match
    .lex "$/", match
    length rx335_eos, rx335_tgt
    gt rx335_pos, rx335_eos, rx335_done
    set rx335_off, 0
    lt rx335_pos, 2, rx335_start
    sub rx335_off, rx335_pos, 1
    substr rx335_tgt, rx335_tgt, rx335_off
  rx335_start:
    eq $I10, 1, rx335_restart
    if_null rx335_debug, debug_433
    rx335_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan339_done
    goto rxscan339_scan
  rxscan339_loop:
    (rx335_pos) = rx335_cur."from"()
    inc rx335_pos
    rx335_cur."!cursor_from"(rx335_pos)
    ge rx335_pos, rx335_eos, rxscan339_done
  rxscan339_scan:
    set_addr $I10, rxscan339_loop
    rx335_cur."!mark_push"(0, rx335_pos, $I10)
  rxscan339_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_340_fail
    rx335_cur."!mark_push"(0, rx335_pos, $I10)
  # rx literal  "~"
    add $I11, rx335_pos, 1
    gt $I11, rx335_eos, rx335_fail
    sub $I11, rx335_pos, rx335_off
    ord $I11, rx335_tgt, $I11
    ne $I11, 126, rx335_fail
    add rx335_pos, 1
    set_addr $I10, rxcap_340_fail
    ($I12, $I11) = rx335_cur."!mark_peek"($I10)
    rx335_cur."!cursor_pos"($I11)
    ($P10) = rx335_cur."!cursor_start"()
    $P10."!cursor_pass"(rx335_pos, "")
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_340_done
  rxcap_340_fail:
    goto rx335_fail
  rxcap_340_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."ws"()
    unless $P10, rx335_fail
    rx335_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."quantified_atom"()
    unless $P10, rx335_fail
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx335_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."ws"()
    unless $P10, rx335_fail
    rx335_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."quantified_atom"()
    unless $P10, rx335_fail
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx335_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx335_cur."!cursor_pass"(rx335_pos, "metachar:sym<~>")
    if_null rx335_debug, debug_434
    rx335_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx335_pos)
  debug_434:
    .return (rx335_cur)
  rx335_restart:
.annotate 'line', 11
    if_null rx335_debug, debug_435
    rx335_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_435:
  rx335_fail:
    (rx335_rep, rx335_pos, $I10, $P10) = rx335_cur."!mark_fail"(0)
    lt rx335_pos, -1, rx335_done
    eq rx335_pos, -1, rx335_fail
    jump $I10
  rx335_done:
    rx335_cur."!cursor_fail"()
    if_null rx335_debug, debug_436
    rx335_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_436:
    .return (rx335_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1303857426.514") :method
.annotate 'line', 11
    $P337 = self."!PREFIX__!subrule"("ws", "~")
    new $P338, "ResizablePMCArray"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx342_tgt
    .local int rx342_pos
    .local int rx342_off
    .local int rx342_eos
    .local int rx342_rep
    .local pmc rx342_cur
    .local pmc rx342_debug
    (rx342_cur, rx342_pos, rx342_tgt, $I10) = self."!cursor_start"()
    rx342_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx342_cur
    .local pmc match
    .lex "$/", match
    length rx342_eos, rx342_tgt
    gt rx342_pos, rx342_eos, rx342_done
    set rx342_off, 0
    lt rx342_pos, 2, rx342_start
    sub rx342_off, rx342_pos, 1
    substr rx342_tgt, rx342_tgt, rx342_off
  rx342_start:
    eq $I10, 1, rx342_restart
    if_null rx342_debug, debug_437
    rx342_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    (rx342_pos) = rx342_cur."from"()
    inc rx342_pos
    rx342_cur."!cursor_from"(rx342_pos)
    ge rx342_pos, rx342_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxscan345_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_346_fail
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx342_pos, 3
    gt $I11, rx342_eos, rx342_fail
    sub $I11, rx342_pos, rx342_off
    substr $S10, rx342_tgt, $I11, 3
    ne $S10, "{*}", rx342_fail
    add rx342_pos, 3
    set_addr $I10, rxcap_346_fail
    ($I12, $I11) = rx342_cur."!mark_peek"($I10)
    rx342_cur."!cursor_pos"($I11)
    ($P10) = rx342_cur."!cursor_start"()
    $P10."!cursor_pass"(rx342_pos, "")
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_346_done
  rxcap_346_fail:
    goto rx342_fail
  rxcap_346_done:
.annotate 'line', 123
  # rx rxquantr347 ** 0..1
    set_addr $I10, rxquantr347_done
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxquantr347_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq348_loop:
    le $I12, 0, rxenumcharlistq348_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq348_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq348_loop
  rxenumcharlistq348_done:
    add rx342_pos, rx342_pos, rx342_rep
  # rx literal  "#= "
    add $I11, rx342_pos, 3
    gt $I11, rx342_eos, rx342_fail
    sub $I11, rx342_pos, rx342_off
    substr $S10, rx342_tgt, $I11, 3
    ne $S10, "#= ", rx342_fail
    add rx342_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq349_loop:
    le $I12, 0, rxenumcharlistq349_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq349_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq349_loop
  rxenumcharlistq349_done:
    add rx342_pos, rx342_pos, rx342_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_352_fail
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx342_pos, rx342_off
    find_cclass $I11, 32, rx342_tgt, $I10, rx342_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx342_fail
    add rx342_pos, rx342_off, $I11
  # rx rxquantr350 ** 0..*
    set_addr $I10, rxquantr350_done
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxquantr350_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq351_loop:
    le $I12, 0, rxenumcharlistq351_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq351_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq351_loop
  rxenumcharlistq351_done:
    lt rx342_rep, 1, rx342_fail
    add rx342_pos, rx342_pos, rx342_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx342_pos, rx342_off
    find_cclass $I11, 32, rx342_tgt, $I10, rx342_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx342_fail
    add rx342_pos, rx342_off, $I11
    set_addr $I10, rxquantr350_done
    (rx342_rep) = rx342_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr350_done
    rx342_cur."!mark_push"(rx342_rep, rx342_pos, $I10)
    goto rxquantr350_loop
  rxquantr350_done:
    set_addr $I10, rxcap_352_fail
    ($I12, $I11) = rx342_cur."!mark_peek"($I10)
    rx342_cur."!cursor_pos"($I11)
    ($P10) = rx342_cur."!cursor_start"()
    $P10."!cursor_pass"(rx342_pos, "")
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_352_done
  rxcap_352_fail:
    goto rx342_fail
  rxcap_352_done:
    set_addr $I10, rxquantr347_done
    (rx342_rep) = rx342_cur."!mark_commit"($I10)
  rxquantr347_done:
.annotate 'line', 121
  # rx pass
    rx342_cur."!cursor_pass"(rx342_pos, "metachar:sym<{*}>")
    if_null rx342_debug, debug_438
    rx342_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx342_pos)
  debug_438:
    .return (rx342_cur)
  rx342_restart:
.annotate 'line', 11
    if_null rx342_debug, debug_439
    rx342_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_439:
  rx342_fail:
    (rx342_rep, rx342_pos, $I10, $P10) = rx342_cur."!mark_fail"(0)
    lt rx342_pos, -1, rx342_done
    eq rx342_pos, -1, rx342_fail
    jump $I10
  rx342_done:
    rx342_cur."!cursor_fail"()
    if_null rx342_debug, debug_440
    rx342_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_440:
    .return (rx342_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1303857426.514") :method
.annotate 'line', 11
    new $P344, "ResizablePMCArray"
    push $P344, "{*}"
    .return ($P344)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx354_tgt
    .local int rx354_pos
    .local int rx354_off
    .local int rx354_eos
    .local int rx354_rep
    .local pmc rx354_cur
    .local pmc rx354_debug
    (rx354_cur, rx354_pos, rx354_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx354_cur
    .local pmc match
    .lex "$/", match
    length rx354_eos, rx354_tgt
    gt rx354_pos, rx354_eos, rx354_done
    set rx354_off, 0
    lt rx354_pos, 2, rx354_start
    sub rx354_off, rx354_pos, 1
    substr rx354_tgt, rx354_tgt, rx354_off
  rx354_start:
    eq $I10, 1, rx354_restart
    if_null rx354_debug, debug_441
    rx354_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan358_done
    goto rxscan358_scan
  rxscan358_loop:
    (rx354_pos) = rx354_cur."from"()
    inc rx354_pos
    rx354_cur."!cursor_from"(rx354_pos)
    ge rx354_pos, rx354_eos, rxscan358_done
  rxscan358_scan:
    set_addr $I10, rxscan358_loop
    rx354_cur."!mark_push"(0, rx354_pos, $I10)
  rxscan358_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx354_pos, 1
    gt $I11, rx354_eos, rx354_fail
    sub $I11, rx354_pos, rx354_off
    ord $I11, rx354_tgt, $I11
    ne $I11, 60, rx354_fail
    add rx354_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx354_cur."!cursor_pos"(rx354_pos)
    $P10 = rx354_cur."assertion"()
    unless $P10, rx354_fail
    rx354_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx354_pos = $P10."pos"()
  alt359_0:
.annotate 'line', 127
    set_addr $I10, alt359_1
    rx354_cur."!mark_push"(0, rx354_pos, $I10)
  # rx literal  ">"
    add $I11, rx354_pos, 1
    gt $I11, rx354_eos, rx354_fail
    sub $I11, rx354_pos, rx354_off
    ord $I11, rx354_tgt, $I11
    ne $I11, 62, rx354_fail
    add rx354_pos, 1
    goto alt359_end
  alt359_1:
  # rx subrule "panic" subtype=method negate=
    rx354_cur."!cursor_pos"(rx354_pos)
    $P10 = rx354_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx354_fail
    rx354_pos = $P10."pos"()
  alt359_end:
.annotate 'line', 125
  # rx pass
    rx354_cur."!cursor_pass"(rx354_pos, "metachar:sym<assert>")
    if_null rx354_debug, debug_442
    rx354_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx354_pos)
  debug_442:
    .return (rx354_cur)
  rx354_restart:
.annotate 'line', 11
    if_null rx354_debug, debug_443
    rx354_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_443:
  rx354_fail:
    (rx354_rep, rx354_pos, $I10, $P10) = rx354_cur."!mark_fail"(0)
    lt rx354_pos, -1, rx354_done
    eq rx354_pos, -1, rx354_fail
    jump $I10
  rx354_done:
    rx354_cur."!cursor_fail"()
    if_null rx354_debug, debug_444
    rx354_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_444:
    .return (rx354_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1303857426.514") :method
.annotate 'line', 11
    $P356 = self."!PREFIX__!subrule"("assertion", "<")
    new $P357, "ResizablePMCArray"
    push $P357, $P356
    .return ($P357)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    .local pmc rx361_debug
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    gt rx361_pos, rx361_eos, rx361_done
    set rx361_off, 0
    lt rx361_pos, 2, rx361_start
    sub rx361_off, rx361_pos, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
    eq $I10, 1, rx361_restart
    if_null rx361_debug, debug_445
    rx361_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan364_done
    goto rxscan364_scan
  rxscan364_loop:
    (rx361_pos) = rx361_cur."from"()
    inc rx361_pos
    rx361_cur."!cursor_from"(rx361_pos)
    ge rx361_pos, rx361_eos, rxscan364_done
  rxscan364_scan:
    set_addr $I10, rxscan364_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxscan364_done:
  alt365_0:
.annotate 'line', 131
    set_addr $I10, alt365_1
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx361_pos, 2
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 2
    ne $S10, "$<", rx361_fail
    add rx361_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_367_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx361_pos, rx361_off
    set rx361_rep, 0
    sub $I12, rx361_eos, rx361_pos
  rxenumcharlistq366_loop:
    le $I12, 0, rxenumcharlistq366_done
    substr $S10, rx361_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq366_done
    inc rx361_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq366_loop
  rxenumcharlistq366_done:
    lt rx361_rep, 1, rx361_fail
    add rx361_pos, rx361_pos, rx361_rep
    set_addr $I10, rxcap_367_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_367_done
  rxcap_367_fail:
    goto rx361_fail
  rxcap_367_done:
  # rx literal  ">"
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 62, rx361_fail
    add rx361_pos, 1
    goto alt365_end
  alt365_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 36, rx361_fail
    add rx361_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_368_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx361_pos, rx361_off
    find_not_cclass $I11, 8, rx361_tgt, $I10, rx361_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx361_fail
    add rx361_pos, rx361_off, $I11
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx361_fail
  rxcap_368_done:
  alt365_end:
.annotate 'line', 136
  # rx rxquantr369 ** 0..1
    set_addr $I10, rxquantr369_done
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxquantr369_loop:
  # rx subrule "ws" subtype=method negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."ws"()
    unless $P10, rx361_fail
    rx361_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 61, rx361_fail
    add rx361_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."ws"()
    unless $P10, rx361_fail
    rx361_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."quantified_atom"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx361_pos = $P10."pos"()
    set_addr $I10, rxquantr369_done
    (rx361_rep) = rx361_cur."!mark_commit"($I10)
  rxquantr369_done:
.annotate 'line', 130
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "metachar:sym<var>")
    if_null rx361_debug, debug_446
    rx361_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx361_pos)
  debug_446:
    .return (rx361_cur)
  rx361_restart:
.annotate 'line', 11
    if_null rx361_debug, debug_447
    rx361_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_447:
  rx361_fail:
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    if_null rx361_debug, debug_448
    rx361_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_448:
    .return (rx361_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1303857426.514") :method
.annotate 'line', 11
    new $P363, "ResizablePMCArray"
    push $P363, "$"
    push $P363, "$<"
    .return ($P363)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    .local pmc rx371_debug
    (rx371_cur, rx371_pos, rx371_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx371_cur
    .local pmc match
    .lex "$/", match
    length rx371_eos, rx371_tgt
    gt rx371_pos, rx371_eos, rx371_done
    set rx371_off, 0
    lt rx371_pos, 2, rx371_start
    sub rx371_off, rx371_pos, 1
    substr rx371_tgt, rx371_tgt, rx371_off
  rx371_start:
    eq $I10, 1, rx371_restart
    if_null rx371_debug, debug_449
    rx371_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan374_done
    goto rxscan374_scan
  rxscan374_loop:
    (rx371_pos) = rx371_cur."from"()
    inc rx371_pos
    rx371_cur."!cursor_from"(rx371_pos)
    ge rx371_pos, rx371_eos, rxscan374_done
  rxscan374_scan:
    set_addr $I10, rxscan374_loop
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  rxscan374_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx371_pos, 6
    gt $I11, rx371_eos, rx371_fail
    sub $I11, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I11, 6
    ne $S10, ":PIR{{", rx371_fail
    add rx371_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_377_fail
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  # rx rxquantf375 ** 0..*
    set_addr $I10, rxquantf375_loop
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
    goto rxquantf375_done
  rxquantf375_loop:
  # rx charclass .
    ge rx371_pos, rx371_eos, rx371_fail
    inc rx371_pos
    set_addr $I10, rxquantf375_loop
    rx371_cur."!mark_push"(rx371_rep, rx371_pos, $I10)
  rxquantf375_done:
    set_addr $I10, rxcap_377_fail
    ($I12, $I11) = rx371_cur."!mark_peek"($I10)
    rx371_cur."!cursor_pos"($I11)
    ($P10) = rx371_cur."!cursor_start"()
    $P10."!cursor_pass"(rx371_pos, "")
    rx371_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_377_done
  rxcap_377_fail:
    goto rx371_fail
  rxcap_377_done:
  # rx literal  "}}"
    add $I11, rx371_pos, 2
    gt $I11, rx371_eos, rx371_fail
    sub $I11, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I11, 2
    ne $S10, "}}", rx371_fail
    add rx371_pos, 2
.annotate 'line', 139
  # rx pass
    rx371_cur."!cursor_pass"(rx371_pos, "metachar:sym<PIR>")
    if_null rx371_debug, debug_450
    rx371_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx371_pos)
  debug_450:
    .return (rx371_cur)
  rx371_restart:
.annotate 'line', 11
    if_null rx371_debug, debug_451
    rx371_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_451:
  rx371_fail:
    (rx371_rep, rx371_pos, $I10, $P10) = rx371_cur."!mark_fail"(0)
    lt rx371_pos, -1, rx371_done
    eq rx371_pos, -1, rx371_fail
    jump $I10
  rx371_done:
    rx371_cur."!cursor_fail"()
    if_null rx371_debug, debug_452
    rx371_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_452:
    .return (rx371_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1303857426.514") :method
.annotate 'line', 11
    new $P373, "ResizablePMCArray"
    push $P373, ":PIR{{"
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1303857426.514")
    .param pmc param_379
.annotate 'line', 143
    .lex "self", param_379
    $P380 = param_379."!protoregex"("backslash")
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1303857426.514")
    .param pmc param_382
.annotate 'line', 143
    .lex "self", param_382
    $P383 = param_382."!PREFIX__!protoregex"("backslash")
    .return ($P383)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    .local pmc rx385_debug
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    gt rx385_pos, rx385_eos, rx385_done
    set rx385_off, 0
    lt rx385_pos, 2, rx385_start
    sub rx385_off, rx385_pos, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    eq $I10, 1, rx385_restart
    if_null rx385_debug, debug_453
    rx385_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan388_done
    goto rxscan388_scan
  rxscan388_loop:
    (rx385_pos) = rx385_cur."from"()
    inc rx385_pos
    rx385_cur."!cursor_from"(rx385_pos)
    ge rx385_pos, rx385_eos, rxscan388_done
  rxscan388_scan:
    set_addr $I10, rxscan388_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan388_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_389_fail
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx385_pos, rx385_eos, rx385_fail
    sub $I10, rx385_pos, rx385_off
    substr $S10, rx385_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx385_fail
    inc rx385_pos
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx385_cur."!mark_peek"($I10)
    rx385_cur."!cursor_pos"($I11)
    ($P10) = rx385_cur."!cursor_start"()
    $P10."!cursor_pass"(rx385_pos, "")
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx385_fail
  rxcap_389_done:
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "backslash:sym<w>")
    if_null rx385_debug, debug_454
    rx385_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx385_pos)
  debug_454:
    .return (rx385_cur)
  rx385_restart:
.annotate 'line', 11
    if_null rx385_debug, debug_455
    rx385_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_455:
  rx385_fail:
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    if_null rx385_debug, debug_456
    rx385_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_456:
    .return (rx385_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1303857426.514") :method
.annotate 'line', 11
    new $P387, "ResizablePMCArray"
    push $P387, "N"
    push $P387, "W"
    push $P387, "S"
    push $P387, "D"
    push $P387, "n"
    push $P387, "w"
    push $P387, "s"
    push $P387, "d"
    .return ($P387)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("108_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    .local pmc rx391_debug
    (rx391_cur, rx391_pos, rx391_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx391_cur
    .local pmc match
    .lex "$/", match
    length rx391_eos, rx391_tgt
    gt rx391_pos, rx391_eos, rx391_done
    set rx391_off, 0
    lt rx391_pos, 2, rx391_start
    sub rx391_off, rx391_pos, 1
    substr rx391_tgt, rx391_tgt, rx391_off
  rx391_start:
    eq $I10, 1, rx391_restart
    if_null rx391_debug, debug_457
    rx391_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan394_done
    goto rxscan394_scan
  rxscan394_loop:
    (rx391_pos) = rx391_cur."from"()
    inc rx391_pos
    rx391_cur."!cursor_from"(rx391_pos)
    ge rx391_pos, rx391_eos, rxscan394_done
  rxscan394_scan:
    set_addr $I10, rxscan394_loop
    rx391_cur."!mark_push"(0, rx391_pos, $I10)
  rxscan394_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_395_fail
    rx391_cur."!mark_push"(0, rx391_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx391_pos, rx391_eos, rx391_fail
    sub $I10, rx391_pos, rx391_off
    substr $S10, rx391_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx391_fail
    inc rx391_pos
    set_addr $I10, rxcap_395_fail
    ($I12, $I11) = rx391_cur."!mark_peek"($I10)
    rx391_cur."!cursor_pos"($I11)
    ($P10) = rx391_cur."!cursor_start"()
    $P10."!cursor_pass"(rx391_pos, "")
    rx391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_395_done
  rxcap_395_fail:
    goto rx391_fail
  rxcap_395_done:
  # rx pass
    rx391_cur."!cursor_pass"(rx391_pos, "backslash:sym<b>")
    if_null rx391_debug, debug_458
    rx391_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx391_pos)
  debug_458:
    .return (rx391_cur)
  rx391_restart:
.annotate 'line', 11
    if_null rx391_debug, debug_459
    rx391_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_459:
  rx391_fail:
    (rx391_rep, rx391_pos, $I10, $P10) = rx391_cur."!mark_fail"(0)
    lt rx391_pos, -1, rx391_done
    eq rx391_pos, -1, rx391_fail
    jump $I10
  rx391_done:
    rx391_cur."!cursor_fail"()
    if_null rx391_debug, debug_460
    rx391_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_460:
    .return (rx391_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1303857426.514") :method
.annotate 'line', 11
    new $P393, "ResizablePMCArray"
    push $P393, "B"
    push $P393, "b"
    .return ($P393)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx397_tgt
    .local int rx397_pos
    .local int rx397_off
    .local int rx397_eos
    .local int rx397_rep
    .local pmc rx397_cur
    .local pmc rx397_debug
    (rx397_cur, rx397_pos, rx397_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx397_cur
    .local pmc match
    .lex "$/", match
    length rx397_eos, rx397_tgt
    gt rx397_pos, rx397_eos, rx397_done
    set rx397_off, 0
    lt rx397_pos, 2, rx397_start
    sub rx397_off, rx397_pos, 1
    substr rx397_tgt, rx397_tgt, rx397_off
  rx397_start:
    eq $I10, 1, rx397_restart
    if_null rx397_debug, debug_461
    rx397_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_461:
    $I10 = self.'from'()
    ne $I10, -1, rxscan400_done
    goto rxscan400_scan
  rxscan400_loop:
    (rx397_pos) = rx397_cur."from"()
    inc rx397_pos
    rx397_cur."!cursor_from"(rx397_pos)
    ge rx397_pos, rx397_eos, rxscan400_done
  rxscan400_scan:
    set_addr $I10, rxscan400_loop
    rx397_cur."!mark_push"(0, rx397_pos, $I10)
  rxscan400_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_401_fail
    rx397_cur."!mark_push"(0, rx397_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx397_pos, rx397_eos, rx397_fail
    sub $I10, rx397_pos, rx397_off
    substr $S10, rx397_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx397_fail
    inc rx397_pos
    set_addr $I10, rxcap_401_fail
    ($I12, $I11) = rx397_cur."!mark_peek"($I10)
    rx397_cur."!cursor_pos"($I11)
    ($P10) = rx397_cur."!cursor_start"()
    $P10."!cursor_pass"(rx397_pos, "")
    rx397_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_401_done
  rxcap_401_fail:
    goto rx397_fail
  rxcap_401_done:
  # rx pass
    rx397_cur."!cursor_pass"(rx397_pos, "backslash:sym<e>")
    if_null rx397_debug, debug_462
    rx397_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx397_pos)
  debug_462:
    .return (rx397_cur)
  rx397_restart:
.annotate 'line', 11
    if_null rx397_debug, debug_463
    rx397_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_463:
  rx397_fail:
    (rx397_rep, rx397_pos, $I10, $P10) = rx397_cur."!mark_fail"(0)
    lt rx397_pos, -1, rx397_done
    eq rx397_pos, -1, rx397_fail
    jump $I10
  rx397_done:
    rx397_cur."!cursor_fail"()
    if_null rx397_debug, debug_464
    rx397_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_464:
    .return (rx397_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1303857426.514") :method
.annotate 'line', 11
    new $P399, "ResizablePMCArray"
    push $P399, "E"
    push $P399, "e"
    .return ($P399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx403_tgt
    .local int rx403_pos
    .local int rx403_off
    .local int rx403_eos
    .local int rx403_rep
    .local pmc rx403_cur
    .local pmc rx403_debug
    (rx403_cur, rx403_pos, rx403_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx403_cur
    .local pmc match
    .lex "$/", match
    length rx403_eos, rx403_tgt
    gt rx403_pos, rx403_eos, rx403_done
    set rx403_off, 0
    lt rx403_pos, 2, rx403_start
    sub rx403_off, rx403_pos, 1
    substr rx403_tgt, rx403_tgt, rx403_off
  rx403_start:
    eq $I10, 1, rx403_restart
    if_null rx403_debug, debug_465
    rx403_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_465:
    $I10 = self.'from'()
    ne $I10, -1, rxscan406_done
    goto rxscan406_scan
  rxscan406_loop:
    (rx403_pos) = rx403_cur."from"()
    inc rx403_pos
    rx403_cur."!cursor_from"(rx403_pos)
    ge rx403_pos, rx403_eos, rxscan406_done
  rxscan406_scan:
    set_addr $I10, rxscan406_loop
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  rxscan406_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_407_fail
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx403_pos, rx403_eos, rx403_fail
    sub $I10, rx403_pos, rx403_off
    substr $S10, rx403_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx403_fail
    inc rx403_pos
    set_addr $I10, rxcap_407_fail
    ($I12, $I11) = rx403_cur."!mark_peek"($I10)
    rx403_cur."!cursor_pos"($I11)
    ($P10) = rx403_cur."!cursor_start"()
    $P10."!cursor_pass"(rx403_pos, "")
    rx403_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_407_done
  rxcap_407_fail:
    goto rx403_fail
  rxcap_407_done:
  # rx pass
    rx403_cur."!cursor_pass"(rx403_pos, "backslash:sym<f>")
    if_null rx403_debug, debug_466
    rx403_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx403_pos)
  debug_466:
    .return (rx403_cur)
  rx403_restart:
.annotate 'line', 11
    if_null rx403_debug, debug_467
    rx403_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_467:
  rx403_fail:
    (rx403_rep, rx403_pos, $I10, $P10) = rx403_cur."!mark_fail"(0)
    lt rx403_pos, -1, rx403_done
    eq rx403_pos, -1, rx403_fail
    jump $I10
  rx403_done:
    rx403_cur."!cursor_fail"()
    if_null rx403_debug, debug_468
    rx403_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_468:
    .return (rx403_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1303857426.514") :method
.annotate 'line', 11
    new $P405, "ResizablePMCArray"
    push $P405, "F"
    push $P405, "f"
    .return ($P405)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    .local pmc rx409_debug
    (rx409_cur, rx409_pos, rx409_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx409_cur
    .local pmc match
    .lex "$/", match
    length rx409_eos, rx409_tgt
    gt rx409_pos, rx409_eos, rx409_done
    set rx409_off, 0
    lt rx409_pos, 2, rx409_start
    sub rx409_off, rx409_pos, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
    eq $I10, 1, rx409_restart
    if_null rx409_debug, debug_469
    rx409_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_469:
    $I10 = self.'from'()
    ne $I10, -1, rxscan412_done
    goto rxscan412_scan
  rxscan412_loop:
    (rx409_pos) = rx409_cur."from"()
    inc rx409_pos
    rx409_cur."!cursor_from"(rx409_pos)
    ge rx409_pos, rx409_eos, rxscan412_done
  rxscan412_scan:
    set_addr $I10, rxscan412_loop
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  rxscan412_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_413_fail
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx409_pos, rx409_eos, rx409_fail
    sub $I10, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx409_fail
    inc rx409_pos
    set_addr $I10, rxcap_413_fail
    ($I12, $I11) = rx409_cur."!mark_peek"($I10)
    rx409_cur."!cursor_pos"($I11)
    ($P10) = rx409_cur."!cursor_start"()
    $P10."!cursor_pass"(rx409_pos, "")
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_413_done
  rxcap_413_fail:
    goto rx409_fail
  rxcap_413_done:
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "backslash:sym<h>")
    if_null rx409_debug, debug_470
    rx409_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx409_pos)
  debug_470:
    .return (rx409_cur)
  rx409_restart:
.annotate 'line', 11
    if_null rx409_debug, debug_471
    rx409_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_471:
  rx409_fail:
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    if_null rx409_debug, debug_472
    rx409_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_472:
    .return (rx409_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1303857426.514") :method
.annotate 'line', 11
    new $P411, "ResizablePMCArray"
    push $P411, "H"
    push $P411, "h"
    .return ($P411)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    .local pmc rx415_debug
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    gt rx415_pos, rx415_eos, rx415_done
    set rx415_off, 0
    lt rx415_pos, 2, rx415_start
    sub rx415_off, rx415_pos, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    eq $I10, 1, rx415_restart
    if_null rx415_debug, debug_473
    rx415_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_473:
    $I10 = self.'from'()
    ne $I10, -1, rxscan418_done
    goto rxscan418_scan
  rxscan418_loop:
    (rx415_pos) = rx415_cur."from"()
    inc rx415_pos
    rx415_cur."!cursor_from"(rx415_pos)
    ge rx415_pos, rx415_eos, rxscan418_done
  rxscan418_scan:
    set_addr $I10, rxscan418_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan418_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_419_fail
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx415_pos, rx415_eos, rx415_fail
    sub $I10, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx415_fail
    inc rx415_pos
    set_addr $I10, rxcap_419_fail
    ($I12, $I11) = rx415_cur."!mark_peek"($I10)
    rx415_cur."!cursor_pos"($I11)
    ($P10) = rx415_cur."!cursor_start"()
    $P10."!cursor_pass"(rx415_pos, "")
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_419_done
  rxcap_419_fail:
    goto rx415_fail
  rxcap_419_done:
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "backslash:sym<r>")
    if_null rx415_debug, debug_474
    rx415_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx415_pos)
  debug_474:
    .return (rx415_cur)
  rx415_restart:
.annotate 'line', 11
    if_null rx415_debug, debug_475
    rx415_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_475:
  rx415_fail:
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    if_null rx415_debug, debug_476
    rx415_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_476:
    .return (rx415_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1303857426.514") :method
.annotate 'line', 11
    new $P417, "ResizablePMCArray"
    push $P417, "R"
    push $P417, "r"
    .return ($P417)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    .local pmc rx421_debug
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    gt rx421_pos, rx421_eos, rx421_done
    set rx421_off, 0
    lt rx421_pos, 2, rx421_start
    sub rx421_off, rx421_pos, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
    eq $I10, 1, rx421_restart
    if_null rx421_debug, debug_477
    rx421_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_477:
    $I10 = self.'from'()
    ne $I10, -1, rxscan424_done
    goto rxscan424_scan
  rxscan424_loop:
    (rx421_pos) = rx421_cur."from"()
    inc rx421_pos
    rx421_cur."!cursor_from"(rx421_pos)
    ge rx421_pos, rx421_eos, rxscan424_done
  rxscan424_scan:
    set_addr $I10, rxscan424_loop
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  rxscan424_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_425_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx421_pos, rx421_eos, rx421_fail
    sub $I10, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx421_fail
    inc rx421_pos
    set_addr $I10, rxcap_425_fail
    ($I12, $I11) = rx421_cur."!mark_peek"($I10)
    rx421_cur."!cursor_pos"($I11)
    ($P10) = rx421_cur."!cursor_start"()
    $P10."!cursor_pass"(rx421_pos, "")
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_425_done
  rxcap_425_fail:
    goto rx421_fail
  rxcap_425_done:
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "backslash:sym<t>")
    if_null rx421_debug, debug_478
    rx421_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx421_pos)
  debug_478:
    .return (rx421_cur)
  rx421_restart:
.annotate 'line', 11
    if_null rx421_debug, debug_479
    rx421_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_479:
  rx421_fail:
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    if_null rx421_debug, debug_480
    rx421_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_480:
    .return (rx421_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1303857426.514") :method
.annotate 'line', 11
    new $P423, "ResizablePMCArray"
    push $P423, "T"
    push $P423, "t"
    .return ($P423)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    .local pmc rx427_debug
    (rx427_cur, rx427_pos, rx427_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx427_cur
    .local pmc match
    .lex "$/", match
    length rx427_eos, rx427_tgt
    gt rx427_pos, rx427_eos, rx427_done
    set rx427_off, 0
    lt rx427_pos, 2, rx427_start
    sub rx427_off, rx427_pos, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
    eq $I10, 1, rx427_restart
    if_null rx427_debug, debug_481
    rx427_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_481:
    $I10 = self.'from'()
    ne $I10, -1, rxscan430_done
    goto rxscan430_scan
  rxscan430_loop:
    (rx427_pos) = rx427_cur."from"()
    inc rx427_pos
    rx427_cur."!cursor_from"(rx427_pos)
    ge rx427_pos, rx427_eos, rxscan430_done
  rxscan430_scan:
    set_addr $I10, rxscan430_loop
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  rxscan430_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_431_fail
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx427_pos, rx427_eos, rx427_fail
    sub $I10, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx427_fail
    inc rx427_pos
    set_addr $I10, rxcap_431_fail
    ($I12, $I11) = rx427_cur."!mark_peek"($I10)
    rx427_cur."!cursor_pos"($I11)
    ($P10) = rx427_cur."!cursor_start"()
    $P10."!cursor_pass"(rx427_pos, "")
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_431_done
  rxcap_431_fail:
    goto rx427_fail
  rxcap_431_done:
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "backslash:sym<v>")
    if_null rx427_debug, debug_482
    rx427_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx427_pos)
  debug_482:
    .return (rx427_cur)
  rx427_restart:
.annotate 'line', 11
    if_null rx427_debug, debug_483
    rx427_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_483:
  rx427_fail:
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    if_null rx427_debug, debug_484
    rx427_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_484:
    .return (rx427_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1303857426.514") :method
.annotate 'line', 11
    new $P429, "ResizablePMCArray"
    push $P429, "V"
    push $P429, "v"
    .return ($P429)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    .local pmc rx433_debug
    (rx433_cur, rx433_pos, rx433_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx433_cur
    .local pmc match
    .lex "$/", match
    length rx433_eos, rx433_tgt
    gt rx433_pos, rx433_eos, rx433_done
    set rx433_off, 0
    lt rx433_pos, 2, rx433_start
    sub rx433_off, rx433_pos, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
    eq $I10, 1, rx433_restart
    if_null rx433_debug, debug_485
    rx433_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_485:
    $I10 = self.'from'()
    ne $I10, -1, rxscan440_done
    goto rxscan440_scan
  rxscan440_loop:
    (rx433_pos) = rx433_cur."from"()
    inc rx433_pos
    rx433_cur."!cursor_from"(rx433_pos)
    ge rx433_pos, rx433_eos, rxscan440_done
  rxscan440_scan:
    set_addr $I10, rxscan440_loop
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  rxscan440_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_441_fail
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx433_pos, rx433_eos, rx433_fail
    sub $I10, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx433_fail
    inc rx433_pos
    set_addr $I10, rxcap_441_fail
    ($I12, $I11) = rx433_cur."!mark_peek"($I10)
    rx433_cur."!cursor_pos"($I11)
    ($P10) = rx433_cur."!cursor_start"()
    $P10."!cursor_pass"(rx433_pos, "")
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_441_done
  rxcap_441_fail:
    goto rx433_fail
  rxcap_441_done:
  alt442_0:
    set_addr $I10, alt442_1
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."octint"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx433_pos = $P10."pos"()
    goto alt442_end
  alt442_1:
  # rx literal  "["
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    ord $I11, rx433_tgt, $I11
    ne $I11, 91, rx433_fail
    add rx433_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."octints"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx433_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    ord $I11, rx433_tgt, $I11
    ne $I11, 93, rx433_fail
    add rx433_pos, 1
  alt442_end:
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "backslash:sym<o>")
    if_null rx433_debug, debug_486
    rx433_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx433_pos)
  debug_486:
    .return (rx433_cur)
  rx433_restart:
.annotate 'line', 11
    if_null rx433_debug, debug_487
    rx433_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_487:
  rx433_fail:
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    if_null rx433_debug, debug_488
    rx433_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_488:
    .return (rx433_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1303857426.514") :method
.annotate 'line', 11
    $P435 = self."!PREFIX__!subrule"("octints", "O[")
    $P436 = self."!PREFIX__!subrule"("octint", "O")
    $P437 = self."!PREFIX__!subrule"("octints", "o[")
    $P438 = self."!PREFIX__!subrule"("octint", "o")
    new $P439, "ResizablePMCArray"
    push $P439, $P435
    push $P439, $P436
    push $P439, $P437
    push $P439, $P438
    .return ($P439)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("124_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx444_tgt
    .local int rx444_pos
    .local int rx444_off
    .local int rx444_eos
    .local int rx444_rep
    .local pmc rx444_cur
    .local pmc rx444_debug
    (rx444_cur, rx444_pos, rx444_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx444_cur
    .local pmc match
    .lex "$/", match
    length rx444_eos, rx444_tgt
    gt rx444_pos, rx444_eos, rx444_done
    set rx444_off, 0
    lt rx444_pos, 2, rx444_start
    sub rx444_off, rx444_pos, 1
    substr rx444_tgt, rx444_tgt, rx444_off
  rx444_start:
    eq $I10, 1, rx444_restart
    if_null rx444_debug, debug_489
    rx444_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_489:
    $I10 = self.'from'()
    ne $I10, -1, rxscan451_done
    goto rxscan451_scan
  rxscan451_loop:
    (rx444_pos) = rx444_cur."from"()
    inc rx444_pos
    rx444_cur."!cursor_from"(rx444_pos)
    ge rx444_pos, rx444_eos, rxscan451_done
  rxscan451_scan:
    set_addr $I10, rxscan451_loop
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  rxscan451_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_452_fail
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx444_pos, rx444_eos, rx444_fail
    sub $I10, rx444_pos, rx444_off
    substr $S10, rx444_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx444_fail
    inc rx444_pos
    set_addr $I10, rxcap_452_fail
    ($I12, $I11) = rx444_cur."!mark_peek"($I10)
    rx444_cur."!cursor_pos"($I11)
    ($P10) = rx444_cur."!cursor_start"()
    $P10."!cursor_pass"(rx444_pos, "")
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_452_done
  rxcap_452_fail:
    goto rx444_fail
  rxcap_452_done:
  alt453_0:
    set_addr $I10, alt453_1
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."hexint"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx444_pos = $P10."pos"()
    goto alt453_end
  alt453_1:
  # rx literal  "["
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 91, rx444_fail
    add rx444_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."hexints"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx444_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 93, rx444_fail
    add rx444_pos, 1
  alt453_end:
  # rx pass
    rx444_cur."!cursor_pass"(rx444_pos, "backslash:sym<x>")
    if_null rx444_debug, debug_490
    rx444_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx444_pos)
  debug_490:
    .return (rx444_cur)
  rx444_restart:
.annotate 'line', 11
    if_null rx444_debug, debug_491
    rx444_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_491:
  rx444_fail:
    (rx444_rep, rx444_pos, $I10, $P10) = rx444_cur."!mark_fail"(0)
    lt rx444_pos, -1, rx444_done
    eq rx444_pos, -1, rx444_fail
    jump $I10
  rx444_done:
    rx444_cur."!cursor_fail"()
    if_null rx444_debug, debug_492
    rx444_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_492:
    .return (rx444_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1303857426.514") :method
.annotate 'line', 11
    $P446 = self."!PREFIX__!subrule"("hexints", "X[")
    $P447 = self."!PREFIX__!subrule"("hexint", "X")
    $P448 = self."!PREFIX__!subrule"("hexints", "x[")
    $P449 = self."!PREFIX__!subrule"("hexint", "x")
    new $P450, "ResizablePMCArray"
    push $P450, $P446
    push $P450, $P447
    push $P450, $P448
    push $P450, $P449
    .return ($P450)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("126_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx455_tgt
    .local int rx455_pos
    .local int rx455_off
    .local int rx455_eos
    .local int rx455_rep
    .local pmc rx455_cur
    .local pmc rx455_debug
    (rx455_cur, rx455_pos, rx455_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx455_cur
    .local pmc match
    .lex "$/", match
    length rx455_eos, rx455_tgt
    gt rx455_pos, rx455_eos, rx455_done
    set rx455_off, 0
    lt rx455_pos, 2, rx455_start
    sub rx455_off, rx455_pos, 1
    substr rx455_tgt, rx455_tgt, rx455_off
  rx455_start:
    eq $I10, 1, rx455_restart
    if_null rx455_debug, debug_493
    rx455_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_493:
    $I10 = self.'from'()
    ne $I10, -1, rxscan460_done
    goto rxscan460_scan
  rxscan460_loop:
    (rx455_pos) = rx455_cur."from"()
    inc rx455_pos
    rx455_cur."!cursor_from"(rx455_pos)
    ge rx455_pos, rx455_eos, rxscan460_done
  rxscan460_scan:
    set_addr $I10, rxscan460_loop
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
  rxscan460_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_461_fail
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx455_pos, rx455_eos, rx455_fail
    sub $I10, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx455_fail
    inc rx455_pos
    set_addr $I10, rxcap_461_fail
    ($I12, $I11) = rx455_cur."!mark_peek"($I10)
    rx455_cur."!cursor_pos"($I11)
    ($P10) = rx455_cur."!cursor_start"()
    $P10."!cursor_pass"(rx455_pos, "")
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_461_done
  rxcap_461_fail:
    goto rx455_fail
  rxcap_461_done:
  # rx subrule "charspec" subtype=capture negate=
    rx455_cur."!cursor_pos"(rx455_pos)
    $P10 = rx455_cur."charspec"()
    unless $P10, rx455_fail
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx455_pos = $P10."pos"()
  # rx pass
    rx455_cur."!cursor_pass"(rx455_pos, "backslash:sym<c>")
    if_null rx455_debug, debug_494
    rx455_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx455_pos)
  debug_494:
    .return (rx455_cur)
  rx455_restart:
.annotate 'line', 11
    if_null rx455_debug, debug_495
    rx455_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_495:
  rx455_fail:
    (rx455_rep, rx455_pos, $I10, $P10) = rx455_cur."!mark_fail"(0)
    lt rx455_pos, -1, rx455_done
    eq rx455_pos, -1, rx455_fail
    jump $I10
  rx455_done:
    rx455_cur."!cursor_fail"()
    if_null rx455_debug, debug_496
    rx455_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_496:
    .return (rx455_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1303857426.514") :method
.annotate 'line', 11
    $P457 = self."!PREFIX__!subrule"("charspec", "C")
    $P458 = self."!PREFIX__!subrule"("charspec", "c")
    new $P459, "ResizablePMCArray"
    push $P459, $P457
    push $P459, $P458
    .return ($P459)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("128_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx463_tgt
    .local int rx463_pos
    .local int rx463_off
    .local int rx463_eos
    .local int rx463_rep
    .local pmc rx463_cur
    .local pmc rx463_debug
    (rx463_cur, rx463_pos, rx463_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx463_cur
    .local pmc match
    .lex "$/", match
    length rx463_eos, rx463_tgt
    gt rx463_pos, rx463_eos, rx463_done
    set rx463_off, 0
    lt rx463_pos, 2, rx463_start
    sub rx463_off, rx463_pos, 1
    substr rx463_tgt, rx463_tgt, rx463_off
  rx463_start:
    eq $I10, 1, rx463_restart
    if_null rx463_debug, debug_497
    rx463_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_497:
    $I10 = self.'from'()
    ne $I10, -1, rxscan467_done
    goto rxscan467_scan
  rxscan467_loop:
    (rx463_pos) = rx463_cur."from"()
    inc rx463_pos
    rx463_cur."!cursor_from"(rx463_pos)
    ge rx463_pos, rx463_eos, rxscan467_done
  rxscan467_scan:
    set_addr $I10, rxscan467_loop
    rx463_cur."!mark_push"(0, rx463_pos, $I10)
  rxscan467_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx463_pos, 1
    gt $I11, rx463_eos, rx463_fail
    sub $I11, rx463_pos, rx463_off
    ord $I11, rx463_tgt, $I11
    ne $I11, 65, rx463_fail
    add rx463_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx463_cur."!cursor_pos"(rx463_pos)
    $P10 = rx463_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx463_fail
    rx463_pos = $P10."pos"()
  # rx pass
    rx463_cur."!cursor_pass"(rx463_pos, "backslash:sym<A>")
    if_null rx463_debug, debug_498
    rx463_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx463_pos)
  debug_498:
    .return (rx463_cur)
  rx463_restart:
.annotate 'line', 11
    if_null rx463_debug, debug_499
    rx463_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_499:
  rx463_fail:
    (rx463_rep, rx463_pos, $I10, $P10) = rx463_cur."!mark_fail"(0)
    lt rx463_pos, -1, rx463_done
    eq rx463_pos, -1, rx463_fail
    jump $I10
  rx463_done:
    rx463_cur."!cursor_fail"()
    if_null rx463_debug, debug_500
    rx463_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_500:
    .return (rx463_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1303857426.514") :method
.annotate 'line', 11
    $P465 = self."!PREFIX__!subrule"("obs", "A")
    new $P466, "ResizablePMCArray"
    push $P466, $P465
    .return ($P466)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx469_tgt
    .local int rx469_pos
    .local int rx469_off
    .local int rx469_eos
    .local int rx469_rep
    .local pmc rx469_cur
    .local pmc rx469_debug
    (rx469_cur, rx469_pos, rx469_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx469_cur
    .local pmc match
    .lex "$/", match
    length rx469_eos, rx469_tgt
    gt rx469_pos, rx469_eos, rx469_done
    set rx469_off, 0
    lt rx469_pos, 2, rx469_start
    sub rx469_off, rx469_pos, 1
    substr rx469_tgt, rx469_tgt, rx469_off
  rx469_start:
    eq $I10, 1, rx469_restart
    if_null rx469_debug, debug_501
    rx469_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_501:
    $I10 = self.'from'()
    ne $I10, -1, rxscan473_done
    goto rxscan473_scan
  rxscan473_loop:
    (rx469_pos) = rx469_cur."from"()
    inc rx469_pos
    rx469_cur."!cursor_from"(rx469_pos)
    ge rx469_pos, rx469_eos, rxscan473_done
  rxscan473_scan:
    set_addr $I10, rxscan473_loop
    rx469_cur."!mark_push"(0, rx469_pos, $I10)
  rxscan473_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx469_pos, 1
    gt $I11, rx469_eos, rx469_fail
    sub $I11, rx469_pos, rx469_off
    ord $I11, rx469_tgt, $I11
    ne $I11, 122, rx469_fail
    add rx469_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx469_cur."!cursor_pos"(rx469_pos)
    $P10 = rx469_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx469_fail
    rx469_pos = $P10."pos"()
  # rx pass
    rx469_cur."!cursor_pass"(rx469_pos, "backslash:sym<z>")
    if_null rx469_debug, debug_502
    rx469_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx469_pos)
  debug_502:
    .return (rx469_cur)
  rx469_restart:
.annotate 'line', 11
    if_null rx469_debug, debug_503
    rx469_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_503:
  rx469_fail:
    (rx469_rep, rx469_pos, $I10, $P10) = rx469_cur."!mark_fail"(0)
    lt rx469_pos, -1, rx469_done
    eq rx469_pos, -1, rx469_fail
    jump $I10
  rx469_done:
    rx469_cur."!cursor_fail"()
    if_null rx469_debug, debug_504
    rx469_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_504:
    .return (rx469_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1303857426.514") :method
.annotate 'line', 11
    $P471 = self."!PREFIX__!subrule"("obs", "z")
    new $P472, "ResizablePMCArray"
    push $P472, $P471
    .return ($P472)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx475_tgt
    .local int rx475_pos
    .local int rx475_off
    .local int rx475_eos
    .local int rx475_rep
    .local pmc rx475_cur
    .local pmc rx475_debug
    (rx475_cur, rx475_pos, rx475_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx475_cur
    .local pmc match
    .lex "$/", match
    length rx475_eos, rx475_tgt
    gt rx475_pos, rx475_eos, rx475_done
    set rx475_off, 0
    lt rx475_pos, 2, rx475_start
    sub rx475_off, rx475_pos, 1
    substr rx475_tgt, rx475_tgt, rx475_off
  rx475_start:
    eq $I10, 1, rx475_restart
    if_null rx475_debug, debug_505
    rx475_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_505:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    (rx475_pos) = rx475_cur."from"()
    inc rx475_pos
    rx475_cur."!cursor_from"(rx475_pos)
    ge rx475_pos, rx475_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx475_cur."!mark_push"(0, rx475_pos, $I10)
  rxscan479_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx475_pos, 1
    gt $I11, rx475_eos, rx475_fail
    sub $I11, rx475_pos, rx475_off
    ord $I11, rx475_tgt, $I11
    ne $I11, 90, rx475_fail
    add rx475_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx475_cur."!cursor_pos"(rx475_pos)
    $P10 = rx475_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx475_fail
    rx475_pos = $P10."pos"()
  # rx pass
    rx475_cur."!cursor_pass"(rx475_pos, "backslash:sym<Z>")
    if_null rx475_debug, debug_506
    rx475_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx475_pos)
  debug_506:
    .return (rx475_cur)
  rx475_restart:
.annotate 'line', 11
    if_null rx475_debug, debug_507
    rx475_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_507:
  rx475_fail:
    (rx475_rep, rx475_pos, $I10, $P10) = rx475_cur."!mark_fail"(0)
    lt rx475_pos, -1, rx475_done
    eq rx475_pos, -1, rx475_fail
    jump $I10
  rx475_done:
    rx475_cur."!cursor_fail"()
    if_null rx475_debug, debug_508
    rx475_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_508:
    .return (rx475_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1303857426.514") :method
.annotate 'line', 11
    $P477 = self."!PREFIX__!subrule"("obs", "Z")
    new $P478, "ResizablePMCArray"
    push $P478, $P477
    .return ($P478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx481_tgt
    .local int rx481_pos
    .local int rx481_off
    .local int rx481_eos
    .local int rx481_rep
    .local pmc rx481_cur
    .local pmc rx481_debug
    (rx481_cur, rx481_pos, rx481_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx481_cur
    .local pmc match
    .lex "$/", match
    length rx481_eos, rx481_tgt
    gt rx481_pos, rx481_eos, rx481_done
    set rx481_off, 0
    lt rx481_pos, 2, rx481_start
    sub rx481_off, rx481_pos, 1
    substr rx481_tgt, rx481_tgt, rx481_off
  rx481_start:
    eq $I10, 1, rx481_restart
    if_null rx481_debug, debug_509
    rx481_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_509:
    $I10 = self.'from'()
    ne $I10, -1, rxscan485_done
    goto rxscan485_scan
  rxscan485_loop:
    (rx481_pos) = rx481_cur."from"()
    inc rx481_pos
    rx481_cur."!cursor_from"(rx481_pos)
    ge rx481_pos, rx481_eos, rxscan485_done
  rxscan485_scan:
    set_addr $I10, rxscan485_loop
    rx481_cur."!mark_push"(0, rx481_pos, $I10)
  rxscan485_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    ord $I11, rx481_tgt, $I11
    ne $I11, 81, rx481_fail
    add rx481_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx481_cur."!cursor_pos"(rx481_pos)
    $P10 = rx481_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx481_fail
    rx481_pos = $P10."pos"()
  # rx pass
    rx481_cur."!cursor_pass"(rx481_pos, "backslash:sym<Q>")
    if_null rx481_debug, debug_510
    rx481_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx481_pos)
  debug_510:
    .return (rx481_cur)
  rx481_restart:
.annotate 'line', 11
    if_null rx481_debug, debug_511
    rx481_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_511:
  rx481_fail:
    (rx481_rep, rx481_pos, $I10, $P10) = rx481_cur."!mark_fail"(0)
    lt rx481_pos, -1, rx481_done
    eq rx481_pos, -1, rx481_fail
    jump $I10
  rx481_done:
    rx481_cur."!cursor_fail"()
    if_null rx481_debug, debug_512
    rx481_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_512:
    .return (rx481_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1303857426.514") :method
.annotate 'line', 11
    $P483 = self."!PREFIX__!subrule"("obs", "Q")
    new $P484, "ResizablePMCArray"
    push $P484, $P483
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P494 = "138_1303857426.514" 
    capture_lex $P494
    .local string rx487_tgt
    .local int rx487_pos
    .local int rx487_off
    .local int rx487_eos
    .local int rx487_rep
    .local pmc rx487_cur
    .local pmc rx487_debug
    (rx487_cur, rx487_pos, rx487_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx487_cur
    .local pmc match
    .lex "$/", match
    length rx487_eos, rx487_tgt
    gt rx487_pos, rx487_eos, rx487_done
    set rx487_off, 0
    lt rx487_pos, 2, rx487_start
    sub rx487_off, rx487_pos, 1
    substr rx487_tgt, rx487_tgt, rx487_off
  rx487_start:
    eq $I10, 1, rx487_restart
    if_null rx487_debug, debug_513
    rx487_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_513:
    $I10 = self.'from'()
    ne $I10, -1, rxscan490_done
    goto rxscan490_scan
  rxscan490_loop:
    (rx487_pos) = rx487_cur."from"()
    inc rx487_pos
    rx487_cur."!cursor_from"(rx487_pos)
    ge rx487_pos, rx487_eos, rxscan490_done
  rxscan490_scan:
    set_addr $I10, rxscan490_loop
    rx487_cur."!mark_push"(0, rx487_pos, $I10)
  rxscan490_done:
.annotate 'line', 159
    rx487_cur."!cursor_pos"(rx487_pos)
    find_lex $P491, unicode:"$\x{a2}"
    $P492 = $P491."MATCH"()
    store_lex "$/", $P492
    .const 'Sub' $P494 = "138_1303857426.514" 
    capture_lex $P494
    $P495 = $P494()
  # rx charclass w
    ge rx487_pos, rx487_eos, rx487_fail
    sub $I10, rx487_pos, rx487_off
    is_cclass $I11, 8192, rx487_tgt, $I10
    unless $I11, rx487_fail
    inc rx487_pos
  # rx subrule "panic" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
  # rx pass
    rx487_cur."!cursor_pass"(rx487_pos, "backslash:sym<unrec>")
    if_null rx487_debug, debug_514
    rx487_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx487_pos)
  debug_514:
    .return (rx487_cur)
  rx487_restart:
.annotate 'line', 11
    if_null rx487_debug, debug_515
    rx487_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_515:
  rx487_fail:
    (rx487_rep, rx487_pos, $I10, $P10) = rx487_cur."!mark_fail"(0)
    lt rx487_pos, -1, rx487_done
    eq rx487_pos, -1, rx487_fail
    jump $I10
  rx487_done:
    rx487_cur."!cursor_fail"()
    if_null rx487_debug, debug_516
    rx487_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_516:
    .return (rx487_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1303857426.514") :method
.annotate 'line', 11
    new $P489, "ResizablePMCArray"
    push $P489, ""
    .return ($P489)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block493"  :anon :subid("138_1303857426.514") :outer("136_1303857426.514")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx497_tgt
    .local int rx497_pos
    .local int rx497_off
    .local int rx497_eos
    .local int rx497_rep
    .local pmc rx497_cur
    .local pmc rx497_debug
    (rx497_cur, rx497_pos, rx497_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx497_cur
    .local pmc match
    .lex "$/", match
    length rx497_eos, rx497_tgt
    gt rx497_pos, rx497_eos, rx497_done
    set rx497_off, 0
    lt rx497_pos, 2, rx497_start
    sub rx497_off, rx497_pos, 1
    substr rx497_tgt, rx497_tgt, rx497_off
  rx497_start:
    eq $I10, 1, rx497_restart
    if_null rx497_debug, debug_517
    rx497_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_517:
    $I10 = self.'from'()
    ne $I10, -1, rxscan500_done
    goto rxscan500_scan
  rxscan500_loop:
    (rx497_pos) = rx497_cur."from"()
    inc rx497_pos
    rx497_cur."!cursor_from"(rx497_pos)
    ge rx497_pos, rx497_eos, rxscan500_done
  rxscan500_scan:
    set_addr $I10, rxscan500_loop
    rx497_cur."!mark_push"(0, rx497_pos, $I10)
  rxscan500_done:
.annotate 'line', 160
  # rx charclass W
    ge rx497_pos, rx497_eos, rx497_fail
    sub $I10, rx497_pos, rx497_off
    is_cclass $I11, 8192, rx497_tgt, $I10
    if $I11, rx497_fail
    inc rx497_pos
  # rx pass
    rx497_cur."!cursor_pass"(rx497_pos, "backslash:sym<misc>")
    if_null rx497_debug, debug_518
    rx497_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx497_pos)
  debug_518:
    .return (rx497_cur)
  rx497_restart:
.annotate 'line', 11
    if_null rx497_debug, debug_519
    rx497_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_519:
  rx497_fail:
    (rx497_rep, rx497_pos, $I10, $P10) = rx497_cur."!mark_fail"(0)
    lt rx497_pos, -1, rx497_done
    eq rx497_pos, -1, rx497_fail
    jump $I10
  rx497_done:
    rx497_cur."!cursor_fail"()
    if_null rx497_debug, debug_520
    rx497_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_520:
    .return (rx497_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1303857426.514") :method
.annotate 'line', 11
    new $P499, "ResizablePMCArray"
    push $P499, ""
    .return ($P499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1303857426.514")
    .param pmc param_502
.annotate 'line', 162
    .lex "self", param_502
    $P503 = param_502."!protoregex"("assertion")
    .return ($P503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1303857426.514")
    .param pmc param_505
.annotate 'line', 162
    .lex "self", param_505
    $P506 = param_505."!PREFIX__!protoregex"("assertion")
    .return ($P506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P515 = "145_1303857426.514" 
    capture_lex $P515
    .local string rx508_tgt
    .local int rx508_pos
    .local int rx508_off
    .local int rx508_eos
    .local int rx508_rep
    .local pmc rx508_cur
    .local pmc rx508_debug
    (rx508_cur, rx508_pos, rx508_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx508_cur
    .local pmc match
    .lex "$/", match
    length rx508_eos, rx508_tgt
    gt rx508_pos, rx508_eos, rx508_done
    set rx508_off, 0
    lt rx508_pos, 2, rx508_start
    sub rx508_off, rx508_pos, 1
    substr rx508_tgt, rx508_tgt, rx508_off
  rx508_start:
    eq $I10, 1, rx508_restart
    if_null rx508_debug, debug_521
    rx508_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_521:
    $I10 = self.'from'()
    ne $I10, -1, rxscan512_done
    goto rxscan512_scan
  rxscan512_loop:
    (rx508_pos) = rx508_cur."from"()
    inc rx508_pos
    rx508_cur."!cursor_from"(rx508_pos)
    ge rx508_pos, rx508_eos, rxscan512_done
  rxscan512_scan:
    set_addr $I10, rxscan512_loop
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  rxscan512_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx508_pos, 1
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    ord $I11, rx508_tgt, $I11
    ne $I11, 63, rx508_fail
    add rx508_pos, 1
  alt513_0:
    set_addr $I10, alt513_1
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    .const 'Sub' $P515 = "145_1303857426.514" 
    capture_lex $P515
    $P10 = rx508_cur."before"($P515)
    unless $P10, rx508_fail
    goto alt513_end
  alt513_1:
  # rx subrule "assertion" subtype=capture negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    $P10 = rx508_cur."assertion"()
    unless $P10, rx508_fail
    rx508_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx508_pos = $P10."pos"()
  alt513_end:
  # rx pass
    rx508_cur."!cursor_pass"(rx508_pos, "assertion:sym<?>")
    if_null rx508_debug, debug_526
    rx508_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx508_pos)
  debug_526:
    .return (rx508_cur)
  rx508_restart:
.annotate 'line', 11
    if_null rx508_debug, debug_527
    rx508_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_527:
  rx508_fail:
    (rx508_rep, rx508_pos, $I10, $P10) = rx508_cur."!mark_fail"(0)
    lt rx508_pos, -1, rx508_done
    eq rx508_pos, -1, rx508_fail
    jump $I10
  rx508_done:
    rx508_cur."!cursor_fail"()
    if_null rx508_debug, debug_528
    rx508_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_528:
    .return (rx508_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1303857426.514") :method
.annotate 'line', 11
    $P510 = self."!PREFIX__!subrule"("assertion", "?")
    new $P511, "ResizablePMCArray"
    push $P511, $P510
    push $P511, "?"
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block514"  :anon :subid("145_1303857426.514") :method :outer("143_1303857426.514")
.annotate 'line', 164
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    .local pmc rx516_debug
    (rx516_cur, rx516_pos, rx516_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx516_cur
    .local pmc match
    .lex "$/", match
    length rx516_eos, rx516_tgt
    gt rx516_pos, rx516_eos, rx516_done
    set rx516_off, 0
    lt rx516_pos, 2, rx516_start
    sub rx516_off, rx516_pos, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
    eq $I10, 1, rx516_restart
    if_null rx516_debug, debug_522
    rx516_cur."!cursor_debug"("START", "")
  debug_522:
    $I10 = self.'from'()
    ne $I10, -1, rxscan517_done
    goto rxscan517_scan
  rxscan517_loop:
    (rx516_pos) = rx516_cur."from"()
    inc rx516_pos
    rx516_cur."!cursor_from"(rx516_pos)
    ge rx516_pos, rx516_eos, rxscan517_done
  rxscan517_scan:
    set_addr $I10, rxscan517_loop
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  rxscan517_done:
  # rx literal  ">"
    add $I11, rx516_pos, 1
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    ord $I11, rx516_tgt, $I11
    ne $I11, 62, rx516_fail
    add rx516_pos, 1
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "")
    if_null rx516_debug, debug_523
    rx516_cur."!cursor_debug"("PASS", "", " at pos=", rx516_pos)
  debug_523:
    .return (rx516_cur)
  rx516_restart:
    if_null rx516_debug, debug_524
    rx516_cur."!cursor_debug"("NEXT", "")
  debug_524:
  rx516_fail:
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    if_null rx516_debug, debug_525
    rx516_cur."!cursor_debug"("FAIL", "")
  debug_525:
    .return (rx516_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("146_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P526 = "148_1303857426.514" 
    capture_lex $P526
    .local string rx519_tgt
    .local int rx519_pos
    .local int rx519_off
    .local int rx519_eos
    .local int rx519_rep
    .local pmc rx519_cur
    .local pmc rx519_debug
    (rx519_cur, rx519_pos, rx519_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx519_cur
    .local pmc match
    .lex "$/", match
    length rx519_eos, rx519_tgt
    gt rx519_pos, rx519_eos, rx519_done
    set rx519_off, 0
    lt rx519_pos, 2, rx519_start
    sub rx519_off, rx519_pos, 1
    substr rx519_tgt, rx519_tgt, rx519_off
  rx519_start:
    eq $I10, 1, rx519_restart
    if_null rx519_debug, debug_529
    rx519_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_529:
    $I10 = self.'from'()
    ne $I10, -1, rxscan523_done
    goto rxscan523_scan
  rxscan523_loop:
    (rx519_pos) = rx519_cur."from"()
    inc rx519_pos
    rx519_cur."!cursor_from"(rx519_pos)
    ge rx519_pos, rx519_eos, rxscan523_done
  rxscan523_scan:
    set_addr $I10, rxscan523_loop
    rx519_cur."!mark_push"(0, rx519_pos, $I10)
  rxscan523_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx519_pos, 1
    gt $I11, rx519_eos, rx519_fail
    sub $I11, rx519_pos, rx519_off
    ord $I11, rx519_tgt, $I11
    ne $I11, 33, rx519_fail
    add rx519_pos, 1
  alt524_0:
    set_addr $I10, alt524_1
    rx519_cur."!mark_push"(0, rx519_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx519_cur."!cursor_pos"(rx519_pos)
    .const 'Sub' $P526 = "148_1303857426.514" 
    capture_lex $P526
    $P10 = rx519_cur."before"($P526)
    unless $P10, rx519_fail
    goto alt524_end
  alt524_1:
  # rx subrule "assertion" subtype=capture negate=
    rx519_cur."!cursor_pos"(rx519_pos)
    $P10 = rx519_cur."assertion"()
    unless $P10, rx519_fail
    rx519_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx519_pos = $P10."pos"()
  alt524_end:
  # rx pass
    rx519_cur."!cursor_pass"(rx519_pos, "assertion:sym<!>")
    if_null rx519_debug, debug_534
    rx519_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx519_pos)
  debug_534:
    .return (rx519_cur)
  rx519_restart:
.annotate 'line', 11
    if_null rx519_debug, debug_535
    rx519_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_535:
  rx519_fail:
    (rx519_rep, rx519_pos, $I10, $P10) = rx519_cur."!mark_fail"(0)
    lt rx519_pos, -1, rx519_done
    eq rx519_pos, -1, rx519_fail
    jump $I10
  rx519_done:
    rx519_cur."!cursor_fail"()
    if_null rx519_debug, debug_536
    rx519_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_536:
    .return (rx519_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1303857426.514") :method
.annotate 'line', 11
    $P521 = self."!PREFIX__!subrule"("assertion", "!")
    new $P522, "ResizablePMCArray"
    push $P522, $P521
    push $P522, "!"
    .return ($P522)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block525"  :anon :subid("148_1303857426.514") :method :outer("146_1303857426.514")
.annotate 'line', 165
    .local string rx527_tgt
    .local int rx527_pos
    .local int rx527_off
    .local int rx527_eos
    .local int rx527_rep
    .local pmc rx527_cur
    .local pmc rx527_debug
    (rx527_cur, rx527_pos, rx527_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx527_cur
    .local pmc match
    .lex "$/", match
    length rx527_eos, rx527_tgt
    gt rx527_pos, rx527_eos, rx527_done
    set rx527_off, 0
    lt rx527_pos, 2, rx527_start
    sub rx527_off, rx527_pos, 1
    substr rx527_tgt, rx527_tgt, rx527_off
  rx527_start:
    eq $I10, 1, rx527_restart
    if_null rx527_debug, debug_530
    rx527_cur."!cursor_debug"("START", "")
  debug_530:
    $I10 = self.'from'()
    ne $I10, -1, rxscan528_done
    goto rxscan528_scan
  rxscan528_loop:
    (rx527_pos) = rx527_cur."from"()
    inc rx527_pos
    rx527_cur."!cursor_from"(rx527_pos)
    ge rx527_pos, rx527_eos, rxscan528_done
  rxscan528_scan:
    set_addr $I10, rxscan528_loop
    rx527_cur."!mark_push"(0, rx527_pos, $I10)
  rxscan528_done:
  # rx literal  ">"
    add $I11, rx527_pos, 1
    gt $I11, rx527_eos, rx527_fail
    sub $I11, rx527_pos, rx527_off
    ord $I11, rx527_tgt, $I11
    ne $I11, 62, rx527_fail
    add rx527_pos, 1
  # rx pass
    rx527_cur."!cursor_pass"(rx527_pos, "")
    if_null rx527_debug, debug_531
    rx527_cur."!cursor_debug"("PASS", "", " at pos=", rx527_pos)
  debug_531:
    .return (rx527_cur)
  rx527_restart:
    if_null rx527_debug, debug_532
    rx527_cur."!cursor_debug"("NEXT", "")
  debug_532:
  rx527_fail:
    (rx527_rep, rx527_pos, $I10, $P10) = rx527_cur."!mark_fail"(0)
    lt rx527_pos, -1, rx527_done
    eq rx527_pos, -1, rx527_fail
    jump $I10
  rx527_done:
    rx527_cur."!cursor_fail"()
    if_null rx527_debug, debug_533
    rx527_cur."!cursor_debug"("FAIL", "")
  debug_533:
    .return (rx527_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("149_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    .local pmc rx530_debug
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    gt rx530_pos, rx530_eos, rx530_done
    set rx530_off, 0
    lt rx530_pos, 2, rx530_start
    sub rx530_off, rx530_pos, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
    eq $I10, 1, rx530_restart
    if_null rx530_debug, debug_537
    rx530_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_537:
    $I10 = self.'from'()
    ne $I10, -1, rxscan534_done
    goto rxscan534_scan
  rxscan534_loop:
    (rx530_pos) = rx530_cur."from"()
    inc rx530_pos
    rx530_cur."!cursor_from"(rx530_pos)
    ge rx530_pos, rx530_eos, rxscan534_done
  rxscan534_scan:
    set_addr $I10, rxscan534_loop
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
  rxscan534_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx530_pos, 1
    gt $I11, rx530_eos, rx530_fail
    sub $I11, rx530_pos, rx530_off
    ord $I11, rx530_tgt, $I11
    ne $I11, 46, rx530_fail
    add rx530_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."assertion"()
    unless $P10, rx530_fail
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx530_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "assertion:sym<method>")
    if_null rx530_debug, debug_538
    rx530_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx530_pos)
  debug_538:
    .return (rx530_cur)
  rx530_restart:
.annotate 'line', 11
    if_null rx530_debug, debug_539
    rx530_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_539:
  rx530_fail:
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    if_null rx530_debug, debug_540
    rx530_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_540:
    .return (rx530_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1303857426.514") :method
.annotate 'line', 11
    $P532 = self."!PREFIX__!subrule"("assertion", ".")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P544 = "153_1303857426.514" 
    capture_lex $P544
    .local string rx536_tgt
    .local int rx536_pos
    .local int rx536_off
    .local int rx536_eos
    .local int rx536_rep
    .local pmc rx536_cur
    .local pmc rx536_debug
    (rx536_cur, rx536_pos, rx536_tgt, $I10) = self."!cursor_start"()
    rx536_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx536_cur
    .local pmc match
    .lex "$/", match
    length rx536_eos, rx536_tgt
    gt rx536_pos, rx536_eos, rx536_done
    set rx536_off, 0
    lt rx536_pos, 2, rx536_start
    sub rx536_off, rx536_pos, 1
    substr rx536_tgt, rx536_tgt, rx536_off
  rx536_start:
    eq $I10, 1, rx536_restart
    if_null rx536_debug, debug_541
    rx536_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_541:
    $I10 = self.'from'()
    ne $I10, -1, rxscan540_done
    goto rxscan540_scan
  rxscan540_loop:
    (rx536_pos) = rx536_cur."from"()
    inc rx536_pos
    rx536_cur."!cursor_from"(rx536_pos)
    ge rx536_pos, rx536_eos, rxscan540_done
  rxscan540_scan:
    set_addr $I10, rxscan540_loop
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxscan540_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."identifier"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx536_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr541 ** 0..1
    set_addr $I10, rxquantr541_done
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxquantr541_loop:
  alt542_0:
.annotate 'line', 173
    set_addr $I10, alt542_1
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    .const 'Sub' $P544 = "153_1303857426.514" 
    capture_lex $P544
    $P10 = rx536_cur."before"($P544)
    unless $P10, rx536_fail
    goto alt542_end
  alt542_1:
    set_addr $I10, alt542_2
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 61, rx536_fail
    add rx536_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."assertion"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx536_pos = $P10."pos"()
    goto alt542_end
  alt542_2:
    set_addr $I10, alt542_3
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 58, rx536_fail
    add rx536_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."arglist"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx536_pos = $P10."pos"()
    goto alt542_end
  alt542_3:
    set_addr $I10, alt542_4
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 40, rx536_fail
    add rx536_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."arglist"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx536_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 41, rx536_fail
    add rx536_pos, 1
    goto alt542_end
  alt542_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."normspace"()
    unless $P10, rx536_fail
    rx536_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."nibbler"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx536_pos = $P10."pos"()
  alt542_end:
.annotate 'line', 179
    set_addr $I10, rxquantr541_done
    (rx536_rep) = rx536_cur."!mark_commit"($I10)
  rxquantr541_done:
.annotate 'line', 171
  # rx pass
    rx536_cur."!cursor_pass"(rx536_pos, "assertion:sym<name>")
    if_null rx536_debug, debug_546
    rx536_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx536_pos)
  debug_546:
    .return (rx536_cur)
  rx536_restart:
.annotate 'line', 11
    if_null rx536_debug, debug_547
    rx536_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_547:
  rx536_fail:
    (rx536_rep, rx536_pos, $I10, $P10) = rx536_cur."!mark_fail"(0)
    lt rx536_pos, -1, rx536_done
    eq rx536_pos, -1, rx536_fail
    jump $I10
  rx536_done:
    rx536_cur."!cursor_fail"()
    if_null rx536_debug, debug_548
    rx536_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_548:
    .return (rx536_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1303857426.514") :method
.annotate 'line', 11
    $P538 = self."!PREFIX__!subrule"("identifier", "")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    .return ($P539)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block543"  :anon :subid("153_1303857426.514") :method :outer("151_1303857426.514")
.annotate 'line', 174
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    .local pmc rx545_debug
    (rx545_cur, rx545_pos, rx545_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx545_cur
    .local pmc match
    .lex "$/", match
    length rx545_eos, rx545_tgt
    gt rx545_pos, rx545_eos, rx545_done
    set rx545_off, 0
    lt rx545_pos, 2, rx545_start
    sub rx545_off, rx545_pos, 1
    substr rx545_tgt, rx545_tgt, rx545_off
  rx545_start:
    eq $I10, 1, rx545_restart
    if_null rx545_debug, debug_542
    rx545_cur."!cursor_debug"("START", "")
  debug_542:
    $I10 = self.'from'()
    ne $I10, -1, rxscan546_done
    goto rxscan546_scan
  rxscan546_loop:
    (rx545_pos) = rx545_cur."from"()
    inc rx545_pos
    rx545_cur."!cursor_from"(rx545_pos)
    ge rx545_pos, rx545_eos, rxscan546_done
  rxscan546_scan:
    set_addr $I10, rxscan546_loop
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxscan546_done:
  # rx literal  ">"
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 62, rx545_fail
    add rx545_pos, 1
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "")
    if_null rx545_debug, debug_543
    rx545_cur."!cursor_debug"("PASS", "", " at pos=", rx545_pos)
  debug_543:
    .return (rx545_cur)
  rx545_restart:
    if_null rx545_debug, debug_544
    rx545_cur."!cursor_debug"("NEXT", "")
  debug_544:
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    if_null rx545_debug, debug_545
    rx545_cur."!cursor_debug"("FAIL", "")
  debug_545:
    .return (rx545_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("154_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P553 = "156_1303857426.514" 
    capture_lex $P553
    .local string rx548_tgt
    .local int rx548_pos
    .local int rx548_off
    .local int rx548_eos
    .local int rx548_rep
    .local pmc rx548_cur
    .local pmc rx548_debug
    (rx548_cur, rx548_pos, rx548_tgt, $I10) = self."!cursor_start"()
    rx548_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx548_cur
    .local pmc match
    .lex "$/", match
    length rx548_eos, rx548_tgt
    gt rx548_pos, rx548_eos, rx548_done
    set rx548_off, 0
    lt rx548_pos, 2, rx548_start
    sub rx548_off, rx548_pos, 1
    substr rx548_tgt, rx548_tgt, rx548_off
  rx548_start:
    eq $I10, 1, rx548_restart
    if_null rx548_debug, debug_549
    rx548_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_549:
    $I10 = self.'from'()
    ne $I10, -1, rxscan551_done
    goto rxscan551_scan
  rxscan551_loop:
    (rx548_pos) = rx548_cur."from"()
    inc rx548_pos
    rx548_cur."!cursor_from"(rx548_pos)
    ge rx548_pos, rx548_eos, rxscan551_done
  rxscan551_scan:
    set_addr $I10, rxscan551_loop
    rx548_cur."!mark_push"(0, rx548_pos, $I10)
  rxscan551_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx548_cur."!cursor_pos"(rx548_pos)
    .const 'Sub' $P553 = "156_1303857426.514" 
    capture_lex $P553
    $P10 = rx548_cur."before"($P553)
    unless $P10, rx548_fail
  # rx rxquantr557 ** 1..*
    set_addr $I10, rxquantr557_done
    rx548_cur."!mark_push"(0, -1, $I10)
  rxquantr557_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx548_cur."!cursor_pos"(rx548_pos)
    $P10 = rx548_cur."cclass_elem"()
    unless $P10, rx548_fail
    goto rxsubrule558_pass
  rxsubrule558_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx548_fail
  rxsubrule558_pass:
    set_addr $I10, rxsubrule558_back
    rx548_cur."!mark_push"(0, rx548_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx548_pos = $P10."pos"()
    set_addr $I10, rxquantr557_done
    (rx548_rep) = rx548_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr557_done
    rx548_cur."!mark_push"(rx548_rep, rx548_pos, $I10)
    goto rxquantr557_loop
  rxquantr557_done:
  # rx pass
    rx548_cur."!cursor_pass"(rx548_pos, "assertion:sym<[>")
    if_null rx548_debug, debug_554
    rx548_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx548_pos)
  debug_554:
    .return (rx548_cur)
  rx548_restart:
.annotate 'line', 11
    if_null rx548_debug, debug_555
    rx548_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_555:
  rx548_fail:
    (rx548_rep, rx548_pos, $I10, $P10) = rx548_cur."!mark_fail"(0)
    lt rx548_pos, -1, rx548_done
    eq rx548_pos, -1, rx548_fail
    jump $I10
  rx548_done:
    rx548_cur."!cursor_fail"()
    if_null rx548_debug, debug_556
    rx548_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_556:
    .return (rx548_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1303857426.514") :method
.annotate 'line', 11
    new $P550, "ResizablePMCArray"
    push $P550, ""
    .return ($P550)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block552"  :anon :subid("156_1303857426.514") :method :outer("154_1303857426.514")
.annotate 'line', 182
    .local string rx554_tgt
    .local int rx554_pos
    .local int rx554_off
    .local int rx554_eos
    .local int rx554_rep
    .local pmc rx554_cur
    .local pmc rx554_debug
    (rx554_cur, rx554_pos, rx554_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx554_cur
    .local pmc match
    .lex "$/", match
    length rx554_eos, rx554_tgt
    gt rx554_pos, rx554_eos, rx554_done
    set rx554_off, 0
    lt rx554_pos, 2, rx554_start
    sub rx554_off, rx554_pos, 1
    substr rx554_tgt, rx554_tgt, rx554_off
  rx554_start:
    eq $I10, 1, rx554_restart
    if_null rx554_debug, debug_550
    rx554_cur."!cursor_debug"("START", "")
  debug_550:
    $I10 = self.'from'()
    ne $I10, -1, rxscan555_done
    goto rxscan555_scan
  rxscan555_loop:
    (rx554_pos) = rx554_cur."from"()
    inc rx554_pos
    rx554_cur."!cursor_from"(rx554_pos)
    ge rx554_pos, rx554_eos, rxscan555_done
  rxscan555_scan:
    set_addr $I10, rxscan555_loop
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  rxscan555_done:
  alt556_0:
    set_addr $I10, alt556_1
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  # rx literal  "["
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 91, rx554_fail
    add rx554_pos, 1
    goto alt556_end
  alt556_1:
    set_addr $I10, alt556_2
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  # rx literal  "+"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 43, rx554_fail
    add rx554_pos, 1
    goto alt556_end
  alt556_2:
  # rx literal  "-"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 45, rx554_fail
    add rx554_pos, 1
  alt556_end:
  # rx pass
    rx554_cur."!cursor_pass"(rx554_pos, "")
    if_null rx554_debug, debug_551
    rx554_cur."!cursor_debug"("PASS", "", " at pos=", rx554_pos)
  debug_551:
    .return (rx554_cur)
  rx554_restart:
    if_null rx554_debug, debug_552
    rx554_cur."!cursor_debug"("NEXT", "")
  debug_552:
  rx554_fail:
    (rx554_rep, rx554_pos, $I10, $P10) = rx554_cur."!mark_fail"(0)
    lt rx554_pos, -1, rx554_done
    eq rx554_pos, -1, rx554_fail
    jump $I10
  rx554_done:
    rx554_cur."!cursor_fail"()
    if_null rx554_debug, debug_553
    rx554_cur."!cursor_debug"("FAIL", "")
  debug_553:
    .return (rx554_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("157_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P571 = "159_1303857426.514" 
    capture_lex $P571
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    .local pmc rx560_debug
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    rx560_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx560_cur
    .local pmc match
    .lex "$/", match
    length rx560_eos, rx560_tgt
    gt rx560_pos, rx560_eos, rx560_done
    set rx560_off, 0
    lt rx560_pos, 2, rx560_start
    sub rx560_off, rx560_pos, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
    eq $I10, 1, rx560_restart
    if_null rx560_debug, debug_557
    rx560_cur."!cursor_debug"("START", "cclass_elem")
  debug_557:
    $I10 = self.'from'()
    ne $I10, -1, rxscan563_done
    goto rxscan563_scan
  rxscan563_loop:
    (rx560_pos) = rx560_cur."from"()
    inc rx560_pos
    rx560_cur."!cursor_from"(rx560_pos)
    ge rx560_pos, rx560_eos, rxscan563_done
  rxscan563_scan:
    set_addr $I10, rxscan563_loop
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxscan563_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_565_fail
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  alt564_0:
    set_addr $I10, alt564_1
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx literal  "+"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 43, rx560_fail
    add rx560_pos, 1
    goto alt564_end
  alt564_1:
    set_addr $I10, alt564_2
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx literal  "-"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 45, rx560_fail
    add rx560_pos, 1
    goto alt564_end
  alt564_2:
  alt564_end:
    set_addr $I10, rxcap_565_fail
    ($I12, $I11) = rx560_cur."!mark_peek"($I10)
    rx560_cur."!cursor_pos"($I11)
    ($P10) = rx560_cur."!cursor_start"()
    $P10."!cursor_pass"(rx560_pos, "")
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_565_done
  rxcap_565_fail:
    goto rx560_fail
  rxcap_565_done:
.annotate 'line', 186
  # rx rxquantr566 ** 0..1
    set_addr $I10, rxquantr566_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr566_loop:
  # rx subrule "normspace" subtype=method negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."normspace"()
    unless $P10, rx560_fail
    goto rxsubrule567_pass
  rxsubrule567_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule567_pass:
    set_addr $I10, rxsubrule567_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    rx560_pos = $P10."pos"()
    set_addr $I10, rxquantr566_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
  rxquantr566_done:
  alt568_0:
.annotate 'line', 187
    set_addr $I10, alt568_1
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 91, rx560_fail
    add rx560_pos, 1
.annotate 'line', 191
  # rx rxquantr569 ** 0..*
    set_addr $I10, rxquantr569_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr569_loop:
.annotate 'line', 188
  # rx subrule $P571 subtype=capture negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    .const 'Sub' $P571 = "159_1303857426.514" 
    capture_lex $P571
    $P10 = rx560_cur.$P571()
    unless $P10, rx560_fail
    goto rxsubrule589_pass
  rxsubrule589_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule589_pass:
    set_addr $I10, rxsubrule589_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx560_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr569_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr569_done
    rx560_cur."!mark_push"(rx560_rep, rx560_pos, $I10)
    goto rxquantr569_loop
  rxquantr569_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx560_pos, rx560_off
    find_not_cclass $I11, 32, rx560_tgt, $I10, rx560_eos
    add rx560_pos, rx560_off, $I11
  # rx literal  "]"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 93, rx560_fail
    add rx560_pos, 1
.annotate 'line', 188
    goto alt568_end
  alt568_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_590_fail
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx560_pos, rx560_off
    find_not_cclass $I11, 8192, rx560_tgt, $I10, rx560_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx560_fail
    add rx560_pos, rx560_off, $I11
    set_addr $I10, rxcap_590_fail
    ($I12, $I11) = rx560_cur."!mark_peek"($I10)
    rx560_cur."!cursor_pos"($I11)
    ($P10) = rx560_cur."!cursor_start"()
    $P10."!cursor_pass"(rx560_pos, "")
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_590_done
  rxcap_590_fail:
    goto rx560_fail
  rxcap_590_done:
  alt568_end:
.annotate 'line', 195
  # rx rxquantr591 ** 0..1
    set_addr $I10, rxquantr591_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr591_loop:
  # rx subrule "normspace" subtype=method negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."normspace"()
    unless $P10, rx560_fail
    goto rxsubrule592_pass
  rxsubrule592_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule592_pass:
    set_addr $I10, rxsubrule592_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    rx560_pos = $P10."pos"()
    set_addr $I10, rxquantr591_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
  rxquantr591_done:
.annotate 'line', 184
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "cclass_elem")
    if_null rx560_debug, debug_574
    rx560_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx560_pos)
  debug_574:
    .return (rx560_cur)
  rx560_restart:
.annotate 'line', 11
    if_null rx560_debug, debug_575
    rx560_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_575:
  rx560_fail:
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    if_null rx560_debug, debug_576
    rx560_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_576:
    .return (rx560_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1303857426.514") :method
.annotate 'line', 11
    new $P562, "ResizablePMCArray"
    push $P562, ""
    push $P562, "-"
    push $P562, "+"
    .return ($P562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block570"  :anon :subid("159_1303857426.514") :method :outer("157_1303857426.514")
.annotate 'line', 188
    .const 'Sub' $P586 = "162_1303857426.514" 
    capture_lex $P586
    .const 'Sub' $P581 = "161_1303857426.514" 
    capture_lex $P581
    .const 'Sub' $P577 = "160_1303857426.514" 
    capture_lex $P577
    .local string rx572_tgt
    .local int rx572_pos
    .local int rx572_off
    .local int rx572_eos
    .local int rx572_rep
    .local pmc rx572_cur
    .local pmc rx572_debug
    (rx572_cur, rx572_pos, rx572_tgt, $I10) = self."!cursor_start"()
    rx572_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx572_cur
    .local pmc match
    .lex "$/", match
    length rx572_eos, rx572_tgt
    gt rx572_pos, rx572_eos, rx572_done
    set rx572_off, 0
    lt rx572_pos, 2, rx572_start
    sub rx572_off, rx572_pos, 1
    substr rx572_tgt, rx572_tgt, rx572_off
  rx572_start:
    eq $I10, 1, rx572_restart
    if_null rx572_debug, debug_558
    rx572_cur."!cursor_debug"("START", "")
  debug_558:
    $I10 = self.'from'()
    ne $I10, -1, rxscan573_done
    goto rxscan573_scan
  rxscan573_loop:
    (rx572_pos) = rx572_cur."from"()
    inc rx572_pos
    rx572_cur."!cursor_from"(rx572_pos)
    ge rx572_pos, rx572_eos, rxscan573_done
  rxscan573_scan:
    set_addr $I10, rxscan573_loop
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  rxscan573_done:
  alt574_0:
    set_addr $I10, alt574_1
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx literal  "-"
    add $I11, rx572_pos, 1
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    ord $I11, rx572_tgt, $I11
    ne $I11, 45, rx572_fail
    add rx572_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    $P10 = rx572_cur."obs"("- as character range", "..")
    unless $P10, rx572_fail
    rx572_pos = $P10."pos"()
    goto alt574_end
  alt574_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  alt575_0:
    set_addr $I10, alt575_1
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  # rx literal  "\\"
    add $I11, rx572_pos, 1
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    ord $I11, rx572_tgt, $I11
    ne $I11, 92, rx572_fail
    add rx572_pos, 1
  # rx subrule $P577 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P577 = "160_1303857426.514" 
    capture_lex $P577
    $P10 = rx572_cur.$P577()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx572_pos = $P10."pos"()
    goto alt575_end
  alt575_1:
  # rx subrule $P581 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P581 = "161_1303857426.514" 
    capture_lex $P581
    $P10 = rx572_cur.$P581()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx572_pos = $P10."pos"()
  alt575_end:
  # rx rxquantr584 ** 0..1
    set_addr $I10, rxquantr584_done
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  rxquantr584_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx literal  ".."
    add $I11, rx572_pos, 2
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    substr $S10, rx572_tgt, $I11, 2
    ne $S10, "..", rx572_fail
    add rx572_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx subrule $P586 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P586 = "162_1303857426.514" 
    capture_lex $P586
    $P10 = rx572_cur.$P586()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx572_pos = $P10."pos"()
    set_addr $I10, rxquantr584_done
    (rx572_rep) = rx572_cur."!mark_commit"($I10)
  rxquantr584_done:
  alt574_end:
.annotate 'line', 188
  # rx pass
    rx572_cur."!cursor_pass"(rx572_pos, "")
    if_null rx572_debug, debug_571
    rx572_cur."!cursor_debug"("PASS", "", " at pos=", rx572_pos)
  debug_571:
    .return (rx572_cur)
  rx572_restart:
    if_null rx572_debug, debug_572
    rx572_cur."!cursor_debug"("NEXT", "")
  debug_572:
  rx572_fail:
    (rx572_rep, rx572_pos, $I10, $P10) = rx572_cur."!mark_fail"(0)
    lt rx572_pos, -1, rx572_done
    eq rx572_pos, -1, rx572_fail
    jump $I10
  rx572_done:
    rx572_cur."!cursor_fail"()
    if_null rx572_debug, debug_573
    rx572_cur."!cursor_debug"("FAIL", "")
  debug_573:
    .return (rx572_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block576"  :anon :subid("160_1303857426.514") :method :outer("159_1303857426.514")
.annotate 'line', 190
    .local string rx578_tgt
    .local int rx578_pos
    .local int rx578_off
    .local int rx578_eos
    .local int rx578_rep
    .local pmc rx578_cur
    .local pmc rx578_debug
    (rx578_cur, rx578_pos, rx578_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx578_cur
    .local pmc match
    .lex "$/", match
    length rx578_eos, rx578_tgt
    gt rx578_pos, rx578_eos, rx578_done
    set rx578_off, 0
    lt rx578_pos, 2, rx578_start
    sub rx578_off, rx578_pos, 1
    substr rx578_tgt, rx578_tgt, rx578_off
  rx578_start:
    eq $I10, 1, rx578_restart
    if_null rx578_debug, debug_559
    rx578_cur."!cursor_debug"("START", "")
  debug_559:
    $I10 = self.'from'()
    ne $I10, -1, rxscan579_done
    goto rxscan579_scan
  rxscan579_loop:
    (rx578_pos) = rx578_cur."from"()
    inc rx578_pos
    rx578_cur."!cursor_from"(rx578_pos)
    ge rx578_pos, rx578_eos, rxscan579_done
  rxscan579_scan:
    set_addr $I10, rxscan579_loop
    rx578_cur."!mark_push"(0, rx578_pos, $I10)
  rxscan579_done:
  # rx charclass .
    ge rx578_pos, rx578_eos, rx578_fail
    inc rx578_pos
  # rx pass
    rx578_cur."!cursor_pass"(rx578_pos, "")
    if_null rx578_debug, debug_560
    rx578_cur."!cursor_debug"("PASS", "", " at pos=", rx578_pos)
  debug_560:
    .return (rx578_cur)
  rx578_restart:
    if_null rx578_debug, debug_561
    rx578_cur."!cursor_debug"("NEXT", "")
  debug_561:
  rx578_fail:
    (rx578_rep, rx578_pos, $I10, $P10) = rx578_cur."!mark_fail"(0)
    lt rx578_pos, -1, rx578_done
    eq rx578_pos, -1, rx578_fail
    jump $I10
  rx578_done:
    rx578_cur."!cursor_fail"()
    if_null rx578_debug, debug_562
    rx578_cur."!cursor_debug"("FAIL", "")
  debug_562:
    .return (rx578_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block580"  :anon :subid("161_1303857426.514") :method :outer("159_1303857426.514")
.annotate 'line', 190
    .local string rx582_tgt
    .local int rx582_pos
    .local int rx582_off
    .local int rx582_eos
    .local int rx582_rep
    .local pmc rx582_cur
    .local pmc rx582_debug
    (rx582_cur, rx582_pos, rx582_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx582_cur
    .local pmc match
    .lex "$/", match
    length rx582_eos, rx582_tgt
    gt rx582_pos, rx582_eos, rx582_done
    set rx582_off, 0
    lt rx582_pos, 2, rx582_start
    sub rx582_off, rx582_pos, 1
    substr rx582_tgt, rx582_tgt, rx582_off
  rx582_start:
    eq $I10, 1, rx582_restart
    if_null rx582_debug, debug_563
    rx582_cur."!cursor_debug"("START", "")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan583_done
    goto rxscan583_scan
  rxscan583_loop:
    (rx582_pos) = rx582_cur."from"()
    inc rx582_pos
    rx582_cur."!cursor_from"(rx582_pos)
    ge rx582_pos, rx582_eos, rxscan583_done
  rxscan583_scan:
    set_addr $I10, rxscan583_loop
    rx582_cur."!mark_push"(0, rx582_pos, $I10)
  rxscan583_done:
  # rx enumcharlist negate=1 
    ge rx582_pos, rx582_eos, rx582_fail
    sub $I10, rx582_pos, rx582_off
    substr $S10, rx582_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx582_fail
    inc rx582_pos
  # rx pass
    rx582_cur."!cursor_pass"(rx582_pos, "")
    if_null rx582_debug, debug_564
    rx582_cur."!cursor_debug"("PASS", "", " at pos=", rx582_pos)
  debug_564:
    .return (rx582_cur)
  rx582_restart:
    if_null rx582_debug, debug_565
    rx582_cur."!cursor_debug"("NEXT", "")
  debug_565:
  rx582_fail:
    (rx582_rep, rx582_pos, $I10, $P10) = rx582_cur."!mark_fail"(0)
    lt rx582_pos, -1, rx582_done
    eq rx582_pos, -1, rx582_fail
    jump $I10
  rx582_done:
    rx582_cur."!cursor_fail"()
    if_null rx582_debug, debug_566
    rx582_cur."!cursor_debug"("FAIL", "")
  debug_566:
    .return (rx582_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block585"  :anon :subid("162_1303857426.514") :method :outer("159_1303857426.514")
.annotate 'line', 190
    .local string rx587_tgt
    .local int rx587_pos
    .local int rx587_off
    .local int rx587_eos
    .local int rx587_rep
    .local pmc rx587_cur
    .local pmc rx587_debug
    (rx587_cur, rx587_pos, rx587_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx587_cur
    .local pmc match
    .lex "$/", match
    length rx587_eos, rx587_tgt
    gt rx587_pos, rx587_eos, rx587_done
    set rx587_off, 0
    lt rx587_pos, 2, rx587_start
    sub rx587_off, rx587_pos, 1
    substr rx587_tgt, rx587_tgt, rx587_off
  rx587_start:
    eq $I10, 1, rx587_restart
    if_null rx587_debug, debug_567
    rx587_cur."!cursor_debug"("START", "")
  debug_567:
    $I10 = self.'from'()
    ne $I10, -1, rxscan588_done
    goto rxscan588_scan
  rxscan588_loop:
    (rx587_pos) = rx587_cur."from"()
    inc rx587_pos
    rx587_cur."!cursor_from"(rx587_pos)
    ge rx587_pos, rx587_eos, rxscan588_done
  rxscan588_scan:
    set_addr $I10, rxscan588_loop
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  rxscan588_done:
  # rx charclass .
    ge rx587_pos, rx587_eos, rx587_fail
    inc rx587_pos
  # rx pass
    rx587_cur."!cursor_pass"(rx587_pos, "")
    if_null rx587_debug, debug_568
    rx587_cur."!cursor_debug"("PASS", "", " at pos=", rx587_pos)
  debug_568:
    .return (rx587_cur)
  rx587_restart:
    if_null rx587_debug, debug_569
    rx587_cur."!cursor_debug"("NEXT", "")
  debug_569:
  rx587_fail:
    (rx587_rep, rx587_pos, $I10, $P10) = rx587_cur."!mark_fail"(0)
    lt rx587_pos, -1, rx587_done
    eq rx587_pos, -1, rx587_fail
    jump $I10
  rx587_done:
    rx587_cur."!cursor_fail"()
    if_null rx587_debug, debug_570
    rx587_cur."!cursor_debug"("FAIL", "")
  debug_570:
    .return (rx587_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("163_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .const 'Sub' $P602 = "165_1303857426.514" 
    capture_lex $P602
    .local string rx594_tgt
    .local int rx594_pos
    .local int rx594_off
    .local int rx594_eos
    .local int rx594_rep
    .local pmc rx594_cur
    .local pmc rx594_debug
    (rx594_cur, rx594_pos, rx594_tgt, $I10) = self."!cursor_start"()
    rx594_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx594_cur
    .local pmc match
    .lex "$/", match
    length rx594_eos, rx594_tgt
    gt rx594_pos, rx594_eos, rx594_done
    set rx594_off, 0
    lt rx594_pos, 2, rx594_start
    sub rx594_off, rx594_pos, 1
    substr rx594_tgt, rx594_tgt, rx594_off
  rx594_start:
    eq $I10, 1, rx594_restart
    if_null rx594_debug, debug_577
    rx594_cur."!cursor_debug"("START", "mod_internal")
  debug_577:
    $I10 = self.'from'()
    ne $I10, -1, rxscan598_done
    goto rxscan598_scan
  rxscan598_loop:
    (rx594_pos) = rx594_cur."from"()
    inc rx594_pos
    rx594_cur."!cursor_from"(rx594_pos)
    ge rx594_pos, rx594_eos, rxscan598_done
  rxscan598_scan:
    set_addr $I10, rxscan598_loop
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxscan598_done:
  alt599_0:
.annotate 'line', 199
    set_addr $I10, alt599_1
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 58, rx594_fail
    add rx594_pos, 1
  # rx rxquantr600 ** 1..1
    set_addr $I10, rxquantr600_done
    rx594_cur."!mark_push"(0, -1, $I10)
  rxquantr600_loop:
  # rx subrule $P602 subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    .const 'Sub' $P602 = "165_1303857426.514" 
    capture_lex $P602
    $P10 = rx594_cur.$P602()
    unless $P10, rx594_fail
    goto rxsubrule606_pass
  rxsubrule606_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx594_fail
  rxsubrule606_pass:
    set_addr $I10, rxsubrule606_back
    rx594_cur."!mark_push"(0, rx594_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx594_pos = $P10."pos"()
    set_addr $I10, rxquantr600_done
    (rx594_rep) = rx594_cur."!mark_commit"($I10)
  rxquantr600_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."mod_ident"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx594_pos = $P10."pos"()
  # rxanchor rwb
    le rx594_pos, 0, rx594_fail
    sub $I10, rx594_pos, rx594_off
    is_cclass $I11, 8192, rx594_tgt, $I10
    if $I11, rx594_fail
    dec $I10
    is_cclass $I11, 8192, rx594_tgt, $I10
    unless $I11, rx594_fail
    goto alt599_end
  alt599_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 58, rx594_fail
    add rx594_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."mod_ident"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx594_pos = $P10."pos"()
  # rx rxquantr607 ** 0..1
    set_addr $I10, rxquantr607_done
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxquantr607_loop:
  # rx literal  "("
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 40, rx594_fail
    add rx594_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_608_fail
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx594_pos, rx594_off
    find_not_cclass $I11, 8, rx594_tgt, $I10, rx594_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx594_fail
    add rx594_pos, rx594_off, $I11
    set_addr $I10, rxcap_608_fail
    ($I12, $I11) = rx594_cur."!mark_peek"($I10)
    rx594_cur."!cursor_pos"($I11)
    ($P10) = rx594_cur."!cursor_start"()
    $P10."!cursor_pass"(rx594_pos, "")
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_608_done
  rxcap_608_fail:
    goto rx594_fail
  rxcap_608_done:
  # rx literal  ")"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 41, rx594_fail
    add rx594_pos, 1
    set_addr $I10, rxquantr607_done
    (rx594_rep) = rx594_cur."!mark_commit"($I10)
  rxquantr607_done:
  alt599_end:
.annotate 'line', 198
  # rx pass
    rx594_cur."!cursor_pass"(rx594_pos, "mod_internal")
    if_null rx594_debug, debug_582
    rx594_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx594_pos)
  debug_582:
    .return (rx594_cur)
  rx594_restart:
.annotate 'line', 11
    if_null rx594_debug, debug_583
    rx594_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_583:
  rx594_fail:
    (rx594_rep, rx594_pos, $I10, $P10) = rx594_cur."!mark_fail"(0)
    lt rx594_pos, -1, rx594_done
    eq rx594_pos, -1, rx594_fail
    jump $I10
  rx594_done:
    rx594_cur."!cursor_fail"()
    if_null rx594_debug, debug_584
    rx594_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_584:
    .return (rx594_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1303857426.514") :method
.annotate 'line', 11
    $P596 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    push $P597, ":"
    .return ($P597)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block601"  :anon :subid("165_1303857426.514") :method :outer("163_1303857426.514")
.annotate 'line', 200
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    .local pmc rx603_debug
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx603_cur
    .local pmc match
    .lex "$/", match
    length rx603_eos, rx603_tgt
    gt rx603_pos, rx603_eos, rx603_done
    set rx603_off, 0
    lt rx603_pos, 2, rx603_start
    sub rx603_off, rx603_pos, 1
    substr rx603_tgt, rx603_tgt, rx603_off
  rx603_start:
    eq $I10, 1, rx603_restart
    if_null rx603_debug, debug_578
    rx603_cur."!cursor_debug"("START", "")
  debug_578:
    $I10 = self.'from'()
    ne $I10, -1, rxscan604_done
    goto rxscan604_scan
  rxscan604_loop:
    (rx603_pos) = rx603_cur."from"()
    inc rx603_pos
    rx603_cur."!cursor_from"(rx603_pos)
    ge rx603_pos, rx603_eos, rxscan604_done
  rxscan604_scan:
    set_addr $I10, rxscan604_loop
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  rxscan604_done:
  alt605_0:
    set_addr $I10, alt605_1
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  # rx literal  "!"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 33, rx603_fail
    add rx603_pos, 1
    goto alt605_end
  alt605_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx603_pos, rx603_off
    find_not_cclass $I11, 8, rx603_tgt, $I10, rx603_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx603_fail
    add rx603_pos, rx603_off, $I11
  alt605_end:
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "")
    if_null rx603_debug, debug_579
    rx603_cur."!cursor_debug"("PASS", "", " at pos=", rx603_pos)
  debug_579:
    .return (rx603_cur)
  rx603_restart:
    if_null rx603_debug, debug_580
    rx603_cur."!cursor_debug"("NEXT", "")
  debug_580:
  rx603_fail:
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    if_null rx603_debug, debug_581
    rx603_cur."!cursor_debug"("FAIL", "")
  debug_581:
    .return (rx603_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("166_1303857426.514")
    .param pmc param_610
.annotate 'line', 205
    .lex "self", param_610
    $P611 = param_610."!protoregex"("mod_ident")
    .return ($P611)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1303857426.514")
    .param pmc param_613
.annotate 'line', 205
    .lex "self", param_613
    $P614 = param_613."!PREFIX__!protoregex"("mod_ident")
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx616_tgt
    .local int rx616_pos
    .local int rx616_off
    .local int rx616_eos
    .local int rx616_rep
    .local pmc rx616_cur
    .local pmc rx616_debug
    (rx616_cur, rx616_pos, rx616_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx616_cur
    .local pmc match
    .lex "$/", match
    length rx616_eos, rx616_tgt
    gt rx616_pos, rx616_eos, rx616_done
    set rx616_off, 0
    lt rx616_pos, 2, rx616_start
    sub rx616_off, rx616_pos, 1
    substr rx616_tgt, rx616_tgt, rx616_off
  rx616_start:
    eq $I10, 1, rx616_restart
    if_null rx616_debug, debug_585
    rx616_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_585:
    $I10 = self.'from'()
    ne $I10, -1, rxscan619_done
    goto rxscan619_scan
  rxscan619_loop:
    (rx616_pos) = rx616_cur."from"()
    inc rx616_pos
    rx616_cur."!cursor_from"(rx616_pos)
    ge rx616_pos, rx616_eos, rxscan619_done
  rxscan619_scan:
    set_addr $I10, rxscan619_loop
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  rxscan619_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_620_fail
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  # rx literal  "i"
    add $I11, rx616_pos, 1
    gt $I11, rx616_eos, rx616_fail
    sub $I11, rx616_pos, rx616_off
    ord $I11, rx616_tgt, $I11
    ne $I11, 105, rx616_fail
    add rx616_pos, 1
    set_addr $I10, rxcap_620_fail
    ($I12, $I11) = rx616_cur."!mark_peek"($I10)
    rx616_cur."!cursor_pos"($I11)
    ($P10) = rx616_cur."!cursor_start"()
    $P10."!cursor_pass"(rx616_pos, "")
    rx616_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_620_done
  rxcap_620_fail:
    goto rx616_fail
  rxcap_620_done:
  # rx rxquantr621 ** 0..1
    set_addr $I10, rxquantr621_done
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  rxquantr621_loop:
  # rx literal  "gnorecase"
    add $I11, rx616_pos, 9
    gt $I11, rx616_eos, rx616_fail
    sub $I11, rx616_pos, rx616_off
    substr $S10, rx616_tgt, $I11, 9
    ne $S10, "gnorecase", rx616_fail
    add rx616_pos, 9
    set_addr $I10, rxquantr621_done
    (rx616_rep) = rx616_cur."!mark_commit"($I10)
  rxquantr621_done:
  # rx pass
    rx616_cur."!cursor_pass"(rx616_pos, "mod_ident:sym<ignorecase>")
    if_null rx616_debug, debug_586
    rx616_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx616_pos)
  debug_586:
    .return (rx616_cur)
  rx616_restart:
.annotate 'line', 11
    if_null rx616_debug, debug_587
    rx616_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_587:
  rx616_fail:
    (rx616_rep, rx616_pos, $I10, $P10) = rx616_cur."!mark_fail"(0)
    lt rx616_pos, -1, rx616_done
    eq rx616_pos, -1, rx616_fail
    jump $I10
  rx616_done:
    rx616_cur."!cursor_fail"()
    if_null rx616_debug, debug_588
    rx616_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_588:
    .return (rx616_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1303857426.514") :method
.annotate 'line', 11
    new $P618, "ResizablePMCArray"
    push $P618, "i"
    .return ($P618)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx623_tgt
    .local int rx623_pos
    .local int rx623_off
    .local int rx623_eos
    .local int rx623_rep
    .local pmc rx623_cur
    .local pmc rx623_debug
    (rx623_cur, rx623_pos, rx623_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx623_cur
    .local pmc match
    .lex "$/", match
    length rx623_eos, rx623_tgt
    gt rx623_pos, rx623_eos, rx623_done
    set rx623_off, 0
    lt rx623_pos, 2, rx623_start
    sub rx623_off, rx623_pos, 1
    substr rx623_tgt, rx623_tgt, rx623_off
  rx623_start:
    eq $I10, 1, rx623_restart
    if_null rx623_debug, debug_589
    rx623_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_589:
    $I10 = self.'from'()
    ne $I10, -1, rxscan626_done
    goto rxscan626_scan
  rxscan626_loop:
    (rx623_pos) = rx623_cur."from"()
    inc rx623_pos
    rx623_cur."!cursor_from"(rx623_pos)
    ge rx623_pos, rx623_eos, rxscan626_done
  rxscan626_scan:
    set_addr $I10, rxscan626_loop
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxscan626_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_627_fail
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  # rx literal  "r"
    add $I11, rx623_pos, 1
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    ord $I11, rx623_tgt, $I11
    ne $I11, 114, rx623_fail
    add rx623_pos, 1
    set_addr $I10, rxcap_627_fail
    ($I12, $I11) = rx623_cur."!mark_peek"($I10)
    rx623_cur."!cursor_pos"($I11)
    ($P10) = rx623_cur."!cursor_start"()
    $P10."!cursor_pass"(rx623_pos, "")
    rx623_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_627_done
  rxcap_627_fail:
    goto rx623_fail
  rxcap_627_done:
  # rx rxquantr628 ** 0..1
    set_addr $I10, rxquantr628_done
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxquantr628_loop:
  # rx literal  "atchet"
    add $I11, rx623_pos, 6
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    substr $S10, rx623_tgt, $I11, 6
    ne $S10, "atchet", rx623_fail
    add rx623_pos, 6
    set_addr $I10, rxquantr628_done
    (rx623_rep) = rx623_cur."!mark_commit"($I10)
  rxquantr628_done:
  # rx pass
    rx623_cur."!cursor_pass"(rx623_pos, "mod_ident:sym<ratchet>")
    if_null rx623_debug, debug_590
    rx623_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx623_pos)
  debug_590:
    .return (rx623_cur)
  rx623_restart:
.annotate 'line', 11
    if_null rx623_debug, debug_591
    rx623_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_591:
  rx623_fail:
    (rx623_rep, rx623_pos, $I10, $P10) = rx623_cur."!mark_fail"(0)
    lt rx623_pos, -1, rx623_done
    eq rx623_pos, -1, rx623_fail
    jump $I10
  rx623_done:
    rx623_cur."!cursor_fail"()
    if_null rx623_debug, debug_592
    rx623_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_592:
    .return (rx623_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1303857426.514") :method
.annotate 'line', 11
    new $P625, "ResizablePMCArray"
    push $P625, "r"
    .return ($P625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1303857426.514") :method :outer("12_1303857426.514")
.annotate 'line', 11
    .local string rx630_tgt
    .local int rx630_pos
    .local int rx630_off
    .local int rx630_eos
    .local int rx630_rep
    .local pmc rx630_cur
    .local pmc rx630_debug
    (rx630_cur, rx630_pos, rx630_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx630_cur
    .local pmc match
    .lex "$/", match
    length rx630_eos, rx630_tgt
    gt rx630_pos, rx630_eos, rx630_done
    set rx630_off, 0
    lt rx630_pos, 2, rx630_start
    sub rx630_off, rx630_pos, 1
    substr rx630_tgt, rx630_tgt, rx630_off
  rx630_start:
    eq $I10, 1, rx630_restart
    if_null rx630_debug, debug_593
    rx630_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_593:
    $I10 = self.'from'()
    ne $I10, -1, rxscan633_done
    goto rxscan633_scan
  rxscan633_loop:
    (rx630_pos) = rx630_cur."from"()
    inc rx630_pos
    rx630_cur."!cursor_from"(rx630_pos)
    ge rx630_pos, rx630_eos, rxscan633_done
  rxscan633_scan:
    set_addr $I10, rxscan633_loop
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  rxscan633_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_634_fail
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  # rx literal  "s"
    add $I11, rx630_pos, 1
    gt $I11, rx630_eos, rx630_fail
    sub $I11, rx630_pos, rx630_off
    ord $I11, rx630_tgt, $I11
    ne $I11, 115, rx630_fail
    add rx630_pos, 1
    set_addr $I10, rxcap_634_fail
    ($I12, $I11) = rx630_cur."!mark_peek"($I10)
    rx630_cur."!cursor_pos"($I11)
    ($P10) = rx630_cur."!cursor_start"()
    $P10."!cursor_pass"(rx630_pos, "")
    rx630_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_634_done
  rxcap_634_fail:
    goto rx630_fail
  rxcap_634_done:
  # rx rxquantr635 ** 0..1
    set_addr $I10, rxquantr635_done
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  rxquantr635_loop:
  # rx literal  "igspace"
    add $I11, rx630_pos, 7
    gt $I11, rx630_eos, rx630_fail
    sub $I11, rx630_pos, rx630_off
    substr $S10, rx630_tgt, $I11, 7
    ne $S10, "igspace", rx630_fail
    add rx630_pos, 7
    set_addr $I10, rxquantr635_done
    (rx630_rep) = rx630_cur."!mark_commit"($I10)
  rxquantr635_done:
  # rx pass
    rx630_cur."!cursor_pass"(rx630_pos, "mod_ident:sym<sigspace>")
    if_null rx630_debug, debug_594
    rx630_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx630_pos)
  debug_594:
    .return (rx630_cur)
  rx630_restart:
.annotate 'line', 11
    if_null rx630_debug, debug_595
    rx630_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_595:
  rx630_fail:
    (rx630_rep, rx630_pos, $I10, $P10) = rx630_cur."!mark_fail"(0)
    lt rx630_pos, -1, rx630_done
    eq rx630_pos, -1, rx630_fail
    jump $I10
  rx630_done:
    rx630_cur."!cursor_fail"()
    if_null rx630_debug, debug_596
    rx630_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_596:
    .return (rx630_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1303857426.514") :method
.annotate 'line', 11
    new $P632, "ResizablePMCArray"
    push $P632, "s"
    .return ($P632)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block927"  :subid("175_1303857426.514") :outer("10_1303857426.514")
.annotate 'line', 212
    .const 'Sub' $P2713 = "257_1303857426.514" 
    capture_lex $P2713
    .const 'Sub' $P2693 = "256_1303857426.514" 
    capture_lex $P2693
    .const 'Sub' $P2675 = "255_1303857426.514" 
    capture_lex $P2675
    .const 'Sub' $P2643 = "254_1303857426.514" 
    capture_lex $P2643
    .const 'Sub' $P2570 = "250_1303857426.514" 
    capture_lex $P2570
    .const 'Sub' $P2492 = "248_1303857426.514" 
    capture_lex $P2492
    .const 'Sub' $P2412 = "245_1303857426.514" 
    capture_lex $P2412
    .const 'Sub' $P2400 = "244_1303857426.514" 
    capture_lex $P2400
    .const 'Sub' $P2375 = "243_1303857426.514" 
    capture_lex $P2375
    .const 'Sub' $P2359 = "242_1303857426.514" 
    capture_lex $P2359
    .const 'Sub' $P2344 = "241_1303857426.514" 
    capture_lex $P2344
    .const 'Sub' $P2330 = "240_1303857426.514" 
    capture_lex $P2330
    .const 'Sub' $P2291 = "239_1303857426.514" 
    capture_lex $P2291
    .const 'Sub' $P2252 = "238_1303857426.514" 
    capture_lex $P2252
    .const 'Sub' $P2235 = "237_1303857426.514" 
    capture_lex $P2235
    .const 'Sub' $P2218 = "236_1303857426.514" 
    capture_lex $P2218
    .const 'Sub' $P2201 = "235_1303857426.514" 
    capture_lex $P2201
    .const 'Sub' $P2184 = "234_1303857426.514" 
    capture_lex $P2184
    .const 'Sub' $P2167 = "233_1303857426.514" 
    capture_lex $P2167
    .const 'Sub' $P2150 = "232_1303857426.514" 
    capture_lex $P2150
    .const 'Sub' $P2133 = "231_1303857426.514" 
    capture_lex $P2133
    .const 'Sub' $P2108 = "230_1303857426.514" 
    capture_lex $P2108
    .const 'Sub' $P2089 = "229_1303857426.514" 
    capture_lex $P2089
    .const 'Sub' $P2027 = "228_1303857426.514" 
    capture_lex $P2027
    .const 'Sub' $P2005 = "227_1303857426.514" 
    capture_lex $P2005
    .const 'Sub' $P1976 = "226_1303857426.514" 
    capture_lex $P1976
    .const 'Sub' $P1968 = "225_1303857426.514" 
    capture_lex $P1968
    .const 'Sub' $P1960 = "224_1303857426.514" 
    capture_lex $P1960
    .const 'Sub' $P1952 = "223_1303857426.514" 
    capture_lex $P1952
    .const 'Sub' $P1939 = "222_1303857426.514" 
    capture_lex $P1939
    .const 'Sub' $P1926 = "221_1303857426.514" 
    capture_lex $P1926
    .const 'Sub' $P1913 = "220_1303857426.514" 
    capture_lex $P1913
    .const 'Sub' $P1900 = "219_1303857426.514" 
    capture_lex $P1900
    .const 'Sub' $P1887 = "218_1303857426.514" 
    capture_lex $P1887
    .const 'Sub' $P1874 = "217_1303857426.514" 
    capture_lex $P1874
    .const 'Sub' $P1861 = "216_1303857426.514" 
    capture_lex $P1861
    .const 'Sub' $P1848 = "215_1303857426.514" 
    capture_lex $P1848
    .const 'Sub' $P1814 = "214_1303857426.514" 
    capture_lex $P1814
    .const 'Sub' $P1780 = "213_1303857426.514" 
    capture_lex $P1780
    .const 'Sub' $P1761 = "212_1303857426.514" 
    capture_lex $P1761
    .const 'Sub' $P1753 = "211_1303857426.514" 
    capture_lex $P1753
    .const 'Sub' $P1732 = "210_1303857426.514" 
    capture_lex $P1732
    .const 'Sub' $P1641 = "208_1303857426.514" 
    capture_lex $P1641
    .const 'Sub' $P1623 = "207_1303857426.514" 
    capture_lex $P1623
    .const 'Sub' $P1607 = "206_1303857426.514" 
    capture_lex $P1607
    .const 'Sub' $P1591 = "205_1303857426.514" 
    capture_lex $P1591
    .const 'Sub' $P1562 = "204_1303857426.514" 
    capture_lex $P1562
    .const 'Sub' $P1511 = "202_1303857426.514" 
    capture_lex $P1511
    .const 'Sub' $P1436 = "200_1303857426.514" 
    capture_lex $P1436
    .const 'Sub' $P1398 = "198_1303857426.514" 
    capture_lex $P1398
    .const 'Sub' $P1332 = "195_1303857426.514" 
    capture_lex $P1332
    .const 'Sub' $P1319 = "194_1303857426.514" 
    capture_lex $P1319
    .const 'Sub' $P1292 = "192_1303857426.514" 
    capture_lex $P1292
    .const 'Sub' $P1277 = "191_1303857426.514" 
    capture_lex $P1277
    .const 'Sub' $P1236 = "190_1303857426.514" 
    capture_lex $P1236
    .const 'Sub' $P984 = "177_1303857426.514" 
    capture_lex $P984
    .const 'Sub' $P929 = "176_1303857426.514" 
    capture_lex $P929
.annotate 'line', 719
    .const 'Sub' $P929 = "176_1303857426.514" 
    newclosure $P980, $P929
    .lex "buildsub", $P980
.annotate 'line', 212
    find_lex $P981, "buildsub"
    find_lex $P982, "$?PACKAGE"
    get_who $P983, $P982
    set $P983["buildsub"], $P981
.annotate 'line', 737
    .const 'Sub' $P984 = "177_1303857426.514" 
    newclosure $P1235, $P984
    .lex "capnames", $P1235
.annotate 'line', 803
    .const 'Sub' $P1236 = "190_1303857426.514" 
    newclosure $P1265, $P1236
    .lex "backmod", $P1265
.annotate 'line', 212
    .lex "$?PACKAGE", $P1266
    .lex "$?CLASS", $P1267
.annotate 'line', 219

            $P1268 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1268, $P0
        
    find_lex $P1269, "$?PACKAGE"
    get_who $P1270, $P1269
    set $P1270["@MODIFIERS"], $P1268
.annotate 'line', 212
    find_lex $P1271, "$?PACKAGE"
    get_who $P1272, $P1271
    set $P1273, $P1272["@MODIFIERS"]
    unless_null $P1273, vivify_715
    $P1273 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P1274, "$?PACKAGE"
    get_who $P1275, $P1274
    set $P1276, $P1275["$REGEXNAME"]
    unless_null $P1276, vivify_716
    new $P1276, "Undef"
  vivify_716:
.annotate 'line', 712
    find_lex $P2672, "buildsub"
    find_lex $P2673, "capnames"
    find_lex $P2674, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2693 = "256_1303857426.514" 
    newclosure $P2711, $P2693
.annotate 'line', 212
    .return ($P2711)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post597") :outer("175_1303857426.514")
.annotate 'line', 212
    .const 'Sub' $P928 = "175_1303857426.514" 
    .local pmc block
    set block, $P928
    .const 'Sub' $P2713 = "257_1303857426.514" 
    capture_lex $P2713
    $P2713()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2712"  :anon :subid("257_1303857426.514") :outer("175_1303857426.514")
.annotate 'line', 212
    nqp_get_sc_object $P2714, "1303857421.716", 2
    .local pmc type_obj
    set type_obj, $P2714
    get_how $P2715, type_obj
    .const 'Sub' $P2716 = "191_1303857426.514" 
    $P2715."add_method"(type_obj, "arg", $P2716)
    get_how $P2717, type_obj
    .const 'Sub' $P2718 = "192_1303857426.514" 
    $P2717."add_method"(type_obj, "arglist", $P2718)
    get_how $P2719, type_obj
    .const 'Sub' $P2720 = "194_1303857426.514" 
    $P2719."add_method"(type_obj, "TOP", $P2720)
    get_how $P2721, type_obj
    .const 'Sub' $P2722 = "195_1303857426.514" 
    $P2721."add_method"(type_obj, "nibbler", $P2722)
    get_how $P2723, type_obj
    .const 'Sub' $P2724 = "198_1303857426.514" 
    $P2723."add_method"(type_obj, "termconj", $P2724)
    get_how $P2725, type_obj
    .const 'Sub' $P2726 = "200_1303857426.514" 
    $P2725."add_method"(type_obj, "termish", $P2726)
    get_how $P2727, type_obj
    .const 'Sub' $P2728 = "202_1303857426.514" 
    $P2727."add_method"(type_obj, "quantified_atom", $P2728)
    get_how $P2729, type_obj
    .const 'Sub' $P2730 = "204_1303857426.514" 
    $P2729."add_method"(type_obj, "atom", $P2730)
    get_how $P2731, type_obj
    .const 'Sub' $P2732 = "205_1303857426.514" 
    $P2731."add_method"(type_obj, "quantifier:sym<*>", $P2732)
    get_how $P2733, type_obj
    .const 'Sub' $P2734 = "206_1303857426.514" 
    $P2733."add_method"(type_obj, "quantifier:sym<+>", $P2734)
    get_how $P2735, type_obj
    .const 'Sub' $P2736 = "207_1303857426.514" 
    $P2735."add_method"(type_obj, "quantifier:sym<?>", $P2736)
    get_how $P2737, type_obj
    .const 'Sub' $P2738 = "208_1303857426.514" 
    $P2737."add_method"(type_obj, "quantifier:sym<**>", $P2738)
    get_how $P2739, type_obj
    .const 'Sub' $P2740 = "210_1303857426.514" 
    $P2739."add_method"(type_obj, "metachar:sym<ws>", $P2740)
    get_how $P2741, type_obj
    .const 'Sub' $P2742 = "211_1303857426.514" 
    $P2741."add_method"(type_obj, "metachar:sym<[ ]>", $P2742)
    get_how $P2743, type_obj
    .const 'Sub' $P2744 = "212_1303857426.514" 
    $P2743."add_method"(type_obj, "metachar:sym<( )>", $P2744)
    get_how $P2745, type_obj
    .const 'Sub' $P2746 = "213_1303857426.514" 
    $P2745."add_method"(type_obj, "metachar:sym<'>", $P2746)
    get_how $P2747, type_obj
    .const 'Sub' $P2748 = "214_1303857426.514" 
    $P2747."add_method"(type_obj, "metachar:sym<\">", $P2748)
    get_how $P2749, type_obj
    .const 'Sub' $P2750 = "215_1303857426.514" 
    $P2749."add_method"(type_obj, "metachar:sym<.>", $P2750)
    get_how $P2751, type_obj
    .const 'Sub' $P2752 = "216_1303857426.514" 
    $P2751."add_method"(type_obj, "metachar:sym<^>", $P2752)
    get_how $P2753, type_obj
    .const 'Sub' $P2754 = "217_1303857426.514" 
    $P2753."add_method"(type_obj, "metachar:sym<^^>", $P2754)
    get_how $P2755, type_obj
    .const 'Sub' $P2756 = "218_1303857426.514" 
    $P2755."add_method"(type_obj, "metachar:sym<$>", $P2756)
    get_how $P2757, type_obj
    .const 'Sub' $P2758 = "219_1303857426.514" 
    $P2757."add_method"(type_obj, "metachar:sym<$$>", $P2758)
    get_how $P2759, type_obj
    .const 'Sub' $P2760 = "220_1303857426.514" 
    $P2759."add_method"(type_obj, "metachar:sym<:::>", $P2760)
    get_how $P2761, type_obj
    .const 'Sub' $P2762 = "221_1303857426.514" 
    $P2761."add_method"(type_obj, "metachar:sym<lwb>", $P2762)
    get_how $P2763, type_obj
    .const 'Sub' $P2764 = "222_1303857426.514" 
    $P2763."add_method"(type_obj, "metachar:sym<rwb>", $P2764)
    get_how $P2765, type_obj
    .const 'Sub' $P2766 = "223_1303857426.514" 
    $P2765."add_method"(type_obj, "metachar:sym<bs>", $P2766)
    get_how $P2767, type_obj
    .const 'Sub' $P2768 = "224_1303857426.514" 
    $P2767."add_method"(type_obj, "metachar:sym<mod>", $P2768)
    get_how $P2769, type_obj
    .const 'Sub' $P2770 = "225_1303857426.514" 
    $P2769."add_method"(type_obj, "metachar:sym<assert>", $P2770)
    get_how $P2771, type_obj
    .const 'Sub' $P2772 = "226_1303857426.514" 
    $P2771."add_method"(type_obj, "metachar:sym<~>", $P2772)
    get_how $P2773, type_obj
    .const 'Sub' $P2774 = "227_1303857426.514" 
    $P2773."add_method"(type_obj, "metachar:sym<{*}>", $P2774)
    get_how $P2775, type_obj
    .const 'Sub' $P2776 = "228_1303857426.514" 
    $P2775."add_method"(type_obj, "metachar:sym<var>", $P2776)
    get_how $P2777, type_obj
    .const 'Sub' $P2778 = "229_1303857426.514" 
    $P2777."add_method"(type_obj, "metachar:sym<PIR>", $P2778)
    get_how $P2779, type_obj
    .const 'Sub' $P2780 = "230_1303857426.514" 
    $P2779."add_method"(type_obj, "backslash:sym<w>", $P2780)
    get_how $P2781, type_obj
    .const 'Sub' $P2782 = "231_1303857426.514" 
    $P2781."add_method"(type_obj, "backslash:sym<b>", $P2782)
    get_how $P2783, type_obj
    .const 'Sub' $P2784 = "232_1303857426.514" 
    $P2783."add_method"(type_obj, "backslash:sym<e>", $P2784)
    get_how $P2785, type_obj
    .const 'Sub' $P2786 = "233_1303857426.514" 
    $P2785."add_method"(type_obj, "backslash:sym<f>", $P2786)
    get_how $P2787, type_obj
    .const 'Sub' $P2788 = "234_1303857426.514" 
    $P2787."add_method"(type_obj, "backslash:sym<h>", $P2788)
    get_how $P2789, type_obj
    .const 'Sub' $P2790 = "235_1303857426.514" 
    $P2789."add_method"(type_obj, "backslash:sym<r>", $P2790)
    get_how $P2791, type_obj
    .const 'Sub' $P2792 = "236_1303857426.514" 
    $P2791."add_method"(type_obj, "backslash:sym<t>", $P2792)
    get_how $P2793, type_obj
    .const 'Sub' $P2794 = "237_1303857426.514" 
    $P2793."add_method"(type_obj, "backslash:sym<v>", $P2794)
    get_how $P2795, type_obj
    .const 'Sub' $P2796 = "238_1303857426.514" 
    $P2795."add_method"(type_obj, "backslash:sym<o>", $P2796)
    get_how $P2797, type_obj
    .const 'Sub' $P2798 = "239_1303857426.514" 
    $P2797."add_method"(type_obj, "backslash:sym<x>", $P2798)
    get_how $P2799, type_obj
    .const 'Sub' $P2800 = "240_1303857426.514" 
    $P2799."add_method"(type_obj, "backslash:sym<c>", $P2800)
    get_how $P2801, type_obj
    .const 'Sub' $P2802 = "241_1303857426.514" 
    $P2801."add_method"(type_obj, "backslash:sym<misc>", $P2802)
    get_how $P2803, type_obj
    .const 'Sub' $P2804 = "242_1303857426.514" 
    $P2803."add_method"(type_obj, "assertion:sym<?>", $P2804)
    get_how $P2805, type_obj
    .const 'Sub' $P2806 = "243_1303857426.514" 
    $P2805."add_method"(type_obj, "assertion:sym<!>", $P2806)
    get_how $P2807, type_obj
    .const 'Sub' $P2808 = "244_1303857426.514" 
    $P2807."add_method"(type_obj, "assertion:sym<method>", $P2808)
    get_how $P2809, type_obj
    .const 'Sub' $P2810 = "245_1303857426.514" 
    $P2809."add_method"(type_obj, "assertion:sym<name>", $P2810)
    get_how $P2811, type_obj
    .const 'Sub' $P2812 = "248_1303857426.514" 
    $P2811."add_method"(type_obj, "assertion:sym<[>", $P2812)
    get_how $P2813, type_obj
    .const 'Sub' $P2814 = "250_1303857426.514" 
    $P2813."add_method"(type_obj, "cclass_elem", $P2814)
    get_how $P2815, type_obj
    .const 'Sub' $P2816 = "254_1303857426.514" 
    $P2815."add_method"(type_obj, "mod_internal", $P2816)
    get_how $P2817, type_obj
    .const 'Sub' $P2818 = "255_1303857426.514" 
    $P2817."add_method"(type_obj, "subrule_alias", $P2818)
    get_how $P2819, type_obj
    .const 'Sub' $P2820 = "256_1303857426.514" 
    $P2819."add_method"(type_obj, "named_assertion", $P2820)
    get_how $P2821, type_obj
    $P2822 = $P2821."compose"(type_obj)
    .return ($P2822)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_930
    .param pmc param_931 :optional
    .param int has_param_931 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_930
    if has_param_931, optparam_598
    get_hll_global $P932, "GLOBAL"
    nqp_get_package_through_who $P933, $P932, "PAST"
    get_who $P934, $P933
    set $P935, $P934["Block"]
    $P936 = $P935."new"()
    set param_931, $P936
  optparam_598:
    .lex "$block", param_931
.annotate 'line', 720
    $P937 = root_new ['parrot';'Hash']
    .lex "%capnames", $P937
    find_lex $P938, "$rpast"
    unless_null $P938, vivify_599
    new $P938, "Undef"
  vivify_599:
    $P939 = "capnames"($P938, 0)
    store_lex "%capnames", $P939
.annotate 'line', 721
    new $P940, "Integer"
    assign $P940, 0
    find_lex $P941, "%capnames"
    unless_null $P941, vivify_600
    $P941 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P941
  vivify_600:
    set $P941[""], $P940
.annotate 'line', 722
    get_hll_global $P942, "GLOBAL"
    nqp_get_package_through_who $P943, $P942, "PAST"
    get_who $P944, $P943
    set $P945, $P944["Regex"]
.annotate 'line', 723
    get_hll_global $P946, "GLOBAL"
    nqp_get_package_through_who $P947, $P946, "PAST"
    get_who $P948, $P947
    set $P949, $P948["Regex"]
    $P950 = $P949."new"("scan" :named("pasttype"))
    find_lex $P951, "$rpast"
    unless_null $P951, vivify_601
    new $P951, "Undef"
  vivify_601:
.annotate 'line', 725
    get_hll_global $P952, "GLOBAL"
    nqp_get_package_through_who $P953, $P952, "PAST"
    get_who $P954, $P953
    set $P955, $P954["Regex"]
.annotate 'line', 726
    find_lex $P958, "$?PACKAGE"
    get_who $P959, $P958
    set $P960, $P959["@MODIFIERS"]
    unless_null $P960, vivify_602
    $P960 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P961, $P960[0]
    unless_null $P961, vivify_603
    $P961 = root_new ['parrot';'Hash']
  vivify_603:
    set $P962, $P961["r"]
    unless_null $P962, vivify_604
    new $P962, "Undef"
  vivify_604:
    if $P962, if_957
    new $P964, "String"
    assign $P964, "g"
    set $P956, $P964
    goto if_957_end
  if_957:
    new $P963, "String"
    assign $P963, "r"
    set $P956, $P963
  if_957_end:
    $P965 = $P955."new"("pass" :named("pasttype"), $P956 :named("backtrack"))
.annotate 'line', 725
    find_lex $P966, "%capnames"
    unless_null $P966, vivify_605
    $P966 = root_new ['parrot';'Hash']
  vivify_605:
    $P967 = $P945."new"($P950, $P951, $P965, "concat" :named("pasttype"), $P966 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P967
.annotate 'line', 730
    find_lex $P969, "$block"
    unless_null $P969, vivify_606
    new $P969, "Undef"
  vivify_606:
    $P970 = $P969."symbol"(unicode:"$\x{a2}")
    if $P970, unless_968_end
    find_lex $P971, "$block"
    unless_null $P971, vivify_607
    new $P971, "Undef"
  vivify_607:
    $P971."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_968_end:
.annotate 'line', 731
    find_lex $P973, "$block"
    unless_null $P973, vivify_608
    new $P973, "Undef"
  vivify_608:
    $P974 = $P973."symbol"("$/")
    if $P974, unless_972_end
    find_lex $P975, "$block"
    unless_null $P975, vivify_609
    new $P975, "Undef"
  vivify_609:
    $P975."symbol"("$/", "lexical" :named("scope"))
  unless_972_end:
.annotate 'line', 732
    find_lex $P976, "$block"
    unless_null $P976, vivify_610
    new $P976, "Undef"
  vivify_610:
    find_lex $P977, "$rpast"
    unless_null $P977, vivify_611
    new $P977, "Undef"
  vivify_611:
    $P976."push"($P977)
.annotate 'line', 733
    find_lex $P978, "$block"
    unless_null $P978, vivify_612
    new $P978, "Undef"
  vivify_612:
    $P978."blocktype"("method")
    find_lex $P979, "$block"
    unless_null $P979, vivify_613
    new $P979, "Undef"
  vivify_613:
.annotate 'line', 719
    .return ($P979)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_985
    .param pmc param_986
.annotate 'line', 737
    .const 'Sub' $P1211 = "188_1303857426.514" 
    capture_lex $P1211
    .const 'Sub' $P1148 = "185_1303857426.514" 
    capture_lex $P1148
    .const 'Sub' $P1106 = "183_1303857426.514" 
    capture_lex $P1106
    .const 'Sub' $P1064 = "181_1303857426.514" 
    capture_lex $P1064
    .const 'Sub' $P997 = "178_1303857426.514" 
    capture_lex $P997
    .lex "$ast", param_985
    .lex "$count", param_986
.annotate 'line', 738
    $P987 = root_new ['parrot';'Hash']
    .lex "%capnames", $P987
.annotate 'line', 739
    new $P988, "Undef"
    .lex "$pasttype", $P988
.annotate 'line', 737
    find_lex $P989, "%capnames"
    unless_null $P989, vivify_614
    $P989 = root_new ['parrot';'Hash']
  vivify_614:
.annotate 'line', 739
    find_lex $P990, "$ast"
    unless_null $P990, vivify_615
    new $P990, "Undef"
  vivify_615:
    $P991 = $P990."pasttype"()
    store_lex "$pasttype", $P991
.annotate 'line', 740
    find_lex $P993, "$pasttype"
    unless_null $P993, vivify_616
    new $P993, "Undef"
  vivify_616:
    set $S994, $P993
    iseq $I995, $S994, "alt"
    if $I995, if_992
.annotate 'line', 753
    find_lex $P1055, "$pasttype"
    unless_null $P1055, vivify_617
    new $P1055, "Undef"
  vivify_617:
    set $S1056, $P1055
    iseq $I1057, $S1056, "concat"
    if $I1057, if_1054
.annotate 'line', 762
    find_lex $P1099, "$pasttype"
    unless_null $P1099, vivify_618
    new $P1099, "Undef"
  vivify_618:
    set $S1100, $P1099
    iseq $I1101, $S1100, "subrule"
    if $I1101, if_1098
    new $P1097, 'Integer'
    set $P1097, $I1101
    goto if_1098_end
  if_1098:
    find_lex $P1102, "$ast"
    unless_null $P1102, vivify_619
    new $P1102, "Undef"
  vivify_619:
    $S1103 = $P1102."subtype"()
    iseq $I1104, $S1103, "capture"
    new $P1097, 'Integer'
    set $P1097, $I1104
  if_1098_end:
    if $P1097, if_1096
.annotate 'line', 775
    find_lex $P1144, "$pasttype"
    unless_null $P1144, vivify_620
    new $P1144, "Undef"
  vivify_620:
    set $S1145, $P1144
    iseq $I1146, $S1145, "subcapture"
    if $I1146, if_1143
.annotate 'line', 792
    find_lex $P1207, "$pasttype"
    unless_null $P1207, vivify_621
    new $P1207, "Undef"
  vivify_621:
    set $S1208, $P1207
    iseq $I1209, $S1208, "quant"
    unless $I1209, if_1206_end
    .const 'Sub' $P1211 = "188_1303857426.514" 
    capture_lex $P1211
    $P1211()
  if_1206_end:
    goto if_1143_end
  if_1143:
.annotate 'line', 775
    .const 'Sub' $P1148 = "185_1303857426.514" 
    capture_lex $P1148
    $P1148()
  if_1143_end:
    goto if_1096_end
  if_1096:
.annotate 'line', 762
    .const 'Sub' $P1106 = "183_1303857426.514" 
    capture_lex $P1106
    $P1106()
  if_1096_end:
    goto if_1054_end
  if_1054:
.annotate 'line', 754
    find_lex $P1059, "$ast"
    unless_null $P1059, vivify_666
    new $P1059, "Undef"
  vivify_666:
    $P1060 = $P1059."list"()
    defined $I1061, $P1060
    unless $I1061, for_undef_667
    iter $P1058, $P1060
    new $P1094, 'ExceptionHandler'
    set_label $P1094, loop1093_handler
    $P1094."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1094
  loop1093_test:
    unless $P1058, loop1093_done
    shift $P1062, $P1058
  loop1093_redo:
    .const 'Sub' $P1064 = "181_1303857426.514" 
    capture_lex $P1064
    $P1064($P1062)
  loop1093_next:
    goto loop1093_test
  loop1093_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1095, exception, 'type'
    eq $P1095, .CONTROL_LOOP_NEXT, loop1093_next
    eq $P1095, .CONTROL_LOOP_REDO, loop1093_redo
  loop1093_done:
    pop_eh 
  for_undef_667:
  if_1054_end:
.annotate 'line', 753
    goto if_992_end
  if_992:
.annotate 'line', 740
    .const 'Sub' $P997 = "178_1303857426.514" 
    capture_lex $P997
    $P997()
  if_992_end:
.annotate 'line', 799
    find_lex $P1232, "$count"
    unless_null $P1232, vivify_703
    new $P1232, "Undef"
  vivify_703:
    find_lex $P1233, "%capnames"
    unless_null $P1233, vivify_704
    $P1233 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1233
  vivify_704:
    set $P1233[""], $P1232
    find_lex $P1234, "%capnames"
    unless_null $P1234, vivify_705
    $P1234 = root_new ['parrot';'Hash']
  vivify_705:
.annotate 'line', 737
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1210"  :anon :subid("188_1303857426.514") :outer("177_1303857426.514")
.annotate 'line', 792
    .const 'Sub' $P1222 = "189_1303857426.514" 
    capture_lex $P1222
.annotate 'line', 793
    $P1212 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1212
    find_lex $P1213, "$ast"
    unless_null $P1213, vivify_622
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P1214, $P1213[0]
    unless_null $P1214, vivify_623
    new $P1214, "Undef"
  vivify_623:
    find_lex $P1215, "$count"
    unless_null $P1215, vivify_624
    new $P1215, "Undef"
  vivify_624:
    $P1216 = "capnames"($P1214, $P1215)
    store_lex "%astcap", $P1216
.annotate 'line', 794
    find_lex $P1218, "%astcap"
    unless_null $P1218, vivify_625
    $P1218 = root_new ['parrot';'Hash']
  vivify_625:
    defined $I1219, $P1218
    unless $I1219, for_undef_626
    iter $P1217, $P1218
    new $P1228, 'ExceptionHandler'
    set_label $P1228, loop1227_handler
    $P1228."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1228
  loop1227_test:
    unless $P1217, loop1227_done
    shift $P1220, $P1217
  loop1227_redo:
    .const 'Sub' $P1222 = "189_1303857426.514" 
    capture_lex $P1222
    $P1222($P1220)
  loop1227_next:
    goto loop1227_test
  loop1227_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1229, exception, 'type'
    eq $P1229, .CONTROL_LOOP_NEXT, loop1227_next
    eq $P1229, .CONTROL_LOOP_REDO, loop1227_redo
  loop1227_done:
    pop_eh 
  for_undef_626:
.annotate 'line', 797
    find_lex $P1230, "%astcap"
    unless_null $P1230, vivify_629
    $P1230 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1231, $P1230[""]
    unless_null $P1231, vivify_630
    new $P1231, "Undef"
  vivify_630:
    store_lex "$count", $P1231
.annotate 'line', 792
    .return ($P1231)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1221"  :anon :subid("189_1303857426.514") :outer("188_1303857426.514")
    .param pmc param_1223
.annotate 'line', 794
    .lex "$_", param_1223
.annotate 'line', 795
    new $P1224, "Integer"
    assign $P1224, 2
    find_lex $P1225, "$_"
    unless_null $P1225, vivify_627
    new $P1225, "Undef"
  vivify_627:
    find_lex $P1226, "%capnames"
    unless_null $P1226, vivify_628
    $P1226 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1226
  vivify_628:
    set $P1226[$P1225], $P1224
.annotate 'line', 794
    .return ($P1224)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1147"  :anon :subid("185_1303857426.514") :outer("177_1303857426.514")
.annotate 'line', 775
    .const 'Sub' $P1188 = "187_1303857426.514" 
    capture_lex $P1188
    .const 'Sub' $P1160 = "186_1303857426.514" 
    capture_lex $P1160
.annotate 'line', 776
    new $P1149, "Undef"
    .lex "$name", $P1149
.annotate 'line', 777
    $P1150 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1150
.annotate 'line', 786
    $P1151 = root_new ['parrot';'Hash']
    .lex "%x", $P1151
.annotate 'line', 776
    find_lex $P1152, "$ast"
    unless_null $P1152, vivify_631
    new $P1152, "Undef"
  vivify_631:
    $P1153 = $P1152."name"()
    store_lex "$name", $P1153
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1154 = split '=', $S0
            
    store_lex "@names", $P1154
.annotate 'line', 782
    find_lex $P1156, "@names"
    unless_null $P1156, vivify_632
    $P1156 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I1157, $P1156
    unless $I1157, for_undef_633
    iter $P1155, $P1156
    new $P1177, 'ExceptionHandler'
    set_label $P1177, loop1176_handler
    $P1177."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1177
  loop1176_test:
    unless $P1155, loop1176_done
    shift $P1158, $P1155
  loop1176_redo:
    .const 'Sub' $P1160 = "186_1303857426.514" 
    capture_lex $P1160
    $P1160($P1158)
  loop1176_next:
    goto loop1176_test
  loop1176_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1178, exception, 'type'
    eq $P1178, .CONTROL_LOOP_NEXT, loop1176_next
    eq $P1178, .CONTROL_LOOP_REDO, loop1176_redo
  loop1176_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 786
    find_lex $P1179, "$ast"
    unless_null $P1179, vivify_639
    $P1179 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1180, $P1179[0]
    unless_null $P1180, vivify_640
    new $P1180, "Undef"
  vivify_640:
    find_lex $P1181, "$count"
    unless_null $P1181, vivify_641
    new $P1181, "Undef"
  vivify_641:
    $P1182 = "capnames"($P1180, $P1181)
    store_lex "%x", $P1182
.annotate 'line', 787
    find_lex $P1184, "%x"
    unless_null $P1184, vivify_642
    $P1184 = root_new ['parrot';'Hash']
  vivify_642:
    defined $I1185, $P1184
    unless $I1185, for_undef_643
    iter $P1183, $P1184
    new $P1202, 'ExceptionHandler'
    set_label $P1202, loop1201_handler
    $P1202."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1202
  loop1201_test:
    unless $P1183, loop1201_done
    shift $P1186, $P1183
  loop1201_redo:
    .const 'Sub' $P1188 = "187_1303857426.514" 
    capture_lex $P1188
    $P1188($P1186)
  loop1201_next:
    goto loop1201_test
  loop1201_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1203, exception, 'type'
    eq $P1203, .CONTROL_LOOP_NEXT, loop1201_next
    eq $P1203, .CONTROL_LOOP_REDO, loop1201_redo
  loop1201_done:
    pop_eh 
  for_undef_643:
.annotate 'line', 790
    find_lex $P1204, "%x"
    unless_null $P1204, vivify_652
    $P1204 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1205, $P1204[""]
    unless_null $P1205, vivify_653
    new $P1205, "Undef"
  vivify_653:
    store_lex "$count", $P1205
.annotate 'line', 775
    .return ($P1205)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1159"  :anon :subid("186_1303857426.514") :outer("185_1303857426.514")
    .param pmc param_1161
.annotate 'line', 782
    .lex "$_", param_1161
.annotate 'line', 783
    find_lex $P1165, "$_"
    unless_null $P1165, vivify_634
    new $P1165, "Undef"
  vivify_634:
    set $S1166, $P1165
    iseq $I1167, $S1166, "0"
    unless $I1167, unless_1164
    new $P1163, 'Integer'
    set $P1163, $I1167
    goto unless_1164_end
  unless_1164:
    find_lex $P1168, "$_"
    unless_null $P1168, vivify_635
    new $P1168, "Undef"
  vivify_635:
    set $N1169, $P1168
    isgt $I1170, $N1169, 0.0
    new $P1163, 'Integer'
    set $P1163, $I1170
  unless_1164_end:
    unless $P1163, if_1162_end
    find_lex $P1171, "$_"
    unless_null $P1171, vivify_636
    new $P1171, "Undef"
  vivify_636:
    add $P1172, $P1171, 1
    store_lex "$count", $P1172
  if_1162_end:
.annotate 'line', 784
    new $P1173, "Integer"
    assign $P1173, 1
    find_lex $P1174, "$_"
    unless_null $P1174, vivify_637
    new $P1174, "Undef"
  vivify_637:
    find_lex $P1175, "%capnames"
    unless_null $P1175, vivify_638
    $P1175 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1175
  vivify_638:
    set $P1175[$P1174], $P1173
.annotate 'line', 782
    .return ($P1173)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1187"  :anon :subid("187_1303857426.514") :outer("185_1303857426.514")
    .param pmc param_1189
.annotate 'line', 787
    .lex "$_", param_1189
.annotate 'line', 788
    find_lex $P1190, "$_"
    unless_null $P1190, vivify_644
    new $P1190, "Undef"
  vivify_644:
    find_lex $P1191, "%capnames"
    unless_null $P1191, vivify_645
    $P1191 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1192, $P1191[$P1190]
    unless_null $P1192, vivify_646
    new $P1192, "Undef"
  vivify_646:
    set $N1193, $P1192
    new $P1194, 'Float'
    set $P1194, $N1193
    find_lex $P1195, "$_"
    unless_null $P1195, vivify_647
    new $P1195, "Undef"
  vivify_647:
    find_lex $P1196, "%x"
    unless_null $P1196, vivify_648
    $P1196 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1197, $P1196[$P1195]
    unless_null $P1197, vivify_649
    new $P1197, "Undef"
  vivify_649:
    add $P1198, $P1194, $P1197
    find_lex $P1199, "$_"
    unless_null $P1199, vivify_650
    new $P1199, "Undef"
  vivify_650:
    find_lex $P1200, "%capnames"
    unless_null $P1200, vivify_651
    $P1200 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1200
  vivify_651:
    set $P1200[$P1199], $P1198
.annotate 'line', 787
    .return ($P1198)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1105"  :anon :subid("183_1303857426.514") :outer("177_1303857426.514")
.annotate 'line', 762
    .const 'Sub' $P1124 = "184_1303857426.514" 
    capture_lex $P1124
.annotate 'line', 763
    new $P1107, "Undef"
    .lex "$name", $P1107
.annotate 'line', 765
    $P1108 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1108
.annotate 'line', 763
    find_lex $P1109, "$ast"
    unless_null $P1109, vivify_654
    new $P1109, "Undef"
  vivify_654:
    $P1110 = $P1109."name"()
    store_lex "$name", $P1110
.annotate 'line', 764
    find_lex $P1112, "$name"
    unless_null $P1112, vivify_655
    new $P1112, "Undef"
  vivify_655:
    set $S1113, $P1112
    iseq $I1114, $S1113, ""
    unless $I1114, if_1111_end
    find_lex $P1115, "$count"
    unless_null $P1115, vivify_656
    new $P1115, "Undef"
  vivify_656:
    store_lex "$name", $P1115
    find_lex $P1116, "$ast"
    unless_null $P1116, vivify_657
    new $P1116, "Undef"
  vivify_657:
    find_lex $P1117, "$name"
    unless_null $P1117, vivify_658
    new $P1117, "Undef"
  vivify_658:
    $P1116."name"($P1117)
  if_1111_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1118 = split '=', $S0
            
    store_lex "@names", $P1118
.annotate 'line', 770
    find_lex $P1120, "@names"
    unless_null $P1120, vivify_659
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I1121, $P1120
    unless $I1121, for_undef_660
    iter $P1119, $P1120
    new $P1141, 'ExceptionHandler'
    set_label $P1141, loop1140_handler
    $P1141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1141
  loop1140_test:
    unless $P1119, loop1140_done
    shift $P1122, $P1119
  loop1140_redo:
    .const 'Sub' $P1124 = "184_1303857426.514" 
    capture_lex $P1124
    $P1124($P1122)
  loop1140_next:
    goto loop1140_test
  loop1140_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1142, exception, 'type'
    eq $P1142, .CONTROL_LOOP_NEXT, loop1140_next
    eq $P1142, .CONTROL_LOOP_REDO, loop1140_redo
  loop1140_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 762
    .return ($P1119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1123"  :anon :subid("184_1303857426.514") :outer("183_1303857426.514")
    .param pmc param_1125
.annotate 'line', 770
    .lex "$_", param_1125
.annotate 'line', 771
    find_lex $P1129, "$_"
    unless_null $P1129, vivify_661
    new $P1129, "Undef"
  vivify_661:
    set $S1130, $P1129
    iseq $I1131, $S1130, "0"
    unless $I1131, unless_1128
    new $P1127, 'Integer'
    set $P1127, $I1131
    goto unless_1128_end
  unless_1128:
    find_lex $P1132, "$_"
    unless_null $P1132, vivify_662
    new $P1132, "Undef"
  vivify_662:
    set $N1133, $P1132
    isgt $I1134, $N1133, 0.0
    new $P1127, 'Integer'
    set $P1127, $I1134
  unless_1128_end:
    unless $P1127, if_1126_end
    find_lex $P1135, "$_"
    unless_null $P1135, vivify_663
    new $P1135, "Undef"
  vivify_663:
    add $P1136, $P1135, 1
    store_lex "$count", $P1136
  if_1126_end:
.annotate 'line', 772
    new $P1137, "Integer"
    assign $P1137, 1
    find_lex $P1138, "$_"
    unless_null $P1138, vivify_664
    new $P1138, "Undef"
  vivify_664:
    find_lex $P1139, "%capnames"
    unless_null $P1139, vivify_665
    $P1139 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1139
  vivify_665:
    set $P1139[$P1138], $P1137
.annotate 'line', 770
    .return ($P1137)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1063"  :anon :subid("181_1303857426.514") :outer("177_1303857426.514")
    .param pmc param_1066
.annotate 'line', 754
    .const 'Sub' $P1075 = "182_1303857426.514" 
    capture_lex $P1075
.annotate 'line', 755
    $P1065 = root_new ['parrot';'Hash']
    .lex "%x", $P1065
    .lex "$_", param_1066
    find_lex $P1067, "$_"
    unless_null $P1067, vivify_668
    new $P1067, "Undef"
  vivify_668:
    find_lex $P1068, "$count"
    unless_null $P1068, vivify_669
    new $P1068, "Undef"
  vivify_669:
    $P1069 = "capnames"($P1067, $P1068)
    store_lex "%x", $P1069
.annotate 'line', 756
    find_lex $P1071, "%x"
    unless_null $P1071, vivify_670
    $P1071 = root_new ['parrot';'Hash']
  vivify_670:
    defined $I1072, $P1071
    unless $I1072, for_undef_671
    iter $P1070, $P1071
    new $P1089, 'ExceptionHandler'
    set_label $P1089, loop1088_handler
    $P1089."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1089
  loop1088_test:
    unless $P1070, loop1088_done
    shift $P1073, $P1070
  loop1088_redo:
    .const 'Sub' $P1075 = "182_1303857426.514" 
    capture_lex $P1075
    $P1075($P1073)
  loop1088_next:
    goto loop1088_test
  loop1088_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1090, exception, 'type'
    eq $P1090, .CONTROL_LOOP_NEXT, loop1088_next
    eq $P1090, .CONTROL_LOOP_REDO, loop1088_redo
  loop1088_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 759
    find_lex $P1091, "%x"
    unless_null $P1091, vivify_680
    $P1091 = root_new ['parrot';'Hash']
  vivify_680:
    set $P1092, $P1091[""]
    unless_null $P1092, vivify_681
    new $P1092, "Undef"
  vivify_681:
    store_lex "$count", $P1092
.annotate 'line', 754
    .return ($P1092)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1074"  :anon :subid("182_1303857426.514") :outer("181_1303857426.514")
    .param pmc param_1076
.annotate 'line', 756
    .lex "$_", param_1076
.annotate 'line', 757
    find_lex $P1077, "$_"
    unless_null $P1077, vivify_672
    new $P1077, "Undef"
  vivify_672:
    find_lex $P1078, "%capnames"
    unless_null $P1078, vivify_673
    $P1078 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1079, $P1078[$P1077]
    unless_null $P1079, vivify_674
    new $P1079, "Undef"
  vivify_674:
    set $N1080, $P1079
    new $P1081, 'Float'
    set $P1081, $N1080
    find_lex $P1082, "$_"
    unless_null $P1082, vivify_675
    new $P1082, "Undef"
  vivify_675:
    find_lex $P1083, "%x"
    unless_null $P1083, vivify_676
    $P1083 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1084, $P1083[$P1082]
    unless_null $P1084, vivify_677
    new $P1084, "Undef"
  vivify_677:
    add $P1085, $P1081, $P1084
    find_lex $P1086, "$_"
    unless_null $P1086, vivify_678
    new $P1086, "Undef"
  vivify_678:
    find_lex $P1087, "%capnames"
    unless_null $P1087, vivify_679
    $P1087 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1087
  vivify_679:
    set $P1087[$P1086], $P1085
.annotate 'line', 756
    .return ($P1085)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block996"  :anon :subid("178_1303857426.514") :outer("177_1303857426.514")
.annotate 'line', 740
    .const 'Sub' $P1006 = "179_1303857426.514" 
    capture_lex $P1006
.annotate 'line', 741
    new $P998, "Undef"
    .lex "$max", $P998
    find_lex $P999, "$count"
    unless_null $P999, vivify_682
    new $P999, "Undef"
  vivify_682:
    store_lex "$max", $P999
.annotate 'line', 742
    find_lex $P1001, "$ast"
    unless_null $P1001, vivify_683
    new $P1001, "Undef"
  vivify_683:
    $P1002 = $P1001."list"()
    defined $I1003, $P1002
    unless $I1003, for_undef_684
    iter $P1000, $P1002
    new $P1051, 'ExceptionHandler'
    set_label $P1051, loop1050_handler
    $P1051."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1051
  loop1050_test:
    unless $P1000, loop1050_done
    shift $P1004, $P1000
  loop1050_redo:
    .const 'Sub' $P1006 = "179_1303857426.514" 
    capture_lex $P1006
    $P1006($P1004)
  loop1050_next:
    goto loop1050_test
  loop1050_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1052, exception, 'type'
    eq $P1052, .CONTROL_LOOP_NEXT, loop1050_next
    eq $P1052, .CONTROL_LOOP_REDO, loop1050_redo
  loop1050_done:
    pop_eh 
  for_undef_684:
.annotate 'line', 751
    find_lex $P1053, "$max"
    unless_null $P1053, vivify_702
    new $P1053, "Undef"
  vivify_702:
    store_lex "$count", $P1053
.annotate 'line', 740
    .return ($P1053)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1005"  :anon :subid("179_1303857426.514") :outer("178_1303857426.514")
    .param pmc param_1008
.annotate 'line', 742
    .const 'Sub' $P1017 = "180_1303857426.514" 
    capture_lex $P1017
.annotate 'line', 743
    $P1007 = root_new ['parrot';'Hash']
    .lex "%x", $P1007
    .lex "$_", param_1008
    find_lex $P1009, "$_"
    unless_null $P1009, vivify_685
    new $P1009, "Undef"
  vivify_685:
    find_lex $P1010, "$count"
    unless_null $P1010, vivify_686
    new $P1010, "Undef"
  vivify_686:
    $P1011 = "capnames"($P1009, $P1010)
    store_lex "%x", $P1011
.annotate 'line', 744
    find_lex $P1013, "%x"
    unless_null $P1013, vivify_687
    $P1013 = root_new ['parrot';'Hash']
  vivify_687:
    defined $I1014, $P1013
    unless $I1014, for_undef_688
    iter $P1012, $P1013
    new $P1038, 'ExceptionHandler'
    set_label $P1038, loop1037_handler
    $P1038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1038
  loop1037_test:
    unless $P1012, loop1037_done
    shift $P1015, $P1012
  loop1037_redo:
    .const 'Sub' $P1017 = "180_1303857426.514" 
    capture_lex $P1017
    $P1017($P1015)
  loop1037_next:
    goto loop1037_test
  loop1037_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1039, exception, 'type'
    eq $P1039, .CONTROL_LOOP_NEXT, loop1037_next
    eq $P1039, .CONTROL_LOOP_REDO, loop1037_redo
  loop1037_done:
    pop_eh 
  for_undef_688:
.annotate 'line', 749
    find_lex $P1042, "%x"
    unless_null $P1042, vivify_697
    $P1042 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1043, $P1042[""]
    unless_null $P1043, vivify_698
    new $P1043, "Undef"
  vivify_698:
    set $N1044, $P1043
    find_lex $P1045, "$max"
    unless_null $P1045, vivify_699
    new $P1045, "Undef"
  vivify_699:
    set $N1046, $P1045
    isgt $I1047, $N1044, $N1046
    if $I1047, if_1041
    new $P1040, 'Integer'
    set $P1040, $I1047
    goto if_1041_end
  if_1041:
    find_lex $P1048, "%x"
    unless_null $P1048, vivify_700
    $P1048 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1049, $P1048[""]
    unless_null $P1049, vivify_701
    new $P1049, "Undef"
  vivify_701:
    store_lex "$max", $P1049
    set $P1040, $P1049
  if_1041_end:
.annotate 'line', 742
    .return ($P1040)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1016"  :anon :subid("180_1303857426.514") :outer("179_1303857426.514")
    .param pmc param_1018
.annotate 'line', 744
    .lex "$_", param_1018
.annotate 'line', 745
    find_lex $P1023, "$_"
    unless_null $P1023, vivify_689
    new $P1023, "Undef"
  vivify_689:
    find_lex $P1024, "%capnames"
    unless_null $P1024, vivify_690
    $P1024 = root_new ['parrot';'Hash']
  vivify_690:
    set $P1025, $P1024[$P1023]
    unless_null $P1025, vivify_691
    new $P1025, "Undef"
  vivify_691:
    set $N1026, $P1025
    islt $I1027, $N1026, 2.0
    if $I1027, if_1022
    new $P1021, 'Integer'
    set $P1021, $I1027
    goto if_1022_end
  if_1022:
    find_lex $P1028, "$_"
    unless_null $P1028, vivify_692
    new $P1028, "Undef"
  vivify_692:
    find_lex $P1029, "%x"
    unless_null $P1029, vivify_693
    $P1029 = root_new ['parrot';'Hash']
  vivify_693:
    set $P1030, $P1029[$P1028]
    unless_null $P1030, vivify_694
    new $P1030, "Undef"
  vivify_694:
    set $N1031, $P1030
    iseq $I1032, $N1031, 1.0
    new $P1021, 'Integer'
    set $P1021, $I1032
  if_1022_end:
    if $P1021, if_1020
    new $P1034, "Integer"
    assign $P1034, 2
    set $P1019, $P1034
    goto if_1020_end
  if_1020:
    new $P1033, "Integer"
    assign $P1033, 1
    set $P1019, $P1033
  if_1020_end:
.annotate 'line', 746
    find_lex $P1035, "$_"
    unless_null $P1035, vivify_695
    new $P1035, "Undef"
  vivify_695:
    find_lex $P1036, "%capnames"
    unless_null $P1036, vivify_696
    $P1036 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1036
  vivify_696:
    set $P1036[$P1035], $P1019
.annotate 'line', 744
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1237
    .param pmc param_1238
.annotate 'line', 803
    .lex "$ast", param_1237
    .lex "$backmod", param_1238
.annotate 'line', 804
    find_lex $P1240, "$backmod"
    unless_null $P1240, vivify_706
    new $P1240, "Undef"
  vivify_706:
    set $S1241, $P1240
    iseq $I1242, $S1241, ":"
    if $I1242, if_1239
.annotate 'line', 805
    find_lex $P1247, "$backmod"
    unless_null $P1247, vivify_707
    new $P1247, "Undef"
  vivify_707:
    set $S1248, $P1247
    iseq $I1249, $S1248, ":?"
    unless $I1249, unless_1246
    new $P1245, 'Integer'
    set $P1245, $I1249
    goto unless_1246_end
  unless_1246:
    find_lex $P1250, "$backmod"
    unless_null $P1250, vivify_708
    new $P1250, "Undef"
  vivify_708:
    set $S1251, $P1250
    iseq $I1252, $S1251, "?"
    new $P1245, 'Integer'
    set $P1245, $I1252
  unless_1246_end:
    if $P1245, if_1244
.annotate 'line', 806
    find_lex $P1257, "$backmod"
    unless_null $P1257, vivify_709
    new $P1257, "Undef"
  vivify_709:
    set $S1258, $P1257
    iseq $I1259, $S1258, ":!"
    unless $I1259, unless_1256
    new $P1255, 'Integer'
    set $P1255, $I1259
    goto unless_1256_end
  unless_1256:
    find_lex $P1260, "$backmod"
    unless_null $P1260, vivify_710
    new $P1260, "Undef"
  vivify_710:
    set $S1261, $P1260
    iseq $I1262, $S1261, "!"
    new $P1255, 'Integer'
    set $P1255, $I1262
  unless_1256_end:
    unless $P1255, if_1254_end
    find_lex $P1263, "$ast"
    unless_null $P1263, vivify_711
    new $P1263, "Undef"
  vivify_711:
    $P1263."backtrack"("g")
  if_1254_end:
    goto if_1244_end
  if_1244:
.annotate 'line', 805
    find_lex $P1253, "$ast"
    unless_null $P1253, vivify_712
    new $P1253, "Undef"
  vivify_712:
    $P1253."backtrack"("f")
  if_1244_end:
    goto if_1239_end
  if_1239:
.annotate 'line', 804
    find_lex $P1243, "$ast"
    unless_null $P1243, vivify_713
    new $P1243, "Undef"
  vivify_713:
    $P1243."backtrack"("r")
  if_1239_end:
    find_lex $P1264, "$ast"
    unless_null $P1264, vivify_714
    new $P1264, "Undef"
  vivify_714:
.annotate 'line', 803
    .return ($P1264)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("191_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1278
    .param pmc param_1279
.annotate 'line', 226
    .lex "self", param_1278
    .lex "$/", param_1279
.annotate 'line', 227
    find_lex $P1280, "$/"
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_717
    $P1283 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1284, $P1283["quote_EXPR"]
    unless_null $P1284, vivify_718
    new $P1284, "Undef"
  vivify_718:
    if $P1284, if_1282
    find_lex $P1288, "$/"
    unless_null $P1288, vivify_719
    $P1288 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1289, $P1288["val"]
    unless_null $P1289, vivify_720
    new $P1289, "Undef"
  vivify_720:
    set $N1290, $P1289
    new $P1281, 'Float'
    set $P1281, $N1290
    goto if_1282_end
  if_1282:
    find_lex $P1285, "$/"
    unless_null $P1285, vivify_721
    $P1285 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1286, $P1285["quote_EXPR"]
    unless_null $P1286, vivify_722
    new $P1286, "Undef"
  vivify_722:
    $P1287 = $P1286."ast"()
    set $P1281, $P1287
  if_1282_end:
    $P1291 = $P1280."!make"($P1281)
.annotate 'line', 226
    .return ($P1291)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("192_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1293
    .param pmc param_1294
.annotate 'line', 230
    .const 'Sub' $P1307 = "193_1303857426.514" 
    capture_lex $P1307
    .lex "self", param_1293
    .lex "$/", param_1294
.annotate 'line', 231
    new $P1295, "Undef"
    .lex "$past", $P1295
    get_hll_global $P1296, "GLOBAL"
    nqp_get_package_through_who $P1297, $P1296, "PAST"
    get_who $P1298, $P1297
    set $P1299, $P1298["Op"]
    $P1300 = $P1299."new"("list" :named("pasttype"))
    store_lex "$past", $P1300
.annotate 'line', 232
    find_lex $P1302, "$/"
    unless_null $P1302, vivify_723
    $P1302 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1303, $P1302["arg"]
    unless_null $P1303, vivify_724
    new $P1303, "Undef"
  vivify_724:
    defined $I1304, $P1303
    unless $I1304, for_undef_725
    iter $P1301, $P1303
    new $P1314, 'ExceptionHandler'
    set_label $P1314, loop1313_handler
    $P1314."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1314
  loop1313_test:
    unless $P1301, loop1313_done
    shift $P1305, $P1301
  loop1313_redo:
    .const 'Sub' $P1307 = "193_1303857426.514" 
    capture_lex $P1307
    $P1307($P1305)
  loop1313_next:
    goto loop1313_test
  loop1313_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1315, exception, 'type'
    eq $P1315, .CONTROL_LOOP_NEXT, loop1313_next
    eq $P1315, .CONTROL_LOOP_REDO, loop1313_redo
  loop1313_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 233
    find_lex $P1316, "$/"
    find_lex $P1317, "$past"
    unless_null $P1317, vivify_728
    new $P1317, "Undef"
  vivify_728:
    $P1318 = $P1316."!make"($P1317)
.annotate 'line', 230
    .return ($P1318)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1306"  :anon :subid("193_1303857426.514") :outer("192_1303857426.514")
    .param pmc param_1308
.annotate 'line', 232
    .lex "$_", param_1308
    find_lex $P1309, "$past"
    unless_null $P1309, vivify_726
    new $P1309, "Undef"
  vivify_726:
    find_lex $P1310, "$_"
    unless_null $P1310, vivify_727
    new $P1310, "Undef"
  vivify_727:
    $P1311 = $P1310."ast"()
    $P1312 = $P1309."push"($P1311)
    .return ($P1312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("194_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1320
    .param pmc param_1321
.annotate 'line', 236
    .lex "self", param_1320
    .lex "$/", param_1321
.annotate 'line', 237
    new $P1322, "Undef"
    .lex "$past", $P1322
    find_lex $P1323, "$/"
    unless_null $P1323, vivify_729
    $P1323 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1324, $P1323["nibbler"]
    unless_null $P1324, vivify_730
    new $P1324, "Undef"
  vivify_730:
    $P1325 = $P1324."ast"()
    $P1326 = "buildsub"($P1325)
    store_lex "$past", $P1326
.annotate 'line', 238
    find_lex $P1327, "$past"
    unless_null $P1327, vivify_731
    new $P1327, "Undef"
  vivify_731:
    find_lex $P1328, "$/"
    unless_null $P1328, vivify_732
    new $P1328, "Undef"
  vivify_732:
    $P1327."node"($P1328)
.annotate 'line', 239
    find_lex $P1329, "$/"
    find_lex $P1330, "$past"
    unless_null $P1330, vivify_733
    new $P1330, "Undef"
  vivify_733:
    $P1331 = $P1329."!make"($P1330)
.annotate 'line', 236
    .return ($P1331)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("195_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1335
    .param pmc param_1336
    .param pmc param_1337 :optional
    .param int has_param_1337 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1381 = "197_1303857426.514" 
    capture_lex $P1381
    .const 'Sub' $P1345 = "196_1303857426.514" 
    capture_lex $P1345
    new $P1334, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1334, control_1333
    push_eh $P1334
    .lex "self", param_1335
    .lex "$/", param_1336
    if has_param_1337, optparam_734
    new $P1338, "Undef"
    set param_1337, $P1338
  optparam_734:
    .lex "$key", param_1337
.annotate 'line', 251
    new $P1339, "Undef"
    .lex "$past", $P1339
.annotate 'line', 243
    find_lex $P1341, "$key"
    unless_null $P1341, vivify_735
    new $P1341, "Undef"
  vivify_735:
    set $S1342, $P1341
    iseq $I1343, $S1342, "open"
    unless $I1343, if_1340_end
    .const 'Sub' $P1345 = "196_1303857426.514" 
    capture_lex $P1345
    $P1345()
  if_1340_end:
.annotate 'line', 250
    find_lex $P1360, "$?PACKAGE"
    get_who $P1361, $P1360
    set $P1362, $P1361["@MODIFIERS"]
    unless_null $P1362, vivify_741
    $P1362 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    $P1362."shift"()
    find_lex $P1363, "$past"
    unless_null $P1363, vivify_742
    new $P1363, "Undef"
  vivify_742:
.annotate 'line', 252
    find_lex $P1365, "$/"
    unless_null $P1365, vivify_743
    $P1365 = root_new ['parrot';'Hash']
  vivify_743:
    set $P1366, $P1365["termconj"]
    unless_null $P1366, vivify_744
    new $P1366, "Undef"
  vivify_744:
    set $N1367, $P1366
    isgt $I1368, $N1367, 1.0
    if $I1368, if_1364
.annotate 'line', 259
    find_lex $P1390, "$/"
    unless_null $P1390, vivify_745
    $P1390 = root_new ['parrot';'Hash']
  vivify_745:
    set $P1391, $P1390["termconj"]
    unless_null $P1391, vivify_746
    $P1391 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P1392, $P1391[0]
    unless_null $P1392, vivify_747
    new $P1392, "Undef"
  vivify_747:
    $P1393 = $P1392."ast"()
    store_lex "$past", $P1393
.annotate 'line', 258
    goto if_1364_end
  if_1364:
.annotate 'line', 253
    get_hll_global $P1369, "GLOBAL"
    nqp_get_package_through_who $P1370, $P1369, "PAST"
    get_who $P1371, $P1370
    set $P1372, $P1371["Regex"]
    find_lex $P1373, "$/"
    unless_null $P1373, vivify_748
    new $P1373, "Undef"
  vivify_748:
    $P1374 = $P1372."new"("alt" :named("pasttype"), $P1373 :named("node"))
    store_lex "$past", $P1374
.annotate 'line', 254
    find_lex $P1376, "$/"
    unless_null $P1376, vivify_749
    $P1376 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1377, $P1376["termconj"]
    unless_null $P1377, vivify_750
    new $P1377, "Undef"
  vivify_750:
    defined $I1378, $P1377
    unless $I1378, for_undef_751
    iter $P1375, $P1377
    new $P1388, 'ExceptionHandler'
    set_label $P1388, loop1387_handler
    $P1388."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1388
  loop1387_test:
    unless $P1375, loop1387_done
    shift $P1379, $P1375
  loop1387_redo:
    .const 'Sub' $P1381 = "197_1303857426.514" 
    capture_lex $P1381
    $P1381($P1379)
  loop1387_next:
    goto loop1387_test
  loop1387_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1389, exception, 'type'
    eq $P1389, .CONTROL_LOOP_NEXT, loop1387_next
    eq $P1389, .CONTROL_LOOP_REDO, loop1387_redo
  loop1387_done:
    pop_eh 
  for_undef_751:
  if_1364_end:
.annotate 'line', 261
    find_lex $P1394, "$/"
    find_lex $P1395, "$past"
    unless_null $P1395, vivify_754
    new $P1395, "Undef"
  vivify_754:
    $P1396 = $P1394."!make"($P1395)
.annotate 'line', 242
    .return ($P1396)
  control_1333:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1397, exception, "payload"
    .return ($P1397)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1344"  :anon :subid("196_1303857426.514") :outer("195_1303857426.514")
.annotate 'line', 244
    $P1346 = root_new ['parrot';'Hash']
    .lex "%old", $P1346
.annotate 'line', 245
    $P1347 = root_new ['parrot';'Hash']
    .lex "%new", $P1347
.annotate 'line', 244
    find_lex $P1348, "$?PACKAGE"
    get_who $P1349, $P1348
    set $P1350, $P1349["@MODIFIERS"]
    unless_null $P1350, vivify_736
    $P1350 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1351, $P1350[0]
    unless_null $P1351, vivify_737
    new $P1351, "Undef"
  vivify_737:
    store_lex "%old", $P1351
.annotate 'line', 245
    find_lex $P1352, "%old"
    unless_null $P1352, vivify_738
    $P1352 = root_new ['parrot';'Hash']
  vivify_738:
    clone $P1353, $P1352
    store_lex "%new", $P1353
.annotate 'line', 246
    find_lex $P1354, "$?PACKAGE"
    get_who $P1355, $P1354
    set $P1356, $P1355["@MODIFIERS"]
    unless_null $P1356, vivify_739
    $P1356 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1357, "%new"
    unless_null $P1357, vivify_740
    $P1357 = root_new ['parrot';'Hash']
  vivify_740:
    $P1356."unshift"($P1357)
.annotate 'line', 247
    new $P1358, "Exception"
    set $P1358['type'], .CONTROL_RETURN
    new $P1359, "Integer"
    assign $P1359, 1
    setattribute $P1358, 'payload', $P1359
    throw $P1358
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1380"  :anon :subid("197_1303857426.514") :outer("195_1303857426.514")
    .param pmc param_1382
.annotate 'line', 254
    .lex "$_", param_1382
.annotate 'line', 255
    find_lex $P1383, "$past"
    unless_null $P1383, vivify_752
    new $P1383, "Undef"
  vivify_752:
    find_lex $P1384, "$_"
    unless_null $P1384, vivify_753
    new $P1384, "Undef"
  vivify_753:
    $P1385 = $P1384."ast"()
    $P1386 = $P1383."push"($P1385)
.annotate 'line', 254
    .return ($P1386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("198_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'line', 264
    .const 'Sub' $P1420 = "199_1303857426.514" 
    capture_lex $P1420
    .lex "self", param_1399
    .lex "$/", param_1400
.annotate 'line', 265
    new $P1401, "Undef"
    .lex "$past", $P1401
.annotate 'line', 264
    find_lex $P1402, "$past"
    unless_null $P1402, vivify_755
    new $P1402, "Undef"
  vivify_755:
.annotate 'line', 266
    find_lex $P1404, "$/"
    unless_null $P1404, vivify_756
    $P1404 = root_new ['parrot';'Hash']
  vivify_756:
    set $P1405, $P1404["termish"]
    unless_null $P1405, vivify_757
    new $P1405, "Undef"
  vivify_757:
    set $N1406, $P1405
    isgt $I1407, $N1406, 1.0
    if $I1407, if_1403
.annotate 'line', 273
    find_lex $P1429, "$/"
    unless_null $P1429, vivify_758
    $P1429 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1430, $P1429["termish"]
    unless_null $P1430, vivify_759
    $P1430 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1431, $P1430[0]
    unless_null $P1431, vivify_760
    new $P1431, "Undef"
  vivify_760:
    $P1432 = $P1431."ast"()
    store_lex "$past", $P1432
.annotate 'line', 272
    goto if_1403_end
  if_1403:
.annotate 'line', 267
    get_hll_global $P1408, "GLOBAL"
    nqp_get_package_through_who $P1409, $P1408, "PAST"
    get_who $P1410, $P1409
    set $P1411, $P1410["Regex"]
    find_lex $P1412, "$/"
    unless_null $P1412, vivify_761
    new $P1412, "Undef"
  vivify_761:
    $P1413 = $P1411."new"("conj" :named("pasttype"), $P1412 :named("node"))
    store_lex "$past", $P1413
.annotate 'line', 268
    find_lex $P1415, "$/"
    unless_null $P1415, vivify_762
    $P1415 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1416, $P1415["termish"]
    unless_null $P1416, vivify_763
    new $P1416, "Undef"
  vivify_763:
    defined $I1417, $P1416
    unless $I1417, for_undef_764
    iter $P1414, $P1416
    new $P1427, 'ExceptionHandler'
    set_label $P1427, loop1426_handler
    $P1427."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1427
  loop1426_test:
    unless $P1414, loop1426_done
    shift $P1418, $P1414
  loop1426_redo:
    .const 'Sub' $P1420 = "199_1303857426.514" 
    capture_lex $P1420
    $P1420($P1418)
  loop1426_next:
    goto loop1426_test
  loop1426_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1428, exception, 'type'
    eq $P1428, .CONTROL_LOOP_NEXT, loop1426_next
    eq $P1428, .CONTROL_LOOP_REDO, loop1426_redo
  loop1426_done:
    pop_eh 
  for_undef_764:
  if_1403_end:
.annotate 'line', 275
    find_lex $P1433, "$/"
    find_lex $P1434, "$past"
    unless_null $P1434, vivify_767
    new $P1434, "Undef"
  vivify_767:
    $P1435 = $P1433."!make"($P1434)
.annotate 'line', 264
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1419"  :anon :subid("199_1303857426.514") :outer("198_1303857426.514")
    .param pmc param_1421
.annotate 'line', 268
    .lex "$_", param_1421
.annotate 'line', 269
    find_lex $P1422, "$past"
    unless_null $P1422, vivify_765
    new $P1422, "Undef"
  vivify_765:
    find_lex $P1423, "$_"
    unless_null $P1423, vivify_766
    new $P1423, "Undef"
  vivify_766:
    $P1424 = $P1423."ast"()
    $P1425 = $P1422."push"($P1424)
.annotate 'line', 268
    .return ($P1425)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("200_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1437
    .param pmc param_1438
.annotate 'line', 278
    .const 'Sub' $P1454 = "201_1303857426.514" 
    capture_lex $P1454
    .lex "self", param_1437
    .lex "$/", param_1438
.annotate 'line', 279
    new $P1439, "Undef"
    .lex "$past", $P1439
.annotate 'line', 280
    new $P1440, "Undef"
    .lex "$lastlit", $P1440
.annotate 'line', 279
    get_hll_global $P1441, "GLOBAL"
    nqp_get_package_through_who $P1442, $P1441, "PAST"
    get_who $P1443, $P1442
    set $P1444, $P1443["Regex"]
    find_lex $P1445, "$/"
    unless_null $P1445, vivify_768
    new $P1445, "Undef"
  vivify_768:
    $P1446 = $P1444."new"("concat" :named("pasttype"), $P1445 :named("node"))
    store_lex "$past", $P1446
.annotate 'line', 280
    new $P1447, "Integer"
    assign $P1447, 0
    store_lex "$lastlit", $P1447
.annotate 'line', 281
    find_lex $P1449, "$/"
    unless_null $P1449, vivify_769
    $P1449 = root_new ['parrot';'Hash']
  vivify_769:
    set $P1450, $P1449["noun"]
    unless_null $P1450, vivify_770
    new $P1450, "Undef"
  vivify_770:
    defined $I1451, $P1450
    unless $I1451, for_undef_771
    iter $P1448, $P1450
    new $P1506, 'ExceptionHandler'
    set_label $P1506, loop1505_handler
    $P1506."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1506
  loop1505_test:
    unless $P1448, loop1505_done
    shift $P1452, $P1448
  loop1505_redo:
    .const 'Sub' $P1454 = "201_1303857426.514" 
    capture_lex $P1454
    $P1454($P1452)
  loop1505_next:
    goto loop1505_test
  loop1505_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1507, exception, 'type'
    eq $P1507, .CONTROL_LOOP_NEXT, loop1505_next
    eq $P1507, .CONTROL_LOOP_REDO, loop1505_redo
  loop1505_done:
    pop_eh 
  for_undef_771:
.annotate 'line', 296
    find_lex $P1508, "$/"
    find_lex $P1509, "$past"
    unless_null $P1509, vivify_789
    new $P1509, "Undef"
  vivify_789:
    $P1510 = $P1508."!make"($P1509)
.annotate 'line', 278
    .return ($P1510)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1453"  :anon :subid("201_1303857426.514") :outer("200_1303857426.514")
    .param pmc param_1456
.annotate 'line', 282
    new $P1455, "Undef"
    .lex "$ast", $P1455
    .lex "$_", param_1456
    find_lex $P1457, "$_"
    unless_null $P1457, vivify_772
    new $P1457, "Undef"
  vivify_772:
    $P1458 = $P1457."ast"()
    store_lex "$ast", $P1458
.annotate 'line', 283
    find_lex $P1461, "$ast"
    unless_null $P1461, vivify_773
    new $P1461, "Undef"
  vivify_773:
    if $P1461, if_1460
    set $P1459, $P1461
    goto if_1460_end
  if_1460:
.annotate 'line', 284
    find_lex $P1468, "$lastlit"
    unless_null $P1468, vivify_774
    new $P1468, "Undef"
  vivify_774:
    if $P1468, if_1467
    set $P1466, $P1468
    goto if_1467_end
  if_1467:
    find_lex $P1469, "$ast"
    unless_null $P1469, vivify_775
    new $P1469, "Undef"
  vivify_775:
    $S1470 = $P1469."pasttype"()
    iseq $I1471, $S1470, "literal"
    new $P1466, 'Integer'
    set $P1466, $I1471
  if_1467_end:
    if $P1466, if_1465
    set $P1464, $P1466
    goto if_1465_end
  if_1465:
.annotate 'line', 285
    get_hll_global $P1472, "GLOBAL"
    nqp_get_package_through_who $P1473, $P1472, "PAST"
    get_who $P1474, $P1473
    set $P1475, $P1474["Node"]
    find_lex $P1476, "$ast"
    unless_null $P1476, vivify_776
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    set $P1477, $P1476[0]
    unless_null $P1477, vivify_777
    new $P1477, "Undef"
  vivify_777:
    $P1478 = $P1475."ACCEPTS"($P1477)
    isfalse $I1479, $P1478
    new $P1464, 'Integer'
    set $P1464, $I1479
  if_1465_end:
    if $P1464, if_1463
.annotate 'line', 289
    find_lex $P1486, "$past"
    unless_null $P1486, vivify_778
    new $P1486, "Undef"
  vivify_778:
    find_lex $P1487, "$ast"
    unless_null $P1487, vivify_779
    new $P1487, "Undef"
  vivify_779:
    $P1486."push"($P1487)
.annotate 'line', 290
    find_lex $P1492, "$ast"
    unless_null $P1492, vivify_780
    new $P1492, "Undef"
  vivify_780:
    $S1493 = $P1492."pasttype"()
    iseq $I1494, $S1493, "literal"
    if $I1494, if_1491
    new $P1490, 'Integer'
    set $P1490, $I1494
    goto if_1491_end
  if_1491:
.annotate 'line', 291
    get_hll_global $P1495, "GLOBAL"
    nqp_get_package_through_who $P1496, $P1495, "PAST"
    get_who $P1497, $P1496
    set $P1498, $P1497["Node"]
    find_lex $P1499, "$ast"
    unless_null $P1499, vivify_781
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_782
    new $P1500, "Undef"
  vivify_782:
    $P1501 = $P1498."ACCEPTS"($P1500)
    isfalse $I1502, $P1501
    new $P1490, 'Integer'
    set $P1490, $I1502
  if_1491_end:
    if $P1490, if_1489
    new $P1504, "Integer"
    assign $P1504, 0
    set $P1488, $P1504
    goto if_1489_end
  if_1489:
    find_lex $P1503, "$ast"
    unless_null $P1503, vivify_783
    new $P1503, "Undef"
  vivify_783:
    set $P1488, $P1503
  if_1489_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1488
.annotate 'line', 288
    set $P1462, $P1488
.annotate 'line', 285
    goto if_1463_end
  if_1463:
.annotate 'line', 286
    find_lex $P1480, "$lastlit"
    unless_null $P1480, vivify_784
    $P1480 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $P1481, $P1480[0]
    unless_null $P1481, vivify_785
    new $P1481, "Undef"
  vivify_785:
    find_lex $P1482, "$ast"
    unless_null $P1482, vivify_786
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1483, $P1482[0]
    unless_null $P1483, vivify_787
    new $P1483, "Undef"
  vivify_787:
    concat $P1484, $P1481, $P1483
    find_lex $P1485, "$lastlit"
    unless_null $P1485, vivify_788
    $P1485 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1485
  vivify_788:
    set $P1485[0], $P1484
.annotate 'line', 285
    set $P1462, $P1484
  if_1463_end:
.annotate 'line', 283
    set $P1459, $P1462
  if_1460_end:
.annotate 'line', 281
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("202_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 299
    .const 'Sub' $P1522 = "203_1303857426.514" 
    capture_lex $P1522
    .lex "self", param_1512
    .lex "$/", param_1513
.annotate 'line', 300
    new $P1514, "Undef"
    .lex "$past", $P1514
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_790
    $P1515 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1516, $P1515["atom"]
    unless_null $P1516, vivify_791
    new $P1516, "Undef"
  vivify_791:
    $P1517 = $P1516."ast"()
    store_lex "$past", $P1517
.annotate 'line', 301
    find_lex $P1519, "$/"
    unless_null $P1519, vivify_792
    $P1519 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1520, $P1519["quantifier"]
    unless_null $P1520, vivify_793
    new $P1520, "Undef"
  vivify_793:
    if $P1520, if_1518
.annotate 'line', 307
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_794
    $P1537 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1538, $P1537["backmod"]
    unless_null $P1538, vivify_795
    $P1538 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    set $P1539, $P1538[0]
    unless_null $P1539, vivify_796
    new $P1539, "Undef"
  vivify_796:
    unless $P1539, if_1536_end
    find_lex $P1540, "$past"
    unless_null $P1540, vivify_797
    new $P1540, "Undef"
  vivify_797:
    find_lex $P1541, "$/"
    unless_null $P1541, vivify_798
    $P1541 = root_new ['parrot';'Hash']
  vivify_798:
    set $P1542, $P1541["backmod"]
    unless_null $P1542, vivify_799
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    set $P1543, $P1542[0]
    unless_null $P1543, vivify_800
    new $P1543, "Undef"
  vivify_800:
    "backmod"($P1540, $P1543)
  if_1536_end:
    goto if_1518_end
  if_1518:
.annotate 'line', 301
    .const 'Sub' $P1522 = "203_1303857426.514" 
    capture_lex $P1522
    $P1522()
  if_1518_end:
.annotate 'line', 308
    find_lex $P1549, "$past"
    unless_null $P1549, vivify_809
    new $P1549, "Undef"
  vivify_809:
    if $P1549, if_1548
    set $P1547, $P1549
    goto if_1548_end
  if_1548:
    find_lex $P1550, "$past"
    unless_null $P1550, vivify_810
    new $P1550, "Undef"
  vivify_810:
    $P1551 = $P1550."backtrack"()
    isfalse $I1552, $P1551
    new $P1547, 'Integer'
    set $P1547, $I1552
  if_1548_end:
    if $P1547, if_1546
    set $P1545, $P1547
    goto if_1546_end
  if_1546:
    find_lex $P1553, "$?PACKAGE"
    get_who $P1554, $P1553
    set $P1555, $P1554["@MODIFIERS"]
    unless_null $P1555, vivify_811
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P1556, $P1555[0]
    unless_null $P1556, vivify_812
    $P1556 = root_new ['parrot';'Hash']
  vivify_812:
    set $P1557, $P1556["r"]
    unless_null $P1557, vivify_813
    new $P1557, "Undef"
  vivify_813:
    set $P1545, $P1557
  if_1546_end:
    unless $P1545, if_1544_end
.annotate 'line', 309
    find_lex $P1558, "$past"
    unless_null $P1558, vivify_814
    new $P1558, "Undef"
  vivify_814:
    $P1558."backtrack"("r")
  if_1544_end:
.annotate 'line', 311
    find_lex $P1559, "$/"
    find_lex $P1560, "$past"
    unless_null $P1560, vivify_815
    new $P1560, "Undef"
  vivify_815:
    $P1561 = $P1559."!make"($P1560)
.annotate 'line', 299
    .return ($P1561)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1521"  :anon :subid("203_1303857426.514") :outer("202_1303857426.514")
.annotate 'line', 303
    new $P1523, "Undef"
    .lex "$qast", $P1523
.annotate 'line', 302
    find_lex $P1525, "$past"
    unless_null $P1525, vivify_801
    new $P1525, "Undef"
  vivify_801:
    isfalse $I1526, $P1525
    unless $I1526, if_1524_end
    find_lex $P1527, "$/"
    unless_null $P1527, vivify_802
    new $P1527, "Undef"
  vivify_802:
    $P1528 = $P1527."CURSOR"()
    $P1528."panic"("Quantifier follows nothing")
  if_1524_end:
.annotate 'line', 303
    find_lex $P1529, "$/"
    unless_null $P1529, vivify_803
    $P1529 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1530, $P1529["quantifier"]
    unless_null $P1530, vivify_804
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P1531, $P1530[0]
    unless_null $P1531, vivify_805
    new $P1531, "Undef"
  vivify_805:
    $P1532 = $P1531."ast"()
    store_lex "$qast", $P1532
.annotate 'line', 304
    find_lex $P1533, "$qast"
    unless_null $P1533, vivify_806
    new $P1533, "Undef"
  vivify_806:
    find_lex $P1534, "$past"
    unless_null $P1534, vivify_807
    new $P1534, "Undef"
  vivify_807:
    $P1533."unshift"($P1534)
.annotate 'line', 305
    find_lex $P1535, "$qast"
    unless_null $P1535, vivify_808
    new $P1535, "Undef"
  vivify_808:
    store_lex "$past", $P1535
.annotate 'line', 301
    .return ($P1535)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("204_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1563
    .param pmc param_1564
.annotate 'line', 314
    .lex "self", param_1563
    .lex "$/", param_1564
.annotate 'line', 315
    new $P1565, "Undef"
    .lex "$past", $P1565
.annotate 'line', 314
    find_lex $P1566, "$past"
    unless_null $P1566, vivify_816
    new $P1566, "Undef"
  vivify_816:
.annotate 'line', 316
    find_lex $P1568, "$/"
    unless_null $P1568, vivify_817
    $P1568 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1569, $P1568["metachar"]
    unless_null $P1569, vivify_818
    new $P1569, "Undef"
  vivify_818:
    if $P1569, if_1567
.annotate 'line', 318
    get_hll_global $P1573, "GLOBAL"
    nqp_get_package_through_who $P1574, $P1573, "PAST"
    get_who $P1575, $P1574
    set $P1576, $P1575["Regex"]
    find_lex $P1577, "$/"
    unless_null $P1577, vivify_819
    new $P1577, "Undef"
  vivify_819:
    set $S1578, $P1577
    find_lex $P1579, "$/"
    unless_null $P1579, vivify_820
    new $P1579, "Undef"
  vivify_820:
    $P1580 = $P1576."new"($S1578, "literal" :named("pasttype"), $P1579 :named("node"))
    store_lex "$past", $P1580
.annotate 'line', 319
    find_lex $P1582, "$?PACKAGE"
    get_who $P1583, $P1582
    set $P1584, $P1583["@MODIFIERS"]
    unless_null $P1584, vivify_821
    $P1584 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P1585, $P1584[0]
    unless_null $P1585, vivify_822
    $P1585 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1586, $P1585["i"]
    unless_null $P1586, vivify_823
    new $P1586, "Undef"
  vivify_823:
    unless $P1586, if_1581_end
    find_lex $P1587, "$past"
    unless_null $P1587, vivify_824
    new $P1587, "Undef"
  vivify_824:
    $P1587."subtype"("ignorecase")
  if_1581_end:
.annotate 'line', 317
    goto if_1567_end
  if_1567:
.annotate 'line', 316
    find_lex $P1570, "$/"
    unless_null $P1570, vivify_825
    $P1570 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1571, $P1570["metachar"]
    unless_null $P1571, vivify_826
    new $P1571, "Undef"
  vivify_826:
    $P1572 = $P1571."ast"()
    store_lex "$past", $P1572
  if_1567_end:
.annotate 'line', 321
    find_lex $P1588, "$/"
    find_lex $P1589, "$past"
    unless_null $P1589, vivify_827
    new $P1589, "Undef"
  vivify_827:
    $P1590 = $P1588."!make"($P1589)
.annotate 'line', 314
    .return ($P1590)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("205_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1592
    .param pmc param_1593
.annotate 'line', 324
    .lex "self", param_1592
    .lex "$/", param_1593
.annotate 'line', 325
    new $P1594, "Undef"
    .lex "$past", $P1594
    get_hll_global $P1595, "GLOBAL"
    nqp_get_package_through_who $P1596, $P1595, "PAST"
    get_who $P1597, $P1596
    set $P1598, $P1597["Regex"]
    find_lex $P1599, "$/"
    unless_null $P1599, vivify_828
    new $P1599, "Undef"
  vivify_828:
    $P1600 = $P1598."new"("quant" :named("pasttype"), $P1599 :named("node"))
    store_lex "$past", $P1600
.annotate 'line', 326
    find_lex $P1601, "$/"
    find_lex $P1602, "$past"
    unless_null $P1602, vivify_829
    new $P1602, "Undef"
  vivify_829:
    find_lex $P1603, "$/"
    unless_null $P1603, vivify_830
    $P1603 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1604, $P1603["backmod"]
    unless_null $P1604, vivify_831
    new $P1604, "Undef"
  vivify_831:
    $P1605 = "backmod"($P1602, $P1604)
    $P1606 = $P1601."!make"($P1605)
.annotate 'line', 324
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("206_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1608
    .param pmc param_1609
.annotate 'line', 329
    .lex "self", param_1608
    .lex "$/", param_1609
.annotate 'line', 330
    new $P1610, "Undef"
    .lex "$past", $P1610
    get_hll_global $P1611, "GLOBAL"
    nqp_get_package_through_who $P1612, $P1611, "PAST"
    get_who $P1613, $P1612
    set $P1614, $P1613["Regex"]
    find_lex $P1615, "$/"
    unless_null $P1615, vivify_832
    new $P1615, "Undef"
  vivify_832:
    $P1616 = $P1614."new"("quant" :named("pasttype"), 1 :named("min"), $P1615 :named("node"))
    store_lex "$past", $P1616
.annotate 'line', 331
    find_lex $P1617, "$/"
    find_lex $P1618, "$past"
    unless_null $P1618, vivify_833
    new $P1618, "Undef"
  vivify_833:
    find_lex $P1619, "$/"
    unless_null $P1619, vivify_834
    $P1619 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1620, $P1619["backmod"]
    unless_null $P1620, vivify_835
    new $P1620, "Undef"
  vivify_835:
    $P1621 = "backmod"($P1618, $P1620)
    $P1622 = $P1617."!make"($P1621)
.annotate 'line', 329
    .return ($P1622)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("207_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1624
    .param pmc param_1625
.annotate 'line', 334
    .lex "self", param_1624
    .lex "$/", param_1625
.annotate 'line', 335
    new $P1626, "Undef"
    .lex "$past", $P1626
    get_hll_global $P1627, "GLOBAL"
    nqp_get_package_through_who $P1628, $P1627, "PAST"
    get_who $P1629, $P1628
    set $P1630, $P1629["Regex"]
    find_lex $P1631, "$/"
    unless_null $P1631, vivify_836
    new $P1631, "Undef"
  vivify_836:
    $P1632 = $P1630."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1631 :named("node"))
    store_lex "$past", $P1632
.annotate 'line', 336
    find_lex $P1633, "$/"
    find_lex $P1634, "$past"
    unless_null $P1634, vivify_837
    new $P1634, "Undef"
  vivify_837:
    find_lex $P1635, "$/"
    unless_null $P1635, vivify_838
    $P1635 = root_new ['parrot';'Hash']
  vivify_838:
    set $P1636, $P1635["backmod"]
    unless_null $P1636, vivify_839
    new $P1636, "Undef"
  vivify_839:
    $P1637 = "backmod"($P1634, $P1636)
    $P1633."!make"($P1637)
.annotate 'line', 337
    find_lex $P1638, "$/"
    find_lex $P1639, "$past"
    unless_null $P1639, vivify_840
    new $P1639, "Undef"
  vivify_840:
    $P1640 = $P1638."!make"($P1639)
.annotate 'line', 334
    .return ($P1640)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("208_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1642
    .param pmc param_1643
.annotate 'line', 340
    .const 'Sub' $P1660 = "209_1303857426.514" 
    capture_lex $P1660
    .lex "self", param_1642
    .lex "$/", param_1643
.annotate 'line', 341
    new $P1644, "Undef"
    .lex "$past", $P1644
.annotate 'line', 342
    new $P1645, "Undef"
    .lex "$ws", $P1645
.annotate 'line', 340
    find_lex $P1646, "$past"
    unless_null $P1646, vivify_841
    new $P1646, "Undef"
  vivify_841:
.annotate 'line', 342
    find_lex $P1649, "$/"
    unless_null $P1649, vivify_842
    $P1649 = root_new ['parrot';'Hash']
  vivify_842:
    set $P1650, $P1649["normspace"]
    unless_null $P1650, vivify_843
    new $P1650, "Undef"
  vivify_843:
    if $P1650, if_1648
    set $P1647, $P1650
    goto if_1648_end
  if_1648:
    find_lex $P1651, "$?PACKAGE"
    get_who $P1652, $P1651
    set $P1653, $P1652["@MODIFIERS"]
    unless_null $P1653, vivify_844
    $P1653 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P1654, $P1653[0]
    unless_null $P1654, vivify_845
    $P1654 = root_new ['parrot';'Hash']
  vivify_845:
    set $P1655, $P1654["s"]
    unless_null $P1655, vivify_846
    new $P1655, "Undef"
  vivify_846:
    set $P1647, $P1655
  if_1648_end:
    store_lex "$ws", $P1647
.annotate 'line', 343
    find_lex $P1657, "$/"
    unless_null $P1657, vivify_847
    $P1657 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1658, $P1657["quantified_atom"]
    unless_null $P1658, vivify_848
    new $P1658, "Undef"
  vivify_848:
    if $P1658, if_1656
.annotate 'line', 359
    get_hll_global $P1690, "GLOBAL"
    nqp_get_package_through_who $P1691, $P1690, "PAST"
    get_who $P1692, $P1691
    set $P1693, $P1692["Regex"]
    find_lex $P1694, "$/"
    unless_null $P1694, vivify_849
    $P1694 = root_new ['parrot';'Hash']
  vivify_849:
    set $P1695, $P1694["min"]
    unless_null $P1695, vivify_850
    new $P1695, "Undef"
  vivify_850:
    set $N1696, $P1695
    find_lex $P1697, "$/"
    unless_null $P1697, vivify_851
    new $P1697, "Undef"
  vivify_851:
    $P1698 = $P1693."new"("quant" :named("pasttype"), $N1696 :named("min"), $P1697 :named("node"))
    store_lex "$past", $P1698
.annotate 'line', 360
    find_lex $P1700, "$/"
    unless_null $P1700, vivify_852
    $P1700 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1701, $P1700["max"]
    unless_null $P1701, vivify_853
    new $P1701, "Undef"
  vivify_853:
    isfalse $I1702, $P1701
    if $I1702, if_1699
.annotate 'line', 361
    find_lex $P1708, "$/"
    unless_null $P1708, vivify_854
    $P1708 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1709, $P1708["max"]
    unless_null $P1709, vivify_855
    $P1709 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1710, $P1709[0]
    unless_null $P1710, vivify_856
    new $P1710, "Undef"
  vivify_856:
    set $S1711, $P1710
    isne $I1712, $S1711, "*"
    unless $I1712, if_1707_end
    find_lex $P1713, "$past"
    unless_null $P1713, vivify_857
    new $P1713, "Undef"
  vivify_857:
    find_lex $P1714, "$/"
    unless_null $P1714, vivify_858
    $P1714 = root_new ['parrot';'Hash']
  vivify_858:
    set $P1715, $P1714["max"]
    unless_null $P1715, vivify_859
    $P1715 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P1716, $P1715[0]
    unless_null $P1716, vivify_860
    new $P1716, "Undef"
  vivify_860:
    set $N1717, $P1716
    $P1713."max"($N1717)
  if_1707_end:
    goto if_1699_end
  if_1699:
.annotate 'line', 360
    find_lex $P1703, "$past"
    unless_null $P1703, vivify_861
    new $P1703, "Undef"
  vivify_861:
    find_lex $P1704, "$/"
    unless_null $P1704, vivify_862
    $P1704 = root_new ['parrot';'Hash']
  vivify_862:
    set $P1705, $P1704["min"]
    unless_null $P1705, vivify_863
    new $P1705, "Undef"
  vivify_863:
    set $N1706, $P1705
    $P1703."max"($N1706)
  if_1699_end:
.annotate 'line', 362
    find_lex $P1719, "$ws"
    unless_null $P1719, vivify_864
    new $P1719, "Undef"
  vivify_864:
    unless $P1719, if_1718_end
    find_lex $P1720, "$past"
    unless_null $P1720, vivify_865
    new $P1720, "Undef"
  vivify_865:
    get_hll_global $P1721, "GLOBAL"
    nqp_get_package_through_who $P1722, $P1721, "PAST"
    get_who $P1723, $P1722
    set $P1724, $P1723["Regex"]
    $P1725 = $P1724."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1720."sep"($P1725)
  if_1718_end:
.annotate 'line', 358
    goto if_1656_end
  if_1656:
.annotate 'line', 343
    .const 'Sub' $P1660 = "209_1303857426.514" 
    capture_lex $P1660
    $P1660()
  if_1656_end:
.annotate 'line', 366
    find_lex $P1726, "$/"
    find_lex $P1727, "$past"
    unless_null $P1727, vivify_872
    new $P1727, "Undef"
  vivify_872:
    find_lex $P1728, "$/"
    unless_null $P1728, vivify_873
    $P1728 = root_new ['parrot';'Hash']
  vivify_873:
    set $P1729, $P1728["backmod"]
    unless_null $P1729, vivify_874
    new $P1729, "Undef"
  vivify_874:
    $P1730 = "backmod"($P1727, $P1729)
    $P1731 = $P1726."!make"($P1730)
.annotate 'line', 340
    .return ($P1731)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1659"  :anon :subid("209_1303857426.514") :outer("208_1303857426.514")
.annotate 'line', 344
    new $P1661, "Undef"
    .lex "$ast", $P1661
    find_lex $P1662, "$/"
    unless_null $P1662, vivify_866
    $P1662 = root_new ['parrot';'Hash']
  vivify_866:
    set $P1663, $P1662["quantified_atom"]
    unless_null $P1663, vivify_867
    new $P1663, "Undef"
  vivify_867:
    $P1664 = $P1663."ast"()
    store_lex "$ast", $P1664
.annotate 'line', 345
    find_lex $P1666, "$ws"
    unless_null $P1666, vivify_868
    new $P1666, "Undef"
  vivify_868:
    unless $P1666, if_1665_end
.annotate 'line', 346
    get_hll_global $P1667, "GLOBAL"
    nqp_get_package_through_who $P1668, $P1667, "PAST"
    get_who $P1669, $P1668
    set $P1670, $P1669["Regex"]
.annotate 'line', 348
    get_hll_global $P1671, "GLOBAL"
    nqp_get_package_through_who $P1672, $P1671, "PAST"
    get_who $P1673, $P1672
    set $P1674, $P1673["Regex"]
    $P1675 = $P1674."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1676, "$ast"
    unless_null $P1676, vivify_869
    new $P1676, "Undef"
  vivify_869:
.annotate 'line', 351
    get_hll_global $P1677, "GLOBAL"
    nqp_get_package_through_who $P1678, $P1677, "PAST"
    get_who $P1679, $P1678
    set $P1680, $P1679["Regex"]
    $P1681 = $P1680."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1682 = $P1670."new"($P1675, $P1676, $P1681, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1682
  if_1665_end:
.annotate 'line', 355
    get_hll_global $P1683, "GLOBAL"
    nqp_get_package_through_who $P1684, $P1683, "PAST"
    get_who $P1685, $P1684
    set $P1686, $P1685["Regex"]
    find_lex $P1687, "$ast"
    unless_null $P1687, vivify_870
    new $P1687, "Undef"
  vivify_870:
    find_lex $P1688, "$/"
    unless_null $P1688, vivify_871
    new $P1688, "Undef"
  vivify_871:
    $P1689 = $P1686."new"("quant" :named("pasttype"), 1 :named("min"), $P1687 :named("sep"), $P1688 :named("node"))
    store_lex "$past", $P1689
.annotate 'line', 343
    .return ($P1689)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("210_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1733
    .param pmc param_1734
.annotate 'line', 369
    .lex "self", param_1733
    .lex "$/", param_1734
.annotate 'line', 370
    new $P1735, "Undef"
    .lex "$past", $P1735
.annotate 'line', 371
    find_lex $P1738, "$?PACKAGE"
    get_who $P1739, $P1738
    set $P1740, $P1739["@MODIFIERS"]
    unless_null $P1740, vivify_875
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $P1741, $P1740[0]
    unless_null $P1741, vivify_876
    $P1741 = root_new ['parrot';'Hash']
  vivify_876:
    set $P1742, $P1741["s"]
    unless_null $P1742, vivify_877
    new $P1742, "Undef"
  vivify_877:
    if $P1742, if_1737
    new $P1749, "Integer"
    assign $P1749, 0
    set $P1736, $P1749
    goto if_1737_end
  if_1737:
    get_hll_global $P1743, "GLOBAL"
    nqp_get_package_through_who $P1744, $P1743, "PAST"
    get_who $P1745, $P1744
    set $P1746, $P1745["Regex"]
    find_lex $P1747, "$/"
    unless_null $P1747, vivify_878
    new $P1747, "Undef"
  vivify_878:
    $P1748 = $P1746."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1747 :named("node"))
    set $P1736, $P1748
  if_1737_end:
    store_lex "$past", $P1736
.annotate 'line', 374
    find_lex $P1750, "$/"
    find_lex $P1751, "$past"
    unless_null $P1751, vivify_879
    new $P1751, "Undef"
  vivify_879:
    $P1752 = $P1750."!make"($P1751)
.annotate 'line', 369
    .return ($P1752)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("211_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1754
    .param pmc param_1755
.annotate 'line', 378
    .lex "self", param_1754
    .lex "$/", param_1755
.annotate 'line', 379
    find_lex $P1756, "$/"
    find_lex $P1757, "$/"
    unless_null $P1757, vivify_880
    $P1757 = root_new ['parrot';'Hash']
  vivify_880:
    set $P1758, $P1757["nibbler"]
    unless_null $P1758, vivify_881
    new $P1758, "Undef"
  vivify_881:
    $P1759 = $P1758."ast"()
    $P1760 = $P1756."!make"($P1759)
.annotate 'line', 378
    .return ($P1760)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("212_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1762
    .param pmc param_1763
.annotate 'line', 382
    .lex "self", param_1762
    .lex "$/", param_1763
.annotate 'line', 383
    new $P1764, "Undef"
    .lex "$subpast", $P1764
.annotate 'line', 384
    new $P1765, "Undef"
    .lex "$past", $P1765
.annotate 'line', 383
    find_lex $P1766, "$/"
    unless_null $P1766, vivify_882
    $P1766 = root_new ['parrot';'Hash']
  vivify_882:
    set $P1767, $P1766["nibbler"]
    unless_null $P1767, vivify_883
    new $P1767, "Undef"
  vivify_883:
    $P1768 = $P1767."ast"()
    $P1769 = "buildsub"($P1768)
    store_lex "$subpast", $P1769
.annotate 'line', 384
    get_hll_global $P1770, "GLOBAL"
    nqp_get_package_through_who $P1771, $P1770, "PAST"
    get_who $P1772, $P1771
    set $P1773, $P1772["Regex"]
    find_lex $P1774, "$subpast"
    unless_null $P1774, vivify_884
    new $P1774, "Undef"
  vivify_884:
    find_lex $P1775, "$/"
    unless_null $P1775, vivify_885
    new $P1775, "Undef"
  vivify_885:
    $P1776 = $P1773."new"($P1774, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1775 :named("node"))
    store_lex "$past", $P1776
.annotate 'line', 386
    find_lex $P1777, "$/"
    find_lex $P1778, "$past"
    unless_null $P1778, vivify_886
    new $P1778, "Undef"
  vivify_886:
    $P1779 = $P1777."!make"($P1778)
.annotate 'line', 382
    .return ($P1779)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("213_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1781
    .param pmc param_1782
.annotate 'line', 389
    .lex "self", param_1781
    .lex "$/", param_1782
.annotate 'line', 390
    new $P1783, "Undef"
    .lex "$quote", $P1783
.annotate 'line', 392
    new $P1784, "Undef"
    .lex "$past", $P1784
.annotate 'line', 390
    find_lex $P1785, "$/"
    unless_null $P1785, vivify_887
    $P1785 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1786, $P1785["quote_EXPR"]
    unless_null $P1786, vivify_888
    new $P1786, "Undef"
  vivify_888:
    $P1787 = $P1786."ast"()
    store_lex "$quote", $P1787
.annotate 'line', 391
    get_hll_global $P1789, "GLOBAL"
    nqp_get_package_through_who $P1790, $P1789, "PAST"
    get_who $P1791, $P1790
    set $P1792, $P1791["Val"]
    find_lex $P1793, "$quote"
    unless_null $P1793, vivify_889
    new $P1793, "Undef"
  vivify_889:
    $P1794 = $P1792."ACCEPTS"($P1793)
    unless $P1794, if_1788_end
    find_lex $P1795, "$quote"
    unless_null $P1795, vivify_890
    new $P1795, "Undef"
  vivify_890:
    $P1796 = $P1795."value"()
    store_lex "$quote", $P1796
  if_1788_end:
.annotate 'line', 392
    get_hll_global $P1797, "GLOBAL"
    nqp_get_package_through_who $P1798, $P1797, "PAST"
    get_who $P1799, $P1798
    set $P1800, $P1799["Regex"]
    find_lex $P1801, "$quote"
    unless_null $P1801, vivify_891
    new $P1801, "Undef"
  vivify_891:
    find_lex $P1802, "$/"
    unless_null $P1802, vivify_892
    new $P1802, "Undef"
  vivify_892:
    $P1803 = $P1800."new"($P1801, "literal" :named("pasttype"), $P1802 :named("node"))
    store_lex "$past", $P1803
.annotate 'line', 393
    find_lex $P1805, "$?PACKAGE"
    get_who $P1806, $P1805
    set $P1807, $P1806["@MODIFIERS"]
    unless_null $P1807, vivify_893
    $P1807 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    set $P1808, $P1807[0]
    unless_null $P1808, vivify_894
    $P1808 = root_new ['parrot';'Hash']
  vivify_894:
    set $P1809, $P1808["i"]
    unless_null $P1809, vivify_895
    new $P1809, "Undef"
  vivify_895:
    unless $P1809, if_1804_end
    find_lex $P1810, "$past"
    unless_null $P1810, vivify_896
    new $P1810, "Undef"
  vivify_896:
    $P1810."subtype"("ignorecase")
  if_1804_end:
.annotate 'line', 394
    find_lex $P1811, "$/"
    find_lex $P1812, "$past"
    unless_null $P1812, vivify_897
    new $P1812, "Undef"
  vivify_897:
    $P1813 = $P1811."!make"($P1812)
.annotate 'line', 389
    .return ($P1813)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("214_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'line', 397
    .lex "self", param_1815
    .lex "$/", param_1816
.annotate 'line', 398
    new $P1817, "Undef"
    .lex "$quote", $P1817
.annotate 'line', 400
    new $P1818, "Undef"
    .lex "$past", $P1818
.annotate 'line', 398
    find_lex $P1819, "$/"
    unless_null $P1819, vivify_898
    $P1819 = root_new ['parrot';'Hash']
  vivify_898:
    set $P1820, $P1819["quote_EXPR"]
    unless_null $P1820, vivify_899
    new $P1820, "Undef"
  vivify_899:
    $P1821 = $P1820."ast"()
    store_lex "$quote", $P1821
.annotate 'line', 399
    get_hll_global $P1823, "GLOBAL"
    nqp_get_package_through_who $P1824, $P1823, "PAST"
    get_who $P1825, $P1824
    set $P1826, $P1825["Val"]
    find_lex $P1827, "$quote"
    unless_null $P1827, vivify_900
    new $P1827, "Undef"
  vivify_900:
    $P1828 = $P1826."ACCEPTS"($P1827)
    unless $P1828, if_1822_end
    find_lex $P1829, "$quote"
    unless_null $P1829, vivify_901
    new $P1829, "Undef"
  vivify_901:
    $P1830 = $P1829."value"()
    store_lex "$quote", $P1830
  if_1822_end:
.annotate 'line', 400
    get_hll_global $P1831, "GLOBAL"
    nqp_get_package_through_who $P1832, $P1831, "PAST"
    get_who $P1833, $P1832
    set $P1834, $P1833["Regex"]
    find_lex $P1835, "$quote"
    unless_null $P1835, vivify_902
    new $P1835, "Undef"
  vivify_902:
    find_lex $P1836, "$/"
    unless_null $P1836, vivify_903
    new $P1836, "Undef"
  vivify_903:
    $P1837 = $P1834."new"($P1835, "literal" :named("pasttype"), $P1836 :named("node"))
    store_lex "$past", $P1837
.annotate 'line', 401
    find_lex $P1839, "$?PACKAGE"
    get_who $P1840, $P1839
    set $P1841, $P1840["@MODIFIERS"]
    unless_null $P1841, vivify_904
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    set $P1842, $P1841[0]
    unless_null $P1842, vivify_905
    $P1842 = root_new ['parrot';'Hash']
  vivify_905:
    set $P1843, $P1842["i"]
    unless_null $P1843, vivify_906
    new $P1843, "Undef"
  vivify_906:
    unless $P1843, if_1838_end
    find_lex $P1844, "$past"
    unless_null $P1844, vivify_907
    new $P1844, "Undef"
  vivify_907:
    $P1844."subtype"("ignorecase")
  if_1838_end:
.annotate 'line', 402
    find_lex $P1845, "$/"
    find_lex $P1846, "$past"
    unless_null $P1846, vivify_908
    new $P1846, "Undef"
  vivify_908:
    $P1847 = $P1845."!make"($P1846)
.annotate 'line', 397
    .return ($P1847)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("215_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1849
    .param pmc param_1850
.annotate 'line', 405
    .lex "self", param_1849
    .lex "$/", param_1850
.annotate 'line', 406
    new $P1851, "Undef"
    .lex "$past", $P1851
    get_hll_global $P1852, "GLOBAL"
    nqp_get_package_through_who $P1853, $P1852, "PAST"
    get_who $P1854, $P1853
    set $P1855, $P1854["Regex"]
    find_lex $P1856, "$/"
    unless_null $P1856, vivify_909
    new $P1856, "Undef"
  vivify_909:
    $P1857 = $P1855."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1856 :named("node"))
    store_lex "$past", $P1857
.annotate 'line', 407
    find_lex $P1858, "$/"
    find_lex $P1859, "$past"
    unless_null $P1859, vivify_910
    new $P1859, "Undef"
  vivify_910:
    $P1860 = $P1858."!make"($P1859)
.annotate 'line', 405
    .return ($P1860)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("216_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1862
    .param pmc param_1863
.annotate 'line', 410
    .lex "self", param_1862
    .lex "$/", param_1863
.annotate 'line', 411
    new $P1864, "Undef"
    .lex "$past", $P1864
    get_hll_global $P1865, "GLOBAL"
    nqp_get_package_through_who $P1866, $P1865, "PAST"
    get_who $P1867, $P1866
    set $P1868, $P1867["Regex"]
    find_lex $P1869, "$/"
    unless_null $P1869, vivify_911
    new $P1869, "Undef"
  vivify_911:
    $P1870 = $P1868."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1869 :named("node"))
    store_lex "$past", $P1870
.annotate 'line', 412
    find_lex $P1871, "$/"
    find_lex $P1872, "$past"
    unless_null $P1872, vivify_912
    new $P1872, "Undef"
  vivify_912:
    $P1873 = $P1871."!make"($P1872)
.annotate 'line', 410
    .return ($P1873)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("217_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1875
    .param pmc param_1876
.annotate 'line', 415
    .lex "self", param_1875
    .lex "$/", param_1876
.annotate 'line', 416
    new $P1877, "Undef"
    .lex "$past", $P1877
    get_hll_global $P1878, "GLOBAL"
    nqp_get_package_through_who $P1879, $P1878, "PAST"
    get_who $P1880, $P1879
    set $P1881, $P1880["Regex"]
    find_lex $P1882, "$/"
    unless_null $P1882, vivify_913
    new $P1882, "Undef"
  vivify_913:
    $P1883 = $P1881."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1882 :named("node"))
    store_lex "$past", $P1883
.annotate 'line', 417
    find_lex $P1884, "$/"
    find_lex $P1885, "$past"
    unless_null $P1885, vivify_914
    new $P1885, "Undef"
  vivify_914:
    $P1886 = $P1884."!make"($P1885)
.annotate 'line', 415
    .return ($P1886)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("218_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1888
    .param pmc param_1889
.annotate 'line', 420
    .lex "self", param_1888
    .lex "$/", param_1889
.annotate 'line', 421
    new $P1890, "Undef"
    .lex "$past", $P1890
    get_hll_global $P1891, "GLOBAL"
    nqp_get_package_through_who $P1892, $P1891, "PAST"
    get_who $P1893, $P1892
    set $P1894, $P1893["Regex"]
    find_lex $P1895, "$/"
    unless_null $P1895, vivify_915
    new $P1895, "Undef"
  vivify_915:
    $P1896 = $P1894."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1895 :named("node"))
    store_lex "$past", $P1896
.annotate 'line', 422
    find_lex $P1897, "$/"
    find_lex $P1898, "$past"
    unless_null $P1898, vivify_916
    new $P1898, "Undef"
  vivify_916:
    $P1899 = $P1897."!make"($P1898)
.annotate 'line', 420
    .return ($P1899)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("219_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1901
    .param pmc param_1902
.annotate 'line', 425
    .lex "self", param_1901
    .lex "$/", param_1902
.annotate 'line', 426
    new $P1903, "Undef"
    .lex "$past", $P1903
    get_hll_global $P1904, "GLOBAL"
    nqp_get_package_through_who $P1905, $P1904, "PAST"
    get_who $P1906, $P1905
    set $P1907, $P1906["Regex"]
    find_lex $P1908, "$/"
    unless_null $P1908, vivify_917
    new $P1908, "Undef"
  vivify_917:
    $P1909 = $P1907."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1908 :named("node"))
    store_lex "$past", $P1909
.annotate 'line', 427
    find_lex $P1910, "$/"
    find_lex $P1911, "$past"
    unless_null $P1911, vivify_918
    new $P1911, "Undef"
  vivify_918:
    $P1912 = $P1910."!make"($P1911)
.annotate 'line', 425
    .return ($P1912)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("220_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1914
    .param pmc param_1915
.annotate 'line', 430
    .lex "self", param_1914
    .lex "$/", param_1915
.annotate 'line', 431
    new $P1916, "Undef"
    .lex "$past", $P1916
    get_hll_global $P1917, "GLOBAL"
    nqp_get_package_through_who $P1918, $P1917, "PAST"
    get_who $P1919, $P1918
    set $P1920, $P1919["Regex"]
    find_lex $P1921, "$/"
    unless_null $P1921, vivify_919
    new $P1921, "Undef"
  vivify_919:
    $P1922 = $P1920."new"("cut" :named("pasttype"), $P1921 :named("node"))
    store_lex "$past", $P1922
.annotate 'line', 432
    find_lex $P1923, "$/"
    find_lex $P1924, "$past"
    unless_null $P1924, vivify_920
    new $P1924, "Undef"
  vivify_920:
    $P1925 = $P1923."!make"($P1924)
.annotate 'line', 430
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("221_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1927
    .param pmc param_1928
.annotate 'line', 435
    .lex "self", param_1927
    .lex "$/", param_1928
.annotate 'line', 436
    new $P1929, "Undef"
    .lex "$past", $P1929
    get_hll_global $P1930, "GLOBAL"
    nqp_get_package_through_who $P1931, $P1930, "PAST"
    get_who $P1932, $P1931
    set $P1933, $P1932["Regex"]
    find_lex $P1934, "$/"
    unless_null $P1934, vivify_921
    new $P1934, "Undef"
  vivify_921:
    $P1935 = $P1933."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1934 :named("node"))
    store_lex "$past", $P1935
.annotate 'line', 437
    find_lex $P1936, "$/"
    find_lex $P1937, "$past"
    unless_null $P1937, vivify_922
    new $P1937, "Undef"
  vivify_922:
    $P1938 = $P1936."!make"($P1937)
.annotate 'line', 435
    .return ($P1938)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("222_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1940
    .param pmc param_1941
.annotate 'line', 440
    .lex "self", param_1940
    .lex "$/", param_1941
.annotate 'line', 441
    new $P1942, "Undef"
    .lex "$past", $P1942
    get_hll_global $P1943, "GLOBAL"
    nqp_get_package_through_who $P1944, $P1943, "PAST"
    get_who $P1945, $P1944
    set $P1946, $P1945["Regex"]
    find_lex $P1947, "$/"
    unless_null $P1947, vivify_923
    new $P1947, "Undef"
  vivify_923:
    $P1948 = $P1946."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1947 :named("node"))
    store_lex "$past", $P1948
.annotate 'line', 442
    find_lex $P1949, "$/"
    find_lex $P1950, "$past"
    unless_null $P1950, vivify_924
    new $P1950, "Undef"
  vivify_924:
    $P1951 = $P1949."!make"($P1950)
.annotate 'line', 440
    .return ($P1951)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("223_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1953
    .param pmc param_1954
.annotate 'line', 445
    .lex "self", param_1953
    .lex "$/", param_1954
.annotate 'line', 446
    find_lex $P1955, "$/"
    find_lex $P1956, "$/"
    unless_null $P1956, vivify_925
    $P1956 = root_new ['parrot';'Hash']
  vivify_925:
    set $P1957, $P1956["backslash"]
    unless_null $P1957, vivify_926
    new $P1957, "Undef"
  vivify_926:
    $P1958 = $P1957."ast"()
    $P1959 = $P1955."!make"($P1958)
.annotate 'line', 445
    .return ($P1959)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("224_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1961
    .param pmc param_1962
.annotate 'line', 449
    .lex "self", param_1961
    .lex "$/", param_1962
.annotate 'line', 450
    find_lex $P1963, "$/"
    find_lex $P1964, "$/"
    unless_null $P1964, vivify_927
    $P1964 = root_new ['parrot';'Hash']
  vivify_927:
    set $P1965, $P1964["mod_internal"]
    unless_null $P1965, vivify_928
    new $P1965, "Undef"
  vivify_928:
    $P1966 = $P1965."ast"()
    $P1967 = $P1963."!make"($P1966)
.annotate 'line', 449
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("225_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1969
    .param pmc param_1970
.annotate 'line', 453
    .lex "self", param_1969
    .lex "$/", param_1970
.annotate 'line', 454
    find_lex $P1971, "$/"
    find_lex $P1972, "$/"
    unless_null $P1972, vivify_929
    $P1972 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1973, $P1972["assertion"]
    unless_null $P1973, vivify_930
    new $P1973, "Undef"
  vivify_930:
    $P1974 = $P1973."ast"()
    $P1975 = $P1971."!make"($P1974)
.annotate 'line', 453
    .return ($P1975)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("226_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_1977
    .param pmc param_1978
.annotate 'line', 457
    .lex "self", param_1977
    .lex "$/", param_1978
.annotate 'line', 458
    find_lex $P1979, "$/"
    get_hll_global $P1980, "GLOBAL"
    nqp_get_package_through_who $P1981, $P1980, "PAST"
    get_who $P1982, $P1981
    set $P1983, $P1982["Regex"]
.annotate 'line', 459
    find_lex $P1984, "$/"
    unless_null $P1984, vivify_931
    $P1984 = root_new ['parrot';'Hash']
  vivify_931:
    set $P1985, $P1984["EXPR"]
    unless_null $P1985, vivify_932
    new $P1985, "Undef"
  vivify_932:
    $P1986 = $P1985."ast"()
.annotate 'line', 460
    get_hll_global $P1987, "GLOBAL"
    nqp_get_package_through_who $P1988, $P1987, "PAST"
    get_who $P1989, $P1988
    set $P1990, $P1989["Regex"]
.annotate 'line', 461
    find_lex $P1991, "$/"
    unless_null $P1991, vivify_933
    $P1991 = root_new ['parrot';'Hash']
  vivify_933:
    set $P1992, $P1991["GOAL"]
    unless_null $P1992, vivify_934
    new $P1992, "Undef"
  vivify_934:
    $P1993 = $P1992."ast"()
.annotate 'line', 462
    get_hll_global $P1994, "GLOBAL"
    nqp_get_package_through_who $P1995, $P1994, "PAST"
    get_who $P1996, $P1995
    set $P1997, $P1996["Regex"]
    find_lex $P1998, "$/"
    unless_null $P1998, vivify_935
    $P1998 = root_new ['parrot';'Hash']
  vivify_935:
    set $P1999, $P1998["GOAL"]
    unless_null $P1999, vivify_936
    new $P1999, "Undef"
  vivify_936:
    set $S2000, $P1999
    $P2001 = $P1997."new"("FAILGOAL", $S2000, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P2002 = $P1990."new"($P1993, $P2001, "alt" :named("pasttype"))
.annotate 'line', 460
    $P2003 = $P1983."new"($P1986, $P2002, "concat" :named("pasttype"))
.annotate 'line', 458
    $P2004 = $P1979."!make"($P2003)
.annotate 'line', 457
    .return ($P2004)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("227_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2006
    .param pmc param_2007
.annotate 'line', 470
    .lex "self", param_2006
    .lex "$/", param_2007
.annotate 'line', 471
    new $P2008, "Undef"
    .lex "$past", $P2008
.annotate 'line', 472
    find_lex $P2011, "$/"
    unless_null $P2011, vivify_937
    $P2011 = root_new ['parrot';'Hash']
  vivify_937:
    set $P2012, $P2011["key"]
    unless_null $P2012, vivify_938
    new $P2012, "Undef"
  vivify_938:
    if $P2012, if_2010
    new $P2023, "Integer"
    assign $P2023, 0
    set $P2009, $P2023
    goto if_2010_end
  if_2010:
    get_hll_global $P2013, "GLOBAL"
    nqp_get_package_through_who $P2014, $P2013, "PAST"
    get_who $P2015, $P2014
    set $P2016, $P2015["Regex"]
    find_lex $P2017, "$/"
    unless_null $P2017, vivify_939
    $P2017 = root_new ['parrot';'Hash']
  vivify_939:
    set $P2018, $P2017["key"]
    unless_null $P2018, vivify_940
    $P2018 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    set $P2019, $P2018[0]
    unless_null $P2019, vivify_941
    new $P2019, "Undef"
  vivify_941:
    set $S2020, $P2019
    find_lex $P2021, "$/"
    unless_null $P2021, vivify_942
    new $P2021, "Undef"
  vivify_942:
    $P2022 = $P2016."new"($S2020, "reduce" :named("pasttype"), $P2021 :named("node"))
    set $P2009, $P2022
  if_2010_end:
    store_lex "$past", $P2009
.annotate 'line', 474
    find_lex $P2024, "$/"
    find_lex $P2025, "$past"
    unless_null $P2025, vivify_943
    new $P2025, "Undef"
  vivify_943:
    $P2026 = $P2024."!make"($P2025)
.annotate 'line', 470
    .return ($P2026)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("228_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2028
    .param pmc param_2029
.annotate 'line', 477
    .lex "self", param_2028
    .lex "$/", param_2029
.annotate 'line', 478
    new $P2030, "Undef"
    .lex "$past", $P2030
.annotate 'line', 479
    new $P2031, "Undef"
    .lex "$name", $P2031
.annotate 'line', 477
    find_lex $P2032, "$past"
    unless_null $P2032, vivify_944
    new $P2032, "Undef"
  vivify_944:
.annotate 'line', 479
    find_lex $P2035, "$/"
    unless_null $P2035, vivify_945
    $P2035 = root_new ['parrot';'Hash']
  vivify_945:
    set $P2036, $P2035["pos"]
    unless_null $P2036, vivify_946
    new $P2036, "Undef"
  vivify_946:
    if $P2036, if_2034
    find_lex $P2040, "$/"
    unless_null $P2040, vivify_947
    $P2040 = root_new ['parrot';'Hash']
  vivify_947:
    set $P2041, $P2040["name"]
    unless_null $P2041, vivify_948
    new $P2041, "Undef"
  vivify_948:
    set $S2042, $P2041
    new $P2033, 'String'
    set $P2033, $S2042
    goto if_2034_end
  if_2034:
    find_lex $P2037, "$/"
    unless_null $P2037, vivify_949
    $P2037 = root_new ['parrot';'Hash']
  vivify_949:
    set $P2038, $P2037["pos"]
    unless_null $P2038, vivify_950
    new $P2038, "Undef"
  vivify_950:
    set $N2039, $P2038
    new $P2033, 'Float'
    set $P2033, $N2039
  if_2034_end:
    store_lex "$name", $P2033
.annotate 'line', 480
    find_lex $P2044, "$/"
    unless_null $P2044, vivify_951
    $P2044 = root_new ['parrot';'Hash']
  vivify_951:
    set $P2045, $P2044["quantified_atom"]
    unless_null $P2045, vivify_952
    new $P2045, "Undef"
  vivify_952:
    if $P2045, if_2043
.annotate 'line', 491
    get_hll_global $P2079, "GLOBAL"
    nqp_get_package_through_who $P2080, $P2079, "PAST"
    get_who $P2081, $P2080
    set $P2082, $P2081["Regex"]
    find_lex $P2083, "$name"
    unless_null $P2083, vivify_953
    new $P2083, "Undef"
  vivify_953:
    find_lex $P2084, "$/"
    unless_null $P2084, vivify_954
    new $P2084, "Undef"
  vivify_954:
    $P2085 = $P2082."new"("!BACKREF", $P2083, "subrule" :named("pasttype"), "method" :named("subtype"), $P2084 :named("node"))
    store_lex "$past", $P2085
.annotate 'line', 490
    goto if_2043_end
  if_2043:
.annotate 'line', 481
    find_lex $P2046, "$/"
    unless_null $P2046, vivify_955
    $P2046 = root_new ['parrot';'Hash']
  vivify_955:
    set $P2047, $P2046["quantified_atom"]
    unless_null $P2047, vivify_956
    $P2047 = root_new ['parrot';'ResizablePMCArray']
  vivify_956:
    set $P2048, $P2047[0]
    unless_null $P2048, vivify_957
    new $P2048, "Undef"
  vivify_957:
    $P2049 = $P2048."ast"()
    store_lex "$past", $P2049
.annotate 'line', 482
    find_lex $P2053, "$past"
    unless_null $P2053, vivify_958
    new $P2053, "Undef"
  vivify_958:
    $S2054 = $P2053."pasttype"()
    iseq $I2055, $S2054, "quant"
    if $I2055, if_2052
    new $P2051, 'Integer'
    set $P2051, $I2055
    goto if_2052_end
  if_2052:
    find_lex $P2056, "$past"
    unless_null $P2056, vivify_959
    $P2056 = root_new ['parrot';'ResizablePMCArray']
  vivify_959:
    set $P2057, $P2056[0]
    unless_null $P2057, vivify_960
    new $P2057, "Undef"
  vivify_960:
    $S2058 = $P2057."pasttype"()
    iseq $I2059, $S2058, "subrule"
    new $P2051, 'Integer'
    set $P2051, $I2059
  if_2052_end:
    if $P2051, if_2050
.annotate 'line', 485
    find_lex $P2065, "$past"
    unless_null $P2065, vivify_961
    new $P2065, "Undef"
  vivify_961:
    $S2066 = $P2065."pasttype"()
    iseq $I2067, $S2066, "subrule"
    if $I2067, if_2064
.annotate 'line', 487
    get_hll_global $P2071, "GLOBAL"
    nqp_get_package_through_who $P2072, $P2071, "PAST"
    get_who $P2073, $P2072
    set $P2074, $P2073["Regex"]
    find_lex $P2075, "$past"
    unless_null $P2075, vivify_962
    new $P2075, "Undef"
  vivify_962:
    find_lex $P2076, "$name"
    unless_null $P2076, vivify_963
    new $P2076, "Undef"
  vivify_963:
    find_lex $P2077, "$/"
    unless_null $P2077, vivify_964
    new $P2077, "Undef"
  vivify_964:
    $P2078 = $P2074."new"($P2075, $P2076 :named("name"), "subcapture" :named("pasttype"), $P2077 :named("node"))
    store_lex "$past", $P2078
.annotate 'line', 486
    goto if_2064_end
  if_2064:
.annotate 'line', 485
    find_lex $P2068, "self"
    find_lex $P2069, "$past"
    unless_null $P2069, vivify_965
    new $P2069, "Undef"
  vivify_965:
    find_lex $P2070, "$name"
    unless_null $P2070, vivify_966
    new $P2070, "Undef"
  vivify_966:
    $P2068."subrule_alias"($P2069, $P2070)
  if_2064_end:
    goto if_2050_end
  if_2050:
.annotate 'line', 483
    find_lex $P2060, "self"
    find_lex $P2061, "$past"
    unless_null $P2061, vivify_967
    $P2061 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    set $P2062, $P2061[0]
    unless_null $P2062, vivify_968
    new $P2062, "Undef"
  vivify_968:
    find_lex $P2063, "$name"
    unless_null $P2063, vivify_969
    new $P2063, "Undef"
  vivify_969:
    $P2060."subrule_alias"($P2062, $P2063)
  if_2050_end:
  if_2043_end:
.annotate 'line', 494
    find_lex $P2086, "$/"
    find_lex $P2087, "$past"
    unless_null $P2087, vivify_970
    new $P2087, "Undef"
  vivify_970:
    $P2088 = $P2086."!make"($P2087)
.annotate 'line', 477
    .return ($P2088)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("229_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2090
    .param pmc param_2091
.annotate 'line', 497
    .lex "self", param_2090
    .lex "$/", param_2091
.annotate 'line', 498
    find_lex $P2092, "$/"
    get_hll_global $P2093, "GLOBAL"
    nqp_get_package_through_who $P2094, $P2093, "PAST"
    get_who $P2095, $P2094
    set $P2096, $P2095["Regex"]
.annotate 'line', 499
    get_hll_global $P2097, "GLOBAL"
    nqp_get_package_through_who $P2098, $P2097, "PAST"
    get_who $P2099, $P2098
    set $P2100, $P2099["Op"]
    find_lex $P2101, "$/"
    unless_null $P2101, vivify_971
    $P2101 = root_new ['parrot';'Hash']
  vivify_971:
    set $P2102, $P2101["pir"]
    unless_null $P2102, vivify_972
    new $P2102, "Undef"
  vivify_972:
    set $S2103, $P2102
    $P2104 = $P2100."new"($S2103 :named("inline"), "inline" :named("pasttype"))
    find_lex $P2105, "$/"
    unless_null $P2105, vivify_973
    new $P2105, "Undef"
  vivify_973:
    $P2106 = $P2096."new"($P2104, "pastnode" :named("pasttype"), $P2105 :named("node"))
.annotate 'line', 498
    $P2107 = $P2092."!make"($P2106)
.annotate 'line', 497
    .return ($P2107)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("230_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2109
    .param pmc param_2110
.annotate 'line', 505
    .lex "self", param_2109
    .lex "$/", param_2110
.annotate 'line', 506
    new $P2111, "Undef"
    .lex "$subtype", $P2111
.annotate 'line', 507
    new $P2112, "Undef"
    .lex "$past", $P2112
.annotate 'line', 506
    find_lex $P2115, "$/"
    unless_null $P2115, vivify_974
    $P2115 = root_new ['parrot';'Hash']
  vivify_974:
    set $P2116, $P2115["sym"]
    unless_null $P2116, vivify_975
    new $P2116, "Undef"
  vivify_975:
    set $S2117, $P2116
    iseq $I2118, $S2117, "n"
    if $I2118, if_2114
    find_lex $P2120, "$/"
    unless_null $P2120, vivify_976
    $P2120 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2121, $P2120["sym"]
    unless_null $P2121, vivify_977
    new $P2121, "Undef"
  vivify_977:
    set $S2122, $P2121
    new $P2113, 'String'
    set $P2113, $S2122
    goto if_2114_end
  if_2114:
    new $P2119, "String"
    assign $P2119, "nl"
    set $P2113, $P2119
  if_2114_end:
    store_lex "$subtype", $P2113
.annotate 'line', 507
    get_hll_global $P2123, "GLOBAL"
    nqp_get_package_through_who $P2124, $P2123, "PAST"
    get_who $P2125, $P2124
    set $P2126, $P2125["Regex"]
    find_lex $P2127, "$subtype"
    unless_null $P2127, vivify_978
    new $P2127, "Undef"
  vivify_978:
    find_lex $P2128, "$/"
    unless_null $P2128, vivify_979
    new $P2128, "Undef"
  vivify_979:
    $P2129 = $P2126."new"("charclass" :named("pasttype"), $P2127 :named("subtype"), $P2128 :named("node"))
    store_lex "$past", $P2129
.annotate 'line', 508
    find_lex $P2130, "$/"
    find_lex $P2131, "$past"
    unless_null $P2131, vivify_980
    new $P2131, "Undef"
  vivify_980:
    $P2132 = $P2130."!make"($P2131)
.annotate 'line', 505
    .return ($P2132)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("231_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2134
    .param pmc param_2135
.annotate 'line', 511
    .lex "self", param_2134
    .lex "$/", param_2135
.annotate 'line', 512
    new $P2136, "Undef"
    .lex "$past", $P2136
    get_hll_global $P2137, "GLOBAL"
    nqp_get_package_through_who $P2138, $P2137, "PAST"
    get_who $P2139, $P2138
    set $P2140, $P2139["Regex"]
.annotate 'line', 513
    find_lex $P2141, "$/"
    unless_null $P2141, vivify_981
    $P2141 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2142, $P2141["sym"]
    unless_null $P2142, vivify_982
    new $P2142, "Undef"
  vivify_982:
    set $S2143, $P2142
    iseq $I2144, $S2143, "B"
    find_lex $P2145, "$/"
    unless_null $P2145, vivify_983
    new $P2145, "Undef"
  vivify_983:
    $P2146 = $P2140."new"("\b", "enumcharlist" :named("pasttype"), $I2144 :named("negate"), $P2145 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P2146
.annotate 'line', 514
    find_lex $P2147, "$/"
    find_lex $P2148, "$past"
    unless_null $P2148, vivify_984
    new $P2148, "Undef"
  vivify_984:
    $P2149 = $P2147."!make"($P2148)
.annotate 'line', 511
    .return ($P2149)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("232_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2151
    .param pmc param_2152
.annotate 'line', 517
    .lex "self", param_2151
    .lex "$/", param_2152
.annotate 'line', 518
    new $P2153, "Undef"
    .lex "$past", $P2153
    get_hll_global $P2154, "GLOBAL"
    nqp_get_package_through_who $P2155, $P2154, "PAST"
    get_who $P2156, $P2155
    set $P2157, $P2156["Regex"]
.annotate 'line', 519
    find_lex $P2158, "$/"
    unless_null $P2158, vivify_985
    $P2158 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2159, $P2158["sym"]
    unless_null $P2159, vivify_986
    new $P2159, "Undef"
  vivify_986:
    set $S2160, $P2159
    iseq $I2161, $S2160, "E"
    find_lex $P2162, "$/"
    unless_null $P2162, vivify_987
    new $P2162, "Undef"
  vivify_987:
    $P2163 = $P2157."new"("\e", "enumcharlist" :named("pasttype"), $I2161 :named("negate"), $P2162 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2163
.annotate 'line', 520
    find_lex $P2164, "$/"
    find_lex $P2165, "$past"
    unless_null $P2165, vivify_988
    new $P2165, "Undef"
  vivify_988:
    $P2166 = $P2164."!make"($P2165)
.annotate 'line', 517
    .return ($P2166)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("233_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2168
    .param pmc param_2169
.annotate 'line', 523
    .lex "self", param_2168
    .lex "$/", param_2169
.annotate 'line', 524
    new $P2170, "Undef"
    .lex "$past", $P2170
    get_hll_global $P2171, "GLOBAL"
    nqp_get_package_through_who $P2172, $P2171, "PAST"
    get_who $P2173, $P2172
    set $P2174, $P2173["Regex"]
.annotate 'line', 525
    find_lex $P2175, "$/"
    unless_null $P2175, vivify_989
    $P2175 = root_new ['parrot';'Hash']
  vivify_989:
    set $P2176, $P2175["sym"]
    unless_null $P2176, vivify_990
    new $P2176, "Undef"
  vivify_990:
    set $S2177, $P2176
    iseq $I2178, $S2177, "F"
    find_lex $P2179, "$/"
    unless_null $P2179, vivify_991
    new $P2179, "Undef"
  vivify_991:
    $P2180 = $P2174."new"("\f", "enumcharlist" :named("pasttype"), $I2178 :named("negate"), $P2179 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2180
.annotate 'line', 526
    find_lex $P2181, "$/"
    find_lex $P2182, "$past"
    unless_null $P2182, vivify_992
    new $P2182, "Undef"
  vivify_992:
    $P2183 = $P2181."!make"($P2182)
.annotate 'line', 523
    .return ($P2183)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("234_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2185
    .param pmc param_2186
.annotate 'line', 529
    .lex "self", param_2185
    .lex "$/", param_2186
.annotate 'line', 530
    new $P2187, "Undef"
    .lex "$past", $P2187
    get_hll_global $P2188, "GLOBAL"
    nqp_get_package_through_who $P2189, $P2188, "PAST"
    get_who $P2190, $P2189
    set $P2191, $P2190["Regex"]
.annotate 'line', 531
    find_lex $P2192, "$/"
    unless_null $P2192, vivify_993
    $P2192 = root_new ['parrot';'Hash']
  vivify_993:
    set $P2193, $P2192["sym"]
    unless_null $P2193, vivify_994
    new $P2193, "Undef"
  vivify_994:
    set $S2194, $P2193
    iseq $I2195, $S2194, "H"
    find_lex $P2196, "$/"
    unless_null $P2196, vivify_995
    new $P2196, "Undef"
  vivify_995:
    $P2197 = $P2191."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2195 :named("negate"), $P2196 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2197
.annotate 'line', 532
    find_lex $P2198, "$/"
    find_lex $P2199, "$past"
    unless_null $P2199, vivify_996
    new $P2199, "Undef"
  vivify_996:
    $P2200 = $P2198."!make"($P2199)
.annotate 'line', 529
    .return ($P2200)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("235_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2202
    .param pmc param_2203
.annotate 'line', 535
    .lex "self", param_2202
    .lex "$/", param_2203
.annotate 'line', 536
    new $P2204, "Undef"
    .lex "$past", $P2204
    get_hll_global $P2205, "GLOBAL"
    nqp_get_package_through_who $P2206, $P2205, "PAST"
    get_who $P2207, $P2206
    set $P2208, $P2207["Regex"]
.annotate 'line', 537
    find_lex $P2209, "$/"
    unless_null $P2209, vivify_997
    $P2209 = root_new ['parrot';'Hash']
  vivify_997:
    set $P2210, $P2209["sym"]
    unless_null $P2210, vivify_998
    new $P2210, "Undef"
  vivify_998:
    set $S2211, $P2210
    iseq $I2212, $S2211, "R"
    find_lex $P2213, "$/"
    unless_null $P2213, vivify_999
    new $P2213, "Undef"
  vivify_999:
    $P2214 = $P2208."new"("\r", "enumcharlist" :named("pasttype"), $I2212 :named("negate"), $P2213 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2214
.annotate 'line', 538
    find_lex $P2215, "$/"
    find_lex $P2216, "$past"
    unless_null $P2216, vivify_1000
    new $P2216, "Undef"
  vivify_1000:
    $P2217 = $P2215."!make"($P2216)
.annotate 'line', 535
    .return ($P2217)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("236_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2219
    .param pmc param_2220
.annotate 'line', 541
    .lex "self", param_2219
    .lex "$/", param_2220
.annotate 'line', 542
    new $P2221, "Undef"
    .lex "$past", $P2221
    get_hll_global $P2222, "GLOBAL"
    nqp_get_package_through_who $P2223, $P2222, "PAST"
    get_who $P2224, $P2223
    set $P2225, $P2224["Regex"]
.annotate 'line', 543
    find_lex $P2226, "$/"
    unless_null $P2226, vivify_1001
    $P2226 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P2227, $P2226["sym"]
    unless_null $P2227, vivify_1002
    new $P2227, "Undef"
  vivify_1002:
    set $S2228, $P2227
    iseq $I2229, $S2228, "T"
    find_lex $P2230, "$/"
    unless_null $P2230, vivify_1003
    new $P2230, "Undef"
  vivify_1003:
    $P2231 = $P2225."new"("\t", "enumcharlist" :named("pasttype"), $I2229 :named("negate"), $P2230 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2231
.annotate 'line', 544
    find_lex $P2232, "$/"
    find_lex $P2233, "$past"
    unless_null $P2233, vivify_1004
    new $P2233, "Undef"
  vivify_1004:
    $P2234 = $P2232."!make"($P2233)
.annotate 'line', 541
    .return ($P2234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("237_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2236
    .param pmc param_2237
.annotate 'line', 547
    .lex "self", param_2236
    .lex "$/", param_2237
.annotate 'line', 548
    new $P2238, "Undef"
    .lex "$past", $P2238
    get_hll_global $P2239, "GLOBAL"
    nqp_get_package_through_who $P2240, $P2239, "PAST"
    get_who $P2241, $P2240
    set $P2242, $P2241["Regex"]
.annotate 'line', 550
    find_lex $P2243, "$/"
    unless_null $P2243, vivify_1005
    $P2243 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P2244, $P2243["sym"]
    unless_null $P2244, vivify_1006
    new $P2244, "Undef"
  vivify_1006:
    set $S2245, $P2244
    iseq $I2246, $S2245, "V"
    find_lex $P2247, "$/"
    unless_null $P2247, vivify_1007
    new $P2247, "Undef"
  vivify_1007:
    $P2248 = $P2242."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2246 :named("negate"), $P2247 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2248
.annotate 'line', 551
    find_lex $P2249, "$/"
    find_lex $P2250, "$past"
    unless_null $P2250, vivify_1008
    new $P2250, "Undef"
  vivify_1008:
    $P2251 = $P2249."!make"($P2250)
.annotate 'line', 547
    .return ($P2251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("238_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2253
    .param pmc param_2254
.annotate 'line', 554
    .lex "self", param_2253
    .lex "$/", param_2254
.annotate 'line', 555
    new $P2255, "Undef"
    .lex "$octlit", $P2255
.annotate 'line', 556
    get_hll_global $P2256, "GLOBAL"
    nqp_get_package_through_who $P2257, $P2256, "HLL"
    nqp_get_package_through_who $P2258, $P2257, "Actions"
    get_who $P2259, $P2258
    set $P2260, $P2259["ints_to_string"]
    find_lex $P2263, "$/"
    unless_null $P2263, vivify_1009
    $P2263 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P2264, $P2263["octint"]
    unless_null $P2264, vivify_1010
    new $P2264, "Undef"
  vivify_1010:
    unless $P2264, unless_2262
    set $P2261, $P2264
    goto unless_2262_end
  unless_2262:
    find_lex $P2265, "$/"
    unless_null $P2265, vivify_1011
    $P2265 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P2266, $P2265["octints"]
    unless_null $P2266, vivify_1012
    $P2266 = root_new ['parrot';'Hash']
  vivify_1012:
    set $P2267, $P2266["octint"]
    unless_null $P2267, vivify_1013
    new $P2267, "Undef"
  vivify_1013:
    set $P2261, $P2267
  unless_2262_end:
    $P2268 = $P2260($P2261)
    store_lex "$octlit", $P2268
.annotate 'line', 557
    find_lex $P2269, "$/"
    find_lex $P2272, "$/"
    unless_null $P2272, vivify_1014
    $P2272 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P2273, $P2272["sym"]
    unless_null $P2273, vivify_1015
    new $P2273, "Undef"
  vivify_1015:
    set $S2274, $P2273
    iseq $I2275, $S2274, "O"
    if $I2275, if_2271
.annotate 'line', 560
    get_hll_global $P2283, "GLOBAL"
    nqp_get_package_through_who $P2284, $P2283, "PAST"
    get_who $P2285, $P2284
    set $P2286, $P2285["Regex"]
    find_lex $P2287, "$octlit"
    unless_null $P2287, vivify_1016
    new $P2287, "Undef"
  vivify_1016:
    find_lex $P2288, "$/"
    unless_null $P2288, vivify_1017
    new $P2288, "Undef"
  vivify_1017:
    $P2289 = $P2286."new"($P2287, "literal" :named("pasttype"), $P2288 :named("node"))
    set $P2270, $P2289
.annotate 'line', 557
    goto if_2271_end
  if_2271:
.annotate 'line', 558
    get_hll_global $P2276, "GLOBAL"
    nqp_get_package_through_who $P2277, $P2276, "PAST"
    get_who $P2278, $P2277
    set $P2279, $P2278["Regex"]
    find_lex $P2280, "$octlit"
    unless_null $P2280, vivify_1018
    new $P2280, "Undef"
  vivify_1018:
    find_lex $P2281, "$/"
    unless_null $P2281, vivify_1019
    new $P2281, "Undef"
  vivify_1019:
    $P2282 = $P2279."new"($P2280, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2281 :named("node"))
    set $P2270, $P2282
  if_2271_end:
    $P2290 = $P2269."!make"($P2270)
.annotate 'line', 554
    .return ($P2290)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("239_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2292
    .param pmc param_2293
.annotate 'line', 563
    .lex "self", param_2292
    .lex "$/", param_2293
.annotate 'line', 564
    new $P2294, "Undef"
    .lex "$hexlit", $P2294
.annotate 'line', 565
    get_hll_global $P2295, "GLOBAL"
    nqp_get_package_through_who $P2296, $P2295, "HLL"
    nqp_get_package_through_who $P2297, $P2296, "Actions"
    get_who $P2298, $P2297
    set $P2299, $P2298["ints_to_string"]
    find_lex $P2302, "$/"
    unless_null $P2302, vivify_1020
    $P2302 = root_new ['parrot';'Hash']
  vivify_1020:
    set $P2303, $P2302["hexint"]
    unless_null $P2303, vivify_1021
    new $P2303, "Undef"
  vivify_1021:
    unless $P2303, unless_2301
    set $P2300, $P2303
    goto unless_2301_end
  unless_2301:
    find_lex $P2304, "$/"
    unless_null $P2304, vivify_1022
    $P2304 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2305, $P2304["hexints"]
    unless_null $P2305, vivify_1023
    $P2305 = root_new ['parrot';'Hash']
  vivify_1023:
    set $P2306, $P2305["hexint"]
    unless_null $P2306, vivify_1024
    new $P2306, "Undef"
  vivify_1024:
    set $P2300, $P2306
  unless_2301_end:
    $P2307 = $P2299($P2300)
    store_lex "$hexlit", $P2307
.annotate 'line', 566
    find_lex $P2308, "$/"
    find_lex $P2311, "$/"
    unless_null $P2311, vivify_1025
    $P2311 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2312, $P2311["sym"]
    unless_null $P2312, vivify_1026
    new $P2312, "Undef"
  vivify_1026:
    set $S2313, $P2312
    iseq $I2314, $S2313, "X"
    if $I2314, if_2310
.annotate 'line', 569
    get_hll_global $P2322, "GLOBAL"
    nqp_get_package_through_who $P2323, $P2322, "PAST"
    get_who $P2324, $P2323
    set $P2325, $P2324["Regex"]
    find_lex $P2326, "$hexlit"
    unless_null $P2326, vivify_1027
    new $P2326, "Undef"
  vivify_1027:
    find_lex $P2327, "$/"
    unless_null $P2327, vivify_1028
    new $P2327, "Undef"
  vivify_1028:
    $P2328 = $P2325."new"($P2326, "literal" :named("pasttype"), $P2327 :named("node"))
    set $P2309, $P2328
.annotate 'line', 566
    goto if_2310_end
  if_2310:
.annotate 'line', 567
    get_hll_global $P2315, "GLOBAL"
    nqp_get_package_through_who $P2316, $P2315, "PAST"
    get_who $P2317, $P2316
    set $P2318, $P2317["Regex"]
    find_lex $P2319, "$hexlit"
    unless_null $P2319, vivify_1029
    new $P2319, "Undef"
  vivify_1029:
    find_lex $P2320, "$/"
    unless_null $P2320, vivify_1030
    new $P2320, "Undef"
  vivify_1030:
    $P2321 = $P2318."new"($P2319, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2320 :named("node"))
    set $P2309, $P2321
  if_2310_end:
    $P2329 = $P2308."!make"($P2309)
.annotate 'line', 563
    .return ($P2329)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("240_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2331
    .param pmc param_2332
.annotate 'line', 572
    .lex "self", param_2331
    .lex "$/", param_2332
.annotate 'line', 573
    find_lex $P2333, "$/"
    get_hll_global $P2334, "GLOBAL"
    nqp_get_package_through_who $P2335, $P2334, "PAST"
    get_who $P2336, $P2335
    set $P2337, $P2336["Regex"]
    find_lex $P2338, "$/"
    unless_null $P2338, vivify_1031
    $P2338 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P2339, $P2338["charspec"]
    unless_null $P2339, vivify_1032
    new $P2339, "Undef"
  vivify_1032:
    $P2340 = $P2339."ast"()
    find_lex $P2341, "$/"
    unless_null $P2341, vivify_1033
    new $P2341, "Undef"
  vivify_1033:
    $P2342 = $P2337."new"($P2340, "literal" :named("pasttype"), $P2341 :named("node"))
    $P2343 = $P2333."!make"($P2342)
.annotate 'line', 572
    .return ($P2343)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("241_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2345
    .param pmc param_2346
.annotate 'line', 576
    .lex "self", param_2345
    .lex "$/", param_2346
.annotate 'line', 577
    new $P2347, "Undef"
    .lex "$past", $P2347
    get_hll_global $P2348, "GLOBAL"
    nqp_get_package_through_who $P2349, $P2348, "PAST"
    get_who $P2350, $P2349
    set $P2351, $P2350["Regex"]
    find_lex $P2352, "$/"
    unless_null $P2352, vivify_1034
    new $P2352, "Undef"
  vivify_1034:
    set $S2353, $P2352
    find_lex $P2354, "$/"
    unless_null $P2354, vivify_1035
    new $P2354, "Undef"
  vivify_1035:
    $P2355 = $P2351."new"($S2353, "literal" :named("pasttype"), $P2354 :named("node"))
    store_lex "$past", $P2355
.annotate 'line', 578
    find_lex $P2356, "$/"
    find_lex $P2357, "$past"
    unless_null $P2357, vivify_1036
    new $P2357, "Undef"
  vivify_1036:
    $P2358 = $P2356."!make"($P2357)
.annotate 'line', 576
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("242_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2360
    .param pmc param_2361
.annotate 'line', 582
    .lex "self", param_2360
    .lex "$/", param_2361
.annotate 'line', 583
    new $P2362, "Undef"
    .lex "$past", $P2362
.annotate 'line', 582
    find_lex $P2363, "$past"
    unless_null $P2363, vivify_1037
    new $P2363, "Undef"
  vivify_1037:
.annotate 'line', 584
    find_lex $P2365, "$/"
    unless_null $P2365, vivify_1038
    $P2365 = root_new ['parrot';'Hash']
  vivify_1038:
    set $P2366, $P2365["assertion"]
    unless_null $P2366, vivify_1039
    new $P2366, "Undef"
  vivify_1039:
    if $P2366, if_2364
.annotate 'line', 588
    new $P2371, "Integer"
    assign $P2371, 0
    store_lex "$past", $P2371
    goto if_2364_end
  if_2364:
.annotate 'line', 585
    find_lex $P2367, "$/"
    unless_null $P2367, vivify_1040
    $P2367 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2368, $P2367["assertion"]
    unless_null $P2368, vivify_1041
    new $P2368, "Undef"
  vivify_1041:
    $P2369 = $P2368."ast"()
    store_lex "$past", $P2369
.annotate 'line', 586
    find_lex $P2370, "$past"
    unless_null $P2370, vivify_1042
    new $P2370, "Undef"
  vivify_1042:
    $P2370."subtype"("zerowidth")
  if_2364_end:
.annotate 'line', 589
    find_lex $P2372, "$/"
    find_lex $P2373, "$past"
    unless_null $P2373, vivify_1043
    new $P2373, "Undef"
  vivify_1043:
    $P2374 = $P2372."!make"($P2373)
.annotate 'line', 582
    .return ($P2374)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("243_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2376
    .param pmc param_2377
.annotate 'line', 592
    .lex "self", param_2376
    .lex "$/", param_2377
.annotate 'line', 593
    new $P2378, "Undef"
    .lex "$past", $P2378
.annotate 'line', 592
    find_lex $P2379, "$past"
    unless_null $P2379, vivify_1044
    new $P2379, "Undef"
  vivify_1044:
.annotate 'line', 594
    find_lex $P2381, "$/"
    unless_null $P2381, vivify_1045
    $P2381 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P2382, $P2381["assertion"]
    unless_null $P2382, vivify_1046
    new $P2382, "Undef"
  vivify_1046:
    if $P2382, if_2380
.annotate 'line', 600
    get_hll_global $P2391, "GLOBAL"
    nqp_get_package_through_who $P2392, $P2391, "PAST"
    get_who $P2393, $P2392
    set $P2394, $P2393["Regex"]
    find_lex $P2395, "$/"
    unless_null $P2395, vivify_1047
    new $P2395, "Undef"
  vivify_1047:
    $P2396 = $P2394."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2395 :named("node"))
    store_lex "$past", $P2396
.annotate 'line', 599
    goto if_2380_end
  if_2380:
.annotate 'line', 595
    find_lex $P2383, "$/"
    unless_null $P2383, vivify_1048
    $P2383 = root_new ['parrot';'Hash']
  vivify_1048:
    set $P2384, $P2383["assertion"]
    unless_null $P2384, vivify_1049
    new $P2384, "Undef"
  vivify_1049:
    $P2385 = $P2384."ast"()
    store_lex "$past", $P2385
.annotate 'line', 596
    find_lex $P2386, "$past"
    unless_null $P2386, vivify_1050
    new $P2386, "Undef"
  vivify_1050:
    find_lex $P2387, "$past"
    unless_null $P2387, vivify_1051
    new $P2387, "Undef"
  vivify_1051:
    $P2388 = $P2387."negate"()
    isfalse $I2389, $P2388
    $P2386."negate"($I2389)
.annotate 'line', 597
    find_lex $P2390, "$past"
    unless_null $P2390, vivify_1052
    new $P2390, "Undef"
  vivify_1052:
    $P2390."subtype"("zerowidth")
  if_2380_end:
.annotate 'line', 602
    find_lex $P2397, "$/"
    find_lex $P2398, "$past"
    unless_null $P2398, vivify_1053
    new $P2398, "Undef"
  vivify_1053:
    $P2399 = $P2397."!make"($P2398)
.annotate 'line', 592
    .return ($P2399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("244_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2401
    .param pmc param_2402
.annotate 'line', 605
    .lex "self", param_2401
    .lex "$/", param_2402
.annotate 'line', 606
    new $P2403, "Undef"
    .lex "$past", $P2403
    find_lex $P2404, "$/"
    unless_null $P2404, vivify_1054
    $P2404 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P2405, $P2404["assertion"]
    unless_null $P2405, vivify_1055
    new $P2405, "Undef"
  vivify_1055:
    $P2406 = $P2405."ast"()
    store_lex "$past", $P2406
.annotate 'line', 607
    find_lex $P2407, "$past"
    unless_null $P2407, vivify_1056
    new $P2407, "Undef"
  vivify_1056:
    $P2407."subtype"("method")
.annotate 'line', 608
    find_lex $P2408, "$past"
    unless_null $P2408, vivify_1057
    new $P2408, "Undef"
  vivify_1057:
    $P2408."name"("")
.annotate 'line', 609
    find_lex $P2409, "$/"
    find_lex $P2410, "$past"
    unless_null $P2410, vivify_1058
    new $P2410, "Undef"
  vivify_1058:
    $P2411 = $P2409."!make"($P2410)
.annotate 'line', 605
    .return ($P2411)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("245_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2413
    .param pmc param_2414
.annotate 'line', 612
    .const 'Sub' $P2481 = "247_1303857426.514" 
    capture_lex $P2481
    .const 'Sub' $P2437 = "246_1303857426.514" 
    capture_lex $P2437
    .lex "self", param_2413
    .lex "$/", param_2414
.annotate 'line', 613
    new $P2415, "Undef"
    .lex "$name", $P2415
.annotate 'line', 614
    new $P2416, "Undef"
    .lex "$past", $P2416
.annotate 'line', 613
    find_lex $P2417, "$/"
    unless_null $P2417, vivify_1059
    $P2417 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2418, $P2417["longname"]
    unless_null $P2418, vivify_1060
    new $P2418, "Undef"
  vivify_1060:
    set $S2419, $P2418
    new $P2420, 'String'
    set $P2420, $S2419
    store_lex "$name", $P2420
    find_lex $P2421, "$past"
    unless_null $P2421, vivify_1061
    new $P2421, "Undef"
  vivify_1061:
.annotate 'line', 615
    find_lex $P2423, "$/"
    unless_null $P2423, vivify_1062
    $P2423 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P2424, $P2423["assertion"]
    unless_null $P2424, vivify_1063
    new $P2424, "Undef"
  vivify_1063:
    if $P2424, if_2422
.annotate 'line', 619
    find_lex $P2433, "$name"
    unless_null $P2433, vivify_1064
    new $P2433, "Undef"
  vivify_1064:
    set $S2434, $P2433
    iseq $I2435, $S2434, "sym"
    if $I2435, if_2432
.annotate 'line', 636
    find_lex $P2457, "self"
    find_lex $P2458, "$/"
    unless_null $P2458, vivify_1065
    new $P2458, "Undef"
  vivify_1065:
    $P2459 = $P2457."named_assertion"($P2458)
    store_lex "$past", $P2459
.annotate 'line', 637
    find_lex $P2461, "$/"
    unless_null $P2461, vivify_1066
    $P2461 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P2462, $P2461["nibbler"]
    unless_null $P2462, vivify_1067
    new $P2462, "Undef"
  vivify_1067:
    if $P2462, if_2460
.annotate 'line', 640
    find_lex $P2470, "$/"
    unless_null $P2470, vivify_1068
    $P2470 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P2471, $P2470["arglist"]
    unless_null $P2471, vivify_1069
    new $P2471, "Undef"
  vivify_1069:
    unless $P2471, if_2469_end
.annotate 'line', 641
    find_lex $P2473, "$/"
    unless_null $P2473, vivify_1070
    $P2473 = root_new ['parrot';'Hash']
  vivify_1070:
    set $P2474, $P2473["arglist"]
    unless_null $P2474, vivify_1071
    $P2474 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
    set $P2475, $P2474[0]
    unless_null $P2475, vivify_1072
    new $P2475, "Undef"
  vivify_1072:
    $P2476 = $P2475."ast"()
    $P2477 = $P2476."list"()
    defined $I2478, $P2477
    unless $I2478, for_undef_1073
    iter $P2472, $P2477
    new $P2487, 'ExceptionHandler'
    set_label $P2487, loop2486_handler
    $P2487."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2487
  loop2486_test:
    unless $P2472, loop2486_done
    shift $P2479, $P2472
  loop2486_redo:
    .const 'Sub' $P2481 = "247_1303857426.514" 
    capture_lex $P2481
    $P2481($P2479)
  loop2486_next:
    goto loop2486_test
  loop2486_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2488, exception, 'type'
    eq $P2488, .CONTROL_LOOP_NEXT, loop2486_next
    eq $P2488, .CONTROL_LOOP_REDO, loop2486_redo
  loop2486_done:
    pop_eh 
  for_undef_1073:
  if_2469_end:
.annotate 'line', 640
    goto if_2460_end
  if_2460:
.annotate 'line', 638
    find_lex $P2463, "$past"
    unless_null $P2463, vivify_1076
    new $P2463, "Undef"
  vivify_1076:
    find_lex $P2464, "$/"
    unless_null $P2464, vivify_1077
    $P2464 = root_new ['parrot';'Hash']
  vivify_1077:
    set $P2465, $P2464["nibbler"]
    unless_null $P2465, vivify_1078
    $P2465 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P2466, $P2465[0]
    unless_null $P2466, vivify_1079
    new $P2466, "Undef"
  vivify_1079:
    $P2467 = $P2466."ast"()
    $P2468 = "buildsub"($P2467)
    $P2463."push"($P2468)
  if_2460_end:
.annotate 'line', 635
    goto if_2432_end
  if_2432:
.annotate 'line', 619
    .const 'Sub' $P2437 = "246_1303857426.514" 
    capture_lex $P2437
    $P2437()
  if_2432_end:
    goto if_2422_end
  if_2422:
.annotate 'line', 616
    find_lex $P2425, "$/"
    unless_null $P2425, vivify_1084
    $P2425 = root_new ['parrot';'Hash']
  vivify_1084:
    set $P2426, $P2425["assertion"]
    unless_null $P2426, vivify_1085
    $P2426 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2427, $P2426[0]
    unless_null $P2427, vivify_1086
    new $P2427, "Undef"
  vivify_1086:
    $P2428 = $P2427."ast"()
    store_lex "$past", $P2428
.annotate 'line', 617
    find_lex $P2429, "self"
    find_lex $P2430, "$past"
    unless_null $P2430, vivify_1087
    new $P2430, "Undef"
  vivify_1087:
    find_lex $P2431, "$name"
    unless_null $P2431, vivify_1088
    new $P2431, "Undef"
  vivify_1088:
    $P2429."subrule_alias"($P2430, $P2431)
  if_2422_end:
.annotate 'line', 644
    find_lex $P2489, "$/"
    find_lex $P2490, "$past"
    unless_null $P2490, vivify_1089
    new $P2490, "Undef"
  vivify_1089:
    $P2491 = $P2489."!make"($P2490)
.annotate 'line', 612
    .return ($P2491)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2480"  :anon :subid("247_1303857426.514") :outer("245_1303857426.514")
    .param pmc param_2482
.annotate 'line', 641
    .lex "$_", param_2482
    find_lex $P2483, "$past"
    unless_null $P2483, vivify_1074
    new $P2483, "Undef"
  vivify_1074:
    find_lex $P2484, "$_"
    unless_null $P2484, vivify_1075
    new $P2484, "Undef"
  vivify_1075:
    $P2485 = $P2483."push"($P2484)
    .return ($P2485)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2436"  :anon :subid("246_1303857426.514") :outer("245_1303857426.514")
.annotate 'line', 620
    new $P2438, "Undef"
    .lex "$rxname", $P2438
.annotate 'line', 621
    new $P2439, "Undef"
    .lex "$regexsym", $P2439
.annotate 'line', 620
    find_lex $P2440, "$?PACKAGE"
    get_who $P2441, $P2440
    set $P2442, $P2441["$REGEXNAME"]
    unless_null $P2442, vivify_1080
    new $P2442, "Undef"
  vivify_1080:
    store_lex "$rxname", $P2442
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2443 = box $S0
            
    store_lex "$regexsym", $P2443
.annotate 'line', 630
    get_hll_global $P2444, "GLOBAL"
    nqp_get_package_through_who $P2445, $P2444, "PAST"
    get_who $P2446, $P2445
    set $P2447, $P2446["Regex"]
.annotate 'line', 631
    get_hll_global $P2448, "GLOBAL"
    nqp_get_package_through_who $P2449, $P2448, "PAST"
    get_who $P2450, $P2449
    set $P2451, $P2450["Regex"]
    find_lex $P2452, "$regexsym"
    unless_null $P2452, vivify_1081
    new $P2452, "Undef"
  vivify_1081:
    $P2453 = $P2451."new"($P2452, "literal" :named("pasttype"))
    find_lex $P2454, "$name"
    unless_null $P2454, vivify_1082
    new $P2454, "Undef"
  vivify_1082:
    find_lex $P2455, "$/"
    unless_null $P2455, vivify_1083
    new $P2455, "Undef"
  vivify_1083:
    $P2456 = $P2447."new"($P2453, $P2454 :named("name"), "subcapture" :named("pasttype"), $P2455 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2456
.annotate 'line', 619
    .return ($P2456)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("248_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2493
    .param pmc param_2494
.annotate 'line', 647
    .const 'Sub' $P2535 = "249_1303857426.514" 
    capture_lex $P2535
    .lex "self", param_2493
    .lex "$/", param_2494
.annotate 'line', 648
    new $P2495, "Undef"
    .lex "$clist", $P2495
.annotate 'line', 649
    new $P2496, "Undef"
    .lex "$past", $P2496
.annotate 'line', 658
    new $P2497, "Undef"
    .lex "$i", $P2497
.annotate 'line', 659
    new $P2498, "Undef"
    .lex "$n", $P2498
.annotate 'line', 648
    find_lex $P2499, "$/"
    unless_null $P2499, vivify_1090
    $P2499 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2500, $P2499["cclass_elem"]
    unless_null $P2500, vivify_1091
    new $P2500, "Undef"
  vivify_1091:
    store_lex "$clist", $P2500
.annotate 'line', 649
    find_lex $P2501, "$clist"
    unless_null $P2501, vivify_1092
    $P2501 = root_new ['parrot';'ResizablePMCArray']
  vivify_1092:
    set $P2502, $P2501[0]
    unless_null $P2502, vivify_1093
    new $P2502, "Undef"
  vivify_1093:
    $P2503 = $P2502."ast"()
    store_lex "$past", $P2503
.annotate 'line', 650
    find_lex $P2507, "$past"
    unless_null $P2507, vivify_1094
    new $P2507, "Undef"
  vivify_1094:
    $P2508 = $P2507."negate"()
    if $P2508, if_2506
    set $P2505, $P2508
    goto if_2506_end
  if_2506:
    find_lex $P2509, "$past"
    unless_null $P2509, vivify_1095
    new $P2509, "Undef"
  vivify_1095:
    $S2510 = $P2509."pasttype"()
    iseq $I2511, $S2510, "subrule"
    new $P2505, 'Integer'
    set $P2505, $I2511
  if_2506_end:
    unless $P2505, if_2504_end
.annotate 'line', 651
    find_lex $P2512, "$past"
    unless_null $P2512, vivify_1096
    new $P2512, "Undef"
  vivify_1096:
    $P2512."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2513, "GLOBAL"
    nqp_get_package_through_who $P2514, $P2513, "PAST"
    get_who $P2515, $P2514
    set $P2516, $P2515["Regex"]
    find_lex $P2517, "$past"
    unless_null $P2517, vivify_1097
    new $P2517, "Undef"
  vivify_1097:
.annotate 'line', 654
    get_hll_global $P2518, "GLOBAL"
    nqp_get_package_through_who $P2519, $P2518, "PAST"
    get_who $P2520, $P2519
    set $P2521, $P2520["Regex"]
    $P2522 = $P2521."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2523, "$/"
    unless_null $P2523, vivify_1098
    new $P2523, "Undef"
  vivify_1098:
    $P2524 = $P2516."new"($P2517, $P2522, $P2523 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2524
  if_2504_end:
.annotate 'line', 658
    new $P2525, "Integer"
    assign $P2525, 1
    store_lex "$i", $P2525
.annotate 'line', 659
    find_lex $P2526, "$clist"
    unless_null $P2526, vivify_1099
    new $P2526, "Undef"
  vivify_1099:
    set $N2527, $P2526
    new $P2528, 'Float'
    set $P2528, $N2527
    store_lex "$n", $P2528
.annotate 'line', 660
    new $P2565, 'ExceptionHandler'
    set_label $P2565, loop2564_handler
    $P2565."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2565
  loop2564_test:
    find_lex $P2529, "$i"
    unless_null $P2529, vivify_1100
    new $P2529, "Undef"
  vivify_1100:
    set $N2530, $P2529
    find_lex $P2531, "$n"
    unless_null $P2531, vivify_1101
    new $P2531, "Undef"
  vivify_1101:
    set $N2532, $P2531
    islt $I2533, $N2530, $N2532
    unless $I2533, loop2564_done
  loop2564_redo:
    .const 'Sub' $P2535 = "249_1303857426.514" 
    capture_lex $P2535
    $P2535()
  loop2564_next:
    goto loop2564_test
  loop2564_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2566, exception, 'type'
    eq $P2566, .CONTROL_LOOP_NEXT, loop2564_next
    eq $P2566, .CONTROL_LOOP_REDO, loop2564_redo
  loop2564_done:
    pop_eh 
.annotate 'line', 671
    find_lex $P2567, "$/"
    find_lex $P2568, "$past"
    unless_null $P2568, vivify_1114
    new $P2568, "Undef"
  vivify_1114:
    $P2569 = $P2567."!make"($P2568)
.annotate 'line', 647
    .return ($P2569)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2534"  :anon :subid("249_1303857426.514") :outer("248_1303857426.514")
.annotate 'line', 661
    new $P2536, "Undef"
    .lex "$ast", $P2536
    find_lex $P2537, "$i"
    unless_null $P2537, vivify_1102
    new $P2537, "Undef"
  vivify_1102:
    set $I2538, $P2537
    find_lex $P2539, "$clist"
    unless_null $P2539, vivify_1103
    $P2539 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $P2540, $P2539[$I2538]
    unless_null $P2540, vivify_1104
    new $P2540, "Undef"
  vivify_1104:
    $P2541 = $P2540."ast"()
    store_lex "$ast", $P2541
.annotate 'line', 662
    find_lex $P2543, "$ast"
    unless_null $P2543, vivify_1105
    new $P2543, "Undef"
  vivify_1105:
    $P2544 = $P2543."negate"()
    if $P2544, if_2542
.annotate 'line', 667
    get_hll_global $P2554, "GLOBAL"
    nqp_get_package_through_who $P2555, $P2554, "PAST"
    get_who $P2556, $P2555
    set $P2557, $P2556["Regex"]
    find_lex $P2558, "$past"
    unless_null $P2558, vivify_1106
    new $P2558, "Undef"
  vivify_1106:
    find_lex $P2559, "$ast"
    unless_null $P2559, vivify_1107
    new $P2559, "Undef"
  vivify_1107:
    find_lex $P2560, "$/"
    unless_null $P2560, vivify_1108
    new $P2560, "Undef"
  vivify_1108:
    $P2561 = $P2557."new"($P2558, $P2559, "alt" :named("pasttype"), $P2560 :named("node"))
    store_lex "$past", $P2561
.annotate 'line', 666
    goto if_2542_end
  if_2542:
.annotate 'line', 663
    find_lex $P2545, "$ast"
    unless_null $P2545, vivify_1109
    new $P2545, "Undef"
  vivify_1109:
    $P2545."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2546, "GLOBAL"
    nqp_get_package_through_who $P2547, $P2546, "PAST"
    get_who $P2548, $P2547
    set $P2549, $P2548["Regex"]
    find_lex $P2550, "$ast"
    unless_null $P2550, vivify_1110
    new $P2550, "Undef"
  vivify_1110:
    find_lex $P2551, "$past"
    unless_null $P2551, vivify_1111
    new $P2551, "Undef"
  vivify_1111:
    find_lex $P2552, "$/"
    unless_null $P2552, vivify_1112
    new $P2552, "Undef"
  vivify_1112:
    $P2553 = $P2549."new"($P2550, $P2551, "concat" :named("pasttype"), $P2552 :named("node"))
    store_lex "$past", $P2553
  if_2542_end:
.annotate 'line', 669
    find_lex $P2562, "$i"
    unless_null $P2562, vivify_1113
    new $P2562, "Undef"
  vivify_1113:
    add $P2563, $P2562, 1
    store_lex "$i", $P2563
.annotate 'line', 660
    .return ($P2563)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("250_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2571
    .param pmc param_2572
.annotate 'line', 674
    .const 'Sub' $P2600 = "252_1303857426.514" 
    capture_lex $P2600
    .const 'Sub' $P2581 = "251_1303857426.514" 
    capture_lex $P2581
    .lex "self", param_2571
    .lex "$/", param_2572
.annotate 'line', 675
    new $P2573, "Undef"
    .lex "$str", $P2573
.annotate 'line', 676
    new $P2574, "Undef"
    .lex "$past", $P2574
.annotate 'line', 675
    new $P2575, "String"
    assign $P2575, ""
    store_lex "$str", $P2575
    find_lex $P2576, "$past"
    unless_null $P2576, vivify_1115
    new $P2576, "Undef"
  vivify_1115:
.annotate 'line', 677
    find_lex $P2578, "$/"
    unless_null $P2578, vivify_1116
    $P2578 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P2579, $P2578["name"]
    unless_null $P2579, vivify_1117
    new $P2579, "Undef"
  vivify_1117:
    if $P2579, if_2577
.annotate 'line', 681
    find_lex $P2595, "$/"
    unless_null $P2595, vivify_1118
    $P2595 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P2596, $P2595["charspec"]
    unless_null $P2596, vivify_1119
    new $P2596, "Undef"
  vivify_1119:
    defined $I2597, $P2596
    unless $I2597, for_undef_1120
    iter $P2594, $P2596
    new $P2626, 'ExceptionHandler'
    set_label $P2626, loop2625_handler
    $P2626."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2626
  loop2625_test:
    unless $P2594, loop2625_done
    shift $P2598, $P2594
  loop2625_redo:
    .const 'Sub' $P2600 = "252_1303857426.514" 
    capture_lex $P2600
    $P2600($P2598)
  loop2625_next:
    goto loop2625_test
  loop2625_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2627, exception, 'type'
    eq $P2627, .CONTROL_LOOP_NEXT, loop2625_next
    eq $P2627, .CONTROL_LOOP_REDO, loop2625_redo
  loop2625_done:
    pop_eh 
  for_undef_1120:
.annotate 'line', 706
    get_hll_global $P2628, "GLOBAL"
    nqp_get_package_through_who $P2629, $P2628, "PAST"
    get_who $P2630, $P2629
    set $P2631, $P2630["Regex"]
    find_lex $P2632, "$str"
    unless_null $P2632, vivify_1133
    new $P2632, "Undef"
  vivify_1133:
    find_lex $P2633, "$/"
    unless_null $P2633, vivify_1134
    new $P2633, "Undef"
  vivify_1134:
    $P2634 = $P2631."new"($P2632, "enumcharlist" :named("pasttype"), $P2633 :named("node"))
    store_lex "$past", $P2634
.annotate 'line', 680
    goto if_2577_end
  if_2577:
.annotate 'line', 677
    .const 'Sub' $P2581 = "251_1303857426.514" 
    capture_lex $P2581
    $P2581()
  if_2577_end:
.annotate 'line', 708
    find_lex $P2635, "$past"
    unless_null $P2635, vivify_1139
    new $P2635, "Undef"
  vivify_1139:
    find_lex $P2636, "$/"
    unless_null $P2636, vivify_1140
    $P2636 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P2637, $P2636["sign"]
    unless_null $P2637, vivify_1141
    new $P2637, "Undef"
  vivify_1141:
    set $S2638, $P2637
    iseq $I2639, $S2638, "-"
    $P2635."negate"($I2639)
.annotate 'line', 709
    find_lex $P2640, "$/"
    find_lex $P2641, "$past"
    unless_null $P2641, vivify_1142
    new $P2641, "Undef"
  vivify_1142:
    $P2642 = $P2640."!make"($P2641)
.annotate 'line', 674
    .return ($P2642)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2599"  :anon :subid("252_1303857426.514") :outer("250_1303857426.514")
    .param pmc param_2601
.annotate 'line', 681
    .const 'Sub' $P2607 = "253_1303857426.514" 
    capture_lex $P2607
    .lex "$_", param_2601
.annotate 'line', 682
    find_lex $P2604, "$_"
    unless_null $P2604, vivify_1121
    $P2604 = root_new ['parrot';'ResizablePMCArray']
  vivify_1121:
    set $P2605, $P2604[1]
    unless_null $P2605, vivify_1122
    new $P2605, "Undef"
  vivify_1122:
    if $P2605, if_2603
.annotate 'line', 704
    find_lex $P2621, "$str"
    unless_null $P2621, vivify_1123
    new $P2621, "Undef"
  vivify_1123:
    find_lex $P2622, "$_"
    unless_null $P2622, vivify_1124
    $P2622 = root_new ['parrot';'ResizablePMCArray']
  vivify_1124:
    set $P2623, $P2622[0]
    unless_null $P2623, vivify_1125
    new $P2623, "Undef"
  vivify_1125:
    concat $P2624, $P2621, $P2623
    store_lex "$str", $P2624
    set $P2602, $P2624
.annotate 'line', 682
    goto if_2603_end
  if_2603:
    .const 'Sub' $P2607 = "253_1303857426.514" 
    capture_lex $P2607
    $P2620 = $P2607()
    set $P2602, $P2620
  if_2603_end:
.annotate 'line', 681
    .return ($P2602)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2606"  :anon :subid("253_1303857426.514") :outer("252_1303857426.514")
.annotate 'line', 683
    new $P2608, "Undef"
    .lex "$a", $P2608
.annotate 'line', 684
    new $P2609, "Undef"
    .lex "$b", $P2609
.annotate 'line', 685
    new $P2610, "Undef"
    .lex "$c", $P2610
.annotate 'line', 683
    find_lex $P2611, "$_"
    unless_null $P2611, vivify_1126
    $P2611 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2612, $P2611[0]
    unless_null $P2612, vivify_1127
    new $P2612, "Undef"
  vivify_1127:
    store_lex "$a", $P2612
.annotate 'line', 684
    find_lex $P2613, "$_"
    unless_null $P2613, vivify_1128
    $P2613 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2614, $P2613[1]
    unless_null $P2614, vivify_1129
    $P2614 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P2615, $P2614[0]
    unless_null $P2615, vivify_1130
    new $P2615, "Undef"
  vivify_1130:
    store_lex "$b", $P2615
.annotate 'line', 685

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
                                 $P2616 = box $S2
                             
    store_lex "$c", $P2616
.annotate 'line', 702
    find_lex $P2617, "$str"
    unless_null $P2617, vivify_1131
    new $P2617, "Undef"
  vivify_1131:
    find_lex $P2618, "$c"
    unless_null $P2618, vivify_1132
    new $P2618, "Undef"
  vivify_1132:
    concat $P2619, $P2617, $P2618
    store_lex "$str", $P2619
.annotate 'line', 682
    .return ($P2619)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2580"  :anon :subid("251_1303857426.514") :outer("250_1303857426.514")
.annotate 'line', 678
    new $P2582, "Undef"
    .lex "$name", $P2582
    find_lex $P2583, "$/"
    unless_null $P2583, vivify_1135
    $P2583 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P2584, $P2583["name"]
    unless_null $P2584, vivify_1136
    new $P2584, "Undef"
  vivify_1136:
    set $S2585, $P2584
    new $P2586, 'String'
    set $P2586, $S2585
    store_lex "$name", $P2586
.annotate 'line', 679
    get_hll_global $P2587, "GLOBAL"
    nqp_get_package_through_who $P2588, $P2587, "PAST"
    get_who $P2589, $P2588
    set $P2590, $P2589["Regex"]
    find_lex $P2591, "$name"
    unless_null $P2591, vivify_1137
    new $P2591, "Undef"
  vivify_1137:
    find_lex $P2592, "$/"
    unless_null $P2592, vivify_1138
    new $P2592, "Undef"
  vivify_1138:
    $P2593 = $P2590."new"($P2591, "subrule" :named("pasttype"), "method" :named("subtype"), $P2592 :named("node"))
    store_lex "$past", $P2593
.annotate 'line', 677
    .return ($P2593)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("254_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2644
    .param pmc param_2645
.annotate 'line', 712
    .lex "self", param_2644
    .lex "$/", param_2645
.annotate 'line', 713
    $P2646 = root_new ['parrot';'Hash']
    .lex "%mods", $P2646
.annotate 'line', 714
    new $P2647, "Undef"
    .lex "$n", $P2647
.annotate 'line', 713
    find_lex $P2648, "$?PACKAGE"
    get_who $P2649, $P2648
    set $P2650, $P2649["@MODIFIERS"]
    unless_null $P2650, vivify_1143
    $P2650 = root_new ['parrot';'ResizablePMCArray']
  vivify_1143:
    set $P2651, $P2650[0]
    unless_null $P2651, vivify_1144
    new $P2651, "Undef"
  vivify_1144:
    store_lex "%mods", $P2651
.annotate 'line', 714
    find_lex $P2654, "$/"
    unless_null $P2654, vivify_1145
    $P2654 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P2655, $P2654["n"]
    unless_null $P2655, vivify_1146
    $P2655 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
    set $P2656, $P2655[0]
    unless_null $P2656, vivify_1147
    new $P2656, "Undef"
  vivify_1147:
    set $S2657, $P2656
    isgt $I2658, $S2657, ""
    if $I2658, if_2653
    new $P2663, "Integer"
    assign $P2663, 1
    set $P2652, $P2663
    goto if_2653_end
  if_2653:
    find_lex $P2659, "$/"
    unless_null $P2659, vivify_1148
    $P2659 = root_new ['parrot';'Hash']
  vivify_1148:
    set $P2660, $P2659["n"]
    unless_null $P2660, vivify_1149
    $P2660 = root_new ['parrot';'ResizablePMCArray']
  vivify_1149:
    set $P2661, $P2660[0]
    unless_null $P2661, vivify_1150
    new $P2661, "Undef"
  vivify_1150:
    set $N2662, $P2661
    new $P2652, 'Float'
    set $P2652, $N2662
  if_2653_end:
    store_lex "$n", $P2652
.annotate 'line', 715
    find_lex $P2664, "$n"
    unless_null $P2664, vivify_1151
    new $P2664, "Undef"
  vivify_1151:
    find_lex $P2665, "$/"
    unless_null $P2665, vivify_1152
    $P2665 = root_new ['parrot';'Hash']
  vivify_1152:
    set $P2666, $P2665["mod_ident"]
    unless_null $P2666, vivify_1153
    $P2666 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2667, $P2666["sym"]
    unless_null $P2667, vivify_1154
    new $P2667, "Undef"
  vivify_1154:
    set $S2668, $P2667
    find_lex $P2669, "%mods"
    unless_null $P2669, vivify_1155
    $P2669 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2669
  vivify_1155:
    set $P2669[$S2668], $P2664
.annotate 'line', 716
    find_lex $P2670, "$/"
    $P2671 = $P2670."!make"(0)
.annotate 'line', 712
    .return ($P2671)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("255_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2676
    .param pmc param_2677
    .param pmc param_2678
.annotate 'line', 810
    .lex "self", param_2676
    .lex "$past", param_2677
    .lex "$name", param_2678
.annotate 'line', 811
    find_lex $P2680, "$past"
    unless_null $P2680, vivify_1156
    new $P2680, "Undef"
  vivify_1156:
    $S2681 = $P2680."name"()
    isgt $I2682, $S2681, ""
    if $I2682, if_2679
.annotate 'line', 812
    find_lex $P2689, "$past"
    unless_null $P2689, vivify_1157
    new $P2689, "Undef"
  vivify_1157:
    find_lex $P2690, "$name"
    unless_null $P2690, vivify_1158
    new $P2690, "Undef"
  vivify_1158:
    $P2689."name"($P2690)
    goto if_2679_end
  if_2679:
.annotate 'line', 811
    find_lex $P2683, "$past"
    unless_null $P2683, vivify_1159
    new $P2683, "Undef"
  vivify_1159:
    find_lex $P2684, "$name"
    unless_null $P2684, vivify_1160
    new $P2684, "Undef"
  vivify_1160:
    concat $P2685, $P2684, "="
    find_lex $P2686, "$past"
    unless_null $P2686, vivify_1161
    new $P2686, "Undef"
  vivify_1161:
    $S2687 = $P2686."name"()
    concat $P2688, $P2685, $S2687
    $P2683."name"($P2688)
  if_2679_end:
.annotate 'line', 813
    find_lex $P2691, "$past"
    unless_null $P2691, vivify_1162
    new $P2691, "Undef"
  vivify_1162:
    $P2692 = $P2691."subtype"("capture")
.annotate 'line', 810
    .return ($P2692)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("256_1303857426.514") :outer("175_1303857426.514")
    .param pmc param_2694
    .param pmc param_2695
.annotate 'line', 816
    .lex "self", param_2694
    .lex "$/", param_2695
.annotate 'line', 817
    new $P2696, "Undef"
    .lex "$name", $P2696
.annotate 'line', 818
    new $P2697, "Undef"
    .lex "$past", $P2697
.annotate 'line', 817
    find_lex $P2698, "$/"
    unless_null $P2698, vivify_1163
    $P2698 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2699, $P2698["longname"]
    unless_null $P2699, vivify_1164
    new $P2699, "Undef"
  vivify_1164:
    set $S2700, $P2699
    new $P2701, 'String'
    set $P2701, $S2700
    store_lex "$name", $P2701
.annotate 'line', 818
    get_hll_global $P2702, "GLOBAL"
    nqp_get_package_through_who $P2703, $P2702, "PAST"
    get_who $P2704, $P2703
    set $P2705, $P2704["Regex"]
    find_lex $P2706, "$name"
    unless_null $P2706, vivify_1165
    new $P2706, "Undef"
  vivify_1165:
    find_lex $P2707, "$name"
    unless_null $P2707, vivify_1166
    new $P2707, "Undef"
  vivify_1166:
    find_lex $P2708, "$/"
    unless_null $P2708, vivify_1167
    new $P2708, "Undef"
  vivify_1167:
    $P2709 = $P2705."new"($P2706, $P2707 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2708 :named("node"))
    store_lex "$past", $P2709
    find_lex $P2710, "$past"
    unless_null $P2710, vivify_1168
    new $P2710, "Undef"
  vivify_1168:
.annotate 'line', 816
    .return ($P2710)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2823"  :subid("258_1303857426.514") :outer("10_1303857426.514")
.annotate 'line', 825
    .const 'Sub' $P2828 = "259_1303857426.514" 
    capture_lex $P2828
    .lex "$?PACKAGE", $P2825
    .lex "$?CLASS", $P2826
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1169") :outer("258_1303857426.514")
.annotate 'line', 825
    .const 'Sub' $P2824 = "258_1303857426.514" 
    .local pmc block
    set block, $P2824
    .const 'Sub' $P2828 = "259_1303857426.514" 
    capture_lex $P2828
    $P2828()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2827"  :anon :subid("259_1303857426.514") :outer("258_1303857426.514")
.annotate 'line', 825
    nqp_get_sc_object $P2829, "1303857421.716", 3
    .local pmc type_obj
    set type_obj, $P2829
    get_how $P2830, type_obj
    $P2831 = $P2830."compose"(type_obj)
    .return ($P2831)
.end


.HLL "nqp"

.namespace []
.sub "_block2858" :load :anon :subid("260_1303857426.514")
.annotate 'line', 1
    .const 'Sub' $P2860 = "10_1303857426.514" 
    $P2861 = $P2860()
    .return ($P2861)
.end

