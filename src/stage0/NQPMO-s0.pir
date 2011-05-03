
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304456120.214")
.annotate 'line', 0
    .const 'Sub' $P2352 = "165_1304456120.214" 
    capture_lex $P2352
    .const 'Sub' $P2289 = "156_1304456120.214" 
    capture_lex $P2289
    .const 'Sub' $P2105 = "142_1304456120.214" 
    capture_lex $P2105
    .const 'Sub' $P2043 = "133_1304456120.214" 
    capture_lex $P2043
    .const 'Sub' $P1039 = "77_1304456120.214" 
    capture_lex $P1039
    .const 'Sub' $P721 = "52_1304456120.214" 
    capture_lex $P721
    .const 'Sub' $P508 = "42_1304456120.214" 
    capture_lex $P508
    .const 'Sub' $P248 = "21_1304456120.214" 
    capture_lex $P248
    .const 'Sub' $P25 = "11_1304456120.214" 
    capture_lex $P25
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "RoleToRoleApplier", $P15
    .lex "NQPConcreteRoleHOW", $P16
    .lex "RoleToClassApplier", $P17
    .lex "NQPParametricRoleHOW", $P18
    .lex "NQPClassHOW", $P19
    .lex "NQPNativeHOW", $P20
    .lex "NQPAttribute", $P21
    .lex "NQPModuleHOW", $P22
    .lex "EXPORTHOW", $P23
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P25 = "11_1304456120.214" 
    capture_lex $P25
    $P25()
.annotate 'line', 99
    .const 'Sub' $P248 = "21_1304456120.214" 
    capture_lex $P248
    $P248()
.annotate 'line', 244
    .const 'Sub' $P508 = "42_1304456120.214" 
    capture_lex $P508
    $P508()
.annotate 'line', 320
    .const 'Sub' $P721 = "52_1304456120.214" 
    capture_lex $P721
    $P721()
.annotate 'line', 500
    .const 'Sub' $P1039 = "77_1304456120.214" 
    capture_lex $P1039
    $P1039()
.annotate 'line', 943
    .const 'Sub' $P2043 = "133_1304456120.214" 
    capture_lex $P2043
    $P2043()
.annotate 'line', 989
    .const 'Sub' $P2105 = "142_1304456120.214" 
    capture_lex $P2105
    $P2105()
.annotate 'line', 1060
    .const 'Sub' $P2289 = "156_1304456120.214" 
    capture_lex $P2289
    $P2289()
.annotate 'line', 1109
    .const 'Sub' $P2352 = "165_1304456120.214" 
    capture_lex $P2352
    $P2379 = $P2352()
