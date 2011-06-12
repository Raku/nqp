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
.sub "_block11"  :anon :subid("10_1307873286.70277")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2997 = "265_1307873286.70277" 
    capture_lex $P2997
    .const 'Sub' $P2568 = "246_1307873286.70277" 
    capture_lex $P2568
    .const 'Sub' $P2490 = "239_1307873286.70277" 
    capture_lex $P2490
    .const 'Sub' $P1164 = "165_1307873286.70277" 
    capture_lex $P1164
    .const 'Sub' $P478 = "119_1307873286.70277" 
    capture_lex $P478
    .const 'Sub' $P18 = "11_1307873286.70277" 
    capture_lex $P18
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 1789
    new $P16, "Undef"
    .lex "$compiler", $P16
.annotate 'line', 1062
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1061
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P18 = "11_1307873286.70277" 
    capture_lex $P18
    $P18()
.annotate 'line', 861
    .const 'Sub' $P478 = "119_1307873286.70277" 
    capture_lex $P478
    $P478()
.annotate 'line', 1069
    .const 'Sub' $P1164 = "165_1307873286.70277" 
    capture_lex $P1164
    $P1164()
.annotate 'line', 1789
    get_hll_global $P2483, "GLOBAL"
    nqp_get_package_through_who $P2484, $P2483, "HLL"
    get_who $P2485, $P2484
    set $P2486, $P2485["Compiler"]
    $P2487 = $P2486."new"()
    store_lex "$compiler", $P2487
.annotate 'line', 1790
    find_lex $P2488, "$compiler"
    unless_null $P2488, vivify_1049
    new $P2488, "Undef"
  vivify_1049:
    $P2488."language"("parrot")
.annotate 'line', 1883
    .const 'Sub' $P2490 = "239_1307873286.70277" 
    capture_lex $P2490
    $P2490()
.annotate 'line', 1916
    .const 'Sub' $P2568 = "246_1307873286.70277" 
    capture_lex $P2568
    $P2568()
.annotate 'line', 2094
    .const 'Sub' $P2997 = "265_1307873286.70277" 
    capture_lex $P2997
    $P2997()
    find_lex $P3230, "@ARGS"
    if $P3230, if_3229
    set $P3228, $P3230
    goto if_3229_end
  if_3229:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3231, "ModuleLoader"
    getinterp $P3232
    set $P3233, $P3232["context"]
    $P3234 = $P3231."set_mainline_module"($P3233)
    set $P3228, $P3234
  if_3229_end:
.annotate 'line', 1
    .return ($P3228)
.annotate 'line', 1061
    .const 'Sub' $P3236 = "283_1307873286.70277" 
.annotate 'line', 1
    .return ($P3236)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post284") :outer("10_1307873286.70277")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1307873286.70277" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3240, "1307873280.77112"
    isnull $I3241, $P3240
    if $I3241, if_3239
    .const 'Sub' $P4372 = "10_1307873286.70277" 
    $P4373 = $P4372."get_lexinfo"()
    nqp_get_sc_object $P4374, "1307873280.77112", 0
    $P4373."set_static_lexpad_value"("GLOBALish", $P4374)
    .const 'Sub' $P4375 = "10_1307873286.70277" 
    $P4376 = $P4375."get_lexinfo"()
    $P4376."finish_static_lexpad"()
    .const 'Sub' $P4377 = "10_1307873286.70277" 
    $P4378 = $P4377."get_lexinfo"()
    nqp_get_sc_object $P4379, "1307873280.77112", 0
    $P4378."set_static_lexpad_value"("$?PACKAGE", $P4379)
    .const 'Sub' $P4380 = "10_1307873286.70277" 
    $P4381 = $P4380."get_lexinfo"()
    $P4381."finish_static_lexpad"()
    nqp_get_sc_object $P4382, "1307873280.77112", 2
    .const 'Sub' $P4383 = "12_1307873286.70277" 
    assign $P4382, $P4383
    nqp_get_sc_object $P4384, "1307873280.77112", 3
    .const 'Sub' $P4385 = "13_1307873286.70277" 
    assign $P4384, $P4385
    nqp_get_sc_object $P4386, "1307873280.77112", 4
    .const 'Sub' $P4387 = "14_1307873286.70277" 
    assign $P4386, $P4387
    nqp_get_sc_object $P4388, "1307873280.77112", 5
    .const 'Sub' $P4389 = "15_1307873286.70277" 
    assign $P4388, $P4389
    nqp_get_sc_object $P4390, "1307873280.77112", 6
    .const 'Sub' $P4391 = "16_1307873286.70277" 
    assign $P4390, $P4391
    nqp_get_sc_object $P4392, "1307873280.77112", 7
    .const 'Sub' $P4393 = "17_1307873286.70277" 
    assign $P4392, $P4393
    nqp_get_sc_object $P4394, "1307873280.77112", 8
    .const 'Sub' $P4395 = "18_1307873286.70277" 
    assign $P4394, $P4395
    nqp_get_sc_object $P4396, "1307873280.77112", 9
    .const 'Sub' $P4397 = "19_1307873286.70277" 
    assign $P4396, $P4397
    nqp_get_sc_object $P4398, "1307873280.77112", 10
    .const 'Sub' $P4399 = "20_1307873286.70277" 
    assign $P4398, $P4399
    nqp_get_sc_object $P4400, "1307873280.77112", 11
    .const 'Sub' $P4401 = "21_1307873286.70277" 
    assign $P4400, $P4401
    nqp_get_sc_object $P4402, "1307873280.77112", 12
    .const 'Sub' $P4403 = "22_1307873286.70277" 
    assign $P4402, $P4403
    nqp_get_sc_object $P4404, "1307873280.77112", 13
    .const 'Sub' $P4405 = "23_1307873286.70277" 
    assign $P4404, $P4405
    nqp_get_sc_object $P4406, "1307873280.77112", 14
    .const 'Sub' $P4407 = "24_1307873286.70277" 
    assign $P4406, $P4407
    nqp_get_sc_object $P4408, "1307873280.77112", 15
    .const 'Sub' $P4409 = "25_1307873286.70277" 
    assign $P4408, $P4409
    nqp_get_sc_object $P4410, "1307873280.77112", 16
    .const 'Sub' $P4411 = "26_1307873286.70277" 
    assign $P4410, $P4411
    nqp_get_sc_object $P4412, "1307873280.77112", 17
    .const 'Sub' $P4413 = "27_1307873286.70277" 
    assign $P4412, $P4413
    nqp_get_sc_object $P4414, "1307873280.77112", 18
    .const 'Sub' $P4415 = "28_1307873286.70277" 
    assign $P4414, $P4415
    nqp_get_sc_object $P4416, "1307873280.77112", 19
    .const 'Sub' $P4417 = "29_1307873286.70277" 
    assign $P4416, $P4417
    nqp_get_sc_object $P4418, "1307873280.77112", 20
    .const 'Sub' $P4419 = "30_1307873286.70277" 
    assign $P4418, $P4419
    nqp_get_sc_object $P4420, "1307873280.77112", 21
    .const 'Sub' $P4421 = "31_1307873286.70277" 
    assign $P4420, $P4421
    nqp_get_sc_object $P4422, "1307873280.77112", 22
    .const 'Sub' $P4423 = "32_1307873286.70277" 
    assign $P4422, $P4423
    nqp_get_sc_object $P4424, "1307873280.77112", 23
    .const 'Sub' $P4425 = "33_1307873286.70277" 
    assign $P4424, $P4425
    nqp_get_sc_object $P4426, "1307873280.77112", 24
    .const 'Sub' $P4427 = "34_1307873286.70277" 
    assign $P4426, $P4427
    nqp_get_sc_object $P4428, "1307873280.77112", 25
    .const 'Sub' $P4429 = "35_1307873286.70277" 
    assign $P4428, $P4429
    nqp_get_sc_object $P4430, "1307873280.77112", 26
    .const 'Sub' $P4431 = "36_1307873286.70277" 
    assign $P4430, $P4431
    nqp_get_sc_object $P4432, "1307873280.77112", 27
    .const 'Sub' $P4433 = "37_1307873286.70277" 
    assign $P4432, $P4433
    nqp_get_sc_object $P4434, "1307873280.77112", 28
    .const 'Sub' $P4435 = "38_1307873286.70277" 
    assign $P4434, $P4435
    nqp_get_sc_object $P4436, "1307873280.77112", 29
    .const 'Sub' $P4437 = "39_1307873286.70277" 
    assign $P4436, $P4437
    nqp_get_sc_object $P4438, "1307873280.77112", 30
    .const 'Sub' $P4439 = "40_1307873286.70277" 
    assign $P4438, $P4439
    nqp_get_sc_object $P4440, "1307873280.77112", 31
    .const 'Sub' $P4441 = "41_1307873286.70277" 
    assign $P4440, $P4441
    nqp_get_sc_object $P4442, "1307873280.77112", 32
    .const 'Sub' $P4443 = "42_1307873286.70277" 
    assign $P4442, $P4443
    nqp_get_sc_object $P4444, "1307873280.77112", 33
    .const 'Sub' $P4445 = "43_1307873286.70277" 
    assign $P4444, $P4445
    nqp_get_sc_object $P4446, "1307873280.77112", 34
    .const 'Sub' $P4447 = "44_1307873286.70277" 
    assign $P4446, $P4447
    nqp_get_sc_object $P4448, "1307873280.77112", 35
    .const 'Sub' $P4449 = "45_1307873286.70277" 
    assign $P4448, $P4449
    nqp_get_sc_object $P4450, "1307873280.77112", 36
    .const 'Sub' $P4451 = "46_1307873286.70277" 
    assign $P4450, $P4451
    nqp_get_sc_object $P4452, "1307873280.77112", 37
    .const 'Sub' $P4453 = "47_1307873286.70277" 
    assign $P4452, $P4453
    nqp_get_sc_object $P4454, "1307873280.77112", 38
    .const 'Sub' $P4455 = "48_1307873286.70277" 
    assign $P4454, $P4455
    nqp_get_sc_object $P4456, "1307873280.77112", 39
    .const 'Sub' $P4457 = "49_1307873286.70277" 
    assign $P4456, $P4457
    nqp_get_sc_object $P4458, "1307873280.77112", 40
    .const 'Sub' $P4459 = "50_1307873286.70277" 
    assign $P4458, $P4459
    nqp_get_sc_object $P4460, "1307873280.77112", 41
    .const 'Sub' $P4461 = "51_1307873286.70277" 
    assign $P4460, $P4461
    nqp_get_sc_object $P4462, "1307873280.77112", 42
    .const 'Sub' $P4463 = "52_1307873286.70277" 
    assign $P4462, $P4463
    nqp_get_sc_object $P4464, "1307873280.77112", 43
    .const 'Sub' $P4465 = "53_1307873286.70277" 
    assign $P4464, $P4465
    nqp_get_sc_object $P4466, "1307873280.77112", 44
    .const 'Sub' $P4467 = "54_1307873286.70277" 
    assign $P4466, $P4467
    nqp_get_sc_object $P4468, "1307873280.77112", 45
    .const 'Sub' $P4469 = "55_1307873286.70277" 
    assign $P4468, $P4469
    nqp_get_sc_object $P4470, "1307873280.77112", 46
    .const 'Sub' $P4471 = "56_1307873286.70277" 
    assign $P4470, $P4471
    nqp_get_sc_object $P4472, "1307873280.77112", 47
    .const 'Sub' $P4473 = "57_1307873286.70277" 
    assign $P4472, $P4473
    nqp_get_sc_object $P4474, "1307873280.77112", 48
    .const 'Sub' $P4475 = "58_1307873286.70277" 
    assign $P4474, $P4475
    nqp_get_sc_object $P4476, "1307873280.77112", 49
    .const 'Sub' $P4477 = "59_1307873286.70277" 
    assign $P4476, $P4477
    nqp_get_sc_object $P4478, "1307873280.77112", 50
    .const 'Sub' $P4479 = "60_1307873286.70277" 
    assign $P4478, $P4479
    nqp_get_sc_object $P4480, "1307873280.77112", 51
    .const 'Sub' $P4481 = "61_1307873286.70277" 
    assign $P4480, $P4481
    nqp_get_sc_object $P4482, "1307873280.77112", 52
    .const 'Sub' $P4483 = "62_1307873286.70277" 
    assign $P4482, $P4483
    nqp_get_sc_object $P4484, "1307873280.77112", 53
    .const 'Sub' $P4485 = "63_1307873286.70277" 
    assign $P4484, $P4485
    nqp_get_sc_object $P4486, "1307873280.77112", 54
    .const 'Sub' $P4487 = "64_1307873286.70277" 
    assign $P4486, $P4487
    nqp_get_sc_object $P4488, "1307873280.77112", 55
    .const 'Sub' $P4489 = "65_1307873286.70277" 
    assign $P4488, $P4489
    nqp_get_sc_object $P4490, "1307873280.77112", 56
    .const 'Sub' $P4491 = "66_1307873286.70277" 
    assign $P4490, $P4491
    nqp_get_sc_object $P4492, "1307873280.77112", 57
    .const 'Sub' $P4493 = "67_1307873286.70277" 
    assign $P4492, $P4493
    nqp_get_sc_object $P4494, "1307873280.77112", 58
    .const 'Sub' $P4495 = "68_1307873286.70277" 
    assign $P4494, $P4495
    nqp_get_sc_object $P4496, "1307873280.77112", 59
    .const 'Sub' $P4497 = "69_1307873286.70277" 
    assign $P4496, $P4497
    nqp_get_sc_object $P4498, "1307873280.77112", 60
    .const 'Sub' $P4499 = "70_1307873286.70277" 
    assign $P4498, $P4499
    nqp_get_sc_object $P4500, "1307873280.77112", 61
    .const 'Sub' $P4501 = "71_1307873286.70277" 
    assign $P4500, $P4501
    nqp_get_sc_object $P4502, "1307873280.77112", 62
    .const 'Sub' $P4503 = "72_1307873286.70277" 
    assign $P4502, $P4503
    nqp_get_sc_object $P4504, "1307873280.77112", 63
    .const 'Sub' $P4505 = "73_1307873286.70277" 
    assign $P4504, $P4505
    nqp_get_sc_object $P4506, "1307873280.77112", 64
    .const 'Sub' $P4507 = "74_1307873286.70277" 
    assign $P4506, $P4507
    nqp_get_sc_object $P4508, "1307873280.77112", 65
    .const 'Sub' $P4509 = "75_1307873286.70277" 
    assign $P4508, $P4509
    nqp_get_sc_object $P4510, "1307873280.77112", 66
    .const 'Sub' $P4511 = "76_1307873286.70277" 
    assign $P4510, $P4511
    nqp_get_sc_object $P4512, "1307873280.77112", 67
    .const 'Sub' $P4513 = "77_1307873286.70277" 
    assign $P4512, $P4513
    nqp_get_sc_object $P4514, "1307873280.77112", 68
    .const 'Sub' $P4515 = "78_1307873286.70277" 
    assign $P4514, $P4515
    nqp_get_sc_object $P4516, "1307873280.77112", 69
    .const 'Sub' $P4517 = "79_1307873286.70277" 
    assign $P4516, $P4517
    nqp_get_sc_object $P4518, "1307873280.77112", 70
    .const 'Sub' $P4519 = "80_1307873286.70277" 
    assign $P4518, $P4519
    nqp_get_sc_object $P4520, "1307873280.77112", 71
    .const 'Sub' $P4521 = "81_1307873286.70277" 
    assign $P4520, $P4521
    nqp_get_sc_object $P4522, "1307873280.77112", 72
    .const 'Sub' $P4523 = "82_1307873286.70277" 
    assign $P4522, $P4523
    nqp_get_sc_object $P4524, "1307873280.77112", 73
    .const 'Sub' $P4525 = "83_1307873286.70277" 
    assign $P4524, $P4525
    nqp_get_sc_object $P4526, "1307873280.77112", 74
    .const 'Sub' $P4527 = "84_1307873286.70277" 
    assign $P4526, $P4527
    nqp_get_sc_object $P4528, "1307873280.77112", 75
    .const 'Sub' $P4529 = "85_1307873286.70277" 
    assign $P4528, $P4529
    nqp_get_sc_object $P4530, "1307873280.77112", 76
    .const 'Sub' $P4531 = "86_1307873286.70277" 
    assign $P4530, $P4531
    nqp_get_sc_object $P4532, "1307873280.77112", 77
    .const 'Sub' $P4533 = "87_1307873286.70277" 
    assign $P4532, $P4533
    nqp_get_sc_object $P4534, "1307873280.77112", 78
    .const 'Sub' $P4535 = "88_1307873286.70277" 
    assign $P4534, $P4535
    nqp_get_sc_object $P4536, "1307873280.77112", 79
    .const 'Sub' $P4537 = "89_1307873286.70277" 
    assign $P4536, $P4537
    nqp_get_sc_object $P4538, "1307873280.77112", 80
    .const 'Sub' $P4539 = "90_1307873286.70277" 
    assign $P4538, $P4539
    nqp_get_sc_object $P4540, "1307873280.77112", 81
    .const 'Sub' $P4541 = "91_1307873286.70277" 
    assign $P4540, $P4541
    nqp_get_sc_object $P4542, "1307873280.77112", 82
    .const 'Sub' $P4543 = "92_1307873286.70277" 
    assign $P4542, $P4543
    nqp_get_sc_object $P4544, "1307873280.77112", 83
    .const 'Sub' $P4545 = "93_1307873286.70277" 
    assign $P4544, $P4545
    nqp_get_sc_object $P4546, "1307873280.77112", 84
    .const 'Sub' $P4547 = "97_1307873286.70277" 
    assign $P4546, $P4547
    nqp_get_sc_object $P4548, "1307873280.77112", 85
    .const 'Sub' $P4549 = "98_1307873286.70277" 
    assign $P4548, $P4549
    nqp_get_sc_object $P4550, "1307873280.77112", 86
    .const 'Sub' $P4551 = "100_1307873286.70277" 
    assign $P4550, $P4551
    nqp_get_sc_object $P4552, "1307873280.77112", 87
    .const 'Sub' $P4553 = "101_1307873286.70277" 
    assign $P4552, $P4553
    nqp_get_sc_object $P4554, "1307873280.77112", 88
    .const 'Sub' $P4555 = "102_1307873286.70277" 
    assign $P4554, $P4555
    nqp_get_sc_object $P4556, "1307873280.77112", 89
    .const 'Sub' $P4557 = "103_1307873286.70277" 
    assign $P4556, $P4557
    nqp_get_sc_object $P4558, "1307873280.77112", 90
    .const 'Sub' $P4559 = "104_1307873286.70277" 
    assign $P4558, $P4559
    nqp_get_sc_object $P4560, "1307873280.77112", 91
    .const 'Sub' $P4561 = "105_1307873286.70277" 
    assign $P4560, $P4561
    nqp_get_sc_object $P4562, "1307873280.77112", 92
    .const 'Sub' $P4563 = "106_1307873286.70277" 
    assign $P4562, $P4563
    nqp_get_sc_object $P4564, "1307873280.77112", 93
    .const 'Sub' $P4565 = "107_1307873286.70277" 
    assign $P4564, $P4565
    nqp_get_sc_object $P4566, "1307873280.77112", 94
    .const 'Sub' $P4567 = "108_1307873286.70277" 
    assign $P4566, $P4567
    nqp_get_sc_object $P4568, "1307873280.77112", 95
    .const 'Sub' $P4569 = "109_1307873286.70277" 
    assign $P4568, $P4569
    .const 'Sub' $P4570 = "109_1307873286.70277" 
    nqp_get_sc_object $P4571, "1307873280.77112", 1
    get_who $P4572, $P4571
    set $P4572["quotemod_check"], $P4570
    nqp_get_sc_object $P4573, "1307873280.77112", 96
    .const 'Sub' $P4574 = "110_1307873286.70277" 
    assign $P4573, $P4574
    nqp_get_sc_object $P4575, "1307873280.77112", 97
    .const 'Sub' $P4576 = "111_1307873286.70277" 
    assign $P4575, $P4576
    nqp_get_sc_object $P4577, "1307873280.77112", 98
    .const 'Sub' $P4578 = "112_1307873286.70277" 
    assign $P4577, $P4578
    .const 'Sub' $P4579 = "112_1307873286.70277" 
    nqp_get_sc_object $P4580, "1307873280.77112", 1
    get_who $P4581, $P4580
    set $P4581["split_words"], $P4579
    nqp_get_sc_object $P4582, "1307873280.77112", 99
    .const 'Sub' $P4583 = "113_1307873286.70277" 
    assign $P4582, $P4583
    nqp_get_sc_object $P4584, "1307873280.77112", 100
    .const 'Sub' $P4585 = "114_1307873286.70277" 
    assign $P4584, $P4585
    nqp_get_sc_object $P4586, "1307873280.77112", 101
    .const 'Sub' $P4587 = "115_1307873286.70277" 
    assign $P4586, $P4587
    nqp_get_sc_object $P4588, "1307873280.77112", 102
    .const 'Sub' $P4589 = "116_1307873286.70277" 
    assign $P4588, $P4589
    nqp_get_sc_object $P4590, "1307873280.77112", 103
    .const 'Sub' $P4591 = "117_1307873286.70277" 
    assign $P4590, $P4591
    nqp_get_sc_object $P4592, "1307873280.77112", 104
    .const 'Sub' $P4593 = "118_1307873286.70277" 
    assign $P4592, $P4593
    .const 'Sub' $P4594 = "11_1307873286.70277" 
    $P4595 = $P4594."get_lexinfo"()
    nqp_get_sc_object $P4596, "1307873280.77112", 1
    $P4595."set_static_lexpad_value"("$?PACKAGE", $P4596)
    .const 'Sub' $P4597 = "11_1307873286.70277" 
    $P4598 = $P4597."get_lexinfo"()
    $P4598."finish_static_lexpad"()
    .const 'Sub' $P4599 = "11_1307873286.70277" 
    $P4600 = $P4599."get_lexinfo"()
    nqp_get_sc_object $P4601, "1307873280.77112", 1
    $P4600."set_static_lexpad_value"("$?CLASS", $P4601)
    .const 'Sub' $P4602 = "11_1307873286.70277" 
    $P4603 = $P4602."get_lexinfo"()
    $P4603."finish_static_lexpad"()
    .const 'Sub' $P4604 = "120_1307873286.70277" 
    nqp_get_sc_object $P4605, "1307873280.77112", 105
    get_who $P4606, $P4605
    set $P4606["string_to_int"], $P4604
    .const 'Sub' $P4607 = "122_1307873286.70277" 
    nqp_get_sc_object $P4608, "1307873280.77112", 105
    get_who $P4609, $P4608
    set $P4609["ints_to_string"], $P4607
    nqp_get_sc_object $P4610, "1307873280.77112", 106
    .const 'Sub' $P4611 = "125_1307873286.70277" 
    assign $P4610, $P4611
    nqp_get_sc_object $P4612, "1307873280.77112", 107
    .const 'Sub' $P4613 = "126_1307873286.70277" 
    assign $P4612, $P4613
    nqp_get_sc_object $P4614, "1307873280.77112", 108
    .const 'Sub' $P4615 = "129_1307873286.70277" 
    assign $P4614, $P4615
    nqp_get_sc_object $P4616, "1307873280.77112", 109
    .const 'Sub' $P4617 = "132_1307873286.70277" 
    assign $P4616, $P4617
    nqp_get_sc_object $P4618, "1307873280.77112", 110
    .const 'Sub' $P4619 = "133_1307873286.70277" 
    assign $P4618, $P4619
    nqp_get_sc_object $P4620, "1307873280.77112", 111
    .const 'Sub' $P4621 = "134_1307873286.70277" 
    assign $P4620, $P4621
    nqp_get_sc_object $P4622, "1307873280.77112", 112
    .const 'Sub' $P4623 = "135_1307873286.70277" 
    assign $P4622, $P4623
    nqp_get_sc_object $P4624, "1307873280.77112", 113
    .const 'Sub' $P4625 = "136_1307873286.70277" 
    assign $P4624, $P4625
    nqp_get_sc_object $P4626, "1307873280.77112", 114
    .const 'Sub' $P4627 = "137_1307873286.70277" 
    assign $P4626, $P4627
    nqp_get_sc_object $P4628, "1307873280.77112", 115
    .const 'Sub' $P4629 = "138_1307873286.70277" 
    assign $P4628, $P4629
    nqp_get_sc_object $P4630, "1307873280.77112", 116
    .const 'Sub' $P4631 = "139_1307873286.70277" 
    assign $P4630, $P4631
    nqp_get_sc_object $P4632, "1307873280.77112", 117
    .const 'Sub' $P4633 = "140_1307873286.70277" 
    assign $P4632, $P4633
    nqp_get_sc_object $P4634, "1307873280.77112", 118
    .const 'Sub' $P4635 = "141_1307873286.70277" 
    assign $P4634, $P4635
    nqp_get_sc_object $P4636, "1307873280.77112", 119
    .const 'Sub' $P4637 = "142_1307873286.70277" 
    assign $P4636, $P4637
    nqp_get_sc_object $P4638, "1307873280.77112", 120
    .const 'Sub' $P4639 = "145_1307873286.70277" 
    assign $P4638, $P4639
    nqp_get_sc_object $P4640, "1307873280.77112", 121
    .const 'Sub' $P4641 = "147_1307873286.70277" 
    assign $P4640, $P4641
    nqp_get_sc_object $P4642, "1307873280.77112", 122
    .const 'Sub' $P4643 = "148_1307873286.70277" 
    assign $P4642, $P4643
    nqp_get_sc_object $P4644, "1307873280.77112", 123
    .const 'Sub' $P4645 = "149_1307873286.70277" 
    assign $P4644, $P4645
    nqp_get_sc_object $P4646, "1307873280.77112", 124
    .const 'Sub' $P4647 = "150_1307873286.70277" 
    assign $P4646, $P4647
    nqp_get_sc_object $P4648, "1307873280.77112", 125
    .const 'Sub' $P4649 = "151_1307873286.70277" 
    assign $P4648, $P4649
    nqp_get_sc_object $P4650, "1307873280.77112", 126
    .const 'Sub' $P4651 = "152_1307873286.70277" 
    assign $P4650, $P4651
    nqp_get_sc_object $P4652, "1307873280.77112", 127
    .const 'Sub' $P4653 = "153_1307873286.70277" 
    assign $P4652, $P4653
    nqp_get_sc_object $P4654, "1307873280.77112", 128
    .const 'Sub' $P4655 = "154_1307873286.70277" 
    assign $P4654, $P4655
    nqp_get_sc_object $P4656, "1307873280.77112", 129
    .const 'Sub' $P4657 = "155_1307873286.70277" 
    assign $P4656, $P4657
    nqp_get_sc_object $P4658, "1307873280.77112", 130
    .const 'Sub' $P4659 = "156_1307873286.70277" 
    assign $P4658, $P4659
    nqp_get_sc_object $P4660, "1307873280.77112", 131
    .const 'Sub' $P4661 = "157_1307873286.70277" 
    assign $P4660, $P4661
    nqp_get_sc_object $P4662, "1307873280.77112", 132
    .const 'Sub' $P4663 = "158_1307873286.70277" 
    assign $P4662, $P4663
    nqp_get_sc_object $P4664, "1307873280.77112", 133
    .const 'Sub' $P4665 = "159_1307873286.70277" 
    assign $P4664, $P4665
    nqp_get_sc_object $P4666, "1307873280.77112", 134
    .const 'Sub' $P4667 = "160_1307873286.70277" 
    assign $P4666, $P4667
    nqp_get_sc_object $P4668, "1307873280.77112", 135
    .const 'Sub' $P4669 = "161_1307873286.70277" 
    assign $P4668, $P4669
    nqp_get_sc_object $P4670, "1307873280.77112", 136
    .const 'Sub' $P4671 = "162_1307873286.70277" 
    assign $P4670, $P4671
    nqp_get_sc_object $P4672, "1307873280.77112", 137
    .const 'Sub' $P4673 = "164_1307873286.70277" 
    assign $P4672, $P4673
    .const 'Sub' $P4674 = "119_1307873286.70277" 
    $P4675 = $P4674."get_lexinfo"()
    nqp_get_sc_object $P4676, "1307873280.77112", 105
    $P4675."set_static_lexpad_value"("$?PACKAGE", $P4676)
    .const 'Sub' $P4677 = "119_1307873286.70277" 
    $P4678 = $P4677."get_lexinfo"()
    $P4678."finish_static_lexpad"()
    .const 'Sub' $P4679 = "119_1307873286.70277" 
    $P4680 = $P4679."get_lexinfo"()
    nqp_get_sc_object $P4681, "1307873280.77112", 105
    $P4680."set_static_lexpad_value"("$?CLASS", $P4681)
    .const 'Sub' $P4682 = "119_1307873286.70277" 
    $P4683 = $P4682."get_lexinfo"()
    $P4683."finish_static_lexpad"()
    nqp_get_sc_object $P4684, "1307873280.77112", 139
    .const 'Sub' $P4685 = "168_1307873286.70277" 
    assign $P4684, $P4685
    nqp_get_sc_object $P4686, "1307873280.77112", 140
    .const 'Sub' $P4687 = "169_1307873286.70277" 
    assign $P4686, $P4687
    nqp_get_sc_object $P4688, "1307873280.77112", 141
    .const 'Sub' $P4689 = "171_1307873286.70277" 
    assign $P4688, $P4689
    nqp_get_sc_object $P4690, "1307873280.77112", 142
    .const 'Sub' $P4691 = "174_1307873286.70277" 
    assign $P4690, $P4691
    nqp_get_sc_object $P4692, "1307873280.77112", 143
    .const 'Sub' $P4693 = "175_1307873286.70277" 
    assign $P4692, $P4693
    nqp_get_sc_object $P4694, "1307873280.77112", 144
    .const 'Sub' $P4695 = "176_1307873286.70277" 
    assign $P4694, $P4695
    nqp_get_sc_object $P4696, "1307873280.77112", 145
    .const 'Sub' $P4697 = "177_1307873286.70277" 
    assign $P4696, $P4697
    nqp_get_sc_object $P4698, "1307873280.77112", 146
    .const 'Sub' $P4699 = "178_1307873286.70277" 
    assign $P4698, $P4699
    nqp_get_sc_object $P4700, "1307873280.77112", 147
    .const 'Sub' $P4701 = "180_1307873286.70277" 
    assign $P4700, $P4701
    nqp_get_sc_object $P4702, "1307873280.77112", 148
    .const 'Sub' $P4703 = "185_1307873286.70277" 
    assign $P4702, $P4703
    nqp_get_sc_object $P4704, "1307873280.77112", 149
    .const 'Sub' $P4705 = "186_1307873286.70277" 
    assign $P4704, $P4705
    nqp_get_sc_object $P4706, "1307873280.77112", 150
    .const 'Sub' $P4707 = "193_1307873286.70277" 
    assign $P4706, $P4707
    nqp_get_sc_object $P4708, "1307873280.77112", 151
    .const 'Sub' $P4709 = "195_1307873286.70277" 
    assign $P4708, $P4709
    nqp_get_sc_object $P4710, "1307873280.77112", 152
    .const 'Sub' $P4711 = "196_1307873286.70277" 
    assign $P4710, $P4711
    nqp_get_sc_object $P4712, "1307873280.77112", 153
    .const 'Sub' $P4713 = "197_1307873286.70277" 
    assign $P4712, $P4713
    nqp_get_sc_object $P4714, "1307873280.77112", 154
    .const 'Sub' $P4715 = "198_1307873286.70277" 
    assign $P4714, $P4715
    nqp_get_sc_object $P4716, "1307873280.77112", 155
    .const 'Sub' $P4717 = "199_1307873286.70277" 
    assign $P4716, $P4717
    nqp_get_sc_object $P4718, "1307873280.77112", 156
    .const 'Sub' $P4719 = "200_1307873286.70277" 
    assign $P4718, $P4719
    nqp_get_sc_object $P4720, "1307873280.77112", 157
    .const 'Sub' $P4721 = "201_1307873286.70277" 
    assign $P4720, $P4721
    nqp_get_sc_object $P4722, "1307873280.77112", 158
    .const 'Sub' $P4723 = "202_1307873286.70277" 
    assign $P4722, $P4723
    nqp_get_sc_object $P4724, "1307873280.77112", 159
    .const 'Sub' $P4725 = "203_1307873286.70277" 
    assign $P4724, $P4725
    nqp_get_sc_object $P4726, "1307873280.77112", 160
    .const 'Sub' $P4727 = "204_1307873286.70277" 
    assign $P4726, $P4727
    nqp_get_sc_object $P4728, "1307873280.77112", 161
    .const 'Sub' $P4729 = "205_1307873286.70277" 
    assign $P4728, $P4729
    nqp_get_sc_object $P4730, "1307873280.77112", 162
    .const 'Sub' $P4731 = "207_1307873286.70277" 
    assign $P4730, $P4731
    nqp_get_sc_object $P4732, "1307873280.77112", 163
    .const 'Sub' $P4733 = "210_1307873286.70277" 
    assign $P4732, $P4733
    nqp_get_sc_object $P4734, "1307873280.77112", 164
    .const 'Sub' $P4735 = "214_1307873286.70277" 
    assign $P4734, $P4735
    nqp_get_sc_object $P4736, "1307873280.77112", 165
    .const 'Sub' $P4737 = "216_1307873286.70277" 
    assign $P4736, $P4737
    nqp_get_sc_object $P4738, "1307873280.77112", 166
    .const 'Sub' $P4739 = "219_1307873286.70277" 
    assign $P4738, $P4739
    nqp_get_sc_object $P4740, "1307873280.77112", 167
    .const 'Sub' $P4741 = "220_1307873286.70277" 
    assign $P4740, $P4741
    nqp_get_sc_object $P4742, "1307873280.77112", 168
    .const 'Sub' $P4743 = "221_1307873286.70277" 
    assign $P4742, $P4743
    nqp_get_sc_object $P4744, "1307873280.77112", 169
    .const 'Sub' $P4745 = "222_1307873286.70277" 
    assign $P4744, $P4745
    nqp_get_sc_object $P4746, "1307873280.77112", 170
    .const 'Sub' $P4747 = "223_1307873286.70277" 
    assign $P4746, $P4747
    nqp_get_sc_object $P4748, "1307873280.77112", 171
    .const 'Sub' $P4749 = "224_1307873286.70277" 
    assign $P4748, $P4749
    nqp_get_sc_object $P4750, "1307873280.77112", 172
    .const 'Sub' $P4751 = "226_1307873286.70277" 
    assign $P4750, $P4751
    nqp_get_sc_object $P4752, "1307873280.77112", 173
    .const 'Sub' $P4753 = "227_1307873286.70277" 
    assign $P4752, $P4753
    nqp_get_sc_object $P4754, "1307873280.77112", 174
    .const 'Sub' $P4755 = "228_1307873286.70277" 
    assign $P4754, $P4755
    nqp_get_sc_object $P4756, "1307873280.77112", 175
    .const 'Sub' $P4757 = "231_1307873286.70277" 
    assign $P4756, $P4757
    nqp_get_sc_object $P4758, "1307873280.77112", 176
    .const 'Sub' $P4759 = "233_1307873286.70277" 
    assign $P4758, $P4759
    nqp_get_sc_object $P4760, "1307873280.77112", 177
    .const 'Sub' $P4761 = "236_1307873286.70277" 
    assign $P4760, $P4761
    nqp_get_sc_object $P4762, "1307873280.77112", 178
    .const 'Sub' $P4763 = "238_1307873286.70277" 
    assign $P4762, $P4763
    .const 'Sub' $P4764 = "165_1307873286.70277" 
    $P4765 = $P4764."get_lexinfo"()
    nqp_get_sc_object $P4766, "1307873280.77112", 138
    $P4765."set_static_lexpad_value"("$?PACKAGE", $P4766)
    .const 'Sub' $P4767 = "165_1307873286.70277" 
    $P4768 = $P4767."get_lexinfo"()
    $P4768."finish_static_lexpad"()
    .const 'Sub' $P4769 = "165_1307873286.70277" 
    $P4770 = $P4769."get_lexinfo"()
    nqp_get_sc_object $P4771, "1307873280.77112", 138
    $P4770."set_static_lexpad_value"("$?CLASS", $P4771)
    .const 'Sub' $P4772 = "165_1307873286.70277" 
    $P4773 = $P4772."get_lexinfo"()
    $P4773."finish_static_lexpad"()
    nqp_get_sc_object $P4774, "1307873280.77112", 180
    .const 'Sub' $P4775 = "240_1307873286.70277" 
    assign $P4774, $P4775
    nqp_get_sc_object $P4776, "1307873280.77112", 181
    .const 'Sub' $P4777 = "241_1307873286.70277" 
    assign $P4776, $P4777
    nqp_get_sc_object $P4778, "1307873280.77112", 182
    .const 'Sub' $P4779 = "242_1307873286.70277" 
    assign $P4778, $P4779
    nqp_get_sc_object $P4780, "1307873280.77112", 183
    .const 'Sub' $P4781 = "243_1307873286.70277" 
    assign $P4780, $P4781
    nqp_get_sc_object $P4782, "1307873280.77112", 184
    .const 'Sub' $P4783 = "244_1307873286.70277" 
    assign $P4782, $P4783
    .const 'Sub' $P4784 = "239_1307873286.70277" 
    $P4785 = $P4784."get_lexinfo"()
    nqp_get_sc_object $P4786, "1307873280.77112", 179
    $P4785."set_static_lexpad_value"("$?PACKAGE", $P4786)
    .const 'Sub' $P4787 = "239_1307873286.70277" 
    $P4788 = $P4787."get_lexinfo"()
    $P4788."finish_static_lexpad"()
    .const 'Sub' $P4789 = "239_1307873286.70277" 
    $P4790 = $P4789."get_lexinfo"()
    nqp_get_sc_object $P4791, "1307873280.77112", 179
    $P4790."set_static_lexpad_value"("$?CLASS", $P4791)
    .const 'Sub' $P4792 = "239_1307873286.70277" 
    $P4793 = $P4792."get_lexinfo"()
    $P4793."finish_static_lexpad"()
    nqp_get_sc_object $P4794, "1307873280.77112", 186
    .const 'Sub' $P4795 = "247_1307873286.70277" 
    assign $P4794, $P4795
    nqp_get_sc_object $P4796, "1307873280.77112", 187
    .const 'Sub' $P4797 = "248_1307873286.70277" 
    assign $P4796, $P4797
    nqp_get_sc_object $P4798, "1307873280.77112", 188
    .const 'Sub' $P4799 = "249_1307873286.70277" 
    assign $P4798, $P4799
    nqp_get_sc_object $P4800, "1307873280.77112", 189
    .const 'Sub' $P4801 = "251_1307873286.70277" 
    assign $P4800, $P4801
    nqp_get_sc_object $P4802, "1307873280.77112", 190
    .const 'Sub' $P4803 = "252_1307873286.70277" 
    assign $P4802, $P4803
    nqp_get_sc_object $P4804, "1307873280.77112", 191
    .const 'Sub' $P4805 = "253_1307873286.70277" 
    assign $P4804, $P4805
    nqp_get_sc_object $P4806, "1307873280.77112", 192
    .const 'Sub' $P4807 = "255_1307873286.70277" 
    assign $P4806, $P4807
    nqp_get_sc_object $P4808, "1307873280.77112", 193
    .const 'Sub' $P4809 = "256_1307873286.70277" 
    assign $P4808, $P4809
    nqp_get_sc_object $P4810, "1307873280.77112", 194
    .const 'Sub' $P4811 = "257_1307873286.70277" 
    assign $P4810, $P4811
    .const 'Sub' $P4812 = "246_1307873286.70277" 
    $P4813 = $P4812."get_lexinfo"()
    nqp_get_sc_object $P4814, "1307873280.77112", 185
    $P4813."set_static_lexpad_value"("$?PACKAGE", $P4814)
    .const 'Sub' $P4815 = "246_1307873286.70277" 
    $P4816 = $P4815."get_lexinfo"()
    $P4816."finish_static_lexpad"()
    .const 'Sub' $P4817 = "246_1307873286.70277" 
    $P4818 = $P4817."get_lexinfo"()
    nqp_get_sc_object $P4819, "1307873280.77112", 185
    $P4818."set_static_lexpad_value"("$?CLASS", $P4819)
    .const 'Sub' $P4820 = "246_1307873286.70277" 
    $P4821 = $P4820."get_lexinfo"()
    $P4821."finish_static_lexpad"()
    .const 'Sub' $P4822 = "265_1307873286.70277" 
    $P4823 = $P4822."get_lexinfo"()
    nqp_get_sc_object $P4824, "1307873280.77112", 196
    $P4823."set_static_lexpad_value"("Event", $P4824)
    .const 'Sub' $P4825 = "265_1307873286.70277" 
    $P4826 = $P4825."get_lexinfo"()
    $P4826."finish_static_lexpad"()
    nqp_get_sc_object $P4827, "1307873280.77112", 197
    .const 'Sub' $P4828 = "268_1307873286.70277" 
    assign $P4827, $P4828
    nqp_get_sc_object $P4829, "1307873280.77112", 198
    .const 'Sub' $P4830 = "269_1307873286.70277" 
    assign $P4829, $P4830
    .const 'Sub' $P4831 = "267_1307873286.70277" 
    $P4832 = $P4831."get_lexinfo"()
    nqp_get_sc_object $P4833, "1307873280.77112", 196
    $P4832."set_static_lexpad_value"("$?PACKAGE", $P4833)
    .const 'Sub' $P4834 = "267_1307873286.70277" 
    $P4835 = $P4834."get_lexinfo"()
    $P4835."finish_static_lexpad"()
    .const 'Sub' $P4836 = "267_1307873286.70277" 
    $P4837 = $P4836."get_lexinfo"()
    nqp_get_sc_object $P4838, "1307873280.77112", 196
    $P4837."set_static_lexpad_value"("$?CLASS", $P4838)
    .const 'Sub' $P4839 = "267_1307873286.70277" 
    $P4840 = $P4839."get_lexinfo"()
    $P4840."finish_static_lexpad"()
    nqp_get_sc_object $P4841, "1307873280.77112", 199
    .const 'Sub' $P4842 = "270_1307873286.70277" 
    assign $P4841, $P4842
    nqp_get_sc_object $P4843, "1307873280.77112", 200
    .const 'Sub' $P4844 = "271_1307873286.70277" 
    assign $P4843, $P4844
    nqp_get_sc_object $P4845, "1307873280.77112", 201
    .const 'Sub' $P4846 = "272_1307873286.70277" 
    assign $P4845, $P4846
    nqp_get_sc_object $P4847, "1307873280.77112", 202
    .const 'Sub' $P4848 = "273_1307873286.70277" 
    assign $P4847, $P4848
    nqp_get_sc_object $P4849, "1307873280.77112", 203
    .const 'Sub' $P4850 = "274_1307873286.70277" 
    assign $P4849, $P4850
    nqp_get_sc_object $P4851, "1307873280.77112", 204
    .const 'Sub' $P4852 = "275_1307873286.70277" 
    assign $P4851, $P4852
    nqp_get_sc_object $P4853, "1307873280.77112", 205
    .const 'Sub' $P4854 = "276_1307873286.70277" 
    assign $P4853, $P4854
    nqp_get_sc_object $P4855, "1307873280.77112", 206
    .const 'Sub' $P4856 = "277_1307873286.70277" 
    assign $P4855, $P4856
    nqp_get_sc_object $P4857, "1307873280.77112", 207
    .const 'Sub' $P4858 = "278_1307873286.70277" 
    assign $P4857, $P4858
    nqp_get_sc_object $P4859, "1307873280.77112", 208
    .const 'Sub' $P4860 = "279_1307873286.70277" 
    assign $P4859, $P4860
    nqp_get_sc_object $P4861, "1307873280.77112", 209
    .const 'Sub' $P4862 = "280_1307873286.70277" 
    assign $P4861, $P4862
    nqp_get_sc_object $P4863, "1307873280.77112", 210
    .const 'Sub' $P4864 = "281_1307873286.70277" 
    assign $P4863, $P4864
    nqp_get_sc_object $P4865, "1307873280.77112", 211
    .const 'Sub' $P4866 = "282_1307873286.70277" 
    assign $P4865, $P4866
    .const 'Sub' $P4867 = "265_1307873286.70277" 
    $P4868 = $P4867."get_lexinfo"()
    nqp_get_sc_object $P4869, "1307873280.77112", 195
    $P4868."set_static_lexpad_value"("$?PACKAGE", $P4869)
    .const 'Sub' $P4870 = "265_1307873286.70277" 
    $P4871 = $P4870."get_lexinfo"()
    $P4871."finish_static_lexpad"()
    .const 'Sub' $P4872 = "265_1307873286.70277" 
    $P4873 = $P4872."get_lexinfo"()
    nqp_get_sc_object $P4874, "1307873280.77112", 195
    $P4873."set_static_lexpad_value"("$?CLASS", $P4874)
    .const 'Sub' $P4875 = "265_1307873286.70277" 
    $P4876 = $P4875."get_lexinfo"()
    $P4876."finish_static_lexpad"()
    goto if_3239_end
  if_3239:
    nqp_dynop_setup 
    getinterp $P3242
    get_class $P3243, "LexPad"
    get_class $P3244, "NQPLexPad"
    $P3242."hll_map"($P3243, $P3244)
    nqp_create_sc $P3245, "1307873280.77112"
    .local pmc cur_sc
    set cur_sc, $P3245
    nqp_get_sc_object $P3246, "__6MODEL_CORE__", 0
    $P3247 = $P3246."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3247, cur_sc
    nqp_set_sc_object "1307873280.77112", 0, $P3247
    .const 'Sub' $P3248 = "10_1307873286.70277" 
    $P3249 = $P3248."get_lexinfo"()
    nqp_get_sc_object $P3250, "1307873280.77112", 0
    $P3249."set_static_lexpad_value"("GLOBALish", $P3250)
    .const 'Sub' $P3251 = "10_1307873286.70277" 
    $P3252 = $P3251."get_lexinfo"()
    $P3252."finish_static_lexpad"()
    .const 'Sub' $P3253 = "10_1307873286.70277" 
    $P3254 = $P3253."get_lexinfo"()
    nqp_get_sc_object $P3255, "1307873280.77112", 0
    $P3254."set_static_lexpad_value"("$?PACKAGE", $P3255)
    .const 'Sub' $P3256 = "10_1307873286.70277" 
    $P3257 = $P3256."get_lexinfo"()
    $P3257."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3258, "ModuleLoader"
    $P3259 = $P3258."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3259)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3260, "ModuleLoader"
    nqp_get_sc_object $P3261, "1307873280.77112", 0
    $P3260."load_module"("NQPRegex", $P3261)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3262, "ModuleLoader"
    nqp_get_sc_object $P3263, "1307873280.77112", 0
    $P3262."load_module"("NQPRegex", $P3263)
    nqp_get_sc_object $P3264, "1307873274.8766", 41
    $P3265 = $P3264."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3265, cur_sc
    nqp_set_sc_object "1307873280.77112", 1, $P3265
    nqp_get_sc_object $P3266, "1307873280.77112", 1
    nqp_get_sc_object $P3267, "1307873280.77112", 0
    nqp_get_package_through_who $P3268, $P3267, "HLL"
    get_who $P3269, $P3268
    set $P3269["Grammar"], $P3266
    nqp_get_sc_object $P3270, "1307873280.77112", 1
    get_how $P3271, $P3270
    nqp_get_sc_object $P3272, "1307873280.77112", 1
    .const 'Sub' $P3273 = "12_1307873286.70277" 
    $P3271."add_method"($P3272, "ws", $P3273)
    nqp_get_sc_object $P3274, "1307873280.77112", 1
    get_how $P3275, $P3274
    nqp_get_sc_object $P3276, "1307873280.77112", 1
    .const 'Sub' $P3277 = "13_1307873286.70277" 
    $P3275."add_method"($P3276, "!PREFIX__ws", $P3277)
    nqp_get_sc_object $P3278, "1307873280.77112", 1
    get_how $P3279, $P3278
    nqp_get_sc_object $P3280, "1307873280.77112", 1
    .const 'Sub' $P3281 = "14_1307873286.70277" 
    $P3279."add_method"($P3280, "termish", $P3281)
    nqp_get_sc_object $P3282, "1307873280.77112", 1
    get_how $P3283, $P3282
    nqp_get_sc_object $P3284, "1307873280.77112", 1
    .const 'Sub' $P3285 = "15_1307873286.70277" 
    $P3283."add_method"($P3284, "!PREFIX__termish", $P3285)
    nqp_get_sc_object $P3286, "1307873280.77112", 1
    get_how $P3287, $P3286
    nqp_get_sc_object $P3288, "1307873280.77112", 1
    .const 'Sub' $P3289 = "16_1307873286.70277" 
    $P3287."add_method"($P3288, "term", $P3289)
    nqp_get_sc_object $P3290, "1307873280.77112", 1
    get_how $P3291, $P3290
    nqp_get_sc_object $P3292, "1307873280.77112", 1
    .const 'Sub' $P3293 = "17_1307873286.70277" 
    $P3291."add_method"($P3292, "!PREFIX__term", $P3293)
    nqp_get_sc_object $P3294, "1307873280.77112", 1
    get_how $P3295, $P3294
    nqp_get_sc_object $P3296, "1307873280.77112", 1
    .const 'Sub' $P3297 = "18_1307873286.70277" 
    $P3295."add_method"($P3296, "infix", $P3297)
    nqp_get_sc_object $P3298, "1307873280.77112", 1
    get_how $P3299, $P3298
    nqp_get_sc_object $P3300, "1307873280.77112", 1
    .const 'Sub' $P3301 = "19_1307873286.70277" 
    $P3299."add_method"($P3300, "!PREFIX__infix", $P3301)
    nqp_get_sc_object $P3302, "1307873280.77112", 1
    get_how $P3303, $P3302
    nqp_get_sc_object $P3304, "1307873280.77112", 1
    .const 'Sub' $P3305 = "20_1307873286.70277" 
    $P3303."add_method"($P3304, "prefix", $P3305)
    nqp_get_sc_object $P3306, "1307873280.77112", 1
    get_how $P3307, $P3306
    nqp_get_sc_object $P3308, "1307873280.77112", 1
    .const 'Sub' $P3309 = "21_1307873286.70277" 
    $P3307."add_method"($P3308, "!PREFIX__prefix", $P3309)
    nqp_get_sc_object $P3310, "1307873280.77112", 1
    get_how $P3311, $P3310
    nqp_get_sc_object $P3312, "1307873280.77112", 1
    .const 'Sub' $P3313 = "22_1307873286.70277" 
    $P3311."add_method"($P3312, "postfix", $P3313)
    nqp_get_sc_object $P3314, "1307873280.77112", 1
    get_how $P3315, $P3314
    nqp_get_sc_object $P3316, "1307873280.77112", 1
    .const 'Sub' $P3317 = "23_1307873286.70277" 
    $P3315."add_method"($P3316, "!PREFIX__postfix", $P3317)
    nqp_get_sc_object $P3318, "1307873280.77112", 1
    get_how $P3319, $P3318
    nqp_get_sc_object $P3320, "1307873280.77112", 1
    .const 'Sub' $P3321 = "24_1307873286.70277" 
    $P3319."add_method"($P3320, "circumfix", $P3321)
    nqp_get_sc_object $P3322, "1307873280.77112", 1
    get_how $P3323, $P3322
    nqp_get_sc_object $P3324, "1307873280.77112", 1
    .const 'Sub' $P3325 = "25_1307873286.70277" 
    $P3323."add_method"($P3324, "!PREFIX__circumfix", $P3325)
    nqp_get_sc_object $P3326, "1307873280.77112", 1
    get_how $P3327, $P3326
    nqp_get_sc_object $P3328, "1307873280.77112", 1
    .const 'Sub' $P3329 = "26_1307873286.70277" 
    $P3327."add_method"($P3328, "postcircumfix", $P3329)
    nqp_get_sc_object $P3330, "1307873280.77112", 1
    get_how $P3331, $P3330
    nqp_get_sc_object $P3332, "1307873280.77112", 1
    .const 'Sub' $P3333 = "27_1307873286.70277" 
    $P3331."add_method"($P3332, "!PREFIX__postcircumfix", $P3333)
    nqp_get_sc_object $P3334, "1307873280.77112", 1
    get_how $P3335, $P3334
    nqp_get_sc_object $P3336, "1307873280.77112", 1
    .const 'Sub' $P3337 = "28_1307873286.70277" 
    $P3335."add_method"($P3336, "term:sym<circumfix>", $P3337)
    nqp_get_sc_object $P3338, "1307873280.77112", 1
    get_how $P3339, $P3338
    nqp_get_sc_object $P3340, "1307873280.77112", 1
    .const 'Sub' $P3341 = "29_1307873286.70277" 
    $P3339."add_method"($P3340, "!PREFIX__term:sym<circumfix>", $P3341)
    nqp_get_sc_object $P3342, "1307873280.77112", 1
    get_how $P3343, $P3342
    nqp_get_sc_object $P3344, "1307873280.77112", 1
    .const 'Sub' $P3345 = "30_1307873286.70277" 
    $P3343."add_method"($P3344, "infixish", $P3345)
    nqp_get_sc_object $P3346, "1307873280.77112", 1
    get_how $P3347, $P3346
    nqp_get_sc_object $P3348, "1307873280.77112", 1
    .const 'Sub' $P3349 = "31_1307873286.70277" 
    $P3347."add_method"($P3348, "!PREFIX__infixish", $P3349)
    nqp_get_sc_object $P3350, "1307873280.77112", 1
    get_how $P3351, $P3350
    nqp_get_sc_object $P3352, "1307873280.77112", 1
    .const 'Sub' $P3353 = "32_1307873286.70277" 
    $P3351."add_method"($P3352, "prefixish", $P3353)
    nqp_get_sc_object $P3354, "1307873280.77112", 1
    get_how $P3355, $P3354
    nqp_get_sc_object $P3356, "1307873280.77112", 1
    .const 'Sub' $P3357 = "33_1307873286.70277" 
    $P3355."add_method"($P3356, "!PREFIX__prefixish", $P3357)
    nqp_get_sc_object $P3358, "1307873280.77112", 1
    get_how $P3359, $P3358
    nqp_get_sc_object $P3360, "1307873280.77112", 1
    .const 'Sub' $P3361 = "34_1307873286.70277" 
    $P3359."add_method"($P3360, "postfixish", $P3361)
    nqp_get_sc_object $P3362, "1307873280.77112", 1
    get_how $P3363, $P3362
    nqp_get_sc_object $P3364, "1307873280.77112", 1
    .const 'Sub' $P3365 = "35_1307873286.70277" 
    $P3363."add_method"($P3364, "!PREFIX__postfixish", $P3365)
    nqp_get_sc_object $P3366, "1307873280.77112", 1
    get_how $P3367, $P3366
    nqp_get_sc_object $P3368, "1307873280.77112", 1
    .const 'Sub' $P3369 = "36_1307873286.70277" 
    $P3367."add_method"($P3368, "nullterm", $P3369)
    nqp_get_sc_object $P3370, "1307873280.77112", 1
    get_how $P3371, $P3370
    nqp_get_sc_object $P3372, "1307873280.77112", 1
    .const 'Sub' $P3373 = "37_1307873286.70277" 
    $P3371."add_method"($P3372, "!PREFIX__nullterm", $P3373)
    nqp_get_sc_object $P3374, "1307873280.77112", 1
    get_how $P3375, $P3374
    nqp_get_sc_object $P3376, "1307873280.77112", 1
    .const 'Sub' $P3377 = "38_1307873286.70277" 
    $P3375."add_method"($P3376, "nullterm_alt", $P3377)
    nqp_get_sc_object $P3378, "1307873280.77112", 1
    get_how $P3379, $P3378
    nqp_get_sc_object $P3380, "1307873280.77112", 1
    .const 'Sub' $P3381 = "39_1307873286.70277" 
    $P3379."add_method"($P3380, "!PREFIX__nullterm_alt", $P3381)
    nqp_get_sc_object $P3382, "1307873280.77112", 1
    get_how $P3383, $P3382
    nqp_get_sc_object $P3384, "1307873280.77112", 1
    .const 'Sub' $P3385 = "40_1307873286.70277" 
    $P3383."add_method"($P3384, "nulltermish", $P3385)
    nqp_get_sc_object $P3386, "1307873280.77112", 1
    get_how $P3387, $P3386
    nqp_get_sc_object $P3388, "1307873280.77112", 1
    .const 'Sub' $P3389 = "41_1307873286.70277" 
    $P3387."add_method"($P3388, "quote_delimited", $P3389)
    nqp_get_sc_object $P3390, "1307873280.77112", 1
    get_how $P3391, $P3390
    nqp_get_sc_object $P3392, "1307873280.77112", 1
    .const 'Sub' $P3393 = "42_1307873286.70277" 
    $P3391."add_method"($P3392, "!PREFIX__quote_delimited", $P3393)
    nqp_get_sc_object $P3394, "1307873280.77112", 1
    get_how $P3395, $P3394
    nqp_get_sc_object $P3396, "1307873280.77112", 1
    .const 'Sub' $P3397 = "43_1307873286.70277" 
    $P3395."add_method"($P3396, "quote_atom", $P3397)
    nqp_get_sc_object $P3398, "1307873280.77112", 1
    get_how $P3399, $P3398
    nqp_get_sc_object $P3400, "1307873280.77112", 1
    .const 'Sub' $P3401 = "44_1307873286.70277" 
    $P3399."add_method"($P3400, "!PREFIX__quote_atom", $P3401)
    nqp_get_sc_object $P3402, "1307873280.77112", 1
    get_how $P3403, $P3402
    nqp_get_sc_object $P3404, "1307873280.77112", 1
    .const 'Sub' $P3405 = "45_1307873286.70277" 
    $P3403."add_method"($P3404, "decint", $P3405)
    nqp_get_sc_object $P3406, "1307873280.77112", 1
    get_how $P3407, $P3406
    nqp_get_sc_object $P3408, "1307873280.77112", 1
    .const 'Sub' $P3409 = "46_1307873286.70277" 
    $P3407."add_method"($P3408, "!PREFIX__decint", $P3409)
    nqp_get_sc_object $P3410, "1307873280.77112", 1
    get_how $P3411, $P3410
    nqp_get_sc_object $P3412, "1307873280.77112", 1
    .const 'Sub' $P3413 = "47_1307873286.70277" 
    $P3411."add_method"($P3412, "decints", $P3413)
    nqp_get_sc_object $P3414, "1307873280.77112", 1
    get_how $P3415, $P3414
    nqp_get_sc_object $P3416, "1307873280.77112", 1
    .const 'Sub' $P3417 = "48_1307873286.70277" 
    $P3415."add_method"($P3416, "!PREFIX__decints", $P3417)
    nqp_get_sc_object $P3418, "1307873280.77112", 1
    get_how $P3419, $P3418
    nqp_get_sc_object $P3420, "1307873280.77112", 1
    .const 'Sub' $P3421 = "49_1307873286.70277" 
    $P3419."add_method"($P3420, "hexint", $P3421)
    nqp_get_sc_object $P3422, "1307873280.77112", 1
    get_how $P3423, $P3422
    nqp_get_sc_object $P3424, "1307873280.77112", 1
    .const 'Sub' $P3425 = "50_1307873286.70277" 
    $P3423."add_method"($P3424, "!PREFIX__hexint", $P3425)
    nqp_get_sc_object $P3426, "1307873280.77112", 1
    get_how $P3427, $P3426
    nqp_get_sc_object $P3428, "1307873280.77112", 1
    .const 'Sub' $P3429 = "51_1307873286.70277" 
    $P3427."add_method"($P3428, "hexints", $P3429)
    nqp_get_sc_object $P3430, "1307873280.77112", 1
    get_how $P3431, $P3430
    nqp_get_sc_object $P3432, "1307873280.77112", 1
    .const 'Sub' $P3433 = "52_1307873286.70277" 
    $P3431."add_method"($P3432, "!PREFIX__hexints", $P3433)
    nqp_get_sc_object $P3434, "1307873280.77112", 1
    get_how $P3435, $P3434
    nqp_get_sc_object $P3436, "1307873280.77112", 1
    .const 'Sub' $P3437 = "53_1307873286.70277" 
    $P3435."add_method"($P3436, "octint", $P3437)
    nqp_get_sc_object $P3438, "1307873280.77112", 1
    get_how $P3439, $P3438
    nqp_get_sc_object $P3440, "1307873280.77112", 1
    .const 'Sub' $P3441 = "54_1307873286.70277" 
    $P3439."add_method"($P3440, "!PREFIX__octint", $P3441)
    nqp_get_sc_object $P3442, "1307873280.77112", 1
    get_how $P3443, $P3442
    nqp_get_sc_object $P3444, "1307873280.77112", 1
    .const 'Sub' $P3445 = "55_1307873286.70277" 
    $P3443."add_method"($P3444, "octints", $P3445)
    nqp_get_sc_object $P3446, "1307873280.77112", 1
    get_how $P3447, $P3446
    nqp_get_sc_object $P3448, "1307873280.77112", 1
    .const 'Sub' $P3449 = "56_1307873286.70277" 
    $P3447."add_method"($P3448, "!PREFIX__octints", $P3449)
    nqp_get_sc_object $P3450, "1307873280.77112", 1
    get_how $P3451, $P3450
    nqp_get_sc_object $P3452, "1307873280.77112", 1
    .const 'Sub' $P3453 = "57_1307873286.70277" 
    $P3451."add_method"($P3452, "binint", $P3453)
    nqp_get_sc_object $P3454, "1307873280.77112", 1
    get_how $P3455, $P3454
    nqp_get_sc_object $P3456, "1307873280.77112", 1
    .const 'Sub' $P3457 = "58_1307873286.70277" 
    $P3455."add_method"($P3456, "!PREFIX__binint", $P3457)
    nqp_get_sc_object $P3458, "1307873280.77112", 1
    get_how $P3459, $P3458
    nqp_get_sc_object $P3460, "1307873280.77112", 1
    .const 'Sub' $P3461 = "59_1307873286.70277" 
    $P3459."add_method"($P3460, "binints", $P3461)
    nqp_get_sc_object $P3462, "1307873280.77112", 1
    get_how $P3463, $P3462
    nqp_get_sc_object $P3464, "1307873280.77112", 1
    .const 'Sub' $P3465 = "60_1307873286.70277" 
    $P3463."add_method"($P3464, "!PREFIX__binints", $P3465)
    nqp_get_sc_object $P3466, "1307873280.77112", 1
    get_how $P3467, $P3466
    nqp_get_sc_object $P3468, "1307873280.77112", 1
    .const 'Sub' $P3469 = "61_1307873286.70277" 
    $P3467."add_method"($P3468, "integer", $P3469)
    nqp_get_sc_object $P3470, "1307873280.77112", 1
    get_how $P3471, $P3470
    nqp_get_sc_object $P3472, "1307873280.77112", 1
    .const 'Sub' $P3473 = "62_1307873286.70277" 
    $P3471."add_method"($P3472, "!PREFIX__integer", $P3473)
    nqp_get_sc_object $P3474, "1307873280.77112", 1
    get_how $P3475, $P3474
    nqp_get_sc_object $P3476, "1307873280.77112", 1
    .const 'Sub' $P3477 = "63_1307873286.70277" 
    $P3475."add_method"($P3476, "dec_number", $P3477)
    nqp_get_sc_object $P3478, "1307873280.77112", 1
    get_how $P3479, $P3478
    nqp_get_sc_object $P3480, "1307873280.77112", 1
    .const 'Sub' $P3481 = "64_1307873286.70277" 
    $P3479."add_method"($P3480, "!PREFIX__dec_number", $P3481)
    nqp_get_sc_object $P3482, "1307873280.77112", 1
    get_how $P3483, $P3482
    nqp_get_sc_object $P3484, "1307873280.77112", 1
    .const 'Sub' $P3485 = "65_1307873286.70277" 
    $P3483."add_method"($P3484, "escale", $P3485)
    nqp_get_sc_object $P3486, "1307873280.77112", 1
    get_how $P3487, $P3486
    nqp_get_sc_object $P3488, "1307873280.77112", 1
    .const 'Sub' $P3489 = "66_1307873286.70277" 
    $P3487."add_method"($P3488, "!PREFIX__escale", $P3489)
    nqp_get_sc_object $P3490, "1307873280.77112", 1
    get_how $P3491, $P3490
    nqp_get_sc_object $P3492, "1307873280.77112", 1
    .const 'Sub' $P3493 = "67_1307873286.70277" 
    $P3491."add_method"($P3492, "quote_escape", $P3493)
    nqp_get_sc_object $P3494, "1307873280.77112", 1
    get_how $P3495, $P3494
    nqp_get_sc_object $P3496, "1307873280.77112", 1
    .const 'Sub' $P3497 = "68_1307873286.70277" 
    $P3495."add_method"($P3496, "!PREFIX__quote_escape", $P3497)
    nqp_get_sc_object $P3498, "1307873280.77112", 1
    get_how $P3499, $P3498
    nqp_get_sc_object $P3500, "1307873280.77112", 1
    .const 'Sub' $P3501 = "69_1307873286.70277" 
    $P3499."add_method"($P3500, "quote_escape:sym<backslash>", $P3501)
    nqp_get_sc_object $P3502, "1307873280.77112", 1
    get_how $P3503, $P3502
    nqp_get_sc_object $P3504, "1307873280.77112", 1
    .const 'Sub' $P3505 = "70_1307873286.70277" 
    $P3503."add_method"($P3504, "!PREFIX__quote_escape:sym<backslash>", $P3505)
    nqp_get_sc_object $P3506, "1307873280.77112", 1
    get_how $P3507, $P3506
    nqp_get_sc_object $P3508, "1307873280.77112", 1
    .const 'Sub' $P3509 = "71_1307873286.70277" 
    $P3507."add_method"($P3508, "quote_escape:sym<stopper>", $P3509)
    nqp_get_sc_object $P3510, "1307873280.77112", 1
    get_how $P3511, $P3510
    nqp_get_sc_object $P3512, "1307873280.77112", 1
    .const 'Sub' $P3513 = "72_1307873286.70277" 
    $P3511."add_method"($P3512, "!PREFIX__quote_escape:sym<stopper>", $P3513)
    nqp_get_sc_object $P3514, "1307873280.77112", 1
    get_how $P3515, $P3514
    nqp_get_sc_object $P3516, "1307873280.77112", 1
    .const 'Sub' $P3517 = "73_1307873286.70277" 
    $P3515."add_method"($P3516, "quote_escape:sym<bs>", $P3517)
    nqp_get_sc_object $P3518, "1307873280.77112", 1
    get_how $P3519, $P3518
    nqp_get_sc_object $P3520, "1307873280.77112", 1
    .const 'Sub' $P3521 = "74_1307873286.70277" 
    $P3519."add_method"($P3520, "!PREFIX__quote_escape:sym<bs>", $P3521)
    nqp_get_sc_object $P3522, "1307873280.77112", 1
    get_how $P3523, $P3522
    nqp_get_sc_object $P3524, "1307873280.77112", 1
    .const 'Sub' $P3525 = "75_1307873286.70277" 
    $P3523."add_method"($P3524, "quote_escape:sym<nl>", $P3525)
    nqp_get_sc_object $P3526, "1307873280.77112", 1
    get_how $P3527, $P3526
    nqp_get_sc_object $P3528, "1307873280.77112", 1
    .const 'Sub' $P3529 = "76_1307873286.70277" 
    $P3527."add_method"($P3528, "!PREFIX__quote_escape:sym<nl>", $P3529)
    nqp_get_sc_object $P3530, "1307873280.77112", 1
    get_how $P3531, $P3530
    nqp_get_sc_object $P3532, "1307873280.77112", 1
    .const 'Sub' $P3533 = "77_1307873286.70277" 
    $P3531."add_method"($P3532, "quote_escape:sym<cr>", $P3533)
    nqp_get_sc_object $P3534, "1307873280.77112", 1
    get_how $P3535, $P3534
    nqp_get_sc_object $P3536, "1307873280.77112", 1
    .const 'Sub' $P3537 = "78_1307873286.70277" 
    $P3535."add_method"($P3536, "!PREFIX__quote_escape:sym<cr>", $P3537)
    nqp_get_sc_object $P3538, "1307873280.77112", 1
    get_how $P3539, $P3538
    nqp_get_sc_object $P3540, "1307873280.77112", 1
    .const 'Sub' $P3541 = "79_1307873286.70277" 
    $P3539."add_method"($P3540, "quote_escape:sym<tab>", $P3541)
    nqp_get_sc_object $P3542, "1307873280.77112", 1
    get_how $P3543, $P3542
    nqp_get_sc_object $P3544, "1307873280.77112", 1
    .const 'Sub' $P3545 = "80_1307873286.70277" 
    $P3543."add_method"($P3544, "!PREFIX__quote_escape:sym<tab>", $P3545)
    nqp_get_sc_object $P3546, "1307873280.77112", 1
    get_how $P3547, $P3546
    nqp_get_sc_object $P3548, "1307873280.77112", 1
    .const 'Sub' $P3549 = "81_1307873286.70277" 
    $P3547."add_method"($P3548, "quote_escape:sym<ff>", $P3549)
    nqp_get_sc_object $P3550, "1307873280.77112", 1
    get_how $P3551, $P3550
    nqp_get_sc_object $P3552, "1307873280.77112", 1
    .const 'Sub' $P3553 = "82_1307873286.70277" 
    $P3551."add_method"($P3552, "!PREFIX__quote_escape:sym<ff>", $P3553)
    nqp_get_sc_object $P3554, "1307873280.77112", 1
    get_how $P3555, $P3554
    nqp_get_sc_object $P3556, "1307873280.77112", 1
    .const 'Sub' $P3557 = "83_1307873286.70277" 
    $P3555."add_method"($P3556, "quote_escape:sym<esc>", $P3557)
    nqp_get_sc_object $P3558, "1307873280.77112", 1
    get_how $P3559, $P3558
    nqp_get_sc_object $P3560, "1307873280.77112", 1
    .const 'Sub' $P3561 = "84_1307873286.70277" 
    $P3559."add_method"($P3560, "!PREFIX__quote_escape:sym<esc>", $P3561)
    nqp_get_sc_object $P3562, "1307873280.77112", 1
    get_how $P3563, $P3562
    nqp_get_sc_object $P3564, "1307873280.77112", 1
    .const 'Sub' $P3565 = "85_1307873286.70277" 
    $P3563."add_method"($P3564, "quote_escape:sym<hex>", $P3565)
    nqp_get_sc_object $P3566, "1307873280.77112", 1
    get_how $P3567, $P3566
    nqp_get_sc_object $P3568, "1307873280.77112", 1
    .const 'Sub' $P3569 = "86_1307873286.70277" 
    $P3567."add_method"($P3568, "!PREFIX__quote_escape:sym<hex>", $P3569)
    nqp_get_sc_object $P3570, "1307873280.77112", 1
    get_how $P3571, $P3570
    nqp_get_sc_object $P3572, "1307873280.77112", 1
    .const 'Sub' $P3573 = "87_1307873286.70277" 
    $P3571."add_method"($P3572, "quote_escape:sym<oct>", $P3573)
    nqp_get_sc_object $P3574, "1307873280.77112", 1
    get_how $P3575, $P3574
    nqp_get_sc_object $P3576, "1307873280.77112", 1
    .const 'Sub' $P3577 = "88_1307873286.70277" 
    $P3575."add_method"($P3576, "!PREFIX__quote_escape:sym<oct>", $P3577)
    nqp_get_sc_object $P3578, "1307873280.77112", 1
    get_how $P3579, $P3578
    nqp_get_sc_object $P3580, "1307873280.77112", 1
    .const 'Sub' $P3581 = "89_1307873286.70277" 
    $P3579."add_method"($P3580, "quote_escape:sym<chr>", $P3581)
    nqp_get_sc_object $P3582, "1307873280.77112", 1
    get_how $P3583, $P3582
    nqp_get_sc_object $P3584, "1307873280.77112", 1
    .const 'Sub' $P3585 = "90_1307873286.70277" 
    $P3583."add_method"($P3584, "!PREFIX__quote_escape:sym<chr>", $P3585)
    nqp_get_sc_object $P3586, "1307873280.77112", 1
    get_how $P3587, $P3586
    nqp_get_sc_object $P3588, "1307873280.77112", 1
    .const 'Sub' $P3589 = "91_1307873286.70277" 
    $P3587."add_method"($P3588, "quote_escape:sym<0>", $P3589)
    nqp_get_sc_object $P3590, "1307873280.77112", 1
    get_how $P3591, $P3590
    nqp_get_sc_object $P3592, "1307873280.77112", 1
    .const 'Sub' $P3593 = "92_1307873286.70277" 
    $P3591."add_method"($P3592, "!PREFIX__quote_escape:sym<0>", $P3593)
    nqp_get_sc_object $P3594, "1307873280.77112", 1
    get_how $P3595, $P3594
    nqp_get_sc_object $P3596, "1307873280.77112", 1
    .const 'Sub' $P3597 = "93_1307873286.70277" 
    $P3595."add_method"($P3596, "quote_escape:sym<misc>", $P3597)
    nqp_get_sc_object $P3598, "1307873280.77112", 1
    get_how $P3599, $P3598
    nqp_get_sc_object $P3600, "1307873280.77112", 1
    .const 'Sub' $P3601 = "97_1307873286.70277" 
    $P3599."add_method"($P3600, "!PREFIX__quote_escape:sym<misc>", $P3601)
    nqp_get_sc_object $P3602, "1307873280.77112", 1
    get_how $P3603, $P3602
    nqp_get_sc_object $P3604, "1307873280.77112", 1
    .const 'Sub' $P3605 = "98_1307873286.70277" 
    $P3603."add_method"($P3604, "charname", $P3605)
    nqp_get_sc_object $P3606, "1307873280.77112", 1
    get_how $P3607, $P3606
    nqp_get_sc_object $P3608, "1307873280.77112", 1
    .const 'Sub' $P3609 = "100_1307873286.70277" 
    $P3607."add_method"($P3608, "!PREFIX__charname", $P3609)
    nqp_get_sc_object $P3610, "1307873280.77112", 1
    get_how $P3611, $P3610
    nqp_get_sc_object $P3612, "1307873280.77112", 1
    .const 'Sub' $P3613 = "101_1307873286.70277" 
    $P3611."add_method"($P3612, "charnames", $P3613)
    nqp_get_sc_object $P3614, "1307873280.77112", 1
    get_how $P3615, $P3614
    nqp_get_sc_object $P3616, "1307873280.77112", 1
    .const 'Sub' $P3617 = "102_1307873286.70277" 
    $P3615."add_method"($P3616, "!PREFIX__charnames", $P3617)
    nqp_get_sc_object $P3618, "1307873280.77112", 1
    get_how $P3619, $P3618
    nqp_get_sc_object $P3620, "1307873280.77112", 1
    .const 'Sub' $P3621 = "103_1307873286.70277" 
    $P3619."add_method"($P3620, "charspec", $P3621)
    nqp_get_sc_object $P3622, "1307873280.77112", 1
    get_how $P3623, $P3622
    nqp_get_sc_object $P3624, "1307873280.77112", 1
    .const 'Sub' $P3625 = "104_1307873286.70277" 
    $P3623."add_method"($P3624, "!PREFIX__charspec", $P3625)
    nqp_get_sc_object $P3626, "1307873280.77112", 1
    get_how $P3627, $P3626
    nqp_get_sc_object $P3628, "1307873280.77112", 1
    .const 'Sub' $P3629 = "105_1307873286.70277" 
    $P3627."add_method"($P3628, "O", $P3629)
    nqp_get_sc_object $P3630, "1307873280.77112", 1
    get_how $P3631, $P3630
    nqp_get_sc_object $P3632, "1307873280.77112", 1
    .const 'Sub' $P3633 = "106_1307873286.70277" 
    $P3631."add_method"($P3632, "panic", $P3633)
    nqp_get_sc_object $P3634, "1307873280.77112", 1
    get_how $P3635, $P3634
    nqp_get_sc_object $P3636, "1307873280.77112", 1
    .const 'Sub' $P3637 = "107_1307873286.70277" 
    $P3635."add_method"($P3636, "peek_delimiters", $P3637)
    nqp_get_sc_object $P3638, "1307873280.77112", 1
    get_how $P3639, $P3638
    nqp_get_sc_object $P3640, "1307873280.77112", 1
    .const 'Sub' $P3641 = "108_1307873286.70277" 
    $P3639."add_method"($P3640, "quote_EXPR", $P3641)
    nqp_get_sc_object $P3642, "1307873280.77112", 1
    get_how $P3643, $P3642
    nqp_get_sc_object $P3644, "1307873280.77112", 1
    .const 'Sub' $P3645 = "109_1307873286.70277" 
    $P3643."add_method"($P3644, "quotemod_check", $P3645)
    .const 'Sub' $P3646 = "109_1307873286.70277" 
    nqp_get_sc_object $P3647, "1307873280.77112", 1
    get_who $P3648, $P3647
    set $P3648["quotemod_check"], $P3646
    nqp_get_sc_object $P3649, "1307873280.77112", 1
    get_how $P3650, $P3649
    nqp_get_sc_object $P3651, "1307873280.77112", 1
    .const 'Sub' $P3652 = "110_1307873286.70277" 
    $P3650."add_method"($P3651, "starter", $P3652)
    nqp_get_sc_object $P3653, "1307873280.77112", 1
    get_how $P3654, $P3653
    nqp_get_sc_object $P3655, "1307873280.77112", 1
    .const 'Sub' $P3656 = "111_1307873286.70277" 
    $P3654."add_method"($P3655, "stopper", $P3656)
    nqp_get_sc_object $P3657, "1307873280.77112", 1
    get_how $P3658, $P3657
    nqp_get_sc_object $P3659, "1307873280.77112", 1
    .const 'Sub' $P3660 = "112_1307873286.70277" 
    $P3658."add_method"($P3659, "split_words", $P3660)
    .const 'Sub' $P3661 = "112_1307873286.70277" 
    nqp_get_sc_object $P3662, "1307873280.77112", 1
    get_who $P3663, $P3662
    set $P3663["split_words"], $P3661
    nqp_get_sc_object $P3664, "1307873280.77112", 1
    get_how $P3665, $P3664
    nqp_get_sc_object $P3666, "1307873280.77112", 1
    .const 'Sub' $P3667 = "113_1307873286.70277" 
    $P3665."add_method"($P3666, "EXPR", $P3667)
    nqp_get_sc_object $P3668, "1307873280.77112", 1
    get_how $P3669, $P3668
    nqp_get_sc_object $P3670, "1307873280.77112", 1
    .const 'Sub' $P3671 = "114_1307873286.70277" 
    $P3669."add_method"($P3670, "EXPR_reduce", $P3671)
    nqp_get_sc_object $P3672, "1307873280.77112", 1
    get_how $P3673, $P3672
    nqp_get_sc_object $P3674, "1307873280.77112", 1
    .const 'Sub' $P3675 = "115_1307873286.70277" 
    $P3673."add_method"($P3674, "ternary", $P3675)
    nqp_get_sc_object $P3676, "1307873280.77112", 1
    get_how $P3677, $P3676
    nqp_get_sc_object $P3678, "1307873280.77112", 1
    .const 'Sub' $P3679 = "116_1307873286.70277" 
    $P3677."add_method"($P3678, "MARKER", $P3679)
    nqp_get_sc_object $P3680, "1307873280.77112", 1
    get_how $P3681, $P3680
    nqp_get_sc_object $P3682, "1307873280.77112", 1
    .const 'Sub' $P3683 = "117_1307873286.70277" 
    $P3681."add_method"($P3682, "MARKED", $P3683)
    nqp_get_sc_object $P3684, "1307873280.77112", 1
    get_how $P3685, $P3684
    nqp_get_sc_object $P3686, "1307873280.77112", 1
    .const 'Sub' $P3687 = "118_1307873286.70277" 
    $P3685."add_method"($P3686, "LANG", $P3687)
    .const 'Sub' $P3688 = "11_1307873286.70277" 
    $P3689 = $P3688."get_lexinfo"()
    nqp_get_sc_object $P3690, "1307873280.77112", 1
    $P3689."set_static_lexpad_value"("$?PACKAGE", $P3690)
    .const 'Sub' $P3691 = "11_1307873286.70277" 
    $P3692 = $P3691."get_lexinfo"()
    $P3692."finish_static_lexpad"()
    .const 'Sub' $P3693 = "11_1307873286.70277" 
    $P3694 = $P3693."get_lexinfo"()
    nqp_get_sc_object $P3695, "1307873280.77112", 1
    $P3694."set_static_lexpad_value"("$?CLASS", $P3695)
    .const 'Sub' $P3696 = "11_1307873286.70277" 
    $P3697 = $P3696."get_lexinfo"()
    $P3697."finish_static_lexpad"()
    nqp_get_sc_object $P3698, "1307873280.77112", 1
    get_how $P3699, $P3698
    nqp_get_sc_object $P3700, "1307873280.77112", 1
    nqp_get_sc_object $P3701, "__REGEX_CORE_SC__", 0
    $P3699."set_default_parent"($P3700, $P3701)
    nqp_get_sc_object $P3702, "1307873280.77112", 1
    get_how $P3703, $P3702
    nqp_get_sc_object $P3704, "1307873280.77112", 1
    $P3703."compose"($P3704)
    nqp_get_sc_object $P3705, "1307873274.8766", 41
    $P3706 = $P3705."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3706, cur_sc
    nqp_set_sc_object "1307873280.77112", 105, $P3706
    nqp_get_sc_object $P3707, "1307873280.77112", 105
    nqp_get_sc_object $P3708, "1307873280.77112", 0
    nqp_get_package_through_who $P3709, $P3708, "HLL"
    get_who $P3710, $P3709
    set $P3710["Actions"], $P3707
    .const 'Sub' $P3711 = "120_1307873286.70277" 
    nqp_get_sc_object $P3712, "1307873280.77112", 105
    get_who $P3713, $P3712
    set $P3713["string_to_int"], $P3711
    .const 'Sub' $P3714 = "122_1307873286.70277" 
    nqp_get_sc_object $P3715, "1307873280.77112", 105
    get_who $P3716, $P3715
    set $P3716["ints_to_string"], $P3714
    nqp_get_sc_object $P3717, "1307873280.77112", 105
    get_how $P3718, $P3717
    nqp_get_sc_object $P3719, "1307873280.77112", 105
    .const 'Sub' $P3720 = "125_1307873286.70277" 
    $P3718."add_method"($P3719, "CTXSAVE", $P3720)
    nqp_get_sc_object $P3721, "1307873280.77112", 105
    get_how $P3722, $P3721
    nqp_get_sc_object $P3723, "1307873280.77112", 105
    .const 'Sub' $P3724 = "126_1307873286.70277" 
    $P3722."add_method"($P3723, "SET_BLOCK_OUTER_CTX", $P3724)
    nqp_get_sc_object $P3725, "1307873280.77112", 105
    get_how $P3726, $P3725
    nqp_get_sc_object $P3727, "1307873280.77112", 105
    .const 'Sub' $P3728 = "129_1307873286.70277" 
    $P3726."add_method"($P3727, "EXPR", $P3728)
    nqp_get_sc_object $P3729, "1307873280.77112", 105
    get_how $P3730, $P3729
    nqp_get_sc_object $P3731, "1307873280.77112", 105
    .const 'Sub' $P3732 = "132_1307873286.70277" 
    $P3730."add_method"($P3731, "term:sym<circumfix>", $P3732)
    nqp_get_sc_object $P3733, "1307873280.77112", 105
    get_how $P3734, $P3733
    nqp_get_sc_object $P3735, "1307873280.77112", 105
    .const 'Sub' $P3736 = "133_1307873286.70277" 
    $P3734."add_method"($P3735, "termish", $P3736)
    nqp_get_sc_object $P3737, "1307873280.77112", 105
    get_how $P3738, $P3737
    nqp_get_sc_object $P3739, "1307873280.77112", 105
    .const 'Sub' $P3740 = "134_1307873286.70277" 
    $P3738."add_method"($P3739, "nullterm", $P3740)
    nqp_get_sc_object $P3741, "1307873280.77112", 105
    get_how $P3742, $P3741
    nqp_get_sc_object $P3743, "1307873280.77112", 105
    .const 'Sub' $P3744 = "135_1307873286.70277" 
    $P3742."add_method"($P3743, "nullterm_alt", $P3744)
    nqp_get_sc_object $P3745, "1307873280.77112", 105
    get_how $P3746, $P3745
    nqp_get_sc_object $P3747, "1307873280.77112", 105
    .const 'Sub' $P3748 = "136_1307873286.70277" 
    $P3746."add_method"($P3747, "integer", $P3748)
    nqp_get_sc_object $P3749, "1307873280.77112", 105
    get_how $P3750, $P3749
    nqp_get_sc_object $P3751, "1307873280.77112", 105
    .const 'Sub' $P3752 = "137_1307873286.70277" 
    $P3750."add_method"($P3751, "dec_number", $P3752)
    nqp_get_sc_object $P3753, "1307873280.77112", 105
    get_how $P3754, $P3753
    nqp_get_sc_object $P3755, "1307873280.77112", 105
    .const 'Sub' $P3756 = "138_1307873286.70277" 
    $P3754."add_method"($P3755, "decint", $P3756)
    nqp_get_sc_object $P3757, "1307873280.77112", 105
    get_how $P3758, $P3757
    nqp_get_sc_object $P3759, "1307873280.77112", 105
    .const 'Sub' $P3760 = "139_1307873286.70277" 
    $P3758."add_method"($P3759, "hexint", $P3760)
    nqp_get_sc_object $P3761, "1307873280.77112", 105
    get_how $P3762, $P3761
    nqp_get_sc_object $P3763, "1307873280.77112", 105
    .const 'Sub' $P3764 = "140_1307873286.70277" 
    $P3762."add_method"($P3763, "octint", $P3764)
    nqp_get_sc_object $P3765, "1307873280.77112", 105
    get_how $P3766, $P3765
    nqp_get_sc_object $P3767, "1307873280.77112", 105
    .const 'Sub' $P3768 = "141_1307873286.70277" 
    $P3766."add_method"($P3767, "binint", $P3768)
    nqp_get_sc_object $P3769, "1307873280.77112", 105
    get_how $P3770, $P3769
    nqp_get_sc_object $P3771, "1307873280.77112", 105
    .const 'Sub' $P3772 = "142_1307873286.70277" 
    $P3770."add_method"($P3771, "quote_EXPR", $P3772)
    nqp_get_sc_object $P3773, "1307873280.77112", 105
    get_how $P3774, $P3773
    nqp_get_sc_object $P3775, "1307873280.77112", 105
    .const 'Sub' $P3776 = "145_1307873286.70277" 
    $P3774."add_method"($P3775, "quote_delimited", $P3776)
    nqp_get_sc_object $P3777, "1307873280.77112", 105
    get_how $P3778, $P3777
    nqp_get_sc_object $P3779, "1307873280.77112", 105
    .const 'Sub' $P3780 = "147_1307873286.70277" 
    $P3778."add_method"($P3779, "quote_atom", $P3780)
    nqp_get_sc_object $P3781, "1307873280.77112", 105
    get_how $P3782, $P3781
    nqp_get_sc_object $P3783, "1307873280.77112", 105
    .const 'Sub' $P3784 = "148_1307873286.70277" 
    $P3782."add_method"($P3783, "quote_escape:sym<backslash>", $P3784)
    nqp_get_sc_object $P3785, "1307873280.77112", 105
    get_how $P3786, $P3785
    nqp_get_sc_object $P3787, "1307873280.77112", 105
    .const 'Sub' $P3788 = "149_1307873286.70277" 
    $P3786."add_method"($P3787, "quote_escape:sym<stopper>", $P3788)
    nqp_get_sc_object $P3789, "1307873280.77112", 105
    get_how $P3790, $P3789
    nqp_get_sc_object $P3791, "1307873280.77112", 105
    .const 'Sub' $P3792 = "150_1307873286.70277" 
    $P3790."add_method"($P3791, "quote_escape:sym<bs>", $P3792)
    nqp_get_sc_object $P3793, "1307873280.77112", 105
    get_how $P3794, $P3793
    nqp_get_sc_object $P3795, "1307873280.77112", 105
    .const 'Sub' $P3796 = "151_1307873286.70277" 
    $P3794."add_method"($P3795, "quote_escape:sym<nl>", $P3796)
    nqp_get_sc_object $P3797, "1307873280.77112", 105
    get_how $P3798, $P3797
    nqp_get_sc_object $P3799, "1307873280.77112", 105
    .const 'Sub' $P3800 = "152_1307873286.70277" 
    $P3798."add_method"($P3799, "quote_escape:sym<cr>", $P3800)
    nqp_get_sc_object $P3801, "1307873280.77112", 105
    get_how $P3802, $P3801
    nqp_get_sc_object $P3803, "1307873280.77112", 105
    .const 'Sub' $P3804 = "153_1307873286.70277" 
    $P3802."add_method"($P3803, "quote_escape:sym<tab>", $P3804)
    nqp_get_sc_object $P3805, "1307873280.77112", 105
    get_how $P3806, $P3805
    nqp_get_sc_object $P3807, "1307873280.77112", 105
    .const 'Sub' $P3808 = "154_1307873286.70277" 
    $P3806."add_method"($P3807, "quote_escape:sym<ff>", $P3808)
    nqp_get_sc_object $P3809, "1307873280.77112", 105
    get_how $P3810, $P3809
    nqp_get_sc_object $P3811, "1307873280.77112", 105
    .const 'Sub' $P3812 = "155_1307873286.70277" 
    $P3810."add_method"($P3811, "quote_escape:sym<esc>", $P3812)
    nqp_get_sc_object $P3813, "1307873280.77112", 105
    get_how $P3814, $P3813
    nqp_get_sc_object $P3815, "1307873280.77112", 105
    .const 'Sub' $P3816 = "156_1307873286.70277" 
    $P3814."add_method"($P3815, "quote_escape:sym<hex>", $P3816)
    nqp_get_sc_object $P3817, "1307873280.77112", 105
    get_how $P3818, $P3817
    nqp_get_sc_object $P3819, "1307873280.77112", 105
    .const 'Sub' $P3820 = "157_1307873286.70277" 
    $P3818."add_method"($P3819, "quote_escape:sym<oct>", $P3820)
    nqp_get_sc_object $P3821, "1307873280.77112", 105
    get_how $P3822, $P3821
    nqp_get_sc_object $P3823, "1307873280.77112", 105
    .const 'Sub' $P3824 = "158_1307873286.70277" 
    $P3822."add_method"($P3823, "quote_escape:sym<chr>", $P3824)
    nqp_get_sc_object $P3825, "1307873280.77112", 105
    get_how $P3826, $P3825
    nqp_get_sc_object $P3827, "1307873280.77112", 105
    .const 'Sub' $P3828 = "159_1307873286.70277" 
    $P3826."add_method"($P3827, "quote_escape:sym<0>", $P3828)
    nqp_get_sc_object $P3829, "1307873280.77112", 105
    get_how $P3830, $P3829
    nqp_get_sc_object $P3831, "1307873280.77112", 105
    .const 'Sub' $P3832 = "160_1307873286.70277" 
    $P3830."add_method"($P3831, "quote_escape:sym<misc>", $P3832)
    nqp_get_sc_object $P3833, "1307873280.77112", 105
    get_how $P3834, $P3833
    nqp_get_sc_object $P3835, "1307873280.77112", 105
    .const 'Sub' $P3836 = "161_1307873286.70277" 
    $P3834."add_method"($P3835, "charname", $P3836)
    nqp_get_sc_object $P3837, "1307873280.77112", 105
    get_how $P3838, $P3837
    nqp_get_sc_object $P3839, "1307873280.77112", 105
    .const 'Sub' $P3840 = "162_1307873286.70277" 
    $P3838."add_method"($P3839, "charnames", $P3840)
    nqp_get_sc_object $P3841, "1307873280.77112", 105
    get_how $P3842, $P3841
    nqp_get_sc_object $P3843, "1307873280.77112", 105
    .const 'Sub' $P3844 = "164_1307873286.70277" 
    $P3842."add_method"($P3843, "charspec", $P3844)
    .const 'Sub' $P3845 = "119_1307873286.70277" 
    $P3846 = $P3845."get_lexinfo"()
    nqp_get_sc_object $P3847, "1307873280.77112", 105
    $P3846."set_static_lexpad_value"("$?PACKAGE", $P3847)
    .const 'Sub' $P3848 = "119_1307873286.70277" 
    $P3849 = $P3848."get_lexinfo"()
    $P3849."finish_static_lexpad"()
    .const 'Sub' $P3850 = "119_1307873286.70277" 
    $P3851 = $P3850."get_lexinfo"()
    nqp_get_sc_object $P3852, "1307873280.77112", 105
    $P3851."set_static_lexpad_value"("$?CLASS", $P3852)
    .const 'Sub' $P3853 = "119_1307873286.70277" 
    $P3854 = $P3853."get_lexinfo"()
    $P3854."finish_static_lexpad"()
    nqp_get_sc_object $P3855, "1307873280.77112", 105
    get_how $P3856, $P3855
    nqp_get_sc_object $P3857, "1307873280.77112", 105
    nqp_get_sc_object $P3858, "1307873279.6478", 5
    $P3856."set_default_parent"($P3857, $P3858)
    nqp_get_sc_object $P3859, "1307873280.77112", 105
    get_how $P3860, $P3859
    nqp_get_sc_object $P3861, "1307873280.77112", 105
    $P3860."compose"($P3861)
    nqp_get_sc_object $P3862, "1307873274.8766", 41
    $P3863 = $P3862."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3863, cur_sc
    nqp_set_sc_object "1307873280.77112", 138, $P3863
    nqp_get_sc_object $P3864, "1307873280.77112", 138
    nqp_get_sc_object $P3865, "1307873280.77112", 0
    nqp_get_package_through_who $P3866, $P3865, "HLL"
    get_who $P3867, $P3866
    set $P3867["Compiler"], $P3864
    nqp_get_sc_object $P3868, "1307873280.77112", 138
    get_how $P3869, $P3868
    nqp_get_sc_object $P3870, "1307873280.77112", 138
    nqp_get_sc_object $P3871, "1307873274.8766", 80
    $P3872 = $P3871."new"("@!stages" :named("name"))
    $P3869."add_attribute"($P3870, $P3872)
    nqp_get_sc_object $P3873, "1307873280.77112", 138
    get_how $P3874, $P3873
    nqp_get_sc_object $P3875, "1307873280.77112", 138
    nqp_get_sc_object $P3876, "1307873274.8766", 80
    $P3877 = $P3876."new"("$!parsegrammar" :named("name"))
    $P3874."add_attribute"($P3875, $P3877)
    nqp_get_sc_object $P3878, "1307873280.77112", 138
    get_how $P3879, $P3878
    nqp_get_sc_object $P3880, "1307873280.77112", 138
    nqp_get_sc_object $P3881, "1307873274.8766", 80
    $P3882 = $P3881."new"("$!parseactions" :named("name"))
    $P3879."add_attribute"($P3880, $P3882)
    nqp_get_sc_object $P3883, "1307873280.77112", 138
    get_how $P3884, $P3883
    nqp_get_sc_object $P3885, "1307873280.77112", 138
    nqp_get_sc_object $P3886, "1307873274.8766", 80
    $P3887 = $P3886."new"("$!astgrammar" :named("name"))
    $P3884."add_attribute"($P3885, $P3887)
    nqp_get_sc_object $P3888, "1307873280.77112", 138
    get_how $P3889, $P3888
    nqp_get_sc_object $P3890, "1307873280.77112", 138
    nqp_get_sc_object $P3891, "1307873274.8766", 80
    $P3892 = $P3891."new"("$!commandline_banner" :named("name"))
    $P3889."add_attribute"($P3890, $P3892)
    nqp_get_sc_object $P3893, "1307873280.77112", 138
    get_how $P3894, $P3893
    nqp_get_sc_object $P3895, "1307873280.77112", 138
    nqp_get_sc_object $P3896, "1307873274.8766", 80
    $P3897 = $P3896."new"("$!commandline_prompt" :named("name"))
    $P3894."add_attribute"($P3895, $P3897)
    nqp_get_sc_object $P3898, "1307873280.77112", 138
    get_how $P3899, $P3898
    nqp_get_sc_object $P3900, "1307873280.77112", 138
    nqp_get_sc_object $P3901, "1307873274.8766", 80
    $P3902 = $P3901."new"("@!cmdoptions" :named("name"))
    $P3899."add_attribute"($P3900, $P3902)
    nqp_get_sc_object $P3903, "1307873280.77112", 138
    get_how $P3904, $P3903
    nqp_get_sc_object $P3905, "1307873280.77112", 138
    nqp_get_sc_object $P3906, "1307873274.8766", 80
    $P3907 = $P3906."new"("$!usage" :named("name"))
    $P3904."add_attribute"($P3905, $P3907)
    nqp_get_sc_object $P3908, "1307873280.77112", 138
    get_how $P3909, $P3908
    nqp_get_sc_object $P3910, "1307873280.77112", 138
    nqp_get_sc_object $P3911, "1307873274.8766", 80
    $P3912 = $P3911."new"("$!compiler_progname" :named("name"))
    $P3909."add_attribute"($P3910, $P3912)
    nqp_get_sc_object $P3913, "1307873280.77112", 138
    get_how $P3914, $P3913
    nqp_get_sc_object $P3915, "1307873280.77112", 138
    nqp_get_sc_object $P3916, "1307873274.8766", 80
    $P3917 = $P3916."new"("$!language" :named("name"))
    $P3914."add_attribute"($P3915, $P3917)
    nqp_get_sc_object $P3918, "1307873280.77112", 138
    get_how $P3919, $P3918
    nqp_get_sc_object $P3920, "1307873280.77112", 138
    nqp_get_sc_object $P3921, "1307873274.8766", 80
    $P3922 = $P3921."new"("%!config" :named("name"))
    $P3919."add_attribute"($P3920, $P3922)
    nqp_get_sc_object $P3923, "1307873280.77112", 138
    get_how $P3924, $P3923
    nqp_get_sc_object $P3925, "1307873280.77112", 138
    .const 'Sub' $P3926 = "168_1307873286.70277" 
    $P3924."add_method"($P3925, "new", $P3926)
    nqp_get_sc_object $P3927, "1307873280.77112", 138
    get_how $P3928, $P3927
    nqp_get_sc_object $P3929, "1307873280.77112", 138
    .const 'Sub' $P3930 = "169_1307873286.70277" 
    $P3928."add_method"($P3929, "BUILD", $P3930)
    nqp_get_sc_object $P3931, "1307873280.77112", 138
    get_how $P3932, $P3931
    nqp_get_sc_object $P3933, "1307873280.77112", 138
    .const 'Sub' $P3934 = "171_1307873286.70277" 
    $P3932."add_method"($P3933, "get_exports", $P3934)
    nqp_get_sc_object $P3935, "1307873280.77112", 138
    get_how $P3936, $P3935
    nqp_get_sc_object $P3937, "1307873280.77112", 138
    .const 'Sub' $P3938 = "174_1307873286.70277" 
    $P3936."add_method"($P3937, "get_module", $P3938)
    nqp_get_sc_object $P3939, "1307873280.77112", 138
    get_how $P3940, $P3939
    nqp_get_sc_object $P3941, "1307873280.77112", 138
    .const 'Sub' $P3942 = "175_1307873286.70277" 
    $P3940."add_method"($P3941, "language", $P3942)
    nqp_get_sc_object $P3943, "1307873280.77112", 138
    get_how $P3944, $P3943
    nqp_get_sc_object $P3945, "1307873280.77112", 138
    .const 'Sub' $P3946 = "176_1307873286.70277" 
    $P3944."add_method"($P3945, "compiler", $P3946)
    nqp_get_sc_object $P3947, "1307873280.77112", 138
    get_how $P3948, $P3947
    nqp_get_sc_object $P3949, "1307873280.77112", 138
    .const 'Sub' $P3950 = "177_1307873286.70277" 
    $P3948."add_method"($P3949, "config", $P3950)
    nqp_get_sc_object $P3951, "1307873280.77112", 138
    get_how $P3952, $P3951
    nqp_get_sc_object $P3953, "1307873280.77112", 138
    .const 'Sub' $P3954 = "178_1307873286.70277" 
    $P3952."add_method"($P3953, "load_module", $P3954)
    nqp_get_sc_object $P3955, "1307873280.77112", 138
    get_how $P3956, $P3955
    nqp_get_sc_object $P3957, "1307873280.77112", 138
    .const 'Sub' $P3958 = "180_1307873286.70277" 
    $P3956."add_method"($P3957, "import", $P3958)
    nqp_get_sc_object $P3959, "1307873280.77112", 138
    get_how $P3960, $P3959
    nqp_get_sc_object $P3961, "1307873280.77112", 138
    .const 'Sub' $P3962 = "185_1307873286.70277" 
    $P3960."add_method"($P3961, "autoprint", $P3962)
    nqp_get_sc_object $P3963, "1307873280.77112", 138
    get_how $P3964, $P3963
    nqp_get_sc_object $P3965, "1307873280.77112", 138
    .const 'Sub' $P3966 = "186_1307873286.70277" 
    $P3964."add_method"($P3965, "interactive", $P3966)
    nqp_get_sc_object $P3967, "1307873280.77112", 138
    get_how $P3968, $P3967
    nqp_get_sc_object $P3969, "1307873280.77112", 138
    .const 'Sub' $P3970 = "193_1307873286.70277" 
    $P3968."add_method"($P3969, "eval", $P3970)
    nqp_get_sc_object $P3971, "1307873280.77112", 138
    get_how $P3972, $P3971
    nqp_get_sc_object $P3973, "1307873280.77112", 138
    .const 'Sub' $P3974 = "195_1307873286.70277" 
    $P3972."add_method"($P3973, "ctxsave", $P3974)
    nqp_get_sc_object $P3975, "1307873280.77112", 138
    get_how $P3976, $P3975
    nqp_get_sc_object $P3977, "1307873280.77112", 138
    .const 'Sub' $P3978 = "196_1307873286.70277" 
    $P3976."add_method"($P3977, "panic", $P3978)
    nqp_get_sc_object $P3979, "1307873280.77112", 138
    get_how $P3980, $P3979
    nqp_get_sc_object $P3981, "1307873280.77112", 138
    .const 'Sub' $P3982 = "197_1307873286.70277" 
    $P3980."add_method"($P3981, "stages", $P3982)
    nqp_get_sc_object $P3983, "1307873280.77112", 138
    get_how $P3984, $P3983
    nqp_get_sc_object $P3985, "1307873280.77112", 138
    .const 'Sub' $P3986 = "198_1307873286.70277" 
    $P3984."add_method"($P3985, "parsegrammar", $P3986)
    nqp_get_sc_object $P3987, "1307873280.77112", 138
    get_how $P3988, $P3987
    nqp_get_sc_object $P3989, "1307873280.77112", 138
    .const 'Sub' $P3990 = "199_1307873286.70277" 
    $P3988."add_method"($P3989, "parseactions", $P3990)
    nqp_get_sc_object $P3991, "1307873280.77112", 138
    get_how $P3992, $P3991
    nqp_get_sc_object $P3993, "1307873280.77112", 138
    .const 'Sub' $P3994 = "200_1307873286.70277" 
    $P3992."add_method"($P3993, "astgrammar", $P3994)
    nqp_get_sc_object $P3995, "1307873280.77112", 138
    get_how $P3996, $P3995
    nqp_get_sc_object $P3997, "1307873280.77112", 138
    .const 'Sub' $P3998 = "201_1307873286.70277" 
    $P3996."add_method"($P3997, "commandline_banner", $P3998)
    nqp_get_sc_object $P3999, "1307873280.77112", 138
    get_how $P4000, $P3999
    nqp_get_sc_object $P4001, "1307873280.77112", 138
    .const 'Sub' $P4002 = "202_1307873286.70277" 
    $P4000."add_method"($P4001, "commandline_prompt", $P4002)
    nqp_get_sc_object $P4003, "1307873280.77112", 138
    get_how $P4004, $P4003
    nqp_get_sc_object $P4005, "1307873280.77112", 138
    .const 'Sub' $P4006 = "203_1307873286.70277" 
    $P4004."add_method"($P4005, "compiler_progname", $P4006)
    nqp_get_sc_object $P4007, "1307873280.77112", 138
    get_how $P4008, $P4007
    nqp_get_sc_object $P4009, "1307873280.77112", 138
    .const 'Sub' $P4010 = "204_1307873286.70277" 
    $P4008."add_method"($P4009, "commandline_options", $P4010)
    nqp_get_sc_object $P4011, "1307873280.77112", 138
    get_how $P4012, $P4011
    nqp_get_sc_object $P4013, "1307873280.77112", 138
    .const 'Sub' $P4014 = "205_1307873286.70277" 
    $P4012."add_method"($P4013, "command_line", $P4014)
    nqp_get_sc_object $P4015, "1307873280.77112", 138
    get_how $P4016, $P4015
    nqp_get_sc_object $P4017, "1307873280.77112", 138
    .const 'Sub' $P4018 = "207_1307873286.70277" 
    $P4016."add_method"($P4017, "process_args", $P4018)
    nqp_get_sc_object $P4019, "1307873280.77112", 138
    get_how $P4020, $P4019
    nqp_get_sc_object $P4021, "1307873280.77112", 138
    .const 'Sub' $P4022 = "210_1307873286.70277" 
    $P4020."add_method"($P4021, "evalfiles", $P4022)
    nqp_get_sc_object $P4023, "1307873280.77112", 138
    get_how $P4024, $P4023
    nqp_get_sc_object $P4025, "1307873280.77112", 138
    .const 'Sub' $P4026 = "214_1307873286.70277" 
    $P4024."add_method"($P4025, "compile", $P4026)
    nqp_get_sc_object $P4027, "1307873280.77112", 138
    get_how $P4028, $P4027
    nqp_get_sc_object $P4029, "1307873280.77112", 138
    .const 'Sub' $P4030 = "216_1307873286.70277" 
    $P4028."add_method"($P4029, "parse", $P4030)
    nqp_get_sc_object $P4031, "1307873280.77112", 138
    get_how $P4032, $P4031
    nqp_get_sc_object $P4033, "1307873280.77112", 138
    .const 'Sub' $P4034 = "219_1307873286.70277" 
    $P4032."add_method"($P4033, "past", $P4034)
    nqp_get_sc_object $P4035, "1307873280.77112", 138
    get_how $P4036, $P4035
    nqp_get_sc_object $P4037, "1307873280.77112", 138
    .const 'Sub' $P4038 = "220_1307873286.70277" 
    $P4036."add_method"($P4037, "post", $P4038)
    nqp_get_sc_object $P4039, "1307873280.77112", 138
    get_how $P4040, $P4039
    nqp_get_sc_object $P4041, "1307873280.77112", 138
    .const 'Sub' $P4042 = "221_1307873286.70277" 
    $P4040."add_method"($P4041, "pirbegin", $P4042)
    nqp_get_sc_object $P4043, "1307873280.77112", 138
    get_how $P4044, $P4043
    nqp_get_sc_object $P4045, "1307873280.77112", 138
    .const 'Sub' $P4046 = "222_1307873286.70277" 
    $P4044."add_method"($P4045, "pir", $P4046)
    nqp_get_sc_object $P4047, "1307873280.77112", 138
    get_how $P4048, $P4047
    nqp_get_sc_object $P4049, "1307873280.77112", 138
    .const 'Sub' $P4050 = "223_1307873286.70277" 
    $P4048."add_method"($P4049, "evalpmc", $P4050)
    nqp_get_sc_object $P4051, "1307873280.77112", 138
    get_how $P4052, $P4051
    nqp_get_sc_object $P4053, "1307873280.77112", 138
    .const 'Sub' $P4054 = "224_1307873286.70277" 
    $P4052."add_method"($P4053, "dumper", $P4054)
    nqp_get_sc_object $P4055, "1307873280.77112", 138
    get_how $P4056, $P4055
    nqp_get_sc_object $P4057, "1307873280.77112", 138
    .const 'Sub' $P4058 = "226_1307873286.70277" 
    $P4056."add_method"($P4057, "usage", $P4058)
    nqp_get_sc_object $P4059, "1307873280.77112", 138
    get_how $P4060, $P4059
    nqp_get_sc_object $P4061, "1307873280.77112", 138
    .const 'Sub' $P4062 = "227_1307873286.70277" 
    $P4060."add_method"($P4061, "version", $P4062)
    nqp_get_sc_object $P4063, "1307873280.77112", 138
    get_how $P4064, $P4063
    nqp_get_sc_object $P4065, "1307873280.77112", 138
    .const 'Sub' $P4066 = "228_1307873286.70277" 
    $P4064."add_method"($P4065, "show-config", $P4066)
    nqp_get_sc_object $P4067, "1307873280.77112", 138
    get_how $P4068, $P4067
    nqp_get_sc_object $P4069, "1307873280.77112", 138
    .const 'Sub' $P4070 = "231_1307873286.70277" 
    $P4068."add_method"($P4069, "removestage", $P4070)
    nqp_get_sc_object $P4071, "1307873280.77112", 138
    get_how $P4072, $P4071
    nqp_get_sc_object $P4073, "1307873280.77112", 138
    .const 'Sub' $P4074 = "233_1307873286.70277" 
    $P4072."add_method"($P4073, "addstage", $P4074)
    nqp_get_sc_object $P4075, "1307873280.77112", 138
    get_how $P4076, $P4075
    nqp_get_sc_object $P4077, "1307873280.77112", 138
    .const 'Sub' $P4078 = "236_1307873286.70277" 
    $P4076."add_method"($P4077, "parse_name", $P4078)
    nqp_get_sc_object $P4079, "1307873280.77112", 138
    get_how $P4080, $P4079
    nqp_get_sc_object $P4081, "1307873280.77112", 138
    .const 'Sub' $P4082 = "238_1307873286.70277" 
    $P4080."add_method"($P4081, "lineof", $P4082)
    .const 'Sub' $P4083 = "165_1307873286.70277" 
    $P4084 = $P4083."get_lexinfo"()
    nqp_get_sc_object $P4085, "1307873280.77112", 138
    $P4084."set_static_lexpad_value"("$?PACKAGE", $P4085)
    .const 'Sub' $P4086 = "165_1307873286.70277" 
    $P4087 = $P4086."get_lexinfo"()
    $P4087."finish_static_lexpad"()
    .const 'Sub' $P4088 = "165_1307873286.70277" 
    $P4089 = $P4088."get_lexinfo"()
    nqp_get_sc_object $P4090, "1307873280.77112", 138
    $P4089."set_static_lexpad_value"("$?CLASS", $P4090)
    .const 'Sub' $P4091 = "165_1307873286.70277" 
    $P4092 = $P4091."get_lexinfo"()
    $P4092."finish_static_lexpad"()
    nqp_get_sc_object $P4093, "1307873280.77112", 138
    get_how $P4094, $P4093
    nqp_get_sc_object $P4095, "1307873280.77112", 138
    nqp_get_sc_object $P4096, "1307873279.6478", 5
    $P4094."set_default_parent"($P4095, $P4096)
    nqp_get_sc_object $P4097, "1307873280.77112", 138
    get_how $P4098, $P4097
    nqp_get_sc_object $P4099, "1307873280.77112", 138
    $P4098."compose"($P4099)
    nqp_get_sc_object $P4100, "1307873274.8766", 41
    $P4101 = $P4100."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4101, cur_sc
    nqp_set_sc_object "1307873280.77112", 179, $P4101
    nqp_get_sc_object $P4102, "1307873280.77112", 179
    nqp_get_sc_object $P4103, "1307873280.77112", 0
    nqp_get_package_through_who $P4104, $P4103, "HLL"
    nqp_get_package_through_who $P4105, $P4104, "CommandLine"
    get_who $P4106, $P4105
    set $P4106["Result"], $P4102
    nqp_get_sc_object $P4107, "1307873280.77112", 179
    get_how $P4108, $P4107
    nqp_get_sc_object $P4109, "1307873280.77112", 179
    nqp_get_sc_object $P4110, "1307873274.8766", 80
    $P4111 = $P4110."new"("@!arguments" :named("name"))
    $P4108."add_attribute"($P4109, $P4111)
    nqp_get_sc_object $P4112, "1307873280.77112", 179
    get_how $P4113, $P4112
    nqp_get_sc_object $P4114, "1307873280.77112", 179
    nqp_get_sc_object $P4115, "1307873274.8766", 80
    $P4116 = $P4115."new"("%!options" :named("name"))
    $P4113."add_attribute"($P4114, $P4116)
    nqp_get_sc_object $P4117, "1307873280.77112", 179
    get_how $P4118, $P4117
    nqp_get_sc_object $P4119, "1307873280.77112", 179
    .const 'Sub' $P4120 = "240_1307873286.70277" 
    $P4118."add_method"($P4119, "init", $P4120)
    nqp_get_sc_object $P4121, "1307873280.77112", 179
    get_how $P4122, $P4121
    nqp_get_sc_object $P4123, "1307873280.77112", 179
    .const 'Sub' $P4124 = "241_1307873286.70277" 
    $P4122."add_method"($P4123, "arguments", $P4124)
    nqp_get_sc_object $P4125, "1307873280.77112", 179
    get_how $P4126, $P4125
    nqp_get_sc_object $P4127, "1307873280.77112", 179
    .const 'Sub' $P4128 = "242_1307873286.70277" 
    $P4126."add_method"($P4127, "options", $P4128)
    nqp_get_sc_object $P4129, "1307873280.77112", 179
    get_how $P4130, $P4129
    nqp_get_sc_object $P4131, "1307873280.77112", 179
    .const 'Sub' $P4132 = "243_1307873286.70277" 
    $P4130."add_method"($P4131, "add-argument", $P4132)
    nqp_get_sc_object $P4133, "1307873280.77112", 179
    get_how $P4134, $P4133
    nqp_get_sc_object $P4135, "1307873280.77112", 179
    .const 'Sub' $P4136 = "244_1307873286.70277" 
    $P4134."add_method"($P4135, "add-option", $P4136)
    .const 'Sub' $P4137 = "239_1307873286.70277" 
    $P4138 = $P4137."get_lexinfo"()
    nqp_get_sc_object $P4139, "1307873280.77112", 179
    $P4138."set_static_lexpad_value"("$?PACKAGE", $P4139)
    .const 'Sub' $P4140 = "239_1307873286.70277" 
    $P4141 = $P4140."get_lexinfo"()
    $P4141."finish_static_lexpad"()
    .const 'Sub' $P4142 = "239_1307873286.70277" 
    $P4143 = $P4142."get_lexinfo"()
    nqp_get_sc_object $P4144, "1307873280.77112", 179
    $P4143."set_static_lexpad_value"("$?CLASS", $P4144)
    .const 'Sub' $P4145 = "239_1307873286.70277" 
    $P4146 = $P4145."get_lexinfo"()
    $P4146."finish_static_lexpad"()
    nqp_get_sc_object $P4147, "1307873280.77112", 179
    get_how $P4148, $P4147
    nqp_get_sc_object $P4149, "1307873280.77112", 179
    nqp_get_sc_object $P4150, "1307873279.6478", 5
    $P4148."set_default_parent"($P4149, $P4150)
    nqp_get_sc_object $P4151, "1307873280.77112", 179
    get_how $P4152, $P4151
    nqp_get_sc_object $P4153, "1307873280.77112", 179
    $P4152."compose"($P4153)
    nqp_get_sc_object $P4154, "1307873274.8766", 41
    $P4155 = $P4154."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4155, cur_sc
    nqp_set_sc_object "1307873280.77112", 185, $P4155
    nqp_get_sc_object $P4156, "1307873280.77112", 185
    nqp_get_sc_object $P4157, "1307873280.77112", 0
    nqp_get_package_through_who $P4158, $P4157, "HLL"
    nqp_get_package_through_who $P4159, $P4158, "CommandLine"
    get_who $P4160, $P4159
    set $P4160["Parser"], $P4156
    nqp_get_sc_object $P4161, "1307873280.77112", 185
    get_how $P4162, $P4161
    nqp_get_sc_object $P4163, "1307873280.77112", 185
    nqp_get_sc_object $P4164, "1307873274.8766", 80
    $P4165 = $P4164."new"("@!specs" :named("name"))
    $P4162."add_attribute"($P4163, $P4165)
    nqp_get_sc_object $P4166, "1307873280.77112", 185
    get_how $P4167, $P4166
    nqp_get_sc_object $P4168, "1307873280.77112", 185
    nqp_get_sc_object $P4169, "1307873274.8766", 80
    $P4170 = $P4169."new"("%!options" :named("name"))
    $P4167."add_attribute"($P4168, $P4170)
    nqp_get_sc_object $P4171, "1307873280.77112", 185
    get_how $P4172, $P4171
    nqp_get_sc_object $P4173, "1307873280.77112", 185
    nqp_get_sc_object $P4174, "1307873274.8766", 80
    $P4175 = $P4174."new"("%!stopper" :named("name"))
    $P4172."add_attribute"($P4173, $P4175)
    nqp_get_sc_object $P4176, "1307873280.77112", 185
    get_how $P4177, $P4176
    nqp_get_sc_object $P4178, "1307873280.77112", 185
    nqp_get_sc_object $P4179, "1307873274.8766", 80
    $P4180 = $P4179."new"("$!stop-after-first-arg" :named("name"))
    $P4177."add_attribute"($P4178, $P4180)
    nqp_get_sc_object $P4181, "1307873280.77112", 185
    get_how $P4182, $P4181
    nqp_get_sc_object $P4183, "1307873280.77112", 185
    .const 'Sub' $P4184 = "247_1307873286.70277" 
    $P4182."add_method"($P4183, "new", $P4184)
    nqp_get_sc_object $P4185, "1307873280.77112", 185
    get_how $P4186, $P4185
    nqp_get_sc_object $P4187, "1307873280.77112", 185
    .const 'Sub' $P4188 = "248_1307873286.70277" 
    $P4186."add_method"($P4187, "stop-after-first-arg", $P4188)
    nqp_get_sc_object $P4189, "1307873280.77112", 185
    get_how $P4190, $P4189
    nqp_get_sc_object $P4191, "1307873280.77112", 185
    .const 'Sub' $P4192 = "249_1307873286.70277" 
    $P4190."add_method"($P4191, "BUILD", $P4192)
    nqp_get_sc_object $P4193, "1307873280.77112", 185
    get_how $P4194, $P4193
    nqp_get_sc_object $P4195, "1307873280.77112", 185
    .const 'Sub' $P4196 = "251_1307873286.70277" 
    $P4194."add_method"($P4195, "add-stopper", $P4196)
    nqp_get_sc_object $P4197, "1307873280.77112", 185
    get_how $P4198, $P4197
    nqp_get_sc_object $P4199, "1307873280.77112", 185
    .const 'Sub' $P4200 = "252_1307873286.70277" 
    $P4198."add_method"($P4199, "split-option-aliases", $P4200)
    nqp_get_sc_object $P4201, "1307873280.77112", 185
    get_how $P4202, $P4201
    nqp_get_sc_object $P4203, "1307873280.77112", 185
    .const 'Sub' $P4204 = "253_1307873286.70277" 
    $P4202."add_method"($P4203, "add-spec", $P4204)
    nqp_get_sc_object $P4205, "1307873280.77112", 185
    get_how $P4206, $P4205
    nqp_get_sc_object $P4207, "1307873280.77112", 185
    .const 'Sub' $P4208 = "255_1307873286.70277" 
    $P4206."add_method"($P4207, "is-option", $P4208)
    nqp_get_sc_object $P4209, "1307873280.77112", 185
    get_how $P4210, $P4209
    nqp_get_sc_object $P4211, "1307873280.77112", 185
    .const 'Sub' $P4212 = "256_1307873286.70277" 
    $P4210."add_method"($P4211, "wants-value", $P4212)
    nqp_get_sc_object $P4213, "1307873280.77112", 185
    get_how $P4214, $P4213
    nqp_get_sc_object $P4215, "1307873280.77112", 185
    .const 'Sub' $P4216 = "257_1307873286.70277" 
    $P4214."add_method"($P4215, "parse", $P4216)
    .const 'Sub' $P4217 = "246_1307873286.70277" 
    $P4218 = $P4217."get_lexinfo"()
    nqp_get_sc_object $P4219, "1307873280.77112", 185
    $P4218."set_static_lexpad_value"("$?PACKAGE", $P4219)
    .const 'Sub' $P4220 = "246_1307873286.70277" 
    $P4221 = $P4220."get_lexinfo"()
    $P4221."finish_static_lexpad"()
    .const 'Sub' $P4222 = "246_1307873286.70277" 
    $P4223 = $P4222."get_lexinfo"()
    nqp_get_sc_object $P4224, "1307873280.77112", 185
    $P4223."set_static_lexpad_value"("$?CLASS", $P4224)
    .const 'Sub' $P4225 = "246_1307873286.70277" 
    $P4226 = $P4225."get_lexinfo"()
    $P4226."finish_static_lexpad"()
    nqp_get_sc_object $P4227, "1307873280.77112", 185
    get_how $P4228, $P4227
    nqp_get_sc_object $P4229, "1307873280.77112", 185
    nqp_get_sc_object $P4230, "1307873279.6478", 5
    $P4228."set_default_parent"($P4229, $P4230)
    nqp_get_sc_object $P4231, "1307873280.77112", 185
    get_how $P4232, $P4231
    nqp_get_sc_object $P4233, "1307873280.77112", 185
    $P4232."compose"($P4233)
    nqp_get_sc_object $P4234, "1307873274.8766", 41
    $P4235 = $P4234."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4235, cur_sc
    nqp_set_sc_object "1307873280.77112", 195, $P4235
    nqp_get_sc_object $P4236, "1307873280.77112", 195
    nqp_get_sc_object $P4237, "1307873280.77112", 0
    nqp_get_package_through_who $P4238, $P4237, "HLL"
    nqp_get_package_through_who $P4239, $P4238, "Compiler"
    get_who $P4240, $P4239
    set $P4240["SerializationContextBuilder"], $P4236
    nqp_get_sc_object $P4241, "1307873274.8766", 41
    $P4242 = $P4241."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4242, cur_sc
    nqp_set_sc_object "1307873280.77112", 196, $P4242
    .const 'Sub' $P4243 = "265_1307873286.70277" 
    $P4244 = $P4243."get_lexinfo"()
    nqp_get_sc_object $P4245, "1307873280.77112", 196
    $P4244."set_static_lexpad_value"("Event", $P4245)
    .const 'Sub' $P4246 = "265_1307873286.70277" 
    $P4247 = $P4246."get_lexinfo"()
    $P4247."finish_static_lexpad"()
    nqp_get_sc_object $P4248, "1307873280.77112", 196
    get_how $P4249, $P4248
    nqp_get_sc_object $P4250, "1307873280.77112", 196
    nqp_get_sc_object $P4251, "1307873274.8766", 80
    $P4252 = $P4251."new"("$!deserialize_past" :named("name"))
    $P4249."add_attribute"($P4250, $P4252)
    nqp_get_sc_object $P4253, "1307873280.77112", 196
    get_how $P4254, $P4253
    nqp_get_sc_object $P4255, "1307873280.77112", 196
    .const 'Sub' $P4256 = "268_1307873286.70277" 
    $P4254."add_method"($P4255, "deserialize_past", $P4256)
    nqp_get_sc_object $P4257, "1307873280.77112", 196
    get_how $P4258, $P4257
    nqp_get_sc_object $P4259, "1307873280.77112", 196
    nqp_get_sc_object $P4260, "1307873274.8766", 80
    $P4261 = $P4260."new"("$!fixup_past" :named("name"))
    $P4258."add_attribute"($P4259, $P4261)
    nqp_get_sc_object $P4262, "1307873280.77112", 196
    get_how $P4263, $P4262
    nqp_get_sc_object $P4264, "1307873280.77112", 196
    .const 'Sub' $P4265 = "269_1307873286.70277" 
    $P4263."add_method"($P4264, "fixup_past", $P4265)
    .const 'Sub' $P4266 = "267_1307873286.70277" 
    $P4267 = $P4266."get_lexinfo"()
    nqp_get_sc_object $P4268, "1307873280.77112", 196
    $P4267."set_static_lexpad_value"("$?PACKAGE", $P4268)
    .const 'Sub' $P4269 = "267_1307873286.70277" 
    $P4270 = $P4269."get_lexinfo"()
    $P4270."finish_static_lexpad"()
    .const 'Sub' $P4271 = "267_1307873286.70277" 
    $P4272 = $P4271."get_lexinfo"()
    nqp_get_sc_object $P4273, "1307873280.77112", 196
    $P4272."set_static_lexpad_value"("$?CLASS", $P4273)
    .const 'Sub' $P4274 = "267_1307873286.70277" 
    $P4275 = $P4274."get_lexinfo"()
    $P4275."finish_static_lexpad"()
    nqp_get_sc_object $P4276, "1307873280.77112", 196
    get_how $P4277, $P4276
    nqp_get_sc_object $P4278, "1307873280.77112", 196
    nqp_get_sc_object $P4279, "1307873279.6478", 5
    $P4277."set_default_parent"($P4278, $P4279)
    nqp_get_sc_object $P4280, "1307873280.77112", 196
    get_how $P4281, $P4280
    nqp_get_sc_object $P4282, "1307873280.77112", 196
    $P4281."compose"($P4282)
    nqp_get_sc_object $P4283, "1307873280.77112", 195
    get_how $P4284, $P4283
    nqp_get_sc_object $P4285, "1307873280.77112", 195
    nqp_get_sc_object $P4286, "1307873274.8766", 80
    $P4287 = $P4286."new"("$!sc" :named("name"))
    $P4284."add_attribute"($P4285, $P4287)
    nqp_get_sc_object $P4288, "1307873280.77112", 195
    get_how $P4289, $P4288
    nqp_get_sc_object $P4290, "1307873280.77112", 195
    nqp_get_sc_object $P4291, "1307873274.8766", 80
    $P4292 = $P4291."new"("$!handle" :named("name"))
    $P4289."add_attribute"($P4290, $P4292)
    nqp_get_sc_object $P4293, "1307873280.77112", 195
    get_how $P4294, $P4293
    nqp_get_sc_object $P4295, "1307873280.77112", 195
    nqp_get_sc_object $P4296, "1307873274.8766", 80
    $P4297 = $P4296."new"("%!addr_to_slot" :named("name"))
    $P4294."add_attribute"($P4295, $P4297)
    nqp_get_sc_object $P4298, "1307873280.77112", 195
    get_how $P4299, $P4298
    nqp_get_sc_object $P4300, "1307873280.77112", 195
    nqp_get_sc_object $P4301, "1307873274.8766", 80
    $P4302 = $P4301."new"("@!event_stream" :named("name"))
    $P4299."add_attribute"($P4300, $P4302)
    nqp_get_sc_object $P4303, "1307873280.77112", 195
    get_how $P4304, $P4303
    nqp_get_sc_object $P4305, "1307873280.77112", 195
    .const 'Sub' $P4306 = "270_1307873286.70277" 
    $P4304."add_method"($P4305, "new", $P4306)
    nqp_get_sc_object $P4307, "1307873280.77112", 195
    get_how $P4308, $P4307
    nqp_get_sc_object $P4309, "1307873280.77112", 195
    .const 'Sub' $P4310 = "271_1307873286.70277" 
    $P4308."add_method"($P4309, "BUILD", $P4310)
    nqp_get_sc_object $P4311, "1307873280.77112", 195
    get_how $P4312, $P4311
    nqp_get_sc_object $P4313, "1307873280.77112", 195
    .const 'Sub' $P4314 = "272_1307873286.70277" 
    $P4312."add_method"($P4313, "slot_for_object", $P4314)
    nqp_get_sc_object $P4315, "1307873280.77112", 195
    get_how $P4316, $P4315
    nqp_get_sc_object $P4317, "1307873280.77112", 195
    .const 'Sub' $P4318 = "273_1307873286.70277" 
    $P4316."add_method"($P4317, "get_slot_past_for_object", $P4318)
    nqp_get_sc_object $P4319, "1307873280.77112", 195
    get_how $P4320, $P4319
    nqp_get_sc_object $P4321, "1307873280.77112", 195
    .const 'Sub' $P4322 = "274_1307873286.70277" 
    $P4320."add_method"($P4321, "set_slot_past", $P4322)
    nqp_get_sc_object $P4323, "1307873280.77112", 195
    get_how $P4324, $P4323
    nqp_get_sc_object $P4325, "1307873280.77112", 195
    .const 'Sub' $P4326 = "275_1307873286.70277" 
    $P4324."add_method"($P4325, "set_cur_sc", $P4326)
    nqp_get_sc_object $P4327, "1307873280.77112", 195
    get_how $P4328, $P4327
    nqp_get_sc_object $P4329, "1307873280.77112", 195
    .const 'Sub' $P4330 = "276_1307873286.70277" 
    $P4328."add_method"($P4329, "add_object", $P4330)
    nqp_get_sc_object $P4331, "1307873280.77112", 195
    get_how $P4332, $P4331
    nqp_get_sc_object $P4333, "1307873280.77112", 195
    .const 'Sub' $P4334 = "277_1307873286.70277" 
    $P4332."add_method"($P4333, "add_code", $P4334)
    nqp_get_sc_object $P4335, "1307873280.77112", 195
    get_how $P4336, $P4335
    nqp_get_sc_object $P4337, "1307873280.77112", 195
    .const 'Sub' $P4338 = "278_1307873286.70277" 
    $P4336."add_method"($P4337, "add_event", $P4338)
    nqp_get_sc_object $P4339, "1307873280.77112", 195
    get_how $P4340, $P4339
    nqp_get_sc_object $P4341, "1307873280.77112", 195
    .const 'Sub' $P4342 = "279_1307873286.70277" 
    $P4340."add_method"($P4341, "get_object_sc_ref_past", $P4342)
    nqp_get_sc_object $P4343, "1307873280.77112", 195
    get_how $P4344, $P4343
    nqp_get_sc_object $P4345, "1307873280.77112", 195
    .const 'Sub' $P4346 = "280_1307873286.70277" 
    $P4344."add_method"($P4345, "sc", $P4346)
    nqp_get_sc_object $P4347, "1307873280.77112", 195
    get_how $P4348, $P4347
    nqp_get_sc_object $P4349, "1307873280.77112", 195
    .const 'Sub' $P4350 = "281_1307873286.70277" 
    $P4348."add_method"($P4349, "handle", $P4350)
    nqp_get_sc_object $P4351, "1307873280.77112", 195
    get_how $P4352, $P4351
    nqp_get_sc_object $P4353, "1307873280.77112", 195
    .const 'Sub' $P4354 = "282_1307873286.70277" 
    $P4352."add_method"($P4353, "event_stream", $P4354)
    .const 'Sub' $P4355 = "265_1307873286.70277" 
    $P4356 = $P4355."get_lexinfo"()
    nqp_get_sc_object $P4357, "1307873280.77112", 195
    $P4356."set_static_lexpad_value"("$?PACKAGE", $P4357)
    .const 'Sub' $P4358 = "265_1307873286.70277" 
    $P4359 = $P4358."get_lexinfo"()
    $P4359."finish_static_lexpad"()
    .const 'Sub' $P4360 = "265_1307873286.70277" 
    $P4361 = $P4360."get_lexinfo"()
    nqp_get_sc_object $P4362, "1307873280.77112", 195
    $P4361."set_static_lexpad_value"("$?CLASS", $P4362)
    .const 'Sub' $P4363 = "265_1307873286.70277" 
    $P4364 = $P4363."get_lexinfo"()
    $P4364."finish_static_lexpad"()
    nqp_get_sc_object $P4365, "1307873280.77112", 195
    get_how $P4366, $P4365
    nqp_get_sc_object $P4367, "1307873280.77112", 195
    nqp_get_sc_object $P4368, "1307873279.6478", 5
    $P4366."set_default_parent"($P4367, $P4368)
    nqp_get_sc_object $P4369, "1307873280.77112", 195
    get_how $P4370, $P4369
    nqp_get_sc_object $P4371, "1307873280.77112", 195
    $P4370."compose"($P4371)
  if_3239_end:
    nqp_get_sc_object $P4877, "1307873280.77112", 0
    set_hll_global "GLOBAL", $P4877
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block17"  :subid("11_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 7
    .const 'Sub' $P453 = "118_1307873286.70277" 
    capture_lex $P453
    .const 'Sub' $P448 = "117_1307873286.70277" 
    capture_lex $P448
    .const 'Sub' $P433 = "116_1307873286.70277" 
    capture_lex $P433
    .const 'Sub' $P423 = "115_1307873286.70277" 
    capture_lex $P423
    .const 'Sub' $P419 = "114_1307873286.70277" 
    capture_lex $P419
    .const 'Sub' $P415 = "113_1307873286.70277" 
    capture_lex $P415
    .const 'Sub' $P412 = "112_1307873286.70277" 
    capture_lex $P412
    .const 'Sub' $P410 = "111_1307873286.70277" 
    capture_lex $P410
    .const 'Sub' $P408 = "110_1307873286.70277" 
    capture_lex $P408
    .const 'Sub' $P400 = "109_1307873286.70277" 
    capture_lex $P400
    .const 'Sub' $P397 = "108_1307873286.70277" 
    capture_lex $P397
    .const 'Sub' $P393 = "107_1307873286.70277" 
    capture_lex $P393
    .const 'Sub' $P359 = "106_1307873286.70277" 
    capture_lex $P359
    .const 'Sub' $P354 = "105_1307873286.70277" 
    capture_lex $P354
    .const 'Sub' $P350 = "104_1307873286.70277" 
    capture_lex $P350
    .const 'Sub' $P345 = "103_1307873286.70277" 
    capture_lex $P345
    .const 'Sub' $P343 = "102_1307873286.70277" 
    capture_lex $P343
    .const 'Sub' $P339 = "101_1307873286.70277" 
    capture_lex $P339
    .const 'Sub' $P336 = "100_1307873286.70277" 
    capture_lex $P336
    .const 'Sub' $P326 = "98_1307873286.70277" 
    capture_lex $P326
    .const 'Sub' $P324 = "97_1307873286.70277" 
    capture_lex $P324
    .const 'Sub' $P294 = "93_1307873286.70277" 
    capture_lex $P294
    .const 'Sub' $P292 = "92_1307873286.70277" 
    capture_lex $P292
    .const 'Sub' $P288 = "91_1307873286.70277" 
    capture_lex $P288
    .const 'Sub' $P286 = "90_1307873286.70277" 
    capture_lex $P286
    .const 'Sub' $P283 = "89_1307873286.70277" 
    capture_lex $P283
    .const 'Sub' $P281 = "88_1307873286.70277" 
    capture_lex $P281
    .const 'Sub' $P277 = "87_1307873286.70277" 
    capture_lex $P277
    .const 'Sub' $P275 = "86_1307873286.70277" 
    capture_lex $P275
    .const 'Sub' $P271 = "85_1307873286.70277" 
    capture_lex $P271
    .const 'Sub' $P269 = "84_1307873286.70277" 
    capture_lex $P269
    .const 'Sub' $P266 = "83_1307873286.70277" 
    capture_lex $P266
    .const 'Sub' $P264 = "82_1307873286.70277" 
    capture_lex $P264
    .const 'Sub' $P261 = "81_1307873286.70277" 
    capture_lex $P261
    .const 'Sub' $P259 = "80_1307873286.70277" 
    capture_lex $P259
    .const 'Sub' $P256 = "79_1307873286.70277" 
    capture_lex $P256
    .const 'Sub' $P254 = "78_1307873286.70277" 
    capture_lex $P254
    .const 'Sub' $P251 = "77_1307873286.70277" 
    capture_lex $P251
    .const 'Sub' $P249 = "76_1307873286.70277" 
    capture_lex $P249
    .const 'Sub' $P246 = "75_1307873286.70277" 
    capture_lex $P246
    .const 'Sub' $P244 = "74_1307873286.70277" 
    capture_lex $P244
    .const 'Sub' $P241 = "73_1307873286.70277" 
    capture_lex $P241
    .const 'Sub' $P239 = "72_1307873286.70277" 
    capture_lex $P239
    .const 'Sub' $P236 = "71_1307873286.70277" 
    capture_lex $P236
    .const 'Sub' $P234 = "70_1307873286.70277" 
    capture_lex $P234
    .const 'Sub' $P231 = "69_1307873286.70277" 
    capture_lex $P231
    .const 'Sub' $P223 = "66_1307873286.70277" 
    capture_lex $P223
    .const 'Sub' $P219 = "65_1307873286.70277" 
    capture_lex $P219
    .const 'Sub' $P217 = "64_1307873286.70277" 
    capture_lex $P217
    .const 'Sub' $P206 = "63_1307873286.70277" 
    capture_lex $P206
    .const 'Sub' $P199 = "62_1307873286.70277" 
    capture_lex $P199
    .const 'Sub' $P194 = "61_1307873286.70277" 
    capture_lex $P194
    .const 'Sub' $P192 = "60_1307873286.70277" 
    capture_lex $P192
    .const 'Sub' $P188 = "59_1307873286.70277" 
    capture_lex $P188
    .const 'Sub' $P186 = "58_1307873286.70277" 
    capture_lex $P186
    .const 'Sub' $P181 = "57_1307873286.70277" 
    capture_lex $P181
    .const 'Sub' $P179 = "56_1307873286.70277" 
    capture_lex $P179
    .const 'Sub' $P175 = "55_1307873286.70277" 
    capture_lex $P175
    .const 'Sub' $P173 = "54_1307873286.70277" 
    capture_lex $P173
    .const 'Sub' $P168 = "53_1307873286.70277" 
    capture_lex $P168
    .const 'Sub' $P166 = "52_1307873286.70277" 
    capture_lex $P166
    .const 'Sub' $P162 = "51_1307873286.70277" 
    capture_lex $P162
    .const 'Sub' $P160 = "50_1307873286.70277" 
    capture_lex $P160
    .const 'Sub' $P155 = "49_1307873286.70277" 
    capture_lex $P155
    .const 'Sub' $P153 = "48_1307873286.70277" 
    capture_lex $P153
    .const 'Sub' $P149 = "47_1307873286.70277" 
    capture_lex $P149
    .const 'Sub' $P147 = "46_1307873286.70277" 
    capture_lex $P147
    .const 'Sub' $P143 = "45_1307873286.70277" 
    capture_lex $P143
    .const 'Sub' $P141 = "44_1307873286.70277" 
    capture_lex $P141
    .const 'Sub' $P134 = "43_1307873286.70277" 
    capture_lex $P134
    .const 'Sub' $P131 = "42_1307873286.70277" 
    capture_lex $P131
    .const 'Sub' $P126 = "41_1307873286.70277" 
    capture_lex $P126
    .const 'Sub' $P118 = "40_1307873286.70277" 
    capture_lex $P118
    .const 'Sub' $P115 = "39_1307873286.70277" 
    capture_lex $P115
    .const 'Sub' $P112 = "38_1307873286.70277" 
    capture_lex $P112
    .const 'Sub' $P110 = "37_1307873286.70277" 
    capture_lex $P110
    .const 'Sub' $P107 = "36_1307873286.70277" 
    capture_lex $P107
    .const 'Sub' $P103 = "35_1307873286.70277" 
    capture_lex $P103
    .const 'Sub' $P99 = "34_1307873286.70277" 
    capture_lex $P99
    .const 'Sub' $P96 = "33_1307873286.70277" 
    capture_lex $P96
    .const 'Sub' $P93 = "32_1307873286.70277" 
    capture_lex $P93
    .const 'Sub' $P90 = "31_1307873286.70277" 
    capture_lex $P90
    .const 'Sub' $P87 = "30_1307873286.70277" 
    capture_lex $P87
    .const 'Sub' $P84 = "29_1307873286.70277" 
    capture_lex $P84
    .const 'Sub' $P81 = "28_1307873286.70277" 
    capture_lex $P81
    .const 'Sub' $P43 = "15_1307873286.70277" 
    capture_lex $P43
    .const 'Sub' $P36 = "14_1307873286.70277" 
    capture_lex $P36
    .const 'Sub' $P34 = "13_1307873286.70277" 
    capture_lex $P34
    .const 'Sub' $P29 = "12_1307873286.70277" 
    capture_lex $P29
.annotate 'line', 8
    new $P19, "Undef"
    .lex "$brackets", $P19
.annotate 'line', 10
    new $P20, "Undef"
    .lex "$cursor_class", $P20
    .lex "$?PACKAGE", $P21
    .lex "$?CLASS", $P22
.annotate 'line', 8
    new $P23, "String"
    assign $P23, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P23
.annotate 'line', 10
    find_lex $P24, "GLOBALish"
    get_who $P25, $P24
    set $P26, $P25["Regex"]
    unless_null $P26, vivify_285
    new $P26, "Undef"
  vivify_285:
    get_who $P27, $P26
    set $P28, $P27["Cursor"]
    unless_null $P28, vivify_286
    new $P28, "Undef"
  vivify_286:
    store_lex "$cursor_class", $P28
.annotate 'line', 845
    .const 'Sub' $P453 = "118_1307873286.70277" 
    newclosure $P476, $P453
.annotate 'line', 7
    .return ($P476)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    .local pmc rx30_debug
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx30_cur
    .local pmc match
    .lex "$/", match
    length rx30_eos, rx30_tgt
    gt rx30_pos, rx30_eos, rx30_done
    set rx30_off, 0
    lt rx30_pos, 2, rx30_start
    sub rx30_off, rx30_pos, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
    eq $I10, 1, rx30_restart
    if_null rx30_debug, debug_287
    rx30_cur."!cursor_debug"("START", "ws")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan31_done
    goto rxscan31_scan
  rxscan31_loop:
    (rx30_pos) = rx30_cur."from"()
    inc rx30_pos
    rx30_cur."!cursor_from"(rx30_pos)
    ge rx30_pos, rx30_eos, rxscan31_done
  rxscan31_scan:
    set_addr $I10, rxscan31_loop
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxscan31_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."ww"()
    if $P10, rx30_fail
  # rx rxquantr32 ** 0..*
    set_addr $I10, rxquantr32_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr32_loop:
  alt33_0:
    set_addr $I10, alt33_1
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx30_pos, rx30_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx30_tgt, $I10, rx30_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx30_fail
    add rx30_pos, rx30_off, $I11
    goto alt33_end
  alt33_1:
  # rx literal  "#"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    ord $I11, rx30_tgt, $I11
    ne $I11, 35, rx30_fail
    add rx30_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx30_pos, rx30_off
    find_cclass $I11, .CCLASS_NEWLINE, rx30_tgt, $I10, rx30_eos
    add rx30_pos, rx30_off, $I11
  alt33_end:
    set_addr $I10, rxquantr32_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr32_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr32_loop
  rxquantr32_done:
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "ws")
    if_null rx30_debug, debug_288
    rx30_cur."!cursor_debug"("PASS", "ws", " at pos=", rx30_pos)
  debug_288:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 10
    if_null rx30_debug, debug_289
    rx30_cur."!cursor_debug"("NEXT", "ws")
  debug_289:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_290
    rx30_cur."!cursor_debug"("FAIL", "ws")
  debug_290:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    new $P35, "ResizablePMCArray"
    push $P35, ""
    .return ($P35)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    .local pmc rx37_debug
    (rx37_cur, rx37_pos, rx37_tgt, $I10) = self."!cursor_start"()
    rx37_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx37_cur
    .local pmc match
    .lex "$/", match
    length rx37_eos, rx37_tgt
    gt rx37_pos, rx37_eos, rx37_done
    set rx37_off, 0
    lt rx37_pos, 2, rx37_start
    sub rx37_off, rx37_pos, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
    eq $I10, 1, rx37_restart
    if_null rx37_debug, debug_291
    rx37_cur."!cursor_debug"("START", "termish")
  debug_291:
    $I10 = self.'from'()
    ne $I10, -1, rxscan38_done
    goto rxscan38_scan
  rxscan38_loop:
    (rx37_pos) = rx37_cur."from"()
    inc rx37_pos
    rx37_cur."!cursor_from"(rx37_pos)
    ge rx37_pos, rx37_eos, rxscan38_done
  rxscan38_scan:
    set_addr $I10, rxscan38_loop
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxscan38_done:
.annotate 'line', 15
  # rx rxquantr39 ** 0..*
    set_addr $I10, rxquantr39_done
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxquantr39_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."prefixish"()
    unless $P10, rx37_fail
    goto rxsubrule40_pass
  rxsubrule40_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx37_fail
  rxsubrule40_pass:
    set_addr $I10, rxsubrule40_back
    rx37_cur."!mark_push"(0, rx37_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx37_pos = $P10."pos"()
    set_addr $I10, rxquantr39_done
    (rx37_rep) = rx37_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr39_done
    rx37_cur."!mark_push"(rx37_rep, rx37_pos, $I10)
    goto rxquantr39_loop
  rxquantr39_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."term"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx37_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr41 ** 0..*
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxquantr41_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."postfixish"()
    unless $P10, rx37_fail
    goto rxsubrule42_pass
  rxsubrule42_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx37_fail
  rxsubrule42_pass:
    set_addr $I10, rxsubrule42_back
    rx37_cur."!mark_push"(0, rx37_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx37_pos = $P10."pos"()
    set_addr $I10, rxquantr41_done
    (rx37_rep) = rx37_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(rx37_rep, rx37_pos, $I10)
    goto rxquantr41_loop
  rxquantr41_done:
.annotate 'line', 14
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "termish")
    if_null rx37_debug, debug_292
    rx37_cur."!cursor_debug"("PASS", "termish", " at pos=", rx37_pos)
  debug_292:
    .return (rx37_cur)
  rx37_restart:
.annotate 'line', 10
    if_null rx37_debug, debug_293
    rx37_cur."!cursor_debug"("NEXT", "termish")
  debug_293:
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    if_null rx37_debug, debug_294
    rx37_cur."!cursor_debug"("FAIL", "termish")
  debug_294:
    .return (rx37_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    new $P44, "ResizablePMCArray"
    push $P44, ""
    .return ($P44)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1307873286.70277")
    .param pmc param_46
.annotate 'line', 20
    .lex "self", param_46
    $P47 = param_46."!protoregex"("term")
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1307873286.70277")
    .param pmc param_49
.annotate 'line', 20
    .lex "self", param_49
    $P50 = param_49."!PREFIX__!protoregex"("term")
    .return ($P50)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1307873286.70277")
    .param pmc param_52
.annotate 'line', 21
    .lex "self", param_52
    $P53 = param_52."!protoregex"("infix")
    .return ($P53)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1307873286.70277")
    .param pmc param_55
.annotate 'line', 21
    .lex "self", param_55
    $P56 = param_55."!PREFIX__!protoregex"("infix")
    .return ($P56)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1307873286.70277")
    .param pmc param_58
.annotate 'line', 22
    .lex "self", param_58
    $P59 = param_58."!protoregex"("prefix")
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1307873286.70277")
    .param pmc param_61
.annotate 'line', 22
    .lex "self", param_61
    $P62 = param_61."!PREFIX__!protoregex"("prefix")
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1307873286.70277")
    .param pmc param_64
.annotate 'line', 23
    .lex "self", param_64
    $P65 = param_64."!protoregex"("postfix")
    .return ($P65)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1307873286.70277")
    .param pmc param_67
.annotate 'line', 23
    .lex "self", param_67
    $P68 = param_67."!PREFIX__!protoregex"("postfix")
    .return ($P68)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1307873286.70277")
    .param pmc param_70
.annotate 'line', 24
    .lex "self", param_70
    $P71 = param_70."!protoregex"("circumfix")
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1307873286.70277")
    .param pmc param_73
.annotate 'line', 24
    .lex "self", param_73
    $P74 = param_73."!PREFIX__!protoregex"("circumfix")
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1307873286.70277")
    .param pmc param_76
.annotate 'line', 25
    .lex "self", param_76
    $P77 = param_76."!protoregex"("postcircumfix")
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1307873286.70277")
    .param pmc param_79
.annotate 'line', 25
    .lex "self", param_79
    $P80 = param_79."!PREFIX__!protoregex"("postcircumfix")
    .return ($P80)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    .local pmc rx82_debug
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx82_cur
    .local pmc match
    .lex "$/", match
    length rx82_eos, rx82_tgt
    gt rx82_pos, rx82_eos, rx82_done
    set rx82_off, 0
    lt rx82_pos, 2, rx82_start
    sub rx82_off, rx82_pos, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
    eq $I10, 1, rx82_restart
    if_null rx82_debug, debug_295
    rx82_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan83_done
    goto rxscan83_scan
  rxscan83_loop:
    (rx82_pos) = rx82_cur."from"()
    inc rx82_pos
    rx82_cur."!cursor_from"(rx82_pos)
    ge rx82_pos, rx82_eos, rxscan83_done
  rxscan83_scan:
    set_addr $I10, rxscan83_loop
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
  rxscan83_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."circumfix"()
    unless $P10, rx82_fail
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx82_pos = $P10."pos"()
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "term:sym<circumfix>")
    if_null rx82_debug, debug_296
    rx82_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx82_pos)
  debug_296:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 10
    if_null rx82_debug, debug_297
    rx82_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_297:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_298
    rx82_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_298:
    .return (rx82_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    $P85 = self."!PREFIX__!subrule"("circumfix", "")
    new $P86, "ResizablePMCArray"
    push $P86, $P85
    .return ($P86)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    gt rx88_pos, rx88_eos, rx88_done
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    eq $I10, 1, rx88_restart
    if_null rx88_debug, debug_299
    rx88_cur."!cursor_debug"("START", "infixish")
  debug_299:
    $I10 = self.'from'()
    ne $I10, -1, rxscan89_done
    goto rxscan89_scan
  rxscan89_loop:
    (rx88_pos) = rx88_cur."from"()
    inc rx88_pos
    rx88_cur."!cursor_from"(rx88_pos)
    ge rx88_pos, rx88_eos, rxscan89_done
  rxscan89_scan:
    set_addr $I10, rxscan89_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan89_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."infix"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx88_pos = $P10."pos"()
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "infixish")
    if_null rx88_debug, debug_300
    rx88_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx88_pos)
  debug_300:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 10
    if_null rx88_debug, debug_301
    rx88_cur."!cursor_debug"("NEXT", "infixish")
  debug_301:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_302
    rx88_cur."!cursor_debug"("FAIL", "infixish")
  debug_302:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    $P91 = self."!PREFIX__!subrule"("infix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx94_tgt
    .local int rx94_pos
    .local int rx94_off
    .local int rx94_eos
    .local int rx94_rep
    .local pmc rx94_cur
    .local pmc rx94_debug
    (rx94_cur, rx94_pos, rx94_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx94_cur
    .local pmc match
    .lex "$/", match
    length rx94_eos, rx94_tgt
    gt rx94_pos, rx94_eos, rx94_done
    set rx94_off, 0
    lt rx94_pos, 2, rx94_start
    sub rx94_off, rx94_pos, 1
    substr rx94_tgt, rx94_tgt, rx94_off
  rx94_start:
    eq $I10, 1, rx94_restart
    if_null rx94_debug, debug_303
    rx94_cur."!cursor_debug"("START", "prefixish")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    (rx94_pos) = rx94_cur."from"()
    inc rx94_pos
    rx94_cur."!cursor_from"(rx94_pos)
    ge rx94_pos, rx94_eos, rxscan95_done
  rxscan95_scan:
    set_addr $I10, rxscan95_loop
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxscan95_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."prefix"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx94_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."ws"()
    unless $P10, rx94_fail
    rx94_pos = $P10."pos"()
  # rx pass
    rx94_cur."!cursor_pass"(rx94_pos, "prefixish")
    if_null rx94_debug, debug_304
    rx94_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx94_pos)
  debug_304:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 10
    if_null rx94_debug, debug_305
    rx94_cur."!cursor_debug"("NEXT", "prefixish")
  debug_305:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_306
    rx94_cur."!cursor_debug"("FAIL", "prefixish")
  debug_306:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    $P97 = self."!PREFIX__!subrule"("prefix", "")
    new $P98, "ResizablePMCArray"
    push $P98, $P97
    .return ($P98)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    .local pmc rx100_debug
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx100_cur
    .local pmc match
    .lex "$/", match
    length rx100_eos, rx100_tgt
    gt rx100_pos, rx100_eos, rx100_done
    set rx100_off, 0
    lt rx100_pos, 2, rx100_start
    sub rx100_off, rx100_pos, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
    eq $I10, 1, rx100_restart
    if_null rx100_debug, debug_307
    rx100_cur."!cursor_debug"("START", "postfixish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx100_pos) = rx100_cur."from"()
    inc rx100_pos
    rx100_cur."!cursor_from"(rx100_pos)
    ge rx100_pos, rx100_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  rxscan101_done:
  alt102_0:
.annotate 'line', 31
    set_addr $I10, alt102_1
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx100_pos = $P10."pos"()
    goto alt102_end
  alt102_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postcircumfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx100_pos = $P10."pos"()
  alt102_end:
.annotate 'line', 31
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "postfixish")
    if_null rx100_debug, debug_308
    rx100_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx100_pos)
  debug_308:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 10
    if_null rx100_debug, debug_309
    rx100_cur."!cursor_debug"("NEXT", "postfixish")
  debug_309:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_310
    rx100_cur."!cursor_debug"("FAIL", "postfixish")
  debug_310:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    $P104 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P105 = self."!PREFIX__!subrule"("postfix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_debug
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
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
    if_null rx108_debug, debug_311
    rx108_cur."!cursor_debug"("START", "nullterm")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    (rx108_pos) = rx108_cur."from"()
    inc rx108_pos
    rx108_cur."!cursor_from"(rx108_pos)
    ge rx108_pos, rx108_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxscan109_done:
.annotate 'line', 36
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "nullterm")
    if_null rx108_debug, debug_312
    rx108_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx108_pos)
  debug_312:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 10
    if_null rx108_debug, debug_313
    rx108_cur."!cursor_debug"("NEXT", "nullterm")
  debug_313:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_314
    rx108_cur."!cursor_debug"("FAIL", "nullterm")
  debug_314:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    new $P111, "ResizablePMCArray"
    push $P111, ""
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    .local pmc rx113_debug
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx113_cur
    .local pmc match
    .lex "$/", match
    length rx113_eos, rx113_tgt
    gt rx113_pos, rx113_eos, rx113_done
    set rx113_off, 0
    lt rx113_pos, 2, rx113_start
    sub rx113_off, rx113_pos, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
    eq $I10, 1, rx113_restart
    if_null rx113_debug, debug_315
    rx113_cur."!cursor_debug"("START", "nullterm_alt")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan114_done
    goto rxscan114_scan
  rxscan114_loop:
    (rx113_pos) = rx113_cur."from"()
    inc rx113_pos
    rx113_cur."!cursor_from"(rx113_pos)
    ge rx113_pos, rx113_eos, rxscan114_done
  rxscan114_scan:
    set_addr $I10, rxscan114_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan114_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."nullterm"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx113_pos = $P10."pos"()
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "nullterm_alt")
    if_null rx113_debug, debug_316
    rx113_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx113_pos)
  debug_316:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 10
    if_null rx113_debug, debug_317
    rx113_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_317:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_318
    rx113_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_318:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 10
    $P116 = self."!PREFIX__!subrule"("nullterm", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_119
.annotate 'line', 40
    .lex "self", param_119
    find_lex $P122, "self"
    $P123 = $P122."termish"()
    unless $P123, unless_121
    set $P120, $P123
    goto unless_121_end
  unless_121:
    find_lex $P124, "self"
    $P125 = $P124."nullterm_alt"()
    set $P120, $P125
  unless_121_end:
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    .local pmc rx127_debug
    (rx127_cur, rx127_pos, rx127_tgt, $I10) = self."!cursor_start"()
    rx127_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx127_cur
    .local pmc match
    .lex "$/", match
    length rx127_eos, rx127_tgt
    gt rx127_pos, rx127_eos, rx127_done
    set rx127_off, 0
    lt rx127_pos, 2, rx127_start
    sub rx127_off, rx127_pos, 1
    substr rx127_tgt, rx127_tgt, rx127_off
  rx127_start:
    eq $I10, 1, rx127_restart
    if_null rx127_debug, debug_319
    rx127_cur."!cursor_debug"("START", "quote_delimited")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    (rx127_pos) = rx127_cur."from"()
    inc rx127_pos
    rx127_cur."!cursor_from"(rx127_pos)
    ge rx127_pos, rx127_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxscan128_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."starter"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx127_pos = $P10."pos"()
  # rx rxquantr129 ** 0..*
    set_addr $I10, rxquantr129_done
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxquantr129_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."quote_atom"()
    unless $P10, rx127_fail
    goto rxsubrule130_pass
  rxsubrule130_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx127_fail
  rxsubrule130_pass:
    set_addr $I10, rxsubrule130_back
    rx127_cur."!mark_push"(0, rx127_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx127_pos = $P10."pos"()
    set_addr $I10, rxquantr129_done
    (rx127_rep) = rx127_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr129_done
    rx127_cur."!mark_push"(rx127_rep, rx127_pos, $I10)
    goto rxquantr129_loop
  rxquantr129_done:
  # rx subrule "stopper" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."stopper"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx127_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "quote_delimited")
    if_null rx127_debug, debug_320
    rx127_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx127_pos)
  debug_320:
    .return (rx127_cur)
  rx127_restart:
.annotate 'line', 40
    if_null rx127_debug, debug_321
    rx127_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_321:
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    if_null rx127_debug, debug_322
    rx127_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_322:
    .return (rx127_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    $P132 = self."!PREFIX__!subrule"("starter", "")
    new $P133, "ResizablePMCArray"
    push $P133, $P132
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_debug
    (rx135_cur, rx135_pos, rx135_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx135_cur
    .local pmc match
    .lex "$/", match
    length rx135_eos, rx135_tgt
    gt rx135_pos, rx135_eos, rx135_done
    set rx135_off, 0
    lt rx135_pos, 2, rx135_start
    sub rx135_off, rx135_pos, 1
    substr rx135_tgt, rx135_tgt, rx135_off
  rx135_start:
    eq $I10, 1, rx135_restart
    if_null rx135_debug, debug_323
    rx135_cur."!cursor_debug"("START", "quote_atom")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan136_done
    goto rxscan136_scan
  rxscan136_loop:
    (rx135_pos) = rx135_cur."from"()
    inc rx135_pos
    rx135_cur."!cursor_from"(rx135_pos)
    ge rx135_pos, rx135_eos, rxscan136_done
  rxscan136_scan:
    set_addr $I10, rxscan136_loop
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxscan136_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."stopper"()
    if $P10, rx135_fail
  alt137_0:
.annotate 'line', 49
    set_addr $I10, alt137_1
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."quote_escape"()
    unless $P10, rx135_fail
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx135_pos = $P10."pos"()
    goto alt137_end
  alt137_1:
.annotate 'line', 51
  # rx rxquantr138 ** 1..*
    set_addr $I10, rxquantr138_done
    rx135_cur."!mark_push"(0, -1, $I10)
  rxquantr138_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."stopper"()
    if $P10, rx135_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."quote_escape"()
    if $P10, rx135_fail
  # rx charclass .
    ge rx135_pos, rx135_eos, rx135_fail
    inc rx135_pos
    set_addr $I10, rxquantr138_done
    (rx135_rep) = rx135_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr138_done
    rx135_cur."!mark_push"(rx135_rep, rx135_pos, $I10)
    goto rxquantr138_loop
  rxquantr138_done:
  alt137_end:
.annotate 'line', 47
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "quote_atom")
    if_null rx135_debug, debug_324
    rx135_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx135_pos)
  debug_324:
    .return (rx135_cur)
  rx135_restart:
.annotate 'line', 40
    if_null rx135_debug, debug_325
    rx135_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_325:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_326
    rx135_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_326:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_debug
    (rx144_cur, rx144_pos, rx144_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx144_cur
    .local pmc match
    .lex "$/", match
    length rx144_eos, rx144_tgt
    gt rx144_pos, rx144_eos, rx144_done
    set rx144_off, 0
    lt rx144_pos, 2, rx144_start
    sub rx144_off, rx144_pos, 1
    substr rx144_tgt, rx144_tgt, rx144_off
  rx144_start:
    eq $I10, 1, rx144_restart
    if_null rx144_debug, debug_327
    rx144_cur."!cursor_debug"("START", "decint")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan145_done
    goto rxscan145_scan
  rxscan145_loop:
    (rx144_pos) = rx144_cur."from"()
    inc rx144_pos
    rx144_cur."!cursor_from"(rx144_pos)
    ge rx144_pos, rx144_eos, rxscan145_done
  rxscan145_scan:
    set_addr $I10, rxscan145_loop
    rx144_cur."!mark_push"(0, rx144_pos, $I10)
  rxscan145_done:
.annotate 'line', 55
  # rx rxquantr146 ** 1..*
    set_addr $I10, rxquantr146_done
    rx144_cur."!mark_push"(0, -1, $I10)
  rxquantr146_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx144_pos, rx144_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx144_tgt, $I10, rx144_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx144_fail
    add rx144_pos, rx144_off, $I11
    set_addr $I10, rxquantr146_done
    (rx144_rep) = rx144_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr146_done
    rx144_cur."!mark_push"(rx144_rep, rx144_pos, $I10)
  # rx literal  "_"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail
    sub $I11, rx144_pos, rx144_off
    ord $I11, rx144_tgt, $I11
    ne $I11, 95, rx144_fail
    add rx144_pos, 1
    goto rxquantr146_loop
  rxquantr146_done:
  # rx pass
    rx144_cur."!cursor_pass"(rx144_pos, "decint")
    if_null rx144_debug, debug_328
    rx144_cur."!cursor_debug"("PASS", "decint", " at pos=", rx144_pos)
  debug_328:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 40
    if_null rx144_debug, debug_329
    rx144_cur."!cursor_debug"("NEXT", "decint")
  debug_329:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_330
    rx144_cur."!cursor_debug"("FAIL", "decint")
  debug_330:
    .return (rx144_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_debug
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx150_cur
    .local pmc match
    .lex "$/", match
    length rx150_eos, rx150_tgt
    gt rx150_pos, rx150_eos, rx150_done
    set rx150_off, 0
    lt rx150_pos, 2, rx150_start
    sub rx150_off, rx150_pos, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
    eq $I10, 1, rx150_restart
    if_null rx150_debug, debug_331
    rx150_cur."!cursor_debug"("START", "decints")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan151_done
    goto rxscan151_scan
  rxscan151_loop:
    (rx150_pos) = rx150_cur."from"()
    inc rx150_pos
    rx150_cur."!cursor_from"(rx150_pos)
    ge rx150_pos, rx150_eos, rxscan151_done
  rxscan151_scan:
    set_addr $I10, rxscan151_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan151_done:
.annotate 'line', 56
  # rx rxquantr152 ** 1..*
    set_addr $I10, rxquantr152_done
    rx150_cur."!mark_push"(0, -1, $I10)
  rxquantr152_loop:
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."decint"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx150_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
    set_addr $I10, rxquantr152_done
    (rx150_rep) = rx150_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr152_done
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I10)
  # rx literal  ","
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    ord $I11, rx150_tgt, $I11
    ne $I11, 44, rx150_fail
    add rx150_pos, 1
    goto rxquantr152_loop
  rxquantr152_done:
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "decints")
    if_null rx150_debug, debug_332
    rx150_cur."!cursor_debug"("PASS", "decints", " at pos=", rx150_pos)
  debug_332:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 40
    if_null rx150_debug, debug_333
    rx150_cur."!cursor_debug"("NEXT", "decints")
  debug_333:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_334
    rx150_cur."!cursor_debug"("FAIL", "decints")
  debug_334:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    gt rx156_pos, rx156_eos, rx156_done
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    eq $I10, 1, rx156_restart
    if_null rx156_debug, debug_335
    rx156_cur."!cursor_debug"("START", "hexint")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan157_done
    goto rxscan157_scan
  rxscan157_loop:
    (rx156_pos) = rx156_cur."from"()
    inc rx156_pos
    rx156_cur."!cursor_from"(rx156_pos)
    ge rx156_pos, rx156_eos, rxscan157_done
  rxscan157_scan:
    set_addr $I10, rxscan157_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan157_done:
.annotate 'line', 58
  # rx rxquantr158 ** 1..*
    set_addr $I10, rxquantr158_done
    rx156_cur."!mark_push"(0, -1, $I10)
  rxquantr158_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx156_pos, rx156_off
    set rx156_rep, 0
    sub $I12, rx156_eos, rx156_pos
  rxenumcharlistq159_loop:
    le $I12, 0, rxenumcharlistq159_done
    substr $S10, rx156_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq159_done
    inc rx156_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq159_loop
  rxenumcharlistq159_done:
    lt rx156_rep, 1, rx156_fail
    add rx156_pos, rx156_pos, rx156_rep
    set_addr $I10, rxquantr158_done
    (rx156_rep) = rx156_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr158_done
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I10)
  # rx literal  "_"
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 95, rx156_fail
    add rx156_pos, 1
    goto rxquantr158_loop
  rxquantr158_done:
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "hexint")
    if_null rx156_debug, debug_336
    rx156_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx156_pos)
  debug_336:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 40
    if_null rx156_debug, debug_337
    rx156_cur."!cursor_debug"("NEXT", "hexint")
  debug_337:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_338
    rx156_cur."!cursor_debug"("FAIL", "hexint")
  debug_338:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_debug
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    gt rx163_pos, rx163_eos, rx163_done
    set rx163_off, 0
    lt rx163_pos, 2, rx163_start
    sub rx163_off, rx163_pos, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    eq $I10, 1, rx163_restart
    if_null rx163_debug, debug_339
    rx163_cur."!cursor_debug"("START", "hexints")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan164_done
    goto rxscan164_scan
  rxscan164_loop:
    (rx163_pos) = rx163_cur."from"()
    inc rx163_pos
    rx163_cur."!cursor_from"(rx163_pos)
    ge rx163_pos, rx163_eos, rxscan164_done
  rxscan164_scan:
    set_addr $I10, rxscan164_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan164_done:
.annotate 'line', 59
  # rx rxquantr165 ** 1..*
    set_addr $I10, rxquantr165_done
    rx163_cur."!mark_push"(0, -1, $I10)
  rxquantr165_loop:
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."hexint"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx163_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
    set_addr $I10, rxquantr165_done
    (rx163_rep) = rx163_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr165_done
    rx163_cur."!mark_push"(rx163_rep, rx163_pos, $I10)
  # rx literal  ","
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    ord $I11, rx163_tgt, $I11
    ne $I11, 44, rx163_fail
    add rx163_pos, 1
    goto rxquantr165_loop
  rxquantr165_done:
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "hexints")
    if_null rx163_debug, debug_340
    rx163_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx163_pos)
  debug_340:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 40
    if_null rx163_debug, debug_341
    rx163_cur."!cursor_debug"("NEXT", "hexints")
  debug_341:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_342
    rx163_cur."!cursor_debug"("FAIL", "hexints")
  debug_342:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
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
    if_null rx169_debug, debug_343
    rx169_cur."!cursor_debug"("START", "octint")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan170_done
    goto rxscan170_scan
  rxscan170_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan170_done
  rxscan170_scan:
    set_addr $I10, rxscan170_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan170_done:
.annotate 'line', 61
  # rx rxquantr171 ** 1..*
    set_addr $I10, rxquantr171_done
    rx169_cur."!mark_push"(0, -1, $I10)
  rxquantr171_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx169_pos, rx169_off
    set rx169_rep, 0
    sub $I12, rx169_eos, rx169_pos
  rxenumcharlistq172_loop:
    le $I12, 0, rxenumcharlistq172_done
    substr $S10, rx169_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq172_done
    inc rx169_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq172_loop
  rxenumcharlistq172_done:
    lt rx169_rep, 1, rx169_fail
    add rx169_pos, rx169_pos, rx169_rep
    set_addr $I10, rxquantr171_done
    (rx169_rep) = rx169_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr171_done
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I10)
  # rx literal  "_"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 95, rx169_fail
    add rx169_pos, 1
    goto rxquantr171_loop
  rxquantr171_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "octint")
    if_null rx169_debug, debug_344
    rx169_cur."!cursor_debug"("PASS", "octint", " at pos=", rx169_pos)
  debug_344:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 40
    if_null rx169_debug, debug_345
    rx169_cur."!cursor_debug"("NEXT", "octint")
  debug_345:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_346
    rx169_cur."!cursor_debug"("FAIL", "octint")
  debug_346:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    rx176_cur."!cursor_caparray"("octint")
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
    if_null rx176_debug, debug_347
    rx176_cur."!cursor_debug"("START", "octints")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan177_done
  rxscan177_scan:
    set_addr $I10, rxscan177_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan177_done:
.annotate 'line', 62
  # rx rxquantr178 ** 1..*
    set_addr $I10, rxquantr178_done
    rx176_cur."!mark_push"(0, -1, $I10)
  rxquantr178_loop:
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."octint"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx176_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
    set_addr $I10, rxquantr178_done
    (rx176_rep) = rx176_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr178_done
    rx176_cur."!mark_push"(rx176_rep, rx176_pos, $I10)
  # rx literal  ","
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 44, rx176_fail
    add rx176_pos, 1
    goto rxquantr178_loop
  rxquantr178_done:
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "octints")
    if_null rx176_debug, debug_348
    rx176_cur."!cursor_debug"("PASS", "octints", " at pos=", rx176_pos)
  debug_348:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 40
    if_null rx176_debug, debug_349
    rx176_cur."!cursor_debug"("NEXT", "octints")
  debug_349:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_350
    rx176_cur."!cursor_debug"("FAIL", "octints")
  debug_350:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_351
    rx182_cur."!cursor_debug"("START", "binint")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan183_done
    goto rxscan183_scan
  rxscan183_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan183_done
  rxscan183_scan:
    set_addr $I10, rxscan183_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan183_done:
.annotate 'line', 64
  # rx rxquantr184 ** 1..*
    set_addr $I10, rxquantr184_done
    rx182_cur."!mark_push"(0, -1, $I10)
  rxquantr184_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx182_pos, rx182_off
    set rx182_rep, 0
    sub $I12, rx182_eos, rx182_pos
  rxenumcharlistq185_loop:
    le $I12, 0, rxenumcharlistq185_done
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq185_done
    inc rx182_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq185_loop
  rxenumcharlistq185_done:
    lt rx182_rep, 1, rx182_fail
    add rx182_pos, rx182_pos, rx182_rep
    set_addr $I10, rxquantr184_done
    (rx182_rep) = rx182_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr184_done
    rx182_cur."!mark_push"(rx182_rep, rx182_pos, $I10)
  # rx literal  "_"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 95, rx182_fail
    add rx182_pos, 1
    goto rxquantr184_loop
  rxquantr184_done:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "binint")
    if_null rx182_debug, debug_352
    rx182_cur."!cursor_debug"("PASS", "binint", " at pos=", rx182_pos)
  debug_352:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 40
    if_null rx182_debug, debug_353
    rx182_cur."!cursor_debug"("NEXT", "binint")
  debug_353:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_354
    rx182_cur."!cursor_debug"("FAIL", "binint")
  debug_354:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P187, "ResizablePMCArray"
    push $P187, ""
    .return ($P187)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_debug
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx189_cur
    .local pmc match
    .lex "$/", match
    length rx189_eos, rx189_tgt
    gt rx189_pos, rx189_eos, rx189_done
    set rx189_off, 0
    lt rx189_pos, 2, rx189_start
    sub rx189_off, rx189_pos, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    eq $I10, 1, rx189_restart
    if_null rx189_debug, debug_355
    rx189_cur."!cursor_debug"("START", "binints")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan190_done
    goto rxscan190_scan
  rxscan190_loop:
    (rx189_pos) = rx189_cur."from"()
    inc rx189_pos
    rx189_cur."!cursor_from"(rx189_pos)
    ge rx189_pos, rx189_eos, rxscan190_done
  rxscan190_scan:
    set_addr $I10, rxscan190_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan190_done:
.annotate 'line', 65
  # rx rxquantr191 ** 1..*
    set_addr $I10, rxquantr191_done
    rx189_cur."!mark_push"(0, -1, $I10)
  rxquantr191_loop:
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."binint"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
    set_addr $I10, rxquantr191_done
    (rx189_rep) = rx189_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr191_done
    rx189_cur."!mark_push"(rx189_rep, rx189_pos, $I10)
  # rx literal  ","
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    ord $I11, rx189_tgt, $I11
    ne $I11, 44, rx189_fail
    add rx189_pos, 1
    goto rxquantr191_loop
  rxquantr191_done:
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "binints")
    if_null rx189_debug, debug_356
    rx189_cur."!cursor_debug"("PASS", "binints", " at pos=", rx189_pos)
  debug_356:
    .return (rx189_cur)
  rx189_restart:
.annotate 'line', 40
    if_null rx189_debug, debug_357
    rx189_cur."!cursor_debug"("NEXT", "binints")
  debug_357:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_358
    rx189_cur."!cursor_debug"("FAIL", "binints")
  debug_358:
    .return (rx189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx195_cur
    .local pmc match
    .lex "$/", match
    length rx195_eos, rx195_tgt
    gt rx195_pos, rx195_eos, rx195_done
    set rx195_off, 0
    lt rx195_pos, 2, rx195_start
    sub rx195_off, rx195_pos, 1
    substr rx195_tgt, rx195_tgt, rx195_off
  rx195_start:
    eq $I10, 1, rx195_restart
    if_null rx195_debug, debug_359
    rx195_cur."!cursor_debug"("START", "integer")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    (rx195_pos) = rx195_cur."from"()
    inc rx195_pos
    rx195_cur."!cursor_from"(rx195_pos)
    ge rx195_pos, rx195_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan196_done:
  alt197_0:
.annotate 'line', 68
    set_addr $I10, alt197_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 48, rx195_fail
    add rx195_pos, 1
  alt198_0:
    set_addr $I10, alt198_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx literal  "b"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 98, rx195_fail
    add rx195_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."binint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_1:
    set_addr $I10, alt198_2
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 111, rx195_fail
    add rx195_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."octint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_2:
    set_addr $I10, alt198_3
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 120, rx195_fail
    add rx195_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."hexint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 100, rx195_fail
    add rx195_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."decint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx195_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 69
    goto alt197_end
  alt197_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."decint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx195_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 67
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "integer")
    if_null rx195_debug, debug_360
    rx195_cur."!cursor_debug"("PASS", "integer", " at pos=", rx195_pos)
  debug_360:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 40
    if_null rx195_debug, debug_361
    rx195_cur."!cursor_debug"("NEXT", "integer")
  debug_361:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_362
    rx195_cur."!cursor_debug"("FAIL", "integer")
  debug_362:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    $P200 = self."!PREFIX__!subrule"("decint", "")
    $P201 = self."!PREFIX__!subrule"("decint", "0d")
    $P202 = self."!PREFIX__!subrule"("hexint", "0x")
    $P203 = self."!PREFIX__!subrule"("octint", "0o")
    $P204 = self."!PREFIX__!subrule"("binint", "0b")
    new $P205, "ResizablePMCArray"
    push $P205, $P200
    push $P205, $P201
    push $P205, $P202
    push $P205, $P203
    push $P205, $P204
    .return ($P205)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    .local pmc rx207_debug
    (rx207_cur, rx207_pos, rx207_tgt, $I10) = self."!cursor_start"()
    rx207_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx207_cur
    .local pmc match
    .lex "$/", match
    length rx207_eos, rx207_tgt
    gt rx207_pos, rx207_eos, rx207_done
    set rx207_off, 0
    lt rx207_pos, 2, rx207_start
    sub rx207_off, rx207_pos, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
    eq $I10, 1, rx207_restart
    if_null rx207_debug, debug_363
    rx207_cur."!cursor_debug"("START", "dec_number")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan208_done
    goto rxscan208_scan
  rxscan208_loop:
    (rx207_pos) = rx207_cur."from"()
    inc rx207_pos
    rx207_cur."!cursor_from"(rx207_pos)
    ge rx207_pos, rx207_eos, rxscan208_done
  rxscan208_scan:
    set_addr $I10, rxscan208_loop
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxscan208_done:
  alt209_0:
.annotate 'line', 78
    set_addr $I10, alt209_1
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_210_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx literal  "."
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    ord $I11, rx207_tgt, $I11
    ne $I11, 46, rx207_fail
    add rx207_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx207_fail
  rxcap_210_done:
  # rx rxquantr211 ** 0..1
    set_addr $I10, rxquantr211_done
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxquantr211_loop:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    goto rxsubrule212_pass
  rxsubrule212_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx207_fail
  rxsubrule212_pass:
    set_addr $I10, rxsubrule212_back
    rx207_cur."!mark_push"(0, rx207_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
    set_addr $I10, rxquantr211_done
    (rx207_rep) = rx207_cur."!mark_commit"($I10)
  rxquantr211_done:
    goto alt209_end
  alt209_1:
    set_addr $I10, alt209_2
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_213_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
  # rx literal  "."
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    ord $I11, rx207_tgt, $I11
    ne $I11, 46, rx207_fail
    add rx207_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_213_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_213_done
  rxcap_213_fail:
    goto rx207_fail
  rxcap_213_done:
  # rx rxquantr214 ** 0..1
    set_addr $I10, rxquantr214_done
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxquantr214_loop:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    goto rxsubrule215_pass
  rxsubrule215_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx207_fail
  rxsubrule215_pass:
    set_addr $I10, rxsubrule215_back
    rx207_cur."!mark_push"(0, rx207_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
    set_addr $I10, rxquantr214_done
    (rx207_rep) = rx207_cur."!mark_commit"($I10)
  rxquantr214_done:
    goto alt209_end
  alt209_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_216_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx207_fail
  rxcap_216_done:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
  alt209_end:
.annotate 'line', 78
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "dec_number")
    if_null rx207_debug, debug_364
    rx207_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx207_pos)
  debug_364:
    .return (rx207_cur)
  rx207_restart:
.annotate 'line', 40
    if_null rx207_debug, debug_365
    rx207_cur."!cursor_debug"("NEXT", "dec_number")
  debug_365:
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    if_null rx207_debug, debug_366
    rx207_cur."!cursor_debug"("FAIL", "dec_number")
  debug_366:
    .return (rx207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P218, "ResizablePMCArray"
    push $P218, ""
    push $P218, ""
    push $P218, "."
    .return ($P218)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    .local pmc rx220_debug
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    gt rx220_pos, rx220_eos, rx220_done
    set rx220_off, 0
    lt rx220_pos, 2, rx220_start
    sub rx220_off, rx220_pos, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
    eq $I10, 1, rx220_restart
    if_null rx220_debug, debug_367
    rx220_cur."!cursor_debug"("START", "escale")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    (rx220_pos) = rx220_cur."from"()
    inc rx220_pos
    rx220_cur."!cursor_from"(rx220_pos)
    ge rx220_pos, rx220_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan221_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx220_pos, rx220_eos, rx220_fail
    sub $I10, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx220_fail
    inc rx220_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx220_pos, rx220_off
    set rx220_rep, 0
    sub $I12, rx220_eos, rx220_pos
    le $I12, 1, rxenumcharlistq222_loop
    set $I12, 1
  rxenumcharlistq222_loop:
    le $I12, 0, rxenumcharlistq222_done
    substr $S10, rx220_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq222_done
    inc rx220_rep
  rxenumcharlistq222_done:
    add rx220_pos, rx220_pos, rx220_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx220_pos, rx220_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx220_tgt, $I10, rx220_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx220_fail
    add rx220_pos, rx220_off, $I11
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "escale")
    if_null rx220_debug, debug_368
    rx220_cur."!cursor_debug"("PASS", "escale", " at pos=", rx220_pos)
  debug_368:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 40
    if_null rx220_debug, debug_369
    rx220_cur."!cursor_debug"("NEXT", "escale")
  debug_369:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_370
    rx220_cur."!cursor_debug"("FAIL", "escale")
  debug_370:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P224, "ResizablePMCArray"
    push $P224, "e"
    push $P224, "E"
    .return ($P224)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1307873286.70277")
    .param pmc param_226
.annotate 'line', 86
    .lex "self", param_226
    $P227 = param_226."!protoregex"("quote_escape")
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1307873286.70277")
    .param pmc param_229
.annotate 'line', 86
    .lex "self", param_229
    $P230 = param_229."!PREFIX__!protoregex"("quote_escape")
    .return ($P230)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    .local pmc rx232_debug
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    gt rx232_pos, rx232_eos, rx232_done
    set rx232_off, 0
    lt rx232_pos, 2, rx232_start
    sub rx232_off, rx232_pos, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    eq $I10, 1, rx232_restart
    if_null rx232_debug, debug_371
    rx232_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    (rx232_pos) = rx232_cur."from"()
    inc rx232_pos
    rx232_cur."!cursor_from"(rx232_pos)
    ge rx232_pos, rx232_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan233_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx232_pos, 2
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 2
    ne $S10, "\\\\", rx232_fail
    add rx232_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."quotemod_check"("q")
    unless $P10, rx232_fail
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "quote_escape:sym<backslash>")
    if_null rx232_debug, debug_372
    rx232_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx232_pos)
  debug_372:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 40
    if_null rx232_debug, debug_373
    rx232_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_373:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_374
    rx232_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_374:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P235, "ResizablePMCArray"
    push $P235, "\\\\"
    .return ($P235)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
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
    if_null rx237_debug, debug_375
    rx237_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan238_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 92, rx237_fail
    add rx237_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."quotemod_check"("q")
    unless $P10, rx237_fail
  # rx subrule "stopper" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."stopper"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx237_pos = $P10."pos"()
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "quote_escape:sym<stopper>")
    if_null rx237_debug, debug_376
    rx237_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx237_pos)
  debug_376:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 40
    if_null rx237_debug, debug_377
    rx237_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_377:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_378
    rx237_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_378:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P240, "ResizablePMCArray"
    push $P240, "\\"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    .local pmc rx242_debug
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    gt rx242_pos, rx242_eos, rx242_done
    set rx242_off, 0
    lt rx242_pos, 2, rx242_start
    sub rx242_off, rx242_pos, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    eq $I10, 1, rx242_restart
    if_null rx242_debug, debug_379
    rx242_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    (rx242_pos) = rx242_cur."from"()
    inc rx242_pos
    rx242_cur."!cursor_from"(rx242_pos)
    ge rx242_pos, rx242_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan243_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx242_pos, 2
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    substr $S10, rx242_tgt, $I11, 2
    ne $S10, "\\b", rx242_fail
    add rx242_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."quotemod_check"("b")
    unless $P10, rx242_fail
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "quote_escape:sym<bs>")
    if_null rx242_debug, debug_380
    rx242_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx242_pos)
  debug_380:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 40
    if_null rx242_debug, debug_381
    rx242_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_381:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_382
    rx242_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_382:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P245, "ResizablePMCArray"
    push $P245, "\\b"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    .local pmc rx247_debug
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    gt rx247_pos, rx247_eos, rx247_done
    set rx247_off, 0
    lt rx247_pos, 2, rx247_start
    sub rx247_off, rx247_pos, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
    eq $I10, 1, rx247_restart
    if_null rx247_debug, debug_383
    rx247_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx247_pos) = rx247_cur."from"()
    inc rx247_pos
    rx247_cur."!cursor_from"(rx247_pos)
    ge rx247_pos, rx247_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  rxscan248_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx247_pos, 2
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 2
    ne $S10, "\\n", rx247_fail
    add rx247_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."quotemod_check"("b")
    unless $P10, rx247_fail
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "quote_escape:sym<nl>")
    if_null rx247_debug, debug_384
    rx247_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx247_pos)
  debug_384:
    .return (rx247_cur)
  rx247_restart:
.annotate 'line', 40
    if_null rx247_debug, debug_385
    rx247_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_385:
  rx247_fail:
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    if_null rx247_debug, debug_386
    rx247_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_386:
    .return (rx247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P250, "ResizablePMCArray"
    push $P250, "\\n"
    .return ($P250)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
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
    if_null rx252_debug, debug_387
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_387:
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
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx252_pos, 2
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 2
    ne $S10, "\\r", rx252_fail
    add rx252_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."quotemod_check"("b")
    unless $P10, rx252_fail
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "quote_escape:sym<cr>")
    if_null rx252_debug, debug_388
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx252_pos)
  debug_388:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 40
    if_null rx252_debug, debug_389
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_389:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_390
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_390:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P255, "ResizablePMCArray"
    push $P255, "\\r"
    .return ($P255)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_debug
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    gt rx257_pos, rx257_eos, rx257_done
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    eq $I10, 1, rx257_restart
    if_null rx257_debug, debug_391
    rx257_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx257_pos) = rx257_cur."from"()
    inc rx257_pos
    rx257_cur."!cursor_from"(rx257_pos)
    ge rx257_pos, rx257_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan258_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 2
    ne $S10, "\\t", rx257_fail
    add rx257_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."quotemod_check"("b")
    unless $P10, rx257_fail
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "quote_escape:sym<tab>")
    if_null rx257_debug, debug_392
    rx257_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx257_pos)
  debug_392:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 40
    if_null rx257_debug, debug_393
    rx257_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_393:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_394
    rx257_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_394:
    .return (rx257_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P260, "ResizablePMCArray"
    push $P260, "\\t"
    .return ($P260)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    .local pmc rx262_debug
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    gt rx262_pos, rx262_eos, rx262_done
    set rx262_off, 0
    lt rx262_pos, 2, rx262_start
    sub rx262_off, rx262_pos, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
    eq $I10, 1, rx262_restart
    if_null rx262_debug, debug_395
    rx262_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    (rx262_pos) = rx262_cur."from"()
    inc rx262_pos
    rx262_cur."!cursor_from"(rx262_pos)
    ge rx262_pos, rx262_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  rxscan263_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx262_pos, 2
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 2
    ne $S10, "\\f", rx262_fail
    add rx262_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."quotemod_check"("b")
    unless $P10, rx262_fail
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "quote_escape:sym<ff>")
    if_null rx262_debug, debug_396
    rx262_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx262_pos)
  debug_396:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 40
    if_null rx262_debug, debug_397
    rx262_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_397:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_398
    rx262_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_398:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P265, "ResizablePMCArray"
    push $P265, "\\f"
    .return ($P265)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    .local pmc rx267_debug
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx267_cur
    .local pmc match
    .lex "$/", match
    length rx267_eos, rx267_tgt
    gt rx267_pos, rx267_eos, rx267_done
    set rx267_off, 0
    lt rx267_pos, 2, rx267_start
    sub rx267_off, rx267_pos, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
    eq $I10, 1, rx267_restart
    if_null rx267_debug, debug_399
    rx267_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx267_pos) = rx267_cur."from"()
    inc rx267_pos
    rx267_cur."!cursor_from"(rx267_pos)
    ge rx267_pos, rx267_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  rxscan268_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx267_pos, 2
    gt $I11, rx267_eos, rx267_fail
    sub $I11, rx267_pos, rx267_off
    substr $S10, rx267_tgt, $I11, 2
    ne $S10, "\\e", rx267_fail
    add rx267_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx267_cur."!cursor_pos"(rx267_pos)
    $P10 = rx267_cur."quotemod_check"("b")
    unless $P10, rx267_fail
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "quote_escape:sym<esc>")
    if_null rx267_debug, debug_400
    rx267_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx267_pos)
  debug_400:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 40
    if_null rx267_debug, debug_401
    rx267_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_401:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_402
    rx267_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_402:
    .return (rx267_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P270, "ResizablePMCArray"
    push $P270, "\\e"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    .local pmc rx272_debug
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx272_cur
    .local pmc match
    .lex "$/", match
    length rx272_eos, rx272_tgt
    gt rx272_pos, rx272_eos, rx272_done
    set rx272_off, 0
    lt rx272_pos, 2, rx272_start
    sub rx272_off, rx272_pos, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
    eq $I10, 1, rx272_restart
    if_null rx272_debug, debug_403
    rx272_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan273_done
    goto rxscan273_scan
  rxscan273_loop:
    (rx272_pos) = rx272_cur."from"()
    inc rx272_pos
    rx272_cur."!cursor_from"(rx272_pos)
    ge rx272_pos, rx272_eos, rxscan273_done
  rxscan273_scan:
    set_addr $I10, rxscan273_loop
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  rxscan273_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx272_pos, 2
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx272_fail
    add rx272_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."quotemod_check"("b")
    unless $P10, rx272_fail
  alt274_0:
.annotate 'line', 98
    set_addr $I10, alt274_1
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."hexint"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx272_pos = $P10."pos"()
    goto alt274_end
  alt274_1:
  # rx literal  "["
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    ord $I11, rx272_tgt, $I11
    ne $I11, 91, rx272_fail
    add rx272_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."hexints"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx272_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    ord $I11, rx272_tgt, $I11
    ne $I11, 93, rx272_fail
    add rx272_pos, 1
  alt274_end:
.annotate 'line', 96
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "quote_escape:sym<hex>")
    if_null rx272_debug, debug_404
    rx272_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx272_pos)
  debug_404:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 40
    if_null rx272_debug, debug_405
    rx272_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_405:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_406
    rx272_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_406:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P276, "ResizablePMCArray"
    push $P276, unicode:"\\x"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    .local pmc rx278_debug
    (rx278_cur, rx278_pos, rx278_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx278_cur
    .local pmc match
    .lex "$/", match
    length rx278_eos, rx278_tgt
    gt rx278_pos, rx278_eos, rx278_done
    set rx278_off, 0
    lt rx278_pos, 2, rx278_start
    sub rx278_off, rx278_pos, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
    eq $I10, 1, rx278_restart
    if_null rx278_debug, debug_407
    rx278_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    (rx278_pos) = rx278_cur."from"()
    inc rx278_pos
    rx278_cur."!cursor_from"(rx278_pos)
    ge rx278_pos, rx278_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  rxscan279_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx278_pos, 2
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 2
    ne $S10, "\\o", rx278_fail
    add rx278_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."quotemod_check"("b")
    unless $P10, rx278_fail
  alt280_0:
.annotate 'line', 102
    set_addr $I10, alt280_1
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."octint"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx278_pos = $P10."pos"()
    goto alt280_end
  alt280_1:
  # rx literal  "["
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    ord $I11, rx278_tgt, $I11
    ne $I11, 91, rx278_fail
    add rx278_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."octints"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx278_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    ord $I11, rx278_tgt, $I11
    ne $I11, 93, rx278_fail
    add rx278_pos, 1
  alt280_end:
.annotate 'line', 100
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "quote_escape:sym<oct>")
    if_null rx278_debug, debug_408
    rx278_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx278_pos)
  debug_408:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 40
    if_null rx278_debug, debug_409
    rx278_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_409:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_410
    rx278_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_410:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P282, "ResizablePMCArray"
    push $P282, "\\o"
    .return ($P282)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    .local pmc rx284_debug
    (rx284_cur, rx284_pos, rx284_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    gt rx284_pos, rx284_eos, rx284_done
    set rx284_off, 0
    lt rx284_pos, 2, rx284_start
    sub rx284_off, rx284_pos, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
    eq $I10, 1, rx284_restart
    if_null rx284_debug, debug_411
    rx284_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    (rx284_pos) = rx284_cur."from"()
    inc rx284_pos
    rx284_cur."!cursor_from"(rx284_pos)
    ge rx284_pos, rx284_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan285_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx284_pos, 2
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 2
    ne $S10, "\\c", rx284_fail
    add rx284_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."quotemod_check"("b")
    unless $P10, rx284_fail
  # rx subrule "charspec" subtype=capture negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."charspec"()
    unless $P10, rx284_fail
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx284_pos = $P10."pos"()
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "quote_escape:sym<chr>")
    if_null rx284_debug, debug_412
    rx284_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx284_pos)
  debug_412:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 40
    if_null rx284_debug, debug_413
    rx284_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_413:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_414
    rx284_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_414:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P287, "ResizablePMCArray"
    push $P287, "\\c"
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
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
    if_null rx289_debug, debug_415
    rx289_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan290_done
    goto rxscan290_scan
  rxscan290_loop:
    (rx289_pos) = rx289_cur."from"()
    inc rx289_pos
    rx289_cur."!cursor_from"(rx289_pos)
    ge rx289_pos, rx289_eos, rxscan290_done
  rxscan290_scan:
    set_addr $I10, rxscan290_loop
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  rxscan290_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx289_pos, 1
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    ord $I11, rx289_tgt, $I11
    ne $I11, 92, rx289_fail
    add rx289_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  "0"
    add $I11, rx289_pos, 1
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    ord $I11, rx289_tgt, $I11
    ne $I11, 48, rx289_fail
    add rx289_pos, 1
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx289_fail
  rxcap_291_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx289_cur."!cursor_pos"(rx289_pos)
    $P10 = rx289_cur."quotemod_check"("b")
    unless $P10, rx289_fail
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "quote_escape:sym<0>")
    if_null rx289_debug, debug_416
    rx289_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx289_pos)
  debug_416:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 40
    if_null rx289_debug, debug_417
    rx289_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_417:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_418
    rx289_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_418:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P293, "ResizablePMCArray"
    push $P293, "\\0"
    .return ($P293)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .const 'Sub' $P312 = "96_1307873286.70277" 
    capture_lex $P312
    .const 'Sub' $P305 = "95_1307873286.70277" 
    capture_lex $P305
    .const 'Sub' $P300 = "94_1307873286.70277" 
    capture_lex $P300
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    .local pmc rx295_debug
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    gt rx295_pos, rx295_eos, rx295_done
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    eq $I10, 1, rx295_restart
    if_null rx295_debug, debug_419
    rx295_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    (rx295_pos) = rx295_cur."from"()
    inc rx295_pos
    rx295_cur."!cursor_from"(rx295_pos)
    ge rx295_pos, rx295_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan296_done:
.annotate 'line', 107
    rx295_cur."!cursor_pos"(rx295_pos)
    find_lex $P297, unicode:"$\x{a2}"
    $P298 = $P297."MATCH"()
    store_lex "$/", $P298
    .const 'Sub' $P300 = "94_1307873286.70277" 
    capture_lex $P300
    $P301 = $P300()
  # rx literal  "\\"
    add $I11, rx295_pos, 1
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    ord $I11, rx295_tgt, $I11
    ne $I11, 92, rx295_fail
    add rx295_pos, 1
  alt302_0:
.annotate 'line', 108
    set_addr $I10, alt302_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."quotemod_check"("b")
    unless $P10, rx295_fail
  alt303_0:
.annotate 'line', 110
    set_addr $I10, alt303_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 111
  # rx subrule $P305 subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    .const 'Sub' $P305 = "95_1307873286.70277" 
    capture_lex $P305
    $P10 = rx295_cur.$P305()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx295_pos = $P10."pos"()
    goto alt303_end
  alt303_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_308_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx charclass w
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, .CCLASS_WORD, rx295_tgt, $I10
    unless $I11, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx295_fail
  rxcap_308_done:
    rx295_cur."!cursor_pos"(rx295_pos)
    find_lex $P309, unicode:"$\x{a2}"
    $P310 = $P309."MATCH"()
    store_lex "$/", $P310
    .const 'Sub' $P312 = "96_1307873286.70277" 
    capture_lex $P312
    $P322 = $P312()
  alt303_end:
.annotate 'line', 109
    goto alt302_end
  alt302_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_323_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx charclass .
    ge rx295_pos, rx295_eos, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_323_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_323_done
  rxcap_323_fail:
    goto rx295_fail
  rxcap_323_done:
  alt302_end:
.annotate 'line', 106
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "quote_escape:sym<misc>")
    if_null rx295_debug, debug_427
    rx295_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx295_pos)
  debug_427:
    .return (rx295_cur)
  rx295_restart:
.annotate 'line', 40
    if_null rx295_debug, debug_428
    rx295_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_428:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_429
    rx295_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_429:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("94_1307873286.70277") :outer("93_1307873286.70277")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block304"  :anon :subid("95_1307873286.70277") :method :outer("93_1307873286.70277")
.annotate 'line', 111
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    .local pmc rx306_debug
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    gt rx306_pos, rx306_eos, rx306_done
    set rx306_off, 0
    lt rx306_pos, 2, rx306_start
    sub rx306_off, rx306_pos, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
    eq $I10, 1, rx306_restart
    if_null rx306_debug, debug_420
    rx306_cur."!cursor_debug"("START", "")
  debug_420:
    $I10 = self.'from'()
    ne $I10, -1, rxscan307_done
    goto rxscan307_scan
  rxscan307_loop:
    (rx306_pos) = rx306_cur."from"()
    inc rx306_pos
    rx306_cur."!cursor_from"(rx306_pos)
    ge rx306_pos, rx306_eos, rxscan307_done
  rxscan307_scan:
    set_addr $I10, rxscan307_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan307_done:
  # rx charclass W
    ge rx306_pos, rx306_eos, rx306_fail
    sub $I10, rx306_pos, rx306_off
    is_cclass $I11, .CCLASS_WORD, rx306_tgt, $I10
    if $I11, rx306_fail
    inc rx306_pos
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "")
    if_null rx306_debug, debug_421
    rx306_cur."!cursor_debug"("PASS", "", " at pos=", rx306_pos)
  debug_421:
    .return (rx306_cur)
  rx306_restart:
    if_null rx306_debug, debug_422
    rx306_cur."!cursor_debug"("NEXT", "")
  debug_422:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_423
    rx306_cur."!cursor_debug"("FAIL", "")
  debug_423:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block311"  :anon :subid("96_1307873286.70277") :outer("93_1307873286.70277")
.annotate 'line', 112
    find_lex $P313, "$/"
    unless_null $P313, vivify_424
    new $P313, "Undef"
  vivify_424:
    $P314 = $P313."CURSOR"()
    new $P315, "String"
    assign $P315, "Unrecognized backslash sequence: '\\"
    find_lex $P316, "$/"
    unless_null $P316, vivify_425
    $P316 = root_new ['parrot';'Hash']
  vivify_425:
    set $P317, $P316["x"]
    unless_null $P317, vivify_426
    new $P317, "Undef"
  vivify_426:
    $S318 = $P317."Str"()
    concat $P319, $P315, $S318
    concat $P320, $P319, "'"
    $P321 = $P314."panic"($P320)
    .return ($P321)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P325, "ResizablePMCArray"
    push $P325, ""
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .const 'Sub' $P333 = "99_1307873286.70277" 
    capture_lex $P333
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_debug
    (rx327_cur, rx327_pos, rx327_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx327_cur
    .local pmc match
    .lex "$/", match
    length rx327_eos, rx327_tgt
    gt rx327_pos, rx327_eos, rx327_done
    set rx327_off, 0
    lt rx327_pos, 2, rx327_start
    sub rx327_off, rx327_pos, 1
    substr rx327_tgt, rx327_tgt, rx327_off
  rx327_start:
    eq $I10, 1, rx327_restart
    if_null rx327_debug, debug_430
    rx327_cur."!cursor_debug"("START", "charname")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    (rx327_pos) = rx327_cur."from"()
    inc rx327_pos
    rx327_cur."!cursor_from"(rx327_pos)
    ge rx327_pos, rx327_eos, rxscan328_done
  rxscan328_scan:
    set_addr $I10, rxscan328_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
  rxscan328_done:
  alt329_0:
.annotate 'line', 118
    set_addr $I10, alt329_1
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."integer"()
    unless $P10, rx327_fail
    rx327_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx327_pos = $P10."pos"()
    goto alt329_end
  alt329_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx327_fail
    inc rx327_pos
  # rx rxquantf330 ** 0..*
    set_addr $I10, rxquantf330_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
    goto rxquantf330_done
  rxquantf330_loop:
  # rx enumcharlist negate=1 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx327_fail
    inc rx327_pos
    set_addr $I10, rxquantf330_loop
    rx327_cur."!mark_push"(rx327_rep, rx327_pos, $I10)
  rxquantf330_done:
  # rx enumcharlist negate=0 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx327_fail
    inc rx327_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    .const 'Sub' $P333 = "99_1307873286.70277" 
    capture_lex $P333
    $P10 = rx327_cur."before"($P333)
    unless $P10, rx327_fail
  alt329_end:
.annotate 'line', 118
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "charname")
    if_null rx327_debug, debug_435
    rx327_cur."!cursor_debug"("PASS", "charname", " at pos=", rx327_pos)
  debug_435:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 40
    if_null rx327_debug, debug_436
    rx327_cur."!cursor_debug"("NEXT", "charname")
  debug_436:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_437
    rx327_cur."!cursor_debug"("FAIL", "charname")
  debug_437:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block332"  :anon :subid("99_1307873286.70277") :method :outer("98_1307873286.70277")
.annotate 'line', 121
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    .local pmc rx334_debug
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx334_cur
    .local pmc match
    .lex "$/", match
    length rx334_eos, rx334_tgt
    gt rx334_pos, rx334_eos, rx334_done
    set rx334_off, 0
    lt rx334_pos, 2, rx334_start
    sub rx334_off, rx334_pos, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
    eq $I10, 1, rx334_restart
    if_null rx334_debug, debug_431
    rx334_cur."!cursor_debug"("START", "")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan335_done
    goto rxscan335_scan
  rxscan335_loop:
    (rx334_pos) = rx334_cur."from"()
    inc rx334_pos
    rx334_cur."!cursor_from"(rx334_pos)
    ge rx334_pos, rx334_eos, rxscan335_done
  rxscan335_scan:
    set_addr $I10, rxscan335_loop
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxscan335_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx334_pos, rx334_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx334_tgt, $I10, rx334_eos
    add rx334_pos, rx334_off, $I11
  # rx enumcharlist negate=0 
    ge rx334_pos, rx334_eos, rx334_fail
    sub $I10, rx334_pos, rx334_off
    substr $S10, rx334_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx334_fail
    inc rx334_pos
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "")
    if_null rx334_debug, debug_432
    rx334_cur."!cursor_debug"("PASS", "", " at pos=", rx334_pos)
  debug_432:
    .return (rx334_cur)
  rx334_restart:
    if_null rx334_debug, debug_433
    rx334_cur."!cursor_debug"("NEXT", "")
  debug_433:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_434
    rx334_cur."!cursor_debug"("FAIL", "")
  debug_434:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    $P337 = self."!PREFIX__!subrule"("integer", "")
    new $P338, "ResizablePMCArray"
    push $P338, "Z"
    push $P338, "Y"
    push $P338, "X"
    push $P338, "W"
    push $P338, "V"
    push $P338, "U"
    push $P338, "T"
    push $P338, "S"
    push $P338, "R"
    push $P338, "Q"
    push $P338, "P"
    push $P338, "O"
    push $P338, "N"
    push $P338, "M"
    push $P338, "L"
    push $P338, "K"
    push $P338, "J"
    push $P338, "I"
    push $P338, "H"
    push $P338, "G"
    push $P338, "F"
    push $P338, "E"
    push $P338, "D"
    push $P338, "C"
    push $P338, "B"
    push $P338, "A"
    push $P338, "z"
    push $P338, "y"
    push $P338, "x"
    push $P338, "w"
    push $P338, "v"
    push $P338, "u"
    push $P338, "t"
    push $P338, "s"
    push $P338, "r"
    push $P338, "q"
    push $P338, "p"
    push $P338, "o"
    push $P338, "n"
    push $P338, "m"
    push $P338, "l"
    push $P338, "k"
    push $P338, "j"
    push $P338, "i"
    push $P338, "h"
    push $P338, "g"
    push $P338, "f"
    push $P338, "e"
    push $P338, "d"
    push $P338, "c"
    push $P338, "b"
    push $P338, "a"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    .local pmc rx340_debug
    (rx340_cur, rx340_pos, rx340_tgt, $I10) = self."!cursor_start"()
    rx340_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx340_cur
    .local pmc match
    .lex "$/", match
    length rx340_eos, rx340_tgt
    gt rx340_pos, rx340_eos, rx340_done
    set rx340_off, 0
    lt rx340_pos, 2, rx340_start
    sub rx340_off, rx340_pos, 1
    substr rx340_tgt, rx340_tgt, rx340_off
  rx340_start:
    eq $I10, 1, rx340_restart
    if_null rx340_debug, debug_438
    rx340_cur."!cursor_debug"("START", "charnames")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan341_done
    goto rxscan341_scan
  rxscan341_loop:
    (rx340_pos) = rx340_cur."from"()
    inc rx340_pos
    rx340_cur."!cursor_from"(rx340_pos)
    ge rx340_pos, rx340_eos, rxscan341_done
  rxscan341_scan:
    set_addr $I10, rxscan341_loop
    rx340_cur."!mark_push"(0, rx340_pos, $I10)
  rxscan341_done:
.annotate 'line', 123
  # rx rxquantr342 ** 1..*
    set_addr $I10, rxquantr342_done
    rx340_cur."!mark_push"(0, -1, $I10)
  rxquantr342_loop:
  # rx subrule "ws" subtype=method negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."ws"()
    unless $P10, rx340_fail
    rx340_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."charname"()
    unless $P10, rx340_fail
    rx340_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx340_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."ws"()
    unless $P10, rx340_fail
    rx340_pos = $P10."pos"()
    set_addr $I10, rxquantr342_done
    (rx340_rep) = rx340_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr342_done
    rx340_cur."!mark_push"(rx340_rep, rx340_pos, $I10)
  # rx literal  ","
    add $I11, rx340_pos, 1
    gt $I11, rx340_eos, rx340_fail
    sub $I11, rx340_pos, rx340_off
    ord $I11, rx340_tgt, $I11
    ne $I11, 44, rx340_fail
    add rx340_pos, 1
    goto rxquantr342_loop
  rxquantr342_done:
  # rx pass
    rx340_cur."!cursor_pass"(rx340_pos, "charnames")
    if_null rx340_debug, debug_439
    rx340_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx340_pos)
  debug_439:
    .return (rx340_cur)
  rx340_restart:
.annotate 'line', 40
    if_null rx340_debug, debug_440
    rx340_cur."!cursor_debug"("NEXT", "charnames")
  debug_440:
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    if_null rx340_debug, debug_441
    rx340_cur."!cursor_debug"("FAIL", "charnames")
  debug_441:
    .return (rx340_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    new $P344, "ResizablePMCArray"
    push $P344, ""
    .return ($P344)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    .local string rx346_tgt
    .local int rx346_pos
    .local int rx346_off
    .local int rx346_eos
    .local int rx346_rep
    .local pmc rx346_cur
    .local pmc rx346_debug
    (rx346_cur, rx346_pos, rx346_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx346_cur
    .local pmc match
    .lex "$/", match
    length rx346_eos, rx346_tgt
    gt rx346_pos, rx346_eos, rx346_done
    set rx346_off, 0
    lt rx346_pos, 2, rx346_start
    sub rx346_off, rx346_pos, 1
    substr rx346_tgt, rx346_tgt, rx346_off
  rx346_start:
    eq $I10, 1, rx346_restart
    if_null rx346_debug, debug_442
    rx346_cur."!cursor_debug"("START", "charspec")
  debug_442:
    $I10 = self.'from'()
    ne $I10, -1, rxscan347_done
    goto rxscan347_scan
  rxscan347_loop:
    (rx346_pos) = rx346_cur."from"()
    inc rx346_pos
    rx346_cur."!cursor_from"(rx346_pos)
    ge rx346_pos, rx346_eos, rxscan347_done
  rxscan347_scan:
    set_addr $I10, rxscan347_loop
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  rxscan347_done:
  alt348_0:
.annotate 'line', 125
    set_addr $I10, alt348_1
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 91, rx346_fail
    add rx346_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."charnames"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx346_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 93, rx346_fail
    add rx346_pos, 1
    goto alt348_end
  alt348_1:
    set_addr $I10, alt348_2
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx346_pos, rx346_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx346_tgt, $I10, rx346_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx346_fail
    add rx346_pos, rx346_off, $I11
  # rx rxquantr349 ** 0..*
    set_addr $I10, rxquantr349_done
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  rxquantr349_loop:
  # rx literal  "_"
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 95, rx346_fail
    add rx346_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx346_pos, rx346_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx346_tgt, $I10, rx346_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx346_fail
    add rx346_pos, rx346_off, $I11
    set_addr $I10, rxquantr349_done
    (rx346_rep) = rx346_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr349_done
    rx346_cur."!mark_push"(rx346_rep, rx346_pos, $I10)
    goto rxquantr349_loop
  rxquantr349_done:
    goto alt348_end
  alt348_2:
    set_addr $I10, alt348_3
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx346_fail
    inc rx346_pos
    goto alt348_end
  alt348_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."panic"("Unrecognized \\c character")
    unless $P10, rx346_fail
    rx346_pos = $P10."pos"()
  alt348_end:
.annotate 'line', 124
  # rx pass
    rx346_cur."!cursor_pass"(rx346_pos, "charspec")
    if_null rx346_debug, debug_443
    rx346_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx346_pos)
  debug_443:
    .return (rx346_cur)
  rx346_restart:
.annotate 'line', 40
    if_null rx346_debug, debug_444
    rx346_cur."!cursor_debug"("NEXT", "charspec")
  debug_444:
  rx346_fail:
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    if_null rx346_debug, debug_445
    rx346_cur."!cursor_debug"("FAIL", "charspec")
  debug_445:
    .return (rx346_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1307873286.70277") :method :outer("11_1307873286.70277")
.annotate 'line', 40
    $P351 = self."!PREFIX__!subrule"("panic", "")
    $P352 = self."!PREFIX__!subrule"("charnames", "[")
    new $P353, "ResizablePMCArray"
    push $P353, $P351
    push $P353, "?"
    push $P353, "@"
    push $P353, "A"
    push $P353, "B"
    push $P353, "C"
    push $P353, "D"
    push $P353, "E"
    push $P353, "F"
    push $P353, "G"
    push $P353, "H"
    push $P353, "I"
    push $P353, "J"
    push $P353, "K"
    push $P353, "L"
    push $P353, "M"
    push $P353, "N"
    push $P353, "O"
    push $P353, "P"
    push $P353, "Q"
    push $P353, "R"
    push $P353, "S"
    push $P353, "T"
    push $P353, "U"
    push $P353, "V"
    push $P353, "W"
    push $P353, "X"
    push $P353, "Y"
    push $P353, "Z"
    push $P353, ""
    push $P353, $P352
    .return ($P353)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O" :anon :subid("105_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357 :optional
    .param int has_param_357 :opt_flag
.annotate 'line', 175
    .lex "self", param_355
    .lex "$spec", param_356
    if has_param_357, optparam_446
    new $P358, "Undef"
    set param_357, $P358
  optparam_446:
    .lex "$save", param_357
.annotate 'line', 176

            .include 'cclass.pasm'
            
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            $P0 = find_lex '$spec'
            spec = $P0
            has_save = 0
            $P0 = find_lex '$save'
            unless $P0 goto no_save
            save = $P0
            has_save = 1
          no_save:

            # First, get the hash cache.  Right now we have one
            # cache for all grammars; eventually we may need a way to
            # separate them out by cursor type.
            .local pmc ohash
            ohash = get_global '%!ohash'
            unless null ohash goto have_ohash
            ohash = new ['Hash']
            set_global '%!ohash', ohash
          have_ohash:

            # See if we've already created a Hash for the current
            # specification string -- if so, use that.
            .local pmc hash
            hash = ohash[spec]
            unless null hash goto hash_done

            # Otherwise, we need to build a new one.
            hash = new ['Hash']
            .local int pos, eos
            pos = 0
            eos = length spec
          spec_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, spec, pos, eos
            if pos >= eos goto spec_done
            $S0 = substr spec, pos, 1
            if $S0 == ',' goto spec_comma
            if $S0 == ':' goto spec_pair

            # If whatever we found doesn't start with a colon, treat it
            # as a lookup of a previously saved hash to be merged in.
            .local string lookup
            .local int lpos
            # Find the first whitespace or comma
            lpos = find_cclass .CCLASS_WHITESPACE, spec, pos, eos
            $I0 = index spec, ',', pos
            if $I0 < 0 goto have_lookup_lpos
            if $I0 >= lpos goto have_lookup_lpos
            lpos = $I0
          have_lookup_lpos:
            $I0 = lpos - pos
            lookup = substr spec, pos, $I0
            .local pmc lhash, lhash_it
            lhash = ohash[lookup]
            if null lhash goto err_lookup
            lhash_it = iter lhash
          lhash_loop:
            unless lhash_it goto lhash_done
            $S0 = shift lhash_it
            $P0 = lhash[$S0]
            hash[$S0] = $P0
            goto lhash_loop
          lhash_done:
            pos = lpos
            goto spec_loop

            # We just ignore commas between elements for now.
          spec_comma:
            inc pos
            goto spec_loop

            # If we see a colon, then we want to parse whatever
            # comes next like a pair.
          spec_pair:
            # eat colon
            inc pos
            .local string name
            .local pmc value
            value = new ['Boolean']

            # If the pair is of the form :!name, then reverse the value
            # and skip the colon.
            $S0 = substr spec, pos, 1
            $I0 = iseq $S0, '!'
            pos += $I0
            $I0 = not $I0
            value = $I0

            # Get the name of the pair.
            lpos = find_not_cclass .CCLASS_WORD, spec, pos, eos
            $I0 = lpos - pos
            name = substr spec, pos, $I0
            pos = lpos

            # Look for a <...> that follows.
            $S0 = substr spec, pos, 1
            unless $S0 == '<' goto have_value
            inc pos
            lpos = index spec, '>', pos
            $I0 = lpos - pos
            $S0 = substr spec, pos, $I0
            value = box $S0
            pos = lpos + 1
          have_value:
            # Done processing the pair, store it in the hash.
            hash[name] = value
            goto spec_loop
          spec_done:
            # Done processing the spec string, cache the hash for later.
            ohash[spec] = hash
          hash_done:

            # If we've been called as a subrule, then build a pass-cursor
            # to indicate success and set the hash as the subrule's match object.
            if has_save goto save_hash
            ($P0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
.annotate 'line', 175
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic" :anon :subid("106_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_360
    .param pmc param_361 :slurpy
.annotate 'line', 323
    .lex "self", param_360
    .lex "@args", param_361
.annotate 'line', 324
    new $P362, "Undef"
    .lex "$pos", $P362
.annotate 'line', 325
    new $P363, "Undef"
    .lex "$target", $P363
.annotate 'line', 324
    find_lex $P364, "self"
    $P365 = $P364."pos"()
    store_lex "$pos", $P365
.annotate 'line', 325
    find_lex $P366, "self"
    get_hll_global $P367, "GLOBAL"
    nqp_get_package_through_who $P368, $P367, "Regex"
    get_who $P369, $P368
    set $P370, $P369["Cursor"]
    getattribute $P371, $P366, $P370, "$!target"
    store_lex "$target", $P371
.annotate 'line', 326
    find_lex $P372, "@args"
    unless_null $P372, vivify_447
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    $P372."push"(" at line ")
.annotate 'line', 327
    find_lex $P373, "@args"
    unless_null $P373, vivify_448
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_448:
    get_hll_global $P374, "GLOBAL"
    nqp_get_package_through_who $P375, $P374, "HLL"
    get_who $P376, $P375
    set $P377, $P376["Compiler"]
    find_lex $P378, "$target"
    unless_null $P378, vivify_449
    new $P378, "Undef"
  vivify_449:
    find_lex $P379, "$pos"
    unless_null $P379, vivify_450
    new $P379, "Undef"
  vivify_450:
    $P380 = $P377."lineof"($P378, $P379)
    add $P381, $P380, 1
    $P373."push"($P381)
.annotate 'line', 328
    find_lex $P382, "@args"
    unless_null $P382, vivify_451
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_451:
    $P382."push"(", near \"")
.annotate 'line', 329
    find_lex $P383, "@args"
    unless_null $P383, vivify_452
    $P383 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    find_lex $P384, "$target"
    unless_null $P384, vivify_453
    new $P384, "Undef"
  vivify_453:
    set $S385, $P384
    find_lex $P386, "$pos"
    unless_null $P386, vivify_454
    new $P386, "Undef"
  vivify_454:
    set $I387, $P386
    substr $S388, $S385, $I387, 10
    escape $S389, $S388
    $P383."push"($S389)
.annotate 'line', 330
    find_lex $P390, "@args"
    unless_null $P390, vivify_455
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_455:
    $P390."push"("\"")
.annotate 'line', 331
    find_lex $P391, "@args"
    unless_null $P391, vivify_456
    $P391 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    join $S392, "", $P391
    die $S392
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("107_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_394
    .param pmc param_395
    .param pmc param_396
.annotate 'line', 344
    .lex "self", param_394
    .lex "$target", param_395
    .lex "$pos", param_396
.annotate 'line', 345

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
            brackets = $P0

            # peek at the next character
            start = substr target, pos, 1
            # colon and word characters aren't valid delimiters
            if start == ':' goto err_colon_delim
            $I0 = is_cclass .CCLASS_WORD, start, 0
            if $I0 goto err_word_delim
            $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
            if $I0 goto err_ws_delim

            # assume stop delim is same as start, for the moment
            stop = start

            # see if we have an opener or closer
            $I0 = index brackets, start
            if $I0 < 0 goto bracket_end
            # if it's a closing bracket, that's an error also
            $I1 = $I0 % 2
            if $I1 goto err_close
            # it's an opener, so get the closing bracket
            inc $I0
            stop = substr brackets, $I0, 1

            # see if the opening bracket is repeated
            .local int len
            len = 0
          bracket_loop:
            inc pos
            inc len
            $S0 = substr target, pos, 1
            if $S0 == start goto bracket_loop
            if len == 1 goto bracket_end
            start = repeat start, len
            stop = repeat stop, len
          bracket_end:
            .return (start, stop, pos)

          err_colon_delim:
            self.'panic'('Colons may not be used to delimit quoting constructs')
          err_word_delim:
            self.'panic'('Alphanumeric character is not allowed as a delimiter')
          err_ws_delim:
            self.'panic'('Whitespace character is not allowed as a delimiter')
          err_close:
            self.'panic'('Use of a closing delimiter for an opener is reserved')
        
.annotate 'line', 344
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR" :anon :subid("108_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_398
    .param pmc param_399 :slurpy
.annotate 'line', 406
    .lex "self", param_398
    .lex "@args", param_399
.annotate 'line', 407

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

            .local pmc quotemod, true
            .lex '%*QUOTEMOD', quotemod
            quotemod = new ['Hash']

            true = box 1


          args_loop:
            unless args goto args_done
            .local string mod
            mod = shift args
            mod = substr mod, 1
            quotemod[mod] = true
            if mod == 'qq' goto opt_qq
            if mod == 'b' goto opt_b
            goto args_loop
          opt_qq:
            quotemod['s'] = true
            quotemod['a'] = true
            quotemod['h'] = true
            quotemod['f'] = true
            quotemod['c'] = true
            quotemod['b'] = true
          opt_b:
            quotemod['q'] = true
            goto args_loop
          args_done:


            .local pmc start, stop
            (start, stop) = self.'peek_delimiters'(target, pos)

            .lex '$*QUOTE_START', start
            .lex '$*QUOTE_STOP', stop

            $P10 = cur.'quote_delimited'()
            unless $P10 goto fail
            cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
            $P10.'!cursor_names'('quote_delimited')
            pos = $P10.'pos'()
            cur.'!cursor_pass'(pos, 'quote_EXPR')
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        
.annotate 'line', 406
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check"  :subid("109_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 477
    .lex "self", param_401
    .lex "$mod", param_402
    find_lex $P403, "$mod"
    unless_null $P403, vivify_457
    new $P403, "Undef"
  vivify_457:
    find_dynamic_lex $P406, "%*QUOTEMOD"
    unless_null $P406, vivify_458
    get_hll_global $P404, "GLOBAL"
    get_who $P405, $P404
    set $P406, $P405["%QUOTEMOD"]
    unless_null $P406, vivify_459
    die "Contextual %*QUOTEMOD not found"
  vivify_459:
  vivify_458:
    set $P407, $P406[$P403]
    unless_null $P407, vivify_460
    new $P407, "Undef"
  vivify_460:
    .return ($P407)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("110_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_409
.annotate 'line', 481
    .lex "self", param_409
.annotate 'line', 482

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_START'
            if null $P0 goto fail
            start = $P0

            $I0 = length start
            $S0 = substr target, pos, $I0
            unless $S0 == start goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'starter')
          fail:
            .return (cur)
        
.annotate 'line', 481
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper" :anon :subid("111_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_411
.annotate 'line', 504
    .lex "self", param_411
.annotate 'line', 505

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_STOP'
            if null $P0 goto fail
            stop = $P0

            $I0 = length stop
            $S0 = substr target, pos, $I0
            unless $S0 == stop goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'stopper')
          fail:
            .return (cur)
        
.annotate 'line', 504
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words"  :subid("112_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 527
    .lex "self", param_413
    .lex "$words", param_414
.annotate 'line', 528

            .local string words
            $P0 = find_lex '$words'
            words = $P0
            .local int pos, eos
            .local pmc result
            pos = 0
            eos = length words
            result = new ['ResizablePMCArray']
          split_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
            unless pos < eos goto split_done
            $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
            $I1 = $I0 - pos
            $S0 = substr words, pos, $I1
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        
.annotate 'line', 527
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR" :anon :subid("113_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_416
    .param pmc param_417 :optional
    .param int has_param_417 :opt_flag
.annotate 'line', 559
    .lex "self", param_416
    if has_param_417, optparam_461
    new $P418, "String"
    assign $P418, ""
    set param_417, $P418
  optparam_461:
    .lex "$preclim", param_417
.annotate 'line', 560

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

            # interleave any prefix/postfix we might have found
            .local pmc termOPER, prefixish, postfixish
            termOPER = termish
          termOPER_loop:
            $I0 = exists termOPER['OPER']
            unless $I0 goto termOPER_done
            termOPER = termOPER['OPER']
            goto termOPER_loop
          termOPER_done:
            prefixish = termOPER['prefixish']
            postfixish = termOPER['postfixish']
            if null prefixish goto prefix_done

          prepostfix_loop:
            unless prefixish goto prepostfix_done
            unless postfixish goto prepostfix_done
            .local pmc preO, postO
            .local string preprec, postprec
            $P0 = prefixish[0]
            $P0 = $P0['OPER']
            preO = $P0['O']
            preprec = preO['prec']
            $P0 = postfixish[-1]
            $P0 = $P0['OPER']
            postO = $P0['O']
            postprec = postO['prec']
            if postprec < preprec goto post_shift
            if postprec > preprec goto pre_shift
            $S0 = postO['uassoc']
            if $S0 == 'right' goto pre_shift
          post_shift:
            $P0 = pop postfixish
            push opstack, $P0
            goto prepostfix_loop
          pre_shift:
            $P0 = shift prefixish
            push opstack, $P0
            goto prepostfix_loop
          prepostfix_done:

          prefix_loop:
            unless prefixish goto prefix_done
            $P0 = shift prefixish
            push opstack, $P0
            goto prefix_loop
          prefix_done:
            delete termish['prefixish']

          postfix_loop:
            if null postfixish goto postfix_done
            unless postfixish goto postfix_done
            $P0 = pop postfixish
            push opstack, $P0
            goto postfix_loop
          postfix_done:
            delete termish['postfixish']

            $P0 = termish['term']
            push termstack, $P0

            # Now see if we can fetch an infix operator
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec <= preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            self.'EXPR_reduce'(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            self.'EXPR_reduce'(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
.annotate 'line', 559
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce" :anon :subid("114_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_420
    .param pmc param_421
    .param pmc param_422
.annotate 'line', 733
    .lex "self", param_420
    .lex "$termstack", param_421
    .lex "$opstack", param_422
.annotate 'line', 734

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            $P0 = opO['assoc']
            opassoc = $P0
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $P0 = opO['reducecheck']
            if null $P0 goto op_infix_1
            $S0 = $P0
            self.$S0(op)
          op_infix_1:
            self.'!reduce'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            $P0 = opOPER['sym']
            sym = $P0
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $S0 = $P0
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
.annotate 'line', 733
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary" :anon :subid("115_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 805
    .lex "self", param_424
    .lex "$match", param_425
.annotate 'line', 806
    find_lex $P426, "$match"
    unless_null $P426, vivify_462
    $P426 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    set $P427, $P426[1]
    unless_null $P427, vivify_463
    new $P427, "Undef"
  vivify_463:
    find_lex $P428, "$match"
    unless_null $P428, vivify_464
    $P428 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P428
  vivify_464:
    set $P428[2], $P427
.annotate 'line', 807
    find_lex $P429, "$match"
    unless_null $P429, vivify_465
    $P429 = root_new ['parrot';'Hash']
  vivify_465:
    set $P430, $P429["infix"]
    unless_null $P430, vivify_466
    $P430 = root_new ['parrot';'Hash']
  vivify_466:
    set $P431, $P430["EXPR"]
    unless_null $P431, vivify_467
    new $P431, "Undef"
  vivify_467:
    find_lex $P432, "$match"
    unless_null $P432, vivify_468
    $P432 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P432
  vivify_468:
    set $P432[1], $P431
.annotate 'line', 805
    .return ($P431)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 810
    .lex "self", param_434
    .lex "$markname", param_435
.annotate 'line', 811
    new $P436, "Undef"
    .lex "$pos", $P436
.annotate 'line', 813
    $P437 = root_new ['parrot';'Hash']
    .lex "%markhash", $P437
.annotate 'line', 811
    find_lex $P438, "self"
    $P439 = $P438."pos"()
    store_lex "$pos", $P439
.annotate 'line', 812
    find_lex $P440, "self"
    find_lex $P441, "$markname"
    unless_null $P441, vivify_469
    new $P441, "Undef"
  vivify_469:
    find_lex $P442, "$pos"
    unless_null $P442, vivify_470
    new $P442, "Undef"
  vivify_470:
    $P440."!cursor_debug"("START", "MARKER name=", $P441, ", pos=", $P442)
.annotate 'line', 813

            $P443 = get_global '%!MARKHASH'
            unless null $P443 goto have_markhash
            $P443 = new ['Hash']
            set_global '%!MARKHASH', $P443
          have_markhash:
        
    store_lex "%markhash", $P443
.annotate 'line', 820
    find_lex $P444, "$pos"
    unless_null $P444, vivify_471
    new $P444, "Undef"
  vivify_471:
    find_lex $P445, "$markname"
    unless_null $P445, vivify_472
    new $P445, "Undef"
  vivify_472:
    find_lex $P446, "%markhash"
    unless_null $P446, vivify_473
    $P446 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P446
  vivify_473:
    set $P446[$P445], $P444
.annotate 'line', 821
    find_lex $P447, "self"
    $P447."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 810
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_449
    .param pmc param_450
.annotate 'line', 825
    .lex "self", param_449
    .lex "$markname", param_450
.annotate 'line', 826
    find_lex $P451, "self"
    find_lex $P452, "$markname"
    unless_null $P452, vivify_474
    new $P452, "Undef"
  vivify_474:
    $P451."!cursor_debug"("START", "MARKED name=", $P452)
.annotate 'line', 827

            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        
.annotate 'line', 825
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG" :anon :subid("118_1307873286.70277") :outer("11_1307873286.70277")
    .param pmc param_454
    .param pmc param_455
    .param pmc param_456
.annotate 'line', 845
    .lex "self", param_454
    .lex "$lang", param_455
    .lex "$regex", param_456
.annotate 'line', 846
    new $P457, "Undef"
    .lex "$lang_cursor", $P457
.annotate 'line', 847
    new $P458, "Undef"
    .lex "$*ACTIONS", $P458
.annotate 'line', 848
    new $P459, "Undef"
    .lex "$cur", $P459
.annotate 'line', 846
    find_lex $P460, "$lang"
    unless_null $P460, vivify_475
    new $P460, "Undef"
  vivify_475:
    find_dynamic_lex $P463, "%*LANG"
    unless_null $P463, vivify_476
    get_hll_global $P461, "GLOBAL"
    get_who $P462, $P461
    set $P463, $P462["%LANG"]
    unless_null $P463, vivify_477
    die "Contextual %*LANG not found"
  vivify_477:
  vivify_476:
    set $P464, $P463[$P460]
    unless_null $P464, vivify_478
    new $P464, "Undef"
  vivify_478:
    store_lex "$lang_cursor", $P464
.annotate 'line', 847
    find_lex $P465, "$lang"
    unless_null $P465, vivify_479
    new $P465, "Undef"
  vivify_479:
    concat $P466, $P465, "-actions"
    find_dynamic_lex $P469, "%*LANG"
    unless_null $P469, vivify_480
    get_hll_global $P467, "GLOBAL"
    get_who $P468, $P467
    set $P469, $P468["%LANG"]
    unless_null $P469, vivify_481
    die "Contextual %*LANG not found"
  vivify_481:
  vivify_480:
    set $P470, $P469[$P466]
    unless_null $P470, vivify_482
    new $P470, "Undef"
  vivify_482:
    store_lex "$*ACTIONS", $P470
.annotate 'line', 848

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P471, pos) = self.'!cursor_start'($P0)
            $P471.'!cursor_pos'(pos)
        
    store_lex "$cur", $P471
.annotate 'line', 856
    find_lex $P472, "$cur"
    unless_null $P472, vivify_483
    new $P472, "Undef"
  vivify_483:
    find_lex $P473, "$regex"
    unless_null $P473, vivify_484
    new $P473, "Undef"
  vivify_484:
    set $S474, $P473
    $P475 = $P472.$S474()
.annotate 'line', 845
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block477"  :subid("119_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 861
    .const 'Sub' $P1147 = "164_1307873286.70277" 
    capture_lex $P1147
    .const 'Sub' $P1124 = "162_1307873286.70277" 
    capture_lex $P1124
    .const 'Sub' $P1096 = "161_1307873286.70277" 
    capture_lex $P1096
    .const 'Sub' $P1079 = "160_1307873286.70277" 
    capture_lex $P1079
    .const 'Sub' $P1074 = "159_1307873286.70277" 
    capture_lex $P1074
    .const 'Sub' $P1066 = "158_1307873286.70277" 
    capture_lex $P1066
    .const 'Sub' $P1051 = "157_1307873286.70277" 
    capture_lex $P1051
    .const 'Sub' $P1036 = "156_1307873286.70277" 
    capture_lex $P1036
    .const 'Sub' $P1031 = "155_1307873286.70277" 
    capture_lex $P1031
    .const 'Sub' $P1026 = "154_1307873286.70277" 
    capture_lex $P1026
    .const 'Sub' $P1021 = "153_1307873286.70277" 
    capture_lex $P1021
    .const 'Sub' $P1016 = "152_1307873286.70277" 
    capture_lex $P1016
    .const 'Sub' $P1011 = "151_1307873286.70277" 
    capture_lex $P1011
    .const 'Sub' $P1006 = "150_1307873286.70277" 
    capture_lex $P1006
    .const 'Sub' $P998 = "149_1307873286.70277" 
    capture_lex $P998
    .const 'Sub' $P993 = "148_1307873286.70277" 
    capture_lex $P993
    .const 'Sub' $P979 = "147_1307873286.70277" 
    capture_lex $P979
    .const 'Sub' $P897 = "145_1307873286.70277" 
    capture_lex $P897
    .const 'Sub' $P820 = "142_1307873286.70277" 
    capture_lex $P820
    .const 'Sub' $P813 = "141_1307873286.70277" 
    capture_lex $P813
    .const 'Sub' $P806 = "140_1307873286.70277" 
    capture_lex $P806
    .const 'Sub' $P799 = "139_1307873286.70277" 
    capture_lex $P799
    .const 'Sub' $P792 = "138_1307873286.70277" 
    capture_lex $P792
    .const 'Sub' $P785 = "137_1307873286.70277" 
    capture_lex $P785
    .const 'Sub' $P777 = "136_1307873286.70277" 
    capture_lex $P777
    .const 'Sub' $P769 = "135_1307873286.70277" 
    capture_lex $P769
    .const 'Sub' $P763 = "134_1307873286.70277" 
    capture_lex $P763
    .const 'Sub' $P755 = "133_1307873286.70277" 
    capture_lex $P755
    .const 'Sub' $P747 = "132_1307873286.70277" 
    capture_lex $P747
    .const 'Sub' $P639 = "129_1307873286.70277" 
    capture_lex $P639
    .const 'Sub' $P599 = "126_1307873286.70277" 
    capture_lex $P599
    .const 'Sub' $P591 = "125_1307873286.70277" 
    capture_lex $P591
    .const 'Sub' $P552 = "122_1307873286.70277" 
    capture_lex $P552
    .const 'Sub' $P479 = "120_1307873286.70277" 
    capture_lex $P479
.annotate 'line', 862
    .const 'Sub' $P479 = "120_1307873286.70277" 
    newclosure $P548, $P479
    .lex "string_to_int", $P548
.annotate 'line', 861
    find_lex $P549, "string_to_int"
    find_lex $P550, "$?PACKAGE"
    get_who $P551, $P550
    set $P551["string_to_int"], $P549
.annotate 'line', 884
    .const 'Sub' $P552 = "122_1307873286.70277" 
    newclosure $P583, $P552
    .lex "ints_to_string", $P583
.annotate 'line', 861
    find_lex $P584, "ints_to_string"
    find_lex $P585, "$?PACKAGE"
    get_who $P586, $P585
    set $P586["ints_to_string"], $P584
    .lex "$?PACKAGE", $P587
    .lex "$?CLASS", $P588
    find_lex $P589, "string_to_int"
    find_lex $P590, "ints_to_string"
.annotate 'line', 1055
    .const 'Sub' $P1147 = "164_1307873286.70277" 
    newclosure $P1162, $P1147
.annotate 'line', 861
    .return ($P1162)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_480
    .param pmc param_481
.annotate 'line', 862
    .const 'Sub' $P497 = "121_1307873286.70277" 
    capture_lex $P497
    .lex "$src", param_480
    .lex "$base", param_481
.annotate 'line', 863
    new $P482, "Undef"
    .lex "$len", $P482
.annotate 'line', 864
    new $P483, "Undef"
    .lex "$i", $P483
.annotate 'line', 865
    new $P484, "Undef"
    .lex "$result", $P484
.annotate 'line', 863
    find_lex $P485, "$src"
    unless_null $P485, vivify_485
    new $P485, "Undef"
  vivify_485:
    set $S486, $P485
    length $I487, $S486
    new $P488, 'Integer'
    set $P488, $I487
    store_lex "$len", $P488
.annotate 'line', 864
    new $P489, "Integer"
    assign $P489, 0
    store_lex "$i", $P489
.annotate 'line', 865
    new $P490, "Integer"
    assign $P490, 0
    store_lex "$result", $P490
.annotate 'line', 867
    new $P545, 'ExceptionHandler'
    set_label $P545, loop544_handler
    $P545."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P545
  loop544_test:
    find_lex $P491, "$i"
    unless_null $P491, vivify_486
    new $P491, "Undef"
  vivify_486:
    set $N492, $P491
    find_lex $P493, "$len"
    unless_null $P493, vivify_487
    new $P493, "Undef"
  vivify_487:
    set $N494, $P493
    islt $I495, $N492, $N494
    unless $I495, loop544_done
  loop544_redo:
    .const 'Sub' $P497 = "121_1307873286.70277" 
    capture_lex $P497
    $P497()
  loop544_next:
    goto loop544_test
  loop544_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P546, exception, 'type'
    eq $P546, .CONTROL_LOOP_NEXT, loop544_next
    eq $P546, .CONTROL_LOOP_REDO, loop544_redo
  loop544_done:
    pop_eh 
    find_lex $P547, "$result"
    unless_null $P547, vivify_503
    new $P547, "Undef"
  vivify_503:
.annotate 'line', 862
    .return ($P547)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block496"  :anon :subid("121_1307873286.70277") :outer("120_1307873286.70277")
.annotate 'line', 868
    new $P498, "Undef"
    .lex "$char", $P498
.annotate 'line', 873
    new $P499, "Undef"
    .lex "$digitval", $P499
.annotate 'line', 868
    find_lex $P500, "$src"
    unless_null $P500, vivify_488
    new $P500, "Undef"
  vivify_488:
    set $S501, $P500
    find_lex $P502, "$i"
    unless_null $P502, vivify_489
    new $P502, "Undef"
  vivify_489:
    set $I503, $P502
    substr $S504, $S501, $I503, 1
    new $P505, 'String'
    set $P505, $S504
    store_lex "$char", $P505
.annotate 'line', 869
    find_lex $P507, "$char"
    unless_null $P507, vivify_490
    new $P507, "Undef"
  vivify_490:
    set $S508, $P507
    iseq $I509, $S508, "_"
    unless $I509, if_506_end
.annotate 'line', 870
    find_lex $P510, "$i"
    unless_null $P510, vivify_491
    new $P510, "Undef"
  vivify_491:
    add $P511, $P510, 1
    store_lex "$i", $P511
.annotate 'line', 871
    die 0, .CONTROL_LOOP_NEXT
  if_506_end:
.annotate 'line', 873
    find_lex $P512, "$char"
    unless_null $P512, vivify_492
    new $P512, "Undef"
  vivify_492:
    set $S513, $P512
    index $I514, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S513
    new $P515, 'Integer'
    set $P515, $I514
    store_lex "$digitval", $P515
.annotate 'line', 874
    find_lex $P516, "$digitval"
    unless_null $P516, vivify_493
    new $P516, "Undef"
  vivify_493:
    div $P517, $P516, 2
    set $I518, $P517
    new $P519, 'Integer'
    set $P519, $I518
    store_lex "$digitval", $P519
.annotate 'line', 875
    find_lex $P523, "$digitval"
    unless_null $P523, vivify_494
    new $P523, "Undef"
  vivify_494:
    set $N524, $P523
    islt $I525, $N524, 0.0
    unless $I525, unless_522
    new $P521, 'Integer'
    set $P521, $I525
    goto unless_522_end
  unless_522:
    find_lex $P526, "$digitval"
    unless_null $P526, vivify_495
    new $P526, "Undef"
  vivify_495:
    set $N527, $P526
    find_lex $P528, "$base"
    unless_null $P528, vivify_496
    new $P528, "Undef"
  vivify_496:
    set $N529, $P528
    isge $I530, $N527, $N529
    new $P521, 'Integer'
    set $P521, $I530
  unless_522_end:
    unless $P521, if_520_end
.annotate 'line', 876
    find_lex $P531, "$src"
    unless_null $P531, vivify_497
    new $P531, "Undef"
  vivify_497:
    new $P532, 'String'
    set $P532, "Invalid radix conversion of character '"
    find_lex $P533, "$char"
    unless_null $P533, vivify_498
    new $P533, "Undef"
  vivify_498:
    concat $P534, $P532, $P533
    concat $P535, $P534, "'"
    $P531."panic"($P535)
  if_520_end:
.annotate 'line', 878
    find_lex $P536, "$base"
    unless_null $P536, vivify_499
    new $P536, "Undef"
  vivify_499:
    find_lex $P537, "$result"
    unless_null $P537, vivify_500
    new $P537, "Undef"
  vivify_500:
    mul $P538, $P536, $P537
    find_lex $P539, "$digitval"
    unless_null $P539, vivify_501
    new $P539, "Undef"
  vivify_501:
    add $P540, $P538, $P539
    store_lex "$result", $P540
.annotate 'line', 879
    find_lex $P541, "$i"
    unless_null $P541, vivify_502
    new $P541, "Undef"
  vivify_502:
    add $P542, $P541, 1
    store_lex "$i", $P542
    new $P543, "ResizablePMCArray"
    push $P543, $P540
    push $P543, $P542
.annotate 'line', 867
    .return ($P543)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_553
.annotate 'line', 884
    .const 'Sub' $P559 = "123_1307873286.70277" 
    capture_lex $P559
    .lex "$ints", param_553
.annotate 'line', 885
    find_lex $P556, "$ints"
    unless_null $P556, vivify_504
    new $P556, "Undef"
  vivify_504:
    does $I557, $P556, "array"
    if $I557, if_555
.annotate 'line', 892
    find_lex $P579, "$ints"
    unless_null $P579, vivify_505
    new $P579, "Undef"
  vivify_505:
    $I580 = $P579."ast"()
    chr $S581, $I580
    new $P582, 'String'
    set $P582, $S581
.annotate 'line', 891
    set $P554, $P582
.annotate 'line', 885
    goto if_555_end
  if_555:
    .const 'Sub' $P559 = "123_1307873286.70277" 
    capture_lex $P559
    $P578 = $P559()
    set $P554, $P578
  if_555_end:
.annotate 'line', 884
    .return ($P554)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block558"  :anon :subid("123_1307873286.70277") :outer("122_1307873286.70277")
.annotate 'line', 885
    .const 'Sub' $P567 = "124_1307873286.70277" 
    capture_lex $P567
.annotate 'line', 886
    new $P560, "Undef"
    .lex "$result", $P560
    new $P561, "String"
    assign $P561, ""
    store_lex "$result", $P561
.annotate 'line', 887
    find_lex $P563, "$ints"
    unless_null $P563, vivify_506
    new $P563, "Undef"
  vivify_506:
    defined $I564, $P563
    unless $I564, for_undef_507
    iter $P562, $P563
    new $P575, 'ExceptionHandler'
    set_label $P575, loop574_handler
    $P575."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P575
  loop574_test:
    unless $P562, loop574_done
    shift $P565, $P562
  loop574_redo:
    .const 'Sub' $P567 = "124_1307873286.70277" 
    capture_lex $P567
    $P567($P565)
  loop574_next:
    goto loop574_test
  loop574_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P576, exception, 'type'
    eq $P576, .CONTROL_LOOP_NEXT, loop574_next
    eq $P576, .CONTROL_LOOP_REDO, loop574_redo
  loop574_done:
    pop_eh 
  for_undef_507:
    find_lex $P577, "$result"
    unless_null $P577, vivify_510
    new $P577, "Undef"
  vivify_510:
.annotate 'line', 885
    .return ($P577)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block566"  :anon :subid("124_1307873286.70277") :outer("123_1307873286.70277")
    .param pmc param_568
.annotate 'line', 887
    .lex "$_", param_568
.annotate 'line', 888
    find_lex $P569, "$result"
    unless_null $P569, vivify_508
    new $P569, "Undef"
  vivify_508:
    find_lex $P570, "$_"
    unless_null $P570, vivify_509
    new $P570, "Undef"
  vivify_509:
    $I571 = $P570."ast"()
    chr $S572, $I571
    concat $P573, $P569, $S572
    store_lex "$result", $P573
.annotate 'line', 887
    .return ($P573)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("125_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_592
.annotate 'line', 897
    .lex "self", param_592
.annotate 'line', 898
    get_hll_global $P593, "GLOBAL"
    nqp_get_package_through_who $P594, $P593, "PAST"
    get_who $P595, $P594
    set $P596, $P595["Op"]
.annotate 'line', 904
    new $P597, "ResizablePMCArray"
    push $P597, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P597, "    if null $P0 goto ctxsave_done"
    push $P597, "    $I0 = can $P0, \"ctxsave\""
    push $P597, "    unless $I0 goto ctxsave_done"
    push $P597, "    $P0.\"ctxsave\"()"
    push $P597, "  ctxsave_done:"
    $P598 = $P596."new"($P597 :named("inline"))
.annotate 'line', 897
    .return ($P598)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("126_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_600
    .param pmc param_601
.annotate 'line', 911
    .const 'Sub' $P613 = "127_1307873286.70277" 
    capture_lex $P613
    .lex "self", param_600
    .lex "$block", param_601
.annotate 'line', 912
    new $P602, "Undef"
    .lex "$outer_ctx", $P602
    find_dynamic_lex $P605, "%*COMPILING"
    unless_null $P605, vivify_511
    get_hll_global $P603, "GLOBAL"
    get_who $P604, $P603
    set $P605, $P604["%COMPILING"]
    unless_null $P605, vivify_512
    die "Contextual %*COMPILING not found"
  vivify_512:
  vivify_511:
    set $P606, $P605["%?OPTIONS"]
    unless_null $P606, vivify_513
    $P606 = root_new ['parrot';'Hash']
  vivify_513:
    set $P607, $P606["outer_ctx"]
    unless_null $P607, vivify_514
    new $P607, "Undef"
  vivify_514:
    store_lex "$outer_ctx", $P607
.annotate 'line', 913
    find_lex $P610, "$outer_ctx"
    unless_null $P610, vivify_515
    new $P610, "Undef"
  vivify_515:
    defined $I611, $P610
    if $I611, if_609
    new $P608, 'Integer'
    set $P608, $I611
    goto if_609_end
  if_609:
    .const 'Sub' $P613 = "127_1307873286.70277" 
    capture_lex $P613
    $P638 = $P613()
    set $P608, $P638
  if_609_end:
.annotate 'line', 911
    .return ($P608)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block612"  :anon :subid("127_1307873286.70277") :outer("126_1307873286.70277")
.annotate 'line', 913
    .const 'Sub' $P627 = "128_1307873286.70277" 
    capture_lex $P627
.annotate 'line', 914
    $P614 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P614
    find_lex $P615, "$outer_ctx"
    unless_null $P615, vivify_516
    new $P615, "Undef"
  vivify_516:
    getattribute $P616, $P615, "current_namespace"
    $P617 = $P616."get_name"()
    store_lex "@ns", $P617
.annotate 'line', 915
    find_lex $P618, "@ns"
    unless_null $P618, vivify_517
    $P618 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    $P618."shift"()
.annotate 'line', 916
    find_lex $P619, "$block"
    unless_null $P619, vivify_518
    new $P619, "Undef"
  vivify_518:
    find_lex $P620, "@ns"
    unless_null $P620, vivify_519
    $P620 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    $P619."namespace"($P620)
.annotate 'line', 917
    find_lex $P622, "$outer_ctx"
    unless_null $P622, vivify_520
    new $P622, "Undef"
  vivify_520:
    $P623 = $P622."lexpad_full"()
    defined $I624, $P623
    unless $I624, for_undef_521
    iter $P621, $P623
    new $P636, 'ExceptionHandler'
    set_label $P636, loop635_handler
    $P636."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P636
  loop635_test:
    unless $P621, loop635_done
    shift $P625, $P621
  loop635_redo:
    .const 'Sub' $P627 = "128_1307873286.70277" 
    capture_lex $P627
    $P627($P625)
  loop635_next:
    goto loop635_test
  loop635_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P637, exception, 'type'
    eq $P637, .CONTROL_LOOP_NEXT, loop635_next
    eq $P637, .CONTROL_LOOP_REDO, loop635_redo
  loop635_done:
    pop_eh 
  for_undef_521:
.annotate 'line', 913
    .return ($P621)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block626"  :anon :subid("128_1307873286.70277") :outer("127_1307873286.70277")
    .param pmc param_628
.annotate 'line', 917
    .lex "$_", param_628
.annotate 'line', 918
    find_lex $P629, "$block"
    unless_null $P629, vivify_522
    new $P629, "Undef"
  vivify_522:
    find_lex $P630, "$_"
    unless_null $P630, vivify_523
    new $P630, "Undef"
  vivify_523:
    $P631 = $P630."key"()
    find_lex $P632, "$_"
    unless_null $P632, vivify_524
    new $P632, "Undef"
  vivify_524:
    $P633 = $P632."value"()
    $P634 = $P629."symbol"($P631, "lexical" :named("scope"), $P633 :named("value"))
.annotate 'line', 917
    .return ($P634)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("129_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_642
    .param pmc param_643
    .param pmc param_644 :optional
    .param int has_param_644 :opt_flag
.annotate 'line', 924
    .const 'Sub' $P729 = "131_1307873286.70277" 
    capture_lex $P729
    .const 'Sub' $P693 = "130_1307873286.70277" 
    capture_lex $P693
    new $P641, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P641, control_640
    push_eh $P641
    .lex "self", param_642
    .lex "$/", param_643
    if has_param_644, optparam_525
    new $P645, "Undef"
    set param_644, $P645
  optparam_525:
    .lex "$key", param_644
.annotate 'line', 926
    new $P646, "Undef"
    .lex "$past", $P646
.annotate 'line', 925
    find_lex $P648, "$key"
    unless_null $P648, vivify_526
    new $P648, "Undef"
  vivify_526:
    if $P648, unless_647_end
    new $P649, "Exception"
    set $P649['type'], .CONTROL_RETURN
    new $P650, "Integer"
    assign $P650, 0
    setattribute $P649, 'payload', $P650
    throw $P649
  unless_647_end:
.annotate 'line', 926
    find_lex $P652, "$/"
    unless_null $P652, vivify_527
    new $P652, "Undef"
  vivify_527:
    $P653 = $P652."ast"()
    set $P651, $P653
    defined $I655, $P651
    if $I655, default_654
    find_lex $P656, "$/"
    unless_null $P656, vivify_528
    $P656 = root_new ['parrot';'Hash']
  vivify_528:
    set $P657, $P656["OPER"]
    unless_null $P657, vivify_529
    new $P657, "Undef"
  vivify_529:
    $P658 = $P657."ast"()
    set $P651, $P658
  default_654:
    store_lex "$past", $P651
.annotate 'line', 927
    find_lex $P660, "$past"
    unless_null $P660, vivify_530
    new $P660, "Undef"
  vivify_530:
    if $P660, unless_659_end
.annotate 'line', 928
    get_hll_global $P661, "GLOBAL"
    nqp_get_package_through_who $P662, $P661, "PAST"
    get_who $P663, $P662
    set $P664, $P663["Op"]
    find_lex $P665, "$/"
    unless_null $P665, vivify_531
    new $P665, "Undef"
  vivify_531:
    $P666 = $P664."new"($P665 :named("node"))
    store_lex "$past", $P666
.annotate 'line', 929
    find_lex $P668, "$/"
    unless_null $P668, vivify_532
    $P668 = root_new ['parrot';'Hash']
  vivify_532:
    set $P669, $P668["OPER"]
    unless_null $P669, vivify_533
    $P669 = root_new ['parrot';'Hash']
  vivify_533:
    set $P670, $P669["O"]
    unless_null $P670, vivify_534
    $P670 = root_new ['parrot';'Hash']
  vivify_534:
    set $P671, $P670["pasttype"]
    unless_null $P671, vivify_535
    new $P671, "Undef"
  vivify_535:
    if $P671, if_667
.annotate 'line', 930
    find_lex $P679, "$/"
    unless_null $P679, vivify_536
    $P679 = root_new ['parrot';'Hash']
  vivify_536:
    set $P680, $P679["OPER"]
    unless_null $P680, vivify_537
    $P680 = root_new ['parrot';'Hash']
  vivify_537:
    set $P681, $P680["O"]
    unless_null $P681, vivify_538
    $P681 = root_new ['parrot';'Hash']
  vivify_538:
    set $P682, $P681["pirop"]
    unless_null $P682, vivify_539
    new $P682, "Undef"
  vivify_539:
    unless $P682, if_678_end
    find_lex $P683, "$past"
    unless_null $P683, vivify_540
    new $P683, "Undef"
  vivify_540:
    find_lex $P684, "$/"
    unless_null $P684, vivify_541
    $P684 = root_new ['parrot';'Hash']
  vivify_541:
    set $P685, $P684["OPER"]
    unless_null $P685, vivify_542
    $P685 = root_new ['parrot';'Hash']
  vivify_542:
    set $P686, $P685["O"]
    unless_null $P686, vivify_543
    $P686 = root_new ['parrot';'Hash']
  vivify_543:
    set $P687, $P686["pirop"]
    unless_null $P687, vivify_544
    new $P687, "Undef"
  vivify_544:
    set $S688, $P687
    $P683."pirop"($S688)
  if_678_end:
    goto if_667_end
  if_667:
.annotate 'line', 929
    find_lex $P672, "$past"
    unless_null $P672, vivify_545
    new $P672, "Undef"
  vivify_545:
    find_lex $P673, "$/"
    unless_null $P673, vivify_546
    $P673 = root_new ['parrot';'Hash']
  vivify_546:
    set $P674, $P673["OPER"]
    unless_null $P674, vivify_547
    $P674 = root_new ['parrot';'Hash']
  vivify_547:
    set $P675, $P674["O"]
    unless_null $P675, vivify_548
    $P675 = root_new ['parrot';'Hash']
  vivify_548:
    set $P676, $P675["pasttype"]
    unless_null $P676, vivify_549
    new $P676, "Undef"
  vivify_549:
    set $S677, $P676
    $P672."pasttype"($S677)
  if_667_end:
.annotate 'line', 931
    find_lex $P690, "$past"
    unless_null $P690, vivify_550
    new $P690, "Undef"
  vivify_550:
    $P691 = $P690."name"()
    if $P691, unless_689_end
    .const 'Sub' $P693 = "130_1307873286.70277" 
    capture_lex $P693
    $P693()
  unless_689_end:
  unless_659_end:
.annotate 'line', 937
    find_lex $P716, "$key"
    unless_null $P716, vivify_558
    new $P716, "Undef"
  vivify_558:
    set $S717, $P716
    iseq $I718, $S717, "POSTFIX"
    if $I718, if_715
.annotate 'line', 939
    find_lex $P724, "$/"
    unless_null $P724, vivify_559
    new $P724, "Undef"
  vivify_559:
    $P725 = $P724."list"()
    defined $I726, $P725
    unless $I726, for_undef_560
    iter $P723, $P725
    new $P741, 'ExceptionHandler'
    set_label $P741, loop740_handler
    $P741."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P741
  loop740_test:
    unless $P723, loop740_done
    shift $P727, $P723
  loop740_redo:
    .const 'Sub' $P729 = "131_1307873286.70277" 
    capture_lex $P729
    $P729($P727)
  loop740_next:
    goto loop740_test
  loop740_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P742, exception, 'type'
    eq $P742, .CONTROL_LOOP_NEXT, loop740_next
    eq $P742, .CONTROL_LOOP_REDO, loop740_redo
  loop740_done:
    pop_eh 
  for_undef_560:
.annotate 'line', 938
    goto if_715_end
  if_715:
.annotate 'line', 937
    find_lex $P719, "$past"
    unless_null $P719, vivify_564
    new $P719, "Undef"
  vivify_564:
    find_lex $P720, "$/"
    unless_null $P720, vivify_565
    $P720 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
    set $P721, $P720[0]
    unless_null $P721, vivify_566
    new $P721, "Undef"
  vivify_566:
    $P722 = $P721."ast"()
    $P719."unshift"($P722)
  if_715_end:
.annotate 'line', 941
    find_lex $P743, "$/"
    find_lex $P744, "$past"
    unless_null $P744, vivify_567
    new $P744, "Undef"
  vivify_567:
    $P745 = $P743."!make"($P744)
.annotate 'line', 924
    .return ($P745)
  control_640:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P746, exception, "payload"
    .return ($P746)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block692"  :anon :subid("130_1307873286.70277") :outer("129_1307873286.70277")
.annotate 'line', 933
    new $P694, "Undef"
    .lex "$name", $P694
.annotate 'line', 932
    find_lex $P696, "$key"
    unless_null $P696, vivify_551
    new $P696, "Undef"
  vivify_551:
    set $S697, $P696
    iseq $I698, $S697, "LIST"
    unless $I698, if_695_end
    new $P699, "String"
    assign $P699, "infix"
    store_lex "$key", $P699
  if_695_end:
.annotate 'line', 933
    find_lex $P700, "$key"
    unless_null $P700, vivify_552
    new $P700, "Undef"
  vivify_552:
    set $S701, $P700
    downcase $S702, $S701
    new $P703, 'String'
    set $P703, $S702
    concat $P704, $P703, ":<"
    find_lex $P705, "$/"
    unless_null $P705, vivify_553
    $P705 = root_new ['parrot';'Hash']
  vivify_553:
    set $P706, $P705["OPER"]
    unless_null $P706, vivify_554
    $P706 = root_new ['parrot';'Hash']
  vivify_554:
    set $P707, $P706["sym"]
    unless_null $P707, vivify_555
    new $P707, "Undef"
  vivify_555:
    concat $P708, $P704, $P707
    concat $P709, $P708, ">"
    store_lex "$name", $P709
.annotate 'line', 934
    find_lex $P710, "$past"
    unless_null $P710, vivify_556
    new $P710, "Undef"
  vivify_556:
    new $P711, "String"
    assign $P711, "&"
    find_lex $P712, "$name"
    unless_null $P712, vivify_557
    new $P712, "Undef"
  vivify_557:
    concat $P713, $P711, $P712
    $P714 = $P710."name"($P713)
.annotate 'line', 931
    .return ($P714)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block728"  :anon :subid("131_1307873286.70277") :outer("129_1307873286.70277")
    .param pmc param_730
.annotate 'line', 939
    .lex "$_", param_730
    find_lex $P733, "$_"
    unless_null $P733, vivify_561
    new $P733, "Undef"
  vivify_561:
    $P734 = $P733."ast"()
    defined $I735, $P734
    if $I735, if_732
    new $P731, 'Integer'
    set $P731, $I735
    goto if_732_end
  if_732:
    find_lex $P736, "$past"
    unless_null $P736, vivify_562
    new $P736, "Undef"
  vivify_562:
    find_lex $P737, "$_"
    unless_null $P737, vivify_563
    new $P737, "Undef"
  vivify_563:
    $P738 = $P737."ast"()
    $P739 = $P736."push"($P738)
    set $P731, $P739
  if_732_end:
    .return ($P731)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("132_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_748
    .param pmc param_749
.annotate 'line', 944
    .lex "self", param_748
    .lex "$/", param_749
    find_lex $P750, "$/"
    find_lex $P751, "$/"
    unless_null $P751, vivify_568
    $P751 = root_new ['parrot';'Hash']
  vivify_568:
    set $P752, $P751["circumfix"]
    unless_null $P752, vivify_569
    new $P752, "Undef"
  vivify_569:
    $P753 = $P752."ast"()
    $P754 = $P750."!make"($P753)
    .return ($P754)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("133_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_756
    .param pmc param_757
.annotate 'line', 946
    .lex "self", param_756
    .lex "$/", param_757
    find_lex $P758, "$/"
    find_lex $P759, "$/"
    unless_null $P759, vivify_570
    $P759 = root_new ['parrot';'Hash']
  vivify_570:
    set $P760, $P759["term"]
    unless_null $P760, vivify_571
    new $P760, "Undef"
  vivify_571:
    $P761 = $P760."ast"()
    $P762 = $P758."!make"($P761)
    .return ($P762)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("134_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_764
    .param pmc param_765
.annotate 'line', 947
    .lex "self", param_764
    .lex "$/", param_765
    find_lex $P766, "$/"
    new $P767, "Undef"
    $P768 = $P766."!make"($P767)
    .return ($P768)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("135_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_770
    .param pmc param_771
.annotate 'line', 948
    .lex "self", param_770
    .lex "$/", param_771
    find_lex $P772, "$/"
    find_lex $P773, "$/"
    unless_null $P773, vivify_572
    $P773 = root_new ['parrot';'Hash']
  vivify_572:
    set $P774, $P773["term"]
    unless_null $P774, vivify_573
    new $P774, "Undef"
  vivify_573:
    $P775 = $P774."ast"()
    $P776 = $P772."!make"($P775)
    .return ($P776)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("136_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_778
    .param pmc param_779
.annotate 'line', 950
    .lex "self", param_778
    .lex "$/", param_779
    find_lex $P780, "$/"
    find_lex $P781, "$/"
    unless_null $P781, vivify_574
    $P781 = root_new ['parrot';'Hash']
  vivify_574:
    set $P782, $P781["VALUE"]
    unless_null $P782, vivify_575
    new $P782, "Undef"
  vivify_575:
    $P783 = $P782."ast"()
    $P784 = $P780."!make"($P783)
    .return ($P784)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("137_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_786
    .param pmc param_787
.annotate 'line', 952
    .lex "self", param_786
    .lex "$/", param_787
    find_lex $P788, "$/"
    find_lex $P789, "$/"
    unless_null $P789, vivify_576
    new $P789, "Undef"
  vivify_576:
    set $N790, $P789
    $P791 = $P788."!make"($N790)
    .return ($P791)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("138_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_793
    .param pmc param_794
.annotate 'line', 954
    .lex "self", param_793
    .lex "$/", param_794
    find_lex $P795, "$/"
    find_lex $P796, "$/"
    unless_null $P796, vivify_577
    new $P796, "Undef"
  vivify_577:
    $P797 = "string_to_int"($P796, 10)
    $P798 = $P795."!make"($P797)
    .return ($P798)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("139_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_800
    .param pmc param_801
.annotate 'line', 955
    .lex "self", param_800
    .lex "$/", param_801
    find_lex $P802, "$/"
    find_lex $P803, "$/"
    unless_null $P803, vivify_578
    new $P803, "Undef"
  vivify_578:
    $P804 = "string_to_int"($P803, 16)
    $P805 = $P802."!make"($P804)
    .return ($P805)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("140_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_807
    .param pmc param_808
.annotate 'line', 956
    .lex "self", param_807
    .lex "$/", param_808
    find_lex $P809, "$/"
    find_lex $P810, "$/"
    unless_null $P810, vivify_579
    new $P810, "Undef"
  vivify_579:
    $P811 = "string_to_int"($P810, 8)
    $P812 = $P809."!make"($P811)
    .return ($P812)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("141_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_814
    .param pmc param_815
.annotate 'line', 957
    .lex "self", param_814
    .lex "$/", param_815
    find_lex $P816, "$/"
    find_lex $P817, "$/"
    unless_null $P817, vivify_580
    new $P817, "Undef"
  vivify_580:
    $P818 = "string_to_int"($P817, 2)
    $P819 = $P816."!make"($P818)
    .return ($P819)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("142_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_821
    .param pmc param_822
.annotate 'line', 959
    .const 'Sub' $P841 = "143_1307873286.70277" 
    capture_lex $P841
    .lex "self", param_821
    .lex "$/", param_822
.annotate 'line', 960
    new $P823, "Undef"
    .lex "$past", $P823
    find_lex $P824, "$/"
    unless_null $P824, vivify_581
    $P824 = root_new ['parrot';'Hash']
  vivify_581:
    set $P825, $P824["quote_delimited"]
    unless_null $P825, vivify_582
    new $P825, "Undef"
  vivify_582:
    $P826 = $P825."ast"()
    store_lex "$past", $P826
.annotate 'line', 961
    find_lex $P828, "$/"
    unless_null $P828, vivify_583
    new $P828, "Undef"
  vivify_583:
    $P829 = $P828."CURSOR"()
    $P830 = $P829."quotemod_check"("w")
    unless $P830, if_827_end
.annotate 'line', 962
    get_hll_global $P832, "GLOBAL"
    nqp_get_package_through_who $P833, $P832, "PAST"
    get_who $P834, $P833
    set $P835, $P834["Node"]
    find_lex $P836, "$past"
    unless_null $P836, vivify_584
    new $P836, "Undef"
  vivify_584:
    $P837 = $P835."ACCEPTS"($P836)
    if $P837, if_831
.annotate 'line', 965
    .const 'Sub' $P841 = "143_1307873286.70277" 
    capture_lex $P841
    $P841()
    goto if_831_end
  if_831:
.annotate 'line', 963
    find_lex $P838, "$/"
    unless_null $P838, vivify_595
    new $P838, "Undef"
  vivify_595:
    $P839 = $P838."CURSOR"()
    $P839."panic"("Can't form :w list from non-constant strings (yet)")
  if_831_end:
  if_827_end:
.annotate 'line', 976
    get_hll_global $P880, "GLOBAL"
    nqp_get_package_through_who $P881, $P880, "PAST"
    get_who $P882, $P881
    set $P883, $P882["Node"]
    find_lex $P884, "$past"
    unless_null $P884, vivify_596
    new $P884, "Undef"
  vivify_596:
    $P885 = $P883."ACCEPTS"($P884)
    isfalse $I886, $P885
    unless $I886, if_879_end
.annotate 'line', 977
    get_hll_global $P887, "GLOBAL"
    nqp_get_package_through_who $P888, $P887, "PAST"
    get_who $P889, $P888
    set $P890, $P889["Val"]
    find_lex $P891, "$past"
    unless_null $P891, vivify_597
    new $P891, "Undef"
  vivify_597:
    set $S892, $P891
    $P893 = $P890."new"($S892 :named("value"))
    store_lex "$past", $P893
  if_879_end:
.annotate 'line', 979
    find_lex $P894, "$/"
    find_lex $P895, "$past"
    unless_null $P895, vivify_598
    new $P895, "Undef"
  vivify_598:
    $P896 = $P894."!make"($P895)
.annotate 'line', 959
    .return ($P896)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block840"  :anon :subid("143_1307873286.70277") :outer("142_1307873286.70277")
.annotate 'line', 965
    .const 'Sub' $P867 = "144_1307873286.70277" 
    capture_lex $P867
.annotate 'line', 966
    $P842 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P842
    get_hll_global $P843, "GLOBAL"
    nqp_get_package_through_who $P844, $P843, "HLL"
    nqp_get_package_through_who $P845, $P844, "Grammar"
    get_who $P846, $P845
    set $P847, $P846["split_words"]
    find_lex $P848, "$/"
    unless_null $P848, vivify_585
    new $P848, "Undef"
  vivify_585:
    find_lex $P849, "$past"
    unless_null $P849, vivify_586
    new $P849, "Undef"
  vivify_586:
    $P850 = $P847($P848, $P849)
    store_lex "@words", $P850
.annotate 'line', 967
    find_lex $P853, "@words"
    unless_null $P853, vivify_587
    $P853 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    set $N854, $P853
    isne $I855, $N854, 1.0
    if $I855, if_852
.annotate 'line', 972
    find_lex $P875, "@words"
    unless_null $P875, vivify_588
    $P875 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P876, $P875[0]
    unless_null $P876, vivify_589
    new $P876, "Undef"
  vivify_589:
    set $S877, $P876
    new $P878, 'String'
    set $P878, $S877
    store_lex "$past", $P878
.annotate 'line', 971
    set $P851, $P878
.annotate 'line', 967
    goto if_852_end
  if_852:
.annotate 'line', 968
    get_hll_global $P856, "GLOBAL"
    nqp_get_package_through_who $P857, $P856, "PAST"
    get_who $P858, $P857
    set $P859, $P858["Op"]
    find_lex $P860, "$/"
    unless_null $P860, vivify_590
    new $P860, "Undef"
  vivify_590:
    $P861 = $P859."new"("list" :named("pasttype"), $P860 :named("node"))
    store_lex "$past", $P861
.annotate 'line', 969
    find_lex $P863, "@words"
    unless_null $P863, vivify_591
    $P863 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I864, $P863
    unless $I864, for_undef_592
    iter $P862, $P863
    new $P873, 'ExceptionHandler'
    set_label $P873, loop872_handler
    $P873."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P873
  loop872_test:
    unless $P862, loop872_done
    shift $P865, $P862
  loop872_redo:
    .const 'Sub' $P867 = "144_1307873286.70277" 
    capture_lex $P867
    $P867($P865)
  loop872_next:
    goto loop872_test
  loop872_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P874, exception, 'type'
    eq $P874, .CONTROL_LOOP_NEXT, loop872_next
    eq $P874, .CONTROL_LOOP_REDO, loop872_redo
  loop872_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 967
    set $P851, $P862
  if_852_end:
.annotate 'line', 965
    .return ($P851)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block866"  :anon :subid("144_1307873286.70277") :outer("143_1307873286.70277")
    .param pmc param_868
.annotate 'line', 969
    .lex "$_", param_868
    find_lex $P869, "$past"
    unless_null $P869, vivify_593
    new $P869, "Undef"
  vivify_593:
    find_lex $P870, "$_"
    unless_null $P870, vivify_594
    new $P870, "Undef"
  vivify_594:
    $P871 = $P869."push"($P870)
    .return ($P871)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("145_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_898
    .param pmc param_899
.annotate 'line', 982
    .const 'Sub' $P911 = "146_1307873286.70277" 
    capture_lex $P911
    .lex "self", param_898
    .lex "$/", param_899
.annotate 'line', 983
    $P900 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P900
.annotate 'line', 984
    new $P901, "Undef"
    .lex "$lastlit", $P901
.annotate 'line', 1000
    new $P902, "Undef"
    .lex "$past", $P902
.annotate 'line', 982
    find_lex $P903, "@parts"
    unless_null $P903, vivify_599
    $P903 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
.annotate 'line', 984
    new $P904, "String"
    assign $P904, ""
    store_lex "$lastlit", $P904
.annotate 'line', 985
    find_lex $P906, "$/"
    unless_null $P906, vivify_600
    $P906 = root_new ['parrot';'Hash']
  vivify_600:
    set $P907, $P906["quote_atom"]
    unless_null $P907, vivify_601
    new $P907, "Undef"
  vivify_601:
    defined $I908, $P907
    unless $I908, for_undef_602
    iter $P905, $P907
    new $P950, 'ExceptionHandler'
    set_label $P950, loop949_handler
    $P950."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P950
  loop949_test:
    unless $P905, loop949_done
    shift $P909, $P905
  loop949_redo:
    .const 'Sub' $P911 = "146_1307873286.70277" 
    capture_lex $P911
    $P911($P909)
  loop949_next:
    goto loop949_test
  loop949_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P951, exception, 'type'
    eq $P951, .CONTROL_LOOP_NEXT, loop949_next
    eq $P951, .CONTROL_LOOP_REDO, loop949_redo
  loop949_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 999
    find_lex $P953, "$lastlit"
    unless_null $P953, vivify_615
    new $P953, "Undef"
  vivify_615:
    set $S954, $P953
    isgt $I955, $S954, ""
    unless $I955, if_952_end
    find_lex $P956, "@parts"
    unless_null $P956, vivify_616
    $P956 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    find_lex $P957, "$lastlit"
    unless_null $P957, vivify_617
    new $P957, "Undef"
  vivify_617:
    $P956."push"($P957)
  if_952_end:
.annotate 'line', 1000
    find_lex $P960, "@parts"
    unless_null $P960, vivify_618
    $P960 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    if $P960, if_959
    new $P963, "String"
    assign $P963, ""
    set $P958, $P963
    goto if_959_end
  if_959:
    find_lex $P961, "@parts"
    unless_null $P961, vivify_619
    $P961 = root_new ['parrot';'ResizablePMCArray']
  vivify_619:
    $P962 = $P961."shift"()
    set $P958, $P962
  if_959_end:
    store_lex "$past", $P958
.annotate 'line', 1001
    new $P974, 'ExceptionHandler'
    set_label $P974, loop973_handler
    $P974."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P974
  loop973_test:
    find_lex $P964, "@parts"
    unless_null $P964, vivify_620
    $P964 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    unless $P964, loop973_done
  loop973_redo:
.annotate 'line', 1002
    get_hll_global $P965, "GLOBAL"
    nqp_get_package_through_who $P966, $P965, "PAST"
    get_who $P967, $P966
    set $P968, $P967["Op"]
    find_lex $P969, "$past"
    unless_null $P969, vivify_621
    new $P969, "Undef"
  vivify_621:
    find_lex $P970, "@parts"
    unless_null $P970, vivify_622
    $P970 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    $P971 = $P970."shift"()
    $P972 = $P968."new"($P969, $P971, "concat" :named("pirop"))
    store_lex "$past", $P972
  loop973_next:
.annotate 'line', 1001
    goto loop973_test
  loop973_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P975, exception, 'type'
    eq $P975, .CONTROL_LOOP_NEXT, loop973_next
    eq $P975, .CONTROL_LOOP_REDO, loop973_redo
  loop973_done:
    pop_eh 
.annotate 'line', 1004
    find_lex $P976, "$/"
    find_lex $P977, "$past"
    unless_null $P977, vivify_623
    new $P977, "Undef"
  vivify_623:
    $P978 = $P976."!make"($P977)
.annotate 'line', 982
    .return ($P978)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block910"  :anon :subid("146_1307873286.70277") :outer("145_1307873286.70277")
    .param pmc param_913
.annotate 'line', 986
    new $P912, "Undef"
    .lex "$ast", $P912
    .lex "$_", param_913
    find_lex $P914, "$_"
    unless_null $P914, vivify_603
    new $P914, "Undef"
  vivify_603:
    $P915 = $P914."ast"()
    store_lex "$ast", $P915
.annotate 'line', 987
    get_hll_global $P918, "GLOBAL"
    nqp_get_package_through_who $P919, $P918, "PAST"
    get_who $P920, $P919
    set $P921, $P920["Node"]
    find_lex $P922, "$ast"
    unless_null $P922, vivify_604
    new $P922, "Undef"
  vivify_604:
    $P923 = $P921."ACCEPTS"($P922)
    isfalse $I924, $P923
    if $I924, if_917
.annotate 'line', 990
    find_lex $P930, "$ast"
    unless_null $P930, vivify_605
    new $P930, "Undef"
  vivify_605:
    get_hll_global $P931, "GLOBAL"
    nqp_get_package_through_who $P932, $P931, "PAST"
    get_who $P933, $P932
    set $P934, $P933["Val"]
    $P935 = $P930."isa"($P934)
    if $P935, if_929
.annotate 'line', 994
    find_lex $P941, "$lastlit"
    unless_null $P941, vivify_606
    new $P941, "Undef"
  vivify_606:
    set $S942, $P941
    isgt $I943, $S942, ""
    unless $I943, if_940_end
    find_lex $P944, "@parts"
    unless_null $P944, vivify_607
    $P944 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    find_lex $P945, "$lastlit"
    unless_null $P945, vivify_608
    new $P945, "Undef"
  vivify_608:
    $P944."push"($P945)
  if_940_end:
.annotate 'line', 995
    find_lex $P946, "@parts"
    unless_null $P946, vivify_609
    $P946 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    find_lex $P947, "$ast"
    unless_null $P947, vivify_610
    new $P947, "Undef"
  vivify_610:
    $P946."push"($P947)
.annotate 'line', 996
    new $P948, "String"
    assign $P948, ""
    store_lex "$lastlit", $P948
.annotate 'line', 993
    set $P928, $P948
.annotate 'line', 990
    goto if_929_end
  if_929:
.annotate 'line', 991
    find_lex $P936, "$lastlit"
    unless_null $P936, vivify_611
    new $P936, "Undef"
  vivify_611:
    find_lex $P937, "$ast"
    unless_null $P937, vivify_612
    new $P937, "Undef"
  vivify_612:
    $S938 = $P937."value"()
    concat $P939, $P936, $S938
    store_lex "$lastlit", $P939
.annotate 'line', 990
    set $P928, $P939
  if_929_end:
    set $P916, $P928
.annotate 'line', 987
    goto if_917_end
  if_917:
.annotate 'line', 988
    find_lex $P925, "$lastlit"
    unless_null $P925, vivify_613
    new $P925, "Undef"
  vivify_613:
    find_lex $P926, "$ast"
    unless_null $P926, vivify_614
    new $P926, "Undef"
  vivify_614:
    concat $P927, $P925, $P926
    store_lex "$lastlit", $P927
.annotate 'line', 987
    set $P916, $P927
  if_917_end:
.annotate 'line', 985
    .return ($P916)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("147_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_980
    .param pmc param_981
.annotate 'line', 1007
    .lex "self", param_980
    .lex "$/", param_981
.annotate 'line', 1008
    find_lex $P982, "$/"
    find_lex $P985, "$/"
    unless_null $P985, vivify_624
    $P985 = root_new ['parrot';'Hash']
  vivify_624:
    set $P986, $P985["quote_escape"]
    unless_null $P986, vivify_625
    new $P986, "Undef"
  vivify_625:
    if $P986, if_984
    find_lex $P990, "$/"
    unless_null $P990, vivify_626
    new $P990, "Undef"
  vivify_626:
    set $S991, $P990
    new $P983, 'String'
    set $P983, $S991
    goto if_984_end
  if_984:
    find_lex $P987, "$/"
    unless_null $P987, vivify_627
    $P987 = root_new ['parrot';'Hash']
  vivify_627:
    set $P988, $P987["quote_escape"]
    unless_null $P988, vivify_628
    new $P988, "Undef"
  vivify_628:
    $P989 = $P988."ast"()
    set $P983, $P989
  if_984_end:
    $P992 = $P982."!make"($P983)
.annotate 'line', 1007
    .return ($P992)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("148_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_994
    .param pmc param_995
.annotate 'line', 1011
    .lex "self", param_994
    .lex "$/", param_995
    find_lex $P996, "$/"
    $P997 = $P996."!make"("\\")
    .return ($P997)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("149_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_999
    .param pmc param_1000
.annotate 'line', 1012
    .lex "self", param_999
    .lex "$/", param_1000
    find_lex $P1001, "$/"
    find_lex $P1002, "$/"
    unless_null $P1002, vivify_629
    $P1002 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1003, $P1002["stopper"]
    unless_null $P1003, vivify_630
    new $P1003, "Undef"
  vivify_630:
    set $S1004, $P1003
    $P1005 = $P1001."!make"($S1004)
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("150_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1007
    .param pmc param_1008
.annotate 'line', 1014
    .lex "self", param_1007
    .lex "$/", param_1008
    find_lex $P1009, "$/"
    $P1010 = $P1009."!make"("\b")
    .return ($P1010)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("151_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1012
    .param pmc param_1013
.annotate 'line', 1015
    .lex "self", param_1012
    .lex "$/", param_1013
    find_lex $P1014, "$/"
    $P1015 = $P1014."!make"("\n")
    .return ($P1015)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("152_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1017
    .param pmc param_1018
.annotate 'line', 1016
    .lex "self", param_1017
    .lex "$/", param_1018
    find_lex $P1019, "$/"
    $P1020 = $P1019."!make"("\r")
    .return ($P1020)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("153_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1022
    .param pmc param_1023
.annotate 'line', 1017
    .lex "self", param_1022
    .lex "$/", param_1023
    find_lex $P1024, "$/"
    $P1025 = $P1024."!make"("\t")
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("154_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1027
    .param pmc param_1028
.annotate 'line', 1018
    .lex "self", param_1027
    .lex "$/", param_1028
    find_lex $P1029, "$/"
    $P1030 = $P1029."!make"("\f")
    .return ($P1030)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("155_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1032
    .param pmc param_1033
.annotate 'line', 1019
    .lex "self", param_1032
    .lex "$/", param_1033
    find_lex $P1034, "$/"
    $P1035 = $P1034."!make"("\e")
    .return ($P1035)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("156_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1037
    .param pmc param_1038
.annotate 'line', 1021
    .lex "self", param_1037
    .lex "$/", param_1038
.annotate 'line', 1022
    find_lex $P1039, "$/"
    find_lex $P1042, "$/"
    unless_null $P1042, vivify_631
    $P1042 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1043, $P1042["hexint"]
    unless_null $P1043, vivify_632
    new $P1043, "Undef"
  vivify_632:
    if $P1043, if_1041
    find_lex $P1046, "$/"
    unless_null $P1046, vivify_633
    $P1046 = root_new ['parrot';'Hash']
  vivify_633:
    set $P1047, $P1046["hexints"]
    unless_null $P1047, vivify_634
    $P1047 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1048, $P1047["hexint"]
    unless_null $P1048, vivify_635
    new $P1048, "Undef"
  vivify_635:
    set $P1040, $P1048
    goto if_1041_end
  if_1041:
    find_lex $P1044, "$/"
    unless_null $P1044, vivify_636
    $P1044 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1045, $P1044["hexint"]
    unless_null $P1045, vivify_637
    new $P1045, "Undef"
  vivify_637:
    set $P1040, $P1045
  if_1041_end:
    $P1049 = "ints_to_string"($P1040)
    $P1050 = $P1039."!make"($P1049)
.annotate 'line', 1021
    .return ($P1050)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("157_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1052
    .param pmc param_1053
.annotate 'line', 1025
    .lex "self", param_1052
    .lex "$/", param_1053
.annotate 'line', 1026
    find_lex $P1054, "$/"
    find_lex $P1057, "$/"
    unless_null $P1057, vivify_638
    $P1057 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1058, $P1057["octint"]
    unless_null $P1058, vivify_639
    new $P1058, "Undef"
  vivify_639:
    if $P1058, if_1056
    find_lex $P1061, "$/"
    unless_null $P1061, vivify_640
    $P1061 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1062, $P1061["octints"]
    unless_null $P1062, vivify_641
    $P1062 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1063, $P1062["octint"]
    unless_null $P1063, vivify_642
    new $P1063, "Undef"
  vivify_642:
    set $P1055, $P1063
    goto if_1056_end
  if_1056:
    find_lex $P1059, "$/"
    unless_null $P1059, vivify_643
    $P1059 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1060, $P1059["octint"]
    unless_null $P1060, vivify_644
    new $P1060, "Undef"
  vivify_644:
    set $P1055, $P1060
  if_1056_end:
    $P1064 = "ints_to_string"($P1055)
    $P1065 = $P1054."!make"($P1064)
.annotate 'line', 1025
    .return ($P1065)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("158_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1067
    .param pmc param_1068
.annotate 'line', 1029
    .lex "self", param_1067
    .lex "$/", param_1068
.annotate 'line', 1030
    find_lex $P1069, "$/"
    find_lex $P1070, "$/"
    unless_null $P1070, vivify_645
    $P1070 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1071, $P1070["charspec"]
    unless_null $P1071, vivify_646
    new $P1071, "Undef"
  vivify_646:
    $P1072 = $P1071."ast"()
    $P1073 = $P1069."!make"($P1072)
.annotate 'line', 1029
    .return ($P1073)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("159_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1075
    .param pmc param_1076
.annotate 'line', 1033
    .lex "self", param_1075
    .lex "$/", param_1076
.annotate 'line', 1034
    find_lex $P1077, "$/"
    $P1078 = $P1077."!make"(unicode:"\x{0}")
.annotate 'line', 1033
    .return ($P1078)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("160_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1080
    .param pmc param_1081
.annotate 'line', 1037
    .lex "self", param_1080
    .lex "$/", param_1081
.annotate 'line', 1038
    find_lex $P1082, "$/"
    find_lex $P1085, "$/"
    unless_null $P1085, vivify_647
    $P1085 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1086, $P1085["textq"]
    unless_null $P1086, vivify_648
    new $P1086, "Undef"
  vivify_648:
    if $P1086, if_1084
    find_lex $P1092, "$/"
    unless_null $P1092, vivify_649
    $P1092 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1093, $P1092["textqq"]
    unless_null $P1093, vivify_650
    new $P1093, "Undef"
  vivify_650:
    $P1094 = $P1093."Str"()
    set $P1083, $P1094
    goto if_1084_end
  if_1084:
    new $P1087, "String"
    assign $P1087, "\\"
    find_lex $P1088, "$/"
    unless_null $P1088, vivify_651
    $P1088 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1089, $P1088["textq"]
    unless_null $P1089, vivify_652
    new $P1089, "Undef"
  vivify_652:
    $S1090 = $P1089."Str"()
    concat $P1091, $P1087, $S1090
    set $P1083, $P1091
  if_1084_end:
    $P1095 = $P1082."!make"($P1083)
.annotate 'line', 1037
    .return ($P1095)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("161_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1097
    .param pmc param_1098
.annotate 'line', 1041
    .lex "self", param_1097
    .lex "$/", param_1098
.annotate 'line', 1042
    new $P1099, "Undef"
    .lex "$codepoint", $P1099
.annotate 'line', 1043
    find_lex $P1102, "$/"
    unless_null $P1102, vivify_653
    $P1102 = root_new ['parrot';'Hash']
  vivify_653:
    set $P1103, $P1102["integer"]
    unless_null $P1103, vivify_654
    new $P1103, "Undef"
  vivify_654:
    if $P1103, if_1101
.annotate 'line', 1044
    find_lex $P1107, "$/"
    unless_null $P1107, vivify_655
    new $P1107, "Undef"
  vivify_655:
    set $S1108, $P1107
    find_codepoint $I1109, $S1108
    new $P1100, 'Integer'
    set $P1100, $I1109
.annotate 'line', 1043
    goto if_1101_end
  if_1101:
    find_lex $P1104, "$/"
    unless_null $P1104, vivify_656
    $P1104 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1105, $P1104["integer"]
    unless_null $P1105, vivify_657
    new $P1105, "Undef"
  vivify_657:
    $P1106 = $P1105."ast"()
    set $P1100, $P1106
  if_1101_end:
    store_lex "$codepoint", $P1100
.annotate 'line', 1045
    find_lex $P1111, "$codepoint"
    unless_null $P1111, vivify_658
    new $P1111, "Undef"
  vivify_658:
    set $N1112, $P1111
    islt $I1113, $N1112, 0.0
    unless $I1113, if_1110_end
    find_lex $P1114, "$/"
    unless_null $P1114, vivify_659
    new $P1114, "Undef"
  vivify_659:
    $P1115 = $P1114."CURSOR"()
    new $P1116, 'String'
    set $P1116, "Unrecognized character name "
    find_lex $P1117, "$/"
    unless_null $P1117, vivify_660
    new $P1117, "Undef"
  vivify_660:
    concat $P1118, $P1116, $P1117
    $P1115."panic"($P1118)
  if_1110_end:
.annotate 'line', 1046
    find_lex $P1119, "$/"
    find_lex $P1120, "$codepoint"
    unless_null $P1120, vivify_661
    new $P1120, "Undef"
  vivify_661:
    set $I1121, $P1120
    chr $S1122, $I1121
    $P1123 = $P1119."!make"($S1122)
.annotate 'line', 1041
    .return ($P1123)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("162_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1125
    .param pmc param_1126
.annotate 'line', 1049
    .const 'Sub' $P1135 = "163_1307873286.70277" 
    capture_lex $P1135
    .lex "self", param_1125
    .lex "$/", param_1126
.annotate 'line', 1050
    new $P1127, "Undef"
    .lex "$str", $P1127
    new $P1128, "String"
    assign $P1128, ""
    store_lex "$str", $P1128
.annotate 'line', 1051
    find_lex $P1130, "$/"
    unless_null $P1130, vivify_662
    $P1130 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1131, $P1130["charname"]
    unless_null $P1131, vivify_663
    new $P1131, "Undef"
  vivify_663:
    defined $I1132, $P1131
    unless $I1132, for_undef_664
    iter $P1129, $P1131
    new $P1142, 'ExceptionHandler'
    set_label $P1142, loop1141_handler
    $P1142."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1142
  loop1141_test:
    unless $P1129, loop1141_done
    shift $P1133, $P1129
  loop1141_redo:
    .const 'Sub' $P1135 = "163_1307873286.70277" 
    capture_lex $P1135
    $P1135($P1133)
  loop1141_next:
    goto loop1141_test
  loop1141_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1143, exception, 'type'
    eq $P1143, .CONTROL_LOOP_NEXT, loop1141_next
    eq $P1143, .CONTROL_LOOP_REDO, loop1141_redo
  loop1141_done:
    pop_eh 
  for_undef_664:
.annotate 'line', 1052
    find_lex $P1144, "$/"
    find_lex $P1145, "$str"
    unless_null $P1145, vivify_667
    new $P1145, "Undef"
  vivify_667:
    $P1146 = $P1144."!make"($P1145)
.annotate 'line', 1049
    .return ($P1146)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1134"  :anon :subid("163_1307873286.70277") :outer("162_1307873286.70277")
    .param pmc param_1136
.annotate 'line', 1051
    .lex "$_", param_1136
    find_lex $P1137, "$str"
    unless_null $P1137, vivify_665
    new $P1137, "Undef"
  vivify_665:
    find_lex $P1138, "$_"
    unless_null $P1138, vivify_666
    new $P1138, "Undef"
  vivify_666:
    $S1139 = $P1138."ast"()
    concat $P1140, $P1137, $S1139
    store_lex "$str", $P1140
    .return ($P1140)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("164_1307873286.70277") :outer("119_1307873286.70277")
    .param pmc param_1148
    .param pmc param_1149
.annotate 'line', 1055
    .lex "self", param_1148
    .lex "$/", param_1149
.annotate 'line', 1056
    find_lex $P1150, "$/"
    find_lex $P1153, "$/"
    unless_null $P1153, vivify_668
    $P1153 = root_new ['parrot';'Hash']
  vivify_668:
    set $P1154, $P1153["charnames"]
    unless_null $P1154, vivify_669
    new $P1154, "Undef"
  vivify_669:
    if $P1154, if_1152
    find_lex $P1158, "$/"
    unless_null $P1158, vivify_670
    new $P1158, "Undef"
  vivify_670:
    $I1159 = "string_to_int"($P1158, 10)
    chr $S1160, $I1159
    new $P1151, 'String'
    set $P1151, $S1160
    goto if_1152_end
  if_1152:
    find_lex $P1155, "$/"
    unless_null $P1155, vivify_671
    $P1155 = root_new ['parrot';'Hash']
  vivify_671:
    set $P1156, $P1155["charnames"]
    unless_null $P1156, vivify_672
    new $P1156, "Undef"
  vivify_672:
    $P1157 = $P1156."ast"()
    set $P1151, $P1157
  if_1152_end:
    $P1161 = $P1150."!make"($P1151)
.annotate 'line', 1055
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1163"  :subid("165_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 1069
    .const 'Sub' $P2476 = "238_1307873286.70277" 
    capture_lex $P2476
    .const 'Sub' $P2423 = "236_1307873286.70277" 
    capture_lex $P2423
    .const 'Sub' $P2350 = "233_1307873286.70277" 
    capture_lex $P2350
    .const 'Sub' $P2320 = "231_1307873286.70277" 
    capture_lex $P2320
    .const 'Sub' $P2275 = "228_1307873286.70277" 
    capture_lex $P2275
    .const 'Sub' $P2240 = "227_1307873286.70277" 
    capture_lex $P2240
    .const 'Sub' $P2230 = "226_1307873286.70277" 
    capture_lex $P2230
    .const 'Sub' $P2201 = "224_1307873286.70277" 
    capture_lex $P2201
    .const 'Sub' $P2192 = "223_1307873286.70277" 
    capture_lex $P2192
    .const 'Sub' $P2181 = "222_1307873286.70277" 
    capture_lex $P2181
    .const 'Sub' $P2172 = "221_1307873286.70277" 
    capture_lex $P2172
    .const 'Sub' $P2164 = "220_1307873286.70277" 
    capture_lex $P2164
    .const 'Sub' $P2160 = "219_1307873286.70277" 
    capture_lex $P2160
    .const 'Sub' $P2094 = "216_1307873286.70277" 
    capture_lex $P2094
    .const 'Sub' $P2026 = "214_1307873286.70277" 
    capture_lex $P2026
    .const 'Sub' $P1929 = "210_1307873286.70277" 
    capture_lex $P1929
    .const 'Sub' $P1889 = "207_1307873286.70277" 
    capture_lex $P1889
    .const 'Sub' $P1837 = "205_1307873286.70277" 
    capture_lex $P1837
    .const 'Sub' $P1824 = "204_1307873286.70277" 
    capture_lex $P1824
    .const 'Sub' $P1811 = "203_1307873286.70277" 
    capture_lex $P1811
    .const 'Sub' $P1798 = "202_1307873286.70277" 
    capture_lex $P1798
    .const 'Sub' $P1785 = "201_1307873286.70277" 
    capture_lex $P1785
    .const 'Sub' $P1772 = "200_1307873286.70277" 
    capture_lex $P1772
    .const 'Sub' $P1759 = "199_1307873286.70277" 
    capture_lex $P1759
    .const 'Sub' $P1746 = "198_1307873286.70277" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "197_1307873286.70277" 
    capture_lex $P1733
    .const 'Sub' $P1728 = "196_1307873286.70277" 
    capture_lex $P1728
    .const 'Sub' $P1724 = "195_1307873286.70277" 
    capture_lex $P1724
    .const 'Sub' $P1684 = "193_1307873286.70277" 
    capture_lex $P1684
    .const 'Sub' $P1526 = "186_1307873286.70277" 
    capture_lex $P1526
    .const 'Sub' $P1511 = "185_1307873286.70277" 
    capture_lex $P1511
    .const 'Sub' $P1418 = "180_1307873286.70277" 
    capture_lex $P1418
    .const 'Sub' $P1385 = "178_1307873286.70277" 
    capture_lex $P1385
    .const 'Sub' $P1380 = "177_1307873286.70277" 
    capture_lex $P1380
    .const 'Sub' $P1374 = "176_1307873286.70277" 
    capture_lex $P1374
    .const 'Sub' $P1359 = "175_1307873286.70277" 
    capture_lex $P1359
    .const 'Sub' $P1344 = "174_1307873286.70277" 
    capture_lex $P1344
    .const 'Sub' $P1257 = "171_1307873286.70277" 
    capture_lex $P1257
    .const 'Sub' $P1212 = "169_1307873286.70277" 
    capture_lex $P1212
    .const 'Sub' $P1205 = "168_1307873286.70277" 
    capture_lex $P1205
    .const 'Sub' $P1182 = "167_1307873286.70277" 
    capture_lex $P1182
    .const 'Sub' $P1165 = "166_1307873286.70277" 
    capture_lex $P1165
.annotate 'line', 1128
    .const 'Sub' $P1165 = "166_1307873286.70277" 
    newclosure $P1178, $P1165
    .lex "value_type", $P1178
.annotate 'line', 1069
    .lex "$?PACKAGE", $P1179
    .lex "$?CLASS", $P1180
.annotate 'line', 1092
    .const 'Sub' $P1182 = "167_1307873286.70277" 
    capture_lex $P1182
    $P1182()
.annotate 'line', 1069
    find_lex $P1196, "$?PACKAGE"
    get_who $P1197, $P1196
    set $P1198, $P1197["$interactive_ctx"]
    unless_null $P1198, vivify_679
    new $P1198, "Undef"
  vivify_679:
    find_lex $P1199, "$?PACKAGE"
    get_who $P1200, $P1199
    set $P1201, $P1200["%interactive_pad"]
    unless_null $P1201, vivify_680
    $P1201 = root_new ['parrot';'Hash']
  vivify_680:
    find_lex $P1202, "$?PACKAGE"
    get_who $P1203, $P1202
    set $P1204, $P1203["%parrot_config"]
    unless_null $P1204, vivify_681
    $P1204 = root_new ['parrot';'Hash']
  vivify_681:
.annotate 'line', 1110
    find_lex $P1256, "value_type"
.annotate 'line', 1726
    .const 'Sub' $P2476 = "238_1307873286.70277" 
    newclosure $P2482, $P2476
.annotate 'line', 1069
    .return ($P2482)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1166
.annotate 'line', 1128
    .lex "$value", param_1166
.annotate 'line', 1129
    find_lex $P1169, "$value"
    unless_null $P1169, vivify_673
    new $P1169, "Undef"
  vivify_673:
    isa $I1170, $P1169, "NameSpace"
    if $I1170, if_1168
.annotate 'line', 1131
    find_lex $P1174, "$value"
    unless_null $P1174, vivify_674
    new $P1174, "Undef"
  vivify_674:
    isa $I1175, $P1174, "Sub"
    if $I1175, if_1173
    new $P1177, "String"
    assign $P1177, "var"
    set $P1172, $P1177
    goto if_1173_end
  if_1173:
    new $P1176, "String"
    assign $P1176, "sub"
    set $P1172, $P1176
  if_1173_end:
    set $P1167, $P1172
.annotate 'line', 1129
    goto if_1168_end
  if_1168:
    new $P1171, "String"
    assign $P1171, "namespace"
    set $P1167, $P1171
  if_1168_end:
.annotate 'line', 1128
    .return ($P1167)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1181"  :anon :subid("167_1307873286.70277") :outer("165_1307873286.70277")
.annotate 'line', 1097
    $P1183 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1183
.annotate 'line', 1094
    getinterp $P1184
    set $P1185, $P1184["context"]
    unless_null $P1185, vivify_675
    new $P1185, "Undef"
  vivify_675:
    find_lex $P1186, "$?PACKAGE"
    get_who $P1187, $P1186
    set $P1187["$interactive_ctx"], $P1185
    find_lex $P1188, "%pad_contents"
    unless_null $P1188, vivify_676
    $P1188 = root_new ['parrot';'Hash']
  vivify_676:
.annotate 'line', 1099
    find_lex $P1189, "$?PACKAGE"
    get_who $P1190, $P1189
    set $P1191, $P1190["$interactive_ctx"]
    unless_null $P1191, vivify_677
    new $P1191, "Undef"
  vivify_677:
    getattribute $P1192, $P1191, "lex_pad"
    find_lex $P1193, "%pad_contents"
    unless_null $P1193, vivify_678
    $P1193 = root_new ['parrot';'Hash']
  vivify_678:
    copy $P1192, $P1193
.annotate 'line', 1098
    find_lex $P1194, "$?PACKAGE"
    get_who $P1195, $P1194
    set $P1195["%interactive_pad"], $P1192
.annotate 'line', 1092
    .return ($P1192)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("168_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1206
.annotate 'line', 1104
    .lex "self", param_1206
.annotate 'line', 1105
    new $P1207, "Undef"
    .lex "$obj", $P1207
    find_lex $P1208, "self"
    repr_instance_of $P1209, $P1208
    store_lex "$obj", $P1209
.annotate 'line', 1106
    find_lex $P1210, "$obj"
    unless_null $P1210, vivify_682
    new $P1210, "Undef"
  vivify_682:
    $P1210."BUILD"()
    find_lex $P1211, "$obj"
    unless_null $P1211, vivify_683
    new $P1211, "Undef"
  vivify_683:
.annotate 'line', 1104
    .return ($P1211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("169_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1213
.annotate 'line', 1110
    .const 'Sub' $P1231 = "170_1307873286.70277" 
    capture_lex $P1231
    .lex "self", param_1213
.annotate 'line', 1120
    new $P1214, "Undef"
    .lex "$config_hash_idx", $P1214
.annotate 'line', 1112
    split $P1215, " ", "parse past post pir evalpmc"
    find_lex $P1216, "self"
    find_lex $P1217, "$?CLASS"
    setattribute $P1216, $P1217, "@!stages", $P1215
.annotate 'line', 1115
    split $P1218, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-backtrace"
    find_lex $P1219, "self"
    find_lex $P1220, "$?CLASS"
    setattribute $P1219, $P1220, "@!cmdoptions", $P1218
.annotate 'line', 1116
    new $P1221, "String"
    assign $P1221, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1222, "self"
    find_lex $P1223, "$?CLASS"
    setattribute $P1222, $P1223, "$!usage", $P1221
.annotate 'line', 1117
    find_lex $P1225, "self"
    find_lex $P1226, "$?CLASS"
    getattribute $P1227, $P1225, $P1226, "@!cmdoptions"
    unless_null $P1227, vivify_684
    $P1227 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    defined $I1228, $P1227
    unless $I1228, for_undef_685
    iter $P1224, $P1227
    new $P1244, 'ExceptionHandler'
    set_label $P1244, loop1243_handler
    $P1244."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1244
  loop1243_test:
    unless $P1224, loop1243_done
    shift $P1229, $P1224
  loop1243_redo:
    .const 'Sub' $P1231 = "170_1307873286.70277" 
    capture_lex $P1231
    $P1231($P1229)
  loop1243_next:
    goto loop1243_test
  loop1243_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1245, exception, 'type'
    eq $P1245, .CONTROL_LOOP_NEXT, loop1243_next
    eq $P1245, .CONTROL_LOOP_REDO, loop1243_redo
  loop1243_done:
    pop_eh 
  for_undef_685:
.annotate 'line', 1120

            .include 'iglobals.pasm'
            $P1246 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1246
.annotate 'line', 1124
    find_lex $P1247, "$config_hash_idx"
    unless_null $P1247, vivify_688
    new $P1247, "Undef"
  vivify_688:
    set $I1248, $P1247
    getinterp $P1249
    set $P1250, $P1249[$I1248]
    unless_null $P1250, vivify_689
    new $P1250, "Undef"
  vivify_689:
    find_lex $P1251, "$?PACKAGE"
    get_who $P1252, $P1251
    set $P1252["%parrot_config"], $P1250
.annotate 'line', 1125
    new $P1253, "Hash"
    find_lex $P1254, "self"
    find_lex $P1255, "$?CLASS"
    setattribute $P1254, $P1255, "%!config", $P1253
.annotate 'line', 1110
    .return ($P1253)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1230"  :anon :subid("170_1307873286.70277") :outer("169_1307873286.70277")
    .param pmc param_1232
.annotate 'line', 1117
    .lex "$_", param_1232
.annotate 'line', 1118
    find_lex $P1233, "self"
    find_lex $P1234, "$?CLASS"
    getattribute $P1235, $P1233, $P1234, "$!usage"
    unless_null $P1235, vivify_686
    new $P1235, "Undef"
  vivify_686:
    new $P1236, 'String'
    set $P1236, "    "
    find_lex $P1237, "$_"
    unless_null $P1237, vivify_687
    new $P1237, "Undef"
  vivify_687:
    concat $P1238, $P1236, $P1237
    concat $P1239, $P1238, "\n"
    concat $P1240, $P1235, $P1239
    find_lex $P1241, "self"
    find_lex $P1242, "$?CLASS"
    setattribute $P1241, $P1242, "$!usage", $P1240
.annotate 'line', 1117
    .return ($P1240)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("171_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1258
    .param pmc param_1259
    .param pmc param_1262 :slurpy
    .param pmc param_1260 :optional :named("tagset")
    .param int has_param_1260 :opt_flag
.annotate 'line', 1134
    .const 'Sub' $P1328 = "173_1307873286.70277" 
    capture_lex $P1328
    .const 'Sub' $P1307 = "172_1307873286.70277" 
    capture_lex $P1307
    .lex "self", param_1258
    .lex "$module", param_1259
    if has_param_1260, optparam_690
    new $P1261, "Undef"
    set param_1260, $P1261
  optparam_690:
    .lex "$tagset", param_1260
    .lex "@symbols", param_1262
.annotate 'line', 1141
    $P1263 = root_new ['parrot';'Hash']
    .lex "%exports", $P1263
.annotate 'line', 1142
    $P1264 = root_new ['parrot';'Hash']
    .lex "%source", $P1264
.annotate 'line', 1136
    find_lex $P1266, "$module"
    unless_null $P1266, vivify_691
    new $P1266, "Undef"
  vivify_691:
    does $I1267, $P1266, "hash"
    new $P1268, 'Integer'
    set $P1268, $I1267
    isfalse $I1269, $P1268
    unless $I1269, if_1265_end
.annotate 'line', 1137
    find_lex $P1270, "self"
    find_lex $P1271, "$module"
    unless_null $P1271, vivify_692
    new $P1271, "Undef"
  vivify_692:
    $P1272 = $P1270."get_module"($P1271)
    store_lex "$module", $P1272
  if_1265_end:
.annotate 'line', 1140
    find_lex $P1274, "$tagset"
    unless_null $P1274, vivify_693
    new $P1274, "Undef"
  vivify_693:
    set $P1273, $P1274
    defined $I1276, $P1273
    if $I1276, default_1275
    find_lex $P1279, "@symbols"
    unless_null $P1279, vivify_694
    $P1279 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    if $P1279, if_1278
    new $P1281, "String"
    assign $P1281, "DEFAULT"
    set $P1277, $P1281
    goto if_1278_end
  if_1278:
    new $P1280, "String"
    assign $P1280, "ALL"
    set $P1277, $P1280
  if_1278_end:
    set $P1273, $P1277
  default_1275:
    store_lex "$tagset", $P1273
    find_lex $P1282, "%exports"
    unless_null $P1282, vivify_695
    $P1282 = root_new ['parrot';'Hash']
  vivify_695:
.annotate 'line', 1142
    find_lex $P1283, "$tagset"
    unless_null $P1283, vivify_696
    new $P1283, "Undef"
  vivify_696:
    set $S1284, $P1283
    find_lex $P1285, "$module"
    unless_null $P1285, vivify_697
    $P1285 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1286, $P1285["EXPORT"]
    unless_null $P1286, vivify_698
    $P1286 = root_new ['parrot';'Hash']
  vivify_698:
    set $P1287, $P1286[$S1284]
    unless_null $P1287, vivify_699
    new $P1287, "Undef"
  vivify_699:
    store_lex "%source", $P1287
.annotate 'line', 1143
    find_lex $P1289, "%source"
    unless_null $P1289, vivify_700
    $P1289 = root_new ['parrot';'Hash']
  vivify_700:
    defined $I1290, $P1289
    new $P1291, 'Integer'
    set $P1291, $I1290
    isfalse $I1292, $P1291
    unless $I1292, if_1288_end
.annotate 'line', 1144
    find_lex $P1295, "$tagset"
    unless_null $P1295, vivify_701
    new $P1295, "Undef"
  vivify_701:
    set $S1296, $P1295
    iseq $I1297, $S1296, "ALL"
    if $I1297, if_1294
    $P1299 = root_new ['parrot';'Hash']
    set $P1293, $P1299
    goto if_1294_end
  if_1294:
    find_lex $P1298, "$module"
    unless_null $P1298, vivify_702
    new $P1298, "Undef"
  vivify_702:
    set $P1293, $P1298
  if_1294_end:
    store_lex "%source", $P1293
  if_1288_end:
.annotate 'line', 1146
    find_lex $P1301, "@symbols"
    unless_null $P1301, vivify_703
    $P1301 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    if $P1301, if_1300
.annotate 'line', 1153
    find_lex $P1324, "%source"
    unless_null $P1324, vivify_704
    $P1324 = root_new ['parrot';'Hash']
  vivify_704:
    defined $I1325, $P1324
    unless $I1325, for_undef_705
    iter $P1323, $P1324
    new $P1341, 'ExceptionHandler'
    set_label $P1341, loop1340_handler
    $P1341."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1341
  loop1340_test:
    unless $P1323, loop1340_done
    shift $P1326, $P1323
  loop1340_redo:
    .const 'Sub' $P1328 = "173_1307873286.70277" 
    capture_lex $P1328
    $P1328($P1326)
  loop1340_next:
    goto loop1340_test
  loop1340_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1342, exception, 'type'
    eq $P1342, .CONTROL_LOOP_NEXT, loop1340_next
    eq $P1342, .CONTROL_LOOP_REDO, loop1340_redo
  loop1340_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 1152
    goto if_1300_end
  if_1300:
.annotate 'line', 1147
    find_lex $P1303, "@symbols"
    unless_null $P1303, vivify_712
    $P1303 = root_new ['parrot';'ResizablePMCArray']
  vivify_712:
    defined $I1304, $P1303
    unless $I1304, for_undef_713
    iter $P1302, $P1303
    new $P1321, 'ExceptionHandler'
    set_label $P1321, loop1320_handler
    $P1321."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1321
  loop1320_test:
    unless $P1302, loop1320_done
    shift $P1305, $P1302
  loop1320_redo:
    .const 'Sub' $P1307 = "172_1307873286.70277" 
    capture_lex $P1307
    $P1307($P1305)
  loop1320_next:
    goto loop1320_test
  loop1320_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1322, exception, 'type'
    eq $P1322, .CONTROL_LOOP_NEXT, loop1320_next
    eq $P1322, .CONTROL_LOOP_REDO, loop1320_redo
  loop1320_done:
    pop_eh 
  for_undef_713:
  if_1300_end:
.annotate 'line', 1146
    find_lex $P1343, "%exports"
    unless_null $P1343, vivify_722
    $P1343 = root_new ['parrot';'Hash']
  vivify_722:
.annotate 'line', 1134
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1327"  :anon :subid("173_1307873286.70277") :outer("171_1307873286.70277")
    .param pmc param_1330
.annotate 'line', 1154
    new $P1329, "Undef"
    .lex "$value", $P1329
    .lex "$_", param_1330
    find_lex $P1331, "$_"
    unless_null $P1331, vivify_706
    new $P1331, "Undef"
  vivify_706:
    $P1332 = $P1331."value"()
    store_lex "$value", $P1332
.annotate 'line', 1155
    find_lex $P1333, "$value"
    unless_null $P1333, vivify_707
    new $P1333, "Undef"
  vivify_707:
    find_lex $P1334, "$_"
    unless_null $P1334, vivify_708
    new $P1334, "Undef"
  vivify_708:
    $P1335 = $P1334."key"()
    find_lex $P1336, "$value"
    unless_null $P1336, vivify_709
    new $P1336, "Undef"
  vivify_709:
    $P1337 = "value_type"($P1336)
    find_lex $P1338, "%exports"
    unless_null $P1338, vivify_710
    $P1338 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1338
  vivify_710:
    set $P1339, $P1338[$P1337]
    unless_null $P1339, vivify_711
    $P1339 = root_new ['parrot';'Hash']
    set $P1338[$P1337], $P1339
  vivify_711:
    set $P1339[$P1335], $P1333
.annotate 'line', 1153
    .return ($P1333)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1306"  :anon :subid("172_1307873286.70277") :outer("171_1307873286.70277")
    .param pmc param_1309
.annotate 'line', 1148
    new $P1308, "Undef"
    .lex "$value", $P1308
    .lex "$_", param_1309
    find_lex $P1310, "$_"
    unless_null $P1310, vivify_714
    new $P1310, "Undef"
  vivify_714:
    set $S1311, $P1310
    find_lex $P1312, "%source"
    unless_null $P1312, vivify_715
    $P1312 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1313, $P1312[$S1311]
    unless_null $P1313, vivify_716
    new $P1313, "Undef"
  vivify_716:
    store_lex "$value", $P1313
.annotate 'line', 1149
    find_lex $P1314, "$value"
    unless_null $P1314, vivify_717
    new $P1314, "Undef"
  vivify_717:
    find_lex $P1315, "$_"
    unless_null $P1315, vivify_718
    new $P1315, "Undef"
  vivify_718:
    find_lex $P1316, "$value"
    unless_null $P1316, vivify_719
    new $P1316, "Undef"
  vivify_719:
    $P1317 = "value_type"($P1316)
    find_lex $P1318, "%exports"
    unless_null $P1318, vivify_720
    $P1318 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1318
  vivify_720:
    set $P1319, $P1318[$P1317]
    unless_null $P1319, vivify_721
    $P1319 = root_new ['parrot';'Hash']
    set $P1318[$P1317], $P1319
  vivify_721:
    set $P1319[$P1315], $P1314
.annotate 'line', 1147
    .return ($P1314)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("174_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1345
    .param pmc param_1346
.annotate 'line', 1161
    .lex "self", param_1345
    .lex "$name", param_1346
.annotate 'line', 1162
    $P1347 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1347
    find_lex $P1348, "self"
    find_lex $P1349, "$name"
    unless_null $P1349, vivify_723
    new $P1349, "Undef"
  vivify_723:
    $P1350 = $P1348."parse_name"($P1349)
    store_lex "@name", $P1350
.annotate 'line', 1163
    find_lex $P1351, "@name"
    unless_null $P1351, vivify_724
    $P1351 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    find_lex $P1352, "self"
    find_lex $P1353, "$?CLASS"
    getattribute $P1354, $P1352, $P1353, "$!language"
    unless_null $P1354, vivify_725
    new $P1354, "Undef"
  vivify_725:
    set $S1355, $P1354
    downcase $S1356, $S1355
    $P1351."unshift"($S1356)
.annotate 'line', 1164
    find_lex $P1357, "@name"
    unless_null $P1357, vivify_726
    $P1357 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    get_root_namespace $P1358, $P1357
.annotate 'line', 1161
    .return ($P1358)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("175_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1360
    .param pmc param_1361 :optional
    .param int has_param_1361 :opt_flag
.annotate 'line', 1167
    .lex "self", param_1360
    if has_param_1361, optparam_727
    new $P1362, "Undef"
    set param_1361, $P1362
  optparam_727:
    .lex "$name", param_1361
.annotate 'line', 1168
    find_lex $P1364, "$name"
    unless_null $P1364, vivify_728
    new $P1364, "Undef"
  vivify_728:
    unless $P1364, if_1363_end
.annotate 'line', 1169
    find_lex $P1365, "$name"
    unless_null $P1365, vivify_729
    new $P1365, "Undef"
  vivify_729:
    find_lex $P1366, "self"
    find_lex $P1367, "$?CLASS"
    setattribute $P1366, $P1367, "$!language", $P1365
.annotate 'line', 1170
    find_lex $P1368, "$name"
    unless_null $P1368, vivify_730
    new $P1368, "Undef"
  vivify_730:
    set $S1369, $P1368
    find_lex $P1370, "self"
    compreg $S1369, $P1370
  if_1363_end:
.annotate 'line', 1168
    find_lex $P1371, "self"
    find_lex $P1372, "$?CLASS"
    getattribute $P1373, $P1371, $P1372, "$!language"
    unless_null $P1373, vivify_731
    new $P1373, "Undef"
  vivify_731:
.annotate 'line', 1167
    .return ($P1373)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("176_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1375
    .param pmc param_1376
.annotate 'line', 1175
    .lex "self", param_1375
    .lex "$name", param_1376
.annotate 'line', 1176
    find_lex $P1377, "$name"
    unless_null $P1377, vivify_732
    new $P1377, "Undef"
  vivify_732:
    set $S1378, $P1377
    compreg $P1379, $S1378
.annotate 'line', 1175
    .return ($P1379)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("177_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1381
.annotate 'line', 1179
    .lex "self", param_1381
    find_lex $P1382, "self"
    find_lex $P1383, "$?CLASS"
    getattribute $P1384, $P1382, $P1383, "%!config"
    unless_null $P1384, vivify_733
    $P1384 = root_new ['parrot';'Hash']
  vivify_733:
    .return ($P1384)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("178_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1386
    .param pmc param_1387
.annotate 'line', 1181
    .const 'Sub' $P1397 = "179_1307873286.70277" 
    capture_lex $P1397
    .lex "self", param_1386
    .lex "$name", param_1387
.annotate 'line', 1182
    new $P1388, "Undef"
    .lex "$base", $P1388
.annotate 'line', 1183
    new $P1389, "Undef"
    .lex "$loaded", $P1389
.annotate 'line', 1182
    find_lex $P1390, "self"
    find_lex $P1391, "$name"
    unless_null $P1391, vivify_734
    new $P1391, "Undef"
  vivify_734:
    $P1392 = $P1390."parse_name"($P1391)
    join $S1393, "/", $P1392
    new $P1394, 'String'
    set $P1394, $S1393
    store_lex "$base", $P1394
.annotate 'line', 1183
    new $P1395, "Integer"
    assign $P1395, 0
    store_lex "$loaded", $P1395
.annotate 'line', 1184
    .const 'Sub' $P1397 = "179_1307873286.70277" 
    capture_lex $P1397
    $P1397()
.annotate 'line', 1185
    find_lex $P1410, "$loaded"
    unless_null $P1410, vivify_736
    new $P1410, "Undef"
  vivify_736:
    if $P1410, unless_1409_end
    find_lex $P1411, "$base"
    unless_null $P1411, vivify_737
    new $P1411, "Undef"
  vivify_737:
    concat $P1412, $P1411, ".pir"
    set $S1413, $P1412
    load_bytecode $S1413
    new $P1414, "Integer"
    assign $P1414, 1
    store_lex "$loaded", $P1414
  unless_1409_end:
.annotate 'line', 1186
    find_lex $P1415, "self"
    find_lex $P1416, "$name"
    unless_null $P1416, vivify_738
    new $P1416, "Undef"
  vivify_738:
    $P1417 = $P1415."get_module"($P1416)
.annotate 'line', 1181
    .return ($P1417)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1396"  :anon :subid("179_1307873286.70277") :outer("178_1307873286.70277")
.annotate 'line', 1184
    new $P1404, 'ExceptionHandler'
    set_label $P1404, control_1403
    $P1404."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1404
    find_lex $P1398, "$base"
    unless_null $P1398, vivify_735
    new $P1398, "Undef"
  vivify_735:
    concat $P1399, $P1398, ".pbc"
    set $S1400, $P1399
    load_bytecode $S1400
    new $P1401, "Integer"
    assign $P1401, 1
    store_lex "$loaded", $P1401
    pop_eh 
    goto skip_handler_1402
  control_1403:
    .local pmc exception 
    .get_results (exception) 
    new $P1407, 'Integer'
    set $P1407, 1
    set exception["handled"], $P1407
    set $I1408, exception["handled"]
    ne $I1408, 1, nothandled_1406
  handled_1405:
    .return (exception)
  nothandled_1406:
    rethrow exception
  skip_handler_1402:
    .return ($P1401)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("180_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1419
    .param pmc param_1420
    .param pmc param_1421
.annotate 'line', 1189
    .const 'Sub' $P1427 = "181_1307873286.70277" 
    capture_lex $P1427
    .lex "self", param_1419
    .lex "$target", param_1420
    .lex "%exports", param_1421
.annotate 'line', 1190
    find_lex $P1423, "%exports"
    unless_null $P1423, vivify_739
    $P1423 = root_new ['parrot';'Hash']
  vivify_739:
    defined $I1424, $P1423
    unless $I1424, for_undef_740
    iter $P1422, $P1423
    new $P1509, 'ExceptionHandler'
    set_label $P1509, loop1508_handler
    $P1509."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1509
  loop1508_test:
    unless $P1422, loop1508_done
    shift $P1425, $P1422
  loop1508_redo:
    .const 'Sub' $P1427 = "181_1307873286.70277" 
    capture_lex $P1427
    $P1427($P1425)
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
  for_undef_740:
.annotate 'line', 1189
    .return ($P1422)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1426"  :anon :subid("181_1307873286.70277") :outer("180_1307873286.70277")
    .param pmc param_1430
.annotate 'line', 1190
    .const 'Sub' $P1497 = "184_1307873286.70277" 
    capture_lex $P1497
    .const 'Sub' $P1477 = "183_1307873286.70277" 
    capture_lex $P1477
    .const 'Sub' $P1448 = "182_1307873286.70277" 
    capture_lex $P1448
.annotate 'line', 1191
    new $P1428, "Undef"
    .lex "$type", $P1428
.annotate 'line', 1192
    $P1429 = root_new ['parrot';'Hash']
    .lex "%items", $P1429
    .lex "$_", param_1430
.annotate 'line', 1191
    find_lex $P1431, "$_"
    unless_null $P1431, vivify_741
    new $P1431, "Undef"
  vivify_741:
    $P1432 = $P1431."key"()
    store_lex "$type", $P1432
.annotate 'line', 1192
    find_lex $P1433, "$_"
    unless_null $P1433, vivify_742
    new $P1433, "Undef"
  vivify_742:
    $P1434 = $P1433."value"()
    store_lex "%items", $P1434
.annotate 'line', 1193
    find_lex $P1437, "self"
    new $P1438, 'String'
    set $P1438, "import_"
    find_lex $P1439, "$type"
    unless_null $P1439, vivify_743
    new $P1439, "Undef"
  vivify_743:
    concat $P1440, $P1438, $P1439
    set $S1441, $P1440
    can $I1442, $P1437, $S1441
    if $I1442, if_1436
.annotate 'line', 1196
    find_lex $P1466, "$target"
    unless_null $P1466, vivify_744
    new $P1466, "Undef"
  vivify_744:
    new $P1467, 'String'
    set $P1467, "add_"
    find_lex $P1468, "$type"
    unless_null $P1468, vivify_745
    new $P1468, "Undef"
  vivify_745:
    concat $P1469, $P1467, $P1468
    set $S1470, $P1469
    can $I1471, $P1466, $S1470
    if $I1471, if_1465
.annotate 'line', 1200
    find_lex $P1493, "%items"
    unless_null $P1493, vivify_746
    $P1493 = root_new ['parrot';'Hash']
  vivify_746:
    defined $I1494, $P1493
    unless $I1494, for_undef_747
    iter $P1492, $P1493
    new $P1506, 'ExceptionHandler'
    set_label $P1506, loop1505_handler
    $P1506."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1506
  loop1505_test:
    unless $P1492, loop1505_done
    shift $P1495, $P1492
  loop1505_redo:
    .const 'Sub' $P1497 = "184_1307873286.70277" 
    capture_lex $P1497
    $P1497($P1495)
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
  for_undef_747:
.annotate 'line', 1199
    set $P1464, $P1492
.annotate 'line', 1196
    goto if_1465_end
  if_1465:
.annotate 'line', 1197
    find_lex $P1473, "%items"
    unless_null $P1473, vivify_751
    $P1473 = root_new ['parrot';'Hash']
  vivify_751:
    defined $I1474, $P1473
    unless $I1474, for_undef_752
    iter $P1472, $P1473
    new $P1490, 'ExceptionHandler'
    set_label $P1490, loop1489_handler
    $P1490."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1490
  loop1489_test:
    unless $P1472, loop1489_done
    shift $P1475, $P1472
  loop1489_redo:
    .const 'Sub' $P1477 = "183_1307873286.70277" 
    capture_lex $P1477
    $P1477($P1475)
  loop1489_next:
    goto loop1489_test
  loop1489_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1491, exception, 'type'
    eq $P1491, .CONTROL_LOOP_NEXT, loop1489_next
    eq $P1491, .CONTROL_LOOP_REDO, loop1489_redo
  loop1489_done:
    pop_eh 
  for_undef_752:
.annotate 'line', 1196
    set $P1464, $P1472
  if_1465_end:
    set $P1435, $P1464
.annotate 'line', 1193
    goto if_1436_end
  if_1436:
.annotate 'line', 1194
    find_lex $P1444, "%items"
    unless_null $P1444, vivify_757
    $P1444 = root_new ['parrot';'Hash']
  vivify_757:
    defined $I1445, $P1444
    unless $I1445, for_undef_758
    iter $P1443, $P1444
    new $P1462, 'ExceptionHandler'
    set_label $P1462, loop1461_handler
    $P1462."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1462
  loop1461_test:
    unless $P1443, loop1461_done
    shift $P1446, $P1443
  loop1461_redo:
    .const 'Sub' $P1448 = "182_1307873286.70277" 
    capture_lex $P1448
    $P1448($P1446)
  loop1461_next:
    goto loop1461_test
  loop1461_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1463, exception, 'type'
    eq $P1463, .CONTROL_LOOP_NEXT, loop1461_next
    eq $P1463, .CONTROL_LOOP_REDO, loop1461_redo
  loop1461_done:
    pop_eh 
  for_undef_758:
.annotate 'line', 1193
    set $P1435, $P1443
  if_1436_end:
.annotate 'line', 1190
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1496"  :anon :subid("184_1307873286.70277") :outer("181_1307873286.70277")
    .param pmc param_1498
.annotate 'line', 1200
    .lex "$_", param_1498
    find_lex $P1499, "$_"
    unless_null $P1499, vivify_748
    new $P1499, "Undef"
  vivify_748:
    $P1500 = $P1499."value"()
    find_lex $P1501, "$_"
    unless_null $P1501, vivify_749
    new $P1501, "Undef"
  vivify_749:
    $P1502 = $P1501."key"()
    set $S1503, $P1502
    find_lex $P1504, "$target"
    unless_null $P1504, vivify_750
    $P1504 = root_new ['parrot';'Hash']
    store_lex "$target", $P1504
  vivify_750:
    set $P1504[$S1503], $P1500
    .return ($P1500)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1476"  :anon :subid("183_1307873286.70277") :outer("181_1307873286.70277")
    .param pmc param_1478
.annotate 'line', 1197
    .lex "$_", param_1478
    find_lex $P1479, "$target"
    unless_null $P1479, vivify_753
    new $P1479, "Undef"
  vivify_753:
    find_lex $P1480, "$_"
    unless_null $P1480, vivify_754
    new $P1480, "Undef"
  vivify_754:
    $P1481 = $P1480."key"()
    find_lex $P1482, "$_"
    unless_null $P1482, vivify_755
    new $P1482, "Undef"
  vivify_755:
    $P1483 = $P1482."value"()
    new $P1484, 'String'
    set $P1484, "add_"
    find_lex $P1485, "$type"
    unless_null $P1485, vivify_756
    new $P1485, "Undef"
  vivify_756:
    concat $P1486, $P1484, $P1485
    set $S1487, $P1486
    $P1488 = $P1479.$S1487($P1481, $P1483)
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1447"  :anon :subid("182_1307873286.70277") :outer("181_1307873286.70277")
    .param pmc param_1449
.annotate 'line', 1194
    .lex "$_", param_1449
    find_lex $P1450, "self"
    find_lex $P1451, "$target"
    unless_null $P1451, vivify_759
    new $P1451, "Undef"
  vivify_759:
    find_lex $P1452, "$_"
    unless_null $P1452, vivify_760
    new $P1452, "Undef"
  vivify_760:
    $P1453 = $P1452."key"()
    find_lex $P1454, "$_"
    unless_null $P1454, vivify_761
    new $P1454, "Undef"
  vivify_761:
    $P1455 = $P1454."value"()
    new $P1456, 'String'
    set $P1456, "import_"
    find_lex $P1457, "$type"
    unless_null $P1457, vivify_762
    new $P1457, "Undef"
  vivify_762:
    concat $P1458, $P1456, $P1457
    set $S1459, $P1458
    $P1460 = $P1450.$S1459($P1451, $P1453, $P1455)
    .return ($P1460)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("185_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 1205
    .lex "self", param_1512
    .lex "$value", param_1513
.annotate 'line', 1207
    getinterp $P1516
    $P1517 = $P1516."stdout_handle"()
    $N1518 = $P1517."tell"()
    find_dynamic_lex $P1521, "$*AUTOPRINTPOS"
    unless_null $P1521, vivify_763
    get_hll_global $P1519, "GLOBAL"
    get_who $P1520, $P1519
    set $P1521, $P1520["$AUTOPRINTPOS"]
    unless_null $P1521, vivify_764
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_764:
  vivify_763:
    set $N1522, $P1521
    isgt $I1523, $N1518, $N1522
    unless $I1523, unless_1515
    new $P1514, 'Integer'
    set $P1514, $I1523
    goto unless_1515_end
  unless_1515:
.annotate 'line', 1206
    find_lex $P1524, "$value"
    unless_null $P1524, vivify_765
    new $P1524, "Undef"
  vivify_765:
    set $S1525, $P1524
    say $S1525
  unless_1515_end:
.annotate 'line', 1205
    .return ($P1514)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("186_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1527
    .param pmc param_1528 :slurpy :named
.annotate 'line', 1210
    .const 'Sub' $P1560 = "187_1307873286.70277" 
    capture_lex $P1560
    .lex "self", param_1527
    .lex "%adverbs", param_1528
.annotate 'line', 1211
    new $P1529, "Undef"
    .lex "$target", $P1529
.annotate 'line', 1215
    new $P1530, "Undef"
    .lex "$stdin", $P1530
.annotate 'line', 1216
    new $P1531, "Undef"
    .lex "$encoding", $P1531
.annotate 'line', 1221
    new $P1532, "Undef"
    .lex "$save_ctx", $P1532
.annotate 'line', 1211
    find_lex $P1533, "%adverbs"
    unless_null $P1533, vivify_766
    $P1533 = root_new ['parrot';'Hash']
  vivify_766:
    set $P1534, $P1533["target"]
    unless_null $P1534, vivify_767
    new $P1534, "Undef"
  vivify_767:
    set $S1535, $P1534
    downcase $S1536, $S1535
    new $P1537, 'String'
    set $P1537, $S1536
    store_lex "$target", $P1537
.annotate 'line', 1213
    getinterp $P1538
    $P1539 = $P1538."stderr_handle"()
    find_lex $P1540, "self"
    $S1541 = $P1540."commandline_banner"()
    print $P1539, $S1541
.annotate 'line', 1215
    getinterp $P1542
    $P1543 = $P1542."stdin_handle"()
    store_lex "$stdin", $P1543
.annotate 'line', 1216
    find_lex $P1544, "%adverbs"
    unless_null $P1544, vivify_768
    $P1544 = root_new ['parrot';'Hash']
  vivify_768:
    set $P1545, $P1544["encoding"]
    unless_null $P1545, vivify_769
    new $P1545, "Undef"
  vivify_769:
    set $S1546, $P1545
    new $P1547, 'String'
    set $P1547, $S1546
    store_lex "$encoding", $P1547
.annotate 'line', 1217
    find_lex $P1551, "$encoding"
    unless_null $P1551, vivify_770
    new $P1551, "Undef"
  vivify_770:
    if $P1551, if_1550
    set $P1549, $P1551
    goto if_1550_end
  if_1550:
    find_lex $P1552, "$encoding"
    unless_null $P1552, vivify_771
    new $P1552, "Undef"
  vivify_771:
    set $S1553, $P1552
    isne $I1554, $S1553, "fixed_8"
    new $P1549, 'Integer'
    set $P1549, $I1554
  if_1550_end:
    unless $P1549, if_1548_end
.annotate 'line', 1218
    find_lex $P1555, "$stdin"
    unless_null $P1555, vivify_772
    new $P1555, "Undef"
  vivify_772:
    find_lex $P1556, "$encoding"
    unless_null $P1556, vivify_773
    new $P1556, "Undef"
  vivify_773:
    $P1555."encoding"($P1556)
  if_1548_end:
.annotate 'line', 1217
    find_lex $P1557, "$save_ctx"
    unless_null $P1557, vivify_774
    new $P1557, "Undef"
  vivify_774:
.annotate 'line', 1222
    new $P1682, 'ExceptionHandler'
    set_label $P1682, loop1681_handler
    $P1682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1682
  loop1681_test:
    new $P1558, "Integer"
    assign $P1558, 1
    unless $P1558, loop1681_done
  loop1681_redo:
    .const 'Sub' $P1560 = "187_1307873286.70277" 
    capture_lex $P1560
    $P1560()
  loop1681_next:
    goto loop1681_test
  loop1681_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1683, exception, 'type'
    eq $P1683, .CONTROL_LOOP_NEXT, loop1681_next
    eq $P1683, .CONTROL_LOOP_REDO, loop1681_redo
  loop1681_done:
    pop_eh 
.annotate 'line', 1210
    .return ($P1558)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1559"  :anon :subid("187_1307873286.70277") :outer("186_1307873286.70277")
.annotate 'line', 1222
    .const 'Sub' $P1595 = "188_1307873286.70277" 
    capture_lex $P1595
.annotate 'line', 1225
    new $P1561, "Undef"
    .lex "$prompt", $P1561
.annotate 'line', 1226
    new $P1562, "Undef"
    .lex "$code", $P1562
.annotate 'line', 1235
    new $P1563, "Undef"
    .lex "$*AUTOPRINTPOS", $P1563
.annotate 'line', 1236
    new $P1564, "Undef"
    .lex "$*CTXSAVE", $P1564
.annotate 'line', 1237
    new $P1565, "Undef"
    .lex "$*MAIN_CTX", $P1565
.annotate 'line', 1223
    find_lex $P1567, "$stdin"
    unless_null $P1567, vivify_775
    new $P1567, "Undef"
  vivify_775:
    if $P1567, unless_1566_end
    die 0, .CONTROL_LOOP_LAST
  unless_1566_end:
.annotate 'line', 1225
    find_lex $P1569, "self"
    $P1570 = $P1569."commandline_prompt"()
    set $P1568, $P1570
    defined $I1572, $P1568
    if $I1572, default_1571
    new $P1573, "String"
    assign $P1573, "> "
    set $P1568, $P1573
  default_1571:
    store_lex "$prompt", $P1568
.annotate 'line', 1226
    find_lex $P1574, "$stdin"
    unless_null $P1574, vivify_776
    new $P1574, "Undef"
  vivify_776:
    find_lex $P1575, "$prompt"
    unless_null $P1575, vivify_777
    new $P1575, "Undef"
  vivify_777:
    set $S1576, $P1575
    $P1577 = $P1574."readline_interactive"($S1576)
    store_lex "$code", $P1577
.annotate 'line', 1228
    find_lex $P1579, "$code"
    unless_null $P1579, vivify_778
    new $P1579, "Undef"
  vivify_778:
    isnull $I1580, $P1579
    unless $I1580, if_1578_end
    die 0, .CONTROL_LOOP_LAST
  if_1578_end:
.annotate 'line', 1229
    find_lex $P1582, "$code"
    unless_null $P1582, vivify_779
    new $P1582, "Undef"
  vivify_779:
    defined $I1583, $P1582
    if $I1583, unless_1581_end
.annotate 'line', 1230
    print "\n"
.annotate 'line', 1231
    die 0, .CONTROL_LOOP_LAST
  unless_1581_end:
.annotate 'line', 1235
    getinterp $P1584
    $P1585 = $P1584."stdout_handle"()
    $P1586 = $P1585."tell"()
    store_lex "$*AUTOPRINTPOS", $P1586
.annotate 'line', 1236
    find_lex $P1587, "self"
    store_lex "$*CTXSAVE", $P1587
    find_lex $P1590, "$*MAIN_CTX"
    unless_null $P1590, vivify_780
    get_hll_global $P1588, "GLOBAL"
    get_who $P1589, $P1588
    set $P1590, $P1589["$MAIN_CTX"]
    unless_null $P1590, vivify_781
    die "Contextual $*MAIN_CTX not found"
  vivify_781:
  vivify_780:
.annotate 'line', 1239
    find_lex $P1593, "$code"
    unless_null $P1593, vivify_782
    new $P1593, "Undef"
  vivify_782:
    if $P1593, if_1592
    set $P1591, $P1593
    goto if_1592_end
  if_1592:
    .const 'Sub' $P1595 = "188_1307873286.70277" 
    capture_lex $P1595
    $P1680 = $P1595()
    set $P1591, $P1680
  if_1592_end:
.annotate 'line', 1222
    .return ($P1591)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1594"  :anon :subid("188_1307873286.70277") :outer("187_1307873286.70277")
.annotate 'line', 1239
    .const 'Sub' $P1629 = "191_1307873286.70277" 
    capture_lex $P1629
    .const 'Sub' $P1601 = "189_1307873286.70277" 
    capture_lex $P1601
.annotate 'line', 1241
    new $P1596, "Undef"
    .lex "$output", $P1596
.annotate 'line', 1240
    find_lex $P1597, "$code"
    unless_null $P1597, vivify_783
    new $P1597, "Undef"
  vivify_783:
    concat $P1598, $P1597, "\n"
    store_lex "$code", $P1598
    find_lex $P1599, "$output"
    unless_null $P1599, vivify_784
    new $P1599, "Undef"
  vivify_784:
.annotate 'line', 1242
    .const 'Sub' $P1601 = "189_1307873286.70277" 
    capture_lex $P1601
    $P1601()
.annotate 'line', 1249
    find_dynamic_lex $P1626, "$*MAIN_CTX"
    unless_null $P1626, vivify_789
    get_hll_global $P1624, "GLOBAL"
    get_who $P1625, $P1624
    set $P1626, $P1625["$MAIN_CTX"]
    unless_null $P1626, vivify_790
    die "Contextual $*MAIN_CTX not found"
  vivify_790:
  vivify_789:
    defined $I1627, $P1626
    unless $I1627, if_1623_end
    .const 'Sub' $P1629 = "191_1307873286.70277" 
    capture_lex $P1629
    $P1629()
  if_1623_end:
.annotate 'line', 1257
    find_lex $P1660, "$output"
    unless_null $P1660, vivify_800
    new $P1660, "Undef"
  vivify_800:
    isnull $I1661, $P1660
    unless $I1661, if_1659_end
    die 0, .CONTROL_LOOP_NEXT
  if_1659_end:
.annotate 'line', 1259
    find_lex $P1664, "$target"
    unless_null $P1664, vivify_801
    new $P1664, "Undef"
  vivify_801:
    isfalse $I1665, $P1664
    if $I1665, if_1663
.annotate 'line', 1261
    find_lex $P1671, "$target"
    unless_null $P1671, vivify_802
    new $P1671, "Undef"
  vivify_802:
    set $S1672, $P1671
    iseq $I1673, $S1672, "pir"
    if $I1673, if_1670
.annotate 'line', 1264
    find_lex $P1675, "self"
    find_lex $P1676, "$output"
    unless_null $P1676, vivify_803
    new $P1676, "Undef"
  vivify_803:
    find_lex $P1677, "$target"
    unless_null $P1677, vivify_804
    new $P1677, "Undef"
  vivify_804:
    find_lex $P1678, "%adverbs"
    unless_null $P1678, vivify_805
    $P1678 = root_new ['parrot';'Hash']
  vivify_805:
    $P1679 = $P1675."dumper"($P1676, $P1677, $P1678 :flat)
.annotate 'line', 1263
    set $P1669, $P1679
.annotate 'line', 1261
    goto if_1670_end
  if_1670:
.annotate 'line', 1262
    find_lex $P1674, "$output"
    unless_null $P1674, vivify_806
    new $P1674, "Undef"
  vivify_806:
    say $P1674
  if_1670_end:
.annotate 'line', 1261
    set $P1662, $P1669
.annotate 'line', 1259
    goto if_1663_end
  if_1663:
.annotate 'line', 1260
    find_lex $P1666, "self"
    find_lex $P1667, "$output"
    unless_null $P1667, vivify_807
    new $P1667, "Undef"
  vivify_807:
    $P1668 = $P1666."autoprint"($P1667)
.annotate 'line', 1259
    set $P1662, $P1668
  if_1663_end:
.annotate 'line', 1239
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1600"  :anon :subid("189_1307873286.70277") :outer("188_1307873286.70277")
.annotate 'line', 1242
    .const 'Sub' $P1613 = "190_1307873286.70277" 
    capture_lex $P1613
    new $P1609, 'ExceptionHandler'
    set_label $P1609, control_1608
    $P1609."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1609
.annotate 'line', 1243
    find_lex $P1602, "self"
    find_lex $P1603, "$code"
    unless_null $P1603, vivify_785
    new $P1603, "Undef"
  vivify_785:
    find_lex $P1604, "$save_ctx"
    unless_null $P1604, vivify_786
    new $P1604, "Undef"
  vivify_786:
    find_lex $P1605, "%adverbs"
    unless_null $P1605, vivify_787
    $P1605 = root_new ['parrot';'Hash']
  vivify_787:
    $P1606 = $P1602."eval"($P1603, $P1605 :flat, $P1604 :named("outer_ctx"))
    store_lex "$output", $P1606
.annotate 'line', 1242
    pop_eh 
    goto skip_handler_1607
  control_1608:
.annotate 'line', 1244
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1613 = "190_1307873286.70277" 
    newclosure $P1620, $P1613
    $P1620(exception)
    new $P1621, 'Integer'
    set $P1621, 1
    set exception["handled"], $P1621
    set $I1622, exception["handled"]
    ne $I1622, 1, nothandled_1611
  handled_1610:
    .return (exception)
  nothandled_1611:
    rethrow exception
  skip_handler_1607:
.annotate 'line', 1242
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1612"  :anon :subid("190_1307873286.70277") :outer("189_1307873286.70277")
    .param pmc param_1614
.annotate 'line', 1244
    .lex "$_", param_1614
    find_lex $P1615, "$_"
    .lex "$!", $P1615
.annotate 'line', 1245
    find_lex $P1616, "$!"
    unless_null $P1616, vivify_788
    new $P1616, "Undef"
  vivify_788:
    set $S1617, $P1616
    new $P1618, 'String'
    set $P1618, $S1617
    concat $P1619, $P1618, "\n"
    print $P1619
.annotate 'line', 1246
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1244
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1628"  :anon :subid("191_1307873286.70277") :outer("188_1307873286.70277")
.annotate 'line', 1249
    .const 'Sub' $P1644 = "192_1307873286.70277" 
    capture_lex $P1644
    find_lex $P1630, "$?PACKAGE"
    get_who $P1631, $P1630
    set $P1632, $P1631["$interactive_ctx"]
    unless_null $P1632, vivify_791
    new $P1632, "Undef"
  vivify_791:
    find_lex $P1633, "$?PACKAGE"
    get_who $P1634, $P1633
    set $P1635, $P1634["%interactive_pad"]
    unless_null $P1635, vivify_792
    $P1635 = root_new ['parrot';'Hash']
  vivify_792:
.annotate 'line', 1252
    find_dynamic_lex $P1639, "$*MAIN_CTX"
    unless_null $P1639, vivify_793
    get_hll_global $P1637, "GLOBAL"
    get_who $P1638, $P1637
    set $P1639, $P1638["$MAIN_CTX"]
    unless_null $P1639, vivify_794
    die "Contextual $*MAIN_CTX not found"
  vivify_794:
  vivify_793:
    $P1640 = $P1639."lexpad_full"()
    defined $I1641, $P1640
    unless $I1641, for_undef_795
    iter $P1636, $P1640
    new $P1654, 'ExceptionHandler'
    set_label $P1654, loop1653_handler
    $P1654."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1654
  loop1653_test:
    unless $P1636, loop1653_done
    shift $P1642, $P1636
  loop1653_redo:
    .const 'Sub' $P1644 = "192_1307873286.70277" 
    capture_lex $P1644
    $P1644($P1642)
  loop1653_next:
    goto loop1653_test
  loop1653_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1655, exception, 'type'
    eq $P1655, .CONTROL_LOOP_NEXT, loop1653_next
    eq $P1655, .CONTROL_LOOP_REDO, loop1653_redo
  loop1653_done:
    pop_eh 
  for_undef_795:
.annotate 'line', 1255
    find_lex $P1656, "$?PACKAGE"
    get_who $P1657, $P1656
    set $P1658, $P1657["$interactive_ctx"]
    unless_null $P1658, vivify_799
    new $P1658, "Undef"
  vivify_799:
    store_lex "$save_ctx", $P1658
.annotate 'line', 1249
    .return ($P1658)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1643"  :anon :subid("192_1307873286.70277") :outer("191_1307873286.70277")
    .param pmc param_1645
.annotate 'line', 1252
    .lex "$_", param_1645
.annotate 'line', 1253
    find_lex $P1646, "$_"
    unless_null $P1646, vivify_796
    new $P1646, "Undef"
  vivify_796:
    $P1647 = $P1646."value"()
    find_lex $P1648, "$_"
    unless_null $P1648, vivify_797
    new $P1648, "Undef"
  vivify_797:
    $P1649 = $P1648."key"()
    find_lex $P1650, "$?PACKAGE"
    get_who $P1651, $P1650
    set $P1652, $P1651["%interactive_pad"]
    unless_null $P1652, vivify_798
    $P1652 = root_new ['parrot';'Hash']
    set $P1651["%interactive_pad"], $P1652
  vivify_798:
    set $P1652[$P1649], $P1647
.annotate 'line', 1252
    .return ($P1647)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("193_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1685
    .param pmc param_1686
    .param pmc param_1687 :slurpy
    .param pmc param_1688 :slurpy :named
.annotate 'line', 1270
    .const 'Sub' $P1707 = "194_1307873286.70277" 
    capture_lex $P1707
    .lex "self", param_1685
    .lex "$code", param_1686
    .lex "@args", param_1687
    .lex "%adverbs", param_1688
.annotate 'line', 1271
    new $P1689, "Undef"
    .lex "$output", $P1689
.annotate 'line', 1270
    find_lex $P1690, "$output"
    unless_null $P1690, vivify_808
    new $P1690, "Undef"
  vivify_808:
.annotate 'line', 1272
    find_lex $P1691, "self"
    find_lex $P1692, "$code"
    unless_null $P1692, vivify_809
    new $P1692, "Undef"
  vivify_809:
    find_lex $P1693, "%adverbs"
    unless_null $P1693, vivify_810
    $P1693 = root_new ['parrot';'Hash']
  vivify_810:
    $P1694 = $P1691."compile"($P1692, $P1693 :flat)
    store_lex "$output", $P1694
.annotate 'line', 1274
    find_lex $P1698, "$output"
    unless_null $P1698, vivify_811
    new $P1698, "Undef"
  vivify_811:
    isa $I1699, $P1698, "String"
    new $P1700, 'Integer'
    set $P1700, $I1699
    isfalse $I1701, $P1700
    if $I1701, if_1697
    new $P1696, 'Integer'
    set $P1696, $I1701
    goto if_1697_end
  if_1697:
.annotate 'line', 1275
    find_lex $P1702, "%adverbs"
    unless_null $P1702, vivify_812
    $P1702 = root_new ['parrot';'Hash']
  vivify_812:
    set $P1703, $P1702["target"]
    unless_null $P1703, vivify_813
    new $P1703, "Undef"
  vivify_813:
    set $S1704, $P1703
    iseq $I1705, $S1704, ""
    new $P1696, 'Integer'
    set $P1696, $I1705
  if_1697_end:
    unless $P1696, if_1695_end
    .const 'Sub' $P1707 = "194_1307873286.70277" 
    capture_lex $P1707
    $P1707()
  if_1695_end:
.annotate 'line', 1274
    find_lex $P1723, "$output"
    unless_null $P1723, vivify_824
    new $P1723, "Undef"
  vivify_824:
.annotate 'line', 1270
    .return ($P1723)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1706"  :anon :subid("194_1307873286.70277") :outer("193_1307873286.70277")
.annotate 'line', 1276
    new $P1708, "Undef"
    .lex "$outer_ctx", $P1708
    find_lex $P1709, "%adverbs"
    unless_null $P1709, vivify_814
    $P1709 = root_new ['parrot';'Hash']
  vivify_814:
    set $P1710, $P1709["outer_ctx"]
    unless_null $P1710, vivify_815
    new $P1710, "Undef"
  vivify_815:
    store_lex "$outer_ctx", $P1710
.annotate 'line', 1277
    find_lex $P1712, "$outer_ctx"
    unless_null $P1712, vivify_816
    new $P1712, "Undef"
  vivify_816:
    defined $I1713, $P1712
    unless $I1713, if_1711_end
.annotate 'line', 1278
    find_lex $P1714, "$output"
    unless_null $P1714, vivify_817
    $P1714 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
    set $P1715, $P1714[0]
    unless_null $P1715, vivify_818
    new $P1715, "Undef"
  vivify_818:
    find_lex $P1716, "$outer_ctx"
    unless_null $P1716, vivify_819
    new $P1716, "Undef"
  vivify_819:
    $P1715."set_outer_ctx"($P1716)
  if_1711_end:
.annotate 'line', 1281
    find_lex $P1717, "%adverbs"
    unless_null $P1717, vivify_820
    $P1717 = root_new ['parrot';'Hash']
  vivify_820:
    set $P1718, $P1717["trace"]
    unless_null $P1718, vivify_821
    new $P1718, "Undef"
  vivify_821:
    set $I1719, $P1718
    trace $I1719
.annotate 'line', 1282
    find_lex $P1720, "$output"
    unless_null $P1720, vivify_822
    new $P1720, "Undef"
  vivify_822:
    find_lex $P1721, "@args"
    unless_null $P1721, vivify_823
    $P1721 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    $P1722 = $P1720($P1721 :flat)
    store_lex "$output", $P1722
.annotate 'line', 1283
    trace 0
.annotate 'line', 1275
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("195_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1725
.annotate 'line', 1289
    .lex "self", param_1725
.annotate 'line', 1291

                $P0 = getinterp
                $P1726 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1726
.annotate 'line', 1295
    new $P1727, "Integer"
    assign $P1727, 0
    store_dynamic_lex "$*CTXSAVE", $P1727
.annotate 'line', 1289
    .return ($P1727)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("196_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1729
    .param pmc param_1730 :slurpy
.annotate 'line', 1298
    .lex "self", param_1729
    .lex "@args", param_1730
.annotate 'line', 1299
    find_lex $P1731, "@args"
    unless_null $P1731, vivify_825
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    join $S1732, "", $P1731
    die $S1732
.annotate 'line', 1298
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("197_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1734
    .param pmc param_1735 :optional
    .param int has_param_1735 :opt_flag
.annotate 'line', 1302
    .lex "self", param_1734
    if has_param_1735, optparam_826
    $P1736 = root_new ['parrot';'ResizablePMCArray']
    set param_1735, $P1736
  optparam_826:
    .lex "@value", param_1735
.annotate 'line', 1303
    find_lex $P1738, "@value"
    unless_null $P1738, vivify_827
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    set $N1739, $P1738
    unless $N1739, if_1737_end
.annotate 'line', 1304
    find_lex $P1740, "@value"
    unless_null $P1740, vivify_828
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    find_lex $P1741, "self"
    find_lex $P1742, "$?CLASS"
    setattribute $P1741, $P1742, "@!stages", $P1740
  if_1737_end:
.annotate 'line', 1303
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!stages"
    unless_null $P1745, vivify_829
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
.annotate 'line', 1302
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("198_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1747
    .param pmc param_1748 :slurpy
.annotate 'line', 1309
    .lex "self", param_1747
    .lex "@value", param_1748
.annotate 'line', 1310
    find_lex $P1750, "@value"
    unless_null $P1750, vivify_830
    $P1750 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $N1751, $P1750
    unless $N1751, if_1749_end
.annotate 'line', 1311
    find_lex $P1752, "@value"
    unless_null $P1752, vivify_831
    $P1752 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $P1753, $P1752[0]
    unless_null $P1753, vivify_832
    new $P1753, "Undef"
  vivify_832:
    find_lex $P1754, "self"
    find_lex $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!parsegrammar", $P1753
  if_1749_end:
.annotate 'line', 1310
    find_lex $P1756, "self"
    find_lex $P1757, "$?CLASS"
    getattribute $P1758, $P1756, $P1757, "$!parsegrammar"
    unless_null $P1758, vivify_833
    new $P1758, "Undef"
  vivify_833:
.annotate 'line', 1309
    .return ($P1758)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("199_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1760
    .param pmc param_1761 :slurpy
.annotate 'line', 1316
    .lex "self", param_1760
    .lex "@value", param_1761
.annotate 'line', 1317
    find_lex $P1763, "@value"
    unless_null $P1763, vivify_834
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $N1764, $P1763
    unless $N1764, if_1762_end
.annotate 'line', 1318
    find_lex $P1765, "@value"
    unless_null $P1765, vivify_835
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_836
    new $P1766, "Undef"
  vivify_836:
    find_lex $P1767, "self"
    find_lex $P1768, "$?CLASS"
    setattribute $P1767, $P1768, "$!parseactions", $P1766
  if_1762_end:
.annotate 'line', 1317
    find_lex $P1769, "self"
    find_lex $P1770, "$?CLASS"
    getattribute $P1771, $P1769, $P1770, "$!parseactions"
    unless_null $P1771, vivify_837
    new $P1771, "Undef"
  vivify_837:
.annotate 'line', 1316
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar" :anon :subid("200_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1773
    .param pmc param_1774 :slurpy
.annotate 'line', 1323
    .lex "self", param_1773
    .lex "@value", param_1774
.annotate 'line', 1324
    find_lex $P1776, "@value"
    unless_null $P1776, vivify_838
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $N1777, $P1776
    unless $N1777, if_1775_end
.annotate 'line', 1325
    find_lex $P1778, "@value"
    unless_null $P1778, vivify_839
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    set $P1779, $P1778[0]
    unless_null $P1779, vivify_840
    new $P1779, "Undef"
  vivify_840:
    find_lex $P1780, "self"
    find_lex $P1781, "$?CLASS"
    setattribute $P1780, $P1781, "$!astgrammar", $P1779
  if_1775_end:
.annotate 'line', 1324
    find_lex $P1782, "self"
    find_lex $P1783, "$?CLASS"
    getattribute $P1784, $P1782, $P1783, "$!astgrammar"
    unless_null $P1784, vivify_841
    new $P1784, "Undef"
  vivify_841:
.annotate 'line', 1323
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner" :anon :subid("201_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1786
    .param pmc param_1787 :optional
    .param int has_param_1787 :opt_flag
.annotate 'line', 1330
    .lex "self", param_1786
    if has_param_1787, optparam_842
    new $P1788, "Undef"
    set param_1787, $P1788
  optparam_842:
    .lex "$value", param_1787
.annotate 'line', 1331
    find_lex $P1790, "$value"
    unless_null $P1790, vivify_843
    new $P1790, "Undef"
  vivify_843:
    defined $I1791, $P1790
    unless $I1791, if_1789_end
.annotate 'line', 1332
    find_lex $P1792, "$value"
    unless_null $P1792, vivify_844
    new $P1792, "Undef"
  vivify_844:
    find_lex $P1793, "self"
    find_lex $P1794, "$?CLASS"
    setattribute $P1793, $P1794, "$!commandline_banner", $P1792
  if_1789_end:
.annotate 'line', 1331
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "$!commandline_banner"
    unless_null $P1797, vivify_845
    new $P1797, "Undef"
  vivify_845:
.annotate 'line', 1330
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt" :anon :subid("202_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1799
    .param pmc param_1800 :optional
    .param int has_param_1800 :opt_flag
.annotate 'line', 1337
    .lex "self", param_1799
    if has_param_1800, optparam_846
    new $P1801, "Undef"
    set param_1800, $P1801
  optparam_846:
    .lex "$value", param_1800
.annotate 'line', 1338
    find_lex $P1803, "$value"
    unless_null $P1803, vivify_847
    new $P1803, "Undef"
  vivify_847:
    defined $I1804, $P1803
    unless $I1804, if_1802_end
.annotate 'line', 1339
    find_lex $P1805, "$value"
    unless_null $P1805, vivify_848
    new $P1805, "Undef"
  vivify_848:
    find_lex $P1806, "self"
    find_lex $P1807, "$?CLASS"
    setattribute $P1806, $P1807, "$!commandline_prompt", $P1805
  if_1802_end:
.annotate 'line', 1338
    find_lex $P1808, "self"
    find_lex $P1809, "$?CLASS"
    getattribute $P1810, $P1808, $P1809, "$!commandline_prompt"
    unless_null $P1810, vivify_849
    new $P1810, "Undef"
  vivify_849:
.annotate 'line', 1337
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("203_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1812
    .param pmc param_1813 :optional
    .param int has_param_1813 :opt_flag
.annotate 'line', 1344
    .lex "self", param_1812
    if has_param_1813, optparam_850
    new $P1814, "Undef"
    set param_1813, $P1814
  optparam_850:
    .lex "$value", param_1813
.annotate 'line', 1345
    find_lex $P1816, "$value"
    unless_null $P1816, vivify_851
    new $P1816, "Undef"
  vivify_851:
    defined $I1817, $P1816
    unless $I1817, if_1815_end
.annotate 'line', 1346
    find_lex $P1818, "$value"
    unless_null $P1818, vivify_852
    new $P1818, "Undef"
  vivify_852:
    find_lex $P1819, "self"
    find_lex $P1820, "$?CLASS"
    setattribute $P1819, $P1820, "$!compiler_progname", $P1818
  if_1815_end:
.annotate 'line', 1345
    find_lex $P1821, "self"
    find_lex $P1822, "$?CLASS"
    getattribute $P1823, $P1821, $P1822, "$!compiler_progname"
    unless_null $P1823, vivify_853
    new $P1823, "Undef"
  vivify_853:
.annotate 'line', 1344
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("204_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1825
    .param pmc param_1826 :optional
    .param int has_param_1826 :opt_flag
.annotate 'line', 1351
    .lex "self", param_1825
    if has_param_1826, optparam_854
    $P1827 = root_new ['parrot';'ResizablePMCArray']
    set param_1826, $P1827
  optparam_854:
    .lex "@value", param_1826
.annotate 'line', 1352
    find_lex $P1829, "@value"
    unless_null $P1829, vivify_855
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $N1830, $P1829
    unless $N1830, if_1828_end
.annotate 'line', 1353
    find_lex $P1831, "@value"
    unless_null $P1831, vivify_856
    $P1831 = root_new ['parrot';'ResizablePMCArray']
  vivify_856:
    find_lex $P1832, "self"
    find_lex $P1833, "$?CLASS"
    setattribute $P1832, $P1833, "@!cmdoptions", $P1831
  if_1828_end:
.annotate 'line', 1352
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "@!cmdoptions"
    unless_null $P1836, vivify_857
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
.annotate 'line', 1351
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line" :anon :subid("205_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1838
    .param pmc param_1839
    .param pmc param_1840 :slurpy :named
.annotate 'line', 1358
    .const 'Sub' $P1866 = "206_1307873286.70277" 
    capture_lex $P1866
    .lex "self", param_1838
    .lex "@args", param_1839
    .lex "%adverbs", param_1840
.annotate 'line', 1371
    new $P1841, "Undef"
    .lex "$program-name", $P1841
.annotate 'line', 1372
    new $P1842, "Undef"
    .lex "$res", $P1842
.annotate 'line', 1373
    $P1843 = root_new ['parrot';'Hash']
    .lex "%opts", $P1843
.annotate 'line', 1374
    $P1844 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1844
.annotate 'line', 1367
    find_lex $P1846, "@args"
    unless_null $P1846, vivify_858
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_858:
    set $P1847, $P1846[2]
    unless_null $P1847, vivify_859
    new $P1847, "Undef"
  vivify_859:
    set $S1848, $P1847
    index $I1849, $S1848, "@INC"
    set $N1850, $I1849
    isge $I1851, $N1850, 0.0
    unless $I1851, if_1845_end
.annotate 'line', 1368
    exit 0
  if_1845_end:
.annotate 'line', 1371
    find_lex $P1852, "@args"
    unless_null $P1852, vivify_860
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $P1853, $P1852[0]
    unless_null $P1853, vivify_861
    new $P1853, "Undef"
  vivify_861:
    store_lex "$program-name", $P1853
.annotate 'line', 1372
    find_lex $P1854, "self"
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_862
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    $P1856 = $P1854."process_args"($P1855)
    store_lex "$res", $P1856
.annotate 'line', 1373
    find_lex $P1857, "$res"
    unless_null $P1857, vivify_863
    new $P1857, "Undef"
  vivify_863:
    $P1858 = $P1857."options"()
    store_lex "%opts", $P1858
.annotate 'line', 1374
    find_lex $P1859, "$res"
    unless_null $P1859, vivify_864
    new $P1859, "Undef"
  vivify_864:
    $P1860 = $P1859."arguments"()
    store_lex "@a", $P1860
.annotate 'line', 1376
    find_lex $P1862, "%opts"
    unless_null $P1862, vivify_865
    $P1862 = root_new ['parrot';'Hash']
  vivify_865:
    defined $I1863, $P1862
    unless $I1863, for_undef_866
    iter $P1861, $P1862
    new $P1874, 'ExceptionHandler'
    set_label $P1874, loop1873_handler
    $P1874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1874
  loop1873_test:
    unless $P1861, loop1873_done
    shift $P1864, $P1861
  loop1873_redo:
    .const 'Sub' $P1866 = "206_1307873286.70277" 
    capture_lex $P1866
    $P1866($P1864)
  loop1873_next:
    goto loop1873_test
  loop1873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1875, exception, 'type'
    eq $P1875, .CONTROL_LOOP_NEXT, loop1873_next
    eq $P1875, .CONTROL_LOOP_REDO, loop1873_redo
  loop1873_done:
    pop_eh 
  for_undef_866:
.annotate 'line', 1379
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_872
    $P1877 = root_new ['parrot';'Hash']
  vivify_872:
    set $P1878, $P1877["help"]
    unless_null $P1878, vivify_873
    new $P1878, "Undef"
  vivify_873:
    unless $P1878, if_1876_end
    find_lex $P1879, "self"
    find_lex $P1880, "$program-name"
    unless_null $P1880, vivify_874
    new $P1880, "Undef"
  vivify_874:
    $P1879."usage"($P1880)
  if_1876_end:
.annotate 'line', 1380
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_875
    $P1882 = root_new ['parrot';'Hash']
  vivify_875:
    set $P1883, $P1882["version"]
    unless_null $P1883, vivify_876
    new $P1883, "Undef"
  vivify_876:
    unless $P1883, if_1881_end
    find_lex $P1884, "self"
    $P1884."version"()
  if_1881_end:
.annotate 'line', 1381
    find_lex $P1886, "%adverbs"
    unless_null $P1886, vivify_877
    $P1886 = root_new ['parrot';'Hash']
  vivify_877:
    set $P1887, $P1886["show-config"]
    unless_null $P1887, vivify_878
    new $P1887, "Undef"
  vivify_878:
    unless $P1887, if_1885_end
    find_lex $P1888, "self"
    $P1888."show-config"()
  if_1885_end:
.annotate 'line', 1383

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@a'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'


            .local int can_backtrace, ll_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            ll_backtrace = adverbs['ll-backtrace']
            if ll_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        
.annotate 'line', 1358
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1865"  :anon :subid("206_1307873286.70277") :outer("205_1307873286.70277")
    .param pmc param_1867
.annotate 'line', 1376
    .lex "$k", param_1867
.annotate 'line', 1377
    find_lex $P1868, "$k"
    unless_null $P1868, vivify_867
    new $P1868, "Undef"
  vivify_867:
    find_lex $P1869, "%opts"
    unless_null $P1869, vivify_868
    $P1869 = root_new ['parrot';'Hash']
  vivify_868:
    set $P1870, $P1869[$P1868]
    unless_null $P1870, vivify_869
    new $P1870, "Undef"
  vivify_869:
    find_lex $P1871, "$k"
    unless_null $P1871, vivify_870
    new $P1871, "Undef"
  vivify_870:
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_871
    $P1872 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1872
  vivify_871:
    set $P1872[$P1871], $P1870
.annotate 'line', 1376
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("207_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1890
    .param pmc param_1891
.annotate 'line', 1477
    .const 'Sub' $P1910 = "208_1307873286.70277" 
    capture_lex $P1910
    .lex "self", param_1890
    .lex "@args", param_1891
.annotate 'line', 1481
    new $P1892, "Undef"
    .lex "$p", $P1892
.annotate 'line', 1484
    new $P1893, "Undef"
    .lex "$res", $P1893
.annotate 'line', 1479
    find_lex $P1894, "self"
    find_lex $P1895, "@args"
    unless_null $P1895, vivify_879
    $P1895 = root_new ['parrot';'ResizablePMCArray']
  vivify_879:
    $P1896 = $P1895."shift"()
    $P1894."compiler_progname"($P1896)
.annotate 'line', 1481
    get_hll_global $P1897, "GLOBAL"
    nqp_get_package_through_who $P1898, $P1897, "HLL"
    nqp_get_package_through_who $P1899, $P1898, "CommandLine"
    get_who $P1900, $P1899
    set $P1901, $P1900["Parser"]
    find_lex $P1902, "self"
    find_lex $P1903, "$?CLASS"
    getattribute $P1904, $P1902, $P1903, "@!cmdoptions"
    unless_null $P1904, vivify_880
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    $P1905 = $P1901."new"($P1904)
    store_lex "$p", $P1905
.annotate 'line', 1482
    find_lex $P1906, "$p"
    unless_null $P1906, vivify_881
    new $P1906, "Undef"
  vivify_881:
    $P1906."add-stopper"("-e")
.annotate 'line', 1483
    find_lex $P1907, "$p"
    unless_null $P1907, vivify_882
    new $P1907, "Undef"
  vivify_882:
    $P1907."stop-after-first-arg"()
    find_lex $P1908, "$res"
    unless_null $P1908, vivify_883
    new $P1908, "Undef"
  vivify_883:
.annotate 'line', 1485
    .const 'Sub' $P1910 = "208_1307873286.70277" 
    capture_lex $P1910
    $P1910()
    find_lex $P1928, "$res"
    unless_null $P1928, vivify_887
    new $P1928, "Undef"
  vivify_887:
.annotate 'line', 1477
    .return ($P1928)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1909"  :anon :subid("208_1307873286.70277") :outer("207_1307873286.70277")
.annotate 'line', 1485
    .const 'Sub' $P1920 = "209_1307873286.70277" 
    capture_lex $P1920
    new $P1916, 'ExceptionHandler'
    set_label $P1916, control_1915
    $P1916."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1916
.annotate 'line', 1486
    find_lex $P1911, "$p"
    unless_null $P1911, vivify_884
    new $P1911, "Undef"
  vivify_884:
    find_lex $P1912, "@args"
    unless_null $P1912, vivify_885
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_885:
    $P1913 = $P1911."parse"($P1912)
    store_lex "$res", $P1913
.annotate 'line', 1485
    pop_eh 
    goto skip_handler_1914
  control_1915:
.annotate 'line', 1487
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1920 = "209_1307873286.70277" 
    newclosure $P1925, $P1920
    $P1925(exception)
    new $P1926, 'Integer'
    set $P1926, 1
    set exception["handled"], $P1926
    set $I1927, exception["handled"]
    ne $I1927, 1, nothandled_1918
  handled_1917:
    .return (exception)
  nothandled_1918:
    rethrow exception
  skip_handler_1914:
.annotate 'line', 1485
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1919"  :anon :subid("209_1307873286.70277") :outer("208_1307873286.70277")
    .param pmc param_1921
.annotate 'line', 1487
    .lex "$_", param_1921
    find_lex $P1922, "$_"
    .lex "$!", $P1922
.annotate 'line', 1488
    find_lex $P1923, "$_"
    unless_null $P1923, vivify_886
    new $P1923, "Undef"
  vivify_886:
    say $P1923
.annotate 'line', 1489
    find_lex $P1924, "self"
    $P1924."usage"()
.annotate 'line', 1490
    exit 1
.annotate 'line', 1487
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("210_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934 :slurpy
    .param pmc param_1935 :slurpy :named
.annotate 'line', 1496
    .const 'Sub' $P1962 = "211_1307873286.70277" 
    capture_lex $P1962
    new $P1931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1931, control_1930
    push_eh $P1931
    .lex "self", param_1932
    .lex "$files", param_1933
    .lex "@args", param_1934
    .lex "%adverbs", param_1935
.annotate 'line', 1497
    new $P1936, "Undef"
    .lex "$target", $P1936
.annotate 'line', 1498
    new $P1937, "Undef"
    .lex "$encoding", $P1937
.annotate 'line', 1499
    $P1938 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P1938
.annotate 'line', 1500
    $P1939 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P1939
.annotate 'line', 1517
    new $P1940, "Undef"
    .lex "$code", $P1940
.annotate 'line', 1519
    new $P1941, "Undef"
    .lex "$r", $P1941
.annotate 'line', 1497
    find_lex $P1942, "%adverbs"
    unless_null $P1942, vivify_888
    $P1942 = root_new ['parrot';'Hash']
  vivify_888:
    set $P1943, $P1942["target"]
    unless_null $P1943, vivify_889
    new $P1943, "Undef"
  vivify_889:
    set $S1944, $P1943
    downcase $S1945, $S1944
    new $P1946, 'String'
    set $P1946, $S1945
    store_lex "$target", $P1946
.annotate 'line', 1498
    find_lex $P1947, "%adverbs"
    unless_null $P1947, vivify_890
    $P1947 = root_new ['parrot';'Hash']
  vivify_890:
    set $P1948, $P1947["encoding"]
    unless_null $P1948, vivify_891
    new $P1948, "Undef"
  vivify_891:
    store_lex "$encoding", $P1948
.annotate 'line', 1499
    find_lex $P1951, "$files"
    unless_null $P1951, vivify_892
    new $P1951, "Undef"
  vivify_892:
    does $I1952, $P1951, "array"
    if $I1952, if_1950
    find_lex $P1954, "$files"
    unless_null $P1954, vivify_893
    new $P1954, "Undef"
  vivify_893:
    new $P1955, "ResizablePMCArray"
    push $P1955, $P1954
    set $P1949, $P1955
    goto if_1950_end
  if_1950:
    find_lex $P1953, "$files"
    unless_null $P1953, vivify_894
    new $P1953, "Undef"
  vivify_894:
    set $P1949, $P1953
  if_1950_end:
    store_lex "@files", $P1949
    find_lex $P1956, "@codes"
    unless_null $P1956, vivify_895
    $P1956 = root_new ['parrot';'ResizablePMCArray']
  vivify_895:
.annotate 'line', 1501
    find_lex $P1958, "@files"
    unless_null $P1958, vivify_896
    $P1958 = root_new ['parrot';'ResizablePMCArray']
  vivify_896:
    defined $I1959, $P1958
    unless $I1959, for_undef_897
    iter $P1957, $P1958
    new $P1997, 'ExceptionHandler'
    set_label $P1997, loop1996_handler
    $P1997."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1997
  loop1996_test:
    unless $P1957, loop1996_done
    shift $P1960, $P1957
  loop1996_redo:
    .const 'Sub' $P1962 = "211_1307873286.70277" 
    capture_lex $P1962
    $P1962($P1960)
  loop1996_next:
    goto loop1996_test
  loop1996_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1998, exception, 'type'
    eq $P1998, .CONTROL_LOOP_NEXT, loop1996_next
    eq $P1998, .CONTROL_LOOP_REDO, loop1996_redo
  loop1996_done:
    pop_eh 
  for_undef_897:
.annotate 'line', 1517
    find_lex $P1999, "@codes"
    unless_null $P1999, vivify_907
    $P1999 = root_new ['parrot';'ResizablePMCArray']
  vivify_907:
    join $S2000, "", $P1999
    new $P2001, 'String'
    set $P2001, $S2000
    store_lex "$code", $P2001
.annotate 'line', 1519
    find_lex $P2002, "self"
    find_lex $P2003, "$code"
    unless_null $P2003, vivify_908
    new $P2003, "Undef"
  vivify_908:
    find_lex $P2004, "@args"
    unless_null $P2004, vivify_909
    $P2004 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    find_lex $P2005, "%adverbs"
    unless_null $P2005, vivify_910
    $P2005 = root_new ['parrot';'Hash']
  vivify_910:
    $P2006 = $P2002."eval"($P2003, $P2004 :flat, $P2005 :flat)
    store_lex "$r", $P2006
.annotate 'line', 1520
    find_lex $P2011, "$target"
    unless_null $P2011, vivify_911
    new $P2011, "Undef"
  vivify_911:
    set $S2012, $P2011
    iseq $I2013, $S2012, ""
    unless $I2013, unless_2010
    new $P2009, 'Integer'
    set $P2009, $I2013
    goto unless_2010_end
  unless_2010:
    find_lex $P2014, "$target"
    unless_null $P2014, vivify_912
    new $P2014, "Undef"
  vivify_912:
    set $S2015, $P2014
    iseq $I2016, $S2015, "pir"
    new $P2009, 'Integer'
    set $P2009, $I2016
  unless_2010_end:
    if $P2009, if_2008
.annotate 'line', 1523
    new $P2019, "Exception"
    set $P2019['type'], .CONTROL_RETURN
    find_lex $P2020, "self"
    find_lex $P2021, "$r"
    unless_null $P2021, vivify_913
    new $P2021, "Undef"
  vivify_913:
    find_lex $P2022, "$target"
    unless_null $P2022, vivify_914
    new $P2022, "Undef"
  vivify_914:
    find_lex $P2023, "%adverbs"
    unless_null $P2023, vivify_915
    $P2023 = root_new ['parrot';'Hash']
  vivify_915:
    $P2024 = $P2020."dumper"($P2021, $P2022, $P2023 :flat)
    setattribute $P2019, 'payload', $P2024
    throw $P2019
.annotate 'line', 1522
    goto if_2008_end
  if_2008:
.annotate 'line', 1521
    new $P2017, "Exception"
    set $P2017['type'], .CONTROL_RETURN
    find_lex $P2018, "$r"
    unless_null $P2018, vivify_916
    new $P2018, "Undef"
  vivify_916:
    setattribute $P2017, 'payload', $P2018
    throw $P2017
  if_2008_end:
.annotate 'line', 1496
    .return ($P2007)
  control_1930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2025, exception, "payload"
    .return ($P2025)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1961"  :anon :subid("211_1307873286.70277") :outer("210_1307873286.70277")
    .param pmc param_1965
.annotate 'line', 1501
    .const 'Sub' $P1969 = "212_1307873286.70277" 
    capture_lex $P1969
.annotate 'line', 1502
    new $P1963, "Undef"
    .lex "$in-handle", $P1963
.annotate 'line', 1503
    new $P1964, "Undef"
    .lex "$err", $P1964
    .lex "$_", param_1965
.annotate 'line', 1502
    new $P1966, "FileHandle"
    store_lex "$in-handle", $P1966
.annotate 'line', 1503
    new $P1967, "Integer"
    assign $P1967, 0
    store_lex "$err", $P1967
.annotate 'line', 1504
    .const 'Sub' $P1969 = "212_1307873286.70277" 
    capture_lex $P1969
    $P1969()
.annotate 'line', 1515
    find_lex $P1994, "$err"
    unless_null $P1994, vivify_905
    new $P1994, "Undef"
  vivify_905:
    if $P1994, if_1993
    set $P1992, $P1994
    goto if_1993_end
  if_1993:
    find_lex $P1995, "$err"
    unless_null $P1995, vivify_906
    new $P1995, "Undef"
  vivify_906:
    die $P1995
  if_1993_end:
.annotate 'line', 1501
    .return ($P1992)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1968"  :anon :subid("212_1307873286.70277") :outer("211_1307873286.70277")
.annotate 'line', 1504
    .const 'Sub' $P1983 = "213_1307873286.70277" 
    capture_lex $P1983
    new $P1979, 'ExceptionHandler'
    set_label $P1979, control_1978
    $P1979."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1979
.annotate 'line', 1508
    find_lex $P1970, "$in-handle"
    unless_null $P1970, vivify_898
    new $P1970, "Undef"
  vivify_898:
    find_lex $P1971, "$encoding"
    unless_null $P1971, vivify_899
    new $P1971, "Undef"
  vivify_899:
    $P1970."encoding"($P1971)
.annotate 'line', 1509
    find_lex $P1972, "@codes"
    unless_null $P1972, vivify_900
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_900:
    find_lex $P1973, "$in-handle"
    unless_null $P1973, vivify_901
    new $P1973, "Undef"
  vivify_901:
    find_lex $P1974, "$_"
    unless_null $P1974, vivify_902
    new $P1974, "Undef"
  vivify_902:
    $P1975 = $P1973."readall"($P1974)
    push $P1972, $P1975
.annotate 'line', 1510
    find_lex $P1976, "$in-handle"
    unless_null $P1976, vivify_903
    new $P1976, "Undef"
  vivify_903:
    $P1976."close"()
.annotate 'line', 1504
    pop_eh 
    goto skip_handler_1977
  control_1978:
.annotate 'line', 1511
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1983 = "213_1307873286.70277" 
    newclosure $P1989, $P1983
    $P1989(exception)
    new $P1990, 'Integer'
    set $P1990, 1
    set exception["handled"], $P1990
    set $I1991, exception["handled"]
    ne $I1991, 1, nothandled_1981
  handled_1980:
    .return (exception)
  nothandled_1981:
    rethrow exception
  skip_handler_1977:
.annotate 'line', 1504
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1982"  :anon :subid("213_1307873286.70277") :outer("212_1307873286.70277")
    .param pmc param_1984
.annotate 'line', 1511
    .lex "$_", param_1984
    find_lex $P1985, "$_"
    .lex "$!", $P1985
.annotate 'line', 1512
    new $P1986, 'String'
    set $P1986, "Error while reading from file: "
    find_lex $P1987, "$_"
    unless_null $P1987, vivify_904
    new $P1987, "Undef"
  vivify_904:
    concat $P1988, $P1986, $P1987
    store_lex "$err", $P1988
.annotate 'line', 1511
    .return ($P1988)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("214_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2029
    .param pmc param_2030
    .param pmc param_2031 :slurpy :named
.annotate 'line', 1527
    .const 'Sub' $P2054 = "215_1307873286.70277" 
    capture_lex $P2054
    new $P2028, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2028, control_2027
    push_eh $P2028
    .lex "self", param_2029
    .lex "$source", param_2030
    .lex "%adverbs", param_2031
.annotate 'line', 1528
    $P2032 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2032
.annotate 'line', 1530
    new $P2033, "Undef"
    .lex "$target", $P2033
.annotate 'line', 1531
    new $P2034, "Undef"
    .lex "$result", $P2034
.annotate 'line', 1532
    new $P2035, "Undef"
    .lex "$stderr", $P2035
.annotate 'line', 1528
    find_lex $P2036, "%adverbs"
    unless_null $P2036, vivify_917
    $P2036 = root_new ['parrot';'Hash']
  vivify_917:
    find_lex $P2039, "%*COMPILING"
    unless_null $P2039, vivify_918
    get_hll_global $P2037, "GLOBAL"
    get_who $P2038, $P2037
    set $P2039, $P2038["%COMPILING"]
    unless_null $P2039, vivify_919
    die "Contextual %*COMPILING not found"
  vivify_919:
    store_lex "%*COMPILING", $P2039
  vivify_918:
    set $P2039["%?OPTIONS"], $P2036
.annotate 'line', 1530
    find_lex $P2040, "%adverbs"
    unless_null $P2040, vivify_920
    $P2040 = root_new ['parrot';'Hash']
  vivify_920:
    set $P2041, $P2040["target"]
    unless_null $P2041, vivify_921
    new $P2041, "Undef"
  vivify_921:
    set $S2042, $P2041
    downcase $S2043, $S2042
    new $P2044, 'String'
    set $P2044, $S2043
    store_lex "$target", $P2044
.annotate 'line', 1531
    find_lex $P2045, "$source"
    unless_null $P2045, vivify_922
    new $P2045, "Undef"
  vivify_922:
    store_lex "$result", $P2045
.annotate 'line', 1532
    getinterp $P2046
    $P2047 = $P2046."stderr_handle"()
    store_lex "$stderr", $P2047
.annotate 'line', 1533
    find_lex $P2049, "self"
    $P2050 = $P2049."stages"()
    defined $I2051, $P2050
    unless $I2051, for_undef_923
    iter $P2048, $P2050
    new $P2089, 'ExceptionHandler'
    set_label $P2089, loop2088_handler
    $P2089."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2089
  loop2088_test:
    unless $P2048, loop2088_done
    shift $P2052, $P2048
  loop2088_redo:
    .const 'Sub' $P2054 = "215_1307873286.70277" 
    capture_lex $P2054
    $P2054($P2052)
  loop2088_next:
    goto loop2088_test
  loop2088_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2090, exception, 'type'
    eq $P2090, .CONTROL_LOOP_NEXT, loop2088_next
    eq $P2090, .CONTROL_LOOP_REDO, loop2088_redo
  loop2088_done:
    pop_eh 
  for_undef_923:
.annotate 'line', 1543
    new $P2091, "Exception"
    set $P2091['type'], .CONTROL_RETURN
    find_lex $P2092, "$result"
    unless_null $P2092, vivify_935
    new $P2092, "Undef"
  vivify_935:
    setattribute $P2091, 'payload', $P2092
    throw $P2091
.annotate 'line', 1527
    .return ()
  control_2027:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2093, exception, "payload"
    .return ($P2093)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2053"  :anon :subid("215_1307873286.70277") :outer("214_1307873286.70277")
    .param pmc param_2057
.annotate 'line', 1534
    new $P2055, "Undef"
    .lex "$timestamp", $P2055
.annotate 'line', 1536
    new $P2056, "Undef"
    .lex "$diff", $P2056
    .lex "$_", param_2057
.annotate 'line', 1534
    time $N2058
    new $P2059, 'Float'
    set $P2059, $N2058
    store_lex "$timestamp", $P2059
.annotate 'line', 1535
    find_lex $P2060, "self"
    find_lex $P2061, "$result"
    unless_null $P2061, vivify_924
    new $P2061, "Undef"
  vivify_924:
    find_lex $P2062, "%adverbs"
    unless_null $P2062, vivify_925
    $P2062 = root_new ['parrot';'Hash']
  vivify_925:
    find_lex $P2063, "$_"
    unless_null $P2063, vivify_926
    new $P2063, "Undef"
  vivify_926:
    set $S2064, $P2063
    $P2065 = $P2060.$S2064($P2061, $P2062 :flat)
    store_lex "$result", $P2065
.annotate 'line', 1536
    time $N2066
    new $P2067, 'Float'
    set $P2067, $N2066
    find_lex $P2068, "$timestamp"
    unless_null $P2068, vivify_927
    new $P2068, "Undef"
  vivify_927:
    sub $P2069, $P2067, $P2068
    store_lex "$diff", $P2069
.annotate 'line', 1537
    find_lex $P2071, "%adverbs"
    unless_null $P2071, vivify_928
    $P2071 = root_new ['parrot';'Hash']
  vivify_928:
    set $P2072, $P2071["stagestats"]
    unless_null $P2072, vivify_929
    new $P2072, "Undef"
  vivify_929:
    unless $P2072, if_2070_end
.annotate 'line', 1539
    find_lex $P2073, "$stderr"
    unless_null $P2073, vivify_930
    new $P2073, "Undef"
  vivify_930:
    new $P2074, 'String'
    set $P2074, "Stage "
    find_lex $P2075, "$_"
    unless_null $P2075, vivify_931
    new $P2075, "Undef"
  vivify_931:
    concat $P2076, $P2074, $P2075
    concat $P2077, $P2076, ": "
    find_lex $P2078, "$diff"
    unless_null $P2078, vivify_932
    new $P2078, "Undef"
  vivify_932:
    concat $P2079, $P2077, $P2078
    concat $P2080, $P2079, "\n"
    $P2073."print__N"($P2080)
  if_2070_end:
.annotate 'line', 1541
    find_lex $P2083, "$_"
    unless_null $P2083, vivify_933
    new $P2083, "Undef"
  vivify_933:
    set $S2084, $P2083
    find_lex $P2085, "$target"
    unless_null $P2085, vivify_934
    new $P2085, "Undef"
  vivify_934:
    set $S2086, $P2085
    iseq $I2087, $S2084, $S2086
    if $I2087, if_2082
    new $P2081, 'Integer'
    set $P2081, $I2087
    goto if_2082_end
  if_2082:
    die 0, .CONTROL_LOOP_LAST
  if_2082_end:
.annotate 'line', 1533
    .return ($P2081)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("216_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2097
    .param pmc param_2098
    .param pmc param_2099 :slurpy :named
.annotate 'line', 1546
    .const 'Sub' $P2116 = "217_1307873286.70277" 
    capture_lex $P2116
    new $P2096, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2096, control_2095
    push_eh $P2096
    .lex "self", param_2097
    .lex "$source", param_2098
    .lex "%adverbs", param_2099
.annotate 'line', 1547
    new $P2100, "Undef"
    .lex "$s", $P2100
.annotate 'line', 1556
    new $P2101, "Undef"
    .lex "$grammar", $P2101
.annotate 'line', 1557
    new $P2102, "Undef"
    .lex "$actions", $P2102
.annotate 'line', 1559
    new $P2103, "Undef"
    .lex "$match", $P2103
.annotate 'line', 1547
    find_lex $P2104, "$source"
    unless_null $P2104, vivify_936
    new $P2104, "Undef"
  vivify_936:
    store_lex "$s", $P2104
.annotate 'line', 1548
    find_lex $P2106, "%adverbs"
    unless_null $P2106, vivify_937
    $P2106 = root_new ['parrot';'Hash']
  vivify_937:
    set $P2107, $P2106["transcode"]
    unless_null $P2107, vivify_938
    new $P2107, "Undef"
  vivify_938:
    unless $P2107, if_2105_end
.annotate 'line', 1549
    find_lex $P2109, "%adverbs"
    unless_null $P2109, vivify_939
    $P2109 = root_new ['parrot';'Hash']
  vivify_939:
    set $P2110, $P2109["transcode"]
    unless_null $P2110, vivify_940
    new $P2110, "Undef"
  vivify_940:
    set $S2111, $P2110
    split $P2112, " ", $S2111
    defined $I2113, $P2112
    unless $I2113, for_undef_941
    iter $P2108, $P2112
    new $P2136, 'ExceptionHandler'
    set_label $P2136, loop2135_handler
    $P2136."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2136
  loop2135_test:
    unless $P2108, loop2135_done
    shift $P2114, $P2108
  loop2135_redo:
    .const 'Sub' $P2116 = "217_1307873286.70277" 
    capture_lex $P2116
    $P2116($P2114)
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
  for_undef_941:
  if_2105_end:
.annotate 'line', 1556
    find_lex $P2138, "self"
    $P2139 = $P2138."parsegrammar"()
    store_lex "$grammar", $P2139
    find_lex $P2140, "$actions"
    unless_null $P2140, vivify_944
    new $P2140, "Undef"
  vivify_944:
.annotate 'line', 1558
    find_lex $P2142, "%adverbs"
    unless_null $P2142, vivify_945
    $P2142 = root_new ['parrot';'Hash']
  vivify_945:
    set $P2143, $P2142["target"]
    unless_null $P2143, vivify_946
    new $P2143, "Undef"
  vivify_946:
    set $S2144, $P2143
    iseq $I2145, $S2144, "parse"
    if $I2145, unless_2141_end
    find_lex $P2146, "self"
    $P2147 = $P2146."parseactions"()
    store_lex "$actions", $P2147
  unless_2141_end:
.annotate 'line', 1559
    find_lex $P2148, "$grammar"
    unless_null $P2148, vivify_947
    new $P2148, "Undef"
  vivify_947:
    find_lex $P2149, "$s"
    unless_null $P2149, vivify_948
    new $P2149, "Undef"
  vivify_948:
    find_lex $P2150, "$actions"
    unless_null $P2150, vivify_949
    new $P2150, "Undef"
  vivify_949:
    find_lex $P2151, "%adverbs"
    unless_null $P2151, vivify_950
    $P2151 = root_new ['parrot';'Hash']
  vivify_950:
    set $P2152, $P2151["rxtrace"]
    unless_null $P2152, vivify_951
    new $P2152, "Undef"
  vivify_951:
    $P2153 = $P2148."parse"($P2149, 0 :named("p"), $P2150 :named("actions"), $P2152 :named("rxtrace"))
    store_lex "$match", $P2153
.annotate 'line', 1560
    find_lex $P2155, "$match"
    unless_null $P2155, vivify_952
    new $P2155, "Undef"
  vivify_952:
    if $P2155, unless_2154_end
    find_lex $P2156, "self"
    $P2156."panic"("Unable to parse source")
  unless_2154_end:
.annotate 'line', 1561
    new $P2157, "Exception"
    set $P2157['type'], .CONTROL_RETURN
    find_lex $P2158, "$match"
    unless_null $P2158, vivify_953
    new $P2158, "Undef"
  vivify_953:
    setattribute $P2157, 'payload', $P2158
    throw $P2157
.annotate 'line', 1546
    .return ()
  control_2095:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2159, exception, "payload"
    .return ($P2159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2115"  :anon :subid("217_1307873286.70277") :outer("216_1307873286.70277")
    .param pmc param_2117
.annotate 'line', 1549
    .const 'Sub' $P2119 = "218_1307873286.70277" 
    capture_lex $P2119
    .lex "$_", param_2117
.annotate 'line', 1550
    .const 'Sub' $P2119 = "218_1307873286.70277" 
    capture_lex $P2119
    $P2134 = $P2119()
.annotate 'line', 1549
    .return ($P2134)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2118"  :anon :subid("218_1307873286.70277") :outer("217_1307873286.70277")
.annotate 'line', 1550
    new $P2129, 'ExceptionHandler'
    set_label $P2129, control_2128
    $P2129."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2129
.annotate 'line', 1551
    find_lex $P2120, "$s"
    unless_null $P2120, vivify_942
    new $P2120, "Undef"
  vivify_942:
    set $S2121, $P2120
.annotate 'line', 1552
    find_lex $P2122, "$_"
    unless_null $P2122, vivify_943
    new $P2122, "Undef"
  vivify_943:
    set $S2123, $P2122
    find_encoding $I2124, $S2123
    trans_encoding $S2125, $S2121, $I2124
.annotate 'line', 1551
    new $P2126, 'String'
    set $P2126, $S2125
    store_lex "$s", $P2126
.annotate 'line', 1550
    pop_eh 
    goto skip_handler_2127
  control_2128:
    .local pmc exception 
    .get_results (exception) 
    new $P2132, 'Integer'
    set $P2132, 1
    set exception["handled"], $P2132
    set $I2133, exception["handled"]
    ne $I2133, 1, nothandled_2131
  handled_2130:
    .return (exception)
  nothandled_2131:
    rethrow exception
  skip_handler_2127:
    .return ($P2126)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("219_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2161
    .param pmc param_2162
    .param pmc param_2163 :slurpy :named
.annotate 'line', 1564
    .lex "self", param_2161
    .lex "$source", param_2162
    .lex "%adverbs", param_2163
.annotate 'line', 1565

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        
.annotate 'line', 1564
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("220_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2165
    .param pmc param_2166
    .param pmc param_2167 :slurpy :named
.annotate 'line', 1604
    .lex "self", param_2165
    .lex "$source", param_2166
    .lex "%adverbs", param_2167
.annotate 'line', 1605
    compreg $P2168, "PAST"
    find_lex $P2169, "$source"
    unless_null $P2169, vivify_954
    new $P2169, "Undef"
  vivify_954:
    find_lex $P2170, "%adverbs"
    unless_null $P2170, vivify_955
    $P2170 = root_new ['parrot';'Hash']
  vivify_955:
    $P2171 = $P2168."to_post"($P2169, $P2170 :flat)
.annotate 'line', 1604
    .return ($P2171)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("221_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2173
.annotate 'line', 1608
    .lex "self", param_2173
.annotate 'line', 1610
    new $P2174, "String"
    assign $P2174, ".include 'cclass.pasm'\n"
    concat $P2175, $P2174, ".include 'except_severity.pasm'\n"
    concat $P2176, $P2175, ".include 'except_types.pasm'\n"
.annotate 'line', 1611
    concat $P2177, $P2176, ".include 'iglobals.pasm'\n"
.annotate 'line', 1612
    concat $P2178, $P2177, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1613
    concat $P2179, $P2178, ".include 'iterator.pasm'\n"
.annotate 'line', 1614
    concat $P2180, $P2179, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1608
    .return ($P2180)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("222_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2182
    .param pmc param_2183
    .param pmc param_2184 :slurpy :named
.annotate 'line', 1618
    .lex "self", param_2182
    .lex "$source", param_2183
    .lex "%adverbs", param_2184
.annotate 'line', 1619
    find_lex $P2185, "self"
    $P2186 = $P2185."pirbegin"()
    compreg $P2187, "POST"
    find_lex $P2188, "$source"
    unless_null $P2188, vivify_956
    new $P2188, "Undef"
  vivify_956:
    find_lex $P2189, "%adverbs"
    unless_null $P2189, vivify_957
    $P2189 = root_new ['parrot';'Hash']
  vivify_957:
    $S2190 = $P2187."to_pir"($P2188, $P2189 :flat)
    concat $P2191, $P2186, $S2190
.annotate 'line', 1618
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("223_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2193
    .param pmc param_2194
    .param pmc param_2195 :slurpy :named
.annotate 'line', 1622
    .lex "self", param_2193
    .lex "$source", param_2194
    .lex "%adverbs", param_2195
.annotate 'line', 1623
    new $P2196, "Undef"
    .lex "$compiler", $P2196
    compreg $P2197, "PIR"
    store_lex "$compiler", $P2197
.annotate 'line', 1624
    find_lex $P2198, "$compiler"
    unless_null $P2198, vivify_958
    new $P2198, "Undef"
  vivify_958:
    find_lex $P2199, "$source"
    unless_null $P2199, vivify_959
    new $P2199, "Undef"
  vivify_959:
    $P2200 = $P2198($P2199)
.annotate 'line', 1622
    .return ($P2200)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("224_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2202
    .param pmc param_2203
    .param pmc param_2204
    .param pmc param_2205 :slurpy :named
.annotate 'line', 1627
    .const 'Sub' $P2211 = "225_1307873286.70277" 
    capture_lex $P2211
    .lex "self", param_2202
    .lex "$obj", param_2203
    .lex "$name", param_2204
    .lex "%options", param_2205
.annotate 'line', 1628
    find_lex $P2208, "%options"
    unless_null $P2208, vivify_960
    $P2208 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2209, $P2208["dumper"]
    unless_null $P2209, vivify_961
    new $P2209, "Undef"
  vivify_961:
    if $P2209, if_2207
.annotate 'line', 1634
    find_lex $P2227, "$obj"
    unless_null $P2227, vivify_962
    new $P2227, "Undef"
  vivify_962:
    find_lex $P2228, "$name"
    unless_null $P2228, vivify_963
    new $P2228, "Undef"
  vivify_963:
    $P2229 = "_dumper"($P2227, $P2228)
.annotate 'line', 1633
    set $P2206, $P2229
.annotate 'line', 1628
    goto if_2207_end
  if_2207:
    .const 'Sub' $P2211 = "225_1307873286.70277" 
    capture_lex $P2211
    $P2226 = $P2211()
    set $P2206, $P2226
  if_2207_end:
.annotate 'line', 1627
    .return ($P2206)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2210"  :anon :subid("225_1307873286.70277") :outer("224_1307873286.70277")
.annotate 'line', 1630
    new $P2212, "Undef"
    .lex "$dumper", $P2212
.annotate 'line', 1629
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1630
    find_lex $P2213, "%options"
    unless_null $P2213, vivify_964
    $P2213 = root_new ['parrot';'Hash']
  vivify_964:
    set $P2214, $P2213["dumper"]
    unless_null $P2214, vivify_965
    new $P2214, "Undef"
  vivify_965:
    set $S2215, $P2214
    downcase $S2216, $S2215
    get_hll_global $P2217, "GLOBAL"
    nqp_get_package_through_who $P2218, $P2217, "PCT"
    get_who $P2219, $P2218
    set $P2220, $P2219["Dumper"]
    unless_null $P2220, vivify_966
    $P2220 = root_new ['parrot';'Hash']
  vivify_966:
    set $P2221, $P2220[$S2216]
    unless_null $P2221, vivify_967
    new $P2221, "Undef"
  vivify_967:
    store_lex "$dumper", $P2221
.annotate 'line', 1631
    find_lex $P2222, "$dumper"
    unless_null $P2222, vivify_968
    new $P2222, "Undef"
  vivify_968:
    find_lex $P2223, "$obj"
    unless_null $P2223, vivify_969
    new $P2223, "Undef"
  vivify_969:
    find_lex $P2224, "$name"
    unless_null $P2224, vivify_970
    new $P2224, "Undef"
  vivify_970:
    $P2225 = $P2222($P2223, $P2224)
.annotate 'line', 1628
    .return ($P2225)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("226_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2231
    .param pmc param_2232 :optional
    .param int has_param_2232 :opt_flag
.annotate 'line', 1638
    .lex "self", param_2231
    if has_param_2232, optparam_971
    new $P2233, "Undef"
    set param_2232, $P2233
  optparam_971:
    .lex "$name", param_2232
.annotate 'line', 1639
    find_lex $P2235, "$name"
    unless_null $P2235, vivify_972
    new $P2235, "Undef"
  vivify_972:
    unless $P2235, if_2234_end
.annotate 'line', 1640
    find_lex $P2236, "$name"
    unless_null $P2236, vivify_973
    new $P2236, "Undef"
  vivify_973:
    "say"($P2236)
  if_2234_end:
.annotate 'line', 1642
    find_lex $P2237, "self"
    find_lex $P2238, "$?CLASS"
    getattribute $P2239, $P2237, $P2238, "$!usage"
    unless_null $P2239, vivify_974
    new $P2239, "Undef"
  vivify_974:
    say $P2239
.annotate 'line', 1643
    exit 0
.annotate 'line', 1638
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("227_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2241
.annotate 'line', 1646
    .lex "self", param_2241
.annotate 'line', 1647
    new $P2242, "Undef"
    .lex "$version", $P2242
.annotate 'line', 1648
    new $P2243, "Undef"
    .lex "$parver", $P2243
.annotate 'line', 1649
    new $P2244, "Undef"
    .lex "$parrev", $P2244
.annotate 'line', 1647
    find_lex $P2245, "self"
    find_lex $P2246, "$?CLASS"
    getattribute $P2247, $P2245, $P2246, "%!config"
    unless_null $P2247, vivify_975
    $P2247 = root_new ['parrot';'Hash']
  vivify_975:
    set $P2248, $P2247["version"]
    unless_null $P2248, vivify_976
    new $P2248, "Undef"
  vivify_976:
    store_lex "$version", $P2248
.annotate 'line', 1648
    find_lex $P2249, "$?PACKAGE"
    get_who $P2250, $P2249
    set $P2251, $P2250["%parrot_config"]
    unless_null $P2251, vivify_977
    $P2251 = root_new ['parrot';'Hash']
  vivify_977:
    set $P2252, $P2251["VERSION"]
    unless_null $P2252, vivify_978
    new $P2252, "Undef"
  vivify_978:
    store_lex "$parver", $P2252
.annotate 'line', 1649
    find_lex $P2254, "$?PACKAGE"
    get_who $P2255, $P2254
    set $P2256, $P2255["%parrot_config"]
    unless_null $P2256, vivify_979
    $P2256 = root_new ['parrot';'Hash']
  vivify_979:
    set $P2257, $P2256["git_describe"]
    unless_null $P2257, vivify_980
    new $P2257, "Undef"
  vivify_980:
    set $P2253, $P2257
    defined $I2259, $P2253
    if $I2259, default_2258
    new $P2260, "String"
    assign $P2260, "(unknown)"
    set $P2253, $P2260
  default_2258:
    store_lex "$parrev", $P2253
.annotate 'line', 1650
    new $P2261, 'String'
    set $P2261, "This is "
    find_lex $P2262, "self"
    find_lex $P2263, "$?CLASS"
    getattribute $P2264, $P2262, $P2263, "$!language"
    unless_null $P2264, vivify_981
    new $P2264, "Undef"
  vivify_981:
    concat $P2265, $P2261, $P2264
    concat $P2266, $P2265, " version "
    find_lex $P2267, "$version"
    unless_null $P2267, vivify_982
    new $P2267, "Undef"
  vivify_982:
    concat $P2268, $P2266, $P2267
    concat $P2269, $P2268, " built on parrot "
    find_lex $P2270, "$parver"
    unless_null $P2270, vivify_983
    new $P2270, "Undef"
  vivify_983:
    concat $P2271, $P2269, $P2270
    concat $P2272, $P2271, " revision "
    find_lex $P2273, "$parrev"
    unless_null $P2273, vivify_984
    new $P2273, "Undef"
  vivify_984:
    concat $P2274, $P2272, $P2273
    say $P2274
.annotate 'line', 1651
    exit 0
.annotate 'line', 1646
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("228_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2276
.annotate 'line', 1654
    .const 'Sub' $P2304 = "230_1307873286.70277" 
    capture_lex $P2304
    .const 'Sub' $P2284 = "229_1307873286.70277" 
    capture_lex $P2284
    .lex "self", param_2276
.annotate 'line', 1655
    find_lex $P2278, "$?PACKAGE"
    get_who $P2279, $P2278
    set $P2280, $P2279["%parrot_config"]
    unless_null $P2280, vivify_985
    $P2280 = root_new ['parrot';'Hash']
  vivify_985:
    defined $I2281, $P2280
    unless $I2281, for_undef_986
    iter $P2277, $P2280
    new $P2295, 'ExceptionHandler'
    set_label $P2295, loop2294_handler
    $P2295."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2295
  loop2294_test:
    unless $P2277, loop2294_done
    shift $P2282, $P2277
  loop2294_redo:
    .const 'Sub' $P2284 = "229_1307873286.70277" 
    capture_lex $P2284
    $P2284($P2282)
  loop2294_next:
    goto loop2294_test
  loop2294_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2296, exception, 'type'
    eq $P2296, .CONTROL_LOOP_NEXT, loop2294_next
    eq $P2296, .CONTROL_LOOP_REDO, loop2294_redo
  loop2294_done:
    pop_eh 
  for_undef_986:
.annotate 'line', 1658
    find_lex $P2298, "self"
    find_lex $P2299, "$?CLASS"
    getattribute $P2300, $P2298, $P2299, "%!config"
    unless_null $P2300, vivify_989
    $P2300 = root_new ['parrot';'Hash']
  vivify_989:
    defined $I2301, $P2300
    unless $I2301, for_undef_990
    iter $P2297, $P2300
    new $P2318, 'ExceptionHandler'
    set_label $P2318, loop2317_handler
    $P2318."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2318
  loop2317_test:
    unless $P2297, loop2317_done
    shift $P2302, $P2297
  loop2317_redo:
    .const 'Sub' $P2304 = "230_1307873286.70277" 
    capture_lex $P2304
    $P2304($P2302)
  loop2317_next:
    goto loop2317_test
  loop2317_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2319, exception, 'type'
    eq $P2319, .CONTROL_LOOP_NEXT, loop2317_next
    eq $P2319, .CONTROL_LOOP_REDO, loop2317_redo
  loop2317_done:
    pop_eh 
  for_undef_990:
.annotate 'line', 1661
    exit 0
.annotate 'line', 1654
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2283"  :anon :subid("229_1307873286.70277") :outer("228_1307873286.70277")
    .param pmc param_2285
.annotate 'line', 1655
    .lex "$_", param_2285
.annotate 'line', 1656
    new $P2286, "String"
    assign $P2286, "parrot::"
    find_lex $P2287, "$_"
    unless_null $P2287, vivify_987
    new $P2287, "Undef"
  vivify_987:
    $S2288 = $P2287."key"()
    concat $P2289, $P2286, $S2288
    concat $P2290, $P2289, "="
    find_lex $P2291, "$_"
    unless_null $P2291, vivify_988
    new $P2291, "Undef"
  vivify_988:
    $S2292 = $P2291."value"()
    concat $P2293, $P2290, $S2292
    say $P2293
.annotate 'line', 1655
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2303"  :anon :subid("230_1307873286.70277") :outer("228_1307873286.70277")
    .param pmc param_2305
.annotate 'line', 1658
    .lex "$_", param_2305
.annotate 'line', 1659
    find_lex $P2306, "self"
    find_lex $P2307, "$?CLASS"
    getattribute $P2308, $P2306, $P2307, "$!language"
    unless_null $P2308, vivify_991
    new $P2308, "Undef"
  vivify_991:
    concat $P2309, $P2308, "::"
    find_lex $P2310, "$_"
    unless_null $P2310, vivify_992
    new $P2310, "Undef"
  vivify_992:
    $S2311 = $P2310."key"()
    concat $P2312, $P2309, $S2311
    concat $P2313, $P2312, "="
    find_lex $P2314, "$_"
    unless_null $P2314, vivify_993
    new $P2314, "Undef"
  vivify_993:
    $S2315 = $P2314."value"()
    concat $P2316, $P2313, $S2315
    say $P2316
.annotate 'line', 1658
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("231_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2321
    .param pmc param_2322
.annotate 'line', 1664
    .const 'Sub' $P2332 = "232_1307873286.70277" 
    capture_lex $P2332
    .lex "self", param_2321
    .lex "$stagename", param_2322
.annotate 'line', 1665
    $P2323 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2323
    new $P2324, "ResizableStringArray"
    store_lex "@new_stages", $P2324
.annotate 'line', 1666
    find_lex $P2326, "self"
    find_lex $P2327, "$?CLASS"
    getattribute $P2328, $P2326, $P2327, "@!stages"
    unless_null $P2328, vivify_994
    $P2328 = root_new ['parrot';'ResizablePMCArray']
  vivify_994:
    defined $I2329, $P2328
    unless $I2329, for_undef_995
    iter $P2325, $P2328
    new $P2345, 'ExceptionHandler'
    set_label $P2345, loop2344_handler
    $P2345."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2345
  loop2344_test:
    unless $P2325, loop2344_done
    shift $P2330, $P2325
  loop2344_redo:
    .const 'Sub' $P2332 = "232_1307873286.70277" 
    capture_lex $P2332
    $P2332($P2330)
  loop2344_next:
    goto loop2344_test
  loop2344_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2346, exception, 'type'
    eq $P2346, .CONTROL_LOOP_NEXT, loop2344_next
    eq $P2346, .CONTROL_LOOP_REDO, loop2344_redo
  loop2344_done:
    pop_eh 
  for_undef_995:
.annotate 'line', 1671
    find_lex $P2347, "@new_stages"
    unless_null $P2347, vivify_1000
    $P2347 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    find_lex $P2348, "self"
    find_lex $P2349, "$?CLASS"
    setattribute $P2348, $P2349, "@!stages", $P2347
.annotate 'line', 1664
    .return ($P2347)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2331"  :anon :subid("232_1307873286.70277") :outer("231_1307873286.70277")
    .param pmc param_2333
.annotate 'line', 1666
    .lex "$_", param_2333
.annotate 'line', 1667
    find_lex $P2336, "$_"
    unless_null $P2336, vivify_996
    new $P2336, "Undef"
  vivify_996:
    set $S2337, $P2336
    find_lex $P2338, "$stagename"
    unless_null $P2338, vivify_997
    new $P2338, "Undef"
  vivify_997:
    set $S2339, $P2338
    isne $I2340, $S2337, $S2339
    if $I2340, if_2335
    new $P2334, 'Integer'
    set $P2334, $I2340
    goto if_2335_end
  if_2335:
.annotate 'line', 1668
    find_lex $P2341, "@new_stages"
    unless_null $P2341, vivify_998
    $P2341 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2342, "$_"
    unless_null $P2342, vivify_999
    new $P2342, "Undef"
  vivify_999:
    $P2343 = $P2341."push"($P2342)
.annotate 'line', 1667
    set $P2334, $P2343
  if_2335_end:
.annotate 'line', 1666
    .return ($P2334)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("233_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2353
    .param pmc param_2354
    .param pmc param_2355 :slurpy :named
.annotate 'line', 1674
    .const 'Sub' $P2392 = "235_1307873286.70277" 
    capture_lex $P2392
    .const 'Sub' $P2374 = "234_1307873286.70277" 
    capture_lex $P2374
    new $P2352, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2352, control_2351
    push_eh $P2352
    .lex "self", param_2353
    .lex "$stagename", param_2354
    .lex "%adverbs", param_2355
.annotate 'line', 1675
    new $P2356, "Undef"
    .lex "$position", $P2356
.annotate 'line', 1676
    new $P2357, "Undef"
    .lex "$where", $P2357
.annotate 'line', 1689
    $P2358 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2358
.annotate 'line', 1674
    find_lex $P2359, "$position"
    unless_null $P2359, vivify_1001
    new $P2359, "Undef"
  vivify_1001:
    find_lex $P2360, "$where"
    unless_null $P2360, vivify_1002
    new $P2360, "Undef"
  vivify_1002:
.annotate 'line', 1677
    find_lex $P2362, "%adverbs"
    unless_null $P2362, vivify_1003
    $P2362 = root_new ['parrot';'Hash']
  vivify_1003:
    set $P2363, $P2362["before"]
    unless_null $P2363, vivify_1004
    new $P2363, "Undef"
  vivify_1004:
    if $P2363, if_2361
.annotate 'line', 1680
    find_lex $P2368, "%adverbs"
    unless_null $P2368, vivify_1005
    $P2368 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P2369, $P2368["after"]
    unless_null $P2369, vivify_1006
    new $P2369, "Undef"
  vivify_1006:
    if $P2369, if_2367
.annotate 'line', 1683
    .const 'Sub' $P2374 = "234_1307873286.70277" 
    capture_lex $P2374
    $P2374()
    goto if_2367_end
  if_2367:
.annotate 'line', 1681
    find_lex $P2370, "%adverbs"
    unless_null $P2370, vivify_1010
    $P2370 = root_new ['parrot';'Hash']
  vivify_1010:
    set $P2371, $P2370["after"]
    unless_null $P2371, vivify_1011
    new $P2371, "Undef"
  vivify_1011:
    store_lex "$where", $P2371
.annotate 'line', 1682
    new $P2372, "String"
    assign $P2372, "after"
    store_lex "$position", $P2372
  if_2367_end:
.annotate 'line', 1680
    goto if_2361_end
  if_2361:
.annotate 'line', 1678
    find_lex $P2364, "%adverbs"
    unless_null $P2364, vivify_1012
    $P2364 = root_new ['parrot';'Hash']
  vivify_1012:
    set $P2365, $P2364["before"]
    unless_null $P2365, vivify_1013
    new $P2365, "Undef"
  vivify_1013:
    store_lex "$where", $P2365
.annotate 'line', 1679
    new $P2366, "String"
    assign $P2366, "before"
    store_lex "$position", $P2366
  if_2361_end:
.annotate 'line', 1689
    new $P2385, "ResizableStringArray"
    store_lex "@new-stages", $P2385
.annotate 'line', 1690
    find_lex $P2387, "self"
    $P2388 = $P2387."stages"()
    defined $I2389, $P2388
    unless $I2389, for_undef_1014
    iter $P2386, $P2388
    new $P2417, 'ExceptionHandler'
    set_label $P2417, loop2416_handler
    $P2417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2417
  loop2416_test:
    unless $P2386, loop2416_done
    shift $P2390, $P2386
  loop2416_redo:
    .const 'Sub' $P2392 = "235_1307873286.70277" 
    capture_lex $P2392
    $P2392($P2390)
  loop2416_next:
    goto loop2416_test
  loop2416_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2418, exception, 'type'
    eq $P2418, .CONTROL_LOOP_NEXT, loop2416_next
    eq $P2418, .CONTROL_LOOP_REDO, loop2416_redo
  loop2416_done:
    pop_eh 
  for_undef_1014:
.annotate 'line', 1703
    find_lex $P2419, "self"
    find_lex $P2420, "@new-stages"
    unless_null $P2420, vivify_1028
    $P2420 = root_new ['parrot';'ResizablePMCArray']
  vivify_1028:
    $P2421 = $P2419."stages"($P2420)
.annotate 'line', 1674
    .return ($P2421)
  control_2351:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2422, exception, "payload"
    .return ($P2422)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2373"  :anon :subid("234_1307873286.70277") :outer("233_1307873286.70277")
.annotate 'line', 1684
    $P2375 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2375
    find_lex $P2376, "self"
    $P2377 = $P2376."stages"()
    clone $P2378, $P2377
    store_lex "@new-stages", $P2378
.annotate 'line', 1685
    find_lex $P2379, "@new-stages"
    unless_null $P2379, vivify_1007
    $P2379 = root_new ['parrot';'ResizablePMCArray']
  vivify_1007:
    find_lex $P2380, "$stagename"
    unless_null $P2380, vivify_1008
    new $P2380, "Undef"
  vivify_1008:
    push $P2379, $P2380
.annotate 'line', 1686
    find_lex $P2381, "self"
    find_lex $P2382, "@new-stages"
    unless_null $P2382, vivify_1009
    $P2382 = root_new ['parrot';'ResizablePMCArray']
  vivify_1009:
    $P2381."stages"($P2382)
.annotate 'line', 1687
    new $P2383, "Exception"
    set $P2383['type'], .CONTROL_RETURN
    new $P2384, "Integer"
    assign $P2384, 1
    setattribute $P2383, 'payload', $P2384
    throw $P2383
.annotate 'line', 1683
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2391"  :anon :subid("235_1307873286.70277") :outer("233_1307873286.70277")
    .param pmc param_2393
.annotate 'line', 1690
    .lex "$_", param_2393
.annotate 'line', 1691
    find_lex $P2396, "$_"
    unless_null $P2396, vivify_1015
    new $P2396, "Undef"
  vivify_1015:
    set $S2397, $P2396
    find_lex $P2398, "$where"
    unless_null $P2398, vivify_1016
    new $P2398, "Undef"
  vivify_1016:
    set $S2399, $P2398
    iseq $I2400, $S2397, $S2399
    if $I2400, if_2395
.annotate 'line', 1700
    find_lex $P2414, "@new-stages"
    unless_null $P2414, vivify_1017
    $P2414 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    find_lex $P2415, "$_"
    unless_null $P2415, vivify_1018
    new $P2415, "Undef"
  vivify_1018:
    push $P2414, $P2415
.annotate 'line', 1699
    set $P2394, $P2414
.annotate 'line', 1691
    goto if_2395_end
  if_2395:
.annotate 'line', 1692
    find_lex $P2403, "$position"
    unless_null $P2403, vivify_1019
    new $P2403, "Undef"
  vivify_1019:
    set $S2404, $P2403
    iseq $I2405, $S2404, "before"
    if $I2405, if_2402
.annotate 'line', 1696
    find_lex $P2410, "@new-stages"
    unless_null $P2410, vivify_1020
    $P2410 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    find_lex $P2411, "$_"
    unless_null $P2411, vivify_1021
    new $P2411, "Undef"
  vivify_1021:
    push $P2410, $P2411
.annotate 'line', 1697
    find_lex $P2412, "@new-stages"
    unless_null $P2412, vivify_1022
    $P2412 = root_new ['parrot';'ResizablePMCArray']
  vivify_1022:
    find_lex $P2413, "$stagename"
    unless_null $P2413, vivify_1023
    new $P2413, "Undef"
  vivify_1023:
    push $P2412, $P2413
.annotate 'line', 1695
    set $P2401, $P2412
.annotate 'line', 1692
    goto if_2402_end
  if_2402:
.annotate 'line', 1693
    find_lex $P2406, "@new-stages"
    unless_null $P2406, vivify_1024
    $P2406 = root_new ['parrot';'ResizablePMCArray']
  vivify_1024:
    find_lex $P2407, "$stagename"
    unless_null $P2407, vivify_1025
    new $P2407, "Undef"
  vivify_1025:
    push $P2406, $P2407
.annotate 'line', 1694
    find_lex $P2408, "@new-stages"
    unless_null $P2408, vivify_1026
    $P2408 = root_new ['parrot';'ResizablePMCArray']
  vivify_1026:
    find_lex $P2409, "$_"
    unless_null $P2409, vivify_1027
    new $P2409, "Undef"
  vivify_1027:
    push $P2408, $P2409
.annotate 'line', 1692
    set $P2401, $P2408
  if_2402_end:
.annotate 'line', 1691
    set $P2394, $P2401
  if_2395_end:
.annotate 'line', 1690
    .return ($P2394)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("236_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2424
    .param pmc param_2425
.annotate 'line', 1706
    .const 'Sub' $P2463 = "237_1307873286.70277" 
    capture_lex $P2463
    .lex "self", param_2424
    .lex "$name", param_2425
.annotate 'line', 1707
    $P2426 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2426
.annotate 'line', 1708
    new $P2427, "Undef"
    .lex "$sigil", $P2427
.annotate 'line', 1711
    new $P2428, "Undef"
    .lex "$idx", $P2428
.annotate 'line', 1719
    $P2429 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2429
.annotate 'line', 1707
    find_lex $P2430, "$name"
    unless_null $P2430, vivify_1029
    new $P2430, "Undef"
  vivify_1029:
    set $S2431, $P2430
    split $P2432, "::", $S2431
    store_lex "@ns", $P2432
.annotate 'line', 1708
    find_lex $P2433, "@ns"
    unless_null $P2433, vivify_1030
    $P2433 = root_new ['parrot';'ResizablePMCArray']
  vivify_1030:
    set $P2434, $P2433[0]
    unless_null $P2434, vivify_1031
    new $P2434, "Undef"
  vivify_1031:
    set $S2435, $P2434
    substr $S2436, $S2435, 0, 1
    new $P2437, 'String'
    set $P2437, $S2436
    store_lex "$sigil", $P2437
.annotate 'line', 1711
    find_lex $P2438, "$sigil"
    unless_null $P2438, vivify_1032
    new $P2438, "Undef"
  vivify_1032:
    set $S2439, $P2438
    index $I2440, "$@%&", $S2439
    new $P2441, 'Integer'
    set $P2441, $I2440
    store_lex "$idx", $P2441
.annotate 'line', 1712
    find_lex $P2443, "$idx"
    unless_null $P2443, vivify_1033
    new $P2443, "Undef"
  vivify_1033:
    set $N2444, $P2443
    isge $I2445, $N2444, 0.0
    unless $I2445, if_2442_end
.annotate 'line', 1713
    find_lex $P2446, "@ns"
    unless_null $P2446, vivify_1034
    $P2446 = root_new ['parrot';'ResizablePMCArray']
  vivify_1034:
    set $P2447, $P2446[0]
    unless_null $P2447, vivify_1035
    new $P2447, "Undef"
  vivify_1035:
    set $S2448, $P2447
    substr $S2449, $S2448, 1
    new $P2450, 'String'
    set $P2450, $S2449
    find_lex $P2451, "@ns"
    unless_null $P2451, vivify_1036
    $P2451 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2451
  vivify_1036:
    set $P2451[0], $P2450
.annotate 'line', 1714
    find_lex $P2452, "$sigil"
    unless_null $P2452, vivify_1037
    new $P2452, "Undef"
  vivify_1037:
    find_lex $P2453, "@ns"
    unless_null $P2453, vivify_1038
    $P2453 = root_new ['parrot';'ResizablePMCArray']
  vivify_1038:
    set $P2454, $P2453[-1]
    unless_null $P2454, vivify_1039
    new $P2454, "Undef"
  vivify_1039:
    concat $P2455, $P2452, $P2454
    find_lex $P2456, "@ns"
    unless_null $P2456, vivify_1040
    $P2456 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2456
  vivify_1040:
    set $P2456[-1], $P2455
  if_2442_end:
.annotate 'line', 1712
    find_lex $P2457, "@actual_ns"
    unless_null $P2457, vivify_1041
    $P2457 = root_new ['parrot';'ResizablePMCArray']
  vivify_1041:
.annotate 'line', 1720
    find_lex $P2459, "@ns"
    unless_null $P2459, vivify_1042
    $P2459 = root_new ['parrot';'ResizablePMCArray']
  vivify_1042:
    defined $I2460, $P2459
    unless $I2460, for_undef_1043
    iter $P2458, $P2459
    new $P2473, 'ExceptionHandler'
    set_label $P2473, loop2472_handler
    $P2473."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2473
  loop2472_test:
    unless $P2458, loop2472_done
    shift $P2461, $P2458
  loop2472_redo:
    .const 'Sub' $P2463 = "237_1307873286.70277" 
    capture_lex $P2463
    $P2463($P2461)
  loop2472_next:
    goto loop2472_test
  loop2472_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2474, exception, 'type'
    eq $P2474, .CONTROL_LOOP_NEXT, loop2472_next
    eq $P2474, .CONTROL_LOOP_REDO, loop2472_redo
  loop2472_done:
    pop_eh 
  for_undef_1043:
    find_lex $P2475, "@actual_ns"
    unless_null $P2475, vivify_1047
    $P2475 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
.annotate 'line', 1706
    .return ($P2475)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2462"  :anon :subid("237_1307873286.70277") :outer("236_1307873286.70277")
    .param pmc param_2464
.annotate 'line', 1720
    .lex "$_", param_2464
.annotate 'line', 1721
    find_lex $P2467, "$_"
    unless_null $P2467, vivify_1044
    new $P2467, "Undef"
  vivify_1044:
    set $S2468, $P2467
    iseq $I2469, $S2468, ""
    unless $I2469, unless_2466
    new $P2465, 'Integer'
    set $P2465, $I2469
    goto unless_2466_end
  unless_2466:
    find_lex $P2470, "@actual_ns"
    unless_null $P2470, vivify_1045
    $P2470 = root_new ['parrot';'ResizablePMCArray']
  vivify_1045:
    find_lex $P2471, "$_"
    unless_null $P2471, vivify_1046
    new $P2471, "Undef"
  vivify_1046:
    push $P2470, $P2471
    set $P2465, $P2470
  unless_2466_end:
.annotate 'line', 1720
    .return ($P2465)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("238_1307873286.70277") :outer("165_1307873286.70277")
    .param pmc param_2477
    .param pmc param_2478
    .param pmc param_2479
    .param pmc param_2480 :optional :named("cache")
    .param int has_param_2480 :opt_flag
.annotate 'line', 1726
    .lex "self", param_2477
    .lex "$target", param_2478
    .lex "$pos", param_2479
    if has_param_2480, optparam_1048
    new $P2481, "Undef"
    set param_2480, $P2481
  optparam_1048:
    .lex "$cache", param_2480
.annotate 'line', 1727

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
            unless null linepos goto linepos_done

            # calculate a new linepos array.
          linepos_build:
            linepos = new ['ResizableIntegerArray']
            unless cache goto linepos_build_1
            setprop target, '!linepos', linepos
          linepos_build_1:
            .local string s
            .local int jpos, eos
            s = target
            eos = length s
            jpos = 0
            # Search for all of the newline markers in C<target>.  When we
            # find one, mark the ending offset of the line in C<linepos>.
          linepos_loop:
            jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
            unless jpos < eos goto linepos_done
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
          linepos_done:

            # We have C<linepos>, so now we search the array for the largest
            # element that is not greater than C<pos>.  The index of that
            # element is the line number to be returned.
            # (Potential optimization: use a binary search.)
            .local int line, count
            count = elements linepos
            line = 0
          line_loop:
            if line >= count goto line_done
            $I0 = linepos[line]
            if $I0 > pos goto line_done
            inc line
            goto line_loop
          line_done:
            .return (line)
        
.annotate 'line', 1726
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2489"  :subid("239_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 1883
    .const 'Sub' $P2518 = "244_1307873286.70277" 
    capture_lex $P2518
    .const 'Sub' $P2511 = "243_1307873286.70277" 
    capture_lex $P2511
    .const 'Sub' $P2506 = "242_1307873286.70277" 
    capture_lex $P2506
    .const 'Sub' $P2501 = "241_1307873286.70277" 
    capture_lex $P2501
    .const 'Sub' $P2493 = "240_1307873286.70277" 
    capture_lex $P2493
    .lex "$?PACKAGE", $P2491
    .lex "$?CLASS", $P2492
.annotate 'line', 1899
    .const 'Sub' $P2518 = "244_1307873286.70277" 
    newclosure $P2566, $P2518
.annotate 'line', 1883
    .return ($P2566)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("240_1307873286.70277") :outer("239_1307873286.70277")
    .param pmc param_2494
.annotate 'line', 1887
    .lex "self", param_2494
.annotate 'line', 1888
    new $P2495, "ResizablePMCArray"
    find_lex $P2496, "self"
    find_lex $P2497, "$?CLASS"
    setattribute $P2496, $P2497, "@!arguments", $P2495
.annotate 'line', 1889
    new $P2498, "Hash"
    find_lex $P2499, "self"
    find_lex $P2500, "$?CLASS"
    setattribute $P2499, $P2500, "%!options", $P2498
.annotate 'line', 1887
    .return ($P2498)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("241_1307873286.70277") :outer("239_1307873286.70277")
    .param pmc param_2502
.annotate 'line', 1892
    .lex "self", param_2502
    find_lex $P2503, "self"
    find_lex $P2504, "$?CLASS"
    getattribute $P2505, $P2503, $P2504, "@!arguments"
    unless_null $P2505, vivify_1050
    $P2505 = root_new ['parrot';'ResizablePMCArray']
  vivify_1050:
    .return ($P2505)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("242_1307873286.70277") :outer("239_1307873286.70277")
    .param pmc param_2507
.annotate 'line', 1893
    .lex "self", param_2507
    find_lex $P2508, "self"
    find_lex $P2509, "$?CLASS"
    getattribute $P2510, $P2508, $P2509, "%!options"
    unless_null $P2510, vivify_1051
    $P2510 = root_new ['parrot';'Hash']
  vivify_1051:
    .return ($P2510)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("243_1307873286.70277") :outer("239_1307873286.70277")
    .param pmc param_2512
    .param pmc param_2513
.annotate 'line', 1895
    .lex "self", param_2512
    .lex "$x", param_2513
.annotate 'line', 1896
    find_lex $P2514, "self"
    find_lex $P2515, "$?CLASS"
    getattribute $P2516, $P2514, $P2515, "@!arguments"
    unless_null $P2516, vivify_1052
    $P2516 = root_new ['parrot';'ResizablePMCArray']
  vivify_1052:
    find_lex $P2517, "$x"
    unless_null $P2517, vivify_1053
    new $P2517, "Undef"
  vivify_1053:
    push $P2516, $P2517
.annotate 'line', 1895
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("244_1307873286.70277") :outer("239_1307873286.70277")
    .param pmc param_2519
    .param pmc param_2520
    .param pmc param_2521
.annotate 'line', 1899
    .const 'Sub' $P2530 = "245_1307873286.70277" 
    capture_lex $P2530
    .lex "self", param_2519
    .lex "$name", param_2520
    .lex "$value", param_2521
.annotate 'line', 1902
    find_lex $P2527, "$name"
    unless_null $P2527, vivify_1054
    new $P2527, "Undef"
  vivify_1054:
    find_lex $P2524, "self"
    find_lex $P2525, "$?CLASS"
    getattribute $P2526, $P2524, $P2525, "%!options"
    unless_null $P2526, vivify_1055
    $P2526 = root_new ['parrot';'Hash']
  vivify_1055:
    exists $I2528, $P2526[$P2527]
    if $I2528, if_2523
.annotate 'line', 1911
    find_lex $P2561, "$value"
    unless_null $P2561, vivify_1056
    new $P2561, "Undef"
  vivify_1056:
    find_lex $P2562, "$name"
    unless_null $P2562, vivify_1057
    new $P2562, "Undef"
  vivify_1057:
    find_lex $P2563, "self"
    find_lex $P2564, "$?CLASS"
    getattribute $P2565, $P2563, $P2564, "%!options"
    unless_null $P2565, vivify_1058
    $P2565 = root_new ['parrot';'Hash']
    setattribute $P2563, $P2564, "%!options", $P2565
  vivify_1058:
    set $P2565[$P2562], $P2561
.annotate 'line', 1910
    set $P2522, $P2561
.annotate 'line', 1902
    goto if_2523_end
  if_2523:
    .const 'Sub' $P2530 = "245_1307873286.70277" 
    capture_lex $P2530
    $P2560 = $P2530()
    set $P2522, $P2560
  if_2523_end:
.annotate 'line', 1899
    .return ($P2522)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2529"  :anon :subid("245_1307873286.70277") :outer("244_1307873286.70277")
.annotate 'line', 1903
    new $P2531, "Undef"
    .lex "$t", $P2531
    find_lex $P2532, "self"
    find_lex $P2533, "$?CLASS"
    getattribute $P2534, $P2532, $P2533, "%!options"
    unless_null $P2534, vivify_1059
    $P2534 = root_new ['parrot';'Hash']
  vivify_1059:
    typeof $S2535, $P2534
    new $P2536, 'String'
    set $P2536, $S2535
    store_lex "$t", $P2536
.annotate 'line', 1904
    find_lex $P2537, "$t"
    unless_null $P2537, vivify_1060
    new $P2537, "Undef"
  vivify_1060:
    "say"($P2537)
.annotate 'line', 1905
    find_lex $P2540, "$t"
    unless_null $P2540, vivify_1061
    new $P2540, "Undef"
  vivify_1061:
    set $S2541, $P2540
    iseq $I2542, $S2541, "ResizablePMCArray"
    if $I2542, if_2539
.annotate 'line', 1908
    find_lex $P2549, "$name"
    unless_null $P2549, vivify_1062
    new $P2549, "Undef"
  vivify_1062:
    find_lex $P2550, "self"
    find_lex $P2551, "$?CLASS"
    getattribute $P2552, $P2550, $P2551, "%!options"
    unless_null $P2552, vivify_1063
    $P2552 = root_new ['parrot';'Hash']
  vivify_1063:
    set $P2553, $P2552[$P2549]
    unless_null $P2553, vivify_1064
    new $P2553, "Undef"
  vivify_1064:
    find_lex $P2554, "$name"
    unless_null $P2554, vivify_1065
    new $P2554, "Undef"
  vivify_1065:
    new $P2555, "ResizablePMCArray"
    push $P2555, $P2553
    push $P2555, $P2554
    find_lex $P2556, "$name"
    unless_null $P2556, vivify_1066
    new $P2556, "Undef"
  vivify_1066:
    find_lex $P2557, "self"
    find_lex $P2558, "$?CLASS"
    getattribute $P2559, $P2557, $P2558, "%!options"
    unless_null $P2559, vivify_1067
    $P2559 = root_new ['parrot';'Hash']
    setattribute $P2557, $P2558, "%!options", $P2559
  vivify_1067:
    set $P2559[$P2556], $P2555
.annotate 'line', 1907
    set $P2538, $P2555
.annotate 'line', 1905
    goto if_2539_end
  if_2539:
.annotate 'line', 1906
    find_lex $P2543, "$name"
    unless_null $P2543, vivify_1068
    new $P2543, "Undef"
  vivify_1068:
    find_lex $P2544, "self"
    find_lex $P2545, "$?CLASS"
    getattribute $P2546, $P2544, $P2545, "%!options"
    unless_null $P2546, vivify_1069
    $P2546 = root_new ['parrot';'Hash']
  vivify_1069:
    set $P2547, $P2546[$P2543]
    unless_null $P2547, vivify_1070
    new $P2547, "Undef"
  vivify_1070:
    find_lex $P2548, "$value"
    unless_null $P2548, vivify_1071
    new $P2548, "Undef"
  vivify_1071:
    push $P2547, $P2548
.annotate 'line', 1905
    set $P2538, $P2547
  if_2539_end:
.annotate 'line', 1902
    .return ($P2538)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2567"  :subid("246_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 1916
    .const 'Sub' $P2708 = "257_1307873286.70277" 
    capture_lex $P2708
    .const 'Sub' $P2696 = "256_1307873286.70277" 
    capture_lex $P2696
    .const 'Sub' $P2672 = "255_1307873286.70277" 
    capture_lex $P2672
    .const 'Sub' $P2623 = "253_1307873286.70277" 
    capture_lex $P2623
    .const 'Sub' $P2617 = "252_1307873286.70277" 
    capture_lex $P2617
    .const 'Sub' $P2609 = "251_1307873286.70277" 
    capture_lex $P2609
    .const 'Sub' $P2585 = "249_1307873286.70277" 
    capture_lex $P2585
    .const 'Sub' $P2580 = "248_1307873286.70277" 
    capture_lex $P2580
    .const 'Sub' $P2571 = "247_1307873286.70277" 
    capture_lex $P2571
    .lex "$?PACKAGE", $P2569
    .lex "$?CLASS", $P2570
.annotate 'line', 1976
    .const 'Sub' $P2708 = "257_1307873286.70277" 
    newclosure $P2995, $P2708
.annotate 'line', 1916
    .return ($P2995)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("247_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2572
    .param pmc param_2573
.annotate 'line', 1922
    .lex "self", param_2572
    .lex "@specs", param_2573
.annotate 'line', 1923
    new $P2574, "Undef"
    .lex "$obj", $P2574
    find_lex $P2575, "self"
    $P2576 = $P2575."CREATE"()
    store_lex "$obj", $P2576
.annotate 'line', 1924
    find_lex $P2577, "$obj"
    unless_null $P2577, vivify_1072
    new $P2577, "Undef"
  vivify_1072:
    find_lex $P2578, "@specs"
    unless_null $P2578, vivify_1073
    $P2578 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    $P2577."BUILD"($P2578 :named("specs"))
    find_lex $P2579, "$obj"
    unless_null $P2579, vivify_1074
    new $P2579, "Undef"
  vivify_1074:
.annotate 'line', 1922
    .return ($P2579)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("248_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2581
.annotate 'line', 1928
    .lex "self", param_2581
.annotate 'line', 1929
    new $P2582, "Integer"
    assign $P2582, 1
    find_lex $P2583, "self"
    find_lex $P2584, "$?CLASS"
    setattribute $P2583, $P2584, "$!stop-after-first-arg", $P2582
.annotate 'line', 1928
    .return ($P2582)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("249_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2586
    .param pmc param_2587 :optional :named("specs")
    .param int has_param_2587 :opt_flag
.annotate 'line', 1932
    .const 'Sub' $P2601 = "250_1307873286.70277" 
    capture_lex $P2601
    .lex "self", param_2586
    if has_param_2587, optparam_1075
    $P2588 = root_new ['parrot';'ResizablePMCArray']
    set param_2587, $P2588
  optparam_1075:
    .lex "@specs", param_2587
.annotate 'line', 1933
    new $P2589, "Integer"
    assign $P2589, 1
    find_lex $P2590, "self"
    find_lex $P2591, "$?CLASS"
    getattribute $P2592, $P2590, $P2591, "%!stopper"
    unless_null $P2592, vivify_1076
    $P2592 = root_new ['parrot';'Hash']
    setattribute $P2590, $P2591, "%!stopper", $P2592
  vivify_1076:
    set $P2592["--"], $P2589
.annotate 'line', 1934
    new $P2593, "Integer"
    assign $P2593, 0
    find_lex $P2594, "self"
    find_lex $P2595, "$?CLASS"
    setattribute $P2594, $P2595, "$!stop-after-first-arg", $P2593
.annotate 'line', 1935
    find_lex $P2597, "@specs"
    unless_null $P2597, vivify_1077
    $P2597 = root_new ['parrot';'ResizablePMCArray']
  vivify_1077:
    defined $I2598, $P2597
    unless $I2598, for_undef_1078
    iter $P2596, $P2597
    new $P2607, 'ExceptionHandler'
    set_label $P2607, loop2606_handler
    $P2607."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2607
  loop2606_test:
    unless $P2596, loop2606_done
    shift $P2599, $P2596
  loop2606_redo:
    .const 'Sub' $P2601 = "250_1307873286.70277" 
    capture_lex $P2601
    $P2601($P2599)
  loop2606_next:
    goto loop2606_test
  loop2606_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2608, exception, 'type'
    eq $P2608, .CONTROL_LOOP_NEXT, loop2606_next
    eq $P2608, .CONTROL_LOOP_REDO, loop2606_redo
  loop2606_done:
    pop_eh 
  for_undef_1078:
.annotate 'line', 1932
    .return ($P2596)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2600"  :anon :subid("250_1307873286.70277") :outer("249_1307873286.70277")
    .param pmc param_2602
.annotate 'line', 1935
    .lex "$_", param_2602
.annotate 'line', 1936
    find_lex $P2603, "self"
    find_lex $P2604, "$_"
    unless_null $P2604, vivify_1079
    new $P2604, "Undef"
  vivify_1079:
    $P2605 = $P2603."add-spec"($P2604)
.annotate 'line', 1935
    .return ($P2605)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("251_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2610
    .param pmc param_2611
.annotate 'line', 1939
    .lex "self", param_2610
    .lex "$x", param_2611
.annotate 'line', 1940
    new $P2612, "Integer"
    assign $P2612, 1
    find_lex $P2613, "$x"
    unless_null $P2613, vivify_1080
    new $P2613, "Undef"
  vivify_1080:
    find_lex $P2614, "self"
    find_lex $P2615, "$?CLASS"
    getattribute $P2616, $P2614, $P2615, "%!stopper"
    unless_null $P2616, vivify_1081
    $P2616 = root_new ['parrot';'Hash']
    setattribute $P2614, $P2615, "%!stopper", $P2616
  vivify_1081:
    set $P2616[$P2613], $P2612
.annotate 'line', 1939
    .return ($P2612)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("252_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2618
    .param pmc param_2619
.annotate 'line', 1943
    .lex "self", param_2618
    .lex "$s", param_2619
.annotate 'line', 1944
    find_lex $P2620, "$s"
    unless_null $P2620, vivify_1082
    new $P2620, "Undef"
  vivify_1082:
    set $S2621, $P2620
    split $P2622, "|", $S2621
.annotate 'line', 1943
    .return ($P2622)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("253_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2624
    .param pmc param_2625
.annotate 'line', 1948
    .const 'Sub' $P2662 = "254_1307873286.70277" 
    capture_lex $P2662
    .lex "self", param_2624
    .lex "$s", param_2625
.annotate 'line', 1949
    new $P2626, "Undef"
    .lex "$i", $P2626
.annotate 'line', 1950
    new $P2627, "Undef"
    .lex "$type", $P2627
.annotate 'line', 1951
    $P2628 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2628
.annotate 'line', 1949
    find_lex $P2629, "$s"
    unless_null $P2629, vivify_1083
    new $P2629, "Undef"
  vivify_1083:
    set $S2630, $P2629
    index $I2631, $S2630, "="
    new $P2632, 'Integer'
    set $P2632, $I2631
    store_lex "$i", $P2632
    find_lex $P2633, "$type"
    unless_null $P2633, vivify_1084
    new $P2633, "Undef"
  vivify_1084:
    find_lex $P2634, "@options"
    unless_null $P2634, vivify_1085
    $P2634 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
.annotate 'line', 1952
    find_lex $P2636, "$i"
    unless_null $P2636, vivify_1086
    new $P2636, "Undef"
  vivify_1086:
    set $N2637, $P2636
    islt $I2638, $N2637, 0.0
    if $I2638, if_2635
.annotate 'line', 1956
    find_lex $P2643, "$s"
    unless_null $P2643, vivify_1087
    new $P2643, "Undef"
  vivify_1087:
    set $S2644, $P2643
    find_lex $P2645, "$i"
    unless_null $P2645, vivify_1088
    new $P2645, "Undef"
  vivify_1088:
    add $P2646, $P2645, 1
    set $I2647, $P2646
    substr $S2648, $S2644, $I2647
    new $P2649, 'String'
    set $P2649, $S2648
    store_lex "$type", $P2649
.annotate 'line', 1957
    find_lex $P2650, "self"
    find_lex $P2651, "$s"
    unless_null $P2651, vivify_1089
    new $P2651, "Undef"
  vivify_1089:
    set $S2652, $P2651
    find_lex $P2653, "$i"
    unless_null $P2653, vivify_1090
    new $P2653, "Undef"
  vivify_1090:
    set $I2654, $P2653
    substr $S2655, $S2652, 0, $I2654
    $P2656 = $P2650."split-option-aliases"($S2655)
    store_lex "@options", $P2656
.annotate 'line', 1955
    goto if_2635_end
  if_2635:
.annotate 'line', 1953
    new $P2639, "String"
    assign $P2639, "b"
    store_lex "$type", $P2639
.annotate 'line', 1954
    find_lex $P2640, "self"
    find_lex $P2641, "$s"
    unless_null $P2641, vivify_1091
    new $P2641, "Undef"
  vivify_1091:
    $P2642 = $P2640."split-option-aliases"($P2641)
    store_lex "@options", $P2642
  if_2635_end:
.annotate 'line', 1959
    find_lex $P2658, "@options"
    unless_null $P2658, vivify_1092
    $P2658 = root_new ['parrot';'ResizablePMCArray']
  vivify_1092:
    defined $I2659, $P2658
    unless $I2659, for_undef_1093
    iter $P2657, $P2658
    new $P2670, 'ExceptionHandler'
    set_label $P2670, loop2669_handler
    $P2670."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2670
  loop2669_test:
    unless $P2657, loop2669_done
    shift $P2660, $P2657
  loop2669_redo:
    .const 'Sub' $P2662 = "254_1307873286.70277" 
    capture_lex $P2662
    $P2662($P2660)
  loop2669_next:
    goto loop2669_test
  loop2669_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2671, exception, 'type'
    eq $P2671, .CONTROL_LOOP_NEXT, loop2669_next
    eq $P2671, .CONTROL_LOOP_REDO, loop2669_redo
  loop2669_done:
    pop_eh 
  for_undef_1093:
.annotate 'line', 1948
    .return ($P2657)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2661"  :anon :subid("254_1307873286.70277") :outer("253_1307873286.70277")
    .param pmc param_2663
.annotate 'line', 1959
    .lex "$_", param_2663
.annotate 'line', 1960
    find_lex $P2664, "$type"
    unless_null $P2664, vivify_1094
    new $P2664, "Undef"
  vivify_1094:
    find_lex $P2665, "$_"
    unless_null $P2665, vivify_1095
    new $P2665, "Undef"
  vivify_1095:
    find_lex $P2666, "self"
    find_lex $P2667, "$?CLASS"
    getattribute $P2668, $P2666, $P2667, "%!options"
    unless_null $P2668, vivify_1096
    $P2668 = root_new ['parrot';'Hash']
    setattribute $P2666, $P2667, "%!options", $P2668
  vivify_1096:
    set $P2668[$P2665], $P2664
.annotate 'line', 1959
    .return ($P2664)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("255_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2675
    .param pmc param_2676
.annotate 'line', 1965
    new $P2674, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2674, control_2673
    push_eh $P2674
    .lex "self", param_2675
    .lex "$x", param_2676
.annotate 'line', 1966
    find_lex $P2680, "$x"
    unless_null $P2680, vivify_1097
    new $P2680, "Undef"
  vivify_1097:
    set $S2681, $P2680
    iseq $I2682, $S2681, "-"
    unless $I2682, unless_2679
    new $P2678, 'Integer'
    set $P2678, $I2682
    goto unless_2679_end
  unless_2679:
    find_lex $P2683, "$x"
    unless_null $P2683, vivify_1098
    new $P2683, "Undef"
  vivify_1098:
    set $S2684, $P2683
    iseq $I2685, $S2684, "--"
    new $P2678, 'Integer'
    set $P2678, $I2685
  unless_2679_end:
    unless $P2678, if_2677_end
    new $P2686, "Exception"
    set $P2686['type'], .CONTROL_RETURN
    new $P2687, "Integer"
    assign $P2687, 0
    setattribute $P2686, 'payload', $P2687
    throw $P2686
  if_2677_end:
.annotate 'line', 1967
    find_lex $P2689, "$x"
    unless_null $P2689, vivify_1099
    new $P2689, "Undef"
  vivify_1099:
    set $S2690, $P2689
    substr $S2691, $S2690, 0, 1
    iseq $I2692, $S2691, "-"
    unless $I2692, if_2688_end
    new $P2693, "Exception"
    set $P2693['type'], .CONTROL_RETURN
    new $P2694, "Integer"
    assign $P2694, 1
    setattribute $P2693, 'payload', $P2694
    throw $P2693
  if_2688_end:
.annotate 'line', 1965
    .return (0)
  control_2673:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2695, exception, "payload"
    .return ($P2695)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("256_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2697
    .param pmc param_2698
.annotate 'line', 1971
    .lex "self", param_2697
    .lex "$x", param_2698
.annotate 'line', 1972
    new $P2699, "Undef"
    .lex "$spec", $P2699
    find_lex $P2700, "$x"
    unless_null $P2700, vivify_1100
    new $P2700, "Undef"
  vivify_1100:
    find_lex $P2701, "self"
    find_lex $P2702, "$?CLASS"
    getattribute $P2703, $P2701, $P2702, "%!options"
    unless_null $P2703, vivify_1101
    $P2703 = root_new ['parrot';'Hash']
  vivify_1101:
    set $P2704, $P2703[$P2700]
    unless_null $P2704, vivify_1102
    new $P2704, "Undef"
  vivify_1102:
    store_lex "$spec", $P2704
.annotate 'line', 1973
    find_lex $P2705, "$spec"
    unless_null $P2705, vivify_1103
    new $P2705, "Undef"
  vivify_1103:
    set $S2706, $P2705
    iseq $I2707, $S2706, "s"
.annotate 'line', 1971
    .return ($I2707)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("257_1307873286.70277") :outer("246_1307873286.70277")
    .param pmc param_2711
    .param pmc param_2712
.annotate 'line', 1976
    .const 'Sub' $P2803 = "260_1307873286.70277" 
    capture_lex $P2803
    .const 'Sub' $P2765 = "259_1307873286.70277" 
    capture_lex $P2765
    .const 'Sub' $P2716 = "258_1307873286.70277" 
    capture_lex $P2716
    new $P2710, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2710, control_2709
    push_eh $P2710
    .lex "self", param_2711
    .lex "@args", param_2712
.annotate 'line', 1977
    new $P2713, "Undef"
    .lex "$i", $P2713
.annotate 'line', 1978
    new $P2714, "Undef"
    .lex "$arg-count", $P2714
.annotate 'line', 1980
    new $P2715, "Undef"
    .lex "$result", $P2715
.annotate 'line', 1984
    .const 'Sub' $P2716 = "258_1307873286.70277" 
    newclosure $P2764, $P2716
    .lex "get-value", $P2764
.annotate 'line', 1999
    .const 'Sub' $P2765 = "259_1307873286.70277" 
    newclosure $P2783, $P2765
    .lex "slurp-rest", $P2783
.annotate 'line', 1977
    new $P2784, "Integer"
    assign $P2784, 0
    store_lex "$i", $P2784
.annotate 'line', 1978
    find_lex $P2785, "@args"
    unless_null $P2785, vivify_1129
    $P2785 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $N2786, $P2785
    new $P2787, 'Float'
    set $P2787, $N2786
    store_lex "$arg-count", $P2787
.annotate 'line', 1980
    get_hll_global $P2788, "GLOBAL"
    nqp_get_package_through_who $P2789, $P2788, "HLL"
    nqp_get_package_through_who $P2790, $P2789, "CommandLine"
    get_who $P2791, $P2790
    set $P2792, $P2791["Result"]
    $P2793 = $P2792."new"()
    store_lex "$result", $P2793
.annotate 'line', 1981
    find_lex $P2794, "$result"
    unless_null $P2794, vivify_1130
    new $P2794, "Undef"
  vivify_1130:
    $P2794."init"()
    find_lex $P2795, "get-value"
    find_lex $P2796, "slurp-rest"
.annotate 'line', 2007
    new $P2990, 'ExceptionHandler'
    set_label $P2990, loop2989_handler
    $P2990."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2990
  loop2989_test:
    find_lex $P2797, "$i"
    unless_null $P2797, vivify_1131
    new $P2797, "Undef"
  vivify_1131:
    set $N2798, $P2797
    find_lex $P2799, "$arg-count"
    unless_null $P2799, vivify_1132
    new $P2799, "Undef"
  vivify_1132:
    set $N2800, $P2799
    islt $I2801, $N2798, $N2800
    unless $I2801, loop2989_done
  loop2989_redo:
    .const 'Sub' $P2803 = "260_1307873286.70277" 
    capture_lex $P2803
    $P2803()
  loop2989_next:
    goto loop2989_test
  loop2989_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2991, exception, 'type'
    eq $P2991, .CONTROL_LOOP_NEXT, loop2989_next
    eq $P2991, .CONTROL_LOOP_REDO, loop2989_redo
  loop2989_done:
    pop_eh 
.annotate 'line', 2059
    new $P2992, "Exception"
    set $P2992['type'], .CONTROL_RETURN
    find_lex $P2993, "$result"
    unless_null $P2993, vivify_1193
    new $P2993, "Undef"
  vivify_1193:
    setattribute $P2992, 'payload', $P2993
    throw $P2992
.annotate 'line', 1976
    .return ()
  control_2709:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2994, exception, "payload"
    .return ($P2994)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("258_1307873286.70277") :outer("257_1307873286.70277")
    .param pmc param_2717
.annotate 'line', 1984
    .lex "$opt", param_2717
.annotate 'line', 1985
    find_lex $P2720, "$i"
    unless_null $P2720, vivify_1104
    new $P2720, "Undef"
  vivify_1104:
    set $N2721, $P2720
    find_lex $P2722, "$arg-count"
    unless_null $P2722, vivify_1105
    new $P2722, "Undef"
  vivify_1105:
    sub $P2723, $P2722, 1
    set $N2724, $P2723
    iseq $I2725, $N2721, $N2724
    if $I2725, if_2719
.annotate 'line', 1987
    find_lex $P2732, "self"
    find_lex $P2733, "$i"
    unless_null $P2733, vivify_1106
    new $P2733, "Undef"
  vivify_1106:
    add $P2734, $P2733, 1
    set $I2735, $P2734
    find_lex $P2736, "@args"
    unless_null $P2736, vivify_1107
    $P2736 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $P2737, $P2736[$I2735]
    unless_null $P2737, vivify_1108
    new $P2737, "Undef"
  vivify_1108:
    $P2738 = $P2732."is-option"($P2737)
    if $P2738, if_2731
.annotate 'line', 1989
    find_lex $P2745, "$i"
    unless_null $P2745, vivify_1109
    new $P2745, "Undef"
  vivify_1109:
    add $P2746, $P2745, 1
    set $I2747, $P2746
    find_lex $P2748, "@args"
    unless_null $P2748, vivify_1110
    $P2748 = root_new ['parrot';'ResizablePMCArray']
  vivify_1110:
    set $P2749, $P2748[$I2747]
    unless_null $P2749, vivify_1111
    new $P2749, "Undef"
  vivify_1111:
    find_lex $P2750, "self"
    find_lex $P2751, "$?CLASS"
    getattribute $P2752, $P2750, $P2751, "%!stopper"
    unless_null $P2752, vivify_1112
    $P2752 = root_new ['parrot';'Hash']
  vivify_1112:
    set $P2753, $P2752[$P2749]
    unless_null $P2753, vivify_1113
    new $P2753, "Undef"
  vivify_1113:
    if $P2753, if_2744
.annotate 'line', 1991
    find_lex $P2758, "$i"
    unless_null $P2758, vivify_1114
    new $P2758, "Undef"
  vivify_1114:
    clone $P2759, $P2758
    inc $P2758
    find_lex $P2760, "$i"
    unless_null $P2760, vivify_1115
    new $P2760, "Undef"
  vivify_1115:
    set $I2761, $P2760
    find_lex $P2762, "@args"
    unless_null $P2762, vivify_1116
    $P2762 = root_new ['parrot';'ResizablePMCArray']
  vivify_1116:
    set $P2763, $P2762[$I2761]
    unless_null $P2763, vivify_1117
    new $P2763, "Undef"
  vivify_1117:
    set $P2743, $P2763
.annotate 'line', 1989
    goto if_2744_end
  if_2744:
.annotate 'line', 1990
    new $P2754, 'String'
    set $P2754, "Option "
    find_lex $P2755, "$opt"
    unless_null $P2755, vivify_1118
    new $P2755, "Undef"
  vivify_1118:
    concat $P2756, $P2754, $P2755
    concat $P2757, $P2756, " needs a value, but is followed by a stopper"
    die $P2757
  if_2744_end:
.annotate 'line', 1989
    set $P2730, $P2743
.annotate 'line', 1987
    goto if_2731_end
  if_2731:
.annotate 'line', 1988
    new $P2739, 'String'
    set $P2739, "Option "
    find_lex $P2740, "$opt"
    unless_null $P2740, vivify_1119
    new $P2740, "Undef"
  vivify_1119:
    concat $P2741, $P2739, $P2740
    concat $P2742, $P2741, " needs a value, but is followed by an option"
    die $P2742
  if_2731_end:
.annotate 'line', 1987
    set $P2718, $P2730
.annotate 'line', 1985
    goto if_2719_end
  if_2719:
.annotate 'line', 1986
    new $P2726, 'String'
    set $P2726, "Option "
    find_lex $P2727, "$opt"
    unless_null $P2727, vivify_1120
    new $P2727, "Undef"
  vivify_1120:
    concat $P2728, $P2726, $P2727
    concat $P2729, $P2728, " needs a value"
    die $P2729
  if_2719_end:
.annotate 'line', 1984
    .return ($P2718)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("259_1307873286.70277") :outer("257_1307873286.70277")
.annotate 'line', 1999
    find_lex $P2766, "$i"
    unless_null $P2766, vivify_1121
    new $P2766, "Undef"
  vivify_1121:
    clone $P2767, $P2766
    inc $P2766
.annotate 'line', 2001
    new $P2781, 'ExceptionHandler'
    set_label $P2781, loop2780_handler
    $P2781."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2781
  loop2780_test:
    find_lex $P2768, "$i"
    unless_null $P2768, vivify_1122
    new $P2768, "Undef"
  vivify_1122:
    set $N2769, $P2768
    find_lex $P2770, "$arg-count"
    unless_null $P2770, vivify_1123
    new $P2770, "Undef"
  vivify_1123:
    set $N2771, $P2770
    islt $I2772, $N2769, $N2771
    unless $I2772, loop2780_done
  loop2780_redo:
.annotate 'line', 2002
    find_lex $P2773, "$result"
    unless_null $P2773, vivify_1124
    new $P2773, "Undef"
  vivify_1124:
    find_lex $P2774, "$i"
    unless_null $P2774, vivify_1125
    new $P2774, "Undef"
  vivify_1125:
    set $I2775, $P2774
    find_lex $P2776, "@args"
    unless_null $P2776, vivify_1126
    $P2776 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2777, $P2776[$I2775]
    unless_null $P2777, vivify_1127
    new $P2777, "Undef"
  vivify_1127:
    $P2773."add-argument"($P2777)
    find_lex $P2778, "$i"
    unless_null $P2778, vivify_1128
    new $P2778, "Undef"
  vivify_1128:
    clone $P2779, $P2778
    inc $P2778
  loop2780_next:
.annotate 'line', 2001
    goto loop2780_test
  loop2780_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2782, exception, 'type'
    eq $P2782, .CONTROL_LOOP_NEXT, loop2780_next
    eq $P2782, .CONTROL_LOOP_REDO, loop2780_redo
  loop2780_done:
    pop_eh 
.annotate 'line', 1999
    .return ($I2772)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2802"  :anon :subid("260_1307873286.70277") :outer("257_1307873286.70277")
.annotate 'line', 2007
    .const 'Sub' $P2905 = "262_1307873286.70277" 
    capture_lex $P2905
    .const 'Sub' $P2819 = "261_1307873286.70277" 
    capture_lex $P2819
.annotate 'line', 2008
    new $P2804, "Undef"
    .lex "$cur", $P2804
    find_lex $P2805, "$i"
    unless_null $P2805, vivify_1133
    new $P2805, "Undef"
  vivify_1133:
    set $I2806, $P2805
    find_lex $P2807, "@args"
    unless_null $P2807, vivify_1134
    $P2807 = root_new ['parrot';'ResizablePMCArray']
  vivify_1134:
    set $P2808, $P2807[$I2806]
    unless_null $P2808, vivify_1135
    new $P2808, "Undef"
  vivify_1135:
    store_lex "$cur", $P2808
.annotate 'line', 2009
    find_lex $P2810, "self"
    find_lex $P2811, "$cur"
    unless_null $P2811, vivify_1136
    new $P2811, "Undef"
  vivify_1136:
    $P2812 = $P2810."is-option"($P2811)
    if $P2812, if_2809
.annotate 'line', 2051
    find_lex $P2976, "$cur"
    unless_null $P2976, vivify_1137
    new $P2976, "Undef"
  vivify_1137:
    find_lex $P2977, "self"
    find_lex $P2978, "$?CLASS"
    getattribute $P2979, $P2977, $P2978, "%!stopper"
    unless_null $P2979, vivify_1138
    $P2979 = root_new ['parrot';'Hash']
  vivify_1138:
    set $P2980, $P2979[$P2976]
    unless_null $P2980, vivify_1139
    new $P2980, "Undef"
  vivify_1139:
    if $P2980, if_2975
.annotate 'line', 2054
    find_lex $P2981, "$result"
    unless_null $P2981, vivify_1140
    new $P2981, "Undef"
  vivify_1140:
    find_lex $P2982, "$cur"
    unless_null $P2982, vivify_1141
    new $P2982, "Undef"
  vivify_1141:
    $P2981."add-argument"($P2982)
.annotate 'line', 2055
    find_lex $P2984, "self"
    find_lex $P2985, "$?CLASS"
    getattribute $P2986, $P2984, $P2985, "$!stop-after-first-arg"
    unless_null $P2986, vivify_1142
    new $P2986, "Undef"
  vivify_1142:
    unless $P2986, if_2983_end
    "slurp-rest"()
  if_2983_end:
.annotate 'line', 2053
    goto if_2975_end
  if_2975:
.annotate 'line', 2052
    "slurp-rest"()
  if_2975_end:
.annotate 'line', 2051
    goto if_2809_end
  if_2809:
.annotate 'line', 2010
    find_lex $P2814, "$cur"
    unless_null $P2814, vivify_1143
    new $P2814, "Undef"
  vivify_1143:
    set $S2815, $P2814
    substr $S2816, $S2815, 0, 2
    iseq $I2817, $S2816, "--"
    if $I2817, if_2813
.annotate 'line', 2029
    .const 'Sub' $P2905 = "262_1307873286.70277" 
    capture_lex $P2905
    $P2905()
    goto if_2813_end
  if_2813:
.annotate 'line', 2010
    .const 'Sub' $P2819 = "261_1307873286.70277" 
    capture_lex $P2819
    $P2819()
  if_2813_end:
  if_2809_end:
.annotate 'line', 2009
    find_lex $P2987, "$i"
    unless_null $P2987, vivify_1192
    new $P2987, "Undef"
  vivify_1192:
    clone $P2988, $P2987
    inc $P2987
.annotate 'line', 2007
    .return ($P2988)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2904"  :anon :subid("262_1307873286.70277") :outer("260_1307873286.70277")
.annotate 'line', 2029
    .const 'Sub' $P2950 = "263_1307873286.70277" 
    capture_lex $P2950
.annotate 'line', 2030
    new $P2906, "Undef"
    .lex "$opt", $P2906
    find_lex $P2907, "$cur"
    unless_null $P2907, vivify_1144
    new $P2907, "Undef"
  vivify_1144:
    set $S2908, $P2907
    substr $S2909, $S2908, 1
    new $P2910, 'String'
    set $P2910, $S2909
    store_lex "$opt", $P2910
.annotate 'line', 2031
    find_lex $P2913, "$opt"
    unless_null $P2913, vivify_1145
    new $P2913, "Undef"
  vivify_1145:
    set $S2914, $P2913
    length $I2915, $S2914
    set $N2916, $I2915
    iseq $I2917, $N2916, 1.0
    if $I2917, if_2912
.annotate 'line', 2041
    .const 'Sub' $P2950 = "263_1307873286.70277" 
    capture_lex $P2950
    $P2974 = $P2950()
    set $P2911, $P2974
.annotate 'line', 2031
    goto if_2912_end
  if_2912:
.annotate 'line', 2033
    find_lex $P2919, "$opt"
    unless_null $P2919, vivify_1153
    new $P2919, "Undef"
  vivify_1153:
    find_lex $P2920, "self"
    find_lex $P2921, "$?CLASS"
    getattribute $P2922, $P2920, $P2921, "%!options"
    unless_null $P2922, vivify_1154
    $P2922 = root_new ['parrot';'Hash']
  vivify_1154:
    set $P2923, $P2922[$P2919]
    unless_null $P2923, vivify_1155
    new $P2923, "Undef"
  vivify_1155:
    if $P2923, unless_2918_end
    new $P2924, 'String'
    set $P2924, "No such option -"
    find_lex $P2925, "$opt"
    unless_null $P2925, vivify_1156
    new $P2925, "Undef"
  vivify_1156:
    concat $P2926, $P2924, $P2925
    die $P2926
  unless_2918_end:
.annotate 'line', 2034
    find_lex $P2928, "self"
    find_lex $P2929, "$opt"
    unless_null $P2929, vivify_1157
    new $P2929, "Undef"
  vivify_1157:
    $P2930 = $P2928."wants-value"($P2929)
    if $P2930, if_2927
.annotate 'line', 2038
    find_lex $P2937, "$result"
    unless_null $P2937, vivify_1158
    new $P2937, "Undef"
  vivify_1158:
    find_lex $P2938, "$opt"
    unless_null $P2938, vivify_1159
    new $P2938, "Undef"
  vivify_1159:
    $P2937."add-option"($P2938, 1)
.annotate 'line', 2037
    goto if_2927_end
  if_2927:
.annotate 'line', 2035
    find_lex $P2931, "$result"
    unless_null $P2931, vivify_1160
    new $P2931, "Undef"
  vivify_1160:
    find_lex $P2932, "$opt"
    unless_null $P2932, vivify_1161
    new $P2932, "Undef"
  vivify_1161:
.annotate 'line', 2036
    new $P2933, 'String'
    set $P2933, "-"
    find_lex $P2934, "$opt"
    unless_null $P2934, vivify_1162
    new $P2934, "Undef"
  vivify_1162:
    concat $P2935, $P2933, $P2934
    $P2936 = "get-value"($P2935)
    $P2931."add-option"($P2932, $P2936)
  if_2927_end:
.annotate 'line', 2040
    new $P2941, 'String'
    set $P2941, "-"
    find_lex $P2942, "$opt"
    unless_null $P2942, vivify_1163
    new $P2942, "Undef"
  vivify_1163:
    concat $P2943, $P2941, $P2942
    find_lex $P2944, "self"
    find_lex $P2945, "$?CLASS"
    getattribute $P2946, $P2944, $P2945, "%!stopper"
    unless_null $P2946, vivify_1164
    $P2946 = root_new ['parrot';'Hash']
  vivify_1164:
    set $P2947, $P2946[$P2943]
    unless_null $P2947, vivify_1165
    new $P2947, "Undef"
  vivify_1165:
    if $P2947, if_2940
    set $P2939, $P2947
    goto if_2940_end
  if_2940:
    $P2948 = "slurp-rest"()
    set $P2939, $P2948
  if_2940_end:
.annotate 'line', 2031
    set $P2911, $P2939
  if_2912_end:
.annotate 'line', 2029
    .return ($P2911)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2949"  :anon :subid("263_1307873286.70277") :outer("262_1307873286.70277")
.annotate 'line', 2041
    .const 'Sub' $P2956 = "264_1307873286.70277" 
    capture_lex $P2956
.annotate 'line', 2043
    new $P2951, "Undef"
    .lex "$iter", $P2951
    find_lex $P2952, "$opt"
    unless_null $P2952, vivify_1146
    new $P2952, "Undef"
  vivify_1146:
    iter $P2953, $P2952
    store_lex "$iter", $P2953
.annotate 'line', 2044
    new $P2972, 'ExceptionHandler'
    set_label $P2972, loop2971_handler
    $P2972."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2972
  loop2971_test:
    find_lex $P2954, "$iter"
    unless_null $P2954, vivify_1147
    new $P2954, "Undef"
  vivify_1147:
    unless $P2954, loop2971_done
  loop2971_redo:
    .const 'Sub' $P2956 = "264_1307873286.70277" 
    capture_lex $P2956
    $P2956()
  loop2971_next:
    goto loop2971_test
  loop2971_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2973, exception, 'type'
    eq $P2973, .CONTROL_LOOP_NEXT, loop2971_next
    eq $P2973, .CONTROL_LOOP_REDO, loop2971_redo
  loop2971_done:
    pop_eh 
.annotate 'line', 2041
    .return ($P2954)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2955"  :anon :subid("264_1307873286.70277") :outer("263_1307873286.70277")
.annotate 'line', 2045
    new $P2957, "Undef"
    .lex "$o", $P2957
    find_lex $P2958, "$iter"
    unless_null $P2958, vivify_1148
    new $P2958, "Undef"
  vivify_1148:
    shift $P2959, $P2958
    store_lex "$o", $P2959
.annotate 'line', 2046
    find_lex $P2961, "self"
    find_lex $P2962, "$o"
    unless_null $P2962, vivify_1149
    new $P2962, "Undef"
  vivify_1149:
    $P2963 = $P2961."wants-value"($P2962)
    unless $P2963, if_2960_end
    new $P2964, 'String'
    set $P2964, "Option -"
    find_lex $P2965, "$o"
    unless_null $P2965, vivify_1150
    new $P2965, "Undef"
  vivify_1150:
    concat $P2966, $P2964, $P2965
    concat $P2967, $P2966, " requires a value and cannot be grouped"
    die $P2967
  if_2960_end:
.annotate 'line', 2047
    find_lex $P2968, "$result"
    unless_null $P2968, vivify_1151
    new $P2968, "Undef"
  vivify_1151:
    find_lex $P2969, "$o"
    unless_null $P2969, vivify_1152
    new $P2969, "Undef"
  vivify_1152:
    $P2970 = $P2968."add-option"($P2969, 1)
.annotate 'line', 2044
    .return ($P2970)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2818"  :anon :subid("261_1307873286.70277") :outer("260_1307873286.70277")
.annotate 'line', 2012
    new $P2820, "Undef"
    .lex "$opt", $P2820
.annotate 'line', 2013
    new $P2821, "Undef"
    .lex "$idx", $P2821
.annotate 'line', 2014
    new $P2822, "Undef"
    .lex "$value", $P2822
.annotate 'line', 2015
    new $P2823, "Undef"
    .lex "$has-value", $P2823
.annotate 'line', 2012
    find_lex $P2824, "$i"
    unless_null $P2824, vivify_1166
    new $P2824, "Undef"
  vivify_1166:
    set $I2825, $P2824
    find_lex $P2826, "@args"
    unless_null $P2826, vivify_1167
    $P2826 = root_new ['parrot';'ResizablePMCArray']
  vivify_1167:
    set $P2827, $P2826[$I2825]
    unless_null $P2827, vivify_1168
    new $P2827, "Undef"
  vivify_1168:
    set $S2828, $P2827
    substr $S2829, $S2828, 2
    new $P2830, 'String'
    set $P2830, $S2829
    store_lex "$opt", $P2830
.annotate 'line', 2013
    find_lex $P2831, "$opt"
    unless_null $P2831, vivify_1169
    new $P2831, "Undef"
  vivify_1169:
    set $S2832, $P2831
    index $I2833, $S2832, "="
    new $P2834, 'Integer'
    set $P2834, $I2833
    store_lex "$idx", $P2834
.annotate 'line', 2014
    new $P2835, "Integer"
    assign $P2835, 1
    store_lex "$value", $P2835
.annotate 'line', 2015
    new $P2836, "Integer"
    assign $P2836, 0
    store_lex "$has-value", $P2836
.annotate 'line', 2017
    find_lex $P2838, "$idx"
    unless_null $P2838, vivify_1170
    new $P2838, "Undef"
  vivify_1170:
    set $N2839, $P2838
    isge $I2840, $N2839, 0.0
    unless $I2840, if_2837_end
.annotate 'line', 2018
    find_lex $P2841, "$opt"
    unless_null $P2841, vivify_1171
    new $P2841, "Undef"
  vivify_1171:
    set $S2842, $P2841
    find_lex $P2843, "$idx"
    unless_null $P2843, vivify_1172
    new $P2843, "Undef"
  vivify_1172:
    add $P2844, $P2843, 1
    set $I2845, $P2844
    substr $S2846, $S2842, $I2845
    new $P2847, 'String'
    set $P2847, $S2846
    store_lex "$value", $P2847
.annotate 'line', 2019
    find_lex $P2848, "$opt"
    unless_null $P2848, vivify_1173
    new $P2848, "Undef"
  vivify_1173:
    set $S2849, $P2848
    find_lex $P2850, "$idx"
    unless_null $P2850, vivify_1174
    new $P2850, "Undef"
  vivify_1174:
    set $I2851, $P2850
    substr $S2852, $S2849, 0, $I2851
    new $P2853, 'String'
    set $P2853, $S2852
    store_lex "$opt", $P2853
.annotate 'line', 2020
    new $P2854, "Integer"
    assign $P2854, 1
    store_lex "$has-value", $P2854
  if_2837_end:
.annotate 'line', 2022
    find_lex $P2859, "$opt"
    unless_null $P2859, vivify_1175
    new $P2859, "Undef"
  vivify_1175:
    find_lex $P2856, "self"
    find_lex $P2857, "$?CLASS"
    getattribute $P2858, $P2856, $P2857, "%!options"
    unless_null $P2858, vivify_1176
    $P2858 = root_new ['parrot';'Hash']
  vivify_1176:
    exists $I2860, $P2858[$P2859]
    if $I2860, unless_2855_end
    new $P2861, 'String'
    set $P2861, "Illegal option --"
    find_lex $P2862, "$opt"
    unless_null $P2862, vivify_1177
    new $P2862, "Undef"
  vivify_1177:
    concat $P2863, $P2861, $P2862
    die $P2863
  unless_2855_end:
.annotate 'line', 2023
    find_lex $P2867, "$opt"
    unless_null $P2867, vivify_1178
    new $P2867, "Undef"
  vivify_1178:
    find_lex $P2868, "self"
    find_lex $P2869, "$?CLASS"
    getattribute $P2870, $P2868, $P2869, "%!options"
    unless_null $P2870, vivify_1179
    $P2870 = root_new ['parrot';'Hash']
  vivify_1179:
    set $P2871, $P2870[$P2867]
    unless_null $P2871, vivify_1180
    new $P2871, "Undef"
  vivify_1180:
    set $S2872, $P2871
    isne $I2873, $S2872, "s"
    if $I2873, if_2866
    new $P2865, 'Integer'
    set $P2865, $I2873
    goto if_2866_end
  if_2866:
    find_lex $P2874, "$has-value"
    unless_null $P2874, vivify_1181
    new $P2874, "Undef"
  vivify_1181:
    set $P2865, $P2874
  if_2866_end:
    unless $P2865, if_2864_end
    new $P2875, 'String'
    set $P2875, "Option --"
    find_lex $P2876, "$opt"
    unless_null $P2876, vivify_1182
    new $P2876, "Undef"
  vivify_1182:
    concat $P2877, $P2875, $P2876
    concat $P2878, $P2877, " does not allow a value"
    die $P2878
  if_2864_end:
.annotate 'line', 2024
    find_lex $P2882, "$has-value"
    unless_null $P2882, vivify_1183
    new $P2882, "Undef"
  vivify_1183:
    isfalse $I2883, $P2882
    if $I2883, if_2881
    new $P2880, 'Integer'
    set $P2880, $I2883
    goto if_2881_end
  if_2881:
    find_lex $P2884, "self"
    find_lex $P2885, "$opt"
    unless_null $P2885, vivify_1184
    new $P2885, "Undef"
  vivify_1184:
    $P2886 = $P2884."wants-value"($P2885)
    set $P2880, $P2886
  if_2881_end:
    unless $P2880, if_2879_end
.annotate 'line', 2025
    new $P2887, 'String'
    set $P2887, "--"
    find_lex $P2888, "$opt"
    unless_null $P2888, vivify_1185
    new $P2888, "Undef"
  vivify_1185:
    concat $P2889, $P2887, $P2888
    $P2890 = "get-value"($P2889)
    store_lex "$value", $P2890
  if_2879_end:
.annotate 'line', 2027
    find_lex $P2891, "$result"
    unless_null $P2891, vivify_1186
    new $P2891, "Undef"
  vivify_1186:
    find_lex $P2892, "$opt"
    unless_null $P2892, vivify_1187
    new $P2892, "Undef"
  vivify_1187:
    find_lex $P2893, "$value"
    unless_null $P2893, vivify_1188
    new $P2893, "Undef"
  vivify_1188:
    $P2891."add-option"($P2892, $P2893)
.annotate 'line', 2028
    new $P2896, 'String'
    set $P2896, "--"
    find_lex $P2897, "$opt"
    unless_null $P2897, vivify_1189
    new $P2897, "Undef"
  vivify_1189:
    concat $P2898, $P2896, $P2897
    find_lex $P2899, "self"
    find_lex $P2900, "$?CLASS"
    getattribute $P2901, $P2899, $P2900, "%!stopper"
    unless_null $P2901, vivify_1190
    $P2901 = root_new ['parrot';'Hash']
  vivify_1190:
    set $P2902, $P2901[$P2898]
    unless_null $P2902, vivify_1191
    new $P2902, "Undef"
  vivify_1191:
    if $P2902, if_2895
    set $P2894, $P2902
    goto if_2895_end
  if_2895:
    find_lex $P2903, "slurp-rest"
    set $P2894, $P2903
  if_2895_end:
.annotate 'line', 2010
    .return ($P2894)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2996"  :subid("265_1307873286.70277") :outer("10_1307873286.70277")
.annotate 'line', 2094
    .const 'Sub' $P3222 = "282_1307873286.70277" 
    capture_lex $P3222
    .const 'Sub' $P3217 = "281_1307873286.70277" 
    capture_lex $P3217
    .const 'Sub' $P3212 = "280_1307873286.70277" 
    capture_lex $P3212
    .const 'Sub' $P3175 = "279_1307873286.70277" 
    capture_lex $P3175
    .const 'Sub' $P3161 = "278_1307873286.70277" 
    capture_lex $P3161
    .const 'Sub' $P3140 = "277_1307873286.70277" 
    capture_lex $P3140
    .const 'Sub' $P3115 = "276_1307873286.70277" 
    capture_lex $P3115
    .const 'Sub' $P3101 = "275_1307873286.70277" 
    capture_lex $P3101
    .const 'Sub' $P3083 = "274_1307873286.70277" 
    capture_lex $P3083
    .const 'Sub' $P3063 = "273_1307873286.70277" 
    capture_lex $P3063
    .const 'Sub' $P3049 = "272_1307873286.70277" 
    capture_lex $P3049
    .const 'Sub' $P3031 = "271_1307873286.70277" 
    capture_lex $P3031
    .const 'Sub' $P3022 = "270_1307873286.70277" 
    capture_lex $P3022
    .const 'Sub' $P3007 = "267_1307873286.70277" 
    capture_lex $P3007
    .const 'Sub' $P2999 = "266_1307873286.70277" 
    capture_lex $P2999
    .lex "Event", $P2998
.annotate 'line', 2115
    .const 'Sub' $P2999 = "266_1307873286.70277" 
    newclosure $P3003, $P2999
    .lex "addr", $P3003
.annotate 'line', 2094
    .lex "$?PACKAGE", $P3004
    .lex "$?CLASS", $P3005
.annotate 'line', 2096
    .const 'Sub' $P3007 = "267_1307873286.70277" 
    capture_lex $P3007
    $P3007()
    find_lex $P3021, "addr"
.annotate 'line', 2229
    .const 'Sub' $P3222 = "282_1307873286.70277" 
    newclosure $P3227, $P3222
.annotate 'line', 2094
    .return ($P3227)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("266_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3000
.annotate 'line', 2115
    .lex "$obj", param_3000
.annotate 'line', 2116
    find_lex $P3001, "$obj"
    unless_null $P3001, vivify_1194
    new $P3001, "Undef"
  vivify_1194:
    get_addr $I3002, $P3001
.annotate 'line', 2115
    .return ($I3002)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3006"  :anon :subid("267_1307873286.70277") :outer("265_1307873286.70277")
.annotate 'line', 2096
    .const 'Sub' $P3015 = "269_1307873286.70277" 
    capture_lex $P3015
    .const 'Sub' $P3010 = "268_1307873286.70277" 
    capture_lex $P3010
    .lex "$?PACKAGE", $P3008
    .lex "$?CLASS", $P3009
.annotate 'line', 2103
    .const 'Sub' $P3015 = "269_1307873286.70277" 
    newclosure $P3020, $P3015
.annotate 'line', 2096
    .return ($P3020)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("268_1307873286.70277") :outer("267_1307873286.70277")
    .param pmc param_3011
.annotate 'line', 2099
    .lex "self", param_3011
    find_lex $P3012, "self"
    find_lex $P3013, "$?CLASS"
    getattribute $P3014, $P3012, $P3013, "$!deserialize_past"
    unless_null $P3014, vivify_1195
    new $P3014, "Undef"
  vivify_1195:
    .return ($P3014)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("269_1307873286.70277") :outer("267_1307873286.70277")
    .param pmc param_3016
.annotate 'line', 2103
    .lex "self", param_3016
    find_lex $P3017, "self"
    find_lex $P3018, "$?CLASS"
    getattribute $P3019, $P3017, $P3018, "$!fixup_past"
    unless_null $P3019, vivify_1196
    new $P3019, "Undef"
  vivify_1196:
    .return ($P3019)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("270_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3023
    .param pmc param_3024 :named("handle")
.annotate 'line', 2123
    .lex "self", param_3023
    .lex "$handle", param_3024
.annotate 'line', 2124
    new $P3025, "Undef"
    .lex "$obj", $P3025
    find_lex $P3026, "self"
    $P3027 = $P3026."CREATE"()
    store_lex "$obj", $P3027
.annotate 'line', 2125
    find_lex $P3028, "$obj"
    unless_null $P3028, vivify_1197
    new $P3028, "Undef"
  vivify_1197:
    find_lex $P3029, "$handle"
    unless_null $P3029, vivify_1198
    new $P3029, "Undef"
  vivify_1198:
    $P3028."BUILD"($P3029 :named("handle"))
    find_lex $P3030, "$obj"
    unless_null $P3030, vivify_1199
    new $P3030, "Undef"
  vivify_1199:
.annotate 'line', 2123
    .return ($P3030)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("271_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3032
    .param pmc param_3033 :optional :named("handle")
    .param int has_param_3033 :opt_flag
.annotate 'line', 2129
    .lex "self", param_3032
    if has_param_3033, optparam_1200
    new $P3034, "Undef"
    set param_3033, $P3034
  optparam_1200:
    .lex "$handle", param_3033
.annotate 'line', 2130
    find_lex $P3035, "$handle"
    unless_null $P3035, vivify_1201
    new $P3035, "Undef"
  vivify_1201:
    set $S3036, $P3035
    nqp_create_sc $P3037, $S3036
    find_lex $P3038, "self"
    find_lex $P3039, "$?CLASS"
    setattribute $P3038, $P3039, "$!sc", $P3037
.annotate 'line', 2131
    find_lex $P3040, "$handle"
    unless_null $P3040, vivify_1202
    new $P3040, "Undef"
  vivify_1202:
    find_lex $P3041, "self"
    find_lex $P3042, "$?CLASS"
    setattribute $P3041, $P3042, "$!handle", $P3040
.annotate 'line', 2132
    new $P3043, "Hash"
    find_lex $P3044, "self"
    find_lex $P3045, "$?CLASS"
    setattribute $P3044, $P3045, "%!addr_to_slot", $P3043
.annotate 'line', 2133
    new $P3046, "ResizablePMCArray"
    find_lex $P3047, "self"
    find_lex $P3048, "$?CLASS"
    setattribute $P3047, $P3048, "@!event_stream", $P3046
.annotate 'line', 2129
    .return ($P3046)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("272_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3050
    .param pmc param_3051
.annotate 'line', 2137
    .lex "self", param_3050
    .lex "$obj", param_3051
.annotate 'line', 2138
    new $P3052, "Undef"
    .lex "$slot", $P3052
    find_lex $P3053, "$obj"
    unless_null $P3053, vivify_1203
    new $P3053, "Undef"
  vivify_1203:
    $P3054 = "addr"($P3053)
    find_lex $P3055, "self"
    find_lex $P3056, "$?CLASS"
    getattribute $P3057, $P3055, $P3056, "%!addr_to_slot"
    unless_null $P3057, vivify_1204
    $P3057 = root_new ['parrot';'Hash']
  vivify_1204:
    set $P3058, $P3057[$P3054]
    unless_null $P3058, vivify_1205
    new $P3058, "Undef"
  vivify_1205:
    store_lex "$slot", $P3058
.annotate 'line', 2139
    find_lex $P3060, "$slot"
    unless_null $P3060, vivify_1206
    new $P3060, "Undef"
  vivify_1206:
    defined $I3061, $P3060
    if $I3061, unless_3059_end
.annotate 'line', 2140
    die "slot_for_object called on object not in context"
  unless_3059_end:
.annotate 'line', 2139
    find_lex $P3062, "$slot"
    unless_null $P3062, vivify_1207
    new $P3062, "Undef"
  vivify_1207:
.annotate 'line', 2137
    .return ($P3062)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object" :anon :subid("273_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3066
    .param pmc param_3067
.annotate 'line', 2149
    new $P3065, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3065, control_3064
    push_eh $P3065
    .lex "self", param_3066
    .lex "$obj", param_3067
.annotate 'line', 2150
    new $P3068, "Undef"
    .lex "$slot", $P3068
    find_lex $P3069, "self"
    find_lex $P3070, "$obj"
    unless_null $P3070, vivify_1208
    new $P3070, "Undef"
  vivify_1208:
    $P3071 = $P3069."slot_for_object"($P3070)
    store_lex "$slot", $P3071
.annotate 'line', 2151
    new $P3072, "Exception"
    set $P3072['type'], .CONTROL_RETURN
    get_hll_global $P3073, "GLOBAL"
    nqp_get_package_through_who $P3074, $P3073, "PAST"
    get_who $P3075, $P3074
    set $P3076, $P3075["Op"]
    find_lex $P3077, "self"
    find_lex $P3078, "$?CLASS"
    getattribute $P3079, $P3077, $P3078, "$!handle"
    unless_null $P3079, vivify_1209
    new $P3079, "Undef"
  vivify_1209:
    find_lex $P3080, "$slot"
    unless_null $P3080, vivify_1210
    new $P3080, "Undef"
  vivify_1210:
    $P3081 = $P3076."new"($P3079, $P3080, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3072, 'payload', $P3081
    throw $P3072
.annotate 'line', 2149
    .return ()
  control_3064:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3082, exception, "payload"
    .return ($P3082)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("274_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3086
    .param pmc param_3087
    .param pmc param_3088
.annotate 'line', 2155
    new $P3085, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3085, control_3084
    push_eh $P3085
    .lex "self", param_3086
    .lex "$slot", param_3087
    .lex "$past_to_set", param_3088
.annotate 'line', 2156
    new $P3089, "Exception"
    set $P3089['type'], .CONTROL_RETURN
    get_hll_global $P3090, "GLOBAL"
    nqp_get_package_through_who $P3091, $P3090, "PAST"
    get_who $P3092, $P3091
    set $P3093, $P3092["Op"]
    find_lex $P3094, "self"
    find_lex $P3095, "$?CLASS"
    getattribute $P3096, $P3094, $P3095, "$!handle"
    unless_null $P3096, vivify_1211
    new $P3096, "Undef"
  vivify_1211:
    find_lex $P3097, "$slot"
    unless_null $P3097, vivify_1212
    new $P3097, "Undef"
  vivify_1212:
    find_lex $P3098, "$past_to_set"
    unless_null $P3098, vivify_1213
    new $P3098, "Undef"
  vivify_1213:
    $P3099 = $P3093."new"($P3096, $P3097, $P3098, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3089, 'payload', $P3099
    throw $P3089
.annotate 'line', 2155
    .return ()
  control_3084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3100, exception, "payload"
    .return ($P3100)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("275_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3102
    .param pmc param_3103
.annotate 'line', 2162
    .lex "self", param_3102
    .lex "$to_wrap", param_3103
.annotate 'line', 2163
    get_hll_global $P3104, "GLOBAL"
    nqp_get_package_through_who $P3105, $P3104, "PAST"
    get_who $P3106, $P3105
    set $P3107, $P3106["Op"]
    find_lex $P3108, "$to_wrap"
    unless_null $P3108, vivify_1214
    new $P3108, "Undef"
  vivify_1214:
.annotate 'line', 2166
    get_hll_global $P3109, "GLOBAL"
    nqp_get_package_through_who $P3110, $P3109, "PAST"
    get_who $P3111, $P3110
    set $P3112, $P3111["Var"]
    $P3113 = $P3112."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3114 = $P3107."new"($P3108, $P3113, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2162
    .return ($P3114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("276_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3116
    .param pmc param_3117
.annotate 'line', 2171
    .lex "self", param_3116
    .lex "$obj", param_3117
.annotate 'line', 2173
    new $P3118, "Undef"
    .lex "$idx", $P3118
.annotate 'line', 2172
    find_lex $P3119, "$obj"
    unless_null $P3119, vivify_1215
    new $P3119, "Undef"
  vivify_1215:
    find_lex $P3120, "self"
    find_lex $P3121, "$?CLASS"
    getattribute $P3122, $P3120, $P3121, "$!sc"
    unless_null $P3122, vivify_1216
    new $P3122, "Undef"
  vivify_1216:
    nqp_set_sc_for_object $P3119, $P3122
.annotate 'line', 2173
    find_lex $P3123, "self"
    find_lex $P3124, "$?CLASS"
    getattribute $P3125, $P3123, $P3124, "$!sc"
    unless_null $P3125, vivify_1217
    new $P3125, "Undef"
  vivify_1217:
    $P3126 = $P3125."elems"()
    store_lex "$idx", $P3126
.annotate 'line', 2174
    find_lex $P3127, "$obj"
    unless_null $P3127, vivify_1218
    new $P3127, "Undef"
  vivify_1218:
    find_lex $P3128, "$idx"
    unless_null $P3128, vivify_1219
    new $P3128, "Undef"
  vivify_1219:
    set $I3129, $P3128
    find_lex $P3130, "self"
    find_lex $P3131, "$?CLASS"
    getattribute $P3132, $P3130, $P3131, "$!sc"
    unless_null $P3132, vivify_1220
    $P3132 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3130, $P3131, "$!sc", $P3132
  vivify_1220:
    set $P3132[$I3129], $P3127
.annotate 'line', 2175
    find_lex $P3133, "$idx"
    unless_null $P3133, vivify_1221
    new $P3133, "Undef"
  vivify_1221:
    find_lex $P3134, "$obj"
    unless_null $P3134, vivify_1222
    new $P3134, "Undef"
  vivify_1222:
    $P3135 = "addr"($P3134)
    find_lex $P3136, "self"
    find_lex $P3137, "$?CLASS"
    getattribute $P3138, $P3136, $P3137, "%!addr_to_slot"
    unless_null $P3138, vivify_1223
    $P3138 = root_new ['parrot';'Hash']
    setattribute $P3136, $P3137, "%!addr_to_slot", $P3138
  vivify_1223:
    set $P3138[$P3135], $P3133
    find_lex $P3139, "$idx"
    unless_null $P3139, vivify_1224
    new $P3139, "Undef"
  vivify_1224:
.annotate 'line', 2171
    .return ($P3139)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("277_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3141
    .param pmc param_3142
.annotate 'line', 2180
    .lex "self", param_3141
    .lex "$obj", param_3142
.annotate 'line', 2181
    new $P3143, "Undef"
    .lex "$idx", $P3143
    find_lex $P3144, "self"
    find_lex $P3145, "$?CLASS"
    getattribute $P3146, $P3144, $P3145, "$!sc"
    unless_null $P3146, vivify_1225
    new $P3146, "Undef"
  vivify_1225:
    $P3147 = $P3146."elems"()
    store_lex "$idx", $P3147
.annotate 'line', 2182
    find_lex $P3148, "$obj"
    unless_null $P3148, vivify_1226
    new $P3148, "Undef"
  vivify_1226:
    find_lex $P3149, "$idx"
    unless_null $P3149, vivify_1227
    new $P3149, "Undef"
  vivify_1227:
    set $I3150, $P3149
    find_lex $P3151, "self"
    find_lex $P3152, "$?CLASS"
    getattribute $P3153, $P3151, $P3152, "$!sc"
    unless_null $P3153, vivify_1228
    $P3153 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3151, $P3152, "$!sc", $P3153
  vivify_1228:
    set $P3153[$I3150], $P3148
.annotate 'line', 2183
    find_lex $P3154, "$idx"
    unless_null $P3154, vivify_1229
    new $P3154, "Undef"
  vivify_1229:
    find_lex $P3155, "$obj"
    unless_null $P3155, vivify_1230
    new $P3155, "Undef"
  vivify_1230:
    $P3156 = "addr"($P3155)
    find_lex $P3157, "self"
    find_lex $P3158, "$?CLASS"
    getattribute $P3159, $P3157, $P3158, "%!addr_to_slot"
    unless_null $P3159, vivify_1231
    $P3159 = root_new ['parrot';'Hash']
    setattribute $P3157, $P3158, "%!addr_to_slot", $P3159
  vivify_1231:
    set $P3159[$P3156], $P3154
    find_lex $P3160, "$idx"
    unless_null $P3160, vivify_1232
    new $P3160, "Undef"
  vivify_1232:
.annotate 'line', 2180
    .return ($P3160)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("278_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3162
    .param pmc param_3163 :optional :named("deserialize_past")
    .param int has_param_3163 :opt_flag
    .param pmc param_3165 :optional :named("fixup_past")
    .param int has_param_3165 :opt_flag
.annotate 'line', 2188
    .lex "self", param_3162
    if has_param_3163, optparam_1233
    new $P3164, "Undef"
    set param_3163, $P3164
  optparam_1233:
    .lex "$deserialize_past", param_3163
    if has_param_3165, optparam_1234
    new $P3166, "Undef"
    set param_3165, $P3166
  optparam_1234:
    .lex "$fixup_past", param_3165
.annotate 'line', 2189
    find_lex $P3167, "self"
    find_lex $P3168, "$?CLASS"
    getattribute $P3169, $P3167, $P3168, "@!event_stream"
    unless_null $P3169, vivify_1235
    $P3169 = root_new ['parrot';'ResizablePMCArray']
  vivify_1235:
    find_lex $P3170, "Event"
    find_lex $P3171, "$deserialize_past"
    unless_null $P3171, vivify_1236
    new $P3171, "Undef"
  vivify_1236:
    find_lex $P3172, "$fixup_past"
    unless_null $P3172, vivify_1237
    new $P3172, "Undef"
  vivify_1237:
    $P3173 = $P3170."new"($P3171 :named("deserialize_past"), $P3172 :named("fixup_past"))
    $P3174 = $P3169."push"($P3173)
.annotate 'line', 2188
    .return ($P3174)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("279_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3176
    .param pmc param_3177
.annotate 'line', 2196
    .lex "self", param_3176
    .lex "$obj", param_3177
.annotate 'line', 2199
    new $P3178, "Undef"
    .lex "$sc", $P3178
    find_lex $P3179, "$obj"
    unless_null $P3179, vivify_1238
    new $P3179, "Undef"
  vivify_1238:
    nqp_get_sc_for_object $P3180, $P3179
    store_lex "$sc", $P3180
.annotate 'line', 2200
    find_lex $P3182, "$sc"
    unless_null $P3182, vivify_1239
    new $P3182, "Undef"
  vivify_1239:
    defined $I3183, $P3182
    if $I3183, unless_3181_end
.annotate 'line', 2201
    new $P3184, "String"
    assign $P3184, "Object of type '"
    find_lex $P3185, "$obj"
    unless_null $P3185, vivify_1240
    new $P3185, "Undef"
  vivify_1240:
    get_how $P3186, $P3185
    find_lex $P3187, "$obj"
    unless_null $P3187, vivify_1241
    new $P3187, "Undef"
  vivify_1241:
    $S3188 = $P3186."name"($P3187)
    concat $P3189, $P3184, $S3188
    concat $P3190, $P3189, "' cannot be referenced without having been "
    concat $P3191, $P3190, "assigned a serialization context"
.annotate 'line', 2202
    die $P3191
  unless_3181_end:
.annotate 'line', 2208
    find_lex $P3194, "$sc"
    unless_null $P3194, vivify_1242
    new $P3194, "Undef"
  vivify_1242:
    find_lex $P3195, "self"
    find_lex $P3196, "$?CLASS"
    getattribute $P3197, $P3195, $P3196, "$!sc"
    unless_null $P3197, vivify_1243
    new $P3197, "Undef"
  vivify_1243:
    issame $I3198, $P3194, $P3197
    if $I3198, if_3193
.annotate 'line', 2212
    get_hll_global $P3202, "GLOBAL"
    nqp_get_package_through_who $P3203, $P3202, "PAST"
    get_who $P3204, $P3203
    set $P3205, $P3204["Op"]
.annotate 'line', 2213
    find_lex $P3206, "$sc"
    unless_null $P3206, vivify_1244
    new $P3206, "Undef"
  vivify_1244:
    $P3207 = $P3206."handle"()
    find_lex $P3208, "$sc"
    unless_null $P3208, vivify_1245
    new $P3208, "Undef"
  vivify_1245:
    find_lex $P3209, "$obj"
    unless_null $P3209, vivify_1246
    new $P3209, "Undef"
  vivify_1246:
    $P3210 = $P3208."slot_index_for"($P3209)
    $P3211 = $P3205."new"($P3207, $P3210, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2211
    set $P3192, $P3211
.annotate 'line', 2208
    goto if_3193_end
  if_3193:
.annotate 'line', 2209
    find_lex $P3199, "self"
    find_lex $P3200, "$obj"
    unless_null $P3200, vivify_1247
    new $P3200, "Undef"
  vivify_1247:
    $P3201 = $P3199."get_slot_past_for_object"($P3200)
.annotate 'line', 2208
    set $P3192, $P3201
  if_3193_end:
.annotate 'line', 2196
    .return ($P3192)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("280_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3213
.annotate 'line', 2219
    .lex "self", param_3213
    find_lex $P3214, "self"
    find_lex $P3215, "$?CLASS"
    getattribute $P3216, $P3214, $P3215, "$!sc"
    unless_null $P3216, vivify_1248
    new $P3216, "Undef"
  vivify_1248:
    .return ($P3216)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("281_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3218
.annotate 'line', 2224
    .lex "self", param_3218
    find_lex $P3219, "self"
    find_lex $P3220, "$?CLASS"
    getattribute $P3221, $P3219, $P3220, "$!handle"
    unless_null $P3221, vivify_1249
    new $P3221, "Undef"
  vivify_1249:
    .return ($P3221)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("282_1307873286.70277") :outer("265_1307873286.70277")
    .param pmc param_3223
.annotate 'line', 2229
    .lex "self", param_3223
    find_lex $P3224, "self"
    find_lex $P3225, "$?CLASS"
    getattribute $P3226, $P3224, $P3225, "@!event_stream"
    unless_null $P3226, vivify_1250
    $P3226 = root_new ['parrot';'ResizablePMCArray']
  vivify_1250:
    .return ($P3226)
.end


.HLL "nqp"

.namespace []
.sub "_block3235" :load :anon :subid("283_1307873286.70277")
.annotate 'line', 1061
    .const 'Sub' $P3237 = "10_1307873286.70277" 
    $P3238 = $P3237()
    .return ($P3238)
.end

