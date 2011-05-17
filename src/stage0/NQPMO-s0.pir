
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1305640904.321")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2449 = "170_1305640904.321" 
    capture_lex $P2449
    .const 'Sub' $P2386 = "161_1305640904.321" 
    capture_lex $P2386
    .const 'Sub' $P2202 = "147_1305640904.321" 
    capture_lex $P2202
    .const 'Sub' $P2140 = "138_1305640904.321" 
    capture_lex $P2140
    .const 'Sub' $P1040 = "77_1305640904.321" 
    capture_lex $P1040
    .const 'Sub' $P722 = "52_1305640904.321" 
    capture_lex $P722
    .const 'Sub' $P509 = "42_1305640904.321" 
    capture_lex $P509
    .const 'Sub' $P249 = "21_1305640904.321" 
    capture_lex $P249
    .const 'Sub' $P26 = "11_1305640904.321" 
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
    .const 'Sub' $P26 = "11_1305640904.321" 
    capture_lex $P26
    $P26()
.annotate 'line', 99
    .const 'Sub' $P249 = "21_1305640904.321" 
    capture_lex $P249
    $P249()
.annotate 'line', 244
    .const 'Sub' $P509 = "42_1305640904.321" 
    capture_lex $P509
    $P509()
.annotate 'line', 320
    .const 'Sub' $P722 = "52_1305640904.321" 
    capture_lex $P722
    $P722()
.annotate 'line', 500
    .const 'Sub' $P1040 = "77_1305640904.321" 
    capture_lex $P1040
    $P1040()
.annotate 'line', 974
    .const 'Sub' $P2140 = "138_1305640904.321" 
    capture_lex $P2140
    $P2140()
.annotate 'line', 1020
    .const 'Sub' $P2202 = "147_1305640904.321" 
    capture_lex $P2202
    $P2202()
.annotate 'line', 1091
    .const 'Sub' $P2386 = "161_1305640904.321" 
    capture_lex $P2386
    $P2386()
.annotate 'line', 1140
    .const 'Sub' $P2449 = "170_1305640904.321" 
    capture_lex $P2449
    $P2449()
    find_lex $P2478, "@ARGS"
    if $P2478, if_2477
    set $P2476, $P2478
    goto if_2477_end
  if_2477:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2479, "ModuleLoader"
    getinterp $P2480
    set $P2481, $P2480["context"]
    $P2482 = $P2479."set_mainline_module"($P2481)
    set $P2476, $P2482
  if_2477_end:
.annotate 'line', 1
    .return ($P2476)
    .const 'Sub' $P2484 = "171_1305640904.321" 
    .return ($P2484)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post172") :outer("10_1305640904.321")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1305640904.321" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2488, "1305640898.961"
    isnull $I2489, $P2488
    if $I2489, if_2487
    .const 'Sub' $P3247 = "10_1305640904.321" 
    $P3248 = $P3247."get_lexinfo"()
    nqp_get_sc_object $P3249, "1305640898.961", 0
    $P3248."set_static_lexpad_value"("GLOBALish", $P3249)
    .const 'Sub' $P3250 = "10_1305640904.321" 
    $P3251 = $P3250."get_lexinfo"()
    $P3251."finish_static_lexpad"()
    .const 'Sub' $P3252 = "10_1305640904.321" 
    $P3253 = $P3252."get_lexinfo"()
    nqp_get_sc_object $P3254, "1305640898.961", 0
    $P3253."set_static_lexpad_value"("$?PACKAGE", $P3254)
    .const 'Sub' $P3255 = "10_1305640904.321" 
    $P3256 = $P3255."get_lexinfo"()
    $P3256."finish_static_lexpad"()
    .const 'Sub' $P3257 = "10_1305640904.321" 
    $P3258 = $P3257."get_lexinfo"()
    nqp_get_sc_object $P3259, "1305640898.961", 1
    $P3258."set_static_lexpad_value"("RoleToRoleApplier", $P3259)
    .const 'Sub' $P3260 = "10_1305640904.321" 
    $P3261 = $P3260."get_lexinfo"()
    $P3261."finish_static_lexpad"()
    nqp_get_sc_object $P3262, "1305640898.961", 2
    .const 'Sub' $P3263 = "12_1305640904.321" 
    assign $P3262, $P3263
    .const 'Sub' $P3264 = "11_1305640904.321" 
    $P3265 = $P3264."get_lexinfo"()
    nqp_get_sc_object $P3266, "1305640898.961", 1
    $P3265."set_static_lexpad_value"("$?PACKAGE", $P3266)
    .const 'Sub' $P3267 = "11_1305640904.321" 
    $P3268 = $P3267."get_lexinfo"()
    $P3268."finish_static_lexpad"()
    .const 'Sub' $P3269 = "11_1305640904.321" 
    $P3270 = $P3269."get_lexinfo"()
    nqp_get_sc_object $P3271, "1305640898.961", 1
    $P3270."set_static_lexpad_value"("$?CLASS", $P3271)
    .const 'Sub' $P3272 = "11_1305640904.321" 
    $P3273 = $P3272."get_lexinfo"()
    $P3273."finish_static_lexpad"()
    .const 'Sub' $P3274 = "10_1305640904.321" 
    $P3275 = $P3274."get_lexinfo"()
    nqp_get_sc_object $P3276, "1305640898.961", 3
    $P3275."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3276)
    .const 'Sub' $P3277 = "10_1305640904.321" 
    $P3278 = $P3277."get_lexinfo"()
    $P3278."finish_static_lexpad"()
    nqp_get_sc_object $P3279, "1305640898.961", 4
    .const 'Sub' $P3280 = "22_1305640904.321" 
    assign $P3279, $P3280
    nqp_get_sc_object $P3281, "1305640898.961", 5
    .const 'Sub' $P3282 = "23_1305640904.321" 
    assign $P3281, $P3282
    nqp_get_sc_object $P3283, "1305640898.961", 6
    .const 'Sub' $P3284 = "24_1305640904.321" 
    assign $P3283, $P3284
    nqp_get_sc_object $P3285, "1305640898.961", 7
    .const 'Sub' $P3286 = "25_1305640904.321" 
    assign $P3285, $P3286
    nqp_get_sc_object $P3287, "1305640898.961", 8
    .const 'Sub' $P3288 = "26_1305640904.321" 
    assign $P3287, $P3288
    nqp_get_sc_object $P3289, "1305640898.961", 9
    .const 'Sub' $P3290 = "27_1305640904.321" 
    assign $P3289, $P3290
    nqp_get_sc_object $P3291, "1305640898.961", 10
    .const 'Sub' $P3292 = "28_1305640904.321" 
    assign $P3291, $P3292
    nqp_get_sc_object $P3293, "1305640898.961", 11
    .const 'Sub' $P3294 = "29_1305640904.321" 
    assign $P3293, $P3294
    nqp_get_sc_object $P3295, "1305640898.961", 12
    .const 'Sub' $P3296 = "30_1305640904.321" 
    assign $P3295, $P3296
    nqp_get_sc_object $P3297, "1305640898.961", 13
    .const 'Sub' $P3298 = "31_1305640904.321" 
    assign $P3297, $P3298
    nqp_get_sc_object $P3299, "1305640898.961", 14
    .const 'Sub' $P3300 = "33_1305640904.321" 
    assign $P3299, $P3300
    nqp_get_sc_object $P3301, "1305640898.961", 15
    .const 'Sub' $P3302 = "35_1305640904.321" 
    assign $P3301, $P3302
    nqp_get_sc_object $P3303, "1305640898.961", 16
    .const 'Sub' $P3304 = "36_1305640904.321" 
    assign $P3303, $P3304
    nqp_get_sc_object $P3305, "1305640898.961", 17
    .const 'Sub' $P3306 = "37_1305640904.321" 
    assign $P3305, $P3306
    nqp_get_sc_object $P3307, "1305640898.961", 18
    .const 'Sub' $P3308 = "38_1305640904.321" 
    assign $P3307, $P3308
    nqp_get_sc_object $P3309, "1305640898.961", 19
    .const 'Sub' $P3310 = "40_1305640904.321" 
    assign $P3309, $P3310
    nqp_get_sc_object $P3311, "1305640898.961", 20
    .const 'Sub' $P3312 = "41_1305640904.321" 
    assign $P3311, $P3312
    .const 'Sub' $P3313 = "21_1305640904.321" 
    $P3314 = $P3313."get_lexinfo"()
    nqp_get_sc_object $P3315, "1305640898.961", 3
    $P3314."set_static_lexpad_value"("$?PACKAGE", $P3315)
    .const 'Sub' $P3316 = "21_1305640904.321" 
    $P3317 = $P3316."get_lexinfo"()
    $P3317."finish_static_lexpad"()
    .const 'Sub' $P3318 = "21_1305640904.321" 
    $P3319 = $P3318."get_lexinfo"()
    nqp_get_sc_object $P3320, "1305640898.961", 3
    $P3319."set_static_lexpad_value"("$?CLASS", $P3320)
    .const 'Sub' $P3321 = "21_1305640904.321" 
    $P3322 = $P3321."get_lexinfo"()
    $P3322."finish_static_lexpad"()
    .const 'Sub' $P3323 = "10_1305640904.321" 
    $P3324 = $P3323."get_lexinfo"()
    nqp_get_sc_object $P3325, "1305640898.961", 21
    $P3324."set_static_lexpad_value"("RoleToClassApplier", $P3325)
    .const 'Sub' $P3326 = "10_1305640904.321" 
    $P3327 = $P3326."get_lexinfo"()
    $P3327."finish_static_lexpad"()
    nqp_get_sc_object $P3328, "1305640898.961", 22
    .const 'Sub' $P3329 = "47_1305640904.321" 
    assign $P3328, $P3329
    .const 'Sub' $P3330 = "42_1305640904.321" 
    $P3331 = $P3330."get_lexinfo"()
    nqp_get_sc_object $P3332, "1305640898.961", 21
    $P3331."set_static_lexpad_value"("$?PACKAGE", $P3332)
    .const 'Sub' $P3333 = "42_1305640904.321" 
    $P3334 = $P3333."get_lexinfo"()
    $P3334."finish_static_lexpad"()
    .const 'Sub' $P3335 = "42_1305640904.321" 
    $P3336 = $P3335."get_lexinfo"()
    nqp_get_sc_object $P3337, "1305640898.961", 21
    $P3336."set_static_lexpad_value"("$?CLASS", $P3337)
    .const 'Sub' $P3338 = "42_1305640904.321" 
    $P3339 = $P3338."get_lexinfo"()
    $P3339."finish_static_lexpad"()
    .const 'Sub' $P3340 = "10_1305640904.321" 
    $P3341 = $P3340."get_lexinfo"()
    nqp_get_sc_object $P3342, "1305640898.961", 23
    $P3341."set_static_lexpad_value"("NQPParametricRoleHOW", $P3342)
    .const 'Sub' $P3343 = "10_1305640904.321" 
    $P3344 = $P3343."get_lexinfo"()
    $P3344."finish_static_lexpad"()
    nqp_get_sc_object $P3345, "1305640898.961", 24
    .const 'Sub' $P3346 = "54_1305640904.321" 
    assign $P3345, $P3346
    nqp_get_sc_object $P3347, "1305640898.961", 25
    .const 'Sub' $P3348 = "55_1305640904.321" 
    assign $P3347, $P3348
    nqp_get_sc_object $P3349, "1305640898.961", 26
    .const 'Sub' $P3350 = "56_1305640904.321" 
    assign $P3349, $P3350
    nqp_get_sc_object $P3351, "1305640898.961", 27
    .const 'Sub' $P3352 = "57_1305640904.321" 
    assign $P3351, $P3352
    nqp_get_sc_object $P3353, "1305640898.961", 28
    .const 'Sub' $P3354 = "58_1305640904.321" 
    assign $P3353, $P3354
    nqp_get_sc_object $P3355, "1305640898.961", 29
    .const 'Sub' $P3356 = "59_1305640904.321" 
    assign $P3355, $P3356
    nqp_get_sc_object $P3357, "1305640898.961", 30
    .const 'Sub' $P3358 = "60_1305640904.321" 
    assign $P3357, $P3358
    nqp_get_sc_object $P3359, "1305640898.961", 31
    .const 'Sub' $P3360 = "61_1305640904.321" 
    assign $P3359, $P3360
    nqp_get_sc_object $P3361, "1305640898.961", 32
    .const 'Sub' $P3362 = "62_1305640904.321" 
    assign $P3361, $P3362
    nqp_get_sc_object $P3363, "1305640898.961", 33
    .const 'Sub' $P3364 = "63_1305640904.321" 
    assign $P3363, $P3364
    nqp_get_sc_object $P3365, "1305640898.961", 34
    .const 'Sub' $P3366 = "64_1305640904.321" 
    assign $P3365, $P3366
    nqp_get_sc_object $P3367, "1305640898.961", 35
    .const 'Sub' $P3368 = "65_1305640904.321" 
    assign $P3367, $P3368
    nqp_get_sc_object $P3369, "1305640898.961", 36
    .const 'Sub' $P3370 = "70_1305640904.321" 
    assign $P3369, $P3370
    nqp_get_sc_object $P3371, "1305640898.961", 37
    .const 'Sub' $P3372 = "72_1305640904.321" 
    assign $P3371, $P3372
    nqp_get_sc_object $P3373, "1305640898.961", 38
    .const 'Sub' $P3374 = "73_1305640904.321" 
    assign $P3373, $P3374
    nqp_get_sc_object $P3375, "1305640898.961", 39
    .const 'Sub' $P3376 = "74_1305640904.321" 
    assign $P3375, $P3376
    nqp_get_sc_object $P3377, "1305640898.961", 40
    .const 'Sub' $P3378 = "76_1305640904.321" 
    assign $P3377, $P3378
    .const 'Sub' $P3379 = "52_1305640904.321" 
    $P3380 = $P3379."get_lexinfo"()
    nqp_get_sc_object $P3381, "1305640898.961", 23
    $P3380."set_static_lexpad_value"("$?PACKAGE", $P3381)
    .const 'Sub' $P3382 = "52_1305640904.321" 
    $P3383 = $P3382."get_lexinfo"()
    $P3383."finish_static_lexpad"()
    .const 'Sub' $P3384 = "52_1305640904.321" 
    $P3385 = $P3384."get_lexinfo"()
    nqp_get_sc_object $P3386, "1305640898.961", 23
    $P3385."set_static_lexpad_value"("$?CLASS", $P3386)
    .const 'Sub' $P3387 = "52_1305640904.321" 
    $P3388 = $P3387."get_lexinfo"()
    $P3388."finish_static_lexpad"()
    .const 'Sub' $P3389 = "10_1305640904.321" 
    $P3390 = $P3389."get_lexinfo"()
    nqp_get_sc_object $P3391, "1305640898.961", 41
    $P3390."set_static_lexpad_value"("NQPClassHOW", $P3391)
    .const 'Sub' $P3392 = "10_1305640904.321" 
    $P3393 = $P3392."get_lexinfo"()
    $P3393."finish_static_lexpad"()
    nqp_get_sc_object $P3394, "1305640898.961", 42
    .const 'Sub' $P3395 = "88_1305640904.321" 
    assign $P3394, $P3395
    nqp_get_sc_object $P3396, "1305640898.961", 43
    .const 'Sub' $P3397 = "89_1305640904.321" 
    assign $P3396, $P3397
    nqp_get_sc_object $P3398, "1305640898.961", 44
    .const 'Sub' $P3399 = "90_1305640904.321" 
    assign $P3398, $P3399
    nqp_get_sc_object $P3400, "1305640898.961", 45
    .const 'Sub' $P3401 = "91_1305640904.321" 
    assign $P3400, $P3401
    nqp_get_sc_object $P3402, "1305640898.961", 46
    .const 'Sub' $P3403 = "92_1305640904.321" 
    assign $P3402, $P3403
    nqp_get_sc_object $P3404, "1305640898.961", 47
    .const 'Sub' $P3405 = "93_1305640904.321" 
    assign $P3404, $P3405
    nqp_get_sc_object $P3406, "1305640898.961", 48
    .const 'Sub' $P3407 = "94_1305640904.321" 
    assign $P3406, $P3407
    nqp_get_sc_object $P3408, "1305640898.961", 49
    .const 'Sub' $P3409 = "96_1305640904.321" 
    assign $P3408, $P3409
    nqp_get_sc_object $P3410, "1305640898.961", 50
    .const 'Sub' $P3411 = "97_1305640904.321" 
    assign $P3410, $P3411
    nqp_get_sc_object $P3412, "1305640898.961", 51
    .const 'Sub' $P3413 = "99_1305640904.321" 
    assign $P3412, $P3413
    nqp_get_sc_object $P3414, "1305640898.961", 52
    .const 'Sub' $P3415 = "100_1305640904.321" 
    assign $P3414, $P3415
    nqp_get_sc_object $P3416, "1305640898.961", 53
    .const 'Sub' $P3417 = "101_1305640904.321" 
    assign $P3416, $P3417
    nqp_get_sc_object $P3418, "1305640898.961", 54
    .const 'Sub' $P3419 = "105_1305640904.321" 
    assign $P3418, $P3419
    nqp_get_sc_object $P3420, "1305640898.961", 55
    .const 'Sub' $P3421 = "110_1305640904.321" 
    assign $P3420, $P3421
    nqp_get_sc_object $P3422, "1305640898.961", 56
    .const 'Sub' $P3423 = "113_1305640904.321" 
    assign $P3422, $P3423
    nqp_get_sc_object $P3424, "1305640898.961", 57
    .const 'Sub' $P3425 = "116_1305640904.321" 
    assign $P3424, $P3425
    nqp_get_sc_object $P3426, "1305640898.961", 58
    .const 'Sub' $P3427 = "119_1305640904.321" 
    assign $P3426, $P3427
    nqp_get_sc_object $P3428, "1305640898.961", 59
    .const 'Sub' $P3429 = "122_1305640904.321" 
    assign $P3428, $P3429
    nqp_get_sc_object $P3430, "1305640898.961", 60
    .const 'Sub' $P3431 = "123_1305640904.321" 
    assign $P3430, $P3431
    nqp_get_sc_object $P3432, "1305640898.961", 61
    .const 'Sub' $P3433 = "124_1305640904.321" 
    assign $P3432, $P3433
    nqp_get_sc_object $P3434, "1305640898.961", 62
    .const 'Sub' $P3435 = "126_1305640904.321" 
    assign $P3434, $P3435
    nqp_get_sc_object $P3436, "1305640898.961", 63
    .const 'Sub' $P3437 = "127_1305640904.321" 
    assign $P3436, $P3437
    nqp_get_sc_object $P3438, "1305640898.961", 64
    .const 'Sub' $P3439 = "128_1305640904.321" 
    assign $P3438, $P3439
    nqp_get_sc_object $P3440, "1305640898.961", 65
    .const 'Sub' $P3441 = "130_1305640904.321" 
    assign $P3440, $P3441
    nqp_get_sc_object $P3442, "1305640898.961", 66
    .const 'Sub' $P3443 = "131_1305640904.321" 
    assign $P3442, $P3443
    nqp_get_sc_object $P3444, "1305640898.961", 67
    .const 'Sub' $P3445 = "132_1305640904.321" 
    assign $P3444, $P3445
    nqp_get_sc_object $P3446, "1305640898.961", 68
    .const 'Sub' $P3447 = "133_1305640904.321" 
    assign $P3446, $P3447
    nqp_get_sc_object $P3448, "1305640898.961", 69
    .const 'Sub' $P3449 = "134_1305640904.321" 
    assign $P3448, $P3449
    nqp_get_sc_object $P3450, "1305640898.961", 70
    .const 'Sub' $P3451 = "136_1305640904.321" 
    assign $P3450, $P3451
    .const 'Sub' $P3452 = "77_1305640904.321" 
    $P3453 = $P3452."get_lexinfo"()
    nqp_get_sc_object $P3454, "1305640898.961", 41
    $P3453."set_static_lexpad_value"("$?PACKAGE", $P3454)
    .const 'Sub' $P3455 = "77_1305640904.321" 
    $P3456 = $P3455."get_lexinfo"()
    $P3456."finish_static_lexpad"()
    .const 'Sub' $P3457 = "77_1305640904.321" 
    $P3458 = $P3457."get_lexinfo"()
    nqp_get_sc_object $P3459, "1305640898.961", 41
    $P3458."set_static_lexpad_value"("$?CLASS", $P3459)
    .const 'Sub' $P3460 = "77_1305640904.321" 
    $P3461 = $P3460."get_lexinfo"()
    $P3461."finish_static_lexpad"()
    .const 'Sub' $P3462 = "10_1305640904.321" 
    $P3463 = $P3462."get_lexinfo"()
    nqp_get_sc_object $P3464, "1305640898.961", 71
    $P3463."set_static_lexpad_value"("NQPNativeHOW", $P3464)
    .const 'Sub' $P3465 = "10_1305640904.321" 
    $P3466 = $P3465."get_lexinfo"()
    $P3466."finish_static_lexpad"()
    nqp_get_sc_object $P3467, "1305640898.961", 72
    .const 'Sub' $P3468 = "139_1305640904.321" 
    assign $P3467, $P3468
    nqp_get_sc_object $P3469, "1305640898.961", 73
    .const 'Sub' $P3470 = "140_1305640904.321" 
    assign $P3469, $P3470
    nqp_get_sc_object $P3471, "1305640898.961", 74
    .const 'Sub' $P3472 = "141_1305640904.321" 
    assign $P3471, $P3472
    nqp_get_sc_object $P3473, "1305640898.961", 75
    .const 'Sub' $P3474 = "142_1305640904.321" 
    assign $P3473, $P3474
    nqp_get_sc_object $P3475, "1305640898.961", 76
    .const 'Sub' $P3476 = "143_1305640904.321" 
    assign $P3475, $P3476
    nqp_get_sc_object $P3477, "1305640898.961", 77
    .const 'Sub' $P3478 = "144_1305640904.321" 
    assign $P3477, $P3478
    nqp_get_sc_object $P3479, "1305640898.961", 78
    .const 'Sub' $P3480 = "145_1305640904.321" 
    assign $P3479, $P3480
    nqp_get_sc_object $P3481, "1305640898.961", 79
    .const 'Sub' $P3482 = "146_1305640904.321" 
    assign $P3481, $P3482
    .const 'Sub' $P3483 = "138_1305640904.321" 
    $P3484 = $P3483."get_lexinfo"()
    nqp_get_sc_object $P3485, "1305640898.961", 71
    $P3484."set_static_lexpad_value"("$?PACKAGE", $P3485)
    .const 'Sub' $P3486 = "138_1305640904.321" 
    $P3487 = $P3486."get_lexinfo"()
    $P3487."finish_static_lexpad"()
    .const 'Sub' $P3488 = "138_1305640904.321" 
    $P3489 = $P3488."get_lexinfo"()
    nqp_get_sc_object $P3490, "1305640898.961", 71
    $P3489."set_static_lexpad_value"("$?CLASS", $P3490)
    .const 'Sub' $P3491 = "138_1305640904.321" 
    $P3492 = $P3491."get_lexinfo"()
    $P3492."finish_static_lexpad"()
    .const 'Sub' $P3493 = "10_1305640904.321" 
    $P3494 = $P3493."get_lexinfo"()
    nqp_get_sc_object $P3495, "1305640898.961", 80
    $P3494."set_static_lexpad_value"("NQPAttribute", $P3495)
    .const 'Sub' $P3496 = "10_1305640904.321" 
    $P3497 = $P3496."get_lexinfo"()
    $P3497."finish_static_lexpad"()
    nqp_get_sc_object $P3498, "1305640898.961", 81
    .const 'Sub' $P3499 = "150_1305640904.321" 
    assign $P3498, $P3499
    nqp_get_sc_object $P3500, "1305640898.961", 82
    .const 'Sub' $P3501 = "151_1305640904.321" 
    assign $P3500, $P3501
    nqp_get_sc_object $P3502, "1305640898.961", 83
    .const 'Sub' $P3503 = "152_1305640904.321" 
    assign $P3502, $P3503
    nqp_get_sc_object $P3504, "1305640898.961", 84
    .const 'Sub' $P3505 = "153_1305640904.321" 
    assign $P3504, $P3505
    nqp_get_sc_object $P3506, "1305640898.961", 85
    .const 'Sub' $P3507 = "154_1305640904.321" 
    assign $P3506, $P3507
    nqp_get_sc_object $P3508, "1305640898.961", 86
    .const 'Sub' $P3509 = "155_1305640904.321" 
    assign $P3508, $P3509
    nqp_get_sc_object $P3510, "1305640898.961", 87
    .const 'Sub' $P3511 = "160_1305640904.321" 
    assign $P3510, $P3511
    .const 'Sub' $P3512 = "147_1305640904.321" 
    $P3513 = $P3512."get_lexinfo"()
    nqp_get_sc_object $P3514, "1305640898.961", 80
    $P3513."set_static_lexpad_value"("$?PACKAGE", $P3514)
    .const 'Sub' $P3515 = "147_1305640904.321" 
    $P3516 = $P3515."get_lexinfo"()
    $P3516."finish_static_lexpad"()
    .const 'Sub' $P3517 = "147_1305640904.321" 
    $P3518 = $P3517."get_lexinfo"()
    nqp_get_sc_object $P3519, "1305640898.961", 80
    $P3518."set_static_lexpad_value"("$?CLASS", $P3519)
    .const 'Sub' $P3520 = "147_1305640904.321" 
    $P3521 = $P3520."get_lexinfo"()
    $P3521."finish_static_lexpad"()
    .const 'Sub' $P3522 = "10_1305640904.321" 
    $P3523 = $P3522."get_lexinfo"()
    nqp_get_sc_object $P3524, "1305640898.961", 88
    $P3523."set_static_lexpad_value"("NQPModuleHOW", $P3524)
    .const 'Sub' $P3525 = "10_1305640904.321" 
    $P3526 = $P3525."get_lexinfo"()
    $P3526."finish_static_lexpad"()
    nqp_get_sc_object $P3527, "1305640898.961", 89
    .const 'Sub' $P3528 = "162_1305640904.321" 
    assign $P3527, $P3528
    nqp_get_sc_object $P3529, "1305640898.961", 90
    .const 'Sub' $P3530 = "163_1305640904.321" 
    assign $P3529, $P3530
    nqp_get_sc_object $P3531, "1305640898.961", 91
    .const 'Sub' $P3532 = "164_1305640904.321" 
    assign $P3531, $P3532
    nqp_get_sc_object $P3533, "1305640898.961", 92
    .const 'Sub' $P3534 = "165_1305640904.321" 
    assign $P3533, $P3534
    nqp_get_sc_object $P3535, "1305640898.961", 93
    .const 'Sub' $P3536 = "166_1305640904.321" 
    assign $P3535, $P3536
    nqp_get_sc_object $P3537, "1305640898.961", 94
    .const 'Sub' $P3538 = "167_1305640904.321" 
    assign $P3537, $P3538
    nqp_get_sc_object $P3539, "1305640898.961", 95
    .const 'Sub' $P3540 = "168_1305640904.321" 
    assign $P3539, $P3540
    nqp_get_sc_object $P3541, "1305640898.961", 96
    .const 'Sub' $P3542 = "169_1305640904.321" 
    assign $P3541, $P3542
    .const 'Sub' $P3543 = "161_1305640904.321" 
    $P3544 = $P3543."get_lexinfo"()
    nqp_get_sc_object $P3545, "1305640898.961", 88
    $P3544."set_static_lexpad_value"("$?PACKAGE", $P3545)
    .const 'Sub' $P3546 = "161_1305640904.321" 
    $P3547 = $P3546."get_lexinfo"()
    $P3547."finish_static_lexpad"()
    .const 'Sub' $P3548 = "161_1305640904.321" 
    $P3549 = $P3548."get_lexinfo"()
    nqp_get_sc_object $P3550, "1305640898.961", 88
    $P3549."set_static_lexpad_value"("$?CLASS", $P3550)
    .const 'Sub' $P3551 = "161_1305640904.321" 
    $P3552 = $P3551."get_lexinfo"()
    $P3552."finish_static_lexpad"()
    .const 'Sub' $P3553 = "10_1305640904.321" 
    $P3554 = $P3553."get_lexinfo"()
    nqp_get_sc_object $P3555, "1305640898.961", 97
    $P3554."set_static_lexpad_value"("EXPORTHOW", $P3555)
    .const 'Sub' $P3556 = "10_1305640904.321" 
    $P3557 = $P3556."get_lexinfo"()
    $P3557."finish_static_lexpad"()
    .const 'Sub' $P3558 = "170_1305640904.321" 
    $P3559 = $P3558."get_lexinfo"()
    nqp_get_sc_object $P3560, "1305640898.961", 97
    $P3559."set_static_lexpad_value"("$?PACKAGE", $P3560)
    .const 'Sub' $P3561 = "170_1305640904.321" 
    $P3562 = $P3561."get_lexinfo"()
    $P3562."finish_static_lexpad"()
    .const 'Sub' $P3563 = "170_1305640904.321" 
    $P3564 = $P3563."get_lexinfo"()
    nqp_get_sc_object $P3565, "1305640898.961", 97
    $P3564."set_static_lexpad_value"("$?CLASS", $P3565)
    .const 'Sub' $P3566 = "170_1305640904.321" 
    $P3567 = $P3566."get_lexinfo"()
    $P3567."finish_static_lexpad"()
    goto if_2487_end
  if_2487:
    nqp_dynop_setup 
    getinterp $P2490
    get_class $P2491, "LexPad"
    get_class $P2492, "NQPLexPad"
    $P2490."hll_map"($P2491, $P2492)
    nqp_create_sc $P2493, "1305640898.961"
    .local pmc cur_sc
    set cur_sc, $P2493
    nqp_get_sc_object $P2494, "__6MODEL_CORE__", 0
    $P2495 = $P2494."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2495, cur_sc
    nqp_set_sc_object "1305640898.961", 0, $P2495
    .const 'Sub' $P2496 = "10_1305640904.321" 
    $P2497 = $P2496."get_lexinfo"()
    nqp_get_sc_object $P2498, "1305640898.961", 0
    $P2497."set_static_lexpad_value"("GLOBALish", $P2498)
    .const 'Sub' $P2499 = "10_1305640904.321" 
    $P2500 = $P2499."get_lexinfo"()
    $P2500."finish_static_lexpad"()
    .const 'Sub' $P2501 = "10_1305640904.321" 
    $P2502 = $P2501."get_lexinfo"()
    nqp_get_sc_object $P2503, "1305640898.961", 0
    $P2502."set_static_lexpad_value"("$?PACKAGE", $P2503)
    .const 'Sub' $P2504 = "10_1305640904.321" 
    $P2505 = $P2504."get_lexinfo"()
    $P2505."finish_static_lexpad"()
    nqp_get_sc_object $P2506, "__6MODEL_CORE__", 0
    $P2507 = $P2506."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2507, cur_sc
    nqp_set_sc_object "1305640898.961", 1, $P2507
    nqp_get_sc_object $P2508, "1305640898.961", 1
    nqp_get_sc_object $P2509, "1305640898.961", 0
    get_who $P2510, $P2509
    set $P2510["RoleToRoleApplier"], $P2508
    .const 'Sub' $P2511 = "10_1305640904.321" 
    $P2512 = $P2511."get_lexinfo"()
    nqp_get_sc_object $P2513, "1305640898.961", 1
    $P2512."set_static_lexpad_value"("RoleToRoleApplier", $P2513)
    .const 'Sub' $P2514 = "10_1305640904.321" 
    $P2515 = $P2514."get_lexinfo"()
    $P2515."finish_static_lexpad"()
    nqp_get_sc_object $P2516, "1305640898.961", 1
    get_how $P2517, $P2516
    nqp_get_sc_object $P2518, "1305640898.961", 1
    .const 'Sub' $P2519 = "12_1305640904.321" 
    $P2517."add_method"($P2518, "apply", $P2519)
    .const 'Sub' $P2520 = "11_1305640904.321" 
    $P2521 = $P2520."get_lexinfo"()
    nqp_get_sc_object $P2522, "1305640898.961", 1
    $P2521."set_static_lexpad_value"("$?PACKAGE", $P2522)
    .const 'Sub' $P2523 = "11_1305640904.321" 
    $P2524 = $P2523."get_lexinfo"()
    $P2524."finish_static_lexpad"()
    .const 'Sub' $P2525 = "11_1305640904.321" 
    $P2526 = $P2525."get_lexinfo"()
    nqp_get_sc_object $P2527, "1305640898.961", 1
    $P2526."set_static_lexpad_value"("$?CLASS", $P2527)
    .const 'Sub' $P2528 = "11_1305640904.321" 
    $P2529 = $P2528."get_lexinfo"()
    $P2529."finish_static_lexpad"()
    nqp_get_sc_object $P2530, "1305640898.961", 1
    get_how $P2531, $P2530
    nqp_get_sc_object $P2532, "1305640898.961", 1
    $P2531."compose"($P2532)
    nqp_get_sc_object $P2533, "__6MODEL_CORE__", 0
    $P2534 = $P2533."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2534, cur_sc
    nqp_set_sc_object "1305640898.961", 3, $P2534
    nqp_get_sc_object $P2535, "1305640898.961", 3
    nqp_get_sc_object $P2536, "1305640898.961", 0
    get_who $P2537, $P2536
    set $P2537["NQPConcreteRoleHOW"], $P2535
    .const 'Sub' $P2538 = "10_1305640904.321" 
    $P2539 = $P2538."get_lexinfo"()
    nqp_get_sc_object $P2540, "1305640898.961", 3
    $P2539."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2540)
    .const 'Sub' $P2541 = "10_1305640904.321" 
    $P2542 = $P2541."get_lexinfo"()
    $P2542."finish_static_lexpad"()
    nqp_get_sc_object $P2543, "1305640898.961", 3
    get_how $P2544, $P2543
    nqp_get_sc_object $P2545, "1305640898.961", 3
    nqp_get_sc_object $P2546, "__6MODEL_CORE__", 2
    $P2547 = $P2546."new"("$!name" :named("name"))
    $P2544."add_attribute"($P2545, $P2547)
    nqp_get_sc_object $P2548, "1305640898.961", 3
    get_how $P2549, $P2548
    nqp_get_sc_object $P2550, "1305640898.961", 3
    nqp_get_sc_object $P2551, "__6MODEL_CORE__", 2
    $P2552 = $P2551."new"("$!instance_of" :named("name"))
    $P2549."add_attribute"($P2550, $P2552)
    nqp_get_sc_object $P2553, "1305640898.961", 3
    get_how $P2554, $P2553
    nqp_get_sc_object $P2555, "1305640898.961", 3
    nqp_get_sc_object $P2556, "__6MODEL_CORE__", 2
    $P2557 = $P2556."new"("%!attributes" :named("name"))
    $P2554."add_attribute"($P2555, $P2557)
    nqp_get_sc_object $P2558, "1305640898.961", 3
    get_how $P2559, $P2558
    nqp_get_sc_object $P2560, "1305640898.961", 3
    nqp_get_sc_object $P2561, "__6MODEL_CORE__", 2
    $P2562 = $P2561."new"("%!methods" :named("name"))
    $P2559."add_attribute"($P2560, $P2562)
    nqp_get_sc_object $P2563, "1305640898.961", 3
    get_how $P2564, $P2563
    nqp_get_sc_object $P2565, "1305640898.961", 3
    nqp_get_sc_object $P2566, "__6MODEL_CORE__", 2
    $P2567 = $P2566."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2564."add_attribute"($P2565, $P2567)
    nqp_get_sc_object $P2568, "1305640898.961", 3
    get_how $P2569, $P2568
    nqp_get_sc_object $P2570, "1305640898.961", 3
    nqp_get_sc_object $P2571, "__6MODEL_CORE__", 2
    $P2572 = $P2571."new"("@!collisions" :named("name"))
    $P2569."add_attribute"($P2570, $P2572)
    nqp_get_sc_object $P2573, "1305640898.961", 3
    get_how $P2574, $P2573
    nqp_get_sc_object $P2575, "1305640898.961", 3
    nqp_get_sc_object $P2576, "__6MODEL_CORE__", 2
    $P2577 = $P2576."new"("@!roles" :named("name"))
    $P2574."add_attribute"($P2575, $P2577)
    nqp_get_sc_object $P2578, "1305640898.961", 3
    get_how $P2579, $P2578
    nqp_get_sc_object $P2580, "1305640898.961", 3
    nqp_get_sc_object $P2581, "__6MODEL_CORE__", 2
    $P2582 = $P2581."new"("@!done" :named("name"))
    $P2579."add_attribute"($P2580, $P2582)
    nqp_get_sc_object $P2583, "1305640898.961", 3
    get_how $P2584, $P2583
    nqp_get_sc_object $P2585, "1305640898.961", 3
    nqp_get_sc_object $P2586, "__6MODEL_CORE__", 2
    $P2587 = $P2586."new"("$!composed" :named("name"))
    $P2584."add_attribute"($P2585, $P2587)
    nqp_get_sc_object $P2588, "1305640898.961", 3
    get_how $P2589, $P2588
    nqp_get_sc_object $P2590, "1305640898.961", 3
    .const 'Sub' $P2591 = "22_1305640904.321" 
    $P2589."add_method"($P2590, "new", $P2591)
    nqp_get_sc_object $P2592, "1305640898.961", 3
    get_how $P2593, $P2592
    nqp_get_sc_object $P2594, "1305640898.961", 3
    .const 'Sub' $P2595 = "23_1305640904.321" 
    $P2593."add_method"($P2594, "BUILD", $P2595)
    nqp_get_sc_object $P2596, "1305640898.961", 3
    get_how $P2597, $P2596
    nqp_get_sc_object $P2598, "1305640898.961", 3
    .const 'Sub' $P2599 = "24_1305640904.321" 
    $P2597."add_method"($P2598, "new_type", $P2599)
    nqp_get_sc_object $P2600, "1305640898.961", 3
    get_how $P2601, $P2600
    nqp_get_sc_object $P2602, "1305640898.961", 3
    .const 'Sub' $P2603 = "25_1305640904.321" 
    $P2601."add_method"($P2602, "add_method", $P2603)
    nqp_get_sc_object $P2604, "1305640898.961", 3
    get_how $P2605, $P2604
    nqp_get_sc_object $P2606, "1305640898.961", 3
    .const 'Sub' $P2607 = "26_1305640904.321" 
    $P2605."add_method"($P2606, "add_multi_method", $P2607)
    nqp_get_sc_object $P2608, "1305640898.961", 3
    get_how $P2609, $P2608
    nqp_get_sc_object $P2610, "1305640898.961", 3
    .const 'Sub' $P2611 = "27_1305640904.321" 
    $P2609."add_method"($P2610, "add_attribute", $P2611)
    nqp_get_sc_object $P2612, "1305640898.961", 3
    get_how $P2613, $P2612
    nqp_get_sc_object $P2614, "1305640898.961", 3
    .const 'Sub' $P2615 = "28_1305640904.321" 
    $P2613."add_method"($P2614, "add_parent", $P2615)
    nqp_get_sc_object $P2616, "1305640898.961", 3
    get_how $P2617, $P2616
    nqp_get_sc_object $P2618, "1305640898.961", 3
    .const 'Sub' $P2619 = "29_1305640904.321" 
    $P2617."add_method"($P2618, "add_role", $P2619)
    nqp_get_sc_object $P2620, "1305640898.961", 3
    get_how $P2621, $P2620
    nqp_get_sc_object $P2622, "1305640898.961", 3
    .const 'Sub' $P2623 = "30_1305640904.321" 
    $P2621."add_method"($P2622, "add_collision", $P2623)
    nqp_get_sc_object $P2624, "1305640898.961", 3
    get_how $P2625, $P2624
    nqp_get_sc_object $P2626, "1305640898.961", 3
    .const 'Sub' $P2627 = "31_1305640904.321" 
    $P2625."add_method"($P2626, "compose", $P2627)
    nqp_get_sc_object $P2628, "1305640898.961", 3
    get_how $P2629, $P2628
    nqp_get_sc_object $P2630, "1305640898.961", 3
    .const 'Sub' $P2631 = "33_1305640904.321" 
    $P2629."add_method"($P2630, "methods", $P2631)
    nqp_get_sc_object $P2632, "1305640898.961", 3
    get_how $P2633, $P2632
    nqp_get_sc_object $P2634, "1305640898.961", 3
    .const 'Sub' $P2635 = "35_1305640904.321" 
    $P2633."add_method"($P2634, "method_table", $P2635)
    nqp_get_sc_object $P2636, "1305640898.961", 3
    get_how $P2637, $P2636
    nqp_get_sc_object $P2638, "1305640898.961", 3
    .const 'Sub' $P2639 = "36_1305640904.321" 
    $P2637."add_method"($P2638, "collisions", $P2639)
    nqp_get_sc_object $P2640, "1305640898.961", 3
    get_how $P2641, $P2640
    nqp_get_sc_object $P2642, "1305640898.961", 3
    .const 'Sub' $P2643 = "37_1305640904.321" 
    $P2641."add_method"($P2642, "name", $P2643)
    nqp_get_sc_object $P2644, "1305640898.961", 3
    get_how $P2645, $P2644
    nqp_get_sc_object $P2646, "1305640898.961", 3
    .const 'Sub' $P2647 = "38_1305640904.321" 
    $P2645."add_method"($P2646, "attributes", $P2647)
    nqp_get_sc_object $P2648, "1305640898.961", 3
    get_how $P2649, $P2648
    nqp_get_sc_object $P2650, "1305640898.961", 3
    .const 'Sub' $P2651 = "40_1305640904.321" 
    $P2649."add_method"($P2650, "roles", $P2651)
    nqp_get_sc_object $P2652, "1305640898.961", 3
    get_how $P2653, $P2652
    nqp_get_sc_object $P2654, "1305640898.961", 3
    .const 'Sub' $P2655 = "41_1305640904.321" 
    $P2653."add_method"($P2654, "instance_of", $P2655)
    .const 'Sub' $P2656 = "21_1305640904.321" 
    $P2657 = $P2656."get_lexinfo"()
    nqp_get_sc_object $P2658, "1305640898.961", 3
    $P2657."set_static_lexpad_value"("$?PACKAGE", $P2658)
    .const 'Sub' $P2659 = "21_1305640904.321" 
    $P2660 = $P2659."get_lexinfo"()
    $P2660."finish_static_lexpad"()
    .const 'Sub' $P2661 = "21_1305640904.321" 
    $P2662 = $P2661."get_lexinfo"()
    nqp_get_sc_object $P2663, "1305640898.961", 3
    $P2662."set_static_lexpad_value"("$?CLASS", $P2663)
    .const 'Sub' $P2664 = "21_1305640904.321" 
    $P2665 = $P2664."get_lexinfo"()
    $P2665."finish_static_lexpad"()
    nqp_get_sc_object $P2666, "1305640898.961", 3
    get_how $P2667, $P2666
    nqp_get_sc_object $P2668, "1305640898.961", 3
    $P2667."compose"($P2668)
    nqp_get_sc_object $P2669, "__6MODEL_CORE__", 0
    $P2670 = $P2669."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2670, cur_sc
    nqp_set_sc_object "1305640898.961", 21, $P2670
    nqp_get_sc_object $P2671, "1305640898.961", 21
    nqp_get_sc_object $P2672, "1305640898.961", 0
    get_who $P2673, $P2672
    set $P2673["RoleToClassApplier"], $P2671
    .const 'Sub' $P2674 = "10_1305640904.321" 
    $P2675 = $P2674."get_lexinfo"()
    nqp_get_sc_object $P2676, "1305640898.961", 21
    $P2675."set_static_lexpad_value"("RoleToClassApplier", $P2676)
    .const 'Sub' $P2677 = "10_1305640904.321" 
    $P2678 = $P2677."get_lexinfo"()
    $P2678."finish_static_lexpad"()
    nqp_get_sc_object $P2679, "1305640898.961", 21
    get_how $P2680, $P2679
    nqp_get_sc_object $P2681, "1305640898.961", 21
    .const 'Sub' $P2682 = "47_1305640904.321" 
    $P2680."add_method"($P2681, "apply", $P2682)
    .const 'Sub' $P2683 = "42_1305640904.321" 
    $P2684 = $P2683."get_lexinfo"()
    nqp_get_sc_object $P2685, "1305640898.961", 21
    $P2684."set_static_lexpad_value"("$?PACKAGE", $P2685)
    .const 'Sub' $P2686 = "42_1305640904.321" 
    $P2687 = $P2686."get_lexinfo"()
    $P2687."finish_static_lexpad"()
    .const 'Sub' $P2688 = "42_1305640904.321" 
    $P2689 = $P2688."get_lexinfo"()
    nqp_get_sc_object $P2690, "1305640898.961", 21
    $P2689."set_static_lexpad_value"("$?CLASS", $P2690)
    .const 'Sub' $P2691 = "42_1305640904.321" 
    $P2692 = $P2691."get_lexinfo"()
    $P2692."finish_static_lexpad"()
    nqp_get_sc_object $P2693, "1305640898.961", 21
    get_how $P2694, $P2693
    nqp_get_sc_object $P2695, "1305640898.961", 21
    $P2694."compose"($P2695)
    nqp_get_sc_object $P2696, "__6MODEL_CORE__", 0
    $P2697 = $P2696."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2697, cur_sc
    nqp_set_sc_object "1305640898.961", 23, $P2697
    nqp_get_sc_object $P2698, "1305640898.961", 23
    nqp_get_sc_object $P2699, "1305640898.961", 0
    get_who $P2700, $P2699
    set $P2700["NQPParametricRoleHOW"], $P2698
    .const 'Sub' $P2701 = "10_1305640904.321" 
    $P2702 = $P2701."get_lexinfo"()
    nqp_get_sc_object $P2703, "1305640898.961", 23
    $P2702."set_static_lexpad_value"("NQPParametricRoleHOW", $P2703)
    .const 'Sub' $P2704 = "10_1305640904.321" 
    $P2705 = $P2704."get_lexinfo"()
    $P2705."finish_static_lexpad"()
    nqp_get_sc_object $P2706, "1305640898.961", 23
    get_how $P2707, $P2706
    nqp_get_sc_object $P2708, "1305640898.961", 23
    nqp_get_sc_object $P2709, "__6MODEL_CORE__", 2
    $P2710 = $P2709."new"("$!name" :named("name"))
    $P2707."add_attribute"($P2708, $P2710)
    nqp_get_sc_object $P2711, "1305640898.961", 23
    get_how $P2712, $P2711
    nqp_get_sc_object $P2713, "1305640898.961", 23
    nqp_get_sc_object $P2714, "__6MODEL_CORE__", 2
    $P2715 = $P2714."new"("%!attributes" :named("name"))
    $P2712."add_attribute"($P2713, $P2715)
    nqp_get_sc_object $P2716, "1305640898.961", 23
    get_how $P2717, $P2716
    nqp_get_sc_object $P2718, "1305640898.961", 23
    nqp_get_sc_object $P2719, "__6MODEL_CORE__", 2
    $P2720 = $P2719."new"("%!methods" :named("name"))
    $P2717."add_attribute"($P2718, $P2720)
    nqp_get_sc_object $P2721, "1305640898.961", 23
    get_how $P2722, $P2721
    nqp_get_sc_object $P2723, "1305640898.961", 23
    nqp_get_sc_object $P2724, "__6MODEL_CORE__", 2
    $P2725 = $P2724."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2722."add_attribute"($P2723, $P2725)
    nqp_get_sc_object $P2726, "1305640898.961", 23
    get_how $P2727, $P2726
    nqp_get_sc_object $P2728, "1305640898.961", 23
    nqp_get_sc_object $P2729, "__6MODEL_CORE__", 2
    $P2730 = $P2729."new"("@!roles" :named("name"))
    $P2727."add_attribute"($P2728, $P2730)
    nqp_get_sc_object $P2731, "1305640898.961", 23
    get_how $P2732, $P2731
    nqp_get_sc_object $P2733, "1305640898.961", 23
    nqp_get_sc_object $P2734, "__6MODEL_CORE__", 2
    $P2735 = $P2734."new"("$!composed" :named("name"))
    $P2732."add_attribute"($P2733, $P2735)
    nqp_get_sc_object $P2736, "1305640898.961", 23
    get_how $P2737, $P2736
    nqp_get_sc_object $P2738, "1305640898.961", 23
    nqp_get_sc_object $P2739, "__6MODEL_CORE__", 2
    $P2740 = $P2739."new"("$!body_block" :named("name"))
    $P2737."add_attribute"($P2738, $P2740)
    nqp_get_sc_object $P2741, "1305640898.961", 23
    get_how $P2742, $P2741
    nqp_get_sc_object $P2743, "1305640898.961", 23
    .const 'Sub' $P2744 = "54_1305640904.321" 
    $P2742."add_method"($P2743, "new", $P2744)
    nqp_get_sc_object $P2745, "1305640898.961", 23
    get_how $P2746, $P2745
    nqp_get_sc_object $P2747, "1305640898.961", 23
    .const 'Sub' $P2748 = "55_1305640904.321" 
    $P2746."add_method"($P2747, "BUILD", $P2748)
    nqp_get_sc_object $P2749, "1305640898.961", 23
    get_how $P2750, $P2749
    nqp_get_sc_object $P2751, "1305640898.961", 23
    .const 'Sub' $P2752 = "56_1305640904.321" 
    $P2750."add_method"($P2751, "new_type", $P2752)
    nqp_get_sc_object $P2753, "1305640898.961", 23
    get_how $P2754, $P2753
    nqp_get_sc_object $P2755, "1305640898.961", 23
    .const 'Sub' $P2756 = "57_1305640904.321" 
    $P2754."add_method"($P2755, "set_body_block", $P2756)
    nqp_get_sc_object $P2757, "1305640898.961", 23
    get_how $P2758, $P2757
    nqp_get_sc_object $P2759, "1305640898.961", 23
    .const 'Sub' $P2760 = "58_1305640904.321" 
    $P2758."add_method"($P2759, "add_method", $P2760)
    nqp_get_sc_object $P2761, "1305640898.961", 23
    get_how $P2762, $P2761
    nqp_get_sc_object $P2763, "1305640898.961", 23
    .const 'Sub' $P2764 = "59_1305640904.321" 
    $P2762."add_method"($P2763, "add_multi_method", $P2764)
    nqp_get_sc_object $P2765, "1305640898.961", 23
    get_how $P2766, $P2765
    nqp_get_sc_object $P2767, "1305640898.961", 23
    .const 'Sub' $P2768 = "60_1305640904.321" 
    $P2766."add_method"($P2767, "add_attribute", $P2768)
    nqp_get_sc_object $P2769, "1305640898.961", 23
    get_how $P2770, $P2769
    nqp_get_sc_object $P2771, "1305640898.961", 23
    .const 'Sub' $P2772 = "61_1305640904.321" 
    $P2770."add_method"($P2771, "add_parent", $P2772)
    nqp_get_sc_object $P2773, "1305640898.961", 23
    get_how $P2774, $P2773
    nqp_get_sc_object $P2775, "1305640898.961", 23
    .const 'Sub' $P2776 = "62_1305640904.321" 
    $P2774."add_method"($P2775, "add_role", $P2776)
    nqp_get_sc_object $P2777, "1305640898.961", 23
    get_how $P2778, $P2777
    nqp_get_sc_object $P2779, "1305640898.961", 23
    .const 'Sub' $P2780 = "63_1305640904.321" 
    $P2778."add_method"($P2779, "compose", $P2780)
    nqp_get_sc_object $P2781, "1305640898.961", 23
    get_how $P2782, $P2781
    nqp_get_sc_object $P2783, "1305640898.961", 23
    .const 'Sub' $P2784 = "64_1305640904.321" 
    $P2782."add_method"($P2783, "parametric", $P2784)
    nqp_get_sc_object $P2785, "1305640898.961", 23
    get_how $P2786, $P2785
    nqp_get_sc_object $P2787, "1305640898.961", 23
    .const 'Sub' $P2788 = "65_1305640904.321" 
    $P2786."add_method"($P2787, "instantiate", $P2788)
    nqp_get_sc_object $P2789, "1305640898.961", 23
    get_how $P2790, $P2789
    nqp_get_sc_object $P2791, "1305640898.961", 23
    .const 'Sub' $P2792 = "70_1305640904.321" 
    $P2790."add_method"($P2791, "methods", $P2792)
    nqp_get_sc_object $P2793, "1305640898.961", 23
    get_how $P2794, $P2793
    nqp_get_sc_object $P2795, "1305640898.961", 23
    .const 'Sub' $P2796 = "72_1305640904.321" 
    $P2794."add_method"($P2795, "method_table", $P2796)
    nqp_get_sc_object $P2797, "1305640898.961", 23
    get_how $P2798, $P2797
    nqp_get_sc_object $P2799, "1305640898.961", 23
    .const 'Sub' $P2800 = "73_1305640904.321" 
    $P2798."add_method"($P2799, "name", $P2800)
    nqp_get_sc_object $P2801, "1305640898.961", 23
    get_how $P2802, $P2801
    nqp_get_sc_object $P2803, "1305640898.961", 23
    .const 'Sub' $P2804 = "74_1305640904.321" 
    $P2802."add_method"($P2803, "attributes", $P2804)
    nqp_get_sc_object $P2805, "1305640898.961", 23
    get_how $P2806, $P2805
    nqp_get_sc_object $P2807, "1305640898.961", 23
    .const 'Sub' $P2808 = "76_1305640904.321" 
    $P2806."add_method"($P2807, "roles", $P2808)
    .const 'Sub' $P2809 = "52_1305640904.321" 
    $P2810 = $P2809."get_lexinfo"()
    nqp_get_sc_object $P2811, "1305640898.961", 23
    $P2810."set_static_lexpad_value"("$?PACKAGE", $P2811)
    .const 'Sub' $P2812 = "52_1305640904.321" 
    $P2813 = $P2812."get_lexinfo"()
    $P2813."finish_static_lexpad"()
    .const 'Sub' $P2814 = "52_1305640904.321" 
    $P2815 = $P2814."get_lexinfo"()
    nqp_get_sc_object $P2816, "1305640898.961", 23
    $P2815."set_static_lexpad_value"("$?CLASS", $P2816)
    .const 'Sub' $P2817 = "52_1305640904.321" 
    $P2818 = $P2817."get_lexinfo"()
    $P2818."finish_static_lexpad"()
    nqp_get_sc_object $P2819, "1305640898.961", 23
    get_how $P2820, $P2819
    nqp_get_sc_object $P2821, "1305640898.961", 23
    $P2820."compose"($P2821)
    nqp_get_sc_object $P2822, "__6MODEL_CORE__", 0
    $P2823 = $P2822."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2823, cur_sc
    nqp_set_sc_object "1305640898.961", 41, $P2823
    nqp_get_sc_object $P2824, "1305640898.961", 41
    nqp_get_sc_object $P2825, "1305640898.961", 0
    get_who $P2826, $P2825
    set $P2826["NQPClassHOW"], $P2824
    .const 'Sub' $P2827 = "10_1305640904.321" 
    $P2828 = $P2827."get_lexinfo"()
    nqp_get_sc_object $P2829, "1305640898.961", 41
    $P2828."set_static_lexpad_value"("NQPClassHOW", $P2829)
    .const 'Sub' $P2830 = "10_1305640904.321" 
    $P2831 = $P2830."get_lexinfo"()
    $P2831."finish_static_lexpad"()
    nqp_get_sc_object $P2832, "1305640898.961", 41
    get_how $P2833, $P2832
    nqp_get_sc_object $P2834, "1305640898.961", 41
    nqp_get_sc_object $P2835, "__6MODEL_CORE__", 2
    $P2836 = $P2835."new"("$!name" :named("name"))
    $P2833."add_attribute"($P2834, $P2836)
    nqp_get_sc_object $P2837, "1305640898.961", 41
    get_how $P2838, $P2837
    nqp_get_sc_object $P2839, "1305640898.961", 41
    nqp_get_sc_object $P2840, "__6MODEL_CORE__", 2
    $P2841 = $P2840."new"("%!attributes" :named("name"))
    $P2838."add_attribute"($P2839, $P2841)
    nqp_get_sc_object $P2842, "1305640898.961", 41
    get_how $P2843, $P2842
    nqp_get_sc_object $P2844, "1305640898.961", 41
    nqp_get_sc_object $P2845, "__6MODEL_CORE__", 2
    $P2846 = $P2845."new"("%!methods" :named("name"))
    $P2843."add_attribute"($P2844, $P2846)
    nqp_get_sc_object $P2847, "1305640898.961", 41
    get_how $P2848, $P2847
    nqp_get_sc_object $P2849, "1305640898.961", 41
    nqp_get_sc_object $P2850, "__6MODEL_CORE__", 2
    $P2851 = $P2850."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2848."add_attribute"($P2849, $P2851)
    nqp_get_sc_object $P2852, "1305640898.961", 41
    get_how $P2853, $P2852
    nqp_get_sc_object $P2854, "1305640898.961", 41
    nqp_get_sc_object $P2855, "__6MODEL_CORE__", 2
    $P2856 = $P2855."new"("@!parents" :named("name"))
    $P2853."add_attribute"($P2854, $P2856)
    nqp_get_sc_object $P2857, "1305640898.961", 41
    get_how $P2858, $P2857
    nqp_get_sc_object $P2859, "1305640898.961", 41
    nqp_get_sc_object $P2860, "__6MODEL_CORE__", 2
    $P2861 = $P2860."new"("@!roles" :named("name"))
    $P2858."add_attribute"($P2859, $P2861)
    nqp_get_sc_object $P2862, "1305640898.961", 41
    get_how $P2863, $P2862
    nqp_get_sc_object $P2864, "1305640898.961", 41
    nqp_get_sc_object $P2865, "__6MODEL_CORE__", 2
    $P2866 = $P2865."new"("$!default_parent" :named("name"))
    $P2863."add_attribute"($P2864, $P2866)
    nqp_get_sc_object $P2867, "1305640898.961", 41
    get_how $P2868, $P2867
    nqp_get_sc_object $P2869, "1305640898.961", 41
    nqp_get_sc_object $P2870, "__6MODEL_CORE__", 2
    $P2871 = $P2870."new"("@!vtable" :named("name"))
    $P2868."add_attribute"($P2869, $P2871)
    nqp_get_sc_object $P2872, "1305640898.961", 41
    get_how $P2873, $P2872
    nqp_get_sc_object $P2874, "1305640898.961", 41
    nqp_get_sc_object $P2875, "__6MODEL_CORE__", 2
    $P2876 = $P2875."new"("%!method-vtable-slots" :named("name"))
    $P2873."add_attribute"($P2874, $P2876)
    nqp_get_sc_object $P2877, "1305640898.961", 41
    get_how $P2878, $P2877
    nqp_get_sc_object $P2879, "1305640898.961", 41
    nqp_get_sc_object $P2880, "__6MODEL_CORE__", 2
    $P2881 = $P2880."new"("$!composed" :named("name"))
    $P2878."add_attribute"($P2879, $P2881)
    nqp_get_sc_object $P2882, "1305640898.961", 41
    get_how $P2883, $P2882
    nqp_get_sc_object $P2884, "1305640898.961", 41
    nqp_get_sc_object $P2885, "__6MODEL_CORE__", 2
    $P2886 = $P2885."new"("@!mro" :named("name"))
    $P2883."add_attribute"($P2884, $P2886)
    nqp_get_sc_object $P2887, "1305640898.961", 41
    get_how $P2888, $P2887
    nqp_get_sc_object $P2889, "1305640898.961", 41
    nqp_get_sc_object $P2890, "__6MODEL_CORE__", 2
    $P2891 = $P2890."new"("@!done" :named("name"))
    $P2888."add_attribute"($P2889, $P2891)
    nqp_get_sc_object $P2892, "1305640898.961", 41
    get_how $P2893, $P2892
    nqp_get_sc_object $P2894, "1305640898.961", 41
    nqp_get_sc_object $P2895, "__6MODEL_CORE__", 2
    $P2896 = $P2895."new"("%!parrot_vtable_mapping" :named("name"))
    $P2893."add_attribute"($P2894, $P2896)
    nqp_get_sc_object $P2897, "1305640898.961", 41
    get_how $P2898, $P2897
    nqp_get_sc_object $P2899, "1305640898.961", 41
    nqp_get_sc_object $P2900, "__6MODEL_CORE__", 2
    $P2901 = $P2900."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P2898."add_attribute"($P2899, $P2901)
    nqp_get_sc_object $P2902, "1305640898.961", 41
    get_how $P2903, $P2902
    nqp_get_sc_object $P2904, "1305640898.961", 41
    .const 'Sub' $P2905 = "88_1305640904.321" 
    $P2903."add_method"($P2904, "new", $P2905)
    nqp_get_sc_object $P2906, "1305640898.961", 41
    get_how $P2907, $P2906
    nqp_get_sc_object $P2908, "1305640898.961", 41
    .const 'Sub' $P2909 = "89_1305640904.321" 
    $P2907."add_method"($P2908, "BUILD", $P2909)
    nqp_get_sc_object $P2910, "1305640898.961", 41
    get_how $P2911, $P2910
    nqp_get_sc_object $P2912, "1305640898.961", 41
    .const 'Sub' $P2913 = "90_1305640904.321" 
    $P2911."add_method"($P2912, "new_type", $P2913)
    nqp_get_sc_object $P2914, "1305640898.961", 41
    get_how $P2915, $P2914
    nqp_get_sc_object $P2916, "1305640898.961", 41
    .const 'Sub' $P2917 = "91_1305640904.321" 
    $P2915."add_method"($P2916, "add_method", $P2917)
    nqp_get_sc_object $P2918, "1305640898.961", 41
    get_how $P2919, $P2918
    nqp_get_sc_object $P2920, "1305640898.961", 41
    .const 'Sub' $P2921 = "92_1305640904.321" 
    $P2919."add_method"($P2920, "add_multi_method", $P2921)
    nqp_get_sc_object $P2922, "1305640898.961", 41
    get_how $P2923, $P2922
    nqp_get_sc_object $P2924, "1305640898.961", 41
    .const 'Sub' $P2925 = "93_1305640904.321" 
    $P2923."add_method"($P2924, "add_attribute", $P2925)
    nqp_get_sc_object $P2926, "1305640898.961", 41
    get_how $P2927, $P2926
    nqp_get_sc_object $P2928, "1305640898.961", 41
    .const 'Sub' $P2929 = "94_1305640904.321" 
    $P2927."add_method"($P2928, "add_parent", $P2929)
    nqp_get_sc_object $P2930, "1305640898.961", 41
    get_how $P2931, $P2930
    nqp_get_sc_object $P2932, "1305640898.961", 41
    .const 'Sub' $P2933 = "96_1305640904.321" 
    $P2931."add_method"($P2932, "set_default_parent", $P2933)
    nqp_get_sc_object $P2934, "1305640898.961", 41
    get_how $P2935, $P2934
    nqp_get_sc_object $P2936, "1305640898.961", 41
    .const 'Sub' $P2937 = "97_1305640904.321" 
    $P2935."add_method"($P2936, "add_role", $P2937)
    nqp_get_sc_object $P2938, "1305640898.961", 41
    get_how $P2939, $P2938
    nqp_get_sc_object $P2940, "1305640898.961", 41
    .const 'Sub' $P2941 = "99_1305640904.321" 
    $P2939."add_method"($P2940, "add_parrot_vtable_mapping", $P2941)
    nqp_get_sc_object $P2942, "1305640898.961", 41
    get_how $P2943, $P2942
    nqp_get_sc_object $P2944, "1305640898.961", 41
    .const 'Sub' $P2945 = "100_1305640904.321" 
    $P2943."add_method"($P2944, "add_parrot_vtable_handler_mapping", $P2945)
    nqp_get_sc_object $P2946, "1305640898.961", 41
    get_how $P2947, $P2946
    nqp_get_sc_object $P2948, "1305640898.961", 41
    .const 'Sub' $P2949 = "101_1305640904.321" 
    $P2947."add_method"($P2948, "compose", $P2949)
    nqp_get_sc_object $P2950, "1305640898.961", 41
    get_how $P2951, $P2950
    nqp_get_sc_object $P2952, "1305640898.961", 41
    .const 'Sub' $P2953 = "105_1305640904.321" 
    $P2951."add_method"($P2952, "incorporate_multi_candidates", $P2953)
    nqp_get_sc_object $P2954, "1305640898.961", 41
    get_how $P2955, $P2954
    nqp_get_sc_object $P2956, "1305640898.961", 41
    .const 'Sub' $P2957 = "110_1305640904.321" 
    $P2955."add_method"($P2956, "publish_type_cache", $P2957)
    nqp_get_sc_object $P2958, "1305640898.961", 41
    get_how $P2959, $P2958
    nqp_get_sc_object $P2960, "1305640898.961", 41
    .const 'Sub' $P2961 = "113_1305640904.321" 
    $P2959."add_method"($P2960, "publish_method_cache", $P2961)
    nqp_get_sc_object $P2962, "1305640898.961", 41
    get_how $P2963, $P2962
    nqp_get_sc_object $P2964, "1305640898.961", 41
    .const 'Sub' $P2965 = "116_1305640904.321" 
    $P2963."add_method"($P2964, "publish_parrot_vtable_mapping", $P2965)
    nqp_get_sc_object $P2966, "1305640898.961", 41
    get_how $P2967, $P2966
    nqp_get_sc_object $P2968, "1305640898.961", 41
    .const 'Sub' $P2969 = "119_1305640904.321" 
    $P2967."add_method"($P2968, "publish_parrot_vtablee_handler_mapping", $P2969)
    nqp_get_sc_object $P2970, "1305640898.961", 41
    get_how $P2971, $P2970
    nqp_get_sc_object $P2972, "1305640898.961", 41
    .const 'Sub' $P2973 = "122_1305640904.321" 
    $P2971."add_method"($P2972, "parents", $P2973)
    nqp_get_sc_object $P2974, "1305640898.961", 41
    get_how $P2975, $P2974
    nqp_get_sc_object $P2976, "1305640898.961", 41
    .const 'Sub' $P2977 = "123_1305640904.321" 
    $P2975."add_method"($P2976, "roles", $P2977)
    nqp_get_sc_object $P2978, "1305640898.961", 41
    get_how $P2979, $P2978
    nqp_get_sc_object $P2980, "1305640898.961", 41
    .const 'Sub' $P2981 = "124_1305640904.321" 
    $P2979."add_method"($P2980, "methods", $P2981)
    nqp_get_sc_object $P2982, "1305640898.961", 41
    get_how $P2983, $P2982
    nqp_get_sc_object $P2984, "1305640898.961", 41
    .const 'Sub' $P2985 = "126_1305640904.321" 
    $P2983."add_method"($P2984, "method_table", $P2985)
    nqp_get_sc_object $P2986, "1305640898.961", 41
    get_how $P2987, $P2986
    nqp_get_sc_object $P2988, "1305640898.961", 41
    .const 'Sub' $P2989 = "127_1305640904.321" 
    $P2987."add_method"($P2988, "name", $P2989)
    nqp_get_sc_object $P2990, "1305640898.961", 41
    get_how $P2991, $P2990
    nqp_get_sc_object $P2992, "1305640898.961", 41
    .const 'Sub' $P2993 = "128_1305640904.321" 
    $P2991."add_method"($P2992, "attributes", $P2993)
    nqp_get_sc_object $P2994, "1305640898.961", 41
    get_how $P2995, $P2994
    nqp_get_sc_object $P2996, "1305640898.961", 41
    .const 'Sub' $P2997 = "130_1305640904.321" 
    $P2995."add_method"($P2996, "parrot_vtable_mappings", $P2997)
    nqp_get_sc_object $P2998, "1305640898.961", 41
    get_how $P2999, $P2998
    nqp_get_sc_object $P3000, "1305640898.961", 41
    .const 'Sub' $P3001 = "131_1305640904.321" 
    $P2999."add_method"($P3000, "parrot_vtable_handler_mappings", $P3001)
    nqp_get_sc_object $P3002, "1305640898.961", 41
    get_how $P3003, $P3002
    nqp_get_sc_object $P3004, "1305640898.961", 41
    .const 'Sub' $P3005 = "132_1305640904.321" 
    $P3003."add_method"($P3004, "isa", $P3005)
    nqp_get_sc_object $P3006, "1305640898.961", 41
    get_how $P3007, $P3006
    nqp_get_sc_object $P3008, "1305640898.961", 41
    .const 'Sub' $P3009 = "133_1305640904.321" 
    $P3007."add_method"($P3008, "does", $P3009)
    nqp_get_sc_object $P3010, "1305640898.961", 41
    get_how $P3011, $P3010
    nqp_get_sc_object $P3012, "1305640898.961", 41
    .const 'Sub' $P3013 = "134_1305640904.321" 
    $P3011."add_method"($P3012, "can", $P3013)
    nqp_get_sc_object $P3014, "1305640898.961", 41
    get_how $P3015, $P3014
    nqp_get_sc_object $P3016, "1305640898.961", 41
    .const 'Sub' $P3017 = "136_1305640904.321" 
    $P3015."add_method"($P3016, "find_method", $P3017)
    .const 'Sub' $P3018 = "77_1305640904.321" 
    $P3019 = $P3018."get_lexinfo"()
    nqp_get_sc_object $P3020, "1305640898.961", 41
    $P3019."set_static_lexpad_value"("$?PACKAGE", $P3020)
    .const 'Sub' $P3021 = "77_1305640904.321" 
    $P3022 = $P3021."get_lexinfo"()
    $P3022."finish_static_lexpad"()
    .const 'Sub' $P3023 = "77_1305640904.321" 
    $P3024 = $P3023."get_lexinfo"()
    nqp_get_sc_object $P3025, "1305640898.961", 41
    $P3024."set_static_lexpad_value"("$?CLASS", $P3025)
    .const 'Sub' $P3026 = "77_1305640904.321" 
    $P3027 = $P3026."get_lexinfo"()
    $P3027."finish_static_lexpad"()
    nqp_get_sc_object $P3028, "1305640898.961", 41
    get_how $P3029, $P3028
    nqp_get_sc_object $P3030, "1305640898.961", 41
    $P3029."compose"($P3030)
    nqp_get_sc_object $P3031, "__6MODEL_CORE__", 0
    $P3032 = $P3031."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P3032, cur_sc
    nqp_set_sc_object "1305640898.961", 71, $P3032
    nqp_get_sc_object $P3033, "1305640898.961", 71
    nqp_get_sc_object $P3034, "1305640898.961", 0
    get_who $P3035, $P3034
    set $P3035["NQPNativeHOW"], $P3033
    .const 'Sub' $P3036 = "10_1305640904.321" 
    $P3037 = $P3036."get_lexinfo"()
    nqp_get_sc_object $P3038, "1305640898.961", 71
    $P3037."set_static_lexpad_value"("NQPNativeHOW", $P3038)
    .const 'Sub' $P3039 = "10_1305640904.321" 
    $P3040 = $P3039."get_lexinfo"()
    $P3040."finish_static_lexpad"()
    nqp_get_sc_object $P3041, "1305640898.961", 71
    get_how $P3042, $P3041
    nqp_get_sc_object $P3043, "1305640898.961", 71
    nqp_get_sc_object $P3044, "__6MODEL_CORE__", 2
    $P3045 = $P3044."new"("$!name" :named("name"))
    $P3042."add_attribute"($P3043, $P3045)
    nqp_get_sc_object $P3046, "1305640898.961", 71
    get_how $P3047, $P3046
    nqp_get_sc_object $P3048, "1305640898.961", 71
    nqp_get_sc_object $P3049, "__6MODEL_CORE__", 2
    $P3050 = $P3049."new"("$!composed" :named("name"))
    $P3047."add_attribute"($P3048, $P3050)
    nqp_get_sc_object $P3051, "1305640898.961", 71
    get_how $P3052, $P3051
    nqp_get_sc_object $P3053, "1305640898.961", 71
    .const 'Sub' $P3054 = "139_1305640904.321" 
    $P3052."add_method"($P3053, "new", $P3054)
    nqp_get_sc_object $P3055, "1305640898.961", 71
    get_how $P3056, $P3055
    nqp_get_sc_object $P3057, "1305640898.961", 71
    .const 'Sub' $P3058 = "140_1305640904.321" 
    $P3056."add_method"($P3057, "BUILD", $P3058)
    nqp_get_sc_object $P3059, "1305640898.961", 71
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1305640898.961", 71
    .const 'Sub' $P3062 = "141_1305640904.321" 
    $P3060."add_method"($P3061, "new_type", $P3062)
    nqp_get_sc_object $P3063, "1305640898.961", 71
    get_how $P3064, $P3063
    nqp_get_sc_object $P3065, "1305640898.961", 71
    .const 'Sub' $P3066 = "142_1305640904.321" 
    $P3064."add_method"($P3065, "add_method", $P3066)
    nqp_get_sc_object $P3067, "1305640898.961", 71
    get_how $P3068, $P3067
    nqp_get_sc_object $P3069, "1305640898.961", 71
    .const 'Sub' $P3070 = "143_1305640904.321" 
    $P3068."add_method"($P3069, "add_multi_method", $P3070)
    nqp_get_sc_object $P3071, "1305640898.961", 71
    get_how $P3072, $P3071
    nqp_get_sc_object $P3073, "1305640898.961", 71
    .const 'Sub' $P3074 = "144_1305640904.321" 
    $P3072."add_method"($P3073, "add_attribute", $P3074)
    nqp_get_sc_object $P3075, "1305640898.961", 71
    get_how $P3076, $P3075
    nqp_get_sc_object $P3077, "1305640898.961", 71
    .const 'Sub' $P3078 = "145_1305640904.321" 
    $P3076."add_method"($P3077, "compose", $P3078)
    nqp_get_sc_object $P3079, "1305640898.961", 71
    get_how $P3080, $P3079
    nqp_get_sc_object $P3081, "1305640898.961", 71
    .const 'Sub' $P3082 = "146_1305640904.321" 
    $P3080."add_method"($P3081, "name", $P3082)
    .const 'Sub' $P3083 = "138_1305640904.321" 
    $P3084 = $P3083."get_lexinfo"()
    nqp_get_sc_object $P3085, "1305640898.961", 71
    $P3084."set_static_lexpad_value"("$?PACKAGE", $P3085)
    .const 'Sub' $P3086 = "138_1305640904.321" 
    $P3087 = $P3086."get_lexinfo"()
    $P3087."finish_static_lexpad"()
    .const 'Sub' $P3088 = "138_1305640904.321" 
    $P3089 = $P3088."get_lexinfo"()
    nqp_get_sc_object $P3090, "1305640898.961", 71
    $P3089."set_static_lexpad_value"("$?CLASS", $P3090)
    .const 'Sub' $P3091 = "138_1305640904.321" 
    $P3092 = $P3091."get_lexinfo"()
    $P3092."finish_static_lexpad"()
    nqp_get_sc_object $P3093, "1305640898.961", 71
    get_how $P3094, $P3093
    nqp_get_sc_object $P3095, "1305640898.961", 71
    $P3094."compose"($P3095)
    nqp_get_sc_object $P3096, "__6MODEL_CORE__", 0
    $P3097 = $P3096."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P3097, cur_sc
    nqp_set_sc_object "1305640898.961", 80, $P3097
    nqp_get_sc_object $P3098, "1305640898.961", 80
    nqp_get_sc_object $P3099, "1305640898.961", 0
    get_who $P3100, $P3099
    set $P3100["NQPAttribute"], $P3098
    .const 'Sub' $P3101 = "10_1305640904.321" 
    $P3102 = $P3101."get_lexinfo"()
    nqp_get_sc_object $P3103, "1305640898.961", 80
    $P3102."set_static_lexpad_value"("NQPAttribute", $P3103)
    .const 'Sub' $P3104 = "10_1305640904.321" 
    $P3105 = $P3104."get_lexinfo"()
    $P3105."finish_static_lexpad"()
    nqp_get_sc_object $P3106, "1305640898.961", 80
    get_how $P3107, $P3106
    nqp_get_sc_object $P3108, "1305640898.961", 80
    nqp_get_sc_object $P3109, "__6MODEL_CORE__", 2
    $P3110 = $P3109."new"("$!name" :named("name"))
    $P3107."add_attribute"($P3108, $P3110)
    nqp_get_sc_object $P3111, "1305640898.961", 80
    get_how $P3112, $P3111
    nqp_get_sc_object $P3113, "1305640898.961", 80
    nqp_get_sc_object $P3114, "__6MODEL_CORE__", 2
    $P3115 = $P3114."new"("$!type" :named("name"))
    $P3112."add_attribute"($P3113, $P3115)
    nqp_get_sc_object $P3116, "1305640898.961", 80
    get_how $P3117, $P3116
    nqp_get_sc_object $P3118, "1305640898.961", 80
    nqp_get_sc_object $P3119, "__6MODEL_CORE__", 2
    $P3120 = $P3119."new"("$!box_target" :named("name"))
    $P3117."add_attribute"($P3118, $P3120)
    nqp_get_sc_object $P3121, "1305640898.961", 80
    get_how $P3122, $P3121
    nqp_get_sc_object $P3123, "1305640898.961", 80
    .const 'Sub' $P3124 = "150_1305640904.321" 
    $P3122."add_method"($P3123, "new", $P3124)
    nqp_get_sc_object $P3125, "1305640898.961", 80
    get_how $P3126, $P3125
    nqp_get_sc_object $P3127, "1305640898.961", 80
    .const 'Sub' $P3128 = "151_1305640904.321" 
    $P3126."add_method"($P3127, "BUILD", $P3128)
    nqp_get_sc_object $P3129, "1305640898.961", 80
    get_how $P3130, $P3129
    nqp_get_sc_object $P3131, "1305640898.961", 80
    .const 'Sub' $P3132 = "152_1305640904.321" 
    $P3130."add_method"($P3131, "name", $P3132)
    nqp_get_sc_object $P3133, "1305640898.961", 80
    get_how $P3134, $P3133
    nqp_get_sc_object $P3135, "1305640898.961", 80
    .const 'Sub' $P3136 = "153_1305640904.321" 
    $P3134."add_method"($P3135, "type", $P3136)
    nqp_get_sc_object $P3137, "1305640898.961", 80
    get_how $P3138, $P3137
    nqp_get_sc_object $P3139, "1305640898.961", 80
    .const 'Sub' $P3140 = "154_1305640904.321" 
    $P3138."add_method"($P3139, "box_target", $P3140)
    nqp_get_sc_object $P3141, "1305640898.961", 80
    get_how $P3142, $P3141
    nqp_get_sc_object $P3143, "1305640898.961", 80
    .const 'Sub' $P3144 = "155_1305640904.321" 
    $P3142."add_method"($P3143, "compose", $P3144)
    nqp_get_sc_object $P3145, "1305640898.961", 80
    get_how $P3146, $P3145
    nqp_get_sc_object $P3147, "1305640898.961", 80
    .const 'Sub' $P3148 = "160_1305640904.321" 
    $P3146."add_method"($P3147, "has_mutator", $P3148)
    .const 'Sub' $P3149 = "147_1305640904.321" 
    $P3150 = $P3149."get_lexinfo"()
    nqp_get_sc_object $P3151, "1305640898.961", 80
    $P3150."set_static_lexpad_value"("$?PACKAGE", $P3151)
    .const 'Sub' $P3152 = "147_1305640904.321" 
    $P3153 = $P3152."get_lexinfo"()
    $P3153."finish_static_lexpad"()
    .const 'Sub' $P3154 = "147_1305640904.321" 
    $P3155 = $P3154."get_lexinfo"()
    nqp_get_sc_object $P3156, "1305640898.961", 80
    $P3155."set_static_lexpad_value"("$?CLASS", $P3156)
    .const 'Sub' $P3157 = "147_1305640904.321" 
    $P3158 = $P3157."get_lexinfo"()
    $P3158."finish_static_lexpad"()
    nqp_get_sc_object $P3159, "1305640898.961", 80
    get_how $P3160, $P3159
    nqp_get_sc_object $P3161, "1305640898.961", 80
    $P3160."compose"($P3161)
    nqp_get_sc_object $P3162, "__6MODEL_CORE__", 0
    $P3163 = $P3162."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3163, cur_sc
    nqp_set_sc_object "1305640898.961", 88, $P3163
    nqp_get_sc_object $P3164, "1305640898.961", 88
    nqp_get_sc_object $P3165, "1305640898.961", 0
    get_who $P3166, $P3165
    set $P3166["NQPModuleHOW"], $P3164
    .const 'Sub' $P3167 = "10_1305640904.321" 
    $P3168 = $P3167."get_lexinfo"()
    nqp_get_sc_object $P3169, "1305640898.961", 88
    $P3168."set_static_lexpad_value"("NQPModuleHOW", $P3169)
    .const 'Sub' $P3170 = "10_1305640904.321" 
    $P3171 = $P3170."get_lexinfo"()
    $P3171."finish_static_lexpad"()
    nqp_get_sc_object $P3172, "1305640898.961", 88
    get_how $P3173, $P3172
    nqp_get_sc_object $P3174, "1305640898.961", 88
    nqp_get_sc_object $P3175, "__6MODEL_CORE__", 2
    $P3176 = $P3175."new"("$!name" :named("name"))
    $P3173."add_attribute"($P3174, $P3176)
    nqp_get_sc_object $P3177, "1305640898.961", 88
    get_how $P3178, $P3177
    nqp_get_sc_object $P3179, "1305640898.961", 88
    nqp_get_sc_object $P3180, "__6MODEL_CORE__", 2
    $P3181 = $P3180."new"("$!composed" :named("name"))
    $P3178."add_attribute"($P3179, $P3181)
    nqp_get_sc_object $P3182, "1305640898.961", 88
    get_how $P3183, $P3182
    nqp_get_sc_object $P3184, "1305640898.961", 88
    .const 'Sub' $P3185 = "162_1305640904.321" 
    $P3183."add_method"($P3184, "new", $P3185)
    nqp_get_sc_object $P3186, "1305640898.961", 88
    get_how $P3187, $P3186
    nqp_get_sc_object $P3188, "1305640898.961", 88
    .const 'Sub' $P3189 = "163_1305640904.321" 
    $P3187."add_method"($P3188, "BUILD", $P3189)
    nqp_get_sc_object $P3190, "1305640898.961", 88
    get_how $P3191, $P3190
    nqp_get_sc_object $P3192, "1305640898.961", 88
    .const 'Sub' $P3193 = "164_1305640904.321" 
    $P3191."add_method"($P3192, "new_type", $P3193)
    nqp_get_sc_object $P3194, "1305640898.961", 88
    get_how $P3195, $P3194
    nqp_get_sc_object $P3196, "1305640898.961", 88
    .const 'Sub' $P3197 = "165_1305640904.321" 
    $P3195."add_method"($P3196, "add_method", $P3197)
    nqp_get_sc_object $P3198, "1305640898.961", 88
    get_how $P3199, $P3198
    nqp_get_sc_object $P3200, "1305640898.961", 88
    .const 'Sub' $P3201 = "166_1305640904.321" 
    $P3199."add_method"($P3200, "add_multi_method", $P3201)
    nqp_get_sc_object $P3202, "1305640898.961", 88
    get_how $P3203, $P3202
    nqp_get_sc_object $P3204, "1305640898.961", 88
    .const 'Sub' $P3205 = "167_1305640904.321" 
    $P3203."add_method"($P3204, "add_attribute", $P3205)
    nqp_get_sc_object $P3206, "1305640898.961", 88
    get_how $P3207, $P3206
    nqp_get_sc_object $P3208, "1305640898.961", 88
    .const 'Sub' $P3209 = "168_1305640904.321" 
    $P3207."add_method"($P3208, "compose", $P3209)
    nqp_get_sc_object $P3210, "1305640898.961", 88
    get_how $P3211, $P3210
    nqp_get_sc_object $P3212, "1305640898.961", 88
    .const 'Sub' $P3213 = "169_1305640904.321" 
    $P3211."add_method"($P3212, "name", $P3213)
    .const 'Sub' $P3214 = "161_1305640904.321" 
    $P3215 = $P3214."get_lexinfo"()
    nqp_get_sc_object $P3216, "1305640898.961", 88
    $P3215."set_static_lexpad_value"("$?PACKAGE", $P3216)
    .const 'Sub' $P3217 = "161_1305640904.321" 
    $P3218 = $P3217."get_lexinfo"()
    $P3218."finish_static_lexpad"()
    .const 'Sub' $P3219 = "161_1305640904.321" 
    $P3220 = $P3219."get_lexinfo"()
    nqp_get_sc_object $P3221, "1305640898.961", 88
    $P3220."set_static_lexpad_value"("$?CLASS", $P3221)
    .const 'Sub' $P3222 = "161_1305640904.321" 
    $P3223 = $P3222."get_lexinfo"()
    $P3223."finish_static_lexpad"()
    nqp_get_sc_object $P3224, "1305640898.961", 88
    get_how $P3225, $P3224
    nqp_get_sc_object $P3226, "1305640898.961", 88
    $P3225."compose"($P3226)
    nqp_get_sc_object $P3227, "__6MODEL_CORE__", 0
    $P3228 = $P3227."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3228, cur_sc
    nqp_set_sc_object "1305640898.961", 97, $P3228
    .const 'Sub' $P3229 = "10_1305640904.321" 
    $P3230 = $P3229."get_lexinfo"()
    nqp_get_sc_object $P3231, "1305640898.961", 97
    $P3230."set_static_lexpad_value"("EXPORTHOW", $P3231)
    .const 'Sub' $P3232 = "10_1305640904.321" 
    $P3233 = $P3232."get_lexinfo"()
    $P3233."finish_static_lexpad"()
    .const 'Sub' $P3234 = "170_1305640904.321" 
    $P3235 = $P3234."get_lexinfo"()
    nqp_get_sc_object $P3236, "1305640898.961", 97
    $P3235."set_static_lexpad_value"("$?PACKAGE", $P3236)
    .const 'Sub' $P3237 = "170_1305640904.321" 
    $P3238 = $P3237."get_lexinfo"()
    $P3238."finish_static_lexpad"()
    .const 'Sub' $P3239 = "170_1305640904.321" 
    $P3240 = $P3239."get_lexinfo"()
    nqp_get_sc_object $P3241, "1305640898.961", 97
    $P3240."set_static_lexpad_value"("$?CLASS", $P3241)
    .const 'Sub' $P3242 = "170_1305640904.321" 
    $P3243 = $P3242."get_lexinfo"()
    $P3243."finish_static_lexpad"()
    nqp_get_sc_object $P3244, "1305640898.961", 97
    get_how $P3245, $P3244
    nqp_get_sc_object $P3246, "1305640898.961", 97
    $P3245."compose"($P3246)
  if_2487_end:
    nqp_get_sc_object $P3568, "1305640898.961", 0
    set_hll_global "GLOBAL", $P3568
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block25"  :subid("11_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 7
    .const 'Sub' $P29 = "12_1305640904.321" 
    capture_lex $P29
    .lex "$?PACKAGE", $P27
    .lex "$?CLASS", $P28
