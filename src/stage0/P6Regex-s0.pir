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
.sub "_block11"  :anon :subid("10_1307873292.23355")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2431 = "258_1307873292.23355" 
    capture_lex $P2431
    .const 'Sub' $P646 = "176_1307873292.23355" 
    capture_lex $P646
    .const 'Sub' $P24 = "12_1307873292.23355" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1307873292.23355" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 829
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 834
    .const 'Sub' $P17 = "11_1307873292.23355" 
    newclosure $P22, $P17
    .lex "MAIN", $P22
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P24 = "12_1307873292.23355" 
    capture_lex $P24
    $P24()
.annotate 'line', 213
    .const 'Sub' $P646 = "176_1307873292.23355" 
    capture_lex $P646
    $P646()
.annotate 'line', 826
    .const 'Sub' $P2431 = "258_1307873292.23355" 
    capture_lex $P2431
    $P2431()
.annotate 'line', 829
    get_hll_global $P2434, "GLOBAL"
    nqp_get_package_through_who $P2435, $P2434, "Regex"
    nqp_get_package_through_who $P2436, $P2435, "P6Regex"
    get_who $P2437, $P2436
    set $P2438, $P2437["Compiler"]
    $P2439 = $P2438."new"()
    store_lex "$p6regex", $P2439
.annotate 'line', 830
    find_lex $P2440, "$p6regex"
    unless_null $P2440, vivify_1174
    new $P2440, "Undef"
  vivify_1174:
    $P2440."language"("Regex::P6Regex")
.annotate 'line', 831
    find_lex $P2441, "$p6regex"
    unless_null $P2441, vivify_1175
    new $P2441, "Undef"
  vivify_1175:
    get_hll_global $P2442, "GLOBAL"
    nqp_get_package_through_who $P2443, $P2442, "Regex"
    nqp_get_package_through_who $P2444, $P2443, "P6Regex"
    get_who $P2445, $P2444
    set $P2446, $P2445["Grammar"]
    $P2441."parsegrammar"($P2446)
.annotate 'line', 832
    find_lex $P2447, "$p6regex"
    unless_null $P2447, vivify_1176
    new $P2447, "Undef"
  vivify_1176:
    get_hll_global $P2448, "GLOBAL"
    nqp_get_package_through_who $P2449, $P2448, "Regex"
    nqp_get_package_through_who $P2450, $P2449, "P6Regex"
    get_who $P2451, $P2450
    set $P2452, $P2451["Actions"]
    $P2447."parseactions"($P2452)
    find_lex $P2453, "MAIN"
    find_lex $P2456, "@ARGS"
    if $P2456, if_2455
    set $P2454, $P2456
    goto if_2455_end
  if_2455:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2457, "ModuleLoader"
    getinterp $P2458
    set $P2459, $P2458["context"]
    $P2457."set_mainline_module"($P2459)
    .const 'Sub' $P2460 = "11_1307873292.23355" 
    find_lex $P2461, "@ARGS"
    $P2462 = $P2460($P2461 :flat)
    set $P2454, $P2462
  if_2455_end:
.annotate 'line', 1
    .return ($P2454)
    .const 'Sub' $P2464 = "259_1307873292.23355" 
    .return ($P2464)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post260") :outer("10_1307873292.23355")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1307873292.23355" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2468, "1307873288.51323"
    isnull $I2469, $P2468
    if $I2469, if_2467
    .const 'Sub' $P3351 = "10_1307873292.23355" 
    $P3352 = $P3351."get_lexinfo"()
    nqp_get_sc_object $P3353, "1307873288.51323", 0
    $P3352."set_static_lexpad_value"("GLOBALish", $P3353)
    .const 'Sub' $P3354 = "10_1307873292.23355" 
    $P3355 = $P3354."get_lexinfo"()
    $P3355."finish_static_lexpad"()
    .const 'Sub' $P3356 = "10_1307873292.23355" 
    $P3357 = $P3356."get_lexinfo"()
    nqp_get_sc_object $P3358, "1307873288.51323", 0
    $P3357."set_static_lexpad_value"("$?PACKAGE", $P3358)
    .const 'Sub' $P3359 = "10_1307873292.23355" 
    $P3360 = $P3359."get_lexinfo"()
    $P3360."finish_static_lexpad"()
    nqp_get_sc_object $P3361, "1307873288.51323", 2
    .const 'Sub' $P3362 = "13_1307873292.23355" 
    assign $P3361, $P3362
    nqp_get_sc_object $P3363, "1307873288.51323", 3
    .const 'Sub' $P3364 = "14_1307873292.23355" 
    assign $P3363, $P3364
    nqp_get_sc_object $P3365, "1307873288.51323", 4
    .const 'Sub' $P3366 = "15_1307873292.23355" 
    assign $P3365, $P3366
    nqp_get_sc_object $P3367, "1307873288.51323", 5
    .const 'Sub' $P3368 = "16_1307873292.23355" 
    assign $P3367, $P3368
    nqp_get_sc_object $P3369, "1307873288.51323", 6
    .const 'Sub' $P3370 = "18_1307873292.23355" 
    assign $P3369, $P3370
    nqp_get_sc_object $P3371, "1307873288.51323", 7
    .const 'Sub' $P3372 = "19_1307873292.23355" 
    assign $P3371, $P3372
    nqp_get_sc_object $P3373, "1307873288.51323", 8
    .const 'Sub' $P3374 = "20_1307873292.23355" 
    assign $P3373, $P3374
    nqp_get_sc_object $P3375, "1307873288.51323", 9
    .const 'Sub' $P3376 = "21_1307873292.23355" 
    assign $P3375, $P3376
    nqp_get_sc_object $P3377, "1307873288.51323", 10
    .const 'Sub' $P3378 = "22_1307873292.23355" 
    assign $P3377, $P3378
    nqp_get_sc_object $P3379, "1307873288.51323", 11
    .const 'Sub' $P3380 = "23_1307873292.23355" 
    assign $P3379, $P3380
    nqp_get_sc_object $P3381, "1307873288.51323", 12
    .const 'Sub' $P3382 = "24_1307873292.23355" 
    assign $P3381, $P3382
    nqp_get_sc_object $P3383, "1307873288.51323", 13
    .const 'Sub' $P3384 = "25_1307873292.23355" 
    assign $P3383, $P3384
    nqp_get_sc_object $P3385, "1307873288.51323", 14
    .const 'Sub' $P3386 = "26_1307873292.23355" 
    assign $P3385, $P3386
    nqp_get_sc_object $P3387, "1307873288.51323", 15
    .const 'Sub' $P3388 = "27_1307873292.23355" 
    assign $P3387, $P3388
    nqp_get_sc_object $P3389, "1307873288.51323", 16
    .const 'Sub' $P3390 = "29_1307873292.23355" 
    assign $P3389, $P3390
    nqp_get_sc_object $P3391, "1307873288.51323", 17
    .const 'Sub' $P3392 = "30_1307873292.23355" 
    assign $P3391, $P3392
    nqp_get_sc_object $P3393, "1307873288.51323", 18
    .const 'Sub' $P3394 = "31_1307873292.23355" 
    assign $P3393, $P3394
    nqp_get_sc_object $P3395, "1307873288.51323", 19
    .const 'Sub' $P3396 = "32_1307873292.23355" 
    assign $P3395, $P3396
    nqp_get_sc_object $P3397, "1307873288.51323", 20
    .const 'Sub' $P3398 = "34_1307873292.23355" 
    assign $P3397, $P3398
    nqp_get_sc_object $P3399, "1307873288.51323", 21
    .const 'Sub' $P3400 = "35_1307873292.23355" 
    assign $P3399, $P3400
    nqp_get_sc_object $P3401, "1307873288.51323", 22
    .const 'Sub' $P3402 = "37_1307873292.23355" 
    assign $P3401, $P3402
    nqp_get_sc_object $P3403, "1307873288.51323", 23
    .const 'Sub' $P3404 = "38_1307873292.23355" 
    assign $P3403, $P3404
    nqp_get_sc_object $P3405, "1307873288.51323", 24
    .const 'Sub' $P3406 = "40_1307873292.23355" 
    assign $P3405, $P3406
    nqp_get_sc_object $P3407, "1307873288.51323", 25
    .const 'Sub' $P3408 = "41_1307873292.23355" 
    assign $P3407, $P3408
    nqp_get_sc_object $P3409, "1307873288.51323", 26
    .const 'Sub' $P3410 = "42_1307873292.23355" 
    assign $P3409, $P3410
    nqp_get_sc_object $P3411, "1307873288.51323", 27
    .const 'Sub' $P3412 = "43_1307873292.23355" 
    assign $P3411, $P3412
    nqp_get_sc_object $P3413, "1307873288.51323", 28
    .const 'Sub' $P3414 = "44_1307873292.23355" 
    assign $P3413, $P3414
    nqp_get_sc_object $P3415, "1307873288.51323", 29
    .const 'Sub' $P3416 = "45_1307873292.23355" 
    assign $P3415, $P3416
    nqp_get_sc_object $P3417, "1307873288.51323", 30
    .const 'Sub' $P3418 = "46_1307873292.23355" 
    assign $P3417, $P3418
    nqp_get_sc_object $P3419, "1307873288.51323", 31
    .const 'Sub' $P3420 = "47_1307873292.23355" 
    assign $P3419, $P3420
    nqp_get_sc_object $P3421, "1307873288.51323", 32
    .const 'Sub' $P3422 = "48_1307873292.23355" 
    assign $P3421, $P3422
    nqp_get_sc_object $P3423, "1307873288.51323", 33
    .const 'Sub' $P3424 = "49_1307873292.23355" 
    assign $P3423, $P3424
    nqp_get_sc_object $P3425, "1307873288.51323", 34
    .const 'Sub' $P3426 = "54_1307873292.23355" 
    assign $P3425, $P3426
    nqp_get_sc_object $P3427, "1307873288.51323", 35
    .const 'Sub' $P3428 = "55_1307873292.23355" 
    assign $P3427, $P3428
    nqp_get_sc_object $P3429, "1307873288.51323", 36
    .const 'Sub' $P3430 = "56_1307873292.23355" 
    assign $P3429, $P3430
    nqp_get_sc_object $P3431, "1307873288.51323", 37
    .const 'Sub' $P3432 = "57_1307873292.23355" 
    assign $P3431, $P3432
    nqp_get_sc_object $P3433, "1307873288.51323", 38
    .const 'Sub' $P3434 = "59_1307873292.23355" 
    assign $P3433, $P3434
    nqp_get_sc_object $P3435, "1307873288.51323", 39
    .const 'Sub' $P3436 = "60_1307873292.23355" 
    assign $P3435, $P3436
    nqp_get_sc_object $P3437, "1307873288.51323", 40
    .const 'Sub' $P3438 = "61_1307873292.23355" 
    assign $P3437, $P3438
    nqp_get_sc_object $P3439, "1307873288.51323", 41
    .const 'Sub' $P3440 = "62_1307873292.23355" 
    assign $P3439, $P3440
    nqp_get_sc_object $P3441, "1307873288.51323", 42
    .const 'Sub' $P3442 = "63_1307873292.23355" 
    assign $P3441, $P3442
    nqp_get_sc_object $P3443, "1307873288.51323", 43
    .const 'Sub' $P3444 = "64_1307873292.23355" 
    assign $P3443, $P3444
    nqp_get_sc_object $P3445, "1307873288.51323", 44
    .const 'Sub' $P3446 = "65_1307873292.23355" 
    assign $P3445, $P3446
    nqp_get_sc_object $P3447, "1307873288.51323", 45
    .const 'Sub' $P3448 = "66_1307873292.23355" 
    assign $P3447, $P3448
    nqp_get_sc_object $P3449, "1307873288.51323", 46
    .const 'Sub' $P3450 = "67_1307873292.23355" 
    assign $P3449, $P3450
    nqp_get_sc_object $P3451, "1307873288.51323", 47
    .const 'Sub' $P3452 = "68_1307873292.23355" 
    assign $P3451, $P3452
    nqp_get_sc_object $P3453, "1307873288.51323", 48
    .const 'Sub' $P3454 = "69_1307873292.23355" 
    assign $P3453, $P3454
    nqp_get_sc_object $P3455, "1307873288.51323", 49
    .const 'Sub' $P3456 = "70_1307873292.23355" 
    assign $P3455, $P3456
    nqp_get_sc_object $P3457, "1307873288.51323", 50
    .const 'Sub' $P3458 = "71_1307873292.23355" 
    assign $P3457, $P3458
    nqp_get_sc_object $P3459, "1307873288.51323", 51
    .const 'Sub' $P3460 = "72_1307873292.23355" 
    assign $P3459, $P3460
    nqp_get_sc_object $P3461, "1307873288.51323", 52
    .const 'Sub' $P3462 = "73_1307873292.23355" 
    assign $P3461, $P3462
    nqp_get_sc_object $P3463, "1307873288.51323", 53
    .const 'Sub' $P3464 = "74_1307873292.23355" 
    assign $P3463, $P3464
    nqp_get_sc_object $P3465, "1307873288.51323", 54
    .const 'Sub' $P3466 = "75_1307873292.23355" 
    assign $P3465, $P3466
    nqp_get_sc_object $P3467, "1307873288.51323", 55
    .const 'Sub' $P3468 = "76_1307873292.23355" 
    assign $P3467, $P3468
    nqp_get_sc_object $P3469, "1307873288.51323", 56
    .const 'Sub' $P3470 = "77_1307873292.23355" 
    assign $P3469, $P3470
    nqp_get_sc_object $P3471, "1307873288.51323", 57
    .const 'Sub' $P3472 = "78_1307873292.23355" 
    assign $P3471, $P3472
    nqp_get_sc_object $P3473, "1307873288.51323", 58
    .const 'Sub' $P3474 = "79_1307873292.23355" 
    assign $P3473, $P3474
    nqp_get_sc_object $P3475, "1307873288.51323", 59
    .const 'Sub' $P3476 = "80_1307873292.23355" 
    assign $P3475, $P3476
    nqp_get_sc_object $P3477, "1307873288.51323", 60
    .const 'Sub' $P3478 = "81_1307873292.23355" 
    assign $P3477, $P3478
    nqp_get_sc_object $P3479, "1307873288.51323", 61
    .const 'Sub' $P3480 = "82_1307873292.23355" 
    assign $P3479, $P3480
    nqp_get_sc_object $P3481, "1307873288.51323", 62
    .const 'Sub' $P3482 = "83_1307873292.23355" 
    assign $P3481, $P3482
    nqp_get_sc_object $P3483, "1307873288.51323", 63
    .const 'Sub' $P3484 = "84_1307873292.23355" 
    assign $P3483, $P3484
    nqp_get_sc_object $P3485, "1307873288.51323", 64
    .const 'Sub' $P3486 = "85_1307873292.23355" 
    assign $P3485, $P3486
    nqp_get_sc_object $P3487, "1307873288.51323", 65
    .const 'Sub' $P3488 = "86_1307873292.23355" 
    assign $P3487, $P3488
    nqp_get_sc_object $P3489, "1307873288.51323", 66
    .const 'Sub' $P3490 = "87_1307873292.23355" 
    assign $P3489, $P3490
    nqp_get_sc_object $P3491, "1307873288.51323", 67
    .const 'Sub' $P3492 = "88_1307873292.23355" 
    assign $P3491, $P3492
    nqp_get_sc_object $P3493, "1307873288.51323", 68
    .const 'Sub' $P3494 = "89_1307873292.23355" 
    assign $P3493, $P3494
    nqp_get_sc_object $P3495, "1307873288.51323", 69
    .const 'Sub' $P3496 = "90_1307873292.23355" 
    assign $P3495, $P3496
    nqp_get_sc_object $P3497, "1307873288.51323", 70
    .const 'Sub' $P3498 = "91_1307873292.23355" 
    assign $P3497, $P3498
    nqp_get_sc_object $P3499, "1307873288.51323", 71
    .const 'Sub' $P3500 = "92_1307873292.23355" 
    assign $P3499, $P3500
    nqp_get_sc_object $P3501, "1307873288.51323", 72
    .const 'Sub' $P3502 = "93_1307873292.23355" 
    assign $P3501, $P3502
    nqp_get_sc_object $P3503, "1307873288.51323", 73
    .const 'Sub' $P3504 = "94_1307873292.23355" 
    assign $P3503, $P3504
    nqp_get_sc_object $P3505, "1307873288.51323", 74
    .const 'Sub' $P3506 = "95_1307873292.23355" 
    assign $P3505, $P3506
    nqp_get_sc_object $P3507, "1307873288.51323", 75
    .const 'Sub' $P3508 = "96_1307873292.23355" 
    assign $P3507, $P3508
    nqp_get_sc_object $P3509, "1307873288.51323", 76
    .const 'Sub' $P3510 = "97_1307873292.23355" 
    assign $P3509, $P3510
    nqp_get_sc_object $P3511, "1307873288.51323", 77
    .const 'Sub' $P3512 = "98_1307873292.23355" 
    assign $P3511, $P3512
    nqp_get_sc_object $P3513, "1307873288.51323", 78
    .const 'Sub' $P3514 = "99_1307873292.23355" 
    assign $P3513, $P3514
    nqp_get_sc_object $P3515, "1307873288.51323", 79
    .const 'Sub' $P3516 = "100_1307873292.23355" 
    assign $P3515, $P3516
    nqp_get_sc_object $P3517, "1307873288.51323", 80
    .const 'Sub' $P3518 = "101_1307873292.23355" 
    assign $P3517, $P3518
    nqp_get_sc_object $P3519, "1307873288.51323", 81
    .const 'Sub' $P3520 = "102_1307873292.23355" 
    assign $P3519, $P3520
    nqp_get_sc_object $P3521, "1307873288.51323", 82
    .const 'Sub' $P3522 = "103_1307873292.23355" 
    assign $P3521, $P3522
    nqp_get_sc_object $P3523, "1307873288.51323", 83
    .const 'Sub' $P3524 = "104_1307873292.23355" 
    assign $P3523, $P3524
    nqp_get_sc_object $P3525, "1307873288.51323", 84
    .const 'Sub' $P3526 = "105_1307873292.23355" 
    assign $P3525, $P3526
    nqp_get_sc_object $P3527, "1307873288.51323", 85
    .const 'Sub' $P3528 = "106_1307873292.23355" 
    assign $P3527, $P3528
    nqp_get_sc_object $P3529, "1307873288.51323", 86
    .const 'Sub' $P3530 = "107_1307873292.23355" 
    assign $P3529, $P3530
    nqp_get_sc_object $P3531, "1307873288.51323", 87
    .const 'Sub' $P3532 = "108_1307873292.23355" 
    assign $P3531, $P3532
    nqp_get_sc_object $P3533, "1307873288.51323", 88
    .const 'Sub' $P3534 = "109_1307873292.23355" 
    assign $P3533, $P3534
    nqp_get_sc_object $P3535, "1307873288.51323", 89
    .const 'Sub' $P3536 = "110_1307873292.23355" 
    assign $P3535, $P3536
    nqp_get_sc_object $P3537, "1307873288.51323", 90
    .const 'Sub' $P3538 = "111_1307873292.23355" 
    assign $P3537, $P3538
    nqp_get_sc_object $P3539, "1307873288.51323", 91
    .const 'Sub' $P3540 = "112_1307873292.23355" 
    assign $P3539, $P3540
    nqp_get_sc_object $P3541, "1307873288.51323", 92
    .const 'Sub' $P3542 = "113_1307873292.23355" 
    assign $P3541, $P3542
    nqp_get_sc_object $P3543, "1307873288.51323", 93
    .const 'Sub' $P3544 = "114_1307873292.23355" 
    assign $P3543, $P3544
    nqp_get_sc_object $P3545, "1307873288.51323", 94
    .const 'Sub' $P3546 = "115_1307873292.23355" 
    assign $P3545, $P3546
    nqp_get_sc_object $P3547, "1307873288.51323", 95
    .const 'Sub' $P3548 = "116_1307873292.23355" 
    assign $P3547, $P3548
    nqp_get_sc_object $P3549, "1307873288.51323", 96
    .const 'Sub' $P3550 = "117_1307873292.23355" 
    assign $P3549, $P3550
    nqp_get_sc_object $P3551, "1307873288.51323", 97
    .const 'Sub' $P3552 = "118_1307873292.23355" 
    assign $P3551, $P3552
    nqp_get_sc_object $P3553, "1307873288.51323", 98
    .const 'Sub' $P3554 = "119_1307873292.23355" 
    assign $P3553, $P3554
    nqp_get_sc_object $P3555, "1307873288.51323", 99
    .const 'Sub' $P3556 = "120_1307873292.23355" 
    assign $P3555, $P3556
    nqp_get_sc_object $P3557, "1307873288.51323", 100
    .const 'Sub' $P3558 = "121_1307873292.23355" 
    assign $P3557, $P3558
    nqp_get_sc_object $P3559, "1307873288.51323", 101
    .const 'Sub' $P3560 = "122_1307873292.23355" 
    assign $P3559, $P3560
    nqp_get_sc_object $P3561, "1307873288.51323", 102
    .const 'Sub' $P3562 = "123_1307873292.23355" 
    assign $P3561, $P3562
    nqp_get_sc_object $P3563, "1307873288.51323", 103
    .const 'Sub' $P3564 = "124_1307873292.23355" 
    assign $P3563, $P3564
    nqp_get_sc_object $P3565, "1307873288.51323", 104
    .const 'Sub' $P3566 = "125_1307873292.23355" 
    assign $P3565, $P3566
    nqp_get_sc_object $P3567, "1307873288.51323", 105
    .const 'Sub' $P3568 = "126_1307873292.23355" 
    assign $P3567, $P3568
    nqp_get_sc_object $P3569, "1307873288.51323", 106
    .const 'Sub' $P3570 = "127_1307873292.23355" 
    assign $P3569, $P3570
    nqp_get_sc_object $P3571, "1307873288.51323", 107
    .const 'Sub' $P3572 = "128_1307873292.23355" 
    assign $P3571, $P3572
    nqp_get_sc_object $P3573, "1307873288.51323", 108
    .const 'Sub' $P3574 = "129_1307873292.23355" 
    assign $P3573, $P3574
    nqp_get_sc_object $P3575, "1307873288.51323", 109
    .const 'Sub' $P3576 = "130_1307873292.23355" 
    assign $P3575, $P3576
    nqp_get_sc_object $P3577, "1307873288.51323", 110
    .const 'Sub' $P3578 = "131_1307873292.23355" 
    assign $P3577, $P3578
    nqp_get_sc_object $P3579, "1307873288.51323", 111
    .const 'Sub' $P3580 = "132_1307873292.23355" 
    assign $P3579, $P3580
    nqp_get_sc_object $P3581, "1307873288.51323", 112
    .const 'Sub' $P3582 = "133_1307873292.23355" 
    assign $P3581, $P3582
    nqp_get_sc_object $P3583, "1307873288.51323", 113
    .const 'Sub' $P3584 = "134_1307873292.23355" 
    assign $P3583, $P3584
    nqp_get_sc_object $P3585, "1307873288.51323", 114
    .const 'Sub' $P3586 = "135_1307873292.23355" 
    assign $P3585, $P3586
    nqp_get_sc_object $P3587, "1307873288.51323", 115
    .const 'Sub' $P3588 = "136_1307873292.23355" 
    assign $P3587, $P3588
    nqp_get_sc_object $P3589, "1307873288.51323", 116
    .const 'Sub' $P3590 = "137_1307873292.23355" 
    assign $P3589, $P3590
    nqp_get_sc_object $P3591, "1307873288.51323", 117
    .const 'Sub' $P3592 = "138_1307873292.23355" 
    assign $P3591, $P3592
    nqp_get_sc_object $P3593, "1307873288.51323", 118
    .const 'Sub' $P3594 = "140_1307873292.23355" 
    assign $P3593, $P3594
    nqp_get_sc_object $P3595, "1307873288.51323", 119
    .const 'Sub' $P3596 = "141_1307873292.23355" 
    assign $P3595, $P3596
    nqp_get_sc_object $P3597, "1307873288.51323", 120
    .const 'Sub' $P3598 = "142_1307873292.23355" 
    assign $P3597, $P3598
    nqp_get_sc_object $P3599, "1307873288.51323", 121
    .const 'Sub' $P3600 = "143_1307873292.23355" 
    assign $P3599, $P3600
    nqp_get_sc_object $P3601, "1307873288.51323", 122
    .const 'Sub' $P3602 = "144_1307873292.23355" 
    assign $P3601, $P3602
    nqp_get_sc_object $P3603, "1307873288.51323", 123
    .const 'Sub' $P3604 = "145_1307873292.23355" 
    assign $P3603, $P3604
    nqp_get_sc_object $P3605, "1307873288.51323", 124
    .const 'Sub' $P3606 = "147_1307873292.23355" 
    assign $P3605, $P3606
    nqp_get_sc_object $P3607, "1307873288.51323", 125
    .const 'Sub' $P3608 = "148_1307873292.23355" 
    assign $P3607, $P3608
    nqp_get_sc_object $P3609, "1307873288.51323", 126
    .const 'Sub' $P3610 = "150_1307873292.23355" 
    assign $P3609, $P3610
    nqp_get_sc_object $P3611, "1307873288.51323", 127
    .const 'Sub' $P3612 = "151_1307873292.23355" 
    assign $P3611, $P3612
    nqp_get_sc_object $P3613, "1307873288.51323", 128
    .const 'Sub' $P3614 = "152_1307873292.23355" 
    assign $P3613, $P3614
    nqp_get_sc_object $P3615, "1307873288.51323", 129
    .const 'Sub' $P3616 = "153_1307873292.23355" 
    assign $P3615, $P3616
    nqp_get_sc_object $P3617, "1307873288.51323", 130
    .const 'Sub' $P3618 = "155_1307873292.23355" 
    assign $P3617, $P3618
    nqp_get_sc_object $P3619, "1307873288.51323", 131
    .const 'Sub' $P3620 = "156_1307873292.23355" 
    assign $P3619, $P3620
    nqp_get_sc_object $P3621, "1307873288.51323", 132
    .const 'Sub' $P3622 = "158_1307873292.23355" 
    assign $P3621, $P3622
    nqp_get_sc_object $P3623, "1307873288.51323", 133
    .const 'Sub' $P3624 = "159_1307873292.23355" 
    assign $P3623, $P3624
    nqp_get_sc_object $P3625, "1307873288.51323", 134
    .const 'Sub' $P3626 = "164_1307873292.23355" 
    assign $P3625, $P3626
    nqp_get_sc_object $P3627, "1307873288.51323", 135
    .const 'Sub' $P3628 = "165_1307873292.23355" 
    assign $P3627, $P3628
    nqp_get_sc_object $P3629, "1307873288.51323", 136
    .const 'Sub' $P3630 = "167_1307873292.23355" 
    assign $P3629, $P3630
    nqp_get_sc_object $P3631, "1307873288.51323", 137
    .const 'Sub' $P3632 = "168_1307873292.23355" 
    assign $P3631, $P3632
    nqp_get_sc_object $P3633, "1307873288.51323", 138
    .const 'Sub' $P3634 = "169_1307873292.23355" 
    assign $P3633, $P3634
    nqp_get_sc_object $P3635, "1307873288.51323", 139
    .const 'Sub' $P3636 = "170_1307873292.23355" 
    assign $P3635, $P3636
    nqp_get_sc_object $P3637, "1307873288.51323", 140
    .const 'Sub' $P3638 = "171_1307873292.23355" 
    assign $P3637, $P3638
    nqp_get_sc_object $P3639, "1307873288.51323", 141
    .const 'Sub' $P3640 = "172_1307873292.23355" 
    assign $P3639, $P3640
    nqp_get_sc_object $P3641, "1307873288.51323", 142
    .const 'Sub' $P3642 = "173_1307873292.23355" 
    assign $P3641, $P3642
    nqp_get_sc_object $P3643, "1307873288.51323", 143
    .const 'Sub' $P3644 = "174_1307873292.23355" 
    assign $P3643, $P3644
    nqp_get_sc_object $P3645, "1307873288.51323", 144
    .const 'Sub' $P3646 = "175_1307873292.23355" 
    assign $P3645, $P3646
    .const 'Sub' $P3647 = "12_1307873292.23355" 
    $P3648 = $P3647."get_lexinfo"()
    nqp_get_sc_object $P3649, "1307873288.51323", 1
    $P3648."set_static_lexpad_value"("$?PACKAGE", $P3649)
    .const 'Sub' $P3650 = "12_1307873292.23355" 
    $P3651 = $P3650."get_lexinfo"()
    $P3651."finish_static_lexpad"()
    .const 'Sub' $P3652 = "12_1307873292.23355" 
    $P3653 = $P3652."get_lexinfo"()
    nqp_get_sc_object $P3654, "1307873288.51323", 1
    $P3653."set_static_lexpad_value"("$?CLASS", $P3654)
    .const 'Sub' $P3655 = "12_1307873292.23355" 
    $P3656 = $P3655."get_lexinfo"()
    $P3656."finish_static_lexpad"()
    nqp_get_sc_object $P3657, "1307873288.51323", 146
    .const 'Sub' $P3658 = "192_1307873292.23355" 
    assign $P3657, $P3658
    nqp_get_sc_object $P3659, "1307873288.51323", 147
    .const 'Sub' $P3660 = "193_1307873292.23355" 
    assign $P3659, $P3660
    nqp_get_sc_object $P3661, "1307873288.51323", 148
    .const 'Sub' $P3662 = "195_1307873292.23355" 
    assign $P3661, $P3662
    nqp_get_sc_object $P3663, "1307873288.51323", 149
    .const 'Sub' $P3664 = "196_1307873292.23355" 
    assign $P3663, $P3664
    nqp_get_sc_object $P3665, "1307873288.51323", 150
    .const 'Sub' $P3666 = "199_1307873292.23355" 
    assign $P3665, $P3666
    nqp_get_sc_object $P3667, "1307873288.51323", 151
    .const 'Sub' $P3668 = "201_1307873292.23355" 
    assign $P3667, $P3668
    nqp_get_sc_object $P3669, "1307873288.51323", 152
    .const 'Sub' $P3670 = "203_1307873292.23355" 
    assign $P3669, $P3670
    nqp_get_sc_object $P3671, "1307873288.51323", 153
    .const 'Sub' $P3672 = "205_1307873292.23355" 
    assign $P3671, $P3672
    nqp_get_sc_object $P3673, "1307873288.51323", 154
    .const 'Sub' $P3674 = "206_1307873292.23355" 
    assign $P3673, $P3674
    nqp_get_sc_object $P3675, "1307873288.51323", 155
    .const 'Sub' $P3676 = "207_1307873292.23355" 
    assign $P3675, $P3676
    nqp_get_sc_object $P3677, "1307873288.51323", 156
    .const 'Sub' $P3678 = "208_1307873292.23355" 
    assign $P3677, $P3678
    nqp_get_sc_object $P3679, "1307873288.51323", 157
    .const 'Sub' $P3680 = "209_1307873292.23355" 
    assign $P3679, $P3680
    nqp_get_sc_object $P3681, "1307873288.51323", 158
    .const 'Sub' $P3682 = "211_1307873292.23355" 
    assign $P3681, $P3682
    nqp_get_sc_object $P3683, "1307873288.51323", 159
    .const 'Sub' $P3684 = "212_1307873292.23355" 
    assign $P3683, $P3684
    nqp_get_sc_object $P3685, "1307873288.51323", 160
    .const 'Sub' $P3686 = "213_1307873292.23355" 
    assign $P3685, $P3686
    nqp_get_sc_object $P3687, "1307873288.51323", 161
    .const 'Sub' $P3688 = "214_1307873292.23355" 
    assign $P3687, $P3688
    nqp_get_sc_object $P3689, "1307873288.51323", 162
    .const 'Sub' $P3690 = "215_1307873292.23355" 
    assign $P3689, $P3690
    nqp_get_sc_object $P3691, "1307873288.51323", 163
    .const 'Sub' $P3692 = "216_1307873292.23355" 
    assign $P3691, $P3692
    nqp_get_sc_object $P3693, "1307873288.51323", 164
    .const 'Sub' $P3694 = "217_1307873292.23355" 
    assign $P3693, $P3694
    nqp_get_sc_object $P3695, "1307873288.51323", 165
    .const 'Sub' $P3696 = "218_1307873292.23355" 
    assign $P3695, $P3696
    nqp_get_sc_object $P3697, "1307873288.51323", 166
    .const 'Sub' $P3698 = "219_1307873292.23355" 
    assign $P3697, $P3698
    nqp_get_sc_object $P3699, "1307873288.51323", 167
    .const 'Sub' $P3700 = "220_1307873292.23355" 
    assign $P3699, $P3700
    nqp_get_sc_object $P3701, "1307873288.51323", 168
    .const 'Sub' $P3702 = "221_1307873292.23355" 
    assign $P3701, $P3702
    nqp_get_sc_object $P3703, "1307873288.51323", 169
    .const 'Sub' $P3704 = "222_1307873292.23355" 
    assign $P3703, $P3704
    nqp_get_sc_object $P3705, "1307873288.51323", 170
    .const 'Sub' $P3706 = "223_1307873292.23355" 
    assign $P3705, $P3706
    nqp_get_sc_object $P3707, "1307873288.51323", 171
    .const 'Sub' $P3708 = "224_1307873292.23355" 
    assign $P3707, $P3708
    nqp_get_sc_object $P3709, "1307873288.51323", 172
    .const 'Sub' $P3710 = "225_1307873292.23355" 
    assign $P3709, $P3710
    nqp_get_sc_object $P3711, "1307873288.51323", 173
    .const 'Sub' $P3712 = "226_1307873292.23355" 
    assign $P3711, $P3712
    nqp_get_sc_object $P3713, "1307873288.51323", 174
    .const 'Sub' $P3714 = "227_1307873292.23355" 
    assign $P3713, $P3714
    nqp_get_sc_object $P3715, "1307873288.51323", 175
    .const 'Sub' $P3716 = "228_1307873292.23355" 
    assign $P3715, $P3716
    nqp_get_sc_object $P3717, "1307873288.51323", 176
    .const 'Sub' $P3718 = "229_1307873292.23355" 
    assign $P3717, $P3718
    nqp_get_sc_object $P3719, "1307873288.51323", 177
    .const 'Sub' $P3720 = "230_1307873292.23355" 
    assign $P3719, $P3720
    nqp_get_sc_object $P3721, "1307873288.51323", 178
    .const 'Sub' $P3722 = "231_1307873292.23355" 
    assign $P3721, $P3722
    nqp_get_sc_object $P3723, "1307873288.51323", 179
    .const 'Sub' $P3724 = "232_1307873292.23355" 
    assign $P3723, $P3724
    nqp_get_sc_object $P3725, "1307873288.51323", 180
    .const 'Sub' $P3726 = "233_1307873292.23355" 
    assign $P3725, $P3726
    nqp_get_sc_object $P3727, "1307873288.51323", 181
    .const 'Sub' $P3728 = "234_1307873292.23355" 
    assign $P3727, $P3728
    nqp_get_sc_object $P3729, "1307873288.51323", 182
    .const 'Sub' $P3730 = "235_1307873292.23355" 
    assign $P3729, $P3730
    nqp_get_sc_object $P3731, "1307873288.51323", 183
    .const 'Sub' $P3732 = "236_1307873292.23355" 
    assign $P3731, $P3732
    nqp_get_sc_object $P3733, "1307873288.51323", 184
    .const 'Sub' $P3734 = "237_1307873292.23355" 
    assign $P3733, $P3734
    nqp_get_sc_object $P3735, "1307873288.51323", 185
    .const 'Sub' $P3736 = "238_1307873292.23355" 
    assign $P3735, $P3736
    nqp_get_sc_object $P3737, "1307873288.51323", 186
    .const 'Sub' $P3738 = "239_1307873292.23355" 
    assign $P3737, $P3738
    nqp_get_sc_object $P3739, "1307873288.51323", 187
    .const 'Sub' $P3740 = "240_1307873292.23355" 
    assign $P3739, $P3740
    nqp_get_sc_object $P3741, "1307873288.51323", 188
    .const 'Sub' $P3742 = "241_1307873292.23355" 
    assign $P3741, $P3742
    nqp_get_sc_object $P3743, "1307873288.51323", 189
    .const 'Sub' $P3744 = "242_1307873292.23355" 
    assign $P3743, $P3744
    nqp_get_sc_object $P3745, "1307873288.51323", 190
    .const 'Sub' $P3746 = "243_1307873292.23355" 
    assign $P3745, $P3746
    nqp_get_sc_object $P3747, "1307873288.51323", 191
    .const 'Sub' $P3748 = "244_1307873292.23355" 
    assign $P3747, $P3748
    nqp_get_sc_object $P3749, "1307873288.51323", 192
    .const 'Sub' $P3750 = "245_1307873292.23355" 
    assign $P3749, $P3750
    nqp_get_sc_object $P3751, "1307873288.51323", 193
    .const 'Sub' $P3752 = "246_1307873292.23355" 
    assign $P3751, $P3752
    nqp_get_sc_object $P3753, "1307873288.51323", 194
    .const 'Sub' $P3754 = "249_1307873292.23355" 
    assign $P3753, $P3754
    nqp_get_sc_object $P3755, "1307873288.51323", 195
    .const 'Sub' $P3756 = "251_1307873292.23355" 
    assign $P3755, $P3756
    nqp_get_sc_object $P3757, "1307873288.51323", 196
    .const 'Sub' $P3758 = "255_1307873292.23355" 
    assign $P3757, $P3758
    .const 'Sub' $P3759 = "177_1307873292.23355" 
    nqp_get_sc_object $P3760, "1307873288.51323", 145
    get_who $P3761, $P3760
    set $P3761["buildsub"], $P3759
    nqp_get_sc_object $P3762, "1307873288.51323", 197
    .const 'Sub' $P3763 = "256_1307873292.23355" 
    assign $P3762, $P3763
    nqp_get_sc_object $P3764, "1307873288.51323", 198
    .const 'Sub' $P3765 = "257_1307873292.23355" 
    assign $P3764, $P3765
    .const 'Sub' $P3766 = "176_1307873292.23355" 
    $P3767 = $P3766."get_lexinfo"()
    nqp_get_sc_object $P3768, "1307873288.51323", 145
    $P3767."set_static_lexpad_value"("$?PACKAGE", $P3768)
    .const 'Sub' $P3769 = "176_1307873292.23355" 
    $P3770 = $P3769."get_lexinfo"()
    $P3770."finish_static_lexpad"()
    .const 'Sub' $P3771 = "176_1307873292.23355" 
    $P3772 = $P3771."get_lexinfo"()
    nqp_get_sc_object $P3773, "1307873288.51323", 145
    $P3772."set_static_lexpad_value"("$?CLASS", $P3773)
    .const 'Sub' $P3774 = "176_1307873292.23355" 
    $P3775 = $P3774."get_lexinfo"()
    $P3775."finish_static_lexpad"()
    .const 'Sub' $P3776 = "258_1307873292.23355" 
    $P3777 = $P3776."get_lexinfo"()
    nqp_get_sc_object $P3778, "1307873288.51323", 199
    $P3777."set_static_lexpad_value"("$?PACKAGE", $P3778)
    .const 'Sub' $P3779 = "258_1307873292.23355" 
    $P3780 = $P3779."get_lexinfo"()
    $P3780."finish_static_lexpad"()
    .const 'Sub' $P3781 = "258_1307873292.23355" 
    $P3782 = $P3781."get_lexinfo"()
    nqp_get_sc_object $P3783, "1307873288.51323", 199
    $P3782."set_static_lexpad_value"("$?CLASS", $P3783)
    .const 'Sub' $P3784 = "258_1307873292.23355" 
    $P3785 = $P3784."get_lexinfo"()
    $P3785."finish_static_lexpad"()
    goto if_2467_end
  if_2467:
    nqp_dynop_setup 
    getinterp $P2470
    get_class $P2471, "LexPad"
    get_class $P2472, "NQPLexPad"
    $P2470."hll_map"($P2471, $P2472)
    nqp_create_sc $P2473, "1307873288.51323"
    .local pmc cur_sc
    set cur_sc, $P2473
    nqp_get_sc_object $P2474, "__6MODEL_CORE__", 0
    $P2475 = $P2474."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2475, cur_sc
    nqp_set_sc_object "1307873288.51323", 0, $P2475
    .const 'Sub' $P2476 = "10_1307873292.23355" 
    $P2477 = $P2476."get_lexinfo"()
    nqp_get_sc_object $P2478, "1307873288.51323", 0
    $P2477."set_static_lexpad_value"("GLOBALish", $P2478)
    .const 'Sub' $P2479 = "10_1307873292.23355" 
    $P2480 = $P2479."get_lexinfo"()
    $P2480."finish_static_lexpad"()
    .const 'Sub' $P2481 = "10_1307873292.23355" 
    $P2482 = $P2481."get_lexinfo"()
    nqp_get_sc_object $P2483, "1307873288.51323", 0
    $P2482."set_static_lexpad_value"("$?PACKAGE", $P2483)
    .const 'Sub' $P2484 = "10_1307873292.23355" 
    $P2485 = $P2484."get_lexinfo"()
    $P2485."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2486, "ModuleLoader"
    $P2487 = $P2486."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2487)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2488, "ModuleLoader"
    nqp_get_sc_object $P2489, "1307873288.51323", 0
    $P2488."load_module"("NQPRegex", $P2489)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2490, "ModuleLoader"
    nqp_get_sc_object $P2491, "1307873288.51323", 0
    $P2490."load_module"("NQPHLL", $P2491)
    nqp_get_sc_object $P2492, "1307873274.8766", 41
    $P2493 = $P2492."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2493, cur_sc
    nqp_set_sc_object "1307873288.51323", 1, $P2493
    nqp_get_sc_object $P2494, "1307873288.51323", 1
    nqp_get_sc_object $P2495, "1307873288.51323", 0
    nqp_get_package_through_who $P2496, $P2495, "Regex"
    nqp_get_package_through_who $P2497, $P2496, "P6Regex"
    get_who $P2498, $P2497
    set $P2498["Grammar"], $P2494
    nqp_get_sc_object $P2499, "1307873288.51323", 1
    get_how $P2500, $P2499
    nqp_get_sc_object $P2501, "1307873288.51323", 1
    .const 'Sub' $P2502 = "13_1307873292.23355" 
    $P2500."add_method"($P2501, "obs", $P2502)
    nqp_get_sc_object $P2503, "1307873288.51323", 1
    get_how $P2504, $P2503
    nqp_get_sc_object $P2505, "1307873288.51323", 1
    .const 'Sub' $P2506 = "14_1307873292.23355" 
    $P2504."add_method"($P2505, "ws", $P2506)
    nqp_get_sc_object $P2507, "1307873288.51323", 1
    get_how $P2508, $P2507
    nqp_get_sc_object $P2509, "1307873288.51323", 1
    .const 'Sub' $P2510 = "15_1307873292.23355" 
    $P2508."add_method"($P2509, "!PREFIX__ws", $P2510)
    nqp_get_sc_object $P2511, "1307873288.51323", 1
    get_how $P2512, $P2511
    nqp_get_sc_object $P2513, "1307873288.51323", 1
    .const 'Sub' $P2514 = "16_1307873292.23355" 
    $P2512."add_method"($P2513, "normspace", $P2514)
    nqp_get_sc_object $P2515, "1307873288.51323", 1
    get_how $P2516, $P2515
    nqp_get_sc_object $P2517, "1307873288.51323", 1
    .const 'Sub' $P2518 = "18_1307873292.23355" 
    $P2516."add_method"($P2517, "!PREFIX__normspace", $P2518)
    nqp_get_sc_object $P2519, "1307873288.51323", 1
    get_how $P2520, $P2519
    nqp_get_sc_object $P2521, "1307873288.51323", 1
    .const 'Sub' $P2522 = "19_1307873292.23355" 
    $P2520."add_method"($P2521, "identifier", $P2522)
    nqp_get_sc_object $P2523, "1307873288.51323", 1
    get_how $P2524, $P2523
    nqp_get_sc_object $P2525, "1307873288.51323", 1
    .const 'Sub' $P2526 = "20_1307873292.23355" 
    $P2524."add_method"($P2525, "!PREFIX__identifier", $P2526)
    nqp_get_sc_object $P2527, "1307873288.51323", 1
    get_how $P2528, $P2527
    nqp_get_sc_object $P2529, "1307873288.51323", 1
    .const 'Sub' $P2530 = "21_1307873292.23355" 
    $P2528."add_method"($P2529, "arg", $P2530)
    nqp_get_sc_object $P2531, "1307873288.51323", 1
    get_how $P2532, $P2531
    nqp_get_sc_object $P2533, "1307873288.51323", 1
    .const 'Sub' $P2534 = "22_1307873292.23355" 
    $P2532."add_method"($P2533, "!PREFIX__arg", $P2534)
    nqp_get_sc_object $P2535, "1307873288.51323", 1
    get_how $P2536, $P2535
    nqp_get_sc_object $P2537, "1307873288.51323", 1
    .const 'Sub' $P2538 = "23_1307873292.23355" 
    $P2536."add_method"($P2537, "arglist", $P2538)
    nqp_get_sc_object $P2539, "1307873288.51323", 1
    get_how $P2540, $P2539
    nqp_get_sc_object $P2541, "1307873288.51323", 1
    .const 'Sub' $P2542 = "24_1307873292.23355" 
    $P2540."add_method"($P2541, "!PREFIX__arglist", $P2542)
    nqp_get_sc_object $P2543, "1307873288.51323", 1
    get_how $P2544, $P2543
    nqp_get_sc_object $P2545, "1307873288.51323", 1
    .const 'Sub' $P2546 = "25_1307873292.23355" 
    $P2544."add_method"($P2545, "TOP", $P2546)
    nqp_get_sc_object $P2547, "1307873288.51323", 1
    get_how $P2548, $P2547
    nqp_get_sc_object $P2549, "1307873288.51323", 1
    .const 'Sub' $P2550 = "26_1307873292.23355" 
    $P2548."add_method"($P2549, "!PREFIX__TOP", $P2550)
    nqp_get_sc_object $P2551, "1307873288.51323", 1
    get_how $P2552, $P2551
    nqp_get_sc_object $P2553, "1307873288.51323", 1
    .const 'Sub' $P2554 = "27_1307873292.23355" 
    $P2552."add_method"($P2553, "nibbler", $P2554)
    nqp_get_sc_object $P2555, "1307873288.51323", 1
    get_how $P2556, $P2555
    nqp_get_sc_object $P2557, "1307873288.51323", 1
    .const 'Sub' $P2558 = "29_1307873292.23355" 
    $P2556."add_method"($P2557, "!PREFIX__nibbler", $P2558)
    nqp_get_sc_object $P2559, "1307873288.51323", 1
    get_how $P2560, $P2559
    nqp_get_sc_object $P2561, "1307873288.51323", 1
    .const 'Sub' $P2562 = "30_1307873292.23355" 
    $P2560."add_method"($P2561, "termconj", $P2562)
    nqp_get_sc_object $P2563, "1307873288.51323", 1
    get_how $P2564, $P2563
    nqp_get_sc_object $P2565, "1307873288.51323", 1
    .const 'Sub' $P2566 = "31_1307873292.23355" 
    $P2564."add_method"($P2565, "!PREFIX__termconj", $P2566)
    nqp_get_sc_object $P2567, "1307873288.51323", 1
    get_how $P2568, $P2567
    nqp_get_sc_object $P2569, "1307873288.51323", 1
    .const 'Sub' $P2570 = "32_1307873292.23355" 
    $P2568."add_method"($P2569, "termish", $P2570)
    nqp_get_sc_object $P2571, "1307873288.51323", 1
    get_how $P2572, $P2571
    nqp_get_sc_object $P2573, "1307873288.51323", 1
    .const 'Sub' $P2574 = "34_1307873292.23355" 
    $P2572."add_method"($P2573, "!PREFIX__termish", $P2574)
    nqp_get_sc_object $P2575, "1307873288.51323", 1
    get_how $P2576, $P2575
    nqp_get_sc_object $P2577, "1307873288.51323", 1
    .const 'Sub' $P2578 = "35_1307873292.23355" 
    $P2576."add_method"($P2577, "quantified_atom", $P2578)
    nqp_get_sc_object $P2579, "1307873288.51323", 1
    get_how $P2580, $P2579
    nqp_get_sc_object $P2581, "1307873288.51323", 1
    .const 'Sub' $P2582 = "37_1307873292.23355" 
    $P2580."add_method"($P2581, "!PREFIX__quantified_atom", $P2582)
    nqp_get_sc_object $P2583, "1307873288.51323", 1
    get_how $P2584, $P2583
    nqp_get_sc_object $P2585, "1307873288.51323", 1
    .const 'Sub' $P2586 = "38_1307873292.23355" 
    $P2584."add_method"($P2585, "atom", $P2586)
    nqp_get_sc_object $P2587, "1307873288.51323", 1
    get_how $P2588, $P2587
    nqp_get_sc_object $P2589, "1307873288.51323", 1
    .const 'Sub' $P2590 = "40_1307873292.23355" 
    $P2588."add_method"($P2589, "!PREFIX__atom", $P2590)
    nqp_get_sc_object $P2591, "1307873288.51323", 1
    get_how $P2592, $P2591
    nqp_get_sc_object $P2593, "1307873288.51323", 1
    .const 'Sub' $P2594 = "41_1307873292.23355" 
    $P2592."add_method"($P2593, "quantifier", $P2594)
    nqp_get_sc_object $P2595, "1307873288.51323", 1
    get_how $P2596, $P2595
    nqp_get_sc_object $P2597, "1307873288.51323", 1
    .const 'Sub' $P2598 = "42_1307873292.23355" 
    $P2596."add_method"($P2597, "!PREFIX__quantifier", $P2598)
    nqp_get_sc_object $P2599, "1307873288.51323", 1
    get_how $P2600, $P2599
    nqp_get_sc_object $P2601, "1307873288.51323", 1
    .const 'Sub' $P2602 = "43_1307873292.23355" 
    $P2600."add_method"($P2601, "quantifier:sym<*>", $P2602)
    nqp_get_sc_object $P2603, "1307873288.51323", 1
    get_how $P2604, $P2603
    nqp_get_sc_object $P2605, "1307873288.51323", 1
    .const 'Sub' $P2606 = "44_1307873292.23355" 
    $P2604."add_method"($P2605, "!PREFIX__quantifier:sym<*>", $P2606)
    nqp_get_sc_object $P2607, "1307873288.51323", 1
    get_how $P2608, $P2607
    nqp_get_sc_object $P2609, "1307873288.51323", 1
    .const 'Sub' $P2610 = "45_1307873292.23355" 
    $P2608."add_method"($P2609, "quantifier:sym<+>", $P2610)
    nqp_get_sc_object $P2611, "1307873288.51323", 1
    get_how $P2612, $P2611
    nqp_get_sc_object $P2613, "1307873288.51323", 1
    .const 'Sub' $P2614 = "46_1307873292.23355" 
    $P2612."add_method"($P2613, "!PREFIX__quantifier:sym<+>", $P2614)
    nqp_get_sc_object $P2615, "1307873288.51323", 1
    get_how $P2616, $P2615
    nqp_get_sc_object $P2617, "1307873288.51323", 1
    .const 'Sub' $P2618 = "47_1307873292.23355" 
    $P2616."add_method"($P2617, "quantifier:sym<?>", $P2618)
    nqp_get_sc_object $P2619, "1307873288.51323", 1
    get_how $P2620, $P2619
    nqp_get_sc_object $P2621, "1307873288.51323", 1
    .const 'Sub' $P2622 = "48_1307873292.23355" 
    $P2620."add_method"($P2621, "!PREFIX__quantifier:sym<?>", $P2622)
    nqp_get_sc_object $P2623, "1307873288.51323", 1
    get_how $P2624, $P2623
    nqp_get_sc_object $P2625, "1307873288.51323", 1
    .const 'Sub' $P2626 = "49_1307873292.23355" 
    $P2624."add_method"($P2625, "quantifier:sym<{N,M}>", $P2626)
    nqp_get_sc_object $P2627, "1307873288.51323", 1
    get_how $P2628, $P2627
    nqp_get_sc_object $P2629, "1307873288.51323", 1
    .const 'Sub' $P2630 = "54_1307873292.23355" 
    $P2628."add_method"($P2629, "!PREFIX__quantifier:sym<{N,M}>", $P2630)
    nqp_get_sc_object $P2631, "1307873288.51323", 1
    get_how $P2632, $P2631
    nqp_get_sc_object $P2633, "1307873288.51323", 1
    .const 'Sub' $P2634 = "55_1307873292.23355" 
    $P2632."add_method"($P2633, "quantifier:sym<**>", $P2634)
    nqp_get_sc_object $P2635, "1307873288.51323", 1
    get_how $P2636, $P2635
    nqp_get_sc_object $P2637, "1307873288.51323", 1
    .const 'Sub' $P2638 = "56_1307873292.23355" 
    $P2636."add_method"($P2637, "!PREFIX__quantifier:sym<**>", $P2638)
    nqp_get_sc_object $P2639, "1307873288.51323", 1
    get_how $P2640, $P2639
    nqp_get_sc_object $P2641, "1307873288.51323", 1
    .const 'Sub' $P2642 = "57_1307873292.23355" 
    $P2640."add_method"($P2641, "backmod", $P2642)
    nqp_get_sc_object $P2643, "1307873288.51323", 1
    get_how $P2644, $P2643
    nqp_get_sc_object $P2645, "1307873288.51323", 1
    .const 'Sub' $P2646 = "59_1307873292.23355" 
    $P2644."add_method"($P2645, "!PREFIX__backmod", $P2646)
    nqp_get_sc_object $P2647, "1307873288.51323", 1
    get_how $P2648, $P2647
    nqp_get_sc_object $P2649, "1307873288.51323", 1
    .const 'Sub' $P2650 = "60_1307873292.23355" 
    $P2648."add_method"($P2649, "metachar", $P2650)
    nqp_get_sc_object $P2651, "1307873288.51323", 1
    get_how $P2652, $P2651
    nqp_get_sc_object $P2653, "1307873288.51323", 1
    .const 'Sub' $P2654 = "61_1307873292.23355" 
    $P2652."add_method"($P2653, "!PREFIX__metachar", $P2654)
    nqp_get_sc_object $P2655, "1307873288.51323", 1
    get_how $P2656, $P2655
    nqp_get_sc_object $P2657, "1307873288.51323", 1
    .const 'Sub' $P2658 = "62_1307873292.23355" 
    $P2656."add_method"($P2657, "metachar:sym<ws>", $P2658)
    nqp_get_sc_object $P2659, "1307873288.51323", 1
    get_how $P2660, $P2659
    nqp_get_sc_object $P2661, "1307873288.51323", 1
    .const 'Sub' $P2662 = "63_1307873292.23355" 
    $P2660."add_method"($P2661, "!PREFIX__metachar:sym<ws>", $P2662)
    nqp_get_sc_object $P2663, "1307873288.51323", 1
    get_how $P2664, $P2663
    nqp_get_sc_object $P2665, "1307873288.51323", 1
    .const 'Sub' $P2666 = "64_1307873292.23355" 
    $P2664."add_method"($P2665, "metachar:sym<[ ]>", $P2666)
    nqp_get_sc_object $P2667, "1307873288.51323", 1
    get_how $P2668, $P2667
    nqp_get_sc_object $P2669, "1307873288.51323", 1
    .const 'Sub' $P2670 = "65_1307873292.23355" 
    $P2668."add_method"($P2669, "!PREFIX__metachar:sym<[ ]>", $P2670)
    nqp_get_sc_object $P2671, "1307873288.51323", 1
    get_how $P2672, $P2671
    nqp_get_sc_object $P2673, "1307873288.51323", 1
    .const 'Sub' $P2674 = "66_1307873292.23355" 
    $P2672."add_method"($P2673, "metachar:sym<( )>", $P2674)
    nqp_get_sc_object $P2675, "1307873288.51323", 1
    get_how $P2676, $P2675
    nqp_get_sc_object $P2677, "1307873288.51323", 1
    .const 'Sub' $P2678 = "67_1307873292.23355" 
    $P2676."add_method"($P2677, "!PREFIX__metachar:sym<( )>", $P2678)
    nqp_get_sc_object $P2679, "1307873288.51323", 1
    get_how $P2680, $P2679
    nqp_get_sc_object $P2681, "1307873288.51323", 1
    .const 'Sub' $P2682 = "68_1307873292.23355" 
    $P2680."add_method"($P2681, "metachar:sym<'>", $P2682)
    nqp_get_sc_object $P2683, "1307873288.51323", 1
    get_how $P2684, $P2683
    nqp_get_sc_object $P2685, "1307873288.51323", 1
    .const 'Sub' $P2686 = "69_1307873292.23355" 
    $P2684."add_method"($P2685, "!PREFIX__metachar:sym<'>", $P2686)
    nqp_get_sc_object $P2687, "1307873288.51323", 1
    get_how $P2688, $P2687
    nqp_get_sc_object $P2689, "1307873288.51323", 1
    .const 'Sub' $P2690 = "70_1307873292.23355" 
    $P2688."add_method"($P2689, "metachar:sym<\">", $P2690)
    nqp_get_sc_object $P2691, "1307873288.51323", 1
    get_how $P2692, $P2691
    nqp_get_sc_object $P2693, "1307873288.51323", 1
    .const 'Sub' $P2694 = "71_1307873292.23355" 
    $P2692."add_method"($P2693, "!PREFIX__metachar:sym<\">", $P2694)
    nqp_get_sc_object $P2695, "1307873288.51323", 1
    get_how $P2696, $P2695
    nqp_get_sc_object $P2697, "1307873288.51323", 1
    .const 'Sub' $P2698 = "72_1307873292.23355" 
    $P2696."add_method"($P2697, "metachar:sym<.>", $P2698)
    nqp_get_sc_object $P2699, "1307873288.51323", 1
    get_how $P2700, $P2699
    nqp_get_sc_object $P2701, "1307873288.51323", 1
    .const 'Sub' $P2702 = "73_1307873292.23355" 
    $P2700."add_method"($P2701, "!PREFIX__metachar:sym<.>", $P2702)
    nqp_get_sc_object $P2703, "1307873288.51323", 1
    get_how $P2704, $P2703
    nqp_get_sc_object $P2705, "1307873288.51323", 1
    .const 'Sub' $P2706 = "74_1307873292.23355" 
    $P2704."add_method"($P2705, "metachar:sym<^>", $P2706)
    nqp_get_sc_object $P2707, "1307873288.51323", 1
    get_how $P2708, $P2707
    nqp_get_sc_object $P2709, "1307873288.51323", 1
    .const 'Sub' $P2710 = "75_1307873292.23355" 
    $P2708."add_method"($P2709, "!PREFIX__metachar:sym<^>", $P2710)
    nqp_get_sc_object $P2711, "1307873288.51323", 1
    get_how $P2712, $P2711
    nqp_get_sc_object $P2713, "1307873288.51323", 1
    .const 'Sub' $P2714 = "76_1307873292.23355" 
    $P2712."add_method"($P2713, "metachar:sym<^^>", $P2714)
    nqp_get_sc_object $P2715, "1307873288.51323", 1
    get_how $P2716, $P2715
    nqp_get_sc_object $P2717, "1307873288.51323", 1
    .const 'Sub' $P2718 = "77_1307873292.23355" 
    $P2716."add_method"($P2717, "!PREFIX__metachar:sym<^^>", $P2718)
    nqp_get_sc_object $P2719, "1307873288.51323", 1
    get_how $P2720, $P2719
    nqp_get_sc_object $P2721, "1307873288.51323", 1
    .const 'Sub' $P2722 = "78_1307873292.23355" 
    $P2720."add_method"($P2721, "metachar:sym<$>", $P2722)
    nqp_get_sc_object $P2723, "1307873288.51323", 1
    get_how $P2724, $P2723
    nqp_get_sc_object $P2725, "1307873288.51323", 1
    .const 'Sub' $P2726 = "79_1307873292.23355" 
    $P2724."add_method"($P2725, "!PREFIX__metachar:sym<$>", $P2726)
    nqp_get_sc_object $P2727, "1307873288.51323", 1
    get_how $P2728, $P2727
    nqp_get_sc_object $P2729, "1307873288.51323", 1
    .const 'Sub' $P2730 = "80_1307873292.23355" 
    $P2728."add_method"($P2729, "metachar:sym<$$>", $P2730)
    nqp_get_sc_object $P2731, "1307873288.51323", 1
    get_how $P2732, $P2731
    nqp_get_sc_object $P2733, "1307873288.51323", 1
    .const 'Sub' $P2734 = "81_1307873292.23355" 
    $P2732."add_method"($P2733, "!PREFIX__metachar:sym<$$>", $P2734)
    nqp_get_sc_object $P2735, "1307873288.51323", 1
    get_how $P2736, $P2735
    nqp_get_sc_object $P2737, "1307873288.51323", 1
    .const 'Sub' $P2738 = "82_1307873292.23355" 
    $P2736."add_method"($P2737, "metachar:sym<:::>", $P2738)
    nqp_get_sc_object $P2739, "1307873288.51323", 1
    get_how $P2740, $P2739
    nqp_get_sc_object $P2741, "1307873288.51323", 1
    .const 'Sub' $P2742 = "83_1307873292.23355" 
    $P2740."add_method"($P2741, "!PREFIX__metachar:sym<:::>", $P2742)
    nqp_get_sc_object $P2743, "1307873288.51323", 1
    get_how $P2744, $P2743
    nqp_get_sc_object $P2745, "1307873288.51323", 1
    .const 'Sub' $P2746 = "84_1307873292.23355" 
    $P2744."add_method"($P2745, "metachar:sym<::>", $P2746)
    nqp_get_sc_object $P2747, "1307873288.51323", 1
    get_how $P2748, $P2747
    nqp_get_sc_object $P2749, "1307873288.51323", 1
    .const 'Sub' $P2750 = "85_1307873292.23355" 
    $P2748."add_method"($P2749, "!PREFIX__metachar:sym<::>", $P2750)
    nqp_get_sc_object $P2751, "1307873288.51323", 1
    get_how $P2752, $P2751
    nqp_get_sc_object $P2753, "1307873288.51323", 1
    .const 'Sub' $P2754 = "86_1307873292.23355" 
    $P2752."add_method"($P2753, "metachar:sym<lwb>", $P2754)
    nqp_get_sc_object $P2755, "1307873288.51323", 1
    get_how $P2756, $P2755
    nqp_get_sc_object $P2757, "1307873288.51323", 1
    .const 'Sub' $P2758 = "87_1307873292.23355" 
    $P2756."add_method"($P2757, "!PREFIX__metachar:sym<lwb>", $P2758)
    nqp_get_sc_object $P2759, "1307873288.51323", 1
    get_how $P2760, $P2759
    nqp_get_sc_object $P2761, "1307873288.51323", 1
    .const 'Sub' $P2762 = "88_1307873292.23355" 
    $P2760."add_method"($P2761, "metachar:sym<rwb>", $P2762)
    nqp_get_sc_object $P2763, "1307873288.51323", 1
    get_how $P2764, $P2763
    nqp_get_sc_object $P2765, "1307873288.51323", 1
    .const 'Sub' $P2766 = "89_1307873292.23355" 
    $P2764."add_method"($P2765, "!PREFIX__metachar:sym<rwb>", $P2766)
    nqp_get_sc_object $P2767, "1307873288.51323", 1
    get_how $P2768, $P2767
    nqp_get_sc_object $P2769, "1307873288.51323", 1
    .const 'Sub' $P2770 = "90_1307873292.23355" 
    $P2768."add_method"($P2769, "metachar:sym<bs>", $P2770)
    nqp_get_sc_object $P2771, "1307873288.51323", 1
    get_how $P2772, $P2771
    nqp_get_sc_object $P2773, "1307873288.51323", 1
    .const 'Sub' $P2774 = "91_1307873292.23355" 
    $P2772."add_method"($P2773, "!PREFIX__metachar:sym<bs>", $P2774)
    nqp_get_sc_object $P2775, "1307873288.51323", 1
    get_how $P2776, $P2775
    nqp_get_sc_object $P2777, "1307873288.51323", 1
    .const 'Sub' $P2778 = "92_1307873292.23355" 
    $P2776."add_method"($P2777, "metachar:sym<mod>", $P2778)
    nqp_get_sc_object $P2779, "1307873288.51323", 1
    get_how $P2780, $P2779
    nqp_get_sc_object $P2781, "1307873288.51323", 1
    .const 'Sub' $P2782 = "93_1307873292.23355" 
    $P2780."add_method"($P2781, "!PREFIX__metachar:sym<mod>", $P2782)
    nqp_get_sc_object $P2783, "1307873288.51323", 1
    get_how $P2784, $P2783
    nqp_get_sc_object $P2785, "1307873288.51323", 1
    .const 'Sub' $P2786 = "94_1307873292.23355" 
    $P2784."add_method"($P2785, "metachar:sym<quantifier>", $P2786)
    nqp_get_sc_object $P2787, "1307873288.51323", 1
    get_how $P2788, $P2787
    nqp_get_sc_object $P2789, "1307873288.51323", 1
    .const 'Sub' $P2790 = "95_1307873292.23355" 
    $P2788."add_method"($P2789, "!PREFIX__metachar:sym<quantifier>", $P2790)
    nqp_get_sc_object $P2791, "1307873288.51323", 1
    get_how $P2792, $P2791
    nqp_get_sc_object $P2793, "1307873288.51323", 1
    .const 'Sub' $P2794 = "96_1307873292.23355" 
    $P2792."add_method"($P2793, "metachar:sym<~>", $P2794)
    nqp_get_sc_object $P2795, "1307873288.51323", 1
    get_how $P2796, $P2795
    nqp_get_sc_object $P2797, "1307873288.51323", 1
    .const 'Sub' $P2798 = "97_1307873292.23355" 
    $P2796."add_method"($P2797, "!PREFIX__metachar:sym<~>", $P2798)
    nqp_get_sc_object $P2799, "1307873288.51323", 1
    get_how $P2800, $P2799
    nqp_get_sc_object $P2801, "1307873288.51323", 1
    .const 'Sub' $P2802 = "98_1307873292.23355" 
    $P2800."add_method"($P2801, "metachar:sym<{*}>", $P2802)
    nqp_get_sc_object $P2803, "1307873288.51323", 1
    get_how $P2804, $P2803
    nqp_get_sc_object $P2805, "1307873288.51323", 1
    .const 'Sub' $P2806 = "99_1307873292.23355" 
    $P2804."add_method"($P2805, "!PREFIX__metachar:sym<{*}>", $P2806)
    nqp_get_sc_object $P2807, "1307873288.51323", 1
    get_how $P2808, $P2807
    nqp_get_sc_object $P2809, "1307873288.51323", 1
    .const 'Sub' $P2810 = "100_1307873292.23355" 
    $P2808."add_method"($P2809, "metachar:sym<assert>", $P2810)
    nqp_get_sc_object $P2811, "1307873288.51323", 1
    get_how $P2812, $P2811
    nqp_get_sc_object $P2813, "1307873288.51323", 1
    .const 'Sub' $P2814 = "101_1307873292.23355" 
    $P2812."add_method"($P2813, "!PREFIX__metachar:sym<assert>", $P2814)
    nqp_get_sc_object $P2815, "1307873288.51323", 1
    get_how $P2816, $P2815
    nqp_get_sc_object $P2817, "1307873288.51323", 1
    .const 'Sub' $P2818 = "102_1307873292.23355" 
    $P2816."add_method"($P2817, "metachar:sym<var>", $P2818)
    nqp_get_sc_object $P2819, "1307873288.51323", 1
    get_how $P2820, $P2819
    nqp_get_sc_object $P2821, "1307873288.51323", 1
    .const 'Sub' $P2822 = "103_1307873292.23355" 
    $P2820."add_method"($P2821, "!PREFIX__metachar:sym<var>", $P2822)
    nqp_get_sc_object $P2823, "1307873288.51323", 1
    get_how $P2824, $P2823
    nqp_get_sc_object $P2825, "1307873288.51323", 1
    .const 'Sub' $P2826 = "104_1307873292.23355" 
    $P2824."add_method"($P2825, "metachar:sym<PIR>", $P2826)
    nqp_get_sc_object $P2827, "1307873288.51323", 1
    get_how $P2828, $P2827
    nqp_get_sc_object $P2829, "1307873288.51323", 1
    .const 'Sub' $P2830 = "105_1307873292.23355" 
    $P2828."add_method"($P2829, "!PREFIX__metachar:sym<PIR>", $P2830)
    nqp_get_sc_object $P2831, "1307873288.51323", 1
    get_how $P2832, $P2831
    nqp_get_sc_object $P2833, "1307873288.51323", 1
    .const 'Sub' $P2834 = "106_1307873292.23355" 
    $P2832."add_method"($P2833, "backslash", $P2834)
    nqp_get_sc_object $P2835, "1307873288.51323", 1
    get_how $P2836, $P2835
    nqp_get_sc_object $P2837, "1307873288.51323", 1
    .const 'Sub' $P2838 = "107_1307873292.23355" 
    $P2836."add_method"($P2837, "!PREFIX__backslash", $P2838)
    nqp_get_sc_object $P2839, "1307873288.51323", 1
    get_how $P2840, $P2839
    nqp_get_sc_object $P2841, "1307873288.51323", 1
    .const 'Sub' $P2842 = "108_1307873292.23355" 
    $P2840."add_method"($P2841, "backslash:sym<w>", $P2842)
    nqp_get_sc_object $P2843, "1307873288.51323", 1
    get_how $P2844, $P2843
    nqp_get_sc_object $P2845, "1307873288.51323", 1
    .const 'Sub' $P2846 = "109_1307873292.23355" 
    $P2844."add_method"($P2845, "!PREFIX__backslash:sym<w>", $P2846)
    nqp_get_sc_object $P2847, "1307873288.51323", 1
    get_how $P2848, $P2847
    nqp_get_sc_object $P2849, "1307873288.51323", 1
    .const 'Sub' $P2850 = "110_1307873292.23355" 
    $P2848."add_method"($P2849, "backslash:sym<b>", $P2850)
    nqp_get_sc_object $P2851, "1307873288.51323", 1
    get_how $P2852, $P2851
    nqp_get_sc_object $P2853, "1307873288.51323", 1
    .const 'Sub' $P2854 = "111_1307873292.23355" 
    $P2852."add_method"($P2853, "!PREFIX__backslash:sym<b>", $P2854)
    nqp_get_sc_object $P2855, "1307873288.51323", 1
    get_how $P2856, $P2855
    nqp_get_sc_object $P2857, "1307873288.51323", 1
    .const 'Sub' $P2858 = "112_1307873292.23355" 
    $P2856."add_method"($P2857, "backslash:sym<e>", $P2858)
    nqp_get_sc_object $P2859, "1307873288.51323", 1
    get_how $P2860, $P2859
    nqp_get_sc_object $P2861, "1307873288.51323", 1
    .const 'Sub' $P2862 = "113_1307873292.23355" 
    $P2860."add_method"($P2861, "!PREFIX__backslash:sym<e>", $P2862)
    nqp_get_sc_object $P2863, "1307873288.51323", 1
    get_how $P2864, $P2863
    nqp_get_sc_object $P2865, "1307873288.51323", 1
    .const 'Sub' $P2866 = "114_1307873292.23355" 
    $P2864."add_method"($P2865, "backslash:sym<f>", $P2866)
    nqp_get_sc_object $P2867, "1307873288.51323", 1
    get_how $P2868, $P2867
    nqp_get_sc_object $P2869, "1307873288.51323", 1
    .const 'Sub' $P2870 = "115_1307873292.23355" 
    $P2868."add_method"($P2869, "!PREFIX__backslash:sym<f>", $P2870)
    nqp_get_sc_object $P2871, "1307873288.51323", 1
    get_how $P2872, $P2871
    nqp_get_sc_object $P2873, "1307873288.51323", 1
    .const 'Sub' $P2874 = "116_1307873292.23355" 
    $P2872."add_method"($P2873, "backslash:sym<h>", $P2874)
    nqp_get_sc_object $P2875, "1307873288.51323", 1
    get_how $P2876, $P2875
    nqp_get_sc_object $P2877, "1307873288.51323", 1
    .const 'Sub' $P2878 = "117_1307873292.23355" 
    $P2876."add_method"($P2877, "!PREFIX__backslash:sym<h>", $P2878)
    nqp_get_sc_object $P2879, "1307873288.51323", 1
    get_how $P2880, $P2879
    nqp_get_sc_object $P2881, "1307873288.51323", 1
    .const 'Sub' $P2882 = "118_1307873292.23355" 
    $P2880."add_method"($P2881, "backslash:sym<r>", $P2882)
    nqp_get_sc_object $P2883, "1307873288.51323", 1
    get_how $P2884, $P2883
    nqp_get_sc_object $P2885, "1307873288.51323", 1
    .const 'Sub' $P2886 = "119_1307873292.23355" 
    $P2884."add_method"($P2885, "!PREFIX__backslash:sym<r>", $P2886)
    nqp_get_sc_object $P2887, "1307873288.51323", 1
    get_how $P2888, $P2887
    nqp_get_sc_object $P2889, "1307873288.51323", 1
    .const 'Sub' $P2890 = "120_1307873292.23355" 
    $P2888."add_method"($P2889, "backslash:sym<t>", $P2890)
    nqp_get_sc_object $P2891, "1307873288.51323", 1
    get_how $P2892, $P2891
    nqp_get_sc_object $P2893, "1307873288.51323", 1
    .const 'Sub' $P2894 = "121_1307873292.23355" 
    $P2892."add_method"($P2893, "!PREFIX__backslash:sym<t>", $P2894)
    nqp_get_sc_object $P2895, "1307873288.51323", 1
    get_how $P2896, $P2895
    nqp_get_sc_object $P2897, "1307873288.51323", 1
    .const 'Sub' $P2898 = "122_1307873292.23355" 
    $P2896."add_method"($P2897, "backslash:sym<v>", $P2898)
    nqp_get_sc_object $P2899, "1307873288.51323", 1
    get_how $P2900, $P2899
    nqp_get_sc_object $P2901, "1307873288.51323", 1
    .const 'Sub' $P2902 = "123_1307873292.23355" 
    $P2900."add_method"($P2901, "!PREFIX__backslash:sym<v>", $P2902)
    nqp_get_sc_object $P2903, "1307873288.51323", 1
    get_how $P2904, $P2903
    nqp_get_sc_object $P2905, "1307873288.51323", 1
    .const 'Sub' $P2906 = "124_1307873292.23355" 
    $P2904."add_method"($P2905, "backslash:sym<o>", $P2906)
    nqp_get_sc_object $P2907, "1307873288.51323", 1
    get_how $P2908, $P2907
    nqp_get_sc_object $P2909, "1307873288.51323", 1
    .const 'Sub' $P2910 = "125_1307873292.23355" 
    $P2908."add_method"($P2909, "!PREFIX__backslash:sym<o>", $P2910)
    nqp_get_sc_object $P2911, "1307873288.51323", 1
    get_how $P2912, $P2911
    nqp_get_sc_object $P2913, "1307873288.51323", 1
    .const 'Sub' $P2914 = "126_1307873292.23355" 
    $P2912."add_method"($P2913, "backslash:sym<x>", $P2914)
    nqp_get_sc_object $P2915, "1307873288.51323", 1
    get_how $P2916, $P2915
    nqp_get_sc_object $P2917, "1307873288.51323", 1
    .const 'Sub' $P2918 = "127_1307873292.23355" 
    $P2916."add_method"($P2917, "!PREFIX__backslash:sym<x>", $P2918)
    nqp_get_sc_object $P2919, "1307873288.51323", 1
    get_how $P2920, $P2919
    nqp_get_sc_object $P2921, "1307873288.51323", 1
    .const 'Sub' $P2922 = "128_1307873292.23355" 
    $P2920."add_method"($P2921, "backslash:sym<c>", $P2922)
    nqp_get_sc_object $P2923, "1307873288.51323", 1
    get_how $P2924, $P2923
    nqp_get_sc_object $P2925, "1307873288.51323", 1
    .const 'Sub' $P2926 = "129_1307873292.23355" 
    $P2924."add_method"($P2925, "!PREFIX__backslash:sym<c>", $P2926)
    nqp_get_sc_object $P2927, "1307873288.51323", 1
    get_how $P2928, $P2927
    nqp_get_sc_object $P2929, "1307873288.51323", 1
    .const 'Sub' $P2930 = "130_1307873292.23355" 
    $P2928."add_method"($P2929, "backslash:sym<A>", $P2930)
    nqp_get_sc_object $P2931, "1307873288.51323", 1
    get_how $P2932, $P2931
    nqp_get_sc_object $P2933, "1307873288.51323", 1
    .const 'Sub' $P2934 = "131_1307873292.23355" 
    $P2932."add_method"($P2933, "!PREFIX__backslash:sym<A>", $P2934)
    nqp_get_sc_object $P2935, "1307873288.51323", 1
    get_how $P2936, $P2935
    nqp_get_sc_object $P2937, "1307873288.51323", 1
    .const 'Sub' $P2938 = "132_1307873292.23355" 
    $P2936."add_method"($P2937, "backslash:sym<z>", $P2938)
    nqp_get_sc_object $P2939, "1307873288.51323", 1
    get_how $P2940, $P2939
    nqp_get_sc_object $P2941, "1307873288.51323", 1
    .const 'Sub' $P2942 = "133_1307873292.23355" 
    $P2940."add_method"($P2941, "!PREFIX__backslash:sym<z>", $P2942)
    nqp_get_sc_object $P2943, "1307873288.51323", 1
    get_how $P2944, $P2943
    nqp_get_sc_object $P2945, "1307873288.51323", 1
    .const 'Sub' $P2946 = "134_1307873292.23355" 
    $P2944."add_method"($P2945, "backslash:sym<Z>", $P2946)
    nqp_get_sc_object $P2947, "1307873288.51323", 1
    get_how $P2948, $P2947
    nqp_get_sc_object $P2949, "1307873288.51323", 1
    .const 'Sub' $P2950 = "135_1307873292.23355" 
    $P2948."add_method"($P2949, "!PREFIX__backslash:sym<Z>", $P2950)
    nqp_get_sc_object $P2951, "1307873288.51323", 1
    get_how $P2952, $P2951
    nqp_get_sc_object $P2953, "1307873288.51323", 1
    .const 'Sub' $P2954 = "136_1307873292.23355" 
    $P2952."add_method"($P2953, "backslash:sym<Q>", $P2954)
    nqp_get_sc_object $P2955, "1307873288.51323", 1
    get_how $P2956, $P2955
    nqp_get_sc_object $P2957, "1307873288.51323", 1
    .const 'Sub' $P2958 = "137_1307873292.23355" 
    $P2956."add_method"($P2957, "!PREFIX__backslash:sym<Q>", $P2958)
    nqp_get_sc_object $P2959, "1307873288.51323", 1
    get_how $P2960, $P2959
    nqp_get_sc_object $P2961, "1307873288.51323", 1
    .const 'Sub' $P2962 = "138_1307873292.23355" 
    $P2960."add_method"($P2961, "backslash:sym<unrec>", $P2962)
    nqp_get_sc_object $P2963, "1307873288.51323", 1
    get_how $P2964, $P2963
    nqp_get_sc_object $P2965, "1307873288.51323", 1
    .const 'Sub' $P2966 = "140_1307873292.23355" 
    $P2964."add_method"($P2965, "!PREFIX__backslash:sym<unrec>", $P2966)
    nqp_get_sc_object $P2967, "1307873288.51323", 1
    get_how $P2968, $P2967
    nqp_get_sc_object $P2969, "1307873288.51323", 1
    .const 'Sub' $P2970 = "141_1307873292.23355" 
    $P2968."add_method"($P2969, "backslash:sym<misc>", $P2970)
    nqp_get_sc_object $P2971, "1307873288.51323", 1
    get_how $P2972, $P2971
    nqp_get_sc_object $P2973, "1307873288.51323", 1
    .const 'Sub' $P2974 = "142_1307873292.23355" 
    $P2972."add_method"($P2973, "!PREFIX__backslash:sym<misc>", $P2974)
    nqp_get_sc_object $P2975, "1307873288.51323", 1
    get_how $P2976, $P2975
    nqp_get_sc_object $P2977, "1307873288.51323", 1
    .const 'Sub' $P2978 = "143_1307873292.23355" 
    $P2976."add_method"($P2977, "assertion", $P2978)
    nqp_get_sc_object $P2979, "1307873288.51323", 1
    get_how $P2980, $P2979
    nqp_get_sc_object $P2981, "1307873288.51323", 1
    .const 'Sub' $P2982 = "144_1307873292.23355" 
    $P2980."add_method"($P2981, "!PREFIX__assertion", $P2982)
    nqp_get_sc_object $P2983, "1307873288.51323", 1
    get_how $P2984, $P2983
    nqp_get_sc_object $P2985, "1307873288.51323", 1
    .const 'Sub' $P2986 = "145_1307873292.23355" 
    $P2984."add_method"($P2985, "assertion:sym<?>", $P2986)
    nqp_get_sc_object $P2987, "1307873288.51323", 1
    get_how $P2988, $P2987
    nqp_get_sc_object $P2989, "1307873288.51323", 1
    .const 'Sub' $P2990 = "147_1307873292.23355" 
    $P2988."add_method"($P2989, "!PREFIX__assertion:sym<?>", $P2990)
    nqp_get_sc_object $P2991, "1307873288.51323", 1
    get_how $P2992, $P2991
    nqp_get_sc_object $P2993, "1307873288.51323", 1
    .const 'Sub' $P2994 = "148_1307873292.23355" 
    $P2992."add_method"($P2993, "assertion:sym<!>", $P2994)
    nqp_get_sc_object $P2995, "1307873288.51323", 1
    get_how $P2996, $P2995
    nqp_get_sc_object $P2997, "1307873288.51323", 1
    .const 'Sub' $P2998 = "150_1307873292.23355" 
    $P2996."add_method"($P2997, "!PREFIX__assertion:sym<!>", $P2998)
    nqp_get_sc_object $P2999, "1307873288.51323", 1
    get_how $P3000, $P2999
    nqp_get_sc_object $P3001, "1307873288.51323", 1
    .const 'Sub' $P3002 = "151_1307873292.23355" 
    $P3000."add_method"($P3001, "assertion:sym<method>", $P3002)
    nqp_get_sc_object $P3003, "1307873288.51323", 1
    get_how $P3004, $P3003
    nqp_get_sc_object $P3005, "1307873288.51323", 1
    .const 'Sub' $P3006 = "152_1307873292.23355" 
    $P3004."add_method"($P3005, "!PREFIX__assertion:sym<method>", $P3006)
    nqp_get_sc_object $P3007, "1307873288.51323", 1
    get_how $P3008, $P3007
    nqp_get_sc_object $P3009, "1307873288.51323", 1
    .const 'Sub' $P3010 = "153_1307873292.23355" 
    $P3008."add_method"($P3009, "assertion:sym<name>", $P3010)
    nqp_get_sc_object $P3011, "1307873288.51323", 1
    get_how $P3012, $P3011
    nqp_get_sc_object $P3013, "1307873288.51323", 1
    .const 'Sub' $P3014 = "155_1307873292.23355" 
    $P3012."add_method"($P3013, "!PREFIX__assertion:sym<name>", $P3014)
    nqp_get_sc_object $P3015, "1307873288.51323", 1
    get_how $P3016, $P3015
    nqp_get_sc_object $P3017, "1307873288.51323", 1
    .const 'Sub' $P3018 = "156_1307873292.23355" 
    $P3016."add_method"($P3017, "assertion:sym<[>", $P3018)
    nqp_get_sc_object $P3019, "1307873288.51323", 1
    get_how $P3020, $P3019
    nqp_get_sc_object $P3021, "1307873288.51323", 1
    .const 'Sub' $P3022 = "158_1307873292.23355" 
    $P3020."add_method"($P3021, "!PREFIX__assertion:sym<[>", $P3022)
    nqp_get_sc_object $P3023, "1307873288.51323", 1
    get_how $P3024, $P3023
    nqp_get_sc_object $P3025, "1307873288.51323", 1
    .const 'Sub' $P3026 = "159_1307873292.23355" 
    $P3024."add_method"($P3025, "cclass_elem", $P3026)
    nqp_get_sc_object $P3027, "1307873288.51323", 1
    get_how $P3028, $P3027
    nqp_get_sc_object $P3029, "1307873288.51323", 1
    .const 'Sub' $P3030 = "164_1307873292.23355" 
    $P3028."add_method"($P3029, "!PREFIX__cclass_elem", $P3030)
    nqp_get_sc_object $P3031, "1307873288.51323", 1
    get_how $P3032, $P3031
    nqp_get_sc_object $P3033, "1307873288.51323", 1
    .const 'Sub' $P3034 = "165_1307873292.23355" 
    $P3032."add_method"($P3033, "mod_internal", $P3034)
    nqp_get_sc_object $P3035, "1307873288.51323", 1
    get_how $P3036, $P3035
    nqp_get_sc_object $P3037, "1307873288.51323", 1
    .const 'Sub' $P3038 = "167_1307873292.23355" 
    $P3036."add_method"($P3037, "!PREFIX__mod_internal", $P3038)
    nqp_get_sc_object $P3039, "1307873288.51323", 1
    get_how $P3040, $P3039
    nqp_get_sc_object $P3041, "1307873288.51323", 1
    .const 'Sub' $P3042 = "168_1307873292.23355" 
    $P3040."add_method"($P3041, "mod_ident", $P3042)
    nqp_get_sc_object $P3043, "1307873288.51323", 1
    get_how $P3044, $P3043
    nqp_get_sc_object $P3045, "1307873288.51323", 1
    .const 'Sub' $P3046 = "169_1307873292.23355" 
    $P3044."add_method"($P3045, "!PREFIX__mod_ident", $P3046)
    nqp_get_sc_object $P3047, "1307873288.51323", 1
    get_how $P3048, $P3047
    nqp_get_sc_object $P3049, "1307873288.51323", 1
    .const 'Sub' $P3050 = "170_1307873292.23355" 
    $P3048."add_method"($P3049, "mod_ident:sym<ignorecase>", $P3050)
    nqp_get_sc_object $P3051, "1307873288.51323", 1
    get_how $P3052, $P3051
    nqp_get_sc_object $P3053, "1307873288.51323", 1
    .const 'Sub' $P3054 = "171_1307873292.23355" 
    $P3052."add_method"($P3053, "!PREFIX__mod_ident:sym<ignorecase>", $P3054)
    nqp_get_sc_object $P3055, "1307873288.51323", 1
    get_how $P3056, $P3055
    nqp_get_sc_object $P3057, "1307873288.51323", 1
    .const 'Sub' $P3058 = "172_1307873292.23355" 
    $P3056."add_method"($P3057, "mod_ident:sym<ratchet>", $P3058)
    nqp_get_sc_object $P3059, "1307873288.51323", 1
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1307873288.51323", 1
    .const 'Sub' $P3062 = "173_1307873292.23355" 
    $P3060."add_method"($P3061, "!PREFIX__mod_ident:sym<ratchet>", $P3062)
    nqp_get_sc_object $P3063, "1307873288.51323", 1
    get_how $P3064, $P3063
    nqp_get_sc_object $P3065, "1307873288.51323", 1
    .const 'Sub' $P3066 = "174_1307873292.23355" 
    $P3064."add_method"($P3065, "mod_ident:sym<sigspace>", $P3066)
    nqp_get_sc_object $P3067, "1307873288.51323", 1
    get_how $P3068, $P3067
    nqp_get_sc_object $P3069, "1307873288.51323", 1
    .const 'Sub' $P3070 = "175_1307873292.23355" 
    $P3068."add_method"($P3069, "!PREFIX__mod_ident:sym<sigspace>", $P3070)
    .const 'Sub' $P3071 = "12_1307873292.23355" 
    $P3072 = $P3071."get_lexinfo"()
    nqp_get_sc_object $P3073, "1307873288.51323", 1
    $P3072."set_static_lexpad_value"("$?PACKAGE", $P3073)
    .const 'Sub' $P3074 = "12_1307873292.23355" 
    $P3075 = $P3074."get_lexinfo"()
    $P3075."finish_static_lexpad"()
    .const 'Sub' $P3076 = "12_1307873292.23355" 
    $P3077 = $P3076."get_lexinfo"()
    nqp_get_sc_object $P3078, "1307873288.51323", 1
    $P3077."set_static_lexpad_value"("$?CLASS", $P3078)
    .const 'Sub' $P3079 = "12_1307873292.23355" 
    $P3080 = $P3079."get_lexinfo"()
    $P3080."finish_static_lexpad"()
    nqp_get_sc_object $P3081, "1307873288.51323", 1
    get_how $P3082, $P3081
    nqp_get_sc_object $P3083, "1307873288.51323", 1
    nqp_get_sc_object $P3084, "1307873280.77112", 1
    $P3082."add_parent"($P3083, $P3084)
    nqp_get_sc_object $P3085, "1307873288.51323", 1
    get_how $P3086, $P3085
    nqp_get_sc_object $P3087, "1307873288.51323", 1
    $P3086."compose"($P3087)
    nqp_get_sc_object $P3088, "1307873274.8766", 41
    $P3089 = $P3088."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P3089, cur_sc
    nqp_set_sc_object "1307873288.51323", 145, $P3089
    nqp_get_sc_object $P3090, "1307873288.51323", 145
    nqp_get_sc_object $P3091, "1307873288.51323", 0
    nqp_get_package_through_who $P3092, $P3091, "Regex"
    nqp_get_package_through_who $P3093, $P3092, "P6Regex"
    get_who $P3094, $P3093
    set $P3094["Actions"], $P3090
    nqp_get_sc_object $P3095, "1307873288.51323", 145
    get_how $P3096, $P3095
    nqp_get_sc_object $P3097, "1307873288.51323", 145
    .const 'Sub' $P3098 = "192_1307873292.23355" 
    $P3096."add_method"($P3097, "arg", $P3098)
    nqp_get_sc_object $P3099, "1307873288.51323", 145
    get_how $P3100, $P3099
    nqp_get_sc_object $P3101, "1307873288.51323", 145
    .const 'Sub' $P3102 = "193_1307873292.23355" 
    $P3100."add_method"($P3101, "arglist", $P3102)
    nqp_get_sc_object $P3103, "1307873288.51323", 145
    get_how $P3104, $P3103
    nqp_get_sc_object $P3105, "1307873288.51323", 145
    .const 'Sub' $P3106 = "195_1307873292.23355" 
    $P3104."add_method"($P3105, "TOP", $P3106)
    nqp_get_sc_object $P3107, "1307873288.51323", 145
    get_how $P3108, $P3107
    nqp_get_sc_object $P3109, "1307873288.51323", 145
    .const 'Sub' $P3110 = "196_1307873292.23355" 
    $P3108."add_method"($P3109, "nibbler", $P3110)
    nqp_get_sc_object $P3111, "1307873288.51323", 145
    get_how $P3112, $P3111
    nqp_get_sc_object $P3113, "1307873288.51323", 145
    .const 'Sub' $P3114 = "199_1307873292.23355" 
    $P3112."add_method"($P3113, "termconj", $P3114)
    nqp_get_sc_object $P3115, "1307873288.51323", 145
    get_how $P3116, $P3115
    nqp_get_sc_object $P3117, "1307873288.51323", 145
    .const 'Sub' $P3118 = "201_1307873292.23355" 
    $P3116."add_method"($P3117, "termish", $P3118)
    nqp_get_sc_object $P3119, "1307873288.51323", 145
    get_how $P3120, $P3119
    nqp_get_sc_object $P3121, "1307873288.51323", 145
    .const 'Sub' $P3122 = "203_1307873292.23355" 
    $P3120."add_method"($P3121, "quantified_atom", $P3122)
    nqp_get_sc_object $P3123, "1307873288.51323", 145
    get_how $P3124, $P3123
    nqp_get_sc_object $P3125, "1307873288.51323", 145
    .const 'Sub' $P3126 = "205_1307873292.23355" 
    $P3124."add_method"($P3125, "atom", $P3126)
    nqp_get_sc_object $P3127, "1307873288.51323", 145
    get_how $P3128, $P3127
    nqp_get_sc_object $P3129, "1307873288.51323", 145
    .const 'Sub' $P3130 = "206_1307873292.23355" 
    $P3128."add_method"($P3129, "quantifier:sym<*>", $P3130)
    nqp_get_sc_object $P3131, "1307873288.51323", 145
    get_how $P3132, $P3131
    nqp_get_sc_object $P3133, "1307873288.51323", 145
    .const 'Sub' $P3134 = "207_1307873292.23355" 
    $P3132."add_method"($P3133, "quantifier:sym<+>", $P3134)
    nqp_get_sc_object $P3135, "1307873288.51323", 145
    get_how $P3136, $P3135
    nqp_get_sc_object $P3137, "1307873288.51323", 145
    .const 'Sub' $P3138 = "208_1307873292.23355" 
    $P3136."add_method"($P3137, "quantifier:sym<?>", $P3138)
    nqp_get_sc_object $P3139, "1307873288.51323", 145
    get_how $P3140, $P3139
    nqp_get_sc_object $P3141, "1307873288.51323", 145
    .const 'Sub' $P3142 = "209_1307873292.23355" 
    $P3140."add_method"($P3141, "quantifier:sym<**>", $P3142)
    nqp_get_sc_object $P3143, "1307873288.51323", 145
    get_how $P3144, $P3143
    nqp_get_sc_object $P3145, "1307873288.51323", 145
    .const 'Sub' $P3146 = "211_1307873292.23355" 
    $P3144."add_method"($P3145, "metachar:sym<ws>", $P3146)
    nqp_get_sc_object $P3147, "1307873288.51323", 145
    get_how $P3148, $P3147
    nqp_get_sc_object $P3149, "1307873288.51323", 145
    .const 'Sub' $P3150 = "212_1307873292.23355" 
    $P3148."add_method"($P3149, "metachar:sym<[ ]>", $P3150)
    nqp_get_sc_object $P3151, "1307873288.51323", 145
    get_how $P3152, $P3151
    nqp_get_sc_object $P3153, "1307873288.51323", 145
    .const 'Sub' $P3154 = "213_1307873292.23355" 
    $P3152."add_method"($P3153, "metachar:sym<( )>", $P3154)
    nqp_get_sc_object $P3155, "1307873288.51323", 145
    get_how $P3156, $P3155
    nqp_get_sc_object $P3157, "1307873288.51323", 145
    .const 'Sub' $P3158 = "214_1307873292.23355" 
    $P3156."add_method"($P3157, "metachar:sym<'>", $P3158)
    nqp_get_sc_object $P3159, "1307873288.51323", 145
    get_how $P3160, $P3159
    nqp_get_sc_object $P3161, "1307873288.51323", 145
    .const 'Sub' $P3162 = "215_1307873292.23355" 
    $P3160."add_method"($P3161, "metachar:sym<\">", $P3162)
    nqp_get_sc_object $P3163, "1307873288.51323", 145
    get_how $P3164, $P3163
    nqp_get_sc_object $P3165, "1307873288.51323", 145
    .const 'Sub' $P3166 = "216_1307873292.23355" 
    $P3164."add_method"($P3165, "metachar:sym<.>", $P3166)
    nqp_get_sc_object $P3167, "1307873288.51323", 145
    get_how $P3168, $P3167
    nqp_get_sc_object $P3169, "1307873288.51323", 145
    .const 'Sub' $P3170 = "217_1307873292.23355" 
    $P3168."add_method"($P3169, "metachar:sym<^>", $P3170)
    nqp_get_sc_object $P3171, "1307873288.51323", 145
    get_how $P3172, $P3171
    nqp_get_sc_object $P3173, "1307873288.51323", 145
    .const 'Sub' $P3174 = "218_1307873292.23355" 
    $P3172."add_method"($P3173, "metachar:sym<^^>", $P3174)
    nqp_get_sc_object $P3175, "1307873288.51323", 145
    get_how $P3176, $P3175
    nqp_get_sc_object $P3177, "1307873288.51323", 145
    .const 'Sub' $P3178 = "219_1307873292.23355" 
    $P3176."add_method"($P3177, "metachar:sym<$>", $P3178)
    nqp_get_sc_object $P3179, "1307873288.51323", 145
    get_how $P3180, $P3179
    nqp_get_sc_object $P3181, "1307873288.51323", 145
    .const 'Sub' $P3182 = "220_1307873292.23355" 
    $P3180."add_method"($P3181, "metachar:sym<$$>", $P3182)
    nqp_get_sc_object $P3183, "1307873288.51323", 145
    get_how $P3184, $P3183
    nqp_get_sc_object $P3185, "1307873288.51323", 145
    .const 'Sub' $P3186 = "221_1307873292.23355" 
    $P3184."add_method"($P3185, "metachar:sym<:::>", $P3186)
    nqp_get_sc_object $P3187, "1307873288.51323", 145
    get_how $P3188, $P3187
    nqp_get_sc_object $P3189, "1307873288.51323", 145
    .const 'Sub' $P3190 = "222_1307873292.23355" 
    $P3188."add_method"($P3189, "metachar:sym<lwb>", $P3190)
    nqp_get_sc_object $P3191, "1307873288.51323", 145
    get_how $P3192, $P3191
    nqp_get_sc_object $P3193, "1307873288.51323", 145
    .const 'Sub' $P3194 = "223_1307873292.23355" 
    $P3192."add_method"($P3193, "metachar:sym<rwb>", $P3194)
    nqp_get_sc_object $P3195, "1307873288.51323", 145
    get_how $P3196, $P3195
    nqp_get_sc_object $P3197, "1307873288.51323", 145
    .const 'Sub' $P3198 = "224_1307873292.23355" 
    $P3196."add_method"($P3197, "metachar:sym<bs>", $P3198)
    nqp_get_sc_object $P3199, "1307873288.51323", 145
    get_how $P3200, $P3199
    nqp_get_sc_object $P3201, "1307873288.51323", 145
    .const 'Sub' $P3202 = "225_1307873292.23355" 
    $P3200."add_method"($P3201, "metachar:sym<mod>", $P3202)
    nqp_get_sc_object $P3203, "1307873288.51323", 145
    get_how $P3204, $P3203
    nqp_get_sc_object $P3205, "1307873288.51323", 145
    .const 'Sub' $P3206 = "226_1307873292.23355" 
    $P3204."add_method"($P3205, "metachar:sym<assert>", $P3206)
    nqp_get_sc_object $P3207, "1307873288.51323", 145
    get_how $P3208, $P3207
    nqp_get_sc_object $P3209, "1307873288.51323", 145
    .const 'Sub' $P3210 = "227_1307873292.23355" 
    $P3208."add_method"($P3209, "metachar:sym<~>", $P3210)
    nqp_get_sc_object $P3211, "1307873288.51323", 145
    get_how $P3212, $P3211
    nqp_get_sc_object $P3213, "1307873288.51323", 145
    .const 'Sub' $P3214 = "228_1307873292.23355" 
    $P3212."add_method"($P3213, "metachar:sym<{*}>", $P3214)
    nqp_get_sc_object $P3215, "1307873288.51323", 145
    get_how $P3216, $P3215
    nqp_get_sc_object $P3217, "1307873288.51323", 145
    .const 'Sub' $P3218 = "229_1307873292.23355" 
    $P3216."add_method"($P3217, "metachar:sym<var>", $P3218)
    nqp_get_sc_object $P3219, "1307873288.51323", 145
    get_how $P3220, $P3219
    nqp_get_sc_object $P3221, "1307873288.51323", 145
    .const 'Sub' $P3222 = "230_1307873292.23355" 
    $P3220."add_method"($P3221, "metachar:sym<PIR>", $P3222)
    nqp_get_sc_object $P3223, "1307873288.51323", 145
    get_how $P3224, $P3223
    nqp_get_sc_object $P3225, "1307873288.51323", 145
    .const 'Sub' $P3226 = "231_1307873292.23355" 
    $P3224."add_method"($P3225, "backslash:sym<w>", $P3226)
    nqp_get_sc_object $P3227, "1307873288.51323", 145
    get_how $P3228, $P3227
    nqp_get_sc_object $P3229, "1307873288.51323", 145
    .const 'Sub' $P3230 = "232_1307873292.23355" 
    $P3228."add_method"($P3229, "backslash:sym<b>", $P3230)
    nqp_get_sc_object $P3231, "1307873288.51323", 145
    get_how $P3232, $P3231
    nqp_get_sc_object $P3233, "1307873288.51323", 145
    .const 'Sub' $P3234 = "233_1307873292.23355" 
    $P3232."add_method"($P3233, "backslash:sym<e>", $P3234)
    nqp_get_sc_object $P3235, "1307873288.51323", 145
    get_how $P3236, $P3235
    nqp_get_sc_object $P3237, "1307873288.51323", 145
    .const 'Sub' $P3238 = "234_1307873292.23355" 
    $P3236."add_method"($P3237, "backslash:sym<f>", $P3238)
    nqp_get_sc_object $P3239, "1307873288.51323", 145
    get_how $P3240, $P3239
    nqp_get_sc_object $P3241, "1307873288.51323", 145
    .const 'Sub' $P3242 = "235_1307873292.23355" 
    $P3240."add_method"($P3241, "backslash:sym<h>", $P3242)
    nqp_get_sc_object $P3243, "1307873288.51323", 145
    get_how $P3244, $P3243
    nqp_get_sc_object $P3245, "1307873288.51323", 145
    .const 'Sub' $P3246 = "236_1307873292.23355" 
    $P3244."add_method"($P3245, "backslash:sym<r>", $P3246)
    nqp_get_sc_object $P3247, "1307873288.51323", 145
    get_how $P3248, $P3247
    nqp_get_sc_object $P3249, "1307873288.51323", 145
    .const 'Sub' $P3250 = "237_1307873292.23355" 
    $P3248."add_method"($P3249, "backslash:sym<t>", $P3250)
    nqp_get_sc_object $P3251, "1307873288.51323", 145
    get_how $P3252, $P3251
    nqp_get_sc_object $P3253, "1307873288.51323", 145
    .const 'Sub' $P3254 = "238_1307873292.23355" 
    $P3252."add_method"($P3253, "backslash:sym<v>", $P3254)
    nqp_get_sc_object $P3255, "1307873288.51323", 145
    get_how $P3256, $P3255
    nqp_get_sc_object $P3257, "1307873288.51323", 145
    .const 'Sub' $P3258 = "239_1307873292.23355" 
    $P3256."add_method"($P3257, "backslash:sym<o>", $P3258)
    nqp_get_sc_object $P3259, "1307873288.51323", 145
    get_how $P3260, $P3259
    nqp_get_sc_object $P3261, "1307873288.51323", 145
    .const 'Sub' $P3262 = "240_1307873292.23355" 
    $P3260."add_method"($P3261, "backslash:sym<x>", $P3262)
    nqp_get_sc_object $P3263, "1307873288.51323", 145
    get_how $P3264, $P3263
    nqp_get_sc_object $P3265, "1307873288.51323", 145
    .const 'Sub' $P3266 = "241_1307873292.23355" 
    $P3264."add_method"($P3265, "backslash:sym<c>", $P3266)
    nqp_get_sc_object $P3267, "1307873288.51323", 145
    get_how $P3268, $P3267
    nqp_get_sc_object $P3269, "1307873288.51323", 145
    .const 'Sub' $P3270 = "242_1307873292.23355" 
    $P3268."add_method"($P3269, "backslash:sym<misc>", $P3270)
    nqp_get_sc_object $P3271, "1307873288.51323", 145
    get_how $P3272, $P3271
    nqp_get_sc_object $P3273, "1307873288.51323", 145
    .const 'Sub' $P3274 = "243_1307873292.23355" 
    $P3272."add_method"($P3273, "assertion:sym<?>", $P3274)
    nqp_get_sc_object $P3275, "1307873288.51323", 145
    get_how $P3276, $P3275
    nqp_get_sc_object $P3277, "1307873288.51323", 145
    .const 'Sub' $P3278 = "244_1307873292.23355" 
    $P3276."add_method"($P3277, "assertion:sym<!>", $P3278)
    nqp_get_sc_object $P3279, "1307873288.51323", 145
    get_how $P3280, $P3279
    nqp_get_sc_object $P3281, "1307873288.51323", 145
    .const 'Sub' $P3282 = "245_1307873292.23355" 
    $P3280."add_method"($P3281, "assertion:sym<method>", $P3282)
    nqp_get_sc_object $P3283, "1307873288.51323", 145
    get_how $P3284, $P3283
    nqp_get_sc_object $P3285, "1307873288.51323", 145
    .const 'Sub' $P3286 = "246_1307873292.23355" 
    $P3284."add_method"($P3285, "assertion:sym<name>", $P3286)
    nqp_get_sc_object $P3287, "1307873288.51323", 145
    get_how $P3288, $P3287
    nqp_get_sc_object $P3289, "1307873288.51323", 145
    .const 'Sub' $P3290 = "249_1307873292.23355" 
    $P3288."add_method"($P3289, "assertion:sym<[>", $P3290)
    nqp_get_sc_object $P3291, "1307873288.51323", 145
    get_how $P3292, $P3291
    nqp_get_sc_object $P3293, "1307873288.51323", 145
    .const 'Sub' $P3294 = "251_1307873292.23355" 
    $P3292."add_method"($P3293, "cclass_elem", $P3294)
    nqp_get_sc_object $P3295, "1307873288.51323", 145
    get_how $P3296, $P3295
    nqp_get_sc_object $P3297, "1307873288.51323", 145
    .const 'Sub' $P3298 = "255_1307873292.23355" 
    $P3296."add_method"($P3297, "mod_internal", $P3298)
    .const 'Sub' $P3299 = "177_1307873292.23355" 
    nqp_get_sc_object $P3300, "1307873288.51323", 145
    get_who $P3301, $P3300
    set $P3301["buildsub"], $P3299
    nqp_get_sc_object $P3302, "1307873288.51323", 145
    get_how $P3303, $P3302
    nqp_get_sc_object $P3304, "1307873288.51323", 145
    .const 'Sub' $P3305 = "256_1307873292.23355" 
    $P3303."add_method"($P3304, "subrule_alias", $P3305)
    nqp_get_sc_object $P3306, "1307873288.51323", 145
    get_how $P3307, $P3306
    nqp_get_sc_object $P3308, "1307873288.51323", 145
    .const 'Sub' $P3309 = "257_1307873292.23355" 
    $P3307."add_method"($P3308, "named_assertion", $P3309)
    .const 'Sub' $P3310 = "176_1307873292.23355" 
    $P3311 = $P3310."get_lexinfo"()
    nqp_get_sc_object $P3312, "1307873288.51323", 145
    $P3311."set_static_lexpad_value"("$?PACKAGE", $P3312)
    .const 'Sub' $P3313 = "176_1307873292.23355" 
    $P3314 = $P3313."get_lexinfo"()
    $P3314."finish_static_lexpad"()
    .const 'Sub' $P3315 = "176_1307873292.23355" 
    $P3316 = $P3315."get_lexinfo"()
    nqp_get_sc_object $P3317, "1307873288.51323", 145
    $P3316."set_static_lexpad_value"("$?CLASS", $P3317)
    .const 'Sub' $P3318 = "176_1307873292.23355" 
    $P3319 = $P3318."get_lexinfo"()
    $P3319."finish_static_lexpad"()
    nqp_get_sc_object $P3320, "1307873288.51323", 145
    get_how $P3321, $P3320
    nqp_get_sc_object $P3322, "1307873288.51323", 145
    nqp_get_sc_object $P3323, "1307873280.77112", 105
    $P3321."add_parent"($P3322, $P3323)
    nqp_get_sc_object $P3324, "1307873288.51323", 145
    get_how $P3325, $P3324
    nqp_get_sc_object $P3326, "1307873288.51323", 145
    $P3325."compose"($P3326)
    nqp_get_sc_object $P3327, "1307873274.8766", 41
    $P3328 = $P3327."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P3328, cur_sc
    nqp_set_sc_object "1307873288.51323", 199, $P3328
    nqp_get_sc_object $P3329, "1307873288.51323", 199
    nqp_get_sc_object $P3330, "1307873288.51323", 0
    nqp_get_package_through_who $P3331, $P3330, "Regex"
    nqp_get_package_through_who $P3332, $P3331, "P6Regex"
    get_who $P3333, $P3332
    set $P3333["Compiler"], $P3329
    .const 'Sub' $P3334 = "258_1307873292.23355" 
    $P3335 = $P3334."get_lexinfo"()
    nqp_get_sc_object $P3336, "1307873288.51323", 199
    $P3335."set_static_lexpad_value"("$?PACKAGE", $P3336)
    .const 'Sub' $P3337 = "258_1307873292.23355" 
    $P3338 = $P3337."get_lexinfo"()
    $P3338."finish_static_lexpad"()
    .const 'Sub' $P3339 = "258_1307873292.23355" 
    $P3340 = $P3339."get_lexinfo"()
    nqp_get_sc_object $P3341, "1307873288.51323", 199
    $P3340."set_static_lexpad_value"("$?CLASS", $P3341)
    .const 'Sub' $P3342 = "258_1307873292.23355" 
    $P3343 = $P3342."get_lexinfo"()
    $P3343."finish_static_lexpad"()
    nqp_get_sc_object $P3344, "1307873288.51323", 199
    get_how $P3345, $P3344
    nqp_get_sc_object $P3346, "1307873288.51323", 199
    nqp_get_sc_object $P3347, "1307873280.77112", 138
    $P3345."add_parent"($P3346, $P3347)
    nqp_get_sc_object $P3348, "1307873288.51323", 199
    get_how $P3349, $P3348
    nqp_get_sc_object $P3350, "1307873288.51323", 199
    $P3349."compose"($P3350)
  if_2467_end:
    nqp_get_sc_object $P3786, "1307873288.51323", 0
    set_hll_global "GLOBAL", $P3786
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1307873292.23355") :outer("10_1307873292.23355")
    .param pmc param_18
.annotate 'line', 834
    .lex "@ARGS", param_18
.annotate 'line', 835
    find_lex $P19, "$p6regex"
    unless_null $P19, vivify_261
    new $P19, "Undef"
  vivify_261:
    find_lex $P20, "@ARGS"
    unless_null $P20, vivify_262
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_262:
    $P21 = $P19."command_line"($P20, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 834
    .return ($P21)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block23"  :subid("12_1307873292.23355") :outer("10_1307873292.23355")
.annotate 'line', 7
    .const 'Sub' $P643 = "175_1307873292.23355" 
    capture_lex $P643
    .const 'Sub' $P638 = "174_1307873292.23355" 
    capture_lex $P638
    .const 'Sub' $P636 = "173_1307873292.23355" 
    capture_lex $P636
    .const 'Sub' $P631 = "172_1307873292.23355" 
    capture_lex $P631
    .const 'Sub' $P629 = "171_1307873292.23355" 
    capture_lex $P629
    .const 'Sub' $P624 = "170_1307873292.23355" 
    capture_lex $P624
    .const 'Sub' $P615 = "167_1307873292.23355" 
    capture_lex $P615
    .const 'Sub' $P602 = "165_1307873292.23355" 
    capture_lex $P602
    .const 'Sub' $P600 = "164_1307873292.23355" 
    capture_lex $P600
    .const 'Sub' $P568 = "159_1307873292.23355" 
    capture_lex $P568
    .const 'Sub' $P566 = "158_1307873292.23355" 
    capture_lex $P566
    .const 'Sub' $P556 = "156_1307873292.23355" 
    capture_lex $P556
    .const 'Sub' $P553 = "155_1307873292.23355" 
    capture_lex $P553
    .const 'Sub' $P544 = "153_1307873292.23355" 
    capture_lex $P544
    .const 'Sub' $P541 = "152_1307873292.23355" 
    capture_lex $P541
    .const 'Sub' $P538 = "151_1307873292.23355" 
    capture_lex $P538
    .const 'Sub' $P535 = "150_1307873292.23355" 
    capture_lex $P535
    .const 'Sub' $P527 = "148_1307873292.23355" 
    capture_lex $P527
    .const 'Sub' $P524 = "147_1307873292.23355" 
    capture_lex $P524
    .const 'Sub' $P516 = "145_1307873292.23355" 
    capture_lex $P516
    .const 'Sub' $P508 = "142_1307873292.23355" 
    capture_lex $P508
    .const 'Sub' $P505 = "141_1307873292.23355" 
    capture_lex $P505
    .const 'Sub' $P503 = "140_1307873292.23355" 
    capture_lex $P503
    .const 'Sub' $P495 = "138_1307873292.23355" 
    capture_lex $P495
    .const 'Sub' $P492 = "137_1307873292.23355" 
    capture_lex $P492
    .const 'Sub' $P489 = "136_1307873292.23355" 
    capture_lex $P489
    .const 'Sub' $P486 = "135_1307873292.23355" 
    capture_lex $P486
    .const 'Sub' $P483 = "134_1307873292.23355" 
    capture_lex $P483
    .const 'Sub' $P480 = "133_1307873292.23355" 
    capture_lex $P480
    .const 'Sub' $P477 = "132_1307873292.23355" 
    capture_lex $P477
    .const 'Sub' $P474 = "131_1307873292.23355" 
    capture_lex $P474
    .const 'Sub' $P471 = "130_1307873292.23355" 
    capture_lex $P471
    .const 'Sub' $P467 = "129_1307873292.23355" 
    capture_lex $P467
    .const 'Sub' $P463 = "128_1307873292.23355" 
    capture_lex $P463
    .const 'Sub' $P457 = "127_1307873292.23355" 
    capture_lex $P457
    .const 'Sub' $P452 = "126_1307873292.23355" 
    capture_lex $P452
    .const 'Sub' $P446 = "125_1307873292.23355" 
    capture_lex $P446
    .const 'Sub' $P441 = "124_1307873292.23355" 
    capture_lex $P441
    .const 'Sub' $P439 = "123_1307873292.23355" 
    capture_lex $P439
    .const 'Sub' $P435 = "122_1307873292.23355" 
    capture_lex $P435
    .const 'Sub' $P433 = "121_1307873292.23355" 
    capture_lex $P433
    .const 'Sub' $P429 = "120_1307873292.23355" 
    capture_lex $P429
    .const 'Sub' $P427 = "119_1307873292.23355" 
    capture_lex $P427
    .const 'Sub' $P423 = "118_1307873292.23355" 
    capture_lex $P423
    .const 'Sub' $P421 = "117_1307873292.23355" 
    capture_lex $P421
    .const 'Sub' $P417 = "116_1307873292.23355" 
    capture_lex $P417
    .const 'Sub' $P415 = "115_1307873292.23355" 
    capture_lex $P415
    .const 'Sub' $P411 = "114_1307873292.23355" 
    capture_lex $P411
    .const 'Sub' $P409 = "113_1307873292.23355" 
    capture_lex $P409
    .const 'Sub' $P405 = "112_1307873292.23355" 
    capture_lex $P405
    .const 'Sub' $P403 = "111_1307873292.23355" 
    capture_lex $P403
    .const 'Sub' $P399 = "110_1307873292.23355" 
    capture_lex $P399
    .const 'Sub' $P397 = "109_1307873292.23355" 
    capture_lex $P397
    .const 'Sub' $P393 = "108_1307873292.23355" 
    capture_lex $P393
    .const 'Sub' $P385 = "105_1307873292.23355" 
    capture_lex $P385
    .const 'Sub' $P379 = "104_1307873292.23355" 
    capture_lex $P379
    .const 'Sub' $P377 = "103_1307873292.23355" 
    capture_lex $P377
    .const 'Sub' $P369 = "102_1307873292.23355" 
    capture_lex $P369
    .const 'Sub' $P366 = "101_1307873292.23355" 
    capture_lex $P366
    .const 'Sub' $P362 = "100_1307873292.23355" 
    capture_lex $P362
    .const 'Sub' $P360 = "99_1307873292.23355" 
    capture_lex $P360
    .const 'Sub' $P350 = "98_1307873292.23355" 
    capture_lex $P350
    .const 'Sub' $P347 = "97_1307873292.23355" 
    capture_lex $P347
    .const 'Sub' $P343 = "96_1307873292.23355" 
    capture_lex $P343
    .const 'Sub' $P340 = "95_1307873292.23355" 
    capture_lex $P340
    .const 'Sub' $P337 = "94_1307873292.23355" 
    capture_lex $P337
    .const 'Sub' $P334 = "93_1307873292.23355" 
    capture_lex $P334
    .const 'Sub' $P331 = "92_1307873292.23355" 
    capture_lex $P331
    .const 'Sub' $P328 = "91_1307873292.23355" 
    capture_lex $P328
    .const 'Sub' $P325 = "90_1307873292.23355" 
    capture_lex $P325
    .const 'Sub' $P323 = "89_1307873292.23355" 
    capture_lex $P323
    .const 'Sub' $P318 = "88_1307873292.23355" 
    capture_lex $P318
    .const 'Sub' $P316 = "87_1307873292.23355" 
    capture_lex $P316
    .const 'Sub' $P311 = "86_1307873292.23355" 
    capture_lex $P311
    .const 'Sub' $P308 = "85_1307873292.23355" 
    capture_lex $P308
    .const 'Sub' $P304 = "84_1307873292.23355" 
    capture_lex $P304
    .const 'Sub' $P301 = "83_1307873292.23355" 
    capture_lex $P301
    .const 'Sub' $P297 = "82_1307873292.23355" 
    capture_lex $P297
    .const 'Sub' $P295 = "81_1307873292.23355" 
    capture_lex $P295
    .const 'Sub' $P291 = "80_1307873292.23355" 
    capture_lex $P291
    .const 'Sub' $P289 = "79_1307873292.23355" 
    capture_lex $P289
    .const 'Sub' $P285 = "78_1307873292.23355" 
    capture_lex $P285
    .const 'Sub' $P283 = "77_1307873292.23355" 
    capture_lex $P283
    .const 'Sub' $P279 = "76_1307873292.23355" 
    capture_lex $P279
    .const 'Sub' $P277 = "75_1307873292.23355" 
    capture_lex $P277
    .const 'Sub' $P273 = "74_1307873292.23355" 
    capture_lex $P273
    .const 'Sub' $P271 = "73_1307873292.23355" 
    capture_lex $P271
    .const 'Sub' $P267 = "72_1307873292.23355" 
    capture_lex $P267
    .const 'Sub' $P265 = "71_1307873292.23355" 
    capture_lex $P265
    .const 'Sub' $P262 = "70_1307873292.23355" 
    capture_lex $P262
    .const 'Sub' $P260 = "69_1307873292.23355" 
    capture_lex $P260
    .const 'Sub' $P257 = "68_1307873292.23355" 
    capture_lex $P257
    .const 'Sub' $P254 = "67_1307873292.23355" 
    capture_lex $P254
    .const 'Sub' $P251 = "66_1307873292.23355" 
    capture_lex $P251
    .const 'Sub' $P248 = "65_1307873292.23355" 
    capture_lex $P248
    .const 'Sub' $P245 = "64_1307873292.23355" 
    capture_lex $P245
    .const 'Sub' $P242 = "63_1307873292.23355" 
    capture_lex $P242
    .const 'Sub' $P239 = "62_1307873292.23355" 
    capture_lex $P239
    .const 'Sub' $P231 = "59_1307873292.23355" 
    capture_lex $P231
    .const 'Sub' $P222 = "57_1307873292.23355" 
    capture_lex $P222
    .const 'Sub' $P220 = "56_1307873292.23355" 
    capture_lex $P220
    .const 'Sub' $P207 = "55_1307873292.23355" 
    capture_lex $P207
    .const 'Sub' $P205 = "54_1307873292.23355" 
    capture_lex $P205
    .const 'Sub' $P184 = "49_1307873292.23355" 
    capture_lex $P184
    .const 'Sub' $P181 = "48_1307873292.23355" 
    capture_lex $P181
    .const 'Sub' $P177 = "47_1307873292.23355" 
    capture_lex $P177
    .const 'Sub' $P174 = "46_1307873292.23355" 
    capture_lex $P174
    .const 'Sub' $P170 = "45_1307873292.23355" 
    capture_lex $P170
    .const 'Sub' $P167 = "44_1307873292.23355" 
    capture_lex $P167
    .const 'Sub' $P163 = "43_1307873292.23355" 
    capture_lex $P163
    .const 'Sub' $P154 = "40_1307873292.23355" 
    capture_lex $P154
    .const 'Sub' $P144 = "38_1307873292.23355" 
    capture_lex $P144
    .const 'Sub' $P141 = "37_1307873292.23355" 
    capture_lex $P141
    .const 'Sub' $P132 = "35_1307873292.23355" 
    capture_lex $P132
    .const 'Sub' $P130 = "34_1307873292.23355" 
    capture_lex $P130
    .const 'Sub' $P120 = "32_1307873292.23355" 
    capture_lex $P120
    .const 'Sub' $P117 = "31_1307873292.23355" 
    capture_lex $P117
    .const 'Sub' $P111 = "30_1307873292.23355" 
    capture_lex $P111
    .const 'Sub' $P109 = "29_1307873292.23355" 
    capture_lex $P109
    .const 'Sub' $P97 = "27_1307873292.23355" 
    capture_lex $P97
    .const 'Sub' $P94 = "26_1307873292.23355" 
    capture_lex $P94
    .const 'Sub' $P90 = "25_1307873292.23355" 
    capture_lex $P90
    .const 'Sub' $P87 = "24_1307873292.23355" 
    capture_lex $P87
    .const 'Sub' $P78 = "23_1307873292.23355" 
    capture_lex $P78
    .const 'Sub' $P76 = "22_1307873292.23355" 
    capture_lex $P76
    .const 'Sub' $P71 = "21_1307873292.23355" 
    capture_lex $P71
    .const 'Sub' $P68 = "20_1307873292.23355" 
    capture_lex $P68
    .const 'Sub' $P64 = "19_1307873292.23355" 
    capture_lex $P64
    .const 'Sub' $P62 = "18_1307873292.23355" 
    capture_lex $P62
    .const 'Sub' $P54 = "16_1307873292.23355" 
    capture_lex $P54
    .const 'Sub' $P52 = "15_1307873292.23355" 
    capture_lex $P52
    .const 'Sub' $P47 = "14_1307873292.23355" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1307873292.23355" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 9
    .const 'Sub' $P643 = "175_1307873292.23355" 
    capture_lex $P643
.annotate 'line', 7
    .return ($P643)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs" :anon :subid("13_1307873292.23355") :outer("12_1307873292.23355")
    .param pmc param_28
    .param pmc param_29
    .param pmc param_30
    .param pmc param_31 :optional
    .param int has_param_31 :opt_flag
.annotate 'line', 9
    .lex "self", param_28
    .lex "$old", param_29
    .lex "$new", param_30
    if has_param_31, optparam_263
    new $P32, "String"
    assign $P32, "in Perl 6"
    set param_31, $P32
  optparam_263:
    .lex "$when", param_31
.annotate 'line', 10
    find_lex $P33, "self"
    new $P34, "String"
    assign $P34, "Unsupported use of "
    find_lex $P35, "$old"
    unless_null $P35, vivify_264
    new $P35, "Undef"
  vivify_264:
    set $S36, $P35
    concat $P37, $P34, $S36
    concat $P38, $P37, ";"
.annotate 'line', 11
    find_lex $P39, "$when"
    unless_null $P39, vivify_265
    new $P39, "Undef"
  vivify_265:
    set $S40, $P39
    concat $P41, $P38, $S40
    concat $P42, $P41, " please use "
    find_lex $P43, "$new"
    unless_null $P43, vivify_266
    new $P43, "Undef"
  vivify_266:
    set $S44, $P43
    concat $P45, $P42, $S44
    $P46 = $P33."panic"($P45)
.annotate 'line', 9
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
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
    if_null rx48_debug, debug_267
    rx48_cur."!cursor_debug"("START", "ws")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan49_done
    goto rxscan49_scan
  rxscan49_loop:
    (rx48_pos) = rx48_cur."from"()
    inc rx48_pos
    rx48_cur."!cursor_from"(rx48_pos)
    ge rx48_pos, rx48_eos, rxscan49_done
  rxscan49_scan:
    set_addr $I10, rxscan49_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan49_done:
.annotate 'line', 14
  # rx rxquantr50 ** 0..*
    set_addr $I10, rxquantr50_done
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxquantr50_loop:
  alt51_0:
    set_addr $I10, alt51_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx48_pos, rx48_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx48_tgt, $I10, rx48_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx48_fail
    add rx48_pos, rx48_off, $I11
    goto alt51_end
  alt51_1:
  # rx literal  "#"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    ord $I11, rx48_tgt, $I11
    ne $I11, 35, rx48_fail
    add rx48_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx48_pos, rx48_off
    find_cclass $I11, .CCLASS_NEWLINE, rx48_tgt, $I10, rx48_eos
    add rx48_pos, rx48_off, $I11
  alt51_end:
    set_addr $I10, rxquantr50_done
    (rx48_rep) = rx48_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr50_done
    rx48_cur."!mark_push"(rx48_rep, rx48_pos, $I10)
    goto rxquantr50_loop
  rxquantr50_done:
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "ws")
    if_null rx48_debug, debug_268
    rx48_cur."!cursor_debug"("PASS", "ws", " at pos=", rx48_pos)
  debug_268:
    .return (rx48_cur)
  rx48_restart:
.annotate 'line', 9
    if_null rx48_debug, debug_269
    rx48_cur."!cursor_debug"("NEXT", "ws")
  debug_269:
  rx48_fail:
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    if_null rx48_debug, debug_270
    rx48_cur."!cursor_debug"("FAIL", "ws")
  debug_270:
    .return (rx48_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("15_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P53, "ResizablePMCArray"
    push $P53, ""
    .return ($P53)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P58 = "17_1307873292.23355" 
    capture_lex $P58
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
    if_null rx55_debug, debug_271
    rx55_cur."!cursor_debug"("START", "normspace")
  debug_271:
    $I10 = self.'from'()
    ne $I10, -1, rxscan56_done
    goto rxscan56_scan
  rxscan56_loop:
    (rx55_pos) = rx55_cur."from"()
    inc rx55_pos
    rx55_cur."!cursor_from"(rx55_pos)
    ge rx55_pos, rx55_eos, rxscan56_done
  rxscan56_scan:
    set_addr $I10, rxscan56_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan56_done:
.annotate 'line', 16
  # rx subrule "before" subtype=zerowidth negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    .const 'Sub' $P58 = "17_1307873292.23355" 
    capture_lex $P58
    $P10 = rx55_cur."before"($P58)
    unless $P10, rx55_fail
  # rx subrule "ws" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ws"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "normspace")
    if_null rx55_debug, debug_276
    rx55_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx55_pos)
  debug_276:
    .return (rx55_cur)
  rx55_restart:
.annotate 'line', 9
    if_null rx55_debug, debug_277
    rx55_cur."!cursor_debug"("NEXT", "normspace")
  debug_277:
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    if_null rx55_debug, debug_278
    rx55_cur."!cursor_debug"("FAIL", "normspace")
  debug_278:
    .return (rx55_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block57"  :anon :subid("17_1307873292.23355") :method :outer("16_1307873292.23355")
.annotate 'line', 16
    .local string rx59_tgt
    .local int rx59_pos
    .local int rx59_off
    .local int rx59_eos
    .local int rx59_rep
    .local pmc rx59_cur
    .local pmc rx59_debug
    (rx59_cur, rx59_pos, rx59_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx59_cur
    .local pmc match
    .lex "$/", match
    length rx59_eos, rx59_tgt
    gt rx59_pos, rx59_eos, rx59_done
    set rx59_off, 0
    lt rx59_pos, 2, rx59_start
    sub rx59_off, rx59_pos, 1
    substr rx59_tgt, rx59_tgt, rx59_off
  rx59_start:
    eq $I10, 1, rx59_restart
    if_null rx59_debug, debug_272
    rx59_cur."!cursor_debug"("START", "")
  debug_272:
    $I10 = self.'from'()
    ne $I10, -1, rxscan60_done
    goto rxscan60_scan
  rxscan60_loop:
    (rx59_pos) = rx59_cur."from"()
    inc rx59_pos
    rx59_cur."!cursor_from"(rx59_pos)
    ge rx59_pos, rx59_eos, rxscan60_done
  rxscan60_scan:
    set_addr $I10, rxscan60_loop
    rx59_cur."!mark_push"(0, rx59_pos, $I10)
  rxscan60_done:
  alt61_0:
    set_addr $I10, alt61_1
    rx59_cur."!mark_push"(0, rx59_pos, $I10)
  # rx charclass s
    ge rx59_pos, rx59_eos, rx59_fail
    sub $I10, rx59_pos, rx59_off
    is_cclass $I11, .CCLASS_WHITESPACE, rx59_tgt, $I10
    unless $I11, rx59_fail
    inc rx59_pos
    goto alt61_end
  alt61_1:
  # rx literal  "#"
    add $I11, rx59_pos, 1
    gt $I11, rx59_eos, rx59_fail
    sub $I11, rx59_pos, rx59_off
    ord $I11, rx59_tgt, $I11
    ne $I11, 35, rx59_fail
    add rx59_pos, 1
  alt61_end:
  # rx pass
    rx59_cur."!cursor_pass"(rx59_pos, "")
    if_null rx59_debug, debug_273
    rx59_cur."!cursor_debug"("PASS", "", " at pos=", rx59_pos)
  debug_273:
    .return (rx59_cur)
  rx59_restart:
    if_null rx59_debug, debug_274
    rx59_cur."!cursor_debug"("NEXT", "")
  debug_274:
  rx59_fail:
    (rx59_rep, rx59_pos, $I10, $P10) = rx59_cur."!mark_fail"(0)
    lt rx59_pos, -1, rx59_done
    eq rx59_pos, -1, rx59_fail
    jump $I10
  rx59_done:
    rx59_cur."!cursor_fail"()
    if_null rx59_debug, debug_275
    rx59_cur."!cursor_debug"("FAIL", "")
  debug_275:
    .return (rx59_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("18_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P63, "ResizablePMCArray"
    push $P63, ""
    .return ($P63)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
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
    if_null rx65_debug, debug_279
    rx65_cur."!cursor_debug"("START", "identifier")
  debug_279:
    $I10 = self.'from'()
    ne $I10, -1, rxscan66_done
    goto rxscan66_scan
  rxscan66_loop:
    (rx65_pos) = rx65_cur."from"()
    inc rx65_pos
    rx65_cur."!cursor_from"(rx65_pos)
    ge rx65_pos, rx65_eos, rxscan66_done
  rxscan66_scan:
    set_addr $I10, rxscan66_loop
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxscan66_done:
.annotate 'line', 18
  # rx subrule "ident" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ident"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx rxquantr67 ** 0..*
    set_addr $I10, rxquantr67_done
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxquantr67_loop:
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
    set_addr $I10, rxquantr67_done
    (rx65_rep) = rx65_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr67_done
    rx65_cur."!mark_push"(rx65_rep, rx65_pos, $I10)
    goto rxquantr67_loop
  rxquantr67_done:
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "identifier")
    if_null rx65_debug, debug_280
    rx65_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx65_pos)
  debug_280:
    .return (rx65_cur)
  rx65_restart:
.annotate 'line', 9
    if_null rx65_debug, debug_281
    rx65_cur."!cursor_debug"("NEXT", "identifier")
  debug_281:
  rx65_fail:
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    if_null rx65_debug, debug_282
    rx65_cur."!cursor_debug"("FAIL", "identifier")
  debug_282:
    .return (rx65_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :subid("20_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P69 = self."!PREFIX__!subrule"("ident", "")
    new $P70, "ResizablePMCArray"
    push $P70, $P69
    .return ($P70)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
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
    if_null rx72_debug, debug_283
    rx72_cur."!cursor_debug"("START", "arg")
  debug_283:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    (rx72_pos) = rx72_cur."from"()
    inc rx72_pos
    rx72_cur."!cursor_from"(rx72_pos)
    ge rx72_pos, rx72_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  rxscan73_done:
  alt74_0:
.annotate 'line', 21
    set_addr $I10, alt74_1
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 22
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
    goto alt74_end
  alt74_1:
    set_addr $I10, alt74_2
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 23
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
    goto alt74_end
  alt74_2:
.annotate 'line', 24
  # rx subcapture "val"
    set_addr $I10, rxcap_75_fail
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx72_pos, rx72_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx72_tgt, $I10, rx72_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx72_fail
    add rx72_pos, rx72_off, $I11
    set_addr $I10, rxcap_75_fail
    ($I12, $I11) = rx72_cur."!mark_peek"($I10)
    rx72_cur."!cursor_pos"($I11)
    ($P10) = rx72_cur."!cursor_start"()
    $P10."!cursor_pass"(rx72_pos, "")
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_75_done
  rxcap_75_fail:
    goto rx72_fail
  rxcap_75_done:
  alt74_end:
.annotate 'line', 20
  # rx pass
    rx72_cur."!cursor_pass"(rx72_pos, "arg")
    if_null rx72_debug, debug_284
    rx72_cur."!cursor_debug"("PASS", "arg", " at pos=", rx72_pos)
  debug_284:
    .return (rx72_cur)
  rx72_restart:
.annotate 'line', 9
    if_null rx72_debug, debug_285
    rx72_cur."!cursor_debug"("NEXT", "arg")
  debug_285:
  rx72_fail:
    (rx72_rep, rx72_pos, $I10, $P10) = rx72_cur."!mark_fail"(0)
    lt rx72_pos, -1, rx72_done
    eq rx72_pos, -1, rx72_fail
    jump $I10
  rx72_done:
    rx72_cur."!cursor_fail"()
    if_null rx72_debug, debug_286
    rx72_cur."!cursor_debug"("FAIL", "arg")
  debug_286:
    .return (rx72_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("22_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P77, "ResizablePMCArray"
    push $P77, ""
    push $P77, "\""
    push $P77, "'"
    .return ($P77)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
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
    if_null rx79_debug, debug_287
    rx79_cur."!cursor_debug"("START", "arglist")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan80_done
    goto rxscan80_scan
  rxscan80_loop:
    (rx79_pos) = rx79_cur."from"()
    inc rx79_pos
    rx79_cur."!cursor_from"(rx79_pos)
    ge rx79_pos, rx79_eos, rxscan80_done
  rxscan80_scan:
    set_addr $I10, rxscan80_loop
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxscan80_done:
.annotate 'line', 28
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
  # rx rxquantr83 ** 0..*
    set_addr $I10, rxquantr83_done
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxquantr83_loop:
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
    set_addr $I10, rxquantr83_done
    (rx79_rep) = rx79_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr83_done
    rx79_cur."!mark_push"(rx79_rep, rx79_pos, $I10)
    goto rxquantr83_loop
  rxquantr83_done:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "arglist")
    if_null rx79_debug, debug_288
    rx79_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx79_pos)
  debug_288:
    .return (rx79_cur)
  rx79_restart:
.annotate 'line', 9
    if_null rx79_debug, debug_289
    rx79_cur."!cursor_debug"("NEXT", "arglist")
  debug_289:
  rx79_fail:
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    if_null rx79_debug, debug_290
    rx79_cur."!cursor_debug"("FAIL", "arglist")
  debug_290:
    .return (rx79_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("24_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P88 = self."!PREFIX__!subrule"("ws", "")
    new $P89, "ResizablePMCArray"
    push $P89, $P88
    .return ($P89)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
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
    if_null rx91_debug, debug_291
    rx91_cur."!cursor_debug"("START", "TOP")
  debug_291:
    $I10 = self.'from'()
    ne $I10, -1, rxscan92_done
    goto rxscan92_scan
  rxscan92_loop:
    (rx91_pos) = rx91_cur."from"()
    inc rx91_pos
    rx91_cur."!cursor_from"(rx91_pos)
    ge rx91_pos, rx91_eos, rxscan92_done
  rxscan92_scan:
    set_addr $I10, rxscan92_loop
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  rxscan92_done:
.annotate 'line', 31
  # rx subrule "nibbler" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."nibbler"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx91_pos = $P10."pos"()
  alt93_0:
.annotate 'line', 32
    set_addr $I10, alt93_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rxanchor eos
    ne rx91_pos, rx91_eos, rx91_fail
    goto alt93_end
  alt93_1:
  # rx subrule "panic" subtype=method negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."panic"("Confused")
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
  alt93_end:
.annotate 'line', 30
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "TOP")
    if_null rx91_debug, debug_292
    rx91_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx91_pos)
  debug_292:
    .return (rx91_cur)
  rx91_restart:
.annotate 'line', 9
    if_null rx91_debug, debug_293
    rx91_cur."!cursor_debug"("NEXT", "TOP")
  debug_293:
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    if_null rx91_debug, debug_294
    rx91_cur."!cursor_debug"("FAIL", "TOP")
  debug_294:
    .return (rx91_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("26_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P95 = self."!PREFIX__!subrule"("nibbler", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P106 = "28_1307873292.23355" 
    capture_lex $P106
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_caparray"("termconj", "0")
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
    if_null rx98_debug, debug_295
    rx98_cur."!cursor_debug"("START", "nibbler")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan99_done
    goto rxscan99_scan
  rxscan99_loop:
    (rx98_pos) = rx98_cur."from"()
    inc rx98_pos
    rx98_cur."!cursor_from"(rx98_pos)
    ge rx98_pos, rx98_eos, rxscan99_done
  rxscan99_scan:
    set_addr $I10, rxscan99_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan99_done:
.annotate 'line', 36
  # rx reduce name="nibbler" key="open"
    rx98_cur."!cursor_pos"(rx98_pos)
    rx98_cur."!reduce"("nibbler", "open")
.annotate 'line', 37
  # rx rxquantr100 ** 0..1
    set_addr $I10, rxquantr100_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr100_loop:
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt101_0:
    set_addr $I10, alt101_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "||"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "||", rx98_fail
    add rx98_pos, 2
    goto alt101_end
  alt101_1:
    set_addr $I10, alt101_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
    goto alt101_end
  alt101_2:
    set_addr $I10, alt101_3
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "&&"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "&&", rx98_fail
    add rx98_pos, 2
    goto alt101_end
  alt101_3:
  # rx literal  "&"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 38, rx98_fail
    add rx98_pos, 1
  alt101_end:
    set_addr $I10, rxquantr100_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
  rxquantr100_done:
.annotate 'line', 38
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr102 ** 0..*
    set_addr $I10, rxquantr102_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr102_loop:
  alt103_0:
.annotate 'line', 40
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
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
  alt103_end:
  alt104_0:
    set_addr $I10, alt104_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
    goto alt104_end
  alt104_1:
    set_addr $I10, alt104_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate 'line', 41
  # rx subrule $P106 subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    .const 'Sub' $P106 = "28_1307873292.23355" 
    capture_lex $P106
    $P10 = rx98_cur.$P106()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx98_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Unrecognized regex metacharacter (must be quoted to match literally)")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
    goto alt104_end
  alt104_2:
.annotate 'line', 42
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Null pattern not allowed")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt104_end:
.annotate 'line', 43
    set_addr $I10, rxquantr102_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr102_done
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I10)
    goto rxquantr102_loop
  rxquantr102_done:
.annotate 'line', 35
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "nibbler")
    if_null rx98_debug, debug_300
    rx98_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx98_pos)
  debug_300:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 9
    if_null rx98_debug, debug_301
    rx98_cur."!cursor_debug"("NEXT", "nibbler")
  debug_301:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_302
    rx98_cur."!cursor_debug"("FAIL", "nibbler")
  debug_302:
    .return (rx98_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block105"  :anon :subid("28_1307873292.23355") :method :outer("27_1307873292.23355")
.annotate 'line', 41
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    gt rx107_pos, rx107_eos, rx107_done
    set rx107_off, 0
    lt rx107_pos, 2, rx107_start
    sub rx107_off, rx107_pos, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    eq $I10, 1, rx107_restart
    if_null rx107_debug, debug_296
    rx107_cur."!cursor_debug"("START", "")
  debug_296:
    $I10 = self.'from'()
    ne $I10, -1, rxscan108_done
    goto rxscan108_scan
  rxscan108_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan108_done
  rxscan108_scan:
    set_addr $I10, rxscan108_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan108_done:
  # rx charclass W
    ge rx107_pos, rx107_eos, rx107_fail
    sub $I10, rx107_pos, rx107_off
    is_cclass $I11, .CCLASS_WORD, rx107_tgt, $I10
    if $I11, rx107_fail
    inc rx107_pos
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "")
    if_null rx107_debug, debug_297
    rx107_cur."!cursor_debug"("PASS", "", " at pos=", rx107_pos)
  debug_297:
    .return (rx107_cur)
  rx107_restart:
    if_null rx107_debug, debug_298
    rx107_cur."!cursor_debug"("NEXT", "")
  debug_298:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_299
    rx107_cur."!cursor_debug"("FAIL", "")
  debug_299:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("29_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P110, "ResizablePMCArray"
    push $P110, ""
    .return ($P110)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("30_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_debug
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    rx112_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    gt rx112_pos, rx112_eos, rx112_done
    set rx112_off, 0
    lt rx112_pos, 2, rx112_start
    sub rx112_off, rx112_pos, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    eq $I10, 1, rx112_restart
    if_null rx112_debug, debug_303
    rx112_cur."!cursor_debug"("START", "termconj")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan113_done
    goto rxscan113_scan
  rxscan113_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan113_done
  rxscan113_scan:
    set_addr $I10, rxscan113_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan113_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."termish"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx112_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr114 ** 0..*
    set_addr $I10, rxquantr114_done
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxquantr114_loop:
  alt115_0:
.annotate 'line', 48
    set_addr $I10, alt115_1
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  # rx literal  "&&"
    add $I11, rx112_pos, 2
    gt $I11, rx112_eos, rx112_fail
    sub $I11, rx112_pos, rx112_off
    substr $S10, rx112_tgt, $I11, 2
    ne $S10, "&&", rx112_fail
    add rx112_pos, 2
    goto alt115_end
  alt115_1:
  # rx literal  "&"
    add $I11, rx112_pos, 1
    gt $I11, rx112_eos, rx112_fail
    sub $I11, rx112_pos, rx112_off
    ord $I11, rx112_tgt, $I11
    ne $I11, 38, rx112_fail
    add rx112_pos, 1
  alt115_end:
  alt116_0:
.annotate 'line', 49
    set_addr $I10, alt116_1
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."termish"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx112_pos = $P10."pos"()
    goto alt116_end
  alt116_1:
  # rx subrule "panic" subtype=method negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."panic"("Null pattern not allowed")
    unless $P10, rx112_fail
    rx112_pos = $P10."pos"()
  alt116_end:
.annotate 'line', 50
    set_addr $I10, rxquantr114_done
    (rx112_rep) = rx112_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr114_done
    rx112_cur."!mark_push"(rx112_rep, rx112_pos, $I10)
    goto rxquantr114_loop
  rxquantr114_done:
.annotate 'line', 46
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "termconj")
    if_null rx112_debug, debug_304
    rx112_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx112_pos)
  debug_304:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 9
    if_null rx112_debug, debug_305
    rx112_cur."!cursor_debug"("NEXT", "termconj")
  debug_305:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_306
    rx112_cur."!cursor_debug"("FAIL", "termconj")
  debug_306:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :subid("31_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P118 = self."!PREFIX__!subrule"("termish", "")
    new $P119, "ResizablePMCArray"
    push $P119, $P118
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("32_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P127 = "33_1307873292.23355" 
    capture_lex $P127
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    .local pmc rx121_debug
    (rx121_cur, rx121_pos, rx121_tgt, $I10) = self."!cursor_start"()
    rx121_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx121_cur
    .local pmc match
    .lex "$/", match
    length rx121_eos, rx121_tgt
    gt rx121_pos, rx121_eos, rx121_done
    set rx121_off, 0
    lt rx121_pos, 2, rx121_start
    sub rx121_off, rx121_pos, 1
    substr rx121_tgt, rx121_tgt, rx121_off
  rx121_start:
    eq $I10, 1, rx121_restart
    if_null rx121_debug, debug_307
    rx121_cur."!cursor_debug"("START", "termish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan122_done
    goto rxscan122_scan
  rxscan122_loop:
    (rx121_pos) = rx121_cur."from"()
    inc rx121_pos
    rx121_cur."!cursor_from"(rx121_pos)
    ge rx121_pos, rx121_eos, rxscan122_done
  rxscan122_scan:
    set_addr $I10, rxscan122_loop
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  rxscan122_done:
  alt123_0:
.annotate 'line', 53
    set_addr $I10, alt123_1
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
.annotate 'line', 54
  # rx rxquantr124 ** 1..*
    set_addr $I10, rxquantr124_done
    rx121_cur."!mark_push"(0, -1, $I10)
  rxquantr124_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."quantified_atom"()
    unless $P10, rx121_fail
    goto rxsubrule125_pass
  rxsubrule125_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx121_fail
  rxsubrule125_pass:
    set_addr $I10, rxsubrule125_back
    rx121_cur."!mark_push"(0, rx121_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx121_pos = $P10."pos"()
    set_addr $I10, rxquantr124_done
    (rx121_rep) = rx121_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr124_done
    rx121_cur."!mark_push"(rx121_rep, rx121_pos, $I10)
    goto rxquantr124_loop
  rxquantr124_done:
    goto alt123_end
  alt123_1:
.annotate 'line', 55
  # rx subrule $P127 subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    .const 'Sub' $P127 = "33_1307873292.23355" 
    capture_lex $P127
    $P10 = rx121_cur.$P127()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx121_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."panic"("Unrecognized regex metacharacter (must be quoted to match literally)")
    unless $P10, rx121_fail
    rx121_pos = $P10."pos"()
  alt123_end:
.annotate 'line', 53
  # rx pass
    rx121_cur."!cursor_pass"(rx121_pos, "termish")
    if_null rx121_debug, debug_312
    rx121_cur."!cursor_debug"("PASS", "termish", " at pos=", rx121_pos)
  debug_312:
    .return (rx121_cur)
  rx121_restart:
.annotate 'line', 9
    if_null rx121_debug, debug_313
    rx121_cur."!cursor_debug"("NEXT", "termish")
  debug_313:
  rx121_fail:
    (rx121_rep, rx121_pos, $I10, $P10) = rx121_cur."!mark_fail"(0)
    lt rx121_pos, -1, rx121_done
    eq rx121_pos, -1, rx121_fail
    jump $I10
  rx121_done:
    rx121_cur."!cursor_fail"()
    if_null rx121_debug, debug_314
    rx121_cur."!cursor_debug"("FAIL", "termish")
  debug_314:
    .return (rx121_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block126"  :anon :subid("33_1307873292.23355") :method :outer("32_1307873292.23355")
.annotate 'line', 55
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_debug
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx128_cur
    .local pmc match
    .lex "$/", match
    length rx128_eos, rx128_tgt
    gt rx128_pos, rx128_eos, rx128_done
    set rx128_off, 0
    lt rx128_pos, 2, rx128_start
    sub rx128_off, rx128_pos, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
    eq $I10, 1, rx128_restart
    if_null rx128_debug, debug_308
    rx128_cur."!cursor_debug"("START", "")
  debug_308:
    $I10 = self.'from'()
    ne $I10, -1, rxscan129_done
    goto rxscan129_scan
  rxscan129_loop:
    (rx128_pos) = rx128_cur."from"()
    inc rx128_pos
    rx128_cur."!cursor_from"(rx128_pos)
    ge rx128_pos, rx128_eos, rxscan129_done
  rxscan129_scan:
    set_addr $I10, rxscan129_loop
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  rxscan129_done:
  # rx charclass W
    ge rx128_pos, rx128_eos, rx128_fail
    sub $I10, rx128_pos, rx128_off
    is_cclass $I11, .CCLASS_WORD, rx128_tgt, $I10
    if $I11, rx128_fail
    inc rx128_pos
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "")
    if_null rx128_debug, debug_309
    rx128_cur."!cursor_debug"("PASS", "", " at pos=", rx128_pos)
  debug_309:
    .return (rx128_cur)
  rx128_restart:
    if_null rx128_debug, debug_310
    rx128_cur."!cursor_debug"("NEXT", "")
  debug_310:
  rx128_fail:
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    if_null rx128_debug, debug_311
    rx128_cur."!cursor_debug"("FAIL", "")
  debug_311:
    .return (rx128_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("34_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P131, "ResizablePMCArray"
    push $P131, ""
    push $P131, ""
    .return ($P131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("35_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P138 = "36_1307873292.23355" 
    capture_lex $P138
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_debug
    (rx133_cur, rx133_pos, rx133_tgt, $I10) = self."!cursor_start"()
    rx133_cur."!cursor_caparray"("quantifier", "backmod")
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
    if_null rx133_debug, debug_315
    rx133_cur."!cursor_debug"("START", "quantified_atom")
  debug_315:
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
.annotate 'line', 59
  # rx subrule "atom" subtype=capture negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."atom"()
    unless $P10, rx133_fail
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx133_pos = $P10."pos"()
  # rx rxquantr135 ** 0..1
    set_addr $I10, rxquantr135_done
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxquantr135_loop:
  # rx subrule "ws" subtype=method negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."ws"()
    unless $P10, rx133_fail
    rx133_pos = $P10."pos"()
  alt136_0:
    set_addr $I10, alt136_1
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."quantifier"()
    unless $P10, rx133_fail
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx133_pos = $P10."pos"()
    goto alt136_end
  alt136_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    .const 'Sub' $P138 = "36_1307873292.23355" 
    capture_lex $P138
    $P10 = rx133_cur."before"($P138)
    unless $P10, rx133_fail
  # rx subrule "backmod" subtype=capture negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."backmod"()
    unless $P10, rx133_fail
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx133_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."alpha"()
    if $P10, rx133_fail
  alt136_end:
    set_addr $I10, rxquantr135_done
    (rx133_rep) = rx133_cur."!mark_commit"($I10)
  rxquantr135_done:
.annotate 'line', 58
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "quantified_atom")
    if_null rx133_debug, debug_320
    rx133_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx133_pos)
  debug_320:
    .return (rx133_cur)
  rx133_restart:
.annotate 'line', 9
    if_null rx133_debug, debug_321
    rx133_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_321:
  rx133_fail:
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    if_null rx133_debug, debug_322
    rx133_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_322:
    .return (rx133_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block137"  :anon :subid("36_1307873292.23355") :method :outer("35_1307873292.23355")
.annotate 'line', 59
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    .local pmc rx139_debug
    (rx139_cur, rx139_pos, rx139_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx139_cur
    .local pmc match
    .lex "$/", match
    length rx139_eos, rx139_tgt
    gt rx139_pos, rx139_eos, rx139_done
    set rx139_off, 0
    lt rx139_pos, 2, rx139_start
    sub rx139_off, rx139_pos, 1
    substr rx139_tgt, rx139_tgt, rx139_off
  rx139_start:
    eq $I10, 1, rx139_restart
    if_null rx139_debug, debug_316
    rx139_cur."!cursor_debug"("START", "")
  debug_316:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx139_pos) = rx139_cur."from"()
    inc rx139_pos
    rx139_cur."!cursor_from"(rx139_pos)
    ge rx139_pos, rx139_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx139_cur."!mark_push"(0, rx139_pos, $I10)
  rxscan140_done:
  # rx literal  ":"
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail
    sub $I11, rx139_pos, rx139_off
    ord $I11, rx139_tgt, $I11
    ne $I11, 58, rx139_fail
    add rx139_pos, 1
  # rx pass
    rx139_cur."!cursor_pass"(rx139_pos, "")
    if_null rx139_debug, debug_317
    rx139_cur."!cursor_debug"("PASS", "", " at pos=", rx139_pos)
  debug_317:
    .return (rx139_cur)
  rx139_restart:
    if_null rx139_debug, debug_318
    rx139_cur."!cursor_debug"("NEXT", "")
  debug_318:
  rx139_fail:
    (rx139_rep, rx139_pos, $I10, $P10) = rx139_cur."!mark_fail"(0)
    lt rx139_pos, -1, rx139_done
    eq rx139_pos, -1, rx139_fail
    jump $I10
  rx139_done:
    rx139_cur."!cursor_fail"()
    if_null rx139_debug, debug_319
    rx139_cur."!cursor_debug"("FAIL", "")
  debug_319:
    .return (rx139_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("37_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P142 = self."!PREFIX__!subrule"("atom", "")
    new $P143, "ResizablePMCArray"
    push $P143, $P142
    .return ($P143)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("38_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P151 = "39_1307873292.23355" 
    capture_lex $P151
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    .local pmc rx145_debug
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx145_cur
    .local pmc match
    .lex "$/", match
    length rx145_eos, rx145_tgt
    gt rx145_pos, rx145_eos, rx145_done
    set rx145_off, 0
    lt rx145_pos, 2, rx145_start
    sub rx145_off, rx145_pos, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
    eq $I10, 1, rx145_restart
    if_null rx145_debug, debug_323
    rx145_cur."!cursor_debug"("START", "atom")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx145_pos) = rx145_cur."from"()
    inc rx145_pos
    rx145_cur."!cursor_from"(rx145_pos)
    ge rx145_pos, rx145_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  rxscan146_done:
  alt147_0:
.annotate 'line', 64
    set_addr $I10, alt147_1
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
.annotate 'line', 65
  # rx charclass w
    ge rx145_pos, rx145_eos, rx145_fail
    sub $I10, rx145_pos, rx145_off
    is_cclass $I11, .CCLASS_WORD, rx145_tgt, $I10
    unless $I11, rx145_fail
    inc rx145_pos
  # rx rxquantr148 ** 0..1
    set_addr $I10, rxquantr148_done
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  rxquantr148_loop:
  # rx rxquantg149 ** 1..*
  rxquantg149_loop:
  # rx charclass w
    ge rx145_pos, rx145_eos, rx145_fail
    sub $I10, rx145_pos, rx145_off
    is_cclass $I11, .CCLASS_WORD, rx145_tgt, $I10
    unless $I11, rx145_fail
    inc rx145_pos
    set_addr $I10, rxquantg149_done
    rx145_cur."!mark_push"(rx145_rep, rx145_pos, $I10)
    goto rxquantg149_loop
  rxquantg149_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    .const 'Sub' $P151 = "39_1307873292.23355" 
    capture_lex $P151
    $P10 = rx145_cur."before"($P151)
    unless $P10, rx145_fail
    set_addr $I10, rxquantr148_done
    (rx145_rep) = rx145_cur."!mark_commit"($I10)
  rxquantr148_done:
    goto alt147_end
  alt147_1:
.annotate 'line', 66
  # rx subrule "metachar" subtype=capture negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."metachar"()
    unless $P10, rx145_fail
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx145_pos = $P10."pos"()
  alt147_end:
.annotate 'line', 62
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "atom")
    if_null rx145_debug, debug_328
    rx145_cur."!cursor_debug"("PASS", "atom", " at pos=", rx145_pos)
  debug_328:
    .return (rx145_cur)
  rx145_restart:
.annotate 'line', 9
    if_null rx145_debug, debug_329
    rx145_cur."!cursor_debug"("NEXT", "atom")
  debug_329:
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    if_null rx145_debug, debug_330
    rx145_cur."!cursor_debug"("FAIL", "atom")
  debug_330:
    .return (rx145_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block150"  :anon :subid("39_1307873292.23355") :method :outer("38_1307873292.23355")
.annotate 'line', 65
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_debug
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    gt rx152_pos, rx152_eos, rx152_done
    set rx152_off, 0
    lt rx152_pos, 2, rx152_start
    sub rx152_off, rx152_pos, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
    eq $I10, 1, rx152_restart
    if_null rx152_debug, debug_324
    rx152_cur."!cursor_debug"("START", "")
  debug_324:
    $I10 = self.'from'()
    ne $I10, -1, rxscan153_done
    goto rxscan153_scan
  rxscan153_loop:
    (rx152_pos) = rx152_cur."from"()
    inc rx152_pos
    rx152_cur."!cursor_from"(rx152_pos)
    ge rx152_pos, rx152_eos, rxscan153_done
  rxscan153_scan:
    set_addr $I10, rxscan153_loop
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  rxscan153_done:
  # rx charclass w
    ge rx152_pos, rx152_eos, rx152_fail
    sub $I10, rx152_pos, rx152_off
    is_cclass $I11, .CCLASS_WORD, rx152_tgt, $I10
    unless $I11, rx152_fail
    inc rx152_pos
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "")
    if_null rx152_debug, debug_325
    rx152_cur."!cursor_debug"("PASS", "", " at pos=", rx152_pos)
  debug_325:
    .return (rx152_cur)
  rx152_restart:
    if_null rx152_debug, debug_326
    rx152_cur."!cursor_debug"("NEXT", "")
  debug_326:
  rx152_fail:
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    if_null rx152_debug, debug_327
    rx152_cur."!cursor_debug"("FAIL", "")
  debug_327:
    .return (rx152_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("40_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P155 = self."!PREFIX__!subrule"("metachar", "")
    new $P156, "ResizablePMCArray"
    push $P156, $P155
    push $P156, ""
    .return ($P156)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("41_1307873292.23355")
    .param pmc param_158
.annotate 'line', 70
    .lex "self", param_158
    $P159 = param_158."!protoregex"("quantifier")
    .return ($P159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("42_1307873292.23355")
    .param pmc param_161
.annotate 'line', 70
    .lex "self", param_161
    $P162 = param_161."!PREFIX__!protoregex"("quantifier")
    .return ($P162)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("43_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_debug
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx164_cur
    .local pmc match
    .lex "$/", match
    length rx164_eos, rx164_tgt
    gt rx164_pos, rx164_eos, rx164_done
    set rx164_off, 0
    lt rx164_pos, 2, rx164_start
    sub rx164_off, rx164_pos, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
    eq $I10, 1, rx164_restart
    if_null rx164_debug, debug_331
    rx164_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx164_pos) = rx164_cur."from"()
    inc rx164_pos
    rx164_cur."!cursor_from"(rx164_pos)
    ge rx164_pos, rx164_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  rxscan165_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_166_fail
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  # rx literal  "*"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    ord $I11, rx164_tgt, $I11
    ne $I11, 42, rx164_fail
    add rx164_pos, 1
    set_addr $I10, rxcap_166_fail
    ($I12, $I11) = rx164_cur."!mark_peek"($I10)
    rx164_cur."!cursor_pos"($I11)
    ($P10) = rx164_cur."!cursor_start"()
    $P10."!cursor_pass"(rx164_pos, "")
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_166_done
  rxcap_166_fail:
    goto rx164_fail
  rxcap_166_done:
  # rx subrule "backmod" subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."backmod"()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx164_pos = $P10."pos"()
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "quantifier:sym<*>")
    if_null rx164_debug, debug_332
    rx164_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx164_pos)
  debug_332:
    .return (rx164_cur)
  rx164_restart:
.annotate 'line', 9
    if_null rx164_debug, debug_333
    rx164_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_333:
  rx164_fail:
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    if_null rx164_debug, debug_334
    rx164_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_334:
    .return (rx164_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("44_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P168 = self."!PREFIX__!subrule"("backmod", "*")
    new $P169, "ResizablePMCArray"
    push $P169, $P168
    .return ($P169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("45_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    .local pmc rx171_debug
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx171_cur
    .local pmc match
    .lex "$/", match
    length rx171_eos, rx171_tgt
    gt rx171_pos, rx171_eos, rx171_done
    set rx171_off, 0
    lt rx171_pos, 2, rx171_start
    sub rx171_off, rx171_pos, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
    eq $I10, 1, rx171_restart
    if_null rx171_debug, debug_335
    rx171_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    (rx171_pos) = rx171_cur."from"()
    inc rx171_pos
    rx171_cur."!cursor_from"(rx171_pos)
    ge rx171_pos, rx171_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  rxscan172_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_173_fail
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  # rx literal  "+"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 43, rx171_fail
    add rx171_pos, 1
    set_addr $I10, rxcap_173_fail
    ($I12, $I11) = rx171_cur."!mark_peek"($I10)
    rx171_cur."!cursor_pos"($I11)
    ($P10) = rx171_cur."!cursor_start"()
    $P10."!cursor_pass"(rx171_pos, "")
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_173_done
  rxcap_173_fail:
    goto rx171_fail
  rxcap_173_done:
  # rx subrule "backmod" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."backmod"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx171_pos = $P10."pos"()
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "quantifier:sym<+>")
    if_null rx171_debug, debug_336
    rx171_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx171_pos)
  debug_336:
    .return (rx171_cur)
  rx171_restart:
.annotate 'line', 9
    if_null rx171_debug, debug_337
    rx171_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_337:
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    if_null rx171_debug, debug_338
    rx171_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_338:
    .return (rx171_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("46_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P175 = self."!PREFIX__!subrule"("backmod", "+")
    new $P176, "ResizablePMCArray"
    push $P176, $P175
    .return ($P176)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("47_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    .local pmc rx178_debug
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx178_cur
    .local pmc match
    .lex "$/", match
    length rx178_eos, rx178_tgt
    gt rx178_pos, rx178_eos, rx178_done
    set rx178_off, 0
    lt rx178_pos, 2, rx178_start
    sub rx178_off, rx178_pos, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
    eq $I10, 1, rx178_restart
    if_null rx178_debug, debug_339
    rx178_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    (rx178_pos) = rx178_cur."from"()
    inc rx178_pos
    rx178_cur."!cursor_from"(rx178_pos)
    ge rx178_pos, rx178_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  rxscan179_done:
.annotate 'line', 73
  # rx subcapture "sym"
    set_addr $I10, rxcap_180_fail
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  # rx literal  "?"
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    ord $I11, rx178_tgt, $I11
    ne $I11, 63, rx178_fail
    add rx178_pos, 1
    set_addr $I10, rxcap_180_fail
    ($I12, $I11) = rx178_cur."!mark_peek"($I10)
    rx178_cur."!cursor_pos"($I11)
    ($P10) = rx178_cur."!cursor_start"()
    $P10."!cursor_pass"(rx178_pos, "")
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_180_done
  rxcap_180_fail:
    goto rx178_fail
  rxcap_180_done:
  # rx subrule "backmod" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."backmod"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx178_pos = $P10."pos"()
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "quantifier:sym<?>")
    if_null rx178_debug, debug_340
    rx178_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx178_pos)
  debug_340:
    .return (rx178_cur)
  rx178_restart:
.annotate 'line', 9
    if_null rx178_debug, debug_341
    rx178_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_341:
  rx178_fail:
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    if_null rx178_debug, debug_342
    rx178_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_342:
    .return (rx178_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("48_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P182 = self."!PREFIX__!subrule"("backmod", "?")
    new $P183, "ResizablePMCArray"
    push $P183, $P182
    .return ($P183)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("49_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P202 = "53_1307873292.23355" 
    capture_lex $P202
    .const 'Sub' $P197 = "52_1307873292.23355" 
    capture_lex $P197
    .const 'Sub' $P193 = "51_1307873292.23355" 
    capture_lex $P193
    .const 'Sub' $P190 = "50_1307873292.23355" 
    capture_lex $P190
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    .local pmc rx185_debug
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    gt rx185_pos, rx185_eos, rx185_done
    set rx185_off, 0
    lt rx185_pos, 2, rx185_start
    sub rx185_off, rx185_pos, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
    eq $I10, 1, rx185_restart
    if_null rx185_debug, debug_343
    rx185_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan186_done
    goto rxscan186_scan
  rxscan186_loop:
    (rx185_pos) = rx185_cur."from"()
    inc rx185_pos
    rx185_cur."!cursor_from"(rx185_pos)
    ge rx185_pos, rx185_eos, rxscan186_done
  rxscan186_scan:
    set_addr $I10, rxscan186_loop
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  rxscan186_done:
.annotate 'line', 74
    rx185_cur."!cursor_pos"(rx185_pos)
    find_lex $P187, unicode:"$\x{a2}"
    $P188 = $P187."MATCH"()
    store_lex "$/", $P188
    .const 'Sub' $P190 = "50_1307873292.23355" 
    capture_lex $P190
    $P191 = $P190()
  # rx literal  "{"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 123, rx185_fail
    add rx185_pos, 1
  # rx subrule $P193 subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    .const 'Sub' $P193 = "51_1307873292.23355" 
    capture_lex $P193
    $P10 = rx185_cur.$P193()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx185_pos = $P10."pos"()
  # rx subrule $P197 subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    .const 'Sub' $P197 = "52_1307873292.23355" 
    capture_lex $P197
    $P10 = rx185_cur.$P197()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx185_pos = $P10."pos"()
  # rx subrule $P202 subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    .const 'Sub' $P202 = "53_1307873292.23355" 
    capture_lex $P202
    $P10 = rx185_cur.$P202()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx185_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    ord $I11, rx185_tgt, $I11
    ne $I11, 125, rx185_fail
    add rx185_pos, 1
.annotate 'line', 75
  # rx subrule "obs" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
.annotate 'line', 74
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "quantifier:sym<{N,M}>")
    if_null rx185_debug, debug_356
    rx185_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx185_pos)
  debug_356:
    .return (rx185_cur)
  rx185_restart:
.annotate 'line', 9
    if_null rx185_debug, debug_357
    rx185_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_357:
  rx185_fail:
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    if_null rx185_debug, debug_358
    rx185_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_358:
    .return (rx185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block189"  :anon :subid("50_1307873292.23355") :outer("49_1307873292.23355")
.annotate 'line', 74
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block192"  :anon :subid("51_1307873292.23355") :method :outer("49_1307873292.23355")
.annotate 'line', 74
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_debug
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    gt rx194_pos, rx194_eos, rx194_done
    set rx194_off, 0
    lt rx194_pos, 2, rx194_start
    sub rx194_off, rx194_pos, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
    eq $I10, 1, rx194_restart
    if_null rx194_debug, debug_344
    rx194_cur."!cursor_debug"("START", "")
  debug_344:
    $I10 = self.'from'()
    ne $I10, -1, rxscan195_done
    goto rxscan195_scan
  rxscan195_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan195_done
  rxscan195_scan:
    set_addr $I10, rxscan195_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan195_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "")
    if_null rx194_debug, debug_345
    rx194_cur."!cursor_debug"("PASS", "", " at pos=", rx194_pos)
  debug_345:
    .return (rx194_cur)
  rx194_restart:
    if_null rx194_debug, debug_346
    rx194_cur."!cursor_debug"("NEXT", "")
  debug_346:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_347
    rx194_cur."!cursor_debug"("FAIL", "")
  debug_347:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block196"  :anon :subid("52_1307873292.23355") :method :outer("49_1307873292.23355")
.annotate 'line', 74
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    .local pmc rx198_debug
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx198_cur
    .local pmc match
    .lex "$/", match
    length rx198_eos, rx198_tgt
    gt rx198_pos, rx198_eos, rx198_done
    set rx198_off, 0
    lt rx198_pos, 2, rx198_start
    sub rx198_off, rx198_pos, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
    eq $I10, 1, rx198_restart
    if_null rx198_debug, debug_348
    rx198_cur."!cursor_debug"("START", "")
  debug_348:
    $I10 = self.'from'()
    ne $I10, -1, rxscan199_done
    goto rxscan199_scan
  rxscan199_loop:
    (rx198_pos) = rx198_cur."from"()
    inc rx198_pos
    rx198_cur."!cursor_from"(rx198_pos)
    ge rx198_pos, rx198_eos, rxscan199_done
  rxscan199_scan:
    set_addr $I10, rxscan199_loop
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxscan199_done:
  # rx rxquantr200 ** 0..1
    set_addr $I10, rxquantr200_done
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxquantr200_loop:
  # rx literal  ","
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    ord $I11, rx198_tgt, $I11
    ne $I11, 44, rx198_fail
    add rx198_pos, 1
    set_addr $I10, rxquantr200_done
    (rx198_rep) = rx198_cur."!mark_commit"($I10)
  rxquantr200_done:
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "")
    if_null rx198_debug, debug_349
    rx198_cur."!cursor_debug"("PASS", "", " at pos=", rx198_pos)
  debug_349:
    .return (rx198_cur)
  rx198_restart:
    if_null rx198_debug, debug_350
    rx198_cur."!cursor_debug"("NEXT", "")
  debug_350:
  rx198_fail:
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    if_null rx198_debug, debug_351
    rx198_cur."!cursor_debug"("FAIL", "")
  debug_351:
    .return (rx198_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block201"  :anon :subid("53_1307873292.23355") :method :outer("49_1307873292.23355")
.annotate 'line', 74
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    .local pmc rx203_debug
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    gt rx203_pos, rx203_eos, rx203_done
    set rx203_off, 0
    lt rx203_pos, 2, rx203_start
    sub rx203_off, rx203_pos, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
    eq $I10, 1, rx203_restart
    if_null rx203_debug, debug_352
    rx203_cur."!cursor_debug"("START", "")
  debug_352:
    $I10 = self.'from'()
    ne $I10, -1, rxscan204_done
    goto rxscan204_scan
  rxscan204_loop:
    (rx203_pos) = rx203_cur."from"()
    inc rx203_pos
    rx203_cur."!cursor_from"(rx203_pos)
    ge rx203_pos, rx203_eos, rxscan204_done
  rxscan204_scan:
    set_addr $I10, rxscan204_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan204_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx203_pos, rx203_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx203_tgt, $I10, rx203_eos
    add rx203_pos, rx203_off, $I11
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "")
    if_null rx203_debug, debug_353
    rx203_cur."!cursor_debug"("PASS", "", " at pos=", rx203_pos)
  debug_353:
    .return (rx203_cur)
  rx203_restart:
    if_null rx203_debug, debug_354
    rx203_cur."!cursor_debug"("NEXT", "")
  debug_354:
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    if_null rx203_debug, debug_355
    rx203_cur."!cursor_debug"("FAIL", "")
  debug_355:
    .return (rx203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :subid("54_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P206, "ResizablePMCArray"
    push $P206, ""
    .return ($P206)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("55_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_debug
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx208_cur
    .local pmc match
    .lex "$/", match
    length rx208_eos, rx208_tgt
    gt rx208_pos, rx208_eos, rx208_done
    set rx208_off, 0
    lt rx208_pos, 2, rx208_start
    sub rx208_off, rx208_pos, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
    eq $I10, 1, rx208_restart
    if_null rx208_debug, debug_359
    rx208_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    (rx208_pos) = rx208_cur."from"()
    inc rx208_pos
    rx208_cur."!cursor_from"(rx208_pos)
    ge rx208_pos, rx208_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  rxscan209_done:
.annotate 'line', 78
  # rx subcapture "sym"
    set_addr $I10, rxcap_210_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx literal  "**"
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 2
    ne $S10, "**", rx208_fail
    add rx208_pos, 2
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx208_cur."!mark_peek"($I10)
    rx208_cur."!cursor_pos"($I11)
    ($P10) = rx208_cur."!cursor_start"()
    $P10."!cursor_pass"(rx208_pos, "")
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx208_fail
  rxcap_210_done:
  # rx rxquantr211 ** 0..1
    set_addr $I10, rxquantr211_done
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  rxquantr211_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."normspace"()
    unless $P10, rx208_fail
    goto rxsubrule212_pass
  rxsubrule212_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx208_fail
  rxsubrule212_pass:
    set_addr $I10, rxsubrule212_back
    rx208_cur."!mark_push"(0, rx208_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx208_pos = $P10."pos"()
    set_addr $I10, rxquantr211_done
    (rx208_rep) = rx208_cur."!mark_commit"($I10)
  rxquantr211_done:
  # rx subrule "backmod" subtype=capture negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."backmod"()
    unless $P10, rx208_fail
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx208_pos = $P10."pos"()
  # rx rxquantr213 ** 0..1
    set_addr $I10, rxquantr213_done
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  rxquantr213_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."normspace"()
    unless $P10, rx208_fail
    goto rxsubrule214_pass
  rxsubrule214_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx208_fail
  rxsubrule214_pass:
    set_addr $I10, rxsubrule214_back
    rx208_cur."!mark_push"(0, rx208_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx208_pos = $P10."pos"()
    set_addr $I10, rxquantr213_done
    (rx208_rep) = rx208_cur."!mark_commit"($I10)
  rxquantr213_done:
  alt215_0:
.annotate 'line', 79
    set_addr $I10, alt215_1
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
.annotate 'line', 80
  # rx subcapture "min"
    set_addr $I10, rxcap_216_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx208_pos, rx208_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx208_tgt, $I10, rx208_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx208_fail
    add rx208_pos, rx208_off, $I11
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx208_cur."!mark_peek"($I10)
    rx208_cur."!cursor_pos"($I11)
    ($P10) = rx208_cur."!cursor_start"()
    $P10."!cursor_pass"(rx208_pos, "")
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx208_fail
  rxcap_216_done:
.annotate 'line', 87
  # rx rxquantr217 ** 0..1
    set_addr $I10, rxquantr217_done
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  rxquantr217_loop:
.annotate 'line', 81
  # rx literal  ".."
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 2
    ne $S10, "..", rx208_fail
    add rx208_pos, 2
.annotate 'line', 82
  # rx subcapture "max"
    set_addr $I10, rxcap_219_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  alt218_0:
    set_addr $I10, alt218_1
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
.annotate 'line', 83
  # rx charclass_q d r 1..-1
    sub $I10, rx208_pos, rx208_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx208_tgt, $I10, rx208_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx208_fail
    add rx208_pos, rx208_off, $I11
    goto alt218_end
  alt218_1:
    set_addr $I10, alt218_2
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
.annotate 'line', 84
  # rx literal  "*"
    add $I11, rx208_pos, 1
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    ord $I11, rx208_tgt, $I11
    ne $I11, 42, rx208_fail
    add rx208_pos, 1
    goto alt218_end
  alt218_2:
.annotate 'line', 85
  # rx subrule "panic" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  alt218_end:
.annotate 'line', 82
    set_addr $I10, rxcap_219_fail
    ($I12, $I11) = rx208_cur."!mark_peek"($I10)
    rx208_cur."!cursor_pos"($I11)
    ($P10) = rx208_cur."!cursor_start"()
    $P10."!cursor_pass"(rx208_pos, "")
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_219_done
  rxcap_219_fail:
    goto rx208_fail
  rxcap_219_done:
.annotate 'line', 87
    set_addr $I10, rxquantr217_done
    (rx208_rep) = rx208_cur."!mark_commit"($I10)
  rxquantr217_done:
.annotate 'line', 80
    goto alt215_end
  alt215_1:
.annotate 'line', 88
  # rx subrule "quantified_atom" subtype=capture negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."quantified_atom"()
    unless $P10, rx208_fail
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx208_pos = $P10."pos"()
  alt215_end:
.annotate 'line', 77
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "quantifier:sym<**>")
    if_null rx208_debug, debug_360
    rx208_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx208_pos)
  debug_360:
    .return (rx208_cur)
  rx208_restart:
.annotate 'line', 9
    if_null rx208_debug, debug_361
    rx208_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_361:
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    if_null rx208_debug, debug_362
    rx208_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_362:
    .return (rx208_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("56_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P221, "ResizablePMCArray"
    push $P221, "**"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("57_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P228 = "58_1307873292.23355" 
    capture_lex $P228
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    .local pmc rx223_debug
    (rx223_cur, rx223_pos, rx223_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    gt rx223_pos, rx223_eos, rx223_done
    set rx223_off, 0
    lt rx223_pos, 2, rx223_start
    sub rx223_off, rx223_pos, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
    eq $I10, 1, rx223_restart
    if_null rx223_debug, debug_363
    rx223_cur."!cursor_debug"("START", "backmod")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan224_done
    goto rxscan224_scan
  rxscan224_loop:
    (rx223_pos) = rx223_cur."from"()
    inc rx223_pos
    rx223_cur."!cursor_from"(rx223_pos)
    ge rx223_pos, rx223_eos, rxscan224_done
  rxscan224_scan:
    set_addr $I10, rxscan224_loop
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  rxscan224_done:
.annotate 'line', 92
  # rx rxquantr225 ** 0..1
    set_addr $I10, rxquantr225_done
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  rxquantr225_loop:
  # rx literal  ":"
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 58, rx223_fail
    add rx223_pos, 1
    set_addr $I10, rxquantr225_done
    (rx223_rep) = rx223_cur."!mark_commit"($I10)
  rxquantr225_done:
  alt226_0:
    set_addr $I10, alt226_1
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  # rx literal  "?"
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 63, rx223_fail
    add rx223_pos, 1
    goto alt226_end
  alt226_1:
    set_addr $I10, alt226_2
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  # rx literal  "!"
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 33, rx223_fail
    add rx223_pos, 1
    goto alt226_end
  alt226_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx223_cur."!cursor_pos"(rx223_pos)
    .const 'Sub' $P228 = "58_1307873292.23355" 
    capture_lex $P228
    $P10 = rx223_cur."before"($P228)
    if $P10, rx223_fail
  alt226_end:
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "backmod")
    if_null rx223_debug, debug_368
    rx223_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx223_pos)
  debug_368:
    .return (rx223_cur)
  rx223_restart:
.annotate 'line', 9
    if_null rx223_debug, debug_369
    rx223_cur."!cursor_debug"("NEXT", "backmod")
  debug_369:
  rx223_fail:
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    if_null rx223_debug, debug_370
    rx223_cur."!cursor_debug"("FAIL", "backmod")
  debug_370:
    .return (rx223_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block227"  :anon :subid("58_1307873292.23355") :method :outer("57_1307873292.23355")
.annotate 'line', 92
    .local string rx229_tgt
    .local int rx229_pos
    .local int rx229_off
    .local int rx229_eos
    .local int rx229_rep
    .local pmc rx229_cur
    .local pmc rx229_debug
    (rx229_cur, rx229_pos, rx229_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx229_cur
    .local pmc match
    .lex "$/", match
    length rx229_eos, rx229_tgt
    gt rx229_pos, rx229_eos, rx229_done
    set rx229_off, 0
    lt rx229_pos, 2, rx229_start
    sub rx229_off, rx229_pos, 1
    substr rx229_tgt, rx229_tgt, rx229_off
  rx229_start:
    eq $I10, 1, rx229_restart
    if_null rx229_debug, debug_364
    rx229_cur."!cursor_debug"("START", "")
  debug_364:
    $I10 = self.'from'()
    ne $I10, -1, rxscan230_done
    goto rxscan230_scan
  rxscan230_loop:
    (rx229_pos) = rx229_cur."from"()
    inc rx229_pos
    rx229_cur."!cursor_from"(rx229_pos)
    ge rx229_pos, rx229_eos, rxscan230_done
  rxscan230_scan:
    set_addr $I10, rxscan230_loop
    rx229_cur."!mark_push"(0, rx229_pos, $I10)
  rxscan230_done:
  # rx literal  ":"
    add $I11, rx229_pos, 1
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    ord $I11, rx229_tgt, $I11
    ne $I11, 58, rx229_fail
    add rx229_pos, 1
  # rx pass
    rx229_cur."!cursor_pass"(rx229_pos, "")
    if_null rx229_debug, debug_365
    rx229_cur."!cursor_debug"("PASS", "", " at pos=", rx229_pos)
  debug_365:
    .return (rx229_cur)
  rx229_restart:
    if_null rx229_debug, debug_366
    rx229_cur."!cursor_debug"("NEXT", "")
  debug_366:
  rx229_fail:
    (rx229_rep, rx229_pos, $I10, $P10) = rx229_cur."!mark_fail"(0)
    lt rx229_pos, -1, rx229_done
    eq rx229_pos, -1, rx229_fail
    jump $I10
  rx229_done:
    rx229_cur."!cursor_fail"()
    if_null rx229_debug, debug_367
    rx229_cur."!cursor_debug"("FAIL", "")
  debug_367:
    .return (rx229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("59_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P232, "ResizablePMCArray"
    push $P232, ""
    .return ($P232)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("60_1307873292.23355")
    .param pmc param_234
.annotate 'line', 94
    .lex "self", param_234
    $P235 = param_234."!protoregex"("metachar")
    .return ($P235)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("61_1307873292.23355")
    .param pmc param_237
.annotate 'line', 94
    .lex "self", param_237
    $P238 = param_237."!PREFIX__!protoregex"("metachar")
    .return ($P238)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("62_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    .local pmc rx240_debug
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    gt rx240_pos, rx240_eos, rx240_done
    set rx240_off, 0
    lt rx240_pos, 2, rx240_start
    sub rx240_off, rx240_pos, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
    eq $I10, 1, rx240_restart
    if_null rx240_debug, debug_371
    rx240_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    (rx240_pos) = rx240_cur."from"()
    inc rx240_pos
    rx240_cur."!cursor_from"(rx240_pos)
    ge rx240_pos, rx240_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan241_done:
.annotate 'line', 95
  # rx subrule "normspace" subtype=method negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."normspace"()
    unless $P10, rx240_fail
    rx240_pos = $P10."pos"()
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "metachar:sym<ws>")
    if_null rx240_debug, debug_372
    rx240_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx240_pos)
  debug_372:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 9
    if_null rx240_debug, debug_373
    rx240_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_373:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_374
    rx240_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_374:
    .return (rx240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("63_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P243 = self."!PREFIX__!subrule"("normspace", "")
    new $P244, "ResizablePMCArray"
    push $P244, $P243
    .return ($P244)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("64_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    .local pmc rx246_debug
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    gt rx246_pos, rx246_eos, rx246_done
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    eq $I10, 1, rx246_restart
    if_null rx246_debug, debug_375
    rx246_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan247_done:
.annotate 'line', 96
  # rx literal  "["
    add $I11, rx246_pos, 1
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    ord $I11, rx246_tgt, $I11
    ne $I11, 91, rx246_fail
    add rx246_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."nibbler"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx246_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx246_pos, 1
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    ord $I11, rx246_tgt, $I11
    ne $I11, 93, rx246_fail
    add rx246_pos, 1
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "metachar:sym<[ ]>")
    if_null rx246_debug, debug_376
    rx246_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx246_pos)
  debug_376:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 9
    if_null rx246_debug, debug_377
    rx246_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_377:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_378
    rx246_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_378:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("65_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P249 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P250, "ResizablePMCArray"
    push $P250, $P249
    .return ($P250)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("66_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_debug
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    gt rx252_pos, rx252_eos, rx252_done
    set rx252_off, 0
    lt rx252_pos, 2, rx252_start
    sub rx252_off, rx252_pos, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
    eq $I10, 1, rx252_restart
    if_null rx252_debug, debug_379
    rx252_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    (rx252_pos) = rx252_cur."from"()
    inc rx252_pos
    rx252_cur."!cursor_from"(rx252_pos)
    ge rx252_pos, rx252_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  rxscan253_done:
.annotate 'line', 97
  # rx literal  "("
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    ord $I11, rx252_tgt, $I11
    ne $I11, 40, rx252_fail
    add rx252_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."nibbler"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx252_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    ord $I11, rx252_tgt, $I11
    ne $I11, 41, rx252_fail
    add rx252_pos, 1
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "metachar:sym<( )>")
    if_null rx252_debug, debug_380
    rx252_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx252_pos)
  debug_380:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 9
    if_null rx252_debug, debug_381
    rx252_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_381:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_382
    rx252_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_382:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("67_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P255 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P256, "ResizablePMCArray"
    push $P256, $P255
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("68_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx258_tgt
    .local int rx258_pos
    .local int rx258_off
    .local int rx258_eos
    .local int rx258_rep
    .local pmc rx258_cur
    .local pmc rx258_debug
    (rx258_cur, rx258_pos, rx258_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx258_cur
    .local pmc match
    .lex "$/", match
    length rx258_eos, rx258_tgt
    gt rx258_pos, rx258_eos, rx258_done
    set rx258_off, 0
    lt rx258_pos, 2, rx258_start
    sub rx258_off, rx258_pos, 1
    substr rx258_tgt, rx258_tgt, rx258_off
  rx258_start:
    eq $I10, 1, rx258_restart
    if_null rx258_debug, debug_383
    rx258_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    (rx258_pos) = rx258_cur."from"()
    inc rx258_pos
    rx258_cur."!cursor_from"(rx258_pos)
    ge rx258_pos, rx258_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  rxscan259_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx258_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."quote_EXPR"(":q")
    unless $P10, rx258_fail
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx258_pos = $P10."pos"()
  # rx pass
    rx258_cur."!cursor_pass"(rx258_pos, "metachar:sym<'>")
    if_null rx258_debug, debug_384
    rx258_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx258_pos)
  debug_384:
    .return (rx258_cur)
  rx258_restart:
.annotate 'line', 9
    if_null rx258_debug, debug_385
    rx258_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_385:
  rx258_fail:
    (rx258_rep, rx258_pos, $I10, $P10) = rx258_cur."!mark_fail"(0)
    lt rx258_pos, -1, rx258_done
    eq rx258_pos, -1, rx258_fail
    jump $I10
  rx258_done:
    rx258_cur."!cursor_fail"()
    if_null rx258_debug, debug_386
    rx258_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_386:
    .return (rx258_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("69_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P261, "ResizablePMCArray"
    push $P261, "'"
    .return ($P261)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("70_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    .local pmc rx263_debug
    (rx263_cur, rx263_pos, rx263_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx263_cur
    .local pmc match
    .lex "$/", match
    length rx263_eos, rx263_tgt
    gt rx263_pos, rx263_eos, rx263_done
    set rx263_off, 0
    lt rx263_pos, 2, rx263_start
    sub rx263_off, rx263_pos, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
    eq $I10, 1, rx263_restart
    if_null rx263_debug, debug_387
    rx263_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    (rx263_pos) = rx263_cur."from"()
    inc rx263_pos
    rx263_cur."!cursor_from"(rx263_pos)
    ge rx263_pos, rx263_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  rxscan264_done:
.annotate 'line', 99
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx263_pos, rx263_off
    substr $S10, rx263_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx263_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx263_cur."!cursor_pos"(rx263_pos)
    $P10 = rx263_cur."quote_EXPR"(":qq")
    unless $P10, rx263_fail
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx263_pos = $P10."pos"()
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "metachar:sym<\">")
    if_null rx263_debug, debug_388
    rx263_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx263_pos)
  debug_388:
    .return (rx263_cur)
  rx263_restart:
.annotate 'line', 9
    if_null rx263_debug, debug_389
    rx263_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_389:
  rx263_fail:
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    if_null rx263_debug, debug_390
    rx263_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_390:
    .return (rx263_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :subid("71_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P266, "ResizablePMCArray"
    push $P266, "\""
    .return ($P266)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("72_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    .local pmc rx268_debug
    (rx268_cur, rx268_pos, rx268_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx268_cur
    .local pmc match
    .lex "$/", match
    length rx268_eos, rx268_tgt
    gt rx268_pos, rx268_eos, rx268_done
    set rx268_off, 0
    lt rx268_pos, 2, rx268_start
    sub rx268_off, rx268_pos, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
    eq $I10, 1, rx268_restart
    if_null rx268_debug, debug_391
    rx268_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    (rx268_pos) = rx268_cur."from"()
    inc rx268_pos
    rx268_cur."!cursor_from"(rx268_pos)
    ge rx268_pos, rx268_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  rxscan269_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  # rx literal  "."
    add $I11, rx268_pos, 1
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    ord $I11, rx268_tgt, $I11
    ne $I11, 46, rx268_fail
    add rx268_pos, 1
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx268_cur."!mark_peek"($I10)
    rx268_cur."!cursor_pos"($I11)
    ($P10) = rx268_cur."!cursor_start"()
    $P10."!cursor_pass"(rx268_pos, "")
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx268_fail
  rxcap_270_done:
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "metachar:sym<.>")
    if_null rx268_debug, debug_392
    rx268_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx268_pos)
  debug_392:
    .return (rx268_cur)
  rx268_restart:
.annotate 'line', 9
    if_null rx268_debug, debug_393
    rx268_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_393:
  rx268_fail:
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    if_null rx268_debug, debug_394
    rx268_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_394:
    .return (rx268_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("73_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P272, "ResizablePMCArray"
    push $P272, "."
    .return ($P272)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("74_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    .local pmc rx274_debug
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    gt rx274_pos, rx274_eos, rx274_done
    set rx274_off, 0
    lt rx274_pos, 2, rx274_start
    sub rx274_off, rx274_pos, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
    eq $I10, 1, rx274_restart
    if_null rx274_debug, debug_395
    rx274_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan275_done
    goto rxscan275_scan
  rxscan275_loop:
    (rx274_pos) = rx274_cur."from"()
    inc rx274_pos
    rx274_cur."!cursor_from"(rx274_pos)
    ge rx274_pos, rx274_eos, rxscan275_done
  rxscan275_scan:
    set_addr $I10, rxscan275_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan275_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_276_fail
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  # rx literal  "^"
    add $I11, rx274_pos, 1
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    ord $I11, rx274_tgt, $I11
    ne $I11, 94, rx274_fail
    add rx274_pos, 1
    set_addr $I10, rxcap_276_fail
    ($I12, $I11) = rx274_cur."!mark_peek"($I10)
    rx274_cur."!cursor_pos"($I11)
    ($P10) = rx274_cur."!cursor_start"()
    $P10."!cursor_pass"(rx274_pos, "")
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_276_done
  rxcap_276_fail:
    goto rx274_fail
  rxcap_276_done:
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "metachar:sym<^>")
    if_null rx274_debug, debug_396
    rx274_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx274_pos)
  debug_396:
    .return (rx274_cur)
  rx274_restart:
.annotate 'line', 9
    if_null rx274_debug, debug_397
    rx274_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_397:
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    if_null rx274_debug, debug_398
    rx274_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_398:
    .return (rx274_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("75_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P278, "ResizablePMCArray"
    push $P278, "^"
    .return ($P278)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("76_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx280_tgt
    .local int rx280_pos
    .local int rx280_off
    .local int rx280_eos
    .local int rx280_rep
    .local pmc rx280_cur
    .local pmc rx280_debug
    (rx280_cur, rx280_pos, rx280_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx280_cur
    .local pmc match
    .lex "$/", match
    length rx280_eos, rx280_tgt
    gt rx280_pos, rx280_eos, rx280_done
    set rx280_off, 0
    lt rx280_pos, 2, rx280_start
    sub rx280_off, rx280_pos, 1
    substr rx280_tgt, rx280_tgt, rx280_off
  rx280_start:
    eq $I10, 1, rx280_restart
    if_null rx280_debug, debug_399
    rx280_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan281_done
    goto rxscan281_scan
  rxscan281_loop:
    (rx280_pos) = rx280_cur."from"()
    inc rx280_pos
    rx280_cur."!cursor_from"(rx280_pos)
    ge rx280_pos, rx280_eos, rxscan281_done
  rxscan281_scan:
    set_addr $I10, rxscan281_loop
    rx280_cur."!mark_push"(0, rx280_pos, $I10)
  rxscan281_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_282_fail
    rx280_cur."!mark_push"(0, rx280_pos, $I10)
  # rx literal  "^^"
    add $I11, rx280_pos, 2
    gt $I11, rx280_eos, rx280_fail
    sub $I11, rx280_pos, rx280_off
    substr $S10, rx280_tgt, $I11, 2
    ne $S10, "^^", rx280_fail
    add rx280_pos, 2
    set_addr $I10, rxcap_282_fail
    ($I12, $I11) = rx280_cur."!mark_peek"($I10)
    rx280_cur."!cursor_pos"($I11)
    ($P10) = rx280_cur."!cursor_start"()
    $P10."!cursor_pass"(rx280_pos, "")
    rx280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_282_done
  rxcap_282_fail:
    goto rx280_fail
  rxcap_282_done:
  # rx pass
    rx280_cur."!cursor_pass"(rx280_pos, "metachar:sym<^^>")
    if_null rx280_debug, debug_400
    rx280_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx280_pos)
  debug_400:
    .return (rx280_cur)
  rx280_restart:
.annotate 'line', 9
    if_null rx280_debug, debug_401
    rx280_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_401:
  rx280_fail:
    (rx280_rep, rx280_pos, $I10, $P10) = rx280_cur."!mark_fail"(0)
    lt rx280_pos, -1, rx280_done
    eq rx280_pos, -1, rx280_fail
    jump $I10
  rx280_done:
    rx280_cur."!cursor_fail"()
    if_null rx280_debug, debug_402
    rx280_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_402:
    .return (rx280_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("77_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P284, "ResizablePMCArray"
    push $P284, "^^"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("78_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx286_tgt
    .local int rx286_pos
    .local int rx286_off
    .local int rx286_eos
    .local int rx286_rep
    .local pmc rx286_cur
    .local pmc rx286_debug
    (rx286_cur, rx286_pos, rx286_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx286_cur
    .local pmc match
    .lex "$/", match
    length rx286_eos, rx286_tgt
    gt rx286_pos, rx286_eos, rx286_done
    set rx286_off, 0
    lt rx286_pos, 2, rx286_start
    sub rx286_off, rx286_pos, 1
    substr rx286_tgt, rx286_tgt, rx286_off
  rx286_start:
    eq $I10, 1, rx286_restart
    if_null rx286_debug, debug_403
    rx286_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan287_done
    goto rxscan287_scan
  rxscan287_loop:
    (rx286_pos) = rx286_cur."from"()
    inc rx286_pos
    rx286_cur."!cursor_from"(rx286_pos)
    ge rx286_pos, rx286_eos, rxscan287_done
  rxscan287_scan:
    set_addr $I10, rxscan287_loop
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  rxscan287_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_288_fail
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  # rx literal  "$"
    add $I11, rx286_pos, 1
    gt $I11, rx286_eos, rx286_fail
    sub $I11, rx286_pos, rx286_off
    ord $I11, rx286_tgt, $I11
    ne $I11, 36, rx286_fail
    add rx286_pos, 1
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx286_cur."!mark_peek"($I10)
    rx286_cur."!cursor_pos"($I11)
    ($P10) = rx286_cur."!cursor_start"()
    $P10."!cursor_pass"(rx286_pos, "")
    rx286_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx286_fail
  rxcap_288_done:
  # rx pass
    rx286_cur."!cursor_pass"(rx286_pos, "metachar:sym<$>")
    if_null rx286_debug, debug_404
    rx286_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx286_pos)
  debug_404:
    .return (rx286_cur)
  rx286_restart:
.annotate 'line', 9
    if_null rx286_debug, debug_405
    rx286_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_405:
  rx286_fail:
    (rx286_rep, rx286_pos, $I10, $P10) = rx286_cur."!mark_fail"(0)
    lt rx286_pos, -1, rx286_done
    eq rx286_pos, -1, rx286_fail
    jump $I10
  rx286_done:
    rx286_cur."!cursor_fail"()
    if_null rx286_debug, debug_406
    rx286_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_406:
    .return (rx286_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("79_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P290, "ResizablePMCArray"
    push $P290, "$"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("80_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    .local pmc rx292_debug
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx292_cur
    .local pmc match
    .lex "$/", match
    length rx292_eos, rx292_tgt
    gt rx292_pos, rx292_eos, rx292_done
    set rx292_off, 0
    lt rx292_pos, 2, rx292_start
    sub rx292_off, rx292_pos, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
    eq $I10, 1, rx292_restart
    if_null rx292_debug, debug_407
    rx292_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan293_done
    goto rxscan293_scan
  rxscan293_loop:
    (rx292_pos) = rx292_cur."from"()
    inc rx292_pos
    rx292_cur."!cursor_from"(rx292_pos)
    ge rx292_pos, rx292_eos, rxscan293_done
  rxscan293_scan:
    set_addr $I10, rxscan293_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan293_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_294_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx literal  "$$"
    add $I11, rx292_pos, 2
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 2
    ne $S10, "$$", rx292_fail
    add rx292_pos, 2
    set_addr $I10, rxcap_294_fail
    ($I12, $I11) = rx292_cur."!mark_peek"($I10)
    rx292_cur."!cursor_pos"($I11)
    ($P10) = rx292_cur."!cursor_start"()
    $P10."!cursor_pass"(rx292_pos, "")
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_294_done
  rxcap_294_fail:
    goto rx292_fail
  rxcap_294_done:
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "metachar:sym<$$>")
    if_null rx292_debug, debug_408
    rx292_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx292_pos)
  debug_408:
    .return (rx292_cur)
  rx292_restart:
.annotate 'line', 9
    if_null rx292_debug, debug_409
    rx292_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_409:
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    if_null rx292_debug, debug_410
    rx292_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_410:
    .return (rx292_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("81_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P296, "ResizablePMCArray"
    push $P296, "$$"
    .return ($P296)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("82_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx298_tgt
    .local int rx298_pos
    .local int rx298_off
    .local int rx298_eos
    .local int rx298_rep
    .local pmc rx298_cur
    .local pmc rx298_debug
    (rx298_cur, rx298_pos, rx298_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx298_cur
    .local pmc match
    .lex "$/", match
    length rx298_eos, rx298_tgt
    gt rx298_pos, rx298_eos, rx298_done
    set rx298_off, 0
    lt rx298_pos, 2, rx298_start
    sub rx298_off, rx298_pos, 1
    substr rx298_tgt, rx298_tgt, rx298_off
  rx298_start:
    eq $I10, 1, rx298_restart
    if_null rx298_debug, debug_411
    rx298_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan299_done
    goto rxscan299_scan
  rxscan299_loop:
    (rx298_pos) = rx298_cur."from"()
    inc rx298_pos
    rx298_cur."!cursor_from"(rx298_pos)
    ge rx298_pos, rx298_eos, rxscan299_done
  rxscan299_scan:
    set_addr $I10, rxscan299_loop
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  rxscan299_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_300_fail
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  # rx literal  ":::"
    add $I11, rx298_pos, 3
    gt $I11, rx298_eos, rx298_fail
    sub $I11, rx298_pos, rx298_off
    substr $S10, rx298_tgt, $I11, 3
    ne $S10, ":::", rx298_fail
    add rx298_pos, 3
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx298_cur."!mark_peek"($I10)
    rx298_cur."!cursor_pos"($I11)
    ($P10) = rx298_cur."!cursor_start"()
    $P10."!cursor_pass"(rx298_pos, "")
    rx298_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx298_fail
  rxcap_300_done:
  # rx subrule "panic" subtype=method negate=
    rx298_cur."!cursor_pos"(rx298_pos)
    $P10 = rx298_cur."panic"("::: not yet implemented")
    unless $P10, rx298_fail
    rx298_pos = $P10."pos"()
  # rx pass
    rx298_cur."!cursor_pass"(rx298_pos, "metachar:sym<:::>")
    if_null rx298_debug, debug_412
    rx298_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx298_pos)
  debug_412:
    .return (rx298_cur)
  rx298_restart:
.annotate 'line', 9
    if_null rx298_debug, debug_413
    rx298_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_413:
  rx298_fail:
    (rx298_rep, rx298_pos, $I10, $P10) = rx298_cur."!mark_fail"(0)
    lt rx298_pos, -1, rx298_done
    eq rx298_pos, -1, rx298_fail
    jump $I10
  rx298_done:
    rx298_cur."!cursor_fail"()
    if_null rx298_debug, debug_414
    rx298_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_414:
    .return (rx298_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("83_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P302 = self."!PREFIX__!subrule"("panic", ":::")
    new $P303, "ResizablePMCArray"
    push $P303, $P302
    .return ($P303)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("84_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    .local pmc rx305_debug
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx305_cur
    .local pmc match
    .lex "$/", match
    length rx305_eos, rx305_tgt
    gt rx305_pos, rx305_eos, rx305_done
    set rx305_off, 0
    lt rx305_pos, 2, rx305_start
    sub rx305_off, rx305_pos, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
    eq $I10, 1, rx305_restart
    if_null rx305_debug, debug_415
    rx305_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan306_done
    goto rxscan306_scan
  rxscan306_loop:
    (rx305_pos) = rx305_cur."from"()
    inc rx305_pos
    rx305_cur."!cursor_from"(rx305_pos)
    ge rx305_pos, rx305_eos, rxscan306_done
  rxscan306_scan:
    set_addr $I10, rxscan306_loop
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  rxscan306_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_307_fail
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  # rx literal  "::"
    add $I11, rx305_pos, 2
    gt $I11, rx305_eos, rx305_fail
    sub $I11, rx305_pos, rx305_off
    substr $S10, rx305_tgt, $I11, 2
    ne $S10, "::", rx305_fail
    add rx305_pos, 2
    set_addr $I10, rxcap_307_fail
    ($I12, $I11) = rx305_cur."!mark_peek"($I10)
    rx305_cur."!cursor_pos"($I11)
    ($P10) = rx305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx305_pos, "")
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_307_done
  rxcap_307_fail:
    goto rx305_fail
  rxcap_307_done:
  # rx subrule "panic" subtype=method negate=
    rx305_cur."!cursor_pos"(rx305_pos)
    $P10 = rx305_cur."panic"(":: not yet implemented")
    unless $P10, rx305_fail
    rx305_pos = $P10."pos"()
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "metachar:sym<::>")
    if_null rx305_debug, debug_416
    rx305_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx305_pos)
  debug_416:
    .return (rx305_cur)
  rx305_restart:
.annotate 'line', 9
    if_null rx305_debug, debug_417
    rx305_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_417:
  rx305_fail:
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    if_null rx305_debug, debug_418
    rx305_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_418:
    .return (rx305_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("85_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P309 = self."!PREFIX__!subrule"("panic", "::")
    new $P310, "ResizablePMCArray"
    push $P310, $P309
    .return ($P310)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("86_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    .local pmc rx312_debug
    (rx312_cur, rx312_pos, rx312_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx312_cur
    .local pmc match
    .lex "$/", match
    length rx312_eos, rx312_tgt
    gt rx312_pos, rx312_eos, rx312_done
    set rx312_off, 0
    lt rx312_pos, 2, rx312_start
    sub rx312_off, rx312_pos, 1
    substr rx312_tgt, rx312_tgt, rx312_off
  rx312_start:
    eq $I10, 1, rx312_restart
    if_null rx312_debug, debug_419
    rx312_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan313_done
    goto rxscan313_scan
  rxscan313_loop:
    (rx312_pos) = rx312_cur."from"()
    inc rx312_pos
    rx312_cur."!cursor_from"(rx312_pos)
    ge rx312_pos, rx312_eos, rxscan313_done
  rxscan313_scan:
    set_addr $I10, rxscan313_loop
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  rxscan313_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  alt314_0:
    set_addr $I10, alt314_1
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  # rx literal  "<<"
    add $I11, rx312_pos, 2
    gt $I11, rx312_eos, rx312_fail
    sub $I11, rx312_pos, rx312_off
    substr $S10, rx312_tgt, $I11, 2
    ne $S10, "<<", rx312_fail
    add rx312_pos, 2
    goto alt314_end
  alt314_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx312_pos, 1
    gt $I11, rx312_eos, rx312_fail
    sub $I11, rx312_pos, rx312_off
    ord $I11, rx312_tgt, $I11
    ne $I11, 171, rx312_fail
    add rx312_pos, 1
  alt314_end:
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx312_cur."!mark_peek"($I10)
    rx312_cur."!cursor_pos"($I11)
    ($P10) = rx312_cur."!cursor_start"()
    $P10."!cursor_pass"(rx312_pos, "")
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx312_fail
  rxcap_315_done:
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "metachar:sym<lwb>")
    if_null rx312_debug, debug_420
    rx312_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx312_pos)
  debug_420:
    .return (rx312_cur)
  rx312_restart:
.annotate 'line', 9
    if_null rx312_debug, debug_421
    rx312_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_421:
  rx312_fail:
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    if_null rx312_debug, debug_422
    rx312_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_422:
    .return (rx312_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("87_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P317, "ResizablePMCArray"
    push $P317, unicode:"\x{ab}"
    push $P317, "<<"
    .return ($P317)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("88_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    .local pmc rx319_debug
    (rx319_cur, rx319_pos, rx319_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx319_cur
    .local pmc match
    .lex "$/", match
    length rx319_eos, rx319_tgt
    gt rx319_pos, rx319_eos, rx319_done
    set rx319_off, 0
    lt rx319_pos, 2, rx319_start
    sub rx319_off, rx319_pos, 1
    substr rx319_tgt, rx319_tgt, rx319_off
  rx319_start:
    eq $I10, 1, rx319_restart
    if_null rx319_debug, debug_423
    rx319_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan320_done
    goto rxscan320_scan
  rxscan320_loop:
    (rx319_pos) = rx319_cur."from"()
    inc rx319_pos
    rx319_cur."!cursor_from"(rx319_pos)
    ge rx319_pos, rx319_eos, rxscan320_done
  rxscan320_scan:
    set_addr $I10, rxscan320_loop
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  rxscan320_done:
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_322_fail
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  alt321_0:
    set_addr $I10, alt321_1
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  # rx literal  ">>"
    add $I11, rx319_pos, 2
    gt $I11, rx319_eos, rx319_fail
    sub $I11, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I11, 2
    ne $S10, ">>", rx319_fail
    add rx319_pos, 2
    goto alt321_end
  alt321_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx319_pos, 1
    gt $I11, rx319_eos, rx319_fail
    sub $I11, rx319_pos, rx319_off
    ord $I11, rx319_tgt, $I11
    ne $I11, 187, rx319_fail
    add rx319_pos, 1
  alt321_end:
    set_addr $I10, rxcap_322_fail
    ($I12, $I11) = rx319_cur."!mark_peek"($I10)
    rx319_cur."!cursor_pos"($I11)
    ($P10) = rx319_cur."!cursor_start"()
    $P10."!cursor_pass"(rx319_pos, "")
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_322_done
  rxcap_322_fail:
    goto rx319_fail
  rxcap_322_done:
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "metachar:sym<rwb>")
    if_null rx319_debug, debug_424
    rx319_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx319_pos)
  debug_424:
    .return (rx319_cur)
  rx319_restart:
.annotate 'line', 9
    if_null rx319_debug, debug_425
    rx319_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_425:
  rx319_fail:
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    if_null rx319_debug, debug_426
    rx319_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_426:
    .return (rx319_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("89_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P324, "ResizablePMCArray"
    push $P324, unicode:"\x{bb}"
    push $P324, ">>"
    .return ($P324)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("90_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    .local pmc rx326_debug
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    gt rx326_pos, rx326_eos, rx326_done
    set rx326_off, 0
    lt rx326_pos, 2, rx326_start
    sub rx326_off, rx326_pos, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
    eq $I10, 1, rx326_restart
    if_null rx326_debug, debug_427
    rx326_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan327_done
    goto rxscan327_scan
  rxscan327_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan327_done
  rxscan327_scan:
    set_addr $I10, rxscan327_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan327_done:
.annotate 'line', 109
  # rx literal  "\\"
    add $I11, rx326_pos, 1
    gt $I11, rx326_eos, rx326_fail
    sub $I11, rx326_pos, rx326_off
    ord $I11, rx326_tgt, $I11
    ne $I11, 92, rx326_fail
    add rx326_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."backslash"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx326_pos = $P10."pos"()
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "metachar:sym<bs>")
    if_null rx326_debug, debug_428
    rx326_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx326_pos)
  debug_428:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 9
    if_null rx326_debug, debug_429
    rx326_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_429:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_430
    rx326_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_430:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("91_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P329 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P330, "ResizablePMCArray"
    push $P330, $P329
    .return ($P330)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("92_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    .local pmc rx332_debug
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx332_cur
    .local pmc match
    .lex "$/", match
    length rx332_eos, rx332_tgt
    gt rx332_pos, rx332_eos, rx332_done
    set rx332_off, 0
    lt rx332_pos, 2, rx332_start
    sub rx332_off, rx332_pos, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
    eq $I10, 1, rx332_restart
    if_null rx332_debug, debug_431
    rx332_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan333_done
    goto rxscan333_scan
  rxscan333_loop:
    (rx332_pos) = rx332_cur."from"()
    inc rx332_pos
    rx332_cur."!cursor_from"(rx332_pos)
    ge rx332_pos, rx332_eos, rxscan333_done
  rxscan333_scan:
    set_addr $I10, rxscan333_loop
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxscan333_done:
.annotate 'line', 110
  # rx subrule "mod_internal" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."mod_internal"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx332_pos = $P10."pos"()
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "metachar:sym<mod>")
    if_null rx332_debug, debug_432
    rx332_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx332_pos)
  debug_432:
    .return (rx332_cur)
  rx332_restart:
.annotate 'line', 9
    if_null rx332_debug, debug_433
    rx332_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_433:
  rx332_fail:
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    if_null rx332_debug, debug_434
    rx332_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_434:
    .return (rx332_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("93_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P335 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P336, "ResizablePMCArray"
    push $P336, $P335
    .return ($P336)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("94_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx338_tgt
    .local int rx338_pos
    .local int rx338_off
    .local int rx338_eos
    .local int rx338_rep
    .local pmc rx338_cur
    .local pmc rx338_debug
    (rx338_cur, rx338_pos, rx338_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx338_cur
    .local pmc match
    .lex "$/", match
    length rx338_eos, rx338_tgt
    gt rx338_pos, rx338_eos, rx338_done
    set rx338_off, 0
    lt rx338_pos, 2, rx338_start
    sub rx338_off, rx338_pos, 1
    substr rx338_tgt, rx338_tgt, rx338_off
  rx338_start:
    eq $I10, 1, rx338_restart
    if_null rx338_debug, debug_435
    rx338_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_435:
    $I10 = self.'from'()
    ne $I10, -1, rxscan339_done
    goto rxscan339_scan
  rxscan339_loop:
    (rx338_pos) = rx338_cur."from"()
    inc rx338_pos
    rx338_cur."!cursor_from"(rx338_pos)
    ge rx338_pos, rx338_eos, rxscan339_done
  rxscan339_scan:
    set_addr $I10, rxscan339_loop
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxscan339_done:
.annotate 'line', 112
  # rx subrule "quantifier" subtype=capture negate=
    rx338_cur."!cursor_pos"(rx338_pos)
    $P10 = rx338_cur."quantifier"()
    unless $P10, rx338_fail
    rx338_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx338_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx338_cur."!cursor_pos"(rx338_pos)
    $P10 = rx338_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx338_fail
    rx338_pos = $P10."pos"()
.annotate 'line', 111
  # rx pass
    rx338_cur."!cursor_pass"(rx338_pos, "metachar:sym<quantifier>")
    if_null rx338_debug, debug_436
    rx338_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx338_pos)
  debug_436:
    .return (rx338_cur)
  rx338_restart:
.annotate 'line', 9
    if_null rx338_debug, debug_437
    rx338_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_437:
  rx338_fail:
    (rx338_rep, rx338_pos, $I10, $P10) = rx338_cur."!mark_fail"(0)
    lt rx338_pos, -1, rx338_done
    eq rx338_pos, -1, rx338_fail
    jump $I10
  rx338_done:
    rx338_cur."!cursor_fail"()
    if_null rx338_debug, debug_438
    rx338_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_438:
    .return (rx338_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :subid("95_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P341 = self."!PREFIX__!subrule"("quantifier", "")
    new $P342, "ResizablePMCArray"
    push $P342, $P341
    .return ($P342)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("96_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    .local pmc rx344_debug
    (rx344_cur, rx344_pos, rx344_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx344_cur
    .local pmc match
    .lex "$/", match
    length rx344_eos, rx344_tgt
    gt rx344_pos, rx344_eos, rx344_done
    set rx344_off, 0
    lt rx344_pos, 2, rx344_start
    sub rx344_off, rx344_pos, 1
    substr rx344_tgt, rx344_tgt, rx344_off
  rx344_start:
    eq $I10, 1, rx344_restart
    if_null rx344_debug, debug_439
    rx344_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    (rx344_pos) = rx344_cur."from"()
    inc rx344_pos
    rx344_cur."!cursor_from"(rx344_pos)
    ge rx344_pos, rx344_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  rxscan345_done:
.annotate 'line', 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_346_fail
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  # rx literal  "~"
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail
    sub $I11, rx344_pos, rx344_off
    ord $I11, rx344_tgt, $I11
    ne $I11, 126, rx344_fail
    add rx344_pos, 1
    set_addr $I10, rxcap_346_fail
    ($I12, $I11) = rx344_cur."!mark_peek"($I10)
    rx344_cur."!cursor_pos"($I11)
    ($P10) = rx344_cur."!cursor_start"()
    $P10."!cursor_pass"(rx344_pos, "")
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_346_done
  rxcap_346_fail:
    goto rx344_fail
  rxcap_346_done:
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."ws"()
    unless $P10, rx344_fail
    rx344_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."quantified_atom"()
    unless $P10, rx344_fail
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx344_pos = $P10."pos"()
.annotate 'line', 119
  # rx subrule "ws" subtype=method negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."ws"()
    unless $P10, rx344_fail
    rx344_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."quantified_atom"()
    unless $P10, rx344_fail
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx344_pos = $P10."pos"()
.annotate 'line', 116
  # rx pass
    rx344_cur."!cursor_pass"(rx344_pos, "metachar:sym<~>")
    if_null rx344_debug, debug_440
    rx344_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx344_pos)
  debug_440:
    .return (rx344_cur)
  rx344_restart:
.annotate 'line', 9
    if_null rx344_debug, debug_441
    rx344_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_441:
  rx344_fail:
    (rx344_rep, rx344_pos, $I10, $P10) = rx344_cur."!mark_fail"(0)
    lt rx344_pos, -1, rx344_done
    eq rx344_pos, -1, rx344_fail
    jump $I10
  rx344_done:
    rx344_cur."!cursor_fail"()
    if_null rx344_debug, debug_442
    rx344_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_442:
    .return (rx344_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("97_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P348 = self."!PREFIX__!subrule"("ws", "~")
    new $P349, "ResizablePMCArray"
    push $P349, $P348
    .return ($P349)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("98_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    .local pmc rx351_debug
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    rx351_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx351_cur
    .local pmc match
    .lex "$/", match
    length rx351_eos, rx351_tgt
    gt rx351_pos, rx351_eos, rx351_done
    set rx351_off, 0
    lt rx351_pos, 2, rx351_start
    sub rx351_off, rx351_pos, 1
    substr rx351_tgt, rx351_tgt, rx351_off
  rx351_start:
    eq $I10, 1, rx351_restart
    if_null rx351_debug, debug_443
    rx351_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_443:
    $I10 = self.'from'()
    ne $I10, -1, rxscan352_done
    goto rxscan352_scan
  rxscan352_loop:
    (rx351_pos) = rx351_cur."from"()
    inc rx351_pos
    rx351_cur."!cursor_from"(rx351_pos)
    ge rx351_pos, rx351_eos, rxscan352_done
  rxscan352_scan:
    set_addr $I10, rxscan352_loop
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxscan352_done:
.annotate 'line', 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_353_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx351_pos, 3
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 3
    ne $S10, "{*}", rx351_fail
    add rx351_pos, 3
    set_addr $I10, rxcap_353_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_353_done
  rxcap_353_fail:
    goto rx351_fail
  rxcap_353_done:
.annotate 'line', 124
  # rx rxquantr354 ** 0..1
    set_addr $I10, rxquantr354_done
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxquantr354_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx351_pos, rx351_off
    set rx351_rep, 0
    sub $I12, rx351_eos, rx351_pos
  rxenumcharlistq355_loop:
    le $I12, 0, rxenumcharlistq355_done
    substr $S10, rx351_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq355_done
    inc rx351_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq355_loop
  rxenumcharlistq355_done:
    add rx351_pos, rx351_pos, rx351_rep
  # rx literal  "#= "
    add $I11, rx351_pos, 3
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 3
    ne $S10, "#= ", rx351_fail
    add rx351_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx351_pos, rx351_off
    set rx351_rep, 0
    sub $I12, rx351_eos, rx351_pos
  rxenumcharlistq356_loop:
    le $I12, 0, rxenumcharlistq356_done
    substr $S10, rx351_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq356_done
    inc rx351_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq356_loop
  rxenumcharlistq356_done:
    add rx351_pos, rx351_pos, rx351_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_359_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx351_pos, rx351_off
    find_cclass $I11, .CCLASS_WHITESPACE, rx351_tgt, $I10, rx351_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx351_fail
    add rx351_pos, rx351_off, $I11
  # rx rxquantr357 ** 0..*
    set_addr $I10, rxquantr357_done
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxquantr357_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx351_pos, rx351_off
    set rx351_rep, 0
    sub $I12, rx351_eos, rx351_pos
  rxenumcharlistq358_loop:
    le $I12, 0, rxenumcharlistq358_done
    substr $S10, rx351_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq358_done
    inc rx351_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq358_loop
  rxenumcharlistq358_done:
    lt rx351_rep, 1, rx351_fail
    add rx351_pos, rx351_pos, rx351_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx351_pos, rx351_off
    find_cclass $I11, .CCLASS_WHITESPACE, rx351_tgt, $I10, rx351_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx351_fail
    add rx351_pos, rx351_off, $I11
    set_addr $I10, rxquantr357_done
    (rx351_rep) = rx351_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr357_done
    rx351_cur."!mark_push"(rx351_rep, rx351_pos, $I10)
    goto rxquantr357_loop
  rxquantr357_done:
    set_addr $I10, rxcap_359_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_359_done
  rxcap_359_fail:
    goto rx351_fail
  rxcap_359_done:
    set_addr $I10, rxquantr354_done
    (rx351_rep) = rx351_cur."!mark_commit"($I10)
  rxquantr354_done:
.annotate 'line', 122
  # rx pass
    rx351_cur."!cursor_pass"(rx351_pos, "metachar:sym<{*}>")
    if_null rx351_debug, debug_444
    rx351_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx351_pos)
  debug_444:
    .return (rx351_cur)
  rx351_restart:
.annotate 'line', 9
    if_null rx351_debug, debug_445
    rx351_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_445:
  rx351_fail:
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    if_null rx351_debug, debug_446
    rx351_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_446:
    .return (rx351_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("99_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P361, "ResizablePMCArray"
    push $P361, "{*}"
    .return ($P361)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("100_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx363_tgt
    .local int rx363_pos
    .local int rx363_off
    .local int rx363_eos
    .local int rx363_rep
    .local pmc rx363_cur
    .local pmc rx363_debug
    (rx363_cur, rx363_pos, rx363_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx363_cur
    .local pmc match
    .lex "$/", match
    length rx363_eos, rx363_tgt
    gt rx363_pos, rx363_eos, rx363_done
    set rx363_off, 0
    lt rx363_pos, 2, rx363_start
    sub rx363_off, rx363_pos, 1
    substr rx363_tgt, rx363_tgt, rx363_off
  rx363_start:
    eq $I10, 1, rx363_restart
    if_null rx363_debug, debug_447
    rx363_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan364_done
    goto rxscan364_scan
  rxscan364_loop:
    (rx363_pos) = rx363_cur."from"()
    inc rx363_pos
    rx363_cur."!cursor_from"(rx363_pos)
    ge rx363_pos, rx363_eos, rxscan364_done
  rxscan364_scan:
    set_addr $I10, rxscan364_loop
    rx363_cur."!mark_push"(0, rx363_pos, $I10)
  rxscan364_done:
.annotate 'line', 127
  # rx literal  "<"
    add $I11, rx363_pos, 1
    gt $I11, rx363_eos, rx363_fail
    sub $I11, rx363_pos, rx363_off
    ord $I11, rx363_tgt, $I11
    ne $I11, 60, rx363_fail
    add rx363_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."assertion"()
    unless $P10, rx363_fail
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx363_pos = $P10."pos"()
  alt365_0:
.annotate 'line', 128
    set_addr $I10, alt365_1
    rx363_cur."!mark_push"(0, rx363_pos, $I10)
  # rx literal  ">"
    add $I11, rx363_pos, 1
    gt $I11, rx363_eos, rx363_fail
    sub $I11, rx363_pos, rx363_off
    ord $I11, rx363_tgt, $I11
    ne $I11, 62, rx363_fail
    add rx363_pos, 1
    goto alt365_end
  alt365_1:
  # rx subrule "panic" subtype=method negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx363_fail
    rx363_pos = $P10."pos"()
  alt365_end:
.annotate 'line', 126
  # rx pass
    rx363_cur."!cursor_pass"(rx363_pos, "metachar:sym<assert>")
    if_null rx363_debug, debug_448
    rx363_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx363_pos)
  debug_448:
    .return (rx363_cur)
  rx363_restart:
.annotate 'line', 9
    if_null rx363_debug, debug_449
    rx363_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_449:
  rx363_fail:
    (rx363_rep, rx363_pos, $I10, $P10) = rx363_cur."!mark_fail"(0)
    lt rx363_pos, -1, rx363_done
    eq rx363_pos, -1, rx363_fail
    jump $I10
  rx363_done:
    rx363_cur."!cursor_fail"()
    if_null rx363_debug, debug_450
    rx363_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_450:
    .return (rx363_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("101_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P367 = self."!PREFIX__!subrule"("assertion", "<")
    new $P368, "ResizablePMCArray"
    push $P368, $P367
    .return ($P368)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("102_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    .local pmc rx370_debug
    (rx370_cur, rx370_pos, rx370_tgt, $I10) = self."!cursor_start"()
    rx370_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx370_cur
    .local pmc match
    .lex "$/", match
    length rx370_eos, rx370_tgt
    gt rx370_pos, rx370_eos, rx370_done
    set rx370_off, 0
    lt rx370_pos, 2, rx370_start
    sub rx370_off, rx370_pos, 1
    substr rx370_tgt, rx370_tgt, rx370_off
  rx370_start:
    eq $I10, 1, rx370_restart
    if_null rx370_debug, debug_451
    rx370_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_451:
    $I10 = self.'from'()
    ne $I10, -1, rxscan371_done
    goto rxscan371_scan
  rxscan371_loop:
    (rx370_pos) = rx370_cur."from"()
    inc rx370_pos
    rx370_cur."!cursor_from"(rx370_pos)
    ge rx370_pos, rx370_eos, rxscan371_done
  rxscan371_scan:
    set_addr $I10, rxscan371_loop
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  rxscan371_done:
  alt372_0:
.annotate 'line', 132
    set_addr $I10, alt372_1
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
.annotate 'line', 133
  # rx literal  "$<"
    add $I11, rx370_pos, 2
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 2
    ne $S10, "$<", rx370_fail
    add rx370_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_374_fail
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx370_pos, rx370_off
    set rx370_rep, 0
    sub $I12, rx370_eos, rx370_pos
  rxenumcharlistq373_loop:
    le $I12, 0, rxenumcharlistq373_done
    substr $S10, rx370_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq373_done
    inc rx370_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq373_loop
  rxenumcharlistq373_done:
    lt rx370_rep, 1, rx370_fail
    add rx370_pos, rx370_pos, rx370_rep
    set_addr $I10, rxcap_374_fail
    ($I12, $I11) = rx370_cur."!mark_peek"($I10)
    rx370_cur."!cursor_pos"($I11)
    ($P10) = rx370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx370_pos, "")
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_374_done
  rxcap_374_fail:
    goto rx370_fail
  rxcap_374_done:
  # rx literal  ">"
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    ord $I11, rx370_tgt, $I11
    ne $I11, 62, rx370_fail
    add rx370_pos, 1
    goto alt372_end
  alt372_1:
.annotate 'line', 134
  # rx literal  "$"
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    ord $I11, rx370_tgt, $I11
    ne $I11, 36, rx370_fail
    add rx370_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_375_fail
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx370_pos, rx370_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx370_tgt, $I10, rx370_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx370_fail
    add rx370_pos, rx370_off, $I11
    set_addr $I10, rxcap_375_fail
    ($I12, $I11) = rx370_cur."!mark_peek"($I10)
    rx370_cur."!cursor_pos"($I11)
    ($P10) = rx370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx370_pos, "")
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_375_done
  rxcap_375_fail:
    goto rx370_fail
  rxcap_375_done:
  alt372_end:
.annotate 'line', 137
  # rx rxquantr376 ** 0..1
    set_addr $I10, rxquantr376_done
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  rxquantr376_loop:
  # rx subrule "ws" subtype=method negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."ws"()
    unless $P10, rx370_fail
    rx370_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    ord $I11, rx370_tgt, $I11
    ne $I11, 61, rx370_fail
    add rx370_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."ws"()
    unless $P10, rx370_fail
    rx370_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."quantified_atom"()
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx370_pos = $P10."pos"()
    set_addr $I10, rxquantr376_done
    (rx370_rep) = rx370_cur."!mark_commit"($I10)
  rxquantr376_done:
.annotate 'line', 131
  # rx pass
    rx370_cur."!cursor_pass"(rx370_pos, "metachar:sym<var>")
    if_null rx370_debug, debug_452
    rx370_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx370_pos)
  debug_452:
    .return (rx370_cur)
  rx370_restart:
.annotate 'line', 9
    if_null rx370_debug, debug_453
    rx370_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_453:
  rx370_fail:
    (rx370_rep, rx370_pos, $I10, $P10) = rx370_cur."!mark_fail"(0)
    lt rx370_pos, -1, rx370_done
    eq rx370_pos, -1, rx370_fail
    jump $I10
  rx370_done:
    rx370_cur."!cursor_fail"()
    if_null rx370_debug, debug_454
    rx370_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_454:
    .return (rx370_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("103_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P378, "ResizablePMCArray"
    push $P378, "$"
    push $P378, "$<"
    .return ($P378)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("104_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    .local pmc rx380_debug
    (rx380_cur, rx380_pos, rx380_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx380_cur
    .local pmc match
    .lex "$/", match
    length rx380_eos, rx380_tgt
    gt rx380_pos, rx380_eos, rx380_done
    set rx380_off, 0
    lt rx380_pos, 2, rx380_start
    sub rx380_off, rx380_pos, 1
    substr rx380_tgt, rx380_tgt, rx380_off
  rx380_start:
    eq $I10, 1, rx380_restart
    if_null rx380_debug, debug_455
    rx380_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_455:
    $I10 = self.'from'()
    ne $I10, -1, rxscan381_done
    goto rxscan381_scan
  rxscan381_loop:
    (rx380_pos) = rx380_cur."from"()
    inc rx380_pos
    rx380_cur."!cursor_from"(rx380_pos)
    ge rx380_pos, rx380_eos, rxscan381_done
  rxscan381_scan:
    set_addr $I10, rxscan381_loop
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  rxscan381_done:
.annotate 'line', 141
  # rx literal  ":PIR{{"
    add $I11, rx380_pos, 6
    gt $I11, rx380_eos, rx380_fail
    sub $I11, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I11, 6
    ne $S10, ":PIR{{", rx380_fail
    add rx380_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_384_fail
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  # rx rxquantf382 ** 0..*
    set_addr $I10, rxquantf382_loop
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
    goto rxquantf382_done
  rxquantf382_loop:
  # rx charclass .
    ge rx380_pos, rx380_eos, rx380_fail
    inc rx380_pos
    set_addr $I10, rxquantf382_loop
    rx380_cur."!mark_push"(rx380_rep, rx380_pos, $I10)
  rxquantf382_done:
    set_addr $I10, rxcap_384_fail
    ($I12, $I11) = rx380_cur."!mark_peek"($I10)
    rx380_cur."!cursor_pos"($I11)
    ($P10) = rx380_cur."!cursor_start"()
    $P10."!cursor_pass"(rx380_pos, "")
    rx380_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_384_done
  rxcap_384_fail:
    goto rx380_fail
  rxcap_384_done:
  # rx literal  "}}"
    add $I11, rx380_pos, 2
    gt $I11, rx380_eos, rx380_fail
    sub $I11, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I11, 2
    ne $S10, "}}", rx380_fail
    add rx380_pos, 2
.annotate 'line', 140
  # rx pass
    rx380_cur."!cursor_pass"(rx380_pos, "metachar:sym<PIR>")
    if_null rx380_debug, debug_456
    rx380_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx380_pos)
  debug_456:
    .return (rx380_cur)
  rx380_restart:
.annotate 'line', 9
    if_null rx380_debug, debug_457
    rx380_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_457:
  rx380_fail:
    (rx380_rep, rx380_pos, $I10, $P10) = rx380_cur."!mark_fail"(0)
    lt rx380_pos, -1, rx380_done
    eq rx380_pos, -1, rx380_fail
    jump $I10
  rx380_done:
    rx380_cur."!cursor_fail"()
    if_null rx380_debug, debug_458
    rx380_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_458:
    .return (rx380_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("105_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P386, "ResizablePMCArray"
    push $P386, ":PIR{{"
    .return ($P386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("106_1307873292.23355")
    .param pmc param_388
.annotate 'line', 144
    .lex "self", param_388
    $P389 = param_388."!protoregex"("backslash")
    .return ($P389)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("107_1307873292.23355")
    .param pmc param_391
.annotate 'line', 144
    .lex "self", param_391
    $P392 = param_391."!PREFIX__!protoregex"("backslash")
    .return ($P392)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("108_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx394_tgt
    .local int rx394_pos
    .local int rx394_off
    .local int rx394_eos
    .local int rx394_rep
    .local pmc rx394_cur
    .local pmc rx394_debug
    (rx394_cur, rx394_pos, rx394_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx394_cur
    .local pmc match
    .lex "$/", match
    length rx394_eos, rx394_tgt
    gt rx394_pos, rx394_eos, rx394_done
    set rx394_off, 0
    lt rx394_pos, 2, rx394_start
    sub rx394_off, rx394_pos, 1
    substr rx394_tgt, rx394_tgt, rx394_off
  rx394_start:
    eq $I10, 1, rx394_restart
    if_null rx394_debug, debug_459
    rx394_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan395_done
    goto rxscan395_scan
  rxscan395_loop:
    (rx394_pos) = rx394_cur."from"()
    inc rx394_pos
    rx394_cur."!cursor_from"(rx394_pos)
    ge rx394_pos, rx394_eos, rxscan395_done
  rxscan395_scan:
    set_addr $I10, rxscan395_loop
    rx394_cur."!mark_push"(0, rx394_pos, $I10)
  rxscan395_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_396_fail
    rx394_cur."!mark_push"(0, rx394_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx394_pos, rx394_eos, rx394_fail
    sub $I10, rx394_pos, rx394_off
    substr $S10, rx394_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx394_fail
    inc rx394_pos
    set_addr $I10, rxcap_396_fail
    ($I12, $I11) = rx394_cur."!mark_peek"($I10)
    rx394_cur."!cursor_pos"($I11)
    ($P10) = rx394_cur."!cursor_start"()
    $P10."!cursor_pass"(rx394_pos, "")
    rx394_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_396_done
  rxcap_396_fail:
    goto rx394_fail
  rxcap_396_done:
  # rx pass
    rx394_cur."!cursor_pass"(rx394_pos, "backslash:sym<w>")
    if_null rx394_debug, debug_460
    rx394_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx394_pos)
  debug_460:
    .return (rx394_cur)
  rx394_restart:
.annotate 'line', 9
    if_null rx394_debug, debug_461
    rx394_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_461:
  rx394_fail:
    (rx394_rep, rx394_pos, $I10, $P10) = rx394_cur."!mark_fail"(0)
    lt rx394_pos, -1, rx394_done
    eq rx394_pos, -1, rx394_fail
    jump $I10
  rx394_done:
    rx394_cur."!cursor_fail"()
    if_null rx394_debug, debug_462
    rx394_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_462:
    .return (rx394_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("109_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P398, "ResizablePMCArray"
    push $P398, "d"
    push $P398, "s"
    push $P398, "w"
    push $P398, "n"
    push $P398, "D"
    push $P398, "S"
    push $P398, "W"
    push $P398, "N"
    .return ($P398)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("110_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    .local pmc rx400_debug
    (rx400_cur, rx400_pos, rx400_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx400_cur
    .local pmc match
    .lex "$/", match
    length rx400_eos, rx400_tgt
    gt rx400_pos, rx400_eos, rx400_done
    set rx400_off, 0
    lt rx400_pos, 2, rx400_start
    sub rx400_off, rx400_pos, 1
    substr rx400_tgt, rx400_tgt, rx400_off
  rx400_start:
    eq $I10, 1, rx400_restart
    if_null rx400_debug, debug_463
    rx400_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_463:
    $I10 = self.'from'()
    ne $I10, -1, rxscan401_done
    goto rxscan401_scan
  rxscan401_loop:
    (rx400_pos) = rx400_cur."from"()
    inc rx400_pos
    rx400_cur."!cursor_from"(rx400_pos)
    ge rx400_pos, rx400_eos, rxscan401_done
  rxscan401_scan:
    set_addr $I10, rxscan401_loop
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  rxscan401_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_402_fail
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx400_pos, rx400_eos, rx400_fail
    sub $I10, rx400_pos, rx400_off
    substr $S10, rx400_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx400_fail
    inc rx400_pos
    set_addr $I10, rxcap_402_fail
    ($I12, $I11) = rx400_cur."!mark_peek"($I10)
    rx400_cur."!cursor_pos"($I11)
    ($P10) = rx400_cur."!cursor_start"()
    $P10."!cursor_pass"(rx400_pos, "")
    rx400_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_402_done
  rxcap_402_fail:
    goto rx400_fail
  rxcap_402_done:
  # rx pass
    rx400_cur."!cursor_pass"(rx400_pos, "backslash:sym<b>")
    if_null rx400_debug, debug_464
    rx400_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx400_pos)
  debug_464:
    .return (rx400_cur)
  rx400_restart:
.annotate 'line', 9
    if_null rx400_debug, debug_465
    rx400_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_465:
  rx400_fail:
    (rx400_rep, rx400_pos, $I10, $P10) = rx400_cur."!mark_fail"(0)
    lt rx400_pos, -1, rx400_done
    eq rx400_pos, -1, rx400_fail
    jump $I10
  rx400_done:
    rx400_cur."!cursor_fail"()
    if_null rx400_debug, debug_466
    rx400_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_466:
    .return (rx400_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("111_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P404, "ResizablePMCArray"
    push $P404, "b"
    push $P404, "B"
    .return ($P404)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("112_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    .local pmc rx406_debug
    (rx406_cur, rx406_pos, rx406_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx406_cur
    .local pmc match
    .lex "$/", match
    length rx406_eos, rx406_tgt
    gt rx406_pos, rx406_eos, rx406_done
    set rx406_off, 0
    lt rx406_pos, 2, rx406_start
    sub rx406_off, rx406_pos, 1
    substr rx406_tgt, rx406_tgt, rx406_off
  rx406_start:
    eq $I10, 1, rx406_restart
    if_null rx406_debug, debug_467
    rx406_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan407_done
    goto rxscan407_scan
  rxscan407_loop:
    (rx406_pos) = rx406_cur."from"()
    inc rx406_pos
    rx406_cur."!cursor_from"(rx406_pos)
    ge rx406_pos, rx406_eos, rxscan407_done
  rxscan407_scan:
    set_addr $I10, rxscan407_loop
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  rxscan407_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_408_fail
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx406_fail
    inc rx406_pos
    set_addr $I10, rxcap_408_fail
    ($I12, $I11) = rx406_cur."!mark_peek"($I10)
    rx406_cur."!cursor_pos"($I11)
    ($P10) = rx406_cur."!cursor_start"()
    $P10."!cursor_pass"(rx406_pos, "")
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_408_done
  rxcap_408_fail:
    goto rx406_fail
  rxcap_408_done:
  # rx pass
    rx406_cur."!cursor_pass"(rx406_pos, "backslash:sym<e>")
    if_null rx406_debug, debug_468
    rx406_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx406_pos)
  debug_468:
    .return (rx406_cur)
  rx406_restart:
.annotate 'line', 9
    if_null rx406_debug, debug_469
    rx406_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_469:
  rx406_fail:
    (rx406_rep, rx406_pos, $I10, $P10) = rx406_cur."!mark_fail"(0)
    lt rx406_pos, -1, rx406_done
    eq rx406_pos, -1, rx406_fail
    jump $I10
  rx406_done:
    rx406_cur."!cursor_fail"()
    if_null rx406_debug, debug_470
    rx406_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_470:
    .return (rx406_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("113_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P410, "ResizablePMCArray"
    push $P410, "e"
    push $P410, "E"
    .return ($P410)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("114_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx412_tgt
    .local int rx412_pos
    .local int rx412_off
    .local int rx412_eos
    .local int rx412_rep
    .local pmc rx412_cur
    .local pmc rx412_debug
    (rx412_cur, rx412_pos, rx412_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx412_cur
    .local pmc match
    .lex "$/", match
    length rx412_eos, rx412_tgt
    gt rx412_pos, rx412_eos, rx412_done
    set rx412_off, 0
    lt rx412_pos, 2, rx412_start
    sub rx412_off, rx412_pos, 1
    substr rx412_tgt, rx412_tgt, rx412_off
  rx412_start:
    eq $I10, 1, rx412_restart
    if_null rx412_debug, debug_471
    rx412_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_471:
    $I10 = self.'from'()
    ne $I10, -1, rxscan413_done
    goto rxscan413_scan
  rxscan413_loop:
    (rx412_pos) = rx412_cur."from"()
    inc rx412_pos
    rx412_cur."!cursor_from"(rx412_pos)
    ge rx412_pos, rx412_eos, rxscan413_done
  rxscan413_scan:
    set_addr $I10, rxscan413_loop
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  rxscan413_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_414_fail
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx412_pos, rx412_eos, rx412_fail
    sub $I10, rx412_pos, rx412_off
    substr $S10, rx412_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx412_fail
    inc rx412_pos
    set_addr $I10, rxcap_414_fail
    ($I12, $I11) = rx412_cur."!mark_peek"($I10)
    rx412_cur."!cursor_pos"($I11)
    ($P10) = rx412_cur."!cursor_start"()
    $P10."!cursor_pass"(rx412_pos, "")
    rx412_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_414_done
  rxcap_414_fail:
    goto rx412_fail
  rxcap_414_done:
  # rx pass
    rx412_cur."!cursor_pass"(rx412_pos, "backslash:sym<f>")
    if_null rx412_debug, debug_472
    rx412_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx412_pos)
  debug_472:
    .return (rx412_cur)
  rx412_restart:
.annotate 'line', 9
    if_null rx412_debug, debug_473
    rx412_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_473:
  rx412_fail:
    (rx412_rep, rx412_pos, $I10, $P10) = rx412_cur."!mark_fail"(0)
    lt rx412_pos, -1, rx412_done
    eq rx412_pos, -1, rx412_fail
    jump $I10
  rx412_done:
    rx412_cur."!cursor_fail"()
    if_null rx412_debug, debug_474
    rx412_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_474:
    .return (rx412_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("115_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P416, "ResizablePMCArray"
    push $P416, "f"
    push $P416, "F"
    .return ($P416)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("116_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx418_tgt
    .local int rx418_pos
    .local int rx418_off
    .local int rx418_eos
    .local int rx418_rep
    .local pmc rx418_cur
    .local pmc rx418_debug
    (rx418_cur, rx418_pos, rx418_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx418_cur
    .local pmc match
    .lex "$/", match
    length rx418_eos, rx418_tgt
    gt rx418_pos, rx418_eos, rx418_done
    set rx418_off, 0
    lt rx418_pos, 2, rx418_start
    sub rx418_off, rx418_pos, 1
    substr rx418_tgt, rx418_tgt, rx418_off
  rx418_start:
    eq $I10, 1, rx418_restart
    if_null rx418_debug, debug_475
    rx418_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_475:
    $I10 = self.'from'()
    ne $I10, -1, rxscan419_done
    goto rxscan419_scan
  rxscan419_loop:
    (rx418_pos) = rx418_cur."from"()
    inc rx418_pos
    rx418_cur."!cursor_from"(rx418_pos)
    ge rx418_pos, rx418_eos, rxscan419_done
  rxscan419_scan:
    set_addr $I10, rxscan419_loop
    rx418_cur."!mark_push"(0, rx418_pos, $I10)
  rxscan419_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_420_fail
    rx418_cur."!mark_push"(0, rx418_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx418_pos, rx418_eos, rx418_fail
    sub $I10, rx418_pos, rx418_off
    substr $S10, rx418_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx418_fail
    inc rx418_pos
    set_addr $I10, rxcap_420_fail
    ($I12, $I11) = rx418_cur."!mark_peek"($I10)
    rx418_cur."!cursor_pos"($I11)
    ($P10) = rx418_cur."!cursor_start"()
    $P10."!cursor_pass"(rx418_pos, "")
    rx418_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_420_done
  rxcap_420_fail:
    goto rx418_fail
  rxcap_420_done:
  # rx pass
    rx418_cur."!cursor_pass"(rx418_pos, "backslash:sym<h>")
    if_null rx418_debug, debug_476
    rx418_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx418_pos)
  debug_476:
    .return (rx418_cur)
  rx418_restart:
.annotate 'line', 9
    if_null rx418_debug, debug_477
    rx418_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_477:
  rx418_fail:
    (rx418_rep, rx418_pos, $I10, $P10) = rx418_cur."!mark_fail"(0)
    lt rx418_pos, -1, rx418_done
    eq rx418_pos, -1, rx418_fail
    jump $I10
  rx418_done:
    rx418_cur."!cursor_fail"()
    if_null rx418_debug, debug_478
    rx418_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_478:
    .return (rx418_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("117_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P422, "ResizablePMCArray"
    push $P422, "h"
    push $P422, "H"
    .return ($P422)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("118_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx424_tgt
    .local int rx424_pos
    .local int rx424_off
    .local int rx424_eos
    .local int rx424_rep
    .local pmc rx424_cur
    .local pmc rx424_debug
    (rx424_cur, rx424_pos, rx424_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx424_cur
    .local pmc match
    .lex "$/", match
    length rx424_eos, rx424_tgt
    gt rx424_pos, rx424_eos, rx424_done
    set rx424_off, 0
    lt rx424_pos, 2, rx424_start
    sub rx424_off, rx424_pos, 1
    substr rx424_tgt, rx424_tgt, rx424_off
  rx424_start:
    eq $I10, 1, rx424_restart
    if_null rx424_debug, debug_479
    rx424_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_479:
    $I10 = self.'from'()
    ne $I10, -1, rxscan425_done
    goto rxscan425_scan
  rxscan425_loop:
    (rx424_pos) = rx424_cur."from"()
    inc rx424_pos
    rx424_cur."!cursor_from"(rx424_pos)
    ge rx424_pos, rx424_eos, rxscan425_done
  rxscan425_scan:
    set_addr $I10, rxscan425_loop
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  rxscan425_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_426_fail
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx424_pos, rx424_eos, rx424_fail
    sub $I10, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx424_fail
    inc rx424_pos
    set_addr $I10, rxcap_426_fail
    ($I12, $I11) = rx424_cur."!mark_peek"($I10)
    rx424_cur."!cursor_pos"($I11)
    ($P10) = rx424_cur."!cursor_start"()
    $P10."!cursor_pass"(rx424_pos, "")
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_426_done
  rxcap_426_fail:
    goto rx424_fail
  rxcap_426_done:
  # rx pass
    rx424_cur."!cursor_pass"(rx424_pos, "backslash:sym<r>")
    if_null rx424_debug, debug_480
    rx424_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx424_pos)
  debug_480:
    .return (rx424_cur)
  rx424_restart:
.annotate 'line', 9
    if_null rx424_debug, debug_481
    rx424_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_481:
  rx424_fail:
    (rx424_rep, rx424_pos, $I10, $P10) = rx424_cur."!mark_fail"(0)
    lt rx424_pos, -1, rx424_done
    eq rx424_pos, -1, rx424_fail
    jump $I10
  rx424_done:
    rx424_cur."!cursor_fail"()
    if_null rx424_debug, debug_482
    rx424_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_482:
    .return (rx424_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("119_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P428, "ResizablePMCArray"
    push $P428, "r"
    push $P428, "R"
    .return ($P428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("120_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx430_cur
    .local pmc match
    .lex "$/", match
    length rx430_eos, rx430_tgt
    gt rx430_pos, rx430_eos, rx430_done
    set rx430_off, 0
    lt rx430_pos, 2, rx430_start
    sub rx430_off, rx430_pos, 1
    substr rx430_tgt, rx430_tgt, rx430_off
  rx430_start:
    eq $I10, 1, rx430_restart
    if_null rx430_debug, debug_483
    rx430_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_483:
    $I10 = self.'from'()
    ne $I10, -1, rxscan431_done
    goto rxscan431_scan
  rxscan431_loop:
    (rx430_pos) = rx430_cur."from"()
    inc rx430_pos
    rx430_cur."!cursor_from"(rx430_pos)
    ge rx430_pos, rx430_eos, rxscan431_done
  rxscan431_scan:
    set_addr $I10, rxscan431_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan431_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_432_fail
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx430_pos, rx430_eos, rx430_fail
    sub $I10, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx430_fail
    inc rx430_pos
    set_addr $I10, rxcap_432_fail
    ($I12, $I11) = rx430_cur."!mark_peek"($I10)
    rx430_cur."!cursor_pos"($I11)
    ($P10) = rx430_cur."!cursor_start"()
    $P10."!cursor_pass"(rx430_pos, "")
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_432_done
  rxcap_432_fail:
    goto rx430_fail
  rxcap_432_done:
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "backslash:sym<t>")
    if_null rx430_debug, debug_484
    rx430_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx430_pos)
  debug_484:
    .return (rx430_cur)
  rx430_restart:
.annotate 'line', 9
    if_null rx430_debug, debug_485
    rx430_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_485:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_486
    rx430_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_486:
    .return (rx430_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("121_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P434, "ResizablePMCArray"
    push $P434, "t"
    push $P434, "T"
    .return ($P434)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("122_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx436_tgt
    .local int rx436_pos
    .local int rx436_off
    .local int rx436_eos
    .local int rx436_rep
    .local pmc rx436_cur
    .local pmc rx436_debug
    (rx436_cur, rx436_pos, rx436_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx436_cur
    .local pmc match
    .lex "$/", match
    length rx436_eos, rx436_tgt
    gt rx436_pos, rx436_eos, rx436_done
    set rx436_off, 0
    lt rx436_pos, 2, rx436_start
    sub rx436_off, rx436_pos, 1
    substr rx436_tgt, rx436_tgt, rx436_off
  rx436_start:
    eq $I10, 1, rx436_restart
    if_null rx436_debug, debug_487
    rx436_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan437_done
    goto rxscan437_scan
  rxscan437_loop:
    (rx436_pos) = rx436_cur."from"()
    inc rx436_pos
    rx436_cur."!cursor_from"(rx436_pos)
    ge rx436_pos, rx436_eos, rxscan437_done
  rxscan437_scan:
    set_addr $I10, rxscan437_loop
    rx436_cur."!mark_push"(0, rx436_pos, $I10)
  rxscan437_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_438_fail
    rx436_cur."!mark_push"(0, rx436_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx436_pos, rx436_eos, rx436_fail
    sub $I10, rx436_pos, rx436_off
    substr $S10, rx436_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx436_fail
    inc rx436_pos
    set_addr $I10, rxcap_438_fail
    ($I12, $I11) = rx436_cur."!mark_peek"($I10)
    rx436_cur."!cursor_pos"($I11)
    ($P10) = rx436_cur."!cursor_start"()
    $P10."!cursor_pass"(rx436_pos, "")
    rx436_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_438_done
  rxcap_438_fail:
    goto rx436_fail
  rxcap_438_done:
  # rx pass
    rx436_cur."!cursor_pass"(rx436_pos, "backslash:sym<v>")
    if_null rx436_debug, debug_488
    rx436_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx436_pos)
  debug_488:
    .return (rx436_cur)
  rx436_restart:
.annotate 'line', 9
    if_null rx436_debug, debug_489
    rx436_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_489:
  rx436_fail:
    (rx436_rep, rx436_pos, $I10, $P10) = rx436_cur."!mark_fail"(0)
    lt rx436_pos, -1, rx436_done
    eq rx436_pos, -1, rx436_fail
    jump $I10
  rx436_done:
    rx436_cur."!cursor_fail"()
    if_null rx436_debug, debug_490
    rx436_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_490:
    .return (rx436_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("123_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P440, "ResizablePMCArray"
    push $P440, "v"
    push $P440, "V"
    .return ($P440)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("124_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    .local pmc rx442_debug
    (rx442_cur, rx442_pos, rx442_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx442_cur
    .local pmc match
    .lex "$/", match
    length rx442_eos, rx442_tgt
    gt rx442_pos, rx442_eos, rx442_done
    set rx442_off, 0
    lt rx442_pos, 2, rx442_start
    sub rx442_off, rx442_pos, 1
    substr rx442_tgt, rx442_tgt, rx442_off
  rx442_start:
    eq $I10, 1, rx442_restart
    if_null rx442_debug, debug_491
    rx442_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_491:
    $I10 = self.'from'()
    ne $I10, -1, rxscan443_done
    goto rxscan443_scan
  rxscan443_loop:
    (rx442_pos) = rx442_cur."from"()
    inc rx442_pos
    rx442_cur."!cursor_from"(rx442_pos)
    ge rx442_pos, rx442_eos, rxscan443_done
  rxscan443_scan:
    set_addr $I10, rxscan443_loop
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  rxscan443_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_444_fail
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx442_pos, rx442_eos, rx442_fail
    sub $I10, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx442_fail
    inc rx442_pos
    set_addr $I10, rxcap_444_fail
    ($I12, $I11) = rx442_cur."!mark_peek"($I10)
    rx442_cur."!cursor_pos"($I11)
    ($P10) = rx442_cur."!cursor_start"()
    $P10."!cursor_pass"(rx442_pos, "")
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_444_done
  rxcap_444_fail:
    goto rx442_fail
  rxcap_444_done:
  alt445_0:
    set_addr $I10, alt445_1
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."octint"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx442_pos = $P10."pos"()
    goto alt445_end
  alt445_1:
  # rx literal  "["
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    ord $I11, rx442_tgt, $I11
    ne $I11, 91, rx442_fail
    add rx442_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."octints"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx442_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    ord $I11, rx442_tgt, $I11
    ne $I11, 93, rx442_fail
    add rx442_pos, 1
  alt445_end:
  # rx pass
    rx442_cur."!cursor_pass"(rx442_pos, "backslash:sym<o>")
    if_null rx442_debug, debug_492
    rx442_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx442_pos)
  debug_492:
    .return (rx442_cur)
  rx442_restart:
.annotate 'line', 9
    if_null rx442_debug, debug_493
    rx442_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_493:
  rx442_fail:
    (rx442_rep, rx442_pos, $I10, $P10) = rx442_cur."!mark_fail"(0)
    lt rx442_pos, -1, rx442_done
    eq rx442_pos, -1, rx442_fail
    jump $I10
  rx442_done:
    rx442_cur."!cursor_fail"()
    if_null rx442_debug, debug_494
    rx442_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_494:
    .return (rx442_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("125_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P447 = self."!PREFIX__!subrule"("octints", "O[")
    $P448 = self."!PREFIX__!subrule"("octint", "O")
    $P449 = self."!PREFIX__!subrule"("octints", "o[")
    $P450 = self."!PREFIX__!subrule"("octint", "o")
    new $P451, "ResizablePMCArray"
    push $P451, $P447
    push $P451, $P448
    push $P451, $P449
    push $P451, $P450
    .return ($P451)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("126_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx453_tgt
    .local int rx453_pos
    .local int rx453_off
    .local int rx453_eos
    .local int rx453_rep
    .local pmc rx453_cur
    .local pmc rx453_debug
    (rx453_cur, rx453_pos, rx453_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx453_cur
    .local pmc match
    .lex "$/", match
    length rx453_eos, rx453_tgt
    gt rx453_pos, rx453_eos, rx453_done
    set rx453_off, 0
    lt rx453_pos, 2, rx453_start
    sub rx453_off, rx453_pos, 1
    substr rx453_tgt, rx453_tgt, rx453_off
  rx453_start:
    eq $I10, 1, rx453_restart
    if_null rx453_debug, debug_495
    rx453_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan454_done
    goto rxscan454_scan
  rxscan454_loop:
    (rx453_pos) = rx453_cur."from"()
    inc rx453_pos
    rx453_cur."!cursor_from"(rx453_pos)
    ge rx453_pos, rx453_eos, rxscan454_done
  rxscan454_scan:
    set_addr $I10, rxscan454_loop
    rx453_cur."!mark_push"(0, rx453_pos, $I10)
  rxscan454_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_455_fail
    rx453_cur."!mark_push"(0, rx453_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx453_pos, rx453_eos, rx453_fail
    sub $I10, rx453_pos, rx453_off
    substr $S10, rx453_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx453_fail
    inc rx453_pos
    set_addr $I10, rxcap_455_fail
    ($I12, $I11) = rx453_cur."!mark_peek"($I10)
    rx453_cur."!cursor_pos"($I11)
    ($P10) = rx453_cur."!cursor_start"()
    $P10."!cursor_pass"(rx453_pos, "")
    rx453_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_455_done
  rxcap_455_fail:
    goto rx453_fail
  rxcap_455_done:
  alt456_0:
    set_addr $I10, alt456_1
    rx453_cur."!mark_push"(0, rx453_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx453_cur."!cursor_pos"(rx453_pos)
    $P10 = rx453_cur."hexint"()
    unless $P10, rx453_fail
    rx453_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx453_pos = $P10."pos"()
    goto alt456_end
  alt456_1:
  # rx literal  "["
    add $I11, rx453_pos, 1
    gt $I11, rx453_eos, rx453_fail
    sub $I11, rx453_pos, rx453_off
    ord $I11, rx453_tgt, $I11
    ne $I11, 91, rx453_fail
    add rx453_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx453_cur."!cursor_pos"(rx453_pos)
    $P10 = rx453_cur."hexints"()
    unless $P10, rx453_fail
    rx453_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx453_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx453_pos, 1
    gt $I11, rx453_eos, rx453_fail
    sub $I11, rx453_pos, rx453_off
    ord $I11, rx453_tgt, $I11
    ne $I11, 93, rx453_fail
    add rx453_pos, 1
  alt456_end:
  # rx pass
    rx453_cur."!cursor_pass"(rx453_pos, "backslash:sym<x>")
    if_null rx453_debug, debug_496
    rx453_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx453_pos)
  debug_496:
    .return (rx453_cur)
  rx453_restart:
.annotate 'line', 9
    if_null rx453_debug, debug_497
    rx453_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_497:
  rx453_fail:
    (rx453_rep, rx453_pos, $I10, $P10) = rx453_cur."!mark_fail"(0)
    lt rx453_pos, -1, rx453_done
    eq rx453_pos, -1, rx453_fail
    jump $I10
  rx453_done:
    rx453_cur."!cursor_fail"()
    if_null rx453_debug, debug_498
    rx453_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_498:
    .return (rx453_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("127_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P458 = self."!PREFIX__!subrule"("hexints", "X[")
    $P459 = self."!PREFIX__!subrule"("hexint", "X")
    $P460 = self."!PREFIX__!subrule"("hexints", "x[")
    $P461 = self."!PREFIX__!subrule"("hexint", "x")
    new $P462, "ResizablePMCArray"
    push $P462, $P458
    push $P462, $P459
    push $P462, $P460
    push $P462, $P461
    .return ($P462)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("128_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx464_tgt
    .local int rx464_pos
    .local int rx464_off
    .local int rx464_eos
    .local int rx464_rep
    .local pmc rx464_cur
    .local pmc rx464_debug
    (rx464_cur, rx464_pos, rx464_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx464_cur
    .local pmc match
    .lex "$/", match
    length rx464_eos, rx464_tgt
    gt rx464_pos, rx464_eos, rx464_done
    set rx464_off, 0
    lt rx464_pos, 2, rx464_start
    sub rx464_off, rx464_pos, 1
    substr rx464_tgt, rx464_tgt, rx464_off
  rx464_start:
    eq $I10, 1, rx464_restart
    if_null rx464_debug, debug_499
    rx464_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_499:
    $I10 = self.'from'()
    ne $I10, -1, rxscan465_done
    goto rxscan465_scan
  rxscan465_loop:
    (rx464_pos) = rx464_cur."from"()
    inc rx464_pos
    rx464_cur."!cursor_from"(rx464_pos)
    ge rx464_pos, rx464_eos, rxscan465_done
  rxscan465_scan:
    set_addr $I10, rxscan465_loop
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  rxscan465_done:
.annotate 'line', 155
  # rx subcapture "sym"
    set_addr $I10, rxcap_466_fail
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx464_pos, rx464_eos, rx464_fail
    sub $I10, rx464_pos, rx464_off
    substr $S10, rx464_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx464_fail
    inc rx464_pos
    set_addr $I10, rxcap_466_fail
    ($I12, $I11) = rx464_cur."!mark_peek"($I10)
    rx464_cur."!cursor_pos"($I11)
    ($P10) = rx464_cur."!cursor_start"()
    $P10."!cursor_pass"(rx464_pos, "")
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_466_done
  rxcap_466_fail:
    goto rx464_fail
  rxcap_466_done:
  # rx subrule "charspec" subtype=capture negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."charspec"()
    unless $P10, rx464_fail
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx464_pos = $P10."pos"()
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "backslash:sym<c>")
    if_null rx464_debug, debug_500
    rx464_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx464_pos)
  debug_500:
    .return (rx464_cur)
  rx464_restart:
.annotate 'line', 9
    if_null rx464_debug, debug_501
    rx464_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_501:
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    if_null rx464_debug, debug_502
    rx464_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_502:
    .return (rx464_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("129_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P468 = self."!PREFIX__!subrule"("charspec", "C")
    $P469 = self."!PREFIX__!subrule"("charspec", "c")
    new $P470, "ResizablePMCArray"
    push $P470, $P468
    push $P470, $P469
    .return ($P470)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("130_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx472_tgt
    .local int rx472_pos
    .local int rx472_off
    .local int rx472_eos
    .local int rx472_rep
    .local pmc rx472_cur
    .local pmc rx472_debug
    (rx472_cur, rx472_pos, rx472_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx472_cur
    .local pmc match
    .lex "$/", match
    length rx472_eos, rx472_tgt
    gt rx472_pos, rx472_eos, rx472_done
    set rx472_off, 0
    lt rx472_pos, 2, rx472_start
    sub rx472_off, rx472_pos, 1
    substr rx472_tgt, rx472_tgt, rx472_off
  rx472_start:
    eq $I10, 1, rx472_restart
    if_null rx472_debug, debug_503
    rx472_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_503:
    $I10 = self.'from'()
    ne $I10, -1, rxscan473_done
    goto rxscan473_scan
  rxscan473_loop:
    (rx472_pos) = rx472_cur."from"()
    inc rx472_pos
    rx472_cur."!cursor_from"(rx472_pos)
    ge rx472_pos, rx472_eos, rxscan473_done
  rxscan473_scan:
    set_addr $I10, rxscan473_loop
    rx472_cur."!mark_push"(0, rx472_pos, $I10)
  rxscan473_done:
.annotate 'line', 156
  # rx literal  "A"
    add $I11, rx472_pos, 1
    gt $I11, rx472_eos, rx472_fail
    sub $I11, rx472_pos, rx472_off
    ord $I11, rx472_tgt, $I11
    ne $I11, 65, rx472_fail
    add rx472_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx472_cur."!cursor_pos"(rx472_pos)
    $P10 = rx472_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx472_fail
    rx472_pos = $P10."pos"()
  # rx pass
    rx472_cur."!cursor_pass"(rx472_pos, "backslash:sym<A>")
    if_null rx472_debug, debug_504
    rx472_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx472_pos)
  debug_504:
    .return (rx472_cur)
  rx472_restart:
.annotate 'line', 9
    if_null rx472_debug, debug_505
    rx472_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_505:
  rx472_fail:
    (rx472_rep, rx472_pos, $I10, $P10) = rx472_cur."!mark_fail"(0)
    lt rx472_pos, -1, rx472_done
    eq rx472_pos, -1, rx472_fail
    jump $I10
  rx472_done:
    rx472_cur."!cursor_fail"()
    if_null rx472_debug, debug_506
    rx472_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_506:
    .return (rx472_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("131_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P475 = self."!PREFIX__!subrule"("obs", "A")
    new $P476, "ResizablePMCArray"
    push $P476, $P475
    .return ($P476)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("132_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx478_tgt
    .local int rx478_pos
    .local int rx478_off
    .local int rx478_eos
    .local int rx478_rep
    .local pmc rx478_cur
    .local pmc rx478_debug
    (rx478_cur, rx478_pos, rx478_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx478_cur
    .local pmc match
    .lex "$/", match
    length rx478_eos, rx478_tgt
    gt rx478_pos, rx478_eos, rx478_done
    set rx478_off, 0
    lt rx478_pos, 2, rx478_start
    sub rx478_off, rx478_pos, 1
    substr rx478_tgt, rx478_tgt, rx478_off
  rx478_start:
    eq $I10, 1, rx478_restart
    if_null rx478_debug, debug_507
    rx478_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_507:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    (rx478_pos) = rx478_cur."from"()
    inc rx478_pos
    rx478_cur."!cursor_from"(rx478_pos)
    ge rx478_pos, rx478_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx478_cur."!mark_push"(0, rx478_pos, $I10)
  rxscan479_done:
.annotate 'line', 157
  # rx literal  "z"
    add $I11, rx478_pos, 1
    gt $I11, rx478_eos, rx478_fail
    sub $I11, rx478_pos, rx478_off
    ord $I11, rx478_tgt, $I11
    ne $I11, 122, rx478_fail
    add rx478_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx478_cur."!cursor_pos"(rx478_pos)
    $P10 = rx478_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx478_fail
    rx478_pos = $P10."pos"()
  # rx pass
    rx478_cur."!cursor_pass"(rx478_pos, "backslash:sym<z>")
    if_null rx478_debug, debug_508
    rx478_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx478_pos)
  debug_508:
    .return (rx478_cur)
  rx478_restart:
.annotate 'line', 9
    if_null rx478_debug, debug_509
    rx478_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_509:
  rx478_fail:
    (rx478_rep, rx478_pos, $I10, $P10) = rx478_cur."!mark_fail"(0)
    lt rx478_pos, -1, rx478_done
    eq rx478_pos, -1, rx478_fail
    jump $I10
  rx478_done:
    rx478_cur."!cursor_fail"()
    if_null rx478_debug, debug_510
    rx478_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_510:
    .return (rx478_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("133_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P481 = self."!PREFIX__!subrule"("obs", "z")
    new $P482, "ResizablePMCArray"
    push $P482, $P481
    .return ($P482)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("134_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx484_tgt
    .local int rx484_pos
    .local int rx484_off
    .local int rx484_eos
    .local int rx484_rep
    .local pmc rx484_cur
    .local pmc rx484_debug
    (rx484_cur, rx484_pos, rx484_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx484_cur
    .local pmc match
    .lex "$/", match
    length rx484_eos, rx484_tgt
    gt rx484_pos, rx484_eos, rx484_done
    set rx484_off, 0
    lt rx484_pos, 2, rx484_start
    sub rx484_off, rx484_pos, 1
    substr rx484_tgt, rx484_tgt, rx484_off
  rx484_start:
    eq $I10, 1, rx484_restart
    if_null rx484_debug, debug_511
    rx484_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_511:
    $I10 = self.'from'()
    ne $I10, -1, rxscan485_done
    goto rxscan485_scan
  rxscan485_loop:
    (rx484_pos) = rx484_cur."from"()
    inc rx484_pos
    rx484_cur."!cursor_from"(rx484_pos)
    ge rx484_pos, rx484_eos, rxscan485_done
  rxscan485_scan:
    set_addr $I10, rxscan485_loop
    rx484_cur."!mark_push"(0, rx484_pos, $I10)
  rxscan485_done:
.annotate 'line', 158
  # rx literal  "Z"
    add $I11, rx484_pos, 1
    gt $I11, rx484_eos, rx484_fail
    sub $I11, rx484_pos, rx484_off
    ord $I11, rx484_tgt, $I11
    ne $I11, 90, rx484_fail
    add rx484_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx484_cur."!cursor_pos"(rx484_pos)
    $P10 = rx484_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx484_fail
    rx484_pos = $P10."pos"()
  # rx pass
    rx484_cur."!cursor_pass"(rx484_pos, "backslash:sym<Z>")
    if_null rx484_debug, debug_512
    rx484_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx484_pos)
  debug_512:
    .return (rx484_cur)
  rx484_restart:
.annotate 'line', 9
    if_null rx484_debug, debug_513
    rx484_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_513:
  rx484_fail:
    (rx484_rep, rx484_pos, $I10, $P10) = rx484_cur."!mark_fail"(0)
    lt rx484_pos, -1, rx484_done
    eq rx484_pos, -1, rx484_fail
    jump $I10
  rx484_done:
    rx484_cur."!cursor_fail"()
    if_null rx484_debug, debug_514
    rx484_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_514:
    .return (rx484_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("135_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P487 = self."!PREFIX__!subrule"("obs", "Z")
    new $P488, "ResizablePMCArray"
    push $P488, $P487
    .return ($P488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("136_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx490_tgt
    .local int rx490_pos
    .local int rx490_off
    .local int rx490_eos
    .local int rx490_rep
    .local pmc rx490_cur
    .local pmc rx490_debug
    (rx490_cur, rx490_pos, rx490_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx490_cur
    .local pmc match
    .lex "$/", match
    length rx490_eos, rx490_tgt
    gt rx490_pos, rx490_eos, rx490_done
    set rx490_off, 0
    lt rx490_pos, 2, rx490_start
    sub rx490_off, rx490_pos, 1
    substr rx490_tgt, rx490_tgt, rx490_off
  rx490_start:
    eq $I10, 1, rx490_restart
    if_null rx490_debug, debug_515
    rx490_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_515:
    $I10 = self.'from'()
    ne $I10, -1, rxscan491_done
    goto rxscan491_scan
  rxscan491_loop:
    (rx490_pos) = rx490_cur."from"()
    inc rx490_pos
    rx490_cur."!cursor_from"(rx490_pos)
    ge rx490_pos, rx490_eos, rxscan491_done
  rxscan491_scan:
    set_addr $I10, rxscan491_loop
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  rxscan491_done:
.annotate 'line', 159
  # rx literal  "Q"
    add $I11, rx490_pos, 1
    gt $I11, rx490_eos, rx490_fail
    sub $I11, rx490_pos, rx490_off
    ord $I11, rx490_tgt, $I11
    ne $I11, 81, rx490_fail
    add rx490_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx490_fail
    rx490_pos = $P10."pos"()
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "backslash:sym<Q>")
    if_null rx490_debug, debug_516
    rx490_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx490_pos)
  debug_516:
    .return (rx490_cur)
  rx490_restart:
.annotate 'line', 9
    if_null rx490_debug, debug_517
    rx490_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_517:
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    if_null rx490_debug, debug_518
    rx490_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_518:
    .return (rx490_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("137_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P493 = self."!PREFIX__!subrule"("obs", "Q")
    new $P494, "ResizablePMCArray"
    push $P494, $P493
    .return ($P494)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("138_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P501 = "139_1307873292.23355" 
    capture_lex $P501
    .local string rx496_tgt
    .local int rx496_pos
    .local int rx496_off
    .local int rx496_eos
    .local int rx496_rep
    .local pmc rx496_cur
    .local pmc rx496_debug
    (rx496_cur, rx496_pos, rx496_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx496_cur
    .local pmc match
    .lex "$/", match
    length rx496_eos, rx496_tgt
    gt rx496_pos, rx496_eos, rx496_done
    set rx496_off, 0
    lt rx496_pos, 2, rx496_start
    sub rx496_off, rx496_pos, 1
    substr rx496_tgt, rx496_tgt, rx496_off
  rx496_start:
    eq $I10, 1, rx496_restart
    if_null rx496_debug, debug_519
    rx496_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_519:
    $I10 = self.'from'()
    ne $I10, -1, rxscan497_done
    goto rxscan497_scan
  rxscan497_loop:
    (rx496_pos) = rx496_cur."from"()
    inc rx496_pos
    rx496_cur."!cursor_from"(rx496_pos)
    ge rx496_pos, rx496_eos, rxscan497_done
  rxscan497_scan:
    set_addr $I10, rxscan497_loop
    rx496_cur."!mark_push"(0, rx496_pos, $I10)
  rxscan497_done:
.annotate 'line', 160
    rx496_cur."!cursor_pos"(rx496_pos)
    find_lex $P498, unicode:"$\x{a2}"
    $P499 = $P498."MATCH"()
    store_lex "$/", $P499
    .const 'Sub' $P501 = "139_1307873292.23355" 
    capture_lex $P501
    $P502 = $P501()
  # rx charclass w
    ge rx496_pos, rx496_eos, rx496_fail
    sub $I10, rx496_pos, rx496_off
    is_cclass $I11, .CCLASS_WORD, rx496_tgt, $I10
    unless $I11, rx496_fail
    inc rx496_pos
  # rx subrule "panic" subtype=method negate=
    rx496_cur."!cursor_pos"(rx496_pos)
    $P10 = rx496_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx496_fail
    rx496_pos = $P10."pos"()
  # rx pass
    rx496_cur."!cursor_pass"(rx496_pos, "backslash:sym<unrec>")
    if_null rx496_debug, debug_520
    rx496_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx496_pos)
  debug_520:
    .return (rx496_cur)
  rx496_restart:
.annotate 'line', 9
    if_null rx496_debug, debug_521
    rx496_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_521:
  rx496_fail:
    (rx496_rep, rx496_pos, $I10, $P10) = rx496_cur."!mark_fail"(0)
    lt rx496_pos, -1, rx496_done
    eq rx496_pos, -1, rx496_fail
    jump $I10
  rx496_done:
    rx496_cur."!cursor_fail"()
    if_null rx496_debug, debug_522
    rx496_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_522:
    .return (rx496_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block500"  :anon :subid("139_1307873292.23355") :outer("138_1307873292.23355")
.annotate 'line', 160
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :subid("140_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P504, "ResizablePMCArray"
    push $P504, ""
    .return ($P504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("141_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx506_tgt
    .local int rx506_pos
    .local int rx506_off
    .local int rx506_eos
    .local int rx506_rep
    .local pmc rx506_cur
    .local pmc rx506_debug
    (rx506_cur, rx506_pos, rx506_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx506_cur
    .local pmc match
    .lex "$/", match
    length rx506_eos, rx506_tgt
    gt rx506_pos, rx506_eos, rx506_done
    set rx506_off, 0
    lt rx506_pos, 2, rx506_start
    sub rx506_off, rx506_pos, 1
    substr rx506_tgt, rx506_tgt, rx506_off
  rx506_start:
    eq $I10, 1, rx506_restart
    if_null rx506_debug, debug_523
    rx506_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_523:
    $I10 = self.'from'()
    ne $I10, -1, rxscan507_done
    goto rxscan507_scan
  rxscan507_loop:
    (rx506_pos) = rx506_cur."from"()
    inc rx506_pos
    rx506_cur."!cursor_from"(rx506_pos)
    ge rx506_pos, rx506_eos, rxscan507_done
  rxscan507_scan:
    set_addr $I10, rxscan507_loop
    rx506_cur."!mark_push"(0, rx506_pos, $I10)
  rxscan507_done:
.annotate 'line', 161
  # rx charclass W
    ge rx506_pos, rx506_eos, rx506_fail
    sub $I10, rx506_pos, rx506_off
    is_cclass $I11, .CCLASS_WORD, rx506_tgt, $I10
    if $I11, rx506_fail
    inc rx506_pos
  # rx pass
    rx506_cur."!cursor_pass"(rx506_pos, "backslash:sym<misc>")
    if_null rx506_debug, debug_524
    rx506_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx506_pos)
  debug_524:
    .return (rx506_cur)
  rx506_restart:
.annotate 'line', 9
    if_null rx506_debug, debug_525
    rx506_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_525:
  rx506_fail:
    (rx506_rep, rx506_pos, $I10, $P10) = rx506_cur."!mark_fail"(0)
    lt rx506_pos, -1, rx506_done
    eq rx506_pos, -1, rx506_fail
    jump $I10
  rx506_done:
    rx506_cur."!cursor_fail"()
    if_null rx506_debug, debug_526
    rx506_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_526:
    .return (rx506_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("142_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P509, "ResizablePMCArray"
    push $P509, ""
    .return ($P509)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("143_1307873292.23355")
    .param pmc param_511
.annotate 'line', 163
    .lex "self", param_511
    $P512 = param_511."!protoregex"("assertion")
    .return ($P512)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("144_1307873292.23355")
    .param pmc param_514
.annotate 'line', 163
    .lex "self", param_514
    $P515 = param_514."!PREFIX__!protoregex"("assertion")
    .return ($P515)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("145_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P521 = "146_1307873292.23355" 
    capture_lex $P521
    .local string rx517_tgt
    .local int rx517_pos
    .local int rx517_off
    .local int rx517_eos
    .local int rx517_rep
    .local pmc rx517_cur
    .local pmc rx517_debug
    (rx517_cur, rx517_pos, rx517_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx517_cur
    .local pmc match
    .lex "$/", match
    length rx517_eos, rx517_tgt
    gt rx517_pos, rx517_eos, rx517_done
    set rx517_off, 0
    lt rx517_pos, 2, rx517_start
    sub rx517_off, rx517_pos, 1
    substr rx517_tgt, rx517_tgt, rx517_off
  rx517_start:
    eq $I10, 1, rx517_restart
    if_null rx517_debug, debug_527
    rx517_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_527:
    $I10 = self.'from'()
    ne $I10, -1, rxscan518_done
    goto rxscan518_scan
  rxscan518_loop:
    (rx517_pos) = rx517_cur."from"()
    inc rx517_pos
    rx517_cur."!cursor_from"(rx517_pos)
    ge rx517_pos, rx517_eos, rxscan518_done
  rxscan518_scan:
    set_addr $I10, rxscan518_loop
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
  rxscan518_done:
.annotate 'line', 165
  # rx literal  "?"
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    ord $I11, rx517_tgt, $I11
    ne $I11, 63, rx517_fail
    add rx517_pos, 1
  alt519_0:
    set_addr $I10, alt519_1
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    .const 'Sub' $P521 = "146_1307873292.23355" 
    capture_lex $P521
    $P10 = rx517_cur."before"($P521)
    unless $P10, rx517_fail
    goto alt519_end
  alt519_1:
  # rx subrule "assertion" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."assertion"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx517_pos = $P10."pos"()
  alt519_end:
  # rx pass
    rx517_cur."!cursor_pass"(rx517_pos, "assertion:sym<?>")
    if_null rx517_debug, debug_532
    rx517_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx517_pos)
  debug_532:
    .return (rx517_cur)
  rx517_restart:
.annotate 'line', 9
    if_null rx517_debug, debug_533
    rx517_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_533:
  rx517_fail:
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    if_null rx517_debug, debug_534
    rx517_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_534:
    .return (rx517_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block520"  :anon :subid("146_1307873292.23355") :method :outer("145_1307873292.23355")
.annotate 'line', 165
    .local string rx522_tgt
    .local int rx522_pos
    .local int rx522_off
    .local int rx522_eos
    .local int rx522_rep
    .local pmc rx522_cur
    .local pmc rx522_debug
    (rx522_cur, rx522_pos, rx522_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx522_cur
    .local pmc match
    .lex "$/", match
    length rx522_eos, rx522_tgt
    gt rx522_pos, rx522_eos, rx522_done
    set rx522_off, 0
    lt rx522_pos, 2, rx522_start
    sub rx522_off, rx522_pos, 1
    substr rx522_tgt, rx522_tgt, rx522_off
  rx522_start:
    eq $I10, 1, rx522_restart
    if_null rx522_debug, debug_528
    rx522_cur."!cursor_debug"("START", "")
  debug_528:
    $I10 = self.'from'()
    ne $I10, -1, rxscan523_done
    goto rxscan523_scan
  rxscan523_loop:
    (rx522_pos) = rx522_cur."from"()
    inc rx522_pos
    rx522_cur."!cursor_from"(rx522_pos)
    ge rx522_pos, rx522_eos, rxscan523_done
  rxscan523_scan:
    set_addr $I10, rxscan523_loop
    rx522_cur."!mark_push"(0, rx522_pos, $I10)
  rxscan523_done:
  # rx literal  ">"
    add $I11, rx522_pos, 1
    gt $I11, rx522_eos, rx522_fail
    sub $I11, rx522_pos, rx522_off
    ord $I11, rx522_tgt, $I11
    ne $I11, 62, rx522_fail
    add rx522_pos, 1
  # rx pass
    rx522_cur."!cursor_pass"(rx522_pos, "")
    if_null rx522_debug, debug_529
    rx522_cur."!cursor_debug"("PASS", "", " at pos=", rx522_pos)
  debug_529:
    .return (rx522_cur)
  rx522_restart:
    if_null rx522_debug, debug_530
    rx522_cur."!cursor_debug"("NEXT", "")
  debug_530:
  rx522_fail:
    (rx522_rep, rx522_pos, $I10, $P10) = rx522_cur."!mark_fail"(0)
    lt rx522_pos, -1, rx522_done
    eq rx522_pos, -1, rx522_fail
    jump $I10
  rx522_done:
    rx522_cur."!cursor_fail"()
    if_null rx522_debug, debug_531
    rx522_cur."!cursor_debug"("FAIL", "")
  debug_531:
    .return (rx522_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("147_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P525 = self."!PREFIX__!subrule"("assertion", "?")
    new $P526, "ResizablePMCArray"
    push $P526, $P525
    push $P526, "?"
    .return ($P526)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("148_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P532 = "149_1307873292.23355" 
    capture_lex $P532
    .local string rx528_tgt
    .local int rx528_pos
    .local int rx528_off
    .local int rx528_eos
    .local int rx528_rep
    .local pmc rx528_cur
    .local pmc rx528_debug
    (rx528_cur, rx528_pos, rx528_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx528_cur
    .local pmc match
    .lex "$/", match
    length rx528_eos, rx528_tgt
    gt rx528_pos, rx528_eos, rx528_done
    set rx528_off, 0
    lt rx528_pos, 2, rx528_start
    sub rx528_off, rx528_pos, 1
    substr rx528_tgt, rx528_tgt, rx528_off
  rx528_start:
    eq $I10, 1, rx528_restart
    if_null rx528_debug, debug_535
    rx528_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_535:
    $I10 = self.'from'()
    ne $I10, -1, rxscan529_done
    goto rxscan529_scan
  rxscan529_loop:
    (rx528_pos) = rx528_cur."from"()
    inc rx528_pos
    rx528_cur."!cursor_from"(rx528_pos)
    ge rx528_pos, rx528_eos, rxscan529_done
  rxscan529_scan:
    set_addr $I10, rxscan529_loop
    rx528_cur."!mark_push"(0, rx528_pos, $I10)
  rxscan529_done:
.annotate 'line', 166
  # rx literal  "!"
    add $I11, rx528_pos, 1
    gt $I11, rx528_eos, rx528_fail
    sub $I11, rx528_pos, rx528_off
    ord $I11, rx528_tgt, $I11
    ne $I11, 33, rx528_fail
    add rx528_pos, 1
  alt530_0:
    set_addr $I10, alt530_1
    rx528_cur."!mark_push"(0, rx528_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx528_cur."!cursor_pos"(rx528_pos)
    .const 'Sub' $P532 = "149_1307873292.23355" 
    capture_lex $P532
    $P10 = rx528_cur."before"($P532)
    unless $P10, rx528_fail
    goto alt530_end
  alt530_1:
  # rx subrule "assertion" subtype=capture negate=
    rx528_cur."!cursor_pos"(rx528_pos)
    $P10 = rx528_cur."assertion"()
    unless $P10, rx528_fail
    rx528_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx528_pos = $P10."pos"()
  alt530_end:
  # rx pass
    rx528_cur."!cursor_pass"(rx528_pos, "assertion:sym<!>")
    if_null rx528_debug, debug_540
    rx528_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx528_pos)
  debug_540:
    .return (rx528_cur)
  rx528_restart:
.annotate 'line', 9
    if_null rx528_debug, debug_541
    rx528_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_541:
  rx528_fail:
    (rx528_rep, rx528_pos, $I10, $P10) = rx528_cur."!mark_fail"(0)
    lt rx528_pos, -1, rx528_done
    eq rx528_pos, -1, rx528_fail
    jump $I10
  rx528_done:
    rx528_cur."!cursor_fail"()
    if_null rx528_debug, debug_542
    rx528_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_542:
    .return (rx528_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block531"  :anon :subid("149_1307873292.23355") :method :outer("148_1307873292.23355")
.annotate 'line', 166
    .local string rx533_tgt
    .local int rx533_pos
    .local int rx533_off
    .local int rx533_eos
    .local int rx533_rep
    .local pmc rx533_cur
    .local pmc rx533_debug
    (rx533_cur, rx533_pos, rx533_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx533_cur
    .local pmc match
    .lex "$/", match
    length rx533_eos, rx533_tgt
    gt rx533_pos, rx533_eos, rx533_done
    set rx533_off, 0
    lt rx533_pos, 2, rx533_start
    sub rx533_off, rx533_pos, 1
    substr rx533_tgt, rx533_tgt, rx533_off
  rx533_start:
    eq $I10, 1, rx533_restart
    if_null rx533_debug, debug_536
    rx533_cur."!cursor_debug"("START", "")
  debug_536:
    $I10 = self.'from'()
    ne $I10, -1, rxscan534_done
    goto rxscan534_scan
  rxscan534_loop:
    (rx533_pos) = rx533_cur."from"()
    inc rx533_pos
    rx533_cur."!cursor_from"(rx533_pos)
    ge rx533_pos, rx533_eos, rxscan534_done
  rxscan534_scan:
    set_addr $I10, rxscan534_loop
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
  rxscan534_done:
  # rx literal  ">"
    add $I11, rx533_pos, 1
    gt $I11, rx533_eos, rx533_fail
    sub $I11, rx533_pos, rx533_off
    ord $I11, rx533_tgt, $I11
    ne $I11, 62, rx533_fail
    add rx533_pos, 1
  # rx pass
    rx533_cur."!cursor_pass"(rx533_pos, "")
    if_null rx533_debug, debug_537
    rx533_cur."!cursor_debug"("PASS", "", " at pos=", rx533_pos)
  debug_537:
    .return (rx533_cur)
  rx533_restart:
    if_null rx533_debug, debug_538
    rx533_cur."!cursor_debug"("NEXT", "")
  debug_538:
  rx533_fail:
    (rx533_rep, rx533_pos, $I10, $P10) = rx533_cur."!mark_fail"(0)
    lt rx533_pos, -1, rx533_done
    eq rx533_pos, -1, rx533_fail
    jump $I10
  rx533_done:
    rx533_cur."!cursor_fail"()
    if_null rx533_debug, debug_539
    rx533_cur."!cursor_debug"("FAIL", "")
  debug_539:
    .return (rx533_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("150_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P536 = self."!PREFIX__!subrule"("assertion", "!")
    new $P537, "ResizablePMCArray"
    push $P537, $P536
    push $P537, "!"
    .return ($P537)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("151_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx539_tgt
    .local int rx539_pos
    .local int rx539_off
    .local int rx539_eos
    .local int rx539_rep
    .local pmc rx539_cur
    .local pmc rx539_debug
    (rx539_cur, rx539_pos, rx539_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx539_cur
    .local pmc match
    .lex "$/", match
    length rx539_eos, rx539_tgt
    gt rx539_pos, rx539_eos, rx539_done
    set rx539_off, 0
    lt rx539_pos, 2, rx539_start
    sub rx539_off, rx539_pos, 1
    substr rx539_tgt, rx539_tgt, rx539_off
  rx539_start:
    eq $I10, 1, rx539_restart
    if_null rx539_debug, debug_543
    rx539_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_543:
    $I10 = self.'from'()
    ne $I10, -1, rxscan540_done
    goto rxscan540_scan
  rxscan540_loop:
    (rx539_pos) = rx539_cur."from"()
    inc rx539_pos
    rx539_cur."!cursor_from"(rx539_pos)
    ge rx539_pos, rx539_eos, rxscan540_done
  rxscan540_scan:
    set_addr $I10, rxscan540_loop
    rx539_cur."!mark_push"(0, rx539_pos, $I10)
  rxscan540_done:
.annotate 'line', 169
  # rx literal  "."
    add $I11, rx539_pos, 1
    gt $I11, rx539_eos, rx539_fail
    sub $I11, rx539_pos, rx539_off
    ord $I11, rx539_tgt, $I11
    ne $I11, 46, rx539_fail
    add rx539_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx539_cur."!cursor_pos"(rx539_pos)
    $P10 = rx539_cur."assertion"()
    unless $P10, rx539_fail
    rx539_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx539_pos = $P10."pos"()
.annotate 'line', 168
  # rx pass
    rx539_cur."!cursor_pass"(rx539_pos, "assertion:sym<method>")
    if_null rx539_debug, debug_544
    rx539_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx539_pos)
  debug_544:
    .return (rx539_cur)
  rx539_restart:
.annotate 'line', 9
    if_null rx539_debug, debug_545
    rx539_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_545:
  rx539_fail:
    (rx539_rep, rx539_pos, $I10, $P10) = rx539_cur."!mark_fail"(0)
    lt rx539_pos, -1, rx539_done
    eq rx539_pos, -1, rx539_fail
    jump $I10
  rx539_done:
    rx539_cur."!cursor_fail"()
    if_null rx539_debug, debug_546
    rx539_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_546:
    .return (rx539_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("152_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P542 = self."!PREFIX__!subrule"("assertion", ".")
    new $P543, "ResizablePMCArray"
    push $P543, $P542
    .return ($P543)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("153_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P550 = "154_1307873292.23355" 
    capture_lex $P550
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    .local pmc rx545_debug
    (rx545_cur, rx545_pos, rx545_tgt, $I10) = self."!cursor_start"()
    rx545_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
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
    if_null rx545_debug, debug_547
    rx545_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_547:
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
.annotate 'line', 173
  # rx subrule "identifier" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."identifier"()
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx545_pos = $P10."pos"()
.annotate 'line', 180
  # rx rxquantr547 ** 0..1
    set_addr $I10, rxquantr547_done
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxquantr547_loop:
  alt548_0:
.annotate 'line', 174
    set_addr $I10, alt548_1
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
.annotate 'line', 175
  # rx subrule "before" subtype=zerowidth negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    .const 'Sub' $P550 = "154_1307873292.23355" 
    capture_lex $P550
    $P10 = rx545_cur."before"($P550)
    unless $P10, rx545_fail
    goto alt548_end
  alt548_1:
    set_addr $I10, alt548_2
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
.annotate 'line', 176
  # rx literal  "="
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 61, rx545_fail
    add rx545_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."assertion"()
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx545_pos = $P10."pos"()
    goto alt548_end
  alt548_2:
    set_addr $I10, alt548_3
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
.annotate 'line', 177
  # rx literal  ":"
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 58, rx545_fail
    add rx545_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."arglist"()
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx545_pos = $P10."pos"()
    goto alt548_end
  alt548_3:
    set_addr $I10, alt548_4
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
.annotate 'line', 178
  # rx literal  "("
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 40, rx545_fail
    add rx545_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."arglist"()
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx545_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 41, rx545_fail
    add rx545_pos, 1
    goto alt548_end
  alt548_4:
.annotate 'line', 179
  # rx subrule "normspace" subtype=method negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."normspace"()
    unless $P10, rx545_fail
    rx545_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."nibbler"()
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx545_pos = $P10."pos"()
  alt548_end:
.annotate 'line', 180
    set_addr $I10, rxquantr547_done
    (rx545_rep) = rx545_cur."!mark_commit"($I10)
  rxquantr547_done:
.annotate 'line', 172
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "assertion:sym<name>")
    if_null rx545_debug, debug_552
    rx545_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx545_pos)
  debug_552:
    .return (rx545_cur)
  rx545_restart:
.annotate 'line', 9
    if_null rx545_debug, debug_553
    rx545_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_553:
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    if_null rx545_debug, debug_554
    rx545_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_554:
    .return (rx545_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block549"  :anon :subid("154_1307873292.23355") :method :outer("153_1307873292.23355")
.annotate 'line', 175
    .local string rx551_tgt
    .local int rx551_pos
    .local int rx551_off
    .local int rx551_eos
    .local int rx551_rep
    .local pmc rx551_cur
    .local pmc rx551_debug
    (rx551_cur, rx551_pos, rx551_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx551_cur
    .local pmc match
    .lex "$/", match
    length rx551_eos, rx551_tgt
    gt rx551_pos, rx551_eos, rx551_done
    set rx551_off, 0
    lt rx551_pos, 2, rx551_start
    sub rx551_off, rx551_pos, 1
    substr rx551_tgt, rx551_tgt, rx551_off
  rx551_start:
    eq $I10, 1, rx551_restart
    if_null rx551_debug, debug_548
    rx551_cur."!cursor_debug"("START", "")
  debug_548:
    $I10 = self.'from'()
    ne $I10, -1, rxscan552_done
    goto rxscan552_scan
  rxscan552_loop:
    (rx551_pos) = rx551_cur."from"()
    inc rx551_pos
    rx551_cur."!cursor_from"(rx551_pos)
    ge rx551_pos, rx551_eos, rxscan552_done
  rxscan552_scan:
    set_addr $I10, rxscan552_loop
    rx551_cur."!mark_push"(0, rx551_pos, $I10)
  rxscan552_done:
  # rx literal  ">"
    add $I11, rx551_pos, 1
    gt $I11, rx551_eos, rx551_fail
    sub $I11, rx551_pos, rx551_off
    ord $I11, rx551_tgt, $I11
    ne $I11, 62, rx551_fail
    add rx551_pos, 1
  # rx pass
    rx551_cur."!cursor_pass"(rx551_pos, "")
    if_null rx551_debug, debug_549
    rx551_cur."!cursor_debug"("PASS", "", " at pos=", rx551_pos)
  debug_549:
    .return (rx551_cur)
  rx551_restart:
    if_null rx551_debug, debug_550
    rx551_cur."!cursor_debug"("NEXT", "")
  debug_550:
  rx551_fail:
    (rx551_rep, rx551_pos, $I10, $P10) = rx551_cur."!mark_fail"(0)
    lt rx551_pos, -1, rx551_done
    eq rx551_pos, -1, rx551_fail
    jump $I10
  rx551_done:
    rx551_cur."!cursor_fail"()
    if_null rx551_debug, debug_551
    rx551_cur."!cursor_debug"("FAIL", "")
  debug_551:
    .return (rx551_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("155_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P554 = self."!PREFIX__!subrule"("identifier", "")
    new $P555, "ResizablePMCArray"
    push $P555, $P554
    .return ($P555)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("156_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P560 = "157_1307873292.23355" 
    capture_lex $P560
    .local string rx557_tgt
    .local int rx557_pos
    .local int rx557_off
    .local int rx557_eos
    .local int rx557_rep
    .local pmc rx557_cur
    .local pmc rx557_debug
    (rx557_cur, rx557_pos, rx557_tgt, $I10) = self."!cursor_start"()
    rx557_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx557_cur
    .local pmc match
    .lex "$/", match
    length rx557_eos, rx557_tgt
    gt rx557_pos, rx557_eos, rx557_done
    set rx557_off, 0
    lt rx557_pos, 2, rx557_start
    sub rx557_off, rx557_pos, 1
    substr rx557_tgt, rx557_tgt, rx557_off
  rx557_start:
    eq $I10, 1, rx557_restart
    if_null rx557_debug, debug_555
    rx557_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_555:
    $I10 = self.'from'()
    ne $I10, -1, rxscan558_done
    goto rxscan558_scan
  rxscan558_loop:
    (rx557_pos) = rx557_cur."from"()
    inc rx557_pos
    rx557_cur."!cursor_from"(rx557_pos)
    ge rx557_pos, rx557_eos, rxscan558_done
  rxscan558_scan:
    set_addr $I10, rxscan558_loop
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxscan558_done:
.annotate 'line', 183
  # rx subrule "before" subtype=zerowidth negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    .const 'Sub' $P560 = "157_1307873292.23355" 
    capture_lex $P560
    $P10 = rx557_cur."before"($P560)
    unless $P10, rx557_fail
  # rx rxquantr564 ** 1..*
    set_addr $I10, rxquantr564_done
    rx557_cur."!mark_push"(0, -1, $I10)
  rxquantr564_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    $P10 = rx557_cur."cclass_elem"()
    unless $P10, rx557_fail
    goto rxsubrule565_pass
  rxsubrule565_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx557_fail
  rxsubrule565_pass:
    set_addr $I10, rxsubrule565_back
    rx557_cur."!mark_push"(0, rx557_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx557_pos = $P10."pos"()
    set_addr $I10, rxquantr564_done
    (rx557_rep) = rx557_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr564_done
    rx557_cur."!mark_push"(rx557_rep, rx557_pos, $I10)
    goto rxquantr564_loop
  rxquantr564_done:
  # rx pass
    rx557_cur."!cursor_pass"(rx557_pos, "assertion:sym<[>")
    if_null rx557_debug, debug_560
    rx557_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx557_pos)
  debug_560:
    .return (rx557_cur)
  rx557_restart:
.annotate 'line', 9
    if_null rx557_debug, debug_561
    rx557_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_561:
  rx557_fail:
    (rx557_rep, rx557_pos, $I10, $P10) = rx557_cur."!mark_fail"(0)
    lt rx557_pos, -1, rx557_done
    eq rx557_pos, -1, rx557_fail
    jump $I10
  rx557_done:
    rx557_cur."!cursor_fail"()
    if_null rx557_debug, debug_562
    rx557_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_562:
    .return (rx557_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block559"  :anon :subid("157_1307873292.23355") :method :outer("156_1307873292.23355")
.annotate 'line', 183
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    .local pmc rx561_debug
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx561_cur
    .local pmc match
    .lex "$/", match
    length rx561_eos, rx561_tgt
    gt rx561_pos, rx561_eos, rx561_done
    set rx561_off, 0
    lt rx561_pos, 2, rx561_start
    sub rx561_off, rx561_pos, 1
    substr rx561_tgt, rx561_tgt, rx561_off
  rx561_start:
    eq $I10, 1, rx561_restart
    if_null rx561_debug, debug_556
    rx561_cur."!cursor_debug"("START", "")
  debug_556:
    $I10 = self.'from'()
    ne $I10, -1, rxscan562_done
    goto rxscan562_scan
  rxscan562_loop:
    (rx561_pos) = rx561_cur."from"()
    inc rx561_pos
    rx561_cur."!cursor_from"(rx561_pos)
    ge rx561_pos, rx561_eos, rxscan562_done
  rxscan562_scan:
    set_addr $I10, rxscan562_loop
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxscan562_done:
  alt563_0:
    set_addr $I10, alt563_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "["
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 91, rx561_fail
    add rx561_pos, 1
    goto alt563_end
  alt563_1:
    set_addr $I10, alt563_2
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "+"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 43, rx561_fail
    add rx561_pos, 1
    goto alt563_end
  alt563_2:
  # rx literal  "-"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 45, rx561_fail
    add rx561_pos, 1
  alt563_end:
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "")
    if_null rx561_debug, debug_557
    rx561_cur."!cursor_debug"("PASS", "", " at pos=", rx561_pos)
  debug_557:
    .return (rx561_cur)
  rx561_restart:
    if_null rx561_debug, debug_558
    rx561_cur."!cursor_debug"("NEXT", "")
  debug_558:
  rx561_fail:
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    if_null rx561_debug, debug_559
    rx561_cur."!cursor_debug"("FAIL", "")
  debug_559:
    .return (rx561_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("158_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P567, "ResizablePMCArray"
    push $P567, ""
    .return ($P567)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("159_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P578 = "160_1307873292.23355" 
    capture_lex $P578
    .local string rx569_tgt
    .local int rx569_pos
    .local int rx569_off
    .local int rx569_eos
    .local int rx569_rep
    .local pmc rx569_cur
    .local pmc rx569_debug
    (rx569_cur, rx569_pos, rx569_tgt, $I10) = self."!cursor_start"()
    rx569_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx569_cur
    .local pmc match
    .lex "$/", match
    length rx569_eos, rx569_tgt
    gt rx569_pos, rx569_eos, rx569_done
    set rx569_off, 0
    lt rx569_pos, 2, rx569_start
    sub rx569_off, rx569_pos, 1
    substr rx569_tgt, rx569_tgt, rx569_off
  rx569_start:
    eq $I10, 1, rx569_restart
    if_null rx569_debug, debug_563
    rx569_cur."!cursor_debug"("START", "cclass_elem")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan570_done
    goto rxscan570_scan
  rxscan570_loop:
    (rx569_pos) = rx569_cur."from"()
    inc rx569_pos
    rx569_cur."!cursor_from"(rx569_pos)
    ge rx569_pos, rx569_eos, rxscan570_done
  rxscan570_scan:
    set_addr $I10, rxscan570_loop
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxscan570_done:
.annotate 'line', 186
  # rx subcapture "sign"
    set_addr $I10, rxcap_572_fail
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  alt571_0:
    set_addr $I10, alt571_1
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  # rx literal  "+"
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 43, rx569_fail
    add rx569_pos, 1
    goto alt571_end
  alt571_1:
    set_addr $I10, alt571_2
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  # rx literal  "-"
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 45, rx569_fail
    add rx569_pos, 1
    goto alt571_end
  alt571_2:
  alt571_end:
    set_addr $I10, rxcap_572_fail
    ($I12, $I11) = rx569_cur."!mark_peek"($I10)
    rx569_cur."!cursor_pos"($I11)
    ($P10) = rx569_cur."!cursor_start"()
    $P10."!cursor_pass"(rx569_pos, "")
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_572_done
  rxcap_572_fail:
    goto rx569_fail
  rxcap_572_done:
.annotate 'line', 187
  # rx rxquantr573 ** 0..1
    set_addr $I10, rxquantr573_done
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxquantr573_loop:
  # rx subrule "normspace" subtype=method negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."normspace"()
    unless $P10, rx569_fail
    goto rxsubrule574_pass
  rxsubrule574_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx569_fail
  rxsubrule574_pass:
    set_addr $I10, rxsubrule574_back
    rx569_cur."!mark_push"(0, rx569_pos, $I10, $P10)
    rx569_pos = $P10."pos"()
    set_addr $I10, rxquantr573_done
    (rx569_rep) = rx569_cur."!mark_commit"($I10)
  rxquantr573_done:
  alt575_0:
.annotate 'line', 188
    set_addr $I10, alt575_1
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
.annotate 'line', 189
  # rx literal  "["
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 91, rx569_fail
    add rx569_pos, 1
.annotate 'line', 192
  # rx rxquantr576 ** 0..*
    set_addr $I10, rxquantr576_done
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxquantr576_loop:
.annotate 'line', 189
  # rx subrule $P578 subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    .const 'Sub' $P578 = "160_1307873292.23355" 
    capture_lex $P578
    $P10 = rx569_cur.$P578()
    unless $P10, rx569_fail
    goto rxsubrule596_pass
  rxsubrule596_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx569_fail
  rxsubrule596_pass:
    set_addr $I10, rxsubrule596_back
    rx569_cur."!mark_push"(0, rx569_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx569_pos = $P10."pos"()
.annotate 'line', 192
    set_addr $I10, rxquantr576_done
    (rx569_rep) = rx569_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr576_done
    rx569_cur."!mark_push"(rx569_rep, rx569_pos, $I10)
    goto rxquantr576_loop
  rxquantr576_done:
.annotate 'line', 193
  # rx charclass_q s r 0..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx569_tgt, $I10, rx569_eos
    add rx569_pos, rx569_off, $I11
  # rx literal  "]"
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 93, rx569_fail
    add rx569_pos, 1
.annotate 'line', 189
    goto alt575_end
  alt575_1:
.annotate 'line', 194
  # rx subcapture "name"
    set_addr $I10, rxcap_597_fail
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, .CCLASS_WORD, rx569_tgt, $I10, rx569_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx569_fail
    add rx569_pos, rx569_off, $I11
    set_addr $I10, rxcap_597_fail
    ($I12, $I11) = rx569_cur."!mark_peek"($I10)
    rx569_cur."!cursor_pos"($I11)
    ($P10) = rx569_cur."!cursor_start"()
    $P10."!cursor_pass"(rx569_pos, "")
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_597_done
  rxcap_597_fail:
    goto rx569_fail
  rxcap_597_done:
  alt575_end:
.annotate 'line', 196
  # rx rxquantr598 ** 0..1
    set_addr $I10, rxquantr598_done
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxquantr598_loop:
  # rx subrule "normspace" subtype=method negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."normspace"()
    unless $P10, rx569_fail
    goto rxsubrule599_pass
  rxsubrule599_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx569_fail
  rxsubrule599_pass:
    set_addr $I10, rxsubrule599_back
    rx569_cur."!mark_push"(0, rx569_pos, $I10, $P10)
    rx569_pos = $P10."pos"()
    set_addr $I10, rxquantr598_done
    (rx569_rep) = rx569_cur."!mark_commit"($I10)
  rxquantr598_done:
.annotate 'line', 185
  # rx pass
    rx569_cur."!cursor_pass"(rx569_pos, "cclass_elem")
    if_null rx569_debug, debug_580
    rx569_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx569_pos)
  debug_580:
    .return (rx569_cur)
  rx569_restart:
.annotate 'line', 9
    if_null rx569_debug, debug_581
    rx569_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_581:
  rx569_fail:
    (rx569_rep, rx569_pos, $I10, $P10) = rx569_cur."!mark_fail"(0)
    lt rx569_pos, -1, rx569_done
    eq rx569_pos, -1, rx569_fail
    jump $I10
  rx569_done:
    rx569_cur."!cursor_fail"()
    if_null rx569_debug, debug_582
    rx569_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_582:
    .return (rx569_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block577"  :anon :subid("160_1307873292.23355") :method :outer("159_1307873292.23355")
.annotate 'line', 189
    .const 'Sub' $P593 = "163_1307873292.23355" 
    capture_lex $P593
    .const 'Sub' $P588 = "162_1307873292.23355" 
    capture_lex $P588
    .const 'Sub' $P584 = "161_1307873292.23355" 
    capture_lex $P584
    .local string rx579_tgt
    .local int rx579_pos
    .local int rx579_off
    .local int rx579_eos
    .local int rx579_rep
    .local pmc rx579_cur
    .local pmc rx579_debug
    (rx579_cur, rx579_pos, rx579_tgt, $I10) = self."!cursor_start"()
    rx579_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx579_cur
    .local pmc match
    .lex "$/", match
    length rx579_eos, rx579_tgt
    gt rx579_pos, rx579_eos, rx579_done
    set rx579_off, 0
    lt rx579_pos, 2, rx579_start
    sub rx579_off, rx579_pos, 1
    substr rx579_tgt, rx579_tgt, rx579_off
  rx579_start:
    eq $I10, 1, rx579_restart
    if_null rx579_debug, debug_564
    rx579_cur."!cursor_debug"("START", "")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan580_done
    goto rxscan580_scan
  rxscan580_loop:
    (rx579_pos) = rx579_cur."from"()
    inc rx579_pos
    rx579_cur."!cursor_from"(rx579_pos)
    ge rx579_pos, rx579_eos, rxscan580_done
  rxscan580_scan:
    set_addr $I10, rxscan580_loop
    rx579_cur."!mark_push"(0, rx579_pos, $I10)
  rxscan580_done:
  alt581_0:
    set_addr $I10, alt581_1
    rx579_cur."!mark_push"(0, rx579_pos, $I10)
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx579_pos, rx579_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx579_tgt, $I10, rx579_eos
    add rx579_pos, rx579_off, $I11
  # rx literal  "-"
    add $I11, rx579_pos, 1
    gt $I11, rx579_eos, rx579_fail
    sub $I11, rx579_pos, rx579_off
    ord $I11, rx579_tgt, $I11
    ne $I11, 45, rx579_fail
    add rx579_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx579_cur."!cursor_pos"(rx579_pos)
    $P10 = rx579_cur."obs"("- as character range", "..")
    unless $P10, rx579_fail
    rx579_pos = $P10."pos"()
    goto alt581_end
  alt581_1:
.annotate 'line', 191
  # rx charclass_q s r 0..-1
    sub $I10, rx579_pos, rx579_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx579_tgt, $I10, rx579_eos
    add rx579_pos, rx579_off, $I11
  alt582_0:
    set_addr $I10, alt582_1
    rx579_cur."!mark_push"(0, rx579_pos, $I10)
  # rx literal  "\\"
    add $I11, rx579_pos, 1
    gt $I11, rx579_eos, rx579_fail
    sub $I11, rx579_pos, rx579_off
    ord $I11, rx579_tgt, $I11
    ne $I11, 92, rx579_fail
    add rx579_pos, 1
  # rx subrule $P584 subtype=capture negate=
    rx579_cur."!cursor_pos"(rx579_pos)
    .const 'Sub' $P584 = "161_1307873292.23355" 
    capture_lex $P584
    $P10 = rx579_cur.$P584()
    unless $P10, rx579_fail
    rx579_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx579_pos = $P10."pos"()
    goto alt582_end
  alt582_1:
  # rx subrule $P588 subtype=capture negate=
    rx579_cur."!cursor_pos"(rx579_pos)
    .const 'Sub' $P588 = "162_1307873292.23355" 
    capture_lex $P588
    $P10 = rx579_cur.$P588()
    unless $P10, rx579_fail
    rx579_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx579_pos = $P10."pos"()
  alt582_end:
  # rx rxquantr591 ** 0..1
    set_addr $I10, rxquantr591_done
    rx579_cur."!mark_push"(0, rx579_pos, $I10)
  rxquantr591_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx579_pos, rx579_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx579_tgt, $I10, rx579_eos
    add rx579_pos, rx579_off, $I11
  # rx literal  ".."
    add $I11, rx579_pos, 2
    gt $I11, rx579_eos, rx579_fail
    sub $I11, rx579_pos, rx579_off
    substr $S10, rx579_tgt, $I11, 2
    ne $S10, "..", rx579_fail
    add rx579_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx579_pos, rx579_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx579_tgt, $I10, rx579_eos
    add rx579_pos, rx579_off, $I11
  # rx subrule $P593 subtype=capture negate=
    rx579_cur."!cursor_pos"(rx579_pos)
    .const 'Sub' $P593 = "163_1307873292.23355" 
    capture_lex $P593
    $P10 = rx579_cur.$P593()
    unless $P10, rx579_fail
    rx579_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx579_pos = $P10."pos"()
    set_addr $I10, rxquantr591_done
    (rx579_rep) = rx579_cur."!mark_commit"($I10)
  rxquantr591_done:
  alt581_end:
.annotate 'line', 189
  # rx pass
    rx579_cur."!cursor_pass"(rx579_pos, "")
    if_null rx579_debug, debug_577
    rx579_cur."!cursor_debug"("PASS", "", " at pos=", rx579_pos)
  debug_577:
    .return (rx579_cur)
  rx579_restart:
    if_null rx579_debug, debug_578
    rx579_cur."!cursor_debug"("NEXT", "")
  debug_578:
  rx579_fail:
    (rx579_rep, rx579_pos, $I10, $P10) = rx579_cur."!mark_fail"(0)
    lt rx579_pos, -1, rx579_done
    eq rx579_pos, -1, rx579_fail
    jump $I10
  rx579_done:
    rx579_cur."!cursor_fail"()
    if_null rx579_debug, debug_579
    rx579_cur."!cursor_debug"("FAIL", "")
  debug_579:
    .return (rx579_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block583"  :anon :subid("161_1307873292.23355") :method :outer("160_1307873292.23355")
.annotate 'line', 191
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    .local pmc rx585_debug
    (rx585_cur, rx585_pos, rx585_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx585_cur
    .local pmc match
    .lex "$/", match
    length rx585_eos, rx585_tgt
    gt rx585_pos, rx585_eos, rx585_done
    set rx585_off, 0
    lt rx585_pos, 2, rx585_start
    sub rx585_off, rx585_pos, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
    eq $I10, 1, rx585_restart
    if_null rx585_debug, debug_565
    rx585_cur."!cursor_debug"("START", "")
  debug_565:
    $I10 = self.'from'()
    ne $I10, -1, rxscan586_done
    goto rxscan586_scan
  rxscan586_loop:
    (rx585_pos) = rx585_cur."from"()
    inc rx585_pos
    rx585_cur."!cursor_from"(rx585_pos)
    ge rx585_pos, rx585_eos, rxscan586_done
  rxscan586_scan:
    set_addr $I10, rxscan586_loop
    rx585_cur."!mark_push"(0, rx585_pos, $I10)
  rxscan586_done:
  # rx charclass .
    ge rx585_pos, rx585_eos, rx585_fail
    inc rx585_pos
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "")
    if_null rx585_debug, debug_566
    rx585_cur."!cursor_debug"("PASS", "", " at pos=", rx585_pos)
  debug_566:
    .return (rx585_cur)
  rx585_restart:
    if_null rx585_debug, debug_567
    rx585_cur."!cursor_debug"("NEXT", "")
  debug_567:
  rx585_fail:
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    if_null rx585_debug, debug_568
    rx585_cur."!cursor_debug"("FAIL", "")
  debug_568:
    .return (rx585_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block587"  :anon :subid("162_1307873292.23355") :method :outer("160_1307873292.23355")
.annotate 'line', 191
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    .local pmc rx589_debug
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx589_cur
    .local pmc match
    .lex "$/", match
    length rx589_eos, rx589_tgt
    gt rx589_pos, rx589_eos, rx589_done
    set rx589_off, 0
    lt rx589_pos, 2, rx589_start
    sub rx589_off, rx589_pos, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
    eq $I10, 1, rx589_restart
    if_null rx589_debug, debug_569
    rx589_cur."!cursor_debug"("START", "")
  debug_569:
    $I10 = self.'from'()
    ne $I10, -1, rxscan590_done
    goto rxscan590_scan
  rxscan590_loop:
    (rx589_pos) = rx589_cur."from"()
    inc rx589_pos
    rx589_cur."!cursor_from"(rx589_pos)
    ge rx589_pos, rx589_eos, rxscan590_done
  rxscan590_scan:
    set_addr $I10, rxscan590_loop
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
  rxscan590_done:
  # rx enumcharlist negate=1 
    ge rx589_pos, rx589_eos, rx589_fail
    sub $I10, rx589_pos, rx589_off
    substr $S10, rx589_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx589_fail
    inc rx589_pos
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "")
    if_null rx589_debug, debug_570
    rx589_cur."!cursor_debug"("PASS", "", " at pos=", rx589_pos)
  debug_570:
    .return (rx589_cur)
  rx589_restart:
    if_null rx589_debug, debug_571
    rx589_cur."!cursor_debug"("NEXT", "")
  debug_571:
  rx589_fail:
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    if_null rx589_debug, debug_572
    rx589_cur."!cursor_debug"("FAIL", "")
  debug_572:
    .return (rx589_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block592"  :anon :subid("163_1307873292.23355") :method :outer("160_1307873292.23355")
.annotate 'line', 191
    .local string rx594_tgt
    .local int rx594_pos
    .local int rx594_off
    .local int rx594_eos
    .local int rx594_rep
    .local pmc rx594_cur
    .local pmc rx594_debug
    (rx594_cur, rx594_pos, rx594_tgt, $I10) = self."!cursor_start"()
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
    if_null rx594_debug, debug_573
    rx594_cur."!cursor_debug"("START", "")
  debug_573:
    $I10 = self.'from'()
    ne $I10, -1, rxscan595_done
    goto rxscan595_scan
  rxscan595_loop:
    (rx594_pos) = rx594_cur."from"()
    inc rx594_pos
    rx594_cur."!cursor_from"(rx594_pos)
    ge rx594_pos, rx594_eos, rxscan595_done
  rxscan595_scan:
    set_addr $I10, rxscan595_loop
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxscan595_done:
  # rx charclass .
    ge rx594_pos, rx594_eos, rx594_fail
    inc rx594_pos
  # rx pass
    rx594_cur."!cursor_pass"(rx594_pos, "")
    if_null rx594_debug, debug_574
    rx594_cur."!cursor_debug"("PASS", "", " at pos=", rx594_pos)
  debug_574:
    .return (rx594_cur)
  rx594_restart:
    if_null rx594_debug, debug_575
    rx594_cur."!cursor_debug"("NEXT", "")
  debug_575:
  rx594_fail:
    (rx594_rep, rx594_pos, $I10, $P10) = rx594_cur."!mark_fail"(0)
    lt rx594_pos, -1, rx594_done
    eq rx594_pos, -1, rx594_fail
    jump $I10
  rx594_done:
    rx594_cur."!cursor_fail"()
    if_null rx594_debug, debug_576
    rx594_cur."!cursor_debug"("FAIL", "")
  debug_576:
    .return (rx594_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("164_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P601, "ResizablePMCArray"
    push $P601, ""
    push $P601, "-"
    push $P601, "+"
    .return ($P601)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("165_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .const 'Sub' $P608 = "166_1307873292.23355" 
    capture_lex $P608
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    .local pmc rx603_debug
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    rx603_cur."!cursor_caparray"("n")
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
    if_null rx603_debug, debug_583
    rx603_cur."!cursor_debug"("START", "mod_internal")
  debug_583:
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
.annotate 'line', 200
    set_addr $I10, alt605_1
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 58, rx603_fail
    add rx603_pos, 1
  # rx rxquantr606 ** 1..1
    set_addr $I10, rxquantr606_done
    rx603_cur."!mark_push"(0, -1, $I10)
  rxquantr606_loop:
  # rx subrule $P608 subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    .const 'Sub' $P608 = "166_1307873292.23355" 
    capture_lex $P608
    $P10 = rx603_cur.$P608()
    unless $P10, rx603_fail
    goto rxsubrule612_pass
  rxsubrule612_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx603_fail
  rxsubrule612_pass:
    set_addr $I10, rxsubrule612_back
    rx603_cur."!mark_push"(0, rx603_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx603_pos = $P10."pos"()
    set_addr $I10, rxquantr606_done
    (rx603_rep) = rx603_cur."!mark_commit"($I10)
  rxquantr606_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."mod_ident"()
    unless $P10, rx603_fail
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx603_pos = $P10."pos"()
  # rxanchor rwb
    le rx603_pos, 0, rx603_fail
    sub $I10, rx603_pos, rx603_off
    is_cclass $I11, .CCLASS_WORD, rx603_tgt, $I10
    if $I11, rx603_fail
    dec $I10
    is_cclass $I11, .CCLASS_WORD, rx603_tgt, $I10
    unless $I11, rx603_fail
    goto alt605_end
  alt605_1:
.annotate 'line', 202
  # rx literal  ":"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 58, rx603_fail
    add rx603_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."mod_ident"()
    unless $P10, rx603_fail
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx603_pos = $P10."pos"()
  # rx rxquantr613 ** 0..1
    set_addr $I10, rxquantr613_done
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  rxquantr613_loop:
  # rx literal  "("
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 40, rx603_fail
    add rx603_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_614_fail
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx603_pos, rx603_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx603_tgt, $I10, rx603_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx603_fail
    add rx603_pos, rx603_off, $I11
    set_addr $I10, rxcap_614_fail
    ($I12, $I11) = rx603_cur."!mark_peek"($I10)
    rx603_cur."!cursor_pos"($I11)
    ($P10) = rx603_cur."!cursor_start"()
    $P10."!cursor_pass"(rx603_pos, "")
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_614_done
  rxcap_614_fail:
    goto rx603_fail
  rxcap_614_done:
  # rx literal  ")"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 41, rx603_fail
    add rx603_pos, 1
    set_addr $I10, rxquantr613_done
    (rx603_rep) = rx603_cur."!mark_commit"($I10)
  rxquantr613_done:
  alt605_end:
.annotate 'line', 199
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "mod_internal")
    if_null rx603_debug, debug_588
    rx603_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx603_pos)
  debug_588:
    .return (rx603_cur)
  rx603_restart:
.annotate 'line', 9
    if_null rx603_debug, debug_589
    rx603_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_589:
  rx603_fail:
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    if_null rx603_debug, debug_590
    rx603_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_590:
    .return (rx603_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block607"  :anon :subid("166_1307873292.23355") :method :outer("165_1307873292.23355")
.annotate 'line', 201
    .local string rx609_tgt
    .local int rx609_pos
    .local int rx609_off
    .local int rx609_eos
    .local int rx609_rep
    .local pmc rx609_cur
    .local pmc rx609_debug
    (rx609_cur, rx609_pos, rx609_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx609_cur
    .local pmc match
    .lex "$/", match
    length rx609_eos, rx609_tgt
    gt rx609_pos, rx609_eos, rx609_done
    set rx609_off, 0
    lt rx609_pos, 2, rx609_start
    sub rx609_off, rx609_pos, 1
    substr rx609_tgt, rx609_tgt, rx609_off
  rx609_start:
    eq $I10, 1, rx609_restart
    if_null rx609_debug, debug_584
    rx609_cur."!cursor_debug"("START", "")
  debug_584:
    $I10 = self.'from'()
    ne $I10, -1, rxscan610_done
    goto rxscan610_scan
  rxscan610_loop:
    (rx609_pos) = rx609_cur."from"()
    inc rx609_pos
    rx609_cur."!cursor_from"(rx609_pos)
    ge rx609_pos, rx609_eos, rxscan610_done
  rxscan610_scan:
    set_addr $I10, rxscan610_loop
    rx609_cur."!mark_push"(0, rx609_pos, $I10)
  rxscan610_done:
  alt611_0:
    set_addr $I10, alt611_1
    rx609_cur."!mark_push"(0, rx609_pos, $I10)
  # rx literal  "!"
    add $I11, rx609_pos, 1
    gt $I11, rx609_eos, rx609_fail
    sub $I11, rx609_pos, rx609_off
    ord $I11, rx609_tgt, $I11
    ne $I11, 33, rx609_fail
    add rx609_pos, 1
    goto alt611_end
  alt611_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx609_pos, rx609_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx609_tgt, $I10, rx609_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx609_fail
    add rx609_pos, rx609_off, $I11
  alt611_end:
  # rx pass
    rx609_cur."!cursor_pass"(rx609_pos, "")
    if_null rx609_debug, debug_585
    rx609_cur."!cursor_debug"("PASS", "", " at pos=", rx609_pos)
  debug_585:
    .return (rx609_cur)
  rx609_restart:
    if_null rx609_debug, debug_586
    rx609_cur."!cursor_debug"("NEXT", "")
  debug_586:
  rx609_fail:
    (rx609_rep, rx609_pos, $I10, $P10) = rx609_cur."!mark_fail"(0)
    lt rx609_pos, -1, rx609_done
    eq rx609_pos, -1, rx609_fail
    jump $I10
  rx609_done:
    rx609_cur."!cursor_fail"()
    if_null rx609_debug, debug_587
    rx609_cur."!cursor_debug"("FAIL", "")
  debug_587:
    .return (rx609_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("167_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    $P616 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P617, "ResizablePMCArray"
    push $P617, $P616
    push $P617, ":"
    .return ($P617)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("168_1307873292.23355")
    .param pmc param_619
.annotate 'line', 206
    .lex "self", param_619
    $P620 = param_619."!protoregex"("mod_ident")
    .return ($P620)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("169_1307873292.23355")
    .param pmc param_622
.annotate 'line', 206
    .lex "self", param_622
    $P623 = param_622."!PREFIX__!protoregex"("mod_ident")
    .return ($P623)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("170_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx625_tgt
    .local int rx625_pos
    .local int rx625_off
    .local int rx625_eos
    .local int rx625_rep
    .local pmc rx625_cur
    .local pmc rx625_debug
    (rx625_cur, rx625_pos, rx625_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx625_cur
    .local pmc match
    .lex "$/", match
    length rx625_eos, rx625_tgt
    gt rx625_pos, rx625_eos, rx625_done
    set rx625_off, 0
    lt rx625_pos, 2, rx625_start
    sub rx625_off, rx625_pos, 1
    substr rx625_tgt, rx625_tgt, rx625_off
  rx625_start:
    eq $I10, 1, rx625_restart
    if_null rx625_debug, debug_591
    rx625_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_591:
    $I10 = self.'from'()
    ne $I10, -1, rxscan626_done
    goto rxscan626_scan
  rxscan626_loop:
    (rx625_pos) = rx625_cur."from"()
    inc rx625_pos
    rx625_cur."!cursor_from"(rx625_pos)
    ge rx625_pos, rx625_eos, rxscan626_done
  rxscan626_scan:
    set_addr $I10, rxscan626_loop
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  rxscan626_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_627_fail
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  # rx literal  "i"
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    ord $I11, rx625_tgt, $I11
    ne $I11, 105, rx625_fail
    add rx625_pos, 1
    set_addr $I10, rxcap_627_fail
    ($I12, $I11) = rx625_cur."!mark_peek"($I10)
    rx625_cur."!cursor_pos"($I11)
    ($P10) = rx625_cur."!cursor_start"()
    $P10."!cursor_pass"(rx625_pos, "")
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_627_done
  rxcap_627_fail:
    goto rx625_fail
  rxcap_627_done:
  # rx rxquantr628 ** 0..1
    set_addr $I10, rxquantr628_done
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  rxquantr628_loop:
  # rx literal  "gnorecase"
    add $I11, rx625_pos, 9
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 9
    ne $S10, "gnorecase", rx625_fail
    add rx625_pos, 9
    set_addr $I10, rxquantr628_done
    (rx625_rep) = rx625_cur."!mark_commit"($I10)
  rxquantr628_done:
  # rx pass
    rx625_cur."!cursor_pass"(rx625_pos, "mod_ident:sym<ignorecase>")
    if_null rx625_debug, debug_592
    rx625_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx625_pos)
  debug_592:
    .return (rx625_cur)
  rx625_restart:
.annotate 'line', 9
    if_null rx625_debug, debug_593
    rx625_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_593:
  rx625_fail:
    (rx625_rep, rx625_pos, $I10, $P10) = rx625_cur."!mark_fail"(0)
    lt rx625_pos, -1, rx625_done
    eq rx625_pos, -1, rx625_fail
    jump $I10
  rx625_done:
    rx625_cur."!cursor_fail"()
    if_null rx625_debug, debug_594
    rx625_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_594:
    .return (rx625_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("171_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P630, "ResizablePMCArray"
    push $P630, "i"
    .return ($P630)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("172_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx632_tgt
    .local int rx632_pos
    .local int rx632_off
    .local int rx632_eos
    .local int rx632_rep
    .local pmc rx632_cur
    .local pmc rx632_debug
    (rx632_cur, rx632_pos, rx632_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx632_cur
    .local pmc match
    .lex "$/", match
    length rx632_eos, rx632_tgt
    gt rx632_pos, rx632_eos, rx632_done
    set rx632_off, 0
    lt rx632_pos, 2, rx632_start
    sub rx632_off, rx632_pos, 1
    substr rx632_tgt, rx632_tgt, rx632_off
  rx632_start:
    eq $I10, 1, rx632_restart
    if_null rx632_debug, debug_595
    rx632_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_595:
    $I10 = self.'from'()
    ne $I10, -1, rxscan633_done
    goto rxscan633_scan
  rxscan633_loop:
    (rx632_pos) = rx632_cur."from"()
    inc rx632_pos
    rx632_cur."!cursor_from"(rx632_pos)
    ge rx632_pos, rx632_eos, rxscan633_done
  rxscan633_scan:
    set_addr $I10, rxscan633_loop
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  rxscan633_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_634_fail
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  # rx literal  "r"
    add $I11, rx632_pos, 1
    gt $I11, rx632_eos, rx632_fail
    sub $I11, rx632_pos, rx632_off
    ord $I11, rx632_tgt, $I11
    ne $I11, 114, rx632_fail
    add rx632_pos, 1
    set_addr $I10, rxcap_634_fail
    ($I12, $I11) = rx632_cur."!mark_peek"($I10)
    rx632_cur."!cursor_pos"($I11)
    ($P10) = rx632_cur."!cursor_start"()
    $P10."!cursor_pass"(rx632_pos, "")
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_634_done
  rxcap_634_fail:
    goto rx632_fail
  rxcap_634_done:
  # rx rxquantr635 ** 0..1
    set_addr $I10, rxquantr635_done
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  rxquantr635_loop:
  # rx literal  "atchet"
    add $I11, rx632_pos, 6
    gt $I11, rx632_eos, rx632_fail
    sub $I11, rx632_pos, rx632_off
    substr $S10, rx632_tgt, $I11, 6
    ne $S10, "atchet", rx632_fail
    add rx632_pos, 6
    set_addr $I10, rxquantr635_done
    (rx632_rep) = rx632_cur."!mark_commit"($I10)
  rxquantr635_done:
  # rx pass
    rx632_cur."!cursor_pass"(rx632_pos, "mod_ident:sym<ratchet>")
    if_null rx632_debug, debug_596
    rx632_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx632_pos)
  debug_596:
    .return (rx632_cur)
  rx632_restart:
.annotate 'line', 9
    if_null rx632_debug, debug_597
    rx632_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_597:
  rx632_fail:
    (rx632_rep, rx632_pos, $I10, $P10) = rx632_cur."!mark_fail"(0)
    lt rx632_pos, -1, rx632_done
    eq rx632_pos, -1, rx632_fail
    jump $I10
  rx632_done:
    rx632_cur."!cursor_fail"()
    if_null rx632_debug, debug_598
    rx632_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_598:
    .return (rx632_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("173_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P637, "ResizablePMCArray"
    push $P637, "r"
    .return ($P637)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("174_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    .local string rx639_tgt
    .local int rx639_pos
    .local int rx639_off
    .local int rx639_eos
    .local int rx639_rep
    .local pmc rx639_cur
    .local pmc rx639_debug
    (rx639_cur, rx639_pos, rx639_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx639_cur
    .local pmc match
    .lex "$/", match
    length rx639_eos, rx639_tgt
    gt rx639_pos, rx639_eos, rx639_done
    set rx639_off, 0
    lt rx639_pos, 2, rx639_start
    sub rx639_off, rx639_pos, 1
    substr rx639_tgt, rx639_tgt, rx639_off
  rx639_start:
    eq $I10, 1, rx639_restart
    if_null rx639_debug, debug_599
    rx639_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_599:
    $I10 = self.'from'()
    ne $I10, -1, rxscan640_done
    goto rxscan640_scan
  rxscan640_loop:
    (rx639_pos) = rx639_cur."from"()
    inc rx639_pos
    rx639_cur."!cursor_from"(rx639_pos)
    ge rx639_pos, rx639_eos, rxscan640_done
  rxscan640_scan:
    set_addr $I10, rxscan640_loop
    rx639_cur."!mark_push"(0, rx639_pos, $I10)
  rxscan640_done:
.annotate 'line', 209
  # rx subcapture "sym"
    set_addr $I10, rxcap_641_fail
    rx639_cur."!mark_push"(0, rx639_pos, $I10)
  # rx literal  "s"
    add $I11, rx639_pos, 1
    gt $I11, rx639_eos, rx639_fail
    sub $I11, rx639_pos, rx639_off
    ord $I11, rx639_tgt, $I11
    ne $I11, 115, rx639_fail
    add rx639_pos, 1
    set_addr $I10, rxcap_641_fail
    ($I12, $I11) = rx639_cur."!mark_peek"($I10)
    rx639_cur."!cursor_pos"($I11)
    ($P10) = rx639_cur."!cursor_start"()
    $P10."!cursor_pass"(rx639_pos, "")
    rx639_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_641_done
  rxcap_641_fail:
    goto rx639_fail
  rxcap_641_done:
  # rx rxquantr642 ** 0..1
    set_addr $I10, rxquantr642_done
    rx639_cur."!mark_push"(0, rx639_pos, $I10)
  rxquantr642_loop:
  # rx literal  "igspace"
    add $I11, rx639_pos, 7
    gt $I11, rx639_eos, rx639_fail
    sub $I11, rx639_pos, rx639_off
    substr $S10, rx639_tgt, $I11, 7
    ne $S10, "igspace", rx639_fail
    add rx639_pos, 7
    set_addr $I10, rxquantr642_done
    (rx639_rep) = rx639_cur."!mark_commit"($I10)
  rxquantr642_done:
  # rx pass
    rx639_cur."!cursor_pass"(rx639_pos, "mod_ident:sym<sigspace>")
    if_null rx639_debug, debug_600
    rx639_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx639_pos)
  debug_600:
    .return (rx639_cur)
  rx639_restart:
.annotate 'line', 9
    if_null rx639_debug, debug_601
    rx639_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_601:
  rx639_fail:
    (rx639_rep, rx639_pos, $I10, $P10) = rx639_cur."!mark_fail"(0)
    lt rx639_pos, -1, rx639_done
    eq rx639_pos, -1, rx639_fail
    jump $I10
  rx639_done:
    rx639_cur."!cursor_fail"()
    if_null rx639_debug, debug_602
    rx639_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_602:
    .return (rx639_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("175_1307873292.23355") :method :outer("12_1307873292.23355")
.annotate 'line', 9
    new $P644, "ResizablePMCArray"
    push $P644, "s"
    .return ($P644)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block645"  :subid("176_1307873292.23355") :outer("10_1307873292.23355")
.annotate 'line', 213
    .const 'Sub' $P2411 = "257_1307873292.23355" 
    capture_lex $P2411
    .const 'Sub' $P2393 = "256_1307873292.23355" 
    capture_lex $P2393
    .const 'Sub' $P2361 = "255_1307873292.23355" 
    capture_lex $P2361
    .const 'Sub' $P2288 = "251_1307873292.23355" 
    capture_lex $P2288
    .const 'Sub' $P2210 = "249_1307873292.23355" 
    capture_lex $P2210
    .const 'Sub' $P2130 = "246_1307873292.23355" 
    capture_lex $P2130
    .const 'Sub' $P2118 = "245_1307873292.23355" 
    capture_lex $P2118
    .const 'Sub' $P2093 = "244_1307873292.23355" 
    capture_lex $P2093
    .const 'Sub' $P2077 = "243_1307873292.23355" 
    capture_lex $P2077
    .const 'Sub' $P2062 = "242_1307873292.23355" 
    capture_lex $P2062
    .const 'Sub' $P2048 = "241_1307873292.23355" 
    capture_lex $P2048
    .const 'Sub' $P2009 = "240_1307873292.23355" 
    capture_lex $P2009
    .const 'Sub' $P1970 = "239_1307873292.23355" 
    capture_lex $P1970
    .const 'Sub' $P1953 = "238_1307873292.23355" 
    capture_lex $P1953
    .const 'Sub' $P1936 = "237_1307873292.23355" 
    capture_lex $P1936
    .const 'Sub' $P1919 = "236_1307873292.23355" 
    capture_lex $P1919
    .const 'Sub' $P1902 = "235_1307873292.23355" 
    capture_lex $P1902
    .const 'Sub' $P1885 = "234_1307873292.23355" 
    capture_lex $P1885
    .const 'Sub' $P1868 = "233_1307873292.23355" 
    capture_lex $P1868
    .const 'Sub' $P1851 = "232_1307873292.23355" 
    capture_lex $P1851
    .const 'Sub' $P1826 = "231_1307873292.23355" 
    capture_lex $P1826
    .const 'Sub' $P1807 = "230_1307873292.23355" 
    capture_lex $P1807
    .const 'Sub' $P1745 = "229_1307873292.23355" 
    capture_lex $P1745
    .const 'Sub' $P1723 = "228_1307873292.23355" 
    capture_lex $P1723
    .const 'Sub' $P1694 = "227_1307873292.23355" 
    capture_lex $P1694
    .const 'Sub' $P1686 = "226_1307873292.23355" 
    capture_lex $P1686
    .const 'Sub' $P1678 = "225_1307873292.23355" 
    capture_lex $P1678
    .const 'Sub' $P1670 = "224_1307873292.23355" 
    capture_lex $P1670
    .const 'Sub' $P1657 = "223_1307873292.23355" 
    capture_lex $P1657
    .const 'Sub' $P1644 = "222_1307873292.23355" 
    capture_lex $P1644
    .const 'Sub' $P1631 = "221_1307873292.23355" 
    capture_lex $P1631
    .const 'Sub' $P1618 = "220_1307873292.23355" 
    capture_lex $P1618
    .const 'Sub' $P1605 = "219_1307873292.23355" 
    capture_lex $P1605
    .const 'Sub' $P1592 = "218_1307873292.23355" 
    capture_lex $P1592
    .const 'Sub' $P1579 = "217_1307873292.23355" 
    capture_lex $P1579
    .const 'Sub' $P1566 = "216_1307873292.23355" 
    capture_lex $P1566
    .const 'Sub' $P1532 = "215_1307873292.23355" 
    capture_lex $P1532
    .const 'Sub' $P1498 = "214_1307873292.23355" 
    capture_lex $P1498
    .const 'Sub' $P1479 = "213_1307873292.23355" 
    capture_lex $P1479
    .const 'Sub' $P1471 = "212_1307873292.23355" 
    capture_lex $P1471
    .const 'Sub' $P1450 = "211_1307873292.23355" 
    capture_lex $P1450
    .const 'Sub' $P1359 = "209_1307873292.23355" 
    capture_lex $P1359
    .const 'Sub' $P1341 = "208_1307873292.23355" 
    capture_lex $P1341
    .const 'Sub' $P1325 = "207_1307873292.23355" 
    capture_lex $P1325
    .const 'Sub' $P1309 = "206_1307873292.23355" 
    capture_lex $P1309
    .const 'Sub' $P1280 = "205_1307873292.23355" 
    capture_lex $P1280
    .const 'Sub' $P1229 = "203_1307873292.23355" 
    capture_lex $P1229
    .const 'Sub' $P1154 = "201_1307873292.23355" 
    capture_lex $P1154
    .const 'Sub' $P1116 = "199_1307873292.23355" 
    capture_lex $P1116
    .const 'Sub' $P1050 = "196_1307873292.23355" 
    capture_lex $P1050
    .const 'Sub' $P1037 = "195_1307873292.23355" 
    capture_lex $P1037
    .const 'Sub' $P1010 = "193_1307873292.23355" 
    capture_lex $P1010
    .const 'Sub' $P995 = "192_1307873292.23355" 
    capture_lex $P995
    .const 'Sub' $P954 = "191_1307873292.23355" 
    capture_lex $P954
    .const 'Sub' $P702 = "178_1307873292.23355" 
    capture_lex $P702
    .const 'Sub' $P647 = "177_1307873292.23355" 
    capture_lex $P647
.annotate 'line', 720
    .const 'Sub' $P647 = "177_1307873292.23355" 
    newclosure $P698, $P647
    .lex "buildsub", $P698
.annotate 'line', 213
    find_lex $P699, "buildsub"
    find_lex $P700, "$?PACKAGE"
    get_who $P701, $P700
    set $P701["buildsub"], $P699
.annotate 'line', 738
    .const 'Sub' $P702 = "178_1307873292.23355" 
    newclosure $P953, $P702
    .lex "capnames", $P953
.annotate 'line', 804
    .const 'Sub' $P954 = "191_1307873292.23355" 
    newclosure $P983, $P954
    .lex "backmod", $P983
.annotate 'line', 213
    .lex "$?PACKAGE", $P984
    .lex "$?CLASS", $P985
.annotate 'line', 220

            $P986 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P986, $P0
        
    find_lex $P987, "$?PACKAGE"
    get_who $P988, $P987
    set $P988["@MODIFIERS"], $P986
.annotate 'line', 213
    find_lex $P989, "$?PACKAGE"
    get_who $P990, $P989
    set $P991, $P990["@MODIFIERS"]
    unless_null $P991, vivify_720
    $P991 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    find_lex $P992, "$?PACKAGE"
    get_who $P993, $P992
    set $P994, $P993["$REGEXNAME"]
    unless_null $P994, vivify_721
    new $P994, "Undef"
  vivify_721:
.annotate 'line', 713
    find_lex $P2390, "buildsub"
    find_lex $P2391, "capnames"
    find_lex $P2392, "backmod"
.annotate 'line', 817
    .const 'Sub' $P2411 = "257_1307873292.23355" 
    newclosure $P2429, $P2411
.annotate 'line', 213
    .return ($P2429)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("177_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_648
    .param pmc param_649 :optional
    .param int has_param_649 :opt_flag
.annotate 'line', 720
    .lex "$rpast", param_648
    if has_param_649, optparam_603
    get_hll_global $P650, "GLOBAL"
    nqp_get_package_through_who $P651, $P650, "PAST"
    get_who $P652, $P651
    set $P653, $P652["Block"]
    $P654 = $P653."new"()
    set param_649, $P654
  optparam_603:
    .lex "$block", param_649
.annotate 'line', 721
    $P655 = root_new ['parrot';'Hash']
    .lex "%capnames", $P655
    find_lex $P656, "$rpast"
    unless_null $P656, vivify_604
    new $P656, "Undef"
  vivify_604:
    $P657 = "capnames"($P656, 0)
    store_lex "%capnames", $P657
.annotate 'line', 722
    new $P658, "Integer"
    assign $P658, 0
    find_lex $P659, "%capnames"
    unless_null $P659, vivify_605
    $P659 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P659
  vivify_605:
    set $P659[""], $P658
.annotate 'line', 723
    get_hll_global $P660, "GLOBAL"
    nqp_get_package_through_who $P661, $P660, "PAST"
    get_who $P662, $P661
    set $P663, $P662["Regex"]
.annotate 'line', 724
    get_hll_global $P664, "GLOBAL"
    nqp_get_package_through_who $P665, $P664, "PAST"
    get_who $P666, $P665
    set $P667, $P666["Regex"]
    $P668 = $P667."new"("scan" :named("pasttype"))
    find_lex $P669, "$rpast"
    unless_null $P669, vivify_606
    new $P669, "Undef"
  vivify_606:
.annotate 'line', 726
    get_hll_global $P670, "GLOBAL"
    nqp_get_package_through_who $P671, $P670, "PAST"
    get_who $P672, $P671
    set $P673, $P672["Regex"]
.annotate 'line', 727
    find_lex $P676, "$?PACKAGE"
    get_who $P677, $P676
    set $P678, $P677["@MODIFIERS"]
    unless_null $P678, vivify_607
    $P678 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    set $P679, $P678[0]
    unless_null $P679, vivify_608
    $P679 = root_new ['parrot';'Hash']
  vivify_608:
    set $P680, $P679["r"]
    unless_null $P680, vivify_609
    new $P680, "Undef"
  vivify_609:
    if $P680, if_675
    new $P682, "String"
    assign $P682, "g"
    set $P674, $P682
    goto if_675_end
  if_675:
    new $P681, "String"
    assign $P681, "r"
    set $P674, $P681
  if_675_end:
    $P683 = $P673."new"("pass" :named("pasttype"), $P674 :named("backtrack"))
.annotate 'line', 726
    find_lex $P684, "%capnames"
    unless_null $P684, vivify_610
    $P684 = root_new ['parrot';'Hash']
  vivify_610:
    $P685 = $P663."new"($P668, $P669, $P683, "concat" :named("pasttype"), $P684 :named("capnames"))
.annotate 'line', 723
    store_lex "$rpast", $P685
.annotate 'line', 731
    find_lex $P687, "$block"
    unless_null $P687, vivify_611
    new $P687, "Undef"
  vivify_611:
    $P688 = $P687."symbol"(unicode:"$\x{a2}")
    if $P688, unless_686_end
    find_lex $P689, "$block"
    unless_null $P689, vivify_612
    new $P689, "Undef"
  vivify_612:
    $P689."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_686_end:
.annotate 'line', 732
    find_lex $P691, "$block"
    unless_null $P691, vivify_613
    new $P691, "Undef"
  vivify_613:
    $P692 = $P691."symbol"("$/")
    if $P692, unless_690_end
    find_lex $P693, "$block"
    unless_null $P693, vivify_614
    new $P693, "Undef"
  vivify_614:
    $P693."symbol"("$/", "lexical" :named("scope"))
  unless_690_end:
.annotate 'line', 733
    find_lex $P694, "$block"
    unless_null $P694, vivify_615
    new $P694, "Undef"
  vivify_615:
    find_lex $P695, "$rpast"
    unless_null $P695, vivify_616
    new $P695, "Undef"
  vivify_616:
    $P694."push"($P695)
.annotate 'line', 734
    find_lex $P696, "$block"
    unless_null $P696, vivify_617
    new $P696, "Undef"
  vivify_617:
    $P696."blocktype"("method")
    find_lex $P697, "$block"
    unless_null $P697, vivify_618
    new $P697, "Undef"
  vivify_618:
.annotate 'line', 720
    .return ($P697)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("178_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_703
    .param pmc param_704
.annotate 'line', 738
    .const 'Sub' $P929 = "189_1307873292.23355" 
    capture_lex $P929
    .const 'Sub' $P866 = "186_1307873292.23355" 
    capture_lex $P866
    .const 'Sub' $P824 = "184_1307873292.23355" 
    capture_lex $P824
    .const 'Sub' $P782 = "182_1307873292.23355" 
    capture_lex $P782
    .const 'Sub' $P715 = "179_1307873292.23355" 
    capture_lex $P715
    .lex "$ast", param_703
    .lex "$count", param_704
.annotate 'line', 739
    $P705 = root_new ['parrot';'Hash']
    .lex "%capnames", $P705
.annotate 'line', 740
    new $P706, "Undef"
    .lex "$pasttype", $P706
.annotate 'line', 738
    find_lex $P707, "%capnames"
    unless_null $P707, vivify_619
    $P707 = root_new ['parrot';'Hash']
  vivify_619:
.annotate 'line', 740
    find_lex $P708, "$ast"
    unless_null $P708, vivify_620
    new $P708, "Undef"
  vivify_620:
    $P709 = $P708."pasttype"()
    store_lex "$pasttype", $P709
.annotate 'line', 741
    find_lex $P711, "$pasttype"
    unless_null $P711, vivify_621
    new $P711, "Undef"
  vivify_621:
    set $S712, $P711
    iseq $I713, $S712, "alt"
    if $I713, if_710
.annotate 'line', 754
    find_lex $P773, "$pasttype"
    unless_null $P773, vivify_622
    new $P773, "Undef"
  vivify_622:
    set $S774, $P773
    iseq $I775, $S774, "concat"
    if $I775, if_772
.annotate 'line', 763
    find_lex $P817, "$pasttype"
    unless_null $P817, vivify_623
    new $P817, "Undef"
  vivify_623:
    set $S818, $P817
    iseq $I819, $S818, "subrule"
    if $I819, if_816
    new $P815, 'Integer'
    set $P815, $I819
    goto if_816_end
  if_816:
    find_lex $P820, "$ast"
    unless_null $P820, vivify_624
    new $P820, "Undef"
  vivify_624:
    $S821 = $P820."subtype"()
    iseq $I822, $S821, "capture"
    new $P815, 'Integer'
    set $P815, $I822
  if_816_end:
    if $P815, if_814
.annotate 'line', 776
    find_lex $P862, "$pasttype"
    unless_null $P862, vivify_625
    new $P862, "Undef"
  vivify_625:
    set $S863, $P862
    iseq $I864, $S863, "subcapture"
    if $I864, if_861
.annotate 'line', 793
    find_lex $P925, "$pasttype"
    unless_null $P925, vivify_626
    new $P925, "Undef"
  vivify_626:
    set $S926, $P925
    iseq $I927, $S926, "quant"
    unless $I927, if_924_end
    .const 'Sub' $P929 = "189_1307873292.23355" 
    capture_lex $P929
    $P929()
  if_924_end:
    goto if_861_end
  if_861:
.annotate 'line', 776
    .const 'Sub' $P866 = "186_1307873292.23355" 
    capture_lex $P866
    $P866()
  if_861_end:
    goto if_814_end
  if_814:
.annotate 'line', 763
    .const 'Sub' $P824 = "184_1307873292.23355" 
    capture_lex $P824
    $P824()
  if_814_end:
    goto if_772_end
  if_772:
.annotate 'line', 755
    find_lex $P777, "$ast"
    unless_null $P777, vivify_671
    new $P777, "Undef"
  vivify_671:
    $P778 = $P777."list"()
    defined $I779, $P778
    unless $I779, for_undef_672
    iter $P776, $P778
    new $P812, 'ExceptionHandler'
    set_label $P812, loop811_handler
    $P812."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P812
  loop811_test:
    unless $P776, loop811_done
    shift $P780, $P776
  loop811_redo:
    .const 'Sub' $P782 = "182_1307873292.23355" 
    capture_lex $P782
    $P782($P780)
  loop811_next:
    goto loop811_test
  loop811_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P813, exception, 'type'
    eq $P813, .CONTROL_LOOP_NEXT, loop811_next
    eq $P813, .CONTROL_LOOP_REDO, loop811_redo
  loop811_done:
    pop_eh 
  for_undef_672:
  if_772_end:
.annotate 'line', 754
    goto if_710_end
  if_710:
.annotate 'line', 741
    .const 'Sub' $P715 = "179_1307873292.23355" 
    capture_lex $P715
    $P715()
  if_710_end:
.annotate 'line', 800
    find_lex $P950, "$count"
    unless_null $P950, vivify_708
    new $P950, "Undef"
  vivify_708:
    find_lex $P951, "%capnames"
    unless_null $P951, vivify_709
    $P951 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P951
  vivify_709:
    set $P951[""], $P950
    find_lex $P952, "%capnames"
    unless_null $P952, vivify_710
    $P952 = root_new ['parrot';'Hash']
  vivify_710:
.annotate 'line', 738
    .return ($P952)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block928"  :anon :subid("189_1307873292.23355") :outer("178_1307873292.23355")
.annotate 'line', 793
    .const 'Sub' $P940 = "190_1307873292.23355" 
    capture_lex $P940
.annotate 'line', 794
    $P930 = root_new ['parrot';'Hash']
    .lex "%astcap", $P930
    find_lex $P931, "$ast"
    unless_null $P931, vivify_627
    $P931 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    set $P932, $P931[0]
    unless_null $P932, vivify_628
    new $P932, "Undef"
  vivify_628:
    find_lex $P933, "$count"
    unless_null $P933, vivify_629
    new $P933, "Undef"
  vivify_629:
    $P934 = "capnames"($P932, $P933)
    store_lex "%astcap", $P934
.annotate 'line', 795
    find_lex $P936, "%astcap"
    unless_null $P936, vivify_630
    $P936 = root_new ['parrot';'Hash']
  vivify_630:
    defined $I937, $P936
    unless $I937, for_undef_631
    iter $P935, $P936
    new $P946, 'ExceptionHandler'
    set_label $P946, loop945_handler
    $P946."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P946
  loop945_test:
    unless $P935, loop945_done
    shift $P938, $P935
  loop945_redo:
    .const 'Sub' $P940 = "190_1307873292.23355" 
    capture_lex $P940
    $P940($P938)
  loop945_next:
    goto loop945_test
  loop945_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P947, exception, 'type'
    eq $P947, .CONTROL_LOOP_NEXT, loop945_next
    eq $P947, .CONTROL_LOOP_REDO, loop945_redo
  loop945_done:
    pop_eh 
  for_undef_631:
.annotate 'line', 798
    find_lex $P948, "%astcap"
    unless_null $P948, vivify_634
    $P948 = root_new ['parrot';'Hash']
  vivify_634:
    set $P949, $P948[""]
    unless_null $P949, vivify_635
    new $P949, "Undef"
  vivify_635:
    store_lex "$count", $P949
.annotate 'line', 793
    .return ($P949)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block939"  :anon :subid("190_1307873292.23355") :outer("189_1307873292.23355")
    .param pmc param_941
.annotate 'line', 795
    .lex "$_", param_941
.annotate 'line', 796
    new $P942, "Integer"
    assign $P942, 2
    find_lex $P943, "$_"
    unless_null $P943, vivify_632
    new $P943, "Undef"
  vivify_632:
    find_lex $P944, "%capnames"
    unless_null $P944, vivify_633
    $P944 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P944
  vivify_633:
    set $P944[$P943], $P942
.annotate 'line', 795
    .return ($P942)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block865"  :anon :subid("186_1307873292.23355") :outer("178_1307873292.23355")
.annotate 'line', 776
    .const 'Sub' $P906 = "188_1307873292.23355" 
    capture_lex $P906
    .const 'Sub' $P878 = "187_1307873292.23355" 
    capture_lex $P878
.annotate 'line', 777
    new $P867, "Undef"
    .lex "$name", $P867
.annotate 'line', 778
    $P868 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P868
.annotate 'line', 787
    $P869 = root_new ['parrot';'Hash']
    .lex "%x", $P869
.annotate 'line', 777
    find_lex $P870, "$ast"
    unless_null $P870, vivify_636
    new $P870, "Undef"
  vivify_636:
    $P871 = $P870."name"()
    store_lex "$name", $P871
.annotate 'line', 778

                $P0 = find_lex '$name'
                $S0 = $P0
                $P872 = split '=', $S0
            
    store_lex "@names", $P872
.annotate 'line', 783
    find_lex $P874, "@names"
    unless_null $P874, vivify_637
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_637:
    defined $I875, $P874
    unless $I875, for_undef_638
    iter $P873, $P874
    new $P895, 'ExceptionHandler'
    set_label $P895, loop894_handler
    $P895."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P895
  loop894_test:
    unless $P873, loop894_done
    shift $P876, $P873
  loop894_redo:
    .const 'Sub' $P878 = "187_1307873292.23355" 
    capture_lex $P878
    $P878($P876)
  loop894_next:
    goto loop894_test
  loop894_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P896, exception, 'type'
    eq $P896, .CONTROL_LOOP_NEXT, loop894_next
    eq $P896, .CONTROL_LOOP_REDO, loop894_redo
  loop894_done:
    pop_eh 
  for_undef_638:
.annotate 'line', 787
    find_lex $P897, "$ast"
    unless_null $P897, vivify_644
    $P897 = root_new ['parrot';'ResizablePMCArray']
  vivify_644:
    set $P898, $P897[0]
    unless_null $P898, vivify_645
    new $P898, "Undef"
  vivify_645:
    find_lex $P899, "$count"
    unless_null $P899, vivify_646
    new $P899, "Undef"
  vivify_646:
    $P900 = "capnames"($P898, $P899)
    store_lex "%x", $P900
.annotate 'line', 788
    find_lex $P902, "%x"
    unless_null $P902, vivify_647
    $P902 = root_new ['parrot';'Hash']
  vivify_647:
    defined $I903, $P902
    unless $I903, for_undef_648
    iter $P901, $P902
    new $P920, 'ExceptionHandler'
    set_label $P920, loop919_handler
    $P920."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P920
  loop919_test:
    unless $P901, loop919_done
    shift $P904, $P901
  loop919_redo:
    .const 'Sub' $P906 = "188_1307873292.23355" 
    capture_lex $P906
    $P906($P904)
  loop919_next:
    goto loop919_test
  loop919_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P921, exception, 'type'
    eq $P921, .CONTROL_LOOP_NEXT, loop919_next
    eq $P921, .CONTROL_LOOP_REDO, loop919_redo
  loop919_done:
    pop_eh 
  for_undef_648:
.annotate 'line', 791
    find_lex $P922, "%x"
    unless_null $P922, vivify_657
    $P922 = root_new ['parrot';'Hash']
  vivify_657:
    set $P923, $P922[""]
    unless_null $P923, vivify_658
    new $P923, "Undef"
  vivify_658:
    store_lex "$count", $P923
.annotate 'line', 776
    .return ($P923)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block877"  :anon :subid("187_1307873292.23355") :outer("186_1307873292.23355")
    .param pmc param_879
.annotate 'line', 783
    .lex "$_", param_879
.annotate 'line', 784
    find_lex $P883, "$_"
    unless_null $P883, vivify_639
    new $P883, "Undef"
  vivify_639:
    set $S884, $P883
    iseq $I885, $S884, "0"
    unless $I885, unless_882
    new $P881, 'Integer'
    set $P881, $I885
    goto unless_882_end
  unless_882:
    find_lex $P886, "$_"
    unless_null $P886, vivify_640
    new $P886, "Undef"
  vivify_640:
    set $N887, $P886
    isgt $I888, $N887, 0.0
    new $P881, 'Integer'
    set $P881, $I888
  unless_882_end:
    unless $P881, if_880_end
    find_lex $P889, "$_"
    unless_null $P889, vivify_641
    new $P889, "Undef"
  vivify_641:
    add $P890, $P889, 1
    store_lex "$count", $P890
  if_880_end:
.annotate 'line', 785
    new $P891, "Integer"
    assign $P891, 1
    find_lex $P892, "$_"
    unless_null $P892, vivify_642
    new $P892, "Undef"
  vivify_642:
    find_lex $P893, "%capnames"
    unless_null $P893, vivify_643
    $P893 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P893
  vivify_643:
    set $P893[$P892], $P891
.annotate 'line', 783
    .return ($P891)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block905"  :anon :subid("188_1307873292.23355") :outer("186_1307873292.23355")
    .param pmc param_907
.annotate 'line', 788
    .lex "$_", param_907
.annotate 'line', 789
    find_lex $P908, "$_"
    unless_null $P908, vivify_649
    new $P908, "Undef"
  vivify_649:
    find_lex $P909, "%capnames"
    unless_null $P909, vivify_650
    $P909 = root_new ['parrot';'Hash']
  vivify_650:
    set $P910, $P909[$P908]
    unless_null $P910, vivify_651
    new $P910, "Undef"
  vivify_651:
    set $N911, $P910
    new $P912, 'Float'
    set $P912, $N911
    find_lex $P913, "$_"
    unless_null $P913, vivify_652
    new $P913, "Undef"
  vivify_652:
    find_lex $P914, "%x"
    unless_null $P914, vivify_653
    $P914 = root_new ['parrot';'Hash']
  vivify_653:
    set $P915, $P914[$P913]
    unless_null $P915, vivify_654
    new $P915, "Undef"
  vivify_654:
    add $P916, $P912, $P915
    find_lex $P917, "$_"
    unless_null $P917, vivify_655
    new $P917, "Undef"
  vivify_655:
    find_lex $P918, "%capnames"
    unless_null $P918, vivify_656
    $P918 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P918
  vivify_656:
    set $P918[$P917], $P916
.annotate 'line', 788
    .return ($P916)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block823"  :anon :subid("184_1307873292.23355") :outer("178_1307873292.23355")
.annotate 'line', 763
    .const 'Sub' $P842 = "185_1307873292.23355" 
    capture_lex $P842
.annotate 'line', 764
    new $P825, "Undef"
    .lex "$name", $P825
.annotate 'line', 766
    $P826 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P826
.annotate 'line', 764
    find_lex $P827, "$ast"
    unless_null $P827, vivify_659
    new $P827, "Undef"
  vivify_659:
    $P828 = $P827."name"()
    store_lex "$name", $P828
.annotate 'line', 765
    find_lex $P830, "$name"
    unless_null $P830, vivify_660
    new $P830, "Undef"
  vivify_660:
    set $S831, $P830
    iseq $I832, $S831, ""
    unless $I832, if_829_end
    find_lex $P833, "$count"
    unless_null $P833, vivify_661
    new $P833, "Undef"
  vivify_661:
    store_lex "$name", $P833
    find_lex $P834, "$ast"
    unless_null $P834, vivify_662
    new $P834, "Undef"
  vivify_662:
    find_lex $P835, "$name"
    unless_null $P835, vivify_663
    new $P835, "Undef"
  vivify_663:
    $P834."name"($P835)
  if_829_end:
.annotate 'line', 766

                $P0 = find_lex '$name'
                $S0 = $P0
                $P836 = split '=', $S0
            
    store_lex "@names", $P836
.annotate 'line', 771
    find_lex $P838, "@names"
    unless_null $P838, vivify_664
    $P838 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    defined $I839, $P838
    unless $I839, for_undef_665
    iter $P837, $P838
    new $P859, 'ExceptionHandler'
    set_label $P859, loop858_handler
    $P859."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P859
  loop858_test:
    unless $P837, loop858_done
    shift $P840, $P837
  loop858_redo:
    .const 'Sub' $P842 = "185_1307873292.23355" 
    capture_lex $P842
    $P842($P840)
  loop858_next:
    goto loop858_test
  loop858_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P860, exception, 'type'
    eq $P860, .CONTROL_LOOP_NEXT, loop858_next
    eq $P860, .CONTROL_LOOP_REDO, loop858_redo
  loop858_done:
    pop_eh 
  for_undef_665:
.annotate 'line', 763
    .return ($P837)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block841"  :anon :subid("185_1307873292.23355") :outer("184_1307873292.23355")
    .param pmc param_843
.annotate 'line', 771
    .lex "$_", param_843
.annotate 'line', 772
    find_lex $P847, "$_"
    unless_null $P847, vivify_666
    new $P847, "Undef"
  vivify_666:
    set $S848, $P847
    iseq $I849, $S848, "0"
    unless $I849, unless_846
    new $P845, 'Integer'
    set $P845, $I849
    goto unless_846_end
  unless_846:
    find_lex $P850, "$_"
    unless_null $P850, vivify_667
    new $P850, "Undef"
  vivify_667:
    set $N851, $P850
    isgt $I852, $N851, 0.0
    new $P845, 'Integer'
    set $P845, $I852
  unless_846_end:
    unless $P845, if_844_end
    find_lex $P853, "$_"
    unless_null $P853, vivify_668
    new $P853, "Undef"
  vivify_668:
    add $P854, $P853, 1
    store_lex "$count", $P854
  if_844_end:
.annotate 'line', 773
    new $P855, "Integer"
    assign $P855, 1
    find_lex $P856, "$_"
    unless_null $P856, vivify_669
    new $P856, "Undef"
  vivify_669:
    find_lex $P857, "%capnames"
    unless_null $P857, vivify_670
    $P857 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P857
  vivify_670:
    set $P857[$P856], $P855
.annotate 'line', 771
    .return ($P855)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block781"  :anon :subid("182_1307873292.23355") :outer("178_1307873292.23355")
    .param pmc param_784
.annotate 'line', 755
    .const 'Sub' $P793 = "183_1307873292.23355" 
    capture_lex $P793
.annotate 'line', 756
    $P783 = root_new ['parrot';'Hash']
    .lex "%x", $P783
    .lex "$_", param_784
    find_lex $P785, "$_"
    unless_null $P785, vivify_673
    new $P785, "Undef"
  vivify_673:
    find_lex $P786, "$count"
    unless_null $P786, vivify_674
    new $P786, "Undef"
  vivify_674:
    $P787 = "capnames"($P785, $P786)
    store_lex "%x", $P787
.annotate 'line', 757
    find_lex $P789, "%x"
    unless_null $P789, vivify_675
    $P789 = root_new ['parrot';'Hash']
  vivify_675:
    defined $I790, $P789
    unless $I790, for_undef_676
    iter $P788, $P789
    new $P807, 'ExceptionHandler'
    set_label $P807, loop806_handler
    $P807."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P807
  loop806_test:
    unless $P788, loop806_done
    shift $P791, $P788
  loop806_redo:
    .const 'Sub' $P793 = "183_1307873292.23355" 
    capture_lex $P793
    $P793($P791)
  loop806_next:
    goto loop806_test
  loop806_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P808, exception, 'type'
    eq $P808, .CONTROL_LOOP_NEXT, loop806_next
    eq $P808, .CONTROL_LOOP_REDO, loop806_redo
  loop806_done:
    pop_eh 
  for_undef_676:
.annotate 'line', 760
    find_lex $P809, "%x"
    unless_null $P809, vivify_685
    $P809 = root_new ['parrot';'Hash']
  vivify_685:
    set $P810, $P809[""]
    unless_null $P810, vivify_686
    new $P810, "Undef"
  vivify_686:
    store_lex "$count", $P810
.annotate 'line', 755
    .return ($P810)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block792"  :anon :subid("183_1307873292.23355") :outer("182_1307873292.23355")
    .param pmc param_794
.annotate 'line', 757
    .lex "$_", param_794
.annotate 'line', 758
    find_lex $P795, "$_"
    unless_null $P795, vivify_677
    new $P795, "Undef"
  vivify_677:
    find_lex $P796, "%capnames"
    unless_null $P796, vivify_678
    $P796 = root_new ['parrot';'Hash']
  vivify_678:
    set $P797, $P796[$P795]
    unless_null $P797, vivify_679
    new $P797, "Undef"
  vivify_679:
    set $N798, $P797
    new $P799, 'Float'
    set $P799, $N798
    find_lex $P800, "$_"
    unless_null $P800, vivify_680
    new $P800, "Undef"
  vivify_680:
    find_lex $P801, "%x"
    unless_null $P801, vivify_681
    $P801 = root_new ['parrot';'Hash']
  vivify_681:
    set $P802, $P801[$P800]
    unless_null $P802, vivify_682
    new $P802, "Undef"
  vivify_682:
    add $P803, $P799, $P802
    find_lex $P804, "$_"
    unless_null $P804, vivify_683
    new $P804, "Undef"
  vivify_683:
    find_lex $P805, "%capnames"
    unless_null $P805, vivify_684
    $P805 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P805
  vivify_684:
    set $P805[$P804], $P803
.annotate 'line', 757
    .return ($P803)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block714"  :anon :subid("179_1307873292.23355") :outer("178_1307873292.23355")
.annotate 'line', 741
    .const 'Sub' $P724 = "180_1307873292.23355" 
    capture_lex $P724
.annotate 'line', 742
    new $P716, "Undef"
    .lex "$max", $P716
    find_lex $P717, "$count"
    unless_null $P717, vivify_687
    new $P717, "Undef"
  vivify_687:
    store_lex "$max", $P717
.annotate 'line', 743
    find_lex $P719, "$ast"
    unless_null $P719, vivify_688
    new $P719, "Undef"
  vivify_688:
    $P720 = $P719."list"()
    defined $I721, $P720
    unless $I721, for_undef_689
    iter $P718, $P720
    new $P769, 'ExceptionHandler'
    set_label $P769, loop768_handler
    $P769."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P769
  loop768_test:
    unless $P718, loop768_done
    shift $P722, $P718
  loop768_redo:
    .const 'Sub' $P724 = "180_1307873292.23355" 
    capture_lex $P724
    $P724($P722)
  loop768_next:
    goto loop768_test
  loop768_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P770, exception, 'type'
    eq $P770, .CONTROL_LOOP_NEXT, loop768_next
    eq $P770, .CONTROL_LOOP_REDO, loop768_redo
  loop768_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 752
    find_lex $P771, "$max"
    unless_null $P771, vivify_707
    new $P771, "Undef"
  vivify_707:
    store_lex "$count", $P771
.annotate 'line', 741
    .return ($P771)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block723"  :anon :subid("180_1307873292.23355") :outer("179_1307873292.23355")
    .param pmc param_726
.annotate 'line', 743
    .const 'Sub' $P735 = "181_1307873292.23355" 
    capture_lex $P735
.annotate 'line', 744
    $P725 = root_new ['parrot';'Hash']
    .lex "%x", $P725
    .lex "$_", param_726
    find_lex $P727, "$_"
    unless_null $P727, vivify_690
    new $P727, "Undef"
  vivify_690:
    find_lex $P728, "$count"
    unless_null $P728, vivify_691
    new $P728, "Undef"
  vivify_691:
    $P729 = "capnames"($P727, $P728)
    store_lex "%x", $P729
.annotate 'line', 745
    find_lex $P731, "%x"
    unless_null $P731, vivify_692
    $P731 = root_new ['parrot';'Hash']
  vivify_692:
    defined $I732, $P731
    unless $I732, for_undef_693
    iter $P730, $P731
    new $P756, 'ExceptionHandler'
    set_label $P756, loop755_handler
    $P756."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P756
  loop755_test:
    unless $P730, loop755_done
    shift $P733, $P730
  loop755_redo:
    .const 'Sub' $P735 = "181_1307873292.23355" 
    capture_lex $P735
    $P735($P733)
  loop755_next:
    goto loop755_test
  loop755_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P757, exception, 'type'
    eq $P757, .CONTROL_LOOP_NEXT, loop755_next
    eq $P757, .CONTROL_LOOP_REDO, loop755_redo
  loop755_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 750
    find_lex $P760, "%x"
    unless_null $P760, vivify_702
    $P760 = root_new ['parrot';'Hash']
  vivify_702:
    set $P761, $P760[""]
    unless_null $P761, vivify_703
    new $P761, "Undef"
  vivify_703:
    set $N762, $P761
    find_lex $P763, "$max"
    unless_null $P763, vivify_704
    new $P763, "Undef"
  vivify_704:
    set $N764, $P763
    isgt $I765, $N762, $N764
    if $I765, if_759
    new $P758, 'Integer'
    set $P758, $I765
    goto if_759_end
  if_759:
    find_lex $P766, "%x"
    unless_null $P766, vivify_705
    $P766 = root_new ['parrot';'Hash']
  vivify_705:
    set $P767, $P766[""]
    unless_null $P767, vivify_706
    new $P767, "Undef"
  vivify_706:
    store_lex "$max", $P767
    set $P758, $P767
  if_759_end:
.annotate 'line', 743
    .return ($P758)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block734"  :anon :subid("181_1307873292.23355") :outer("180_1307873292.23355")
    .param pmc param_736
.annotate 'line', 745
    .lex "$_", param_736
.annotate 'line', 746
    find_lex $P741, "$_"
    unless_null $P741, vivify_694
    new $P741, "Undef"
  vivify_694:
    find_lex $P742, "%capnames"
    unless_null $P742, vivify_695
    $P742 = root_new ['parrot';'Hash']
  vivify_695:
    set $P743, $P742[$P741]
    unless_null $P743, vivify_696
    new $P743, "Undef"
  vivify_696:
    set $N744, $P743
    islt $I745, $N744, 2.0
    if $I745, if_740
    new $P739, 'Integer'
    set $P739, $I745
    goto if_740_end
  if_740:
    find_lex $P746, "$_"
    unless_null $P746, vivify_697
    new $P746, "Undef"
  vivify_697:
    find_lex $P747, "%x"
    unless_null $P747, vivify_698
    $P747 = root_new ['parrot';'Hash']
  vivify_698:
    set $P748, $P747[$P746]
    unless_null $P748, vivify_699
    new $P748, "Undef"
  vivify_699:
    set $N749, $P748
    iseq $I750, $N749, 1.0
    new $P739, 'Integer'
    set $P739, $I750
  if_740_end:
    if $P739, if_738
    new $P752, "Integer"
    assign $P752, 2
    set $P737, $P752
    goto if_738_end
  if_738:
    new $P751, "Integer"
    assign $P751, 1
    set $P737, $P751
  if_738_end:
.annotate 'line', 747
    find_lex $P753, "$_"
    unless_null $P753, vivify_700
    new $P753, "Undef"
  vivify_700:
    find_lex $P754, "%capnames"
    unless_null $P754, vivify_701
    $P754 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P754
  vivify_701:
    set $P754[$P753], $P737
.annotate 'line', 745
    .return ($P737)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("191_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_955
    .param pmc param_956
.annotate 'line', 804
    .lex "$ast", param_955
    .lex "$backmod", param_956
.annotate 'line', 805
    find_lex $P958, "$backmod"
    unless_null $P958, vivify_711
    new $P958, "Undef"
  vivify_711:
    set $S959, $P958
    iseq $I960, $S959, ":"
    if $I960, if_957
.annotate 'line', 806
    find_lex $P965, "$backmod"
    unless_null $P965, vivify_712
    new $P965, "Undef"
  vivify_712:
    set $S966, $P965
    iseq $I967, $S966, ":?"
    unless $I967, unless_964
    new $P963, 'Integer'
    set $P963, $I967
    goto unless_964_end
  unless_964:
    find_lex $P968, "$backmod"
    unless_null $P968, vivify_713
    new $P968, "Undef"
  vivify_713:
    set $S969, $P968
    iseq $I970, $S969, "?"
    new $P963, 'Integer'
    set $P963, $I970
  unless_964_end:
    if $P963, if_962
.annotate 'line', 807
    find_lex $P975, "$backmod"
    unless_null $P975, vivify_714
    new $P975, "Undef"
  vivify_714:
    set $S976, $P975
    iseq $I977, $S976, ":!"
    unless $I977, unless_974
    new $P973, 'Integer'
    set $P973, $I977
    goto unless_974_end
  unless_974:
    find_lex $P978, "$backmod"
    unless_null $P978, vivify_715
    new $P978, "Undef"
  vivify_715:
    set $S979, $P978
    iseq $I980, $S979, "!"
    new $P973, 'Integer'
    set $P973, $I980
  unless_974_end:
    unless $P973, if_972_end
    find_lex $P981, "$ast"
    unless_null $P981, vivify_716
    new $P981, "Undef"
  vivify_716:
    $P981."backtrack"("g")
  if_972_end:
    goto if_962_end
  if_962:
.annotate 'line', 806
    find_lex $P971, "$ast"
    unless_null $P971, vivify_717
    new $P971, "Undef"
  vivify_717:
    $P971."backtrack"("f")
  if_962_end:
    goto if_957_end
  if_957:
.annotate 'line', 805
    find_lex $P961, "$ast"
    unless_null $P961, vivify_718
    new $P961, "Undef"
  vivify_718:
    $P961."backtrack"("r")
  if_957_end:
    find_lex $P982, "$ast"
    unless_null $P982, vivify_719
    new $P982, "Undef"
  vivify_719:
.annotate 'line', 804
    .return ($P982)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg" :anon :subid("192_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_996
    .param pmc param_997
.annotate 'line', 227
    .lex "self", param_996
    .lex "$/", param_997
.annotate 'line', 228
    find_lex $P998, "$/"
    find_lex $P1001, "$/"
    unless_null $P1001, vivify_722
    $P1001 = root_new ['parrot';'Hash']
  vivify_722:
    set $P1002, $P1001["quote_EXPR"]
    unless_null $P1002, vivify_723
    new $P1002, "Undef"
  vivify_723:
    if $P1002, if_1000
    find_lex $P1006, "$/"
    unless_null $P1006, vivify_724
    $P1006 = root_new ['parrot';'Hash']
  vivify_724:
    set $P1007, $P1006["val"]
    unless_null $P1007, vivify_725
    new $P1007, "Undef"
  vivify_725:
    set $N1008, $P1007
    new $P999, 'Float'
    set $P999, $N1008
    goto if_1000_end
  if_1000:
    find_lex $P1003, "$/"
    unless_null $P1003, vivify_726
    $P1003 = root_new ['parrot';'Hash']
  vivify_726:
    set $P1004, $P1003["quote_EXPR"]
    unless_null $P1004, vivify_727
    new $P1004, "Undef"
  vivify_727:
    $P1005 = $P1004."ast"()
    set $P999, $P1005
  if_1000_end:
    $P1009 = $P998."!make"($P999)
.annotate 'line', 227
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist" :anon :subid("193_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1011
    .param pmc param_1012
.annotate 'line', 231
    .const 'Sub' $P1025 = "194_1307873292.23355" 
    capture_lex $P1025
    .lex "self", param_1011
    .lex "$/", param_1012
.annotate 'line', 232
    new $P1013, "Undef"
    .lex "$past", $P1013
    get_hll_global $P1014, "GLOBAL"
    nqp_get_package_through_who $P1015, $P1014, "PAST"
    get_who $P1016, $P1015
    set $P1017, $P1016["Op"]
    $P1018 = $P1017."new"("list" :named("pasttype"))
    store_lex "$past", $P1018
.annotate 'line', 233
    find_lex $P1020, "$/"
    unless_null $P1020, vivify_728
    $P1020 = root_new ['parrot';'Hash']
  vivify_728:
    set $P1021, $P1020["arg"]
    unless_null $P1021, vivify_729
    new $P1021, "Undef"
  vivify_729:
    defined $I1022, $P1021
    unless $I1022, for_undef_730
    iter $P1019, $P1021
    new $P1032, 'ExceptionHandler'
    set_label $P1032, loop1031_handler
    $P1032."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1032
  loop1031_test:
    unless $P1019, loop1031_done
    shift $P1023, $P1019
  loop1031_redo:
    .const 'Sub' $P1025 = "194_1307873292.23355" 
    capture_lex $P1025
    $P1025($P1023)
  loop1031_next:
    goto loop1031_test
  loop1031_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1033, exception, 'type'
    eq $P1033, .CONTROL_LOOP_NEXT, loop1031_next
    eq $P1033, .CONTROL_LOOP_REDO, loop1031_redo
  loop1031_done:
    pop_eh 
  for_undef_730:
.annotate 'line', 234
    find_lex $P1034, "$/"
    find_lex $P1035, "$past"
    unless_null $P1035, vivify_733
    new $P1035, "Undef"
  vivify_733:
    $P1036 = $P1034."!make"($P1035)
.annotate 'line', 231
    .return ($P1036)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1024"  :anon :subid("194_1307873292.23355") :outer("193_1307873292.23355")
    .param pmc param_1026
.annotate 'line', 233
    .lex "$_", param_1026
    find_lex $P1027, "$past"
    unless_null $P1027, vivify_731
    new $P1027, "Undef"
  vivify_731:
    find_lex $P1028, "$_"
    unless_null $P1028, vivify_732
    new $P1028, "Undef"
  vivify_732:
    $P1029 = $P1028."ast"()
    $P1030 = $P1027."push"($P1029)
    .return ($P1030)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP" :anon :subid("195_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1038
    .param pmc param_1039
.annotate 'line', 237
    .lex "self", param_1038
    .lex "$/", param_1039
.annotate 'line', 238
    new $P1040, "Undef"
    .lex "$past", $P1040
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_734
    $P1041 = root_new ['parrot';'Hash']
  vivify_734:
    set $P1042, $P1041["nibbler"]
    unless_null $P1042, vivify_735
    new $P1042, "Undef"
  vivify_735:
    $P1043 = $P1042."ast"()
    $P1044 = "buildsub"($P1043)
    store_lex "$past", $P1044
.annotate 'line', 239
    find_lex $P1045, "$past"
    unless_null $P1045, vivify_736
    new $P1045, "Undef"
  vivify_736:
    find_lex $P1046, "$/"
    unless_null $P1046, vivify_737
    new $P1046, "Undef"
  vivify_737:
    $P1045."node"($P1046)
.annotate 'line', 240
    find_lex $P1047, "$/"
    find_lex $P1048, "$past"
    unless_null $P1048, vivify_738
    new $P1048, "Undef"
  vivify_738:
    $P1049 = $P1047."!make"($P1048)
.annotate 'line', 237
    .return ($P1049)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler" :anon :subid("196_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1053
    .param pmc param_1054
    .param pmc param_1055 :optional
    .param int has_param_1055 :opt_flag
.annotate 'line', 243
    .const 'Sub' $P1099 = "198_1307873292.23355" 
    capture_lex $P1099
    .const 'Sub' $P1063 = "197_1307873292.23355" 
    capture_lex $P1063
    new $P1052, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1052, control_1051
    push_eh $P1052
    .lex "self", param_1053
    .lex "$/", param_1054
    if has_param_1055, optparam_739
    new $P1056, "Undef"
    set param_1055, $P1056
  optparam_739:
    .lex "$key", param_1055
.annotate 'line', 252
    new $P1057, "Undef"
    .lex "$past", $P1057
.annotate 'line', 244
    find_lex $P1059, "$key"
    unless_null $P1059, vivify_740
    new $P1059, "Undef"
  vivify_740:
    set $S1060, $P1059
    iseq $I1061, $S1060, "open"
    unless $I1061, if_1058_end
    .const 'Sub' $P1063 = "197_1307873292.23355" 
    capture_lex $P1063
    $P1063()
  if_1058_end:
.annotate 'line', 251
    find_lex $P1078, "$?PACKAGE"
    get_who $P1079, $P1078
    set $P1080, $P1079["@MODIFIERS"]
    unless_null $P1080, vivify_746
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    $P1080."shift"()
    find_lex $P1081, "$past"
    unless_null $P1081, vivify_747
    new $P1081, "Undef"
  vivify_747:
.annotate 'line', 253
    find_lex $P1083, "$/"
    unless_null $P1083, vivify_748
    $P1083 = root_new ['parrot';'Hash']
  vivify_748:
    set $P1084, $P1083["termconj"]
    unless_null $P1084, vivify_749
    new $P1084, "Undef"
  vivify_749:
    set $N1085, $P1084
    isgt $I1086, $N1085, 1.0
    if $I1086, if_1082
.annotate 'line', 260
    find_lex $P1108, "$/"
    unless_null $P1108, vivify_750
    $P1108 = root_new ['parrot';'Hash']
  vivify_750:
    set $P1109, $P1108["termconj"]
    unless_null $P1109, vivify_751
    $P1109 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    set $P1110, $P1109[0]
    unless_null $P1110, vivify_752
    new $P1110, "Undef"
  vivify_752:
    $P1111 = $P1110."ast"()
    store_lex "$past", $P1111
.annotate 'line', 259
    goto if_1082_end
  if_1082:
.annotate 'line', 254
    get_hll_global $P1087, "GLOBAL"
    nqp_get_package_through_who $P1088, $P1087, "PAST"
    get_who $P1089, $P1088
    set $P1090, $P1089["Regex"]
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_753
    new $P1091, "Undef"
  vivify_753:
    $P1092 = $P1090."new"("alt" :named("pasttype"), $P1091 :named("node"))
    store_lex "$past", $P1092
.annotate 'line', 255
    find_lex $P1094, "$/"
    unless_null $P1094, vivify_754
    $P1094 = root_new ['parrot';'Hash']
  vivify_754:
    set $P1095, $P1094["termconj"]
    unless_null $P1095, vivify_755
    new $P1095, "Undef"
  vivify_755:
    defined $I1096, $P1095
    unless $I1096, for_undef_756
    iter $P1093, $P1095
    new $P1106, 'ExceptionHandler'
    set_label $P1106, loop1105_handler
    $P1106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1106
  loop1105_test:
    unless $P1093, loop1105_done
    shift $P1097, $P1093
  loop1105_redo:
    .const 'Sub' $P1099 = "198_1307873292.23355" 
    capture_lex $P1099
    $P1099($P1097)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1107, exception, 'type'
    eq $P1107, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P1107, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_756:
  if_1082_end:
.annotate 'line', 262
    find_lex $P1112, "$/"
    find_lex $P1113, "$past"
    unless_null $P1113, vivify_759
    new $P1113, "Undef"
  vivify_759:
    $P1114 = $P1112."!make"($P1113)
.annotate 'line', 243
    .return ($P1114)
  control_1051:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1115, exception, "payload"
    .return ($P1115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1062"  :anon :subid("197_1307873292.23355") :outer("196_1307873292.23355")
.annotate 'line', 245
    $P1064 = root_new ['parrot';'Hash']
    .lex "%old", $P1064
.annotate 'line', 246
    $P1065 = root_new ['parrot';'Hash']
    .lex "%new", $P1065
.annotate 'line', 245
    find_lex $P1066, "$?PACKAGE"
    get_who $P1067, $P1066
    set $P1068, $P1067["@MODIFIERS"]
    unless_null $P1068, vivify_741
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    set $P1069, $P1068[0]
    unless_null $P1069, vivify_742
    new $P1069, "Undef"
  vivify_742:
    store_lex "%old", $P1069
.annotate 'line', 246
    find_lex $P1070, "%old"
    unless_null $P1070, vivify_743
    $P1070 = root_new ['parrot';'Hash']
  vivify_743:
    clone $P1071, $P1070
    store_lex "%new", $P1071
.annotate 'line', 247
    find_lex $P1072, "$?PACKAGE"
    get_who $P1073, $P1072
    set $P1074, $P1073["@MODIFIERS"]
    unless_null $P1074, vivify_744
    $P1074 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    find_lex $P1075, "%new"
    unless_null $P1075, vivify_745
    $P1075 = root_new ['parrot';'Hash']
  vivify_745:
    $P1074."unshift"($P1075)
.annotate 'line', 248
    new $P1076, "Exception"
    set $P1076['type'], .CONTROL_RETURN
    new $P1077, "Integer"
    assign $P1077, 1
    setattribute $P1076, 'payload', $P1077
    throw $P1076
.annotate 'line', 244
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1098"  :anon :subid("198_1307873292.23355") :outer("196_1307873292.23355")
    .param pmc param_1100
.annotate 'line', 255
    .lex "$_", param_1100
.annotate 'line', 256
    find_lex $P1101, "$past"
    unless_null $P1101, vivify_757
    new $P1101, "Undef"
  vivify_757:
    find_lex $P1102, "$_"
    unless_null $P1102, vivify_758
    new $P1102, "Undef"
  vivify_758:
    $P1103 = $P1102."ast"()
    $P1104 = $P1101."push"($P1103)
.annotate 'line', 255
    .return ($P1104)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj" :anon :subid("199_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1117
    .param pmc param_1118
.annotate 'line', 265
    .const 'Sub' $P1138 = "200_1307873292.23355" 
    capture_lex $P1138
    .lex "self", param_1117
    .lex "$/", param_1118
.annotate 'line', 266
    new $P1119, "Undef"
    .lex "$past", $P1119
.annotate 'line', 265
    find_lex $P1120, "$past"
    unless_null $P1120, vivify_760
    new $P1120, "Undef"
  vivify_760:
.annotate 'line', 267
    find_lex $P1122, "$/"
    unless_null $P1122, vivify_761
    $P1122 = root_new ['parrot';'Hash']
  vivify_761:
    set $P1123, $P1122["termish"]
    unless_null $P1123, vivify_762
    new $P1123, "Undef"
  vivify_762:
    set $N1124, $P1123
    isgt $I1125, $N1124, 1.0
    if $I1125, if_1121
.annotate 'line', 274
    find_lex $P1147, "$/"
    unless_null $P1147, vivify_763
    $P1147 = root_new ['parrot';'Hash']
  vivify_763:
    set $P1148, $P1147["termish"]
    unless_null $P1148, vivify_764
    $P1148 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    set $P1149, $P1148[0]
    unless_null $P1149, vivify_765
    new $P1149, "Undef"
  vivify_765:
    $P1150 = $P1149."ast"()
    store_lex "$past", $P1150
.annotate 'line', 273
    goto if_1121_end
  if_1121:
.annotate 'line', 268
    get_hll_global $P1126, "GLOBAL"
    nqp_get_package_through_who $P1127, $P1126, "PAST"
    get_who $P1128, $P1127
    set $P1129, $P1128["Regex"]
    find_lex $P1130, "$/"
    unless_null $P1130, vivify_766
    new $P1130, "Undef"
  vivify_766:
    $P1131 = $P1129."new"("conj" :named("pasttype"), $P1130 :named("node"))
    store_lex "$past", $P1131
.annotate 'line', 269
    find_lex $P1133, "$/"
    unless_null $P1133, vivify_767
    $P1133 = root_new ['parrot';'Hash']
  vivify_767:
    set $P1134, $P1133["termish"]
    unless_null $P1134, vivify_768
    new $P1134, "Undef"
  vivify_768:
    defined $I1135, $P1134
    unless $I1135, for_undef_769
    iter $P1132, $P1134
    new $P1145, 'ExceptionHandler'
    set_label $P1145, loop1144_handler
    $P1145."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1145
  loop1144_test:
    unless $P1132, loop1144_done
    shift $P1136, $P1132
  loop1144_redo:
    .const 'Sub' $P1138 = "200_1307873292.23355" 
    capture_lex $P1138
    $P1138($P1136)
  loop1144_next:
    goto loop1144_test
  loop1144_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1146, exception, 'type'
    eq $P1146, .CONTROL_LOOP_NEXT, loop1144_next
    eq $P1146, .CONTROL_LOOP_REDO, loop1144_redo
  loop1144_done:
    pop_eh 
  for_undef_769:
  if_1121_end:
.annotate 'line', 276
    find_lex $P1151, "$/"
    find_lex $P1152, "$past"
    unless_null $P1152, vivify_772
    new $P1152, "Undef"
  vivify_772:
    $P1153 = $P1151."!make"($P1152)
.annotate 'line', 265
    .return ($P1153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1137"  :anon :subid("200_1307873292.23355") :outer("199_1307873292.23355")
    .param pmc param_1139
.annotate 'line', 269
    .lex "$_", param_1139
.annotate 'line', 270
    find_lex $P1140, "$past"
    unless_null $P1140, vivify_770
    new $P1140, "Undef"
  vivify_770:
    find_lex $P1141, "$_"
    unless_null $P1141, vivify_771
    new $P1141, "Undef"
  vivify_771:
    $P1142 = $P1141."ast"()
    $P1143 = $P1140."push"($P1142)
.annotate 'line', 269
    .return ($P1143)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish" :anon :subid("201_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1155
    .param pmc param_1156
.annotate 'line', 279
    .const 'Sub' $P1172 = "202_1307873292.23355" 
    capture_lex $P1172
    .lex "self", param_1155
    .lex "$/", param_1156
.annotate 'line', 280
    new $P1157, "Undef"
    .lex "$past", $P1157
.annotate 'line', 281
    new $P1158, "Undef"
    .lex "$lastlit", $P1158
.annotate 'line', 280
    get_hll_global $P1159, "GLOBAL"
    nqp_get_package_through_who $P1160, $P1159, "PAST"
    get_who $P1161, $P1160
    set $P1162, $P1161["Regex"]
    find_lex $P1163, "$/"
    unless_null $P1163, vivify_773
    new $P1163, "Undef"
  vivify_773:
    $P1164 = $P1162."new"("concat" :named("pasttype"), $P1163 :named("node"))
    store_lex "$past", $P1164
.annotate 'line', 281
    new $P1165, "Integer"
    assign $P1165, 0
    store_lex "$lastlit", $P1165
.annotate 'line', 282
    find_lex $P1167, "$/"
    unless_null $P1167, vivify_774
    $P1167 = root_new ['parrot';'Hash']
  vivify_774:
    set $P1168, $P1167["noun"]
    unless_null $P1168, vivify_775
    new $P1168, "Undef"
  vivify_775:
    defined $I1169, $P1168
    unless $I1169, for_undef_776
    iter $P1166, $P1168
    new $P1224, 'ExceptionHandler'
    set_label $P1224, loop1223_handler
    $P1224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1224
  loop1223_test:
    unless $P1166, loop1223_done
    shift $P1170, $P1166
  loop1223_redo:
    .const 'Sub' $P1172 = "202_1307873292.23355" 
    capture_lex $P1172
    $P1172($P1170)
  loop1223_next:
    goto loop1223_test
  loop1223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1225, exception, 'type'
    eq $P1225, .CONTROL_LOOP_NEXT, loop1223_next
    eq $P1225, .CONTROL_LOOP_REDO, loop1223_redo
  loop1223_done:
    pop_eh 
  for_undef_776:
.annotate 'line', 297
    find_lex $P1226, "$/"
    find_lex $P1227, "$past"
    unless_null $P1227, vivify_794
    new $P1227, "Undef"
  vivify_794:
    $P1228 = $P1226."!make"($P1227)
.annotate 'line', 279
    .return ($P1228)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1171"  :anon :subid("202_1307873292.23355") :outer("201_1307873292.23355")
    .param pmc param_1174
.annotate 'line', 283
    new $P1173, "Undef"
    .lex "$ast", $P1173
    .lex "$_", param_1174
    find_lex $P1175, "$_"
    unless_null $P1175, vivify_777
    new $P1175, "Undef"
  vivify_777:
    $P1176 = $P1175."ast"()
    store_lex "$ast", $P1176
.annotate 'line', 284
    find_lex $P1179, "$ast"
    unless_null $P1179, vivify_778
    new $P1179, "Undef"
  vivify_778:
    if $P1179, if_1178
    set $P1177, $P1179
    goto if_1178_end
  if_1178:
.annotate 'line', 285
    find_lex $P1186, "$lastlit"
    unless_null $P1186, vivify_779
    new $P1186, "Undef"
  vivify_779:
    if $P1186, if_1185
    set $P1184, $P1186
    goto if_1185_end
  if_1185:
    find_lex $P1187, "$ast"
    unless_null $P1187, vivify_780
    new $P1187, "Undef"
  vivify_780:
    $S1188 = $P1187."pasttype"()
    iseq $I1189, $S1188, "literal"
    new $P1184, 'Integer'
    set $P1184, $I1189
  if_1185_end:
    if $P1184, if_1183
    set $P1182, $P1184
    goto if_1183_end
  if_1183:
.annotate 'line', 286
    get_hll_global $P1190, "GLOBAL"
    nqp_get_package_through_who $P1191, $P1190, "PAST"
    get_who $P1192, $P1191
    set $P1193, $P1192["Node"]
    find_lex $P1194, "$ast"
    unless_null $P1194, vivify_781
    $P1194 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1195, $P1194[0]
    unless_null $P1195, vivify_782
    new $P1195, "Undef"
  vivify_782:
    $P1196 = $P1193."ACCEPTS"($P1195)
    isfalse $I1197, $P1196
    new $P1182, 'Integer'
    set $P1182, $I1197
  if_1183_end:
    if $P1182, if_1181
.annotate 'line', 290
    find_lex $P1204, "$past"
    unless_null $P1204, vivify_783
    new $P1204, "Undef"
  vivify_783:
    find_lex $P1205, "$ast"
    unless_null $P1205, vivify_784
    new $P1205, "Undef"
  vivify_784:
    $P1204."push"($P1205)
.annotate 'line', 291
    find_lex $P1210, "$ast"
    unless_null $P1210, vivify_785
    new $P1210, "Undef"
  vivify_785:
    $S1211 = $P1210."pasttype"()
    iseq $I1212, $S1211, "literal"
    if $I1212, if_1209
    new $P1208, 'Integer'
    set $P1208, $I1212
    goto if_1209_end
  if_1209:
.annotate 'line', 292
    get_hll_global $P1213, "GLOBAL"
    nqp_get_package_through_who $P1214, $P1213, "PAST"
    get_who $P1215, $P1214
    set $P1216, $P1215["Node"]
    find_lex $P1217, "$ast"
    unless_null $P1217, vivify_786
    $P1217 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1218, $P1217[0]
    unless_null $P1218, vivify_787
    new $P1218, "Undef"
  vivify_787:
    $P1219 = $P1216."ACCEPTS"($P1218)
    isfalse $I1220, $P1219
    new $P1208, 'Integer'
    set $P1208, $I1220
  if_1209_end:
    if $P1208, if_1207
    new $P1222, "Integer"
    assign $P1222, 0
    set $P1206, $P1222
    goto if_1207_end
  if_1207:
    find_lex $P1221, "$ast"
    unless_null $P1221, vivify_788
    new $P1221, "Undef"
  vivify_788:
    set $P1206, $P1221
  if_1207_end:
.annotate 'line', 293
    store_lex "$lastlit", $P1206
.annotate 'line', 289
    set $P1180, $P1206
.annotate 'line', 286
    goto if_1181_end
  if_1181:
.annotate 'line', 287
    find_lex $P1198, "$lastlit"
    unless_null $P1198, vivify_789
    $P1198 = root_new ['parrot';'ResizablePMCArray']
  vivify_789:
    set $P1199, $P1198[0]
    unless_null $P1199, vivify_790
    new $P1199, "Undef"
  vivify_790:
    find_lex $P1200, "$ast"
    unless_null $P1200, vivify_791
    $P1200 = root_new ['parrot';'ResizablePMCArray']
  vivify_791:
    set $P1201, $P1200[0]
    unless_null $P1201, vivify_792
    new $P1201, "Undef"
  vivify_792:
    concat $P1202, $P1199, $P1201
    find_lex $P1203, "$lastlit"
    unless_null $P1203, vivify_793
    $P1203 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1203
  vivify_793:
    set $P1203[0], $P1202
.annotate 'line', 286
    set $P1180, $P1202
  if_1181_end:
.annotate 'line', 284
    set $P1177, $P1180
  if_1178_end:
.annotate 'line', 282
    .return ($P1177)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom" :anon :subid("203_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1230
    .param pmc param_1231
.annotate 'line', 300
    .const 'Sub' $P1240 = "204_1307873292.23355" 
    capture_lex $P1240
    .lex "self", param_1230
    .lex "$/", param_1231
.annotate 'line', 301
    new $P1232, "Undef"
    .lex "$past", $P1232
    find_lex $P1233, "$/"
    unless_null $P1233, vivify_795
    $P1233 = root_new ['parrot';'Hash']
  vivify_795:
    set $P1234, $P1233["atom"]
    unless_null $P1234, vivify_796
    new $P1234, "Undef"
  vivify_796:
    $P1235 = $P1234."ast"()
    store_lex "$past", $P1235
.annotate 'line', 302
    find_lex $P1237, "$/"
    unless_null $P1237, vivify_797
    $P1237 = root_new ['parrot';'Hash']
  vivify_797:
    set $P1238, $P1237["quantifier"]
    unless_null $P1238, vivify_798
    new $P1238, "Undef"
  vivify_798:
    if $P1238, if_1236
.annotate 'line', 308
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_799
    $P1255 = root_new ['parrot';'Hash']
  vivify_799:
    set $P1256, $P1255["backmod"]
    unless_null $P1256, vivify_800
    $P1256 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    set $P1257, $P1256[0]
    unless_null $P1257, vivify_801
    new $P1257, "Undef"
  vivify_801:
    unless $P1257, if_1254_end
    find_lex $P1258, "$past"
    unless_null $P1258, vivify_802
    new $P1258, "Undef"
  vivify_802:
    find_lex $P1259, "$/"
    unless_null $P1259, vivify_803
    $P1259 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1260, $P1259["backmod"]
    unless_null $P1260, vivify_804
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P1261, $P1260[0]
    unless_null $P1261, vivify_805
    new $P1261, "Undef"
  vivify_805:
    "backmod"($P1258, $P1261)
  if_1254_end:
    goto if_1236_end
  if_1236:
.annotate 'line', 302
    .const 'Sub' $P1240 = "204_1307873292.23355" 
    capture_lex $P1240
    $P1240()
  if_1236_end:
.annotate 'line', 309
    find_lex $P1267, "$past"
    unless_null $P1267, vivify_814
    new $P1267, "Undef"
  vivify_814:
    if $P1267, if_1266
    set $P1265, $P1267
    goto if_1266_end
  if_1266:
    find_lex $P1268, "$past"
    unless_null $P1268, vivify_815
    new $P1268, "Undef"
  vivify_815:
    $P1269 = $P1268."backtrack"()
    isfalse $I1270, $P1269
    new $P1265, 'Integer'
    set $P1265, $I1270
  if_1266_end:
    if $P1265, if_1264
    set $P1263, $P1265
    goto if_1264_end
  if_1264:
    find_lex $P1271, "$?PACKAGE"
    get_who $P1272, $P1271
    set $P1273, $P1272["@MODIFIERS"]
    unless_null $P1273, vivify_816
    $P1273 = root_new ['parrot';'ResizablePMCArray']
  vivify_816:
    set $P1274, $P1273[0]
    unless_null $P1274, vivify_817
    $P1274 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1275, $P1274["r"]
    unless_null $P1275, vivify_818
    new $P1275, "Undef"
  vivify_818:
    set $P1263, $P1275
  if_1264_end:
    unless $P1263, if_1262_end
.annotate 'line', 310
    find_lex $P1276, "$past"
    unless_null $P1276, vivify_819
    new $P1276, "Undef"
  vivify_819:
    $P1276."backtrack"("r")
  if_1262_end:
.annotate 'line', 312
    find_lex $P1277, "$/"
    find_lex $P1278, "$past"
    unless_null $P1278, vivify_820
    new $P1278, "Undef"
  vivify_820:
    $P1279 = $P1277."!make"($P1278)
.annotate 'line', 300
    .return ($P1279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1239"  :anon :subid("204_1307873292.23355") :outer("203_1307873292.23355")
.annotate 'line', 304
    new $P1241, "Undef"
    .lex "$qast", $P1241
.annotate 'line', 303
    find_lex $P1243, "$past"
    unless_null $P1243, vivify_806
    new $P1243, "Undef"
  vivify_806:
    isfalse $I1244, $P1243
    unless $I1244, if_1242_end
    find_lex $P1245, "$/"
    unless_null $P1245, vivify_807
    new $P1245, "Undef"
  vivify_807:
    $P1246 = $P1245."CURSOR"()
    $P1246."panic"("Quantifier follows nothing")
  if_1242_end:
.annotate 'line', 304
    find_lex $P1247, "$/"
    unless_null $P1247, vivify_808
    $P1247 = root_new ['parrot';'Hash']
  vivify_808:
    set $P1248, $P1247["quantifier"]
    unless_null $P1248, vivify_809
    $P1248 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
    set $P1249, $P1248[0]
    unless_null $P1249, vivify_810
    new $P1249, "Undef"
  vivify_810:
    $P1250 = $P1249."ast"()
    store_lex "$qast", $P1250
.annotate 'line', 305
    find_lex $P1251, "$qast"
    unless_null $P1251, vivify_811
    new $P1251, "Undef"
  vivify_811:
    find_lex $P1252, "$past"
    unless_null $P1252, vivify_812
    new $P1252, "Undef"
  vivify_812:
    $P1251."unshift"($P1252)
.annotate 'line', 306
    find_lex $P1253, "$qast"
    unless_null $P1253, vivify_813
    new $P1253, "Undef"
  vivify_813:
    store_lex "$past", $P1253
.annotate 'line', 302
    .return ($P1253)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom" :anon :subid("205_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1281
    .param pmc param_1282
.annotate 'line', 315
    .lex "self", param_1281
    .lex "$/", param_1282
.annotate 'line', 316
    new $P1283, "Undef"
    .lex "$past", $P1283
.annotate 'line', 315
    find_lex $P1284, "$past"
    unless_null $P1284, vivify_821
    new $P1284, "Undef"
  vivify_821:
.annotate 'line', 317
    find_lex $P1286, "$/"
    unless_null $P1286, vivify_822
    $P1286 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1287, $P1286["metachar"]
    unless_null $P1287, vivify_823
    new $P1287, "Undef"
  vivify_823:
    if $P1287, if_1285
.annotate 'line', 319
    get_hll_global $P1291, "GLOBAL"
    nqp_get_package_through_who $P1292, $P1291, "PAST"
    get_who $P1293, $P1292
    set $P1294, $P1293["Regex"]
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_824
    new $P1295, "Undef"
  vivify_824:
    set $S1296, $P1295
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_825
    new $P1297, "Undef"
  vivify_825:
    $P1298 = $P1294."new"($S1296, "literal" :named("pasttype"), $P1297 :named("node"))
    store_lex "$past", $P1298
.annotate 'line', 320
    find_lex $P1300, "$?PACKAGE"
    get_who $P1301, $P1300
    set $P1302, $P1301["@MODIFIERS"]
    unless_null $P1302, vivify_826
    $P1302 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $P1303, $P1302[0]
    unless_null $P1303, vivify_827
    $P1303 = root_new ['parrot';'Hash']
  vivify_827:
    set $P1304, $P1303["i"]
    unless_null $P1304, vivify_828
    new $P1304, "Undef"
  vivify_828:
    unless $P1304, if_1299_end
    find_lex $P1305, "$past"
    unless_null $P1305, vivify_829
    new $P1305, "Undef"
  vivify_829:
    $P1305."subtype"("ignorecase")
  if_1299_end:
.annotate 'line', 318
    goto if_1285_end
  if_1285:
.annotate 'line', 317
    find_lex $P1288, "$/"
    unless_null $P1288, vivify_830
    $P1288 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1289, $P1288["metachar"]
    unless_null $P1289, vivify_831
    new $P1289, "Undef"
  vivify_831:
    $P1290 = $P1289."ast"()
    store_lex "$past", $P1290
  if_1285_end:
.annotate 'line', 322
    find_lex $P1306, "$/"
    find_lex $P1307, "$past"
    unless_null $P1307, vivify_832
    new $P1307, "Undef"
  vivify_832:
    $P1308 = $P1306."!make"($P1307)
.annotate 'line', 315
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>" :anon :subid("206_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1310
    .param pmc param_1311
.annotate 'line', 325
    .lex "self", param_1310
    .lex "$/", param_1311
.annotate 'line', 326
    new $P1312, "Undef"
    .lex "$past", $P1312
    get_hll_global $P1313, "GLOBAL"
    nqp_get_package_through_who $P1314, $P1313, "PAST"
    get_who $P1315, $P1314
    set $P1316, $P1315["Regex"]
    find_lex $P1317, "$/"
    unless_null $P1317, vivify_833
    new $P1317, "Undef"
  vivify_833:
    $P1318 = $P1316."new"("quant" :named("pasttype"), $P1317 :named("node"))
    store_lex "$past", $P1318
.annotate 'line', 327
    find_lex $P1319, "$/"
    find_lex $P1320, "$past"
    unless_null $P1320, vivify_834
    new $P1320, "Undef"
  vivify_834:
    find_lex $P1321, "$/"
    unless_null $P1321, vivify_835
    $P1321 = root_new ['parrot';'Hash']
  vivify_835:
    set $P1322, $P1321["backmod"]
    unless_null $P1322, vivify_836
    new $P1322, "Undef"
  vivify_836:
    $P1323 = "backmod"($P1320, $P1322)
    $P1324 = $P1319."!make"($P1323)
.annotate 'line', 325
    .return ($P1324)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>" :anon :subid("207_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1326
    .param pmc param_1327
.annotate 'line', 330
    .lex "self", param_1326
    .lex "$/", param_1327
.annotate 'line', 331
    new $P1328, "Undef"
    .lex "$past", $P1328
    get_hll_global $P1329, "GLOBAL"
    nqp_get_package_through_who $P1330, $P1329, "PAST"
    get_who $P1331, $P1330
    set $P1332, $P1331["Regex"]
    find_lex $P1333, "$/"
    unless_null $P1333, vivify_837
    new $P1333, "Undef"
  vivify_837:
    $P1334 = $P1332."new"("quant" :named("pasttype"), 1 :named("min"), $P1333 :named("node"))
    store_lex "$past", $P1334
.annotate 'line', 332
    find_lex $P1335, "$/"
    find_lex $P1336, "$past"
    unless_null $P1336, vivify_838
    new $P1336, "Undef"
  vivify_838:
    find_lex $P1337, "$/"
    unless_null $P1337, vivify_839
    $P1337 = root_new ['parrot';'Hash']
  vivify_839:
    set $P1338, $P1337["backmod"]
    unless_null $P1338, vivify_840
    new $P1338, "Undef"
  vivify_840:
    $P1339 = "backmod"($P1336, $P1338)
    $P1340 = $P1335."!make"($P1339)
.annotate 'line', 330
    .return ($P1340)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>" :anon :subid("208_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1342
    .param pmc param_1343
.annotate 'line', 335
    .lex "self", param_1342
    .lex "$/", param_1343
.annotate 'line', 336
    new $P1344, "Undef"
    .lex "$past", $P1344
    get_hll_global $P1345, "GLOBAL"
    nqp_get_package_through_who $P1346, $P1345, "PAST"
    get_who $P1347, $P1346
    set $P1348, $P1347["Regex"]
    find_lex $P1349, "$/"
    unless_null $P1349, vivify_841
    new $P1349, "Undef"
  vivify_841:
    $P1350 = $P1348."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1349 :named("node"))
    store_lex "$past", $P1350
.annotate 'line', 337
    find_lex $P1351, "$/"
    find_lex $P1352, "$past"
    unless_null $P1352, vivify_842
    new $P1352, "Undef"
  vivify_842:
    find_lex $P1353, "$/"
    unless_null $P1353, vivify_843
    $P1353 = root_new ['parrot';'Hash']
  vivify_843:
    set $P1354, $P1353["backmod"]
    unless_null $P1354, vivify_844
    new $P1354, "Undef"
  vivify_844:
    $P1355 = "backmod"($P1352, $P1354)
    $P1351."!make"($P1355)
.annotate 'line', 338
    find_lex $P1356, "$/"
    find_lex $P1357, "$past"
    unless_null $P1357, vivify_845
    new $P1357, "Undef"
  vivify_845:
    $P1358 = $P1356."!make"($P1357)
.annotate 'line', 335
    .return ($P1358)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>" :anon :subid("209_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1360
    .param pmc param_1361
.annotate 'line', 341
    .const 'Sub' $P1378 = "210_1307873292.23355" 
    capture_lex $P1378
    .lex "self", param_1360
    .lex "$/", param_1361
.annotate 'line', 342
    new $P1362, "Undef"
    .lex "$past", $P1362
.annotate 'line', 343
    new $P1363, "Undef"
    .lex "$ws", $P1363
.annotate 'line', 341
    find_lex $P1364, "$past"
    unless_null $P1364, vivify_846
    new $P1364, "Undef"
  vivify_846:
.annotate 'line', 343
    find_lex $P1367, "$/"
    unless_null $P1367, vivify_847
    $P1367 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1368, $P1367["normspace"]
    unless_null $P1368, vivify_848
    new $P1368, "Undef"
  vivify_848:
    if $P1368, if_1366
    set $P1365, $P1368
    goto if_1366_end
  if_1366:
    find_lex $P1369, "$?PACKAGE"
    get_who $P1370, $P1369
    set $P1371, $P1370["@MODIFIERS"]
    unless_null $P1371, vivify_849
    $P1371 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P1372, $P1371[0]
    unless_null $P1372, vivify_850
    $P1372 = root_new ['parrot';'Hash']
  vivify_850:
    set $P1373, $P1372["s"]
    unless_null $P1373, vivify_851
    new $P1373, "Undef"
  vivify_851:
    set $P1365, $P1373
  if_1366_end:
    store_lex "$ws", $P1365
.annotate 'line', 344
    find_lex $P1375, "$/"
    unless_null $P1375, vivify_852
    $P1375 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1376, $P1375["quantified_atom"]
    unless_null $P1376, vivify_853
    new $P1376, "Undef"
  vivify_853:
    if $P1376, if_1374
.annotate 'line', 360
    get_hll_global $P1408, "GLOBAL"
    nqp_get_package_through_who $P1409, $P1408, "PAST"
    get_who $P1410, $P1409
    set $P1411, $P1410["Regex"]
    find_lex $P1412, "$/"
    unless_null $P1412, vivify_854
    $P1412 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1413, $P1412["min"]
    unless_null $P1413, vivify_855
    new $P1413, "Undef"
  vivify_855:
    set $N1414, $P1413
    find_lex $P1415, "$/"
    unless_null $P1415, vivify_856
    new $P1415, "Undef"
  vivify_856:
    $P1416 = $P1411."new"("quant" :named("pasttype"), $N1414 :named("min"), $P1415 :named("node"))
    store_lex "$past", $P1416
.annotate 'line', 361
    find_lex $P1418, "$/"
    unless_null $P1418, vivify_857
    $P1418 = root_new ['parrot';'Hash']
  vivify_857:
    set $P1419, $P1418["max"]
    unless_null $P1419, vivify_858
    new $P1419, "Undef"
  vivify_858:
    isfalse $I1420, $P1419
    if $I1420, if_1417
.annotate 'line', 362
    find_lex $P1426, "$/"
    unless_null $P1426, vivify_859
    $P1426 = root_new ['parrot';'Hash']
  vivify_859:
    set $P1427, $P1426["max"]
    unless_null $P1427, vivify_860
    $P1427 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $P1428, $P1427[0]
    unless_null $P1428, vivify_861
    new $P1428, "Undef"
  vivify_861:
    set $S1429, $P1428
    isne $I1430, $S1429, "*"
    unless $I1430, if_1425_end
    find_lex $P1431, "$past"
    unless_null $P1431, vivify_862
    new $P1431, "Undef"
  vivify_862:
    find_lex $P1432, "$/"
    unless_null $P1432, vivify_863
    $P1432 = root_new ['parrot';'Hash']
  vivify_863:
    set $P1433, $P1432["max"]
    unless_null $P1433, vivify_864
    $P1433 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P1434, $P1433[0]
    unless_null $P1434, vivify_865
    new $P1434, "Undef"
  vivify_865:
    set $N1435, $P1434
    $P1431."max"($N1435)
  if_1425_end:
    goto if_1417_end
  if_1417:
.annotate 'line', 361
    find_lex $P1421, "$past"
    unless_null $P1421, vivify_866
    new $P1421, "Undef"
  vivify_866:
    find_lex $P1422, "$/"
    unless_null $P1422, vivify_867
    $P1422 = root_new ['parrot';'Hash']
  vivify_867:
    set $P1423, $P1422["min"]
    unless_null $P1423, vivify_868
    new $P1423, "Undef"
  vivify_868:
    set $N1424, $P1423
    $P1421."max"($N1424)
  if_1417_end:
.annotate 'line', 363
    find_lex $P1437, "$ws"
    unless_null $P1437, vivify_869
    new $P1437, "Undef"
  vivify_869:
    unless $P1437, if_1436_end
    find_lex $P1438, "$past"
    unless_null $P1438, vivify_870
    new $P1438, "Undef"
  vivify_870:
    get_hll_global $P1439, "GLOBAL"
    nqp_get_package_through_who $P1440, $P1439, "PAST"
    get_who $P1441, $P1440
    set $P1442, $P1441["Regex"]
    $P1443 = $P1442."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1438."sep"($P1443)
  if_1436_end:
.annotate 'line', 359
    goto if_1374_end
  if_1374:
.annotate 'line', 344
    .const 'Sub' $P1378 = "210_1307873292.23355" 
    capture_lex $P1378
    $P1378()
  if_1374_end:
.annotate 'line', 367
    find_lex $P1444, "$/"
    find_lex $P1445, "$past"
    unless_null $P1445, vivify_877
    new $P1445, "Undef"
  vivify_877:
    find_lex $P1446, "$/"
    unless_null $P1446, vivify_878
    $P1446 = root_new ['parrot';'Hash']
  vivify_878:
    set $P1447, $P1446["backmod"]
    unless_null $P1447, vivify_879
    new $P1447, "Undef"
  vivify_879:
    $P1448 = "backmod"($P1445, $P1447)
    $P1449 = $P1444."!make"($P1448)
.annotate 'line', 341
    .return ($P1449)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1377"  :anon :subid("210_1307873292.23355") :outer("209_1307873292.23355")
.annotate 'line', 345
    new $P1379, "Undef"
    .lex "$ast", $P1379
    find_lex $P1380, "$/"
    unless_null $P1380, vivify_871
    $P1380 = root_new ['parrot';'Hash']
  vivify_871:
    set $P1381, $P1380["quantified_atom"]
    unless_null $P1381, vivify_872
    new $P1381, "Undef"
  vivify_872:
    $P1382 = $P1381."ast"()
    store_lex "$ast", $P1382
.annotate 'line', 346
    find_lex $P1384, "$ws"
    unless_null $P1384, vivify_873
    new $P1384, "Undef"
  vivify_873:
    unless $P1384, if_1383_end
.annotate 'line', 347
    get_hll_global $P1385, "GLOBAL"
    nqp_get_package_through_who $P1386, $P1385, "PAST"
    get_who $P1387, $P1386
    set $P1388, $P1387["Regex"]
.annotate 'line', 349
    get_hll_global $P1389, "GLOBAL"
    nqp_get_package_through_who $P1390, $P1389, "PAST"
    get_who $P1391, $P1390
    set $P1392, $P1391["Regex"]
    $P1393 = $P1392."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1394, "$ast"
    unless_null $P1394, vivify_874
    new $P1394, "Undef"
  vivify_874:
.annotate 'line', 352
    get_hll_global $P1395, "GLOBAL"
    nqp_get_package_through_who $P1396, $P1395, "PAST"
    get_who $P1397, $P1396
    set $P1398, $P1397["Regex"]
    $P1399 = $P1398."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1400 = $P1388."new"($P1393, $P1394, $P1399, "concat" :named("pasttype"))
.annotate 'line', 347
    store_lex "$ast", $P1400
  if_1383_end:
.annotate 'line', 356
    get_hll_global $P1401, "GLOBAL"
    nqp_get_package_through_who $P1402, $P1401, "PAST"
    get_who $P1403, $P1402
    set $P1404, $P1403["Regex"]
    find_lex $P1405, "$ast"
    unless_null $P1405, vivify_875
    new $P1405, "Undef"
  vivify_875:
    find_lex $P1406, "$/"
    unless_null $P1406, vivify_876
    new $P1406, "Undef"
  vivify_876:
    $P1407 = $P1404."new"("quant" :named("pasttype"), 1 :named("min"), $P1405 :named("sep"), $P1406 :named("node"))
    store_lex "$past", $P1407
.annotate 'line', 344
    .return ($P1407)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>" :anon :subid("211_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1451
    .param pmc param_1452
.annotate 'line', 370
    .lex "self", param_1451
    .lex "$/", param_1452
.annotate 'line', 371
    new $P1453, "Undef"
    .lex "$past", $P1453
.annotate 'line', 372
    find_lex $P1456, "$?PACKAGE"
    get_who $P1457, $P1456
    set $P1458, $P1457["@MODIFIERS"]
    unless_null $P1458, vivify_880
    $P1458 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    set $P1459, $P1458[0]
    unless_null $P1459, vivify_881
    $P1459 = root_new ['parrot';'Hash']
  vivify_881:
    set $P1460, $P1459["s"]
    unless_null $P1460, vivify_882
    new $P1460, "Undef"
  vivify_882:
    if $P1460, if_1455
    new $P1467, "Integer"
    assign $P1467, 0
    set $P1454, $P1467
    goto if_1455_end
  if_1455:
    get_hll_global $P1461, "GLOBAL"
    nqp_get_package_through_who $P1462, $P1461, "PAST"
    get_who $P1463, $P1462
    set $P1464, $P1463["Regex"]
    find_lex $P1465, "$/"
    unless_null $P1465, vivify_883
    new $P1465, "Undef"
  vivify_883:
    $P1466 = $P1464."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1465 :named("node"))
    set $P1454, $P1466
  if_1455_end:
    store_lex "$past", $P1454
.annotate 'line', 375
    find_lex $P1468, "$/"
    find_lex $P1469, "$past"
    unless_null $P1469, vivify_884
    new $P1469, "Undef"
  vivify_884:
    $P1470 = $P1468."!make"($P1469)
.annotate 'line', 370
    .return ($P1470)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>" :anon :subid("212_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1472
    .param pmc param_1473
.annotate 'line', 379
    .lex "self", param_1472
    .lex "$/", param_1473
.annotate 'line', 380
    find_lex $P1474, "$/"
    find_lex $P1475, "$/"
    unless_null $P1475, vivify_885
    $P1475 = root_new ['parrot';'Hash']
  vivify_885:
    set $P1476, $P1475["nibbler"]
    unless_null $P1476, vivify_886
    new $P1476, "Undef"
  vivify_886:
    $P1477 = $P1476."ast"()
    $P1478 = $P1474."!make"($P1477)
.annotate 'line', 379
    .return ($P1478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>" :anon :subid("213_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1480
    .param pmc param_1481
.annotate 'line', 383
    .lex "self", param_1480
    .lex "$/", param_1481
.annotate 'line', 384
    new $P1482, "Undef"
    .lex "$subpast", $P1482
.annotate 'line', 385
    new $P1483, "Undef"
    .lex "$past", $P1483
.annotate 'line', 384
    find_lex $P1484, "$/"
    unless_null $P1484, vivify_887
    $P1484 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1485, $P1484["nibbler"]
    unless_null $P1485, vivify_888
    new $P1485, "Undef"
  vivify_888:
    $P1486 = $P1485."ast"()
    $P1487 = "buildsub"($P1486)
    store_lex "$subpast", $P1487
.annotate 'line', 385
    get_hll_global $P1488, "GLOBAL"
    nqp_get_package_through_who $P1489, $P1488, "PAST"
    get_who $P1490, $P1489
    set $P1491, $P1490["Regex"]
    find_lex $P1492, "$subpast"
    unless_null $P1492, vivify_889
    new $P1492, "Undef"
  vivify_889:
    find_lex $P1493, "$/"
    unless_null $P1493, vivify_890
    new $P1493, "Undef"
  vivify_890:
    $P1494 = $P1491."new"($P1492, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1493 :named("node"))
    store_lex "$past", $P1494
.annotate 'line', 387
    find_lex $P1495, "$/"
    find_lex $P1496, "$past"
    unless_null $P1496, vivify_891
    new $P1496, "Undef"
  vivify_891:
    $P1497 = $P1495."!make"($P1496)
.annotate 'line', 383
    .return ($P1497)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>" :anon :subid("214_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1499
    .param pmc param_1500
.annotate 'line', 390
    .lex "self", param_1499
    .lex "$/", param_1500
.annotate 'line', 391
    new $P1501, "Undef"
    .lex "$quote", $P1501
.annotate 'line', 393
    new $P1502, "Undef"
    .lex "$past", $P1502
.annotate 'line', 391
    find_lex $P1503, "$/"
    unless_null $P1503, vivify_892
    $P1503 = root_new ['parrot';'Hash']
  vivify_892:
    set $P1504, $P1503["quote_EXPR"]
    unless_null $P1504, vivify_893
    new $P1504, "Undef"
  vivify_893:
    $P1505 = $P1504."ast"()
    store_lex "$quote", $P1505
.annotate 'line', 392
    get_hll_global $P1507, "GLOBAL"
    nqp_get_package_through_who $P1508, $P1507, "PAST"
    get_who $P1509, $P1508
    set $P1510, $P1509["Val"]
    find_lex $P1511, "$quote"
    unless_null $P1511, vivify_894
    new $P1511, "Undef"
  vivify_894:
    $P1512 = $P1510."ACCEPTS"($P1511)
    unless $P1512, if_1506_end
    find_lex $P1513, "$quote"
    unless_null $P1513, vivify_895
    new $P1513, "Undef"
  vivify_895:
    $P1514 = $P1513."value"()
    store_lex "$quote", $P1514
  if_1506_end:
.annotate 'line', 393
    get_hll_global $P1515, "GLOBAL"
    nqp_get_package_through_who $P1516, $P1515, "PAST"
    get_who $P1517, $P1516
    set $P1518, $P1517["Regex"]
    find_lex $P1519, "$quote"
    unless_null $P1519, vivify_896
    new $P1519, "Undef"
  vivify_896:
    find_lex $P1520, "$/"
    unless_null $P1520, vivify_897
    new $P1520, "Undef"
  vivify_897:
    $P1521 = $P1518."new"($P1519, "literal" :named("pasttype"), $P1520 :named("node"))
    store_lex "$past", $P1521
.annotate 'line', 394
    find_lex $P1523, "$?PACKAGE"
    get_who $P1524, $P1523
    set $P1525, $P1524["@MODIFIERS"]
    unless_null $P1525, vivify_898
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    set $P1526, $P1525[0]
    unless_null $P1526, vivify_899
    $P1526 = root_new ['parrot';'Hash']
  vivify_899:
    set $P1527, $P1526["i"]
    unless_null $P1527, vivify_900
    new $P1527, "Undef"
  vivify_900:
    unless $P1527, if_1522_end
    find_lex $P1528, "$past"
    unless_null $P1528, vivify_901
    new $P1528, "Undef"
  vivify_901:
    $P1528."subtype"("ignorecase")
  if_1522_end:
.annotate 'line', 395
    find_lex $P1529, "$/"
    find_lex $P1530, "$past"
    unless_null $P1530, vivify_902
    new $P1530, "Undef"
  vivify_902:
    $P1531 = $P1529."!make"($P1530)
.annotate 'line', 390
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">" :anon :subid("215_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1533
    .param pmc param_1534
.annotate 'line', 398
    .lex "self", param_1533
    .lex "$/", param_1534
.annotate 'line', 399
    new $P1535, "Undef"
    .lex "$quote", $P1535
.annotate 'line', 401
    new $P1536, "Undef"
    .lex "$past", $P1536
.annotate 'line', 399
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_903
    $P1537 = root_new ['parrot';'Hash']
  vivify_903:
    set $P1538, $P1537["quote_EXPR"]
    unless_null $P1538, vivify_904
    new $P1538, "Undef"
  vivify_904:
    $P1539 = $P1538."ast"()
    store_lex "$quote", $P1539
.annotate 'line', 400
    get_hll_global $P1541, "GLOBAL"
    nqp_get_package_through_who $P1542, $P1541, "PAST"
    get_who $P1543, $P1542
    set $P1544, $P1543["Val"]
    find_lex $P1545, "$quote"
    unless_null $P1545, vivify_905
    new $P1545, "Undef"
  vivify_905:
    $P1546 = $P1544."ACCEPTS"($P1545)
    unless $P1546, if_1540_end
    find_lex $P1547, "$quote"
    unless_null $P1547, vivify_906
    new $P1547, "Undef"
  vivify_906:
    $P1548 = $P1547."value"()
    store_lex "$quote", $P1548
  if_1540_end:
.annotate 'line', 401
    get_hll_global $P1549, "GLOBAL"
    nqp_get_package_through_who $P1550, $P1549, "PAST"
    get_who $P1551, $P1550
    set $P1552, $P1551["Regex"]
    find_lex $P1553, "$quote"
    unless_null $P1553, vivify_907
    new $P1553, "Undef"
  vivify_907:
    find_lex $P1554, "$/"
    unless_null $P1554, vivify_908
    new $P1554, "Undef"
  vivify_908:
    $P1555 = $P1552."new"($P1553, "literal" :named("pasttype"), $P1554 :named("node"))
    store_lex "$past", $P1555
.annotate 'line', 402
    find_lex $P1557, "$?PACKAGE"
    get_who $P1558, $P1557
    set $P1559, $P1558["@MODIFIERS"]
    unless_null $P1559, vivify_909
    $P1559 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    set $P1560, $P1559[0]
    unless_null $P1560, vivify_910
    $P1560 = root_new ['parrot';'Hash']
  vivify_910:
    set $P1561, $P1560["i"]
    unless_null $P1561, vivify_911
    new $P1561, "Undef"
  vivify_911:
    unless $P1561, if_1556_end
    find_lex $P1562, "$past"
    unless_null $P1562, vivify_912
    new $P1562, "Undef"
  vivify_912:
    $P1562."subtype"("ignorecase")
  if_1556_end:
.annotate 'line', 403
    find_lex $P1563, "$/"
    find_lex $P1564, "$past"
    unless_null $P1564, vivify_913
    new $P1564, "Undef"
  vivify_913:
    $P1565 = $P1563."!make"($P1564)
.annotate 'line', 398
    .return ($P1565)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>" :anon :subid("216_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1567
    .param pmc param_1568
.annotate 'line', 406
    .lex "self", param_1567
    .lex "$/", param_1568
.annotate 'line', 407
    new $P1569, "Undef"
    .lex "$past", $P1569
    get_hll_global $P1570, "GLOBAL"
    nqp_get_package_through_who $P1571, $P1570, "PAST"
    get_who $P1572, $P1571
    set $P1573, $P1572["Regex"]
    find_lex $P1574, "$/"
    unless_null $P1574, vivify_914
    new $P1574, "Undef"
  vivify_914:
    $P1575 = $P1573."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1574 :named("node"))
    store_lex "$past", $P1575
.annotate 'line', 408
    find_lex $P1576, "$/"
    find_lex $P1577, "$past"
    unless_null $P1577, vivify_915
    new $P1577, "Undef"
  vivify_915:
    $P1578 = $P1576."!make"($P1577)
.annotate 'line', 406
    .return ($P1578)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>" :anon :subid("217_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1580
    .param pmc param_1581
.annotate 'line', 411
    .lex "self", param_1580
    .lex "$/", param_1581
.annotate 'line', 412
    new $P1582, "Undef"
    .lex "$past", $P1582
    get_hll_global $P1583, "GLOBAL"
    nqp_get_package_through_who $P1584, $P1583, "PAST"
    get_who $P1585, $P1584
    set $P1586, $P1585["Regex"]
    find_lex $P1587, "$/"
    unless_null $P1587, vivify_916
    new $P1587, "Undef"
  vivify_916:
    $P1588 = $P1586."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1587 :named("node"))
    store_lex "$past", $P1588
.annotate 'line', 413
    find_lex $P1589, "$/"
    find_lex $P1590, "$past"
    unless_null $P1590, vivify_917
    new $P1590, "Undef"
  vivify_917:
    $P1591 = $P1589."!make"($P1590)
.annotate 'line', 411
    .return ($P1591)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>" :anon :subid("218_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1593
    .param pmc param_1594
.annotate 'line', 416
    .lex "self", param_1593
    .lex "$/", param_1594
.annotate 'line', 417
    new $P1595, "Undef"
    .lex "$past", $P1595
    get_hll_global $P1596, "GLOBAL"
    nqp_get_package_through_who $P1597, $P1596, "PAST"
    get_who $P1598, $P1597
    set $P1599, $P1598["Regex"]
    find_lex $P1600, "$/"
    unless_null $P1600, vivify_918
    new $P1600, "Undef"
  vivify_918:
    $P1601 = $P1599."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1600 :named("node"))
    store_lex "$past", $P1601
.annotate 'line', 418
    find_lex $P1602, "$/"
    find_lex $P1603, "$past"
    unless_null $P1603, vivify_919
    new $P1603, "Undef"
  vivify_919:
    $P1604 = $P1602."!make"($P1603)
.annotate 'line', 416
    .return ($P1604)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>" :anon :subid("219_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1606
    .param pmc param_1607
.annotate 'line', 421
    .lex "self", param_1606
    .lex "$/", param_1607
.annotate 'line', 422
    new $P1608, "Undef"
    .lex "$past", $P1608
    get_hll_global $P1609, "GLOBAL"
    nqp_get_package_through_who $P1610, $P1609, "PAST"
    get_who $P1611, $P1610
    set $P1612, $P1611["Regex"]
    find_lex $P1613, "$/"
    unless_null $P1613, vivify_920
    new $P1613, "Undef"
  vivify_920:
    $P1614 = $P1612."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1613 :named("node"))
    store_lex "$past", $P1614
.annotate 'line', 423
    find_lex $P1615, "$/"
    find_lex $P1616, "$past"
    unless_null $P1616, vivify_921
    new $P1616, "Undef"
  vivify_921:
    $P1617 = $P1615."!make"($P1616)
.annotate 'line', 421
    .return ($P1617)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>" :anon :subid("220_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1619
    .param pmc param_1620
.annotate 'line', 426
    .lex "self", param_1619
    .lex "$/", param_1620
.annotate 'line', 427
    new $P1621, "Undef"
    .lex "$past", $P1621
    get_hll_global $P1622, "GLOBAL"
    nqp_get_package_through_who $P1623, $P1622, "PAST"
    get_who $P1624, $P1623
    set $P1625, $P1624["Regex"]
    find_lex $P1626, "$/"
    unless_null $P1626, vivify_922
    new $P1626, "Undef"
  vivify_922:
    $P1627 = $P1625."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1626 :named("node"))
    store_lex "$past", $P1627
.annotate 'line', 428
    find_lex $P1628, "$/"
    find_lex $P1629, "$past"
    unless_null $P1629, vivify_923
    new $P1629, "Undef"
  vivify_923:
    $P1630 = $P1628."!make"($P1629)
.annotate 'line', 426
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>" :anon :subid("221_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1632
    .param pmc param_1633
.annotate 'line', 431
    .lex "self", param_1632
    .lex "$/", param_1633
.annotate 'line', 432
    new $P1634, "Undef"
    .lex "$past", $P1634
    get_hll_global $P1635, "GLOBAL"
    nqp_get_package_through_who $P1636, $P1635, "PAST"
    get_who $P1637, $P1636
    set $P1638, $P1637["Regex"]
    find_lex $P1639, "$/"
    unless_null $P1639, vivify_924
    new $P1639, "Undef"
  vivify_924:
    $P1640 = $P1638."new"("cut" :named("pasttype"), $P1639 :named("node"))
    store_lex "$past", $P1640
.annotate 'line', 433
    find_lex $P1641, "$/"
    find_lex $P1642, "$past"
    unless_null $P1642, vivify_925
    new $P1642, "Undef"
  vivify_925:
    $P1643 = $P1641."!make"($P1642)
.annotate 'line', 431
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>" :anon :subid("222_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 436
    .lex "self", param_1645
    .lex "$/", param_1646
.annotate 'line', 437
    new $P1647, "Undef"
    .lex "$past", $P1647
    get_hll_global $P1648, "GLOBAL"
    nqp_get_package_through_who $P1649, $P1648, "PAST"
    get_who $P1650, $P1649
    set $P1651, $P1650["Regex"]
    find_lex $P1652, "$/"
    unless_null $P1652, vivify_926
    new $P1652, "Undef"
  vivify_926:
    $P1653 = $P1651."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1652 :named("node"))
    store_lex "$past", $P1653
.annotate 'line', 438
    find_lex $P1654, "$/"
    find_lex $P1655, "$past"
    unless_null $P1655, vivify_927
    new $P1655, "Undef"
  vivify_927:
    $P1656 = $P1654."!make"($P1655)
.annotate 'line', 436
    .return ($P1656)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>" :anon :subid("223_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1658
    .param pmc param_1659
.annotate 'line', 441
    .lex "self", param_1658
    .lex "$/", param_1659
.annotate 'line', 442
    new $P1660, "Undef"
    .lex "$past", $P1660
    get_hll_global $P1661, "GLOBAL"
    nqp_get_package_through_who $P1662, $P1661, "PAST"
    get_who $P1663, $P1662
    set $P1664, $P1663["Regex"]
    find_lex $P1665, "$/"
    unless_null $P1665, vivify_928
    new $P1665, "Undef"
  vivify_928:
    $P1666 = $P1664."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1665 :named("node"))
    store_lex "$past", $P1666
.annotate 'line', 443
    find_lex $P1667, "$/"
    find_lex $P1668, "$past"
    unless_null $P1668, vivify_929
    new $P1668, "Undef"
  vivify_929:
    $P1669 = $P1667."!make"($P1668)
.annotate 'line', 441
    .return ($P1669)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>" :anon :subid("224_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1671
    .param pmc param_1672
.annotate 'line', 446
    .lex "self", param_1671
    .lex "$/", param_1672
.annotate 'line', 447
    find_lex $P1673, "$/"
    find_lex $P1674, "$/"
    unless_null $P1674, vivify_930
    $P1674 = root_new ['parrot';'Hash']
  vivify_930:
    set $P1675, $P1674["backslash"]
    unless_null $P1675, vivify_931
    new $P1675, "Undef"
  vivify_931:
    $P1676 = $P1675."ast"()
    $P1677 = $P1673."!make"($P1676)
.annotate 'line', 446
    .return ($P1677)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>" :anon :subid("225_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1679
    .param pmc param_1680
.annotate 'line', 450
    .lex "self", param_1679
    .lex "$/", param_1680
.annotate 'line', 451
    find_lex $P1681, "$/"
    find_lex $P1682, "$/"
    unless_null $P1682, vivify_932
    $P1682 = root_new ['parrot';'Hash']
  vivify_932:
    set $P1683, $P1682["mod_internal"]
    unless_null $P1683, vivify_933
    new $P1683, "Undef"
  vivify_933:
    $P1684 = $P1683."ast"()
    $P1685 = $P1681."!make"($P1684)
.annotate 'line', 450
    .return ($P1685)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>" :anon :subid("226_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1687
    .param pmc param_1688
.annotate 'line', 454
    .lex "self", param_1687
    .lex "$/", param_1688
.annotate 'line', 455
    find_lex $P1689, "$/"
    find_lex $P1690, "$/"
    unless_null $P1690, vivify_934
    $P1690 = root_new ['parrot';'Hash']
  vivify_934:
    set $P1691, $P1690["assertion"]
    unless_null $P1691, vivify_935
    new $P1691, "Undef"
  vivify_935:
    $P1692 = $P1691."ast"()
    $P1693 = $P1689."!make"($P1692)
.annotate 'line', 454
    .return ($P1693)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>" :anon :subid("227_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1695
    .param pmc param_1696
.annotate 'line', 458
    .lex "self", param_1695
    .lex "$/", param_1696
.annotate 'line', 459
    find_lex $P1697, "$/"
    get_hll_global $P1698, "GLOBAL"
    nqp_get_package_through_who $P1699, $P1698, "PAST"
    get_who $P1700, $P1699
    set $P1701, $P1700["Regex"]
.annotate 'line', 460
    find_lex $P1702, "$/"
    unless_null $P1702, vivify_936
    $P1702 = root_new ['parrot';'Hash']
  vivify_936:
    set $P1703, $P1702["EXPR"]
    unless_null $P1703, vivify_937
    new $P1703, "Undef"
  vivify_937:
    $P1704 = $P1703."ast"()
.annotate 'line', 461
    get_hll_global $P1705, "GLOBAL"
    nqp_get_package_through_who $P1706, $P1705, "PAST"
    get_who $P1707, $P1706
    set $P1708, $P1707["Regex"]
.annotate 'line', 462
    find_lex $P1709, "$/"
    unless_null $P1709, vivify_938
    $P1709 = root_new ['parrot';'Hash']
  vivify_938:
    set $P1710, $P1709["GOAL"]
    unless_null $P1710, vivify_939
    new $P1710, "Undef"
  vivify_939:
    $P1711 = $P1710."ast"()
.annotate 'line', 463
    get_hll_global $P1712, "GLOBAL"
    nqp_get_package_through_who $P1713, $P1712, "PAST"
    get_who $P1714, $P1713
    set $P1715, $P1714["Regex"]
    find_lex $P1716, "$/"
    unless_null $P1716, vivify_940
    $P1716 = root_new ['parrot';'Hash']
  vivify_940:
    set $P1717, $P1716["GOAL"]
    unless_null $P1717, vivify_941
    new $P1717, "Undef"
  vivify_941:
    set $S1718, $P1717
    $P1719 = $P1715."new"("FAILGOAL", $S1718, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1720 = $P1708."new"($P1711, $P1719, "alt" :named("pasttype"))
.annotate 'line', 461
    $P1721 = $P1701."new"($P1704, $P1720, "concat" :named("pasttype"))
.annotate 'line', 459
    $P1722 = $P1697."!make"($P1721)
.annotate 'line', 458
    .return ($P1722)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>" :anon :subid("228_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1724
    .param pmc param_1725
.annotate 'line', 471
    .lex "self", param_1724
    .lex "$/", param_1725
.annotate 'line', 472
    new $P1726, "Undef"
    .lex "$past", $P1726
.annotate 'line', 473
    find_lex $P1729, "$/"
    unless_null $P1729, vivify_942
    $P1729 = root_new ['parrot';'Hash']
  vivify_942:
    set $P1730, $P1729["key"]
    unless_null $P1730, vivify_943
    new $P1730, "Undef"
  vivify_943:
    if $P1730, if_1728
    new $P1741, "Integer"
    assign $P1741, 0
    set $P1727, $P1741
    goto if_1728_end
  if_1728:
    get_hll_global $P1731, "GLOBAL"
    nqp_get_package_through_who $P1732, $P1731, "PAST"
    get_who $P1733, $P1732
    set $P1734, $P1733["Regex"]
    find_lex $P1735, "$/"
    unless_null $P1735, vivify_944
    $P1735 = root_new ['parrot';'Hash']
  vivify_944:
    set $P1736, $P1735["key"]
    unless_null $P1736, vivify_945
    $P1736 = root_new ['parrot';'ResizablePMCArray']
  vivify_945:
    set $P1737, $P1736[0]
    unless_null $P1737, vivify_946
    new $P1737, "Undef"
  vivify_946:
    set $S1738, $P1737
    find_lex $P1739, "$/"
    unless_null $P1739, vivify_947
    new $P1739, "Undef"
  vivify_947:
    $P1740 = $P1734."new"($S1738, "reduce" :named("pasttype"), $P1739 :named("node"))
    set $P1727, $P1740
  if_1728_end:
    store_lex "$past", $P1727
.annotate 'line', 475
    find_lex $P1742, "$/"
    find_lex $P1743, "$past"
    unless_null $P1743, vivify_948
    new $P1743, "Undef"
  vivify_948:
    $P1744 = $P1742."!make"($P1743)
.annotate 'line', 471
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>" :anon :subid("229_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1746
    .param pmc param_1747
.annotate 'line', 478
    .lex "self", param_1746
    .lex "$/", param_1747
.annotate 'line', 479
    new $P1748, "Undef"
    .lex "$past", $P1748
.annotate 'line', 480
    new $P1749, "Undef"
    .lex "$name", $P1749
.annotate 'line', 478
    find_lex $P1750, "$past"
    unless_null $P1750, vivify_949
    new $P1750, "Undef"
  vivify_949:
.annotate 'line', 480
    find_lex $P1753, "$/"
    unless_null $P1753, vivify_950
    $P1753 = root_new ['parrot';'Hash']
  vivify_950:
    set $P1754, $P1753["pos"]
    unless_null $P1754, vivify_951
    new $P1754, "Undef"
  vivify_951:
    if $P1754, if_1752
    find_lex $P1758, "$/"
    unless_null $P1758, vivify_952
    $P1758 = root_new ['parrot';'Hash']
  vivify_952:
    set $P1759, $P1758["name"]
    unless_null $P1759, vivify_953
    new $P1759, "Undef"
  vivify_953:
    set $S1760, $P1759
    new $P1751, 'String'
    set $P1751, $S1760
    goto if_1752_end
  if_1752:
    find_lex $P1755, "$/"
    unless_null $P1755, vivify_954
    $P1755 = root_new ['parrot';'Hash']
  vivify_954:
    set $P1756, $P1755["pos"]
    unless_null $P1756, vivify_955
    new $P1756, "Undef"
  vivify_955:
    set $N1757, $P1756
    new $P1751, 'Float'
    set $P1751, $N1757
  if_1752_end:
    store_lex "$name", $P1751
.annotate 'line', 481
    find_lex $P1762, "$/"
    unless_null $P1762, vivify_956
    $P1762 = root_new ['parrot';'Hash']
  vivify_956:
    set $P1763, $P1762["quantified_atom"]
    unless_null $P1763, vivify_957
    new $P1763, "Undef"
  vivify_957:
    if $P1763, if_1761
.annotate 'line', 492
    get_hll_global $P1797, "GLOBAL"
    nqp_get_package_through_who $P1798, $P1797, "PAST"
    get_who $P1799, $P1798
    set $P1800, $P1799["Regex"]
    find_lex $P1801, "$name"
    unless_null $P1801, vivify_958
    new $P1801, "Undef"
  vivify_958:
    find_lex $P1802, "$/"
    unless_null $P1802, vivify_959
    new $P1802, "Undef"
  vivify_959:
    $P1803 = $P1800."new"("!BACKREF", $P1801, "subrule" :named("pasttype"), "method" :named("subtype"), $P1802 :named("node"))
    store_lex "$past", $P1803
.annotate 'line', 491
    goto if_1761_end
  if_1761:
.annotate 'line', 482
    find_lex $P1764, "$/"
    unless_null $P1764, vivify_960
    $P1764 = root_new ['parrot';'Hash']
  vivify_960:
    set $P1765, $P1764["quantified_atom"]
    unless_null $P1765, vivify_961
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_961:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_962
    new $P1766, "Undef"
  vivify_962:
    $P1767 = $P1766."ast"()
    store_lex "$past", $P1767
.annotate 'line', 483
    find_lex $P1771, "$past"
    unless_null $P1771, vivify_963
    new $P1771, "Undef"
  vivify_963:
    $S1772 = $P1771."pasttype"()
    iseq $I1773, $S1772, "quant"
    if $I1773, if_1770
    new $P1769, 'Integer'
    set $P1769, $I1773
    goto if_1770_end
  if_1770:
    find_lex $P1774, "$past"
    unless_null $P1774, vivify_964
    $P1774 = root_new ['parrot';'ResizablePMCArray']
  vivify_964:
    set $P1775, $P1774[0]
    unless_null $P1775, vivify_965
    new $P1775, "Undef"
  vivify_965:
    $S1776 = $P1775."pasttype"()
    iseq $I1777, $S1776, "subrule"
    new $P1769, 'Integer'
    set $P1769, $I1777
  if_1770_end:
    if $P1769, if_1768
.annotate 'line', 486
    find_lex $P1783, "$past"
    unless_null $P1783, vivify_966
    new $P1783, "Undef"
  vivify_966:
    $S1784 = $P1783."pasttype"()
    iseq $I1785, $S1784, "subrule"
    if $I1785, if_1782
.annotate 'line', 488
    get_hll_global $P1789, "GLOBAL"
    nqp_get_package_through_who $P1790, $P1789, "PAST"
    get_who $P1791, $P1790
    set $P1792, $P1791["Regex"]
    find_lex $P1793, "$past"
    unless_null $P1793, vivify_967
    new $P1793, "Undef"
  vivify_967:
    find_lex $P1794, "$name"
    unless_null $P1794, vivify_968
    new $P1794, "Undef"
  vivify_968:
    find_lex $P1795, "$/"
    unless_null $P1795, vivify_969
    new $P1795, "Undef"
  vivify_969:
    $P1796 = $P1792."new"($P1793, $P1794 :named("name"), "subcapture" :named("pasttype"), $P1795 :named("node"))
    store_lex "$past", $P1796
.annotate 'line', 487
    goto if_1782_end
  if_1782:
.annotate 'line', 486
    find_lex $P1786, "self"
    find_lex $P1787, "$past"
    unless_null $P1787, vivify_970
    new $P1787, "Undef"
  vivify_970:
    find_lex $P1788, "$name"
    unless_null $P1788, vivify_971
    new $P1788, "Undef"
  vivify_971:
    $P1786."subrule_alias"($P1787, $P1788)
  if_1782_end:
    goto if_1768_end
  if_1768:
.annotate 'line', 484
    find_lex $P1778, "self"
    find_lex $P1779, "$past"
    unless_null $P1779, vivify_972
    $P1779 = root_new ['parrot';'ResizablePMCArray']
  vivify_972:
    set $P1780, $P1779[0]
    unless_null $P1780, vivify_973
    new $P1780, "Undef"
  vivify_973:
    find_lex $P1781, "$name"
    unless_null $P1781, vivify_974
    new $P1781, "Undef"
  vivify_974:
    $P1778."subrule_alias"($P1780, $P1781)
  if_1768_end:
  if_1761_end:
.annotate 'line', 495
    find_lex $P1804, "$/"
    find_lex $P1805, "$past"
    unless_null $P1805, vivify_975
    new $P1805, "Undef"
  vivify_975:
    $P1806 = $P1804."!make"($P1805)
.annotate 'line', 478
    .return ($P1806)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>" :anon :subid("230_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1808
    .param pmc param_1809
.annotate 'line', 498
    .lex "self", param_1808
    .lex "$/", param_1809
.annotate 'line', 499
    find_lex $P1810, "$/"
    get_hll_global $P1811, "GLOBAL"
    nqp_get_package_through_who $P1812, $P1811, "PAST"
    get_who $P1813, $P1812
    set $P1814, $P1813["Regex"]
.annotate 'line', 500
    get_hll_global $P1815, "GLOBAL"
    nqp_get_package_through_who $P1816, $P1815, "PAST"
    get_who $P1817, $P1816
    set $P1818, $P1817["Op"]
    find_lex $P1819, "$/"
    unless_null $P1819, vivify_976
    $P1819 = root_new ['parrot';'Hash']
  vivify_976:
    set $P1820, $P1819["pir"]
    unless_null $P1820, vivify_977
    new $P1820, "Undef"
  vivify_977:
    set $S1821, $P1820
    $P1822 = $P1818."new"($S1821 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1823, "$/"
    unless_null $P1823, vivify_978
    new $P1823, "Undef"
  vivify_978:
    $P1824 = $P1814."new"($P1822, "pastnode" :named("pasttype"), $P1823 :named("node"))
.annotate 'line', 499
    $P1825 = $P1810."!make"($P1824)
.annotate 'line', 498
    .return ($P1825)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>" :anon :subid("231_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1827
    .param pmc param_1828
.annotate 'line', 506
    .lex "self", param_1827
    .lex "$/", param_1828
.annotate 'line', 507
    new $P1829, "Undef"
    .lex "$subtype", $P1829
.annotate 'line', 508
    new $P1830, "Undef"
    .lex "$past", $P1830
.annotate 'line', 507
    find_lex $P1833, "$/"
    unless_null $P1833, vivify_979
    $P1833 = root_new ['parrot';'Hash']
  vivify_979:
    set $P1834, $P1833["sym"]
    unless_null $P1834, vivify_980
    new $P1834, "Undef"
  vivify_980:
    set $S1835, $P1834
    iseq $I1836, $S1835, "n"
    if $I1836, if_1832
    find_lex $P1838, "$/"
    unless_null $P1838, vivify_981
    $P1838 = root_new ['parrot';'Hash']
  vivify_981:
    set $P1839, $P1838["sym"]
    unless_null $P1839, vivify_982
    new $P1839, "Undef"
  vivify_982:
    set $S1840, $P1839
    new $P1831, 'String'
    set $P1831, $S1840
    goto if_1832_end
  if_1832:
    new $P1837, "String"
    assign $P1837, "nl"
    set $P1831, $P1837
  if_1832_end:
    store_lex "$subtype", $P1831
.annotate 'line', 508
    get_hll_global $P1841, "GLOBAL"
    nqp_get_package_through_who $P1842, $P1841, "PAST"
    get_who $P1843, $P1842
    set $P1844, $P1843["Regex"]
    find_lex $P1845, "$subtype"
    unless_null $P1845, vivify_983
    new $P1845, "Undef"
  vivify_983:
    find_lex $P1846, "$/"
    unless_null $P1846, vivify_984
    new $P1846, "Undef"
  vivify_984:
    $P1847 = $P1844."new"("charclass" :named("pasttype"), $P1845 :named("subtype"), $P1846 :named("node"))
    store_lex "$past", $P1847
.annotate 'line', 509
    find_lex $P1848, "$/"
    find_lex $P1849, "$past"
    unless_null $P1849, vivify_985
    new $P1849, "Undef"
  vivify_985:
    $P1850 = $P1848."!make"($P1849)
.annotate 'line', 506
    .return ($P1850)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>" :anon :subid("232_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1852
    .param pmc param_1853
.annotate 'line', 512
    .lex "self", param_1852
    .lex "$/", param_1853
.annotate 'line', 513
    new $P1854, "Undef"
    .lex "$past", $P1854
    get_hll_global $P1855, "GLOBAL"
    nqp_get_package_through_who $P1856, $P1855, "PAST"
    get_who $P1857, $P1856
    set $P1858, $P1857["Regex"]
.annotate 'line', 514
    find_lex $P1859, "$/"
    unless_null $P1859, vivify_986
    $P1859 = root_new ['parrot';'Hash']
  vivify_986:
    set $P1860, $P1859["sym"]
    unless_null $P1860, vivify_987
    new $P1860, "Undef"
  vivify_987:
    set $S1861, $P1860
    iseq $I1862, $S1861, "B"
    find_lex $P1863, "$/"
    unless_null $P1863, vivify_988
    new $P1863, "Undef"
  vivify_988:
    $P1864 = $P1858."new"("\b", "enumcharlist" :named("pasttype"), $I1862 :named("negate"), $P1863 :named("node"))
.annotate 'line', 513
    store_lex "$past", $P1864
.annotate 'line', 515
    find_lex $P1865, "$/"
    find_lex $P1866, "$past"
    unless_null $P1866, vivify_989
    new $P1866, "Undef"
  vivify_989:
    $P1867 = $P1865."!make"($P1866)
.annotate 'line', 512
    .return ($P1867)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>" :anon :subid("233_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1869
    .param pmc param_1870
.annotate 'line', 518
    .lex "self", param_1869
    .lex "$/", param_1870
.annotate 'line', 519
    new $P1871, "Undef"
    .lex "$past", $P1871
    get_hll_global $P1872, "GLOBAL"
    nqp_get_package_through_who $P1873, $P1872, "PAST"
    get_who $P1874, $P1873
    set $P1875, $P1874["Regex"]
.annotate 'line', 520
    find_lex $P1876, "$/"
    unless_null $P1876, vivify_990
    $P1876 = root_new ['parrot';'Hash']
  vivify_990:
    set $P1877, $P1876["sym"]
    unless_null $P1877, vivify_991
    new $P1877, "Undef"
  vivify_991:
    set $S1878, $P1877
    iseq $I1879, $S1878, "E"
    find_lex $P1880, "$/"
    unless_null $P1880, vivify_992
    new $P1880, "Undef"
  vivify_992:
    $P1881 = $P1875."new"("\e", "enumcharlist" :named("pasttype"), $I1879 :named("negate"), $P1880 :named("node"))
.annotate 'line', 519
    store_lex "$past", $P1881
.annotate 'line', 521
    find_lex $P1882, "$/"
    find_lex $P1883, "$past"
    unless_null $P1883, vivify_993
    new $P1883, "Undef"
  vivify_993:
    $P1884 = $P1882."!make"($P1883)
.annotate 'line', 518
    .return ($P1884)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>" :anon :subid("234_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1886
    .param pmc param_1887
.annotate 'line', 524
    .lex "self", param_1886
    .lex "$/", param_1887
.annotate 'line', 525
    new $P1888, "Undef"
    .lex "$past", $P1888
    get_hll_global $P1889, "GLOBAL"
    nqp_get_package_through_who $P1890, $P1889, "PAST"
    get_who $P1891, $P1890
    set $P1892, $P1891["Regex"]
.annotate 'line', 526
    find_lex $P1893, "$/"
    unless_null $P1893, vivify_994
    $P1893 = root_new ['parrot';'Hash']
  vivify_994:
    set $P1894, $P1893["sym"]
    unless_null $P1894, vivify_995
    new $P1894, "Undef"
  vivify_995:
    set $S1895, $P1894
    iseq $I1896, $S1895, "F"
    find_lex $P1897, "$/"
    unless_null $P1897, vivify_996
    new $P1897, "Undef"
  vivify_996:
    $P1898 = $P1892."new"("\f", "enumcharlist" :named("pasttype"), $I1896 :named("negate"), $P1897 :named("node"))
.annotate 'line', 525
    store_lex "$past", $P1898
.annotate 'line', 527
    find_lex $P1899, "$/"
    find_lex $P1900, "$past"
    unless_null $P1900, vivify_997
    new $P1900, "Undef"
  vivify_997:
    $P1901 = $P1899."!make"($P1900)
.annotate 'line', 524
    .return ($P1901)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>" :anon :subid("235_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1903
    .param pmc param_1904
.annotate 'line', 530
    .lex "self", param_1903
    .lex "$/", param_1904
.annotate 'line', 531
    new $P1905, "Undef"
    .lex "$past", $P1905
    get_hll_global $P1906, "GLOBAL"
    nqp_get_package_through_who $P1907, $P1906, "PAST"
    get_who $P1908, $P1907
    set $P1909, $P1908["Regex"]
.annotate 'line', 532
    find_lex $P1910, "$/"
    unless_null $P1910, vivify_998
    $P1910 = root_new ['parrot';'Hash']
  vivify_998:
    set $P1911, $P1910["sym"]
    unless_null $P1911, vivify_999
    new $P1911, "Undef"
  vivify_999:
    set $S1912, $P1911
    iseq $I1913, $S1912, "H"
    find_lex $P1914, "$/"
    unless_null $P1914, vivify_1000
    new $P1914, "Undef"
  vivify_1000:
    $P1915 = $P1909."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1913 :named("negate"), $P1914 :named("node"))
.annotate 'line', 531
    store_lex "$past", $P1915
.annotate 'line', 533
    find_lex $P1916, "$/"
    find_lex $P1917, "$past"
    unless_null $P1917, vivify_1001
    new $P1917, "Undef"
  vivify_1001:
    $P1918 = $P1916."!make"($P1917)
.annotate 'line', 530
    .return ($P1918)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>" :anon :subid("236_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1920
    .param pmc param_1921
.annotate 'line', 536
    .lex "self", param_1920
    .lex "$/", param_1921
.annotate 'line', 537
    new $P1922, "Undef"
    .lex "$past", $P1922
    get_hll_global $P1923, "GLOBAL"
    nqp_get_package_through_who $P1924, $P1923, "PAST"
    get_who $P1925, $P1924
    set $P1926, $P1925["Regex"]
.annotate 'line', 538
    find_lex $P1927, "$/"
    unless_null $P1927, vivify_1002
    $P1927 = root_new ['parrot';'Hash']
  vivify_1002:
    set $P1928, $P1927["sym"]
    unless_null $P1928, vivify_1003
    new $P1928, "Undef"
  vivify_1003:
    set $S1929, $P1928
    iseq $I1930, $S1929, "R"
    find_lex $P1931, "$/"
    unless_null $P1931, vivify_1004
    new $P1931, "Undef"
  vivify_1004:
    $P1932 = $P1926."new"("\r", "enumcharlist" :named("pasttype"), $I1930 :named("negate"), $P1931 :named("node"))
.annotate 'line', 537
    store_lex "$past", $P1932
.annotate 'line', 539
    find_lex $P1933, "$/"
    find_lex $P1934, "$past"
    unless_null $P1934, vivify_1005
    new $P1934, "Undef"
  vivify_1005:
    $P1935 = $P1933."!make"($P1934)
.annotate 'line', 536
    .return ($P1935)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>" :anon :subid("237_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1937
    .param pmc param_1938
.annotate 'line', 542
    .lex "self", param_1937
    .lex "$/", param_1938
.annotate 'line', 543
    new $P1939, "Undef"
    .lex "$past", $P1939
    get_hll_global $P1940, "GLOBAL"
    nqp_get_package_through_who $P1941, $P1940, "PAST"
    get_who $P1942, $P1941
    set $P1943, $P1942["Regex"]
.annotate 'line', 544
    find_lex $P1944, "$/"
    unless_null $P1944, vivify_1006
    $P1944 = root_new ['parrot';'Hash']
  vivify_1006:
    set $P1945, $P1944["sym"]
    unless_null $P1945, vivify_1007
    new $P1945, "Undef"
  vivify_1007:
    set $S1946, $P1945
    iseq $I1947, $S1946, "T"
    find_lex $P1948, "$/"
    unless_null $P1948, vivify_1008
    new $P1948, "Undef"
  vivify_1008:
    $P1949 = $P1943."new"("\t", "enumcharlist" :named("pasttype"), $I1947 :named("negate"), $P1948 :named("node"))
.annotate 'line', 543
    store_lex "$past", $P1949
.annotate 'line', 545
    find_lex $P1950, "$/"
    find_lex $P1951, "$past"
    unless_null $P1951, vivify_1009
    new $P1951, "Undef"
  vivify_1009:
    $P1952 = $P1950."!make"($P1951)
.annotate 'line', 542
    .return ($P1952)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>" :anon :subid("238_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1954
    .param pmc param_1955
.annotate 'line', 548
    .lex "self", param_1954
    .lex "$/", param_1955
.annotate 'line', 549
    new $P1956, "Undef"
    .lex "$past", $P1956
    get_hll_global $P1957, "GLOBAL"
    nqp_get_package_through_who $P1958, $P1957, "PAST"
    get_who $P1959, $P1958
    set $P1960, $P1959["Regex"]
.annotate 'line', 551
    find_lex $P1961, "$/"
    unless_null $P1961, vivify_1010
    $P1961 = root_new ['parrot';'Hash']
  vivify_1010:
    set $P1962, $P1961["sym"]
    unless_null $P1962, vivify_1011
    new $P1962, "Undef"
  vivify_1011:
    set $S1963, $P1962
    iseq $I1964, $S1963, "V"
    find_lex $P1965, "$/"
    unless_null $P1965, vivify_1012
    new $P1965, "Undef"
  vivify_1012:
    $P1966 = $P1960."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1964 :named("negate"), $P1965 :named("node"))
.annotate 'line', 549
    store_lex "$past", $P1966
.annotate 'line', 552
    find_lex $P1967, "$/"
    find_lex $P1968, "$past"
    unless_null $P1968, vivify_1013
    new $P1968, "Undef"
  vivify_1013:
    $P1969 = $P1967."!make"($P1968)
.annotate 'line', 548
    .return ($P1969)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>" :anon :subid("239_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_1971
    .param pmc param_1972
.annotate 'line', 555
    .lex "self", param_1971
    .lex "$/", param_1972
.annotate 'line', 556
    new $P1973, "Undef"
    .lex "$octlit", $P1973
.annotate 'line', 557
    get_hll_global $P1974, "GLOBAL"
    nqp_get_package_through_who $P1975, $P1974, "HLL"
    nqp_get_package_through_who $P1976, $P1975, "Actions"
    get_who $P1977, $P1976
    set $P1978, $P1977["ints_to_string"]
    find_lex $P1981, "$/"
    unless_null $P1981, vivify_1014
    $P1981 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P1982, $P1981["octint"]
    unless_null $P1982, vivify_1015
    new $P1982, "Undef"
  vivify_1015:
    unless $P1982, unless_1980
    set $P1979, $P1982
    goto unless_1980_end
  unless_1980:
    find_lex $P1983, "$/"
    unless_null $P1983, vivify_1016
    $P1983 = root_new ['parrot';'Hash']
  vivify_1016:
    set $P1984, $P1983["octints"]
    unless_null $P1984, vivify_1017
    $P1984 = root_new ['parrot';'Hash']
  vivify_1017:
    set $P1985, $P1984["octint"]
    unless_null $P1985, vivify_1018
    new $P1985, "Undef"
  vivify_1018:
    set $P1979, $P1985
  unless_1980_end:
    $P1986 = $P1978($P1979)
    store_lex "$octlit", $P1986
.annotate 'line', 558
    find_lex $P1987, "$/"
    find_lex $P1990, "$/"
    unless_null $P1990, vivify_1019
    $P1990 = root_new ['parrot';'Hash']
  vivify_1019:
    set $P1991, $P1990["sym"]
    unless_null $P1991, vivify_1020
    new $P1991, "Undef"
  vivify_1020:
    set $S1992, $P1991
    iseq $I1993, $S1992, "O"
    if $I1993, if_1989
.annotate 'line', 561
    get_hll_global $P2001, "GLOBAL"
    nqp_get_package_through_who $P2002, $P2001, "PAST"
    get_who $P2003, $P2002
    set $P2004, $P2003["Regex"]
    find_lex $P2005, "$octlit"
    unless_null $P2005, vivify_1021
    new $P2005, "Undef"
  vivify_1021:
    find_lex $P2006, "$/"
    unless_null $P2006, vivify_1022
    new $P2006, "Undef"
  vivify_1022:
    $P2007 = $P2004."new"($P2005, "literal" :named("pasttype"), $P2006 :named("node"))
    set $P1988, $P2007
.annotate 'line', 558
    goto if_1989_end
  if_1989:
.annotate 'line', 559
    get_hll_global $P1994, "GLOBAL"
    nqp_get_package_through_who $P1995, $P1994, "PAST"
    get_who $P1996, $P1995
    set $P1997, $P1996["Regex"]
    find_lex $P1998, "$octlit"
    unless_null $P1998, vivify_1023
    new $P1998, "Undef"
  vivify_1023:
    find_lex $P1999, "$/"
    unless_null $P1999, vivify_1024
    new $P1999, "Undef"
  vivify_1024:
    $P2000 = $P1997."new"($P1998, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1999 :named("node"))
    set $P1988, $P2000
  if_1989_end:
    $P2008 = $P1987."!make"($P1988)
.annotate 'line', 555
    .return ($P2008)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>" :anon :subid("240_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2010
    .param pmc param_2011
.annotate 'line', 564
    .lex "self", param_2010
    .lex "$/", param_2011
.annotate 'line', 565
    new $P2012, "Undef"
    .lex "$hexlit", $P2012
.annotate 'line', 566
    get_hll_global $P2013, "GLOBAL"
    nqp_get_package_through_who $P2014, $P2013, "HLL"
    nqp_get_package_through_who $P2015, $P2014, "Actions"
    get_who $P2016, $P2015
    set $P2017, $P2016["ints_to_string"]
    find_lex $P2020, "$/"
    unless_null $P2020, vivify_1025
    $P2020 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2021, $P2020["hexint"]
    unless_null $P2021, vivify_1026
    new $P2021, "Undef"
  vivify_1026:
    unless $P2021, unless_2019
    set $P2018, $P2021
    goto unless_2019_end
  unless_2019:
    find_lex $P2022, "$/"
    unless_null $P2022, vivify_1027
    $P2022 = root_new ['parrot';'Hash']
  vivify_1027:
    set $P2023, $P2022["hexints"]
    unless_null $P2023, vivify_1028
    $P2023 = root_new ['parrot';'Hash']
  vivify_1028:
    set $P2024, $P2023["hexint"]
    unless_null $P2024, vivify_1029
    new $P2024, "Undef"
  vivify_1029:
    set $P2018, $P2024
  unless_2019_end:
    $P2025 = $P2017($P2018)
    store_lex "$hexlit", $P2025
.annotate 'line', 567
    find_lex $P2026, "$/"
    find_lex $P2029, "$/"
    unless_null $P2029, vivify_1030
    $P2029 = root_new ['parrot';'Hash']
  vivify_1030:
    set $P2030, $P2029["sym"]
    unless_null $P2030, vivify_1031
    new $P2030, "Undef"
  vivify_1031:
    set $S2031, $P2030
    iseq $I2032, $S2031, "X"
    if $I2032, if_2028
.annotate 'line', 570
    get_hll_global $P2040, "GLOBAL"
    nqp_get_package_through_who $P2041, $P2040, "PAST"
    get_who $P2042, $P2041
    set $P2043, $P2042["Regex"]
    find_lex $P2044, "$hexlit"
    unless_null $P2044, vivify_1032
    new $P2044, "Undef"
  vivify_1032:
    find_lex $P2045, "$/"
    unless_null $P2045, vivify_1033
    new $P2045, "Undef"
  vivify_1033:
    $P2046 = $P2043."new"($P2044, "literal" :named("pasttype"), $P2045 :named("node"))
    set $P2027, $P2046
.annotate 'line', 567
    goto if_2028_end
  if_2028:
.annotate 'line', 568
    get_hll_global $P2033, "GLOBAL"
    nqp_get_package_through_who $P2034, $P2033, "PAST"
    get_who $P2035, $P2034
    set $P2036, $P2035["Regex"]
    find_lex $P2037, "$hexlit"
    unless_null $P2037, vivify_1034
    new $P2037, "Undef"
  vivify_1034:
    find_lex $P2038, "$/"
    unless_null $P2038, vivify_1035
    new $P2038, "Undef"
  vivify_1035:
    $P2039 = $P2036."new"($P2037, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2038 :named("node"))
    set $P2027, $P2039
  if_2028_end:
    $P2047 = $P2026."!make"($P2027)
.annotate 'line', 564
    .return ($P2047)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>" :anon :subid("241_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2049
    .param pmc param_2050
.annotate 'line', 573
    .lex "self", param_2049
    .lex "$/", param_2050
.annotate 'line', 574
    find_lex $P2051, "$/"
    get_hll_global $P2052, "GLOBAL"
    nqp_get_package_through_who $P2053, $P2052, "PAST"
    get_who $P2054, $P2053
    set $P2055, $P2054["Regex"]
    find_lex $P2056, "$/"
    unless_null $P2056, vivify_1036
    $P2056 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P2057, $P2056["charspec"]
    unless_null $P2057, vivify_1037
    new $P2057, "Undef"
  vivify_1037:
    $P2058 = $P2057."ast"()
    find_lex $P2059, "$/"
    unless_null $P2059, vivify_1038
    new $P2059, "Undef"
  vivify_1038:
    $P2060 = $P2055."new"($P2058, "literal" :named("pasttype"), $P2059 :named("node"))
    $P2061 = $P2051."!make"($P2060)
.annotate 'line', 573
    .return ($P2061)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>" :anon :subid("242_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2063
    .param pmc param_2064
.annotate 'line', 577
    .lex "self", param_2063
    .lex "$/", param_2064
.annotate 'line', 578
    new $P2065, "Undef"
    .lex "$past", $P2065
    get_hll_global $P2066, "GLOBAL"
    nqp_get_package_through_who $P2067, $P2066, "PAST"
    get_who $P2068, $P2067
    set $P2069, $P2068["Regex"]
    find_lex $P2070, "$/"
    unless_null $P2070, vivify_1039
    new $P2070, "Undef"
  vivify_1039:
    set $S2071, $P2070
    find_lex $P2072, "$/"
    unless_null $P2072, vivify_1040
    new $P2072, "Undef"
  vivify_1040:
    $P2073 = $P2069."new"($S2071, "literal" :named("pasttype"), $P2072 :named("node"))
    store_lex "$past", $P2073
.annotate 'line', 579
    find_lex $P2074, "$/"
    find_lex $P2075, "$past"
    unless_null $P2075, vivify_1041
    new $P2075, "Undef"
  vivify_1041:
    $P2076 = $P2074."!make"($P2075)
.annotate 'line', 577
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>" :anon :subid("243_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2078
    .param pmc param_2079
.annotate 'line', 583
    .lex "self", param_2078
    .lex "$/", param_2079
.annotate 'line', 584
    new $P2080, "Undef"
    .lex "$past", $P2080
.annotate 'line', 583
    find_lex $P2081, "$past"
    unless_null $P2081, vivify_1042
    new $P2081, "Undef"
  vivify_1042:
.annotate 'line', 585
    find_lex $P2083, "$/"
    unless_null $P2083, vivify_1043
    $P2083 = root_new ['parrot';'Hash']
  vivify_1043:
    set $P2084, $P2083["assertion"]
    unless_null $P2084, vivify_1044
    new $P2084, "Undef"
  vivify_1044:
    if $P2084, if_2082
.annotate 'line', 589
    new $P2089, "Integer"
    assign $P2089, 0
    store_lex "$past", $P2089
    goto if_2082_end
  if_2082:
.annotate 'line', 586
    find_lex $P2085, "$/"
    unless_null $P2085, vivify_1045
    $P2085 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P2086, $P2085["assertion"]
    unless_null $P2086, vivify_1046
    new $P2086, "Undef"
  vivify_1046:
    $P2087 = $P2086."ast"()
    store_lex "$past", $P2087
.annotate 'line', 587
    find_lex $P2088, "$past"
    unless_null $P2088, vivify_1047
    new $P2088, "Undef"
  vivify_1047:
    $P2088."subtype"("zerowidth")
  if_2082_end:
.annotate 'line', 590
    find_lex $P2090, "$/"
    find_lex $P2091, "$past"
    unless_null $P2091, vivify_1048
    new $P2091, "Undef"
  vivify_1048:
    $P2092 = $P2090."!make"($P2091)
.annotate 'line', 583
    .return ($P2092)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>" :anon :subid("244_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2094
    .param pmc param_2095
.annotate 'line', 593
    .lex "self", param_2094
    .lex "$/", param_2095
.annotate 'line', 594
    new $P2096, "Undef"
    .lex "$past", $P2096
.annotate 'line', 593
    find_lex $P2097, "$past"
    unless_null $P2097, vivify_1049
    new $P2097, "Undef"
  vivify_1049:
.annotate 'line', 595
    find_lex $P2099, "$/"
    unless_null $P2099, vivify_1050
    $P2099 = root_new ['parrot';'Hash']
  vivify_1050:
    set $P2100, $P2099["assertion"]
    unless_null $P2100, vivify_1051
    new $P2100, "Undef"
  vivify_1051:
    if $P2100, if_2098
.annotate 'line', 601
    get_hll_global $P2109, "GLOBAL"
    nqp_get_package_through_who $P2110, $P2109, "PAST"
    get_who $P2111, $P2110
    set $P2112, $P2111["Regex"]
    find_lex $P2113, "$/"
    unless_null $P2113, vivify_1052
    new $P2113, "Undef"
  vivify_1052:
    $P2114 = $P2112."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2113 :named("node"))
    store_lex "$past", $P2114
.annotate 'line', 600
    goto if_2098_end
  if_2098:
.annotate 'line', 596
    find_lex $P2101, "$/"
    unless_null $P2101, vivify_1053
    $P2101 = root_new ['parrot';'Hash']
  vivify_1053:
    set $P2102, $P2101["assertion"]
    unless_null $P2102, vivify_1054
    new $P2102, "Undef"
  vivify_1054:
    $P2103 = $P2102."ast"()
    store_lex "$past", $P2103
.annotate 'line', 597
    find_lex $P2104, "$past"
    unless_null $P2104, vivify_1055
    new $P2104, "Undef"
  vivify_1055:
    find_lex $P2105, "$past"
    unless_null $P2105, vivify_1056
    new $P2105, "Undef"
  vivify_1056:
    $P2106 = $P2105."negate"()
    isfalse $I2107, $P2106
    $P2104."negate"($I2107)
.annotate 'line', 598
    find_lex $P2108, "$past"
    unless_null $P2108, vivify_1057
    new $P2108, "Undef"
  vivify_1057:
    $P2108."subtype"("zerowidth")
  if_2098_end:
.annotate 'line', 603
    find_lex $P2115, "$/"
    find_lex $P2116, "$past"
    unless_null $P2116, vivify_1058
    new $P2116, "Undef"
  vivify_1058:
    $P2117 = $P2115."!make"($P2116)
.annotate 'line', 593
    .return ($P2117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>" :anon :subid("245_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2119
    .param pmc param_2120
.annotate 'line', 606
    .lex "self", param_2119
    .lex "$/", param_2120
.annotate 'line', 607
    new $P2121, "Undef"
    .lex "$past", $P2121
    find_lex $P2122, "$/"
    unless_null $P2122, vivify_1059
    $P2122 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2123, $P2122["assertion"]
    unless_null $P2123, vivify_1060
    new $P2123, "Undef"
  vivify_1060:
    $P2124 = $P2123."ast"()
    store_lex "$past", $P2124
.annotate 'line', 608
    find_lex $P2125, "$past"
    unless_null $P2125, vivify_1061
    new $P2125, "Undef"
  vivify_1061:
    $P2125."subtype"("method")
.annotate 'line', 609
    find_lex $P2126, "$past"
    unless_null $P2126, vivify_1062
    new $P2126, "Undef"
  vivify_1062:
    $P2126."name"("")
.annotate 'line', 610
    find_lex $P2127, "$/"
    find_lex $P2128, "$past"
    unless_null $P2128, vivify_1063
    new $P2128, "Undef"
  vivify_1063:
    $P2129 = $P2127."!make"($P2128)
.annotate 'line', 606
    .return ($P2129)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>" :anon :subid("246_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2131
    .param pmc param_2132
.annotate 'line', 613
    .const 'Sub' $P2199 = "248_1307873292.23355" 
    capture_lex $P2199
    .const 'Sub' $P2155 = "247_1307873292.23355" 
    capture_lex $P2155
    .lex "self", param_2131
    .lex "$/", param_2132
.annotate 'line', 614
    new $P2133, "Undef"
    .lex "$name", $P2133
.annotate 'line', 615
    new $P2134, "Undef"
    .lex "$past", $P2134
.annotate 'line', 614
    find_lex $P2135, "$/"
    unless_null $P2135, vivify_1064
    $P2135 = root_new ['parrot';'Hash']
  vivify_1064:
    set $P2136, $P2135["longname"]
    unless_null $P2136, vivify_1065
    new $P2136, "Undef"
  vivify_1065:
    set $S2137, $P2136
    new $P2138, 'String'
    set $P2138, $S2137
    store_lex "$name", $P2138
    find_lex $P2139, "$past"
    unless_null $P2139, vivify_1066
    new $P2139, "Undef"
  vivify_1066:
.annotate 'line', 616
    find_lex $P2141, "$/"
    unless_null $P2141, vivify_1067
    $P2141 = root_new ['parrot';'Hash']
  vivify_1067:
    set $P2142, $P2141["assertion"]
    unless_null $P2142, vivify_1068
    new $P2142, "Undef"
  vivify_1068:
    if $P2142, if_2140
.annotate 'line', 620
    find_lex $P2151, "$name"
    unless_null $P2151, vivify_1069
    new $P2151, "Undef"
  vivify_1069:
    set $S2152, $P2151
    iseq $I2153, $S2152, "sym"
    if $I2153, if_2150
.annotate 'line', 637
    find_lex $P2175, "self"
    find_lex $P2176, "$/"
    unless_null $P2176, vivify_1070
    new $P2176, "Undef"
  vivify_1070:
    $P2177 = $P2175."named_assertion"($P2176)
    store_lex "$past", $P2177
.annotate 'line', 638
    find_lex $P2179, "$/"
    unless_null $P2179, vivify_1071
    $P2179 = root_new ['parrot';'Hash']
  vivify_1071:
    set $P2180, $P2179["nibbler"]
    unless_null $P2180, vivify_1072
    new $P2180, "Undef"
  vivify_1072:
    if $P2180, if_2178
.annotate 'line', 641
    find_lex $P2188, "$/"
    unless_null $P2188, vivify_1073
    $P2188 = root_new ['parrot';'Hash']
  vivify_1073:
    set $P2189, $P2188["arglist"]
    unless_null $P2189, vivify_1074
    new $P2189, "Undef"
  vivify_1074:
    unless $P2189, if_2187_end
.annotate 'line', 642
    find_lex $P2191, "$/"
    unless_null $P2191, vivify_1075
    $P2191 = root_new ['parrot';'Hash']
  vivify_1075:
    set $P2192, $P2191["arglist"]
    unless_null $P2192, vivify_1076
    $P2192 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    set $P2193, $P2192[0]
    unless_null $P2193, vivify_1077
    new $P2193, "Undef"
  vivify_1077:
    $P2194 = $P2193."ast"()
    $P2195 = $P2194."list"()
    defined $I2196, $P2195
    unless $I2196, for_undef_1078
    iter $P2190, $P2195
    new $P2205, 'ExceptionHandler'
    set_label $P2205, loop2204_handler
    $P2205."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2205
  loop2204_test:
    unless $P2190, loop2204_done
    shift $P2197, $P2190
  loop2204_redo:
    .const 'Sub' $P2199 = "248_1307873292.23355" 
    capture_lex $P2199
    $P2199($P2197)
  loop2204_next:
    goto loop2204_test
  loop2204_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2206, exception, 'type'
    eq $P2206, .CONTROL_LOOP_NEXT, loop2204_next
    eq $P2206, .CONTROL_LOOP_REDO, loop2204_redo
  loop2204_done:
    pop_eh 
  for_undef_1078:
  if_2187_end:
.annotate 'line', 641
    goto if_2178_end
  if_2178:
.annotate 'line', 639
    find_lex $P2181, "$past"
    unless_null $P2181, vivify_1081
    new $P2181, "Undef"
  vivify_1081:
    find_lex $P2182, "$/"
    unless_null $P2182, vivify_1082
    $P2182 = root_new ['parrot';'Hash']
  vivify_1082:
    set $P2183, $P2182["nibbler"]
    unless_null $P2183, vivify_1083
    $P2183 = root_new ['parrot';'ResizablePMCArray']
  vivify_1083:
    set $P2184, $P2183[0]
    unless_null $P2184, vivify_1084
    new $P2184, "Undef"
  vivify_1084:
    $P2185 = $P2184."ast"()
    $P2186 = "buildsub"($P2185)
    $P2181."push"($P2186)
  if_2178_end:
.annotate 'line', 636
    goto if_2150_end
  if_2150:
.annotate 'line', 620
    .const 'Sub' $P2155 = "247_1307873292.23355" 
    capture_lex $P2155
    $P2155()
  if_2150_end:
    goto if_2140_end
  if_2140:
.annotate 'line', 617
    find_lex $P2143, "$/"
    unless_null $P2143, vivify_1089
    $P2143 = root_new ['parrot';'Hash']
  vivify_1089:
    set $P2144, $P2143["assertion"]
    unless_null $P2144, vivify_1090
    $P2144 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P2145, $P2144[0]
    unless_null $P2145, vivify_1091
    new $P2145, "Undef"
  vivify_1091:
    $P2146 = $P2145."ast"()
    store_lex "$past", $P2146
.annotate 'line', 618
    find_lex $P2147, "self"
    find_lex $P2148, "$past"
    unless_null $P2148, vivify_1092
    new $P2148, "Undef"
  vivify_1092:
    find_lex $P2149, "$name"
    unless_null $P2149, vivify_1093
    new $P2149, "Undef"
  vivify_1093:
    $P2147."subrule_alias"($P2148, $P2149)
  if_2140_end:
.annotate 'line', 645
    find_lex $P2207, "$/"
    find_lex $P2208, "$past"
    unless_null $P2208, vivify_1094
    new $P2208, "Undef"
  vivify_1094:
    $P2209 = $P2207."!make"($P2208)
.annotate 'line', 613
    .return ($P2209)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2198"  :anon :subid("248_1307873292.23355") :outer("246_1307873292.23355")
    .param pmc param_2200
.annotate 'line', 642
    .lex "$_", param_2200
    find_lex $P2201, "$past"
    unless_null $P2201, vivify_1079
    new $P2201, "Undef"
  vivify_1079:
    find_lex $P2202, "$_"
    unless_null $P2202, vivify_1080
    new $P2202, "Undef"
  vivify_1080:
    $P2203 = $P2201."push"($P2202)
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2154"  :anon :subid("247_1307873292.23355") :outer("246_1307873292.23355")
.annotate 'line', 621
    new $P2156, "Undef"
    .lex "$rxname", $P2156
.annotate 'line', 622
    new $P2157, "Undef"
    .lex "$regexsym", $P2157
.annotate 'line', 621
    find_lex $P2158, "$?PACKAGE"
    get_who $P2159, $P2158
    set $P2160, $P2159["$REGEXNAME"]
    unless_null $P2160, vivify_1085
    new $P2160, "Undef"
  vivify_1085:
    store_lex "$rxname", $P2160
.annotate 'line', 622

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2161 = box $S0
            
    store_lex "$regexsym", $P2161
.annotate 'line', 631
    get_hll_global $P2162, "GLOBAL"
    nqp_get_package_through_who $P2163, $P2162, "PAST"
    get_who $P2164, $P2163
    set $P2165, $P2164["Regex"]
.annotate 'line', 632
    get_hll_global $P2166, "GLOBAL"
    nqp_get_package_through_who $P2167, $P2166, "PAST"
    get_who $P2168, $P2167
    set $P2169, $P2168["Regex"]
    find_lex $P2170, "$regexsym"
    unless_null $P2170, vivify_1086
    new $P2170, "Undef"
  vivify_1086:
    $P2171 = $P2169."new"($P2170, "literal" :named("pasttype"))
    find_lex $P2172, "$name"
    unless_null $P2172, vivify_1087
    new $P2172, "Undef"
  vivify_1087:
    find_lex $P2173, "$/"
    unless_null $P2173, vivify_1088
    new $P2173, "Undef"
  vivify_1088:
    $P2174 = $P2165."new"($P2171, $P2172 :named("name"), "subcapture" :named("pasttype"), $P2173 :named("node"))
.annotate 'line', 631
    store_lex "$past", $P2174
.annotate 'line', 620
    .return ($P2174)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>" :anon :subid("249_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2211
    .param pmc param_2212
.annotate 'line', 648
    .const 'Sub' $P2253 = "250_1307873292.23355" 
    capture_lex $P2253
    .lex "self", param_2211
    .lex "$/", param_2212
.annotate 'line', 649
    new $P2213, "Undef"
    .lex "$clist", $P2213
.annotate 'line', 650
    new $P2214, "Undef"
    .lex "$past", $P2214
.annotate 'line', 659
    new $P2215, "Undef"
    .lex "$i", $P2215
.annotate 'line', 660
    new $P2216, "Undef"
    .lex "$n", $P2216
.annotate 'line', 649
    find_lex $P2217, "$/"
    unless_null $P2217, vivify_1095
    $P2217 = root_new ['parrot';'Hash']
  vivify_1095:
    set $P2218, $P2217["cclass_elem"]
    unless_null $P2218, vivify_1096
    new $P2218, "Undef"
  vivify_1096:
    store_lex "$clist", $P2218
.annotate 'line', 650
    find_lex $P2219, "$clist"
    unless_null $P2219, vivify_1097
    $P2219 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    set $P2220, $P2219[0]
    unless_null $P2220, vivify_1098
    new $P2220, "Undef"
  vivify_1098:
    $P2221 = $P2220."ast"()
    store_lex "$past", $P2221
.annotate 'line', 651
    find_lex $P2225, "$past"
    unless_null $P2225, vivify_1099
    new $P2225, "Undef"
  vivify_1099:
    $P2226 = $P2225."negate"()
    if $P2226, if_2224
    set $P2223, $P2226
    goto if_2224_end
  if_2224:
    find_lex $P2227, "$past"
    unless_null $P2227, vivify_1100
    new $P2227, "Undef"
  vivify_1100:
    $S2228 = $P2227."pasttype"()
    iseq $I2229, $S2228, "subrule"
    new $P2223, 'Integer'
    set $P2223, $I2229
  if_2224_end:
    unless $P2223, if_2222_end
.annotate 'line', 652
    find_lex $P2230, "$past"
    unless_null $P2230, vivify_1101
    new $P2230, "Undef"
  vivify_1101:
    $P2230."subtype"("zerowidth")
.annotate 'line', 653
    get_hll_global $P2231, "GLOBAL"
    nqp_get_package_through_who $P2232, $P2231, "PAST"
    get_who $P2233, $P2232
    set $P2234, $P2233["Regex"]
    find_lex $P2235, "$past"
    unless_null $P2235, vivify_1102
    new $P2235, "Undef"
  vivify_1102:
.annotate 'line', 655
    get_hll_global $P2236, "GLOBAL"
    nqp_get_package_through_who $P2237, $P2236, "PAST"
    get_who $P2238, $P2237
    set $P2239, $P2238["Regex"]
    $P2240 = $P2239."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2241, "$/"
    unless_null $P2241, vivify_1103
    new $P2241, "Undef"
  vivify_1103:
    $P2242 = $P2234."new"($P2235, $P2240, $P2241 :named("node"))
.annotate 'line', 653
    store_lex "$past", $P2242
  if_2222_end:
.annotate 'line', 659
    new $P2243, "Integer"
    assign $P2243, 1
    store_lex "$i", $P2243
.annotate 'line', 660
    find_lex $P2244, "$clist"
    unless_null $P2244, vivify_1104
    new $P2244, "Undef"
  vivify_1104:
    set $N2245, $P2244
    new $P2246, 'Float'
    set $P2246, $N2245
    store_lex "$n", $P2246
.annotate 'line', 661
    new $P2283, 'ExceptionHandler'
    set_label $P2283, loop2282_handler
    $P2283."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2283
  loop2282_test:
    find_lex $P2247, "$i"
    unless_null $P2247, vivify_1105
    new $P2247, "Undef"
  vivify_1105:
    set $N2248, $P2247
    find_lex $P2249, "$n"
    unless_null $P2249, vivify_1106
    new $P2249, "Undef"
  vivify_1106:
    set $N2250, $P2249
    islt $I2251, $N2248, $N2250
    unless $I2251, loop2282_done
  loop2282_redo:
    .const 'Sub' $P2253 = "250_1307873292.23355" 
    capture_lex $P2253
    $P2253()
  loop2282_next:
    goto loop2282_test
  loop2282_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2284, exception, 'type'
    eq $P2284, .CONTROL_LOOP_NEXT, loop2282_next
    eq $P2284, .CONTROL_LOOP_REDO, loop2282_redo
  loop2282_done:
    pop_eh 
.annotate 'line', 672
    find_lex $P2285, "$/"
    find_lex $P2286, "$past"
    unless_null $P2286, vivify_1119
    new $P2286, "Undef"
  vivify_1119:
    $P2287 = $P2285."!make"($P2286)
.annotate 'line', 648
    .return ($P2287)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2252"  :anon :subid("250_1307873292.23355") :outer("249_1307873292.23355")
.annotate 'line', 662
    new $P2254, "Undef"
    .lex "$ast", $P2254
    find_lex $P2255, "$i"
    unless_null $P2255, vivify_1107
    new $P2255, "Undef"
  vivify_1107:
    set $I2256, $P2255
    find_lex $P2257, "$clist"
    unless_null $P2257, vivify_1108
    $P2257 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    set $P2258, $P2257[$I2256]
    unless_null $P2258, vivify_1109
    new $P2258, "Undef"
  vivify_1109:
    $P2259 = $P2258."ast"()
    store_lex "$ast", $P2259
.annotate 'line', 663
    find_lex $P2261, "$ast"
    unless_null $P2261, vivify_1110
    new $P2261, "Undef"
  vivify_1110:
    $P2262 = $P2261."negate"()
    if $P2262, if_2260
.annotate 'line', 668
    get_hll_global $P2272, "GLOBAL"
    nqp_get_package_through_who $P2273, $P2272, "PAST"
    get_who $P2274, $P2273
    set $P2275, $P2274["Regex"]
    find_lex $P2276, "$past"
    unless_null $P2276, vivify_1111
    new $P2276, "Undef"
  vivify_1111:
    find_lex $P2277, "$ast"
    unless_null $P2277, vivify_1112
    new $P2277, "Undef"
  vivify_1112:
    find_lex $P2278, "$/"
    unless_null $P2278, vivify_1113
    new $P2278, "Undef"
  vivify_1113:
    $P2279 = $P2275."new"($P2276, $P2277, "alt" :named("pasttype"), $P2278 :named("node"))
    store_lex "$past", $P2279
.annotate 'line', 667
    goto if_2260_end
  if_2260:
.annotate 'line', 664
    find_lex $P2263, "$ast"
    unless_null $P2263, vivify_1114
    new $P2263, "Undef"
  vivify_1114:
    $P2263."subtype"("zerowidth")
.annotate 'line', 665
    get_hll_global $P2264, "GLOBAL"
    nqp_get_package_through_who $P2265, $P2264, "PAST"
    get_who $P2266, $P2265
    set $P2267, $P2266["Regex"]
    find_lex $P2268, "$ast"
    unless_null $P2268, vivify_1115
    new $P2268, "Undef"
  vivify_1115:
    find_lex $P2269, "$past"
    unless_null $P2269, vivify_1116
    new $P2269, "Undef"
  vivify_1116:
    find_lex $P2270, "$/"
    unless_null $P2270, vivify_1117
    new $P2270, "Undef"
  vivify_1117:
    $P2271 = $P2267."new"($P2268, $P2269, "concat" :named("pasttype"), $P2270 :named("node"))
    store_lex "$past", $P2271
  if_2260_end:
.annotate 'line', 670
    find_lex $P2280, "$i"
    unless_null $P2280, vivify_1118
    new $P2280, "Undef"
  vivify_1118:
    add $P2281, $P2280, 1
    store_lex "$i", $P2281
.annotate 'line', 661
    .return ($P2281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem" :anon :subid("251_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2289
    .param pmc param_2290
.annotate 'line', 675
    .const 'Sub' $P2318 = "253_1307873292.23355" 
    capture_lex $P2318
    .const 'Sub' $P2299 = "252_1307873292.23355" 
    capture_lex $P2299
    .lex "self", param_2289
    .lex "$/", param_2290
.annotate 'line', 676
    new $P2291, "Undef"
    .lex "$str", $P2291
.annotate 'line', 677
    new $P2292, "Undef"
    .lex "$past", $P2292
.annotate 'line', 676
    new $P2293, "String"
    assign $P2293, ""
    store_lex "$str", $P2293
    find_lex $P2294, "$past"
    unless_null $P2294, vivify_1120
    new $P2294, "Undef"
  vivify_1120:
.annotate 'line', 678
    find_lex $P2296, "$/"
    unless_null $P2296, vivify_1121
    $P2296 = root_new ['parrot';'Hash']
  vivify_1121:
    set $P2297, $P2296["name"]
    unless_null $P2297, vivify_1122
    new $P2297, "Undef"
  vivify_1122:
    if $P2297, if_2295
.annotate 'line', 682
    find_lex $P2313, "$/"
    unless_null $P2313, vivify_1123
    $P2313 = root_new ['parrot';'Hash']
  vivify_1123:
    set $P2314, $P2313["charspec"]
    unless_null $P2314, vivify_1124
    new $P2314, "Undef"
  vivify_1124:
    defined $I2315, $P2314
    unless $I2315, for_undef_1125
    iter $P2312, $P2314
    new $P2344, 'ExceptionHandler'
    set_label $P2344, loop2343_handler
    $P2344."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2344
  loop2343_test:
    unless $P2312, loop2343_done
    shift $P2316, $P2312
  loop2343_redo:
    .const 'Sub' $P2318 = "253_1307873292.23355" 
    capture_lex $P2318
    $P2318($P2316)
  loop2343_next:
    goto loop2343_test
  loop2343_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2345, exception, 'type'
    eq $P2345, .CONTROL_LOOP_NEXT, loop2343_next
    eq $P2345, .CONTROL_LOOP_REDO, loop2343_redo
  loop2343_done:
    pop_eh 
  for_undef_1125:
.annotate 'line', 707
    get_hll_global $P2346, "GLOBAL"
    nqp_get_package_through_who $P2347, $P2346, "PAST"
    get_who $P2348, $P2347
    set $P2349, $P2348["Regex"]
    find_lex $P2350, "$str"
    unless_null $P2350, vivify_1138
    new $P2350, "Undef"
  vivify_1138:
    find_lex $P2351, "$/"
    unless_null $P2351, vivify_1139
    new $P2351, "Undef"
  vivify_1139:
    $P2352 = $P2349."new"($P2350, "enumcharlist" :named("pasttype"), $P2351 :named("node"))
    store_lex "$past", $P2352
.annotate 'line', 681
    goto if_2295_end
  if_2295:
.annotate 'line', 678
    .const 'Sub' $P2299 = "252_1307873292.23355" 
    capture_lex $P2299
    $P2299()
  if_2295_end:
.annotate 'line', 709
    find_lex $P2353, "$past"
    unless_null $P2353, vivify_1144
    new $P2353, "Undef"
  vivify_1144:
    find_lex $P2354, "$/"
    unless_null $P2354, vivify_1145
    $P2354 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P2355, $P2354["sign"]
    unless_null $P2355, vivify_1146
    new $P2355, "Undef"
  vivify_1146:
    set $S2356, $P2355
    iseq $I2357, $S2356, "-"
    $P2353."negate"($I2357)
.annotate 'line', 710
    find_lex $P2358, "$/"
    find_lex $P2359, "$past"
    unless_null $P2359, vivify_1147
    new $P2359, "Undef"
  vivify_1147:
    $P2360 = $P2358."!make"($P2359)
.annotate 'line', 675
    .return ($P2360)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2317"  :anon :subid("253_1307873292.23355") :outer("251_1307873292.23355")
    .param pmc param_2319
.annotate 'line', 682
    .const 'Sub' $P2325 = "254_1307873292.23355" 
    capture_lex $P2325
    .lex "$_", param_2319
.annotate 'line', 683
    find_lex $P2322, "$_"
    unless_null $P2322, vivify_1126
    $P2322 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2323, $P2322[1]
    unless_null $P2323, vivify_1127
    new $P2323, "Undef"
  vivify_1127:
    if $P2323, if_2321
.annotate 'line', 705
    find_lex $P2339, "$str"
    unless_null $P2339, vivify_1128
    new $P2339, "Undef"
  vivify_1128:
    find_lex $P2340, "$_"
    unless_null $P2340, vivify_1129
    $P2340 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P2341, $P2340[0]
    unless_null $P2341, vivify_1130
    new $P2341, "Undef"
  vivify_1130:
    concat $P2342, $P2339, $P2341
    store_lex "$str", $P2342
    set $P2320, $P2342
.annotate 'line', 683
    goto if_2321_end
  if_2321:
    .const 'Sub' $P2325 = "254_1307873292.23355" 
    capture_lex $P2325
    $P2338 = $P2325()
    set $P2320, $P2338
  if_2321_end:
.annotate 'line', 682
    .return ($P2320)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2324"  :anon :subid("254_1307873292.23355") :outer("253_1307873292.23355")
.annotate 'line', 684
    new $P2326, "Undef"
    .lex "$a", $P2326
.annotate 'line', 685
    new $P2327, "Undef"
    .lex "$b", $P2327
.annotate 'line', 686
    new $P2328, "Undef"
    .lex "$c", $P2328
.annotate 'line', 684
    find_lex $P2329, "$_"
    unless_null $P2329, vivify_1131
    $P2329 = root_new ['parrot';'ResizablePMCArray']
  vivify_1131:
    set $P2330, $P2329[0]
    unless_null $P2330, vivify_1132
    new $P2330, "Undef"
  vivify_1132:
    store_lex "$a", $P2330
.annotate 'line', 685
    find_lex $P2331, "$_"
    unless_null $P2331, vivify_1133
    $P2331 = root_new ['parrot';'ResizablePMCArray']
  vivify_1133:
    set $P2332, $P2331[1]
    unless_null $P2332, vivify_1134
    $P2332 = root_new ['parrot';'ResizablePMCArray']
  vivify_1134:
    set $P2333, $P2332[0]
    unless_null $P2333, vivify_1135
    new $P2333, "Undef"
  vivify_1135:
    store_lex "$b", $P2333
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
                                 $P2334 = box $S2
                             
    store_lex "$c", $P2334
.annotate 'line', 703
    find_lex $P2335, "$str"
    unless_null $P2335, vivify_1136
    new $P2335, "Undef"
  vivify_1136:
    find_lex $P2336, "$c"
    unless_null $P2336, vivify_1137
    new $P2336, "Undef"
  vivify_1137:
    concat $P2337, $P2335, $P2336
    store_lex "$str", $P2337
.annotate 'line', 683
    .return ($P2337)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2298"  :anon :subid("252_1307873292.23355") :outer("251_1307873292.23355")
.annotate 'line', 679
    new $P2300, "Undef"
    .lex "$name", $P2300
    find_lex $P2301, "$/"
    unless_null $P2301, vivify_1140
    $P2301 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P2302, $P2301["name"]
    unless_null $P2302, vivify_1141
    new $P2302, "Undef"
  vivify_1141:
    set $S2303, $P2302
    new $P2304, 'String'
    set $P2304, $S2303
    store_lex "$name", $P2304
.annotate 'line', 680
    get_hll_global $P2305, "GLOBAL"
    nqp_get_package_through_who $P2306, $P2305, "PAST"
    get_who $P2307, $P2306
    set $P2308, $P2307["Regex"]
    find_lex $P2309, "$name"
    unless_null $P2309, vivify_1142
    new $P2309, "Undef"
  vivify_1142:
    find_lex $P2310, "$/"
    unless_null $P2310, vivify_1143
    new $P2310, "Undef"
  vivify_1143:
    $P2311 = $P2308."new"($P2309, "subrule" :named("pasttype"), "method" :named("subtype"), $P2310 :named("node"))
    store_lex "$past", $P2311
.annotate 'line', 678
    .return ($P2311)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal" :anon :subid("255_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2362
    .param pmc param_2363
.annotate 'line', 713
    .lex "self", param_2362
    .lex "$/", param_2363
.annotate 'line', 714
    $P2364 = root_new ['parrot';'Hash']
    .lex "%mods", $P2364
.annotate 'line', 715
    new $P2365, "Undef"
    .lex "$n", $P2365
.annotate 'line', 714
    find_lex $P2366, "$?PACKAGE"
    get_who $P2367, $P2366
    set $P2368, $P2367["@MODIFIERS"]
    unless_null $P2368, vivify_1148
    $P2368 = root_new ['parrot';'ResizablePMCArray']
  vivify_1148:
    set $P2369, $P2368[0]
    unless_null $P2369, vivify_1149
    new $P2369, "Undef"
  vivify_1149:
    store_lex "%mods", $P2369
.annotate 'line', 715
    find_lex $P2372, "$/"
    unless_null $P2372, vivify_1150
    $P2372 = root_new ['parrot';'Hash']
  vivify_1150:
    set $P2373, $P2372["n"]
    unless_null $P2373, vivify_1151
    $P2373 = root_new ['parrot';'ResizablePMCArray']
  vivify_1151:
    set $P2374, $P2373[0]
    unless_null $P2374, vivify_1152
    new $P2374, "Undef"
  vivify_1152:
    set $S2375, $P2374
    isgt $I2376, $S2375, ""
    if $I2376, if_2371
    new $P2381, "Integer"
    assign $P2381, 1
    set $P2370, $P2381
    goto if_2371_end
  if_2371:
    find_lex $P2377, "$/"
    unless_null $P2377, vivify_1153
    $P2377 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2378, $P2377["n"]
    unless_null $P2378, vivify_1154
    $P2378 = root_new ['parrot';'ResizablePMCArray']
  vivify_1154:
    set $P2379, $P2378[0]
    unless_null $P2379, vivify_1155
    new $P2379, "Undef"
  vivify_1155:
    set $N2380, $P2379
    new $P2370, 'Float'
    set $P2370, $N2380
  if_2371_end:
    store_lex "$n", $P2370
.annotate 'line', 716
    find_lex $P2382, "$n"
    unless_null $P2382, vivify_1156
    new $P2382, "Undef"
  vivify_1156:
    find_lex $P2383, "$/"
    unless_null $P2383, vivify_1157
    $P2383 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P2384, $P2383["mod_ident"]
    unless_null $P2384, vivify_1158
    $P2384 = root_new ['parrot';'Hash']
  vivify_1158:
    set $P2385, $P2384["sym"]
    unless_null $P2385, vivify_1159
    new $P2385, "Undef"
  vivify_1159:
    set $S2386, $P2385
    find_lex $P2387, "%mods"
    unless_null $P2387, vivify_1160
    $P2387 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2387
  vivify_1160:
    set $P2387[$S2386], $P2382
.annotate 'line', 717
    find_lex $P2388, "$/"
    $P2389 = $P2388."!make"(0)
.annotate 'line', 713
    .return ($P2389)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias" :anon :subid("256_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2394
    .param pmc param_2395
    .param pmc param_2396
.annotate 'line', 811
    .lex "self", param_2394
    .lex "$past", param_2395
    .lex "$name", param_2396
.annotate 'line', 812
    find_lex $P2398, "$past"
    unless_null $P2398, vivify_1161
    new $P2398, "Undef"
  vivify_1161:
    $S2399 = $P2398."name"()
    isgt $I2400, $S2399, ""
    if $I2400, if_2397
.annotate 'line', 813
    find_lex $P2407, "$past"
    unless_null $P2407, vivify_1162
    new $P2407, "Undef"
  vivify_1162:
    find_lex $P2408, "$name"
    unless_null $P2408, vivify_1163
    new $P2408, "Undef"
  vivify_1163:
    $P2407."name"($P2408)
    goto if_2397_end
  if_2397:
.annotate 'line', 812
    find_lex $P2401, "$past"
    unless_null $P2401, vivify_1164
    new $P2401, "Undef"
  vivify_1164:
    find_lex $P2402, "$name"
    unless_null $P2402, vivify_1165
    new $P2402, "Undef"
  vivify_1165:
    concat $P2403, $P2402, "="
    find_lex $P2404, "$past"
    unless_null $P2404, vivify_1166
    new $P2404, "Undef"
  vivify_1166:
    $S2405 = $P2404."name"()
    concat $P2406, $P2403, $S2405
    $P2401."name"($P2406)
  if_2397_end:
.annotate 'line', 814
    find_lex $P2409, "$past"
    unless_null $P2409, vivify_1167
    new $P2409, "Undef"
  vivify_1167:
    $P2410 = $P2409."subtype"("capture")
.annotate 'line', 811
    .return ($P2410)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion" :anon :subid("257_1307873292.23355") :outer("176_1307873292.23355")
    .param pmc param_2412
    .param pmc param_2413
.annotate 'line', 817
    .lex "self", param_2412
    .lex "$/", param_2413
.annotate 'line', 818
    new $P2414, "Undef"
    .lex "$name", $P2414
.annotate 'line', 819
    new $P2415, "Undef"
    .lex "$past", $P2415
.annotate 'line', 818
    find_lex $P2416, "$/"
    unless_null $P2416, vivify_1168
    $P2416 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P2417, $P2416["longname"]
    unless_null $P2417, vivify_1169
    new $P2417, "Undef"
  vivify_1169:
    set $S2418, $P2417
    new $P2419, 'String'
    set $P2419, $S2418
    store_lex "$name", $P2419
.annotate 'line', 819
    get_hll_global $P2420, "GLOBAL"
    nqp_get_package_through_who $P2421, $P2420, "PAST"
    get_who $P2422, $P2421
    set $P2423, $P2422["Regex"]
    find_lex $P2424, "$name"
    unless_null $P2424, vivify_1170
    new $P2424, "Undef"
  vivify_1170:
    find_lex $P2425, "$name"
    unless_null $P2425, vivify_1171
    new $P2425, "Undef"
  vivify_1171:
    find_lex $P2426, "$/"
    unless_null $P2426, vivify_1172
    new $P2426, "Undef"
  vivify_1172:
    $P2427 = $P2423."new"($P2424, $P2425 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2426 :named("node"))
    store_lex "$past", $P2427
    find_lex $P2428, "$past"
    unless_null $P2428, vivify_1173
    new $P2428, "Undef"
  vivify_1173:
.annotate 'line', 817
    .return ($P2428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2430"  :subid("258_1307873292.23355") :outer("10_1307873292.23355")
.annotate 'line', 826
    .lex "$?PACKAGE", $P2432
    .lex "$?CLASS", $P2433
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block2463" :load :anon :subid("259_1307873292.23355")
.annotate 'line', 1
    .const 'Sub' $P2465 = "10_1307873292.23355" 
    $P2466 = $P2465()
    .return ($P2466)
.end