.annotate 'line', 1
    .return ($P2379)
    .const 'Sub' $P2381 = "166_1304456120.214" 
    .return ($P2381)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post167") :outer("10_1304456120.214")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304456120.214" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2385, "1304456116.562"
    isnull $I2386, $P2385
    if $I2386, if_2384
    .const 'Sub' $P3127 = "10_1304456120.214" 
    $P3128 = $P3127."get_lexinfo"()
    nqp_get_sc_object $P3129, "1304456116.562", 0
    $P3128."set_static_lexpad_value"("GLOBALish", $P3129)
    .const 'Sub' $P3130 = "10_1304456120.214" 
    $P3131 = $P3130."get_lexinfo"()
    $P3131."finish_static_lexpad"()
    .const 'Sub' $P3132 = "10_1304456120.214" 
    $P3133 = $P3132."get_lexinfo"()
    nqp_get_sc_object $P3134, "1304456116.562", 0
    $P3133."set_static_lexpad_value"("$?PACKAGE", $P3134)
    .const 'Sub' $P3135 = "10_1304456120.214" 
    $P3136 = $P3135."get_lexinfo"()
    $P3136."finish_static_lexpad"()
    .const 'Sub' $P3137 = "10_1304456120.214" 
    $P3138 = $P3137."get_lexinfo"()
    nqp_get_sc_object $P3139, "1304456116.562", 1
    $P3138."set_static_lexpad_value"("RoleToRoleApplier", $P3139)
    .const 'Sub' $P3140 = "10_1304456120.214" 
    $P3141 = $P3140."get_lexinfo"()
    $P3141."finish_static_lexpad"()
    nqp_get_sc_object $P3142, "1304456116.562", 2
    .const 'Sub' $P3143 = "12_1304456120.214" 
    assign $P3142, $P3143
    .const 'Sub' $P3144 = "11_1304456120.214" 
    $P3145 = $P3144."get_lexinfo"()
    nqp_get_sc_object $P3146, "1304456116.562", 1
    $P3145."set_static_lexpad_value"("$?PACKAGE", $P3146)
    .const 'Sub' $P3147 = "11_1304456120.214" 
    $P3148 = $P3147."get_lexinfo"()
    $P3148."finish_static_lexpad"()
    .const 'Sub' $P3149 = "11_1304456120.214" 
    $P3150 = $P3149."get_lexinfo"()
    nqp_get_sc_object $P3151, "1304456116.562", 1
    $P3150."set_static_lexpad_value"("$?CLASS", $P3151)
    .const 'Sub' $P3152 = "11_1304456120.214" 
    $P3153 = $P3152."get_lexinfo"()
    $P3153."finish_static_lexpad"()
    .const 'Sub' $P3154 = "10_1304456120.214" 
    $P3155 = $P3154."get_lexinfo"()
    nqp_get_sc_object $P3156, "1304456116.562", 3
    $P3155."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3156)
    .const 'Sub' $P3157 = "10_1304456120.214" 
    $P3158 = $P3157."get_lexinfo"()
    $P3158."finish_static_lexpad"()
    nqp_get_sc_object $P3159, "1304456116.562", 4
    .const 'Sub' $P3160 = "22_1304456120.214" 
    assign $P3159, $P3160
    nqp_get_sc_object $P3161, "1304456116.562", 5
    .const 'Sub' $P3162 = "23_1304456120.214" 
    assign $P3161, $P3162
    nqp_get_sc_object $P3163, "1304456116.562", 6
    .const 'Sub' $P3164 = "24_1304456120.214" 
    assign $P3163, $P3164
    nqp_get_sc_object $P3165, "1304456116.562", 7
    .const 'Sub' $P3166 = "25_1304456120.214" 
    assign $P3165, $P3166
    nqp_get_sc_object $P3167, "1304456116.562", 8
    .const 'Sub' $P3168 = "26_1304456120.214" 
    assign $P3167, $P3168
    nqp_get_sc_object $P3169, "1304456116.562", 9
    .const 'Sub' $P3170 = "27_1304456120.214" 
    assign $P3169, $P3170
    nqp_get_sc_object $P3171, "1304456116.562", 10
    .const 'Sub' $P3172 = "28_1304456120.214" 
    assign $P3171, $P3172
    nqp_get_sc_object $P3173, "1304456116.562", 11
    .const 'Sub' $P3174 = "29_1304456120.214" 
    assign $P3173, $P3174
    nqp_get_sc_object $P3175, "1304456116.562", 12
    .const 'Sub' $P3176 = "30_1304456120.214" 
    assign $P3175, $P3176
    nqp_get_sc_object $P3177, "1304456116.562", 13
    .const 'Sub' $P3178 = "31_1304456120.214" 
    assign $P3177, $P3178
    nqp_get_sc_object $P3179, "1304456116.562", 14
    .const 'Sub' $P3180 = "33_1304456120.214" 
    assign $P3179, $P3180
    nqp_get_sc_object $P3181, "1304456116.562", 15
    .const 'Sub' $P3182 = "35_1304456120.214" 
    assign $P3181, $P3182
    nqp_get_sc_object $P3183, "1304456116.562", 16
    .const 'Sub' $P3184 = "36_1304456120.214" 
    assign $P3183, $P3184
    nqp_get_sc_object $P3185, "1304456116.562", 17
    .const 'Sub' $P3186 = "37_1304456120.214" 
    assign $P3185, $P3186
    nqp_get_sc_object $P3187, "1304456116.562", 18
    .const 'Sub' $P3188 = "38_1304456120.214" 
    assign $P3187, $P3188
    nqp_get_sc_object $P3189, "1304456116.562", 19
    .const 'Sub' $P3190 = "40_1304456120.214" 
    assign $P3189, $P3190
    nqp_get_sc_object $P3191, "1304456116.562", 20
    .const 'Sub' $P3192 = "41_1304456120.214" 
    assign $P3191, $P3192
    .const 'Sub' $P3193 = "21_1304456120.214" 
    $P3194 = $P3193."get_lexinfo"()
    nqp_get_sc_object $P3195, "1304456116.562", 3
    $P3194."set_static_lexpad_value"("$?PACKAGE", $P3195)
    .const 'Sub' $P3196 = "21_1304456120.214" 
    $P3197 = $P3196."get_lexinfo"()
    $P3197."finish_static_lexpad"()
    .const 'Sub' $P3198 = "21_1304456120.214" 
    $P3199 = $P3198."get_lexinfo"()
    nqp_get_sc_object $P3200, "1304456116.562", 3
    $P3199."set_static_lexpad_value"("$?CLASS", $P3200)
    .const 'Sub' $P3201 = "21_1304456120.214" 
    $P3202 = $P3201."get_lexinfo"()
    $P3202."finish_static_lexpad"()
    .const 'Sub' $P3203 = "10_1304456120.214" 
    $P3204 = $P3203."get_lexinfo"()
    nqp_get_sc_object $P3205, "1304456116.562", 21
    $P3204."set_static_lexpad_value"("RoleToClassApplier", $P3205)
    .const 'Sub' $P3206 = "10_1304456120.214" 
    $P3207 = $P3206."get_lexinfo"()
    $P3207."finish_static_lexpad"()
    nqp_get_sc_object $P3208, "1304456116.562", 22
    .const 'Sub' $P3209 = "47_1304456120.214" 
    assign $P3208, $P3209
    .const 'Sub' $P3210 = "42_1304456120.214" 
    $P3211 = $P3210."get_lexinfo"()
    nqp_get_sc_object $P3212, "1304456116.562", 21
    $P3211."set_static_lexpad_value"("$?PACKAGE", $P3212)
    .const 'Sub' $P3213 = "42_1304456120.214" 
    $P3214 = $P3213."get_lexinfo"()
    $P3214."finish_static_lexpad"()
    .const 'Sub' $P3215 = "42_1304456120.214" 
    $P3216 = $P3215."get_lexinfo"()
    nqp_get_sc_object $P3217, "1304456116.562", 21
    $P3216."set_static_lexpad_value"("$?CLASS", $P3217)
    .const 'Sub' $P3218 = "42_1304456120.214" 
    $P3219 = $P3218."get_lexinfo"()
    $P3219."finish_static_lexpad"()
    .const 'Sub' $P3220 = "10_1304456120.214" 
    $P3221 = $P3220."get_lexinfo"()
    nqp_get_sc_object $P3222, "1304456116.562", 23
    $P3221."set_static_lexpad_value"("NQPParametricRoleHOW", $P3222)
    .const 'Sub' $P3223 = "10_1304456120.214" 
    $P3224 = $P3223."get_lexinfo"()
    $P3224."finish_static_lexpad"()
    nqp_get_sc_object $P3225, "1304456116.562", 24
    .const 'Sub' $P3226 = "54_1304456120.214" 
    assign $P3225, $P3226
    nqp_get_sc_object $P3227, "1304456116.562", 25
    .const 'Sub' $P3228 = "55_1304456120.214" 
    assign $P3227, $P3228
    nqp_get_sc_object $P3229, "1304456116.562", 26
    .const 'Sub' $P3230 = "56_1304456120.214" 
    assign $P3229, $P3230
    nqp_get_sc_object $P3231, "1304456116.562", 27
    .const 'Sub' $P3232 = "57_1304456120.214" 
    assign $P3231, $P3232
    nqp_get_sc_object $P3233, "1304456116.562", 28
    .const 'Sub' $P3234 = "58_1304456120.214" 
    assign $P3233, $P3234
    nqp_get_sc_object $P3235, "1304456116.562", 29
    .const 'Sub' $P3236 = "59_1304456120.214" 
    assign $P3235, $P3236
    nqp_get_sc_object $P3237, "1304456116.562", 30
    .const 'Sub' $P3238 = "60_1304456120.214" 
    assign $P3237, $P3238
    nqp_get_sc_object $P3239, "1304456116.562", 31
    .const 'Sub' $P3240 = "61_1304456120.214" 
    assign $P3239, $P3240
    nqp_get_sc_object $P3241, "1304456116.562", 32
    .const 'Sub' $P3242 = "62_1304456120.214" 
    assign $P3241, $P3242
    nqp_get_sc_object $P3243, "1304456116.562", 33
    .const 'Sub' $P3244 = "63_1304456120.214" 
    assign $P3243, $P3244
    nqp_get_sc_object $P3245, "1304456116.562", 34
    .const 'Sub' $P3246 = "64_1304456120.214" 
    assign $P3245, $P3246
    nqp_get_sc_object $P3247, "1304456116.562", 35
    .const 'Sub' $P3248 = "65_1304456120.214" 
    assign $P3247, $P3248
    nqp_get_sc_object $P3249, "1304456116.562", 36
    .const 'Sub' $P3250 = "70_1304456120.214" 
    assign $P3249, $P3250
    nqp_get_sc_object $P3251, "1304456116.562", 37
    .const 'Sub' $P3252 = "72_1304456120.214" 
    assign $P3251, $P3252
    nqp_get_sc_object $P3253, "1304456116.562", 38
    .const 'Sub' $P3254 = "73_1304456120.214" 
    assign $P3253, $P3254
    nqp_get_sc_object $P3255, "1304456116.562", 39
    .const 'Sub' $P3256 = "74_1304456120.214" 
    assign $P3255, $P3256
    nqp_get_sc_object $P3257, "1304456116.562", 40
    .const 'Sub' $P3258 = "76_1304456120.214" 
    assign $P3257, $P3258
    .const 'Sub' $P3259 = "52_1304456120.214" 
    $P3260 = $P3259."get_lexinfo"()
    nqp_get_sc_object $P3261, "1304456116.562", 23
    $P3260."set_static_lexpad_value"("$?PACKAGE", $P3261)
    .const 'Sub' $P3262 = "52_1304456120.214" 
    $P3263 = $P3262."get_lexinfo"()
    $P3263."finish_static_lexpad"()
    .const 'Sub' $P3264 = "52_1304456120.214" 
    $P3265 = $P3264."get_lexinfo"()
    nqp_get_sc_object $P3266, "1304456116.562", 23
    $P3265."set_static_lexpad_value"("$?CLASS", $P3266)
    .const 'Sub' $P3267 = "52_1304456120.214" 
    $P3268 = $P3267."get_lexinfo"()
    $P3268."finish_static_lexpad"()
    .const 'Sub' $P3269 = "10_1304456120.214" 
    $P3270 = $P3269."get_lexinfo"()
    nqp_get_sc_object $P3271, "1304456116.562", 41
    $P3270."set_static_lexpad_value"("NQPClassHOW", $P3271)
    .const 'Sub' $P3272 = "10_1304456120.214" 
    $P3273 = $P3272."get_lexinfo"()
    $P3273."finish_static_lexpad"()
    nqp_get_sc_object $P3274, "1304456116.562", 42
    .const 'Sub' $P3275 = "88_1304456120.214" 
    assign $P3274, $P3275
    nqp_get_sc_object $P3276, "1304456116.562", 43
    .const 'Sub' $P3277 = "89_1304456120.214" 
    assign $P3276, $P3277
    nqp_get_sc_object $P3278, "1304456116.562", 44
    .const 'Sub' $P3279 = "90_1304456120.214" 
    assign $P3278, $P3279
    nqp_get_sc_object $P3280, "1304456116.562", 45
    .const 'Sub' $P3281 = "91_1304456120.214" 
    assign $P3280, $P3281
    nqp_get_sc_object $P3282, "1304456116.562", 46
    .const 'Sub' $P3283 = "92_1304456120.214" 
    assign $P3282, $P3283
    nqp_get_sc_object $P3284, "1304456116.562", 47
    .const 'Sub' $P3285 = "93_1304456120.214" 
    assign $P3284, $P3285
    nqp_get_sc_object $P3286, "1304456116.562", 48
    .const 'Sub' $P3287 = "94_1304456120.214" 
    assign $P3286, $P3287
    nqp_get_sc_object $P3288, "1304456116.562", 49
    .const 'Sub' $P3289 = "96_1304456120.214" 
    assign $P3288, $P3289
    nqp_get_sc_object $P3290, "1304456116.562", 50
    .const 'Sub' $P3291 = "97_1304456120.214" 
    assign $P3290, $P3291
    nqp_get_sc_object $P3292, "1304456116.562", 51
    .const 'Sub' $P3293 = "99_1304456120.214" 
    assign $P3292, $P3293
    nqp_get_sc_object $P3294, "1304456116.562", 52
    .const 'Sub' $P3295 = "100_1304456120.214" 
    assign $P3294, $P3295
    nqp_get_sc_object $P3296, "1304456116.562", 53
    .const 'Sub' $P3297 = "104_1304456120.214" 
    assign $P3296, $P3297
    nqp_get_sc_object $P3298, "1304456116.562", 54
    .const 'Sub' $P3299 = "109_1304456120.214" 
    assign $P3298, $P3299
    nqp_get_sc_object $P3300, "1304456116.562", 55
    .const 'Sub' $P3301 = "112_1304456120.214" 
    assign $P3300, $P3301
    nqp_get_sc_object $P3302, "1304456116.562", 56
    .const 'Sub' $P3303 = "115_1304456120.214" 
    assign $P3302, $P3303
    nqp_get_sc_object $P3304, "1304456116.562", 57
    .const 'Sub' $P3305 = "118_1304456120.214" 
    assign $P3304, $P3305
    nqp_get_sc_object $P3306, "1304456116.562", 58
    .const 'Sub' $P3307 = "119_1304456120.214" 
    assign $P3306, $P3307
    nqp_get_sc_object $P3308, "1304456116.562", 59
    .const 'Sub' $P3309 = "120_1304456120.214" 
    assign $P3308, $P3309
    nqp_get_sc_object $P3310, "1304456116.562", 60
    .const 'Sub' $P3311 = "122_1304456120.214" 
    assign $P3310, $P3311
    nqp_get_sc_object $P3312, "1304456116.562", 61
    .const 'Sub' $P3313 = "123_1304456120.214" 
    assign $P3312, $P3313
    nqp_get_sc_object $P3314, "1304456116.562", 62
    .const 'Sub' $P3315 = "124_1304456120.214" 
    assign $P3314, $P3315
    nqp_get_sc_object $P3316, "1304456116.562", 63
    .const 'Sub' $P3317 = "126_1304456120.214" 
    assign $P3316, $P3317
    nqp_get_sc_object $P3318, "1304456116.562", 64
    .const 'Sub' $P3319 = "127_1304456120.214" 
    assign $P3318, $P3319
    nqp_get_sc_object $P3320, "1304456116.562", 65
    .const 'Sub' $P3321 = "128_1304456120.214" 
    assign $P3320, $P3321
    nqp_get_sc_object $P3322, "1304456116.562", 66
    .const 'Sub' $P3323 = "129_1304456120.214" 
    assign $P3322, $P3323
    nqp_get_sc_object $P3324, "1304456116.562", 67
    .const 'Sub' $P3325 = "131_1304456120.214" 
    assign $P3324, $P3325
    .const 'Sub' $P3326 = "77_1304456120.214" 
    $P3327 = $P3326."get_lexinfo"()
    nqp_get_sc_object $P3328, "1304456116.562", 41
    $P3327."set_static_lexpad_value"("$?PACKAGE", $P3328)
    .const 'Sub' $P3329 = "77_1304456120.214" 
    $P3330 = $P3329."get_lexinfo"()
    $P3330."finish_static_lexpad"()
    .const 'Sub' $P3331 = "77_1304456120.214" 
    $P3332 = $P3331."get_lexinfo"()
    nqp_get_sc_object $P3333, "1304456116.562", 41
    $P3332."set_static_lexpad_value"("$?CLASS", $P3333)
    .const 'Sub' $P3334 = "77_1304456120.214" 
    $P3335 = $P3334."get_lexinfo"()
    $P3335."finish_static_lexpad"()
    .const 'Sub' $P3336 = "10_1304456120.214" 
    $P3337 = $P3336."get_lexinfo"()
    nqp_get_sc_object $P3338, "1304456116.562", 68
    $P3337."set_static_lexpad_value"("NQPNativeHOW", $P3338)
    .const 'Sub' $P3339 = "10_1304456120.214" 
    $P3340 = $P3339."get_lexinfo"()
    $P3340."finish_static_lexpad"()
    nqp_get_sc_object $P3341, "1304456116.562", 69
    .const 'Sub' $P3342 = "134_1304456120.214" 
    assign $P3341, $P3342
    nqp_get_sc_object $P3343, "1304456116.562", 70
    .const 'Sub' $P3344 = "135_1304456120.214" 
    assign $P3343, $P3344
    nqp_get_sc_object $P3345, "1304456116.562", 71
    .const 'Sub' $P3346 = "136_1304456120.214" 
    assign $P3345, $P3346
    nqp_get_sc_object $P3347, "1304456116.562", 72
    .const 'Sub' $P3348 = "137_1304456120.214" 
    assign $P3347, $P3348
    nqp_get_sc_object $P3349, "1304456116.562", 73
    .const 'Sub' $P3350 = "138_1304456120.214" 
    assign $P3349, $P3350
    nqp_get_sc_object $P3351, "1304456116.562", 74
    .const 'Sub' $P3352 = "139_1304456120.214" 
    assign $P3351, $P3352
    nqp_get_sc_object $P3353, "1304456116.562", 75
    .const 'Sub' $P3354 = "140_1304456120.214" 
    assign $P3353, $P3354
    nqp_get_sc_object $P3355, "1304456116.562", 76
    .const 'Sub' $P3356 = "141_1304456120.214" 
    assign $P3355, $P3356
    .const 'Sub' $P3357 = "133_1304456120.214" 
    $P3358 = $P3357."get_lexinfo"()
    nqp_get_sc_object $P3359, "1304456116.562", 68
    $P3358."set_static_lexpad_value"("$?PACKAGE", $P3359)
    .const 'Sub' $P3360 = "133_1304456120.214" 
    $P3361 = $P3360."get_lexinfo"()
    $P3361."finish_static_lexpad"()
    .const 'Sub' $P3362 = "133_1304456120.214" 
    $P3363 = $P3362."get_lexinfo"()
    nqp_get_sc_object $P3364, "1304456116.562", 68
    $P3363."set_static_lexpad_value"("$?CLASS", $P3364)
    .const 'Sub' $P3365 = "133_1304456120.214" 
    $P3366 = $P3365."get_lexinfo"()
    $P3366."finish_static_lexpad"()
    .const 'Sub' $P3367 = "10_1304456120.214" 
    $P3368 = $P3367."get_lexinfo"()
    nqp_get_sc_object $P3369, "1304456116.562", 77
    $P3368."set_static_lexpad_value"("NQPAttribute", $P3369)
    .const 'Sub' $P3370 = "10_1304456120.214" 
    $P3371 = $P3370."get_lexinfo"()
    $P3371."finish_static_lexpad"()
    nqp_get_sc_object $P3372, "1304456116.562", 78
    .const 'Sub' $P3373 = "145_1304456120.214" 
    assign $P3372, $P3373
    nqp_get_sc_object $P3374, "1304456116.562", 79
    .const 'Sub' $P3375 = "146_1304456120.214" 
    assign $P3374, $P3375
    nqp_get_sc_object $P3376, "1304456116.562", 80
    .const 'Sub' $P3377 = "147_1304456120.214" 
    assign $P3376, $P3377
    nqp_get_sc_object $P3378, "1304456116.562", 81
    .const 'Sub' $P3379 = "148_1304456120.214" 
    assign $P3378, $P3379
    nqp_get_sc_object $P3380, "1304456116.562", 82
    .const 'Sub' $P3381 = "149_1304456120.214" 
    assign $P3380, $P3381
    nqp_get_sc_object $P3382, "1304456116.562", 83
    .const 'Sub' $P3383 = "150_1304456120.214" 
    assign $P3382, $P3383
    nqp_get_sc_object $P3384, "1304456116.562", 84
    .const 'Sub' $P3385 = "155_1304456120.214" 
    assign $P3384, $P3385
    .const 'Sub' $P3386 = "142_1304456120.214" 
    $P3387 = $P3386."get_lexinfo"()
    nqp_get_sc_object $P3388, "1304456116.562", 77
    $P3387."set_static_lexpad_value"("$?PACKAGE", $P3388)
    .const 'Sub' $P3389 = "142_1304456120.214" 
    $P3390 = $P3389."get_lexinfo"()
    $P3390."finish_static_lexpad"()
    .const 'Sub' $P3391 = "142_1304456120.214" 
    $P3392 = $P3391."get_lexinfo"()
    nqp_get_sc_object $P3393, "1304456116.562", 77
    $P3392."set_static_lexpad_value"("$?CLASS", $P3393)
    .const 'Sub' $P3394 = "142_1304456120.214" 
    $P3395 = $P3394."get_lexinfo"()
    $P3395."finish_static_lexpad"()
    .const 'Sub' $P3396 = "10_1304456120.214" 
    $P3397 = $P3396."get_lexinfo"()
    nqp_get_sc_object $P3398, "1304456116.562", 85
    $P3397."set_static_lexpad_value"("NQPModuleHOW", $P3398)
    .const 'Sub' $P3399 = "10_1304456120.214" 
    $P3400 = $P3399."get_lexinfo"()
    $P3400."finish_static_lexpad"()
    nqp_get_sc_object $P3401, "1304456116.562", 86
    .const 'Sub' $P3402 = "157_1304456120.214" 
    assign $P3401, $P3402
    nqp_get_sc_object $P3403, "1304456116.562", 87
    .const 'Sub' $P3404 = "158_1304456120.214" 
    assign $P3403, $P3404
    nqp_get_sc_object $P3405, "1304456116.562", 88
    .const 'Sub' $P3406 = "159_1304456120.214" 
    assign $P3405, $P3406
    nqp_get_sc_object $P3407, "1304456116.562", 89
    .const 'Sub' $P3408 = "160_1304456120.214" 
    assign $P3407, $P3408
    nqp_get_sc_object $P3409, "1304456116.562", 90
    .const 'Sub' $P3410 = "161_1304456120.214" 
    assign $P3409, $P3410
    nqp_get_sc_object $P3411, "1304456116.562", 91
    .const 'Sub' $P3412 = "162_1304456120.214" 
    assign $P3411, $P3412
    nqp_get_sc_object $P3413, "1304456116.562", 92
    .const 'Sub' $P3414 = "163_1304456120.214" 
    assign $P3413, $P3414
    nqp_get_sc_object $P3415, "1304456116.562", 93
    .const 'Sub' $P3416 = "164_1304456120.214" 
    assign $P3415, $P3416
    .const 'Sub' $P3417 = "156_1304456120.214" 
    $P3418 = $P3417."get_lexinfo"()
    nqp_get_sc_object $P3419, "1304456116.562", 85
    $P3418."set_static_lexpad_value"("$?PACKAGE", $P3419)
    .const 'Sub' $P3420 = "156_1304456120.214" 
    $P3421 = $P3420."get_lexinfo"()
    $P3421."finish_static_lexpad"()
    .const 'Sub' $P3422 = "156_1304456120.214" 
    $P3423 = $P3422."get_lexinfo"()
    nqp_get_sc_object $P3424, "1304456116.562", 85
    $P3423."set_static_lexpad_value"("$?CLASS", $P3424)
    .const 'Sub' $P3425 = "156_1304456120.214" 
    $P3426 = $P3425."get_lexinfo"()
    $P3426."finish_static_lexpad"()
    .const 'Sub' $P3427 = "10_1304456120.214" 
    $P3428 = $P3427."get_lexinfo"()
    nqp_get_sc_object $P3429, "1304456116.562", 94
    $P3428."set_static_lexpad_value"("EXPORTHOW", $P3429)
    .const 'Sub' $P3430 = "10_1304456120.214" 
    $P3431 = $P3430."get_lexinfo"()
    $P3431."finish_static_lexpad"()
    .const 'Sub' $P3432 = "165_1304456120.214" 
    $P3433 = $P3432."get_lexinfo"()
    nqp_get_sc_object $P3434, "1304456116.562", 94
    $P3433."set_static_lexpad_value"("$?PACKAGE", $P3434)
    .const 'Sub' $P3435 = "165_1304456120.214" 
    $P3436 = $P3435."get_lexinfo"()
    $P3436."finish_static_lexpad"()
    .const 'Sub' $P3437 = "165_1304456120.214" 
    $P3438 = $P3437."get_lexinfo"()
    nqp_get_sc_object $P3439, "1304456116.562", 94
    $P3438."set_static_lexpad_value"("$?CLASS", $P3439)
    .const 'Sub' $P3440 = "165_1304456120.214" 
    $P3441 = $P3440."get_lexinfo"()
    $P3441."finish_static_lexpad"()
    goto if_2384_end
  if_2384:
    nqp_dynop_setup 
    getinterp $P2387
    get_class $P2388, "LexPad"
    get_class $P2389, "NQPLexPad"
    $P2387."hll_map"($P2388, $P2389)
    nqp_create_sc $P2390, "1304456116.562"
    .local pmc cur_sc
    set cur_sc, $P2390
    nqp_get_sc_object $P2391, "__6MODEL_CORE__", 0
    $P2392 = $P2391."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2392, cur_sc
    nqp_set_sc_object "1304456116.562", 0, $P2392
    .const 'Sub' $P2393 = "10_1304456120.214" 
    $P2394 = $P2393."get_lexinfo"()
    nqp_get_sc_object $P2395, "1304456116.562", 0
    $P2394."set_static_lexpad_value"("GLOBALish", $P2395)
    .const 'Sub' $P2396 = "10_1304456120.214" 
    $P2397 = $P2396."get_lexinfo"()
    $P2397."finish_static_lexpad"()
    .const 'Sub' $P2398 = "10_1304456120.214" 
    $P2399 = $P2398."get_lexinfo"()
    nqp_get_sc_object $P2400, "1304456116.562", 0
    $P2399."set_static_lexpad_value"("$?PACKAGE", $P2400)
    .const 'Sub' $P2401 = "10_1304456120.214" 
    $P2402 = $P2401."get_lexinfo"()
    $P2402."finish_static_lexpad"()
    nqp_get_sc_object $P2403, "__6MODEL_CORE__", 0
    $P2404 = $P2403."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2404, cur_sc
    nqp_set_sc_object "1304456116.562", 1, $P2404
    nqp_get_sc_object $P2405, "1304456116.562", 1
    nqp_get_sc_object $P2406, "1304456116.562", 0
    get_who $P2407, $P2406
    set $P2407["RoleToRoleApplier"], $P2405
    .const 'Sub' $P2408 = "10_1304456120.214" 
    $P2409 = $P2408."get_lexinfo"()
    nqp_get_sc_object $P2410, "1304456116.562", 1
    $P2409."set_static_lexpad_value"("RoleToRoleApplier", $P2410)
    .const 'Sub' $P2411 = "10_1304456120.214" 
    $P2412 = $P2411."get_lexinfo"()
    $P2412."finish_static_lexpad"()
    nqp_get_sc_object $P2413, "1304456116.562", 1
    get_how $P2414, $P2413
    nqp_get_sc_object $P2415, "1304456116.562", 1
    .const 'Sub' $P2416 = "12_1304456120.214" 
    $P2414."add_method"($P2415, "apply", $P2416)
    .const 'Sub' $P2417 = "11_1304456120.214" 
    $P2418 = $P2417."get_lexinfo"()
    nqp_get_sc_object $P2419, "1304456116.562", 1
    $P2418."set_static_lexpad_value"("$?PACKAGE", $P2419)
    .const 'Sub' $P2420 = "11_1304456120.214" 
    $P2421 = $P2420."get_lexinfo"()
    $P2421."finish_static_lexpad"()
    .const 'Sub' $P2422 = "11_1304456120.214" 
    $P2423 = $P2422."get_lexinfo"()
    nqp_get_sc_object $P2424, "1304456116.562", 1
    $P2423."set_static_lexpad_value"("$?CLASS", $P2424)
    .const 'Sub' $P2425 = "11_1304456120.214" 
    $P2426 = $P2425."get_lexinfo"()
    $P2426."finish_static_lexpad"()
    nqp_get_sc_object $P2427, "1304456116.562", 1
    get_how $P2428, $P2427
    nqp_get_sc_object $P2429, "1304456116.562", 1
    $P2428."compose"($P2429)
    nqp_get_sc_object $P2430, "__6MODEL_CORE__", 0
    $P2431 = $P2430."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2431, cur_sc
    nqp_set_sc_object "1304456116.562", 3, $P2431
    nqp_get_sc_object $P2432, "1304456116.562", 3
    nqp_get_sc_object $P2433, "1304456116.562", 0
    get_who $P2434, $P2433
    set $P2434["NQPConcreteRoleHOW"], $P2432
    .const 'Sub' $P2435 = "10_1304456120.214" 
    $P2436 = $P2435."get_lexinfo"()
    nqp_get_sc_object $P2437, "1304456116.562", 3
    $P2436."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2437)
    .const 'Sub' $P2438 = "10_1304456120.214" 
    $P2439 = $P2438."get_lexinfo"()
    $P2439."finish_static_lexpad"()
    nqp_get_sc_object $P2440, "1304456116.562", 3
    get_how $P2441, $P2440
    nqp_get_sc_object $P2442, "1304456116.562", 3
    nqp_get_sc_object $P2443, "__6MODEL_CORE__", 2
    $P2444 = $P2443."new"("$!name" :named("name"))
    $P2441."add_attribute"($P2442, $P2444)
    nqp_get_sc_object $P2445, "1304456116.562", 3
    get_how $P2446, $P2445
    nqp_get_sc_object $P2447, "1304456116.562", 3
    nqp_get_sc_object $P2448, "__6MODEL_CORE__", 2
    $P2449 = $P2448."new"("$!instance_of" :named("name"))
    $P2446."add_attribute"($P2447, $P2449)
    nqp_get_sc_object $P2450, "1304456116.562", 3
    get_how $P2451, $P2450
    nqp_get_sc_object $P2452, "1304456116.562", 3
    nqp_get_sc_object $P2453, "__6MODEL_CORE__", 2
    $P2454 = $P2453."new"("%!attributes" :named("name"))
    $P2451."add_attribute"($P2452, $P2454)
    nqp_get_sc_object $P2455, "1304456116.562", 3
    get_how $P2456, $P2455
    nqp_get_sc_object $P2457, "1304456116.562", 3
    nqp_get_sc_object $P2458, "__6MODEL_CORE__", 2
    $P2459 = $P2458."new"("%!methods" :named("name"))
    $P2456."add_attribute"($P2457, $P2459)
    nqp_get_sc_object $P2460, "1304456116.562", 3
    get_how $P2461, $P2460
    nqp_get_sc_object $P2462, "1304456116.562", 3
    nqp_get_sc_object $P2463, "__6MODEL_CORE__", 2
    $P2464 = $P2463."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2461."add_attribute"($P2462, $P2464)
    nqp_get_sc_object $P2465, "1304456116.562", 3
    get_how $P2466, $P2465
    nqp_get_sc_object $P2467, "1304456116.562", 3
    nqp_get_sc_object $P2468, "__6MODEL_CORE__", 2
    $P2469 = $P2468."new"("@!collisions" :named("name"))
    $P2466."add_attribute"($P2467, $P2469)
    nqp_get_sc_object $P2470, "1304456116.562", 3
    get_how $P2471, $P2470
    nqp_get_sc_object $P2472, "1304456116.562", 3
    nqp_get_sc_object $P2473, "__6MODEL_CORE__", 2
    $P2474 = $P2473."new"("@!roles" :named("name"))
    $P2471."add_attribute"($P2472, $P2474)
    nqp_get_sc_object $P2475, "1304456116.562", 3
    get_how $P2476, $P2475
    nqp_get_sc_object $P2477, "1304456116.562", 3
    nqp_get_sc_object $P2478, "__6MODEL_CORE__", 2
    $P2479 = $P2478."new"("@!done" :named("name"))
    $P2476."add_attribute"($P2477, $P2479)
    nqp_get_sc_object $P2480, "1304456116.562", 3
    get_how $P2481, $P2480
    nqp_get_sc_object $P2482, "1304456116.562", 3
    nqp_get_sc_object $P2483, "__6MODEL_CORE__", 2
    $P2484 = $P2483."new"("$!composed" :named("name"))
    $P2481."add_attribute"($P2482, $P2484)
    nqp_get_sc_object $P2485, "1304456116.562", 3
    get_how $P2486, $P2485
    nqp_get_sc_object $P2487, "1304456116.562", 3
    .const 'Sub' $P2488 = "22_1304456120.214" 
    $P2486."add_method"($P2487, "new", $P2488)
    nqp_get_sc_object $P2489, "1304456116.562", 3
    get_how $P2490, $P2489
    nqp_get_sc_object $P2491, "1304456116.562", 3
    .const 'Sub' $P2492 = "23_1304456120.214" 
    $P2490."add_method"($P2491, "BUILD", $P2492)
    nqp_get_sc_object $P2493, "1304456116.562", 3
    get_how $P2494, $P2493
    nqp_get_sc_object $P2495, "1304456116.562", 3
    .const 'Sub' $P2496 = "24_1304456120.214" 
    $P2494."add_method"($P2495, "new_type", $P2496)
    nqp_get_sc_object $P2497, "1304456116.562", 3
    get_how $P2498, $P2497
    nqp_get_sc_object $P2499, "1304456116.562", 3
    .const 'Sub' $P2500 = "25_1304456120.214" 
    $P2498."add_method"($P2499, "add_method", $P2500)
    nqp_get_sc_object $P2501, "1304456116.562", 3
    get_how $P2502, $P2501
    nqp_get_sc_object $P2503, "1304456116.562", 3
    .const 'Sub' $P2504 = "26_1304456120.214" 
    $P2502."add_method"($P2503, "add_multi_method", $P2504)
    nqp_get_sc_object $P2505, "1304456116.562", 3
    get_how $P2506, $P2505
    nqp_get_sc_object $P2507, "1304456116.562", 3
    .const 'Sub' $P2508 = "27_1304456120.214" 
    $P2506."add_method"($P2507, "add_attribute", $P2508)
    nqp_get_sc_object $P2509, "1304456116.562", 3
    get_how $P2510, $P2509
    nqp_get_sc_object $P2511, "1304456116.562", 3
    .const 'Sub' $P2512 = "28_1304456120.214" 
    $P2510."add_method"($P2511, "add_parent", $P2512)
    nqp_get_sc_object $P2513, "1304456116.562", 3
    get_how $P2514, $P2513
    nqp_get_sc_object $P2515, "1304456116.562", 3
    .const 'Sub' $P2516 = "29_1304456120.214" 
    $P2514."add_method"($P2515, "add_role", $P2516)
    nqp_get_sc_object $P2517, "1304456116.562", 3
    get_how $P2518, $P2517
    nqp_get_sc_object $P2519, "1304456116.562", 3
    .const 'Sub' $P2520 = "30_1304456120.214" 
    $P2518."add_method"($P2519, "add_collision", $P2520)
    nqp_get_sc_object $P2521, "1304456116.562", 3
    get_how $P2522, $P2521
    nqp_get_sc_object $P2523, "1304456116.562", 3
    .const 'Sub' $P2524 = "31_1304456120.214" 
    $P2522."add_method"($P2523, "compose", $P2524)
    nqp_get_sc_object $P2525, "1304456116.562", 3
    get_how $P2526, $P2525
    nqp_get_sc_object $P2527, "1304456116.562", 3
    .const 'Sub' $P2528 = "33_1304456120.214" 
    $P2526."add_method"($P2527, "methods", $P2528)
    nqp_get_sc_object $P2529, "1304456116.562", 3
    get_how $P2530, $P2529
    nqp_get_sc_object $P2531, "1304456116.562", 3
    .const 'Sub' $P2532 = "35_1304456120.214" 
    $P2530."add_method"($P2531, "method_table", $P2532)
    nqp_get_sc_object $P2533, "1304456116.562", 3
    get_how $P2534, $P2533
    nqp_get_sc_object $P2535, "1304456116.562", 3
    .const 'Sub' $P2536 = "36_1304456120.214" 
    $P2534."add_method"($P2535, "collisions", $P2536)
    nqp_get_sc_object $P2537, "1304456116.562", 3
    get_how $P2538, $P2537
    nqp_get_sc_object $P2539, "1304456116.562", 3
    .const 'Sub' $P2540 = "37_1304456120.214" 
    $P2538."add_method"($P2539, "name", $P2540)
    nqp_get_sc_object $P2541, "1304456116.562", 3
    get_how $P2542, $P2541
    nqp_get_sc_object $P2543, "1304456116.562", 3
    .const 'Sub' $P2544 = "38_1304456120.214" 
    $P2542."add_method"($P2543, "attributes", $P2544)
    nqp_get_sc_object $P2545, "1304456116.562", 3
    get_how $P2546, $P2545
    nqp_get_sc_object $P2547, "1304456116.562", 3
    .const 'Sub' $P2548 = "40_1304456120.214" 
    $P2546."add_method"($P2547, "roles", $P2548)
    nqp_get_sc_object $P2549, "1304456116.562", 3
    get_how $P2550, $P2549
    nqp_get_sc_object $P2551, "1304456116.562", 3
    .const 'Sub' $P2552 = "41_1304456120.214" 
    $P2550."add_method"($P2551, "instance_of", $P2552)
    .const 'Sub' $P2553 = "21_1304456120.214" 
    $P2554 = $P2553."get_lexinfo"()
    nqp_get_sc_object $P2555, "1304456116.562", 3
    $P2554."set_static_lexpad_value"("$?PACKAGE", $P2555)
    .const 'Sub' $P2556 = "21_1304456120.214" 
    $P2557 = $P2556."get_lexinfo"()
    $P2557."finish_static_lexpad"()
    .const 'Sub' $P2558 = "21_1304456120.214" 
    $P2559 = $P2558."get_lexinfo"()
    nqp_get_sc_object $P2560, "1304456116.562", 3
    $P2559."set_static_lexpad_value"("$?CLASS", $P2560)
    .const 'Sub' $P2561 = "21_1304456120.214" 
    $P2562 = $P2561."get_lexinfo"()
    $P2562."finish_static_lexpad"()
    nqp_get_sc_object $P2563, "1304456116.562", 3
    get_how $P2564, $P2563
    nqp_get_sc_object $P2565, "1304456116.562", 3
    $P2564."compose"($P2565)
    nqp_get_sc_object $P2566, "__6MODEL_CORE__", 0
    $P2567 = $P2566."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2567, cur_sc
    nqp_set_sc_object "1304456116.562", 21, $P2567
    nqp_get_sc_object $P2568, "1304456116.562", 21
    nqp_get_sc_object $P2569, "1304456116.562", 0
    get_who $P2570, $P2569
    set $P2570["RoleToClassApplier"], $P2568
    .const 'Sub' $P2571 = "10_1304456120.214" 
    $P2572 = $P2571."get_lexinfo"()
    nqp_get_sc_object $P2573, "1304456116.562", 21
    $P2572."set_static_lexpad_value"("RoleToClassApplier", $P2573)
    .const 'Sub' $P2574 = "10_1304456120.214" 
    $P2575 = $P2574."get_lexinfo"()
    $P2575."finish_static_lexpad"()
    nqp_get_sc_object $P2576, "1304456116.562", 21
    get_how $P2577, $P2576
    nqp_get_sc_object $P2578, "1304456116.562", 21
    .const 'Sub' $P2579 = "47_1304456120.214" 
    $P2577."add_method"($P2578, "apply", $P2579)
    .const 'Sub' $P2580 = "42_1304456120.214" 
    $P2581 = $P2580."get_lexinfo"()
    nqp_get_sc_object $P2582, "1304456116.562", 21
    $P2581."set_static_lexpad_value"("$?PACKAGE", $P2582)
    .const 'Sub' $P2583 = "42_1304456120.214" 
    $P2584 = $P2583."get_lexinfo"()
    $P2584."finish_static_lexpad"()
    .const 'Sub' $P2585 = "42_1304456120.214" 
    $P2586 = $P2585."get_lexinfo"()
    nqp_get_sc_object $P2587, "1304456116.562", 21
    $P2586."set_static_lexpad_value"("$?CLASS", $P2587)
    .const 'Sub' $P2588 = "42_1304456120.214" 
    $P2589 = $P2588."get_lexinfo"()
    $P2589."finish_static_lexpad"()
    nqp_get_sc_object $P2590, "1304456116.562", 21
    get_how $P2591, $P2590
    nqp_get_sc_object $P2592, "1304456116.562", 21
    $P2591."compose"($P2592)
    nqp_get_sc_object $P2593, "__6MODEL_CORE__", 0
    $P2594 = $P2593."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2594, cur_sc
    nqp_set_sc_object "1304456116.562", 23, $P2594
    nqp_get_sc_object $P2595, "1304456116.562", 23
    nqp_get_sc_object $P2596, "1304456116.562", 0
    get_who $P2597, $P2596
    set $P2597["NQPParametricRoleHOW"], $P2595
    .const 'Sub' $P2598 = "10_1304456120.214" 
    $P2599 = $P2598."get_lexinfo"()
    nqp_get_sc_object $P2600, "1304456116.562", 23
    $P2599."set_static_lexpad_value"("NQPParametricRoleHOW", $P2600)
    .const 'Sub' $P2601 = "10_1304456120.214" 
    $P2602 = $P2601."get_lexinfo"()
    $P2602."finish_static_lexpad"()
    nqp_get_sc_object $P2603, "1304456116.562", 23
    get_how $P2604, $P2603
    nqp_get_sc_object $P2605, "1304456116.562", 23
    nqp_get_sc_object $P2606, "__6MODEL_CORE__", 2
    $P2607 = $P2606."new"("$!name" :named("name"))
    $P2604."add_attribute"($P2605, $P2607)
    nqp_get_sc_object $P2608, "1304456116.562", 23
    get_how $P2609, $P2608
    nqp_get_sc_object $P2610, "1304456116.562", 23
    nqp_get_sc_object $P2611, "__6MODEL_CORE__", 2
    $P2612 = $P2611."new"("%!attributes" :named("name"))
    $P2609."add_attribute"($P2610, $P2612)
    nqp_get_sc_object $P2613, "1304456116.562", 23
    get_how $P2614, $P2613
    nqp_get_sc_object $P2615, "1304456116.562", 23
    nqp_get_sc_object $P2616, "__6MODEL_CORE__", 2
    $P2617 = $P2616."new"("%!methods" :named("name"))
    $P2614."add_attribute"($P2615, $P2617)
    nqp_get_sc_object $P2618, "1304456116.562", 23
    get_how $P2619, $P2618
    nqp_get_sc_object $P2620, "1304456116.562", 23
    nqp_get_sc_object $P2621, "__6MODEL_CORE__", 2
    $P2622 = $P2621."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2619."add_attribute"($P2620, $P2622)
    nqp_get_sc_object $P2623, "1304456116.562", 23
    get_how $P2624, $P2623
    nqp_get_sc_object $P2625, "1304456116.562", 23
    nqp_get_sc_object $P2626, "__6MODEL_CORE__", 2
    $P2627 = $P2626."new"("@!roles" :named("name"))
    $P2624."add_attribute"($P2625, $P2627)
    nqp_get_sc_object $P2628, "1304456116.562", 23
    get_how $P2629, $P2628
    nqp_get_sc_object $P2630, "1304456116.562", 23
    nqp_get_sc_object $P2631, "__6MODEL_CORE__", 2
    $P2632 = $P2631."new"("$!composed" :named("name"))
    $P2629."add_attribute"($P2630, $P2632)
    nqp_get_sc_object $P2633, "1304456116.562", 23
    get_how $P2634, $P2633
    nqp_get_sc_object $P2635, "1304456116.562", 23
    nqp_get_sc_object $P2636, "__6MODEL_CORE__", 2
    $P2637 = $P2636."new"("$!body_block" :named("name"))
    $P2634."add_attribute"($P2635, $P2637)
    nqp_get_sc_object $P2638, "1304456116.562", 23
    get_how $P2639, $P2638
    nqp_get_sc_object $P2640, "1304456116.562", 23
    .const 'Sub' $P2641 = "54_1304456120.214" 
    $P2639."add_method"($P2640, "new", $P2641)
    nqp_get_sc_object $P2642, "1304456116.562", 23
    get_how $P2643, $P2642
    nqp_get_sc_object $P2644, "1304456116.562", 23
    .const 'Sub' $P2645 = "55_1304456120.214" 
    $P2643."add_method"($P2644, "BUILD", $P2645)
    nqp_get_sc_object $P2646, "1304456116.562", 23
    get_how $P2647, $P2646
    nqp_get_sc_object $P2648, "1304456116.562", 23
    .const 'Sub' $P2649 = "56_1304456120.214" 
    $P2647."add_method"($P2648, "new_type", $P2649)
    nqp_get_sc_object $P2650, "1304456116.562", 23
    get_how $P2651, $P2650
    nqp_get_sc_object $P2652, "1304456116.562", 23
    .const 'Sub' $P2653 = "57_1304456120.214" 
    $P2651."add_method"($P2652, "set_body_block", $P2653)
    nqp_get_sc_object $P2654, "1304456116.562", 23
    get_how $P2655, $P2654
    nqp_get_sc_object $P2656, "1304456116.562", 23
    .const 'Sub' $P2657 = "58_1304456120.214" 
    $P2655."add_method"($P2656, "add_method", $P2657)
    nqp_get_sc_object $P2658, "1304456116.562", 23
    get_how $P2659, $P2658
    nqp_get_sc_object $P2660, "1304456116.562", 23
    .const 'Sub' $P2661 = "59_1304456120.214" 
    $P2659."add_method"($P2660, "add_multi_method", $P2661)
    nqp_get_sc_object $P2662, "1304456116.562", 23
    get_how $P2663, $P2662
    nqp_get_sc_object $P2664, "1304456116.562", 23
    .const 'Sub' $P2665 = "60_1304456120.214" 
    $P2663."add_method"($P2664, "add_attribute", $P2665)
    nqp_get_sc_object $P2666, "1304456116.562", 23
    get_how $P2667, $P2666
    nqp_get_sc_object $P2668, "1304456116.562", 23
    .const 'Sub' $P2669 = "61_1304456120.214" 
    $P2667."add_method"($P2668, "add_parent", $P2669)
    nqp_get_sc_object $P2670, "1304456116.562", 23
    get_how $P2671, $P2670
    nqp_get_sc_object $P2672, "1304456116.562", 23
    .const 'Sub' $P2673 = "62_1304456120.214" 
    $P2671."add_method"($P2672, "add_role", $P2673)
    nqp_get_sc_object $P2674, "1304456116.562", 23
    get_how $P2675, $P2674
    nqp_get_sc_object $P2676, "1304456116.562", 23
    .const 'Sub' $P2677 = "63_1304456120.214" 
    $P2675."add_method"($P2676, "compose", $P2677)
    nqp_get_sc_object $P2678, "1304456116.562", 23
    get_how $P2679, $P2678
    nqp_get_sc_object $P2680, "1304456116.562", 23
    .const 'Sub' $P2681 = "64_1304456120.214" 
    $P2679."add_method"($P2680, "parametric", $P2681)
    nqp_get_sc_object $P2682, "1304456116.562", 23
    get_how $P2683, $P2682
    nqp_get_sc_object $P2684, "1304456116.562", 23
    .const 'Sub' $P2685 = "65_1304456120.214" 
    $P2683."add_method"($P2684, "instantiate", $P2685)
    nqp_get_sc_object $P2686, "1304456116.562", 23
    get_how $P2687, $P2686
    nqp_get_sc_object $P2688, "1304456116.562", 23
    .const 'Sub' $P2689 = "70_1304456120.214" 
    $P2687."add_method"($P2688, "methods", $P2689)
    nqp_get_sc_object $P2690, "1304456116.562", 23
    get_how $P2691, $P2690
    nqp_get_sc_object $P2692, "1304456116.562", 23
    .const 'Sub' $P2693 = "72_1304456120.214" 
    $P2691."add_method"($P2692, "method_table", $P2693)
    nqp_get_sc_object $P2694, "1304456116.562", 23
    get_how $P2695, $P2694
    nqp_get_sc_object $P2696, "1304456116.562", 23
    .const 'Sub' $P2697 = "73_1304456120.214" 
    $P2695."add_method"($P2696, "name", $P2697)
    nqp_get_sc_object $P2698, "1304456116.562", 23
    get_how $P2699, $P2698
    nqp_get_sc_object $P2700, "1304456116.562", 23
    .const 'Sub' $P2701 = "74_1304456120.214" 
    $P2699."add_method"($P2700, "attributes", $P2701)
    nqp_get_sc_object $P2702, "1304456116.562", 23
    get_how $P2703, $P2702
    nqp_get_sc_object $P2704, "1304456116.562", 23
    .const 'Sub' $P2705 = "76_1304456120.214" 
    $P2703."add_method"($P2704, "roles", $P2705)
    .const 'Sub' $P2706 = "52_1304456120.214" 
    $P2707 = $P2706."get_lexinfo"()
    nqp_get_sc_object $P2708, "1304456116.562", 23
    $P2707."set_static_lexpad_value"("$?PACKAGE", $P2708)
    .const 'Sub' $P2709 = "52_1304456120.214" 
    $P2710 = $P2709."get_lexinfo"()
    $P2710."finish_static_lexpad"()
    .const 'Sub' $P2711 = "52_1304456120.214" 
    $P2712 = $P2711."get_lexinfo"()
    nqp_get_sc_object $P2713, "1304456116.562", 23
    $P2712."set_static_lexpad_value"("$?CLASS", $P2713)
    .const 'Sub' $P2714 = "52_1304456120.214" 
    $P2715 = $P2714."get_lexinfo"()
    $P2715."finish_static_lexpad"()
    nqp_get_sc_object $P2716, "1304456116.562", 23
    get_how $P2717, $P2716
    nqp_get_sc_object $P2718, "1304456116.562", 23
    $P2717."compose"($P2718)
    nqp_get_sc_object $P2719, "__6MODEL_CORE__", 0
    $P2720 = $P2719."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2720, cur_sc
    nqp_set_sc_object "1304456116.562", 41, $P2720
    nqp_get_sc_object $P2721, "1304456116.562", 41
    nqp_get_sc_object $P2722, "1304456116.562", 0
    get_who $P2723, $P2722
    set $P2723["NQPClassHOW"], $P2721
    .const 'Sub' $P2724 = "10_1304456120.214" 
    $P2725 = $P2724."get_lexinfo"()
    nqp_get_sc_object $P2726, "1304456116.562", 41
    $P2725."set_static_lexpad_value"("NQPClassHOW", $P2726)
    .const 'Sub' $P2727 = "10_1304456120.214" 
    $P2728 = $P2727."get_lexinfo"()
    $P2728."finish_static_lexpad"()
    nqp_get_sc_object $P2729, "1304456116.562", 41
    get_how $P2730, $P2729
    nqp_get_sc_object $P2731, "1304456116.562", 41
    nqp_get_sc_object $P2732, "__6MODEL_CORE__", 2
    $P2733 = $P2732."new"("$!name" :named("name"))
    $P2730."add_attribute"($P2731, $P2733)
    nqp_get_sc_object $P2734, "1304456116.562", 41
    get_how $P2735, $P2734
    nqp_get_sc_object $P2736, "1304456116.562", 41
    nqp_get_sc_object $P2737, "__6MODEL_CORE__", 2
    $P2738 = $P2737."new"("%!attributes" :named("name"))
    $P2735."add_attribute"($P2736, $P2738)
    nqp_get_sc_object $P2739, "1304456116.562", 41
    get_how $P2740, $P2739
    nqp_get_sc_object $P2741, "1304456116.562", 41
    nqp_get_sc_object $P2742, "__6MODEL_CORE__", 2
    $P2743 = $P2742."new"("%!methods" :named("name"))
    $P2740."add_attribute"($P2741, $P2743)
    nqp_get_sc_object $P2744, "1304456116.562", 41
    get_how $P2745, $P2744
    nqp_get_sc_object $P2746, "1304456116.562", 41
    nqp_get_sc_object $P2747, "__6MODEL_CORE__", 2
    $P2748 = $P2747."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2745."add_attribute"($P2746, $P2748)
    nqp_get_sc_object $P2749, "1304456116.562", 41
    get_how $P2750, $P2749
    nqp_get_sc_object $P2751, "1304456116.562", 41
    nqp_get_sc_object $P2752, "__6MODEL_CORE__", 2
    $P2753 = $P2752."new"("@!parents" :named("name"))
    $P2750."add_attribute"($P2751, $P2753)
    nqp_get_sc_object $P2754, "1304456116.562", 41
    get_how $P2755, $P2754
    nqp_get_sc_object $P2756, "1304456116.562", 41
    nqp_get_sc_object $P2757, "__6MODEL_CORE__", 2
    $P2758 = $P2757."new"("@!roles" :named("name"))
    $P2755."add_attribute"($P2756, $P2758)
    nqp_get_sc_object $P2759, "1304456116.562", 41
    get_how $P2760, $P2759
    nqp_get_sc_object $P2761, "1304456116.562", 41
    nqp_get_sc_object $P2762, "__6MODEL_CORE__", 2
    $P2763 = $P2762."new"("$!default_parent" :named("name"))
    $P2760."add_attribute"($P2761, $P2763)
    nqp_get_sc_object $P2764, "1304456116.562", 41
    get_how $P2765, $P2764
    nqp_get_sc_object $P2766, "1304456116.562", 41
    nqp_get_sc_object $P2767, "__6MODEL_CORE__", 2
    $P2768 = $P2767."new"("@!vtable" :named("name"))
    $P2765."add_attribute"($P2766, $P2768)
    nqp_get_sc_object $P2769, "1304456116.562", 41
    get_how $P2770, $P2769
    nqp_get_sc_object $P2771, "1304456116.562", 41
    nqp_get_sc_object $P2772, "__6MODEL_CORE__", 2
    $P2773 = $P2772."new"("%!method-vtable-slots" :named("name"))
    $P2770."add_attribute"($P2771, $P2773)
    nqp_get_sc_object $P2774, "1304456116.562", 41
    get_how $P2775, $P2774
    nqp_get_sc_object $P2776, "1304456116.562", 41
    nqp_get_sc_object $P2777, "__6MODEL_CORE__", 2
    $P2778 = $P2777."new"("$!composed" :named("name"))
    $P2775."add_attribute"($P2776, $P2778)
    nqp_get_sc_object $P2779, "1304456116.562", 41
    get_how $P2780, $P2779
    nqp_get_sc_object $P2781, "1304456116.562", 41
    nqp_get_sc_object $P2782, "__6MODEL_CORE__", 2
    $P2783 = $P2782."new"("@!mro" :named("name"))
    $P2780."add_attribute"($P2781, $P2783)
    nqp_get_sc_object $P2784, "1304456116.562", 41
    get_how $P2785, $P2784
    nqp_get_sc_object $P2786, "1304456116.562", 41
    nqp_get_sc_object $P2787, "__6MODEL_CORE__", 2
    $P2788 = $P2787."new"("@!done" :named("name"))
    $P2785."add_attribute"($P2786, $P2788)
    nqp_get_sc_object $P2789, "1304456116.562", 41
    get_how $P2790, $P2789
    nqp_get_sc_object $P2791, "1304456116.562", 41
    nqp_get_sc_object $P2792, "__6MODEL_CORE__", 2
    $P2793 = $P2792."new"("%!parrot_vtable_mapping" :named("name"))
    $P2790."add_attribute"($P2791, $P2793)
    nqp_get_sc_object $P2794, "1304456116.562", 41
    get_how $P2795, $P2794
    nqp_get_sc_object $P2796, "1304456116.562", 41
    .const 'Sub' $P2797 = "88_1304456120.214" 
    $P2795."add_method"($P2796, "new", $P2797)
    nqp_get_sc_object $P2798, "1304456116.562", 41
    get_how $P2799, $P2798
    nqp_get_sc_object $P2800, "1304456116.562", 41
    .const 'Sub' $P2801 = "89_1304456120.214" 
    $P2799."add_method"($P2800, "BUILD", $P2801)
    nqp_get_sc_object $P2802, "1304456116.562", 41
    get_how $P2803, $P2802
    nqp_get_sc_object $P2804, "1304456116.562", 41
    .const 'Sub' $P2805 = "90_1304456120.214" 
    $P2803."add_method"($P2804, "new_type", $P2805)
    nqp_get_sc_object $P2806, "1304456116.562", 41
    get_how $P2807, $P2806
    nqp_get_sc_object $P2808, "1304456116.562", 41
    .const 'Sub' $P2809 = "91_1304456120.214" 
    $P2807."add_method"($P2808, "add_method", $P2809)
    nqp_get_sc_object $P2810, "1304456116.562", 41
    get_how $P2811, $P2810
    nqp_get_sc_object $P2812, "1304456116.562", 41
    .const 'Sub' $P2813 = "92_1304456120.214" 
    $P2811."add_method"($P2812, "add_multi_method", $P2813)
    nqp_get_sc_object $P2814, "1304456116.562", 41
    get_how $P2815, $P2814
    nqp_get_sc_object $P2816, "1304456116.562", 41
    .const 'Sub' $P2817 = "93_1304456120.214" 
    $P2815."add_method"($P2816, "add_attribute", $P2817)
    nqp_get_sc_object $P2818, "1304456116.562", 41
    get_how $P2819, $P2818
    nqp_get_sc_object $P2820, "1304456116.562", 41
    .const 'Sub' $P2821 = "94_1304456120.214" 
    $P2819."add_method"($P2820, "add_parent", $P2821)
    nqp_get_sc_object $P2822, "1304456116.562", 41
    get_how $P2823, $P2822
    nqp_get_sc_object $P2824, "1304456116.562", 41
    .const 'Sub' $P2825 = "96_1304456120.214" 
    $P2823."add_method"($P2824, "set_default_parent", $P2825)
    nqp_get_sc_object $P2826, "1304456116.562", 41
    get_how $P2827, $P2826
    nqp_get_sc_object $P2828, "1304456116.562", 41
    .const 'Sub' $P2829 = "97_1304456120.214" 
    $P2827."add_method"($P2828, "add_role", $P2829)
    nqp_get_sc_object $P2830, "1304456116.562", 41
    get_how $P2831, $P2830
    nqp_get_sc_object $P2832, "1304456116.562", 41
    .const 'Sub' $P2833 = "99_1304456120.214" 
    $P2831."add_method"($P2832, "add_parrot_vtable_mapping", $P2833)
    nqp_get_sc_object $P2834, "1304456116.562", 41
    get_how $P2835, $P2834
    nqp_get_sc_object $P2836, "1304456116.562", 41
    .const 'Sub' $P2837 = "100_1304456120.214" 
    $P2835."add_method"($P2836, "compose", $P2837)
    nqp_get_sc_object $P2838, "1304456116.562", 41
    get_how $P2839, $P2838
    nqp_get_sc_object $P2840, "1304456116.562", 41
    .const 'Sub' $P2841 = "104_1304456120.214" 
    $P2839."add_method"($P2840, "incorporate_multi_candidates", $P2841)
    nqp_get_sc_object $P2842, "1304456116.562", 41
    get_how $P2843, $P2842
    nqp_get_sc_object $P2844, "1304456116.562", 41
    .const 'Sub' $P2845 = "109_1304456120.214" 
    $P2843."add_method"($P2844, "publish_type_cache", $P2845)
    nqp_get_sc_object $P2846, "1304456116.562", 41
    get_how $P2847, $P2846
    nqp_get_sc_object $P2848, "1304456116.562", 41
    .const 'Sub' $P2849 = "112_1304456120.214" 
    $P2847."add_method"($P2848, "publish_method_cache", $P2849)
    nqp_get_sc_object $P2850, "1304456116.562", 41
    get_how $P2851, $P2850
    nqp_get_sc_object $P2852, "1304456116.562", 41
    .const 'Sub' $P2853 = "115_1304456120.214" 
    $P2851."add_method"($P2852, "publish_parrot_vtable_mapping", $P2853)
    nqp_get_sc_object $P2854, "1304456116.562", 41
    get_how $P2855, $P2854
    nqp_get_sc_object $P2856, "1304456116.562", 41
    .const 'Sub' $P2857 = "118_1304456120.214" 
    $P2855."add_method"($P2856, "parents", $P2857)
    nqp_get_sc_object $P2858, "1304456116.562", 41
    get_how $P2859, $P2858
    nqp_get_sc_object $P2860, "1304456116.562", 41
    .const 'Sub' $P2861 = "119_1304456120.214" 
    $P2859."add_method"($P2860, "roles", $P2861)
    nqp_get_sc_object $P2862, "1304456116.562", 41
    get_how $P2863, $P2862
    nqp_get_sc_object $P2864, "1304456116.562", 41
    .const 'Sub' $P2865 = "120_1304456120.214" 
    $P2863."add_method"($P2864, "methods", $P2865)
    nqp_get_sc_object $P2866, "1304456116.562", 41
    get_how $P2867, $P2866
    nqp_get_sc_object $P2868, "1304456116.562", 41
    .const 'Sub' $P2869 = "122_1304456120.214" 
    $P2867."add_method"($P2868, "method_table", $P2869)
    nqp_get_sc_object $P2870, "1304456116.562", 41
    get_how $P2871, $P2870
    nqp_get_sc_object $P2872, "1304456116.562", 41
    .const 'Sub' $P2873 = "123_1304456120.214" 
    $P2871."add_method"($P2872, "name", $P2873)
    nqp_get_sc_object $P2874, "1304456116.562", 41
    get_how $P2875, $P2874
    nqp_get_sc_object $P2876, "1304456116.562", 41
    .const 'Sub' $P2877 = "124_1304456120.214" 
    $P2875."add_method"($P2876, "attributes", $P2877)
    nqp_get_sc_object $P2878, "1304456116.562", 41
    get_how $P2879, $P2878
    nqp_get_sc_object $P2880, "1304456116.562", 41
    .const 'Sub' $P2881 = "126_1304456120.214" 
    $P2879."add_method"($P2880, "parrot_vtable_mappings", $P2881)
    nqp_get_sc_object $P2882, "1304456116.562", 41
    get_how $P2883, $P2882
    nqp_get_sc_object $P2884, "1304456116.562", 41
    .const 'Sub' $P2885 = "127_1304456120.214" 
    $P2883."add_method"($P2884, "isa", $P2885)
    nqp_get_sc_object $P2886, "1304456116.562", 41
    get_how $P2887, $P2886
    nqp_get_sc_object $P2888, "1304456116.562", 41
    .const 'Sub' $P2889 = "128_1304456120.214" 
    $P2887."add_method"($P2888, "does", $P2889)
    nqp_get_sc_object $P2890, "1304456116.562", 41
    get_how $P2891, $P2890
    nqp_get_sc_object $P2892, "1304456116.562", 41
    .const 'Sub' $P2893 = "129_1304456120.214" 
    $P2891."add_method"($P2892, "can", $P2893)
    nqp_get_sc_object $P2894, "1304456116.562", 41
    get_how $P2895, $P2894
    nqp_get_sc_object $P2896, "1304456116.562", 41
    .const 'Sub' $P2897 = "131_1304456120.214" 
    $P2895."add_method"($P2896, "find_method", $P2897)
    .const 'Sub' $P2898 = "77_1304456120.214" 
    $P2899 = $P2898."get_lexinfo"()
    nqp_get_sc_object $P2900, "1304456116.562", 41
    $P2899."set_static_lexpad_value"("$?PACKAGE", $P2900)
    .const 'Sub' $P2901 = "77_1304456120.214" 
    $P2902 = $P2901."get_lexinfo"()
    $P2902."finish_static_lexpad"()
    .const 'Sub' $P2903 = "77_1304456120.214" 
    $P2904 = $P2903."get_lexinfo"()
    nqp_get_sc_object $P2905, "1304456116.562", 41
    $P2904."set_static_lexpad_value"("$?CLASS", $P2905)
    .const 'Sub' $P2906 = "77_1304456120.214" 
    $P2907 = $P2906."get_lexinfo"()
    $P2907."finish_static_lexpad"()
    nqp_get_sc_object $P2908, "1304456116.562", 41
    get_how $P2909, $P2908
    nqp_get_sc_object $P2910, "1304456116.562", 41
    $P2909."compose"($P2910)
    nqp_get_sc_object $P2911, "__6MODEL_CORE__", 0
    $P2912 = $P2911."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2912, cur_sc
    nqp_set_sc_object "1304456116.562", 68, $P2912
    nqp_get_sc_object $P2913, "1304456116.562", 68
    nqp_get_sc_object $P2914, "1304456116.562", 0
    get_who $P2915, $P2914
    set $P2915["NQPNativeHOW"], $P2913
    .const 'Sub' $P2916 = "10_1304456120.214" 
    $P2917 = $P2916."get_lexinfo"()
    nqp_get_sc_object $P2918, "1304456116.562", 68
    $P2917."set_static_lexpad_value"("NQPNativeHOW", $P2918)
    .const 'Sub' $P2919 = "10_1304456120.214" 
    $P2920 = $P2919."get_lexinfo"()
    $P2920."finish_static_lexpad"()
    nqp_get_sc_object $P2921, "1304456116.562", 68
    get_how $P2922, $P2921
    nqp_get_sc_object $P2923, "1304456116.562", 68
    nqp_get_sc_object $P2924, "__6MODEL_CORE__", 2
    $P2925 = $P2924."new"("$!name" :named("name"))
    $P2922."add_attribute"($P2923, $P2925)
    nqp_get_sc_object $P2926, "1304456116.562", 68
    get_how $P2927, $P2926
    nqp_get_sc_object $P2928, "1304456116.562", 68
    nqp_get_sc_object $P2929, "__6MODEL_CORE__", 2
    $P2930 = $P2929."new"("$!composed" :named("name"))
    $P2927."add_attribute"($P2928, $P2930)
    nqp_get_sc_object $P2931, "1304456116.562", 68
    get_how $P2932, $P2931
    nqp_get_sc_object $P2933, "1304456116.562", 68
    .const 'Sub' $P2934 = "134_1304456120.214" 
    $P2932."add_method"($P2933, "new", $P2934)
    nqp_get_sc_object $P2935, "1304456116.562", 68
    get_how $P2936, $P2935
    nqp_get_sc_object $P2937, "1304456116.562", 68
    .const 'Sub' $P2938 = "135_1304456120.214" 
    $P2936."add_method"($P2937, "BUILD", $P2938)
    nqp_get_sc_object $P2939, "1304456116.562", 68
    get_how $P2940, $P2939
    nqp_get_sc_object $P2941, "1304456116.562", 68
    .const 'Sub' $P2942 = "136_1304456120.214" 
    $P2940."add_method"($P2941, "new_type", $P2942)
    nqp_get_sc_object $P2943, "1304456116.562", 68
    get_how $P2944, $P2943
    nqp_get_sc_object $P2945, "1304456116.562", 68
    .const 'Sub' $P2946 = "137_1304456120.214" 
    $P2944."add_method"($P2945, "add_method", $P2946)
    nqp_get_sc_object $P2947, "1304456116.562", 68
    get_how $P2948, $P2947
    nqp_get_sc_object $P2949, "1304456116.562", 68
    .const 'Sub' $P2950 = "138_1304456120.214" 
    $P2948."add_method"($P2949, "add_multi_method", $P2950)
    nqp_get_sc_object $P2951, "1304456116.562", 68
    get_how $P2952, $P2951
    nqp_get_sc_object $P2953, "1304456116.562", 68
    .const 'Sub' $P2954 = "139_1304456120.214" 
    $P2952."add_method"($P2953, "add_attribute", $P2954)
    nqp_get_sc_object $P2955, "1304456116.562", 68
    get_how $P2956, $P2955
    nqp_get_sc_object $P2957, "1304456116.562", 68
    .const 'Sub' $P2958 = "140_1304456120.214" 
    $P2956."add_method"($P2957, "compose", $P2958)
    nqp_get_sc_object $P2959, "1304456116.562", 68
    get_how $P2960, $P2959
    nqp_get_sc_object $P2961, "1304456116.562", 68
    .const 'Sub' $P2962 = "141_1304456120.214" 
    $P2960."add_method"($P2961, "name", $P2962)
    .const 'Sub' $P2963 = "133_1304456120.214" 
    $P2964 = $P2963."get_lexinfo"()
    nqp_get_sc_object $P2965, "1304456116.562", 68
    $P2964."set_static_lexpad_value"("$?PACKAGE", $P2965)
    .const 'Sub' $P2966 = "133_1304456120.214" 
    $P2967 = $P2966."get_lexinfo"()
    $P2967."finish_static_lexpad"()
    .const 'Sub' $P2968 = "133_1304456120.214" 
    $P2969 = $P2968."get_lexinfo"()
    nqp_get_sc_object $P2970, "1304456116.562", 68
    $P2969."set_static_lexpad_value"("$?CLASS", $P2970)
    .const 'Sub' $P2971 = "133_1304456120.214" 
    $P2972 = $P2971."get_lexinfo"()
    $P2972."finish_static_lexpad"()
    nqp_get_sc_object $P2973, "1304456116.562", 68
    get_how $P2974, $P2973
    nqp_get_sc_object $P2975, "1304456116.562", 68
    $P2974."compose"($P2975)
    nqp_get_sc_object $P2976, "__6MODEL_CORE__", 0
    $P2977 = $P2976."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2977, cur_sc
    nqp_set_sc_object "1304456116.562", 77, $P2977
    nqp_get_sc_object $P2978, "1304456116.562", 77
    nqp_get_sc_object $P2979, "1304456116.562", 0
    get_who $P2980, $P2979
    set $P2980["NQPAttribute"], $P2978
    .const 'Sub' $P2981 = "10_1304456120.214" 
    $P2982 = $P2981."get_lexinfo"()
    nqp_get_sc_object $P2983, "1304456116.562", 77
    $P2982."set_static_lexpad_value"("NQPAttribute", $P2983)
    .const 'Sub' $P2984 = "10_1304456120.214" 
    $P2985 = $P2984."get_lexinfo"()
    $P2985."finish_static_lexpad"()
    nqp_get_sc_object $P2986, "1304456116.562", 77
    get_how $P2987, $P2986
    nqp_get_sc_object $P2988, "1304456116.562", 77
    nqp_get_sc_object $P2989, "__6MODEL_CORE__", 2
    $P2990 = $P2989."new"("$!name" :named("name"))
    $P2987."add_attribute"($P2988, $P2990)
    nqp_get_sc_object $P2991, "1304456116.562", 77
    get_how $P2992, $P2991
    nqp_get_sc_object $P2993, "1304456116.562", 77
    nqp_get_sc_object $P2994, "__6MODEL_CORE__", 2
    $P2995 = $P2994."new"("$!type" :named("name"))
    $P2992."add_attribute"($P2993, $P2995)
    nqp_get_sc_object $P2996, "1304456116.562", 77
    get_how $P2997, $P2996
    nqp_get_sc_object $P2998, "1304456116.562", 77
    nqp_get_sc_object $P2999, "__6MODEL_CORE__", 2
    $P3000 = $P2999."new"("$!box_target" :named("name"))
    $P2997."add_attribute"($P2998, $P3000)
    nqp_get_sc_object $P3001, "1304456116.562", 77
    get_how $P3002, $P3001
    nqp_get_sc_object $P3003, "1304456116.562", 77
    .const 'Sub' $P3004 = "145_1304456120.214" 
    $P3002."add_method"($P3003, "new", $P3004)
    nqp_get_sc_object $P3005, "1304456116.562", 77
    get_how $P3006, $P3005
    nqp_get_sc_object $P3007, "1304456116.562", 77
    .const 'Sub' $P3008 = "146_1304456120.214" 
    $P3006."add_method"($P3007, "BUILD", $P3008)
    nqp_get_sc_object $P3009, "1304456116.562", 77
    get_how $P3010, $P3009
    nqp_get_sc_object $P3011, "1304456116.562", 77
    .const 'Sub' $P3012 = "147_1304456120.214" 
    $P3010."add_method"($P3011, "name", $P3012)
    nqp_get_sc_object $P3013, "1304456116.562", 77
    get_how $P3014, $P3013
    nqp_get_sc_object $P3015, "1304456116.562", 77
    .const 'Sub' $P3016 = "148_1304456120.214" 
    $P3014."add_method"($P3015, "type", $P3016)
    nqp_get_sc_object $P3017, "1304456116.562", 77
    get_how $P3018, $P3017
    nqp_get_sc_object $P3019, "1304456116.562", 77
    .const 'Sub' $P3020 = "149_1304456120.214" 
    $P3018."add_method"($P3019, "box_target", $P3020)
    nqp_get_sc_object $P3021, "1304456116.562", 77
    get_how $P3022, $P3021
    nqp_get_sc_object $P3023, "1304456116.562", 77
    .const 'Sub' $P3024 = "150_1304456120.214" 
    $P3022."add_method"($P3023, "compose", $P3024)
    nqp_get_sc_object $P3025, "1304456116.562", 77
    get_how $P3026, $P3025
    nqp_get_sc_object $P3027, "1304456116.562", 77
    .const 'Sub' $P3028 = "155_1304456120.214" 
    $P3026."add_method"($P3027, "has_mutator", $P3028)
    .const 'Sub' $P3029 = "142_1304456120.214" 
    $P3030 = $P3029."get_lexinfo"()
    nqp_get_sc_object $P3031, "1304456116.562", 77
    $P3030."set_static_lexpad_value"("$?PACKAGE", $P3031)
    .const 'Sub' $P3032 = "142_1304456120.214" 
    $P3033 = $P3032."get_lexinfo"()
    $P3033."finish_static_lexpad"()
    .const 'Sub' $P3034 = "142_1304456120.214" 
    $P3035 = $P3034."get_lexinfo"()
    nqp_get_sc_object $P3036, "1304456116.562", 77
    $P3035."set_static_lexpad_value"("$?CLASS", $P3036)
    .const 'Sub' $P3037 = "142_1304456120.214" 
    $P3038 = $P3037."get_lexinfo"()
    $P3038."finish_static_lexpad"()
    nqp_get_sc_object $P3039, "1304456116.562", 77
    get_how $P3040, $P3039
    nqp_get_sc_object $P3041, "1304456116.562", 77
    $P3040."compose"($P3041)
    nqp_get_sc_object $P3042, "__6MODEL_CORE__", 0
    $P3043 = $P3042."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3043, cur_sc
    nqp_set_sc_object "1304456116.562", 85, $P3043
    nqp_get_sc_object $P3044, "1304456116.562", 85
    nqp_get_sc_object $P3045, "1304456116.562", 0
    get_who $P3046, $P3045
    set $P3046["NQPModuleHOW"], $P3044
    .const 'Sub' $P3047 = "10_1304456120.214" 
    $P3048 = $P3047."get_lexinfo"()
    nqp_get_sc_object $P3049, "1304456116.562", 85
    $P3048."set_static_lexpad_value"("NQPModuleHOW", $P3049)
    .const 'Sub' $P3050 = "10_1304456120.214" 
    $P3051 = $P3050."get_lexinfo"()
    $P3051."finish_static_lexpad"()
    nqp_get_sc_object $P3052, "1304456116.562", 85
    get_how $P3053, $P3052
    nqp_get_sc_object $P3054, "1304456116.562", 85
    nqp_get_sc_object $P3055, "__6MODEL_CORE__", 2
    $P3056 = $P3055."new"("$!name" :named("name"))
    $P3053."add_attribute"($P3054, $P3056)
    nqp_get_sc_object $P3057, "1304456116.562", 85
    get_how $P3058, $P3057
    nqp_get_sc_object $P3059, "1304456116.562", 85
    nqp_get_sc_object $P3060, "__6MODEL_CORE__", 2
    $P3061 = $P3060."new"("$!composed" :named("name"))
    $P3058."add_attribute"($P3059, $P3061)
    nqp_get_sc_object $P3062, "1304456116.562", 85
    get_how $P3063, $P3062
    nqp_get_sc_object $P3064, "1304456116.562", 85
    .const 'Sub' $P3065 = "157_1304456120.214" 
    $P3063."add_method"($P3064, "new", $P3065)
    nqp_get_sc_object $P3066, "1304456116.562", 85
    get_how $P3067, $P3066
    nqp_get_sc_object $P3068, "1304456116.562", 85
    .const 'Sub' $P3069 = "158_1304456120.214" 
    $P3067."add_method"($P3068, "BUILD", $P3069)
    nqp_get_sc_object $P3070, "1304456116.562", 85
    get_how $P3071, $P3070
    nqp_get_sc_object $P3072, "1304456116.562", 85
    .const 'Sub' $P3073 = "159_1304456120.214" 
    $P3071."add_method"($P3072, "new_type", $P3073)
    nqp_get_sc_object $P3074, "1304456116.562", 85
    get_how $P3075, $P3074
    nqp_get_sc_object $P3076, "1304456116.562", 85
    .const 'Sub' $P3077 = "160_1304456120.214" 
    $P3075."add_method"($P3076, "add_method", $P3077)
    nqp_get_sc_object $P3078, "1304456116.562", 85
    get_how $P3079, $P3078
    nqp_get_sc_object $P3080, "1304456116.562", 85
    .const 'Sub' $P3081 = "161_1304456120.214" 
    $P3079."add_method"($P3080, "add_multi_method", $P3081)
    nqp_get_sc_object $P3082, "1304456116.562", 85
    get_how $P3083, $P3082
    nqp_get_sc_object $P3084, "1304456116.562", 85
    .const 'Sub' $P3085 = "162_1304456120.214" 
    $P3083."add_method"($P3084, "add_attribute", $P3085)
    nqp_get_sc_object $P3086, "1304456116.562", 85
    get_how $P3087, $P3086
    nqp_get_sc_object $P3088, "1304456116.562", 85
    .const 'Sub' $P3089 = "163_1304456120.214" 
    $P3087."add_method"($P3088, "compose", $P3089)
    nqp_get_sc_object $P3090, "1304456116.562", 85
    get_how $P3091, $P3090
    nqp_get_sc_object $P3092, "1304456116.562", 85
    .const 'Sub' $P3093 = "164_1304456120.214" 
    $P3091."add_method"($P3092, "name", $P3093)
    .const 'Sub' $P3094 = "156_1304456120.214" 
    $P3095 = $P3094."get_lexinfo"()
    nqp_get_sc_object $P3096, "1304456116.562", 85
    $P3095."set_static_lexpad_value"("$?PACKAGE", $P3096)
    .const 'Sub' $P3097 = "156_1304456120.214" 
    $P3098 = $P3097."get_lexinfo"()
    $P3098."finish_static_lexpad"()
    .const 'Sub' $P3099 = "156_1304456120.214" 
    $P3100 = $P3099."get_lexinfo"()
    nqp_get_sc_object $P3101, "1304456116.562", 85
    $P3100."set_static_lexpad_value"("$?CLASS", $P3101)
    .const 'Sub' $P3102 = "156_1304456120.214" 
    $P3103 = $P3102."get_lexinfo"()
    $P3103."finish_static_lexpad"()
    nqp_get_sc_object $P3104, "1304456116.562", 85
    get_how $P3105, $P3104
    nqp_get_sc_object $P3106, "1304456116.562", 85
    $P3105."compose"($P3106)
    nqp_get_sc_object $P3107, "__6MODEL_CORE__", 0
    $P3108 = $P3107."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3108, cur_sc
    nqp_set_sc_object "1304456116.562", 94, $P3108
    .const 'Sub' $P3109 = "10_1304456120.214" 
    $P3110 = $P3109."get_lexinfo"()
    nqp_get_sc_object $P3111, "1304456116.562", 94
    $P3110."set_static_lexpad_value"("EXPORTHOW", $P3111)
    .const 'Sub' $P3112 = "10_1304456120.214" 
    $P3113 = $P3112."get_lexinfo"()
    $P3113."finish_static_lexpad"()
    .const 'Sub' $P3114 = "165_1304456120.214" 
    $P3115 = $P3114."get_lexinfo"()
    nqp_get_sc_object $P3116, "1304456116.562", 94
    $P3115."set_static_lexpad_value"("$?PACKAGE", $P3116)
    .const 'Sub' $P3117 = "165_1304456120.214" 
    $P3118 = $P3117."get_lexinfo"()
    $P3118."finish_static_lexpad"()
    .const 'Sub' $P3119 = "165_1304456120.214" 
    $P3120 = $P3119."get_lexinfo"()
    nqp_get_sc_object $P3121, "1304456116.562", 94
    $P3120."set_static_lexpad_value"("$?CLASS", $P3121)
    .const 'Sub' $P3122 = "165_1304456120.214" 
    $P3123 = $P3122."get_lexinfo"()
    $P3123."finish_static_lexpad"()
    nqp_get_sc_object $P3124, "1304456116.562", 94
    get_how $P3125, $P3124
    nqp_get_sc_object $P3126, "1304456116.562", 94
    $P3125."compose"($P3126)
  if_2384_end:
    nqp_get_sc_object $P3442, "1304456116.562", 0
    set_hll_global "GLOBAL", $P3442
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block24"  :subid("11_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 7
    .const 'Sub' $P28 = "12_1304456120.214" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 8
    .const 'Sub' $P28 = "12_1304456120.214" 
    newclosure $P246, $P28