.annotate 'line', 8
    .const 'Sub' $P29 = "12_1305640904.321" 
    newclosure $P247, $P29
.annotate 'line', 7
    .return ($P247)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("12_1305640904.321") :outer("11_1305640904.321")
    .param pmc param_32
    .param pmc param_33
    .param pmc param_34
.annotate 'line', 8
    .const 'Sub' $P174 = "18_1305640904.321" 
    capture_lex $P174
    .const 'Sub' $P132 = "17_1305640904.321" 
    capture_lex $P132
    .const 'Sub' $P118 = "16_1305640904.321" 
    capture_lex $P118
    .const 'Sub' $P45 = "13_1305640904.321" 
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
    unless_null $P39, vivify_173
    $P39 = root_new ['parrot';'Hash']
  vivify_173:
.annotate 'line', 11
    find_lex $P41, "@roles"
    unless_null $P41, vivify_174
    $P41 = root_new ['parrot';'ResizablePMCArray']
  vivify_174:
    defined $I42, $P41
    unless $I42, for_undef_175
    iter $P40, $P41
    new $P106, 'ExceptionHandler'
    set_label $P106, loop105_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop105_test:
    unless $P40, loop105_done
    shift $P43, $P40
  loop105_redo:
    .const 'Sub' $P45 = "13_1305640904.321" 
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
  for_undef_175:
    find_lex $P108, "%target_meth_info"
    unless_null $P108, vivify_199
    $P108 = root_new ['parrot';'Hash']
  vivify_199:
.annotate 'line', 37
    find_lex $P109, "$target"
    unless_null $P109, vivify_200
    new $P109, "Undef"
  vivify_200:
    get_how $P110, $P109
    find_lex $P111, "$target"
    unless_null $P111, vivify_201
    new $P111, "Undef"
  vivify_201:
    $P112 = $P110."methods"($P111)
    store_lex "@target_meths", $P112
.annotate 'line', 38
    find_lex $P114, "@target_meths"
    unless_null $P114, vivify_202
    $P114 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    defined $I115, $P114
    unless $I115, for_undef_203
    iter $P113, $P114
    new $P125, 'ExceptionHandler'
    set_label $P125, loop124_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop124_test:
    unless $P113, loop124_done
    shift $P116, $P113
  loop124_redo:
    .const 'Sub' $P118 = "16_1305640904.321" 
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
  for_undef_203:
.annotate 'line', 43
    find_lex $P128, "%meth_info"
    unless_null $P128, vivify_207
    $P128 = root_new ['parrot';'Hash']
  vivify_207:
    defined $I129, $P128
    unless $I129, for_undef_208
    iter $P127, $P128
    new $P166, 'ExceptionHandler'
    set_label $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    unless $P127, loop165_done
    shift $P130, $P127
  loop165_redo:
    .const 'Sub' $P132 = "17_1305640904.321" 
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
  for_undef_208:
    find_lex $P168, "@all_roles"
    unless_null $P168, vivify_225
    $P168 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
.annotate 'line', 63
    find_lex $P170, "@roles"
    unless_null $P170, vivify_226
    $P170 = root_new ['parrot';'ResizablePMCArray']
  vivify_226:
    defined $I171, $P170
    unless $I171, for_undef_227
    iter $P169, $P170
    new $P242, 'ExceptionHandler'
    set_label $P242, loop241_handler
    $P242."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P242
  loop241_test:
    unless $P169, loop241_done
    shift $P172, $P169
  loop241_redo:
    .const 'Sub' $P174 = "18_1305640904.321" 
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
  for_undef_227:
.annotate 'line', 92
    new $P244, "Exception"
    set $P244['type'], .CONTROL_RETURN
    find_lex $P245, "@all_roles"
    unless_null $P245, vivify_249
    $P245 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
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
.sub "_block44"  :anon :subid("13_1305640904.321") :outer("12_1305640904.321")
    .param pmc param_47
.annotate 'line', 11
    .const 'Sub' $P57 = "14_1305640904.321" 
    capture_lex $P57
.annotate 'line', 12
    $P46 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P46
    .lex "$_", param_47
    find_lex $P48, "$_"
    unless_null $P48, vivify_176
    new $P48, "Undef"
  vivify_176:
    get_how $P49, $P48
    find_lex $P50, "$_"
    unless_null $P50, vivify_177
    new $P50, "Undef"
  vivify_177:
    $P51 = $P49."methods"($P50)
    store_lex "@methods", $P51
.annotate 'line', 13
    find_lex $P53, "@methods"
    unless_null $P53, vivify_178
    $P53 = root_new ['parrot';'ResizablePMCArray']
  vivify_178:
    defined $I54, $P53
    unless $I54, for_undef_179
    iter $P52, $P53
    new $P103, 'ExceptionHandler'
    set_label $P103, loop102_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop102_test:
    unless $P52, loop102_done
    shift $P55, $P52
  loop102_redo:
    .const 'Sub' $P57 = "14_1305640904.321" 
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
  for_undef_179:
.annotate 'line', 11
    .return ($P52)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block56"  :anon :subid("14_1305640904.321") :outer("13_1305640904.321")
    .param pmc param_62
.annotate 'line', 13
    .const 'Sub' $P85 = "15_1305640904.321" 
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
    unless_null $P63, vivify_180
    new $P63, "Undef"
  vivify_180:
    set $S64, $P63
    new $P65, 'String'
    set $P65, $S64
    store_lex "$name", $P65
.annotate 'line', 15
    find_lex $P66, "$_"
    unless_null $P66, vivify_181
    new $P66, "Undef"
  vivify_181:
    store_lex "$meth", $P66
    find_lex $P67, "@meth_list"
    unless_null $P67, vivify_182
    $P67 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
.annotate 'line', 17
    find_lex $P69, "$name"
    unless_null $P69, vivify_183
    new $P69, "Undef"
  vivify_183:
    find_lex $P70, "%meth_info"
    unless_null $P70, vivify_184
    $P70 = root_new ['parrot';'Hash']
  vivify_184:
    set $P71, $P70[$P69]
    unless_null $P71, vivify_185
    new $P71, "Undef"
  vivify_185:
    defined $I72, $P71
    if $I72, if_68
.annotate 'line', 21
    find_lex $P76, "@meth_list"
    unless_null $P76, vivify_186
    $P76 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    find_lex $P77, "$name"
    unless_null $P77, vivify_187
    new $P77, "Undef"
  vivify_187:
    find_lex $P78, "%meth_info"
    unless_null $P78, vivify_188
    $P78 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P78
  vivify_188:
    set $P78[$P77], $P76
.annotate 'line', 20
    goto if_68_end
  if_68:
.annotate 'line', 18
    find_lex $P73, "$name"
    unless_null $P73, vivify_189
    new $P73, "Undef"
  vivify_189:
    find_lex $P74, "%meth_info"
    unless_null $P74, vivify_190
    $P74 = root_new ['parrot';'Hash']
  vivify_190:
    set $P75, $P74[$P73]
    unless_null $P75, vivify_191
    new $P75, "Undef"
  vivify_191:
    store_lex "@meth_list", $P75
  if_68_end:
.annotate 'line', 23
    new $P79, "Integer"
    assign $P79, 0
    store_lex "$found", $P79
.annotate 'line', 24
    find_lex $P81, "@meth_list"
    unless_null $P81, vivify_192
    $P81 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    defined $I82, $P81
    unless $I82, for_undef_193
    iter $P80, $P81
    new $P94, 'ExceptionHandler'
    set_label $P94, loop93_handler
    $P94."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P94
  loop93_test:
    unless $P80, loop93_done
    shift $P83, $P80
  loop93_redo:
    .const 'Sub' $P85 = "15_1305640904.321" 
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
  for_undef_193:
.annotate 'line', 29
    find_lex $P98, "$found"
    unless_null $P98, vivify_196
    new $P98, "Undef"
  vivify_196:
    unless $P98, unless_97
    set $P96, $P98
    goto unless_97_end
  unless_97:
.annotate 'line', 30
    find_lex $P99, "@meth_list"
    unless_null $P99, vivify_197
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    find_lex $P100, "$meth"
    unless_null $P100, vivify_198
    new $P100, "Undef"
  vivify_198:
    $P101 = $P99."push"($P100)
.annotate 'line', 29
    set $P96, $P101
  unless_97_end:
.annotate 'line', 13
    .return ($P96)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block84"  :anon :subid("15_1305640904.321") :outer("14_1305640904.321")
    .param pmc param_86
.annotate 'line', 24
    .lex "$_", param_86
.annotate 'line', 25
    find_lex $P89, "$meth"
    unless_null $P89, vivify_194
    new $P89, "Undef"
  vivify_194:
    find_lex $P90, "$_"
    unless_null $P90, vivify_195
    new $P90, "Undef"
  vivify_195:
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
.sub "_block117"  :anon :subid("16_1305640904.321") :outer("12_1305640904.321")
    .param pmc param_119
.annotate 'line', 38
    .lex "$_", param_119
.annotate 'line', 39
    find_lex $P120, "$_"
    unless_null $P120, vivify_204
    new $P120, "Undef"
  vivify_204:
    find_lex $P121, "$_"
    unless_null $P121, vivify_205
    new $P121, "Undef"
  vivify_205:
    set $S122, $P121
    find_lex $P123, "%target_meth_info"
    unless_null $P123, vivify_206
    $P123 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P123
  vivify_206:
    set $P123[$S122], $P120
.annotate 'line', 38
    .return ($P120)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block131"  :anon :subid("17_1305640904.321") :outer("12_1305640904.321")
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
    unless_null $P136, vivify_209
    new $P136, "Undef"
  vivify_209:
    set $S137, $P136
    new $P138, 'String'
    set $P138, $S137
    store_lex "$name", $P138
.annotate 'line', 45
    find_lex $P139, "$name"
    unless_null $P139, vivify_210
    new $P139, "Undef"
  vivify_210:
    find_lex $P140, "%meth_info"
    unless_null $P140, vivify_211
    $P140 = root_new ['parrot';'Hash']
  vivify_211:
    set $P141, $P140[$P139]
    unless_null $P141, vivify_212
    new $P141, "Undef"
  vivify_212:
    store_lex "@add_meths", $P141
.annotate 'line', 49
    find_lex $P144, "$name"
    unless_null $P144, vivify_213
    new $P144, "Undef"
  vivify_213:
    find_lex $P145, "%target_meth_info"
    unless_null $P145, vivify_214
    $P145 = root_new ['parrot';'Hash']
  vivify_214:
    set $P146, $P145[$P144]
    unless_null $P146, vivify_215
    new $P146, "Undef"
  vivify_215:
    defined $I147, $P146
    unless $I147, unless_143
    new $P142, 'Integer'
    set $P142, $I147
    goto unless_143_end
  unless_143:
.annotate 'line', 51
    find_lex $P150, "@add_meths"
    unless_null $P150, vivify_216
    $P150 = root_new ['parrot';'ResizablePMCArray']
  vivify_216:
    set $N151, $P150
    iseq $I152, $N151, 1.0
    if $I152, if_149
.annotate 'line', 56
    find_lex $P160, "$target"
    unless_null $P160, vivify_217
    new $P160, "Undef"
  vivify_217:
    get_how $P161, $P160
    find_lex $P162, "$target"
    unless_null $P162, vivify_218
    new $P162, "Undef"
  vivify_218:
    find_lex $P163, "$name"
    unless_null $P163, vivify_219
    new $P163, "Undef"
  vivify_219:
    $P164 = $P161."add_collision"($P162, $P163)
.annotate 'line', 54
    set $P148, $P164
.annotate 'line', 51
    goto if_149_end
  if_149:
.annotate 'line', 52
    find_lex $P153, "$target"
    unless_null $P153, vivify_220
    new $P153, "Undef"
  vivify_220:
    get_how $P154, $P153
    find_lex $P155, "$target"
    unless_null $P155, vivify_221
    new $P155, "Undef"
  vivify_221:
    find_lex $P156, "$name"
    unless_null $P156, vivify_222
    new $P156, "Undef"
  vivify_222:
    find_lex $P157, "@add_meths"
    unless_null $P157, vivify_223
    $P157 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
    set $P158, $P157[0]
    unless_null $P158, vivify_224
    new $P158, "Undef"
  vivify_224:
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
.sub "_block173"  :anon :subid("18_1305640904.321") :outer("12_1305640904.321")
    .param pmc param_177
.annotate 'line', 63
    .const 'Sub' $P188 = "19_1305640904.321" 
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
    unless_null $P178, vivify_228
    new $P178, "Undef"
  vivify_228:
    get_how $P179, $P178
    store_lex "$how", $P179
.annotate 'line', 67
    find_lex $P180, "$how"
    unless_null $P180, vivify_229
    new $P180, "Undef"
  vivify_229:
    find_lex $P181, "$_"
    unless_null $P181, vivify_230
    new $P181, "Undef"
  vivify_230:
    $P182 = $P180."attributes"($P181)
    store_lex "@attributes", $P182
.annotate 'line', 68
    find_lex $P184, "@attributes"
    unless_null $P184, vivify_231
    $P184 = root_new ['parrot';'ResizablePMCArray']
  vivify_231:
    defined $I185, $P184
    unless $I185, for_undef_232
    iter $P183, $P184
    new $P236, 'ExceptionHandler'
    set_label $P236, loop235_handler
    $P236."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P236
  loop235_test:
    unless $P183, loop235_done
    shift $P186, $P183
  loop235_redo:
    .const 'Sub' $P188 = "19_1305640904.321" 
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
  for_undef_232:
.annotate 'line', 89
    find_lex $P238, "@all_roles"
    unless_null $P238, vivify_247
    $P238 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    find_lex $P239, "$_"
    unless_null $P239, vivify_248
    new $P239, "Undef"
  vivify_248:
    $P240 = $P238."push"($P239)
.annotate 'line', 63
    .return ($P240)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block187"  :anon :subid("19_1305640904.321") :outer("18_1305640904.321")
    .param pmc param_192
.annotate 'line', 68
    .const 'Sub' $P204 = "20_1305640904.321" 
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
    unless_null $P193, vivify_233
    new $P193, "Undef"
  vivify_233:
    store_lex "$add_attr", $P193
.annotate 'line', 70
    new $P194, "Integer"
    assign $P194, 0
    store_lex "$skip", $P194
.annotate 'line', 71
    find_lex $P195, "$target"
    unless_null $P195, vivify_234
    new $P195, "Undef"
  vivify_234:
    get_how $P196, $P195
    find_lex $P197, "$target"
    unless_null $P197, vivify_235
    new $P197, "Undef"
  vivify_235:
    $P198 = $P196."attributes"($P197)
    store_lex "@cur_attrs", $P198
.annotate 'line', 72
    find_lex $P200, "@cur_attrs"
    unless_null $P200, vivify_236
    $P200 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    defined $I201, $P200
    unless $I201, for_undef_237
    iter $P199, $P200
    new $P225, 'ExceptionHandler'
    set_label $P225, loop224_handler
    $P225."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P225
  loop224_test:
    unless $P199, loop224_done
    shift $P202, $P199
  loop224_redo:
    .const 'Sub' $P204 = "20_1305640904.321" 
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
  for_undef_237:
.annotate 'line', 82
    find_lex $P229, "$skip"
    unless_null $P229, vivify_243
    new $P229, "Undef"
  vivify_243:
    unless $P229, unless_228
    set $P227, $P229
    goto unless_228_end
  unless_228:
.annotate 'line', 83
    find_lex $P230, "$target"
    unless_null $P230, vivify_244
    new $P230, "Undef"
  vivify_244:
    get_how $P231, $P230
    find_lex $P232, "$target"
    unless_null $P232, vivify_245
    new $P232, "Undef"
  vivify_245:
    find_lex $P233, "$add_attr"
    unless_null $P233, vivify_246
    new $P233, "Undef"
  vivify_246:
    $P234 = $P231."add_attribute"($P232, $P233)
.annotate 'line', 82
    set $P227, $P234
  unless_228_end:
.annotate 'line', 68
    .return ($P227)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block203"  :anon :subid("20_1305640904.321") :outer("19_1305640904.321")
    .param pmc param_205
.annotate 'line', 72
    .lex "$_", param_205
.annotate 'line', 73
    find_lex $P208, "$_"
    unless_null $P208, vivify_238
    new $P208, "Undef"
  vivify_238:
    find_lex $P209, "$add_attr"
    unless_null $P209, vivify_239
    new $P209, "Undef"
  vivify_239:
    issame $I210, $P208, $P209
    if $I210, if_207
