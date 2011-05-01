
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304277412.809")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2564 = "258_1304277412.809" 
    capture_lex $P2564
    .const 'Sub' $P774 = "175_1304277412.809" 
    capture_lex $P774
    .const 'Sub' $P24 = "12_1304277412.809" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1304277412.809" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 828
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 833
    .const 'Sub' $P17 = "11_1304277412.809" 
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
    .const 'Sub' $P24 = "12_1304277412.809" 
    capture_lex $P24
    $P24()
.annotate 'line', 212
    .const 'Sub' $P774 = "175_1304277412.809" 
    capture_lex $P774
    $P774()
.annotate 'line', 825
    .const 'Sub' $P2564 = "258_1304277412.809" 
    capture_lex $P2564
    $P2564()
.annotate 'line', 828
    get_hll_global $P2572, "GLOBAL"
    nqp_get_package_through_who $P2573, $P2572, "Regex"
    nqp_get_package_through_who $P2574, $P2573, "P6Regex"
    get_who $P2575, $P2574
    set $P2576, $P2575["Compiler"]
    $P2577 = $P2576."new"()
    store_lex "$p6regex", $P2577
.annotate 'line', 829
    find_lex $P2578, "$p6regex"
    unless_null $P2578, vivify_1170
    new $P2578, "Undef"
  vivify_1170:
    $P2578."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2579, "$p6regex"
    unless_null $P2579, vivify_1171
    new $P2579, "Undef"
  vivify_1171:
    get_hll_global $P2580, "GLOBAL"
    nqp_get_package_through_who $P2581, $P2580, "Regex"
    nqp_get_package_through_who $P2582, $P2581, "P6Regex"
    get_who $P2583, $P2582
    set $P2584, $P2583["Grammar"]
    $P2579."parsegrammar"($P2584)
.annotate 'line', 831
    find_lex $P2585, "$p6regex"
    unless_null $P2585, vivify_1172
    new $P2585, "Undef"
  vivify_1172:
    get_hll_global $P2586, "GLOBAL"
    nqp_get_package_through_who $P2587, $P2586, "Regex"
    nqp_get_package_through_who $P2588, $P2587, "P6Regex"
    get_who $P2589, $P2588
    set $P2590, $P2589["Actions"]
    $P2585."parseactions"($P2590)
    find_lex $P2591, "MAIN"
    find_lex $P2594, "@ARGS"
    if $P2594, if_2593
    set $P2592, $P2594
    goto if_2593_end
  if_2593:
    .const 'Sub' $P2595 = "11_1304277412.809" 
    find_lex $P2596, "@ARGS"
    $P2597 = $P2595($P2596 :flat)
    set $P2592, $P2597
  if_2593_end:
.annotate 'line', 1
    .return ($P2592)
    .const 'Sub' $P2599 = "260_1304277412.809" 
    .return ($P2599)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post261") :outer("10_1304277412.809")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304277412.809" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2603, "1304277407.992"
    isnull $I2604, $P2603
    if $I2604, if_2602
    .const 'Sub' $P3213 = "10_1304277412.809" 
    $P3214 = $P3213."get_lexinfo"()
    nqp_get_sc_object $P3215, "1304277407.992", 0
    $P3214."set_static_lexpad_value"("GLOBALish", $P3215)
    .const 'Sub' $P3216 = "10_1304277412.809" 
    $P3217 = $P3216."get_lexinfo"()
    $P3217."finish_static_lexpad"()
    .const 'Sub' $P3218 = "10_1304277412.809" 
    $P3219 = $P3218."get_lexinfo"()
    nqp_get_sc_object $P3220, "1304277407.992", 0
    $P3219."set_static_lexpad_value"("$?PACKAGE", $P3220)
    .const 'Sub' $P3221 = "10_1304277412.809" 
    $P3222 = $P3221."get_lexinfo"()
    $P3222."finish_static_lexpad"()
    nqp_get_sc_object $P3223, "1304277407.992", 2
    .const 'Sub' $P3224 = "13_1304277412.809" 
    copy $P3223, $P3224
    nqp_get_sc_object $P3225, "1304277407.992", 3
    .const 'Sub' $P3226 = "14_1304277412.809" 
    copy $P3225, $P3226
    nqp_get_sc_object $P3227, "1304277407.992", 4
    .const 'Sub' $P3228 = "16_1304277412.809" 
    copy $P3227, $P3228
    nqp_get_sc_object $P3229, "1304277407.992", 5
    .const 'Sub' $P3230 = "19_1304277412.809" 
    copy $P3229, $P3230
    nqp_get_sc_object $P3231, "1304277407.992", 6
    .const 'Sub' $P3232 = "21_1304277412.809" 
    copy $P3231, $P3232
    nqp_get_sc_object $P3233, "1304277407.992", 7
    .const 'Sub' $P3234 = "23_1304277412.809" 
    copy $P3233, $P3234
    nqp_get_sc_object $P3235, "1304277407.992", 8
    .const 'Sub' $P3236 = "25_1304277412.809" 
    copy $P3235, $P3236
    nqp_get_sc_object $P3237, "1304277407.992", 9
    .const 'Sub' $P3238 = "27_1304277412.809" 
    copy $P3237, $P3238
    nqp_get_sc_object $P3239, "1304277407.992", 10
    .const 'Sub' $P3240 = "29_1304277412.809" 
    copy $P3239, $P3240
    nqp_get_sc_object $P3241, "1304277407.992", 11
    .const 'Sub' $P3242 = "31_1304277412.809" 
    copy $P3241, $P3242
    nqp_get_sc_object $P3243, "1304277407.992", 12
    .const 'Sub' $P3244 = "33_1304277412.809" 
    copy $P3243, $P3244
    nqp_get_sc_object $P3245, "1304277407.992", 13
    .const 'Sub' $P3246 = "36_1304277412.809" 
    copy $P3245, $P3246
    nqp_get_sc_object $P3247, "1304277407.992", 14
    .const 'Sub' $P3248 = "39_1304277412.809" 
    copy $P3247, $P3248
    nqp_get_sc_object $P3249, "1304277407.992", 15
    .const 'Sub' $P3250 = "40_1304277412.809" 
    copy $P3249, $P3250
    nqp_get_sc_object $P3251, "1304277407.992", 16
    .const 'Sub' $P3252 = "41_1304277412.809" 
    copy $P3251, $P3252
    nqp_get_sc_object $P3253, "1304277407.992", 17
    .const 'Sub' $P3254 = "43_1304277412.809" 
    copy $P3253, $P3254
    nqp_get_sc_object $P3255, "1304277407.992", 18
    .const 'Sub' $P3256 = "45_1304277412.809" 
    copy $P3255, $P3256
    nqp_get_sc_object $P3257, "1304277407.992", 19
    .const 'Sub' $P3258 = "47_1304277412.809" 
    copy $P3257, $P3258
    nqp_get_sc_object $P3259, "1304277407.992", 20
    .const 'Sub' $P3260 = "53_1304277412.809" 
    copy $P3259, $P3260
    nqp_get_sc_object $P3261, "1304277407.992", 21
    .const 'Sub' $P3262 = "55_1304277412.809" 
    copy $P3261, $P3262
    nqp_get_sc_object $P3263, "1304277407.992", 22
    .const 'Sub' $P3264 = "58_1304277412.809" 
    copy $P3263, $P3264
    nqp_get_sc_object $P3265, "1304277407.992", 23
    .const 'Sub' $P3266 = "59_1304277412.809" 
    copy $P3265, $P3266
    nqp_get_sc_object $P3267, "1304277407.992", 24
    .const 'Sub' $P3268 = "60_1304277412.809" 
    copy $P3267, $P3268
    nqp_get_sc_object $P3269, "1304277407.992", 25
    .const 'Sub' $P3270 = "62_1304277412.809" 
    copy $P3269, $P3270
    nqp_get_sc_object $P3271, "1304277407.992", 26
    .const 'Sub' $P3272 = "64_1304277412.809" 
    copy $P3271, $P3272
    nqp_get_sc_object $P3273, "1304277407.992", 27
    .const 'Sub' $P3274 = "66_1304277412.809" 
    copy $P3273, $P3274
    nqp_get_sc_object $P3275, "1304277407.992", 28
    .const 'Sub' $P3276 = "68_1304277412.809" 
    copy $P3275, $P3276
    nqp_get_sc_object $P3277, "1304277407.992", 29
    .const 'Sub' $P3278 = "70_1304277412.809" 
    copy $P3277, $P3278
    nqp_get_sc_object $P3279, "1304277407.992", 30
    .const 'Sub' $P3280 = "72_1304277412.809" 
    copy $P3279, $P3280
    nqp_get_sc_object $P3281, "1304277407.992", 31
    .const 'Sub' $P3282 = "74_1304277412.809" 
    copy $P3281, $P3282
    nqp_get_sc_object $P3283, "1304277407.992", 32
    .const 'Sub' $P3284 = "76_1304277412.809" 
    copy $P3283, $P3284
    nqp_get_sc_object $P3285, "1304277407.992", 33
    .const 'Sub' $P3286 = "78_1304277412.809" 
    copy $P3285, $P3286
    nqp_get_sc_object $P3287, "1304277407.992", 34
    .const 'Sub' $P3288 = "80_1304277412.809" 
    copy $P3287, $P3288
    nqp_get_sc_object $P3289, "1304277407.992", 35
    .const 'Sub' $P3290 = "82_1304277412.809" 
    copy $P3289, $P3290
    nqp_get_sc_object $P3291, "1304277407.992", 36
    .const 'Sub' $P3292 = "84_1304277412.809" 
    copy $P3291, $P3292
    nqp_get_sc_object $P3293, "1304277407.992", 37
    .const 'Sub' $P3294 = "86_1304277412.809" 
    copy $P3293, $P3294
    nqp_get_sc_object $P3295, "1304277407.992", 38
    .const 'Sub' $P3296 = "88_1304277412.809" 
    copy $P3295, $P3296
    nqp_get_sc_object $P3297, "1304277407.992", 39
    .const 'Sub' $P3298 = "90_1304277412.809" 
    copy $P3297, $P3298
    nqp_get_sc_object $P3299, "1304277407.992", 40
    .const 'Sub' $P3300 = "92_1304277412.809" 
    copy $P3299, $P3300
    nqp_get_sc_object $P3301, "1304277407.992", 41
    .const 'Sub' $P3302 = "94_1304277412.809" 
    copy $P3301, $P3302
    nqp_get_sc_object $P3303, "1304277407.992", 42
    .const 'Sub' $P3304 = "96_1304277412.809" 
    copy $P3303, $P3304
    nqp_get_sc_object $P3305, "1304277407.992", 43
    .const 'Sub' $P3306 = "98_1304277412.809" 
    copy $P3305, $P3306
    nqp_get_sc_object $P3307, "1304277407.992", 44
    .const 'Sub' $P3308 = "100_1304277412.809" 
    copy $P3307, $P3308
    nqp_get_sc_object $P3309, "1304277407.992", 45
    .const 'Sub' $P3310 = "102_1304277412.809" 
    copy $P3309, $P3310
    nqp_get_sc_object $P3311, "1304277407.992", 46
    .const 'Sub' $P3312 = "104_1304277412.809" 
    copy $P3311, $P3312
    nqp_get_sc_object $P3313, "1304277407.992", 47
    .const 'Sub' $P3314 = "105_1304277412.809" 
    copy $P3313, $P3314
    nqp_get_sc_object $P3315, "1304277407.992", 48
    .const 'Sub' $P3316 = "106_1304277412.809" 
    copy $P3315, $P3316
    nqp_get_sc_object $P3317, "1304277407.992", 49
    .const 'Sub' $P3318 = "108_1304277412.809" 
    copy $P3317, $P3318
    nqp_get_sc_object $P3319, "1304277407.992", 50
    .const 'Sub' $P3320 = "110_1304277412.809" 
    copy $P3319, $P3320
    nqp_get_sc_object $P3321, "1304277407.992", 51
    .const 'Sub' $P3322 = "112_1304277412.809" 
    copy $P3321, $P3322
    nqp_get_sc_object $P3323, "1304277407.992", 52
    .const 'Sub' $P3324 = "114_1304277412.809" 
    copy $P3323, $P3324
    nqp_get_sc_object $P3325, "1304277407.992", 53
    .const 'Sub' $P3326 = "116_1304277412.809" 
    copy $P3325, $P3326
    nqp_get_sc_object $P3327, "1304277407.992", 54
    .const 'Sub' $P3328 = "118_1304277412.809" 
    copy $P3327, $P3328
    nqp_get_sc_object $P3329, "1304277407.992", 55
    .const 'Sub' $P3330 = "120_1304277412.809" 
    copy $P3329, $P3330
    nqp_get_sc_object $P3331, "1304277407.992", 56
    .const 'Sub' $P3332 = "122_1304277412.809" 
    copy $P3331, $P3332
    nqp_get_sc_object $P3333, "1304277407.992", 57
    .const 'Sub' $P3334 = "124_1304277412.809" 
    copy $P3333, $P3334
    nqp_get_sc_object $P3335, "1304277407.992", 58
    .const 'Sub' $P3336 = "126_1304277412.809" 
    copy $P3335, $P3336
    nqp_get_sc_object $P3337, "1304277407.992", 59
    .const 'Sub' $P3338 = "128_1304277412.809" 
    copy $P3337, $P3338
    nqp_get_sc_object $P3339, "1304277407.992", 60
    .const 'Sub' $P3340 = "130_1304277412.809" 
    copy $P3339, $P3340
    nqp_get_sc_object $P3341, "1304277407.992", 61
    .const 'Sub' $P3342 = "132_1304277412.809" 
    copy $P3341, $P3342
    nqp_get_sc_object $P3343, "1304277407.992", 62
    .const 'Sub' $P3344 = "134_1304277412.809" 
    copy $P3343, $P3344
    nqp_get_sc_object $P3345, "1304277407.992", 63
    .const 'Sub' $P3346 = "136_1304277412.809" 
    copy $P3345, $P3346
    nqp_get_sc_object $P3347, "1304277407.992", 64
    .const 'Sub' $P3348 = "139_1304277412.809" 
    copy $P3347, $P3348
    nqp_get_sc_object $P3349, "1304277407.992", 65
    .const 'Sub' $P3350 = "141_1304277412.809" 
    copy $P3349, $P3350
    nqp_get_sc_object $P3351, "1304277407.992", 66
    .const 'Sub' $P3352 = "142_1304277412.809" 
    copy $P3351, $P3352
    nqp_get_sc_object $P3353, "1304277407.992", 67
    .const 'Sub' $P3354 = "143_1304277412.809" 
    copy $P3353, $P3354
    nqp_get_sc_object $P3355, "1304277407.992", 68
    .const 'Sub' $P3356 = "146_1304277412.809" 
    copy $P3355, $P3356
    nqp_get_sc_object $P3357, "1304277407.992", 69
    .const 'Sub' $P3358 = "149_1304277412.809" 
    copy $P3357, $P3358
    nqp_get_sc_object $P3359, "1304277407.992", 70
    .const 'Sub' $P3360 = "151_1304277412.809" 
    copy $P3359, $P3360
    nqp_get_sc_object $P3361, "1304277407.992", 71
    .const 'Sub' $P3362 = "154_1304277412.809" 
    copy $P3361, $P3362
    nqp_get_sc_object $P3363, "1304277407.992", 72
    .const 'Sub' $P3364 = "157_1304277412.809" 
    copy $P3363, $P3364
    nqp_get_sc_object $P3365, "1304277407.992", 73
    .const 'Sub' $P3366 = "163_1304277412.809" 
    copy $P3365, $P3366
    nqp_get_sc_object $P3367, "1304277407.992", 74
    .const 'Sub' $P3368 = "166_1304277412.809" 
    copy $P3367, $P3368
    nqp_get_sc_object $P3369, "1304277407.992", 75
    .const 'Sub' $P3370 = "167_1304277412.809" 
    copy $P3369, $P3370
    nqp_get_sc_object $P3371, "1304277407.992", 76
    .const 'Sub' $P3372 = "168_1304277412.809" 
    copy $P3371, $P3372
    nqp_get_sc_object $P3373, "1304277407.992", 77
    .const 'Sub' $P3374 = "170_1304277412.809" 
    copy $P3373, $P3374
    nqp_get_sc_object $P3375, "1304277407.992", 78
    .const 'Sub' $P3376 = "172_1304277412.809" 
    copy $P3375, $P3376
    .const 'Sub' $P3377 = "12_1304277412.809" 
    $P3378 = $P3377."get_lexinfo"()
    nqp_get_sc_object $P3379, "1304277407.992", 1
    $P3378."set_static_lexpad_value"("$?PACKAGE", $P3379)
    .const 'Sub' $P3380 = "12_1304277412.809" 
    $P3381 = $P3380."get_lexinfo"()
    $P3381."finish_static_lexpad"()
    .const 'Sub' $P3382 = "12_1304277412.809" 
    $P3383 = $P3382."get_lexinfo"()
    nqp_get_sc_object $P3384, "1304277407.992", 1
    $P3383."set_static_lexpad_value"("$?CLASS", $P3384)
    .const 'Sub' $P3385 = "12_1304277412.809" 
    $P3386 = $P3385."get_lexinfo"()
    $P3386."finish_static_lexpad"()
    nqp_get_sc_object $P3387, "1304277407.992", 80
    .const 'Sub' $P3388 = "191_1304277412.809" 
    copy $P3387, $P3388
    nqp_get_sc_object $P3389, "1304277407.992", 81
    .const 'Sub' $P3390 = "192_1304277412.809" 
    copy $P3389, $P3390
    nqp_get_sc_object $P3391, "1304277407.992", 82
    .const 'Sub' $P3392 = "194_1304277412.809" 
    copy $P3391, $P3392
    nqp_get_sc_object $P3393, "1304277407.992", 83
    .const 'Sub' $P3394 = "195_1304277412.809" 
    copy $P3393, $P3394
    nqp_get_sc_object $P3395, "1304277407.992", 84
    .const 'Sub' $P3396 = "198_1304277412.809" 
    copy $P3395, $P3396
    nqp_get_sc_object $P3397, "1304277407.992", 85
    .const 'Sub' $P3398 = "200_1304277412.809" 
    copy $P3397, $P3398
    nqp_get_sc_object $P3399, "1304277407.992", 86
    .const 'Sub' $P3400 = "202_1304277412.809" 
    copy $P3399, $P3400
    nqp_get_sc_object $P3401, "1304277407.992", 87
    .const 'Sub' $P3402 = "204_1304277412.809" 
    copy $P3401, $P3402
    nqp_get_sc_object $P3403, "1304277407.992", 88
    .const 'Sub' $P3404 = "205_1304277412.809" 
    copy $P3403, $P3404
    nqp_get_sc_object $P3405, "1304277407.992", 89
    .const 'Sub' $P3406 = "206_1304277412.809" 
    copy $P3405, $P3406
    nqp_get_sc_object $P3407, "1304277407.992", 90
    .const 'Sub' $P3408 = "207_1304277412.809" 
    copy $P3407, $P3408
    nqp_get_sc_object $P3409, "1304277407.992", 91
    .const 'Sub' $P3410 = "208_1304277412.809" 
    copy $P3409, $P3410
    nqp_get_sc_object $P3411, "1304277407.992", 92
    .const 'Sub' $P3412 = "210_1304277412.809" 
    copy $P3411, $P3412
    nqp_get_sc_object $P3413, "1304277407.992", 93
    .const 'Sub' $P3414 = "211_1304277412.809" 
    copy $P3413, $P3414
    nqp_get_sc_object $P3415, "1304277407.992", 94
    .const 'Sub' $P3416 = "212_1304277412.809" 
    copy $P3415, $P3416
    nqp_get_sc_object $P3417, "1304277407.992", 95
    .const 'Sub' $P3418 = "213_1304277412.809" 
    copy $P3417, $P3418
    nqp_get_sc_object $P3419, "1304277407.992", 96
    .const 'Sub' $P3420 = "214_1304277412.809" 
    copy $P3419, $P3420
    nqp_get_sc_object $P3421, "1304277407.992", 97
    .const 'Sub' $P3422 = "215_1304277412.809" 
    copy $P3421, $P3422
    nqp_get_sc_object $P3423, "1304277407.992", 98
    .const 'Sub' $P3424 = "216_1304277412.809" 
    copy $P3423, $P3424
    nqp_get_sc_object $P3425, "1304277407.992", 99
    .const 'Sub' $P3426 = "217_1304277412.809" 
    copy $P3425, $P3426
    nqp_get_sc_object $P3427, "1304277407.992", 100
    .const 'Sub' $P3428 = "218_1304277412.809" 
    copy $P3427, $P3428
    nqp_get_sc_object $P3429, "1304277407.992", 101
    .const 'Sub' $P3430 = "219_1304277412.809" 
    copy $P3429, $P3430
    nqp_get_sc_object $P3431, "1304277407.992", 102
    .const 'Sub' $P3432 = "220_1304277412.809" 
    copy $P3431, $P3432
    nqp_get_sc_object $P3433, "1304277407.992", 103
    .const 'Sub' $P3434 = "221_1304277412.809" 
    copy $P3433, $P3434
    nqp_get_sc_object $P3435, "1304277407.992", 104
    .const 'Sub' $P3436 = "222_1304277412.809" 
    copy $P3435, $P3436
    nqp_get_sc_object $P3437, "1304277407.992", 105
    .const 'Sub' $P3438 = "223_1304277412.809" 
    copy $P3437, $P3438
    nqp_get_sc_object $P3439, "1304277407.992", 106
    .const 'Sub' $P3440 = "224_1304277412.809" 
    copy $P3439, $P3440
    nqp_get_sc_object $P3441, "1304277407.992", 107
    .const 'Sub' $P3442 = "225_1304277412.809" 
    copy $P3441, $P3442
    nqp_get_sc_object $P3443, "1304277407.992", 108
    .const 'Sub' $P3444 = "226_1304277412.809" 
    copy $P3443, $P3444
    nqp_get_sc_object $P3445, "1304277407.992", 109
    .const 'Sub' $P3446 = "227_1304277412.809" 
    copy $P3445, $P3446
    nqp_get_sc_object $P3447, "1304277407.992", 110
    .const 'Sub' $P3448 = "228_1304277412.809" 
    copy $P3447, $P3448
    nqp_get_sc_object $P3449, "1304277407.992", 111
    .const 'Sub' $P3450 = "229_1304277412.809" 
    copy $P3449, $P3450
    nqp_get_sc_object $P3451, "1304277407.992", 112
    .const 'Sub' $P3452 = "230_1304277412.809" 
    copy $P3451, $P3452
    nqp_get_sc_object $P3453, "1304277407.992", 113
    .const 'Sub' $P3454 = "231_1304277412.809" 
    copy $P3453, $P3454
    nqp_get_sc_object $P3455, "1304277407.992", 114
    .const 'Sub' $P3456 = "232_1304277412.809" 
    copy $P3455, $P3456
    nqp_get_sc_object $P3457, "1304277407.992", 115
    .const 'Sub' $P3458 = "233_1304277412.809" 
    copy $P3457, $P3458
    nqp_get_sc_object $P3459, "1304277407.992", 116
    .const 'Sub' $P3460 = "234_1304277412.809" 
    copy $P3459, $P3460
    nqp_get_sc_object $P3461, "1304277407.992", 117
    .const 'Sub' $P3462 = "235_1304277412.809" 
    copy $P3461, $P3462
    nqp_get_sc_object $P3463, "1304277407.992", 118
    .const 'Sub' $P3464 = "236_1304277412.809" 
    copy $P3463, $P3464
    nqp_get_sc_object $P3465, "1304277407.992", 119
    .const 'Sub' $P3466 = "237_1304277412.809" 
    copy $P3465, $P3466
    nqp_get_sc_object $P3467, "1304277407.992", 120
    .const 'Sub' $P3468 = "238_1304277412.809" 
    copy $P3467, $P3468
    nqp_get_sc_object $P3469, "1304277407.992", 121
    .const 'Sub' $P3470 = "239_1304277412.809" 
    copy $P3469, $P3470
    nqp_get_sc_object $P3471, "1304277407.992", 122
    .const 'Sub' $P3472 = "240_1304277412.809" 
    copy $P3471, $P3472
    nqp_get_sc_object $P3473, "1304277407.992", 123
    .const 'Sub' $P3474 = "241_1304277412.809" 
    copy $P3473, $P3474
    nqp_get_sc_object $P3475, "1304277407.992", 124
    .const 'Sub' $P3476 = "242_1304277412.809" 
    copy $P3475, $P3476
    nqp_get_sc_object $P3477, "1304277407.992", 125
    .const 'Sub' $P3478 = "243_1304277412.809" 
    copy $P3477, $P3478
    nqp_get_sc_object $P3479, "1304277407.992", 126
    .const 'Sub' $P3480 = "244_1304277412.809" 
    copy $P3479, $P3480
    nqp_get_sc_object $P3481, "1304277407.992", 127
    .const 'Sub' $P3482 = "245_1304277412.809" 
    copy $P3481, $P3482
    nqp_get_sc_object $P3483, "1304277407.992", 128
    .const 'Sub' $P3484 = "248_1304277412.809" 
    copy $P3483, $P3484
    nqp_get_sc_object $P3485, "1304277407.992", 129
    .const 'Sub' $P3486 = "250_1304277412.809" 
    copy $P3485, $P3486
    nqp_get_sc_object $P3487, "1304277407.992", 130
    .const 'Sub' $P3488 = "254_1304277412.809" 
    copy $P3487, $P3488
    .const 'Sub' $P3489 = "176_1304277412.809" 
    nqp_get_sc_object $P3490, "1304277407.992", 79
    get_who $P3491, $P3490
    set $P3491["buildsub"], $P3489
    nqp_get_sc_object $P3492, "1304277407.992", 131
    .const 'Sub' $P3493 = "255_1304277412.809" 
    copy $P3492, $P3493
    nqp_get_sc_object $P3494, "1304277407.992", 132
    .const 'Sub' $P3495 = "256_1304277412.809" 
    copy $P3494, $P3495
    .const 'Sub' $P3496 = "175_1304277412.809" 
    $P3497 = $P3496."get_lexinfo"()
    nqp_get_sc_object $P3498, "1304277407.992", 79
    $P3497."set_static_lexpad_value"("$?PACKAGE", $P3498)
    .const 'Sub' $P3499 = "175_1304277412.809" 
    $P3500 = $P3499."get_lexinfo"()
    $P3500."finish_static_lexpad"()
    .const 'Sub' $P3501 = "175_1304277412.809" 
    $P3502 = $P3501."get_lexinfo"()
    nqp_get_sc_object $P3503, "1304277407.992", 79
    $P3502."set_static_lexpad_value"("$?CLASS", $P3503)
    .const 'Sub' $P3504 = "175_1304277412.809" 
    $P3505 = $P3504."get_lexinfo"()
    $P3505."finish_static_lexpad"()
    .const 'Sub' $P3506 = "258_1304277412.809" 
    $P3507 = $P3506."get_lexinfo"()
    nqp_get_sc_object $P3508, "1304277407.992", 133
    $P3507."set_static_lexpad_value"("$?PACKAGE", $P3508)
    .const 'Sub' $P3509 = "258_1304277412.809" 
    $P3510 = $P3509."get_lexinfo"()
    $P3510."finish_static_lexpad"()
    .const 'Sub' $P3511 = "258_1304277412.809" 
    $P3512 = $P3511."get_lexinfo"()
    nqp_get_sc_object $P3513, "1304277407.992", 133
    $P3512."set_static_lexpad_value"("$?CLASS", $P3513)
    .const 'Sub' $P3514 = "258_1304277412.809" 
    $P3515 = $P3514."get_lexinfo"()
    $P3515."finish_static_lexpad"()
    goto if_2602_end
  if_2602:
    nqp_dynop_setup 
    getinterp $P2605
    get_class $P2606, "LexPad"
    get_class $P2607, "NQPLexPad"
    $P2605."hll_map"($P2606, $P2607)
    nqp_create_sc $P2608, "1304277407.992"
    .local pmc cur_sc
    set cur_sc, $P2608
    nqp_get_sc_object $P2609, "__6MODEL_CORE__", 0
    $P2610 = $P2609."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2610, cur_sc
    nqp_set_sc_object "1304277407.992", 0, $P2610
    .const 'Sub' $P2611 = "10_1304277412.809" 
    $P2612 = $P2611."get_lexinfo"()
    nqp_get_sc_object $P2613, "1304277407.992", 0
    $P2612."set_static_lexpad_value"("GLOBALish", $P2613)
    .const 'Sub' $P2614 = "10_1304277412.809" 
    $P2615 = $P2614."get_lexinfo"()
    $P2615."finish_static_lexpad"()
    .const 'Sub' $P2616 = "10_1304277412.809" 
    $P2617 = $P2616."get_lexinfo"()
    nqp_get_sc_object $P2618, "1304277407.992", 0
    $P2617."set_static_lexpad_value"("$?PACKAGE", $P2618)
    .const 'Sub' $P2619 = "10_1304277412.809" 
    $P2620 = $P2619."get_lexinfo"()
    $P2620."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2621, "ModuleLoader"
    $P2622 = $P2621."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2622)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2623, "ModuleLoader"
    nqp_get_sc_object $P2624, "1304277407.992", 0
    $P2623."load_module"("Regex", $P2624)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2625, "ModuleLoader"
    nqp_get_sc_object $P2626, "1304277407.992", 0
    $P2625."load_module"("HLL", $P2626)
    nqp_get_sc_object $P2627, "1304277388.915", 41
    $P2628 = $P2627."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2628, cur_sc
    nqp_set_sc_object "1304277407.992", 1, $P2628
    nqp_get_sc_object $P2629, "1304277407.992", 1
    nqp_get_sc_object $P2630, "1304277407.992", 0
    nqp_get_package_through_who $P2631, $P2630, "Regex"
    nqp_get_package_through_who $P2632, $P2631, "P6Regex"
    get_who $P2633, $P2632
    set $P2633["Grammar"], $P2629
    nqp_get_sc_object $P2634, "1304277407.992", 1
    get_how $P2635, $P2634
    nqp_get_sc_object $P2636, "1304277407.992", 1
    .const 'Sub' $P2637 = "13_1304277412.809" 
    $P2635."add_method"($P2636, "obs", $P2637)
    nqp_get_sc_object $P2638, "1304277407.992", 1
    get_how $P2639, $P2638
    nqp_get_sc_object $P2640, "1304277407.992", 1
    .const 'Sub' $P2641 = "14_1304277412.809" 
    $P2639."add_method"($P2640, "ws", $P2641)
    nqp_get_sc_object $P2642, "1304277407.992", 1
    get_how $P2643, $P2642
    nqp_get_sc_object $P2644, "1304277407.992", 1
    .const 'Sub' $P2645 = "16_1304277412.809" 
    $P2643."add_method"($P2644, "normspace", $P2645)
    nqp_get_sc_object $P2646, "1304277407.992", 1
    get_how $P2647, $P2646
    nqp_get_sc_object $P2648, "1304277407.992", 1
    .const 'Sub' $P2649 = "19_1304277412.809" 
    $P2647."add_method"($P2648, "identifier", $P2649)
    nqp_get_sc_object $P2650, "1304277407.992", 1
    get_how $P2651, $P2650
    nqp_get_sc_object $P2652, "1304277407.992", 1
    .const 'Sub' $P2653 = "21_1304277412.809" 
    $P2651."add_method"($P2652, "arg", $P2653)
    nqp_get_sc_object $P2654, "1304277407.992", 1
    get_how $P2655, $P2654
    nqp_get_sc_object $P2656, "1304277407.992", 1
    .const 'Sub' $P2657 = "23_1304277412.809" 
    $P2655."add_method"($P2656, "arglist", $P2657)
    nqp_get_sc_object $P2658, "1304277407.992", 1
    get_how $P2659, $P2658
    nqp_get_sc_object $P2660, "1304277407.992", 1
    .const 'Sub' $P2661 = "25_1304277412.809" 
    $P2659."add_method"($P2660, "TOP", $P2661)
    nqp_get_sc_object $P2662, "1304277407.992", 1
    get_how $P2663, $P2662
    nqp_get_sc_object $P2664, "1304277407.992", 1
    .const 'Sub' $P2665 = "27_1304277412.809" 
    $P2663."add_method"($P2664, "nibbler", $P2665)
    nqp_get_sc_object $P2666, "1304277407.992", 1
    get_how $P2667, $P2666
    nqp_get_sc_object $P2668, "1304277407.992", 1
    .const 'Sub' $P2669 = "29_1304277412.809" 
    $P2667."add_method"($P2668, "termconj", $P2669)
    nqp_get_sc_object $P2670, "1304277407.992", 1
    get_how $P2671, $P2670
    nqp_get_sc_object $P2672, "1304277407.992", 1
    .const 'Sub' $P2673 = "31_1304277412.809" 
    $P2671."add_method"($P2672, "termish", $P2673)
    nqp_get_sc_object $P2674, "1304277407.992", 1
    get_how $P2675, $P2674
    nqp_get_sc_object $P2676, "1304277407.992", 1
    .const 'Sub' $P2677 = "33_1304277412.809" 
    $P2675."add_method"($P2676, "quantified_atom", $P2677)
    nqp_get_sc_object $P2678, "1304277407.992", 1
    get_how $P2679, $P2678
    nqp_get_sc_object $P2680, "1304277407.992", 1
    .const 'Sub' $P2681 = "36_1304277412.809" 
    $P2679."add_method"($P2680, "atom", $P2681)
    nqp_get_sc_object $P2682, "1304277407.992", 1
    get_how $P2683, $P2682
    nqp_get_sc_object $P2684, "1304277407.992", 1
    .const 'Sub' $P2685 = "39_1304277412.809" 
    $P2683."add_method"($P2684, "quantifier", $P2685)
    nqp_get_sc_object $P2686, "1304277407.992", 1
    get_how $P2687, $P2686
    nqp_get_sc_object $P2688, "1304277407.992", 1
    .const 'Sub' $P2689 = "40_1304277412.809" 
    $P2687."add_method"($P2688, "!PREFIX__quantifier", $P2689)
    nqp_get_sc_object $P2690, "1304277407.992", 1
    get_how $P2691, $P2690
    nqp_get_sc_object $P2692, "1304277407.992", 1
    .const 'Sub' $P2693 = "41_1304277412.809" 
    $P2691."add_method"($P2692, "quantifier:sym<*>", $P2693)
    nqp_get_sc_object $P2694, "1304277407.992", 1
    get_how $P2695, $P2694
    nqp_get_sc_object $P2696, "1304277407.992", 1
    .const 'Sub' $P2697 = "43_1304277412.809" 
    $P2695."add_method"($P2696, "quantifier:sym<+>", $P2697)
    nqp_get_sc_object $P2698, "1304277407.992", 1
    get_how $P2699, $P2698
    nqp_get_sc_object $P2700, "1304277407.992", 1
    .const 'Sub' $P2701 = "45_1304277412.809" 
    $P2699."add_method"($P2700, "quantifier:sym<?>", $P2701)
    nqp_get_sc_object $P2702, "1304277407.992", 1
    get_how $P2703, $P2702
    nqp_get_sc_object $P2704, "1304277407.992", 1
    .const 'Sub' $P2705 = "47_1304277412.809" 
    $P2703."add_method"($P2704, "quantifier:sym<{N,M}>", $P2705)
    nqp_get_sc_object $P2706, "1304277407.992", 1
    get_how $P2707, $P2706
    nqp_get_sc_object $P2708, "1304277407.992", 1
    .const 'Sub' $P2709 = "53_1304277412.809" 
    $P2707."add_method"($P2708, "quantifier:sym<**>", $P2709)
    nqp_get_sc_object $P2710, "1304277407.992", 1
    get_how $P2711, $P2710
    nqp_get_sc_object $P2712, "1304277407.992", 1
    .const 'Sub' $P2713 = "55_1304277412.809" 
    $P2711."add_method"($P2712, "backmod", $P2713)
    nqp_get_sc_object $P2714, "1304277407.992", 1
    get_how $P2715, $P2714
    nqp_get_sc_object $P2716, "1304277407.992", 1
    .const 'Sub' $P2717 = "58_1304277412.809" 
    $P2715."add_method"($P2716, "metachar", $P2717)
    nqp_get_sc_object $P2718, "1304277407.992", 1
    get_how $P2719, $P2718
    nqp_get_sc_object $P2720, "1304277407.992", 1
    .const 'Sub' $P2721 = "59_1304277412.809" 
    $P2719."add_method"($P2720, "!PREFIX__metachar", $P2721)
    nqp_get_sc_object $P2722, "1304277407.992", 1
    get_how $P2723, $P2722
    nqp_get_sc_object $P2724, "1304277407.992", 1
    .const 'Sub' $P2725 = "60_1304277412.809" 
    $P2723."add_method"($P2724, "metachar:sym<ws>", $P2725)
    nqp_get_sc_object $P2726, "1304277407.992", 1
    get_how $P2727, $P2726
    nqp_get_sc_object $P2728, "1304277407.992", 1
    .const 'Sub' $P2729 = "62_1304277412.809" 
    $P2727."add_method"($P2728, "metachar:sym<[ ]>", $P2729)
    nqp_get_sc_object $P2730, "1304277407.992", 1
    get_how $P2731, $P2730
    nqp_get_sc_object $P2732, "1304277407.992", 1
    .const 'Sub' $P2733 = "64_1304277412.809" 
    $P2731."add_method"($P2732, "metachar:sym<( )>", $P2733)
    nqp_get_sc_object $P2734, "1304277407.992", 1
    get_how $P2735, $P2734
    nqp_get_sc_object $P2736, "1304277407.992", 1
    .const 'Sub' $P2737 = "66_1304277412.809" 
    $P2735."add_method"($P2736, "metachar:sym<'>", $P2737)
    nqp_get_sc_object $P2738, "1304277407.992", 1
    get_how $P2739, $P2738
    nqp_get_sc_object $P2740, "1304277407.992", 1
    .const 'Sub' $P2741 = "68_1304277412.809" 
    $P2739."add_method"($P2740, "metachar:sym<\">", $P2741)
    nqp_get_sc_object $P2742, "1304277407.992", 1
    get_how $P2743, $P2742
    nqp_get_sc_object $P2744, "1304277407.992", 1
    .const 'Sub' $P2745 = "70_1304277412.809" 
    $P2743."add_method"($P2744, "metachar:sym<.>", $P2745)
    nqp_get_sc_object $P2746, "1304277407.992", 1
    get_how $P2747, $P2746
    nqp_get_sc_object $P2748, "1304277407.992", 1
    .const 'Sub' $P2749 = "72_1304277412.809" 
    $P2747."add_method"($P2748, "metachar:sym<^>", $P2749)
    nqp_get_sc_object $P2750, "1304277407.992", 1
    get_how $P2751, $P2750
    nqp_get_sc_object $P2752, "1304277407.992", 1
    .const 'Sub' $P2753 = "74_1304277412.809" 
    $P2751."add_method"($P2752, "metachar:sym<^^>", $P2753)
    nqp_get_sc_object $P2754, "1304277407.992", 1
    get_how $P2755, $P2754
    nqp_get_sc_object $P2756, "1304277407.992", 1
    .const 'Sub' $P2757 = "76_1304277412.809" 
    $P2755."add_method"($P2756, "metachar:sym<$>", $P2757)
    nqp_get_sc_object $P2758, "1304277407.992", 1
    get_how $P2759, $P2758
    nqp_get_sc_object $P2760, "1304277407.992", 1
    .const 'Sub' $P2761 = "78_1304277412.809" 
    $P2759."add_method"($P2760, "metachar:sym<$$>", $P2761)
    nqp_get_sc_object $P2762, "1304277407.992", 1
    get_how $P2763, $P2762
    nqp_get_sc_object $P2764, "1304277407.992", 1
    .const 'Sub' $P2765 = "80_1304277412.809" 
    $P2763."add_method"($P2764, "metachar:sym<:::>", $P2765)
    nqp_get_sc_object $P2766, "1304277407.992", 1
    get_how $P2767, $P2766
    nqp_get_sc_object $P2768, "1304277407.992", 1
    .const 'Sub' $P2769 = "82_1304277412.809" 
    $P2767."add_method"($P2768, "metachar:sym<::>", $P2769)
    nqp_get_sc_object $P2770, "1304277407.992", 1
    get_how $P2771, $P2770
    nqp_get_sc_object $P2772, "1304277407.992", 1
    .const 'Sub' $P2773 = "84_1304277412.809" 
    $P2771."add_method"($P2772, "metachar:sym<lwb>", $P2773)
    nqp_get_sc_object $P2774, "1304277407.992", 1
    get_how $P2775, $P2774
    nqp_get_sc_object $P2776, "1304277407.992", 1
    .const 'Sub' $P2777 = "86_1304277412.809" 
    $P2775."add_method"($P2776, "metachar:sym<rwb>", $P2777)
    nqp_get_sc_object $P2778, "1304277407.992", 1
    get_how $P2779, $P2778
    nqp_get_sc_object $P2780, "1304277407.992", 1
    .const 'Sub' $P2781 = "88_1304277412.809" 
    $P2779."add_method"($P2780, "metachar:sym<bs>", $P2781)
    nqp_get_sc_object $P2782, "1304277407.992", 1
    get_how $P2783, $P2782
    nqp_get_sc_object $P2784, "1304277407.992", 1
    .const 'Sub' $P2785 = "90_1304277412.809" 
    $P2783."add_method"($P2784, "metachar:sym<mod>", $P2785)
    nqp_get_sc_object $P2786, "1304277407.992", 1
    get_how $P2787, $P2786
    nqp_get_sc_object $P2788, "1304277407.992", 1
    .const 'Sub' $P2789 = "92_1304277412.809" 
    $P2787."add_method"($P2788, "metachar:sym<quantifier>", $P2789)
    nqp_get_sc_object $P2790, "1304277407.992", 1
    get_how $P2791, $P2790
    nqp_get_sc_object $P2792, "1304277407.992", 1
    .const 'Sub' $P2793 = "94_1304277412.809" 
    $P2791."add_method"($P2792, "metachar:sym<~>", $P2793)
    nqp_get_sc_object $P2794, "1304277407.992", 1
    get_how $P2795, $P2794
    nqp_get_sc_object $P2796, "1304277407.992", 1
    .const 'Sub' $P2797 = "96_1304277412.809" 
    $P2795."add_method"($P2796, "metachar:sym<{*}>", $P2797)
    nqp_get_sc_object $P2798, "1304277407.992", 1
    get_how $P2799, $P2798
    nqp_get_sc_object $P2800, "1304277407.992", 1
    .const 'Sub' $P2801 = "98_1304277412.809" 
    $P2799."add_method"($P2800, "metachar:sym<assert>", $P2801)
    nqp_get_sc_object $P2802, "1304277407.992", 1
    get_how $P2803, $P2802
    nqp_get_sc_object $P2804, "1304277407.992", 1
    .const 'Sub' $P2805 = "100_1304277412.809" 
    $P2803."add_method"($P2804, "metachar:sym<var>", $P2805)
    nqp_get_sc_object $P2806, "1304277407.992", 1
    get_how $P2807, $P2806
    nqp_get_sc_object $P2808, "1304277407.992", 1
    .const 'Sub' $P2809 = "102_1304277412.809" 
    $P2807."add_method"($P2808, "metachar:sym<PIR>", $P2809)
    nqp_get_sc_object $P2810, "1304277407.992", 1
    get_how $P2811, $P2810
    nqp_get_sc_object $P2812, "1304277407.992", 1
    .const 'Sub' $P2813 = "104_1304277412.809" 
    $P2811."add_method"($P2812, "backslash", $P2813)
    nqp_get_sc_object $P2814, "1304277407.992", 1
    get_how $P2815, $P2814
    nqp_get_sc_object $P2816, "1304277407.992", 1
    .const 'Sub' $P2817 = "105_1304277412.809" 
    $P2815."add_method"($P2816, "!PREFIX__backslash", $P2817)
    nqp_get_sc_object $P2818, "1304277407.992", 1
    get_how $P2819, $P2818
    nqp_get_sc_object $P2820, "1304277407.992", 1
    .const 'Sub' $P2821 = "106_1304277412.809" 
    $P2819."add_method"($P2820, "backslash:sym<w>", $P2821)
    nqp_get_sc_object $P2822, "1304277407.992", 1
    get_how $P2823, $P2822
    nqp_get_sc_object $P2824, "1304277407.992", 1
    .const 'Sub' $P2825 = "108_1304277412.809" 
    $P2823."add_method"($P2824, "backslash:sym<b>", $P2825)
    nqp_get_sc_object $P2826, "1304277407.992", 1
    get_how $P2827, $P2826
    nqp_get_sc_object $P2828, "1304277407.992", 1
    .const 'Sub' $P2829 = "110_1304277412.809" 
    $P2827."add_method"($P2828, "backslash:sym<e>", $P2829)
    nqp_get_sc_object $P2830, "1304277407.992", 1
    get_how $P2831, $P2830
    nqp_get_sc_object $P2832, "1304277407.992", 1
    .const 'Sub' $P2833 = "112_1304277412.809" 
    $P2831."add_method"($P2832, "backslash:sym<f>", $P2833)
    nqp_get_sc_object $P2834, "1304277407.992", 1
    get_how $P2835, $P2834
    nqp_get_sc_object $P2836, "1304277407.992", 1
    .const 'Sub' $P2837 = "114_1304277412.809" 
    $P2835."add_method"($P2836, "backslash:sym<h>", $P2837)
    nqp_get_sc_object $P2838, "1304277407.992", 1
    get_how $P2839, $P2838
    nqp_get_sc_object $P2840, "1304277407.992", 1
    .const 'Sub' $P2841 = "116_1304277412.809" 
    $P2839."add_method"($P2840, "backslash:sym<r>", $P2841)
    nqp_get_sc_object $P2842, "1304277407.992", 1
    get_how $P2843, $P2842
    nqp_get_sc_object $P2844, "1304277407.992", 1
    .const 'Sub' $P2845 = "118_1304277412.809" 
    $P2843."add_method"($P2844, "backslash:sym<t>", $P2845)
    nqp_get_sc_object $P2846, "1304277407.992", 1
    get_how $P2847, $P2846
    nqp_get_sc_object $P2848, "1304277407.992", 1
    .const 'Sub' $P2849 = "120_1304277412.809" 
    $P2847."add_method"($P2848, "backslash:sym<v>", $P2849)
    nqp_get_sc_object $P2850, "1304277407.992", 1
    get_how $P2851, $P2850
    nqp_get_sc_object $P2852, "1304277407.992", 1
    .const 'Sub' $P2853 = "122_1304277412.809" 
    $P2851."add_method"($P2852, "backslash:sym<o>", $P2853)
    nqp_get_sc_object $P2854, "1304277407.992", 1
    get_how $P2855, $P2854
    nqp_get_sc_object $P2856, "1304277407.992", 1
    .const 'Sub' $P2857 = "124_1304277412.809" 
    $P2855."add_method"($P2856, "backslash:sym<x>", $P2857)
    nqp_get_sc_object $P2858, "1304277407.992", 1
    get_how $P2859, $P2858
    nqp_get_sc_object $P2860, "1304277407.992", 1
    .const 'Sub' $P2861 = "126_1304277412.809" 
    $P2859."add_method"($P2860, "backslash:sym<c>", $P2861)
    nqp_get_sc_object $P2862, "1304277407.992", 1
    get_how $P2863, $P2862
    nqp_get_sc_object $P2864, "1304277407.992", 1
    .const 'Sub' $P2865 = "128_1304277412.809" 
    $P2863."add_method"($P2864, "backslash:sym<A>", $P2865)
    nqp_get_sc_object $P2866, "1304277407.992", 1
    get_how $P2867, $P2866
    nqp_get_sc_object $P2868, "1304277407.992", 1
    .const 'Sub' $P2869 = "130_1304277412.809" 
    $P2867."add_method"($P2868, "backslash:sym<z>", $P2869)
    nqp_get_sc_object $P2870, "1304277407.992", 1
    get_how $P2871, $P2870
    nqp_get_sc_object $P2872, "1304277407.992", 1
    .const 'Sub' $P2873 = "132_1304277412.809" 
    $P2871."add_method"($P2872, "backslash:sym<Z>", $P2873)
    nqp_get_sc_object $P2874, "1304277407.992", 1
    get_how $P2875, $P2874
    nqp_get_sc_object $P2876, "1304277407.992", 1
    .const 'Sub' $P2877 = "134_1304277412.809" 
    $P2875."add_method"($P2876, "backslash:sym<Q>", $P2877)
    nqp_get_sc_object $P2878, "1304277407.992", 1
    get_how $P2879, $P2878
    nqp_get_sc_object $P2880, "1304277407.992", 1
    .const 'Sub' $P2881 = "136_1304277412.809" 
    $P2879."add_method"($P2880, "backslash:sym<unrec>", $P2881)
    nqp_get_sc_object $P2882, "1304277407.992", 1
    get_how $P2883, $P2882
    nqp_get_sc_object $P2884, "1304277407.992", 1
    .const 'Sub' $P2885 = "139_1304277412.809" 
    $P2883."add_method"($P2884, "backslash:sym<misc>", $P2885)
    nqp_get_sc_object $P2886, "1304277407.992", 1
    get_how $P2887, $P2886
    nqp_get_sc_object $P2888, "1304277407.992", 1
    .const 'Sub' $P2889 = "141_1304277412.809" 
    $P2887."add_method"($P2888, "assertion", $P2889)
    nqp_get_sc_object $P2890, "1304277407.992", 1
    get_how $P2891, $P2890
    nqp_get_sc_object $P2892, "1304277407.992", 1
    .const 'Sub' $P2893 = "142_1304277412.809" 
    $P2891."add_method"($P2892, "!PREFIX__assertion", $P2893)
    nqp_get_sc_object $P2894, "1304277407.992", 1
    get_how $P2895, $P2894
    nqp_get_sc_object $P2896, "1304277407.992", 1
    .const 'Sub' $P2897 = "143_1304277412.809" 
    $P2895."add_method"($P2896, "assertion:sym<?>", $P2897)
    nqp_get_sc_object $P2898, "1304277407.992", 1
    get_how $P2899, $P2898
    nqp_get_sc_object $P2900, "1304277407.992", 1
    .const 'Sub' $P2901 = "146_1304277412.809" 
    $P2899."add_method"($P2900, "assertion:sym<!>", $P2901)
    nqp_get_sc_object $P2902, "1304277407.992", 1
    get_how $P2903, $P2902
    nqp_get_sc_object $P2904, "1304277407.992", 1
    .const 'Sub' $P2905 = "149_1304277412.809" 
    $P2903."add_method"($P2904, "assertion:sym<method>", $P2905)
    nqp_get_sc_object $P2906, "1304277407.992", 1
    get_how $P2907, $P2906
    nqp_get_sc_object $P2908, "1304277407.992", 1
    .const 'Sub' $P2909 = "151_1304277412.809" 
    $P2907."add_method"($P2908, "assertion:sym<name>", $P2909)
    nqp_get_sc_object $P2910, "1304277407.992", 1
    get_how $P2911, $P2910
    nqp_get_sc_object $P2912, "1304277407.992", 1
    .const 'Sub' $P2913 = "154_1304277412.809" 
    $P2911."add_method"($P2912, "assertion:sym<[>", $P2913)
    nqp_get_sc_object $P2914, "1304277407.992", 1
    get_how $P2915, $P2914
    nqp_get_sc_object $P2916, "1304277407.992", 1
    .const 'Sub' $P2917 = "157_1304277412.809" 
    $P2915."add_method"($P2916, "cclass_elem", $P2917)
    nqp_get_sc_object $P2918, "1304277407.992", 1
    get_how $P2919, $P2918
    nqp_get_sc_object $P2920, "1304277407.992", 1
    .const 'Sub' $P2921 = "163_1304277412.809" 
    $P2919."add_method"($P2920, "mod_internal", $P2921)
    nqp_get_sc_object $P2922, "1304277407.992", 1
    get_how $P2923, $P2922
    nqp_get_sc_object $P2924, "1304277407.992", 1
    .const 'Sub' $P2925 = "166_1304277412.809" 
    $P2923."add_method"($P2924, "mod_ident", $P2925)
    nqp_get_sc_object $P2926, "1304277407.992", 1
    get_how $P2927, $P2926
    nqp_get_sc_object $P2928, "1304277407.992", 1
    .const 'Sub' $P2929 = "167_1304277412.809" 
    $P2927."add_method"($P2928, "!PREFIX__mod_ident", $P2929)
    nqp_get_sc_object $P2930, "1304277407.992", 1
    get_how $P2931, $P2930
    nqp_get_sc_object $P2932, "1304277407.992", 1
    .const 'Sub' $P2933 = "168_1304277412.809" 
    $P2931."add_method"($P2932, "mod_ident:sym<ignorecase>", $P2933)
    nqp_get_sc_object $P2934, "1304277407.992", 1
    get_how $P2935, $P2934
    nqp_get_sc_object $P2936, "1304277407.992", 1
    .const 'Sub' $P2937 = "170_1304277412.809" 
    $P2935."add_method"($P2936, "mod_ident:sym<ratchet>", $P2937)
    nqp_get_sc_object $P2938, "1304277407.992", 1
    get_how $P2939, $P2938
    nqp_get_sc_object $P2940, "1304277407.992", 1
    .const 'Sub' $P2941 = "172_1304277412.809" 
    $P2939."add_method"($P2940, "mod_ident:sym<sigspace>", $P2941)
    .const 'Sub' $P2942 = "12_1304277412.809" 
    $P2943 = $P2942."get_lexinfo"()
    nqp_get_sc_object $P2944, "1304277407.992", 1
    $P2943."set_static_lexpad_value"("$?PACKAGE", $P2944)
    .const 'Sub' $P2945 = "12_1304277412.809" 
    $P2946 = $P2945."get_lexinfo"()
    $P2946."finish_static_lexpad"()
    .const 'Sub' $P2947 = "12_1304277412.809" 
    $P2948 = $P2947."get_lexinfo"()
    nqp_get_sc_object $P2949, "1304277407.992", 1
    $P2948."set_static_lexpad_value"("$?CLASS", $P2949)
    .const 'Sub' $P2950 = "12_1304277412.809" 
    $P2951 = $P2950."get_lexinfo"()
    $P2951."finish_static_lexpad"()
    nqp_get_sc_object $P2952, "1304277407.992", 1
    get_how $P2953, $P2952
    nqp_get_sc_object $P2954, "1304277407.992", 1
    nqp_get_sc_object $P2955, "1304277396.391", 1
    $P2953."add_parent"($P2954, $P2955)
    nqp_get_sc_object $P2956, "1304277388.915", 41
    $P2957 = $P2956."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2957, cur_sc
    nqp_set_sc_object "1304277407.992", 79, $P2957
    nqp_get_sc_object $P2958, "1304277407.992", 79
    nqp_get_sc_object $P2959, "1304277407.992", 0
    nqp_get_package_through_who $P2960, $P2959, "Regex"
    nqp_get_package_through_who $P2961, $P2960, "P6Regex"
    get_who $P2962, $P2961
    set $P2962["Actions"], $P2958
    nqp_get_sc_object $P2963, "1304277407.992", 79
    get_how $P2964, $P2963
    nqp_get_sc_object $P2965, "1304277407.992", 79
    .const 'Sub' $P2966 = "191_1304277412.809" 
    $P2964."add_method"($P2965, "arg", $P2966)
    nqp_get_sc_object $P2967, "1304277407.992", 79
    get_how $P2968, $P2967
    nqp_get_sc_object $P2969, "1304277407.992", 79
    .const 'Sub' $P2970 = "192_1304277412.809" 
    $P2968."add_method"($P2969, "arglist", $P2970)
    nqp_get_sc_object $P2971, "1304277407.992", 79
    get_how $P2972, $P2971
    nqp_get_sc_object $P2973, "1304277407.992", 79
    .const 'Sub' $P2974 = "194_1304277412.809" 
    $P2972."add_method"($P2973, "TOP", $P2974)
    nqp_get_sc_object $P2975, "1304277407.992", 79
    get_how $P2976, $P2975
    nqp_get_sc_object $P2977, "1304277407.992", 79
    .const 'Sub' $P2978 = "195_1304277412.809" 
    $P2976."add_method"($P2977, "nibbler", $P2978)
    nqp_get_sc_object $P2979, "1304277407.992", 79
    get_how $P2980, $P2979
    nqp_get_sc_object $P2981, "1304277407.992", 79
    .const 'Sub' $P2982 = "198_1304277412.809" 
    $P2980."add_method"($P2981, "termconj", $P2982)
    nqp_get_sc_object $P2983, "1304277407.992", 79
    get_how $P2984, $P2983
    nqp_get_sc_object $P2985, "1304277407.992", 79
    .const 'Sub' $P2986 = "200_1304277412.809" 
    $P2984."add_method"($P2985, "termish", $P2986)
    nqp_get_sc_object $P2987, "1304277407.992", 79
    get_how $P2988, $P2987
    nqp_get_sc_object $P2989, "1304277407.992", 79
    .const 'Sub' $P2990 = "202_1304277412.809" 
    $P2988."add_method"($P2989, "quantified_atom", $P2990)
    nqp_get_sc_object $P2991, "1304277407.992", 79
    get_how $P2992, $P2991
    nqp_get_sc_object $P2993, "1304277407.992", 79
    .const 'Sub' $P2994 = "204_1304277412.809" 
    $P2992."add_method"($P2993, "atom", $P2994)
    nqp_get_sc_object $P2995, "1304277407.992", 79
    get_how $P2996, $P2995
    nqp_get_sc_object $P2997, "1304277407.992", 79
    .const 'Sub' $P2998 = "205_1304277412.809" 
    $P2996."add_method"($P2997, "quantifier:sym<*>", $P2998)
    nqp_get_sc_object $P2999, "1304277407.992", 79
    get_how $P3000, $P2999
    nqp_get_sc_object $P3001, "1304277407.992", 79
    .const 'Sub' $P3002 = "206_1304277412.809" 
    $P3000."add_method"($P3001, "quantifier:sym<+>", $P3002)
    nqp_get_sc_object $P3003, "1304277407.992", 79
    get_how $P3004, $P3003
    nqp_get_sc_object $P3005, "1304277407.992", 79
    .const 'Sub' $P3006 = "207_1304277412.809" 
    $P3004."add_method"($P3005, "quantifier:sym<?>", $P3006)
    nqp_get_sc_object $P3007, "1304277407.992", 79
    get_how $P3008, $P3007
    nqp_get_sc_object $P3009, "1304277407.992", 79
    .const 'Sub' $P3010 = "208_1304277412.809" 
    $P3008."add_method"($P3009, "quantifier:sym<**>", $P3010)
    nqp_get_sc_object $P3011, "1304277407.992", 79
    get_how $P3012, $P3011
    nqp_get_sc_object $P3013, "1304277407.992", 79
    .const 'Sub' $P3014 = "210_1304277412.809" 
    $P3012."add_method"($P3013, "metachar:sym<ws>", $P3014)
    nqp_get_sc_object $P3015, "1304277407.992", 79
    get_how $P3016, $P3015
    nqp_get_sc_object $P3017, "1304277407.992", 79
    .const 'Sub' $P3018 = "211_1304277412.809" 
    $P3016."add_method"($P3017, "metachar:sym<[ ]>", $P3018)
    nqp_get_sc_object $P3019, "1304277407.992", 79
    get_how $P3020, $P3019
    nqp_get_sc_object $P3021, "1304277407.992", 79
    .const 'Sub' $P3022 = "212_1304277412.809" 
    $P3020."add_method"($P3021, "metachar:sym<( )>", $P3022)
    nqp_get_sc_object $P3023, "1304277407.992", 79
    get_how $P3024, $P3023
    nqp_get_sc_object $P3025, "1304277407.992", 79
    .const 'Sub' $P3026 = "213_1304277412.809" 
    $P3024."add_method"($P3025, "metachar:sym<'>", $P3026)
    nqp_get_sc_object $P3027, "1304277407.992", 79
    get_how $P3028, $P3027
    nqp_get_sc_object $P3029, "1304277407.992", 79
    .const 'Sub' $P3030 = "214_1304277412.809" 
    $P3028."add_method"($P3029, "metachar:sym<\">", $P3030)
    nqp_get_sc_object $P3031, "1304277407.992", 79
    get_how $P3032, $P3031
    nqp_get_sc_object $P3033, "1304277407.992", 79
    .const 'Sub' $P3034 = "215_1304277412.809" 
    $P3032."add_method"($P3033, "metachar:sym<.>", $P3034)
    nqp_get_sc_object $P3035, "1304277407.992", 79
    get_how $P3036, $P3035
    nqp_get_sc_object $P3037, "1304277407.992", 79
    .const 'Sub' $P3038 = "216_1304277412.809" 
    $P3036."add_method"($P3037, "metachar:sym<^>", $P3038)
    nqp_get_sc_object $P3039, "1304277407.992", 79
    get_how $P3040, $P3039
    nqp_get_sc_object $P3041, "1304277407.992", 79
    .const 'Sub' $P3042 = "217_1304277412.809" 
    $P3040."add_method"($P3041, "metachar:sym<^^>", $P3042)
    nqp_get_sc_object $P3043, "1304277407.992", 79
    get_how $P3044, $P3043
    nqp_get_sc_object $P3045, "1304277407.992", 79
    .const 'Sub' $P3046 = "218_1304277412.809" 
    $P3044."add_method"($P3045, "metachar:sym<$>", $P3046)
    nqp_get_sc_object $P3047, "1304277407.992", 79
    get_how $P3048, $P3047
    nqp_get_sc_object $P3049, "1304277407.992", 79
    .const 'Sub' $P3050 = "219_1304277412.809" 
    $P3048."add_method"($P3049, "metachar:sym<$$>", $P3050)
    nqp_get_sc_object $P3051, "1304277407.992", 79
    get_how $P3052, $P3051
    nqp_get_sc_object $P3053, "1304277407.992", 79
    .const 'Sub' $P3054 = "220_1304277412.809" 
    $P3052."add_method"($P3053, "metachar:sym<:::>", $P3054)
    nqp_get_sc_object $P3055, "1304277407.992", 79
    get_how $P3056, $P3055
    nqp_get_sc_object $P3057, "1304277407.992", 79
    .const 'Sub' $P3058 = "221_1304277412.809" 
    $P3056."add_method"($P3057, "metachar:sym<lwb>", $P3058)
    nqp_get_sc_object $P3059, "1304277407.992", 79
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1304277407.992", 79
    .const 'Sub' $P3062 = "222_1304277412.809" 
    $P3060."add_method"($P3061, "metachar:sym<rwb>", $P3062)
    nqp_get_sc_object $P3063, "1304277407.992", 79
    get_how $P3064, $P3063
    nqp_get_sc_object $P3065, "1304277407.992", 79
    .const 'Sub' $P3066 = "223_1304277412.809" 
    $P3064."add_method"($P3065, "metachar:sym<bs>", $P3066)
    nqp_get_sc_object $P3067, "1304277407.992", 79
    get_how $P3068, $P3067
    nqp_get_sc_object $P3069, "1304277407.992", 79
    .const 'Sub' $P3070 = "224_1304277412.809" 
    $P3068."add_method"($P3069, "metachar:sym<mod>", $P3070)
    nqp_get_sc_object $P3071, "1304277407.992", 79
    get_how $P3072, $P3071
    nqp_get_sc_object $P3073, "1304277407.992", 79
    .const 'Sub' $P3074 = "225_1304277412.809" 
    $P3072."add_method"($P3073, "metachar:sym<assert>", $P3074)
    nqp_get_sc_object $P3075, "1304277407.992", 79
    get_how $P3076, $P3075
    nqp_get_sc_object $P3077, "1304277407.992", 79
    .const 'Sub' $P3078 = "226_1304277412.809" 
    $P3076."add_method"($P3077, "metachar:sym<~>", $P3078)
    nqp_get_sc_object $P3079, "1304277407.992", 79
    get_how $P3080, $P3079
    nqp_get_sc_object $P3081, "1304277407.992", 79
    .const 'Sub' $P3082 = "227_1304277412.809" 
    $P3080."add_method"($P3081, "metachar:sym<{*}>", $P3082)
    nqp_get_sc_object $P3083, "1304277407.992", 79
    get_how $P3084, $P3083
    nqp_get_sc_object $P3085, "1304277407.992", 79
    .const 'Sub' $P3086 = "228_1304277412.809" 
    $P3084."add_method"($P3085, "metachar:sym<var>", $P3086)
    nqp_get_sc_object $P3087, "1304277407.992", 79
    get_how $P3088, $P3087
    nqp_get_sc_object $P3089, "1304277407.992", 79
    .const 'Sub' $P3090 = "229_1304277412.809" 
    $P3088."add_method"($P3089, "metachar:sym<PIR>", $P3090)
    nqp_get_sc_object $P3091, "1304277407.992", 79
    get_how $P3092, $P3091
    nqp_get_sc_object $P3093, "1304277407.992", 79
    .const 'Sub' $P3094 = "230_1304277412.809" 
    $P3092."add_method"($P3093, "backslash:sym<w>", $P3094)
    nqp_get_sc_object $P3095, "1304277407.992", 79
    get_how $P3096, $P3095
    nqp_get_sc_object $P3097, "1304277407.992", 79
    .const 'Sub' $P3098 = "231_1304277412.809" 
    $P3096."add_method"($P3097, "backslash:sym<b>", $P3098)
    nqp_get_sc_object $P3099, "1304277407.992", 79
    get_how $P3100, $P3099
    nqp_get_sc_object $P3101, "1304277407.992", 79
    .const 'Sub' $P3102 = "232_1304277412.809" 
    $P3100."add_method"($P3101, "backslash:sym<e>", $P3102)
    nqp_get_sc_object $P3103, "1304277407.992", 79
    get_how $P3104, $P3103
    nqp_get_sc_object $P3105, "1304277407.992", 79
    .const 'Sub' $P3106 = "233_1304277412.809" 
    $P3104."add_method"($P3105, "backslash:sym<f>", $P3106)
    nqp_get_sc_object $P3107, "1304277407.992", 79
    get_how $P3108, $P3107
    nqp_get_sc_object $P3109, "1304277407.992", 79
    .const 'Sub' $P3110 = "234_1304277412.809" 
    $P3108."add_method"($P3109, "backslash:sym<h>", $P3110)
    nqp_get_sc_object $P3111, "1304277407.992", 79
    get_how $P3112, $P3111
    nqp_get_sc_object $P3113, "1304277407.992", 79
    .const 'Sub' $P3114 = "235_1304277412.809" 
    $P3112."add_method"($P3113, "backslash:sym<r>", $P3114)
    nqp_get_sc_object $P3115, "1304277407.992", 79
    get_how $P3116, $P3115
    nqp_get_sc_object $P3117, "1304277407.992", 79
    .const 'Sub' $P3118 = "236_1304277412.809" 
    $P3116."add_method"($P3117, "backslash:sym<t>", $P3118)
    nqp_get_sc_object $P3119, "1304277407.992", 79
    get_how $P3120, $P3119
    nqp_get_sc_object $P3121, "1304277407.992", 79
    .const 'Sub' $P3122 = "237_1304277412.809" 
    $P3120."add_method"($P3121, "backslash:sym<v>", $P3122)
    nqp_get_sc_object $P3123, "1304277407.992", 79
    get_how $P3124, $P3123
    nqp_get_sc_object $P3125, "1304277407.992", 79
    .const 'Sub' $P3126 = "238_1304277412.809" 
    $P3124."add_method"($P3125, "backslash:sym<o>", $P3126)
    nqp_get_sc_object $P3127, "1304277407.992", 79
    get_how $P3128, $P3127
    nqp_get_sc_object $P3129, "1304277407.992", 79
    .const 'Sub' $P3130 = "239_1304277412.809" 
    $P3128."add_method"($P3129, "backslash:sym<x>", $P3130)
    nqp_get_sc_object $P3131, "1304277407.992", 79
    get_how $P3132, $P3131
    nqp_get_sc_object $P3133, "1304277407.992", 79
    .const 'Sub' $P3134 = "240_1304277412.809" 
    $P3132."add_method"($P3133, "backslash:sym<c>", $P3134)
    nqp_get_sc_object $P3135, "1304277407.992", 79
    get_how $P3136, $P3135
    nqp_get_sc_object $P3137, "1304277407.992", 79
    .const 'Sub' $P3138 = "241_1304277412.809" 
    $P3136."add_method"($P3137, "backslash:sym<misc>", $P3138)
    nqp_get_sc_object $P3139, "1304277407.992", 79
    get_how $P3140, $P3139
    nqp_get_sc_object $P3141, "1304277407.992", 79
    .const 'Sub' $P3142 = "242_1304277412.809" 
    $P3140."add_method"($P3141, "assertion:sym<?>", $P3142)
    nqp_get_sc_object $P3143, "1304277407.992", 79
    get_how $P3144, $P3143
    nqp_get_sc_object $P3145, "1304277407.992", 79
    .const 'Sub' $P3146 = "243_1304277412.809" 
    $P3144."add_method"($P3145, "assertion:sym<!>", $P3146)
    nqp_get_sc_object $P3147, "1304277407.992", 79
    get_how $P3148, $P3147
    nqp_get_sc_object $P3149, "1304277407.992", 79
    .const 'Sub' $P3150 = "244_1304277412.809" 
    $P3148."add_method"($P3149, "assertion:sym<method>", $P3150)
    nqp_get_sc_object $P3151, "1304277407.992", 79
    get_how $P3152, $P3151
    nqp_get_sc_object $P3153, "1304277407.992", 79
    .const 'Sub' $P3154 = "245_1304277412.809" 
    $P3152."add_method"($P3153, "assertion:sym<name>", $P3154)
    nqp_get_sc_object $P3155, "1304277407.992", 79
    get_how $P3156, $P3155
    nqp_get_sc_object $P3157, "1304277407.992", 79
    .const 'Sub' $P3158 = "248_1304277412.809" 
    $P3156."add_method"($P3157, "assertion:sym<[>", $P3158)
    nqp_get_sc_object $P3159, "1304277407.992", 79
    get_how $P3160, $P3159
    nqp_get_sc_object $P3161, "1304277407.992", 79
    .const 'Sub' $P3162 = "250_1304277412.809" 
    $P3160."add_method"($P3161, "cclass_elem", $P3162)
    nqp_get_sc_object $P3163, "1304277407.992", 79
    get_how $P3164, $P3163
    nqp_get_sc_object $P3165, "1304277407.992", 79
    .const 'Sub' $P3166 = "254_1304277412.809" 
    $P3164."add_method"($P3165, "mod_internal", $P3166)
    .const 'Sub' $P3167 = "176_1304277412.809" 
    nqp_get_sc_object $P3168, "1304277407.992", 79
    get_who $P3169, $P3168
    set $P3169["buildsub"], $P3167
    nqp_get_sc_object $P3170, "1304277407.992", 79
    get_how $P3171, $P3170
    nqp_get_sc_object $P3172, "1304277407.992", 79
    .const 'Sub' $P3173 = "255_1304277412.809" 
    $P3171."add_method"($P3172, "subrule_alias", $P3173)
    nqp_get_sc_object $P3174, "1304277407.992", 79
    get_how $P3175, $P3174
    nqp_get_sc_object $P3176, "1304277407.992", 79
    .const 'Sub' $P3177 = "256_1304277412.809" 
    $P3175."add_method"($P3176, "named_assertion", $P3177)
    .const 'Sub' $P3178 = "175_1304277412.809" 
    $P3179 = $P3178."get_lexinfo"()
    nqp_get_sc_object $P3180, "1304277407.992", 79
    $P3179."set_static_lexpad_value"("$?PACKAGE", $P3180)
    .const 'Sub' $P3181 = "175_1304277412.809" 
    $P3182 = $P3181."get_lexinfo"()
    $P3182."finish_static_lexpad"()
    .const 'Sub' $P3183 = "175_1304277412.809" 
    $P3184 = $P3183."get_lexinfo"()
    nqp_get_sc_object $P3185, "1304277407.992", 79
    $P3184."set_static_lexpad_value"("$?CLASS", $P3185)
    .const 'Sub' $P3186 = "175_1304277412.809" 
    $P3187 = $P3186."get_lexinfo"()
    $P3187."finish_static_lexpad"()
    nqp_get_sc_object $P3188, "1304277407.992", 79
    get_how $P3189, $P3188
    nqp_get_sc_object $P3190, "1304277407.992", 79
    nqp_get_sc_object $P3191, "1304277396.391", 68
    $P3189."add_parent"($P3190, $P3191)
    nqp_get_sc_object $P3192, "1304277388.915", 41
    $P3193 = $P3192."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P3193, cur_sc
    nqp_set_sc_object "1304277407.992", 133, $P3193
    nqp_get_sc_object $P3194, "1304277407.992", 133
    nqp_get_sc_object $P3195, "1304277407.992", 0
    nqp_get_package_through_who $P3196, $P3195, "Regex"
    nqp_get_package_through_who $P3197, $P3196, "P6Regex"
    get_who $P3198, $P3197
    set $P3198["Compiler"], $P3194
    .const 'Sub' $P3199 = "258_1304277412.809" 
    $P3200 = $P3199."get_lexinfo"()
    nqp_get_sc_object $P3201, "1304277407.992", 133
    $P3200."set_static_lexpad_value"("$?PACKAGE", $P3201)
    .const 'Sub' $P3202 = "258_1304277412.809" 
    $P3203 = $P3202."get_lexinfo"()
    $P3203."finish_static_lexpad"()
    .const 'Sub' $P3204 = "258_1304277412.809" 
    $P3205 = $P3204."get_lexinfo"()
    nqp_get_sc_object $P3206, "1304277407.992", 133
    $P3205."set_static_lexpad_value"("$?CLASS", $P3206)
    .const 'Sub' $P3207 = "258_1304277412.809" 
    $P3208 = $P3207."get_lexinfo"()
    $P3208."finish_static_lexpad"()
    nqp_get_sc_object $P3209, "1304277407.992", 133
    get_how $P3210, $P3209
    nqp_get_sc_object $P3211, "1304277407.992", 133
    nqp_get_sc_object $P3212, "1304277396.391", 101
    $P3210."add_parent"($P3211, $P3212)
  if_2602_end:
    nqp_get_sc_object $P3516, "1304277407.992", 0
    set_hll_global "GLOBAL", $P3516
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1304277412.809") :outer("10_1304277412.809")
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
.sub "_block23"  :subid("12_1304277412.809") :outer("10_1304277412.809")
.annotate 'line', 9
    .const 'Sub' $P637 = "174_1304277412.809" 
    capture_lex $P637
    .const 'Sub' $P629 = "172_1304277412.809" 
    capture_lex $P629
    .const 'Sub' $P622 = "170_1304277412.809" 
    capture_lex $P622
    .const 'Sub' $P615 = "168_1304277412.809" 
    capture_lex $P615
    .const 'Sub' $P593 = "163_1304277412.809" 
    capture_lex $P593
    .const 'Sub' $P559 = "157_1304277412.809" 
    capture_lex $P559
    .const 'Sub' $P547 = "154_1304277412.809" 
    capture_lex $P547
    .const 'Sub' $P535 = "151_1304277412.809" 
    capture_lex $P535
    .const 'Sub' $P529 = "149_1304277412.809" 
    capture_lex $P529
    .const 'Sub' $P518 = "146_1304277412.809" 
    capture_lex $P518
    .const 'Sub' $P507 = "143_1304277412.809" 
    capture_lex $P507
    .const 'Sub' $P496 = "139_1304277412.809" 
    capture_lex $P496
    .const 'Sub' $P486 = "136_1304277412.809" 
    capture_lex $P486
    .const 'Sub' $P480 = "134_1304277412.809" 
    capture_lex $P480
    .const 'Sub' $P474 = "132_1304277412.809" 
    capture_lex $P474
    .const 'Sub' $P468 = "130_1304277412.809" 
    capture_lex $P468
    .const 'Sub' $P462 = "128_1304277412.809" 
    capture_lex $P462
    .const 'Sub' $P454 = "126_1304277412.809" 
    capture_lex $P454
    .const 'Sub' $P443 = "124_1304277412.809" 
    capture_lex $P443
    .const 'Sub' $P432 = "122_1304277412.809" 
    capture_lex $P432
    .const 'Sub' $P426 = "120_1304277412.809" 
    capture_lex $P426
    .const 'Sub' $P420 = "118_1304277412.809" 
    capture_lex $P420
    .const 'Sub' $P414 = "116_1304277412.809" 
    capture_lex $P414
    .const 'Sub' $P408 = "114_1304277412.809" 
    capture_lex $P408
    .const 'Sub' $P402 = "112_1304277412.809" 
    capture_lex $P402
    .const 'Sub' $P396 = "110_1304277412.809" 
    capture_lex $P396
    .const 'Sub' $P390 = "108_1304277412.809" 
    capture_lex $P390
    .const 'Sub' $P384 = "106_1304277412.809" 
    capture_lex $P384
    .const 'Sub' $P370 = "102_1304277412.809" 
    capture_lex $P370
    .const 'Sub' $P360 = "100_1304277412.809" 
    capture_lex $P360
    .const 'Sub' $P353 = "98_1304277412.809" 
    capture_lex $P353
    .const 'Sub' $P341 = "96_1304277412.809" 
    capture_lex $P341
    .const 'Sub' $P334 = "94_1304277412.809" 
    capture_lex $P334
    .const 'Sub' $P328 = "92_1304277412.809" 
    capture_lex $P328
    .const 'Sub' $P322 = "90_1304277412.809" 
    capture_lex $P322
    .const 'Sub' $P316 = "88_1304277412.809" 
    capture_lex $P316
    .const 'Sub' $P309 = "86_1304277412.809" 
    capture_lex $P309
    .const 'Sub' $P302 = "84_1304277412.809" 
    capture_lex $P302
    .const 'Sub' $P295 = "82_1304277412.809" 
    capture_lex $P295
    .const 'Sub' $P288 = "80_1304277412.809" 
    capture_lex $P288
    .const 'Sub' $P282 = "78_1304277412.809" 
    capture_lex $P282
    .const 'Sub' $P276 = "76_1304277412.809" 
    capture_lex $P276
    .const 'Sub' $P270 = "74_1304277412.809" 
    capture_lex $P270
    .const 'Sub' $P264 = "72_1304277412.809" 
    capture_lex $P264
    .const 'Sub' $P258 = "70_1304277412.809" 
    capture_lex $P258
    .const 'Sub' $P253 = "68_1304277412.809" 
    capture_lex $P253
    .const 'Sub' $P248 = "66_1304277412.809" 
    capture_lex $P248
    .const 'Sub' $P242 = "64_1304277412.809" 
    capture_lex $P242
    .const 'Sub' $P236 = "62_1304277412.809" 
    capture_lex $P236
    .const 'Sub' $P230 = "60_1304277412.809" 
    capture_lex $P230
    .const 'Sub' $P213 = "55_1304277412.809" 
    capture_lex $P213
    .const 'Sub' $P198 = "53_1304277412.809" 
    capture_lex $P198
    .const 'Sub' $P175 = "47_1304277412.809" 
    capture_lex $P175
    .const 'Sub' $P168 = "45_1304277412.809" 
    capture_lex $P168
    .const 'Sub' $P161 = "43_1304277412.809" 
    capture_lex $P161
    .const 'Sub' $P154 = "41_1304277412.809" 
    capture_lex $P154
    .const 'Sub' $P135 = "36_1304277412.809" 
    capture_lex $P135
    .const 'Sub' $P123 = "33_1304277412.809" 
    capture_lex $P123
    .const 'Sub' $P116 = "31_1304277412.809" 
    capture_lex $P116
    .const 'Sub' $P107 = "29_1304277412.809" 
    capture_lex $P107
    .const 'Sub' $P97 = "27_1304277412.809" 
    capture_lex $P97
    .const 'Sub' $P90 = "25_1304277412.809" 
    capture_lex $P90
    .const 'Sub' $P78 = "23_1304277412.809" 
    capture_lex $P78
    .const 'Sub' $P71 = "21_1304277412.809" 
    capture_lex $P71
    .const 'Sub' $P64 = "19_1304277412.809" 
    capture_lex $P64
    .const 'Sub' $P54 = "16_1304277412.809" 
    capture_lex $P54
    .const 'Sub' $P47 = "14_1304277412.809" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1304277412.809" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 11
    .const 'Sub' $P629 = "172_1304277412.809" 
    capture_lex $P629
