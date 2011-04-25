
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303739789.706")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2830 = "258_1303739789.706" 
    capture_lex $P2830
    .const 'Sub' $P930 = "175_1303739789.706" 
    capture_lex $P930
    .const 'Sub' $P24 = "12_1303739789.706" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1303739789.706" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 828
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 833
    .const 'Sub' $P17 = "11_1303739789.706" 
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
    .const 'Sub' $P24 = "12_1303739789.706" 
    capture_lex $P24
    $P24()
.annotate 'line', 212
    .const 'Sub' $P930 = "175_1303739789.706" 
    capture_lex $P930
    $P930()
.annotate 'line', 825
    .const 'Sub' $P2830 = "258_1303739789.706" 
    capture_lex $P2830
    $P2830()
.annotate 'line', 828
    get_hll_global $P2840, "GLOBAL"
    nqp_get_package_through_who $P2841, $P2840, "Regex"
    nqp_get_package_through_who $P2842, $P2841, "P6Regex"
    get_who $P2843, $P2842
    set $P2844, $P2843["Compiler"]
    $P2845 = $P2844."new"()
    store_lex "$p6regex", $P2845
.annotate 'line', 829
    find_lex $P2846, "$p6regex"
    unless_null $P2846, vivify_1170
    new $P2846, "Undef"
  vivify_1170:
    $P2846."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2847, "$p6regex"
    unless_null $P2847, vivify_1171
    new $P2847, "Undef"
  vivify_1171:
    get_hll_global $P2848, "GLOBAL"
    nqp_get_package_through_who $P2849, $P2848, "Regex"
    nqp_get_package_through_who $P2850, $P2849, "P6Regex"
    get_who $P2851, $P2850
    set $P2852, $P2851["Grammar"]
    $P2847."parsegrammar"($P2852)
.annotate 'line', 831
    find_lex $P2853, "$p6regex"
    unless_null $P2853, vivify_1172
    new $P2853, "Undef"
  vivify_1172:
    get_hll_global $P2854, "GLOBAL"
    nqp_get_package_through_who $P2855, $P2854, "Regex"
    nqp_get_package_through_who $P2856, $P2855, "P6Regex"
    get_who $P2857, $P2856
    set $P2858, $P2857["Actions"]
    $P2853."parseactions"($P2858)
    find_lex $P2859, "MAIN"
    find_lex $P2862, "@ARGS"
    if $P2862, if_2861
    set $P2860, $P2862
    goto if_2861_end
  if_2861:
    .const 'Sub' $P2863 = "11_1303739789.706" 
    find_lex $P2864, "@ARGS"
    $P2865 = $P2863($P2864 :flat)
    set $P2860, $P2865
  if_2861_end:
.annotate 'line', 1
    .return ($P2860)
    .const 'Sub' $P2867 = "260_1303739789.706" 
    .return ($P2867)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post261") :outer("10_1303739789.706")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303739789.706" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2871, "1303739784.973"
    isnull $I2872, $P2871
    if $I2872, if_2870
    .const 'Sub' $P2952 = "10_1303739789.706" 
    $P2953 = $P2952."get_lexinfo"()
    nqp_get_sc_object $P2954, "1303739784.973", 0
    $P2953."set_static_lexpad_value"("GLOBALish", $P2954)
    .const 'Sub' $P2955 = "10_1303739789.706" 
    $P2956 = $P2955."get_lexinfo"()
    $P2956."finish_static_lexpad"()
    .const 'Sub' $P2957 = "10_1303739789.706" 
    $P2958 = $P2957."get_lexinfo"()
    nqp_get_sc_object $P2959, "1303739784.973", 0
    $P2958."set_static_lexpad_value"("$?PACKAGE", $P2959)
    .const 'Sub' $P2960 = "10_1303739789.706" 
    $P2961 = $P2960."get_lexinfo"()
    $P2961."finish_static_lexpad"()
    nqp_get_sc_object $P2962, "1303739784.973", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2962
    .const 'Sub' $P2963 = "12_1303739789.706" 
    $P2964 = $P2963."get_lexinfo"()
    nqp_get_sc_object $P2965, "1303739784.973", 1
    $P2964."set_static_lexpad_value"("$?PACKAGE", $P2965)
    .const 'Sub' $P2966 = "12_1303739789.706" 
    $P2967 = $P2966."get_lexinfo"()
    $P2967."finish_static_lexpad"()
    .const 'Sub' $P2968 = "12_1303739789.706" 
    $P2969 = $P2968."get_lexinfo"()
    nqp_get_sc_object $P2970, "1303739784.973", 1
    $P2969."set_static_lexpad_value"("$?CLASS", $P2970)
    .const 'Sub' $P2971 = "12_1303739789.706" 
    $P2972 = $P2971."get_lexinfo"()
    $P2972."finish_static_lexpad"()
    nqp_get_sc_object $P2973, "1303739784.973", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2973
    .const 'Sub' $P2974 = "176_1303739789.706" 
    nqp_get_sc_object $P2975, "1303739784.973", 2
    get_who $P2976, $P2975
    set $P2976["buildsub"], $P2974
    .const 'Sub' $P2977 = "175_1303739789.706" 
    $P2978 = $P2977."get_lexinfo"()
    nqp_get_sc_object $P2979, "1303739784.973", 2
    $P2978."set_static_lexpad_value"("$?PACKAGE", $P2979)
    .const 'Sub' $P2980 = "175_1303739789.706" 
    $P2981 = $P2980."get_lexinfo"()
    $P2981."finish_static_lexpad"()
    .const 'Sub' $P2982 = "175_1303739789.706" 
    $P2983 = $P2982."get_lexinfo"()
    nqp_get_sc_object $P2984, "1303739784.973", 2
    $P2983."set_static_lexpad_value"("$?CLASS", $P2984)
    .const 'Sub' $P2985 = "175_1303739789.706" 
    $P2986 = $P2985."get_lexinfo"()
    $P2986."finish_static_lexpad"()
    nqp_get_sc_object $P2987, "1303739784.973", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2987
    .const 'Sub' $P2988 = "258_1303739789.706" 
    $P2989 = $P2988."get_lexinfo"()
    nqp_get_sc_object $P2990, "1303739784.973", 3
    $P2989."set_static_lexpad_value"("$?PACKAGE", $P2990)
    .const 'Sub' $P2991 = "258_1303739789.706" 
    $P2992 = $P2991."get_lexinfo"()
    $P2992."finish_static_lexpad"()
    .const 'Sub' $P2993 = "258_1303739789.706" 
    $P2994 = $P2993."get_lexinfo"()
    nqp_get_sc_object $P2995, "1303739784.973", 3
    $P2994."set_static_lexpad_value"("$?CLASS", $P2995)
    .const 'Sub' $P2996 = "258_1303739789.706" 
    $P2997 = $P2996."get_lexinfo"()
    $P2997."finish_static_lexpad"()
    goto if_2870_end
  if_2870:
    nqp_dynop_setup 
    getinterp $P2873
    get_class $P2874, "LexPad"
    get_class $P2875, "NQPLexPad"
    $P2873."hll_map"($P2874, $P2875)
    nqp_create_sc $P2876, "1303739784.973"
    .local pmc cur_sc
    set cur_sc, $P2876
    get_hll_global $P2877, "KnowHOW"
    $P2878 = $P2877."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2878, cur_sc
    nqp_set_sc_object "1303739784.973", 0, $P2878
    .const 'Sub' $P2879 = "10_1303739789.706" 
    $P2880 = $P2879."get_lexinfo"()
    nqp_get_sc_object $P2881, "1303739784.973", 0
    $P2880."set_static_lexpad_value"("GLOBALish", $P2881)
    .const 'Sub' $P2882 = "10_1303739789.706" 
    $P2883 = $P2882."get_lexinfo"()
    $P2883."finish_static_lexpad"()
    .const 'Sub' $P2884 = "10_1303739789.706" 
    $P2885 = $P2884."get_lexinfo"()
    nqp_get_sc_object $P2886, "1303739784.973", 0
    $P2885."set_static_lexpad_value"("$?PACKAGE", $P2886)
    .const 'Sub' $P2887 = "10_1303739789.706" 
    $P2888 = $P2887."get_lexinfo"()
    $P2888."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2889, "ModuleLoader"
    $P2890 = $P2889."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2890)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2891, "ModuleLoader"
    nqp_get_sc_object $P2892, "1303739784.973", 0
    $P2891."load_module"("Regex", $P2892)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2893, "ModuleLoader"
    nqp_get_sc_object $P2894, "1303739784.973", 0
    $P2893."load_module"("HLL", $P2894)
    get_hll_global $P2895, "NQPClassHOW"
    $P2896 = $P2895."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2896, cur_sc
    nqp_set_sc_object "1303739784.973", 1, $P2896
    nqp_get_sc_object $P2897, "1303739784.973", 1
    nqp_get_sc_object $P2898, "1303739784.973", 0
    nqp_get_package_through_who $P2899, $P2898, "Regex"
    nqp_get_package_through_who $P2900, $P2899, "P6Regex"
    get_who $P2901, $P2900
    set $P2901["Grammar"], $P2897
    nqp_get_sc_object $P2902, "1303739784.973", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2902
    .const 'Sub' $P2903 = "12_1303739789.706" 
    $P2904 = $P2903."get_lexinfo"()
    nqp_get_sc_object $P2905, "1303739784.973", 1
    $P2904."set_static_lexpad_value"("$?PACKAGE", $P2905)
    .const 'Sub' $P2906 = "12_1303739789.706" 
    $P2907 = $P2906."get_lexinfo"()
    $P2907."finish_static_lexpad"()
    .const 'Sub' $P2908 = "12_1303739789.706" 
    $P2909 = $P2908."get_lexinfo"()
    nqp_get_sc_object $P2910, "1303739784.973", 1
    $P2909."set_static_lexpad_value"("$?CLASS", $P2910)
    .const 'Sub' $P2911 = "12_1303739789.706" 
    $P2912 = $P2911."get_lexinfo"()
    $P2912."finish_static_lexpad"()
    get_hll_global $P2913, "NQPClassHOW"
    $P2914 = $P2913."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2914, cur_sc
    nqp_set_sc_object "1303739784.973", 2, $P2914
    nqp_get_sc_object $P2915, "1303739784.973", 2
    nqp_get_sc_object $P2916, "1303739784.973", 0
    nqp_get_package_through_who $P2917, $P2916, "Regex"
    nqp_get_package_through_who $P2918, $P2917, "P6Regex"
    get_who $P2919, $P2918
    set $P2919["Actions"], $P2915
    nqp_get_sc_object $P2920, "1303739784.973", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2920
    .const 'Sub' $P2921 = "176_1303739789.706" 
    nqp_get_sc_object $P2922, "1303739784.973", 2
    get_who $P2923, $P2922
    set $P2923["buildsub"], $P2921
    .const 'Sub' $P2924 = "175_1303739789.706" 
    $P2925 = $P2924."get_lexinfo"()
    nqp_get_sc_object $P2926, "1303739784.973", 2
    $P2925."set_static_lexpad_value"("$?PACKAGE", $P2926)
    .const 'Sub' $P2927 = "175_1303739789.706" 
    $P2928 = $P2927."get_lexinfo"()
    $P2928."finish_static_lexpad"()
    .const 'Sub' $P2929 = "175_1303739789.706" 
    $P2930 = $P2929."get_lexinfo"()
    nqp_get_sc_object $P2931, "1303739784.973", 2
    $P2930."set_static_lexpad_value"("$?CLASS", $P2931)
    .const 'Sub' $P2932 = "175_1303739789.706" 
    $P2933 = $P2932."get_lexinfo"()
    $P2933."finish_static_lexpad"()
    get_hll_global $P2934, "NQPClassHOW"
    $P2935 = $P2934."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2935, cur_sc
    nqp_set_sc_object "1303739784.973", 3, $P2935
    nqp_get_sc_object $P2936, "1303739784.973", 3
    nqp_get_sc_object $P2937, "1303739784.973", 0
    nqp_get_package_through_who $P2938, $P2937, "Regex"
    nqp_get_package_through_who $P2939, $P2938, "P6Regex"
    get_who $P2940, $P2939
    set $P2940["Compiler"], $P2936
    nqp_get_sc_object $P2941, "1303739784.973", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2941
    .const 'Sub' $P2942 = "258_1303739789.706" 
    $P2943 = $P2942."get_lexinfo"()
    nqp_get_sc_object $P2944, "1303739784.973", 3
    $P2943."set_static_lexpad_value"("$?PACKAGE", $P2944)
    .const 'Sub' $P2945 = "258_1303739789.706" 
    $P2946 = $P2945."get_lexinfo"()
    $P2946."finish_static_lexpad"()
    .const 'Sub' $P2947 = "258_1303739789.706" 
    $P2948 = $P2947."get_lexinfo"()
    nqp_get_sc_object $P2949, "1303739784.973", 3
    $P2948."set_static_lexpad_value"("$?CLASS", $P2949)
    .const 'Sub' $P2950 = "258_1303739789.706" 
    $P2951 = $P2950."get_lexinfo"()
    $P2951."finish_static_lexpad"()
  if_2870_end:
    nqp_get_sc_object $P2998, "1303739784.973", 0
    set_hll_global "GLOBAL", $P2998
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1303739789.706") :outer("10_1303739789.706")
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
.sub "_block23"  :subid("12_1303739789.706") :outer("10_1303739789.706")
.annotate 'line', 9
    .const 'Sub' $P637 = "174_1303739789.706" 
    capture_lex $P637
    .const 'Sub' $P629 = "172_1303739789.706" 
    capture_lex $P629
    .const 'Sub' $P622 = "170_1303739789.706" 
    capture_lex $P622
    .const 'Sub' $P615 = "168_1303739789.706" 
    capture_lex $P615
    .const 'Sub' $P593 = "163_1303739789.706" 
    capture_lex $P593
    .const 'Sub' $P559 = "157_1303739789.706" 
    capture_lex $P559
    .const 'Sub' $P547 = "154_1303739789.706" 
    capture_lex $P547
    .const 'Sub' $P535 = "151_1303739789.706" 
    capture_lex $P535
    .const 'Sub' $P529 = "149_1303739789.706" 
    capture_lex $P529
    .const 'Sub' $P518 = "146_1303739789.706" 
    capture_lex $P518
    .const 'Sub' $P507 = "143_1303739789.706" 
    capture_lex $P507
    .const 'Sub' $P496 = "139_1303739789.706" 
    capture_lex $P496
    .const 'Sub' $P486 = "136_1303739789.706" 
    capture_lex $P486
    .const 'Sub' $P480 = "134_1303739789.706" 
    capture_lex $P480
    .const 'Sub' $P474 = "132_1303739789.706" 
    capture_lex $P474
    .const 'Sub' $P468 = "130_1303739789.706" 
    capture_lex $P468
    .const 'Sub' $P462 = "128_1303739789.706" 
    capture_lex $P462
    .const 'Sub' $P454 = "126_1303739789.706" 
    capture_lex $P454
    .const 'Sub' $P443 = "124_1303739789.706" 
    capture_lex $P443
    .const 'Sub' $P432 = "122_1303739789.706" 
    capture_lex $P432
    .const 'Sub' $P426 = "120_1303739789.706" 
    capture_lex $P426
    .const 'Sub' $P420 = "118_1303739789.706" 
    capture_lex $P420
    .const 'Sub' $P414 = "116_1303739789.706" 
    capture_lex $P414
    .const 'Sub' $P408 = "114_1303739789.706" 
    capture_lex $P408
    .const 'Sub' $P402 = "112_1303739789.706" 
    capture_lex $P402
    .const 'Sub' $P396 = "110_1303739789.706" 
    capture_lex $P396
    .const 'Sub' $P390 = "108_1303739789.706" 
    capture_lex $P390
    .const 'Sub' $P384 = "106_1303739789.706" 
    capture_lex $P384
    .const 'Sub' $P370 = "102_1303739789.706" 
    capture_lex $P370
    .const 'Sub' $P360 = "100_1303739789.706" 
    capture_lex $P360
    .const 'Sub' $P353 = "98_1303739789.706" 
    capture_lex $P353
    .const 'Sub' $P341 = "96_1303739789.706" 
    capture_lex $P341
    .const 'Sub' $P334 = "94_1303739789.706" 
    capture_lex $P334
    .const 'Sub' $P328 = "92_1303739789.706" 
    capture_lex $P328
    .const 'Sub' $P322 = "90_1303739789.706" 
    capture_lex $P322
    .const 'Sub' $P316 = "88_1303739789.706" 
    capture_lex $P316
    .const 'Sub' $P309 = "86_1303739789.706" 
    capture_lex $P309
    .const 'Sub' $P302 = "84_1303739789.706" 
    capture_lex $P302
    .const 'Sub' $P295 = "82_1303739789.706" 
    capture_lex $P295
    .const 'Sub' $P288 = "80_1303739789.706" 
    capture_lex $P288
    .const 'Sub' $P282 = "78_1303739789.706" 
    capture_lex $P282
    .const 'Sub' $P276 = "76_1303739789.706" 
    capture_lex $P276
    .const 'Sub' $P270 = "74_1303739789.706" 
    capture_lex $P270
    .const 'Sub' $P264 = "72_1303739789.706" 
    capture_lex $P264
    .const 'Sub' $P258 = "70_1303739789.706" 
    capture_lex $P258
    .const 'Sub' $P253 = "68_1303739789.706" 
    capture_lex $P253
    .const 'Sub' $P248 = "66_1303739789.706" 
    capture_lex $P248
    .const 'Sub' $P242 = "64_1303739789.706" 
    capture_lex $P242
    .const 'Sub' $P236 = "62_1303739789.706" 
    capture_lex $P236
    .const 'Sub' $P230 = "60_1303739789.706" 
    capture_lex $P230
    .const 'Sub' $P213 = "55_1303739789.706" 
    capture_lex $P213
    .const 'Sub' $P198 = "53_1303739789.706" 
    capture_lex $P198
    .const 'Sub' $P175 = "47_1303739789.706" 
    capture_lex $P175
    .const 'Sub' $P168 = "45_1303739789.706" 
    capture_lex $P168
    .const 'Sub' $P161 = "43_1303739789.706" 
    capture_lex $P161
    .const 'Sub' $P154 = "41_1303739789.706" 
    capture_lex $P154
    .const 'Sub' $P135 = "36_1303739789.706" 
    capture_lex $P135
    .const 'Sub' $P123 = "33_1303739789.706" 
    capture_lex $P123
    .const 'Sub' $P116 = "31_1303739789.706" 
    capture_lex $P116
    .const 'Sub' $P107 = "29_1303739789.706" 
    capture_lex $P107
    .const 'Sub' $P97 = "27_1303739789.706" 
    capture_lex $P97
    .const 'Sub' $P90 = "25_1303739789.706" 
    capture_lex $P90
    .const 'Sub' $P78 = "23_1303739789.706" 
    capture_lex $P78
    .const 'Sub' $P71 = "21_1303739789.706" 
    capture_lex $P71
    .const 'Sub' $P64 = "19_1303739789.706" 
    capture_lex $P64
    .const 'Sub' $P54 = "16_1303739789.706" 
    capture_lex $P54
    .const 'Sub' $P47 = "14_1303739789.706" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1303739789.706" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 11
    .const 'Sub' $P629 = "172_1303739789.706" 
    capture_lex $P629
.annotate 'line', 9
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post264") :outer("12_1303739789.706")
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1303739789.706" 
    .local pmc block
    set block, $P24
    .const 'Sub' $P637 = "174_1303739789.706" 
    capture_lex $P637
    $P637()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block636"  :anon :subid("174_1303739789.706") :outer("12_1303739789.706")
