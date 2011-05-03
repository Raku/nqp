
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304459371.883")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2353 = "165_1304459371.883" 
    capture_lex $P2353
    .const 'Sub' $P2290 = "156_1304459371.883" 
    capture_lex $P2290
    .const 'Sub' $P2106 = "142_1304459371.883" 
    capture_lex $P2106
    .const 'Sub' $P2044 = "133_1304459371.883" 
    capture_lex $P2044
    .const 'Sub' $P1040 = "77_1304459371.883" 
    capture_lex $P1040
    .const 'Sub' $P722 = "52_1304459371.883" 
    capture_lex $P722
    .const 'Sub' $P509 = "42_1304459371.883" 
    capture_lex $P509
    .const 'Sub' $P249 = "21_1304459371.883" 
    capture_lex $P249
    .const 'Sub' $P26 = "11_1304459371.883" 
    capture_lex $P26
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
    .lex "RoleToRoleApplier", $P16
    .lex "NQPConcreteRoleHOW", $P17
    .lex "RoleToClassApplier", $P18
    .lex "NQPParametricRoleHOW", $P19
    .lex "NQPClassHOW", $P20
    .lex "NQPNativeHOW", $P21
    .lex "NQPAttribute", $P22
    .lex "NQPModuleHOW", $P23
    .lex "EXPORTHOW", $P24
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P26 = "11_1304459371.883" 
    capture_lex $P26
    $P26()
.annotate 'line', 99
    .const 'Sub' $P249 = "21_1304459371.883" 
    capture_lex $P249
    $P249()
.annotate 'line', 244
    .const 'Sub' $P509 = "42_1304459371.883" 
    capture_lex $P509
    $P509()
.annotate 'line', 320
    .const 'Sub' $P722 = "52_1304459371.883" 
    capture_lex $P722
    $P722()
.annotate 'line', 500
    .const 'Sub' $P1040 = "77_1304459371.883" 
    capture_lex $P1040
    $P1040()
.annotate 'line', 943
    .const 'Sub' $P2044 = "133_1304459371.883" 
    capture_lex $P2044
    $P2044()
.annotate 'line', 989
    .const 'Sub' $P2106 = "142_1304459371.883" 
    capture_lex $P2106
    $P2106()
.annotate 'line', 1060
    .const 'Sub' $P2290 = "156_1304459371.883" 
    capture_lex $P2290
    $P2290()
.annotate 'line', 1109
    .const 'Sub' $P2353 = "165_1304459371.883" 
    capture_lex $P2353
    $P2353()
    find_lex $P2382, "@ARGS"
    if $P2382, if_2381
    set $P2380, $P2382
    goto if_2381_end
  if_2381:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2383, "ModuleLoader"
    getinterp $P2384
    set $P2385, $P2384["context"]
    $P2386 = $P2383."set_mainline_module"($P2385)
    set $P2380, $P2386
  if_2381_end:
.annotate 'line', 1
    .return ($P2380)
    .const 'Sub' $P2388 = "166_1304459371.883" 
    .return ($P2388)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post167") :outer("10_1304459371.883")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304459371.883" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2392, "1304459368.206"
    isnull $I2393, $P2392
    if $I2393, if_2391
    .const 'Sub' $P3134 = "10_1304459371.883" 
    $P3135 = $P3134."get_lexinfo"()
    nqp_get_sc_object $P3136, "1304459368.206", 0
    $P3135."set_static_lexpad_value"("GLOBALish", $P3136)
    .const 'Sub' $P3137 = "10_1304459371.883" 
    $P3138 = $P3137."get_lexinfo"()
    $P3138."finish_static_lexpad"()
    .const 'Sub' $P3139 = "10_1304459371.883" 
    $P3140 = $P3139."get_lexinfo"()
    nqp_get_sc_object $P3141, "1304459368.206", 0
    $P3140."set_static_lexpad_value"("$?PACKAGE", $P3141)
    .const 'Sub' $P3142 = "10_1304459371.883" 
    $P3143 = $P3142."get_lexinfo"()
    $P3143."finish_static_lexpad"()
    .const 'Sub' $P3144 = "10_1304459371.883" 
    $P3145 = $P3144."get_lexinfo"()
    nqp_get_sc_object $P3146, "1304459368.206", 1
    $P3145."set_static_lexpad_value"("RoleToRoleApplier", $P3146)
    .const 'Sub' $P3147 = "10_1304459371.883" 
    $P3148 = $P3147."get_lexinfo"()
    $P3148."finish_static_lexpad"()
    nqp_get_sc_object $P3149, "1304459368.206", 2
    .const 'Sub' $P3150 = "12_1304459371.883" 
    assign $P3149, $P3150
    .const 'Sub' $P3151 = "11_1304459371.883" 
    $P3152 = $P3151."get_lexinfo"()
    nqp_get_sc_object $P3153, "1304459368.206", 1
    $P3152."set_static_lexpad_value"("$?PACKAGE", $P3153)
    .const 'Sub' $P3154 = "11_1304459371.883" 
    $P3155 = $P3154."get_lexinfo"()
    $P3155."finish_static_lexpad"()
    .const 'Sub' $P3156 = "11_1304459371.883" 
    $P3157 = $P3156."get_lexinfo"()
    nqp_get_sc_object $P3158, "1304459368.206", 1
    $P3157."set_static_lexpad_value"("$?CLASS", $P3158)
    .const 'Sub' $P3159 = "11_1304459371.883" 
    $P3160 = $P3159."get_lexinfo"()
    $P3160."finish_static_lexpad"()
    .const 'Sub' $P3161 = "10_1304459371.883" 
    $P3162 = $P3161."get_lexinfo"()
    nqp_get_sc_object $P3163, "1304459368.206", 3
    $P3162."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3163)
    .const 'Sub' $P3164 = "10_1304459371.883" 
    $P3165 = $P3164."get_lexinfo"()
    $P3165."finish_static_lexpad"()
    nqp_get_sc_object $P3166, "1304459368.206", 4
    .const 'Sub' $P3167 = "22_1304459371.883" 
    assign $P3166, $P3167
    nqp_get_sc_object $P3168, "1304459368.206", 5
    .const 'Sub' $P3169 = "23_1304459371.883" 
    assign $P3168, $P3169
    nqp_get_sc_object $P3170, "1304459368.206", 6
    .const 'Sub' $P3171 = "24_1304459371.883" 
    assign $P3170, $P3171
    nqp_get_sc_object $P3172, "1304459368.206", 7
    .const 'Sub' $P3173 = "25_1304459371.883" 
    assign $P3172, $P3173
    nqp_get_sc_object $P3174, "1304459368.206", 8
    .const 'Sub' $P3175 = "26_1304459371.883" 
    assign $P3174, $P3175
    nqp_get_sc_object $P3176, "1304459368.206", 9
    .const 'Sub' $P3177 = "27_1304459371.883" 
    assign $P3176, $P3177
    nqp_get_sc_object $P3178, "1304459368.206", 10
    .const 'Sub' $P3179 = "28_1304459371.883" 
    assign $P3178, $P3179
    nqp_get_sc_object $P3180, "1304459368.206", 11
    .const 'Sub' $P3181 = "29_1304459371.883" 
    assign $P3180, $P3181
    nqp_get_sc_object $P3182, "1304459368.206", 12
    .const 'Sub' $P3183 = "30_1304459371.883" 
    assign $P3182, $P3183
    nqp_get_sc_object $P3184, "1304459368.206", 13
    .const 'Sub' $P3185 = "31_1304459371.883" 
    assign $P3184, $P3185
    nqp_get_sc_object $P3186, "1304459368.206", 14
    .const 'Sub' $P3187 = "33_1304459371.883" 
    assign $P3186, $P3187
    nqp_get_sc_object $P3188, "1304459368.206", 15
    .const 'Sub' $P3189 = "35_1304459371.883" 
    assign $P3188, $P3189
    nqp_get_sc_object $P3190, "1304459368.206", 16
    .const 'Sub' $P3191 = "36_1304459371.883" 
    assign $P3190, $P3191
    nqp_get_sc_object $P3192, "1304459368.206", 17
    .const 'Sub' $P3193 = "37_1304459371.883" 
    assign $P3192, $P3193
    nqp_get_sc_object $P3194, "1304459368.206", 18
    .const 'Sub' $P3195 = "38_1304459371.883" 
    assign $P3194, $P3195
    nqp_get_sc_object $P3196, "1304459368.206", 19
    .const 'Sub' $P3197 = "40_1304459371.883" 
    assign $P3196, $P3197
    nqp_get_sc_object $P3198, "1304459368.206", 20
    .const 'Sub' $P3199 = "41_1304459371.883" 
    assign $P3198, $P3199
    .const 'Sub' $P3200 = "21_1304459371.883" 
    $P3201 = $P3200."get_lexinfo"()
    nqp_get_sc_object $P3202, "1304459368.206", 3
    $P3201."set_static_lexpad_value"("$?PACKAGE", $P3202)
    .const 'Sub' $P3203 = "21_1304459371.883" 
    $P3204 = $P3203."get_lexinfo"()
    $P3204."finish_static_lexpad"()
    .const 'Sub' $P3205 = "21_1304459371.883" 
    $P3206 = $P3205."get_lexinfo"()
    nqp_get_sc_object $P3207, "1304459368.206", 3
    $P3206."set_static_lexpad_value"("$?CLASS", $P3207)
    .const 'Sub' $P3208 = "21_1304459371.883" 
    $P3209 = $P3208."get_lexinfo"()
    $P3209."finish_static_lexpad"()
    .const 'Sub' $P3210 = "10_1304459371.883" 
    $P3211 = $P3210."get_lexinfo"()
    nqp_get_sc_object $P3212, "1304459368.206", 21
    $P3211."set_static_lexpad_value"("RoleToClassApplier", $P3212)
    .const 'Sub' $P3213 = "10_1304459371.883" 
    $P3214 = $P3213."get_lexinfo"()
    $P3214."finish_static_lexpad"()
    nqp_get_sc_object $P3215, "1304459368.206", 22
    .const 'Sub' $P3216 = "47_1304459371.883" 
    assign $P3215, $P3216
    .const 'Sub' $P3217 = "42_1304459371.883" 
    $P3218 = $P3217."get_lexinfo"()
    nqp_get_sc_object $P3219, "1304459368.206", 21
    $P3218."set_static_lexpad_value"("$?PACKAGE", $P3219)
    .const 'Sub' $P3220 = "42_1304459371.883" 
    $P3221 = $P3220."get_lexinfo"()
    $P3221."finish_static_lexpad"()
    .const 'Sub' $P3222 = "42_1304459371.883" 
    $P3223 = $P3222."get_lexinfo"()
    nqp_get_sc_object $P3224, "1304459368.206", 21
    $P3223."set_static_lexpad_value"("$?CLASS", $P3224)
    .const 'Sub' $P3225 = "42_1304459371.883" 
    $P3226 = $P3225."get_lexinfo"()
    $P3226."finish_static_lexpad"()
    .const 'Sub' $P3227 = "10_1304459371.883" 
    $P3228 = $P3227."get_lexinfo"()
    nqp_get_sc_object $P3229, "1304459368.206", 23
    $P3228."set_static_lexpad_value"("NQPParametricRoleHOW", $P3229)
    .const 'Sub' $P3230 = "10_1304459371.883" 
    $P3231 = $P3230."get_lexinfo"()
    $P3231."finish_static_lexpad"()
    nqp_get_sc_object $P3232, "1304459368.206", 24
    .const 'Sub' $P3233 = "54_1304459371.883" 
    assign $P3232, $P3233
    nqp_get_sc_object $P3234, "1304459368.206", 25
    .const 'Sub' $P3235 = "55_1304459371.883" 
    assign $P3234, $P3235
    nqp_get_sc_object $P3236, "1304459368.206", 26
    .const 'Sub' $P3237 = "56_1304459371.883" 
    assign $P3236, $P3237
    nqp_get_sc_object $P3238, "1304459368.206", 27
    .const 'Sub' $P3239 = "57_1304459371.883" 
    assign $P3238, $P3239
    nqp_get_sc_object $P3240, "1304459368.206", 28
    .const 'Sub' $P3241 = "58_1304459371.883" 
    assign $P3240, $P3241
    nqp_get_sc_object $P3242, "1304459368.206", 29
    .const 'Sub' $P3243 = "59_1304459371.883" 
    assign $P3242, $P3243
    nqp_get_sc_object $P3244, "1304459368.206", 30
    .const 'Sub' $P3245 = "60_1304459371.883" 
    assign $P3244, $P3245
    nqp_get_sc_object $P3246, "1304459368.206", 31
    .const 'Sub' $P3247 = "61_1304459371.883" 
    assign $P3246, $P3247
    nqp_get_sc_object $P3248, "1304459368.206", 32
    .const 'Sub' $P3249 = "62_1304459371.883" 
    assign $P3248, $P3249
    nqp_get_sc_object $P3250, "1304459368.206", 33
    .const 'Sub' $P3251 = "63_1304459371.883" 
    assign $P3250, $P3251
    nqp_get_sc_object $P3252, "1304459368.206", 34
    .const 'Sub' $P3253 = "64_1304459371.883" 
    assign $P3252, $P3253
    nqp_get_sc_object $P3254, "1304459368.206", 35
    .const 'Sub' $P3255 = "65_1304459371.883" 
    assign $P3254, $P3255
    nqp_get_sc_object $P3256, "1304459368.206", 36
    .const 'Sub' $P3257 = "70_1304459371.883" 
    assign $P3256, $P3257
    nqp_get_sc_object $P3258, "1304459368.206", 37
    .const 'Sub' $P3259 = "72_1304459371.883" 
    assign $P3258, $P3259
    nqp_get_sc_object $P3260, "1304459368.206", 38
    .const 'Sub' $P3261 = "73_1304459371.883" 
    assign $P3260, $P3261
    nqp_get_sc_object $P3262, "1304459368.206", 39
    .const 'Sub' $P3263 = "74_1304459371.883" 
    assign $P3262, $P3263
    nqp_get_sc_object $P3264, "1304459368.206", 40
    .const 'Sub' $P3265 = "76_1304459371.883" 
    assign $P3264, $P3265
    .const 'Sub' $P3266 = "52_1304459371.883" 
    $P3267 = $P3266."get_lexinfo"()
    nqp_get_sc_object $P3268, "1304459368.206", 23
    $P3267."set_static_lexpad_value"("$?PACKAGE", $P3268)
    .const 'Sub' $P3269 = "52_1304459371.883" 
    $P3270 = $P3269."get_lexinfo"()
    $P3270."finish_static_lexpad"()
    .const 'Sub' $P3271 = "52_1304459371.883" 
    $P3272 = $P3271."get_lexinfo"()
    nqp_get_sc_object $P3273, "1304459368.206", 23
    $P3272."set_static_lexpad_value"("$?CLASS", $P3273)
    .const 'Sub' $P3274 = "52_1304459371.883" 
    $P3275 = $P3274."get_lexinfo"()
    $P3275."finish_static_lexpad"()
    .const 'Sub' $P3276 = "10_1304459371.883" 
    $P3277 = $P3276."get_lexinfo"()
    nqp_get_sc_object $P3278, "1304459368.206", 41
    $P3277."set_static_lexpad_value"("NQPClassHOW", $P3278)
    .const 'Sub' $P3279 = "10_1304459371.883" 
    $P3280 = $P3279."get_lexinfo"()
    $P3280."finish_static_lexpad"()
    nqp_get_sc_object $P3281, "1304459368.206", 42
    .const 'Sub' $P3282 = "88_1304459371.883" 
    assign $P3281, $P3282
    nqp_get_sc_object $P3283, "1304459368.206", 43
    .const 'Sub' $P3284 = "89_1304459371.883" 
    assign $P3283, $P3284
    nqp_get_sc_object $P3285, "1304459368.206", 44
    .const 'Sub' $P3286 = "90_1304459371.883" 
    assign $P3285, $P3286
    nqp_get_sc_object $P3287, "1304459368.206", 45
    .const 'Sub' $P3288 = "91_1304459371.883" 
    assign $P3287, $P3288
    nqp_get_sc_object $P3289, "1304459368.206", 46
    .const 'Sub' $P3290 = "92_1304459371.883" 
    assign $P3289, $P3290
    nqp_get_sc_object $P3291, "1304459368.206", 47
    .const 'Sub' $P3292 = "93_1304459371.883" 
    assign $P3291, $P3292
    nqp_get_sc_object $P3293, "1304459368.206", 48
    .const 'Sub' $P3294 = "94_1304459371.883" 
    assign $P3293, $P3294
    nqp_get_sc_object $P3295, "1304459368.206", 49
    .const 'Sub' $P3296 = "96_1304459371.883" 
    assign $P3295, $P3296
    nqp_get_sc_object $P3297, "1304459368.206", 50
    .const 'Sub' $P3298 = "97_1304459371.883" 
    assign $P3297, $P3298
    nqp_get_sc_object $P3299, "1304459368.206", 51
    .const 'Sub' $P3300 = "99_1304459371.883" 
    assign $P3299, $P3300
    nqp_get_sc_object $P3301, "1304459368.206", 52
    .const 'Sub' $P3302 = "100_1304459371.883" 
    assign $P3301, $P3302
    nqp_get_sc_object $P3303, "1304459368.206", 53
    .const 'Sub' $P3304 = "104_1304459371.883" 
    assign $P3303, $P3304
    nqp_get_sc_object $P3305, "1304459368.206", 54
    .const 'Sub' $P3306 = "109_1304459371.883" 
    assign $P3305, $P3306
    nqp_get_sc_object $P3307, "1304459368.206", 55
    .const 'Sub' $P3308 = "112_1304459371.883" 
    assign $P3307, $P3308
    nqp_get_sc_object $P3309, "1304459368.206", 56
    .const 'Sub' $P3310 = "115_1304459371.883" 
    assign $P3309, $P3310
    nqp_get_sc_object $P3311, "1304459368.206", 57
    .const 'Sub' $P3312 = "118_1304459371.883" 
    assign $P3311, $P3312
    nqp_get_sc_object $P3313, "1304459368.206", 58
    .const 'Sub' $P3314 = "119_1304459371.883" 
    assign $P3313, $P3314
    nqp_get_sc_object $P3315, "1304459368.206", 59
    .const 'Sub' $P3316 = "120_1304459371.883" 
    assign $P3315, $P3316
    nqp_get_sc_object $P3317, "1304459368.206", 60
    .const 'Sub' $P3318 = "122_1304459371.883" 
    assign $P3317, $P3318
    nqp_get_sc_object $P3319, "1304459368.206", 61
    .const 'Sub' $P3320 = "123_1304459371.883" 
    assign $P3319, $P3320
    nqp_get_sc_object $P3321, "1304459368.206", 62
    .const 'Sub' $P3322 = "124_1304459371.883" 
    assign $P3321, $P3322
    nqp_get_sc_object $P3323, "1304459368.206", 63
    .const 'Sub' $P3324 = "126_1304459371.883" 
    assign $P3323, $P3324
    nqp_get_sc_object $P3325, "1304459368.206", 64
    .const 'Sub' $P3326 = "127_1304459371.883" 
    assign $P3325, $P3326
    nqp_get_sc_object $P3327, "1304459368.206", 65
    .const 'Sub' $P3328 = "128_1304459371.883" 
    assign $P3327, $P3328
    nqp_get_sc_object $P3329, "1304459368.206", 66
    .const 'Sub' $P3330 = "129_1304459371.883" 
    assign $P3329, $P3330
    nqp_get_sc_object $P3331, "1304459368.206", 67
    .const 'Sub' $P3332 = "131_1304459371.883" 
    assign $P3331, $P3332
    .const 'Sub' $P3333 = "77_1304459371.883" 
    $P3334 = $P3333."get_lexinfo"()
    nqp_get_sc_object $P3335, "1304459368.206", 41
    $P3334."set_static_lexpad_value"("$?PACKAGE", $P3335)
    .const 'Sub' $P3336 = "77_1304459371.883" 
    $P3337 = $P3336."get_lexinfo"()
    $P3337."finish_static_lexpad"()
    .const 'Sub' $P3338 = "77_1304459371.883" 
    $P3339 = $P3338."get_lexinfo"()
    nqp_get_sc_object $P3340, "1304459368.206", 41
    $P3339."set_static_lexpad_value"("$?CLASS", $P3340)
    .const 'Sub' $P3341 = "77_1304459371.883" 
    $P3342 = $P3341."get_lexinfo"()
    $P3342."finish_static_lexpad"()
    .const 'Sub' $P3343 = "10_1304459371.883" 
    $P3344 = $P3343."get_lexinfo"()
    nqp_get_sc_object $P3345, "1304459368.206", 68
    $P3344."set_static_lexpad_value"("NQPNativeHOW", $P3345)
    .const 'Sub' $P3346 = "10_1304459371.883" 
    $P3347 = $P3346."get_lexinfo"()
    $P3347."finish_static_lexpad"()
    nqp_get_sc_object $P3348, "1304459368.206", 69
    .const 'Sub' $P3349 = "134_1304459371.883" 
    assign $P3348, $P3349
    nqp_get_sc_object $P3350, "1304459368.206", 70
    .const 'Sub' $P3351 = "135_1304459371.883" 
    assign $P3350, $P3351
    nqp_get_sc_object $P3352, "1304459368.206", 71
    .const 'Sub' $P3353 = "136_1304459371.883" 
    assign $P3352, $P3353
    nqp_get_sc_object $P3354, "1304459368.206", 72
    .const 'Sub' $P3355 = "137_1304459371.883" 
    assign $P3354, $P3355
    nqp_get_sc_object $P3356, "1304459368.206", 73
    .const 'Sub' $P3357 = "138_1304459371.883" 
    assign $P3356, $P3357
    nqp_get_sc_object $P3358, "1304459368.206", 74
    .const 'Sub' $P3359 = "139_1304459371.883" 
    assign $P3358, $P3359
    nqp_get_sc_object $P3360, "1304459368.206", 75
    .const 'Sub' $P3361 = "140_1304459371.883" 
    assign $P3360, $P3361
    nqp_get_sc_object $P3362, "1304459368.206", 76
    .const 'Sub' $P3363 = "141_1304459371.883" 
    assign $P3362, $P3363
    .const 'Sub' $P3364 = "133_1304459371.883" 
    $P3365 = $P3364."get_lexinfo"()
    nqp_get_sc_object $P3366, "1304459368.206", 68
    $P3365."set_static_lexpad_value"("$?PACKAGE", $P3366)
    .const 'Sub' $P3367 = "133_1304459371.883" 
    $P3368 = $P3367."get_lexinfo"()
    $P3368."finish_static_lexpad"()
    .const 'Sub' $P3369 = "133_1304459371.883" 
    $P3370 = $P3369."get_lexinfo"()
    nqp_get_sc_object $P3371, "1304459368.206", 68
    $P3370."set_static_lexpad_value"("$?CLASS", $P3371)
    .const 'Sub' $P3372 = "133_1304459371.883" 
    $P3373 = $P3372."get_lexinfo"()
    $P3373."finish_static_lexpad"()
    .const 'Sub' $P3374 = "10_1304459371.883" 
    $P3375 = $P3374."get_lexinfo"()
    nqp_get_sc_object $P3376, "1304459368.206", 77
    $P3375."set_static_lexpad_value"("NQPAttribute", $P3376)
    .const 'Sub' $P3377 = "10_1304459371.883" 
    $P3378 = $P3377."get_lexinfo"()
    $P3378."finish_static_lexpad"()
    nqp_get_sc_object $P3379, "1304459368.206", 78
    .const 'Sub' $P3380 = "145_1304459371.883" 
    assign $P3379, $P3380
    nqp_get_sc_object $P3381, "1304459368.206", 79
    .const 'Sub' $P3382 = "146_1304459371.883" 
    assign $P3381, $P3382
    nqp_get_sc_object $P3383, "1304459368.206", 80
    .const 'Sub' $P3384 = "147_1304459371.883" 
    assign $P3383, $P3384
    nqp_get_sc_object $P3385, "1304459368.206", 81
    .const 'Sub' $P3386 = "148_1304459371.883" 
    assign $P3385, $P3386
    nqp_get_sc_object $P3387, "1304459368.206", 82
    .const 'Sub' $P3388 = "149_1304459371.883" 
    assign $P3387, $P3388
    nqp_get_sc_object $P3389, "1304459368.206", 83
    .const 'Sub' $P3390 = "150_1304459371.883" 
    assign $P3389, $P3390
    nqp_get_sc_object $P3391, "1304459368.206", 84
    .const 'Sub' $P3392 = "155_1304459371.883" 
    assign $P3391, $P3392
    .const 'Sub' $P3393 = "142_1304459371.883" 
    $P3394 = $P3393."get_lexinfo"()
    nqp_get_sc_object $P3395, "1304459368.206", 77
    $P3394."set_static_lexpad_value"("$?PACKAGE", $P3395)
    .const 'Sub' $P3396 = "142_1304459371.883" 
    $P3397 = $P3396."get_lexinfo"()
    $P3397."finish_static_lexpad"()
    .const 'Sub' $P3398 = "142_1304459371.883" 
    $P3399 = $P3398."get_lexinfo"()
    nqp_get_sc_object $P3400, "1304459368.206", 77
    $P3399."set_static_lexpad_value"("$?CLASS", $P3400)
    .const 'Sub' $P3401 = "142_1304459371.883" 
    $P3402 = $P3401."get_lexinfo"()
    $P3402."finish_static_lexpad"()
    .const 'Sub' $P3403 = "10_1304459371.883" 
    $P3404 = $P3403."get_lexinfo"()
    nqp_get_sc_object $P3405, "1304459368.206", 85
    $P3404."set_static_lexpad_value"("NQPModuleHOW", $P3405)
    .const 'Sub' $P3406 = "10_1304459371.883" 
    $P3407 = $P3406."get_lexinfo"()
    $P3407."finish_static_lexpad"()
    nqp_get_sc_object $P3408, "1304459368.206", 86
    .const 'Sub' $P3409 = "157_1304459371.883" 
    assign $P3408, $P3409
    nqp_get_sc_object $P3410, "1304459368.206", 87
    .const 'Sub' $P3411 = "158_1304459371.883" 
    assign $P3410, $P3411
    nqp_get_sc_object $P3412, "1304459368.206", 88
    .const 'Sub' $P3413 = "159_1304459371.883" 
    assign $P3412, $P3413
    nqp_get_sc_object $P3414, "1304459368.206", 89
    .const 'Sub' $P3415 = "160_1304459371.883" 
    assign $P3414, $P3415
    nqp_get_sc_object $P3416, "1304459368.206", 90
    .const 'Sub' $P3417 = "161_1304459371.883" 
    assign $P3416, $P3417
    nqp_get_sc_object $P3418, "1304459368.206", 91
    .const 'Sub' $P3419 = "162_1304459371.883" 
    assign $P3418, $P3419
    nqp_get_sc_object $P3420, "1304459368.206", 92
    .const 'Sub' $P3421 = "163_1304459371.883" 
    assign $P3420, $P3421
    nqp_get_sc_object $P3422, "1304459368.206", 93
    .const 'Sub' $P3423 = "164_1304459371.883" 
    assign $P3422, $P3423
    .const 'Sub' $P3424 = "156_1304459371.883" 
    $P3425 = $P3424."get_lexinfo"()
    nqp_get_sc_object $P3426, "1304459368.206", 85
    $P3425."set_static_lexpad_value"("$?PACKAGE", $P3426)
    .const 'Sub' $P3427 = "156_1304459371.883" 
    $P3428 = $P3427."get_lexinfo"()
    $P3428."finish_static_lexpad"()
    .const 'Sub' $P3429 = "156_1304459371.883" 
    $P3430 = $P3429."get_lexinfo"()
    nqp_get_sc_object $P3431, "1304459368.206", 85
    $P3430."set_static_lexpad_value"("$?CLASS", $P3431)
    .const 'Sub' $P3432 = "156_1304459371.883" 
    $P3433 = $P3432."get_lexinfo"()
    $P3433."finish_static_lexpad"()
    .const 'Sub' $P3434 = "10_1304459371.883" 
    $P3435 = $P3434."get_lexinfo"()
    nqp_get_sc_object $P3436, "1304459368.206", 94
    $P3435."set_static_lexpad_value"("EXPORTHOW", $P3436)
    .const 'Sub' $P3437 = "10_1304459371.883" 
    $P3438 = $P3437."get_lexinfo"()
    $P3438."finish_static_lexpad"()
    .const 'Sub' $P3439 = "165_1304459371.883" 
    $P3440 = $P3439."get_lexinfo"()
    nqp_get_sc_object $P3441, "1304459368.206", 94
    $P3440."set_static_lexpad_value"("$?PACKAGE", $P3441)
    .const 'Sub' $P3442 = "165_1304459371.883" 
    $P3443 = $P3442."get_lexinfo"()
    $P3443."finish_static_lexpad"()
    .const 'Sub' $P3444 = "165_1304459371.883" 
    $P3445 = $P3444."get_lexinfo"()
    nqp_get_sc_object $P3446, "1304459368.206", 94
    $P3445."set_static_lexpad_value"("$?CLASS", $P3446)
    .const 'Sub' $P3447 = "165_1304459371.883" 
    $P3448 = $P3447."get_lexinfo"()
    $P3448."finish_static_lexpad"()
    goto if_2391_end
  if_2391:
    nqp_dynop_setup 
    getinterp $P2394
    get_class $P2395, "LexPad"
    get_class $P2396, "NQPLexPad"
    $P2394."hll_map"($P2395, $P2396)
    nqp_create_sc $P2397, "1304459368.206"
    .local pmc cur_sc
    set cur_sc, $P2397
    nqp_get_sc_object $P2398, "__6MODEL_CORE__", 0
    $P2399 = $P2398."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2399, cur_sc
    nqp_set_sc_object "1304459368.206", 0, $P2399
    .const 'Sub' $P2400 = "10_1304459371.883" 
    $P2401 = $P2400."get_lexinfo"()
    nqp_get_sc_object $P2402, "1304459368.206", 0
    $P2401."set_static_lexpad_value"("GLOBALish", $P2402)
    .const 'Sub' $P2403 = "10_1304459371.883" 
    $P2404 = $P2403."get_lexinfo"()
    $P2404."finish_static_lexpad"()
    .const 'Sub' $P2405 = "10_1304459371.883" 
    $P2406 = $P2405."get_lexinfo"()
    nqp_get_sc_object $P2407, "1304459368.206", 0
    $P2406."set_static_lexpad_value"("$?PACKAGE", $P2407)
    .const 'Sub' $P2408 = "10_1304459371.883" 
    $P2409 = $P2408."get_lexinfo"()
    $P2409."finish_static_lexpad"()
    nqp_get_sc_object $P2410, "__6MODEL_CORE__", 0
    $P2411 = $P2410."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2411, cur_sc
    nqp_set_sc_object "1304459368.206", 1, $P2411
    nqp_get_sc_object $P2412, "1304459368.206", 1
    nqp_get_sc_object $P2413, "1304459368.206", 0
    get_who $P2414, $P2413
    set $P2414["RoleToRoleApplier"], $P2412
    .const 'Sub' $P2415 = "10_1304459371.883" 
    $P2416 = $P2415."get_lexinfo"()
    nqp_get_sc_object $P2417, "1304459368.206", 1
    $P2416."set_static_lexpad_value"("RoleToRoleApplier", $P2417)
    .const 'Sub' $P2418 = "10_1304459371.883" 
    $P2419 = $P2418."get_lexinfo"()
    $P2419."finish_static_lexpad"()
    nqp_get_sc_object $P2420, "1304459368.206", 1
    get_how $P2421, $P2420
    nqp_get_sc_object $P2422, "1304459368.206", 1
    .const 'Sub' $P2423 = "12_1304459371.883" 
    $P2421."add_method"($P2422, "apply", $P2423)
    .const 'Sub' $P2424 = "11_1304459371.883" 
    $P2425 = $P2424."get_lexinfo"()
    nqp_get_sc_object $P2426, "1304459368.206", 1
    $P2425."set_static_lexpad_value"("$?PACKAGE", $P2426)
    .const 'Sub' $P2427 = "11_1304459371.883" 
    $P2428 = $P2427."get_lexinfo"()
    $P2428."finish_static_lexpad"()
    .const 'Sub' $P2429 = "11_1304459371.883" 
    $P2430 = $P2429."get_lexinfo"()
    nqp_get_sc_object $P2431, "1304459368.206", 1
    $P2430."set_static_lexpad_value"("$?CLASS", $P2431)
    .const 'Sub' $P2432 = "11_1304459371.883" 
    $P2433 = $P2432."get_lexinfo"()
    $P2433."finish_static_lexpad"()
    nqp_get_sc_object $P2434, "1304459368.206", 1
    get_how $P2435, $P2434
    nqp_get_sc_object $P2436, "1304459368.206", 1
    $P2435."compose"($P2436)
    nqp_get_sc_object $P2437, "__6MODEL_CORE__", 0
    $P2438 = $P2437."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2438, cur_sc
    nqp_set_sc_object "1304459368.206", 3, $P2438
    nqp_get_sc_object $P2439, "1304459368.206", 3
    nqp_get_sc_object $P2440, "1304459368.206", 0
    get_who $P2441, $P2440
    set $P2441["NQPConcreteRoleHOW"], $P2439
    .const 'Sub' $P2442 = "10_1304459371.883" 
    $P2443 = $P2442."get_lexinfo"()
    nqp_get_sc_object $P2444, "1304459368.206", 3
    $P2443."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2444)
    .const 'Sub' $P2445 = "10_1304459371.883" 
    $P2446 = $P2445."get_lexinfo"()
    $P2446."finish_static_lexpad"()
    nqp_get_sc_object $P2447, "1304459368.206", 3
    get_how $P2448, $P2447
    nqp_get_sc_object $P2449, "1304459368.206", 3
    nqp_get_sc_object $P2450, "__6MODEL_CORE__", 2
    $P2451 = $P2450."new"("$!name" :named("name"))
    $P2448."add_attribute"($P2449, $P2451)
    nqp_get_sc_object $P2452, "1304459368.206", 3
    get_how $P2453, $P2452
    nqp_get_sc_object $P2454, "1304459368.206", 3
    nqp_get_sc_object $P2455, "__6MODEL_CORE__", 2
    $P2456 = $P2455."new"("$!instance_of" :named("name"))
    $P2453."add_attribute"($P2454, $P2456)
    nqp_get_sc_object $P2457, "1304459368.206", 3
    get_how $P2458, $P2457
    nqp_get_sc_object $P2459, "1304459368.206", 3
    nqp_get_sc_object $P2460, "__6MODEL_CORE__", 2
    $P2461 = $P2460."new"("%!attributes" :named("name"))
    $P2458."add_attribute"($P2459, $P2461)
    nqp_get_sc_object $P2462, "1304459368.206", 3
    get_how $P2463, $P2462
    nqp_get_sc_object $P2464, "1304459368.206", 3
    nqp_get_sc_object $P2465, "__6MODEL_CORE__", 2
    $P2466 = $P2465."new"("%!methods" :named("name"))
    $P2463."add_attribute"($P2464, $P2466)
    nqp_get_sc_object $P2467, "1304459368.206", 3
    get_how $P2468, $P2467
    nqp_get_sc_object $P2469, "1304459368.206", 3
    nqp_get_sc_object $P2470, "__6MODEL_CORE__", 2
    $P2471 = $P2470."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2468."add_attribute"($P2469, $P2471)
    nqp_get_sc_object $P2472, "1304459368.206", 3
    get_how $P2473, $P2472
    nqp_get_sc_object $P2474, "1304459368.206", 3
    nqp_get_sc_object $P2475, "__6MODEL_CORE__", 2
    $P2476 = $P2475."new"("@!collisions" :named("name"))
    $P2473."add_attribute"($P2474, $P2476)
    nqp_get_sc_object $P2477, "1304459368.206", 3
    get_how $P2478, $P2477
    nqp_get_sc_object $P2479, "1304459368.206", 3
    nqp_get_sc_object $P2480, "__6MODEL_CORE__", 2
    $P2481 = $P2480."new"("@!roles" :named("name"))
    $P2478."add_attribute"($P2479, $P2481)
    nqp_get_sc_object $P2482, "1304459368.206", 3
    get_how $P2483, $P2482
    nqp_get_sc_object $P2484, "1304459368.206", 3
    nqp_get_sc_object $P2485, "__6MODEL_CORE__", 2
    $P2486 = $P2485."new"("@!done" :named("name"))
    $P2483."add_attribute"($P2484, $P2486)
    nqp_get_sc_object $P2487, "1304459368.206", 3
    get_how $P2488, $P2487
    nqp_get_sc_object $P2489, "1304459368.206", 3
    nqp_get_sc_object $P2490, "__6MODEL_CORE__", 2
    $P2491 = $P2490."new"("$!composed" :named("name"))
    $P2488."add_attribute"($P2489, $P2491)
    nqp_get_sc_object $P2492, "1304459368.206", 3
    get_how $P2493, $P2492
    nqp_get_sc_object $P2494, "1304459368.206", 3
    .const 'Sub' $P2495 = "22_1304459371.883" 
    $P2493."add_method"($P2494, "new", $P2495)
    nqp_get_sc_object $P2496, "1304459368.206", 3
    get_how $P2497, $P2496
    nqp_get_sc_object $P2498, "1304459368.206", 3
    .const 'Sub' $P2499 = "23_1304459371.883" 
    $P2497."add_method"($P2498, "BUILD", $P2499)
    nqp_get_sc_object $P2500, "1304459368.206", 3
    get_how $P2501, $P2500
    nqp_get_sc_object $P2502, "1304459368.206", 3
    .const 'Sub' $P2503 = "24_1304459371.883" 
    $P2501."add_method"($P2502, "new_type", $P2503)
    nqp_get_sc_object $P2504, "1304459368.206", 3
    get_how $P2505, $P2504
    nqp_get_sc_object $P2506, "1304459368.206", 3
    .const 'Sub' $P2507 = "25_1304459371.883" 
    $P2505."add_method"($P2506, "add_method", $P2507)
    nqp_get_sc_object $P2508, "1304459368.206", 3
    get_how $P2509, $P2508
    nqp_get_sc_object $P2510, "1304459368.206", 3
    .const 'Sub' $P2511 = "26_1304459371.883" 
    $P2509."add_method"($P2510, "add_multi_method", $P2511)
    nqp_get_sc_object $P2512, "1304459368.206", 3
    get_how $P2513, $P2512
    nqp_get_sc_object $P2514, "1304459368.206", 3
    .const 'Sub' $P2515 = "27_1304459371.883" 
    $P2513."add_method"($P2514, "add_attribute", $P2515)
    nqp_get_sc_object $P2516, "1304459368.206", 3
    get_how $P2517, $P2516
    nqp_get_sc_object $P2518, "1304459368.206", 3
    .const 'Sub' $P2519 = "28_1304459371.883" 
    $P2517."add_method"($P2518, "add_parent", $P2519)
    nqp_get_sc_object $P2520, "1304459368.206", 3
    get_how $P2521, $P2520
    nqp_get_sc_object $P2522, "1304459368.206", 3
    .const 'Sub' $P2523 = "29_1304459371.883" 
    $P2521."add_method"($P2522, "add_role", $P2523)
    nqp_get_sc_object $P2524, "1304459368.206", 3
    get_how $P2525, $P2524
    nqp_get_sc_object $P2526, "1304459368.206", 3
    .const 'Sub' $P2527 = "30_1304459371.883" 
    $P2525."add_method"($P2526, "add_collision", $P2527)
    nqp_get_sc_object $P2528, "1304459368.206", 3
    get_how $P2529, $P2528
    nqp_get_sc_object $P2530, "1304459368.206", 3
    .const 'Sub' $P2531 = "31_1304459371.883" 
    $P2529."add_method"($P2530, "compose", $P2531)
    nqp_get_sc_object $P2532, "1304459368.206", 3
    get_how $P2533, $P2532
    nqp_get_sc_object $P2534, "1304459368.206", 3
    .const 'Sub' $P2535 = "33_1304459371.883" 
    $P2533."add_method"($P2534, "methods", $P2535)
    nqp_get_sc_object $P2536, "1304459368.206", 3
    get_how $P2537, $P2536
    nqp_get_sc_object $P2538, "1304459368.206", 3
    .const 'Sub' $P2539 = "35_1304459371.883" 
    $P2537."add_method"($P2538, "method_table", $P2539)
    nqp_get_sc_object $P2540, "1304459368.206", 3
    get_how $P2541, $P2540
    nqp_get_sc_object $P2542, "1304459368.206", 3
    .const 'Sub' $P2543 = "36_1304459371.883" 
    $P2541."add_method"($P2542, "collisions", $P2543)
    nqp_get_sc_object $P2544, "1304459368.206", 3
    get_how $P2545, $P2544
    nqp_get_sc_object $P2546, "1304459368.206", 3
    .const 'Sub' $P2547 = "37_1304459371.883" 
    $P2545."add_method"($P2546, "name", $P2547)
    nqp_get_sc_object $P2548, "1304459368.206", 3
    get_how $P2549, $P2548
    nqp_get_sc_object $P2550, "1304459368.206", 3
    .const 'Sub' $P2551 = "38_1304459371.883" 
    $P2549."add_method"($P2550, "attributes", $P2551)
    nqp_get_sc_object $P2552, "1304459368.206", 3
    get_how $P2553, $P2552
    nqp_get_sc_object $P2554, "1304459368.206", 3
    .const 'Sub' $P2555 = "40_1304459371.883" 
    $P2553."add_method"($P2554, "roles", $P2555)
    nqp_get_sc_object $P2556, "1304459368.206", 3
    get_how $P2557, $P2556
    nqp_get_sc_object $P2558, "1304459368.206", 3
    .const 'Sub' $P2559 = "41_1304459371.883" 
    $P2557."add_method"($P2558, "instance_of", $P2559)
    .const 'Sub' $P2560 = "21_1304459371.883" 
    $P2561 = $P2560."get_lexinfo"()
    nqp_get_sc_object $P2562, "1304459368.206", 3
    $P2561."set_static_lexpad_value"("$?PACKAGE", $P2562)
    .const 'Sub' $P2563 = "21_1304459371.883" 
    $P2564 = $P2563."get_lexinfo"()
    $P2564."finish_static_lexpad"()
    .const 'Sub' $P2565 = "21_1304459371.883" 
    $P2566 = $P2565."get_lexinfo"()
    nqp_get_sc_object $P2567, "1304459368.206", 3
    $P2566."set_static_lexpad_value"("$?CLASS", $P2567)
    .const 'Sub' $P2568 = "21_1304459371.883" 
    $P2569 = $P2568."get_lexinfo"()
    $P2569."finish_static_lexpad"()
    nqp_get_sc_object $P2570, "1304459368.206", 3
    get_how $P2571, $P2570
    nqp_get_sc_object $P2572, "1304459368.206", 3
    $P2571."compose"($P2572)
    nqp_get_sc_object $P2573, "__6MODEL_CORE__", 0
    $P2574 = $P2573."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2574, cur_sc
    nqp_set_sc_object "1304459368.206", 21, $P2574
    nqp_get_sc_object $P2575, "1304459368.206", 21
    nqp_get_sc_object $P2576, "1304459368.206", 0
    get_who $P2577, $P2576
    set $P2577["RoleToClassApplier"], $P2575
    .const 'Sub' $P2578 = "10_1304459371.883" 
    $P2579 = $P2578."get_lexinfo"()
    nqp_get_sc_object $P2580, "1304459368.206", 21
    $P2579."set_static_lexpad_value"("RoleToClassApplier", $P2580)
    .const 'Sub' $P2581 = "10_1304459371.883" 
    $P2582 = $P2581."get_lexinfo"()
    $P2582."finish_static_lexpad"()
    nqp_get_sc_object $P2583, "1304459368.206", 21
    get_how $P2584, $P2583
    nqp_get_sc_object $P2585, "1304459368.206", 21
    .const 'Sub' $P2586 = "47_1304459371.883" 
    $P2584."add_method"($P2585, "apply", $P2586)
    .const 'Sub' $P2587 = "42_1304459371.883" 
    $P2588 = $P2587."get_lexinfo"()
    nqp_get_sc_object $P2589, "1304459368.206", 21
    $P2588."set_static_lexpad_value"("$?PACKAGE", $P2589)
    .const 'Sub' $P2590 = "42_1304459371.883" 
    $P2591 = $P2590."get_lexinfo"()
    $P2591."finish_static_lexpad"()
    .const 'Sub' $P2592 = "42_1304459371.883" 
    $P2593 = $P2592."get_lexinfo"()
    nqp_get_sc_object $P2594, "1304459368.206", 21
    $P2593."set_static_lexpad_value"("$?CLASS", $P2594)
    .const 'Sub' $P2595 = "42_1304459371.883" 
    $P2596 = $P2595."get_lexinfo"()
    $P2596."finish_static_lexpad"()
    nqp_get_sc_object $P2597, "1304459368.206", 21
    get_how $P2598, $P2597
    nqp_get_sc_object $P2599, "1304459368.206", 21
    $P2598."compose"($P2599)
    nqp_get_sc_object $P2600, "__6MODEL_CORE__", 0
    $P2601 = $P2600."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2601, cur_sc
    nqp_set_sc_object "1304459368.206", 23, $P2601
    nqp_get_sc_object $P2602, "1304459368.206", 23
    nqp_get_sc_object $P2603, "1304459368.206", 0
    get_who $P2604, $P2603
    set $P2604["NQPParametricRoleHOW"], $P2602
    .const 'Sub' $P2605 = "10_1304459371.883" 
    $P2606 = $P2605."get_lexinfo"()
    nqp_get_sc_object $P2607, "1304459368.206", 23
    $P2606."set_static_lexpad_value"("NQPParametricRoleHOW", $P2607)
    .const 'Sub' $P2608 = "10_1304459371.883" 
    $P2609 = $P2608."get_lexinfo"()
    $P2609."finish_static_lexpad"()
    nqp_get_sc_object $P2610, "1304459368.206", 23
    get_how $P2611, $P2610
    nqp_get_sc_object $P2612, "1304459368.206", 23
    nqp_get_sc_object $P2613, "__6MODEL_CORE__", 2
    $P2614 = $P2613."new"("$!name" :named("name"))
    $P2611."add_attribute"($P2612, $P2614)
    nqp_get_sc_object $P2615, "1304459368.206", 23
    get_how $P2616, $P2615
    nqp_get_sc_object $P2617, "1304459368.206", 23
    nqp_get_sc_object $P2618, "__6MODEL_CORE__", 2
    $P2619 = $P2618."new"("%!attributes" :named("name"))
    $P2616."add_attribute"($P2617, $P2619)
    nqp_get_sc_object $P2620, "1304459368.206", 23
    get_how $P2621, $P2620
    nqp_get_sc_object $P2622, "1304459368.206", 23
    nqp_get_sc_object $P2623, "__6MODEL_CORE__", 2
    $P2624 = $P2623."new"("%!methods" :named("name"))
    $P2621."add_attribute"($P2622, $P2624)
    nqp_get_sc_object $P2625, "1304459368.206", 23
    get_how $P2626, $P2625
    nqp_get_sc_object $P2627, "1304459368.206", 23
    nqp_get_sc_object $P2628, "__6MODEL_CORE__", 2
    $P2629 = $P2628."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2626."add_attribute"($P2627, $P2629)
    nqp_get_sc_object $P2630, "1304459368.206", 23
    get_how $P2631, $P2630
    nqp_get_sc_object $P2632, "1304459368.206", 23
    nqp_get_sc_object $P2633, "__6MODEL_CORE__", 2
    $P2634 = $P2633."new"("@!roles" :named("name"))
    $P2631."add_attribute"($P2632, $P2634)
    nqp_get_sc_object $P2635, "1304459368.206", 23
    get_how $P2636, $P2635
    nqp_get_sc_object $P2637, "1304459368.206", 23
    nqp_get_sc_object $P2638, "__6MODEL_CORE__", 2
    $P2639 = $P2638."new"("$!composed" :named("name"))
    $P2636."add_attribute"($P2637, $P2639)
    nqp_get_sc_object $P2640, "1304459368.206", 23
    get_how $P2641, $P2640
    nqp_get_sc_object $P2642, "1304459368.206", 23
    nqp_get_sc_object $P2643, "__6MODEL_CORE__", 2
    $P2644 = $P2643."new"("$!body_block" :named("name"))
    $P2641."add_attribute"($P2642, $P2644)
    nqp_get_sc_object $P2645, "1304459368.206", 23
    get_how $P2646, $P2645
    nqp_get_sc_object $P2647, "1304459368.206", 23
    .const 'Sub' $P2648 = "54_1304459371.883" 
    $P2646."add_method"($P2647, "new", $P2648)
    nqp_get_sc_object $P2649, "1304459368.206", 23
    get_how $P2650, $P2649
    nqp_get_sc_object $P2651, "1304459368.206", 23
    .const 'Sub' $P2652 = "55_1304459371.883" 
    $P2650."add_method"($P2651, "BUILD", $P2652)
    nqp_get_sc_object $P2653, "1304459368.206", 23
    get_how $P2654, $P2653
    nqp_get_sc_object $P2655, "1304459368.206", 23
    .const 'Sub' $P2656 = "56_1304459371.883" 
    $P2654."add_method"($P2655, "new_type", $P2656)
    nqp_get_sc_object $P2657, "1304459368.206", 23
    get_how $P2658, $P2657
    nqp_get_sc_object $P2659, "1304459368.206", 23
    .const 'Sub' $P2660 = "57_1304459371.883" 
    $P2658."add_method"($P2659, "set_body_block", $P2660)
    nqp_get_sc_object $P2661, "1304459368.206", 23
    get_how $P2662, $P2661
    nqp_get_sc_object $P2663, "1304459368.206", 23
    .const 'Sub' $P2664 = "58_1304459371.883" 
    $P2662."add_method"($P2663, "add_method", $P2664)
    nqp_get_sc_object $P2665, "1304459368.206", 23
    get_how $P2666, $P2665
    nqp_get_sc_object $P2667, "1304459368.206", 23
    .const 'Sub' $P2668 = "59_1304459371.883" 
    $P2666."add_method"($P2667, "add_multi_method", $P2668)
    nqp_get_sc_object $P2669, "1304459368.206", 23
    get_how $P2670, $P2669
    nqp_get_sc_object $P2671, "1304459368.206", 23
    .const 'Sub' $P2672 = "60_1304459371.883" 
    $P2670."add_method"($P2671, "add_attribute", $P2672)
    nqp_get_sc_object $P2673, "1304459368.206", 23
    get_how $P2674, $P2673
    nqp_get_sc_object $P2675, "1304459368.206", 23
    .const 'Sub' $P2676 = "61_1304459371.883" 
    $P2674."add_method"($P2675, "add_parent", $P2676)
    nqp_get_sc_object $P2677, "1304459368.206", 23
    get_how $P2678, $P2677
    nqp_get_sc_object $P2679, "1304459368.206", 23
    .const 'Sub' $P2680 = "62_1304459371.883" 
    $P2678."add_method"($P2679, "add_role", $P2680)
    nqp_get_sc_object $P2681, "1304459368.206", 23
    get_how $P2682, $P2681
    nqp_get_sc_object $P2683, "1304459368.206", 23
    .const 'Sub' $P2684 = "63_1304459371.883" 
    $P2682."add_method"($P2683, "compose", $P2684)
    nqp_get_sc_object $P2685, "1304459368.206", 23
    get_how $P2686, $P2685
    nqp_get_sc_object $P2687, "1304459368.206", 23
    .const 'Sub' $P2688 = "64_1304459371.883" 
    $P2686."add_method"($P2687, "parametric", $P2688)
    nqp_get_sc_object $P2689, "1304459368.206", 23
    get_how $P2690, $P2689
    nqp_get_sc_object $P2691, "1304459368.206", 23
    .const 'Sub' $P2692 = "65_1304459371.883" 
    $P2690."add_method"($P2691, "instantiate", $P2692)
    nqp_get_sc_object $P2693, "1304459368.206", 23
    get_how $P2694, $P2693
    nqp_get_sc_object $P2695, "1304459368.206", 23
    .const 'Sub' $P2696 = "70_1304459371.883" 
    $P2694."add_method"($P2695, "methods", $P2696)
    nqp_get_sc_object $P2697, "1304459368.206", 23
    get_how $P2698, $P2697
    nqp_get_sc_object $P2699, "1304459368.206", 23
    .const 'Sub' $P2700 = "72_1304459371.883" 
    $P2698."add_method"($P2699, "method_table", $P2700)
    nqp_get_sc_object $P2701, "1304459368.206", 23
    get_how $P2702, $P2701
    nqp_get_sc_object $P2703, "1304459368.206", 23
    .const 'Sub' $P2704 = "73_1304459371.883" 
    $P2702."add_method"($P2703, "name", $P2704)
    nqp_get_sc_object $P2705, "1304459368.206", 23
    get_how $P2706, $P2705
    nqp_get_sc_object $P2707, "1304459368.206", 23
    .const 'Sub' $P2708 = "74_1304459371.883" 
    $P2706."add_method"($P2707, "attributes", $P2708)
    nqp_get_sc_object $P2709, "1304459368.206", 23
    get_how $P2710, $P2709
    nqp_get_sc_object $P2711, "1304459368.206", 23
    .const 'Sub' $P2712 = "76_1304459371.883" 
    $P2710."add_method"($P2711, "roles", $P2712)
    .const 'Sub' $P2713 = "52_1304459371.883" 
    $P2714 = $P2713."get_lexinfo"()
    nqp_get_sc_object $P2715, "1304459368.206", 23
    $P2714."set_static_lexpad_value"("$?PACKAGE", $P2715)
    .const 'Sub' $P2716 = "52_1304459371.883" 
    $P2717 = $P2716."get_lexinfo"()
    $P2717."finish_static_lexpad"()
    .const 'Sub' $P2718 = "52_1304459371.883" 
    $P2719 = $P2718."get_lexinfo"()
    nqp_get_sc_object $P2720, "1304459368.206", 23
    $P2719."set_static_lexpad_value"("$?CLASS", $P2720)
    .const 'Sub' $P2721 = "52_1304459371.883" 
    $P2722 = $P2721."get_lexinfo"()
    $P2722."finish_static_lexpad"()
    nqp_get_sc_object $P2723, "1304459368.206", 23
    get_how $P2724, $P2723
    nqp_get_sc_object $P2725, "1304459368.206", 23
    $P2724."compose"($P2725)
    nqp_get_sc_object $P2726, "__6MODEL_CORE__", 0
    $P2727 = $P2726."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2727, cur_sc
    nqp_set_sc_object "1304459368.206", 41, $P2727
    nqp_get_sc_object $P2728, "1304459368.206", 41
    nqp_get_sc_object $P2729, "1304459368.206", 0
    get_who $P2730, $P2729
    set $P2730["NQPClassHOW"], $P2728
    .const 'Sub' $P2731 = "10_1304459371.883" 
    $P2732 = $P2731."get_lexinfo"()
    nqp_get_sc_object $P2733, "1304459368.206", 41
    $P2732."set_static_lexpad_value"("NQPClassHOW", $P2733)
    .const 'Sub' $P2734 = "10_1304459371.883" 
    $P2735 = $P2734."get_lexinfo"()
    $P2735."finish_static_lexpad"()
    nqp_get_sc_object $P2736, "1304459368.206", 41
    get_how $P2737, $P2736
    nqp_get_sc_object $P2738, "1304459368.206", 41
    nqp_get_sc_object $P2739, "__6MODEL_CORE__", 2
    $P2740 = $P2739."new"("$!name" :named("name"))
    $P2737."add_attribute"($P2738, $P2740)
    nqp_get_sc_object $P2741, "1304459368.206", 41
    get_how $P2742, $P2741
    nqp_get_sc_object $P2743, "1304459368.206", 41
    nqp_get_sc_object $P2744, "__6MODEL_CORE__", 2
    $P2745 = $P2744."new"("%!attributes" :named("name"))
    $P2742."add_attribute"($P2743, $P2745)
    nqp_get_sc_object $P2746, "1304459368.206", 41
    get_how $P2747, $P2746
    nqp_get_sc_object $P2748, "1304459368.206", 41
    nqp_get_sc_object $P2749, "__6MODEL_CORE__", 2
    $P2750 = $P2749."new"("%!methods" :named("name"))
    $P2747."add_attribute"($P2748, $P2750)
    nqp_get_sc_object $P2751, "1304459368.206", 41
    get_how $P2752, $P2751
    nqp_get_sc_object $P2753, "1304459368.206", 41
    nqp_get_sc_object $P2754, "__6MODEL_CORE__", 2
    $P2755 = $P2754."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2752."add_attribute"($P2753, $P2755)
    nqp_get_sc_object $P2756, "1304459368.206", 41
    get_how $P2757, $P2756
    nqp_get_sc_object $P2758, "1304459368.206", 41
    nqp_get_sc_object $P2759, "__6MODEL_CORE__", 2
    $P2760 = $P2759."new"("@!parents" :named("name"))
    $P2757."add_attribute"($P2758, $P2760)
    nqp_get_sc_object $P2761, "1304459368.206", 41
    get_how $P2762, $P2761
    nqp_get_sc_object $P2763, "1304459368.206", 41
    nqp_get_sc_object $P2764, "__6MODEL_CORE__", 2
    $P2765 = $P2764."new"("@!roles" :named("name"))
    $P2762."add_attribute"($P2763, $P2765)
    nqp_get_sc_object $P2766, "1304459368.206", 41
    get_how $P2767, $P2766
    nqp_get_sc_object $P2768, "1304459368.206", 41
    nqp_get_sc_object $P2769, "__6MODEL_CORE__", 2
    $P2770 = $P2769."new"("$!default_parent" :named("name"))
    $P2767."add_attribute"($P2768, $P2770)
    nqp_get_sc_object $P2771, "1304459368.206", 41
    get_how $P2772, $P2771
    nqp_get_sc_object $P2773, "1304459368.206", 41
    nqp_get_sc_object $P2774, "__6MODEL_CORE__", 2
    $P2775 = $P2774."new"("@!vtable" :named("name"))
    $P2772."add_attribute"($P2773, $P2775)
    nqp_get_sc_object $P2776, "1304459368.206", 41
    get_how $P2777, $P2776
    nqp_get_sc_object $P2778, "1304459368.206", 41
    nqp_get_sc_object $P2779, "__6MODEL_CORE__", 2
    $P2780 = $P2779."new"("%!method-vtable-slots" :named("name"))
    $P2777."add_attribute"($P2778, $P2780)
    nqp_get_sc_object $P2781, "1304459368.206", 41
    get_how $P2782, $P2781
    nqp_get_sc_object $P2783, "1304459368.206", 41
    nqp_get_sc_object $P2784, "__6MODEL_CORE__", 2
    $P2785 = $P2784."new"("$!composed" :named("name"))
    $P2782."add_attribute"($P2783, $P2785)
    nqp_get_sc_object $P2786, "1304459368.206", 41
    get_how $P2787, $P2786
    nqp_get_sc_object $P2788, "1304459368.206", 41
    nqp_get_sc_object $P2789, "__6MODEL_CORE__", 2
    $P2790 = $P2789."new"("@!mro" :named("name"))
    $P2787."add_attribute"($P2788, $P2790)
    nqp_get_sc_object $P2791, "1304459368.206", 41
    get_how $P2792, $P2791
    nqp_get_sc_object $P2793, "1304459368.206", 41
    nqp_get_sc_object $P2794, "__6MODEL_CORE__", 2
    $P2795 = $P2794."new"("@!done" :named("name"))
    $P2792."add_attribute"($P2793, $P2795)
    nqp_get_sc_object $P2796, "1304459368.206", 41
    get_how $P2797, $P2796
    nqp_get_sc_object $P2798, "1304459368.206", 41
    nqp_get_sc_object $P2799, "__6MODEL_CORE__", 2
    $P2800 = $P2799."new"("%!parrot_vtable_mapping" :named("name"))
    $P2797."add_attribute"($P2798, $P2800)
    nqp_get_sc_object $P2801, "1304459368.206", 41
    get_how $P2802, $P2801
    nqp_get_sc_object $P2803, "1304459368.206", 41
    .const 'Sub' $P2804 = "88_1304459371.883" 
    $P2802."add_method"($P2803, "new", $P2804)
    nqp_get_sc_object $P2805, "1304459368.206", 41
    get_how $P2806, $P2805
    nqp_get_sc_object $P2807, "1304459368.206", 41
    .const 'Sub' $P2808 = "89_1304459371.883" 
    $P2806."add_method"($P2807, "BUILD", $P2808)
    nqp_get_sc_object $P2809, "1304459368.206", 41
    get_how $P2810, $P2809
    nqp_get_sc_object $P2811, "1304459368.206", 41
    .const 'Sub' $P2812 = "90_1304459371.883" 
    $P2810."add_method"($P2811, "new_type", $P2812)
    nqp_get_sc_object $P2813, "1304459368.206", 41
    get_how $P2814, $P2813
    nqp_get_sc_object $P2815, "1304459368.206", 41
    .const 'Sub' $P2816 = "91_1304459371.883" 
    $P2814."add_method"($P2815, "add_method", $P2816)
    nqp_get_sc_object $P2817, "1304459368.206", 41
    get_how $P2818, $P2817
    nqp_get_sc_object $P2819, "1304459368.206", 41
    .const 'Sub' $P2820 = "92_1304459371.883" 
    $P2818."add_method"($P2819, "add_multi_method", $P2820)
    nqp_get_sc_object $P2821, "1304459368.206", 41
    get_how $P2822, $P2821
    nqp_get_sc_object $P2823, "1304459368.206", 41
    .const 'Sub' $P2824 = "93_1304459371.883" 
    $P2822."add_method"($P2823, "add_attribute", $P2824)
    nqp_get_sc_object $P2825, "1304459368.206", 41
    get_how $P2826, $P2825
    nqp_get_sc_object $P2827, "1304459368.206", 41
    .const 'Sub' $P2828 = "94_1304459371.883" 
    $P2826."add_method"($P2827, "add_parent", $P2828)
    nqp_get_sc_object $P2829, "1304459368.206", 41
    get_how $P2830, $P2829
    nqp_get_sc_object $P2831, "1304459368.206", 41
    .const 'Sub' $P2832 = "96_1304459371.883" 
    $P2830."add_method"($P2831, "set_default_parent", $P2832)
    nqp_get_sc_object $P2833, "1304459368.206", 41
    get_how $P2834, $P2833
    nqp_get_sc_object $P2835, "1304459368.206", 41
    .const 'Sub' $P2836 = "97_1304459371.883" 
    $P2834."add_method"($P2835, "add_role", $P2836)
    nqp_get_sc_object $P2837, "1304459368.206", 41
    get_how $P2838, $P2837
    nqp_get_sc_object $P2839, "1304459368.206", 41
    .const 'Sub' $P2840 = "99_1304459371.883" 
    $P2838."add_method"($P2839, "add_parrot_vtable_mapping", $P2840)
    nqp_get_sc_object $P2841, "1304459368.206", 41
    get_how $P2842, $P2841
    nqp_get_sc_object $P2843, "1304459368.206", 41
    .const 'Sub' $P2844 = "100_1304459371.883" 
    $P2842."add_method"($P2843, "compose", $P2844)
    nqp_get_sc_object $P2845, "1304459368.206", 41
    get_how $P2846, $P2845
    nqp_get_sc_object $P2847, "1304459368.206", 41
    .const 'Sub' $P2848 = "104_1304459371.883" 
    $P2846."add_method"($P2847, "incorporate_multi_candidates", $P2848)
    nqp_get_sc_object $P2849, "1304459368.206", 41
    get_how $P2850, $P2849
    nqp_get_sc_object $P2851, "1304459368.206", 41
    .const 'Sub' $P2852 = "109_1304459371.883" 
    $P2850."add_method"($P2851, "publish_type_cache", $P2852)
    nqp_get_sc_object $P2853, "1304459368.206", 41
    get_how $P2854, $P2853
    nqp_get_sc_object $P2855, "1304459368.206", 41
    .const 'Sub' $P2856 = "112_1304459371.883" 
    $P2854."add_method"($P2855, "publish_method_cache", $P2856)
    nqp_get_sc_object $P2857, "1304459368.206", 41
    get_how $P2858, $P2857
    nqp_get_sc_object $P2859, "1304459368.206", 41
    .const 'Sub' $P2860 = "115_1304459371.883" 
    $P2858."add_method"($P2859, "publish_parrot_vtable_mapping", $P2860)
    nqp_get_sc_object $P2861, "1304459368.206", 41
    get_how $P2862, $P2861
    nqp_get_sc_object $P2863, "1304459368.206", 41
    .const 'Sub' $P2864 = "118_1304459371.883" 
    $P2862."add_method"($P2863, "parents", $P2864)
    nqp_get_sc_object $P2865, "1304459368.206", 41
    get_how $P2866, $P2865
    nqp_get_sc_object $P2867, "1304459368.206", 41
    .const 'Sub' $P2868 = "119_1304459371.883" 
    $P2866."add_method"($P2867, "roles", $P2868)
    nqp_get_sc_object $P2869, "1304459368.206", 41
    get_how $P2870, $P2869
    nqp_get_sc_object $P2871, "1304459368.206", 41
    .const 'Sub' $P2872 = "120_1304459371.883" 
    $P2870."add_method"($P2871, "methods", $P2872)
    nqp_get_sc_object $P2873, "1304459368.206", 41
    get_how $P2874, $P2873
    nqp_get_sc_object $P2875, "1304459368.206", 41
    .const 'Sub' $P2876 = "122_1304459371.883" 
    $P2874."add_method"($P2875, "method_table", $P2876)
    nqp_get_sc_object $P2877, "1304459368.206", 41
    get_how $P2878, $P2877
    nqp_get_sc_object $P2879, "1304459368.206", 41
    .const 'Sub' $P2880 = "123_1304459371.883" 
    $P2878."add_method"($P2879, "name", $P2880)
    nqp_get_sc_object $P2881, "1304459368.206", 41
    get_how $P2882, $P2881
    nqp_get_sc_object $P2883, "1304459368.206", 41
    .const 'Sub' $P2884 = "124_1304459371.883" 
    $P2882."add_method"($P2883, "attributes", $P2884)
    nqp_get_sc_object $P2885, "1304459368.206", 41
    get_how $P2886, $P2885
    nqp_get_sc_object $P2887, "1304459368.206", 41
    .const 'Sub' $P2888 = "126_1304459371.883" 
    $P2886."add_method"($P2887, "parrot_vtable_mappings", $P2888)
    nqp_get_sc_object $P2889, "1304459368.206", 41
    get_how $P2890, $P2889
    nqp_get_sc_object $P2891, "1304459368.206", 41
    .const 'Sub' $P2892 = "127_1304459371.883" 
    $P2890."add_method"($P2891, "isa", $P2892)
    nqp_get_sc_object $P2893, "1304459368.206", 41
    get_how $P2894, $P2893
    nqp_get_sc_object $P2895, "1304459368.206", 41
    .const 'Sub' $P2896 = "128_1304459371.883" 
    $P2894."add_method"($P2895, "does", $P2896)
    nqp_get_sc_object $P2897, "1304459368.206", 41
    get_how $P2898, $P2897
    nqp_get_sc_object $P2899, "1304459368.206", 41
    .const 'Sub' $P2900 = "129_1304459371.883" 
    $P2898."add_method"($P2899, "can", $P2900)
    nqp_get_sc_object $P2901, "1304459368.206", 41
    get_how $P2902, $P2901
    nqp_get_sc_object $P2903, "1304459368.206", 41
    .const 'Sub' $P2904 = "131_1304459371.883" 
    $P2902."add_method"($P2903, "find_method", $P2904)
    .const 'Sub' $P2905 = "77_1304459371.883" 
    $P2906 = $P2905."get_lexinfo"()
    nqp_get_sc_object $P2907, "1304459368.206", 41
    $P2906."set_static_lexpad_value"("$?PACKAGE", $P2907)
    .const 'Sub' $P2908 = "77_1304459371.883" 
    $P2909 = $P2908."get_lexinfo"()
    $P2909."finish_static_lexpad"()
    .const 'Sub' $P2910 = "77_1304459371.883" 
    $P2911 = $P2910."get_lexinfo"()
    nqp_get_sc_object $P2912, "1304459368.206", 41
    $P2911."set_static_lexpad_value"("$?CLASS", $P2912)
    .const 'Sub' $P2913 = "77_1304459371.883" 
    $P2914 = $P2913."get_lexinfo"()
    $P2914."finish_static_lexpad"()
    nqp_get_sc_object $P2915, "1304459368.206", 41
    get_how $P2916, $P2915
    nqp_get_sc_object $P2917, "1304459368.206", 41
    $P2916."compose"($P2917)
    nqp_get_sc_object $P2918, "__6MODEL_CORE__", 0
    $P2919 = $P2918."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2919, cur_sc
    nqp_set_sc_object "1304459368.206", 68, $P2919
    nqp_get_sc_object $P2920, "1304459368.206", 68
    nqp_get_sc_object $P2921, "1304459368.206", 0
    get_who $P2922, $P2921
    set $P2922["NQPNativeHOW"], $P2920
    .const 'Sub' $P2923 = "10_1304459371.883" 
    $P2924 = $P2923."get_lexinfo"()
    nqp_get_sc_object $P2925, "1304459368.206", 68
    $P2924."set_static_lexpad_value"("NQPNativeHOW", $P2925)
    .const 'Sub' $P2926 = "10_1304459371.883" 
    $P2927 = $P2926."get_lexinfo"()
    $P2927."finish_static_lexpad"()
    nqp_get_sc_object $P2928, "1304459368.206", 68
    get_how $P2929, $P2928
    nqp_get_sc_object $P2930, "1304459368.206", 68
    nqp_get_sc_object $P2931, "__6MODEL_CORE__", 2
    $P2932 = $P2931."new"("$!name" :named("name"))
    $P2929."add_attribute"($P2930, $P2932)
    nqp_get_sc_object $P2933, "1304459368.206", 68
    get_how $P2934, $P2933
    nqp_get_sc_object $P2935, "1304459368.206", 68
    nqp_get_sc_object $P2936, "__6MODEL_CORE__", 2
    $P2937 = $P2936."new"("$!composed" :named("name"))
    $P2934."add_attribute"($P2935, $P2937)
    nqp_get_sc_object $P2938, "1304459368.206", 68
    get_how $P2939, $P2938
    nqp_get_sc_object $P2940, "1304459368.206", 68
    .const 'Sub' $P2941 = "134_1304459371.883" 
    $P2939."add_method"($P2940, "new", $P2941)
    nqp_get_sc_object $P2942, "1304459368.206", 68
    get_how $P2943, $P2942
    nqp_get_sc_object $P2944, "1304459368.206", 68
    .const 'Sub' $P2945 = "135_1304459371.883" 
    $P2943."add_method"($P2944, "BUILD", $P2945)
    nqp_get_sc_object $P2946, "1304459368.206", 68
    get_how $P2947, $P2946
    nqp_get_sc_object $P2948, "1304459368.206", 68
    .const 'Sub' $P2949 = "136_1304459371.883" 
    $P2947."add_method"($P2948, "new_type", $P2949)
    nqp_get_sc_object $P2950, "1304459368.206", 68
    get_how $P2951, $P2950
    nqp_get_sc_object $P2952, "1304459368.206", 68
    .const 'Sub' $P2953 = "137_1304459371.883" 
    $P2951."add_method"($P2952, "add_method", $P2953)
    nqp_get_sc_object $P2954, "1304459368.206", 68
    get_how $P2955, $P2954
    nqp_get_sc_object $P2956, "1304459368.206", 68
    .const 'Sub' $P2957 = "138_1304459371.883" 
    $P2955."add_method"($P2956, "add_multi_method", $P2957)
    nqp_get_sc_object $P2958, "1304459368.206", 68
    get_how $P2959, $P2958
    nqp_get_sc_object $P2960, "1304459368.206", 68
    .const 'Sub' $P2961 = "139_1304459371.883" 
    $P2959."add_method"($P2960, "add_attribute", $P2961)
    nqp_get_sc_object $P2962, "1304459368.206", 68
    get_how $P2963, $P2962
    nqp_get_sc_object $P2964, "1304459368.206", 68
    .const 'Sub' $P2965 = "140_1304459371.883" 
    $P2963."add_method"($P2964, "compose", $P2965)
    nqp_get_sc_object $P2966, "1304459368.206", 68
    get_how $P2967, $P2966
    nqp_get_sc_object $P2968, "1304459368.206", 68
    .const 'Sub' $P2969 = "141_1304459371.883" 
    $P2967."add_method"($P2968, "name", $P2969)
    .const 'Sub' $P2970 = "133_1304459371.883" 
    $P2971 = $P2970."get_lexinfo"()
    nqp_get_sc_object $P2972, "1304459368.206", 68
    $P2971."set_static_lexpad_value"("$?PACKAGE", $P2972)
    .const 'Sub' $P2973 = "133_1304459371.883" 
    $P2974 = $P2973."get_lexinfo"()
    $P2974."finish_static_lexpad"()
    .const 'Sub' $P2975 = "133_1304459371.883" 
    $P2976 = $P2975."get_lexinfo"()
    nqp_get_sc_object $P2977, "1304459368.206", 68
    $P2976."set_static_lexpad_value"("$?CLASS", $P2977)
    .const 'Sub' $P2978 = "133_1304459371.883" 
    $P2979 = $P2978."get_lexinfo"()
    $P2979."finish_static_lexpad"()
    nqp_get_sc_object $P2980, "1304459368.206", 68
    get_how $P2981, $P2980
    nqp_get_sc_object $P2982, "1304459368.206", 68
    $P2981."compose"($P2982)
    nqp_get_sc_object $P2983, "__6MODEL_CORE__", 0
    $P2984 = $P2983."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2984, cur_sc
    nqp_set_sc_object "1304459368.206", 77, $P2984
    nqp_get_sc_object $P2985, "1304459368.206", 77
    nqp_get_sc_object $P2986, "1304459368.206", 0
    get_who $P2987, $P2986
    set $P2987["NQPAttribute"], $P2985
    .const 'Sub' $P2988 = "10_1304459371.883" 
    $P2989 = $P2988."get_lexinfo"()
    nqp_get_sc_object $P2990, "1304459368.206", 77
    $P2989."set_static_lexpad_value"("NQPAttribute", $P2990)
    .const 'Sub' $P2991 = "10_1304459371.883" 
    $P2992 = $P2991."get_lexinfo"()
    $P2992."finish_static_lexpad"()
    nqp_get_sc_object $P2993, "1304459368.206", 77
    get_how $P2994, $P2993
    nqp_get_sc_object $P2995, "1304459368.206", 77
    nqp_get_sc_object $P2996, "__6MODEL_CORE__", 2
    $P2997 = $P2996."new"("$!name" :named("name"))
    $P2994."add_attribute"($P2995, $P2997)
    nqp_get_sc_object $P2998, "1304459368.206", 77
    get_how $P2999, $P2998
    nqp_get_sc_object $P3000, "1304459368.206", 77
    nqp_get_sc_object $P3001, "__6MODEL_CORE__", 2
    $P3002 = $P3001."new"("$!type" :named("name"))
    $P2999."add_attribute"($P3000, $P3002)
    nqp_get_sc_object $P3003, "1304459368.206", 77
    get_how $P3004, $P3003
    nqp_get_sc_object $P3005, "1304459368.206", 77
    nqp_get_sc_object $P3006, "__6MODEL_CORE__", 2
    $P3007 = $P3006."new"("$!box_target" :named("name"))
    $P3004."add_attribute"($P3005, $P3007)
    nqp_get_sc_object $P3008, "1304459368.206", 77
    get_how $P3009, $P3008
    nqp_get_sc_object $P3010, "1304459368.206", 77
    .const 'Sub' $P3011 = "145_1304459371.883" 
    $P3009."add_method"($P3010, "new", $P3011)
    nqp_get_sc_object $P3012, "1304459368.206", 77
    get_how $P3013, $P3012
    nqp_get_sc_object $P3014, "1304459368.206", 77
    .const 'Sub' $P3015 = "146_1304459371.883" 
    $P3013."add_method"($P3014, "BUILD", $P3015)
    nqp_get_sc_object $P3016, "1304459368.206", 77
    get_how $P3017, $P3016
    nqp_get_sc_object $P3018, "1304459368.206", 77
    .const 'Sub' $P3019 = "147_1304459371.883" 
    $P3017."add_method"($P3018, "name", $P3019)
    nqp_get_sc_object $P3020, "1304459368.206", 77
    get_how $P3021, $P3020
    nqp_get_sc_object $P3022, "1304459368.206", 77
    .const 'Sub' $P3023 = "148_1304459371.883" 
    $P3021."add_method"($P3022, "type", $P3023)
    nqp_get_sc_object $P3024, "1304459368.206", 77
    get_how $P3025, $P3024
    nqp_get_sc_object $P3026, "1304459368.206", 77
    .const 'Sub' $P3027 = "149_1304459371.883" 
    $P3025."add_method"($P3026, "box_target", $P3027)
    nqp_get_sc_object $P3028, "1304459368.206", 77
    get_how $P3029, $P3028
    nqp_get_sc_object $P3030, "1304459368.206", 77
    .const 'Sub' $P3031 = "150_1304459371.883" 
    $P3029."add_method"($P3030, "compose", $P3031)
    nqp_get_sc_object $P3032, "1304459368.206", 77
    get_how $P3033, $P3032
    nqp_get_sc_object $P3034, "1304459368.206", 77
    .const 'Sub' $P3035 = "155_1304459371.883" 
    $P3033."add_method"($P3034, "has_mutator", $P3035)
    .const 'Sub' $P3036 = "142_1304459371.883" 
    $P3037 = $P3036."get_lexinfo"()
    nqp_get_sc_object $P3038, "1304459368.206", 77
    $P3037."set_static_lexpad_value"("$?PACKAGE", $P3038)
    .const 'Sub' $P3039 = "142_1304459371.883" 
    $P3040 = $P3039."get_lexinfo"()
    $P3040."finish_static_lexpad"()
    .const 'Sub' $P3041 = "142_1304459371.883" 
    $P3042 = $P3041."get_lexinfo"()
    nqp_get_sc_object $P3043, "1304459368.206", 77
    $P3042."set_static_lexpad_value"("$?CLASS", $P3043)
    .const 'Sub' $P3044 = "142_1304459371.883" 
    $P3045 = $P3044."get_lexinfo"()
    $P3045."finish_static_lexpad"()
    nqp_get_sc_object $P3046, "1304459368.206", 77
    get_how $P3047, $P3046
    nqp_get_sc_object $P3048, "1304459368.206", 77
    $P3047."compose"($P3048)
    nqp_get_sc_object $P3049, "__6MODEL_CORE__", 0
    $P3050 = $P3049."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3050, cur_sc
    nqp_set_sc_object "1304459368.206", 85, $P3050
    nqp_get_sc_object $P3051, "1304459368.206", 85
    nqp_get_sc_object $P3052, "1304459368.206", 0
    get_who $P3053, $P3052
    set $P3053["NQPModuleHOW"], $P3051
    .const 'Sub' $P3054 = "10_1304459371.883" 
    $P3055 = $P3054."get_lexinfo"()
    nqp_get_sc_object $P3056, "1304459368.206", 85
    $P3055."set_static_lexpad_value"("NQPModuleHOW", $P3056)
    .const 'Sub' $P3057 = "10_1304459371.883" 
    $P3058 = $P3057."get_lexinfo"()
    $P3058."finish_static_lexpad"()
    nqp_get_sc_object $P3059, "1304459368.206", 85
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1304459368.206", 85
    nqp_get_sc_object $P3062, "__6MODEL_CORE__", 2
    $P3063 = $P3062."new"("$!name" :named("name"))
    $P3060."add_attribute"($P3061, $P3063)
    nqp_get_sc_object $P3064, "1304459368.206", 85
    get_how $P3065, $P3064
    nqp_get_sc_object $P3066, "1304459368.206", 85
    nqp_get_sc_object $P3067, "__6MODEL_CORE__", 2
    $P3068 = $P3067."new"("$!composed" :named("name"))
    $P3065."add_attribute"($P3066, $P3068)
    nqp_get_sc_object $P3069, "1304459368.206", 85
    get_how $P3070, $P3069
    nqp_get_sc_object $P3071, "1304459368.206", 85
    .const 'Sub' $P3072 = "157_1304459371.883" 
    $P3070."add_method"($P3071, "new", $P3072)
    nqp_get_sc_object $P3073, "1304459368.206", 85
    get_how $P3074, $P3073
    nqp_get_sc_object $P3075, "1304459368.206", 85
    .const 'Sub' $P3076 = "158_1304459371.883" 
    $P3074."add_method"($P3075, "BUILD", $P3076)
    nqp_get_sc_object $P3077, "1304459368.206", 85
    get_how $P3078, $P3077
    nqp_get_sc_object $P3079, "1304459368.206", 85
    .const 'Sub' $P3080 = "159_1304459371.883" 
    $P3078."add_method"($P3079, "new_type", $P3080)
    nqp_get_sc_object $P3081, "1304459368.206", 85
    get_how $P3082, $P3081
    nqp_get_sc_object $P3083, "1304459368.206", 85
    .const 'Sub' $P3084 = "160_1304459371.883" 
    $P3082."add_method"($P3083, "add_method", $P3084)
    nqp_get_sc_object $P3085, "1304459368.206", 85
    get_how $P3086, $P3085
    nqp_get_sc_object $P3087, "1304459368.206", 85
    .const 'Sub' $P3088 = "161_1304459371.883" 
    $P3086."add_method"($P3087, "add_multi_method", $P3088)
    nqp_get_sc_object $P3089, "1304459368.206", 85
    get_how $P3090, $P3089
    nqp_get_sc_object $P3091, "1304459368.206", 85
    .const 'Sub' $P3092 = "162_1304459371.883" 
    $P3090."add_method"($P3091, "add_attribute", $P3092)
    nqp_get_sc_object $P3093, "1304459368.206", 85
    get_how $P3094, $P3093
    nqp_get_sc_object $P3095, "1304459368.206", 85
    .const 'Sub' $P3096 = "163_1304459371.883" 
    $P3094."add_method"($P3095, "compose", $P3096)
    nqp_get_sc_object $P3097, "1304459368.206", 85
    get_how $P3098, $P3097
    nqp_get_sc_object $P3099, "1304459368.206", 85
    .const 'Sub' $P3100 = "164_1304459371.883" 
    $P3098."add_method"($P3099, "name", $P3100)
    .const 'Sub' $P3101 = "156_1304459371.883" 
    $P3102 = $P3101."get_lexinfo"()
    nqp_get_sc_object $P3103, "1304459368.206", 85
    $P3102."set_static_lexpad_value"("$?PACKAGE", $P3103)
    .const 'Sub' $P3104 = "156_1304459371.883" 
    $P3105 = $P3104."get_lexinfo"()
    $P3105."finish_static_lexpad"()
    .const 'Sub' $P3106 = "156_1304459371.883" 
    $P3107 = $P3106."get_lexinfo"()
    nqp_get_sc_object $P3108, "1304459368.206", 85
    $P3107."set_static_lexpad_value"("$?CLASS", $P3108)
    .const 'Sub' $P3109 = "156_1304459371.883" 
    $P3110 = $P3109."get_lexinfo"()
    $P3110."finish_static_lexpad"()
    nqp_get_sc_object $P3111, "1304459368.206", 85
    get_how $P3112, $P3111
    nqp_get_sc_object $P3113, "1304459368.206", 85
    $P3112."compose"($P3113)
    nqp_get_sc_object $P3114, "__6MODEL_CORE__", 0
    $P3115 = $P3114."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3115, cur_sc
    nqp_set_sc_object "1304459368.206", 94, $P3115
    .const 'Sub' $P3116 = "10_1304459371.883" 
    $P3117 = $P3116."get_lexinfo"()
    nqp_get_sc_object $P3118, "1304459368.206", 94
    $P3117."set_static_lexpad_value"("EXPORTHOW", $P3118)
    .const 'Sub' $P3119 = "10_1304459371.883" 
    $P3120 = $P3119."get_lexinfo"()
    $P3120."finish_static_lexpad"()
    .const 'Sub' $P3121 = "165_1304459371.883" 
    $P3122 = $P3121."get_lexinfo"()
    nqp_get_sc_object $P3123, "1304459368.206", 94
    $P3122."set_static_lexpad_value"("$?PACKAGE", $P3123)
    .const 'Sub' $P3124 = "165_1304459371.883" 
    $P3125 = $P3124."get_lexinfo"()
    $P3125."finish_static_lexpad"()
    .const 'Sub' $P3126 = "165_1304459371.883" 
    $P3127 = $P3126."get_lexinfo"()
    nqp_get_sc_object $P3128, "1304459368.206", 94
    $P3127."set_static_lexpad_value"("$?CLASS", $P3128)
    .const 'Sub' $P3129 = "165_1304459371.883" 
    $P3130 = $P3129."get_lexinfo"()
    $P3130."finish_static_lexpad"()
    nqp_get_sc_object $P3131, "1304459368.206", 94
    get_how $P3132, $P3131
    nqp_get_sc_object $P3133, "1304459368.206", 94
    $P3132."compose"($P3133)
  if_2391_end:
    nqp_get_sc_object $P3449, "1304459368.206", 0
    set_hll_global "GLOBAL", $P3449
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block25"  :subid("11_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 7
    .const 'Sub' $P29 = "12_1304459371.883" 
    capture_lex $P29
    .lex "$?PACKAGE", $P27
    .lex "$?CLASS", $P28