.annotate 'line', 7
    .return ($P246)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("12_1304456120.214") :outer("11_1304456120.214")
    .param pmc param_31
    .param pmc param_32
    .param pmc param_33
.annotate 'line', 8
    .const 'Sub' $P173 = "18_1304456120.214" 
    capture_lex $P173
    .const 'Sub' $P131 = "17_1304456120.214" 
    capture_lex $P131
    .const 'Sub' $P117 = "16_1304456120.214" 
    capture_lex $P117
    .const 'Sub' $P44 = "13_1304456120.214" 
    capture_lex $P44
    new $P30, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P30, control_29
    push_eh $P30
    .lex "self", param_31
    .lex "$target", param_32
    .lex "@roles", param_33
.annotate 'line', 10
    $P34 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P34
.annotate 'line', 36
    $P35 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P35
.annotate 'line', 37
    $P36 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P36
.annotate 'line', 62
    $P37 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P37
.annotate 'line', 8
    find_lex $P38, "%meth_info"
    unless_null $P38, vivify_168
    $P38 = root_new ['parrot';'Hash']
  vivify_168:
.annotate 'line', 11
    find_lex $P40, "@roles"
    unless_null $P40, vivify_169
    $P40 = root_new ['parrot';'ResizablePMCArray']
  vivify_169:
    defined $I41, $P40
    unless $I41, for_undef_170
    iter $P39, $P40
    new $P105, 'ExceptionHandler'
    set_label $P105, loop104_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop104_test:
    unless $P39, loop104_done
    shift $P42, $P39
  loop104_redo:
    .const 'Sub' $P44 = "13_1304456120.214" 
    capture_lex $P44
    $P44($P42)
  loop104_next:
    goto loop104_test
  loop104_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop104_next
    eq $P106, .CONTROL_LOOP_REDO, loop104_redo
  loop104_done:
    pop_eh 
  for_undef_170:
    find_lex $P107, "%target_meth_info"
    unless_null $P107, vivify_194
    $P107 = root_new ['parrot';'Hash']
  vivify_194:
.annotate 'line', 37
    find_lex $P108, "$target"
    unless_null $P108, vivify_195
    new $P108, "Undef"
  vivify_195:
    get_how $P109, $P108
    find_lex $P110, "$target"
    unless_null $P110, vivify_196
    new $P110, "Undef"
  vivify_196:
    $P111 = $P109."methods"($P110)
    store_lex "@target_meths", $P111
.annotate 'line', 38
    find_lex $P113, "@target_meths"
    unless_null $P113, vivify_197
    $P113 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    defined $I114, $P113
    unless $I114, for_undef_198
    iter $P112, $P113
    new $P124, 'ExceptionHandler'
    set_label $P124, loop123_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop123_test:
    unless $P112, loop123_done
    shift $P115, $P112
  loop123_redo:
    .const 'Sub' $P117 = "16_1304456120.214" 
    capture_lex $P117
    $P117($P115)
  loop123_next:
    goto loop123_test
  loop123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop123_next
    eq $P125, .CONTROL_LOOP_REDO, loop123_redo
  loop123_done:
    pop_eh 
  for_undef_198:
.annotate 'line', 43
    find_lex $P127, "%meth_info"
    unless_null $P127, vivify_202
    $P127 = root_new ['parrot';'Hash']
  vivify_202:
    defined $I128, $P127
    unless $I128, for_undef_203
    iter $P126, $P127
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P126, loop164_done
    shift $P129, $P126
  loop164_redo:
    .const 'Sub' $P131 = "17_1304456120.214" 
    capture_lex $P131
    $P131($P129)
  loop164_next:
    goto loop164_test
  loop164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P166, exception, 'type'
    eq $P166, .CONTROL_LOOP_NEXT, loop164_next
    eq $P166, .CONTROL_LOOP_REDO, loop164_redo
  loop164_done:
    pop_eh 
  for_undef_203:
    find_lex $P167, "@all_roles"
    unless_null $P167, vivify_220
    $P167 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
.annotate 'line', 63
    find_lex $P169, "@roles"
    unless_null $P169, vivify_221
    $P169 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    defined $I170, $P169
    unless $I170, for_undef_222
    iter $P168, $P169
    new $P241, 'ExceptionHandler'
    set_label $P241, loop240_handler
    $P241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P241
  loop240_test:
    unless $P168, loop240_done
    shift $P171, $P168
  loop240_redo:
    .const 'Sub' $P173 = "18_1304456120.214" 
    capture_lex $P173
    $P173($P171)
  loop240_next:
    goto loop240_test
  loop240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P242, exception, 'type'
    eq $P242, .CONTROL_LOOP_NEXT, loop240_next
    eq $P242, .CONTROL_LOOP_REDO, loop240_redo
  loop240_done:
    pop_eh 
  for_undef_222:
.annotate 'line', 92
    new $P243, "Exception"
    set $P243['type'], .CONTROL_RETURN
    find_lex $P244, "@all_roles"
    unless_null $P244, vivify_244
    $P244 = root_new ['parrot';'ResizablePMCArray']
  vivify_244:
    setattribute $P243, 'payload', $P244
    throw $P243
.annotate 'line', 8
    .return ()
  control_29:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block43"  :anon :subid("13_1304456120.214") :outer("12_1304456120.214")
    .param pmc param_46
.annotate 'line', 11
    .const 'Sub' $P56 = "14_1304456120.214" 
    capture_lex $P56
.annotate 'line', 12
    $P45 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P45
    .lex "$_", param_46
    find_lex $P47, "$_"
    unless_null $P47, vivify_171
    new $P47, "Undef"
  vivify_171:
    get_how $P48, $P47
    find_lex $P49, "$_"
    unless_null $P49, vivify_172
    new $P49, "Undef"
  vivify_172:
    $P50 = $P48."methods"($P49)
    store_lex "@methods", $P50
.annotate 'line', 13
    find_lex $P52, "@methods"
    unless_null $P52, vivify_173
    $P52 = root_new ['parrot';'ResizablePMCArray']
  vivify_173:
    defined $I53, $P52
    unless $I53, for_undef_174
    iter $P51, $P52
    new $P102, 'ExceptionHandler'
    set_label $P102, loop101_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop101_test:
    unless $P51, loop101_done
    shift $P54, $P51
  loop101_redo:
    .const 'Sub' $P56 = "14_1304456120.214" 
    capture_lex $P56
    $P56($P54)
  loop101_next:
    goto loop101_test
  loop101_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop101_next
    eq $P103, .CONTROL_LOOP_REDO, loop101_redo
  loop101_done:
    pop_eh 
  for_undef_174:
.annotate 'line', 11
    .return ($P51)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block55"  :anon :subid("14_1304456120.214") :outer("13_1304456120.214")
    .param pmc param_61
.annotate 'line', 13
    .const 'Sub' $P84 = "15_1304456120.214" 
    capture_lex $P84
.annotate 'line', 14
    new $P57, "Undef"
    .lex "$name", $P57
.annotate 'line', 15
    new $P58, "Undef"
    .lex "$meth", $P58
.annotate 'line', 16
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P59
.annotate 'line', 23
    new $P60, "Undef"
    .lex "$found", $P60
    .lex "$_", param_61
.annotate 'line', 14
    find_lex $P62, "$_"
    unless_null $P62, vivify_175
    new $P62, "Undef"
  vivify_175:
    set $S63, $P62
    new $P64, 'String'
    set $P64, $S63
    store_lex "$name", $P64
.annotate 'line', 15
    find_lex $P65, "$_"
    unless_null $P65, vivify_176
    new $P65, "Undef"
  vivify_176:
    store_lex "$meth", $P65
    find_lex $P66, "@meth_list"
    unless_null $P66, vivify_177
    $P66 = root_new ['parrot';'ResizablePMCArray']
  vivify_177:
.annotate 'line', 17
    find_lex $P68, "$name"
    unless_null $P68, vivify_178
    new $P68, "Undef"
  vivify_178:
    find_lex $P69, "%meth_info"
    unless_null $P69, vivify_179
    $P69 = root_new ['parrot';'Hash']
  vivify_179:
    set $P70, $P69[$P68]
    unless_null $P70, vivify_180
    new $P70, "Undef"
  vivify_180:
    defined $I71, $P70
    if $I71, if_67
.annotate 'line', 21
    find_lex $P75, "@meth_list"
    unless_null $P75, vivify_181
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_181:
    find_lex $P76, "$name"
    unless_null $P76, vivify_182
    new $P76, "Undef"
  vivify_182:
    find_lex $P77, "%meth_info"
    unless_null $P77, vivify_183
    $P77 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P77
  vivify_183:
    set $P77[$P76], $P75
.annotate 'line', 20
    goto if_67_end
  if_67:
.annotate 'line', 18
    find_lex $P72, "$name"
    unless_null $P72, vivify_184
    new $P72, "Undef"
  vivify_184:
    find_lex $P73, "%meth_info"
    unless_null $P73, vivify_185
    $P73 = root_new ['parrot';'Hash']
  vivify_185:
    set $P74, $P73[$P72]
    unless_null $P74, vivify_186
    new $P74, "Undef"
  vivify_186:
    store_lex "@meth_list", $P74
  if_67_end:
.annotate 'line', 23
    new $P78, "Integer"
    assign $P78, 0
    store_lex "$found", $P78
.annotate 'line', 24
    find_lex $P80, "@meth_list"
    unless_null $P80, vivify_187
    $P80 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
    defined $I81, $P80
    unless $I81, for_undef_188
    iter $P79, $P80
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P79, loop92_done
    shift $P82, $P79
  loop92_redo:
    .const 'Sub' $P84 = "15_1304456120.214" 
    capture_lex $P84
    $P84($P82)
  loop92_next:
    goto loop92_test
  loop92_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, 'type'
    eq $P94, .CONTROL_LOOP_NEXT, loop92_next
    eq $P94, .CONTROL_LOOP_REDO, loop92_redo
  loop92_done:
    pop_eh 
  for_undef_188:
.annotate 'line', 29
    find_lex $P97, "$found"
    unless_null $P97, vivify_191
    new $P97, "Undef"
  vivify_191:
    unless $P97, unless_96
    set $P95, $P97
    goto unless_96_end
  unless_96:
.annotate 'line', 30
    find_lex $P98, "@meth_list"
    unless_null $P98, vivify_192
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    find_lex $P99, "$meth"
    unless_null $P99, vivify_193
    new $P99, "Undef"
  vivify_193:
    $P100 = $P98."push"($P99)
.annotate 'line', 29
    set $P95, $P100
  unless_96_end:
.annotate 'line', 13
    .return ($P95)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block83"  :anon :subid("15_1304456120.214") :outer("14_1304456120.214")
    .param pmc param_85
.annotate 'line', 24
    .lex "$_", param_85
.annotate 'line', 25
    find_lex $P88, "$meth"
    unless_null $P88, vivify_189
    new $P88, "Undef"
  vivify_189:
    find_lex $P89, "$_"
    unless_null $P89, vivify_190
    new $P89, "Undef"
  vivify_190:
    issame $I90, $P88, $P89
    if $I90, if_87
    new $P86, 'Integer'
    set $P86, $I90
    goto if_87_end
  if_87:
.annotate 'line', 26
    new $P91, "Integer"
    assign $P91, 1
    store_lex "$found", $P91
.annotate 'line', 25
    set $P86, $P91
  if_87_end:
.annotate 'line', 24
    .return ($P86)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block116"  :anon :subid("16_1304456120.214") :outer("12_1304456120.214")
    .param pmc param_118
.annotate 'line', 38
    .lex "$_", param_118
.annotate 'line', 39
    find_lex $P119, "$_"
    unless_null $P119, vivify_199
    new $P119, "Undef"
  vivify_199:
    find_lex $P120, "$_"
    unless_null $P120, vivify_200
    new $P120, "Undef"
  vivify_200:
    set $S121, $P120
    find_lex $P122, "%target_meth_info"
    unless_null $P122, vivify_201
    $P122 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P122
  vivify_201:
    set $P122[$S121], $P119
.annotate 'line', 38
    .return ($P119)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block130"  :anon :subid("17_1304456120.214") :outer("12_1304456120.214")
    .param pmc param_134
.annotate 'line', 44
    new $P132, "Undef"
    .lex "$name", $P132
.annotate 'line', 45
    $P133 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P133
    .lex "$_", param_134
.annotate 'line', 44
    find_lex $P135, "$_"
    unless_null $P135, vivify_204
    new $P135, "Undef"
  vivify_204:
    set $S136, $P135
    new $P137, 'String'
    set $P137, $S136
    store_lex "$name", $P137
.annotate 'line', 45
    find_lex $P138, "$name"
    unless_null $P138, vivify_205
    new $P138, "Undef"
  vivify_205:
    find_lex $P139, "%meth_info"
    unless_null $P139, vivify_206
    $P139 = root_new ['parrot';'Hash']
  vivify_206:
    set $P140, $P139[$P138]
    unless_null $P140, vivify_207
    new $P140, "Undef"
  vivify_207:
    store_lex "@add_meths", $P140
.annotate 'line', 49
    find_lex $P143, "$name"
    unless_null $P143, vivify_208
    new $P143, "Undef"
  vivify_208:
    find_lex $P144, "%target_meth_info"
    unless_null $P144, vivify_209
    $P144 = root_new ['parrot';'Hash']
  vivify_209:
    set $P145, $P144[$P143]
    unless_null $P145, vivify_210
    new $P145, "Undef"
  vivify_210:
    defined $I146, $P145
    unless $I146, unless_142
    new $P141, 'Integer'
    set $P141, $I146
    goto unless_142_end
  unless_142:
.annotate 'line', 51
    find_lex $P149, "@add_meths"
    unless_null $P149, vivify_211
    $P149 = root_new ['parrot';'ResizablePMCArray']
  vivify_211:
    set $N150, $P149
    iseq $I151, $N150, 1.0
    if $I151, if_148
.annotate 'line', 56
    find_lex $P159, "$target"
    unless_null $P159, vivify_212
    new $P159, "Undef"
  vivify_212:
    get_how $P160, $P159
    find_lex $P161, "$target"
    unless_null $P161, vivify_213
    new $P161, "Undef"
  vivify_213:
    find_lex $P162, "$name"
    unless_null $P162, vivify_214
    new $P162, "Undef"
  vivify_214:
    $P163 = $P160."add_collision"($P161, $P162)
.annotate 'line', 54
    set $P147, $P163
.annotate 'line', 51
    goto if_148_end
  if_148:
.annotate 'line', 52
    find_lex $P152, "$target"
    unless_null $P152, vivify_215
    new $P152, "Undef"
  vivify_215:
    get_how $P153, $P152
    find_lex $P154, "$target"
    unless_null $P154, vivify_216
    new $P154, "Undef"
  vivify_216:
    find_lex $P155, "$name"
    unless_null $P155, vivify_217
    new $P155, "Undef"
  vivify_217:
    find_lex $P156, "@add_meths"
    unless_null $P156, vivify_218
    $P156 = root_new ['parrot';'ResizablePMCArray']
  vivify_218:
    set $P157, $P156[0]
    unless_null $P157, vivify_219
    new $P157, "Undef"
  vivify_219:
    $P158 = $P153."add_method"($P154, $P155, $P157)
.annotate 'line', 51
    set $P147, $P158
  if_148_end:
.annotate 'line', 49
    set $P141, $P147
  unless_142_end:
.annotate 'line', 43
    .return ($P141)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block172"  :anon :subid("18_1304456120.214") :outer("12_1304456120.214")
    .param pmc param_176
.annotate 'line', 63
    .const 'Sub' $P187 = "19_1304456120.214" 
    capture_lex $P187
.annotate 'line', 64
    new $P174, "Undef"
    .lex "$how", $P174
.annotate 'line', 67
    $P175 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P175
    .lex "$_", param_176
.annotate 'line', 64
    find_lex $P177, "$_"
    unless_null $P177, vivify_223
    new $P177, "Undef"
  vivify_223:
    get_how $P178, $P177
    store_lex "$how", $P178
.annotate 'line', 67
    find_lex $P179, "$how"
    unless_null $P179, vivify_224
    new $P179, "Undef"
  vivify_224:
    find_lex $P180, "$_"
    unless_null $P180, vivify_225
    new $P180, "Undef"
  vivify_225:
    $P181 = $P179."attributes"($P180)
    store_lex "@attributes", $P181
.annotate 'line', 68
    find_lex $P183, "@attributes"
    unless_null $P183, vivify_226
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    defined $I184, $P183
    unless $I184, for_undef_227
    iter $P182, $P183
    new $P235, 'ExceptionHandler'
    set_label $P235, loop234_handler
    $P235."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P235
  loop234_test:
    unless $P182, loop234_done
    shift $P185, $P182
  loop234_redo:
    .const 'Sub' $P187 = "19_1304456120.214" 
    capture_lex $P187
    $P187($P185)
  loop234_next:
    goto loop234_test
  loop234_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P236, exception, 'type'
    eq $P236, .CONTROL_LOOP_NEXT, loop234_next
    eq $P236, .CONTROL_LOOP_REDO, loop234_redo
  loop234_done:
    pop_eh 
  for_undef_227:
.annotate 'line', 89
    find_lex $P237, "@all_roles"
    unless_null $P237, vivify_242
    $P237 = root_new ['parrot';'ResizablePMCArray']
  vivify_242:
    find_lex $P238, "$_"
    unless_null $P238, vivify_243
    new $P238, "Undef"
  vivify_243:
    $P239 = $P237."push"($P238)
.annotate 'line', 63
    .return ($P239)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block186"  :anon :subid("19_1304456120.214") :outer("18_1304456120.214")
    .param pmc param_191
.annotate 'line', 68
    .const 'Sub' $P203 = "20_1304456120.214" 
    capture_lex $P203
.annotate 'line', 69
    new $P188, "Undef"
    .lex "$add_attr", $P188
.annotate 'line', 70
    new $P189, "Undef"
    .lex "$skip", $P189
.annotate 'line', 71
    $P190 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P190
    .lex "$_", param_191
.annotate 'line', 69
    find_lex $P192, "$_"
    unless_null $P192, vivify_228
    new $P192, "Undef"
  vivify_228:
    store_lex "$add_attr", $P192
.annotate 'line', 70
    new $P193, "Integer"
    assign $P193, 0
    store_lex "$skip", $P193
.annotate 'line', 71
    find_lex $P194, "$target"
    unless_null $P194, vivify_229
    new $P194, "Undef"
  vivify_229:
    get_how $P195, $P194
    find_lex $P196, "$target"
    unless_null $P196, vivify_230
    new $P196, "Undef"
  vivify_230:
    $P197 = $P195."attributes"($P196)
    store_lex "@cur_attrs", $P197
.annotate 'line', 72
    find_lex $P199, "@cur_attrs"
    unless_null $P199, vivify_231
    $P199 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    defined $I200, $P199
    unless $I200, for_undef_232
    iter $P198, $P199
    new $P224, 'ExceptionHandler'
    set_label $P224, loop223_handler
    $P224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P224
  loop223_test:
    unless $P198, loop223_done
    shift $P201, $P198
  loop223_redo:
    .const 'Sub' $P203 = "20_1304456120.214" 
    capture_lex $P203
    $P203($P201)
  loop223_next:
    goto loop223_test
  loop223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P225, exception, 'type'
    eq $P225, .CONTROL_LOOP_NEXT, loop223_next
    eq $P225, .CONTROL_LOOP_REDO, loop223_redo
  loop223_done:
    pop_eh 
  for_undef_232:
.annotate 'line', 82
    find_lex $P228, "$skip"
    unless_null $P228, vivify_238
    new $P228, "Undef"
  vivify_238:
    unless $P228, unless_227
    set $P226, $P228
    goto unless_227_end
  unless_227:
.annotate 'line', 83
    find_lex $P229, "$target"
    unless_null $P229, vivify_239
    new $P229, "Undef"
  vivify_239:
    get_how $P230, $P229
    find_lex $P231, "$target"
    unless_null $P231, vivify_240
    new $P231, "Undef"
  vivify_240:
    find_lex $P232, "$add_attr"
    unless_null $P232, vivify_241
    new $P232, "Undef"
  vivify_241:
    $P233 = $P230."add_attribute"($P231, $P232)
.annotate 'line', 82
    set $P226, $P233
  unless_227_end:
.annotate 'line', 68
    .return ($P226)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block202"  :anon :subid("20_1304456120.214") :outer("19_1304456120.214")
    .param pmc param_204
.annotate 'line', 72
    .lex "$_", param_204
.annotate 'line', 73
    find_lex $P207, "$_"
    unless_null $P207, vivify_233
    new $P207, "Undef"
  vivify_233:
    find_lex $P208, "$add_attr"
    unless_null $P208, vivify_234
    new $P208, "Undef"
  vivify_234:
    issame $I209, $P207, $P208
    if $I209, if_206
.annotate 'line', 77
    find_lex $P213, "$_"
    unless_null $P213, vivify_235
    new $P213, "Undef"
  vivify_235:
    $S214 = $P213."name"()
    find_lex $P215, "$add_attr"
    unless_null $P215, vivify_236
    new $P215, "Undef"
  vivify_236:
    $S216 = $P215."name"()
    iseq $I217, $S214, $S216
    if $I217, if_212
    new $P211, 'Integer'
    set $P211, $I217
    goto if_212_end
  if_212:
.annotate 'line', 78
    new $P218, "String"
    assign $P218, "Attribute '"
    find_lex $P219, "$_"
    unless_null $P219, vivify_237
    new $P219, "Undef"
  vivify_237:
    $S220 = $P219."name"()
    concat $P221, $P218, $S220
    concat $P222, $P221, "' conflicts in role composition"
    die $P222
  if_212_end:
.annotate 'line', 76
    set $P205, $P211
.annotate 'line', 73
    goto if_206_end
  if_206:
.annotate 'line', 74
    new $P210, "Integer"
    assign $P210, 1
    store_lex "$skip", $P210
.annotate 'line', 73
    set $P205, $P210
  if_206_end:
.annotate 'line', 72
    .return ($P205)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block247"  :subid("21_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 99
    .const 'Sub' $P500 = "41_1304456120.214" 
    capture_lex $P500
    .const 'Sub' $P494 = "40_1304456120.214" 
    capture_lex $P494
    .const 'Sub' $P470 = "38_1304456120.214" 
    capture_lex $P470
    .const 'Sub' $P464 = "37_1304456120.214" 
    capture_lex $P464
    .const 'Sub' $P458 = "36_1304456120.214" 
    capture_lex $P458
    .const 'Sub' $P452 = "35_1304456120.214" 
    capture_lex $P452
    .const 'Sub' $P428 = "33_1304456120.214" 
    capture_lex $P428
    .const 'Sub' $P379 = "31_1304456120.214" 
    capture_lex $P379
    .const 'Sub' $P366 = "30_1304456120.214" 
    capture_lex $P366
    .const 'Sub' $P353 = "29_1304456120.214" 
    capture_lex $P353
    .const 'Sub' $P349 = "28_1304456120.214" 
    capture_lex $P349
    .const 'Sub' $P328 = "27_1304456120.214" 
    capture_lex $P328
    .const 'Sub' $P307 = "26_1304456120.214" 
    capture_lex $P307
    .const 'Sub' $P288 = "25_1304456120.214" 
    capture_lex $P288
    .const 'Sub' $P272 = "24_1304456120.214" 
    capture_lex $P272
    .const 'Sub' $P262 = "23_1304456120.214" 
    capture_lex $P262
    .const 'Sub' $P251 = "22_1304456120.214" 
    capture_lex $P251
    .lex "$?PACKAGE", $P249
    .lex "$?CLASS", $P250
.annotate 'line', 238
    .const 'Sub' $P500 = "41_1304456120.214" 
    newclosure $P506, $P500