.annotate 'line', 9
    nqp_get_sc_object $P638, "1303739784.973", 1
    .local pmc type_obj
    set type_obj, $P638
    get_how $P639, type_obj
    .const 'Sub' $P640 = "13_1303739789.706" 
    $P639."add_method"(type_obj, "obs", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "14_1303739789.706" 
    $P641."add_method"(type_obj, "ws", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__ws"
    $P643."add_method"(type_obj, "!PREFIX__ws", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "16_1303739789.706" 
    $P645."add_method"(type_obj, "normspace", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__normspace"
    $P647."add_method"(type_obj, "!PREFIX__normspace", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "19_1303739789.706" 
    $P649."add_method"(type_obj, "identifier", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__identifier"
    $P651."add_method"(type_obj, "!PREFIX__identifier", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "21_1303739789.706" 
    $P653."add_method"(type_obj, "arg", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__arg"
    $P655."add_method"(type_obj, "!PREFIX__arg", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "23_1303739789.706" 
    $P657."add_method"(type_obj, "arglist", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__arglist"
    $P659."add_method"(type_obj, "!PREFIX__arglist", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "25_1303739789.706" 
    $P661."add_method"(type_obj, "TOP", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__TOP"
    $P663."add_method"(type_obj, "!PREFIX__TOP", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "27_1303739789.706" 
    $P665."add_method"(type_obj, "nibbler", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__nibbler"
    $P667."add_method"(type_obj, "!PREFIX__nibbler", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "29_1303739789.706" 
    $P669."add_method"(type_obj, "termconj", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__termconj"
    $P671."add_method"(type_obj, "!PREFIX__termconj", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "31_1303739789.706" 
    $P673."add_method"(type_obj, "termish", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__termish"
    $P675."add_method"(type_obj, "!PREFIX__termish", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "33_1303739789.706" 
    $P677."add_method"(type_obj, "quantified_atom", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__quantified_atom"
    $P679."add_method"(type_obj, "!PREFIX__quantified_atom", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "36_1303739789.706" 
    $P681."add_method"(type_obj, "atom", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__atom"
    $P683."add_method"(type_obj, "!PREFIX__atom", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "39_1303739789.706" 
    $P685."add_method"(type_obj, "quantifier", $P686)
    get_how $P687, type_obj
    .const 'Sub' $P688 = "40_1303739789.706" 
    $P687."add_method"(type_obj, "!PREFIX__quantifier", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "41_1303739789.706" 
    $P689."add_method"(type_obj, "quantifier:sym<*>", $P690)
    get_how $P691, type_obj
    get_global $P692, "!PREFIX__quantifier:sym<*>"
    $P691."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "43_1303739789.706" 
    $P693."add_method"(type_obj, "quantifier:sym<+>", $P694)
    get_how $P695, type_obj
    get_global $P696, "!PREFIX__quantifier:sym<+>"
    $P695."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "45_1303739789.706" 
    $P697."add_method"(type_obj, "quantifier:sym<?>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__quantifier:sym<?>"
    $P699."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "47_1303739789.706" 
    $P701."add_method"(type_obj, "quantifier:sym<{N,M}>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__quantifier:sym<{N,M}>"
    $P703."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "53_1303739789.706" 
    $P705."add_method"(type_obj, "quantifier:sym<**>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__quantifier:sym<**>"
    $P707."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "55_1303739789.706" 
    $P709."add_method"(type_obj, "backmod", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__backmod"
    $P711."add_method"(type_obj, "!PREFIX__backmod", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "58_1303739789.706" 
    $P713."add_method"(type_obj, "metachar", $P714)
    get_how $P715, type_obj
    .const 'Sub' $P716 = "59_1303739789.706" 
    $P715."add_method"(type_obj, "!PREFIX__metachar", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "60_1303739789.706" 
    $P717."add_method"(type_obj, "metachar:sym<ws>", $P718)
    get_how $P719, type_obj
    get_global $P720, "!PREFIX__metachar:sym<ws>"
    $P719."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "62_1303739789.706" 
    $P721."add_method"(type_obj, "metachar:sym<[ ]>", $P722)
    get_how $P723, type_obj
    get_global $P724, "!PREFIX__metachar:sym<[ ]>"
    $P723."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "64_1303739789.706" 
    $P725."add_method"(type_obj, "metachar:sym<( )>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__metachar:sym<( )>"
    $P727."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "66_1303739789.706" 
    $P729."add_method"(type_obj, "metachar:sym<'>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__metachar:sym<'>"
    $P731."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "68_1303739789.706" 
    $P733."add_method"(type_obj, "metachar:sym<\">", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__metachar:sym<\">"
    $P735."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "70_1303739789.706" 
    $P737."add_method"(type_obj, "metachar:sym<.>", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__metachar:sym<.>"
    $P739."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P740)
    get_how $P741, type_obj
    .const 'Sub' $P742 = "72_1303739789.706" 
    $P741."add_method"(type_obj, "metachar:sym<^>", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__metachar:sym<^>"
    $P743."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P744)
    get_how $P745, type_obj
    .const 'Sub' $P746 = "74_1303739789.706" 
    $P745."add_method"(type_obj, "metachar:sym<^^>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__metachar:sym<^^>"
    $P747."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P748)
    get_how $P749, type_obj
    .const 'Sub' $P750 = "76_1303739789.706" 
    $P749."add_method"(type_obj, "metachar:sym<$>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__metachar:sym<$>"
    $P751."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P752)
    get_how $P753, type_obj
    .const 'Sub' $P754 = "78_1303739789.706" 
    $P753."add_method"(type_obj, "metachar:sym<$$>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__metachar:sym<$$>"
    $P755."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P756)
    get_how $P757, type_obj
    .const 'Sub' $P758 = "80_1303739789.706" 
    $P757."add_method"(type_obj, "metachar:sym<:::>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__metachar:sym<:::>"
    $P759."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P760)
    get_how $P761, type_obj
    .const 'Sub' $P762 = "82_1303739789.706" 
    $P761."add_method"(type_obj, "metachar:sym<::>", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__metachar:sym<::>"
    $P763."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P764)
    get_how $P765, type_obj
    .const 'Sub' $P766 = "84_1303739789.706" 
    $P765."add_method"(type_obj, "metachar:sym<lwb>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__metachar:sym<lwb>"
    $P767."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P768)
    get_how $P769, type_obj
    .const 'Sub' $P770 = "86_1303739789.706" 
    $P769."add_method"(type_obj, "metachar:sym<rwb>", $P770)
    get_how $P771, type_obj
    get_global $P772, "!PREFIX__metachar:sym<rwb>"
    $P771."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P772)
    get_how $P773, type_obj
    .const 'Sub' $P774 = "88_1303739789.706" 
    $P773."add_method"(type_obj, "metachar:sym<bs>", $P774)
    get_how $P775, type_obj
    get_global $P776, "!PREFIX__metachar:sym<bs>"
    $P775."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P776)
    get_how $P777, type_obj
    .const 'Sub' $P778 = "90_1303739789.706" 
    $P777."add_method"(type_obj, "metachar:sym<mod>", $P778)
    get_how $P779, type_obj
    get_global $P780, "!PREFIX__metachar:sym<mod>"
    $P779."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P780)
    get_how $P781, type_obj
    .const 'Sub' $P782 = "92_1303739789.706" 
    $P781."add_method"(type_obj, "metachar:sym<quantifier>", $P782)
    get_how $P783, type_obj
    get_global $P784, "!PREFIX__metachar:sym<quantifier>"
    $P783."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P784)
    get_how $P785, type_obj
    .const 'Sub' $P786 = "94_1303739789.706" 
    $P785."add_method"(type_obj, "metachar:sym<~>", $P786)
    get_how $P787, type_obj
    get_global $P788, "!PREFIX__metachar:sym<~>"
    $P787."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P788)
    get_how $P789, type_obj
    .const 'Sub' $P790 = "96_1303739789.706" 
    $P789."add_method"(type_obj, "metachar:sym<{*}>", $P790)
    get_how $P791, type_obj
    get_global $P792, "!PREFIX__metachar:sym<{*}>"
    $P791."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P792)
    get_how $P793, type_obj
    .const 'Sub' $P794 = "98_1303739789.706" 
    $P793."add_method"(type_obj, "metachar:sym<assert>", $P794)
    get_how $P795, type_obj
    get_global $P796, "!PREFIX__metachar:sym<assert>"
    $P795."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P796)
    get_how $P797, type_obj
    .const 'Sub' $P798 = "100_1303739789.706" 
    $P797."add_method"(type_obj, "metachar:sym<var>", $P798)
    get_how $P799, type_obj
    get_global $P800, "!PREFIX__metachar:sym<var>"
    $P799."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P800)
    get_how $P801, type_obj
    .const 'Sub' $P802 = "102_1303739789.706" 
    $P801."add_method"(type_obj, "metachar:sym<PIR>", $P802)
    get_how $P803, type_obj
    get_global $P804, "!PREFIX__metachar:sym<PIR>"
    $P803."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P804)
    get_how $P805, type_obj
    .const 'Sub' $P806 = "104_1303739789.706" 
    $P805."add_method"(type_obj, "backslash", $P806)
    get_how $P807, type_obj
    .const 'Sub' $P808 = "105_1303739789.706" 
    $P807."add_method"(type_obj, "!PREFIX__backslash", $P808)
    get_how $P809, type_obj
    .const 'Sub' $P810 = "106_1303739789.706" 
    $P809."add_method"(type_obj, "backslash:sym<w>", $P810)
    get_how $P811, type_obj
    get_global $P812, "!PREFIX__backslash:sym<w>"
    $P811."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P812)
    get_how $P813, type_obj
    .const 'Sub' $P814 = "108_1303739789.706" 
    $P813."add_method"(type_obj, "backslash:sym<b>", $P814)
    get_how $P815, type_obj
    get_global $P816, "!PREFIX__backslash:sym<b>"
    $P815."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P816)
    get_how $P817, type_obj
    .const 'Sub' $P818 = "110_1303739789.706" 
    $P817."add_method"(type_obj, "backslash:sym<e>", $P818)
    get_how $P819, type_obj
    get_global $P820, "!PREFIX__backslash:sym<e>"
    $P819."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P820)
    get_how $P821, type_obj
    .const 'Sub' $P822 = "112_1303739789.706" 
    $P821."add_method"(type_obj, "backslash:sym<f>", $P822)
    get_how $P823, type_obj
    get_global $P824, "!PREFIX__backslash:sym<f>"
    $P823."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P824)
    get_how $P825, type_obj
    .const 'Sub' $P826 = "114_1303739789.706" 
    $P825."add_method"(type_obj, "backslash:sym<h>", $P826)
    get_how $P827, type_obj
    get_global $P828, "!PREFIX__backslash:sym<h>"
    $P827."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P828)
    get_how $P829, type_obj
    .const 'Sub' $P830 = "116_1303739789.706" 
    $P829."add_method"(type_obj, "backslash:sym<r>", $P830)
    get_how $P831, type_obj
    get_global $P832, "!PREFIX__backslash:sym<r>"
    $P831."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P832)
    get_how $P833, type_obj
    .const 'Sub' $P834 = "118_1303739789.706" 
    $P833."add_method"(type_obj, "backslash:sym<t>", $P834)
    get_how $P835, type_obj
    get_global $P836, "!PREFIX__backslash:sym<t>"
    $P835."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P836)
    get_how $P837, type_obj
    .const 'Sub' $P838 = "120_1303739789.706" 
    $P837."add_method"(type_obj, "backslash:sym<v>", $P838)
    get_how $P839, type_obj
    get_global $P840, "!PREFIX__backslash:sym<v>"
    $P839."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P840)
    get_how $P841, type_obj
    .const 'Sub' $P842 = "122_1303739789.706" 
    $P841."add_method"(type_obj, "backslash:sym<o>", $P842)
    get_how $P843, type_obj
    get_global $P844, "!PREFIX__backslash:sym<o>"
    $P843."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P844)
    get_how $P845, type_obj
    .const 'Sub' $P846 = "124_1303739789.706" 
    $P845."add_method"(type_obj, "backslash:sym<x>", $P846)
    get_how $P847, type_obj
    get_global $P848, "!PREFIX__backslash:sym<x>"
    $P847."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P848)
    get_how $P849, type_obj
    .const 'Sub' $P850 = "126_1303739789.706" 
    $P849."add_method"(type_obj, "backslash:sym<c>", $P850)
    get_how $P851, type_obj
    get_global $P852, "!PREFIX__backslash:sym<c>"
    $P851."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P852)
    get_how $P853, type_obj
    .const 'Sub' $P854 = "128_1303739789.706" 
    $P853."add_method"(type_obj, "backslash:sym<A>", $P854)
    get_how $P855, type_obj
    get_global $P856, "!PREFIX__backslash:sym<A>"
    $P855."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P856)
    get_how $P857, type_obj
    .const 'Sub' $P858 = "130_1303739789.706" 
    $P857."add_method"(type_obj, "backslash:sym<z>", $P858)
    get_how $P859, type_obj
    get_global $P860, "!PREFIX__backslash:sym<z>"
    $P859."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P860)
    get_how $P861, type_obj
    .const 'Sub' $P862 = "132_1303739789.706" 
    $P861."add_method"(type_obj, "backslash:sym<Z>", $P862)
    get_how $P863, type_obj
    get_global $P864, "!PREFIX__backslash:sym<Z>"
    $P863."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P864)
    get_how $P865, type_obj
    .const 'Sub' $P866 = "134_1303739789.706" 
    $P865."add_method"(type_obj, "backslash:sym<Q>", $P866)
    get_how $P867, type_obj
    get_global $P868, "!PREFIX__backslash:sym<Q>"
    $P867."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P868)
    get_how $P869, type_obj
    .const 'Sub' $P870 = "136_1303739789.706" 
    $P869."add_method"(type_obj, "backslash:sym<unrec>", $P870)
    get_how $P871, type_obj
    get_global $P872, "!PREFIX__backslash:sym<unrec>"
    $P871."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P872)
    get_how $P873, type_obj
    .const 'Sub' $P874 = "139_1303739789.706" 
    $P873."add_method"(type_obj, "backslash:sym<misc>", $P874)
    get_how $P875, type_obj
    get_global $P876, "!PREFIX__backslash:sym<misc>"
    $P875."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P876)
    get_how $P877, type_obj
    .const 'Sub' $P878 = "141_1303739789.706" 
    $P877."add_method"(type_obj, "assertion", $P878)
    get_how $P879, type_obj
    .const 'Sub' $P880 = "142_1303739789.706" 
    $P879."add_method"(type_obj, "!PREFIX__assertion", $P880)
    get_how $P881, type_obj
    .const 'Sub' $P882 = "143_1303739789.706" 
    $P881."add_method"(type_obj, "assertion:sym<?>", $P882)
    get_how $P883, type_obj
    get_global $P884, "!PREFIX__assertion:sym<?>"
    $P883."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P884)
    get_how $P885, type_obj
    .const 'Sub' $P886 = "146_1303739789.706" 
    $P885."add_method"(type_obj, "assertion:sym<!>", $P886)
    get_how $P887, type_obj
    get_global $P888, "!PREFIX__assertion:sym<!>"
    $P887."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P888)
    get_how $P889, type_obj
    .const 'Sub' $P890 = "149_1303739789.706" 
    $P889."add_method"(type_obj, "assertion:sym<method>", $P890)
    get_how $P891, type_obj
    get_global $P892, "!PREFIX__assertion:sym<method>"
    $P891."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P892)
    get_how $P893, type_obj
    .const 'Sub' $P894 = "151_1303739789.706" 
    $P893."add_method"(type_obj, "assertion:sym<name>", $P894)
    get_how $P895, type_obj
    get_global $P896, "!PREFIX__assertion:sym<name>"
    $P895."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P896)
    get_how $P897, type_obj
    .const 'Sub' $P898 = "154_1303739789.706" 
    $P897."add_method"(type_obj, "assertion:sym<[>", $P898)
    get_how $P899, type_obj
    get_global $P900, "!PREFIX__assertion:sym<[>"
    $P899."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P900)
    get_how $P901, type_obj
    .const 'Sub' $P902 = "157_1303739789.706" 
    $P901."add_method"(type_obj, "cclass_elem", $P902)
    get_how $P903, type_obj
    get_global $P904, "!PREFIX__cclass_elem"
    $P903."add_method"(type_obj, "!PREFIX__cclass_elem", $P904)
    get_how $P905, type_obj
    .const 'Sub' $P906 = "163_1303739789.706" 
    $P905."add_method"(type_obj, "mod_internal", $P906)
    get_how $P907, type_obj
    get_global $P908, "!PREFIX__mod_internal"
    $P907."add_method"(type_obj, "!PREFIX__mod_internal", $P908)
    get_how $P909, type_obj
    .const 'Sub' $P910 = "166_1303739789.706" 
    $P909."add_method"(type_obj, "mod_ident", $P910)
    get_how $P911, type_obj
    .const 'Sub' $P912 = "167_1303739789.706" 
    $P911."add_method"(type_obj, "!PREFIX__mod_ident", $P912)
    get_how $P913, type_obj
    .const 'Sub' $P914 = "168_1303739789.706" 
    $P913."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P914)
    get_how $P915, type_obj
    get_global $P916, "!PREFIX__mod_ident:sym<ignorecase>"
    $P915."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P916)
    get_how $P917, type_obj
    .const 'Sub' $P918 = "170_1303739789.706" 
    $P917."add_method"(type_obj, "mod_ident:sym<ratchet>", $P918)
    get_how $P919, type_obj
    get_global $P920, "!PREFIX__mod_ident:sym<ratchet>"
    $P919."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P920)
    get_how $P921, type_obj
    .const 'Sub' $P922 = "172_1303739789.706" 
    $P921."add_method"(type_obj, "mod_ident:sym<sigspace>", $P922)
    get_how $P923, type_obj
    get_global $P924, "!PREFIX__mod_ident:sym<sigspace>"
    $P923."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P924)
    get_how $P925, type_obj
    get_hll_global $P926, ["HLL"], "Grammar"
    $P925."add_parent"(type_obj, $P926)
    get_how $P927, type_obj
    $P928 = $P927."compose"(type_obj)
    .return ($P928)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1303739789.706") :outer("12_1303739789.706")
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
.sub "ws"  :subid("14_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1303739789.706") :method
.annotate 'line', 11
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P60 = "18_1303739789.706" 
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
    .const 'Sub' $P60 = "18_1303739789.706" 
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
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1303739789.706") :method
.annotate 'line', 11
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block59"  :anon :subid("18_1303739789.706") :method :outer("16_1303739789.706")
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
.sub "identifier"  :subid("19_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1303739789.706") :method
.annotate 'line', 11
    $P67 = self."!PREFIX__!subrule"("ident", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1303739789.706") :method
.annotate 'line', 11
    new $P74, "ResizablePMCArray"
    push $P74, ""
    push $P74, "\""
    push $P74, "'"
    .return ($P74)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1303739789.706") :method
.annotate 'line', 11
    $P81 = self."!PREFIX__!subrule"("ws", "")
    new $P82, "ResizablePMCArray"
    push $P82, $P81
    .return ($P82)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1303739789.706") :method
.annotate 'line', 11
    $P93 = self."!PREFIX__!subrule"("nibbler", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P93
    .return ($P94)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1303739789.706") :method
.annotate 'line', 11
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1303739789.706") :method
.annotate 'line', 11
    $P110 = self."!PREFIX__!subrule"("termish", "")
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1303739789.706") :method
.annotate 'line', 11
    new $P119, "ResizablePMCArray"
    push $P119, ""
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P132 = "35_1303739789.706" 
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
    .const 'Sub' $P132 = "35_1303739789.706" 
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
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1303739789.706") :method
.annotate 'line', 11
    $P126 = self."!PREFIX__!subrule"("atom", "")
    new $P127, "ResizablePMCArray"
    push $P127, $P126
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block131"  :anon :subid("35_1303739789.706") :method :outer("33_1303739789.706")
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
.sub "atom"  :subid("36_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P145 = "38_1303739789.706" 
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
    .const 'Sub' $P145 = "38_1303739789.706" 
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
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1303739789.706") :method
.annotate 'line', 11
    $P138 = self."!PREFIX__!subrule"("metachar", "")
    new $P139, "ResizablePMCArray"
    push $P139, $P138
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block144"  :anon :subid("38_1303739789.706") :method :outer("36_1303739789.706")
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
.sub "quantifier"  :subid("39_1303739789.706")
    .param pmc param_149
.annotate 'line', 69
    .lex "self", param_149
    $P150 = param_149."!protoregex"("quantifier")
    .return ($P150)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1303739789.706")
    .param pmc param_152
.annotate 'line', 69
    .lex "self", param_152
    $P153 = param_152."!PREFIX__!protoregex"("quantifier")
    .return ($P153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1303739789.706") :method
.annotate 'line', 11
    $P157 = self."!PREFIX__!subrule"("backmod", "*")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1303739789.706") :method
.annotate 'line', 11
    $P164 = self."!PREFIX__!subrule"("backmod", "+")
    new $P165, "ResizablePMCArray"
    push $P165, $P164
    .return ($P165)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1303739789.706") :method
.annotate 'line', 11
    $P171 = self."!PREFIX__!subrule"("backmod", "?")
    new $P172, "ResizablePMCArray"
    push $P172, $P171
    .return ($P172)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P195 = "52_1303739789.706" 
    capture_lex $P195
    .const 'Sub' $P190 = "51_1303739789.706" 
    capture_lex $P190
    .const 'Sub' $P186 = "50_1303739789.706" 
    capture_lex $P186
    .const 'Sub' $P183 = "49_1303739789.706" 
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
    .const 'Sub' $P183 = "49_1303739789.706" 
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
    .const 'Sub' $P186 = "50_1303739789.706" 
    capture_lex $P186
    $P10 = rx176_cur.$P186()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx176_pos = $P10."pos"()
  # rx subrule $P190 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P190 = "51_1303739789.706" 
    capture_lex $P190
    $P10 = rx176_cur.$P190()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx176_pos = $P10."pos"()
  # rx subrule $P195 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P195 = "52_1303739789.706" 
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
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1303739789.706") :method
.annotate 'line', 11
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("49_1303739789.706") :outer("47_1303739789.706")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block185"  :anon :subid("50_1303739789.706") :method :outer("47_1303739789.706")
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
.sub "_block189"  :anon :subid("51_1303739789.706") :method :outer("47_1303739789.706")
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
.sub "_block194"  :anon :subid("52_1303739789.706") :method :outer("47_1303739789.706")
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
.sub "quantifier:sym<**>"  :subid("53_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1303739789.706") :method
.annotate 'line', 11
    new $P201, "ResizablePMCArray"
    push $P201, "**"
    .return ($P201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P221 = "57_1303739789.706" 
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
    .const 'Sub' $P221 = "57_1303739789.706" 
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
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1303739789.706") :method
.annotate 'line', 11
    new $P216, "ResizablePMCArray"
    push $P216, ""
    .return ($P216)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block220"  :anon :subid("57_1303739789.706") :method :outer("55_1303739789.706")
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
.sub "metachar"  :subid("58_1303739789.706")
    .param pmc param_225
.annotate 'line', 93
    .lex "self", param_225
    $P226 = param_225."!protoregex"("metachar")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1303739789.706")
    .param pmc param_228
.annotate 'line', 93
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("metachar")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1303739789.706") :method
.annotate 'line', 11
    $P233 = self."!PREFIX__!subrule"("normspace", "")
    new $P234, "ResizablePMCArray"
    push $P234, $P233
    .return ($P234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1303739789.706") :method
.annotate 'line', 11
    $P239 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1303739789.706") :method
.annotate 'line', 11
    $P245 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P246, "ResizablePMCArray"
    push $P246, $P245
    .return ($P246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1303739789.706") :method
.annotate 'line', 11
    new $P251, "ResizablePMCArray"
    push $P251, "'"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("69_1303739789.706") :method
.annotate 'line', 11
    new $P256, "ResizablePMCArray"
    push $P256, "\""
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1303739789.706") :method
.annotate 'line', 11
    new $P261, "ResizablePMCArray"
    push $P261, "."
    .return ($P261)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1303739789.706") :method
.annotate 'line', 11
    new $P267, "ResizablePMCArray"
    push $P267, "^"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1303739789.706") :method
.annotate 'line', 11
    new $P273, "ResizablePMCArray"
    push $P273, "^^"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1303739789.706") :method
.annotate 'line', 11
    new $P279, "ResizablePMCArray"
    push $P279, "$"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1303739789.706") :method
.annotate 'line', 11
    new $P285, "ResizablePMCArray"
    push $P285, "$$"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1303739789.706") :method
.annotate 'line', 11
    $P291 = self."!PREFIX__!subrule"("panic", ":::")
    new $P292, "ResizablePMCArray"
    push $P292, $P291
    .return ($P292)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1303739789.706") :method
.annotate 'line', 11
    $P298 = self."!PREFIX__!subrule"("panic", "::")
    new $P299, "ResizablePMCArray"
    push $P299, $P298
    .return ($P299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1303739789.706") :method
.annotate 'line', 11
    new $P305, "ResizablePMCArray"
    push $P305, unicode:"\x{ab}"
    push $P305, "<<"
    .return ($P305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1303739789.706") :method
.annotate 'line', 11
    new $P312, "ResizablePMCArray"
    push $P312, unicode:"\x{bb}"
    push $P312, ">>"
    .return ($P312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1303739789.706") :method
.annotate 'line', 11
    $P319 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P320, "ResizablePMCArray"
    push $P320, $P319
    .return ($P320)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1303739789.706") :method
.annotate 'line', 11
    $P325 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P326, "ResizablePMCArray"
    push $P326, $P325
    .return ($P326)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1303739789.706") :method
.annotate 'line', 11
    $P331 = self."!PREFIX__!subrule"("quantifier", "")
    new $P332, "ResizablePMCArray"
    push $P332, $P331
    .return ($P332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1303739789.706") :method
.annotate 'line', 11
    $P337 = self."!PREFIX__!subrule"("ws", "~")
    new $P338, "ResizablePMCArray"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1303739789.706") :method
.annotate 'line', 11
    new $P344, "ResizablePMCArray"
    push $P344, "{*}"
    .return ($P344)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1303739789.706") :method
.annotate 'line', 11
    $P356 = self."!PREFIX__!subrule"("assertion", "<")
    new $P357, "ResizablePMCArray"
    push $P357, $P356
    .return ($P357)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1303739789.706") :method
.annotate 'line', 11
    new $P363, "ResizablePMCArray"
    push $P363, "$"
    push $P363, "$<"
    .return ($P363)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1303739789.706") :method
.annotate 'line', 11
    new $P373, "ResizablePMCArray"
    push $P373, ":PIR{{"
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1303739789.706")
    .param pmc param_379
.annotate 'line', 143
    .lex "self", param_379
    $P380 = param_379."!protoregex"("backslash")
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1303739789.706")
    .param pmc param_382
.annotate 'line', 143
    .lex "self", param_382
    $P383 = param_382."!PREFIX__!protoregex"("backslash")
    .return ($P383)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1303739789.706") :method
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
.sub "backslash:sym<b>"  :subid("108_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1303739789.706") :method
.annotate 'line', 11
    new $P393, "ResizablePMCArray"
    push $P393, "B"
    push $P393, "b"
    .return ($P393)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1303739789.706") :method
.annotate 'line', 11
    new $P399, "ResizablePMCArray"
    push $P399, "E"
    push $P399, "e"
    .return ($P399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1303739789.706") :method
.annotate 'line', 11
    new $P405, "ResizablePMCArray"
    push $P405, "F"
    push $P405, "f"
    .return ($P405)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1303739789.706") :method
.annotate 'line', 11
    new $P411, "ResizablePMCArray"
    push $P411, "H"
    push $P411, "h"
    .return ($P411)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1303739789.706") :method
.annotate 'line', 11
    new $P417, "ResizablePMCArray"
    push $P417, "R"
    push $P417, "r"
    .return ($P417)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1303739789.706") :method
.annotate 'line', 11
    new $P423, "ResizablePMCArray"
    push $P423, "T"
    push $P423, "t"
    .return ($P423)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1303739789.706") :method
.annotate 'line', 11
    new $P429, "ResizablePMCArray"
    push $P429, "V"
    push $P429, "v"
    .return ($P429)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1303739789.706") :method
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
.sub "backslash:sym<x>"  :subid("124_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1303739789.706") :method
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
.sub "backslash:sym<c>"  :subid("126_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1303739789.706") :method
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
.sub "backslash:sym<A>"  :subid("128_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1303739789.706") :method
.annotate 'line', 11
    $P465 = self."!PREFIX__!subrule"("obs", "A")
    new $P466, "ResizablePMCArray"
    push $P466, $P465
    .return ($P466)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1303739789.706") :method
.annotate 'line', 11
    $P471 = self."!PREFIX__!subrule"("obs", "z")
    new $P472, "ResizablePMCArray"
    push $P472, $P471
    .return ($P472)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1303739789.706") :method
.annotate 'line', 11
    $P477 = self."!PREFIX__!subrule"("obs", "Z")
    new $P478, "ResizablePMCArray"
    push $P478, $P477
    .return ($P478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1303739789.706") :method
.annotate 'line', 11
    $P483 = self."!PREFIX__!subrule"("obs", "Q")
    new $P484, "ResizablePMCArray"
    push $P484, $P483
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P494 = "138_1303739789.706" 
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
    .const 'Sub' $P494 = "138_1303739789.706" 
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
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1303739789.706") :method
.annotate 'line', 11
    new $P489, "ResizablePMCArray"
    push $P489, ""
    .return ($P489)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block493"  :anon :subid("138_1303739789.706") :outer("136_1303739789.706")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1303739789.706") :method
.annotate 'line', 11
    new $P499, "ResizablePMCArray"
    push $P499, ""
    .return ($P499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1303739789.706")
    .param pmc param_502
.annotate 'line', 162
    .lex "self", param_502
    $P503 = param_502."!protoregex"("assertion")
    .return ($P503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1303739789.706")
    .param pmc param_505
.annotate 'line', 162
    .lex "self", param_505
    $P506 = param_505."!PREFIX__!protoregex"("assertion")
    .return ($P506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P515 = "145_1303739789.706" 
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
    .const 'Sub' $P515 = "145_1303739789.706" 
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
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1303739789.706") :method
.annotate 'line', 11
    $P510 = self."!PREFIX__!subrule"("assertion", "?")
    new $P511, "ResizablePMCArray"
    push $P511, $P510
    push $P511, "?"
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block514"  :anon :subid("145_1303739789.706") :method :outer("143_1303739789.706")
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
.sub "assertion:sym<!>"  :subid("146_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P526 = "148_1303739789.706" 
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
    .const 'Sub' $P526 = "148_1303739789.706" 
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
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1303739789.706") :method
.annotate 'line', 11
    $P521 = self."!PREFIX__!subrule"("assertion", "!")
    new $P522, "ResizablePMCArray"
    push $P522, $P521
    push $P522, "!"
    .return ($P522)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block525"  :anon :subid("148_1303739789.706") :method :outer("146_1303739789.706")
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
.sub "assertion:sym<method>"  :subid("149_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1303739789.706") :method
.annotate 'line', 11
    $P532 = self."!PREFIX__!subrule"("assertion", ".")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P544 = "153_1303739789.706" 
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
    .const 'Sub' $P544 = "153_1303739789.706" 
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
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1303739789.706") :method
.annotate 'line', 11
    $P538 = self."!PREFIX__!subrule"("identifier", "")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    .return ($P539)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block543"  :anon :subid("153_1303739789.706") :method :outer("151_1303739789.706")
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
.sub "assertion:sym<[>"  :subid("154_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P553 = "156_1303739789.706" 
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
    .const 'Sub' $P553 = "156_1303739789.706" 
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
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1303739789.706") :method
.annotate 'line', 11
    new $P550, "ResizablePMCArray"
    push $P550, ""
    .return ($P550)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block552"  :anon :subid("156_1303739789.706") :method :outer("154_1303739789.706")
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
.sub "cclass_elem"  :subid("157_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P571 = "159_1303739789.706" 
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
    .const 'Sub' $P571 = "159_1303739789.706" 
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
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1303739789.706") :method
.annotate 'line', 11
    new $P562, "ResizablePMCArray"
    push $P562, ""
    push $P562, "-"
    push $P562, "+"
    .return ($P562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block570"  :anon :subid("159_1303739789.706") :method :outer("157_1303739789.706")
.annotate 'line', 188
    .const 'Sub' $P586 = "162_1303739789.706" 
    capture_lex $P586
    .const 'Sub' $P581 = "161_1303739789.706" 
    capture_lex $P581
    .const 'Sub' $P577 = "160_1303739789.706" 
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
    .const 'Sub' $P577 = "160_1303739789.706" 
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
    .const 'Sub' $P581 = "161_1303739789.706" 
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
    .const 'Sub' $P586 = "162_1303739789.706" 
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
.sub "_block576"  :anon :subid("160_1303739789.706") :method :outer("159_1303739789.706")
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
.sub "_block580"  :anon :subid("161_1303739789.706") :method :outer("159_1303739789.706")
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
.sub "_block585"  :anon :subid("162_1303739789.706") :method :outer("159_1303739789.706")
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
.sub "mod_internal"  :subid("163_1303739789.706") :method :outer("12_1303739789.706")
.annotate 'line', 11
    .const 'Sub' $P602 = "165_1303739789.706" 
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
    .const 'Sub' $P602 = "165_1303739789.706" 
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
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1303739789.706") :method
.annotate 'line', 11
    $P596 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    push $P597, ":"
    .return ($P597)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block601"  :anon :subid("165_1303739789.706") :method :outer("163_1303739789.706")
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
.sub "mod_ident"  :subid("166_1303739789.706")
    .param pmc param_610
.annotate 'line', 205
    .lex "self", param_610
    $P611 = param_610."!protoregex"("mod_ident")
    .return ($P611)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1303739789.706")
    .param pmc param_613
.annotate 'line', 205
    .lex "self", param_613
    $P614 = param_613."!PREFIX__!protoregex"("mod_ident")
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1303739789.706") :method
.annotate 'line', 11
    new $P618, "ResizablePMCArray"
    push $P618, "i"
    .return ($P618)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1303739789.706") :method
.annotate 'line', 11
    new $P625, "ResizablePMCArray"
    push $P625, "r"
    .return ($P625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1303739789.706") :method :outer("12_1303739789.706")
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
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1303739789.706") :method
.annotate 'line', 11
    new $P632, "ResizablePMCArray"
    push $P632, "s"
    .return ($P632)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block929"  :subid("175_1303739789.706") :outer("10_1303739789.706")
.annotate 'line', 212
    .const 'Sub' $P2717 = "257_1303739789.706" 
    capture_lex $P2717
    .const 'Sub' $P2696 = "256_1303739789.706" 
    capture_lex $P2696
    .const 'Sub' $P2678 = "255_1303739789.706" 
    capture_lex $P2678
    .const 'Sub' $P2646 = "254_1303739789.706" 
    capture_lex $P2646
    .const 'Sub' $P2573 = "250_1303739789.706" 
    capture_lex $P2573
    .const 'Sub' $P2495 = "248_1303739789.706" 
    capture_lex $P2495
    .const 'Sub' $P2415 = "245_1303739789.706" 
    capture_lex $P2415
    .const 'Sub' $P2403 = "244_1303739789.706" 
    capture_lex $P2403
    .const 'Sub' $P2378 = "243_1303739789.706" 
    capture_lex $P2378
    .const 'Sub' $P2362 = "242_1303739789.706" 
    capture_lex $P2362
    .const 'Sub' $P2347 = "241_1303739789.706" 
    capture_lex $P2347
    .const 'Sub' $P2333 = "240_1303739789.706" 
    capture_lex $P2333
    .const 'Sub' $P2294 = "239_1303739789.706" 
    capture_lex $P2294
    .const 'Sub' $P2255 = "238_1303739789.706" 
    capture_lex $P2255
    .const 'Sub' $P2238 = "237_1303739789.706" 
    capture_lex $P2238
    .const 'Sub' $P2221 = "236_1303739789.706" 
    capture_lex $P2221
    .const 'Sub' $P2204 = "235_1303739789.706" 
    capture_lex $P2204
    .const 'Sub' $P2187 = "234_1303739789.706" 
    capture_lex $P2187
    .const 'Sub' $P2170 = "233_1303739789.706" 
    capture_lex $P2170
    .const 'Sub' $P2153 = "232_1303739789.706" 
    capture_lex $P2153
    .const 'Sub' $P2136 = "231_1303739789.706" 
    capture_lex $P2136
    .const 'Sub' $P2111 = "230_1303739789.706" 
    capture_lex $P2111
    .const 'Sub' $P2092 = "229_1303739789.706" 
    capture_lex $P2092
    .const 'Sub' $P2030 = "228_1303739789.706" 
    capture_lex $P2030
    .const 'Sub' $P2008 = "227_1303739789.706" 
    capture_lex $P2008
    .const 'Sub' $P1979 = "226_1303739789.706" 
    capture_lex $P1979
    .const 'Sub' $P1971 = "225_1303739789.706" 
    capture_lex $P1971
    .const 'Sub' $P1963 = "224_1303739789.706" 
    capture_lex $P1963
    .const 'Sub' $P1955 = "223_1303739789.706" 
    capture_lex $P1955
    .const 'Sub' $P1942 = "222_1303739789.706" 
    capture_lex $P1942
    .const 'Sub' $P1929 = "221_1303739789.706" 
    capture_lex $P1929
    .const 'Sub' $P1916 = "220_1303739789.706" 
    capture_lex $P1916
    .const 'Sub' $P1903 = "219_1303739789.706" 
    capture_lex $P1903
    .const 'Sub' $P1890 = "218_1303739789.706" 
    capture_lex $P1890
    .const 'Sub' $P1877 = "217_1303739789.706" 
    capture_lex $P1877
    .const 'Sub' $P1864 = "216_1303739789.706" 
    capture_lex $P1864
    .const 'Sub' $P1851 = "215_1303739789.706" 
    capture_lex $P1851
    .const 'Sub' $P1817 = "214_1303739789.706" 
    capture_lex $P1817
    .const 'Sub' $P1783 = "213_1303739789.706" 
    capture_lex $P1783
    .const 'Sub' $P1764 = "212_1303739789.706" 
    capture_lex $P1764
    .const 'Sub' $P1756 = "211_1303739789.706" 
    capture_lex $P1756
    .const 'Sub' $P1735 = "210_1303739789.706" 
    capture_lex $P1735
    .const 'Sub' $P1644 = "208_1303739789.706" 
    capture_lex $P1644
    .const 'Sub' $P1626 = "207_1303739789.706" 
    capture_lex $P1626
    .const 'Sub' $P1610 = "206_1303739789.706" 
    capture_lex $P1610
    .const 'Sub' $P1594 = "205_1303739789.706" 
    capture_lex $P1594
    .const 'Sub' $P1565 = "204_1303739789.706" 
    capture_lex $P1565
    .const 'Sub' $P1514 = "202_1303739789.706" 
    capture_lex $P1514
    .const 'Sub' $P1439 = "200_1303739789.706" 
    capture_lex $P1439
    .const 'Sub' $P1401 = "198_1303739789.706" 
    capture_lex $P1401
    .const 'Sub' $P1335 = "195_1303739789.706" 
    capture_lex $P1335
    .const 'Sub' $P1322 = "194_1303739789.706" 
    capture_lex $P1322
    .const 'Sub' $P1295 = "192_1303739789.706" 
    capture_lex $P1295
    .const 'Sub' $P1280 = "191_1303739789.706" 
    capture_lex $P1280
    .const 'Sub' $P1239 = "190_1303739789.706" 
    capture_lex $P1239
    .const 'Sub' $P987 = "177_1303739789.706" 
    capture_lex $P987
    .const 'Sub' $P931 = "176_1303739789.706" 
    capture_lex $P931
.annotate 'line', 719
    .const 'Sub' $P931 = "176_1303739789.706" 
    newclosure $P982, $P931
    .lex "buildsub", $P982
.annotate 'line', 212
    find_lex $P983, "buildsub"
    find_lex $P984, "$?PACKAGE"
    get_who $P985, $P984
    set $P985["buildsub"], $P983
    find_lex $P986, "buildsub"
    set_global "buildsub", $P986
.annotate 'line', 737
    .const 'Sub' $P987 = "177_1303739789.706" 
    newclosure $P1238, $P987
    .lex "capnames", $P1238
.annotate 'line', 803
    .const 'Sub' $P1239 = "190_1303739789.706" 
    newclosure $P1268, $P1239
    .lex "backmod", $P1268
.annotate 'line', 212
    .lex "$?PACKAGE", $P1269
    .lex "$?CLASS", $P1270
.annotate 'line', 219

            $P1271 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1271, $P0
        
    find_lex $P1272, "$?PACKAGE"
    get_who $P1273, $P1272
    set $P1273["@MODIFIERS"], $P1271
.annotate 'line', 212
    find_lex $P1274, "$?PACKAGE"
    get_who $P1275, $P1274
    set $P1276, $P1275["@MODIFIERS"]
    unless_null $P1276, vivify_715
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P1277, "$?PACKAGE"
    get_who $P1278, $P1277
    set $P1279, $P1278["$REGEXNAME"]
    unless_null $P1279, vivify_716
    new $P1279, "Undef"
  vivify_716:
.annotate 'line', 712
    find_lex $P2675, "buildsub"
    find_lex $P2676, "capnames"
    find_lex $P2677, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2696 = "256_1303739789.706" 
    newclosure $P2714, $P2696
.annotate 'line', 212
    .return ($P2714)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post597") :outer("175_1303739789.706")
.annotate 'line', 212
    .const 'Sub' $P930 = "175_1303739789.706" 
    .local pmc block
    set block, $P930
    .const 'Sub' $P2715 = "176_1303739789.706" 
    set_global "buildsub", $P2715
    .const 'Sub' $P2717 = "257_1303739789.706" 
    capture_lex $P2717
    $P2717()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2716"  :anon :subid("257_1303739789.706") :outer("175_1303739789.706")
.annotate 'line', 212
    nqp_get_sc_object $P2718, "1303739784.973", 2
    .local pmc type_obj
    set type_obj, $P2718
    get_how $P2719, type_obj
    .const 'Sub' $P2720 = "191_1303739789.706" 
    $P2719."add_method"(type_obj, "arg", $P2720)
    get_how $P2721, type_obj
    .const 'Sub' $P2722 = "192_1303739789.706" 
    $P2721."add_method"(type_obj, "arglist", $P2722)
    get_how $P2723, type_obj
    .const 'Sub' $P2724 = "194_1303739789.706" 
    $P2723."add_method"(type_obj, "TOP", $P2724)
    get_how $P2725, type_obj
    .const 'Sub' $P2726 = "195_1303739789.706" 
    $P2725."add_method"(type_obj, "nibbler", $P2726)
    get_how $P2727, type_obj
    .const 'Sub' $P2728 = "198_1303739789.706" 
    $P2727."add_method"(type_obj, "termconj", $P2728)
    get_how $P2729, type_obj
    .const 'Sub' $P2730 = "200_1303739789.706" 
    $P2729."add_method"(type_obj, "termish", $P2730)
    get_how $P2731, type_obj
    .const 'Sub' $P2732 = "202_1303739789.706" 
    $P2731."add_method"(type_obj, "quantified_atom", $P2732)
    get_how $P2733, type_obj
    .const 'Sub' $P2734 = "204_1303739789.706" 
    $P2733."add_method"(type_obj, "atom", $P2734)
    get_how $P2735, type_obj
    .const 'Sub' $P2736 = "205_1303739789.706" 
    $P2735."add_method"(type_obj, "quantifier:sym<*>", $P2736)
    get_how $P2737, type_obj
    .const 'Sub' $P2738 = "206_1303739789.706" 
    $P2737."add_method"(type_obj, "quantifier:sym<+>", $P2738)
    get_how $P2739, type_obj
    .const 'Sub' $P2740 = "207_1303739789.706" 
    $P2739."add_method"(type_obj, "quantifier:sym<?>", $P2740)
    get_how $P2741, type_obj
    .const 'Sub' $P2742 = "208_1303739789.706" 
    $P2741."add_method"(type_obj, "quantifier:sym<**>", $P2742)
    get_how $P2743, type_obj
    .const 'Sub' $P2744 = "210_1303739789.706" 
    $P2743."add_method"(type_obj, "metachar:sym<ws>", $P2744)
    get_how $P2745, type_obj
    .const 'Sub' $P2746 = "211_1303739789.706" 
    $P2745."add_method"(type_obj, "metachar:sym<[ ]>", $P2746)
    get_how $P2747, type_obj
    .const 'Sub' $P2748 = "212_1303739789.706" 
    $P2747."add_method"(type_obj, "metachar:sym<( )>", $P2748)
    get_how $P2749, type_obj
    .const 'Sub' $P2750 = "213_1303739789.706" 
    $P2749."add_method"(type_obj, "metachar:sym<'>", $P2750)
    get_how $P2751, type_obj
    .const 'Sub' $P2752 = "214_1303739789.706" 
    $P2751."add_method"(type_obj, "metachar:sym<\">", $P2752)
    get_how $P2753, type_obj
    .const 'Sub' $P2754 = "215_1303739789.706" 
    $P2753."add_method"(type_obj, "metachar:sym<.>", $P2754)
    get_how $P2755, type_obj
    .const 'Sub' $P2756 = "216_1303739789.706" 
    $P2755."add_method"(type_obj, "metachar:sym<^>", $P2756)
    get_how $P2757, type_obj
    .const 'Sub' $P2758 = "217_1303739789.706" 
    $P2757."add_method"(type_obj, "metachar:sym<^^>", $P2758)
    get_how $P2759, type_obj
    .const 'Sub' $P2760 = "218_1303739789.706" 
    $P2759."add_method"(type_obj, "metachar:sym<$>", $P2760)
    get_how $P2761, type_obj
    .const 'Sub' $P2762 = "219_1303739789.706" 
    $P2761."add_method"(type_obj, "metachar:sym<$$>", $P2762)
    get_how $P2763, type_obj
    .const 'Sub' $P2764 = "220_1303739789.706" 
    $P2763."add_method"(type_obj, "metachar:sym<:::>", $P2764)
    get_how $P2765, type_obj
    .const 'Sub' $P2766 = "221_1303739789.706" 
    $P2765."add_method"(type_obj, "metachar:sym<lwb>", $P2766)
    get_how $P2767, type_obj
    .const 'Sub' $P2768 = "222_1303739789.706" 
    $P2767."add_method"(type_obj, "metachar:sym<rwb>", $P2768)
    get_how $P2769, type_obj
    .const 'Sub' $P2770 = "223_1303739789.706" 
    $P2769."add_method"(type_obj, "metachar:sym<bs>", $P2770)
    get_how $P2771, type_obj
    .const 'Sub' $P2772 = "224_1303739789.706" 
    $P2771."add_method"(type_obj, "metachar:sym<mod>", $P2772)
    get_how $P2773, type_obj
    .const 'Sub' $P2774 = "225_1303739789.706" 
    $P2773."add_method"(type_obj, "metachar:sym<assert>", $P2774)
    get_how $P2775, type_obj
    .const 'Sub' $P2776 = "226_1303739789.706" 
    $P2775."add_method"(type_obj, "metachar:sym<~>", $P2776)
    get_how $P2777, type_obj
    .const 'Sub' $P2778 = "227_1303739789.706" 
    $P2777."add_method"(type_obj, "metachar:sym<{*}>", $P2778)
    get_how $P2779, type_obj
    .const 'Sub' $P2780 = "228_1303739789.706" 
    $P2779."add_method"(type_obj, "metachar:sym<var>", $P2780)
    get_how $P2781, type_obj
    .const 'Sub' $P2782 = "229_1303739789.706" 
    $P2781."add_method"(type_obj, "metachar:sym<PIR>", $P2782)
    get_how $P2783, type_obj
    .const 'Sub' $P2784 = "230_1303739789.706" 
    $P2783."add_method"(type_obj, "backslash:sym<w>", $P2784)
    get_how $P2785, type_obj
    .const 'Sub' $P2786 = "231_1303739789.706" 
    $P2785."add_method"(type_obj, "backslash:sym<b>", $P2786)
    get_how $P2787, type_obj
    .const 'Sub' $P2788 = "232_1303739789.706" 
    $P2787."add_method"(type_obj, "backslash:sym<e>", $P2788)
    get_how $P2789, type_obj
    .const 'Sub' $P2790 = "233_1303739789.706" 
    $P2789."add_method"(type_obj, "backslash:sym<f>", $P2790)
    get_how $P2791, type_obj
    .const 'Sub' $P2792 = "234_1303739789.706" 
    $P2791."add_method"(type_obj, "backslash:sym<h>", $P2792)
    get_how $P2793, type_obj
    .const 'Sub' $P2794 = "235_1303739789.706" 
    $P2793."add_method"(type_obj, "backslash:sym<r>", $P2794)
    get_how $P2795, type_obj
    .const 'Sub' $P2796 = "236_1303739789.706" 
    $P2795."add_method"(type_obj, "backslash:sym<t>", $P2796)
    get_how $P2797, type_obj
    .const 'Sub' $P2798 = "237_1303739789.706" 
    $P2797."add_method"(type_obj, "backslash:sym<v>", $P2798)
    get_how $P2799, type_obj
    .const 'Sub' $P2800 = "238_1303739789.706" 
    $P2799."add_method"(type_obj, "backslash:sym<o>", $P2800)
    get_how $P2801, type_obj
    .const 'Sub' $P2802 = "239_1303739789.706" 
    $P2801."add_method"(type_obj, "backslash:sym<x>", $P2802)
    get_how $P2803, type_obj
    .const 'Sub' $P2804 = "240_1303739789.706" 
    $P2803."add_method"(type_obj, "backslash:sym<c>", $P2804)
    get_how $P2805, type_obj
    .const 'Sub' $P2806 = "241_1303739789.706" 
    $P2805."add_method"(type_obj, "backslash:sym<misc>", $P2806)
    get_how $P2807, type_obj
    .const 'Sub' $P2808 = "242_1303739789.706" 
    $P2807."add_method"(type_obj, "assertion:sym<?>", $P2808)
    get_how $P2809, type_obj
    .const 'Sub' $P2810 = "243_1303739789.706" 
    $P2809."add_method"(type_obj, "assertion:sym<!>", $P2810)
    get_how $P2811, type_obj
    .const 'Sub' $P2812 = "244_1303739789.706" 
    $P2811."add_method"(type_obj, "assertion:sym<method>", $P2812)
    get_how $P2813, type_obj
    .const 'Sub' $P2814 = "245_1303739789.706" 
    $P2813."add_method"(type_obj, "assertion:sym<name>", $P2814)
    get_how $P2815, type_obj
    .const 'Sub' $P2816 = "248_1303739789.706" 
    $P2815."add_method"(type_obj, "assertion:sym<[>", $P2816)
    get_how $P2817, type_obj
    .const 'Sub' $P2818 = "250_1303739789.706" 
    $P2817."add_method"(type_obj, "cclass_elem", $P2818)
    get_how $P2819, type_obj
    .const 'Sub' $P2820 = "254_1303739789.706" 
    $P2819."add_method"(type_obj, "mod_internal", $P2820)
    get_how $P2821, type_obj
    .const 'Sub' $P2822 = "255_1303739789.706" 
    $P2821."add_method"(type_obj, "subrule_alias", $P2822)
    get_how $P2823, type_obj
    .const 'Sub' $P2824 = "256_1303739789.706" 
    $P2823."add_method"(type_obj, "named_assertion", $P2824)
    get_how $P2825, type_obj
    get_hll_global $P2826, ["HLL"], "Actions"
    $P2825."add_parent"(type_obj, $P2826)
    get_how $P2827, type_obj
    $P2828 = $P2827."compose"(type_obj)
    .return ($P2828)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_932
    .param pmc param_933 :optional
    .param int has_param_933 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_932
    if has_param_933, optparam_598
    get_hll_global $P934, "GLOBAL"
    nqp_get_package_through_who $P935, $P934, "PAST"
    get_who $P936, $P935
    set $P937, $P936["Block"]
    $P938 = $P937."new"()
    set param_933, $P938
  optparam_598:
    .lex "$block", param_933
.annotate 'line', 720
    $P939 = root_new ['parrot';'Hash']
    .lex "%capnames", $P939
    find_lex $P940, "$rpast"
    unless_null $P940, vivify_599
    new $P940, "Undef"
  vivify_599:
    $P941 = "capnames"($P940, 0)
    store_lex "%capnames", $P941
.annotate 'line', 721
    new $P942, "Integer"
    assign $P942, 0
    find_lex $P943, "%capnames"
    unless_null $P943, vivify_600
    $P943 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P943
  vivify_600:
    set $P943[""], $P942
.annotate 'line', 722
    get_hll_global $P944, "GLOBAL"
    nqp_get_package_through_who $P945, $P944, "PAST"
    get_who $P946, $P945
    set $P947, $P946["Regex"]
.annotate 'line', 723
    get_hll_global $P948, "GLOBAL"
    nqp_get_package_through_who $P949, $P948, "PAST"
    get_who $P950, $P949
    set $P951, $P950["Regex"]
    $P952 = $P951."new"("scan" :named("pasttype"))
    find_lex $P953, "$rpast"
    unless_null $P953, vivify_601
    new $P953, "Undef"
  vivify_601:
.annotate 'line', 725
    get_hll_global $P954, "GLOBAL"
    nqp_get_package_through_who $P955, $P954, "PAST"
    get_who $P956, $P955
    set $P957, $P956["Regex"]
.annotate 'line', 726
    find_lex $P960, "$?PACKAGE"
    get_who $P961, $P960
    set $P962, $P961["@MODIFIERS"]
    unless_null $P962, vivify_602
    $P962 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P963, $P962[0]
    unless_null $P963, vivify_603
    $P963 = root_new ['parrot';'Hash']
  vivify_603:
    set $P964, $P963["r"]
    unless_null $P964, vivify_604
    new $P964, "Undef"
  vivify_604:
    if $P964, if_959
    new $P966, "String"
    assign $P966, "g"
    set $P958, $P966
    goto if_959_end
  if_959:
    new $P965, "String"
    assign $P965, "r"
    set $P958, $P965
  if_959_end:
    $P967 = $P957."new"("pass" :named("pasttype"), $P958 :named("backtrack"))
.annotate 'line', 725
    find_lex $P968, "%capnames"
    unless_null $P968, vivify_605
    $P968 = root_new ['parrot';'Hash']
  vivify_605:
    $P969 = $P947."new"($P952, $P953, $P967, "concat" :named("pasttype"), $P968 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P969
.annotate 'line', 730
    find_lex $P971, "$block"
    unless_null $P971, vivify_606
    new $P971, "Undef"
  vivify_606:
    $P972 = $P971."symbol"(unicode:"$\x{a2}")
    if $P972, unless_970_end
    find_lex $P973, "$block"
    unless_null $P973, vivify_607
    new $P973, "Undef"
  vivify_607:
    $P973."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_970_end:
.annotate 'line', 731
    find_lex $P975, "$block"
    unless_null $P975, vivify_608
    new $P975, "Undef"
  vivify_608:
    $P976 = $P975."symbol"("$/")
    if $P976, unless_974_end
    find_lex $P977, "$block"
    unless_null $P977, vivify_609
    new $P977, "Undef"
  vivify_609:
    $P977."symbol"("$/", "lexical" :named("scope"))
  unless_974_end:
.annotate 'line', 732
    find_lex $P978, "$block"
    unless_null $P978, vivify_610
    new $P978, "Undef"
  vivify_610:
    find_lex $P979, "$rpast"
    unless_null $P979, vivify_611
    new $P979, "Undef"
  vivify_611:
    $P978."push"($P979)
.annotate 'line', 733
    find_lex $P980, "$block"
    unless_null $P980, vivify_612
    new $P980, "Undef"
  vivify_612:
    $P980."blocktype"("method")
    find_lex $P981, "$block"
    unless_null $P981, vivify_613
    new $P981, "Undef"
  vivify_613:
.annotate 'line', 719
    .return ($P981)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_988
    .param pmc param_989
.annotate 'line', 737
    .const 'Sub' $P1214 = "188_1303739789.706" 
    capture_lex $P1214
    .const 'Sub' $P1151 = "185_1303739789.706" 
    capture_lex $P1151
    .const 'Sub' $P1109 = "183_1303739789.706" 
    capture_lex $P1109
    .const 'Sub' $P1067 = "181_1303739789.706" 
    capture_lex $P1067
    .const 'Sub' $P1000 = "178_1303739789.706" 
    capture_lex $P1000
    .lex "$ast", param_988
    .lex "$count", param_989
.annotate 'line', 738
    $P990 = root_new ['parrot';'Hash']
    .lex "%capnames", $P990
.annotate 'line', 739
    new $P991, "Undef"
    .lex "$pasttype", $P991
.annotate 'line', 737
    find_lex $P992, "%capnames"
    unless_null $P992, vivify_614
    $P992 = root_new ['parrot';'Hash']
  vivify_614:
.annotate 'line', 739
    find_lex $P993, "$ast"
    unless_null $P993, vivify_615
    new $P993, "Undef"
  vivify_615:
    $P994 = $P993."pasttype"()
    store_lex "$pasttype", $P994
.annotate 'line', 740
    find_lex $P996, "$pasttype"
    unless_null $P996, vivify_616
    new $P996, "Undef"
  vivify_616:
    set $S997, $P996
    iseq $I998, $S997, "alt"
    if $I998, if_995
.annotate 'line', 753
    find_lex $P1058, "$pasttype"
    unless_null $P1058, vivify_617
    new $P1058, "Undef"
  vivify_617:
    set $S1059, $P1058
    iseq $I1060, $S1059, "concat"
    if $I1060, if_1057
.annotate 'line', 762
    find_lex $P1102, "$pasttype"
    unless_null $P1102, vivify_618
    new $P1102, "Undef"
  vivify_618:
    set $S1103, $P1102
    iseq $I1104, $S1103, "subrule"
    if $I1104, if_1101
    new $P1100, 'Integer'
    set $P1100, $I1104
    goto if_1101_end
  if_1101:
    find_lex $P1105, "$ast"
    unless_null $P1105, vivify_619
    new $P1105, "Undef"
  vivify_619:
    $S1106 = $P1105."subtype"()
    iseq $I1107, $S1106, "capture"
    new $P1100, 'Integer'
    set $P1100, $I1107
  if_1101_end:
    if $P1100, if_1099
.annotate 'line', 775
    find_lex $P1147, "$pasttype"
    unless_null $P1147, vivify_620
    new $P1147, "Undef"
  vivify_620:
    set $S1148, $P1147
    iseq $I1149, $S1148, "subcapture"
    if $I1149, if_1146
.annotate 'line', 792
    find_lex $P1210, "$pasttype"
    unless_null $P1210, vivify_621
    new $P1210, "Undef"
  vivify_621:
    set $S1211, $P1210
    iseq $I1212, $S1211, "quant"
    unless $I1212, if_1209_end
    .const 'Sub' $P1214 = "188_1303739789.706" 
    capture_lex $P1214
    $P1214()
  if_1209_end:
    goto if_1146_end
  if_1146:
.annotate 'line', 775
    .const 'Sub' $P1151 = "185_1303739789.706" 
    capture_lex $P1151
    $P1151()
  if_1146_end:
    goto if_1099_end
  if_1099:
.annotate 'line', 762
    .const 'Sub' $P1109 = "183_1303739789.706" 
    capture_lex $P1109
    $P1109()
  if_1099_end:
    goto if_1057_end
  if_1057:
.annotate 'line', 754
    find_lex $P1062, "$ast"
    unless_null $P1062, vivify_666
    new $P1062, "Undef"
  vivify_666:
    $P1063 = $P1062."list"()
    defined $I1064, $P1063
    unless $I1064, for_undef_667
    iter $P1061, $P1063
    new $P1097, 'ExceptionHandler'
    set_label $P1097, loop1096_handler
    $P1097."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1097
  loop1096_test:
    unless $P1061, loop1096_done
    shift $P1065, $P1061
  loop1096_redo:
    .const 'Sub' $P1067 = "181_1303739789.706" 
    capture_lex $P1067
    $P1067($P1065)
  loop1096_next:
    goto loop1096_test
  loop1096_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1098, exception, 'type'
    eq $P1098, .CONTROL_LOOP_NEXT, loop1096_next
    eq $P1098, .CONTROL_LOOP_REDO, loop1096_redo
  loop1096_done:
    pop_eh 
  for_undef_667:
  if_1057_end:
.annotate 'line', 753
    goto if_995_end
  if_995:
.annotate 'line', 740
    .const 'Sub' $P1000 = "178_1303739789.706" 
    capture_lex $P1000
    $P1000()
  if_995_end:
.annotate 'line', 799
    find_lex $P1235, "$count"
    unless_null $P1235, vivify_703
    new $P1235, "Undef"
  vivify_703:
    find_lex $P1236, "%capnames"
    unless_null $P1236, vivify_704
    $P1236 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1236
  vivify_704:
    set $P1236[""], $P1235
    find_lex $P1237, "%capnames"
    unless_null $P1237, vivify_705
    $P1237 = root_new ['parrot';'Hash']
  vivify_705:
.annotate 'line', 737
    .return ($P1237)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1213"  :anon :subid("188_1303739789.706") :outer("177_1303739789.706")
.annotate 'line', 792
    .const 'Sub' $P1225 = "189_1303739789.706" 
    capture_lex $P1225
.annotate 'line', 793
    $P1215 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1215
    find_lex $P1216, "$ast"
    unless_null $P1216, vivify_622
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P1217, $P1216[0]
    unless_null $P1217, vivify_623
    new $P1217, "Undef"
  vivify_623:
    find_lex $P1218, "$count"
    unless_null $P1218, vivify_624
    new $P1218, "Undef"
  vivify_624:
    $P1219 = "capnames"($P1217, $P1218)
    store_lex "%astcap", $P1219
.annotate 'line', 794
    find_lex $P1221, "%astcap"
    unless_null $P1221, vivify_625
    $P1221 = root_new ['parrot';'Hash']
  vivify_625:
    defined $I1222, $P1221
    unless $I1222, for_undef_626
    iter $P1220, $P1221
    new $P1231, 'ExceptionHandler'
    set_label $P1231, loop1230_handler
    $P1231."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1231
  loop1230_test:
    unless $P1220, loop1230_done
    shift $P1223, $P1220
  loop1230_redo:
    .const 'Sub' $P1225 = "189_1303739789.706" 
    capture_lex $P1225
    $P1225($P1223)
  loop1230_next:
    goto loop1230_test
  loop1230_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1232, exception, 'type'
    eq $P1232, .CONTROL_LOOP_NEXT, loop1230_next
    eq $P1232, .CONTROL_LOOP_REDO, loop1230_redo
  loop1230_done:
    pop_eh 
  for_undef_626:
.annotate 'line', 797
    find_lex $P1233, "%astcap"
    unless_null $P1233, vivify_629
    $P1233 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1234, $P1233[""]
    unless_null $P1234, vivify_630
    new $P1234, "Undef"
  vivify_630:
    store_lex "$count", $P1234
.annotate 'line', 792
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1224"  :anon :subid("189_1303739789.706") :outer("188_1303739789.706")
    .param pmc param_1226
.annotate 'line', 794
    .lex "$_", param_1226
.annotate 'line', 795
    new $P1227, "Integer"
    assign $P1227, 2
    find_lex $P1228, "$_"
    unless_null $P1228, vivify_627
    new $P1228, "Undef"
  vivify_627:
    find_lex $P1229, "%capnames"
    unless_null $P1229, vivify_628
    $P1229 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1229
  vivify_628:
    set $P1229[$P1228], $P1227
.annotate 'line', 794
    .return ($P1227)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1150"  :anon :subid("185_1303739789.706") :outer("177_1303739789.706")
.annotate 'line', 775
    .const 'Sub' $P1191 = "187_1303739789.706" 
    capture_lex $P1191
    .const 'Sub' $P1163 = "186_1303739789.706" 
    capture_lex $P1163
.annotate 'line', 776
    new $P1152, "Undef"
    .lex "$name", $P1152
.annotate 'line', 777
    $P1153 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1153
.annotate 'line', 786
    $P1154 = root_new ['parrot';'Hash']
    .lex "%x", $P1154
.annotate 'line', 776
    find_lex $P1155, "$ast"
    unless_null $P1155, vivify_631
    new $P1155, "Undef"
  vivify_631:
    $P1156 = $P1155."name"()
    store_lex "$name", $P1156
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1157 = split '=', $S0
            
    store_lex "@names", $P1157
.annotate 'line', 782
    find_lex $P1159, "@names"
    unless_null $P1159, vivify_632
    $P1159 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I1160, $P1159
    unless $I1160, for_undef_633
    iter $P1158, $P1159
    new $P1180, 'ExceptionHandler'
    set_label $P1180, loop1179_handler
    $P1180."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1180
  loop1179_test:
    unless $P1158, loop1179_done
    shift $P1161, $P1158
  loop1179_redo:
    .const 'Sub' $P1163 = "186_1303739789.706" 
    capture_lex $P1163
    $P1163($P1161)
  loop1179_next:
    goto loop1179_test
  loop1179_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1181, exception, 'type'
    eq $P1181, .CONTROL_LOOP_NEXT, loop1179_next
    eq $P1181, .CONTROL_LOOP_REDO, loop1179_redo
  loop1179_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 786
    find_lex $P1182, "$ast"
    unless_null $P1182, vivify_639
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1183, $P1182[0]
    unless_null $P1183, vivify_640
    new $P1183, "Undef"
  vivify_640:
    find_lex $P1184, "$count"
    unless_null $P1184, vivify_641
    new $P1184, "Undef"
  vivify_641:
    $P1185 = "capnames"($P1183, $P1184)
    store_lex "%x", $P1185
.annotate 'line', 787
    find_lex $P1187, "%x"
    unless_null $P1187, vivify_642
    $P1187 = root_new ['parrot';'Hash']
  vivify_642:
    defined $I1188, $P1187
    unless $I1188, for_undef_643
    iter $P1186, $P1187
    new $P1205, 'ExceptionHandler'
    set_label $P1205, loop1204_handler
    $P1205."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1205
  loop1204_test:
    unless $P1186, loop1204_done
    shift $P1189, $P1186
  loop1204_redo:
    .const 'Sub' $P1191 = "187_1303739789.706" 
    capture_lex $P1191
    $P1191($P1189)
  loop1204_next:
    goto loop1204_test
  loop1204_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1206, exception, 'type'
    eq $P1206, .CONTROL_LOOP_NEXT, loop1204_next
    eq $P1206, .CONTROL_LOOP_REDO, loop1204_redo
  loop1204_done:
    pop_eh 
  for_undef_643:
.annotate 'line', 790
    find_lex $P1207, "%x"
    unless_null $P1207, vivify_652
    $P1207 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1208, $P1207[""]
    unless_null $P1208, vivify_653
    new $P1208, "Undef"
  vivify_653:
    store_lex "$count", $P1208
.annotate 'line', 775
    .return ($P1208)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1162"  :anon :subid("186_1303739789.706") :outer("185_1303739789.706")
    .param pmc param_1164
.annotate 'line', 782
    .lex "$_", param_1164
.annotate 'line', 783
    find_lex $P1168, "$_"
    unless_null $P1168, vivify_634
    new $P1168, "Undef"
  vivify_634:
    set $S1169, $P1168
    iseq $I1170, $S1169, "0"
    unless $I1170, unless_1167
    new $P1166, 'Integer'
    set $P1166, $I1170
    goto unless_1167_end
  unless_1167:
    find_lex $P1171, "$_"
    unless_null $P1171, vivify_635
    new $P1171, "Undef"
  vivify_635:
    set $N1172, $P1171
    isgt $I1173, $N1172, 0.0
    new $P1166, 'Integer'
    set $P1166, $I1173
  unless_1167_end:
    unless $P1166, if_1165_end
    find_lex $P1174, "$_"
    unless_null $P1174, vivify_636
    new $P1174, "Undef"
  vivify_636:
    add $P1175, $P1174, 1
    store_lex "$count", $P1175
  if_1165_end:
.annotate 'line', 784
    new $P1176, "Integer"
    assign $P1176, 1
    find_lex $P1177, "$_"
    unless_null $P1177, vivify_637
    new $P1177, "Undef"
  vivify_637:
    find_lex $P1178, "%capnames"
    unless_null $P1178, vivify_638
    $P1178 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1178
  vivify_638:
    set $P1178[$P1177], $P1176
.annotate 'line', 782
    .return ($P1176)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1190"  :anon :subid("187_1303739789.706") :outer("185_1303739789.706")
    .param pmc param_1192
.annotate 'line', 787
    .lex "$_", param_1192
.annotate 'line', 788
    find_lex $P1193, "$_"
    unless_null $P1193, vivify_644
    new $P1193, "Undef"
  vivify_644:
    find_lex $P1194, "%capnames"
    unless_null $P1194, vivify_645
    $P1194 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1195, $P1194[$P1193]
    unless_null $P1195, vivify_646
    new $P1195, "Undef"
  vivify_646:
    set $N1196, $P1195
    new $P1197, 'Float'
    set $P1197, $N1196
    find_lex $P1198, "$_"
    unless_null $P1198, vivify_647
    new $P1198, "Undef"
  vivify_647:
    find_lex $P1199, "%x"
    unless_null $P1199, vivify_648
    $P1199 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1200, $P1199[$P1198]
    unless_null $P1200, vivify_649
    new $P1200, "Undef"
  vivify_649:
    add $P1201, $P1197, $P1200
    find_lex $P1202, "$_"
    unless_null $P1202, vivify_650
    new $P1202, "Undef"
  vivify_650:
    find_lex $P1203, "%capnames"
    unless_null $P1203, vivify_651
    $P1203 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1203
  vivify_651:
    set $P1203[$P1202], $P1201
.annotate 'line', 787
    .return ($P1201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1108"  :anon :subid("183_1303739789.706") :outer("177_1303739789.706")
.annotate 'line', 762
    .const 'Sub' $P1127 = "184_1303739789.706" 
    capture_lex $P1127
.annotate 'line', 763
    new $P1110, "Undef"
    .lex "$name", $P1110
.annotate 'line', 765
    $P1111 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1111
.annotate 'line', 763
    find_lex $P1112, "$ast"
    unless_null $P1112, vivify_654
    new $P1112, "Undef"
  vivify_654:
    $P1113 = $P1112."name"()
    store_lex "$name", $P1113
.annotate 'line', 764
    find_lex $P1115, "$name"
    unless_null $P1115, vivify_655
    new $P1115, "Undef"
  vivify_655:
    set $S1116, $P1115
    iseq $I1117, $S1116, ""
    unless $I1117, if_1114_end
    find_lex $P1118, "$count"
    unless_null $P1118, vivify_656
    new $P1118, "Undef"
  vivify_656:
    store_lex "$name", $P1118
    find_lex $P1119, "$ast"
    unless_null $P1119, vivify_657
    new $P1119, "Undef"
  vivify_657:
    find_lex $P1120, "$name"
    unless_null $P1120, vivify_658
    new $P1120, "Undef"
  vivify_658:
    $P1119."name"($P1120)
  if_1114_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1121 = split '=', $S0
            
    store_lex "@names", $P1121
.annotate 'line', 770
    find_lex $P1123, "@names"
    unless_null $P1123, vivify_659
    $P1123 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I1124, $P1123
    unless $I1124, for_undef_660
    iter $P1122, $P1123
    new $P1144, 'ExceptionHandler'
    set_label $P1144, loop1143_handler
    $P1144."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1144
  loop1143_test:
    unless $P1122, loop1143_done
    shift $P1125, $P1122
  loop1143_redo:
    .const 'Sub' $P1127 = "184_1303739789.706" 
    capture_lex $P1127
    $P1127($P1125)
  loop1143_next:
    goto loop1143_test
  loop1143_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1145, exception, 'type'
    eq $P1145, .CONTROL_LOOP_NEXT, loop1143_next
    eq $P1145, .CONTROL_LOOP_REDO, loop1143_redo
  loop1143_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 762
    .return ($P1122)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1126"  :anon :subid("184_1303739789.706") :outer("183_1303739789.706")
    .param pmc param_1128
.annotate 'line', 770
    .lex "$_", param_1128
.annotate 'line', 771
    find_lex $P1132, "$_"
    unless_null $P1132, vivify_661
    new $P1132, "Undef"
  vivify_661:
    set $S1133, $P1132
    iseq $I1134, $S1133, "0"
    unless $I1134, unless_1131
    new $P1130, 'Integer'
    set $P1130, $I1134
    goto unless_1131_end
  unless_1131:
    find_lex $P1135, "$_"
    unless_null $P1135, vivify_662
    new $P1135, "Undef"
  vivify_662:
    set $N1136, $P1135
    isgt $I1137, $N1136, 0.0
    new $P1130, 'Integer'
    set $P1130, $I1137
  unless_1131_end:
    unless $P1130, if_1129_end
    find_lex $P1138, "$_"
    unless_null $P1138, vivify_663
    new $P1138, "Undef"
  vivify_663:
    add $P1139, $P1138, 1
    store_lex "$count", $P1139
  if_1129_end:
.annotate 'line', 772
    new $P1140, "Integer"
    assign $P1140, 1
    find_lex $P1141, "$_"
    unless_null $P1141, vivify_664
    new $P1141, "Undef"
  vivify_664:
    find_lex $P1142, "%capnames"
    unless_null $P1142, vivify_665
    $P1142 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1142
  vivify_665:
    set $P1142[$P1141], $P1140
.annotate 'line', 770
    .return ($P1140)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1066"  :anon :subid("181_1303739789.706") :outer("177_1303739789.706")
    .param pmc param_1069
.annotate 'line', 754
    .const 'Sub' $P1078 = "182_1303739789.706" 
    capture_lex $P1078
.annotate 'line', 755
    $P1068 = root_new ['parrot';'Hash']
    .lex "%x", $P1068
    .lex "$_", param_1069
    find_lex $P1070, "$_"
    unless_null $P1070, vivify_668
    new $P1070, "Undef"
  vivify_668:
    find_lex $P1071, "$count"
    unless_null $P1071, vivify_669
    new $P1071, "Undef"
  vivify_669:
    $P1072 = "capnames"($P1070, $P1071)
    store_lex "%x", $P1072
.annotate 'line', 756
    find_lex $P1074, "%x"
    unless_null $P1074, vivify_670
    $P1074 = root_new ['parrot';'Hash']
  vivify_670:
    defined $I1075, $P1074
    unless $I1075, for_undef_671
    iter $P1073, $P1074
    new $P1092, 'ExceptionHandler'
    set_label $P1092, loop1091_handler
    $P1092."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1092
  loop1091_test:
    unless $P1073, loop1091_done
    shift $P1076, $P1073
  loop1091_redo:
    .const 'Sub' $P1078 = "182_1303739789.706" 
    capture_lex $P1078
    $P1078($P1076)
  loop1091_next:
    goto loop1091_test
  loop1091_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1093, exception, 'type'
    eq $P1093, .CONTROL_LOOP_NEXT, loop1091_next
    eq $P1093, .CONTROL_LOOP_REDO, loop1091_redo
  loop1091_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 759
    find_lex $P1094, "%x"
    unless_null $P1094, vivify_680
    $P1094 = root_new ['parrot';'Hash']
  vivify_680:
    set $P1095, $P1094[""]
    unless_null $P1095, vivify_681
    new $P1095, "Undef"
  vivify_681:
    store_lex "$count", $P1095
.annotate 'line', 754
    .return ($P1095)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1077"  :anon :subid("182_1303739789.706") :outer("181_1303739789.706")
    .param pmc param_1079
.annotate 'line', 756
    .lex "$_", param_1079
.annotate 'line', 757
    find_lex $P1080, "$_"
    unless_null $P1080, vivify_672
    new $P1080, "Undef"
  vivify_672:
    find_lex $P1081, "%capnames"
    unless_null $P1081, vivify_673
    $P1081 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1082, $P1081[$P1080]
    unless_null $P1082, vivify_674
    new $P1082, "Undef"
  vivify_674:
    set $N1083, $P1082
    new $P1084, 'Float'
    set $P1084, $N1083
    find_lex $P1085, "$_"
    unless_null $P1085, vivify_675
    new $P1085, "Undef"
  vivify_675:
    find_lex $P1086, "%x"
    unless_null $P1086, vivify_676
    $P1086 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1087, $P1086[$P1085]
    unless_null $P1087, vivify_677
    new $P1087, "Undef"
  vivify_677:
    add $P1088, $P1084, $P1087
    find_lex $P1089, "$_"
    unless_null $P1089, vivify_678
    new $P1089, "Undef"
  vivify_678:
    find_lex $P1090, "%capnames"
    unless_null $P1090, vivify_679
    $P1090 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1090
  vivify_679:
    set $P1090[$P1089], $P1088
.annotate 'line', 756
    .return ($P1088)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block999"  :anon :subid("178_1303739789.706") :outer("177_1303739789.706")
.annotate 'line', 740
    .const 'Sub' $P1009 = "179_1303739789.706" 
    capture_lex $P1009
.annotate 'line', 741
    new $P1001, "Undef"
    .lex "$max", $P1001
    find_lex $P1002, "$count"
    unless_null $P1002, vivify_682
    new $P1002, "Undef"
  vivify_682:
    store_lex "$max", $P1002
.annotate 'line', 742
    find_lex $P1004, "$ast"
    unless_null $P1004, vivify_683
    new $P1004, "Undef"
  vivify_683:
    $P1005 = $P1004."list"()
    defined $I1006, $P1005
    unless $I1006, for_undef_684
    iter $P1003, $P1005
    new $P1054, 'ExceptionHandler'
    set_label $P1054, loop1053_handler
    $P1054."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1054
  loop1053_test:
    unless $P1003, loop1053_done
    shift $P1007, $P1003
  loop1053_redo:
    .const 'Sub' $P1009 = "179_1303739789.706" 
    capture_lex $P1009
    $P1009($P1007)
  loop1053_next:
    goto loop1053_test
  loop1053_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1055, exception, 'type'
    eq $P1055, .CONTROL_LOOP_NEXT, loop1053_next
    eq $P1055, .CONTROL_LOOP_REDO, loop1053_redo
  loop1053_done:
    pop_eh 
  for_undef_684:
.annotate 'line', 751
    find_lex $P1056, "$max"
    unless_null $P1056, vivify_702
    new $P1056, "Undef"
  vivify_702:
    store_lex "$count", $P1056
.annotate 'line', 740
    .return ($P1056)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1008"  :anon :subid("179_1303739789.706") :outer("178_1303739789.706")
    .param pmc param_1011
.annotate 'line', 742
    .const 'Sub' $P1020 = "180_1303739789.706" 
    capture_lex $P1020
.annotate 'line', 743
    $P1010 = root_new ['parrot';'Hash']
    .lex "%x", $P1010
    .lex "$_", param_1011
    find_lex $P1012, "$_"
    unless_null $P1012, vivify_685
    new $P1012, "Undef"
  vivify_685:
    find_lex $P1013, "$count"
    unless_null $P1013, vivify_686
    new $P1013, "Undef"
  vivify_686:
    $P1014 = "capnames"($P1012, $P1013)
    store_lex "%x", $P1014
.annotate 'line', 744
    find_lex $P1016, "%x"
    unless_null $P1016, vivify_687
    $P1016 = root_new ['parrot';'Hash']
  vivify_687:
    defined $I1017, $P1016
    unless $I1017, for_undef_688
    iter $P1015, $P1016
    new $P1041, 'ExceptionHandler'
    set_label $P1041, loop1040_handler
    $P1041."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1041
  loop1040_test:
    unless $P1015, loop1040_done
    shift $P1018, $P1015
  loop1040_redo:
    .const 'Sub' $P1020 = "180_1303739789.706" 
    capture_lex $P1020
    $P1020($P1018)
  loop1040_next:
    goto loop1040_test
  loop1040_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1042, exception, 'type'
    eq $P1042, .CONTROL_LOOP_NEXT, loop1040_next
    eq $P1042, .CONTROL_LOOP_REDO, loop1040_redo
  loop1040_done:
    pop_eh 
  for_undef_688:
.annotate 'line', 749
    find_lex $P1045, "%x"
    unless_null $P1045, vivify_697
    $P1045 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1046, $P1045[""]
    unless_null $P1046, vivify_698
    new $P1046, "Undef"
  vivify_698:
    set $N1047, $P1046
    find_lex $P1048, "$max"
    unless_null $P1048, vivify_699
    new $P1048, "Undef"
  vivify_699:
    set $N1049, $P1048
    isgt $I1050, $N1047, $N1049
    if $I1050, if_1044
    new $P1043, 'Integer'
    set $P1043, $I1050
    goto if_1044_end
  if_1044:
    find_lex $P1051, "%x"
    unless_null $P1051, vivify_700
    $P1051 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1052, $P1051[""]
    unless_null $P1052, vivify_701
    new $P1052, "Undef"
  vivify_701:
    store_lex "$max", $P1052
    set $P1043, $P1052
  if_1044_end:
.annotate 'line', 742
    .return ($P1043)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1019"  :anon :subid("180_1303739789.706") :outer("179_1303739789.706")
    .param pmc param_1021
.annotate 'line', 744
    .lex "$_", param_1021
.annotate 'line', 745
    find_lex $P1026, "$_"
    unless_null $P1026, vivify_689
    new $P1026, "Undef"
  vivify_689:
    find_lex $P1027, "%capnames"
    unless_null $P1027, vivify_690
    $P1027 = root_new ['parrot';'Hash']
  vivify_690:
    set $P1028, $P1027[$P1026]
    unless_null $P1028, vivify_691
    new $P1028, "Undef"
  vivify_691:
    set $N1029, $P1028
    islt $I1030, $N1029, 2.0
    if $I1030, if_1025
    new $P1024, 'Integer'
    set $P1024, $I1030
    goto if_1025_end
  if_1025:
    find_lex $P1031, "$_"
    unless_null $P1031, vivify_692
    new $P1031, "Undef"
  vivify_692:
    find_lex $P1032, "%x"
    unless_null $P1032, vivify_693
    $P1032 = root_new ['parrot';'Hash']
  vivify_693:
    set $P1033, $P1032[$P1031]
    unless_null $P1033, vivify_694
    new $P1033, "Undef"
  vivify_694:
    set $N1034, $P1033
    iseq $I1035, $N1034, 1.0
    new $P1024, 'Integer'
    set $P1024, $I1035
  if_1025_end:
    if $P1024, if_1023
    new $P1037, "Integer"
    assign $P1037, 2
    set $P1022, $P1037
    goto if_1023_end
  if_1023:
    new $P1036, "Integer"
    assign $P1036, 1
    set $P1022, $P1036
  if_1023_end:
.annotate 'line', 746
    find_lex $P1038, "$_"
    unless_null $P1038, vivify_695
    new $P1038, "Undef"
  vivify_695:
    find_lex $P1039, "%capnames"
    unless_null $P1039, vivify_696
    $P1039 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1039
  vivify_696:
    set $P1039[$P1038], $P1022
.annotate 'line', 744
    .return ($P1022)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1240
    .param pmc param_1241
.annotate 'line', 803
    .lex "$ast", param_1240
    .lex "$backmod", param_1241
.annotate 'line', 804
    find_lex $P1243, "$backmod"
    unless_null $P1243, vivify_706
    new $P1243, "Undef"
  vivify_706:
    set $S1244, $P1243
    iseq $I1245, $S1244, ":"
    if $I1245, if_1242
.annotate 'line', 805
    find_lex $P1250, "$backmod"
    unless_null $P1250, vivify_707
    new $P1250, "Undef"
  vivify_707:
    set $S1251, $P1250
    iseq $I1252, $S1251, ":?"
    unless $I1252, unless_1249
    new $P1248, 'Integer'
    set $P1248, $I1252
    goto unless_1249_end
  unless_1249:
    find_lex $P1253, "$backmod"
    unless_null $P1253, vivify_708
    new $P1253, "Undef"
  vivify_708:
    set $S1254, $P1253
    iseq $I1255, $S1254, "?"
    new $P1248, 'Integer'
    set $P1248, $I1255
  unless_1249_end:
    if $P1248, if_1247
.annotate 'line', 806
    find_lex $P1260, "$backmod"
    unless_null $P1260, vivify_709
    new $P1260, "Undef"
  vivify_709:
    set $S1261, $P1260
    iseq $I1262, $S1261, ":!"
    unless $I1262, unless_1259
    new $P1258, 'Integer'
    set $P1258, $I1262
    goto unless_1259_end
  unless_1259:
    find_lex $P1263, "$backmod"
    unless_null $P1263, vivify_710
    new $P1263, "Undef"
  vivify_710:
    set $S1264, $P1263
    iseq $I1265, $S1264, "!"
    new $P1258, 'Integer'
    set $P1258, $I1265
  unless_1259_end:
    unless $P1258, if_1257_end
    find_lex $P1266, "$ast"
    unless_null $P1266, vivify_711
    new $P1266, "Undef"
  vivify_711:
    $P1266."backtrack"("g")
  if_1257_end:
    goto if_1247_end
  if_1247:
.annotate 'line', 805
    find_lex $P1256, "$ast"
    unless_null $P1256, vivify_712
    new $P1256, "Undef"
  vivify_712:
    $P1256."backtrack"("f")
  if_1247_end:
    goto if_1242_end
  if_1242:
.annotate 'line', 804
    find_lex $P1246, "$ast"
    unless_null $P1246, vivify_713
    new $P1246, "Undef"
  vivify_713:
    $P1246."backtrack"("r")
  if_1242_end:
    find_lex $P1267, "$ast"
    unless_null $P1267, vivify_714
    new $P1267, "Undef"
  vivify_714:
.annotate 'line', 803
    .return ($P1267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("191_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1281
    .param pmc param_1282
.annotate 'line', 226
    .lex "self", param_1281
    .lex "$/", param_1282
.annotate 'line', 227
    find_lex $P1283, "$/"
    find_lex $P1286, "$/"
    unless_null $P1286, vivify_717
    $P1286 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1287, $P1286["quote_EXPR"]
    unless_null $P1287, vivify_718
    new $P1287, "Undef"
  vivify_718:
    if $P1287, if_1285
    find_lex $P1291, "$/"
    unless_null $P1291, vivify_719
    $P1291 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1292, $P1291["val"]
    unless_null $P1292, vivify_720
    new $P1292, "Undef"
  vivify_720:
    set $N1293, $P1292
    new $P1284, 'Float'
    set $P1284, $N1293
    goto if_1285_end
  if_1285:
    find_lex $P1288, "$/"
    unless_null $P1288, vivify_721
    $P1288 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1289, $P1288["quote_EXPR"]
    unless_null $P1289, vivify_722
    new $P1289, "Undef"
  vivify_722:
    $P1290 = $P1289."ast"()
    set $P1284, $P1290
  if_1285_end:
    $P1294 = $P1283."!make"($P1284)
.annotate 'line', 226
    .return ($P1294)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("192_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'line', 230
    .const 'Sub' $P1310 = "193_1303739789.706" 
    capture_lex $P1310
    .lex "self", param_1296
    .lex "$/", param_1297
.annotate 'line', 231
    new $P1298, "Undef"
    .lex "$past", $P1298
    get_hll_global $P1299, "GLOBAL"
    nqp_get_package_through_who $P1300, $P1299, "PAST"
    get_who $P1301, $P1300
    set $P1302, $P1301["Op"]
    $P1303 = $P1302."new"("list" :named("pasttype"))
    store_lex "$past", $P1303
.annotate 'line', 232
    find_lex $P1305, "$/"
    unless_null $P1305, vivify_723
    $P1305 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1306, $P1305["arg"]
    unless_null $P1306, vivify_724
    new $P1306, "Undef"
  vivify_724:
    defined $I1307, $P1306
    unless $I1307, for_undef_725
    iter $P1304, $P1306
    new $P1317, 'ExceptionHandler'
    set_label $P1317, loop1316_handler
    $P1317."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1317
  loop1316_test:
    unless $P1304, loop1316_done
    shift $P1308, $P1304
  loop1316_redo:
    .const 'Sub' $P1310 = "193_1303739789.706" 
    capture_lex $P1310
    $P1310($P1308)
  loop1316_next:
    goto loop1316_test
  loop1316_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1318, exception, 'type'
    eq $P1318, .CONTROL_LOOP_NEXT, loop1316_next
    eq $P1318, .CONTROL_LOOP_REDO, loop1316_redo
  loop1316_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 233
    find_lex $P1319, "$/"
    find_lex $P1320, "$past"
    unless_null $P1320, vivify_728
    new $P1320, "Undef"
  vivify_728:
    $P1321 = $P1319."!make"($P1320)
.annotate 'line', 230
    .return ($P1321)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1309"  :anon :subid("193_1303739789.706") :outer("192_1303739789.706")
    .param pmc param_1311
.annotate 'line', 232
    .lex "$_", param_1311
    find_lex $P1312, "$past"
    unless_null $P1312, vivify_726
    new $P1312, "Undef"
  vivify_726:
    find_lex $P1313, "$_"
    unless_null $P1313, vivify_727
    new $P1313, "Undef"
  vivify_727:
    $P1314 = $P1313."ast"()
    $P1315 = $P1312."push"($P1314)
    .return ($P1315)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("194_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1323
    .param pmc param_1324
.annotate 'line', 236
    .lex "self", param_1323
    .lex "$/", param_1324
.annotate 'line', 237
    new $P1325, "Undef"
    .lex "$past", $P1325
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_729
    $P1326 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1327, $P1326["nibbler"]
    unless_null $P1327, vivify_730
    new $P1327, "Undef"
  vivify_730:
    $P1328 = $P1327."ast"()
    $P1329 = "buildsub"($P1328)
    store_lex "$past", $P1329
.annotate 'line', 238
    find_lex $P1330, "$past"
    unless_null $P1330, vivify_731
    new $P1330, "Undef"
  vivify_731:
    find_lex $P1331, "$/"
    unless_null $P1331, vivify_732
    new $P1331, "Undef"
  vivify_732:
    $P1330."node"($P1331)
.annotate 'line', 239
    find_lex $P1332, "$/"
    find_lex $P1333, "$past"
    unless_null $P1333, vivify_733
    new $P1333, "Undef"
  vivify_733:
    $P1334 = $P1332."!make"($P1333)
.annotate 'line', 236
    .return ($P1334)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("195_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1338
    .param pmc param_1339
    .param pmc param_1340 :optional
    .param int has_param_1340 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1384 = "197_1303739789.706" 
    capture_lex $P1384
    .const 'Sub' $P1348 = "196_1303739789.706" 
    capture_lex $P1348
    new $P1337, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1337, control_1336
    push_eh $P1337
    .lex "self", param_1338
    .lex "$/", param_1339
    if has_param_1340, optparam_734
    new $P1341, "Undef"
    set param_1340, $P1341
  optparam_734:
    .lex "$key", param_1340
.annotate 'line', 251
    new $P1342, "Undef"
    .lex "$past", $P1342
.annotate 'line', 243
    find_lex $P1344, "$key"
    unless_null $P1344, vivify_735
    new $P1344, "Undef"
  vivify_735:
    set $S1345, $P1344
    iseq $I1346, $S1345, "open"
    unless $I1346, if_1343_end
    .const 'Sub' $P1348 = "196_1303739789.706" 
    capture_lex $P1348
    $P1348()
  if_1343_end:
.annotate 'line', 250
    find_lex $P1363, "$?PACKAGE"
    get_who $P1364, $P1363
    set $P1365, $P1364["@MODIFIERS"]
    unless_null $P1365, vivify_741
    $P1365 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    $P1365."shift"()
    find_lex $P1366, "$past"
    unless_null $P1366, vivify_742
    new $P1366, "Undef"
  vivify_742:
.annotate 'line', 252
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_743
    $P1368 = root_new ['parrot';'Hash']
  vivify_743:
    set $P1369, $P1368["termconj"]
    unless_null $P1369, vivify_744
    new $P1369, "Undef"
  vivify_744:
    set $N1370, $P1369
    isgt $I1371, $N1370, 1.0
    if $I1371, if_1367
.annotate 'line', 259
    find_lex $P1393, "$/"
    unless_null $P1393, vivify_745
    $P1393 = root_new ['parrot';'Hash']
  vivify_745:
    set $P1394, $P1393["termconj"]
    unless_null $P1394, vivify_746
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P1395, $P1394[0]
    unless_null $P1395, vivify_747
    new $P1395, "Undef"
  vivify_747:
    $P1396 = $P1395."ast"()
    store_lex "$past", $P1396
.annotate 'line', 258
    goto if_1367_end
  if_1367:
.annotate 'line', 253
    get_hll_global $P1372, "GLOBAL"
    nqp_get_package_through_who $P1373, $P1372, "PAST"
    get_who $P1374, $P1373
    set $P1375, $P1374["Regex"]
    find_lex $P1376, "$/"
    unless_null $P1376, vivify_748
    new $P1376, "Undef"
  vivify_748:
    $P1377 = $P1375."new"("alt" :named("pasttype"), $P1376 :named("node"))
    store_lex "$past", $P1377
.annotate 'line', 254
    find_lex $P1379, "$/"
    unless_null $P1379, vivify_749
    $P1379 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1380, $P1379["termconj"]
    unless_null $P1380, vivify_750
    new $P1380, "Undef"
  vivify_750:
    defined $I1381, $P1380
    unless $I1381, for_undef_751
    iter $P1378, $P1380
    new $P1391, 'ExceptionHandler'
    set_label $P1391, loop1390_handler
    $P1391."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1391
  loop1390_test:
    unless $P1378, loop1390_done
    shift $P1382, $P1378
  loop1390_redo:
    .const 'Sub' $P1384 = "197_1303739789.706" 
    capture_lex $P1384
    $P1384($P1382)
  loop1390_next:
    goto loop1390_test
  loop1390_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1392, exception, 'type'
    eq $P1392, .CONTROL_LOOP_NEXT, loop1390_next
    eq $P1392, .CONTROL_LOOP_REDO, loop1390_redo
  loop1390_done:
    pop_eh 
  for_undef_751:
  if_1367_end:
.annotate 'line', 261
    find_lex $P1397, "$/"
    find_lex $P1398, "$past"
    unless_null $P1398, vivify_754
    new $P1398, "Undef"
  vivify_754:
    $P1399 = $P1397."!make"($P1398)
.annotate 'line', 242
    .return ($P1399)
  control_1336:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1400, exception, "payload"
    .return ($P1400)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1347"  :anon :subid("196_1303739789.706") :outer("195_1303739789.706")
.annotate 'line', 244
    $P1349 = root_new ['parrot';'Hash']
    .lex "%old", $P1349
.annotate 'line', 245
    $P1350 = root_new ['parrot';'Hash']
    .lex "%new", $P1350
.annotate 'line', 244
    find_lex $P1351, "$?PACKAGE"
    get_who $P1352, $P1351
    set $P1353, $P1352["@MODIFIERS"]
    unless_null $P1353, vivify_736
    $P1353 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1354, $P1353[0]
    unless_null $P1354, vivify_737
    new $P1354, "Undef"
  vivify_737:
    store_lex "%old", $P1354
.annotate 'line', 245
    find_lex $P1355, "%old"
    unless_null $P1355, vivify_738
    $P1355 = root_new ['parrot';'Hash']
  vivify_738:
    clone $P1356, $P1355
    store_lex "%new", $P1356
.annotate 'line', 246
    find_lex $P1357, "$?PACKAGE"
    get_who $P1358, $P1357
    set $P1359, $P1358["@MODIFIERS"]
    unless_null $P1359, vivify_739
    $P1359 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1360, "%new"
    unless_null $P1360, vivify_740
    $P1360 = root_new ['parrot';'Hash']
  vivify_740:
    $P1359."unshift"($P1360)
.annotate 'line', 247
    new $P1361, "Exception"
    set $P1361['type'], .CONTROL_RETURN
    new $P1362, "Integer"
    assign $P1362, 1
    setattribute $P1361, 'payload', $P1362
    throw $P1361
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1383"  :anon :subid("197_1303739789.706") :outer("195_1303739789.706")
    .param pmc param_1385
.annotate 'line', 254
    .lex "$_", param_1385
.annotate 'line', 255
    find_lex $P1386, "$past"
    unless_null $P1386, vivify_752
    new $P1386, "Undef"
  vivify_752:
    find_lex $P1387, "$_"
    unless_null $P1387, vivify_753
    new $P1387, "Undef"
  vivify_753:
    $P1388 = $P1387."ast"()
    $P1389 = $P1386."push"($P1388)
.annotate 'line', 254
    .return ($P1389)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("198_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1402
    .param pmc param_1403
.annotate 'line', 264
    .const 'Sub' $P1423 = "199_1303739789.706" 
    capture_lex $P1423
    .lex "self", param_1402
    .lex "$/", param_1403
.annotate 'line', 265
    new $P1404, "Undef"
    .lex "$past", $P1404
.annotate 'line', 264
    find_lex $P1405, "$past"
    unless_null $P1405, vivify_755
    new $P1405, "Undef"
  vivify_755:
.annotate 'line', 266
    find_lex $P1407, "$/"
    unless_null $P1407, vivify_756
    $P1407 = root_new ['parrot';'Hash']
  vivify_756:
    set $P1408, $P1407["termish"]
    unless_null $P1408, vivify_757
    new $P1408, "Undef"
  vivify_757:
    set $N1409, $P1408
    isgt $I1410, $N1409, 1.0
    if $I1410, if_1406
.annotate 'line', 273
    find_lex $P1432, "$/"
    unless_null $P1432, vivify_758
    $P1432 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1433, $P1432["termish"]
    unless_null $P1433, vivify_759
    $P1433 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1434, $P1433[0]
    unless_null $P1434, vivify_760
    new $P1434, "Undef"
  vivify_760:
    $P1435 = $P1434."ast"()
    store_lex "$past", $P1435
.annotate 'line', 272
    goto if_1406_end
  if_1406:
.annotate 'line', 267
    get_hll_global $P1411, "GLOBAL"
    nqp_get_package_through_who $P1412, $P1411, "PAST"
    get_who $P1413, $P1412
    set $P1414, $P1413["Regex"]
    find_lex $P1415, "$/"
    unless_null $P1415, vivify_761
    new $P1415, "Undef"
  vivify_761:
    $P1416 = $P1414."new"("conj" :named("pasttype"), $P1415 :named("node"))
    store_lex "$past", $P1416
.annotate 'line', 268
    find_lex $P1418, "$/"
    unless_null $P1418, vivify_762
    $P1418 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1419, $P1418["termish"]
    unless_null $P1419, vivify_763
    new $P1419, "Undef"
  vivify_763:
    defined $I1420, $P1419
    unless $I1420, for_undef_764
    iter $P1417, $P1419
    new $P1430, 'ExceptionHandler'
    set_label $P1430, loop1429_handler
    $P1430."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1430
  loop1429_test:
    unless $P1417, loop1429_done
    shift $P1421, $P1417
  loop1429_redo:
    .const 'Sub' $P1423 = "199_1303739789.706" 
    capture_lex $P1423
    $P1423($P1421)
  loop1429_next:
    goto loop1429_test
  loop1429_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1431, exception, 'type'
    eq $P1431, .CONTROL_LOOP_NEXT, loop1429_next
    eq $P1431, .CONTROL_LOOP_REDO, loop1429_redo
  loop1429_done:
    pop_eh 
  for_undef_764:
  if_1406_end:
.annotate 'line', 275
    find_lex $P1436, "$/"
    find_lex $P1437, "$past"
    unless_null $P1437, vivify_767
    new $P1437, "Undef"
  vivify_767:
    $P1438 = $P1436."!make"($P1437)
.annotate 'line', 264
    .return ($P1438)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1422"  :anon :subid("199_1303739789.706") :outer("198_1303739789.706")
    .param pmc param_1424
.annotate 'line', 268
    .lex "$_", param_1424
.annotate 'line', 269
    find_lex $P1425, "$past"
    unless_null $P1425, vivify_765
    new $P1425, "Undef"
  vivify_765:
    find_lex $P1426, "$_"
    unless_null $P1426, vivify_766
    new $P1426, "Undef"
  vivify_766:
    $P1427 = $P1426."ast"()
    $P1428 = $P1425."push"($P1427)
.annotate 'line', 268
    .return ($P1428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("200_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1440
    .param pmc param_1441
.annotate 'line', 278
    .const 'Sub' $P1457 = "201_1303739789.706" 
    capture_lex $P1457
    .lex "self", param_1440
    .lex "$/", param_1441
.annotate 'line', 279
    new $P1442, "Undef"
    .lex "$past", $P1442
.annotate 'line', 280
    new $P1443, "Undef"
    .lex "$lastlit", $P1443
.annotate 'line', 279
    get_hll_global $P1444, "GLOBAL"
    nqp_get_package_through_who $P1445, $P1444, "PAST"
    get_who $P1446, $P1445
    set $P1447, $P1446["Regex"]
    find_lex $P1448, "$/"
    unless_null $P1448, vivify_768
    new $P1448, "Undef"
  vivify_768:
    $P1449 = $P1447."new"("concat" :named("pasttype"), $P1448 :named("node"))
    store_lex "$past", $P1449
.annotate 'line', 280
    new $P1450, "Integer"
    assign $P1450, 0
    store_lex "$lastlit", $P1450
.annotate 'line', 281
    find_lex $P1452, "$/"
    unless_null $P1452, vivify_769
    $P1452 = root_new ['parrot';'Hash']
  vivify_769:
    set $P1453, $P1452["noun"]
    unless_null $P1453, vivify_770
    new $P1453, "Undef"
  vivify_770:
    defined $I1454, $P1453
    unless $I1454, for_undef_771
    iter $P1451, $P1453
    new $P1509, 'ExceptionHandler'
    set_label $P1509, loop1508_handler
    $P1509."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1509
  loop1508_test:
    unless $P1451, loop1508_done
    shift $P1455, $P1451
  loop1508_redo:
    .const 'Sub' $P1457 = "201_1303739789.706" 
    capture_lex $P1457
    $P1457($P1455)
  loop1508_next:
    goto loop1508_test
  loop1508_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1510, exception, 'type'
    eq $P1510, .CONTROL_LOOP_NEXT, loop1508_next
    eq $P1510, .CONTROL_LOOP_REDO, loop1508_redo
  loop1508_done:
    pop_eh 
  for_undef_771:
.annotate 'line', 296
    find_lex $P1511, "$/"
    find_lex $P1512, "$past"
    unless_null $P1512, vivify_789
    new $P1512, "Undef"
  vivify_789:
    $P1513 = $P1511."!make"($P1512)
.annotate 'line', 278
    .return ($P1513)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1456"  :anon :subid("201_1303739789.706") :outer("200_1303739789.706")
    .param pmc param_1459
.annotate 'line', 282
    new $P1458, "Undef"
    .lex "$ast", $P1458
    .lex "$_", param_1459
    find_lex $P1460, "$_"
    unless_null $P1460, vivify_772
    new $P1460, "Undef"
  vivify_772:
    $P1461 = $P1460."ast"()
    store_lex "$ast", $P1461
.annotate 'line', 283
    find_lex $P1464, "$ast"
    unless_null $P1464, vivify_773
    new $P1464, "Undef"
  vivify_773:
    if $P1464, if_1463
    set $P1462, $P1464
    goto if_1463_end
  if_1463:
.annotate 'line', 284
    find_lex $P1471, "$lastlit"
    unless_null $P1471, vivify_774
    new $P1471, "Undef"
  vivify_774:
    if $P1471, if_1470
    set $P1469, $P1471
    goto if_1470_end
  if_1470:
    find_lex $P1472, "$ast"
    unless_null $P1472, vivify_775
    new $P1472, "Undef"
  vivify_775:
    $S1473 = $P1472."pasttype"()
    iseq $I1474, $S1473, "literal"
    new $P1469, 'Integer'
    set $P1469, $I1474
  if_1470_end:
    if $P1469, if_1468
    set $P1467, $P1469
    goto if_1468_end
  if_1468:
.annotate 'line', 285
    get_hll_global $P1475, "GLOBAL"
    nqp_get_package_through_who $P1476, $P1475, "PAST"
    get_who $P1477, $P1476
    set $P1478, $P1477["Node"]
    find_lex $P1479, "$ast"
    unless_null $P1479, vivify_776
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    set $P1480, $P1479[0]
    unless_null $P1480, vivify_777
    new $P1480, "Undef"
  vivify_777:
    $P1481 = $P1478."ACCEPTS"($P1480)
    isfalse $I1482, $P1481
    new $P1467, 'Integer'
    set $P1467, $I1482
  if_1468_end:
    if $P1467, if_1466
.annotate 'line', 289
    find_lex $P1489, "$past"
    unless_null $P1489, vivify_778
    new $P1489, "Undef"
  vivify_778:
    find_lex $P1490, "$ast"
    unless_null $P1490, vivify_779
    new $P1490, "Undef"
  vivify_779:
    $P1489."push"($P1490)
.annotate 'line', 290
    find_lex $P1495, "$ast"
    unless_null $P1495, vivify_780
    new $P1495, "Undef"
  vivify_780:
    $S1496 = $P1495."pasttype"()
    iseq $I1497, $S1496, "literal"
    if $I1497, if_1494
    new $P1493, 'Integer'
    set $P1493, $I1497
    goto if_1494_end
  if_1494:
.annotate 'line', 291
    get_hll_global $P1498, "GLOBAL"
    nqp_get_package_through_who $P1499, $P1498, "PAST"
    get_who $P1500, $P1499
    set $P1501, $P1500["Node"]
    find_lex $P1502, "$ast"
    unless_null $P1502, vivify_781
    $P1502 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1503, $P1502[0]
    unless_null $P1503, vivify_782
    new $P1503, "Undef"
  vivify_782:
    $P1504 = $P1501."ACCEPTS"($P1503)
    isfalse $I1505, $P1504
    new $P1493, 'Integer'
    set $P1493, $I1505
  if_1494_end:
    if $P1493, if_1492
    new $P1507, "Integer"
    assign $P1507, 0
    set $P1491, $P1507
    goto if_1492_end
  if_1492:
    find_lex $P1506, "$ast"
    unless_null $P1506, vivify_783
    new $P1506, "Undef"
  vivify_783:
    set $P1491, $P1506
  if_1492_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1491
.annotate 'line', 288
    set $P1465, $P1491
.annotate 'line', 285
    goto if_1466_end
  if_1466:
.annotate 'line', 286
    find_lex $P1483, "$lastlit"
    unless_null $P1483, vivify_784
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $P1484, $P1483[0]
    unless_null $P1484, vivify_785
    new $P1484, "Undef"
  vivify_785:
    find_lex $P1485, "$ast"
    unless_null $P1485, vivify_786
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1486, $P1485[0]
    unless_null $P1486, vivify_787
    new $P1486, "Undef"
  vivify_787:
    concat $P1487, $P1484, $P1486
    find_lex $P1488, "$lastlit"
    unless_null $P1488, vivify_788
    $P1488 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1488
  vivify_788:
    set $P1488[0], $P1487
.annotate 'line', 285
    set $P1465, $P1487
  if_1466_end:
.annotate 'line', 283
    set $P1462, $P1465
  if_1463_end:
.annotate 'line', 281
    .return ($P1462)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("202_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1515
    .param pmc param_1516
.annotate 'line', 299
    .const 'Sub' $P1525 = "203_1303739789.706" 
    capture_lex $P1525
    .lex "self", param_1515
    .lex "$/", param_1516
.annotate 'line', 300
    new $P1517, "Undef"
    .lex "$past", $P1517
    find_lex $P1518, "$/"
    unless_null $P1518, vivify_790
    $P1518 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1519, $P1518["atom"]
    unless_null $P1519, vivify_791
    new $P1519, "Undef"
  vivify_791:
    $P1520 = $P1519."ast"()
    store_lex "$past", $P1520
.annotate 'line', 301
    find_lex $P1522, "$/"
    unless_null $P1522, vivify_792
    $P1522 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1523, $P1522["quantifier"]
    unless_null $P1523, vivify_793
    new $P1523, "Undef"
  vivify_793:
    if $P1523, if_1521
.annotate 'line', 307
    find_lex $P1540, "$/"
    unless_null $P1540, vivify_794
    $P1540 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1541, $P1540["backmod"]
    unless_null $P1541, vivify_795
    $P1541 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    set $P1542, $P1541[0]
    unless_null $P1542, vivify_796
    new $P1542, "Undef"
  vivify_796:
    unless $P1542, if_1539_end
    find_lex $P1543, "$past"
    unless_null $P1543, vivify_797
    new $P1543, "Undef"
  vivify_797:
    find_lex $P1544, "$/"
    unless_null $P1544, vivify_798
    $P1544 = root_new ['parrot';'Hash']
  vivify_798:
    set $P1545, $P1544["backmod"]
    unless_null $P1545, vivify_799
    $P1545 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    set $P1546, $P1545[0]
    unless_null $P1546, vivify_800
    new $P1546, "Undef"
  vivify_800:
    "backmod"($P1543, $P1546)
  if_1539_end:
    goto if_1521_end
  if_1521:
.annotate 'line', 301
    .const 'Sub' $P1525 = "203_1303739789.706" 
    capture_lex $P1525
    $P1525()
  if_1521_end:
.annotate 'line', 308
    find_lex $P1552, "$past"
    unless_null $P1552, vivify_809
    new $P1552, "Undef"
  vivify_809:
    if $P1552, if_1551
    set $P1550, $P1552
    goto if_1551_end
  if_1551:
    find_lex $P1553, "$past"
    unless_null $P1553, vivify_810
    new $P1553, "Undef"
  vivify_810:
    $P1554 = $P1553."backtrack"()
    isfalse $I1555, $P1554
    new $P1550, 'Integer'
    set $P1550, $I1555
  if_1551_end:
    if $P1550, if_1549
    set $P1548, $P1550
    goto if_1549_end
  if_1549:
    find_lex $P1556, "$?PACKAGE"
    get_who $P1557, $P1556
    set $P1558, $P1557["@MODIFIERS"]
    unless_null $P1558, vivify_811
    $P1558 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P1559, $P1558[0]
    unless_null $P1559, vivify_812
    $P1559 = root_new ['parrot';'Hash']
  vivify_812:
    set $P1560, $P1559["r"]
    unless_null $P1560, vivify_813
    new $P1560, "Undef"
  vivify_813:
    set $P1548, $P1560
  if_1549_end:
    unless $P1548, if_1547_end
.annotate 'line', 309
    find_lex $P1561, "$past"
    unless_null $P1561, vivify_814
    new $P1561, "Undef"
  vivify_814:
    $P1561."backtrack"("r")
  if_1547_end:
.annotate 'line', 311
    find_lex $P1562, "$/"
    find_lex $P1563, "$past"
    unless_null $P1563, vivify_815
    new $P1563, "Undef"
  vivify_815:
    $P1564 = $P1562."!make"($P1563)
.annotate 'line', 299
    .return ($P1564)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1524"  :anon :subid("203_1303739789.706") :outer("202_1303739789.706")
.annotate 'line', 303
    new $P1526, "Undef"
    .lex "$qast", $P1526
.annotate 'line', 302
    find_lex $P1528, "$past"
    unless_null $P1528, vivify_801
    new $P1528, "Undef"
  vivify_801:
    isfalse $I1529, $P1528
    unless $I1529, if_1527_end
    find_lex $P1530, "$/"
    unless_null $P1530, vivify_802
    new $P1530, "Undef"
  vivify_802:
    $P1531 = $P1530."CURSOR"()
    $P1531."panic"("Quantifier follows nothing")
  if_1527_end:
.annotate 'line', 303
    find_lex $P1532, "$/"
    unless_null $P1532, vivify_803
    $P1532 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1533, $P1532["quantifier"]
    unless_null $P1533, vivify_804
    $P1533 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P1534, $P1533[0]
    unless_null $P1534, vivify_805
    new $P1534, "Undef"
  vivify_805:
    $P1535 = $P1534."ast"()
    store_lex "$qast", $P1535
.annotate 'line', 304
    find_lex $P1536, "$qast"
    unless_null $P1536, vivify_806
    new $P1536, "Undef"
  vivify_806:
    find_lex $P1537, "$past"
    unless_null $P1537, vivify_807
    new $P1537, "Undef"
  vivify_807:
    $P1536."unshift"($P1537)
.annotate 'line', 305
    find_lex $P1538, "$qast"
    unless_null $P1538, vivify_808
    new $P1538, "Undef"
  vivify_808:
    store_lex "$past", $P1538
.annotate 'line', 301
    .return ($P1538)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("204_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1566
    .param pmc param_1567
.annotate 'line', 314
    .lex "self", param_1566
    .lex "$/", param_1567
.annotate 'line', 315
    new $P1568, "Undef"
    .lex "$past", $P1568
.annotate 'line', 314
    find_lex $P1569, "$past"
    unless_null $P1569, vivify_816
    new $P1569, "Undef"
  vivify_816:
.annotate 'line', 316
    find_lex $P1571, "$/"
    unless_null $P1571, vivify_817
    $P1571 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1572, $P1571["metachar"]
    unless_null $P1572, vivify_818
    new $P1572, "Undef"
  vivify_818:
    if $P1572, if_1570
.annotate 'line', 318
    get_hll_global $P1576, "GLOBAL"
    nqp_get_package_through_who $P1577, $P1576, "PAST"
    get_who $P1578, $P1577
    set $P1579, $P1578["Regex"]
    find_lex $P1580, "$/"
    unless_null $P1580, vivify_819
    new $P1580, "Undef"
  vivify_819:
    set $S1581, $P1580
    find_lex $P1582, "$/"
    unless_null $P1582, vivify_820
    new $P1582, "Undef"
  vivify_820:
    $P1583 = $P1579."new"($S1581, "literal" :named("pasttype"), $P1582 :named("node"))
    store_lex "$past", $P1583
.annotate 'line', 319
    find_lex $P1585, "$?PACKAGE"
    get_who $P1586, $P1585
    set $P1587, $P1586["@MODIFIERS"]
    unless_null $P1587, vivify_821
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P1588, $P1587[0]
    unless_null $P1588, vivify_822
    $P1588 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1589, $P1588["i"]
    unless_null $P1589, vivify_823
    new $P1589, "Undef"
  vivify_823:
    unless $P1589, if_1584_end
    find_lex $P1590, "$past"
    unless_null $P1590, vivify_824
    new $P1590, "Undef"
  vivify_824:
    $P1590."subtype"("ignorecase")
  if_1584_end:
.annotate 'line', 317
    goto if_1570_end
  if_1570:
.annotate 'line', 316
    find_lex $P1573, "$/"
    unless_null $P1573, vivify_825
    $P1573 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1574, $P1573["metachar"]
    unless_null $P1574, vivify_826
    new $P1574, "Undef"
  vivify_826:
    $P1575 = $P1574."ast"()
    store_lex "$past", $P1575
  if_1570_end:
.annotate 'line', 321
    find_lex $P1591, "$/"
    find_lex $P1592, "$past"
    unless_null $P1592, vivify_827
    new $P1592, "Undef"
  vivify_827:
    $P1593 = $P1591."!make"($P1592)
.annotate 'line', 314
    .return ($P1593)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("205_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1595
    .param pmc param_1596
.annotate 'line', 324
    .lex "self", param_1595
    .lex "$/", param_1596
.annotate 'line', 325
    new $P1597, "Undef"
    .lex "$past", $P1597
    get_hll_global $P1598, "GLOBAL"
    nqp_get_package_through_who $P1599, $P1598, "PAST"
    get_who $P1600, $P1599
    set $P1601, $P1600["Regex"]
    find_lex $P1602, "$/"
    unless_null $P1602, vivify_828
    new $P1602, "Undef"
  vivify_828:
    $P1603 = $P1601."new"("quant" :named("pasttype"), $P1602 :named("node"))
    store_lex "$past", $P1603
.annotate 'line', 326
    find_lex $P1604, "$/"
    find_lex $P1605, "$past"
    unless_null $P1605, vivify_829
    new $P1605, "Undef"
  vivify_829:
    find_lex $P1606, "$/"
    unless_null $P1606, vivify_830
    $P1606 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1607, $P1606["backmod"]
    unless_null $P1607, vivify_831
    new $P1607, "Undef"
  vivify_831:
    $P1608 = "backmod"($P1605, $P1607)
    $P1609 = $P1604."!make"($P1608)
.annotate 'line', 324
    .return ($P1609)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("206_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1611
    .param pmc param_1612
.annotate 'line', 329
    .lex "self", param_1611
    .lex "$/", param_1612
.annotate 'line', 330
    new $P1613, "Undef"
    .lex "$past", $P1613
    get_hll_global $P1614, "GLOBAL"
    nqp_get_package_through_who $P1615, $P1614, "PAST"
    get_who $P1616, $P1615
    set $P1617, $P1616["Regex"]
    find_lex $P1618, "$/"
    unless_null $P1618, vivify_832
    new $P1618, "Undef"
  vivify_832:
    $P1619 = $P1617."new"("quant" :named("pasttype"), 1 :named("min"), $P1618 :named("node"))
    store_lex "$past", $P1619
.annotate 'line', 331
    find_lex $P1620, "$/"
    find_lex $P1621, "$past"
    unless_null $P1621, vivify_833
    new $P1621, "Undef"
  vivify_833:
    find_lex $P1622, "$/"
    unless_null $P1622, vivify_834
    $P1622 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1623, $P1622["backmod"]
    unless_null $P1623, vivify_835
    new $P1623, "Undef"
  vivify_835:
    $P1624 = "backmod"($P1621, $P1623)
    $P1625 = $P1620."!make"($P1624)
.annotate 'line', 329
    .return ($P1625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("207_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1627
    .param pmc param_1628
.annotate 'line', 334
    .lex "self", param_1627
    .lex "$/", param_1628
.annotate 'line', 335
    new $P1629, "Undef"
    .lex "$past", $P1629
    get_hll_global $P1630, "GLOBAL"
    nqp_get_package_through_who $P1631, $P1630, "PAST"
    get_who $P1632, $P1631
    set $P1633, $P1632["Regex"]
    find_lex $P1634, "$/"
    unless_null $P1634, vivify_836
    new $P1634, "Undef"
  vivify_836:
    $P1635 = $P1633."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1634 :named("node"))
    store_lex "$past", $P1635
.annotate 'line', 336
    find_lex $P1636, "$/"
    find_lex $P1637, "$past"
    unless_null $P1637, vivify_837
    new $P1637, "Undef"
  vivify_837:
    find_lex $P1638, "$/"
    unless_null $P1638, vivify_838
    $P1638 = root_new ['parrot';'Hash']
  vivify_838:
    set $P1639, $P1638["backmod"]
    unless_null $P1639, vivify_839
    new $P1639, "Undef"
  vivify_839:
    $P1640 = "backmod"($P1637, $P1639)
    $P1636."!make"($P1640)
.annotate 'line', 337
    find_lex $P1641, "$/"
    find_lex $P1642, "$past"
    unless_null $P1642, vivify_840
    new $P1642, "Undef"
  vivify_840:
    $P1643 = $P1641."!make"($P1642)
.annotate 'line', 334
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("208_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 340
    .const 'Sub' $P1663 = "209_1303739789.706" 
    capture_lex $P1663
    .lex "self", param_1645
    .lex "$/", param_1646
.annotate 'line', 341
    new $P1647, "Undef"
    .lex "$past", $P1647
.annotate 'line', 342
    new $P1648, "Undef"
    .lex "$ws", $P1648
.annotate 'line', 340
    find_lex $P1649, "$past"
    unless_null $P1649, vivify_841
    new $P1649, "Undef"
  vivify_841:
.annotate 'line', 342
    find_lex $P1652, "$/"
    unless_null $P1652, vivify_842
    $P1652 = root_new ['parrot';'Hash']
  vivify_842:
    set $P1653, $P1652["normspace"]
    unless_null $P1653, vivify_843
    new $P1653, "Undef"
  vivify_843:
    if $P1653, if_1651
    set $P1650, $P1653
    goto if_1651_end
  if_1651:
    find_lex $P1654, "$?PACKAGE"
    get_who $P1655, $P1654
    set $P1656, $P1655["@MODIFIERS"]
    unless_null $P1656, vivify_844
    $P1656 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P1657, $P1656[0]
    unless_null $P1657, vivify_845
    $P1657 = root_new ['parrot';'Hash']
  vivify_845:
    set $P1658, $P1657["s"]
    unless_null $P1658, vivify_846
    new $P1658, "Undef"
  vivify_846:
    set $P1650, $P1658
  if_1651_end:
    store_lex "$ws", $P1650
.annotate 'line', 343
    find_lex $P1660, "$/"
    unless_null $P1660, vivify_847
    $P1660 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1661, $P1660["quantified_atom"]
    unless_null $P1661, vivify_848
    new $P1661, "Undef"
  vivify_848:
    if $P1661, if_1659
.annotate 'line', 359
    get_hll_global $P1693, "GLOBAL"
    nqp_get_package_through_who $P1694, $P1693, "PAST"
    get_who $P1695, $P1694
    set $P1696, $P1695["Regex"]
    find_lex $P1697, "$/"
    unless_null $P1697, vivify_849
    $P1697 = root_new ['parrot';'Hash']
  vivify_849:
    set $P1698, $P1697["min"]
    unless_null $P1698, vivify_850
    new $P1698, "Undef"
  vivify_850:
    set $N1699, $P1698
    find_lex $P1700, "$/"
    unless_null $P1700, vivify_851
    new $P1700, "Undef"
  vivify_851:
    $P1701 = $P1696."new"("quant" :named("pasttype"), $N1699 :named("min"), $P1700 :named("node"))
    store_lex "$past", $P1701
.annotate 'line', 360
    find_lex $P1703, "$/"
    unless_null $P1703, vivify_852
    $P1703 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1704, $P1703["max"]
    unless_null $P1704, vivify_853
    new $P1704, "Undef"
  vivify_853:
    isfalse $I1705, $P1704
    if $I1705, if_1702
.annotate 'line', 361
    find_lex $P1711, "$/"
    unless_null $P1711, vivify_854
    $P1711 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1712, $P1711["max"]
    unless_null $P1712, vivify_855
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1713, $P1712[0]
    unless_null $P1713, vivify_856
    new $P1713, "Undef"
  vivify_856:
    set $S1714, $P1713
    isne $I1715, $S1714, "*"
    unless $I1715, if_1710_end
    find_lex $P1716, "$past"
    unless_null $P1716, vivify_857
    new $P1716, "Undef"
  vivify_857:
    find_lex $P1717, "$/"
    unless_null $P1717, vivify_858
    $P1717 = root_new ['parrot';'Hash']
  vivify_858:
    set $P1718, $P1717["max"]
    unless_null $P1718, vivify_859
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P1719, $P1718[0]
    unless_null $P1719, vivify_860
    new $P1719, "Undef"
  vivify_860:
    set $N1720, $P1719
    $P1716."max"($N1720)
  if_1710_end:
    goto if_1702_end
  if_1702:
.annotate 'line', 360
    find_lex $P1706, "$past"
    unless_null $P1706, vivify_861
    new $P1706, "Undef"
  vivify_861:
    find_lex $P1707, "$/"
    unless_null $P1707, vivify_862
    $P1707 = root_new ['parrot';'Hash']
  vivify_862:
    set $P1708, $P1707["min"]
    unless_null $P1708, vivify_863
    new $P1708, "Undef"
  vivify_863:
    set $N1709, $P1708
    $P1706."max"($N1709)
  if_1702_end:
.annotate 'line', 362
    find_lex $P1722, "$ws"
    unless_null $P1722, vivify_864
    new $P1722, "Undef"
  vivify_864:
    unless $P1722, if_1721_end
    find_lex $P1723, "$past"
    unless_null $P1723, vivify_865
    new $P1723, "Undef"
  vivify_865:
    get_hll_global $P1724, "GLOBAL"
    nqp_get_package_through_who $P1725, $P1724, "PAST"
    get_who $P1726, $P1725
    set $P1727, $P1726["Regex"]
    $P1728 = $P1727."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1723."sep"($P1728)
  if_1721_end:
.annotate 'line', 358
    goto if_1659_end
  if_1659:
.annotate 'line', 343
    .const 'Sub' $P1663 = "209_1303739789.706" 
    capture_lex $P1663
    $P1663()
  if_1659_end:
.annotate 'line', 366
    find_lex $P1729, "$/"
    find_lex $P1730, "$past"
    unless_null $P1730, vivify_872
    new $P1730, "Undef"
  vivify_872:
    find_lex $P1731, "$/"
    unless_null $P1731, vivify_873
    $P1731 = root_new ['parrot';'Hash']
  vivify_873:
    set $P1732, $P1731["backmod"]
    unless_null $P1732, vivify_874
    new $P1732, "Undef"
  vivify_874:
    $P1733 = "backmod"($P1730, $P1732)
    $P1734 = $P1729."!make"($P1733)
.annotate 'line', 340
    .return ($P1734)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1662"  :anon :subid("209_1303739789.706") :outer("208_1303739789.706")
.annotate 'line', 344
    new $P1664, "Undef"
    .lex "$ast", $P1664
    find_lex $P1665, "$/"
    unless_null $P1665, vivify_866
    $P1665 = root_new ['parrot';'Hash']
  vivify_866:
    set $P1666, $P1665["quantified_atom"]
    unless_null $P1666, vivify_867
    new $P1666, "Undef"
  vivify_867:
    $P1667 = $P1666."ast"()
    store_lex "$ast", $P1667
.annotate 'line', 345
    find_lex $P1669, "$ws"
    unless_null $P1669, vivify_868
    new $P1669, "Undef"
  vivify_868:
    unless $P1669, if_1668_end
.annotate 'line', 346
    get_hll_global $P1670, "GLOBAL"
    nqp_get_package_through_who $P1671, $P1670, "PAST"
    get_who $P1672, $P1671
    set $P1673, $P1672["Regex"]
.annotate 'line', 348
    get_hll_global $P1674, "GLOBAL"
    nqp_get_package_through_who $P1675, $P1674, "PAST"
    get_who $P1676, $P1675
    set $P1677, $P1676["Regex"]
    $P1678 = $P1677."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1679, "$ast"
    unless_null $P1679, vivify_869
    new $P1679, "Undef"
  vivify_869:
.annotate 'line', 351
    get_hll_global $P1680, "GLOBAL"
    nqp_get_package_through_who $P1681, $P1680, "PAST"
    get_who $P1682, $P1681
    set $P1683, $P1682["Regex"]
    $P1684 = $P1683."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1685 = $P1673."new"($P1678, $P1679, $P1684, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1685
  if_1668_end:
.annotate 'line', 355
    get_hll_global $P1686, "GLOBAL"
    nqp_get_package_through_who $P1687, $P1686, "PAST"
    get_who $P1688, $P1687
    set $P1689, $P1688["Regex"]
    find_lex $P1690, "$ast"
    unless_null $P1690, vivify_870
    new $P1690, "Undef"
  vivify_870:
    find_lex $P1691, "$/"
    unless_null $P1691, vivify_871
    new $P1691, "Undef"
  vivify_871:
    $P1692 = $P1689."new"("quant" :named("pasttype"), 1 :named("min"), $P1690 :named("sep"), $P1691 :named("node"))
    store_lex "$past", $P1692
.annotate 'line', 343
    .return ($P1692)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("210_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1736
    .param pmc param_1737
.annotate 'line', 369
    .lex "self", param_1736
    .lex "$/", param_1737
.annotate 'line', 370
    new $P1738, "Undef"
    .lex "$past", $P1738
.annotate 'line', 371
    find_lex $P1741, "$?PACKAGE"
    get_who $P1742, $P1741
    set $P1743, $P1742["@MODIFIERS"]
    unless_null $P1743, vivify_875
    $P1743 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $P1744, $P1743[0]
    unless_null $P1744, vivify_876
    $P1744 = root_new ['parrot';'Hash']
  vivify_876:
    set $P1745, $P1744["s"]
    unless_null $P1745, vivify_877
    new $P1745, "Undef"
  vivify_877:
    if $P1745, if_1740
    new $P1752, "Integer"
    assign $P1752, 0
    set $P1739, $P1752
    goto if_1740_end
  if_1740:
    get_hll_global $P1746, "GLOBAL"
    nqp_get_package_through_who $P1747, $P1746, "PAST"
    get_who $P1748, $P1747
    set $P1749, $P1748["Regex"]
    find_lex $P1750, "$/"
    unless_null $P1750, vivify_878
    new $P1750, "Undef"
  vivify_878:
    $P1751 = $P1749."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1750 :named("node"))
    set $P1739, $P1751
  if_1740_end:
    store_lex "$past", $P1739
.annotate 'line', 374
    find_lex $P1753, "$/"
    find_lex $P1754, "$past"
    unless_null $P1754, vivify_879
    new $P1754, "Undef"
  vivify_879:
    $P1755 = $P1753."!make"($P1754)
.annotate 'line', 369
    .return ($P1755)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("211_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1757
    .param pmc param_1758
.annotate 'line', 378
    .lex "self", param_1757
    .lex "$/", param_1758
.annotate 'line', 379
    find_lex $P1759, "$/"
    find_lex $P1760, "$/"
    unless_null $P1760, vivify_880
    $P1760 = root_new ['parrot';'Hash']
  vivify_880:
    set $P1761, $P1760["nibbler"]
    unless_null $P1761, vivify_881
    new $P1761, "Undef"
  vivify_881:
    $P1762 = $P1761."ast"()
    $P1763 = $P1759."!make"($P1762)
.annotate 'line', 378
    .return ($P1763)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("212_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1765
    .param pmc param_1766
.annotate 'line', 382
    .lex "self", param_1765
    .lex "$/", param_1766
.annotate 'line', 383
    new $P1767, "Undef"
    .lex "$subpast", $P1767
.annotate 'line', 384
    new $P1768, "Undef"
    .lex "$past", $P1768
.annotate 'line', 383
    find_lex $P1769, "$/"
    unless_null $P1769, vivify_882
    $P1769 = root_new ['parrot';'Hash']
  vivify_882:
    set $P1770, $P1769["nibbler"]
    unless_null $P1770, vivify_883
    new $P1770, "Undef"
  vivify_883:
    $P1771 = $P1770."ast"()
    $P1772 = "buildsub"($P1771)
    store_lex "$subpast", $P1772
.annotate 'line', 384
    get_hll_global $P1773, "GLOBAL"
    nqp_get_package_through_who $P1774, $P1773, "PAST"
    get_who $P1775, $P1774
    set $P1776, $P1775["Regex"]
    find_lex $P1777, "$subpast"
    unless_null $P1777, vivify_884
    new $P1777, "Undef"
  vivify_884:
    find_lex $P1778, "$/"
    unless_null $P1778, vivify_885
    new $P1778, "Undef"
  vivify_885:
    $P1779 = $P1776."new"($P1777, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1778 :named("node"))
    store_lex "$past", $P1779
.annotate 'line', 386
    find_lex $P1780, "$/"
    find_lex $P1781, "$past"
    unless_null $P1781, vivify_886
    new $P1781, "Undef"
  vivify_886:
    $P1782 = $P1780."!make"($P1781)
.annotate 'line', 382
    .return ($P1782)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("213_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1784
    .param pmc param_1785
.annotate 'line', 389
    .lex "self", param_1784
    .lex "$/", param_1785
.annotate 'line', 390
    new $P1786, "Undef"
    .lex "$quote", $P1786
.annotate 'line', 392
    new $P1787, "Undef"
    .lex "$past", $P1787
.annotate 'line', 390
    find_lex $P1788, "$/"
    unless_null $P1788, vivify_887
    $P1788 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1789, $P1788["quote_EXPR"]
    unless_null $P1789, vivify_888
    new $P1789, "Undef"
  vivify_888:
    $P1790 = $P1789."ast"()
    store_lex "$quote", $P1790
.annotate 'line', 391
    get_hll_global $P1792, "GLOBAL"
    nqp_get_package_through_who $P1793, $P1792, "PAST"
    get_who $P1794, $P1793
    set $P1795, $P1794["Val"]
    find_lex $P1796, "$quote"
    unless_null $P1796, vivify_889
    new $P1796, "Undef"
  vivify_889:
    $P1797 = $P1795."ACCEPTS"($P1796)
    unless $P1797, if_1791_end
    find_lex $P1798, "$quote"
    unless_null $P1798, vivify_890
    new $P1798, "Undef"
  vivify_890:
    $P1799 = $P1798."value"()
    store_lex "$quote", $P1799
  if_1791_end:
.annotate 'line', 392
    get_hll_global $P1800, "GLOBAL"
    nqp_get_package_through_who $P1801, $P1800, "PAST"
    get_who $P1802, $P1801
    set $P1803, $P1802["Regex"]
    find_lex $P1804, "$quote"
    unless_null $P1804, vivify_891
    new $P1804, "Undef"
  vivify_891:
    find_lex $P1805, "$/"
    unless_null $P1805, vivify_892
    new $P1805, "Undef"
  vivify_892:
    $P1806 = $P1803."new"($P1804, "literal" :named("pasttype"), $P1805 :named("node"))
    store_lex "$past", $P1806
.annotate 'line', 393
    find_lex $P1808, "$?PACKAGE"
    get_who $P1809, $P1808
    set $P1810, $P1809["@MODIFIERS"]
    unless_null $P1810, vivify_893
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    set $P1811, $P1810[0]
    unless_null $P1811, vivify_894
    $P1811 = root_new ['parrot';'Hash']
  vivify_894:
    set $P1812, $P1811["i"]
    unless_null $P1812, vivify_895
    new $P1812, "Undef"
  vivify_895:
    unless $P1812, if_1807_end
    find_lex $P1813, "$past"
    unless_null $P1813, vivify_896
    new $P1813, "Undef"
  vivify_896:
    $P1813."subtype"("ignorecase")
  if_1807_end:
.annotate 'line', 394
    find_lex $P1814, "$/"
    find_lex $P1815, "$past"
    unless_null $P1815, vivify_897
    new $P1815, "Undef"
  vivify_897:
    $P1816 = $P1814."!make"($P1815)
.annotate 'line', 389
    .return ($P1816)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("214_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1818
    .param pmc param_1819
.annotate 'line', 397
    .lex "self", param_1818
    .lex "$/", param_1819
.annotate 'line', 398
    new $P1820, "Undef"
    .lex "$quote", $P1820
.annotate 'line', 400
    new $P1821, "Undef"
    .lex "$past", $P1821
.annotate 'line', 398
    find_lex $P1822, "$/"
    unless_null $P1822, vivify_898
    $P1822 = root_new ['parrot';'Hash']
  vivify_898:
    set $P1823, $P1822["quote_EXPR"]
    unless_null $P1823, vivify_899
    new $P1823, "Undef"
  vivify_899:
    $P1824 = $P1823."ast"()
    store_lex "$quote", $P1824
.annotate 'line', 399
    get_hll_global $P1826, "GLOBAL"
    nqp_get_package_through_who $P1827, $P1826, "PAST"
    get_who $P1828, $P1827
    set $P1829, $P1828["Val"]
    find_lex $P1830, "$quote"
    unless_null $P1830, vivify_900
    new $P1830, "Undef"
  vivify_900:
    $P1831 = $P1829."ACCEPTS"($P1830)
    unless $P1831, if_1825_end
    find_lex $P1832, "$quote"
    unless_null $P1832, vivify_901
    new $P1832, "Undef"
  vivify_901:
    $P1833 = $P1832."value"()
    store_lex "$quote", $P1833
  if_1825_end:
.annotate 'line', 400
    get_hll_global $P1834, "GLOBAL"
    nqp_get_package_through_who $P1835, $P1834, "PAST"
    get_who $P1836, $P1835
    set $P1837, $P1836["Regex"]
    find_lex $P1838, "$quote"
    unless_null $P1838, vivify_902
    new $P1838, "Undef"
  vivify_902:
    find_lex $P1839, "$/"
    unless_null $P1839, vivify_903
    new $P1839, "Undef"
  vivify_903:
    $P1840 = $P1837."new"($P1838, "literal" :named("pasttype"), $P1839 :named("node"))
    store_lex "$past", $P1840
.annotate 'line', 401
    find_lex $P1842, "$?PACKAGE"
    get_who $P1843, $P1842
    set $P1844, $P1843["@MODIFIERS"]
    unless_null $P1844, vivify_904
    $P1844 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    set $P1845, $P1844[0]
    unless_null $P1845, vivify_905
    $P1845 = root_new ['parrot';'Hash']
  vivify_905:
    set $P1846, $P1845["i"]
    unless_null $P1846, vivify_906
    new $P1846, "Undef"
  vivify_906:
    unless $P1846, if_1841_end
    find_lex $P1847, "$past"
    unless_null $P1847, vivify_907
    new $P1847, "Undef"
  vivify_907:
    $P1847."subtype"("ignorecase")
  if_1841_end:
.annotate 'line', 402
    find_lex $P1848, "$/"
    find_lex $P1849, "$past"
    unless_null $P1849, vivify_908
    new $P1849, "Undef"
  vivify_908:
    $P1850 = $P1848."!make"($P1849)
.annotate 'line', 397
    .return ($P1850)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("215_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1852
    .param pmc param_1853
.annotate 'line', 405
    .lex "self", param_1852
    .lex "$/", param_1853
.annotate 'line', 406
    new $P1854, "Undef"
    .lex "$past", $P1854
    get_hll_global $P1855, "GLOBAL"
    nqp_get_package_through_who $P1856, $P1855, "PAST"
    get_who $P1857, $P1856
    set $P1858, $P1857["Regex"]
    find_lex $P1859, "$/"
    unless_null $P1859, vivify_909
    new $P1859, "Undef"
  vivify_909:
    $P1860 = $P1858."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1859 :named("node"))
    store_lex "$past", $P1860
.annotate 'line', 407
    find_lex $P1861, "$/"
    find_lex $P1862, "$past"
    unless_null $P1862, vivify_910
    new $P1862, "Undef"
  vivify_910:
    $P1863 = $P1861."!make"($P1862)
.annotate 'line', 405
    .return ($P1863)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("216_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1865
    .param pmc param_1866
.annotate 'line', 410
    .lex "self", param_1865
    .lex "$/", param_1866
.annotate 'line', 411
    new $P1867, "Undef"
    .lex "$past", $P1867
    get_hll_global $P1868, "GLOBAL"
    nqp_get_package_through_who $P1869, $P1868, "PAST"
    get_who $P1870, $P1869
    set $P1871, $P1870["Regex"]
    find_lex $P1872, "$/"
    unless_null $P1872, vivify_911
    new $P1872, "Undef"
  vivify_911:
    $P1873 = $P1871."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1872 :named("node"))
    store_lex "$past", $P1873
.annotate 'line', 412
    find_lex $P1874, "$/"
    find_lex $P1875, "$past"
    unless_null $P1875, vivify_912
    new $P1875, "Undef"
  vivify_912:
    $P1876 = $P1874."!make"($P1875)
.annotate 'line', 410
    .return ($P1876)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("217_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1878
    .param pmc param_1879
.annotate 'line', 415
    .lex "self", param_1878
    .lex "$/", param_1879
.annotate 'line', 416
    new $P1880, "Undef"
    .lex "$past", $P1880
    get_hll_global $P1881, "GLOBAL"
    nqp_get_package_through_who $P1882, $P1881, "PAST"
    get_who $P1883, $P1882
    set $P1884, $P1883["Regex"]
    find_lex $P1885, "$/"
    unless_null $P1885, vivify_913
    new $P1885, "Undef"
  vivify_913:
    $P1886 = $P1884."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1885 :named("node"))
    store_lex "$past", $P1886
.annotate 'line', 417
    find_lex $P1887, "$/"
    find_lex $P1888, "$past"
    unless_null $P1888, vivify_914
    new $P1888, "Undef"
  vivify_914:
    $P1889 = $P1887."!make"($P1888)
.annotate 'line', 415
    .return ($P1889)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("218_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1891
    .param pmc param_1892
.annotate 'line', 420
    .lex "self", param_1891
    .lex "$/", param_1892
.annotate 'line', 421
    new $P1893, "Undef"
    .lex "$past", $P1893
    get_hll_global $P1894, "GLOBAL"
    nqp_get_package_through_who $P1895, $P1894, "PAST"
    get_who $P1896, $P1895
    set $P1897, $P1896["Regex"]
    find_lex $P1898, "$/"
    unless_null $P1898, vivify_915
    new $P1898, "Undef"
  vivify_915:
    $P1899 = $P1897."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1898 :named("node"))
    store_lex "$past", $P1899
.annotate 'line', 422
    find_lex $P1900, "$/"
    find_lex $P1901, "$past"
    unless_null $P1901, vivify_916
    new $P1901, "Undef"
  vivify_916:
    $P1902 = $P1900."!make"($P1901)
.annotate 'line', 420
    .return ($P1902)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("219_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1904
    .param pmc param_1905
.annotate 'line', 425
    .lex "self", param_1904
    .lex "$/", param_1905
.annotate 'line', 426
    new $P1906, "Undef"
    .lex "$past", $P1906
    get_hll_global $P1907, "GLOBAL"
    nqp_get_package_through_who $P1908, $P1907, "PAST"
    get_who $P1909, $P1908
    set $P1910, $P1909["Regex"]
    find_lex $P1911, "$/"
    unless_null $P1911, vivify_917
    new $P1911, "Undef"
  vivify_917:
    $P1912 = $P1910."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1911 :named("node"))
    store_lex "$past", $P1912
.annotate 'line', 427
    find_lex $P1913, "$/"
    find_lex $P1914, "$past"
    unless_null $P1914, vivify_918
    new $P1914, "Undef"
  vivify_918:
    $P1915 = $P1913."!make"($P1914)
.annotate 'line', 425
    .return ($P1915)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("220_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1917
    .param pmc param_1918
.annotate 'line', 430
    .lex "self", param_1917
    .lex "$/", param_1918
.annotate 'line', 431
    new $P1919, "Undef"
    .lex "$past", $P1919
    get_hll_global $P1920, "GLOBAL"
    nqp_get_package_through_who $P1921, $P1920, "PAST"
    get_who $P1922, $P1921
    set $P1923, $P1922["Regex"]
    find_lex $P1924, "$/"
    unless_null $P1924, vivify_919
    new $P1924, "Undef"
  vivify_919:
    $P1925 = $P1923."new"("cut" :named("pasttype"), $P1924 :named("node"))
    store_lex "$past", $P1925
.annotate 'line', 432
    find_lex $P1926, "$/"
    find_lex $P1927, "$past"
    unless_null $P1927, vivify_920
    new $P1927, "Undef"
  vivify_920:
    $P1928 = $P1926."!make"($P1927)
.annotate 'line', 430
    .return ($P1928)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("221_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1930
    .param pmc param_1931
.annotate 'line', 435
    .lex "self", param_1930
    .lex "$/", param_1931
.annotate 'line', 436
    new $P1932, "Undef"
    .lex "$past", $P1932
    get_hll_global $P1933, "GLOBAL"
    nqp_get_package_through_who $P1934, $P1933, "PAST"
    get_who $P1935, $P1934
    set $P1936, $P1935["Regex"]
    find_lex $P1937, "$/"
    unless_null $P1937, vivify_921
    new $P1937, "Undef"
  vivify_921:
    $P1938 = $P1936."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1937 :named("node"))
    store_lex "$past", $P1938
.annotate 'line', 437
    find_lex $P1939, "$/"
    find_lex $P1940, "$past"
    unless_null $P1940, vivify_922
    new $P1940, "Undef"
  vivify_922:
    $P1941 = $P1939."!make"($P1940)
.annotate 'line', 435
    .return ($P1941)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("222_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1943
    .param pmc param_1944
.annotate 'line', 440
    .lex "self", param_1943
    .lex "$/", param_1944
.annotate 'line', 441
    new $P1945, "Undef"
    .lex "$past", $P1945
    get_hll_global $P1946, "GLOBAL"
    nqp_get_package_through_who $P1947, $P1946, "PAST"
    get_who $P1948, $P1947
    set $P1949, $P1948["Regex"]
    find_lex $P1950, "$/"
    unless_null $P1950, vivify_923
    new $P1950, "Undef"
  vivify_923:
    $P1951 = $P1949."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1950 :named("node"))
    store_lex "$past", $P1951
.annotate 'line', 442
    find_lex $P1952, "$/"
    find_lex $P1953, "$past"
    unless_null $P1953, vivify_924
    new $P1953, "Undef"
  vivify_924:
    $P1954 = $P1952."!make"($P1953)
.annotate 'line', 440
    .return ($P1954)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("223_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1956
    .param pmc param_1957
.annotate 'line', 445
    .lex "self", param_1956
    .lex "$/", param_1957
.annotate 'line', 446
    find_lex $P1958, "$/"
    find_lex $P1959, "$/"
    unless_null $P1959, vivify_925
    $P1959 = root_new ['parrot';'Hash']
  vivify_925:
    set $P1960, $P1959["backslash"]
    unless_null $P1960, vivify_926
    new $P1960, "Undef"
  vivify_926:
    $P1961 = $P1960."ast"()
    $P1962 = $P1958."!make"($P1961)
.annotate 'line', 445
    .return ($P1962)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("224_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1964
    .param pmc param_1965
.annotate 'line', 449
    .lex "self", param_1964
    .lex "$/", param_1965
.annotate 'line', 450
    find_lex $P1966, "$/"
    find_lex $P1967, "$/"
    unless_null $P1967, vivify_927
    $P1967 = root_new ['parrot';'Hash']
  vivify_927:
    set $P1968, $P1967["mod_internal"]
    unless_null $P1968, vivify_928
    new $P1968, "Undef"
  vivify_928:
    $P1969 = $P1968."ast"()
    $P1970 = $P1966."!make"($P1969)
.annotate 'line', 449
    .return ($P1970)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("225_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1972
    .param pmc param_1973
.annotate 'line', 453
    .lex "self", param_1972
    .lex "$/", param_1973
.annotate 'line', 454
    find_lex $P1974, "$/"
    find_lex $P1975, "$/"
    unless_null $P1975, vivify_929
    $P1975 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1976, $P1975["assertion"]
    unless_null $P1976, vivify_930
    new $P1976, "Undef"
  vivify_930:
    $P1977 = $P1976."ast"()
    $P1978 = $P1974."!make"($P1977)
.annotate 'line', 453
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("226_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_1980
    .param pmc param_1981
.annotate 'line', 457
    .lex "self", param_1980
    .lex "$/", param_1981
.annotate 'line', 458
    find_lex $P1982, "$/"
    get_hll_global $P1983, "GLOBAL"
    nqp_get_package_through_who $P1984, $P1983, "PAST"
    get_who $P1985, $P1984
    set $P1986, $P1985["Regex"]
.annotate 'line', 459
    find_lex $P1987, "$/"
    unless_null $P1987, vivify_931
    $P1987 = root_new ['parrot';'Hash']
  vivify_931:
    set $P1988, $P1987["EXPR"]
    unless_null $P1988, vivify_932
    new $P1988, "Undef"
  vivify_932:
    $P1989 = $P1988."ast"()
.annotate 'line', 460
    get_hll_global $P1990, "GLOBAL"
    nqp_get_package_through_who $P1991, $P1990, "PAST"
    get_who $P1992, $P1991
    set $P1993, $P1992["Regex"]
.annotate 'line', 461
    find_lex $P1994, "$/"
    unless_null $P1994, vivify_933
    $P1994 = root_new ['parrot';'Hash']
  vivify_933:
    set $P1995, $P1994["GOAL"]
    unless_null $P1995, vivify_934
    new $P1995, "Undef"
  vivify_934:
    $P1996 = $P1995."ast"()
.annotate 'line', 462
    get_hll_global $P1997, "GLOBAL"
    nqp_get_package_through_who $P1998, $P1997, "PAST"
    get_who $P1999, $P1998
    set $P2000, $P1999["Regex"]
    find_lex $P2001, "$/"
    unless_null $P2001, vivify_935
    $P2001 = root_new ['parrot';'Hash']
  vivify_935:
    set $P2002, $P2001["GOAL"]
    unless_null $P2002, vivify_936
    new $P2002, "Undef"
  vivify_936:
    set $S2003, $P2002
    $P2004 = $P2000."new"("FAILGOAL", $S2003, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P2005 = $P1993."new"($P1996, $P2004, "alt" :named("pasttype"))
.annotate 'line', 460
    $P2006 = $P1986."new"($P1989, $P2005, "concat" :named("pasttype"))
.annotate 'line', 458
    $P2007 = $P1982."!make"($P2006)
.annotate 'line', 457
    .return ($P2007)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("227_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2009
    .param pmc param_2010
.annotate 'line', 470
    .lex "self", param_2009
    .lex "$/", param_2010
.annotate 'line', 471
    new $P2011, "Undef"
    .lex "$past", $P2011
.annotate 'line', 472
    find_lex $P2014, "$/"
    unless_null $P2014, vivify_937
    $P2014 = root_new ['parrot';'Hash']
  vivify_937:
    set $P2015, $P2014["key"]
    unless_null $P2015, vivify_938
    new $P2015, "Undef"
  vivify_938:
    if $P2015, if_2013
    new $P2026, "Integer"
    assign $P2026, 0
    set $P2012, $P2026
    goto if_2013_end
  if_2013:
    get_hll_global $P2016, "GLOBAL"
    nqp_get_package_through_who $P2017, $P2016, "PAST"
    get_who $P2018, $P2017
    set $P2019, $P2018["Regex"]
    find_lex $P2020, "$/"
    unless_null $P2020, vivify_939
    $P2020 = root_new ['parrot';'Hash']
  vivify_939:
    set $P2021, $P2020["key"]
    unless_null $P2021, vivify_940
    $P2021 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    set $P2022, $P2021[0]
    unless_null $P2022, vivify_941
    new $P2022, "Undef"
  vivify_941:
    set $S2023, $P2022
    find_lex $P2024, "$/"
    unless_null $P2024, vivify_942
    new $P2024, "Undef"
  vivify_942:
    $P2025 = $P2019."new"($S2023, "reduce" :named("pasttype"), $P2024 :named("node"))
    set $P2012, $P2025
  if_2013_end:
    store_lex "$past", $P2012
.annotate 'line', 474
    find_lex $P2027, "$/"
    find_lex $P2028, "$past"
    unless_null $P2028, vivify_943
    new $P2028, "Undef"
  vivify_943:
    $P2029 = $P2027."!make"($P2028)
.annotate 'line', 470
    .return ($P2029)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("228_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2031
    .param pmc param_2032
.annotate 'line', 477
    .lex "self", param_2031
    .lex "$/", param_2032
.annotate 'line', 478
    new $P2033, "Undef"
    .lex "$past", $P2033
.annotate 'line', 479
    new $P2034, "Undef"
    .lex "$name", $P2034
.annotate 'line', 477
    find_lex $P2035, "$past"
    unless_null $P2035, vivify_944
    new $P2035, "Undef"
  vivify_944:
.annotate 'line', 479
    find_lex $P2038, "$/"
    unless_null $P2038, vivify_945
    $P2038 = root_new ['parrot';'Hash']
  vivify_945:
    set $P2039, $P2038["pos"]
    unless_null $P2039, vivify_946
    new $P2039, "Undef"
  vivify_946:
    if $P2039, if_2037
    find_lex $P2043, "$/"
    unless_null $P2043, vivify_947
    $P2043 = root_new ['parrot';'Hash']
  vivify_947:
    set $P2044, $P2043["name"]
    unless_null $P2044, vivify_948
    new $P2044, "Undef"
  vivify_948:
    set $S2045, $P2044
    new $P2036, 'String'
    set $P2036, $S2045
    goto if_2037_end
  if_2037:
    find_lex $P2040, "$/"
    unless_null $P2040, vivify_949
    $P2040 = root_new ['parrot';'Hash']
  vivify_949:
    set $P2041, $P2040["pos"]
    unless_null $P2041, vivify_950
    new $P2041, "Undef"
  vivify_950:
    set $N2042, $P2041
    new $P2036, 'Float'
    set $P2036, $N2042
  if_2037_end:
    store_lex "$name", $P2036
.annotate 'line', 480
    find_lex $P2047, "$/"
    unless_null $P2047, vivify_951
    $P2047 = root_new ['parrot';'Hash']
  vivify_951:
    set $P2048, $P2047["quantified_atom"]
    unless_null $P2048, vivify_952
    new $P2048, "Undef"
  vivify_952:
    if $P2048, if_2046
.annotate 'line', 491
    get_hll_global $P2082, "GLOBAL"
    nqp_get_package_through_who $P2083, $P2082, "PAST"
    get_who $P2084, $P2083
    set $P2085, $P2084["Regex"]
    find_lex $P2086, "$name"
    unless_null $P2086, vivify_953
    new $P2086, "Undef"
  vivify_953:
    find_lex $P2087, "$/"
    unless_null $P2087, vivify_954
    new $P2087, "Undef"
  vivify_954:
    $P2088 = $P2085."new"("!BACKREF", $P2086, "subrule" :named("pasttype"), "method" :named("subtype"), $P2087 :named("node"))
    store_lex "$past", $P2088
.annotate 'line', 490
    goto if_2046_end
  if_2046:
.annotate 'line', 481
    find_lex $P2049, "$/"
    unless_null $P2049, vivify_955
    $P2049 = root_new ['parrot';'Hash']
  vivify_955:
    set $P2050, $P2049["quantified_atom"]
    unless_null $P2050, vivify_956
    $P2050 = root_new ['parrot';'ResizablePMCArray']
  vivify_956:
    set $P2051, $P2050[0]
    unless_null $P2051, vivify_957
    new $P2051, "Undef"
  vivify_957:
    $P2052 = $P2051."ast"()
    store_lex "$past", $P2052
.annotate 'line', 482
    find_lex $P2056, "$past"
    unless_null $P2056, vivify_958
    new $P2056, "Undef"
  vivify_958:
    $S2057 = $P2056."pasttype"()
    iseq $I2058, $S2057, "quant"
    if $I2058, if_2055
    new $P2054, 'Integer'
    set $P2054, $I2058
    goto if_2055_end
  if_2055:
    find_lex $P2059, "$past"
    unless_null $P2059, vivify_959
    $P2059 = root_new ['parrot';'ResizablePMCArray']
  vivify_959:
    set $P2060, $P2059[0]
    unless_null $P2060, vivify_960
    new $P2060, "Undef"
  vivify_960:
    $S2061 = $P2060."pasttype"()
    iseq $I2062, $S2061, "subrule"
    new $P2054, 'Integer'
    set $P2054, $I2062
  if_2055_end:
    if $P2054, if_2053
.annotate 'line', 485
    find_lex $P2068, "$past"
    unless_null $P2068, vivify_961
    new $P2068, "Undef"
  vivify_961:
    $S2069 = $P2068."pasttype"()
    iseq $I2070, $S2069, "subrule"
    if $I2070, if_2067
.annotate 'line', 487
    get_hll_global $P2074, "GLOBAL"
    nqp_get_package_through_who $P2075, $P2074, "PAST"
    get_who $P2076, $P2075
    set $P2077, $P2076["Regex"]
    find_lex $P2078, "$past"
    unless_null $P2078, vivify_962
    new $P2078, "Undef"
  vivify_962:
    find_lex $P2079, "$name"
    unless_null $P2079, vivify_963
    new $P2079, "Undef"
  vivify_963:
    find_lex $P2080, "$/"
    unless_null $P2080, vivify_964
    new $P2080, "Undef"
  vivify_964:
    $P2081 = $P2077."new"($P2078, $P2079 :named("name"), "subcapture" :named("pasttype"), $P2080 :named("node"))
    store_lex "$past", $P2081
.annotate 'line', 486
    goto if_2067_end
  if_2067:
.annotate 'line', 485
    find_lex $P2071, "self"
    find_lex $P2072, "$past"
    unless_null $P2072, vivify_965
    new $P2072, "Undef"
  vivify_965:
    find_lex $P2073, "$name"
    unless_null $P2073, vivify_966
    new $P2073, "Undef"
  vivify_966:
    $P2071."subrule_alias"($P2072, $P2073)
  if_2067_end:
    goto if_2053_end
  if_2053:
.annotate 'line', 483
    find_lex $P2063, "self"
    find_lex $P2064, "$past"
    unless_null $P2064, vivify_967
    $P2064 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    set $P2065, $P2064[0]
    unless_null $P2065, vivify_968
    new $P2065, "Undef"
  vivify_968:
    find_lex $P2066, "$name"
    unless_null $P2066, vivify_969
    new $P2066, "Undef"
  vivify_969:
    $P2063."subrule_alias"($P2065, $P2066)
  if_2053_end:
  if_2046_end:
.annotate 'line', 494
    find_lex $P2089, "$/"
    find_lex $P2090, "$past"
    unless_null $P2090, vivify_970
    new $P2090, "Undef"
  vivify_970:
    $P2091 = $P2089."!make"($P2090)
.annotate 'line', 477
    .return ($P2091)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("229_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2093
    .param pmc param_2094
.annotate 'line', 497
    .lex "self", param_2093
    .lex "$/", param_2094
.annotate 'line', 498
    find_lex $P2095, "$/"
    get_hll_global $P2096, "GLOBAL"
    nqp_get_package_through_who $P2097, $P2096, "PAST"
    get_who $P2098, $P2097
    set $P2099, $P2098["Regex"]
.annotate 'line', 499
    get_hll_global $P2100, "GLOBAL"
    nqp_get_package_through_who $P2101, $P2100, "PAST"
    get_who $P2102, $P2101
    set $P2103, $P2102["Op"]
    find_lex $P2104, "$/"
    unless_null $P2104, vivify_971
    $P2104 = root_new ['parrot';'Hash']
  vivify_971:
    set $P2105, $P2104["pir"]
    unless_null $P2105, vivify_972
    new $P2105, "Undef"
  vivify_972:
    set $S2106, $P2105
    $P2107 = $P2103."new"($S2106 :named("inline"), "inline" :named("pasttype"))
    find_lex $P2108, "$/"
    unless_null $P2108, vivify_973
    new $P2108, "Undef"
  vivify_973:
    $P2109 = $P2099."new"($P2107, "pastnode" :named("pasttype"), $P2108 :named("node"))
.annotate 'line', 498
    $P2110 = $P2095."!make"($P2109)
.annotate 'line', 497
    .return ($P2110)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("230_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2112
    .param pmc param_2113
.annotate 'line', 505
    .lex "self", param_2112
    .lex "$/", param_2113
.annotate 'line', 506
    new $P2114, "Undef"
    .lex "$subtype", $P2114
.annotate 'line', 507
    new $P2115, "Undef"
    .lex "$past", $P2115
.annotate 'line', 506
    find_lex $P2118, "$/"
    unless_null $P2118, vivify_974
    $P2118 = root_new ['parrot';'Hash']
  vivify_974:
    set $P2119, $P2118["sym"]
    unless_null $P2119, vivify_975
    new $P2119, "Undef"
  vivify_975:
    set $S2120, $P2119
    iseq $I2121, $S2120, "n"
    if $I2121, if_2117
    find_lex $P2123, "$/"
    unless_null $P2123, vivify_976
    $P2123 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2124, $P2123["sym"]
    unless_null $P2124, vivify_977
    new $P2124, "Undef"
  vivify_977:
    set $S2125, $P2124
    new $P2116, 'String'
    set $P2116, $S2125
    goto if_2117_end
  if_2117:
    new $P2122, "String"
    assign $P2122, "nl"
    set $P2116, $P2122
  if_2117_end:
    store_lex "$subtype", $P2116
.annotate 'line', 507
    get_hll_global $P2126, "GLOBAL"
    nqp_get_package_through_who $P2127, $P2126, "PAST"
    get_who $P2128, $P2127
    set $P2129, $P2128["Regex"]
    find_lex $P2130, "$subtype"
    unless_null $P2130, vivify_978
    new $P2130, "Undef"
  vivify_978:
    find_lex $P2131, "$/"
    unless_null $P2131, vivify_979
    new $P2131, "Undef"
  vivify_979:
    $P2132 = $P2129."new"("charclass" :named("pasttype"), $P2130 :named("subtype"), $P2131 :named("node"))
    store_lex "$past", $P2132
.annotate 'line', 508
    find_lex $P2133, "$/"
    find_lex $P2134, "$past"
    unless_null $P2134, vivify_980
    new $P2134, "Undef"
  vivify_980:
    $P2135 = $P2133."!make"($P2134)
.annotate 'line', 505
    .return ($P2135)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("231_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2137
    .param pmc param_2138
.annotate 'line', 511
    .lex "self", param_2137
    .lex "$/", param_2138
.annotate 'line', 512
    new $P2139, "Undef"
    .lex "$past", $P2139
    get_hll_global $P2140, "GLOBAL"
    nqp_get_package_through_who $P2141, $P2140, "PAST"
    get_who $P2142, $P2141
    set $P2143, $P2142["Regex"]
.annotate 'line', 513
    find_lex $P2144, "$/"
    unless_null $P2144, vivify_981
    $P2144 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2145, $P2144["sym"]
    unless_null $P2145, vivify_982
    new $P2145, "Undef"
  vivify_982:
    set $S2146, $P2145
    iseq $I2147, $S2146, "B"
    find_lex $P2148, "$/"
    unless_null $P2148, vivify_983
    new $P2148, "Undef"
  vivify_983:
    $P2149 = $P2143."new"("\b", "enumcharlist" :named("pasttype"), $I2147 :named("negate"), $P2148 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P2149
.annotate 'line', 514
    find_lex $P2150, "$/"
    find_lex $P2151, "$past"
    unless_null $P2151, vivify_984
    new $P2151, "Undef"
  vivify_984:
    $P2152 = $P2150."!make"($P2151)
.annotate 'line', 511
    .return ($P2152)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("232_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2154
    .param pmc param_2155
.annotate 'line', 517
    .lex "self", param_2154
    .lex "$/", param_2155
.annotate 'line', 518
    new $P2156, "Undef"
    .lex "$past", $P2156
    get_hll_global $P2157, "GLOBAL"
    nqp_get_package_through_who $P2158, $P2157, "PAST"
    get_who $P2159, $P2158
    set $P2160, $P2159["Regex"]
.annotate 'line', 519
    find_lex $P2161, "$/"
    unless_null $P2161, vivify_985
    $P2161 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2162, $P2161["sym"]
    unless_null $P2162, vivify_986
    new $P2162, "Undef"
  vivify_986:
    set $S2163, $P2162
    iseq $I2164, $S2163, "E"
    find_lex $P2165, "$/"
    unless_null $P2165, vivify_987
    new $P2165, "Undef"
  vivify_987:
    $P2166 = $P2160."new"("\e", "enumcharlist" :named("pasttype"), $I2164 :named("negate"), $P2165 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2166
.annotate 'line', 520
    find_lex $P2167, "$/"
    find_lex $P2168, "$past"
    unless_null $P2168, vivify_988
    new $P2168, "Undef"
  vivify_988:
    $P2169 = $P2167."!make"($P2168)
.annotate 'line', 517
    .return ($P2169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("233_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2171
    .param pmc param_2172
.annotate 'line', 523
    .lex "self", param_2171
    .lex "$/", param_2172
.annotate 'line', 524
    new $P2173, "Undef"
    .lex "$past", $P2173
    get_hll_global $P2174, "GLOBAL"
    nqp_get_package_through_who $P2175, $P2174, "PAST"
    get_who $P2176, $P2175
    set $P2177, $P2176["Regex"]
.annotate 'line', 525
    find_lex $P2178, "$/"
    unless_null $P2178, vivify_989
    $P2178 = root_new ['parrot';'Hash']
  vivify_989:
    set $P2179, $P2178["sym"]
    unless_null $P2179, vivify_990
    new $P2179, "Undef"
  vivify_990:
    set $S2180, $P2179
    iseq $I2181, $S2180, "F"
    find_lex $P2182, "$/"
    unless_null $P2182, vivify_991
    new $P2182, "Undef"
  vivify_991:
    $P2183 = $P2177."new"("\f", "enumcharlist" :named("pasttype"), $I2181 :named("negate"), $P2182 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2183
.annotate 'line', 526
    find_lex $P2184, "$/"
    find_lex $P2185, "$past"
    unless_null $P2185, vivify_992
    new $P2185, "Undef"
  vivify_992:
    $P2186 = $P2184."!make"($P2185)
.annotate 'line', 523
    .return ($P2186)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("234_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2188
    .param pmc param_2189
.annotate 'line', 529
    .lex "self", param_2188
    .lex "$/", param_2189
.annotate 'line', 530
    new $P2190, "Undef"
    .lex "$past", $P2190
    get_hll_global $P2191, "GLOBAL"
    nqp_get_package_through_who $P2192, $P2191, "PAST"
    get_who $P2193, $P2192
    set $P2194, $P2193["Regex"]
.annotate 'line', 531
    find_lex $P2195, "$/"
    unless_null $P2195, vivify_993
    $P2195 = root_new ['parrot';'Hash']
  vivify_993:
    set $P2196, $P2195["sym"]
    unless_null $P2196, vivify_994
    new $P2196, "Undef"
  vivify_994:
    set $S2197, $P2196
    iseq $I2198, $S2197, "H"
    find_lex $P2199, "$/"
    unless_null $P2199, vivify_995
    new $P2199, "Undef"
  vivify_995:
    $P2200 = $P2194."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2198 :named("negate"), $P2199 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2200
.annotate 'line', 532
    find_lex $P2201, "$/"
    find_lex $P2202, "$past"
    unless_null $P2202, vivify_996
    new $P2202, "Undef"
  vivify_996:
    $P2203 = $P2201."!make"($P2202)
.annotate 'line', 529
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("235_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2205
    .param pmc param_2206
.annotate 'line', 535
    .lex "self", param_2205
    .lex "$/", param_2206
.annotate 'line', 536
    new $P2207, "Undef"
    .lex "$past", $P2207
    get_hll_global $P2208, "GLOBAL"
    nqp_get_package_through_who $P2209, $P2208, "PAST"
    get_who $P2210, $P2209
    set $P2211, $P2210["Regex"]
.annotate 'line', 537
    find_lex $P2212, "$/"
    unless_null $P2212, vivify_997
    $P2212 = root_new ['parrot';'Hash']
  vivify_997:
    set $P2213, $P2212["sym"]
    unless_null $P2213, vivify_998
    new $P2213, "Undef"
  vivify_998:
    set $S2214, $P2213
    iseq $I2215, $S2214, "R"
    find_lex $P2216, "$/"
    unless_null $P2216, vivify_999
    new $P2216, "Undef"
  vivify_999:
    $P2217 = $P2211."new"("\r", "enumcharlist" :named("pasttype"), $I2215 :named("negate"), $P2216 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2217
.annotate 'line', 538
    find_lex $P2218, "$/"
    find_lex $P2219, "$past"
    unless_null $P2219, vivify_1000
    new $P2219, "Undef"
  vivify_1000:
    $P2220 = $P2218."!make"($P2219)
.annotate 'line', 535
    .return ($P2220)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("236_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2222
    .param pmc param_2223
.annotate 'line', 541
    .lex "self", param_2222
    .lex "$/", param_2223
.annotate 'line', 542
    new $P2224, "Undef"
    .lex "$past", $P2224
    get_hll_global $P2225, "GLOBAL"
    nqp_get_package_through_who $P2226, $P2225, "PAST"
    get_who $P2227, $P2226
    set $P2228, $P2227["Regex"]
.annotate 'line', 543
    find_lex $P2229, "$/"
    unless_null $P2229, vivify_1001
    $P2229 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P2230, $P2229["sym"]
    unless_null $P2230, vivify_1002
    new $P2230, "Undef"
  vivify_1002:
    set $S2231, $P2230
    iseq $I2232, $S2231, "T"
    find_lex $P2233, "$/"
    unless_null $P2233, vivify_1003
    new $P2233, "Undef"
  vivify_1003:
    $P2234 = $P2228."new"("\t", "enumcharlist" :named("pasttype"), $I2232 :named("negate"), $P2233 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2234
.annotate 'line', 544
    find_lex $P2235, "$/"
    find_lex $P2236, "$past"
    unless_null $P2236, vivify_1004
    new $P2236, "Undef"
  vivify_1004:
    $P2237 = $P2235."!make"($P2236)
.annotate 'line', 541
    .return ($P2237)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("237_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2239
    .param pmc param_2240
.annotate 'line', 547
    .lex "self", param_2239
    .lex "$/", param_2240
.annotate 'line', 548
    new $P2241, "Undef"
    .lex "$past", $P2241
    get_hll_global $P2242, "GLOBAL"
    nqp_get_package_through_who $P2243, $P2242, "PAST"
    get_who $P2244, $P2243
    set $P2245, $P2244["Regex"]
.annotate 'line', 550
    find_lex $P2246, "$/"
    unless_null $P2246, vivify_1005
    $P2246 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P2247, $P2246["sym"]
    unless_null $P2247, vivify_1006
    new $P2247, "Undef"
  vivify_1006:
    set $S2248, $P2247
    iseq $I2249, $S2248, "V"
    find_lex $P2250, "$/"
    unless_null $P2250, vivify_1007
    new $P2250, "Undef"
  vivify_1007:
    $P2251 = $P2245."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2249 :named("negate"), $P2250 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2251
.annotate 'line', 551
    find_lex $P2252, "$/"
    find_lex $P2253, "$past"
    unless_null $P2253, vivify_1008
    new $P2253, "Undef"
  vivify_1008:
    $P2254 = $P2252."!make"($P2253)
.annotate 'line', 547
    .return ($P2254)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("238_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2256
    .param pmc param_2257
.annotate 'line', 554
    .lex "self", param_2256
    .lex "$/", param_2257
.annotate 'line', 555
    new $P2258, "Undef"
    .lex "$octlit", $P2258
.annotate 'line', 556
    get_hll_global $P2259, "GLOBAL"
    nqp_get_package_through_who $P2260, $P2259, "HLL"
    nqp_get_package_through_who $P2261, $P2260, "Actions"
    get_who $P2262, $P2261
    set $P2263, $P2262["ints_to_string"]
    find_lex $P2266, "$/"
    unless_null $P2266, vivify_1009
    $P2266 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P2267, $P2266["octint"]
    unless_null $P2267, vivify_1010
    new $P2267, "Undef"
  vivify_1010:
    unless $P2267, unless_2265
    set $P2264, $P2267
    goto unless_2265_end
  unless_2265:
    find_lex $P2268, "$/"
    unless_null $P2268, vivify_1011
    $P2268 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P2269, $P2268["octints"]
    unless_null $P2269, vivify_1012
    $P2269 = root_new ['parrot';'Hash']
  vivify_1012:
    set $P2270, $P2269["octint"]
    unless_null $P2270, vivify_1013
    new $P2270, "Undef"
  vivify_1013:
    set $P2264, $P2270
  unless_2265_end:
    $P2271 = $P2263($P2264)
    store_lex "$octlit", $P2271
.annotate 'line', 557
    find_lex $P2272, "$/"
    find_lex $P2275, "$/"
    unless_null $P2275, vivify_1014
    $P2275 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P2276, $P2275["sym"]
    unless_null $P2276, vivify_1015
    new $P2276, "Undef"
  vivify_1015:
    set $S2277, $P2276
    iseq $I2278, $S2277, "O"
    if $I2278, if_2274
.annotate 'line', 560
    get_hll_global $P2286, "GLOBAL"
    nqp_get_package_through_who $P2287, $P2286, "PAST"
    get_who $P2288, $P2287
    set $P2289, $P2288["Regex"]
    find_lex $P2290, "$octlit"
    unless_null $P2290, vivify_1016
    new $P2290, "Undef"
  vivify_1016:
    find_lex $P2291, "$/"
    unless_null $P2291, vivify_1017
    new $P2291, "Undef"
  vivify_1017:
    $P2292 = $P2289."new"($P2290, "literal" :named("pasttype"), $P2291 :named("node"))
    set $P2273, $P2292
.annotate 'line', 557
    goto if_2274_end
  if_2274:
.annotate 'line', 558
    get_hll_global $P2279, "GLOBAL"
    nqp_get_package_through_who $P2280, $P2279, "PAST"
    get_who $P2281, $P2280
    set $P2282, $P2281["Regex"]
    find_lex $P2283, "$octlit"
    unless_null $P2283, vivify_1018
    new $P2283, "Undef"
  vivify_1018:
    find_lex $P2284, "$/"
    unless_null $P2284, vivify_1019
    new $P2284, "Undef"
  vivify_1019:
    $P2285 = $P2282."new"($P2283, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2284 :named("node"))
    set $P2273, $P2285
  if_2274_end:
    $P2293 = $P2272."!make"($P2273)
.annotate 'line', 554
    .return ($P2293)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("239_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2295
    .param pmc param_2296
.annotate 'line', 563
    .lex "self", param_2295
    .lex "$/", param_2296
.annotate 'line', 564
    new $P2297, "Undef"
    .lex "$hexlit", $P2297
.annotate 'line', 565
    get_hll_global $P2298, "GLOBAL"
    nqp_get_package_through_who $P2299, $P2298, "HLL"
    nqp_get_package_through_who $P2300, $P2299, "Actions"
    get_who $P2301, $P2300
    set $P2302, $P2301["ints_to_string"]
    find_lex $P2305, "$/"
    unless_null $P2305, vivify_1020
    $P2305 = root_new ['parrot';'Hash']
  vivify_1020:
    set $P2306, $P2305["hexint"]
    unless_null $P2306, vivify_1021
    new $P2306, "Undef"
  vivify_1021:
    unless $P2306, unless_2304
    set $P2303, $P2306
    goto unless_2304_end
  unless_2304:
    find_lex $P2307, "$/"
    unless_null $P2307, vivify_1022
    $P2307 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2308, $P2307["hexints"]
    unless_null $P2308, vivify_1023
    $P2308 = root_new ['parrot';'Hash']
  vivify_1023:
    set $P2309, $P2308["hexint"]
    unless_null $P2309, vivify_1024
    new $P2309, "Undef"
  vivify_1024:
    set $P2303, $P2309
  unless_2304_end:
    $P2310 = $P2302($P2303)
    store_lex "$hexlit", $P2310
.annotate 'line', 566
    find_lex $P2311, "$/"
    find_lex $P2314, "$/"
    unless_null $P2314, vivify_1025
    $P2314 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2315, $P2314["sym"]
    unless_null $P2315, vivify_1026
    new $P2315, "Undef"
  vivify_1026:
    set $S2316, $P2315
    iseq $I2317, $S2316, "X"
    if $I2317, if_2313
.annotate 'line', 569
    get_hll_global $P2325, "GLOBAL"
    nqp_get_package_through_who $P2326, $P2325, "PAST"
    get_who $P2327, $P2326
    set $P2328, $P2327["Regex"]
    find_lex $P2329, "$hexlit"
    unless_null $P2329, vivify_1027
    new $P2329, "Undef"
  vivify_1027:
    find_lex $P2330, "$/"
    unless_null $P2330, vivify_1028
    new $P2330, "Undef"
  vivify_1028:
    $P2331 = $P2328."new"($P2329, "literal" :named("pasttype"), $P2330 :named("node"))
    set $P2312, $P2331
.annotate 'line', 566
    goto if_2313_end
  if_2313:
.annotate 'line', 567
    get_hll_global $P2318, "GLOBAL"
    nqp_get_package_through_who $P2319, $P2318, "PAST"
    get_who $P2320, $P2319
    set $P2321, $P2320["Regex"]
    find_lex $P2322, "$hexlit"
    unless_null $P2322, vivify_1029
    new $P2322, "Undef"
  vivify_1029:
    find_lex $P2323, "$/"
    unless_null $P2323, vivify_1030
    new $P2323, "Undef"
  vivify_1030:
    $P2324 = $P2321."new"($P2322, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2323 :named("node"))
    set $P2312, $P2324
  if_2313_end:
    $P2332 = $P2311."!make"($P2312)
.annotate 'line', 563
    .return ($P2332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("240_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2334
    .param pmc param_2335
.annotate 'line', 572
    .lex "self", param_2334
    .lex "$/", param_2335
.annotate 'line', 573
    find_lex $P2336, "$/"
    get_hll_global $P2337, "GLOBAL"
    nqp_get_package_through_who $P2338, $P2337, "PAST"
    get_who $P2339, $P2338
    set $P2340, $P2339["Regex"]
    find_lex $P2341, "$/"
    unless_null $P2341, vivify_1031
    $P2341 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P2342, $P2341["charspec"]
    unless_null $P2342, vivify_1032
    new $P2342, "Undef"
  vivify_1032:
    $P2343 = $P2342."ast"()
    find_lex $P2344, "$/"
    unless_null $P2344, vivify_1033
    new $P2344, "Undef"
  vivify_1033:
    $P2345 = $P2340."new"($P2343, "literal" :named("pasttype"), $P2344 :named("node"))
    $P2346 = $P2336."!make"($P2345)
.annotate 'line', 572
    .return ($P2346)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("241_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2348
    .param pmc param_2349
.annotate 'line', 576
    .lex "self", param_2348
    .lex "$/", param_2349
.annotate 'line', 577
    new $P2350, "Undef"
    .lex "$past", $P2350
    get_hll_global $P2351, "GLOBAL"
    nqp_get_package_through_who $P2352, $P2351, "PAST"
    get_who $P2353, $P2352
    set $P2354, $P2353["Regex"]
    find_lex $P2355, "$/"
    unless_null $P2355, vivify_1034
    new $P2355, "Undef"
  vivify_1034:
    set $S2356, $P2355
    find_lex $P2357, "$/"
    unless_null $P2357, vivify_1035
    new $P2357, "Undef"
  vivify_1035:
    $P2358 = $P2354."new"($S2356, "literal" :named("pasttype"), $P2357 :named("node"))
    store_lex "$past", $P2358
.annotate 'line', 578
    find_lex $P2359, "$/"
    find_lex $P2360, "$past"
    unless_null $P2360, vivify_1036
    new $P2360, "Undef"
  vivify_1036:
    $P2361 = $P2359."!make"($P2360)
.annotate 'line', 576
    .return ($P2361)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("242_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2363
    .param pmc param_2364
.annotate 'line', 582
    .lex "self", param_2363
    .lex "$/", param_2364
.annotate 'line', 583
    new $P2365, "Undef"
    .lex "$past", $P2365
.annotate 'line', 582
    find_lex $P2366, "$past"
    unless_null $P2366, vivify_1037
    new $P2366, "Undef"
  vivify_1037:
.annotate 'line', 584
    find_lex $P2368, "$/"
    unless_null $P2368, vivify_1038
    $P2368 = root_new ['parrot';'Hash']
  vivify_1038:
    set $P2369, $P2368["assertion"]
    unless_null $P2369, vivify_1039
    new $P2369, "Undef"
  vivify_1039:
    if $P2369, if_2367
.annotate 'line', 588
    new $P2374, "Integer"
    assign $P2374, 0
    store_lex "$past", $P2374
    goto if_2367_end
  if_2367:
.annotate 'line', 585
    find_lex $P2370, "$/"
    unless_null $P2370, vivify_1040
    $P2370 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2371, $P2370["assertion"]
    unless_null $P2371, vivify_1041
    new $P2371, "Undef"
  vivify_1041:
    $P2372 = $P2371."ast"()
    store_lex "$past", $P2372
.annotate 'line', 586
    find_lex $P2373, "$past"
    unless_null $P2373, vivify_1042
    new $P2373, "Undef"
  vivify_1042:
    $P2373."subtype"("zerowidth")
  if_2367_end:
.annotate 'line', 589
    find_lex $P2375, "$/"
    find_lex $P2376, "$past"
    unless_null $P2376, vivify_1043
    new $P2376, "Undef"
  vivify_1043:
    $P2377 = $P2375."!make"($P2376)
.annotate 'line', 582
    .return ($P2377)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("243_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2379
    .param pmc param_2380
.annotate 'line', 592
    .lex "self", param_2379
    .lex "$/", param_2380
.annotate 'line', 593
    new $P2381, "Undef"
    .lex "$past", $P2381
.annotate 'line', 592
    find_lex $P2382, "$past"
    unless_null $P2382, vivify_1044
    new $P2382, "Undef"
  vivify_1044:
.annotate 'line', 594
    find_lex $P2384, "$/"
    unless_null $P2384, vivify_1045
    $P2384 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P2385, $P2384["assertion"]
    unless_null $P2385, vivify_1046
    new $P2385, "Undef"
  vivify_1046:
    if $P2385, if_2383
.annotate 'line', 600
    get_hll_global $P2394, "GLOBAL"
    nqp_get_package_through_who $P2395, $P2394, "PAST"
    get_who $P2396, $P2395
    set $P2397, $P2396["Regex"]
    find_lex $P2398, "$/"
    unless_null $P2398, vivify_1047
    new $P2398, "Undef"
  vivify_1047:
    $P2399 = $P2397."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2398 :named("node"))
    store_lex "$past", $P2399
.annotate 'line', 599
    goto if_2383_end
  if_2383:
.annotate 'line', 595
    find_lex $P2386, "$/"
    unless_null $P2386, vivify_1048
    $P2386 = root_new ['parrot';'Hash']
  vivify_1048:
    set $P2387, $P2386["assertion"]
    unless_null $P2387, vivify_1049
    new $P2387, "Undef"
  vivify_1049:
    $P2388 = $P2387."ast"()
    store_lex "$past", $P2388
.annotate 'line', 596
    find_lex $P2389, "$past"
    unless_null $P2389, vivify_1050
    new $P2389, "Undef"
  vivify_1050:
    find_lex $P2390, "$past"
    unless_null $P2390, vivify_1051
    new $P2390, "Undef"
  vivify_1051:
    $P2391 = $P2390."negate"()
    isfalse $I2392, $P2391
    $P2389."negate"($I2392)
.annotate 'line', 597
    find_lex $P2393, "$past"
    unless_null $P2393, vivify_1052
    new $P2393, "Undef"
  vivify_1052:
    $P2393."subtype"("zerowidth")
  if_2383_end:
.annotate 'line', 602
    find_lex $P2400, "$/"
    find_lex $P2401, "$past"
    unless_null $P2401, vivify_1053
    new $P2401, "Undef"
  vivify_1053:
    $P2402 = $P2400."!make"($P2401)
.annotate 'line', 592
    .return ($P2402)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("244_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2404
    .param pmc param_2405
.annotate 'line', 605
    .lex "self", param_2404
    .lex "$/", param_2405
.annotate 'line', 606
    new $P2406, "Undef"
    .lex "$past", $P2406
    find_lex $P2407, "$/"
    unless_null $P2407, vivify_1054
    $P2407 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P2408, $P2407["assertion"]
    unless_null $P2408, vivify_1055
    new $P2408, "Undef"
  vivify_1055:
    $P2409 = $P2408."ast"()
    store_lex "$past", $P2409
.annotate 'line', 607
    find_lex $P2410, "$past"
    unless_null $P2410, vivify_1056
    new $P2410, "Undef"
  vivify_1056:
    $P2410."subtype"("method")
.annotate 'line', 608
    find_lex $P2411, "$past"
    unless_null $P2411, vivify_1057
    new $P2411, "Undef"
  vivify_1057:
    $P2411."name"("")
.annotate 'line', 609
    find_lex $P2412, "$/"
    find_lex $P2413, "$past"
    unless_null $P2413, vivify_1058
    new $P2413, "Undef"
  vivify_1058:
    $P2414 = $P2412."!make"($P2413)
.annotate 'line', 605
    .return ($P2414)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("245_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2416
    .param pmc param_2417
.annotate 'line', 612
    .const 'Sub' $P2484 = "247_1303739789.706" 
    capture_lex $P2484
    .const 'Sub' $P2440 = "246_1303739789.706" 
    capture_lex $P2440
    .lex "self", param_2416
    .lex "$/", param_2417
.annotate 'line', 613
    new $P2418, "Undef"
    .lex "$name", $P2418
.annotate 'line', 614
    new $P2419, "Undef"
    .lex "$past", $P2419
.annotate 'line', 613
    find_lex $P2420, "$/"
    unless_null $P2420, vivify_1059
    $P2420 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2421, $P2420["longname"]
    unless_null $P2421, vivify_1060
    new $P2421, "Undef"
  vivify_1060:
    set $S2422, $P2421
    new $P2423, 'String'
    set $P2423, $S2422
    store_lex "$name", $P2423
    find_lex $P2424, "$past"
    unless_null $P2424, vivify_1061
    new $P2424, "Undef"
  vivify_1061:
.annotate 'line', 615
    find_lex $P2426, "$/"
    unless_null $P2426, vivify_1062
    $P2426 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P2427, $P2426["assertion"]
    unless_null $P2427, vivify_1063
    new $P2427, "Undef"
  vivify_1063:
    if $P2427, if_2425
.annotate 'line', 619
    find_lex $P2436, "$name"
    unless_null $P2436, vivify_1064
    new $P2436, "Undef"
  vivify_1064:
    set $S2437, $P2436
    iseq $I2438, $S2437, "sym"
    if $I2438, if_2435
.annotate 'line', 636
    find_lex $P2460, "self"
    find_lex $P2461, "$/"
    unless_null $P2461, vivify_1065
    new $P2461, "Undef"
  vivify_1065:
    $P2462 = $P2460."named_assertion"($P2461)
    store_lex "$past", $P2462
.annotate 'line', 637
    find_lex $P2464, "$/"
    unless_null $P2464, vivify_1066
    $P2464 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P2465, $P2464["nibbler"]
    unless_null $P2465, vivify_1067
    new $P2465, "Undef"
  vivify_1067:
    if $P2465, if_2463
.annotate 'line', 640
    find_lex $P2473, "$/"
    unless_null $P2473, vivify_1068
    $P2473 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P2474, $P2473["arglist"]
    unless_null $P2474, vivify_1069
    new $P2474, "Undef"
  vivify_1069:
    unless $P2474, if_2472_end
.annotate 'line', 641
    find_lex $P2476, "$/"
    unless_null $P2476, vivify_1070
    $P2476 = root_new ['parrot';'Hash']
  vivify_1070:
    set $P2477, $P2476["arglist"]
    unless_null $P2477, vivify_1071
    $P2477 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
    set $P2478, $P2477[0]
    unless_null $P2478, vivify_1072
    new $P2478, "Undef"
  vivify_1072:
    $P2479 = $P2478."ast"()
    $P2480 = $P2479."list"()
    defined $I2481, $P2480
    unless $I2481, for_undef_1073
    iter $P2475, $P2480
    new $P2490, 'ExceptionHandler'
    set_label $P2490, loop2489_handler
    $P2490."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2490
  loop2489_test:
    unless $P2475, loop2489_done
    shift $P2482, $P2475
  loop2489_redo:
    .const 'Sub' $P2484 = "247_1303739789.706" 
    capture_lex $P2484
    $P2484($P2482)
  loop2489_next:
    goto loop2489_test
  loop2489_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2491, exception, 'type'
    eq $P2491, .CONTROL_LOOP_NEXT, loop2489_next
    eq $P2491, .CONTROL_LOOP_REDO, loop2489_redo
  loop2489_done:
    pop_eh 
  for_undef_1073:
  if_2472_end:
.annotate 'line', 640
    goto if_2463_end
  if_2463:
.annotate 'line', 638
    find_lex $P2466, "$past"
    unless_null $P2466, vivify_1076
    new $P2466, "Undef"
  vivify_1076:
    find_lex $P2467, "$/"
    unless_null $P2467, vivify_1077
    $P2467 = root_new ['parrot';'Hash']
  vivify_1077:
    set $P2468, $P2467["nibbler"]
    unless_null $P2468, vivify_1078
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P2469, $P2468[0]
    unless_null $P2469, vivify_1079
    new $P2469, "Undef"
  vivify_1079:
    $P2470 = $P2469."ast"()
    $P2471 = "buildsub"($P2470)
    $P2466."push"($P2471)
  if_2463_end:
.annotate 'line', 635
    goto if_2435_end
  if_2435:
.annotate 'line', 619
    .const 'Sub' $P2440 = "246_1303739789.706" 
    capture_lex $P2440
    $P2440()
  if_2435_end:
    goto if_2425_end
  if_2425:
.annotate 'line', 616
    find_lex $P2428, "$/"
    unless_null $P2428, vivify_1084
    $P2428 = root_new ['parrot';'Hash']
  vivify_1084:
    set $P2429, $P2428["assertion"]
    unless_null $P2429, vivify_1085
    $P2429 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2430, $P2429[0]
    unless_null $P2430, vivify_1086
    new $P2430, "Undef"
  vivify_1086:
    $P2431 = $P2430."ast"()
    store_lex "$past", $P2431
.annotate 'line', 617
    find_lex $P2432, "self"
    find_lex $P2433, "$past"
    unless_null $P2433, vivify_1087
    new $P2433, "Undef"
  vivify_1087:
    find_lex $P2434, "$name"
    unless_null $P2434, vivify_1088
    new $P2434, "Undef"
  vivify_1088:
    $P2432."subrule_alias"($P2433, $P2434)
  if_2425_end:
.annotate 'line', 644
    find_lex $P2492, "$/"
    find_lex $P2493, "$past"
    unless_null $P2493, vivify_1089
    new $P2493, "Undef"
  vivify_1089:
    $P2494 = $P2492."!make"($P2493)
.annotate 'line', 612
    .return ($P2494)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2483"  :anon :subid("247_1303739789.706") :outer("245_1303739789.706")
    .param pmc param_2485
.annotate 'line', 641
    .lex "$_", param_2485
    find_lex $P2486, "$past"
    unless_null $P2486, vivify_1074
    new $P2486, "Undef"
  vivify_1074:
    find_lex $P2487, "$_"
    unless_null $P2487, vivify_1075
    new $P2487, "Undef"
  vivify_1075:
    $P2488 = $P2486."push"($P2487)
    .return ($P2488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2439"  :anon :subid("246_1303739789.706") :outer("245_1303739789.706")
.annotate 'line', 620
    new $P2441, "Undef"
    .lex "$rxname", $P2441
.annotate 'line', 621
    new $P2442, "Undef"
    .lex "$regexsym", $P2442
.annotate 'line', 620
    find_lex $P2443, "$?PACKAGE"
    get_who $P2444, $P2443
    set $P2445, $P2444["$REGEXNAME"]
    unless_null $P2445, vivify_1080
    new $P2445, "Undef"
  vivify_1080:
    store_lex "$rxname", $P2445
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2446 = box $S0
            
    store_lex "$regexsym", $P2446
.annotate 'line', 630
    get_hll_global $P2447, "GLOBAL"
    nqp_get_package_through_who $P2448, $P2447, "PAST"
    get_who $P2449, $P2448
    set $P2450, $P2449["Regex"]
.annotate 'line', 631
    get_hll_global $P2451, "GLOBAL"
    nqp_get_package_through_who $P2452, $P2451, "PAST"
    get_who $P2453, $P2452
    set $P2454, $P2453["Regex"]
    find_lex $P2455, "$regexsym"
    unless_null $P2455, vivify_1081
    new $P2455, "Undef"
  vivify_1081:
    $P2456 = $P2454."new"($P2455, "literal" :named("pasttype"))
    find_lex $P2457, "$name"
    unless_null $P2457, vivify_1082
    new $P2457, "Undef"
  vivify_1082:
    find_lex $P2458, "$/"
    unless_null $P2458, vivify_1083
    new $P2458, "Undef"
  vivify_1083:
    $P2459 = $P2450."new"($P2456, $P2457 :named("name"), "subcapture" :named("pasttype"), $P2458 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2459
.annotate 'line', 619
    .return ($P2459)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("248_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2496
    .param pmc param_2497
.annotate 'line', 647
    .const 'Sub' $P2538 = "249_1303739789.706" 
    capture_lex $P2538
    .lex "self", param_2496
    .lex "$/", param_2497
.annotate 'line', 648
    new $P2498, "Undef"
    .lex "$clist", $P2498
.annotate 'line', 649
    new $P2499, "Undef"
    .lex "$past", $P2499
.annotate 'line', 658
    new $P2500, "Undef"
    .lex "$i", $P2500
.annotate 'line', 659
    new $P2501, "Undef"
    .lex "$n", $P2501
.annotate 'line', 648
    find_lex $P2502, "$/"
    unless_null $P2502, vivify_1090
    $P2502 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2503, $P2502["cclass_elem"]
    unless_null $P2503, vivify_1091
    new $P2503, "Undef"
  vivify_1091:
    store_lex "$clist", $P2503
.annotate 'line', 649
    find_lex $P2504, "$clist"
    unless_null $P2504, vivify_1092
    $P2504 = root_new ['parrot';'ResizablePMCArray']
  vivify_1092:
    set $P2505, $P2504[0]
    unless_null $P2505, vivify_1093
    new $P2505, "Undef"
  vivify_1093:
    $P2506 = $P2505."ast"()
    store_lex "$past", $P2506
.annotate 'line', 650
    find_lex $P2510, "$past"
    unless_null $P2510, vivify_1094
    new $P2510, "Undef"
  vivify_1094:
    $P2511 = $P2510."negate"()
    if $P2511, if_2509
    set $P2508, $P2511
    goto if_2509_end
  if_2509:
    find_lex $P2512, "$past"
    unless_null $P2512, vivify_1095
    new $P2512, "Undef"
  vivify_1095:
    $S2513 = $P2512."pasttype"()
    iseq $I2514, $S2513, "subrule"
    new $P2508, 'Integer'
    set $P2508, $I2514
  if_2509_end:
    unless $P2508, if_2507_end
.annotate 'line', 651
    find_lex $P2515, "$past"
    unless_null $P2515, vivify_1096
    new $P2515, "Undef"
  vivify_1096:
    $P2515."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2516, "GLOBAL"
    nqp_get_package_through_who $P2517, $P2516, "PAST"
    get_who $P2518, $P2517
    set $P2519, $P2518["Regex"]
    find_lex $P2520, "$past"
    unless_null $P2520, vivify_1097
    new $P2520, "Undef"
  vivify_1097:
.annotate 'line', 654
    get_hll_global $P2521, "GLOBAL"
    nqp_get_package_through_who $P2522, $P2521, "PAST"
    get_who $P2523, $P2522
    set $P2524, $P2523["Regex"]
    $P2525 = $P2524."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2526, "$/"
    unless_null $P2526, vivify_1098
    new $P2526, "Undef"
  vivify_1098:
    $P2527 = $P2519."new"($P2520, $P2525, $P2526 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2527
  if_2507_end:
.annotate 'line', 658
    new $P2528, "Integer"
    assign $P2528, 1
    store_lex "$i", $P2528
.annotate 'line', 659
    find_lex $P2529, "$clist"
    unless_null $P2529, vivify_1099
    new $P2529, "Undef"
  vivify_1099:
    set $N2530, $P2529
    new $P2531, 'Float'
    set $P2531, $N2530
    store_lex "$n", $P2531
.annotate 'line', 660
    new $P2568, 'ExceptionHandler'
    set_label $P2568, loop2567_handler
    $P2568."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2568
  loop2567_test:
    find_lex $P2532, "$i"
    unless_null $P2532, vivify_1100
    new $P2532, "Undef"
  vivify_1100:
    set $N2533, $P2532
    find_lex $P2534, "$n"
    unless_null $P2534, vivify_1101
    new $P2534, "Undef"
  vivify_1101:
    set $N2535, $P2534
    islt $I2536, $N2533, $N2535
    unless $I2536, loop2567_done
  loop2567_redo:
    .const 'Sub' $P2538 = "249_1303739789.706" 
    capture_lex $P2538
    $P2538()
  loop2567_next:
    goto loop2567_test
  loop2567_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2569, exception, 'type'
    eq $P2569, .CONTROL_LOOP_NEXT, loop2567_next
    eq $P2569, .CONTROL_LOOP_REDO, loop2567_redo
  loop2567_done:
    pop_eh 
.annotate 'line', 671
    find_lex $P2570, "$/"
    find_lex $P2571, "$past"
    unless_null $P2571, vivify_1114
    new $P2571, "Undef"
  vivify_1114:
    $P2572 = $P2570."!make"($P2571)
.annotate 'line', 647
    .return ($P2572)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2537"  :anon :subid("249_1303739789.706") :outer("248_1303739789.706")
.annotate 'line', 661
    new $P2539, "Undef"
    .lex "$ast", $P2539
    find_lex $P2540, "$i"
    unless_null $P2540, vivify_1102
    new $P2540, "Undef"
  vivify_1102:
    set $I2541, $P2540
    find_lex $P2542, "$clist"
    unless_null $P2542, vivify_1103
    $P2542 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $P2543, $P2542[$I2541]
    unless_null $P2543, vivify_1104
    new $P2543, "Undef"
  vivify_1104:
    $P2544 = $P2543."ast"()
    store_lex "$ast", $P2544
.annotate 'line', 662
    find_lex $P2546, "$ast"
    unless_null $P2546, vivify_1105
    new $P2546, "Undef"
  vivify_1105:
    $P2547 = $P2546."negate"()
    if $P2547, if_2545
.annotate 'line', 667
    get_hll_global $P2557, "GLOBAL"
    nqp_get_package_through_who $P2558, $P2557, "PAST"
    get_who $P2559, $P2558
    set $P2560, $P2559["Regex"]
    find_lex $P2561, "$past"
    unless_null $P2561, vivify_1106
    new $P2561, "Undef"
  vivify_1106:
    find_lex $P2562, "$ast"
    unless_null $P2562, vivify_1107
    new $P2562, "Undef"
  vivify_1107:
    find_lex $P2563, "$/"
    unless_null $P2563, vivify_1108
    new $P2563, "Undef"
  vivify_1108:
    $P2564 = $P2560."new"($P2561, $P2562, "alt" :named("pasttype"), $P2563 :named("node"))
    store_lex "$past", $P2564
.annotate 'line', 666
    goto if_2545_end
  if_2545:
.annotate 'line', 663
    find_lex $P2548, "$ast"
    unless_null $P2548, vivify_1109
    new $P2548, "Undef"
  vivify_1109:
    $P2548."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2549, "GLOBAL"
    nqp_get_package_through_who $P2550, $P2549, "PAST"
    get_who $P2551, $P2550
    set $P2552, $P2551["Regex"]
    find_lex $P2553, "$ast"
    unless_null $P2553, vivify_1110
    new $P2553, "Undef"
  vivify_1110:
    find_lex $P2554, "$past"
    unless_null $P2554, vivify_1111
    new $P2554, "Undef"
  vivify_1111:
    find_lex $P2555, "$/"
    unless_null $P2555, vivify_1112
    new $P2555, "Undef"
  vivify_1112:
    $P2556 = $P2552."new"($P2553, $P2554, "concat" :named("pasttype"), $P2555 :named("node"))
    store_lex "$past", $P2556
  if_2545_end:
.annotate 'line', 669
    find_lex $P2565, "$i"
    unless_null $P2565, vivify_1113
    new $P2565, "Undef"
  vivify_1113:
    add $P2566, $P2565, 1
    store_lex "$i", $P2566
.annotate 'line', 660
    .return ($P2566)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("250_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2574
    .param pmc param_2575
.annotate 'line', 674
    .const 'Sub' $P2603 = "252_1303739789.706" 
    capture_lex $P2603
    .const 'Sub' $P2584 = "251_1303739789.706" 
    capture_lex $P2584
    .lex "self", param_2574
    .lex "$/", param_2575
.annotate 'line', 675
    new $P2576, "Undef"
    .lex "$str", $P2576
.annotate 'line', 676
    new $P2577, "Undef"
    .lex "$past", $P2577
.annotate 'line', 675
    new $P2578, "String"
    assign $P2578, ""
    store_lex "$str", $P2578
    find_lex $P2579, "$past"
    unless_null $P2579, vivify_1115
    new $P2579, "Undef"
  vivify_1115:
.annotate 'line', 677
    find_lex $P2581, "$/"
    unless_null $P2581, vivify_1116
    $P2581 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P2582, $P2581["name"]
    unless_null $P2582, vivify_1117
    new $P2582, "Undef"
  vivify_1117:
    if $P2582, if_2580
.annotate 'line', 681
    find_lex $P2598, "$/"
    unless_null $P2598, vivify_1118
    $P2598 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P2599, $P2598["charspec"]
    unless_null $P2599, vivify_1119
    new $P2599, "Undef"
  vivify_1119:
    defined $I2600, $P2599
    unless $I2600, for_undef_1120
    iter $P2597, $P2599
    new $P2629, 'ExceptionHandler'
    set_label $P2629, loop2628_handler
    $P2629."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2629
  loop2628_test:
    unless $P2597, loop2628_done
    shift $P2601, $P2597
  loop2628_redo:
    .const 'Sub' $P2603 = "252_1303739789.706" 
    capture_lex $P2603
    $P2603($P2601)
  loop2628_next:
    goto loop2628_test
  loop2628_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2630, exception, 'type'
    eq $P2630, .CONTROL_LOOP_NEXT, loop2628_next
    eq $P2630, .CONTROL_LOOP_REDO, loop2628_redo
  loop2628_done:
    pop_eh 
  for_undef_1120:
.annotate 'line', 706
    get_hll_global $P2631, "GLOBAL"
    nqp_get_package_through_who $P2632, $P2631, "PAST"
    get_who $P2633, $P2632
    set $P2634, $P2633["Regex"]
    find_lex $P2635, "$str"
    unless_null $P2635, vivify_1133
    new $P2635, "Undef"
  vivify_1133:
    find_lex $P2636, "$/"
    unless_null $P2636, vivify_1134
    new $P2636, "Undef"
  vivify_1134:
    $P2637 = $P2634."new"($P2635, "enumcharlist" :named("pasttype"), $P2636 :named("node"))
    store_lex "$past", $P2637
.annotate 'line', 680
    goto if_2580_end
  if_2580:
.annotate 'line', 677
    .const 'Sub' $P2584 = "251_1303739789.706" 
    capture_lex $P2584
    $P2584()
  if_2580_end:
.annotate 'line', 708
    find_lex $P2638, "$past"
    unless_null $P2638, vivify_1139
    new $P2638, "Undef"
  vivify_1139:
    find_lex $P2639, "$/"
    unless_null $P2639, vivify_1140
    $P2639 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P2640, $P2639["sign"]
    unless_null $P2640, vivify_1141
    new $P2640, "Undef"
  vivify_1141:
    set $S2641, $P2640
    iseq $I2642, $S2641, "-"
    $P2638."negate"($I2642)
.annotate 'line', 709
    find_lex $P2643, "$/"
    find_lex $P2644, "$past"
    unless_null $P2644, vivify_1142
    new $P2644, "Undef"
  vivify_1142:
    $P2645 = $P2643."!make"($P2644)
.annotate 'line', 674
    .return ($P2645)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2602"  :anon :subid("252_1303739789.706") :outer("250_1303739789.706")
    .param pmc param_2604
.annotate 'line', 681
    .const 'Sub' $P2610 = "253_1303739789.706" 
    capture_lex $P2610
    .lex "$_", param_2604
.annotate 'line', 682
    find_lex $P2607, "$_"
    unless_null $P2607, vivify_1121
    $P2607 = root_new ['parrot';'ResizablePMCArray']
  vivify_1121:
    set $P2608, $P2607[1]
    unless_null $P2608, vivify_1122
    new $P2608, "Undef"
  vivify_1122:
    if $P2608, if_2606
.annotate 'line', 704
    find_lex $P2624, "$str"
    unless_null $P2624, vivify_1123
    new $P2624, "Undef"
  vivify_1123:
    find_lex $P2625, "$_"
    unless_null $P2625, vivify_1124
    $P2625 = root_new ['parrot';'ResizablePMCArray']
  vivify_1124:
    set $P2626, $P2625[0]
    unless_null $P2626, vivify_1125
    new $P2626, "Undef"
  vivify_1125:
    concat $P2627, $P2624, $P2626
    store_lex "$str", $P2627
    set $P2605, $P2627
.annotate 'line', 682
    goto if_2606_end
  if_2606:
    .const 'Sub' $P2610 = "253_1303739789.706" 
    capture_lex $P2610
    $P2623 = $P2610()
    set $P2605, $P2623
  if_2606_end:
.annotate 'line', 681
    .return ($P2605)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2609"  :anon :subid("253_1303739789.706") :outer("252_1303739789.706")
.annotate 'line', 683
    new $P2611, "Undef"
    .lex "$a", $P2611
.annotate 'line', 684
    new $P2612, "Undef"
    .lex "$b", $P2612
.annotate 'line', 685
    new $P2613, "Undef"
    .lex "$c", $P2613
.annotate 'line', 683
    find_lex $P2614, "$_"
    unless_null $P2614, vivify_1126
    $P2614 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2615, $P2614[0]
    unless_null $P2615, vivify_1127
    new $P2615, "Undef"
  vivify_1127:
    store_lex "$a", $P2615
.annotate 'line', 684
    find_lex $P2616, "$_"
    unless_null $P2616, vivify_1128
    $P2616 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2617, $P2616[1]
    unless_null $P2617, vivify_1129
    $P2617 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P2618, $P2617[0]
    unless_null $P2618, vivify_1130
    new $P2618, "Undef"
  vivify_1130:
    store_lex "$b", $P2618
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
                                 $P2619 = box $S2
                             
    store_lex "$c", $P2619
.annotate 'line', 702
    find_lex $P2620, "$str"
    unless_null $P2620, vivify_1131
    new $P2620, "Undef"
  vivify_1131:
    find_lex $P2621, "$c"
    unless_null $P2621, vivify_1132
    new $P2621, "Undef"
  vivify_1132:
    concat $P2622, $P2620, $P2621
    store_lex "$str", $P2622
.annotate 'line', 682
    .return ($P2622)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2583"  :anon :subid("251_1303739789.706") :outer("250_1303739789.706")
.annotate 'line', 678
    new $P2585, "Undef"
    .lex "$name", $P2585
    find_lex $P2586, "$/"
    unless_null $P2586, vivify_1135
    $P2586 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P2587, $P2586["name"]
    unless_null $P2587, vivify_1136
    new $P2587, "Undef"
  vivify_1136:
    set $S2588, $P2587
    new $P2589, 'String'
    set $P2589, $S2588
    store_lex "$name", $P2589
.annotate 'line', 679
    get_hll_global $P2590, "GLOBAL"
    nqp_get_package_through_who $P2591, $P2590, "PAST"
    get_who $P2592, $P2591
    set $P2593, $P2592["Regex"]
    find_lex $P2594, "$name"
    unless_null $P2594, vivify_1137
    new $P2594, "Undef"
  vivify_1137:
    find_lex $P2595, "$/"
    unless_null $P2595, vivify_1138
    new $P2595, "Undef"
  vivify_1138:
    $P2596 = $P2593."new"($P2594, "subrule" :named("pasttype"), "method" :named("subtype"), $P2595 :named("node"))
    store_lex "$past", $P2596
.annotate 'line', 677
    .return ($P2596)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("254_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2647
    .param pmc param_2648
.annotate 'line', 712
    .lex "self", param_2647
    .lex "$/", param_2648
.annotate 'line', 713
    $P2649 = root_new ['parrot';'Hash']
    .lex "%mods", $P2649
.annotate 'line', 714
    new $P2650, "Undef"
    .lex "$n", $P2650
.annotate 'line', 713
    find_lex $P2651, "$?PACKAGE"
    get_who $P2652, $P2651
    set $P2653, $P2652["@MODIFIERS"]
    unless_null $P2653, vivify_1143
    $P2653 = root_new ['parrot';'ResizablePMCArray']
  vivify_1143:
    set $P2654, $P2653[0]
    unless_null $P2654, vivify_1144
    new $P2654, "Undef"
  vivify_1144:
    store_lex "%mods", $P2654
.annotate 'line', 714
    find_lex $P2657, "$/"
    unless_null $P2657, vivify_1145
    $P2657 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P2658, $P2657["n"]
    unless_null $P2658, vivify_1146
    $P2658 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
    set $P2659, $P2658[0]
    unless_null $P2659, vivify_1147
    new $P2659, "Undef"
  vivify_1147:
    set $S2660, $P2659
    isgt $I2661, $S2660, ""
    if $I2661, if_2656
    new $P2666, "Integer"
    assign $P2666, 1
    set $P2655, $P2666
    goto if_2656_end
  if_2656:
    find_lex $P2662, "$/"
    unless_null $P2662, vivify_1148
    $P2662 = root_new ['parrot';'Hash']
  vivify_1148:
    set $P2663, $P2662["n"]
    unless_null $P2663, vivify_1149
    $P2663 = root_new ['parrot';'ResizablePMCArray']
  vivify_1149:
    set $P2664, $P2663[0]
    unless_null $P2664, vivify_1150
    new $P2664, "Undef"
  vivify_1150:
    set $N2665, $P2664
    new $P2655, 'Float'
    set $P2655, $N2665
  if_2656_end:
    store_lex "$n", $P2655
.annotate 'line', 715
    find_lex $P2667, "$n"
    unless_null $P2667, vivify_1151
    new $P2667, "Undef"
  vivify_1151:
    find_lex $P2668, "$/"
    unless_null $P2668, vivify_1152
    $P2668 = root_new ['parrot';'Hash']
  vivify_1152:
    set $P2669, $P2668["mod_ident"]
    unless_null $P2669, vivify_1153
    $P2669 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2670, $P2669["sym"]
    unless_null $P2670, vivify_1154
    new $P2670, "Undef"
  vivify_1154:
    set $S2671, $P2670
    find_lex $P2672, "%mods"
    unless_null $P2672, vivify_1155
    $P2672 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2672
  vivify_1155:
    set $P2672[$S2671], $P2667
.annotate 'line', 716
    find_lex $P2673, "$/"
    $P2674 = $P2673."!make"(0)
.annotate 'line', 712
    .return ($P2674)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("255_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2679
    .param pmc param_2680
    .param pmc param_2681
.annotate 'line', 810
    .lex "self", param_2679
    .lex "$past", param_2680
    .lex "$name", param_2681
.annotate 'line', 811
    find_lex $P2683, "$past"
    unless_null $P2683, vivify_1156
    new $P2683, "Undef"
  vivify_1156:
    $S2684 = $P2683."name"()
    isgt $I2685, $S2684, ""
    if $I2685, if_2682
.annotate 'line', 812
    find_lex $P2692, "$past"
    unless_null $P2692, vivify_1157
    new $P2692, "Undef"
  vivify_1157:
    find_lex $P2693, "$name"
    unless_null $P2693, vivify_1158
    new $P2693, "Undef"
  vivify_1158:
    $P2692."name"($P2693)
    goto if_2682_end
  if_2682:
.annotate 'line', 811
    find_lex $P2686, "$past"
    unless_null $P2686, vivify_1159
    new $P2686, "Undef"
  vivify_1159:
    find_lex $P2687, "$name"
    unless_null $P2687, vivify_1160
    new $P2687, "Undef"
  vivify_1160:
    concat $P2688, $P2687, "="
    find_lex $P2689, "$past"
    unless_null $P2689, vivify_1161
    new $P2689, "Undef"
  vivify_1161:
    $S2690 = $P2689."name"()
    concat $P2691, $P2688, $S2690
    $P2686."name"($P2691)
  if_2682_end:
.annotate 'line', 813
    find_lex $P2694, "$past"
    unless_null $P2694, vivify_1162
    new $P2694, "Undef"
  vivify_1162:
    $P2695 = $P2694."subtype"("capture")
.annotate 'line', 810
    .return ($P2695)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("256_1303739789.706") :outer("175_1303739789.706")
    .param pmc param_2697
    .param pmc param_2698
.annotate 'line', 816
    .lex "self", param_2697
    .lex "$/", param_2698
.annotate 'line', 817
    new $P2699, "Undef"
    .lex "$name", $P2699
.annotate 'line', 818
    new $P2700, "Undef"
    .lex "$past", $P2700
.annotate 'line', 817
    find_lex $P2701, "$/"
    unless_null $P2701, vivify_1163
    $P2701 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2702, $P2701["longname"]
    unless_null $P2702, vivify_1164
    new $P2702, "Undef"
  vivify_1164:
    set $S2703, $P2702
    new $P2704, 'String'
    set $P2704, $S2703
    store_lex "$name", $P2704
.annotate 'line', 818
    get_hll_global $P2705, "GLOBAL"
    nqp_get_package_through_who $P2706, $P2705, "PAST"
    get_who $P2707, $P2706
    set $P2708, $P2707["Regex"]
    find_lex $P2709, "$name"
    unless_null $P2709, vivify_1165
    new $P2709, "Undef"
  vivify_1165:
    find_lex $P2710, "$name"
    unless_null $P2710, vivify_1166
    new $P2710, "Undef"
  vivify_1166:
    find_lex $P2711, "$/"
    unless_null $P2711, vivify_1167
    new $P2711, "Undef"
  vivify_1167:
    $P2712 = $P2708."new"($P2709, $P2710 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2711 :named("node"))
    store_lex "$past", $P2712
    find_lex $P2713, "$past"
    unless_null $P2713, vivify_1168
    new $P2713, "Undef"
  vivify_1168:
.annotate 'line', 816
    .return ($P2713)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2829"  :subid("258_1303739789.706") :outer("10_1303739789.706")
.annotate 'line', 825
    .const 'Sub' $P2834 = "259_1303739789.706" 
    capture_lex $P2834
    .lex "$?PACKAGE", $P2831
    .lex "$?CLASS", $P2832
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1169") :outer("258_1303739789.706")
.annotate 'line', 825
    .const 'Sub' $P2830 = "258_1303739789.706" 
    .local pmc block
    set block, $P2830
    .const 'Sub' $P2834 = "259_1303739789.706" 
    capture_lex $P2834
    $P2834()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2833"  :anon :subid("259_1303739789.706") :outer("258_1303739789.706")
.annotate 'line', 825
    nqp_get_sc_object $P2835, "1303739784.973", 3
    .local pmc type_obj
    set type_obj, $P2835
    get_how $P2836, type_obj
    get_hll_global $P2837, ["HLL"], "Compiler"
    $P2836."add_parent"(type_obj, $P2837)
    get_how $P2838, type_obj
    $P2839 = $P2838."compose"(type_obj)
    .return ($P2839)
.end


.HLL "nqp"

.namespace []
.sub "_block2866" :load :anon :subid("260_1303739789.706")
.annotate 'line', 1
    .const 'Sub' $P2868 = "10_1303739789.706" 
    $P2869 = $P2868()
    .return ($P2869)
.end