.annotate 'line', 8
    .const 'Sub' $P29 = "12_1304459371.883" 
    newclosure $P247, $P29
.annotate 'line', 7
    .return ($P247)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("12_1304459371.883") :outer("11_1304459371.883")
    .param pmc param_32
    .param pmc param_33
    .param pmc param_34
.annotate 'line', 8
    .const 'Sub' $P174 = "18_1304459371.883" 
    capture_lex $P174
    .const 'Sub' $P132 = "17_1304459371.883" 
    capture_lex $P132
    .const 'Sub' $P118 = "16_1304459371.883" 
    capture_lex $P118
    .const 'Sub' $P45 = "13_1304459371.883" 
    capture_lex $P45
    new $P31, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P31, control_30
    push_eh $P31
    .lex "self", param_32
    .lex "$target", param_33
    .lex "@roles", param_34
.annotate 'line', 10
    $P35 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P35
.annotate 'line', 36
    $P36 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P36
.annotate 'line', 37
    $P37 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P37
.annotate 'line', 62
    $P38 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P38
.annotate 'line', 8
    find_lex $P39, "%meth_info"
    unless_null $P39, vivify_168
    $P39 = root_new ['parrot';'Hash']
  vivify_168:
.annotate 'line', 11
    find_lex $P41, "@roles"
    unless_null $P41, vivify_169
    $P41 = root_new ['parrot';'ResizablePMCArray']
  vivify_169:
    defined $I42, $P41
    unless $I42, for_undef_170
    iter $P40, $P41
    new $P106, 'ExceptionHandler'
    set_label $P106, loop105_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop105_test:
    unless $P40, loop105_done
    shift $P43, $P40
  loop105_redo:
    .const 'Sub' $P45 = "13_1304459371.883" 
    capture_lex $P45
    $P45($P43)
  loop105_next:
    goto loop105_test
  loop105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop105_next
    eq $P107, .CONTROL_LOOP_REDO, loop105_redo
  loop105_done:
    pop_eh 
  for_undef_170:
    find_lex $P108, "%target_meth_info"
    unless_null $P108, vivify_194
    $P108 = root_new ['parrot';'Hash']
  vivify_194:
.annotate 'line', 37
    find_lex $P109, "$target"
    unless_null $P109, vivify_195
    new $P109, "Undef"
  vivify_195:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_196
    new $P111, "Undef"
  vivify_196:
    $P112 = $P110."methods"($P111)
    store_lex "@target_meths", $P112
.annotate 'line', 38
    find_lex $P114, "@target_meths"
    unless_null $P114, vivify_197
    $P114 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    defined $I115, $P114
    unless $I115, for_undef_198
    iter $P113, $P114
    new $P125, 'ExceptionHandler'
    set_label $P125, loop124_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop124_test:
    unless $P113, loop124_done
    shift $P116, $P113
  loop124_redo:
    .const 'Sub' $P118 = "16_1304459371.883" 
    capture_lex $P118
    $P118($P116)
  loop124_next:
    goto loop124_test
  loop124_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop124_next
    eq $P126, .CONTROL_LOOP_REDO, loop124_redo
  loop124_done:
    pop_eh 
  for_undef_198:
.annotate 'line', 43
    find_lex $P128, "%meth_info"
    unless_null $P128, vivify_202
    $P128 = root_new ['parrot';'Hash']
  vivify_202:
    defined $I129, $P128
    unless $I129, for_undef_203
    iter $P127, $P128
    new $P166, 'ExceptionHandler'
    set_label $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    unless $P127, loop165_done
    shift $P130, $P127
  loop165_redo:
    .const 'Sub' $P132 = "17_1304459371.883" 
    capture_lex $P132
    $P132($P130)
  loop165_next:
    goto loop165_test
  loop165_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P167, exception, 'type'
    eq $P167, .CONTROL_LOOP_NEXT, loop165_next
    eq $P167, .CONTROL_LOOP_REDO, loop165_redo
  loop165_done:
    pop_eh 
  for_undef_203:
    find_lex $P168, "@all_roles"
    unless_null $P168, vivify_220
    $P168 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
.annotate 'line', 63
    find_lex $P170, "@roles"
    unless_null $P170, vivify_221
    $P170 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    defined $I171, $P170
    unless $I171, for_undef_222
    iter $P169, $P170
    new $P242, 'ExceptionHandler'
    set_label $P242, loop241_handler
    $P242."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P242
  loop241_test:
    unless $P169, loop241_done
    shift $P172, $P169
  loop241_redo:
    .const 'Sub' $P174 = "18_1304459371.883" 
    capture_lex $P174
    $P174($P172)
  loop241_next:
    goto loop241_test
  loop241_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P243, exception, 'type'
    eq $P243, .CONTROL_LOOP_NEXT, loop241_next
    eq $P243, .CONTROL_LOOP_REDO, loop241_redo
  loop241_done:
    pop_eh 
  for_undef_222:
.annotate 'line', 92
    new $P244, "Exception"
    set $P244['type'], .CONTROL_RETURN
    find_lex $P245, "@all_roles"
    unless_null $P245, vivify_244
    $P245 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    setattribute $P244, 'payload', $P245
    throw $P244
.annotate 'line', 8
    .return ()
  control_30:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P246, exception, "payload"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block44"  :anon :subid("13_1304459371.883") :outer("12_1304459371.883")
    .param pmc param_47
.annotate 'line', 11
    .const 'Sub' $P57 = "14_1304459371.883" 
    capture_lex $P57
.annotate 'line', 12
    $P46 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P46
    .lex "$_", param_47
    find_lex $P48, "$_"
    unless_null $P48, vivify_171
    new $P48, "Undef"
  vivify_171:
    get_how $P49, $P48
    find_lex $P50, "$_"
    unless_null $P50, vivify_172
    new $P50, "Undef"
  vivify_172:
    $P51 = $P49."methods"($P50)
    store_lex "@methods", $P51
.annotate 'line', 13
    find_lex $P53, "@methods"
    unless_null $P53, vivify_173
    $P53 = root_new ['parrot';'ResizablePMCArray']
  vivify_173:
    defined $I54, $P53
    unless $I54, for_undef_174
    iter $P52, $P53
    new $P103, 'ExceptionHandler'
    set_label $P103, loop102_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop102_test:
    unless $P52, loop102_done
    shift $P55, $P52
  loop102_redo:
    .const 'Sub' $P57 = "14_1304459371.883" 
    capture_lex $P57
    $P57($P55)
  loop102_next:
    goto loop102_test
  loop102_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop102_next
    eq $P104, .CONTROL_LOOP_REDO, loop102_redo
  loop102_done:
    pop_eh 
  for_undef_174:
.annotate 'line', 11
    .return ($P52)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block56"  :anon :subid("14_1304459371.883") :outer("13_1304459371.883")
    .param pmc param_62
.annotate 'line', 13
    .const 'Sub' $P85 = "15_1304459371.883" 
    capture_lex $P85
.annotate 'line', 14
    new $P58, "Undef"
    .lex "$name", $P58
.annotate 'line', 15
    new $P59, "Undef"
    .lex "$meth", $P59
.annotate 'line', 16
    $P60 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P60
.annotate 'line', 23
    new $P61, "Undef"
    .lex "$found", $P61
    .lex "$_", param_62
.annotate 'line', 14
    find_lex $P63, "$_"
    unless_null $P63, vivify_175
    new $P63, "Undef"
  vivify_175:
    set $S64, $P63
    new $P65, 'String'
    set $P65, $S64
    store_lex "$name", $P65
.annotate 'line', 15
    find_lex $P66, "$_"
    unless_null $P66, vivify_176
    new $P66, "Undef"
  vivify_176:
    store_lex "$meth", $P66
    find_lex $P67, "@meth_list"
    unless_null $P67, vivify_177
    $P67 = root_new ['parrot';'ResizablePMCArray']
  vivify_177:
.annotate 'line', 17
    find_lex $P69, "$name"
    unless_null $P69, vivify_178
    new $P69, "Undef"
  vivify_178:
    find_lex $P70, "%meth_info"
    unless_null $P70, vivify_179
    $P70 = root_new ['parrot';'Hash']
  vivify_179:
    set $P71, $P70[$P69]
    unless_null $P71, vivify_180
    new $P71, "Undef"
  vivify_180:
    defined $I72, $P71
    if $I72, if_68
.annotate 'line', 21
    find_lex $P76, "@meth_list"
    unless_null $P76, vivify_181
    $P76 = root_new ['parrot';'ResizablePMCArray']
  vivify_181:
    find_lex $P77, "$name"
    unless_null $P77, vivify_182
    new $P77, "Undef"
  vivify_182:
    find_lex $P78, "%meth_info"
    unless_null $P78, vivify_183
    $P78 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P78
  vivify_183:
    set $P78[$P77], $P76
.annotate 'line', 20
    goto if_68_end
  if_68:
.annotate 'line', 18
    find_lex $P73, "$name"
    unless_null $P73, vivify_184
    new $P73, "Undef"
  vivify_184:
    find_lex $P74, "%meth_info"
    unless_null $P74, vivify_185
    $P74 = root_new ['parrot';'Hash']
  vivify_185:
    set $P75, $P74[$P73]
    unless_null $P75, vivify_186
    new $P75, "Undef"
  vivify_186:
    store_lex "@meth_list", $P75
  if_68_end:
.annotate 'line', 23
    new $P79, "Integer"
    assign $P79, 0
    store_lex "$found", $P79
.annotate 'line', 24
    find_lex $P81, "@meth_list"
    unless_null $P81, vivify_187
    $P81 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    defined $I82, $P81
    unless $I82, for_undef_188
    iter $P80, $P81
    new $P94, 'ExceptionHandler'
    set_label $P94, loop93_handler
    $P94."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P94
  loop93_test:
    unless $P80, loop93_done
    shift $P83, $P80
  loop93_redo:
    .const 'Sub' $P85 = "15_1304459371.883" 
    capture_lex $P85
    $P85($P83)
  loop93_next:
    goto loop93_test
  loop93_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P95, exception, 'type'
    eq $P95, .CONTROL_LOOP_NEXT, loop93_next
    eq $P95, .CONTROL_LOOP_REDO, loop93_redo
  loop93_done:
    pop_eh 
  for_undef_188:
.annotate 'line', 29
    find_lex $P98, "$found"
    unless_null $P98, vivify_191
    new $P98, "Undef"
  vivify_191:
    unless $P98, unless_97
    set $P96, $P98
    goto unless_97_end
  unless_97:
.annotate 'line', 30
    find_lex $P99, "@meth_list"
    unless_null $P99, vivify_192
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    find_lex $P100, "$meth"
    unless_null $P100, vivify_193
    new $P100, "Undef"
  vivify_193:
    $P101 = $P99."push"($P100)
.annotate 'line', 29
    set $P96, $P101
  unless_97_end:
.annotate 'line', 13
    .return ($P96)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block84"  :anon :subid("15_1304459371.883") :outer("14_1304459371.883")
    .param pmc param_86
.annotate 'line', 24
    .lex "$_", param_86
.annotate 'line', 25
    find_lex $P89, "$meth"
    unless_null $P89, vivify_189
    new $P89, "Undef"
  vivify_189:
    find_lex $P90, "$_"
    unless_null $P90, vivify_190
    new $P90, "Undef"
  vivify_190:
    issame $I91, $P89, $P90
    if $I91, if_88
    new $P87, 'Integer'
    set $P87, $I91
    goto if_88_end
  if_88:
.annotate 'line', 26
    new $P92, "Integer"
    assign $P92, 1
    store_lex "$found", $P92
.annotate 'line', 25
    set $P87, $P92
  if_88_end:
.annotate 'line', 24
    .return ($P87)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block117"  :anon :subid("16_1304459371.883") :outer("12_1304459371.883")
    .param pmc param_119
.annotate 'line', 38
    .lex "$_", param_119
.annotate 'line', 39
    find_lex $P120, "$_"
    unless_null $P120, vivify_199
    new $P120, "Undef"
  vivify_199:
    find_lex $P121, "$_"
    unless_null $P121, vivify_200
    new $P121, "Undef"
  vivify_200:
    set $S122, $P121
    find_lex $P123, "%target_meth_info"
    unless_null $P123, vivify_201
    $P123 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P123
  vivify_201:
    set $P123[$S122], $P120
.annotate 'line', 38
    .return ($P120)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block131"  :anon :subid("17_1304459371.883") :outer("12_1304459371.883")
    .param pmc param_135
.annotate 'line', 44
    new $P133, "Undef"
    .lex "$name", $P133
.annotate 'line', 45
    $P134 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P134
    .lex "$_", param_135
.annotate 'line', 44
    find_lex $P136, "$_"
    unless_null $P136, vivify_204
    new $P136, "Undef"
  vivify_204:
    set $S137, $P136
    new $P138, 'String'
    set $P138, $S137
    store_lex "$name", $P138
.annotate 'line', 45
    find_lex $P139, "$name"
    unless_null $P139, vivify_205
    new $P139, "Undef"
  vivify_205:
    find_lex $P140, "%meth_info"
    unless_null $P140, vivify_206
    $P140 = root_new ['parrot';'Hash']
  vivify_206:
    set $P141, $P140[$P139]
    unless_null $P141, vivify_207
    new $P141, "Undef"
  vivify_207:
    store_lex "@add_meths", $P141
.annotate 'line', 49
    find_lex $P144, "$name"
    unless_null $P144, vivify_208
    new $P144, "Undef"
  vivify_208:
    find_lex $P145, "%target_meth_info"
    unless_null $P145, vivify_209
    $P145 = root_new ['parrot';'Hash']
  vivify_209:
    set $P146, $P145[$P144]
    unless_null $P146, vivify_210
    new $P146, "Undef"
  vivify_210:
    defined $I147, $P146
    unless $I147, unless_143
    new $P142, 'Integer'
    set $P142, $I147
    goto unless_143_end
  unless_143:
.annotate 'line', 51
    find_lex $P150, "@add_meths"
    unless_null $P150, vivify_211
    $P150 = root_new ['parrot';'ResizablePMCArray']
  vivify_211:
    set $N151, $P150
    iseq $I152, $N151, 1.0
    if $I152, if_149
.annotate 'line', 56
    find_lex $P160, "$target"
    unless_null $P160, vivify_212
    new $P160, "Undef"
  vivify_212:
    get_how $P161, $P160
    find_lex $P162, "$target"
    unless_null $P162, vivify_213
    new $P162, "Undef"
  vivify_213:
    find_lex $P163, "$name"
    unless_null $P163, vivify_214
    new $P163, "Undef"
  vivify_214:
    $P164 = $P161."add_collision"($P162, $P163)
.annotate 'line', 54
    set $P148, $P164
.annotate 'line', 51
    goto if_149_end
  if_149:
.annotate 'line', 52
    find_lex $P153, "$target"
    unless_null $P153, vivify_215
    new $P153, "Undef"
  vivify_215:
    get_how $P154, $P153
    find_lex $P155, "$target"
    unless_null $P155, vivify_216
    new $P155, "Undef"
  vivify_216:
    find_lex $P156, "$name"
    unless_null $P156, vivify_217
    new $P156, "Undef"
  vivify_217:
    find_lex $P157, "@add_meths"
    unless_null $P157, vivify_218
    $P157 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    set $P158, $P157[0]
    unless_null $P158, vivify_219
    new $P158, "Undef"
  vivify_219:
    $P159 = $P154."add_method"($P155, $P156, $P158)
.annotate 'line', 51
    set $P148, $P159
  if_149_end:
.annotate 'line', 49
    set $P142, $P148
  unless_143_end:
.annotate 'line', 43
    .return ($P142)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block173"  :anon :subid("18_1304459371.883") :outer("12_1304459371.883")
    .param pmc param_177
.annotate 'line', 63
    .const 'Sub' $P188 = "19_1304459371.883" 
    capture_lex $P188
.annotate 'line', 64
    new $P175, "Undef"
    .lex "$how", $P175
.annotate 'line', 67
    $P176 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P176
    .lex "$_", param_177
.annotate 'line', 64
    find_lex $P178, "$_"
    unless_null $P178, vivify_223
    new $P178, "Undef"
  vivify_223:
    get_how $P179, $P178
    store_lex "$how", $P179
.annotate 'line', 67
    find_lex $P180, "$how"
    unless_null $P180, vivify_224
    new $P180, "Undef"
  vivify_224:
    find_lex $P181, "$_"
    unless_null $P181, vivify_225
    new $P181, "Undef"
  vivify_225:
    $P182 = $P180."attributes"($P181)
    store_lex "@attributes", $P182
.annotate 'line', 68
    find_lex $P184, "@attributes"
    unless_null $P184, vivify_226
    $P184 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    defined $I185, $P184
    unless $I185, for_undef_227
    iter $P183, $P184
    new $P236, 'ExceptionHandler'
    set_label $P236, loop235_handler
    $P236."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P236
  loop235_test:
    unless $P183, loop235_done
    shift $P186, $P183
  loop235_redo:
    .const 'Sub' $P188 = "19_1304459371.883" 
    capture_lex $P188
    $P188($P186)
  loop235_next:
    goto loop235_test
  loop235_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P237, exception, 'type'
    eq $P237, .CONTROL_LOOP_NEXT, loop235_next
    eq $P237, .CONTROL_LOOP_REDO, loop235_redo
  loop235_done:
    pop_eh 
  for_undef_227:
.annotate 'line', 89
    find_lex $P238, "@all_roles"
    unless_null $P238, vivify_242
    $P238 = root_new ['parrot';'ResizablePMCArray']
  vivify_242:
    find_lex $P239, "$_"
    unless_null $P239, vivify_243
    new $P239, "Undef"
  vivify_243:
    $P240 = $P238."push"($P239)
.annotate 'line', 63
    .return ($P240)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block187"  :anon :subid("19_1304459371.883") :outer("18_1304459371.883")
    .param pmc param_192
.annotate 'line', 68
    .const 'Sub' $P204 = "20_1304459371.883" 
    capture_lex $P204
.annotate 'line', 69
    new $P189, "Undef"
    .lex "$add_attr", $P189
.annotate 'line', 70
    new $P190, "Undef"
    .lex "$skip", $P190
.annotate 'line', 71
    $P191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P191
    .lex "$_", param_192
.annotate 'line', 69
    find_lex $P193, "$_"
    unless_null $P193, vivify_228
    new $P193, "Undef"
  vivify_228:
    store_lex "$add_attr", $P193
.annotate 'line', 70
    new $P194, "Integer"
    assign $P194, 0
    store_lex "$skip", $P194
.annotate 'line', 71
    find_lex $P195, "$target"
    unless_null $P195, vivify_229
    new $P195, "Undef"
  vivify_229:
    get_how $P196, $P195
    find_lex $P197, "$target"
    unless_null $P197, vivify_230
    new $P197, "Undef"
  vivify_230:
    $P198 = $P196."attributes"($P197)
    store_lex "@cur_attrs", $P198
.annotate 'line', 72
    find_lex $P200, "@cur_attrs"
    unless_null $P200, vivify_231
    $P200 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    defined $I201, $P200
    unless $I201, for_undef_232
    iter $P199, $P200
    new $P225, 'ExceptionHandler'
    set_label $P225, loop224_handler
    $P225."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P225
  loop224_test:
    unless $P199, loop224_done
    shift $P202, $P199
  loop224_redo:
    .const 'Sub' $P204 = "20_1304459371.883" 
    capture_lex $P204
    $P204($P202)
  loop224_next:
    goto loop224_test
  loop224_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P226, exception, 'type'
    eq $P226, .CONTROL_LOOP_NEXT, loop224_next
    eq $P226, .CONTROL_LOOP_REDO, loop224_redo
  loop224_done:
    pop_eh 
  for_undef_232:
.annotate 'line', 82
    find_lex $P229, "$skip"
    unless_null $P229, vivify_238
    new $P229, "Undef"
  vivify_238:
    unless $P229, unless_228
    set $P227, $P229
    goto unless_228_end
  unless_228:
.annotate 'line', 83
    find_lex $P230, "$target"
    unless_null $P230, vivify_239
    new $P230, "Undef"
  vivify_239:
    get_how $P231, $P230
    find_lex $P232, "$target"
    unless_null $P232, vivify_240
    new $P232, "Undef"
  vivify_240:
    find_lex $P233, "$add_attr"
    unless_null $P233, vivify_241
    new $P233, "Undef"
  vivify_241:
    $P234 = $P231."add_attribute"($P232, $P233)
.annotate 'line', 82
    set $P227, $P234
  unless_228_end:
.annotate 'line', 68
    .return ($P227)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block203"  :anon :subid("20_1304459371.883") :outer("19_1304459371.883")
    .param pmc param_205
.annotate 'line', 72
    .lex "$_", param_205
.annotate 'line', 73
    find_lex $P208, "$_"
    unless_null $P208, vivify_233
    new $P208, "Undef"
  vivify_233:
    find_lex $P209, "$add_attr"
    unless_null $P209, vivify_234
    new $P209, "Undef"
  vivify_234:
    issame $I210, $P208, $P209
    if $I210, if_207
.annotate 'line', 77
    find_lex $P214, "$_"
    unless_null $P214, vivify_235
    new $P214, "Undef"
  vivify_235:
    $S215 = $P214."name"()
    find_lex $P216, "$add_attr"
    unless_null $P216, vivify_236
    new $P216, "Undef"
  vivify_236:
    $S217 = $P216."name"()
    iseq $I218, $S215, $S217
    if $I218, if_213
    new $P212, 'Integer'
    set $P212, $I218
    goto if_213_end
  if_213:
.annotate 'line', 78
    new $P219, "String"
    assign $P219, "Attribute '"
    find_lex $P220, "$_"
    unless_null $P220, vivify_237
    new $P220, "Undef"
  vivify_237:
    $S221 = $P220."name"()
    concat $P222, $P219, $S221
    concat $P223, $P222, "' conflicts in role composition"
    die $P223
  if_213_end:
.annotate 'line', 76
    set $P206, $P212
.annotate 'line', 73
    goto if_207_end
  if_207:
.annotate 'line', 74
    new $P211, "Integer"
    assign $P211, 1
    store_lex "$skip", $P211
.annotate 'line', 73
    set $P206, $P211
  if_207_end:
.annotate 'line', 72
    .return ($P206)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block248"  :subid("21_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 99
    .const 'Sub' $P501 = "41_1304459371.883" 
    capture_lex $P501
    .const 'Sub' $P495 = "40_1304459371.883" 
    capture_lex $P495
    .const 'Sub' $P471 = "38_1304459371.883" 
    capture_lex $P471
    .const 'Sub' $P465 = "37_1304459371.883" 
    capture_lex $P465
    .const 'Sub' $P459 = "36_1304459371.883" 
    capture_lex $P459
    .const 'Sub' $P453 = "35_1304459371.883" 
    capture_lex $P453
    .const 'Sub' $P429 = "33_1304459371.883" 
    capture_lex $P429
    .const 'Sub' $P380 = "31_1304459371.883" 
    capture_lex $P380
    .const 'Sub' $P367 = "30_1304459371.883" 
    capture_lex $P367
    .const 'Sub' $P354 = "29_1304459371.883" 
    capture_lex $P354
    .const 'Sub' $P350 = "28_1304459371.883" 
    capture_lex $P350
    .const 'Sub' $P329 = "27_1304459371.883" 
    capture_lex $P329
    .const 'Sub' $P308 = "26_1304459371.883" 
    capture_lex $P308
    .const 'Sub' $P289 = "25_1304459371.883" 
    capture_lex $P289
    .const 'Sub' $P273 = "24_1304459371.883" 
    capture_lex $P273
    .const 'Sub' $P263 = "23_1304459371.883" 
    capture_lex $P263
    .const 'Sub' $P252 = "22_1304459371.883" 
    capture_lex $P252
    .lex "$?PACKAGE", $P250
    .lex "$?CLASS", $P251
.annotate 'line', 238
    .const 'Sub' $P501 = "41_1304459371.883" 
    newclosure $P507, $P501