.annotate 'line', 99
    .return ($P506)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("22_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_252
    .param pmc param_253 :named("name")
    .param pmc param_254 :named("instance_of")
.annotate 'line', 131
    .lex "self", param_252
    .lex "$name", param_253
    .lex "$instance_of", param_254
.annotate 'line', 132
    new $P255, "Undef"
    .lex "$obj", $P255
    find_lex $P256, "self"
    repr_instance_of $P257, $P256
    store_lex "$obj", $P257
.annotate 'line', 133
    find_lex $P258, "$obj"
    unless_null $P258, vivify_245
    new $P258, "Undef"
  vivify_245:
    find_lex $P259, "$name"
    unless_null $P259, vivify_246
    new $P259, "Undef"
  vivify_246:
    find_lex $P260, "$instance_of"
    unless_null $P260, vivify_247
    new $P260, "Undef"
  vivify_247:
    $P258."BUILD"($P259 :named("name"), $P260 :named("instance_of"))
    find_lex $P261, "$obj"
    unless_null $P261, vivify_248
    new $P261, "Undef"
  vivify_248:
.annotate 'line', 131
    .return ($P261)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("23_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_263
    .param pmc param_264 :named("name")
    .param pmc param_265 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_263
    .lex "$name", param_264
    .lex "$instance_of", param_265
.annotate 'line', 138
    find_lex $P266, "$name"
    unless_null $P266, vivify_249
    new $P266, "Undef"
  vivify_249:
    find_lex $P267, "self"
    find_lex $P268, "$?CLASS"
    setattribute $P267, $P268, "$!name", $P266
.annotate 'line', 139
    find_lex $P269, "$instance_of"
    unless_null $P269, vivify_250
    new $P269, "Undef"
  vivify_250:
    find_lex $P270, "self"
    find_lex $P271, "$?CLASS"
    setattribute $P270, $P271, "$!instance_of", $P269
.annotate 'line', 137
    .return ($P269)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("24_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_273
    .param pmc param_278 :named("instance_of")
    .param pmc param_274 :optional :named("name")
    .param int has_param_274 :opt_flag
    .param pmc param_276 :optional :named("repr")
    .param int has_param_276 :opt_flag
.annotate 'line', 144
    .lex "self", param_273
    if has_param_274, optparam_251
    new $P275, "String"
    assign $P275, "<anon>"
    set param_274, $P275
  optparam_251:
    .lex "$name", param_274
    if has_param_276, optparam_252
    new $P277, "String"
    assign $P277, "P6opaque"
    set param_276, $P277
  optparam_252:
    .lex "$repr", param_276
    .lex "$instance_of", param_278
.annotate 'line', 145
    new $P279, "Undef"
    .lex "$metarole", $P279
    find_lex $P280, "self"
    find_lex $P281, "$name"
    unless_null $P281, vivify_253
    new $P281, "Undef"
  vivify_253:
    find_lex $P282, "$instance_of"
    unless_null $P282, vivify_254
    new $P282, "Undef"
  vivify_254:
    $P283 = $P280."new"($P281 :named("name"), $P282 :named("instance_of"))
    store_lex "$metarole", $P283
.annotate 'line', 146
    find_lex $P284, "$metarole"
    unless_null $P284, vivify_255
    new $P284, "Undef"
  vivify_255:
    find_lex $P285, "$repr"
    unless_null $P285, vivify_256
    new $P285, "Undef"
  vivify_256:
    set $S286, $P285
    repr_type_object_for $P287, $P284, $S286
.annotate 'line', 144
    .return ($P287)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("25_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_289
    .param pmc param_290
    .param pmc param_291
    .param pmc param_292
.annotate 'line', 149
    .lex "self", param_289
    .lex "$obj", param_290
    .lex "$name", param_291
    .lex "$code_obj", param_292
.annotate 'line', 150
    find_lex $P294, "$name"
    unless_null $P294, vivify_257
    new $P294, "Undef"
  vivify_257:
    find_lex $P295, "self"
    find_lex $P296, "$?CLASS"
    getattribute $P297, $P295, $P296, "%!methods"
    unless_null $P297, vivify_258
    $P297 = root_new ['parrot';'Hash']
  vivify_258:
    set $P298, $P297[$P294]
    unless_null $P298, vivify_259
    new $P298, "Undef"
  vivify_259:
    unless $P298, if_293_end
.annotate 'line', 151
    new $P299, "String"
    assign $P299, "This role already has a method named "
    find_lex $P300, "$name"
    unless_null $P300, vivify_260
    new $P300, "Undef"
  vivify_260:
    concat $P301, $P299, $P300
    die $P301
  if_293_end:
.annotate 'line', 153
    find_lex $P302, "$code_obj"
    unless_null $P302, vivify_261
    new $P302, "Undef"
  vivify_261:
    find_lex $P303, "$name"
    unless_null $P303, vivify_262
    new $P303, "Undef"
  vivify_262:
    find_lex $P304, "self"
    find_lex $P305, "$?CLASS"
    getattribute $P306, $P304, $P305, "%!methods"
    unless_null $P306, vivify_263
    $P306 = root_new ['parrot';'Hash']
    setattribute $P304, $P305, "%!methods", $P306
  vivify_263:
    set $P306[$P303], $P302
.annotate 'line', 149
    .return ($P302)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("26_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_308
    .param pmc param_309
    .param pmc param_310
    .param pmc param_311
.annotate 'line', 156
    .lex "self", param_308
    .lex "$obj", param_309
    .lex "$name", param_310
    .lex "$code_obj", param_311
.annotate 'line', 157
    $P312 = root_new ['parrot';'Hash']
    .lex "%todo", $P312
.annotate 'line', 156
    find_lex $P313, "%todo"
    unless_null $P313, vivify_264
    $P313 = root_new ['parrot';'Hash']
  vivify_264:
.annotate 'line', 158
    find_lex $P314, "$name"
    unless_null $P314, vivify_265
    new $P314, "Undef"
  vivify_265:
    find_lex $P315, "%todo"
    unless_null $P315, vivify_266
    $P315 = root_new ['parrot';'Hash']
    store_lex "%todo", $P315
  vivify_266:
    set $P315["name"], $P314
.annotate 'line', 159
    find_lex $P316, "$code_obj"
    unless_null $P316, vivify_267
    new $P316, "Undef"
  vivify_267:
    find_lex $P317, "%todo"
    unless_null $P317, vivify_268
    $P317 = root_new ['parrot';'Hash']
    store_lex "%todo", $P317
  vivify_268:
    set $P317["code"], $P316
.annotate 'line', 160
    find_lex $P318, "%todo"
    unless_null $P318, vivify_269
    $P318 = root_new ['parrot';'Hash']
  vivify_269:
    find_lex $P319, "self"
    find_lex $P320, "$?CLASS"
    getattribute $P321, $P319, $P320, "@!multi_methods_to_incorporate"
    unless_null $P321, vivify_270
    $P321 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $N322, $P321
    set $I323, $N322
    find_lex $P324, "self"
    find_lex $P325, "$?CLASS"
    getattribute $P326, $P324, $P325, "@!multi_methods_to_incorporate"
    unless_null $P326, vivify_271
    $P326 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P324, $P325, "@!multi_methods_to_incorporate", $P326
  vivify_271:
    set $P326[$I323], $P318
    find_lex $P327, "$code_obj"
    unless_null $P327, vivify_272
    new $P327, "Undef"
  vivify_272:
.annotate 'line', 156
    .return ($P327)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("27_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_329
    .param pmc param_330
    .param pmc param_331
.annotate 'line', 164
    .lex "self", param_329
    .lex "$obj", param_330
    .lex "$meta_attr", param_331
.annotate 'line', 165
    new $P332, "Undef"
    .lex "$name", $P332
    find_lex $P333, "$meta_attr"
    unless_null $P333, vivify_273
    new $P333, "Undef"
  vivify_273:
    $P334 = $P333."name"()
    store_lex "$name", $P334
.annotate 'line', 166
    find_lex $P336, "$name"
    unless_null $P336, vivify_274
    new $P336, "Undef"
  vivify_274:
    find_lex $P337, "self"
    find_lex $P338, "$?CLASS"
    getattribute $P339, $P337, $P338, "%!attributes"
    unless_null $P339, vivify_275
    $P339 = root_new ['parrot';'Hash']
  vivify_275:
    set $P340, $P339[$P336]
    unless_null $P340, vivify_276
    new $P340, "Undef"
  vivify_276:
    unless $P340, if_335_end
.annotate 'line', 167
    new $P341, "String"
    assign $P341, "This role already has an attribute named "
    find_lex $P342, "$name"
    unless_null $P342, vivify_277
    new $P342, "Undef"
  vivify_277:
    concat $P343, $P341, $P342
    die $P343
  if_335_end:
.annotate 'line', 169
    find_lex $P344, "$meta_attr"
    unless_null $P344, vivify_278
    new $P344, "Undef"
  vivify_278:
    find_lex $P345, "$name"
    unless_null $P345, vivify_279
    new $P345, "Undef"
  vivify_279:
    find_lex $P346, "self"
    find_lex $P347, "$?CLASS"
    getattribute $P348, $P346, $P347, "%!attributes"
    unless_null $P348, vivify_280
    $P348 = root_new ['parrot';'Hash']
    setattribute $P346, $P347, "%!attributes", $P348
  vivify_280:
    set $P348[$P345], $P344
.annotate 'line', 164
    .return ($P344)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("28_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_350
    .param pmc param_351
    .param pmc param_352
.annotate 'line', 172
    .lex "self", param_350
    .lex "$obj", param_351
    .lex "$parent", param_352
.annotate 'line', 173
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("29_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356
.annotate 'line', 176
    .lex "self", param_354
    .lex "$obj", param_355
    .lex "$role", param_356
.annotate 'line', 177
    find_lex $P357, "$role"
    unless_null $P357, vivify_281
    new $P357, "Undef"
  vivify_281:
    find_lex $P358, "self"
    find_lex $P359, "$?CLASS"
    getattribute $P360, $P358, $P359, "@!roles"
    unless_null $P360, vivify_282
    $P360 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    set $N361, $P360
    set $I362, $N361
    find_lex $P363, "self"
    find_lex $P364, "$?CLASS"
    getattribute $P365, $P363, $P364, "@!roles"
    unless_null $P365, vivify_283
    $P365 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P363, $P364, "@!roles", $P365
  vivify_283:
    set $P365[$I362], $P357
.annotate 'line', 176
    .return ($P357)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("30_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_367
    .param pmc param_368
    .param pmc param_369
.annotate 'line', 180
    .lex "self", param_367
    .lex "$obj", param_368
    .lex "$colliding_name", param_369
.annotate 'line', 181
    find_lex $P370, "$colliding_name"
    unless_null $P370, vivify_284
    new $P370, "Undef"
  vivify_284:
    find_lex $P371, "self"
    find_lex $P372, "$?CLASS"
    getattribute $P373, $P371, $P372, "@!collisions"
    unless_null $P373, vivify_285
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_285:
    set $N374, $P373
    set $I375, $N374
    find_lex $P376, "self"
    find_lex $P377, "$?CLASS"
    getattribute $P378, $P376, $P377, "@!collisions"
    unless_null $P378, vivify_286
    $P378 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P376, $P377, "@!collisions", $P378
  vivify_286:
    set $P378[$I375], $P370
.annotate 'line', 180
    .return ($P370)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("31_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_380
    .param pmc param_381
.annotate 'line', 185
    .const 'Sub' $P393 = "32_1304456120.214" 
    capture_lex $P393
    .lex "self", param_380
    .lex "$obj", param_381
.annotate 'line', 188
    find_lex $P383, "self"
    find_lex $P384, "$?CLASS"
    getattribute $P385, $P383, $P384, "@!roles"
    unless_null $P385, vivify_287
    $P385 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    unless $P385, if_382_end
.annotate 'line', 189
    find_lex $P387, "self"
    find_lex $P388, "$?CLASS"
    getattribute $P389, $P387, $P388, "@!roles"
    unless_null $P389, vivify_288
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    defined $I390, $P389
    unless $I390, for_undef_289
    iter $P386, $P389
    new $P417, 'ExceptionHandler'
    set_label $P417, loop416_handler
    $P417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P417
  loop416_test:
    unless $P386, loop416_done
    shift $P391, $P386
  loop416_redo:
    .const 'Sub' $P393 = "32_1304456120.214" 
    capture_lex $P393
    $P393($P391)
  loop416_next:
    goto loop416_test
  loop416_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P418, exception, 'type'
    eq $P418, .CONTROL_LOOP_NEXT, loop416_next
    eq $P418, .CONTROL_LOOP_REDO, loop416_redo
  loop416_done:
    pop_eh 
  for_undef_289:
.annotate 'line', 193
    find_lex $P419, "RoleToRoleApplier"
    find_lex $P420, "$obj"
    unless_null $P420, vivify_297
    new $P420, "Undef"
  vivify_297:
    find_lex $P421, "self"
    find_lex $P422, "$?CLASS"
    getattribute $P423, $P421, $P422, "@!roles"
    unless_null $P423, vivify_298
    $P423 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
    $P419."apply"($P420, $P423)
  if_382_end:
.annotate 'line', 197
    new $P424, "Integer"
    assign $P424, 1
    find_lex $P425, "self"
    find_lex $P426, "$?CLASS"
    setattribute $P425, $P426, "$!composed", $P424
    find_lex $P427, "$obj"
    unless_null $P427, vivify_299
    new $P427, "Undef"
  vivify_299:
.annotate 'line', 185
    .return ($P427)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block392"  :anon :subid("32_1304456120.214") :outer("31_1304456120.214")
    .param pmc param_394
.annotate 'line', 189
    .lex "$_", param_394
.annotate 'line', 190
    find_lex $P395, "$_"
    unless_null $P395, vivify_290
    new $P395, "Undef"
  vivify_290:
    find_lex $P396, "self"
    find_lex $P397, "$?CLASS"
    getattribute $P398, $P396, $P397, "@!done"
    unless_null $P398, vivify_291
    $P398 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    set $N399, $P398
    set $I400, $N399
    find_lex $P401, "self"
    find_lex $P402, "$?CLASS"
    getattribute $P403, $P401, $P402, "@!done"
    unless_null $P403, vivify_292
    $P403 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P401, $P402, "@!done", $P403
  vivify_292:
    set $P403[$I400], $P395
.annotate 'line', 191
    find_lex $P404, "$_"
    unless_null $P404, vivify_293
    new $P404, "Undef"
  vivify_293:
    get_how $P405, $P404
    find_lex $P406, "$_"
    unless_null $P406, vivify_294
    new $P406, "Undef"
  vivify_294:
    $P407 = $P405."instance_of"($P406)
    find_lex $P408, "self"
    find_lex $P409, "$?CLASS"
    getattribute $P410, $P408, $P409, "@!done"
    unless_null $P410, vivify_295
    $P410 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N411, $P410
    set $I412, $N411
    find_lex $P413, "self"
    find_lex $P414, "$?CLASS"
    getattribute $P415, $P413, $P414, "@!done"
    unless_null $P415, vivify_296
    $P415 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P413, $P414, "@!done", $P415
  vivify_296:
    set $P415[$I412], $P407
.annotate 'line', 189
    .return ($P407)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("33_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_429
    .param pmc param_430
    .param pmc param_431 :optional :named("local")
    .param int has_param_431 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P442 = "34_1304456120.214" 
    capture_lex $P442
    .lex "self", param_429
    .lex "$obj", param_430
    if has_param_431, optparam_300
    new $P432, "Undef"
    set param_431, $P432
  optparam_300:
    .lex "$local", param_431
.annotate 'line', 207
    $P433 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P433
.annotate 'line', 206
    find_lex $P434, "@meths"
    unless_null $P434, vivify_301
    $P434 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
.annotate 'line', 208
    find_lex $P436, "self"
    find_lex $P437, "$?CLASS"
    getattribute $P438, $P436, $P437, "%!methods"
    unless_null $P438, vivify_302
    $P438 = root_new ['parrot';'Hash']
  vivify_302:
    defined $I439, $P438
    unless $I439, for_undef_303
    iter $P435, $P438
    new $P449, 'ExceptionHandler'
    set_label $P449, loop448_handler
    $P449."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P449
  loop448_test:
    unless $P435, loop448_done
    shift $P440, $P435
  loop448_redo:
    .const 'Sub' $P442 = "34_1304456120.214" 
    capture_lex $P442
    $P442($P440)
  loop448_next:
    goto loop448_test
  loop448_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P450, exception, 'type'
    eq $P450, .CONTROL_LOOP_NEXT, loop448_next
    eq $P450, .CONTROL_LOOP_REDO, loop448_redo
  loop448_done:
    pop_eh 
  for_undef_303:
    find_lex $P451, "@meths"
    unless_null $P451, vivify_306
    $P451 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
.annotate 'line', 206
    .return ($P451)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block441"  :anon :subid("34_1304456120.214") :outer("33_1304456120.214")
    .param pmc param_443
.annotate 'line', 208
    .lex "$_", param_443
.annotate 'line', 209
    find_lex $P444, "@meths"
    unless_null $P444, vivify_304
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_304:
    find_lex $P445, "$_"
    unless_null $P445, vivify_305
    new $P445, "Undef"
  vivify_305:
    $P446 = $P445."value"()
    $P447 = $P444."push"($P446)
.annotate 'line', 208
    .return ($P447)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("35_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_453
    .param pmc param_454
.annotate 'line', 214
    .lex "self", param_453
    .lex "$obj", param_454
    find_lex $P455, "self"
    find_lex $P456, "$?CLASS"
    getattribute $P457, $P455, $P456, "%!methods"
    unless_null $P457, vivify_307
    $P457 = root_new ['parrot';'Hash']
  vivify_307:
    .return ($P457)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("36_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_459
    .param pmc param_460
.annotate 'line', 218
    .lex "self", param_459
    .lex "$obj", param_460
    find_lex $P461, "self"
    find_lex $P462, "$?CLASS"
    getattribute $P463, $P461, $P462, "@!collisions"
    unless_null $P463, vivify_308
    $P463 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    .return ($P463)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("37_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_465
    .param pmc param_466
.annotate 'line', 222
    .lex "self", param_465
    .lex "$obj", param_466
    find_lex $P467, "self"
    find_lex $P468, "$?CLASS"
    getattribute $P469, $P467, $P468, "$!name"
    unless_null $P469, vivify_309
    new $P469, "Undef"
  vivify_309:
    .return ($P469)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("38_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_471
    .param pmc param_472
    .param pmc param_473 :optional :named("local")
    .param int has_param_473 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P484 = "39_1304456120.214" 
    capture_lex $P484
    .lex "self", param_471
    .lex "$obj", param_472
    if has_param_473, optparam_310
    new $P474, "Undef"
    set param_473, $P474
  optparam_310:
    .lex "$local", param_473
.annotate 'line', 227
    $P475 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P475
.annotate 'line', 226
    find_lex $P476, "@attrs"
    unless_null $P476, vivify_311
    $P476 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
.annotate 'line', 228
    find_lex $P478, "self"
    find_lex $P479, "$?CLASS"
    getattribute $P480, $P478, $P479, "%!attributes"
    unless_null $P480, vivify_312
    $P480 = root_new ['parrot';'Hash']
  vivify_312:
    defined $I481, $P480
    unless $I481, for_undef_313
    iter $P477, $P480
    new $P491, 'ExceptionHandler'
    set_label $P491, loop490_handler
    $P491."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P491
  loop490_test:
    unless $P477, loop490_done
    shift $P482, $P477
  loop490_redo:
    .const 'Sub' $P484 = "39_1304456120.214" 
    capture_lex $P484
    $P484($P482)
  loop490_next:
    goto loop490_test
  loop490_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P492, exception, 'type'
    eq $P492, .CONTROL_LOOP_NEXT, loop490_next
    eq $P492, .CONTROL_LOOP_REDO, loop490_redo
  loop490_done:
    pop_eh 
  for_undef_313:
    find_lex $P493, "@attrs"
    unless_null $P493, vivify_316
    $P493 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 226
    .return ($P493)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block483"  :anon :subid("39_1304456120.214") :outer("38_1304456120.214")
    .param pmc param_485
.annotate 'line', 228
    .lex "$_", param_485
.annotate 'line', 229
    find_lex $P486, "@attrs"
    unless_null $P486, vivify_314
    $P486 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P487, "$_"
    unless_null $P487, vivify_315
    new $P487, "Undef"
  vivify_315:
    $P488 = $P487."value"()
    $P489 = $P486."push"($P488)
.annotate 'line', 228
    .return ($P489)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("40_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_495
    .param pmc param_496
.annotate 'line', 234
    .lex "self", param_495
    .lex "$obj", param_496
    find_lex $P497, "self"
    find_lex $P498, "$?CLASS"
    getattribute $P499, $P497, $P498, "@!roles"
    unless_null $P499, vivify_317
    $P499 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    .return ($P499)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("41_1304456120.214") :outer("21_1304456120.214")
    .param pmc param_501
    .param pmc param_502
.annotate 'line', 238
    .lex "self", param_501
    .lex "$obj", param_502
    find_lex $P503, "self"
    find_lex $P504, "$?CLASS"
    getattribute $P505, $P503, $P504, "$!instance_of"
    unless_null $P505, vivify_318
    new $P505, "Undef"
  vivify_318:
    .return ($P505)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block507"  :subid("42_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 244
    .const 'Sub' $P581 = "47_1304456120.214" 
    capture_lex $P581
    .const 'Sub' $P544 = "45_1304456120.214" 
    capture_lex $P544
    .const 'Sub' $P509 = "43_1304456120.214" 
    capture_lex $P509
.annotate 'line', 246
    .const 'Sub' $P509 = "43_1304456120.214" 
    newclosure $P543, $P509
    .lex "has_method", $P543
.annotate 'line', 254
    .const 'Sub' $P544 = "45_1304456120.214" 
    newclosure $P576, $P544
    .lex "has_attribute", $P576
.annotate 'line', 244
    .lex "$?PACKAGE", $P577
    .lex "$?CLASS", $P578
    find_lex $P579, "has_method"
    find_lex $P580, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P581 = "47_1304456120.214" 
    newclosure $P719, $P581
.annotate 'line', 244
    .return ($P719)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1304456120.214") :outer("42_1304456120.214")
    .param pmc param_512
    .param pmc param_513
    .param pmc param_514
.annotate 'line', 246
    .const 'Sub' $P526 = "44_1304456120.214" 
    capture_lex $P526
    new $P511, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P511, control_510
    push_eh $P511
    .lex "$target", param_512
    .lex "$name", param_513
    .lex "$local", param_514
.annotate 'line', 247
    $P515 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P515
    find_lex $P516, "$target"
    unless_null $P516, vivify_319
    new $P516, "Undef"
  vivify_319:
    get_how $P517, $P516
    find_lex $P518, "$target"
    unless_null $P518, vivify_320
    new $P518, "Undef"
  vivify_320:
    find_lex $P519, "$local"
    unless_null $P519, vivify_321
    new $P519, "Undef"
  vivify_321:
    $P520 = $P517."methods"($P518, $P519 :named("local"))
    store_lex "@methods", $P520
.annotate 'line', 248
    find_lex $P522, "@methods"
    unless_null $P522, vivify_322
    $P522 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    defined $I523, $P522
    unless $I523, for_undef_323
    iter $P521, $P522
    new $P538, 'ExceptionHandler'
    set_label $P538, loop537_handler
    $P538."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P538
  loop537_test:
    unless $P521, loop537_done
    shift $P524, $P521
  loop537_redo:
    .const 'Sub' $P526 = "44_1304456120.214" 
    capture_lex $P526
    $P526($P524)
  loop537_next:
    goto loop537_test
  loop537_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P539, exception, 'type'
    eq $P539, .CONTROL_LOOP_NEXT, loop537_next
    eq $P539, .CONTROL_LOOP_REDO, loop537_redo
  loop537_done:
    pop_eh 
  for_undef_323:
.annotate 'line', 251
    new $P540, "Exception"
    set $P540['type'], .CONTROL_RETURN
    new $P541, "Integer"
    assign $P541, 0
    setattribute $P540, 'payload', $P541
    throw $P540
.annotate 'line', 246
    .return ()
  control_510:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P542, exception, "payload"
    .return ($P542)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block525"  :anon :subid("44_1304456120.214") :outer("43_1304456120.214")
    .param pmc param_527
.annotate 'line', 248
    .lex "$_", param_527
.annotate 'line', 249
    find_lex $P530, "$_"
    unless_null $P530, vivify_324
    new $P530, "Undef"
  vivify_324:
    set $S531, $P530
    find_lex $P532, "$name"
    unless_null $P532, vivify_325
    new $P532, "Undef"
  vivify_325:
    set $S533, $P532
    iseq $I534, $S531, $S533
    if $I534, if_529
    new $P528, 'Integer'
    set $P528, $I534
    goto if_529_end
  if_529:
    new $P535, "Exception"
    set $P535['type'], .CONTROL_RETURN
    new $P536, "Integer"
    assign $P536, 1
    setattribute $P535, 'payload', $P536
    throw $P535
  if_529_end:
.annotate 'line', 248
    .return ($P528)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1304456120.214") :outer("42_1304456120.214")
    .param pmc param_547
    .param pmc param_548
.annotate 'line', 254
    .const 'Sub' $P559 = "46_1304456120.214" 
    capture_lex $P559
    new $P546, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P546, control_545
    push_eh $P546
    .lex "$target", param_547
    .lex "$name", param_548
.annotate 'line', 255
    $P549 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P549
    find_lex $P550, "$target"
    unless_null $P550, vivify_326
    new $P550, "Undef"
  vivify_326:
    get_how $P551, $P550
    find_lex $P552, "$target"
    unless_null $P552, vivify_327
    new $P552, "Undef"
  vivify_327:
    $P553 = $P551."attributes"($P552, 1 :named("local"))
    store_lex "@attributes", $P553
.annotate 'line', 256
    find_lex $P555, "@attributes"
    unless_null $P555, vivify_328
    $P555 = root_new ['parrot';'ResizablePMCArray']
  vivify_328:
    defined $I556, $P555
    unless $I556, for_undef_329
    iter $P554, $P555
    new $P571, 'ExceptionHandler'
    set_label $P571, loop570_handler
    $P571."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P571
  loop570_test:
    unless $P554, loop570_done
    shift $P557, $P554
  loop570_redo:
    .const 'Sub' $P559 = "46_1304456120.214" 
    capture_lex $P559
    $P559($P557)
  loop570_next:
    goto loop570_test
  loop570_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P572, exception, 'type'
    eq $P572, .CONTROL_LOOP_NEXT, loop570_next
    eq $P572, .CONTROL_LOOP_REDO, loop570_redo
  loop570_done:
    pop_eh 
  for_undef_329:
.annotate 'line', 259
    new $P573, "Exception"
    set $P573['type'], .CONTROL_RETURN
    new $P574, "Integer"
    assign $P574, 0
    setattribute $P573, 'payload', $P574
    throw $P573
.annotate 'line', 254
    .return ()
  control_545:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P575, exception, "payload"
    .return ($P575)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block558"  :anon :subid("46_1304456120.214") :outer("45_1304456120.214")
    .param pmc param_560
.annotate 'line', 256
    .lex "$_", param_560
.annotate 'line', 257
    find_lex $P563, "$_"
    unless_null $P563, vivify_330
    new $P563, "Undef"
  vivify_330:
    $S564 = $P563."name"()
    find_lex $P565, "$name"
    unless_null $P565, vivify_331
    new $P565, "Undef"
  vivify_331:
    set $S566, $P565
    iseq $I567, $S564, $S566
    if $I567, if_562
    new $P561, 'Integer'
    set $P561, $I567
    goto if_562_end
  if_562:
    new $P568, "Exception"
    set $P568['type'], .CONTROL_RETURN
    new $P569, "Integer"
    assign $P569, 1
    setattribute $P568, 'payload', $P569
    throw $P568
  if_562_end:
.annotate 'line', 256
    .return ($P561)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("47_1304456120.214") :outer("42_1304456120.214")
    .param pmc param_582
    .param pmc param_583
    .param pmc param_584
.annotate 'line', 262
    .const 'Sub' $P690 = "51_1304456120.214" 
    capture_lex $P690
    .const 'Sub' $P664 = "50_1304456120.214" 
    capture_lex $P664
    .const 'Sub' $P635 = "49_1304456120.214" 
    capture_lex $P635
    .const 'Sub' $P615 = "48_1304456120.214" 
    capture_lex $P615
    .lex "self", param_582
    .lex "$target", param_583
    .lex "@roles", param_584
.annotate 'line', 265
    new $P585, "Undef"
    .lex "$to_compose", $P585
.annotate 'line', 266
    new $P586, "Undef"
    .lex "$to_compose_meta", $P586
.annotate 'line', 281
    $P587 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P587
.annotate 'line', 290
    $P588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P588
.annotate 'line', 298
    $P589 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P589
.annotate 'line', 310
    $P590 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P590
.annotate 'line', 262
    find_lex $P591, "$to_compose"
    unless_null $P591, vivify_332
    new $P591, "Undef"
  vivify_332:
    find_lex $P592, "$to_compose_meta"
    unless_null $P592, vivify_333
    new $P592, "Undef"
  vivify_333:
.annotate 'line', 267
    find_lex $P594, "@roles"
    unless_null $P594, vivify_334
    $P594 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
    set $N595, $P594
    iseq $I596, $N595, 1.0
    if $I596, if_593
.annotate 'line', 272
    find_lex $P601, "NQPConcreteRoleHOW"
    find_lex $P602, "$?PACKAGE"
    get_who $P603, $P602
    set $P606, $P603["NQPMu"]
    unless_null $P606, vivify_335
    get_hll_global $P604, "GLOBAL"
    get_who $P605, $P604
    set $P606, $P605["NQPMu"]
  vivify_335:
    $P607 = $P601."new_type"($P606 :named("instance_of"))
    store_lex "$to_compose", $P607
.annotate 'line', 273
    find_lex $P608, "$to_compose"
    unless_null $P608, vivify_336
    new $P608, "Undef"
  vivify_336:
    get_how $P609, $P608
    store_lex "$to_compose_meta", $P609
.annotate 'line', 274
    find_lex $P611, "@roles"
    unless_null $P611, vivify_337
    $P611 = root_new ['parrot';'ResizablePMCArray']
  vivify_337:
    defined $I612, $P611
    unless $I612, for_undef_338
    iter $P610, $P611
    new $P622, 'ExceptionHandler'
    set_label $P622, loop621_handler
    $P622."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P622
  loop621_test:
    unless $P610, loop621_done
    shift $P613, $P610
  loop621_redo:
    .const 'Sub' $P615 = "48_1304456120.214" 
    capture_lex $P615
    $P615($P613)
  loop621_next:
    goto loop621_test
  loop621_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P623, exception, 'type'
    eq $P623, .CONTROL_LOOP_NEXT, loop621_next
    eq $P623, .CONTROL_LOOP_REDO, loop621_redo
  loop621_done:
    pop_eh 
  for_undef_338:
.annotate 'line', 277
    find_lex $P624, "$to_compose_meta"
    unless_null $P624, vivify_342
    new $P624, "Undef"
  vivify_342:
    find_lex $P625, "$to_compose"
    unless_null $P625, vivify_343
    new $P625, "Undef"
  vivify_343:
    $P626 = $P624."compose"($P625)
    store_lex "$to_compose", $P626
.annotate 'line', 271
    goto if_593_end
  if_593:
.annotate 'line', 268
    find_lex $P597, "@roles"
    unless_null $P597, vivify_344
    $P597 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
    set $P598, $P597[0]
    unless_null $P598, vivify_345
    new $P598, "Undef"
  vivify_345:
    store_lex "$to_compose", $P598
.annotate 'line', 269
    find_lex $P599, "$to_compose"
    unless_null $P599, vivify_346
    new $P599, "Undef"
  vivify_346:
    get_how $P600, $P599
    store_lex "$to_compose_meta", $P600
  if_593_end:
.annotate 'line', 281
    find_lex $P627, "$to_compose_meta"
    unless_null $P627, vivify_347
    new $P627, "Undef"
  vivify_347:
    find_lex $P628, "$to_compose"
    unless_null $P628, vivify_348
    new $P628, "Undef"
  vivify_348:
    $P629 = $P627."collisions"($P628)
    store_lex "@collisions", $P629
.annotate 'line', 282
    find_lex $P631, "@collisions"
    unless_null $P631, vivify_349
    $P631 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    defined $I632, $P631
    unless $I632, for_undef_350
    iter $P630, $P631
    new $P654, 'ExceptionHandler'
    set_label $P654, loop653_handler
    $P654."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P654
  loop653_test:
    unless $P630, loop653_done
    shift $P633, $P630
  loop653_redo:
    .const 'Sub' $P635 = "49_1304456120.214" 
    capture_lex $P635
    $P635($P633)
  loop653_next:
    goto loop653_test
  loop653_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P655, exception, 'type'
    eq $P655, .CONTROL_LOOP_NEXT, loop653_next
    eq $P655, .CONTROL_LOOP_REDO, loop653_redo
  loop653_done:
    pop_eh 
  for_undef_350:
.annotate 'line', 290
    find_lex $P656, "$to_compose_meta"
    unless_null $P656, vivify_356
    new $P656, "Undef"
  vivify_356:
    find_lex $P657, "$to_compose"
    unless_null $P657, vivify_357
    new $P657, "Undef"
  vivify_357:
    $P658 = $P656."methods"($P657)
    store_lex "@methods", $P658
.annotate 'line', 291
    find_lex $P660, "@methods"
    unless_null $P660, vivify_358
    $P660 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    defined $I661, $P660
    unless $I661, for_undef_359
    iter $P659, $P660
    new $P680, 'ExceptionHandler'
    set_label $P680, loop679_handler
    $P680."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P680
  loop679_test:
    unless $P659, loop679_done
    shift $P662, $P659
  loop679_redo:
    .const 'Sub' $P664 = "50_1304456120.214" 
    capture_lex $P664
    $P664($P662)
  loop679_next:
    goto loop679_test
  loop679_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P681, exception, 'type'
    eq $P681, .CONTROL_LOOP_NEXT, loop679_next
    eq $P681, .CONTROL_LOOP_REDO, loop679_redo
  loop679_done:
    pop_eh 
  for_undef_359:
.annotate 'line', 298
    find_lex $P682, "$to_compose_meta"
    unless_null $P682, vivify_366
    new $P682, "Undef"
  vivify_366:
    find_lex $P683, "$to_compose"
    unless_null $P683, vivify_367
    new $P683, "Undef"
  vivify_367:
    $P684 = $P682."attributes"($P683)
    store_lex "@attributes", $P684
.annotate 'line', 299
    find_lex $P686, "@attributes"
    unless_null $P686, vivify_368
    $P686 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    defined $I687, $P686
    unless $I687, for_undef_369
    iter $P685, $P686
    new $P714, 'ExceptionHandler'
    set_label $P714, loop713_handler
    $P714."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P714
  loop713_test:
    unless $P685, loop713_done
    shift $P688, $P685
  loop713_redo:
    .const 'Sub' $P690 = "51_1304456120.214" 
    capture_lex $P690
    $P690($P688)
  loop713_next:
    goto loop713_test
  loop713_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P715, exception, 'type'
    eq $P715, .CONTROL_LOOP_NEXT, loop713_next
    eq $P715, .CONTROL_LOOP_REDO, loop713_redo
  loop713_done:
    pop_eh 
  for_undef_369:
    find_lex $P716, "@done"
    unless_null $P716, vivify_378
    $P716 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
.annotate 'line', 311
    find_lex $P717, "$to_compose"
    unless_null $P717, vivify_379
    new $P717, "Undef"
  vivify_379:
    find_lex $P718, "@done"
    unless_null $P718, vivify_380
    $P718 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P718
  vivify_380:
    set $P718[0], $P717
.annotate 'line', 262
    .return ($P717)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block614"  :anon :subid("48_1304456120.214") :outer("47_1304456120.214")
    .param pmc param_616
.annotate 'line', 274
    .lex "$_", param_616
.annotate 'line', 275
    find_lex $P617, "$to_compose_meta"
    unless_null $P617, vivify_339
    new $P617, "Undef"
  vivify_339:
    find_lex $P618, "$to_compose"
    unless_null $P618, vivify_340
    new $P618, "Undef"
  vivify_340:
    find_lex $P619, "$_"
    unless_null $P619, vivify_341
    new $P619, "Undef"
  vivify_341:
    $P620 = $P617."add_role"($P618, $P619)
.annotate 'line', 274
    .return ($P620)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block634"  :anon :subid("49_1304456120.214") :outer("47_1304456120.214")
    .param pmc param_636
.annotate 'line', 282
    .lex "$_", param_636
.annotate 'line', 283
    find_lex $P639, "$target"
    unless_null $P639, vivify_351
    new $P639, "Undef"
  vivify_351:
    find_lex $P640, "$_"
    unless_null $P640, vivify_352
    new $P640, "Undef"
  vivify_352:
    set $S641, $P640
    $P642 = "has_method"($P639, $S641, 1)
    unless $P642, unless_638
    set $P637, $P642
    goto unless_638_end
  unless_638:
.annotate 'line', 284
    new $P643, 'String'
    set $P643, "Method '"
    find_lex $P644, "$_"
    unless_null $P644, vivify_353
    new $P644, "Undef"
  vivify_353:
    concat $P645, $P643, $P644
    concat $P646, $P645, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P647, "$target"
    unless_null $P647, vivify_354
    new $P647, "Undef"
  vivify_354:
    get_how $P648, $P647
    find_lex $P649, "$target"
    unless_null $P649, vivify_355
    new $P649, "Undef"
  vivify_355:
    $S650 = $P648."name"($P649)
    concat $P651, $P646, $S650
.annotate 'line', 284
    concat $P652, $P651, "'"
.annotate 'line', 285
    die $P652
  unless_638_end:
.annotate 'line', 282
    .return ($P637)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block663"  :anon :subid("50_1304456120.214") :outer("47_1304456120.214")
    .param pmc param_665
.annotate 'line', 291
    .lex "$_", param_665
.annotate 'line', 292
    find_lex $P668, "$target"
    unless_null $P668, vivify_360
    new $P668, "Undef"
  vivify_360:
    find_lex $P669, "$_"
    unless_null $P669, vivify_361
    new $P669, "Undef"
  vivify_361:
    set $S670, $P669
    $P671 = "has_method"($P668, $S670, 0)
    unless $P671, unless_667
    set $P666, $P671
    goto unless_667_end
  unless_667:
.annotate 'line', 293
    find_lex $P672, "$target"
    unless_null $P672, vivify_362
    new $P672, "Undef"
  vivify_362:
    get_how $P673, $P672
    find_lex $P674, "$target"
    unless_null $P674, vivify_363
    new $P674, "Undef"
  vivify_363:
    find_lex $P675, "$_"
    unless_null $P675, vivify_364
    new $P675, "Undef"
  vivify_364:
    set $S676, $P675
    find_lex $P677, "$_"
    unless_null $P677, vivify_365
    new $P677, "Undef"
  vivify_365:
    $P678 = $P673."add_method"($P674, $S676, $P677)
.annotate 'line', 292
    set $P666, $P678
  unless_667_end:
.annotate 'line', 291
    .return ($P666)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block689"  :anon :subid("51_1304456120.214") :outer("47_1304456120.214")
    .param pmc param_691
.annotate 'line', 299
    .lex "$_", param_691
.annotate 'line', 300
    find_lex $P693, "$target"
    unless_null $P693, vivify_370
    new $P693, "Undef"
  vivify_370:
    find_lex $P694, "$_"
    unless_null $P694, vivify_371
    new $P694, "Undef"
  vivify_371:
    $P695 = $P694."name"()
    $P696 = "has_attribute"($P693, $P695)
    unless $P696, if_692_end
.annotate 'line', 301
    new $P697, "String"
    assign $P697, "Attribute '"
    find_lex $P698, "$_"
    unless_null $P698, vivify_372
    new $P698, "Undef"
  vivify_372:
    $S699 = $P698."name"()
    concat $P700, $P697, $S699
    concat $P701, $P700, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P702, "$target"
    unless_null $P702, vivify_373
    new $P702, "Undef"
  vivify_373:
    get_how $P703, $P702
    find_lex $P704, "$target"
    unless_null $P704, vivify_374
    new $P704, "Undef"
  vivify_374:
    $S705 = $P703."name"($P704)
    concat $P706, $P701, $S705
.annotate 'line', 301
    concat $P707, $P706, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P707
  if_692_end:
.annotate 'line', 304
    find_lex $P708, "$target"
    unless_null $P708, vivify_375
    new $P708, "Undef"
  vivify_375:
    get_how $P709, $P708
    find_lex $P710, "$target"
    unless_null $P710, vivify_376
    new $P710, "Undef"
  vivify_376:
    find_lex $P711, "$_"
    unless_null $P711, vivify_377
    new $P711, "Undef"
  vivify_377:
    $P712 = $P709."add_attribute"($P710, $P711)
.annotate 'line', 299
    .return ($P712)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block720"  :subid("52_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 320
    .const 'Sub' $P1031 = "76_1304456120.214" 
    capture_lex $P1031
    .const 'Sub' $P1007 = "74_1304456120.214" 
    capture_lex $P1007
    .const 'Sub' $P1001 = "73_1304456120.214" 
    capture_lex $P1001
    .const 'Sub' $P995 = "72_1304456120.214" 
    capture_lex $P995
    .const 'Sub' $P971 = "70_1304456120.214" 
    capture_lex $P971
    .const 'Sub' $P864 = "65_1304456120.214" 
    capture_lex $P864
    .const 'Sub' $P861 = "64_1304456120.214" 
    capture_lex $P861
    .const 'Sub' $P854 = "63_1304456120.214" 
    capture_lex $P854
    .const 'Sub' $P841 = "62_1304456120.214" 
    capture_lex $P841
    .const 'Sub' $P837 = "61_1304456120.214" 
    capture_lex $P837
    .const 'Sub' $P816 = "60_1304456120.214" 
    capture_lex $P816
    .const 'Sub' $P795 = "59_1304456120.214" 
    capture_lex $P795
    .const 'Sub' $P776 = "58_1304456120.214" 
    capture_lex $P776
    .const 'Sub' $P769 = "57_1304456120.214" 
    capture_lex $P769
    .const 'Sub' $P754 = "56_1304456120.214" 
    capture_lex $P754
    .const 'Sub' $P748 = "55_1304456120.214" 
    capture_lex $P748
    .const 'Sub' $P739 = "54_1304456120.214" 
    capture_lex $P739
    .const 'Sub' $P722 = "53_1304456120.214" 
    capture_lex $P722
.annotate 'line', 457
    .const 'Sub' $P722 = "53_1304456120.214" 
    newclosure $P736, $P722
    .lex "reify_method", $P736
.annotate 'line', 320
    .lex "$?PACKAGE", $P737
    .lex "$?CLASS", $P738
.annotate 'line', 422
    find_lex $P970, "reify_method"
.annotate 'line', 490
    .const 'Sub' $P1031 = "76_1304456120.214" 
    newclosure $P1037, $P1031
.annotate 'line', 320
    .return ($P1037)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_723
.annotate 'line', 457
    .lex "$meth", param_723
.annotate 'line', 458
    new $P724, "Undef"
    .lex "$callback", $P724
    find_lex $P725, "$meth"
    unless_null $P725, vivify_381
    new $P725, "Undef"
  vivify_381:
    getprop $P726, "REIFY_CALLBACK", $P725
    store_lex "$callback", $P726
.annotate 'line', 459
    find_lex $P729, "$callback"
    unless_null $P729, vivify_382
    new $P729, "Undef"
  vivify_382:
    defined $I730, $P729
    if $I730, if_728
    find_lex $P734, "$meth"
    unless_null $P734, vivify_383
    new $P734, "Undef"
  vivify_383:
    clone $P735, $P734
    set $P727, $P735
    goto if_728_end
  if_728:
    find_lex $P731, "$callback"
    unless_null $P731, vivify_384
    new $P731, "Undef"
  vivify_384:
    find_lex $P732, "$meth"
    unless_null $P732, vivify_385
    new $P732, "Undef"
  vivify_385:
    $P733 = $P731($P732)
    set $P727, $P733
  if_728_end:
.annotate 'line', 457
    .return ($P727)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("54_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_740
    .param pmc param_741 :named("name")
.annotate 'line', 350
    .lex "self", param_740
    .lex "$name", param_741
.annotate 'line', 351
    new $P742, "Undef"
    .lex "$obj", $P742
    find_lex $P743, "self"
    repr_instance_of $P744, $P743
    store_lex "$obj", $P744
.annotate 'line', 352
    find_lex $P745, "$obj"
    unless_null $P745, vivify_386
    new $P745, "Undef"
  vivify_386:
    find_lex $P746, "$name"
    unless_null $P746, vivify_387
    new $P746, "Undef"
  vivify_387:
    $P745."BUILD"($P746 :named("name"))
    find_lex $P747, "$obj"
    unless_null $P747, vivify_388
    new $P747, "Undef"
  vivify_388:
.annotate 'line', 350
    .return ($P747)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("55_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_749
    .param pmc param_750 :named("name")
.annotate 'line', 356
    .lex "self", param_749
    .lex "$name", param_750
.annotate 'line', 357
    find_lex $P751, "$name"
    unless_null $P751, vivify_389
    new $P751, "Undef"
  vivify_389:
    find_lex $P752, "self"
    find_lex $P753, "$?CLASS"
    setattribute $P752, $P753, "$!name", $P751
.annotate 'line', 356
    .return ($P751)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("56_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_755
    .param pmc param_756 :optional :named("name")
    .param int has_param_756 :opt_flag
    .param pmc param_758 :optional :named("repr")
    .param int has_param_758 :opt_flag
.annotate 'line', 362
    .lex "self", param_755
    if has_param_756, optparam_390
    new $P757, "String"
    assign $P757, "<anon>"
    set param_756, $P757
  optparam_390:
    .lex "$name", param_756
    if has_param_758, optparam_391
    new $P759, "String"
    assign $P759, "P6opaque"
    set param_758, $P759
  optparam_391:
    .lex "$repr", param_758
.annotate 'line', 363
    new $P760, "Undef"
    .lex "$metarole", $P760
    find_lex $P761, "self"
    find_lex $P762, "$name"
    unless_null $P762, vivify_392
    new $P762, "Undef"
  vivify_392:
    $P763 = $P761."new"($P762 :named("name"))
    store_lex "$metarole", $P763
.annotate 'line', 365
    find_lex $P764, "$metarole"
    unless_null $P764, vivify_393
    new $P764, "Undef"
  vivify_393:
    find_lex $P765, "$repr"
    unless_null $P765, vivify_394
    new $P765, "Undef"
  vivify_394:
    set $S766, $P765
    repr_type_object_for $P767, $P764, $S766
    $P768 = root_new ['parrot';'Hash']
    set_who $P767, $P768
.annotate 'line', 362
    .return ($P767)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("57_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_770
    .param pmc param_771
    .param pmc param_772
.annotate 'line', 369
    .lex "self", param_770
    .lex "$obj", param_771
    .lex "$body_block", param_772
.annotate 'line', 370
    find_lex $P773, "$body_block"
    unless_null $P773, vivify_395
    new $P773, "Undef"
  vivify_395:
    find_lex $P774, "self"
    find_lex $P775, "$?CLASS"
    setattribute $P774, $P775, "$!body_block", $P773
.annotate 'line', 369
    .return ($P773)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("58_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_777
    .param pmc param_778
    .param pmc param_779
    .param pmc param_780
.annotate 'line', 373
    .lex "self", param_777
    .lex "$obj", param_778
    .lex "$name", param_779
    .lex "$code_obj", param_780
.annotate 'line', 374
    find_lex $P782, "$name"
    unless_null $P782, vivify_396
    new $P782, "Undef"
  vivify_396:
    find_lex $P783, "self"
    find_lex $P784, "$?CLASS"
    getattribute $P785, $P783, $P784, "%!methods"
    unless_null $P785, vivify_397
    $P785 = root_new ['parrot';'Hash']
  vivify_397:
    set $P786, $P785[$P782]
    unless_null $P786, vivify_398
    new $P786, "Undef"
  vivify_398:
    unless $P786, if_781_end
.annotate 'line', 375
    new $P787, "String"
    assign $P787, "This role already has a method named "
    find_lex $P788, "$name"
    unless_null $P788, vivify_399
    new $P788, "Undef"
  vivify_399:
    concat $P789, $P787, $P788
    die $P789
  if_781_end:
.annotate 'line', 377
    find_lex $P790, "$code_obj"
    unless_null $P790, vivify_400
    new $P790, "Undef"
  vivify_400:
    find_lex $P791, "$name"
    unless_null $P791, vivify_401
    new $P791, "Undef"
  vivify_401:
    find_lex $P792, "self"
    find_lex $P793, "$?CLASS"
    getattribute $P794, $P792, $P793, "%!methods"
    unless_null $P794, vivify_402
    $P794 = root_new ['parrot';'Hash']
    setattribute $P792, $P793, "%!methods", $P794
  vivify_402:
    set $P794[$P791], $P790
.annotate 'line', 373
    .return ($P790)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("59_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_796
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799
.annotate 'line', 380
    .lex "self", param_796
    .lex "$obj", param_797
    .lex "$name", param_798
    .lex "$code_obj", param_799
.annotate 'line', 381
    $P800 = root_new ['parrot';'Hash']
    .lex "%todo", $P800
.annotate 'line', 380
    find_lex $P801, "%todo"
    unless_null $P801, vivify_403
    $P801 = root_new ['parrot';'Hash']
  vivify_403:
.annotate 'line', 382
    find_lex $P802, "$name"
    unless_null $P802, vivify_404
    new $P802, "Undef"
  vivify_404:
    find_lex $P803, "%todo"
    unless_null $P803, vivify_405
    $P803 = root_new ['parrot';'Hash']
    store_lex "%todo", $P803
  vivify_405:
    set $P803["name"], $P802
.annotate 'line', 383
    find_lex $P804, "$code_obj"
    unless_null $P804, vivify_406
    new $P804, "Undef"
  vivify_406:
    find_lex $P805, "%todo"
    unless_null $P805, vivify_407
    $P805 = root_new ['parrot';'Hash']
    store_lex "%todo", $P805
  vivify_407:
    set $P805["code"], $P804
.annotate 'line', 384
    find_lex $P806, "%todo"
    unless_null $P806, vivify_408
    $P806 = root_new ['parrot';'Hash']
  vivify_408:
    find_lex $P807, "self"
    find_lex $P808, "$?CLASS"
    getattribute $P809, $P807, $P808, "@!multi_methods_to_incorporate"
    unless_null $P809, vivify_409
    $P809 = root_new ['parrot';'ResizablePMCArray']
  vivify_409:
    set $N810, $P809
    set $I811, $N810
    find_lex $P812, "self"
    find_lex $P813, "$?CLASS"
    getattribute $P814, $P812, $P813, "@!multi_methods_to_incorporate"
    unless_null $P814, vivify_410
    $P814 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P812, $P813, "@!multi_methods_to_incorporate", $P814
  vivify_410:
    set $P814[$I811], $P806
    find_lex $P815, "$code_obj"
    unless_null $P815, vivify_411
    new $P815, "Undef"
  vivify_411:
.annotate 'line', 380
    .return ($P815)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("60_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_817
    .param pmc param_818
    .param pmc param_819
.annotate 'line', 388
    .lex "self", param_817
    .lex "$obj", param_818
    .lex "$meta_attr", param_819
.annotate 'line', 389
    new $P820, "Undef"
    .lex "$name", $P820
    find_lex $P821, "$meta_attr"
    unless_null $P821, vivify_412
    new $P821, "Undef"
  vivify_412:
    $P822 = $P821."name"()
    store_lex "$name", $P822
.annotate 'line', 390
    find_lex $P824, "$name"
    unless_null $P824, vivify_413
    new $P824, "Undef"
  vivify_413:
    find_lex $P825, "self"
    find_lex $P826, "$?CLASS"
    getattribute $P827, $P825, $P826, "%!attributes"
    unless_null $P827, vivify_414
    $P827 = root_new ['parrot';'Hash']
  vivify_414:
    set $P828, $P827[$P824]
    unless_null $P828, vivify_415
    new $P828, "Undef"
  vivify_415:
    unless $P828, if_823_end
.annotate 'line', 391
    new $P829, "String"
    assign $P829, "This role already has an attribute named "
    find_lex $P830, "$name"
    unless_null $P830, vivify_416
    new $P830, "Undef"
  vivify_416:
    concat $P831, $P829, $P830
    die $P831
  if_823_end:
.annotate 'line', 393
    find_lex $P832, "$meta_attr"
    unless_null $P832, vivify_417
    new $P832, "Undef"
  vivify_417:
    find_lex $P833, "$name"
    unless_null $P833, vivify_418
    new $P833, "Undef"
  vivify_418:
    find_lex $P834, "self"
    find_lex $P835, "$?CLASS"
    getattribute $P836, $P834, $P835, "%!attributes"
    unless_null $P836, vivify_419
    $P836 = root_new ['parrot';'Hash']
    setattribute $P834, $P835, "%!attributes", $P836
  vivify_419:
    set $P836[$P833], $P832
.annotate 'line', 388
    .return ($P832)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("61_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_838
    .param pmc param_839
    .param pmc param_840
.annotate 'line', 396
    .lex "self", param_838
    .lex "$obj", param_839
    .lex "$parent", param_840
.annotate 'line', 397
    die "A role cannot inherit from a class"
.annotate 'line', 396
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("62_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_842
    .param pmc param_843
    .param pmc param_844
.annotate 'line', 400
    .lex "self", param_842
    .lex "$obj", param_843
    .lex "$role", param_844
.annotate 'line', 401
    find_lex $P845, "$role"
    unless_null $P845, vivify_420
    new $P845, "Undef"
  vivify_420:
    find_lex $P846, "self"
    find_lex $P847, "$?CLASS"
    getattribute $P848, $P846, $P847, "@!roles"
    unless_null $P848, vivify_421
    $P848 = root_new ['parrot';'ResizablePMCArray']
  vivify_421:
    set $N849, $P848
    set $I850, $N849
    find_lex $P851, "self"
    find_lex $P852, "$?CLASS"
    getattribute $P853, $P851, $P852, "@!roles"
    unless_null $P853, vivify_422
    $P853 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P851, $P852, "@!roles", $P853
  vivify_422:
    set $P853[$I850], $P845
.annotate 'line', 400
    .return ($P845)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("63_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_855
    .param pmc param_856
.annotate 'line', 405
    .lex "self", param_855
    .lex "$obj", param_856
.annotate 'line', 406
    new $P857, "Integer"
    assign $P857, 1
    find_lex $P858, "self"
    find_lex $P859, "$?CLASS"
    setattribute $P858, $P859, "$!composed", $P857
    find_lex $P860, "$obj"
    unless_null $P860, vivify_423
    new $P860, "Undef"
  vivify_423:
.annotate 'line', 405
    .return ($P860)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("64_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_862
    .param pmc param_863
.annotate 'line', 416
    .lex "self", param_862
    .lex "$obj", param_863
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("65_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_867
    .param pmc param_868
    .param pmc param_869
.annotate 'line', 422
    .const 'Sub' $P948 = "69_1304456120.214" 
    capture_lex $P948
    .const 'Sub' $P927 = "68_1304456120.214" 
    capture_lex $P927
    .const 'Sub' $P906 = "67_1304456120.214" 
    capture_lex $P906
    .const 'Sub' $P888 = "66_1304456120.214" 
    capture_lex $P888
    new $P866, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P866, control_865
    push_eh $P866
    .lex "self", param_867
    .lex "$obj", param_868
    .lex "$class_arg", param_869
.annotate 'line', 428
    new $P870, "Undef"
    .lex "$irole", $P870
.annotate 'line', 425
    find_lex $P871, "self"
    find_lex $P872, "$?CLASS"
    getattribute $P873, $P871, $P872, "$!body_block"
    unless_null $P873, vivify_424
    new $P873, "Undef"
  vivify_424:
    find_lex $P874, "$class_arg"
    unless_null $P874, vivify_425
    new $P874, "Undef"
  vivify_425:
    $P873($P874)
.annotate 'line', 428
    find_lex $P875, "NQPConcreteRoleHOW"
    find_lex $P876, "self"
    find_lex $P877, "$?CLASS"
    getattribute $P878, $P876, $P877, "$!name"
    unless_null $P878, vivify_426
    new $P878, "Undef"
  vivify_426:
    find_lex $P879, "$obj"
    unless_null $P879, vivify_427
    new $P879, "Undef"
  vivify_427:
    $P880 = $P875."new_type"($P878 :named("name"), $P879 :named("instance_of"))
    store_lex "$irole", $P880
.annotate 'line', 432
    find_lex $P882, "self"
    find_lex $P883, "$?CLASS"
    getattribute $P884, $P882, $P883, "%!attributes"
    unless_null $P884, vivify_428
    $P884 = root_new ['parrot';'Hash']
  vivify_428:
    defined $I885, $P884
    unless $I885, for_undef_429
    iter $P881, $P884
    new $P897, 'ExceptionHandler'
    set_label $P897, loop896_handler
    $P897."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P897
  loop896_test:
    unless $P881, loop896_done
    shift $P886, $P881
  loop896_redo:
    .const 'Sub' $P888 = "66_1304456120.214" 
    capture_lex $P888
    $P888($P886)
  loop896_next:
    goto loop896_test
  loop896_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P898, exception, 'type'
    eq $P898, .CONTROL_LOOP_NEXT, loop896_next
    eq $P898, .CONTROL_LOOP_REDO, loop896_redo
  loop896_done:
    pop_eh 
  for_undef_429:
.annotate 'line', 437
    find_lex $P900, "self"
    find_lex $P901, "$?CLASS"
    getattribute $P902, $P900, $P901, "%!methods"
    unless_null $P902, vivify_433
    $P902 = root_new ['parrot';'Hash']
  vivify_433:
    defined $I903, $P902
    unless $I903, for_undef_434
    iter $P899, $P902
    new $P918, 'ExceptionHandler'
    set_label $P918, loop917_handler
    $P918."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P918
  loop917_test:
    unless $P899, loop917_done
    shift $P904, $P899
  loop917_redo:
    .const 'Sub' $P906 = "67_1304456120.214" 
    capture_lex $P906
    $P906($P904)
  loop917_next:
    goto loop917_test
  loop917_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P919, exception, 'type'
    eq $P919, .CONTROL_LOOP_NEXT, loop917_next
    eq $P919, .CONTROL_LOOP_REDO, loop917_redo
  loop917_done:
    pop_eh 
  for_undef_434:
.annotate 'line', 440
    find_lex $P921, "self"
    find_lex $P922, "$?CLASS"
    getattribute $P923, $P921, $P922, "@!multi_methods_to_incorporate"
    unless_null $P923, vivify_439
    $P923 = root_new ['parrot';'ResizablePMCArray']
  vivify_439:
    defined $I924, $P923
    unless $I924, for_undef_440
    iter $P920, $P923
    new $P939, 'ExceptionHandler'
    set_label $P939, loop938_handler
    $P939."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P939
  loop938_test:
    unless $P920, loop938_done
    shift $P925, $P920
  loop938_redo:
    .const 'Sub' $P927 = "68_1304456120.214" 
    capture_lex $P927
    $P927($P925)
  loop938_next:
    goto loop938_test
  loop938_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P940, exception, 'type'
    eq $P940, .CONTROL_LOOP_NEXT, loop938_next
    eq $P940, .CONTROL_LOOP_REDO, loop938_redo
  loop938_done:
    pop_eh 
  for_undef_440:
.annotate 'line', 445
    find_lex $P942, "self"
    find_lex $P943, "$?CLASS"
    getattribute $P944, $P942, $P943, "@!roles"
    unless_null $P944, vivify_447
    $P944 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    defined $I945, $P944
    unless $I945, for_undef_448
    iter $P941, $P944
    new $P962, 'ExceptionHandler'
    set_label $P962, loop961_handler
    $P962."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P962
  loop961_test:
    unless $P941, loop961_done
    shift $P946, $P941
  loop961_redo:
    .const 'Sub' $P948 = "69_1304456120.214" 
    capture_lex $P948
    $P948($P946)
  loop961_next:
    goto loop961_test
  loop961_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P963, exception, 'type'
    eq $P963, .CONTROL_LOOP_NEXT, loop961_next
    eq $P963, .CONTROL_LOOP_REDO, loop961_redo
  loop961_done:
    pop_eh 
  for_undef_448:
.annotate 'line', 451
    find_lex $P964, "$irole"
    unless_null $P964, vivify_455
    new $P964, "Undef"
  vivify_455:
    get_how $P965, $P964
    find_lex $P966, "$irole"
    unless_null $P966, vivify_456
    new $P966, "Undef"
  vivify_456:
    $P965."compose"($P966)
.annotate 'line', 452
    new $P967, "Exception"
    set $P967['type'], .CONTROL_RETURN
    find_lex $P968, "$irole"
    unless_null $P968, vivify_457
    new $P968, "Undef"
  vivify_457:
    setattribute $P967, 'payload', $P968
    throw $P967
.annotate 'line', 422
    .return ()
  control_865:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P969, exception, "payload"
    .return ($P969)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block887"  :anon :subid("66_1304456120.214") :outer("65_1304456120.214")
    .param pmc param_889
.annotate 'line', 432
    .lex "$_", param_889
.annotate 'line', 433
    find_lex $P890, "$irole"
    unless_null $P890, vivify_430
    new $P890, "Undef"
  vivify_430:
    get_how $P891, $P890
    find_lex $P892, "$irole"
    unless_null $P892, vivify_431
    new $P892, "Undef"
  vivify_431:
    find_lex $P893, "$_"
    unless_null $P893, vivify_432
    new $P893, "Undef"
  vivify_432:
    $P894 = $P893."value"()
    $P895 = $P891."add_attribute"($P892, $P894)
.annotate 'line', 432
    .return ($P895)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block905"  :anon :subid("67_1304456120.214") :outer("65_1304456120.214")
    .param pmc param_907
.annotate 'line', 437
    .lex "$_", param_907
.annotate 'line', 438
    find_lex $P908, "$irole"
    unless_null $P908, vivify_435
    new $P908, "Undef"
  vivify_435:
    get_how $P909, $P908
    find_lex $P910, "$irole"
    unless_null $P910, vivify_436
    new $P910, "Undef"
  vivify_436:
    find_lex $P911, "$_"
    unless_null $P911, vivify_437
    new $P911, "Undef"
  vivify_437:
    $P912 = $P911."key"()
    find_lex $P913, "$_"
    unless_null $P913, vivify_438
    new $P913, "Undef"
  vivify_438:
    $P914 = $P913."value"()
    $P915 = "reify_method"($P914)
    $P916 = $P909."add_method"($P910, $P912, $P915)
.annotate 'line', 437
    .return ($P916)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block926"  :anon :subid("68_1304456120.214") :outer("65_1304456120.214")
    .param pmc param_928
.annotate 'line', 440
    .lex "$_", param_928
.annotate 'line', 441
    find_lex $P929, "$irole"
    unless_null $P929, vivify_441
    new $P929, "Undef"
  vivify_441:
    get_how $P930, $P929
    find_lex $P931, "$irole"
    unless_null $P931, vivify_442
    new $P931, "Undef"
  vivify_442:
    find_lex $P932, "$_"
    unless_null $P932, vivify_443
    $P932 = root_new ['parrot';'Hash']
  vivify_443:
    set $P933, $P932["name"]
    unless_null $P933, vivify_444
    new $P933, "Undef"
  vivify_444:
    find_lex $P934, "$_"
    unless_null $P934, vivify_445
    $P934 = root_new ['parrot';'Hash']
  vivify_445:
    set $P935, $P934["code"]
    unless_null $P935, vivify_446
    new $P935, "Undef"
  vivify_446:
    $P936 = "reify_method"($P935)
    $P937 = $P930."add_multi_method"($P931, $P933, $P936)
.annotate 'line', 440
    .return ($P937)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block947"  :anon :subid("69_1304456120.214") :outer("65_1304456120.214")
    .param pmc param_950
.annotate 'line', 446
    new $P949, "Undef"
    .lex "$instantiated", $P949
    .lex "$_", param_950
    find_lex $P951, "$irole"
    unless_null $P951, vivify_449
    new $P951, "Undef"
  vivify_449:
    get_how $P952, $P951
    find_lex $P953, "$irole"
    unless_null $P953, vivify_450
    new $P953, "Undef"
  vivify_450:
    find_lex $P954, "$class_arg"
    unless_null $P954, vivify_451
    new $P954, "Undef"
  vivify_451:
    $P955 = $P952."instantiate"($P953, $P954)
    store_lex "$instantiated", $P955
.annotate 'line', 447
    find_lex $P956, "$irole"
    unless_null $P956, vivify_452
    new $P956, "Undef"
  vivify_452:
    get_how $P957, $P956
    find_lex $P958, "$irole"
    unless_null $P958, vivify_453
    new $P958, "Undef"
  vivify_453:
    find_lex $P959, "$instantiated"
    unless_null $P959, vivify_454
    new $P959, "Undef"
  vivify_454:
    $P960 = $P957."add_role"($P958, $P959)
.annotate 'line', 445
    .return ($P960)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("70_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_972
    .param pmc param_973
    .param pmc param_974 :optional :named("local")
    .param int has_param_974 :opt_flag
.annotate 'line', 466
    .const 'Sub' $P985 = "71_1304456120.214" 
    capture_lex $P985
    .lex "self", param_972
    .lex "$obj", param_973
    if has_param_974, optparam_458
    new $P975, "Undef"
    set param_974, $P975
  optparam_458:
    .lex "$local", param_974
.annotate 'line', 467
    $P976 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P976
.annotate 'line', 466
    find_lex $P977, "@meths"
    unless_null $P977, vivify_459
    $P977 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
.annotate 'line', 468
    find_lex $P979, "self"
    find_lex $P980, "$?CLASS"
    getattribute $P981, $P979, $P980, "%!methods"
    unless_null $P981, vivify_460
    $P981 = root_new ['parrot';'Hash']
  vivify_460:
    defined $I982, $P981
    unless $I982, for_undef_461
    iter $P978, $P981
    new $P992, 'ExceptionHandler'
    set_label $P992, loop991_handler
    $P992."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P992
  loop991_test:
    unless $P978, loop991_done
    shift $P983, $P978
  loop991_redo:
    .const 'Sub' $P985 = "71_1304456120.214" 
    capture_lex $P985
    $P985($P983)
  loop991_next:
    goto loop991_test
  loop991_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P993, exception, 'type'
    eq $P993, .CONTROL_LOOP_NEXT, loop991_next
    eq $P993, .CONTROL_LOOP_REDO, loop991_redo
  loop991_done:
    pop_eh 
  for_undef_461:
    find_lex $P994, "@meths"
    unless_null $P994, vivify_464
    $P994 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
.annotate 'line', 466
    .return ($P994)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block984"  :anon :subid("71_1304456120.214") :outer("70_1304456120.214")
    .param pmc param_986
.annotate 'line', 468
    .lex "$_", param_986
.annotate 'line', 469
    find_lex $P987, "@meths"
    unless_null $P987, vivify_462
    $P987 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    find_lex $P988, "$_"
    unless_null $P988, vivify_463
    new $P988, "Undef"
  vivify_463:
    $P989 = $P988."value"()
    $P990 = $P987."push"($P989)
.annotate 'line', 468
    .return ($P990)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("72_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_996
    .param pmc param_997
.annotate 'line', 474
    .lex "self", param_996
    .lex "$obj", param_997
    find_lex $P998, "self"
    find_lex $P999, "$?CLASS"
    getattribute $P1000, $P998, $P999, "%!methods"
    unless_null $P1000, vivify_465
    $P1000 = root_new ['parrot';'Hash']
  vivify_465:
    .return ($P1000)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("73_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_1002
    .param pmc param_1003
.annotate 'line', 478
    .lex "self", param_1002
    .lex "$obj", param_1003
    find_lex $P1004, "self"
    find_lex $P1005, "$?CLASS"
    getattribute $P1006, $P1004, $P1005, "$!name"
    unless_null $P1006, vivify_466
    new $P1006, "Undef"
  vivify_466:
    .return ($P1006)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("74_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_1008
    .param pmc param_1009
    .param pmc param_1010 :optional :named("local")
    .param int has_param_1010 :opt_flag
.annotate 'line', 482
    .const 'Sub' $P1021 = "75_1304456120.214" 
    capture_lex $P1021
    .lex "self", param_1008
    .lex "$obj", param_1009
    if has_param_1010, optparam_467
    new $P1011, "Undef"
    set param_1010, $P1011
  optparam_467:
    .lex "$local", param_1010
.annotate 'line', 483
    $P1012 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1012
.annotate 'line', 482
    find_lex $P1013, "@attrs"
    unless_null $P1013, vivify_468
    $P1013 = root_new ['parrot';'ResizablePMCArray']
  vivify_468:
.annotate 'line', 484
    find_lex $P1015, "self"
    find_lex $P1016, "$?CLASS"
    getattribute $P1017, $P1015, $P1016, "%!attributes"
    unless_null $P1017, vivify_469
    $P1017 = root_new ['parrot';'Hash']
  vivify_469:
    defined $I1018, $P1017
    unless $I1018, for_undef_470
    iter $P1014, $P1017
    new $P1028, 'ExceptionHandler'
    set_label $P1028, loop1027_handler
    $P1028."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1028
  loop1027_test:
    unless $P1014, loop1027_done
    shift $P1019, $P1014
  loop1027_redo:
    .const 'Sub' $P1021 = "75_1304456120.214" 
    capture_lex $P1021
    $P1021($P1019)
  loop1027_next:
    goto loop1027_test
  loop1027_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1029, exception, 'type'
    eq $P1029, .CONTROL_LOOP_NEXT, loop1027_next
    eq $P1029, .CONTROL_LOOP_REDO, loop1027_redo
  loop1027_done:
    pop_eh 
  for_undef_470:
    find_lex $P1030, "@attrs"
    unless_null $P1030, vivify_473
    $P1030 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 482
    .return ($P1030)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1020"  :anon :subid("75_1304456120.214") :outer("74_1304456120.214")
    .param pmc param_1022
.annotate 'line', 484
    .lex "$_", param_1022
.annotate 'line', 485
    find_lex $P1023, "@attrs"
    unless_null $P1023, vivify_471
    $P1023 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
    find_lex $P1024, "$_"
    unless_null $P1024, vivify_472
    new $P1024, "Undef"
  vivify_472:
    $P1025 = $P1024."value"()
    $P1026 = $P1023."push"($P1025)
.annotate 'line', 484
    .return ($P1026)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("76_1304456120.214") :outer("52_1304456120.214")
    .param pmc param_1032
    .param pmc param_1033
.annotate 'line', 490
    .lex "self", param_1032
    .lex "$obj", param_1033
    find_lex $P1034, "self"
    find_lex $P1035, "$?CLASS"
    getattribute $P1036, $P1034, $P1035, "@!roles"
    unless_null $P1036, vivify_474
    $P1036 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
    .return ($P1036)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1038"  :subid("77_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 500
    .const 'Sub' $P2006 = "131_1304456120.214" 
    capture_lex $P2006
    .const 'Sub' $P1970 = "129_1304456120.214" 
    capture_lex $P1970
    .const 'Sub' $P1936 = "128_1304456120.214" 
    capture_lex $P1936
    .const 'Sub' $P1899 = "127_1304456120.214" 
    capture_lex $P1899
    .const 'Sub' $P1892 = "126_1304456120.214" 
    capture_lex $P1892
    .const 'Sub' $P1869 = "124_1304456120.214" 
    capture_lex $P1869
    .const 'Sub' $P1863 = "123_1304456120.214" 
    capture_lex $P1863
    .const 'Sub' $P1857 = "122_1304456120.214" 
    capture_lex $P1857
    .const 'Sub' $P1834 = "120_1304456120.214" 
    capture_lex $P1834
    .const 'Sub' $P1827 = "119_1304456120.214" 
    capture_lex $P1827
    .const 'Sub' $P1813 = "118_1304456120.214" 
    capture_lex $P1813
    .const 'Sub' $P1764 = "115_1304456120.214" 
    capture_lex $P1764
    .const 'Sub' $P1719 = "112_1304456120.214" 
    capture_lex $P1719
    .const 'Sub' $P1682 = "109_1304456120.214" 
    capture_lex $P1682
    .const 'Sub' $P1541 = "104_1304456120.214" 
    capture_lex $P1541
    .const 'Sub' $P1435 = "100_1304456120.214" 
    capture_lex $P1435
    .const 'Sub' $P1409 = "99_1304456120.214" 
    capture_lex $P1409
    .const 'Sub' $P1375 = "97_1304456120.214" 
    capture_lex $P1375
    .const 'Sub' $P1368 = "96_1304456120.214" 
    capture_lex $P1368
    .const 'Sub' $P1330 = "94_1304456120.214" 
    capture_lex $P1330
    .const 'Sub' $P1309 = "93_1304456120.214" 
    capture_lex $P1309
    .const 'Sub' $P1288 = "92_1304456120.214" 
    capture_lex $P1288
    .const 'Sub' $P1253 = "91_1304456120.214" 
    capture_lex $P1253
    .const 'Sub' $P1238 = "90_1304456120.214" 
    capture_lex $P1238
    .const 'Sub' $P1231 = "89_1304456120.214" 
    capture_lex $P1231
    .const 'Sub' $P1221 = "88_1304456120.214" 
    capture_lex $P1221
    .const 'Sub' $P1082 = "81_1304456120.214" 
    capture_lex $P1082
    .const 'Sub' $P1040 = "78_1304456120.214" 
    capture_lex $P1040
.annotate 'line', 724
    .const 'Sub' $P1040 = "78_1304456120.214" 
    newclosure $P1081, $P1040
    .lex "compute_c3_mro", $P1081
.annotate 'line', 746
    .const 'Sub' $P1082 = "81_1304456120.214" 
    newclosure $P1218, $P1082
    .lex "c3_merge", $P1218
.annotate 'line', 500
    .lex "$?PACKAGE", $P1219
    .lex "$?CLASS", $P1220
.annotate 'line', 665
    find_lex $P1680, "compute_c3_mro"
    find_lex $P1681, "c3_merge"
.annotate 'line', 930
    .const 'Sub' $P2006 = "131_1304456120.214" 
    newclosure $P2041, $P2006
.annotate 'line', 500
    .return ($P2041)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1043
.annotate 'line', 724
    .const 'Sub' $P1055 = "79_1304456120.214" 
    capture_lex $P1055
    new $P1042, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1042, control_1041
    push_eh $P1042
    .lex "$class", param_1043
.annotate 'line', 725
    $P1044 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1044
.annotate 'line', 728
    $P1045 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1045
.annotate 'line', 725
    find_lex $P1046, "$class"
    unless_null $P1046, vivify_475
    new $P1046, "Undef"
  vivify_475:
    get_how $P1047, $P1046
    find_lex $P1048, "$class"
    unless_null $P1048, vivify_476
    new $P1048, "Undef"
  vivify_476:
    $P1049 = $P1047."parents"($P1048, 1 :named("local"))
    store_lex "@immediate_parents", $P1049
    find_lex $P1050, "@result"
    unless_null $P1050, vivify_477
    $P1050 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
.annotate 'line', 729
    find_lex $P1052, "@immediate_parents"
    unless_null $P1052, vivify_478
    $P1052 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    set $N1053, $P1052
    unless $N1053, if_1051_end
    .const 'Sub' $P1055 = "79_1304456120.214" 
    capture_lex $P1055
    $P1055()
  if_1051_end:
.annotate 'line', 741
    find_lex $P1076, "@result"
    unless_null $P1076, vivify_487
    $P1076 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    find_lex $P1077, "$class"
    unless_null $P1077, vivify_488
    new $P1077, "Undef"
  vivify_488:
    $P1076."unshift"($P1077)
.annotate 'line', 742
    new $P1078, "Exception"
    set $P1078['type'], .CONTROL_RETURN
    find_lex $P1079, "@result"
    unless_null $P1079, vivify_489
    $P1079 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    setattribute $P1078, 'payload', $P1079
    throw $P1078
.annotate 'line', 724
    .return ()
  control_1041:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1080, exception, "payload"
    .return ($P1080)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1054"  :anon :subid("79_1304456120.214") :outer("78_1304456120.214")
.annotate 'line', 729
    .const 'Sub' $P1063 = "80_1304456120.214" 
    capture_lex $P1063
.annotate 'line', 732
    $P1056 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1056
.annotate 'line', 729
    find_lex $P1057, "@merge_list"
    unless_null $P1057, vivify_479
    $P1057 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
.annotate 'line', 733
    find_lex $P1059, "@immediate_parents"
    unless_null $P1059, vivify_480
    $P1059 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
    defined $I1060, $P1059
    unless $I1060, for_undef_481
    iter $P1058, $P1059
    new $P1070, 'ExceptionHandler'
    set_label $P1070, loop1069_handler
    $P1070."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1070
  loop1069_test:
    unless $P1058, loop1069_done
    shift $P1061, $P1058
  loop1069_redo:
    .const 'Sub' $P1063 = "80_1304456120.214" 
    capture_lex $P1063
    $P1063($P1061)
  loop1069_next:
    goto loop1069_test
  loop1069_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1071, exception, 'type'
    eq $P1071, .CONTROL_LOOP_NEXT, loop1069_next
    eq $P1071, .CONTROL_LOOP_REDO, loop1069_redo
  loop1069_done:
    pop_eh 
  for_undef_481:
.annotate 'line', 736
    find_lex $P1072, "@merge_list"
    unless_null $P1072, vivify_484
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
    find_lex $P1073, "@immediate_parents"
    unless_null $P1073, vivify_485
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    $P1072."push"($P1073)
.annotate 'line', 737
    find_lex $P1074, "@merge_list"
    unless_null $P1074, vivify_486
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    $P1075 = "c3_merge"($P1074)
    store_lex "@result", $P1075
.annotate 'line', 729
    .return ($P1075)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1062"  :anon :subid("80_1304456120.214") :outer("79_1304456120.214")
    .param pmc param_1064
.annotate 'line', 733
    .lex "$_", param_1064
.annotate 'line', 734
    find_lex $P1065, "@merge_list"
    unless_null $P1065, vivify_482
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
    find_lex $P1066, "$_"
    unless_null $P1066, vivify_483
    new $P1066, "Undef"
  vivify_483:
    $P1067 = "compute_c3_mro"($P1066)
    $P1068 = $P1065."push"($P1067)
.annotate 'line', 733
    .return ($P1068)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1085
.annotate 'line', 746
    .const 'Sub' $P1178 = "86_1304456120.214" 
    capture_lex $P1178
    .const 'Sub' $P1100 = "82_1304456120.214" 
    capture_lex $P1100
    new $P1084, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1084, control_1083
    push_eh $P1084
    .lex "@merge_list", param_1085
.annotate 'line', 747
    $P1086 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1086
.annotate 'line', 748
    new $P1087, "Undef"
    .lex "$accepted", $P1087
.annotate 'line', 749
    new $P1088, "Undef"
    .lex "$something_accepted", $P1088
.annotate 'line', 750
    new $P1089, "Undef"
    .lex "$cand_count", $P1089
.annotate 'line', 793
    new $P1090, "Undef"
    .lex "$i", $P1090
.annotate 'line', 746
    find_lex $P1091, "@result"
    unless_null $P1091, vivify_490
    $P1091 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    find_lex $P1092, "$accepted"
    unless_null $P1092, vivify_491
    new $P1092, "Undef"
  vivify_491:
.annotate 'line', 749
    new $P1093, "Integer"
    assign $P1093, 0
    store_lex "$something_accepted", $P1093
.annotate 'line', 750
    new $P1094, "Integer"
    assign $P1094, 0
    store_lex "$cand_count", $P1094
.annotate 'line', 753
    find_lex $P1096, "@merge_list"
    unless_null $P1096, vivify_492
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    defined $I1097, $P1096
    unless $I1097, for_undef_493
    iter $P1095, $P1096
    new $P1161, 'ExceptionHandler'
    set_label $P1161, loop1160_handler
    $P1161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1161
  loop1160_test:
    unless $P1095, loop1160_done
    shift $P1098, $P1095
  loop1160_redo:
    .const 'Sub' $P1100 = "82_1304456120.214" 
    capture_lex $P1100
    $P1100($P1098)
  loop1160_next:
    goto loop1160_test
  loop1160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1162, exception, 'type'
    eq $P1162, .CONTROL_LOOP_NEXT, loop1160_next
    eq $P1162, .CONTROL_LOOP_REDO, loop1160_redo
  loop1160_done:
    pop_eh 
  for_undef_493:
.annotate 'line', 783
    find_lex $P1164, "$cand_count"
    unless_null $P1164, vivify_512
    new $P1164, "Undef"
  vivify_512:
    set $N1165, $P1164
    iseq $I1166, $N1165, 0.0
    unless $I1166, if_1163_end
.annotate 'line', 784
    new $P1167, "Exception"
    set $P1167['type'], .CONTROL_RETURN
    find_lex $P1168, "@result"
    unless_null $P1168, vivify_513
    $P1168 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    setattribute $P1167, 'payload', $P1168
    throw $P1167
  if_1163_end:
.annotate 'line', 788
    find_lex $P1170, "$something_accepted"
    unless_null $P1170, vivify_514
    new $P1170, "Undef"
  vivify_514:
    if $P1170, unless_1169_end
.annotate 'line', 789
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1169_end:
.annotate 'line', 793
    new $P1171, "Integer"
    assign $P1171, 0
    store_lex "$i", $P1171
.annotate 'line', 794
    new $P1209, 'ExceptionHandler'
    set_label $P1209, loop1208_handler
    $P1209."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1209
  loop1208_test:
    find_lex $P1172, "$i"
    unless_null $P1172, vivify_515
    new $P1172, "Undef"
  vivify_515:
    set $N1173, $P1172
    find_lex $P1174, "@merge_list"
    unless_null $P1174, vivify_516
    $P1174 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    set $N1175, $P1174
    islt $I1176, $N1173, $N1175
    unless $I1176, loop1208_done
  loop1208_redo:
    .const 'Sub' $P1178 = "86_1304456120.214" 
    capture_lex $P1178
    $P1178()
  loop1208_next:
    goto loop1208_test
  loop1208_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1210, exception, 'type'
    eq $P1210, .CONTROL_LOOP_NEXT, loop1208_next
    eq $P1210, .CONTROL_LOOP_REDO, loop1208_redo
  loop1208_done:
    pop_eh 
.annotate 'line', 807
    find_lex $P1211, "@merge_list"
    unless_null $P1211, vivify_530
    $P1211 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P1212 = "c3_merge"($P1211)
    store_lex "@result", $P1212
.annotate 'line', 808
    find_lex $P1213, "@result"
    unless_null $P1213, vivify_531
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    find_lex $P1214, "$accepted"
    unless_null $P1214, vivify_532
    new $P1214, "Undef"
  vivify_532:
    $P1213."unshift"($P1214)
.annotate 'line', 809
    new $P1215, "Exception"
    set $P1215['type'], .CONTROL_RETURN
    find_lex $P1216, "@result"
    unless_null $P1216, vivify_533
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    setattribute $P1215, 'payload', $P1216
    throw $P1215
.annotate 'line', 746
    .return ()
  control_1083:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1217, exception, "payload"
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1099"  :anon :subid("82_1304456120.214") :outer("81_1304456120.214")
    .param pmc param_1102
.annotate 'line', 753
    .const 'Sub' $P1109 = "83_1304456120.214" 
    capture_lex $P1109
.annotate 'line', 754
    $P1101 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1101
    .lex "$_", param_1102
    find_lex $P1103, "$_"
    unless_null $P1103, vivify_494
    new $P1103, "Undef"
  vivify_494:
    store_lex "@cand_list", $P1103
.annotate 'line', 755
    find_lex $P1106, "@cand_list"
    unless_null $P1106, vivify_495
    $P1106 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    set $N1107, $P1106
    if $N1107, if_1105
    new $P1104, 'Float'
    set $P1104, $N1107
    goto if_1105_end
  if_1105:
    .const 'Sub' $P1109 = "83_1304456120.214" 
    capture_lex $P1109
    $P1159 = $P1109()
    set $P1104, $P1159
  if_1105_end:
.annotate 'line', 753
    .return ($P1104)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1108"  :anon :subid("83_1304456120.214") :outer("82_1304456120.214")
.annotate 'line', 755
    .const 'Sub' $P1122 = "84_1304456120.214" 
    capture_lex $P1122
.annotate 'line', 756
    new $P1110, "Undef"
    .lex "$rejected", $P1110
.annotate 'line', 757
    new $P1111, "Undef"
    .lex "$cand_class", $P1111
.annotate 'line', 756
    new $P1112, "Integer"
    assign $P1112, 0
    store_lex "$rejected", $P1112
.annotate 'line', 757
    find_lex $P1113, "@cand_list"
    unless_null $P1113, vivify_496
    $P1113 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    set $P1114, $P1113[0]
    unless_null $P1114, vivify_497
    new $P1114, "Undef"
  vivify_497:
    store_lex "$cand_class", $P1114
.annotate 'line', 758
    find_lex $P1115, "$cand_count"
    unless_null $P1115, vivify_498
    new $P1115, "Undef"
  vivify_498:
    add $P1116, $P1115, 1
    store_lex "$cand_count", $P1116
.annotate 'line', 759
    find_lex $P1118, "@merge_list"
    unless_null $P1118, vivify_499
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
    defined $I1119, $P1118
    unless $I1119, for_undef_500
    iter $P1117, $P1118
    new $P1157, 'ExceptionHandler'
    set_label $P1157, loop1156_handler
    $P1157."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1157
  loop1156_test:
    unless $P1117, loop1156_done
    shift $P1120, $P1117
  loop1156_redo:
    .const 'Sub' $P1122 = "84_1304456120.214" 
    capture_lex $P1122
    $P1122($P1120)
  loop1156_next:
    goto loop1156_test
  loop1156_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1158, exception, 'type'
    eq $P1158, .CONTROL_LOOP_NEXT, loop1156_next
    eq $P1158, .CONTROL_LOOP_REDO, loop1156_redo
  loop1156_done:
    pop_eh 
  for_undef_500:
.annotate 'line', 755
    .return ($P1117)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1121"  :anon :subid("84_1304456120.214") :outer("83_1304456120.214")
    .param pmc param_1123
.annotate 'line', 759
    .const 'Sub' $P1129 = "85_1304456120.214" 
    capture_lex $P1129
    .lex "$_", param_1123
.annotate 'line', 761
    find_lex $P1125, "$_"
    unless_null $P1125, vivify_501
    new $P1125, "Undef"
  vivify_501:
    find_lex $P1126, "@cand_list"
    unless_null $P1126, vivify_502
    $P1126 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    issame $I1127, $P1125, $P1126
    if $I1127, unless_1124_end
    .const 'Sub' $P1129 = "85_1304456120.214" 
    capture_lex $P1129
    $P1129()
  unless_1124_end:
.annotate 'line', 773
    find_lex $P1152, "$rejected"
    unless_null $P1152, vivify_510
    new $P1152, "Undef"
  vivify_510:
    unless $P1152, unless_1151
    set $P1150, $P1152
    goto unless_1151_end
  unless_1151:
.annotate 'line', 774
    find_lex $P1153, "$cand_class"
    unless_null $P1153, vivify_511
    new $P1153, "Undef"
  vivify_511:
    store_lex "$accepted", $P1153
.annotate 'line', 775
    new $P1154, "Integer"
    assign $P1154, 1
    store_lex "$something_accepted", $P1154
.annotate 'line', 776
    set $I1155, .CONTROL_LOOP_LAST
    die 0, $I1155
  unless_1151_end:
.annotate 'line', 759
    .return ($P1150)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1128"  :anon :subid("85_1304456120.214") :outer("84_1304456120.214")
.annotate 'line', 763
    new $P1130, "Undef"
    .lex "$cur_pos", $P1130
    new $P1131, "Integer"
    assign $P1131, 1
    store_lex "$cur_pos", $P1131
.annotate 'line', 764
    new $P1148, 'ExceptionHandler'
    set_label $P1148, loop1147_handler
    $P1148."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1148
  loop1147_test:
    find_lex $P1132, "$cur_pos"
    unless_null $P1132, vivify_503
    new $P1132, "Undef"
  vivify_503:
    set $N1133, $P1132
    find_lex $P1134, "$_"
    unless_null $P1134, vivify_504
    new $P1134, "Undef"
  vivify_504:
    set $N1135, $P1134
    isle $I1136, $N1133, $N1135
    unless $I1136, loop1147_done
  loop1147_redo:
.annotate 'line', 765
    find_lex $P1138, "$cur_pos"
    unless_null $P1138, vivify_505
    new $P1138, "Undef"
  vivify_505:
    set $I1139, $P1138
    find_lex $P1140, "$_"
    unless_null $P1140, vivify_506
    $P1140 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    set $P1141, $P1140[$I1139]
    unless_null $P1141, vivify_507
    new $P1141, "Undef"
  vivify_507:
    find_lex $P1142, "$cand_class"
    unless_null $P1142, vivify_508
    new $P1142, "Undef"
  vivify_508:
    issame $I1143, $P1141, $P1142
    unless $I1143, if_1137_end
.annotate 'line', 766
    new $P1144, "Integer"
    assign $P1144, 1
    store_lex "$rejected", $P1144
  if_1137_end:
.annotate 'line', 768
    find_lex $P1145, "$cur_pos"
    unless_null $P1145, vivify_509
    new $P1145, "Undef"
  vivify_509:
    add $P1146, $P1145, 1
    store_lex "$cur_pos", $P1146
  loop1147_next:
.annotate 'line', 764
    goto loop1147_test
  loop1147_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1149, exception, 'type'
    eq $P1149, .CONTROL_LOOP_NEXT, loop1147_next
    eq $P1149, .CONTROL_LOOP_REDO, loop1147_redo
  loop1147_done:
    pop_eh 
.annotate 'line', 761
    .return ($I1136)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1177"  :anon :subid("86_1304456120.214") :outer("81_1304456120.214")
.annotate 'line', 794
    .const 'Sub' $P1189 = "87_1304456120.214" 
    capture_lex $P1189
.annotate 'line', 795
    $P1179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1179
.annotate 'line', 794
    find_lex $P1180, "@new_list"
    unless_null $P1180, vivify_517
    $P1180 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
.annotate 'line', 796
    find_lex $P1182, "$i"
    unless_null $P1182, vivify_518
    new $P1182, "Undef"
  vivify_518:
    set $I1183, $P1182
    find_lex $P1184, "@merge_list"
    unless_null $P1184, vivify_519
    $P1184 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $P1185, $P1184[$I1183]
    unless_null $P1185, vivify_520
    new $P1185, "Undef"
  vivify_520:
    defined $I1186, $P1185
    unless $I1186, for_undef_521
    iter $P1181, $P1185
    new $P1200, 'ExceptionHandler'
    set_label $P1200, loop1199_handler
    $P1200."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1200
  loop1199_test:
    unless $P1181, loop1199_done
    shift $P1187, $P1181
  loop1199_redo:
    .const 'Sub' $P1189 = "87_1304456120.214" 
    capture_lex $P1189
    $P1189($P1187)
  loop1199_next:
    goto loop1199_test
  loop1199_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1201, exception, 'type'
    eq $P1201, .CONTROL_LOOP_NEXT, loop1199_next
    eq $P1201, .CONTROL_LOOP_REDO, loop1199_redo
  loop1199_done:
    pop_eh 
  for_undef_521:
.annotate 'line', 801
    find_lex $P1202, "@new_list"
    unless_null $P1202, vivify_526
    $P1202 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    find_lex $P1203, "$i"
    unless_null $P1203, vivify_527
    new $P1203, "Undef"
  vivify_527:
    set $I1204, $P1203
    find_lex $P1205, "@merge_list"
    unless_null $P1205, vivify_528
    $P1205 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1205
  vivify_528:
    set $P1205[$I1204], $P1202
.annotate 'line', 802
    find_lex $P1206, "$i"
    unless_null $P1206, vivify_529
    new $P1206, "Undef"
  vivify_529:
    add $P1207, $P1206, 1
    store_lex "$i", $P1207
.annotate 'line', 794
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1188"  :anon :subid("87_1304456120.214") :outer("86_1304456120.214")
    .param pmc param_1190
.annotate 'line', 796
    .lex "$_", param_1190
.annotate 'line', 797
    find_lex $P1193, "$_"
    unless_null $P1193, vivify_522
    new $P1193, "Undef"
  vivify_522:
    find_lex $P1194, "$accepted"
    unless_null $P1194, vivify_523
    new $P1194, "Undef"
  vivify_523:
    issame $I1195, $P1193, $P1194
    unless $I1195, unless_1192
    new $P1191, 'Integer'
    set $P1191, $I1195
    goto unless_1192_end
  unless_1192:
.annotate 'line', 798
    find_lex $P1196, "@new_list"
    unless_null $P1196, vivify_524
    $P1196 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    find_lex $P1197, "$_"
    unless_null $P1197, vivify_525
    new $P1197, "Undef"
  vivify_525:
    $P1198 = $P1196."push"($P1197)
.annotate 'line', 797
    set $P1191, $P1198
  unless_1192_end:
.annotate 'line', 796
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("88_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1222
    .param pmc param_1223 :optional :named("name")
    .param int has_param_1223 :opt_flag
.annotate 'line', 537
    .lex "self", param_1222
    if has_param_1223, optparam_534
    new $P1224, "Undef"
    set param_1223, $P1224
  optparam_534:
    .lex "$name", param_1223
.annotate 'line', 538
    new $P1225, "Undef"
    .lex "$obj", $P1225
    find_lex $P1226, "self"
    repr_instance_of $P1227, $P1226
    store_lex "$obj", $P1227
.annotate 'line', 539
    find_lex $P1228, "$obj"
    unless_null $P1228, vivify_535
    new $P1228, "Undef"
  vivify_535:
    find_lex $P1229, "$name"
    unless_null $P1229, vivify_536
    new $P1229, "Undef"
  vivify_536:
    $P1228."BUILD"($P1229 :named("name"))
    find_lex $P1230, "$obj"
    unless_null $P1230, vivify_537
    new $P1230, "Undef"
  vivify_537:
.annotate 'line', 537
    .return ($P1230)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("89_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1232
    .param pmc param_1233 :optional :named("name")
    .param int has_param_1233 :opt_flag
.annotate 'line', 543
    .lex "self", param_1232
    if has_param_1233, optparam_538
    new $P1234, "Undef"
    set param_1233, $P1234
  optparam_538:
    .lex "$name", param_1233
.annotate 'line', 544
    find_lex $P1235, "$name"
    unless_null $P1235, vivify_539
    new $P1235, "Undef"
  vivify_539:
    find_lex $P1236, "self"
    find_lex $P1237, "$?CLASS"
    setattribute $P1236, $P1237, "$!name", $P1235
.annotate 'line', 543
    .return ($P1235)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("90_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1239
    .param pmc param_1240 :optional :named("name")
    .param int has_param_1240 :opt_flag
    .param pmc param_1242 :optional :named("repr")
    .param int has_param_1242 :opt_flag
.annotate 'line', 549
    .lex "self", param_1239
    if has_param_1240, optparam_540
    new $P1241, "String"
    assign $P1241, "<anon>"
    set param_1240, $P1241
  optparam_540:
    .lex "$name", param_1240
    if has_param_1242, optparam_541
    new $P1243, "String"
    assign $P1243, "P6opaque"
    set param_1242, $P1243
  optparam_541:
    .lex "$repr", param_1242
.annotate 'line', 550
    new $P1244, "Undef"
    .lex "$metaclass", $P1244
    find_lex $P1245, "self"
    find_lex $P1246, "$name"
    unless_null $P1246, vivify_542
    new $P1246, "Undef"
  vivify_542:
    $P1247 = $P1245."new"($P1246 :named("name"))
    store_lex "$metaclass", $P1247
.annotate 'line', 552
    find_lex $P1248, "$metaclass"
    unless_null $P1248, vivify_543
    new $P1248, "Undef"
  vivify_543:
    find_lex $P1249, "$repr"
    unless_null $P1249, vivify_544
    new $P1249, "Undef"
  vivify_544:
    set $S1250, $P1249
    repr_type_object_for $P1251, $P1248, $S1250
    $P1252 = root_new ['parrot';'Hash']
    set_who $P1251, $P1252
.annotate 'line', 549
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("91_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1254
    .param pmc param_1255
    .param pmc param_1256
    .param pmc param_1257
.annotate 'line', 556
    .lex "self", param_1254
    .lex "$obj", param_1255
    .lex "$name", param_1256
    .lex "$code_obj", param_1257
.annotate 'line', 557
    find_lex $P1259, "$name"
    unless_null $P1259, vivify_545
    new $P1259, "Undef"
  vivify_545:
    find_lex $P1260, "self"
    find_lex $P1261, "$?CLASS"
    getattribute $P1262, $P1260, $P1261, "%!methods"
    unless_null $P1262, vivify_546
    $P1262 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1263, $P1262[$P1259]
    unless_null $P1263, vivify_547
    new $P1263, "Undef"
  vivify_547:
    unless $P1263, if_1258_end
.annotate 'line', 558
    new $P1264, "String"
    assign $P1264, "This class already has a method named "
    find_lex $P1265, "$name"
    unless_null $P1265, vivify_548
    new $P1265, "Undef"
  vivify_548:
    concat $P1266, $P1264, $P1265
    die $P1266
  if_1258_end:
.annotate 'line', 560
    find_lex $P1270, "$code_obj"
    unless_null $P1270, vivify_549
    new $P1270, "Undef"
  vivify_549:
    isnull $I1271, $P1270
    unless $I1271, unless_1269
    new $P1268, 'Integer'
    set $P1268, $I1271
    goto unless_1269_end
  unless_1269:
    find_lex $P1272, "$code_obj"
    unless_null $P1272, vivify_550
    new $P1272, "Undef"
  vivify_550:
    isa $I1273, $P1272, "Undef"
    new $P1268, 'Integer'
    set $P1268, $I1273
  unless_1269_end:
    unless $P1268, if_1267_end
.annotate 'line', 561
    new $P1274, 'String'
    set $P1274, "Cannot add a null method '"
    find_lex $P1275, "$name"
    unless_null $P1275, vivify_551
    new $P1275, "Undef"
  vivify_551:
    concat $P1276, $P1274, $P1275
    concat $P1277, $P1276, "' to class '"
    find_lex $P1278, "self"
    find_lex $P1279, "$?CLASS"
    getattribute $P1280, $P1278, $P1279, "$!name"
    unless_null $P1280, vivify_552
    new $P1280, "Undef"
  vivify_552:
    concat $P1281, $P1277, $P1280
    concat $P1282, $P1281, "'"
    die $P1282
  if_1267_end:
.annotate 'line', 563
    find_lex $P1283, "$code_obj"
    unless_null $P1283, vivify_553
    new $P1283, "Undef"
  vivify_553:
    find_lex $P1284, "$name"
    unless_null $P1284, vivify_554
    new $P1284, "Undef"
  vivify_554:
    find_lex $P1285, "self"
    find_lex $P1286, "$?CLASS"
    getattribute $P1287, $P1285, $P1286, "%!methods"
    unless_null $P1287, vivify_555
    $P1287 = root_new ['parrot';'Hash']
    setattribute $P1285, $P1286, "%!methods", $P1287
  vivify_555:
    set $P1287[$P1284], $P1283
.annotate 'line', 556
    .return ($P1283)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("92_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1289
    .param pmc param_1290
    .param pmc param_1291
    .param pmc param_1292
.annotate 'line', 566
    .lex "self", param_1289
    .lex "$obj", param_1290
    .lex "$name", param_1291
    .lex "$code_obj", param_1292
.annotate 'line', 572
    $P1293 = root_new ['parrot';'Hash']
    .lex "%todo", $P1293
.annotate 'line', 566
    find_lex $P1294, "%todo"
    unless_null $P1294, vivify_556
    $P1294 = root_new ['parrot';'Hash']
  vivify_556:
.annotate 'line', 573
    find_lex $P1295, "$name"
    unless_null $P1295, vivify_557
    new $P1295, "Undef"
  vivify_557:
    find_lex $P1296, "%todo"
    unless_null $P1296, vivify_558
    $P1296 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1296
  vivify_558:
    set $P1296["name"], $P1295
.annotate 'line', 574
    find_lex $P1297, "$code_obj"
    unless_null $P1297, vivify_559
    new $P1297, "Undef"
  vivify_559:
    find_lex $P1298, "%todo"
    unless_null $P1298, vivify_560
    $P1298 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1298
  vivify_560:
    set $P1298["code"], $P1297
.annotate 'line', 575
    find_lex $P1299, "%todo"
    unless_null $P1299, vivify_561
    $P1299 = root_new ['parrot';'Hash']
  vivify_561:
    find_lex $P1300, "self"
    find_lex $P1301, "$?CLASS"
    getattribute $P1302, $P1300, $P1301, "@!multi_methods_to_incorporate"
    unless_null $P1302, vivify_562
    $P1302 = root_new ['parrot';'ResizablePMCArray']
  vivify_562:
    set $N1303, $P1302
    set $I1304, $N1303
    find_lex $P1305, "self"
    find_lex $P1306, "$?CLASS"
    getattribute $P1307, $P1305, $P1306, "@!multi_methods_to_incorporate"
    unless_null $P1307, vivify_563
    $P1307 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1305, $P1306, "@!multi_methods_to_incorporate", $P1307
  vivify_563:
    set $P1307[$I1304], $P1299
    find_lex $P1308, "$code_obj"
    unless_null $P1308, vivify_564
    new $P1308, "Undef"
  vivify_564:
.annotate 'line', 566
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("93_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'line', 579
    .lex "self", param_1310
    .lex "$obj", param_1311
    .lex "$meta_attr", param_1312
.annotate 'line', 580
    new $P1313, "Undef"
    .lex "$name", $P1313
    find_lex $P1314, "$meta_attr"
    unless_null $P1314, vivify_565
    new $P1314, "Undef"
  vivify_565:
    $P1315 = $P1314."name"()
    store_lex "$name", $P1315
.annotate 'line', 581
    find_lex $P1317, "$name"
    unless_null $P1317, vivify_566
    new $P1317, "Undef"
  vivify_566:
    find_lex $P1318, "self"
    find_lex $P1319, "$?CLASS"
    getattribute $P1320, $P1318, $P1319, "%!attributes"
    unless_null $P1320, vivify_567
    $P1320 = root_new ['parrot';'Hash']
  vivify_567:
    set $P1321, $P1320[$P1317]
    unless_null $P1321, vivify_568
    new $P1321, "Undef"
  vivify_568:
    unless $P1321, if_1316_end
.annotate 'line', 582
    new $P1322, "String"
    assign $P1322, "This class already has an attribute named "
    find_lex $P1323, "$name"
    unless_null $P1323, vivify_569
    new $P1323, "Undef"
  vivify_569:
    concat $P1324, $P1322, $P1323
    die $P1324
  if_1316_end:
.annotate 'line', 584
    find_lex $P1325, "$meta_attr"
    unless_null $P1325, vivify_570
    new $P1325, "Undef"
  vivify_570:
    find_lex $P1326, "$name"
    unless_null $P1326, vivify_571
    new $P1326, "Undef"
  vivify_571:
    find_lex $P1327, "self"
    find_lex $P1328, "$?CLASS"
    getattribute $P1329, $P1327, $P1328, "%!attributes"
    unless_null $P1329, vivify_572
    $P1329 = root_new ['parrot';'Hash']
    setattribute $P1327, $P1328, "%!attributes", $P1329
  vivify_572:
    set $P1329[$P1326], $P1325
.annotate 'line', 579
    .return ($P1325)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("94_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1331
    .param pmc param_1332
    .param pmc param_1333
.annotate 'line', 587
    .const 'Sub' $P1345 = "95_1304456120.214" 
    capture_lex $P1345
    .lex "self", param_1331
    .lex "$obj", param_1332
    .lex "$parent", param_1333
.annotate 'line', 588
    find_lex $P1335, "self"
    find_lex $P1336, "$?CLASS"
    getattribute $P1337, $P1335, $P1336, "$!composed"
    unless_null $P1337, vivify_573
    new $P1337, "Undef"
  vivify_573:
    unless $P1337, if_1334_end
.annotate 'line', 589
    die "NQPClassHOW does not support adding parents after being composed."
  if_1334_end:
.annotate 'line', 591
    find_lex $P1339, "self"
    find_lex $P1340, "$?CLASS"
    getattribute $P1341, $P1339, $P1340, "@!parents"
    unless_null $P1341, vivify_574
    $P1341 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    defined $I1342, $P1341
    unless $I1342, for_undef_575
    iter $P1338, $P1341
    new $P1357, 'ExceptionHandler'
    set_label $P1357, loop1356_handler
    $P1357."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1357
  loop1356_test:
    unless $P1338, loop1356_done
    shift $P1343, $P1338
  loop1356_redo:
    .const 'Sub' $P1345 = "95_1304456120.214" 
    capture_lex $P1345
    $P1345($P1343)
  loop1356_next:
    goto loop1356_test
  loop1356_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1358, exception, 'type'
    eq $P1358, .CONTROL_LOOP_NEXT, loop1356_next
    eq $P1358, .CONTROL_LOOP_REDO, loop1356_redo
  loop1356_done:
    pop_eh 
  for_undef_575:
.annotate 'line', 596
    find_lex $P1359, "$parent"
    unless_null $P1359, vivify_579
    new $P1359, "Undef"
  vivify_579:
    find_lex $P1360, "self"
    find_lex $P1361, "$?CLASS"
    getattribute $P1362, $P1360, $P1361, "@!parents"
    unless_null $P1362, vivify_580
    $P1362 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $N1363, $P1362
    set $I1364, $N1363
    find_lex $P1365, "self"
    find_lex $P1366, "$?CLASS"
    getattribute $P1367, $P1365, $P1366, "@!parents"
    unless_null $P1367, vivify_581
    $P1367 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1365, $P1366, "@!parents", $P1367
  vivify_581:
    set $P1367[$I1364], $P1359
.annotate 'line', 587
    .return ($P1359)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1344"  :anon :subid("95_1304456120.214") :outer("94_1304456120.214")
    .param pmc param_1346
.annotate 'line', 591
    .lex "$_", param_1346
.annotate 'line', 592
    find_lex $P1349, "$_"
    unless_null $P1349, vivify_576
    new $P1349, "Undef"
  vivify_576:
    find_lex $P1350, "$parent"
    unless_null $P1350, vivify_577
    new $P1350, "Undef"
  vivify_577:
    issame $I1351, $P1349, $P1350
    if $I1351, if_1348
    new $P1347, 'Integer'
    set $P1347, $I1351
    goto if_1348_end
  if_1348:
.annotate 'line', 593
    new $P1352, "String"
    assign $P1352, "Already have "
    find_lex $P1353, "$parent"
    unless_null $P1353, vivify_578
    new $P1353, "Undef"
  vivify_578:
    concat $P1354, $P1352, $P1353
    concat $P1355, $P1354, " as a parent class."
    die $P1355
  if_1348_end:
.annotate 'line', 591
    .return ($P1347)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("96_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1369
    .param pmc param_1370
    .param pmc param_1371
.annotate 'line', 599
    .lex "self", param_1369
    .lex "$obj", param_1370
    .lex "$parent", param_1371
.annotate 'line', 600
    find_lex $P1372, "$parent"
    unless_null $P1372, vivify_582
    new $P1372, "Undef"
  vivify_582:
    find_lex $P1373, "self"
    find_lex $P1374, "$?CLASS"
    setattribute $P1373, $P1374, "$!default_parent", $P1372
.annotate 'line', 599
    .return ($P1372)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("97_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1376
    .param pmc param_1377
    .param pmc param_1378
.annotate 'line', 603
    .const 'Sub' $P1386 = "98_1304456120.214" 
    capture_lex $P1386
    .lex "self", param_1376
    .lex "$obj", param_1377
    .lex "$role", param_1378
.annotate 'line', 604
    find_lex $P1380, "self"
    find_lex $P1381, "$?CLASS"
    getattribute $P1382, $P1380, $P1381, "@!roles"
    unless_null $P1382, vivify_583
    $P1382 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    defined $I1383, $P1382
    unless $I1383, for_undef_584
    iter $P1379, $P1382
    new $P1398, 'ExceptionHandler'
    set_label $P1398, loop1397_handler
    $P1398."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1398
  loop1397_test:
    unless $P1379, loop1397_done
    shift $P1384, $P1379
  loop1397_redo:
    .const 'Sub' $P1386 = "98_1304456120.214" 
    capture_lex $P1386
    $P1386($P1384)
  loop1397_next:
    goto loop1397_test
  loop1397_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1399, exception, 'type'
    eq $P1399, .CONTROL_LOOP_NEXT, loop1397_next
    eq $P1399, .CONTROL_LOOP_REDO, loop1397_redo
  loop1397_done:
    pop_eh 
  for_undef_584:
.annotate 'line', 609
    find_lex $P1400, "$role"
    unless_null $P1400, vivify_588
    new $P1400, "Undef"
  vivify_588:
    find_lex $P1401, "self"
    find_lex $P1402, "$?CLASS"
    getattribute $P1403, $P1401, $P1402, "@!roles"
    unless_null $P1403, vivify_589
    $P1403 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    set $N1404, $P1403
    set $I1405, $N1404
    find_lex $P1406, "self"
    find_lex $P1407, "$?CLASS"
    getattribute $P1408, $P1406, $P1407, "@!roles"
    unless_null $P1408, vivify_590
    $P1408 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1406, $P1407, "@!roles", $P1408
  vivify_590:
    set $P1408[$I1405], $P1400
.annotate 'line', 603
    .return ($P1400)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1385"  :anon :subid("98_1304456120.214") :outer("97_1304456120.214")
    .param pmc param_1387
.annotate 'line', 604
    .lex "$_", param_1387
.annotate 'line', 605
    find_lex $P1390, "$_"
    unless_null $P1390, vivify_585
    new $P1390, "Undef"
  vivify_585:
    find_lex $P1391, "$role"
    unless_null $P1391, vivify_586
    new $P1391, "Undef"
  vivify_586:
    issame $I1392, $P1390, $P1391
    if $I1392, if_1389
    new $P1388, 'Integer'
    set $P1388, $I1392
    goto if_1389_end
  if_1389:
.annotate 'line', 606
    new $P1393, "String"
    assign $P1393, "The role "
    find_lex $P1394, "$role"
    unless_null $P1394, vivify_587
    new $P1394, "Undef"
  vivify_587:
    concat $P1395, $P1393, $P1394
    concat $P1396, $P1395, " has already been added."
    die $P1396
  if_1389_end:
.annotate 'line', 604
    .return ($P1388)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("99_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1410
    .param pmc param_1411
    .param pmc param_1412
    .param pmc param_1413
.annotate 'line', 612
    .lex "self", param_1410
    .lex "$obj", param_1411
    .lex "$name", param_1412
    .lex "$meth", param_1413
.annotate 'line', 613
    find_lex $P1415, "$name"
    unless_null $P1415, vivify_591
    new $P1415, "Undef"
  vivify_591:
    find_lex $P1416, "self"
    find_lex $P1417, "$?CLASS"
    getattribute $P1418, $P1416, $P1417, "%!parrot_vtable_mapping"
    unless_null $P1418, vivify_592
    $P1418 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1419, $P1418[$P1415]
    unless_null $P1419, vivify_593
    new $P1419, "Undef"
  vivify_593:
    defined $I1420, $P1419
    unless $I1420, if_1414_end
.annotate 'line', 614
    new $P1421, "String"
    assign $P1421, "Class '"
    find_lex $P1422, "self"
    find_lex $P1423, "$?CLASS"
    getattribute $P1424, $P1422, $P1423, "$!name"
    unless_null $P1424, vivify_594
    new $P1424, "Undef"
  vivify_594:
    concat $P1425, $P1421, $P1424
    concat $P1426, $P1425, "' already has a Parrot v-table override for '"
    find_lex $P1427, "$name"
    unless_null $P1427, vivify_595
    new $P1427, "Undef"
  vivify_595:
    concat $P1428, $P1426, $P1427
.annotate 'line', 615
    concat $P1429, $P1428, "'"
.annotate 'line', 616
    die $P1429
  if_1414_end:
.annotate 'line', 618
    find_lex $P1430, "$meth"
    unless_null $P1430, vivify_596
    new $P1430, "Undef"
  vivify_596:
    find_lex $P1431, "$name"
    unless_null $P1431, vivify_597
    new $P1431, "Undef"
  vivify_597:
    find_lex $P1432, "self"
    find_lex $P1433, "$?CLASS"
    getattribute $P1434, $P1432, $P1433, "%!parrot_vtable_mapping"
    unless_null $P1434, vivify_598
    $P1434 = root_new ['parrot';'Hash']
    setattribute $P1432, $P1433, "%!parrot_vtable_mapping", $P1434
  vivify_598:
    set $P1434[$P1431], $P1430
.annotate 'line', 612
    .return ($P1430)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("100_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1436
    .param pmc param_1437
.annotate 'line', 621
    .const 'Sub' $P1526 = "103_1304456120.214" 
    capture_lex $P1526
    .const 'Sub' $P1443 = "101_1304456120.214" 
    capture_lex $P1443
    .lex "self", param_1436
    .lex "$obj", param_1437
.annotate 'line', 625
    find_lex $P1439, "self"
    find_lex $P1440, "$?CLASS"
    getattribute $P1441, $P1439, $P1440, "@!roles"
    unless_null $P1441, vivify_599
    $P1441 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    unless $P1441, if_1438_end
    .const 'Sub' $P1443 = "101_1304456120.214" 
    capture_lex $P1443
    $P1443()
  if_1438_end:
.annotate 'line', 638
    find_lex $P1491, "self"
    find_lex $P1492, "$?CLASS"
    getattribute $P1493, $P1491, $P1492, "@!parents"
    unless_null $P1493, vivify_616
    $P1493 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    set $N1494, $P1493
    iseq $I1495, $N1494, 0.0
    if $I1495, if_1490
    new $P1489, 'Integer'
    set $P1489, $I1495
    goto if_1490_end
  if_1490:
    find_lex $P1496, "self"
    find_lex $P1497, "$?CLASS"
    getattribute $P1498, $P1496, $P1497, "$!name"
    unless_null $P1498, vivify_617
    new $P1498, "Undef"
  vivify_617:
    set $S1499, $P1498
    isne $I1500, $S1499, "NQPMu"
    new $P1489, 'Integer'
    set $P1489, $I1500
  if_1490_end:
    unless $P1489, if_1488_end
.annotate 'line', 639
    find_lex $P1501, "self"
    find_lex $P1502, "$obj"
    unless_null $P1502, vivify_618
    new $P1502, "Undef"
  vivify_618:
    find_lex $P1503, "self"
    find_lex $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "$!default_parent"
    unless_null $P1505, vivify_619
    new $P1505, "Undef"
  vivify_619:
    $P1501."add_parent"($P1502, $P1505)
  if_1488_end:
.annotate 'line', 644
    find_lex $P1507, "self"
    find_lex $P1508, "$?CLASS"
    getattribute $P1509, $P1507, $P1508, "$!composed"
    unless_null $P1509, vivify_620
    new $P1509, "Undef"
  vivify_620:
    if $P1509, unless_1506_end
.annotate 'line', 645
    find_lex $P1510, "$obj"
    unless_null $P1510, vivify_621
    new $P1510, "Undef"
  vivify_621:
    $P1511 = "compute_c3_mro"($P1510)
    find_lex $P1512, "self"
    find_lex $P1513, "$?CLASS"
    setattribute $P1512, $P1513, "@!mro", $P1511
.annotate 'line', 646
    new $P1514, "Integer"
    assign $P1514, 1
    find_lex $P1515, "self"
    find_lex $P1516, "$?CLASS"
    setattribute $P1515, $P1516, "$!composed", $P1514
  unless_1506_end:
.annotate 'line', 650
    find_lex $P1517, "self"
    find_lex $P1518, "$obj"
    unless_null $P1518, vivify_622
    new $P1518, "Undef"
  vivify_622:
    $P1517."incorporate_multi_candidates"($P1518)
.annotate 'line', 653
    find_lex $P1520, "self"
    find_lex $P1521, "$obj"
    unless_null $P1521, vivify_623
    new $P1521, "Undef"
  vivify_623:
    $P1522 = $P1520."attributes"($P1521, "0" :named("local"))
    defined $I1523, $P1522
    unless $I1523, for_undef_624
    iter $P1519, $P1522
    new $P1532, 'ExceptionHandler'
    set_label $P1532, loop1531_handler
    $P1532."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1532
  loop1531_test:
    unless $P1519, loop1531_done
    shift $P1524, $P1519
  loop1531_redo:
    .const 'Sub' $P1526 = "103_1304456120.214" 
    capture_lex $P1526
    $P1526($P1524)
  loop1531_next:
    goto loop1531_test
  loop1531_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1533, exception, 'type'
    eq $P1533, .CONTROL_LOOP_NEXT, loop1531_next
    eq $P1533, .CONTROL_LOOP_REDO, loop1531_redo
  loop1531_done:
    pop_eh 
  for_undef_624:
.annotate 'line', 656
    find_lex $P1534, "self"
    find_lex $P1535, "$obj"
    unless_null $P1535, vivify_627
    new $P1535, "Undef"
  vivify_627:
    $P1534."publish_type_cache"($P1535)
.annotate 'line', 657
    find_lex $P1536, "self"
    find_lex $P1537, "$obj"
    unless_null $P1537, vivify_628
    new $P1537, "Undef"
  vivify_628:
    $P1536."publish_method_cache"($P1537)
.annotate 'line', 660
    find_lex $P1538, "self"
    find_lex $P1539, "$obj"
    unless_null $P1539, vivify_629
    new $P1539, "Undef"
  vivify_629:
    $P1538."publish_parrot_vtable_mapping"($P1539)
    find_lex $P1540, "$obj"
    unless_null $P1540, vivify_630
    new $P1540, "Undef"
  vivify_630:
.annotate 'line', 621
    .return ($P1540)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1442"  :anon :subid("101_1304456120.214") :outer("100_1304456120.214")
.annotate 'line', 625
    .const 'Sub' $P1453 = "102_1304456120.214" 
    capture_lex $P1453
.annotate 'line', 626
    $P1444 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1444
.annotate 'line', 625
    find_lex $P1445, "@instantiated_roles"
    unless_null $P1445, vivify_600
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
.annotate 'line', 627
    find_lex $P1447, "self"
    find_lex $P1448, "$?CLASS"
    getattribute $P1449, $P1447, $P1448, "@!roles"
    unless_null $P1449, vivify_601
    $P1449 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    defined $I1450, $P1449
    unless $I1450, for_undef_602
    iter $P1446, $P1449
    new $P1482, 'ExceptionHandler'
    set_label $P1482, loop1481_handler
    $P1482."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1482
  loop1481_test:
    unless $P1446, loop1481_done
    shift $P1451, $P1446
  loop1481_redo:
    .const 'Sub' $P1453 = "102_1304456120.214" 
    capture_lex $P1453
    $P1453($P1451)
  loop1481_next:
    goto loop1481_test
  loop1481_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1483, exception, 'type'
    eq $P1483, .CONTROL_LOOP_NEXT, loop1481_next
    eq $P1483, .CONTROL_LOOP_REDO, loop1481_redo
  loop1481_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 633
    find_lex $P1484, "RoleToClassApplier"
    find_lex $P1485, "$obj"
    unless_null $P1485, vivify_614
    new $P1485, "Undef"
  vivify_614:
    find_lex $P1486, "@instantiated_roles"
    unless_null $P1486, vivify_615
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    $P1487 = $P1484."apply"($P1485, $P1486)
.annotate 'line', 625
    .return ($P1487)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1452"  :anon :subid("102_1304456120.214") :outer("101_1304456120.214")
    .param pmc param_1455
.annotate 'line', 628
    new $P1454, "Undef"
    .lex "$ins", $P1454
    .lex "$_", param_1455
    find_lex $P1456, "$_"
    unless_null $P1456, vivify_603
    new $P1456, "Undef"
  vivify_603:
    get_how $P1457, $P1456
    find_lex $P1458, "$_"
    unless_null $P1458, vivify_604
    new $P1458, "Undef"
  vivify_604:
    find_lex $P1459, "$obj"
    unless_null $P1459, vivify_605
    new $P1459, "Undef"
  vivify_605:
    $P1460 = $P1457."instantiate"($P1458, $P1459)
    store_lex "$ins", $P1460
.annotate 'line', 629
    find_lex $P1461, "@instantiated_roles"
    unless_null $P1461, vivify_606
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_606:
    find_lex $P1462, "$ins"
    unless_null $P1462, vivify_607
    new $P1462, "Undef"
  vivify_607:
    $P1461."push"($P1462)
.annotate 'line', 630
    find_lex $P1463, "$_"
    unless_null $P1463, vivify_608
    new $P1463, "Undef"
  vivify_608:
    find_lex $P1464, "self"
    find_lex $P1465, "$?CLASS"
    getattribute $P1466, $P1464, $P1465, "@!done"
    unless_null $P1466, vivify_609
    $P1466 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    set $N1467, $P1466
    set $I1468, $N1467
    find_lex $P1469, "self"
    find_lex $P1470, "$?CLASS"
    getattribute $P1471, $P1469, $P1470, "@!done"
    unless_null $P1471, vivify_610
    $P1471 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1469, $P1470, "@!done", $P1471
  vivify_610:
    set $P1471[$I1468], $P1463
.annotate 'line', 631
    find_lex $P1472, "$ins"
    unless_null $P1472, vivify_611
    new $P1472, "Undef"
  vivify_611:
    find_lex $P1473, "self"
    find_lex $P1474, "$?CLASS"
    getattribute $P1475, $P1473, $P1474, "@!done"
    unless_null $P1475, vivify_612
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_612:
    set $N1476, $P1475
    set $I1477, $N1476
    find_lex $P1478, "self"
    find_lex $P1479, "$?CLASS"
    getattribute $P1480, $P1478, $P1479, "@!done"
    unless_null $P1480, vivify_613
    $P1480 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1478, $P1479, "@!done", $P1480
  vivify_613:
    set $P1480[$I1477], $P1472
.annotate 'line', 627
    .return ($P1472)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1525"  :anon :subid("103_1304456120.214") :outer("100_1304456120.214")
    .param pmc param_1527
.annotate 'line', 653
    .lex "$_", param_1527
    find_lex $P1528, "$_"
    unless_null $P1528, vivify_625
    new $P1528, "Undef"
  vivify_625:
    find_lex $P1529, "$obj"
    unless_null $P1529, vivify_626
    new $P1529, "Undef"
  vivify_626:
    $P1530 = $P1528."compose"($P1529)
    .return ($P1530)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("104_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1542
    .param pmc param_1543
.annotate 'line', 665
    .const 'Sub' $P1558 = "105_1304456120.214" 
    capture_lex $P1558
    .lex "self", param_1542
    .lex "$obj", param_1543
.annotate 'line', 666
    new $P1544, "Undef"
    .lex "$num_todo", $P1544
.annotate 'line', 667
    new $P1545, "Undef"
    .lex "$i", $P1545
.annotate 'line', 666
    find_lex $P1546, "self"
    find_lex $P1547, "$?CLASS"
    getattribute $P1548, $P1546, $P1547, "@!multi_methods_to_incorporate"
    unless_null $P1548, vivify_631
    $P1548 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    set $N1549, $P1548
    new $P1550, 'Float'
    set $P1550, $N1549
    store_lex "$num_todo", $P1550
.annotate 'line', 667
    new $P1551, "Integer"
    assign $P1551, 0
    store_lex "$i", $P1551
.annotate 'line', 668
    new $P1678, 'ExceptionHandler'
    set_label $P1678, loop1677_handler
    $P1678."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1678
  loop1677_test:
    find_lex $P1552, "$i"
    unless_null $P1552, vivify_632
    new $P1552, "Undef"
  vivify_632:
    set $N1553, $P1552
    find_lex $P1554, "$num_todo"
    unless_null $P1554, vivify_633
    new $P1554, "Undef"
  vivify_633:
    set $N1555, $P1554
    isne $I1556, $N1553, $N1555
    unless $I1556, loop1677_done
  loop1677_redo:
    .const 'Sub' $P1558 = "105_1304456120.214" 
    capture_lex $P1558
    $P1558()
  loop1677_next:
    goto loop1677_test
  loop1677_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1679, exception, 'type'
    eq $P1679, .CONTROL_LOOP_NEXT, loop1677_next
    eq $P1679, .CONTROL_LOOP_REDO, loop1677_redo
  loop1677_done:
    pop_eh 
.annotate 'line', 665
    .return ($I1556)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1557"  :anon :subid("105_1304456120.214") :outer("104_1304456120.214")
.annotate 'line', 668
    .const 'Sub' $P1594 = "106_1304456120.214" 
    capture_lex $P1594
.annotate 'line', 670
    new $P1559, "Undef"
    .lex "$name", $P1559
.annotate 'line', 671
    new $P1560, "Undef"
    .lex "$code", $P1560
.annotate 'line', 675
    new $P1561, "Undef"
    .lex "$dispatcher", $P1561
.annotate 'line', 670
    find_lex $P1562, "$i"
    unless_null $P1562, vivify_634
    new $P1562, "Undef"
  vivify_634:
    set $I1563, $P1562
    find_lex $P1564, "self"
    find_lex $P1565, "$?CLASS"
    getattribute $P1566, $P1564, $P1565, "@!multi_methods_to_incorporate"
    unless_null $P1566, vivify_635
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_635:
    set $P1567, $P1566[$I1563]
    unless_null $P1567, vivify_636
    $P1567 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1568, $P1567["name"]
    unless_null $P1568, vivify_637
    new $P1568, "Undef"
  vivify_637:
    store_lex "$name", $P1568
.annotate 'line', 671
    find_lex $P1569, "$i"
    unless_null $P1569, vivify_638
    new $P1569, "Undef"
  vivify_638:
    set $I1570, $P1569
    find_lex $P1571, "self"
    find_lex $P1572, "$?CLASS"
    getattribute $P1573, $P1571, $P1572, "@!multi_methods_to_incorporate"
    unless_null $P1573, vivify_639
    $P1573 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1574, $P1573[$I1570]
    unless_null $P1574, vivify_640
    $P1574 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1575, $P1574["code"]
    unless_null $P1575, vivify_641
    new $P1575, "Undef"
  vivify_641:
    store_lex "$code", $P1575
.annotate 'line', 675
    find_lex $P1576, "$name"
    unless_null $P1576, vivify_642
    new $P1576, "Undef"
  vivify_642:
    find_lex $P1577, "self"
    find_lex $P1578, "$?CLASS"
    getattribute $P1579, $P1577, $P1578, "%!methods"
    unless_null $P1579, vivify_643
    $P1579 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1580, $P1579[$P1576]
    unless_null $P1580, vivify_644
    new $P1580, "Undef"
  vivify_644:
    store_lex "$dispatcher", $P1580
.annotate 'line', 676
    find_lex $P1582, "$dispatcher"
    unless_null $P1582, vivify_645
    new $P1582, "Undef"
  vivify_645:
    defined $I1583, $P1582
    if $I1583, if_1581
.annotate 'line', 686
    .const 'Sub' $P1594 = "106_1304456120.214" 
    capture_lex $P1594
    $P1594()
    goto if_1581_end
  if_1581:
.annotate 'line', 679
    find_lex $P1585, "$dispatcher"
    unless_null $P1585, vivify_676
    new $P1585, "Undef"
  vivify_676:
    is_dispatcher $I1586, $P1585
    if $I1586, if_1584
.annotate 'line', 683
    new $P1589, 'String'
    set $P1589, "Cannot have a multi candidate for "
    find_lex $P1590, "$name"
    unless_null $P1590, vivify_677
    new $P1590, "Undef"
  vivify_677:
    concat $P1591, $P1589, $P1590
    concat $P1592, $P1591, " when an only method is also in the class"
    die $P1592
.annotate 'line', 682
    goto if_1584_end
  if_1584:
.annotate 'line', 680
    find_lex $P1587, "$dispatcher"
    unless_null $P1587, vivify_678
    new $P1587, "Undef"
  vivify_678:
    find_lex $P1588, "$code"
    unless_null $P1588, vivify_679
    new $P1588, "Undef"
  vivify_679:
    push_dispatchee $P1587, $P1588
  if_1584_end:
  if_1581_end:
.annotate 'line', 719
    find_lex $P1675, "$i"
    unless_null $P1675, vivify_680
    new $P1675, "Undef"
  vivify_680:
    add $P1676, $P1675, 1
    store_lex "$i", $P1676
.annotate 'line', 668
    .return ($P1676)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1593"  :anon :subid("106_1304456120.214") :outer("105_1304456120.214")
.annotate 'line', 686
    .const 'Sub' $P1611 = "107_1304456120.214" 
    capture_lex $P1611
.annotate 'line', 688
    new $P1595, "Undef"
    .lex "$j", $P1595
.annotate 'line', 689
    new $P1596, "Undef"
    .lex "$found", $P1596
.annotate 'line', 688
    new $P1597, "Integer"
    assign $P1597, 1
    store_lex "$j", $P1597
.annotate 'line', 689
    new $P1598, "Integer"
    assign $P1598, 0
    store_lex "$found", $P1598
.annotate 'line', 690
    new $P1666, 'ExceptionHandler'
    set_label $P1666, loop1665_handler
    $P1666."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1666
  loop1665_test:
    find_lex $P1601, "$j"
    unless_null $P1601, vivify_646
    new $P1601, "Undef"
  vivify_646:
    set $N1602, $P1601
    find_lex $P1603, "self"
    find_lex $P1604, "$?CLASS"
    getattribute $P1605, $P1603, $P1604, "@!mro"
    unless_null $P1605, vivify_647
    $P1605 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $N1606, $P1605
    isne $I1607, $N1602, $N1606
    if $I1607, if_1600
    new $P1599, 'Integer'
    set $P1599, $I1607
    goto if_1600_end
  if_1600:
    find_lex $P1608, "$found"
    unless_null $P1608, vivify_648
    new $P1608, "Undef"
  vivify_648:
    isfalse $I1609, $P1608
    new $P1599, 'Integer'
    set $P1599, $I1609
  if_1600_end:
    unless $P1599, loop1665_done
  loop1665_redo:
    .const 'Sub' $P1611 = "107_1304456120.214" 
    capture_lex $P1611
    $P1611()
  loop1665_next:
    goto loop1665_test
  loop1665_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1667, exception, 'type'
    eq $P1667, .CONTROL_LOOP_NEXT, loop1665_next
    eq $P1667, .CONTROL_LOOP_REDO, loop1665_redo
  loop1665_done:
    pop_eh 
.annotate 'line', 715
    find_lex $P1670, "$found"
    unless_null $P1670, vivify_674
    new $P1670, "Undef"
  vivify_674:
    unless $P1670, unless_1669
    set $P1668, $P1670
    goto unless_1669_end
  unless_1669:
.annotate 'line', 716
    new $P1671, 'String'
    set $P1671, "Could not find a proto for multi "
    find_lex $P1672, "$name"
    unless_null $P1672, vivify_675
    new $P1672, "Undef"
  vivify_675:
    concat $P1673, $P1671, $P1672
    concat $P1674, $P1673, ", and proto generation is NYI"
    die $P1674
  unless_1669_end:
.annotate 'line', 686
    .return ($P1668)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1610"  :anon :subid("107_1304456120.214") :outer("106_1304456120.214")
.annotate 'line', 690
    .const 'Sub' $P1635 = "108_1304456120.214" 
    capture_lex $P1635
.annotate 'line', 691
    new $P1612, "Undef"
    .lex "$parent", $P1612
.annotate 'line', 692
    $P1613 = root_new ['parrot';'Hash']
    .lex "%meths", $P1613
.annotate 'line', 693
    new $P1614, "Undef"
    .lex "$dispatcher", $P1614
.annotate 'line', 691
    find_lex $P1615, "$j"
    unless_null $P1615, vivify_649
    new $P1615, "Undef"
  vivify_649:
    set $I1616, $P1615
    find_lex $P1617, "self"
    find_lex $P1618, "$?CLASS"
    getattribute $P1619, $P1617, $P1618, "@!mro"
    unless_null $P1619, vivify_650
    $P1619 = root_new ['parrot';'ResizablePMCArray']
  vivify_650:
    set $P1620, $P1619[$I1616]
    unless_null $P1620, vivify_651
    new $P1620, "Undef"
  vivify_651:
    store_lex "$parent", $P1620
.annotate 'line', 692
    find_lex $P1621, "$parent"
    unless_null $P1621, vivify_652
    new $P1621, "Undef"
  vivify_652:
    get_how $P1622, $P1621
    find_lex $P1623, "$parent"
    unless_null $P1623, vivify_653
    new $P1623, "Undef"
  vivify_653:
    $P1624 = $P1622."method_table"($P1623)
    store_lex "%meths", $P1624
.annotate 'line', 693
    find_lex $P1625, "$name"
    unless_null $P1625, vivify_654
    new $P1625, "Undef"
  vivify_654:
    find_lex $P1626, "%meths"
    unless_null $P1626, vivify_655
    $P1626 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1627, $P1626[$P1625]
    unless_null $P1627, vivify_656
    new $P1627, "Undef"
  vivify_656:
    store_lex "$dispatcher", $P1627
.annotate 'line', 694
    find_lex $P1629, "$dispatcher"
    unless_null $P1629, vivify_657
    new $P1629, "Undef"
  vivify_657:
    defined $I1630, $P1629
    unless $I1630, if_1628_end
.annotate 'line', 697
    find_lex $P1632, "$dispatcher"
    unless_null $P1632, vivify_658
    new $P1632, "Undef"
  vivify_658:
    is_dispatcher $I1633, $P1632
    if $I1633, if_1631
.annotate 'line', 710
    new $P1659, 'String'
    set $P1659, "Could not find a proto for multi "
    find_lex $P1660, "$name"
    unless_null $P1660, vivify_659
    new $P1660, "Undef"
  vivify_659:
    concat $P1661, $P1659, $P1660
    concat $P1662, $P1661, " (it may exist, but an only is hiding it if so)"
    die $P1662
.annotate 'line', 709
    goto if_1631_end
  if_1631:
.annotate 'line', 697
    .const 'Sub' $P1635 = "108_1304456120.214" 
    capture_lex $P1635
    $P1635()
  if_1631_end:
  if_1628_end:
.annotate 'line', 713
    find_lex $P1663, "$j"
    unless_null $P1663, vivify_673
    new $P1663, "Undef"
  vivify_673:
    add $P1664, $P1663, 1
    store_lex "$j", $P1664
.annotate 'line', 690
    .return ($P1664)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1634"  :anon :subid("108_1304456120.214") :outer("107_1304456120.214")
.annotate 'line', 699
    $P1636 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1636
.annotate 'line', 701
    new $P1637, "Undef"
    .lex "$new_disp", $P1637
.annotate 'line', 702
    new $P1638, "Undef"
    .lex "$clone_callback", $P1638
.annotate 'line', 697
    find_lex $P1639, "@new_dispatchees"
    unless_null $P1639, vivify_660
    $P1639 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
.annotate 'line', 700
    find_lex $P1640, "$code"
    unless_null $P1640, vivify_661
    new $P1640, "Undef"
  vivify_661:
    find_lex $P1641, "@new_dispatchees"
    unless_null $P1641, vivify_662
    $P1641 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1641
  vivify_662:
    set $P1641[0], $P1640
.annotate 'line', 701
    find_lex $P1642, "$dispatcher"
    unless_null $P1642, vivify_663
    new $P1642, "Undef"
  vivify_663:
    find_lex $P1643, "@new_dispatchees"
    unless_null $P1643, vivify_664
    $P1643 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    create_dispatch_and_add_candidates $P1644, $P1642, $P1643
    store_lex "$new_disp", $P1644
.annotate 'line', 702
    find_lex $P1645, "$dispatcher"
    unless_null $P1645, vivify_665
    new $P1645, "Undef"
  vivify_665:
    getprop $P1646, "CLONE_CALLBACK", $P1645
    store_lex "$clone_callback", $P1646
.annotate 'line', 703
    find_lex $P1648, "$clone_callback"
    unless_null $P1648, vivify_666
    new $P1648, "Undef"
  vivify_666:
    defined $I1649, $P1648
    unless $I1649, if_1647_end
.annotate 'line', 704
    find_lex $P1650, "$clone_callback"
    unless_null $P1650, vivify_667
    new $P1650, "Undef"
  vivify_667:
    find_lex $P1651, "$dispatcher"
    unless_null $P1651, vivify_668
    new $P1651, "Undef"
  vivify_668:
    find_lex $P1652, "$new_disp"
    unless_null $P1652, vivify_669
    new $P1652, "Undef"
  vivify_669:
    $P1650($P1651, $P1652)
  if_1647_end:
.annotate 'line', 706
    find_lex $P1653, "$new_disp"
    unless_null $P1653, vivify_670
    new $P1653, "Undef"
  vivify_670:
    find_lex $P1654, "$name"
    unless_null $P1654, vivify_671
    new $P1654, "Undef"
  vivify_671:
    find_lex $P1655, "self"
    find_lex $P1656, "$?CLASS"
    getattribute $P1657, $P1655, $P1656, "%!methods"
    unless_null $P1657, vivify_672
    $P1657 = root_new ['parrot';'Hash']
    setattribute $P1655, $P1656, "%!methods", $P1657
  vivify_672:
    set $P1657[$P1654], $P1653
.annotate 'line', 707
    new $P1658, "Integer"
    assign $P1658, 1
    store_lex "$found", $P1658
.annotate 'line', 697
    .return ($P1658)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("109_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1683
    .param pmc param_1684
.annotate 'line', 812
    .const 'Sub' $P1709 = "111_1304456120.214" 
    capture_lex $P1709
    .const 'Sub' $P1694 = "110_1304456120.214" 
    capture_lex $P1694
    .lex "self", param_1683
    .lex "$obj", param_1684
.annotate 'line', 813
    $P1685 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1685
.annotate 'line', 812
    find_lex $P1686, "@tc"
    unless_null $P1686, vivify_681
    $P1686 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
.annotate 'line', 814
    find_lex $P1688, "self"
    find_lex $P1689, "$?CLASS"
    getattribute $P1690, $P1688, $P1689, "@!mro"
    unless_null $P1690, vivify_682
    $P1690 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    defined $I1691, $P1690
    unless $I1691, for_undef_683
    iter $P1687, $P1690
    new $P1700, 'ExceptionHandler'
    set_label $P1700, loop1699_handler
    $P1700."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1700
  loop1699_test:
    unless $P1687, loop1699_done
    shift $P1692, $P1687
  loop1699_redo:
    .const 'Sub' $P1694 = "110_1304456120.214" 
    capture_lex $P1694
    $P1694($P1692)
  loop1699_next:
    goto loop1699_test
  loop1699_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1701, exception, 'type'
    eq $P1701, .CONTROL_LOOP_NEXT, loop1699_next
    eq $P1701, .CONTROL_LOOP_REDO, loop1699_redo
  loop1699_done:
    pop_eh 
  for_undef_683:
.annotate 'line', 815
    find_lex $P1703, "self"
    find_lex $P1704, "$?CLASS"
    getattribute $P1705, $P1703, $P1704, "@!done"
    unless_null $P1705, vivify_686
    $P1705 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    defined $I1706, $P1705
    unless $I1706, for_undef_687
    iter $P1702, $P1705
    new $P1715, 'ExceptionHandler'
    set_label $P1715, loop1714_handler
    $P1715."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1715
  loop1714_test:
    unless $P1702, loop1714_done
    shift $P1707, $P1702
  loop1714_redo:
    .const 'Sub' $P1709 = "111_1304456120.214" 
    capture_lex $P1709
    $P1709($P1707)
  loop1714_next:
    goto loop1714_test
  loop1714_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1716, exception, 'type'
    eq $P1716, .CONTROL_LOOP_NEXT, loop1714_next
    eq $P1716, .CONTROL_LOOP_REDO, loop1714_redo
  loop1714_done:
    pop_eh 
  for_undef_687:
.annotate 'line', 816
    find_lex $P1717, "$obj"
    unless_null $P1717, vivify_690
    new $P1717, "Undef"
  vivify_690:
    find_lex $P1718, "@tc"
    unless_null $P1718, vivify_691
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    publish_type_check_cache $P1717, $P1718
.annotate 'line', 812
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1693"  :anon :subid("110_1304456120.214") :outer("109_1304456120.214")
    .param pmc param_1695
.annotate 'line', 814
    .lex "$_", param_1695
    find_lex $P1696, "@tc"
    unless_null $P1696, vivify_684
    $P1696 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    find_lex $P1697, "$_"
    unless_null $P1697, vivify_685
    new $P1697, "Undef"
  vivify_685:
    $P1698 = $P1696."push"($P1697)
    .return ($P1698)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1708"  :anon :subid("111_1304456120.214") :outer("109_1304456120.214")
    .param pmc param_1710
.annotate 'line', 815
    .lex "$_", param_1710
    find_lex $P1711, "@tc"
    unless_null $P1711, vivify_688
    $P1711 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    find_lex $P1712, "$_"
    unless_null $P1712, vivify_689
    new $P1712, "Undef"
  vivify_689:
    $P1713 = $P1711."push"($P1712)
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("112_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1720
    .param pmc param_1721
.annotate 'line', 819
    .const 'Sub' $P1731 = "113_1304456120.214" 
    capture_lex $P1731
    .lex "self", param_1720
    .lex "$obj", param_1721
.annotate 'line', 822
    $P1722 = root_new ['parrot';'Hash']
    .lex "%cache", $P1722
.annotate 'line', 819
    find_lex $P1723, "%cache"
    unless_null $P1723, vivify_692
    $P1723 = root_new ['parrot';'Hash']
  vivify_692:
.annotate 'line', 823
    find_lex $P1725, "self"
    find_lex $P1726, "$?CLASS"
    getattribute $P1727, $P1725, $P1726, "@!mro"
    unless_null $P1727, vivify_693
    $P1727 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    defined $I1728, $P1727
    unless $I1728, for_undef_694
    iter $P1724, $P1727
    new $P1760, 'ExceptionHandler'
    set_label $P1760, loop1759_handler
    $P1760."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1760
  loop1759_test:
    unless $P1724, loop1759_done
    shift $P1729, $P1724
  loop1759_redo:
    .const 'Sub' $P1731 = "113_1304456120.214" 
    capture_lex $P1731
    $P1731($P1729)
  loop1759_next:
    goto loop1759_test
  loop1759_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1761, exception, 'type'
    eq $P1761, .CONTROL_LOOP_NEXT, loop1759_next
    eq $P1761, .CONTROL_LOOP_REDO, loop1759_redo
  loop1759_done:
    pop_eh 
  for_undef_694:
.annotate 'line', 831
    find_lex $P1762, "$obj"
    unless_null $P1762, vivify_705
    new $P1762, "Undef"
  vivify_705:
    find_lex $P1763, "%cache"
    unless_null $P1763, vivify_706
    $P1763 = root_new ['parrot';'Hash']
  vivify_706:
    publish_method_cache $P1762, $P1763
.annotate 'line', 819
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1730"  :anon :subid("113_1304456120.214") :outer("112_1304456120.214")
    .param pmc param_1733
.annotate 'line', 823
    .const 'Sub' $P1743 = "114_1304456120.214" 
    capture_lex $P1743
.annotate 'line', 824
    $P1732 = root_new ['parrot';'Hash']
    .lex "%methods", $P1732
    .lex "$_", param_1733
    find_lex $P1734, "$_"
    unless_null $P1734, vivify_695
    new $P1734, "Undef"
  vivify_695:
    get_how $P1735, $P1734
    find_lex $P1736, "$_"
    unless_null $P1736, vivify_696
    new $P1736, "Undef"
  vivify_696:
    $P1737 = $P1735."method_table"($P1736)
    store_lex "%methods", $P1737
.annotate 'line', 825
    find_lex $P1739, "%methods"
    unless_null $P1739, vivify_697
    $P1739 = root_new ['parrot';'Hash']
  vivify_697:
    defined $I1740, $P1739
    unless $I1740, for_undef_698
    iter $P1738, $P1739
    new $P1757, 'ExceptionHandler'
    set_label $P1757, loop1756_handler
    $P1757."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1757
  loop1756_test:
    unless $P1738, loop1756_done
    shift $P1741, $P1738
  loop1756_redo:
    .const 'Sub' $P1743 = "114_1304456120.214" 
    capture_lex $P1743
    $P1743($P1741)
  loop1756_next:
    goto loop1756_test
  loop1756_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1758, exception, 'type'
    eq $P1758, .CONTROL_LOOP_NEXT, loop1756_next
    eq $P1758, .CONTROL_LOOP_REDO, loop1756_redo
  loop1756_done:
    pop_eh 
  for_undef_698:
.annotate 'line', 823
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1742"  :anon :subid("114_1304456120.214") :outer("113_1304456120.214")
    .param pmc param_1744
.annotate 'line', 825
    .lex "$_", param_1744
.annotate 'line', 826
    find_lex $P1747, "$_"
    unless_null $P1747, vivify_699
    new $P1747, "Undef"
  vivify_699:
    $P1748 = $P1747."key"()
    find_lex $P1749, "%cache"
    unless_null $P1749, vivify_700
    $P1749 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1750, $P1749[$P1748]
    unless_null $P1750, vivify_701
    new $P1750, "Undef"
  vivify_701:
    unless $P1750, unless_1746
    set $P1745, $P1750
    goto unless_1746_end
  unless_1746:
.annotate 'line', 827
    find_lex $P1751, "$_"
    unless_null $P1751, vivify_702
    new $P1751, "Undef"
  vivify_702:
    $P1752 = $P1751."value"()
    find_lex $P1753, "$_"
    unless_null $P1753, vivify_703
    new $P1753, "Undef"
  vivify_703:
    $P1754 = $P1753."key"()
    find_lex $P1755, "%cache"
    unless_null $P1755, vivify_704
    $P1755 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1755
  vivify_704:
    set $P1755[$P1754], $P1752
.annotate 'line', 826
    set $P1745, $P1752
  unless_1746_end:
.annotate 'line', 825
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("115_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1765
    .param pmc param_1766
.annotate 'line', 834
    .const 'Sub' $P1776 = "116_1304456120.214" 
    capture_lex $P1776
    .lex "self", param_1765
    .lex "$obj", param_1766
.annotate 'line', 835
    $P1767 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1767
.annotate 'line', 834
    find_lex $P1768, "%mapping"
    unless_null $P1768, vivify_707
    $P1768 = root_new ['parrot';'Hash']
  vivify_707:
.annotate 'line', 836
    find_lex $P1770, "self"
    find_lex $P1771, "$?CLASS"
    getattribute $P1772, $P1770, $P1771, "@!mro"
    unless_null $P1772, vivify_708
    $P1772 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    defined $I1773, $P1772
    unless $I1773, for_undef_709
    iter $P1769, $P1772
    new $P1805, 'ExceptionHandler'
    set_label $P1805, loop1804_handler
    $P1805."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1805
  loop1804_test:
    unless $P1769, loop1804_done
    shift $P1774, $P1769
  loop1804_redo:
    .const 'Sub' $P1776 = "116_1304456120.214" 
    capture_lex $P1776
    $P1776($P1774)
  loop1804_next:
    goto loop1804_test
  loop1804_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1806, exception, 'type'
    eq $P1806, .CONTROL_LOOP_NEXT, loop1804_next
    eq $P1806, .CONTROL_LOOP_REDO, loop1804_redo
  loop1804_done:
    pop_eh 
  for_undef_709:
.annotate 'line', 844
    find_lex $P1809, "%mapping"
    unless_null $P1809, vivify_720
    $P1809 = root_new ['parrot';'Hash']
  vivify_720:
    set $N1810, $P1809
    if $N1810, if_1808
    new $P1807, 'Float'
    set $P1807, $N1810
    goto if_1808_end
  if_1808:
.annotate 'line', 845
    find_lex $P1811, "$obj"
    unless_null $P1811, vivify_721
    new $P1811, "Undef"
  vivify_721:
    find_lex $P1812, "%mapping"
    unless_null $P1812, vivify_722
    $P1812 = root_new ['parrot';'Hash']
  vivify_722:
    stable_publish_vtable_mapping $P1811, $P1812
  if_1808_end:
.annotate 'line', 834
    .return ($P1807)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1775"  :anon :subid("116_1304456120.214") :outer("115_1304456120.214")
    .param pmc param_1778
.annotate 'line', 836
    .const 'Sub' $P1788 = "117_1304456120.214" 
    capture_lex $P1788
.annotate 'line', 837
    $P1777 = root_new ['parrot';'Hash']
    .lex "%map", $P1777
    .lex "$_", param_1778
    find_lex $P1779, "$_"
    unless_null $P1779, vivify_710
    new $P1779, "Undef"
  vivify_710:
    get_how $P1780, $P1779
    find_lex $P1781, "$_"
    unless_null $P1781, vivify_711
    new $P1781, "Undef"
  vivify_711:
    $P1782 = $P1780."parrot_vtable_mappings"($P1781, 1 :named("local"))
    store_lex "%map", $P1782
.annotate 'line', 838
    find_lex $P1784, "%map"
    unless_null $P1784, vivify_712
    $P1784 = root_new ['parrot';'Hash']
  vivify_712:
    defined $I1785, $P1784
    unless $I1785, for_undef_713
    iter $P1783, $P1784
    new $P1802, 'ExceptionHandler'
    set_label $P1802, loop1801_handler
    $P1802."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1802
  loop1801_test:
    unless $P1783, loop1801_done
    shift $P1786, $P1783
  loop1801_redo:
    .const 'Sub' $P1788 = "117_1304456120.214" 
    capture_lex $P1788
    $P1788($P1786)
  loop1801_next:
    goto loop1801_test
  loop1801_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1803, exception, 'type'
    eq $P1803, .CONTROL_LOOP_NEXT, loop1801_next
    eq $P1803, .CONTROL_LOOP_REDO, loop1801_redo
  loop1801_done:
    pop_eh 
  for_undef_713:
.annotate 'line', 836
    .return ($P1783)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1787"  :anon :subid("117_1304456120.214") :outer("116_1304456120.214")
    .param pmc param_1789
.annotate 'line', 838
    .lex "$_", param_1789
.annotate 'line', 839
    find_lex $P1792, "$_"
    unless_null $P1792, vivify_714
    new $P1792, "Undef"
  vivify_714:
    $P1793 = $P1792."key"()
    find_lex $P1794, "%mapping"
    unless_null $P1794, vivify_715
    $P1794 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1795, $P1794[$P1793]
    unless_null $P1795, vivify_716
    new $P1795, "Undef"
  vivify_716:
    unless $P1795, unless_1791
    set $P1790, $P1795
    goto unless_1791_end
  unless_1791:
.annotate 'line', 840
    find_lex $P1796, "$_"
    unless_null $P1796, vivify_717
    new $P1796, "Undef"
  vivify_717:
    $P1797 = $P1796."value"()
    find_lex $P1798, "$_"
    unless_null $P1798, vivify_718
    new $P1798, "Undef"
  vivify_718:
    $P1799 = $P1798."key"()
    find_lex $P1800, "%mapping"
    unless_null $P1800, vivify_719
    $P1800 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1800
  vivify_719:
    set $P1800[$P1799], $P1797
.annotate 'line', 839
    set $P1790, $P1797
  unless_1791_end:
.annotate 'line', 838
    .return ($P1790)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("118_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1814
    .param pmc param_1815
    .param pmc param_1816 :optional :named("local")
    .param int has_param_1816 :opt_flag
.annotate 'line', 853
    .lex "self", param_1814
    .lex "$obj", param_1815
    if has_param_1816, optparam_723
    new $P1817, "Undef"
    set param_1816, $P1817
  optparam_723:
    .lex "$local", param_1816
.annotate 'line', 854
    find_lex $P1820, "$local"
    unless_null $P1820, vivify_724
    new $P1820, "Undef"
  vivify_724:
    if $P1820, if_1819
    find_lex $P1824, "self"
    find_lex $P1825, "$?CLASS"
    getattribute $P1826, $P1824, $P1825, "@!mro"
    unless_null $P1826, vivify_725
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    set $P1818, $P1826
    goto if_1819_end
  if_1819:
    find_lex $P1821, "self"
    find_lex $P1822, "$?CLASS"
    getattribute $P1823, $P1821, $P1822, "@!parents"
    unless_null $P1823, vivify_726
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    set $P1818, $P1823
  if_1819_end:
.annotate 'line', 853
    .return ($P1818)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("119_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1828
    .param pmc param_1829
    .param pmc param_1830 :named("local")
.annotate 'line', 857
    .lex "self", param_1828
    .lex "$obj", param_1829
    .lex "$local", param_1830
    find_lex $P1831, "self"
    find_lex $P1832, "$?CLASS"
    getattribute $P1833, $P1831, $P1832, "@!roles"
    unless_null $P1833, vivify_727
    $P1833 = root_new ['parrot';'ResizablePMCArray']
  vivify_727:
    .return ($P1833)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("120_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1835
    .param pmc param_1836
    .param pmc param_1837 :named("local")
.annotate 'line', 861
    .const 'Sub' $P1847 = "121_1304456120.214" 
    capture_lex $P1847
    .lex "self", param_1835
    .lex "$obj", param_1836
    .lex "$local", param_1837
.annotate 'line', 862
    $P1838 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1838
.annotate 'line', 861
    find_lex $P1839, "@meths"
    unless_null $P1839, vivify_728
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
.annotate 'line', 863
    find_lex $P1841, "self"
    find_lex $P1842, "$?CLASS"
    getattribute $P1843, $P1841, $P1842, "%!methods"
    unless_null $P1843, vivify_729
    $P1843 = root_new ['parrot';'Hash']
  vivify_729:
    defined $I1844, $P1843
    unless $I1844, for_undef_730
    iter $P1840, $P1843
    new $P1854, 'ExceptionHandler'
    set_label $P1854, loop1853_handler
    $P1854."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1854
  loop1853_test:
    unless $P1840, loop1853_done
    shift $P1845, $P1840
  loop1853_redo:
    .const 'Sub' $P1847 = "121_1304456120.214" 
    capture_lex $P1847
    $P1847($P1845)
  loop1853_next:
    goto loop1853_test
  loop1853_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1855, exception, 'type'
    eq $P1855, .CONTROL_LOOP_NEXT, loop1853_next
    eq $P1855, .CONTROL_LOOP_REDO, loop1853_redo
  loop1853_done:
    pop_eh 
  for_undef_730:
    find_lex $P1856, "@meths"
    unless_null $P1856, vivify_733
    $P1856 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
.annotate 'line', 861
    .return ($P1856)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1846"  :anon :subid("121_1304456120.214") :outer("120_1304456120.214")
    .param pmc param_1848
.annotate 'line', 863
    .lex "$_", param_1848
.annotate 'line', 864
    find_lex $P1849, "@meths"
    unless_null $P1849, vivify_731
    $P1849 = root_new ['parrot';'ResizablePMCArray']
  vivify_731:
    find_lex $P1850, "$_"
    unless_null $P1850, vivify_732
    new $P1850, "Undef"
  vivify_732:
    $P1851 = $P1850."value"()
    $P1852 = $P1849."push"($P1851)
.annotate 'line', 863
    .return ($P1852)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("122_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1858
    .param pmc param_1859
.annotate 'line', 869
    .lex "self", param_1858
    .lex "$obj", param_1859
    find_lex $P1860, "self"
    find_lex $P1861, "$?CLASS"
    getattribute $P1862, $P1860, $P1861, "%!methods"
    unless_null $P1862, vivify_734
    $P1862 = root_new ['parrot';'Hash']
  vivify_734:
    .return ($P1862)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("123_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1864
    .param pmc param_1865
.annotate 'line', 873
    .lex "self", param_1864
    .lex "$obj", param_1865
    find_lex $P1866, "self"
    find_lex $P1867, "$?CLASS"
    getattribute $P1868, $P1866, $P1867, "$!name"
    unless_null $P1868, vivify_735
    new $P1868, "Undef"
  vivify_735:
    .return ($P1868)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("124_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1870
    .param pmc param_1871
    .param pmc param_1872 :named("local")
.annotate 'line', 877
    .const 'Sub' $P1882 = "125_1304456120.214" 
    capture_lex $P1882
    .lex "self", param_1870
    .lex "$obj", param_1871
    .lex "$local", param_1872
.annotate 'line', 878
    $P1873 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1873
.annotate 'line', 877
    find_lex $P1874, "@attrs"
    unless_null $P1874, vivify_736
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
.annotate 'line', 879
    find_lex $P1876, "self"
    find_lex $P1877, "$?CLASS"
    getattribute $P1878, $P1876, $P1877, "%!attributes"
    unless_null $P1878, vivify_737
    $P1878 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I1879, $P1878
    unless $I1879, for_undef_738
    iter $P1875, $P1878
    new $P1889, 'ExceptionHandler'
    set_label $P1889, loop1888_handler
    $P1889."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1889
  loop1888_test:
    unless $P1875, loop1888_done
    shift $P1880, $P1875
  loop1888_redo:
    .const 'Sub' $P1882 = "125_1304456120.214" 
    capture_lex $P1882
    $P1882($P1880)
  loop1888_next:
    goto loop1888_test
  loop1888_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1890, exception, 'type'
    eq $P1890, .CONTROL_LOOP_NEXT, loop1888_next
    eq $P1890, .CONTROL_LOOP_REDO, loop1888_redo
  loop1888_done:
    pop_eh 
  for_undef_738:
    find_lex $P1891, "@attrs"
    unless_null $P1891, vivify_741
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
.annotate 'line', 877
    .return ($P1891)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1881"  :anon :subid("125_1304456120.214") :outer("124_1304456120.214")
    .param pmc param_1883
.annotate 'line', 879
    .lex "$_", param_1883
.annotate 'line', 880
    find_lex $P1884, "@attrs"
    unless_null $P1884, vivify_739
    $P1884 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1885, "$_"
    unless_null $P1885, vivify_740
    new $P1885, "Undef"
  vivify_740:
    $P1886 = $P1885."value"()
    $P1887 = $P1884."push"($P1886)
.annotate 'line', 879
    .return ($P1887)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("126_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1893
    .param pmc param_1894
    .param pmc param_1895 :named("local")
.annotate 'line', 885
    .lex "self", param_1893
    .lex "$obj", param_1894
    .lex "$local", param_1895
    find_lex $P1896, "self"
    find_lex $P1897, "$?CLASS"
    getattribute $P1898, $P1896, $P1897, "%!parrot_vtable_mapping"
    unless_null $P1898, vivify_742
    $P1898 = root_new ['parrot';'Hash']
  vivify_742:
    .return ($P1898)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("127_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1902
    .param pmc param_1903
    .param pmc param_1904
.annotate 'line', 893
    new $P1901, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1901, control_1900
    push_eh $P1901
    .lex "self", param_1902
    .lex "$obj", param_1903
    .lex "$check", param_1904
.annotate 'line', 894
    new $P1905, "Undef"
    .lex "$check-class", $P1905
.annotate 'line', 895
    new $P1906, "Undef"
    .lex "$i", $P1906
.annotate 'line', 894
    find_lex $P1907, "$check"
    unless_null $P1907, vivify_743
    new $P1907, "Undef"
  vivify_743:
    get_what $P1908, $P1907
    store_lex "$check-class", $P1908
.annotate 'line', 895
    find_lex $P1909, "self"
    find_lex $P1910, "$?CLASS"
    getattribute $P1911, $P1909, $P1910, "@!mro"
    unless_null $P1911, vivify_744
    $P1911 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    set $N1912, $P1911
    new $P1913, 'Float'
    set $P1913, $N1912
    store_lex "$i", $P1913
.annotate 'line', 896
    new $P1931, 'ExceptionHandler'
    set_label $P1931, loop1930_handler
    $P1931."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1931
  loop1930_test:
    find_lex $P1914, "$i"
    unless_null $P1914, vivify_745
    new $P1914, "Undef"
  vivify_745:
    set $N1915, $P1914
    isgt $I1916, $N1915, 0.0
    unless $I1916, loop1930_done
  loop1930_redo:
.annotate 'line', 897
    find_lex $P1917, "$i"
    unless_null $P1917, vivify_746
    new $P1917, "Undef"
  vivify_746:
    sub $P1918, $P1917, 1
    store_lex "$i", $P1918
.annotate 'line', 898
    find_lex $P1920, "$i"
    unless_null $P1920, vivify_747
    new $P1920, "Undef"
  vivify_747:
    set $I1921, $P1920
    find_lex $P1922, "self"
    find_lex $P1923, "$?CLASS"
    getattribute $P1924, $P1922, $P1923, "@!mro"
    unless_null $P1924, vivify_748
    $P1924 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    set $P1925, $P1924[$I1921]
    unless_null $P1925, vivify_749
    new $P1925, "Undef"
  vivify_749:
    find_lex $P1926, "$check-class"
    unless_null $P1926, vivify_750
    new $P1926, "Undef"
  vivify_750:
    issame $I1927, $P1925, $P1926
    unless $I1927, if_1919_end
.annotate 'line', 899
    new $P1928, "Exception"
    set $P1928['type'], .CONTROL_RETURN
    new $P1929, "Integer"
    assign $P1929, 1
    setattribute $P1928, 'payload', $P1929
    throw $P1928
  if_1919_end:
  loop1930_next:
.annotate 'line', 896
    goto loop1930_test
  loop1930_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1932, exception, 'type'
    eq $P1932, .CONTROL_LOOP_NEXT, loop1930_next
    eq $P1932, .CONTROL_LOOP_REDO, loop1930_redo
  loop1930_done:
    pop_eh 
.annotate 'line', 902
    new $P1933, "Exception"
    set $P1933['type'], .CONTROL_RETURN
    new $P1934, "Integer"
    assign $P1934, 0
    setattribute $P1933, 'payload', $P1934
    throw $P1933
.annotate 'line', 893
    .return ()
  control_1900:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1935, exception, "payload"
    .return ($P1935)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("128_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1939
    .param pmc param_1940
    .param pmc param_1941
.annotate 'line', 905
    new $P1938, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1938, control_1937
    push_eh $P1938
    .lex "self", param_1939
    .lex "$obj", param_1940
    .lex "$check", param_1941
.annotate 'line', 906
    new $P1942, "Undef"
    .lex "$i", $P1942
    find_lex $P1943, "self"
    find_lex $P1944, "$?CLASS"
    getattribute $P1945, $P1943, $P1944, "@!done"
    unless_null $P1945, vivify_751
    $P1945 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    set $N1946, $P1945
    new $P1947, 'Float'
    set $P1947, $N1946
    store_lex "$i", $P1947
.annotate 'line', 907
    new $P1965, 'ExceptionHandler'
    set_label $P1965, loop1964_handler
    $P1965."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1965
  loop1964_test:
    find_lex $P1948, "$i"
    unless_null $P1948, vivify_752
    new $P1948, "Undef"
  vivify_752:
    set $N1949, $P1948
    isgt $I1950, $N1949, 0.0
    unless $I1950, loop1964_done
  loop1964_redo:
.annotate 'line', 908
    find_lex $P1951, "$i"
    unless_null $P1951, vivify_753
    new $P1951, "Undef"
  vivify_753:
    sub $P1952, $P1951, 1
    store_lex "$i", $P1952
.annotate 'line', 909
    find_lex $P1954, "$i"
    unless_null $P1954, vivify_754
    new $P1954, "Undef"
  vivify_754:
    set $I1955, $P1954
    find_lex $P1956, "self"
    find_lex $P1957, "$?CLASS"
    getattribute $P1958, $P1956, $P1957, "@!done"
    unless_null $P1958, vivify_755
    $P1958 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    set $P1959, $P1958[$I1955]
    unless_null $P1959, vivify_756
    new $P1959, "Undef"
  vivify_756:
    find_lex $P1960, "$check"
    unless_null $P1960, vivify_757
    new $P1960, "Undef"
  vivify_757:
    issame $I1961, $P1959, $P1960
    unless $I1961, if_1953_end
.annotate 'line', 910
    new $P1962, "Exception"
    set $P1962['type'], .CONTROL_RETURN
    new $P1963, "Integer"
    assign $P1963, 1
    setattribute $P1962, 'payload', $P1963
    throw $P1962
  if_1953_end:
  loop1964_next:
.annotate 'line', 907
    goto loop1964_test
  loop1964_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1966, exception, 'type'
    eq $P1966, .CONTROL_LOOP_NEXT, loop1964_next
    eq $P1966, .CONTROL_LOOP_REDO, loop1964_redo
  loop1964_done:
    pop_eh 
.annotate 'line', 913
    new $P1967, "Exception"
    set $P1967['type'], .CONTROL_RETURN
    new $P1968, "Integer"
    assign $P1968, 0
    setattribute $P1967, 'payload', $P1968
    throw $P1967
.annotate 'line', 905
    .return ()
  control_1937:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1969, exception, "payload"
    .return ($P1969)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("129_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_1973
    .param pmc param_1974
    .param pmc param_1975
.annotate 'line', 916
    .const 'Sub' $P1983 = "130_1304456120.214" 
    capture_lex $P1983
    new $P1972, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1972, control_1971
    push_eh $P1972
    .lex "self", param_1973
    .lex "$obj", param_1974
    .lex "$name", param_1975
.annotate 'line', 917
    find_lex $P1977, "self"
    find_lex $P1978, "$?CLASS"
    getattribute $P1979, $P1977, $P1978, "@!mro"
    unless_null $P1979, vivify_758
    $P1979 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I1980, $P1979
    unless $I1980, for_undef_759
    iter $P1976, $P1979
    new $P2001, 'ExceptionHandler'
    set_label $P2001, loop2000_handler
    $P2001."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2001
  loop2000_test:
    unless $P1976, loop2000_done
    shift $P1981, $P1976
  loop2000_redo:
    .const 'Sub' $P1983 = "130_1304456120.214" 
    capture_lex $P1983
    $P1983($P1981)
  loop2000_next:
    goto loop2000_test
  loop2000_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2002, exception, 'type'
    eq $P2002, .CONTROL_LOOP_NEXT, loop2000_next
    eq $P2002, .CONTROL_LOOP_REDO, loop2000_redo
  loop2000_done:
    pop_eh 
  for_undef_759:
.annotate 'line', 924
    new $P2003, "Exception"
    set $P2003['type'], .CONTROL_RETURN
    new $P2004, "Integer"
    assign $P2004, 0
    setattribute $P2003, 'payload', $P2004
    throw $P2003
.annotate 'line', 916
    .return ()
  control_1971:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2005, exception, "payload"
    .return ($P2005)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1982"  :anon :subid("130_1304456120.214") :outer("129_1304456120.214")
    .param pmc param_1986
.annotate 'line', 918
    $P1984 = root_new ['parrot';'Hash']
    .lex "%meths", $P1984
.annotate 'line', 919
    new $P1985, "Undef"
    .lex "$can", $P1985
    .lex "$_", param_1986
.annotate 'line', 918
    find_lex $P1987, "$_"
    unless_null $P1987, vivify_760
    new $P1987, "Undef"
  vivify_760:
    get_how $P1988, $P1987
    find_lex $P1989, "$obj"
    unless_null $P1989, vivify_761
    new $P1989, "Undef"
  vivify_761:
    $P1990 = $P1988."method_table"($P1989)
    store_lex "%meths", $P1990
.annotate 'line', 919
    find_lex $P1991, "$name"
    unless_null $P1991, vivify_762
    new $P1991, "Undef"
  vivify_762:
    find_lex $P1992, "%meths"
    unless_null $P1992, vivify_763
    $P1992 = root_new ['parrot';'Hash']
  vivify_763:
    set $P1993, $P1992[$P1991]
    unless_null $P1993, vivify_764
    new $P1993, "Undef"
  vivify_764:
    store_lex "$can", $P1993
.annotate 'line', 920
    find_lex $P1996, "$can"
    unless_null $P1996, vivify_765
    new $P1996, "Undef"
  vivify_765:
    defined $I1997, $P1996
    if $I1997, if_1995
    new $P1994, 'Integer'
    set $P1994, $I1997
    goto if_1995_end
  if_1995:
.annotate 'line', 921
    new $P1998, "Exception"
    set $P1998['type'], .CONTROL_RETURN
    find_lex $P1999, "$can"
    unless_null $P1999, vivify_766
    new $P1999, "Undef"
  vivify_766:
    setattribute $P1998, 'payload', $P1999
    throw $P1998
  if_1995_end:
.annotate 'line', 917
    .return ($P1994)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("131_1304456120.214") :outer("77_1304456120.214")
    .param pmc param_2009
    .param pmc param_2010
    .param pmc param_2011
.annotate 'line', 930
    .const 'Sub' $P2019 = "132_1304456120.214" 
    capture_lex $P2019
    new $P2008, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2008, control_2007
    push_eh $P2008
    .lex "self", param_2009
    .lex "$obj", param_2010
    .lex "$name", param_2011
.annotate 'line', 931
    find_lex $P2013, "self"
    find_lex $P2014, "$?CLASS"
    getattribute $P2015, $P2013, $P2014, "@!mro"
    unless_null $P2015, vivify_767
    $P2015 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
    defined $I2016, $P2015
    unless $I2016, for_undef_768
    iter $P2012, $P2015
    new $P2037, 'ExceptionHandler'
    set_label $P2037, loop2036_handler
    $P2037."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2037
  loop2036_test:
    unless $P2012, loop2036_done
    shift $P2017, $P2012
  loop2036_redo:
    .const 'Sub' $P2019 = "132_1304456120.214" 
    capture_lex $P2019
    $P2019($P2017)
  loop2036_next:
    goto loop2036_test
  loop2036_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2038, exception, 'type'
    eq $P2038, .CONTROL_LOOP_NEXT, loop2036_next
    eq $P2038, .CONTROL_LOOP_REDO, loop2036_redo
  loop2036_done:
    pop_eh 
  for_undef_768:
.annotate 'line', 938
    null $P2039
.annotate 'line', 930
    .return ($P2039)
  control_2007:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2040, exception, "payload"
    .return ($P2040)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2018"  :anon :subid("132_1304456120.214") :outer("131_1304456120.214")
    .param pmc param_2022
.annotate 'line', 932
    $P2020 = root_new ['parrot';'Hash']
    .lex "%meths", $P2020
.annotate 'line', 933
    new $P2021, "Undef"
    .lex "$found", $P2021
    .lex "$_", param_2022
.annotate 'line', 932
    find_lex $P2023, "$_"
    unless_null $P2023, vivify_769
    new $P2023, "Undef"
  vivify_769:
    get_how $P2024, $P2023
    find_lex $P2025, "$obj"
    unless_null $P2025, vivify_770
    new $P2025, "Undef"
  vivify_770:
    $P2026 = $P2024."method_table"($P2025)
    store_lex "%meths", $P2026
.annotate 'line', 933
    find_lex $P2027, "$name"
    unless_null $P2027, vivify_771
    new $P2027, "Undef"
  vivify_771:
    find_lex $P2028, "%meths"
    unless_null $P2028, vivify_772
    $P2028 = root_new ['parrot';'Hash']
  vivify_772:
    set $P2029, $P2028[$P2027]
    unless_null $P2029, vivify_773
    new $P2029, "Undef"
  vivify_773:
    store_lex "$found", $P2029
.annotate 'line', 934
    find_lex $P2032, "$found"
    unless_null $P2032, vivify_774
    new $P2032, "Undef"
  vivify_774:
    defined $I2033, $P2032
    if $I2033, if_2031
    new $P2030, 'Integer'
    set $P2030, $I2033
    goto if_2031_end
  if_2031:
.annotate 'line', 935
    new $P2034, "Exception"
    set $P2034['type'], .CONTROL_RETURN
    find_lex $P2035, "$found"
    unless_null $P2035, vivify_775
    new $P2035, "Undef"
  vivify_775:
    setattribute $P2034, 'payload', $P2035
    throw $P2034
  if_2031_end:
.annotate 'line', 931
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2042"  :subid("133_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 943
    .const 'Sub' $P2097 = "141_1304456120.214" 
    capture_lex $P2097
    .const 'Sub' $P2091 = "140_1304456120.214" 
    capture_lex $P2091
    .const 'Sub' $P2087 = "139_1304456120.214" 
    capture_lex $P2087
    .const 'Sub' $P2082 = "138_1304456120.214" 
    capture_lex $P2082
    .const 'Sub' $P2077 = "137_1304456120.214" 
    capture_lex $P2077
    .const 'Sub' $P2063 = "136_1304456120.214" 
    capture_lex $P2063
    .const 'Sub' $P2056 = "135_1304456120.214" 
    capture_lex $P2056
    .const 'Sub' $P2046 = "134_1304456120.214" 
    capture_lex $P2046
    .lex "$?PACKAGE", $P2044
    .lex "$?CLASS", $P2045
.annotate 'line', 983
    .const 'Sub' $P2097 = "141_1304456120.214" 
    newclosure $P2103, $P2097
.annotate 'line', 943
    .return ($P2103)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("134_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2047
    .param pmc param_2048 :optional :named("name")
    .param int has_param_2048 :opt_flag
.annotate 'line', 947
    .lex "self", param_2047
    if has_param_2048, optparam_776
    new $P2049, "Undef"
    set param_2048, $P2049
  optparam_776:
    .lex "$name", param_2048
.annotate 'line', 948
    new $P2050, "Undef"
    .lex "$obj", $P2050
    find_lex $P2051, "self"
    repr_instance_of $P2052, $P2051
    store_lex "$obj", $P2052
.annotate 'line', 949
    find_lex $P2053, "$obj"
    unless_null $P2053, vivify_777
    new $P2053, "Undef"
  vivify_777:
    find_lex $P2054, "$name"
    unless_null $P2054, vivify_778
    new $P2054, "Undef"
  vivify_778:
    $P2053."BUILD"($P2054 :named("name"))
    find_lex $P2055, "$obj"
    unless_null $P2055, vivify_779
    new $P2055, "Undef"
  vivify_779:
.annotate 'line', 947
    .return ($P2055)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("135_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2057
    .param pmc param_2058 :optional :named("name")
    .param int has_param_2058 :opt_flag
.annotate 'line', 953
    .lex "self", param_2057
    if has_param_2058, optparam_780
    new $P2059, "Undef"
    set param_2058, $P2059
  optparam_780:
    .lex "$name", param_2058
.annotate 'line', 954
    find_lex $P2060, "$name"
    unless_null $P2060, vivify_781
    new $P2060, "Undef"
  vivify_781:
    find_lex $P2061, "self"
    find_lex $P2062, "$?CLASS"
    setattribute $P2061, $P2062, "$!name", $P2060
.annotate 'line', 953
    .return ($P2060)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("136_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2064
    .param pmc param_2067 :named("repr")
    .param pmc param_2065 :optional :named("name")
    .param int has_param_2065 :opt_flag
.annotate 'line', 960
    .lex "self", param_2064
    if has_param_2065, optparam_782
    new $P2066, "String"
    assign $P2066, "<anon>"
    set param_2065, $P2066
  optparam_782:
    .lex "$name", param_2065
    .lex "$repr", param_2067
.annotate 'line', 961
    new $P2068, "Undef"
    .lex "$metaclass", $P2068
    find_lex $P2069, "self"
    find_lex $P2070, "$name"
    unless_null $P2070, vivify_783
    new $P2070, "Undef"
  vivify_783:
    $P2071 = $P2069."new"($P2070 :named("name"))
    store_lex "$metaclass", $P2071
.annotate 'line', 963
    find_lex $P2072, "$metaclass"
    unless_null $P2072, vivify_784
    new $P2072, "Undef"
  vivify_784:
    find_lex $P2073, "$repr"
    unless_null $P2073, vivify_785
    new $P2073, "Undef"
  vivify_785:
    set $S2074, $P2073
    repr_type_object_for $P2075, $P2072, $S2074
    $P2076 = root_new ['parrot';'Hash']
    set_who $P2075, $P2076
.annotate 'line', 960
    .return ($P2075)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("137_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2078
    .param pmc param_2079
    .param pmc param_2080
    .param pmc param_2081
.annotate 'line', 967
    .lex "self", param_2078
    .lex "$obj", param_2079
    .lex "$name", param_2080
    .lex "$code_obj", param_2081
.annotate 'line', 968
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 967
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("138_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2083
    .param pmc param_2084
    .param pmc param_2085
    .param pmc param_2086
.annotate 'line', 971
    .lex "self", param_2083
    .lex "$obj", param_2084
    .lex "$name", param_2085
    .lex "$code_obj", param_2086
.annotate 'line', 972
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 971
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("139_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2088
    .param pmc param_2089
    .param pmc param_2090
.annotate 'line', 975
    .lex "self", param_2088
    .lex "$obj", param_2089
    .lex "$meta_attr", param_2090
.annotate 'line', 976
    die "Native types may not have attributes"
.annotate 'line', 975
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("140_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2092
    .param pmc param_2093
.annotate 'line', 979
    .lex "self", param_2092
    .lex "$obj", param_2093
.annotate 'line', 980
    new $P2094, "Integer"
    assign $P2094, 1
    find_lex $P2095, "self"
    find_lex $P2096, "$?CLASS"
    setattribute $P2095, $P2096, "$!composed", $P2094
.annotate 'line', 979
    .return ($P2094)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("141_1304456120.214") :outer("133_1304456120.214")
    .param pmc param_2098
    .param pmc param_2099
.annotate 'line', 983
    .lex "self", param_2098
    .lex "$obj", param_2099
    find_lex $P2100, "self"
    find_lex $P2101, "$?CLASS"
    getattribute $P2102, $P2100, $P2101, "$!name"
    unless_null $P2102, vivify_786
    new $P2102, "Undef"
  vivify_786:
    .return ($P2102)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2104"  :subid("142_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 989
    .const 'Sub' $P2279 = "155_1304456120.214" 
    capture_lex $P2279
    .const 'Sub' $P2198 = "150_1304456120.214" 
    capture_lex $P2198
    .const 'Sub' $P2189 = "149_1304456120.214" 
    capture_lex $P2189
    .const 'Sub' $P2180 = "148_1304456120.214" 
    capture_lex $P2180
    .const 'Sub' $P2175 = "147_1304456120.214" 
    capture_lex $P2175
    .const 'Sub' $P2158 = "146_1304456120.214" 
    capture_lex $P2158
    .const 'Sub' $P2143 = "145_1304456120.214" 
    capture_lex $P2143
    .const 'Sub' $P2106 = "143_1304456120.214" 
    capture_lex $P2106
.annotate 'line', 1049
    .const 'Sub' $P2106 = "143_1304456120.214" 
    newclosure $P2140, $P2106
    .lex "has_method", $P2140
.annotate 'line', 989
    .lex "$?PACKAGE", $P2141
    .lex "$?CLASS", $P2142
.annotate 'line', 1045
    find_lex $P2287, "has_method"
.annotate 'line', 989
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("143_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2109
    .param pmc param_2110
    .param pmc param_2111
.annotate 'line', 1049
    .const 'Sub' $P2123 = "144_1304456120.214" 
    capture_lex $P2123
    new $P2108, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2108, control_2107
    push_eh $P2108
    .lex "$target", param_2109
    .lex "$name", param_2110
    .lex "$local", param_2111
.annotate 'line', 1050
    $P2112 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2112
    find_lex $P2113, "$target"
    unless_null $P2113, vivify_787
    new $P2113, "Undef"
  vivify_787:
    get_how $P2114, $P2113
    find_lex $P2115, "$target"
    unless_null $P2115, vivify_788
    new $P2115, "Undef"
  vivify_788:
    find_lex $P2116, "$local"
    unless_null $P2116, vivify_789
    new $P2116, "Undef"
  vivify_789:
    $P2117 = $P2114."methods"($P2115, $P2116 :named("local"))
    store_lex "@methods", $P2117
.annotate 'line', 1051
    find_lex $P2119, "@methods"
    unless_null $P2119, vivify_790
    $P2119 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    defined $I2120, $P2119
    unless $I2120, for_undef_791
    iter $P2118, $P2119
    new $P2135, 'ExceptionHandler'
    set_label $P2135, loop2134_handler
    $P2135."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2135
  loop2134_test:
    unless $P2118, loop2134_done
    shift $P2121, $P2118
  loop2134_redo:
    .const 'Sub' $P2123 = "144_1304456120.214" 
    capture_lex $P2123
    $P2123($P2121)
  loop2134_next:
    goto loop2134_test
  loop2134_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2136, exception, 'type'
    eq $P2136, .CONTROL_LOOP_NEXT, loop2134_next
    eq $P2136, .CONTROL_LOOP_REDO, loop2134_redo
  loop2134_done:
    pop_eh 
  for_undef_791:
.annotate 'line', 1054
    new $P2137, "Exception"
    set $P2137['type'], .CONTROL_RETURN
    new $P2138, "Integer"
    assign $P2138, 0
    setattribute $P2137, 'payload', $P2138
    throw $P2137
.annotate 'line', 1049
    .return ()
  control_2107:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2139, exception, "payload"
    .return ($P2139)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2122"  :anon :subid("144_1304456120.214") :outer("143_1304456120.214")
    .param pmc param_2124
.annotate 'line', 1051
    .lex "$_", param_2124
.annotate 'line', 1052
    find_lex $P2127, "$_"
    unless_null $P2127, vivify_792
    new $P2127, "Undef"
  vivify_792:
    set $S2128, $P2127
    find_lex $P2129, "$name"
    unless_null $P2129, vivify_793
    new $P2129, "Undef"
  vivify_793:
    set $S2130, $P2129
    iseq $I2131, $S2128, $S2130
    if $I2131, if_2126
    new $P2125, 'Integer'
    set $P2125, $I2131
    goto if_2126_end
  if_2126:
    new $P2132, "Exception"
    set $P2132['type'], .CONTROL_RETURN
    new $P2133, "Integer"
    assign $P2133, 1
    setattribute $P2132, 'payload', $P2133
    throw $P2132
  if_2126_end:
.annotate 'line', 1051
    .return ($P2125)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("145_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2144
    .param pmc param_2145 :named("name")
    .param pmc param_2146 :optional :named("type")
    .param int has_param_2146 :opt_flag
    .param pmc param_2148 :optional :named("box_target")
    .param int has_param_2148 :opt_flag
.annotate 'line', 994
    .lex "self", param_2144
    .lex "$name", param_2145
    if has_param_2146, optparam_794
    new $P2147, "Undef"
    set param_2146, $P2147
  optparam_794:
    .lex "$type", param_2146
    if has_param_2148, optparam_795
    new $P2149, "Undef"
    set param_2148, $P2149
  optparam_795:
    .lex "$box_target", param_2148
.annotate 'line', 995
    new $P2150, "Undef"
    .lex "$attr", $P2150
    find_lex $P2151, "self"
    repr_instance_of $P2152, $P2151
    store_lex "$attr", $P2152
.annotate 'line', 996
    find_lex $P2153, "$attr"
    unless_null $P2153, vivify_796
    new $P2153, "Undef"
  vivify_796:
    find_lex $P2154, "$name"
    unless_null $P2154, vivify_797
    new $P2154, "Undef"
  vivify_797:
    find_lex $P2155, "$type"
    unless_null $P2155, vivify_798
    new $P2155, "Undef"
  vivify_798:
    find_lex $P2156, "$box_target"
    unless_null $P2156, vivify_799
    new $P2156, "Undef"
  vivify_799:
    $P2153."BUILD"($P2154 :named("name"), $P2155 :named("type"), $P2156 :named("box_target"))
    find_lex $P2157, "$attr"
    unless_null $P2157, vivify_800
    new $P2157, "Undef"
  vivify_800:
.annotate 'line', 994
    .return ($P2157)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("146_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2159
    .param pmc param_2160 :optional :named("name")
    .param int has_param_2160 :opt_flag
    .param pmc param_2162 :optional :named("type")
    .param int has_param_2162 :opt_flag
    .param pmc param_2164 :optional :named("box_target")
    .param int has_param_2164 :opt_flag
.annotate 'line', 1000
    .lex "self", param_2159
    if has_param_2160, optparam_801
    new $P2161, "Undef"
    set param_2160, $P2161
  optparam_801:
    .lex "$name", param_2160
    if has_param_2162, optparam_802
    new $P2163, "Undef"
    set param_2162, $P2163
  optparam_802:
    .lex "$type", param_2162
    if has_param_2164, optparam_803
    new $P2165, "Undef"
    set param_2164, $P2165
  optparam_803:
    .lex "$box_target", param_2164
.annotate 'line', 1001
    find_lex $P2166, "$name"
    unless_null $P2166, vivify_804
    new $P2166, "Undef"
  vivify_804:
    find_lex $P2167, "self"
    find_lex $P2168, "$?CLASS"
    setattribute $P2167, $P2168, "$!name", $P2166
.annotate 'line', 1002
    find_lex $P2169, "$type"
    unless_null $P2169, vivify_805
    new $P2169, "Undef"
  vivify_805:
    find_lex $P2170, "self"
    find_lex $P2171, "$?CLASS"
    setattribute $P2170, $P2171, "$!type", $P2169
.annotate 'line', 1003
    find_lex $P2172, "$box_target"
    unless_null $P2172, vivify_806
    new $P2172, "Undef"
  vivify_806:
    find_lex $P2173, "self"
    find_lex $P2174, "$?CLASS"
    setattribute $P2173, $P2174, "$!box_target", $P2172
.annotate 'line', 1000
    .return ($P2172)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("147_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2176
.annotate 'line', 1006
    .lex "self", param_2176
    find_lex $P2177, "self"
    find_lex $P2178, "$?CLASS"
    getattribute $P2179, $P2177, $P2178, "$!name"
    unless_null $P2179, vivify_807
    new $P2179, "Undef"
  vivify_807:
    .return ($P2179)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("148_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2181
.annotate 'line', 1010
    .lex "self", param_2181
.annotate 'line', 1011
    find_lex $P2183, "self"
    find_lex $P2184, "$?CLASS"
    getattribute $P2185, $P2183, $P2184, "$!type"
    unless_null $P2185, vivify_808
    new $P2185, "Undef"
  vivify_808:
    set $P2182, $P2185
    defined $I2187, $P2182
    if $I2187, default_2186
    null $P2188
    set $P2182, $P2188
  default_2186:
.annotate 'line', 1010
    .return ($P2182)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("149_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2190
.annotate 'line', 1014
    .lex "self", param_2190
.annotate 'line', 1015
    find_lex $P2193, "self"
    find_lex $P2194, "$?CLASS"
    getattribute $P2195, $P2193, $P2194, "$!box_target"
    unless_null $P2195, vivify_809
    new $P2195, "Undef"
  vivify_809:
    if $P2195, if_2192
    new $P2197, "Integer"
    assign $P2197, 0
    set $P2191, $P2197
    goto if_2192_end
  if_2192:
    new $P2196, "Integer"
    assign $P2196, 1
    set $P2191, $P2196
  if_2192_end:
.annotate 'line', 1014
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("150_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2199
    .param pmc param_2200
.annotate 'line', 1018
    .const 'Sub' $P2252 = "153_1304456120.214" 
    capture_lex $P2252
    .const 'Sub' $P2212 = "151_1304456120.214" 
    capture_lex $P2212
    .lex "self", param_2199
    .lex "$obj", param_2200
.annotate 'line', 1019
    new $P2201, "Undef"
    .lex "$long_name", $P2201
    find_lex $P2202, "self"
    find_lex $P2203, "$?CLASS"
    getattribute $P2204, $P2202, $P2203, "$!name"
    unless_null $P2204, vivify_810
    new $P2204, "Undef"
  vivify_810:
    set $S2205, $P2204
    new $P2206, 'String'
    set $P2206, $S2205
    store_lex "$long_name", $P2206
.annotate 'line', 1020
    find_lex $P2209, "self"
    $P2210 = $P2209."has_mutator"()
    if $P2210, if_2208
.annotate 'line', 1032
    .const 'Sub' $P2252 = "153_1304456120.214" 
    capture_lex $P2252
    $P2278 = $P2252()
    set $P2207, $P2278
.annotate 'line', 1020
    goto if_2208_end
  if_2208:
    .const 'Sub' $P2212 = "151_1304456120.214" 
    capture_lex $P2212
    $P2250 = $P2212()
    set $P2207, $P2250
  if_2208_end:
.annotate 'line', 1018
    .return ($P2207)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2251"  :anon :subid("153_1304456120.214") :outer("150_1304456120.214")
.annotate 'line', 1032
    .const 'Sub' $P2268 = "154_1304456120.214" 
    capture_lex $P2268
.annotate 'line', 1033
    new $P2253, "Undef"
    .lex "$method", $P2253
    find_lex $P2254, "$long_name"
    unless_null $P2254, vivify_811
    new $P2254, "Undef"
  vivify_811:
    set $S2255, $P2254
    substr $S2256, $S2255, 2
    new $P2257, 'String'
    set $P2257, $S2256
    store_lex "$method", $P2257
.annotate 'line', 1034
    find_lex $P2260, "$obj"
    unless_null $P2260, vivify_812
    new $P2260, "Undef"
  vivify_812:
    find_lex $P2261, "$method"
    unless_null $P2261, vivify_813
    new $P2261, "Undef"
  vivify_813:
    $P2262 = "has_method"($P2260, $P2261, 0)
    unless $P2262, unless_2259
    set $P2258, $P2262
    goto unless_2259_end
  unless_2259:
.annotate 'line', 1035
    find_lex $P2263, "$obj"
    unless_null $P2263, vivify_814
    new $P2263, "Undef"
  vivify_814:
    get_how $P2264, $P2263
    find_lex $P2265, "$obj"
    unless_null $P2265, vivify_815
    new $P2265, "Undef"
  vivify_815:
    find_lex $P2266, "$method"
    unless_null $P2266, vivify_816
    new $P2266, "Undef"
  vivify_816:
.annotate 'line', 1036
    .const 'Sub' $P2268 = "154_1304456120.214" 
    newclosure $P2276, $P2268
    $P2277 = $P2264."add_method"($P2265, $P2266, $P2276)
.annotate 'line', 1034
    set $P2258, $P2277
  unless_2259_end:
.annotate 'line', 1032
    .return ($P2258)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2267"  :anon :subid("154_1304456120.214") :outer("153_1304456120.214")
    .param pmc param_2269
.annotate 'line', 1036
    .lex "self", param_2269
.annotate 'line', 1037
    find_lex $P2270, "self"
    find_lex $P2271, "$obj"
    unless_null $P2271, vivify_817
    new $P2271, "Undef"
  vivify_817:
    get_what $P2272, $P2271
    find_lex $P2273, "$long_name"
    unless_null $P2273, vivify_818
    new $P2273, "Undef"
  vivify_818:
    set $S2274, $P2273
    getattribute $P2275, $P2270, $P2272, $S2274
.annotate 'line', 1036
    .return ($P2275)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2211"  :anon :subid("151_1304456120.214") :outer("150_1304456120.214")
.annotate 'line', 1020
    .const 'Sub' $P2229 = "152_1304456120.214" 
    capture_lex $P2229
.annotate 'line', 1021
    new $P2213, "Undef"
    .lex "$method", $P2213
    find_lex $P2214, "$long_name"
    unless_null $P2214, vivify_819
    new $P2214, "Undef"
  vivify_819:
    set $S2215, $P2214
    substr $S2216, $S2215, 1
    new $P2217, 'String'
    set $P2217, $S2216
    store_lex "$method", $P2217
.annotate 'line', 1022
    find_lex $P2220, "$obj"
    unless_null $P2220, vivify_820
    new $P2220, "Undef"
  vivify_820:
    find_lex $P2221, "$method"
    unless_null $P2221, vivify_821
    new $P2221, "Undef"
  vivify_821:
    $P2222 = "has_method"($P2220, $P2221, 0)
    unless $P2222, unless_2219
    set $P2218, $P2222
    goto unless_2219_end
  unless_2219:
.annotate 'line', 1023
    find_lex $P2223, "$obj"
    unless_null $P2223, vivify_822
    new $P2223, "Undef"
  vivify_822:
    get_how $P2224, $P2223
    find_lex $P2225, "$obj"
    unless_null $P2225, vivify_823
    new $P2225, "Undef"
  vivify_823:
    get_what $P2226, $P2225
    find_lex $P2227, "$method"
    unless_null $P2227, vivify_824
    new $P2227, "Undef"
  vivify_824:
    .const 'Sub' $P2229 = "152_1304456120.214" 
    newclosure $P2248, $P2229
    $P2249 = $P2224."add_method"($P2226, $P2227, $P2248)
.annotate 'line', 1022
    set $P2218, $P2249
  unless_2219_end:
.annotate 'line', 1020
    .return ($P2218)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2228"  :anon :subid("152_1304456120.214") :outer("151_1304456120.214")
    .param pmc param_2230
    .param pmc param_2231 :optional
    .param int has_param_2231 :opt_flag
.annotate 'line', 1023
    .lex "self", param_2230
    if has_param_2231, optparam_825
    new $P2232, "Undef"
    set param_2231, $P2232
  optparam_825:
    .lex "$value", param_2231
.annotate 'line', 1025
    find_lex $P2234, "$value"
    unless_null $P2234, vivify_826
    new $P2234, "Undef"
  vivify_826:
    defined $I2235, $P2234
    unless $I2235, if_2233_end
.annotate 'line', 1024
    find_lex $P2236, "self"
    find_lex $P2237, "$obj"
    unless_null $P2237, vivify_827
    new $P2237, "Undef"
  vivify_827:
    get_what $P2238, $P2237
    find_lex $P2239, "$long_name"
    unless_null $P2239, vivify_828
    new $P2239, "Undef"
  vivify_828:
    set $S2240, $P2239
    find_lex $P2241, "$value"
    unless_null $P2241, vivify_829
    new $P2241, "Undef"
  vivify_829:
    setattribute $P2236, $P2238, $S2240, $P2241
  if_2233_end:
.annotate 'line', 1027
    find_lex $P2242, "self"
    find_lex $P2243, "$obj"
    unless_null $P2243, vivify_830
    new $P2243, "Undef"
  vivify_830:
    get_what $P2244, $P2243
    find_lex $P2245, "$long_name"
    unless_null $P2245, vivify_831
    new $P2245, "Undef"
  vivify_831:
    set $S2246, $P2245
    getattribute $P2247, $P2242, $P2244, $S2246
.annotate 'line', 1023
    .return ($P2247)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("155_1304456120.214") :outer("142_1304456120.214")
    .param pmc param_2280
.annotate 'line', 1045
    .lex "self", param_2280
.annotate 'line', 1046
    find_lex $P2281, "self"
    find_lex $P2282, "$?CLASS"
    getattribute $P2283, $P2281, $P2282, "$!name"
    unless_null $P2283, vivify_832
    new $P2283, "Undef"
  vivify_832:
    set $S2284, $P2283
    substr $S2285, $S2284, 1, 1
    isne $I2286, $S2285, "!"
.annotate 'line', 1045
    .return ($I2286)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2288"  :subid("156_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 1060
    .const 'Sub' $P2344 = "164_1304456120.214" 
    capture_lex $P2344
    .const 'Sub' $P2338 = "163_1304456120.214" 
    capture_lex $P2338
    .const 'Sub' $P2334 = "162_1304456120.214" 
    capture_lex $P2334
    .const 'Sub' $P2329 = "161_1304456120.214" 
    capture_lex $P2329
    .const 'Sub' $P2324 = "160_1304456120.214" 
    capture_lex $P2324
    .const 'Sub' $P2309 = "159_1304456120.214" 
    capture_lex $P2309
    .const 'Sub' $P2302 = "158_1304456120.214" 
    capture_lex $P2302
    .const 'Sub' $P2292 = "157_1304456120.214" 
    capture_lex $P2292
    .lex "$?PACKAGE", $P2290
    .lex "$?CLASS", $P2291
.annotate 'line', 1101
    .const 'Sub' $P2344 = "164_1304456120.214" 
    newclosure $P2350, $P2344
.annotate 'line', 1060
    .return ($P2350)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("157_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2293
    .param pmc param_2294 :optional :named("name")
    .param int has_param_2294 :opt_flag
.annotate 'line', 1064
    .lex "self", param_2293
    if has_param_2294, optparam_833
    new $P2295, "Undef"
    set param_2294, $P2295
  optparam_833:
    .lex "$name", param_2294
.annotate 'line', 1065
    new $P2296, "Undef"
    .lex "$obj", $P2296
    find_lex $P2297, "self"
    repr_instance_of $P2298, $P2297
    store_lex "$obj", $P2298
.annotate 'line', 1066
    find_lex $P2299, "$obj"
    unless_null $P2299, vivify_834
    new $P2299, "Undef"
  vivify_834:
    find_lex $P2300, "$name"
    unless_null $P2300, vivify_835
    new $P2300, "Undef"
  vivify_835:
    $P2299."BUILD"($P2300 :named("name"))
    find_lex $P2301, "$obj"
    unless_null $P2301, vivify_836
    new $P2301, "Undef"
  vivify_836:
.annotate 'line', 1064
    .return ($P2301)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("158_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2303
    .param pmc param_2304 :optional :named("name")
    .param int has_param_2304 :opt_flag
.annotate 'line', 1070
    .lex "self", param_2303
    if has_param_2304, optparam_837
    new $P2305, "Undef"
    set param_2304, $P2305
  optparam_837:
    .lex "$name", param_2304
.annotate 'line', 1071
    find_lex $P2306, "$name"
    unless_null $P2306, vivify_838
    new $P2306, "Undef"
  vivify_838:
    find_lex $P2307, "self"
    find_lex $P2308, "$?CLASS"
    setattribute $P2307, $P2308, "$!name", $P2306
.annotate 'line', 1070
    .return ($P2306)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("159_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2310
    .param pmc param_2311 :optional :named("name")
    .param int has_param_2311 :opt_flag
    .param pmc param_2313 :optional :named("repr")
    .param int has_param_2313 :opt_flag
.annotate 'line', 1076
    .lex "self", param_2310
    if has_param_2311, optparam_839
    new $P2312, "String"
    assign $P2312, "<anon>"
    set param_2311, $P2312
  optparam_839:
    .lex "$name", param_2311
    if has_param_2313, optparam_840
    new $P2314, "String"
    assign $P2314, "P6opaque"
    set param_2313, $P2314
  optparam_840:
    .lex "$repr", param_2313
.annotate 'line', 1077
    new $P2315, "Undef"
    .lex "$metaclass", $P2315
    find_lex $P2316, "self"
    find_lex $P2317, "$name"
    unless_null $P2317, vivify_841
    new $P2317, "Undef"
  vivify_841:
    $P2318 = $P2316."new"($P2317 :named("name"))
    store_lex "$metaclass", $P2318
.annotate 'line', 1079
    find_lex $P2319, "$metaclass"
    unless_null $P2319, vivify_842
    new $P2319, "Undef"
  vivify_842:
    find_lex $P2320, "$repr"
    unless_null $P2320, vivify_843
    new $P2320, "Undef"
  vivify_843:
    set $S2321, $P2320
    repr_type_object_for $P2322, $P2319, $S2321
    $P2323 = root_new ['parrot';'Hash']
    set_who $P2322, $P2323
.annotate 'line', 1076
    .return ($P2322)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("160_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2325
    .param pmc param_2326
    .param pmc param_2327
    .param pmc param_2328
.annotate 'line', 1083
    .lex "self", param_2325
    .lex "$obj", param_2326
    .lex "$name", param_2327
    .lex "$code_obj", param_2328
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("161_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2330
    .param pmc param_2331
    .param pmc param_2332
    .param pmc param_2333
.annotate 'line', 1089
    .lex "self", param_2330
    .lex "$obj", param_2331
    .lex "$name", param_2332
    .lex "$code_obj", param_2333
.annotate 'line', 1090
    die "Modules may not have methods"
.annotate 'line', 1089
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("162_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2335
    .param pmc param_2336
    .param pmc param_2337
.annotate 'line', 1093
    .lex "self", param_2335
    .lex "$obj", param_2336
    .lex "$meta_attr", param_2337
.annotate 'line', 1094
    die "Modules may not have attributes"
.annotate 'line', 1093
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("163_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2339
    .param pmc param_2340
.annotate 'line', 1097
    .lex "self", param_2339
    .lex "$obj", param_2340
.annotate 'line', 1098
    new $P2341, "Integer"
    assign $P2341, 1
    find_lex $P2342, "self"
    find_lex $P2343, "$?CLASS"
    setattribute $P2342, $P2343, "$!composed", $P2341
.annotate 'line', 1097
    .return ($P2341)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("164_1304456120.214") :outer("156_1304456120.214")
    .param pmc param_2345
    .param pmc param_2346
.annotate 'line', 1101
    .lex "self", param_2345
    .lex "$obj", param_2346
    find_lex $P2347, "self"
    find_lex $P2348, "$?CLASS"
    getattribute $P2349, $P2347, $P2348, "$!name"
    unless_null $P2349, vivify_844
    new $P2349, "Undef"
  vivify_844:
    .return ($P2349)
.end


.HLL "nqp"

.namespace []
.sub "_block2351"  :anon :subid("165_1304456120.214") :outer("10_1304456120.214")
.annotate 'line', 1109
    .lex "$?PACKAGE", $P2353
    .lex "$?CLASS", $P2354
.annotate 'line', 1110
    find_lex $P2355, "NQPModuleHOW"
    find_lex $P2356, "$?PACKAGE"
    unless_null $P2356, vivify_845
    new $P2356, "Undef"
    store_lex "$?PACKAGE", $P2356
  vivify_845:
    get_who $P2357, $P2356
    set $P2357["module"], $P2355
.annotate 'line', 1111
    find_lex $P2358, "NQPClassHOW"
    find_lex $P2359, "$?PACKAGE"
    unless_null $P2359, vivify_846
    new $P2359, "Undef"
    store_lex "$?PACKAGE", $P2359
  vivify_846:
    get_who $P2360, $P2359
    set $P2360["class"], $P2358
.annotate 'line', 1112
    find_lex $P2361, "NQPAttribute"
    find_lex $P2362, "$?PACKAGE"
    unless_null $P2362, vivify_847
    new $P2362, "Undef"
    store_lex "$?PACKAGE", $P2362
  vivify_847:
    get_who $P2363, $P2362
    set $P2363["class-attr"], $P2361
.annotate 'line', 1113
    find_lex $P2364, "NQPClassHOW"
    find_lex $P2365, "$?PACKAGE"
    unless_null $P2365, vivify_848
    new $P2365, "Undef"
    store_lex "$?PACKAGE", $P2365
  vivify_848:
    get_who $P2366, $P2365
    set $P2366["grammar"], $P2364
.annotate 'line', 1114
    find_lex $P2367, "NQPAttribute"
    find_lex $P2368, "$?PACKAGE"
    unless_null $P2368, vivify_849
    new $P2368, "Undef"
    store_lex "$?PACKAGE", $P2368
  vivify_849:
    get_who $P2369, $P2368
    set $P2369["grammar-attr"], $P2367
.annotate 'line', 1115
    find_lex $P2370, "NQPParametricRoleHOW"
    find_lex $P2371, "$?PACKAGE"
    unless_null $P2371, vivify_850
    new $P2371, "Undef"
    store_lex "$?PACKAGE", $P2371
  vivify_850:
    get_who $P2372, $P2371
    set $P2372["role"], $P2370
.annotate 'line', 1116
    find_lex $P2373, "NQPAttribute"
    find_lex $P2374, "$?PACKAGE"
    unless_null $P2374, vivify_851
    new $P2374, "Undef"
    store_lex "$?PACKAGE", $P2374
  vivify_851:
    get_who $P2375, $P2374
    set $P2375["role-attr"], $P2373
.annotate 'line', 1117
    find_lex $P2376, "NQPNativeHOW"
    find_lex $P2377, "$?PACKAGE"
    unless_null $P2377, vivify_852
    new $P2377, "Undef"
    store_lex "$?PACKAGE", $P2377
  vivify_852:
    get_who $P2378, $P2377
    set $P2378["native"], $P2376
.annotate 'line', 1109
    .return ($P2376)
.end


.HLL "nqp"

.namespace []
.sub "_block2380" :load :anon :subid("166_1304456120.214")
.annotate 'line', 1
    .const 'Sub' $P2382 = "10_1304456120.214" 
    $P2383 = $P2382()
    .return ($P2383)
.end

