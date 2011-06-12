.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1307873277.81238")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2448 = "170_1307873277.81238" 
    capture_lex $P2448
    .const 'Sub' $P2385 = "161_1307873277.81238" 
    capture_lex $P2385
    .const 'Sub' $P2201 = "147_1307873277.81238" 
    capture_lex $P2201
    .const 'Sub' $P2139 = "138_1307873277.81238" 
    capture_lex $P2139
    .const 'Sub' $P1040 = "77_1307873277.81238" 
    capture_lex $P1040
    .const 'Sub' $P722 = "52_1307873277.81238" 
    capture_lex $P722
    .const 'Sub' $P509 = "42_1307873277.81238" 
    capture_lex $P509
    .const 'Sub' $P249 = "21_1307873277.81238" 
    capture_lex $P249
    .const 'Sub' $P26 = "11_1307873277.81238" 
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
.annotate 'line', 5
    .const 'Sub' $P26 = "11_1307873277.81238" 
    capture_lex $P26
    $P26()
.annotate 'line', 97
    .const 'Sub' $P249 = "21_1307873277.81238" 
    capture_lex $P249
    $P249()
.annotate 'line', 242
    .const 'Sub' $P509 = "42_1307873277.81238" 
    capture_lex $P509
    $P509()
.annotate 'line', 318
    .const 'Sub' $P722 = "52_1307873277.81238" 
    capture_lex $P722
    $P722()
.annotate 'line', 498
    .const 'Sub' $P1040 = "77_1307873277.81238" 
    capture_lex $P1040
    $P1040()
.annotate 'line', 972
    .const 'Sub' $P2139 = "138_1307873277.81238" 
    capture_lex $P2139
    $P2139()
.annotate 'line', 1018
    .const 'Sub' $P2201 = "147_1307873277.81238" 
    capture_lex $P2201
    $P2201()
.annotate 'line', 1089
    .const 'Sub' $P2385 = "161_1307873277.81238" 
    capture_lex $P2385
    $P2385()
.annotate 'line', 1138
    .const 'Sub' $P2448 = "170_1307873277.81238" 
    capture_lex $P2448
    $P2448()
    find_lex $P2477, "@ARGS"
    if $P2477, if_2476
    set $P2475, $P2477
    goto if_2476_end
  if_2476:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2478, "ModuleLoader"
    getinterp $P2479
    set $P2480, $P2479["context"]
    $P2481 = $P2478."set_mainline_module"($P2480)
    set $P2475, $P2481
  if_2476_end:
.annotate 'line', 1
    .return ($P2475)
    .const 'Sub' $P2483 = "171_1307873277.81238" 
    .return ($P2483)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post172") :outer("10_1307873277.81238")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1307873277.81238" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2487, "1307873274.8766"
    isnull $I2488, $P2487
    if $I2488, if_2486
    .const 'Sub' $P3246 = "10_1307873277.81238" 
    $P3247 = $P3246."get_lexinfo"()
    nqp_get_sc_object $P3248, "1307873274.8766", 0
    $P3247."set_static_lexpad_value"("GLOBALish", $P3248)
    .const 'Sub' $P3249 = "10_1307873277.81238" 
    $P3250 = $P3249."get_lexinfo"()
    $P3250."finish_static_lexpad"()
    .const 'Sub' $P3251 = "10_1307873277.81238" 
    $P3252 = $P3251."get_lexinfo"()
    nqp_get_sc_object $P3253, "1307873274.8766", 0
    $P3252."set_static_lexpad_value"("$?PACKAGE", $P3253)
    .const 'Sub' $P3254 = "10_1307873277.81238" 
    $P3255 = $P3254."get_lexinfo"()
    $P3255."finish_static_lexpad"()
    .const 'Sub' $P3256 = "10_1307873277.81238" 
    $P3257 = $P3256."get_lexinfo"()
    nqp_get_sc_object $P3258, "1307873274.8766", 1
    $P3257."set_static_lexpad_value"("RoleToRoleApplier", $P3258)
    .const 'Sub' $P3259 = "10_1307873277.81238" 
    $P3260 = $P3259."get_lexinfo"()
    $P3260."finish_static_lexpad"()
    nqp_get_sc_object $P3261, "1307873274.8766", 2
    .const 'Sub' $P3262 = "12_1307873277.81238" 
    assign $P3261, $P3262
    .const 'Sub' $P3263 = "11_1307873277.81238" 
    $P3264 = $P3263."get_lexinfo"()
    nqp_get_sc_object $P3265, "1307873274.8766", 1
    $P3264."set_static_lexpad_value"("$?PACKAGE", $P3265)
    .const 'Sub' $P3266 = "11_1307873277.81238" 
    $P3267 = $P3266."get_lexinfo"()
    $P3267."finish_static_lexpad"()
    .const 'Sub' $P3268 = "11_1307873277.81238" 
    $P3269 = $P3268."get_lexinfo"()
    nqp_get_sc_object $P3270, "1307873274.8766", 1
    $P3269."set_static_lexpad_value"("$?CLASS", $P3270)
    .const 'Sub' $P3271 = "11_1307873277.81238" 
    $P3272 = $P3271."get_lexinfo"()
    $P3272."finish_static_lexpad"()
    .const 'Sub' $P3273 = "10_1307873277.81238" 
    $P3274 = $P3273."get_lexinfo"()
    nqp_get_sc_object $P3275, "1307873274.8766", 3
    $P3274."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3275)
    .const 'Sub' $P3276 = "10_1307873277.81238" 
    $P3277 = $P3276."get_lexinfo"()
    $P3277."finish_static_lexpad"()
    nqp_get_sc_object $P3278, "1307873274.8766", 4
    .const 'Sub' $P3279 = "22_1307873277.81238" 
    assign $P3278, $P3279
    nqp_get_sc_object $P3280, "1307873274.8766", 5
    .const 'Sub' $P3281 = "23_1307873277.81238" 
    assign $P3280, $P3281
    nqp_get_sc_object $P3282, "1307873274.8766", 6
    .const 'Sub' $P3283 = "24_1307873277.81238" 
    assign $P3282, $P3283
    nqp_get_sc_object $P3284, "1307873274.8766", 7
    .const 'Sub' $P3285 = "25_1307873277.81238" 
    assign $P3284, $P3285
    nqp_get_sc_object $P3286, "1307873274.8766", 8
    .const 'Sub' $P3287 = "26_1307873277.81238" 
    assign $P3286, $P3287
    nqp_get_sc_object $P3288, "1307873274.8766", 9
    .const 'Sub' $P3289 = "27_1307873277.81238" 
    assign $P3288, $P3289
    nqp_get_sc_object $P3290, "1307873274.8766", 10
    .const 'Sub' $P3291 = "28_1307873277.81238" 
    assign $P3290, $P3291
    nqp_get_sc_object $P3292, "1307873274.8766", 11
    .const 'Sub' $P3293 = "29_1307873277.81238" 
    assign $P3292, $P3293
    nqp_get_sc_object $P3294, "1307873274.8766", 12
    .const 'Sub' $P3295 = "30_1307873277.81238" 
    assign $P3294, $P3295
    nqp_get_sc_object $P3296, "1307873274.8766", 13
    .const 'Sub' $P3297 = "31_1307873277.81238" 
    assign $P3296, $P3297
    nqp_get_sc_object $P3298, "1307873274.8766", 14
    .const 'Sub' $P3299 = "33_1307873277.81238" 
    assign $P3298, $P3299
    nqp_get_sc_object $P3300, "1307873274.8766", 15
    .const 'Sub' $P3301 = "35_1307873277.81238" 
    assign $P3300, $P3301
    nqp_get_sc_object $P3302, "1307873274.8766", 16
    .const 'Sub' $P3303 = "36_1307873277.81238" 
    assign $P3302, $P3303
    nqp_get_sc_object $P3304, "1307873274.8766", 17
    .const 'Sub' $P3305 = "37_1307873277.81238" 
    assign $P3304, $P3305
    nqp_get_sc_object $P3306, "1307873274.8766", 18
    .const 'Sub' $P3307 = "38_1307873277.81238" 
    assign $P3306, $P3307
    nqp_get_sc_object $P3308, "1307873274.8766", 19
    .const 'Sub' $P3309 = "40_1307873277.81238" 
    assign $P3308, $P3309
    nqp_get_sc_object $P3310, "1307873274.8766", 20
    .const 'Sub' $P3311 = "41_1307873277.81238" 
    assign $P3310, $P3311
    .const 'Sub' $P3312 = "21_1307873277.81238" 
    $P3313 = $P3312."get_lexinfo"()
    nqp_get_sc_object $P3314, "1307873274.8766", 3
    $P3313."set_static_lexpad_value"("$?PACKAGE", $P3314)
    .const 'Sub' $P3315 = "21_1307873277.81238" 
    $P3316 = $P3315."get_lexinfo"()
    $P3316."finish_static_lexpad"()
    .const 'Sub' $P3317 = "21_1307873277.81238" 
    $P3318 = $P3317."get_lexinfo"()
    nqp_get_sc_object $P3319, "1307873274.8766", 3
    $P3318."set_static_lexpad_value"("$?CLASS", $P3319)
    .const 'Sub' $P3320 = "21_1307873277.81238" 
    $P3321 = $P3320."get_lexinfo"()
    $P3321."finish_static_lexpad"()
    .const 'Sub' $P3322 = "10_1307873277.81238" 
    $P3323 = $P3322."get_lexinfo"()
    nqp_get_sc_object $P3324, "1307873274.8766", 21
    $P3323."set_static_lexpad_value"("RoleToClassApplier", $P3324)
    .const 'Sub' $P3325 = "10_1307873277.81238" 
    $P3326 = $P3325."get_lexinfo"()
    $P3326."finish_static_lexpad"()
    nqp_get_sc_object $P3327, "1307873274.8766", 22
    .const 'Sub' $P3328 = "47_1307873277.81238" 
    assign $P3327, $P3328
    .const 'Sub' $P3329 = "42_1307873277.81238" 
    $P3330 = $P3329."get_lexinfo"()
    nqp_get_sc_object $P3331, "1307873274.8766", 21
    $P3330."set_static_lexpad_value"("$?PACKAGE", $P3331)
    .const 'Sub' $P3332 = "42_1307873277.81238" 
    $P3333 = $P3332."get_lexinfo"()
    $P3333."finish_static_lexpad"()
    .const 'Sub' $P3334 = "42_1307873277.81238" 
    $P3335 = $P3334."get_lexinfo"()
    nqp_get_sc_object $P3336, "1307873274.8766", 21
    $P3335."set_static_lexpad_value"("$?CLASS", $P3336)
    .const 'Sub' $P3337 = "42_1307873277.81238" 
    $P3338 = $P3337."get_lexinfo"()
    $P3338."finish_static_lexpad"()
    .const 'Sub' $P3339 = "10_1307873277.81238" 
    $P3340 = $P3339."get_lexinfo"()
    nqp_get_sc_object $P3341, "1307873274.8766", 23
    $P3340."set_static_lexpad_value"("NQPParametricRoleHOW", $P3341)
    .const 'Sub' $P3342 = "10_1307873277.81238" 
    $P3343 = $P3342."get_lexinfo"()
    $P3343."finish_static_lexpad"()
    nqp_get_sc_object $P3344, "1307873274.8766", 24
    .const 'Sub' $P3345 = "54_1307873277.81238" 
    assign $P3344, $P3345
    nqp_get_sc_object $P3346, "1307873274.8766", 25
    .const 'Sub' $P3347 = "55_1307873277.81238" 
    assign $P3346, $P3347
    nqp_get_sc_object $P3348, "1307873274.8766", 26
    .const 'Sub' $P3349 = "56_1307873277.81238" 
    assign $P3348, $P3349
    nqp_get_sc_object $P3350, "1307873274.8766", 27
    .const 'Sub' $P3351 = "57_1307873277.81238" 
    assign $P3350, $P3351
    nqp_get_sc_object $P3352, "1307873274.8766", 28
    .const 'Sub' $P3353 = "58_1307873277.81238" 
    assign $P3352, $P3353
    nqp_get_sc_object $P3354, "1307873274.8766", 29
    .const 'Sub' $P3355 = "59_1307873277.81238" 
    assign $P3354, $P3355
    nqp_get_sc_object $P3356, "1307873274.8766", 30
    .const 'Sub' $P3357 = "60_1307873277.81238" 
    assign $P3356, $P3357
    nqp_get_sc_object $P3358, "1307873274.8766", 31
    .const 'Sub' $P3359 = "61_1307873277.81238" 
    assign $P3358, $P3359
    nqp_get_sc_object $P3360, "1307873274.8766", 32
    .const 'Sub' $P3361 = "62_1307873277.81238" 
    assign $P3360, $P3361
    nqp_get_sc_object $P3362, "1307873274.8766", 33
    .const 'Sub' $P3363 = "63_1307873277.81238" 
    assign $P3362, $P3363
    nqp_get_sc_object $P3364, "1307873274.8766", 34
    .const 'Sub' $P3365 = "64_1307873277.81238" 
    assign $P3364, $P3365
    nqp_get_sc_object $P3366, "1307873274.8766", 35
    .const 'Sub' $P3367 = "65_1307873277.81238" 
    assign $P3366, $P3367
    nqp_get_sc_object $P3368, "1307873274.8766", 36
    .const 'Sub' $P3369 = "70_1307873277.81238" 
    assign $P3368, $P3369
    nqp_get_sc_object $P3370, "1307873274.8766", 37
    .const 'Sub' $P3371 = "72_1307873277.81238" 
    assign $P3370, $P3371
    nqp_get_sc_object $P3372, "1307873274.8766", 38
    .const 'Sub' $P3373 = "73_1307873277.81238" 
    assign $P3372, $P3373
    nqp_get_sc_object $P3374, "1307873274.8766", 39
    .const 'Sub' $P3375 = "74_1307873277.81238" 
    assign $P3374, $P3375
    nqp_get_sc_object $P3376, "1307873274.8766", 40
    .const 'Sub' $P3377 = "76_1307873277.81238" 
    assign $P3376, $P3377
    .const 'Sub' $P3378 = "52_1307873277.81238" 
    $P3379 = $P3378."get_lexinfo"()
    nqp_get_sc_object $P3380, "1307873274.8766", 23
    $P3379."set_static_lexpad_value"("$?PACKAGE", $P3380)
    .const 'Sub' $P3381 = "52_1307873277.81238" 
    $P3382 = $P3381."get_lexinfo"()
    $P3382."finish_static_lexpad"()
    .const 'Sub' $P3383 = "52_1307873277.81238" 
    $P3384 = $P3383."get_lexinfo"()
    nqp_get_sc_object $P3385, "1307873274.8766", 23
    $P3384."set_static_lexpad_value"("$?CLASS", $P3385)
    .const 'Sub' $P3386 = "52_1307873277.81238" 
    $P3387 = $P3386."get_lexinfo"()
    $P3387."finish_static_lexpad"()
    .const 'Sub' $P3388 = "10_1307873277.81238" 
    $P3389 = $P3388."get_lexinfo"()
    nqp_get_sc_object $P3390, "1307873274.8766", 41
    $P3389."set_static_lexpad_value"("NQPClassHOW", $P3390)
    .const 'Sub' $P3391 = "10_1307873277.81238" 
    $P3392 = $P3391."get_lexinfo"()
    $P3392."finish_static_lexpad"()
    nqp_get_sc_object $P3393, "1307873274.8766", 42
    .const 'Sub' $P3394 = "88_1307873277.81238" 
    assign $P3393, $P3394
    nqp_get_sc_object $P3395, "1307873274.8766", 43
    .const 'Sub' $P3396 = "89_1307873277.81238" 
    assign $P3395, $P3396
    nqp_get_sc_object $P3397, "1307873274.8766", 44
    .const 'Sub' $P3398 = "90_1307873277.81238" 
    assign $P3397, $P3398
    nqp_get_sc_object $P3399, "1307873274.8766", 45
    .const 'Sub' $P3400 = "91_1307873277.81238" 
    assign $P3399, $P3400
    nqp_get_sc_object $P3401, "1307873274.8766", 46
    .const 'Sub' $P3402 = "92_1307873277.81238" 
    assign $P3401, $P3402
    nqp_get_sc_object $P3403, "1307873274.8766", 47
    .const 'Sub' $P3404 = "93_1307873277.81238" 
    assign $P3403, $P3404
    nqp_get_sc_object $P3405, "1307873274.8766", 48
    .const 'Sub' $P3406 = "94_1307873277.81238" 
    assign $P3405, $P3406
    nqp_get_sc_object $P3407, "1307873274.8766", 49
    .const 'Sub' $P3408 = "96_1307873277.81238" 
    assign $P3407, $P3408
    nqp_get_sc_object $P3409, "1307873274.8766", 50
    .const 'Sub' $P3410 = "97_1307873277.81238" 
    assign $P3409, $P3410
    nqp_get_sc_object $P3411, "1307873274.8766", 51
    .const 'Sub' $P3412 = "99_1307873277.81238" 
    assign $P3411, $P3412
    nqp_get_sc_object $P3413, "1307873274.8766", 52
    .const 'Sub' $P3414 = "100_1307873277.81238" 
    assign $P3413, $P3414
    nqp_get_sc_object $P3415, "1307873274.8766", 53
    .const 'Sub' $P3416 = "101_1307873277.81238" 
    assign $P3415, $P3416
    nqp_get_sc_object $P3417, "1307873274.8766", 54
    .const 'Sub' $P3418 = "105_1307873277.81238" 
    assign $P3417, $P3418
    nqp_get_sc_object $P3419, "1307873274.8766", 55
    .const 'Sub' $P3420 = "110_1307873277.81238" 
    assign $P3419, $P3420
    nqp_get_sc_object $P3421, "1307873274.8766", 56
    .const 'Sub' $P3422 = "113_1307873277.81238" 
    assign $P3421, $P3422
    nqp_get_sc_object $P3423, "1307873274.8766", 57
    .const 'Sub' $P3424 = "116_1307873277.81238" 
    assign $P3423, $P3424
    nqp_get_sc_object $P3425, "1307873274.8766", 58
    .const 'Sub' $P3426 = "119_1307873277.81238" 
    assign $P3425, $P3426
    nqp_get_sc_object $P3427, "1307873274.8766", 59
    .const 'Sub' $P3428 = "122_1307873277.81238" 
    assign $P3427, $P3428
    nqp_get_sc_object $P3429, "1307873274.8766", 60
    .const 'Sub' $P3430 = "123_1307873277.81238" 
    assign $P3429, $P3430
    nqp_get_sc_object $P3431, "1307873274.8766", 61
    .const 'Sub' $P3432 = "124_1307873277.81238" 
    assign $P3431, $P3432
    nqp_get_sc_object $P3433, "1307873274.8766", 62
    .const 'Sub' $P3434 = "126_1307873277.81238" 
    assign $P3433, $P3434
    nqp_get_sc_object $P3435, "1307873274.8766", 63
    .const 'Sub' $P3436 = "127_1307873277.81238" 
    assign $P3435, $P3436
    nqp_get_sc_object $P3437, "1307873274.8766", 64
    .const 'Sub' $P3438 = "128_1307873277.81238" 
    assign $P3437, $P3438
    nqp_get_sc_object $P3439, "1307873274.8766", 65
    .const 'Sub' $P3440 = "130_1307873277.81238" 
    assign $P3439, $P3440
    nqp_get_sc_object $P3441, "1307873274.8766", 66
    .const 'Sub' $P3442 = "131_1307873277.81238" 
    assign $P3441, $P3442
    nqp_get_sc_object $P3443, "1307873274.8766", 67
    .const 'Sub' $P3444 = "132_1307873277.81238" 
    assign $P3443, $P3444
    nqp_get_sc_object $P3445, "1307873274.8766", 68
    .const 'Sub' $P3446 = "133_1307873277.81238" 
    assign $P3445, $P3446
    nqp_get_sc_object $P3447, "1307873274.8766", 69
    .const 'Sub' $P3448 = "134_1307873277.81238" 
    assign $P3447, $P3448
    nqp_get_sc_object $P3449, "1307873274.8766", 70
    .const 'Sub' $P3450 = "136_1307873277.81238" 
    assign $P3449, $P3450
    .const 'Sub' $P3451 = "77_1307873277.81238" 
    $P3452 = $P3451."get_lexinfo"()
    nqp_get_sc_object $P3453, "1307873274.8766", 41
    $P3452."set_static_lexpad_value"("$?PACKAGE", $P3453)
    .const 'Sub' $P3454 = "77_1307873277.81238" 
    $P3455 = $P3454."get_lexinfo"()
    $P3455."finish_static_lexpad"()
    .const 'Sub' $P3456 = "77_1307873277.81238" 
    $P3457 = $P3456."get_lexinfo"()
    nqp_get_sc_object $P3458, "1307873274.8766", 41
    $P3457."set_static_lexpad_value"("$?CLASS", $P3458)
    .const 'Sub' $P3459 = "77_1307873277.81238" 
    $P3460 = $P3459."get_lexinfo"()
    $P3460."finish_static_lexpad"()
    .const 'Sub' $P3461 = "10_1307873277.81238" 
    $P3462 = $P3461."get_lexinfo"()
    nqp_get_sc_object $P3463, "1307873274.8766", 71
    $P3462."set_static_lexpad_value"("NQPNativeHOW", $P3463)
    .const 'Sub' $P3464 = "10_1307873277.81238" 
    $P3465 = $P3464."get_lexinfo"()
    $P3465."finish_static_lexpad"()
    nqp_get_sc_object $P3466, "1307873274.8766", 72
    .const 'Sub' $P3467 = "139_1307873277.81238" 
    assign $P3466, $P3467
    nqp_get_sc_object $P3468, "1307873274.8766", 73
    .const 'Sub' $P3469 = "140_1307873277.81238" 
    assign $P3468, $P3469
    nqp_get_sc_object $P3470, "1307873274.8766", 74
    .const 'Sub' $P3471 = "141_1307873277.81238" 
    assign $P3470, $P3471
    nqp_get_sc_object $P3472, "1307873274.8766", 75
    .const 'Sub' $P3473 = "142_1307873277.81238" 
    assign $P3472, $P3473
    nqp_get_sc_object $P3474, "1307873274.8766", 76
    .const 'Sub' $P3475 = "143_1307873277.81238" 
    assign $P3474, $P3475
    nqp_get_sc_object $P3476, "1307873274.8766", 77
    .const 'Sub' $P3477 = "144_1307873277.81238" 
    assign $P3476, $P3477
    nqp_get_sc_object $P3478, "1307873274.8766", 78
    .const 'Sub' $P3479 = "145_1307873277.81238" 
    assign $P3478, $P3479
    nqp_get_sc_object $P3480, "1307873274.8766", 79
    .const 'Sub' $P3481 = "146_1307873277.81238" 
    assign $P3480, $P3481
    .const 'Sub' $P3482 = "138_1307873277.81238" 
    $P3483 = $P3482."get_lexinfo"()
    nqp_get_sc_object $P3484, "1307873274.8766", 71
    $P3483."set_static_lexpad_value"("$?PACKAGE", $P3484)
    .const 'Sub' $P3485 = "138_1307873277.81238" 
    $P3486 = $P3485."get_lexinfo"()
    $P3486."finish_static_lexpad"()
    .const 'Sub' $P3487 = "138_1307873277.81238" 
    $P3488 = $P3487."get_lexinfo"()
    nqp_get_sc_object $P3489, "1307873274.8766", 71
    $P3488."set_static_lexpad_value"("$?CLASS", $P3489)
    .const 'Sub' $P3490 = "138_1307873277.81238" 
    $P3491 = $P3490."get_lexinfo"()
    $P3491."finish_static_lexpad"()
    .const 'Sub' $P3492 = "10_1307873277.81238" 
    $P3493 = $P3492."get_lexinfo"()
    nqp_get_sc_object $P3494, "1307873274.8766", 80
    $P3493."set_static_lexpad_value"("NQPAttribute", $P3494)
    .const 'Sub' $P3495 = "10_1307873277.81238" 
    $P3496 = $P3495."get_lexinfo"()
    $P3496."finish_static_lexpad"()
    nqp_get_sc_object $P3497, "1307873274.8766", 81
    .const 'Sub' $P3498 = "150_1307873277.81238" 
    assign $P3497, $P3498
    nqp_get_sc_object $P3499, "1307873274.8766", 82
    .const 'Sub' $P3500 = "151_1307873277.81238" 
    assign $P3499, $P3500
    nqp_get_sc_object $P3501, "1307873274.8766", 83
    .const 'Sub' $P3502 = "152_1307873277.81238" 
    assign $P3501, $P3502
    nqp_get_sc_object $P3503, "1307873274.8766", 84
    .const 'Sub' $P3504 = "153_1307873277.81238" 
    assign $P3503, $P3504
    nqp_get_sc_object $P3505, "1307873274.8766", 85
    .const 'Sub' $P3506 = "154_1307873277.81238" 
    assign $P3505, $P3506
    nqp_get_sc_object $P3507, "1307873274.8766", 86
    .const 'Sub' $P3508 = "155_1307873277.81238" 
    assign $P3507, $P3508
    nqp_get_sc_object $P3509, "1307873274.8766", 87
    .const 'Sub' $P3510 = "160_1307873277.81238" 
    assign $P3509, $P3510
    .const 'Sub' $P3511 = "147_1307873277.81238" 
    $P3512 = $P3511."get_lexinfo"()
    nqp_get_sc_object $P3513, "1307873274.8766", 80
    $P3512."set_static_lexpad_value"("$?PACKAGE", $P3513)
    .const 'Sub' $P3514 = "147_1307873277.81238" 
    $P3515 = $P3514."get_lexinfo"()
    $P3515."finish_static_lexpad"()
    .const 'Sub' $P3516 = "147_1307873277.81238" 
    $P3517 = $P3516."get_lexinfo"()
    nqp_get_sc_object $P3518, "1307873274.8766", 80
    $P3517."set_static_lexpad_value"("$?CLASS", $P3518)
    .const 'Sub' $P3519 = "147_1307873277.81238" 
    $P3520 = $P3519."get_lexinfo"()
    $P3520."finish_static_lexpad"()
    .const 'Sub' $P3521 = "10_1307873277.81238" 
    $P3522 = $P3521."get_lexinfo"()
    nqp_get_sc_object $P3523, "1307873274.8766", 88
    $P3522."set_static_lexpad_value"("NQPModuleHOW", $P3523)
    .const 'Sub' $P3524 = "10_1307873277.81238" 
    $P3525 = $P3524."get_lexinfo"()
    $P3525."finish_static_lexpad"()
    nqp_get_sc_object $P3526, "1307873274.8766", 89
    .const 'Sub' $P3527 = "162_1307873277.81238" 
    assign $P3526, $P3527
    nqp_get_sc_object $P3528, "1307873274.8766", 90
    .const 'Sub' $P3529 = "163_1307873277.81238" 
    assign $P3528, $P3529
    nqp_get_sc_object $P3530, "1307873274.8766", 91
    .const 'Sub' $P3531 = "164_1307873277.81238" 
    assign $P3530, $P3531
    nqp_get_sc_object $P3532, "1307873274.8766", 92
    .const 'Sub' $P3533 = "165_1307873277.81238" 
    assign $P3532, $P3533
    nqp_get_sc_object $P3534, "1307873274.8766", 93
    .const 'Sub' $P3535 = "166_1307873277.81238" 
    assign $P3534, $P3535
    nqp_get_sc_object $P3536, "1307873274.8766", 94
    .const 'Sub' $P3537 = "167_1307873277.81238" 
    assign $P3536, $P3537
    nqp_get_sc_object $P3538, "1307873274.8766", 95
    .const 'Sub' $P3539 = "168_1307873277.81238" 
    assign $P3538, $P3539
    nqp_get_sc_object $P3540, "1307873274.8766", 96
    .const 'Sub' $P3541 = "169_1307873277.81238" 
    assign $P3540, $P3541
    .const 'Sub' $P3542 = "161_1307873277.81238" 
    $P3543 = $P3542."get_lexinfo"()
    nqp_get_sc_object $P3544, "1307873274.8766", 88
    $P3543."set_static_lexpad_value"("$?PACKAGE", $P3544)
    .const 'Sub' $P3545 = "161_1307873277.81238" 
    $P3546 = $P3545."get_lexinfo"()
    $P3546."finish_static_lexpad"()
    .const 'Sub' $P3547 = "161_1307873277.81238" 
    $P3548 = $P3547."get_lexinfo"()
    nqp_get_sc_object $P3549, "1307873274.8766", 88
    $P3548."set_static_lexpad_value"("$?CLASS", $P3549)
    .const 'Sub' $P3550 = "161_1307873277.81238" 
    $P3551 = $P3550."get_lexinfo"()
    $P3551."finish_static_lexpad"()
    .const 'Sub' $P3552 = "10_1307873277.81238" 
    $P3553 = $P3552."get_lexinfo"()
    nqp_get_sc_object $P3554, "1307873274.8766", 97
    $P3553."set_static_lexpad_value"("EXPORTHOW", $P3554)
    .const 'Sub' $P3555 = "10_1307873277.81238" 
    $P3556 = $P3555."get_lexinfo"()
    $P3556."finish_static_lexpad"()
    .const 'Sub' $P3557 = "170_1307873277.81238" 
    $P3558 = $P3557."get_lexinfo"()
    nqp_get_sc_object $P3559, "1307873274.8766", 97
    $P3558."set_static_lexpad_value"("$?PACKAGE", $P3559)
    .const 'Sub' $P3560 = "170_1307873277.81238" 
    $P3561 = $P3560."get_lexinfo"()
    $P3561."finish_static_lexpad"()
    .const 'Sub' $P3562 = "170_1307873277.81238" 
    $P3563 = $P3562."get_lexinfo"()
    nqp_get_sc_object $P3564, "1307873274.8766", 97
    $P3563."set_static_lexpad_value"("$?CLASS", $P3564)
    .const 'Sub' $P3565 = "170_1307873277.81238" 
    $P3566 = $P3565."get_lexinfo"()
    $P3566."finish_static_lexpad"()
    goto if_2486_end
  if_2486:
    nqp_dynop_setup 
    getinterp $P2489
    get_class $P2490, "LexPad"
    get_class $P2491, "NQPLexPad"
    $P2489."hll_map"($P2490, $P2491)
    nqp_create_sc $P2492, "1307873274.8766"
    .local pmc cur_sc
    set cur_sc, $P2492
    nqp_get_sc_object $P2493, "__6MODEL_CORE__", 0
    $P2494 = $P2493."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2494, cur_sc
    nqp_set_sc_object "1307873274.8766", 0, $P2494
    .const 'Sub' $P2495 = "10_1307873277.81238" 
    $P2496 = $P2495."get_lexinfo"()
    nqp_get_sc_object $P2497, "1307873274.8766", 0
    $P2496."set_static_lexpad_value"("GLOBALish", $P2497)
    .const 'Sub' $P2498 = "10_1307873277.81238" 
    $P2499 = $P2498."get_lexinfo"()
    $P2499."finish_static_lexpad"()
    .const 'Sub' $P2500 = "10_1307873277.81238" 
    $P2501 = $P2500."get_lexinfo"()
    nqp_get_sc_object $P2502, "1307873274.8766", 0
    $P2501."set_static_lexpad_value"("$?PACKAGE", $P2502)
    .const 'Sub' $P2503 = "10_1307873277.81238" 
    $P2504 = $P2503."get_lexinfo"()
    $P2504."finish_static_lexpad"()
    nqp_get_sc_object $P2505, "__6MODEL_CORE__", 0
    $P2506 = $P2505."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2506, cur_sc
    nqp_set_sc_object "1307873274.8766", 1, $P2506
    nqp_get_sc_object $P2507, "1307873274.8766", 1
    nqp_get_sc_object $P2508, "1307873274.8766", 0
    get_who $P2509, $P2508
    set $P2509["RoleToRoleApplier"], $P2507
    .const 'Sub' $P2510 = "10_1307873277.81238" 
    $P2511 = $P2510."get_lexinfo"()
    nqp_get_sc_object $P2512, "1307873274.8766", 1
    $P2511."set_static_lexpad_value"("RoleToRoleApplier", $P2512)
    .const 'Sub' $P2513 = "10_1307873277.81238" 
    $P2514 = $P2513."get_lexinfo"()
    $P2514."finish_static_lexpad"()
    nqp_get_sc_object $P2515, "1307873274.8766", 1
    get_how $P2516, $P2515
    nqp_get_sc_object $P2517, "1307873274.8766", 1
    .const 'Sub' $P2518 = "12_1307873277.81238" 
    $P2516."add_method"($P2517, "apply", $P2518)
    .const 'Sub' $P2519 = "11_1307873277.81238" 
    $P2520 = $P2519."get_lexinfo"()
    nqp_get_sc_object $P2521, "1307873274.8766", 1
    $P2520."set_static_lexpad_value"("$?PACKAGE", $P2521)
    .const 'Sub' $P2522 = "11_1307873277.81238" 
    $P2523 = $P2522."get_lexinfo"()
    $P2523."finish_static_lexpad"()
    .const 'Sub' $P2524 = "11_1307873277.81238" 
    $P2525 = $P2524."get_lexinfo"()
    nqp_get_sc_object $P2526, "1307873274.8766", 1
    $P2525."set_static_lexpad_value"("$?CLASS", $P2526)
    .const 'Sub' $P2527 = "11_1307873277.81238" 
    $P2528 = $P2527."get_lexinfo"()
    $P2528."finish_static_lexpad"()
    nqp_get_sc_object $P2529, "1307873274.8766", 1
    get_how $P2530, $P2529
    nqp_get_sc_object $P2531, "1307873274.8766", 1
    $P2530."compose"($P2531)
    nqp_get_sc_object $P2532, "__6MODEL_CORE__", 0
    $P2533 = $P2532."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2533, cur_sc
    nqp_set_sc_object "1307873274.8766", 3, $P2533
    nqp_get_sc_object $P2534, "1307873274.8766", 3
    nqp_get_sc_object $P2535, "1307873274.8766", 0
    get_who $P2536, $P2535
    set $P2536["NQPConcreteRoleHOW"], $P2534
    .const 'Sub' $P2537 = "10_1307873277.81238" 
    $P2538 = $P2537."get_lexinfo"()
    nqp_get_sc_object $P2539, "1307873274.8766", 3
    $P2538."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2539)
    .const 'Sub' $P2540 = "10_1307873277.81238" 
    $P2541 = $P2540."get_lexinfo"()
    $P2541."finish_static_lexpad"()
    nqp_get_sc_object $P2542, "1307873274.8766", 3
    get_how $P2543, $P2542
    nqp_get_sc_object $P2544, "1307873274.8766", 3
    nqp_get_sc_object $P2545, "__6MODEL_CORE__", 2
    $P2546 = $P2545."new"("$!name" :named("name"))
    $P2543."add_attribute"($P2544, $P2546)
    nqp_get_sc_object $P2547, "1307873274.8766", 3
    get_how $P2548, $P2547
    nqp_get_sc_object $P2549, "1307873274.8766", 3
    nqp_get_sc_object $P2550, "__6MODEL_CORE__", 2
    $P2551 = $P2550."new"("$!instance_of" :named("name"))
    $P2548."add_attribute"($P2549, $P2551)
    nqp_get_sc_object $P2552, "1307873274.8766", 3
    get_how $P2553, $P2552
    nqp_get_sc_object $P2554, "1307873274.8766", 3
    nqp_get_sc_object $P2555, "__6MODEL_CORE__", 2
    $P2556 = $P2555."new"("%!attributes" :named("name"))
    $P2553."add_attribute"($P2554, $P2556)
    nqp_get_sc_object $P2557, "1307873274.8766", 3
    get_how $P2558, $P2557
    nqp_get_sc_object $P2559, "1307873274.8766", 3
    nqp_get_sc_object $P2560, "__6MODEL_CORE__", 2
    $P2561 = $P2560."new"("%!methods" :named("name"))
    $P2558."add_attribute"($P2559, $P2561)
    nqp_get_sc_object $P2562, "1307873274.8766", 3
    get_how $P2563, $P2562
    nqp_get_sc_object $P2564, "1307873274.8766", 3
    nqp_get_sc_object $P2565, "__6MODEL_CORE__", 2
    $P2566 = $P2565."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2563."add_attribute"($P2564, $P2566)
    nqp_get_sc_object $P2567, "1307873274.8766", 3
    get_how $P2568, $P2567
    nqp_get_sc_object $P2569, "1307873274.8766", 3
    nqp_get_sc_object $P2570, "__6MODEL_CORE__", 2
    $P2571 = $P2570."new"("@!collisions" :named("name"))
    $P2568."add_attribute"($P2569, $P2571)
    nqp_get_sc_object $P2572, "1307873274.8766", 3
    get_how $P2573, $P2572
    nqp_get_sc_object $P2574, "1307873274.8766", 3
    nqp_get_sc_object $P2575, "__6MODEL_CORE__", 2
    $P2576 = $P2575."new"("@!roles" :named("name"))
    $P2573."add_attribute"($P2574, $P2576)
    nqp_get_sc_object $P2577, "1307873274.8766", 3
    get_how $P2578, $P2577
    nqp_get_sc_object $P2579, "1307873274.8766", 3
    nqp_get_sc_object $P2580, "__6MODEL_CORE__", 2
    $P2581 = $P2580."new"("@!done" :named("name"))
    $P2578."add_attribute"($P2579, $P2581)
    nqp_get_sc_object $P2582, "1307873274.8766", 3
    get_how $P2583, $P2582
    nqp_get_sc_object $P2584, "1307873274.8766", 3
    nqp_get_sc_object $P2585, "__6MODEL_CORE__", 2
    $P2586 = $P2585."new"("$!composed" :named("name"))
    $P2583."add_attribute"($P2584, $P2586)
    nqp_get_sc_object $P2587, "1307873274.8766", 3
    get_how $P2588, $P2587
    nqp_get_sc_object $P2589, "1307873274.8766", 3
    .const 'Sub' $P2590 = "22_1307873277.81238" 
    $P2588."add_method"($P2589, "new", $P2590)
    nqp_get_sc_object $P2591, "1307873274.8766", 3
    get_how $P2592, $P2591
    nqp_get_sc_object $P2593, "1307873274.8766", 3
    .const 'Sub' $P2594 = "23_1307873277.81238" 
    $P2592."add_method"($P2593, "BUILD", $P2594)
    nqp_get_sc_object $P2595, "1307873274.8766", 3
    get_how $P2596, $P2595
    nqp_get_sc_object $P2597, "1307873274.8766", 3
    .const 'Sub' $P2598 = "24_1307873277.81238" 
    $P2596."add_method"($P2597, "new_type", $P2598)
    nqp_get_sc_object $P2599, "1307873274.8766", 3
    get_how $P2600, $P2599
    nqp_get_sc_object $P2601, "1307873274.8766", 3
    .const 'Sub' $P2602 = "25_1307873277.81238" 
    $P2600."add_method"($P2601, "add_method", $P2602)
    nqp_get_sc_object $P2603, "1307873274.8766", 3
    get_how $P2604, $P2603
    nqp_get_sc_object $P2605, "1307873274.8766", 3
    .const 'Sub' $P2606 = "26_1307873277.81238" 
    $P2604."add_method"($P2605, "add_multi_method", $P2606)
    nqp_get_sc_object $P2607, "1307873274.8766", 3
    get_how $P2608, $P2607
    nqp_get_sc_object $P2609, "1307873274.8766", 3
    .const 'Sub' $P2610 = "27_1307873277.81238" 
    $P2608."add_method"($P2609, "add_attribute", $P2610)
    nqp_get_sc_object $P2611, "1307873274.8766", 3
    get_how $P2612, $P2611
    nqp_get_sc_object $P2613, "1307873274.8766", 3
    .const 'Sub' $P2614 = "28_1307873277.81238" 
    $P2612."add_method"($P2613, "add_parent", $P2614)
    nqp_get_sc_object $P2615, "1307873274.8766", 3
    get_how $P2616, $P2615
    nqp_get_sc_object $P2617, "1307873274.8766", 3
    .const 'Sub' $P2618 = "29_1307873277.81238" 
    $P2616."add_method"($P2617, "add_role", $P2618)
    nqp_get_sc_object $P2619, "1307873274.8766", 3
    get_how $P2620, $P2619
    nqp_get_sc_object $P2621, "1307873274.8766", 3
    .const 'Sub' $P2622 = "30_1307873277.81238" 
    $P2620."add_method"($P2621, "add_collision", $P2622)
    nqp_get_sc_object $P2623, "1307873274.8766", 3
    get_how $P2624, $P2623
    nqp_get_sc_object $P2625, "1307873274.8766", 3
    .const 'Sub' $P2626 = "31_1307873277.81238" 
    $P2624."add_method"($P2625, "compose", $P2626)
    nqp_get_sc_object $P2627, "1307873274.8766", 3
    get_how $P2628, $P2627
    nqp_get_sc_object $P2629, "1307873274.8766", 3
    .const 'Sub' $P2630 = "33_1307873277.81238" 
    $P2628."add_method"($P2629, "methods", $P2630)
    nqp_get_sc_object $P2631, "1307873274.8766", 3
    get_how $P2632, $P2631
    nqp_get_sc_object $P2633, "1307873274.8766", 3
    .const 'Sub' $P2634 = "35_1307873277.81238" 
    $P2632."add_method"($P2633, "method_table", $P2634)
    nqp_get_sc_object $P2635, "1307873274.8766", 3
    get_how $P2636, $P2635
    nqp_get_sc_object $P2637, "1307873274.8766", 3
    .const 'Sub' $P2638 = "36_1307873277.81238" 
    $P2636."add_method"($P2637, "collisions", $P2638)
    nqp_get_sc_object $P2639, "1307873274.8766", 3
    get_how $P2640, $P2639
    nqp_get_sc_object $P2641, "1307873274.8766", 3
    .const 'Sub' $P2642 = "37_1307873277.81238" 
    $P2640."add_method"($P2641, "name", $P2642)
    nqp_get_sc_object $P2643, "1307873274.8766", 3
    get_how $P2644, $P2643
    nqp_get_sc_object $P2645, "1307873274.8766", 3
    .const 'Sub' $P2646 = "38_1307873277.81238" 
    $P2644."add_method"($P2645, "attributes", $P2646)
    nqp_get_sc_object $P2647, "1307873274.8766", 3
    get_how $P2648, $P2647
    nqp_get_sc_object $P2649, "1307873274.8766", 3
    .const 'Sub' $P2650 = "40_1307873277.81238" 
    $P2648."add_method"($P2649, "roles", $P2650)
    nqp_get_sc_object $P2651, "1307873274.8766", 3
    get_how $P2652, $P2651
    nqp_get_sc_object $P2653, "1307873274.8766", 3
    .const 'Sub' $P2654 = "41_1307873277.81238" 
    $P2652."add_method"($P2653, "instance_of", $P2654)
    .const 'Sub' $P2655 = "21_1307873277.81238" 
    $P2656 = $P2655."get_lexinfo"()
    nqp_get_sc_object $P2657, "1307873274.8766", 3
    $P2656."set_static_lexpad_value"("$?PACKAGE", $P2657)
    .const 'Sub' $P2658 = "21_1307873277.81238" 
    $P2659 = $P2658."get_lexinfo"()
    $P2659."finish_static_lexpad"()
    .const 'Sub' $P2660 = "21_1307873277.81238" 
    $P2661 = $P2660."get_lexinfo"()
    nqp_get_sc_object $P2662, "1307873274.8766", 3
    $P2661."set_static_lexpad_value"("$?CLASS", $P2662)
    .const 'Sub' $P2663 = "21_1307873277.81238" 
    $P2664 = $P2663."get_lexinfo"()
    $P2664."finish_static_lexpad"()
    nqp_get_sc_object $P2665, "1307873274.8766", 3
    get_how $P2666, $P2665
    nqp_get_sc_object $P2667, "1307873274.8766", 3
    $P2666."compose"($P2667)
    nqp_get_sc_object $P2668, "__6MODEL_CORE__", 0
    $P2669 = $P2668."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2669, cur_sc
    nqp_set_sc_object "1307873274.8766", 21, $P2669
    nqp_get_sc_object $P2670, "1307873274.8766", 21
    nqp_get_sc_object $P2671, "1307873274.8766", 0
    get_who $P2672, $P2671
    set $P2672["RoleToClassApplier"], $P2670
    .const 'Sub' $P2673 = "10_1307873277.81238" 
    $P2674 = $P2673."get_lexinfo"()
    nqp_get_sc_object $P2675, "1307873274.8766", 21
    $P2674."set_static_lexpad_value"("RoleToClassApplier", $P2675)
    .const 'Sub' $P2676 = "10_1307873277.81238" 
    $P2677 = $P2676."get_lexinfo"()
    $P2677."finish_static_lexpad"()
    nqp_get_sc_object $P2678, "1307873274.8766", 21
    get_how $P2679, $P2678
    nqp_get_sc_object $P2680, "1307873274.8766", 21
    .const 'Sub' $P2681 = "47_1307873277.81238" 
    $P2679."add_method"($P2680, "apply", $P2681)
    .const 'Sub' $P2682 = "42_1307873277.81238" 
    $P2683 = $P2682."get_lexinfo"()
    nqp_get_sc_object $P2684, "1307873274.8766", 21
    $P2683."set_static_lexpad_value"("$?PACKAGE", $P2684)
    .const 'Sub' $P2685 = "42_1307873277.81238" 
    $P2686 = $P2685."get_lexinfo"()
    $P2686."finish_static_lexpad"()
    .const 'Sub' $P2687 = "42_1307873277.81238" 
    $P2688 = $P2687."get_lexinfo"()
    nqp_get_sc_object $P2689, "1307873274.8766", 21
    $P2688."set_static_lexpad_value"("$?CLASS", $P2689)
    .const 'Sub' $P2690 = "42_1307873277.81238" 
    $P2691 = $P2690."get_lexinfo"()
    $P2691."finish_static_lexpad"()
    nqp_get_sc_object $P2692, "1307873274.8766", 21
    get_how $P2693, $P2692
    nqp_get_sc_object $P2694, "1307873274.8766", 21
    $P2693."compose"($P2694)
    nqp_get_sc_object $P2695, "__6MODEL_CORE__", 0
    $P2696 = $P2695."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2696, cur_sc
    nqp_set_sc_object "1307873274.8766", 23, $P2696
    nqp_get_sc_object $P2697, "1307873274.8766", 23
    nqp_get_sc_object $P2698, "1307873274.8766", 0
    get_who $P2699, $P2698
    set $P2699["NQPParametricRoleHOW"], $P2697
    .const 'Sub' $P2700 = "10_1307873277.81238" 
    $P2701 = $P2700."get_lexinfo"()
    nqp_get_sc_object $P2702, "1307873274.8766", 23
    $P2701."set_static_lexpad_value"("NQPParametricRoleHOW", $P2702)
    .const 'Sub' $P2703 = "10_1307873277.81238" 
    $P2704 = $P2703."get_lexinfo"()
    $P2704."finish_static_lexpad"()
    nqp_get_sc_object $P2705, "1307873274.8766", 23
    get_how $P2706, $P2705
    nqp_get_sc_object $P2707, "1307873274.8766", 23
    nqp_get_sc_object $P2708, "__6MODEL_CORE__", 2
    $P2709 = $P2708."new"("$!name" :named("name"))
    $P2706."add_attribute"($P2707, $P2709)
    nqp_get_sc_object $P2710, "1307873274.8766", 23
    get_how $P2711, $P2710
    nqp_get_sc_object $P2712, "1307873274.8766", 23
    nqp_get_sc_object $P2713, "__6MODEL_CORE__", 2
    $P2714 = $P2713."new"("%!attributes" :named("name"))
    $P2711."add_attribute"($P2712, $P2714)
    nqp_get_sc_object $P2715, "1307873274.8766", 23
    get_how $P2716, $P2715
    nqp_get_sc_object $P2717, "1307873274.8766", 23
    nqp_get_sc_object $P2718, "__6MODEL_CORE__", 2
    $P2719 = $P2718."new"("%!methods" :named("name"))
    $P2716."add_attribute"($P2717, $P2719)
    nqp_get_sc_object $P2720, "1307873274.8766", 23
    get_how $P2721, $P2720
    nqp_get_sc_object $P2722, "1307873274.8766", 23
    nqp_get_sc_object $P2723, "__6MODEL_CORE__", 2
    $P2724 = $P2723."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2721."add_attribute"($P2722, $P2724)
    nqp_get_sc_object $P2725, "1307873274.8766", 23
    get_how $P2726, $P2725
    nqp_get_sc_object $P2727, "1307873274.8766", 23
    nqp_get_sc_object $P2728, "__6MODEL_CORE__", 2
    $P2729 = $P2728."new"("@!roles" :named("name"))
    $P2726."add_attribute"($P2727, $P2729)
    nqp_get_sc_object $P2730, "1307873274.8766", 23
    get_how $P2731, $P2730
    nqp_get_sc_object $P2732, "1307873274.8766", 23
    nqp_get_sc_object $P2733, "__6MODEL_CORE__", 2
    $P2734 = $P2733."new"("$!composed" :named("name"))
    $P2731."add_attribute"($P2732, $P2734)
    nqp_get_sc_object $P2735, "1307873274.8766", 23
    get_how $P2736, $P2735
    nqp_get_sc_object $P2737, "1307873274.8766", 23
    nqp_get_sc_object $P2738, "__6MODEL_CORE__", 2
    $P2739 = $P2738."new"("$!body_block" :named("name"))
    $P2736."add_attribute"($P2737, $P2739)
    nqp_get_sc_object $P2740, "1307873274.8766", 23
    get_how $P2741, $P2740
    nqp_get_sc_object $P2742, "1307873274.8766", 23
    .const 'Sub' $P2743 = "54_1307873277.81238" 
    $P2741."add_method"($P2742, "new", $P2743)
    nqp_get_sc_object $P2744, "1307873274.8766", 23
    get_how $P2745, $P2744
    nqp_get_sc_object $P2746, "1307873274.8766", 23
    .const 'Sub' $P2747 = "55_1307873277.81238" 
    $P2745."add_method"($P2746, "BUILD", $P2747)
    nqp_get_sc_object $P2748, "1307873274.8766", 23
    get_how $P2749, $P2748
    nqp_get_sc_object $P2750, "1307873274.8766", 23
    .const 'Sub' $P2751 = "56_1307873277.81238" 
    $P2749."add_method"($P2750, "new_type", $P2751)
    nqp_get_sc_object $P2752, "1307873274.8766", 23
    get_how $P2753, $P2752
    nqp_get_sc_object $P2754, "1307873274.8766", 23
    .const 'Sub' $P2755 = "57_1307873277.81238" 
    $P2753."add_method"($P2754, "set_body_block", $P2755)
    nqp_get_sc_object $P2756, "1307873274.8766", 23
    get_how $P2757, $P2756
    nqp_get_sc_object $P2758, "1307873274.8766", 23
    .const 'Sub' $P2759 = "58_1307873277.81238" 
    $P2757."add_method"($P2758, "add_method", $P2759)
    nqp_get_sc_object $P2760, "1307873274.8766", 23
    get_how $P2761, $P2760
    nqp_get_sc_object $P2762, "1307873274.8766", 23
    .const 'Sub' $P2763 = "59_1307873277.81238" 
    $P2761."add_method"($P2762, "add_multi_method", $P2763)
    nqp_get_sc_object $P2764, "1307873274.8766", 23
    get_how $P2765, $P2764
    nqp_get_sc_object $P2766, "1307873274.8766", 23
    .const 'Sub' $P2767 = "60_1307873277.81238" 
    $P2765."add_method"($P2766, "add_attribute", $P2767)
    nqp_get_sc_object $P2768, "1307873274.8766", 23
    get_how $P2769, $P2768
    nqp_get_sc_object $P2770, "1307873274.8766", 23
    .const 'Sub' $P2771 = "61_1307873277.81238" 
    $P2769."add_method"($P2770, "add_parent", $P2771)
    nqp_get_sc_object $P2772, "1307873274.8766", 23
    get_how $P2773, $P2772
    nqp_get_sc_object $P2774, "1307873274.8766", 23
    .const 'Sub' $P2775 = "62_1307873277.81238" 
    $P2773."add_method"($P2774, "add_role", $P2775)
    nqp_get_sc_object $P2776, "1307873274.8766", 23
    get_how $P2777, $P2776
    nqp_get_sc_object $P2778, "1307873274.8766", 23
    .const 'Sub' $P2779 = "63_1307873277.81238" 
    $P2777."add_method"($P2778, "compose", $P2779)
    nqp_get_sc_object $P2780, "1307873274.8766", 23
    get_how $P2781, $P2780
    nqp_get_sc_object $P2782, "1307873274.8766", 23
    .const 'Sub' $P2783 = "64_1307873277.81238" 
    $P2781."add_method"($P2782, "parametric", $P2783)
    nqp_get_sc_object $P2784, "1307873274.8766", 23
    get_how $P2785, $P2784
    nqp_get_sc_object $P2786, "1307873274.8766", 23
    .const 'Sub' $P2787 = "65_1307873277.81238" 
    $P2785."add_method"($P2786, "instantiate", $P2787)
    nqp_get_sc_object $P2788, "1307873274.8766", 23
    get_how $P2789, $P2788
    nqp_get_sc_object $P2790, "1307873274.8766", 23
    .const 'Sub' $P2791 = "70_1307873277.81238" 
    $P2789."add_method"($P2790, "methods", $P2791)
    nqp_get_sc_object $P2792, "1307873274.8766", 23
    get_how $P2793, $P2792
    nqp_get_sc_object $P2794, "1307873274.8766", 23
    .const 'Sub' $P2795 = "72_1307873277.81238" 
    $P2793."add_method"($P2794, "method_table", $P2795)
    nqp_get_sc_object $P2796, "1307873274.8766", 23
    get_how $P2797, $P2796
    nqp_get_sc_object $P2798, "1307873274.8766", 23
    .const 'Sub' $P2799 = "73_1307873277.81238" 
    $P2797."add_method"($P2798, "name", $P2799)
    nqp_get_sc_object $P2800, "1307873274.8766", 23
    get_how $P2801, $P2800
    nqp_get_sc_object $P2802, "1307873274.8766", 23
    .const 'Sub' $P2803 = "74_1307873277.81238" 
    $P2801."add_method"($P2802, "attributes", $P2803)
    nqp_get_sc_object $P2804, "1307873274.8766", 23
    get_how $P2805, $P2804
    nqp_get_sc_object $P2806, "1307873274.8766", 23
    .const 'Sub' $P2807 = "76_1307873277.81238" 
    $P2805."add_method"($P2806, "roles", $P2807)
    .const 'Sub' $P2808 = "52_1307873277.81238" 
    $P2809 = $P2808."get_lexinfo"()
    nqp_get_sc_object $P2810, "1307873274.8766", 23
    $P2809."set_static_lexpad_value"("$?PACKAGE", $P2810)
    .const 'Sub' $P2811 = "52_1307873277.81238" 
    $P2812 = $P2811."get_lexinfo"()
    $P2812."finish_static_lexpad"()
    .const 'Sub' $P2813 = "52_1307873277.81238" 
    $P2814 = $P2813."get_lexinfo"()
    nqp_get_sc_object $P2815, "1307873274.8766", 23
    $P2814."set_static_lexpad_value"("$?CLASS", $P2815)
    .const 'Sub' $P2816 = "52_1307873277.81238" 
    $P2817 = $P2816."get_lexinfo"()
    $P2817."finish_static_lexpad"()
    nqp_get_sc_object $P2818, "1307873274.8766", 23
    get_how $P2819, $P2818
    nqp_get_sc_object $P2820, "1307873274.8766", 23
    $P2819."compose"($P2820)
    nqp_get_sc_object $P2821, "__6MODEL_CORE__", 0
    $P2822 = $P2821."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2822, cur_sc
    nqp_set_sc_object "1307873274.8766", 41, $P2822
    nqp_get_sc_object $P2823, "1307873274.8766", 41
    nqp_get_sc_object $P2824, "1307873274.8766", 0
    get_who $P2825, $P2824
    set $P2825["NQPClassHOW"], $P2823
    .const 'Sub' $P2826 = "10_1307873277.81238" 
    $P2827 = $P2826."get_lexinfo"()
    nqp_get_sc_object $P2828, "1307873274.8766", 41
    $P2827."set_static_lexpad_value"("NQPClassHOW", $P2828)
    .const 'Sub' $P2829 = "10_1307873277.81238" 
    $P2830 = $P2829."get_lexinfo"()
    $P2830."finish_static_lexpad"()
    nqp_get_sc_object $P2831, "1307873274.8766", 41
    get_how $P2832, $P2831
    nqp_get_sc_object $P2833, "1307873274.8766", 41
    nqp_get_sc_object $P2834, "__6MODEL_CORE__", 2
    $P2835 = $P2834."new"("$!name" :named("name"))
    $P2832."add_attribute"($P2833, $P2835)
    nqp_get_sc_object $P2836, "1307873274.8766", 41
    get_how $P2837, $P2836
    nqp_get_sc_object $P2838, "1307873274.8766", 41
    nqp_get_sc_object $P2839, "__6MODEL_CORE__", 2
    $P2840 = $P2839."new"("%!attributes" :named("name"))
    $P2837."add_attribute"($P2838, $P2840)
    nqp_get_sc_object $P2841, "1307873274.8766", 41
    get_how $P2842, $P2841
    nqp_get_sc_object $P2843, "1307873274.8766", 41
    nqp_get_sc_object $P2844, "__6MODEL_CORE__", 2
    $P2845 = $P2844."new"("%!methods" :named("name"))
    $P2842."add_attribute"($P2843, $P2845)
    nqp_get_sc_object $P2846, "1307873274.8766", 41
    get_how $P2847, $P2846
    nqp_get_sc_object $P2848, "1307873274.8766", 41
    nqp_get_sc_object $P2849, "__6MODEL_CORE__", 2
    $P2850 = $P2849."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2847."add_attribute"($P2848, $P2850)
    nqp_get_sc_object $P2851, "1307873274.8766", 41
    get_how $P2852, $P2851
    nqp_get_sc_object $P2853, "1307873274.8766", 41
    nqp_get_sc_object $P2854, "__6MODEL_CORE__", 2
    $P2855 = $P2854."new"("@!parents" :named("name"))
    $P2852."add_attribute"($P2853, $P2855)
    nqp_get_sc_object $P2856, "1307873274.8766", 41
    get_how $P2857, $P2856
    nqp_get_sc_object $P2858, "1307873274.8766", 41
    nqp_get_sc_object $P2859, "__6MODEL_CORE__", 2
    $P2860 = $P2859."new"("@!roles" :named("name"))
    $P2857."add_attribute"($P2858, $P2860)
    nqp_get_sc_object $P2861, "1307873274.8766", 41
    get_how $P2862, $P2861
    nqp_get_sc_object $P2863, "1307873274.8766", 41
    nqp_get_sc_object $P2864, "__6MODEL_CORE__", 2
    $P2865 = $P2864."new"("$!default_parent" :named("name"))
    $P2862."add_attribute"($P2863, $P2865)
    nqp_get_sc_object $P2866, "1307873274.8766", 41
    get_how $P2867, $P2866
    nqp_get_sc_object $P2868, "1307873274.8766", 41
    nqp_get_sc_object $P2869, "__6MODEL_CORE__", 2
    $P2870 = $P2869."new"("@!vtable" :named("name"))
    $P2867."add_attribute"($P2868, $P2870)
    nqp_get_sc_object $P2871, "1307873274.8766", 41
    get_how $P2872, $P2871
    nqp_get_sc_object $P2873, "1307873274.8766", 41
    nqp_get_sc_object $P2874, "__6MODEL_CORE__", 2
    $P2875 = $P2874."new"("%!method-vtable-slots" :named("name"))
    $P2872."add_attribute"($P2873, $P2875)
    nqp_get_sc_object $P2876, "1307873274.8766", 41
    get_how $P2877, $P2876
    nqp_get_sc_object $P2878, "1307873274.8766", 41
    nqp_get_sc_object $P2879, "__6MODEL_CORE__", 2
    $P2880 = $P2879."new"("$!composed" :named("name"))
    $P2877."add_attribute"($P2878, $P2880)
    nqp_get_sc_object $P2881, "1307873274.8766", 41
    get_how $P2882, $P2881
    nqp_get_sc_object $P2883, "1307873274.8766", 41
    nqp_get_sc_object $P2884, "__6MODEL_CORE__", 2
    $P2885 = $P2884."new"("@!mro" :named("name"))
    $P2882."add_attribute"($P2883, $P2885)
    nqp_get_sc_object $P2886, "1307873274.8766", 41
    get_how $P2887, $P2886
    nqp_get_sc_object $P2888, "1307873274.8766", 41
    nqp_get_sc_object $P2889, "__6MODEL_CORE__", 2
    $P2890 = $P2889."new"("@!done" :named("name"))
    $P2887."add_attribute"($P2888, $P2890)
    nqp_get_sc_object $P2891, "1307873274.8766", 41
    get_how $P2892, $P2891
    nqp_get_sc_object $P2893, "1307873274.8766", 41
    nqp_get_sc_object $P2894, "__6MODEL_CORE__", 2
    $P2895 = $P2894."new"("%!parrot_vtable_mapping" :named("name"))
    $P2892."add_attribute"($P2893, $P2895)
    nqp_get_sc_object $P2896, "1307873274.8766", 41
    get_how $P2897, $P2896
    nqp_get_sc_object $P2898, "1307873274.8766", 41
    nqp_get_sc_object $P2899, "__6MODEL_CORE__", 2
    $P2900 = $P2899."new"("%!parrot_vtable_handler_mapping" :named("name"))
    $P2897."add_attribute"($P2898, $P2900)
    nqp_get_sc_object $P2901, "1307873274.8766", 41
    get_how $P2902, $P2901
    nqp_get_sc_object $P2903, "1307873274.8766", 41
    .const 'Sub' $P2904 = "88_1307873277.81238" 
    $P2902."add_method"($P2903, "new", $P2904)
    nqp_get_sc_object $P2905, "1307873274.8766", 41
    get_how $P2906, $P2905
    nqp_get_sc_object $P2907, "1307873274.8766", 41
    .const 'Sub' $P2908 = "89_1307873277.81238" 
    $P2906."add_method"($P2907, "BUILD", $P2908)
    nqp_get_sc_object $P2909, "1307873274.8766", 41
    get_how $P2910, $P2909
    nqp_get_sc_object $P2911, "1307873274.8766", 41
    .const 'Sub' $P2912 = "90_1307873277.81238" 
    $P2910."add_method"($P2911, "new_type", $P2912)
    nqp_get_sc_object $P2913, "1307873274.8766", 41
    get_how $P2914, $P2913
    nqp_get_sc_object $P2915, "1307873274.8766", 41
    .const 'Sub' $P2916 = "91_1307873277.81238" 
    $P2914."add_method"($P2915, "add_method", $P2916)
    nqp_get_sc_object $P2917, "1307873274.8766", 41
    get_how $P2918, $P2917
    nqp_get_sc_object $P2919, "1307873274.8766", 41
    .const 'Sub' $P2920 = "92_1307873277.81238" 
    $P2918."add_method"($P2919, "add_multi_method", $P2920)
    nqp_get_sc_object $P2921, "1307873274.8766", 41
    get_how $P2922, $P2921
    nqp_get_sc_object $P2923, "1307873274.8766", 41
    .const 'Sub' $P2924 = "93_1307873277.81238" 
    $P2922."add_method"($P2923, "add_attribute", $P2924)
    nqp_get_sc_object $P2925, "1307873274.8766", 41
    get_how $P2926, $P2925
    nqp_get_sc_object $P2927, "1307873274.8766", 41
    .const 'Sub' $P2928 = "94_1307873277.81238" 
    $P2926."add_method"($P2927, "add_parent", $P2928)
    nqp_get_sc_object $P2929, "1307873274.8766", 41
    get_how $P2930, $P2929
    nqp_get_sc_object $P2931, "1307873274.8766", 41
    .const 'Sub' $P2932 = "96_1307873277.81238" 
    $P2930."add_method"($P2931, "set_default_parent", $P2932)
    nqp_get_sc_object $P2933, "1307873274.8766", 41
    get_how $P2934, $P2933
    nqp_get_sc_object $P2935, "1307873274.8766", 41
    .const 'Sub' $P2936 = "97_1307873277.81238" 
    $P2934."add_method"($P2935, "add_role", $P2936)
    nqp_get_sc_object $P2937, "1307873274.8766", 41
    get_how $P2938, $P2937
    nqp_get_sc_object $P2939, "1307873274.8766", 41
    .const 'Sub' $P2940 = "99_1307873277.81238" 
    $P2938."add_method"($P2939, "add_parrot_vtable_mapping", $P2940)
    nqp_get_sc_object $P2941, "1307873274.8766", 41
    get_how $P2942, $P2941
    nqp_get_sc_object $P2943, "1307873274.8766", 41
    .const 'Sub' $P2944 = "100_1307873277.81238" 
    $P2942."add_method"($P2943, "add_parrot_vtable_handler_mapping", $P2944)
    nqp_get_sc_object $P2945, "1307873274.8766", 41
    get_how $P2946, $P2945
    nqp_get_sc_object $P2947, "1307873274.8766", 41
    .const 'Sub' $P2948 = "101_1307873277.81238" 
    $P2946."add_method"($P2947, "compose", $P2948)
    nqp_get_sc_object $P2949, "1307873274.8766", 41
    get_how $P2950, $P2949
    nqp_get_sc_object $P2951, "1307873274.8766", 41
    .const 'Sub' $P2952 = "105_1307873277.81238" 
    $P2950."add_method"($P2951, "incorporate_multi_candidates", $P2952)
    nqp_get_sc_object $P2953, "1307873274.8766", 41
    get_how $P2954, $P2953
    nqp_get_sc_object $P2955, "1307873274.8766", 41
    .const 'Sub' $P2956 = "110_1307873277.81238" 
    $P2954."add_method"($P2955, "publish_type_cache", $P2956)
    nqp_get_sc_object $P2957, "1307873274.8766", 41
    get_how $P2958, $P2957
    nqp_get_sc_object $P2959, "1307873274.8766", 41
    .const 'Sub' $P2960 = "113_1307873277.81238" 
    $P2958."add_method"($P2959, "publish_method_cache", $P2960)
    nqp_get_sc_object $P2961, "1307873274.8766", 41
    get_how $P2962, $P2961
    nqp_get_sc_object $P2963, "1307873274.8766", 41
    .const 'Sub' $P2964 = "116_1307873277.81238" 
    $P2962."add_method"($P2963, "publish_parrot_vtable_mapping", $P2964)
    nqp_get_sc_object $P2965, "1307873274.8766", 41
    get_how $P2966, $P2965
    nqp_get_sc_object $P2967, "1307873274.8766", 41
    .const 'Sub' $P2968 = "119_1307873277.81238" 
    $P2966."add_method"($P2967, "publish_parrot_vtablee_handler_mapping", $P2968)
    nqp_get_sc_object $P2969, "1307873274.8766", 41
    get_how $P2970, $P2969
    nqp_get_sc_object $P2971, "1307873274.8766", 41
    .const 'Sub' $P2972 = "122_1307873277.81238" 
    $P2970."add_method"($P2971, "parents", $P2972)
    nqp_get_sc_object $P2973, "1307873274.8766", 41
    get_how $P2974, $P2973
    nqp_get_sc_object $P2975, "1307873274.8766", 41
    .const 'Sub' $P2976 = "123_1307873277.81238" 
    $P2974."add_method"($P2975, "roles", $P2976)
    nqp_get_sc_object $P2977, "1307873274.8766", 41
    get_how $P2978, $P2977
    nqp_get_sc_object $P2979, "1307873274.8766", 41
    .const 'Sub' $P2980 = "124_1307873277.81238" 
    $P2978."add_method"($P2979, "methods", $P2980)
    nqp_get_sc_object $P2981, "1307873274.8766", 41
    get_how $P2982, $P2981
    nqp_get_sc_object $P2983, "1307873274.8766", 41
    .const 'Sub' $P2984 = "126_1307873277.81238" 
    $P2982."add_method"($P2983, "method_table", $P2984)
    nqp_get_sc_object $P2985, "1307873274.8766", 41
    get_how $P2986, $P2985
    nqp_get_sc_object $P2987, "1307873274.8766", 41
    .const 'Sub' $P2988 = "127_1307873277.81238" 
    $P2986."add_method"($P2987, "name", $P2988)
    nqp_get_sc_object $P2989, "1307873274.8766", 41
    get_how $P2990, $P2989
    nqp_get_sc_object $P2991, "1307873274.8766", 41
    .const 'Sub' $P2992 = "128_1307873277.81238" 
    $P2990."add_method"($P2991, "attributes", $P2992)
    nqp_get_sc_object $P2993, "1307873274.8766", 41
    get_how $P2994, $P2993
    nqp_get_sc_object $P2995, "1307873274.8766", 41
    .const 'Sub' $P2996 = "130_1307873277.81238" 
    $P2994."add_method"($P2995, "parrot_vtable_mappings", $P2996)
    nqp_get_sc_object $P2997, "1307873274.8766", 41
    get_how $P2998, $P2997
    nqp_get_sc_object $P2999, "1307873274.8766", 41
    .const 'Sub' $P3000 = "131_1307873277.81238" 
    $P2998."add_method"($P2999, "parrot_vtable_handler_mappings", $P3000)
    nqp_get_sc_object $P3001, "1307873274.8766", 41
    get_how $P3002, $P3001
    nqp_get_sc_object $P3003, "1307873274.8766", 41
    .const 'Sub' $P3004 = "132_1307873277.81238" 
    $P3002."add_method"($P3003, "isa", $P3004)
    nqp_get_sc_object $P3005, "1307873274.8766", 41
    get_how $P3006, $P3005
    nqp_get_sc_object $P3007, "1307873274.8766", 41
    .const 'Sub' $P3008 = "133_1307873277.81238" 
    $P3006."add_method"($P3007, "does", $P3008)
    nqp_get_sc_object $P3009, "1307873274.8766", 41
    get_how $P3010, $P3009
    nqp_get_sc_object $P3011, "1307873274.8766", 41
    .const 'Sub' $P3012 = "134_1307873277.81238" 
    $P3010."add_method"($P3011, "can", $P3012)
    nqp_get_sc_object $P3013, "1307873274.8766", 41
    get_how $P3014, $P3013
    nqp_get_sc_object $P3015, "1307873274.8766", 41
    .const 'Sub' $P3016 = "136_1307873277.81238" 
    $P3014."add_method"($P3015, "find_method", $P3016)
    .const 'Sub' $P3017 = "77_1307873277.81238" 
    $P3018 = $P3017."get_lexinfo"()
    nqp_get_sc_object $P3019, "1307873274.8766", 41
    $P3018."set_static_lexpad_value"("$?PACKAGE", $P3019)
    .const 'Sub' $P3020 = "77_1307873277.81238" 
    $P3021 = $P3020."get_lexinfo"()
    $P3021."finish_static_lexpad"()
    .const 'Sub' $P3022 = "77_1307873277.81238" 
    $P3023 = $P3022."get_lexinfo"()
    nqp_get_sc_object $P3024, "1307873274.8766", 41
    $P3023."set_static_lexpad_value"("$?CLASS", $P3024)
    .const 'Sub' $P3025 = "77_1307873277.81238" 
    $P3026 = $P3025."get_lexinfo"()
    $P3026."finish_static_lexpad"()
    nqp_get_sc_object $P3027, "1307873274.8766", 41
    get_how $P3028, $P3027
    nqp_get_sc_object $P3029, "1307873274.8766", 41
    $P3028."compose"($P3029)
    nqp_get_sc_object $P3030, "__6MODEL_CORE__", 0
    $P3031 = $P3030."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P3031, cur_sc
    nqp_set_sc_object "1307873274.8766", 71, $P3031
    nqp_get_sc_object $P3032, "1307873274.8766", 71
    nqp_get_sc_object $P3033, "1307873274.8766", 0
    get_who $P3034, $P3033
    set $P3034["NQPNativeHOW"], $P3032
    .const 'Sub' $P3035 = "10_1307873277.81238" 
    $P3036 = $P3035."get_lexinfo"()
    nqp_get_sc_object $P3037, "1307873274.8766", 71
    $P3036."set_static_lexpad_value"("NQPNativeHOW", $P3037)
    .const 'Sub' $P3038 = "10_1307873277.81238" 
    $P3039 = $P3038."get_lexinfo"()
    $P3039."finish_static_lexpad"()
    nqp_get_sc_object $P3040, "1307873274.8766", 71
    get_how $P3041, $P3040
    nqp_get_sc_object $P3042, "1307873274.8766", 71
    nqp_get_sc_object $P3043, "__6MODEL_CORE__", 2
    $P3044 = $P3043."new"("$!name" :named("name"))
    $P3041."add_attribute"($P3042, $P3044)
    nqp_get_sc_object $P3045, "1307873274.8766", 71
    get_how $P3046, $P3045
    nqp_get_sc_object $P3047, "1307873274.8766", 71
    nqp_get_sc_object $P3048, "__6MODEL_CORE__", 2
    $P3049 = $P3048."new"("$!composed" :named("name"))
    $P3046."add_attribute"($P3047, $P3049)
    nqp_get_sc_object $P3050, "1307873274.8766", 71
    get_how $P3051, $P3050
    nqp_get_sc_object $P3052, "1307873274.8766", 71
    .const 'Sub' $P3053 = "139_1307873277.81238" 
    $P3051."add_method"($P3052, "new", $P3053)
    nqp_get_sc_object $P3054, "1307873274.8766", 71
    get_how $P3055, $P3054
    nqp_get_sc_object $P3056, "1307873274.8766", 71
    .const 'Sub' $P3057 = "140_1307873277.81238" 
    $P3055."add_method"($P3056, "BUILD", $P3057)
    nqp_get_sc_object $P3058, "1307873274.8766", 71
    get_how $P3059, $P3058
    nqp_get_sc_object $P3060, "1307873274.8766", 71
    .const 'Sub' $P3061 = "141_1307873277.81238" 
    $P3059."add_method"($P3060, "new_type", $P3061)
    nqp_get_sc_object $P3062, "1307873274.8766", 71
    get_how $P3063, $P3062
    nqp_get_sc_object $P3064, "1307873274.8766", 71
    .const 'Sub' $P3065 = "142_1307873277.81238" 
    $P3063."add_method"($P3064, "add_method", $P3065)
    nqp_get_sc_object $P3066, "1307873274.8766", 71
    get_how $P3067, $P3066
    nqp_get_sc_object $P3068, "1307873274.8766", 71
    .const 'Sub' $P3069 = "143_1307873277.81238" 
    $P3067."add_method"($P3068, "add_multi_method", $P3069)
    nqp_get_sc_object $P3070, "1307873274.8766", 71
    get_how $P3071, $P3070
    nqp_get_sc_object $P3072, "1307873274.8766", 71
    .const 'Sub' $P3073 = "144_1307873277.81238" 
    $P3071."add_method"($P3072, "add_attribute", $P3073)
    nqp_get_sc_object $P3074, "1307873274.8766", 71
    get_how $P3075, $P3074
    nqp_get_sc_object $P3076, "1307873274.8766", 71
    .const 'Sub' $P3077 = "145_1307873277.81238" 
    $P3075."add_method"($P3076, "compose", $P3077)
    nqp_get_sc_object $P3078, "1307873274.8766", 71
    get_how $P3079, $P3078
    nqp_get_sc_object $P3080, "1307873274.8766", 71
    .const 'Sub' $P3081 = "146_1307873277.81238" 
    $P3079."add_method"($P3080, "name", $P3081)
    .const 'Sub' $P3082 = "138_1307873277.81238" 
    $P3083 = $P3082."get_lexinfo"()
    nqp_get_sc_object $P3084, "1307873274.8766", 71
    $P3083."set_static_lexpad_value"("$?PACKAGE", $P3084)
    .const 'Sub' $P3085 = "138_1307873277.81238" 
    $P3086 = $P3085."get_lexinfo"()
    $P3086."finish_static_lexpad"()
    .const 'Sub' $P3087 = "138_1307873277.81238" 
    $P3088 = $P3087."get_lexinfo"()
    nqp_get_sc_object $P3089, "1307873274.8766", 71
    $P3088."set_static_lexpad_value"("$?CLASS", $P3089)
    .const 'Sub' $P3090 = "138_1307873277.81238" 
    $P3091 = $P3090."get_lexinfo"()
    $P3091."finish_static_lexpad"()
    nqp_get_sc_object $P3092, "1307873274.8766", 71
    get_how $P3093, $P3092
    nqp_get_sc_object $P3094, "1307873274.8766", 71
    $P3093."compose"($P3094)
    nqp_get_sc_object $P3095, "__6MODEL_CORE__", 0
    $P3096 = $P3095."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P3096, cur_sc
    nqp_set_sc_object "1307873274.8766", 80, $P3096
    nqp_get_sc_object $P3097, "1307873274.8766", 80
    nqp_get_sc_object $P3098, "1307873274.8766", 0
    get_who $P3099, $P3098
    set $P3099["NQPAttribute"], $P3097
    .const 'Sub' $P3100 = "10_1307873277.81238" 
    $P3101 = $P3100."get_lexinfo"()
    nqp_get_sc_object $P3102, "1307873274.8766", 80
    $P3101."set_static_lexpad_value"("NQPAttribute", $P3102)
    .const 'Sub' $P3103 = "10_1307873277.81238" 
    $P3104 = $P3103."get_lexinfo"()
    $P3104."finish_static_lexpad"()
    nqp_get_sc_object $P3105, "1307873274.8766", 80
    get_how $P3106, $P3105
    nqp_get_sc_object $P3107, "1307873274.8766", 80
    nqp_get_sc_object $P3108, "__6MODEL_CORE__", 2
    $P3109 = $P3108."new"("$!name" :named("name"))
    $P3106."add_attribute"($P3107, $P3109)
    nqp_get_sc_object $P3110, "1307873274.8766", 80
    get_how $P3111, $P3110
    nqp_get_sc_object $P3112, "1307873274.8766", 80
    nqp_get_sc_object $P3113, "__6MODEL_CORE__", 2
    $P3114 = $P3113."new"("$!type" :named("name"))
    $P3111."add_attribute"($P3112, $P3114)
    nqp_get_sc_object $P3115, "1307873274.8766", 80
    get_how $P3116, $P3115
    nqp_get_sc_object $P3117, "1307873274.8766", 80
    nqp_get_sc_object $P3118, "__6MODEL_CORE__", 2
    $P3119 = $P3118."new"("$!box_target" :named("name"))
    $P3116."add_attribute"($P3117, $P3119)
    nqp_get_sc_object $P3120, "1307873274.8766", 80
    get_how $P3121, $P3120
    nqp_get_sc_object $P3122, "1307873274.8766", 80
    .const 'Sub' $P3123 = "150_1307873277.81238" 
    $P3121."add_method"($P3122, "new", $P3123)
    nqp_get_sc_object $P3124, "1307873274.8766", 80
    get_how $P3125, $P3124
    nqp_get_sc_object $P3126, "1307873274.8766", 80
    .const 'Sub' $P3127 = "151_1307873277.81238" 
    $P3125."add_method"($P3126, "BUILD", $P3127)
    nqp_get_sc_object $P3128, "1307873274.8766", 80
    get_how $P3129, $P3128
    nqp_get_sc_object $P3130, "1307873274.8766", 80
    .const 'Sub' $P3131 = "152_1307873277.81238" 
    $P3129."add_method"($P3130, "name", $P3131)
    nqp_get_sc_object $P3132, "1307873274.8766", 80
    get_how $P3133, $P3132
    nqp_get_sc_object $P3134, "1307873274.8766", 80
    .const 'Sub' $P3135 = "153_1307873277.81238" 
    $P3133."add_method"($P3134, "type", $P3135)
    nqp_get_sc_object $P3136, "1307873274.8766", 80
    get_how $P3137, $P3136
    nqp_get_sc_object $P3138, "1307873274.8766", 80
    .const 'Sub' $P3139 = "154_1307873277.81238" 
    $P3137."add_method"($P3138, "box_target", $P3139)
    nqp_get_sc_object $P3140, "1307873274.8766", 80
    get_how $P3141, $P3140
    nqp_get_sc_object $P3142, "1307873274.8766", 80
    .const 'Sub' $P3143 = "155_1307873277.81238" 
    $P3141."add_method"($P3142, "compose", $P3143)
    nqp_get_sc_object $P3144, "1307873274.8766", 80
    get_how $P3145, $P3144
    nqp_get_sc_object $P3146, "1307873274.8766", 80
    .const 'Sub' $P3147 = "160_1307873277.81238" 
    $P3145."add_method"($P3146, "has_mutator", $P3147)
    .const 'Sub' $P3148 = "147_1307873277.81238" 
    $P3149 = $P3148."get_lexinfo"()
    nqp_get_sc_object $P3150, "1307873274.8766", 80
    $P3149."set_static_lexpad_value"("$?PACKAGE", $P3150)
    .const 'Sub' $P3151 = "147_1307873277.81238" 
    $P3152 = $P3151."get_lexinfo"()
    $P3152."finish_static_lexpad"()
    .const 'Sub' $P3153 = "147_1307873277.81238" 
    $P3154 = $P3153."get_lexinfo"()
    nqp_get_sc_object $P3155, "1307873274.8766", 80
    $P3154."set_static_lexpad_value"("$?CLASS", $P3155)
    .const 'Sub' $P3156 = "147_1307873277.81238" 
    $P3157 = $P3156."get_lexinfo"()
    $P3157."finish_static_lexpad"()
    nqp_get_sc_object $P3158, "1307873274.8766", 80
    get_how $P3159, $P3158
    nqp_get_sc_object $P3160, "1307873274.8766", 80
    $P3159."compose"($P3160)
    nqp_get_sc_object $P3161, "__6MODEL_CORE__", 0
    $P3162 = $P3161."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3162, cur_sc
    nqp_set_sc_object "1307873274.8766", 88, $P3162
    nqp_get_sc_object $P3163, "1307873274.8766", 88
    nqp_get_sc_object $P3164, "1307873274.8766", 0
    get_who $P3165, $P3164
    set $P3165["NQPModuleHOW"], $P3163
    .const 'Sub' $P3166 = "10_1307873277.81238" 
    $P3167 = $P3166."get_lexinfo"()
    nqp_get_sc_object $P3168, "1307873274.8766", 88
    $P3167."set_static_lexpad_value"("NQPModuleHOW", $P3168)
    .const 'Sub' $P3169 = "10_1307873277.81238" 
    $P3170 = $P3169."get_lexinfo"()
    $P3170."finish_static_lexpad"()
    nqp_get_sc_object $P3171, "1307873274.8766", 88
    get_how $P3172, $P3171
    nqp_get_sc_object $P3173, "1307873274.8766", 88
    nqp_get_sc_object $P3174, "__6MODEL_CORE__", 2
    $P3175 = $P3174."new"("$!name" :named("name"))
    $P3172."add_attribute"($P3173, $P3175)
    nqp_get_sc_object $P3176, "1307873274.8766", 88
    get_how $P3177, $P3176
    nqp_get_sc_object $P3178, "1307873274.8766", 88
    nqp_get_sc_object $P3179, "__6MODEL_CORE__", 2
    $P3180 = $P3179."new"("$!composed" :named("name"))
    $P3177."add_attribute"($P3178, $P3180)
    nqp_get_sc_object $P3181, "1307873274.8766", 88
    get_how $P3182, $P3181
    nqp_get_sc_object $P3183, "1307873274.8766", 88
    .const 'Sub' $P3184 = "162_1307873277.81238" 
    $P3182."add_method"($P3183, "new", $P3184)
    nqp_get_sc_object $P3185, "1307873274.8766", 88
    get_how $P3186, $P3185
    nqp_get_sc_object $P3187, "1307873274.8766", 88
    .const 'Sub' $P3188 = "163_1307873277.81238" 
    $P3186."add_method"($P3187, "BUILD", $P3188)
    nqp_get_sc_object $P3189, "1307873274.8766", 88
    get_how $P3190, $P3189
    nqp_get_sc_object $P3191, "1307873274.8766", 88
    .const 'Sub' $P3192 = "164_1307873277.81238" 
    $P3190."add_method"($P3191, "new_type", $P3192)
    nqp_get_sc_object $P3193, "1307873274.8766", 88
    get_how $P3194, $P3193
    nqp_get_sc_object $P3195, "1307873274.8766", 88
    .const 'Sub' $P3196 = "165_1307873277.81238" 
    $P3194."add_method"($P3195, "add_method", $P3196)
    nqp_get_sc_object $P3197, "1307873274.8766", 88
    get_how $P3198, $P3197
    nqp_get_sc_object $P3199, "1307873274.8766", 88
    .const 'Sub' $P3200 = "166_1307873277.81238" 
    $P3198."add_method"($P3199, "add_multi_method", $P3200)
    nqp_get_sc_object $P3201, "1307873274.8766", 88
    get_how $P3202, $P3201
    nqp_get_sc_object $P3203, "1307873274.8766", 88
    .const 'Sub' $P3204 = "167_1307873277.81238" 
    $P3202."add_method"($P3203, "add_attribute", $P3204)
    nqp_get_sc_object $P3205, "1307873274.8766", 88
    get_how $P3206, $P3205
    nqp_get_sc_object $P3207, "1307873274.8766", 88
    .const 'Sub' $P3208 = "168_1307873277.81238" 
    $P3206."add_method"($P3207, "compose", $P3208)
    nqp_get_sc_object $P3209, "1307873274.8766", 88
    get_how $P3210, $P3209
    nqp_get_sc_object $P3211, "1307873274.8766", 88
    .const 'Sub' $P3212 = "169_1307873277.81238" 
    $P3210."add_method"($P3211, "name", $P3212)
    .const 'Sub' $P3213 = "161_1307873277.81238" 
    $P3214 = $P3213."get_lexinfo"()
    nqp_get_sc_object $P3215, "1307873274.8766", 88
    $P3214."set_static_lexpad_value"("$?PACKAGE", $P3215)
    .const 'Sub' $P3216 = "161_1307873277.81238" 
    $P3217 = $P3216."get_lexinfo"()
    $P3217."finish_static_lexpad"()
    .const 'Sub' $P3218 = "161_1307873277.81238" 
    $P3219 = $P3218."get_lexinfo"()
    nqp_get_sc_object $P3220, "1307873274.8766", 88
    $P3219."set_static_lexpad_value"("$?CLASS", $P3220)
    .const 'Sub' $P3221 = "161_1307873277.81238" 
    $P3222 = $P3221."get_lexinfo"()
    $P3222."finish_static_lexpad"()
    nqp_get_sc_object $P3223, "1307873274.8766", 88
    get_how $P3224, $P3223
    nqp_get_sc_object $P3225, "1307873274.8766", 88
    $P3224."compose"($P3225)
    nqp_get_sc_object $P3226, "__6MODEL_CORE__", 0
    $P3227 = $P3226."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3227, cur_sc
    nqp_set_sc_object "1307873274.8766", 97, $P3227
    .const 'Sub' $P3228 = "10_1307873277.81238" 
    $P3229 = $P3228."get_lexinfo"()
    nqp_get_sc_object $P3230, "1307873274.8766", 97
    $P3229."set_static_lexpad_value"("EXPORTHOW", $P3230)
    .const 'Sub' $P3231 = "10_1307873277.81238" 
    $P3232 = $P3231."get_lexinfo"()
    $P3232."finish_static_lexpad"()
    .const 'Sub' $P3233 = "170_1307873277.81238" 
    $P3234 = $P3233."get_lexinfo"()
    nqp_get_sc_object $P3235, "1307873274.8766", 97
    $P3234."set_static_lexpad_value"("$?PACKAGE", $P3235)
    .const 'Sub' $P3236 = "170_1307873277.81238" 
    $P3237 = $P3236."get_lexinfo"()
    $P3237."finish_static_lexpad"()
    .const 'Sub' $P3238 = "170_1307873277.81238" 
    $P3239 = $P3238."get_lexinfo"()
    nqp_get_sc_object $P3240, "1307873274.8766", 97
    $P3239."set_static_lexpad_value"("$?CLASS", $P3240)
    .const 'Sub' $P3241 = "170_1307873277.81238" 
    $P3242 = $P3241."get_lexinfo"()
    $P3242."finish_static_lexpad"()
    nqp_get_sc_object $P3243, "1307873274.8766", 97
    get_how $P3244, $P3243
    nqp_get_sc_object $P3245, "1307873274.8766", 97
    $P3244."compose"($P3245)
  if_2486_end:
    nqp_get_sc_object $P3567, "1307873274.8766", 0
    set_hll_global "GLOBAL", $P3567
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block25"  :subid("11_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 5
    .const 'Sub' $P29 = "12_1307873277.81238" 
    capture_lex $P29
    .lex "$?PACKAGE", $P27
    .lex "$?CLASS", $P28