.annotate 'line', 77
    find_lex $P214, "$_"
    unless_null $P214, vivify_240
    new $P214, "Undef"
  vivify_240:
    $S215 = $P214."name"()
    find_lex $P216, "$add_attr"
    unless_null $P216, vivify_241
    new $P216, "Undef"
  vivify_241:
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
    unless_null $P220, vivify_242
    new $P220, "Undef"
  vivify_242:
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
.sub "_block248"  :subid("21_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 99
    .const 'Sub' $P501 = "41_1305640904.321" 
    capture_lex $P501
    .const 'Sub' $P495 = "40_1305640904.321" 
    capture_lex $P495
    .const 'Sub' $P471 = "38_1305640904.321" 
    capture_lex $P471
    .const 'Sub' $P465 = "37_1305640904.321" 
    capture_lex $P465
    .const 'Sub' $P459 = "36_1305640904.321" 
    capture_lex $P459
    .const 'Sub' $P453 = "35_1305640904.321" 
    capture_lex $P453
    .const 'Sub' $P429 = "33_1305640904.321" 
    capture_lex $P429
    .const 'Sub' $P380 = "31_1305640904.321" 
    capture_lex $P380
    .const 'Sub' $P367 = "30_1305640904.321" 
    capture_lex $P367
    .const 'Sub' $P354 = "29_1305640904.321" 
    capture_lex $P354
    .const 'Sub' $P350 = "28_1305640904.321" 
    capture_lex $P350
    .const 'Sub' $P329 = "27_1305640904.321" 
    capture_lex $P329
    .const 'Sub' $P308 = "26_1305640904.321" 
    capture_lex $P308
    .const 'Sub' $P289 = "25_1305640904.321" 
    capture_lex $P289
    .const 'Sub' $P273 = "24_1305640904.321" 
    capture_lex $P273
    .const 'Sub' $P263 = "23_1305640904.321" 
    capture_lex $P263
    .const 'Sub' $P252 = "22_1305640904.321" 
    capture_lex $P252
    .lex "$?PACKAGE", $P250
    .lex "$?CLASS", $P251
.annotate 'line', 238
    .const 'Sub' $P501 = "41_1305640904.321" 
    newclosure $P507, $P501
.annotate 'line', 99
    .return ($P507)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1305640904.321") :outer("21_1305640904.321")
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
    unless_null $P259, vivify_250
    new $P259, "Undef"
  vivify_250:
    find_lex $P260, "$name"
    unless_null $P260, vivify_251
    new $P260, "Undef"
  vivify_251:
    find_lex $P261, "$instance_of"
    unless_null $P261, vivify_252
    new $P261, "Undef"
  vivify_252:
    $P259."BUILD"($P260 :named("name"), $P261 :named("instance_of"))
    find_lex $P262, "$obj"
    unless_null $P262, vivify_253
    new $P262, "Undef"
  vivify_253:
.annotate 'line', 131
    .return ($P262)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_264
    .param pmc param_265 :named("name")
    .param pmc param_266 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_264
    .lex "$name", param_265
    .lex "$instance_of", param_266
.annotate 'line', 138
    find_lex $P267, "$name"
    unless_null $P267, vivify_254
    new $P267, "Undef"
  vivify_254:
    find_lex $P268, "self"
    find_lex $P269, "$?CLASS"
    setattribute $P268, $P269, "$!name", $P267
.annotate 'line', 139
    find_lex $P270, "$instance_of"
    unless_null $P270, vivify_255
    new $P270, "Undef"
  vivify_255:
    find_lex $P271, "self"
    find_lex $P272, "$?CLASS"
    setattribute $P271, $P272, "$!instance_of", $P270
.annotate 'line', 137
    .return ($P270)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_274
    .param pmc param_279 :named("instance_of")
    .param pmc param_275 :optional :named("name")
    .param int has_param_275 :opt_flag
    .param pmc param_277 :optional :named("repr")
    .param int has_param_277 :opt_flag
.annotate 'line', 144
    .lex "self", param_274
    if has_param_275, optparam_256
    new $P276, "String"
    assign $P276, "<anon>"
    set param_275, $P276
  optparam_256:
    .lex "$name", param_275
    if has_param_277, optparam_257
    new $P278, "String"
    assign $P278, "P6opaque"
    set param_277, $P278
  optparam_257:
    .lex "$repr", param_277
    .lex "$instance_of", param_279
.annotate 'line', 145
    new $P280, "Undef"
    .lex "$metarole", $P280
    find_lex $P281, "self"
    find_lex $P282, "$name"
    unless_null $P282, vivify_258
    new $P282, "Undef"
  vivify_258:
    find_lex $P283, "$instance_of"
    unless_null $P283, vivify_259
    new $P283, "Undef"
  vivify_259:
    $P284 = $P281."new"($P282 :named("name"), $P283 :named("instance_of"))
    store_lex "$metarole", $P284
.annotate 'line', 146
    find_lex $P285, "$metarole"
    unless_null $P285, vivify_260
    new $P285, "Undef"
  vivify_260:
    find_lex $P286, "$repr"
    unless_null $P286, vivify_261
    new $P286, "Undef"
  vivify_261:
    set $S287, $P286
    repr_type_object_for $P288, $P285, $S287
.annotate 'line', 144
    .return ($P288)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1305640904.321") :outer("21_1305640904.321")
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
    unless_null $P295, vivify_262
    new $P295, "Undef"
  vivify_262:
    find_lex $P296, "self"
    find_lex $P297, "$?CLASS"
    getattribute $P298, $P296, $P297, "%!methods"
    unless_null $P298, vivify_263
    $P298 = root_new ['parrot';'Hash']
  vivify_263:
    set $P299, $P298[$P295]
    unless_null $P299, vivify_264
    new $P299, "Undef"
  vivify_264:
    unless $P299, if_294_end
.annotate 'line', 151
    new $P300, "String"
    assign $P300, "This role already has a method named "
    find_lex $P301, "$name"
    unless_null $P301, vivify_265
    new $P301, "Undef"
  vivify_265:
    concat $P302, $P300, $P301
    die $P302
  if_294_end:
.annotate 'line', 153
    find_lex $P303, "$code_obj"
    unless_null $P303, vivify_266
    new $P303, "Undef"
  vivify_266:
    find_lex $P304, "$name"
    unless_null $P304, vivify_267
    new $P304, "Undef"
  vivify_267:
    find_lex $P305, "self"
    find_lex $P306, "$?CLASS"
    getattribute $P307, $P305, $P306, "%!methods"
    unless_null $P307, vivify_268
    $P307 = root_new ['parrot';'Hash']
    setattribute $P305, $P306, "%!methods", $P307
  vivify_268:
    set $P307[$P304], $P303
.annotate 'line', 149
    .return ($P303)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1305640904.321") :outer("21_1305640904.321")
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
    unless_null $P314, vivify_269
    $P314 = root_new ['parrot';'Hash']
  vivify_269:
.annotate 'line', 158
    find_lex $P315, "$name"
    unless_null $P315, vivify_270
    new $P315, "Undef"
  vivify_270:
    find_lex $P316, "%todo"
    unless_null $P316, vivify_271
    $P316 = root_new ['parrot';'Hash']
    store_lex "%todo", $P316
  vivify_271:
    set $P316["name"], $P315
.annotate 'line', 159
    find_lex $P317, "$code_obj"
    unless_null $P317, vivify_272
    new $P317, "Undef"
  vivify_272:
    find_lex $P318, "%todo"
    unless_null $P318, vivify_273
    $P318 = root_new ['parrot';'Hash']
    store_lex "%todo", $P318
  vivify_273:
    set $P318["code"], $P317
.annotate 'line', 160
    find_lex $P319, "%todo"
    unless_null $P319, vivify_274
    $P319 = root_new ['parrot';'Hash']
  vivify_274:
    find_lex $P320, "self"
    find_lex $P321, "$?CLASS"
    getattribute $P322, $P320, $P321, "@!multi_methods_to_incorporate"
    unless_null $P322, vivify_275
    $P322 = root_new ['parrot';'ResizablePMCArray']
  vivify_275:
    set $N323, $P322
    set $I324, $N323
    find_lex $P325, "self"
    find_lex $P326, "$?CLASS"
    getattribute $P327, $P325, $P326, "@!multi_methods_to_incorporate"
    unless_null $P327, vivify_276
    $P327 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P325, $P326, "@!multi_methods_to_incorporate", $P327
  vivify_276:
    set $P327[$I324], $P319
    find_lex $P328, "$code_obj"
    unless_null $P328, vivify_277
    new $P328, "Undef"
  vivify_277:
.annotate 'line', 156
    .return ($P328)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1305640904.321") :outer("21_1305640904.321")
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
    unless_null $P334, vivify_278
    new $P334, "Undef"
  vivify_278:
    $P335 = $P334."name"()
    store_lex "$name", $P335
.annotate 'line', 166
    find_lex $P337, "$name"
    unless_null $P337, vivify_279
    new $P337, "Undef"
  vivify_279:
    find_lex $P338, "self"
    find_lex $P339, "$?CLASS"
    getattribute $P340, $P338, $P339, "%!attributes"
    unless_null $P340, vivify_280
    $P340 = root_new ['parrot';'Hash']
  vivify_280:
    set $P341, $P340[$P337]
    unless_null $P341, vivify_281
    new $P341, "Undef"
  vivify_281:
    unless $P341, if_336_end
.annotate 'line', 167
    new $P342, "String"
    assign $P342, "This role already has an attribute named "
    find_lex $P343, "$name"
    unless_null $P343, vivify_282
    new $P343, "Undef"
  vivify_282:
    concat $P344, $P342, $P343
    die $P344
  if_336_end:
.annotate 'line', 169
    find_lex $P345, "$meta_attr"
    unless_null $P345, vivify_283
    new $P345, "Undef"
  vivify_283:
    find_lex $P346, "$name"
    unless_null $P346, vivify_284
    new $P346, "Undef"
  vivify_284:
    find_lex $P347, "self"
    find_lex $P348, "$?CLASS"
    getattribute $P349, $P347, $P348, "%!attributes"
    unless_null $P349, vivify_285
    $P349 = root_new ['parrot';'Hash']
    setattribute $P347, $P348, "%!attributes", $P349
  vivify_285:
    set $P349[$P346], $P345
.annotate 'line', 164
    .return ($P345)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1305640904.321") :outer("21_1305640904.321")
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
.sub "add_role" :anon :subid("29_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357
.annotate 'line', 176
    .lex "self", param_355
    .lex "$obj", param_356
    .lex "$role", param_357
.annotate 'line', 177
    find_lex $P358, "$role"
    unless_null $P358, vivify_286
    new $P358, "Undef"
  vivify_286:
    find_lex $P359, "self"
    find_lex $P360, "$?CLASS"
    getattribute $P361, $P359, $P360, "@!roles"
    unless_null $P361, vivify_287
    $P361 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    set $N362, $P361
    set $I363, $N362
    find_lex $P364, "self"
    find_lex $P365, "$?CLASS"
    getattribute $P366, $P364, $P365, "@!roles"
    unless_null $P366, vivify_288
    $P366 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P364, $P365, "@!roles", $P366
  vivify_288:
    set $P366[$I363], $P358
.annotate 'line', 176
    .return ($P358)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_368
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 180
    .lex "self", param_368
    .lex "$obj", param_369
    .lex "$colliding_name", param_370
.annotate 'line', 181
    find_lex $P371, "$colliding_name"
    unless_null $P371, vivify_289
    new $P371, "Undef"
  vivify_289:
    find_lex $P372, "self"
    find_lex $P373, "$?CLASS"
    getattribute $P374, $P372, $P373, "@!collisions"
    unless_null $P374, vivify_290
    $P374 = root_new ['parrot';'ResizablePMCArray']
  vivify_290:
    set $N375, $P374
    set $I376, $N375
    find_lex $P377, "self"
    find_lex $P378, "$?CLASS"
    getattribute $P379, $P377, $P378, "@!collisions"
    unless_null $P379, vivify_291
    $P379 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P377, $P378, "@!collisions", $P379
  vivify_291:
    set $P379[$I376], $P371
.annotate 'line', 180
    .return ($P371)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 185
    .const 'Sub' $P394 = "32_1305640904.321" 
    capture_lex $P394
    .lex "self", param_381
    .lex "$obj", param_382
.annotate 'line', 188
    find_lex $P384, "self"
    find_lex $P385, "$?CLASS"
    getattribute $P386, $P384, $P385, "@!roles"
    unless_null $P386, vivify_292
    $P386 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    unless $P386, if_383_end
.annotate 'line', 189
    find_lex $P388, "self"
    find_lex $P389, "$?CLASS"
    getattribute $P390, $P388, $P389, "@!roles"
    unless_null $P390, vivify_293
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_293:
    defined $I391, $P390
    unless $I391, for_undef_294
    iter $P387, $P390
    new $P418, 'ExceptionHandler'
    set_label $P418, loop417_handler
    $P418."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P418
  loop417_test:
    unless $P387, loop417_done
    shift $P392, $P387
  loop417_redo:
    .const 'Sub' $P394 = "32_1305640904.321" 
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
  for_undef_294:
.annotate 'line', 193
    find_lex $P420, "RoleToRoleApplier"
    find_lex $P421, "$obj"
    unless_null $P421, vivify_302
    new $P421, "Undef"
  vivify_302:
    find_lex $P422, "self"
    find_lex $P423, "$?CLASS"
    getattribute $P424, $P422, $P423, "@!roles"
    unless_null $P424, vivify_303
    $P424 = root_new ['parrot';'ResizablePMCArray']
  vivify_303:
    $P420."apply"($P421, $P424)
  if_383_end:
.annotate 'line', 197
    new $P425, "Integer"
    assign $P425, 1
    find_lex $P426, "self"
    find_lex $P427, "$?CLASS"
    setattribute $P426, $P427, "$!composed", $P425
    find_lex $P428, "$obj"
    unless_null $P428, vivify_304
    new $P428, "Undef"
  vivify_304:
.annotate 'line', 185
    .return ($P428)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block393"  :anon :subid("32_1305640904.321") :outer("31_1305640904.321")
    .param pmc param_395
.annotate 'line', 189
    .lex "$_", param_395
.annotate 'line', 190
    find_lex $P396, "$_"
    unless_null $P396, vivify_295
    new $P396, "Undef"
  vivify_295:
    find_lex $P397, "self"
    find_lex $P398, "$?CLASS"
    getattribute $P399, $P397, $P398, "@!done"
    unless_null $P399, vivify_296
    $P399 = root_new ['parrot';'ResizablePMCArray']
  vivify_296:
    set $N400, $P399
    set $I401, $N400
    find_lex $P402, "self"
    find_lex $P403, "$?CLASS"
    getattribute $P404, $P402, $P403, "@!done"
    unless_null $P404, vivify_297
    $P404 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P402, $P403, "@!done", $P404
  vivify_297:
    set $P404[$I401], $P396
.annotate 'line', 191
    find_lex $P405, "$_"
    unless_null $P405, vivify_298
    new $P405, "Undef"
  vivify_298:
    get_how $P406, $P405
    find_lex $P407, "$_"
    unless_null $P407, vivify_299
    new $P407, "Undef"
  vivify_299:
    $P408 = $P406."instance_of"($P407)
    find_lex $P409, "self"
    find_lex $P410, "$?CLASS"
    getattribute $P411, $P409, $P410, "@!done"
    unless_null $P411, vivify_300
    $P411 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
    set $N412, $P411
    set $I413, $N412
    find_lex $P414, "self"
    find_lex $P415, "$?CLASS"
    getattribute $P416, $P414, $P415, "@!done"
    unless_null $P416, vivify_301
    $P416 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P414, $P415, "@!done", $P416
  vivify_301:
    set $P416[$I413], $P408
.annotate 'line', 189
    .return ($P408)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("33_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_430
    .param pmc param_431
    .param pmc param_432 :optional :named("local")
    .param int has_param_432 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P443 = "34_1305640904.321" 
    capture_lex $P443
    .lex "self", param_430
    .lex "$obj", param_431
    if has_param_432, optparam_305
    new $P433, "Undef"
    set param_432, $P433
  optparam_305:
    .lex "$local", param_432
.annotate 'line', 207
    $P434 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P434
.annotate 'line', 206
    find_lex $P435, "@meths"
    unless_null $P435, vivify_306
    $P435 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
.annotate 'line', 208
    find_lex $P437, "self"
    find_lex $P438, "$?CLASS"
    getattribute $P439, $P437, $P438, "%!methods"
    unless_null $P439, vivify_307
    $P439 = root_new ['parrot';'Hash']
  vivify_307:
    defined $I440, $P439
    unless $I440, for_undef_308
    iter $P436, $P439
    new $P450, 'ExceptionHandler'
    set_label $P450, loop449_handler
    $P450."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P450
  loop449_test:
    unless $P436, loop449_done
    shift $P441, $P436
  loop449_redo:
    .const 'Sub' $P443 = "34_1305640904.321" 
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
  for_undef_308:
    find_lex $P452, "@meths"
    unless_null $P452, vivify_311
    $P452 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
.annotate 'line', 206
    .return ($P452)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block442"  :anon :subid("34_1305640904.321") :outer("33_1305640904.321")
    .param pmc param_444
.annotate 'line', 208
    .lex "$_", param_444
.annotate 'line', 209
    find_lex $P445, "@meths"
    unless_null $P445, vivify_309
    $P445 = root_new ['parrot';'ResizablePMCArray']
  vivify_309:
    find_lex $P446, "$_"
    unless_null $P446, vivify_310
    new $P446, "Undef"
  vivify_310:
    $P447 = $P446."value"()
    $P448 = $P445."push"($P447)
.annotate 'line', 208
    .return ($P448)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("35_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_454
    .param pmc param_455
.annotate 'line', 214
    .lex "self", param_454
    .lex "$obj", param_455
    find_lex $P456, "self"
    find_lex $P457, "$?CLASS"
    getattribute $P458, $P456, $P457, "%!methods"
    unless_null $P458, vivify_312
    $P458 = root_new ['parrot';'Hash']
  vivify_312:
    .return ($P458)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions" :anon :subid("36_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_460
    .param pmc param_461
.annotate 'line', 218
    .lex "self", param_460
    .lex "$obj", param_461
    find_lex $P462, "self"
    find_lex $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "@!collisions"
    unless_null $P464, vivify_313
    $P464 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    .return ($P464)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name" :anon :subid("37_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_466
    .param pmc param_467
.annotate 'line', 222
    .lex "self", param_466
    .lex "$obj", param_467
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "$!name"
    unless_null $P470, vivify_314
    new $P470, "Undef"
  vivify_314:
    .return ($P470)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("38_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_472
    .param pmc param_473
    .param pmc param_474 :optional :named("local")
    .param int has_param_474 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P485 = "39_1305640904.321" 
    capture_lex $P485
    .lex "self", param_472
    .lex "$obj", param_473
    if has_param_474, optparam_315
    new $P475, "Undef"
    set param_474, $P475
  optparam_315:
    .lex "$local", param_474
.annotate 'line', 227
    $P476 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P476
.annotate 'line', 226
    find_lex $P477, "@attrs"
    unless_null $P477, vivify_316
    $P477 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 228
    find_lex $P479, "self"
    find_lex $P480, "$?CLASS"
    getattribute $P481, $P479, $P480, "%!attributes"
    unless_null $P481, vivify_317
    $P481 = root_new ['parrot';'Hash']
  vivify_317:
    defined $I482, $P481
    unless $I482, for_undef_318
    iter $P478, $P481
    new $P492, 'ExceptionHandler'
    set_label $P492, loop491_handler
    $P492."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P492
  loop491_test:
    unless $P478, loop491_done
    shift $P483, $P478
  loop491_redo:
    .const 'Sub' $P485 = "39_1305640904.321" 
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
  for_undef_318:
    find_lex $P494, "@attrs"
    unless_null $P494, vivify_321
    $P494 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
.annotate 'line', 226
    .return ($P494)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block484"  :anon :subid("39_1305640904.321") :outer("38_1305640904.321")
    .param pmc param_486
.annotate 'line', 228
    .lex "$_", param_486
.annotate 'line', 229
    find_lex $P487, "@attrs"
    unless_null $P487, vivify_319
    $P487 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
    find_lex $P488, "$_"
    unless_null $P488, vivify_320
    new $P488, "Undef"
  vivify_320:
    $P489 = $P488."value"()
    $P490 = $P487."push"($P489)
.annotate 'line', 228
    .return ($P490)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("40_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_496
    .param pmc param_497
.annotate 'line', 234
    .lex "self", param_496
    .lex "$obj", param_497
    find_lex $P498, "self"
    find_lex $P499, "$?CLASS"
    getattribute $P500, $P498, $P499, "@!roles"
    unless_null $P500, vivify_322
    $P500 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    .return ($P500)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of" :anon :subid("41_1305640904.321") :outer("21_1305640904.321")
    .param pmc param_502
    .param pmc param_503
.annotate 'line', 238
    .lex "self", param_502
    .lex "$obj", param_503
    find_lex $P504, "self"
    find_lex $P505, "$?CLASS"
    getattribute $P506, $P504, $P505, "$!instance_of"
    unless_null $P506, vivify_323
    new $P506, "Undef"
  vivify_323:
    .return ($P506)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block508"  :subid("42_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 244
    .const 'Sub' $P582 = "47_1305640904.321" 
    capture_lex $P582
    .const 'Sub' $P545 = "45_1305640904.321" 
    capture_lex $P545
    .const 'Sub' $P510 = "43_1305640904.321" 
    capture_lex $P510
.annotate 'line', 246
    .const 'Sub' $P510 = "43_1305640904.321" 
    newclosure $P544, $P510
    .lex "has_method", $P544
.annotate 'line', 254
    .const 'Sub' $P545 = "45_1305640904.321" 
    newclosure $P577, $P545
    .lex "has_attribute", $P577
.annotate 'line', 244
    .lex "$?PACKAGE", $P578
    .lex "$?CLASS", $P579
    find_lex $P580, "has_method"
    find_lex $P581, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P582 = "47_1305640904.321" 
    newclosure $P720, $P582
.annotate 'line', 244
    .return ($P720)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1305640904.321") :outer("42_1305640904.321")
    .param pmc param_513
    .param pmc param_514
    .param pmc param_515
.annotate 'line', 246
    .const 'Sub' $P527 = "44_1305640904.321" 
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
    unless_null $P517, vivify_324
    new $P517, "Undef"
  vivify_324:
    get_how $P518, $P517
    find_lex $P519, "$target"
    unless_null $P519, vivify_325
    new $P519, "Undef"
  vivify_325:
    find_lex $P520, "$local"
    unless_null $P520, vivify_326
    new $P520, "Undef"
  vivify_326:
    $P521 = $P518."methods"($P519, $P520 :named("local"))
    store_lex "@methods", $P521
.annotate 'line', 248
    find_lex $P523, "@methods"
    unless_null $P523, vivify_327
    $P523 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    defined $I524, $P523
    unless $I524, for_undef_328
    iter $P522, $P523
    new $P539, 'ExceptionHandler'
    set_label $P539, loop538_handler
    $P539."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P539
  loop538_test:
    unless $P522, loop538_done
    shift $P525, $P522
  loop538_redo:
    .const 'Sub' $P527 = "44_1305640904.321" 
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
  for_undef_328:
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
.sub "_block526"  :anon :subid("44_1305640904.321") :outer("43_1305640904.321")
    .param pmc param_528
.annotate 'line', 248
    .lex "$_", param_528
.annotate 'line', 249
    find_lex $P531, "$_"
    unless_null $P531, vivify_329
    new $P531, "Undef"
  vivify_329:
    set $S532, $P531
    find_lex $P533, "$name"
    unless_null $P533, vivify_330
    new $P533, "Undef"
  vivify_330:
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
.sub "has_attribute"  :subid("45_1305640904.321") :outer("42_1305640904.321")
    .param pmc param_548
    .param pmc param_549
.annotate 'line', 254
    .const 'Sub' $P560 = "46_1305640904.321" 
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
    unless_null $P551, vivify_331
    new $P551, "Undef"
  vivify_331:
    get_how $P552, $P551
    find_lex $P553, "$target"
    unless_null $P553, vivify_332
    new $P553, "Undef"
  vivify_332:
    $P554 = $P552."attributes"($P553, 1 :named("local"))
    store_lex "@attributes", $P554
.annotate 'line', 256
    find_lex $P556, "@attributes"
    unless_null $P556, vivify_333
    $P556 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    defined $I557, $P556
    unless $I557, for_undef_334
    iter $P555, $P556
    new $P572, 'ExceptionHandler'
    set_label $P572, loop571_handler
    $P572."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P572
  loop571_test:
    unless $P555, loop571_done
    shift $P558, $P555
  loop571_redo:
    .const 'Sub' $P560 = "46_1305640904.321" 
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
  for_undef_334:
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
.sub "_block559"  :anon :subid("46_1305640904.321") :outer("45_1305640904.321")
    .param pmc param_561
.annotate 'line', 256
    .lex "$_", param_561
.annotate 'line', 257
    find_lex $P564, "$_"
    unless_null $P564, vivify_335
    new $P564, "Undef"
  vivify_335:
    $S565 = $P564."name"()
    find_lex $P566, "$name"
    unless_null $P566, vivify_336
    new $P566, "Undef"
  vivify_336:
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
.sub "apply" :anon :subid("47_1305640904.321") :outer("42_1305640904.321")
    .param pmc param_583
    .param pmc param_584
    .param pmc param_585
.annotate 'line', 262
    .const 'Sub' $P691 = "51_1305640904.321" 
    capture_lex $P691
    .const 'Sub' $P665 = "50_1305640904.321" 
    capture_lex $P665
    .const 'Sub' $P636 = "49_1305640904.321" 
    capture_lex $P636
    .const 'Sub' $P616 = "48_1305640904.321" 
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
    unless_null $P592, vivify_337
    new $P592, "Undef"
  vivify_337:
    find_lex $P593, "$to_compose_meta"
    unless_null $P593, vivify_338
    new $P593, "Undef"
  vivify_338:
.annotate 'line', 267
    find_lex $P595, "@roles"
    unless_null $P595, vivify_339
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N596, $P595
    iseq $I597, $N596, 1.0
    if $I597, if_594
.annotate 'line', 272
    find_lex $P602, "NQPConcreteRoleHOW"
    find_lex $P603, "$?PACKAGE"
    get_who $P604, $P603
    set $P607, $P604["NQPMu"]
    unless_null $P607, vivify_340
    get_hll_global $P605, "GLOBAL"
    get_who $P606, $P605
    set $P607, $P606["NQPMu"]
  vivify_340:
    $P608 = $P602."new_type"($P607 :named("instance_of"))
    store_lex "$to_compose", $P608
.annotate 'line', 273
    find_lex $P609, "$to_compose"
    unless_null $P609, vivify_341
    new $P609, "Undef"
  vivify_341:
    get_how $P610, $P609
    store_lex "$to_compose_meta", $P610
.annotate 'line', 274
    find_lex $P612, "@roles"
    unless_null $P612, vivify_342
    $P612 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    defined $I613, $P612
    unless $I613, for_undef_343
    iter $P611, $P612
    new $P623, 'ExceptionHandler'
    set_label $P623, loop622_handler
    $P623."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P623
  loop622_test:
    unless $P611, loop622_done
    shift $P614, $P611
  loop622_redo:
    .const 'Sub' $P616 = "48_1305640904.321" 
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
  for_undef_343:
.annotate 'line', 277
    find_lex $P625, "$to_compose_meta"
    unless_null $P625, vivify_347
    new $P625, "Undef"
  vivify_347:
    find_lex $P626, "$to_compose"
    unless_null $P626, vivify_348
    new $P626, "Undef"
  vivify_348:
    $P627 = $P625."compose"($P626)
    store_lex "$to_compose", $P627
.annotate 'line', 271
    goto if_594_end
  if_594:
.annotate 'line', 268
    find_lex $P598, "@roles"
    unless_null $P598, vivify_349
    $P598 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P599, $P598[0]
    unless_null $P599, vivify_350
    new $P599, "Undef"
  vivify_350:
    store_lex "$to_compose", $P599
.annotate 'line', 269
    find_lex $P600, "$to_compose"
    unless_null $P600, vivify_351
    new $P600, "Undef"
  vivify_351:
    get_how $P601, $P600
    store_lex "$to_compose_meta", $P601
  if_594_end:
.annotate 'line', 281
    find_lex $P628, "$to_compose_meta"
    unless_null $P628, vivify_352
    new $P628, "Undef"
  vivify_352:
    find_lex $P629, "$to_compose"
    unless_null $P629, vivify_353
    new $P629, "Undef"
  vivify_353:
    $P630 = $P628."collisions"($P629)
    store_lex "@collisions", $P630
.annotate 'line', 282
    find_lex $P632, "@collisions"
    unless_null $P632, vivify_354
    $P632 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    defined $I633, $P632
    unless $I633, for_undef_355
    iter $P631, $P632
    new $P655, 'ExceptionHandler'
    set_label $P655, loop654_handler
    $P655."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P655
  loop654_test:
    unless $P631, loop654_done
    shift $P634, $P631
  loop654_redo:
    .const 'Sub' $P636 = "49_1305640904.321" 
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
  for_undef_355:
.annotate 'line', 290
    find_lex $P657, "$to_compose_meta"
    unless_null $P657, vivify_361
    new $P657, "Undef"
  vivify_361:
    find_lex $P658, "$to_compose"
    unless_null $P658, vivify_362
    new $P658, "Undef"
  vivify_362:
    $P659 = $P657."methods"($P658)
    store_lex "@methods", $P659
.annotate 'line', 291
    find_lex $P661, "@methods"
    unless_null $P661, vivify_363
    $P661 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    defined $I662, $P661
    unless $I662, for_undef_364
    iter $P660, $P661
    new $P681, 'ExceptionHandler'
    set_label $P681, loop680_handler
    $P681."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P681
  loop680_test:
    unless $P660, loop680_done
    shift $P663, $P660
  loop680_redo:
    .const 'Sub' $P665 = "50_1305640904.321" 
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
  for_undef_364:
.annotate 'line', 298
    find_lex $P683, "$to_compose_meta"
    unless_null $P683, vivify_371
    new $P683, "Undef"
  vivify_371:
    find_lex $P684, "$to_compose"
    unless_null $P684, vivify_372
    new $P684, "Undef"
  vivify_372:
    $P685 = $P683."attributes"($P684)
    store_lex "@attributes", $P685
.annotate 'line', 299
    find_lex $P687, "@attributes"
    unless_null $P687, vivify_373
    $P687 = root_new ['parrot';'ResizablePMCArray']
  vivify_373:
    defined $I688, $P687
    unless $I688, for_undef_374
    iter $P686, $P687
    new $P715, 'ExceptionHandler'
    set_label $P715, loop714_handler
    $P715."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P715
  loop714_test:
    unless $P686, loop714_done
    shift $P689, $P686
  loop714_redo:
    .const 'Sub' $P691 = "51_1305640904.321" 
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
  for_undef_374:
    find_lex $P717, "@done"
    unless_null $P717, vivify_383
    $P717 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
.annotate 'line', 311
    find_lex $P718, "$to_compose"
    unless_null $P718, vivify_384
    new $P718, "Undef"
  vivify_384:
    find_lex $P719, "@done"
    unless_null $P719, vivify_385
    $P719 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P719
  vivify_385:
    set $P719[0], $P718
.annotate 'line', 262
    .return ($P718)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block615"  :anon :subid("48_1305640904.321") :outer("47_1305640904.321")
    .param pmc param_617
.annotate 'line', 274
    .lex "$_", param_617
.annotate 'line', 275
    find_lex $P618, "$to_compose_meta"
    unless_null $P618, vivify_344
    new $P618, "Undef"
  vivify_344:
    find_lex $P619, "$to_compose"
    unless_null $P619, vivify_345
    new $P619, "Undef"
  vivify_345:
    find_lex $P620, "$_"
    unless_null $P620, vivify_346
    new $P620, "Undef"
  vivify_346:
    $P621 = $P618."add_role"($P619, $P620)
.annotate 'line', 274
    .return ($P621)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block635"  :anon :subid("49_1305640904.321") :outer("47_1305640904.321")
    .param pmc param_637
.annotate 'line', 282
    .lex "$_", param_637
.annotate 'line', 283
    find_lex $P640, "$target"
    unless_null $P640, vivify_356
    new $P640, "Undef"
  vivify_356:
    find_lex $P641, "$_"
    unless_null $P641, vivify_357
    new $P641, "Undef"
  vivify_357:
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
    unless_null $P645, vivify_358
    new $P645, "Undef"
  vivify_358:
    concat $P646, $P644, $P645
    concat $P647, $P646, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P648, "$target"
    unless_null $P648, vivify_359
    new $P648, "Undef"
  vivify_359:
    get_how $P649, $P648
    find_lex $P650, "$target"
    unless_null $P650, vivify_360
    new $P650, "Undef"
  vivify_360:
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
.sub "_block664"  :anon :subid("50_1305640904.321") :outer("47_1305640904.321")
    .param pmc param_666
.annotate 'line', 291
    .lex "$_", param_666
.annotate 'line', 292
    find_lex $P669, "$target"
    unless_null $P669, vivify_365
    new $P669, "Undef"
  vivify_365:
    find_lex $P670, "$_"
    unless_null $P670, vivify_366
    new $P670, "Undef"
  vivify_366:
    set $S671, $P670
    $P672 = "has_method"($P669, $S671, 0)
    unless $P672, unless_668
    set $P667, $P672
    goto unless_668_end
  unless_668:
.annotate 'line', 293
    find_lex $P673, "$target"
    unless_null $P673, vivify_367
    new $P673, "Undef"
  vivify_367:
    get_how $P674, $P673
    find_lex $P675, "$target"
    unless_null $P675, vivify_368
    new $P675, "Undef"
  vivify_368:
    find_lex $P676, "$_"
    unless_null $P676, vivify_369
    new $P676, "Undef"
  vivify_369:
    set $S677, $P676
    find_lex $P678, "$_"
    unless_null $P678, vivify_370
    new $P678, "Undef"
  vivify_370:
    $P679 = $P674."add_method"($P675, $S677, $P678)
.annotate 'line', 292
    set $P667, $P679
  unless_668_end:
.annotate 'line', 291
    .return ($P667)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block690"  :anon :subid("51_1305640904.321") :outer("47_1305640904.321")
    .param pmc param_692
.annotate 'line', 299
    .lex "$_", param_692
.annotate 'line', 300
    find_lex $P694, "$target"
    unless_null $P694, vivify_375
    new $P694, "Undef"
  vivify_375:
    find_lex $P695, "$_"
    unless_null $P695, vivify_376
    new $P695, "Undef"
  vivify_376:
    $P696 = $P695."name"()
    $P697 = "has_attribute"($P694, $P696)
    unless $P697, if_693_end
.annotate 'line', 301
    new $P698, "String"
    assign $P698, "Attribute '"
    find_lex $P699, "$_"
    unless_null $P699, vivify_377
    new $P699, "Undef"
  vivify_377:
    $S700 = $P699."name"()
    concat $P701, $P698, $S700
    concat $P702, $P701, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P703, "$target"
    unless_null $P703, vivify_378
    new $P703, "Undef"
  vivify_378:
    get_how $P704, $P703
    find_lex $P705, "$target"
    unless_null $P705, vivify_379
    new $P705, "Undef"
  vivify_379:
    $S706 = $P704."name"($P705)
    concat $P707, $P702, $S706
.annotate 'line', 301
    concat $P708, $P707, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P708
  if_693_end:
.annotate 'line', 304
    find_lex $P709, "$target"
    unless_null $P709, vivify_380
    new $P709, "Undef"
  vivify_380:
    get_how $P710, $P709
    find_lex $P711, "$target"
    unless_null $P711, vivify_381
    new $P711, "Undef"
  vivify_381:
    find_lex $P712, "$_"
    unless_null $P712, vivify_382
    new $P712, "Undef"
  vivify_382:
    $P713 = $P710."add_attribute"($P711, $P712)
.annotate 'line', 299
    .return ($P713)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block721"  :subid("52_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 320
    .const 'Sub' $P1032 = "76_1305640904.321" 
    capture_lex $P1032
    .const 'Sub' $P1008 = "74_1305640904.321" 
    capture_lex $P1008
    .const 'Sub' $P1002 = "73_1305640904.321" 
    capture_lex $P1002
    .const 'Sub' $P996 = "72_1305640904.321" 
    capture_lex $P996
    .const 'Sub' $P972 = "70_1305640904.321" 
    capture_lex $P972
    .const 'Sub' $P865 = "65_1305640904.321" 
    capture_lex $P865
    .const 'Sub' $P862 = "64_1305640904.321" 
    capture_lex $P862
    .const 'Sub' $P855 = "63_1305640904.321" 
    capture_lex $P855
    .const 'Sub' $P842 = "62_1305640904.321" 
    capture_lex $P842
    .const 'Sub' $P838 = "61_1305640904.321" 
    capture_lex $P838
    .const 'Sub' $P817 = "60_1305640904.321" 
    capture_lex $P817
    .const 'Sub' $P796 = "59_1305640904.321" 
    capture_lex $P796
    .const 'Sub' $P777 = "58_1305640904.321" 
    capture_lex $P777
    .const 'Sub' $P770 = "57_1305640904.321" 
    capture_lex $P770
    .const 'Sub' $P755 = "56_1305640904.321" 
    capture_lex $P755
    .const 'Sub' $P749 = "55_1305640904.321" 
    capture_lex $P749
    .const 'Sub' $P740 = "54_1305640904.321" 
    capture_lex $P740
    .const 'Sub' $P723 = "53_1305640904.321" 
    capture_lex $P723
.annotate 'line', 457
    .const 'Sub' $P723 = "53_1305640904.321" 
    newclosure $P737, $P723
    .lex "reify_method", $P737
.annotate 'line', 320
    .lex "$?PACKAGE", $P738
    .lex "$?CLASS", $P739
.annotate 'line', 422
    find_lex $P971, "reify_method"
.annotate 'line', 490
    .const 'Sub' $P1032 = "76_1305640904.321" 
    newclosure $P1038, $P1032
.annotate 'line', 320
    .return ($P1038)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_724
.annotate 'line', 457
    .lex "$meth", param_724
.annotate 'line', 458
    new $P725, "Undef"
    .lex "$callback", $P725
    find_lex $P726, "$meth"
    unless_null $P726, vivify_386
    new $P726, "Undef"
  vivify_386:
    getprop $P727, "REIFY_CALLBACK", $P726
    store_lex "$callback", $P727
.annotate 'line', 459
    find_lex $P730, "$callback"
    unless_null $P730, vivify_387
    new $P730, "Undef"
  vivify_387:
    defined $I731, $P730
    if $I731, if_729
    find_lex $P735, "$meth"
    unless_null $P735, vivify_388
    new $P735, "Undef"
  vivify_388:
    clone $P736, $P735
    set $P728, $P736
    goto if_729_end
  if_729:
    find_lex $P732, "$callback"
    unless_null $P732, vivify_389
    new $P732, "Undef"
  vivify_389:
    find_lex $P733, "$meth"
    unless_null $P733, vivify_390
    new $P733, "Undef"
  vivify_390:
    $P734 = $P732($P733)
    set $P728, $P734
  if_729_end:
.annotate 'line', 457
    .return ($P728)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("54_1305640904.321") :outer("52_1305640904.321")
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
    unless_null $P746, vivify_391
    new $P746, "Undef"
  vivify_391:
    find_lex $P747, "$name"
    unless_null $P747, vivify_392
    new $P747, "Undef"
  vivify_392:
    $P746."BUILD"($P747 :named("name"))
    find_lex $P748, "$obj"
    unless_null $P748, vivify_393
    new $P748, "Undef"
  vivify_393:
.annotate 'line', 350
    .return ($P748)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("55_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_750
    .param pmc param_751 :named("name")
.annotate 'line', 356
    .lex "self", param_750
    .lex "$name", param_751
.annotate 'line', 357
    find_lex $P752, "$name"
    unless_null $P752, vivify_394
    new $P752, "Undef"
  vivify_394:
    find_lex $P753, "self"
    find_lex $P754, "$?CLASS"
    setattribute $P753, $P754, "$!name", $P752
.annotate 'line', 356
    .return ($P752)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("56_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_756
    .param pmc param_757 :optional :named("name")
    .param int has_param_757 :opt_flag
    .param pmc param_759 :optional :named("repr")
    .param int has_param_759 :opt_flag
.annotate 'line', 362
    .lex "self", param_756
    if has_param_757, optparam_395
    new $P758, "String"
    assign $P758, "<anon>"
    set param_757, $P758
  optparam_395:
    .lex "$name", param_757
    if has_param_759, optparam_396
    new $P760, "String"
    assign $P760, "P6opaque"
    set param_759, $P760
  optparam_396:
    .lex "$repr", param_759
.annotate 'line', 363
    new $P761, "Undef"
    .lex "$metarole", $P761
    find_lex $P762, "self"
    find_lex $P763, "$name"
    unless_null $P763, vivify_397
    new $P763, "Undef"
  vivify_397:
    $P764 = $P762."new"($P763 :named("name"))
    store_lex "$metarole", $P764
.annotate 'line', 365
    find_lex $P765, "$metarole"
    unless_null $P765, vivify_398
    new $P765, "Undef"
  vivify_398:
    find_lex $P766, "$repr"
    unless_null $P766, vivify_399
    new $P766, "Undef"
  vivify_399:
    set $S767, $P766
    repr_type_object_for $P768, $P765, $S767
    $P769 = root_new ['parrot';'Hash']
    set_who $P768, $P769
.annotate 'line', 362
    .return ($P768)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("57_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_771
    .param pmc param_772
    .param pmc param_773
.annotate 'line', 369
    .lex "self", param_771
    .lex "$obj", param_772
    .lex "$body_block", param_773
.annotate 'line', 370
    find_lex $P774, "$body_block"
    unless_null $P774, vivify_400
    new $P774, "Undef"
  vivify_400:
    find_lex $P775, "self"
    find_lex $P776, "$?CLASS"
    setattribute $P775, $P776, "$!body_block", $P774
.annotate 'line', 369
    .return ($P774)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("58_1305640904.321") :outer("52_1305640904.321")
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
    unless_null $P783, vivify_401
    new $P783, "Undef"
  vivify_401:
    find_lex $P784, "self"
    find_lex $P785, "$?CLASS"
    getattribute $P786, $P784, $P785, "%!methods"
    unless_null $P786, vivify_402
    $P786 = root_new ['parrot';'Hash']
  vivify_402:
    set $P787, $P786[$P783]
    unless_null $P787, vivify_403
    new $P787, "Undef"
  vivify_403:
    unless $P787, if_782_end
.annotate 'line', 375
    new $P788, "String"
    assign $P788, "This role already has a method named "
    find_lex $P789, "$name"
    unless_null $P789, vivify_404
    new $P789, "Undef"
  vivify_404:
    concat $P790, $P788, $P789
    die $P790
  if_782_end:
.annotate 'line', 377
    find_lex $P791, "$code_obj"
    unless_null $P791, vivify_405
    new $P791, "Undef"
  vivify_405:
    find_lex $P792, "$name"
    unless_null $P792, vivify_406
    new $P792, "Undef"
  vivify_406:
    find_lex $P793, "self"
    find_lex $P794, "$?CLASS"
    getattribute $P795, $P793, $P794, "%!methods"
    unless_null $P795, vivify_407
    $P795 = root_new ['parrot';'Hash']
    setattribute $P793, $P794, "%!methods", $P795
  vivify_407:
    set $P795[$P792], $P791
.annotate 'line', 373
    .return ($P791)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("59_1305640904.321") :outer("52_1305640904.321")
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
    unless_null $P802, vivify_408
    $P802 = root_new ['parrot';'Hash']
  vivify_408:
.annotate 'line', 382
    find_lex $P803, "$name"
    unless_null $P803, vivify_409
    new $P803, "Undef"
  vivify_409:
    find_lex $P804, "%todo"
    unless_null $P804, vivify_410
    $P804 = root_new ['parrot';'Hash']
    store_lex "%todo", $P804
  vivify_410:
    set $P804["name"], $P803
.annotate 'line', 383
    find_lex $P805, "$code_obj"
    unless_null $P805, vivify_411
    new $P805, "Undef"
  vivify_411:
    find_lex $P806, "%todo"
    unless_null $P806, vivify_412
    $P806 = root_new ['parrot';'Hash']
    store_lex "%todo", $P806
  vivify_412:
    set $P806["code"], $P805
.annotate 'line', 384
    find_lex $P807, "%todo"
    unless_null $P807, vivify_413
    $P807 = root_new ['parrot';'Hash']
  vivify_413:
    find_lex $P808, "self"
    find_lex $P809, "$?CLASS"
    getattribute $P810, $P808, $P809, "@!multi_methods_to_incorporate"
    unless_null $P810, vivify_414
    $P810 = root_new ['parrot';'ResizablePMCArray']
  vivify_414:
    set $N811, $P810
    set $I812, $N811
    find_lex $P813, "self"
    find_lex $P814, "$?CLASS"
    getattribute $P815, $P813, $P814, "@!multi_methods_to_incorporate"
    unless_null $P815, vivify_415
    $P815 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P813, $P814, "@!multi_methods_to_incorporate", $P815
  vivify_415:
    set $P815[$I812], $P807
    find_lex $P816, "$code_obj"
    unless_null $P816, vivify_416
    new $P816, "Undef"
  vivify_416:
.annotate 'line', 380
    .return ($P816)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("60_1305640904.321") :outer("52_1305640904.321")
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
    unless_null $P822, vivify_417
    new $P822, "Undef"
  vivify_417:
    $P823 = $P822."name"()
    store_lex "$name", $P823
.annotate 'line', 390
    find_lex $P825, "$name"
    unless_null $P825, vivify_418
    new $P825, "Undef"
  vivify_418:
    find_lex $P826, "self"
    find_lex $P827, "$?CLASS"
    getattribute $P828, $P826, $P827, "%!attributes"
    unless_null $P828, vivify_419
    $P828 = root_new ['parrot';'Hash']
  vivify_419:
    set $P829, $P828[$P825]
    unless_null $P829, vivify_420
    new $P829, "Undef"
  vivify_420:
    unless $P829, if_824_end
.annotate 'line', 391
    new $P830, "String"
    assign $P830, "This role already has an attribute named "
    find_lex $P831, "$name"
    unless_null $P831, vivify_421
    new $P831, "Undef"
  vivify_421:
    concat $P832, $P830, $P831
    die $P832
  if_824_end:
.annotate 'line', 393
    find_lex $P833, "$meta_attr"
    unless_null $P833, vivify_422
    new $P833, "Undef"
  vivify_422:
    find_lex $P834, "$name"
    unless_null $P834, vivify_423
    new $P834, "Undef"
  vivify_423:
    find_lex $P835, "self"
    find_lex $P836, "$?CLASS"
    getattribute $P837, $P835, $P836, "%!attributes"
    unless_null $P837, vivify_424
    $P837 = root_new ['parrot';'Hash']
    setattribute $P835, $P836, "%!attributes", $P837
  vivify_424:
    set $P837[$P834], $P833
.annotate 'line', 388
    .return ($P833)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("61_1305640904.321") :outer("52_1305640904.321")
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
.sub "add_role" :anon :subid("62_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_843
    .param pmc param_844
    .param pmc param_845
.annotate 'line', 400
    .lex "self", param_843
    .lex "$obj", param_844
    .lex "$role", param_845
.annotate 'line', 401
    find_lex $P846, "$role"
    unless_null $P846, vivify_425
    new $P846, "Undef"
  vivify_425:
    find_lex $P847, "self"
    find_lex $P848, "$?CLASS"
    getattribute $P849, $P847, $P848, "@!roles"
    unless_null $P849, vivify_426
    $P849 = root_new ['parrot';'ResizablePMCArray']
  vivify_426:
    set $N850, $P849
    set $I851, $N850
    find_lex $P852, "self"
    find_lex $P853, "$?CLASS"
    getattribute $P854, $P852, $P853, "@!roles"
    unless_null $P854, vivify_427
    $P854 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P852, $P853, "@!roles", $P854
  vivify_427:
    set $P854[$I851], $P846
.annotate 'line', 400
    .return ($P846)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("63_1305640904.321") :outer("52_1305640904.321")
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
    unless_null $P861, vivify_428
    new $P861, "Undef"
  vivify_428:
.annotate 'line', 405
    .return ($P861)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("64_1305640904.321") :outer("52_1305640904.321")
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
.sub "instantiate" :anon :subid("65_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_868
    .param pmc param_869
    .param pmc param_870
.annotate 'line', 422
    .const 'Sub' $P949 = "69_1305640904.321" 
    capture_lex $P949
    .const 'Sub' $P928 = "68_1305640904.321" 
    capture_lex $P928
    .const 'Sub' $P907 = "67_1305640904.321" 
    capture_lex $P907
    .const 'Sub' $P889 = "66_1305640904.321" 
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
    unless_null $P874, vivify_429
    new $P874, "Undef"
  vivify_429:
    find_lex $P875, "$class_arg"
    unless_null $P875, vivify_430
    new $P875, "Undef"
  vivify_430:
    $P874($P875)
.annotate 'line', 428
    find_lex $P876, "NQPConcreteRoleHOW"
    find_lex $P877, "self"
    find_lex $P878, "$?CLASS"
    getattribute $P879, $P877, $P878, "$!name"
    unless_null $P879, vivify_431
    new $P879, "Undef"
  vivify_431:
    find_lex $P880, "$obj"
    unless_null $P880, vivify_432
    new $P880, "Undef"
  vivify_432:
    $P881 = $P876."new_type"($P879 :named("name"), $P880 :named("instance_of"))
    store_lex "$irole", $P881
.annotate 'line', 432
    find_lex $P883, "self"
    find_lex $P884, "$?CLASS"
    getattribute $P885, $P883, $P884, "%!attributes"
    unless_null $P885, vivify_433
    $P885 = root_new ['parrot';'Hash']
  vivify_433:
    defined $I886, $P885
    unless $I886, for_undef_434
    iter $P882, $P885
    new $P898, 'ExceptionHandler'
    set_label $P898, loop897_handler
    $P898."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P898
  loop897_test:
    unless $P882, loop897_done
    shift $P887, $P882
  loop897_redo:
    .const 'Sub' $P889 = "66_1305640904.321" 
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
  for_undef_434:
.annotate 'line', 437
    find_lex $P901, "self"
    find_lex $P902, "$?CLASS"
    getattribute $P903, $P901, $P902, "%!methods"
    unless_null $P903, vivify_438
    $P903 = root_new ['parrot';'Hash']
  vivify_438:
    defined $I904, $P903
    unless $I904, for_undef_439
    iter $P900, $P903
    new $P919, 'ExceptionHandler'
    set_label $P919, loop918_handler
    $P919."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P919
  loop918_test:
    unless $P900, loop918_done
    shift $P905, $P900
  loop918_redo:
    .const 'Sub' $P907 = "67_1305640904.321" 
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
  for_undef_439:
.annotate 'line', 440
    find_lex $P922, "self"
    find_lex $P923, "$?CLASS"
    getattribute $P924, $P922, $P923, "@!multi_methods_to_incorporate"
    unless_null $P924, vivify_444
    $P924 = root_new ['parrot';'ResizablePMCArray']
  vivify_444:
    defined $I925, $P924
    unless $I925, for_undef_445
    iter $P921, $P924
    new $P940, 'ExceptionHandler'
    set_label $P940, loop939_handler
    $P940."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P940
  loop939_test:
    unless $P921, loop939_done
    shift $P926, $P921
  loop939_redo:
    .const 'Sub' $P928 = "68_1305640904.321" 
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
  for_undef_445:
.annotate 'line', 445
    find_lex $P943, "self"
    find_lex $P944, "$?CLASS"
    getattribute $P945, $P943, $P944, "@!roles"
    unless_null $P945, vivify_452
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    defined $I946, $P945
    unless $I946, for_undef_453
    iter $P942, $P945
    new $P963, 'ExceptionHandler'
    set_label $P963, loop962_handler
    $P963."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P963
  loop962_test:
    unless $P942, loop962_done
    shift $P947, $P942
  loop962_redo:
    .const 'Sub' $P949 = "69_1305640904.321" 
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
  for_undef_453:
.annotate 'line', 451
    find_lex $P965, "$irole"
    unless_null $P965, vivify_460
    new $P965, "Undef"
  vivify_460:
    get_how $P966, $P965
    find_lex $P967, "$irole"
    unless_null $P967, vivify_461
    new $P967, "Undef"
  vivify_461:
    $P966."compose"($P967)
.annotate 'line', 452
    new $P968, "Exception"
    set $P968['type'], .CONTROL_RETURN
    find_lex $P969, "$irole"
    unless_null $P969, vivify_462
    new $P969, "Undef"
  vivify_462:
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
.sub "_block888"  :anon :subid("66_1305640904.321") :outer("65_1305640904.321")
    .param pmc param_890
.annotate 'line', 432
    .lex "$_", param_890
.annotate 'line', 433
    find_lex $P891, "$irole"
    unless_null $P891, vivify_435
    new $P891, "Undef"
  vivify_435:
    get_how $P892, $P891
    find_lex $P893, "$irole"
    unless_null $P893, vivify_436
    new $P893, "Undef"
  vivify_436:
    find_lex $P894, "$_"
    unless_null $P894, vivify_437
    new $P894, "Undef"
  vivify_437:
    $P895 = $P894."value"()
    $P896 = $P892."add_attribute"($P893, $P895)
.annotate 'line', 432
    .return ($P896)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block906"  :anon :subid("67_1305640904.321") :outer("65_1305640904.321")
    .param pmc param_908
.annotate 'line', 437
    .lex "$_", param_908
.annotate 'line', 438
    find_lex $P909, "$irole"
    unless_null $P909, vivify_440
    new $P909, "Undef"
  vivify_440:
    get_how $P910, $P909
    find_lex $P911, "$irole"
    unless_null $P911, vivify_441
    new $P911, "Undef"
  vivify_441:
    find_lex $P912, "$_"
    unless_null $P912, vivify_442
    new $P912, "Undef"
  vivify_442:
    $P913 = $P912."key"()
    find_lex $P914, "$_"
    unless_null $P914, vivify_443
    new $P914, "Undef"
  vivify_443:
    $P915 = $P914."value"()
    $P916 = "reify_method"($P915)
    $P917 = $P910."add_method"($P911, $P913, $P916)
.annotate 'line', 437
    .return ($P917)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block927"  :anon :subid("68_1305640904.321") :outer("65_1305640904.321")
    .param pmc param_929
.annotate 'line', 440
    .lex "$_", param_929
.annotate 'line', 441
    find_lex $P930, "$irole"
    unless_null $P930, vivify_446
    new $P930, "Undef"
  vivify_446:
    get_how $P931, $P930
    find_lex $P932, "$irole"
    unless_null $P932, vivify_447
    new $P932, "Undef"
  vivify_447:
    find_lex $P933, "$_"
    unless_null $P933, vivify_448
    $P933 = root_new ['parrot';'Hash']
  vivify_448:
    set $P934, $P933["name"]
    unless_null $P934, vivify_449
    new $P934, "Undef"
  vivify_449:
    find_lex $P935, "$_"
    unless_null $P935, vivify_450
    $P935 = root_new ['parrot';'Hash']
  vivify_450:
    set $P936, $P935["code"]
    unless_null $P936, vivify_451
    new $P936, "Undef"
  vivify_451:
    $P937 = "reify_method"($P936)
    $P938 = $P931."add_multi_method"($P932, $P934, $P937)
.annotate 'line', 440
    .return ($P938)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block948"  :anon :subid("69_1305640904.321") :outer("65_1305640904.321")
    .param pmc param_951
.annotate 'line', 446
    new $P950, "Undef"
    .lex "$instantiated", $P950
    .lex "$_", param_951
    find_lex $P952, "$irole"
    unless_null $P952, vivify_454
    new $P952, "Undef"
  vivify_454:
    get_how $P953, $P952
    find_lex $P954, "$irole"
    unless_null $P954, vivify_455
    new $P954, "Undef"
  vivify_455:
    find_lex $P955, "$class_arg"
    unless_null $P955, vivify_456
    new $P955, "Undef"
  vivify_456:
    $P956 = $P953."instantiate"($P954, $P955)
    store_lex "$instantiated", $P956
.annotate 'line', 447
    find_lex $P957, "$irole"
    unless_null $P957, vivify_457
    new $P957, "Undef"
  vivify_457:
    get_how $P958, $P957
    find_lex $P959, "$irole"
    unless_null $P959, vivify_458
    new $P959, "Undef"
  vivify_458:
    find_lex $P960, "$instantiated"
    unless_null $P960, vivify_459
    new $P960, "Undef"
  vivify_459:
    $P961 = $P958."add_role"($P959, $P960)
.annotate 'line', 445
    .return ($P961)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("70_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_973
    .param pmc param_974
    .param pmc param_975 :optional :named("local")
    .param int has_param_975 :opt_flag
.annotate 'line', 466
    .const 'Sub' $P986 = "71_1305640904.321" 
    capture_lex $P986
    .lex "self", param_973
    .lex "$obj", param_974
    if has_param_975, optparam_463
    new $P976, "Undef"
    set param_975, $P976
  optparam_463:
    .lex "$local", param_975
.annotate 'line', 467
    $P977 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P977
.annotate 'line', 466
    find_lex $P978, "@meths"
    unless_null $P978, vivify_464
    $P978 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
.annotate 'line', 468
    find_lex $P980, "self"
    find_lex $P981, "$?CLASS"
    getattribute $P982, $P980, $P981, "%!methods"
    unless_null $P982, vivify_465
    $P982 = root_new ['parrot';'Hash']
  vivify_465:
    defined $I983, $P982
    unless $I983, for_undef_466
    iter $P979, $P982
    new $P993, 'ExceptionHandler'
    set_label $P993, loop992_handler
    $P993."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P993
  loop992_test:
    unless $P979, loop992_done
    shift $P984, $P979
  loop992_redo:
    .const 'Sub' $P986 = "71_1305640904.321" 
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
  for_undef_466:
    find_lex $P995, "@meths"
    unless_null $P995, vivify_469
    $P995 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
.annotate 'line', 466
    .return ($P995)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block985"  :anon :subid("71_1305640904.321") :outer("70_1305640904.321")
    .param pmc param_987
.annotate 'line', 468
    .lex "$_", param_987
.annotate 'line', 469
    find_lex $P988, "@meths"
    unless_null $P988, vivify_467
    $P988 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    find_lex $P989, "$_"
    unless_null $P989, vivify_468
    new $P989, "Undef"
  vivify_468:
    $P990 = $P989."value"()
    $P991 = $P988."push"($P990)
.annotate 'line', 468
    .return ($P991)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("72_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_997
    .param pmc param_998
.annotate 'line', 474
    .lex "self", param_997
    .lex "$obj", param_998
    find_lex $P999, "self"
    find_lex $P1000, "$?CLASS"
    getattribute $P1001, $P999, $P1000, "%!methods"
    unless_null $P1001, vivify_470
    $P1001 = root_new ['parrot';'Hash']
  vivify_470:
    .return ($P1001)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name" :anon :subid("73_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_1003
    .param pmc param_1004
.annotate 'line', 478
    .lex "self", param_1003
    .lex "$obj", param_1004
    find_lex $P1005, "self"
    find_lex $P1006, "$?CLASS"
    getattribute $P1007, $P1005, $P1006, "$!name"
    unless_null $P1007, vivify_471
    new $P1007, "Undef"
  vivify_471:
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("74_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_1009
    .param pmc param_1010
    .param pmc param_1011 :optional :named("local")
    .param int has_param_1011 :opt_flag
.annotate 'line', 482
    .const 'Sub' $P1022 = "75_1305640904.321" 
    capture_lex $P1022
    .lex "self", param_1009
    .lex "$obj", param_1010
    if has_param_1011, optparam_472
    new $P1012, "Undef"
    set param_1011, $P1012
  optparam_472:
    .lex "$local", param_1011
.annotate 'line', 483
    $P1013 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1013
.annotate 'line', 482
    find_lex $P1014, "@attrs"
    unless_null $P1014, vivify_473
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 484
    find_lex $P1016, "self"
    find_lex $P1017, "$?CLASS"
    getattribute $P1018, $P1016, $P1017, "%!attributes"
    unless_null $P1018, vivify_474
    $P1018 = root_new ['parrot';'Hash']
  vivify_474:
    defined $I1019, $P1018
    unless $I1019, for_undef_475
    iter $P1015, $P1018
    new $P1029, 'ExceptionHandler'
    set_label $P1029, loop1028_handler
    $P1029."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1029
  loop1028_test:
    unless $P1015, loop1028_done
    shift $P1020, $P1015
  loop1028_redo:
    .const 'Sub' $P1022 = "75_1305640904.321" 
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
  for_undef_475:
    find_lex $P1031, "@attrs"
    unless_null $P1031, vivify_478
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
.annotate 'line', 482
    .return ($P1031)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1021"  :anon :subid("75_1305640904.321") :outer("74_1305640904.321")
    .param pmc param_1023
.annotate 'line', 484
    .lex "$_", param_1023
.annotate 'line', 485
    find_lex $P1024, "@attrs"
    unless_null $P1024, vivify_476
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    find_lex $P1025, "$_"
    unless_null $P1025, vivify_477
    new $P1025, "Undef"
  vivify_477:
    $P1026 = $P1025."value"()
    $P1027 = $P1024."push"($P1026)
.annotate 'line', 484
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("76_1305640904.321") :outer("52_1305640904.321")
    .param pmc param_1033
    .param pmc param_1034
.annotate 'line', 490
    .lex "self", param_1033
    .lex "$obj", param_1034
    find_lex $P1035, "self"
    find_lex $P1036, "$?CLASS"
    getattribute $P1037, $P1035, $P1036, "@!roles"
    unless_null $P1037, vivify_479
    $P1037 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    .return ($P1037)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1039"  :subid("77_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 500
    .const 'Sub' $P2103 = "136_1305640904.321" 
    capture_lex $P2103
    .const 'Sub' $P2067 = "134_1305640904.321" 
    capture_lex $P2067
    .const 'Sub' $P2033 = "133_1305640904.321" 
    capture_lex $P2033
    .const 'Sub' $P1996 = "132_1305640904.321" 
    capture_lex $P1996
    .const 'Sub' $P1989 = "131_1305640904.321" 
    capture_lex $P1989
    .const 'Sub' $P1982 = "130_1305640904.321" 
    capture_lex $P1982
    .const 'Sub' $P1959 = "128_1305640904.321" 
    capture_lex $P1959
    .const 'Sub' $P1953 = "127_1305640904.321" 
    capture_lex $P1953
    .const 'Sub' $P1947 = "126_1305640904.321" 
    capture_lex $P1947
    .const 'Sub' $P1924 = "124_1305640904.321" 
    capture_lex $P1924
    .const 'Sub' $P1917 = "123_1305640904.321" 
    capture_lex $P1917
    .const 'Sub' $P1903 = "122_1305640904.321" 
    capture_lex $P1903
    .const 'Sub' $P1854 = "119_1305640904.321" 
    capture_lex $P1854
    .const 'Sub' $P1805 = "116_1305640904.321" 
    capture_lex $P1805
    .const 'Sub' $P1760 = "113_1305640904.321" 
    capture_lex $P1760
    .const 'Sub' $P1723 = "110_1305640904.321" 
    capture_lex $P1723
    .const 'Sub' $P1582 = "105_1305640904.321" 
    capture_lex $P1582
    .const 'Sub' $P1474 = "101_1305640904.321" 
    capture_lex $P1474
    .const 'Sub' $P1446 = "100_1305640904.321" 
    capture_lex $P1446
    .const 'Sub' $P1420 = "99_1305640904.321" 
    capture_lex $P1420
    .const 'Sub' $P1386 = "97_1305640904.321" 
    capture_lex $P1386
    .const 'Sub' $P1379 = "96_1305640904.321" 
    capture_lex $P1379
    .const 'Sub' $P1331 = "94_1305640904.321" 
    capture_lex $P1331
    .const 'Sub' $P1310 = "93_1305640904.321" 
    capture_lex $P1310
    .const 'Sub' $P1289 = "92_1305640904.321" 
    capture_lex $P1289
    .const 'Sub' $P1254 = "91_1305640904.321" 
    capture_lex $P1254
    .const 'Sub' $P1239 = "90_1305640904.321" 
    capture_lex $P1239
    .const 'Sub' $P1232 = "89_1305640904.321" 
    capture_lex $P1232
    .const 'Sub' $P1222 = "88_1305640904.321" 
    capture_lex $P1222
    .const 'Sub' $P1083 = "81_1305640904.321" 
    capture_lex $P1083
    .const 'Sub' $P1041 = "78_1305640904.321" 
    capture_lex $P1041
.annotate 'line', 737
    .const 'Sub' $P1041 = "78_1305640904.321" 
    newclosure $P1082, $P1041
    .lex "compute_c3_mro", $P1082
.annotate 'line', 759
    .const 'Sub' $P1083 = "81_1305640904.321" 
    newclosure $P1219, $P1083
    .lex "c3_merge", $P1219
.annotate 'line', 500
    .lex "$?PACKAGE", $P1220
    .lex "$?CLASS", $P1221
.annotate 'line', 678
    find_lex $P1721, "compute_c3_mro"
    find_lex $P1722, "c3_merge"
.annotate 'line', 961
    .const 'Sub' $P2103 = "136_1305640904.321" 
    newclosure $P2138, $P2103
.annotate 'line', 500
    .return ($P2138)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1044
.annotate 'line', 737
    .const 'Sub' $P1056 = "79_1305640904.321" 
    capture_lex $P1056
    new $P1043, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1043, control_1042
    push_eh $P1043
    .lex "$class", param_1044
.annotate 'line', 738
    $P1045 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1045
.annotate 'line', 741
    $P1046 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1046
.annotate 'line', 738
    find_lex $P1047, "$class"
    unless_null $P1047, vivify_480
    new $P1047, "Undef"
  vivify_480:
    get_how $P1048, $P1047
    find_lex $P1049, "$class"
    unless_null $P1049, vivify_481
    new $P1049, "Undef"
  vivify_481:
    $P1050 = $P1048."parents"($P1049, 1 :named("local"))
    store_lex "@immediate_parents", $P1050
    find_lex $P1051, "@result"
    unless_null $P1051, vivify_482
    $P1051 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
.annotate 'line', 742
    find_lex $P1053, "@immediate_parents"
    unless_null $P1053, vivify_483
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    set $N1054, $P1053
    unless $N1054, if_1052_end
    .const 'Sub' $P1056 = "79_1305640904.321" 
    capture_lex $P1056
    $P1056()
  if_1052_end:
.annotate 'line', 754
    find_lex $P1077, "@result"
    unless_null $P1077, vivify_492
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P1078, "$class"
    unless_null $P1078, vivify_493
    new $P1078, "Undef"
  vivify_493:
    $P1077."unshift"($P1078)
.annotate 'line', 755
    new $P1079, "Exception"
    set $P1079['type'], .CONTROL_RETURN
    find_lex $P1080, "@result"
    unless_null $P1080, vivify_494
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    setattribute $P1079, 'payload', $P1080
    throw $P1079
.annotate 'line', 737
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
.sub "_block1055"  :anon :subid("79_1305640904.321") :outer("78_1305640904.321")
.annotate 'line', 742
    .const 'Sub' $P1064 = "80_1305640904.321" 
    capture_lex $P1064
.annotate 'line', 745
    $P1057 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1057
.annotate 'line', 742
    find_lex $P1058, "@merge_list"
    unless_null $P1058, vivify_484
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
.annotate 'line', 746
    find_lex $P1060, "@immediate_parents"
    unless_null $P1060, vivify_485
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    defined $I1061, $P1060
    unless $I1061, for_undef_486
    iter $P1059, $P1060
    new $P1071, 'ExceptionHandler'
    set_label $P1071, loop1070_handler
    $P1071."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1071
  loop1070_test:
    unless $P1059, loop1070_done
    shift $P1062, $P1059
  loop1070_redo:
    .const 'Sub' $P1064 = "80_1305640904.321" 
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
  for_undef_486:
.annotate 'line', 749
    find_lex $P1073, "@merge_list"
    unless_null $P1073, vivify_489
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    find_lex $P1074, "@immediate_parents"
    unless_null $P1074, vivify_490
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    $P1073."push"($P1074)
.annotate 'line', 750
    find_lex $P1075, "@merge_list"
    unless_null $P1075, vivify_491
    $P1075 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    $P1076 = "c3_merge"($P1075)
    store_lex "@result", $P1076
.annotate 'line', 742
    .return ($P1076)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1063"  :anon :subid("80_1305640904.321") :outer("79_1305640904.321")
    .param pmc param_1065
.annotate 'line', 746
    .lex "$_", param_1065
.annotate 'line', 747
    find_lex $P1066, "@merge_list"
    unless_null $P1066, vivify_487
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
    find_lex $P1067, "$_"
    unless_null $P1067, vivify_488
    new $P1067, "Undef"
  vivify_488:
    $P1068 = "compute_c3_mro"($P1067)
    $P1069 = $P1066."push"($P1068)
.annotate 'line', 746
    .return ($P1069)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1086
.annotate 'line', 759
    .const 'Sub' $P1179 = "86_1305640904.321" 
    capture_lex $P1179
    .const 'Sub' $P1101 = "82_1305640904.321" 
    capture_lex $P1101
    new $P1085, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1085, control_1084
    push_eh $P1085
    .lex "@merge_list", param_1086
.annotate 'line', 760
    $P1087 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1087
.annotate 'line', 761
    new $P1088, "Undef"
    .lex "$accepted", $P1088
.annotate 'line', 762
    new $P1089, "Undef"
    .lex "$something_accepted", $P1089
.annotate 'line', 763
    new $P1090, "Undef"
    .lex "$cand_count", $P1090
.annotate 'line', 806
    new $P1091, "Undef"
    .lex "$i", $P1091
.annotate 'line', 759
    find_lex $P1092, "@result"
    unless_null $P1092, vivify_495
    $P1092 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    find_lex $P1093, "$accepted"
    unless_null $P1093, vivify_496
    new $P1093, "Undef"
  vivify_496:
.annotate 'line', 762
    new $P1094, "Integer"
    assign $P1094, 0
    store_lex "$something_accepted", $P1094
.annotate 'line', 763
    new $P1095, "Integer"
    assign $P1095, 0
    store_lex "$cand_count", $P1095
.annotate 'line', 766
    find_lex $P1097, "@merge_list"
    unless_null $P1097, vivify_497
    $P1097 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    defined $I1098, $P1097
    unless $I1098, for_undef_498
    iter $P1096, $P1097
    new $P1162, 'ExceptionHandler'
    set_label $P1162, loop1161_handler
    $P1162."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1162
  loop1161_test:
    unless $P1096, loop1161_done
    shift $P1099, $P1096
  loop1161_redo:
    .const 'Sub' $P1101 = "82_1305640904.321" 
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
  for_undef_498:
.annotate 'line', 796
    find_lex $P1165, "$cand_count"
    unless_null $P1165, vivify_517
    new $P1165, "Undef"
  vivify_517:
    set $N1166, $P1165
    iseq $I1167, $N1166, 0.0
    unless $I1167, if_1164_end
.annotate 'line', 797
    new $P1168, "Exception"
    set $P1168['type'], .CONTROL_RETURN
    find_lex $P1169, "@result"
    unless_null $P1169, vivify_518
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    setattribute $P1168, 'payload', $P1169
    throw $P1168
  if_1164_end:
.annotate 'line', 801
    find_lex $P1171, "$something_accepted"
    unless_null $P1171, vivify_519
    new $P1171, "Undef"
  vivify_519:
    if $P1171, unless_1170_end
.annotate 'line', 802
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1170_end:
.annotate 'line', 806
    new $P1172, "Integer"
    assign $P1172, 0
    store_lex "$i", $P1172
.annotate 'line', 807
    new $P1210, 'ExceptionHandler'
    set_label $P1210, loop1209_handler
    $P1210."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1210
  loop1209_test:
    find_lex $P1173, "$i"
    unless_null $P1173, vivify_520
    new $P1173, "Undef"
  vivify_520:
    set $N1174, $P1173
    find_lex $P1175, "@merge_list"
    unless_null $P1175, vivify_521
    $P1175 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    set $N1176, $P1175
    islt $I1177, $N1174, $N1176
    unless $I1177, loop1209_done
  loop1209_redo:
    .const 'Sub' $P1179 = "86_1305640904.321" 
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
.annotate 'line', 820
    find_lex $P1212, "@merge_list"
    unless_null $P1212, vivify_535
    $P1212 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    $P1213 = "c3_merge"($P1212)
    store_lex "@result", $P1213
.annotate 'line', 821
    find_lex $P1214, "@result"
    unless_null $P1214, vivify_536
    $P1214 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    find_lex $P1215, "$accepted"
    unless_null $P1215, vivify_537
    new $P1215, "Undef"
  vivify_537:
    $P1214."unshift"($P1215)
.annotate 'line', 822
    new $P1216, "Exception"
    set $P1216['type'], .CONTROL_RETURN
    find_lex $P1217, "@result"
    unless_null $P1217, vivify_538
    $P1217 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    setattribute $P1216, 'payload', $P1217
    throw $P1216
.annotate 'line', 759
    .return ()
  control_1084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1218, exception, "payload"
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1100"  :anon :subid("82_1305640904.321") :outer("81_1305640904.321")
    .param pmc param_1103
.annotate 'line', 766
    .const 'Sub' $P1110 = "83_1305640904.321" 
    capture_lex $P1110
.annotate 'line', 767
    $P1102 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1102
    .lex "$_", param_1103
    find_lex $P1104, "$_"
    unless_null $P1104, vivify_499
    new $P1104, "Undef"
  vivify_499:
    store_lex "@cand_list", $P1104
.annotate 'line', 768
    find_lex $P1107, "@cand_list"
    unless_null $P1107, vivify_500
    $P1107 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    set $N1108, $P1107
    if $N1108, if_1106
    new $P1105, 'Float'
    set $P1105, $N1108
    goto if_1106_end
  if_1106:
    .const 'Sub' $P1110 = "83_1305640904.321" 
    capture_lex $P1110
    $P1160 = $P1110()
    set $P1105, $P1160
  if_1106_end:
.annotate 'line', 766
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1109"  :anon :subid("83_1305640904.321") :outer("82_1305640904.321")
.annotate 'line', 768
    .const 'Sub' $P1123 = "84_1305640904.321" 
    capture_lex $P1123
.annotate 'line', 769
    new $P1111, "Undef"
    .lex "$rejected", $P1111
.annotate 'line', 770
    new $P1112, "Undef"
    .lex "$cand_class", $P1112
.annotate 'line', 769
    new $P1113, "Integer"
    assign $P1113, 0
    store_lex "$rejected", $P1113
.annotate 'line', 770
    find_lex $P1114, "@cand_list"
    unless_null $P1114, vivify_501
    $P1114 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    set $P1115, $P1114[0]
    unless_null $P1115, vivify_502
    new $P1115, "Undef"
  vivify_502:
    store_lex "$cand_class", $P1115
.annotate 'line', 771
    find_lex $P1116, "$cand_count"
    unless_null $P1116, vivify_503
    new $P1116, "Undef"
  vivify_503:
    add $P1117, $P1116, 1
    store_lex "$cand_count", $P1117
.annotate 'line', 772
    find_lex $P1119, "@merge_list"
    unless_null $P1119, vivify_504
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    defined $I1120, $P1119
    unless $I1120, for_undef_505
    iter $P1118, $P1119
    new $P1158, 'ExceptionHandler'
    set_label $P1158, loop1157_handler
    $P1158."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1158
  loop1157_test:
    unless $P1118, loop1157_done
    shift $P1121, $P1118
  loop1157_redo:
    .const 'Sub' $P1123 = "84_1305640904.321" 
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
  for_undef_505:
.annotate 'line', 768
    .return ($P1118)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1122"  :anon :subid("84_1305640904.321") :outer("83_1305640904.321")
    .param pmc param_1124
.annotate 'line', 772
    .const 'Sub' $P1130 = "85_1305640904.321" 
    capture_lex $P1130
    .lex "$_", param_1124
.annotate 'line', 774
    find_lex $P1126, "$_"
    unless_null $P1126, vivify_506
    new $P1126, "Undef"
  vivify_506:
    find_lex $P1127, "@cand_list"
    unless_null $P1127, vivify_507
    $P1127 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    issame $I1128, $P1126, $P1127
    if $I1128, unless_1125_end
    .const 'Sub' $P1130 = "85_1305640904.321" 
    capture_lex $P1130
    $P1130()
  unless_1125_end:
.annotate 'line', 786
    find_lex $P1153, "$rejected"
    unless_null $P1153, vivify_515
    new $P1153, "Undef"
  vivify_515:
    unless $P1153, unless_1152
    set $P1151, $P1153
    goto unless_1152_end
  unless_1152:
.annotate 'line', 787
    find_lex $P1154, "$cand_class"
    unless_null $P1154, vivify_516
    new $P1154, "Undef"
  vivify_516:
    store_lex "$accepted", $P1154
.annotate 'line', 788
    new $P1155, "Integer"
    assign $P1155, 1
    store_lex "$something_accepted", $P1155
.annotate 'line', 789
    set $I1156, .CONTROL_LOOP_LAST
    die 0, $I1156
  unless_1152_end:
.annotate 'line', 772
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("85_1305640904.321") :outer("84_1305640904.321")
.annotate 'line', 776
    new $P1131, "Undef"
    .lex "$cur_pos", $P1131
    new $P1132, "Integer"
    assign $P1132, 1
    store_lex "$cur_pos", $P1132
.annotate 'line', 777
    new $P1149, 'ExceptionHandler'
    set_label $P1149, loop1148_handler
    $P1149."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1149
  loop1148_test:
    find_lex $P1133, "$cur_pos"
    unless_null $P1133, vivify_508
    new $P1133, "Undef"
  vivify_508:
    set $N1134, $P1133
    find_lex $P1135, "$_"
    unless_null $P1135, vivify_509
    new $P1135, "Undef"
  vivify_509:
    set $N1136, $P1135
    isle $I1137, $N1134, $N1136
    unless $I1137, loop1148_done
  loop1148_redo:
.annotate 'line', 778
    find_lex $P1139, "$cur_pos"
    unless_null $P1139, vivify_510
    new $P1139, "Undef"
  vivify_510:
    set $I1140, $P1139
    find_lex $P1141, "$_"
    unless_null $P1141, vivify_511
    $P1141 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    set $P1142, $P1141[$I1140]
    unless_null $P1142, vivify_512
    new $P1142, "Undef"
  vivify_512:
    find_lex $P1143, "$cand_class"
    unless_null $P1143, vivify_513
    new $P1143, "Undef"
  vivify_513:
    issame $I1144, $P1142, $P1143
    unless $I1144, if_1138_end
.annotate 'line', 779
    new $P1145, "Integer"
    assign $P1145, 1
    store_lex "$rejected", $P1145
  if_1138_end:
.annotate 'line', 781
    find_lex $P1146, "$cur_pos"
    unless_null $P1146, vivify_514
    new $P1146, "Undef"
  vivify_514:
    add $P1147, $P1146, 1
    store_lex "$cur_pos", $P1147
  loop1148_next:
.annotate 'line', 777
    goto loop1148_test
  loop1148_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1150, exception, 'type'
    eq $P1150, .CONTROL_LOOP_NEXT, loop1148_next
    eq $P1150, .CONTROL_LOOP_REDO, loop1148_redo
  loop1148_done:
    pop_eh 
.annotate 'line', 774
    .return ($I1137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1178"  :anon :subid("86_1305640904.321") :outer("81_1305640904.321")
.annotate 'line', 807
    .const 'Sub' $P1190 = "87_1305640904.321" 
    capture_lex $P1190
.annotate 'line', 808
    $P1180 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1180
.annotate 'line', 807
    find_lex $P1181, "@new_list"
    unless_null $P1181, vivify_522
    $P1181 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
.annotate 'line', 809
    find_lex $P1183, "$i"
    unless_null $P1183, vivify_523
    new $P1183, "Undef"
  vivify_523:
    set $I1184, $P1183
    find_lex $P1185, "@merge_list"
    unless_null $P1185, vivify_524
    $P1185 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $P1186, $P1185[$I1184]
    unless_null $P1186, vivify_525
    new $P1186, "Undef"
  vivify_525:
    defined $I1187, $P1186
    unless $I1187, for_undef_526
    iter $P1182, $P1186
    new $P1201, 'ExceptionHandler'
    set_label $P1201, loop1200_handler
    $P1201."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1201
  loop1200_test:
    unless $P1182, loop1200_done
    shift $P1188, $P1182
  loop1200_redo:
    .const 'Sub' $P1190 = "87_1305640904.321" 
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
  for_undef_526:
.annotate 'line', 814
    find_lex $P1203, "@new_list"
    unless_null $P1203, vivify_531
    $P1203 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    find_lex $P1204, "$i"
    unless_null $P1204, vivify_532
    new $P1204, "Undef"
  vivify_532:
    set $I1205, $P1204
    find_lex $P1206, "@merge_list"
    unless_null $P1206, vivify_533
    $P1206 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1206
  vivify_533:
    set $P1206[$I1205], $P1203
.annotate 'line', 815
    find_lex $P1207, "$i"
    unless_null $P1207, vivify_534
    new $P1207, "Undef"
  vivify_534:
    add $P1208, $P1207, 1
    store_lex "$i", $P1208
.annotate 'line', 807
    .return ($P1208)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1189"  :anon :subid("87_1305640904.321") :outer("86_1305640904.321")
    .param pmc param_1191
.annotate 'line', 809
    .lex "$_", param_1191
.annotate 'line', 810
    find_lex $P1194, "$_"
    unless_null $P1194, vivify_527
    new $P1194, "Undef"
  vivify_527:
    find_lex $P1195, "$accepted"
    unless_null $P1195, vivify_528
    new $P1195, "Undef"
  vivify_528:
    issame $I1196, $P1194, $P1195
    unless $I1196, unless_1193
    new $P1192, 'Integer'
    set $P1192, $I1196
    goto unless_1193_end
  unless_1193:
.annotate 'line', 811
    find_lex $P1197, "@new_list"
    unless_null $P1197, vivify_529
    $P1197 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    find_lex $P1198, "$_"
    unless_null $P1198, vivify_530
    new $P1198, "Undef"
  vivify_530:
    $P1199 = $P1197."push"($P1198)
.annotate 'line', 810
    set $P1192, $P1199
  unless_1193_end:
.annotate 'line', 809
    .return ($P1192)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("88_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1223
    .param pmc param_1224 :optional :named("name")
    .param int has_param_1224 :opt_flag
.annotate 'line', 537
    .lex "self", param_1223
    if has_param_1224, optparam_539
    new $P1225, "Undef"
    set param_1224, $P1225
  optparam_539:
    .lex "$name", param_1224
.annotate 'line', 538
    new $P1226, "Undef"
    .lex "$obj", $P1226
    find_lex $P1227, "self"
    repr_instance_of $P1228, $P1227
    store_lex "$obj", $P1228
.annotate 'line', 539
    find_lex $P1229, "$obj"
    unless_null $P1229, vivify_540
    new $P1229, "Undef"
  vivify_540:
    find_lex $P1230, "$name"
    unless_null $P1230, vivify_541
    new $P1230, "Undef"
  vivify_541:
    $P1229."BUILD"($P1230 :named("name"))
    find_lex $P1231, "$obj"
    unless_null $P1231, vivify_542
    new $P1231, "Undef"
  vivify_542:
.annotate 'line', 537
    .return ($P1231)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("89_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1233
    .param pmc param_1234 :optional :named("name")
    .param int has_param_1234 :opt_flag
.annotate 'line', 543
    .lex "self", param_1233
    if has_param_1234, optparam_543
    new $P1235, "Undef"
    set param_1234, $P1235
  optparam_543:
    .lex "$name", param_1234
.annotate 'line', 544
    find_lex $P1236, "$name"
    unless_null $P1236, vivify_544
    new $P1236, "Undef"
  vivify_544:
    find_lex $P1237, "self"
    find_lex $P1238, "$?CLASS"
    setattribute $P1237, $P1238, "$!name", $P1236
.annotate 'line', 543
    .return ($P1236)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("90_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1240
    .param pmc param_1241 :optional :named("name")
    .param int has_param_1241 :opt_flag
    .param pmc param_1243 :optional :named("repr")
    .param int has_param_1243 :opt_flag
.annotate 'line', 549
    .lex "self", param_1240
    if has_param_1241, optparam_545
    new $P1242, "String"
    assign $P1242, "<anon>"
    set param_1241, $P1242
  optparam_545:
    .lex "$name", param_1241
    if has_param_1243, optparam_546
    new $P1244, "String"
    assign $P1244, "P6opaque"
    set param_1243, $P1244
  optparam_546:
    .lex "$repr", param_1243
.annotate 'line', 550
    new $P1245, "Undef"
    .lex "$metaclass", $P1245
    find_lex $P1246, "self"
    find_lex $P1247, "$name"
    unless_null $P1247, vivify_547
    new $P1247, "Undef"
  vivify_547:
    $P1248 = $P1246."new"($P1247 :named("name"))
    store_lex "$metaclass", $P1248
.annotate 'line', 552
    find_lex $P1249, "$metaclass"
    unless_null $P1249, vivify_548
    new $P1249, "Undef"
  vivify_548:
    find_lex $P1250, "$repr"
    unless_null $P1250, vivify_549
    new $P1250, "Undef"
  vivify_549:
    set $S1251, $P1250
    repr_type_object_for $P1252, $P1249, $S1251
    $P1253 = root_new ['parrot';'Hash']
    set_who $P1252, $P1253
.annotate 'line', 549
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("91_1305640904.321") :outer("77_1305640904.321")
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
    unless_null $P1260, vivify_550
    new $P1260, "Undef"
  vivify_550:
    find_lex $P1261, "self"
    find_lex $P1262, "$?CLASS"
    getattribute $P1263, $P1261, $P1262, "%!methods"
    unless_null $P1263, vivify_551
    $P1263 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1264, $P1263[$P1260]
    unless_null $P1264, vivify_552
    new $P1264, "Undef"
  vivify_552:
    unless $P1264, if_1259_end
.annotate 'line', 558
    new $P1265, "String"
    assign $P1265, "This class already has a method named "
    find_lex $P1266, "$name"
    unless_null $P1266, vivify_553
    new $P1266, "Undef"
  vivify_553:
    concat $P1267, $P1265, $P1266
    die $P1267
  if_1259_end:
.annotate 'line', 560
    find_lex $P1271, "$code_obj"
    unless_null $P1271, vivify_554
    new $P1271, "Undef"
  vivify_554:
    isnull $I1272, $P1271
    unless $I1272, unless_1270
    new $P1269, 'Integer'
    set $P1269, $I1272
    goto unless_1270_end
  unless_1270:
    find_lex $P1273, "$code_obj"
    unless_null $P1273, vivify_555
    new $P1273, "Undef"
  vivify_555:
    isa $I1274, $P1273, "Undef"
    new $P1269, 'Integer'
    set $P1269, $I1274
  unless_1270_end:
    unless $P1269, if_1268_end
.annotate 'line', 561
    new $P1275, 'String'
    set $P1275, "Cannot add a null method '"
    find_lex $P1276, "$name"
    unless_null $P1276, vivify_556
    new $P1276, "Undef"
  vivify_556:
    concat $P1277, $P1275, $P1276
    concat $P1278, $P1277, "' to class '"
    find_lex $P1279, "self"
    find_lex $P1280, "$?CLASS"
    getattribute $P1281, $P1279, $P1280, "$!name"
    unless_null $P1281, vivify_557
    new $P1281, "Undef"
  vivify_557:
    concat $P1282, $P1278, $P1281
    concat $P1283, $P1282, "'"
    die $P1283
  if_1268_end:
.annotate 'line', 563
    find_lex $P1284, "$code_obj"
    unless_null $P1284, vivify_558
    new $P1284, "Undef"
  vivify_558:
    find_lex $P1285, "$name"
    unless_null $P1285, vivify_559
    new $P1285, "Undef"
  vivify_559:
    find_lex $P1286, "self"
    find_lex $P1287, "$?CLASS"
    getattribute $P1288, $P1286, $P1287, "%!methods"
    unless_null $P1288, vivify_560
    $P1288 = root_new ['parrot';'Hash']
    setattribute $P1286, $P1287, "%!methods", $P1288
  vivify_560:
    set $P1288[$P1285], $P1284
.annotate 'line', 556
    .return ($P1284)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("92_1305640904.321") :outer("77_1305640904.321")
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
    unless_null $P1295, vivify_561
    $P1295 = root_new ['parrot';'Hash']
  vivify_561:
.annotate 'line', 573
    find_lex $P1296, "$name"
    unless_null $P1296, vivify_562
    new $P1296, "Undef"
  vivify_562:
    find_lex $P1297, "%todo"
    unless_null $P1297, vivify_563
    $P1297 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1297
  vivify_563:
    set $P1297["name"], $P1296
.annotate 'line', 574
    find_lex $P1298, "$code_obj"
    unless_null $P1298, vivify_564
    new $P1298, "Undef"
  vivify_564:
    find_lex $P1299, "%todo"
    unless_null $P1299, vivify_565
    $P1299 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1299
  vivify_565:
    set $P1299["code"], $P1298
.annotate 'line', 575
    find_lex $P1300, "%todo"
    unless_null $P1300, vivify_566
    $P1300 = root_new ['parrot';'Hash']
  vivify_566:
    find_lex $P1301, "self"
    find_lex $P1302, "$?CLASS"
    getattribute $P1303, $P1301, $P1302, "@!multi_methods_to_incorporate"
    unless_null $P1303, vivify_567
    $P1303 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    set $N1304, $P1303
    set $I1305, $N1304
    find_lex $P1306, "self"
    find_lex $P1307, "$?CLASS"
    getattribute $P1308, $P1306, $P1307, "@!multi_methods_to_incorporate"
    unless_null $P1308, vivify_568
    $P1308 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1306, $P1307, "@!multi_methods_to_incorporate", $P1308
  vivify_568:
    set $P1308[$I1305], $P1300
    find_lex $P1309, "$code_obj"
    unless_null $P1309, vivify_569
    new $P1309, "Undef"
  vivify_569:
.annotate 'line', 566
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("93_1305640904.321") :outer("77_1305640904.321")
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
    unless_null $P1315, vivify_570
    new $P1315, "Undef"
  vivify_570:
    $P1316 = $P1315."name"()
    store_lex "$name", $P1316
.annotate 'line', 581
    find_lex $P1318, "$name"
    unless_null $P1318, vivify_571
    new $P1318, "Undef"
  vivify_571:
    find_lex $P1319, "self"
    find_lex $P1320, "$?CLASS"
    getattribute $P1321, $P1319, $P1320, "%!attributes"
    unless_null $P1321, vivify_572
    $P1321 = root_new ['parrot';'Hash']
  vivify_572:
    set $P1322, $P1321[$P1318]
    unless_null $P1322, vivify_573
    new $P1322, "Undef"
  vivify_573:
    unless $P1322, if_1317_end
.annotate 'line', 582
    new $P1323, "String"
    assign $P1323, "This class already has an attribute named "
    find_lex $P1324, "$name"
    unless_null $P1324, vivify_574
    new $P1324, "Undef"
  vivify_574:
    concat $P1325, $P1323, $P1324
    die $P1325
  if_1317_end:
.annotate 'line', 584
    find_lex $P1326, "$meta_attr"
    unless_null $P1326, vivify_575
    new $P1326, "Undef"
  vivify_575:
    find_lex $P1327, "$name"
    unless_null $P1327, vivify_576
    new $P1327, "Undef"
  vivify_576:
    find_lex $P1328, "self"
    find_lex $P1329, "$?CLASS"
    getattribute $P1330, $P1328, $P1329, "%!attributes"
    unless_null $P1330, vivify_577
    $P1330 = root_new ['parrot';'Hash']
    setattribute $P1328, $P1329, "%!attributes", $P1330
  vivify_577:
    set $P1330[$P1327], $P1326
.annotate 'line', 579
    .return ($P1326)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("94_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1332
    .param pmc param_1333
    .param pmc param_1334
.annotate 'line', 587
    .const 'Sub' $P1356 = "95_1305640904.321" 
    capture_lex $P1356
    .lex "self", param_1332
    .lex "$obj", param_1333
    .lex "$parent", param_1334
.annotate 'line', 588
    find_lex $P1336, "self"
    find_lex $P1337, "$?CLASS"
    getattribute $P1338, $P1336, $P1337, "$!composed"
    unless_null $P1338, vivify_578
    new $P1338, "Undef"
  vivify_578:
    unless $P1338, if_1335_end
.annotate 'line', 589
    die "NQPClassHOW does not support adding parents after being composed."
  if_1335_end:
.annotate 'line', 591
    find_lex $P1340, "$obj"
    unless_null $P1340, vivify_579
    new $P1340, "Undef"
  vivify_579:
    find_lex $P1341, "$parent"
    unless_null $P1341, vivify_580
    new $P1341, "Undef"
  vivify_580:
    issame $I1342, $P1340, $P1341
    unless $I1342, if_1339_end
.annotate 'line', 592
    new $P1343, 'String'
    set $P1343, "Class '"
    find_lex $P1344, "self"
    find_lex $P1345, "$?CLASS"
    getattribute $P1346, $P1344, $P1345, "$!name"
    unless_null $P1346, vivify_581
    new $P1346, "Undef"
  vivify_581:
    concat $P1347, $P1343, $P1346
    concat $P1348, $P1347, "' cannot inherit from itself."
    die $P1348
  if_1339_end:
.annotate 'line', 594
    find_lex $P1350, "self"
    find_lex $P1351, "$?CLASS"
    getattribute $P1352, $P1350, $P1351, "@!parents"
    unless_null $P1352, vivify_582
    $P1352 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    defined $I1353, $P1352
    unless $I1353, for_undef_583
    iter $P1349, $P1352
    new $P1368, 'ExceptionHandler'
    set_label $P1368, loop1367_handler
    $P1368."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1368
  loop1367_test:
    unless $P1349, loop1367_done
    shift $P1354, $P1349
  loop1367_redo:
    .const 'Sub' $P1356 = "95_1305640904.321" 
    capture_lex $P1356
    $P1356($P1354)
  loop1367_next:
    goto loop1367_test
  loop1367_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1369, exception, 'type'
    eq $P1369, .CONTROL_LOOP_NEXT, loop1367_next
    eq $P1369, .CONTROL_LOOP_REDO, loop1367_redo
  loop1367_done:
    pop_eh 
  for_undef_583:
.annotate 'line', 599
    find_lex $P1370, "$parent"
    unless_null $P1370, vivify_587
    new $P1370, "Undef"
  vivify_587:
    find_lex $P1371, "self"
    find_lex $P1372, "$?CLASS"
    getattribute $P1373, $P1371, $P1372, "@!parents"
    unless_null $P1373, vivify_588
    $P1373 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1374, $P1373
    set $I1375, $N1374
    find_lex $P1376, "self"
    find_lex $P1377, "$?CLASS"
    getattribute $P1378, $P1376, $P1377, "@!parents"
    unless_null $P1378, vivify_589
    $P1378 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1376, $P1377, "@!parents", $P1378
  vivify_589:
    set $P1378[$I1375], $P1370
.annotate 'line', 587
    .return ($P1370)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1355"  :anon :subid("95_1305640904.321") :outer("94_1305640904.321")
    .param pmc param_1357
.annotate 'line', 594
    .lex "$_", param_1357
.annotate 'line', 595
    find_lex $P1360, "$_"
    unless_null $P1360, vivify_584
    new $P1360, "Undef"
  vivify_584:
    find_lex $P1361, "$parent"
    unless_null $P1361, vivify_585
    new $P1361, "Undef"
  vivify_585:
    issame $I1362, $P1360, $P1361
    if $I1362, if_1359
    new $P1358, 'Integer'
    set $P1358, $I1362
    goto if_1359_end
  if_1359:
.annotate 'line', 596
    new $P1363, "String"
    assign $P1363, "Already have "
    find_lex $P1364, "$parent"
    unless_null $P1364, vivify_586
    new $P1364, "Undef"
  vivify_586:
    concat $P1365, $P1363, $P1364
    concat $P1366, $P1365, " as a parent class."
    die $P1366
  if_1359_end:
.annotate 'line', 594
    .return ($P1358)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("96_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1380
    .param pmc param_1381
    .param pmc param_1382
.annotate 'line', 602
    .lex "self", param_1380
    .lex "$obj", param_1381
    .lex "$parent", param_1382
.annotate 'line', 603
    find_lex $P1383, "$parent"
    unless_null $P1383, vivify_590
    new $P1383, "Undef"
  vivify_590:
    find_lex $P1384, "self"
    find_lex $P1385, "$?CLASS"
    setattribute $P1384, $P1385, "$!default_parent", $P1383
.annotate 'line', 602
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("97_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1387
    .param pmc param_1388
    .param pmc param_1389
.annotate 'line', 606
    .const 'Sub' $P1397 = "98_1305640904.321" 
    capture_lex $P1397
    .lex "self", param_1387
    .lex "$obj", param_1388
    .lex "$role", param_1389
.annotate 'line', 607
    find_lex $P1391, "self"
    find_lex $P1392, "$?CLASS"
    getattribute $P1393, $P1391, $P1392, "@!roles"
    unless_null $P1393, vivify_591
    $P1393 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I1394, $P1393
    unless $I1394, for_undef_592
    iter $P1390, $P1393
    new $P1409, 'ExceptionHandler'
    set_label $P1409, loop1408_handler
    $P1409."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1409
  loop1408_test:
    unless $P1390, loop1408_done
    shift $P1395, $P1390
  loop1408_redo:
    .const 'Sub' $P1397 = "98_1305640904.321" 
    capture_lex $P1397
    $P1397($P1395)
  loop1408_next:
    goto loop1408_test
  loop1408_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1410, exception, 'type'
    eq $P1410, .CONTROL_LOOP_NEXT, loop1408_next
    eq $P1410, .CONTROL_LOOP_REDO, loop1408_redo
  loop1408_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 612
    find_lex $P1411, "$role"
    unless_null $P1411, vivify_596
    new $P1411, "Undef"
  vivify_596:
    find_lex $P1412, "self"
    find_lex $P1413, "$?CLASS"
    getattribute $P1414, $P1412, $P1413, "@!roles"
    unless_null $P1414, vivify_597
    $P1414 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N1415, $P1414
    set $I1416, $N1415
    find_lex $P1417, "self"
    find_lex $P1418, "$?CLASS"
    getattribute $P1419, $P1417, $P1418, "@!roles"
    unless_null $P1419, vivify_598
    $P1419 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1417, $P1418, "@!roles", $P1419
  vivify_598:
    set $P1419[$I1416], $P1411
.annotate 'line', 606
    .return ($P1411)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1396"  :anon :subid("98_1305640904.321") :outer("97_1305640904.321")
    .param pmc param_1398
.annotate 'line', 607
    .lex "$_", param_1398
.annotate 'line', 608
    find_lex $P1401, "$_"
    unless_null $P1401, vivify_593
    new $P1401, "Undef"
  vivify_593:
    find_lex $P1402, "$role"
    unless_null $P1402, vivify_594
    new $P1402, "Undef"
  vivify_594:
    issame $I1403, $P1401, $P1402
    if $I1403, if_1400
    new $P1399, 'Integer'
    set $P1399, $I1403
    goto if_1400_end
  if_1400:
.annotate 'line', 609
    new $P1404, "String"
    assign $P1404, "The role "
    find_lex $P1405, "$role"
    unless_null $P1405, vivify_595
    new $P1405, "Undef"
  vivify_595:
    concat $P1406, $P1404, $P1405
    concat $P1407, $P1406, " has already been added."
    die $P1407
  if_1400_end:
.annotate 'line', 607
    .return ($P1399)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("99_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1421
    .param pmc param_1422
    .param pmc param_1423
    .param pmc param_1424
.annotate 'line', 615
    .lex "self", param_1421
    .lex "$obj", param_1422
    .lex "$name", param_1423
    .lex "$meth", param_1424
.annotate 'line', 616
    find_lex $P1426, "$name"
    unless_null $P1426, vivify_599
    new $P1426, "Undef"
  vivify_599:
    find_lex $P1427, "self"
    find_lex $P1428, "$?CLASS"
    getattribute $P1429, $P1427, $P1428, "%!parrot_vtable_mapping"
    unless_null $P1429, vivify_600
    $P1429 = root_new ['parrot';'Hash']
  vivify_600:
    set $P1430, $P1429[$P1426]
    unless_null $P1430, vivify_601
    new $P1430, "Undef"
  vivify_601:
    defined $I1431, $P1430
    unless $I1431, if_1425_end
.annotate 'line', 617
    new $P1432, "String"
    assign $P1432, "Class '"
    find_lex $P1433, "self"
    find_lex $P1434, "$?CLASS"
    getattribute $P1435, $P1433, $P1434, "$!name"
    unless_null $P1435, vivify_602
    new $P1435, "Undef"
  vivify_602:
    concat $P1436, $P1432, $P1435
    concat $P1437, $P1436, "' already has a Parrot v-table override for '"
    find_lex $P1438, "$name"
    unless_null $P1438, vivify_603
    new $P1438, "Undef"
  vivify_603:
    concat $P1439, $P1437, $P1438
.annotate 'line', 618
    concat $P1440, $P1439, "'"
.annotate 'line', 619
    die $P1440
  if_1425_end:
.annotate 'line', 621
    find_lex $P1441, "$meth"
    unless_null $P1441, vivify_604
    new $P1441, "Undef"
  vivify_604:
    find_lex $P1442, "$name"
    unless_null $P1442, vivify_605
    new $P1442, "Undef"
  vivify_605:
    find_lex $P1443, "self"
    find_lex $P1444, "$?CLASS"
    getattribute $P1445, $P1443, $P1444, "%!parrot_vtable_mapping"
    unless_null $P1445, vivify_606
    $P1445 = root_new ['parrot';'Hash']
    setattribute $P1443, $P1444, "%!parrot_vtable_mapping", $P1445
  vivify_606:
    set $P1445[$P1442], $P1441
.annotate 'line', 615
    .return ($P1441)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("100_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1447
    .param pmc param_1448
    .param pmc param_1449
    .param pmc param_1450
.annotate 'line', 624
    .lex "self", param_1447
    .lex "$obj", param_1448
    .lex "$name", param_1449
    .lex "$att_name", param_1450
.annotate 'line', 625
    find_lex $P1452, "$name"
    unless_null $P1452, vivify_607
    new $P1452, "Undef"
  vivify_607:
    find_lex $P1453, "self"
    find_lex $P1454, "$?CLASS"
    getattribute $P1455, $P1453, $P1454, "%!parrot_vtable_handler_mapping"
    unless_null $P1455, vivify_608
    $P1455 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1456, $P1455[$P1452]
    unless_null $P1456, vivify_609
    new $P1456, "Undef"
  vivify_609:
    defined $I1457, $P1456
    unless $I1457, if_1451_end
.annotate 'line', 626
    new $P1458, "String"
    assign $P1458, "Class '"
    find_lex $P1459, "self"
    find_lex $P1460, "$?CLASS"
    getattribute $P1461, $P1459, $P1460, "$!name"
    unless_null $P1461, vivify_610
    new $P1461, "Undef"
  vivify_610:
    concat $P1462, $P1458, $P1461
    concat $P1463, $P1462, "' already has a Parrot v-table handler for '"
    find_lex $P1464, "$name"
    unless_null $P1464, vivify_611
    new $P1464, "Undef"
  vivify_611:
    concat $P1465, $P1463, $P1464
.annotate 'line', 627
    concat $P1466, $P1465, "'"
.annotate 'line', 628
    die $P1466
  if_1451_end:
.annotate 'line', 630
    find_lex $P1467, "$obj"
    unless_null $P1467, vivify_612
    new $P1467, "Undef"
  vivify_612:
    find_lex $P1468, "$att_name"
    unless_null $P1468, vivify_613
    new $P1468, "Undef"
  vivify_613:
    new $P1469, "ResizablePMCArray"
    push $P1469, $P1467
    push $P1469, $P1468
    find_lex $P1470, "$name"
    unless_null $P1470, vivify_614
    new $P1470, "Undef"
  vivify_614:
    find_lex $P1471, "self"
    find_lex $P1472, "$?CLASS"
    getattribute $P1473, $P1471, $P1472, "%!parrot_vtable_handler_mapping"
    unless_null $P1473, vivify_615
    $P1473 = root_new ['parrot';'Hash']
    setattribute $P1471, $P1472, "%!parrot_vtable_handler_mapping", $P1473
  vivify_615:
    set $P1473[$P1470], $P1469
.annotate 'line', 624
    .return ($P1469)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("101_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1475
    .param pmc param_1476
.annotate 'line', 633
    .const 'Sub' $P1565 = "104_1305640904.321" 
    capture_lex $P1565
    .const 'Sub' $P1482 = "102_1305640904.321" 
    capture_lex $P1482
    .lex "self", param_1475
    .lex "$obj", param_1476
.annotate 'line', 637
    find_lex $P1478, "self"
    find_lex $P1479, "$?CLASS"
    getattribute $P1480, $P1478, $P1479, "@!roles"
    unless_null $P1480, vivify_616
    $P1480 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    unless $P1480, if_1477_end
    .const 'Sub' $P1482 = "102_1305640904.321" 
    capture_lex $P1482
    $P1482()
  if_1477_end:
.annotate 'line', 650
    find_lex $P1530, "self"
    find_lex $P1531, "$?CLASS"
    getattribute $P1532, $P1530, $P1531, "@!parents"
    unless_null $P1532, vivify_633
    $P1532 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $N1533, $P1532
    iseq $I1534, $N1533, 0.0
    if $I1534, if_1529
    new $P1528, 'Integer'
    set $P1528, $I1534
    goto if_1529_end
  if_1529:
    find_lex $P1535, "self"
    find_lex $P1536, "$?CLASS"
    getattribute $P1537, $P1535, $P1536, "$!name"
    unless_null $P1537, vivify_634
    new $P1537, "Undef"
  vivify_634:
    set $S1538, $P1537
    isne $I1539, $S1538, "NQPMu"
    new $P1528, 'Integer'
    set $P1528, $I1539
  if_1529_end:
    unless $P1528, if_1527_end
.annotate 'line', 651
    find_lex $P1540, "self"
    find_lex $P1541, "$obj"
    unless_null $P1541, vivify_635
    new $P1541, "Undef"
  vivify_635:
    find_lex $P1542, "self"
    find_lex $P1543, "$?CLASS"
    getattribute $P1544, $P1542, $P1543, "$!default_parent"
    unless_null $P1544, vivify_636
    new $P1544, "Undef"
  vivify_636:
    $P1540."add_parent"($P1541, $P1544)
  if_1527_end:
.annotate 'line', 656
    find_lex $P1546, "self"
    find_lex $P1547, "$?CLASS"
    getattribute $P1548, $P1546, $P1547, "$!composed"
    unless_null $P1548, vivify_637
    new $P1548, "Undef"
  vivify_637:
    if $P1548, unless_1545_end
.annotate 'line', 657
    find_lex $P1549, "$obj"
    unless_null $P1549, vivify_638
    new $P1549, "Undef"
  vivify_638:
    $P1550 = "compute_c3_mro"($P1549)
    find_lex $P1551, "self"
    find_lex $P1552, "$?CLASS"
    setattribute $P1551, $P1552, "@!mro", $P1550
.annotate 'line', 658
    new $P1553, "Integer"
    assign $P1553, 1
    find_lex $P1554, "self"
    find_lex $P1555, "$?CLASS"
    setattribute $P1554, $P1555, "$!composed", $P1553
  unless_1545_end:
.annotate 'line', 662
    find_lex $P1556, "self"
    find_lex $P1557, "$obj"
    unless_null $P1557, vivify_639
    new $P1557, "Undef"
  vivify_639:
    $P1556."incorporate_multi_candidates"($P1557)
.annotate 'line', 665
    find_lex $P1559, "self"
    find_lex $P1560, "$obj"
    unless_null $P1560, vivify_640
    new $P1560, "Undef"
  vivify_640:
    $P1561 = $P1559."attributes"($P1560, "0" :named("local"))
    defined $I1562, $P1561
    unless $I1562, for_undef_641
    iter $P1558, $P1561
    new $P1571, 'ExceptionHandler'
    set_label $P1571, loop1570_handler
    $P1571."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1571
  loop1570_test:
    unless $P1558, loop1570_done
    shift $P1563, $P1558
  loop1570_redo:
    .const 'Sub' $P1565 = "104_1305640904.321" 
    capture_lex $P1565
    $P1565($P1563)
  loop1570_next:
    goto loop1570_test
  loop1570_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1572, exception, 'type'
    eq $P1572, .CONTROL_LOOP_NEXT, loop1570_next
    eq $P1572, .CONTROL_LOOP_REDO, loop1570_redo
  loop1570_done:
    pop_eh 
  for_undef_641:
.annotate 'line', 668
    find_lex $P1573, "self"
    find_lex $P1574, "$obj"
    unless_null $P1574, vivify_644
    new $P1574, "Undef"
  vivify_644:
    $P1573."publish_type_cache"($P1574)
.annotate 'line', 669
    find_lex $P1575, "self"
    find_lex $P1576, "$obj"
    unless_null $P1576, vivify_645
    new $P1576, "Undef"
  vivify_645:
    $P1575."publish_method_cache"($P1576)
.annotate 'line', 672
    find_lex $P1577, "self"
    find_lex $P1578, "$obj"
    unless_null $P1578, vivify_646
    new $P1578, "Undef"
  vivify_646:
    $P1577."publish_parrot_vtable_mapping"($P1578)
.annotate 'line', 673
    find_lex $P1579, "self"
    find_lex $P1580, "$obj"
    unless_null $P1580, vivify_647
    new $P1580, "Undef"
  vivify_647:
    $P1579."publish_parrot_vtablee_handler_mapping"($P1580)
    find_lex $P1581, "$obj"
    unless_null $P1581, vivify_648
    new $P1581, "Undef"
  vivify_648:
.annotate 'line', 633
    .return ($P1581)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1481"  :anon :subid("102_1305640904.321") :outer("101_1305640904.321")
.annotate 'line', 637
    .const 'Sub' $P1492 = "103_1305640904.321" 
    capture_lex $P1492
.annotate 'line', 638
    $P1483 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1483
.annotate 'line', 637
    find_lex $P1484, "@instantiated_roles"
    unless_null $P1484, vivify_617
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
.annotate 'line', 639
    find_lex $P1486, "self"
    find_lex $P1487, "$?CLASS"
    getattribute $P1488, $P1486, $P1487, "@!roles"
    unless_null $P1488, vivify_618
    $P1488 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    defined $I1489, $P1488
    unless $I1489, for_undef_619
    iter $P1485, $P1488
    new $P1521, 'ExceptionHandler'
    set_label $P1521, loop1520_handler
    $P1521."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1521
  loop1520_test:
    unless $P1485, loop1520_done
    shift $P1490, $P1485
  loop1520_redo:
    .const 'Sub' $P1492 = "103_1305640904.321" 
    capture_lex $P1492
    $P1492($P1490)
  loop1520_next:
    goto loop1520_test
  loop1520_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1522, exception, 'type'
    eq $P1522, .CONTROL_LOOP_NEXT, loop1520_next
    eq $P1522, .CONTROL_LOOP_REDO, loop1520_redo
  loop1520_done:
    pop_eh 
  for_undef_619:
.annotate 'line', 645
    find_lex $P1523, "RoleToClassApplier"
    find_lex $P1524, "$obj"
    unless_null $P1524, vivify_631
    new $P1524, "Undef"
  vivify_631:
    find_lex $P1525, "@instantiated_roles"
    unless_null $P1525, vivify_632
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    $P1526 = $P1523."apply"($P1524, $P1525)
.annotate 'line', 637
    .return ($P1526)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1491"  :anon :subid("103_1305640904.321") :outer("102_1305640904.321")
    .param pmc param_1494
.annotate 'line', 640
    new $P1493, "Undef"
    .lex "$ins", $P1493
    .lex "$_", param_1494
    find_lex $P1495, "$_"
    unless_null $P1495, vivify_620
    new $P1495, "Undef"
  vivify_620:
    get_how $P1496, $P1495
    find_lex $P1497, "$_"
    unless_null $P1497, vivify_621
    new $P1497, "Undef"
  vivify_621:
    find_lex $P1498, "$obj"
    unless_null $P1498, vivify_622
    new $P1498, "Undef"
  vivify_622:
    $P1499 = $P1496."instantiate"($P1497, $P1498)
    store_lex "$ins", $P1499
.annotate 'line', 641
    find_lex $P1500, "@instantiated_roles"
    unless_null $P1500, vivify_623
    $P1500 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P1501, "$ins"
    unless_null $P1501, vivify_624
    new $P1501, "Undef"
  vivify_624:
    $P1500."push"($P1501)
.annotate 'line', 642
    find_lex $P1502, "$_"
    unless_null $P1502, vivify_625
    new $P1502, "Undef"
  vivify_625:
    find_lex $P1503, "self"
    find_lex $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "@!done"
    unless_null $P1505, vivify_626
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    set $N1506, $P1505
    set $I1507, $N1506
    find_lex $P1508, "self"
    find_lex $P1509, "$?CLASS"
    getattribute $P1510, $P1508, $P1509, "@!done"
    unless_null $P1510, vivify_627
    $P1510 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1508, $P1509, "@!done", $P1510
  vivify_627:
    set $P1510[$I1507], $P1502
.annotate 'line', 643
    find_lex $P1511, "$ins"
    unless_null $P1511, vivify_628
    new $P1511, "Undef"
  vivify_628:
    find_lex $P1512, "self"
    find_lex $P1513, "$?CLASS"
    getattribute $P1514, $P1512, $P1513, "@!done"
    unless_null $P1514, vivify_629
    $P1514 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $N1515, $P1514
    set $I1516, $N1515
    find_lex $P1517, "self"
    find_lex $P1518, "$?CLASS"
    getattribute $P1519, $P1517, $P1518, "@!done"
    unless_null $P1519, vivify_630
    $P1519 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1517, $P1518, "@!done", $P1519
  vivify_630:
    set $P1519[$I1516], $P1511
.annotate 'line', 639
    .return ($P1511)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1564"  :anon :subid("104_1305640904.321") :outer("101_1305640904.321")
    .param pmc param_1566
.annotate 'line', 665
    .lex "$_", param_1566
    find_lex $P1567, "$_"
    unless_null $P1567, vivify_642
    new $P1567, "Undef"
  vivify_642:
    find_lex $P1568, "$obj"
    unless_null $P1568, vivify_643
    new $P1568, "Undef"
  vivify_643:
    $P1569 = $P1567."compose"($P1568)
    .return ($P1569)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("105_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1583
    .param pmc param_1584
.annotate 'line', 678
    .const 'Sub' $P1599 = "106_1305640904.321" 
    capture_lex $P1599
    .lex "self", param_1583
    .lex "$obj", param_1584
.annotate 'line', 679
    new $P1585, "Undef"
    .lex "$num_todo", $P1585
.annotate 'line', 680
    new $P1586, "Undef"
    .lex "$i", $P1586
.annotate 'line', 679
    find_lex $P1587, "self"
    find_lex $P1588, "$?CLASS"
    getattribute $P1589, $P1587, $P1588, "@!multi_methods_to_incorporate"
    unless_null $P1589, vivify_649
    $P1589 = root_new ['parrot';'ResizablePMCArray']
  vivify_649:
    set $N1590, $P1589
    new $P1591, 'Float'
    set $P1591, $N1590
    store_lex "$num_todo", $P1591
.annotate 'line', 680
    new $P1592, "Integer"
    assign $P1592, 0
    store_lex "$i", $P1592
.annotate 'line', 681
    new $P1719, 'ExceptionHandler'
    set_label $P1719, loop1718_handler
    $P1719."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1719
  loop1718_test:
    find_lex $P1593, "$i"
    unless_null $P1593, vivify_650
    new $P1593, "Undef"
  vivify_650:
    set $N1594, $P1593
    find_lex $P1595, "$num_todo"
    unless_null $P1595, vivify_651
    new $P1595, "Undef"
  vivify_651:
    set $N1596, $P1595
    isne $I1597, $N1594, $N1596
    unless $I1597, loop1718_done
  loop1718_redo:
    .const 'Sub' $P1599 = "106_1305640904.321" 
    capture_lex $P1599
    $P1599()
  loop1718_next:
    goto loop1718_test
  loop1718_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1720, exception, 'type'
    eq $P1720, .CONTROL_LOOP_NEXT, loop1718_next
    eq $P1720, .CONTROL_LOOP_REDO, loop1718_redo
  loop1718_done:
    pop_eh 
.annotate 'line', 678
    .return ($I1597)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1598"  :anon :subid("106_1305640904.321") :outer("105_1305640904.321")
.annotate 'line', 681
    .const 'Sub' $P1635 = "107_1305640904.321" 
    capture_lex $P1635
.annotate 'line', 683
    new $P1600, "Undef"
    .lex "$name", $P1600
.annotate 'line', 684
    new $P1601, "Undef"
    .lex "$code", $P1601
.annotate 'line', 688
    new $P1602, "Undef"
    .lex "$dispatcher", $P1602
.annotate 'line', 683
    find_lex $P1603, "$i"
    unless_null $P1603, vivify_652
    new $P1603, "Undef"
  vivify_652:
    set $I1604, $P1603
    find_lex $P1605, "self"
    find_lex $P1606, "$?CLASS"
    getattribute $P1607, $P1605, $P1606, "@!multi_methods_to_incorporate"
    unless_null $P1607, vivify_653
    $P1607 = root_new ['parrot';'ResizablePMCArray']
  vivify_653:
    set $P1608, $P1607[$I1604]
    unless_null $P1608, vivify_654
    $P1608 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1609, $P1608["name"]
    unless_null $P1609, vivify_655
    new $P1609, "Undef"
  vivify_655:
    store_lex "$name", $P1609
.annotate 'line', 684
    find_lex $P1610, "$i"
    unless_null $P1610, vivify_656
    new $P1610, "Undef"
  vivify_656:
    set $I1611, $P1610
    find_lex $P1612, "self"
    find_lex $P1613, "$?CLASS"
    getattribute $P1614, $P1612, $P1613, "@!multi_methods_to_incorporate"
    unless_null $P1614, vivify_657
    $P1614 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    set $P1615, $P1614[$I1611]
    unless_null $P1615, vivify_658
    $P1615 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1616, $P1615["code"]
    unless_null $P1616, vivify_659
    new $P1616, "Undef"
  vivify_659:
    store_lex "$code", $P1616
.annotate 'line', 688
    find_lex $P1617, "$name"
    unless_null $P1617, vivify_660
    new $P1617, "Undef"
  vivify_660:
    find_lex $P1618, "self"
    find_lex $P1619, "$?CLASS"
    getattribute $P1620, $P1618, $P1619, "%!methods"
    unless_null $P1620, vivify_661
    $P1620 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1621, $P1620[$P1617]
    unless_null $P1621, vivify_662
    new $P1621, "Undef"
  vivify_662:
    store_lex "$dispatcher", $P1621
.annotate 'line', 689
    find_lex $P1623, "$dispatcher"
    unless_null $P1623, vivify_663
    new $P1623, "Undef"
  vivify_663:
    defined $I1624, $P1623
    if $I1624, if_1622
.annotate 'line', 699
    .const 'Sub' $P1635 = "107_1305640904.321" 
    capture_lex $P1635
    $P1635()
    goto if_1622_end
  if_1622:
.annotate 'line', 692
    find_lex $P1626, "$dispatcher"
    unless_null $P1626, vivify_694
    new $P1626, "Undef"
  vivify_694:
    is_dispatcher $I1627, $P1626
    if $I1627, if_1625
.annotate 'line', 696
    new $P1630, 'String'
    set $P1630, "Cannot have a multi candidate for "
    find_lex $P1631, "$name"
    unless_null $P1631, vivify_695
    new $P1631, "Undef"
  vivify_695:
    concat $P1632, $P1630, $P1631
    concat $P1633, $P1632, " when an only method is also in the class"
    die $P1633
.annotate 'line', 695
    goto if_1625_end
  if_1625:
.annotate 'line', 693
    find_lex $P1628, "$dispatcher"
    unless_null $P1628, vivify_696
    new $P1628, "Undef"
  vivify_696:
    find_lex $P1629, "$code"
    unless_null $P1629, vivify_697
    new $P1629, "Undef"
  vivify_697:
    push_dispatchee $P1628, $P1629
  if_1625_end:
  if_1622_end:
.annotate 'line', 732
    find_lex $P1716, "$i"
    unless_null $P1716, vivify_698
    new $P1716, "Undef"
  vivify_698:
    add $P1717, $P1716, 1
    store_lex "$i", $P1717
.annotate 'line', 681
    .return ($P1717)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1634"  :anon :subid("107_1305640904.321") :outer("106_1305640904.321")
.annotate 'line', 699
    .const 'Sub' $P1652 = "108_1305640904.321" 
    capture_lex $P1652
.annotate 'line', 701
    new $P1636, "Undef"
    .lex "$j", $P1636
.annotate 'line', 702
    new $P1637, "Undef"
    .lex "$found", $P1637
.annotate 'line', 701
    new $P1638, "Integer"
    assign $P1638, 1
    store_lex "$j", $P1638
.annotate 'line', 702
    new $P1639, "Integer"
    assign $P1639, 0
    store_lex "$found", $P1639
.annotate 'line', 703
    new $P1707, 'ExceptionHandler'
    set_label $P1707, loop1706_handler
    $P1707."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1707
  loop1706_test:
    find_lex $P1642, "$j"
    unless_null $P1642, vivify_664
    new $P1642, "Undef"
  vivify_664:
    set $N1643, $P1642
    find_lex $P1644, "self"
    find_lex $P1645, "$?CLASS"
    getattribute $P1646, $P1644, $P1645, "@!mro"
    unless_null $P1646, vivify_665
    $P1646 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $N1647, $P1646
    isne $I1648, $N1643, $N1647
    if $I1648, if_1641
    new $P1640, 'Integer'
    set $P1640, $I1648
    goto if_1641_end
  if_1641:
    find_lex $P1649, "$found"
    unless_null $P1649, vivify_666
    new $P1649, "Undef"
  vivify_666:
    isfalse $I1650, $P1649
    new $P1640, 'Integer'
    set $P1640, $I1650
  if_1641_end:
    unless $P1640, loop1706_done
  loop1706_redo:
    .const 'Sub' $P1652 = "108_1305640904.321" 
    capture_lex $P1652
    $P1652()
  loop1706_next:
    goto loop1706_test
  loop1706_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1708, exception, 'type'
    eq $P1708, .CONTROL_LOOP_NEXT, loop1706_next
    eq $P1708, .CONTROL_LOOP_REDO, loop1706_redo
  loop1706_done:
    pop_eh 
.annotate 'line', 728
    find_lex $P1711, "$found"
    unless_null $P1711, vivify_692
    new $P1711, "Undef"
  vivify_692:
    unless $P1711, unless_1710
    set $P1709, $P1711
    goto unless_1710_end
  unless_1710:
.annotate 'line', 729
    new $P1712, 'String'
    set $P1712, "Could not find a proto for multi "
    find_lex $P1713, "$name"
    unless_null $P1713, vivify_693
    new $P1713, "Undef"
  vivify_693:
    concat $P1714, $P1712, $P1713
    concat $P1715, $P1714, ", and proto generation is NYI"
    die $P1715
  unless_1710_end:
.annotate 'line', 699
    .return ($P1709)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1651"  :anon :subid("108_1305640904.321") :outer("107_1305640904.321")
.annotate 'line', 703
    .const 'Sub' $P1676 = "109_1305640904.321" 
    capture_lex $P1676
.annotate 'line', 704
    new $P1653, "Undef"
    .lex "$parent", $P1653
.annotate 'line', 705
    $P1654 = root_new ['parrot';'Hash']
    .lex "%meths", $P1654
.annotate 'line', 706
    new $P1655, "Undef"
    .lex "$dispatcher", $P1655
.annotate 'line', 704
    find_lex $P1656, "$j"
    unless_null $P1656, vivify_667
    new $P1656, "Undef"
  vivify_667:
    set $I1657, $P1656
    find_lex $P1658, "self"
    find_lex $P1659, "$?CLASS"
    getattribute $P1660, $P1658, $P1659, "@!mro"
    unless_null $P1660, vivify_668
    $P1660 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P1661, $P1660[$I1657]
    unless_null $P1661, vivify_669
    new $P1661, "Undef"
  vivify_669:
    store_lex "$parent", $P1661
.annotate 'line', 705
    find_lex $P1662, "$parent"
    unless_null $P1662, vivify_670
    new $P1662, "Undef"
  vivify_670:
    get_how $P1663, $P1662
    find_lex $P1664, "$parent"
    unless_null $P1664, vivify_671
    new $P1664, "Undef"
  vivify_671:
    $P1665 = $P1663."method_table"($P1664)
    store_lex "%meths", $P1665
.annotate 'line', 706
    find_lex $P1666, "$name"
    unless_null $P1666, vivify_672
    new $P1666, "Undef"
  vivify_672:
    find_lex $P1667, "%meths"
    unless_null $P1667, vivify_673
    $P1667 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1668, $P1667[$P1666]
    unless_null $P1668, vivify_674
    new $P1668, "Undef"
  vivify_674:
    store_lex "$dispatcher", $P1668
.annotate 'line', 707
    find_lex $P1670, "$dispatcher"
    unless_null $P1670, vivify_675
    new $P1670, "Undef"
  vivify_675:
    defined $I1671, $P1670
    unless $I1671, if_1669_end
.annotate 'line', 710
    find_lex $P1673, "$dispatcher"
    unless_null $P1673, vivify_676
    new $P1673, "Undef"
  vivify_676:
    is_dispatcher $I1674, $P1673
    if $I1674, if_1672
.annotate 'line', 723
    new $P1700, 'String'
    set $P1700, "Could not find a proto for multi "
    find_lex $P1701, "$name"
    unless_null $P1701, vivify_677
    new $P1701, "Undef"
  vivify_677:
    concat $P1702, $P1700, $P1701
    concat $P1703, $P1702, " (it may exist, but an only is hiding it if so)"
    die $P1703
.annotate 'line', 722
    goto if_1672_end
  if_1672:
.annotate 'line', 710
    .const 'Sub' $P1676 = "109_1305640904.321" 
    capture_lex $P1676
    $P1676()
  if_1672_end:
  if_1669_end:
.annotate 'line', 726
    find_lex $P1704, "$j"
    unless_null $P1704, vivify_691
    new $P1704, "Undef"
  vivify_691:
    add $P1705, $P1704, 1
    store_lex "$j", $P1705
.annotate 'line', 703
    .return ($P1705)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1675"  :anon :subid("109_1305640904.321") :outer("108_1305640904.321")
.annotate 'line', 712
    $P1677 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1677
.annotate 'line', 714
    new $P1678, "Undef"
    .lex "$new_disp", $P1678
.annotate 'line', 715
    new $P1679, "Undef"
    .lex "$clone_callback", $P1679
.annotate 'line', 710
    find_lex $P1680, "@new_dispatchees"
    unless_null $P1680, vivify_678
    $P1680 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
.annotate 'line', 713
    find_lex $P1681, "$code"
    unless_null $P1681, vivify_679
    new $P1681, "Undef"
  vivify_679:
    find_lex $P1682, "@new_dispatchees"
    unless_null $P1682, vivify_680
    $P1682 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1682
  vivify_680:
    set $P1682[0], $P1681
.annotate 'line', 714
    find_lex $P1683, "$dispatcher"
    unless_null $P1683, vivify_681
    new $P1683, "Undef"
  vivify_681:
    find_lex $P1684, "@new_dispatchees"
    unless_null $P1684, vivify_682
    $P1684 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    create_dispatch_and_add_candidates $P1685, $P1683, $P1684
    store_lex "$new_disp", $P1685
.annotate 'line', 715
    find_lex $P1686, "$dispatcher"
    unless_null $P1686, vivify_683
    new $P1686, "Undef"
  vivify_683:
    getprop $P1687, "CLONE_CALLBACK", $P1686
    store_lex "$clone_callback", $P1687
.annotate 'line', 716
    find_lex $P1689, "$clone_callback"
    unless_null $P1689, vivify_684
    new $P1689, "Undef"
  vivify_684:
    defined $I1690, $P1689
    unless $I1690, if_1688_end
.annotate 'line', 717
    find_lex $P1691, "$clone_callback"
    unless_null $P1691, vivify_685
    new $P1691, "Undef"
  vivify_685:
    find_lex $P1692, "$dispatcher"
    unless_null $P1692, vivify_686
    new $P1692, "Undef"
  vivify_686:
    find_lex $P1693, "$new_disp"
    unless_null $P1693, vivify_687
    new $P1693, "Undef"
  vivify_687:
    $P1691($P1692, $P1693)
  if_1688_end:
.annotate 'line', 719
    find_lex $P1694, "$new_disp"
    unless_null $P1694, vivify_688
    new $P1694, "Undef"
  vivify_688:
    find_lex $P1695, "$name"
    unless_null $P1695, vivify_689
    new $P1695, "Undef"
  vivify_689:
    find_lex $P1696, "self"
    find_lex $P1697, "$?CLASS"
    getattribute $P1698, $P1696, $P1697, "%!methods"
    unless_null $P1698, vivify_690
    $P1698 = root_new ['parrot';'Hash']
    setattribute $P1696, $P1697, "%!methods", $P1698
  vivify_690:
    set $P1698[$P1695], $P1694
.annotate 'line', 720
    new $P1699, "Integer"
    assign $P1699, 1
    store_lex "$found", $P1699
.annotate 'line', 710
    .return ($P1699)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("110_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1724
    .param pmc param_1725
.annotate 'line', 825
    .const 'Sub' $P1750 = "112_1305640904.321" 
    capture_lex $P1750
    .const 'Sub' $P1735 = "111_1305640904.321" 
    capture_lex $P1735
    .lex "self", param_1724
    .lex "$obj", param_1725
.annotate 'line', 826
    $P1726 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1726
.annotate 'line', 825
    find_lex $P1727, "@tc"
    unless_null $P1727, vivify_699
    $P1727 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
.annotate 'line', 827
    find_lex $P1729, "self"
    find_lex $P1730, "$?CLASS"
    getattribute $P1731, $P1729, $P1730, "@!mro"
    unless_null $P1731, vivify_700
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_700:
    defined $I1732, $P1731
    unless $I1732, for_undef_701
    iter $P1728, $P1731
    new $P1741, 'ExceptionHandler'
    set_label $P1741, loop1740_handler
    $P1741."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1741
  loop1740_test:
    unless $P1728, loop1740_done
    shift $P1733, $P1728
  loop1740_redo:
    .const 'Sub' $P1735 = "111_1305640904.321" 
    capture_lex $P1735
    $P1735($P1733)
  loop1740_next:
    goto loop1740_test
  loop1740_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1742, exception, 'type'
    eq $P1742, .CONTROL_LOOP_NEXT, loop1740_next
    eq $P1742, .CONTROL_LOOP_REDO, loop1740_redo
  loop1740_done:
    pop_eh 
  for_undef_701:
.annotate 'line', 828
    find_lex $P1744, "self"
    find_lex $P1745, "$?CLASS"
    getattribute $P1746, $P1744, $P1745, "@!done"
    unless_null $P1746, vivify_704
    $P1746 = root_new ['parrot';'ResizablePMCArray']
  vivify_704:
    defined $I1747, $P1746
    unless $I1747, for_undef_705
    iter $P1743, $P1746
    new $P1756, 'ExceptionHandler'
    set_label $P1756, loop1755_handler
    $P1756."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1756
  loop1755_test:
    unless $P1743, loop1755_done
    shift $P1748, $P1743
  loop1755_redo:
    .const 'Sub' $P1750 = "112_1305640904.321" 
    capture_lex $P1750
    $P1750($P1748)
  loop1755_next:
    goto loop1755_test
  loop1755_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1757, exception, 'type'
    eq $P1757, .CONTROL_LOOP_NEXT, loop1755_next
    eq $P1757, .CONTROL_LOOP_REDO, loop1755_redo
  loop1755_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 829
    find_lex $P1758, "$obj"
    unless_null $P1758, vivify_708
    new $P1758, "Undef"
  vivify_708:
    find_lex $P1759, "@tc"
    unless_null $P1759, vivify_709
    $P1759 = root_new ['parrot';'ResizablePMCArray']
  vivify_709:
    publish_type_check_cache $P1758, $P1759
.annotate 'line', 825
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1734"  :anon :subid("111_1305640904.321") :outer("110_1305640904.321")
    .param pmc param_1736
.annotate 'line', 827
    .lex "$_", param_1736
    find_lex $P1737, "@tc"
    unless_null $P1737, vivify_702
    $P1737 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    find_lex $P1738, "$_"
    unless_null $P1738, vivify_703
    new $P1738, "Undef"
  vivify_703:
    $P1739 = $P1737."push"($P1738)
    .return ($P1739)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1749"  :anon :subid("112_1305640904.321") :outer("110_1305640904.321")
    .param pmc param_1751
.annotate 'line', 828
    .lex "$_", param_1751
    find_lex $P1752, "@tc"
    unless_null $P1752, vivify_706
    $P1752 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    find_lex $P1753, "$_"
    unless_null $P1753, vivify_707
    new $P1753, "Undef"
  vivify_707:
    $P1754 = $P1752."push"($P1753)
    .return ($P1754)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("113_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1761
    .param pmc param_1762
.annotate 'line', 832
    .const 'Sub' $P1772 = "114_1305640904.321" 
    capture_lex $P1772
    .lex "self", param_1761
    .lex "$obj", param_1762
.annotate 'line', 835
    $P1763 = root_new ['parrot';'Hash']
    .lex "%cache", $P1763
.annotate 'line', 832
    find_lex $P1764, "%cache"
    unless_null $P1764, vivify_710
    $P1764 = root_new ['parrot';'Hash']
  vivify_710:
.annotate 'line', 836
    find_lex $P1766, "self"
    find_lex $P1767, "$?CLASS"
    getattribute $P1768, $P1766, $P1767, "@!mro"
    unless_null $P1768, vivify_711
    $P1768 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    defined $I1769, $P1768
    unless $I1769, for_undef_712
    iter $P1765, $P1768
    new $P1801, 'ExceptionHandler'
    set_label $P1801, loop1800_handler
    $P1801."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1801
  loop1800_test:
    unless $P1765, loop1800_done
    shift $P1770, $P1765
  loop1800_redo:
    .const 'Sub' $P1772 = "114_1305640904.321" 
    capture_lex $P1772
    $P1772($P1770)
  loop1800_next:
    goto loop1800_test
  loop1800_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1802, exception, 'type'
    eq $P1802, .CONTROL_LOOP_NEXT, loop1800_next
    eq $P1802, .CONTROL_LOOP_REDO, loop1800_redo
  loop1800_done:
    pop_eh 
  for_undef_712:
.annotate 'line', 844
    find_lex $P1803, "$obj"
    unless_null $P1803, vivify_723
    new $P1803, "Undef"
  vivify_723:
    find_lex $P1804, "%cache"
    unless_null $P1804, vivify_724
    $P1804 = root_new ['parrot';'Hash']
  vivify_724:
    publish_method_cache $P1803, $P1804
.annotate 'line', 832
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1771"  :anon :subid("114_1305640904.321") :outer("113_1305640904.321")
    .param pmc param_1774
.annotate 'line', 836
    .const 'Sub' $P1784 = "115_1305640904.321" 
    capture_lex $P1784
.annotate 'line', 837
    $P1773 = root_new ['parrot';'Hash']
    .lex "%methods", $P1773
    .lex "$_", param_1774
    find_lex $P1775, "$_"
    unless_null $P1775, vivify_713
    new $P1775, "Undef"
  vivify_713:
    get_how $P1776, $P1775
    find_lex $P1777, "$_"
    unless_null $P1777, vivify_714
    new $P1777, "Undef"
  vivify_714:
    $P1778 = $P1776."method_table"($P1777)
    store_lex "%methods", $P1778
.annotate 'line', 838
    find_lex $P1780, "%methods"
    unless_null $P1780, vivify_715
    $P1780 = root_new ['parrot';'Hash']
  vivify_715:
    defined $I1781, $P1780
    unless $I1781, for_undef_716
    iter $P1779, $P1780
    new $P1798, 'ExceptionHandler'
    set_label $P1798, loop1797_handler
    $P1798."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1798
  loop1797_test:
    unless $P1779, loop1797_done
    shift $P1782, $P1779
  loop1797_redo:
    .const 'Sub' $P1784 = "115_1305640904.321" 
    capture_lex $P1784
    $P1784($P1782)
  loop1797_next:
    goto loop1797_test
  loop1797_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1799, exception, 'type'
    eq $P1799, .CONTROL_LOOP_NEXT, loop1797_next
    eq $P1799, .CONTROL_LOOP_REDO, loop1797_redo
  loop1797_done:
    pop_eh 
  for_undef_716:
.annotate 'line', 836
    .return ($P1779)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1783"  :anon :subid("115_1305640904.321") :outer("114_1305640904.321")
    .param pmc param_1785
.annotate 'line', 838
    .lex "$_", param_1785
.annotate 'line', 839
    find_lex $P1788, "$_"
    unless_null $P1788, vivify_717
    new $P1788, "Undef"
  vivify_717:
    $P1789 = $P1788."key"()
    find_lex $P1790, "%cache"
    unless_null $P1790, vivify_718
    $P1790 = root_new ['parrot';'Hash']
  vivify_718:
    set $P1791, $P1790[$P1789]
    unless_null $P1791, vivify_719
    new $P1791, "Undef"
  vivify_719:
    unless $P1791, unless_1787
    set $P1786, $P1791
    goto unless_1787_end
  unless_1787:
.annotate 'line', 840
    find_lex $P1792, "$_"
    unless_null $P1792, vivify_720
    new $P1792, "Undef"
  vivify_720:
    $P1793 = $P1792."value"()
    find_lex $P1794, "$_"
    unless_null $P1794, vivify_721
    new $P1794, "Undef"
  vivify_721:
    $P1795 = $P1794."key"()
    find_lex $P1796, "%cache"
    unless_null $P1796, vivify_722
    $P1796 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1796
  vivify_722:
    set $P1796[$P1795], $P1793
.annotate 'line', 839
    set $P1786, $P1793
  unless_1787_end:
.annotate 'line', 838
    .return ($P1786)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("116_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1806
    .param pmc param_1807
.annotate 'line', 847
    .const 'Sub' $P1817 = "117_1305640904.321" 
    capture_lex $P1817
    .lex "self", param_1806
    .lex "$obj", param_1807
.annotate 'line', 848
    $P1808 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1808
.annotate 'line', 847
    find_lex $P1809, "%mapping"
    unless_null $P1809, vivify_725
    $P1809 = root_new ['parrot';'Hash']
  vivify_725:
.annotate 'line', 849
    find_lex $P1811, "self"
    find_lex $P1812, "$?CLASS"
    getattribute $P1813, $P1811, $P1812, "@!mro"
    unless_null $P1813, vivify_726
    $P1813 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    defined $I1814, $P1813
    unless $I1814, for_undef_727
    iter $P1810, $P1813
    new $P1846, 'ExceptionHandler'
    set_label $P1846, loop1845_handler
    $P1846."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1846
  loop1845_test:
    unless $P1810, loop1845_done
    shift $P1815, $P1810
  loop1845_redo:
    .const 'Sub' $P1817 = "117_1305640904.321" 
    capture_lex $P1817
    $P1817($P1815)
  loop1845_next:
    goto loop1845_test
  loop1845_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1847, exception, 'type'
    eq $P1847, .CONTROL_LOOP_NEXT, loop1845_next
    eq $P1847, .CONTROL_LOOP_REDO, loop1845_redo
  loop1845_done:
    pop_eh 
  for_undef_727:
.annotate 'line', 857
    find_lex $P1850, "%mapping"
    unless_null $P1850, vivify_738
    $P1850 = root_new ['parrot';'Hash']
  vivify_738:
    set $N1851, $P1850
    if $N1851, if_1849
    new $P1848, 'Float'
    set $P1848, $N1851
    goto if_1849_end
  if_1849:
.annotate 'line', 858
    find_lex $P1852, "$obj"
    unless_null $P1852, vivify_739
    new $P1852, "Undef"
  vivify_739:
    find_lex $P1853, "%mapping"
    unless_null $P1853, vivify_740
    $P1853 = root_new ['parrot';'Hash']
  vivify_740:
    stable_publish_vtable_mapping $P1852, $P1853
  if_1849_end:
.annotate 'line', 847
    .return ($P1848)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1816"  :anon :subid("117_1305640904.321") :outer("116_1305640904.321")
    .param pmc param_1819
.annotate 'line', 849
    .const 'Sub' $P1829 = "118_1305640904.321" 
    capture_lex $P1829
.annotate 'line', 850
    $P1818 = root_new ['parrot';'Hash']
    .lex "%map", $P1818
    .lex "$_", param_1819
    find_lex $P1820, "$_"
    unless_null $P1820, vivify_728
    new $P1820, "Undef"
  vivify_728:
    get_how $P1821, $P1820
    find_lex $P1822, "$_"
    unless_null $P1822, vivify_729
    new $P1822, "Undef"
  vivify_729:
    $P1823 = $P1821."parrot_vtable_mappings"($P1822, 1 :named("local"))
    store_lex "%map", $P1823
.annotate 'line', 851
    find_lex $P1825, "%map"
    unless_null $P1825, vivify_730
    $P1825 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I1826, $P1825
    unless $I1826, for_undef_731
    iter $P1824, $P1825
    new $P1843, 'ExceptionHandler'
    set_label $P1843, loop1842_handler
    $P1843."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1843
  loop1842_test:
    unless $P1824, loop1842_done
    shift $P1827, $P1824
  loop1842_redo:
    .const 'Sub' $P1829 = "118_1305640904.321" 
    capture_lex $P1829
    $P1829($P1827)
  loop1842_next:
    goto loop1842_test
  loop1842_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1844, exception, 'type'
    eq $P1844, .CONTROL_LOOP_NEXT, loop1842_next
    eq $P1844, .CONTROL_LOOP_REDO, loop1842_redo
  loop1842_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 849
    .return ($P1824)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1828"  :anon :subid("118_1305640904.321") :outer("117_1305640904.321")
    .param pmc param_1830
.annotate 'line', 851
    .lex "$_", param_1830
.annotate 'line', 852
    find_lex $P1833, "$_"
    unless_null $P1833, vivify_732
    new $P1833, "Undef"
  vivify_732:
    $P1834 = $P1833."key"()
    find_lex $P1835, "%mapping"
    unless_null $P1835, vivify_733
    $P1835 = root_new ['parrot';'Hash']
  vivify_733:
    set $P1836, $P1835[$P1834]
    unless_null $P1836, vivify_734
    new $P1836, "Undef"
  vivify_734:
    unless $P1836, unless_1832
    set $P1831, $P1836
    goto unless_1832_end
  unless_1832:
.annotate 'line', 853
    find_lex $P1837, "$_"
    unless_null $P1837, vivify_735
    new $P1837, "Undef"
  vivify_735:
    $P1838 = $P1837."value"()
    find_lex $P1839, "$_"
    unless_null $P1839, vivify_736
    new $P1839, "Undef"
  vivify_736:
    $P1840 = $P1839."key"()
    find_lex $P1841, "%mapping"
    unless_null $P1841, vivify_737
    $P1841 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1841
  vivify_737:
    set $P1841[$P1840], $P1838
.annotate 'line', 852
    set $P1831, $P1838
  unless_1832_end:
.annotate 'line', 851
    .return ($P1831)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("119_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1855
    .param pmc param_1856
.annotate 'line', 862
    .const 'Sub' $P1866 = "120_1305640904.321" 
    capture_lex $P1866
    .lex "self", param_1855
    .lex "$obj", param_1856
.annotate 'line', 863
    $P1857 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1857
.annotate 'line', 862
    find_lex $P1858, "%mapping"
    unless_null $P1858, vivify_741
    $P1858 = root_new ['parrot';'Hash']
  vivify_741:
.annotate 'line', 864
    find_lex $P1860, "self"
    find_lex $P1861, "$?CLASS"
    getattribute $P1862, $P1860, $P1861, "@!mro"
    unless_null $P1862, vivify_742
    $P1862 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
    defined $I1863, $P1862
    unless $I1863, for_undef_743
    iter $P1859, $P1862
    new $P1895, 'ExceptionHandler'
    set_label $P1895, loop1894_handler
    $P1895."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1895
  loop1894_test:
    unless $P1859, loop1894_done
    shift $P1864, $P1859
  loop1894_redo:
    .const 'Sub' $P1866 = "120_1305640904.321" 
    capture_lex $P1866
    $P1866($P1864)
  loop1894_next:
    goto loop1894_test
  loop1894_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1896, exception, 'type'
    eq $P1896, .CONTROL_LOOP_NEXT, loop1894_next
    eq $P1896, .CONTROL_LOOP_REDO, loop1894_redo
  loop1894_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 872
    find_lex $P1899, "%mapping"
    unless_null $P1899, vivify_754
    $P1899 = root_new ['parrot';'Hash']
  vivify_754:
    set $N1900, $P1899
    if $N1900, if_1898
    new $P1897, 'Float'
    set $P1897, $N1900
    goto if_1898_end
  if_1898:
.annotate 'line', 873
    find_lex $P1901, "$obj"
    unless_null $P1901, vivify_755
    new $P1901, "Undef"
  vivify_755:
    find_lex $P1902, "%mapping"
    unless_null $P1902, vivify_756
    $P1902 = root_new ['parrot';'Hash']
  vivify_756:
    stable_publish_vtable_handler_mapping $P1901, $P1902
  if_1898_end:
.annotate 'line', 862
    .return ($P1897)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1865"  :anon :subid("120_1305640904.321") :outer("119_1305640904.321")
    .param pmc param_1868
.annotate 'line', 864
    .const 'Sub' $P1878 = "121_1305640904.321" 
    capture_lex $P1878
.annotate 'line', 865
    $P1867 = root_new ['parrot';'Hash']
    .lex "%map", $P1867
    .lex "$_", param_1868
    find_lex $P1869, "$_"
    unless_null $P1869, vivify_744
    new $P1869, "Undef"
  vivify_744:
    get_how $P1870, $P1869
    find_lex $P1871, "$_"
    unless_null $P1871, vivify_745
    new $P1871, "Undef"
  vivify_745:
    $P1872 = $P1870."parrot_vtable_handler_mappings"($P1871, 1 :named("local"))
    store_lex "%map", $P1872
.annotate 'line', 866
    find_lex $P1874, "%map"
    unless_null $P1874, vivify_746
    $P1874 = root_new ['parrot';'Hash']
  vivify_746:
    defined $I1875, $P1874
    unless $I1875, for_undef_747
    iter $P1873, $P1874
    new $P1892, 'ExceptionHandler'
    set_label $P1892, loop1891_handler
    $P1892."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1892
  loop1891_test:
    unless $P1873, loop1891_done
    shift $P1876, $P1873
  loop1891_redo:
    .const 'Sub' $P1878 = "121_1305640904.321" 
    capture_lex $P1878
    $P1878($P1876)
  loop1891_next:
    goto loop1891_test
  loop1891_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1893, exception, 'type'
    eq $P1893, .CONTROL_LOOP_NEXT, loop1891_next
    eq $P1893, .CONTROL_LOOP_REDO, loop1891_redo
  loop1891_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 864
    .return ($P1873)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1877"  :anon :subid("121_1305640904.321") :outer("120_1305640904.321")
    .param pmc param_1879
.annotate 'line', 866
    .lex "$_", param_1879
.annotate 'line', 867
    find_lex $P1882, "$_"
    unless_null $P1882, vivify_748
    new $P1882, "Undef"
  vivify_748:
    $P1883 = $P1882."key"()
    find_lex $P1884, "%mapping"
    unless_null $P1884, vivify_749
    $P1884 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1885, $P1884[$P1883]
    unless_null $P1885, vivify_750
    new $P1885, "Undef"
  vivify_750:
    unless $P1885, unless_1881
    set $P1880, $P1885
    goto unless_1881_end
  unless_1881:
.annotate 'line', 868
    find_lex $P1886, "$_"
    unless_null $P1886, vivify_751
    new $P1886, "Undef"
  vivify_751:
    $P1887 = $P1886."value"()
    find_lex $P1888, "$_"
    unless_null $P1888, vivify_752
    new $P1888, "Undef"
  vivify_752:
    $P1889 = $P1888."key"()
    find_lex $P1890, "%mapping"
    unless_null $P1890, vivify_753
    $P1890 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1890
  vivify_753:
    set $P1890[$P1889], $P1887
.annotate 'line', 867
    set $P1880, $P1887
  unless_1881_end:
.annotate 'line', 866
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("122_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1904
    .param pmc param_1905
    .param pmc param_1906 :optional :named("local")
    .param int has_param_1906 :opt_flag
.annotate 'line', 880
    .lex "self", param_1904
    .lex "$obj", param_1905
    if has_param_1906, optparam_757
    new $P1907, "Undef"
    set param_1906, $P1907
  optparam_757:
    .lex "$local", param_1906
.annotate 'line', 881
    find_lex $P1910, "$local"
    unless_null $P1910, vivify_758
    new $P1910, "Undef"
  vivify_758:
    if $P1910, if_1909
    find_lex $P1914, "self"
    find_lex $P1915, "$?CLASS"
    getattribute $P1916, $P1914, $P1915, "@!mro"
    unless_null $P1916, vivify_759
    $P1916 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1908, $P1916
    goto if_1909_end
  if_1909:
    find_lex $P1911, "self"
    find_lex $P1912, "$?CLASS"
    getattribute $P1913, $P1911, $P1912, "@!parents"
    unless_null $P1913, vivify_760
    $P1913 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    set $P1908, $P1913
  if_1909_end:
.annotate 'line', 880
    .return ($P1908)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("123_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1918
    .param pmc param_1919
    .param pmc param_1920 :named("local")
.annotate 'line', 884
    .lex "self", param_1918
    .lex "$obj", param_1919
    .lex "$local", param_1920
    find_lex $P1921, "self"
    find_lex $P1922, "$?CLASS"
    getattribute $P1923, $P1921, $P1922, "@!roles"
    unless_null $P1923, vivify_761
    $P1923 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    .return ($P1923)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("124_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1925
    .param pmc param_1926
    .param pmc param_1927 :named("local")
.annotate 'line', 888
    .const 'Sub' $P1937 = "125_1305640904.321" 
    capture_lex $P1937
    .lex "self", param_1925
    .lex "$obj", param_1926
    .lex "$local", param_1927
.annotate 'line', 889
    $P1928 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1928
.annotate 'line', 888
    find_lex $P1929, "@meths"
    unless_null $P1929, vivify_762
    $P1929 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
.annotate 'line', 890
    find_lex $P1931, "self"
    find_lex $P1932, "$?CLASS"
    getattribute $P1933, $P1931, $P1932, "%!methods"
    unless_null $P1933, vivify_763
    $P1933 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I1934, $P1933
    unless $I1934, for_undef_764
    iter $P1930, $P1933
    new $P1944, 'ExceptionHandler'
    set_label $P1944, loop1943_handler
    $P1944."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1944
  loop1943_test:
    unless $P1930, loop1943_done
    shift $P1935, $P1930
  loop1943_redo:
    .const 'Sub' $P1937 = "125_1305640904.321" 
    capture_lex $P1937
    $P1937($P1935)
  loop1943_next:
    goto loop1943_test
  loop1943_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1945, exception, 'type'
    eq $P1945, .CONTROL_LOOP_NEXT, loop1943_next
    eq $P1945, .CONTROL_LOOP_REDO, loop1943_redo
  loop1943_done:
    pop_eh 
  for_undef_764:
    find_lex $P1946, "@meths"
    unless_null $P1946, vivify_767
    $P1946 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
.annotate 'line', 888
    .return ($P1946)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1936"  :anon :subid("125_1305640904.321") :outer("124_1305640904.321")
    .param pmc param_1938
.annotate 'line', 890
    .lex "$_", param_1938
.annotate 'line', 891
    find_lex $P1939, "@meths"
    unless_null $P1939, vivify_765
    $P1939 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    find_lex $P1940, "$_"
    unless_null $P1940, vivify_766
    new $P1940, "Undef"
  vivify_766:
    $P1941 = $P1940."value"()
    $P1942 = $P1939."push"($P1941)
.annotate 'line', 890
    .return ($P1942)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("126_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1948
    .param pmc param_1949
.annotate 'line', 896
    .lex "self", param_1948
    .lex "$obj", param_1949
    find_lex $P1950, "self"
    find_lex $P1951, "$?CLASS"
    getattribute $P1952, $P1950, $P1951, "%!methods"
    unless_null $P1952, vivify_768
    $P1952 = root_new ['parrot';'Hash']
  vivify_768:
    .return ($P1952)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("127_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1954
    .param pmc param_1955
.annotate 'line', 900
    .lex "self", param_1954
    .lex "$obj", param_1955
    find_lex $P1956, "self"
    find_lex $P1957, "$?CLASS"
    getattribute $P1958, $P1956, $P1957, "$!name"
    unless_null $P1958, vivify_769
    new $P1958, "Undef"
  vivify_769:
    .return ($P1958)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("128_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1960
    .param pmc param_1961
    .param pmc param_1962 :named("local")
.annotate 'line', 904
    .const 'Sub' $P1972 = "129_1305640904.321" 
    capture_lex $P1972
    .lex "self", param_1960
    .lex "$obj", param_1961
    .lex "$local", param_1962
.annotate 'line', 905
    $P1963 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1963
.annotate 'line', 904
    find_lex $P1964, "@attrs"
    unless_null $P1964, vivify_770
    $P1964 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
.annotate 'line', 906
    find_lex $P1966, "self"
    find_lex $P1967, "$?CLASS"
    getattribute $P1968, $P1966, $P1967, "%!attributes"
    unless_null $P1968, vivify_771
    $P1968 = root_new ['parrot';'Hash']
  vivify_771:
    defined $I1969, $P1968
    unless $I1969, for_undef_772
    iter $P1965, $P1968
    new $P1979, 'ExceptionHandler'
    set_label $P1979, loop1978_handler
    $P1979."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1979
  loop1978_test:
    unless $P1965, loop1978_done
    shift $P1970, $P1965
  loop1978_redo:
    .const 'Sub' $P1972 = "129_1305640904.321" 
    capture_lex $P1972
    $P1972($P1970)
  loop1978_next:
    goto loop1978_test
  loop1978_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1980, exception, 'type'
    eq $P1980, .CONTROL_LOOP_NEXT, loop1978_next
    eq $P1980, .CONTROL_LOOP_REDO, loop1978_redo
  loop1978_done:
    pop_eh 
  for_undef_772:
    find_lex $P1981, "@attrs"
    unless_null $P1981, vivify_775
    $P1981 = root_new ['parrot';'ResizablePMCArray']
  vivify_775:
.annotate 'line', 904
    .return ($P1981)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1971"  :anon :subid("129_1305640904.321") :outer("128_1305640904.321")
    .param pmc param_1973
.annotate 'line', 906
    .lex "$_", param_1973
.annotate 'line', 907
    find_lex $P1974, "@attrs"
    unless_null $P1974, vivify_773
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    find_lex $P1975, "$_"
    unless_null $P1975, vivify_774
    new $P1975, "Undef"
  vivify_774:
    $P1976 = $P1975."value"()
    $P1977 = $P1974."push"($P1976)
.annotate 'line', 906
    .return ($P1977)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("130_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1983
    .param pmc param_1984
    .param pmc param_1985 :named("local")
.annotate 'line', 912
    .lex "self", param_1983
    .lex "$obj", param_1984
    .lex "$local", param_1985
    find_lex $P1986, "self"
    find_lex $P1987, "$?CLASS"
    getattribute $P1988, $P1986, $P1987, "%!parrot_vtable_mapping"
    unless_null $P1988, vivify_776
    $P1988 = root_new ['parrot';'Hash']
  vivify_776:
    .return ($P1988)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("131_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1990
    .param pmc param_1991
    .param pmc param_1992 :named("local")
.annotate 'line', 916
    .lex "self", param_1990
    .lex "$obj", param_1991
    .lex "$local", param_1992
    find_lex $P1993, "self"
    find_lex $P1994, "$?CLASS"
    getattribute $P1995, $P1993, $P1994, "%!parrot_vtable_handler_mapping"
    unless_null $P1995, vivify_777
    $P1995 = root_new ['parrot';'Hash']
  vivify_777:
    .return ($P1995)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("132_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_1999
    .param pmc param_2000
    .param pmc param_2001
.annotate 'line', 924
    new $P1998, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1998, control_1997
    push_eh $P1998
    .lex "self", param_1999
    .lex "$obj", param_2000
    .lex "$check", param_2001
.annotate 'line', 925
    new $P2002, "Undef"
    .lex "$check-class", $P2002
.annotate 'line', 926
    new $P2003, "Undef"
    .lex "$i", $P2003
.annotate 'line', 925
    find_lex $P2004, "$check"
    unless_null $P2004, vivify_778
    new $P2004, "Undef"
  vivify_778:
    get_what $P2005, $P2004
    store_lex "$check-class", $P2005
.annotate 'line', 926
    find_lex $P2006, "self"
    find_lex $P2007, "$?CLASS"
    getattribute $P2008, $P2006, $P2007, "@!mro"
    unless_null $P2008, vivify_779
    $P2008 = root_new ['parrot';'ResizablePMCArray']
  vivify_779:
    set $N2009, $P2008
    new $P2010, 'Float'
    set $P2010, $N2009
    store_lex "$i", $P2010
.annotate 'line', 927
    new $P2028, 'ExceptionHandler'
    set_label $P2028, loop2027_handler
    $P2028."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2028
  loop2027_test:
    find_lex $P2011, "$i"
    unless_null $P2011, vivify_780
    new $P2011, "Undef"
  vivify_780:
    set $N2012, $P2011
    isgt $I2013, $N2012, 0.0
    unless $I2013, loop2027_done
  loop2027_redo:
.annotate 'line', 928
    find_lex $P2014, "$i"
    unless_null $P2014, vivify_781
    new $P2014, "Undef"
  vivify_781:
    sub $P2015, $P2014, 1
    store_lex "$i", $P2015
.annotate 'line', 929
    find_lex $P2017, "$i"
    unless_null $P2017, vivify_782
    new $P2017, "Undef"
  vivify_782:
    set $I2018, $P2017
    find_lex $P2019, "self"
    find_lex $P2020, "$?CLASS"
    getattribute $P2021, $P2019, $P2020, "@!mro"
    unless_null $P2021, vivify_783
    $P2021 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    set $P2022, $P2021[$I2018]
    unless_null $P2022, vivify_784
    new $P2022, "Undef"
  vivify_784:
    find_lex $P2023, "$check-class"
    unless_null $P2023, vivify_785
    new $P2023, "Undef"
  vivify_785:
    issame $I2024, $P2022, $P2023
    unless $I2024, if_2016_end
.annotate 'line', 930
    new $P2025, "Exception"
    set $P2025['type'], .CONTROL_RETURN
    new $P2026, "Integer"
    assign $P2026, 1
    setattribute $P2025, 'payload', $P2026
    throw $P2025
  if_2016_end:
  loop2027_next:
.annotate 'line', 927
    goto loop2027_test
  loop2027_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2029, exception, 'type'
    eq $P2029, .CONTROL_LOOP_NEXT, loop2027_next
    eq $P2029, .CONTROL_LOOP_REDO, loop2027_redo
  loop2027_done:
    pop_eh 
.annotate 'line', 933
    new $P2030, "Exception"
    set $P2030['type'], .CONTROL_RETURN
    new $P2031, "Integer"
    assign $P2031, 0
    setattribute $P2030, 'payload', $P2031
    throw $P2030
.annotate 'line', 924
    .return ()
  control_1997:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2032, exception, "payload"
    .return ($P2032)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("133_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_2036
    .param pmc param_2037
    .param pmc param_2038
.annotate 'line', 936
    new $P2035, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2035, control_2034
    push_eh $P2035
    .lex "self", param_2036
    .lex "$obj", param_2037
    .lex "$check", param_2038
.annotate 'line', 937
    new $P2039, "Undef"
    .lex "$i", $P2039
    find_lex $P2040, "self"
    find_lex $P2041, "$?CLASS"
    getattribute $P2042, $P2040, $P2041, "@!done"
    unless_null $P2042, vivify_786
    $P2042 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $N2043, $P2042
    new $P2044, 'Float'
    set $P2044, $N2043
    store_lex "$i", $P2044
.annotate 'line', 938
    new $P2062, 'ExceptionHandler'
    set_label $P2062, loop2061_handler
    $P2062."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2062
  loop2061_test:
    find_lex $P2045, "$i"
    unless_null $P2045, vivify_787
    new $P2045, "Undef"
  vivify_787:
    set $N2046, $P2045
    isgt $I2047, $N2046, 0.0
    unless $I2047, loop2061_done
  loop2061_redo:
.annotate 'line', 939
    find_lex $P2048, "$i"
    unless_null $P2048, vivify_788
    new $P2048, "Undef"
  vivify_788:
    sub $P2049, $P2048, 1
    store_lex "$i", $P2049
.annotate 'line', 940
    find_lex $P2051, "$i"
    unless_null $P2051, vivify_789
    new $P2051, "Undef"
  vivify_789:
    set $I2052, $P2051
    find_lex $P2053, "self"
    find_lex $P2054, "$?CLASS"
    getattribute $P2055, $P2053, $P2054, "@!done"
    unless_null $P2055, vivify_790
    $P2055 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    set $P2056, $P2055[$I2052]
    unless_null $P2056, vivify_791
    new $P2056, "Undef"
  vivify_791:
    find_lex $P2057, "$check"
    unless_null $P2057, vivify_792
    new $P2057, "Undef"
  vivify_792:
    issame $I2058, $P2056, $P2057
    unless $I2058, if_2050_end
.annotate 'line', 941
    new $P2059, "Exception"
    set $P2059['type'], .CONTROL_RETURN
    new $P2060, "Integer"
    assign $P2060, 1
    setattribute $P2059, 'payload', $P2060
    throw $P2059
  if_2050_end:
  loop2061_next:
.annotate 'line', 938
    goto loop2061_test
  loop2061_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2063, exception, 'type'
    eq $P2063, .CONTROL_LOOP_NEXT, loop2061_next
    eq $P2063, .CONTROL_LOOP_REDO, loop2061_redo
  loop2061_done:
    pop_eh 
.annotate 'line', 944
    new $P2064, "Exception"
    set $P2064['type'], .CONTROL_RETURN
    new $P2065, "Integer"
    assign $P2065, 0
    setattribute $P2064, 'payload', $P2065
    throw $P2064
.annotate 'line', 936
    .return ()
  control_2034:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2066, exception, "payload"
    .return ($P2066)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("134_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_2070
    .param pmc param_2071
    .param pmc param_2072
.annotate 'line', 947
    .const 'Sub' $P2080 = "135_1305640904.321" 
    capture_lex $P2080
    new $P2069, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2069, control_2068
    push_eh $P2069
    .lex "self", param_2070
    .lex "$obj", param_2071
    .lex "$name", param_2072
.annotate 'line', 948
    find_lex $P2074, "self"
    find_lex $P2075, "$?CLASS"
    getattribute $P2076, $P2074, $P2075, "@!mro"
    unless_null $P2076, vivify_793
    $P2076 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    defined $I2077, $P2076
    unless $I2077, for_undef_794
    iter $P2073, $P2076
    new $P2098, 'ExceptionHandler'
    set_label $P2098, loop2097_handler
    $P2098."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2098
  loop2097_test:
    unless $P2073, loop2097_done
    shift $P2078, $P2073
  loop2097_redo:
    .const 'Sub' $P2080 = "135_1305640904.321" 
    capture_lex $P2080
    $P2080($P2078)
  loop2097_next:
    goto loop2097_test
  loop2097_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2099, exception, 'type'
    eq $P2099, .CONTROL_LOOP_NEXT, loop2097_next
    eq $P2099, .CONTROL_LOOP_REDO, loop2097_redo
  loop2097_done:
    pop_eh 
  for_undef_794:
.annotate 'line', 955
    new $P2100, "Exception"
    set $P2100['type'], .CONTROL_RETURN
    new $P2101, "Integer"
    assign $P2101, 0
    setattribute $P2100, 'payload', $P2101
    throw $P2100
.annotate 'line', 947
    .return ()
  control_2068:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2102, exception, "payload"
    .return ($P2102)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2079"  :anon :subid("135_1305640904.321") :outer("134_1305640904.321")
    .param pmc param_2083
.annotate 'line', 949
    $P2081 = root_new ['parrot';'Hash']
    .lex "%meths", $P2081
.annotate 'line', 950
    new $P2082, "Undef"
    .lex "$can", $P2082
    .lex "$_", param_2083
.annotate 'line', 949
    find_lex $P2084, "$_"
    unless_null $P2084, vivify_795
    new $P2084, "Undef"
  vivify_795:
    get_how $P2085, $P2084
    find_lex $P2086, "$obj"
    unless_null $P2086, vivify_796
    new $P2086, "Undef"
  vivify_796:
    $P2087 = $P2085."method_table"($P2086)
    store_lex "%meths", $P2087
.annotate 'line', 950
    find_lex $P2088, "$name"
    unless_null $P2088, vivify_797
    new $P2088, "Undef"
  vivify_797:
    find_lex $P2089, "%meths"
    unless_null $P2089, vivify_798
    $P2089 = root_new ['parrot';'Hash']
  vivify_798:
    set $P2090, $P2089[$P2088]
    unless_null $P2090, vivify_799
    new $P2090, "Undef"
  vivify_799:
    store_lex "$can", $P2090
.annotate 'line', 951
    find_lex $P2093, "$can"
    unless_null $P2093, vivify_800
    new $P2093, "Undef"
  vivify_800:
    defined $I2094, $P2093
    if $I2094, if_2092
    new $P2091, 'Integer'
    set $P2091, $I2094
    goto if_2092_end
  if_2092:
.annotate 'line', 952
    new $P2095, "Exception"
    set $P2095['type'], .CONTROL_RETURN
    find_lex $P2096, "$can"
    unless_null $P2096, vivify_801
    new $P2096, "Undef"
  vivify_801:
    setattribute $P2095, 'payload', $P2096
    throw $P2095
  if_2092_end:
.annotate 'line', 948
    .return ($P2091)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("136_1305640904.321") :outer("77_1305640904.321")
    .param pmc param_2106
    .param pmc param_2107
    .param pmc param_2108
.annotate 'line', 961
    .const 'Sub' $P2116 = "137_1305640904.321" 
    capture_lex $P2116
    new $P2105, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2105, control_2104
    push_eh $P2105
    .lex "self", param_2106
    .lex "$obj", param_2107
    .lex "$name", param_2108
.annotate 'line', 962
    find_lex $P2110, "self"
    find_lex $P2111, "$?CLASS"
    getattribute $P2112, $P2110, $P2111, "@!mro"
    unless_null $P2112, vivify_802
    $P2112 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    defined $I2113, $P2112
    unless $I2113, for_undef_803
    iter $P2109, $P2112
    new $P2134, 'ExceptionHandler'
    set_label $P2134, loop2133_handler
    $P2134."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2134
  loop2133_test:
    unless $P2109, loop2133_done
    shift $P2114, $P2109
  loop2133_redo:
    .const 'Sub' $P2116 = "137_1305640904.321" 
    capture_lex $P2116
    $P2116($P2114)
  loop2133_next:
    goto loop2133_test
  loop2133_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2135, exception, 'type'
    eq $P2135, .CONTROL_LOOP_NEXT, loop2133_next
    eq $P2135, .CONTROL_LOOP_REDO, loop2133_redo
  loop2133_done:
    pop_eh 
  for_undef_803:
.annotate 'line', 969
    null $P2136
.annotate 'line', 961
    .return ($P2136)
  control_2104:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2137, exception, "payload"
    .return ($P2137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2115"  :anon :subid("137_1305640904.321") :outer("136_1305640904.321")
    .param pmc param_2119
.annotate 'line', 963
    $P2117 = root_new ['parrot';'Hash']
    .lex "%meths", $P2117
.annotate 'line', 964
    new $P2118, "Undef"
    .lex "$found", $P2118
    .lex "$_", param_2119
.annotate 'line', 963
    find_lex $P2120, "$_"
    unless_null $P2120, vivify_804
    new $P2120, "Undef"
  vivify_804:
    get_how $P2121, $P2120
    find_lex $P2122, "$obj"
    unless_null $P2122, vivify_805
    new $P2122, "Undef"
  vivify_805:
    $P2123 = $P2121."method_table"($P2122)
    store_lex "%meths", $P2123
.annotate 'line', 964
    find_lex $P2124, "$name"
    unless_null $P2124, vivify_806
    new $P2124, "Undef"
  vivify_806:
    find_lex $P2125, "%meths"
    unless_null $P2125, vivify_807
    $P2125 = root_new ['parrot';'Hash']
  vivify_807:
    set $P2126, $P2125[$P2124]
    unless_null $P2126, vivify_808
    new $P2126, "Undef"
  vivify_808:
    store_lex "$found", $P2126
.annotate 'line', 965
    find_lex $P2129, "$found"
    unless_null $P2129, vivify_809
    new $P2129, "Undef"
  vivify_809:
    defined $I2130, $P2129
    if $I2130, if_2128
    new $P2127, 'Integer'
    set $P2127, $I2130
    goto if_2128_end
  if_2128:
.annotate 'line', 966
    new $P2131, "Exception"
    set $P2131['type'], .CONTROL_RETURN
    find_lex $P2132, "$found"
    unless_null $P2132, vivify_810
    new $P2132, "Undef"
  vivify_810:
    setattribute $P2131, 'payload', $P2132
    throw $P2131
  if_2128_end:
.annotate 'line', 962
    .return ($P2127)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2139"  :subid("138_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 974
    .const 'Sub' $P2194 = "146_1305640904.321" 
    capture_lex $P2194
    .const 'Sub' $P2188 = "145_1305640904.321" 
    capture_lex $P2188
    .const 'Sub' $P2184 = "144_1305640904.321" 
    capture_lex $P2184
    .const 'Sub' $P2179 = "143_1305640904.321" 
    capture_lex $P2179
    .const 'Sub' $P2174 = "142_1305640904.321" 
    capture_lex $P2174
    .const 'Sub' $P2160 = "141_1305640904.321" 
    capture_lex $P2160
    .const 'Sub' $P2153 = "140_1305640904.321" 
    capture_lex $P2153
    .const 'Sub' $P2143 = "139_1305640904.321" 
    capture_lex $P2143
    .lex "$?PACKAGE", $P2141
    .lex "$?CLASS", $P2142
.annotate 'line', 1014
    .const 'Sub' $P2194 = "146_1305640904.321" 
    newclosure $P2200, $P2194
.annotate 'line', 974
    .return ($P2200)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("139_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2144
    .param pmc param_2145 :optional :named("name")
    .param int has_param_2145 :opt_flag
.annotate 'line', 978
    .lex "self", param_2144
    if has_param_2145, optparam_811
    new $P2146, "Undef"
    set param_2145, $P2146
  optparam_811:
    .lex "$name", param_2145
.annotate 'line', 979
    new $P2147, "Undef"
    .lex "$obj", $P2147
    find_lex $P2148, "self"
    repr_instance_of $P2149, $P2148
    store_lex "$obj", $P2149
.annotate 'line', 980
    find_lex $P2150, "$obj"
    unless_null $P2150, vivify_812
    new $P2150, "Undef"
  vivify_812:
    find_lex $P2151, "$name"
    unless_null $P2151, vivify_813
    new $P2151, "Undef"
  vivify_813:
    $P2150."BUILD"($P2151 :named("name"))
    find_lex $P2152, "$obj"
    unless_null $P2152, vivify_814
    new $P2152, "Undef"
  vivify_814:
.annotate 'line', 978
    .return ($P2152)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("140_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2154
    .param pmc param_2155 :optional :named("name")
    .param int has_param_2155 :opt_flag
.annotate 'line', 984
    .lex "self", param_2154
    if has_param_2155, optparam_815
    new $P2156, "Undef"
    set param_2155, $P2156
  optparam_815:
    .lex "$name", param_2155
.annotate 'line', 985
    find_lex $P2157, "$name"
    unless_null $P2157, vivify_816
    new $P2157, "Undef"
  vivify_816:
    find_lex $P2158, "self"
    find_lex $P2159, "$?CLASS"
    setattribute $P2158, $P2159, "$!name", $P2157
.annotate 'line', 984
    .return ($P2157)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("141_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2161
    .param pmc param_2164 :named("repr")
    .param pmc param_2162 :optional :named("name")
    .param int has_param_2162 :opt_flag
.annotate 'line', 991
    .lex "self", param_2161
    if has_param_2162, optparam_817
    new $P2163, "String"
    assign $P2163, "<anon>"
    set param_2162, $P2163
  optparam_817:
    .lex "$name", param_2162
    .lex "$repr", param_2164
.annotate 'line', 992
    new $P2165, "Undef"
    .lex "$metaclass", $P2165
    find_lex $P2166, "self"
    find_lex $P2167, "$name"
    unless_null $P2167, vivify_818
    new $P2167, "Undef"
  vivify_818:
    $P2168 = $P2166."new"($P2167 :named("name"))
    store_lex "$metaclass", $P2168
.annotate 'line', 994
    find_lex $P2169, "$metaclass"
    unless_null $P2169, vivify_819
    new $P2169, "Undef"
  vivify_819:
    find_lex $P2170, "$repr"
    unless_null $P2170, vivify_820
    new $P2170, "Undef"
  vivify_820:
    set $S2171, $P2170
    repr_type_object_for $P2172, $P2169, $S2171
    $P2173 = root_new ['parrot';'Hash']
    set_who $P2172, $P2173
.annotate 'line', 991
    .return ($P2172)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("142_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2175
    .param pmc param_2176
    .param pmc param_2177
    .param pmc param_2178
.annotate 'line', 998
    .lex "self", param_2175
    .lex "$obj", param_2176
    .lex "$name", param_2177
    .lex "$code_obj", param_2178
.annotate 'line', 999
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 998
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("143_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2180
    .param pmc param_2181
    .param pmc param_2182
    .param pmc param_2183
.annotate 'line', 1002
    .lex "self", param_2180
    .lex "$obj", param_2181
    .lex "$name", param_2182
    .lex "$code_obj", param_2183
.annotate 'line', 1003
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1002
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("144_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2185
    .param pmc param_2186
    .param pmc param_2187
.annotate 'line', 1006
    .lex "self", param_2185
    .lex "$obj", param_2186
    .lex "$meta_attr", param_2187
.annotate 'line', 1007
    die "Native types may not have attributes"
.annotate 'line', 1006
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("145_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2189
    .param pmc param_2190
.annotate 'line', 1010
    .lex "self", param_2189
    .lex "$obj", param_2190
.annotate 'line', 1011
    new $P2191, "Integer"
    assign $P2191, 1
    find_lex $P2192, "self"
    find_lex $P2193, "$?CLASS"
    setattribute $P2192, $P2193, "$!composed", $P2191
.annotate 'line', 1010
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("146_1305640904.321") :outer("138_1305640904.321")
    .param pmc param_2195
    .param pmc param_2196
.annotate 'line', 1014
    .lex "self", param_2195
    .lex "$obj", param_2196
    find_lex $P2197, "self"
    find_lex $P2198, "$?CLASS"
    getattribute $P2199, $P2197, $P2198, "$!name"
    unless_null $P2199, vivify_821
    new $P2199, "Undef"
  vivify_821:
    .return ($P2199)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2201"  :subid("147_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 1020
    .const 'Sub' $P2376 = "160_1305640904.321" 
    capture_lex $P2376
    .const 'Sub' $P2295 = "155_1305640904.321" 
    capture_lex $P2295
    .const 'Sub' $P2286 = "154_1305640904.321" 
    capture_lex $P2286
    .const 'Sub' $P2277 = "153_1305640904.321" 
    capture_lex $P2277
    .const 'Sub' $P2272 = "152_1305640904.321" 
    capture_lex $P2272
    .const 'Sub' $P2255 = "151_1305640904.321" 
    capture_lex $P2255
    .const 'Sub' $P2240 = "150_1305640904.321" 
    capture_lex $P2240
    .const 'Sub' $P2203 = "148_1305640904.321" 
    capture_lex $P2203
.annotate 'line', 1080
    .const 'Sub' $P2203 = "148_1305640904.321" 
    newclosure $P2237, $P2203
    .lex "has_method", $P2237
.annotate 'line', 1020
    .lex "$?PACKAGE", $P2238
    .lex "$?CLASS", $P2239
.annotate 'line', 1076
    find_lex $P2384, "has_method"
.annotate 'line', 1020
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("148_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2206
    .param pmc param_2207
    .param pmc param_2208
.annotate 'line', 1080
    .const 'Sub' $P2220 = "149_1305640904.321" 
    capture_lex $P2220
    new $P2205, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2205, control_2204
    push_eh $P2205
    .lex "$target", param_2206
    .lex "$name", param_2207
    .lex "$local", param_2208
.annotate 'line', 1081
    $P2209 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2209
    find_lex $P2210, "$target"
    unless_null $P2210, vivify_822
    new $P2210, "Undef"
  vivify_822:
    get_how $P2211, $P2210
    find_lex $P2212, "$target"
    unless_null $P2212, vivify_823
    new $P2212, "Undef"
  vivify_823:
    find_lex $P2213, "$local"
    unless_null $P2213, vivify_824
    new $P2213, "Undef"
  vivify_824:
    $P2214 = $P2211."methods"($P2212, $P2213 :named("local"))
    store_lex "@methods", $P2214
.annotate 'line', 1082
    find_lex $P2216, "@methods"
    unless_null $P2216, vivify_825
    $P2216 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    defined $I2217, $P2216
    unless $I2217, for_undef_826
    iter $P2215, $P2216
    new $P2232, 'ExceptionHandler'
    set_label $P2232, loop2231_handler
    $P2232."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2232
  loop2231_test:
    unless $P2215, loop2231_done
    shift $P2218, $P2215
  loop2231_redo:
    .const 'Sub' $P2220 = "149_1305640904.321" 
    capture_lex $P2220
    $P2220($P2218)
  loop2231_next:
    goto loop2231_test
  loop2231_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2233, exception, 'type'
    eq $P2233, .CONTROL_LOOP_NEXT, loop2231_next
    eq $P2233, .CONTROL_LOOP_REDO, loop2231_redo
  loop2231_done:
    pop_eh 
  for_undef_826:
.annotate 'line', 1085
    new $P2234, "Exception"
    set $P2234['type'], .CONTROL_RETURN
    new $P2235, "Integer"
    assign $P2235, 0
    setattribute $P2234, 'payload', $P2235
    throw $P2234
.annotate 'line', 1080
    .return ()
  control_2204:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2236, exception, "payload"
    .return ($P2236)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2219"  :anon :subid("149_1305640904.321") :outer("148_1305640904.321")
    .param pmc param_2221
.annotate 'line', 1082
    .lex "$_", param_2221
.annotate 'line', 1083
    find_lex $P2224, "$_"
    unless_null $P2224, vivify_827
    new $P2224, "Undef"
  vivify_827:
    set $S2225, $P2224
    find_lex $P2226, "$name"
    unless_null $P2226, vivify_828
    new $P2226, "Undef"
  vivify_828:
    set $S2227, $P2226
    iseq $I2228, $S2225, $S2227
    if $I2228, if_2223
    new $P2222, 'Integer'
    set $P2222, $I2228
    goto if_2223_end
  if_2223:
    new $P2229, "Exception"
    set $P2229['type'], .CONTROL_RETURN
    new $P2230, "Integer"
    assign $P2230, 1
    setattribute $P2229, 'payload', $P2230
    throw $P2229
  if_2223_end:
.annotate 'line', 1082
    .return ($P2222)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("150_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2241
    .param pmc param_2242 :named("name")
    .param pmc param_2243 :optional :named("type")
    .param int has_param_2243 :opt_flag
    .param pmc param_2245 :optional :named("box_target")
    .param int has_param_2245 :opt_flag
.annotate 'line', 1025
    .lex "self", param_2241
    .lex "$name", param_2242
    if has_param_2243, optparam_829
    new $P2244, "Undef"
    set param_2243, $P2244
  optparam_829:
    .lex "$type", param_2243
    if has_param_2245, optparam_830
    new $P2246, "Undef"
    set param_2245, $P2246
  optparam_830:
    .lex "$box_target", param_2245
.annotate 'line', 1026
    new $P2247, "Undef"
    .lex "$attr", $P2247
    find_lex $P2248, "self"
    repr_instance_of $P2249, $P2248
    store_lex "$attr", $P2249
.annotate 'line', 1027
    find_lex $P2250, "$attr"
    unless_null $P2250, vivify_831
    new $P2250, "Undef"
  vivify_831:
    find_lex $P2251, "$name"
    unless_null $P2251, vivify_832
    new $P2251, "Undef"
  vivify_832:
    find_lex $P2252, "$type"
    unless_null $P2252, vivify_833
    new $P2252, "Undef"
  vivify_833:
    find_lex $P2253, "$box_target"
    unless_null $P2253, vivify_834
    new $P2253, "Undef"
  vivify_834:
    $P2250."BUILD"($P2251 :named("name"), $P2252 :named("type"), $P2253 :named("box_target"))
    find_lex $P2254, "$attr"
    unless_null $P2254, vivify_835
    new $P2254, "Undef"
  vivify_835:
.annotate 'line', 1025
    .return ($P2254)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("151_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2256
    .param pmc param_2257 :optional :named("name")
    .param int has_param_2257 :opt_flag
    .param pmc param_2259 :optional :named("type")
    .param int has_param_2259 :opt_flag
    .param pmc param_2261 :optional :named("box_target")
    .param int has_param_2261 :opt_flag
.annotate 'line', 1031
    .lex "self", param_2256
    if has_param_2257, optparam_836
    new $P2258, "Undef"
    set param_2257, $P2258
  optparam_836:
    .lex "$name", param_2257
    if has_param_2259, optparam_837
    new $P2260, "Undef"
    set param_2259, $P2260
  optparam_837:
    .lex "$type", param_2259
    if has_param_2261, optparam_838
    new $P2262, "Undef"
    set param_2261, $P2262
  optparam_838:
    .lex "$box_target", param_2261
.annotate 'line', 1032
    find_lex $P2263, "$name"
    unless_null $P2263, vivify_839
    new $P2263, "Undef"
  vivify_839:
    find_lex $P2264, "self"
    find_lex $P2265, "$?CLASS"
    setattribute $P2264, $P2265, "$!name", $P2263
.annotate 'line', 1033
    find_lex $P2266, "$type"
    unless_null $P2266, vivify_840
    new $P2266, "Undef"
  vivify_840:
    find_lex $P2267, "self"
    find_lex $P2268, "$?CLASS"
    setattribute $P2267, $P2268, "$!type", $P2266
.annotate 'line', 1034
    find_lex $P2269, "$box_target"
    unless_null $P2269, vivify_841
    new $P2269, "Undef"
  vivify_841:
    find_lex $P2270, "self"
    find_lex $P2271, "$?CLASS"
    setattribute $P2270, $P2271, "$!box_target", $P2269
.annotate 'line', 1031
    .return ($P2269)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("152_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2273
.annotate 'line', 1037
    .lex "self", param_2273
    find_lex $P2274, "self"
    find_lex $P2275, "$?CLASS"
    getattribute $P2276, $P2274, $P2275, "$!name"
    unless_null $P2276, vivify_842
    new $P2276, "Undef"
  vivify_842:
    .return ($P2276)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("153_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2278
.annotate 'line', 1041
    .lex "self", param_2278
.annotate 'line', 1042
    find_lex $P2280, "self"
    find_lex $P2281, "$?CLASS"
    getattribute $P2282, $P2280, $P2281, "$!type"
    unless_null $P2282, vivify_843
    new $P2282, "Undef"
  vivify_843:
    set $P2279, $P2282
    defined $I2284, $P2279
    if $I2284, default_2283
    null $P2285
    set $P2279, $P2285
  default_2283:
.annotate 'line', 1041
    .return ($P2279)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("154_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2287
.annotate 'line', 1045
    .lex "self", param_2287
.annotate 'line', 1046
    find_lex $P2290, "self"
    find_lex $P2291, "$?CLASS"
    getattribute $P2292, $P2290, $P2291, "$!box_target"
    unless_null $P2292, vivify_844
    new $P2292, "Undef"
  vivify_844:
    if $P2292, if_2289
    new $P2294, "Integer"
    assign $P2294, 0
    set $P2288, $P2294
    goto if_2289_end
  if_2289:
    new $P2293, "Integer"
    assign $P2293, 1
    set $P2288, $P2293
  if_2289_end:
.annotate 'line', 1045
    .return ($P2288)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("155_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2296
    .param pmc param_2297
.annotate 'line', 1049
    .const 'Sub' $P2349 = "158_1305640904.321" 
    capture_lex $P2349
    .const 'Sub' $P2309 = "156_1305640904.321" 
    capture_lex $P2309
    .lex "self", param_2296
    .lex "$obj", param_2297
.annotate 'line', 1050
    new $P2298, "Undef"
    .lex "$long_name", $P2298
    find_lex $P2299, "self"
    find_lex $P2300, "$?CLASS"
    getattribute $P2301, $P2299, $P2300, "$!name"
    unless_null $P2301, vivify_845
    new $P2301, "Undef"
  vivify_845:
    set $S2302, $P2301
    new $P2303, 'String'
    set $P2303, $S2302
    store_lex "$long_name", $P2303
.annotate 'line', 1051
    find_lex $P2306, "self"
    $P2307 = $P2306."has_mutator"()
    if $P2307, if_2305
.annotate 'line', 1063
    .const 'Sub' $P2349 = "158_1305640904.321" 
    capture_lex $P2349
    $P2375 = $P2349()
    set $P2304, $P2375
.annotate 'line', 1051
    goto if_2305_end
  if_2305:
    .const 'Sub' $P2309 = "156_1305640904.321" 
    capture_lex $P2309
    $P2347 = $P2309()
    set $P2304, $P2347
  if_2305_end:
.annotate 'line', 1049
    .return ($P2304)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2348"  :anon :subid("158_1305640904.321") :outer("155_1305640904.321")
.annotate 'line', 1063
    .const 'Sub' $P2365 = "159_1305640904.321" 
    capture_lex $P2365
.annotate 'line', 1064
    new $P2350, "Undef"
    .lex "$method", $P2350
    find_lex $P2351, "$long_name"
    unless_null $P2351, vivify_846
    new $P2351, "Undef"
  vivify_846:
    set $S2352, $P2351
    substr $S2353, $S2352, 2
    new $P2354, 'String'
    set $P2354, $S2353
    store_lex "$method", $P2354
.annotate 'line', 1065
    find_lex $P2357, "$obj"
    unless_null $P2357, vivify_847
    new $P2357, "Undef"
  vivify_847:
    find_lex $P2358, "$method"
    unless_null $P2358, vivify_848
    new $P2358, "Undef"
  vivify_848:
    $P2359 = "has_method"($P2357, $P2358, 0)
    unless $P2359, unless_2356
    set $P2355, $P2359
    goto unless_2356_end
  unless_2356:
.annotate 'line', 1066
    find_lex $P2360, "$obj"
    unless_null $P2360, vivify_849
    new $P2360, "Undef"
  vivify_849:
    get_how $P2361, $P2360
    find_lex $P2362, "$obj"
    unless_null $P2362, vivify_850
    new $P2362, "Undef"
  vivify_850:
    find_lex $P2363, "$method"
    unless_null $P2363, vivify_851
    new $P2363, "Undef"
  vivify_851:
.annotate 'line', 1067
    .const 'Sub' $P2365 = "159_1305640904.321" 
    newclosure $P2373, $P2365
    $P2374 = $P2361."add_method"($P2362, $P2363, $P2373)
.annotate 'line', 1065
    set $P2355, $P2374
  unless_2356_end:
.annotate 'line', 1063
    .return ($P2355)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2364"  :anon :subid("159_1305640904.321") :outer("158_1305640904.321")
    .param pmc param_2366
.annotate 'line', 1067
    .lex "self", param_2366
.annotate 'line', 1068
    find_lex $P2367, "self"
    find_lex $P2368, "$obj"
    unless_null $P2368, vivify_852
    new $P2368, "Undef"
  vivify_852:
    get_what $P2369, $P2368
    find_lex $P2370, "$long_name"
    unless_null $P2370, vivify_853
    new $P2370, "Undef"
  vivify_853:
    set $S2371, $P2370
    getattribute $P2372, $P2367, $P2369, $S2371
.annotate 'line', 1067
    .return ($P2372)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2308"  :anon :subid("156_1305640904.321") :outer("155_1305640904.321")
.annotate 'line', 1051
    .const 'Sub' $P2326 = "157_1305640904.321" 
    capture_lex $P2326
.annotate 'line', 1052
    new $P2310, "Undef"
    .lex "$method", $P2310
    find_lex $P2311, "$long_name"
    unless_null $P2311, vivify_854
    new $P2311, "Undef"
  vivify_854:
    set $S2312, $P2311
    substr $S2313, $S2312, 1
    new $P2314, 'String'
    set $P2314, $S2313
    store_lex "$method", $P2314
.annotate 'line', 1053
    find_lex $P2317, "$obj"
    unless_null $P2317, vivify_855
    new $P2317, "Undef"
  vivify_855:
    find_lex $P2318, "$method"
    unless_null $P2318, vivify_856
    new $P2318, "Undef"
  vivify_856:
    $P2319 = "has_method"($P2317, $P2318, 0)
    unless $P2319, unless_2316
    set $P2315, $P2319
    goto unless_2316_end
  unless_2316:
.annotate 'line', 1054
    find_lex $P2320, "$obj"
    unless_null $P2320, vivify_857
    new $P2320, "Undef"
  vivify_857:
    get_how $P2321, $P2320
    find_lex $P2322, "$obj"
    unless_null $P2322, vivify_858
    new $P2322, "Undef"
  vivify_858:
    get_what $P2323, $P2322
    find_lex $P2324, "$method"
    unless_null $P2324, vivify_859
    new $P2324, "Undef"
  vivify_859:
    .const 'Sub' $P2326 = "157_1305640904.321" 
    newclosure $P2345, $P2326
    $P2346 = $P2321."add_method"($P2323, $P2324, $P2345)
.annotate 'line', 1053
    set $P2315, $P2346
  unless_2316_end:
.annotate 'line', 1051
    .return ($P2315)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2325"  :anon :subid("157_1305640904.321") :outer("156_1305640904.321")
    .param pmc param_2327
    .param pmc param_2328 :optional
    .param int has_param_2328 :opt_flag
.annotate 'line', 1054
    .lex "self", param_2327
    if has_param_2328, optparam_860
    new $P2329, "Undef"
    set param_2328, $P2329
  optparam_860:
    .lex "$value", param_2328
.annotate 'line', 1056
    find_lex $P2331, "$value"
    unless_null $P2331, vivify_861
    new $P2331, "Undef"
  vivify_861:
    defined $I2332, $P2331
    unless $I2332, if_2330_end
.annotate 'line', 1055
    find_lex $P2333, "self"
    find_lex $P2334, "$obj"
    unless_null $P2334, vivify_862
    new $P2334, "Undef"
  vivify_862:
    get_what $P2335, $P2334
    find_lex $P2336, "$long_name"
    unless_null $P2336, vivify_863
    new $P2336, "Undef"
  vivify_863:
    set $S2337, $P2336
    find_lex $P2338, "$value"
    unless_null $P2338, vivify_864
    new $P2338, "Undef"
  vivify_864:
    setattribute $P2333, $P2335, $S2337, $P2338
  if_2330_end:
.annotate 'line', 1058
    find_lex $P2339, "self"
    find_lex $P2340, "$obj"
    unless_null $P2340, vivify_865
    new $P2340, "Undef"
  vivify_865:
    get_what $P2341, $P2340
    find_lex $P2342, "$long_name"
    unless_null $P2342, vivify_866
    new $P2342, "Undef"
  vivify_866:
    set $S2343, $P2342
    getattribute $P2344, $P2339, $P2341, $S2343
.annotate 'line', 1054
    .return ($P2344)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("160_1305640904.321") :outer("147_1305640904.321")
    .param pmc param_2377
.annotate 'line', 1076
    .lex "self", param_2377
.annotate 'line', 1077
    find_lex $P2378, "self"
    find_lex $P2379, "$?CLASS"
    getattribute $P2380, $P2378, $P2379, "$!name"
    unless_null $P2380, vivify_867
    new $P2380, "Undef"
  vivify_867:
    set $S2381, $P2380
    substr $S2382, $S2381, 1, 1
    isne $I2383, $S2382, "!"
.annotate 'line', 1076
    .return ($I2383)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2385"  :subid("161_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 1091
    .const 'Sub' $P2441 = "169_1305640904.321" 
    capture_lex $P2441
    .const 'Sub' $P2435 = "168_1305640904.321" 
    capture_lex $P2435
    .const 'Sub' $P2431 = "167_1305640904.321" 
    capture_lex $P2431
    .const 'Sub' $P2426 = "166_1305640904.321" 
    capture_lex $P2426
    .const 'Sub' $P2421 = "165_1305640904.321" 
    capture_lex $P2421
    .const 'Sub' $P2406 = "164_1305640904.321" 
    capture_lex $P2406
    .const 'Sub' $P2399 = "163_1305640904.321" 
    capture_lex $P2399
    .const 'Sub' $P2389 = "162_1305640904.321" 
    capture_lex $P2389
    .lex "$?PACKAGE", $P2387
    .lex "$?CLASS", $P2388
.annotate 'line', 1132
    .const 'Sub' $P2441 = "169_1305640904.321" 
    newclosure $P2447, $P2441
.annotate 'line', 1091
    .return ($P2447)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("162_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2390
    .param pmc param_2391 :optional :named("name")
    .param int has_param_2391 :opt_flag
.annotate 'line', 1095
    .lex "self", param_2390
    if has_param_2391, optparam_868
    new $P2392, "Undef"
    set param_2391, $P2392
  optparam_868:
    .lex "$name", param_2391
.annotate 'line', 1096
    new $P2393, "Undef"
    .lex "$obj", $P2393
    find_lex $P2394, "self"
    repr_instance_of $P2395, $P2394
    store_lex "$obj", $P2395
.annotate 'line', 1097
    find_lex $P2396, "$obj"
    unless_null $P2396, vivify_869
    new $P2396, "Undef"
  vivify_869:
    find_lex $P2397, "$name"
    unless_null $P2397, vivify_870
    new $P2397, "Undef"
  vivify_870:
    $P2396."BUILD"($P2397 :named("name"))
    find_lex $P2398, "$obj"
    unless_null $P2398, vivify_871
    new $P2398, "Undef"
  vivify_871:
.annotate 'line', 1095
    .return ($P2398)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("163_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2400
    .param pmc param_2401 :optional :named("name")
    .param int has_param_2401 :opt_flag
.annotate 'line', 1101
    .lex "self", param_2400
    if has_param_2401, optparam_872
    new $P2402, "Undef"
    set param_2401, $P2402
  optparam_872:
    .lex "$name", param_2401
.annotate 'line', 1102
    find_lex $P2403, "$name"
    unless_null $P2403, vivify_873
    new $P2403, "Undef"
  vivify_873:
    find_lex $P2404, "self"
    find_lex $P2405, "$?CLASS"
    setattribute $P2404, $P2405, "$!name", $P2403
.annotate 'line', 1101
    .return ($P2403)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("164_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2407
    .param pmc param_2408 :optional :named("name")
    .param int has_param_2408 :opt_flag
    .param pmc param_2410 :optional :named("repr")
    .param int has_param_2410 :opt_flag
.annotate 'line', 1107
    .lex "self", param_2407
    if has_param_2408, optparam_874
    new $P2409, "String"
    assign $P2409, "<anon>"
    set param_2408, $P2409
  optparam_874:
    .lex "$name", param_2408
    if has_param_2410, optparam_875
    new $P2411, "String"
    assign $P2411, "P6opaque"
    set param_2410, $P2411
  optparam_875:
    .lex "$repr", param_2410
.annotate 'line', 1108
    new $P2412, "Undef"
    .lex "$metaclass", $P2412
    find_lex $P2413, "self"
    find_lex $P2414, "$name"
    unless_null $P2414, vivify_876
    new $P2414, "Undef"
  vivify_876:
    $P2415 = $P2413."new"($P2414 :named("name"))
    store_lex "$metaclass", $P2415
.annotate 'line', 1110
    find_lex $P2416, "$metaclass"
    unless_null $P2416, vivify_877
    new $P2416, "Undef"
  vivify_877:
    find_lex $P2417, "$repr"
    unless_null $P2417, vivify_878
    new $P2417, "Undef"
  vivify_878:
    set $S2418, $P2417
    repr_type_object_for $P2419, $P2416, $S2418
    $P2420 = root_new ['parrot';'Hash']
    set_who $P2419, $P2420
.annotate 'line', 1107
    .return ($P2419)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("165_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2422
    .param pmc param_2423
    .param pmc param_2424
    .param pmc param_2425
.annotate 'line', 1114
    .lex "self", param_2422
    .lex "$obj", param_2423
    .lex "$name", param_2424
    .lex "$code_obj", param_2425
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("166_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2427
    .param pmc param_2428
    .param pmc param_2429
    .param pmc param_2430
.annotate 'line', 1120
    .lex "self", param_2427
    .lex "$obj", param_2428
    .lex "$name", param_2429
    .lex "$code_obj", param_2430
.annotate 'line', 1121
    die "Modules may not have methods"
.annotate 'line', 1120
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("167_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2432
    .param pmc param_2433
    .param pmc param_2434
.annotate 'line', 1124
    .lex "self", param_2432
    .lex "$obj", param_2433
    .lex "$meta_attr", param_2434
.annotate 'line', 1125
    die "Modules may not have attributes"
.annotate 'line', 1124
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("168_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2436
    .param pmc param_2437
.annotate 'line', 1128
    .lex "self", param_2436
    .lex "$obj", param_2437
.annotate 'line', 1129
    new $P2438, "Integer"
    assign $P2438, 1
    find_lex $P2439, "self"
    find_lex $P2440, "$?CLASS"
    setattribute $P2439, $P2440, "$!composed", $P2438
.annotate 'line', 1128
    .return ($P2438)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("169_1305640904.321") :outer("161_1305640904.321")
    .param pmc param_2442
    .param pmc param_2443
.annotate 'line', 1132
    .lex "self", param_2442
    .lex "$obj", param_2443
    find_lex $P2444, "self"
    find_lex $P2445, "$?CLASS"
    getattribute $P2446, $P2444, $P2445, "$!name"
    unless_null $P2446, vivify_879
    new $P2446, "Undef"
  vivify_879:
    .return ($P2446)
.end


.HLL "nqp"

.namespace []
.sub "_block2448"  :anon :subid("170_1305640904.321") :outer("10_1305640904.321")
.annotate 'line', 1140
    .lex "$?PACKAGE", $P2450
    .lex "$?CLASS", $P2451
.annotate 'line', 1141
    find_lex $P2452, "NQPModuleHOW"
    find_lex $P2453, "$?PACKAGE"
    unless_null $P2453, vivify_880
    new $P2453, "Undef"
    store_lex "$?PACKAGE", $P2453
  vivify_880:
    get_who $P2454, $P2453
    set $P2454["module"], $P2452
.annotate 'line', 1142
    find_lex $P2455, "NQPClassHOW"
    find_lex $P2456, "$?PACKAGE"
    unless_null $P2456, vivify_881
    new $P2456, "Undef"
    store_lex "$?PACKAGE", $P2456
  vivify_881:
    get_who $P2457, $P2456
    set $P2457["class"], $P2455
.annotate 'line', 1143
    find_lex $P2458, "NQPAttribute"
    find_lex $P2459, "$?PACKAGE"
    unless_null $P2459, vivify_882
    new $P2459, "Undef"
    store_lex "$?PACKAGE", $P2459
  vivify_882:
    get_who $P2460, $P2459
    set $P2460["class-attr"], $P2458
.annotate 'line', 1144
    find_lex $P2461, "NQPClassHOW"
    find_lex $P2462, "$?PACKAGE"
    unless_null $P2462, vivify_883
    new $P2462, "Undef"
    store_lex "$?PACKAGE", $P2462
  vivify_883:
    get_who $P2463, $P2462
    set $P2463["grammar"], $P2461
.annotate 'line', 1145
    find_lex $P2464, "NQPAttribute"
    find_lex $P2465, "$?PACKAGE"
    unless_null $P2465, vivify_884
    new $P2465, "Undef"
    store_lex "$?PACKAGE", $P2465
  vivify_884:
    get_who $P2466, $P2465
    set $P2466["grammar-attr"], $P2464
.annotate 'line', 1146
    find_lex $P2467, "NQPParametricRoleHOW"
    find_lex $P2468, "$?PACKAGE"
    unless_null $P2468, vivify_885
    new $P2468, "Undef"
    store_lex "$?PACKAGE", $P2468
  vivify_885:
    get_who $P2469, $P2468
    set $P2469["role"], $P2467
.annotate 'line', 1147
    find_lex $P2470, "NQPAttribute"
    find_lex $P2471, "$?PACKAGE"
    unless_null $P2471, vivify_886
    new $P2471, "Undef"
    store_lex "$?PACKAGE", $P2471
  vivify_886:
    get_who $P2472, $P2471
    set $P2472["role-attr"], $P2470
.annotate 'line', 1148
    find_lex $P2473, "NQPNativeHOW"
    find_lex $P2474, "$?PACKAGE"
    unless_null $P2474, vivify_887
    new $P2474, "Undef"
    store_lex "$?PACKAGE", $P2474
  vivify_887:
    get_who $P2475, $P2474
    set $P2475["native"], $P2473
.annotate 'line', 1140
    .return ($P2473)
.end


.HLL "nqp"

.namespace []
.sub "_block2483" :load :anon :subid("171_1305640904.321")
.annotate 'line', 1
    .const 'Sub' $P2485 = "10_1305640904.321" 
    $P2486 = $P2485()
    .return ($P2486)
.end