.annotate 'line', 9
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post264") :outer("12_1304277412.809")
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1304277412.809" 
    .local pmc block
    set block, $P24
    .const 'Sub' $P637 = "174_1304277412.809" 
    capture_lex $P637
    $P637()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block636"  :anon :subid("174_1304277412.809") :outer("12_1304277412.809")
.annotate 'line', 9
    nqp_get_sc_object $P638, "1304277407.992", 1
    .local pmc type_obj
    set type_obj, $P638
    get_how $P639, type_obj
    get_global $P640, "!PREFIX__ws"
    $P639."add_method"(type_obj, "!PREFIX__ws", $P640)
    get_how $P641, type_obj
    get_global $P642, "!PREFIX__normspace"
    $P641."add_method"(type_obj, "!PREFIX__normspace", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__identifier"
    $P643."add_method"(type_obj, "!PREFIX__identifier", $P644)
    get_how $P645, type_obj
    get_global $P646, "!PREFIX__arg"
    $P645."add_method"(type_obj, "!PREFIX__arg", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__arglist"
    $P647."add_method"(type_obj, "!PREFIX__arglist", $P648)
    get_how $P649, type_obj
    get_global $P650, "!PREFIX__TOP"
    $P649."add_method"(type_obj, "!PREFIX__TOP", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__nibbler"
    $P651."add_method"(type_obj, "!PREFIX__nibbler", $P652)
    get_how $P653, type_obj
    get_global $P654, "!PREFIX__termconj"
    $P653."add_method"(type_obj, "!PREFIX__termconj", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__termish"
    $P655."add_method"(type_obj, "!PREFIX__termish", $P656)
    get_how $P657, type_obj
    get_global $P658, "!PREFIX__quantified_atom"
    $P657."add_method"(type_obj, "!PREFIX__quantified_atom", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__atom"
    $P659."add_method"(type_obj, "!PREFIX__atom", $P660)
    get_how $P661, type_obj
    get_global $P662, "!PREFIX__quantifier:sym<*>"
    $P661."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__quantifier:sym<+>"
    $P663."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P664)
    get_how $P665, type_obj
    get_global $P666, "!PREFIX__quantifier:sym<?>"
    $P665."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__quantifier:sym<{N,M}>"
    $P667."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P668)
    get_how $P669, type_obj
    get_global $P670, "!PREFIX__quantifier:sym<**>"
    $P669."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__backmod"
    $P671."add_method"(type_obj, "!PREFIX__backmod", $P672)
    get_how $P673, type_obj
    get_global $P674, "!PREFIX__metachar:sym<ws>"
    $P673."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__metachar:sym<[ ]>"
    $P675."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P676)
    get_how $P677, type_obj
    get_global $P678, "!PREFIX__metachar:sym<( )>"
    $P677."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__metachar:sym<'>"
    $P679."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P680)
    get_how $P681, type_obj
    get_global $P682, "!PREFIX__metachar:sym<\">"
    $P681."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__metachar:sym<.>"
    $P683."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P684)
    get_how $P685, type_obj
    get_global $P686, "!PREFIX__metachar:sym<^>"
    $P685."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P686)
    get_how $P687, type_obj
    get_global $P688, "!PREFIX__metachar:sym<^^>"
    $P687."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P688)
    get_how $P689, type_obj
    get_global $P690, "!PREFIX__metachar:sym<$>"
    $P689."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P690)
    get_how $P691, type_obj
    get_global $P692, "!PREFIX__metachar:sym<$$>"
    $P691."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P692)
    get_how $P693, type_obj
    get_global $P694, "!PREFIX__metachar:sym<:::>"
    $P693."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P694)
    get_how $P695, type_obj
    get_global $P696, "!PREFIX__metachar:sym<::>"
    $P695."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P696)
    get_how $P697, type_obj
    get_global $P698, "!PREFIX__metachar:sym<lwb>"
    $P697."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__metachar:sym<rwb>"
    $P699."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P700)
    get_how $P701, type_obj
    get_global $P702, "!PREFIX__metachar:sym<bs>"
    $P701."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__metachar:sym<mod>"
    $P703."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P704)
    get_how $P705, type_obj
    get_global $P706, "!PREFIX__metachar:sym<quantifier>"
    $P705."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__metachar:sym<~>"
    $P707."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P708)
    get_how $P709, type_obj
    get_global $P710, "!PREFIX__metachar:sym<{*}>"
    $P709."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__metachar:sym<assert>"
    $P711."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P712)
    get_how $P713, type_obj
    get_global $P714, "!PREFIX__metachar:sym<var>"
    $P713."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P714)
    get_how $P715, type_obj
    get_global $P716, "!PREFIX__metachar:sym<PIR>"
    $P715."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P716)
    get_how $P717, type_obj
    get_global $P718, "!PREFIX__backslash:sym<w>"
    $P717."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P718)
    get_how $P719, type_obj
    get_global $P720, "!PREFIX__backslash:sym<b>"
    $P719."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P720)
    get_how $P721, type_obj
    get_global $P722, "!PREFIX__backslash:sym<e>"
    $P721."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P722)
    get_how $P723, type_obj
    get_global $P724, "!PREFIX__backslash:sym<f>"
    $P723."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P724)
    get_how $P725, type_obj
    get_global $P726, "!PREFIX__backslash:sym<h>"
    $P725."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__backslash:sym<r>"
    $P727."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P728)
    get_how $P729, type_obj
    get_global $P730, "!PREFIX__backslash:sym<t>"
    $P729."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__backslash:sym<v>"
    $P731."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P732)
    get_how $P733, type_obj
    get_global $P734, "!PREFIX__backslash:sym<o>"
    $P733."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__backslash:sym<x>"
    $P735."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P736)
    get_how $P737, type_obj
    get_global $P738, "!PREFIX__backslash:sym<c>"
    $P737."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__backslash:sym<A>"
    $P739."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P740)
    get_how $P741, type_obj
    get_global $P742, "!PREFIX__backslash:sym<z>"
    $P741."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__backslash:sym<Z>"
    $P743."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P744)
    get_how $P745, type_obj
    get_global $P746, "!PREFIX__backslash:sym<Q>"
    $P745."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__backslash:sym<unrec>"
    $P747."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P748)
    get_how $P749, type_obj
    get_global $P750, "!PREFIX__backslash:sym<misc>"
    $P749."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__assertion:sym<?>"
    $P751."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P752)
    get_how $P753, type_obj
    get_global $P754, "!PREFIX__assertion:sym<!>"
    $P753."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__assertion:sym<method>"
    $P755."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P756)
    get_how $P757, type_obj
    get_global $P758, "!PREFIX__assertion:sym<name>"
    $P757."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__assertion:sym<[>"
    $P759."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P760)
    get_how $P761, type_obj
    get_global $P762, "!PREFIX__cclass_elem"
    $P761."add_method"(type_obj, "!PREFIX__cclass_elem", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__mod_internal"
    $P763."add_method"(type_obj, "!PREFIX__mod_internal", $P764)
    get_how $P765, type_obj
    get_global $P766, "!PREFIX__mod_ident:sym<ignorecase>"
    $P765."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__mod_ident:sym<ratchet>"
    $P767."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P768)
    get_how $P769, type_obj
    get_global $P770, "!PREFIX__mod_ident:sym<sigspace>"
    $P769."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P770)
    get_how $P771, type_obj
    $P772 = $P771."compose"(type_obj)
    .return ($P772)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1304277412.809") :outer("12_1304277412.809")
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
.sub "ws"  :subid("14_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1304277412.809") :method
.annotate 'line', 11
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P60 = "18_1304277412.809" 
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
    .const 'Sub' $P60 = "18_1304277412.809" 
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
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1304277412.809") :method
.annotate 'line', 11
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block59"  :anon :subid("18_1304277412.809") :method :outer("16_1304277412.809")
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
.sub "identifier"  :subid("19_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1304277412.809") :method
.annotate 'line', 11
    $P67 = self."!PREFIX__!subrule"("ident", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1304277412.809") :method
.annotate 'line', 11
    new $P74, "ResizablePMCArray"
    push $P74, ""
    push $P74, "\""
    push $P74, "'"
    .return ($P74)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1304277412.809") :method
.annotate 'line', 11
    $P81 = self."!PREFIX__!subrule"("ws", "")
    new $P82, "ResizablePMCArray"
    push $P82, $P81
    .return ($P82)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1304277412.809") :method
.annotate 'line', 11
    $P93 = self."!PREFIX__!subrule"("nibbler", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P93
    .return ($P94)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1304277412.809") :method
.annotate 'line', 11
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1304277412.809") :method
.annotate 'line', 11
    $P110 = self."!PREFIX__!subrule"("termish", "")
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1304277412.809") :method
.annotate 'line', 11
    new $P119, "ResizablePMCArray"
    push $P119, ""
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P132 = "35_1304277412.809" 
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
    .const 'Sub' $P132 = "35_1304277412.809" 
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
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1304277412.809") :method
.annotate 'line', 11
    $P126 = self."!PREFIX__!subrule"("atom", "")
    new $P127, "ResizablePMCArray"
    push $P127, $P126
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block131"  :anon :subid("35_1304277412.809") :method :outer("33_1304277412.809")
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
.sub "atom"  :subid("36_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P145 = "38_1304277412.809" 
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
    .const 'Sub' $P145 = "38_1304277412.809" 
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
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1304277412.809") :method
.annotate 'line', 11
    $P138 = self."!PREFIX__!subrule"("metachar", "")
    new $P139, "ResizablePMCArray"
    push $P139, $P138
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block144"  :anon :subid("38_1304277412.809") :method :outer("36_1304277412.809")
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
.sub "quantifier"  :subid("39_1304277412.809")
    .param pmc param_149
.annotate 'line', 69
    .lex "self", param_149
    $P150 = param_149."!protoregex"("quantifier")
    .return ($P150)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1304277412.809")
    .param pmc param_152
.annotate 'line', 69
    .lex "self", param_152
    $P153 = param_152."!PREFIX__!protoregex"("quantifier")
    .return ($P153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1304277412.809") :method
.annotate 'line', 11
    $P157 = self."!PREFIX__!subrule"("backmod", "*")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1304277412.809") :method
.annotate 'line', 11
    $P164 = self."!PREFIX__!subrule"("backmod", "+")
    new $P165, "ResizablePMCArray"
    push $P165, $P164
    .return ($P165)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1304277412.809") :method
.annotate 'line', 11
    $P171 = self."!PREFIX__!subrule"("backmod", "?")
    new $P172, "ResizablePMCArray"
    push $P172, $P171
    .return ($P172)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P195 = "52_1304277412.809" 
    capture_lex $P195
    .const 'Sub' $P190 = "51_1304277412.809" 
    capture_lex $P190
    .const 'Sub' $P186 = "50_1304277412.809" 
    capture_lex $P186
    .const 'Sub' $P183 = "49_1304277412.809" 
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
    .const 'Sub' $P183 = "49_1304277412.809" 
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
    .const 'Sub' $P186 = "50_1304277412.809" 
    capture_lex $P186
    $P10 = rx176_cur.$P186()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx176_pos = $P10."pos"()
  # rx subrule $P190 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P190 = "51_1304277412.809" 
    capture_lex $P190
    $P10 = rx176_cur.$P190()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx176_pos = $P10."pos"()
  # rx subrule $P195 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P195 = "52_1304277412.809" 
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
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1304277412.809") :method
.annotate 'line', 11
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("49_1304277412.809") :outer("47_1304277412.809")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block185"  :anon :subid("50_1304277412.809") :method :outer("47_1304277412.809")
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
.sub "_block189"  :anon :subid("51_1304277412.809") :method :outer("47_1304277412.809")
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
.sub "_block194"  :anon :subid("52_1304277412.809") :method :outer("47_1304277412.809")
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
.sub "quantifier:sym<**>"  :subid("53_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1304277412.809") :method
.annotate 'line', 11
    new $P201, "ResizablePMCArray"
    push $P201, "**"
    .return ($P201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P221 = "57_1304277412.809" 
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
    .const 'Sub' $P221 = "57_1304277412.809" 
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
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1304277412.809") :method
.annotate 'line', 11
    new $P216, "ResizablePMCArray"
    push $P216, ""
    .return ($P216)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block220"  :anon :subid("57_1304277412.809") :method :outer("55_1304277412.809")
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
.sub "metachar"  :subid("58_1304277412.809")
    .param pmc param_225
.annotate 'line', 93
    .lex "self", param_225
    $P226 = param_225."!protoregex"("metachar")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1304277412.809")
    .param pmc param_228
.annotate 'line', 93
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("metachar")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1304277412.809") :method
.annotate 'line', 11
    $P233 = self."!PREFIX__!subrule"("normspace", "")
    new $P234, "ResizablePMCArray"
    push $P234, $P233
    .return ($P234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1304277412.809") :method
.annotate 'line', 11
    $P239 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1304277412.809") :method
.annotate 'line', 11
    $P245 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P246, "ResizablePMCArray"
    push $P246, $P245
    .return ($P246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1304277412.809") :method
.annotate 'line', 11
    new $P251, "ResizablePMCArray"
    push $P251, "'"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("69_1304277412.809") :method
.annotate 'line', 11
    new $P256, "ResizablePMCArray"
    push $P256, "\""
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1304277412.809") :method
.annotate 'line', 11
    new $P261, "ResizablePMCArray"
    push $P261, "."
    .return ($P261)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1304277412.809") :method
.annotate 'line', 11
    new $P267, "ResizablePMCArray"
    push $P267, "^"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1304277412.809") :method
.annotate 'line', 11
    new $P273, "ResizablePMCArray"
    push $P273, "^^"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1304277412.809") :method
.annotate 'line', 11
    new $P279, "ResizablePMCArray"
    push $P279, "$"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1304277412.809") :method
.annotate 'line', 11
    new $P285, "ResizablePMCArray"
    push $P285, "$$"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1304277412.809") :method
.annotate 'line', 11
    $P291 = self."!PREFIX__!subrule"("panic", ":::")
    new $P292, "ResizablePMCArray"
    push $P292, $P291
    .return ($P292)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1304277412.809") :method
.annotate 'line', 11
    $P298 = self."!PREFIX__!subrule"("panic", "::")
    new $P299, "ResizablePMCArray"
    push $P299, $P298
    .return ($P299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1304277412.809") :method
.annotate 'line', 11
    new $P305, "ResizablePMCArray"
    push $P305, unicode:"\x{ab}"
    push $P305, "<<"
    .return ($P305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1304277412.809") :method
.annotate 'line', 11
    new $P312, "ResizablePMCArray"
    push $P312, unicode:"\x{bb}"
    push $P312, ">>"
    .return ($P312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1304277412.809") :method
.annotate 'line', 11
    $P319 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P320, "ResizablePMCArray"
    push $P320, $P319
    .return ($P320)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1304277412.809") :method
.annotate 'line', 11
    $P325 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P326, "ResizablePMCArray"
    push $P326, $P325
    .return ($P326)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1304277412.809") :method
.annotate 'line', 11
    $P331 = self."!PREFIX__!subrule"("quantifier", "")
    new $P332, "ResizablePMCArray"
    push $P332, $P331
    .return ($P332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1304277412.809") :method
.annotate 'line', 11
    $P337 = self."!PREFIX__!subrule"("ws", "~")
    new $P338, "ResizablePMCArray"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1304277412.809") :method
.annotate 'line', 11
    new $P344, "ResizablePMCArray"
    push $P344, "{*}"
    .return ($P344)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1304277412.809") :method
.annotate 'line', 11
    $P356 = self."!PREFIX__!subrule"("assertion", "<")
    new $P357, "ResizablePMCArray"
    push $P357, $P356
    .return ($P357)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1304277412.809") :method
.annotate 'line', 11
    new $P363, "ResizablePMCArray"
    push $P363, "$"
    push $P363, "$<"
    .return ($P363)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1304277412.809") :method
.annotate 'line', 11
    new $P373, "ResizablePMCArray"
    push $P373, ":PIR{{"
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1304277412.809")
    .param pmc param_379
.annotate 'line', 143
    .lex "self", param_379
    $P380 = param_379."!protoregex"("backslash")
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1304277412.809")
    .param pmc param_382
.annotate 'line', 143
    .lex "self", param_382
    $P383 = param_382."!PREFIX__!protoregex"("backslash")
    .return ($P383)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1304277412.809") :method
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
.sub "backslash:sym<b>"  :subid("108_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1304277412.809") :method
.annotate 'line', 11
    new $P393, "ResizablePMCArray"
    push $P393, "B"
    push $P393, "b"
    .return ($P393)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1304277412.809") :method
.annotate 'line', 11
    new $P399, "ResizablePMCArray"
    push $P399, "E"
    push $P399, "e"
    .return ($P399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1304277412.809") :method
.annotate 'line', 11
    new $P405, "ResizablePMCArray"
    push $P405, "F"
    push $P405, "f"
    .return ($P405)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1304277412.809") :method
.annotate 'line', 11
    new $P411, "ResizablePMCArray"
    push $P411, "H"
    push $P411, "h"
    .return ($P411)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1304277412.809") :method
.annotate 'line', 11
    new $P417, "ResizablePMCArray"
    push $P417, "R"
    push $P417, "r"
    .return ($P417)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1304277412.809") :method
.annotate 'line', 11
    new $P423, "ResizablePMCArray"
    push $P423, "T"
    push $P423, "t"
    .return ($P423)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1304277412.809") :method
.annotate 'line', 11
    new $P429, "ResizablePMCArray"
    push $P429, "V"
    push $P429, "v"
    .return ($P429)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1304277412.809") :method
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
.sub "backslash:sym<x>"  :subid("124_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1304277412.809") :method
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
.sub "backslash:sym<c>"  :subid("126_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1304277412.809") :method
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
.sub "backslash:sym<A>"  :subid("128_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1304277412.809") :method
.annotate 'line', 11
    $P465 = self."!PREFIX__!subrule"("obs", "A")
    new $P466, "ResizablePMCArray"
    push $P466, $P465
    .return ($P466)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1304277412.809") :method
.annotate 'line', 11
    $P471 = self."!PREFIX__!subrule"("obs", "z")
    new $P472, "ResizablePMCArray"
    push $P472, $P471
    .return ($P472)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1304277412.809") :method
.annotate 'line', 11
    $P477 = self."!PREFIX__!subrule"("obs", "Z")
    new $P478, "ResizablePMCArray"
    push $P478, $P477
    .return ($P478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1304277412.809") :method
.annotate 'line', 11
    $P483 = self."!PREFIX__!subrule"("obs", "Q")
    new $P484, "ResizablePMCArray"
    push $P484, $P483
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P494 = "138_1304277412.809" 
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
    .const 'Sub' $P494 = "138_1304277412.809" 
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
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1304277412.809") :method
.annotate 'line', 11
    new $P489, "ResizablePMCArray"
    push $P489, ""
    .return ($P489)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block493"  :anon :subid("138_1304277412.809") :outer("136_1304277412.809")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1304277412.809") :method
.annotate 'line', 11
    new $P499, "ResizablePMCArray"
    push $P499, ""
    .return ($P499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1304277412.809")
    .param pmc param_502
.annotate 'line', 162
    .lex "self", param_502
    $P503 = param_502."!protoregex"("assertion")
    .return ($P503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1304277412.809")
    .param pmc param_505
.annotate 'line', 162
    .lex "self", param_505
    $P506 = param_505."!PREFIX__!protoregex"("assertion")
    .return ($P506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P515 = "145_1304277412.809" 
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
    .const 'Sub' $P515 = "145_1304277412.809" 
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
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1304277412.809") :method
.annotate 'line', 11
    $P510 = self."!PREFIX__!subrule"("assertion", "?")
    new $P511, "ResizablePMCArray"
    push $P511, $P510
    push $P511, "?"
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block514"  :anon :subid("145_1304277412.809") :method :outer("143_1304277412.809")
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
.sub "assertion:sym<!>"  :subid("146_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P526 = "148_1304277412.809" 
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
    .const 'Sub' $P526 = "148_1304277412.809" 
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
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1304277412.809") :method
.annotate 'line', 11
    $P521 = self."!PREFIX__!subrule"("assertion", "!")
    new $P522, "ResizablePMCArray"
    push $P522, $P521
    push $P522, "!"
    .return ($P522)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block525"  :anon :subid("148_1304277412.809") :method :outer("146_1304277412.809")
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
.sub "assertion:sym<method>"  :subid("149_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1304277412.809") :method
.annotate 'line', 11
    $P532 = self."!PREFIX__!subrule"("assertion", ".")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P544 = "153_1304277412.809" 
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
    .const 'Sub' $P544 = "153_1304277412.809" 
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
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1304277412.809") :method
.annotate 'line', 11
    $P538 = self."!PREFIX__!subrule"("identifier", "")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    .return ($P539)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block543"  :anon :subid("153_1304277412.809") :method :outer("151_1304277412.809")
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
.sub "assertion:sym<[>"  :subid("154_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P553 = "156_1304277412.809" 
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
    .const 'Sub' $P553 = "156_1304277412.809" 
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
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1304277412.809") :method
.annotate 'line', 11
    new $P550, "ResizablePMCArray"
    push $P550, ""
    .return ($P550)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block552"  :anon :subid("156_1304277412.809") :method :outer("154_1304277412.809")
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
.sub "cclass_elem"  :subid("157_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P571 = "159_1304277412.809" 
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
    .const 'Sub' $P571 = "159_1304277412.809" 
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
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1304277412.809") :method
.annotate 'line', 11
    new $P562, "ResizablePMCArray"
    push $P562, ""
    push $P562, "-"
    push $P562, "+"
    .return ($P562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block570"  :anon :subid("159_1304277412.809") :method :outer("157_1304277412.809")
.annotate 'line', 188
    .const 'Sub' $P586 = "162_1304277412.809" 
    capture_lex $P586
    .const 'Sub' $P581 = "161_1304277412.809" 
    capture_lex $P581
    .const 'Sub' $P577 = "160_1304277412.809" 
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
    .const 'Sub' $P577 = "160_1304277412.809" 
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
    .const 'Sub' $P581 = "161_1304277412.809" 
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
    .const 'Sub' $P586 = "162_1304277412.809" 
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
.sub "_block576"  :anon :subid("160_1304277412.809") :method :outer("159_1304277412.809")
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
.sub "_block580"  :anon :subid("161_1304277412.809") :method :outer("159_1304277412.809")
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
.sub "_block585"  :anon :subid("162_1304277412.809") :method :outer("159_1304277412.809")
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
.sub "mod_internal"  :subid("163_1304277412.809") :method :outer("12_1304277412.809")
.annotate 'line', 11
    .const 'Sub' $P602 = "165_1304277412.809" 
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
    .const 'Sub' $P602 = "165_1304277412.809" 
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
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1304277412.809") :method
.annotate 'line', 11
    $P596 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    push $P597, ":"
    .return ($P597)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block601"  :anon :subid("165_1304277412.809") :method :outer("163_1304277412.809")
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
.sub "mod_ident"  :subid("166_1304277412.809")
    .param pmc param_610
.annotate 'line', 205
    .lex "self", param_610
    $P611 = param_610."!protoregex"("mod_ident")
    .return ($P611)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1304277412.809")
    .param pmc param_613
.annotate 'line', 205
    .lex "self", param_613
    $P614 = param_613."!PREFIX__!protoregex"("mod_ident")
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1304277412.809") :method
.annotate 'line', 11
    new $P618, "ResizablePMCArray"
    push $P618, "i"
    .return ($P618)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1304277412.809") :method
.annotate 'line', 11
    new $P625, "ResizablePMCArray"
    push $P625, "r"
    .return ($P625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1304277412.809") :method :outer("12_1304277412.809")
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
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1304277412.809") :method
.annotate 'line', 11
    new $P632, "ResizablePMCArray"
    push $P632, "s"
    .return ($P632)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block773"  :subid("175_1304277412.809") :outer("10_1304277412.809")
.annotate 'line', 212
    .const 'Sub' $P2559 = "257_1304277412.809" 
    capture_lex $P2559
    .const 'Sub' $P2539 = "256_1304277412.809" 
    capture_lex $P2539
    .const 'Sub' $P2521 = "255_1304277412.809" 
    capture_lex $P2521
    .const 'Sub' $P2489 = "254_1304277412.809" 
    capture_lex $P2489
    .const 'Sub' $P2416 = "250_1304277412.809" 
    capture_lex $P2416
    .const 'Sub' $P2338 = "248_1304277412.809" 
    capture_lex $P2338
    .const 'Sub' $P2258 = "245_1304277412.809" 
    capture_lex $P2258
    .const 'Sub' $P2246 = "244_1304277412.809" 
    capture_lex $P2246
    .const 'Sub' $P2221 = "243_1304277412.809" 
    capture_lex $P2221
    .const 'Sub' $P2205 = "242_1304277412.809" 
    capture_lex $P2205
    .const 'Sub' $P2190 = "241_1304277412.809" 
    capture_lex $P2190
    .const 'Sub' $P2176 = "240_1304277412.809" 
    capture_lex $P2176
    .const 'Sub' $P2137 = "239_1304277412.809" 
    capture_lex $P2137
    .const 'Sub' $P2098 = "238_1304277412.809" 
    capture_lex $P2098
    .const 'Sub' $P2081 = "237_1304277412.809" 
    capture_lex $P2081
    .const 'Sub' $P2064 = "236_1304277412.809" 
    capture_lex $P2064
    .const 'Sub' $P2047 = "235_1304277412.809" 
    capture_lex $P2047
    .const 'Sub' $P2030 = "234_1304277412.809" 
    capture_lex $P2030
    .const 'Sub' $P2013 = "233_1304277412.809" 
    capture_lex $P2013
    .const 'Sub' $P1996 = "232_1304277412.809" 
    capture_lex $P1996
    .const 'Sub' $P1979 = "231_1304277412.809" 
    capture_lex $P1979
    .const 'Sub' $P1954 = "230_1304277412.809" 
    capture_lex $P1954
    .const 'Sub' $P1935 = "229_1304277412.809" 
    capture_lex $P1935
    .const 'Sub' $P1873 = "228_1304277412.809" 
    capture_lex $P1873
    .const 'Sub' $P1851 = "227_1304277412.809" 
    capture_lex $P1851
    .const 'Sub' $P1822 = "226_1304277412.809" 
    capture_lex $P1822
    .const 'Sub' $P1814 = "225_1304277412.809" 
    capture_lex $P1814
    .const 'Sub' $P1806 = "224_1304277412.809" 
    capture_lex $P1806
    .const 'Sub' $P1798 = "223_1304277412.809" 
    capture_lex $P1798
    .const 'Sub' $P1785 = "222_1304277412.809" 
    capture_lex $P1785
    .const 'Sub' $P1772 = "221_1304277412.809" 
    capture_lex $P1772
    .const 'Sub' $P1759 = "220_1304277412.809" 
    capture_lex $P1759
    .const 'Sub' $P1746 = "219_1304277412.809" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "218_1304277412.809" 
    capture_lex $P1733
    .const 'Sub' $P1720 = "217_1304277412.809" 
    capture_lex $P1720
    .const 'Sub' $P1707 = "216_1304277412.809" 
    capture_lex $P1707
    .const 'Sub' $P1694 = "215_1304277412.809" 
    capture_lex $P1694
    .const 'Sub' $P1660 = "214_1304277412.809" 
    capture_lex $P1660
    .const 'Sub' $P1626 = "213_1304277412.809" 
    capture_lex $P1626
    .const 'Sub' $P1607 = "212_1304277412.809" 
    capture_lex $P1607
    .const 'Sub' $P1599 = "211_1304277412.809" 
    capture_lex $P1599
    .const 'Sub' $P1578 = "210_1304277412.809" 
    capture_lex $P1578
    .const 'Sub' $P1487 = "208_1304277412.809" 
    capture_lex $P1487
    .const 'Sub' $P1469 = "207_1304277412.809" 
    capture_lex $P1469
    .const 'Sub' $P1453 = "206_1304277412.809" 
    capture_lex $P1453
    .const 'Sub' $P1437 = "205_1304277412.809" 
    capture_lex $P1437
    .const 'Sub' $P1408 = "204_1304277412.809" 
    capture_lex $P1408
    .const 'Sub' $P1357 = "202_1304277412.809" 
    capture_lex $P1357
    .const 'Sub' $P1282 = "200_1304277412.809" 
    capture_lex $P1282
    .const 'Sub' $P1244 = "198_1304277412.809" 
    capture_lex $P1244
    .const 'Sub' $P1178 = "195_1304277412.809" 
    capture_lex $P1178
    .const 'Sub' $P1165 = "194_1304277412.809" 
    capture_lex $P1165
    .const 'Sub' $P1138 = "192_1304277412.809" 
    capture_lex $P1138
    .const 'Sub' $P1123 = "191_1304277412.809" 
    capture_lex $P1123
    .const 'Sub' $P1082 = "190_1304277412.809" 
    capture_lex $P1082
    .const 'Sub' $P830 = "177_1304277412.809" 
    capture_lex $P830
    .const 'Sub' $P775 = "176_1304277412.809" 
    capture_lex $P775
.annotate 'line', 719
    .const 'Sub' $P775 = "176_1304277412.809" 
    newclosure $P826, $P775
    .lex "buildsub", $P826
.annotate 'line', 212
    find_lex $P827, "buildsub"
    find_lex $P828, "$?PACKAGE"
    get_who $P829, $P828
    set $P829["buildsub"], $P827
.annotate 'line', 737
    .const 'Sub' $P830 = "177_1304277412.809" 
    newclosure $P1081, $P830
    .lex "capnames", $P1081
.annotate 'line', 803
    .const 'Sub' $P1082 = "190_1304277412.809" 
    newclosure $P1111, $P1082
    .lex "backmod", $P1111
.annotate 'line', 212
    .lex "$?PACKAGE", $P1112
    .lex "$?CLASS", $P1113
.annotate 'line', 219

            $P1114 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1114, $P0
        
    find_lex $P1115, "$?PACKAGE"
    get_who $P1116, $P1115
    set $P1116["@MODIFIERS"], $P1114
.annotate 'line', 212
    find_lex $P1117, "$?PACKAGE"
    get_who $P1118, $P1117
    set $P1119, $P1118["@MODIFIERS"]
    unless_null $P1119, vivify_715
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P1120, "$?PACKAGE"
    get_who $P1121, $P1120
    set $P1122, $P1121["$REGEXNAME"]
    unless_null $P1122, vivify_716
    new $P1122, "Undef"
  vivify_716:
.annotate 'line', 712
    find_lex $P2518, "buildsub"
    find_lex $P2519, "capnames"
    find_lex $P2520, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2539 = "256_1304277412.809" 
    newclosure $P2557, $P2539
.annotate 'line', 212
    .return ($P2557)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post597") :outer("175_1304277412.809")
.annotate 'line', 212
    .const 'Sub' $P774 = "175_1304277412.809" 
    .local pmc block
    set block, $P774
    .const 'Sub' $P2559 = "257_1304277412.809" 
    capture_lex $P2559
    $P2559()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2558"  :anon :subid("257_1304277412.809") :outer("175_1304277412.809")
.annotate 'line', 212
    nqp_get_sc_object $P2560, "1304277407.992", 79
    .local pmc type_obj
    set type_obj, $P2560
    get_how $P2561, type_obj
    $P2562 = $P2561."compose"(type_obj)
    .return ($P2562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_776
    .param pmc param_777 :optional
    .param int has_param_777 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_776
    if has_param_777, optparam_598
    get_hll_global $P778, "GLOBAL"
    nqp_get_package_through_who $P779, $P778, "PAST"
    get_who $P780, $P779
    set $P781, $P780["Block"]
    $P782 = $P781."new"()
    set param_777, $P782
  optparam_598:
    .lex "$block", param_777
.annotate 'line', 720
    $P783 = root_new ['parrot';'Hash']
    .lex "%capnames", $P783
    find_lex $P784, "$rpast"
    unless_null $P784, vivify_599
    new $P784, "Undef"
  vivify_599:
    $P785 = "capnames"($P784, 0)
    store_lex "%capnames", $P785
.annotate 'line', 721
    new $P786, "Integer"
    assign $P786, 0
    find_lex $P787, "%capnames"
    unless_null $P787, vivify_600
    $P787 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P787
  vivify_600:
    set $P787[""], $P786
.annotate 'line', 722
    get_hll_global $P788, "GLOBAL"
    nqp_get_package_through_who $P789, $P788, "PAST"
    get_who $P790, $P789
    set $P791, $P790["Regex"]
.annotate 'line', 723
    get_hll_global $P792, "GLOBAL"
    nqp_get_package_through_who $P793, $P792, "PAST"
    get_who $P794, $P793
    set $P795, $P794["Regex"]
    $P796 = $P795."new"("scan" :named("pasttype"))
    find_lex $P797, "$rpast"
    unless_null $P797, vivify_601
    new $P797, "Undef"
  vivify_601:
.annotate 'line', 725
    get_hll_global $P798, "GLOBAL"
    nqp_get_package_through_who $P799, $P798, "PAST"
    get_who $P800, $P799
    set $P801, $P800["Regex"]
.annotate 'line', 726
    find_lex $P804, "$?PACKAGE"
    get_who $P805, $P804
    set $P806, $P805["@MODIFIERS"]
    unless_null $P806, vivify_602
    $P806 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P807, $P806[0]
    unless_null $P807, vivify_603
    $P807 = root_new ['parrot';'Hash']
  vivify_603:
    set $P808, $P807["r"]
    unless_null $P808, vivify_604
    new $P808, "Undef"
  vivify_604:
    if $P808, if_803
    new $P810, "String"
    assign $P810, "g"
    set $P802, $P810
    goto if_803_end
  if_803:
    new $P809, "String"
    assign $P809, "r"
    set $P802, $P809
  if_803_end:
    $P811 = $P801."new"("pass" :named("pasttype"), $P802 :named("backtrack"))
.annotate 'line', 725
    find_lex $P812, "%capnames"
    unless_null $P812, vivify_605
    $P812 = root_new ['parrot';'Hash']
  vivify_605:
    $P813 = $P791."new"($P796, $P797, $P811, "concat" :named("pasttype"), $P812 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P813
.annotate 'line', 730
    find_lex $P815, "$block"
    unless_null $P815, vivify_606
    new $P815, "Undef"
  vivify_606:
    $P816 = $P815."symbol"(unicode:"$\x{a2}")
    if $P816, unless_814_end
    find_lex $P817, "$block"
    unless_null $P817, vivify_607
    new $P817, "Undef"
  vivify_607:
    $P817."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_814_end:
.annotate 'line', 731
    find_lex $P819, "$block"
    unless_null $P819, vivify_608
    new $P819, "Undef"
  vivify_608:
    $P820 = $P819."symbol"("$/")
    if $P820, unless_818_end
    find_lex $P821, "$block"
    unless_null $P821, vivify_609
    new $P821, "Undef"
  vivify_609:
    $P821."symbol"("$/", "lexical" :named("scope"))
  unless_818_end:
.annotate 'line', 732
    find_lex $P822, "$block"
    unless_null $P822, vivify_610
    new $P822, "Undef"
  vivify_610:
    find_lex $P823, "$rpast"
    unless_null $P823, vivify_611
    new $P823, "Undef"
  vivify_611:
    $P822."push"($P823)
.annotate 'line', 733
    find_lex $P824, "$block"
    unless_null $P824, vivify_612
    new $P824, "Undef"
  vivify_612:
    $P824."blocktype"("method")
    find_lex $P825, "$block"
    unless_null $P825, vivify_613
    new $P825, "Undef"
  vivify_613:
.annotate 'line', 719
    .return ($P825)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_831
    .param pmc param_832
.annotate 'line', 737
    .const 'Sub' $P1057 = "188_1304277412.809" 
    capture_lex $P1057
    .const 'Sub' $P994 = "185_1304277412.809" 
    capture_lex $P994
    .const 'Sub' $P952 = "183_1304277412.809" 
    capture_lex $P952
    .const 'Sub' $P910 = "181_1304277412.809" 
    capture_lex $P910
    .const 'Sub' $P843 = "178_1304277412.809" 
    capture_lex $P843
    .lex "$ast", param_831
    .lex "$count", param_832
.annotate 'line', 738
    $P833 = root_new ['parrot';'Hash']
    .lex "%capnames", $P833
.annotate 'line', 739
    new $P834, "Undef"
    .lex "$pasttype", $P834
.annotate 'line', 737
    find_lex $P835, "%capnames"
    unless_null $P835, vivify_614
    $P835 = root_new ['parrot';'Hash']
  vivify_614:
.annotate 'line', 739
    find_lex $P836, "$ast"
    unless_null $P836, vivify_615
    new $P836, "Undef"
  vivify_615:
    $P837 = $P836."pasttype"()
    store_lex "$pasttype", $P837
.annotate 'line', 740
    find_lex $P839, "$pasttype"
    unless_null $P839, vivify_616
    new $P839, "Undef"
  vivify_616:
    set $S840, $P839
    iseq $I841, $S840, "alt"
    if $I841, if_838
.annotate 'line', 753
    find_lex $P901, "$pasttype"
    unless_null $P901, vivify_617
    new $P901, "Undef"
  vivify_617:
    set $S902, $P901
    iseq $I903, $S902, "concat"
    if $I903, if_900
.annotate 'line', 762
    find_lex $P945, "$pasttype"
    unless_null $P945, vivify_618
    new $P945, "Undef"
  vivify_618:
    set $S946, $P945
    iseq $I947, $S946, "subrule"
    if $I947, if_944
    new $P943, 'Integer'
    set $P943, $I947
    goto if_944_end
  if_944:
    find_lex $P948, "$ast"
    unless_null $P948, vivify_619
    new $P948, "Undef"
  vivify_619:
    $S949 = $P948."subtype"()
    iseq $I950, $S949, "capture"
    new $P943, 'Integer'
    set $P943, $I950
  if_944_end:
    if $P943, if_942
.annotate 'line', 775
    find_lex $P990, "$pasttype"
    unless_null $P990, vivify_620
    new $P990, "Undef"
  vivify_620:
    set $S991, $P990
    iseq $I992, $S991, "subcapture"
    if $I992, if_989
.annotate 'line', 792
    find_lex $P1053, "$pasttype"
    unless_null $P1053, vivify_621
    new $P1053, "Undef"
  vivify_621:
    set $S1054, $P1053
    iseq $I1055, $S1054, "quant"
    unless $I1055, if_1052_end
    .const 'Sub' $P1057 = "188_1304277412.809" 
    capture_lex $P1057
    $P1057()
  if_1052_end:
    goto if_989_end
  if_989:
.annotate 'line', 775
    .const 'Sub' $P994 = "185_1304277412.809" 
    capture_lex $P994
    $P994()
  if_989_end:
    goto if_942_end
  if_942:
.annotate 'line', 762
    .const 'Sub' $P952 = "183_1304277412.809" 
    capture_lex $P952
    $P952()
  if_942_end:
    goto if_900_end
  if_900:
.annotate 'line', 754
    find_lex $P905, "$ast"
    unless_null $P905, vivify_666
    new $P905, "Undef"
  vivify_666:
    $P906 = $P905."list"()
    defined $I907, $P906
    unless $I907, for_undef_667
    iter $P904, $P906
    new $P940, 'ExceptionHandler'
    set_label $P940, loop939_handler
    $P940."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P940
  loop939_test:
    unless $P904, loop939_done
    shift $P908, $P904
  loop939_redo:
    .const 'Sub' $P910 = "181_1304277412.809" 
    capture_lex $P910
    $P910($P908)
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
  for_undef_667:
  if_900_end:
.annotate 'line', 753
    goto if_838_end
  if_838:
.annotate 'line', 740
    .const 'Sub' $P843 = "178_1304277412.809" 
    capture_lex $P843
    $P843()
  if_838_end:
.annotate 'line', 799
    find_lex $P1078, "$count"
    unless_null $P1078, vivify_703
    new $P1078, "Undef"
  vivify_703:
    find_lex $P1079, "%capnames"
    unless_null $P1079, vivify_704
    $P1079 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1079
  vivify_704:
    set $P1079[""], $P1078
    find_lex $P1080, "%capnames"
    unless_null $P1080, vivify_705
    $P1080 = root_new ['parrot';'Hash']
  vivify_705:
.annotate 'line', 737
    .return ($P1080)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1056"  :anon :subid("188_1304277412.809") :outer("177_1304277412.809")
.annotate 'line', 792
    .const 'Sub' $P1068 = "189_1304277412.809" 
    capture_lex $P1068
.annotate 'line', 793
    $P1058 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1058
    find_lex $P1059, "$ast"
    unless_null $P1059, vivify_622
    $P1059 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P1060, $P1059[0]
    unless_null $P1060, vivify_623
    new $P1060, "Undef"
  vivify_623:
    find_lex $P1061, "$count"
    unless_null $P1061, vivify_624
    new $P1061, "Undef"
  vivify_624:
    $P1062 = "capnames"($P1060, $P1061)
    store_lex "%astcap", $P1062
.annotate 'line', 794
    find_lex $P1064, "%astcap"
    unless_null $P1064, vivify_625
    $P1064 = root_new ['parrot';'Hash']
  vivify_625:
    defined $I1065, $P1064
    unless $I1065, for_undef_626
    iter $P1063, $P1064
    new $P1074, 'ExceptionHandler'
    set_label $P1074, loop1073_handler
    $P1074."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1074
  loop1073_test:
    unless $P1063, loop1073_done
    shift $P1066, $P1063
  loop1073_redo:
    .const 'Sub' $P1068 = "189_1304277412.809" 
    capture_lex $P1068
    $P1068($P1066)
  loop1073_next:
    goto loop1073_test
  loop1073_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1075, exception, 'type'
    eq $P1075, .CONTROL_LOOP_NEXT, loop1073_next
    eq $P1075, .CONTROL_LOOP_REDO, loop1073_redo
  loop1073_done:
    pop_eh 
  for_undef_626:
.annotate 'line', 797
    find_lex $P1076, "%astcap"
    unless_null $P1076, vivify_629
    $P1076 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1077, $P1076[""]
    unless_null $P1077, vivify_630
    new $P1077, "Undef"
  vivify_630:
    store_lex "$count", $P1077
.annotate 'line', 792
    .return ($P1077)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1067"  :anon :subid("189_1304277412.809") :outer("188_1304277412.809")
    .param pmc param_1069
.annotate 'line', 794
    .lex "$_", param_1069
.annotate 'line', 795
    new $P1070, "Integer"
    assign $P1070, 2
    find_lex $P1071, "$_"
    unless_null $P1071, vivify_627
    new $P1071, "Undef"
  vivify_627:
    find_lex $P1072, "%capnames"
    unless_null $P1072, vivify_628
    $P1072 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1072
  vivify_628:
    set $P1072[$P1071], $P1070
.annotate 'line', 794
    .return ($P1070)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block993"  :anon :subid("185_1304277412.809") :outer("177_1304277412.809")
.annotate 'line', 775
    .const 'Sub' $P1034 = "187_1304277412.809" 
    capture_lex $P1034
    .const 'Sub' $P1006 = "186_1304277412.809" 
    capture_lex $P1006
.annotate 'line', 776
    new $P995, "Undef"
    .lex "$name", $P995
.annotate 'line', 777
    $P996 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P996
.annotate 'line', 786
    $P997 = root_new ['parrot';'Hash']
    .lex "%x", $P997
.annotate 'line', 776
    find_lex $P998, "$ast"
    unless_null $P998, vivify_631
    new $P998, "Undef"
  vivify_631:
    $P999 = $P998."name"()
    store_lex "$name", $P999
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1000 = split '=', $S0
            
    store_lex "@names", $P1000
.annotate 'line', 782
    find_lex $P1002, "@names"
    unless_null $P1002, vivify_632
    $P1002 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I1003, $P1002
    unless $I1003, for_undef_633
    iter $P1001, $P1002
    new $P1023, 'ExceptionHandler'
    set_label $P1023, loop1022_handler
    $P1023."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1023
  loop1022_test:
    unless $P1001, loop1022_done
    shift $P1004, $P1001
  loop1022_redo:
    .const 'Sub' $P1006 = "186_1304277412.809" 
    capture_lex $P1006
    $P1006($P1004)
  loop1022_next:
    goto loop1022_test
  loop1022_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1024, exception, 'type'
    eq $P1024, .CONTROL_LOOP_NEXT, loop1022_next
    eq $P1024, .CONTROL_LOOP_REDO, loop1022_redo
  loop1022_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 786
    find_lex $P1025, "$ast"
    unless_null $P1025, vivify_639
    $P1025 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1026, $P1025[0]
    unless_null $P1026, vivify_640
    new $P1026, "Undef"
  vivify_640:
    find_lex $P1027, "$count"
    unless_null $P1027, vivify_641
    new $P1027, "Undef"
  vivify_641:
    $P1028 = "capnames"($P1026, $P1027)
    store_lex "%x", $P1028
.annotate 'line', 787
    find_lex $P1030, "%x"
    unless_null $P1030, vivify_642
    $P1030 = root_new ['parrot';'Hash']
  vivify_642:
    defined $I1031, $P1030
    unless $I1031, for_undef_643
    iter $P1029, $P1030
    new $P1048, 'ExceptionHandler'
    set_label $P1048, loop1047_handler
    $P1048."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1048
  loop1047_test:
    unless $P1029, loop1047_done
    shift $P1032, $P1029
  loop1047_redo:
    .const 'Sub' $P1034 = "187_1304277412.809" 
    capture_lex $P1034
    $P1034($P1032)
  loop1047_next:
    goto loop1047_test
  loop1047_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1049, exception, 'type'
    eq $P1049, .CONTROL_LOOP_NEXT, loop1047_next
    eq $P1049, .CONTROL_LOOP_REDO, loop1047_redo
  loop1047_done:
    pop_eh 
  for_undef_643:
.annotate 'line', 790
    find_lex $P1050, "%x"
    unless_null $P1050, vivify_652
    $P1050 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1051, $P1050[""]
    unless_null $P1051, vivify_653
    new $P1051, "Undef"
  vivify_653:
    store_lex "$count", $P1051
.annotate 'line', 775
    .return ($P1051)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1005"  :anon :subid("186_1304277412.809") :outer("185_1304277412.809")
    .param pmc param_1007
.annotate 'line', 782
    .lex "$_", param_1007
.annotate 'line', 783
    find_lex $P1011, "$_"
    unless_null $P1011, vivify_634
    new $P1011, "Undef"
  vivify_634:
    set $S1012, $P1011
    iseq $I1013, $S1012, "0"
    unless $I1013, unless_1010
    new $P1009, 'Integer'
    set $P1009, $I1013
    goto unless_1010_end
  unless_1010:
    find_lex $P1014, "$_"
    unless_null $P1014, vivify_635
    new $P1014, "Undef"
  vivify_635:
    set $N1015, $P1014
    isgt $I1016, $N1015, 0.0
    new $P1009, 'Integer'
    set $P1009, $I1016
  unless_1010_end:
    unless $P1009, if_1008_end
    find_lex $P1017, "$_"
    unless_null $P1017, vivify_636
    new $P1017, "Undef"
  vivify_636:
    add $P1018, $P1017, 1
    store_lex "$count", $P1018
  if_1008_end:
.annotate 'line', 784
    new $P1019, "Integer"
    assign $P1019, 1
    find_lex $P1020, "$_"
    unless_null $P1020, vivify_637
    new $P1020, "Undef"
  vivify_637:
    find_lex $P1021, "%capnames"
    unless_null $P1021, vivify_638
    $P1021 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1021
  vivify_638:
    set $P1021[$P1020], $P1019
.annotate 'line', 782
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1033"  :anon :subid("187_1304277412.809") :outer("185_1304277412.809")
    .param pmc param_1035
.annotate 'line', 787
    .lex "$_", param_1035
.annotate 'line', 788
    find_lex $P1036, "$_"
    unless_null $P1036, vivify_644
    new $P1036, "Undef"
  vivify_644:
    find_lex $P1037, "%capnames"
    unless_null $P1037, vivify_645
    $P1037 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1038, $P1037[$P1036]
    unless_null $P1038, vivify_646
    new $P1038, "Undef"
  vivify_646:
    set $N1039, $P1038
    new $P1040, 'Float'
    set $P1040, $N1039
    find_lex $P1041, "$_"
    unless_null $P1041, vivify_647
    new $P1041, "Undef"
  vivify_647:
    find_lex $P1042, "%x"
    unless_null $P1042, vivify_648
    $P1042 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1043, $P1042[$P1041]
    unless_null $P1043, vivify_649
    new $P1043, "Undef"
  vivify_649:
    add $P1044, $P1040, $P1043
    find_lex $P1045, "$_"
    unless_null $P1045, vivify_650
    new $P1045, "Undef"
  vivify_650:
    find_lex $P1046, "%capnames"
    unless_null $P1046, vivify_651
    $P1046 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1046
  vivify_651:
    set $P1046[$P1045], $P1044
.annotate 'line', 787
    .return ($P1044)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block951"  :anon :subid("183_1304277412.809") :outer("177_1304277412.809")
.annotate 'line', 762
    .const 'Sub' $P970 = "184_1304277412.809" 
    capture_lex $P970
.annotate 'line', 763
    new $P953, "Undef"
    .lex "$name", $P953
.annotate 'line', 765
    $P954 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P954
.annotate 'line', 763
    find_lex $P955, "$ast"
    unless_null $P955, vivify_654
    new $P955, "Undef"
  vivify_654:
    $P956 = $P955."name"()
    store_lex "$name", $P956
.annotate 'line', 764
    find_lex $P958, "$name"
    unless_null $P958, vivify_655
    new $P958, "Undef"
  vivify_655:
    set $S959, $P958
    iseq $I960, $S959, ""
    unless $I960, if_957_end
    find_lex $P961, "$count"
    unless_null $P961, vivify_656
    new $P961, "Undef"
  vivify_656:
    store_lex "$name", $P961
    find_lex $P962, "$ast"
    unless_null $P962, vivify_657
    new $P962, "Undef"
  vivify_657:
    find_lex $P963, "$name"
    unless_null $P963, vivify_658
    new $P963, "Undef"
  vivify_658:
    $P962."name"($P963)
  if_957_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P964 = split '=', $S0
            
    store_lex "@names", $P964
.annotate 'line', 770
    find_lex $P966, "@names"
    unless_null $P966, vivify_659
    $P966 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I967, $P966
    unless $I967, for_undef_660
    iter $P965, $P966
    new $P987, 'ExceptionHandler'
    set_label $P987, loop986_handler
    $P987."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P987
  loop986_test:
    unless $P965, loop986_done
    shift $P968, $P965
  loop986_redo:
    .const 'Sub' $P970 = "184_1304277412.809" 
    capture_lex $P970
    $P970($P968)
  loop986_next:
    goto loop986_test
  loop986_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P988, exception, 'type'
    eq $P988, .CONTROL_LOOP_NEXT, loop986_next
    eq $P988, .CONTROL_LOOP_REDO, loop986_redo
  loop986_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 762
    .return ($P965)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block969"  :anon :subid("184_1304277412.809") :outer("183_1304277412.809")
    .param pmc param_971
.annotate 'line', 770
    .lex "$_", param_971
.annotate 'line', 771
    find_lex $P975, "$_"
    unless_null $P975, vivify_661
    new $P975, "Undef"
  vivify_661:
    set $S976, $P975
    iseq $I977, $S976, "0"
    unless $I977, unless_974
    new $P973, 'Integer'
    set $P973, $I977
    goto unless_974_end
  unless_974:
    find_lex $P978, "$_"
    unless_null $P978, vivify_662
    new $P978, "Undef"
  vivify_662:
    set $N979, $P978
    isgt $I980, $N979, 0.0
    new $P973, 'Integer'
    set $P973, $I980
  unless_974_end:
    unless $P973, if_972_end
    find_lex $P981, "$_"
    unless_null $P981, vivify_663
    new $P981, "Undef"
  vivify_663:
    add $P982, $P981, 1
    store_lex "$count", $P982
  if_972_end:
.annotate 'line', 772
    new $P983, "Integer"
    assign $P983, 1
    find_lex $P984, "$_"
    unless_null $P984, vivify_664
    new $P984, "Undef"
  vivify_664:
    find_lex $P985, "%capnames"
    unless_null $P985, vivify_665
    $P985 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P985
  vivify_665:
    set $P985[$P984], $P983
.annotate 'line', 770
    .return ($P983)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block909"  :anon :subid("181_1304277412.809") :outer("177_1304277412.809")
    .param pmc param_912
.annotate 'line', 754
    .const 'Sub' $P921 = "182_1304277412.809" 
    capture_lex $P921
.annotate 'line', 755
    $P911 = root_new ['parrot';'Hash']
    .lex "%x", $P911
    .lex "$_", param_912
    find_lex $P913, "$_"
    unless_null $P913, vivify_668
    new $P913, "Undef"
  vivify_668:
    find_lex $P914, "$count"
    unless_null $P914, vivify_669
    new $P914, "Undef"
  vivify_669:
    $P915 = "capnames"($P913, $P914)
    store_lex "%x", $P915
.annotate 'line', 756
    find_lex $P917, "%x"
    unless_null $P917, vivify_670
    $P917 = root_new ['parrot';'Hash']
  vivify_670:
    defined $I918, $P917
    unless $I918, for_undef_671
    iter $P916, $P917
    new $P935, 'ExceptionHandler'
    set_label $P935, loop934_handler
    $P935."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P935
  loop934_test:
    unless $P916, loop934_done
    shift $P919, $P916
  loop934_redo:
    .const 'Sub' $P921 = "182_1304277412.809" 
    capture_lex $P921
    $P921($P919)
  loop934_next:
    goto loop934_test
  loop934_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P936, exception, 'type'
    eq $P936, .CONTROL_LOOP_NEXT, loop934_next
    eq $P936, .CONTROL_LOOP_REDO, loop934_redo
  loop934_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 759
    find_lex $P937, "%x"
    unless_null $P937, vivify_680
    $P937 = root_new ['parrot';'Hash']
  vivify_680:
    set $P938, $P937[""]
    unless_null $P938, vivify_681
    new $P938, "Undef"
  vivify_681:
    store_lex "$count", $P938
.annotate 'line', 754
    .return ($P938)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block920"  :anon :subid("182_1304277412.809") :outer("181_1304277412.809")
    .param pmc param_922
.annotate 'line', 756
    .lex "$_", param_922
.annotate 'line', 757
    find_lex $P923, "$_"
    unless_null $P923, vivify_672
    new $P923, "Undef"
  vivify_672:
    find_lex $P924, "%capnames"
    unless_null $P924, vivify_673
    $P924 = root_new ['parrot';'Hash']
  vivify_673:
    set $P925, $P924[$P923]
    unless_null $P925, vivify_674
    new $P925, "Undef"
  vivify_674:
    set $N926, $P925
    new $P927, 'Float'
    set $P927, $N926
    find_lex $P928, "$_"
    unless_null $P928, vivify_675
    new $P928, "Undef"
  vivify_675:
    find_lex $P929, "%x"
    unless_null $P929, vivify_676
    $P929 = root_new ['parrot';'Hash']
  vivify_676:
    set $P930, $P929[$P928]
    unless_null $P930, vivify_677
    new $P930, "Undef"
  vivify_677:
    add $P931, $P927, $P930
    find_lex $P932, "$_"
    unless_null $P932, vivify_678
    new $P932, "Undef"
  vivify_678:
    find_lex $P933, "%capnames"
    unless_null $P933, vivify_679
    $P933 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P933
  vivify_679:
    set $P933[$P932], $P931
.annotate 'line', 756
    .return ($P931)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block842"  :anon :subid("178_1304277412.809") :outer("177_1304277412.809")
.annotate 'line', 740
    .const 'Sub' $P852 = "179_1304277412.809" 
    capture_lex $P852
.annotate 'line', 741
    new $P844, "Undef"
    .lex "$max", $P844
    find_lex $P845, "$count"
    unless_null $P845, vivify_682
    new $P845, "Undef"
  vivify_682:
    store_lex "$max", $P845
.annotate 'line', 742
    find_lex $P847, "$ast"
    unless_null $P847, vivify_683
    new $P847, "Undef"
  vivify_683:
    $P848 = $P847."list"()
    defined $I849, $P848
    unless $I849, for_undef_684
    iter $P846, $P848
    new $P897, 'ExceptionHandler'
    set_label $P897, loop896_handler
    $P897."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P897
  loop896_test:
    unless $P846, loop896_done
    shift $P850, $P846
  loop896_redo:
    .const 'Sub' $P852 = "179_1304277412.809" 
    capture_lex $P852
    $P852($P850)
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
  for_undef_684:
.annotate 'line', 751
    find_lex $P899, "$max"
    unless_null $P899, vivify_702
    new $P899, "Undef"
  vivify_702:
    store_lex "$count", $P899
.annotate 'line', 740
    .return ($P899)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block851"  :anon :subid("179_1304277412.809") :outer("178_1304277412.809")
    .param pmc param_854
.annotate 'line', 742
    .const 'Sub' $P863 = "180_1304277412.809" 
    capture_lex $P863
.annotate 'line', 743
    $P853 = root_new ['parrot';'Hash']
    .lex "%x", $P853
    .lex "$_", param_854
    find_lex $P855, "$_"
    unless_null $P855, vivify_685
    new $P855, "Undef"
  vivify_685:
    find_lex $P856, "$count"
    unless_null $P856, vivify_686
    new $P856, "Undef"
  vivify_686:
    $P857 = "capnames"($P855, $P856)
    store_lex "%x", $P857
.annotate 'line', 744
    find_lex $P859, "%x"
    unless_null $P859, vivify_687
    $P859 = root_new ['parrot';'Hash']
  vivify_687:
    defined $I860, $P859
    unless $I860, for_undef_688
    iter $P858, $P859
    new $P884, 'ExceptionHandler'
    set_label $P884, loop883_handler
    $P884."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P884
  loop883_test:
    unless $P858, loop883_done
    shift $P861, $P858
  loop883_redo:
    .const 'Sub' $P863 = "180_1304277412.809" 
    capture_lex $P863
    $P863($P861)
  loop883_next:
    goto loop883_test
  loop883_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P885, exception, 'type'
    eq $P885, .CONTROL_LOOP_NEXT, loop883_next
    eq $P885, .CONTROL_LOOP_REDO, loop883_redo
  loop883_done:
    pop_eh 
  for_undef_688:
.annotate 'line', 749
    find_lex $P888, "%x"
    unless_null $P888, vivify_697
    $P888 = root_new ['parrot';'Hash']
  vivify_697:
    set $P889, $P888[""]
    unless_null $P889, vivify_698
    new $P889, "Undef"
  vivify_698:
    set $N890, $P889
    find_lex $P891, "$max"
    unless_null $P891, vivify_699
    new $P891, "Undef"
  vivify_699:
    set $N892, $P891
    isgt $I893, $N890, $N892
    if $I893, if_887
    new $P886, 'Integer'
    set $P886, $I893
    goto if_887_end
  if_887:
    find_lex $P894, "%x"
    unless_null $P894, vivify_700
    $P894 = root_new ['parrot';'Hash']
  vivify_700:
    set $P895, $P894[""]
    unless_null $P895, vivify_701
    new $P895, "Undef"
  vivify_701:
    store_lex "$max", $P895
    set $P886, $P895
  if_887_end:
.annotate 'line', 742
    .return ($P886)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block862"  :anon :subid("180_1304277412.809") :outer("179_1304277412.809")
    .param pmc param_864
.annotate 'line', 744
    .lex "$_", param_864
.annotate 'line', 745
    find_lex $P869, "$_"
    unless_null $P869, vivify_689
    new $P869, "Undef"
  vivify_689:
    find_lex $P870, "%capnames"
    unless_null $P870, vivify_690
    $P870 = root_new ['parrot';'Hash']
  vivify_690:
    set $P871, $P870[$P869]
    unless_null $P871, vivify_691
    new $P871, "Undef"
  vivify_691:
    set $N872, $P871
    islt $I873, $N872, 2.0
    if $I873, if_868
    new $P867, 'Integer'
    set $P867, $I873
    goto if_868_end
  if_868:
    find_lex $P874, "$_"
    unless_null $P874, vivify_692
    new $P874, "Undef"
  vivify_692:
    find_lex $P875, "%x"
    unless_null $P875, vivify_693
    $P875 = root_new ['parrot';'Hash']
  vivify_693:
    set $P876, $P875[$P874]
    unless_null $P876, vivify_694
    new $P876, "Undef"
  vivify_694:
    set $N877, $P876
    iseq $I878, $N877, 1.0
    new $P867, 'Integer'
    set $P867, $I878
  if_868_end:
    if $P867, if_866
    new $P880, "Integer"
    assign $P880, 2
    set $P865, $P880
    goto if_866_end
  if_866:
    new $P879, "Integer"
    assign $P879, 1
    set $P865, $P879
  if_866_end:
.annotate 'line', 746
    find_lex $P881, "$_"
    unless_null $P881, vivify_695
    new $P881, "Undef"
  vivify_695:
    find_lex $P882, "%capnames"
    unless_null $P882, vivify_696
    $P882 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P882
  vivify_696:
    set $P882[$P881], $P865
.annotate 'line', 744
    .return ($P865)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1083
    .param pmc param_1084
.annotate 'line', 803
    .lex "$ast", param_1083
    .lex "$backmod", param_1084
.annotate 'line', 804
    find_lex $P1086, "$backmod"
    unless_null $P1086, vivify_706
    new $P1086, "Undef"
  vivify_706:
    set $S1087, $P1086
    iseq $I1088, $S1087, ":"
    if $I1088, if_1085
.annotate 'line', 805
    find_lex $P1093, "$backmod"
    unless_null $P1093, vivify_707
    new $P1093, "Undef"
  vivify_707:
    set $S1094, $P1093
    iseq $I1095, $S1094, ":?"
    unless $I1095, unless_1092
    new $P1091, 'Integer'
    set $P1091, $I1095
    goto unless_1092_end
  unless_1092:
    find_lex $P1096, "$backmod"
    unless_null $P1096, vivify_708
    new $P1096, "Undef"
  vivify_708:
    set $S1097, $P1096
    iseq $I1098, $S1097, "?"
    new $P1091, 'Integer'
    set $P1091, $I1098
  unless_1092_end:
    if $P1091, if_1090
.annotate 'line', 806
    find_lex $P1103, "$backmod"
    unless_null $P1103, vivify_709
    new $P1103, "Undef"
  vivify_709:
    set $S1104, $P1103
    iseq $I1105, $S1104, ":!"
    unless $I1105, unless_1102
    new $P1101, 'Integer'
    set $P1101, $I1105
    goto unless_1102_end
  unless_1102:
    find_lex $P1106, "$backmod"
    unless_null $P1106, vivify_710
    new $P1106, "Undef"
  vivify_710:
    set $S1107, $P1106
    iseq $I1108, $S1107, "!"
    new $P1101, 'Integer'
    set $P1101, $I1108
  unless_1102_end:
    unless $P1101, if_1100_end
    find_lex $P1109, "$ast"
    unless_null $P1109, vivify_711
    new $P1109, "Undef"
  vivify_711:
    $P1109."backtrack"("g")
  if_1100_end:
    goto if_1090_end
  if_1090:
.annotate 'line', 805
    find_lex $P1099, "$ast"
    unless_null $P1099, vivify_712
    new $P1099, "Undef"
  vivify_712:
    $P1099."backtrack"("f")
  if_1090_end:
    goto if_1085_end
  if_1085:
.annotate 'line', 804
    find_lex $P1089, "$ast"
    unless_null $P1089, vivify_713
    new $P1089, "Undef"
  vivify_713:
    $P1089."backtrack"("r")
  if_1085_end:
    find_lex $P1110, "$ast"
    unless_null $P1110, vivify_714
    new $P1110, "Undef"
  vivify_714:
.annotate 'line', 803
    .return ($P1110)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("191_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1124
    .param pmc param_1125
.annotate 'line', 226
    .lex "self", param_1124
    .lex "$/", param_1125
.annotate 'line', 227
    find_lex $P1126, "$/"
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_717
    $P1129 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1130, $P1129["quote_EXPR"]
    unless_null $P1130, vivify_718
    new $P1130, "Undef"
  vivify_718:
    if $P1130, if_1128
    find_lex $P1134, "$/"
    unless_null $P1134, vivify_719
    $P1134 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1135, $P1134["val"]
    unless_null $P1135, vivify_720
    new $P1135, "Undef"
  vivify_720:
    set $N1136, $P1135
    new $P1127, 'Float'
    set $P1127, $N1136
    goto if_1128_end
  if_1128:
    find_lex $P1131, "$/"
    unless_null $P1131, vivify_721
    $P1131 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1132, $P1131["quote_EXPR"]
    unless_null $P1132, vivify_722
    new $P1132, "Undef"
  vivify_722:
    $P1133 = $P1132."ast"()
    set $P1127, $P1133
  if_1128_end:
    $P1137 = $P1126."!make"($P1127)
.annotate 'line', 226
    .return ($P1137)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("192_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1139
    .param pmc param_1140
.annotate 'line', 230
    .const 'Sub' $P1153 = "193_1304277412.809" 
    capture_lex $P1153
    .lex "self", param_1139
    .lex "$/", param_1140
.annotate 'line', 231
    new $P1141, "Undef"
    .lex "$past", $P1141
    get_hll_global $P1142, "GLOBAL"
    nqp_get_package_through_who $P1143, $P1142, "PAST"
    get_who $P1144, $P1143
    set $P1145, $P1144["Op"]
    $P1146 = $P1145."new"("list" :named("pasttype"))
    store_lex "$past", $P1146
.annotate 'line', 232
    find_lex $P1148, "$/"
    unless_null $P1148, vivify_723
    $P1148 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1149, $P1148["arg"]
    unless_null $P1149, vivify_724
    new $P1149, "Undef"
  vivify_724:
    defined $I1150, $P1149
    unless $I1150, for_undef_725
    iter $P1147, $P1149
    new $P1160, 'ExceptionHandler'
    set_label $P1160, loop1159_handler
    $P1160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1160
  loop1159_test:
    unless $P1147, loop1159_done
    shift $P1151, $P1147
  loop1159_redo:
    .const 'Sub' $P1153 = "193_1304277412.809" 
    capture_lex $P1153
    $P1153($P1151)
  loop1159_next:
    goto loop1159_test
  loop1159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1161, exception, 'type'
    eq $P1161, .CONTROL_LOOP_NEXT, loop1159_next
    eq $P1161, .CONTROL_LOOP_REDO, loop1159_redo
  loop1159_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 233
    find_lex $P1162, "$/"
    find_lex $P1163, "$past"
    unless_null $P1163, vivify_728
    new $P1163, "Undef"
  vivify_728:
    $P1164 = $P1162."!make"($P1163)
.annotate 'line', 230
    .return ($P1164)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1152"  :anon :subid("193_1304277412.809") :outer("192_1304277412.809")
    .param pmc param_1154
.annotate 'line', 232
    .lex "$_", param_1154
    find_lex $P1155, "$past"
    unless_null $P1155, vivify_726
    new $P1155, "Undef"
  vivify_726:
    find_lex $P1156, "$_"
    unless_null $P1156, vivify_727
    new $P1156, "Undef"
  vivify_727:
    $P1157 = $P1156."ast"()
    $P1158 = $P1155."push"($P1157)
    .return ($P1158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("194_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1166
    .param pmc param_1167
.annotate 'line', 236
    .lex "self", param_1166
    .lex "$/", param_1167
.annotate 'line', 237
    new $P1168, "Undef"
    .lex "$past", $P1168
    find_lex $P1169, "$/"
    unless_null $P1169, vivify_729
    $P1169 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1170, $P1169["nibbler"]
    unless_null $P1170, vivify_730
    new $P1170, "Undef"
  vivify_730:
    $P1171 = $P1170."ast"()
    $P1172 = "buildsub"($P1171)
    store_lex "$past", $P1172
.annotate 'line', 238
    find_lex $P1173, "$past"
    unless_null $P1173, vivify_731
    new $P1173, "Undef"
  vivify_731:
    find_lex $P1174, "$/"
    unless_null $P1174, vivify_732
    new $P1174, "Undef"
  vivify_732:
    $P1173."node"($P1174)
.annotate 'line', 239
    find_lex $P1175, "$/"
    find_lex $P1176, "$past"
    unless_null $P1176, vivify_733
    new $P1176, "Undef"
  vivify_733:
    $P1177 = $P1175."!make"($P1176)
.annotate 'line', 236
    .return ($P1177)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("195_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1181
    .param pmc param_1182
    .param pmc param_1183 :optional
    .param int has_param_1183 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1227 = "197_1304277412.809" 
    capture_lex $P1227
    .const 'Sub' $P1191 = "196_1304277412.809" 
    capture_lex $P1191
    new $P1180, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1180, control_1179
    push_eh $P1180
    .lex "self", param_1181
    .lex "$/", param_1182
    if has_param_1183, optparam_734
    new $P1184, "Undef"
    set param_1183, $P1184
  optparam_734:
    .lex "$key", param_1183
.annotate 'line', 251
    new $P1185, "Undef"
    .lex "$past", $P1185
.annotate 'line', 243
    find_lex $P1187, "$key"
    unless_null $P1187, vivify_735
    new $P1187, "Undef"
  vivify_735:
    set $S1188, $P1187
    iseq $I1189, $S1188, "open"
    unless $I1189, if_1186_end
    .const 'Sub' $P1191 = "196_1304277412.809" 
    capture_lex $P1191
    $P1191()
  if_1186_end:
.annotate 'line', 250
    find_lex $P1206, "$?PACKAGE"
    get_who $P1207, $P1206
    set $P1208, $P1207["@MODIFIERS"]
    unless_null $P1208, vivify_741
    $P1208 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    $P1208."shift"()
    find_lex $P1209, "$past"
    unless_null $P1209, vivify_742
    new $P1209, "Undef"
  vivify_742:
.annotate 'line', 252
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_743
    $P1211 = root_new ['parrot';'Hash']
  vivify_743:
    set $P1212, $P1211["termconj"]
    unless_null $P1212, vivify_744
    new $P1212, "Undef"
  vivify_744:
    set $N1213, $P1212
    isgt $I1214, $N1213, 1.0
    if $I1214, if_1210
.annotate 'line', 259
    find_lex $P1236, "$/"
    unless_null $P1236, vivify_745
    $P1236 = root_new ['parrot';'Hash']
  vivify_745:
    set $P1237, $P1236["termconj"]
    unless_null $P1237, vivify_746
    $P1237 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P1238, $P1237[0]
    unless_null $P1238, vivify_747
    new $P1238, "Undef"
  vivify_747:
    $P1239 = $P1238."ast"()
    store_lex "$past", $P1239
.annotate 'line', 258
    goto if_1210_end
  if_1210:
.annotate 'line', 253
    get_hll_global $P1215, "GLOBAL"
    nqp_get_package_through_who $P1216, $P1215, "PAST"
    get_who $P1217, $P1216
    set $P1218, $P1217["Regex"]
    find_lex $P1219, "$/"
    unless_null $P1219, vivify_748
    new $P1219, "Undef"
  vivify_748:
    $P1220 = $P1218."new"("alt" :named("pasttype"), $P1219 :named("node"))
    store_lex "$past", $P1220
.annotate 'line', 254
    find_lex $P1222, "$/"
    unless_null $P1222, vivify_749
    $P1222 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1223, $P1222["termconj"]
    unless_null $P1223, vivify_750
    new $P1223, "Undef"
  vivify_750:
    defined $I1224, $P1223
    unless $I1224, for_undef_751
    iter $P1221, $P1223
    new $P1234, 'ExceptionHandler'
    set_label $P1234, loop1233_handler
    $P1234."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1234
  loop1233_test:
    unless $P1221, loop1233_done
    shift $P1225, $P1221
  loop1233_redo:
    .const 'Sub' $P1227 = "197_1304277412.809" 
    capture_lex $P1227
    $P1227($P1225)
  loop1233_next:
    goto loop1233_test
  loop1233_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1235, exception, 'type'
    eq $P1235, .CONTROL_LOOP_NEXT, loop1233_next
    eq $P1235, .CONTROL_LOOP_REDO, loop1233_redo
  loop1233_done:
    pop_eh 
  for_undef_751:
  if_1210_end:
.annotate 'line', 261
    find_lex $P1240, "$/"
    find_lex $P1241, "$past"
    unless_null $P1241, vivify_754
    new $P1241, "Undef"
  vivify_754:
    $P1242 = $P1240."!make"($P1241)
.annotate 'line', 242
    .return ($P1242)
  control_1179:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1243, exception, "payload"
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1190"  :anon :subid("196_1304277412.809") :outer("195_1304277412.809")
.annotate 'line', 244
    $P1192 = root_new ['parrot';'Hash']
    .lex "%old", $P1192
.annotate 'line', 245
    $P1193 = root_new ['parrot';'Hash']
    .lex "%new", $P1193
.annotate 'line', 244
    find_lex $P1194, "$?PACKAGE"
    get_who $P1195, $P1194
    set $P1196, $P1195["@MODIFIERS"]
    unless_null $P1196, vivify_736
    $P1196 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1197, $P1196[0]
    unless_null $P1197, vivify_737
    new $P1197, "Undef"
  vivify_737:
    store_lex "%old", $P1197
.annotate 'line', 245
    find_lex $P1198, "%old"
    unless_null $P1198, vivify_738
    $P1198 = root_new ['parrot';'Hash']
  vivify_738:
    clone $P1199, $P1198
    store_lex "%new", $P1199
.annotate 'line', 246
    find_lex $P1200, "$?PACKAGE"
    get_who $P1201, $P1200
    set $P1202, $P1201["@MODIFIERS"]
    unless_null $P1202, vivify_739
    $P1202 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1203, "%new"
    unless_null $P1203, vivify_740
    $P1203 = root_new ['parrot';'Hash']
  vivify_740:
    $P1202."unshift"($P1203)
.annotate 'line', 247
    new $P1204, "Exception"
    set $P1204['type'], .CONTROL_RETURN
    new $P1205, "Integer"
    assign $P1205, 1
    setattribute $P1204, 'payload', $P1205
    throw $P1204
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1226"  :anon :subid("197_1304277412.809") :outer("195_1304277412.809")
    .param pmc param_1228
.annotate 'line', 254
    .lex "$_", param_1228
.annotate 'line', 255
    find_lex $P1229, "$past"
    unless_null $P1229, vivify_752
    new $P1229, "Undef"
  vivify_752:
    find_lex $P1230, "$_"
    unless_null $P1230, vivify_753
    new $P1230, "Undef"
  vivify_753:
    $P1231 = $P1230."ast"()
    $P1232 = $P1229."push"($P1231)
.annotate 'line', 254
    .return ($P1232)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("198_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'line', 264
    .const 'Sub' $P1266 = "199_1304277412.809" 
    capture_lex $P1266
    .lex "self", param_1245
    .lex "$/", param_1246
.annotate 'line', 265
    new $P1247, "Undef"
    .lex "$past", $P1247
.annotate 'line', 264
    find_lex $P1248, "$past"
    unless_null $P1248, vivify_755
    new $P1248, "Undef"
  vivify_755:
.annotate 'line', 266
    find_lex $P1250, "$/"
    unless_null $P1250, vivify_756
    $P1250 = root_new ['parrot';'Hash']
  vivify_756:
    set $P1251, $P1250["termish"]
    unless_null $P1251, vivify_757
    new $P1251, "Undef"
  vivify_757:
    set $N1252, $P1251
    isgt $I1253, $N1252, 1.0
    if $I1253, if_1249
.annotate 'line', 273
    find_lex $P1275, "$/"
    unless_null $P1275, vivify_758
    $P1275 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1276, $P1275["termish"]
    unless_null $P1276, vivify_759
    $P1276 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1277, $P1276[0]
    unless_null $P1277, vivify_760
    new $P1277, "Undef"
  vivify_760:
    $P1278 = $P1277."ast"()
    store_lex "$past", $P1278
.annotate 'line', 272
    goto if_1249_end
  if_1249:
.annotate 'line', 267
    get_hll_global $P1254, "GLOBAL"
    nqp_get_package_through_who $P1255, $P1254, "PAST"
    get_who $P1256, $P1255
    set $P1257, $P1256["Regex"]
    find_lex $P1258, "$/"
    unless_null $P1258, vivify_761
    new $P1258, "Undef"
  vivify_761:
    $P1259 = $P1257."new"("conj" :named("pasttype"), $P1258 :named("node"))
    store_lex "$past", $P1259
.annotate 'line', 268
    find_lex $P1261, "$/"
    unless_null $P1261, vivify_762
    $P1261 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1262, $P1261["termish"]
    unless_null $P1262, vivify_763
    new $P1262, "Undef"
  vivify_763:
    defined $I1263, $P1262
    unless $I1263, for_undef_764
    iter $P1260, $P1262
    new $P1273, 'ExceptionHandler'
    set_label $P1273, loop1272_handler
    $P1273."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1273
  loop1272_test:
    unless $P1260, loop1272_done
    shift $P1264, $P1260
  loop1272_redo:
    .const 'Sub' $P1266 = "199_1304277412.809" 
    capture_lex $P1266
    $P1266($P1264)
  loop1272_next:
    goto loop1272_test
  loop1272_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1274, exception, 'type'
    eq $P1274, .CONTROL_LOOP_NEXT, loop1272_next
    eq $P1274, .CONTROL_LOOP_REDO, loop1272_redo
  loop1272_done:
    pop_eh 
  for_undef_764:
  if_1249_end:
.annotate 'line', 275
    find_lex $P1279, "$/"
    find_lex $P1280, "$past"
    unless_null $P1280, vivify_767
    new $P1280, "Undef"
  vivify_767:
    $P1281 = $P1279."!make"($P1280)
.annotate 'line', 264
    .return ($P1281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1265"  :anon :subid("199_1304277412.809") :outer("198_1304277412.809")
    .param pmc param_1267
.annotate 'line', 268
    .lex "$_", param_1267
.annotate 'line', 269
    find_lex $P1268, "$past"
    unless_null $P1268, vivify_765
    new $P1268, "Undef"
  vivify_765:
    find_lex $P1269, "$_"
    unless_null $P1269, vivify_766
    new $P1269, "Undef"
  vivify_766:
    $P1270 = $P1269."ast"()
    $P1271 = $P1268."push"($P1270)
.annotate 'line', 268
    .return ($P1271)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("200_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1283
    .param pmc param_1284
.annotate 'line', 278
    .const 'Sub' $P1300 = "201_1304277412.809" 
    capture_lex $P1300
    .lex "self", param_1283
    .lex "$/", param_1284
.annotate 'line', 279
    new $P1285, "Undef"
    .lex "$past", $P1285
.annotate 'line', 280
    new $P1286, "Undef"
    .lex "$lastlit", $P1286
.annotate 'line', 279
    get_hll_global $P1287, "GLOBAL"
    nqp_get_package_through_who $P1288, $P1287, "PAST"
    get_who $P1289, $P1288
    set $P1290, $P1289["Regex"]
    find_lex $P1291, "$/"
    unless_null $P1291, vivify_768
    new $P1291, "Undef"
  vivify_768:
    $P1292 = $P1290."new"("concat" :named("pasttype"), $P1291 :named("node"))
    store_lex "$past", $P1292
.annotate 'line', 280
    new $P1293, "Integer"
    assign $P1293, 0
    store_lex "$lastlit", $P1293
.annotate 'line', 281
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_769
    $P1295 = root_new ['parrot';'Hash']
  vivify_769:
    set $P1296, $P1295["noun"]
    unless_null $P1296, vivify_770
    new $P1296, "Undef"
  vivify_770:
    defined $I1297, $P1296
    unless $I1297, for_undef_771
    iter $P1294, $P1296
    new $P1352, 'ExceptionHandler'
    set_label $P1352, loop1351_handler
    $P1352."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1352
  loop1351_test:
    unless $P1294, loop1351_done
    shift $P1298, $P1294
  loop1351_redo:
    .const 'Sub' $P1300 = "201_1304277412.809" 
    capture_lex $P1300
    $P1300($P1298)
  loop1351_next:
    goto loop1351_test
  loop1351_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1353, exception, 'type'
    eq $P1353, .CONTROL_LOOP_NEXT, loop1351_next
    eq $P1353, .CONTROL_LOOP_REDO, loop1351_redo
  loop1351_done:
    pop_eh 
  for_undef_771:
.annotate 'line', 296
    find_lex $P1354, "$/"
    find_lex $P1355, "$past"
    unless_null $P1355, vivify_789
    new $P1355, "Undef"
  vivify_789:
    $P1356 = $P1354."!make"($P1355)
.annotate 'line', 278
    .return ($P1356)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1299"  :anon :subid("201_1304277412.809") :outer("200_1304277412.809")
    .param pmc param_1302
.annotate 'line', 282
    new $P1301, "Undef"
    .lex "$ast", $P1301
    .lex "$_", param_1302
    find_lex $P1303, "$_"
    unless_null $P1303, vivify_772
    new $P1303, "Undef"
  vivify_772:
    $P1304 = $P1303."ast"()
    store_lex "$ast", $P1304
.annotate 'line', 283
    find_lex $P1307, "$ast"
    unless_null $P1307, vivify_773
    new $P1307, "Undef"
  vivify_773:
    if $P1307, if_1306
    set $P1305, $P1307
    goto if_1306_end
  if_1306:
.annotate 'line', 284
    find_lex $P1314, "$lastlit"
    unless_null $P1314, vivify_774
    new $P1314, "Undef"
  vivify_774:
    if $P1314, if_1313
    set $P1312, $P1314
    goto if_1313_end
  if_1313:
    find_lex $P1315, "$ast"
    unless_null $P1315, vivify_775
    new $P1315, "Undef"
  vivify_775:
    $S1316 = $P1315."pasttype"()
    iseq $I1317, $S1316, "literal"
    new $P1312, 'Integer'
    set $P1312, $I1317
  if_1313_end:
    if $P1312, if_1311
    set $P1310, $P1312
    goto if_1311_end
  if_1311:
.annotate 'line', 285
    get_hll_global $P1318, "GLOBAL"
    nqp_get_package_through_who $P1319, $P1318, "PAST"
    get_who $P1320, $P1319
    set $P1321, $P1320["Node"]
    find_lex $P1322, "$ast"
    unless_null $P1322, vivify_776
    $P1322 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    set $P1323, $P1322[0]
    unless_null $P1323, vivify_777
    new $P1323, "Undef"
  vivify_777:
    $P1324 = $P1321."ACCEPTS"($P1323)
    isfalse $I1325, $P1324
    new $P1310, 'Integer'
    set $P1310, $I1325
  if_1311_end:
    if $P1310, if_1309
.annotate 'line', 289
    find_lex $P1332, "$past"
    unless_null $P1332, vivify_778
    new $P1332, "Undef"
  vivify_778:
    find_lex $P1333, "$ast"
    unless_null $P1333, vivify_779
    new $P1333, "Undef"
  vivify_779:
    $P1332."push"($P1333)
.annotate 'line', 290
    find_lex $P1338, "$ast"
    unless_null $P1338, vivify_780
    new $P1338, "Undef"
  vivify_780:
    $S1339 = $P1338."pasttype"()
    iseq $I1340, $S1339, "literal"
    if $I1340, if_1337
    new $P1336, 'Integer'
    set $P1336, $I1340
    goto if_1337_end
  if_1337:
.annotate 'line', 291
    get_hll_global $P1341, "GLOBAL"
    nqp_get_package_through_who $P1342, $P1341, "PAST"
    get_who $P1343, $P1342
    set $P1344, $P1343["Node"]
    find_lex $P1345, "$ast"
    unless_null $P1345, vivify_781
    $P1345 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1346, $P1345[0]
    unless_null $P1346, vivify_782
    new $P1346, "Undef"
  vivify_782:
    $P1347 = $P1344."ACCEPTS"($P1346)
    isfalse $I1348, $P1347
    new $P1336, 'Integer'
    set $P1336, $I1348
  if_1337_end:
    if $P1336, if_1335
    new $P1350, "Integer"
    assign $P1350, 0
    set $P1334, $P1350
    goto if_1335_end
  if_1335:
    find_lex $P1349, "$ast"
    unless_null $P1349, vivify_783
    new $P1349, "Undef"
  vivify_783:
    set $P1334, $P1349
  if_1335_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1334
.annotate 'line', 288
    set $P1308, $P1334
.annotate 'line', 285
    goto if_1309_end
  if_1309:
.annotate 'line', 286
    find_lex $P1326, "$lastlit"
    unless_null $P1326, vivify_784
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $P1327, $P1326[0]
    unless_null $P1327, vivify_785
    new $P1327, "Undef"
  vivify_785:
    find_lex $P1328, "$ast"
    unless_null $P1328, vivify_786
    $P1328 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1329, $P1328[0]
    unless_null $P1329, vivify_787
    new $P1329, "Undef"
  vivify_787:
    concat $P1330, $P1327, $P1329
    find_lex $P1331, "$lastlit"
    unless_null $P1331, vivify_788
    $P1331 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1331
  vivify_788:
    set $P1331[0], $P1330
.annotate 'line', 285
    set $P1308, $P1330
  if_1309_end:
.annotate 'line', 283
    set $P1305, $P1308
  if_1306_end:
.annotate 'line', 281
    .return ($P1305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("202_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1358
    .param pmc param_1359
.annotate 'line', 299
    .const 'Sub' $P1368 = "203_1304277412.809" 
    capture_lex $P1368
    .lex "self", param_1358
    .lex "$/", param_1359
.annotate 'line', 300
    new $P1360, "Undef"
    .lex "$past", $P1360
    find_lex $P1361, "$/"
    unless_null $P1361, vivify_790
    $P1361 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1362, $P1361["atom"]
    unless_null $P1362, vivify_791
    new $P1362, "Undef"
  vivify_791:
    $P1363 = $P1362."ast"()
    store_lex "$past", $P1363
.annotate 'line', 301
    find_lex $P1365, "$/"
    unless_null $P1365, vivify_792
    $P1365 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1366, $P1365["quantifier"]
    unless_null $P1366, vivify_793
    new $P1366, "Undef"
  vivify_793:
    if $P1366, if_1364
.annotate 'line', 307
    find_lex $P1383, "$/"
    unless_null $P1383, vivify_794
    $P1383 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1384, $P1383["backmod"]
    unless_null $P1384, vivify_795
    $P1384 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    set $P1385, $P1384[0]
    unless_null $P1385, vivify_796
    new $P1385, "Undef"
  vivify_796:
    unless $P1385, if_1382_end
    find_lex $P1386, "$past"
    unless_null $P1386, vivify_797
    new $P1386, "Undef"
  vivify_797:
    find_lex $P1387, "$/"
    unless_null $P1387, vivify_798
    $P1387 = root_new ['parrot';'Hash']
  vivify_798:
    set $P1388, $P1387["backmod"]
    unless_null $P1388, vivify_799
    $P1388 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    set $P1389, $P1388[0]
    unless_null $P1389, vivify_800
    new $P1389, "Undef"
  vivify_800:
    "backmod"($P1386, $P1389)
  if_1382_end:
    goto if_1364_end
  if_1364:
.annotate 'line', 301
    .const 'Sub' $P1368 = "203_1304277412.809" 
    capture_lex $P1368
    $P1368()
  if_1364_end:
.annotate 'line', 308
    find_lex $P1395, "$past"
    unless_null $P1395, vivify_809
    new $P1395, "Undef"
  vivify_809:
    if $P1395, if_1394
    set $P1393, $P1395
    goto if_1394_end
  if_1394:
    find_lex $P1396, "$past"
    unless_null $P1396, vivify_810
    new $P1396, "Undef"
  vivify_810:
    $P1397 = $P1396."backtrack"()
    isfalse $I1398, $P1397
    new $P1393, 'Integer'
    set $P1393, $I1398
  if_1394_end:
    if $P1393, if_1392
    set $P1391, $P1393
    goto if_1392_end
  if_1392:
    find_lex $P1399, "$?PACKAGE"
    get_who $P1400, $P1399
    set $P1401, $P1400["@MODIFIERS"]
    unless_null $P1401, vivify_811
    $P1401 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P1402, $P1401[0]
    unless_null $P1402, vivify_812
    $P1402 = root_new ['parrot';'Hash']
  vivify_812:
    set $P1403, $P1402["r"]
    unless_null $P1403, vivify_813
    new $P1403, "Undef"
  vivify_813:
    set $P1391, $P1403
  if_1392_end:
    unless $P1391, if_1390_end
.annotate 'line', 309
    find_lex $P1404, "$past"
    unless_null $P1404, vivify_814
    new $P1404, "Undef"
  vivify_814:
    $P1404."backtrack"("r")
  if_1390_end:
.annotate 'line', 311
    find_lex $P1405, "$/"
    find_lex $P1406, "$past"
    unless_null $P1406, vivify_815
    new $P1406, "Undef"
  vivify_815:
    $P1407 = $P1405."!make"($P1406)
.annotate 'line', 299
    .return ($P1407)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1367"  :anon :subid("203_1304277412.809") :outer("202_1304277412.809")
.annotate 'line', 303
    new $P1369, "Undef"
    .lex "$qast", $P1369
.annotate 'line', 302
    find_lex $P1371, "$past"
    unless_null $P1371, vivify_801
    new $P1371, "Undef"
  vivify_801:
    isfalse $I1372, $P1371
    unless $I1372, if_1370_end
    find_lex $P1373, "$/"
    unless_null $P1373, vivify_802
    new $P1373, "Undef"
  vivify_802:
    $P1374 = $P1373."CURSOR"()
    $P1374."panic"("Quantifier follows nothing")
  if_1370_end:
.annotate 'line', 303
    find_lex $P1375, "$/"
    unless_null $P1375, vivify_803
    $P1375 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1376, $P1375["quantifier"]
    unless_null $P1376, vivify_804
    $P1376 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P1377, $P1376[0]
    unless_null $P1377, vivify_805
    new $P1377, "Undef"
  vivify_805:
    $P1378 = $P1377."ast"()
    store_lex "$qast", $P1378
.annotate 'line', 304
    find_lex $P1379, "$qast"
    unless_null $P1379, vivify_806
    new $P1379, "Undef"
  vivify_806:
    find_lex $P1380, "$past"
    unless_null $P1380, vivify_807
    new $P1380, "Undef"
  vivify_807:
    $P1379."unshift"($P1380)
.annotate 'line', 305
    find_lex $P1381, "$qast"
    unless_null $P1381, vivify_808
    new $P1381, "Undef"
  vivify_808:
    store_lex "$past", $P1381
.annotate 'line', 301
    .return ($P1381)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("204_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1409
    .param pmc param_1410
.annotate 'line', 314
    .lex "self", param_1409
    .lex "$/", param_1410
.annotate 'line', 315
    new $P1411, "Undef"
    .lex "$past", $P1411
.annotate 'line', 314
    find_lex $P1412, "$past"
    unless_null $P1412, vivify_816
    new $P1412, "Undef"
  vivify_816:
.annotate 'line', 316
    find_lex $P1414, "$/"
    unless_null $P1414, vivify_817
    $P1414 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1415, $P1414["metachar"]
    unless_null $P1415, vivify_818
    new $P1415, "Undef"
  vivify_818:
    if $P1415, if_1413
.annotate 'line', 318
    get_hll_global $P1419, "GLOBAL"
    nqp_get_package_through_who $P1420, $P1419, "PAST"
    get_who $P1421, $P1420
    set $P1422, $P1421["Regex"]
    find_lex $P1423, "$/"
    unless_null $P1423, vivify_819
    new $P1423, "Undef"
  vivify_819:
    set $S1424, $P1423
    find_lex $P1425, "$/"
    unless_null $P1425, vivify_820
    new $P1425, "Undef"
  vivify_820:
    $P1426 = $P1422."new"($S1424, "literal" :named("pasttype"), $P1425 :named("node"))
    store_lex "$past", $P1426
.annotate 'line', 319
    find_lex $P1428, "$?PACKAGE"
    get_who $P1429, $P1428
    set $P1430, $P1429["@MODIFIERS"]
    unless_null $P1430, vivify_821
    $P1430 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P1431, $P1430[0]
    unless_null $P1431, vivify_822
    $P1431 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1432, $P1431["i"]
    unless_null $P1432, vivify_823
    new $P1432, "Undef"
  vivify_823:
    unless $P1432, if_1427_end
    find_lex $P1433, "$past"
    unless_null $P1433, vivify_824
    new $P1433, "Undef"
  vivify_824:
    $P1433."subtype"("ignorecase")
  if_1427_end:
.annotate 'line', 317
    goto if_1413_end
  if_1413:
.annotate 'line', 316
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_825
    $P1416 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1417, $P1416["metachar"]
    unless_null $P1417, vivify_826
    new $P1417, "Undef"
  vivify_826:
    $P1418 = $P1417."ast"()
    store_lex "$past", $P1418
  if_1413_end:
.annotate 'line', 321
    find_lex $P1434, "$/"
    find_lex $P1435, "$past"
    unless_null $P1435, vivify_827
    new $P1435, "Undef"
  vivify_827:
    $P1436 = $P1434."!make"($P1435)
.annotate 'line', 314
    .return ($P1436)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("205_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1438
    .param pmc param_1439
.annotate 'line', 324
    .lex "self", param_1438
    .lex "$/", param_1439
.annotate 'line', 325
    new $P1440, "Undef"
    .lex "$past", $P1440
    get_hll_global $P1441, "GLOBAL"
    nqp_get_package_through_who $P1442, $P1441, "PAST"
    get_who $P1443, $P1442
    set $P1444, $P1443["Regex"]
    find_lex $P1445, "$/"
    unless_null $P1445, vivify_828
    new $P1445, "Undef"
  vivify_828:
    $P1446 = $P1444."new"("quant" :named("pasttype"), $P1445 :named("node"))
    store_lex "$past", $P1446
.annotate 'line', 326
    find_lex $P1447, "$/"
    find_lex $P1448, "$past"
    unless_null $P1448, vivify_829
    new $P1448, "Undef"
  vivify_829:
    find_lex $P1449, "$/"
    unless_null $P1449, vivify_830
    $P1449 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1450, $P1449["backmod"]
    unless_null $P1450, vivify_831
    new $P1450, "Undef"
  vivify_831:
    $P1451 = "backmod"($P1448, $P1450)
    $P1452 = $P1447."!make"($P1451)
.annotate 'line', 324
    .return ($P1452)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("206_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1454
    .param pmc param_1455
.annotate 'line', 329
    .lex "self", param_1454
    .lex "$/", param_1455
.annotate 'line', 330
    new $P1456, "Undef"
    .lex "$past", $P1456
    get_hll_global $P1457, "GLOBAL"
    nqp_get_package_through_who $P1458, $P1457, "PAST"
    get_who $P1459, $P1458
    set $P1460, $P1459["Regex"]
    find_lex $P1461, "$/"
    unless_null $P1461, vivify_832
    new $P1461, "Undef"
  vivify_832:
    $P1462 = $P1460."new"("quant" :named("pasttype"), 1 :named("min"), $P1461 :named("node"))
    store_lex "$past", $P1462
.annotate 'line', 331
    find_lex $P1463, "$/"
    find_lex $P1464, "$past"
    unless_null $P1464, vivify_833
    new $P1464, "Undef"
  vivify_833:
    find_lex $P1465, "$/"
    unless_null $P1465, vivify_834
    $P1465 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1466, $P1465["backmod"]
    unless_null $P1466, vivify_835
    new $P1466, "Undef"
  vivify_835:
    $P1467 = "backmod"($P1464, $P1466)
    $P1468 = $P1463."!make"($P1467)
.annotate 'line', 329
    .return ($P1468)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("207_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1470
    .param pmc param_1471
.annotate 'line', 334
    .lex "self", param_1470
    .lex "$/", param_1471
.annotate 'line', 335
    new $P1472, "Undef"
    .lex "$past", $P1472
    get_hll_global $P1473, "GLOBAL"
    nqp_get_package_through_who $P1474, $P1473, "PAST"
    get_who $P1475, $P1474
    set $P1476, $P1475["Regex"]
    find_lex $P1477, "$/"
    unless_null $P1477, vivify_836
    new $P1477, "Undef"
  vivify_836:
    $P1478 = $P1476."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1477 :named("node"))
    store_lex "$past", $P1478
.annotate 'line', 336
    find_lex $P1479, "$/"
    find_lex $P1480, "$past"
    unless_null $P1480, vivify_837
    new $P1480, "Undef"
  vivify_837:
    find_lex $P1481, "$/"
    unless_null $P1481, vivify_838
    $P1481 = root_new ['parrot';'Hash']
  vivify_838:
    set $P1482, $P1481["backmod"]
    unless_null $P1482, vivify_839
    new $P1482, "Undef"
  vivify_839:
    $P1483 = "backmod"($P1480, $P1482)
    $P1479."!make"($P1483)
.annotate 'line', 337
    find_lex $P1484, "$/"
    find_lex $P1485, "$past"
    unless_null $P1485, vivify_840
    new $P1485, "Undef"
  vivify_840:
    $P1486 = $P1484."!make"($P1485)
.annotate 'line', 334
    .return ($P1486)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("208_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1488
    .param pmc param_1489
.annotate 'line', 340
    .const 'Sub' $P1506 = "209_1304277412.809" 
    capture_lex $P1506
    .lex "self", param_1488
    .lex "$/", param_1489
.annotate 'line', 341
    new $P1490, "Undef"
    .lex "$past", $P1490
.annotate 'line', 342
    new $P1491, "Undef"
    .lex "$ws", $P1491
.annotate 'line', 340
    find_lex $P1492, "$past"
    unless_null $P1492, vivify_841
    new $P1492, "Undef"
  vivify_841:
.annotate 'line', 342
    find_lex $P1495, "$/"
    unless_null $P1495, vivify_842
    $P1495 = root_new ['parrot';'Hash']
  vivify_842:
    set $P1496, $P1495["normspace"]
    unless_null $P1496, vivify_843
    new $P1496, "Undef"
  vivify_843:
    if $P1496, if_1494
    set $P1493, $P1496
    goto if_1494_end
  if_1494:
    find_lex $P1497, "$?PACKAGE"
    get_who $P1498, $P1497
    set $P1499, $P1498["@MODIFIERS"]
    unless_null $P1499, vivify_844
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_845
    $P1500 = root_new ['parrot';'Hash']
  vivify_845:
    set $P1501, $P1500["s"]
    unless_null $P1501, vivify_846
    new $P1501, "Undef"
  vivify_846:
    set $P1493, $P1501
  if_1494_end:
    store_lex "$ws", $P1493
.annotate 'line', 343
    find_lex $P1503, "$/"
    unless_null $P1503, vivify_847
    $P1503 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1504, $P1503["quantified_atom"]
    unless_null $P1504, vivify_848
    new $P1504, "Undef"
  vivify_848:
    if $P1504, if_1502
.annotate 'line', 359
    get_hll_global $P1536, "GLOBAL"
    nqp_get_package_through_who $P1537, $P1536, "PAST"
    get_who $P1538, $P1537
    set $P1539, $P1538["Regex"]
    find_lex $P1540, "$/"
    unless_null $P1540, vivify_849
    $P1540 = root_new ['parrot';'Hash']
  vivify_849:
    set $P1541, $P1540["min"]
    unless_null $P1541, vivify_850
    new $P1541, "Undef"
  vivify_850:
    set $N1542, $P1541
    find_lex $P1543, "$/"
    unless_null $P1543, vivify_851
    new $P1543, "Undef"
  vivify_851:
    $P1544 = $P1539."new"("quant" :named("pasttype"), $N1542 :named("min"), $P1543 :named("node"))
    store_lex "$past", $P1544
.annotate 'line', 360
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_852
    $P1546 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1547, $P1546["max"]
    unless_null $P1547, vivify_853
    new $P1547, "Undef"
  vivify_853:
    isfalse $I1548, $P1547
    if $I1548, if_1545
.annotate 'line', 361
    find_lex $P1554, "$/"
    unless_null $P1554, vivify_854
    $P1554 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1555, $P1554["max"]
    unless_null $P1555, vivify_855
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1556, $P1555[0]
    unless_null $P1556, vivify_856
    new $P1556, "Undef"
  vivify_856:
    set $S1557, $P1556
    isne $I1558, $S1557, "*"
    unless $I1558, if_1553_end
    find_lex $P1559, "$past"
    unless_null $P1559, vivify_857
    new $P1559, "Undef"
  vivify_857:
    find_lex $P1560, "$/"
    unless_null $P1560, vivify_858
    $P1560 = root_new ['parrot';'Hash']
  vivify_858:
    set $P1561, $P1560["max"]
    unless_null $P1561, vivify_859
    $P1561 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P1562, $P1561[0]
    unless_null $P1562, vivify_860
    new $P1562, "Undef"
  vivify_860:
    set $N1563, $P1562
    $P1559."max"($N1563)
  if_1553_end:
    goto if_1545_end
  if_1545:
.annotate 'line', 360
    find_lex $P1549, "$past"
    unless_null $P1549, vivify_861
    new $P1549, "Undef"
  vivify_861:
    find_lex $P1550, "$/"
    unless_null $P1550, vivify_862
    $P1550 = root_new ['parrot';'Hash']
  vivify_862:
    set $P1551, $P1550["min"]
    unless_null $P1551, vivify_863
    new $P1551, "Undef"
  vivify_863:
    set $N1552, $P1551
    $P1549."max"($N1552)
  if_1545_end:
.annotate 'line', 362
    find_lex $P1565, "$ws"
    unless_null $P1565, vivify_864
    new $P1565, "Undef"
  vivify_864:
    unless $P1565, if_1564_end
    find_lex $P1566, "$past"
    unless_null $P1566, vivify_865
    new $P1566, "Undef"
  vivify_865:
    get_hll_global $P1567, "GLOBAL"
    nqp_get_package_through_who $P1568, $P1567, "PAST"
    get_who $P1569, $P1568
    set $P1570, $P1569["Regex"]
    $P1571 = $P1570."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1566."sep"($P1571)
  if_1564_end:
.annotate 'line', 358
    goto if_1502_end
  if_1502:
.annotate 'line', 343
    .const 'Sub' $P1506 = "209_1304277412.809" 
    capture_lex $P1506
    $P1506()
  if_1502_end:
.annotate 'line', 366
    find_lex $P1572, "$/"
    find_lex $P1573, "$past"
    unless_null $P1573, vivify_872
    new $P1573, "Undef"
  vivify_872:
    find_lex $P1574, "$/"
    unless_null $P1574, vivify_873
    $P1574 = root_new ['parrot';'Hash']
  vivify_873:
    set $P1575, $P1574["backmod"]
    unless_null $P1575, vivify_874
    new $P1575, "Undef"
  vivify_874:
    $P1576 = "backmod"($P1573, $P1575)
    $P1577 = $P1572."!make"($P1576)
.annotate 'line', 340
    .return ($P1577)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1505"  :anon :subid("209_1304277412.809") :outer("208_1304277412.809")
.annotate 'line', 344
    new $P1507, "Undef"
    .lex "$ast", $P1507
    find_lex $P1508, "$/"
    unless_null $P1508, vivify_866
    $P1508 = root_new ['parrot';'Hash']
  vivify_866:
    set $P1509, $P1508["quantified_atom"]
    unless_null $P1509, vivify_867
    new $P1509, "Undef"
  vivify_867:
    $P1510 = $P1509."ast"()
    store_lex "$ast", $P1510
.annotate 'line', 345
    find_lex $P1512, "$ws"
    unless_null $P1512, vivify_868
    new $P1512, "Undef"
  vivify_868:
    unless $P1512, if_1511_end
.annotate 'line', 346
    get_hll_global $P1513, "GLOBAL"
    nqp_get_package_through_who $P1514, $P1513, "PAST"
    get_who $P1515, $P1514
    set $P1516, $P1515["Regex"]
.annotate 'line', 348
    get_hll_global $P1517, "GLOBAL"
    nqp_get_package_through_who $P1518, $P1517, "PAST"
    get_who $P1519, $P1518
    set $P1520, $P1519["Regex"]
    $P1521 = $P1520."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1522, "$ast"
    unless_null $P1522, vivify_869
    new $P1522, "Undef"
  vivify_869:
.annotate 'line', 351
    get_hll_global $P1523, "GLOBAL"
    nqp_get_package_through_who $P1524, $P1523, "PAST"
    get_who $P1525, $P1524
    set $P1526, $P1525["Regex"]
    $P1527 = $P1526."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1528 = $P1516."new"($P1521, $P1522, $P1527, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1528
  if_1511_end:
.annotate 'line', 355
    get_hll_global $P1529, "GLOBAL"
    nqp_get_package_through_who $P1530, $P1529, "PAST"
    get_who $P1531, $P1530
    set $P1532, $P1531["Regex"]
    find_lex $P1533, "$ast"
    unless_null $P1533, vivify_870
    new $P1533, "Undef"
  vivify_870:
    find_lex $P1534, "$/"
    unless_null $P1534, vivify_871
    new $P1534, "Undef"
  vivify_871:
    $P1535 = $P1532."new"("quant" :named("pasttype"), 1 :named("min"), $P1533 :named("sep"), $P1534 :named("node"))
    store_lex "$past", $P1535
.annotate 'line', 343
    .return ($P1535)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("210_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1579
    .param pmc param_1580
.annotate 'line', 369
    .lex "self", param_1579
    .lex "$/", param_1580
.annotate 'line', 370
    new $P1581, "Undef"
    .lex "$past", $P1581
.annotate 'line', 371
    find_lex $P1584, "$?PACKAGE"
    get_who $P1585, $P1584
    set $P1586, $P1585["@MODIFIERS"]
    unless_null $P1586, vivify_875
    $P1586 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $P1587, $P1586[0]
    unless_null $P1587, vivify_876
    $P1587 = root_new ['parrot';'Hash']
  vivify_876:
    set $P1588, $P1587["s"]
    unless_null $P1588, vivify_877
    new $P1588, "Undef"
  vivify_877:
    if $P1588, if_1583
    new $P1595, "Integer"
    assign $P1595, 0
    set $P1582, $P1595
    goto if_1583_end
  if_1583:
    get_hll_global $P1589, "GLOBAL"
    nqp_get_package_through_who $P1590, $P1589, "PAST"
    get_who $P1591, $P1590
    set $P1592, $P1591["Regex"]
    find_lex $P1593, "$/"
    unless_null $P1593, vivify_878
    new $P1593, "Undef"
  vivify_878:
    $P1594 = $P1592."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1593 :named("node"))
    set $P1582, $P1594
  if_1583_end:
    store_lex "$past", $P1582
.annotate 'line', 374
    find_lex $P1596, "$/"
    find_lex $P1597, "$past"
    unless_null $P1597, vivify_879
    new $P1597, "Undef"
  vivify_879:
    $P1598 = $P1596."!make"($P1597)
.annotate 'line', 369
    .return ($P1598)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("211_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1600
    .param pmc param_1601
.annotate 'line', 378
    .lex "self", param_1600
    .lex "$/", param_1601
.annotate 'line', 379
    find_lex $P1602, "$/"
    find_lex $P1603, "$/"
    unless_null $P1603, vivify_880
    $P1603 = root_new ['parrot';'Hash']
  vivify_880:
    set $P1604, $P1603["nibbler"]
    unless_null $P1604, vivify_881
    new $P1604, "Undef"
  vivify_881:
    $P1605 = $P1604."ast"()
    $P1606 = $P1602."!make"($P1605)
.annotate 'line', 378
    .return ($P1606)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("212_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1608
    .param pmc param_1609
.annotate 'line', 382
    .lex "self", param_1608
    .lex "$/", param_1609
.annotate 'line', 383
    new $P1610, "Undef"
    .lex "$subpast", $P1610
.annotate 'line', 384
    new $P1611, "Undef"
    .lex "$past", $P1611
.annotate 'line', 383
    find_lex $P1612, "$/"
    unless_null $P1612, vivify_882
    $P1612 = root_new ['parrot';'Hash']
  vivify_882:
    set $P1613, $P1612["nibbler"]
    unless_null $P1613, vivify_883
    new $P1613, "Undef"
  vivify_883:
    $P1614 = $P1613."ast"()
    $P1615 = "buildsub"($P1614)
    store_lex "$subpast", $P1615
.annotate 'line', 384
    get_hll_global $P1616, "GLOBAL"
    nqp_get_package_through_who $P1617, $P1616, "PAST"
    get_who $P1618, $P1617
    set $P1619, $P1618["Regex"]
    find_lex $P1620, "$subpast"
    unless_null $P1620, vivify_884
    new $P1620, "Undef"
  vivify_884:
    find_lex $P1621, "$/"
    unless_null $P1621, vivify_885
    new $P1621, "Undef"
  vivify_885:
    $P1622 = $P1619."new"($P1620, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1621 :named("node"))
    store_lex "$past", $P1622
.annotate 'line', 386
    find_lex $P1623, "$/"
    find_lex $P1624, "$past"
    unless_null $P1624, vivify_886
    new $P1624, "Undef"
  vivify_886:
    $P1625 = $P1623."!make"($P1624)
.annotate 'line', 382
    .return ($P1625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("213_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1627
    .param pmc param_1628
.annotate 'line', 389
    .lex "self", param_1627
    .lex "$/", param_1628
.annotate 'line', 390
    new $P1629, "Undef"
    .lex "$quote", $P1629
.annotate 'line', 392
    new $P1630, "Undef"
    .lex "$past", $P1630
.annotate 'line', 390
    find_lex $P1631, "$/"
    unless_null $P1631, vivify_887
    $P1631 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1632, $P1631["quote_EXPR"]
    unless_null $P1632, vivify_888
    new $P1632, "Undef"
  vivify_888:
    $P1633 = $P1632."ast"()
    store_lex "$quote", $P1633
.annotate 'line', 391
    get_hll_global $P1635, "GLOBAL"
    nqp_get_package_through_who $P1636, $P1635, "PAST"
    get_who $P1637, $P1636
    set $P1638, $P1637["Val"]
    find_lex $P1639, "$quote"
    unless_null $P1639, vivify_889
    new $P1639, "Undef"
  vivify_889:
    $P1640 = $P1638."ACCEPTS"($P1639)
    unless $P1640, if_1634_end
    find_lex $P1641, "$quote"
    unless_null $P1641, vivify_890
    new $P1641, "Undef"
  vivify_890:
    $P1642 = $P1641."value"()
    store_lex "$quote", $P1642
  if_1634_end:
.annotate 'line', 392
    get_hll_global $P1643, "GLOBAL"
    nqp_get_package_through_who $P1644, $P1643, "PAST"
    get_who $P1645, $P1644
    set $P1646, $P1645["Regex"]
    find_lex $P1647, "$quote"
    unless_null $P1647, vivify_891
    new $P1647, "Undef"
  vivify_891:
    find_lex $P1648, "$/"
    unless_null $P1648, vivify_892
    new $P1648, "Undef"
  vivify_892:
    $P1649 = $P1646."new"($P1647, "literal" :named("pasttype"), $P1648 :named("node"))
    store_lex "$past", $P1649
.annotate 'line', 393
    find_lex $P1651, "$?PACKAGE"
    get_who $P1652, $P1651
    set $P1653, $P1652["@MODIFIERS"]
    unless_null $P1653, vivify_893
    $P1653 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    set $P1654, $P1653[0]
    unless_null $P1654, vivify_894
    $P1654 = root_new ['parrot';'Hash']
  vivify_894:
    set $P1655, $P1654["i"]
    unless_null $P1655, vivify_895
    new $P1655, "Undef"
  vivify_895:
    unless $P1655, if_1650_end
    find_lex $P1656, "$past"
    unless_null $P1656, vivify_896
    new $P1656, "Undef"
  vivify_896:
    $P1656."subtype"("ignorecase")
  if_1650_end:
.annotate 'line', 394
    find_lex $P1657, "$/"
    find_lex $P1658, "$past"
    unless_null $P1658, vivify_897
    new $P1658, "Undef"
  vivify_897:
    $P1659 = $P1657."!make"($P1658)
.annotate 'line', 389
    .return ($P1659)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("214_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1661
    .param pmc param_1662
.annotate 'line', 397
    .lex "self", param_1661
    .lex "$/", param_1662
.annotate 'line', 398
    new $P1663, "Undef"
    .lex "$quote", $P1663
.annotate 'line', 400
    new $P1664, "Undef"
    .lex "$past", $P1664
.annotate 'line', 398
    find_lex $P1665, "$/"
    unless_null $P1665, vivify_898
    $P1665 = root_new ['parrot';'Hash']
  vivify_898:
    set $P1666, $P1665["quote_EXPR"]
    unless_null $P1666, vivify_899
    new $P1666, "Undef"
  vivify_899:
    $P1667 = $P1666."ast"()
    store_lex "$quote", $P1667
.annotate 'line', 399
    get_hll_global $P1669, "GLOBAL"
    nqp_get_package_through_who $P1670, $P1669, "PAST"
    get_who $P1671, $P1670
    set $P1672, $P1671["Val"]
    find_lex $P1673, "$quote"
    unless_null $P1673, vivify_900
    new $P1673, "Undef"
  vivify_900:
    $P1674 = $P1672."ACCEPTS"($P1673)
    unless $P1674, if_1668_end
    find_lex $P1675, "$quote"
    unless_null $P1675, vivify_901
    new $P1675, "Undef"
  vivify_901:
    $P1676 = $P1675."value"()
    store_lex "$quote", $P1676
  if_1668_end:
.annotate 'line', 400
    get_hll_global $P1677, "GLOBAL"
    nqp_get_package_through_who $P1678, $P1677, "PAST"
    get_who $P1679, $P1678
    set $P1680, $P1679["Regex"]
    find_lex $P1681, "$quote"
    unless_null $P1681, vivify_902
    new $P1681, "Undef"
  vivify_902:
    find_lex $P1682, "$/"
    unless_null $P1682, vivify_903
    new $P1682, "Undef"
  vivify_903:
    $P1683 = $P1680."new"($P1681, "literal" :named("pasttype"), $P1682 :named("node"))
    store_lex "$past", $P1683
.annotate 'line', 401
    find_lex $P1685, "$?PACKAGE"
    get_who $P1686, $P1685
    set $P1687, $P1686["@MODIFIERS"]
    unless_null $P1687, vivify_904
    $P1687 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    set $P1688, $P1687[0]
    unless_null $P1688, vivify_905
    $P1688 = root_new ['parrot';'Hash']
  vivify_905:
    set $P1689, $P1688["i"]
    unless_null $P1689, vivify_906
    new $P1689, "Undef"
  vivify_906:
    unless $P1689, if_1684_end
    find_lex $P1690, "$past"
    unless_null $P1690, vivify_907
    new $P1690, "Undef"
  vivify_907:
    $P1690."subtype"("ignorecase")
  if_1684_end:
.annotate 'line', 402
    find_lex $P1691, "$/"
    find_lex $P1692, "$past"
    unless_null $P1692, vivify_908
    new $P1692, "Undef"
  vivify_908:
    $P1693 = $P1691."!make"($P1692)
.annotate 'line', 397
    .return ($P1693)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("215_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1695
    .param pmc param_1696
.annotate 'line', 405
    .lex "self", param_1695
    .lex "$/", param_1696
.annotate 'line', 406
    new $P1697, "Undef"
    .lex "$past", $P1697
    get_hll_global $P1698, "GLOBAL"
    nqp_get_package_through_who $P1699, $P1698, "PAST"
    get_who $P1700, $P1699
    set $P1701, $P1700["Regex"]
    find_lex $P1702, "$/"
    unless_null $P1702, vivify_909
    new $P1702, "Undef"
  vivify_909:
    $P1703 = $P1701."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1702 :named("node"))
    store_lex "$past", $P1703
.annotate 'line', 407
    find_lex $P1704, "$/"
    find_lex $P1705, "$past"
    unless_null $P1705, vivify_910
    new $P1705, "Undef"
  vivify_910:
    $P1706 = $P1704."!make"($P1705)
.annotate 'line', 405
    .return ($P1706)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("216_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1708
    .param pmc param_1709
.annotate 'line', 410
    .lex "self", param_1708
    .lex "$/", param_1709
.annotate 'line', 411
    new $P1710, "Undef"
    .lex "$past", $P1710
    get_hll_global $P1711, "GLOBAL"
    nqp_get_package_through_who $P1712, $P1711, "PAST"
    get_who $P1713, $P1712
    set $P1714, $P1713["Regex"]
    find_lex $P1715, "$/"
    unless_null $P1715, vivify_911
    new $P1715, "Undef"
  vivify_911:
    $P1716 = $P1714."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1715 :named("node"))
    store_lex "$past", $P1716
.annotate 'line', 412
    find_lex $P1717, "$/"
    find_lex $P1718, "$past"
    unless_null $P1718, vivify_912
    new $P1718, "Undef"
  vivify_912:
    $P1719 = $P1717."!make"($P1718)
.annotate 'line', 410
    .return ($P1719)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("217_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1721
    .param pmc param_1722
.annotate 'line', 415
    .lex "self", param_1721
    .lex "$/", param_1722
.annotate 'line', 416
    new $P1723, "Undef"
    .lex "$past", $P1723
    get_hll_global $P1724, "GLOBAL"
    nqp_get_package_through_who $P1725, $P1724, "PAST"
    get_who $P1726, $P1725
    set $P1727, $P1726["Regex"]
    find_lex $P1728, "$/"
    unless_null $P1728, vivify_913
    new $P1728, "Undef"
  vivify_913:
    $P1729 = $P1727."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1728 :named("node"))
    store_lex "$past", $P1729
.annotate 'line', 417
    find_lex $P1730, "$/"
    find_lex $P1731, "$past"
    unless_null $P1731, vivify_914
    new $P1731, "Undef"
  vivify_914:
    $P1732 = $P1730."!make"($P1731)
.annotate 'line', 415
    .return ($P1732)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("218_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1734
    .param pmc param_1735
.annotate 'line', 420
    .lex "self", param_1734
    .lex "$/", param_1735
.annotate 'line', 421
    new $P1736, "Undef"
    .lex "$past", $P1736
    get_hll_global $P1737, "GLOBAL"
    nqp_get_package_through_who $P1738, $P1737, "PAST"
    get_who $P1739, $P1738
    set $P1740, $P1739["Regex"]
    find_lex $P1741, "$/"
    unless_null $P1741, vivify_915
    new $P1741, "Undef"
  vivify_915:
    $P1742 = $P1740."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1741 :named("node"))
    store_lex "$past", $P1742
.annotate 'line', 422
    find_lex $P1743, "$/"
    find_lex $P1744, "$past"
    unless_null $P1744, vivify_916
    new $P1744, "Undef"
  vivify_916:
    $P1745 = $P1743."!make"($P1744)
.annotate 'line', 420
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("219_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1747
    .param pmc param_1748
.annotate 'line', 425
    .lex "self", param_1747
    .lex "$/", param_1748
.annotate 'line', 426
    new $P1749, "Undef"
    .lex "$past", $P1749
    get_hll_global $P1750, "GLOBAL"
    nqp_get_package_through_who $P1751, $P1750, "PAST"
    get_who $P1752, $P1751
    set $P1753, $P1752["Regex"]
    find_lex $P1754, "$/"
    unless_null $P1754, vivify_917
    new $P1754, "Undef"
  vivify_917:
    $P1755 = $P1753."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1754 :named("node"))
    store_lex "$past", $P1755
.annotate 'line', 427
    find_lex $P1756, "$/"
    find_lex $P1757, "$past"
    unless_null $P1757, vivify_918
    new $P1757, "Undef"
  vivify_918:
    $P1758 = $P1756."!make"($P1757)
.annotate 'line', 425
    .return ($P1758)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("220_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1760
    .param pmc param_1761
.annotate 'line', 430
    .lex "self", param_1760
    .lex "$/", param_1761
.annotate 'line', 431
    new $P1762, "Undef"
    .lex "$past", $P1762
    get_hll_global $P1763, "GLOBAL"
    nqp_get_package_through_who $P1764, $P1763, "PAST"
    get_who $P1765, $P1764
    set $P1766, $P1765["Regex"]
    find_lex $P1767, "$/"
    unless_null $P1767, vivify_919
    new $P1767, "Undef"
  vivify_919:
    $P1768 = $P1766."new"("cut" :named("pasttype"), $P1767 :named("node"))
    store_lex "$past", $P1768
.annotate 'line', 432
    find_lex $P1769, "$/"
    find_lex $P1770, "$past"
    unless_null $P1770, vivify_920
    new $P1770, "Undef"
  vivify_920:
    $P1771 = $P1769."!make"($P1770)
.annotate 'line', 430
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("221_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1773
    .param pmc param_1774
.annotate 'line', 435
    .lex "self", param_1773
    .lex "$/", param_1774
.annotate 'line', 436
    new $P1775, "Undef"
    .lex "$past", $P1775
    get_hll_global $P1776, "GLOBAL"
    nqp_get_package_through_who $P1777, $P1776, "PAST"
    get_who $P1778, $P1777
    set $P1779, $P1778["Regex"]
    find_lex $P1780, "$/"
    unless_null $P1780, vivify_921
    new $P1780, "Undef"
  vivify_921:
    $P1781 = $P1779."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1780 :named("node"))
    store_lex "$past", $P1781
.annotate 'line', 437
    find_lex $P1782, "$/"
    find_lex $P1783, "$past"
    unless_null $P1783, vivify_922
    new $P1783, "Undef"
  vivify_922:
    $P1784 = $P1782."!make"($P1783)
.annotate 'line', 435
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("222_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1786
    .param pmc param_1787
.annotate 'line', 440
    .lex "self", param_1786
    .lex "$/", param_1787
.annotate 'line', 441
    new $P1788, "Undef"
    .lex "$past", $P1788
    get_hll_global $P1789, "GLOBAL"
    nqp_get_package_through_who $P1790, $P1789, "PAST"
    get_who $P1791, $P1790
    set $P1792, $P1791["Regex"]
    find_lex $P1793, "$/"
    unless_null $P1793, vivify_923
    new $P1793, "Undef"
  vivify_923:
    $P1794 = $P1792."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1793 :named("node"))
    store_lex "$past", $P1794
.annotate 'line', 442
    find_lex $P1795, "$/"
    find_lex $P1796, "$past"
    unless_null $P1796, vivify_924
    new $P1796, "Undef"
  vivify_924:
    $P1797 = $P1795."!make"($P1796)
.annotate 'line', 440
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("223_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1799
    .param pmc param_1800
.annotate 'line', 445
    .lex "self", param_1799
    .lex "$/", param_1800
.annotate 'line', 446
    find_lex $P1801, "$/"
    find_lex $P1802, "$/"
    unless_null $P1802, vivify_925
    $P1802 = root_new ['parrot';'Hash']
  vivify_925:
    set $P1803, $P1802["backslash"]
    unless_null $P1803, vivify_926
    new $P1803, "Undef"
  vivify_926:
    $P1804 = $P1803."ast"()
    $P1805 = $P1801."!make"($P1804)
.annotate 'line', 445
    .return ($P1805)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("224_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1807
    .param pmc param_1808
.annotate 'line', 449
    .lex "self", param_1807
    .lex "$/", param_1808
.annotate 'line', 450
    find_lex $P1809, "$/"
    find_lex $P1810, "$/"
    unless_null $P1810, vivify_927
    $P1810 = root_new ['parrot';'Hash']
  vivify_927:
    set $P1811, $P1810["mod_internal"]
    unless_null $P1811, vivify_928
    new $P1811, "Undef"
  vivify_928:
    $P1812 = $P1811."ast"()
    $P1813 = $P1809."!make"($P1812)
.annotate 'line', 449
    .return ($P1813)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("225_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'line', 453
    .lex "self", param_1815
    .lex "$/", param_1816
.annotate 'line', 454
    find_lex $P1817, "$/"
    find_lex $P1818, "$/"
    unless_null $P1818, vivify_929
    $P1818 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1819, $P1818["assertion"]
    unless_null $P1819, vivify_930
    new $P1819, "Undef"
  vivify_930:
    $P1820 = $P1819."ast"()
    $P1821 = $P1817."!make"($P1820)
.annotate 'line', 453
    .return ($P1821)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("226_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1823
    .param pmc param_1824
.annotate 'line', 457
    .lex "self", param_1823
    .lex "$/", param_1824
.annotate 'line', 458
    find_lex $P1825, "$/"
    get_hll_global $P1826, "GLOBAL"
    nqp_get_package_through_who $P1827, $P1826, "PAST"
    get_who $P1828, $P1827
    set $P1829, $P1828["Regex"]
.annotate 'line', 459
    find_lex $P1830, "$/"
    unless_null $P1830, vivify_931
    $P1830 = root_new ['parrot';'Hash']
  vivify_931:
    set $P1831, $P1830["EXPR"]
    unless_null $P1831, vivify_932
    new $P1831, "Undef"
  vivify_932:
    $P1832 = $P1831."ast"()
.annotate 'line', 460
    get_hll_global $P1833, "GLOBAL"
    nqp_get_package_through_who $P1834, $P1833, "PAST"
    get_who $P1835, $P1834
    set $P1836, $P1835["Regex"]
.annotate 'line', 461
    find_lex $P1837, "$/"
    unless_null $P1837, vivify_933
    $P1837 = root_new ['parrot';'Hash']
  vivify_933:
    set $P1838, $P1837["GOAL"]
    unless_null $P1838, vivify_934
    new $P1838, "Undef"
  vivify_934:
    $P1839 = $P1838."ast"()
.annotate 'line', 462
    get_hll_global $P1840, "GLOBAL"
    nqp_get_package_through_who $P1841, $P1840, "PAST"
    get_who $P1842, $P1841
    set $P1843, $P1842["Regex"]
    find_lex $P1844, "$/"
    unless_null $P1844, vivify_935
    $P1844 = root_new ['parrot';'Hash']
  vivify_935:
    set $P1845, $P1844["GOAL"]
    unless_null $P1845, vivify_936
    new $P1845, "Undef"
  vivify_936:
    set $S1846, $P1845
    $P1847 = $P1843."new"("FAILGOAL", $S1846, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1848 = $P1836."new"($P1839, $P1847, "alt" :named("pasttype"))
.annotate 'line', 460
    $P1849 = $P1829."new"($P1832, $P1848, "concat" :named("pasttype"))
.annotate 'line', 458
    $P1850 = $P1825."!make"($P1849)
.annotate 'line', 457
    .return ($P1850)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("227_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1852
    .param pmc param_1853
.annotate 'line', 470
    .lex "self", param_1852
    .lex "$/", param_1853
.annotate 'line', 471
    new $P1854, "Undef"
    .lex "$past", $P1854
.annotate 'line', 472
    find_lex $P1857, "$/"
    unless_null $P1857, vivify_937
    $P1857 = root_new ['parrot';'Hash']
  vivify_937:
    set $P1858, $P1857["key"]
    unless_null $P1858, vivify_938
    new $P1858, "Undef"
  vivify_938:
    if $P1858, if_1856
    new $P1869, "Integer"
    assign $P1869, 0
    set $P1855, $P1869
    goto if_1856_end
  if_1856:
    get_hll_global $P1859, "GLOBAL"
    nqp_get_package_through_who $P1860, $P1859, "PAST"
    get_who $P1861, $P1860
    set $P1862, $P1861["Regex"]
    find_lex $P1863, "$/"
    unless_null $P1863, vivify_939
    $P1863 = root_new ['parrot';'Hash']
  vivify_939:
    set $P1864, $P1863["key"]
    unless_null $P1864, vivify_940
    $P1864 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    set $P1865, $P1864[0]
    unless_null $P1865, vivify_941
    new $P1865, "Undef"
  vivify_941:
    set $S1866, $P1865
    find_lex $P1867, "$/"
    unless_null $P1867, vivify_942
    new $P1867, "Undef"
  vivify_942:
    $P1868 = $P1862."new"($S1866, "reduce" :named("pasttype"), $P1867 :named("node"))
    set $P1855, $P1868
  if_1856_end:
    store_lex "$past", $P1855
.annotate 'line', 474
    find_lex $P1870, "$/"
    find_lex $P1871, "$past"
    unless_null $P1871, vivify_943
    new $P1871, "Undef"
  vivify_943:
    $P1872 = $P1870."!make"($P1871)
.annotate 'line', 470
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("228_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1874
    .param pmc param_1875
.annotate 'line', 477
    .lex "self", param_1874
    .lex "$/", param_1875
.annotate 'line', 478
    new $P1876, "Undef"
    .lex "$past", $P1876
.annotate 'line', 479
    new $P1877, "Undef"
    .lex "$name", $P1877
.annotate 'line', 477
    find_lex $P1878, "$past"
    unless_null $P1878, vivify_944
    new $P1878, "Undef"
  vivify_944:
.annotate 'line', 479
    find_lex $P1881, "$/"
    unless_null $P1881, vivify_945
    $P1881 = root_new ['parrot';'Hash']
  vivify_945:
    set $P1882, $P1881["pos"]
    unless_null $P1882, vivify_946
    new $P1882, "Undef"
  vivify_946:
    if $P1882, if_1880
    find_lex $P1886, "$/"
    unless_null $P1886, vivify_947
    $P1886 = root_new ['parrot';'Hash']
  vivify_947:
    set $P1887, $P1886["name"]
    unless_null $P1887, vivify_948
    new $P1887, "Undef"
  vivify_948:
    set $S1888, $P1887
    new $P1879, 'String'
    set $P1879, $S1888
    goto if_1880_end
  if_1880:
    find_lex $P1883, "$/"
    unless_null $P1883, vivify_949
    $P1883 = root_new ['parrot';'Hash']
  vivify_949:
    set $P1884, $P1883["pos"]
    unless_null $P1884, vivify_950
    new $P1884, "Undef"
  vivify_950:
    set $N1885, $P1884
    new $P1879, 'Float'
    set $P1879, $N1885
  if_1880_end:
    store_lex "$name", $P1879
.annotate 'line', 480
    find_lex $P1890, "$/"
    unless_null $P1890, vivify_951
    $P1890 = root_new ['parrot';'Hash']
  vivify_951:
    set $P1891, $P1890["quantified_atom"]
    unless_null $P1891, vivify_952
    new $P1891, "Undef"
  vivify_952:
    if $P1891, if_1889
.annotate 'line', 491
    get_hll_global $P1925, "GLOBAL"
    nqp_get_package_through_who $P1926, $P1925, "PAST"
    get_who $P1927, $P1926
    set $P1928, $P1927["Regex"]
    find_lex $P1929, "$name"
    unless_null $P1929, vivify_953
    new $P1929, "Undef"
  vivify_953:
    find_lex $P1930, "$/"
    unless_null $P1930, vivify_954
    new $P1930, "Undef"
  vivify_954:
    $P1931 = $P1928."new"("!BACKREF", $P1929, "subrule" :named("pasttype"), "method" :named("subtype"), $P1930 :named("node"))
    store_lex "$past", $P1931
.annotate 'line', 490
    goto if_1889_end
  if_1889:
.annotate 'line', 481
    find_lex $P1892, "$/"
    unless_null $P1892, vivify_955
    $P1892 = root_new ['parrot';'Hash']
  vivify_955:
    set $P1893, $P1892["quantified_atom"]
    unless_null $P1893, vivify_956
    $P1893 = root_new ['parrot';'ResizablePMCArray']
  vivify_956:
    set $P1894, $P1893[0]
    unless_null $P1894, vivify_957
    new $P1894, "Undef"
  vivify_957:
    $P1895 = $P1894."ast"()
    store_lex "$past", $P1895
.annotate 'line', 482
    find_lex $P1899, "$past"
    unless_null $P1899, vivify_958
    new $P1899, "Undef"
  vivify_958:
    $S1900 = $P1899."pasttype"()
    iseq $I1901, $S1900, "quant"
    if $I1901, if_1898
    new $P1897, 'Integer'
    set $P1897, $I1901
    goto if_1898_end
  if_1898:
    find_lex $P1902, "$past"
    unless_null $P1902, vivify_959
    $P1902 = root_new ['parrot';'ResizablePMCArray']
  vivify_959:
    set $P1903, $P1902[0]
    unless_null $P1903, vivify_960
    new $P1903, "Undef"
  vivify_960:
    $S1904 = $P1903."pasttype"()
    iseq $I1905, $S1904, "subrule"
    new $P1897, 'Integer'
    set $P1897, $I1905
  if_1898_end:
    if $P1897, if_1896
.annotate 'line', 485
    find_lex $P1911, "$past"
    unless_null $P1911, vivify_961
    new $P1911, "Undef"
  vivify_961:
    $S1912 = $P1911."pasttype"()
    iseq $I1913, $S1912, "subrule"
    if $I1913, if_1910
.annotate 'line', 487
    get_hll_global $P1917, "GLOBAL"
    nqp_get_package_through_who $P1918, $P1917, "PAST"
    get_who $P1919, $P1918
    set $P1920, $P1919["Regex"]
    find_lex $P1921, "$past"
    unless_null $P1921, vivify_962
    new $P1921, "Undef"
  vivify_962:
    find_lex $P1922, "$name"
    unless_null $P1922, vivify_963
    new $P1922, "Undef"
  vivify_963:
    find_lex $P1923, "$/"
    unless_null $P1923, vivify_964
    new $P1923, "Undef"
  vivify_964:
    $P1924 = $P1920."new"($P1921, $P1922 :named("name"), "subcapture" :named("pasttype"), $P1923 :named("node"))
    store_lex "$past", $P1924
.annotate 'line', 486
    goto if_1910_end
  if_1910:
.annotate 'line', 485
    find_lex $P1914, "self"
    find_lex $P1915, "$past"
    unless_null $P1915, vivify_965
    new $P1915, "Undef"
  vivify_965:
    find_lex $P1916, "$name"
    unless_null $P1916, vivify_966
    new $P1916, "Undef"
  vivify_966:
    $P1914."subrule_alias"($P1915, $P1916)
  if_1910_end:
    goto if_1896_end
  if_1896:
.annotate 'line', 483
    find_lex $P1906, "self"
    find_lex $P1907, "$past"
    unless_null $P1907, vivify_967
    $P1907 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    set $P1908, $P1907[0]
    unless_null $P1908, vivify_968
    new $P1908, "Undef"
  vivify_968:
    find_lex $P1909, "$name"
    unless_null $P1909, vivify_969
    new $P1909, "Undef"
  vivify_969:
    $P1906."subrule_alias"($P1908, $P1909)
  if_1896_end:
  if_1889_end:
.annotate 'line', 494
    find_lex $P1932, "$/"
    find_lex $P1933, "$past"
    unless_null $P1933, vivify_970
    new $P1933, "Undef"
  vivify_970:
    $P1934 = $P1932."!make"($P1933)
.annotate 'line', 477
    .return ($P1934)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("229_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1936
    .param pmc param_1937
.annotate 'line', 497
    .lex "self", param_1936
    .lex "$/", param_1937
.annotate 'line', 498
    find_lex $P1938, "$/"
    get_hll_global $P1939, "GLOBAL"
    nqp_get_package_through_who $P1940, $P1939, "PAST"
    get_who $P1941, $P1940
    set $P1942, $P1941["Regex"]
.annotate 'line', 499
    get_hll_global $P1943, "GLOBAL"
    nqp_get_package_through_who $P1944, $P1943, "PAST"
    get_who $P1945, $P1944
    set $P1946, $P1945["Op"]
    find_lex $P1947, "$/"
    unless_null $P1947, vivify_971
    $P1947 = root_new ['parrot';'Hash']
  vivify_971:
    set $P1948, $P1947["pir"]
    unless_null $P1948, vivify_972
    new $P1948, "Undef"
  vivify_972:
    set $S1949, $P1948
    $P1950 = $P1946."new"($S1949 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1951, "$/"
    unless_null $P1951, vivify_973
    new $P1951, "Undef"
  vivify_973:
    $P1952 = $P1942."new"($P1950, "pastnode" :named("pasttype"), $P1951 :named("node"))
.annotate 'line', 498
    $P1953 = $P1938."!make"($P1952)
.annotate 'line', 497
    .return ($P1953)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("230_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1955
    .param pmc param_1956
.annotate 'line', 505
    .lex "self", param_1955
    .lex "$/", param_1956
.annotate 'line', 506
    new $P1957, "Undef"
    .lex "$subtype", $P1957
.annotate 'line', 507
    new $P1958, "Undef"
    .lex "$past", $P1958
.annotate 'line', 506
    find_lex $P1961, "$/"
    unless_null $P1961, vivify_974
    $P1961 = root_new ['parrot';'Hash']
  vivify_974:
    set $P1962, $P1961["sym"]
    unless_null $P1962, vivify_975
    new $P1962, "Undef"
  vivify_975:
    set $S1963, $P1962
    iseq $I1964, $S1963, "n"
    if $I1964, if_1960
    find_lex $P1966, "$/"
    unless_null $P1966, vivify_976
    $P1966 = root_new ['parrot';'Hash']
  vivify_976:
    set $P1967, $P1966["sym"]
    unless_null $P1967, vivify_977
    new $P1967, "Undef"
  vivify_977:
    set $S1968, $P1967
    new $P1959, 'String'
    set $P1959, $S1968
    goto if_1960_end
  if_1960:
    new $P1965, "String"
    assign $P1965, "nl"
    set $P1959, $P1965
  if_1960_end:
    store_lex "$subtype", $P1959
.annotate 'line', 507
    get_hll_global $P1969, "GLOBAL"
    nqp_get_package_through_who $P1970, $P1969, "PAST"
    get_who $P1971, $P1970
    set $P1972, $P1971["Regex"]
    find_lex $P1973, "$subtype"
    unless_null $P1973, vivify_978
    new $P1973, "Undef"
  vivify_978:
    find_lex $P1974, "$/"
    unless_null $P1974, vivify_979
    new $P1974, "Undef"
  vivify_979:
    $P1975 = $P1972."new"("charclass" :named("pasttype"), $P1973 :named("subtype"), $P1974 :named("node"))
    store_lex "$past", $P1975
.annotate 'line', 508
    find_lex $P1976, "$/"
    find_lex $P1977, "$past"
    unless_null $P1977, vivify_980
    new $P1977, "Undef"
  vivify_980:
    $P1978 = $P1976."!make"($P1977)
.annotate 'line', 505
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("231_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1980
    .param pmc param_1981
.annotate 'line', 511
    .lex "self", param_1980
    .lex "$/", param_1981
.annotate 'line', 512
    new $P1982, "Undef"
    .lex "$past", $P1982
    get_hll_global $P1983, "GLOBAL"
    nqp_get_package_through_who $P1984, $P1983, "PAST"
    get_who $P1985, $P1984
    set $P1986, $P1985["Regex"]
.annotate 'line', 513
    find_lex $P1987, "$/"
    unless_null $P1987, vivify_981
    $P1987 = root_new ['parrot';'Hash']
  vivify_981:
    set $P1988, $P1987["sym"]
    unless_null $P1988, vivify_982
    new $P1988, "Undef"
  vivify_982:
    set $S1989, $P1988
    iseq $I1990, $S1989, "B"
    find_lex $P1991, "$/"
    unless_null $P1991, vivify_983
    new $P1991, "Undef"
  vivify_983:
    $P1992 = $P1986."new"("\b", "enumcharlist" :named("pasttype"), $I1990 :named("negate"), $P1991 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P1992
.annotate 'line', 514
    find_lex $P1993, "$/"
    find_lex $P1994, "$past"
    unless_null $P1994, vivify_984
    new $P1994, "Undef"
  vivify_984:
    $P1995 = $P1993."!make"($P1994)
.annotate 'line', 511
    .return ($P1995)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("232_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_1997
    .param pmc param_1998
.annotate 'line', 517
    .lex "self", param_1997
    .lex "$/", param_1998
.annotate 'line', 518
    new $P1999, "Undef"
    .lex "$past", $P1999
    get_hll_global $P2000, "GLOBAL"
    nqp_get_package_through_who $P2001, $P2000, "PAST"
    get_who $P2002, $P2001
    set $P2003, $P2002["Regex"]
.annotate 'line', 519
    find_lex $P2004, "$/"
    unless_null $P2004, vivify_985
    $P2004 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2005, $P2004["sym"]
    unless_null $P2005, vivify_986
    new $P2005, "Undef"
  vivify_986:
    set $S2006, $P2005
    iseq $I2007, $S2006, "E"
    find_lex $P2008, "$/"
    unless_null $P2008, vivify_987
    new $P2008, "Undef"
  vivify_987:
    $P2009 = $P2003."new"("\e", "enumcharlist" :named("pasttype"), $I2007 :named("negate"), $P2008 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2009
.annotate 'line', 520
    find_lex $P2010, "$/"
    find_lex $P2011, "$past"
    unless_null $P2011, vivify_988
    new $P2011, "Undef"
  vivify_988:
    $P2012 = $P2010."!make"($P2011)
.annotate 'line', 517
    .return ($P2012)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("233_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2014
    .param pmc param_2015
.annotate 'line', 523
    .lex "self", param_2014
    .lex "$/", param_2015
.annotate 'line', 524
    new $P2016, "Undef"
    .lex "$past", $P2016
    get_hll_global $P2017, "GLOBAL"
    nqp_get_package_through_who $P2018, $P2017, "PAST"
    get_who $P2019, $P2018
    set $P2020, $P2019["Regex"]
.annotate 'line', 525
    find_lex $P2021, "$/"
    unless_null $P2021, vivify_989
    $P2021 = root_new ['parrot';'Hash']
  vivify_989:
    set $P2022, $P2021["sym"]
    unless_null $P2022, vivify_990
    new $P2022, "Undef"
  vivify_990:
    set $S2023, $P2022
    iseq $I2024, $S2023, "F"
    find_lex $P2025, "$/"
    unless_null $P2025, vivify_991
    new $P2025, "Undef"
  vivify_991:
    $P2026 = $P2020."new"("\f", "enumcharlist" :named("pasttype"), $I2024 :named("negate"), $P2025 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2026
.annotate 'line', 526
    find_lex $P2027, "$/"
    find_lex $P2028, "$past"
    unless_null $P2028, vivify_992
    new $P2028, "Undef"
  vivify_992:
    $P2029 = $P2027."!make"($P2028)
.annotate 'line', 523
    .return ($P2029)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("234_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2031
    .param pmc param_2032
.annotate 'line', 529
    .lex "self", param_2031
    .lex "$/", param_2032
.annotate 'line', 530
    new $P2033, "Undef"
    .lex "$past", $P2033
    get_hll_global $P2034, "GLOBAL"
    nqp_get_package_through_who $P2035, $P2034, "PAST"
    get_who $P2036, $P2035
    set $P2037, $P2036["Regex"]
.annotate 'line', 531
    find_lex $P2038, "$/"
    unless_null $P2038, vivify_993
    $P2038 = root_new ['parrot';'Hash']
  vivify_993:
    set $P2039, $P2038["sym"]
    unless_null $P2039, vivify_994
    new $P2039, "Undef"
  vivify_994:
    set $S2040, $P2039
    iseq $I2041, $S2040, "H"
    find_lex $P2042, "$/"
    unless_null $P2042, vivify_995
    new $P2042, "Undef"
  vivify_995:
    $P2043 = $P2037."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2041 :named("negate"), $P2042 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2043
.annotate 'line', 532
    find_lex $P2044, "$/"
    find_lex $P2045, "$past"
    unless_null $P2045, vivify_996
    new $P2045, "Undef"
  vivify_996:
    $P2046 = $P2044."!make"($P2045)
.annotate 'line', 529
    .return ($P2046)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("235_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2048
    .param pmc param_2049
.annotate 'line', 535
    .lex "self", param_2048
    .lex "$/", param_2049
.annotate 'line', 536
    new $P2050, "Undef"
    .lex "$past", $P2050
    get_hll_global $P2051, "GLOBAL"
    nqp_get_package_through_who $P2052, $P2051, "PAST"
    get_who $P2053, $P2052
    set $P2054, $P2053["Regex"]
.annotate 'line', 537
    find_lex $P2055, "$/"
    unless_null $P2055, vivify_997
    $P2055 = root_new ['parrot';'Hash']
  vivify_997:
    set $P2056, $P2055["sym"]
    unless_null $P2056, vivify_998
    new $P2056, "Undef"
  vivify_998:
    set $S2057, $P2056
    iseq $I2058, $S2057, "R"
    find_lex $P2059, "$/"
    unless_null $P2059, vivify_999
    new $P2059, "Undef"
  vivify_999:
    $P2060 = $P2054."new"("\r", "enumcharlist" :named("pasttype"), $I2058 :named("negate"), $P2059 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2060
.annotate 'line', 538
    find_lex $P2061, "$/"
    find_lex $P2062, "$past"
    unless_null $P2062, vivify_1000
    new $P2062, "Undef"
  vivify_1000:
    $P2063 = $P2061."!make"($P2062)
.annotate 'line', 535
    .return ($P2063)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("236_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2065
    .param pmc param_2066
.annotate 'line', 541
    .lex "self", param_2065
    .lex "$/", param_2066
.annotate 'line', 542
    new $P2067, "Undef"
    .lex "$past", $P2067
    get_hll_global $P2068, "GLOBAL"
    nqp_get_package_through_who $P2069, $P2068, "PAST"
    get_who $P2070, $P2069
    set $P2071, $P2070["Regex"]
.annotate 'line', 543
    find_lex $P2072, "$/"
    unless_null $P2072, vivify_1001
    $P2072 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P2073, $P2072["sym"]
    unless_null $P2073, vivify_1002
    new $P2073, "Undef"
  vivify_1002:
    set $S2074, $P2073
    iseq $I2075, $S2074, "T"
    find_lex $P2076, "$/"
    unless_null $P2076, vivify_1003
    new $P2076, "Undef"
  vivify_1003:
    $P2077 = $P2071."new"("\t", "enumcharlist" :named("pasttype"), $I2075 :named("negate"), $P2076 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2077
.annotate 'line', 544
    find_lex $P2078, "$/"
    find_lex $P2079, "$past"
    unless_null $P2079, vivify_1004
    new $P2079, "Undef"
  vivify_1004:
    $P2080 = $P2078."!make"($P2079)
.annotate 'line', 541
    .return ($P2080)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("237_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2082
    .param pmc param_2083
.annotate 'line', 547
    .lex "self", param_2082
    .lex "$/", param_2083
.annotate 'line', 548
    new $P2084, "Undef"
    .lex "$past", $P2084
    get_hll_global $P2085, "GLOBAL"
    nqp_get_package_through_who $P2086, $P2085, "PAST"
    get_who $P2087, $P2086
    set $P2088, $P2087["Regex"]
.annotate 'line', 550
    find_lex $P2089, "$/"
    unless_null $P2089, vivify_1005
    $P2089 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P2090, $P2089["sym"]
    unless_null $P2090, vivify_1006
    new $P2090, "Undef"
  vivify_1006:
    set $S2091, $P2090
    iseq $I2092, $S2091, "V"
    find_lex $P2093, "$/"
    unless_null $P2093, vivify_1007
    new $P2093, "Undef"
  vivify_1007:
    $P2094 = $P2088."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2092 :named("negate"), $P2093 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2094
.annotate 'line', 551
    find_lex $P2095, "$/"
    find_lex $P2096, "$past"
    unless_null $P2096, vivify_1008
    new $P2096, "Undef"
  vivify_1008:
    $P2097 = $P2095."!make"($P2096)
.annotate 'line', 547
    .return ($P2097)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("238_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2099
    .param pmc param_2100
.annotate 'line', 554
    .lex "self", param_2099
    .lex "$/", param_2100
.annotate 'line', 555
    new $P2101, "Undef"
    .lex "$octlit", $P2101
.annotate 'line', 556
    get_hll_global $P2102, "GLOBAL"
    nqp_get_package_through_who $P2103, $P2102, "HLL"
    nqp_get_package_through_who $P2104, $P2103, "Actions"
    get_who $P2105, $P2104
    set $P2106, $P2105["ints_to_string"]
    find_lex $P2109, "$/"
    unless_null $P2109, vivify_1009
    $P2109 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P2110, $P2109["octint"]
    unless_null $P2110, vivify_1010
    new $P2110, "Undef"
  vivify_1010:
    unless $P2110, unless_2108
    set $P2107, $P2110
    goto unless_2108_end
  unless_2108:
    find_lex $P2111, "$/"
    unless_null $P2111, vivify_1011
    $P2111 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P2112, $P2111["octints"]
    unless_null $P2112, vivify_1012
    $P2112 = root_new ['parrot';'Hash']
  vivify_1012:
    set $P2113, $P2112["octint"]
    unless_null $P2113, vivify_1013
    new $P2113, "Undef"
  vivify_1013:
    set $P2107, $P2113
  unless_2108_end:
    $P2114 = $P2106($P2107)
    store_lex "$octlit", $P2114
.annotate 'line', 557
    find_lex $P2115, "$/"
    find_lex $P2118, "$/"
    unless_null $P2118, vivify_1014
    $P2118 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P2119, $P2118["sym"]
    unless_null $P2119, vivify_1015
    new $P2119, "Undef"
  vivify_1015:
    set $S2120, $P2119
    iseq $I2121, $S2120, "O"
    if $I2121, if_2117
.annotate 'line', 560
    get_hll_global $P2129, "GLOBAL"
    nqp_get_package_through_who $P2130, $P2129, "PAST"
    get_who $P2131, $P2130
    set $P2132, $P2131["Regex"]
    find_lex $P2133, "$octlit"
    unless_null $P2133, vivify_1016
    new $P2133, "Undef"
  vivify_1016:
    find_lex $P2134, "$/"
    unless_null $P2134, vivify_1017
    new $P2134, "Undef"
  vivify_1017:
    $P2135 = $P2132."new"($P2133, "literal" :named("pasttype"), $P2134 :named("node"))
    set $P2116, $P2135
.annotate 'line', 557
    goto if_2117_end
  if_2117:
.annotate 'line', 558
    get_hll_global $P2122, "GLOBAL"
    nqp_get_package_through_who $P2123, $P2122, "PAST"
    get_who $P2124, $P2123
    set $P2125, $P2124["Regex"]
    find_lex $P2126, "$octlit"
    unless_null $P2126, vivify_1018
    new $P2126, "Undef"
  vivify_1018:
    find_lex $P2127, "$/"
    unless_null $P2127, vivify_1019
    new $P2127, "Undef"
  vivify_1019:
    $P2128 = $P2125."new"($P2126, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2127 :named("node"))
    set $P2116, $P2128
  if_2117_end:
    $P2136 = $P2115."!make"($P2116)
.annotate 'line', 554
    .return ($P2136)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("239_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2138
    .param pmc param_2139
.annotate 'line', 563
    .lex "self", param_2138
    .lex "$/", param_2139
.annotate 'line', 564
    new $P2140, "Undef"
    .lex "$hexlit", $P2140
.annotate 'line', 565
    get_hll_global $P2141, "GLOBAL"
    nqp_get_package_through_who $P2142, $P2141, "HLL"
    nqp_get_package_through_who $P2143, $P2142, "Actions"
    get_who $P2144, $P2143
    set $P2145, $P2144["ints_to_string"]
    find_lex $P2148, "$/"
    unless_null $P2148, vivify_1020
    $P2148 = root_new ['parrot';'Hash']
  vivify_1020:
    set $P2149, $P2148["hexint"]
    unless_null $P2149, vivify_1021
    new $P2149, "Undef"
  vivify_1021:
    unless $P2149, unless_2147
    set $P2146, $P2149
    goto unless_2147_end
  unless_2147:
    find_lex $P2150, "$/"
    unless_null $P2150, vivify_1022
    $P2150 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2151, $P2150["hexints"]
    unless_null $P2151, vivify_1023
    $P2151 = root_new ['parrot';'Hash']
  vivify_1023:
    set $P2152, $P2151["hexint"]
    unless_null $P2152, vivify_1024
    new $P2152, "Undef"
  vivify_1024:
    set $P2146, $P2152
  unless_2147_end:
    $P2153 = $P2145($P2146)
    store_lex "$hexlit", $P2153
.annotate 'line', 566
    find_lex $P2154, "$/"
    find_lex $P2157, "$/"
    unless_null $P2157, vivify_1025
    $P2157 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2158, $P2157["sym"]
    unless_null $P2158, vivify_1026
    new $P2158, "Undef"
  vivify_1026:
    set $S2159, $P2158
    iseq $I2160, $S2159, "X"
    if $I2160, if_2156
.annotate 'line', 569
    get_hll_global $P2168, "GLOBAL"
    nqp_get_package_through_who $P2169, $P2168, "PAST"
    get_who $P2170, $P2169
    set $P2171, $P2170["Regex"]
    find_lex $P2172, "$hexlit"
    unless_null $P2172, vivify_1027
    new $P2172, "Undef"
  vivify_1027:
    find_lex $P2173, "$/"
    unless_null $P2173, vivify_1028
    new $P2173, "Undef"
  vivify_1028:
    $P2174 = $P2171."new"($P2172, "literal" :named("pasttype"), $P2173 :named("node"))
    set $P2155, $P2174
.annotate 'line', 566
    goto if_2156_end
  if_2156:
.annotate 'line', 567
    get_hll_global $P2161, "GLOBAL"
    nqp_get_package_through_who $P2162, $P2161, "PAST"
    get_who $P2163, $P2162
    set $P2164, $P2163["Regex"]
    find_lex $P2165, "$hexlit"
    unless_null $P2165, vivify_1029
    new $P2165, "Undef"
  vivify_1029:
    find_lex $P2166, "$/"
    unless_null $P2166, vivify_1030
    new $P2166, "Undef"
  vivify_1030:
    $P2167 = $P2164."new"($P2165, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2166 :named("node"))
    set $P2155, $P2167
  if_2156_end:
    $P2175 = $P2154."!make"($P2155)
.annotate 'line', 563
    .return ($P2175)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("240_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2177
    .param pmc param_2178
.annotate 'line', 572
    .lex "self", param_2177
    .lex "$/", param_2178
.annotate 'line', 573
    find_lex $P2179, "$/"
    get_hll_global $P2180, "GLOBAL"
    nqp_get_package_through_who $P2181, $P2180, "PAST"
    get_who $P2182, $P2181
    set $P2183, $P2182["Regex"]
    find_lex $P2184, "$/"
    unless_null $P2184, vivify_1031
    $P2184 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P2185, $P2184["charspec"]
    unless_null $P2185, vivify_1032
    new $P2185, "Undef"
  vivify_1032:
    $P2186 = $P2185."ast"()
    find_lex $P2187, "$/"
    unless_null $P2187, vivify_1033
    new $P2187, "Undef"
  vivify_1033:
    $P2188 = $P2183."new"($P2186, "literal" :named("pasttype"), $P2187 :named("node"))
    $P2189 = $P2179."!make"($P2188)
.annotate 'line', 572
    .return ($P2189)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("241_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2191
    .param pmc param_2192
.annotate 'line', 576
    .lex "self", param_2191
    .lex "$/", param_2192
.annotate 'line', 577
    new $P2193, "Undef"
    .lex "$past", $P2193
    get_hll_global $P2194, "GLOBAL"
    nqp_get_package_through_who $P2195, $P2194, "PAST"
    get_who $P2196, $P2195
    set $P2197, $P2196["Regex"]
    find_lex $P2198, "$/"
    unless_null $P2198, vivify_1034
    new $P2198, "Undef"
  vivify_1034:
    set $S2199, $P2198
    find_lex $P2200, "$/"
    unless_null $P2200, vivify_1035
    new $P2200, "Undef"
  vivify_1035:
    $P2201 = $P2197."new"($S2199, "literal" :named("pasttype"), $P2200 :named("node"))
    store_lex "$past", $P2201
.annotate 'line', 578
    find_lex $P2202, "$/"
    find_lex $P2203, "$past"
    unless_null $P2203, vivify_1036
    new $P2203, "Undef"
  vivify_1036:
    $P2204 = $P2202."!make"($P2203)
.annotate 'line', 576
    .return ($P2204)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("242_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2206
    .param pmc param_2207
.annotate 'line', 582
    .lex "self", param_2206
    .lex "$/", param_2207
.annotate 'line', 583
    new $P2208, "Undef"
    .lex "$past", $P2208
.annotate 'line', 582
    find_lex $P2209, "$past"
    unless_null $P2209, vivify_1037
    new $P2209, "Undef"
  vivify_1037:
.annotate 'line', 584
    find_lex $P2211, "$/"
    unless_null $P2211, vivify_1038
    $P2211 = root_new ['parrot';'Hash']
  vivify_1038:
    set $P2212, $P2211["assertion"]
    unless_null $P2212, vivify_1039
    new $P2212, "Undef"
  vivify_1039:
    if $P2212, if_2210
.annotate 'line', 588
    new $P2217, "Integer"
    assign $P2217, 0
    store_lex "$past", $P2217
    goto if_2210_end
  if_2210:
.annotate 'line', 585
    find_lex $P2213, "$/"
    unless_null $P2213, vivify_1040
    $P2213 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2214, $P2213["assertion"]
    unless_null $P2214, vivify_1041
    new $P2214, "Undef"
  vivify_1041:
    $P2215 = $P2214."ast"()
    store_lex "$past", $P2215
.annotate 'line', 586
    find_lex $P2216, "$past"
    unless_null $P2216, vivify_1042
    new $P2216, "Undef"
  vivify_1042:
    $P2216."subtype"("zerowidth")
  if_2210_end:
.annotate 'line', 589
    find_lex $P2218, "$/"
    find_lex $P2219, "$past"
    unless_null $P2219, vivify_1043
    new $P2219, "Undef"
  vivify_1043:
    $P2220 = $P2218."!make"($P2219)
.annotate 'line', 582
    .return ($P2220)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("243_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2222
    .param pmc param_2223
.annotate 'line', 592
    .lex "self", param_2222
    .lex "$/", param_2223
.annotate 'line', 593
    new $P2224, "Undef"
    .lex "$past", $P2224
.annotate 'line', 592
    find_lex $P2225, "$past"
    unless_null $P2225, vivify_1044
    new $P2225, "Undef"
  vivify_1044:
.annotate 'line', 594
    find_lex $P2227, "$/"
    unless_null $P2227, vivify_1045
    $P2227 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P2228, $P2227["assertion"]
    unless_null $P2228, vivify_1046
    new $P2228, "Undef"
  vivify_1046:
    if $P2228, if_2226
.annotate 'line', 600
    get_hll_global $P2237, "GLOBAL"
    nqp_get_package_through_who $P2238, $P2237, "PAST"
    get_who $P2239, $P2238
    set $P2240, $P2239["Regex"]
    find_lex $P2241, "$/"
    unless_null $P2241, vivify_1047
    new $P2241, "Undef"
  vivify_1047:
    $P2242 = $P2240."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2241 :named("node"))
    store_lex "$past", $P2242
.annotate 'line', 599
    goto if_2226_end
  if_2226:
.annotate 'line', 595
    find_lex $P2229, "$/"
    unless_null $P2229, vivify_1048
    $P2229 = root_new ['parrot';'Hash']
  vivify_1048:
    set $P2230, $P2229["assertion"]
    unless_null $P2230, vivify_1049
    new $P2230, "Undef"
  vivify_1049:
    $P2231 = $P2230."ast"()
    store_lex "$past", $P2231
.annotate 'line', 596
    find_lex $P2232, "$past"
    unless_null $P2232, vivify_1050
    new $P2232, "Undef"
  vivify_1050:
    find_lex $P2233, "$past"
    unless_null $P2233, vivify_1051
    new $P2233, "Undef"
  vivify_1051:
    $P2234 = $P2233."negate"()
    isfalse $I2235, $P2234
    $P2232."negate"($I2235)
.annotate 'line', 597
    find_lex $P2236, "$past"
    unless_null $P2236, vivify_1052
    new $P2236, "Undef"
  vivify_1052:
    $P2236."subtype"("zerowidth")
  if_2226_end:
.annotate 'line', 602
    find_lex $P2243, "$/"
    find_lex $P2244, "$past"
    unless_null $P2244, vivify_1053
    new $P2244, "Undef"
  vivify_1053:
    $P2245 = $P2243."!make"($P2244)
.annotate 'line', 592
    .return ($P2245)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("244_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2247
    .param pmc param_2248
.annotate 'line', 605
    .lex "self", param_2247
    .lex "$/", param_2248
.annotate 'line', 606
    new $P2249, "Undef"
    .lex "$past", $P2249
    find_lex $P2250, "$/"
    unless_null $P2250, vivify_1054
    $P2250 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P2251, $P2250["assertion"]
    unless_null $P2251, vivify_1055
    new $P2251, "Undef"
  vivify_1055:
    $P2252 = $P2251."ast"()
    store_lex "$past", $P2252
.annotate 'line', 607
    find_lex $P2253, "$past"
    unless_null $P2253, vivify_1056
    new $P2253, "Undef"
  vivify_1056:
    $P2253."subtype"("method")
.annotate 'line', 608
    find_lex $P2254, "$past"
    unless_null $P2254, vivify_1057
    new $P2254, "Undef"
  vivify_1057:
    $P2254."name"("")
.annotate 'line', 609
    find_lex $P2255, "$/"
    find_lex $P2256, "$past"
    unless_null $P2256, vivify_1058
    new $P2256, "Undef"
  vivify_1058:
    $P2257 = $P2255."!make"($P2256)
.annotate 'line', 605
    .return ($P2257)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("245_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2259
    .param pmc param_2260
.annotate 'line', 612
    .const 'Sub' $P2327 = "247_1304277412.809" 
    capture_lex $P2327
    .const 'Sub' $P2283 = "246_1304277412.809" 
    capture_lex $P2283
    .lex "self", param_2259
    .lex "$/", param_2260
.annotate 'line', 613
    new $P2261, "Undef"
    .lex "$name", $P2261
.annotate 'line', 614
    new $P2262, "Undef"
    .lex "$past", $P2262
.annotate 'line', 613
    find_lex $P2263, "$/"
    unless_null $P2263, vivify_1059
    $P2263 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2264, $P2263["longname"]
    unless_null $P2264, vivify_1060
    new $P2264, "Undef"
  vivify_1060:
    set $S2265, $P2264
    new $P2266, 'String'
    set $P2266, $S2265
    store_lex "$name", $P2266
    find_lex $P2267, "$past"
    unless_null $P2267, vivify_1061
    new $P2267, "Undef"
  vivify_1061:
.annotate 'line', 615
    find_lex $P2269, "$/"
    unless_null $P2269, vivify_1062
    $P2269 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P2270, $P2269["assertion"]
    unless_null $P2270, vivify_1063
    new $P2270, "Undef"
  vivify_1063:
    if $P2270, if_2268
.annotate 'line', 619
    find_lex $P2279, "$name"
    unless_null $P2279, vivify_1064
    new $P2279, "Undef"
  vivify_1064:
    set $S2280, $P2279
    iseq $I2281, $S2280, "sym"
    if $I2281, if_2278
.annotate 'line', 636
    find_lex $P2303, "self"
    find_lex $P2304, "$/"
    unless_null $P2304, vivify_1065
    new $P2304, "Undef"
  vivify_1065:
    $P2305 = $P2303."named_assertion"($P2304)
    store_lex "$past", $P2305
.annotate 'line', 637
    find_lex $P2307, "$/"
    unless_null $P2307, vivify_1066
    $P2307 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P2308, $P2307["nibbler"]
    unless_null $P2308, vivify_1067
    new $P2308, "Undef"
  vivify_1067:
    if $P2308, if_2306
.annotate 'line', 640
    find_lex $P2316, "$/"
    unless_null $P2316, vivify_1068
    $P2316 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P2317, $P2316["arglist"]
    unless_null $P2317, vivify_1069
    new $P2317, "Undef"
  vivify_1069:
    unless $P2317, if_2315_end
.annotate 'line', 641
    find_lex $P2319, "$/"
    unless_null $P2319, vivify_1070
    $P2319 = root_new ['parrot';'Hash']
  vivify_1070:
    set $P2320, $P2319["arglist"]
    unless_null $P2320, vivify_1071
    $P2320 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
    set $P2321, $P2320[0]
    unless_null $P2321, vivify_1072
    new $P2321, "Undef"
  vivify_1072:
    $P2322 = $P2321."ast"()
    $P2323 = $P2322."list"()
    defined $I2324, $P2323
    unless $I2324, for_undef_1073
    iter $P2318, $P2323
    new $P2333, 'ExceptionHandler'
    set_label $P2333, loop2332_handler
    $P2333."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2333
  loop2332_test:
    unless $P2318, loop2332_done
    shift $P2325, $P2318
  loop2332_redo:
    .const 'Sub' $P2327 = "247_1304277412.809" 
    capture_lex $P2327
    $P2327($P2325)
  loop2332_next:
    goto loop2332_test
  loop2332_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2334, exception, 'type'
    eq $P2334, .CONTROL_LOOP_NEXT, loop2332_next
    eq $P2334, .CONTROL_LOOP_REDO, loop2332_redo
  loop2332_done:
    pop_eh 
  for_undef_1073:
  if_2315_end:
.annotate 'line', 640
    goto if_2306_end
  if_2306:
.annotate 'line', 638
    find_lex $P2309, "$past"
    unless_null $P2309, vivify_1076
    new $P2309, "Undef"
  vivify_1076:
    find_lex $P2310, "$/"
    unless_null $P2310, vivify_1077
    $P2310 = root_new ['parrot';'Hash']
  vivify_1077:
    set $P2311, $P2310["nibbler"]
    unless_null $P2311, vivify_1078
    $P2311 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P2312, $P2311[0]
    unless_null $P2312, vivify_1079
    new $P2312, "Undef"
  vivify_1079:
    $P2313 = $P2312."ast"()
    $P2314 = "buildsub"($P2313)
    $P2309."push"($P2314)
  if_2306_end:
.annotate 'line', 635
    goto if_2278_end
  if_2278:
.annotate 'line', 619
    .const 'Sub' $P2283 = "246_1304277412.809" 
    capture_lex $P2283
    $P2283()
  if_2278_end:
    goto if_2268_end
  if_2268:
.annotate 'line', 616
    find_lex $P2271, "$/"
    unless_null $P2271, vivify_1084
    $P2271 = root_new ['parrot';'Hash']
  vivify_1084:
    set $P2272, $P2271["assertion"]
    unless_null $P2272, vivify_1085
    $P2272 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2273, $P2272[0]
    unless_null $P2273, vivify_1086
    new $P2273, "Undef"
  vivify_1086:
    $P2274 = $P2273."ast"()
    store_lex "$past", $P2274
.annotate 'line', 617
    find_lex $P2275, "self"
    find_lex $P2276, "$past"
    unless_null $P2276, vivify_1087
    new $P2276, "Undef"
  vivify_1087:
    find_lex $P2277, "$name"
    unless_null $P2277, vivify_1088
    new $P2277, "Undef"
  vivify_1088:
    $P2275."subrule_alias"($P2276, $P2277)
  if_2268_end:
.annotate 'line', 644
    find_lex $P2335, "$/"
    find_lex $P2336, "$past"
    unless_null $P2336, vivify_1089
    new $P2336, "Undef"
  vivify_1089:
    $P2337 = $P2335."!make"($P2336)
.annotate 'line', 612
    .return ($P2337)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2326"  :anon :subid("247_1304277412.809") :outer("245_1304277412.809")
    .param pmc param_2328
.annotate 'line', 641
    .lex "$_", param_2328
    find_lex $P2329, "$past"
    unless_null $P2329, vivify_1074
    new $P2329, "Undef"
  vivify_1074:
    find_lex $P2330, "$_"
    unless_null $P2330, vivify_1075
    new $P2330, "Undef"
  vivify_1075:
    $P2331 = $P2329."push"($P2330)
    .return ($P2331)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2282"  :anon :subid("246_1304277412.809") :outer("245_1304277412.809")
.annotate 'line', 620
    new $P2284, "Undef"
    .lex "$rxname", $P2284
.annotate 'line', 621
    new $P2285, "Undef"
    .lex "$regexsym", $P2285
.annotate 'line', 620
    find_lex $P2286, "$?PACKAGE"
    get_who $P2287, $P2286
    set $P2288, $P2287["$REGEXNAME"]
    unless_null $P2288, vivify_1080
    new $P2288, "Undef"
  vivify_1080:
    store_lex "$rxname", $P2288
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2289 = box $S0
            
    store_lex "$regexsym", $P2289
.annotate 'line', 630
    get_hll_global $P2290, "GLOBAL"
    nqp_get_package_through_who $P2291, $P2290, "PAST"
    get_who $P2292, $P2291
    set $P2293, $P2292["Regex"]
.annotate 'line', 631
    get_hll_global $P2294, "GLOBAL"
    nqp_get_package_through_who $P2295, $P2294, "PAST"
    get_who $P2296, $P2295
    set $P2297, $P2296["Regex"]
    find_lex $P2298, "$regexsym"
    unless_null $P2298, vivify_1081
    new $P2298, "Undef"
  vivify_1081:
    $P2299 = $P2297."new"($P2298, "literal" :named("pasttype"))
    find_lex $P2300, "$name"
    unless_null $P2300, vivify_1082
    new $P2300, "Undef"
  vivify_1082:
    find_lex $P2301, "$/"
    unless_null $P2301, vivify_1083
    new $P2301, "Undef"
  vivify_1083:
    $P2302 = $P2293."new"($P2299, $P2300 :named("name"), "subcapture" :named("pasttype"), $P2301 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2302
.annotate 'line', 619
    .return ($P2302)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("248_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2339
    .param pmc param_2340
.annotate 'line', 647
    .const 'Sub' $P2381 = "249_1304277412.809" 
    capture_lex $P2381
    .lex "self", param_2339
    .lex "$/", param_2340
.annotate 'line', 648
    new $P2341, "Undef"
    .lex "$clist", $P2341
.annotate 'line', 649
    new $P2342, "Undef"
    .lex "$past", $P2342
.annotate 'line', 658
    new $P2343, "Undef"
    .lex "$i", $P2343
.annotate 'line', 659
    new $P2344, "Undef"
    .lex "$n", $P2344
.annotate 'line', 648
    find_lex $P2345, "$/"
    unless_null $P2345, vivify_1090
    $P2345 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2346, $P2345["cclass_elem"]
    unless_null $P2346, vivify_1091
    new $P2346, "Undef"
  vivify_1091:
    store_lex "$clist", $P2346
.annotate 'line', 649
    find_lex $P2347, "$clist"
    unless_null $P2347, vivify_1092
    $P2347 = root_new ['parrot';'ResizablePMCArray']
  vivify_1092:
    set $P2348, $P2347[0]
    unless_null $P2348, vivify_1093
    new $P2348, "Undef"
  vivify_1093:
    $P2349 = $P2348."ast"()
    store_lex "$past", $P2349
.annotate 'line', 650
    find_lex $P2353, "$past"
    unless_null $P2353, vivify_1094
    new $P2353, "Undef"
  vivify_1094:
    $P2354 = $P2353."negate"()
    if $P2354, if_2352
    set $P2351, $P2354
    goto if_2352_end
  if_2352:
    find_lex $P2355, "$past"
    unless_null $P2355, vivify_1095
    new $P2355, "Undef"
  vivify_1095:
    $S2356 = $P2355."pasttype"()
    iseq $I2357, $S2356, "subrule"
    new $P2351, 'Integer'
    set $P2351, $I2357
  if_2352_end:
    unless $P2351, if_2350_end
.annotate 'line', 651
    find_lex $P2358, "$past"
    unless_null $P2358, vivify_1096
    new $P2358, "Undef"
  vivify_1096:
    $P2358."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2359, "GLOBAL"
    nqp_get_package_through_who $P2360, $P2359, "PAST"
    get_who $P2361, $P2360
    set $P2362, $P2361["Regex"]
    find_lex $P2363, "$past"
    unless_null $P2363, vivify_1097
    new $P2363, "Undef"
  vivify_1097:
.annotate 'line', 654
    get_hll_global $P2364, "GLOBAL"
    nqp_get_package_through_who $P2365, $P2364, "PAST"
    get_who $P2366, $P2365
    set $P2367, $P2366["Regex"]
    $P2368 = $P2367."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2369, "$/"
    unless_null $P2369, vivify_1098
    new $P2369, "Undef"
  vivify_1098:
    $P2370 = $P2362."new"($P2363, $P2368, $P2369 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2370
  if_2350_end:
.annotate 'line', 658
    new $P2371, "Integer"
    assign $P2371, 1
    store_lex "$i", $P2371
.annotate 'line', 659
    find_lex $P2372, "$clist"
    unless_null $P2372, vivify_1099
    new $P2372, "Undef"
  vivify_1099:
    set $N2373, $P2372
    new $P2374, 'Float'
    set $P2374, $N2373
    store_lex "$n", $P2374
.annotate 'line', 660
    new $P2411, 'ExceptionHandler'
    set_label $P2411, loop2410_handler
    $P2411."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2411
  loop2410_test:
    find_lex $P2375, "$i"
    unless_null $P2375, vivify_1100
    new $P2375, "Undef"
  vivify_1100:
    set $N2376, $P2375
    find_lex $P2377, "$n"
    unless_null $P2377, vivify_1101
    new $P2377, "Undef"
  vivify_1101:
    set $N2378, $P2377
    islt $I2379, $N2376, $N2378
    unless $I2379, loop2410_done
  loop2410_redo:
    .const 'Sub' $P2381 = "249_1304277412.809" 
    capture_lex $P2381
    $P2381()
  loop2410_next:
    goto loop2410_test
  loop2410_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2412, exception, 'type'
    eq $P2412, .CONTROL_LOOP_NEXT, loop2410_next
    eq $P2412, .CONTROL_LOOP_REDO, loop2410_redo
  loop2410_done:
    pop_eh 
.annotate 'line', 671
    find_lex $P2413, "$/"
    find_lex $P2414, "$past"
    unless_null $P2414, vivify_1114
    new $P2414, "Undef"
  vivify_1114:
    $P2415 = $P2413."!make"($P2414)
.annotate 'line', 647
    .return ($P2415)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2380"  :anon :subid("249_1304277412.809") :outer("248_1304277412.809")
.annotate 'line', 661
    new $P2382, "Undef"
    .lex "$ast", $P2382
    find_lex $P2383, "$i"
    unless_null $P2383, vivify_1102
    new $P2383, "Undef"
  vivify_1102:
    set $I2384, $P2383
    find_lex $P2385, "$clist"
    unless_null $P2385, vivify_1103
    $P2385 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $P2386, $P2385[$I2384]
    unless_null $P2386, vivify_1104
    new $P2386, "Undef"
  vivify_1104:
    $P2387 = $P2386."ast"()
    store_lex "$ast", $P2387
.annotate 'line', 662
    find_lex $P2389, "$ast"
    unless_null $P2389, vivify_1105
    new $P2389, "Undef"
  vivify_1105:
    $P2390 = $P2389."negate"()
    if $P2390, if_2388
.annotate 'line', 667
    get_hll_global $P2400, "GLOBAL"
    nqp_get_package_through_who $P2401, $P2400, "PAST"
    get_who $P2402, $P2401
    set $P2403, $P2402["Regex"]
    find_lex $P2404, "$past"
    unless_null $P2404, vivify_1106
    new $P2404, "Undef"
  vivify_1106:
    find_lex $P2405, "$ast"
    unless_null $P2405, vivify_1107
    new $P2405, "Undef"
  vivify_1107:
    find_lex $P2406, "$/"
    unless_null $P2406, vivify_1108
    new $P2406, "Undef"
  vivify_1108:
    $P2407 = $P2403."new"($P2404, $P2405, "alt" :named("pasttype"), $P2406 :named("node"))
    store_lex "$past", $P2407
.annotate 'line', 666
    goto if_2388_end
  if_2388:
.annotate 'line', 663
    find_lex $P2391, "$ast"
    unless_null $P2391, vivify_1109
    new $P2391, "Undef"
  vivify_1109:
    $P2391."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2392, "GLOBAL"
    nqp_get_package_through_who $P2393, $P2392, "PAST"
    get_who $P2394, $P2393
    set $P2395, $P2394["Regex"]
    find_lex $P2396, "$ast"
    unless_null $P2396, vivify_1110
    new $P2396, "Undef"
  vivify_1110:
    find_lex $P2397, "$past"
    unless_null $P2397, vivify_1111
    new $P2397, "Undef"
  vivify_1111:
    find_lex $P2398, "$/"
    unless_null $P2398, vivify_1112
    new $P2398, "Undef"
  vivify_1112:
    $P2399 = $P2395."new"($P2396, $P2397, "concat" :named("pasttype"), $P2398 :named("node"))
    store_lex "$past", $P2399
  if_2388_end:
.annotate 'line', 669
    find_lex $P2408, "$i"
    unless_null $P2408, vivify_1113
    new $P2408, "Undef"
  vivify_1113:
    add $P2409, $P2408, 1
    store_lex "$i", $P2409
.annotate 'line', 660
    .return ($P2409)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("250_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2417
    .param pmc param_2418
.annotate 'line', 674
    .const 'Sub' $P2446 = "252_1304277412.809" 
    capture_lex $P2446
    .const 'Sub' $P2427 = "251_1304277412.809" 
    capture_lex $P2427
    .lex "self", param_2417
    .lex "$/", param_2418
.annotate 'line', 675
    new $P2419, "Undef"
    .lex "$str", $P2419
.annotate 'line', 676
    new $P2420, "Undef"
    .lex "$past", $P2420
.annotate 'line', 675
    new $P2421, "String"
    assign $P2421, ""
    store_lex "$str", $P2421
    find_lex $P2422, "$past"
    unless_null $P2422, vivify_1115
    new $P2422, "Undef"
  vivify_1115:
.annotate 'line', 677
    find_lex $P2424, "$/"
    unless_null $P2424, vivify_1116
    $P2424 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P2425, $P2424["name"]
    unless_null $P2425, vivify_1117
    new $P2425, "Undef"
  vivify_1117:
    if $P2425, if_2423
.annotate 'line', 681
    find_lex $P2441, "$/"
    unless_null $P2441, vivify_1118
    $P2441 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P2442, $P2441["charspec"]
    unless_null $P2442, vivify_1119
    new $P2442, "Undef"
  vivify_1119:
    defined $I2443, $P2442
    unless $I2443, for_undef_1120
    iter $P2440, $P2442
    new $P2472, 'ExceptionHandler'
    set_label $P2472, loop2471_handler
    $P2472."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2472
  loop2471_test:
    unless $P2440, loop2471_done
    shift $P2444, $P2440
  loop2471_redo:
    .const 'Sub' $P2446 = "252_1304277412.809" 
    capture_lex $P2446
    $P2446($P2444)
  loop2471_next:
    goto loop2471_test
  loop2471_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2473, exception, 'type'
    eq $P2473, .CONTROL_LOOP_NEXT, loop2471_next
    eq $P2473, .CONTROL_LOOP_REDO, loop2471_redo
  loop2471_done:
    pop_eh 
  for_undef_1120:
.annotate 'line', 706
    get_hll_global $P2474, "GLOBAL"
    nqp_get_package_through_who $P2475, $P2474, "PAST"
    get_who $P2476, $P2475
    set $P2477, $P2476["Regex"]
    find_lex $P2478, "$str"
    unless_null $P2478, vivify_1133
    new $P2478, "Undef"
  vivify_1133:
    find_lex $P2479, "$/"
    unless_null $P2479, vivify_1134
    new $P2479, "Undef"
  vivify_1134:
    $P2480 = $P2477."new"($P2478, "enumcharlist" :named("pasttype"), $P2479 :named("node"))
    store_lex "$past", $P2480
.annotate 'line', 680
    goto if_2423_end
  if_2423:
.annotate 'line', 677
    .const 'Sub' $P2427 = "251_1304277412.809" 
    capture_lex $P2427
    $P2427()
  if_2423_end:
.annotate 'line', 708
    find_lex $P2481, "$past"
    unless_null $P2481, vivify_1139
    new $P2481, "Undef"
  vivify_1139:
    find_lex $P2482, "$/"
    unless_null $P2482, vivify_1140
    $P2482 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P2483, $P2482["sign"]
    unless_null $P2483, vivify_1141
    new $P2483, "Undef"
  vivify_1141:
    set $S2484, $P2483
    iseq $I2485, $S2484, "-"
    $P2481."negate"($I2485)
.annotate 'line', 709
    find_lex $P2486, "$/"
    find_lex $P2487, "$past"
    unless_null $P2487, vivify_1142
    new $P2487, "Undef"
  vivify_1142:
    $P2488 = $P2486."!make"($P2487)
.annotate 'line', 674
    .return ($P2488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2445"  :anon :subid("252_1304277412.809") :outer("250_1304277412.809")
    .param pmc param_2447
.annotate 'line', 681
    .const 'Sub' $P2453 = "253_1304277412.809" 
    capture_lex $P2453
    .lex "$_", param_2447
.annotate 'line', 682
    find_lex $P2450, "$_"
    unless_null $P2450, vivify_1121
    $P2450 = root_new ['parrot';'ResizablePMCArray']
  vivify_1121:
    set $P2451, $P2450[1]
    unless_null $P2451, vivify_1122
    new $P2451, "Undef"
  vivify_1122:
    if $P2451, if_2449
.annotate 'line', 704
    find_lex $P2467, "$str"
    unless_null $P2467, vivify_1123
    new $P2467, "Undef"
  vivify_1123:
    find_lex $P2468, "$_"
    unless_null $P2468, vivify_1124
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_1124:
    set $P2469, $P2468[0]
    unless_null $P2469, vivify_1125
    new $P2469, "Undef"
  vivify_1125:
    concat $P2470, $P2467, $P2469
    store_lex "$str", $P2470
    set $P2448, $P2470
.annotate 'line', 682
    goto if_2449_end
  if_2449:
    .const 'Sub' $P2453 = "253_1304277412.809" 
    capture_lex $P2453
    $P2466 = $P2453()
    set $P2448, $P2466
  if_2449_end:
.annotate 'line', 681
    .return ($P2448)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2452"  :anon :subid("253_1304277412.809") :outer("252_1304277412.809")
.annotate 'line', 683
    new $P2454, "Undef"
    .lex "$a", $P2454
.annotate 'line', 684
    new $P2455, "Undef"
    .lex "$b", $P2455
.annotate 'line', 685
    new $P2456, "Undef"
    .lex "$c", $P2456
.annotate 'line', 683
    find_lex $P2457, "$_"
    unless_null $P2457, vivify_1126
    $P2457 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2458, $P2457[0]
    unless_null $P2458, vivify_1127
    new $P2458, "Undef"
  vivify_1127:
    store_lex "$a", $P2458
.annotate 'line', 684
    find_lex $P2459, "$_"
    unless_null $P2459, vivify_1128
    $P2459 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2460, $P2459[1]
    unless_null $P2460, vivify_1129
    $P2460 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P2461, $P2460[0]
    unless_null $P2461, vivify_1130
    new $P2461, "Undef"
  vivify_1130:
    store_lex "$b", $P2461
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
                                 $P2462 = box $S2
                             
    store_lex "$c", $P2462
.annotate 'line', 702
    find_lex $P2463, "$str"
    unless_null $P2463, vivify_1131
    new $P2463, "Undef"
  vivify_1131:
    find_lex $P2464, "$c"
    unless_null $P2464, vivify_1132
    new $P2464, "Undef"
  vivify_1132:
    concat $P2465, $P2463, $P2464
    store_lex "$str", $P2465
.annotate 'line', 682
    .return ($P2465)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2426"  :anon :subid("251_1304277412.809") :outer("250_1304277412.809")
.annotate 'line', 678
    new $P2428, "Undef"
    .lex "$name", $P2428
    find_lex $P2429, "$/"
    unless_null $P2429, vivify_1135
    $P2429 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P2430, $P2429["name"]
    unless_null $P2430, vivify_1136
    new $P2430, "Undef"
  vivify_1136:
    set $S2431, $P2430
    new $P2432, 'String'
    set $P2432, $S2431
    store_lex "$name", $P2432
.annotate 'line', 679
    get_hll_global $P2433, "GLOBAL"
    nqp_get_package_through_who $P2434, $P2433, "PAST"
    get_who $P2435, $P2434
    set $P2436, $P2435["Regex"]
    find_lex $P2437, "$name"
    unless_null $P2437, vivify_1137
    new $P2437, "Undef"
  vivify_1137:
    find_lex $P2438, "$/"
    unless_null $P2438, vivify_1138
    new $P2438, "Undef"
  vivify_1138:
    $P2439 = $P2436."new"($P2437, "subrule" :named("pasttype"), "method" :named("subtype"), $P2438 :named("node"))
    store_lex "$past", $P2439
.annotate 'line', 677
    .return ($P2439)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("254_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2490
    .param pmc param_2491
.annotate 'line', 712
    .lex "self", param_2490
    .lex "$/", param_2491
.annotate 'line', 713
    $P2492 = root_new ['parrot';'Hash']
    .lex "%mods", $P2492
.annotate 'line', 714
    new $P2493, "Undef"
    .lex "$n", $P2493
.annotate 'line', 713
    find_lex $P2494, "$?PACKAGE"
    get_who $P2495, $P2494
    set $P2496, $P2495["@MODIFIERS"]
    unless_null $P2496, vivify_1143
    $P2496 = root_new ['parrot';'ResizablePMCArray']
  vivify_1143:
    set $P2497, $P2496[0]
    unless_null $P2497, vivify_1144
    new $P2497, "Undef"
  vivify_1144:
    store_lex "%mods", $P2497
.annotate 'line', 714
    find_lex $P2500, "$/"
    unless_null $P2500, vivify_1145
    $P2500 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P2501, $P2500["n"]
    unless_null $P2501, vivify_1146
    $P2501 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
    set $P2502, $P2501[0]
    unless_null $P2502, vivify_1147
    new $P2502, "Undef"
  vivify_1147:
    set $S2503, $P2502
    isgt $I2504, $S2503, ""
    if $I2504, if_2499
    new $P2509, "Integer"
    assign $P2509, 1
    set $P2498, $P2509
    goto if_2499_end
  if_2499:
    find_lex $P2505, "$/"
    unless_null $P2505, vivify_1148
    $P2505 = root_new ['parrot';'Hash']
  vivify_1148:
    set $P2506, $P2505["n"]
    unless_null $P2506, vivify_1149
    $P2506 = root_new ['parrot';'ResizablePMCArray']
  vivify_1149:
    set $P2507, $P2506[0]
    unless_null $P2507, vivify_1150
    new $P2507, "Undef"
  vivify_1150:
    set $N2508, $P2507
    new $P2498, 'Float'
    set $P2498, $N2508
  if_2499_end:
    store_lex "$n", $P2498
.annotate 'line', 715
    find_lex $P2510, "$n"
    unless_null $P2510, vivify_1151
    new $P2510, "Undef"
  vivify_1151:
    find_lex $P2511, "$/"
    unless_null $P2511, vivify_1152
    $P2511 = root_new ['parrot';'Hash']
  vivify_1152:
    set $P2512, $P2511["mod_ident"]
    unless_null $P2512, vivify_1153
    $P2512 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2513, $P2512["sym"]
    unless_null $P2513, vivify_1154
    new $P2513, "Undef"
  vivify_1154:
    set $S2514, $P2513
    find_lex $P2515, "%mods"
    unless_null $P2515, vivify_1155
    $P2515 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2515
  vivify_1155:
    set $P2515[$S2514], $P2510
.annotate 'line', 716
    find_lex $P2516, "$/"
    $P2517 = $P2516."!make"(0)
.annotate 'line', 712
    .return ($P2517)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("255_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2522
    .param pmc param_2523
    .param pmc param_2524
.annotate 'line', 810
    .lex "self", param_2522
    .lex "$past", param_2523
    .lex "$name", param_2524
.annotate 'line', 811
    find_lex $P2526, "$past"
    unless_null $P2526, vivify_1156
    new $P2526, "Undef"
  vivify_1156:
    $S2527 = $P2526."name"()
    isgt $I2528, $S2527, ""
    if $I2528, if_2525
.annotate 'line', 812
    find_lex $P2535, "$past"
    unless_null $P2535, vivify_1157
    new $P2535, "Undef"
  vivify_1157:
    find_lex $P2536, "$name"
    unless_null $P2536, vivify_1158
    new $P2536, "Undef"
  vivify_1158:
    $P2535."name"($P2536)
    goto if_2525_end
  if_2525:
.annotate 'line', 811
    find_lex $P2529, "$past"
    unless_null $P2529, vivify_1159
    new $P2529, "Undef"
  vivify_1159:
    find_lex $P2530, "$name"
    unless_null $P2530, vivify_1160
    new $P2530, "Undef"
  vivify_1160:
    concat $P2531, $P2530, "="
    find_lex $P2532, "$past"
    unless_null $P2532, vivify_1161
    new $P2532, "Undef"
  vivify_1161:
    $S2533 = $P2532."name"()
    concat $P2534, $P2531, $S2533
    $P2529."name"($P2534)
  if_2525_end:
.annotate 'line', 813
    find_lex $P2537, "$past"
    unless_null $P2537, vivify_1162
    new $P2537, "Undef"
  vivify_1162:
    $P2538 = $P2537."subtype"("capture")
.annotate 'line', 810
    .return ($P2538)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("256_1304277412.809") :outer("175_1304277412.809")
    .param pmc param_2540
    .param pmc param_2541
.annotate 'line', 816
    .lex "self", param_2540
    .lex "$/", param_2541
.annotate 'line', 817
    new $P2542, "Undef"
    .lex "$name", $P2542
.annotate 'line', 818
    new $P2543, "Undef"
    .lex "$past", $P2543
.annotate 'line', 817
    find_lex $P2544, "$/"
    unless_null $P2544, vivify_1163
    $P2544 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2545, $P2544["longname"]
    unless_null $P2545, vivify_1164
    new $P2545, "Undef"
  vivify_1164:
    set $S2546, $P2545
    new $P2547, 'String'
    set $P2547, $S2546
    store_lex "$name", $P2547
.annotate 'line', 818
    get_hll_global $P2548, "GLOBAL"
    nqp_get_package_through_who $P2549, $P2548, "PAST"
    get_who $P2550, $P2549
    set $P2551, $P2550["Regex"]
    find_lex $P2552, "$name"
    unless_null $P2552, vivify_1165
    new $P2552, "Undef"
  vivify_1165:
    find_lex $P2553, "$name"
    unless_null $P2553, vivify_1166
    new $P2553, "Undef"
  vivify_1166:
    find_lex $P2554, "$/"
    unless_null $P2554, vivify_1167
    new $P2554, "Undef"
  vivify_1167:
    $P2555 = $P2551."new"($P2552, $P2553 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2554 :named("node"))
    store_lex "$past", $P2555
    find_lex $P2556, "$past"
    unless_null $P2556, vivify_1168
    new $P2556, "Undef"
  vivify_1168:
.annotate 'line', 816
    .return ($P2556)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2563"  :subid("258_1304277412.809") :outer("10_1304277412.809")
.annotate 'line', 825
    .const 'Sub' $P2568 = "259_1304277412.809" 
    capture_lex $P2568
    .lex "$?PACKAGE", $P2565
    .lex "$?CLASS", $P2566
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1169") :outer("258_1304277412.809")
.annotate 'line', 825
    .const 'Sub' $P2564 = "258_1304277412.809" 
    .local pmc block
    set block, $P2564
    .const 'Sub' $P2568 = "259_1304277412.809" 
    capture_lex $P2568
    $P2568()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2567"  :anon :subid("259_1304277412.809") :outer("258_1304277412.809")
.annotate 'line', 825
    nqp_get_sc_object $P2569, "1304277407.992", 133
    .local pmc type_obj
    set type_obj, $P2569
    get_how $P2570, type_obj
    $P2571 = $P2570."compose"(type_obj)
    .return ($P2571)
.end


.HLL "nqp"

.namespace []
.sub "_block2598" :load :anon :subid("260_1304277412.809")
.annotate 'line', 1
    .const 'Sub' $P2600 = "10_1304277412.809" 
    $P2601 = $P2600()
    .return ($P2601)
.end