.annotate 'line', 6
    .const 'Sub' $P29 = "12_1307873277.81238" 
    newclosure $P247, $P29
.annotate 'line', 5
    .return ($P247)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("12_1307873277.81238") :outer("11_1307873277.81238")
    .param pmc param_32
    .param pmc param_33
    .param pmc param_34
.annotate 'line', 6
    .const 'Sub' $P174 = "18_1307873277.81238" 
    capture_lex $P174
    .const 'Sub' $P132 = "17_1307873277.81238" 
    capture_lex $P132
    .const 'Sub' $P118 = "16_1307873277.81238" 
    capture_lex $P118
    .const 'Sub' $P45 = "13_1307873277.81238" 
    capture_lex $P45
    new $P31, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P31, control_30
    push_eh $P31
    .lex "self", param_32
    .lex "$target", param_33
    .lex "@roles", param_34
.annotate 'line', 8
    $P35 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P35
.annotate 'line', 34
    $P36 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P36
.annotate 'line', 35
    $P37 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P37
.annotate 'line', 60
    $P38 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P38
.annotate 'line', 6
    find_lex $P39, "%meth_info"
    unless_null $P39, vivify_173
    $P39 = root_new ['parrot';'Hash']
  vivify_173:
.annotate 'line', 9
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
    .const 'Sub' $P45 = "13_1307873277.81238" 
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
.annotate 'line', 35
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
.annotate 'line', 36
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
    .const 'Sub' $P118 = "16_1307873277.81238" 
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
.annotate 'line', 41
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
    .const 'Sub' $P132 = "17_1307873277.81238" 
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
.annotate 'line', 61
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
    .const 'Sub' $P174 = "18_1307873277.81238" 
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
.annotate 'line', 90
    new $P244, "Exception"
    set $P244['type'], .CONTROL_RETURN
    find_lex $P245, "@all_roles"
    unless_null $P245, vivify_249
    $P245 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    setattribute $P244, 'payload', $P245
    throw $P244
.annotate 'line', 6
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
.sub "_block44"  :anon :subid("13_1307873277.81238") :outer("12_1307873277.81238")
    .param pmc param_47
.annotate 'line', 9
    .const 'Sub' $P57 = "14_1307873277.81238" 
    capture_lex $P57
.annotate 'line', 10
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
.annotate 'line', 11
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
    .const 'Sub' $P57 = "14_1307873277.81238" 
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
.annotate 'line', 9
    .return ($P52)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block56"  :anon :subid("14_1307873277.81238") :outer("13_1307873277.81238")
    .param pmc param_62
.annotate 'line', 11
    .const 'Sub' $P85 = "15_1307873277.81238" 
    capture_lex $P85
.annotate 'line', 12
    new $P58, "Undef"
    .lex "$name", $P58
.annotate 'line', 13
    new $P59, "Undef"
    .lex "$meth", $P59
.annotate 'line', 14
    $P60 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P60
.annotate 'line', 21
    new $P61, "Undef"
    .lex "$found", $P61
    .lex "$_", param_62
.annotate 'line', 12
    find_lex $P63, "$_"
    unless_null $P63, vivify_180
    new $P63, "Undef"
  vivify_180:
    set $S64, $P63
    new $P65, 'String'
    set $P65, $S64
    store_lex "$name", $P65
.annotate 'line', 13
    find_lex $P66, "$_"
    unless_null $P66, vivify_181
    new $P66, "Undef"
  vivify_181:
    store_lex "$meth", $P66
    find_lex $P67, "@meth_list"
    unless_null $P67, vivify_182
    $P67 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
.annotate 'line', 15
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
.annotate 'line', 19
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
.annotate 'line', 18
    goto if_68_end
  if_68:
.annotate 'line', 16
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
.annotate 'line', 21
    new $P79, "Integer"
    assign $P79, 0
    store_lex "$found", $P79
.annotate 'line', 22
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
    .const 'Sub' $P85 = "15_1307873277.81238" 
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
.annotate 'line', 27
    find_lex $P98, "$found"
    unless_null $P98, vivify_196
    new $P98, "Undef"
  vivify_196:
    unless $P98, unless_97
    set $P96, $P98
    goto unless_97_end
  unless_97:
.annotate 'line', 28
    find_lex $P99, "@meth_list"
    unless_null $P99, vivify_197
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    find_lex $P100, "$meth"
    unless_null $P100, vivify_198
    new $P100, "Undef"
  vivify_198:
    $P101 = $P99."push"($P100)
.annotate 'line', 27
    set $P96, $P101
  unless_97_end:
.annotate 'line', 11
    .return ($P96)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block84"  :anon :subid("15_1307873277.81238") :outer("14_1307873277.81238")
    .param pmc param_86
.annotate 'line', 22
    .lex "$_", param_86
.annotate 'line', 23
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
.annotate 'line', 24
    new $P92, "Integer"
    assign $P92, 1
    store_lex "$found", $P92
.annotate 'line', 23
    set $P87, $P92
  if_88_end:
.annotate 'line', 22
    .return ($P87)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block117"  :anon :subid("16_1307873277.81238") :outer("12_1307873277.81238")
    .param pmc param_119
.annotate 'line', 36
    .lex "$_", param_119
.annotate 'line', 37
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
.annotate 'line', 36
    .return ($P120)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block131"  :anon :subid("17_1307873277.81238") :outer("12_1307873277.81238")
    .param pmc param_135
.annotate 'line', 42
    new $P133, "Undef"
    .lex "$name", $P133
.annotate 'line', 43
    $P134 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P134
    .lex "$_", param_135
.annotate 'line', 42
    find_lex $P136, "$_"
    unless_null $P136, vivify_209
    new $P136, "Undef"
  vivify_209:
    set $S137, $P136
    new $P138, 'String'
    set $P138, $S137
    store_lex "$name", $P138
.annotate 'line', 43
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
.annotate 'line', 47
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
.annotate 'line', 49
    find_lex $P150, "@add_meths"
    unless_null $P150, vivify_216
    $P150 = root_new ['parrot';'ResizablePMCArray']
  vivify_216:
    set $N151, $P150
    iseq $I152, $N151, 1.0
    if $I152, if_149
.annotate 'line', 54
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
.annotate 'line', 52
    set $P148, $P164
.annotate 'line', 49
    goto if_149_end
  if_149:
.annotate 'line', 50
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
.annotate 'line', 49
    set $P148, $P159
  if_149_end:
.annotate 'line', 47
    set $P142, $P148
  unless_143_end:
.annotate 'line', 41
    .return ($P142)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block173"  :anon :subid("18_1307873277.81238") :outer("12_1307873277.81238")
    .param pmc param_177
.annotate 'line', 61
    .const 'Sub' $P188 = "19_1307873277.81238" 
    capture_lex $P188
.annotate 'line', 62
    new $P175, "Undef"
    .lex "$how", $P175
.annotate 'line', 65
    $P176 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P176
    .lex "$_", param_177
.annotate 'line', 62
    find_lex $P178, "$_"
    unless_null $P178, vivify_228
    new $P178, "Undef"
  vivify_228:
    get_how $P179, $P178
    store_lex "$how", $P179
.annotate 'line', 65
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
.annotate 'line', 66
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
    .const 'Sub' $P188 = "19_1307873277.81238" 
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
.annotate 'line', 87
    find_lex $P238, "@all_roles"
    unless_null $P238, vivify_247
    $P238 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    find_lex $P239, "$_"
    unless_null $P239, vivify_248
    new $P239, "Undef"
  vivify_248:
    $P240 = $P238."push"($P239)
.annotate 'line', 61
    .return ($P240)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block187"  :anon :subid("19_1307873277.81238") :outer("18_1307873277.81238")
    .param pmc param_192
.annotate 'line', 66
    .const 'Sub' $P204 = "20_1307873277.81238" 
    capture_lex $P204
.annotate 'line', 67
    new $P189, "Undef"
    .lex "$add_attr", $P189
.annotate 'line', 68
    new $P190, "Undef"
    .lex "$skip", $P190
.annotate 'line', 69
    $P191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P191
    .lex "$_", param_192
.annotate 'line', 67
    find_lex $P193, "$_"
    unless_null $P193, vivify_233
    new $P193, "Undef"
  vivify_233:
    store_lex "$add_attr", $P193
.annotate 'line', 68
    new $P194, "Integer"
    assign $P194, 0
    store_lex "$skip", $P194
.annotate 'line', 69
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
.annotate 'line', 70
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
    .const 'Sub' $P204 = "20_1307873277.81238" 
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
.annotate 'line', 80
    find_lex $P229, "$skip"
    unless_null $P229, vivify_243
    new $P229, "Undef"
  vivify_243:
    unless $P229, unless_228
    set $P227, $P229
    goto unless_228_end
  unless_228:
.annotate 'line', 81
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
.annotate 'line', 80
    set $P227, $P234
  unless_228_end:
.annotate 'line', 66
    .return ($P227)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block203"  :anon :subid("20_1307873277.81238") :outer("19_1307873277.81238")
    .param pmc param_205
.annotate 'line', 70
    .lex "$_", param_205
.annotate 'line', 71
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
.annotate 'line', 75
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
.annotate 'line', 76
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
.annotate 'line', 74
    set $P206, $P212
.annotate 'line', 71
    goto if_207_end
  if_207:
.annotate 'line', 72
    new $P211, "Integer"
    assign $P211, 1
    store_lex "$skip", $P211
.annotate 'line', 71
    set $P206, $P211
  if_207_end:
.annotate 'line', 70
    .return ($P206)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block248"  :subid("21_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 97
    .const 'Sub' $P501 = "41_1307873277.81238" 
    capture_lex $P501
    .const 'Sub' $P495 = "40_1307873277.81238" 
    capture_lex $P495
    .const 'Sub' $P471 = "38_1307873277.81238" 
    capture_lex $P471
    .const 'Sub' $P465 = "37_1307873277.81238" 
    capture_lex $P465
    .const 'Sub' $P459 = "36_1307873277.81238" 
    capture_lex $P459
    .const 'Sub' $P453 = "35_1307873277.81238" 
    capture_lex $P453
    .const 'Sub' $P429 = "33_1307873277.81238" 
    capture_lex $P429
    .const 'Sub' $P380 = "31_1307873277.81238" 
    capture_lex $P380
    .const 'Sub' $P367 = "30_1307873277.81238" 
    capture_lex $P367
    .const 'Sub' $P354 = "29_1307873277.81238" 
    capture_lex $P354
    .const 'Sub' $P350 = "28_1307873277.81238" 
    capture_lex $P350
    .const 'Sub' $P329 = "27_1307873277.81238" 
    capture_lex $P329
    .const 'Sub' $P308 = "26_1307873277.81238" 
    capture_lex $P308
    .const 'Sub' $P289 = "25_1307873277.81238" 
    capture_lex $P289
    .const 'Sub' $P273 = "24_1307873277.81238" 
    capture_lex $P273
    .const 'Sub' $P263 = "23_1307873277.81238" 
    capture_lex $P263
    .const 'Sub' $P252 = "22_1307873277.81238" 
    capture_lex $P252
    .lex "$?PACKAGE", $P250
    .lex "$?CLASS", $P251
.annotate 'line', 236
    .const 'Sub' $P501 = "41_1307873277.81238" 
    newclosure $P507, $P501
.annotate 'line', 97
    .return ($P507)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new" :anon :subid("22_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_253
    .param pmc param_254 :named("name")
    .param pmc param_255 :named("instance_of")
.annotate 'line', 129
    .lex "self", param_253
    .lex "$name", param_254
    .lex "$instance_of", param_255
.annotate 'line', 130
    new $P256, "Undef"
    .lex "$obj", $P256
    find_lex $P257, "self"
    repr_instance_of $P258, $P257
    store_lex "$obj", $P258
.annotate 'line', 131
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
.annotate 'line', 129
    .return ($P262)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD" :anon :subid("23_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_264
    .param pmc param_265 :named("name")
    .param pmc param_266 :named("instance_of")
.annotate 'line', 135
    .lex "self", param_264
    .lex "$name", param_265
    .lex "$instance_of", param_266
.annotate 'line', 136
    find_lex $P267, "$name"
    unless_null $P267, vivify_254
    new $P267, "Undef"
  vivify_254:
    find_lex $P268, "self"
    find_lex $P269, "$?CLASS"
    setattribute $P268, $P269, "$!name", $P267