.annotate 'line', 99
    .return ($P507)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("22_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_253
    .param pmc param_254 :named("name")
    .param pmc param_255 :named("instance_of")
.annotate 'line', 131
    .lex "self", param_253
    .lex "$name", param_254
    .lex "$instance_of", param_255
.annotate 'line', 132
    new $P256, "Undef"
    .lex "$obj", $P256
    find_lex $P257, "self"
    repr_instance_of $P258, $P257
    store_lex "$obj", $P258
.annotate 'line', 133
    find_lex $P259, "$obj"
    unless_null $P259, vivify_245
    new $P259, "Undef"
  vivify_245:
    find_lex $P260, "$name"
    unless_null $P260, vivify_246
    new $P260, "Undef"
  vivify_246:
    find_lex $P261, "$instance_of"
    unless_null $P261, vivify_247
    new $P261, "Undef"
  vivify_247:
    $P259."BUILD"($P260 :named("name"), $P261 :named("instance_of"))
    find_lex $P262, "$obj"
    unless_null $P262, vivify_248
    new $P262, "Undef"
  vivify_248:
.annotate 'line', 131
    .return ($P262)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("23_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_264
    .param pmc param_265 :named("name")
    .param pmc param_266 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_264
    .lex "$name", param_265
    .lex "$instance_of", param_266
.annotate 'line', 138
    find_lex $P267, "$name"
    unless_null $P267, vivify_249
    new $P267, "Undef"
  vivify_249:
    find_lex $P268, "self"
    find_lex $P269, "$?CLASS"
    setattribute $P268, $P269, "$!name", $P267
.annotate 'line', 139
    find_lex $P270, "$instance_of"
    unless_null $P270, vivify_250
    new $P270, "Undef"
  vivify_250:
    find_lex $P271, "self"
    find_lex $P272, "$?CLASS"
    setattribute $P271, $P272, "$!instance_of", $P270
.annotate 'line', 137
    .return ($P270)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("24_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_274
    .param pmc param_279 :named("instance_of")
    .param pmc param_275 :optional :named("name")
    .param int has_param_275 :opt_flag
    .param pmc param_277 :optional :named("repr")
    .param int has_param_277 :opt_flag
.annotate 'line', 144
    .lex "self", param_274
    if has_param_275, optparam_251
    new $P276, "String"
    assign $P276, "<anon>"
    set param_275, $P276
  optparam_251:
    .lex "$name", param_275
    if has_param_277, optparam_252
    new $P278, "String"
    assign $P278, "P6opaque"
    set param_277, $P278
  optparam_252:
    .lex "$repr", param_277
    .lex "$instance_of", param_279
.annotate 'line', 145
    new $P280, "Undef"
    .lex "$metarole", $P280
    find_lex $P281, "self"
    find_lex $P282, "$name"
    unless_null $P282, vivify_253
    new $P282, "Undef"
  vivify_253:
    find_lex $P283, "$instance_of"
    unless_null $P283, vivify_254
    new $P283, "Undef"
  vivify_254:
    $P284 = $P281."new"($P282 :named("name"), $P283 :named("instance_of"))
    store_lex "$metarole", $P284
.annotate 'line', 146
    find_lex $P285, "$metarole"
    unless_null $P285, vivify_255
    new $P285, "Undef"
  vivify_255:
    find_lex $P286, "$repr"
    unless_null $P286, vivify_256
    new $P286, "Undef"
  vivify_256:
    set $S287, $P286
    repr_type_object_for $P288, $P285, $S287
.annotate 'line', 144
    .return ($P288)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("25_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_290
    .param pmc param_291
    .param pmc param_292
    .param pmc param_293
.annotate 'line', 149
    .lex "self", param_290
    .lex "$obj", param_291
    .lex "$name", param_292
    .lex "$code_obj", param_293
.annotate 'line', 150
    find_lex $P295, "$name"
    unless_null $P295, vivify_257
    new $P295, "Undef"
  vivify_257:
    find_lex $P296, "self"
    find_lex $P297, "$?CLASS"
    getattribute $P298, $P296, $P297, "%!methods"
    unless_null $P298, vivify_258
    $P298 = root_new ['parrot';'Hash']
  vivify_258:
    set $P299, $P298[$P295]
    unless_null $P299, vivify_259
    new $P299, "Undef"
  vivify_259:
    unless $P299, if_294_end
.annotate 'line', 151
    new $P300, "String"
    assign $P300, "This role already has a method named "
    find_lex $P301, "$name"
    unless_null $P301, vivify_260
    new $P301, "Undef"
  vivify_260:
    concat $P302, $P300, $P301
    die $P302
  if_294_end:
.annotate 'line', 153
    find_lex $P303, "$code_obj"
    unless_null $P303, vivify_261
    new $P303, "Undef"
  vivify_261:
    find_lex $P304, "$name"
    unless_null $P304, vivify_262
    new $P304, "Undef"
  vivify_262:
    find_lex $P305, "self"
    find_lex $P306, "$?CLASS"
    getattribute $P307, $P305, $P306, "%!methods"
    unless_null $P307, vivify_263
    $P307 = root_new ['parrot';'Hash']
    setattribute $P305, $P306, "%!methods", $P307
  vivify_263:
    set $P307[$P304], $P303
.annotate 'line', 149
    .return ($P303)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("26_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_309
    .param pmc param_310
    .param pmc param_311
    .param pmc param_312
.annotate 'line', 156
    .lex "self", param_309
    .lex "$obj", param_310
    .lex "$name", param_311
    .lex "$code_obj", param_312
.annotate 'line', 157
    $P313 = root_new ['parrot';'Hash']
    .lex "%todo", $P313
.annotate 'line', 156
    find_lex $P314, "%todo"
    unless_null $P314, vivify_264
    $P314 = root_new ['parrot';'Hash']
  vivify_264:
.annotate 'line', 158
    find_lex $P315, "$name"
    unless_null $P315, vivify_265
    new $P315, "Undef"
  vivify_265:
    find_lex $P316, "%todo"
    unless_null $P316, vivify_266
    $P316 = root_new ['parrot';'Hash']
    store_lex "%todo", $P316
  vivify_266:
    set $P316["name"], $P315
.annotate 'line', 159
    find_lex $P317, "$code_obj"
    unless_null $P317, vivify_267
    new $P317, "Undef"
  vivify_267:
    find_lex $P318, "%todo"
    unless_null $P318, vivify_268
    $P318 = root_new ['parrot';'Hash']
    store_lex "%todo", $P318
  vivify_268:
    set $P318["code"], $P317
.annotate 'line', 160
    find_lex $P319, "%todo"
    unless_null $P319, vivify_269
    $P319 = root_new ['parrot';'Hash']
  vivify_269:
    find_lex $P320, "self"
    find_lex $P321, "$?CLASS"
    getattribute $P322, $P320, $P321, "@!multi_methods_to_incorporate"
    unless_null $P322, vivify_270
    $P322 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $N323, $P322
    set $I324, $N323
    find_lex $P325, "self"
    find_lex $P326, "$?CLASS"
    getattribute $P327, $P325, $P326, "@!multi_methods_to_incorporate"
    unless_null $P327, vivify_271
    $P327 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P325, $P326, "@!multi_methods_to_incorporate", $P327
  vivify_271:
    set $P327[$I324], $P319
    find_lex $P328, "$code_obj"
    unless_null $P328, vivify_272
    new $P328, "Undef"
  vivify_272:
.annotate 'line', 156
    .return ($P328)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("27_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_330
    .param pmc param_331
    .param pmc param_332
.annotate 'line', 164
    .lex "self", param_330
    .lex "$obj", param_331
    .lex "$meta_attr", param_332
.annotate 'line', 165
    new $P333, "Undef"
    .lex "$name", $P333
    find_lex $P334, "$meta_attr"
    unless_null $P334, vivify_273
    new $P334, "Undef"
  vivify_273:
    $P335 = $P334."name"()
    store_lex "$name", $P335
.annotate 'line', 166
    find_lex $P337, "$name"
    unless_null $P337, vivify_274
    new $P337, "Undef"
  vivify_274:
    find_lex $P338, "self"
    find_lex $P339, "$?CLASS"
    getattribute $P340, $P338, $P339, "%!attributes"
    unless_null $P340, vivify_275
    $P340 = root_new ['parrot';'Hash']
  vivify_275:
    set $P341, $P340[$P337]
    unless_null $P341, vivify_276
    new $P341, "Undef"
  vivify_276:
    unless $P341, if_336_end
.annotate 'line', 167
    new $P342, "String"
    assign $P342, "This role already has an attribute named "
    find_lex $P343, "$name"
    unless_null $P343, vivify_277
    new $P343, "Undef"
  vivify_277:
    concat $P344, $P342, $P343
    die $P344
  if_336_end:
.annotate 'line', 169
    find_lex $P345, "$meta_attr"
    unless_null $P345, vivify_278
    new $P345, "Undef"
  vivify_278:
    find_lex $P346, "$name"
    unless_null $P346, vivify_279
    new $P346, "Undef"
  vivify_279:
    find_lex $P347, "self"
    find_lex $P348, "$?CLASS"
    getattribute $P349, $P347, $P348, "%!attributes"
    unless_null $P349, vivify_280
    $P349 = root_new ['parrot';'Hash']
    setattribute $P347, $P348, "%!attributes", $P349
  vivify_280:
    set $P349[$P346], $P345
.annotate 'line', 164
    .return ($P345)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("28_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_351
    .param pmc param_352
    .param pmc param_353
.annotate 'line', 172
    .lex "self", param_351
    .lex "$obj", param_352
    .lex "$parent", param_353
.annotate 'line', 173
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("29_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357
.annotate 'line', 176
    .lex "self", param_355
    .lex "$obj", param_356
    .lex "$role", param_357
.annotate 'line', 177
    find_lex $P358, "$role"
    unless_null $P358, vivify_281
    new $P358, "Undef"
  vivify_281:
    find_lex $P359, "self"
    find_lex $P360, "$?CLASS"
    getattribute $P361, $P359, $P360, "@!roles"
    unless_null $P361, vivify_282
    $P361 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    set $N362, $P361
    set $I363, $N362
    find_lex $P364, "self"
    find_lex $P365, "$?CLASS"
    getattribute $P366, $P364, $P365, "@!roles"
    unless_null $P366, vivify_283
    $P366 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P364, $P365, "@!roles", $P366
  vivify_283:
    set $P366[$I363], $P358
.annotate 'line', 176
    .return ($P358)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("30_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_368
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 180
    .lex "self", param_368
    .lex "$obj", param_369
    .lex "$colliding_name", param_370
.annotate 'line', 181
    find_lex $P371, "$colliding_name"
    unless_null $P371, vivify_284
    new $P371, "Undef"
  vivify_284:
    find_lex $P372, "self"
    find_lex $P373, "$?CLASS"
    getattribute $P374, $P372, $P373, "@!collisions"
    unless_null $P374, vivify_285
    $P374 = root_new ['parrot';'ResizablePMCArray']
  vivify_285:
    set $N375, $P374
    set $I376, $N375
    find_lex $P377, "self"
    find_lex $P378, "$?CLASS"
    getattribute $P379, $P377, $P378, "@!collisions"
    unless_null $P379, vivify_286
    $P379 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P377, $P378, "@!collisions", $P379
  vivify_286:
    set $P379[$I376], $P371
.annotate 'line', 180
    .return ($P371)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("31_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 185
    .const 'Sub' $P394 = "32_1304459371.883" 
    capture_lex $P394
    .lex "self", param_381
    .lex "$obj", param_382
.annotate 'line', 188
    find_lex $P384, "self"
    find_lex $P385, "$?CLASS"
    getattribute $P386, $P384, $P385, "@!roles"
    unless_null $P386, vivify_287
    $P386 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    unless $P386, if_383_end
.annotate 'line', 189
    find_lex $P388, "self"
    find_lex $P389, "$?CLASS"
    getattribute $P390, $P388, $P389, "@!roles"
    unless_null $P390, vivify_288
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    defined $I391, $P390
    unless $I391, for_undef_289
    iter $P387, $P390
    new $P418, 'ExceptionHandler'
    set_label $P418, loop417_handler
    $P418."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P418
  loop417_test:
    unless $P387, loop417_done
    shift $P392, $P387
  loop417_redo:
    .const 'Sub' $P394 = "32_1304459371.883" 
    capture_lex $P394
    $P394($P392)
  loop417_next:
    goto loop417_test
  loop417_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P419, exception, 'type'
    eq $P419, .CONTROL_LOOP_NEXT, loop417_next
    eq $P419, .CONTROL_LOOP_REDO, loop417_redo
  loop417_done:
    pop_eh 
  for_undef_289:
.annotate 'line', 193
    find_lex $P420, "RoleToRoleApplier"
    find_lex $P421, "$obj"
    unless_null $P421, vivify_297
    new $P421, "Undef"
  vivify_297:
    find_lex $P422, "self"
    find_lex $P423, "$?CLASS"
    getattribute $P424, $P422, $P423, "@!roles"
    unless_null $P424, vivify_298
    $P424 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
    $P420."apply"($P421, $P424)
  if_383_end:
.annotate 'line', 197
    new $P425, "Integer"
    assign $P425, 1
    find_lex $P426, "self"
    find_lex $P427, "$?CLASS"
    setattribute $P426, $P427, "$!composed", $P425
    find_lex $P428, "$obj"
    unless_null $P428, vivify_299
    new $P428, "Undef"
  vivify_299:
.annotate 'line', 185
    .return ($P428)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block393"  :anon :subid("32_1304459371.883") :outer("31_1304459371.883")
    .param pmc param_395
.annotate 'line', 189
    .lex "$_", param_395
.annotate 'line', 190
    find_lex $P396, "$_"
    unless_null $P396, vivify_290
    new $P396, "Undef"
  vivify_290:
    find_lex $P397, "self"
    find_lex $P398, "$?CLASS"
    getattribute $P399, $P397, $P398, "@!done"
    unless_null $P399, vivify_291
    $P399 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    set $N400, $P399
    set $I401, $N400
    find_lex $P402, "self"
    find_lex $P403, "$?CLASS"
    getattribute $P404, $P402, $P403, "@!done"
    unless_null $P404, vivify_292
    $P404 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P402, $P403, "@!done", $P404
  vivify_292:
    set $P404[$I401], $P396
.annotate 'line', 191
    find_lex $P405, "$_"
    unless_null $P405, vivify_293
    new $P405, "Undef"
  vivify_293:
    get_how $P406, $P405
    find_lex $P407, "$_"
    unless_null $P407, vivify_294
    new $P407, "Undef"
  vivify_294:
    $P408 = $P406."instance_of"($P407)
    find_lex $P409, "self"
    find_lex $P410, "$?CLASS"
    getattribute $P411, $P409, $P410, "@!done"
    unless_null $P411, vivify_295
    $P411 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N412, $P411
    set $I413, $N412
    find_lex $P414, "self"
    find_lex $P415, "$?CLASS"
    getattribute $P416, $P414, $P415, "@!done"
    unless_null $P416, vivify_296
    $P416 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P414, $P415, "@!done", $P416
  vivify_296:
    set $P416[$I413], $P408
.annotate 'line', 189
    .return ($P408)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("33_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_430
    .param pmc param_431
    .param pmc param_432 :optional :named("local")
    .param int has_param_432 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P443 = "34_1304459371.883" 
    capture_lex $P443
    .lex "self", param_430
    .lex "$obj", param_431
    if has_param_432, optparam_300
    new $P433, "Undef"
    set param_432, $P433
  optparam_300:
    .lex "$local", param_432
.annotate 'line', 207
    $P434 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P434
.annotate 'line', 206
    find_lex $P435, "@meths"
    unless_null $P435, vivify_301
    $P435 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
.annotate 'line', 208
    find_lex $P437, "self"
    find_lex $P438, "$?CLASS"
    getattribute $P439, $P437, $P438, "%!methods"
    unless_null $P439, vivify_302
    $P439 = root_new ['parrot';'Hash']
  vivify_302:
    defined $I440, $P439
    unless $I440, for_undef_303
    iter $P436, $P439
    new $P450, 'ExceptionHandler'
    set_label $P450, loop449_handler
    $P450."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P450
  loop449_test:
    unless $P436, loop449_done
    shift $P441, $P436
  loop449_redo:
    .const 'Sub' $P443 = "34_1304459371.883" 
    capture_lex $P443
    $P443($P441)
  loop449_next:
    goto loop449_test
  loop449_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P451, exception, 'type'
    eq $P451, .CONTROL_LOOP_NEXT, loop449_next
    eq $P451, .CONTROL_LOOP_REDO, loop449_redo
  loop449_done:
    pop_eh 
  for_undef_303:
    find_lex $P452, "@meths"
    unless_null $P452, vivify_306
    $P452 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
.annotate 'line', 206
    .return ($P452)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block442"  :anon :subid("34_1304459371.883") :outer("33_1304459371.883")
    .param pmc param_444
.annotate 'line', 208
    .lex "$_", param_444
.annotate 'line', 209
    find_lex $P445, "@meths"
    unless_null $P445, vivify_304
    $P445 = root_new ['parrot';'ResizablePMCArray']
  vivify_304:
    find_lex $P446, "$_"
    unless_null $P446, vivify_305
    new $P446, "Undef"
  vivify_305:
    $P447 = $P446."value"()
    $P448 = $P445."push"($P447)
.annotate 'line', 208
    .return ($P448)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("35_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_454
    .param pmc param_455
.annotate 'line', 214
    .lex "self", param_454
    .lex "$obj", param_455
    find_lex $P456, "self"
    find_lex $P457, "$?CLASS"
    getattribute $P458, $P456, $P457, "%!methods"
    unless_null $P458, vivify_307
    $P458 = root_new ['parrot';'Hash']
  vivify_307:
    .return ($P458)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("36_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_460
    .param pmc param_461
.annotate 'line', 218
    .lex "self", param_460
    .lex "$obj", param_461
    find_lex $P462, "self"
    find_lex $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "@!collisions"
    unless_null $P464, vivify_308
    $P464 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    .return ($P464)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("37_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_466
    .param pmc param_467
.annotate 'line', 222
    .lex "self", param_466
    .lex "$obj", param_467
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "$!name"
    unless_null $P470, vivify_309
    new $P470, "Undef"
  vivify_309:
    .return ($P470)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("38_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_472
    .param pmc param_473
    .param pmc param_474 :optional :named("local")
    .param int has_param_474 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P485 = "39_1304459371.883" 
    capture_lex $P485
    .lex "self", param_472
    .lex "$obj", param_473
    if has_param_474, optparam_310
    new $P475, "Undef"
    set param_474, $P475
  optparam_310:
    .lex "$local", param_474
.annotate 'line', 227
    $P476 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P476
.annotate 'line', 226
    find_lex $P477, "@attrs"
    unless_null $P477, vivify_311
    $P477 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
.annotate 'line', 228
    find_lex $P479, "self"
    find_lex $P480, "$?CLASS"
    getattribute $P481, $P479, $P480, "%!attributes"
    unless_null $P481, vivify_312
    $P481 = root_new ['parrot';'Hash']
  vivify_312:
    defined $I482, $P481
    unless $I482, for_undef_313
    iter $P478, $P481
    new $P492, 'ExceptionHandler'
    set_label $P492, loop491_handler
    $P492."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P492
  loop491_test:
    unless $P478, loop491_done
    shift $P483, $P478
  loop491_redo:
    .const 'Sub' $P485 = "39_1304459371.883" 
    capture_lex $P485
    $P485($P483)
  loop491_next:
    goto loop491_test
  loop491_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P493, exception, 'type'
    eq $P493, .CONTROL_LOOP_NEXT, loop491_next
    eq $P493, .CONTROL_LOOP_REDO, loop491_redo
  loop491_done:
    pop_eh 
  for_undef_313:
    find_lex $P494, "@attrs"
    unless_null $P494, vivify_316
    $P494 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 226
    .return ($P494)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block484"  :anon :subid("39_1304459371.883") :outer("38_1304459371.883")
    .param pmc param_486
.annotate 'line', 228
    .lex "$_", param_486
.annotate 'line', 229
    find_lex $P487, "@attrs"
    unless_null $P487, vivify_314
    $P487 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P488, "$_"
    unless_null $P488, vivify_315
    new $P488, "Undef"
  vivify_315:
    $P489 = $P488."value"()
    $P490 = $P487."push"($P489)
.annotate 'line', 228
    .return ($P490)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("40_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_496
    .param pmc param_497
.annotate 'line', 234
    .lex "self", param_496
    .lex "$obj", param_497
    find_lex $P498, "self"
    find_lex $P499, "$?CLASS"
    getattribute $P500, $P498, $P499, "@!roles"
    unless_null $P500, vivify_317
    $P500 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    .return ($P500)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("41_1304459371.883") :outer("21_1304459371.883")
    .param pmc param_502
    .param pmc param_503
.annotate 'line', 238
    .lex "self", param_502
    .lex "$obj", param_503
    find_lex $P504, "self"
    find_lex $P505, "$?CLASS"
    getattribute $P506, $P504, $P505, "$!instance_of"
    unless_null $P506, vivify_318
    new $P506, "Undef"
  vivify_318:
    .return ($P506)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block508"  :subid("42_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 244
    .const 'Sub' $P582 = "47_1304459371.883" 
    capture_lex $P582
    .const 'Sub' $P545 = "45_1304459371.883" 
    capture_lex $P545
    .const 'Sub' $P510 = "43_1304459371.883" 
    capture_lex $P510
.annotate 'line', 246
    .const 'Sub' $P510 = "43_1304459371.883" 
    newclosure $P544, $P510
    .lex "has_method", $P544
.annotate 'line', 254
    .const 'Sub' $P545 = "45_1304459371.883" 
    newclosure $P577, $P545
    .lex "has_attribute", $P577
.annotate 'line', 244
    .lex "$?PACKAGE", $P578
    .lex "$?CLASS", $P579
    find_lex $P580, "has_method"
    find_lex $P581, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P582 = "47_1304459371.883" 
    newclosure $P720, $P582
.annotate 'line', 244
    .return ($P720)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1304459371.883") :outer("42_1304459371.883")
    .param pmc param_513
    .param pmc param_514
    .param pmc param_515
.annotate 'line', 246
    .const 'Sub' $P527 = "44_1304459371.883" 
    capture_lex $P527
    new $P512, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P512, control_511
    push_eh $P512
    .lex "$target", param_513
    .lex "$name", param_514
    .lex "$local", param_515
.annotate 'line', 247
    $P516 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P516
    find_lex $P517, "$target"
    unless_null $P517, vivify_319
    new $P517, "Undef"
  vivify_319:
    get_how $P518, $P517
    find_lex $P519, "$target"
    unless_null $P519, vivify_320
    new $P519, "Undef"
  vivify_320:
    find_lex $P520, "$local"
    unless_null $P520, vivify_321
    new $P520, "Undef"
  vivify_321:
    $P521 = $P518."methods"($P519, $P520 :named("local"))
    store_lex "@methods", $P521
.annotate 'line', 248
    find_lex $P523, "@methods"
    unless_null $P523, vivify_322
    $P523 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    defined $I524, $P523
    unless $I524, for_undef_323
    iter $P522, $P523
    new $P539, 'ExceptionHandler'
    set_label $P539, loop538_handler
    $P539."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P539
  loop538_test:
    unless $P522, loop538_done
    shift $P525, $P522
  loop538_redo:
    .const 'Sub' $P527 = "44_1304459371.883" 
    capture_lex $P527
    $P527($P525)
  loop538_next:
    goto loop538_test
  loop538_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P540, exception, 'type'
    eq $P540, .CONTROL_LOOP_NEXT, loop538_next
    eq $P540, .CONTROL_LOOP_REDO, loop538_redo
  loop538_done:
    pop_eh 
  for_undef_323:
.annotate 'line', 251
    new $P541, "Exception"
    set $P541['type'], .CONTROL_RETURN
    new $P542, "Integer"
    assign $P542, 0
    setattribute $P541, 'payload', $P542
    throw $P541
.annotate 'line', 246
    .return ()
  control_511:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P543, exception, "payload"
    .return ($P543)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block526"  :anon :subid("44_1304459371.883") :outer("43_1304459371.883")
    .param pmc param_528
.annotate 'line', 248
    .lex "$_", param_528
.annotate 'line', 249
    find_lex $P531, "$_"
    unless_null $P531, vivify_324
    new $P531, "Undef"
  vivify_324:
    set $S532, $P531
    find_lex $P533, "$name"
    unless_null $P533, vivify_325
    new $P533, "Undef"
  vivify_325:
    set $S534, $P533
    iseq $I535, $S532, $S534
    if $I535, if_530
    new $P529, 'Integer'
    set $P529, $I535
    goto if_530_end
  if_530:
    new $P536, "Exception"
    set $P536['type'], .CONTROL_RETURN
    new $P537, "Integer"
    assign $P537, 1
    setattribute $P536, 'payload', $P537
    throw $P536
  if_530_end:
.annotate 'line', 248
    .return ($P529)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1304459371.883") :outer("42_1304459371.883")
    .param pmc param_548
    .param pmc param_549
.annotate 'line', 254
    .const 'Sub' $P560 = "46_1304459371.883" 
    capture_lex $P560
    new $P547, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P547, control_546
    push_eh $P547
    .lex "$target", param_548
    .lex "$name", param_549
.annotate 'line', 255
    $P550 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P550
    find_lex $P551, "$target"
    unless_null $P551, vivify_326
    new $P551, "Undef"
  vivify_326:
    get_how $P552, $P551
    find_lex $P553, "$target"
    unless_null $P553, vivify_327
    new $P553, "Undef"
  vivify_327:
    $P554 = $P552."attributes"($P553, 1 :named("local"))
    store_lex "@attributes", $P554
.annotate 'line', 256
    find_lex $P556, "@attributes"
    unless_null $P556, vivify_328
    $P556 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    defined $I557, $P556
    unless $I557, for_undef_329
    iter $P555, $P556
    new $P572, 'ExceptionHandler'
    set_label $P572, loop571_handler
    $P572."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P572
  loop571_test:
    unless $P555, loop571_done
    shift $P558, $P555
  loop571_redo:
    .const 'Sub' $P560 = "46_1304459371.883" 
    capture_lex $P560
    $P560($P558)
  loop571_next:
    goto loop571_test
  loop571_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P573, exception, 'type'
    eq $P573, .CONTROL_LOOP_NEXT, loop571_next
    eq $P573, .CONTROL_LOOP_REDO, loop571_redo
  loop571_done:
    pop_eh 
  for_undef_329:
.annotate 'line', 259
    new $P574, "Exception"
    set $P574['type'], .CONTROL_RETURN
    new $P575, "Integer"
    assign $P575, 0
    setattribute $P574, 'payload', $P575
    throw $P574
.annotate 'line', 254
    .return ()
  control_546:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P576, exception, "payload"
    .return ($P576)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block559"  :anon :subid("46_1304459371.883") :outer("45_1304459371.883")
    .param pmc param_561
.annotate 'line', 256
    .lex "$_", param_561
.annotate 'line', 257
    find_lex $P564, "$_"
    unless_null $P564, vivify_330
    new $P564, "Undef"
  vivify_330:
    $S565 = $P564."name"()
    find_lex $P566, "$name"
    unless_null $P566, vivify_331
    new $P566, "Undef"
  vivify_331:
    set $S567, $P566
    iseq $I568, $S565, $S567
    if $I568, if_563
    new $P562, 'Integer'
    set $P562, $I568
    goto if_563_end
  if_563:
    new $P569, "Exception"
    set $P569['type'], .CONTROL_RETURN
    new $P570, "Integer"
    assign $P570, 1
    setattribute $P569, 'payload', $P570
    throw $P569
  if_563_end:
.annotate 'line', 256
    .return ($P562)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("47_1304459371.883") :outer("42_1304459371.883")
    .param pmc param_583
    .param pmc param_584
    .param pmc param_585
.annotate 'line', 262
    .const 'Sub' $P691 = "51_1304459371.883" 
    capture_lex $P691
    .const 'Sub' $P665 = "50_1304459371.883" 
    capture_lex $P665
    .const 'Sub' $P636 = "49_1304459371.883" 
    capture_lex $P636
    .const 'Sub' $P616 = "48_1304459371.883" 
    capture_lex $P616
    .lex "self", param_583
    .lex "$target", param_584
    .lex "@roles", param_585
.annotate 'line', 265
    new $P586, "Undef"
    .lex "$to_compose", $P586
.annotate 'line', 266
    new $P587, "Undef"
    .lex "$to_compose_meta", $P587
.annotate 'line', 281
    $P588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P588
.annotate 'line', 290
    $P589 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P589
.annotate 'line', 298
    $P590 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P590
.annotate 'line', 310
    $P591 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P591
.annotate 'line', 262
    find_lex $P592, "$to_compose"
    unless_null $P592, vivify_332
    new $P592, "Undef"
  vivify_332:
    find_lex $P593, "$to_compose_meta"
    unless_null $P593, vivify_333
    new $P593, "Undef"
  vivify_333:
.annotate 'line', 267
    find_lex $P595, "@roles"
    unless_null $P595, vivify_334
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    set $N596, $P595
    iseq $I597, $N596, 1.0
    if $I597, if_594
.annotate 'line', 272
    find_lex $P602, "NQPConcreteRoleHOW"
    find_lex $P603, "$?PACKAGE"
    get_who $P604, $P603
    set $P607, $P604["NQPMu"]
    unless_null $P607, vivify_335
    get_hll_global $P605, "GLOBAL"
    get_who $P606, $P605
    set $P607, $P606["NQPMu"]
  vivify_335:
    $P608 = $P602."new_type"($P607 :named("instance_of"))
    store_lex "$to_compose", $P608
.annotate 'line', 273
    find_lex $P609, "$to_compose"
    unless_null $P609, vivify_336
    new $P609, "Undef"
  vivify_336:
    get_how $P610, $P609
    store_lex "$to_compose_meta", $P610
.annotate 'line', 274
    find_lex $P612, "@roles"
    unless_null $P612, vivify_337
    $P612 = root_new ['parrot';'ResizablePMCArray']
  vivify_337:
    defined $I613, $P612
    unless $I613, for_undef_338
    iter $P611, $P612
    new $P623, 'ExceptionHandler'
    set_label $P623, loop622_handler
    $P623."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P623
  loop622_test:
    unless $P611, loop622_done
    shift $P614, $P611
  loop622_redo:
    .const 'Sub' $P616 = "48_1304459371.883" 
    capture_lex $P616
    $P616($P614)
  loop622_next:
    goto loop622_test
  loop622_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P624, exception, 'type'
    eq $P624, .CONTROL_LOOP_NEXT, loop622_next
    eq $P624, .CONTROL_LOOP_REDO, loop622_redo
  loop622_done:
    pop_eh 
  for_undef_338:
.annotate 'line', 277
    find_lex $P625, "$to_compose_meta"
    unless_null $P625, vivify_342
    new $P625, "Undef"
  vivify_342:
    find_lex $P626, "$to_compose"
    unless_null $P626, vivify_343
    new $P626, "Undef"
  vivify_343:
    $P627 = $P625."compose"($P626)
    store_lex "$to_compose", $P627
.annotate 'line', 271
    goto if_594_end
  if_594:
.annotate 'line', 268
    find_lex $P598, "@roles"
    unless_null $P598, vivify_344
    $P598 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
    set $P599, $P598[0]
    unless_null $P599, vivify_345
    new $P599, "Undef"
  vivify_345:
    store_lex "$to_compose", $P599
.annotate 'line', 269
    find_lex $P600, "$to_compose"
    unless_null $P600, vivify_346
    new $P600, "Undef"
  vivify_346:
    get_how $P601, $P600
    store_lex "$to_compose_meta", $P601
  if_594_end:
.annotate 'line', 281
    find_lex $P628, "$to_compose_meta"
    unless_null $P628, vivify_347
    new $P628, "Undef"
  vivify_347:
    find_lex $P629, "$to_compose"
    unless_null $P629, vivify_348
    new $P629, "Undef"
  vivify_348:
    $P630 = $P628."collisions"($P629)
    store_lex "@collisions", $P630
.annotate 'line', 282
    find_lex $P632, "@collisions"
    unless_null $P632, vivify_349
    $P632 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    defined $I633, $P632
    unless $I633, for_undef_350
    iter $P631, $P632
    new $P655, 'ExceptionHandler'
    set_label $P655, loop654_handler
    $P655."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P655
  loop654_test:
    unless $P631, loop654_done
    shift $P634, $P631
  loop654_redo:
    .const 'Sub' $P636 = "49_1304459371.883" 
    capture_lex $P636
    $P636($P634)
  loop654_next:
    goto loop654_test
  loop654_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P656, exception, 'type'
    eq $P656, .CONTROL_LOOP_NEXT, loop654_next
    eq $P656, .CONTROL_LOOP_REDO, loop654_redo
  loop654_done:
    pop_eh 
  for_undef_350:
.annotate 'line', 290
    find_lex $P657, "$to_compose_meta"
    unless_null $P657, vivify_356
    new $P657, "Undef"
  vivify_356:
    find_lex $P658, "$to_compose"
    unless_null $P658, vivify_357
    new $P658, "Undef"
  vivify_357:
    $P659 = $P657."methods"($P658)
    store_lex "@methods", $P659
.annotate 'line', 291
    find_lex $P661, "@methods"
    unless_null $P661, vivify_358
    $P661 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    defined $I662, $P661
    unless $I662, for_undef_359
    iter $P660, $P661
    new $P681, 'ExceptionHandler'
    set_label $P681, loop680_handler
    $P681."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P681
  loop680_test:
    unless $P660, loop680_done
    shift $P663, $P660
  loop680_redo:
    .const 'Sub' $P665 = "50_1304459371.883" 
    capture_lex $P665
    $P665($P663)
  loop680_next:
    goto loop680_test
  loop680_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P682, exception, 'type'
    eq $P682, .CONTROL_LOOP_NEXT, loop680_next
    eq $P682, .CONTROL_LOOP_REDO, loop680_redo
  loop680_done:
    pop_eh 
  for_undef_359:
.annotate 'line', 298
    find_lex $P683, "$to_compose_meta"
    unless_null $P683, vivify_366
    new $P683, "Undef"
  vivify_366:
    find_lex $P684, "$to_compose"
    unless_null $P684, vivify_367
    new $P684, "Undef"
  vivify_367:
    $P685 = $P683."attributes"($P684)
    store_lex "@attributes", $P685
.annotate 'line', 299
    find_lex $P687, "@attributes"
    unless_null $P687, vivify_368
    $P687 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    defined $I688, $P687
    unless $I688, for_undef_369
    iter $P686, $P687
    new $P715, 'ExceptionHandler'
    set_label $P715, loop714_handler
    $P715."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P715
  loop714_test:
    unless $P686, loop714_done
    shift $P689, $P686
  loop714_redo:
    .const 'Sub' $P691 = "51_1304459371.883" 
    capture_lex $P691
    $P691($P689)
  loop714_next:
    goto loop714_test
  loop714_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P716, exception, 'type'
    eq $P716, .CONTROL_LOOP_NEXT, loop714_next
    eq $P716, .CONTROL_LOOP_REDO, loop714_redo
  loop714_done:
    pop_eh 
  for_undef_369:
    find_lex $P717, "@done"
    unless_null $P717, vivify_378
    $P717 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
.annotate 'line', 311
    find_lex $P718, "$to_compose"
    unless_null $P718, vivify_379
    new $P718, "Undef"
  vivify_379:
    find_lex $P719, "@done"
    unless_null $P719, vivify_380
    $P719 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P719
  vivify_380:
    set $P719[0], $P718
.annotate 'line', 262
    .return ($P718)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block615"  :anon :subid("48_1304459371.883") :outer("47_1304459371.883")
    .param pmc param_617
.annotate 'line', 274
    .lex "$_", param_617
.annotate 'line', 275
    find_lex $P618, "$to_compose_meta"
    unless_null $P618, vivify_339
    new $P618, "Undef"
  vivify_339:
    find_lex $P619, "$to_compose"
    unless_null $P619, vivify_340
    new $P619, "Undef"
  vivify_340:
    find_lex $P620, "$_"
    unless_null $P620, vivify_341
    new $P620, "Undef"
  vivify_341:
    $P621 = $P618."add_role"($P619, $P620)
.annotate 'line', 274
    .return ($P621)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block635"  :anon :subid("49_1304459371.883") :outer("47_1304459371.883")
    .param pmc param_637
.annotate 'line', 282
    .lex "$_", param_637
.annotate 'line', 283
    find_lex $P640, "$target"
    unless_null $P640, vivify_351
    new $P640, "Undef"
  vivify_351:
    find_lex $P641, "$_"
    unless_null $P641, vivify_352
    new $P641, "Undef"
  vivify_352:
    set $S642, $P641
    $P643 = "has_method"($P640, $S642, 1)
    unless $P643, unless_639
    set $P638, $P643
    goto unless_639_end
  unless_639:
.annotate 'line', 284
    new $P644, 'String'
    set $P644, "Method '"
    find_lex $P645, "$_"
    unless_null $P645, vivify_353
    new $P645, "Undef"
  vivify_353:
    concat $P646, $P644, $P645
    concat $P647, $P646, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P648, "$target"
    unless_null $P648, vivify_354
    new $P648, "Undef"
  vivify_354:
    get_how $P649, $P648
    find_lex $P650, "$target"
    unless_null $P650, vivify_355
    new $P650, "Undef"
  vivify_355:
    $S651 = $P649."name"($P650)
    concat $P652, $P647, $S651
.annotate 'line', 284
    concat $P653, $P652, "'"
.annotate 'line', 285
    die $P653
  unless_639_end:
.annotate 'line', 282
    .return ($P638)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block664"  :anon :subid("50_1304459371.883") :outer("47_1304459371.883")
    .param pmc param_666
.annotate 'line', 291
    .lex "$_", param_666
.annotate 'line', 292
    find_lex $P669, "$target"
    unless_null $P669, vivify_360
    new $P669, "Undef"
  vivify_360:
    find_lex $P670, "$_"
    unless_null $P670, vivify_361
    new $P670, "Undef"
  vivify_361:
    set $S671, $P670
    $P672 = "has_method"($P669, $S671, 0)
    unless $P672, unless_668
    set $P667, $P672
    goto unless_668_end
  unless_668:
.annotate 'line', 293
    find_lex $P673, "$target"
    unless_null $P673, vivify_362
    new $P673, "Undef"
  vivify_362:
    get_how $P674, $P673
    find_lex $P675, "$target"
    unless_null $P675, vivify_363
    new $P675, "Undef"
  vivify_363:
    find_lex $P676, "$_"
    unless_null $P676, vivify_364
    new $P676, "Undef"
  vivify_364:
    set $S677, $P676
    find_lex $P678, "$_"
    unless_null $P678, vivify_365
    new $P678, "Undef"
  vivify_365:
    $P679 = $P674."add_method"($P675, $S677, $P678)
.annotate 'line', 292
    set $P667, $P679
  unless_668_end:
.annotate 'line', 291
    .return ($P667)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block690"  :anon :subid("51_1304459371.883") :outer("47_1304459371.883")
    .param pmc param_692
.annotate 'line', 299
    .lex "$_", param_692
.annotate 'line', 300
    find_lex $P694, "$target"
    unless_null $P694, vivify_370
    new $P694, "Undef"
  vivify_370:
    find_lex $P695, "$_"
    unless_null $P695, vivify_371
    new $P695, "Undef"
  vivify_371:
    $P696 = $P695."name"()
    $P697 = "has_attribute"($P694, $P696)
    unless $P697, if_693_end
.annotate 'line', 301
    new $P698, "String"
    assign $P698, "Attribute '"
    find_lex $P699, "$_"
    unless_null $P699, vivify_372
    new $P699, "Undef"
  vivify_372:
    $S700 = $P699."name"()
    concat $P701, $P698, $S700
    concat $P702, $P701, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P703, "$target"
    unless_null $P703, vivify_373
    new $P703, "Undef"
  vivify_373:
    get_how $P704, $P703
    find_lex $P705, "$target"
    unless_null $P705, vivify_374
    new $P705, "Undef"
  vivify_374:
    $S706 = $P704."name"($P705)
    concat $P707, $P702, $S706
.annotate 'line', 301
    concat $P708, $P707, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P708
  if_693_end:
.annotate 'line', 304
    find_lex $P709, "$target"
    unless_null $P709, vivify_375
    new $P709, "Undef"
  vivify_375:
    get_how $P710, $P709
    find_lex $P711, "$target"
    unless_null $P711, vivify_376
    new $P711, "Undef"
  vivify_376:
    find_lex $P712, "$_"
    unless_null $P712, vivify_377
    new $P712, "Undef"
  vivify_377:
    $P713 = $P710."add_attribute"($P711, $P712)
.annotate 'line', 299
    .return ($P713)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block721"  :subid("52_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 320
    .const 'Sub' $P1032 = "76_1304459371.883" 
    capture_lex $P1032
    .const 'Sub' $P1008 = "74_1304459371.883" 
    capture_lex $P1008
    .const 'Sub' $P1002 = "73_1304459371.883" 
    capture_lex $P1002
    .const 'Sub' $P996 = "72_1304459371.883" 
    capture_lex $P996
    .const 'Sub' $P972 = "70_1304459371.883" 
    capture_lex $P972
    .const 'Sub' $P865 = "65_1304459371.883" 
    capture_lex $P865
    .const 'Sub' $P862 = "64_1304459371.883" 
    capture_lex $P862
    .const 'Sub' $P855 = "63_1304459371.883" 
    capture_lex $P855
    .const 'Sub' $P842 = "62_1304459371.883" 
    capture_lex $P842
    .const 'Sub' $P838 = "61_1304459371.883" 
    capture_lex $P838
    .const 'Sub' $P817 = "60_1304459371.883" 
    capture_lex $P817
    .const 'Sub' $P796 = "59_1304459371.883" 
    capture_lex $P796
    .const 'Sub' $P777 = "58_1304459371.883" 
    capture_lex $P777
    .const 'Sub' $P770 = "57_1304459371.883" 
    capture_lex $P770
    .const 'Sub' $P755 = "56_1304459371.883" 
    capture_lex $P755
    .const 'Sub' $P749 = "55_1304459371.883" 
    capture_lex $P749
    .const 'Sub' $P740 = "54_1304459371.883" 
    capture_lex $P740
    .const 'Sub' $P723 = "53_1304459371.883" 
    capture_lex $P723
.annotate 'line', 457
    .const 'Sub' $P723 = "53_1304459371.883" 
    newclosure $P737, $P723
    .lex "reify_method", $P737
.annotate 'line', 320
    .lex "$?PACKAGE", $P738
    .lex "$?CLASS", $P739
.annotate 'line', 422
    find_lex $P971, "reify_method"
.annotate 'line', 490
    .const 'Sub' $P1032 = "76_1304459371.883" 
    newclosure $P1038, $P1032
.annotate 'line', 320
    .return ($P1038)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_724
.annotate 'line', 457
    .lex "$meth", param_724
.annotate 'line', 458
    new $P725, "Undef"
    .lex "$callback", $P725
    find_lex $P726, "$meth"
    unless_null $P726, vivify_381
    new $P726, "Undef"
  vivify_381:
    getprop $P727, "REIFY_CALLBACK", $P726
    store_lex "$callback", $P727
.annotate 'line', 459
    find_lex $P730, "$callback"
    unless_null $P730, vivify_382
    new $P730, "Undef"
  vivify_382:
    defined $I731, $P730
    if $I731, if_729
    find_lex $P735, "$meth"
    unless_null $P735, vivify_383
    new $P735, "Undef"
  vivify_383:
    clone $P736, $P735
    set $P728, $P736
    goto if_729_end
  if_729:
    find_lex $P732, "$callback"
    unless_null $P732, vivify_384
    new $P732, "Undef"
  vivify_384:
    find_lex $P733, "$meth"
    unless_null $P733, vivify_385
    new $P733, "Undef"
  vivify_385:
    $P734 = $P732($P733)
    set $P728, $P734
  if_729_end:
.annotate 'line', 457
    .return ($P728)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("54_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_741
    .param pmc param_742 :named("name")
.annotate 'line', 350
    .lex "self", param_741
    .lex "$name", param_742
.annotate 'line', 351
    new $P743, "Undef"
    .lex "$obj", $P743
    find_lex $P744, "self"
    repr_instance_of $P745, $P744
    store_lex "$obj", $P745
.annotate 'line', 352
    find_lex $P746, "$obj"
    unless_null $P746, vivify_386
    new $P746, "Undef"
  vivify_386:
    find_lex $P747, "$name"
    unless_null $P747, vivify_387
    new $P747, "Undef"
  vivify_387:
    $P746."BUILD"($P747 :named("name"))
    find_lex $P748, "$obj"
    unless_null $P748, vivify_388
    new $P748, "Undef"
  vivify_388:
.annotate 'line', 350
    .return ($P748)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("55_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_750
    .param pmc param_751 :named("name")
.annotate 'line', 356
    .lex "self", param_750
    .lex "$name", param_751
.annotate 'line', 357
    find_lex $P752, "$name"
    unless_null $P752, vivify_389
    new $P752, "Undef"
  vivify_389:
    find_lex $P753, "self"
    find_lex $P754, "$?CLASS"
    setattribute $P753, $P754, "$!name", $P752
.annotate 'line', 356
    .return ($P752)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("56_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_756
    .param pmc param_757 :optional :named("name")
    .param int has_param_757 :opt_flag
    .param pmc param_759 :optional :named("repr")
    .param int has_param_759 :opt_flag
.annotate 'line', 362
    .lex "self", param_756
    if has_param_757, optparam_390
    new $P758, "String"
    assign $P758, "<anon>"
    set param_757, $P758
  optparam_390:
    .lex "$name", param_757
    if has_param_759, optparam_391
    new $P760, "String"
    assign $P760, "P6opaque"
    set param_759, $P760
  optparam_391:
    .lex "$repr", param_759
.annotate 'line', 363
    new $P761, "Undef"
    .lex "$metarole", $P761
    find_lex $P762, "self"
    find_lex $P763, "$name"
    unless_null $P763, vivify_392
    new $P763, "Undef"
  vivify_392:
    $P764 = $P762."new"($P763 :named("name"))
    store_lex "$metarole", $P764
.annotate 'line', 365
    find_lex $P765, "$metarole"
    unless_null $P765, vivify_393
    new $P765, "Undef"
  vivify_393:
    find_lex $P766, "$repr"
    unless_null $P766, vivify_394
    new $P766, "Undef"
  vivify_394:
    set $S767, $P766
    repr_type_object_for $P768, $P765, $S767
    $P769 = root_new ['parrot';'Hash']
    set_who $P768, $P769
.annotate 'line', 362
    .return ($P768)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("57_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_771
    .param pmc param_772
    .param pmc param_773
.annotate 'line', 369
    .lex "self", param_771
    .lex "$obj", param_772
    .lex "$body_block", param_773
.annotate 'line', 370
    find_lex $P774, "$body_block"
    unless_null $P774, vivify_395
    new $P774, "Undef"
  vivify_395:
    find_lex $P775, "self"
    find_lex $P776, "$?CLASS"
    setattribute $P775, $P776, "$!body_block", $P774
.annotate 'line', 369
    .return ($P774)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("58_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_778
    .param pmc param_779
    .param pmc param_780
    .param pmc param_781
.annotate 'line', 373
    .lex "self", param_778
    .lex "$obj", param_779
    .lex "$name", param_780
    .lex "$code_obj", param_781
.annotate 'line', 374
    find_lex $P783, "$name"
    unless_null $P783, vivify_396
    new $P783, "Undef"
  vivify_396:
    find_lex $P784, "self"
    find_lex $P785, "$?CLASS"
    getattribute $P786, $P784, $P785, "%!methods"
    unless_null $P786, vivify_397
    $P786 = root_new ['parrot';'Hash']
  vivify_397:
    set $P787, $P786[$P783]
    unless_null $P787, vivify_398
    new $P787, "Undef"
  vivify_398:
    unless $P787, if_782_end
.annotate 'line', 375
    new $P788, "String"
    assign $P788, "This role already has a method named "
    find_lex $P789, "$name"
    unless_null $P789, vivify_399
    new $P789, "Undef"
  vivify_399:
    concat $P790, $P788, $P789
    die $P790
  if_782_end:
.annotate 'line', 377
    find_lex $P791, "$code_obj"
    unless_null $P791, vivify_400
    new $P791, "Undef"
  vivify_400:
    find_lex $P792, "$name"
    unless_null $P792, vivify_401
    new $P792, "Undef"
  vivify_401:
    find_lex $P793, "self"
    find_lex $P794, "$?CLASS"
    getattribute $P795, $P793, $P794, "%!methods"
    unless_null $P795, vivify_402
    $P795 = root_new ['parrot';'Hash']
    setattribute $P793, $P794, "%!methods", $P795
  vivify_402:
    set $P795[$P792], $P791
.annotate 'line', 373
    .return ($P791)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("59_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799
    .param pmc param_800
.annotate 'line', 380
    .lex "self", param_797
    .lex "$obj", param_798
    .lex "$name", param_799
    .lex "$code_obj", param_800
.annotate 'line', 381
    $P801 = root_new ['parrot';'Hash']
    .lex "%todo", $P801
.annotate 'line', 380
    find_lex $P802, "%todo"
    unless_null $P802, vivify_403
    $P802 = root_new ['parrot';'Hash']
  vivify_403:
.annotate 'line', 382
    find_lex $P803, "$name"
    unless_null $P803, vivify_404
    new $P803, "Undef"
  vivify_404:
    find_lex $P804, "%todo"
    unless_null $P804, vivify_405
    $P804 = root_new ['parrot';'Hash']
    store_lex "%todo", $P804
  vivify_405:
    set $P804["name"], $P803
.annotate 'line', 383
    find_lex $P805, "$code_obj"
    unless_null $P805, vivify_406
    new $P805, "Undef"
  vivify_406:
    find_lex $P806, "%todo"
    unless_null $P806, vivify_407
    $P806 = root_new ['parrot';'Hash']
    store_lex "%todo", $P806
  vivify_407:
    set $P806["code"], $P805
.annotate 'line', 384
    find_lex $P807, "%todo"
    unless_null $P807, vivify_408
    $P807 = root_new ['parrot';'Hash']
  vivify_408:
    find_lex $P808, "self"
    find_lex $P809, "$?CLASS"
    getattribute $P810, $P808, $P809, "@!multi_methods_to_incorporate"
    unless_null $P810, vivify_409
    $P810 = root_new ['parrot';'ResizablePMCArray']
  vivify_409:
    set $N811, $P810
    set $I812, $N811
    find_lex $P813, "self"
    find_lex $P814, "$?CLASS"
    getattribute $P815, $P813, $P814, "@!multi_methods_to_incorporate"
    unless_null $P815, vivify_410
    $P815 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P813, $P814, "@!multi_methods_to_incorporate", $P815
  vivify_410:
    set $P815[$I812], $P807
    find_lex $P816, "$code_obj"
    unless_null $P816, vivify_411
    new $P816, "Undef"
  vivify_411:
.annotate 'line', 380
    .return ($P816)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("60_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_818
    .param pmc param_819
    .param pmc param_820
.annotate 'line', 388
    .lex "self", param_818
    .lex "$obj", param_819
    .lex "$meta_attr", param_820
.annotate 'line', 389
    new $P821, "Undef"
    .lex "$name", $P821
    find_lex $P822, "$meta_attr"
    unless_null $P822, vivify_412
    new $P822, "Undef"
  vivify_412:
    $P823 = $P822."name"()
    store_lex "$name", $P823
.annotate 'line', 390
    find_lex $P825, "$name"
    unless_null $P825, vivify_413
    new $P825, "Undef"
  vivify_413:
    find_lex $P826, "self"
    find_lex $P827, "$?CLASS"
    getattribute $P828, $P826, $P827, "%!attributes"
    unless_null $P828, vivify_414
    $P828 = root_new ['parrot';'Hash']
  vivify_414:
    set $P829, $P828[$P825]
    unless_null $P829, vivify_415
    new $P829, "Undef"
  vivify_415:
    unless $P829, if_824_end
.annotate 'line', 391
    new $P830, "String"
    assign $P830, "This role already has an attribute named "
    find_lex $P831, "$name"
    unless_null $P831, vivify_416
    new $P831, "Undef"
  vivify_416:
    concat $P832, $P830, $P831
    die $P832
  if_824_end:
.annotate 'line', 393
    find_lex $P833, "$meta_attr"
    unless_null $P833, vivify_417
    new $P833, "Undef"
  vivify_417:
    find_lex $P834, "$name"
    unless_null $P834, vivify_418
    new $P834, "Undef"
  vivify_418:
    find_lex $P835, "self"
    find_lex $P836, "$?CLASS"
    getattribute $P837, $P835, $P836, "%!attributes"
    unless_null $P837, vivify_419
    $P837 = root_new ['parrot';'Hash']
    setattribute $P835, $P836, "%!attributes", $P837
  vivify_419:
    set $P837[$P834], $P833
.annotate 'line', 388
    .return ($P833)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("61_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_839
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 396
    .lex "self", param_839
    .lex "$obj", param_840
    .lex "$parent", param_841
.annotate 'line', 397
    die "A role cannot inherit from a class"
.annotate 'line', 396
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("62_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_843
    .param pmc param_844
    .param pmc param_845
.annotate 'line', 400
    .lex "self", param_843
    .lex "$obj", param_844
    .lex "$role", param_845
.annotate 'line', 401
    find_lex $P846, "$role"
    unless_null $P846, vivify_420
    new $P846, "Undef"
  vivify_420:
    find_lex $P847, "self"
    find_lex $P848, "$?CLASS"
    getattribute $P849, $P847, $P848, "@!roles"
    unless_null $P849, vivify_421
    $P849 = root_new ['parrot';'ResizablePMCArray']
  vivify_421:
    set $N850, $P849
    set $I851, $N850
    find_lex $P852, "self"
    find_lex $P853, "$?CLASS"
    getattribute $P854, $P852, $P853, "@!roles"
    unless_null $P854, vivify_422
    $P854 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P852, $P853, "@!roles", $P854
  vivify_422:
    set $P854[$I851], $P846
.annotate 'line', 400
    .return ($P846)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("63_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_856
    .param pmc param_857
.annotate 'line', 405
    .lex "self", param_856
    .lex "$obj", param_857
.annotate 'line', 406
    new $P858, "Integer"
    assign $P858, 1
    find_lex $P859, "self"
    find_lex $P860, "$?CLASS"
    setattribute $P859, $P860, "$!composed", $P858
    find_lex $P861, "$obj"
    unless_null $P861, vivify_423
    new $P861, "Undef"
  vivify_423:
.annotate 'line', 405
    .return ($P861)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("64_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_863
    .param pmc param_864
.annotate 'line', 416
    .lex "self", param_863
    .lex "$obj", param_864
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("65_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_868
    .param pmc param_869
    .param pmc param_870
.annotate 'line', 422
    .const 'Sub' $P949 = "69_1304459371.883" 
    capture_lex $P949
    .const 'Sub' $P928 = "68_1304459371.883" 
    capture_lex $P928
    .const 'Sub' $P907 = "67_1304459371.883" 
    capture_lex $P907
    .const 'Sub' $P889 = "66_1304459371.883" 
    capture_lex $P889
    new $P867, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P867, control_866
    push_eh $P867
    .lex "self", param_868
    .lex "$obj", param_869
    .lex "$class_arg", param_870
.annotate 'line', 428
    new $P871, "Undef"
    .lex "$irole", $P871
.annotate 'line', 425
    find_lex $P872, "self"
    find_lex $P873, "$?CLASS"
    getattribute $P874, $P872, $P873, "$!body_block"
    unless_null $P874, vivify_424
    new $P874, "Undef"
  vivify_424:
    find_lex $P875, "$class_arg"
    unless_null $P875, vivify_425
    new $P875, "Undef"
  vivify_425:
    $P874($P875)
.annotate 'line', 428
    find_lex $P876, "NQPConcreteRoleHOW"
    find_lex $P877, "self"
    find_lex $P878, "$?CLASS"
    getattribute $P879, $P877, $P878, "$!name"
    unless_null $P879, vivify_426
    new $P879, "Undef"
  vivify_426:
    find_lex $P880, "$obj"
    unless_null $P880, vivify_427
    new $P880, "Undef"
  vivify_427:
    $P881 = $P876."new_type"($P879 :named("name"), $P880 :named("instance_of"))
    store_lex "$irole", $P881
.annotate 'line', 432
    find_lex $P883, "self"
    find_lex $P884, "$?CLASS"
    getattribute $P885, $P883, $P884, "%!attributes"
    unless_null $P885, vivify_428
    $P885 = root_new ['parrot';'Hash']
  vivify_428:
    defined $I886, $P885
    unless $I886, for_undef_429
    iter $P882, $P885
    new $P898, 'ExceptionHandler'
    set_label $P898, loop897_handler
    $P898."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P898
  loop897_test:
    unless $P882, loop897_done
    shift $P887, $P882
  loop897_redo:
    .const 'Sub' $P889 = "66_1304459371.883" 
    capture_lex $P889
    $P889($P887)
  loop897_next:
    goto loop897_test
  loop897_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P899, exception, 'type'
    eq $P899, .CONTROL_LOOP_NEXT, loop897_next
    eq $P899, .CONTROL_LOOP_REDO, loop897_redo
  loop897_done:
    pop_eh 
  for_undef_429:
.annotate 'line', 437
    find_lex $P901, "self"
    find_lex $P902, "$?CLASS"
    getattribute $P903, $P901, $P902, "%!methods"
    unless_null $P903, vivify_433
    $P903 = root_new ['parrot';'Hash']
  vivify_433:
    defined $I904, $P903
    unless $I904, for_undef_434
    iter $P900, $P903
    new $P919, 'ExceptionHandler'
    set_label $P919, loop918_handler
    $P919."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P919
  loop918_test:
    unless $P900, loop918_done
    shift $P905, $P900
  loop918_redo:
    .const 'Sub' $P907 = "67_1304459371.883" 
    capture_lex $P907
    $P907($P905)
  loop918_next:
    goto loop918_test
  loop918_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P920, exception, 'type'
    eq $P920, .CONTROL_LOOP_NEXT, loop918_next
    eq $P920, .CONTROL_LOOP_REDO, loop918_redo
  loop918_done:
    pop_eh 
  for_undef_434:
.annotate 'line', 440
    find_lex $P922, "self"
    find_lex $P923, "$?CLASS"
    getattribute $P924, $P922, $P923, "@!multi_methods_to_incorporate"
    unless_null $P924, vivify_439
    $P924 = root_new ['parrot';'ResizablePMCArray']
  vivify_439:
    defined $I925, $P924
    unless $I925, for_undef_440
    iter $P921, $P924
    new $P940, 'ExceptionHandler'
    set_label $P940, loop939_handler
    $P940."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P940
  loop939_test:
    unless $P921, loop939_done
    shift $P926, $P921
  loop939_redo:
    .const 'Sub' $P928 = "68_1304459371.883" 
    capture_lex $P928
    $P928($P926)
  loop939_next:
    goto loop939_test
  loop939_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P941, exception, 'type'
    eq $P941, .CONTROL_LOOP_NEXT, loop939_next
    eq $P941, .CONTROL_LOOP_REDO, loop939_redo
  loop939_done:
    pop_eh 
  for_undef_440:
.annotate 'line', 445
    find_lex $P943, "self"
    find_lex $P944, "$?CLASS"
    getattribute $P945, $P943, $P944, "@!roles"
    unless_null $P945, vivify_447
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    defined $I946, $P945
    unless $I946, for_undef_448
    iter $P942, $P945
    new $P963, 'ExceptionHandler'
    set_label $P963, loop962_handler
    $P963."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P963
  loop962_test:
    unless $P942, loop962_done
    shift $P947, $P942
  loop962_redo:
    .const 'Sub' $P949 = "69_1304459371.883" 
    capture_lex $P949
    $P949($P947)
  loop962_next:
    goto loop962_test
  loop962_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P964, exception, 'type'
    eq $P964, .CONTROL_LOOP_NEXT, loop962_next
    eq $P964, .CONTROL_LOOP_REDO, loop962_redo
  loop962_done:
    pop_eh 
  for_undef_448:
.annotate 'line', 451
    find_lex $P965, "$irole"
    unless_null $P965, vivify_455
    new $P965, "Undef"
  vivify_455:
    get_how $P966, $P965
    find_lex $P967, "$irole"
    unless_null $P967, vivify_456
    new $P967, "Undef"
  vivify_456:
    $P966."compose"($P967)
.annotate 'line', 452
    new $P968, "Exception"
    set $P968['type'], .CONTROL_RETURN
    find_lex $P969, "$irole"
    unless_null $P969, vivify_457
    new $P969, "Undef"
  vivify_457:
    setattribute $P968, 'payload', $P969
    throw $P968
.annotate 'line', 422
    .return ()
  control_866:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, "payload"
    .return ($P970)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block888"  :anon :subid("66_1304459371.883") :outer("65_1304459371.883")
    .param pmc param_890
.annotate 'line', 432
    .lex "$_", param_890
.annotate 'line', 433
    find_lex $P891, "$irole"
    unless_null $P891, vivify_430
    new $P891, "Undef"
  vivify_430:
    get_how $P892, $P891
    find_lex $P893, "$irole"
    unless_null $P893, vivify_431
    new $P893, "Undef"
  vivify_431:
    find_lex $P894, "$_"
    unless_null $P894, vivify_432
    new $P894, "Undef"
  vivify_432:
    $P895 = $P894."value"()
    $P896 = $P892."add_attribute"($P893, $P895)
.annotate 'line', 432
    .return ($P896)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block906"  :anon :subid("67_1304459371.883") :outer("65_1304459371.883")
    .param pmc param_908
.annotate 'line', 437
    .lex "$_", param_908
.annotate 'line', 438
    find_lex $P909, "$irole"
    unless_null $P909, vivify_435
    new $P909, "Undef"
  vivify_435:
    get_how $P910, $P909
    find_lex $P911, "$irole"
    unless_null $P911, vivify_436
    new $P911, "Undef"
  vivify_436:
    find_lex $P912, "$_"
    unless_null $P912, vivify_437
    new $P912, "Undef"
  vivify_437:
    $P913 = $P912."key"()
    find_lex $P914, "$_"
    unless_null $P914, vivify_438
    new $P914, "Undef"
  vivify_438:
    $P915 = $P914."value"()
    $P916 = "reify_method"($P915)
    $P917 = $P910."add_method"($P911, $P913, $P916)
.annotate 'line', 437
    .return ($P917)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block927"  :anon :subid("68_1304459371.883") :outer("65_1304459371.883")
    .param pmc param_929
.annotate 'line', 440
    .lex "$_", param_929
.annotate 'line', 441
    find_lex $P930, "$irole"
    unless_null $P930, vivify_441
    new $P930, "Undef"
  vivify_441:
    get_how $P931, $P930
    find_lex $P932, "$irole"
    unless_null $P932, vivify_442
    new $P932, "Undef"
  vivify_442:
    find_lex $P933, "$_"
    unless_null $P933, vivify_443
    $P933 = root_new ['parrot';'Hash']
  vivify_443:
    set $P934, $P933["name"]
    unless_null $P934, vivify_444
    new $P934, "Undef"
  vivify_444:
    find_lex $P935, "$_"
    unless_null $P935, vivify_445
    $P935 = root_new ['parrot';'Hash']
  vivify_445:
    set $P936, $P935["code"]
    unless_null $P936, vivify_446
    new $P936, "Undef"
  vivify_446:
    $P937 = "reify_method"($P936)
    $P938 = $P931."add_multi_method"($P932, $P934, $P937)
.annotate 'line', 440
    .return ($P938)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block948"  :anon :subid("69_1304459371.883") :outer("65_1304459371.883")
    .param pmc param_951
.annotate 'line', 446
    new $P950, "Undef"
    .lex "$instantiated", $P950
    .lex "$_", param_951
    find_lex $P952, "$irole"
    unless_null $P952, vivify_449
    new $P952, "Undef"
  vivify_449:
    get_how $P953, $P952
    find_lex $P954, "$irole"
    unless_null $P954, vivify_450
    new $P954, "Undef"
  vivify_450:
    find_lex $P955, "$class_arg"
    unless_null $P955, vivify_451
    new $P955, "Undef"
  vivify_451:
    $P956 = $P953."instantiate"($P954, $P955)
    store_lex "$instantiated", $P956
.annotate 'line', 447
    find_lex $P957, "$irole"
    unless_null $P957, vivify_452
    new $P957, "Undef"
  vivify_452:
    get_how $P958, $P957
    find_lex $P959, "$irole"
    unless_null $P959, vivify_453
    new $P959, "Undef"
  vivify_453:
    find_lex $P960, "$instantiated"
    unless_null $P960, vivify_454
    new $P960, "Undef"
  vivify_454:
    $P961 = $P958."add_role"($P959, $P960)
.annotate 'line', 445
    .return ($P961)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("70_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_973
    .param pmc param_974
    .param pmc param_975 :optional :named("local")
    .param int has_param_975 :opt_flag
.annotate 'line', 466
    .const 'Sub' $P986 = "71_1304459371.883" 
    capture_lex $P986
    .lex "self", param_973
    .lex "$obj", param_974
    if has_param_975, optparam_458
    new $P976, "Undef"
    set param_975, $P976
  optparam_458:
    .lex "$local", param_975
.annotate 'line', 467
    $P977 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P977
.annotate 'line', 466
    find_lex $P978, "@meths"
    unless_null $P978, vivify_459
    $P978 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
.annotate 'line', 468
    find_lex $P980, "self"
    find_lex $P981, "$?CLASS"
    getattribute $P982, $P980, $P981, "%!methods"
    unless_null $P982, vivify_460
    $P982 = root_new ['parrot';'Hash']
  vivify_460:
    defined $I983, $P982
    unless $I983, for_undef_461
    iter $P979, $P982
    new $P993, 'ExceptionHandler'
    set_label $P993, loop992_handler
    $P993."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P993
  loop992_test:
    unless $P979, loop992_done
    shift $P984, $P979
  loop992_redo:
    .const 'Sub' $P986 = "71_1304459371.883" 
    capture_lex $P986
    $P986($P984)
  loop992_next:
    goto loop992_test
  loop992_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P994, exception, 'type'
    eq $P994, .CONTROL_LOOP_NEXT, loop992_next
    eq $P994, .CONTROL_LOOP_REDO, loop992_redo
  loop992_done:
    pop_eh 
  for_undef_461:
    find_lex $P995, "@meths"
    unless_null $P995, vivify_464
    $P995 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
.annotate 'line', 466
    .return ($P995)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block985"  :anon :subid("71_1304459371.883") :outer("70_1304459371.883")
    .param pmc param_987
.annotate 'line', 468
    .lex "$_", param_987
.annotate 'line', 469
    find_lex $P988, "@meths"
    unless_null $P988, vivify_462
    $P988 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    find_lex $P989, "$_"
    unless_null $P989, vivify_463
    new $P989, "Undef"
  vivify_463:
    $P990 = $P989."value"()
    $P991 = $P988."push"($P990)
.annotate 'line', 468
    .return ($P991)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("72_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_997
    .param pmc param_998
.annotate 'line', 474
    .lex "self", param_997
    .lex "$obj", param_998
    find_lex $P999, "self"
    find_lex $P1000, "$?CLASS"
    getattribute $P1001, $P999, $P1000, "%!methods"
    unless_null $P1001, vivify_465
    $P1001 = root_new ['parrot';'Hash']
  vivify_465:
    .return ($P1001)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("73_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_1003
    .param pmc param_1004
.annotate 'line', 478
    .lex "self", param_1003
    .lex "$obj", param_1004
    find_lex $P1005, "self"
    find_lex $P1006, "$?CLASS"
    getattribute $P1007, $P1005, $P1006, "$!name"
    unless_null $P1007, vivify_466
    new $P1007, "Undef"
  vivify_466:
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("74_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_1009
    .param pmc param_1010
    .param pmc param_1011 :optional :named("local")
    .param int has_param_1011 :opt_flag
.annotate 'line', 482
    .const 'Sub' $P1022 = "75_1304459371.883" 
    capture_lex $P1022
    .lex "self", param_1009
    .lex "$obj", param_1010
    if has_param_1011, optparam_467
    new $P1012, "Undef"
    set param_1011, $P1012
  optparam_467:
    .lex "$local", param_1011
.annotate 'line', 483
    $P1013 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1013
.annotate 'line', 482
    find_lex $P1014, "@attrs"
    unless_null $P1014, vivify_468
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_468:
.annotate 'line', 484
    find_lex $P1016, "self"
    find_lex $P1017, "$?CLASS"
    getattribute $P1018, $P1016, $P1017, "%!attributes"
    unless_null $P1018, vivify_469
    $P1018 = root_new ['parrot';'Hash']
  vivify_469:
    defined $I1019, $P1018
    unless $I1019, for_undef_470
    iter $P1015, $P1018
    new $P1029, 'ExceptionHandler'
    set_label $P1029, loop1028_handler
    $P1029."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1029
  loop1028_test:
    unless $P1015, loop1028_done
    shift $P1020, $P1015
  loop1028_redo:
    .const 'Sub' $P1022 = "75_1304459371.883" 
    capture_lex $P1022
    $P1022($P1020)
  loop1028_next:
    goto loop1028_test
  loop1028_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1030, exception, 'type'
    eq $P1030, .CONTROL_LOOP_NEXT, loop1028_next
    eq $P1030, .CONTROL_LOOP_REDO, loop1028_redo
  loop1028_done:
    pop_eh 
  for_undef_470:
    find_lex $P1031, "@attrs"
    unless_null $P1031, vivify_473
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 482
    .return ($P1031)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1021"  :anon :subid("75_1304459371.883") :outer("74_1304459371.883")
    .param pmc param_1023
.annotate 'line', 484
    .lex "$_", param_1023
.annotate 'line', 485
    find_lex $P1024, "@attrs"
    unless_null $P1024, vivify_471
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
    find_lex $P1025, "$_"
    unless_null $P1025, vivify_472
    new $P1025, "Undef"
  vivify_472:
    $P1026 = $P1025."value"()
    $P1027 = $P1024."push"($P1026)
.annotate 'line', 484
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("76_1304459371.883") :outer("52_1304459371.883")
    .param pmc param_1033
    .param pmc param_1034
.annotate 'line', 490
    .lex "self", param_1033
    .lex "$obj", param_1034
    find_lex $P1035, "self"
    find_lex $P1036, "$?CLASS"
    getattribute $P1037, $P1035, $P1036, "@!roles"
    unless_null $P1037, vivify_474
    $P1037 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
    .return ($P1037)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1039"  :subid("77_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 500
    .const 'Sub' $P2007 = "131_1304459371.883" 
    capture_lex $P2007
    .const 'Sub' $P1971 = "129_1304459371.883" 
    capture_lex $P1971
    .const 'Sub' $P1937 = "128_1304459371.883" 
    capture_lex $P1937
    .const 'Sub' $P1900 = "127_1304459371.883" 
    capture_lex $P1900
    .const 'Sub' $P1893 = "126_1304459371.883" 
    capture_lex $P1893
    .const 'Sub' $P1870 = "124_1304459371.883" 
    capture_lex $P1870
    .const 'Sub' $P1864 = "123_1304459371.883" 
    capture_lex $P1864
    .const 'Sub' $P1858 = "122_1304459371.883" 
    capture_lex $P1858
    .const 'Sub' $P1835 = "120_1304459371.883" 
    capture_lex $P1835
    .const 'Sub' $P1828 = "119_1304459371.883" 
    capture_lex $P1828
    .const 'Sub' $P1814 = "118_1304459371.883" 
    capture_lex $P1814
    .const 'Sub' $P1765 = "115_1304459371.883" 
    capture_lex $P1765
    .const 'Sub' $P1720 = "112_1304459371.883" 
    capture_lex $P1720
    .const 'Sub' $P1683 = "109_1304459371.883" 
    capture_lex $P1683
    .const 'Sub' $P1542 = "104_1304459371.883" 
    capture_lex $P1542
    .const 'Sub' $P1436 = "100_1304459371.883" 
    capture_lex $P1436
    .const 'Sub' $P1410 = "99_1304459371.883" 
    capture_lex $P1410
    .const 'Sub' $P1376 = "97_1304459371.883" 
    capture_lex $P1376
    .const 'Sub' $P1369 = "96_1304459371.883" 
    capture_lex $P1369
    .const 'Sub' $P1331 = "94_1304459371.883" 
    capture_lex $P1331
    .const 'Sub' $P1310 = "93_1304459371.883" 
    capture_lex $P1310
    .const 'Sub' $P1289 = "92_1304459371.883" 
    capture_lex $P1289
    .const 'Sub' $P1254 = "91_1304459371.883" 
    capture_lex $P1254
    .const 'Sub' $P1239 = "90_1304459371.883" 
    capture_lex $P1239
    .const 'Sub' $P1232 = "89_1304459371.883" 
    capture_lex $P1232
    .const 'Sub' $P1222 = "88_1304459371.883" 
    capture_lex $P1222
    .const 'Sub' $P1083 = "81_1304459371.883" 
    capture_lex $P1083
    .const 'Sub' $P1041 = "78_1304459371.883" 
    capture_lex $P1041
.annotate 'line', 724
    .const 'Sub' $P1041 = "78_1304459371.883" 
    newclosure $P1082, $P1041
    .lex "compute_c3_mro", $P1082
.annotate 'line', 746
    .const 'Sub' $P1083 = "81_1304459371.883" 
    newclosure $P1219, $P1083
    .lex "c3_merge", $P1219
.annotate 'line', 500
    .lex "$?PACKAGE", $P1220
    .lex "$?CLASS", $P1221
.annotate 'line', 665
    find_lex $P1681, "compute_c3_mro"
    find_lex $P1682, "c3_merge"
.annotate 'line', 930
    .const 'Sub' $P2007 = "131_1304459371.883" 
    newclosure $P2042, $P2007
.annotate 'line', 500
    .return ($P2042)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1044
.annotate 'line', 724
    .const 'Sub' $P1056 = "79_1304459371.883" 
    capture_lex $P1056
    new $P1043, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1043, control_1042
    push_eh $P1043
    .lex "$class", param_1044
.annotate 'line', 725
    $P1045 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1045
.annotate 'line', 728
    $P1046 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1046
.annotate 'line', 725
    find_lex $P1047, "$class"
    unless_null $P1047, vivify_475
    new $P1047, "Undef"
  vivify_475:
    get_how $P1048, $P1047
    find_lex $P1049, "$class"
    unless_null $P1049, vivify_476
    new $P1049, "Undef"
  vivify_476:
    $P1050 = $P1048."parents"($P1049, 1 :named("local"))
    store_lex "@immediate_parents", $P1050
    find_lex $P1051, "@result"
    unless_null $P1051, vivify_477
    $P1051 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
.annotate 'line', 729
    find_lex $P1053, "@immediate_parents"
    unless_null $P1053, vivify_478
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    set $N1054, $P1053
    unless $N1054, if_1052_end
    .const 'Sub' $P1056 = "79_1304459371.883" 
    capture_lex $P1056
    $P1056()
  if_1052_end:
.annotate 'line', 741
    find_lex $P1077, "@result"
    unless_null $P1077, vivify_487
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    find_lex $P1078, "$class"
    unless_null $P1078, vivify_488
    new $P1078, "Undef"
  vivify_488:
    $P1077."unshift"($P1078)
.annotate 'line', 742
    new $P1079, "Exception"
    set $P1079['type'], .CONTROL_RETURN
    find_lex $P1080, "@result"
    unless_null $P1080, vivify_489
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    setattribute $P1079, 'payload', $P1080
    throw $P1079
.annotate 'line', 724
    .return ()
  control_1042:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1081, exception, "payload"
    .return ($P1081)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1055"  :anon :subid("79_1304459371.883") :outer("78_1304459371.883")
.annotate 'line', 729
    .const 'Sub' $P1064 = "80_1304459371.883" 
    capture_lex $P1064
.annotate 'line', 732
    $P1057 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1057
.annotate 'line', 729
    find_lex $P1058, "@merge_list"
    unless_null $P1058, vivify_479
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
.annotate 'line', 733
    find_lex $P1060, "@immediate_parents"
    unless_null $P1060, vivify_480
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
    defined $I1061, $P1060
    unless $I1061, for_undef_481
    iter $P1059, $P1060
    new $P1071, 'ExceptionHandler'
    set_label $P1071, loop1070_handler
    $P1071."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1071
  loop1070_test:
    unless $P1059, loop1070_done
    shift $P1062, $P1059
  loop1070_redo:
    .const 'Sub' $P1064 = "80_1304459371.883" 
    capture_lex $P1064
    $P1064($P1062)
  loop1070_next:
    goto loop1070_test
  loop1070_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1072, exception, 'type'
    eq $P1072, .CONTROL_LOOP_NEXT, loop1070_next
    eq $P1072, .CONTROL_LOOP_REDO, loop1070_redo
  loop1070_done:
    pop_eh 
  for_undef_481:
.annotate 'line', 736
    find_lex $P1073, "@merge_list"
    unless_null $P1073, vivify_484
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
    find_lex $P1074, "@immediate_parents"
    unless_null $P1074, vivify_485
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    $P1073."push"($P1074)
.annotate 'line', 737
    find_lex $P1075, "@merge_list"
    unless_null $P1075, vivify_486
    $P1075 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    $P1076 = "c3_merge"($P1075)
    store_lex "@result", $P1076
.annotate 'line', 729
    .return ($P1076)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1063"  :anon :subid("80_1304459371.883") :outer("79_1304459371.883")
    .param pmc param_1065
.annotate 'line', 733
    .lex "$_", param_1065
.annotate 'line', 734
    find_lex $P1066, "@merge_list"
    unless_null $P1066, vivify_482
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
    find_lex $P1067, "$_"
    unless_null $P1067, vivify_483
    new $P1067, "Undef"
  vivify_483:
    $P1068 = "compute_c3_mro"($P1067)
    $P1069 = $P1066."push"($P1068)
.annotate 'line', 733
    .return ($P1069)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1086
.annotate 'line', 746
    .const 'Sub' $P1179 = "86_1304459371.883" 
    capture_lex $P1179
    .const 'Sub' $P1101 = "82_1304459371.883" 
    capture_lex $P1101
    new $P1085, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1085, control_1084
    push_eh $P1085
    .lex "@merge_list", param_1086
.annotate 'line', 747
    $P1087 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1087
.annotate 'line', 748
    new $P1088, "Undef"
    .lex "$accepted", $P1088
.annotate 'line', 749
    new $P1089, "Undef"
    .lex "$something_accepted", $P1089
.annotate 'line', 750
    new $P1090, "Undef"
    .lex "$cand_count", $P1090
.annotate 'line', 793
    new $P1091, "Undef"
    .lex "$i", $P1091
.annotate 'line', 746
    find_lex $P1092, "@result"
    unless_null $P1092, vivify_490
    $P1092 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    find_lex $P1093, "$accepted"
    unless_null $P1093, vivify_491
    new $P1093, "Undef"
  vivify_491:
.annotate 'line', 749
    new $P1094, "Integer"
    assign $P1094, 0
    store_lex "$something_accepted", $P1094
.annotate 'line', 750
    new $P1095, "Integer"
    assign $P1095, 0
    store_lex "$cand_count", $P1095
.annotate 'line', 753
    find_lex $P1097, "@merge_list"
    unless_null $P1097, vivify_492
    $P1097 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    defined $I1098, $P1097
    unless $I1098, for_undef_493
    iter $P1096, $P1097
    new $P1162, 'ExceptionHandler'
    set_label $P1162, loop1161_handler
    $P1162."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1162
  loop1161_test:
    unless $P1096, loop1161_done
    shift $P1099, $P1096
  loop1161_redo:
    .const 'Sub' $P1101 = "82_1304459371.883" 
    capture_lex $P1101
    $P1101($P1099)
  loop1161_next:
    goto loop1161_test
  loop1161_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1163, exception, 'type'
    eq $P1163, .CONTROL_LOOP_NEXT, loop1161_next
    eq $P1163, .CONTROL_LOOP_REDO, loop1161_redo
  loop1161_done:
    pop_eh 
  for_undef_493:
.annotate 'line', 783
    find_lex $P1165, "$cand_count"
    unless_null $P1165, vivify_512
    new $P1165, "Undef"
  vivify_512:
    set $N1166, $P1165
    iseq $I1167, $N1166, 0.0
    unless $I1167, if_1164_end
.annotate 'line', 784
    new $P1168, "Exception"
    set $P1168['type'], .CONTROL_RETURN
    find_lex $P1169, "@result"
    unless_null $P1169, vivify_513
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    setattribute $P1168, 'payload', $P1169
    throw $P1168
  if_1164_end:
.annotate 'line', 788
    find_lex $P1171, "$something_accepted"
    unless_null $P1171, vivify_514
    new $P1171, "Undef"
  vivify_514:
    if $P1171, unless_1170_end
.annotate 'line', 789
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1170_end:
.annotate 'line', 793
    new $P1172, "Integer"
    assign $P1172, 0
    store_lex "$i", $P1172
.annotate 'line', 794
    new $P1210, 'ExceptionHandler'
    set_label $P1210, loop1209_handler
    $P1210."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1210
  loop1209_test:
    find_lex $P1173, "$i"
    unless_null $P1173, vivify_515
    new $P1173, "Undef"
  vivify_515:
    set $N1174, $P1173
    find_lex $P1175, "@merge_list"
    unless_null $P1175, vivify_516
    $P1175 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    set $N1176, $P1175
    islt $I1177, $N1174, $N1176
    unless $I1177, loop1209_done
  loop1209_redo:
    .const 'Sub' $P1179 = "86_1304459371.883" 
    capture_lex $P1179
    $P1179()
  loop1209_next:
    goto loop1209_test
  loop1209_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1211, exception, 'type'
    eq $P1211, .CONTROL_LOOP_NEXT, loop1209_next
    eq $P1211, .CONTROL_LOOP_REDO, loop1209_redo
  loop1209_done:
    pop_eh 
.annotate 'line', 807
    find_lex $P1212, "@merge_list"
    unless_null $P1212, vivify_530
    $P1212 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P1213 = "c3_merge"($P1212)
    store_lex "@result", $P1213
.annotate 'line', 808
    find_lex $P1214, "@result"
    unless_null $P1214, vivify_531
    $P1214 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    find_lex $P1215, "$accepted"
    unless_null $P1215, vivify_532
    new $P1215, "Undef"
  vivify_532:
    $P1214."unshift"($P1215)
.annotate 'line', 809
    new $P1216, "Exception"
    set $P1216['type'], .CONTROL_RETURN
    find_lex $P1217, "@result"
    unless_null $P1217, vivify_533
    $P1217 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    setattribute $P1216, 'payload', $P1217
    throw $P1216
.annotate 'line', 746
    .return ()
  control_1084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1218, exception, "payload"
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1100"  :anon :subid("82_1304459371.883") :outer("81_1304459371.883")
    .param pmc param_1103
.annotate 'line', 753
    .const 'Sub' $P1110 = "83_1304459371.883" 
    capture_lex $P1110
.annotate 'line', 754
    $P1102 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1102
    .lex "$_", param_1103
    find_lex $P1104, "$_"
    unless_null $P1104, vivify_494
    new $P1104, "Undef"
  vivify_494:
    store_lex "@cand_list", $P1104
.annotate 'line', 755
    find_lex $P1107, "@cand_list"
    unless_null $P1107, vivify_495
    $P1107 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    set $N1108, $P1107
    if $N1108, if_1106
    new $P1105, 'Float'
    set $P1105, $N1108
    goto if_1106_end
  if_1106:
    .const 'Sub' $P1110 = "83_1304459371.883" 
    capture_lex $P1110
    $P1160 = $P1110()
    set $P1105, $P1160
  if_1106_end:
.annotate 'line', 753
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1109"  :anon :subid("83_1304459371.883") :outer("82_1304459371.883")
.annotate 'line', 755
    .const 'Sub' $P1123 = "84_1304459371.883" 
    capture_lex $P1123
.annotate 'line', 756
    new $P1111, "Undef"
    .lex "$rejected", $P1111
.annotate 'line', 757
    new $P1112, "Undef"
    .lex "$cand_class", $P1112
.annotate 'line', 756
    new $P1113, "Integer"
    assign $P1113, 0
    store_lex "$rejected", $P1113
.annotate 'line', 757
    find_lex $P1114, "@cand_list"
    unless_null $P1114, vivify_496
    $P1114 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    set $P1115, $P1114[0]
    unless_null $P1115, vivify_497
    new $P1115, "Undef"
  vivify_497:
    store_lex "$cand_class", $P1115
.annotate 'line', 758
    find_lex $P1116, "$cand_count"
    unless_null $P1116, vivify_498
    new $P1116, "Undef"
  vivify_498:
    add $P1117, $P1116, 1
    store_lex "$cand_count", $P1117
.annotate 'line', 759
    find_lex $P1119, "@merge_list"
    unless_null $P1119, vivify_499
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
    defined $I1120, $P1119
    unless $I1120, for_undef_500
    iter $P1118, $P1119
    new $P1158, 'ExceptionHandler'
    set_label $P1158, loop1157_handler
    $P1158."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1158
  loop1157_test:
    unless $P1118, loop1157_done
    shift $P1121, $P1118
  loop1157_redo:
    .const 'Sub' $P1123 = "84_1304459371.883" 
    capture_lex $P1123
    $P1123($P1121)
  loop1157_next:
    goto loop1157_test
  loop1157_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1159, exception, 'type'
    eq $P1159, .CONTROL_LOOP_NEXT, loop1157_next
    eq $P1159, .CONTROL_LOOP_REDO, loop1157_redo
  loop1157_done:
    pop_eh 
  for_undef_500:
.annotate 'line', 755
    .return ($P1118)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1122"  :anon :subid("84_1304459371.883") :outer("83_1304459371.883")
    .param pmc param_1124
.annotate 'line', 759
    .const 'Sub' $P1130 = "85_1304459371.883" 
    capture_lex $P1130
    .lex "$_", param_1124
.annotate 'line', 761
    find_lex $P1126, "$_"
    unless_null $P1126, vivify_501
    new $P1126, "Undef"
  vivify_501:
    find_lex $P1127, "@cand_list"
    unless_null $P1127, vivify_502
    $P1127 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    issame $I1128, $P1126, $P1127
    if $I1128, unless_1125_end
    .const 'Sub' $P1130 = "85_1304459371.883" 
    capture_lex $P1130
    $P1130()
  unless_1125_end:
.annotate 'line', 773
    find_lex $P1153, "$rejected"
    unless_null $P1153, vivify_510
    new $P1153, "Undef"
  vivify_510:
    unless $P1153, unless_1152
    set $P1151, $P1153
    goto unless_1152_end
  unless_1152:
.annotate 'line', 774
    find_lex $P1154, "$cand_class"
    unless_null $P1154, vivify_511
    new $P1154, "Undef"
  vivify_511:
    store_lex "$accepted", $P1154
.annotate 'line', 775
    new $P1155, "Integer"
    assign $P1155, 1
    store_lex "$something_accepted", $P1155
.annotate 'line', 776
    set $I1156, .CONTROL_LOOP_LAST
    die 0, $I1156
  unless_1152_end:
.annotate 'line', 759
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("85_1304459371.883") :outer("84_1304459371.883")
.annotate 'line', 763
    new $P1131, "Undef"
    .lex "$cur_pos", $P1131
    new $P1132, "Integer"
    assign $P1132, 1
    store_lex "$cur_pos", $P1132
.annotate 'line', 764
    new $P1149, 'ExceptionHandler'
    set_label $P1149, loop1148_handler
    $P1149."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1149
  loop1148_test:
    find_lex $P1133, "$cur_pos"
    unless_null $P1133, vivify_503
    new $P1133, "Undef"
  vivify_503:
    set $N1134, $P1133
    find_lex $P1135, "$_"
    unless_null $P1135, vivify_504
    new $P1135, "Undef"
  vivify_504:
    set $N1136, $P1135
    isle $I1137, $N1134, $N1136
    unless $I1137, loop1148_done
  loop1148_redo:
.annotate 'line', 765
    find_lex $P1139, "$cur_pos"
    unless_null $P1139, vivify_505
    new $P1139, "Undef"
  vivify_505:
    set $I1140, $P1139
    find_lex $P1141, "$_"
    unless_null $P1141, vivify_506
    $P1141 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    set $P1142, $P1141[$I1140]
    unless_null $P1142, vivify_507
    new $P1142, "Undef"
  vivify_507:
    find_lex $P1143, "$cand_class"
    unless_null $P1143, vivify_508
    new $P1143, "Undef"
  vivify_508:
    issame $I1144, $P1142, $P1143
    unless $I1144, if_1138_end
.annotate 'line', 766
    new $P1145, "Integer"
    assign $P1145, 1
    store_lex "$rejected", $P1145
  if_1138_end:
.annotate 'line', 768
    find_lex $P1146, "$cur_pos"
    unless_null $P1146, vivify_509
    new $P1146, "Undef"
  vivify_509:
    add $P1147, $P1146, 1
    store_lex "$cur_pos", $P1147
  loop1148_next:
.annotate 'line', 764
    goto loop1148_test
  loop1148_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1150, exception, 'type'
    eq $P1150, .CONTROL_LOOP_NEXT, loop1148_next
    eq $P1150, .CONTROL_LOOP_REDO, loop1148_redo
  loop1148_done:
    pop_eh 
.annotate 'line', 761
    .return ($I1137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1178"  :anon :subid("86_1304459371.883") :outer("81_1304459371.883")
.annotate 'line', 794
    .const 'Sub' $P1190 = "87_1304459371.883" 
    capture_lex $P1190
.annotate 'line', 795
    $P1180 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1180
.annotate 'line', 794
    find_lex $P1181, "@new_list"
    unless_null $P1181, vivify_517
    $P1181 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
.annotate 'line', 796
    find_lex $P1183, "$i"
    unless_null $P1183, vivify_518
    new $P1183, "Undef"
  vivify_518:
    set $I1184, $P1183
    find_lex $P1185, "@merge_list"
    unless_null $P1185, vivify_519
    $P1185 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $P1186, $P1185[$I1184]
    unless_null $P1186, vivify_520
    new $P1186, "Undef"
  vivify_520:
    defined $I1187, $P1186
    unless $I1187, for_undef_521
    iter $P1182, $P1186
    new $P1201, 'ExceptionHandler'
    set_label $P1201, loop1200_handler
    $P1201."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1201
  loop1200_test:
    unless $P1182, loop1200_done
    shift $P1188, $P1182
  loop1200_redo:
    .const 'Sub' $P1190 = "87_1304459371.883" 
    capture_lex $P1190
    $P1190($P1188)
  loop1200_next:
    goto loop1200_test
  loop1200_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1202, exception, 'type'
    eq $P1202, .CONTROL_LOOP_NEXT, loop1200_next
    eq $P1202, .CONTROL_LOOP_REDO, loop1200_redo
  loop1200_done:
    pop_eh 
  for_undef_521:
.annotate 'line', 801
    find_lex $P1203, "@new_list"
    unless_null $P1203, vivify_526
    $P1203 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    find_lex $P1204, "$i"
    unless_null $P1204, vivify_527
    new $P1204, "Undef"
  vivify_527:
    set $I1205, $P1204
    find_lex $P1206, "@merge_list"
    unless_null $P1206, vivify_528
    $P1206 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1206
  vivify_528:
    set $P1206[$I1205], $P1203
.annotate 'line', 802
    find_lex $P1207, "$i"
    unless_null $P1207, vivify_529
    new $P1207, "Undef"
  vivify_529:
    add $P1208, $P1207, 1
    store_lex "$i", $P1208
.annotate 'line', 794
    .return ($P1208)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1189"  :anon :subid("87_1304459371.883") :outer("86_1304459371.883")
    .param pmc param_1191
.annotate 'line', 796
    .lex "$_", param_1191
.annotate 'line', 797
    find_lex $P1194, "$_"
    unless_null $P1194, vivify_522
    new $P1194, "Undef"
  vivify_522:
    find_lex $P1195, "$accepted"
    unless_null $P1195, vivify_523
    new $P1195, "Undef"
  vivify_523:
    issame $I1196, $P1194, $P1195
    unless $I1196, unless_1193
    new $P1192, 'Integer'
    set $P1192, $I1196
    goto unless_1193_end
  unless_1193:
.annotate 'line', 798
    find_lex $P1197, "@new_list"
    unless_null $P1197, vivify_524
    $P1197 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    find_lex $P1198, "$_"
    unless_null $P1198, vivify_525
    new $P1198, "Undef"
  vivify_525:
    $P1199 = $P1197."push"($P1198)
.annotate 'line', 797
    set $P1192, $P1199
  unless_1193_end:
.annotate 'line', 796
    .return ($P1192)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("88_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1223
    .param pmc param_1224 :optional :named("name")
    .param int has_param_1224 :opt_flag
.annotate 'line', 537
    .lex "self", param_1223
    if has_param_1224, optparam_534
    new $P1225, "Undef"
    set param_1224, $P1225
  optparam_534:
    .lex "$name", param_1224
.annotate 'line', 538
    new $P1226, "Undef"
    .lex "$obj", $P1226
    find_lex $P1227, "self"
    repr_instance_of $P1228, $P1227
    store_lex "$obj", $P1228
.annotate 'line', 539
    find_lex $P1229, "$obj"
    unless_null $P1229, vivify_535
    new $P1229, "Undef"
  vivify_535:
    find_lex $P1230, "$name"
    unless_null $P1230, vivify_536
    new $P1230, "Undef"
  vivify_536:
    $P1229."BUILD"($P1230 :named("name"))
    find_lex $P1231, "$obj"
    unless_null $P1231, vivify_537
    new $P1231, "Undef"
  vivify_537:
.annotate 'line', 537
    .return ($P1231)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("89_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1233
    .param pmc param_1234 :optional :named("name")
    .param int has_param_1234 :opt_flag
.annotate 'line', 543
    .lex "self", param_1233
    if has_param_1234, optparam_538
    new $P1235, "Undef"
    set param_1234, $P1235
  optparam_538:
    .lex "$name", param_1234
.annotate 'line', 544
    find_lex $P1236, "$name"
    unless_null $P1236, vivify_539
    new $P1236, "Undef"
  vivify_539:
    find_lex $P1237, "self"
    find_lex $P1238, "$?CLASS"
    setattribute $P1237, $P1238, "$!name", $P1236
.annotate 'line', 543
    .return ($P1236)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("90_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1240
    .param pmc param_1241 :optional :named("name")
    .param int has_param_1241 :opt_flag
    .param pmc param_1243 :optional :named("repr")
    .param int has_param_1243 :opt_flag
.annotate 'line', 549
    .lex "self", param_1240
    if has_param_1241, optparam_540
    new $P1242, "String"
    assign $P1242, "<anon>"
    set param_1241, $P1242
  optparam_540:
    .lex "$name", param_1241
    if has_param_1243, optparam_541
    new $P1244, "String"
    assign $P1244, "P6opaque"
    set param_1243, $P1244
  optparam_541:
    .lex "$repr", param_1243
.annotate 'line', 550
    new $P1245, "Undef"
    .lex "$metaclass", $P1245
    find_lex $P1246, "self"
    find_lex $P1247, "$name"
    unless_null $P1247, vivify_542
    new $P1247, "Undef"
  vivify_542:
    $P1248 = $P1246."new"($P1247 :named("name"))
    store_lex "$metaclass", $P1248
.annotate 'line', 552
    find_lex $P1249, "$metaclass"
    unless_null $P1249, vivify_543
    new $P1249, "Undef"
  vivify_543:
    find_lex $P1250, "$repr"
    unless_null $P1250, vivify_544
    new $P1250, "Undef"
  vivify_544:
    set $S1251, $P1250
    repr_type_object_for $P1252, $P1249, $S1251
    $P1253 = root_new ['parrot';'Hash']
    set_who $P1252, $P1253
.annotate 'line', 549
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("91_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1255
    .param pmc param_1256
    .param pmc param_1257
    .param pmc param_1258
.annotate 'line', 556
    .lex "self", param_1255
    .lex "$obj", param_1256
    .lex "$name", param_1257
    .lex "$code_obj", param_1258
.annotate 'line', 557
    find_lex $P1260, "$name"
    unless_null $P1260, vivify_545
    new $P1260, "Undef"
  vivify_545:
    find_lex $P1261, "self"
    find_lex $P1262, "$?CLASS"
    getattribute $P1263, $P1261, $P1262, "%!methods"
    unless_null $P1263, vivify_546
    $P1263 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1264, $P1263[$P1260]
    unless_null $P1264, vivify_547
    new $P1264, "Undef"
  vivify_547:
    unless $P1264, if_1259_end
.annotate 'line', 558
    new $P1265, "String"
    assign $P1265, "This class already has a method named "
    find_lex $P1266, "$name"
    unless_null $P1266, vivify_548
    new $P1266, "Undef"
  vivify_548:
    concat $P1267, $P1265, $P1266
    die $P1267
  if_1259_end:
.annotate 'line', 560
    find_lex $P1271, "$code_obj"
    unless_null $P1271, vivify_549
    new $P1271, "Undef"
  vivify_549:
    isnull $I1272, $P1271
    unless $I1272, unless_1270
    new $P1269, 'Integer'
    set $P1269, $I1272
    goto unless_1270_end
  unless_1270:
    find_lex $P1273, "$code_obj"
    unless_null $P1273, vivify_550
    new $P1273, "Undef"
  vivify_550:
    isa $I1274, $P1273, "Undef"
    new $P1269, 'Integer'
    set $P1269, $I1274
  unless_1270_end:
    unless $P1269, if_1268_end
.annotate 'line', 561
    new $P1275, 'String'
    set $P1275, "Cannot add a null method '"
    find_lex $P1276, "$name"
    unless_null $P1276, vivify_551
    new $P1276, "Undef"
  vivify_551:
    concat $P1277, $P1275, $P1276
    concat $P1278, $P1277, "' to class '"
    find_lex $P1279, "self"
    find_lex $P1280, "$?CLASS"
    getattribute $P1281, $P1279, $P1280, "$!name"
    unless_null $P1281, vivify_552
    new $P1281, "Undef"
  vivify_552:
    concat $P1282, $P1278, $P1281
    concat $P1283, $P1282, "'"
    die $P1283
  if_1268_end:
.annotate 'line', 563
    find_lex $P1284, "$code_obj"
    unless_null $P1284, vivify_553
    new $P1284, "Undef"
  vivify_553:
    find_lex $P1285, "$name"
    unless_null $P1285, vivify_554
    new $P1285, "Undef"
  vivify_554:
    find_lex $P1286, "self"
    find_lex $P1287, "$?CLASS"
    getattribute $P1288, $P1286, $P1287, "%!methods"
    unless_null $P1288, vivify_555
    $P1288 = root_new ['parrot';'Hash']
    setattribute $P1286, $P1287, "%!methods", $P1288
  vivify_555:
    set $P1288[$P1285], $P1284
.annotate 'line', 556
    .return ($P1284)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("92_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1290
    .param pmc param_1291
    .param pmc param_1292
    .param pmc param_1293
.annotate 'line', 566
    .lex "self", param_1290
    .lex "$obj", param_1291
    .lex "$name", param_1292
    .lex "$code_obj", param_1293
.annotate 'line', 572
    $P1294 = root_new ['parrot';'Hash']
    .lex "%todo", $P1294
.annotate 'line', 566
    find_lex $P1295, "%todo"
    unless_null $P1295, vivify_556
    $P1295 = root_new ['parrot';'Hash']
  vivify_556:
.annotate 'line', 573
    find_lex $P1296, "$name"
    unless_null $P1296, vivify_557
    new $P1296, "Undef"
  vivify_557:
    find_lex $P1297, "%todo"
    unless_null $P1297, vivify_558
    $P1297 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1297
  vivify_558:
    set $P1297["name"], $P1296
.annotate 'line', 574
    find_lex $P1298, "$code_obj"
    unless_null $P1298, vivify_559
    new $P1298, "Undef"
  vivify_559:
    find_lex $P1299, "%todo"
    unless_null $P1299, vivify_560
    $P1299 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1299
  vivify_560:
    set $P1299["code"], $P1298
.annotate 'line', 575
    find_lex $P1300, "%todo"
    unless_null $P1300, vivify_561
    $P1300 = root_new ['parrot';'Hash']
  vivify_561:
    find_lex $P1301, "self"
    find_lex $P1302, "$?CLASS"
    getattribute $P1303, $P1301, $P1302, "@!multi_methods_to_incorporate"
    unless_null $P1303, vivify_562
    $P1303 = root_new ['parrot';'ResizablePMCArray']
  vivify_562:
    set $N1304, $P1303
    set $I1305, $N1304
    find_lex $P1306, "self"
    find_lex $P1307, "$?CLASS"
    getattribute $P1308, $P1306, $P1307, "@!multi_methods_to_incorporate"
    unless_null $P1308, vivify_563
    $P1308 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1306, $P1307, "@!multi_methods_to_incorporate", $P1308
  vivify_563:
    set $P1308[$I1305], $P1300
    find_lex $P1309, "$code_obj"
    unless_null $P1309, vivify_564
    new $P1309, "Undef"
  vivify_564:
.annotate 'line', 566
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("93_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1311
    .param pmc param_1312
    .param pmc param_1313
.annotate 'line', 579
    .lex "self", param_1311
    .lex "$obj", param_1312
    .lex "$meta_attr", param_1313
.annotate 'line', 580
    new $P1314, "Undef"
    .lex "$name", $P1314
    find_lex $P1315, "$meta_attr"
    unless_null $P1315, vivify_565
    new $P1315, "Undef"
  vivify_565:
    $P1316 = $P1315."name"()
    store_lex "$name", $P1316
.annotate 'line', 581
    find_lex $P1318, "$name"
    unless_null $P1318, vivify_566
    new $P1318, "Undef"
  vivify_566:
    find_lex $P1319, "self"
    find_lex $P1320, "$?CLASS"
    getattribute $P1321, $P1319, $P1320, "%!attributes"
    unless_null $P1321, vivify_567
    $P1321 = root_new ['parrot';'Hash']
  vivify_567:
    set $P1322, $P1321[$P1318]
    unless_null $P1322, vivify_568
    new $P1322, "Undef"
  vivify_568:
    unless $P1322, if_1317_end
.annotate 'line', 582
    new $P1323, "String"
    assign $P1323, "This class already has an attribute named "
    find_lex $P1324, "$name"
    unless_null $P1324, vivify_569
    new $P1324, "Undef"
  vivify_569:
    concat $P1325, $P1323, $P1324
    die $P1325
  if_1317_end:
.annotate 'line', 584
    find_lex $P1326, "$meta_attr"
    unless_null $P1326, vivify_570
    new $P1326, "Undef"
  vivify_570:
    find_lex $P1327, "$name"
    unless_null $P1327, vivify_571
    new $P1327, "Undef"
  vivify_571:
    find_lex $P1328, "self"
    find_lex $P1329, "$?CLASS"
    getattribute $P1330, $P1328, $P1329, "%!attributes"
    unless_null $P1330, vivify_572
    $P1330 = root_new ['parrot';'Hash']
    setattribute $P1328, $P1329, "%!attributes", $P1330
  vivify_572:
    set $P1330[$P1327], $P1326
.annotate 'line', 579
    .return ($P1326)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("94_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1332
    .param pmc param_1333
    .param pmc param_1334
.annotate 'line', 587
    .const 'Sub' $P1346 = "95_1304459371.883" 
    capture_lex $P1346
    .lex "self", param_1332
    .lex "$obj", param_1333
    .lex "$parent", param_1334
.annotate 'line', 588
    find_lex $P1336, "self"
    find_lex $P1337, "$?CLASS"
    getattribute $P1338, $P1336, $P1337, "$!composed"
    unless_null $P1338, vivify_573
    new $P1338, "Undef"
  vivify_573:
    unless $P1338, if_1335_end
.annotate 'line', 589
    die "NQPClassHOW does not support adding parents after being composed."
  if_1335_end:
.annotate 'line', 591
    find_lex $P1340, "self"
    find_lex $P1341, "$?CLASS"
    getattribute $P1342, $P1340, $P1341, "@!parents"
    unless_null $P1342, vivify_574
    $P1342 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    defined $I1343, $P1342
    unless $I1343, for_undef_575
    iter $P1339, $P1342
    new $P1358, 'ExceptionHandler'
    set_label $P1358, loop1357_handler
    $P1358."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1358
  loop1357_test:
    unless $P1339, loop1357_done
    shift $P1344, $P1339
  loop1357_redo:
    .const 'Sub' $P1346 = "95_1304459371.883" 
    capture_lex $P1346
    $P1346($P1344)
  loop1357_next:
    goto loop1357_test
  loop1357_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1359, exception, 'type'
    eq $P1359, .CONTROL_LOOP_NEXT, loop1357_next
    eq $P1359, .CONTROL_LOOP_REDO, loop1357_redo
  loop1357_done:
    pop_eh 
  for_undef_575:
.annotate 'line', 596
    find_lex $P1360, "$parent"
    unless_null $P1360, vivify_579
    new $P1360, "Undef"
  vivify_579:
    find_lex $P1361, "self"
    find_lex $P1362, "$?CLASS"
    getattribute $P1363, $P1361, $P1362, "@!parents"
    unless_null $P1363, vivify_580
    $P1363 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $N1364, $P1363
    set $I1365, $N1364
    find_lex $P1366, "self"
    find_lex $P1367, "$?CLASS"
    getattribute $P1368, $P1366, $P1367, "@!parents"
    unless_null $P1368, vivify_581
    $P1368 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1366, $P1367, "@!parents", $P1368
  vivify_581:
    set $P1368[$I1365], $P1360
.annotate 'line', 587
    .return ($P1360)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1345"  :anon :subid("95_1304459371.883") :outer("94_1304459371.883")
    .param pmc param_1347
.annotate 'line', 591
    .lex "$_", param_1347
.annotate 'line', 592
    find_lex $P1350, "$_"
    unless_null $P1350, vivify_576
    new $P1350, "Undef"
  vivify_576:
    find_lex $P1351, "$parent"
    unless_null $P1351, vivify_577
    new $P1351, "Undef"
  vivify_577:
    issame $I1352, $P1350, $P1351
    if $I1352, if_1349
    new $P1348, 'Integer'
    set $P1348, $I1352
    goto if_1349_end
  if_1349:
.annotate 'line', 593
    new $P1353, "String"
    assign $P1353, "Already have "
    find_lex $P1354, "$parent"
    unless_null $P1354, vivify_578
    new $P1354, "Undef"
  vivify_578:
    concat $P1355, $P1353, $P1354
    concat $P1356, $P1355, " as a parent class."
    die $P1356
  if_1349_end:
.annotate 'line', 591
    .return ($P1348)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("96_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1370
    .param pmc param_1371
    .param pmc param_1372
.annotate 'line', 599
    .lex "self", param_1370
    .lex "$obj", param_1371
    .lex "$parent", param_1372
.annotate 'line', 600
    find_lex $P1373, "$parent"
    unless_null $P1373, vivify_582
    new $P1373, "Undef"
  vivify_582:
    find_lex $P1374, "self"
    find_lex $P1375, "$?CLASS"
    setattribute $P1374, $P1375, "$!default_parent", $P1373
.annotate 'line', 599
    .return ($P1373)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("97_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379
.annotate 'line', 603
    .const 'Sub' $P1387 = "98_1304459371.883" 
    capture_lex $P1387
    .lex "self", param_1377
    .lex "$obj", param_1378
    .lex "$role", param_1379
.annotate 'line', 604
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "@!roles"
    unless_null $P1383, vivify_583
    $P1383 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    defined $I1384, $P1383
    unless $I1384, for_undef_584
    iter $P1380, $P1383
    new $P1399, 'ExceptionHandler'
    set_label $P1399, loop1398_handler
    $P1399."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1399
  loop1398_test:
    unless $P1380, loop1398_done
    shift $P1385, $P1380
  loop1398_redo:
    .const 'Sub' $P1387 = "98_1304459371.883" 
    capture_lex $P1387
    $P1387($P1385)
  loop1398_next:
    goto loop1398_test
  loop1398_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1400, exception, 'type'
    eq $P1400, .CONTROL_LOOP_NEXT, loop1398_next
    eq $P1400, .CONTROL_LOOP_REDO, loop1398_redo
  loop1398_done:
    pop_eh 
  for_undef_584:
.annotate 'line', 609
    find_lex $P1401, "$role"
    unless_null $P1401, vivify_588
    new $P1401, "Undef"
  vivify_588:
    find_lex $P1402, "self"
    find_lex $P1403, "$?CLASS"
    getattribute $P1404, $P1402, $P1403, "@!roles"
    unless_null $P1404, vivify_589
    $P1404 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    set $N1405, $P1404
    set $I1406, $N1405
    find_lex $P1407, "self"
    find_lex $P1408, "$?CLASS"
    getattribute $P1409, $P1407, $P1408, "@!roles"
    unless_null $P1409, vivify_590
    $P1409 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1407, $P1408, "@!roles", $P1409
  vivify_590:
    set $P1409[$I1406], $P1401
.annotate 'line', 603
    .return ($P1401)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1386"  :anon :subid("98_1304459371.883") :outer("97_1304459371.883")
    .param pmc param_1388
.annotate 'line', 604
    .lex "$_", param_1388
.annotate 'line', 605
    find_lex $P1391, "$_"
    unless_null $P1391, vivify_585
    new $P1391, "Undef"
  vivify_585:
    find_lex $P1392, "$role"
    unless_null $P1392, vivify_586
    new $P1392, "Undef"
  vivify_586:
    issame $I1393, $P1391, $P1392
    if $I1393, if_1390
    new $P1389, 'Integer'
    set $P1389, $I1393
    goto if_1390_end
  if_1390:
.annotate 'line', 606
    new $P1394, "String"
    assign $P1394, "The role "
    find_lex $P1395, "$role"
    unless_null $P1395, vivify_587
    new $P1395, "Undef"
  vivify_587:
    concat $P1396, $P1394, $P1395
    concat $P1397, $P1396, " has already been added."
    die $P1397
  if_1390_end:
.annotate 'line', 604
    .return ($P1389)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("99_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1411
    .param pmc param_1412
    .param pmc param_1413
    .param pmc param_1414
.annotate 'line', 612
    .lex "self", param_1411
    .lex "$obj", param_1412
    .lex "$name", param_1413
    .lex "$meth", param_1414
.annotate 'line', 613
    find_lex $P1416, "$name"
    unless_null $P1416, vivify_591
    new $P1416, "Undef"
  vivify_591:
    find_lex $P1417, "self"
    find_lex $P1418, "$?CLASS"
    getattribute $P1419, $P1417, $P1418, "%!parrot_vtable_mapping"
    unless_null $P1419, vivify_592
    $P1419 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1420, $P1419[$P1416]
    unless_null $P1420, vivify_593
    new $P1420, "Undef"
  vivify_593:
    defined $I1421, $P1420
    unless $I1421, if_1415_end
.annotate 'line', 614
    new $P1422, "String"
    assign $P1422, "Class '"
    find_lex $P1423, "self"
    find_lex $P1424, "$?CLASS"
    getattribute $P1425, $P1423, $P1424, "$!name"
    unless_null $P1425, vivify_594
    new $P1425, "Undef"
  vivify_594:
    concat $P1426, $P1422, $P1425
    concat $P1427, $P1426, "' already has a Parrot v-table override for '"
    find_lex $P1428, "$name"
    unless_null $P1428, vivify_595
    new $P1428, "Undef"
  vivify_595:
    concat $P1429, $P1427, $P1428
.annotate 'line', 615
    concat $P1430, $P1429, "'"
.annotate 'line', 616
    die $P1430
  if_1415_end:
.annotate 'line', 618
    find_lex $P1431, "$meth"
    unless_null $P1431, vivify_596
    new $P1431, "Undef"
  vivify_596:
    find_lex $P1432, "$name"
    unless_null $P1432, vivify_597
    new $P1432, "Undef"
  vivify_597:
    find_lex $P1433, "self"
    find_lex $P1434, "$?CLASS"
    getattribute $P1435, $P1433, $P1434, "%!parrot_vtable_mapping"
    unless_null $P1435, vivify_598
    $P1435 = root_new ['parrot';'Hash']
    setattribute $P1433, $P1434, "%!parrot_vtable_mapping", $P1435
  vivify_598:
    set $P1435[$P1432], $P1431
.annotate 'line', 612
    .return ($P1431)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("100_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1437
    .param pmc param_1438
.annotate 'line', 621
    .const 'Sub' $P1527 = "103_1304459371.883" 
    capture_lex $P1527
    .const 'Sub' $P1444 = "101_1304459371.883" 
    capture_lex $P1444
    .lex "self", param_1437
    .lex "$obj", param_1438
.annotate 'line', 625
    find_lex $P1440, "self"
    find_lex $P1441, "$?CLASS"
    getattribute $P1442, $P1440, $P1441, "@!roles"
    unless_null $P1442, vivify_599
    $P1442 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    unless $P1442, if_1439_end
    .const 'Sub' $P1444 = "101_1304459371.883" 
    capture_lex $P1444
    $P1444()
  if_1439_end:
.annotate 'line', 638
    find_lex $P1492, "self"
    find_lex $P1493, "$?CLASS"
    getattribute $P1494, $P1492, $P1493, "@!parents"
    unless_null $P1494, vivify_616
    $P1494 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    set $N1495, $P1494
    iseq $I1496, $N1495, 0.0
    if $I1496, if_1491
    new $P1490, 'Integer'
    set $P1490, $I1496
    goto if_1491_end
  if_1491:
    find_lex $P1497, "self"
    find_lex $P1498, "$?CLASS"
    getattribute $P1499, $P1497, $P1498, "$!name"
    unless_null $P1499, vivify_617
    new $P1499, "Undef"
  vivify_617:
    set $S1500, $P1499
    isne $I1501, $S1500, "NQPMu"
    new $P1490, 'Integer'
    set $P1490, $I1501
  if_1491_end:
    unless $P1490, if_1489_end
.annotate 'line', 639
    find_lex $P1502, "self"
    find_lex $P1503, "$obj"
    unless_null $P1503, vivify_618
    new $P1503, "Undef"
  vivify_618:
    find_lex $P1504, "self"
    find_lex $P1505, "$?CLASS"
    getattribute $P1506, $P1504, $P1505, "$!default_parent"
    unless_null $P1506, vivify_619
    new $P1506, "Undef"
  vivify_619:
    $P1502."add_parent"($P1503, $P1506)
  if_1489_end:
.annotate 'line', 644
    find_lex $P1508, "self"
    find_lex $P1509, "$?CLASS"
    getattribute $P1510, $P1508, $P1509, "$!composed"
    unless_null $P1510, vivify_620
    new $P1510, "Undef"
  vivify_620:
    if $P1510, unless_1507_end
.annotate 'line', 645
    find_lex $P1511, "$obj"
    unless_null $P1511, vivify_621
    new $P1511, "Undef"
  vivify_621:
    $P1512 = "compute_c3_mro"($P1511)
    find_lex $P1513, "self"
    find_lex $P1514, "$?CLASS"
    setattribute $P1513, $P1514, "@!mro", $P1512
.annotate 'line', 646
    new $P1515, "Integer"
    assign $P1515, 1
    find_lex $P1516, "self"
    find_lex $P1517, "$?CLASS"
    setattribute $P1516, $P1517, "$!composed", $P1515
  unless_1507_end:
.annotate 'line', 650
    find_lex $P1518, "self"
    find_lex $P1519, "$obj"
    unless_null $P1519, vivify_622
    new $P1519, "Undef"
  vivify_622:
    $P1518."incorporate_multi_candidates"($P1519)
.annotate 'line', 653
    find_lex $P1521, "self"
    find_lex $P1522, "$obj"
    unless_null $P1522, vivify_623
    new $P1522, "Undef"
  vivify_623:
    $P1523 = $P1521."attributes"($P1522, "0" :named("local"))
    defined $I1524, $P1523
    unless $I1524, for_undef_624
    iter $P1520, $P1523
    new $P1533, 'ExceptionHandler'
    set_label $P1533, loop1532_handler
    $P1533."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1533
  loop1532_test:
    unless $P1520, loop1532_done
    shift $P1525, $P1520
  loop1532_redo:
    .const 'Sub' $P1527 = "103_1304459371.883" 
    capture_lex $P1527
    $P1527($P1525)
  loop1532_next:
    goto loop1532_test
  loop1532_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1534, exception, 'type'
    eq $P1534, .CONTROL_LOOP_NEXT, loop1532_next
    eq $P1534, .CONTROL_LOOP_REDO, loop1532_redo
  loop1532_done:
    pop_eh 
  for_undef_624:
.annotate 'line', 656
    find_lex $P1535, "self"
    find_lex $P1536, "$obj"
    unless_null $P1536, vivify_627
    new $P1536, "Undef"
  vivify_627:
    $P1535."publish_type_cache"($P1536)
.annotate 'line', 657
    find_lex $P1537, "self"
    find_lex $P1538, "$obj"
    unless_null $P1538, vivify_628
    new $P1538, "Undef"
  vivify_628:
    $P1537."publish_method_cache"($P1538)
.annotate 'line', 660
    find_lex $P1539, "self"
    find_lex $P1540, "$obj"
    unless_null $P1540, vivify_629
    new $P1540, "Undef"
  vivify_629:
    $P1539."publish_parrot_vtable_mapping"($P1540)
    find_lex $P1541, "$obj"
    unless_null $P1541, vivify_630
    new $P1541, "Undef"
  vivify_630:
.annotate 'line', 621
    .return ($P1541)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1443"  :anon :subid("101_1304459371.883") :outer("100_1304459371.883")
.annotate 'line', 625
    .const 'Sub' $P1454 = "102_1304459371.883" 
    capture_lex $P1454
.annotate 'line', 626
    $P1445 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1445
.annotate 'line', 625
    find_lex $P1446, "@instantiated_roles"
    unless_null $P1446, vivify_600
    $P1446 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
.annotate 'line', 627
    find_lex $P1448, "self"
    find_lex $P1449, "$?CLASS"
    getattribute $P1450, $P1448, $P1449, "@!roles"
    unless_null $P1450, vivify_601
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    defined $I1451, $P1450
    unless $I1451, for_undef_602
    iter $P1447, $P1450
    new $P1483, 'ExceptionHandler'
    set_label $P1483, loop1482_handler
    $P1483."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1483
  loop1482_test:
    unless $P1447, loop1482_done
    shift $P1452, $P1447
  loop1482_redo:
    .const 'Sub' $P1454 = "102_1304459371.883" 
    capture_lex $P1454
    $P1454($P1452)
  loop1482_next:
    goto loop1482_test
  loop1482_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1484, exception, 'type'
    eq $P1484, .CONTROL_LOOP_NEXT, loop1482_next
    eq $P1484, .CONTROL_LOOP_REDO, loop1482_redo
  loop1482_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 633
    find_lex $P1485, "RoleToClassApplier"
    find_lex $P1486, "$obj"
    unless_null $P1486, vivify_614
    new $P1486, "Undef"
  vivify_614:
    find_lex $P1487, "@instantiated_roles"
    unless_null $P1487, vivify_615
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    $P1488 = $P1485."apply"($P1486, $P1487)
.annotate 'line', 625
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1453"  :anon :subid("102_1304459371.883") :outer("101_1304459371.883")
    .param pmc param_1456
.annotate 'line', 628
    new $P1455, "Undef"
    .lex "$ins", $P1455
    .lex "$_", param_1456
    find_lex $P1457, "$_"
    unless_null $P1457, vivify_603
    new $P1457, "Undef"
  vivify_603:
    get_how $P1458, $P1457
    find_lex $P1459, "$_"
    unless_null $P1459, vivify_604
    new $P1459, "Undef"
  vivify_604:
    find_lex $P1460, "$obj"
    unless_null $P1460, vivify_605
    new $P1460, "Undef"
  vivify_605:
    $P1461 = $P1458."instantiate"($P1459, $P1460)
    store_lex "$ins", $P1461
.annotate 'line', 629
    find_lex $P1462, "@instantiated_roles"
    unless_null $P1462, vivify_606
    $P1462 = root_new ['parrot';'ResizablePMCArray']
  vivify_606:
    find_lex $P1463, "$ins"
    unless_null $P1463, vivify_607
    new $P1463, "Undef"
  vivify_607:
    $P1462."push"($P1463)
.annotate 'line', 630
    find_lex $P1464, "$_"
    unless_null $P1464, vivify_608
    new $P1464, "Undef"
  vivify_608:
    find_lex $P1465, "self"
    find_lex $P1466, "$?CLASS"
    getattribute $P1467, $P1465, $P1466, "@!done"
    unless_null $P1467, vivify_609
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    set $N1468, $P1467
    set $I1469, $N1468
    find_lex $P1470, "self"
    find_lex $P1471, "$?CLASS"
    getattribute $P1472, $P1470, $P1471, "@!done"
    unless_null $P1472, vivify_610
    $P1472 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1470, $P1471, "@!done", $P1472
  vivify_610:
    set $P1472[$I1469], $P1464
.annotate 'line', 631
    find_lex $P1473, "$ins"
    unless_null $P1473, vivify_611
    new $P1473, "Undef"
  vivify_611:
    find_lex $P1474, "self"
    find_lex $P1475, "$?CLASS"
    getattribute $P1476, $P1474, $P1475, "@!done"
    unless_null $P1476, vivify_612
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_612:
    set $N1477, $P1476
    set $I1478, $N1477
    find_lex $P1479, "self"
    find_lex $P1480, "$?CLASS"
    getattribute $P1481, $P1479, $P1480, "@!done"
    unless_null $P1481, vivify_613
    $P1481 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1479, $P1480, "@!done", $P1481
  vivify_613:
    set $P1481[$I1478], $P1473
.annotate 'line', 627
    .return ($P1473)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1526"  :anon :subid("103_1304459371.883") :outer("100_1304459371.883")
    .param pmc param_1528
.annotate 'line', 653
    .lex "$_", param_1528
    find_lex $P1529, "$_"
    unless_null $P1529, vivify_625
    new $P1529, "Undef"
  vivify_625:
    find_lex $P1530, "$obj"
    unless_null $P1530, vivify_626
    new $P1530, "Undef"
  vivify_626:
    $P1531 = $P1529."compose"($P1530)
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("104_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1543
    .param pmc param_1544
.annotate 'line', 665
    .const 'Sub' $P1559 = "105_1304459371.883" 
    capture_lex $P1559
    .lex "self", param_1543
    .lex "$obj", param_1544
.annotate 'line', 666
    new $P1545, "Undef"
    .lex "$num_todo", $P1545
.annotate 'line', 667
    new $P1546, "Undef"
    .lex "$i", $P1546
.annotate 'line', 666
    find_lex $P1547, "self"
    find_lex $P1548, "$?CLASS"
    getattribute $P1549, $P1547, $P1548, "@!multi_methods_to_incorporate"
    unless_null $P1549, vivify_631
    $P1549 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    set $N1550, $P1549
    new $P1551, 'Float'
    set $P1551, $N1550
    store_lex "$num_todo", $P1551
.annotate 'line', 667
    new $P1552, "Integer"
    assign $P1552, 0
    store_lex "$i", $P1552
.annotate 'line', 668
    new $P1679, 'ExceptionHandler'
    set_label $P1679, loop1678_handler
    $P1679."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1679
  loop1678_test:
    find_lex $P1553, "$i"
    unless_null $P1553, vivify_632
    new $P1553, "Undef"
  vivify_632:
    set $N1554, $P1553
    find_lex $P1555, "$num_todo"
    unless_null $P1555, vivify_633
    new $P1555, "Undef"
  vivify_633:
    set $N1556, $P1555
    isne $I1557, $N1554, $N1556
    unless $I1557, loop1678_done
  loop1678_redo:
    .const 'Sub' $P1559 = "105_1304459371.883" 
    capture_lex $P1559
    $P1559()
  loop1678_next:
    goto loop1678_test
  loop1678_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1680, exception, 'type'
    eq $P1680, .CONTROL_LOOP_NEXT, loop1678_next
    eq $P1680, .CONTROL_LOOP_REDO, loop1678_redo
  loop1678_done:
    pop_eh 
.annotate 'line', 665
    .return ($I1557)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1558"  :anon :subid("105_1304459371.883") :outer("104_1304459371.883")
.annotate 'line', 668
    .const 'Sub' $P1595 = "106_1304459371.883" 
    capture_lex $P1595
.annotate 'line', 670
    new $P1560, "Undef"
    .lex "$name", $P1560
.annotate 'line', 671
    new $P1561, "Undef"
    .lex "$code", $P1561
.annotate 'line', 675
    new $P1562, "Undef"
    .lex "$dispatcher", $P1562
.annotate 'line', 670
    find_lex $P1563, "$i"
    unless_null $P1563, vivify_634
    new $P1563, "Undef"
  vivify_634:
    set $I1564, $P1563
    find_lex $P1565, "self"
    find_lex $P1566, "$?CLASS"
    getattribute $P1567, $P1565, $P1566, "@!multi_methods_to_incorporate"
    unless_null $P1567, vivify_635
    $P1567 = root_new ['parrot';'ResizablePMCArray']
  vivify_635:
    set $P1568, $P1567[$I1564]
    unless_null $P1568, vivify_636
    $P1568 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1569, $P1568["name"]
    unless_null $P1569, vivify_637
    new $P1569, "Undef"
  vivify_637:
    store_lex "$name", $P1569
.annotate 'line', 671
    find_lex $P1570, "$i"
    unless_null $P1570, vivify_638
    new $P1570, "Undef"
  vivify_638:
    set $I1571, $P1570
    find_lex $P1572, "self"
    find_lex $P1573, "$?CLASS"
    getattribute $P1574, $P1572, $P1573, "@!multi_methods_to_incorporate"
    unless_null $P1574, vivify_639
    $P1574 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1575, $P1574[$I1571]
    unless_null $P1575, vivify_640
    $P1575 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1576, $P1575["code"]
    unless_null $P1576, vivify_641
    new $P1576, "Undef"
  vivify_641:
    store_lex "$code", $P1576
.annotate 'line', 675
    find_lex $P1577, "$name"
    unless_null $P1577, vivify_642
    new $P1577, "Undef"
  vivify_642:
    find_lex $P1578, "self"
    find_lex $P1579, "$?CLASS"
    getattribute $P1580, $P1578, $P1579, "%!methods"
    unless_null $P1580, vivify_643
    $P1580 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1581, $P1580[$P1577]
    unless_null $P1581, vivify_644
    new $P1581, "Undef"
  vivify_644:
    store_lex "$dispatcher", $P1581
.annotate 'line', 676
    find_lex $P1583, "$dispatcher"
    unless_null $P1583, vivify_645
    new $P1583, "Undef"
  vivify_645:
    defined $I1584, $P1583
    if $I1584, if_1582
.annotate 'line', 686
    .const 'Sub' $P1595 = "106_1304459371.883" 
    capture_lex $P1595
    $P1595()
    goto if_1582_end
  if_1582:
.annotate 'line', 679
    find_lex $P1586, "$dispatcher"
    unless_null $P1586, vivify_676
    new $P1586, "Undef"
  vivify_676:
    is_dispatcher $I1587, $P1586
    if $I1587, if_1585
.annotate 'line', 683
    new $P1590, 'String'
    set $P1590, "Cannot have a multi candidate for "
    find_lex $P1591, "$name"
    unless_null $P1591, vivify_677
    new $P1591, "Undef"
  vivify_677:
    concat $P1592, $P1590, $P1591
    concat $P1593, $P1592, " when an only method is also in the class"
    die $P1593
.annotate 'line', 682
    goto if_1585_end
  if_1585:
.annotate 'line', 680
    find_lex $P1588, "$dispatcher"
    unless_null $P1588, vivify_678
    new $P1588, "Undef"
  vivify_678:
    find_lex $P1589, "$code"
    unless_null $P1589, vivify_679
    new $P1589, "Undef"
  vivify_679:
    push_dispatchee $P1588, $P1589
  if_1585_end:
  if_1582_end:
.annotate 'line', 719
    find_lex $P1676, "$i"
    unless_null $P1676, vivify_680
    new $P1676, "Undef"
  vivify_680:
    add $P1677, $P1676, 1
    store_lex "$i", $P1677
.annotate 'line', 668
    .return ($P1677)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1594"  :anon :subid("106_1304459371.883") :outer("105_1304459371.883")
.annotate 'line', 686
    .const 'Sub' $P1612 = "107_1304459371.883" 
    capture_lex $P1612
.annotate 'line', 688
    new $P1596, "Undef"
    .lex "$j", $P1596
.annotate 'line', 689
    new $P1597, "Undef"
    .lex "$found", $P1597
.annotate 'line', 688
    new $P1598, "Integer"
    assign $P1598, 1
    store_lex "$j", $P1598
.annotate 'line', 689
    new $P1599, "Integer"
    assign $P1599, 0
    store_lex "$found", $P1599
.annotate 'line', 690
    new $P1667, 'ExceptionHandler'
    set_label $P1667, loop1666_handler
    $P1667."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1667
  loop1666_test:
    find_lex $P1602, "$j"
    unless_null $P1602, vivify_646
    new $P1602, "Undef"
  vivify_646:
    set $N1603, $P1602
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "@!mro"
    unless_null $P1606, vivify_647
    $P1606 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $N1607, $P1606
    isne $I1608, $N1603, $N1607
    if $I1608, if_1601
    new $P1600, 'Integer'
    set $P1600, $I1608
    goto if_1601_end
  if_1601:
    find_lex $P1609, "$found"
    unless_null $P1609, vivify_648
    new $P1609, "Undef"
  vivify_648:
    isfalse $I1610, $P1609
    new $P1600, 'Integer'
    set $P1600, $I1610
  if_1601_end:
    unless $P1600, loop1666_done
  loop1666_redo:
    .const 'Sub' $P1612 = "107_1304459371.883" 
    capture_lex $P1612
    $P1612()
  loop1666_next:
    goto loop1666_test
  loop1666_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1668, exception, 'type'
    eq $P1668, .CONTROL_LOOP_NEXT, loop1666_next
    eq $P1668, .CONTROL_LOOP_REDO, loop1666_redo
  loop1666_done:
    pop_eh 
.annotate 'line', 715
    find_lex $P1671, "$found"
    unless_null $P1671, vivify_674
    new $P1671, "Undef"
  vivify_674:
    unless $P1671, unless_1670
    set $P1669, $P1671
    goto unless_1670_end
  unless_1670:
.annotate 'line', 716
    new $P1672, 'String'
    set $P1672, "Could not find a proto for multi "
    find_lex $P1673, "$name"
    unless_null $P1673, vivify_675
    new $P1673, "Undef"
  vivify_675:
    concat $P1674, $P1672, $P1673
    concat $P1675, $P1674, ", and proto generation is NYI"
    die $P1675
  unless_1670_end:
.annotate 'line', 686
    .return ($P1669)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1611"  :anon :subid("107_1304459371.883") :outer("106_1304459371.883")
.annotate 'line', 690
    .const 'Sub' $P1636 = "108_1304459371.883" 
    capture_lex $P1636
.annotate 'line', 691
    new $P1613, "Undef"
    .lex "$parent", $P1613
.annotate 'line', 692
    $P1614 = root_new ['parrot';'Hash']
    .lex "%meths", $P1614
.annotate 'line', 693
    new $P1615, "Undef"
    .lex "$dispatcher", $P1615
.annotate 'line', 691
    find_lex $P1616, "$j"
    unless_null $P1616, vivify_649
    new $P1616, "Undef"
  vivify_649:
    set $I1617, $P1616
    find_lex $P1618, "self"
    find_lex $P1619, "$?CLASS"
    getattribute $P1620, $P1618, $P1619, "@!mro"
    unless_null $P1620, vivify_650
    $P1620 = root_new ['parrot';'ResizablePMCArray']
  vivify_650:
    set $P1621, $P1620[$I1617]
    unless_null $P1621, vivify_651
    new $P1621, "Undef"
  vivify_651:
    store_lex "$parent", $P1621
.annotate 'line', 692
    find_lex $P1622, "$parent"
    unless_null $P1622, vivify_652
    new $P1622, "Undef"
  vivify_652:
    get_how $P1623, $P1622
    find_lex $P1624, "$parent"
    unless_null $P1624, vivify_653
    new $P1624, "Undef"
  vivify_653:
    $P1625 = $P1623."method_table"($P1624)
    store_lex "%meths", $P1625
.annotate 'line', 693
    find_lex $P1626, "$name"
    unless_null $P1626, vivify_654
    new $P1626, "Undef"
  vivify_654:
    find_lex $P1627, "%meths"
    unless_null $P1627, vivify_655
    $P1627 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1628, $P1627[$P1626]
    unless_null $P1628, vivify_656
    new $P1628, "Undef"
  vivify_656:
    store_lex "$dispatcher", $P1628
.annotate 'line', 694
    find_lex $P1630, "$dispatcher"
    unless_null $P1630, vivify_657
    new $P1630, "Undef"
  vivify_657:
    defined $I1631, $P1630
    unless $I1631, if_1629_end
.annotate 'line', 697
    find_lex $P1633, "$dispatcher"
    unless_null $P1633, vivify_658
    new $P1633, "Undef"
  vivify_658:
    is_dispatcher $I1634, $P1633
    if $I1634, if_1632
.annotate 'line', 710
    new $P1660, 'String'
    set $P1660, "Could not find a proto for multi "
    find_lex $P1661, "$name"
    unless_null $P1661, vivify_659
    new $P1661, "Undef"
  vivify_659:
    concat $P1662, $P1660, $P1661
    concat $P1663, $P1662, " (it may exist, but an only is hiding it if so)"
    die $P1663
.annotate 'line', 709
    goto if_1632_end
  if_1632:
.annotate 'line', 697
    .const 'Sub' $P1636 = "108_1304459371.883" 
    capture_lex $P1636
    $P1636()
  if_1632_end:
  if_1629_end:
.annotate 'line', 713
    find_lex $P1664, "$j"
    unless_null $P1664, vivify_673
    new $P1664, "Undef"
  vivify_673:
    add $P1665, $P1664, 1
    store_lex "$j", $P1665
.annotate 'line', 690
    .return ($P1665)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1635"  :anon :subid("108_1304459371.883") :outer("107_1304459371.883")
.annotate 'line', 699
    $P1637 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1637
.annotate 'line', 701
    new $P1638, "Undef"
    .lex "$new_disp", $P1638
.annotate 'line', 702
    new $P1639, "Undef"
    .lex "$clone_callback", $P1639
.annotate 'line', 697
    find_lex $P1640, "@new_dispatchees"
    unless_null $P1640, vivify_660
    $P1640 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
.annotate 'line', 700
    find_lex $P1641, "$code"
    unless_null $P1641, vivify_661
    new $P1641, "Undef"
  vivify_661:
    find_lex $P1642, "@new_dispatchees"
    unless_null $P1642, vivify_662
    $P1642 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1642
  vivify_662:
    set $P1642[0], $P1641
.annotate 'line', 701
    find_lex $P1643, "$dispatcher"
    unless_null $P1643, vivify_663
    new $P1643, "Undef"
  vivify_663:
    find_lex $P1644, "@new_dispatchees"
    unless_null $P1644, vivify_664
    $P1644 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    create_dispatch_and_add_candidates $P1645, $P1643, $P1644
    store_lex "$new_disp", $P1645
.annotate 'line', 702
    find_lex $P1646, "$dispatcher"
    unless_null $P1646, vivify_665
    new $P1646, "Undef"
  vivify_665:
    getprop $P1647, "CLONE_CALLBACK", $P1646
    store_lex "$clone_callback", $P1647
.annotate 'line', 703
    find_lex $P1649, "$clone_callback"
    unless_null $P1649, vivify_666
    new $P1649, "Undef"
  vivify_666:
    defined $I1650, $P1649
    unless $I1650, if_1648_end
.annotate 'line', 704
    find_lex $P1651, "$clone_callback"
    unless_null $P1651, vivify_667
    new $P1651, "Undef"
  vivify_667:
    find_lex $P1652, "$dispatcher"
    unless_null $P1652, vivify_668
    new $P1652, "Undef"
  vivify_668:
    find_lex $P1653, "$new_disp"
    unless_null $P1653, vivify_669
    new $P1653, "Undef"
  vivify_669:
    $P1651($P1652, $P1653)
  if_1648_end:
.annotate 'line', 706
    find_lex $P1654, "$new_disp"
    unless_null $P1654, vivify_670
    new $P1654, "Undef"
  vivify_670:
    find_lex $P1655, "$name"
    unless_null $P1655, vivify_671
    new $P1655, "Undef"
  vivify_671:
    find_lex $P1656, "self"
    find_lex $P1657, "$?CLASS"
    getattribute $P1658, $P1656, $P1657, "%!methods"
    unless_null $P1658, vivify_672
    $P1658 = root_new ['parrot';'Hash']
    setattribute $P1656, $P1657, "%!methods", $P1658
  vivify_672:
    set $P1658[$P1655], $P1654
.annotate 'line', 707
    new $P1659, "Integer"
    assign $P1659, 1
    store_lex "$found", $P1659
.annotate 'line', 697
    .return ($P1659)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("109_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1684
    .param pmc param_1685
.annotate 'line', 812
    .const 'Sub' $P1710 = "111_1304459371.883" 
    capture_lex $P1710
    .const 'Sub' $P1695 = "110_1304459371.883" 
    capture_lex $P1695
    .lex "self", param_1684
    .lex "$obj", param_1685
.annotate 'line', 813
    $P1686 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1686
.annotate 'line', 812
    find_lex $P1687, "@tc"
    unless_null $P1687, vivify_681
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
.annotate 'line', 814
    find_lex $P1689, "self"
    find_lex $P1690, "$?CLASS"
    getattribute $P1691, $P1689, $P1690, "@!mro"
    unless_null $P1691, vivify_682
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    defined $I1692, $P1691
    unless $I1692, for_undef_683
    iter $P1688, $P1691
    new $P1701, 'ExceptionHandler'
    set_label $P1701, loop1700_handler
    $P1701."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1701
  loop1700_test:
    unless $P1688, loop1700_done
    shift $P1693, $P1688
  loop1700_redo:
    .const 'Sub' $P1695 = "110_1304459371.883" 
    capture_lex $P1695
    $P1695($P1693)
  loop1700_next:
    goto loop1700_test
  loop1700_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1702, exception, 'type'
    eq $P1702, .CONTROL_LOOP_NEXT, loop1700_next
    eq $P1702, .CONTROL_LOOP_REDO, loop1700_redo
  loop1700_done:
    pop_eh 
  for_undef_683:
.annotate 'line', 815
    find_lex $P1704, "self"
    find_lex $P1705, "$?CLASS"
    getattribute $P1706, $P1704, $P1705, "@!done"
    unless_null $P1706, vivify_686
    $P1706 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    defined $I1707, $P1706
    unless $I1707, for_undef_687
    iter $P1703, $P1706
    new $P1716, 'ExceptionHandler'
    set_label $P1716, loop1715_handler
    $P1716."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1716
  loop1715_test:
    unless $P1703, loop1715_done
    shift $P1708, $P1703
  loop1715_redo:
    .const 'Sub' $P1710 = "111_1304459371.883" 
    capture_lex $P1710
    $P1710($P1708)
  loop1715_next:
    goto loop1715_test
  loop1715_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1717, exception, 'type'
    eq $P1717, .CONTROL_LOOP_NEXT, loop1715_next
    eq $P1717, .CONTROL_LOOP_REDO, loop1715_redo
  loop1715_done:
    pop_eh 
  for_undef_687:
.annotate 'line', 816
    find_lex $P1718, "$obj"
    unless_null $P1718, vivify_690
    new $P1718, "Undef"
  vivify_690:
    find_lex $P1719, "@tc"
    unless_null $P1719, vivify_691
    $P1719 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    publish_type_check_cache $P1718, $P1719
.annotate 'line', 812
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1694"  :anon :subid("110_1304459371.883") :outer("109_1304459371.883")
    .param pmc param_1696
.annotate 'line', 814
    .lex "$_", param_1696
    find_lex $P1697, "@tc"
    unless_null $P1697, vivify_684
    $P1697 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    find_lex $P1698, "$_"
    unless_null $P1698, vivify_685
    new $P1698, "Undef"
  vivify_685:
    $P1699 = $P1697."push"($P1698)
    .return ($P1699)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1709"  :anon :subid("111_1304459371.883") :outer("109_1304459371.883")
    .param pmc param_1711
.annotate 'line', 815
    .lex "$_", param_1711
    find_lex $P1712, "@tc"
    unless_null $P1712, vivify_688
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    find_lex $P1713, "$_"
    unless_null $P1713, vivify_689
    new $P1713, "Undef"
  vivify_689:
    $P1714 = $P1712."push"($P1713)
    .return ($P1714)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("112_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1721
    .param pmc param_1722
.annotate 'line', 819
    .const 'Sub' $P1732 = "113_1304459371.883" 
    capture_lex $P1732
    .lex "self", param_1721
    .lex "$obj", param_1722
.annotate 'line', 822
    $P1723 = root_new ['parrot';'Hash']
    .lex "%cache", $P1723
.annotate 'line', 819
    find_lex $P1724, "%cache"
    unless_null $P1724, vivify_692
    $P1724 = root_new ['parrot';'Hash']
  vivify_692:
.annotate 'line', 823
    find_lex $P1726, "self"
    find_lex $P1727, "$?CLASS"
    getattribute $P1728, $P1726, $P1727, "@!mro"
    unless_null $P1728, vivify_693
    $P1728 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    defined $I1729, $P1728
    unless $I1729, for_undef_694
    iter $P1725, $P1728
    new $P1761, 'ExceptionHandler'
    set_label $P1761, loop1760_handler
    $P1761."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1761
  loop1760_test:
    unless $P1725, loop1760_done
    shift $P1730, $P1725
  loop1760_redo:
    .const 'Sub' $P1732 = "113_1304459371.883" 
    capture_lex $P1732
    $P1732($P1730)
  loop1760_next:
    goto loop1760_test
  loop1760_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1762, exception, 'type'
    eq $P1762, .CONTROL_LOOP_NEXT, loop1760_next
    eq $P1762, .CONTROL_LOOP_REDO, loop1760_redo
  loop1760_done:
    pop_eh 
  for_undef_694:
.annotate 'line', 831
    find_lex $P1763, "$obj"
    unless_null $P1763, vivify_705
    new $P1763, "Undef"
  vivify_705:
    find_lex $P1764, "%cache"
    unless_null $P1764, vivify_706
    $P1764 = root_new ['parrot';'Hash']
  vivify_706:
    publish_method_cache $P1763, $P1764
.annotate 'line', 819
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1731"  :anon :subid("113_1304459371.883") :outer("112_1304459371.883")
    .param pmc param_1734
.annotate 'line', 823
    .const 'Sub' $P1744 = "114_1304459371.883" 
    capture_lex $P1744
.annotate 'line', 824
    $P1733 = root_new ['parrot';'Hash']
    .lex "%methods", $P1733
    .lex "$_", param_1734
    find_lex $P1735, "$_"
    unless_null $P1735, vivify_695
    new $P1735, "Undef"
  vivify_695:
    get_how $P1736, $P1735
    find_lex $P1737, "$_"
    unless_null $P1737, vivify_696
    new $P1737, "Undef"
  vivify_696:
    $P1738 = $P1736."method_table"($P1737)
    store_lex "%methods", $P1738
.annotate 'line', 825
    find_lex $P1740, "%methods"
    unless_null $P1740, vivify_697
    $P1740 = root_new ['parrot';'Hash']
  vivify_697:
    defined $I1741, $P1740
    unless $I1741, for_undef_698
    iter $P1739, $P1740
    new $P1758, 'ExceptionHandler'
    set_label $P1758, loop1757_handler
    $P1758."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1758
  loop1757_test:
    unless $P1739, loop1757_done
    shift $P1742, $P1739
  loop1757_redo:
    .const 'Sub' $P1744 = "114_1304459371.883" 
    capture_lex $P1744
    $P1744($P1742)
  loop1757_next:
    goto loop1757_test
  loop1757_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1759, exception, 'type'
    eq $P1759, .CONTROL_LOOP_NEXT, loop1757_next
    eq $P1759, .CONTROL_LOOP_REDO, loop1757_redo
  loop1757_done:
    pop_eh 
  for_undef_698:
.annotate 'line', 823
    .return ($P1739)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1743"  :anon :subid("114_1304459371.883") :outer("113_1304459371.883")
    .param pmc param_1745
.annotate 'line', 825
    .lex "$_", param_1745
.annotate 'line', 826
    find_lex $P1748, "$_"
    unless_null $P1748, vivify_699
    new $P1748, "Undef"
  vivify_699:
    $P1749 = $P1748."key"()
    find_lex $P1750, "%cache"
    unless_null $P1750, vivify_700
    $P1750 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1751, $P1750[$P1749]
    unless_null $P1751, vivify_701
    new $P1751, "Undef"
  vivify_701:
    unless $P1751, unless_1747
    set $P1746, $P1751
    goto unless_1747_end
  unless_1747:
.annotate 'line', 827
    find_lex $P1752, "$_"
    unless_null $P1752, vivify_702
    new $P1752, "Undef"
  vivify_702:
    $P1753 = $P1752."value"()
    find_lex $P1754, "$_"
    unless_null $P1754, vivify_703
    new $P1754, "Undef"
  vivify_703:
    $P1755 = $P1754."key"()
    find_lex $P1756, "%cache"
    unless_null $P1756, vivify_704
    $P1756 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1756
  vivify_704:
    set $P1756[$P1755], $P1753
.annotate 'line', 826
    set $P1746, $P1753
  unless_1747_end:
.annotate 'line', 825
    .return ($P1746)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("115_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1766
    .param pmc param_1767
.annotate 'line', 834
    .const 'Sub' $P1777 = "116_1304459371.883" 
    capture_lex $P1777
    .lex "self", param_1766
    .lex "$obj", param_1767
.annotate 'line', 835
    $P1768 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1768
.annotate 'line', 834
    find_lex $P1769, "%mapping"
    unless_null $P1769, vivify_707
    $P1769 = root_new ['parrot';'Hash']
  vivify_707:
.annotate 'line', 836
    find_lex $P1771, "self"
    find_lex $P1772, "$?CLASS"
    getattribute $P1773, $P1771, $P1772, "@!mro"
    unless_null $P1773, vivify_708
    $P1773 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    defined $I1774, $P1773
    unless $I1774, for_undef_709
    iter $P1770, $P1773
    new $P1806, 'ExceptionHandler'
    set_label $P1806, loop1805_handler
    $P1806."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1806
  loop1805_test:
    unless $P1770, loop1805_done
    shift $P1775, $P1770
  loop1805_redo:
    .const 'Sub' $P1777 = "116_1304459371.883" 
    capture_lex $P1777
    $P1777($P1775)
  loop1805_next:
    goto loop1805_test
  loop1805_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1807, exception, 'type'
    eq $P1807, .CONTROL_LOOP_NEXT, loop1805_next
    eq $P1807, .CONTROL_LOOP_REDO, loop1805_redo
  loop1805_done:
    pop_eh 
  for_undef_709:
.annotate 'line', 844
    find_lex $P1810, "%mapping"
    unless_null $P1810, vivify_720
    $P1810 = root_new ['parrot';'Hash']
  vivify_720:
    set $N1811, $P1810
    if $N1811, if_1809
    new $P1808, 'Float'
    set $P1808, $N1811
    goto if_1809_end
  if_1809:
.annotate 'line', 845
    find_lex $P1812, "$obj"
    unless_null $P1812, vivify_721
    new $P1812, "Undef"
  vivify_721:
    find_lex $P1813, "%mapping"
    unless_null $P1813, vivify_722
    $P1813 = root_new ['parrot';'Hash']
  vivify_722:
    stable_publish_vtable_mapping $P1812, $P1813
  if_1809_end:
.annotate 'line', 834
    .return ($P1808)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1776"  :anon :subid("116_1304459371.883") :outer("115_1304459371.883")
    .param pmc param_1779
.annotate 'line', 836
    .const 'Sub' $P1789 = "117_1304459371.883" 
    capture_lex $P1789
.annotate 'line', 837
    $P1778 = root_new ['parrot';'Hash']
    .lex "%map", $P1778
    .lex "$_", param_1779
    find_lex $P1780, "$_"
    unless_null $P1780, vivify_710
    new $P1780, "Undef"
  vivify_710:
    get_how $P1781, $P1780
    find_lex $P1782, "$_"
    unless_null $P1782, vivify_711
    new $P1782, "Undef"
  vivify_711:
    $P1783 = $P1781."parrot_vtable_mappings"($P1782, 1 :named("local"))
    store_lex "%map", $P1783
.annotate 'line', 838
    find_lex $P1785, "%map"
    unless_null $P1785, vivify_712
    $P1785 = root_new ['parrot';'Hash']
  vivify_712:
    defined $I1786, $P1785
    unless $I1786, for_undef_713
    iter $P1784, $P1785
    new $P1803, 'ExceptionHandler'
    set_label $P1803, loop1802_handler
    $P1803."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1803
  loop1802_test:
    unless $P1784, loop1802_done
    shift $P1787, $P1784
  loop1802_redo:
    .const 'Sub' $P1789 = "117_1304459371.883" 
    capture_lex $P1789
    $P1789($P1787)
  loop1802_next:
    goto loop1802_test
  loop1802_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1804, exception, 'type'
    eq $P1804, .CONTROL_LOOP_NEXT, loop1802_next
    eq $P1804, .CONTROL_LOOP_REDO, loop1802_redo
  loop1802_done:
    pop_eh 
  for_undef_713:
.annotate 'line', 836
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1788"  :anon :subid("117_1304459371.883") :outer("116_1304459371.883")
    .param pmc param_1790
.annotate 'line', 838
    .lex "$_", param_1790
.annotate 'line', 839
    find_lex $P1793, "$_"
    unless_null $P1793, vivify_714
    new $P1793, "Undef"
  vivify_714:
    $P1794 = $P1793."key"()
    find_lex $P1795, "%mapping"
    unless_null $P1795, vivify_715
    $P1795 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1796, $P1795[$P1794]
    unless_null $P1796, vivify_716
    new $P1796, "Undef"
  vivify_716:
    unless $P1796, unless_1792
    set $P1791, $P1796
    goto unless_1792_end
  unless_1792:
.annotate 'line', 840
    find_lex $P1797, "$_"
    unless_null $P1797, vivify_717
    new $P1797, "Undef"
  vivify_717:
    $P1798 = $P1797."value"()
    find_lex $P1799, "$_"
    unless_null $P1799, vivify_718
    new $P1799, "Undef"
  vivify_718:
    $P1800 = $P1799."key"()
    find_lex $P1801, "%mapping"
    unless_null $P1801, vivify_719
    $P1801 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1801
  vivify_719:
    set $P1801[$P1800], $P1798
.annotate 'line', 839
    set $P1791, $P1798
  unless_1792_end:
.annotate 'line', 838
    .return ($P1791)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("118_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1815
    .param pmc param_1816
    .param pmc param_1817 :optional :named("local")
    .param int has_param_1817 :opt_flag
.annotate 'line', 853
    .lex "self", param_1815
    .lex "$obj", param_1816
    if has_param_1817, optparam_723
    new $P1818, "Undef"
    set param_1817, $P1818
  optparam_723:
    .lex "$local", param_1817
.annotate 'line', 854
    find_lex $P1821, "$local"
    unless_null $P1821, vivify_724
    new $P1821, "Undef"
  vivify_724:
    if $P1821, if_1820
    find_lex $P1825, "self"
    find_lex $P1826, "$?CLASS"
    getattribute $P1827, $P1825, $P1826, "@!mro"
    unless_null $P1827, vivify_725
    $P1827 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    set $P1819, $P1827
    goto if_1820_end
  if_1820:
    find_lex $P1822, "self"
    find_lex $P1823, "$?CLASS"
    getattribute $P1824, $P1822, $P1823, "@!parents"
    unless_null $P1824, vivify_726
    $P1824 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    set $P1819, $P1824
  if_1820_end:
.annotate 'line', 853
    .return ($P1819)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("119_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1829
    .param pmc param_1830
    .param pmc param_1831 :named("local")
.annotate 'line', 857
    .lex "self", param_1829
    .lex "$obj", param_1830
    .lex "$local", param_1831
    find_lex $P1832, "self"
    find_lex $P1833, "$?CLASS"
    getattribute $P1834, $P1832, $P1833, "@!roles"
    unless_null $P1834, vivify_727
    $P1834 = root_new ['parrot';'ResizablePMCArray']
  vivify_727:
    .return ($P1834)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("120_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1836
    .param pmc param_1837
    .param pmc param_1838 :named("local")
.annotate 'line', 861
    .const 'Sub' $P1848 = "121_1304459371.883" 
    capture_lex $P1848
    .lex "self", param_1836
    .lex "$obj", param_1837
    .lex "$local", param_1838
.annotate 'line', 862
    $P1839 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1839
.annotate 'line', 861
    find_lex $P1840, "@meths"
    unless_null $P1840, vivify_728
    $P1840 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
.annotate 'line', 863
    find_lex $P1842, "self"
    find_lex $P1843, "$?CLASS"
    getattribute $P1844, $P1842, $P1843, "%!methods"
    unless_null $P1844, vivify_729
    $P1844 = root_new ['parrot';'Hash']
  vivify_729:
    defined $I1845, $P1844
    unless $I1845, for_undef_730
    iter $P1841, $P1844
    new $P1855, 'ExceptionHandler'
    set_label $P1855, loop1854_handler
    $P1855."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1855
  loop1854_test:
    unless $P1841, loop1854_done
    shift $P1846, $P1841
  loop1854_redo:
    .const 'Sub' $P1848 = "121_1304459371.883" 
    capture_lex $P1848
    $P1848($P1846)
  loop1854_next:
    goto loop1854_test
  loop1854_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1856, exception, 'type'
    eq $P1856, .CONTROL_LOOP_NEXT, loop1854_next
    eq $P1856, .CONTROL_LOOP_REDO, loop1854_redo
  loop1854_done:
    pop_eh 
  for_undef_730:
    find_lex $P1857, "@meths"
    unless_null $P1857, vivify_733
    $P1857 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
.annotate 'line', 861
    .return ($P1857)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1847"  :anon :subid("121_1304459371.883") :outer("120_1304459371.883")
    .param pmc param_1849
.annotate 'line', 863
    .lex "$_", param_1849
.annotate 'line', 864
    find_lex $P1850, "@meths"
    unless_null $P1850, vivify_731
    $P1850 = root_new ['parrot';'ResizablePMCArray']
  vivify_731:
    find_lex $P1851, "$_"
    unless_null $P1851, vivify_732
    new $P1851, "Undef"
  vivify_732:
    $P1852 = $P1851."value"()
    $P1853 = $P1850."push"($P1852)
.annotate 'line', 863
    .return ($P1853)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("122_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1859
    .param pmc param_1860
.annotate 'line', 869
    .lex "self", param_1859
    .lex "$obj", param_1860
    find_lex $P1861, "self"
    find_lex $P1862, "$?CLASS"
    getattribute $P1863, $P1861, $P1862, "%!methods"
    unless_null $P1863, vivify_734
    $P1863 = root_new ['parrot';'Hash']
  vivify_734:
    .return ($P1863)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("123_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1865
    .param pmc param_1866
.annotate 'line', 873
    .lex "self", param_1865
    .lex "$obj", param_1866
    find_lex $P1867, "self"
    find_lex $P1868, "$?CLASS"
    getattribute $P1869, $P1867, $P1868, "$!name"
    unless_null $P1869, vivify_735
    new $P1869, "Undef"
  vivify_735:
    .return ($P1869)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("124_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1871
    .param pmc param_1872
    .param pmc param_1873 :named("local")
.annotate 'line', 877
    .const 'Sub' $P1883 = "125_1304459371.883" 
    capture_lex $P1883
    .lex "self", param_1871
    .lex "$obj", param_1872
    .lex "$local", param_1873
.annotate 'line', 878
    $P1874 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1874
.annotate 'line', 877
    find_lex $P1875, "@attrs"
    unless_null $P1875, vivify_736
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
.annotate 'line', 879
    find_lex $P1877, "self"
    find_lex $P1878, "$?CLASS"
    getattribute $P1879, $P1877, $P1878, "%!attributes"
    unless_null $P1879, vivify_737
    $P1879 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I1880, $P1879
    unless $I1880, for_undef_738
    iter $P1876, $P1879
    new $P1890, 'ExceptionHandler'
    set_label $P1890, loop1889_handler
    $P1890."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1890
  loop1889_test:
    unless $P1876, loop1889_done
    shift $P1881, $P1876
  loop1889_redo:
    .const 'Sub' $P1883 = "125_1304459371.883" 
    capture_lex $P1883
    $P1883($P1881)
  loop1889_next:
    goto loop1889_test
  loop1889_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1891, exception, 'type'
    eq $P1891, .CONTROL_LOOP_NEXT, loop1889_next
    eq $P1891, .CONTROL_LOOP_REDO, loop1889_redo
  loop1889_done:
    pop_eh 
  for_undef_738:
    find_lex $P1892, "@attrs"
    unless_null $P1892, vivify_741
    $P1892 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
.annotate 'line', 877
    .return ($P1892)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1882"  :anon :subid("125_1304459371.883") :outer("124_1304459371.883")
    .param pmc param_1884
.annotate 'line', 879
    .lex "$_", param_1884
.annotate 'line', 880
    find_lex $P1885, "@attrs"
    unless_null $P1885, vivify_739
    $P1885 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1886, "$_"
    unless_null $P1886, vivify_740
    new $P1886, "Undef"
  vivify_740:
    $P1887 = $P1886."value"()
    $P1888 = $P1885."push"($P1887)
.annotate 'line', 879
    .return ($P1888)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("126_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1894
    .param pmc param_1895
    .param pmc param_1896 :named("local")
.annotate 'line', 885
    .lex "self", param_1894
    .lex "$obj", param_1895
    .lex "$local", param_1896
    find_lex $P1897, "self"
    find_lex $P1898, "$?CLASS"
    getattribute $P1899, $P1897, $P1898, "%!parrot_vtable_mapping"
    unless_null $P1899, vivify_742
    $P1899 = root_new ['parrot';'Hash']
  vivify_742:
    .return ($P1899)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("127_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1903
    .param pmc param_1904
    .param pmc param_1905
.annotate 'line', 893
    new $P1902, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1902, control_1901
    push_eh $P1902
    .lex "self", param_1903
    .lex "$obj", param_1904
    .lex "$check", param_1905
.annotate 'line', 894
    new $P1906, "Undef"
    .lex "$check-class", $P1906
.annotate 'line', 895
    new $P1907, "Undef"
    .lex "$i", $P1907
.annotate 'line', 894
    find_lex $P1908, "$check"
    unless_null $P1908, vivify_743
    new $P1908, "Undef"
  vivify_743:
    get_what $P1909, $P1908
    store_lex "$check-class", $P1909
.annotate 'line', 895
    find_lex $P1910, "self"
    find_lex $P1911, "$?CLASS"
    getattribute $P1912, $P1910, $P1911, "@!mro"
    unless_null $P1912, vivify_744
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    set $N1913, $P1912
    new $P1914, 'Float'
    set $P1914, $N1913
    store_lex "$i", $P1914
.annotate 'line', 896
    new $P1932, 'ExceptionHandler'
    set_label $P1932, loop1931_handler
    $P1932."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1932
  loop1931_test:
    find_lex $P1915, "$i"
    unless_null $P1915, vivify_745
    new $P1915, "Undef"
  vivify_745:
    set $N1916, $P1915
    isgt $I1917, $N1916, 0.0
    unless $I1917, loop1931_done
  loop1931_redo:
.annotate 'line', 897
    find_lex $P1918, "$i"
    unless_null $P1918, vivify_746
    new $P1918, "Undef"
  vivify_746:
    sub $P1919, $P1918, 1
    store_lex "$i", $P1919
.annotate 'line', 898
    find_lex $P1921, "$i"
    unless_null $P1921, vivify_747
    new $P1921, "Undef"
  vivify_747:
    set $I1922, $P1921
    find_lex $P1923, "self"
    find_lex $P1924, "$?CLASS"
    getattribute $P1925, $P1923, $P1924, "@!mro"
    unless_null $P1925, vivify_748
    $P1925 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    set $P1926, $P1925[$I1922]
    unless_null $P1926, vivify_749
    new $P1926, "Undef"
  vivify_749:
    find_lex $P1927, "$check-class"
    unless_null $P1927, vivify_750
    new $P1927, "Undef"
  vivify_750:
    issame $I1928, $P1926, $P1927
    unless $I1928, if_1920_end
.annotate 'line', 899
    new $P1929, "Exception"
    set $P1929['type'], .CONTROL_RETURN
    new $P1930, "Integer"
    assign $P1930, 1
    setattribute $P1929, 'payload', $P1930
    throw $P1929
  if_1920_end:
  loop1931_next:
.annotate 'line', 896
    goto loop1931_test
  loop1931_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1933, exception, 'type'
    eq $P1933, .CONTROL_LOOP_NEXT, loop1931_next
    eq $P1933, .CONTROL_LOOP_REDO, loop1931_redo
  loop1931_done:
    pop_eh 
.annotate 'line', 902
    new $P1934, "Exception"
    set $P1934['type'], .CONTROL_RETURN
    new $P1935, "Integer"
    assign $P1935, 0
    setattribute $P1934, 'payload', $P1935
    throw $P1934
.annotate 'line', 893
    .return ()
  control_1901:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1936, exception, "payload"
    .return ($P1936)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("128_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1940
    .param pmc param_1941
    .param pmc param_1942
.annotate 'line', 905
    new $P1939, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1939, control_1938
    push_eh $P1939
    .lex "self", param_1940
    .lex "$obj", param_1941
    .lex "$check", param_1942
.annotate 'line', 906
    new $P1943, "Undef"
    .lex "$i", $P1943
    find_lex $P1944, "self"
    find_lex $P1945, "$?CLASS"
    getattribute $P1946, $P1944, $P1945, "@!done"
    unless_null $P1946, vivify_751
    $P1946 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    set $N1947, $P1946
    new $P1948, 'Float'
    set $P1948, $N1947
    store_lex "$i", $P1948
.annotate 'line', 907
    new $P1966, 'ExceptionHandler'
    set_label $P1966, loop1965_handler
    $P1966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1966
  loop1965_test:
    find_lex $P1949, "$i"
    unless_null $P1949, vivify_752
    new $P1949, "Undef"
  vivify_752:
    set $N1950, $P1949
    isgt $I1951, $N1950, 0.0
    unless $I1951, loop1965_done
  loop1965_redo:
.annotate 'line', 908
    find_lex $P1952, "$i"
    unless_null $P1952, vivify_753
    new $P1952, "Undef"
  vivify_753:
    sub $P1953, $P1952, 1
    store_lex "$i", $P1953
.annotate 'line', 909
    find_lex $P1955, "$i"
    unless_null $P1955, vivify_754
    new $P1955, "Undef"
  vivify_754:
    set $I1956, $P1955
    find_lex $P1957, "self"
    find_lex $P1958, "$?CLASS"
    getattribute $P1959, $P1957, $P1958, "@!done"
    unless_null $P1959, vivify_755
    $P1959 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    set $P1960, $P1959[$I1956]
    unless_null $P1960, vivify_756
    new $P1960, "Undef"
  vivify_756:
    find_lex $P1961, "$check"
    unless_null $P1961, vivify_757
    new $P1961, "Undef"
  vivify_757:
    issame $I1962, $P1960, $P1961
    unless $I1962, if_1954_end
.annotate 'line', 910
    new $P1963, "Exception"
    set $P1963['type'], .CONTROL_RETURN
    new $P1964, "Integer"
    assign $P1964, 1
    setattribute $P1963, 'payload', $P1964
    throw $P1963
  if_1954_end:
  loop1965_next:
.annotate 'line', 907
    goto loop1965_test
  loop1965_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1967, exception, 'type'
    eq $P1967, .CONTROL_LOOP_NEXT, loop1965_next
    eq $P1967, .CONTROL_LOOP_REDO, loop1965_redo
  loop1965_done:
    pop_eh 
.annotate 'line', 913
    new $P1968, "Exception"
    set $P1968['type'], .CONTROL_RETURN
    new $P1969, "Integer"
    assign $P1969, 0
    setattribute $P1968, 'payload', $P1969
    throw $P1968
.annotate 'line', 905
    .return ()
  control_1938:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1970, exception, "payload"
    .return ($P1970)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("129_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_1974
    .param pmc param_1975
    .param pmc param_1976
.annotate 'line', 916
    .const 'Sub' $P1984 = "130_1304459371.883" 
    capture_lex $P1984
    new $P1973, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1973, control_1972
    push_eh $P1973
    .lex "self", param_1974
    .lex "$obj", param_1975
    .lex "$name", param_1976
.annotate 'line', 917
    find_lex $P1978, "self"
    find_lex $P1979, "$?CLASS"
    getattribute $P1980, $P1978, $P1979, "@!mro"
    unless_null $P1980, vivify_758
    $P1980 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I1981, $P1980
    unless $I1981, for_undef_759
    iter $P1977, $P1980
    new $P2002, 'ExceptionHandler'
    set_label $P2002, loop2001_handler
    $P2002."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2002
  loop2001_test:
    unless $P1977, loop2001_done
    shift $P1982, $P1977
  loop2001_redo:
    .const 'Sub' $P1984 = "130_1304459371.883" 
    capture_lex $P1984
    $P1984($P1982)
  loop2001_next:
    goto loop2001_test
  loop2001_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2003, exception, 'type'
    eq $P2003, .CONTROL_LOOP_NEXT, loop2001_next
    eq $P2003, .CONTROL_LOOP_REDO, loop2001_redo
  loop2001_done:
    pop_eh 
  for_undef_759:
.annotate 'line', 924
    new $P2004, "Exception"
    set $P2004['type'], .CONTROL_RETURN
    new $P2005, "Integer"
    assign $P2005, 0
    setattribute $P2004, 'payload', $P2005
    throw $P2004
.annotate 'line', 916
    .return ()
  control_1972:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2006, exception, "payload"
    .return ($P2006)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1983"  :anon :subid("130_1304459371.883") :outer("129_1304459371.883")
    .param pmc param_1987
.annotate 'line', 918
    $P1985 = root_new ['parrot';'Hash']
    .lex "%meths", $P1985
.annotate 'line', 919
    new $P1986, "Undef"
    .lex "$can", $P1986
    .lex "$_", param_1987
.annotate 'line', 918
    find_lex $P1988, "$_"
    unless_null $P1988, vivify_760
    new $P1988, "Undef"
  vivify_760:
    get_how $P1989, $P1988
    find_lex $P1990, "$obj"
    unless_null $P1990, vivify_761
    new $P1990, "Undef"
  vivify_761:
    $P1991 = $P1989."method_table"($P1990)
    store_lex "%meths", $P1991
.annotate 'line', 919
    find_lex $P1992, "$name"
    unless_null $P1992, vivify_762
    new $P1992, "Undef"
  vivify_762:
    find_lex $P1993, "%meths"
    unless_null $P1993, vivify_763
    $P1993 = root_new ['parrot';'Hash']
  vivify_763:
    set $P1994, $P1993[$P1992]
    unless_null $P1994, vivify_764
    new $P1994, "Undef"
  vivify_764:
    store_lex "$can", $P1994
.annotate 'line', 920
    find_lex $P1997, "$can"
    unless_null $P1997, vivify_765
    new $P1997, "Undef"
  vivify_765:
    defined $I1998, $P1997
    if $I1998, if_1996
    new $P1995, 'Integer'
    set $P1995, $I1998
    goto if_1996_end
  if_1996:
.annotate 'line', 921
    new $P1999, "Exception"
    set $P1999['type'], .CONTROL_RETURN
    find_lex $P2000, "$can"
    unless_null $P2000, vivify_766
    new $P2000, "Undef"
  vivify_766:
    setattribute $P1999, 'payload', $P2000
    throw $P1999
  if_1996_end:
.annotate 'line', 917
    .return ($P1995)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("131_1304459371.883") :outer("77_1304459371.883")
    .param pmc param_2010
    .param pmc param_2011
    .param pmc param_2012
.annotate 'line', 930
    .const 'Sub' $P2020 = "132_1304459371.883" 
    capture_lex $P2020
    new $P2009, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2009, control_2008
    push_eh $P2009
    .lex "self", param_2010
    .lex "$obj", param_2011
    .lex "$name", param_2012
.annotate 'line', 931
    find_lex $P2014, "self"
    find_lex $P2015, "$?CLASS"
    getattribute $P2016, $P2014, $P2015, "@!mro"
    unless_null $P2016, vivify_767
    $P2016 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    defined $I2017, $P2016
    unless $I2017, for_undef_768
    iter $P2013, $P2016
    new $P2038, 'ExceptionHandler'
    set_label $P2038, loop2037_handler
    $P2038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2038
  loop2037_test:
    unless $P2013, loop2037_done
    shift $P2018, $P2013
  loop2037_redo:
    .const 'Sub' $P2020 = "132_1304459371.883" 
    capture_lex $P2020
    $P2020($P2018)
  loop2037_next:
    goto loop2037_test
  loop2037_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2039, exception, 'type'
    eq $P2039, .CONTROL_LOOP_NEXT, loop2037_next
    eq $P2039, .CONTROL_LOOP_REDO, loop2037_redo
  loop2037_done:
    pop_eh 
  for_undef_768:
.annotate 'line', 938
    null $P2040
.annotate 'line', 930
    .return ($P2040)
  control_2008:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2041, exception, "payload"
    .return ($P2041)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2019"  :anon :subid("132_1304459371.883") :outer("131_1304459371.883")
    .param pmc param_2023
.annotate 'line', 932
    $P2021 = root_new ['parrot';'Hash']
    .lex "%meths", $P2021
.annotate 'line', 933
    new $P2022, "Undef"
    .lex "$found", $P2022
    .lex "$_", param_2023
.annotate 'line', 932
    find_lex $P2024, "$_"
    unless_null $P2024, vivify_769
    new $P2024, "Undef"
  vivify_769:
    get_how $P2025, $P2024
    find_lex $P2026, "$obj"
    unless_null $P2026, vivify_770
    new $P2026, "Undef"
  vivify_770:
    $P2027 = $P2025."method_table"($P2026)
    store_lex "%meths", $P2027
.annotate 'line', 933
    find_lex $P2028, "$name"
    unless_null $P2028, vivify_771
    new $P2028, "Undef"
  vivify_771:
    find_lex $P2029, "%meths"
    unless_null $P2029, vivify_772
    $P2029 = root_new ['parrot';'Hash']
  vivify_772:
    set $P2030, $P2029[$P2028]
    unless_null $P2030, vivify_773
    new $P2030, "Undef"
  vivify_773:
    store_lex "$found", $P2030
.annotate 'line', 934
    find_lex $P2033, "$found"
    unless_null $P2033, vivify_774
    new $P2033, "Undef"
  vivify_774:
    defined $I2034, $P2033
    if $I2034, if_2032
    new $P2031, 'Integer'
    set $P2031, $I2034
    goto if_2032_end
  if_2032:
.annotate 'line', 935
    new $P2035, "Exception"
    set $P2035['type'], .CONTROL_RETURN
    find_lex $P2036, "$found"
    unless_null $P2036, vivify_775
    new $P2036, "Undef"
  vivify_775:
    setattribute $P2035, 'payload', $P2036
    throw $P2035
  if_2032_end:
.annotate 'line', 931
    .return ($P2031)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2043"  :subid("133_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 943
    .const 'Sub' $P2098 = "141_1304459371.883" 
    capture_lex $P2098
    .const 'Sub' $P2092 = "140_1304459371.883" 
    capture_lex $P2092
    .const 'Sub' $P2088 = "139_1304459371.883" 
    capture_lex $P2088
    .const 'Sub' $P2083 = "138_1304459371.883" 
    capture_lex $P2083
    .const 'Sub' $P2078 = "137_1304459371.883" 
    capture_lex $P2078
    .const 'Sub' $P2064 = "136_1304459371.883" 
    capture_lex $P2064
    .const 'Sub' $P2057 = "135_1304459371.883" 
    capture_lex $P2057
    .const 'Sub' $P2047 = "134_1304459371.883" 
    capture_lex $P2047
    .lex "$?PACKAGE", $P2045
    .lex "$?CLASS", $P2046
.annotate 'line', 983
    .const 'Sub' $P2098 = "141_1304459371.883" 
    newclosure $P2104, $P2098
.annotate 'line', 943
    .return ($P2104)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("134_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2048
    .param pmc param_2049 :optional :named("name")
    .param int has_param_2049 :opt_flag
.annotate 'line', 947
    .lex "self", param_2048
    if has_param_2049, optparam_776
    new $P2050, "Undef"
    set param_2049, $P2050
  optparam_776:
    .lex "$name", param_2049
.annotate 'line', 948
    new $P2051, "Undef"
    .lex "$obj", $P2051
    find_lex $P2052, "self"
    repr_instance_of $P2053, $P2052
    store_lex "$obj", $P2053
.annotate 'line', 949
    find_lex $P2054, "$obj"
    unless_null $P2054, vivify_777
    new $P2054, "Undef"
  vivify_777:
    find_lex $P2055, "$name"
    unless_null $P2055, vivify_778
    new $P2055, "Undef"
  vivify_778:
    $P2054."BUILD"($P2055 :named("name"))
    find_lex $P2056, "$obj"
    unless_null $P2056, vivify_779
    new $P2056, "Undef"
  vivify_779:
.annotate 'line', 947
    .return ($P2056)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("135_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2058
    .param pmc param_2059 :optional :named("name")
    .param int has_param_2059 :opt_flag
.annotate 'line', 953
    .lex "self", param_2058
    if has_param_2059, optparam_780
    new $P2060, "Undef"
    set param_2059, $P2060
  optparam_780:
    .lex "$name", param_2059
.annotate 'line', 954
    find_lex $P2061, "$name"
    unless_null $P2061, vivify_781
    new $P2061, "Undef"
  vivify_781:
    find_lex $P2062, "self"
    find_lex $P2063, "$?CLASS"
    setattribute $P2062, $P2063, "$!name", $P2061
.annotate 'line', 953
    .return ($P2061)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("136_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2065
    .param pmc param_2068 :named("repr")
    .param pmc param_2066 :optional :named("name")
    .param int has_param_2066 :opt_flag
.annotate 'line', 960
    .lex "self", param_2065
    if has_param_2066, optparam_782
    new $P2067, "String"
    assign $P2067, "<anon>"
    set param_2066, $P2067
  optparam_782:
    .lex "$name", param_2066
    .lex "$repr", param_2068
.annotate 'line', 961
    new $P2069, "Undef"
    .lex "$metaclass", $P2069
    find_lex $P2070, "self"
    find_lex $P2071, "$name"
    unless_null $P2071, vivify_783
    new $P2071, "Undef"
  vivify_783:
    $P2072 = $P2070."new"($P2071 :named("name"))
    store_lex "$metaclass", $P2072
.annotate 'line', 963
    find_lex $P2073, "$metaclass"
    unless_null $P2073, vivify_784
    new $P2073, "Undef"
  vivify_784:
    find_lex $P2074, "$repr"
    unless_null $P2074, vivify_785
    new $P2074, "Undef"
  vivify_785:
    set $S2075, $P2074
    repr_type_object_for $P2076, $P2073, $S2075
    $P2077 = root_new ['parrot';'Hash']
    set_who $P2076, $P2077
.annotate 'line', 960
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("137_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2079
    .param pmc param_2080
    .param pmc param_2081
    .param pmc param_2082
.annotate 'line', 967
    .lex "self", param_2079
    .lex "$obj", param_2080
    .lex "$name", param_2081
    .lex "$code_obj", param_2082
.annotate 'line', 968
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 967
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("138_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2084
    .param pmc param_2085
    .param pmc param_2086
    .param pmc param_2087
.annotate 'line', 971
    .lex "self", param_2084
    .lex "$obj", param_2085
    .lex "$name", param_2086
    .lex "$code_obj", param_2087
.annotate 'line', 972
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 971
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("139_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2089
    .param pmc param_2090
    .param pmc param_2091
.annotate 'line', 975
    .lex "self", param_2089
    .lex "$obj", param_2090
    .lex "$meta_attr", param_2091
.annotate 'line', 976
    die "Native types may not have attributes"
.annotate 'line', 975
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("140_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2093
    .param pmc param_2094
.annotate 'line', 979
    .lex "self", param_2093
    .lex "$obj", param_2094
.annotate 'line', 980
    new $P2095, "Integer"
    assign $P2095, 1
    find_lex $P2096, "self"
    find_lex $P2097, "$?CLASS"
    setattribute $P2096, $P2097, "$!composed", $P2095
.annotate 'line', 979
    .return ($P2095)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("141_1304459371.883") :outer("133_1304459371.883")
    .param pmc param_2099
    .param pmc param_2100
.annotate 'line', 983
    .lex "self", param_2099
    .lex "$obj", param_2100
    find_lex $P2101, "self"
    find_lex $P2102, "$?CLASS"
    getattribute $P2103, $P2101, $P2102, "$!name"
    unless_null $P2103, vivify_786
    new $P2103, "Undef"
  vivify_786:
    .return ($P2103)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2105"  :subid("142_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 989
    .const 'Sub' $P2280 = "155_1304459371.883" 
    capture_lex $P2280
    .const 'Sub' $P2199 = "150_1304459371.883" 
    capture_lex $P2199
    .const 'Sub' $P2190 = "149_1304459371.883" 
    capture_lex $P2190
    .const 'Sub' $P2181 = "148_1304459371.883" 
    capture_lex $P2181
    .const 'Sub' $P2176 = "147_1304459371.883" 
    capture_lex $P2176
    .const 'Sub' $P2159 = "146_1304459371.883" 
    capture_lex $P2159
    .const 'Sub' $P2144 = "145_1304459371.883" 
    capture_lex $P2144
    .const 'Sub' $P2107 = "143_1304459371.883" 
    capture_lex $P2107
.annotate 'line', 1049
    .const 'Sub' $P2107 = "143_1304459371.883" 
    newclosure $P2141, $P2107
    .lex "has_method", $P2141
.annotate 'line', 989
    .lex "$?PACKAGE", $P2142
    .lex "$?CLASS", $P2143
.annotate 'line', 1045
    find_lex $P2288, "has_method"
.annotate 'line', 989
    .return ($P2288)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("143_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2110
    .param pmc param_2111
    .param pmc param_2112
.annotate 'line', 1049
    .const 'Sub' $P2124 = "144_1304459371.883" 
    capture_lex $P2124
    new $P2109, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2109, control_2108
    push_eh $P2109
    .lex "$target", param_2110
    .lex "$name", param_2111
    .lex "$local", param_2112
.annotate 'line', 1050
    $P2113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2113
    find_lex $P2114, "$target"
    unless_null $P2114, vivify_787
    new $P2114, "Undef"
  vivify_787:
    get_how $P2115, $P2114
    find_lex $P2116, "$target"
    unless_null $P2116, vivify_788
    new $P2116, "Undef"
  vivify_788:
    find_lex $P2117, "$local"
    unless_null $P2117, vivify_789
    new $P2117, "Undef"
  vivify_789:
    $P2118 = $P2115."methods"($P2116, $P2117 :named("local"))
    store_lex "@methods", $P2118
.annotate 'line', 1051
    find_lex $P2120, "@methods"
    unless_null $P2120, vivify_790
    $P2120 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    defined $I2121, $P2120
    unless $I2121, for_undef_791
    iter $P2119, $P2120
    new $P2136, 'ExceptionHandler'
    set_label $P2136, loop2135_handler
    $P2136."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2136
  loop2135_test:
    unless $P2119, loop2135_done
    shift $P2122, $P2119
  loop2135_redo:
    .const 'Sub' $P2124 = "144_1304459371.883" 
    capture_lex $P2124
    $P2124($P2122)
  loop2135_next:
    goto loop2135_test
  loop2135_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2137, exception, 'type'
    eq $P2137, .CONTROL_LOOP_NEXT, loop2135_next
    eq $P2137, .CONTROL_LOOP_REDO, loop2135_redo
  loop2135_done:
    pop_eh 
  for_undef_791:
.annotate 'line', 1054
    new $P2138, "Exception"
    set $P2138['type'], .CONTROL_RETURN
    new $P2139, "Integer"
    assign $P2139, 0
    setattribute $P2138, 'payload', $P2139
    throw $P2138
.annotate 'line', 1049
    .return ()
  control_2108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2140, exception, "payload"
    .return ($P2140)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2123"  :anon :subid("144_1304459371.883") :outer("143_1304459371.883")
    .param pmc param_2125
.annotate 'line', 1051
    .lex "$_", param_2125
.annotate 'line', 1052
    find_lex $P2128, "$_"
    unless_null $P2128, vivify_792
    new $P2128, "Undef"
  vivify_792:
    set $S2129, $P2128
    find_lex $P2130, "$name"
    unless_null $P2130, vivify_793
    new $P2130, "Undef"
  vivify_793:
    set $S2131, $P2130
    iseq $I2132, $S2129, $S2131
    if $I2132, if_2127
    new $P2126, 'Integer'
    set $P2126, $I2132
    goto if_2127_end
  if_2127:
    new $P2133, "Exception"
    set $P2133['type'], .CONTROL_RETURN
    new $P2134, "Integer"
    assign $P2134, 1
    setattribute $P2133, 'payload', $P2134
    throw $P2133
  if_2127_end:
.annotate 'line', 1051
    .return ($P2126)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("145_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2145
    .param pmc param_2146 :named("name")
    .param pmc param_2147 :optional :named("type")
    .param int has_param_2147 :opt_flag
    .param pmc param_2149 :optional :named("box_target")
    .param int has_param_2149 :opt_flag
.annotate 'line', 994
    .lex "self", param_2145
    .lex "$name", param_2146
    if has_param_2147, optparam_794
    new $P2148, "Undef"
    set param_2147, $P2148
  optparam_794:
    .lex "$type", param_2147
    if has_param_2149, optparam_795
    new $P2150, "Undef"
    set param_2149, $P2150
  optparam_795:
    .lex "$box_target", param_2149
.annotate 'line', 995
    new $P2151, "Undef"
    .lex "$attr", $P2151
    find_lex $P2152, "self"
    repr_instance_of $P2153, $P2152
    store_lex "$attr", $P2153
.annotate 'line', 996
    find_lex $P2154, "$attr"
    unless_null $P2154, vivify_796
    new $P2154, "Undef"
  vivify_796:
    find_lex $P2155, "$name"
    unless_null $P2155, vivify_797
    new $P2155, "Undef"
  vivify_797:
    find_lex $P2156, "$type"
    unless_null $P2156, vivify_798
    new $P2156, "Undef"
  vivify_798:
    find_lex $P2157, "$box_target"
    unless_null $P2157, vivify_799
    new $P2157, "Undef"
  vivify_799:
    $P2154."BUILD"($P2155 :named("name"), $P2156 :named("type"), $P2157 :named("box_target"))
    find_lex $P2158, "$attr"
    unless_null $P2158, vivify_800
    new $P2158, "Undef"
  vivify_800:
.annotate 'line', 994
    .return ($P2158)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("146_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2160
    .param pmc param_2161 :optional :named("name")
    .param int has_param_2161 :opt_flag
    .param pmc param_2163 :optional :named("type")
    .param int has_param_2163 :opt_flag
    .param pmc param_2165 :optional :named("box_target")
    .param int has_param_2165 :opt_flag
.annotate 'line', 1000
    .lex "self", param_2160
    if has_param_2161, optparam_801
    new $P2162, "Undef"
    set param_2161, $P2162
  optparam_801:
    .lex "$name", param_2161
    if has_param_2163, optparam_802
    new $P2164, "Undef"
    set param_2163, $P2164
  optparam_802:
    .lex "$type", param_2163
    if has_param_2165, optparam_803
    new $P2166, "Undef"
    set param_2165, $P2166
  optparam_803:
    .lex "$box_target", param_2165
.annotate 'line', 1001
    find_lex $P2167, "$name"
    unless_null $P2167, vivify_804
    new $P2167, "Undef"
  vivify_804:
    find_lex $P2168, "self"
    find_lex $P2169, "$?CLASS"
    setattribute $P2168, $P2169, "$!name", $P2167
.annotate 'line', 1002
    find_lex $P2170, "$type"
    unless_null $P2170, vivify_805
    new $P2170, "Undef"
  vivify_805:
    find_lex $P2171, "self"
    find_lex $P2172, "$?CLASS"
    setattribute $P2171, $P2172, "$!type", $P2170
.annotate 'line', 1003
    find_lex $P2173, "$box_target"
    unless_null $P2173, vivify_806
    new $P2173, "Undef"
  vivify_806:
    find_lex $P2174, "self"
    find_lex $P2175, "$?CLASS"
    setattribute $P2174, $P2175, "$!box_target", $P2173
.annotate 'line', 1000
    .return ($P2173)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("147_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2177
.annotate 'line', 1006
    .lex "self", param_2177
    find_lex $P2178, "self"
    find_lex $P2179, "$?CLASS"
    getattribute $P2180, $P2178, $P2179, "$!name"
    unless_null $P2180, vivify_807
    new $P2180, "Undef"
  vivify_807:
    .return ($P2180)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("148_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2182
.annotate 'line', 1010
    .lex "self", param_2182
.annotate 'line', 1011
    find_lex $P2184, "self"
    find_lex $P2185, "$?CLASS"
    getattribute $P2186, $P2184, $P2185, "$!type"
    unless_null $P2186, vivify_808
    new $P2186, "Undef"
  vivify_808:
    set $P2183, $P2186
    defined $I2188, $P2183
    if $I2188, default_2187
    null $P2189
    set $P2183, $P2189
  default_2187:
.annotate 'line', 1010
    .return ($P2183)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("149_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2191
.annotate 'line', 1014
    .lex "self", param_2191
.annotate 'line', 1015
    find_lex $P2194, "self"
    find_lex $P2195, "$?CLASS"
    getattribute $P2196, $P2194, $P2195, "$!box_target"
    unless_null $P2196, vivify_809
    new $P2196, "Undef"
  vivify_809:
    if $P2196, if_2193
    new $P2198, "Integer"
    assign $P2198, 0
    set $P2192, $P2198
    goto if_2193_end
  if_2193:
    new $P2197, "Integer"
    assign $P2197, 1
    set $P2192, $P2197
  if_2193_end:
.annotate 'line', 1014
    .return ($P2192)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("150_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2200
    .param pmc param_2201
.annotate 'line', 1018
    .const 'Sub' $P2253 = "153_1304459371.883" 
    capture_lex $P2253
    .const 'Sub' $P2213 = "151_1304459371.883" 
    capture_lex $P2213
    .lex "self", param_2200
    .lex "$obj", param_2201
.annotate 'line', 1019
    new $P2202, "Undef"
    .lex "$long_name", $P2202
    find_lex $P2203, "self"
    find_lex $P2204, "$?CLASS"
    getattribute $P2205, $P2203, $P2204, "$!name"
    unless_null $P2205, vivify_810
    new $P2205, "Undef"
  vivify_810:
    set $S2206, $P2205
    new $P2207, 'String'
    set $P2207, $S2206
    store_lex "$long_name", $P2207
.annotate 'line', 1020
    find_lex $P2210, "self"
    $P2211 = $P2210."has_mutator"()
    if $P2211, if_2209
.annotate 'line', 1032
    .const 'Sub' $P2253 = "153_1304459371.883" 
    capture_lex $P2253
    $P2279 = $P2253()
    set $P2208, $P2279
.annotate 'line', 1020
    goto if_2209_end
  if_2209:
    .const 'Sub' $P2213 = "151_1304459371.883" 
    capture_lex $P2213
    $P2251 = $P2213()
    set $P2208, $P2251
  if_2209_end:
.annotate 'line', 1018
    .return ($P2208)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2252"  :anon :subid("153_1304459371.883") :outer("150_1304459371.883")
.annotate 'line', 1032
    .const 'Sub' $P2269 = "154_1304459371.883" 
    capture_lex $P2269
.annotate 'line', 1033
    new $P2254, "Undef"
    .lex "$method", $P2254
    find_lex $P2255, "$long_name"
    unless_null $P2255, vivify_811
    new $P2255, "Undef"
  vivify_811:
    set $S2256, $P2255
    substr $S2257, $S2256, 2
    new $P2258, 'String'
    set $P2258, $S2257
    store_lex "$method", $P2258
.annotate 'line', 1034
    find_lex $P2261, "$obj"
    unless_null $P2261, vivify_812
    new $P2261, "Undef"
  vivify_812:
    find_lex $P2262, "$method"
    unless_null $P2262, vivify_813
    new $P2262, "Undef"
  vivify_813:
    $P2263 = "has_method"($P2261, $P2262, 0)
    unless $P2263, unless_2260
    set $P2259, $P2263
    goto unless_2260_end
  unless_2260:
.annotate 'line', 1035
    find_lex $P2264, "$obj"
    unless_null $P2264, vivify_814
    new $P2264, "Undef"
  vivify_814:
    get_how $P2265, $P2264
    find_lex $P2266, "$obj"
    unless_null $P2266, vivify_815
    new $P2266, "Undef"
  vivify_815:
    find_lex $P2267, "$method"
    unless_null $P2267, vivify_816
    new $P2267, "Undef"
  vivify_816:
.annotate 'line', 1036
    .const 'Sub' $P2269 = "154_1304459371.883" 
    newclosure $P2277, $P2269
    $P2278 = $P2265."add_method"($P2266, $P2267, $P2277)
.annotate 'line', 1034
    set $P2259, $P2278
  unless_2260_end:
.annotate 'line', 1032
    .return ($P2259)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2268"  :anon :subid("154_1304459371.883") :outer("153_1304459371.883")
    .param pmc param_2270
.annotate 'line', 1036
    .lex "self", param_2270
.annotate 'line', 1037
    find_lex $P2271, "self"
    find_lex $P2272, "$obj"
    unless_null $P2272, vivify_817
    new $P2272, "Undef"
  vivify_817:
    get_what $P2273, $P2272
    find_lex $P2274, "$long_name"
    unless_null $P2274, vivify_818
    new $P2274, "Undef"
  vivify_818:
    set $S2275, $P2274
    getattribute $P2276, $P2271, $P2273, $S2275
.annotate 'line', 1036
    .return ($P2276)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2212"  :anon :subid("151_1304459371.883") :outer("150_1304459371.883")
.annotate 'line', 1020
    .const 'Sub' $P2230 = "152_1304459371.883" 
    capture_lex $P2230
.annotate 'line', 1021
    new $P2214, "Undef"
    .lex "$method", $P2214
    find_lex $P2215, "$long_name"
    unless_null $P2215, vivify_819
    new $P2215, "Undef"
  vivify_819:
    set $S2216, $P2215
    substr $S2217, $S2216, 1
    new $P2218, 'String'
    set $P2218, $S2217
    store_lex "$method", $P2218
.annotate 'line', 1022
    find_lex $P2221, "$obj"
    unless_null $P2221, vivify_820
    new $P2221, "Undef"
  vivify_820:
    find_lex $P2222, "$method"
    unless_null $P2222, vivify_821
    new $P2222, "Undef"
  vivify_821:
    $P2223 = "has_method"($P2221, $P2222, 0)
    unless $P2223, unless_2220
    set $P2219, $P2223
    goto unless_2220_end
  unless_2220:
.annotate 'line', 1023
    find_lex $P2224, "$obj"
    unless_null $P2224, vivify_822
    new $P2224, "Undef"
  vivify_822:
    get_how $P2225, $P2224
    find_lex $P2226, "$obj"
    unless_null $P2226, vivify_823
    new $P2226, "Undef"
  vivify_823:
    get_what $P2227, $P2226
    find_lex $P2228, "$method"
    unless_null $P2228, vivify_824
    new $P2228, "Undef"
  vivify_824:
    .const 'Sub' $P2230 = "152_1304459371.883" 
    newclosure $P2249, $P2230
    $P2250 = $P2225."add_method"($P2227, $P2228, $P2249)
.annotate 'line', 1022
    set $P2219, $P2250
  unless_2220_end:
.annotate 'line', 1020
    .return ($P2219)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2229"  :anon :subid("152_1304459371.883") :outer("151_1304459371.883")
    .param pmc param_2231
    .param pmc param_2232 :optional
    .param int has_param_2232 :opt_flag
.annotate 'line', 1023
    .lex "self", param_2231
    if has_param_2232, optparam_825
    new $P2233, "Undef"
    set param_2232, $P2233
  optparam_825:
    .lex "$value", param_2232
.annotate 'line', 1025
    find_lex $P2235, "$value"
    unless_null $P2235, vivify_826
    new $P2235, "Undef"
  vivify_826:
    defined $I2236, $P2235
    unless $I2236, if_2234_end
.annotate 'line', 1024
    find_lex $P2237, "self"
    find_lex $P2238, "$obj"
    unless_null $P2238, vivify_827
    new $P2238, "Undef"
  vivify_827:
    get_what $P2239, $P2238
    find_lex $P2240, "$long_name"
    unless_null $P2240, vivify_828
    new $P2240, "Undef"
  vivify_828:
    set $S2241, $P2240
    find_lex $P2242, "$value"
    unless_null $P2242, vivify_829
    new $P2242, "Undef"
  vivify_829:
    setattribute $P2237, $P2239, $S2241, $P2242
  if_2234_end:
.annotate 'line', 1027
    find_lex $P2243, "self"
    find_lex $P2244, "$obj"
    unless_null $P2244, vivify_830
    new $P2244, "Undef"
  vivify_830:
    get_what $P2245, $P2244
    find_lex $P2246, "$long_name"
    unless_null $P2246, vivify_831
    new $P2246, "Undef"
  vivify_831:
    set $S2247, $P2246
    getattribute $P2248, $P2243, $P2245, $S2247
.annotate 'line', 1023
    .return ($P2248)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("155_1304459371.883") :outer("142_1304459371.883")
    .param pmc param_2281
.annotate 'line', 1045
    .lex "self", param_2281
.annotate 'line', 1046
    find_lex $P2282, "self"
    find_lex $P2283, "$?CLASS"
    getattribute $P2284, $P2282, $P2283, "$!name"
    unless_null $P2284, vivify_832
    new $P2284, "Undef"
  vivify_832:
    set $S2285, $P2284
    substr $S2286, $S2285, 1, 1
    isne $I2287, $S2286, "!"
.annotate 'line', 1045
    .return ($I2287)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2289"  :subid("156_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 1060
    .const 'Sub' $P2345 = "164_1304459371.883" 
    capture_lex $P2345
    .const 'Sub' $P2339 = "163_1304459371.883" 
    capture_lex $P2339
    .const 'Sub' $P2335 = "162_1304459371.883" 
    capture_lex $P2335
    .const 'Sub' $P2330 = "161_1304459371.883" 
    capture_lex $P2330
    .const 'Sub' $P2325 = "160_1304459371.883" 
    capture_lex $P2325
    .const 'Sub' $P2310 = "159_1304459371.883" 
    capture_lex $P2310
    .const 'Sub' $P2303 = "158_1304459371.883" 
    capture_lex $P2303
    .const 'Sub' $P2293 = "157_1304459371.883" 
    capture_lex $P2293
    .lex "$?PACKAGE", $P2291
    .lex "$?CLASS", $P2292
.annotate 'line', 1101
    .const 'Sub' $P2345 = "164_1304459371.883" 
    newclosure $P2351, $P2345
.annotate 'line', 1060
    .return ($P2351)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("157_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2294
    .param pmc param_2295 :optional :named("name")
    .param int has_param_2295 :opt_flag
.annotate 'line', 1064
    .lex "self", param_2294
    if has_param_2295, optparam_833
    new $P2296, "Undef"
    set param_2295, $P2296
  optparam_833:
    .lex "$name", param_2295
.annotate 'line', 1065
    new $P2297, "Undef"
    .lex "$obj", $P2297
    find_lex $P2298, "self"
    repr_instance_of $P2299, $P2298
    store_lex "$obj", $P2299
.annotate 'line', 1066
    find_lex $P2300, "$obj"
    unless_null $P2300, vivify_834
    new $P2300, "Undef"
  vivify_834:
    find_lex $P2301, "$name"
    unless_null $P2301, vivify_835
    new $P2301, "Undef"
  vivify_835:
    $P2300."BUILD"($P2301 :named("name"))
    find_lex $P2302, "$obj"
    unless_null $P2302, vivify_836
    new $P2302, "Undef"
  vivify_836:
.annotate 'line', 1064
    .return ($P2302)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("158_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2304
    .param pmc param_2305 :optional :named("name")
    .param int has_param_2305 :opt_flag
.annotate 'line', 1070
    .lex "self", param_2304
    if has_param_2305, optparam_837
    new $P2306, "Undef"
    set param_2305, $P2306
  optparam_837:
    .lex "$name", param_2305
.annotate 'line', 1071
    find_lex $P2307, "$name"
    unless_null $P2307, vivify_838
    new $P2307, "Undef"
  vivify_838:
    find_lex $P2308, "self"
    find_lex $P2309, "$?CLASS"
    setattribute $P2308, $P2309, "$!name", $P2307
.annotate 'line', 1070
    .return ($P2307)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("159_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2311
    .param pmc param_2312 :optional :named("name")
    .param int has_param_2312 :opt_flag
    .param pmc param_2314 :optional :named("repr")
    .param int has_param_2314 :opt_flag
.annotate 'line', 1076
    .lex "self", param_2311
    if has_param_2312, optparam_839
    new $P2313, "String"
    assign $P2313, "<anon>"
    set param_2312, $P2313
  optparam_839:
    .lex "$name", param_2312
    if has_param_2314, optparam_840
    new $P2315, "String"
    assign $P2315, "P6opaque"
    set param_2314, $P2315
  optparam_840:
    .lex "$repr", param_2314
.annotate 'line', 1077
    new $P2316, "Undef"
    .lex "$metaclass", $P2316
    find_lex $P2317, "self"
    find_lex $P2318, "$name"
    unless_null $P2318, vivify_841
    new $P2318, "Undef"
  vivify_841:
    $P2319 = $P2317."new"($P2318 :named("name"))
    store_lex "$metaclass", $P2319
.annotate 'line', 1079
    find_lex $P2320, "$metaclass"
    unless_null $P2320, vivify_842
    new $P2320, "Undef"
  vivify_842:
    find_lex $P2321, "$repr"
    unless_null $P2321, vivify_843
    new $P2321, "Undef"
  vivify_843:
    set $S2322, $P2321
    repr_type_object_for $P2323, $P2320, $S2322
    $P2324 = root_new ['parrot';'Hash']
    set_who $P2323, $P2324
.annotate 'line', 1076
    .return ($P2323)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("160_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2326
    .param pmc param_2327
    .param pmc param_2328
    .param pmc param_2329
.annotate 'line', 1083
    .lex "self", param_2326
    .lex "$obj", param_2327
    .lex "$name", param_2328
    .lex "$code_obj", param_2329
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("161_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2331
    .param pmc param_2332
    .param pmc param_2333
    .param pmc param_2334
.annotate 'line', 1089
    .lex "self", param_2331
    .lex "$obj", param_2332
    .lex "$name", param_2333
    .lex "$code_obj", param_2334
.annotate 'line', 1090
    die "Modules may not have methods"
.annotate 'line', 1089
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("162_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2336
    .param pmc param_2337
    .param pmc param_2338
.annotate 'line', 1093
    .lex "self", param_2336
    .lex "$obj", param_2337
    .lex "$meta_attr", param_2338
.annotate 'line', 1094
    die "Modules may not have attributes"
.annotate 'line', 1093
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("163_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2340
    .param pmc param_2341
.annotate 'line', 1097
    .lex "self", param_2340
    .lex "$obj", param_2341
.annotate 'line', 1098
    new $P2342, "Integer"
    assign $P2342, 1
    find_lex $P2343, "self"
    find_lex $P2344, "$?CLASS"
    setattribute $P2343, $P2344, "$!composed", $P2342
.annotate 'line', 1097
    .return ($P2342)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("164_1304459371.883") :outer("156_1304459371.883")
    .param pmc param_2346
    .param pmc param_2347
.annotate 'line', 1101
    .lex "self", param_2346
    .lex "$obj", param_2347
    find_lex $P2348, "self"
    find_lex $P2349, "$?CLASS"
    getattribute $P2350, $P2348, $P2349, "$!name"
    unless_null $P2350, vivify_844
    new $P2350, "Undef"
  vivify_844:
    .return ($P2350)
.end


.HLL "nqp"

.namespace []
.sub "_block2352"  :anon :subid("165_1304459371.883") :outer("10_1304459371.883")
.annotate 'line', 1109
    .lex "$?PACKAGE", $P2354
    .lex "$?CLASS", $P2355
.annotate 'line', 1110
    find_lex $P2356, "NQPModuleHOW"
    find_lex $P2357, "$?PACKAGE"
    unless_null $P2357, vivify_845
    new $P2357, "Undef"
    store_lex "$?PACKAGE", $P2357
  vivify_845:
    get_who $P2358, $P2357
    set $P2358["module"], $P2356
.annotate 'line', 1111
    find_lex $P2359, "NQPClassHOW"
    find_lex $P2360, "$?PACKAGE"
    unless_null $P2360, vivify_846
    new $P2360, "Undef"
    store_lex "$?PACKAGE", $P2360
  vivify_846:
    get_who $P2361, $P2360
    set $P2361["class"], $P2359
.annotate 'line', 1112
    find_lex $P2362, "NQPAttribute"
    find_lex $P2363, "$?PACKAGE"
    unless_null $P2363, vivify_847
    new $P2363, "Undef"
    store_lex "$?PACKAGE", $P2363
  vivify_847:
    get_who $P2364, $P2363
    set $P2364["class-attr"], $P2362
.annotate 'line', 1113
    find_lex $P2365, "NQPClassHOW"
    find_lex $P2366, "$?PACKAGE"
    unless_null $P2366, vivify_848
    new $P2366, "Undef"
    store_lex "$?PACKAGE", $P2366
  vivify_848:
    get_who $P2367, $P2366
    set $P2367["grammar"], $P2365
.annotate 'line', 1114
    find_lex $P2368, "NQPAttribute"
    find_lex $P2369, "$?PACKAGE"
    unless_null $P2369, vivify_849
    new $P2369, "Undef"
    store_lex "$?PACKAGE", $P2369
  vivify_849:
    get_who $P2370, $P2369
    set $P2370["grammar-attr"], $P2368
.annotate 'line', 1115
    find_lex $P2371, "NQPParametricRoleHOW"
    find_lex $P2372, "$?PACKAGE"
    unless_null $P2372, vivify_850
    new $P2372, "Undef"
    store_lex "$?PACKAGE", $P2372
  vivify_850:
    get_who $P2373, $P2372
    set $P2373["role"], $P2371
.annotate 'line', 1116
    find_lex $P2374, "NQPAttribute"
    find_lex $P2375, "$?PACKAGE"
    unless_null $P2375, vivify_851
    new $P2375, "Undef"
    store_lex "$?PACKAGE", $P2375
  vivify_851:
    get_who $P2376, $P2375
    set $P2376["role-attr"], $P2374
.annotate 'line', 1117
    find_lex $P2377, "NQPNativeHOW"
    find_lex $P2378, "$?PACKAGE"
    unless_null $P2378, vivify_852
    new $P2378, "Undef"
    store_lex "$?PACKAGE", $P2378
  vivify_852:
    get_who $P2379, $P2378
    set $P2379["native"], $P2377
.annotate 'line', 1109
    .return ($P2377)
.end


.HLL "nqp"

.namespace []
.sub "_block2387" :load :anon :subid("166_1304459371.883")
.annotate 'line', 1
    .const 'Sub' $P2389 = "10_1304459371.883" 
    $P2390 = $P2389()
    .return ($P2390)
.end