.annotate 'line', 137
    find_lex $P270, "$instance_of"
    unless_null $P270, vivify_255
    new $P270, "Undef"
  vivify_255:
    find_lex $P271, "self"
    find_lex $P272, "$?CLASS"
    setattribute $P271, $P272, "$!instance_of", $P270
.annotate 'line', 135
    .return ($P270)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type" :anon :subid("24_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_274
    .param pmc param_279 :named("instance_of")
    .param pmc param_275 :optional :named("name")
    .param int has_param_275 :opt_flag
    .param pmc param_277 :optional :named("repr")
    .param int has_param_277 :opt_flag
.annotate 'line', 142
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
.annotate 'line', 143
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
.annotate 'line', 144
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
.annotate 'line', 142
    .return ($P288)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method" :anon :subid("25_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_290
    .param pmc param_291
    .param pmc param_292
    .param pmc param_293
.annotate 'line', 147
    .lex "self", param_290
    .lex "$obj", param_291
    .lex "$name", param_292
    .lex "$code_obj", param_293
.annotate 'line', 148
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
.annotate 'line', 149
    new $P300, "String"
    assign $P300, "This role already has a method named "
    find_lex $P301, "$name"
    unless_null $P301, vivify_265
    new $P301, "Undef"
  vivify_265:
    concat $P302, $P300, $P301
    die $P302
  if_294_end:
.annotate 'line', 151
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
.annotate 'line', 147
    .return ($P303)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method" :anon :subid("26_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_309
    .param pmc param_310
    .param pmc param_311
    .param pmc param_312
.annotate 'line', 154
    .lex "self", param_309
    .lex "$obj", param_310
    .lex "$name", param_311
    .lex "$code_obj", param_312
.annotate 'line', 155
    $P313 = root_new ['parrot';'Hash']
    .lex "%todo", $P313
.annotate 'line', 154
    find_lex $P314, "%todo"
    unless_null $P314, vivify_269
    $P314 = root_new ['parrot';'Hash']
  vivify_269:
.annotate 'line', 156
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
.annotate 'line', 157
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
.annotate 'line', 158
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
.annotate 'line', 154
    .return ($P328)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute" :anon :subid("27_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_330
    .param pmc param_331
    .param pmc param_332
.annotate 'line', 162
    .lex "self", param_330
    .lex "$obj", param_331
    .lex "$meta_attr", param_332
.annotate 'line', 163
    new $P333, "Undef"
    .lex "$name", $P333
    find_lex $P334, "$meta_attr"
    unless_null $P334, vivify_278
    new $P334, "Undef"
  vivify_278:
    $P335 = $P334."name"()
    store_lex "$name", $P335
.annotate 'line', 164
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
.annotate 'line', 165
    new $P342, "String"
    assign $P342, "This role already has an attribute named "
    find_lex $P343, "$name"
    unless_null $P343, vivify_282
    new $P343, "Undef"
  vivify_282:
    concat $P344, $P342, $P343
    die $P344
  if_336_end:
.annotate 'line', 167
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
.annotate 'line', 162
    .return ($P345)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent" :anon :subid("28_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_351
    .param pmc param_352
    .param pmc param_353
.annotate 'line', 170
    .lex "self", param_351
    .lex "$obj", param_352
    .lex "$parent", param_353
.annotate 'line', 171
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role" :anon :subid("29_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357
.annotate 'line', 174
    .lex "self", param_355
    .lex "$obj", param_356
    .lex "$role", param_357
.annotate 'line', 175
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
.annotate 'line', 174
    .return ($P358)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision" :anon :subid("30_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_368
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 178
    .lex "self", param_368
    .lex "$obj", param_369
    .lex "$colliding_name", param_370
.annotate 'line', 179
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
.annotate 'line', 178
    .return ($P371)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("31_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 183
    .const 'Sub' $P394 = "32_1307873277.81238" 
    capture_lex $P394
    .lex "self", param_381
    .lex "$obj", param_382
.annotate 'line', 186
    find_lex $P384, "self"
    find_lex $P385, "$?CLASS"
    getattribute $P386, $P384, $P385, "@!roles"
    unless_null $P386, vivify_292
    $P386 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    unless $P386, if_383_end
.annotate 'line', 187
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
    .const 'Sub' $P394 = "32_1307873277.81238" 
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
.annotate 'line', 191
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
.annotate 'line', 195
    new $P425, "Integer"
    assign $P425, 1
    find_lex $P426, "self"
    find_lex $P427, "$?CLASS"
    setattribute $P426, $P427, "$!composed", $P425
    find_lex $P428, "$obj"
    unless_null $P428, vivify_304
    new $P428, "Undef"
  vivify_304:
.annotate 'line', 183
    .return ($P428)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block393"  :anon :subid("32_1307873277.81238") :outer("31_1307873277.81238")
    .param pmc param_395
.annotate 'line', 187
    .lex "$_", param_395
.annotate 'line', 188
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
.annotate 'line', 189
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
.annotate 'line', 187
    .return ($P408)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("33_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_430
    .param pmc param_431
    .param pmc param_432 :optional :named("local")
    .param int has_param_432 :opt_flag
.annotate 'line', 204
    .const 'Sub' $P443 = "34_1307873277.81238" 
    capture_lex $P443
    .lex "self", param_430
    .lex "$obj", param_431
    if has_param_432, optparam_305
    new $P433, "Undef"
    set param_432, $P433
  optparam_305:
    .lex "$local", param_432
.annotate 'line', 205
    $P434 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P434
.annotate 'line', 204
    find_lex $P435, "@meths"
    unless_null $P435, vivify_306
    $P435 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
.annotate 'line', 206
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
    .const 'Sub' $P443 = "34_1307873277.81238" 
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
.annotate 'line', 204
    .return ($P452)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block442"  :anon :subid("34_1307873277.81238") :outer("33_1307873277.81238")
    .param pmc param_444
.annotate 'line', 206
    .lex "$_", param_444
.annotate 'line', 207
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
.annotate 'line', 206
    .return ($P448)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table" :anon :subid("35_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_454
    .param pmc param_455
.annotate 'line', 212
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
.sub "collisions" :anon :subid("36_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_460
    .param pmc param_461
.annotate 'line', 216
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
.sub "name" :anon :subid("37_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_466
    .param pmc param_467
.annotate 'line', 220
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
.sub "attributes" :anon :subid("38_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_472
    .param pmc param_473
    .param pmc param_474 :optional :named("local")
    .param int has_param_474 :opt_flag
.annotate 'line', 224
    .const 'Sub' $P485 = "39_1307873277.81238" 
    capture_lex $P485
    .lex "self", param_472
    .lex "$obj", param_473
    if has_param_474, optparam_315
    new $P475, "Undef"
    set param_474, $P475
  optparam_315:
    .lex "$local", param_474
.annotate 'line', 225
    $P476 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P476
.annotate 'line', 224
    find_lex $P477, "@attrs"
    unless_null $P477, vivify_316
    $P477 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 226
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
    .const 'Sub' $P485 = "39_1307873277.81238" 
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
.annotate 'line', 224
    .return ($P494)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block484"  :anon :subid("39_1307873277.81238") :outer("38_1307873277.81238")
    .param pmc param_486
.annotate 'line', 226
    .lex "$_", param_486
.annotate 'line', 227
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
.annotate 'line', 226
    .return ($P490)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles" :anon :subid("40_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_496
    .param pmc param_497
.annotate 'line', 232
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
.sub "instance_of" :anon :subid("41_1307873277.81238") :outer("21_1307873277.81238")
    .param pmc param_502
    .param pmc param_503
.annotate 'line', 236
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
.sub "_block508"  :subid("42_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 242
    .const 'Sub' $P582 = "47_1307873277.81238" 
    capture_lex $P582
    .const 'Sub' $P545 = "45_1307873277.81238" 
    capture_lex $P545
    .const 'Sub' $P510 = "43_1307873277.81238" 
    capture_lex $P510
.annotate 'line', 244
    .const 'Sub' $P510 = "43_1307873277.81238" 
    newclosure $P544, $P510
    .lex "has_method", $P544
.annotate 'line', 252
    .const 'Sub' $P545 = "45_1307873277.81238" 
    newclosure $P577, $P545
    .lex "has_attribute", $P577
.annotate 'line', 242
    .lex "$?PACKAGE", $P578
    .lex "$?CLASS", $P579
    find_lex $P580, "has_method"
    find_lex $P581, "has_attribute"
.annotate 'line', 260
    .const 'Sub' $P582 = "47_1307873277.81238" 
    newclosure $P720, $P582
.annotate 'line', 242
    .return ($P720)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1307873277.81238") :outer("42_1307873277.81238")
    .param pmc param_513
    .param pmc param_514
    .param pmc param_515
.annotate 'line', 244
    .const 'Sub' $P527 = "44_1307873277.81238" 
    capture_lex $P527
    new $P512, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P512, control_511
    push_eh $P512
    .lex "$target", param_513
    .lex "$name", param_514
    .lex "$local", param_515
.annotate 'line', 245
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
.annotate 'line', 246
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
    .const 'Sub' $P527 = "44_1307873277.81238" 
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
.annotate 'line', 249
    new $P541, "Exception"
    set $P541['type'], .CONTROL_RETURN
    new $P542, "Integer"
    assign $P542, 0
    setattribute $P541, 'payload', $P542
    throw $P541
.annotate 'line', 244
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
.sub "_block526"  :anon :subid("44_1307873277.81238") :outer("43_1307873277.81238")
    .param pmc param_528
.annotate 'line', 246
    .lex "$_", param_528
.annotate 'line', 247
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
.annotate 'line', 246
    .return ($P529)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1307873277.81238") :outer("42_1307873277.81238")
    .param pmc param_548
    .param pmc param_549
.annotate 'line', 252
    .const 'Sub' $P560 = "46_1307873277.81238" 
    capture_lex $P560
    new $P547, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P547, control_546
    push_eh $P547
    .lex "$target", param_548
    .lex "$name", param_549
.annotate 'line', 253
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
.annotate 'line', 254
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
    .const 'Sub' $P560 = "46_1307873277.81238" 
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
.annotate 'line', 257
    new $P574, "Exception"
    set $P574['type'], .CONTROL_RETURN
    new $P575, "Integer"
    assign $P575, 0
    setattribute $P574, 'payload', $P575
    throw $P574
.annotate 'line', 252
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
.sub "_block559"  :anon :subid("46_1307873277.81238") :outer("45_1307873277.81238")
    .param pmc param_561
.annotate 'line', 254
    .lex "$_", param_561
.annotate 'line', 255
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
.annotate 'line', 254
    .return ($P562)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply" :anon :subid("47_1307873277.81238") :outer("42_1307873277.81238")
    .param pmc param_583
    .param pmc param_584
    .param pmc param_585
.annotate 'line', 260
    .const 'Sub' $P691 = "51_1307873277.81238" 
    capture_lex $P691
    .const 'Sub' $P665 = "50_1307873277.81238" 
    capture_lex $P665
    .const 'Sub' $P636 = "49_1307873277.81238" 
    capture_lex $P636
    .const 'Sub' $P616 = "48_1307873277.81238" 
    capture_lex $P616
    .lex "self", param_583
    .lex "$target", param_584
    .lex "@roles", param_585
.annotate 'line', 263
    new $P586, "Undef"
    .lex "$to_compose", $P586
.annotate 'line', 264
    new $P587, "Undef"
    .lex "$to_compose_meta", $P587
.annotate 'line', 279
    $P588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P588
.annotate 'line', 288
    $P589 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P589
.annotate 'line', 296
    $P590 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P590
.annotate 'line', 308
    $P591 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P591
.annotate 'line', 260
    find_lex $P592, "$to_compose"
    unless_null $P592, vivify_337
    new $P592, "Undef"
  vivify_337:
    find_lex $P593, "$to_compose_meta"
    unless_null $P593, vivify_338
    new $P593, "Undef"
  vivify_338:
.annotate 'line', 265
    find_lex $P595, "@roles"
    unless_null $P595, vivify_339
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N596, $P595
    iseq $I597, $N596, 1.0
    if $I597, if_594
.annotate 'line', 270
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
.annotate 'line', 271
    find_lex $P609, "$to_compose"
    unless_null $P609, vivify_341
    new $P609, "Undef"
  vivify_341:
    get_how $P610, $P609
    store_lex "$to_compose_meta", $P610
.annotate 'line', 272
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
    .const 'Sub' $P616 = "48_1307873277.81238" 
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
.annotate 'line', 275
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
.annotate 'line', 269
    goto if_594_end
  if_594:
.annotate 'line', 266
    find_lex $P598, "@roles"
    unless_null $P598, vivify_349
    $P598 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P599, $P598[0]
    unless_null $P599, vivify_350
    new $P599, "Undef"
  vivify_350:
    store_lex "$to_compose", $P599
.annotate 'line', 267
    find_lex $P600, "$to_compose"
    unless_null $P600, vivify_351
    new $P600, "Undef"
  vivify_351:
    get_how $P601, $P600
    store_lex "$to_compose_meta", $P601
  if_594_end:
.annotate 'line', 279
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
.annotate 'line', 280
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
    .const 'Sub' $P636 = "49_1307873277.81238" 
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
.annotate 'line', 288
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
.annotate 'line', 289
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
    .const 'Sub' $P665 = "50_1307873277.81238" 
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
.annotate 'line', 296
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
.annotate 'line', 297
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
    .const 'Sub' $P691 = "51_1307873277.81238" 
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
.annotate 'line', 309
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
.annotate 'line', 260
    .return ($P718)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block615"  :anon :subid("48_1307873277.81238") :outer("47_1307873277.81238")
    .param pmc param_617
.annotate 'line', 272
    .lex "$_", param_617
.annotate 'line', 273
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
.annotate 'line', 272
    .return ($P621)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block635"  :anon :subid("49_1307873277.81238") :outer("47_1307873277.81238")
    .param pmc param_637
.annotate 'line', 280
    .lex "$_", param_637
.annotate 'line', 281
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
.annotate 'line', 282
    new $P644, 'String'
    set $P644, "Method '"
    find_lex $P645, "$_"
    unless_null $P645, vivify_358
    new $P645, "Undef"
  vivify_358:
    concat $P646, $P644, $P645
    concat $P647, $P646, "' collides and a resolution must be provided by the class '"
.annotate 'line', 283
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
.annotate 'line', 282
    concat $P653, $P652, "'"
.annotate 'line', 283
    die $P653
  unless_639_end:
.annotate 'line', 280
    .return ($P638)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block664"  :anon :subid("50_1307873277.81238") :outer("47_1307873277.81238")
    .param pmc param_666
.annotate 'line', 289
    .lex "$_", param_666
.annotate 'line', 290
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
.annotate 'line', 291
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
.annotate 'line', 290
    set $P667, $P679
  unless_668_end:
.annotate 'line', 289
    .return ($P667)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block690"  :anon :subid("51_1307873277.81238") :outer("47_1307873277.81238")
    .param pmc param_692
.annotate 'line', 297
    .lex "$_", param_692
.annotate 'line', 298
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
.annotate 'line', 299
    new $P698, "String"
    assign $P698, "Attribute '"
    find_lex $P699, "$_"
    unless_null $P699, vivify_377
    new $P699, "Undef"
  vivify_377:
    $S700 = $P699."name"()
    concat $P701, $P698, $S700
    concat $P702, $P701, "' already exists in the class '"
.annotate 'line', 300
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
.annotate 'line', 299
    concat $P708, $P707, "', but a role also wishes to compose it"
.annotate 'line', 300
    die $P708
  if_693_end:
.annotate 'line', 302
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
.annotate 'line', 297
    .return ($P713)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block721"  :subid("52_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 318
    .const 'Sub' $P1032 = "76_1307873277.81238" 
    capture_lex $P1032
    .const 'Sub' $P1008 = "74_1307873277.81238" 
    capture_lex $P1008
    .const 'Sub' $P1002 = "73_1307873277.81238" 
    capture_lex $P1002
    .const 'Sub' $P996 = "72_1307873277.81238" 
    capture_lex $P996
    .const 'Sub' $P972 = "70_1307873277.81238" 
    capture_lex $P972
    .const 'Sub' $P865 = "65_1307873277.81238" 
    capture_lex $P865
    .const 'Sub' $P862 = "64_1307873277.81238" 
    capture_lex $P862
    .const 'Sub' $P855 = "63_1307873277.81238" 
    capture_lex $P855
    .const 'Sub' $P842 = "62_1307873277.81238" 
    capture_lex $P842
    .const 'Sub' $P838 = "61_1307873277.81238" 
    capture_lex $P838
    .const 'Sub' $P817 = "60_1307873277.81238" 
    capture_lex $P817
    .const 'Sub' $P796 = "59_1307873277.81238" 
    capture_lex $P796
    .const 'Sub' $P777 = "58_1307873277.81238" 
    capture_lex $P777
    .const 'Sub' $P770 = "57_1307873277.81238" 
    capture_lex $P770
    .const 'Sub' $P755 = "56_1307873277.81238" 
    capture_lex $P755
    .const 'Sub' $P749 = "55_1307873277.81238" 
    capture_lex $P749
    .const 'Sub' $P740 = "54_1307873277.81238" 
    capture_lex $P740
    .const 'Sub' $P723 = "53_1307873277.81238" 
    capture_lex $P723
.annotate 'line', 455
    .const 'Sub' $P723 = "53_1307873277.81238" 
    newclosure $P737, $P723
    .lex "reify_method", $P737
.annotate 'line', 318
    .lex "$?PACKAGE", $P738
    .lex "$?CLASS", $P739
.annotate 'line', 420
    find_lex $P971, "reify_method"
.annotate 'line', 488
    .const 'Sub' $P1032 = "76_1307873277.81238" 
    newclosure $P1038, $P1032
.annotate 'line', 318
    .return ($P1038)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "reify_method"  :subid("53_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_724
.annotate 'line', 455
    .lex "$meth", param_724
.annotate 'line', 456
    new $P725, "Undef"
    .lex "$callback", $P725
    find_lex $P726, "$meth"
    unless_null $P726, vivify_386
    new $P726, "Undef"
  vivify_386:
    getprop $P727, "REIFY_CALLBACK", $P726
    store_lex "$callback", $P727
.annotate 'line', 457
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
.annotate 'line', 455
    .return ($P728)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new" :anon :subid("54_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_741
    .param pmc param_742 :named("name")
.annotate 'line', 348
    .lex "self", param_741
    .lex "$name", param_742
.annotate 'line', 349
    new $P743, "Undef"
    .lex "$obj", $P743
    find_lex $P744, "self"
    repr_instance_of $P745, $P744
    store_lex "$obj", $P745
.annotate 'line', 350
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
.annotate 'line', 348
    .return ($P748)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD" :anon :subid("55_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_750
    .param pmc param_751 :named("name")
.annotate 'line', 354
    .lex "self", param_750
    .lex "$name", param_751
.annotate 'line', 355
    find_lex $P752, "$name"
    unless_null $P752, vivify_394
    new $P752, "Undef"
  vivify_394:
    find_lex $P753, "self"
    find_lex $P754, "$?CLASS"
    setattribute $P753, $P754, "$!name", $P752
.annotate 'line', 354
    .return ($P752)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type" :anon :subid("56_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_756
    .param pmc param_757 :optional :named("name")
    .param int has_param_757 :opt_flag
    .param pmc param_759 :optional :named("repr")
    .param int has_param_759 :opt_flag
.annotate 'line', 360
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
.annotate 'line', 361
    new $P761, "Undef"
    .lex "$metarole", $P761
    find_lex $P762, "self"
    find_lex $P763, "$name"
    unless_null $P763, vivify_397
    new $P763, "Undef"
  vivify_397:
    $P764 = $P762."new"($P763 :named("name"))
    store_lex "$metarole", $P764
.annotate 'line', 363
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
.annotate 'line', 360
    .return ($P768)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block" :anon :subid("57_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_771
    .param pmc param_772
    .param pmc param_773
.annotate 'line', 367
    .lex "self", param_771
    .lex "$obj", param_772
    .lex "$body_block", param_773
.annotate 'line', 368
    find_lex $P774, "$body_block"
    unless_null $P774, vivify_400
    new $P774, "Undef"
  vivify_400:
    find_lex $P775, "self"
    find_lex $P776, "$?CLASS"
    setattribute $P775, $P776, "$!body_block", $P774
.annotate 'line', 367
    .return ($P774)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method" :anon :subid("58_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_778
    .param pmc param_779
    .param pmc param_780
    .param pmc param_781
.annotate 'line', 371
    .lex "self", param_778
    .lex "$obj", param_779
    .lex "$name", param_780
    .lex "$code_obj", param_781
.annotate 'line', 372
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
.annotate 'line', 373
    new $P788, "String"
    assign $P788, "This role already has a method named "
    find_lex $P789, "$name"
    unless_null $P789, vivify_404
    new $P789, "Undef"
  vivify_404:
    concat $P790, $P788, $P789
    die $P790
  if_782_end:
.annotate 'line', 375
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
.annotate 'line', 371
    .return ($P791)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method" :anon :subid("59_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799
    .param pmc param_800
.annotate 'line', 378
    .lex "self", param_797
    .lex "$obj", param_798
    .lex "$name", param_799
    .lex "$code_obj", param_800
.annotate 'line', 379
    $P801 = root_new ['parrot';'Hash']
    .lex "%todo", $P801
.annotate 'line', 378
    find_lex $P802, "%todo"
    unless_null $P802, vivify_408
    $P802 = root_new ['parrot';'Hash']
  vivify_408:
.annotate 'line', 380
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
.annotate 'line', 381
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
.annotate 'line', 382
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
.annotate 'line', 378
    .return ($P816)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute" :anon :subid("60_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_818
    .param pmc param_819
    .param pmc param_820
.annotate 'line', 386
    .lex "self", param_818
    .lex "$obj", param_819
    .lex "$meta_attr", param_820
.annotate 'line', 387
    new $P821, "Undef"
    .lex "$name", $P821
    find_lex $P822, "$meta_attr"
    unless_null $P822, vivify_417
    new $P822, "Undef"
  vivify_417:
    $P823 = $P822."name"()
    store_lex "$name", $P823
.annotate 'line', 388
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
.annotate 'line', 389
    new $P830, "String"
    assign $P830, "This role already has an attribute named "
    find_lex $P831, "$name"
    unless_null $P831, vivify_421
    new $P831, "Undef"
  vivify_421:
    concat $P832, $P830, $P831
    die $P832
  if_824_end:
.annotate 'line', 391
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
.annotate 'line', 386
    .return ($P833)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent" :anon :subid("61_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_839
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 394
    .lex "self", param_839
    .lex "$obj", param_840
    .lex "$parent", param_841
.annotate 'line', 395
    die "A role cannot inherit from a class"
.annotate 'line', 394
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role" :anon :subid("62_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_843
    .param pmc param_844
    .param pmc param_845
.annotate 'line', 398
    .lex "self", param_843
    .lex "$obj", param_844
    .lex "$role", param_845
.annotate 'line', 399
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
.annotate 'line', 398
    .return ($P846)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose" :anon :subid("63_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_856
    .param pmc param_857
.annotate 'line', 403
    .lex "self", param_856
    .lex "$obj", param_857
.annotate 'line', 404
    new $P858, "Integer"
    assign $P858, 1
    find_lex $P859, "self"
    find_lex $P860, "$?CLASS"
    setattribute $P859, $P860, "$!composed", $P858
    find_lex $P861, "$obj"
    unless_null $P861, vivify_428
    new $P861, "Undef"
  vivify_428:
.annotate 'line', 403
    .return ($P861)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric" :anon :subid("64_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_863
    .param pmc param_864
.annotate 'line', 414
    .lex "self", param_863
    .lex "$obj", param_864
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate" :anon :subid("65_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_868
    .param pmc param_869
    .param pmc param_870
.annotate 'line', 420
    .const 'Sub' $P949 = "69_1307873277.81238" 
    capture_lex $P949
    .const 'Sub' $P928 = "68_1307873277.81238" 
    capture_lex $P928
    .const 'Sub' $P907 = "67_1307873277.81238" 
    capture_lex $P907
    .const 'Sub' $P889 = "66_1307873277.81238" 
    capture_lex $P889
    new $P867, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P867, control_866
    push_eh $P867
    .lex "self", param_868
    .lex "$obj", param_869
    .lex "$class_arg", param_870
.annotate 'line', 426
    new $P871, "Undef"
    .lex "$irole", $P871
.annotate 'line', 423
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
.annotate 'line', 426
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
.annotate 'line', 430
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
    .const 'Sub' $P889 = "66_1307873277.81238" 
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
.annotate 'line', 435
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
    .const 'Sub' $P907 = "67_1307873277.81238" 
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
.annotate 'line', 438
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
    .const 'Sub' $P928 = "68_1307873277.81238" 
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
.annotate 'line', 443
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
    .const 'Sub' $P949 = "69_1307873277.81238" 
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
.annotate 'line', 449
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
.annotate 'line', 450
    new $P968, "Exception"
    set $P968['type'], .CONTROL_RETURN
    find_lex $P969, "$irole"
    unless_null $P969, vivify_462
    new $P969, "Undef"
  vivify_462:
    setattribute $P968, 'payload', $P969
    throw $P968
.annotate 'line', 420
    .return ()
  control_866:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, "payload"
    .return ($P970)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block888"  :anon :subid("66_1307873277.81238") :outer("65_1307873277.81238")
    .param pmc param_890
.annotate 'line', 430
    .lex "$_", param_890
.annotate 'line', 431
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
.annotate 'line', 430
    .return ($P896)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block906"  :anon :subid("67_1307873277.81238") :outer("65_1307873277.81238")
    .param pmc param_908
.annotate 'line', 435
    .lex "$_", param_908
.annotate 'line', 436
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
.annotate 'line', 435
    .return ($P917)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block927"  :anon :subid("68_1307873277.81238") :outer("65_1307873277.81238")
    .param pmc param_929
.annotate 'line', 438
    .lex "$_", param_929
.annotate 'line', 439
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
.annotate 'line', 438
    .return ($P938)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block948"  :anon :subid("69_1307873277.81238") :outer("65_1307873277.81238")
    .param pmc param_951
.annotate 'line', 444
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
.annotate 'line', 445
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
.annotate 'line', 443
    .return ($P961)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("70_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_973
    .param pmc param_974
    .param pmc param_975 :optional :named("local")
    .param int has_param_975 :opt_flag
.annotate 'line', 464
    .const 'Sub' $P986 = "71_1307873277.81238" 
    capture_lex $P986
    .lex "self", param_973
    .lex "$obj", param_974
    if has_param_975, optparam_463
    new $P976, "Undef"
    set param_975, $P976
  optparam_463:
    .lex "$local", param_975
.annotate 'line', 465
    $P977 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P977
.annotate 'line', 464
    find_lex $P978, "@meths"
    unless_null $P978, vivify_464
    $P978 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
.annotate 'line', 466
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
    .const 'Sub' $P986 = "71_1307873277.81238" 
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
.annotate 'line', 464
    .return ($P995)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block985"  :anon :subid("71_1307873277.81238") :outer("70_1307873277.81238")
    .param pmc param_987
.annotate 'line', 466
    .lex "$_", param_987
.annotate 'line', 467
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
.annotate 'line', 466
    .return ($P991)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table" :anon :subid("72_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_997
    .param pmc param_998
.annotate 'line', 472
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
.sub "name" :anon :subid("73_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_1003
    .param pmc param_1004
.annotate 'line', 476
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
.sub "attributes" :anon :subid("74_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_1009
    .param pmc param_1010
    .param pmc param_1011 :optional :named("local")
    .param int has_param_1011 :opt_flag
.annotate 'line', 480
    .const 'Sub' $P1022 = "75_1307873277.81238" 
    capture_lex $P1022
    .lex "self", param_1009
    .lex "$obj", param_1010
    if has_param_1011, optparam_472
    new $P1012, "Undef"
    set param_1011, $P1012
  optparam_472:
    .lex "$local", param_1011
.annotate 'line', 481
    $P1013 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1013
.annotate 'line', 480
    find_lex $P1014, "@attrs"
    unless_null $P1014, vivify_473
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 482
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
    .const 'Sub' $P1022 = "75_1307873277.81238" 
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
.annotate 'line', 480
    .return ($P1031)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1021"  :anon :subid("75_1307873277.81238") :outer("74_1307873277.81238")
    .param pmc param_1023
.annotate 'line', 482
    .lex "$_", param_1023
.annotate 'line', 483
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
.annotate 'line', 482
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles" :anon :subid("76_1307873277.81238") :outer("52_1307873277.81238")
    .param pmc param_1033
    .param pmc param_1034
.annotate 'line', 488
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
.sub "_block1039"  :subid("77_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 498
    .const 'Sub' $P2102 = "136_1307873277.81238" 
    capture_lex $P2102
    .const 'Sub' $P2066 = "134_1307873277.81238" 
    capture_lex $P2066
    .const 'Sub' $P2032 = "133_1307873277.81238" 
    capture_lex $P2032
    .const 'Sub' $P1995 = "132_1307873277.81238" 
    capture_lex $P1995
    .const 'Sub' $P1988 = "131_1307873277.81238" 
    capture_lex $P1988
    .const 'Sub' $P1981 = "130_1307873277.81238" 
    capture_lex $P1981
    .const 'Sub' $P1958 = "128_1307873277.81238" 
    capture_lex $P1958
    .const 'Sub' $P1952 = "127_1307873277.81238" 
    capture_lex $P1952
    .const 'Sub' $P1946 = "126_1307873277.81238" 
    capture_lex $P1946
    .const 'Sub' $P1923 = "124_1307873277.81238" 
    capture_lex $P1923
    .const 'Sub' $P1916 = "123_1307873277.81238" 
    capture_lex $P1916
    .const 'Sub' $P1902 = "122_1307873277.81238" 
    capture_lex $P1902
    .const 'Sub' $P1853 = "119_1307873277.81238" 
    capture_lex $P1853
    .const 'Sub' $P1804 = "116_1307873277.81238" 
    capture_lex $P1804
    .const 'Sub' $P1759 = "113_1307873277.81238" 
    capture_lex $P1759
    .const 'Sub' $P1722 = "110_1307873277.81238" 
    capture_lex $P1722
    .const 'Sub' $P1581 = "105_1307873277.81238" 
    capture_lex $P1581
    .const 'Sub' $P1473 = "101_1307873277.81238" 
    capture_lex $P1473
    .const 'Sub' $P1445 = "100_1307873277.81238" 
    capture_lex $P1445
    .const 'Sub' $P1419 = "99_1307873277.81238" 
    capture_lex $P1419
    .const 'Sub' $P1385 = "97_1307873277.81238" 
    capture_lex $P1385
    .const 'Sub' $P1378 = "96_1307873277.81238" 
    capture_lex $P1378
    .const 'Sub' $P1330 = "94_1307873277.81238" 
    capture_lex $P1330
    .const 'Sub' $P1309 = "93_1307873277.81238" 
    capture_lex $P1309
    .const 'Sub' $P1288 = "92_1307873277.81238" 
    capture_lex $P1288
    .const 'Sub' $P1253 = "91_1307873277.81238" 
    capture_lex $P1253
    .const 'Sub' $P1238 = "90_1307873277.81238" 
    capture_lex $P1238
    .const 'Sub' $P1231 = "89_1307873277.81238" 
    capture_lex $P1231
    .const 'Sub' $P1221 = "88_1307873277.81238" 
    capture_lex $P1221
    .const 'Sub' $P1083 = "81_1307873277.81238" 
    capture_lex $P1083
    .const 'Sub' $P1041 = "78_1307873277.81238" 
    capture_lex $P1041
.annotate 'line', 735
    .const 'Sub' $P1041 = "78_1307873277.81238" 
    newclosure $P1082, $P1041
    .lex "compute_c3_mro", $P1082
.annotate 'line', 757
    .const 'Sub' $P1083 = "81_1307873277.81238" 
    newclosure $P1218, $P1083
    .lex "c3_merge", $P1218
.annotate 'line', 498
    .lex "$?PACKAGE", $P1219
    .lex "$?CLASS", $P1220
.annotate 'line', 676
    find_lex $P1720, "compute_c3_mro"
    find_lex $P1721, "c3_merge"
.annotate 'line', 959
    .const 'Sub' $P2102 = "136_1307873277.81238" 
    newclosure $P2137, $P2102
.annotate 'line', 498
    .return ($P2137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("78_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1044
.annotate 'line', 735
    .const 'Sub' $P1056 = "79_1307873277.81238" 
    capture_lex $P1056
    new $P1043, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1043, control_1042
    push_eh $P1043
    .lex "$class", param_1044
.annotate 'line', 736
    $P1045 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1045
.annotate 'line', 739
    $P1046 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1046
.annotate 'line', 736
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
.annotate 'line', 740
    find_lex $P1053, "@immediate_parents"
    unless_null $P1053, vivify_483
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    set $N1054, $P1053
    unless $N1054, if_1052_end
    .const 'Sub' $P1056 = "79_1307873277.81238" 
    capture_lex $P1056
    $P1056()
  if_1052_end:
.annotate 'line', 752
    find_lex $P1077, "@result"
    unless_null $P1077, vivify_492
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P1078, "$class"
    unless_null $P1078, vivify_493
    new $P1078, "Undef"
  vivify_493:
    $P1077."unshift"($P1078)
.annotate 'line', 753
    new $P1079, "Exception"
    set $P1079['type'], .CONTROL_RETURN
    find_lex $P1080, "@result"
    unless_null $P1080, vivify_494
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    setattribute $P1079, 'payload', $P1080
    throw $P1079
.annotate 'line', 735
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
.sub "_block1055"  :anon :subid("79_1307873277.81238") :outer("78_1307873277.81238")
.annotate 'line', 740
    .const 'Sub' $P1064 = "80_1307873277.81238" 
    capture_lex $P1064
.annotate 'line', 743
    $P1057 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1057
.annotate 'line', 740
    find_lex $P1058, "@merge_list"
    unless_null $P1058, vivify_484
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
.annotate 'line', 744
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
    .const 'Sub' $P1064 = "80_1307873277.81238" 
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
.annotate 'line', 747
    find_lex $P1073, "@merge_list"
    unless_null $P1073, vivify_489
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    find_lex $P1074, "@immediate_parents"
    unless_null $P1074, vivify_490
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    $P1073."push"($P1074)
.annotate 'line', 748
    find_lex $P1075, "@merge_list"
    unless_null $P1075, vivify_491
    $P1075 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    $P1076 = "c3_merge"($P1075)
    store_lex "@result", $P1076
.annotate 'line', 740
    .return ($P1076)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1063"  :anon :subid("80_1307873277.81238") :outer("79_1307873277.81238")
    .param pmc param_1065
.annotate 'line', 744
    .lex "$_", param_1065
.annotate 'line', 745
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
.annotate 'line', 744
    .return ($P1069)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("81_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1086
.annotate 'line', 757
    .const 'Sub' $P1178 = "86_1307873277.81238" 
    capture_lex $P1178
    .const 'Sub' $P1101 = "82_1307873277.81238" 
    capture_lex $P1101
    new $P1085, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1085, control_1084
    push_eh $P1085
    .lex "@merge_list", param_1086
.annotate 'line', 758
    $P1087 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1087
.annotate 'line', 759
    new $P1088, "Undef"
    .lex "$accepted", $P1088
.annotate 'line', 760
    new $P1089, "Undef"
    .lex "$something_accepted", $P1089
.annotate 'line', 761
    new $P1090, "Undef"
    .lex "$cand_count", $P1090
.annotate 'line', 804
    new $P1091, "Undef"
    .lex "$i", $P1091
.annotate 'line', 757
    find_lex $P1092, "@result"
    unless_null $P1092, vivify_495
    $P1092 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    find_lex $P1093, "$accepted"
    unless_null $P1093, vivify_496
    new $P1093, "Undef"
  vivify_496:
.annotate 'line', 760
    new $P1094, "Integer"
    assign $P1094, 0
    store_lex "$something_accepted", $P1094
.annotate 'line', 761
    new $P1095, "Integer"
    assign $P1095, 0
    store_lex "$cand_count", $P1095
.annotate 'line', 764
    find_lex $P1097, "@merge_list"
    unless_null $P1097, vivify_497
    $P1097 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    defined $I1098, $P1097
    unless $I1098, for_undef_498
    iter $P1096, $P1097
    new $P1161, 'ExceptionHandler'
    set_label $P1161, loop1160_handler
    $P1161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1161
  loop1160_test:
    unless $P1096, loop1160_done
    shift $P1099, $P1096
  loop1160_redo:
    .const 'Sub' $P1101 = "82_1307873277.81238" 
    capture_lex $P1101
    $P1101($P1099)
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
  for_undef_498:
.annotate 'line', 794
    find_lex $P1164, "$cand_count"
    unless_null $P1164, vivify_517
    new $P1164, "Undef"
  vivify_517:
    set $N1165, $P1164
    iseq $I1166, $N1165, 0.0
    unless $I1166, if_1163_end
.annotate 'line', 795
    new $P1167, "Exception"
    set $P1167['type'], .CONTROL_RETURN
    find_lex $P1168, "@result"
    unless_null $P1168, vivify_518
    $P1168 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    setattribute $P1167, 'payload', $P1168
    throw $P1167
  if_1163_end:
.annotate 'line', 799
    find_lex $P1170, "$something_accepted"
    unless_null $P1170, vivify_519
    new $P1170, "Undef"
  vivify_519:
    if $P1170, unless_1169_end
.annotate 'line', 800
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1169_end:
.annotate 'line', 804
    new $P1171, "Integer"
    assign $P1171, 0
    store_lex "$i", $P1171
.annotate 'line', 805
    new $P1209, 'ExceptionHandler'
    set_label $P1209, loop1208_handler
    $P1209."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1209
  loop1208_test:
    find_lex $P1172, "$i"
    unless_null $P1172, vivify_520
    new $P1172, "Undef"
  vivify_520:
    set $N1173, $P1172
    find_lex $P1174, "@merge_list"
    unless_null $P1174, vivify_521
    $P1174 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    set $N1175, $P1174
    islt $I1176, $N1173, $N1175
    unless $I1176, loop1208_done
  loop1208_redo:
    .const 'Sub' $P1178 = "86_1307873277.81238" 
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
.annotate 'line', 818
    find_lex $P1211, "@merge_list"
    unless_null $P1211, vivify_535
    $P1211 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    $P1212 = "c3_merge"($P1211)
    store_lex "@result", $P1212
.annotate 'line', 819
    find_lex $P1213, "@result"
    unless_null $P1213, vivify_536
    $P1213 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    find_lex $P1214, "$accepted"
    unless_null $P1214, vivify_537
    new $P1214, "Undef"
  vivify_537:
    $P1213."unshift"($P1214)
.annotate 'line', 820
    new $P1215, "Exception"
    set $P1215['type'], .CONTROL_RETURN
    find_lex $P1216, "@result"
    unless_null $P1216, vivify_538
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    setattribute $P1215, 'payload', $P1216
    throw $P1215
.annotate 'line', 757
    .return ()
  control_1084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1217, exception, "payload"
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1100"  :anon :subid("82_1307873277.81238") :outer("81_1307873277.81238")
    .param pmc param_1103
.annotate 'line', 764
    .const 'Sub' $P1110 = "83_1307873277.81238" 
    capture_lex $P1110
.annotate 'line', 765
    $P1102 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1102
    .lex "$_", param_1103
    find_lex $P1104, "$_"
    unless_null $P1104, vivify_499
    new $P1104, "Undef"
  vivify_499:
    store_lex "@cand_list", $P1104
.annotate 'line', 766
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
    .const 'Sub' $P1110 = "83_1307873277.81238" 
    capture_lex $P1110
    $P1159 = $P1110()
    set $P1105, $P1159
  if_1106_end:
.annotate 'line', 764
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1109"  :anon :subid("83_1307873277.81238") :outer("82_1307873277.81238")
.annotate 'line', 766
    .const 'Sub' $P1123 = "84_1307873277.81238" 
    capture_lex $P1123
.annotate 'line', 767
    new $P1111, "Undef"
    .lex "$rejected", $P1111
.annotate 'line', 768
    new $P1112, "Undef"
    .lex "$cand_class", $P1112
.annotate 'line', 767
    new $P1113, "Integer"
    assign $P1113, 0
    store_lex "$rejected", $P1113
.annotate 'line', 768
    find_lex $P1114, "@cand_list"
    unless_null $P1114, vivify_501
    $P1114 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    set $P1115, $P1114[0]
    unless_null $P1115, vivify_502
    new $P1115, "Undef"
  vivify_502:
    store_lex "$cand_class", $P1115
.annotate 'line', 769
    find_lex $P1116, "$cand_count"
    unless_null $P1116, vivify_503
    new $P1116, "Undef"
  vivify_503:
    add $P1117, $P1116, 1
    store_lex "$cand_count", $P1117
.annotate 'line', 770
    find_lex $P1119, "@merge_list"
    unless_null $P1119, vivify_504
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    defined $I1120, $P1119
    unless $I1120, for_undef_505
    iter $P1118, $P1119
    new $P1157, 'ExceptionHandler'
    set_label $P1157, loop1156_handler
    $P1157."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1157
  loop1156_test:
    unless $P1118, loop1156_done
    shift $P1121, $P1118
  loop1156_redo:
    .const 'Sub' $P1123 = "84_1307873277.81238" 
    capture_lex $P1123
    $P1123($P1121)
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
  for_undef_505:
.annotate 'line', 766
    .return ($P1118)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1122"  :anon :subid("84_1307873277.81238") :outer("83_1307873277.81238")
    .param pmc param_1124
.annotate 'line', 770
    .const 'Sub' $P1130 = "85_1307873277.81238" 
    capture_lex $P1130
    .lex "$_", param_1124
.annotate 'line', 772
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
    .const 'Sub' $P1130 = "85_1307873277.81238" 
    capture_lex $P1130
    $P1130()
  unless_1125_end:
.annotate 'line', 784
    find_lex $P1153, "$rejected"
    unless_null $P1153, vivify_515
    new $P1153, "Undef"
  vivify_515:
    unless $P1153, unless_1152
    set $P1151, $P1153
    goto unless_1152_end
  unless_1152:
.annotate 'line', 785
    find_lex $P1154, "$cand_class"
    unless_null $P1154, vivify_516
    new $P1154, "Undef"
  vivify_516:
    store_lex "$accepted", $P1154
.annotate 'line', 786
    new $P1155, "Integer"
    assign $P1155, 1
    store_lex "$something_accepted", $P1155
.annotate 'line', 787
    die 0, .CONTROL_LOOP_LAST
  unless_1152_end:
.annotate 'line', 770
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1129"  :anon :subid("85_1307873277.81238") :outer("84_1307873277.81238")
.annotate 'line', 774
    new $P1131, "Undef"
    .lex "$cur_pos", $P1131
    new $P1132, "Integer"
    assign $P1132, 1
    store_lex "$cur_pos", $P1132
.annotate 'line', 775
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
.annotate 'line', 776
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
.annotate 'line', 777
    new $P1145, "Integer"
    assign $P1145, 1
    store_lex "$rejected", $P1145
  if_1138_end:
.annotate 'line', 779
    find_lex $P1146, "$cur_pos"
    unless_null $P1146, vivify_514
    new $P1146, "Undef"
  vivify_514:
    add $P1147, $P1146, 1
    store_lex "$cur_pos", $P1147
  loop1148_next:
.annotate 'line', 775
    goto loop1148_test
  loop1148_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1150, exception, 'type'
    eq $P1150, .CONTROL_LOOP_NEXT, loop1148_next
    eq $P1150, .CONTROL_LOOP_REDO, loop1148_redo
  loop1148_done:
    pop_eh 
.annotate 'line', 772
    .return ($I1137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1177"  :anon :subid("86_1307873277.81238") :outer("81_1307873277.81238")
.annotate 'line', 805
    .const 'Sub' $P1189 = "87_1307873277.81238" 
    capture_lex $P1189
.annotate 'line', 806
    $P1179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1179
.annotate 'line', 805
    find_lex $P1180, "@new_list"
    unless_null $P1180, vivify_522
    $P1180 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
.annotate 'line', 807
    find_lex $P1182, "$i"
    unless_null $P1182, vivify_523
    new $P1182, "Undef"
  vivify_523:
    set $I1183, $P1182
    find_lex $P1184, "@merge_list"
    unless_null $P1184, vivify_524
    $P1184 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $P1185, $P1184[$I1183]
    unless_null $P1185, vivify_525
    new $P1185, "Undef"
  vivify_525:
    defined $I1186, $P1185
    unless $I1186, for_undef_526
    iter $P1181, $P1185
    new $P1200, 'ExceptionHandler'
    set_label $P1200, loop1199_handler
    $P1200."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1200
  loop1199_test:
    unless $P1181, loop1199_done
    shift $P1187, $P1181
  loop1199_redo:
    .const 'Sub' $P1189 = "87_1307873277.81238" 
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
  for_undef_526:
.annotate 'line', 812
    find_lex $P1202, "@new_list"
    unless_null $P1202, vivify_531
    $P1202 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    find_lex $P1203, "$i"
    unless_null $P1203, vivify_532
    new $P1203, "Undef"
  vivify_532:
    set $I1204, $P1203
    find_lex $P1205, "@merge_list"
    unless_null $P1205, vivify_533
    $P1205 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1205
  vivify_533:
    set $P1205[$I1204], $P1202
.annotate 'line', 813
    find_lex $P1206, "$i"
    unless_null $P1206, vivify_534
    new $P1206, "Undef"
  vivify_534:
    add $P1207, $P1206, 1
    store_lex "$i", $P1207
.annotate 'line', 805
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1188"  :anon :subid("87_1307873277.81238") :outer("86_1307873277.81238")
    .param pmc param_1190
.annotate 'line', 807
    .lex "$_", param_1190
.annotate 'line', 808
    find_lex $P1193, "$_"
    unless_null $P1193, vivify_527
    new $P1193, "Undef"
  vivify_527:
    find_lex $P1194, "$accepted"
    unless_null $P1194, vivify_528
    new $P1194, "Undef"
  vivify_528:
    issame $I1195, $P1193, $P1194
    unless $I1195, unless_1192
    new $P1191, 'Integer'
    set $P1191, $I1195
    goto unless_1192_end
  unless_1192:
.annotate 'line', 809
    find_lex $P1196, "@new_list"
    unless_null $P1196, vivify_529
    $P1196 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    find_lex $P1197, "$_"
    unless_null $P1197, vivify_530
    new $P1197, "Undef"
  vivify_530:
    $P1198 = $P1196."push"($P1197)
.annotate 'line', 808
    set $P1191, $P1198
  unless_1192_end:
.annotate 'line', 807
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new" :anon :subid("88_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1222
    .param pmc param_1223 :optional :named("name")
    .param int has_param_1223 :opt_flag
.annotate 'line', 535
    .lex "self", param_1222
    if has_param_1223, optparam_539
    new $P1224, "Undef"
    set param_1223, $P1224
  optparam_539:
    .lex "$name", param_1223
.annotate 'line', 536
    new $P1225, "Undef"
    .lex "$obj", $P1225
    find_lex $P1226, "self"
    repr_instance_of $P1227, $P1226
    store_lex "$obj", $P1227
.annotate 'line', 537
    find_lex $P1228, "$obj"
    unless_null $P1228, vivify_540
    new $P1228, "Undef"
  vivify_540:
    find_lex $P1229, "$name"
    unless_null $P1229, vivify_541
    new $P1229, "Undef"
  vivify_541:
    $P1228."BUILD"($P1229 :named("name"))
    find_lex $P1230, "$obj"
    unless_null $P1230, vivify_542
    new $P1230, "Undef"
  vivify_542:
.annotate 'line', 535
    .return ($P1230)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD" :anon :subid("89_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1232
    .param pmc param_1233 :optional :named("name")
    .param int has_param_1233 :opt_flag
.annotate 'line', 541
    .lex "self", param_1232
    if has_param_1233, optparam_543
    new $P1234, "Undef"
    set param_1233, $P1234
  optparam_543:
    .lex "$name", param_1233
.annotate 'line', 542
    find_lex $P1235, "$name"
    unless_null $P1235, vivify_544
    new $P1235, "Undef"
  vivify_544:
    find_lex $P1236, "self"
    find_lex $P1237, "$?CLASS"
    setattribute $P1236, $P1237, "$!name", $P1235
.annotate 'line', 541
    .return ($P1235)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type" :anon :subid("90_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1239
    .param pmc param_1240 :optional :named("name")
    .param int has_param_1240 :opt_flag
    .param pmc param_1242 :optional :named("repr")
    .param int has_param_1242 :opt_flag
.annotate 'line', 547
    .lex "self", param_1239
    if has_param_1240, optparam_545
    new $P1241, "String"
    assign $P1241, "<anon>"
    set param_1240, $P1241
  optparam_545:
    .lex "$name", param_1240
    if has_param_1242, optparam_546
    new $P1243, "String"
    assign $P1243, "P6opaque"
    set param_1242, $P1243
  optparam_546:
    .lex "$repr", param_1242
.annotate 'line', 548
    new $P1244, "Undef"
    .lex "$metaclass", $P1244
    find_lex $P1245, "self"
    find_lex $P1246, "$name"
    unless_null $P1246, vivify_547
    new $P1246, "Undef"
  vivify_547:
    $P1247 = $P1245."new"($P1246 :named("name"))
    store_lex "$metaclass", $P1247
.annotate 'line', 550
    find_lex $P1248, "$metaclass"
    unless_null $P1248, vivify_548
    new $P1248, "Undef"
  vivify_548:
    find_lex $P1249, "$repr"
    unless_null $P1249, vivify_549
    new $P1249, "Undef"
  vivify_549:
    set $S1250, $P1249
    repr_type_object_for $P1251, $P1248, $S1250
    $P1252 = root_new ['parrot';'Hash']
    set_who $P1251, $P1252
.annotate 'line', 547
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method" :anon :subid("91_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1254
    .param pmc param_1255
    .param pmc param_1256
    .param pmc param_1257
.annotate 'line', 554
    .lex "self", param_1254
    .lex "$obj", param_1255
    .lex "$name", param_1256
    .lex "$code_obj", param_1257
.annotate 'line', 555
    find_lex $P1259, "$name"
    unless_null $P1259, vivify_550
    new $P1259, "Undef"
  vivify_550:
    find_lex $P1260, "self"
    find_lex $P1261, "$?CLASS"
    getattribute $P1262, $P1260, $P1261, "%!methods"
    unless_null $P1262, vivify_551
    $P1262 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1263, $P1262[$P1259]
    unless_null $P1263, vivify_552
    new $P1263, "Undef"
  vivify_552:
    unless $P1263, if_1258_end
.annotate 'line', 556
    new $P1264, "String"
    assign $P1264, "This class already has a method named "
    find_lex $P1265, "$name"
    unless_null $P1265, vivify_553
    new $P1265, "Undef"
  vivify_553:
    concat $P1266, $P1264, $P1265
    die $P1266
  if_1258_end:
.annotate 'line', 558
    find_lex $P1270, "$code_obj"
    unless_null $P1270, vivify_554
    new $P1270, "Undef"
  vivify_554:
    isnull $I1271, $P1270
    unless $I1271, unless_1269
    new $P1268, 'Integer'
    set $P1268, $I1271
    goto unless_1269_end
  unless_1269:
    find_lex $P1272, "$code_obj"
    unless_null $P1272, vivify_555
    new $P1272, "Undef"
  vivify_555:
    isa $I1273, $P1272, "Undef"
    new $P1268, 'Integer'
    set $P1268, $I1273
  unless_1269_end:
    unless $P1268, if_1267_end
.annotate 'line', 559
    new $P1274, 'String'
    set $P1274, "Cannot add a null method '"
    find_lex $P1275, "$name"
    unless_null $P1275, vivify_556
    new $P1275, "Undef"
  vivify_556:
    concat $P1276, $P1274, $P1275
    concat $P1277, $P1276, "' to class '"
    find_lex $P1278, "self"
    find_lex $P1279, "$?CLASS"
    getattribute $P1280, $P1278, $P1279, "$!name"
    unless_null $P1280, vivify_557
    new $P1280, "Undef"
  vivify_557:
    concat $P1281, $P1277, $P1280
    concat $P1282, $P1281, "'"
    die $P1282
  if_1267_end:
.annotate 'line', 561
    find_lex $P1283, "$code_obj"
    unless_null $P1283, vivify_558
    new $P1283, "Undef"
  vivify_558:
    find_lex $P1284, "$name"
    unless_null $P1284, vivify_559
    new $P1284, "Undef"
  vivify_559:
    find_lex $P1285, "self"
    find_lex $P1286, "$?CLASS"
    getattribute $P1287, $P1285, $P1286, "%!methods"
    unless_null $P1287, vivify_560
    $P1287 = root_new ['parrot';'Hash']
    setattribute $P1285, $P1286, "%!methods", $P1287
  vivify_560:
    set $P1287[$P1284], $P1283
.annotate 'line', 554
    .return ($P1283)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method" :anon :subid("92_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1289
    .param pmc param_1290
    .param pmc param_1291
    .param pmc param_1292
.annotate 'line', 564
    .lex "self", param_1289
    .lex "$obj", param_1290
    .lex "$name", param_1291
    .lex "$code_obj", param_1292
.annotate 'line', 570
    $P1293 = root_new ['parrot';'Hash']
    .lex "%todo", $P1293
.annotate 'line', 564
    find_lex $P1294, "%todo"
    unless_null $P1294, vivify_561
    $P1294 = root_new ['parrot';'Hash']
  vivify_561:
.annotate 'line', 571
    find_lex $P1295, "$name"
    unless_null $P1295, vivify_562
    new $P1295, "Undef"
  vivify_562:
    find_lex $P1296, "%todo"
    unless_null $P1296, vivify_563
    $P1296 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1296
  vivify_563:
    set $P1296["name"], $P1295
.annotate 'line', 572
    find_lex $P1297, "$code_obj"
    unless_null $P1297, vivify_564
    new $P1297, "Undef"
  vivify_564:
    find_lex $P1298, "%todo"
    unless_null $P1298, vivify_565
    $P1298 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1298
  vivify_565:
    set $P1298["code"], $P1297
.annotate 'line', 573
    find_lex $P1299, "%todo"
    unless_null $P1299, vivify_566
    $P1299 = root_new ['parrot';'Hash']
  vivify_566:
    find_lex $P1300, "self"
    find_lex $P1301, "$?CLASS"
    getattribute $P1302, $P1300, $P1301, "@!multi_methods_to_incorporate"
    unless_null $P1302, vivify_567
    $P1302 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    set $N1303, $P1302
    set $I1304, $N1303
    find_lex $P1305, "self"
    find_lex $P1306, "$?CLASS"
    getattribute $P1307, $P1305, $P1306, "@!multi_methods_to_incorporate"
    unless_null $P1307, vivify_568
    $P1307 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1305, $P1306, "@!multi_methods_to_incorporate", $P1307
  vivify_568:
    set $P1307[$I1304], $P1299
    find_lex $P1308, "$code_obj"
    unless_null $P1308, vivify_569
    new $P1308, "Undef"
  vivify_569:
.annotate 'line', 564
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute" :anon :subid("93_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1310
    .param pmc param_1311
    .param pmc param_1312
.annotate 'line', 577
    .lex "self", param_1310
    .lex "$obj", param_1311
    .lex "$meta_attr", param_1312
.annotate 'line', 578
    new $P1313, "Undef"
    .lex "$name", $P1313
    find_lex $P1314, "$meta_attr"
    unless_null $P1314, vivify_570
    new $P1314, "Undef"
  vivify_570:
    $P1315 = $P1314."name"()
    store_lex "$name", $P1315
.annotate 'line', 579
    find_lex $P1317, "$name"
    unless_null $P1317, vivify_571
    new $P1317, "Undef"
  vivify_571:
    find_lex $P1318, "self"
    find_lex $P1319, "$?CLASS"
    getattribute $P1320, $P1318, $P1319, "%!attributes"
    unless_null $P1320, vivify_572
    $P1320 = root_new ['parrot';'Hash']
  vivify_572:
    set $P1321, $P1320[$P1317]
    unless_null $P1321, vivify_573
    new $P1321, "Undef"
  vivify_573:
    unless $P1321, if_1316_end
.annotate 'line', 580
    new $P1322, "String"
    assign $P1322, "This class already has an attribute named "
    find_lex $P1323, "$name"
    unless_null $P1323, vivify_574
    new $P1323, "Undef"
  vivify_574:
    concat $P1324, $P1322, $P1323
    die $P1324
  if_1316_end:
.annotate 'line', 582
    find_lex $P1325, "$meta_attr"
    unless_null $P1325, vivify_575
    new $P1325, "Undef"
  vivify_575:
    find_lex $P1326, "$name"
    unless_null $P1326, vivify_576
    new $P1326, "Undef"
  vivify_576:
    find_lex $P1327, "self"
    find_lex $P1328, "$?CLASS"
    getattribute $P1329, $P1327, $P1328, "%!attributes"
    unless_null $P1329, vivify_577
    $P1329 = root_new ['parrot';'Hash']
    setattribute $P1327, $P1328, "%!attributes", $P1329
  vivify_577:
    set $P1329[$P1326], $P1325
.annotate 'line', 577
    .return ($P1325)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent" :anon :subid("94_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1331
    .param pmc param_1332
    .param pmc param_1333
.annotate 'line', 585
    .const 'Sub' $P1355 = "95_1307873277.81238" 
    capture_lex $P1355
    .lex "self", param_1331
    .lex "$obj", param_1332
    .lex "$parent", param_1333
.annotate 'line', 586
    find_lex $P1335, "self"
    find_lex $P1336, "$?CLASS"
    getattribute $P1337, $P1335, $P1336, "$!composed"
    unless_null $P1337, vivify_578
    new $P1337, "Undef"
  vivify_578:
    unless $P1337, if_1334_end
.annotate 'line', 587
    die "NQPClassHOW does not support adding parents after being composed."
  if_1334_end:
.annotate 'line', 589
    find_lex $P1339, "$obj"
    unless_null $P1339, vivify_579
    new $P1339, "Undef"
  vivify_579:
    find_lex $P1340, "$parent"
    unless_null $P1340, vivify_580
    new $P1340, "Undef"
  vivify_580:
    issame $I1341, $P1339, $P1340
    unless $I1341, if_1338_end
.annotate 'line', 590
    new $P1342, 'String'
    set $P1342, "Class '"
    find_lex $P1343, "self"
    find_lex $P1344, "$?CLASS"
    getattribute $P1345, $P1343, $P1344, "$!name"
    unless_null $P1345, vivify_581
    new $P1345, "Undef"
  vivify_581:
    concat $P1346, $P1342, $P1345
    concat $P1347, $P1346, "' cannot inherit from itself."
    die $P1347
  if_1338_end:
.annotate 'line', 592
    find_lex $P1349, "self"
    find_lex $P1350, "$?CLASS"
    getattribute $P1351, $P1349, $P1350, "@!parents"
    unless_null $P1351, vivify_582
    $P1351 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    defined $I1352, $P1351
    unless $I1352, for_undef_583
    iter $P1348, $P1351
    new $P1367, 'ExceptionHandler'
    set_label $P1367, loop1366_handler
    $P1367."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1367
  loop1366_test:
    unless $P1348, loop1366_done
    shift $P1353, $P1348
  loop1366_redo:
    .const 'Sub' $P1355 = "95_1307873277.81238" 
    capture_lex $P1355
    $P1355($P1353)
  loop1366_next:
    goto loop1366_test
  loop1366_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1368, exception, 'type'
    eq $P1368, .CONTROL_LOOP_NEXT, loop1366_next
    eq $P1368, .CONTROL_LOOP_REDO, loop1366_redo
  loop1366_done:
    pop_eh 
  for_undef_583:
.annotate 'line', 597
    find_lex $P1369, "$parent"
    unless_null $P1369, vivify_587
    new $P1369, "Undef"
  vivify_587:
    find_lex $P1370, "self"
    find_lex $P1371, "$?CLASS"
    getattribute $P1372, $P1370, $P1371, "@!parents"
    unless_null $P1372, vivify_588
    $P1372 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1373, $P1372
    set $I1374, $N1373
    find_lex $P1375, "self"
    find_lex $P1376, "$?CLASS"
    getattribute $P1377, $P1375, $P1376, "@!parents"
    unless_null $P1377, vivify_589
    $P1377 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1375, $P1376, "@!parents", $P1377
  vivify_589:
    set $P1377[$I1374], $P1369
.annotate 'line', 585
    .return ($P1369)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1354"  :anon :subid("95_1307873277.81238") :outer("94_1307873277.81238")
    .param pmc param_1356
.annotate 'line', 592
    .lex "$_", param_1356
.annotate 'line', 593
    find_lex $P1359, "$_"
    unless_null $P1359, vivify_584
    new $P1359, "Undef"
  vivify_584:
    find_lex $P1360, "$parent"
    unless_null $P1360, vivify_585
    new $P1360, "Undef"
  vivify_585:
    issame $I1361, $P1359, $P1360
    if $I1361, if_1358
    new $P1357, 'Integer'
    set $P1357, $I1361
    goto if_1358_end
  if_1358:
.annotate 'line', 594
    new $P1362, "String"
    assign $P1362, "Already have "
    find_lex $P1363, "$parent"
    unless_null $P1363, vivify_586
    new $P1363, "Undef"
  vivify_586:
    concat $P1364, $P1362, $P1363
    concat $P1365, $P1364, " as a parent class."
    die $P1365
  if_1358_end:
.annotate 'line', 592
    .return ($P1357)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent" :anon :subid("96_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1379
    .param pmc param_1380
    .param pmc param_1381
.annotate 'line', 600
    .lex "self", param_1379
    .lex "$obj", param_1380
    .lex "$parent", param_1381
.annotate 'line', 601
    find_lex $P1382, "$parent"
    unless_null $P1382, vivify_590
    new $P1382, "Undef"
  vivify_590:
    find_lex $P1383, "self"
    find_lex $P1384, "$?CLASS"
    setattribute $P1383, $P1384, "$!default_parent", $P1382
.annotate 'line', 600
    .return ($P1382)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role" :anon :subid("97_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1386
    .param pmc param_1387
    .param pmc param_1388
.annotate 'line', 604
    .const 'Sub' $P1396 = "98_1307873277.81238" 
    capture_lex $P1396
    .lex "self", param_1386
    .lex "$obj", param_1387
    .lex "$role", param_1388
.annotate 'line', 605
    find_lex $P1390, "self"
    find_lex $P1391, "$?CLASS"
    getattribute $P1392, $P1390, $P1391, "@!roles"
    unless_null $P1392, vivify_591
    $P1392 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I1393, $P1392
    unless $I1393, for_undef_592
    iter $P1389, $P1392
    new $P1408, 'ExceptionHandler'
    set_label $P1408, loop1407_handler
    $P1408."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1408
  loop1407_test:
    unless $P1389, loop1407_done
    shift $P1394, $P1389
  loop1407_redo:
    .const 'Sub' $P1396 = "98_1307873277.81238" 
    capture_lex $P1396
    $P1396($P1394)
  loop1407_next:
    goto loop1407_test
  loop1407_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1409, exception, 'type'
    eq $P1409, .CONTROL_LOOP_NEXT, loop1407_next
    eq $P1409, .CONTROL_LOOP_REDO, loop1407_redo
  loop1407_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 610
    find_lex $P1410, "$role"
    unless_null $P1410, vivify_596
    new $P1410, "Undef"
  vivify_596:
    find_lex $P1411, "self"
    find_lex $P1412, "$?CLASS"
    getattribute $P1413, $P1411, $P1412, "@!roles"
    unless_null $P1413, vivify_597
    $P1413 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N1414, $P1413
    set $I1415, $N1414
    find_lex $P1416, "self"
    find_lex $P1417, "$?CLASS"
    getattribute $P1418, $P1416, $P1417, "@!roles"
    unless_null $P1418, vivify_598
    $P1418 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1416, $P1417, "@!roles", $P1418
  vivify_598:
    set $P1418[$I1415], $P1410
.annotate 'line', 604
    .return ($P1410)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1395"  :anon :subid("98_1307873277.81238") :outer("97_1307873277.81238")
    .param pmc param_1397
.annotate 'line', 605
    .lex "$_", param_1397
.annotate 'line', 606
    find_lex $P1400, "$_"
    unless_null $P1400, vivify_593
    new $P1400, "Undef"
  vivify_593:
    find_lex $P1401, "$role"
    unless_null $P1401, vivify_594
    new $P1401, "Undef"
  vivify_594:
    issame $I1402, $P1400, $P1401
    if $I1402, if_1399
    new $P1398, 'Integer'
    set $P1398, $I1402
    goto if_1399_end
  if_1399:
.annotate 'line', 607
    new $P1403, "String"
    assign $P1403, "The role "
    find_lex $P1404, "$role"
    unless_null $P1404, vivify_595
    new $P1404, "Undef"
  vivify_595:
    concat $P1405, $P1403, $P1404
    concat $P1406, $P1405, " has already been added."
    die $P1406
  if_1399_end:
.annotate 'line', 605
    .return ($P1398)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping" :anon :subid("99_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1420
    .param pmc param_1421
    .param pmc param_1422
    .param pmc param_1423
.annotate 'line', 613
    .lex "self", param_1420
    .lex "$obj", param_1421
    .lex "$name", param_1422
    .lex "$meth", param_1423
.annotate 'line', 614
    find_lex $P1425, "$name"
    unless_null $P1425, vivify_599
    new $P1425, "Undef"
  vivify_599:
    find_lex $P1426, "self"
    find_lex $P1427, "$?CLASS"
    getattribute $P1428, $P1426, $P1427, "%!parrot_vtable_mapping"
    unless_null $P1428, vivify_600
    $P1428 = root_new ['parrot';'Hash']
  vivify_600:
    set $P1429, $P1428[$P1425]
    unless_null $P1429, vivify_601
    new $P1429, "Undef"
  vivify_601:
    defined $I1430, $P1429
    unless $I1430, if_1424_end
.annotate 'line', 615
    new $P1431, "String"
    assign $P1431, "Class '"
    find_lex $P1432, "self"
    find_lex $P1433, "$?CLASS"
    getattribute $P1434, $P1432, $P1433, "$!name"
    unless_null $P1434, vivify_602
    new $P1434, "Undef"
  vivify_602:
    concat $P1435, $P1431, $P1434
    concat $P1436, $P1435, "' already has a Parrot v-table override for '"
    find_lex $P1437, "$name"
    unless_null $P1437, vivify_603
    new $P1437, "Undef"
  vivify_603:
    concat $P1438, $P1436, $P1437
.annotate 'line', 616
    concat $P1439, $P1438, "'"
.annotate 'line', 617
    die $P1439
  if_1424_end:
.annotate 'line', 619
    find_lex $P1440, "$meth"
    unless_null $P1440, vivify_604
    new $P1440, "Undef"
  vivify_604:
    find_lex $P1441, "$name"
    unless_null $P1441, vivify_605
    new $P1441, "Undef"
  vivify_605:
    find_lex $P1442, "self"
    find_lex $P1443, "$?CLASS"
    getattribute $P1444, $P1442, $P1443, "%!parrot_vtable_mapping"
    unless_null $P1444, vivify_606
    $P1444 = root_new ['parrot';'Hash']
    setattribute $P1442, $P1443, "%!parrot_vtable_mapping", $P1444
  vivify_606:
    set $P1444[$P1441], $P1440
.annotate 'line', 613
    .return ($P1440)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_handler_mapping" :anon :subid("100_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1446
    .param pmc param_1447
    .param pmc param_1448
    .param pmc param_1449
.annotate 'line', 622
    .lex "self", param_1446
    .lex "$obj", param_1447
    .lex "$name", param_1448
    .lex "$att_name", param_1449
.annotate 'line', 623
    find_lex $P1451, "$name"
    unless_null $P1451, vivify_607
    new $P1451, "Undef"
  vivify_607:
    find_lex $P1452, "self"
    find_lex $P1453, "$?CLASS"
    getattribute $P1454, $P1452, $P1453, "%!parrot_vtable_handler_mapping"
    unless_null $P1454, vivify_608
    $P1454 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1455, $P1454[$P1451]
    unless_null $P1455, vivify_609
    new $P1455, "Undef"
  vivify_609:
    defined $I1456, $P1455
    unless $I1456, if_1450_end
.annotate 'line', 624
    new $P1457, "String"
    assign $P1457, "Class '"
    find_lex $P1458, "self"
    find_lex $P1459, "$?CLASS"
    getattribute $P1460, $P1458, $P1459, "$!name"
    unless_null $P1460, vivify_610
    new $P1460, "Undef"
  vivify_610:
    concat $P1461, $P1457, $P1460
    concat $P1462, $P1461, "' already has a Parrot v-table handler for '"
    find_lex $P1463, "$name"
    unless_null $P1463, vivify_611
    new $P1463, "Undef"
  vivify_611:
    concat $P1464, $P1462, $P1463
.annotate 'line', 625
    concat $P1465, $P1464, "'"
.annotate 'line', 626
    die $P1465
  if_1450_end:
.annotate 'line', 628
    find_lex $P1466, "$obj"
    unless_null $P1466, vivify_612
    new $P1466, "Undef"
  vivify_612:
    find_lex $P1467, "$att_name"
    unless_null $P1467, vivify_613
    new $P1467, "Undef"
  vivify_613:
    new $P1468, "ResizablePMCArray"
    push $P1468, $P1466
    push $P1468, $P1467
    find_lex $P1469, "$name"
    unless_null $P1469, vivify_614
    new $P1469, "Undef"
  vivify_614:
    find_lex $P1470, "self"
    find_lex $P1471, "$?CLASS"
    getattribute $P1472, $P1470, $P1471, "%!parrot_vtable_handler_mapping"
    unless_null $P1472, vivify_615
    $P1472 = root_new ['parrot';'Hash']
    setattribute $P1470, $P1471, "%!parrot_vtable_handler_mapping", $P1472
  vivify_615:
    set $P1472[$P1469], $P1468
.annotate 'line', 622
    .return ($P1468)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose" :anon :subid("101_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1474
    .param pmc param_1475
.annotate 'line', 631
    .const 'Sub' $P1564 = "104_1307873277.81238" 
    capture_lex $P1564
    .const 'Sub' $P1481 = "102_1307873277.81238" 
    capture_lex $P1481
    .lex "self", param_1474
    .lex "$obj", param_1475
.annotate 'line', 635
    find_lex $P1477, "self"
    find_lex $P1478, "$?CLASS"
    getattribute $P1479, $P1477, $P1478, "@!roles"
    unless_null $P1479, vivify_616
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    unless $P1479, if_1476_end
    .const 'Sub' $P1481 = "102_1307873277.81238" 
    capture_lex $P1481
    $P1481()
  if_1476_end:
.annotate 'line', 648
    find_lex $P1529, "self"
    find_lex $P1530, "$?CLASS"
    getattribute $P1531, $P1529, $P1530, "@!parents"
    unless_null $P1531, vivify_633
    $P1531 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $N1532, $P1531
    iseq $I1533, $N1532, 0.0
    if $I1533, if_1528
    new $P1527, 'Integer'
    set $P1527, $I1533
    goto if_1528_end
  if_1528:
    find_lex $P1534, "self"
    find_lex $P1535, "$?CLASS"
    getattribute $P1536, $P1534, $P1535, "$!name"
    unless_null $P1536, vivify_634
    new $P1536, "Undef"
  vivify_634:
    set $S1537, $P1536
    isne $I1538, $S1537, "NQPMu"
    new $P1527, 'Integer'
    set $P1527, $I1538
  if_1528_end:
    unless $P1527, if_1526_end
.annotate 'line', 649
    find_lex $P1539, "self"
    find_lex $P1540, "$obj"
    unless_null $P1540, vivify_635
    new $P1540, "Undef"
  vivify_635:
    find_lex $P1541, "self"
    find_lex $P1542, "$?CLASS"
    getattribute $P1543, $P1541, $P1542, "$!default_parent"
    unless_null $P1543, vivify_636
    new $P1543, "Undef"
  vivify_636:
    $P1539."add_parent"($P1540, $P1543)
  if_1526_end:
.annotate 'line', 654
    find_lex $P1545, "self"
    find_lex $P1546, "$?CLASS"
    getattribute $P1547, $P1545, $P1546, "$!composed"
    unless_null $P1547, vivify_637
    new $P1547, "Undef"
  vivify_637:
    if $P1547, unless_1544_end
.annotate 'line', 655
    find_lex $P1548, "$obj"
    unless_null $P1548, vivify_638
    new $P1548, "Undef"
  vivify_638:
    $P1549 = "compute_c3_mro"($P1548)
    find_lex $P1550, "self"
    find_lex $P1551, "$?CLASS"
    setattribute $P1550, $P1551, "@!mro", $P1549
.annotate 'line', 656
    new $P1552, "Integer"
    assign $P1552, 1
    find_lex $P1553, "self"
    find_lex $P1554, "$?CLASS"
    setattribute $P1553, $P1554, "$!composed", $P1552
  unless_1544_end:
.annotate 'line', 660
    find_lex $P1555, "self"
    find_lex $P1556, "$obj"
    unless_null $P1556, vivify_639
    new $P1556, "Undef"
  vivify_639:
    $P1555."incorporate_multi_candidates"($P1556)
.annotate 'line', 663
    find_lex $P1558, "self"
    find_lex $P1559, "$obj"
    unless_null $P1559, vivify_640
    new $P1559, "Undef"
  vivify_640:
    $P1560 = $P1558."attributes"($P1559, "0" :named("local"))
    defined $I1561, $P1560
    unless $I1561, for_undef_641
    iter $P1557, $P1560
    new $P1570, 'ExceptionHandler'
    set_label $P1570, loop1569_handler
    $P1570."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1570
  loop1569_test:
    unless $P1557, loop1569_done
    shift $P1562, $P1557
  loop1569_redo:
    .const 'Sub' $P1564 = "104_1307873277.81238" 
    capture_lex $P1564
    $P1564($P1562)
  loop1569_next:
    goto loop1569_test
  loop1569_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1571, exception, 'type'
    eq $P1571, .CONTROL_LOOP_NEXT, loop1569_next
    eq $P1571, .CONTROL_LOOP_REDO, loop1569_redo
  loop1569_done:
    pop_eh 
  for_undef_641:
.annotate 'line', 666
    find_lex $P1572, "self"
    find_lex $P1573, "$obj"
    unless_null $P1573, vivify_644
    new $P1573, "Undef"
  vivify_644:
    $P1572."publish_type_cache"($P1573)
.annotate 'line', 667
    find_lex $P1574, "self"
    find_lex $P1575, "$obj"
    unless_null $P1575, vivify_645
    new $P1575, "Undef"
  vivify_645:
    $P1574."publish_method_cache"($P1575)
.annotate 'line', 670
    find_lex $P1576, "self"
    find_lex $P1577, "$obj"
    unless_null $P1577, vivify_646
    new $P1577, "Undef"
  vivify_646:
    $P1576."publish_parrot_vtable_mapping"($P1577)
.annotate 'line', 671
    find_lex $P1578, "self"
    find_lex $P1579, "$obj"
    unless_null $P1579, vivify_647
    new $P1579, "Undef"
  vivify_647:
    $P1578."publish_parrot_vtablee_handler_mapping"($P1579)
    find_lex $P1580, "$obj"
    unless_null $P1580, vivify_648
    new $P1580, "Undef"
  vivify_648:
.annotate 'line', 631
    .return ($P1580)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1480"  :anon :subid("102_1307873277.81238") :outer("101_1307873277.81238")
.annotate 'line', 635
    .const 'Sub' $P1491 = "103_1307873277.81238" 
    capture_lex $P1491
.annotate 'line', 636
    $P1482 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1482
.annotate 'line', 635
    find_lex $P1483, "@instantiated_roles"
    unless_null $P1483, vivify_617
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
.annotate 'line', 637
    find_lex $P1485, "self"
    find_lex $P1486, "$?CLASS"
    getattribute $P1487, $P1485, $P1486, "@!roles"
    unless_null $P1487, vivify_618
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    defined $I1488, $P1487
    unless $I1488, for_undef_619
    iter $P1484, $P1487
    new $P1520, 'ExceptionHandler'
    set_label $P1520, loop1519_handler
    $P1520."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1520
  loop1519_test:
    unless $P1484, loop1519_done
    shift $P1489, $P1484
  loop1519_redo:
    .const 'Sub' $P1491 = "103_1307873277.81238" 
    capture_lex $P1491
    $P1491($P1489)
  loop1519_next:
    goto loop1519_test
  loop1519_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1521, exception, 'type'
    eq $P1521, .CONTROL_LOOP_NEXT, loop1519_next
    eq $P1521, .CONTROL_LOOP_REDO, loop1519_redo
  loop1519_done:
    pop_eh 
  for_undef_619:
.annotate 'line', 643
    find_lex $P1522, "RoleToClassApplier"
    find_lex $P1523, "$obj"
    unless_null $P1523, vivify_631
    new $P1523, "Undef"
  vivify_631:
    find_lex $P1524, "@instantiated_roles"
    unless_null $P1524, vivify_632
    $P1524 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    $P1525 = $P1522."apply"($P1523, $P1524)
.annotate 'line', 635
    .return ($P1525)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1490"  :anon :subid("103_1307873277.81238") :outer("102_1307873277.81238")
    .param pmc param_1493
.annotate 'line', 638
    new $P1492, "Undef"
    .lex "$ins", $P1492
    .lex "$_", param_1493
    find_lex $P1494, "$_"
    unless_null $P1494, vivify_620
    new $P1494, "Undef"
  vivify_620:
    get_how $P1495, $P1494
    find_lex $P1496, "$_"
    unless_null $P1496, vivify_621
    new $P1496, "Undef"
  vivify_621:
    find_lex $P1497, "$obj"
    unless_null $P1497, vivify_622
    new $P1497, "Undef"
  vivify_622:
    $P1498 = $P1495."instantiate"($P1496, $P1497)
    store_lex "$ins", $P1498
.annotate 'line', 639
    find_lex $P1499, "@instantiated_roles"
    unless_null $P1499, vivify_623
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P1500, "$ins"
    unless_null $P1500, vivify_624
    new $P1500, "Undef"
  vivify_624:
    $P1499."push"($P1500)
.annotate 'line', 640
    find_lex $P1501, "$_"
    unless_null $P1501, vivify_625
    new $P1501, "Undef"
  vivify_625:
    find_lex $P1502, "self"
    find_lex $P1503, "$?CLASS"
    getattribute $P1504, $P1502, $P1503, "@!done"
    unless_null $P1504, vivify_626
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    set $N1505, $P1504
    set $I1506, $N1505
    find_lex $P1507, "self"
    find_lex $P1508, "$?CLASS"
    getattribute $P1509, $P1507, $P1508, "@!done"
    unless_null $P1509, vivify_627
    $P1509 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1507, $P1508, "@!done", $P1509
  vivify_627:
    set $P1509[$I1506], $P1501
.annotate 'line', 641
    find_lex $P1510, "$ins"
    unless_null $P1510, vivify_628
    new $P1510, "Undef"
  vivify_628:
    find_lex $P1511, "self"
    find_lex $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "@!done"
    unless_null $P1513, vivify_629
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $N1514, $P1513
    set $I1515, $N1514
    find_lex $P1516, "self"
    find_lex $P1517, "$?CLASS"
    getattribute $P1518, $P1516, $P1517, "@!done"
    unless_null $P1518, vivify_630
    $P1518 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1516, $P1517, "@!done", $P1518
  vivify_630:
    set $P1518[$I1515], $P1510
.annotate 'line', 637
    .return ($P1510)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1563"  :anon :subid("104_1307873277.81238") :outer("101_1307873277.81238")
    .param pmc param_1565
.annotate 'line', 663
    .lex "$_", param_1565
    find_lex $P1566, "$_"
    unless_null $P1566, vivify_642
    new $P1566, "Undef"
  vivify_642:
    find_lex $P1567, "$obj"
    unless_null $P1567, vivify_643
    new $P1567, "Undef"
  vivify_643:
    $P1568 = $P1566."compose"($P1567)
    .return ($P1568)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates" :anon :subid("105_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1582
    .param pmc param_1583
.annotate 'line', 676
    .const 'Sub' $P1598 = "106_1307873277.81238" 
    capture_lex $P1598
    .lex "self", param_1582
    .lex "$obj", param_1583
.annotate 'line', 677
    new $P1584, "Undef"
    .lex "$num_todo", $P1584
.annotate 'line', 678
    new $P1585, "Undef"
    .lex "$i", $P1585
.annotate 'line', 677
    find_lex $P1586, "self"
    find_lex $P1587, "$?CLASS"
    getattribute $P1588, $P1586, $P1587, "@!multi_methods_to_incorporate"
    unless_null $P1588, vivify_649
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_649:
    set $N1589, $P1588
    new $P1590, 'Float'
    set $P1590, $N1589
    store_lex "$num_todo", $P1590
.annotate 'line', 678
    new $P1591, "Integer"
    assign $P1591, 0
    store_lex "$i", $P1591
.annotate 'line', 679
    new $P1718, 'ExceptionHandler'
    set_label $P1718, loop1717_handler
    $P1718."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1718
  loop1717_test:
    find_lex $P1592, "$i"
    unless_null $P1592, vivify_650
    new $P1592, "Undef"
  vivify_650:
    set $N1593, $P1592
    find_lex $P1594, "$num_todo"
    unless_null $P1594, vivify_651
    new $P1594, "Undef"
  vivify_651:
    set $N1595, $P1594
    isne $I1596, $N1593, $N1595
    unless $I1596, loop1717_done
  loop1717_redo:
    .const 'Sub' $P1598 = "106_1307873277.81238" 
    capture_lex $P1598
    $P1598()
  loop1717_next:
    goto loop1717_test
  loop1717_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1719, exception, 'type'
    eq $P1719, .CONTROL_LOOP_NEXT, loop1717_next
    eq $P1719, .CONTROL_LOOP_REDO, loop1717_redo
  loop1717_done:
    pop_eh 
.annotate 'line', 676
    .return ($I1596)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1597"  :anon :subid("106_1307873277.81238") :outer("105_1307873277.81238")
.annotate 'line', 679
    .const 'Sub' $P1634 = "107_1307873277.81238" 
    capture_lex $P1634
.annotate 'line', 681
    new $P1599, "Undef"
    .lex "$name", $P1599
.annotate 'line', 682
    new $P1600, "Undef"
    .lex "$code", $P1600
.annotate 'line', 686
    new $P1601, "Undef"
    .lex "$dispatcher", $P1601
.annotate 'line', 681
    find_lex $P1602, "$i"
    unless_null $P1602, vivify_652
    new $P1602, "Undef"
  vivify_652:
    set $I1603, $P1602
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "@!multi_methods_to_incorporate"
    unless_null $P1606, vivify_653
    $P1606 = root_new ['parrot';'ResizablePMCArray']
  vivify_653:
    set $P1607, $P1606[$I1603]
    unless_null $P1607, vivify_654
    $P1607 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1608, $P1607["name"]
    unless_null $P1608, vivify_655
    new $P1608, "Undef"
  vivify_655:
    store_lex "$name", $P1608
.annotate 'line', 682
    find_lex $P1609, "$i"
    unless_null $P1609, vivify_656
    new $P1609, "Undef"
  vivify_656:
    set $I1610, $P1609
    find_lex $P1611, "self"
    find_lex $P1612, "$?CLASS"
    getattribute $P1613, $P1611, $P1612, "@!multi_methods_to_incorporate"
    unless_null $P1613, vivify_657
    $P1613 = root_new ['parrot';'ResizablePMCArray']
  vivify_657:
    set $P1614, $P1613[$I1610]
    unless_null $P1614, vivify_658
    $P1614 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1615, $P1614["code"]
    unless_null $P1615, vivify_659
    new $P1615, "Undef"
  vivify_659:
    store_lex "$code", $P1615
.annotate 'line', 686
    find_lex $P1616, "$name"
    unless_null $P1616, vivify_660
    new $P1616, "Undef"
  vivify_660:
    find_lex $P1617, "self"
    find_lex $P1618, "$?CLASS"
    getattribute $P1619, $P1617, $P1618, "%!methods"
    unless_null $P1619, vivify_661
    $P1619 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1620, $P1619[$P1616]
    unless_null $P1620, vivify_662
    new $P1620, "Undef"
  vivify_662:
    store_lex "$dispatcher", $P1620
.annotate 'line', 687
    find_lex $P1622, "$dispatcher"
    unless_null $P1622, vivify_663
    new $P1622, "Undef"
  vivify_663:
    defined $I1623, $P1622
    if $I1623, if_1621
.annotate 'line', 697
    .const 'Sub' $P1634 = "107_1307873277.81238" 
    capture_lex $P1634
    $P1634()
    goto if_1621_end
  if_1621:
.annotate 'line', 690
    find_lex $P1625, "$dispatcher"
    unless_null $P1625, vivify_694
    new $P1625, "Undef"
  vivify_694:
    is_dispatcher $I1626, $P1625
    if $I1626, if_1624
.annotate 'line', 694
    new $P1629, 'String'
    set $P1629, "Cannot have a multi candidate for "
    find_lex $P1630, "$name"
    unless_null $P1630, vivify_695
    new $P1630, "Undef"
  vivify_695:
    concat $P1631, $P1629, $P1630
    concat $P1632, $P1631, " when an only method is also in the class"
    die $P1632
.annotate 'line', 693
    goto if_1624_end
  if_1624:
.annotate 'line', 691
    find_lex $P1627, "$dispatcher"
    unless_null $P1627, vivify_696
    new $P1627, "Undef"
  vivify_696:
    find_lex $P1628, "$code"
    unless_null $P1628, vivify_697
    new $P1628, "Undef"
  vivify_697:
    push_dispatchee $P1627, $P1628
  if_1624_end:
  if_1621_end:
.annotate 'line', 730
    find_lex $P1715, "$i"
    unless_null $P1715, vivify_698
    new $P1715, "Undef"
  vivify_698:
    add $P1716, $P1715, 1
    store_lex "$i", $P1716
.annotate 'line', 679
    .return ($P1716)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1633"  :anon :subid("107_1307873277.81238") :outer("106_1307873277.81238")
.annotate 'line', 697
    .const 'Sub' $P1651 = "108_1307873277.81238" 
    capture_lex $P1651
.annotate 'line', 699
    new $P1635, "Undef"
    .lex "$j", $P1635
.annotate 'line', 700
    new $P1636, "Undef"
    .lex "$found", $P1636
.annotate 'line', 699
    new $P1637, "Integer"
    assign $P1637, 1
    store_lex "$j", $P1637
.annotate 'line', 700
    new $P1638, "Integer"
    assign $P1638, 0
    store_lex "$found", $P1638
.annotate 'line', 701
    new $P1706, 'ExceptionHandler'
    set_label $P1706, loop1705_handler
    $P1706."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1706
  loop1705_test:
    find_lex $P1641, "$j"
    unless_null $P1641, vivify_664
    new $P1641, "Undef"
  vivify_664:
    set $N1642, $P1641
    find_lex $P1643, "self"
    find_lex $P1644, "$?CLASS"
    getattribute $P1645, $P1643, $P1644, "@!mro"
    unless_null $P1645, vivify_665
    $P1645 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $N1646, $P1645
    isne $I1647, $N1642, $N1646
    if $I1647, if_1640
    new $P1639, 'Integer'
    set $P1639, $I1647
    goto if_1640_end
  if_1640:
    find_lex $P1648, "$found"
    unless_null $P1648, vivify_666
    new $P1648, "Undef"
  vivify_666:
    isfalse $I1649, $P1648
    new $P1639, 'Integer'
    set $P1639, $I1649
  if_1640_end:
    unless $P1639, loop1705_done
  loop1705_redo:
    .const 'Sub' $P1651 = "108_1307873277.81238" 
    capture_lex $P1651
    $P1651()
  loop1705_next:
    goto loop1705_test
  loop1705_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1707, exception, 'type'
    eq $P1707, .CONTROL_LOOP_NEXT, loop1705_next
    eq $P1707, .CONTROL_LOOP_REDO, loop1705_redo
  loop1705_done:
    pop_eh 
.annotate 'line', 726
    find_lex $P1710, "$found"
    unless_null $P1710, vivify_692
    new $P1710, "Undef"
  vivify_692:
    unless $P1710, unless_1709
    set $P1708, $P1710
    goto unless_1709_end
  unless_1709:
.annotate 'line', 727
    new $P1711, 'String'
    set $P1711, "Could not find a proto for multi "
    find_lex $P1712, "$name"
    unless_null $P1712, vivify_693
    new $P1712, "Undef"
  vivify_693:
    concat $P1713, $P1711, $P1712
    concat $P1714, $P1713, ", and proto generation is NYI"
    die $P1714
  unless_1709_end:
.annotate 'line', 697
    .return ($P1708)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1650"  :anon :subid("108_1307873277.81238") :outer("107_1307873277.81238")
.annotate 'line', 701
    .const 'Sub' $P1675 = "109_1307873277.81238" 
    capture_lex $P1675
.annotate 'line', 702
    new $P1652, "Undef"
    .lex "$parent", $P1652
.annotate 'line', 703
    $P1653 = root_new ['parrot';'Hash']
    .lex "%meths", $P1653
.annotate 'line', 704
    new $P1654, "Undef"
    .lex "$dispatcher", $P1654
.annotate 'line', 702
    find_lex $P1655, "$j"
    unless_null $P1655, vivify_667
    new $P1655, "Undef"
  vivify_667:
    set $I1656, $P1655
    find_lex $P1657, "self"
    find_lex $P1658, "$?CLASS"
    getattribute $P1659, $P1657, $P1658, "@!mro"
    unless_null $P1659, vivify_668
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P1660, $P1659[$I1656]
    unless_null $P1660, vivify_669
    new $P1660, "Undef"
  vivify_669:
    store_lex "$parent", $P1660
.annotate 'line', 703
    find_lex $P1661, "$parent"
    unless_null $P1661, vivify_670
    new $P1661, "Undef"
  vivify_670:
    get_how $P1662, $P1661
    find_lex $P1663, "$parent"
    unless_null $P1663, vivify_671
    new $P1663, "Undef"
  vivify_671:
    $P1664 = $P1662."method_table"($P1663)
    store_lex "%meths", $P1664
.annotate 'line', 704
    find_lex $P1665, "$name"
    unless_null $P1665, vivify_672
    new $P1665, "Undef"
  vivify_672:
    find_lex $P1666, "%meths"
    unless_null $P1666, vivify_673
    $P1666 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1667, $P1666[$P1665]
    unless_null $P1667, vivify_674
    new $P1667, "Undef"
  vivify_674:
    store_lex "$dispatcher", $P1667
.annotate 'line', 705
    find_lex $P1669, "$dispatcher"
    unless_null $P1669, vivify_675
    new $P1669, "Undef"
  vivify_675:
    defined $I1670, $P1669
    unless $I1670, if_1668_end
.annotate 'line', 708
    find_lex $P1672, "$dispatcher"
    unless_null $P1672, vivify_676
    new $P1672, "Undef"
  vivify_676:
    is_dispatcher $I1673, $P1672
    if $I1673, if_1671
.annotate 'line', 721
    new $P1699, 'String'
    set $P1699, "Could not find a proto for multi "
    find_lex $P1700, "$name"
    unless_null $P1700, vivify_677
    new $P1700, "Undef"
  vivify_677:
    concat $P1701, $P1699, $P1700
    concat $P1702, $P1701, " (it may exist, but an only is hiding it if so)"
    die $P1702
.annotate 'line', 720
    goto if_1671_end
  if_1671:
.annotate 'line', 708
    .const 'Sub' $P1675 = "109_1307873277.81238" 
    capture_lex $P1675
    $P1675()
  if_1671_end:
  if_1668_end:
.annotate 'line', 724
    find_lex $P1703, "$j"
    unless_null $P1703, vivify_691
    new $P1703, "Undef"
  vivify_691:
    add $P1704, $P1703, 1
    store_lex "$j", $P1704
.annotate 'line', 701
    .return ($P1704)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1674"  :anon :subid("109_1307873277.81238") :outer("108_1307873277.81238")
.annotate 'line', 710
    $P1676 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1676
.annotate 'line', 712
    new $P1677, "Undef"
    .lex "$new_disp", $P1677
.annotate 'line', 713
    new $P1678, "Undef"
    .lex "$clone_callback", $P1678
.annotate 'line', 708
    find_lex $P1679, "@new_dispatchees"
    unless_null $P1679, vivify_678
    $P1679 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
.annotate 'line', 711
    find_lex $P1680, "$code"
    unless_null $P1680, vivify_679
    new $P1680, "Undef"
  vivify_679:
    find_lex $P1681, "@new_dispatchees"
    unless_null $P1681, vivify_680
    $P1681 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1681
  vivify_680:
    set $P1681[0], $P1680
.annotate 'line', 712
    find_lex $P1682, "$dispatcher"
    unless_null $P1682, vivify_681
    new $P1682, "Undef"
  vivify_681:
    find_lex $P1683, "@new_dispatchees"
    unless_null $P1683, vivify_682
    $P1683 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    create_dispatch_and_add_candidates $P1684, $P1682, $P1683
    store_lex "$new_disp", $P1684
.annotate 'line', 713
    find_lex $P1685, "$dispatcher"
    unless_null $P1685, vivify_683
    new $P1685, "Undef"
  vivify_683:
    getprop $P1686, "CLONE_CALLBACK", $P1685
    store_lex "$clone_callback", $P1686
.annotate 'line', 714
    find_lex $P1688, "$clone_callback"
    unless_null $P1688, vivify_684
    new $P1688, "Undef"
  vivify_684:
    defined $I1689, $P1688
    unless $I1689, if_1687_end
.annotate 'line', 715
    find_lex $P1690, "$clone_callback"
    unless_null $P1690, vivify_685
    new $P1690, "Undef"
  vivify_685:
    find_lex $P1691, "$dispatcher"
    unless_null $P1691, vivify_686
    new $P1691, "Undef"
  vivify_686:
    find_lex $P1692, "$new_disp"
    unless_null $P1692, vivify_687
    new $P1692, "Undef"
  vivify_687:
    $P1690($P1691, $P1692)
  if_1687_end:
.annotate 'line', 717
    find_lex $P1693, "$new_disp"
    unless_null $P1693, vivify_688
    new $P1693, "Undef"
  vivify_688:
    find_lex $P1694, "$name"
    unless_null $P1694, vivify_689
    new $P1694, "Undef"
  vivify_689:
    find_lex $P1695, "self"
    find_lex $P1696, "$?CLASS"
    getattribute $P1697, $P1695, $P1696, "%!methods"
    unless_null $P1697, vivify_690
    $P1697 = root_new ['parrot';'Hash']
    setattribute $P1695, $P1696, "%!methods", $P1697
  vivify_690:
    set $P1697[$P1694], $P1693
.annotate 'line', 718
    new $P1698, "Integer"
    assign $P1698, 1
    store_lex "$found", $P1698
.annotate 'line', 708
    .return ($P1698)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache" :anon :subid("110_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1723
    .param pmc param_1724
.annotate 'line', 823
    .const 'Sub' $P1749 = "112_1307873277.81238" 
    capture_lex $P1749
    .const 'Sub' $P1734 = "111_1307873277.81238" 
    capture_lex $P1734
    .lex "self", param_1723
    .lex "$obj", param_1724
.annotate 'line', 824
    $P1725 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1725
.annotate 'line', 823
    find_lex $P1726, "@tc"
    unless_null $P1726, vivify_699
    $P1726 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
.annotate 'line', 825
    find_lex $P1728, "self"
    find_lex $P1729, "$?CLASS"
    getattribute $P1730, $P1728, $P1729, "@!mro"
    unless_null $P1730, vivify_700
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_700:
    defined $I1731, $P1730
    unless $I1731, for_undef_701
    iter $P1727, $P1730
    new $P1740, 'ExceptionHandler'
    set_label $P1740, loop1739_handler
    $P1740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1740
  loop1739_test:
    unless $P1727, loop1739_done
    shift $P1732, $P1727
  loop1739_redo:
    .const 'Sub' $P1734 = "111_1307873277.81238" 
    capture_lex $P1734
    $P1734($P1732)
  loop1739_next:
    goto loop1739_test
  loop1739_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1741, exception, 'type'
    eq $P1741, .CONTROL_LOOP_NEXT, loop1739_next
    eq $P1741, .CONTROL_LOOP_REDO, loop1739_redo
  loop1739_done:
    pop_eh 
  for_undef_701:
.annotate 'line', 826
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!done"
    unless_null $P1745, vivify_704
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_704:
    defined $I1746, $P1745
    unless $I1746, for_undef_705
    iter $P1742, $P1745
    new $P1755, 'ExceptionHandler'
    set_label $P1755, loop1754_handler
    $P1755."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1755
  loop1754_test:
    unless $P1742, loop1754_done
    shift $P1747, $P1742
  loop1754_redo:
    .const 'Sub' $P1749 = "112_1307873277.81238" 
    capture_lex $P1749
    $P1749($P1747)
  loop1754_next:
    goto loop1754_test
  loop1754_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1756, exception, 'type'
    eq $P1756, .CONTROL_LOOP_NEXT, loop1754_next
    eq $P1756, .CONTROL_LOOP_REDO, loop1754_redo
  loop1754_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 827
    find_lex $P1757, "$obj"
    unless_null $P1757, vivify_708
    new $P1757, "Undef"
  vivify_708:
    find_lex $P1758, "@tc"
    unless_null $P1758, vivify_709
    $P1758 = root_new ['parrot';'ResizablePMCArray']
  vivify_709:
    publish_type_check_cache $P1757, $P1758
.annotate 'line', 823
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1733"  :anon :subid("111_1307873277.81238") :outer("110_1307873277.81238")
    .param pmc param_1735
.annotate 'line', 825
    .lex "$_", param_1735
    find_lex $P1736, "@tc"
    unless_null $P1736, vivify_702
    $P1736 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    find_lex $P1737, "$_"
    unless_null $P1737, vivify_703
    new $P1737, "Undef"
  vivify_703:
    $P1738 = $P1736."push"($P1737)
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1748"  :anon :subid("112_1307873277.81238") :outer("110_1307873277.81238")
    .param pmc param_1750
.annotate 'line', 826
    .lex "$_", param_1750
    find_lex $P1751, "@tc"
    unless_null $P1751, vivify_706
    $P1751 = root_new ['parrot';'ResizablePMCArray']
  vivify_706:
    find_lex $P1752, "$_"
    unless_null $P1752, vivify_707
    new $P1752, "Undef"
  vivify_707:
    $P1753 = $P1751."push"($P1752)
    .return ($P1753)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache" :anon :subid("113_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1760
    .param pmc param_1761
.annotate 'line', 830
    .const 'Sub' $P1771 = "114_1307873277.81238" 
    capture_lex $P1771
    .lex "self", param_1760
    .lex "$obj", param_1761
.annotate 'line', 833
    $P1762 = root_new ['parrot';'Hash']
    .lex "%cache", $P1762
.annotate 'line', 830
    find_lex $P1763, "%cache"
    unless_null $P1763, vivify_710
    $P1763 = root_new ['parrot';'Hash']
  vivify_710:
.annotate 'line', 834
    find_lex $P1765, "self"
    find_lex $P1766, "$?CLASS"
    getattribute $P1767, $P1765, $P1766, "@!mro"
    unless_null $P1767, vivify_711
    $P1767 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    defined $I1768, $P1767
    unless $I1768, for_undef_712
    iter $P1764, $P1767
    new $P1800, 'ExceptionHandler'
    set_label $P1800, loop1799_handler
    $P1800."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1800
  loop1799_test:
    unless $P1764, loop1799_done
    shift $P1769, $P1764
  loop1799_redo:
    .const 'Sub' $P1771 = "114_1307873277.81238" 
    capture_lex $P1771
    $P1771($P1769)
  loop1799_next:
    goto loop1799_test
  loop1799_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1801, exception, 'type'
    eq $P1801, .CONTROL_LOOP_NEXT, loop1799_next
    eq $P1801, .CONTROL_LOOP_REDO, loop1799_redo
  loop1799_done:
    pop_eh 
  for_undef_712:
.annotate 'line', 842
    find_lex $P1802, "$obj"
    unless_null $P1802, vivify_723
    new $P1802, "Undef"
  vivify_723:
    find_lex $P1803, "%cache"
    unless_null $P1803, vivify_724
    $P1803 = root_new ['parrot';'Hash']
  vivify_724:
    publish_method_cache $P1802, $P1803
.annotate 'line', 830
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1770"  :anon :subid("114_1307873277.81238") :outer("113_1307873277.81238")
    .param pmc param_1773
.annotate 'line', 834
    .const 'Sub' $P1783 = "115_1307873277.81238" 
    capture_lex $P1783
.annotate 'line', 835
    $P1772 = root_new ['parrot';'Hash']
    .lex "%methods", $P1772
    .lex "$_", param_1773
    find_lex $P1774, "$_"
    unless_null $P1774, vivify_713
    new $P1774, "Undef"
  vivify_713:
    get_how $P1775, $P1774
    find_lex $P1776, "$_"
    unless_null $P1776, vivify_714
    new $P1776, "Undef"
  vivify_714:
    $P1777 = $P1775."method_table"($P1776)
    store_lex "%methods", $P1777
.annotate 'line', 836
    find_lex $P1779, "%methods"
    unless_null $P1779, vivify_715
    $P1779 = root_new ['parrot';'Hash']
  vivify_715:
    defined $I1780, $P1779
    unless $I1780, for_undef_716
    iter $P1778, $P1779
    new $P1797, 'ExceptionHandler'
    set_label $P1797, loop1796_handler
    $P1797."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1797
  loop1796_test:
    unless $P1778, loop1796_done
    shift $P1781, $P1778
  loop1796_redo:
    .const 'Sub' $P1783 = "115_1307873277.81238" 
    capture_lex $P1783
    $P1783($P1781)
  loop1796_next:
    goto loop1796_test
  loop1796_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1798, exception, 'type'
    eq $P1798, .CONTROL_LOOP_NEXT, loop1796_next
    eq $P1798, .CONTROL_LOOP_REDO, loop1796_redo
  loop1796_done:
    pop_eh 
  for_undef_716:
.annotate 'line', 834
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1782"  :anon :subid("115_1307873277.81238") :outer("114_1307873277.81238")
    .param pmc param_1784
.annotate 'line', 836
    .lex "$_", param_1784
.annotate 'line', 837
    find_lex $P1787, "$_"
    unless_null $P1787, vivify_717
    new $P1787, "Undef"
  vivify_717:
    $P1788 = $P1787."key"()
    find_lex $P1789, "%cache"
    unless_null $P1789, vivify_718
    $P1789 = root_new ['parrot';'Hash']
  vivify_718:
    set $P1790, $P1789[$P1788]
    unless_null $P1790, vivify_719
    new $P1790, "Undef"
  vivify_719:
    unless $P1790, unless_1786
    set $P1785, $P1790
    goto unless_1786_end
  unless_1786:
.annotate 'line', 838
    find_lex $P1791, "$_"
    unless_null $P1791, vivify_720
    new $P1791, "Undef"
  vivify_720:
    $P1792 = $P1791."value"()
    find_lex $P1793, "$_"
    unless_null $P1793, vivify_721
    new $P1793, "Undef"
  vivify_721:
    $P1794 = $P1793."key"()
    find_lex $P1795, "%cache"
    unless_null $P1795, vivify_722
    $P1795 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1795
  vivify_722:
    set $P1795[$P1794], $P1792
.annotate 'line', 837
    set $P1785, $P1792
  unless_1786_end:
.annotate 'line', 836
    .return ($P1785)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping" :anon :subid("116_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1805
    .param pmc param_1806
.annotate 'line', 845
    .const 'Sub' $P1816 = "117_1307873277.81238" 
    capture_lex $P1816
    .lex "self", param_1805
    .lex "$obj", param_1806
.annotate 'line', 846
    $P1807 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1807
.annotate 'line', 845
    find_lex $P1808, "%mapping"
    unless_null $P1808, vivify_725
    $P1808 = root_new ['parrot';'Hash']
  vivify_725:
.annotate 'line', 847
    find_lex $P1810, "self"
    find_lex $P1811, "$?CLASS"
    getattribute $P1812, $P1810, $P1811, "@!mro"
    unless_null $P1812, vivify_726
    $P1812 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    defined $I1813, $P1812
    unless $I1813, for_undef_727
    iter $P1809, $P1812
    new $P1845, 'ExceptionHandler'
    set_label $P1845, loop1844_handler
    $P1845."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1845
  loop1844_test:
    unless $P1809, loop1844_done
    shift $P1814, $P1809
  loop1844_redo:
    .const 'Sub' $P1816 = "117_1307873277.81238" 
    capture_lex $P1816
    $P1816($P1814)
  loop1844_next:
    goto loop1844_test
  loop1844_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1846, exception, 'type'
    eq $P1846, .CONTROL_LOOP_NEXT, loop1844_next
    eq $P1846, .CONTROL_LOOP_REDO, loop1844_redo
  loop1844_done:
    pop_eh 
  for_undef_727:
.annotate 'line', 855
    find_lex $P1849, "%mapping"
    unless_null $P1849, vivify_738
    $P1849 = root_new ['parrot';'Hash']
  vivify_738:
    set $N1850, $P1849
    if $N1850, if_1848
    new $P1847, 'Float'
    set $P1847, $N1850
    goto if_1848_end
  if_1848:
.annotate 'line', 856
    find_lex $P1851, "$obj"
    unless_null $P1851, vivify_739
    new $P1851, "Undef"
  vivify_739:
    find_lex $P1852, "%mapping"
    unless_null $P1852, vivify_740
    $P1852 = root_new ['parrot';'Hash']
  vivify_740:
    stable_publish_vtable_mapping $P1851, $P1852
  if_1848_end:
.annotate 'line', 845
    .return ($P1847)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1815"  :anon :subid("117_1307873277.81238") :outer("116_1307873277.81238")
    .param pmc param_1818
.annotate 'line', 847
    .const 'Sub' $P1828 = "118_1307873277.81238" 
    capture_lex $P1828
.annotate 'line', 848
    $P1817 = root_new ['parrot';'Hash']
    .lex "%map", $P1817
    .lex "$_", param_1818
    find_lex $P1819, "$_"
    unless_null $P1819, vivify_728
    new $P1819, "Undef"
  vivify_728:
    get_how $P1820, $P1819
    find_lex $P1821, "$_"
    unless_null $P1821, vivify_729
    new $P1821, "Undef"
  vivify_729:
    $P1822 = $P1820."parrot_vtable_mappings"($P1821, 1 :named("local"))
    store_lex "%map", $P1822
.annotate 'line', 849
    find_lex $P1824, "%map"
    unless_null $P1824, vivify_730
    $P1824 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I1825, $P1824
    unless $I1825, for_undef_731
    iter $P1823, $P1824
    new $P1842, 'ExceptionHandler'
    set_label $P1842, loop1841_handler
    $P1842."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1842
  loop1841_test:
    unless $P1823, loop1841_done
    shift $P1826, $P1823
  loop1841_redo:
    .const 'Sub' $P1828 = "118_1307873277.81238" 
    capture_lex $P1828
    $P1828($P1826)
  loop1841_next:
    goto loop1841_test
  loop1841_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1843, exception, 'type'
    eq $P1843, .CONTROL_LOOP_NEXT, loop1841_next
    eq $P1843, .CONTROL_LOOP_REDO, loop1841_redo
  loop1841_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 847
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1827"  :anon :subid("118_1307873277.81238") :outer("117_1307873277.81238")
    .param pmc param_1829
.annotate 'line', 849
    .lex "$_", param_1829
.annotate 'line', 850
    find_lex $P1832, "$_"
    unless_null $P1832, vivify_732
    new $P1832, "Undef"
  vivify_732:
    $P1833 = $P1832."key"()
    find_lex $P1834, "%mapping"
    unless_null $P1834, vivify_733
    $P1834 = root_new ['parrot';'Hash']
  vivify_733:
    set $P1835, $P1834[$P1833]
    unless_null $P1835, vivify_734
    new $P1835, "Undef"
  vivify_734:
    unless $P1835, unless_1831
    set $P1830, $P1835
    goto unless_1831_end
  unless_1831:
.annotate 'line', 851
    find_lex $P1836, "$_"
    unless_null $P1836, vivify_735
    new $P1836, "Undef"
  vivify_735:
    $P1837 = $P1836."value"()
    find_lex $P1838, "$_"
    unless_null $P1838, vivify_736
    new $P1838, "Undef"
  vivify_736:
    $P1839 = $P1838."key"()
    find_lex $P1840, "%mapping"
    unless_null $P1840, vivify_737
    $P1840 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1840
  vivify_737:
    set $P1840[$P1839], $P1837
.annotate 'line', 850
    set $P1830, $P1837
  unless_1831_end:
.annotate 'line', 849
    .return ($P1830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtablee_handler_mapping" :anon :subid("119_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1854
    .param pmc param_1855
.annotate 'line', 860
    .const 'Sub' $P1865 = "120_1307873277.81238" 
    capture_lex $P1865
    .lex "self", param_1854
    .lex "$obj", param_1855
.annotate 'line', 861
    $P1856 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1856
.annotate 'line', 860
    find_lex $P1857, "%mapping"
    unless_null $P1857, vivify_741
    $P1857 = root_new ['parrot';'Hash']
  vivify_741:
.annotate 'line', 862
    find_lex $P1859, "self"
    find_lex $P1860, "$?CLASS"
    getattribute $P1861, $P1859, $P1860, "@!mro"
    unless_null $P1861, vivify_742
    $P1861 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
    defined $I1862, $P1861
    unless $I1862, for_undef_743
    iter $P1858, $P1861
    new $P1894, 'ExceptionHandler'
    set_label $P1894, loop1893_handler
    $P1894."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1894
  loop1893_test:
    unless $P1858, loop1893_done
    shift $P1863, $P1858
  loop1893_redo:
    .const 'Sub' $P1865 = "120_1307873277.81238" 
    capture_lex $P1865
    $P1865($P1863)
  loop1893_next:
    goto loop1893_test
  loop1893_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1895, exception, 'type'
    eq $P1895, .CONTROL_LOOP_NEXT, loop1893_next
    eq $P1895, .CONTROL_LOOP_REDO, loop1893_redo
  loop1893_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 870
    find_lex $P1898, "%mapping"
    unless_null $P1898, vivify_754
    $P1898 = root_new ['parrot';'Hash']
  vivify_754:
    set $N1899, $P1898
    if $N1899, if_1897
    new $P1896, 'Float'
    set $P1896, $N1899
    goto if_1897_end
  if_1897:
.annotate 'line', 871
    find_lex $P1900, "$obj"
    unless_null $P1900, vivify_755
    new $P1900, "Undef"
  vivify_755:
    find_lex $P1901, "%mapping"
    unless_null $P1901, vivify_756
    $P1901 = root_new ['parrot';'Hash']
  vivify_756:
    stable_publish_vtable_handler_mapping $P1900, $P1901
  if_1897_end:
.annotate 'line', 860
    .return ($P1896)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1864"  :anon :subid("120_1307873277.81238") :outer("119_1307873277.81238")
    .param pmc param_1867
.annotate 'line', 862
    .const 'Sub' $P1877 = "121_1307873277.81238" 
    capture_lex $P1877
.annotate 'line', 863
    $P1866 = root_new ['parrot';'Hash']
    .lex "%map", $P1866
    .lex "$_", param_1867
    find_lex $P1868, "$_"
    unless_null $P1868, vivify_744
    new $P1868, "Undef"
  vivify_744:
    get_how $P1869, $P1868
    find_lex $P1870, "$_"
    unless_null $P1870, vivify_745
    new $P1870, "Undef"
  vivify_745:
    $P1871 = $P1869."parrot_vtable_handler_mappings"($P1870, 1 :named("local"))
    store_lex "%map", $P1871
.annotate 'line', 864
    find_lex $P1873, "%map"
    unless_null $P1873, vivify_746
    $P1873 = root_new ['parrot';'Hash']
  vivify_746:
    defined $I1874, $P1873
    unless $I1874, for_undef_747
    iter $P1872, $P1873
    new $P1891, 'ExceptionHandler'
    set_label $P1891, loop1890_handler
    $P1891."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1891
  loop1890_test:
    unless $P1872, loop1890_done
    shift $P1875, $P1872
  loop1890_redo:
    .const 'Sub' $P1877 = "121_1307873277.81238" 
    capture_lex $P1877
    $P1877($P1875)
  loop1890_next:
    goto loop1890_test
  loop1890_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1892, exception, 'type'
    eq $P1892, .CONTROL_LOOP_NEXT, loop1890_next
    eq $P1892, .CONTROL_LOOP_REDO, loop1890_redo
  loop1890_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 862
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1876"  :anon :subid("121_1307873277.81238") :outer("120_1307873277.81238")
    .param pmc param_1878
.annotate 'line', 864
    .lex "$_", param_1878
.annotate 'line', 865
    find_lex $P1881, "$_"
    unless_null $P1881, vivify_748
    new $P1881, "Undef"
  vivify_748:
    $P1882 = $P1881."key"()
    find_lex $P1883, "%mapping"
    unless_null $P1883, vivify_749
    $P1883 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1884, $P1883[$P1882]
    unless_null $P1884, vivify_750
    new $P1884, "Undef"
  vivify_750:
    unless $P1884, unless_1880
    set $P1879, $P1884
    goto unless_1880_end
  unless_1880:
.annotate 'line', 866
    find_lex $P1885, "$_"
    unless_null $P1885, vivify_751
    new $P1885, "Undef"
  vivify_751:
    $P1886 = $P1885."value"()
    find_lex $P1887, "$_"
    unless_null $P1887, vivify_752
    new $P1887, "Undef"
  vivify_752:
    $P1888 = $P1887."key"()
    find_lex $P1889, "%mapping"
    unless_null $P1889, vivify_753
    $P1889 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1889
  vivify_753:
    set $P1889[$P1888], $P1886
.annotate 'line', 865
    set $P1879, $P1886
  unless_1880_end:
.annotate 'line', 864
    .return ($P1879)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents" :anon :subid("122_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1903
    .param pmc param_1904
    .param pmc param_1905 :optional :named("local")
    .param int has_param_1905 :opt_flag
.annotate 'line', 878
    .lex "self", param_1903
    .lex "$obj", param_1904
    if has_param_1905, optparam_757
    new $P1906, "Undef"
    set param_1905, $P1906
  optparam_757:
    .lex "$local", param_1905
.annotate 'line', 879
    find_lex $P1909, "$local"
    unless_null $P1909, vivify_758
    new $P1909, "Undef"
  vivify_758:
    if $P1909, if_1908
    find_lex $P1913, "self"
    find_lex $P1914, "$?CLASS"
    getattribute $P1915, $P1913, $P1914, "@!mro"
    unless_null $P1915, vivify_759
    $P1915 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1907, $P1915
    goto if_1908_end
  if_1908:
    find_lex $P1910, "self"
    find_lex $P1911, "$?CLASS"
    getattribute $P1912, $P1910, $P1911, "@!parents"
    unless_null $P1912, vivify_760
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    set $P1907, $P1912
  if_1908_end:
.annotate 'line', 878
    .return ($P1907)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles" :anon :subid("123_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1917
    .param pmc param_1918
    .param pmc param_1919 :named("local")
.annotate 'line', 882
    .lex "self", param_1917
    .lex "$obj", param_1918
    .lex "$local", param_1919
    find_lex $P1920, "self"
    find_lex $P1921, "$?CLASS"
    getattribute $P1922, $P1920, $P1921, "@!roles"
    unless_null $P1922, vivify_761
    $P1922 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    .return ($P1922)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods" :anon :subid("124_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1924
    .param pmc param_1925
    .param pmc param_1926 :named("local")
.annotate 'line', 886
    .const 'Sub' $P1936 = "125_1307873277.81238" 
    capture_lex $P1936
    .lex "self", param_1924
    .lex "$obj", param_1925
    .lex "$local", param_1926
.annotate 'line', 887
    $P1927 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1927
.annotate 'line', 886
    find_lex $P1928, "@meths"
    unless_null $P1928, vivify_762
    $P1928 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
.annotate 'line', 888
    find_lex $P1930, "self"
    find_lex $P1931, "$?CLASS"
    getattribute $P1932, $P1930, $P1931, "%!methods"
    unless_null $P1932, vivify_763
    $P1932 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I1933, $P1932
    unless $I1933, for_undef_764
    iter $P1929, $P1932
    new $P1943, 'ExceptionHandler'
    set_label $P1943, loop1942_handler
    $P1943."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1943
  loop1942_test:
    unless $P1929, loop1942_done
    shift $P1934, $P1929
  loop1942_redo:
    .const 'Sub' $P1936 = "125_1307873277.81238" 
    capture_lex $P1936
    $P1936($P1934)
  loop1942_next:
    goto loop1942_test
  loop1942_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1944, exception, 'type'
    eq $P1944, .CONTROL_LOOP_NEXT, loop1942_next
    eq $P1944, .CONTROL_LOOP_REDO, loop1942_redo
  loop1942_done:
    pop_eh 
  for_undef_764:
    find_lex $P1945, "@meths"
    unless_null $P1945, vivify_767
    $P1945 = root_new ['parrot';'ResizablePMCArray']
  vivify_767:
.annotate 'line', 886
    .return ($P1945)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1935"  :anon :subid("125_1307873277.81238") :outer("124_1307873277.81238")
    .param pmc param_1937
.annotate 'line', 888
    .lex "$_", param_1937
.annotate 'line', 889
    find_lex $P1938, "@meths"
    unless_null $P1938, vivify_765
    $P1938 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    find_lex $P1939, "$_"
    unless_null $P1939, vivify_766
    new $P1939, "Undef"
  vivify_766:
    $P1940 = $P1939."value"()
    $P1941 = $P1938."push"($P1940)
.annotate 'line', 888
    .return ($P1941)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table" :anon :subid("126_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1947
    .param pmc param_1948
.annotate 'line', 894
    .lex "self", param_1947
    .lex "$obj", param_1948
    find_lex $P1949, "self"
    find_lex $P1950, "$?CLASS"
    getattribute $P1951, $P1949, $P1950, "%!methods"
    unless_null $P1951, vivify_768
    $P1951 = root_new ['parrot';'Hash']
  vivify_768:
    .return ($P1951)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name" :anon :subid("127_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1953
    .param pmc param_1954
.annotate 'line', 898
    .lex "self", param_1953
    .lex "$obj", param_1954
    find_lex $P1955, "self"
    find_lex $P1956, "$?CLASS"
    getattribute $P1957, $P1955, $P1956, "$!name"
    unless_null $P1957, vivify_769
    new $P1957, "Undef"
  vivify_769:
    .return ($P1957)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes" :anon :subid("128_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1959
    .param pmc param_1960
    .param pmc param_1961 :named("local")
.annotate 'line', 902
    .const 'Sub' $P1971 = "129_1307873277.81238" 
    capture_lex $P1971
    .lex "self", param_1959
    .lex "$obj", param_1960
    .lex "$local", param_1961
.annotate 'line', 903
    $P1962 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1962
.annotate 'line', 902
    find_lex $P1963, "@attrs"
    unless_null $P1963, vivify_770
    $P1963 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
.annotate 'line', 904
    find_lex $P1965, "self"
    find_lex $P1966, "$?CLASS"
    getattribute $P1967, $P1965, $P1966, "%!attributes"
    unless_null $P1967, vivify_771
    $P1967 = root_new ['parrot';'Hash']
  vivify_771:
    defined $I1968, $P1967
    unless $I1968, for_undef_772
    iter $P1964, $P1967
    new $P1978, 'ExceptionHandler'
    set_label $P1978, loop1977_handler
    $P1978."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1978
  loop1977_test:
    unless $P1964, loop1977_done
    shift $P1969, $P1964
  loop1977_redo:
    .const 'Sub' $P1971 = "129_1307873277.81238" 
    capture_lex $P1971
    $P1971($P1969)
  loop1977_next:
    goto loop1977_test
  loop1977_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1979, exception, 'type'
    eq $P1979, .CONTROL_LOOP_NEXT, loop1977_next
    eq $P1979, .CONTROL_LOOP_REDO, loop1977_redo
  loop1977_done:
    pop_eh 
  for_undef_772:
    find_lex $P1980, "@attrs"
    unless_null $P1980, vivify_775
    $P1980 = root_new ['parrot';'ResizablePMCArray']
  vivify_775:
.annotate 'line', 902
    .return ($P1980)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1970"  :anon :subid("129_1307873277.81238") :outer("128_1307873277.81238")
    .param pmc param_1972
.annotate 'line', 904
    .lex "$_", param_1972
.annotate 'line', 905
    find_lex $P1973, "@attrs"
    unless_null $P1973, vivify_773
    $P1973 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    find_lex $P1974, "$_"
    unless_null $P1974, vivify_774
    new $P1974, "Undef"
  vivify_774:
    $P1975 = $P1974."value"()
    $P1976 = $P1973."push"($P1975)
.annotate 'line', 904
    .return ($P1976)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings" :anon :subid("130_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1982
    .param pmc param_1983
    .param pmc param_1984 :named("local")
.annotate 'line', 910
    .lex "self", param_1982
    .lex "$obj", param_1983
    .lex "$local", param_1984
    find_lex $P1985, "self"
    find_lex $P1986, "$?CLASS"
    getattribute $P1987, $P1985, $P1986, "%!parrot_vtable_mapping"
    unless_null $P1987, vivify_776
    $P1987 = root_new ['parrot';'Hash']
  vivify_776:
    .return ($P1987)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_handler_mappings" :anon :subid("131_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1989
    .param pmc param_1990
    .param pmc param_1991 :named("local")
.annotate 'line', 914
    .lex "self", param_1989
    .lex "$obj", param_1990
    .lex "$local", param_1991
    find_lex $P1992, "self"
    find_lex $P1993, "$?CLASS"
    getattribute $P1994, $P1992, $P1993, "%!parrot_vtable_handler_mapping"
    unless_null $P1994, vivify_777
    $P1994 = root_new ['parrot';'Hash']
  vivify_777:
    .return ($P1994)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa" :anon :subid("132_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_1998
    .param pmc param_1999
    .param pmc param_2000
.annotate 'line', 922
    new $P1997, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1997, control_1996
    push_eh $P1997
    .lex "self", param_1998
    .lex "$obj", param_1999
    .lex "$check", param_2000
.annotate 'line', 923
    new $P2001, "Undef"
    .lex "$check-class", $P2001
.annotate 'line', 924
    new $P2002, "Undef"
    .lex "$i", $P2002
.annotate 'line', 923
    find_lex $P2003, "$check"
    unless_null $P2003, vivify_778
    new $P2003, "Undef"
  vivify_778:
    get_what $P2004, $P2003
    store_lex "$check-class", $P2004
.annotate 'line', 924
    find_lex $P2005, "self"
    find_lex $P2006, "$?CLASS"
    getattribute $P2007, $P2005, $P2006, "@!mro"
    unless_null $P2007, vivify_779
    $P2007 = root_new ['parrot';'ResizablePMCArray']
  vivify_779:
    set $N2008, $P2007
    new $P2009, 'Float'
    set $P2009, $N2008
    store_lex "$i", $P2009
.annotate 'line', 925
    new $P2027, 'ExceptionHandler'
    set_label $P2027, loop2026_handler
    $P2027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2027
  loop2026_test:
    find_lex $P2010, "$i"
    unless_null $P2010, vivify_780
    new $P2010, "Undef"
  vivify_780:
    set $N2011, $P2010
    isgt $I2012, $N2011, 0.0
    unless $I2012, loop2026_done
  loop2026_redo:
.annotate 'line', 926
    find_lex $P2013, "$i"
    unless_null $P2013, vivify_781
    new $P2013, "Undef"
  vivify_781:
    sub $P2014, $P2013, 1
    store_lex "$i", $P2014
.annotate 'line', 927
    find_lex $P2016, "$i"
    unless_null $P2016, vivify_782
    new $P2016, "Undef"
  vivify_782:
    set $I2017, $P2016
    find_lex $P2018, "self"
    find_lex $P2019, "$?CLASS"
    getattribute $P2020, $P2018, $P2019, "@!mro"
    unless_null $P2020, vivify_783
    $P2020 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    set $P2021, $P2020[$I2017]
    unless_null $P2021, vivify_784
    new $P2021, "Undef"
  vivify_784:
    find_lex $P2022, "$check-class"
    unless_null $P2022, vivify_785
    new $P2022, "Undef"
  vivify_785:
    issame $I2023, $P2021, $P2022
    unless $I2023, if_2015_end
.annotate 'line', 928
    new $P2024, "Exception"
    set $P2024['type'], .CONTROL_RETURN
    new $P2025, "Integer"
    assign $P2025, 1
    setattribute $P2024, 'payload', $P2025
    throw $P2024
  if_2015_end:
  loop2026_next:
.annotate 'line', 925
    goto loop2026_test
  loop2026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2028, exception, 'type'
    eq $P2028, .CONTROL_LOOP_NEXT, loop2026_next
    eq $P2028, .CONTROL_LOOP_REDO, loop2026_redo
  loop2026_done:
    pop_eh 
.annotate 'line', 931
    new $P2029, "Exception"
    set $P2029['type'], .CONTROL_RETURN
    new $P2030, "Integer"
    assign $P2030, 0
    setattribute $P2029, 'payload', $P2030
    throw $P2029
.annotate 'line', 922
    .return ()
  control_1996:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2031, exception, "payload"
    .return ($P2031)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does" :anon :subid("133_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_2035
    .param pmc param_2036
    .param pmc param_2037
.annotate 'line', 934
    new $P2034, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2034, control_2033
    push_eh $P2034
    .lex "self", param_2035
    .lex "$obj", param_2036
    .lex "$check", param_2037
.annotate 'line', 935
    new $P2038, "Undef"
    .lex "$i", $P2038
    find_lex $P2039, "self"
    find_lex $P2040, "$?CLASS"
    getattribute $P2041, $P2039, $P2040, "@!done"
    unless_null $P2041, vivify_786
    $P2041 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $N2042, $P2041
    new $P2043, 'Float'
    set $P2043, $N2042
    store_lex "$i", $P2043
.annotate 'line', 936
    new $P2061, 'ExceptionHandler'
    set_label $P2061, loop2060_handler
    $P2061."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2061
  loop2060_test:
    find_lex $P2044, "$i"
    unless_null $P2044, vivify_787
    new $P2044, "Undef"
  vivify_787:
    set $N2045, $P2044
    isgt $I2046, $N2045, 0.0
    unless $I2046, loop2060_done
  loop2060_redo:
.annotate 'line', 937
    find_lex $P2047, "$i"
    unless_null $P2047, vivify_788
    new $P2047, "Undef"
  vivify_788:
    sub $P2048, $P2047, 1
    store_lex "$i", $P2048
.annotate 'line', 938
    find_lex $P2050, "$i"
    unless_null $P2050, vivify_789
    new $P2050, "Undef"
  vivify_789:
    set $I2051, $P2050
    find_lex $P2052, "self"
    find_lex $P2053, "$?CLASS"
    getattribute $P2054, $P2052, $P2053, "@!done"
    unless_null $P2054, vivify_790
    $P2054 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    set $P2055, $P2054[$I2051]
    unless_null $P2055, vivify_791
    new $P2055, "Undef"
  vivify_791:
    find_lex $P2056, "$check"
    unless_null $P2056, vivify_792
    new $P2056, "Undef"
  vivify_792:
    issame $I2057, $P2055, $P2056
    unless $I2057, if_2049_end
.annotate 'line', 939
    new $P2058, "Exception"
    set $P2058['type'], .CONTROL_RETURN
    new $P2059, "Integer"
    assign $P2059, 1
    setattribute $P2058, 'payload', $P2059
    throw $P2058
  if_2049_end:
  loop2060_next:
.annotate 'line', 936
    goto loop2060_test
  loop2060_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2062, exception, 'type'
    eq $P2062, .CONTROL_LOOP_NEXT, loop2060_next
    eq $P2062, .CONTROL_LOOP_REDO, loop2060_redo
  loop2060_done:
    pop_eh 
.annotate 'line', 942
    new $P2063, "Exception"
    set $P2063['type'], .CONTROL_RETURN
    new $P2064, "Integer"
    assign $P2064, 0
    setattribute $P2063, 'payload', $P2064
    throw $P2063
.annotate 'line', 934
    .return ()
  control_2033:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2065, exception, "payload"
    .return ($P2065)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can" :anon :subid("134_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_2069
    .param pmc param_2070
    .param pmc param_2071
.annotate 'line', 945
    .const 'Sub' $P2079 = "135_1307873277.81238" 
    capture_lex $P2079
    new $P2068, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2068, control_2067
    push_eh $P2068
    .lex "self", param_2069
    .lex "$obj", param_2070
    .lex "$name", param_2071
.annotate 'line', 946
    find_lex $P2073, "self"
    find_lex $P2074, "$?CLASS"
    getattribute $P2075, $P2073, $P2074, "@!mro"
    unless_null $P2075, vivify_793
    $P2075 = root_new ['parrot';'ResizablePMCArray']
  vivify_793:
    defined $I2076, $P2075
    unless $I2076, for_undef_794
    iter $P2072, $P2075
    new $P2097, 'ExceptionHandler'
    set_label $P2097, loop2096_handler
    $P2097."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2097
  loop2096_test:
    unless $P2072, loop2096_done
    shift $P2077, $P2072
  loop2096_redo:
    .const 'Sub' $P2079 = "135_1307873277.81238" 
    capture_lex $P2079
    $P2079($P2077)
  loop2096_next:
    goto loop2096_test
  loop2096_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2098, exception, 'type'
    eq $P2098, .CONTROL_LOOP_NEXT, loop2096_next
    eq $P2098, .CONTROL_LOOP_REDO, loop2096_redo
  loop2096_done:
    pop_eh 
  for_undef_794:
.annotate 'line', 953
    new $P2099, "Exception"
    set $P2099['type'], .CONTROL_RETURN
    new $P2100, "Integer"
    assign $P2100, 0
    setattribute $P2099, 'payload', $P2100
    throw $P2099
.annotate 'line', 945
    .return ()
  control_2067:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2101, exception, "payload"
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2078"  :anon :subid("135_1307873277.81238") :outer("134_1307873277.81238")
    .param pmc param_2082
.annotate 'line', 947
    $P2080 = root_new ['parrot';'Hash']
    .lex "%meths", $P2080
.annotate 'line', 948
    new $P2081, "Undef"
    .lex "$can", $P2081
    .lex "$_", param_2082
.annotate 'line', 947
    find_lex $P2083, "$_"
    unless_null $P2083, vivify_795
    new $P2083, "Undef"
  vivify_795:
    get_how $P2084, $P2083
    find_lex $P2085, "$obj"
    unless_null $P2085, vivify_796
    new $P2085, "Undef"
  vivify_796:
    $P2086 = $P2084."method_table"($P2085)
    store_lex "%meths", $P2086
.annotate 'line', 948
    find_lex $P2087, "$name"
    unless_null $P2087, vivify_797
    new $P2087, "Undef"
  vivify_797:
    find_lex $P2088, "%meths"
    unless_null $P2088, vivify_798
    $P2088 = root_new ['parrot';'Hash']
  vivify_798:
    set $P2089, $P2088[$P2087]
    unless_null $P2089, vivify_799
    new $P2089, "Undef"
  vivify_799:
    store_lex "$can", $P2089
.annotate 'line', 949
    find_lex $P2092, "$can"
    unless_null $P2092, vivify_800
    new $P2092, "Undef"
  vivify_800:
    defined $I2093, $P2092
    if $I2093, if_2091
    new $P2090, 'Integer'
    set $P2090, $I2093
    goto if_2091_end
  if_2091:
.annotate 'line', 950
    new $P2094, "Exception"
    set $P2094['type'], .CONTROL_RETURN
    find_lex $P2095, "$can"
    unless_null $P2095, vivify_801
    new $P2095, "Undef"
  vivify_801:
    setattribute $P2094, 'payload', $P2095
    throw $P2094
  if_2091_end:
.annotate 'line', 946
    .return ($P2090)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method" :anon :subid("136_1307873277.81238") :outer("77_1307873277.81238")
    .param pmc param_2105
    .param pmc param_2106
    .param pmc param_2107
.annotate 'line', 959
    .const 'Sub' $P2115 = "137_1307873277.81238" 
    capture_lex $P2115
    new $P2104, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2104, control_2103
    push_eh $P2104
    .lex "self", param_2105
    .lex "$obj", param_2106
    .lex "$name", param_2107
.annotate 'line', 960
    find_lex $P2109, "self"
    find_lex $P2110, "$?CLASS"
    getattribute $P2111, $P2109, $P2110, "@!mro"
    unless_null $P2111, vivify_802
    $P2111 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    defined $I2112, $P2111
    unless $I2112, for_undef_803
    iter $P2108, $P2111
    new $P2133, 'ExceptionHandler'
    set_label $P2133, loop2132_handler
    $P2133."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2133
  loop2132_test:
    unless $P2108, loop2132_done
    shift $P2113, $P2108
  loop2132_redo:
    .const 'Sub' $P2115 = "137_1307873277.81238" 
    capture_lex $P2115
    $P2115($P2113)
  loop2132_next:
    goto loop2132_test
  loop2132_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2134, exception, 'type'
    eq $P2134, .CONTROL_LOOP_NEXT, loop2132_next
    eq $P2134, .CONTROL_LOOP_REDO, loop2132_redo
  loop2132_done:
    pop_eh 
  for_undef_803:
.annotate 'line', 967
    null $P2135
.annotate 'line', 959
    .return ($P2135)
  control_2103:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2136, exception, "payload"
    .return ($P2136)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2114"  :anon :subid("137_1307873277.81238") :outer("136_1307873277.81238")
    .param pmc param_2118
.annotate 'line', 961
    $P2116 = root_new ['parrot';'Hash']
    .lex "%meths", $P2116
.annotate 'line', 962
    new $P2117, "Undef"
    .lex "$found", $P2117
    .lex "$_", param_2118
.annotate 'line', 961
    find_lex $P2119, "$_"
    unless_null $P2119, vivify_804
    new $P2119, "Undef"
  vivify_804:
    get_how $P2120, $P2119
    find_lex $P2121, "$obj"
    unless_null $P2121, vivify_805
    new $P2121, "Undef"
  vivify_805:
    $P2122 = $P2120."method_table"($P2121)
    store_lex "%meths", $P2122
.annotate 'line', 962
    find_lex $P2123, "$name"
    unless_null $P2123, vivify_806
    new $P2123, "Undef"
  vivify_806:
    find_lex $P2124, "%meths"
    unless_null $P2124, vivify_807
    $P2124 = root_new ['parrot';'Hash']
  vivify_807:
    set $P2125, $P2124[$P2123]
    unless_null $P2125, vivify_808
    new $P2125, "Undef"
  vivify_808:
    store_lex "$found", $P2125
.annotate 'line', 963
    find_lex $P2128, "$found"
    unless_null $P2128, vivify_809
    new $P2128, "Undef"
  vivify_809:
    defined $I2129, $P2128
    if $I2129, if_2127
    new $P2126, 'Integer'
    set $P2126, $I2129
    goto if_2127_end
  if_2127:
.annotate 'line', 964
    new $P2130, "Exception"
    set $P2130['type'], .CONTROL_RETURN
    find_lex $P2131, "$found"
    unless_null $P2131, vivify_810
    new $P2131, "Undef"
  vivify_810:
    setattribute $P2130, 'payload', $P2131
    throw $P2130
  if_2127_end:
.annotate 'line', 960
    .return ($P2126)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2138"  :subid("138_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 972
    .const 'Sub' $P2193 = "146_1307873277.81238" 
    capture_lex $P2193
    .const 'Sub' $P2187 = "145_1307873277.81238" 
    capture_lex $P2187
    .const 'Sub' $P2183 = "144_1307873277.81238" 
    capture_lex $P2183
    .const 'Sub' $P2178 = "143_1307873277.81238" 
    capture_lex $P2178
    .const 'Sub' $P2173 = "142_1307873277.81238" 
    capture_lex $P2173
    .const 'Sub' $P2159 = "141_1307873277.81238" 
    capture_lex $P2159
    .const 'Sub' $P2152 = "140_1307873277.81238" 
    capture_lex $P2152
    .const 'Sub' $P2142 = "139_1307873277.81238" 
    capture_lex $P2142
    .lex "$?PACKAGE", $P2140
    .lex "$?CLASS", $P2141
.annotate 'line', 1012
    .const 'Sub' $P2193 = "146_1307873277.81238" 
    newclosure $P2199, $P2193
.annotate 'line', 972
    .return ($P2199)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new" :anon :subid("139_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2143
    .param pmc param_2144 :optional :named("name")
    .param int has_param_2144 :opt_flag
.annotate 'line', 976
    .lex "self", param_2143
    if has_param_2144, optparam_811
    new $P2145, "Undef"
    set param_2144, $P2145
  optparam_811:
    .lex "$name", param_2144
.annotate 'line', 977
    new $P2146, "Undef"
    .lex "$obj", $P2146
    find_lex $P2147, "self"
    repr_instance_of $P2148, $P2147
    store_lex "$obj", $P2148
.annotate 'line', 978
    find_lex $P2149, "$obj"
    unless_null $P2149, vivify_812
    new $P2149, "Undef"
  vivify_812:
    find_lex $P2150, "$name"
    unless_null $P2150, vivify_813
    new $P2150, "Undef"
  vivify_813:
    $P2149."BUILD"($P2150 :named("name"))
    find_lex $P2151, "$obj"
    unless_null $P2151, vivify_814
    new $P2151, "Undef"
  vivify_814:
.annotate 'line', 976
    .return ($P2151)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD" :anon :subid("140_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2153
    .param pmc param_2154 :optional :named("name")
    .param int has_param_2154 :opt_flag
.annotate 'line', 982
    .lex "self", param_2153
    if has_param_2154, optparam_815
    new $P2155, "Undef"
    set param_2154, $P2155
  optparam_815:
    .lex "$name", param_2154
.annotate 'line', 983
    find_lex $P2156, "$name"
    unless_null $P2156, vivify_816
    new $P2156, "Undef"
  vivify_816:
    find_lex $P2157, "self"
    find_lex $P2158, "$?CLASS"
    setattribute $P2157, $P2158, "$!name", $P2156
.annotate 'line', 982
    .return ($P2156)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type" :anon :subid("141_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2160
    .param pmc param_2163 :named("repr")
    .param pmc param_2161 :optional :named("name")
    .param int has_param_2161 :opt_flag
.annotate 'line', 989
    .lex "self", param_2160
    if has_param_2161, optparam_817
    new $P2162, "String"
    assign $P2162, "<anon>"
    set param_2161, $P2162
  optparam_817:
    .lex "$name", param_2161
    .lex "$repr", param_2163
.annotate 'line', 990
    new $P2164, "Undef"
    .lex "$metaclass", $P2164
    find_lex $P2165, "self"
    find_lex $P2166, "$name"
    unless_null $P2166, vivify_818
    new $P2166, "Undef"
  vivify_818:
    $P2167 = $P2165."new"($P2166 :named("name"))
    store_lex "$metaclass", $P2167
.annotate 'line', 992
    find_lex $P2168, "$metaclass"
    unless_null $P2168, vivify_819
    new $P2168, "Undef"
  vivify_819:
    find_lex $P2169, "$repr"
    unless_null $P2169, vivify_820
    new $P2169, "Undef"
  vivify_820:
    set $S2170, $P2169
    repr_type_object_for $P2171, $P2168, $S2170
    $P2172 = root_new ['parrot';'Hash']
    set_who $P2171, $P2172
.annotate 'line', 989
    .return ($P2171)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method" :anon :subid("142_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2174
    .param pmc param_2175
    .param pmc param_2176
    .param pmc param_2177
.annotate 'line', 996
    .lex "self", param_2174
    .lex "$obj", param_2175
    .lex "$name", param_2176
    .lex "$code_obj", param_2177
.annotate 'line', 997
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 996
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method" :anon :subid("143_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2179
    .param pmc param_2180
    .param pmc param_2181
    .param pmc param_2182
.annotate 'line', 1000
    .lex "self", param_2179
    .lex "$obj", param_2180
    .lex "$name", param_2181
    .lex "$code_obj", param_2182
.annotate 'line', 1001
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 1000
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute" :anon :subid("144_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2184
    .param pmc param_2185
    .param pmc param_2186
.annotate 'line', 1004
    .lex "self", param_2184
    .lex "$obj", param_2185
    .lex "$meta_attr", param_2186
.annotate 'line', 1005
    die "Native types may not have attributes"
.annotate 'line', 1004
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose" :anon :subid("145_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2188
    .param pmc param_2189
.annotate 'line', 1008
    .lex "self", param_2188
    .lex "$obj", param_2189
.annotate 'line', 1009
    new $P2190, "Integer"
    assign $P2190, 1
    find_lex $P2191, "self"
    find_lex $P2192, "$?CLASS"
    setattribute $P2191, $P2192, "$!composed", $P2190
.annotate 'line', 1008
    .return ($P2190)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name" :anon :subid("146_1307873277.81238") :outer("138_1307873277.81238")
    .param pmc param_2194
    .param pmc param_2195
.annotate 'line', 1012
    .lex "self", param_2194
    .lex "$obj", param_2195
    find_lex $P2196, "self"
    find_lex $P2197, "$?CLASS"
    getattribute $P2198, $P2196, $P2197, "$!name"
    unless_null $P2198, vivify_821
    new $P2198, "Undef"
  vivify_821:
    .return ($P2198)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2200"  :subid("147_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 1018
    .const 'Sub' $P2375 = "160_1307873277.81238" 
    capture_lex $P2375
    .const 'Sub' $P2294 = "155_1307873277.81238" 
    capture_lex $P2294
    .const 'Sub' $P2285 = "154_1307873277.81238" 
    capture_lex $P2285
    .const 'Sub' $P2276 = "153_1307873277.81238" 
    capture_lex $P2276
    .const 'Sub' $P2271 = "152_1307873277.81238" 
    capture_lex $P2271
    .const 'Sub' $P2254 = "151_1307873277.81238" 
    capture_lex $P2254
    .const 'Sub' $P2239 = "150_1307873277.81238" 
    capture_lex $P2239
    .const 'Sub' $P2202 = "148_1307873277.81238" 
    capture_lex $P2202
.annotate 'line', 1078
    .const 'Sub' $P2202 = "148_1307873277.81238" 
    newclosure $P2236, $P2202
    .lex "has_method", $P2236
.annotate 'line', 1018
    .lex "$?PACKAGE", $P2237
    .lex "$?CLASS", $P2238
.annotate 'line', 1074
    find_lex $P2383, "has_method"
.annotate 'line', 1018
    .return ($P2383)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("148_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2205
    .param pmc param_2206
    .param pmc param_2207
.annotate 'line', 1078
    .const 'Sub' $P2219 = "149_1307873277.81238" 
    capture_lex $P2219
    new $P2204, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2204, control_2203
    push_eh $P2204
    .lex "$target", param_2205
    .lex "$name", param_2206
    .lex "$local", param_2207
.annotate 'line', 1079
    $P2208 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2208
    find_lex $P2209, "$target"
    unless_null $P2209, vivify_822
    new $P2209, "Undef"
  vivify_822:
    get_how $P2210, $P2209
    find_lex $P2211, "$target"
    unless_null $P2211, vivify_823
    new $P2211, "Undef"
  vivify_823:
    find_lex $P2212, "$local"
    unless_null $P2212, vivify_824
    new $P2212, "Undef"
  vivify_824:
    $P2213 = $P2210."methods"($P2211, $P2212 :named("local"))
    store_lex "@methods", $P2213
.annotate 'line', 1080
    find_lex $P2215, "@methods"
    unless_null $P2215, vivify_825
    $P2215 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    defined $I2216, $P2215
    unless $I2216, for_undef_826
    iter $P2214, $P2215
    new $P2231, 'ExceptionHandler'
    set_label $P2231, loop2230_handler
    $P2231."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2231
  loop2230_test:
    unless $P2214, loop2230_done
    shift $P2217, $P2214
  loop2230_redo:
    .const 'Sub' $P2219 = "149_1307873277.81238" 
    capture_lex $P2219
    $P2219($P2217)
  loop2230_next:
    goto loop2230_test
  loop2230_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2232, exception, 'type'
    eq $P2232, .CONTROL_LOOP_NEXT, loop2230_next
    eq $P2232, .CONTROL_LOOP_REDO, loop2230_redo
  loop2230_done:
    pop_eh 
  for_undef_826:
.annotate 'line', 1083
    new $P2233, "Exception"
    set $P2233['type'], .CONTROL_RETURN
    new $P2234, "Integer"
    assign $P2234, 0
    setattribute $P2233, 'payload', $P2234
    throw $P2233
.annotate 'line', 1078
    .return ()
  control_2203:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2235, exception, "payload"
    .return ($P2235)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2218"  :anon :subid("149_1307873277.81238") :outer("148_1307873277.81238")
    .param pmc param_2220
.annotate 'line', 1080
    .lex "$_", param_2220
.annotate 'line', 1081
    find_lex $P2223, "$_"
    unless_null $P2223, vivify_827
    new $P2223, "Undef"
  vivify_827:
    set $S2224, $P2223
    find_lex $P2225, "$name"
    unless_null $P2225, vivify_828
    new $P2225, "Undef"
  vivify_828:
    set $S2226, $P2225
    iseq $I2227, $S2224, $S2226
    if $I2227, if_2222
    new $P2221, 'Integer'
    set $P2221, $I2227
    goto if_2222_end
  if_2222:
    new $P2228, "Exception"
    set $P2228['type'], .CONTROL_RETURN
    new $P2229, "Integer"
    assign $P2229, 1
    setattribute $P2228, 'payload', $P2229
    throw $P2228
  if_2222_end:
.annotate 'line', 1080
    .return ($P2221)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new" :anon :subid("150_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2240
    .param pmc param_2241 :named("name")
    .param pmc param_2242 :optional :named("type")
    .param int has_param_2242 :opt_flag
    .param pmc param_2244 :optional :named("box_target")
    .param int has_param_2244 :opt_flag
.annotate 'line', 1023
    .lex "self", param_2240
    .lex "$name", param_2241
    if has_param_2242, optparam_829
    new $P2243, "Undef"
    set param_2242, $P2243
  optparam_829:
    .lex "$type", param_2242
    if has_param_2244, optparam_830
    new $P2245, "Undef"
    set param_2244, $P2245
  optparam_830:
    .lex "$box_target", param_2244
.annotate 'line', 1024
    new $P2246, "Undef"
    .lex "$attr", $P2246
    find_lex $P2247, "self"
    repr_instance_of $P2248, $P2247
    store_lex "$attr", $P2248
.annotate 'line', 1025
    find_lex $P2249, "$attr"
    unless_null $P2249, vivify_831
    new $P2249, "Undef"
  vivify_831:
    find_lex $P2250, "$name"
    unless_null $P2250, vivify_832
    new $P2250, "Undef"
  vivify_832:
    find_lex $P2251, "$type"
    unless_null $P2251, vivify_833
    new $P2251, "Undef"
  vivify_833:
    find_lex $P2252, "$box_target"
    unless_null $P2252, vivify_834
    new $P2252, "Undef"
  vivify_834:
    $P2249."BUILD"($P2250 :named("name"), $P2251 :named("type"), $P2252 :named("box_target"))
    find_lex $P2253, "$attr"
    unless_null $P2253, vivify_835
    new $P2253, "Undef"
  vivify_835:
.annotate 'line', 1023
    .return ($P2253)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD" :anon :subid("151_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2255
    .param pmc param_2256 :optional :named("name")
    .param int has_param_2256 :opt_flag
    .param pmc param_2258 :optional :named("type")
    .param int has_param_2258 :opt_flag
    .param pmc param_2260 :optional :named("box_target")
    .param int has_param_2260 :opt_flag
.annotate 'line', 1029
    .lex "self", param_2255
    if has_param_2256, optparam_836
    new $P2257, "Undef"
    set param_2256, $P2257
  optparam_836:
    .lex "$name", param_2256
    if has_param_2258, optparam_837
    new $P2259, "Undef"
    set param_2258, $P2259
  optparam_837:
    .lex "$type", param_2258
    if has_param_2260, optparam_838
    new $P2261, "Undef"
    set param_2260, $P2261
  optparam_838:
    .lex "$box_target", param_2260
.annotate 'line', 1030
    find_lex $P2262, "$name"
    unless_null $P2262, vivify_839
    new $P2262, "Undef"
  vivify_839:
    find_lex $P2263, "self"
    find_lex $P2264, "$?CLASS"
    setattribute $P2263, $P2264, "$!name", $P2262
.annotate 'line', 1031
    find_lex $P2265, "$type"
    unless_null $P2265, vivify_840
    new $P2265, "Undef"
  vivify_840:
    find_lex $P2266, "self"
    find_lex $P2267, "$?CLASS"
    setattribute $P2266, $P2267, "$!type", $P2265
.annotate 'line', 1032
    find_lex $P2268, "$box_target"
    unless_null $P2268, vivify_841
    new $P2268, "Undef"
  vivify_841:
    find_lex $P2269, "self"
    find_lex $P2270, "$?CLASS"
    setattribute $P2269, $P2270, "$!box_target", $P2268
.annotate 'line', 1029
    .return ($P2268)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name" :anon :subid("152_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2272
.annotate 'line', 1035
    .lex "self", param_2272
    find_lex $P2273, "self"
    find_lex $P2274, "$?CLASS"
    getattribute $P2275, $P2273, $P2274, "$!name"
    unless_null $P2275, vivify_842
    new $P2275, "Undef"
  vivify_842:
    .return ($P2275)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type" :anon :subid("153_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2277
.annotate 'line', 1039
    .lex "self", param_2277
.annotate 'line', 1040
    find_lex $P2279, "self"
    find_lex $P2280, "$?CLASS"
    getattribute $P2281, $P2279, $P2280, "$!type"
    unless_null $P2281, vivify_843
    new $P2281, "Undef"
  vivify_843:
    set $P2278, $P2281
    defined $I2283, $P2278
    if $I2283, default_2282
    null $P2284
    set $P2278, $P2284
  default_2282:
.annotate 'line', 1039
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target" :anon :subid("154_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2286
.annotate 'line', 1043
    .lex "self", param_2286
.annotate 'line', 1044
    find_lex $P2289, "self"
    find_lex $P2290, "$?CLASS"
    getattribute $P2291, $P2289, $P2290, "$!box_target"
    unless_null $P2291, vivify_844
    new $P2291, "Undef"
  vivify_844:
    if $P2291, if_2288
    new $P2293, "Integer"
    assign $P2293, 0
    set $P2287, $P2293
    goto if_2288_end
  if_2288:
    new $P2292, "Integer"
    assign $P2292, 1
    set $P2287, $P2292
  if_2288_end:
.annotate 'line', 1043
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose" :anon :subid("155_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2295
    .param pmc param_2296
.annotate 'line', 1047
    .const 'Sub' $P2348 = "158_1307873277.81238" 
    capture_lex $P2348
    .const 'Sub' $P2308 = "156_1307873277.81238" 
    capture_lex $P2308
    .lex "self", param_2295
    .lex "$obj", param_2296
.annotate 'line', 1048
    new $P2297, "Undef"
    .lex "$long_name", $P2297
    find_lex $P2298, "self"
    find_lex $P2299, "$?CLASS"
    getattribute $P2300, $P2298, $P2299, "$!name"
    unless_null $P2300, vivify_845
    new $P2300, "Undef"
  vivify_845:
    set $S2301, $P2300
    new $P2302, 'String'
    set $P2302, $S2301
    store_lex "$long_name", $P2302
.annotate 'line', 1049
    find_lex $P2305, "self"
    $P2306 = $P2305."has_mutator"()
    if $P2306, if_2304
.annotate 'line', 1061
    .const 'Sub' $P2348 = "158_1307873277.81238" 
    capture_lex $P2348
    $P2374 = $P2348()
    set $P2303, $P2374
.annotate 'line', 1049
    goto if_2304_end
  if_2304:
    .const 'Sub' $P2308 = "156_1307873277.81238" 
    capture_lex $P2308
    $P2346 = $P2308()
    set $P2303, $P2346
  if_2304_end:
.annotate 'line', 1047
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2347"  :anon :subid("158_1307873277.81238") :outer("155_1307873277.81238")
.annotate 'line', 1061
    .const 'Sub' $P2364 = "159_1307873277.81238" 
    capture_lex $P2364
.annotate 'line', 1062
    new $P2349, "Undef"
    .lex "$method", $P2349
    find_lex $P2350, "$long_name"
    unless_null $P2350, vivify_846
    new $P2350, "Undef"
  vivify_846:
    set $S2351, $P2350
    substr $S2352, $S2351, 2
    new $P2353, 'String'
    set $P2353, $S2352
    store_lex "$method", $P2353
.annotate 'line', 1063
    find_lex $P2356, "$obj"
    unless_null $P2356, vivify_847
    new $P2356, "Undef"
  vivify_847:
    find_lex $P2357, "$method"
    unless_null $P2357, vivify_848
    new $P2357, "Undef"
  vivify_848:
    $P2358 = "has_method"($P2356, $P2357, 0)
    unless $P2358, unless_2355
    set $P2354, $P2358
    goto unless_2355_end
  unless_2355:
.annotate 'line', 1064
    find_lex $P2359, "$obj"
    unless_null $P2359, vivify_849
    new $P2359, "Undef"
  vivify_849:
    get_how $P2360, $P2359
    find_lex $P2361, "$obj"
    unless_null $P2361, vivify_850
    new $P2361, "Undef"
  vivify_850:
    find_lex $P2362, "$method"
    unless_null $P2362, vivify_851
    new $P2362, "Undef"
  vivify_851:
.annotate 'line', 1065
    .const 'Sub' $P2364 = "159_1307873277.81238" 
    newclosure $P2372, $P2364
    $P2373 = $P2360."add_method"($P2361, $P2362, $P2372)
.annotate 'line', 1063
    set $P2354, $P2373
  unless_2355_end:
.annotate 'line', 1061
    .return ($P2354)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2363"  :anon :subid("159_1307873277.81238") :outer("158_1307873277.81238")
    .param pmc param_2365
.annotate 'line', 1065
    .lex "self", param_2365
.annotate 'line', 1066
    find_lex $P2366, "self"
    find_lex $P2367, "$obj"
    unless_null $P2367, vivify_852
    new $P2367, "Undef"
  vivify_852:
    get_what $P2368, $P2367
    find_lex $P2369, "$long_name"
    unless_null $P2369, vivify_853
    new $P2369, "Undef"
  vivify_853:
    set $S2370, $P2369
    getattribute $P2371, $P2366, $P2368, $S2370
.annotate 'line', 1065
    .return ($P2371)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2307"  :anon :subid("156_1307873277.81238") :outer("155_1307873277.81238")
.annotate 'line', 1049
    .const 'Sub' $P2325 = "157_1307873277.81238" 
    capture_lex $P2325
.annotate 'line', 1050
    new $P2309, "Undef"
    .lex "$method", $P2309
    find_lex $P2310, "$long_name"
    unless_null $P2310, vivify_854
    new $P2310, "Undef"
  vivify_854:
    set $S2311, $P2310
    substr $S2312, $S2311, 1
    new $P2313, 'String'
    set $P2313, $S2312
    store_lex "$method", $P2313
.annotate 'line', 1051
    find_lex $P2316, "$obj"
    unless_null $P2316, vivify_855
    new $P2316, "Undef"
  vivify_855:
    find_lex $P2317, "$method"
    unless_null $P2317, vivify_856
    new $P2317, "Undef"
  vivify_856:
    $P2318 = "has_method"($P2316, $P2317, 0)
    unless $P2318, unless_2315
    set $P2314, $P2318
    goto unless_2315_end
  unless_2315:
.annotate 'line', 1052
    find_lex $P2319, "$obj"
    unless_null $P2319, vivify_857
    new $P2319, "Undef"
  vivify_857:
    get_how $P2320, $P2319
    find_lex $P2321, "$obj"
    unless_null $P2321, vivify_858
    new $P2321, "Undef"
  vivify_858:
    get_what $P2322, $P2321
    find_lex $P2323, "$method"
    unless_null $P2323, vivify_859
    new $P2323, "Undef"
  vivify_859:
    .const 'Sub' $P2325 = "157_1307873277.81238" 
    newclosure $P2344, $P2325
    $P2345 = $P2320."add_method"($P2322, $P2323, $P2344)
.annotate 'line', 1051
    set $P2314, $P2345
  unless_2315_end:
.annotate 'line', 1049
    .return ($P2314)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2324"  :anon :subid("157_1307873277.81238") :outer("156_1307873277.81238")
    .param pmc param_2326
    .param pmc param_2327 :optional
    .param int has_param_2327 :opt_flag
.annotate 'line', 1052
    .lex "self", param_2326
    if has_param_2327, optparam_860
    new $P2328, "Undef"
    set param_2327, $P2328
  optparam_860:
    .lex "$value", param_2327
.annotate 'line', 1054
    find_lex $P2330, "$value"
    unless_null $P2330, vivify_861
    new $P2330, "Undef"
  vivify_861:
    defined $I2331, $P2330
    unless $I2331, if_2329_end
.annotate 'line', 1053
    find_lex $P2332, "self"
    find_lex $P2333, "$obj"
    unless_null $P2333, vivify_862
    new $P2333, "Undef"
  vivify_862:
    get_what $P2334, $P2333
    find_lex $P2335, "$long_name"
    unless_null $P2335, vivify_863
    new $P2335, "Undef"
  vivify_863:
    set $S2336, $P2335
    find_lex $P2337, "$value"
    unless_null $P2337, vivify_864
    new $P2337, "Undef"
  vivify_864:
    setattribute $P2332, $P2334, $S2336, $P2337
  if_2329_end:
.annotate 'line', 1056
    find_lex $P2338, "self"
    find_lex $P2339, "$obj"
    unless_null $P2339, vivify_865
    new $P2339, "Undef"
  vivify_865:
    get_what $P2340, $P2339
    find_lex $P2341, "$long_name"
    unless_null $P2341, vivify_866
    new $P2341, "Undef"
  vivify_866:
    set $S2342, $P2341
    getattribute $P2343, $P2338, $P2340, $S2342
.annotate 'line', 1052
    .return ($P2343)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator" :anon :subid("160_1307873277.81238") :outer("147_1307873277.81238")
    .param pmc param_2376
.annotate 'line', 1074
    .lex "self", param_2376
.annotate 'line', 1075
    find_lex $P2377, "self"
    find_lex $P2378, "$?CLASS"
    getattribute $P2379, $P2377, $P2378, "$!name"
    unless_null $P2379, vivify_867
    new $P2379, "Undef"
  vivify_867:
    set $S2380, $P2379
    substr $S2381, $S2380, 1, 1
    isne $I2382, $S2381, "!"
.annotate 'line', 1074
    .return ($I2382)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2384"  :subid("161_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 1089
    .const 'Sub' $P2440 = "169_1307873277.81238" 
    capture_lex $P2440
    .const 'Sub' $P2434 = "168_1307873277.81238" 
    capture_lex $P2434
    .const 'Sub' $P2430 = "167_1307873277.81238" 
    capture_lex $P2430
    .const 'Sub' $P2425 = "166_1307873277.81238" 
    capture_lex $P2425
    .const 'Sub' $P2420 = "165_1307873277.81238" 
    capture_lex $P2420
    .const 'Sub' $P2405 = "164_1307873277.81238" 
    capture_lex $P2405
    .const 'Sub' $P2398 = "163_1307873277.81238" 
    capture_lex $P2398
    .const 'Sub' $P2388 = "162_1307873277.81238" 
    capture_lex $P2388
    .lex "$?PACKAGE", $P2386
    .lex "$?CLASS", $P2387
.annotate 'line', 1130
    .const 'Sub' $P2440 = "169_1307873277.81238" 
    newclosure $P2446, $P2440
.annotate 'line', 1089
    .return ($P2446)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new" :anon :subid("162_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2389
    .param pmc param_2390 :optional :named("name")
    .param int has_param_2390 :opt_flag
.annotate 'line', 1093
    .lex "self", param_2389
    if has_param_2390, optparam_868
    new $P2391, "Undef"
    set param_2390, $P2391
  optparam_868:
    .lex "$name", param_2390
.annotate 'line', 1094
    new $P2392, "Undef"
    .lex "$obj", $P2392
    find_lex $P2393, "self"
    repr_instance_of $P2394, $P2393
    store_lex "$obj", $P2394
.annotate 'line', 1095
    find_lex $P2395, "$obj"
    unless_null $P2395, vivify_869
    new $P2395, "Undef"
  vivify_869:
    find_lex $P2396, "$name"
    unless_null $P2396, vivify_870
    new $P2396, "Undef"
  vivify_870:
    $P2395."BUILD"($P2396 :named("name"))
    find_lex $P2397, "$obj"
    unless_null $P2397, vivify_871
    new $P2397, "Undef"
  vivify_871:
.annotate 'line', 1093
    .return ($P2397)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD" :anon :subid("163_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2399
    .param pmc param_2400 :optional :named("name")
    .param int has_param_2400 :opt_flag
.annotate 'line', 1099
    .lex "self", param_2399
    if has_param_2400, optparam_872
    new $P2401, "Undef"
    set param_2400, $P2401
  optparam_872:
    .lex "$name", param_2400
.annotate 'line', 1100
    find_lex $P2402, "$name"
    unless_null $P2402, vivify_873
    new $P2402, "Undef"
  vivify_873:
    find_lex $P2403, "self"
    find_lex $P2404, "$?CLASS"
    setattribute $P2403, $P2404, "$!name", $P2402
.annotate 'line', 1099
    .return ($P2402)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type" :anon :subid("164_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2406
    .param pmc param_2407 :optional :named("name")
    .param int has_param_2407 :opt_flag
    .param pmc param_2409 :optional :named("repr")
    .param int has_param_2409 :opt_flag
.annotate 'line', 1105
    .lex "self", param_2406
    if has_param_2407, optparam_874
    new $P2408, "String"
    assign $P2408, "<anon>"
    set param_2407, $P2408
  optparam_874:
    .lex "$name", param_2407
    if has_param_2409, optparam_875
    new $P2410, "String"
    assign $P2410, "P6opaque"
    set param_2409, $P2410
  optparam_875:
    .lex "$repr", param_2409
.annotate 'line', 1106
    new $P2411, "Undef"
    .lex "$metaclass", $P2411
    find_lex $P2412, "self"
    find_lex $P2413, "$name"
    unless_null $P2413, vivify_876
    new $P2413, "Undef"
  vivify_876:
    $P2414 = $P2412."new"($P2413 :named("name"))
    store_lex "$metaclass", $P2414
.annotate 'line', 1108
    find_lex $P2415, "$metaclass"
    unless_null $P2415, vivify_877
    new $P2415, "Undef"
  vivify_877:
    find_lex $P2416, "$repr"
    unless_null $P2416, vivify_878
    new $P2416, "Undef"
  vivify_878:
    set $S2417, $P2416
    repr_type_object_for $P2418, $P2415, $S2417
    $P2419 = root_new ['parrot';'Hash']
    set_who $P2418, $P2419
.annotate 'line', 1105
    .return ($P2418)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method" :anon :subid("165_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2421
    .param pmc param_2422
    .param pmc param_2423
    .param pmc param_2424
.annotate 'line', 1112
    .lex "self", param_2421
    .lex "$obj", param_2422
    .lex "$name", param_2423
    .lex "$code_obj", param_2424
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method" :anon :subid("166_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2426
    .param pmc param_2427
    .param pmc param_2428
    .param pmc param_2429
.annotate 'line', 1118
    .lex "self", param_2426
    .lex "$obj", param_2427
    .lex "$name", param_2428
    .lex "$code_obj", param_2429
.annotate 'line', 1119
    die "Modules may not have methods"
.annotate 'line', 1118
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute" :anon :subid("167_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2431
    .param pmc param_2432
    .param pmc param_2433
.annotate 'line', 1122
    .lex "self", param_2431
    .lex "$obj", param_2432
    .lex "$meta_attr", param_2433
.annotate 'line', 1123
    die "Modules may not have attributes"
.annotate 'line', 1122
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose" :anon :subid("168_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2435
    .param pmc param_2436
.annotate 'line', 1126
    .lex "self", param_2435
    .lex "$obj", param_2436
.annotate 'line', 1127
    new $P2437, "Integer"
    assign $P2437, 1
    find_lex $P2438, "self"
    find_lex $P2439, "$?CLASS"
    setattribute $P2438, $P2439, "$!composed", $P2437
.annotate 'line', 1126
    .return ($P2437)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name" :anon :subid("169_1307873277.81238") :outer("161_1307873277.81238")
    .param pmc param_2441
    .param pmc param_2442
.annotate 'line', 1130
    .lex "self", param_2441
    .lex "$obj", param_2442
    find_lex $P2443, "self"
    find_lex $P2444, "$?CLASS"
    getattribute $P2445, $P2443, $P2444, "$!name"
    unless_null $P2445, vivify_879
    new $P2445, "Undef"
  vivify_879:
    .return ($P2445)
.end


.HLL "nqp"

.namespace []
.sub "_block2447"  :anon :subid("170_1307873277.81238") :outer("10_1307873277.81238")
.annotate 'line', 1138
    .lex "$?PACKAGE", $P2449
    .lex "$?CLASS", $P2450
.annotate 'line', 1139
    find_lex $P2451, "NQPModuleHOW"
    find_lex $P2452, "$?PACKAGE"
    unless_null $P2452, vivify_880
    new $P2452, "Undef"
    store_lex "$?PACKAGE", $P2452
  vivify_880:
    get_who $P2453, $P2452
    set $P2453["module"], $P2451
.annotate 'line', 1140
    find_lex $P2454, "NQPClassHOW"
    find_lex $P2455, "$?PACKAGE"
    unless_null $P2455, vivify_881
    new $P2455, "Undef"
    store_lex "$?PACKAGE", $P2455
  vivify_881:
    get_who $P2456, $P2455
    set $P2456["class"], $P2454
.annotate 'line', 1141
    find_lex $P2457, "NQPAttribute"
    find_lex $P2458, "$?PACKAGE"
    unless_null $P2458, vivify_882
    new $P2458, "Undef"
    store_lex "$?PACKAGE", $P2458
  vivify_882:
    get_who $P2459, $P2458
    set $P2459["class-attr"], $P2457
.annotate 'line', 1142
    find_lex $P2460, "NQPClassHOW"
    find_lex $P2461, "$?PACKAGE"
    unless_null $P2461, vivify_883
    new $P2461, "Undef"
    store_lex "$?PACKAGE", $P2461
  vivify_883:
    get_who $P2462, $P2461
    set $P2462["grammar"], $P2460
.annotate 'line', 1143
    find_lex $P2463, "NQPAttribute"
    find_lex $P2464, "$?PACKAGE"
    unless_null $P2464, vivify_884
    new $P2464, "Undef"
    store_lex "$?PACKAGE", $P2464
  vivify_884:
    get_who $P2465, $P2464
    set $P2465["grammar-attr"], $P2463
.annotate 'line', 1144
    find_lex $P2466, "NQPParametricRoleHOW"
    find_lex $P2467, "$?PACKAGE"
    unless_null $P2467, vivify_885
    new $P2467, "Undef"
    store_lex "$?PACKAGE", $P2467
  vivify_885:
    get_who $P2468, $P2467
    set $P2468["role"], $P2466
.annotate 'line', 1145
    find_lex $P2469, "NQPAttribute"
    find_lex $P2470, "$?PACKAGE"
    unless_null $P2470, vivify_886
    new $P2470, "Undef"
    store_lex "$?PACKAGE", $P2470
  vivify_886:
    get_who $P2471, $P2470
    set $P2471["role-attr"], $P2469
.annotate 'line', 1146
    find_lex $P2472, "NQPNativeHOW"
    find_lex $P2473, "$?PACKAGE"
    unless_null $P2473, vivify_887
    new $P2473, "Undef"
    store_lex "$?PACKAGE", $P2473
  vivify_887:
    get_who $P2474, $P2473
    set $P2474["native"], $P2472
.annotate 'line', 1138
    .return ($P2472)
.end


.HLL "nqp"

.namespace []
.sub "_block2482" :load :anon :subid("171_1307873277.81238")
.annotate 'line', 1
    .const 'Sub' $P2484 = "10_1307873277.81238" 
    $P2485 = $P2484()
    .return ($P2485)
.end

