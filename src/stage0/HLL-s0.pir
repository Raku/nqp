
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1306916546.01542")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2985 = "264_1306916546.01542" 
    capture_lex $P2985
    .const 'Sub' $P2556 = "245_1306916546.01542" 
    capture_lex $P2556
    .const 'Sub' $P2478 = "238_1306916546.01542" 
    capture_lex $P2478
    .const 'Sub' $P1163 = "165_1306916546.01542" 
    capture_lex $P1163
    .const 'Sub' $P478 = "119_1306916546.01542" 
    capture_lex $P478
    .const 'Sub' $P18 = "11_1306916546.01542" 
    capture_lex $P18
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 1773
    new $P16, "Undef"
    .lex "$compiler", $P16
.annotate 'line', 1059
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1058
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P18 = "11_1306916546.01542" 
    capture_lex $P18
    $P18()
.annotate 'line', 861
    .const 'Sub' $P478 = "119_1306916546.01542" 
    capture_lex $P478
    $P478()
.annotate 'line', 1066
    .const 'Sub' $P1163 = "165_1306916546.01542" 
    capture_lex $P1163
    $P1163()
.annotate 'line', 1773
    get_hll_global $P2471, "GLOBAL"
    nqp_get_package_through_who $P2472, $P2471, "HLL"
    get_who $P2473, $P2472
    set $P2474, $P2473["Compiler"]
    $P2475 = $P2474."new"()
    store_lex "$compiler", $P2475
.annotate 'line', 1774
    find_lex $P2476, "$compiler"
    unless_null $P2476, vivify_1046
    new $P2476, "Undef"
  vivify_1046:
    $P2476."language"("parrot")
.annotate 'line', 1867
    .const 'Sub' $P2478 = "238_1306916546.01542" 
    capture_lex $P2478
    $P2478()
.annotate 'line', 1900
    .const 'Sub' $P2556 = "245_1306916546.01542" 
    capture_lex $P2556
    $P2556()
.annotate 'line', 2078
    .const 'Sub' $P2985 = "264_1306916546.01542" 
    capture_lex $P2985
    $P2985()
    find_lex $P3218, "@ARGS"
    if $P3218, if_3217
    set $P3216, $P3218
    goto if_3217_end
  if_3217:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3219, "ModuleLoader"
    getinterp $P3220
    set $P3221, $P3220["context"]
    $P3222 = $P3219."set_mainline_module"($P3221)
    set $P3216, $P3222
  if_3217_end:
.annotate 'line', 1
    .return ($P3216)
.annotate 'line', 1058
    .const 'Sub' $P3224 = "282_1306916546.01542" 
.annotate 'line', 1
    .return ($P3224)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post283") :outer("10_1306916546.01542")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1306916546.01542" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3228, "1306916536.11825"
    isnull $I3229, $P3228
    if $I3229, if_3227
    .const 'Sub' $P4356 = "10_1306916546.01542" 
    $P4357 = $P4356."get_lexinfo"()
    nqp_get_sc_object $P4358, "1306916536.11825", 0
    $P4357."set_static_lexpad_value"("GLOBALish", $P4358)
    .const 'Sub' $P4359 = "10_1306916546.01542" 
    $P4360 = $P4359."get_lexinfo"()
    $P4360."finish_static_lexpad"()
    .const 'Sub' $P4361 = "10_1306916546.01542" 
    $P4362 = $P4361."get_lexinfo"()
    nqp_get_sc_object $P4363, "1306916536.11825", 0
    $P4362."set_static_lexpad_value"("$?PACKAGE", $P4363)
    .const 'Sub' $P4364 = "10_1306916546.01542" 
    $P4365 = $P4364."get_lexinfo"()
    $P4365."finish_static_lexpad"()
    nqp_get_sc_object $P4366, "1306916536.11825", 2
    .const 'Sub' $P4367 = "12_1306916546.01542" 
    assign $P4366, $P4367
    nqp_get_sc_object $P4368, "1306916536.11825", 3
    .const 'Sub' $P4369 = "13_1306916546.01542" 
    assign $P4368, $P4369
    nqp_get_sc_object $P4370, "1306916536.11825", 4
    .const 'Sub' $P4371 = "14_1306916546.01542" 
    assign $P4370, $P4371
    nqp_get_sc_object $P4372, "1306916536.11825", 5
    .const 'Sub' $P4373 = "15_1306916546.01542" 
    assign $P4372, $P4373
    nqp_get_sc_object $P4374, "1306916536.11825", 6
    .const 'Sub' $P4375 = "16_1306916546.01542" 
    assign $P4374, $P4375
    nqp_get_sc_object $P4376, "1306916536.11825", 7
    .const 'Sub' $P4377 = "17_1306916546.01542" 
    assign $P4376, $P4377
    nqp_get_sc_object $P4378, "1306916536.11825", 8
    .const 'Sub' $P4379 = "18_1306916546.01542" 
    assign $P4378, $P4379
    nqp_get_sc_object $P4380, "1306916536.11825", 9
    .const 'Sub' $P4381 = "19_1306916546.01542" 
    assign $P4380, $P4381
    nqp_get_sc_object $P4382, "1306916536.11825", 10
    .const 'Sub' $P4383 = "20_1306916546.01542" 
    assign $P4382, $P4383
    nqp_get_sc_object $P4384, "1306916536.11825", 11
    .const 'Sub' $P4385 = "21_1306916546.01542" 
    assign $P4384, $P4385
    nqp_get_sc_object $P4386, "1306916536.11825", 12
    .const 'Sub' $P4387 = "22_1306916546.01542" 
    assign $P4386, $P4387
    nqp_get_sc_object $P4388, "1306916536.11825", 13
    .const 'Sub' $P4389 = "23_1306916546.01542" 
    assign $P4388, $P4389
    nqp_get_sc_object $P4390, "1306916536.11825", 14
    .const 'Sub' $P4391 = "24_1306916546.01542" 
    assign $P4390, $P4391
    nqp_get_sc_object $P4392, "1306916536.11825", 15
    .const 'Sub' $P4393 = "25_1306916546.01542" 
    assign $P4392, $P4393
    nqp_get_sc_object $P4394, "1306916536.11825", 16
    .const 'Sub' $P4395 = "26_1306916546.01542" 
    assign $P4394, $P4395
    nqp_get_sc_object $P4396, "1306916536.11825", 17
    .const 'Sub' $P4397 = "27_1306916546.01542" 
    assign $P4396, $P4397
    nqp_get_sc_object $P4398, "1306916536.11825", 18
    .const 'Sub' $P4399 = "28_1306916546.01542" 
    assign $P4398, $P4399
    nqp_get_sc_object $P4400, "1306916536.11825", 19
    .const 'Sub' $P4401 = "29_1306916546.01542" 
    assign $P4400, $P4401
    nqp_get_sc_object $P4402, "1306916536.11825", 20
    .const 'Sub' $P4403 = "30_1306916546.01542" 
    assign $P4402, $P4403
    nqp_get_sc_object $P4404, "1306916536.11825", 21
    .const 'Sub' $P4405 = "31_1306916546.01542" 
    assign $P4404, $P4405
    nqp_get_sc_object $P4406, "1306916536.11825", 22
    .const 'Sub' $P4407 = "32_1306916546.01542" 
    assign $P4406, $P4407
    nqp_get_sc_object $P4408, "1306916536.11825", 23
    .const 'Sub' $P4409 = "33_1306916546.01542" 
    assign $P4408, $P4409
    nqp_get_sc_object $P4410, "1306916536.11825", 24
    .const 'Sub' $P4411 = "34_1306916546.01542" 
    assign $P4410, $P4411
    nqp_get_sc_object $P4412, "1306916536.11825", 25
    .const 'Sub' $P4413 = "35_1306916546.01542" 
    assign $P4412, $P4413
    nqp_get_sc_object $P4414, "1306916536.11825", 26
    .const 'Sub' $P4415 = "36_1306916546.01542" 
    assign $P4414, $P4415
    nqp_get_sc_object $P4416, "1306916536.11825", 27
    .const 'Sub' $P4417 = "37_1306916546.01542" 
    assign $P4416, $P4417
    nqp_get_sc_object $P4418, "1306916536.11825", 28
    .const 'Sub' $P4419 = "38_1306916546.01542" 
    assign $P4418, $P4419
    nqp_get_sc_object $P4420, "1306916536.11825", 29
    .const 'Sub' $P4421 = "39_1306916546.01542" 
    assign $P4420, $P4421
    nqp_get_sc_object $P4422, "1306916536.11825", 30
    .const 'Sub' $P4423 = "40_1306916546.01542" 
    assign $P4422, $P4423
    nqp_get_sc_object $P4424, "1306916536.11825", 31
    .const 'Sub' $P4425 = "41_1306916546.01542" 
    assign $P4424, $P4425
    nqp_get_sc_object $P4426, "1306916536.11825", 32
    .const 'Sub' $P4427 = "42_1306916546.01542" 
    assign $P4426, $P4427
    nqp_get_sc_object $P4428, "1306916536.11825", 33
    .const 'Sub' $P4429 = "43_1306916546.01542" 
    assign $P4428, $P4429
    nqp_get_sc_object $P4430, "1306916536.11825", 34
    .const 'Sub' $P4431 = "44_1306916546.01542" 
    assign $P4430, $P4431
    nqp_get_sc_object $P4432, "1306916536.11825", 35
    .const 'Sub' $P4433 = "45_1306916546.01542" 
    assign $P4432, $P4433
    nqp_get_sc_object $P4434, "1306916536.11825", 36
    .const 'Sub' $P4435 = "46_1306916546.01542" 
    assign $P4434, $P4435
    nqp_get_sc_object $P4436, "1306916536.11825", 37
    .const 'Sub' $P4437 = "47_1306916546.01542" 
    assign $P4436, $P4437
    nqp_get_sc_object $P4438, "1306916536.11825", 38
    .const 'Sub' $P4439 = "48_1306916546.01542" 
    assign $P4438, $P4439
    nqp_get_sc_object $P4440, "1306916536.11825", 39
    .const 'Sub' $P4441 = "49_1306916546.01542" 
    assign $P4440, $P4441
    nqp_get_sc_object $P4442, "1306916536.11825", 40
    .const 'Sub' $P4443 = "50_1306916546.01542" 
    assign $P4442, $P4443
    nqp_get_sc_object $P4444, "1306916536.11825", 41
    .const 'Sub' $P4445 = "51_1306916546.01542" 
    assign $P4444, $P4445
    nqp_get_sc_object $P4446, "1306916536.11825", 42
    .const 'Sub' $P4447 = "52_1306916546.01542" 
    assign $P4446, $P4447
    nqp_get_sc_object $P4448, "1306916536.11825", 43
    .const 'Sub' $P4449 = "53_1306916546.01542" 
    assign $P4448, $P4449
    nqp_get_sc_object $P4450, "1306916536.11825", 44
    .const 'Sub' $P4451 = "54_1306916546.01542" 
    assign $P4450, $P4451
    nqp_get_sc_object $P4452, "1306916536.11825", 45
    .const 'Sub' $P4453 = "55_1306916546.01542" 
    assign $P4452, $P4453
    nqp_get_sc_object $P4454, "1306916536.11825", 46
    .const 'Sub' $P4455 = "56_1306916546.01542" 
    assign $P4454, $P4455
    nqp_get_sc_object $P4456, "1306916536.11825", 47
    .const 'Sub' $P4457 = "57_1306916546.01542" 
    assign $P4456, $P4457
    nqp_get_sc_object $P4458, "1306916536.11825", 48
    .const 'Sub' $P4459 = "58_1306916546.01542" 
    assign $P4458, $P4459
    nqp_get_sc_object $P4460, "1306916536.11825", 49
    .const 'Sub' $P4461 = "59_1306916546.01542" 
    assign $P4460, $P4461
    nqp_get_sc_object $P4462, "1306916536.11825", 50
    .const 'Sub' $P4463 = "60_1306916546.01542" 
    assign $P4462, $P4463
    nqp_get_sc_object $P4464, "1306916536.11825", 51
    .const 'Sub' $P4465 = "61_1306916546.01542" 
    assign $P4464, $P4465
    nqp_get_sc_object $P4466, "1306916536.11825", 52
    .const 'Sub' $P4467 = "62_1306916546.01542" 
    assign $P4466, $P4467
    nqp_get_sc_object $P4468, "1306916536.11825", 53
    .const 'Sub' $P4469 = "63_1306916546.01542" 
    assign $P4468, $P4469
    nqp_get_sc_object $P4470, "1306916536.11825", 54
    .const 'Sub' $P4471 = "64_1306916546.01542" 
    assign $P4470, $P4471
    nqp_get_sc_object $P4472, "1306916536.11825", 55
    .const 'Sub' $P4473 = "65_1306916546.01542" 
    assign $P4472, $P4473
    nqp_get_sc_object $P4474, "1306916536.11825", 56
    .const 'Sub' $P4475 = "66_1306916546.01542" 
    assign $P4474, $P4475
    nqp_get_sc_object $P4476, "1306916536.11825", 57
    .const 'Sub' $P4477 = "67_1306916546.01542" 
    assign $P4476, $P4477
    nqp_get_sc_object $P4478, "1306916536.11825", 58
    .const 'Sub' $P4479 = "68_1306916546.01542" 
    assign $P4478, $P4479
    nqp_get_sc_object $P4480, "1306916536.11825", 59
    .const 'Sub' $P4481 = "69_1306916546.01542" 
    assign $P4480, $P4481
    nqp_get_sc_object $P4482, "1306916536.11825", 60
    .const 'Sub' $P4483 = "70_1306916546.01542" 
    assign $P4482, $P4483
    nqp_get_sc_object $P4484, "1306916536.11825", 61
    .const 'Sub' $P4485 = "71_1306916546.01542" 
    assign $P4484, $P4485
    nqp_get_sc_object $P4486, "1306916536.11825", 62
    .const 'Sub' $P4487 = "72_1306916546.01542" 
    assign $P4486, $P4487
    nqp_get_sc_object $P4488, "1306916536.11825", 63
    .const 'Sub' $P4489 = "73_1306916546.01542" 
    assign $P4488, $P4489
    nqp_get_sc_object $P4490, "1306916536.11825", 64
    .const 'Sub' $P4491 = "74_1306916546.01542" 
    assign $P4490, $P4491
    nqp_get_sc_object $P4492, "1306916536.11825", 65
    .const 'Sub' $P4493 = "75_1306916546.01542" 
    assign $P4492, $P4493
    nqp_get_sc_object $P4494, "1306916536.11825", 66
    .const 'Sub' $P4495 = "76_1306916546.01542" 
    assign $P4494, $P4495
    nqp_get_sc_object $P4496, "1306916536.11825", 67
    .const 'Sub' $P4497 = "77_1306916546.01542" 
    assign $P4496, $P4497
    nqp_get_sc_object $P4498, "1306916536.11825", 68
    .const 'Sub' $P4499 = "78_1306916546.01542" 
    assign $P4498, $P4499
    nqp_get_sc_object $P4500, "1306916536.11825", 69
    .const 'Sub' $P4501 = "79_1306916546.01542" 
    assign $P4500, $P4501
    nqp_get_sc_object $P4502, "1306916536.11825", 70
    .const 'Sub' $P4503 = "80_1306916546.01542" 
    assign $P4502, $P4503
    nqp_get_sc_object $P4504, "1306916536.11825", 71
    .const 'Sub' $P4505 = "81_1306916546.01542" 
    assign $P4504, $P4505
    nqp_get_sc_object $P4506, "1306916536.11825", 72
    .const 'Sub' $P4507 = "82_1306916546.01542" 
    assign $P4506, $P4507
    nqp_get_sc_object $P4508, "1306916536.11825", 73
    .const 'Sub' $P4509 = "83_1306916546.01542" 
    assign $P4508, $P4509
    nqp_get_sc_object $P4510, "1306916536.11825", 74
    .const 'Sub' $P4511 = "84_1306916546.01542" 
    assign $P4510, $P4511
    nqp_get_sc_object $P4512, "1306916536.11825", 75
    .const 'Sub' $P4513 = "85_1306916546.01542" 
    assign $P4512, $P4513
    nqp_get_sc_object $P4514, "1306916536.11825", 76
    .const 'Sub' $P4515 = "86_1306916546.01542" 
    assign $P4514, $P4515
    nqp_get_sc_object $P4516, "1306916536.11825", 77
    .const 'Sub' $P4517 = "87_1306916546.01542" 
    assign $P4516, $P4517
    nqp_get_sc_object $P4518, "1306916536.11825", 78
    .const 'Sub' $P4519 = "88_1306916546.01542" 
    assign $P4518, $P4519
    nqp_get_sc_object $P4520, "1306916536.11825", 79
    .const 'Sub' $P4521 = "89_1306916546.01542" 
    assign $P4520, $P4521
    nqp_get_sc_object $P4522, "1306916536.11825", 80
    .const 'Sub' $P4523 = "90_1306916546.01542" 
    assign $P4522, $P4523
    nqp_get_sc_object $P4524, "1306916536.11825", 81
    .const 'Sub' $P4525 = "91_1306916546.01542" 
    assign $P4524, $P4525
    nqp_get_sc_object $P4526, "1306916536.11825", 82
    .const 'Sub' $P4527 = "92_1306916546.01542" 
    assign $P4526, $P4527
    nqp_get_sc_object $P4528, "1306916536.11825", 83
    .const 'Sub' $P4529 = "93_1306916546.01542" 
    assign $P4528, $P4529
    nqp_get_sc_object $P4530, "1306916536.11825", 84
    .const 'Sub' $P4531 = "97_1306916546.01542" 
    assign $P4530, $P4531
    nqp_get_sc_object $P4532, "1306916536.11825", 85
    .const 'Sub' $P4533 = "98_1306916546.01542" 
    assign $P4532, $P4533
    nqp_get_sc_object $P4534, "1306916536.11825", 86
    .const 'Sub' $P4535 = "100_1306916546.01542" 
    assign $P4534, $P4535
    nqp_get_sc_object $P4536, "1306916536.11825", 87
    .const 'Sub' $P4537 = "101_1306916546.01542" 
    assign $P4536, $P4537
    nqp_get_sc_object $P4538, "1306916536.11825", 88
    .const 'Sub' $P4539 = "102_1306916546.01542" 
    assign $P4538, $P4539
    nqp_get_sc_object $P4540, "1306916536.11825", 89
    .const 'Sub' $P4541 = "103_1306916546.01542" 
    assign $P4540, $P4541
    nqp_get_sc_object $P4542, "1306916536.11825", 90
    .const 'Sub' $P4543 = "104_1306916546.01542" 
    assign $P4542, $P4543
    nqp_get_sc_object $P4544, "1306916536.11825", 91
    .const 'Sub' $P4545 = "105_1306916546.01542" 
    assign $P4544, $P4545
    nqp_get_sc_object $P4546, "1306916536.11825", 92
    .const 'Sub' $P4547 = "106_1306916546.01542" 
    assign $P4546, $P4547
    nqp_get_sc_object $P4548, "1306916536.11825", 93
    .const 'Sub' $P4549 = "107_1306916546.01542" 
    assign $P4548, $P4549
    nqp_get_sc_object $P4550, "1306916536.11825", 94
    .const 'Sub' $P4551 = "108_1306916546.01542" 
    assign $P4550, $P4551
    nqp_get_sc_object $P4552, "1306916536.11825", 95
    .const 'Sub' $P4553 = "109_1306916546.01542" 
    assign $P4552, $P4553
    .const 'Sub' $P4554 = "109_1306916546.01542" 
    nqp_get_sc_object $P4555, "1306916536.11825", 1
    get_who $P4556, $P4555
    set $P4556["quotemod_check"], $P4554
    nqp_get_sc_object $P4557, "1306916536.11825", 96
    .const 'Sub' $P4558 = "110_1306916546.01542" 
    assign $P4557, $P4558
    nqp_get_sc_object $P4559, "1306916536.11825", 97
    .const 'Sub' $P4560 = "111_1306916546.01542" 
    assign $P4559, $P4560
    nqp_get_sc_object $P4561, "1306916536.11825", 98
    .const 'Sub' $P4562 = "112_1306916546.01542" 
    assign $P4561, $P4562
    .const 'Sub' $P4563 = "112_1306916546.01542" 
    nqp_get_sc_object $P4564, "1306916536.11825", 1
    get_who $P4565, $P4564
    set $P4565["split_words"], $P4563
    nqp_get_sc_object $P4566, "1306916536.11825", 99
    .const 'Sub' $P4567 = "113_1306916546.01542" 
    assign $P4566, $P4567
    nqp_get_sc_object $P4568, "1306916536.11825", 100
    .const 'Sub' $P4569 = "114_1306916546.01542" 
    assign $P4568, $P4569
    nqp_get_sc_object $P4570, "1306916536.11825", 101
    .const 'Sub' $P4571 = "115_1306916546.01542" 
    assign $P4570, $P4571
    nqp_get_sc_object $P4572, "1306916536.11825", 102
    .const 'Sub' $P4573 = "116_1306916546.01542" 
    assign $P4572, $P4573
    nqp_get_sc_object $P4574, "1306916536.11825", 103
    .const 'Sub' $P4575 = "117_1306916546.01542" 
    assign $P4574, $P4575
    nqp_get_sc_object $P4576, "1306916536.11825", 104
    .const 'Sub' $P4577 = "118_1306916546.01542" 
    assign $P4576, $P4577
    .const 'Sub' $P4578 = "11_1306916546.01542" 
    $P4579 = $P4578."get_lexinfo"()
    nqp_get_sc_object $P4580, "1306916536.11825", 1
    $P4579."set_static_lexpad_value"("$?PACKAGE", $P4580)
    .const 'Sub' $P4581 = "11_1306916546.01542" 
    $P4582 = $P4581."get_lexinfo"()
    $P4582."finish_static_lexpad"()
    .const 'Sub' $P4583 = "11_1306916546.01542" 
    $P4584 = $P4583."get_lexinfo"()
    nqp_get_sc_object $P4585, "1306916536.11825", 1
    $P4584."set_static_lexpad_value"("$?CLASS", $P4585)
    .const 'Sub' $P4586 = "11_1306916546.01542" 
    $P4587 = $P4586."get_lexinfo"()
    $P4587."finish_static_lexpad"()
    .const 'Sub' $P4588 = "120_1306916546.01542" 
    nqp_get_sc_object $P4589, "1306916536.11825", 105
    get_who $P4590, $P4589
    set $P4590["string_to_int"], $P4588
    .const 'Sub' $P4591 = "122_1306916546.01542" 
    nqp_get_sc_object $P4592, "1306916536.11825", 105
    get_who $P4593, $P4592
    set $P4593["ints_to_string"], $P4591
    nqp_get_sc_object $P4594, "1306916536.11825", 106
    .const 'Sub' $P4595 = "125_1306916546.01542" 
    assign $P4594, $P4595
    nqp_get_sc_object $P4596, "1306916536.11825", 107
    .const 'Sub' $P4597 = "126_1306916546.01542" 
    assign $P4596, $P4597
    nqp_get_sc_object $P4598, "1306916536.11825", 108
    .const 'Sub' $P4599 = "129_1306916546.01542" 
    assign $P4598, $P4599
    nqp_get_sc_object $P4600, "1306916536.11825", 109
    .const 'Sub' $P4601 = "132_1306916546.01542" 
    assign $P4600, $P4601
    nqp_get_sc_object $P4602, "1306916536.11825", 110
    .const 'Sub' $P4603 = "133_1306916546.01542" 
    assign $P4602, $P4603
    nqp_get_sc_object $P4604, "1306916536.11825", 111
    .const 'Sub' $P4605 = "134_1306916546.01542" 
    assign $P4604, $P4605
    nqp_get_sc_object $P4606, "1306916536.11825", 112
    .const 'Sub' $P4607 = "135_1306916546.01542" 
    assign $P4606, $P4607
    nqp_get_sc_object $P4608, "1306916536.11825", 113
    .const 'Sub' $P4609 = "136_1306916546.01542" 
    assign $P4608, $P4609
    nqp_get_sc_object $P4610, "1306916536.11825", 114
    .const 'Sub' $P4611 = "137_1306916546.01542" 
    assign $P4610, $P4611
    nqp_get_sc_object $P4612, "1306916536.11825", 115
    .const 'Sub' $P4613 = "138_1306916546.01542" 
    assign $P4612, $P4613
    nqp_get_sc_object $P4614, "1306916536.11825", 116
    .const 'Sub' $P4615 = "139_1306916546.01542" 
    assign $P4614, $P4615
    nqp_get_sc_object $P4616, "1306916536.11825", 117
    .const 'Sub' $P4617 = "140_1306916546.01542" 
    assign $P4616, $P4617
    nqp_get_sc_object $P4618, "1306916536.11825", 118
    .const 'Sub' $P4619 = "141_1306916546.01542" 
    assign $P4618, $P4619
    nqp_get_sc_object $P4620, "1306916536.11825", 119
    .const 'Sub' $P4621 = "142_1306916546.01542" 
    assign $P4620, $P4621
    nqp_get_sc_object $P4622, "1306916536.11825", 120
    .const 'Sub' $P4623 = "145_1306916546.01542" 
    assign $P4622, $P4623
    nqp_get_sc_object $P4624, "1306916536.11825", 121
    .const 'Sub' $P4625 = "147_1306916546.01542" 
    assign $P4624, $P4625
    nqp_get_sc_object $P4626, "1306916536.11825", 122
    .const 'Sub' $P4627 = "148_1306916546.01542" 
    assign $P4626, $P4627
    nqp_get_sc_object $P4628, "1306916536.11825", 123
    .const 'Sub' $P4629 = "149_1306916546.01542" 
    assign $P4628, $P4629
    nqp_get_sc_object $P4630, "1306916536.11825", 124
    .const 'Sub' $P4631 = "150_1306916546.01542" 
    assign $P4630, $P4631
    nqp_get_sc_object $P4632, "1306916536.11825", 125
    .const 'Sub' $P4633 = "151_1306916546.01542" 
    assign $P4632, $P4633
    nqp_get_sc_object $P4634, "1306916536.11825", 126
    .const 'Sub' $P4635 = "152_1306916546.01542" 
    assign $P4634, $P4635
    nqp_get_sc_object $P4636, "1306916536.11825", 127
    .const 'Sub' $P4637 = "153_1306916546.01542" 
    assign $P4636, $P4637
    nqp_get_sc_object $P4638, "1306916536.11825", 128
    .const 'Sub' $P4639 = "154_1306916546.01542" 
    assign $P4638, $P4639
    nqp_get_sc_object $P4640, "1306916536.11825", 129
    .const 'Sub' $P4641 = "155_1306916546.01542" 
    assign $P4640, $P4641
    nqp_get_sc_object $P4642, "1306916536.11825", 130
    .const 'Sub' $P4643 = "156_1306916546.01542" 
    assign $P4642, $P4643
    nqp_get_sc_object $P4644, "1306916536.11825", 131
    .const 'Sub' $P4645 = "157_1306916546.01542" 
    assign $P4644, $P4645
    nqp_get_sc_object $P4646, "1306916536.11825", 132
    .const 'Sub' $P4647 = "158_1306916546.01542" 
    assign $P4646, $P4647
    nqp_get_sc_object $P4648, "1306916536.11825", 133
    .const 'Sub' $P4649 = "159_1306916546.01542" 
    assign $P4648, $P4649
    nqp_get_sc_object $P4650, "1306916536.11825", 134
    .const 'Sub' $P4651 = "160_1306916546.01542" 
    assign $P4650, $P4651
    nqp_get_sc_object $P4652, "1306916536.11825", 135
    .const 'Sub' $P4653 = "161_1306916546.01542" 
    assign $P4652, $P4653
    nqp_get_sc_object $P4654, "1306916536.11825", 136
    .const 'Sub' $P4655 = "162_1306916546.01542" 
    assign $P4654, $P4655
    nqp_get_sc_object $P4656, "1306916536.11825", 137
    .const 'Sub' $P4657 = "164_1306916546.01542" 
    assign $P4656, $P4657
    .const 'Sub' $P4658 = "119_1306916546.01542" 
    $P4659 = $P4658."get_lexinfo"()
    nqp_get_sc_object $P4660, "1306916536.11825", 105
    $P4659."set_static_lexpad_value"("$?PACKAGE", $P4660)
    .const 'Sub' $P4661 = "119_1306916546.01542" 
    $P4662 = $P4661."get_lexinfo"()
    $P4662."finish_static_lexpad"()
    .const 'Sub' $P4663 = "119_1306916546.01542" 
    $P4664 = $P4663."get_lexinfo"()
    nqp_get_sc_object $P4665, "1306916536.11825", 105
    $P4664."set_static_lexpad_value"("$?CLASS", $P4665)
    .const 'Sub' $P4666 = "119_1306916546.01542" 
    $P4667 = $P4666."get_lexinfo"()
    $P4667."finish_static_lexpad"()
    nqp_get_sc_object $P4668, "1306916536.11825", 139
    .const 'Sub' $P4669 = "168_1306916546.01542" 
    assign $P4668, $P4669
    nqp_get_sc_object $P4670, "1306916536.11825", 140
    .const 'Sub' $P4671 = "169_1306916546.01542" 
    assign $P4670, $P4671
    nqp_get_sc_object $P4672, "1306916536.11825", 141
    .const 'Sub' $P4673 = "171_1306916546.01542" 
    assign $P4672, $P4673
    nqp_get_sc_object $P4674, "1306916536.11825", 142
    .const 'Sub' $P4675 = "174_1306916546.01542" 
    assign $P4674, $P4675
    nqp_get_sc_object $P4676, "1306916536.11825", 143
    .const 'Sub' $P4677 = "175_1306916546.01542" 
    assign $P4676, $P4677
    nqp_get_sc_object $P4678, "1306916536.11825", 144
    .const 'Sub' $P4679 = "176_1306916546.01542" 
    assign $P4678, $P4679
    nqp_get_sc_object $P4680, "1306916536.11825", 145
    .const 'Sub' $P4681 = "177_1306916546.01542" 
    assign $P4680, $P4681
    nqp_get_sc_object $P4682, "1306916536.11825", 146
    .const 'Sub' $P4683 = "178_1306916546.01542" 
    assign $P4682, $P4683
    nqp_get_sc_object $P4684, "1306916536.11825", 147
    .const 'Sub' $P4685 = "180_1306916546.01542" 
    assign $P4684, $P4685
    nqp_get_sc_object $P4686, "1306916536.11825", 148
    .const 'Sub' $P4687 = "185_1306916546.01542" 
    assign $P4686, $P4687
    nqp_get_sc_object $P4688, "1306916536.11825", 149
    .const 'Sub' $P4689 = "186_1306916546.01542" 
    assign $P4688, $P4689
    nqp_get_sc_object $P4690, "1306916536.11825", 150
    .const 'Sub' $P4691 = "193_1306916546.01542" 
    assign $P4690, $P4691
    nqp_get_sc_object $P4692, "1306916536.11825", 151
    .const 'Sub' $P4693 = "195_1306916546.01542" 
    assign $P4692, $P4693
    nqp_get_sc_object $P4694, "1306916536.11825", 152
    .const 'Sub' $P4695 = "196_1306916546.01542" 
    assign $P4694, $P4695
    nqp_get_sc_object $P4696, "1306916536.11825", 153
    .const 'Sub' $P4697 = "197_1306916546.01542" 
    assign $P4696, $P4697
    nqp_get_sc_object $P4698, "1306916536.11825", 154
    .const 'Sub' $P4699 = "198_1306916546.01542" 
    assign $P4698, $P4699
    nqp_get_sc_object $P4700, "1306916536.11825", 155
    .const 'Sub' $P4701 = "199_1306916546.01542" 
    assign $P4700, $P4701
    nqp_get_sc_object $P4702, "1306916536.11825", 156
    .const 'Sub' $P4703 = "200_1306916546.01542" 
    assign $P4702, $P4703
    nqp_get_sc_object $P4704, "1306916536.11825", 157
    .const 'Sub' $P4705 = "201_1306916546.01542" 
    assign $P4704, $P4705
    nqp_get_sc_object $P4706, "1306916536.11825", 158
    .const 'Sub' $P4707 = "202_1306916546.01542" 
    assign $P4706, $P4707
    nqp_get_sc_object $P4708, "1306916536.11825", 159
    .const 'Sub' $P4709 = "203_1306916546.01542" 
    assign $P4708, $P4709
    nqp_get_sc_object $P4710, "1306916536.11825", 160
    .const 'Sub' $P4711 = "204_1306916546.01542" 
    assign $P4710, $P4711
    nqp_get_sc_object $P4712, "1306916536.11825", 161
    .const 'Sub' $P4713 = "205_1306916546.01542" 
    assign $P4712, $P4713
    nqp_get_sc_object $P4714, "1306916536.11825", 162
    .const 'Sub' $P4715 = "207_1306916546.01542" 
    assign $P4714, $P4715
    nqp_get_sc_object $P4716, "1306916536.11825", 163
    .const 'Sub' $P4717 = "210_1306916546.01542" 
    assign $P4716, $P4717
    nqp_get_sc_object $P4718, "1306916536.11825", 164
    .const 'Sub' $P4719 = "214_1306916546.01542" 
    assign $P4718, $P4719
    nqp_get_sc_object $P4720, "1306916536.11825", 165
    .const 'Sub' $P4721 = "216_1306916546.01542" 
    assign $P4720, $P4721
    nqp_get_sc_object $P4722, "1306916536.11825", 166
    .const 'Sub' $P4723 = "219_1306916546.01542" 
    assign $P4722, $P4723
    nqp_get_sc_object $P4724, "1306916536.11825", 167
    .const 'Sub' $P4725 = "220_1306916546.01542" 
    assign $P4724, $P4725
    nqp_get_sc_object $P4726, "1306916536.11825", 168
    .const 'Sub' $P4727 = "221_1306916546.01542" 
    assign $P4726, $P4727
    nqp_get_sc_object $P4728, "1306916536.11825", 169
    .const 'Sub' $P4729 = "222_1306916546.01542" 
    assign $P4728, $P4729
    nqp_get_sc_object $P4730, "1306916536.11825", 170
    .const 'Sub' $P4731 = "223_1306916546.01542" 
    assign $P4730, $P4731
    nqp_get_sc_object $P4732, "1306916536.11825", 171
    .const 'Sub' $P4733 = "225_1306916546.01542" 
    assign $P4732, $P4733
    nqp_get_sc_object $P4734, "1306916536.11825", 172
    .const 'Sub' $P4735 = "226_1306916546.01542" 
    assign $P4734, $P4735
    nqp_get_sc_object $P4736, "1306916536.11825", 173
    .const 'Sub' $P4737 = "227_1306916546.01542" 
    assign $P4736, $P4737
    nqp_get_sc_object $P4738, "1306916536.11825", 174
    .const 'Sub' $P4739 = "230_1306916546.01542" 
    assign $P4738, $P4739
    nqp_get_sc_object $P4740, "1306916536.11825", 175
    .const 'Sub' $P4741 = "232_1306916546.01542" 
    assign $P4740, $P4741
    nqp_get_sc_object $P4742, "1306916536.11825", 176
    .const 'Sub' $P4743 = "235_1306916546.01542" 
    assign $P4742, $P4743
    nqp_get_sc_object $P4744, "1306916536.11825", 177
    .const 'Sub' $P4745 = "237_1306916546.01542" 
    assign $P4744, $P4745
    .const 'Sub' $P4746 = "165_1306916546.01542" 
    $P4747 = $P4746."get_lexinfo"()
    nqp_get_sc_object $P4748, "1306916536.11825", 138
    $P4747."set_static_lexpad_value"("$?PACKAGE", $P4748)
    .const 'Sub' $P4749 = "165_1306916546.01542" 
    $P4750 = $P4749."get_lexinfo"()
    $P4750."finish_static_lexpad"()
    .const 'Sub' $P4751 = "165_1306916546.01542" 
    $P4752 = $P4751."get_lexinfo"()
    nqp_get_sc_object $P4753, "1306916536.11825", 138
    $P4752."set_static_lexpad_value"("$?CLASS", $P4753)
    .const 'Sub' $P4754 = "165_1306916546.01542" 
    $P4755 = $P4754."get_lexinfo"()
    $P4755."finish_static_lexpad"()
    nqp_get_sc_object $P4756, "1306916536.11825", 179
    .const 'Sub' $P4757 = "239_1306916546.01542" 
    assign $P4756, $P4757
    nqp_get_sc_object $P4758, "1306916536.11825", 180
    .const 'Sub' $P4759 = "240_1306916546.01542" 
    assign $P4758, $P4759
    nqp_get_sc_object $P4760, "1306916536.11825", 181
    .const 'Sub' $P4761 = "241_1306916546.01542" 
    assign $P4760, $P4761
    nqp_get_sc_object $P4762, "1306916536.11825", 182
    .const 'Sub' $P4763 = "242_1306916546.01542" 
    assign $P4762, $P4763
    nqp_get_sc_object $P4764, "1306916536.11825", 183
    .const 'Sub' $P4765 = "243_1306916546.01542" 
    assign $P4764, $P4765
    .const 'Sub' $P4766 = "238_1306916546.01542" 
    $P4767 = $P4766."get_lexinfo"()
    nqp_get_sc_object $P4768, "1306916536.11825", 178
    $P4767."set_static_lexpad_value"("$?PACKAGE", $P4768)
    .const 'Sub' $P4769 = "238_1306916546.01542" 
    $P4770 = $P4769."get_lexinfo"()
    $P4770."finish_static_lexpad"()
    .const 'Sub' $P4771 = "238_1306916546.01542" 
    $P4772 = $P4771."get_lexinfo"()
    nqp_get_sc_object $P4773, "1306916536.11825", 178
    $P4772."set_static_lexpad_value"("$?CLASS", $P4773)
    .const 'Sub' $P4774 = "238_1306916546.01542" 
    $P4775 = $P4774."get_lexinfo"()
    $P4775."finish_static_lexpad"()
    nqp_get_sc_object $P4776, "1306916536.11825", 185
    .const 'Sub' $P4777 = "246_1306916546.01542" 
    assign $P4776, $P4777
    nqp_get_sc_object $P4778, "1306916536.11825", 186
    .const 'Sub' $P4779 = "247_1306916546.01542" 
    assign $P4778, $P4779
    nqp_get_sc_object $P4780, "1306916536.11825", 187
    .const 'Sub' $P4781 = "248_1306916546.01542" 
    assign $P4780, $P4781
    nqp_get_sc_object $P4782, "1306916536.11825", 188
    .const 'Sub' $P4783 = "250_1306916546.01542" 
    assign $P4782, $P4783
    nqp_get_sc_object $P4784, "1306916536.11825", 189
    .const 'Sub' $P4785 = "251_1306916546.01542" 
    assign $P4784, $P4785
    nqp_get_sc_object $P4786, "1306916536.11825", 190
    .const 'Sub' $P4787 = "252_1306916546.01542" 
    assign $P4786, $P4787
    nqp_get_sc_object $P4788, "1306916536.11825", 191
    .const 'Sub' $P4789 = "254_1306916546.01542" 
    assign $P4788, $P4789
    nqp_get_sc_object $P4790, "1306916536.11825", 192
    .const 'Sub' $P4791 = "255_1306916546.01542" 
    assign $P4790, $P4791
    nqp_get_sc_object $P4792, "1306916536.11825", 193
    .const 'Sub' $P4793 = "256_1306916546.01542" 
    assign $P4792, $P4793
    .const 'Sub' $P4794 = "245_1306916546.01542" 
    $P4795 = $P4794."get_lexinfo"()
    nqp_get_sc_object $P4796, "1306916536.11825", 184
    $P4795."set_static_lexpad_value"("$?PACKAGE", $P4796)
    .const 'Sub' $P4797 = "245_1306916546.01542" 
    $P4798 = $P4797."get_lexinfo"()
    $P4798."finish_static_lexpad"()
    .const 'Sub' $P4799 = "245_1306916546.01542" 
    $P4800 = $P4799."get_lexinfo"()
    nqp_get_sc_object $P4801, "1306916536.11825", 184
    $P4800."set_static_lexpad_value"("$?CLASS", $P4801)
    .const 'Sub' $P4802 = "245_1306916546.01542" 
    $P4803 = $P4802."get_lexinfo"()
    $P4803."finish_static_lexpad"()
    .const 'Sub' $P4804 = "264_1306916546.01542" 
    $P4805 = $P4804."get_lexinfo"()
    nqp_get_sc_object $P4806, "1306916536.11825", 195
    $P4805."set_static_lexpad_value"("Event", $P4806)
    .const 'Sub' $P4807 = "264_1306916546.01542" 
    $P4808 = $P4807."get_lexinfo"()
    $P4808."finish_static_lexpad"()
    nqp_get_sc_object $P4809, "1306916536.11825", 196
    .const 'Sub' $P4810 = "267_1306916546.01542" 
    assign $P4809, $P4810
    nqp_get_sc_object $P4811, "1306916536.11825", 197
    .const 'Sub' $P4812 = "268_1306916546.01542" 
    assign $P4811, $P4812
    .const 'Sub' $P4813 = "266_1306916546.01542" 
    $P4814 = $P4813."get_lexinfo"()
    nqp_get_sc_object $P4815, "1306916536.11825", 195
    $P4814."set_static_lexpad_value"("$?PACKAGE", $P4815)
    .const 'Sub' $P4816 = "266_1306916546.01542" 
    $P4817 = $P4816."get_lexinfo"()
    $P4817."finish_static_lexpad"()
    .const 'Sub' $P4818 = "266_1306916546.01542" 
    $P4819 = $P4818."get_lexinfo"()
    nqp_get_sc_object $P4820, "1306916536.11825", 195
    $P4819."set_static_lexpad_value"("$?CLASS", $P4820)
    .const 'Sub' $P4821 = "266_1306916546.01542" 
    $P4822 = $P4821."get_lexinfo"()
    $P4822."finish_static_lexpad"()
    nqp_get_sc_object $P4823, "1306916536.11825", 198
    .const 'Sub' $P4824 = "269_1306916546.01542" 
    assign $P4823, $P4824
    nqp_get_sc_object $P4825, "1306916536.11825", 199
    .const 'Sub' $P4826 = "270_1306916546.01542" 
    assign $P4825, $P4826
    nqp_get_sc_object $P4827, "1306916536.11825", 200
    .const 'Sub' $P4828 = "271_1306916546.01542" 
    assign $P4827, $P4828
    nqp_get_sc_object $P4829, "1306916536.11825", 201
    .const 'Sub' $P4830 = "272_1306916546.01542" 
    assign $P4829, $P4830
    nqp_get_sc_object $P4831, "1306916536.11825", 202
    .const 'Sub' $P4832 = "273_1306916546.01542" 
    assign $P4831, $P4832
    nqp_get_sc_object $P4833, "1306916536.11825", 203
    .const 'Sub' $P4834 = "274_1306916546.01542" 
    assign $P4833, $P4834
    nqp_get_sc_object $P4835, "1306916536.11825", 204
    .const 'Sub' $P4836 = "275_1306916546.01542" 
    assign $P4835, $P4836
    nqp_get_sc_object $P4837, "1306916536.11825", 205
    .const 'Sub' $P4838 = "276_1306916546.01542" 
    assign $P4837, $P4838
    nqp_get_sc_object $P4839, "1306916536.11825", 206
    .const 'Sub' $P4840 = "277_1306916546.01542" 
    assign $P4839, $P4840
    nqp_get_sc_object $P4841, "1306916536.11825", 207
    .const 'Sub' $P4842 = "278_1306916546.01542" 
    assign $P4841, $P4842
    nqp_get_sc_object $P4843, "1306916536.11825", 208
    .const 'Sub' $P4844 = "279_1306916546.01542" 
    assign $P4843, $P4844
    nqp_get_sc_object $P4845, "1306916536.11825", 209
    .const 'Sub' $P4846 = "280_1306916546.01542" 
    assign $P4845, $P4846
    nqp_get_sc_object $P4847, "1306916536.11825", 210
    .const 'Sub' $P4848 = "281_1306916546.01542" 
    assign $P4847, $P4848
    .const 'Sub' $P4849 = "264_1306916546.01542" 
    $P4850 = $P4849."get_lexinfo"()
    nqp_get_sc_object $P4851, "1306916536.11825", 194
    $P4850."set_static_lexpad_value"("$?PACKAGE", $P4851)
    .const 'Sub' $P4852 = "264_1306916546.01542" 
    $P4853 = $P4852."get_lexinfo"()
    $P4853."finish_static_lexpad"()
    .const 'Sub' $P4854 = "264_1306916546.01542" 
    $P4855 = $P4854."get_lexinfo"()
    nqp_get_sc_object $P4856, "1306916536.11825", 194
    $P4855."set_static_lexpad_value"("$?CLASS", $P4856)
    .const 'Sub' $P4857 = "264_1306916546.01542" 
    $P4858 = $P4857."get_lexinfo"()
    $P4858."finish_static_lexpad"()
    goto if_3227_end
  if_3227:
    nqp_dynop_setup 
    getinterp $P3230
    get_class $P3231, "LexPad"
    get_class $P3232, "NQPLexPad"
    $P3230."hll_map"($P3231, $P3232)
    nqp_create_sc $P3233, "1306916536.11825"
    .local pmc cur_sc
    set cur_sc, $P3233
    nqp_get_sc_object $P3234, "__6MODEL_CORE__", 0
    $P3235 = $P3234."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3235, cur_sc
    nqp_set_sc_object "1306916536.11825", 0, $P3235
    .const 'Sub' $P3236 = "10_1306916546.01542" 
    $P3237 = $P3236."get_lexinfo"()
    nqp_get_sc_object $P3238, "1306916536.11825", 0
    $P3237."set_static_lexpad_value"("GLOBALish", $P3238)
    .const 'Sub' $P3239 = "10_1306916546.01542" 
    $P3240 = $P3239."get_lexinfo"()
    $P3240."finish_static_lexpad"()
    .const 'Sub' $P3241 = "10_1306916546.01542" 
    $P3242 = $P3241."get_lexinfo"()
    nqp_get_sc_object $P3243, "1306916536.11825", 0
    $P3242."set_static_lexpad_value"("$?PACKAGE", $P3243)
    .const 'Sub' $P3244 = "10_1306916546.01542" 
    $P3245 = $P3244."get_lexinfo"()
    $P3245."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3246, "ModuleLoader"
    $P3247 = $P3246."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3247)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3248, "ModuleLoader"
    nqp_get_sc_object $P3249, "1306916536.11825", 0
    $P3248."load_module"("NQPRegex", $P3249)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3250, "ModuleLoader"
    nqp_get_sc_object $P3251, "1306916536.11825", 0
    $P3250."load_module"("NQPRegex", $P3251)
    nqp_get_sc_object $P3252, "1306916525.99765", 41
    $P3253 = $P3252."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3253, cur_sc
    nqp_set_sc_object "1306916536.11825", 1, $P3253
    nqp_get_sc_object $P3254, "1306916536.11825", 1
    nqp_get_sc_object $P3255, "1306916536.11825", 0
    nqp_get_package_through_who $P3256, $P3255, "HLL"
    get_who $P3257, $P3256
    set $P3257["Grammar"], $P3254
    nqp_get_sc_object $P3258, "1306916536.11825", 1
    get_how $P3259, $P3258
    nqp_get_sc_object $P3260, "1306916536.11825", 1
    .const 'Sub' $P3261 = "12_1306916546.01542" 
    $P3259."add_method"($P3260, "ws", $P3261)
    nqp_get_sc_object $P3262, "1306916536.11825", 1
    get_how $P3263, $P3262
    nqp_get_sc_object $P3264, "1306916536.11825", 1
    .const 'Sub' $P3265 = "13_1306916546.01542" 
    $P3263."add_method"($P3264, "!PREFIX__ws", $P3265)
    nqp_get_sc_object $P3266, "1306916536.11825", 1
    get_how $P3267, $P3266
    nqp_get_sc_object $P3268, "1306916536.11825", 1
    .const 'Sub' $P3269 = "14_1306916546.01542" 
    $P3267."add_method"($P3268, "termish", $P3269)
    nqp_get_sc_object $P3270, "1306916536.11825", 1
    get_how $P3271, $P3270
    nqp_get_sc_object $P3272, "1306916536.11825", 1
    .const 'Sub' $P3273 = "15_1306916546.01542" 
    $P3271."add_method"($P3272, "!PREFIX__termish", $P3273)
    nqp_get_sc_object $P3274, "1306916536.11825", 1
    get_how $P3275, $P3274
    nqp_get_sc_object $P3276, "1306916536.11825", 1
    .const 'Sub' $P3277 = "16_1306916546.01542" 
    $P3275."add_method"($P3276, "term", $P3277)
    nqp_get_sc_object $P3278, "1306916536.11825", 1
    get_how $P3279, $P3278
    nqp_get_sc_object $P3280, "1306916536.11825", 1
    .const 'Sub' $P3281 = "17_1306916546.01542" 
    $P3279."add_method"($P3280, "!PREFIX__term", $P3281)
    nqp_get_sc_object $P3282, "1306916536.11825", 1
    get_how $P3283, $P3282
    nqp_get_sc_object $P3284, "1306916536.11825", 1
    .const 'Sub' $P3285 = "18_1306916546.01542" 
    $P3283."add_method"($P3284, "infix", $P3285)
    nqp_get_sc_object $P3286, "1306916536.11825", 1
    get_how $P3287, $P3286
    nqp_get_sc_object $P3288, "1306916536.11825", 1
    .const 'Sub' $P3289 = "19_1306916546.01542" 
    $P3287."add_method"($P3288, "!PREFIX__infix", $P3289)
    nqp_get_sc_object $P3290, "1306916536.11825", 1
    get_how $P3291, $P3290
    nqp_get_sc_object $P3292, "1306916536.11825", 1
    .const 'Sub' $P3293 = "20_1306916546.01542" 
    $P3291."add_method"($P3292, "prefix", $P3293)
    nqp_get_sc_object $P3294, "1306916536.11825", 1
    get_how $P3295, $P3294
    nqp_get_sc_object $P3296, "1306916536.11825", 1
    .const 'Sub' $P3297 = "21_1306916546.01542" 
    $P3295."add_method"($P3296, "!PREFIX__prefix", $P3297)
    nqp_get_sc_object $P3298, "1306916536.11825", 1
    get_how $P3299, $P3298
    nqp_get_sc_object $P3300, "1306916536.11825", 1
    .const 'Sub' $P3301 = "22_1306916546.01542" 
    $P3299."add_method"($P3300, "postfix", $P3301)
    nqp_get_sc_object $P3302, "1306916536.11825", 1
    get_how $P3303, $P3302
    nqp_get_sc_object $P3304, "1306916536.11825", 1
    .const 'Sub' $P3305 = "23_1306916546.01542" 
    $P3303."add_method"($P3304, "!PREFIX__postfix", $P3305)
    nqp_get_sc_object $P3306, "1306916536.11825", 1
    get_how $P3307, $P3306
    nqp_get_sc_object $P3308, "1306916536.11825", 1
    .const 'Sub' $P3309 = "24_1306916546.01542" 
    $P3307."add_method"($P3308, "circumfix", $P3309)
    nqp_get_sc_object $P3310, "1306916536.11825", 1
    get_how $P3311, $P3310
    nqp_get_sc_object $P3312, "1306916536.11825", 1
    .const 'Sub' $P3313 = "25_1306916546.01542" 
    $P3311."add_method"($P3312, "!PREFIX__circumfix", $P3313)
    nqp_get_sc_object $P3314, "1306916536.11825", 1
    get_how $P3315, $P3314
    nqp_get_sc_object $P3316, "1306916536.11825", 1
    .const 'Sub' $P3317 = "26_1306916546.01542" 
    $P3315."add_method"($P3316, "postcircumfix", $P3317)
    nqp_get_sc_object $P3318, "1306916536.11825", 1
    get_how $P3319, $P3318
    nqp_get_sc_object $P3320, "1306916536.11825", 1
    .const 'Sub' $P3321 = "27_1306916546.01542" 
    $P3319."add_method"($P3320, "!PREFIX__postcircumfix", $P3321)
    nqp_get_sc_object $P3322, "1306916536.11825", 1
    get_how $P3323, $P3322
    nqp_get_sc_object $P3324, "1306916536.11825", 1
    .const 'Sub' $P3325 = "28_1306916546.01542" 
    $P3323."add_method"($P3324, "term:sym<circumfix>", $P3325)
    nqp_get_sc_object $P3326, "1306916536.11825", 1
    get_how $P3327, $P3326
    nqp_get_sc_object $P3328, "1306916536.11825", 1
    .const 'Sub' $P3329 = "29_1306916546.01542" 
    $P3327."add_method"($P3328, "!PREFIX__term:sym<circumfix>", $P3329)
    nqp_get_sc_object $P3330, "1306916536.11825", 1
    get_how $P3331, $P3330
    nqp_get_sc_object $P3332, "1306916536.11825", 1
    .const 'Sub' $P3333 = "30_1306916546.01542" 
    $P3331."add_method"($P3332, "infixish", $P3333)
    nqp_get_sc_object $P3334, "1306916536.11825", 1
    get_how $P3335, $P3334
    nqp_get_sc_object $P3336, "1306916536.11825", 1
    .const 'Sub' $P3337 = "31_1306916546.01542" 
    $P3335."add_method"($P3336, "!PREFIX__infixish", $P3337)
    nqp_get_sc_object $P3338, "1306916536.11825", 1
    get_how $P3339, $P3338
    nqp_get_sc_object $P3340, "1306916536.11825", 1
    .const 'Sub' $P3341 = "32_1306916546.01542" 
    $P3339."add_method"($P3340, "prefixish", $P3341)
    nqp_get_sc_object $P3342, "1306916536.11825", 1
    get_how $P3343, $P3342
    nqp_get_sc_object $P3344, "1306916536.11825", 1
    .const 'Sub' $P3345 = "33_1306916546.01542" 
    $P3343."add_method"($P3344, "!PREFIX__prefixish", $P3345)
    nqp_get_sc_object $P3346, "1306916536.11825", 1
    get_how $P3347, $P3346
    nqp_get_sc_object $P3348, "1306916536.11825", 1
    .const 'Sub' $P3349 = "34_1306916546.01542" 
    $P3347."add_method"($P3348, "postfixish", $P3349)
    nqp_get_sc_object $P3350, "1306916536.11825", 1
    get_how $P3351, $P3350
    nqp_get_sc_object $P3352, "1306916536.11825", 1
    .const 'Sub' $P3353 = "35_1306916546.01542" 
    $P3351."add_method"($P3352, "!PREFIX__postfixish", $P3353)
    nqp_get_sc_object $P3354, "1306916536.11825", 1
    get_how $P3355, $P3354
    nqp_get_sc_object $P3356, "1306916536.11825", 1
    .const 'Sub' $P3357 = "36_1306916546.01542" 
    $P3355."add_method"($P3356, "nullterm", $P3357)
    nqp_get_sc_object $P3358, "1306916536.11825", 1
    get_how $P3359, $P3358
    nqp_get_sc_object $P3360, "1306916536.11825", 1
    .const 'Sub' $P3361 = "37_1306916546.01542" 
    $P3359."add_method"($P3360, "!PREFIX__nullterm", $P3361)
    nqp_get_sc_object $P3362, "1306916536.11825", 1
    get_how $P3363, $P3362
    nqp_get_sc_object $P3364, "1306916536.11825", 1
    .const 'Sub' $P3365 = "38_1306916546.01542" 
    $P3363."add_method"($P3364, "nullterm_alt", $P3365)
    nqp_get_sc_object $P3366, "1306916536.11825", 1
    get_how $P3367, $P3366
    nqp_get_sc_object $P3368, "1306916536.11825", 1
    .const 'Sub' $P3369 = "39_1306916546.01542" 
    $P3367."add_method"($P3368, "!PREFIX__nullterm_alt", $P3369)
    nqp_get_sc_object $P3370, "1306916536.11825", 1
    get_how $P3371, $P3370
    nqp_get_sc_object $P3372, "1306916536.11825", 1
    .const 'Sub' $P3373 = "40_1306916546.01542" 
    $P3371."add_method"($P3372, "nulltermish", $P3373)
    nqp_get_sc_object $P3374, "1306916536.11825", 1
    get_how $P3375, $P3374
    nqp_get_sc_object $P3376, "1306916536.11825", 1
    .const 'Sub' $P3377 = "41_1306916546.01542" 
    $P3375."add_method"($P3376, "quote_delimited", $P3377)
    nqp_get_sc_object $P3378, "1306916536.11825", 1
    get_how $P3379, $P3378
    nqp_get_sc_object $P3380, "1306916536.11825", 1
    .const 'Sub' $P3381 = "42_1306916546.01542" 
    $P3379."add_method"($P3380, "!PREFIX__quote_delimited", $P3381)
    nqp_get_sc_object $P3382, "1306916536.11825", 1
    get_how $P3383, $P3382
    nqp_get_sc_object $P3384, "1306916536.11825", 1
    .const 'Sub' $P3385 = "43_1306916546.01542" 
    $P3383."add_method"($P3384, "quote_atom", $P3385)
    nqp_get_sc_object $P3386, "1306916536.11825", 1
    get_how $P3387, $P3386
    nqp_get_sc_object $P3388, "1306916536.11825", 1
    .const 'Sub' $P3389 = "44_1306916546.01542" 
    $P3387."add_method"($P3388, "!PREFIX__quote_atom", $P3389)
    nqp_get_sc_object $P3390, "1306916536.11825", 1
    get_how $P3391, $P3390
    nqp_get_sc_object $P3392, "1306916536.11825", 1
    .const 'Sub' $P3393 = "45_1306916546.01542" 
    $P3391."add_method"($P3392, "decint", $P3393)
    nqp_get_sc_object $P3394, "1306916536.11825", 1
    get_how $P3395, $P3394
    nqp_get_sc_object $P3396, "1306916536.11825", 1
    .const 'Sub' $P3397 = "46_1306916546.01542" 
    $P3395."add_method"($P3396, "!PREFIX__decint", $P3397)
    nqp_get_sc_object $P3398, "1306916536.11825", 1
    get_how $P3399, $P3398
    nqp_get_sc_object $P3400, "1306916536.11825", 1
    .const 'Sub' $P3401 = "47_1306916546.01542" 
    $P3399."add_method"($P3400, "decints", $P3401)
    nqp_get_sc_object $P3402, "1306916536.11825", 1
    get_how $P3403, $P3402
    nqp_get_sc_object $P3404, "1306916536.11825", 1
    .const 'Sub' $P3405 = "48_1306916546.01542" 
    $P3403."add_method"($P3404, "!PREFIX__decints", $P3405)
    nqp_get_sc_object $P3406, "1306916536.11825", 1
    get_how $P3407, $P3406
    nqp_get_sc_object $P3408, "1306916536.11825", 1
    .const 'Sub' $P3409 = "49_1306916546.01542" 
    $P3407."add_method"($P3408, "hexint", $P3409)
    nqp_get_sc_object $P3410, "1306916536.11825", 1
    get_how $P3411, $P3410
    nqp_get_sc_object $P3412, "1306916536.11825", 1
    .const 'Sub' $P3413 = "50_1306916546.01542" 
    $P3411."add_method"($P3412, "!PREFIX__hexint", $P3413)
    nqp_get_sc_object $P3414, "1306916536.11825", 1
    get_how $P3415, $P3414
    nqp_get_sc_object $P3416, "1306916536.11825", 1
    .const 'Sub' $P3417 = "51_1306916546.01542" 
    $P3415."add_method"($P3416, "hexints", $P3417)
    nqp_get_sc_object $P3418, "1306916536.11825", 1
    get_how $P3419, $P3418
    nqp_get_sc_object $P3420, "1306916536.11825", 1
    .const 'Sub' $P3421 = "52_1306916546.01542" 
    $P3419."add_method"($P3420, "!PREFIX__hexints", $P3421)
    nqp_get_sc_object $P3422, "1306916536.11825", 1
    get_how $P3423, $P3422
    nqp_get_sc_object $P3424, "1306916536.11825", 1
    .const 'Sub' $P3425 = "53_1306916546.01542" 
    $P3423."add_method"($P3424, "octint", $P3425)
    nqp_get_sc_object $P3426, "1306916536.11825", 1
    get_how $P3427, $P3426
    nqp_get_sc_object $P3428, "1306916536.11825", 1
    .const 'Sub' $P3429 = "54_1306916546.01542" 
    $P3427."add_method"($P3428, "!PREFIX__octint", $P3429)
    nqp_get_sc_object $P3430, "1306916536.11825", 1
    get_how $P3431, $P3430
    nqp_get_sc_object $P3432, "1306916536.11825", 1
    .const 'Sub' $P3433 = "55_1306916546.01542" 
    $P3431."add_method"($P3432, "octints", $P3433)
    nqp_get_sc_object $P3434, "1306916536.11825", 1
    get_how $P3435, $P3434
    nqp_get_sc_object $P3436, "1306916536.11825", 1
    .const 'Sub' $P3437 = "56_1306916546.01542" 
    $P3435."add_method"($P3436, "!PREFIX__octints", $P3437)
    nqp_get_sc_object $P3438, "1306916536.11825", 1
    get_how $P3439, $P3438
    nqp_get_sc_object $P3440, "1306916536.11825", 1
    .const 'Sub' $P3441 = "57_1306916546.01542" 
    $P3439."add_method"($P3440, "binint", $P3441)
    nqp_get_sc_object $P3442, "1306916536.11825", 1
    get_how $P3443, $P3442
    nqp_get_sc_object $P3444, "1306916536.11825", 1
    .const 'Sub' $P3445 = "58_1306916546.01542" 
    $P3443."add_method"($P3444, "!PREFIX__binint", $P3445)
    nqp_get_sc_object $P3446, "1306916536.11825", 1
    get_how $P3447, $P3446
    nqp_get_sc_object $P3448, "1306916536.11825", 1
    .const 'Sub' $P3449 = "59_1306916546.01542" 
    $P3447."add_method"($P3448, "binints", $P3449)
    nqp_get_sc_object $P3450, "1306916536.11825", 1
    get_how $P3451, $P3450
    nqp_get_sc_object $P3452, "1306916536.11825", 1
    .const 'Sub' $P3453 = "60_1306916546.01542" 
    $P3451."add_method"($P3452, "!PREFIX__binints", $P3453)
    nqp_get_sc_object $P3454, "1306916536.11825", 1
    get_how $P3455, $P3454
    nqp_get_sc_object $P3456, "1306916536.11825", 1
    .const 'Sub' $P3457 = "61_1306916546.01542" 
    $P3455."add_method"($P3456, "integer", $P3457)
    nqp_get_sc_object $P3458, "1306916536.11825", 1
    get_how $P3459, $P3458
    nqp_get_sc_object $P3460, "1306916536.11825", 1
    .const 'Sub' $P3461 = "62_1306916546.01542" 
    $P3459."add_method"($P3460, "!PREFIX__integer", $P3461)
    nqp_get_sc_object $P3462, "1306916536.11825", 1
    get_how $P3463, $P3462
    nqp_get_sc_object $P3464, "1306916536.11825", 1
    .const 'Sub' $P3465 = "63_1306916546.01542" 
    $P3463."add_method"($P3464, "dec_number", $P3465)
    nqp_get_sc_object $P3466, "1306916536.11825", 1
    get_how $P3467, $P3466
    nqp_get_sc_object $P3468, "1306916536.11825", 1
    .const 'Sub' $P3469 = "64_1306916546.01542" 
    $P3467."add_method"($P3468, "!PREFIX__dec_number", $P3469)
    nqp_get_sc_object $P3470, "1306916536.11825", 1
    get_how $P3471, $P3470
    nqp_get_sc_object $P3472, "1306916536.11825", 1
    .const 'Sub' $P3473 = "65_1306916546.01542" 
    $P3471."add_method"($P3472, "escale", $P3473)
    nqp_get_sc_object $P3474, "1306916536.11825", 1
    get_how $P3475, $P3474
    nqp_get_sc_object $P3476, "1306916536.11825", 1
    .const 'Sub' $P3477 = "66_1306916546.01542" 
    $P3475."add_method"($P3476, "!PREFIX__escale", $P3477)
    nqp_get_sc_object $P3478, "1306916536.11825", 1
    get_how $P3479, $P3478
    nqp_get_sc_object $P3480, "1306916536.11825", 1
    .const 'Sub' $P3481 = "67_1306916546.01542" 
    $P3479."add_method"($P3480, "quote_escape", $P3481)
    nqp_get_sc_object $P3482, "1306916536.11825", 1
    get_how $P3483, $P3482
    nqp_get_sc_object $P3484, "1306916536.11825", 1
    .const 'Sub' $P3485 = "68_1306916546.01542" 
    $P3483."add_method"($P3484, "!PREFIX__quote_escape", $P3485)
    nqp_get_sc_object $P3486, "1306916536.11825", 1
    get_how $P3487, $P3486
    nqp_get_sc_object $P3488, "1306916536.11825", 1
    .const 'Sub' $P3489 = "69_1306916546.01542" 
    $P3487."add_method"($P3488, "quote_escape:sym<backslash>", $P3489)
    nqp_get_sc_object $P3490, "1306916536.11825", 1
    get_how $P3491, $P3490
    nqp_get_sc_object $P3492, "1306916536.11825", 1
    .const 'Sub' $P3493 = "70_1306916546.01542" 
    $P3491."add_method"($P3492, "!PREFIX__quote_escape:sym<backslash>", $P3493)
    nqp_get_sc_object $P3494, "1306916536.11825", 1
    get_how $P3495, $P3494
    nqp_get_sc_object $P3496, "1306916536.11825", 1
    .const 'Sub' $P3497 = "71_1306916546.01542" 
    $P3495."add_method"($P3496, "quote_escape:sym<stopper>", $P3497)
    nqp_get_sc_object $P3498, "1306916536.11825", 1
    get_how $P3499, $P3498
    nqp_get_sc_object $P3500, "1306916536.11825", 1
    .const 'Sub' $P3501 = "72_1306916546.01542" 
    $P3499."add_method"($P3500, "!PREFIX__quote_escape:sym<stopper>", $P3501)
    nqp_get_sc_object $P3502, "1306916536.11825", 1
    get_how $P3503, $P3502
    nqp_get_sc_object $P3504, "1306916536.11825", 1
    .const 'Sub' $P3505 = "73_1306916546.01542" 
    $P3503."add_method"($P3504, "quote_escape:sym<bs>", $P3505)
    nqp_get_sc_object $P3506, "1306916536.11825", 1
    get_how $P3507, $P3506
    nqp_get_sc_object $P3508, "1306916536.11825", 1
    .const 'Sub' $P3509 = "74_1306916546.01542" 
    $P3507."add_method"($P3508, "!PREFIX__quote_escape:sym<bs>", $P3509)
    nqp_get_sc_object $P3510, "1306916536.11825", 1
    get_how $P3511, $P3510
    nqp_get_sc_object $P3512, "1306916536.11825", 1
    .const 'Sub' $P3513 = "75_1306916546.01542" 
    $P3511."add_method"($P3512, "quote_escape:sym<nl>", $P3513)
    nqp_get_sc_object $P3514, "1306916536.11825", 1
    get_how $P3515, $P3514
    nqp_get_sc_object $P3516, "1306916536.11825", 1
    .const 'Sub' $P3517 = "76_1306916546.01542" 
    $P3515."add_method"($P3516, "!PREFIX__quote_escape:sym<nl>", $P3517)
    nqp_get_sc_object $P3518, "1306916536.11825", 1
    get_how $P3519, $P3518
    nqp_get_sc_object $P3520, "1306916536.11825", 1
    .const 'Sub' $P3521 = "77_1306916546.01542" 
    $P3519."add_method"($P3520, "quote_escape:sym<cr>", $P3521)
    nqp_get_sc_object $P3522, "1306916536.11825", 1
    get_how $P3523, $P3522
    nqp_get_sc_object $P3524, "1306916536.11825", 1
    .const 'Sub' $P3525 = "78_1306916546.01542" 
    $P3523."add_method"($P3524, "!PREFIX__quote_escape:sym<cr>", $P3525)
    nqp_get_sc_object $P3526, "1306916536.11825", 1
    get_how $P3527, $P3526
    nqp_get_sc_object $P3528, "1306916536.11825", 1
    .const 'Sub' $P3529 = "79_1306916546.01542" 
    $P3527."add_method"($P3528, "quote_escape:sym<tab>", $P3529)
    nqp_get_sc_object $P3530, "1306916536.11825", 1
    get_how $P3531, $P3530
    nqp_get_sc_object $P3532, "1306916536.11825", 1
    .const 'Sub' $P3533 = "80_1306916546.01542" 
    $P3531."add_method"($P3532, "!PREFIX__quote_escape:sym<tab>", $P3533)
    nqp_get_sc_object $P3534, "1306916536.11825", 1
    get_how $P3535, $P3534
    nqp_get_sc_object $P3536, "1306916536.11825", 1
    .const 'Sub' $P3537 = "81_1306916546.01542" 
    $P3535."add_method"($P3536, "quote_escape:sym<ff>", $P3537)
    nqp_get_sc_object $P3538, "1306916536.11825", 1
    get_how $P3539, $P3538
    nqp_get_sc_object $P3540, "1306916536.11825", 1
    .const 'Sub' $P3541 = "82_1306916546.01542" 
    $P3539."add_method"($P3540, "!PREFIX__quote_escape:sym<ff>", $P3541)
    nqp_get_sc_object $P3542, "1306916536.11825", 1
    get_how $P3543, $P3542
    nqp_get_sc_object $P3544, "1306916536.11825", 1
    .const 'Sub' $P3545 = "83_1306916546.01542" 
    $P3543."add_method"($P3544, "quote_escape:sym<esc>", $P3545)
    nqp_get_sc_object $P3546, "1306916536.11825", 1
    get_how $P3547, $P3546
    nqp_get_sc_object $P3548, "1306916536.11825", 1
    .const 'Sub' $P3549 = "84_1306916546.01542" 
    $P3547."add_method"($P3548, "!PREFIX__quote_escape:sym<esc>", $P3549)
    nqp_get_sc_object $P3550, "1306916536.11825", 1
    get_how $P3551, $P3550
    nqp_get_sc_object $P3552, "1306916536.11825", 1
    .const 'Sub' $P3553 = "85_1306916546.01542" 
    $P3551."add_method"($P3552, "quote_escape:sym<hex>", $P3553)
    nqp_get_sc_object $P3554, "1306916536.11825", 1
    get_how $P3555, $P3554
    nqp_get_sc_object $P3556, "1306916536.11825", 1
    .const 'Sub' $P3557 = "86_1306916546.01542" 
    $P3555."add_method"($P3556, "!PREFIX__quote_escape:sym<hex>", $P3557)
    nqp_get_sc_object $P3558, "1306916536.11825", 1
    get_how $P3559, $P3558
    nqp_get_sc_object $P3560, "1306916536.11825", 1
    .const 'Sub' $P3561 = "87_1306916546.01542" 
    $P3559."add_method"($P3560, "quote_escape:sym<oct>", $P3561)
    nqp_get_sc_object $P3562, "1306916536.11825", 1
    get_how $P3563, $P3562
    nqp_get_sc_object $P3564, "1306916536.11825", 1
    .const 'Sub' $P3565 = "88_1306916546.01542" 
    $P3563."add_method"($P3564, "!PREFIX__quote_escape:sym<oct>", $P3565)
    nqp_get_sc_object $P3566, "1306916536.11825", 1
    get_how $P3567, $P3566
    nqp_get_sc_object $P3568, "1306916536.11825", 1
    .const 'Sub' $P3569 = "89_1306916546.01542" 
    $P3567."add_method"($P3568, "quote_escape:sym<chr>", $P3569)
    nqp_get_sc_object $P3570, "1306916536.11825", 1
    get_how $P3571, $P3570
    nqp_get_sc_object $P3572, "1306916536.11825", 1
    .const 'Sub' $P3573 = "90_1306916546.01542" 
    $P3571."add_method"($P3572, "!PREFIX__quote_escape:sym<chr>", $P3573)
    nqp_get_sc_object $P3574, "1306916536.11825", 1
    get_how $P3575, $P3574
    nqp_get_sc_object $P3576, "1306916536.11825", 1
    .const 'Sub' $P3577 = "91_1306916546.01542" 
    $P3575."add_method"($P3576, "quote_escape:sym<0>", $P3577)
    nqp_get_sc_object $P3578, "1306916536.11825", 1
    get_how $P3579, $P3578
    nqp_get_sc_object $P3580, "1306916536.11825", 1
    .const 'Sub' $P3581 = "92_1306916546.01542" 
    $P3579."add_method"($P3580, "!PREFIX__quote_escape:sym<0>", $P3581)
    nqp_get_sc_object $P3582, "1306916536.11825", 1
    get_how $P3583, $P3582
    nqp_get_sc_object $P3584, "1306916536.11825", 1
    .const 'Sub' $P3585 = "93_1306916546.01542" 
    $P3583."add_method"($P3584, "quote_escape:sym<misc>", $P3585)
    nqp_get_sc_object $P3586, "1306916536.11825", 1
    get_how $P3587, $P3586
    nqp_get_sc_object $P3588, "1306916536.11825", 1
    .const 'Sub' $P3589 = "97_1306916546.01542" 
    $P3587."add_method"($P3588, "!PREFIX__quote_escape:sym<misc>", $P3589)
    nqp_get_sc_object $P3590, "1306916536.11825", 1
    get_how $P3591, $P3590
    nqp_get_sc_object $P3592, "1306916536.11825", 1
    .const 'Sub' $P3593 = "98_1306916546.01542" 
    $P3591."add_method"($P3592, "charname", $P3593)
    nqp_get_sc_object $P3594, "1306916536.11825", 1
    get_how $P3595, $P3594
    nqp_get_sc_object $P3596, "1306916536.11825", 1
    .const 'Sub' $P3597 = "100_1306916546.01542" 
    $P3595."add_method"($P3596, "!PREFIX__charname", $P3597)
    nqp_get_sc_object $P3598, "1306916536.11825", 1
    get_how $P3599, $P3598
    nqp_get_sc_object $P3600, "1306916536.11825", 1
    .const 'Sub' $P3601 = "101_1306916546.01542" 
    $P3599."add_method"($P3600, "charnames", $P3601)
    nqp_get_sc_object $P3602, "1306916536.11825", 1
    get_how $P3603, $P3602
    nqp_get_sc_object $P3604, "1306916536.11825", 1
    .const 'Sub' $P3605 = "102_1306916546.01542" 
    $P3603."add_method"($P3604, "!PREFIX__charnames", $P3605)
    nqp_get_sc_object $P3606, "1306916536.11825", 1
    get_how $P3607, $P3606
    nqp_get_sc_object $P3608, "1306916536.11825", 1
    .const 'Sub' $P3609 = "103_1306916546.01542" 
    $P3607."add_method"($P3608, "charspec", $P3609)
    nqp_get_sc_object $P3610, "1306916536.11825", 1
    get_how $P3611, $P3610
    nqp_get_sc_object $P3612, "1306916536.11825", 1
    .const 'Sub' $P3613 = "104_1306916546.01542" 
    $P3611."add_method"($P3612, "!PREFIX__charspec", $P3613)
    nqp_get_sc_object $P3614, "1306916536.11825", 1
    get_how $P3615, $P3614
    nqp_get_sc_object $P3616, "1306916536.11825", 1
    .const 'Sub' $P3617 = "105_1306916546.01542" 
    $P3615."add_method"($P3616, "O", $P3617)
    nqp_get_sc_object $P3618, "1306916536.11825", 1
    get_how $P3619, $P3618
    nqp_get_sc_object $P3620, "1306916536.11825", 1
    .const 'Sub' $P3621 = "106_1306916546.01542" 
    $P3619."add_method"($P3620, "panic", $P3621)
    nqp_get_sc_object $P3622, "1306916536.11825", 1
    get_how $P3623, $P3622
    nqp_get_sc_object $P3624, "1306916536.11825", 1
    .const 'Sub' $P3625 = "107_1306916546.01542" 
    $P3623."add_method"($P3624, "peek_delimiters", $P3625)
    nqp_get_sc_object $P3626, "1306916536.11825", 1
    get_how $P3627, $P3626
    nqp_get_sc_object $P3628, "1306916536.11825", 1
    .const 'Sub' $P3629 = "108_1306916546.01542" 
    $P3627."add_method"($P3628, "quote_EXPR", $P3629)
    nqp_get_sc_object $P3630, "1306916536.11825", 1
    get_how $P3631, $P3630
    nqp_get_sc_object $P3632, "1306916536.11825", 1
    .const 'Sub' $P3633 = "109_1306916546.01542" 
    $P3631."add_method"($P3632, "quotemod_check", $P3633)
    .const 'Sub' $P3634 = "109_1306916546.01542" 
    nqp_get_sc_object $P3635, "1306916536.11825", 1
    get_who $P3636, $P3635
    set $P3636["quotemod_check"], $P3634
    nqp_get_sc_object $P3637, "1306916536.11825", 1
    get_how $P3638, $P3637
    nqp_get_sc_object $P3639, "1306916536.11825", 1
    .const 'Sub' $P3640 = "110_1306916546.01542" 
    $P3638."add_method"($P3639, "starter", $P3640)
    nqp_get_sc_object $P3641, "1306916536.11825", 1
    get_how $P3642, $P3641
    nqp_get_sc_object $P3643, "1306916536.11825", 1
    .const 'Sub' $P3644 = "111_1306916546.01542" 
    $P3642."add_method"($P3643, "stopper", $P3644)
    nqp_get_sc_object $P3645, "1306916536.11825", 1
    get_how $P3646, $P3645
    nqp_get_sc_object $P3647, "1306916536.11825", 1
    .const 'Sub' $P3648 = "112_1306916546.01542" 
    $P3646."add_method"($P3647, "split_words", $P3648)
    .const 'Sub' $P3649 = "112_1306916546.01542" 
    nqp_get_sc_object $P3650, "1306916536.11825", 1
    get_who $P3651, $P3650
    set $P3651["split_words"], $P3649
    nqp_get_sc_object $P3652, "1306916536.11825", 1
    get_how $P3653, $P3652
    nqp_get_sc_object $P3654, "1306916536.11825", 1
    .const 'Sub' $P3655 = "113_1306916546.01542" 
    $P3653."add_method"($P3654, "EXPR", $P3655)
    nqp_get_sc_object $P3656, "1306916536.11825", 1
    get_how $P3657, $P3656
    nqp_get_sc_object $P3658, "1306916536.11825", 1
    .const 'Sub' $P3659 = "114_1306916546.01542" 
    $P3657."add_method"($P3658, "EXPR_reduce", $P3659)
    nqp_get_sc_object $P3660, "1306916536.11825", 1
    get_how $P3661, $P3660
    nqp_get_sc_object $P3662, "1306916536.11825", 1
    .const 'Sub' $P3663 = "115_1306916546.01542" 
    $P3661."add_method"($P3662, "ternary", $P3663)
    nqp_get_sc_object $P3664, "1306916536.11825", 1
    get_how $P3665, $P3664
    nqp_get_sc_object $P3666, "1306916536.11825", 1
    .const 'Sub' $P3667 = "116_1306916546.01542" 
    $P3665."add_method"($P3666, "MARKER", $P3667)
    nqp_get_sc_object $P3668, "1306916536.11825", 1
    get_how $P3669, $P3668
    nqp_get_sc_object $P3670, "1306916536.11825", 1
    .const 'Sub' $P3671 = "117_1306916546.01542" 
    $P3669."add_method"($P3670, "MARKED", $P3671)
    nqp_get_sc_object $P3672, "1306916536.11825", 1
    get_how $P3673, $P3672
    nqp_get_sc_object $P3674, "1306916536.11825", 1
    .const 'Sub' $P3675 = "118_1306916546.01542" 
    $P3673."add_method"($P3674, "LANG", $P3675)
    .const 'Sub' $P3676 = "11_1306916546.01542" 
    $P3677 = $P3676."get_lexinfo"()
    nqp_get_sc_object $P3678, "1306916536.11825", 1
    $P3677."set_static_lexpad_value"("$?PACKAGE", $P3678)
    .const 'Sub' $P3679 = "11_1306916546.01542" 
    $P3680 = $P3679."get_lexinfo"()
    $P3680."finish_static_lexpad"()
    .const 'Sub' $P3681 = "11_1306916546.01542" 
    $P3682 = $P3681."get_lexinfo"()
    nqp_get_sc_object $P3683, "1306916536.11825", 1
    $P3682."set_static_lexpad_value"("$?CLASS", $P3683)
    .const 'Sub' $P3684 = "11_1306916546.01542" 
    $P3685 = $P3684."get_lexinfo"()
    $P3685."finish_static_lexpad"()
    nqp_get_sc_object $P3686, "1306916536.11825", 1
    get_how $P3687, $P3686
    nqp_get_sc_object $P3688, "1306916536.11825", 1
    nqp_get_sc_object $P3689, "__REGEX_CORE_SC__", 0
    $P3687."set_default_parent"($P3688, $P3689)
    nqp_get_sc_object $P3690, "1306916536.11825", 1
    get_how $P3691, $P3690
    nqp_get_sc_object $P3692, "1306916536.11825", 1
    $P3691."compose"($P3692)
    nqp_get_sc_object $P3693, "1306916525.99765", 41
    $P3694 = $P3693."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3694, cur_sc
    nqp_set_sc_object "1306916536.11825", 105, $P3694
    nqp_get_sc_object $P3695, "1306916536.11825", 105
    nqp_get_sc_object $P3696, "1306916536.11825", 0
    nqp_get_package_through_who $P3697, $P3696, "HLL"
    get_who $P3698, $P3697
    set $P3698["Actions"], $P3695
    .const 'Sub' $P3699 = "120_1306916546.01542" 
    nqp_get_sc_object $P3700, "1306916536.11825", 105
    get_who $P3701, $P3700
    set $P3701["string_to_int"], $P3699
    .const 'Sub' $P3702 = "122_1306916546.01542" 
    nqp_get_sc_object $P3703, "1306916536.11825", 105
    get_who $P3704, $P3703
    set $P3704["ints_to_string"], $P3702
    nqp_get_sc_object $P3705, "1306916536.11825", 105
    get_how $P3706, $P3705
    nqp_get_sc_object $P3707, "1306916536.11825", 105
    .const 'Sub' $P3708 = "125_1306916546.01542" 
    $P3706."add_method"($P3707, "CTXSAVE", $P3708)
    nqp_get_sc_object $P3709, "1306916536.11825", 105
    get_how $P3710, $P3709
    nqp_get_sc_object $P3711, "1306916536.11825", 105
    .const 'Sub' $P3712 = "126_1306916546.01542" 
    $P3710."add_method"($P3711, "SET_BLOCK_OUTER_CTX", $P3712)
    nqp_get_sc_object $P3713, "1306916536.11825", 105
    get_how $P3714, $P3713
    nqp_get_sc_object $P3715, "1306916536.11825", 105
    .const 'Sub' $P3716 = "129_1306916546.01542" 
    $P3714."add_method"($P3715, "EXPR", $P3716)
    nqp_get_sc_object $P3717, "1306916536.11825", 105
    get_how $P3718, $P3717
    nqp_get_sc_object $P3719, "1306916536.11825", 105
    .const 'Sub' $P3720 = "132_1306916546.01542" 
    $P3718."add_method"($P3719, "term:sym<circumfix>", $P3720)
    nqp_get_sc_object $P3721, "1306916536.11825", 105
    get_how $P3722, $P3721
    nqp_get_sc_object $P3723, "1306916536.11825", 105
    .const 'Sub' $P3724 = "133_1306916546.01542" 
    $P3722."add_method"($P3723, "termish", $P3724)
    nqp_get_sc_object $P3725, "1306916536.11825", 105
    get_how $P3726, $P3725
    nqp_get_sc_object $P3727, "1306916536.11825", 105
    .const 'Sub' $P3728 = "134_1306916546.01542" 
    $P3726."add_method"($P3727, "nullterm", $P3728)
    nqp_get_sc_object $P3729, "1306916536.11825", 105
    get_how $P3730, $P3729
    nqp_get_sc_object $P3731, "1306916536.11825", 105
    .const 'Sub' $P3732 = "135_1306916546.01542" 
    $P3730."add_method"($P3731, "nullterm_alt", $P3732)
    nqp_get_sc_object $P3733, "1306916536.11825", 105
    get_how $P3734, $P3733
    nqp_get_sc_object $P3735, "1306916536.11825", 105
    .const 'Sub' $P3736 = "136_1306916546.01542" 
    $P3734."add_method"($P3735, "integer", $P3736)
    nqp_get_sc_object $P3737, "1306916536.11825", 105
    get_how $P3738, $P3737
    nqp_get_sc_object $P3739, "1306916536.11825", 105
    .const 'Sub' $P3740 = "137_1306916546.01542" 
    $P3738."add_method"($P3739, "dec_number", $P3740)
    nqp_get_sc_object $P3741, "1306916536.11825", 105
    get_how $P3742, $P3741
    nqp_get_sc_object $P3743, "1306916536.11825", 105
    .const 'Sub' $P3744 = "138_1306916546.01542" 
    $P3742."add_method"($P3743, "decint", $P3744)
    nqp_get_sc_object $P3745, "1306916536.11825", 105
    get_how $P3746, $P3745
    nqp_get_sc_object $P3747, "1306916536.11825", 105
    .const 'Sub' $P3748 = "139_1306916546.01542" 
    $P3746."add_method"($P3747, "hexint", $P3748)
    nqp_get_sc_object $P3749, "1306916536.11825", 105
    get_how $P3750, $P3749
    nqp_get_sc_object $P3751, "1306916536.11825", 105
    .const 'Sub' $P3752 = "140_1306916546.01542" 
    $P3750."add_method"($P3751, "octint", $P3752)
    nqp_get_sc_object $P3753, "1306916536.11825", 105
    get_how $P3754, $P3753
    nqp_get_sc_object $P3755, "1306916536.11825", 105
    .const 'Sub' $P3756 = "141_1306916546.01542" 
    $P3754."add_method"($P3755, "binint", $P3756)
    nqp_get_sc_object $P3757, "1306916536.11825", 105
    get_how $P3758, $P3757
    nqp_get_sc_object $P3759, "1306916536.11825", 105
    .const 'Sub' $P3760 = "142_1306916546.01542" 
    $P3758."add_method"($P3759, "quote_EXPR", $P3760)
    nqp_get_sc_object $P3761, "1306916536.11825", 105
    get_how $P3762, $P3761
    nqp_get_sc_object $P3763, "1306916536.11825", 105
    .const 'Sub' $P3764 = "145_1306916546.01542" 
    $P3762."add_method"($P3763, "quote_delimited", $P3764)
    nqp_get_sc_object $P3765, "1306916536.11825", 105
    get_how $P3766, $P3765
    nqp_get_sc_object $P3767, "1306916536.11825", 105
    .const 'Sub' $P3768 = "147_1306916546.01542" 
    $P3766."add_method"($P3767, "quote_atom", $P3768)
    nqp_get_sc_object $P3769, "1306916536.11825", 105
    get_how $P3770, $P3769
    nqp_get_sc_object $P3771, "1306916536.11825", 105
    .const 'Sub' $P3772 = "148_1306916546.01542" 
    $P3770."add_method"($P3771, "quote_escape:sym<backslash>", $P3772)
    nqp_get_sc_object $P3773, "1306916536.11825", 105
    get_how $P3774, $P3773
    nqp_get_sc_object $P3775, "1306916536.11825", 105
    .const 'Sub' $P3776 = "149_1306916546.01542" 
    $P3774."add_method"($P3775, "quote_escape:sym<stopper>", $P3776)
    nqp_get_sc_object $P3777, "1306916536.11825", 105
    get_how $P3778, $P3777
    nqp_get_sc_object $P3779, "1306916536.11825", 105
    .const 'Sub' $P3780 = "150_1306916546.01542" 
    $P3778."add_method"($P3779, "quote_escape:sym<bs>", $P3780)
    nqp_get_sc_object $P3781, "1306916536.11825", 105
    get_how $P3782, $P3781
    nqp_get_sc_object $P3783, "1306916536.11825", 105
    .const 'Sub' $P3784 = "151_1306916546.01542" 
    $P3782."add_method"($P3783, "quote_escape:sym<nl>", $P3784)
    nqp_get_sc_object $P3785, "1306916536.11825", 105
    get_how $P3786, $P3785
    nqp_get_sc_object $P3787, "1306916536.11825", 105
    .const 'Sub' $P3788 = "152_1306916546.01542" 
    $P3786."add_method"($P3787, "quote_escape:sym<cr>", $P3788)
    nqp_get_sc_object $P3789, "1306916536.11825", 105
    get_how $P3790, $P3789
    nqp_get_sc_object $P3791, "1306916536.11825", 105
    .const 'Sub' $P3792 = "153_1306916546.01542" 
    $P3790."add_method"($P3791, "quote_escape:sym<tab>", $P3792)
    nqp_get_sc_object $P3793, "1306916536.11825", 105
    get_how $P3794, $P3793
    nqp_get_sc_object $P3795, "1306916536.11825", 105
    .const 'Sub' $P3796 = "154_1306916546.01542" 
    $P3794."add_method"($P3795, "quote_escape:sym<ff>", $P3796)
    nqp_get_sc_object $P3797, "1306916536.11825", 105
    get_how $P3798, $P3797
    nqp_get_sc_object $P3799, "1306916536.11825", 105
    .const 'Sub' $P3800 = "155_1306916546.01542" 
    $P3798."add_method"($P3799, "quote_escape:sym<esc>", $P3800)
    nqp_get_sc_object $P3801, "1306916536.11825", 105
    get_how $P3802, $P3801
    nqp_get_sc_object $P3803, "1306916536.11825", 105
    .const 'Sub' $P3804 = "156_1306916546.01542" 
    $P3802."add_method"($P3803, "quote_escape:sym<hex>", $P3804)
    nqp_get_sc_object $P3805, "1306916536.11825", 105
    get_how $P3806, $P3805
    nqp_get_sc_object $P3807, "1306916536.11825", 105
    .const 'Sub' $P3808 = "157_1306916546.01542" 
    $P3806."add_method"($P3807, "quote_escape:sym<oct>", $P3808)
    nqp_get_sc_object $P3809, "1306916536.11825", 105
    get_how $P3810, $P3809
    nqp_get_sc_object $P3811, "1306916536.11825", 105
    .const 'Sub' $P3812 = "158_1306916546.01542" 
    $P3810."add_method"($P3811, "quote_escape:sym<chr>", $P3812)
    nqp_get_sc_object $P3813, "1306916536.11825", 105
    get_how $P3814, $P3813
    nqp_get_sc_object $P3815, "1306916536.11825", 105
    .const 'Sub' $P3816 = "159_1306916546.01542" 
    $P3814."add_method"($P3815, "quote_escape:sym<0>", $P3816)
    nqp_get_sc_object $P3817, "1306916536.11825", 105
    get_how $P3818, $P3817
    nqp_get_sc_object $P3819, "1306916536.11825", 105
    .const 'Sub' $P3820 = "160_1306916546.01542" 
    $P3818."add_method"($P3819, "quote_escape:sym<misc>", $P3820)
    nqp_get_sc_object $P3821, "1306916536.11825", 105
    get_how $P3822, $P3821
    nqp_get_sc_object $P3823, "1306916536.11825", 105
    .const 'Sub' $P3824 = "161_1306916546.01542" 
    $P3822."add_method"($P3823, "charname", $P3824)
    nqp_get_sc_object $P3825, "1306916536.11825", 105
    get_how $P3826, $P3825
    nqp_get_sc_object $P3827, "1306916536.11825", 105
    .const 'Sub' $P3828 = "162_1306916546.01542" 
    $P3826."add_method"($P3827, "charnames", $P3828)
    nqp_get_sc_object $P3829, "1306916536.11825", 105
    get_how $P3830, $P3829
    nqp_get_sc_object $P3831, "1306916536.11825", 105
    .const 'Sub' $P3832 = "164_1306916546.01542" 
    $P3830."add_method"($P3831, "charspec", $P3832)
    .const 'Sub' $P3833 = "119_1306916546.01542" 
    $P3834 = $P3833."get_lexinfo"()
    nqp_get_sc_object $P3835, "1306916536.11825", 105
    $P3834."set_static_lexpad_value"("$?PACKAGE", $P3835)
    .const 'Sub' $P3836 = "119_1306916546.01542" 
    $P3837 = $P3836."get_lexinfo"()
    $P3837."finish_static_lexpad"()
    .const 'Sub' $P3838 = "119_1306916546.01542" 
    $P3839 = $P3838."get_lexinfo"()
    nqp_get_sc_object $P3840, "1306916536.11825", 105
    $P3839."set_static_lexpad_value"("$?CLASS", $P3840)
    .const 'Sub' $P3841 = "119_1306916546.01542" 
    $P3842 = $P3841."get_lexinfo"()
    $P3842."finish_static_lexpad"()
    nqp_get_sc_object $P3843, "1306916536.11825", 105
    get_how $P3844, $P3843
    nqp_get_sc_object $P3845, "1306916536.11825", 105
    nqp_get_sc_object $P3846, "1306916534.07562", 5
    $P3844."set_default_parent"($P3845, $P3846)
    nqp_get_sc_object $P3847, "1306916536.11825", 105
    get_how $P3848, $P3847
    nqp_get_sc_object $P3849, "1306916536.11825", 105
    $P3848."compose"($P3849)
    nqp_get_sc_object $P3850, "1306916525.99765", 41
    $P3851 = $P3850."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3851, cur_sc
    nqp_set_sc_object "1306916536.11825", 138, $P3851
    nqp_get_sc_object $P3852, "1306916536.11825", 138
    nqp_get_sc_object $P3853, "1306916536.11825", 0
    nqp_get_package_through_who $P3854, $P3853, "HLL"
    get_who $P3855, $P3854
    set $P3855["Compiler"], $P3852
    nqp_get_sc_object $P3856, "1306916536.11825", 138
    get_how $P3857, $P3856
    nqp_get_sc_object $P3858, "1306916536.11825", 138
    nqp_get_sc_object $P3859, "1306916525.99765", 80
    $P3860 = $P3859."new"("@!stages" :named("name"))
    $P3857."add_attribute"($P3858, $P3860)
    nqp_get_sc_object $P3861, "1306916536.11825", 138
    get_how $P3862, $P3861
    nqp_get_sc_object $P3863, "1306916536.11825", 138
    nqp_get_sc_object $P3864, "1306916525.99765", 80
    $P3865 = $P3864."new"("$!parsegrammar" :named("name"))
    $P3862."add_attribute"($P3863, $P3865)
    nqp_get_sc_object $P3866, "1306916536.11825", 138
    get_how $P3867, $P3866
    nqp_get_sc_object $P3868, "1306916536.11825", 138
    nqp_get_sc_object $P3869, "1306916525.99765", 80
    $P3870 = $P3869."new"("$!parseactions" :named("name"))
    $P3867."add_attribute"($P3868, $P3870)
    nqp_get_sc_object $P3871, "1306916536.11825", 138
    get_how $P3872, $P3871
    nqp_get_sc_object $P3873, "1306916536.11825", 138
    nqp_get_sc_object $P3874, "1306916525.99765", 80
    $P3875 = $P3874."new"("$!astgrammar" :named("name"))
    $P3872."add_attribute"($P3873, $P3875)
    nqp_get_sc_object $P3876, "1306916536.11825", 138
    get_how $P3877, $P3876
    nqp_get_sc_object $P3878, "1306916536.11825", 138
    nqp_get_sc_object $P3879, "1306916525.99765", 80
    $P3880 = $P3879."new"("$!commandline_banner" :named("name"))
    $P3877."add_attribute"($P3878, $P3880)
    nqp_get_sc_object $P3881, "1306916536.11825", 138
    get_how $P3882, $P3881
    nqp_get_sc_object $P3883, "1306916536.11825", 138
    nqp_get_sc_object $P3884, "1306916525.99765", 80
    $P3885 = $P3884."new"("$!commandline_prompt" :named("name"))
    $P3882."add_attribute"($P3883, $P3885)
    nqp_get_sc_object $P3886, "1306916536.11825", 138
    get_how $P3887, $P3886
    nqp_get_sc_object $P3888, "1306916536.11825", 138
    nqp_get_sc_object $P3889, "1306916525.99765", 80
    $P3890 = $P3889."new"("@!cmdoptions" :named("name"))
    $P3887."add_attribute"($P3888, $P3890)
    nqp_get_sc_object $P3891, "1306916536.11825", 138
    get_how $P3892, $P3891
    nqp_get_sc_object $P3893, "1306916536.11825", 138
    nqp_get_sc_object $P3894, "1306916525.99765", 80
    $P3895 = $P3894."new"("$!usage" :named("name"))
    $P3892."add_attribute"($P3893, $P3895)
    nqp_get_sc_object $P3896, "1306916536.11825", 138
    get_how $P3897, $P3896
    nqp_get_sc_object $P3898, "1306916536.11825", 138
    nqp_get_sc_object $P3899, "1306916525.99765", 80
    $P3900 = $P3899."new"("$!compiler_progname" :named("name"))
    $P3897."add_attribute"($P3898, $P3900)
    nqp_get_sc_object $P3901, "1306916536.11825", 138
    get_how $P3902, $P3901
    nqp_get_sc_object $P3903, "1306916536.11825", 138
    nqp_get_sc_object $P3904, "1306916525.99765", 80
    $P3905 = $P3904."new"("$!language" :named("name"))
    $P3902."add_attribute"($P3903, $P3905)
    nqp_get_sc_object $P3906, "1306916536.11825", 138
    get_how $P3907, $P3906
    nqp_get_sc_object $P3908, "1306916536.11825", 138
    nqp_get_sc_object $P3909, "1306916525.99765", 80
    $P3910 = $P3909."new"("%!config" :named("name"))
    $P3907."add_attribute"($P3908, $P3910)
    nqp_get_sc_object $P3911, "1306916536.11825", 138
    get_how $P3912, $P3911
    nqp_get_sc_object $P3913, "1306916536.11825", 138
    .const 'Sub' $P3914 = "168_1306916546.01542" 
    $P3912."add_method"($P3913, "new", $P3914)
    nqp_get_sc_object $P3915, "1306916536.11825", 138
    get_how $P3916, $P3915
    nqp_get_sc_object $P3917, "1306916536.11825", 138
    .const 'Sub' $P3918 = "169_1306916546.01542" 
    $P3916."add_method"($P3917, "BUILD", $P3918)
    nqp_get_sc_object $P3919, "1306916536.11825", 138
    get_how $P3920, $P3919
    nqp_get_sc_object $P3921, "1306916536.11825", 138
    .const 'Sub' $P3922 = "171_1306916546.01542" 
    $P3920."add_method"($P3921, "get_exports", $P3922)
    nqp_get_sc_object $P3923, "1306916536.11825", 138
    get_how $P3924, $P3923
    nqp_get_sc_object $P3925, "1306916536.11825", 138
    .const 'Sub' $P3926 = "174_1306916546.01542" 
    $P3924."add_method"($P3925, "get_module", $P3926)
    nqp_get_sc_object $P3927, "1306916536.11825", 138
    get_how $P3928, $P3927
    nqp_get_sc_object $P3929, "1306916536.11825", 138
    .const 'Sub' $P3930 = "175_1306916546.01542" 
    $P3928."add_method"($P3929, "language", $P3930)
    nqp_get_sc_object $P3931, "1306916536.11825", 138
    get_how $P3932, $P3931
    nqp_get_sc_object $P3933, "1306916536.11825", 138
    .const 'Sub' $P3934 = "176_1306916546.01542" 
    $P3932."add_method"($P3933, "compiler", $P3934)
    nqp_get_sc_object $P3935, "1306916536.11825", 138
    get_how $P3936, $P3935
    nqp_get_sc_object $P3937, "1306916536.11825", 138
    .const 'Sub' $P3938 = "177_1306916546.01542" 
    $P3936."add_method"($P3937, "config", $P3938)
    nqp_get_sc_object $P3939, "1306916536.11825", 138
    get_how $P3940, $P3939
    nqp_get_sc_object $P3941, "1306916536.11825", 138
    .const 'Sub' $P3942 = "178_1306916546.01542" 
    $P3940."add_method"($P3941, "load_module", $P3942)
    nqp_get_sc_object $P3943, "1306916536.11825", 138
    get_how $P3944, $P3943
    nqp_get_sc_object $P3945, "1306916536.11825", 138
    .const 'Sub' $P3946 = "180_1306916546.01542" 
    $P3944."add_method"($P3945, "import", $P3946)
    nqp_get_sc_object $P3947, "1306916536.11825", 138
    get_how $P3948, $P3947
    nqp_get_sc_object $P3949, "1306916536.11825", 138
    .const 'Sub' $P3950 = "185_1306916546.01542" 
    $P3948."add_method"($P3949, "autoprint", $P3950)
    nqp_get_sc_object $P3951, "1306916536.11825", 138
    get_how $P3952, $P3951
    nqp_get_sc_object $P3953, "1306916536.11825", 138
    .const 'Sub' $P3954 = "186_1306916546.01542" 
    $P3952."add_method"($P3953, "interactive", $P3954)
    nqp_get_sc_object $P3955, "1306916536.11825", 138
    get_how $P3956, $P3955
    nqp_get_sc_object $P3957, "1306916536.11825", 138
    .const 'Sub' $P3958 = "193_1306916546.01542" 
    $P3956."add_method"($P3957, "eval", $P3958)
    nqp_get_sc_object $P3959, "1306916536.11825", 138
    get_how $P3960, $P3959
    nqp_get_sc_object $P3961, "1306916536.11825", 138
    .const 'Sub' $P3962 = "195_1306916546.01542" 
    $P3960."add_method"($P3961, "ctxsave", $P3962)
    nqp_get_sc_object $P3963, "1306916536.11825", 138
    get_how $P3964, $P3963
    nqp_get_sc_object $P3965, "1306916536.11825", 138
    .const 'Sub' $P3966 = "196_1306916546.01542" 
    $P3964."add_method"($P3965, "panic", $P3966)
    nqp_get_sc_object $P3967, "1306916536.11825", 138
    get_how $P3968, $P3967
    nqp_get_sc_object $P3969, "1306916536.11825", 138
    .const 'Sub' $P3970 = "197_1306916546.01542" 
    $P3968."add_method"($P3969, "stages", $P3970)
    nqp_get_sc_object $P3971, "1306916536.11825", 138
    get_how $P3972, $P3971
    nqp_get_sc_object $P3973, "1306916536.11825", 138
    .const 'Sub' $P3974 = "198_1306916546.01542" 
    $P3972."add_method"($P3973, "parsegrammar", $P3974)
    nqp_get_sc_object $P3975, "1306916536.11825", 138
    get_how $P3976, $P3975
    nqp_get_sc_object $P3977, "1306916536.11825", 138
    .const 'Sub' $P3978 = "199_1306916546.01542" 
    $P3976."add_method"($P3977, "parseactions", $P3978)
    nqp_get_sc_object $P3979, "1306916536.11825", 138
    get_how $P3980, $P3979
    nqp_get_sc_object $P3981, "1306916536.11825", 138
    .const 'Sub' $P3982 = "200_1306916546.01542" 
    $P3980."add_method"($P3981, "astgrammar", $P3982)
    nqp_get_sc_object $P3983, "1306916536.11825", 138
    get_how $P3984, $P3983
    nqp_get_sc_object $P3985, "1306916536.11825", 138
    .const 'Sub' $P3986 = "201_1306916546.01542" 
    $P3984."add_method"($P3985, "commandline_banner", $P3986)
    nqp_get_sc_object $P3987, "1306916536.11825", 138
    get_how $P3988, $P3987
    nqp_get_sc_object $P3989, "1306916536.11825", 138
    .const 'Sub' $P3990 = "202_1306916546.01542" 
    $P3988."add_method"($P3989, "commandline_prompt", $P3990)
    nqp_get_sc_object $P3991, "1306916536.11825", 138
    get_how $P3992, $P3991
    nqp_get_sc_object $P3993, "1306916536.11825", 138
    .const 'Sub' $P3994 = "203_1306916546.01542" 
    $P3992."add_method"($P3993, "compiler_progname", $P3994)
    nqp_get_sc_object $P3995, "1306916536.11825", 138
    get_how $P3996, $P3995
    nqp_get_sc_object $P3997, "1306916536.11825", 138
    .const 'Sub' $P3998 = "204_1306916546.01542" 
    $P3996."add_method"($P3997, "commandline_options", $P3998)
    nqp_get_sc_object $P3999, "1306916536.11825", 138
    get_how $P4000, $P3999
    nqp_get_sc_object $P4001, "1306916536.11825", 138
    .const 'Sub' $P4002 = "205_1306916546.01542" 
    $P4000."add_method"($P4001, "command_line", $P4002)
    nqp_get_sc_object $P4003, "1306916536.11825", 138
    get_how $P4004, $P4003
    nqp_get_sc_object $P4005, "1306916536.11825", 138
    .const 'Sub' $P4006 = "207_1306916546.01542" 
    $P4004."add_method"($P4005, "process_args", $P4006)
    nqp_get_sc_object $P4007, "1306916536.11825", 138
    get_how $P4008, $P4007
    nqp_get_sc_object $P4009, "1306916536.11825", 138
    .const 'Sub' $P4010 = "210_1306916546.01542" 
    $P4008."add_method"($P4009, "evalfiles", $P4010)
    nqp_get_sc_object $P4011, "1306916536.11825", 138
    get_how $P4012, $P4011
    nqp_get_sc_object $P4013, "1306916536.11825", 138
    .const 'Sub' $P4014 = "214_1306916546.01542" 
    $P4012."add_method"($P4013, "compile", $P4014)
    nqp_get_sc_object $P4015, "1306916536.11825", 138
    get_how $P4016, $P4015
    nqp_get_sc_object $P4017, "1306916536.11825", 138
    .const 'Sub' $P4018 = "216_1306916546.01542" 
    $P4016."add_method"($P4017, "parse", $P4018)
    nqp_get_sc_object $P4019, "1306916536.11825", 138
    get_how $P4020, $P4019
    nqp_get_sc_object $P4021, "1306916536.11825", 138
    .const 'Sub' $P4022 = "219_1306916546.01542" 
    $P4020."add_method"($P4021, "past", $P4022)
    nqp_get_sc_object $P4023, "1306916536.11825", 138
    get_how $P4024, $P4023
    nqp_get_sc_object $P4025, "1306916536.11825", 138
    .const 'Sub' $P4026 = "220_1306916546.01542" 
    $P4024."add_method"($P4025, "post", $P4026)
    nqp_get_sc_object $P4027, "1306916536.11825", 138
    get_how $P4028, $P4027
    nqp_get_sc_object $P4029, "1306916536.11825", 138
    .const 'Sub' $P4030 = "221_1306916546.01542" 
    $P4028."add_method"($P4029, "pir", $P4030)
    nqp_get_sc_object $P4031, "1306916536.11825", 138
    get_how $P4032, $P4031
    nqp_get_sc_object $P4033, "1306916536.11825", 138
    .const 'Sub' $P4034 = "222_1306916546.01542" 
    $P4032."add_method"($P4033, "evalpmc", $P4034)
    nqp_get_sc_object $P4035, "1306916536.11825", 138
    get_how $P4036, $P4035
    nqp_get_sc_object $P4037, "1306916536.11825", 138
    .const 'Sub' $P4038 = "223_1306916546.01542" 
    $P4036."add_method"($P4037, "dumper", $P4038)
    nqp_get_sc_object $P4039, "1306916536.11825", 138
    get_how $P4040, $P4039
    nqp_get_sc_object $P4041, "1306916536.11825", 138
    .const 'Sub' $P4042 = "225_1306916546.01542" 
    $P4040."add_method"($P4041, "usage", $P4042)
    nqp_get_sc_object $P4043, "1306916536.11825", 138
    get_how $P4044, $P4043
    nqp_get_sc_object $P4045, "1306916536.11825", 138
    .const 'Sub' $P4046 = "226_1306916546.01542" 
    $P4044."add_method"($P4045, "version", $P4046)
    nqp_get_sc_object $P4047, "1306916536.11825", 138
    get_how $P4048, $P4047
    nqp_get_sc_object $P4049, "1306916536.11825", 138
    .const 'Sub' $P4050 = "227_1306916546.01542" 
    $P4048."add_method"($P4049, "show-config", $P4050)
    nqp_get_sc_object $P4051, "1306916536.11825", 138
    get_how $P4052, $P4051
    nqp_get_sc_object $P4053, "1306916536.11825", 138
    .const 'Sub' $P4054 = "230_1306916546.01542" 
    $P4052."add_method"($P4053, "removestage", $P4054)
    nqp_get_sc_object $P4055, "1306916536.11825", 138
    get_how $P4056, $P4055
    nqp_get_sc_object $P4057, "1306916536.11825", 138
    .const 'Sub' $P4058 = "232_1306916546.01542" 
    $P4056."add_method"($P4057, "addstage", $P4058)
    nqp_get_sc_object $P4059, "1306916536.11825", 138
    get_how $P4060, $P4059
    nqp_get_sc_object $P4061, "1306916536.11825", 138
    .const 'Sub' $P4062 = "235_1306916546.01542" 
    $P4060."add_method"($P4061, "parse_name", $P4062)
    nqp_get_sc_object $P4063, "1306916536.11825", 138
    get_how $P4064, $P4063
    nqp_get_sc_object $P4065, "1306916536.11825", 138
    .const 'Sub' $P4066 = "237_1306916546.01542" 
    $P4064."add_method"($P4065, "lineof", $P4066)
    .const 'Sub' $P4067 = "165_1306916546.01542" 
    $P4068 = $P4067."get_lexinfo"()
    nqp_get_sc_object $P4069, "1306916536.11825", 138
    $P4068."set_static_lexpad_value"("$?PACKAGE", $P4069)
    .const 'Sub' $P4070 = "165_1306916546.01542" 
    $P4071 = $P4070."get_lexinfo"()
    $P4071."finish_static_lexpad"()
    .const 'Sub' $P4072 = "165_1306916546.01542" 
    $P4073 = $P4072."get_lexinfo"()
    nqp_get_sc_object $P4074, "1306916536.11825", 138
    $P4073."set_static_lexpad_value"("$?CLASS", $P4074)
    .const 'Sub' $P4075 = "165_1306916546.01542" 
    $P4076 = $P4075."get_lexinfo"()
    $P4076."finish_static_lexpad"()
    nqp_get_sc_object $P4077, "1306916536.11825", 138
    get_how $P4078, $P4077
    nqp_get_sc_object $P4079, "1306916536.11825", 138
    nqp_get_sc_object $P4080, "1306916534.07562", 5
    $P4078."set_default_parent"($P4079, $P4080)
    nqp_get_sc_object $P4081, "1306916536.11825", 138
    get_how $P4082, $P4081
    nqp_get_sc_object $P4083, "1306916536.11825", 138
    $P4082."compose"($P4083)
    nqp_get_sc_object $P4084, "1306916525.99765", 41
    $P4085 = $P4084."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4085, cur_sc
    nqp_set_sc_object "1306916536.11825", 178, $P4085
    nqp_get_sc_object $P4086, "1306916536.11825", 178
    nqp_get_sc_object $P4087, "1306916536.11825", 0
    nqp_get_package_through_who $P4088, $P4087, "HLL"
    nqp_get_package_through_who $P4089, $P4088, "CommandLine"
    get_who $P4090, $P4089
    set $P4090["Result"], $P4086
    nqp_get_sc_object $P4091, "1306916536.11825", 178
    get_how $P4092, $P4091
    nqp_get_sc_object $P4093, "1306916536.11825", 178
    nqp_get_sc_object $P4094, "1306916525.99765", 80
    $P4095 = $P4094."new"("@!arguments" :named("name"))
    $P4092."add_attribute"($P4093, $P4095)
    nqp_get_sc_object $P4096, "1306916536.11825", 178
    get_how $P4097, $P4096
    nqp_get_sc_object $P4098, "1306916536.11825", 178
    nqp_get_sc_object $P4099, "1306916525.99765", 80
    $P4100 = $P4099."new"("%!options" :named("name"))
    $P4097."add_attribute"($P4098, $P4100)
    nqp_get_sc_object $P4101, "1306916536.11825", 178
    get_how $P4102, $P4101
    nqp_get_sc_object $P4103, "1306916536.11825", 178
    .const 'Sub' $P4104 = "239_1306916546.01542" 
    $P4102."add_method"($P4103, "init", $P4104)
    nqp_get_sc_object $P4105, "1306916536.11825", 178
    get_how $P4106, $P4105
    nqp_get_sc_object $P4107, "1306916536.11825", 178
    .const 'Sub' $P4108 = "240_1306916546.01542" 
    $P4106."add_method"($P4107, "arguments", $P4108)
    nqp_get_sc_object $P4109, "1306916536.11825", 178
    get_how $P4110, $P4109
    nqp_get_sc_object $P4111, "1306916536.11825", 178
    .const 'Sub' $P4112 = "241_1306916546.01542" 
    $P4110."add_method"($P4111, "options", $P4112)
    nqp_get_sc_object $P4113, "1306916536.11825", 178
    get_how $P4114, $P4113
    nqp_get_sc_object $P4115, "1306916536.11825", 178
    .const 'Sub' $P4116 = "242_1306916546.01542" 
    $P4114."add_method"($P4115, "add-argument", $P4116)
    nqp_get_sc_object $P4117, "1306916536.11825", 178
    get_how $P4118, $P4117
    nqp_get_sc_object $P4119, "1306916536.11825", 178
    .const 'Sub' $P4120 = "243_1306916546.01542" 
    $P4118."add_method"($P4119, "add-option", $P4120)
    .const 'Sub' $P4121 = "238_1306916546.01542" 
    $P4122 = $P4121."get_lexinfo"()
    nqp_get_sc_object $P4123, "1306916536.11825", 178
    $P4122."set_static_lexpad_value"("$?PACKAGE", $P4123)
    .const 'Sub' $P4124 = "238_1306916546.01542" 
    $P4125 = $P4124."get_lexinfo"()
    $P4125."finish_static_lexpad"()
    .const 'Sub' $P4126 = "238_1306916546.01542" 
    $P4127 = $P4126."get_lexinfo"()
    nqp_get_sc_object $P4128, "1306916536.11825", 178
    $P4127."set_static_lexpad_value"("$?CLASS", $P4128)
    .const 'Sub' $P4129 = "238_1306916546.01542" 
    $P4130 = $P4129."get_lexinfo"()
    $P4130."finish_static_lexpad"()
    nqp_get_sc_object $P4131, "1306916536.11825", 178
    get_how $P4132, $P4131
    nqp_get_sc_object $P4133, "1306916536.11825", 178
    nqp_get_sc_object $P4134, "1306916534.07562", 5
    $P4132."set_default_parent"($P4133, $P4134)
    nqp_get_sc_object $P4135, "1306916536.11825", 178
    get_how $P4136, $P4135
    nqp_get_sc_object $P4137, "1306916536.11825", 178
    $P4136."compose"($P4137)
    nqp_get_sc_object $P4138, "1306916525.99765", 41
    $P4139 = $P4138."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4139, cur_sc
    nqp_set_sc_object "1306916536.11825", 184, $P4139
    nqp_get_sc_object $P4140, "1306916536.11825", 184
    nqp_get_sc_object $P4141, "1306916536.11825", 0
    nqp_get_package_through_who $P4142, $P4141, "HLL"
    nqp_get_package_through_who $P4143, $P4142, "CommandLine"
    get_who $P4144, $P4143
    set $P4144["Parser"], $P4140
    nqp_get_sc_object $P4145, "1306916536.11825", 184
    get_how $P4146, $P4145
    nqp_get_sc_object $P4147, "1306916536.11825", 184
    nqp_get_sc_object $P4148, "1306916525.99765", 80
    $P4149 = $P4148."new"("@!specs" :named("name"))
    $P4146."add_attribute"($P4147, $P4149)
    nqp_get_sc_object $P4150, "1306916536.11825", 184
    get_how $P4151, $P4150
    nqp_get_sc_object $P4152, "1306916536.11825", 184
    nqp_get_sc_object $P4153, "1306916525.99765", 80
    $P4154 = $P4153."new"("%!options" :named("name"))
    $P4151."add_attribute"($P4152, $P4154)
    nqp_get_sc_object $P4155, "1306916536.11825", 184
    get_how $P4156, $P4155
    nqp_get_sc_object $P4157, "1306916536.11825", 184
    nqp_get_sc_object $P4158, "1306916525.99765", 80
    $P4159 = $P4158."new"("%!stopper" :named("name"))
    $P4156."add_attribute"($P4157, $P4159)
    nqp_get_sc_object $P4160, "1306916536.11825", 184
    get_how $P4161, $P4160
    nqp_get_sc_object $P4162, "1306916536.11825", 184
    nqp_get_sc_object $P4163, "1306916525.99765", 80
    $P4164 = $P4163."new"("$!stop-after-first-arg" :named("name"))
    $P4161."add_attribute"($P4162, $P4164)
    nqp_get_sc_object $P4165, "1306916536.11825", 184
    get_how $P4166, $P4165
    nqp_get_sc_object $P4167, "1306916536.11825", 184
    .const 'Sub' $P4168 = "246_1306916546.01542" 
    $P4166."add_method"($P4167, "new", $P4168)
    nqp_get_sc_object $P4169, "1306916536.11825", 184
    get_how $P4170, $P4169
    nqp_get_sc_object $P4171, "1306916536.11825", 184
    .const 'Sub' $P4172 = "247_1306916546.01542" 
    $P4170."add_method"($P4171, "stop-after-first-arg", $P4172)
    nqp_get_sc_object $P4173, "1306916536.11825", 184
    get_how $P4174, $P4173
    nqp_get_sc_object $P4175, "1306916536.11825", 184
    .const 'Sub' $P4176 = "248_1306916546.01542" 
    $P4174."add_method"($P4175, "BUILD", $P4176)
    nqp_get_sc_object $P4177, "1306916536.11825", 184
    get_how $P4178, $P4177
    nqp_get_sc_object $P4179, "1306916536.11825", 184
    .const 'Sub' $P4180 = "250_1306916546.01542" 
    $P4178."add_method"($P4179, "add-stopper", $P4180)
    nqp_get_sc_object $P4181, "1306916536.11825", 184
    get_how $P4182, $P4181
    nqp_get_sc_object $P4183, "1306916536.11825", 184
    .const 'Sub' $P4184 = "251_1306916546.01542" 
    $P4182."add_method"($P4183, "split-option-aliases", $P4184)
    nqp_get_sc_object $P4185, "1306916536.11825", 184
    get_how $P4186, $P4185
    nqp_get_sc_object $P4187, "1306916536.11825", 184
    .const 'Sub' $P4188 = "252_1306916546.01542" 
    $P4186."add_method"($P4187, "add-spec", $P4188)
    nqp_get_sc_object $P4189, "1306916536.11825", 184
    get_how $P4190, $P4189
    nqp_get_sc_object $P4191, "1306916536.11825", 184
    .const 'Sub' $P4192 = "254_1306916546.01542" 
    $P4190."add_method"($P4191, "is-option", $P4192)
    nqp_get_sc_object $P4193, "1306916536.11825", 184
    get_how $P4194, $P4193
    nqp_get_sc_object $P4195, "1306916536.11825", 184
    .const 'Sub' $P4196 = "255_1306916546.01542" 
    $P4194."add_method"($P4195, "wants-value", $P4196)
    nqp_get_sc_object $P4197, "1306916536.11825", 184
    get_how $P4198, $P4197
    nqp_get_sc_object $P4199, "1306916536.11825", 184
    .const 'Sub' $P4200 = "256_1306916546.01542" 
    $P4198."add_method"($P4199, "parse", $P4200)
    .const 'Sub' $P4201 = "245_1306916546.01542" 
    $P4202 = $P4201."get_lexinfo"()
    nqp_get_sc_object $P4203, "1306916536.11825", 184
    $P4202."set_static_lexpad_value"("$?PACKAGE", $P4203)
    .const 'Sub' $P4204 = "245_1306916546.01542" 
    $P4205 = $P4204."get_lexinfo"()
    $P4205."finish_static_lexpad"()
    .const 'Sub' $P4206 = "245_1306916546.01542" 
    $P4207 = $P4206."get_lexinfo"()
    nqp_get_sc_object $P4208, "1306916536.11825", 184
    $P4207."set_static_lexpad_value"("$?CLASS", $P4208)
    .const 'Sub' $P4209 = "245_1306916546.01542" 
    $P4210 = $P4209."get_lexinfo"()
    $P4210."finish_static_lexpad"()
    nqp_get_sc_object $P4211, "1306916536.11825", 184
    get_how $P4212, $P4211
    nqp_get_sc_object $P4213, "1306916536.11825", 184
    nqp_get_sc_object $P4214, "1306916534.07562", 5
    $P4212."set_default_parent"($P4213, $P4214)
    nqp_get_sc_object $P4215, "1306916536.11825", 184
    get_how $P4216, $P4215
    nqp_get_sc_object $P4217, "1306916536.11825", 184
    $P4216."compose"($P4217)
    nqp_get_sc_object $P4218, "1306916525.99765", 41
    $P4219 = $P4218."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4219, cur_sc
    nqp_set_sc_object "1306916536.11825", 194, $P4219
    nqp_get_sc_object $P4220, "1306916536.11825", 194
    nqp_get_sc_object $P4221, "1306916536.11825", 0
    nqp_get_package_through_who $P4222, $P4221, "HLL"
    nqp_get_package_through_who $P4223, $P4222, "Compiler"
    get_who $P4224, $P4223
    set $P4224["SerializationContextBuilder"], $P4220
    nqp_get_sc_object $P4225, "1306916525.99765", 41
    $P4226 = $P4225."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4226, cur_sc
    nqp_set_sc_object "1306916536.11825", 195, $P4226
    .const 'Sub' $P4227 = "264_1306916546.01542" 
    $P4228 = $P4227."get_lexinfo"()
    nqp_get_sc_object $P4229, "1306916536.11825", 195
    $P4228."set_static_lexpad_value"("Event", $P4229)
    .const 'Sub' $P4230 = "264_1306916546.01542" 
    $P4231 = $P4230."get_lexinfo"()
    $P4231."finish_static_lexpad"()
    nqp_get_sc_object $P4232, "1306916536.11825", 195
    get_how $P4233, $P4232
    nqp_get_sc_object $P4234, "1306916536.11825", 195
    nqp_get_sc_object $P4235, "1306916525.99765", 80
    $P4236 = $P4235."new"("$!deserialize_past" :named("name"))
    $P4233."add_attribute"($P4234, $P4236)
    nqp_get_sc_object $P4237, "1306916536.11825", 195
    get_how $P4238, $P4237
    nqp_get_sc_object $P4239, "1306916536.11825", 195
    .const 'Sub' $P4240 = "267_1306916546.01542" 
    $P4238."add_method"($P4239, "deserialize_past", $P4240)
    nqp_get_sc_object $P4241, "1306916536.11825", 195
    get_how $P4242, $P4241
    nqp_get_sc_object $P4243, "1306916536.11825", 195
    nqp_get_sc_object $P4244, "1306916525.99765", 80
    $P4245 = $P4244."new"("$!fixup_past" :named("name"))
    $P4242."add_attribute"($P4243, $P4245)
    nqp_get_sc_object $P4246, "1306916536.11825", 195
    get_how $P4247, $P4246
    nqp_get_sc_object $P4248, "1306916536.11825", 195
    .const 'Sub' $P4249 = "268_1306916546.01542" 
    $P4247."add_method"($P4248, "fixup_past", $P4249)
    .const 'Sub' $P4250 = "266_1306916546.01542" 
    $P4251 = $P4250."get_lexinfo"()
    nqp_get_sc_object $P4252, "1306916536.11825", 195
    $P4251."set_static_lexpad_value"("$?PACKAGE", $P4252)
    .const 'Sub' $P4253 = "266_1306916546.01542" 
    $P4254 = $P4253."get_lexinfo"()
    $P4254."finish_static_lexpad"()
    .const 'Sub' $P4255 = "266_1306916546.01542" 
    $P4256 = $P4255."get_lexinfo"()
    nqp_get_sc_object $P4257, "1306916536.11825", 195
    $P4256."set_static_lexpad_value"("$?CLASS", $P4257)
    .const 'Sub' $P4258 = "266_1306916546.01542" 
    $P4259 = $P4258."get_lexinfo"()
    $P4259."finish_static_lexpad"()
    nqp_get_sc_object $P4260, "1306916536.11825", 195
    get_how $P4261, $P4260
    nqp_get_sc_object $P4262, "1306916536.11825", 195
    nqp_get_sc_object $P4263, "1306916534.07562", 5
    $P4261."set_default_parent"($P4262, $P4263)
    nqp_get_sc_object $P4264, "1306916536.11825", 195
    get_how $P4265, $P4264
    nqp_get_sc_object $P4266, "1306916536.11825", 195
    $P4265."compose"($P4266)
    nqp_get_sc_object $P4267, "1306916536.11825", 194
    get_how $P4268, $P4267
    nqp_get_sc_object $P4269, "1306916536.11825", 194
    nqp_get_sc_object $P4270, "1306916525.99765", 80
    $P4271 = $P4270."new"("$!sc" :named("name"))
    $P4268."add_attribute"($P4269, $P4271)
    nqp_get_sc_object $P4272, "1306916536.11825", 194
    get_how $P4273, $P4272
    nqp_get_sc_object $P4274, "1306916536.11825", 194
    nqp_get_sc_object $P4275, "1306916525.99765", 80
    $P4276 = $P4275."new"("$!handle" :named("name"))
    $P4273."add_attribute"($P4274, $P4276)
    nqp_get_sc_object $P4277, "1306916536.11825", 194
    get_how $P4278, $P4277
    nqp_get_sc_object $P4279, "1306916536.11825", 194
    nqp_get_sc_object $P4280, "1306916525.99765", 80
    $P4281 = $P4280."new"("%!addr_to_slot" :named("name"))
    $P4278."add_attribute"($P4279, $P4281)
    nqp_get_sc_object $P4282, "1306916536.11825", 194
    get_how $P4283, $P4282
    nqp_get_sc_object $P4284, "1306916536.11825", 194
    nqp_get_sc_object $P4285, "1306916525.99765", 80
    $P4286 = $P4285."new"("@!event_stream" :named("name"))
    $P4283."add_attribute"($P4284, $P4286)
    nqp_get_sc_object $P4287, "1306916536.11825", 194
    get_how $P4288, $P4287
    nqp_get_sc_object $P4289, "1306916536.11825", 194
    .const 'Sub' $P4290 = "269_1306916546.01542" 
    $P4288."add_method"($P4289, "new", $P4290)
    nqp_get_sc_object $P4291, "1306916536.11825", 194
    get_how $P4292, $P4291
    nqp_get_sc_object $P4293, "1306916536.11825", 194
    .const 'Sub' $P4294 = "270_1306916546.01542" 
    $P4292."add_method"($P4293, "BUILD", $P4294)
    nqp_get_sc_object $P4295, "1306916536.11825", 194
    get_how $P4296, $P4295
    nqp_get_sc_object $P4297, "1306916536.11825", 194
    .const 'Sub' $P4298 = "271_1306916546.01542" 
    $P4296."add_method"($P4297, "slot_for_object", $P4298)
    nqp_get_sc_object $P4299, "1306916536.11825", 194
    get_how $P4300, $P4299
    nqp_get_sc_object $P4301, "1306916536.11825", 194
    .const 'Sub' $P4302 = "272_1306916546.01542" 
    $P4300."add_method"($P4301, "get_slot_past_for_object", $P4302)
    nqp_get_sc_object $P4303, "1306916536.11825", 194
    get_how $P4304, $P4303
    nqp_get_sc_object $P4305, "1306916536.11825", 194
    .const 'Sub' $P4306 = "273_1306916546.01542" 
    $P4304."add_method"($P4305, "set_slot_past", $P4306)
    nqp_get_sc_object $P4307, "1306916536.11825", 194
    get_how $P4308, $P4307
    nqp_get_sc_object $P4309, "1306916536.11825", 194
    .const 'Sub' $P4310 = "274_1306916546.01542" 
    $P4308."add_method"($P4309, "set_cur_sc", $P4310)
    nqp_get_sc_object $P4311, "1306916536.11825", 194
    get_how $P4312, $P4311
    nqp_get_sc_object $P4313, "1306916536.11825", 194
    .const 'Sub' $P4314 = "275_1306916546.01542" 
    $P4312."add_method"($P4313, "add_object", $P4314)
    nqp_get_sc_object $P4315, "1306916536.11825", 194
    get_how $P4316, $P4315
    nqp_get_sc_object $P4317, "1306916536.11825", 194
    .const 'Sub' $P4318 = "276_1306916546.01542" 
    $P4316."add_method"($P4317, "add_code", $P4318)
    nqp_get_sc_object $P4319, "1306916536.11825", 194
    get_how $P4320, $P4319
    nqp_get_sc_object $P4321, "1306916536.11825", 194
    .const 'Sub' $P4322 = "277_1306916546.01542" 
    $P4320."add_method"($P4321, "add_event", $P4322)
    nqp_get_sc_object $P4323, "1306916536.11825", 194
    get_how $P4324, $P4323
    nqp_get_sc_object $P4325, "1306916536.11825", 194
    .const 'Sub' $P4326 = "278_1306916546.01542" 
    $P4324."add_method"($P4325, "get_object_sc_ref_past", $P4326)
    nqp_get_sc_object $P4327, "1306916536.11825", 194
    get_how $P4328, $P4327
    nqp_get_sc_object $P4329, "1306916536.11825", 194
    .const 'Sub' $P4330 = "279_1306916546.01542" 
    $P4328."add_method"($P4329, "sc", $P4330)
    nqp_get_sc_object $P4331, "1306916536.11825", 194
    get_how $P4332, $P4331
    nqp_get_sc_object $P4333, "1306916536.11825", 194
    .const 'Sub' $P4334 = "280_1306916546.01542" 
    $P4332."add_method"($P4333, "handle", $P4334)
    nqp_get_sc_object $P4335, "1306916536.11825", 194
    get_how $P4336, $P4335
    nqp_get_sc_object $P4337, "1306916536.11825", 194
    .const 'Sub' $P4338 = "281_1306916546.01542" 
    $P4336."add_method"($P4337, "event_stream", $P4338)
    .const 'Sub' $P4339 = "264_1306916546.01542" 
    $P4340 = $P4339."get_lexinfo"()
    nqp_get_sc_object $P4341, "1306916536.11825", 194
    $P4340."set_static_lexpad_value"("$?PACKAGE", $P4341)
    .const 'Sub' $P4342 = "264_1306916546.01542" 
    $P4343 = $P4342."get_lexinfo"()
    $P4343."finish_static_lexpad"()
    .const 'Sub' $P4344 = "264_1306916546.01542" 
    $P4345 = $P4344."get_lexinfo"()
    nqp_get_sc_object $P4346, "1306916536.11825", 194
    $P4345."set_static_lexpad_value"("$?CLASS", $P4346)
    .const 'Sub' $P4347 = "264_1306916546.01542" 
    $P4348 = $P4347."get_lexinfo"()
    $P4348."finish_static_lexpad"()
    nqp_get_sc_object $P4349, "1306916536.11825", 194
    get_how $P4350, $P4349
    nqp_get_sc_object $P4351, "1306916536.11825", 194
    nqp_get_sc_object $P4352, "1306916534.07562", 5
    $P4350."set_default_parent"($P4351, $P4352)
    nqp_get_sc_object $P4353, "1306916536.11825", 194
    get_how $P4354, $P4353
    nqp_get_sc_object $P4355, "1306916536.11825", 194
    $P4354."compose"($P4355)
  if_3227_end:
    nqp_get_sc_object $P4859, "1306916536.11825", 0
    set_hll_global "GLOBAL", $P4859
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block17"  :subid("11_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 7
    .const 'Sub' $P453 = "118_1306916546.01542" 
    capture_lex $P453
    .const 'Sub' $P448 = "117_1306916546.01542" 
    capture_lex $P448
    .const 'Sub' $P433 = "116_1306916546.01542" 
    capture_lex $P433
    .const 'Sub' $P423 = "115_1306916546.01542" 
    capture_lex $P423
    .const 'Sub' $P419 = "114_1306916546.01542" 
    capture_lex $P419
    .const 'Sub' $P415 = "113_1306916546.01542" 
    capture_lex $P415
    .const 'Sub' $P412 = "112_1306916546.01542" 
    capture_lex $P412
    .const 'Sub' $P410 = "111_1306916546.01542" 
    capture_lex $P410
    .const 'Sub' $P408 = "110_1306916546.01542" 
    capture_lex $P408
    .const 'Sub' $P400 = "109_1306916546.01542" 
    capture_lex $P400
    .const 'Sub' $P397 = "108_1306916546.01542" 
    capture_lex $P397
    .const 'Sub' $P393 = "107_1306916546.01542" 
    capture_lex $P393
    .const 'Sub' $P359 = "106_1306916546.01542" 
    capture_lex $P359
    .const 'Sub' $P354 = "105_1306916546.01542" 
    capture_lex $P354
    .const 'Sub' $P350 = "104_1306916546.01542" 
    capture_lex $P350
    .const 'Sub' $P345 = "103_1306916546.01542" 
    capture_lex $P345
    .const 'Sub' $P343 = "102_1306916546.01542" 
    capture_lex $P343
    .const 'Sub' $P339 = "101_1306916546.01542" 
    capture_lex $P339
    .const 'Sub' $P336 = "100_1306916546.01542" 
    capture_lex $P336
    .const 'Sub' $P326 = "98_1306916546.01542" 
    capture_lex $P326
    .const 'Sub' $P324 = "97_1306916546.01542" 
    capture_lex $P324
    .const 'Sub' $P294 = "93_1306916546.01542" 
    capture_lex $P294
    .const 'Sub' $P292 = "92_1306916546.01542" 
    capture_lex $P292
    .const 'Sub' $P288 = "91_1306916546.01542" 
    capture_lex $P288
    .const 'Sub' $P286 = "90_1306916546.01542" 
    capture_lex $P286
    .const 'Sub' $P283 = "89_1306916546.01542" 
    capture_lex $P283
    .const 'Sub' $P281 = "88_1306916546.01542" 
    capture_lex $P281
    .const 'Sub' $P277 = "87_1306916546.01542" 
    capture_lex $P277
    .const 'Sub' $P275 = "86_1306916546.01542" 
    capture_lex $P275
    .const 'Sub' $P271 = "85_1306916546.01542" 
    capture_lex $P271
    .const 'Sub' $P269 = "84_1306916546.01542" 
    capture_lex $P269
    .const 'Sub' $P266 = "83_1306916546.01542" 
    capture_lex $P266
    .const 'Sub' $P264 = "82_1306916546.01542" 
    capture_lex $P264
    .const 'Sub' $P261 = "81_1306916546.01542" 
    capture_lex $P261
    .const 'Sub' $P259 = "80_1306916546.01542" 
    capture_lex $P259
    .const 'Sub' $P256 = "79_1306916546.01542" 
    capture_lex $P256
    .const 'Sub' $P254 = "78_1306916546.01542" 
    capture_lex $P254
    .const 'Sub' $P251 = "77_1306916546.01542" 
    capture_lex $P251
    .const 'Sub' $P249 = "76_1306916546.01542" 
    capture_lex $P249
    .const 'Sub' $P246 = "75_1306916546.01542" 
    capture_lex $P246
    .const 'Sub' $P244 = "74_1306916546.01542" 
    capture_lex $P244
    .const 'Sub' $P241 = "73_1306916546.01542" 
    capture_lex $P241
    .const 'Sub' $P239 = "72_1306916546.01542" 
    capture_lex $P239
    .const 'Sub' $P236 = "71_1306916546.01542" 
    capture_lex $P236
    .const 'Sub' $P234 = "70_1306916546.01542" 
    capture_lex $P234
    .const 'Sub' $P231 = "69_1306916546.01542" 
    capture_lex $P231
    .const 'Sub' $P223 = "66_1306916546.01542" 
    capture_lex $P223
    .const 'Sub' $P219 = "65_1306916546.01542" 
    capture_lex $P219
    .const 'Sub' $P217 = "64_1306916546.01542" 
    capture_lex $P217
    .const 'Sub' $P206 = "63_1306916546.01542" 
    capture_lex $P206
    .const 'Sub' $P199 = "62_1306916546.01542" 
    capture_lex $P199
    .const 'Sub' $P194 = "61_1306916546.01542" 
    capture_lex $P194
    .const 'Sub' $P192 = "60_1306916546.01542" 
    capture_lex $P192
    .const 'Sub' $P188 = "59_1306916546.01542" 
    capture_lex $P188
    .const 'Sub' $P186 = "58_1306916546.01542" 
    capture_lex $P186
    .const 'Sub' $P181 = "57_1306916546.01542" 
    capture_lex $P181
    .const 'Sub' $P179 = "56_1306916546.01542" 
    capture_lex $P179
    .const 'Sub' $P175 = "55_1306916546.01542" 
    capture_lex $P175
    .const 'Sub' $P173 = "54_1306916546.01542" 
    capture_lex $P173
    .const 'Sub' $P168 = "53_1306916546.01542" 
    capture_lex $P168
    .const 'Sub' $P166 = "52_1306916546.01542" 
    capture_lex $P166
    .const 'Sub' $P162 = "51_1306916546.01542" 
    capture_lex $P162
    .const 'Sub' $P160 = "50_1306916546.01542" 
    capture_lex $P160
    .const 'Sub' $P155 = "49_1306916546.01542" 
    capture_lex $P155
    .const 'Sub' $P153 = "48_1306916546.01542" 
    capture_lex $P153
    .const 'Sub' $P149 = "47_1306916546.01542" 
    capture_lex $P149
    .const 'Sub' $P147 = "46_1306916546.01542" 
    capture_lex $P147
    .const 'Sub' $P143 = "45_1306916546.01542" 
    capture_lex $P143
    .const 'Sub' $P141 = "44_1306916546.01542" 
    capture_lex $P141
    .const 'Sub' $P134 = "43_1306916546.01542" 
    capture_lex $P134
    .const 'Sub' $P131 = "42_1306916546.01542" 
    capture_lex $P131
    .const 'Sub' $P126 = "41_1306916546.01542" 
    capture_lex $P126
    .const 'Sub' $P118 = "40_1306916546.01542" 
    capture_lex $P118
    .const 'Sub' $P115 = "39_1306916546.01542" 
    capture_lex $P115
    .const 'Sub' $P112 = "38_1306916546.01542" 
    capture_lex $P112
    .const 'Sub' $P110 = "37_1306916546.01542" 
    capture_lex $P110
    .const 'Sub' $P107 = "36_1306916546.01542" 
    capture_lex $P107
    .const 'Sub' $P103 = "35_1306916546.01542" 
    capture_lex $P103
    .const 'Sub' $P99 = "34_1306916546.01542" 
    capture_lex $P99
    .const 'Sub' $P96 = "33_1306916546.01542" 
    capture_lex $P96
    .const 'Sub' $P93 = "32_1306916546.01542" 
    capture_lex $P93
    .const 'Sub' $P90 = "31_1306916546.01542" 
    capture_lex $P90
    .const 'Sub' $P87 = "30_1306916546.01542" 
    capture_lex $P87
    .const 'Sub' $P84 = "29_1306916546.01542" 
    capture_lex $P84
    .const 'Sub' $P81 = "28_1306916546.01542" 
    capture_lex $P81
    .const 'Sub' $P43 = "15_1306916546.01542" 
    capture_lex $P43
    .const 'Sub' $P36 = "14_1306916546.01542" 
    capture_lex $P36
    .const 'Sub' $P34 = "13_1306916546.01542" 
    capture_lex $P34
    .const 'Sub' $P29 = "12_1306916546.01542" 
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
    unless_null $P26, vivify_284
    new $P26, "Undef"
  vivify_284:
    get_who $P27, $P26
    set $P28, $P27["Cursor"]
    unless_null $P28, vivify_285
    new $P28, "Undef"
  vivify_285:
    store_lex "$cursor_class", $P28
.annotate 'line', 845
    .const 'Sub' $P453 = "118_1306916546.01542" 
    newclosure $P476, $P453
.annotate 'line', 7
    .return ($P476)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx30_debug, debug_286
    rx30_cur."!cursor_debug"("START", "ws")
  debug_286:
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
    find_not_cclass $I11, 32, rx30_tgt, $I10, rx30_eos
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
    find_cclass $I11, 4096, rx30_tgt, $I10, rx30_eos
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
    if_null rx30_debug, debug_287
    rx30_cur."!cursor_debug"("PASS", "ws", " at pos=", rx30_pos)
  debug_287:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 10
    if_null rx30_debug, debug_288
    rx30_cur."!cursor_debug"("NEXT", "ws")
  debug_288:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_289
    rx30_cur."!cursor_debug"("FAIL", "ws")
  debug_289:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    new $P35, "ResizablePMCArray"
    push $P35, ""
    .return ($P35)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx37_debug, debug_290
    rx37_cur."!cursor_debug"("START", "termish")
  debug_290:
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
    if_null rx37_debug, debug_291
    rx37_cur."!cursor_debug"("PASS", "termish", " at pos=", rx37_pos)
  debug_291:
    .return (rx37_cur)
  rx37_restart:
.annotate 'line', 10
    if_null rx37_debug, debug_292
    rx37_cur."!cursor_debug"("NEXT", "termish")
  debug_292:
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    if_null rx37_debug, debug_293
    rx37_cur."!cursor_debug"("FAIL", "termish")
  debug_293:
    .return (rx37_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    new $P44, "ResizablePMCArray"
    push $P44, ""
    .return ($P44)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1306916546.01542")
    .param pmc param_46
.annotate 'line', 20
    .lex "self", param_46
    $P47 = param_46."!protoregex"("term")
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1306916546.01542")
    .param pmc param_49
.annotate 'line', 20
    .lex "self", param_49
    $P50 = param_49."!PREFIX__!protoregex"("term")
    .return ($P50)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1306916546.01542")
    .param pmc param_52
.annotate 'line', 21
    .lex "self", param_52
    $P53 = param_52."!protoregex"("infix")
    .return ($P53)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1306916546.01542")
    .param pmc param_55
.annotate 'line', 21
    .lex "self", param_55
    $P56 = param_55."!PREFIX__!protoregex"("infix")
    .return ($P56)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1306916546.01542")
    .param pmc param_58
.annotate 'line', 22
    .lex "self", param_58
    $P59 = param_58."!protoregex"("prefix")
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1306916546.01542")
    .param pmc param_61
.annotate 'line', 22
    .lex "self", param_61
    $P62 = param_61."!PREFIX__!protoregex"("prefix")
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1306916546.01542")
    .param pmc param_64
.annotate 'line', 23
    .lex "self", param_64
    $P65 = param_64."!protoregex"("postfix")
    .return ($P65)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1306916546.01542")
    .param pmc param_67
.annotate 'line', 23
    .lex "self", param_67
    $P68 = param_67."!PREFIX__!protoregex"("postfix")
    .return ($P68)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1306916546.01542")
    .param pmc param_70
.annotate 'line', 24
    .lex "self", param_70
    $P71 = param_70."!protoregex"("circumfix")
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1306916546.01542")
    .param pmc param_73
.annotate 'line', 24
    .lex "self", param_73
    $P74 = param_73."!PREFIX__!protoregex"("circumfix")
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1306916546.01542")
    .param pmc param_76
.annotate 'line', 25
    .lex "self", param_76
    $P77 = param_76."!protoregex"("postcircumfix")
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1306916546.01542")
    .param pmc param_79
.annotate 'line', 25
    .lex "self", param_79
    $P80 = param_79."!PREFIX__!protoregex"("postcircumfix")
    .return ($P80)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx82_debug, debug_294
    rx82_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_294:
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
    if_null rx82_debug, debug_295
    rx82_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx82_pos)
  debug_295:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 10
    if_null rx82_debug, debug_296
    rx82_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_296:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_297
    rx82_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_297:
    .return (rx82_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    $P85 = self."!PREFIX__!subrule"("circumfix", "")
    new $P86, "ResizablePMCArray"
    push $P86, $P85
    .return ($P86)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx88_debug, debug_298
    rx88_cur."!cursor_debug"("START", "infixish")
  debug_298:
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
    if_null rx88_debug, debug_299
    rx88_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx88_pos)
  debug_299:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 10
    if_null rx88_debug, debug_300
    rx88_cur."!cursor_debug"("NEXT", "infixish")
  debug_300:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_301
    rx88_cur."!cursor_debug"("FAIL", "infixish")
  debug_301:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    $P91 = self."!PREFIX__!subrule"("infix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx94_debug, debug_302
    rx94_cur."!cursor_debug"("START", "prefixish")
  debug_302:
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
    if_null rx94_debug, debug_303
    rx94_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx94_pos)
  debug_303:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 10
    if_null rx94_debug, debug_304
    rx94_cur."!cursor_debug"("NEXT", "prefixish")
  debug_304:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_305
    rx94_cur."!cursor_debug"("FAIL", "prefixish")
  debug_305:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    $P97 = self."!PREFIX__!subrule"("prefix", "")
    new $P98, "ResizablePMCArray"
    push $P98, $P97
    .return ($P98)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx100_debug, debug_306
    rx100_cur."!cursor_debug"("START", "postfixish")
  debug_306:
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
    if_null rx100_debug, debug_307
    rx100_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx100_pos)
  debug_307:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 10
    if_null rx100_debug, debug_308
    rx100_cur."!cursor_debug"("NEXT", "postfixish")
  debug_308:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_309
    rx100_cur."!cursor_debug"("FAIL", "postfixish")
  debug_309:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1306916546.01542") :method :outer("11_1306916546.01542")
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
.sub "nullterm"  :subid("36_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx108_debug, debug_310
    rx108_cur."!cursor_debug"("START", "nullterm")
  debug_310:
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
    if_null rx108_debug, debug_311
    rx108_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx108_pos)
  debug_311:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 10
    if_null rx108_debug, debug_312
    rx108_cur."!cursor_debug"("NEXT", "nullterm")
  debug_312:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_313
    rx108_cur."!cursor_debug"("FAIL", "nullterm")
  debug_313:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    new $P111, "ResizablePMCArray"
    push $P111, ""
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx113_debug, debug_314
    rx113_cur."!cursor_debug"("START", "nullterm_alt")
  debug_314:
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
    if_null rx113_debug, debug_315
    rx113_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx113_pos)
  debug_315:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 10
    if_null rx113_debug, debug_316
    rx113_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_316:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_317
    rx113_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_317:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 10
    $P116 = self."!PREFIX__!subrule"("nullterm", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "quote_delimited"  :subid("41_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx127_debug, debug_318
    rx127_cur."!cursor_debug"("START", "quote_delimited")
  debug_318:
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
    if_null rx127_debug, debug_319
    rx127_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx127_pos)
  debug_319:
    .return (rx127_cur)
  rx127_restart:
.annotate 'line', 40
    if_null rx127_debug, debug_320
    rx127_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_320:
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    if_null rx127_debug, debug_321
    rx127_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_321:
    .return (rx127_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    $P132 = self."!PREFIX__!subrule"("starter", "")
    new $P133, "ResizablePMCArray"
    push $P133, $P132
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx135_debug, debug_322
    rx135_cur."!cursor_debug"("START", "quote_atom")
  debug_322:
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
    if_null rx135_debug, debug_323
    rx135_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx135_pos)
  debug_323:
    .return (rx135_cur)
  rx135_restart:
.annotate 'line', 40
    if_null rx135_debug, debug_324
    rx135_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_324:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_325
    rx135_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_325:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx144_debug, debug_326
    rx144_cur."!cursor_debug"("START", "decint")
  debug_326:
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
    find_not_cclass $I11, 8, rx144_tgt, $I10, rx144_eos
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
    if_null rx144_debug, debug_327
    rx144_cur."!cursor_debug"("PASS", "decint", " at pos=", rx144_pos)
  debug_327:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 40
    if_null rx144_debug, debug_328
    rx144_cur."!cursor_debug"("NEXT", "decint")
  debug_328:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_329
    rx144_cur."!cursor_debug"("FAIL", "decint")
  debug_329:
    .return (rx144_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx150_debug, debug_330
    rx150_cur."!cursor_debug"("START", "decints")
  debug_330:
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
    if_null rx150_debug, debug_331
    rx150_cur."!cursor_debug"("PASS", "decints", " at pos=", rx150_pos)
  debug_331:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 40
    if_null rx150_debug, debug_332
    rx150_cur."!cursor_debug"("NEXT", "decints")
  debug_332:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_333
    rx150_cur."!cursor_debug"("FAIL", "decints")
  debug_333:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx156_debug, debug_334
    rx156_cur."!cursor_debug"("START", "hexint")
  debug_334:
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
    if_null rx156_debug, debug_335
    rx156_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx156_pos)
  debug_335:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 40
    if_null rx156_debug, debug_336
    rx156_cur."!cursor_debug"("NEXT", "hexint")
  debug_336:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_337
    rx156_cur."!cursor_debug"("FAIL", "hexint")
  debug_337:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx163_debug, debug_338
    rx163_cur."!cursor_debug"("START", "hexints")
  debug_338:
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
    if_null rx163_debug, debug_339
    rx163_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx163_pos)
  debug_339:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 40
    if_null rx163_debug, debug_340
    rx163_cur."!cursor_debug"("NEXT", "hexints")
  debug_340:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_341
    rx163_cur."!cursor_debug"("FAIL", "hexints")
  debug_341:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx169_debug, debug_342
    rx169_cur."!cursor_debug"("START", "octint")
  debug_342:
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
    if_null rx169_debug, debug_343
    rx169_cur."!cursor_debug"("PASS", "octint", " at pos=", rx169_pos)
  debug_343:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 40
    if_null rx169_debug, debug_344
    rx169_cur."!cursor_debug"("NEXT", "octint")
  debug_344:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_345
    rx169_cur."!cursor_debug"("FAIL", "octint")
  debug_345:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx176_debug, debug_346
    rx176_cur."!cursor_debug"("START", "octints")
  debug_346:
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
    if_null rx176_debug, debug_347
    rx176_cur."!cursor_debug"("PASS", "octints", " at pos=", rx176_pos)
  debug_347:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 40
    if_null rx176_debug, debug_348
    rx176_cur."!cursor_debug"("NEXT", "octints")
  debug_348:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_349
    rx176_cur."!cursor_debug"("FAIL", "octints")
  debug_349:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx182_debug, debug_350
    rx182_cur."!cursor_debug"("START", "binint")
  debug_350:
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
    if_null rx182_debug, debug_351
    rx182_cur."!cursor_debug"("PASS", "binint", " at pos=", rx182_pos)
  debug_351:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 40
    if_null rx182_debug, debug_352
    rx182_cur."!cursor_debug"("NEXT", "binint")
  debug_352:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_353
    rx182_cur."!cursor_debug"("FAIL", "binint")
  debug_353:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P187, "ResizablePMCArray"
    push $P187, ""
    .return ($P187)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx189_debug, debug_354
    rx189_cur."!cursor_debug"("START", "binints")
  debug_354:
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
    if_null rx189_debug, debug_355
    rx189_cur."!cursor_debug"("PASS", "binints", " at pos=", rx189_pos)
  debug_355:
    .return (rx189_cur)
  rx189_restart:
.annotate 'line', 40
    if_null rx189_debug, debug_356
    rx189_cur."!cursor_debug"("NEXT", "binints")
  debug_356:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_357
    rx189_cur."!cursor_debug"("FAIL", "binints")
  debug_357:
    .return (rx189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx195_debug, debug_358
    rx195_cur."!cursor_debug"("START", "integer")
  debug_358:
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
    if_null rx195_debug, debug_359
    rx195_cur."!cursor_debug"("PASS", "integer", " at pos=", rx195_pos)
  debug_359:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 40
    if_null rx195_debug, debug_360
    rx195_cur."!cursor_debug"("NEXT", "integer")
  debug_360:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_361
    rx195_cur."!cursor_debug"("FAIL", "integer")
  debug_361:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1306916546.01542") :method :outer("11_1306916546.01542")
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
.sub "dec_number"  :subid("63_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx207_debug, debug_362
    rx207_cur."!cursor_debug"("START", "dec_number")
  debug_362:
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
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
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
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
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
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
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
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
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
    if_null rx207_debug, debug_363
    rx207_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx207_pos)
  debug_363:
    .return (rx207_cur)
  rx207_restart:
.annotate 'line', 40
    if_null rx207_debug, debug_364
    rx207_cur."!cursor_debug"("NEXT", "dec_number")
  debug_364:
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    if_null rx207_debug, debug_365
    rx207_cur."!cursor_debug"("FAIL", "dec_number")
  debug_365:
    .return (rx207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P218, "ResizablePMCArray"
    push $P218, ""
    push $P218, ""
    push $P218, "."
    .return ($P218)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx220_debug, debug_366
    rx220_cur."!cursor_debug"("START", "escale")
  debug_366:
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
    find_not_cclass $I11, 8, rx220_tgt, $I10, rx220_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx220_fail
    add rx220_pos, rx220_off, $I11
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "escale")
    if_null rx220_debug, debug_367
    rx220_cur."!cursor_debug"("PASS", "escale", " at pos=", rx220_pos)
  debug_367:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 40
    if_null rx220_debug, debug_368
    rx220_cur."!cursor_debug"("NEXT", "escale")
  debug_368:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_369
    rx220_cur."!cursor_debug"("FAIL", "escale")
  debug_369:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P224, "ResizablePMCArray"
    push $P224, "e"
    push $P224, "E"
    .return ($P224)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1306916546.01542")
    .param pmc param_226
.annotate 'line', 86
    .lex "self", param_226
    $P227 = param_226."!protoregex"("quote_escape")
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1306916546.01542")
    .param pmc param_229
.annotate 'line', 86
    .lex "self", param_229
    $P230 = param_229."!PREFIX__!protoregex"("quote_escape")
    .return ($P230)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx232_debug, debug_370
    rx232_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_370:
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
    if_null rx232_debug, debug_371
    rx232_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx232_pos)
  debug_371:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 40
    if_null rx232_debug, debug_372
    rx232_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_372:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_373
    rx232_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_373:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P235, "ResizablePMCArray"
    push $P235, "\\\\"
    .return ($P235)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx237_debug, debug_374
    rx237_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_374:
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
    if_null rx237_debug, debug_375
    rx237_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx237_pos)
  debug_375:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 40
    if_null rx237_debug, debug_376
    rx237_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_376:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_377
    rx237_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_377:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P240, "ResizablePMCArray"
    push $P240, "\\"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx242_debug, debug_378
    rx242_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_378:
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
    if_null rx242_debug, debug_379
    rx242_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx242_pos)
  debug_379:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 40
    if_null rx242_debug, debug_380
    rx242_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_380:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_381
    rx242_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_381:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P245, "ResizablePMCArray"
    push $P245, "\\b"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx247_debug, debug_382
    rx247_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_382:
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
    if_null rx247_debug, debug_383
    rx247_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx247_pos)
  debug_383:
    .return (rx247_cur)
  rx247_restart:
.annotate 'line', 40
    if_null rx247_debug, debug_384
    rx247_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_384:
  rx247_fail:
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    if_null rx247_debug, debug_385
    rx247_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_385:
    .return (rx247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P250, "ResizablePMCArray"
    push $P250, "\\n"
    .return ($P250)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx252_debug, debug_386
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_386:
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
    if_null rx252_debug, debug_387
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx252_pos)
  debug_387:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 40
    if_null rx252_debug, debug_388
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_388:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_389
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_389:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P255, "ResizablePMCArray"
    push $P255, "\\r"
    .return ($P255)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx257_debug, debug_390
    rx257_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_390:
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
    if_null rx257_debug, debug_391
    rx257_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx257_pos)
  debug_391:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 40
    if_null rx257_debug, debug_392
    rx257_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_392:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_393
    rx257_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_393:
    .return (rx257_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P260, "ResizablePMCArray"
    push $P260, "\\t"
    .return ($P260)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx262_debug, debug_394
    rx262_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_394:
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
    if_null rx262_debug, debug_395
    rx262_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx262_pos)
  debug_395:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 40
    if_null rx262_debug, debug_396
    rx262_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_396:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_397
    rx262_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_397:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P265, "ResizablePMCArray"
    push $P265, "\\f"
    .return ($P265)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx267_debug, debug_398
    rx267_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_398:
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
    if_null rx267_debug, debug_399
    rx267_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx267_pos)
  debug_399:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 40
    if_null rx267_debug, debug_400
    rx267_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_400:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_401
    rx267_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_401:
    .return (rx267_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P270, "ResizablePMCArray"
    push $P270, "\\e"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx272_debug, debug_402
    rx272_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_402:
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
    if_null rx272_debug, debug_403
    rx272_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx272_pos)
  debug_403:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 40
    if_null rx272_debug, debug_404
    rx272_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_404:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_405
    rx272_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_405:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P276, "ResizablePMCArray"
    push $P276, unicode:"\\x"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx278_debug, debug_406
    rx278_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_406:
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
    if_null rx278_debug, debug_407
    rx278_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx278_pos)
  debug_407:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 40
    if_null rx278_debug, debug_408
    rx278_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_408:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_409
    rx278_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_409:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P282, "ResizablePMCArray"
    push $P282, "\\o"
    .return ($P282)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx284_debug, debug_410
    rx284_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_410:
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
    if_null rx284_debug, debug_411
    rx284_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx284_pos)
  debug_411:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 40
    if_null rx284_debug, debug_412
    rx284_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_412:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_413
    rx284_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_413:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P287, "ResizablePMCArray"
    push $P287, "\\c"
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx289_debug, debug_414
    rx289_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_414:
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
    if_null rx289_debug, debug_415
    rx289_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx289_pos)
  debug_415:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 40
    if_null rx289_debug, debug_416
    rx289_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_416:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_417
    rx289_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_417:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P293, "ResizablePMCArray"
    push $P293, "\\0"
    .return ($P293)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    .const 'Sub' $P312 = "96_1306916546.01542" 
    capture_lex $P312
    .const 'Sub' $P305 = "95_1306916546.01542" 
    capture_lex $P305
    .const 'Sub' $P300 = "94_1306916546.01542" 
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
    if_null rx295_debug, debug_418
    rx295_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_418:
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
    .const 'Sub' $P300 = "94_1306916546.01542" 
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
    .const 'Sub' $P305 = "95_1306916546.01542" 
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
    is_cclass $I11, 8192, rx295_tgt, $I10
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
    .const 'Sub' $P312 = "96_1306916546.01542" 
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
    if_null rx295_debug, debug_426
    rx295_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx295_pos)
  debug_426:
    .return (rx295_cur)
  rx295_restart:
.annotate 'line', 40
    if_null rx295_debug, debug_427
    rx295_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_427:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_428
    rx295_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_428:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("94_1306916546.01542") :outer("93_1306916546.01542")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block304"  :anon :subid("95_1306916546.01542") :method :outer("93_1306916546.01542")
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
    if_null rx306_debug, debug_419
    rx306_cur."!cursor_debug"("START", "")
  debug_419:
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
    is_cclass $I11, 8192, rx306_tgt, $I10
    if $I11, rx306_fail
    inc rx306_pos
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "")
    if_null rx306_debug, debug_420
    rx306_cur."!cursor_debug"("PASS", "", " at pos=", rx306_pos)
  debug_420:
    .return (rx306_cur)
  rx306_restart:
    if_null rx306_debug, debug_421
    rx306_cur."!cursor_debug"("NEXT", "")
  debug_421:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_422
    rx306_cur."!cursor_debug"("FAIL", "")
  debug_422:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block311"  :anon :subid("96_1306916546.01542") :outer("93_1306916546.01542")
.annotate 'line', 112
    find_lex $P313, "$/"
    unless_null $P313, vivify_423
    new $P313, "Undef"
  vivify_423:
    $P314 = $P313."CURSOR"()
    new $P315, "String"
    assign $P315, "Unrecognized backslash sequence: '\\"
    find_lex $P316, "$/"
    unless_null $P316, vivify_424
    $P316 = root_new ['parrot';'Hash']
  vivify_424:
    set $P317, $P316["x"]
    unless_null $P317, vivify_425
    new $P317, "Undef"
  vivify_425:
    $S318 = $P317."Str"()
    concat $P319, $P315, $S318
    concat $P320, $P319, "'"
    $P321 = $P314."panic"($P320)
    .return ($P321)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P325, "ResizablePMCArray"
    push $P325, ""
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    .const 'Sub' $P333 = "99_1306916546.01542" 
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
    if_null rx327_debug, debug_429
    rx327_cur."!cursor_debug"("START", "charname")
  debug_429:
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
    .const 'Sub' $P333 = "99_1306916546.01542" 
    capture_lex $P333
    $P10 = rx327_cur."before"($P333)
    unless $P10, rx327_fail
  alt329_end:
.annotate 'line', 118
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "charname")
    if_null rx327_debug, debug_434
    rx327_cur."!cursor_debug"("PASS", "charname", " at pos=", rx327_pos)
  debug_434:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 40
    if_null rx327_debug, debug_435
    rx327_cur."!cursor_debug"("NEXT", "charname")
  debug_435:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_436
    rx327_cur."!cursor_debug"("FAIL", "charname")
  debug_436:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block332"  :anon :subid("99_1306916546.01542") :method :outer("98_1306916546.01542")
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
    if_null rx334_debug, debug_430
    rx334_cur."!cursor_debug"("START", "")
  debug_430:
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
    find_not_cclass $I11, 32, rx334_tgt, $I10, rx334_eos
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
    if_null rx334_debug, debug_431
    rx334_cur."!cursor_debug"("PASS", "", " at pos=", rx334_pos)
  debug_431:
    .return (rx334_cur)
  rx334_restart:
    if_null rx334_debug, debug_432
    rx334_cur."!cursor_debug"("NEXT", "")
  debug_432:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_433
    rx334_cur."!cursor_debug"("FAIL", "")
  debug_433:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1306916546.01542") :method :outer("11_1306916546.01542")
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
.sub "charnames"  :subid("101_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx340_debug, debug_437
    rx340_cur."!cursor_debug"("START", "charnames")
  debug_437:
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
    if_null rx340_debug, debug_438
    rx340_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx340_pos)
  debug_438:
    .return (rx340_cur)
  rx340_restart:
.annotate 'line', 40
    if_null rx340_debug, debug_439
    rx340_cur."!cursor_debug"("NEXT", "charnames")
  debug_439:
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    if_null rx340_debug, debug_440
    rx340_cur."!cursor_debug"("FAIL", "charnames")
  debug_440:
    .return (rx340_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1306916546.01542") :method :outer("11_1306916546.01542")
.annotate 'line', 40
    new $P344, "ResizablePMCArray"
    push $P344, ""
    .return ($P344)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1306916546.01542") :method :outer("11_1306916546.01542")
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
    if_null rx346_debug, debug_441
    rx346_cur."!cursor_debug"("START", "charspec")
  debug_441:
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
    find_not_cclass $I11, 8, rx346_tgt, $I10, rx346_eos
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
    find_not_cclass $I11, 8, rx346_tgt, $I10, rx346_eos
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
    if_null rx346_debug, debug_442
    rx346_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx346_pos)
  debug_442:
    .return (rx346_cur)
  rx346_restart:
.annotate 'line', 40
    if_null rx346_debug, debug_443
    rx346_cur."!cursor_debug"("NEXT", "charspec")
  debug_443:
  rx346_fail:
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    if_null rx346_debug, debug_444
    rx346_cur."!cursor_debug"("FAIL", "charspec")
  debug_444:
    .return (rx346_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1306916546.01542") :method :outer("11_1306916546.01542")
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
.sub "O" :anon :subid("105_1306916546.01542") :outer("11_1306916546.01542")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357 :optional
    .param int has_param_357 :opt_flag
.annotate 'line', 175
    .lex "self", param_355
    .lex "$spec", param_356
    if has_param_357, optparam_445
    new $P358, "Undef"
    set param_357, $P358
  optparam_445:
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
.sub "panic" :anon :subid("106_1306916546.01542") :outer("11_1306916546.01542")
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
    unless_null $P372, vivify_446
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    $P372."push"(" at line ")
.annotate 'line', 327
    find_lex $P373, "@args"
    unless_null $P373, vivify_447
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    get_hll_global $P374, "GLOBAL"
    nqp_get_package_through_who $P375, $P374, "HLL"
    get_who $P376, $P375
    set $P377, $P376["Compiler"]
    find_lex $P378, "$target"
    unless_null $P378, vivify_448
    new $P378, "Undef"
  vivify_448:
    find_lex $P379, "$pos"
    unless_null $P379, vivify_449
    new $P379, "Undef"
  vivify_449:
    $P380 = $P377."lineof"($P378, $P379)
    add $P381, $P380, 1
    $P373."push"($P381)
.annotate 'line', 328
    find_lex $P382, "@args"
    unless_null $P382, vivify_450
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    $P382."push"(", near \"")
.annotate 'line', 329
    find_lex $P383, "@args"
    unless_null $P383, vivify_451
    $P383 = root_new ['parrot';'ResizablePMCArray']
  vivify_451:
    find_lex $P384, "$target"
    unless_null $P384, vivify_452
    new $P384, "Undef"
  vivify_452:
    set $S385, $P384
    find_lex $P386, "$pos"
    unless_null $P386, vivify_453
    new $P386, "Undef"
  vivify_453:
    set $I387, $P386
    substr $S388, $S385, $I387, 10
    escape $S389, $S388
    $P383."push"($S389)
.annotate 'line', 330
    find_lex $P390, "@args"
    unless_null $P390, vivify_454
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    $P390."push"("\"")
.annotate 'line', 331
    find_lex $P391, "@args"
    unless_null $P391, vivify_455
    $P391 = root_new ['parrot';'ResizablePMCArray']
  vivify_455:
    join $S392, "", $P391
    die $S392
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("107_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "quote_EXPR" :anon :subid("108_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "quotemod_check"  :subid("109_1306916546.01542") :outer("11_1306916546.01542")
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 477
    .lex "self", param_401
    .lex "$mod", param_402
    find_lex $P403, "$mod"
    unless_null $P403, vivify_456
    new $P403, "Undef"
  vivify_456:
    find_dynamic_lex $P406, "%*QUOTEMOD"
    unless_null $P406, vivify_457
    get_hll_global $P404, "GLOBAL"
    get_who $P405, $P404
    set $P406, $P405["%QUOTEMOD"]
    unless_null $P406, vivify_458
    die "Contextual %*QUOTEMOD not found"
  vivify_458:
  vivify_457:
    set $P407, $P406[$P403]
    unless_null $P407, vivify_459
    new $P407, "Undef"
  vivify_459:
    .return ($P407)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("110_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "stopper" :anon :subid("111_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "split_words"  :subid("112_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "EXPR" :anon :subid("113_1306916546.01542") :outer("11_1306916546.01542")
    .param pmc param_416
    .param pmc param_417 :optional
    .param int has_param_417 :opt_flag
.annotate 'line', 559
    .lex "self", param_416
    if has_param_417, optparam_460
    new $P418, "String"
    assign $P418, ""
    set param_417, $P418
  optparam_460:
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
.sub "EXPR_reduce" :anon :subid("114_1306916546.01542") :outer("11_1306916546.01542")
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
.sub "ternary" :anon :subid("115_1306916546.01542") :outer("11_1306916546.01542")
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 805
    .lex "self", param_424
    .lex "$match", param_425
.annotate 'line', 806
    find_lex $P426, "$match"
    unless_null $P426, vivify_461
    $P426 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    set $P427, $P426[1]
    unless_null $P427, vivify_462
    new $P427, "Undef"
  vivify_462:
    find_lex $P428, "$match"
    unless_null $P428, vivify_463
    $P428 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P428
  vivify_463:
    set $P428[2], $P427
.annotate 'line', 807
    find_lex $P429, "$match"
    unless_null $P429, vivify_464
    $P429 = root_new ['parrot';'Hash']
  vivify_464:
    set $P430, $P429["infix"]
    unless_null $P430, vivify_465
    $P430 = root_new ['parrot';'Hash']
  vivify_465:
    set $P431, $P430["EXPR"]
    unless_null $P431, vivify_466
    new $P431, "Undef"
  vivify_466:
    find_lex $P432, "$match"
    unless_null $P432, vivify_467
    $P432 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P432
  vivify_467:
    set $P432[1], $P431
.annotate 'line', 805
    .return ($P431)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1306916546.01542") :outer("11_1306916546.01542")
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
    unless_null $P441, vivify_468
    new $P441, "Undef"
  vivify_468:
    find_lex $P442, "$pos"
    unless_null $P442, vivify_469
    new $P442, "Undef"
  vivify_469:
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
    unless_null $P444, vivify_470
    new $P444, "Undef"
  vivify_470:
    find_lex $P445, "$markname"
    unless_null $P445, vivify_471
    new $P445, "Undef"
  vivify_471:
    find_lex $P446, "%markhash"
    unless_null $P446, vivify_472
    $P446 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P446
  vivify_472:
    set $P446[$P445], $P444
.annotate 'line', 821
    find_lex $P447, "self"
    $P447."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 810
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1306916546.01542") :outer("11_1306916546.01542")
    .param pmc param_449
    .param pmc param_450
.annotate 'line', 825
    .lex "self", param_449
    .lex "$markname", param_450
.annotate 'line', 826
    find_lex $P451, "self"
    find_lex $P452, "$markname"
    unless_null $P452, vivify_473
    new $P452, "Undef"
  vivify_473:
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
.sub "LANG" :anon :subid("118_1306916546.01542") :outer("11_1306916546.01542")
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
    unless_null $P460, vivify_474
    new $P460, "Undef"
  vivify_474:
    find_dynamic_lex $P463, "%*LANG"
    unless_null $P463, vivify_475
    get_hll_global $P461, "GLOBAL"
    get_who $P462, $P461
    set $P463, $P462["%LANG"]
    unless_null $P463, vivify_476
    die "Contextual %*LANG not found"
  vivify_476:
  vivify_475:
    set $P464, $P463[$P460]
    unless_null $P464, vivify_477
    new $P464, "Undef"
  vivify_477:
    store_lex "$lang_cursor", $P464
.annotate 'line', 847
    find_lex $P465, "$lang"
    unless_null $P465, vivify_478
    new $P465, "Undef"
  vivify_478:
    concat $P466, $P465, "-actions"
    find_dynamic_lex $P469, "%*LANG"
    unless_null $P469, vivify_479
    get_hll_global $P467, "GLOBAL"
    get_who $P468, $P467
    set $P469, $P468["%LANG"]
    unless_null $P469, vivify_480
    die "Contextual %*LANG not found"
  vivify_480:
  vivify_479:
    set $P470, $P469[$P466]
    unless_null $P470, vivify_481
    new $P470, "Undef"
  vivify_481:
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
    unless_null $P472, vivify_482
    new $P472, "Undef"
  vivify_482:
    find_lex $P473, "$regex"
    unless_null $P473, vivify_483
    new $P473, "Undef"
  vivify_483:
    set $S474, $P473
    $P475 = $P472.$S474()
.annotate 'line', 845
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block477"  :subid("119_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 861
    .const 'Sub' $P1146 = "164_1306916546.01542" 
    capture_lex $P1146
    .const 'Sub' $P1123 = "162_1306916546.01542" 
    capture_lex $P1123
    .const 'Sub' $P1095 = "161_1306916546.01542" 
    capture_lex $P1095
    .const 'Sub' $P1078 = "160_1306916546.01542" 
    capture_lex $P1078
    .const 'Sub' $P1073 = "159_1306916546.01542" 
    capture_lex $P1073
    .const 'Sub' $P1065 = "158_1306916546.01542" 
    capture_lex $P1065
    .const 'Sub' $P1050 = "157_1306916546.01542" 
    capture_lex $P1050
    .const 'Sub' $P1035 = "156_1306916546.01542" 
    capture_lex $P1035
    .const 'Sub' $P1030 = "155_1306916546.01542" 
    capture_lex $P1030
    .const 'Sub' $P1025 = "154_1306916546.01542" 
    capture_lex $P1025
    .const 'Sub' $P1020 = "153_1306916546.01542" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "152_1306916546.01542" 
    capture_lex $P1015
    .const 'Sub' $P1010 = "151_1306916546.01542" 
    capture_lex $P1010
    .const 'Sub' $P1005 = "150_1306916546.01542" 
    capture_lex $P1005
    .const 'Sub' $P997 = "149_1306916546.01542" 
    capture_lex $P997
    .const 'Sub' $P992 = "148_1306916546.01542" 
    capture_lex $P992
    .const 'Sub' $P978 = "147_1306916546.01542" 
    capture_lex $P978
    .const 'Sub' $P896 = "145_1306916546.01542" 
    capture_lex $P896
    .const 'Sub' $P819 = "142_1306916546.01542" 
    capture_lex $P819
    .const 'Sub' $P812 = "141_1306916546.01542" 
    capture_lex $P812
    .const 'Sub' $P805 = "140_1306916546.01542" 
    capture_lex $P805
    .const 'Sub' $P798 = "139_1306916546.01542" 
    capture_lex $P798
    .const 'Sub' $P791 = "138_1306916546.01542" 
    capture_lex $P791
    .const 'Sub' $P784 = "137_1306916546.01542" 
    capture_lex $P784
    .const 'Sub' $P776 = "136_1306916546.01542" 
    capture_lex $P776
    .const 'Sub' $P768 = "135_1306916546.01542" 
    capture_lex $P768
    .const 'Sub' $P762 = "134_1306916546.01542" 
    capture_lex $P762
    .const 'Sub' $P754 = "133_1306916546.01542" 
    capture_lex $P754
    .const 'Sub' $P746 = "132_1306916546.01542" 
    capture_lex $P746
    .const 'Sub' $P638 = "129_1306916546.01542" 
    capture_lex $P638
    .const 'Sub' $P598 = "126_1306916546.01542" 
    capture_lex $P598
    .const 'Sub' $P590 = "125_1306916546.01542" 
    capture_lex $P590
    .const 'Sub' $P551 = "122_1306916546.01542" 
    capture_lex $P551
    .const 'Sub' $P479 = "120_1306916546.01542" 
    capture_lex $P479
.annotate 'line', 862
    .const 'Sub' $P479 = "120_1306916546.01542" 
    newclosure $P547, $P479
    .lex "string_to_int", $P547
.annotate 'line', 861
    find_lex $P548, "string_to_int"
    find_lex $P549, "$?PACKAGE"
    get_who $P550, $P549
    set $P550["string_to_int"], $P548
.annotate 'line', 881
    .const 'Sub' $P551 = "122_1306916546.01542" 
    newclosure $P582, $P551
    .lex "ints_to_string", $P582
.annotate 'line', 861
    find_lex $P583, "ints_to_string"
    find_lex $P584, "$?PACKAGE"
    get_who $P585, $P584
    set $P585["ints_to_string"], $P583
    .lex "$?PACKAGE", $P586
    .lex "$?CLASS", $P587
    find_lex $P588, "string_to_int"
    find_lex $P589, "ints_to_string"
.annotate 'line', 1052
    .const 'Sub' $P1146 = "164_1306916546.01542" 
    newclosure $P1161, $P1146
.annotate 'line', 861
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_480
    .param pmc param_481
.annotate 'line', 862
    .const 'Sub' $P497 = "121_1306916546.01542" 
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
    unless_null $P485, vivify_484
    new $P485, "Undef"
  vivify_484:
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
    new $P544, 'ExceptionHandler'
    set_label $P544, loop543_handler
    $P544."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P544
  loop543_test:
    find_lex $P491, "$i"
    unless_null $P491, vivify_485
    new $P491, "Undef"
  vivify_485:
    set $N492, $P491
    find_lex $P493, "$len"
    unless_null $P493, vivify_486
    new $P493, "Undef"
  vivify_486:
    set $N494, $P493
    islt $I495, $N492, $N494
    unless $I495, loop543_done
  loop543_redo:
    .const 'Sub' $P497 = "121_1306916546.01542" 
    capture_lex $P497
    $P497()
  loop543_next:
    goto loop543_test
  loop543_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P545, exception, 'type'
    eq $P545, .CONTROL_LOOP_NEXT, loop543_next
    eq $P545, .CONTROL_LOOP_REDO, loop543_redo
  loop543_done:
    pop_eh 
    find_lex $P546, "$result"
    unless_null $P546, vivify_501
    new $P546, "Undef"
  vivify_501:
.annotate 'line', 862
    .return ($P546)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block496"  :anon :subid("121_1306916546.01542") :outer("120_1306916546.01542")
.annotate 'line', 868
    new $P498, "Undef"
    .lex "$char", $P498
.annotate 'line', 870
    new $P499, "Undef"
    .lex "$digitval", $P499
.annotate 'line', 868
    find_lex $P500, "$src"
    unless_null $P500, vivify_487
    new $P500, "Undef"
  vivify_487:
    set $S501, $P500
    find_lex $P502, "$i"
    unless_null $P502, vivify_488
    new $P502, "Undef"
  vivify_488:
    set $I503, $P502
    substr $S504, $S501, $I503, 1
    new $P505, 'String'
    set $P505, $S504
    store_lex "$char", $P505
.annotate 'line', 869
    find_lex $P507, "$char"
    unless_null $P507, vivify_489
    new $P507, "Undef"
  vivify_489:
    set $S508, $P507
    iseq $I509, $S508, "_"
    unless $I509, if_506_end
    set $I510, .CONTROL_LOOP_NEXT
    die 0, $I510
  if_506_end:
.annotate 'line', 870
    find_lex $P511, "$char"
    unless_null $P511, vivify_490
    new $P511, "Undef"
  vivify_490:
    set $S512, $P511
    index $I513, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S512
    new $P514, 'Integer'
    set $P514, $I513
    store_lex "$digitval", $P514
.annotate 'line', 871
    find_lex $P515, "$digitval"
    unless_null $P515, vivify_491
    new $P515, "Undef"
  vivify_491:
    div $P516, $P515, 2
    set $I517, $P516
    new $P518, 'Integer'
    set $P518, $I517
    store_lex "$digitval", $P518
.annotate 'line', 872
    find_lex $P522, "$digitval"
    unless_null $P522, vivify_492
    new $P522, "Undef"
  vivify_492:
    set $N523, $P522
    islt $I524, $N523, 0.0
    unless $I524, unless_521
    new $P520, 'Integer'
    set $P520, $I524
    goto unless_521_end
  unless_521:
    find_lex $P525, "$digitval"
    unless_null $P525, vivify_493
    new $P525, "Undef"
  vivify_493:
    set $N526, $P525
    find_lex $P527, "$base"
    unless_null $P527, vivify_494
    new $P527, "Undef"
  vivify_494:
    set $N528, $P527
    isge $I529, $N526, $N528
    new $P520, 'Integer'
    set $P520, $I529
  unless_521_end:
    unless $P520, if_519_end
.annotate 'line', 873
    find_lex $P530, "$src"
    unless_null $P530, vivify_495
    new $P530, "Undef"
  vivify_495:
    new $P531, 'String'
    set $P531, "Invalid radix conversion of character '"
    find_lex $P532, "$char"
    unless_null $P532, vivify_496
    new $P532, "Undef"
  vivify_496:
    concat $P533, $P531, $P532
    concat $P534, $P533, "'"
    $P530."panic"($P534)
  if_519_end:
.annotate 'line', 875
    find_lex $P535, "$base"
    unless_null $P535, vivify_497
    new $P535, "Undef"
  vivify_497:
    find_lex $P536, "$result"
    unless_null $P536, vivify_498
    new $P536, "Undef"
  vivify_498:
    mul $P537, $P535, $P536
    find_lex $P538, "$digitval"
    unless_null $P538, vivify_499
    new $P538, "Undef"
  vivify_499:
    add $P539, $P537, $P538
    store_lex "$result", $P539
.annotate 'line', 876
    find_lex $P540, "$i"
    unless_null $P540, vivify_500
    new $P540, "Undef"
  vivify_500:
    add $P541, $P540, 1
    store_lex "$i", $P541
    new $P542, "ResizablePMCArray"
    push $P542, $P539
    push $P542, $P541
.annotate 'line', 867
    .return ($P542)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_552
.annotate 'line', 881
    .const 'Sub' $P558 = "123_1306916546.01542" 
    capture_lex $P558
    .lex "$ints", param_552
.annotate 'line', 882
    find_lex $P555, "$ints"
    unless_null $P555, vivify_502
    new $P555, "Undef"
  vivify_502:
    does $I556, $P555, "array"
    if $I556, if_554
.annotate 'line', 889
    find_lex $P578, "$ints"
    unless_null $P578, vivify_503
    new $P578, "Undef"
  vivify_503:
    $I579 = $P578."ast"()
    chr $S580, $I579
    new $P581, 'String'
    set $P581, $S580
.annotate 'line', 888
    set $P553, $P581
.annotate 'line', 882
    goto if_554_end
  if_554:
    .const 'Sub' $P558 = "123_1306916546.01542" 
    capture_lex $P558
    $P577 = $P558()
    set $P553, $P577
  if_554_end:
.annotate 'line', 881
    .return ($P553)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block557"  :anon :subid("123_1306916546.01542") :outer("122_1306916546.01542")
.annotate 'line', 882
    .const 'Sub' $P566 = "124_1306916546.01542" 
    capture_lex $P566
.annotate 'line', 883
    new $P559, "Undef"
    .lex "$result", $P559
    new $P560, "String"
    assign $P560, ""
    store_lex "$result", $P560
.annotate 'line', 884
    find_lex $P562, "$ints"
    unless_null $P562, vivify_504
    new $P562, "Undef"
  vivify_504:
    defined $I563, $P562
    unless $I563, for_undef_505
    iter $P561, $P562
    new $P574, 'ExceptionHandler'
    set_label $P574, loop573_handler
    $P574."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P574
  loop573_test:
    unless $P561, loop573_done
    shift $P564, $P561
  loop573_redo:
    .const 'Sub' $P566 = "124_1306916546.01542" 
    capture_lex $P566
    $P566($P564)
  loop573_next:
    goto loop573_test
  loop573_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P575, exception, 'type'
    eq $P575, .CONTROL_LOOP_NEXT, loop573_next
    eq $P575, .CONTROL_LOOP_REDO, loop573_redo
  loop573_done:
    pop_eh 
  for_undef_505:
    find_lex $P576, "$result"
    unless_null $P576, vivify_508
    new $P576, "Undef"
  vivify_508:
.annotate 'line', 882
    .return ($P576)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block565"  :anon :subid("124_1306916546.01542") :outer("123_1306916546.01542")
    .param pmc param_567
.annotate 'line', 884
    .lex "$_", param_567
.annotate 'line', 885
    find_lex $P568, "$result"
    unless_null $P568, vivify_506
    new $P568, "Undef"
  vivify_506:
    find_lex $P569, "$_"
    unless_null $P569, vivify_507
    new $P569, "Undef"
  vivify_507:
    $I570 = $P569."ast"()
    chr $S571, $I570
    concat $P572, $P568, $S571
    store_lex "$result", $P572
.annotate 'line', 884
    .return ($P572)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("125_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_591
.annotate 'line', 894
    .lex "self", param_591
.annotate 'line', 895
    get_hll_global $P592, "GLOBAL"
    nqp_get_package_through_who $P593, $P592, "PAST"
    get_who $P594, $P593
    set $P595, $P594["Op"]
.annotate 'line', 901
    new $P596, "ResizablePMCArray"
    push $P596, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P596, "    if null $P0 goto ctxsave_done"
    push $P596, "    $I0 = can $P0, \"ctxsave\""
    push $P596, "    unless $I0 goto ctxsave_done"
    push $P596, "    $P0.\"ctxsave\"()"
    push $P596, "  ctxsave_done:"
    $P597 = $P595."new"($P596 :named("inline"))
.annotate 'line', 894
    .return ($P597)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("126_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_599
    .param pmc param_600
.annotate 'line', 908
    .const 'Sub' $P612 = "127_1306916546.01542" 
    capture_lex $P612
    .lex "self", param_599
    .lex "$block", param_600
.annotate 'line', 909
    new $P601, "Undef"
    .lex "$outer_ctx", $P601
    find_dynamic_lex $P604, "%*COMPILING"
    unless_null $P604, vivify_509
    get_hll_global $P602, "GLOBAL"
    get_who $P603, $P602
    set $P604, $P603["%COMPILING"]
    unless_null $P604, vivify_510
    die "Contextual %*COMPILING not found"
  vivify_510:
  vivify_509:
    set $P605, $P604["%?OPTIONS"]
    unless_null $P605, vivify_511
    $P605 = root_new ['parrot';'Hash']
  vivify_511:
    set $P606, $P605["outer_ctx"]
    unless_null $P606, vivify_512
    new $P606, "Undef"
  vivify_512:
    store_lex "$outer_ctx", $P606
.annotate 'line', 910
    find_lex $P609, "$outer_ctx"
    unless_null $P609, vivify_513
    new $P609, "Undef"
  vivify_513:
    defined $I610, $P609
    if $I610, if_608
    new $P607, 'Integer'
    set $P607, $I610
    goto if_608_end
  if_608:
    .const 'Sub' $P612 = "127_1306916546.01542" 
    capture_lex $P612
    $P637 = $P612()
    set $P607, $P637
  if_608_end:
.annotate 'line', 908
    .return ($P607)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block611"  :anon :subid("127_1306916546.01542") :outer("126_1306916546.01542")
.annotate 'line', 910
    .const 'Sub' $P626 = "128_1306916546.01542" 
    capture_lex $P626
.annotate 'line', 911
    $P613 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P613
    find_lex $P614, "$outer_ctx"
    unless_null $P614, vivify_514
    new $P614, "Undef"
  vivify_514:
    getattribute $P615, $P614, "current_namespace"
    $P616 = $P615."get_name"()
    store_lex "@ns", $P616
.annotate 'line', 912
    find_lex $P617, "@ns"
    unless_null $P617, vivify_515
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    $P617."shift"()
.annotate 'line', 913
    find_lex $P618, "$block"
    unless_null $P618, vivify_516
    new $P618, "Undef"
  vivify_516:
    find_lex $P619, "@ns"
    unless_null $P619, vivify_517
    $P619 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    $P618."namespace"($P619)
.annotate 'line', 914
    find_lex $P621, "$outer_ctx"
    unless_null $P621, vivify_518
    new $P621, "Undef"
  vivify_518:
    $P622 = $P621."lexpad_full"()
    defined $I623, $P622
    unless $I623, for_undef_519
    iter $P620, $P622
    new $P635, 'ExceptionHandler'
    set_label $P635, loop634_handler
    $P635."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P635
  loop634_test:
    unless $P620, loop634_done
    shift $P624, $P620
  loop634_redo:
    .const 'Sub' $P626 = "128_1306916546.01542" 
    capture_lex $P626
    $P626($P624)
  loop634_next:
    goto loop634_test
  loop634_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P636, exception, 'type'
    eq $P636, .CONTROL_LOOP_NEXT, loop634_next
    eq $P636, .CONTROL_LOOP_REDO, loop634_redo
  loop634_done:
    pop_eh 
  for_undef_519:
.annotate 'line', 910
    .return ($P620)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block625"  :anon :subid("128_1306916546.01542") :outer("127_1306916546.01542")
    .param pmc param_627
.annotate 'line', 914
    .lex "$_", param_627
.annotate 'line', 915
    find_lex $P628, "$block"
    unless_null $P628, vivify_520
    new $P628, "Undef"
  vivify_520:
    find_lex $P629, "$_"
    unless_null $P629, vivify_521
    new $P629, "Undef"
  vivify_521:
    $P630 = $P629."key"()
    find_lex $P631, "$_"
    unless_null $P631, vivify_522
    new $P631, "Undef"
  vivify_522:
    $P632 = $P631."value"()
    $P633 = $P628."symbol"($P630, "lexical" :named("scope"), $P632 :named("value"))
.annotate 'line', 914
    .return ($P633)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("129_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_641
    .param pmc param_642
    .param pmc param_643 :optional
    .param int has_param_643 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P728 = "131_1306916546.01542" 
    capture_lex $P728
    .const 'Sub' $P692 = "130_1306916546.01542" 
    capture_lex $P692
    new $P640, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P640, control_639
    push_eh $P640
    .lex "self", param_641
    .lex "$/", param_642
    if has_param_643, optparam_523
    new $P644, "Undef"
    set param_643, $P644
  optparam_523:
    .lex "$key", param_643
.annotate 'line', 923
    new $P645, "Undef"
    .lex "$past", $P645
.annotate 'line', 922
    find_lex $P647, "$key"
    unless_null $P647, vivify_524
    new $P647, "Undef"
  vivify_524:
    if $P647, unless_646_end
    new $P648, "Exception"
    set $P648['type'], .CONTROL_RETURN
    new $P649, "Integer"
    assign $P649, 0
    setattribute $P648, 'payload', $P649
    throw $P648
  unless_646_end:
.annotate 'line', 923
    find_lex $P651, "$/"
    unless_null $P651, vivify_525
    new $P651, "Undef"
  vivify_525:
    $P652 = $P651."ast"()
    set $P650, $P652
    defined $I654, $P650
    if $I654, default_653
    find_lex $P655, "$/"
    unless_null $P655, vivify_526
    $P655 = root_new ['parrot';'Hash']
  vivify_526:
    set $P656, $P655["OPER"]
    unless_null $P656, vivify_527
    new $P656, "Undef"
  vivify_527:
    $P657 = $P656."ast"()
    set $P650, $P657
  default_653:
    store_lex "$past", $P650
.annotate 'line', 924
    find_lex $P659, "$past"
    unless_null $P659, vivify_528
    new $P659, "Undef"
  vivify_528:
    if $P659, unless_658_end
.annotate 'line', 925
    get_hll_global $P660, "GLOBAL"
    nqp_get_package_through_who $P661, $P660, "PAST"
    get_who $P662, $P661
    set $P663, $P662["Op"]
    find_lex $P664, "$/"
    unless_null $P664, vivify_529
    new $P664, "Undef"
  vivify_529:
    $P665 = $P663."new"($P664 :named("node"))
    store_lex "$past", $P665
.annotate 'line', 926
    find_lex $P667, "$/"
    unless_null $P667, vivify_530
    $P667 = root_new ['parrot';'Hash']
  vivify_530:
    set $P668, $P667["OPER"]
    unless_null $P668, vivify_531
    $P668 = root_new ['parrot';'Hash']
  vivify_531:
    set $P669, $P668["O"]
    unless_null $P669, vivify_532
    $P669 = root_new ['parrot';'Hash']
  vivify_532:
    set $P670, $P669["pasttype"]
    unless_null $P670, vivify_533
    new $P670, "Undef"
  vivify_533:
    if $P670, if_666
.annotate 'line', 927
    find_lex $P678, "$/"
    unless_null $P678, vivify_534
    $P678 = root_new ['parrot';'Hash']
  vivify_534:
    set $P679, $P678["OPER"]
    unless_null $P679, vivify_535
    $P679 = root_new ['parrot';'Hash']
  vivify_535:
    set $P680, $P679["O"]
    unless_null $P680, vivify_536
    $P680 = root_new ['parrot';'Hash']
  vivify_536:
    set $P681, $P680["pirop"]
    unless_null $P681, vivify_537
    new $P681, "Undef"
  vivify_537:
    unless $P681, if_677_end
    find_lex $P682, "$past"
    unless_null $P682, vivify_538
    new $P682, "Undef"
  vivify_538:
    find_lex $P683, "$/"
    unless_null $P683, vivify_539
    $P683 = root_new ['parrot';'Hash']
  vivify_539:
    set $P684, $P683["OPER"]
    unless_null $P684, vivify_540
    $P684 = root_new ['parrot';'Hash']
  vivify_540:
    set $P685, $P684["O"]
    unless_null $P685, vivify_541
    $P685 = root_new ['parrot';'Hash']
  vivify_541:
    set $P686, $P685["pirop"]
    unless_null $P686, vivify_542
    new $P686, "Undef"
  vivify_542:
    set $S687, $P686
    $P682."pirop"($S687)
  if_677_end:
    goto if_666_end
  if_666:
.annotate 'line', 926
    find_lex $P671, "$past"
    unless_null $P671, vivify_543
    new $P671, "Undef"
  vivify_543:
    find_lex $P672, "$/"
    unless_null $P672, vivify_544
    $P672 = root_new ['parrot';'Hash']
  vivify_544:
    set $P673, $P672["OPER"]
    unless_null $P673, vivify_545
    $P673 = root_new ['parrot';'Hash']
  vivify_545:
    set $P674, $P673["O"]
    unless_null $P674, vivify_546
    $P674 = root_new ['parrot';'Hash']
  vivify_546:
    set $P675, $P674["pasttype"]
    unless_null $P675, vivify_547
    new $P675, "Undef"
  vivify_547:
    set $S676, $P675
    $P671."pasttype"($S676)
  if_666_end:
.annotate 'line', 928
    find_lex $P689, "$past"
    unless_null $P689, vivify_548
    new $P689, "Undef"
  vivify_548:
    $P690 = $P689."name"()
    if $P690, unless_688_end
    .const 'Sub' $P692 = "130_1306916546.01542" 
    capture_lex $P692
    $P692()
  unless_688_end:
  unless_658_end:
.annotate 'line', 934
    find_lex $P715, "$key"
    unless_null $P715, vivify_556
    new $P715, "Undef"
  vivify_556:
    set $S716, $P715
    iseq $I717, $S716, "POSTFIX"
    if $I717, if_714
.annotate 'line', 936
    find_lex $P723, "$/"
    unless_null $P723, vivify_557
    new $P723, "Undef"
  vivify_557:
    $P724 = $P723."list"()
    defined $I725, $P724
    unless $I725, for_undef_558
    iter $P722, $P724
    new $P740, 'ExceptionHandler'
    set_label $P740, loop739_handler
    $P740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P740
  loop739_test:
    unless $P722, loop739_done
    shift $P726, $P722
  loop739_redo:
    .const 'Sub' $P728 = "131_1306916546.01542" 
    capture_lex $P728
    $P728($P726)
  loop739_next:
    goto loop739_test
  loop739_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P741, exception, 'type'
    eq $P741, .CONTROL_LOOP_NEXT, loop739_next
    eq $P741, .CONTROL_LOOP_REDO, loop739_redo
  loop739_done:
    pop_eh 
  for_undef_558:
.annotate 'line', 935
    goto if_714_end
  if_714:
.annotate 'line', 934
    find_lex $P718, "$past"
    unless_null $P718, vivify_562
    new $P718, "Undef"
  vivify_562:
    find_lex $P719, "$/"
    unless_null $P719, vivify_563
    $P719 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $P720, $P719[0]
    unless_null $P720, vivify_564
    new $P720, "Undef"
  vivify_564:
    $P721 = $P720."ast"()
    $P718."unshift"($P721)
  if_714_end:
.annotate 'line', 938
    find_lex $P742, "$/"
    find_lex $P743, "$past"
    unless_null $P743, vivify_565
    new $P743, "Undef"
  vivify_565:
    $P744 = $P742."!make"($P743)
.annotate 'line', 921
    .return ($P744)
  control_639:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P745, exception, "payload"
    .return ($P745)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block691"  :anon :subid("130_1306916546.01542") :outer("129_1306916546.01542")
.annotate 'line', 930
    new $P693, "Undef"
    .lex "$name", $P693
.annotate 'line', 929
    find_lex $P695, "$key"
    unless_null $P695, vivify_549
    new $P695, "Undef"
  vivify_549:
    set $S696, $P695
    iseq $I697, $S696, "LIST"
    unless $I697, if_694_end
    new $P698, "String"
    assign $P698, "infix"
    store_lex "$key", $P698
  if_694_end:
.annotate 'line', 930
    find_lex $P699, "$key"
    unless_null $P699, vivify_550
    new $P699, "Undef"
  vivify_550:
    set $S700, $P699
    downcase $S701, $S700
    new $P702, 'String'
    set $P702, $S701
    concat $P703, $P702, ":<"
    find_lex $P704, "$/"
    unless_null $P704, vivify_551
    $P704 = root_new ['parrot';'Hash']
  vivify_551:
    set $P705, $P704["OPER"]
    unless_null $P705, vivify_552
    $P705 = root_new ['parrot';'Hash']
  vivify_552:
    set $P706, $P705["sym"]
    unless_null $P706, vivify_553
    new $P706, "Undef"
  vivify_553:
    concat $P707, $P703, $P706
    concat $P708, $P707, ">"
    store_lex "$name", $P708
.annotate 'line', 931
    find_lex $P709, "$past"
    unless_null $P709, vivify_554
    new $P709, "Undef"
  vivify_554:
    new $P710, "String"
    assign $P710, "&"
    find_lex $P711, "$name"
    unless_null $P711, vivify_555
    new $P711, "Undef"
  vivify_555:
    concat $P712, $P710, $P711
    $P713 = $P709."name"($P712)
.annotate 'line', 928
    .return ($P713)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block727"  :anon :subid("131_1306916546.01542") :outer("129_1306916546.01542")
    .param pmc param_729
.annotate 'line', 936
    .lex "$_", param_729
    find_lex $P732, "$_"
    unless_null $P732, vivify_559
    new $P732, "Undef"
  vivify_559:
    $P733 = $P732."ast"()
    defined $I734, $P733
    if $I734, if_731
    new $P730, 'Integer'
    set $P730, $I734
    goto if_731_end
  if_731:
    find_lex $P735, "$past"
    unless_null $P735, vivify_560
    new $P735, "Undef"
  vivify_560:
    find_lex $P736, "$_"
    unless_null $P736, vivify_561
    new $P736, "Undef"
  vivify_561:
    $P737 = $P736."ast"()
    $P738 = $P735."push"($P737)
    set $P730, $P738
  if_731_end:
    .return ($P730)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("132_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_747
    .param pmc param_748
.annotate 'line', 941
    .lex "self", param_747
    .lex "$/", param_748
    find_lex $P749, "$/"
    find_lex $P750, "$/"
    unless_null $P750, vivify_566
    $P750 = root_new ['parrot';'Hash']
  vivify_566:
    set $P751, $P750["circumfix"]
    unless_null $P751, vivify_567
    new $P751, "Undef"
  vivify_567:
    $P752 = $P751."ast"()
    $P753 = $P749."!make"($P752)
    .return ($P753)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("133_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_755
    .param pmc param_756
.annotate 'line', 943
    .lex "self", param_755
    .lex "$/", param_756
    find_lex $P757, "$/"
    find_lex $P758, "$/"
    unless_null $P758, vivify_568
    $P758 = root_new ['parrot';'Hash']
  vivify_568:
    set $P759, $P758["term"]
    unless_null $P759, vivify_569
    new $P759, "Undef"
  vivify_569:
    $P760 = $P759."ast"()
    $P761 = $P757."!make"($P760)
    .return ($P761)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("134_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_763
    .param pmc param_764
.annotate 'line', 944
    .lex "self", param_763
    .lex "$/", param_764
    find_lex $P765, "$/"
    new $P766, "Undef"
    $P767 = $P765."!make"($P766)
    .return ($P767)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("135_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_769
    .param pmc param_770
.annotate 'line', 945
    .lex "self", param_769
    .lex "$/", param_770
    find_lex $P771, "$/"
    find_lex $P772, "$/"
    unless_null $P772, vivify_570
    $P772 = root_new ['parrot';'Hash']
  vivify_570:
    set $P773, $P772["term"]
    unless_null $P773, vivify_571
    new $P773, "Undef"
  vivify_571:
    $P774 = $P773."ast"()
    $P775 = $P771."!make"($P774)
    .return ($P775)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("136_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_777
    .param pmc param_778
.annotate 'line', 947
    .lex "self", param_777
    .lex "$/", param_778
    find_lex $P779, "$/"
    find_lex $P780, "$/"
    unless_null $P780, vivify_572
    $P780 = root_new ['parrot';'Hash']
  vivify_572:
    set $P781, $P780["VALUE"]
    unless_null $P781, vivify_573
    new $P781, "Undef"
  vivify_573:
    $P782 = $P781."ast"()
    $P783 = $P779."!make"($P782)
    .return ($P783)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("137_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_785
    .param pmc param_786
.annotate 'line', 949
    .lex "self", param_785
    .lex "$/", param_786
    find_lex $P787, "$/"
    find_lex $P788, "$/"
    unless_null $P788, vivify_574
    new $P788, "Undef"
  vivify_574:
    set $N789, $P788
    $P790 = $P787."!make"($N789)
    .return ($P790)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("138_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_792
    .param pmc param_793
.annotate 'line', 951
    .lex "self", param_792
    .lex "$/", param_793
    find_lex $P794, "$/"
    find_lex $P795, "$/"
    unless_null $P795, vivify_575
    new $P795, "Undef"
  vivify_575:
    $P796 = "string_to_int"($P795, 10)
    $P797 = $P794."!make"($P796)
    .return ($P797)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("139_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_799
    .param pmc param_800
.annotate 'line', 952
    .lex "self", param_799
    .lex "$/", param_800
    find_lex $P801, "$/"
    find_lex $P802, "$/"
    unless_null $P802, vivify_576
    new $P802, "Undef"
  vivify_576:
    $P803 = "string_to_int"($P802, 16)
    $P804 = $P801."!make"($P803)
    .return ($P804)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("140_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_806
    .param pmc param_807
.annotate 'line', 953
    .lex "self", param_806
    .lex "$/", param_807
    find_lex $P808, "$/"
    find_lex $P809, "$/"
    unless_null $P809, vivify_577
    new $P809, "Undef"
  vivify_577:
    $P810 = "string_to_int"($P809, 8)
    $P811 = $P808."!make"($P810)
    .return ($P811)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("141_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_813
    .param pmc param_814
.annotate 'line', 954
    .lex "self", param_813
    .lex "$/", param_814
    find_lex $P815, "$/"
    find_lex $P816, "$/"
    unless_null $P816, vivify_578
    new $P816, "Undef"
  vivify_578:
    $P817 = "string_to_int"($P816, 2)
    $P818 = $P815."!make"($P817)
    .return ($P818)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("142_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_820
    .param pmc param_821
.annotate 'line', 956
    .const 'Sub' $P840 = "143_1306916546.01542" 
    capture_lex $P840
    .lex "self", param_820
    .lex "$/", param_821
.annotate 'line', 957
    new $P822, "Undef"
    .lex "$past", $P822
    find_lex $P823, "$/"
    unless_null $P823, vivify_579
    $P823 = root_new ['parrot';'Hash']
  vivify_579:
    set $P824, $P823["quote_delimited"]
    unless_null $P824, vivify_580
    new $P824, "Undef"
  vivify_580:
    $P825 = $P824."ast"()
    store_lex "$past", $P825
.annotate 'line', 958
    find_lex $P827, "$/"
    unless_null $P827, vivify_581
    new $P827, "Undef"
  vivify_581:
    $P828 = $P827."CURSOR"()
    $P829 = $P828."quotemod_check"("w")
    unless $P829, if_826_end
.annotate 'line', 959
    get_hll_global $P831, "GLOBAL"
    nqp_get_package_through_who $P832, $P831, "PAST"
    get_who $P833, $P832
    set $P834, $P833["Node"]
    find_lex $P835, "$past"
    unless_null $P835, vivify_582
    new $P835, "Undef"
  vivify_582:
    $P836 = $P834."ACCEPTS"($P835)
    if $P836, if_830
.annotate 'line', 962
    .const 'Sub' $P840 = "143_1306916546.01542" 
    capture_lex $P840
    $P840()
    goto if_830_end
  if_830:
.annotate 'line', 960
    find_lex $P837, "$/"
    unless_null $P837, vivify_593
    new $P837, "Undef"
  vivify_593:
    $P838 = $P837."CURSOR"()
    $P838."panic"("Can't form :w list from non-constant strings (yet)")
  if_830_end:
  if_826_end:
.annotate 'line', 973
    get_hll_global $P879, "GLOBAL"
    nqp_get_package_through_who $P880, $P879, "PAST"
    get_who $P881, $P880
    set $P882, $P881["Node"]
    find_lex $P883, "$past"
    unless_null $P883, vivify_594
    new $P883, "Undef"
  vivify_594:
    $P884 = $P882."ACCEPTS"($P883)
    isfalse $I885, $P884
    unless $I885, if_878_end
.annotate 'line', 974
    get_hll_global $P886, "GLOBAL"
    nqp_get_package_through_who $P887, $P886, "PAST"
    get_who $P888, $P887
    set $P889, $P888["Val"]
    find_lex $P890, "$past"
    unless_null $P890, vivify_595
    new $P890, "Undef"
  vivify_595:
    set $S891, $P890
    $P892 = $P889."new"($S891 :named("value"))
    store_lex "$past", $P892
  if_878_end:
.annotate 'line', 976
    find_lex $P893, "$/"
    find_lex $P894, "$past"
    unless_null $P894, vivify_596
    new $P894, "Undef"
  vivify_596:
    $P895 = $P893."!make"($P894)
.annotate 'line', 956
    .return ($P895)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block839"  :anon :subid("143_1306916546.01542") :outer("142_1306916546.01542")
.annotate 'line', 962
    .const 'Sub' $P866 = "144_1306916546.01542" 
    capture_lex $P866
.annotate 'line', 963
    $P841 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P841
    get_hll_global $P842, "GLOBAL"
    nqp_get_package_through_who $P843, $P842, "HLL"
    nqp_get_package_through_who $P844, $P843, "Grammar"
    get_who $P845, $P844
    set $P846, $P845["split_words"]
    find_lex $P847, "$/"
    unless_null $P847, vivify_583
    new $P847, "Undef"
  vivify_583:
    find_lex $P848, "$past"
    unless_null $P848, vivify_584
    new $P848, "Undef"
  vivify_584:
    $P849 = $P846($P847, $P848)
    store_lex "@words", $P849
.annotate 'line', 964
    find_lex $P852, "@words"
    unless_null $P852, vivify_585
    $P852 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $N853, $P852
    isne $I854, $N853, 1.0
    if $I854, if_851
.annotate 'line', 969
    find_lex $P874, "@words"
    unless_null $P874, vivify_586
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    set $P875, $P874[0]
    unless_null $P875, vivify_587
    new $P875, "Undef"
  vivify_587:
    set $S876, $P875
    new $P877, 'String'
    set $P877, $S876
    store_lex "$past", $P877
.annotate 'line', 968
    set $P850, $P877
.annotate 'line', 964
    goto if_851_end
  if_851:
.annotate 'line', 965
    get_hll_global $P855, "GLOBAL"
    nqp_get_package_through_who $P856, $P855, "PAST"
    get_who $P857, $P856
    set $P858, $P857["Op"]
    find_lex $P859, "$/"
    unless_null $P859, vivify_588
    new $P859, "Undef"
  vivify_588:
    $P860 = $P858."new"("list" :named("pasttype"), $P859 :named("node"))
    store_lex "$past", $P860
.annotate 'line', 966
    find_lex $P862, "@words"
    unless_null $P862, vivify_589
    $P862 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    defined $I863, $P862
    unless $I863, for_undef_590
    iter $P861, $P862
    new $P872, 'ExceptionHandler'
    set_label $P872, loop871_handler
    $P872."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P872
  loop871_test:
    unless $P861, loop871_done
    shift $P864, $P861
  loop871_redo:
    .const 'Sub' $P866 = "144_1306916546.01542" 
    capture_lex $P866
    $P866($P864)
  loop871_next:
    goto loop871_test
  loop871_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P873, exception, 'type'
    eq $P873, .CONTROL_LOOP_NEXT, loop871_next
    eq $P873, .CONTROL_LOOP_REDO, loop871_redo
  loop871_done:
    pop_eh 
  for_undef_590:
.annotate 'line', 964
    set $P850, $P861
  if_851_end:
.annotate 'line', 962
    .return ($P850)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block865"  :anon :subid("144_1306916546.01542") :outer("143_1306916546.01542")
    .param pmc param_867
.annotate 'line', 966
    .lex "$_", param_867
    find_lex $P868, "$past"
    unless_null $P868, vivify_591
    new $P868, "Undef"
  vivify_591:
    find_lex $P869, "$_"
    unless_null $P869, vivify_592
    new $P869, "Undef"
  vivify_592:
    $P870 = $P868."push"($P869)
    .return ($P870)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("145_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_897
    .param pmc param_898
.annotate 'line', 979
    .const 'Sub' $P910 = "146_1306916546.01542" 
    capture_lex $P910
    .lex "self", param_897
    .lex "$/", param_898
.annotate 'line', 980
    $P899 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P899
.annotate 'line', 981
    new $P900, "Undef"
    .lex "$lastlit", $P900
.annotate 'line', 997
    new $P901, "Undef"
    .lex "$past", $P901
.annotate 'line', 979
    find_lex $P902, "@parts"
    unless_null $P902, vivify_597
    $P902 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
.annotate 'line', 981
    new $P903, "String"
    assign $P903, ""
    store_lex "$lastlit", $P903
.annotate 'line', 982
    find_lex $P905, "$/"
    unless_null $P905, vivify_598
    $P905 = root_new ['parrot';'Hash']
  vivify_598:
    set $P906, $P905["quote_atom"]
    unless_null $P906, vivify_599
    new $P906, "Undef"
  vivify_599:
    defined $I907, $P906
    unless $I907, for_undef_600
    iter $P904, $P906
    new $P949, 'ExceptionHandler'
    set_label $P949, loop948_handler
    $P949."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P949
  loop948_test:
    unless $P904, loop948_done
    shift $P908, $P904
  loop948_redo:
    .const 'Sub' $P910 = "146_1306916546.01542" 
    capture_lex $P910
    $P910($P908)
  loop948_next:
    goto loop948_test
  loop948_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P950, exception, 'type'
    eq $P950, .CONTROL_LOOP_NEXT, loop948_next
    eq $P950, .CONTROL_LOOP_REDO, loop948_redo
  loop948_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 996
    find_lex $P952, "$lastlit"
    unless_null $P952, vivify_613
    new $P952, "Undef"
  vivify_613:
    set $S953, $P952
    isgt $I954, $S953, ""
    unless $I954, if_951_end
    find_lex $P955, "@parts"
    unless_null $P955, vivify_614
    $P955 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P956, "$lastlit"
    unless_null $P956, vivify_615
    new $P956, "Undef"
  vivify_615:
    $P955."push"($P956)
  if_951_end:
.annotate 'line', 997
    find_lex $P959, "@parts"
    unless_null $P959, vivify_616
    $P959 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    if $P959, if_958
    new $P962, "String"
    assign $P962, ""
    set $P957, $P962
    goto if_958_end
  if_958:
    find_lex $P960, "@parts"
    unless_null $P960, vivify_617
    $P960 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    $P961 = $P960."shift"()
    set $P957, $P961
  if_958_end:
    store_lex "$past", $P957
.annotate 'line', 998
    new $P973, 'ExceptionHandler'
    set_label $P973, loop972_handler
    $P973."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P973
  loop972_test:
    find_lex $P963, "@parts"
    unless_null $P963, vivify_618
    $P963 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    unless $P963, loop972_done
  loop972_redo:
.annotate 'line', 999
    get_hll_global $P964, "GLOBAL"
    nqp_get_package_through_who $P965, $P964, "PAST"
    get_who $P966, $P965
    set $P967, $P966["Op"]
    find_lex $P968, "$past"
    unless_null $P968, vivify_619
    new $P968, "Undef"
  vivify_619:
    find_lex $P969, "@parts"
    unless_null $P969, vivify_620
    $P969 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    $P970 = $P969."shift"()
    $P971 = $P967."new"($P968, $P970, "concat" :named("pirop"))
    store_lex "$past", $P971
  loop972_next:
.annotate 'line', 998
    goto loop972_test
  loop972_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P974, exception, 'type'
    eq $P974, .CONTROL_LOOP_NEXT, loop972_next
    eq $P974, .CONTROL_LOOP_REDO, loop972_redo
  loop972_done:
    pop_eh 
.annotate 'line', 1001
    find_lex $P975, "$/"
    find_lex $P976, "$past"
    unless_null $P976, vivify_621
    new $P976, "Undef"
  vivify_621:
    $P977 = $P975."!make"($P976)
.annotate 'line', 979
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block909"  :anon :subid("146_1306916546.01542") :outer("145_1306916546.01542")
    .param pmc param_912
.annotate 'line', 983
    new $P911, "Undef"
    .lex "$ast", $P911
    .lex "$_", param_912
    find_lex $P913, "$_"
    unless_null $P913, vivify_601
    new $P913, "Undef"
  vivify_601:
    $P914 = $P913."ast"()
    store_lex "$ast", $P914
.annotate 'line', 984
    get_hll_global $P917, "GLOBAL"
    nqp_get_package_through_who $P918, $P917, "PAST"
    get_who $P919, $P918
    set $P920, $P919["Node"]
    find_lex $P921, "$ast"
    unless_null $P921, vivify_602
    new $P921, "Undef"
  vivify_602:
    $P922 = $P920."ACCEPTS"($P921)
    isfalse $I923, $P922
    if $I923, if_916
.annotate 'line', 987
    find_lex $P929, "$ast"
    unless_null $P929, vivify_603
    new $P929, "Undef"
  vivify_603:
    get_hll_global $P930, "GLOBAL"
    nqp_get_package_through_who $P931, $P930, "PAST"
    get_who $P932, $P931
    set $P933, $P932["Val"]
    $P934 = $P929."isa"($P933)
    if $P934, if_928
.annotate 'line', 991
    find_lex $P940, "$lastlit"
    unless_null $P940, vivify_604
    new $P940, "Undef"
  vivify_604:
    set $S941, $P940
    isgt $I942, $S941, ""
    unless $I942, if_939_end
    find_lex $P943, "@parts"
    unless_null $P943, vivify_605
    $P943 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    find_lex $P944, "$lastlit"
    unless_null $P944, vivify_606
    new $P944, "Undef"
  vivify_606:
    $P943."push"($P944)
  if_939_end:
.annotate 'line', 992
    find_lex $P945, "@parts"
    unless_null $P945, vivify_607
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    find_lex $P946, "$ast"
    unless_null $P946, vivify_608
    new $P946, "Undef"
  vivify_608:
    $P945."push"($P946)
.annotate 'line', 993
    new $P947, "String"
    assign $P947, ""
    store_lex "$lastlit", $P947
.annotate 'line', 990
    set $P927, $P947
.annotate 'line', 987
    goto if_928_end
  if_928:
.annotate 'line', 988
    find_lex $P935, "$lastlit"
    unless_null $P935, vivify_609
    new $P935, "Undef"
  vivify_609:
    find_lex $P936, "$ast"
    unless_null $P936, vivify_610
    new $P936, "Undef"
  vivify_610:
    $S937 = $P936."value"()
    concat $P938, $P935, $S937
    store_lex "$lastlit", $P938
.annotate 'line', 987
    set $P927, $P938
  if_928_end:
    set $P915, $P927
.annotate 'line', 984
    goto if_916_end
  if_916:
.annotate 'line', 985
    find_lex $P924, "$lastlit"
    unless_null $P924, vivify_611
    new $P924, "Undef"
  vivify_611:
    find_lex $P925, "$ast"
    unless_null $P925, vivify_612
    new $P925, "Undef"
  vivify_612:
    concat $P926, $P924, $P925
    store_lex "$lastlit", $P926
.annotate 'line', 984
    set $P915, $P926
  if_916_end:
.annotate 'line', 982
    .return ($P915)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("147_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 1004
    .lex "self", param_979
    .lex "$/", param_980
.annotate 'line', 1005
    find_lex $P981, "$/"
    find_lex $P984, "$/"
    unless_null $P984, vivify_622
    $P984 = root_new ['parrot';'Hash']
  vivify_622:
    set $P985, $P984["quote_escape"]
    unless_null $P985, vivify_623
    new $P985, "Undef"
  vivify_623:
    if $P985, if_983
    find_lex $P989, "$/"
    unless_null $P989, vivify_624
    new $P989, "Undef"
  vivify_624:
    set $S990, $P989
    new $P982, 'String'
    set $P982, $S990
    goto if_983_end
  if_983:
    find_lex $P986, "$/"
    unless_null $P986, vivify_625
    $P986 = root_new ['parrot';'Hash']
  vivify_625:
    set $P987, $P986["quote_escape"]
    unless_null $P987, vivify_626
    new $P987, "Undef"
  vivify_626:
    $P988 = $P987."ast"()
    set $P982, $P988
  if_983_end:
    $P991 = $P981."!make"($P982)
.annotate 'line', 1004
    .return ($P991)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("148_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 1008
    .lex "self", param_993
    .lex "$/", param_994
    find_lex $P995, "$/"
    $P996 = $P995."!make"("\\")
    .return ($P996)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("149_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_998
    .param pmc param_999
.annotate 'line', 1009
    .lex "self", param_998
    .lex "$/", param_999
    find_lex $P1000, "$/"
    find_lex $P1001, "$/"
    unless_null $P1001, vivify_627
    $P1001 = root_new ['parrot';'Hash']
  vivify_627:
    set $P1002, $P1001["stopper"]
    unless_null $P1002, vivify_628
    new $P1002, "Undef"
  vivify_628:
    set $S1003, $P1002
    $P1004 = $P1000."!make"($S1003)
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("150_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1006
    .param pmc param_1007
.annotate 'line', 1011
    .lex "self", param_1006
    .lex "$/", param_1007
    find_lex $P1008, "$/"
    $P1009 = $P1008."!make"("\b")
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("151_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1011
    .param pmc param_1012
.annotate 'line', 1012
    .lex "self", param_1011
    .lex "$/", param_1012
    find_lex $P1013, "$/"
    $P1014 = $P1013."!make"("\n")
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("152_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 1013
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    $P1019 = $P1018."!make"("\r")
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("153_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1021
    .param pmc param_1022
.annotate 'line', 1014
    .lex "self", param_1021
    .lex "$/", param_1022
    find_lex $P1023, "$/"
    $P1024 = $P1023."!make"("\t")
    .return ($P1024)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("154_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1026
    .param pmc param_1027
.annotate 'line', 1015
    .lex "self", param_1026
    .lex "$/", param_1027
    find_lex $P1028, "$/"
    $P1029 = $P1028."!make"("\f")
    .return ($P1029)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("155_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1031
    .param pmc param_1032
.annotate 'line', 1016
    .lex "self", param_1031
    .lex "$/", param_1032
    find_lex $P1033, "$/"
    $P1034 = $P1033."!make"("\e")
    .return ($P1034)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("156_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1036
    .param pmc param_1037
.annotate 'line', 1018
    .lex "self", param_1036
    .lex "$/", param_1037
.annotate 'line', 1019
    find_lex $P1038, "$/"
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_629
    $P1041 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1042, $P1041["hexint"]
    unless_null $P1042, vivify_630
    new $P1042, "Undef"
  vivify_630:
    if $P1042, if_1040
    find_lex $P1045, "$/"
    unless_null $P1045, vivify_631
    $P1045 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1046, $P1045["hexints"]
    unless_null $P1046, vivify_632
    $P1046 = root_new ['parrot';'Hash']
  vivify_632:
    set $P1047, $P1046["hexint"]
    unless_null $P1047, vivify_633
    new $P1047, "Undef"
  vivify_633:
    set $P1039, $P1047
    goto if_1040_end
  if_1040:
    find_lex $P1043, "$/"
    unless_null $P1043, vivify_634
    $P1043 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1044, $P1043["hexint"]
    unless_null $P1044, vivify_635
    new $P1044, "Undef"
  vivify_635:
    set $P1039, $P1044
  if_1040_end:
    $P1048 = "ints_to_string"($P1039)
    $P1049 = $P1038."!make"($P1048)
.annotate 'line', 1018
    .return ($P1049)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("157_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1051
    .param pmc param_1052
.annotate 'line', 1022
    .lex "self", param_1051
    .lex "$/", param_1052
.annotate 'line', 1023
    find_lex $P1053, "$/"
    find_lex $P1056, "$/"
    unless_null $P1056, vivify_636
    $P1056 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1057, $P1056["octint"]
    unless_null $P1057, vivify_637
    new $P1057, "Undef"
  vivify_637:
    if $P1057, if_1055
    find_lex $P1060, "$/"
    unless_null $P1060, vivify_638
    $P1060 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1061, $P1060["octints"]
    unless_null $P1061, vivify_639
    $P1061 = root_new ['parrot';'Hash']
  vivify_639:
    set $P1062, $P1061["octint"]
    unless_null $P1062, vivify_640
    new $P1062, "Undef"
  vivify_640:
    set $P1054, $P1062
    goto if_1055_end
  if_1055:
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_641
    $P1058 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1059, $P1058["octint"]
    unless_null $P1059, vivify_642
    new $P1059, "Undef"
  vivify_642:
    set $P1054, $P1059
  if_1055_end:
    $P1063 = "ints_to_string"($P1054)
    $P1064 = $P1053."!make"($P1063)
.annotate 'line', 1022
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("158_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1066
    .param pmc param_1067
.annotate 'line', 1026
    .lex "self", param_1066
    .lex "$/", param_1067
.annotate 'line', 1027
    find_lex $P1068, "$/"
    find_lex $P1069, "$/"
    unless_null $P1069, vivify_643
    $P1069 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1070, $P1069["charspec"]
    unless_null $P1070, vivify_644
    new $P1070, "Undef"
  vivify_644:
    $P1071 = $P1070."ast"()
    $P1072 = $P1068."!make"($P1071)
.annotate 'line', 1026
    .return ($P1072)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("159_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1074
    .param pmc param_1075
.annotate 'line', 1030
    .lex "self", param_1074
    .lex "$/", param_1075
.annotate 'line', 1031
    find_lex $P1076, "$/"
    $P1077 = $P1076."!make"(unicode:"\x{0}")
.annotate 'line', 1030
    .return ($P1077)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("160_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1079
    .param pmc param_1080
.annotate 'line', 1034
    .lex "self", param_1079
    .lex "$/", param_1080
.annotate 'line', 1035
    find_lex $P1081, "$/"
    find_lex $P1084, "$/"
    unless_null $P1084, vivify_645
    $P1084 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1085, $P1084["textq"]
    unless_null $P1085, vivify_646
    new $P1085, "Undef"
  vivify_646:
    if $P1085, if_1083
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_647
    $P1091 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1092, $P1091["textqq"]
    unless_null $P1092, vivify_648
    new $P1092, "Undef"
  vivify_648:
    $P1093 = $P1092."Str"()
    set $P1082, $P1093
    goto if_1083_end
  if_1083:
    new $P1086, "String"
    assign $P1086, "\\"
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_649
    $P1087 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1088, $P1087["textq"]
    unless_null $P1088, vivify_650
    new $P1088, "Undef"
  vivify_650:
    $S1089 = $P1088."Str"()
    concat $P1090, $P1086, $S1089
    set $P1082, $P1090
  if_1083_end:
    $P1094 = $P1081."!make"($P1082)
.annotate 'line', 1034
    .return ($P1094)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("161_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1096
    .param pmc param_1097
.annotate 'line', 1038
    .lex "self", param_1096
    .lex "$/", param_1097
.annotate 'line', 1039
    new $P1098, "Undef"
    .lex "$codepoint", $P1098
.annotate 'line', 1040
    find_lex $P1101, "$/"
    unless_null $P1101, vivify_651
    $P1101 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1102, $P1101["integer"]
    unless_null $P1102, vivify_652
    new $P1102, "Undef"
  vivify_652:
    if $P1102, if_1100
.annotate 'line', 1041
    find_lex $P1106, "$/"
    unless_null $P1106, vivify_653
    new $P1106, "Undef"
  vivify_653:
    set $S1107, $P1106
    find_codepoint $I1108, $S1107
    new $P1099, 'Integer'
    set $P1099, $I1108
.annotate 'line', 1040
    goto if_1100_end
  if_1100:
    find_lex $P1103, "$/"
    unless_null $P1103, vivify_654
    $P1103 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1104, $P1103["integer"]
    unless_null $P1104, vivify_655
    new $P1104, "Undef"
  vivify_655:
    $P1105 = $P1104."ast"()
    set $P1099, $P1105
  if_1100_end:
    store_lex "$codepoint", $P1099
.annotate 'line', 1042
    find_lex $P1110, "$codepoint"
    unless_null $P1110, vivify_656
    new $P1110, "Undef"
  vivify_656:
    set $N1111, $P1110
    islt $I1112, $N1111, 0.0
    unless $I1112, if_1109_end
    find_lex $P1113, "$/"
    unless_null $P1113, vivify_657
    new $P1113, "Undef"
  vivify_657:
    $P1114 = $P1113."CURSOR"()
    new $P1115, 'String'
    set $P1115, "Unrecognized character name "
    find_lex $P1116, "$/"
    unless_null $P1116, vivify_658
    new $P1116, "Undef"
  vivify_658:
    concat $P1117, $P1115, $P1116
    $P1114."panic"($P1117)
  if_1109_end:
.annotate 'line', 1043
    find_lex $P1118, "$/"
    find_lex $P1119, "$codepoint"
    unless_null $P1119, vivify_659
    new $P1119, "Undef"
  vivify_659:
    set $I1120, $P1119
    chr $S1121, $I1120
    $P1122 = $P1118."!make"($S1121)
.annotate 'line', 1038
    .return ($P1122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("162_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1124
    .param pmc param_1125
.annotate 'line', 1046
    .const 'Sub' $P1134 = "163_1306916546.01542" 
    capture_lex $P1134
    .lex "self", param_1124
    .lex "$/", param_1125
.annotate 'line', 1047
    new $P1126, "Undef"
    .lex "$str", $P1126
    new $P1127, "String"
    assign $P1127, ""
    store_lex "$str", $P1127
.annotate 'line', 1048
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_660
    $P1129 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1130, $P1129["charname"]
    unless_null $P1130, vivify_661
    new $P1130, "Undef"
  vivify_661:
    defined $I1131, $P1130
    unless $I1131, for_undef_662
    iter $P1128, $P1130
    new $P1141, 'ExceptionHandler'
    set_label $P1141, loop1140_handler
    $P1141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1141
  loop1140_test:
    unless $P1128, loop1140_done
    shift $P1132, $P1128
  loop1140_redo:
    .const 'Sub' $P1134 = "163_1306916546.01542" 
    capture_lex $P1134
    $P1134($P1132)
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
  for_undef_662:
.annotate 'line', 1049
    find_lex $P1143, "$/"
    find_lex $P1144, "$str"
    unless_null $P1144, vivify_665
    new $P1144, "Undef"
  vivify_665:
    $P1145 = $P1143."!make"($P1144)
.annotate 'line', 1046
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1133"  :anon :subid("163_1306916546.01542") :outer("162_1306916546.01542")
    .param pmc param_1135
.annotate 'line', 1048
    .lex "$_", param_1135
    find_lex $P1136, "$str"
    unless_null $P1136, vivify_663
    new $P1136, "Undef"
  vivify_663:
    find_lex $P1137, "$_"
    unless_null $P1137, vivify_664
    new $P1137, "Undef"
  vivify_664:
    $S1138 = $P1137."ast"()
    concat $P1139, $P1136, $S1138
    store_lex "$str", $P1139
    .return ($P1139)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("164_1306916546.01542") :outer("119_1306916546.01542")
    .param pmc param_1147
    .param pmc param_1148
.annotate 'line', 1052
    .lex "self", param_1147
    .lex "$/", param_1148
.annotate 'line', 1053
    find_lex $P1149, "$/"
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_666
    $P1152 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1153, $P1152["charnames"]
    unless_null $P1153, vivify_667
    new $P1153, "Undef"
  vivify_667:
    if $P1153, if_1151
    find_lex $P1157, "$/"
    unless_null $P1157, vivify_668
    new $P1157, "Undef"
  vivify_668:
    $I1158 = "string_to_int"($P1157, 10)
    chr $S1159, $I1158
    new $P1150, 'String'
    set $P1150, $S1159
    goto if_1151_end
  if_1151:
    find_lex $P1154, "$/"
    unless_null $P1154, vivify_669
    $P1154 = root_new ['parrot';'Hash']
  vivify_669:
    set $P1155, $P1154["charnames"]
    unless_null $P1155, vivify_670
    new $P1155, "Undef"
  vivify_670:
    $P1156 = $P1155."ast"()
    set $P1150, $P1156
  if_1151_end:
    $P1160 = $P1149."!make"($P1150)
.annotate 'line', 1052
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1162"  :subid("165_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 1066
    .const 'Sub' $P2464 = "237_1306916546.01542" 
    capture_lex $P2464
    .const 'Sub' $P2411 = "235_1306916546.01542" 
    capture_lex $P2411
    .const 'Sub' $P2338 = "232_1306916546.01542" 
    capture_lex $P2338
    .const 'Sub' $P2308 = "230_1306916546.01542" 
    capture_lex $P2308
    .const 'Sub' $P2263 = "227_1306916546.01542" 
    capture_lex $P2263
    .const 'Sub' $P2228 = "226_1306916546.01542" 
    capture_lex $P2228
    .const 'Sub' $P2218 = "225_1306916546.01542" 
    capture_lex $P2218
    .const 'Sub' $P2189 = "223_1306916546.01542" 
    capture_lex $P2189
    .const 'Sub' $P2180 = "222_1306916546.01542" 
    capture_lex $P2180
    .const 'Sub' $P2172 = "221_1306916546.01542" 
    capture_lex $P2172
    .const 'Sub' $P2164 = "220_1306916546.01542" 
    capture_lex $P2164
    .const 'Sub' $P2160 = "219_1306916546.01542" 
    capture_lex $P2160
    .const 'Sub' $P2094 = "216_1306916546.01542" 
    capture_lex $P2094
    .const 'Sub' $P2025 = "214_1306916546.01542" 
    capture_lex $P2025
    .const 'Sub' $P1929 = "210_1306916546.01542" 
    capture_lex $P1929
    .const 'Sub' $P1889 = "207_1306916546.01542" 
    capture_lex $P1889
    .const 'Sub' $P1837 = "205_1306916546.01542" 
    capture_lex $P1837
    .const 'Sub' $P1824 = "204_1306916546.01542" 
    capture_lex $P1824
    .const 'Sub' $P1811 = "203_1306916546.01542" 
    capture_lex $P1811
    .const 'Sub' $P1798 = "202_1306916546.01542" 
    capture_lex $P1798
    .const 'Sub' $P1785 = "201_1306916546.01542" 
    capture_lex $P1785
    .const 'Sub' $P1772 = "200_1306916546.01542" 
    capture_lex $P1772
    .const 'Sub' $P1759 = "199_1306916546.01542" 
    capture_lex $P1759
    .const 'Sub' $P1746 = "198_1306916546.01542" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "197_1306916546.01542" 
    capture_lex $P1733
    .const 'Sub' $P1728 = "196_1306916546.01542" 
    capture_lex $P1728
    .const 'Sub' $P1724 = "195_1306916546.01542" 
    capture_lex $P1724
    .const 'Sub' $P1684 = "193_1306916546.01542" 
    capture_lex $P1684
    .const 'Sub' $P1525 = "186_1306916546.01542" 
    capture_lex $P1525
    .const 'Sub' $P1510 = "185_1306916546.01542" 
    capture_lex $P1510
    .const 'Sub' $P1417 = "180_1306916546.01542" 
    capture_lex $P1417
    .const 'Sub' $P1384 = "178_1306916546.01542" 
    capture_lex $P1384
    .const 'Sub' $P1379 = "177_1306916546.01542" 
    capture_lex $P1379
    .const 'Sub' $P1373 = "176_1306916546.01542" 
    capture_lex $P1373
    .const 'Sub' $P1358 = "175_1306916546.01542" 
    capture_lex $P1358
    .const 'Sub' $P1343 = "174_1306916546.01542" 
    capture_lex $P1343
    .const 'Sub' $P1256 = "171_1306916546.01542" 
    capture_lex $P1256
    .const 'Sub' $P1211 = "169_1306916546.01542" 
    capture_lex $P1211
    .const 'Sub' $P1204 = "168_1306916546.01542" 
    capture_lex $P1204
    .const 'Sub' $P1181 = "167_1306916546.01542" 
    capture_lex $P1181
    .const 'Sub' $P1164 = "166_1306916546.01542" 
    capture_lex $P1164
.annotate 'line', 1125
    .const 'Sub' $P1164 = "166_1306916546.01542" 
    newclosure $P1177, $P1164
    .lex "value_type", $P1177
.annotate 'line', 1066
    .lex "$?PACKAGE", $P1178
    .lex "$?CLASS", $P1179
.annotate 'line', 1089
    .const 'Sub' $P1181 = "167_1306916546.01542" 
    capture_lex $P1181
    $P1181()
.annotate 'line', 1066
    find_lex $P1195, "$?PACKAGE"
    get_who $P1196, $P1195
    set $P1197, $P1196["$interactive_ctx"]
    unless_null $P1197, vivify_677
    new $P1197, "Undef"
  vivify_677:
    find_lex $P1198, "$?PACKAGE"
    get_who $P1199, $P1198
    set $P1200, $P1199["%interactive_pad"]
    unless_null $P1200, vivify_678
    $P1200 = root_new ['parrot';'Hash']
  vivify_678:
    find_lex $P1201, "$?PACKAGE"
    get_who $P1202, $P1201
    set $P1203, $P1202["%parrot_config"]
    unless_null $P1203, vivify_679
    $P1203 = root_new ['parrot';'Hash']
  vivify_679:
.annotate 'line', 1107
    find_lex $P1255, "value_type"
.annotate 'line', 1710
    .const 'Sub' $P2464 = "237_1306916546.01542" 
    newclosure $P2470, $P2464
.annotate 'line', 1066
    .return ($P2470)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1165
.annotate 'line', 1125
    .lex "$value", param_1165
.annotate 'line', 1126
    find_lex $P1168, "$value"
    unless_null $P1168, vivify_671
    new $P1168, "Undef"
  vivify_671:
    isa $I1169, $P1168, "NameSpace"
    if $I1169, if_1167
.annotate 'line', 1128
    find_lex $P1173, "$value"
    unless_null $P1173, vivify_672
    new $P1173, "Undef"
  vivify_672:
    isa $I1174, $P1173, "Sub"
    if $I1174, if_1172
    new $P1176, "String"
    assign $P1176, "var"
    set $P1171, $P1176
    goto if_1172_end
  if_1172:
    new $P1175, "String"
    assign $P1175, "sub"
    set $P1171, $P1175
  if_1172_end:
    set $P1166, $P1171
.annotate 'line', 1126
    goto if_1167_end
  if_1167:
    new $P1170, "String"
    assign $P1170, "namespace"
    set $P1166, $P1170
  if_1167_end:
.annotate 'line', 1125
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1180"  :anon :subid("167_1306916546.01542") :outer("165_1306916546.01542")
.annotate 'line', 1094
    $P1182 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1182
.annotate 'line', 1091
    getinterp $P1183
    set $P1184, $P1183["context"]
    unless_null $P1184, vivify_673
    new $P1184, "Undef"
  vivify_673:
    find_lex $P1185, "$?PACKAGE"
    get_who $P1186, $P1185
    set $P1186["$interactive_ctx"], $P1184
    find_lex $P1187, "%pad_contents"
    unless_null $P1187, vivify_674
    $P1187 = root_new ['parrot';'Hash']
  vivify_674:
.annotate 'line', 1096
    find_lex $P1188, "$?PACKAGE"
    get_who $P1189, $P1188
    set $P1190, $P1189["$interactive_ctx"]
    unless_null $P1190, vivify_675
    new $P1190, "Undef"
  vivify_675:
    getattribute $P1191, $P1190, "lex_pad"
    find_lex $P1192, "%pad_contents"
    unless_null $P1192, vivify_676
    $P1192 = root_new ['parrot';'Hash']
  vivify_676:
    copy $P1191, $P1192
.annotate 'line', 1095
    find_lex $P1193, "$?PACKAGE"
    get_who $P1194, $P1193
    set $P1194["%interactive_pad"], $P1191
.annotate 'line', 1089
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("168_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1205
.annotate 'line', 1101
    .lex "self", param_1205
.annotate 'line', 1102
    new $P1206, "Undef"
    .lex "$obj", $P1206
    find_lex $P1207, "self"
    repr_instance_of $P1208, $P1207
    store_lex "$obj", $P1208
.annotate 'line', 1103
    find_lex $P1209, "$obj"
    unless_null $P1209, vivify_680
    new $P1209, "Undef"
  vivify_680:
    $P1209."BUILD"()
    find_lex $P1210, "$obj"
    unless_null $P1210, vivify_681
    new $P1210, "Undef"
  vivify_681:
.annotate 'line', 1101
    .return ($P1210)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("169_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1212
.annotate 'line', 1107
    .const 'Sub' $P1230 = "170_1306916546.01542" 
    capture_lex $P1230
    .lex "self", param_1212
.annotate 'line', 1117
    new $P1213, "Undef"
    .lex "$config_hash_idx", $P1213
.annotate 'line', 1109
    split $P1214, " ", "parse past post pir evalpmc"
    find_lex $P1215, "self"
    find_lex $P1216, "$?CLASS"
    setattribute $P1215, $P1216, "@!stages", $P1214
.annotate 'line', 1112
    split $P1217, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-backtrace"
    find_lex $P1218, "self"
    find_lex $P1219, "$?CLASS"
    setattribute $P1218, $P1219, "@!cmdoptions", $P1217
.annotate 'line', 1113
    new $P1220, "String"
    assign $P1220, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1221, "self"
    find_lex $P1222, "$?CLASS"
    setattribute $P1221, $P1222, "$!usage", $P1220
.annotate 'line', 1114
    find_lex $P1224, "self"
    find_lex $P1225, "$?CLASS"
    getattribute $P1226, $P1224, $P1225, "@!cmdoptions"
    unless_null $P1226, vivify_682
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    defined $I1227, $P1226
    unless $I1227, for_undef_683
    iter $P1223, $P1226
    new $P1243, 'ExceptionHandler'
    set_label $P1243, loop1242_handler
    $P1243."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1243
  loop1242_test:
    unless $P1223, loop1242_done
    shift $P1228, $P1223
  loop1242_redo:
    .const 'Sub' $P1230 = "170_1306916546.01542" 
    capture_lex $P1230
    $P1230($P1228)
  loop1242_next:
    goto loop1242_test
  loop1242_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1244, exception, 'type'
    eq $P1244, .CONTROL_LOOP_NEXT, loop1242_next
    eq $P1244, .CONTROL_LOOP_REDO, loop1242_redo
  loop1242_done:
    pop_eh 
  for_undef_683:
.annotate 'line', 1117

            .include 'iglobals.pasm'
            $P1245 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1245
.annotate 'line', 1121
    find_lex $P1246, "$config_hash_idx"
    unless_null $P1246, vivify_686
    new $P1246, "Undef"
  vivify_686:
    set $I1247, $P1246
    getinterp $P1248
    set $P1249, $P1248[$I1247]
    unless_null $P1249, vivify_687
    new $P1249, "Undef"
  vivify_687:
    find_lex $P1250, "$?PACKAGE"
    get_who $P1251, $P1250
    set $P1251["%parrot_config"], $P1249
.annotate 'line', 1122
    new $P1252, "Hash"
    find_lex $P1253, "self"
    find_lex $P1254, "$?CLASS"
    setattribute $P1253, $P1254, "%!config", $P1252
.annotate 'line', 1107
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1229"  :anon :subid("170_1306916546.01542") :outer("169_1306916546.01542")
    .param pmc param_1231
.annotate 'line', 1114
    .lex "$_", param_1231
.annotate 'line', 1115
    find_lex $P1232, "self"
    find_lex $P1233, "$?CLASS"
    getattribute $P1234, $P1232, $P1233, "$!usage"
    unless_null $P1234, vivify_684
    new $P1234, "Undef"
  vivify_684:
    new $P1235, 'String'
    set $P1235, "    "
    find_lex $P1236, "$_"
    unless_null $P1236, vivify_685
    new $P1236, "Undef"
  vivify_685:
    concat $P1237, $P1235, $P1236
    concat $P1238, $P1237, "\n"
    concat $P1239, $P1234, $P1238
    find_lex $P1240, "self"
    find_lex $P1241, "$?CLASS"
    setattribute $P1240, $P1241, "$!usage", $P1239
.annotate 'line', 1114
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("171_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1257
    .param pmc param_1258
    .param pmc param_1261 :slurpy
    .param pmc param_1259 :optional :named("tagset")
    .param int has_param_1259 :opt_flag
.annotate 'line', 1131
    .const 'Sub' $P1327 = "173_1306916546.01542" 
    capture_lex $P1327
    .const 'Sub' $P1306 = "172_1306916546.01542" 
    capture_lex $P1306
    .lex "self", param_1257
    .lex "$module", param_1258
    if has_param_1259, optparam_688
    new $P1260, "Undef"
    set param_1259, $P1260
  optparam_688:
    .lex "$tagset", param_1259
    .lex "@symbols", param_1261
.annotate 'line', 1138
    $P1262 = root_new ['parrot';'Hash']
    .lex "%exports", $P1262
.annotate 'line', 1139
    $P1263 = root_new ['parrot';'Hash']
    .lex "%source", $P1263
.annotate 'line', 1133
    find_lex $P1265, "$module"
    unless_null $P1265, vivify_689
    new $P1265, "Undef"
  vivify_689:
    does $I1266, $P1265, "hash"
    new $P1267, 'Integer'
    set $P1267, $I1266
    isfalse $I1268, $P1267
    unless $I1268, if_1264_end
.annotate 'line', 1134
    find_lex $P1269, "self"
    find_lex $P1270, "$module"
    unless_null $P1270, vivify_690
    new $P1270, "Undef"
  vivify_690:
    $P1271 = $P1269."get_module"($P1270)
    store_lex "$module", $P1271
  if_1264_end:
.annotate 'line', 1137
    find_lex $P1273, "$tagset"
    unless_null $P1273, vivify_691
    new $P1273, "Undef"
  vivify_691:
    set $P1272, $P1273
    defined $I1275, $P1272
    if $I1275, default_1274
    find_lex $P1278, "@symbols"
    unless_null $P1278, vivify_692
    $P1278 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    if $P1278, if_1277
    new $P1280, "String"
    assign $P1280, "DEFAULT"
    set $P1276, $P1280
    goto if_1277_end
  if_1277:
    new $P1279, "String"
    assign $P1279, "ALL"
    set $P1276, $P1279
  if_1277_end:
    set $P1272, $P1276
  default_1274:
    store_lex "$tagset", $P1272
    find_lex $P1281, "%exports"
    unless_null $P1281, vivify_693
    $P1281 = root_new ['parrot';'Hash']
  vivify_693:
.annotate 'line', 1139
    find_lex $P1282, "$tagset"
    unless_null $P1282, vivify_694
    new $P1282, "Undef"
  vivify_694:
    set $S1283, $P1282
    find_lex $P1284, "$module"
    unless_null $P1284, vivify_695
    $P1284 = root_new ['parrot';'Hash']
  vivify_695:
    set $P1285, $P1284["EXPORT"]
    unless_null $P1285, vivify_696
    $P1285 = root_new ['parrot';'Hash']
  vivify_696:
    set $P1286, $P1285[$S1283]
    unless_null $P1286, vivify_697
    new $P1286, "Undef"
  vivify_697:
    store_lex "%source", $P1286
.annotate 'line', 1140
    find_lex $P1288, "%source"
    unless_null $P1288, vivify_698
    $P1288 = root_new ['parrot';'Hash']
  vivify_698:
    defined $I1289, $P1288
    new $P1290, 'Integer'
    set $P1290, $I1289
    isfalse $I1291, $P1290
    unless $I1291, if_1287_end
.annotate 'line', 1141
    find_lex $P1294, "$tagset"
    unless_null $P1294, vivify_699
    new $P1294, "Undef"
  vivify_699:
    set $S1295, $P1294
    iseq $I1296, $S1295, "ALL"
    if $I1296, if_1293
    $P1298 = root_new ['parrot';'Hash']
    set $P1292, $P1298
    goto if_1293_end
  if_1293:
    find_lex $P1297, "$module"
    unless_null $P1297, vivify_700
    new $P1297, "Undef"
  vivify_700:
    set $P1292, $P1297
  if_1293_end:
    store_lex "%source", $P1292
  if_1287_end:
.annotate 'line', 1143
    find_lex $P1300, "@symbols"
    unless_null $P1300, vivify_701
    $P1300 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    if $P1300, if_1299
.annotate 'line', 1150
    find_lex $P1323, "%source"
    unless_null $P1323, vivify_702
    $P1323 = root_new ['parrot';'Hash']
  vivify_702:
    defined $I1324, $P1323
    unless $I1324, for_undef_703
    iter $P1322, $P1323
    new $P1340, 'ExceptionHandler'
    set_label $P1340, loop1339_handler
    $P1340."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1340
  loop1339_test:
    unless $P1322, loop1339_done
    shift $P1325, $P1322
  loop1339_redo:
    .const 'Sub' $P1327 = "173_1306916546.01542" 
    capture_lex $P1327
    $P1327($P1325)
  loop1339_next:
    goto loop1339_test
  loop1339_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1341, exception, 'type'
    eq $P1341, .CONTROL_LOOP_NEXT, loop1339_next
    eq $P1341, .CONTROL_LOOP_REDO, loop1339_redo
  loop1339_done:
    pop_eh 
  for_undef_703:
.annotate 'line', 1149
    goto if_1299_end
  if_1299:
.annotate 'line', 1144
    find_lex $P1302, "@symbols"
    unless_null $P1302, vivify_710
    $P1302 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    defined $I1303, $P1302
    unless $I1303, for_undef_711
    iter $P1301, $P1302
    new $P1320, 'ExceptionHandler'
    set_label $P1320, loop1319_handler
    $P1320."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1320
  loop1319_test:
    unless $P1301, loop1319_done
    shift $P1304, $P1301
  loop1319_redo:
    .const 'Sub' $P1306 = "172_1306916546.01542" 
    capture_lex $P1306
    $P1306($P1304)
  loop1319_next:
    goto loop1319_test
  loop1319_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1321, exception, 'type'
    eq $P1321, .CONTROL_LOOP_NEXT, loop1319_next
    eq $P1321, .CONTROL_LOOP_REDO, loop1319_redo
  loop1319_done:
    pop_eh 
  for_undef_711:
  if_1299_end:
.annotate 'line', 1143
    find_lex $P1342, "%exports"
    unless_null $P1342, vivify_720
    $P1342 = root_new ['parrot';'Hash']
  vivify_720:
.annotate 'line', 1131
    .return ($P1342)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1326"  :anon :subid("173_1306916546.01542") :outer("171_1306916546.01542")
    .param pmc param_1329
.annotate 'line', 1151
    new $P1328, "Undef"
    .lex "$value", $P1328
    .lex "$_", param_1329
    find_lex $P1330, "$_"
    unless_null $P1330, vivify_704
    new $P1330, "Undef"
  vivify_704:
    $P1331 = $P1330."value"()
    store_lex "$value", $P1331
.annotate 'line', 1152
    find_lex $P1332, "$value"
    unless_null $P1332, vivify_705
    new $P1332, "Undef"
  vivify_705:
    find_lex $P1333, "$_"
    unless_null $P1333, vivify_706
    new $P1333, "Undef"
  vivify_706:
    $P1334 = $P1333."key"()
    find_lex $P1335, "$value"
    unless_null $P1335, vivify_707
    new $P1335, "Undef"
  vivify_707:
    $P1336 = "value_type"($P1335)
    find_lex $P1337, "%exports"
    unless_null $P1337, vivify_708
    $P1337 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1337
  vivify_708:
    set $P1338, $P1337[$P1336]
    unless_null $P1338, vivify_709
    $P1338 = root_new ['parrot';'Hash']
    set $P1337[$P1336], $P1338
  vivify_709:
    set $P1338[$P1334], $P1332
.annotate 'line', 1150
    .return ($P1332)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1305"  :anon :subid("172_1306916546.01542") :outer("171_1306916546.01542")
    .param pmc param_1308
.annotate 'line', 1145
    new $P1307, "Undef"
    .lex "$value", $P1307
    .lex "$_", param_1308
    find_lex $P1309, "$_"
    unless_null $P1309, vivify_712
    new $P1309, "Undef"
  vivify_712:
    set $S1310, $P1309
    find_lex $P1311, "%source"
    unless_null $P1311, vivify_713
    $P1311 = root_new ['parrot';'Hash']
  vivify_713:
    set $P1312, $P1311[$S1310]
    unless_null $P1312, vivify_714
    new $P1312, "Undef"
  vivify_714:
    store_lex "$value", $P1312
.annotate 'line', 1146
    find_lex $P1313, "$value"
    unless_null $P1313, vivify_715
    new $P1313, "Undef"
  vivify_715:
    find_lex $P1314, "$_"
    unless_null $P1314, vivify_716
    new $P1314, "Undef"
  vivify_716:
    find_lex $P1315, "$value"
    unless_null $P1315, vivify_717
    new $P1315, "Undef"
  vivify_717:
    $P1316 = "value_type"($P1315)
    find_lex $P1317, "%exports"
    unless_null $P1317, vivify_718
    $P1317 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1317
  vivify_718:
    set $P1318, $P1317[$P1316]
    unless_null $P1318, vivify_719
    $P1318 = root_new ['parrot';'Hash']
    set $P1317[$P1316], $P1318
  vivify_719:
    set $P1318[$P1314], $P1313
.annotate 'line', 1144
    .return ($P1313)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("174_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1344
    .param pmc param_1345
.annotate 'line', 1158
    .lex "self", param_1344
    .lex "$name", param_1345
.annotate 'line', 1159
    $P1346 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1346
    find_lex $P1347, "self"
    find_lex $P1348, "$name"
    unless_null $P1348, vivify_721
    new $P1348, "Undef"
  vivify_721:
    $P1349 = $P1347."parse_name"($P1348)
    store_lex "@name", $P1349
.annotate 'line', 1160
    find_lex $P1350, "@name"
    unless_null $P1350, vivify_722
    $P1350 = root_new ['parrot';'ResizablePMCArray']
  vivify_722:
    find_lex $P1351, "self"
    find_lex $P1352, "$?CLASS"
    getattribute $P1353, $P1351, $P1352, "$!language"
    unless_null $P1353, vivify_723
    new $P1353, "Undef"
  vivify_723:
    set $S1354, $P1353
    downcase $S1355, $S1354
    $P1350."unshift"($S1355)
.annotate 'line', 1161
    find_lex $P1356, "@name"
    unless_null $P1356, vivify_724
    $P1356 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    get_root_namespace $P1357, $P1356
.annotate 'line', 1158
    .return ($P1357)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("175_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1359
    .param pmc param_1360 :optional
    .param int has_param_1360 :opt_flag
.annotate 'line', 1164
    .lex "self", param_1359
    if has_param_1360, optparam_725
    new $P1361, "Undef"
    set param_1360, $P1361
  optparam_725:
    .lex "$name", param_1360
.annotate 'line', 1165
    find_lex $P1363, "$name"
    unless_null $P1363, vivify_726
    new $P1363, "Undef"
  vivify_726:
    unless $P1363, if_1362_end
.annotate 'line', 1166
    find_lex $P1364, "$name"
    unless_null $P1364, vivify_727
    new $P1364, "Undef"
  vivify_727:
    find_lex $P1365, "self"
    find_lex $P1366, "$?CLASS"
    setattribute $P1365, $P1366, "$!language", $P1364
.annotate 'line', 1167
    find_lex $P1367, "$name"
    unless_null $P1367, vivify_728
    new $P1367, "Undef"
  vivify_728:
    set $S1368, $P1367
    find_lex $P1369, "self"
    compreg $S1368, $P1369
  if_1362_end:
.annotate 'line', 1165
    find_lex $P1370, "self"
    find_lex $P1371, "$?CLASS"
    getattribute $P1372, $P1370, $P1371, "$!language"
    unless_null $P1372, vivify_729
    new $P1372, "Undef"
  vivify_729:
.annotate 'line', 1164
    .return ($P1372)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("176_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1374
    .param pmc param_1375
.annotate 'line', 1172
    .lex "self", param_1374
    .lex "$name", param_1375
.annotate 'line', 1173
    find_lex $P1376, "$name"
    unless_null $P1376, vivify_730
    new $P1376, "Undef"
  vivify_730:
    set $S1377, $P1376
    compreg $P1378, $S1377
.annotate 'line', 1172
    .return ($P1378)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("177_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1380
.annotate 'line', 1176
    .lex "self", param_1380
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "%!config"
    unless_null $P1383, vivify_731
    $P1383 = root_new ['parrot';'Hash']
  vivify_731:
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("178_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1385
    .param pmc param_1386
.annotate 'line', 1178
    .const 'Sub' $P1396 = "179_1306916546.01542" 
    capture_lex $P1396
    .lex "self", param_1385
    .lex "$name", param_1386
.annotate 'line', 1179
    new $P1387, "Undef"
    .lex "$base", $P1387
.annotate 'line', 1180
    new $P1388, "Undef"
    .lex "$loaded", $P1388
.annotate 'line', 1179
    find_lex $P1389, "self"
    find_lex $P1390, "$name"
    unless_null $P1390, vivify_732
    new $P1390, "Undef"
  vivify_732:
    $P1391 = $P1389."parse_name"($P1390)
    join $S1392, "/", $P1391
    new $P1393, 'String'
    set $P1393, $S1392
    store_lex "$base", $P1393
.annotate 'line', 1180
    new $P1394, "Integer"
    assign $P1394, 0
    store_lex "$loaded", $P1394
.annotate 'line', 1181
    .const 'Sub' $P1396 = "179_1306916546.01542" 
    capture_lex $P1396
    $P1396()
.annotate 'line', 1182
    find_lex $P1409, "$loaded"
    unless_null $P1409, vivify_734
    new $P1409, "Undef"
  vivify_734:
    if $P1409, unless_1408_end
    find_lex $P1410, "$base"
    unless_null $P1410, vivify_735
    new $P1410, "Undef"
  vivify_735:
    concat $P1411, $P1410, ".pir"
    set $S1412, $P1411
    load_bytecode $S1412
    new $P1413, "Integer"
    assign $P1413, 1
    store_lex "$loaded", $P1413
  unless_1408_end:
.annotate 'line', 1183
    find_lex $P1414, "self"
    find_lex $P1415, "$name"
    unless_null $P1415, vivify_736
    new $P1415, "Undef"
  vivify_736:
    $P1416 = $P1414."get_module"($P1415)
.annotate 'line', 1178
    .return ($P1416)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1395"  :anon :subid("179_1306916546.01542") :outer("178_1306916546.01542")
.annotate 'line', 1181
    new $P1403, 'ExceptionHandler'
    set_label $P1403, control_1402
    $P1403."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1403
    find_lex $P1397, "$base"
    unless_null $P1397, vivify_733
    new $P1397, "Undef"
  vivify_733:
    concat $P1398, $P1397, ".pbc"
    set $S1399, $P1398
    load_bytecode $S1399
    new $P1400, "Integer"
    assign $P1400, 1
    store_lex "$loaded", $P1400
    pop_eh 
    goto skip_handler_1401
  control_1402:
    .local pmc exception 
    .get_results (exception) 
    new $P1406, 'Integer'
    set $P1406, 1
    set exception["handled"], $P1406
    set $I1407, exception["handled"]
    ne $I1407, 1, nothandled_1405
  handled_1404:
    .return (exception)
  nothandled_1405:
    rethrow exception
  skip_handler_1401:
    .return ($P1400)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("180_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1418
    .param pmc param_1419
    .param pmc param_1420
.annotate 'line', 1186
    .const 'Sub' $P1426 = "181_1306916546.01542" 
    capture_lex $P1426
    .lex "self", param_1418
    .lex "$target", param_1419
    .lex "%exports", param_1420
.annotate 'line', 1187
    find_lex $P1422, "%exports"
    unless_null $P1422, vivify_737
    $P1422 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I1423, $P1422
    unless $I1423, for_undef_738
    iter $P1421, $P1422
    new $P1508, 'ExceptionHandler'
    set_label $P1508, loop1507_handler
    $P1508."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1508
  loop1507_test:
    unless $P1421, loop1507_done
    shift $P1424, $P1421
  loop1507_redo:
    .const 'Sub' $P1426 = "181_1306916546.01542" 
    capture_lex $P1426
    $P1426($P1424)
  loop1507_next:
    goto loop1507_test
  loop1507_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1509, exception, 'type'
    eq $P1509, .CONTROL_LOOP_NEXT, loop1507_next
    eq $P1509, .CONTROL_LOOP_REDO, loop1507_redo
  loop1507_done:
    pop_eh 
  for_undef_738:
.annotate 'line', 1186
    .return ($P1421)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1425"  :anon :subid("181_1306916546.01542") :outer("180_1306916546.01542")
    .param pmc param_1429
.annotate 'line', 1187
    .const 'Sub' $P1496 = "184_1306916546.01542" 
    capture_lex $P1496
    .const 'Sub' $P1476 = "183_1306916546.01542" 
    capture_lex $P1476
    .const 'Sub' $P1447 = "182_1306916546.01542" 
    capture_lex $P1447
.annotate 'line', 1188
    new $P1427, "Undef"
    .lex "$type", $P1427
.annotate 'line', 1189
    $P1428 = root_new ['parrot';'Hash']
    .lex "%items", $P1428
    .lex "$_", param_1429
.annotate 'line', 1188
    find_lex $P1430, "$_"
    unless_null $P1430, vivify_739
    new $P1430, "Undef"
  vivify_739:
    $P1431 = $P1430."key"()
    store_lex "$type", $P1431
.annotate 'line', 1189
    find_lex $P1432, "$_"
    unless_null $P1432, vivify_740
    new $P1432, "Undef"
  vivify_740:
    $P1433 = $P1432."value"()
    store_lex "%items", $P1433
.annotate 'line', 1190
    find_lex $P1436, "self"
    new $P1437, 'String'
    set $P1437, "import_"
    find_lex $P1438, "$type"
    unless_null $P1438, vivify_741
    new $P1438, "Undef"
  vivify_741:
    concat $P1439, $P1437, $P1438
    set $S1440, $P1439
    can $I1441, $P1436, $S1440
    if $I1441, if_1435
.annotate 'line', 1193
    find_lex $P1465, "$target"
    unless_null $P1465, vivify_742
    new $P1465, "Undef"
  vivify_742:
    new $P1466, 'String'
    set $P1466, "add_"
    find_lex $P1467, "$type"
    unless_null $P1467, vivify_743
    new $P1467, "Undef"
  vivify_743:
    concat $P1468, $P1466, $P1467
    set $S1469, $P1468
    can $I1470, $P1465, $S1469
    if $I1470, if_1464
.annotate 'line', 1197
    find_lex $P1492, "%items"
    unless_null $P1492, vivify_744
    $P1492 = root_new ['parrot';'Hash']
  vivify_744:
    defined $I1493, $P1492
    unless $I1493, for_undef_745
    iter $P1491, $P1492
    new $P1505, 'ExceptionHandler'
    set_label $P1505, loop1504_handler
    $P1505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1505
  loop1504_test:
    unless $P1491, loop1504_done
    shift $P1494, $P1491
  loop1504_redo:
    .const 'Sub' $P1496 = "184_1306916546.01542" 
    capture_lex $P1496
    $P1496($P1494)
  loop1504_next:
    goto loop1504_test
  loop1504_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1506, exception, 'type'
    eq $P1506, .CONTROL_LOOP_NEXT, loop1504_next
    eq $P1506, .CONTROL_LOOP_REDO, loop1504_redo
  loop1504_done:
    pop_eh 
  for_undef_745:
.annotate 'line', 1196
    set $P1463, $P1491
.annotate 'line', 1193
    goto if_1464_end
  if_1464:
.annotate 'line', 1194
    find_lex $P1472, "%items"
    unless_null $P1472, vivify_749
    $P1472 = root_new ['parrot';'Hash']
  vivify_749:
    defined $I1473, $P1472
    unless $I1473, for_undef_750
    iter $P1471, $P1472
    new $P1489, 'ExceptionHandler'
    set_label $P1489, loop1488_handler
    $P1489."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1489
  loop1488_test:
    unless $P1471, loop1488_done
    shift $P1474, $P1471
  loop1488_redo:
    .const 'Sub' $P1476 = "183_1306916546.01542" 
    capture_lex $P1476
    $P1476($P1474)
  loop1488_next:
    goto loop1488_test
  loop1488_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1490, exception, 'type'
    eq $P1490, .CONTROL_LOOP_NEXT, loop1488_next
    eq $P1490, .CONTROL_LOOP_REDO, loop1488_redo
  loop1488_done:
    pop_eh 
  for_undef_750:
.annotate 'line', 1193
    set $P1463, $P1471
  if_1464_end:
    set $P1434, $P1463
.annotate 'line', 1190
    goto if_1435_end
  if_1435:
.annotate 'line', 1191
    find_lex $P1443, "%items"
    unless_null $P1443, vivify_755
    $P1443 = root_new ['parrot';'Hash']
  vivify_755:
    defined $I1444, $P1443
    unless $I1444, for_undef_756
    iter $P1442, $P1443
    new $P1461, 'ExceptionHandler'
    set_label $P1461, loop1460_handler
    $P1461."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1461
  loop1460_test:
    unless $P1442, loop1460_done
    shift $P1445, $P1442
  loop1460_redo:
    .const 'Sub' $P1447 = "182_1306916546.01542" 
    capture_lex $P1447
    $P1447($P1445)
  loop1460_next:
    goto loop1460_test
  loop1460_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1462, exception, 'type'
    eq $P1462, .CONTROL_LOOP_NEXT, loop1460_next
    eq $P1462, .CONTROL_LOOP_REDO, loop1460_redo
  loop1460_done:
    pop_eh 
  for_undef_756:
.annotate 'line', 1190
    set $P1434, $P1442
  if_1435_end:
.annotate 'line', 1187
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1495"  :anon :subid("184_1306916546.01542") :outer("181_1306916546.01542")
    .param pmc param_1497
.annotate 'line', 1197
    .lex "$_", param_1497
    find_lex $P1498, "$_"
    unless_null $P1498, vivify_746
    new $P1498, "Undef"
  vivify_746:
    $P1499 = $P1498."value"()
    find_lex $P1500, "$_"
    unless_null $P1500, vivify_747
    new $P1500, "Undef"
  vivify_747:
    $P1501 = $P1500."key"()
    set $S1502, $P1501
    find_lex $P1503, "$target"
    unless_null $P1503, vivify_748
    $P1503 = root_new ['parrot';'Hash']
    store_lex "$target", $P1503
  vivify_748:
    set $P1503[$S1502], $P1499
    .return ($P1499)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1475"  :anon :subid("183_1306916546.01542") :outer("181_1306916546.01542")
    .param pmc param_1477
.annotate 'line', 1194
    .lex "$_", param_1477
    find_lex $P1478, "$target"
    unless_null $P1478, vivify_751
    new $P1478, "Undef"
  vivify_751:
    find_lex $P1479, "$_"
    unless_null $P1479, vivify_752
    new $P1479, "Undef"
  vivify_752:
    $P1480 = $P1479."key"()
    find_lex $P1481, "$_"
    unless_null $P1481, vivify_753
    new $P1481, "Undef"
  vivify_753:
    $P1482 = $P1481."value"()
    new $P1483, 'String'
    set $P1483, "add_"
    find_lex $P1484, "$type"
    unless_null $P1484, vivify_754
    new $P1484, "Undef"
  vivify_754:
    concat $P1485, $P1483, $P1484
    set $S1486, $P1485
    $P1487 = $P1478.$S1486($P1480, $P1482)
    .return ($P1487)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1446"  :anon :subid("182_1306916546.01542") :outer("181_1306916546.01542")
    .param pmc param_1448
.annotate 'line', 1191
    .lex "$_", param_1448
    find_lex $P1449, "self"
    find_lex $P1450, "$target"
    unless_null $P1450, vivify_757
    new $P1450, "Undef"
  vivify_757:
    find_lex $P1451, "$_"
    unless_null $P1451, vivify_758
    new $P1451, "Undef"
  vivify_758:
    $P1452 = $P1451."key"()
    find_lex $P1453, "$_"
    unless_null $P1453, vivify_759
    new $P1453, "Undef"
  vivify_759:
    $P1454 = $P1453."value"()
    new $P1455, 'String'
    set $P1455, "import_"
    find_lex $P1456, "$type"
    unless_null $P1456, vivify_760
    new $P1456, "Undef"
  vivify_760:
    concat $P1457, $P1455, $P1456
    set $S1458, $P1457
    $P1459 = $P1449.$S1458($P1450, $P1452, $P1454)
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("185_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'line', 1202
    .lex "self", param_1511
    .lex "$value", param_1512
.annotate 'line', 1204
    getinterp $P1515
    $P1516 = $P1515."stdout_handle"()
    $N1517 = $P1516."tell"()
    find_dynamic_lex $P1520, "$*AUTOPRINTPOS"
    unless_null $P1520, vivify_761
    get_hll_global $P1518, "GLOBAL"
    get_who $P1519, $P1518
    set $P1520, $P1519["$AUTOPRINTPOS"]
    unless_null $P1520, vivify_762
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_762:
  vivify_761:
    set $N1521, $P1520
    isgt $I1522, $N1517, $N1521
    unless $I1522, unless_1514
    new $P1513, 'Integer'
    set $P1513, $I1522
    goto unless_1514_end
  unless_1514:
.annotate 'line', 1203
    find_lex $P1523, "$value"
    unless_null $P1523, vivify_763
    new $P1523, "Undef"
  vivify_763:
    set $S1524, $P1523
    say $S1524
  unless_1514_end:
.annotate 'line', 1202
    .return ($P1513)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("186_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1526
    .param pmc param_1527 :slurpy :named
.annotate 'line', 1207
    .const 'Sub' $P1559 = "187_1306916546.01542" 
    capture_lex $P1559
    .lex "self", param_1526
    .lex "%adverbs", param_1527
.annotate 'line', 1208
    new $P1528, "Undef"
    .lex "$target", $P1528
.annotate 'line', 1212
    new $P1529, "Undef"
    .lex "$stdin", $P1529
.annotate 'line', 1213
    new $P1530, "Undef"
    .lex "$encoding", $P1530
.annotate 'line', 1218
    new $P1531, "Undef"
    .lex "$save_ctx", $P1531
.annotate 'line', 1208
    find_lex $P1532, "%adverbs"
    unless_null $P1532, vivify_764
    $P1532 = root_new ['parrot';'Hash']
  vivify_764:
    set $P1533, $P1532["target"]
    unless_null $P1533, vivify_765
    new $P1533, "Undef"
  vivify_765:
    set $S1534, $P1533
    downcase $S1535, $S1534
    new $P1536, 'String'
    set $P1536, $S1535
    store_lex "$target", $P1536
.annotate 'line', 1210
    getinterp $P1537
    $P1538 = $P1537."stderr_handle"()
    find_lex $P1539, "self"
    $S1540 = $P1539."commandline_banner"()
    print $P1538, $S1540
.annotate 'line', 1212
    getinterp $P1541
    $P1542 = $P1541."stdin_handle"()
    store_lex "$stdin", $P1542
.annotate 'line', 1213
    find_lex $P1543, "%adverbs"
    unless_null $P1543, vivify_766
    $P1543 = root_new ['parrot';'Hash']
  vivify_766:
    set $P1544, $P1543["encoding"]
    unless_null $P1544, vivify_767
    new $P1544, "Undef"
  vivify_767:
    set $S1545, $P1544
    new $P1546, 'String'
    set $P1546, $S1545
    store_lex "$encoding", $P1546
.annotate 'line', 1214
    find_lex $P1550, "$encoding"
    unless_null $P1550, vivify_768
    new $P1550, "Undef"
  vivify_768:
    if $P1550, if_1549
    set $P1548, $P1550
    goto if_1549_end
  if_1549:
    find_lex $P1551, "$encoding"
    unless_null $P1551, vivify_769
    new $P1551, "Undef"
  vivify_769:
    set $S1552, $P1551
    isne $I1553, $S1552, "fixed_8"
    new $P1548, 'Integer'
    set $P1548, $I1553
  if_1549_end:
    unless $P1548, if_1547_end
.annotate 'line', 1215
    find_lex $P1554, "$stdin"
    unless_null $P1554, vivify_770
    new $P1554, "Undef"
  vivify_770:
    find_lex $P1555, "$encoding"
    unless_null $P1555, vivify_771
    new $P1555, "Undef"
  vivify_771:
    $P1554."encoding"($P1555)
  if_1547_end:
.annotate 'line', 1214
    find_lex $P1556, "$save_ctx"
    unless_null $P1556, vivify_772
    new $P1556, "Undef"
  vivify_772:
.annotate 'line', 1219
    new $P1682, 'ExceptionHandler'
    set_label $P1682, loop1681_handler
    $P1682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1682
  loop1681_test:
    new $P1557, "Integer"
    assign $P1557, 1
    unless $P1557, loop1681_done
  loop1681_redo:
    .const 'Sub' $P1559 = "187_1306916546.01542" 
    capture_lex $P1559
    $P1559()
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
.annotate 'line', 1207
    .return ($P1557)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("187_1306916546.01542") :outer("186_1306916546.01542")
.annotate 'line', 1219
    .const 'Sub' $P1593 = "188_1306916546.01542" 
    capture_lex $P1593
.annotate 'line', 1222
    new $P1560, "Undef"
    .lex "$prompt", $P1560
.annotate 'line', 1223
    new $P1561, "Undef"
    .lex "$code", $P1561
.annotate 'line', 1228
    new $P1562, "Undef"
    .lex "$*AUTOPRINTPOS", $P1562
.annotate 'line', 1229
    new $P1563, "Undef"
    .lex "$*CTXSAVE", $P1563
.annotate 'line', 1230
    new $P1564, "Undef"
    .lex "$*MAIN_CTX", $P1564
.annotate 'line', 1220
    find_lex $P1566, "$stdin"
    unless_null $P1566, vivify_773
    new $P1566, "Undef"
  vivify_773:
    if $P1566, unless_1565_end
    set $I1567, .CONTROL_LOOP_LAST
    die 0, $I1567
  unless_1565_end:
.annotate 'line', 1222
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
.annotate 'line', 1223
    find_lex $P1574, "$stdin"
    unless_null $P1574, vivify_774
    new $P1574, "Undef"
  vivify_774:
    find_lex $P1575, "$prompt"
    unless_null $P1575, vivify_775
    new $P1575, "Undef"
  vivify_775:
    set $S1576, $P1575
    $P1577 = $P1574."readline_interactive"($S1576)
    store_lex "$code", $P1577
.annotate 'line', 1225
    find_lex $P1579, "$code"
    unless_null $P1579, vivify_776
    new $P1579, "Undef"
  vivify_776:
    isnull $I1580, $P1579
    unless $I1580, if_1578_end
    set $I1581, .CONTROL_LOOP_LAST
    die 0, $I1581
  if_1578_end:
.annotate 'line', 1228
    getinterp $P1582
    $P1583 = $P1582."stdout_handle"()
    $P1584 = $P1583."tell"()
    store_lex "$*AUTOPRINTPOS", $P1584
.annotate 'line', 1229
    find_lex $P1585, "self"
    store_lex "$*CTXSAVE", $P1585
    find_lex $P1588, "$*MAIN_CTX"
    unless_null $P1588, vivify_777
    get_hll_global $P1586, "GLOBAL"
    get_who $P1587, $P1586
    set $P1588, $P1587["$MAIN_CTX"]
    unless_null $P1588, vivify_778
    die "Contextual $*MAIN_CTX not found"
  vivify_778:
  vivify_777:
.annotate 'line', 1232
    find_lex $P1591, "$code"
    unless_null $P1591, vivify_779
    new $P1591, "Undef"
  vivify_779:
    if $P1591, if_1590
    set $P1589, $P1591
    goto if_1590_end
  if_1590:
    .const 'Sub' $P1593 = "188_1306916546.01542" 
    capture_lex $P1593
    $P1680 = $P1593()
    set $P1589, $P1680
  if_1590_end:
.annotate 'line', 1219
    .return ($P1589)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1592"  :anon :subid("188_1306916546.01542") :outer("187_1306916546.01542")
.annotate 'line', 1232
    .const 'Sub' $P1628 = "191_1306916546.01542" 
    capture_lex $P1628
    .const 'Sub' $P1599 = "189_1306916546.01542" 
    capture_lex $P1599
.annotate 'line', 1234
    new $P1594, "Undef"
    .lex "$output", $P1594
.annotate 'line', 1233
    find_lex $P1595, "$code"
    unless_null $P1595, vivify_780
    new $P1595, "Undef"
  vivify_780:
    concat $P1596, $P1595, "\n"
    store_lex "$code", $P1596
    find_lex $P1597, "$output"
    unless_null $P1597, vivify_781
    new $P1597, "Undef"
  vivify_781:
.annotate 'line', 1235
    .const 'Sub' $P1599 = "189_1306916546.01542" 
    capture_lex $P1599
    $P1599()
.annotate 'line', 1242
    find_dynamic_lex $P1625, "$*MAIN_CTX"
    unless_null $P1625, vivify_786
    get_hll_global $P1623, "GLOBAL"
    get_who $P1624, $P1623
    set $P1625, $P1624["$MAIN_CTX"]
    unless_null $P1625, vivify_787
    die "Contextual $*MAIN_CTX not found"
  vivify_787:
  vivify_786:
    defined $I1626, $P1625
    unless $I1626, if_1622_end
    .const 'Sub' $P1628 = "191_1306916546.01542" 
    capture_lex $P1628
    $P1628()
  if_1622_end:
.annotate 'line', 1250
    find_lex $P1659, "$output"
    unless_null $P1659, vivify_797
    new $P1659, "Undef"
  vivify_797:
    isnull $I1660, $P1659
    unless $I1660, if_1658_end
    set $I1661, .CONTROL_LOOP_NEXT
    die 0, $I1661
  if_1658_end:
.annotate 'line', 1252
    find_lex $P1664, "$target"
    unless_null $P1664, vivify_798
    new $P1664, "Undef"
  vivify_798:
    isfalse $I1665, $P1664
    if $I1665, if_1663
.annotate 'line', 1254
    find_lex $P1671, "$target"
    unless_null $P1671, vivify_799
    new $P1671, "Undef"
  vivify_799:
    set $S1672, $P1671
    iseq $I1673, $S1672, "pir"
    if $I1673, if_1670
.annotate 'line', 1257
    find_lex $P1675, "self"
    find_lex $P1676, "$output"
    unless_null $P1676, vivify_800
    new $P1676, "Undef"
  vivify_800:
    find_lex $P1677, "$target"
    unless_null $P1677, vivify_801
    new $P1677, "Undef"
  vivify_801:
    find_lex $P1678, "%adverbs"
    unless_null $P1678, vivify_802
    $P1678 = root_new ['parrot';'Hash']
  vivify_802:
    $P1679 = $P1675."dumper"($P1676, $P1677, $P1678 :flat)
.annotate 'line', 1256
    set $P1669, $P1679
.annotate 'line', 1254
    goto if_1670_end
  if_1670:
.annotate 'line', 1255
    find_lex $P1674, "$output"
    unless_null $P1674, vivify_803
    new $P1674, "Undef"
  vivify_803:
    say $P1674
  if_1670_end:
.annotate 'line', 1254
    set $P1662, $P1669
.annotate 'line', 1252
    goto if_1663_end
  if_1663:
.annotate 'line', 1253
    find_lex $P1666, "self"
    find_lex $P1667, "$output"
    unless_null $P1667, vivify_804
    new $P1667, "Undef"
  vivify_804:
    $P1668 = $P1666."autoprint"($P1667)
.annotate 'line', 1252
    set $P1662, $P1668
  if_1663_end:
.annotate 'line', 1232
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1598"  :anon :subid("189_1306916546.01542") :outer("188_1306916546.01542")
.annotate 'line', 1235
    .const 'Sub' $P1611 = "190_1306916546.01542" 
    capture_lex $P1611
    new $P1607, 'ExceptionHandler'
    set_label $P1607, control_1606
    $P1607."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1607
.annotate 'line', 1236
    find_lex $P1600, "self"
    find_lex $P1601, "$code"
    unless_null $P1601, vivify_782
    new $P1601, "Undef"
  vivify_782:
    find_lex $P1602, "$save_ctx"
    unless_null $P1602, vivify_783
    new $P1602, "Undef"
  vivify_783:
    find_lex $P1603, "%adverbs"
    unless_null $P1603, vivify_784
    $P1603 = root_new ['parrot';'Hash']
  vivify_784:
    $P1604 = $P1600."eval"($P1601, $P1603 :flat, $P1602 :named("outer_ctx"))
    store_lex "$output", $P1604
.annotate 'line', 1235
    pop_eh 
    goto skip_handler_1605
  control_1606:
.annotate 'line', 1237
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1611 = "190_1306916546.01542" 
    newclosure $P1619, $P1611
    $P1619(exception)
    new $P1620, 'Integer'
    set $P1620, 1
    set exception["handled"], $P1620
    set $I1621, exception["handled"]
    ne $I1621, 1, nothandled_1609
  handled_1608:
    .return (exception)
  nothandled_1609:
    rethrow exception
  skip_handler_1605:
.annotate 'line', 1235
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1610"  :anon :subid("190_1306916546.01542") :outer("189_1306916546.01542")
    .param pmc param_1612
.annotate 'line', 1237
    .lex "$_", param_1612
    find_lex $P1613, "$_"
    .lex "$!", $P1613
.annotate 'line', 1238
    find_lex $P1614, "$!"
    unless_null $P1614, vivify_785
    new $P1614, "Undef"
  vivify_785:
    set $S1615, $P1614
    new $P1616, 'String'
    set $P1616, $S1615
    concat $P1617, $P1616, "\n"
    print $P1617
.annotate 'line', 1239
    set $I1618, .CONTROL_LOOP_NEXT
    die 0, $I1618
.annotate 'line', 1237
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1627"  :anon :subid("191_1306916546.01542") :outer("188_1306916546.01542")
.annotate 'line', 1242
    .const 'Sub' $P1643 = "192_1306916546.01542" 
    capture_lex $P1643
    find_lex $P1629, "$?PACKAGE"
    get_who $P1630, $P1629
    set $P1631, $P1630["$interactive_ctx"]
    unless_null $P1631, vivify_788
    new $P1631, "Undef"
  vivify_788:
    find_lex $P1632, "$?PACKAGE"
    get_who $P1633, $P1632
    set $P1634, $P1633["%interactive_pad"]
    unless_null $P1634, vivify_789
    $P1634 = root_new ['parrot';'Hash']
  vivify_789:
.annotate 'line', 1245
    find_dynamic_lex $P1638, "$*MAIN_CTX"
    unless_null $P1638, vivify_790
    get_hll_global $P1636, "GLOBAL"
    get_who $P1637, $P1636
    set $P1638, $P1637["$MAIN_CTX"]
    unless_null $P1638, vivify_791
    die "Contextual $*MAIN_CTX not found"
  vivify_791:
  vivify_790:
    $P1639 = $P1638."lexpad_full"()
    defined $I1640, $P1639
    unless $I1640, for_undef_792
    iter $P1635, $P1639
    new $P1653, 'ExceptionHandler'
    set_label $P1653, loop1652_handler
    $P1653."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1653
  loop1652_test:
    unless $P1635, loop1652_done
    shift $P1641, $P1635
  loop1652_redo:
    .const 'Sub' $P1643 = "192_1306916546.01542" 
    capture_lex $P1643
    $P1643($P1641)
  loop1652_next:
    goto loop1652_test
  loop1652_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1654, exception, 'type'
    eq $P1654, .CONTROL_LOOP_NEXT, loop1652_next
    eq $P1654, .CONTROL_LOOP_REDO, loop1652_redo
  loop1652_done:
    pop_eh 
  for_undef_792:
.annotate 'line', 1248
    find_lex $P1655, "$?PACKAGE"
    get_who $P1656, $P1655
    set $P1657, $P1656["$interactive_ctx"]
    unless_null $P1657, vivify_796
    new $P1657, "Undef"
  vivify_796:
    store_lex "$save_ctx", $P1657
.annotate 'line', 1242
    .return ($P1657)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1642"  :anon :subid("192_1306916546.01542") :outer("191_1306916546.01542")
    .param pmc param_1644
.annotate 'line', 1245
    .lex "$_", param_1644
.annotate 'line', 1246
    find_lex $P1645, "$_"
    unless_null $P1645, vivify_793
    new $P1645, "Undef"
  vivify_793:
    $P1646 = $P1645."value"()
    find_lex $P1647, "$_"
    unless_null $P1647, vivify_794
    new $P1647, "Undef"
  vivify_794:
    $P1648 = $P1647."key"()
    find_lex $P1649, "$?PACKAGE"
    get_who $P1650, $P1649
    set $P1651, $P1650["%interactive_pad"]
    unless_null $P1651, vivify_795
    $P1651 = root_new ['parrot';'Hash']
    set $P1650["%interactive_pad"], $P1651
  vivify_795:
    set $P1651[$P1648], $P1646
.annotate 'line', 1245
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("193_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1685
    .param pmc param_1686
    .param pmc param_1687 :slurpy
    .param pmc param_1688 :slurpy :named
.annotate 'line', 1263
    .const 'Sub' $P1707 = "194_1306916546.01542" 
    capture_lex $P1707
    .lex "self", param_1685
    .lex "$code", param_1686
    .lex "@args", param_1687
    .lex "%adverbs", param_1688
.annotate 'line', 1264
    new $P1689, "Undef"
    .lex "$output", $P1689
.annotate 'line', 1263
    find_lex $P1690, "$output"
    unless_null $P1690, vivify_805
    new $P1690, "Undef"
  vivify_805:
.annotate 'line', 1265
    find_lex $P1691, "self"
    find_lex $P1692, "$code"
    unless_null $P1692, vivify_806
    new $P1692, "Undef"
  vivify_806:
    find_lex $P1693, "%adverbs"
    unless_null $P1693, vivify_807
    $P1693 = root_new ['parrot';'Hash']
  vivify_807:
    $P1694 = $P1691."compile"($P1692, $P1693 :flat)
    store_lex "$output", $P1694
.annotate 'line', 1267
    find_lex $P1698, "$output"
    unless_null $P1698, vivify_808
    new $P1698, "Undef"
  vivify_808:
    isa $I1699, $P1698, "String"
    new $P1700, 'Integer'
    set $P1700, $I1699
    isfalse $I1701, $P1700
    if $I1701, if_1697
    new $P1696, 'Integer'
    set $P1696, $I1701
    goto if_1697_end
  if_1697:
.annotate 'line', 1268
    find_lex $P1702, "%adverbs"
    unless_null $P1702, vivify_809
    $P1702 = root_new ['parrot';'Hash']
  vivify_809:
    set $P1703, $P1702["target"]
    unless_null $P1703, vivify_810
    new $P1703, "Undef"
  vivify_810:
    set $S1704, $P1703
    iseq $I1705, $S1704, ""
    new $P1696, 'Integer'
    set $P1696, $I1705
  if_1697_end:
    unless $P1696, if_1695_end
    .const 'Sub' $P1707 = "194_1306916546.01542" 
    capture_lex $P1707
    $P1707()
  if_1695_end:
.annotate 'line', 1267
    find_lex $P1723, "$output"
    unless_null $P1723, vivify_821
    new $P1723, "Undef"
  vivify_821:
.annotate 'line', 1263
    .return ($P1723)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1706"  :anon :subid("194_1306916546.01542") :outer("193_1306916546.01542")
.annotate 'line', 1269
    new $P1708, "Undef"
    .lex "$outer_ctx", $P1708
    find_lex $P1709, "%adverbs"
    unless_null $P1709, vivify_811
    $P1709 = root_new ['parrot';'Hash']
  vivify_811:
    set $P1710, $P1709["outer_ctx"]
    unless_null $P1710, vivify_812
    new $P1710, "Undef"
  vivify_812:
    store_lex "$outer_ctx", $P1710
.annotate 'line', 1270
    find_lex $P1712, "$outer_ctx"
    unless_null $P1712, vivify_813
    new $P1712, "Undef"
  vivify_813:
    defined $I1713, $P1712
    unless $I1713, if_1711_end
.annotate 'line', 1271
    find_lex $P1714, "$output"
    unless_null $P1714, vivify_814
    $P1714 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    set $P1715, $P1714[0]
    unless_null $P1715, vivify_815
    new $P1715, "Undef"
  vivify_815:
    find_lex $P1716, "$outer_ctx"
    unless_null $P1716, vivify_816
    new $P1716, "Undef"
  vivify_816:
    $P1715."set_outer_ctx"($P1716)
  if_1711_end:
.annotate 'line', 1274
    find_lex $P1717, "%adverbs"
    unless_null $P1717, vivify_817
    $P1717 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1718, $P1717["trace"]
    unless_null $P1718, vivify_818
    new $P1718, "Undef"
  vivify_818:
    set $I1719, $P1718
    trace $I1719
.annotate 'line', 1275
    find_lex $P1720, "$output"
    unless_null $P1720, vivify_819
    new $P1720, "Undef"
  vivify_819:
    find_lex $P1721, "@args"
    unless_null $P1721, vivify_820
    $P1721 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    $P1722 = $P1720($P1721 :flat)
    store_lex "$output", $P1722
.annotate 'line', 1276
    trace 0
.annotate 'line', 1268
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("195_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1725
.annotate 'line', 1282
    .lex "self", param_1725
.annotate 'line', 1284

                $P0 = getinterp
                $P1726 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1726
.annotate 'line', 1288
    new $P1727, "Integer"
    assign $P1727, 0
    store_dynamic_lex "$*CTXSAVE", $P1727
.annotate 'line', 1282
    .return ($P1727)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("196_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1729
    .param pmc param_1730 :slurpy
.annotate 'line', 1291
    .lex "self", param_1729
    .lex "@args", param_1730
.annotate 'line', 1292
    find_lex $P1731, "@args"
    unless_null $P1731, vivify_822
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    join $S1732, "", $P1731
    die $S1732
.annotate 'line', 1291
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("197_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1734
    .param pmc param_1735 :optional
    .param int has_param_1735 :opt_flag
.annotate 'line', 1295
    .lex "self", param_1734
    if has_param_1735, optparam_823
    $P1736 = root_new ['parrot';'ResizablePMCArray']
    set param_1735, $P1736
  optparam_823:
    .lex "@value", param_1735
.annotate 'line', 1296
    find_lex $P1738, "@value"
    unless_null $P1738, vivify_824
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    set $N1739, $P1738
    unless $N1739, if_1737_end
.annotate 'line', 1297
    find_lex $P1740, "@value"
    unless_null $P1740, vivify_825
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    find_lex $P1741, "self"
    find_lex $P1742, "$?CLASS"
    setattribute $P1741, $P1742, "@!stages", $P1740
  if_1737_end:
.annotate 'line', 1296
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!stages"
    unless_null $P1745, vivify_826
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
.annotate 'line', 1295
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("198_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1747
    .param pmc param_1748 :slurpy
.annotate 'line', 1302
    .lex "self", param_1747
    .lex "@value", param_1748
.annotate 'line', 1303
    find_lex $P1750, "@value"
    unless_null $P1750, vivify_827
    $P1750 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    set $N1751, $P1750
    unless $N1751, if_1749_end
.annotate 'line', 1304
    find_lex $P1752, "@value"
    unless_null $P1752, vivify_828
    $P1752 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    set $P1753, $P1752[0]
    unless_null $P1753, vivify_829
    new $P1753, "Undef"
  vivify_829:
    find_lex $P1754, "self"
    find_lex $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!parsegrammar", $P1753
  if_1749_end:
.annotate 'line', 1303
    find_lex $P1756, "self"
    find_lex $P1757, "$?CLASS"
    getattribute $P1758, $P1756, $P1757, "$!parsegrammar"
    unless_null $P1758, vivify_830
    new $P1758, "Undef"
  vivify_830:
.annotate 'line', 1302
    .return ($P1758)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("199_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1760
    .param pmc param_1761 :slurpy
.annotate 'line', 1309
    .lex "self", param_1760
    .lex "@value", param_1761
.annotate 'line', 1310
    find_lex $P1763, "@value"
    unless_null $P1763, vivify_831
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $N1764, $P1763
    unless $N1764, if_1762_end
.annotate 'line', 1311
    find_lex $P1765, "@value"
    unless_null $P1765, vivify_832
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_832:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_833
    new $P1766, "Undef"
  vivify_833:
    find_lex $P1767, "self"
    find_lex $P1768, "$?CLASS"
    setattribute $P1767, $P1768, "$!parseactions", $P1766
  if_1762_end:
.annotate 'line', 1310
    find_lex $P1769, "self"
    find_lex $P1770, "$?CLASS"
    getattribute $P1771, $P1769, $P1770, "$!parseactions"
    unless_null $P1771, vivify_834
    new $P1771, "Undef"
  vivify_834:
.annotate 'line', 1309
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar" :anon :subid("200_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1773
    .param pmc param_1774 :slurpy
.annotate 'line', 1316
    .lex "self", param_1773
    .lex "@value", param_1774
.annotate 'line', 1317
    find_lex $P1776, "@value"
    unless_null $P1776, vivify_835
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    set $N1777, $P1776
    unless $N1777, if_1775_end
.annotate 'line', 1318
    find_lex $P1778, "@value"
    unless_null $P1778, vivify_836
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    set $P1779, $P1778[0]
    unless_null $P1779, vivify_837
    new $P1779, "Undef"
  vivify_837:
    find_lex $P1780, "self"
    find_lex $P1781, "$?CLASS"
    setattribute $P1780, $P1781, "$!astgrammar", $P1779
  if_1775_end:
.annotate 'line', 1317
    find_lex $P1782, "self"
    find_lex $P1783, "$?CLASS"
    getattribute $P1784, $P1782, $P1783, "$!astgrammar"
    unless_null $P1784, vivify_838
    new $P1784, "Undef"
  vivify_838:
.annotate 'line', 1316
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner" :anon :subid("201_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1786
    .param pmc param_1787 :optional
    .param int has_param_1787 :opt_flag
.annotate 'line', 1323
    .lex "self", param_1786
    if has_param_1787, optparam_839
    new $P1788, "Undef"
    set param_1787, $P1788
  optparam_839:
    .lex "$value", param_1787
.annotate 'line', 1324
    find_lex $P1790, "$value"
    unless_null $P1790, vivify_840
    new $P1790, "Undef"
  vivify_840:
    defined $I1791, $P1790
    unless $I1791, if_1789_end
.annotate 'line', 1325
    find_lex $P1792, "$value"
    unless_null $P1792, vivify_841
    new $P1792, "Undef"
  vivify_841:
    find_lex $P1793, "self"
    find_lex $P1794, "$?CLASS"
    setattribute $P1793, $P1794, "$!commandline_banner", $P1792
  if_1789_end:
.annotate 'line', 1324
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "$!commandline_banner"
    unless_null $P1797, vivify_842
    new $P1797, "Undef"
  vivify_842:
.annotate 'line', 1323
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt" :anon :subid("202_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1799
    .param pmc param_1800 :optional
    .param int has_param_1800 :opt_flag
.annotate 'line', 1330
    .lex "self", param_1799
    if has_param_1800, optparam_843
    new $P1801, "Undef"
    set param_1800, $P1801
  optparam_843:
    .lex "$value", param_1800
.annotate 'line', 1331
    find_lex $P1803, "$value"
    unless_null $P1803, vivify_844
    new $P1803, "Undef"
  vivify_844:
    defined $I1804, $P1803
    unless $I1804, if_1802_end
.annotate 'line', 1332
    find_lex $P1805, "$value"
    unless_null $P1805, vivify_845
    new $P1805, "Undef"
  vivify_845:
    find_lex $P1806, "self"
    find_lex $P1807, "$?CLASS"
    setattribute $P1806, $P1807, "$!commandline_prompt", $P1805
  if_1802_end:
.annotate 'line', 1331
    find_lex $P1808, "self"
    find_lex $P1809, "$?CLASS"
    getattribute $P1810, $P1808, $P1809, "$!commandline_prompt"
    unless_null $P1810, vivify_846
    new $P1810, "Undef"
  vivify_846:
.annotate 'line', 1330
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("203_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1812
    .param pmc param_1813 :optional
    .param int has_param_1813 :opt_flag
.annotate 'line', 1337
    .lex "self", param_1812
    if has_param_1813, optparam_847
    new $P1814, "Undef"
    set param_1813, $P1814
  optparam_847:
    .lex "$value", param_1813
.annotate 'line', 1338
    find_lex $P1816, "$value"
    unless_null $P1816, vivify_848
    new $P1816, "Undef"
  vivify_848:
    defined $I1817, $P1816
    unless $I1817, if_1815_end
.annotate 'line', 1339
    find_lex $P1818, "$value"
    unless_null $P1818, vivify_849
    new $P1818, "Undef"
  vivify_849:
    find_lex $P1819, "self"
    find_lex $P1820, "$?CLASS"
    setattribute $P1819, $P1820, "$!compiler_progname", $P1818
  if_1815_end:
.annotate 'line', 1338
    find_lex $P1821, "self"
    find_lex $P1822, "$?CLASS"
    getattribute $P1823, $P1821, $P1822, "$!compiler_progname"
    unless_null $P1823, vivify_850
    new $P1823, "Undef"
  vivify_850:
.annotate 'line', 1337
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("204_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1825
    .param pmc param_1826 :optional
    .param int has_param_1826 :opt_flag
.annotate 'line', 1344
    .lex "self", param_1825
    if has_param_1826, optparam_851
    $P1827 = root_new ['parrot';'ResizablePMCArray']
    set param_1826, $P1827
  optparam_851:
    .lex "@value", param_1826
.annotate 'line', 1345
    find_lex $P1829, "@value"
    unless_null $P1829, vivify_852
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $N1830, $P1829
    unless $N1830, if_1828_end
.annotate 'line', 1346
    find_lex $P1831, "@value"
    unless_null $P1831, vivify_853
    $P1831 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    find_lex $P1832, "self"
    find_lex $P1833, "$?CLASS"
    setattribute $P1832, $P1833, "@!cmdoptions", $P1831
  if_1828_end:
.annotate 'line', 1345
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "@!cmdoptions"
    unless_null $P1836, vivify_854
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
.annotate 'line', 1344
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line" :anon :subid("205_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1838
    .param pmc param_1839
    .param pmc param_1840 :slurpy :named
.annotate 'line', 1351
    .const 'Sub' $P1866 = "206_1306916546.01542" 
    capture_lex $P1866
    .lex "self", param_1838
    .lex "@args", param_1839
    .lex "%adverbs", param_1840
.annotate 'line', 1364
    new $P1841, "Undef"
    .lex "$program-name", $P1841
.annotate 'line', 1365
    new $P1842, "Undef"
    .lex "$res", $P1842
.annotate 'line', 1366
    $P1843 = root_new ['parrot';'Hash']
    .lex "%opts", $P1843
.annotate 'line', 1367
    $P1844 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1844
.annotate 'line', 1360
    find_lex $P1846, "@args"
    unless_null $P1846, vivify_855
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1847, $P1846[2]
    unless_null $P1847, vivify_856
    new $P1847, "Undef"
  vivify_856:
    set $S1848, $P1847
    index $I1849, $S1848, "@INC"
    set $N1850, $I1849
    isge $I1851, $N1850, 0.0
    unless $I1851, if_1845_end
.annotate 'line', 1361
    exit 0
  if_1845_end:
.annotate 'line', 1364
    find_lex $P1852, "@args"
    unless_null $P1852, vivify_857
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $P1853, $P1852[0]
    unless_null $P1853, vivify_858
    new $P1853, "Undef"
  vivify_858:
    store_lex "$program-name", $P1853
.annotate 'line', 1365
    find_lex $P1854, "self"
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_859
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    $P1856 = $P1854."process_args"($P1855)
    store_lex "$res", $P1856
.annotate 'line', 1366
    find_lex $P1857, "$res"
    unless_null $P1857, vivify_860
    new $P1857, "Undef"
  vivify_860:
    $P1858 = $P1857."options"()
    store_lex "%opts", $P1858
.annotate 'line', 1367
    find_lex $P1859, "$res"
    unless_null $P1859, vivify_861
    new $P1859, "Undef"
  vivify_861:
    $P1860 = $P1859."arguments"()
    store_lex "@a", $P1860
.annotate 'line', 1369
    find_lex $P1862, "%opts"
    unless_null $P1862, vivify_862
    $P1862 = root_new ['parrot';'Hash']
  vivify_862:
    defined $I1863, $P1862
    unless $I1863, for_undef_863
    iter $P1861, $P1862
    new $P1874, 'ExceptionHandler'
    set_label $P1874, loop1873_handler
    $P1874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1874
  loop1873_test:
    unless $P1861, loop1873_done
    shift $P1864, $P1861
  loop1873_redo:
    .const 'Sub' $P1866 = "206_1306916546.01542" 
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
  for_undef_863:
.annotate 'line', 1372
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_869
    $P1877 = root_new ['parrot';'Hash']
  vivify_869:
    set $P1878, $P1877["help"]
    unless_null $P1878, vivify_870
    new $P1878, "Undef"
  vivify_870:
    unless $P1878, if_1876_end
    find_lex $P1879, "self"
    find_lex $P1880, "$program-name"
    unless_null $P1880, vivify_871
    new $P1880, "Undef"
  vivify_871:
    $P1879."usage"($P1880)
  if_1876_end:
.annotate 'line', 1373
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_872
    $P1882 = root_new ['parrot';'Hash']
  vivify_872:
    set $P1883, $P1882["version"]
    unless_null $P1883, vivify_873
    new $P1883, "Undef"
  vivify_873:
    unless $P1883, if_1881_end
    find_lex $P1884, "self"
    $P1884."version"()
  if_1881_end:
.annotate 'line', 1374
    find_lex $P1886, "%adverbs"
    unless_null $P1886, vivify_874
    $P1886 = root_new ['parrot';'Hash']
  vivify_874:
    set $P1887, $P1886["show-config"]
    unless_null $P1887, vivify_875
    new $P1887, "Undef"
  vivify_875:
    unless $P1887, if_1885_end
    find_lex $P1888, "self"
    $P1888."show-config"()
  if_1885_end:
.annotate 'line', 1376

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
        
.annotate 'line', 1351
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1865"  :anon :subid("206_1306916546.01542") :outer("205_1306916546.01542")
    .param pmc param_1867
.annotate 'line', 1369
    .lex "$k", param_1867
.annotate 'line', 1370
    find_lex $P1868, "$k"
    unless_null $P1868, vivify_864
    new $P1868, "Undef"
  vivify_864:
    find_lex $P1869, "%opts"
    unless_null $P1869, vivify_865
    $P1869 = root_new ['parrot';'Hash']
  vivify_865:
    set $P1870, $P1869[$P1868]
    unless_null $P1870, vivify_866
    new $P1870, "Undef"
  vivify_866:
    find_lex $P1871, "$k"
    unless_null $P1871, vivify_867
    new $P1871, "Undef"
  vivify_867:
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_868
    $P1872 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1872
  vivify_868:
    set $P1872[$P1871], $P1870
.annotate 'line', 1369
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("207_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1890
    .param pmc param_1891
.annotate 'line', 1470
    .const 'Sub' $P1910 = "208_1306916546.01542" 
    capture_lex $P1910
    .lex "self", param_1890
    .lex "@args", param_1891
.annotate 'line', 1474
    new $P1892, "Undef"
    .lex "$p", $P1892
.annotate 'line', 1477
    new $P1893, "Undef"
    .lex "$res", $P1893
.annotate 'line', 1472
    find_lex $P1894, "self"
    find_lex $P1895, "@args"
    unless_null $P1895, vivify_876
    $P1895 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    $P1896 = $P1895."shift"()
    $P1894."compiler_progname"($P1896)
.annotate 'line', 1474
    get_hll_global $P1897, "GLOBAL"
    nqp_get_package_through_who $P1898, $P1897, "HLL"
    nqp_get_package_through_who $P1899, $P1898, "CommandLine"
    get_who $P1900, $P1899
    set $P1901, $P1900["Parser"]
    find_lex $P1902, "self"
    find_lex $P1903, "$?CLASS"
    getattribute $P1904, $P1902, $P1903, "@!cmdoptions"
    unless_null $P1904, vivify_877
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
    $P1905 = $P1901."new"($P1904)
    store_lex "$p", $P1905
.annotate 'line', 1475
    find_lex $P1906, "$p"
    unless_null $P1906, vivify_878
    new $P1906, "Undef"
  vivify_878:
    $P1906."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P1907, "$p"
    unless_null $P1907, vivify_879
    new $P1907, "Undef"
  vivify_879:
    $P1907."stop-after-first-arg"()
    find_lex $P1908, "$res"
    unless_null $P1908, vivify_880
    new $P1908, "Undef"
  vivify_880:
.annotate 'line', 1478
    .const 'Sub' $P1910 = "208_1306916546.01542" 
    capture_lex $P1910
    $P1910()
    find_lex $P1928, "$res"
    unless_null $P1928, vivify_884
    new $P1928, "Undef"
  vivify_884:
.annotate 'line', 1470
    .return ($P1928)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1909"  :anon :subid("208_1306916546.01542") :outer("207_1306916546.01542")
.annotate 'line', 1478
    .const 'Sub' $P1920 = "209_1306916546.01542" 
    capture_lex $P1920
    new $P1916, 'ExceptionHandler'
    set_label $P1916, control_1915
    $P1916."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1916
.annotate 'line', 1479
    find_lex $P1911, "$p"
    unless_null $P1911, vivify_881
    new $P1911, "Undef"
  vivify_881:
    find_lex $P1912, "@args"
    unless_null $P1912, vivify_882
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_882:
    $P1913 = $P1911."parse"($P1912)
    store_lex "$res", $P1913
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1914
  control_1915:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1920 = "209_1306916546.01542" 
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
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1919"  :anon :subid("209_1306916546.01542") :outer("208_1306916546.01542")
    .param pmc param_1921
.annotate 'line', 1480
    .lex "$_", param_1921
    find_lex $P1922, "$_"
    .lex "$!", $P1922
.annotate 'line', 1481
    find_lex $P1923, "$_"
    unless_null $P1923, vivify_883
    new $P1923, "Undef"
  vivify_883:
    say $P1923
.annotate 'line', 1482
    find_lex $P1924, "self"
    $P1924."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("210_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934 :slurpy
    .param pmc param_1935 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P1960 = "211_1306916546.01542" 
    capture_lex $P1960
    new $P1931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1931, control_1930
    push_eh $P1931
    .lex "self", param_1932
    .lex "$files", param_1933
    .lex "@args", param_1934
    .lex "%adverbs", param_1935
.annotate 'line', 1490
    new $P1936, "Undef"
    .lex "$target", $P1936
.annotate 'line', 1491
    new $P1937, "Undef"
    .lex "$encoding", $P1937
.annotate 'line', 1492
    $P1938 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P1938
.annotate 'line', 1493
    $P1939 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P1939
.annotate 'line', 1490
    find_lex $P1940, "%adverbs"
    unless_null $P1940, vivify_885
    $P1940 = root_new ['parrot';'Hash']
  vivify_885:
    set $P1941, $P1940["target"]
    unless_null $P1941, vivify_886
    new $P1941, "Undef"
  vivify_886:
    set $S1942, $P1941
    downcase $S1943, $S1942
    new $P1944, 'String'
    set $P1944, $S1943
    store_lex "$target", $P1944
.annotate 'line', 1491
    find_lex $P1945, "%adverbs"
    unless_null $P1945, vivify_887
    $P1945 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1946, $P1945["encoding"]
    unless_null $P1946, vivify_888
    new $P1946, "Undef"
  vivify_888:
    store_lex "$encoding", $P1946
.annotate 'line', 1492
    find_lex $P1949, "$files"
    unless_null $P1949, vivify_889
    new $P1949, "Undef"
  vivify_889:
    does $I1950, $P1949, "array"
    if $I1950, if_1948
    find_lex $P1952, "$files"
    unless_null $P1952, vivify_890
    new $P1952, "Undef"
  vivify_890:
    new $P1953, "ResizablePMCArray"
    push $P1953, $P1952
    set $P1947, $P1953
    goto if_1948_end
  if_1948:
    find_lex $P1951, "$files"
    unless_null $P1951, vivify_891
    new $P1951, "Undef"
  vivify_891:
    set $P1947, $P1951
  if_1948_end:
    store_lex "@files", $P1947
    find_lex $P1954, "@codes"
    unless_null $P1954, vivify_892
    $P1954 = root_new ['parrot';'ResizablePMCArray']
  vivify_892:
.annotate 'line', 1494
    find_lex $P1956, "@files"
    unless_null $P1956, vivify_893
    $P1956 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    defined $I1957, $P1956
    unless $I1957, for_undef_894
    iter $P1955, $P1956
    new $P2022, 'ExceptionHandler'
    set_label $P2022, loop2021_handler
    $P2022."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2022
  loop2021_test:
    unless $P1955, loop2021_done
    shift $P1958, $P1955
  loop2021_redo:
    .const 'Sub' $P1960 = "211_1306916546.01542" 
    capture_lex $P1960
    $P1960($P1958)
  loop2021_next:
    goto loop2021_test
  loop2021_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2023, exception, 'type'
    eq $P2023, .CONTROL_LOOP_NEXT, loop2021_next
    eq $P2023, .CONTROL_LOOP_REDO, loop2021_redo
  loop2021_done:
    pop_eh 
  for_undef_894:
.annotate 'line', 1489
    .return ($P1955)
  control_1930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2024, exception, "payload"
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1959"  :anon :subid("211_1306916546.01542") :outer("210_1306916546.01542")
    .param pmc param_1965
.annotate 'line', 1494
    .const 'Sub' $P1969 = "212_1306916546.01542" 
    capture_lex $P1969
.annotate 'line', 1495
    new $P1961, "Undef"
    .lex "$in-handle", $P1961
.annotate 'line', 1496
    new $P1962, "Undef"
    .lex "$err", $P1962
.annotate 'line', 1509
    new $P1963, "Undef"
    .lex "$code", $P1963
.annotate 'line', 1511
    new $P1964, "Undef"
    .lex "$r", $P1964
    .lex "$_", param_1965
.annotate 'line', 1495
    new $P1966, "FileHandle"
    store_lex "$in-handle", $P1966
.annotate 'line', 1496
    new $P1967, "Integer"
    assign $P1967, 0
    store_lex "$err", $P1967
.annotate 'line', 1497
    .const 'Sub' $P1969 = "212_1306916546.01542" 
    capture_lex $P1969
    $P1969()
.annotate 'line', 1508
    find_lex $P1993, "$err"
    unless_null $P1993, vivify_902
    new $P1993, "Undef"
  vivify_902:
    unless $P1993, if_1992_end
    find_lex $P1994, "$err"
    unless_null $P1994, vivify_903
    new $P1994, "Undef"
  vivify_903:
    die $P1994
  if_1992_end:
.annotate 'line', 1509
    find_lex $P1995, "@codes"
    unless_null $P1995, vivify_904
    $P1995 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    join $S1996, "", $P1995
    new $P1997, 'String'
    set $P1997, $S1996
    store_lex "$code", $P1997
.annotate 'line', 1511
    find_lex $P1998, "self"
    find_lex $P1999, "$code"
    unless_null $P1999, vivify_905
    new $P1999, "Undef"
  vivify_905:
    find_lex $P2000, "@args"
    unless_null $P2000, vivify_906
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_906:
    find_lex $P2001, "%adverbs"
    unless_null $P2001, vivify_907
    $P2001 = root_new ['parrot';'Hash']
  vivify_907:
    $P2002 = $P1998."eval"($P1999, $P2000 :flat, $P2001 :flat)
    store_lex "$r", $P2002
.annotate 'line', 1512
    find_lex $P2007, "$target"
    unless_null $P2007, vivify_908
    new $P2007, "Undef"
  vivify_908:
    set $S2008, $P2007
    iseq $I2009, $S2008, ""
    unless $I2009, unless_2006
    new $P2005, 'Integer'
    set $P2005, $I2009
    goto unless_2006_end
  unless_2006:
    find_lex $P2010, "$target"
    unless_null $P2010, vivify_909
    new $P2010, "Undef"
  vivify_909:
    set $S2011, $P2010
    iseq $I2012, $S2011, "pir"
    new $P2005, 'Integer'
    set $P2005, $I2012
  unless_2006_end:
    if $P2005, if_2004
.annotate 'line', 1515
    new $P2015, "Exception"
    set $P2015['type'], .CONTROL_RETURN
    find_lex $P2016, "self"
    find_lex $P2017, "$r"
    unless_null $P2017, vivify_910
    new $P2017, "Undef"
  vivify_910:
    find_lex $P2018, "$target"
    unless_null $P2018, vivify_911
    new $P2018, "Undef"
  vivify_911:
    find_lex $P2019, "%adverbs"
    unless_null $P2019, vivify_912
    $P2019 = root_new ['parrot';'Hash']
  vivify_912:
    $P2020 = $P2016."dumper"($P2017, $P2018, $P2019 :flat)
    setattribute $P2015, 'payload', $P2020
    throw $P2015
.annotate 'line', 1514
    goto if_2004_end
  if_2004:
.annotate 'line', 1513
    new $P2013, "Exception"
    set $P2013['type'], .CONTROL_RETURN
    find_lex $P2014, "$r"
    unless_null $P2014, vivify_913
    new $P2014, "Undef"
  vivify_913:
    setattribute $P2013, 'payload', $P2014
    throw $P2013
  if_2004_end:
.annotate 'line', 1494
    .return ($P2003)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1968"  :anon :subid("212_1306916546.01542") :outer("211_1306916546.01542")
.annotate 'line', 1497
    .const 'Sub' $P1983 = "213_1306916546.01542" 
    capture_lex $P1983
    new $P1979, 'ExceptionHandler'
    set_label $P1979, control_1978
    $P1979."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1979
.annotate 'line', 1501
    find_lex $P1970, "$in-handle"
    unless_null $P1970, vivify_895
    new $P1970, "Undef"
  vivify_895:
    find_lex $P1971, "$encoding"
    unless_null $P1971, vivify_896
    new $P1971, "Undef"
  vivify_896:
    $P1970."encoding"($P1971)
.annotate 'line', 1502
    find_lex $P1972, "@codes"
    unless_null $P1972, vivify_897
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
    find_lex $P1973, "$in-handle"
    unless_null $P1973, vivify_898
    new $P1973, "Undef"
  vivify_898:
    find_lex $P1974, "$_"
    unless_null $P1974, vivify_899
    new $P1974, "Undef"
  vivify_899:
    $P1975 = $P1973."readall"($P1974)
    push $P1972, $P1975
.annotate 'line', 1503
    find_lex $P1976, "$in-handle"
    unless_null $P1976, vivify_900
    new $P1976, "Undef"
  vivify_900:
    $P1976."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_1977
  control_1978:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1983 = "213_1306916546.01542" 
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
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1982"  :anon :subid("213_1306916546.01542") :outer("212_1306916546.01542")
    .param pmc param_1984
.annotate 'line', 1504
    .lex "$_", param_1984
    find_lex $P1985, "$_"
    .lex "$!", $P1985
.annotate 'line', 1505
    new $P1986, 'String'
    set $P1986, "Error while reading from file: "
    find_lex $P1987, "$_"
    unless_null $P1987, vivify_901
    new $P1987, "Undef"
  vivify_901:
    concat $P1988, $P1986, $P1987
    store_lex "$err", $P1988
.annotate 'line', 1504
    .return ($P1988)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("214_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2028
    .param pmc param_2029
    .param pmc param_2030 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2053 = "215_1306916546.01542" 
    capture_lex $P2053
    new $P2027, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2027, control_2026
    push_eh $P2027
    .lex "self", param_2028
    .lex "$source", param_2029
    .lex "%adverbs", param_2030
.annotate 'line', 1522
    $P2031 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2031
.annotate 'line', 1524
    new $P2032, "Undef"
    .lex "$target", $P2032
.annotate 'line', 1525
    new $P2033, "Undef"
    .lex "$result", $P2033
.annotate 'line', 1526
    new $P2034, "Undef"
    .lex "$stderr", $P2034
.annotate 'line', 1522
    find_lex $P2035, "%adverbs"
    unless_null $P2035, vivify_914
    $P2035 = root_new ['parrot';'Hash']
  vivify_914:
    find_lex $P2038, "%*COMPILING"
    unless_null $P2038, vivify_915
    get_hll_global $P2036, "GLOBAL"
    get_who $P2037, $P2036
    set $P2038, $P2037["%COMPILING"]
    unless_null $P2038, vivify_916
    die "Contextual %*COMPILING not found"
  vivify_916:
    store_lex "%*COMPILING", $P2038
  vivify_915:
    set $P2038["%?OPTIONS"], $P2035
.annotate 'line', 1524
    find_lex $P2039, "%adverbs"
    unless_null $P2039, vivify_917
    $P2039 = root_new ['parrot';'Hash']
  vivify_917:
    set $P2040, $P2039["target"]
    unless_null $P2040, vivify_918
    new $P2040, "Undef"
  vivify_918:
    set $S2041, $P2040
    downcase $S2042, $S2041
    new $P2043, 'String'
    set $P2043, $S2042
    store_lex "$target", $P2043
.annotate 'line', 1525
    find_lex $P2044, "$source"
    unless_null $P2044, vivify_919
    new $P2044, "Undef"
  vivify_919:
    store_lex "$result", $P2044
.annotate 'line', 1526
    getinterp $P2045
    $P2046 = $P2045."stderr_handle"()
    store_lex "$stderr", $P2046
.annotate 'line', 1527
    find_lex $P2048, "self"
    $P2049 = $P2048."stages"()
    defined $I2050, $P2049
    unless $I2050, for_undef_920
    iter $P2047, $P2049
    new $P2089, 'ExceptionHandler'
    set_label $P2089, loop2088_handler
    $P2089."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2089
  loop2088_test:
    unless $P2047, loop2088_done
    shift $P2051, $P2047
  loop2088_redo:
    .const 'Sub' $P2053 = "215_1306916546.01542" 
    capture_lex $P2053
    $P2053($P2051)
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
  for_undef_920:
.annotate 'line', 1537
    new $P2091, "Exception"
    set $P2091['type'], .CONTROL_RETURN
    find_lex $P2092, "$result"
    unless_null $P2092, vivify_932
    new $P2092, "Undef"
  vivify_932:
    setattribute $P2091, 'payload', $P2092
    throw $P2091
.annotate 'line', 1521
    .return ()
  control_2026:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2093, exception, "payload"
    .return ($P2093)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2052"  :anon :subid("215_1306916546.01542") :outer("214_1306916546.01542")
    .param pmc param_2056
.annotate 'line', 1528
    new $P2054, "Undef"
    .lex "$timestamp", $P2054
.annotate 'line', 1530
    new $P2055, "Undef"
    .lex "$diff", $P2055
    .lex "$_", param_2056
.annotate 'line', 1528
    time $N2057
    new $P2058, 'Float'
    set $P2058, $N2057
    store_lex "$timestamp", $P2058
.annotate 'line', 1529
    find_lex $P2059, "self"
    find_lex $P2060, "$result"
    unless_null $P2060, vivify_921
    new $P2060, "Undef"
  vivify_921:
    find_lex $P2061, "%adverbs"
    unless_null $P2061, vivify_922
    $P2061 = root_new ['parrot';'Hash']
  vivify_922:
    find_lex $P2062, "$_"
    unless_null $P2062, vivify_923
    new $P2062, "Undef"
  vivify_923:
    set $S2063, $P2062
    $P2064 = $P2059.$S2063($P2060, $P2061 :flat)
    store_lex "$result", $P2064
.annotate 'line', 1530
    time $N2065
    new $P2066, 'Float'
    set $P2066, $N2065
    find_lex $P2067, "$timestamp"
    unless_null $P2067, vivify_924
    new $P2067, "Undef"
  vivify_924:
    sub $P2068, $P2066, $P2067
    store_lex "$diff", $P2068
.annotate 'line', 1531
    find_lex $P2070, "%adverbs"
    unless_null $P2070, vivify_925
    $P2070 = root_new ['parrot';'Hash']
  vivify_925:
    set $P2071, $P2070["stagestats"]
    unless_null $P2071, vivify_926
    new $P2071, "Undef"
  vivify_926:
    unless $P2071, if_2069_end
.annotate 'line', 1533
    find_lex $P2072, "$stderr"
    unless_null $P2072, vivify_927
    new $P2072, "Undef"
  vivify_927:
    new $P2073, 'String'
    set $P2073, "Stage "
    find_lex $P2074, "$_"
    unless_null $P2074, vivify_928
    new $P2074, "Undef"
  vivify_928:
    concat $P2075, $P2073, $P2074
    concat $P2076, $P2075, ": "
    find_lex $P2077, "$diff"
    unless_null $P2077, vivify_929
    new $P2077, "Undef"
  vivify_929:
    concat $P2078, $P2076, $P2077
    concat $P2079, $P2078, "\n"
    $P2072."print__N"($P2079)
  if_2069_end:
.annotate 'line', 1535
    find_lex $P2082, "$_"
    unless_null $P2082, vivify_930
    new $P2082, "Undef"
  vivify_930:
    set $S2083, $P2082
    find_lex $P2084, "$target"
    unless_null $P2084, vivify_931
    new $P2084, "Undef"
  vivify_931:
    set $S2085, $P2084
    iseq $I2086, $S2083, $S2085
    if $I2086, if_2081
    new $P2080, 'Integer'
    set $P2080, $I2086
    goto if_2081_end
  if_2081:
    set $I2087, .CONTROL_LOOP_LAST
    die 0, $I2087
  if_2081_end:
.annotate 'line', 1527
    .return ($P2080)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("216_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2097
    .param pmc param_2098
    .param pmc param_2099 :slurpy :named
.annotate 'line', 1540
    .const 'Sub' $P2116 = "217_1306916546.01542" 
    capture_lex $P2116
    new $P2096, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2096, control_2095
    push_eh $P2096
    .lex "self", param_2097
    .lex "$source", param_2098
    .lex "%adverbs", param_2099
.annotate 'line', 1541
    new $P2100, "Undef"
    .lex "$s", $P2100
.annotate 'line', 1550
    new $P2101, "Undef"
    .lex "$grammar", $P2101
.annotate 'line', 1551
    new $P2102, "Undef"
    .lex "$actions", $P2102
.annotate 'line', 1553
    new $P2103, "Undef"
    .lex "$match", $P2103
.annotate 'line', 1541
    find_lex $P2104, "$source"
    unless_null $P2104, vivify_933
    new $P2104, "Undef"
  vivify_933:
    store_lex "$s", $P2104
.annotate 'line', 1542
    find_lex $P2106, "%adverbs"
    unless_null $P2106, vivify_934
    $P2106 = root_new ['parrot';'Hash']
  vivify_934:
    set $P2107, $P2106["transcode"]
    unless_null $P2107, vivify_935
    new $P2107, "Undef"
  vivify_935:
    unless $P2107, if_2105_end
.annotate 'line', 1543
    find_lex $P2109, "%adverbs"
    unless_null $P2109, vivify_936
    $P2109 = root_new ['parrot';'Hash']
  vivify_936:
    set $P2110, $P2109["transcode"]
    unless_null $P2110, vivify_937
    new $P2110, "Undef"
  vivify_937:
    set $S2111, $P2110
    split $P2112, " ", $S2111
    defined $I2113, $P2112
    unless $I2113, for_undef_938
    iter $P2108, $P2112
    new $P2136, 'ExceptionHandler'
    set_label $P2136, loop2135_handler
    $P2136."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2136
  loop2135_test:
    unless $P2108, loop2135_done
    shift $P2114, $P2108
  loop2135_redo:
    .const 'Sub' $P2116 = "217_1306916546.01542" 
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
  for_undef_938:
  if_2105_end:
.annotate 'line', 1550
    find_lex $P2138, "self"
    $P2139 = $P2138."parsegrammar"()
    store_lex "$grammar", $P2139
    find_lex $P2140, "$actions"
    unless_null $P2140, vivify_941
    new $P2140, "Undef"
  vivify_941:
.annotate 'line', 1552
    find_lex $P2142, "%adverbs"
    unless_null $P2142, vivify_942
    $P2142 = root_new ['parrot';'Hash']
  vivify_942:
    set $P2143, $P2142["target"]
    unless_null $P2143, vivify_943
    new $P2143, "Undef"
  vivify_943:
    set $S2144, $P2143
    iseq $I2145, $S2144, "parse"
    if $I2145, unless_2141_end
    find_lex $P2146, "self"
    $P2147 = $P2146."parseactions"()
    store_lex "$actions", $P2147
  unless_2141_end:
.annotate 'line', 1553
    find_lex $P2148, "$grammar"
    unless_null $P2148, vivify_944
    new $P2148, "Undef"
  vivify_944:
    find_lex $P2149, "$s"
    unless_null $P2149, vivify_945
    new $P2149, "Undef"
  vivify_945:
    find_lex $P2150, "$actions"
    unless_null $P2150, vivify_946
    new $P2150, "Undef"
  vivify_946:
    find_lex $P2151, "%adverbs"
    unless_null $P2151, vivify_947
    $P2151 = root_new ['parrot';'Hash']
  vivify_947:
    set $P2152, $P2151["rxtrace"]
    unless_null $P2152, vivify_948
    new $P2152, "Undef"
  vivify_948:
    $P2153 = $P2148."parse"($P2149, 0 :named("p"), $P2150 :named("actions"), $P2152 :named("rxtrace"))
    store_lex "$match", $P2153
.annotate 'line', 1554
    find_lex $P2155, "$match"
    unless_null $P2155, vivify_949
    new $P2155, "Undef"
  vivify_949:
    if $P2155, unless_2154_end
    find_lex $P2156, "self"
    $P2156."panic"("Unable to parse source")
  unless_2154_end:
.annotate 'line', 1555
    new $P2157, "Exception"
    set $P2157['type'], .CONTROL_RETURN
    find_lex $P2158, "$match"
    unless_null $P2158, vivify_950
    new $P2158, "Undef"
  vivify_950:
    setattribute $P2157, 'payload', $P2158
    throw $P2157
.annotate 'line', 1540
    .return ()
  control_2095:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2159, exception, "payload"
    .return ($P2159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2115"  :anon :subid("217_1306916546.01542") :outer("216_1306916546.01542")
    .param pmc param_2117
.annotate 'line', 1543
    .const 'Sub' $P2119 = "218_1306916546.01542" 
    capture_lex $P2119
    .lex "$_", param_2117
.annotate 'line', 1544
    .const 'Sub' $P2119 = "218_1306916546.01542" 
    capture_lex $P2119
    $P2134 = $P2119()
.annotate 'line', 1543
    .return ($P2134)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2118"  :anon :subid("218_1306916546.01542") :outer("217_1306916546.01542")
.annotate 'line', 1544
    new $P2129, 'ExceptionHandler'
    set_label $P2129, control_2128
    $P2129."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2129
.annotate 'line', 1545
    find_lex $P2120, "$s"
    unless_null $P2120, vivify_939
    new $P2120, "Undef"
  vivify_939:
    set $S2121, $P2120
.annotate 'line', 1546
    find_lex $P2122, "$_"
    unless_null $P2122, vivify_940
    new $P2122, "Undef"
  vivify_940:
    set $S2123, $P2122
    find_encoding $I2124, $S2123
    trans_encoding $S2125, $S2121, $I2124
.annotate 'line', 1545
    new $P2126, 'String'
    set $P2126, $S2125
    store_lex "$s", $P2126
.annotate 'line', 1544
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
.sub "past" :anon :subid("219_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2161
    .param pmc param_2162
    .param pmc param_2163 :slurpy :named
.annotate 'line', 1558
    .lex "self", param_2161
    .lex "$source", param_2162
    .lex "%adverbs", param_2163
.annotate 'line', 1559

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
        
.annotate 'line', 1558
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("220_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2165
    .param pmc param_2166
    .param pmc param_2167 :slurpy :named
.annotate 'line', 1598
    .lex "self", param_2165
    .lex "$source", param_2166
    .lex "%adverbs", param_2167
.annotate 'line', 1599
    compreg $P2168, "PAST"
    find_lex $P2169, "$source"
    unless_null $P2169, vivify_951
    new $P2169, "Undef"
  vivify_951:
    find_lex $P2170, "%adverbs"
    unless_null $P2170, vivify_952
    $P2170 = root_new ['parrot';'Hash']
  vivify_952:
    $P2171 = $P2168."to_post"($P2169, $P2170 :flat)
.annotate 'line', 1598
    .return ($P2171)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("221_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2173
    .param pmc param_2174
    .param pmc param_2175 :slurpy :named
.annotate 'line', 1602
    .lex "self", param_2173
    .lex "$source", param_2174
    .lex "%adverbs", param_2175
.annotate 'line', 1603
    compreg $P2176, "POST"
    find_lex $P2177, "$source"
    unless_null $P2177, vivify_953
    new $P2177, "Undef"
  vivify_953:
    find_lex $P2178, "%adverbs"
    unless_null $P2178, vivify_954
    $P2178 = root_new ['parrot';'Hash']
  vivify_954:
    $P2179 = $P2176."to_pir"($P2177, $P2178 :flat)
.annotate 'line', 1602
    .return ($P2179)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("222_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2181
    .param pmc param_2182
    .param pmc param_2183 :slurpy :named
.annotate 'line', 1606
    .lex "self", param_2181
    .lex "$source", param_2182
    .lex "%adverbs", param_2183
.annotate 'line', 1607
    new $P2184, "Undef"
    .lex "$compiler", $P2184
    compreg $P2185, "PIR"
    store_lex "$compiler", $P2185
.annotate 'line', 1608
    find_lex $P2186, "$compiler"
    unless_null $P2186, vivify_955
    new $P2186, "Undef"
  vivify_955:
    find_lex $P2187, "$source"
    unless_null $P2187, vivify_956
    new $P2187, "Undef"
  vivify_956:
    $P2188 = $P2186($P2187)
.annotate 'line', 1606
    .return ($P2188)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("223_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2190
    .param pmc param_2191
    .param pmc param_2192
    .param pmc param_2193 :slurpy :named
.annotate 'line', 1611
    .const 'Sub' $P2199 = "224_1306916546.01542" 
    capture_lex $P2199
    .lex "self", param_2190
    .lex "$obj", param_2191
    .lex "$name", param_2192
    .lex "%options", param_2193
.annotate 'line', 1612
    find_lex $P2196, "%options"
    unless_null $P2196, vivify_957
    $P2196 = root_new ['parrot';'Hash']
  vivify_957:
    set $P2197, $P2196["dumper"]
    unless_null $P2197, vivify_958
    new $P2197, "Undef"
  vivify_958:
    if $P2197, if_2195
.annotate 'line', 1618
    find_lex $P2215, "$obj"
    unless_null $P2215, vivify_959
    new $P2215, "Undef"
  vivify_959:
    find_lex $P2216, "$name"
    unless_null $P2216, vivify_960
    new $P2216, "Undef"
  vivify_960:
    $P2217 = "_dumper"($P2215, $P2216)
.annotate 'line', 1617
    set $P2194, $P2217
.annotate 'line', 1612
    goto if_2195_end
  if_2195:
    .const 'Sub' $P2199 = "224_1306916546.01542" 
    capture_lex $P2199
    $P2214 = $P2199()
    set $P2194, $P2214
  if_2195_end:
.annotate 'line', 1611
    .return ($P2194)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2198"  :anon :subid("224_1306916546.01542") :outer("223_1306916546.01542")
.annotate 'line', 1614
    new $P2200, "Undef"
    .lex "$dumper", $P2200
.annotate 'line', 1613
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1614
    find_lex $P2201, "%options"
    unless_null $P2201, vivify_961
    $P2201 = root_new ['parrot';'Hash']
  vivify_961:
    set $P2202, $P2201["dumper"]
    unless_null $P2202, vivify_962
    new $P2202, "Undef"
  vivify_962:
    set $S2203, $P2202
    downcase $S2204, $S2203
    get_hll_global $P2205, "GLOBAL"
    nqp_get_package_through_who $P2206, $P2205, "PCT"
    get_who $P2207, $P2206
    set $P2208, $P2207["Dumper"]
    unless_null $P2208, vivify_963
    $P2208 = root_new ['parrot';'Hash']
  vivify_963:
    set $P2209, $P2208[$S2204]
    unless_null $P2209, vivify_964
    new $P2209, "Undef"
  vivify_964:
    store_lex "$dumper", $P2209
.annotate 'line', 1615
    find_lex $P2210, "$dumper"
    unless_null $P2210, vivify_965
    new $P2210, "Undef"
  vivify_965:
    find_lex $P2211, "$obj"
    unless_null $P2211, vivify_966
    new $P2211, "Undef"
  vivify_966:
    find_lex $P2212, "$name"
    unless_null $P2212, vivify_967
    new $P2212, "Undef"
  vivify_967:
    $P2213 = $P2210($P2211, $P2212)
.annotate 'line', 1612
    .return ($P2213)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("225_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2219
    .param pmc param_2220 :optional
    .param int has_param_2220 :opt_flag
.annotate 'line', 1622
    .lex "self", param_2219
    if has_param_2220, optparam_968
    new $P2221, "Undef"
    set param_2220, $P2221
  optparam_968:
    .lex "$name", param_2220
.annotate 'line', 1623
    find_lex $P2223, "$name"
    unless_null $P2223, vivify_969
    new $P2223, "Undef"
  vivify_969:
    unless $P2223, if_2222_end
.annotate 'line', 1624
    find_lex $P2224, "$name"
    unless_null $P2224, vivify_970
    new $P2224, "Undef"
  vivify_970:
    "say"($P2224)
  if_2222_end:
.annotate 'line', 1626
    find_lex $P2225, "self"
    find_lex $P2226, "$?CLASS"
    getattribute $P2227, $P2225, $P2226, "$!usage"
    unless_null $P2227, vivify_971
    new $P2227, "Undef"
  vivify_971:
    say $P2227
.annotate 'line', 1627
    exit 0
.annotate 'line', 1622
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("226_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2229
.annotate 'line', 1630
    .lex "self", param_2229
.annotate 'line', 1631
    new $P2230, "Undef"
    .lex "$version", $P2230
.annotate 'line', 1632
    new $P2231, "Undef"
    .lex "$parver", $P2231
.annotate 'line', 1633
    new $P2232, "Undef"
    .lex "$parrev", $P2232
.annotate 'line', 1631
    find_lex $P2233, "self"
    find_lex $P2234, "$?CLASS"
    getattribute $P2235, $P2233, $P2234, "%!config"
    unless_null $P2235, vivify_972
    $P2235 = root_new ['parrot';'Hash']
  vivify_972:
    set $P2236, $P2235["version"]
    unless_null $P2236, vivify_973
    new $P2236, "Undef"
  vivify_973:
    store_lex "$version", $P2236
.annotate 'line', 1632
    find_lex $P2237, "$?PACKAGE"
    get_who $P2238, $P2237
    set $P2239, $P2238["%parrot_config"]
    unless_null $P2239, vivify_974
    $P2239 = root_new ['parrot';'Hash']
  vivify_974:
    set $P2240, $P2239["VERSION"]
    unless_null $P2240, vivify_975
    new $P2240, "Undef"
  vivify_975:
    store_lex "$parver", $P2240
.annotate 'line', 1633
    find_lex $P2242, "$?PACKAGE"
    get_who $P2243, $P2242
    set $P2244, $P2243["%parrot_config"]
    unless_null $P2244, vivify_976
    $P2244 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2245, $P2244["git_describe"]
    unless_null $P2245, vivify_977
    new $P2245, "Undef"
  vivify_977:
    set $P2241, $P2245
    defined $I2247, $P2241
    if $I2247, default_2246
    new $P2248, "String"
    assign $P2248, "(unknown)"
    set $P2241, $P2248
  default_2246:
    store_lex "$parrev", $P2241
.annotate 'line', 1634
    new $P2249, 'String'
    set $P2249, "This is "
    find_lex $P2250, "self"
    find_lex $P2251, "$?CLASS"
    getattribute $P2252, $P2250, $P2251, "$!language"
    unless_null $P2252, vivify_978
    new $P2252, "Undef"
  vivify_978:
    concat $P2253, $P2249, $P2252
    concat $P2254, $P2253, " version "
    find_lex $P2255, "$version"
    unless_null $P2255, vivify_979
    new $P2255, "Undef"
  vivify_979:
    concat $P2256, $P2254, $P2255
    concat $P2257, $P2256, " built on parrot "
    find_lex $P2258, "$parver"
    unless_null $P2258, vivify_980
    new $P2258, "Undef"
  vivify_980:
    concat $P2259, $P2257, $P2258
    concat $P2260, $P2259, " revision "
    find_lex $P2261, "$parrev"
    unless_null $P2261, vivify_981
    new $P2261, "Undef"
  vivify_981:
    concat $P2262, $P2260, $P2261
    say $P2262
.annotate 'line', 1635
    exit 0
.annotate 'line', 1630
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("227_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2264
.annotate 'line', 1638
    .const 'Sub' $P2292 = "229_1306916546.01542" 
    capture_lex $P2292
    .const 'Sub' $P2272 = "228_1306916546.01542" 
    capture_lex $P2272
    .lex "self", param_2264
.annotate 'line', 1639
    find_lex $P2266, "$?PACKAGE"
    get_who $P2267, $P2266
    set $P2268, $P2267["%parrot_config"]
    unless_null $P2268, vivify_982
    $P2268 = root_new ['parrot';'Hash']
  vivify_982:
    defined $I2269, $P2268
    unless $I2269, for_undef_983
    iter $P2265, $P2268
    new $P2283, 'ExceptionHandler'
    set_label $P2283, loop2282_handler
    $P2283."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2283
  loop2282_test:
    unless $P2265, loop2282_done
    shift $P2270, $P2265
  loop2282_redo:
    .const 'Sub' $P2272 = "228_1306916546.01542" 
    capture_lex $P2272
    $P2272($P2270)
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
  for_undef_983:
.annotate 'line', 1642
    find_lex $P2286, "self"
    find_lex $P2287, "$?CLASS"
    getattribute $P2288, $P2286, $P2287, "%!config"
    unless_null $P2288, vivify_986
    $P2288 = root_new ['parrot';'Hash']
  vivify_986:
    defined $I2289, $P2288
    unless $I2289, for_undef_987
    iter $P2285, $P2288
    new $P2306, 'ExceptionHandler'
    set_label $P2306, loop2305_handler
    $P2306."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2306
  loop2305_test:
    unless $P2285, loop2305_done
    shift $P2290, $P2285
  loop2305_redo:
    .const 'Sub' $P2292 = "229_1306916546.01542" 
    capture_lex $P2292
    $P2292($P2290)
  loop2305_next:
    goto loop2305_test
  loop2305_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2307, exception, 'type'
    eq $P2307, .CONTROL_LOOP_NEXT, loop2305_next
    eq $P2307, .CONTROL_LOOP_REDO, loop2305_redo
  loop2305_done:
    pop_eh 
  for_undef_987:
.annotate 'line', 1645
    exit 0
.annotate 'line', 1638
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2271"  :anon :subid("228_1306916546.01542") :outer("227_1306916546.01542")
    .param pmc param_2273
.annotate 'line', 1639
    .lex "$_", param_2273
.annotate 'line', 1640
    new $P2274, "String"
    assign $P2274, "parrot::"
    find_lex $P2275, "$_"
    unless_null $P2275, vivify_984
    new $P2275, "Undef"
  vivify_984:
    $S2276 = $P2275."key"()
    concat $P2277, $P2274, $S2276
    concat $P2278, $P2277, "="
    find_lex $P2279, "$_"
    unless_null $P2279, vivify_985
    new $P2279, "Undef"
  vivify_985:
    $S2280 = $P2279."value"()
    concat $P2281, $P2278, $S2280
    say $P2281
.annotate 'line', 1639
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2291"  :anon :subid("229_1306916546.01542") :outer("227_1306916546.01542")
    .param pmc param_2293
.annotate 'line', 1642
    .lex "$_", param_2293
.annotate 'line', 1643
    find_lex $P2294, "self"
    find_lex $P2295, "$?CLASS"
    getattribute $P2296, $P2294, $P2295, "$!language"
    unless_null $P2296, vivify_988
    new $P2296, "Undef"
  vivify_988:
    concat $P2297, $P2296, "::"
    find_lex $P2298, "$_"
    unless_null $P2298, vivify_989
    new $P2298, "Undef"
  vivify_989:
    $S2299 = $P2298."key"()
    concat $P2300, $P2297, $S2299
    concat $P2301, $P2300, "="
    find_lex $P2302, "$_"
    unless_null $P2302, vivify_990
    new $P2302, "Undef"
  vivify_990:
    $S2303 = $P2302."value"()
    concat $P2304, $P2301, $S2303
    say $P2304
.annotate 'line', 1642
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("230_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2309
    .param pmc param_2310
.annotate 'line', 1648
    .const 'Sub' $P2320 = "231_1306916546.01542" 
    capture_lex $P2320
    .lex "self", param_2309
    .lex "$stagename", param_2310
.annotate 'line', 1649
    $P2311 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2311
    new $P2312, "ResizableStringArray"
    store_lex "@new_stages", $P2312
.annotate 'line', 1650
    find_lex $P2314, "self"
    find_lex $P2315, "$?CLASS"
    getattribute $P2316, $P2314, $P2315, "@!stages"
    unless_null $P2316, vivify_991
    $P2316 = root_new ['parrot';'ResizablePMCArray']
  vivify_991:
    defined $I2317, $P2316
    unless $I2317, for_undef_992
    iter $P2313, $P2316
    new $P2333, 'ExceptionHandler'
    set_label $P2333, loop2332_handler
    $P2333."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2333
  loop2332_test:
    unless $P2313, loop2332_done
    shift $P2318, $P2313
  loop2332_redo:
    .const 'Sub' $P2320 = "231_1306916546.01542" 
    capture_lex $P2320
    $P2320($P2318)
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
  for_undef_992:
.annotate 'line', 1655
    find_lex $P2335, "@new_stages"
    unless_null $P2335, vivify_997
    $P2335 = root_new ['parrot';'ResizablePMCArray']
  vivify_997:
    find_lex $P2336, "self"
    find_lex $P2337, "$?CLASS"
    setattribute $P2336, $P2337, "@!stages", $P2335
.annotate 'line', 1648
    .return ($P2335)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2319"  :anon :subid("231_1306916546.01542") :outer("230_1306916546.01542")
    .param pmc param_2321
.annotate 'line', 1650
    .lex "$_", param_2321
.annotate 'line', 1651
    find_lex $P2324, "$_"
    unless_null $P2324, vivify_993
    new $P2324, "Undef"
  vivify_993:
    set $S2325, $P2324
    find_lex $P2326, "$stagename"
    unless_null $P2326, vivify_994
    new $P2326, "Undef"
  vivify_994:
    set $S2327, $P2326
    isne $I2328, $S2325, $S2327
    if $I2328, if_2323
    new $P2322, 'Integer'
    set $P2322, $I2328
    goto if_2323_end
  if_2323:
.annotate 'line', 1652
    find_lex $P2329, "@new_stages"
    unless_null $P2329, vivify_995
    $P2329 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    find_lex $P2330, "$_"
    unless_null $P2330, vivify_996
    new $P2330, "Undef"
  vivify_996:
    $P2331 = $P2329."push"($P2330)
.annotate 'line', 1651
    set $P2322, $P2331
  if_2323_end:
.annotate 'line', 1650
    .return ($P2322)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("232_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2341
    .param pmc param_2342
    .param pmc param_2343 :slurpy :named
.annotate 'line', 1658
    .const 'Sub' $P2380 = "234_1306916546.01542" 
    capture_lex $P2380
    .const 'Sub' $P2362 = "233_1306916546.01542" 
    capture_lex $P2362
    new $P2340, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2340, control_2339
    push_eh $P2340
    .lex "self", param_2341
    .lex "$stagename", param_2342
    .lex "%adverbs", param_2343
.annotate 'line', 1659
    new $P2344, "Undef"
    .lex "$position", $P2344
.annotate 'line', 1660
    new $P2345, "Undef"
    .lex "$where", $P2345
.annotate 'line', 1673
    $P2346 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2346
.annotate 'line', 1658
    find_lex $P2347, "$position"
    unless_null $P2347, vivify_998
    new $P2347, "Undef"
  vivify_998:
    find_lex $P2348, "$where"
    unless_null $P2348, vivify_999
    new $P2348, "Undef"
  vivify_999:
.annotate 'line', 1661
    find_lex $P2350, "%adverbs"
    unless_null $P2350, vivify_1000
    $P2350 = root_new ['parrot';'Hash']
  vivify_1000:
    set $P2351, $P2350["before"]
    unless_null $P2351, vivify_1001
    new $P2351, "Undef"
  vivify_1001:
    if $P2351, if_2349
.annotate 'line', 1664
    find_lex $P2356, "%adverbs"
    unless_null $P2356, vivify_1002
    $P2356 = root_new ['parrot';'Hash']
  vivify_1002:
    set $P2357, $P2356["after"]
    unless_null $P2357, vivify_1003
    new $P2357, "Undef"
  vivify_1003:
    if $P2357, if_2355
.annotate 'line', 1667
    .const 'Sub' $P2362 = "233_1306916546.01542" 
    capture_lex $P2362
    $P2362()
    goto if_2355_end
  if_2355:
.annotate 'line', 1665
    find_lex $P2358, "%adverbs"
    unless_null $P2358, vivify_1007
    $P2358 = root_new ['parrot';'Hash']
  vivify_1007:
    set $P2359, $P2358["after"]
    unless_null $P2359, vivify_1008
    new $P2359, "Undef"
  vivify_1008:
    store_lex "$where", $P2359
.annotate 'line', 1666
    new $P2360, "String"
    assign $P2360, "after"
    store_lex "$position", $P2360
  if_2355_end:
.annotate 'line', 1664
    goto if_2349_end
  if_2349:
.annotate 'line', 1662
    find_lex $P2352, "%adverbs"
    unless_null $P2352, vivify_1009
    $P2352 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P2353, $P2352["before"]
    unless_null $P2353, vivify_1010
    new $P2353, "Undef"
  vivify_1010:
    store_lex "$where", $P2353
.annotate 'line', 1663
    new $P2354, "String"
    assign $P2354, "before"
    store_lex "$position", $P2354
  if_2349_end:
.annotate 'line', 1673
    new $P2373, "ResizableStringArray"
    store_lex "@new-stages", $P2373
.annotate 'line', 1674
    find_lex $P2375, "self"
    $P2376 = $P2375."stages"()
    defined $I2377, $P2376
    unless $I2377, for_undef_1011
    iter $P2374, $P2376
    new $P2405, 'ExceptionHandler'
    set_label $P2405, loop2404_handler
    $P2405."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2405
  loop2404_test:
    unless $P2374, loop2404_done
    shift $P2378, $P2374
  loop2404_redo:
    .const 'Sub' $P2380 = "234_1306916546.01542" 
    capture_lex $P2380
    $P2380($P2378)
  loop2404_next:
    goto loop2404_test
  loop2404_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2406, exception, 'type'
    eq $P2406, .CONTROL_LOOP_NEXT, loop2404_next
    eq $P2406, .CONTROL_LOOP_REDO, loop2404_redo
  loop2404_done:
    pop_eh 
  for_undef_1011:
.annotate 'line', 1687
    find_lex $P2407, "self"
    find_lex $P2408, "@new-stages"
    unless_null $P2408, vivify_1025
    $P2408 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    $P2409 = $P2407."stages"($P2408)
.annotate 'line', 1658
    .return ($P2409)
  control_2339:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2410, exception, "payload"
    .return ($P2410)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2361"  :anon :subid("233_1306916546.01542") :outer("232_1306916546.01542")
.annotate 'line', 1668
    $P2363 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2363
    find_lex $P2364, "self"
    $P2365 = $P2364."stages"()
    clone $P2366, $P2365
    store_lex "@new-stages", $P2366
.annotate 'line', 1669
    find_lex $P2367, "@new-stages"
    unless_null $P2367, vivify_1004
    $P2367 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    find_lex $P2368, "$stagename"
    unless_null $P2368, vivify_1005
    new $P2368, "Undef"
  vivify_1005:
    push $P2367, $P2368
.annotate 'line', 1670
    find_lex $P2369, "self"
    find_lex $P2370, "@new-stages"
    unless_null $P2370, vivify_1006
    $P2370 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    $P2369."stages"($P2370)
.annotate 'line', 1671
    new $P2371, "Exception"
    set $P2371['type'], .CONTROL_RETURN
    new $P2372, "Integer"
    assign $P2372, 1
    setattribute $P2371, 'payload', $P2372
    throw $P2371
.annotate 'line', 1667
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2379"  :anon :subid("234_1306916546.01542") :outer("232_1306916546.01542")
    .param pmc param_2381
.annotate 'line', 1674
    .lex "$_", param_2381
.annotate 'line', 1675
    find_lex $P2384, "$_"
    unless_null $P2384, vivify_1012
    new $P2384, "Undef"
  vivify_1012:
    set $S2385, $P2384
    find_lex $P2386, "$where"
    unless_null $P2386, vivify_1013
    new $P2386, "Undef"
  vivify_1013:
    set $S2387, $P2386
    iseq $I2388, $S2385, $S2387
    if $I2388, if_2383
.annotate 'line', 1684
    find_lex $P2402, "@new-stages"
    unless_null $P2402, vivify_1014
    $P2402 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    find_lex $P2403, "$_"
    unless_null $P2403, vivify_1015
    new $P2403, "Undef"
  vivify_1015:
    push $P2402, $P2403
.annotate 'line', 1683
    set $P2382, $P2402
.annotate 'line', 1675
    goto if_2383_end
  if_2383:
.annotate 'line', 1676
    find_lex $P2391, "$position"
    unless_null $P2391, vivify_1016
    new $P2391, "Undef"
  vivify_1016:
    set $S2392, $P2391
    iseq $I2393, $S2392, "before"
    if $I2393, if_2390
.annotate 'line', 1680
    find_lex $P2398, "@new-stages"
    unless_null $P2398, vivify_1017
    $P2398 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    find_lex $P2399, "$_"
    unless_null $P2399, vivify_1018
    new $P2399, "Undef"
  vivify_1018:
    push $P2398, $P2399
.annotate 'line', 1681
    find_lex $P2400, "@new-stages"
    unless_null $P2400, vivify_1019
    $P2400 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
    find_lex $P2401, "$stagename"
    unless_null $P2401, vivify_1020
    new $P2401, "Undef"
  vivify_1020:
    push $P2400, $P2401
.annotate 'line', 1679
    set $P2389, $P2400
.annotate 'line', 1676
    goto if_2390_end
  if_2390:
.annotate 'line', 1677
    find_lex $P2394, "@new-stages"
    unless_null $P2394, vivify_1021
    $P2394 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    find_lex $P2395, "$stagename"
    unless_null $P2395, vivify_1022
    new $P2395, "Undef"
  vivify_1022:
    push $P2394, $P2395
.annotate 'line', 1678
    find_lex $P2396, "@new-stages"
    unless_null $P2396, vivify_1023
    $P2396 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    find_lex $P2397, "$_"
    unless_null $P2397, vivify_1024
    new $P2397, "Undef"
  vivify_1024:
    push $P2396, $P2397
.annotate 'line', 1676
    set $P2389, $P2396
  if_2390_end:
.annotate 'line', 1675
    set $P2382, $P2389
  if_2383_end:
.annotate 'line', 1674
    .return ($P2382)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("235_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2412
    .param pmc param_2413
.annotate 'line', 1690
    .const 'Sub' $P2451 = "236_1306916546.01542" 
    capture_lex $P2451
    .lex "self", param_2412
    .lex "$name", param_2413
.annotate 'line', 1691
    $P2414 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2414
.annotate 'line', 1692
    new $P2415, "Undef"
    .lex "$sigil", $P2415
.annotate 'line', 1695
    new $P2416, "Undef"
    .lex "$idx", $P2416
.annotate 'line', 1703
    $P2417 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2417
.annotate 'line', 1691
    find_lex $P2418, "$name"
    unless_null $P2418, vivify_1026
    new $P2418, "Undef"
  vivify_1026:
    set $S2419, $P2418
    split $P2420, "::", $S2419
    store_lex "@ns", $P2420
.annotate 'line', 1692
    find_lex $P2421, "@ns"
    unless_null $P2421, vivify_1027
    $P2421 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    set $P2422, $P2421[0]
    unless_null $P2422, vivify_1028
    new $P2422, "Undef"
  vivify_1028:
    set $S2423, $P2422
    substr $S2424, $S2423, 0, 1
    new $P2425, 'String'
    set $P2425, $S2424
    store_lex "$sigil", $P2425
.annotate 'line', 1695
    find_lex $P2426, "$sigil"
    unless_null $P2426, vivify_1029
    new $P2426, "Undef"
  vivify_1029:
    set $S2427, $P2426
    index $I2428, "$@%&", $S2427
    new $P2429, 'Integer'
    set $P2429, $I2428
    store_lex "$idx", $P2429
.annotate 'line', 1696
    find_lex $P2431, "$idx"
    unless_null $P2431, vivify_1030
    new $P2431, "Undef"
  vivify_1030:
    set $N2432, $P2431
    isge $I2433, $N2432, 0.0
    unless $I2433, if_2430_end
.annotate 'line', 1697
    find_lex $P2434, "@ns"
    unless_null $P2434, vivify_1031
    $P2434 = root_new ['parrot';'ResizablePMCArray']
  vivify_1031:
    set $P2435, $P2434[0]
    unless_null $P2435, vivify_1032
    new $P2435, "Undef"
  vivify_1032:
    set $S2436, $P2435
    substr $S2437, $S2436, 1
    new $P2438, 'String'
    set $P2438, $S2437
    find_lex $P2439, "@ns"
    unless_null $P2439, vivify_1033
    $P2439 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2439
  vivify_1033:
    set $P2439[0], $P2438
.annotate 'line', 1698
    find_lex $P2440, "$sigil"
    unless_null $P2440, vivify_1034
    new $P2440, "Undef"
  vivify_1034:
    find_lex $P2441, "@ns"
    unless_null $P2441, vivify_1035
    $P2441 = root_new ['parrot';'ResizablePMCArray']
  vivify_1035:
    set $P2442, $P2441[-1]
    unless_null $P2442, vivify_1036
    new $P2442, "Undef"
  vivify_1036:
    concat $P2443, $P2440, $P2442
    find_lex $P2444, "@ns"
    unless_null $P2444, vivify_1037
    $P2444 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2444
  vivify_1037:
    set $P2444[-1], $P2443
  if_2430_end:
.annotate 'line', 1696
    find_lex $P2445, "@actual_ns"
    unless_null $P2445, vivify_1038
    $P2445 = root_new ['parrot';'ResizablePMCArray']
  vivify_1038:
.annotate 'line', 1704
    find_lex $P2447, "@ns"
    unless_null $P2447, vivify_1039
    $P2447 = root_new ['parrot';'ResizablePMCArray']
  vivify_1039:
    defined $I2448, $P2447
    unless $I2448, for_undef_1040
    iter $P2446, $P2447
    new $P2461, 'ExceptionHandler'
    set_label $P2461, loop2460_handler
    $P2461."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2461
  loop2460_test:
    unless $P2446, loop2460_done
    shift $P2449, $P2446
  loop2460_redo:
    .const 'Sub' $P2451 = "236_1306916546.01542" 
    capture_lex $P2451
    $P2451($P2449)
  loop2460_next:
    goto loop2460_test
  loop2460_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2462, exception, 'type'
    eq $P2462, .CONTROL_LOOP_NEXT, loop2460_next
    eq $P2462, .CONTROL_LOOP_REDO, loop2460_redo
  loop2460_done:
    pop_eh 
  for_undef_1040:
    find_lex $P2463, "@actual_ns"
    unless_null $P2463, vivify_1044
    $P2463 = root_new ['parrot';'ResizablePMCArray']
  vivify_1044:
.annotate 'line', 1690
    .return ($P2463)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2450"  :anon :subid("236_1306916546.01542") :outer("235_1306916546.01542")
    .param pmc param_2452
.annotate 'line', 1704
    .lex "$_", param_2452
.annotate 'line', 1705
    find_lex $P2455, "$_"
    unless_null $P2455, vivify_1041
    new $P2455, "Undef"
  vivify_1041:
    set $S2456, $P2455
    iseq $I2457, $S2456, ""
    unless $I2457, unless_2454
    new $P2453, 'Integer'
    set $P2453, $I2457
    goto unless_2454_end
  unless_2454:
    find_lex $P2458, "@actual_ns"
    unless_null $P2458, vivify_1042
    $P2458 = root_new ['parrot';'ResizablePMCArray']
  vivify_1042:
    find_lex $P2459, "$_"
    unless_null $P2459, vivify_1043
    new $P2459, "Undef"
  vivify_1043:
    push $P2458, $P2459
    set $P2453, $P2458
  unless_2454_end:
.annotate 'line', 1704
    .return ($P2453)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("237_1306916546.01542") :outer("165_1306916546.01542")
    .param pmc param_2465
    .param pmc param_2466
    .param pmc param_2467
    .param pmc param_2468 :optional :named("cache")
    .param int has_param_2468 :opt_flag
.annotate 'line', 1710
    .lex "self", param_2465
    .lex "$target", param_2466
    .lex "$pos", param_2467
    if has_param_2468, optparam_1045
    new $P2469, "Undef"
    set param_2468, $P2469
  optparam_1045:
    .lex "$cache", param_2468
.annotate 'line', 1711

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
        
.annotate 'line', 1710
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2477"  :subid("238_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 1867
    .const 'Sub' $P2506 = "243_1306916546.01542" 
    capture_lex $P2506
    .const 'Sub' $P2499 = "242_1306916546.01542" 
    capture_lex $P2499
    .const 'Sub' $P2494 = "241_1306916546.01542" 
    capture_lex $P2494
    .const 'Sub' $P2489 = "240_1306916546.01542" 
    capture_lex $P2489
    .const 'Sub' $P2481 = "239_1306916546.01542" 
    capture_lex $P2481
    .lex "$?PACKAGE", $P2479
    .lex "$?CLASS", $P2480
.annotate 'line', 1883
    .const 'Sub' $P2506 = "243_1306916546.01542" 
    newclosure $P2554, $P2506
.annotate 'line', 1867
    .return ($P2554)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("239_1306916546.01542") :outer("238_1306916546.01542")
    .param pmc param_2482
.annotate 'line', 1871
    .lex "self", param_2482
.annotate 'line', 1872
    new $P2483, "ResizablePMCArray"
    find_lex $P2484, "self"
    find_lex $P2485, "$?CLASS"
    setattribute $P2484, $P2485, "@!arguments", $P2483
.annotate 'line', 1873
    new $P2486, "Hash"
    find_lex $P2487, "self"
    find_lex $P2488, "$?CLASS"
    setattribute $P2487, $P2488, "%!options", $P2486
.annotate 'line', 1871
    .return ($P2486)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("240_1306916546.01542") :outer("238_1306916546.01542")
    .param pmc param_2490
.annotate 'line', 1876
    .lex "self", param_2490
    find_lex $P2491, "self"
    find_lex $P2492, "$?CLASS"
    getattribute $P2493, $P2491, $P2492, "@!arguments"
    unless_null $P2493, vivify_1047
    $P2493 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
    .return ($P2493)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("241_1306916546.01542") :outer("238_1306916546.01542")
    .param pmc param_2495
.annotate 'line', 1877
    .lex "self", param_2495
    find_lex $P2496, "self"
    find_lex $P2497, "$?CLASS"
    getattribute $P2498, $P2496, $P2497, "%!options"
    unless_null $P2498, vivify_1048
    $P2498 = root_new ['parrot';'Hash']
  vivify_1048:
    .return ($P2498)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("242_1306916546.01542") :outer("238_1306916546.01542")
    .param pmc param_2500
    .param pmc param_2501
.annotate 'line', 1879
    .lex "self", param_2500
    .lex "$x", param_2501
.annotate 'line', 1880
    find_lex $P2502, "self"
    find_lex $P2503, "$?CLASS"
    getattribute $P2504, $P2502, $P2503, "@!arguments"
    unless_null $P2504, vivify_1049
    $P2504 = root_new ['parrot';'ResizablePMCArray']
  vivify_1049:
    find_lex $P2505, "$x"
    unless_null $P2505, vivify_1050
    new $P2505, "Undef"
  vivify_1050:
    push $P2504, $P2505
.annotate 'line', 1879
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("243_1306916546.01542") :outer("238_1306916546.01542")
    .param pmc param_2507
    .param pmc param_2508
    .param pmc param_2509
.annotate 'line', 1883
    .const 'Sub' $P2518 = "244_1306916546.01542" 
    capture_lex $P2518
    .lex "self", param_2507
    .lex "$name", param_2508
    .lex "$value", param_2509
.annotate 'line', 1886
    find_lex $P2515, "$name"
    unless_null $P2515, vivify_1051
    new $P2515, "Undef"
  vivify_1051:
    find_lex $P2512, "self"
    find_lex $P2513, "$?CLASS"
    getattribute $P2514, $P2512, $P2513, "%!options"
    unless_null $P2514, vivify_1052
    $P2514 = root_new ['parrot';'Hash']
  vivify_1052:
    exists $I2516, $P2514[$P2515]
    if $I2516, if_2511
.annotate 'line', 1895
    find_lex $P2549, "$value"
    unless_null $P2549, vivify_1053
    new $P2549, "Undef"
  vivify_1053:
    find_lex $P2550, "$name"
    unless_null $P2550, vivify_1054
    new $P2550, "Undef"
  vivify_1054:
    find_lex $P2551, "self"
    find_lex $P2552, "$?CLASS"
    getattribute $P2553, $P2551, $P2552, "%!options"
    unless_null $P2553, vivify_1055
    $P2553 = root_new ['parrot';'Hash']
    setattribute $P2551, $P2552, "%!options", $P2553
  vivify_1055:
    set $P2553[$P2550], $P2549
.annotate 'line', 1894
    set $P2510, $P2549
.annotate 'line', 1886
    goto if_2511_end
  if_2511:
    .const 'Sub' $P2518 = "244_1306916546.01542" 
    capture_lex $P2518
    $P2548 = $P2518()
    set $P2510, $P2548
  if_2511_end:
.annotate 'line', 1883
    .return ($P2510)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2517"  :anon :subid("244_1306916546.01542") :outer("243_1306916546.01542")
.annotate 'line', 1887
    new $P2519, "Undef"
    .lex "$t", $P2519
    find_lex $P2520, "self"
    find_lex $P2521, "$?CLASS"
    getattribute $P2522, $P2520, $P2521, "%!options"
    unless_null $P2522, vivify_1056
    $P2522 = root_new ['parrot';'Hash']
  vivify_1056:
    typeof $S2523, $P2522
    new $P2524, 'String'
    set $P2524, $S2523
    store_lex "$t", $P2524
.annotate 'line', 1888
    find_lex $P2525, "$t"
    unless_null $P2525, vivify_1057
    new $P2525, "Undef"
  vivify_1057:
    "say"($P2525)
.annotate 'line', 1889
    find_lex $P2528, "$t"
    unless_null $P2528, vivify_1058
    new $P2528, "Undef"
  vivify_1058:
    set $S2529, $P2528
    iseq $I2530, $S2529, "ResizablePMCArray"
    if $I2530, if_2527
.annotate 'line', 1892
    find_lex $P2537, "$name"
    unless_null $P2537, vivify_1059
    new $P2537, "Undef"
  vivify_1059:
    find_lex $P2538, "self"
    find_lex $P2539, "$?CLASS"
    getattribute $P2540, $P2538, $P2539, "%!options"
    unless_null $P2540, vivify_1060
    $P2540 = root_new ['parrot';'Hash']
  vivify_1060:
    set $P2541, $P2540[$P2537]
    unless_null $P2541, vivify_1061
    new $P2541, "Undef"
  vivify_1061:
    find_lex $P2542, "$name"
    unless_null $P2542, vivify_1062
    new $P2542, "Undef"
  vivify_1062:
    new $P2543, "ResizablePMCArray"
    push $P2543, $P2541
    push $P2543, $P2542
    find_lex $P2544, "$name"
    unless_null $P2544, vivify_1063
    new $P2544, "Undef"
  vivify_1063:
    find_lex $P2545, "self"
    find_lex $P2546, "$?CLASS"
    getattribute $P2547, $P2545, $P2546, "%!options"
    unless_null $P2547, vivify_1064
    $P2547 = root_new ['parrot';'Hash']
    setattribute $P2545, $P2546, "%!options", $P2547
  vivify_1064:
    set $P2547[$P2544], $P2543
.annotate 'line', 1891
    set $P2526, $P2543
.annotate 'line', 1889
    goto if_2527_end
  if_2527:
.annotate 'line', 1890
    find_lex $P2531, "$name"
    unless_null $P2531, vivify_1065
    new $P2531, "Undef"
  vivify_1065:
    find_lex $P2532, "self"
    find_lex $P2533, "$?CLASS"
    getattribute $P2534, $P2532, $P2533, "%!options"
    unless_null $P2534, vivify_1066
    $P2534 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P2535, $P2534[$P2531]
    unless_null $P2535, vivify_1067
    new $P2535, "Undef"
  vivify_1067:
    find_lex $P2536, "$value"
    unless_null $P2536, vivify_1068
    new $P2536, "Undef"
  vivify_1068:
    push $P2535, $P2536
.annotate 'line', 1889
    set $P2526, $P2535
  if_2527_end:
.annotate 'line', 1886
    .return ($P2526)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2555"  :subid("245_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 1900
    .const 'Sub' $P2696 = "256_1306916546.01542" 
    capture_lex $P2696
    .const 'Sub' $P2684 = "255_1306916546.01542" 
    capture_lex $P2684
    .const 'Sub' $P2660 = "254_1306916546.01542" 
    capture_lex $P2660
    .const 'Sub' $P2611 = "252_1306916546.01542" 
    capture_lex $P2611
    .const 'Sub' $P2605 = "251_1306916546.01542" 
    capture_lex $P2605
    .const 'Sub' $P2597 = "250_1306916546.01542" 
    capture_lex $P2597
    .const 'Sub' $P2573 = "248_1306916546.01542" 
    capture_lex $P2573
    .const 'Sub' $P2568 = "247_1306916546.01542" 
    capture_lex $P2568
    .const 'Sub' $P2559 = "246_1306916546.01542" 
    capture_lex $P2559
    .lex "$?PACKAGE", $P2557
    .lex "$?CLASS", $P2558
.annotate 'line', 1960
    .const 'Sub' $P2696 = "256_1306916546.01542" 
    newclosure $P2983, $P2696
.annotate 'line', 1900
    .return ($P2983)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("246_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2560
    .param pmc param_2561
.annotate 'line', 1906
    .lex "self", param_2560
    .lex "@specs", param_2561
.annotate 'line', 1907
    new $P2562, "Undef"
    .lex "$obj", $P2562
    find_lex $P2563, "self"
    $P2564 = $P2563."CREATE"()
    store_lex "$obj", $P2564
.annotate 'line', 1908
    find_lex $P2565, "$obj"
    unless_null $P2565, vivify_1069
    new $P2565, "Undef"
  vivify_1069:
    find_lex $P2566, "@specs"
    unless_null $P2566, vivify_1070
    $P2566 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    $P2565."BUILD"($P2566 :named("specs"))
    find_lex $P2567, "$obj"
    unless_null $P2567, vivify_1071
    new $P2567, "Undef"
  vivify_1071:
.annotate 'line', 1906
    .return ($P2567)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("247_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2569
.annotate 'line', 1912
    .lex "self", param_2569
.annotate 'line', 1913
    new $P2570, "Integer"
    assign $P2570, 1
    find_lex $P2571, "self"
    find_lex $P2572, "$?CLASS"
    setattribute $P2571, $P2572, "$!stop-after-first-arg", $P2570
.annotate 'line', 1912
    .return ($P2570)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("248_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2574
    .param pmc param_2575 :optional :named("specs")
    .param int has_param_2575 :opt_flag
.annotate 'line', 1916
    .const 'Sub' $P2589 = "249_1306916546.01542" 
    capture_lex $P2589
    .lex "self", param_2574
    if has_param_2575, optparam_1072
    $P2576 = root_new ['parrot';'ResizablePMCArray']
    set param_2575, $P2576
  optparam_1072:
    .lex "@specs", param_2575
.annotate 'line', 1917
    new $P2577, "Integer"
    assign $P2577, 1
    find_lex $P2578, "self"
    find_lex $P2579, "$?CLASS"
    getattribute $P2580, $P2578, $P2579, "%!stopper"
    unless_null $P2580, vivify_1073
    $P2580 = root_new ['parrot';'Hash']
    setattribute $P2578, $P2579, "%!stopper", $P2580
  vivify_1073:
    set $P2580["--"], $P2577
.annotate 'line', 1918
    new $P2581, "Integer"
    assign $P2581, 0
    find_lex $P2582, "self"
    find_lex $P2583, "$?CLASS"
    setattribute $P2582, $P2583, "$!stop-after-first-arg", $P2581
.annotate 'line', 1919
    find_lex $P2585, "@specs"
    unless_null $P2585, vivify_1074
    $P2585 = root_new ['parrot';'ResizablePMCArray']
  vivify_1074:
    defined $I2586, $P2585
    unless $I2586, for_undef_1075
    iter $P2584, $P2585
    new $P2595, 'ExceptionHandler'
    set_label $P2595, loop2594_handler
    $P2595."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2595
  loop2594_test:
    unless $P2584, loop2594_done
    shift $P2587, $P2584
  loop2594_redo:
    .const 'Sub' $P2589 = "249_1306916546.01542" 
    capture_lex $P2589
    $P2589($P2587)
  loop2594_next:
    goto loop2594_test
  loop2594_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2596, exception, 'type'
    eq $P2596, .CONTROL_LOOP_NEXT, loop2594_next
    eq $P2596, .CONTROL_LOOP_REDO, loop2594_redo
  loop2594_done:
    pop_eh 
  for_undef_1075:
.annotate 'line', 1916
    .return ($P2584)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2588"  :anon :subid("249_1306916546.01542") :outer("248_1306916546.01542")
    .param pmc param_2590
.annotate 'line', 1919
    .lex "$_", param_2590
.annotate 'line', 1920
    find_lex $P2591, "self"
    find_lex $P2592, "$_"
    unless_null $P2592, vivify_1076
    new $P2592, "Undef"
  vivify_1076:
    $P2593 = $P2591."add-spec"($P2592)
.annotate 'line', 1919
    .return ($P2593)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("250_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2598
    .param pmc param_2599
.annotate 'line', 1923
    .lex "self", param_2598
    .lex "$x", param_2599
.annotate 'line', 1924
    new $P2600, "Integer"
    assign $P2600, 1
    find_lex $P2601, "$x"
    unless_null $P2601, vivify_1077
    new $P2601, "Undef"
  vivify_1077:
    find_lex $P2602, "self"
    find_lex $P2603, "$?CLASS"
    getattribute $P2604, $P2602, $P2603, "%!stopper"
    unless_null $P2604, vivify_1078
    $P2604 = root_new ['parrot';'Hash']
    setattribute $P2602, $P2603, "%!stopper", $P2604
  vivify_1078:
    set $P2604[$P2601], $P2600
.annotate 'line', 1923
    .return ($P2600)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("251_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2606
    .param pmc param_2607
.annotate 'line', 1927
    .lex "self", param_2606
    .lex "$s", param_2607
.annotate 'line', 1928
    find_lex $P2608, "$s"
    unless_null $P2608, vivify_1079
    new $P2608, "Undef"
  vivify_1079:
    set $S2609, $P2608
    split $P2610, "|", $S2609
.annotate 'line', 1927
    .return ($P2610)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("252_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2612
    .param pmc param_2613
.annotate 'line', 1932
    .const 'Sub' $P2650 = "253_1306916546.01542" 
    capture_lex $P2650
    .lex "self", param_2612
    .lex "$s", param_2613
.annotate 'line', 1933
    new $P2614, "Undef"
    .lex "$i", $P2614
.annotate 'line', 1934
    new $P2615, "Undef"
    .lex "$type", $P2615
.annotate 'line', 1935
    $P2616 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2616
.annotate 'line', 1933
    find_lex $P2617, "$s"
    unless_null $P2617, vivify_1080
    new $P2617, "Undef"
  vivify_1080:
    set $S2618, $P2617
    index $I2619, $S2618, "="
    new $P2620, 'Integer'
    set $P2620, $I2619
    store_lex "$i", $P2620
    find_lex $P2621, "$type"
    unless_null $P2621, vivify_1081
    new $P2621, "Undef"
  vivify_1081:
    find_lex $P2622, "@options"
    unless_null $P2622, vivify_1082
    $P2622 = root_new ['parrot';'ResizablePMCArray']
  vivify_1082:
.annotate 'line', 1936
    find_lex $P2624, "$i"
    unless_null $P2624, vivify_1083
    new $P2624, "Undef"
  vivify_1083:
    set $N2625, $P2624
    islt $I2626, $N2625, 0.0
    if $I2626, if_2623
.annotate 'line', 1940
    find_lex $P2631, "$s"
    unless_null $P2631, vivify_1084
    new $P2631, "Undef"
  vivify_1084:
    set $S2632, $P2631
    find_lex $P2633, "$i"
    unless_null $P2633, vivify_1085
    new $P2633, "Undef"
  vivify_1085:
    add $P2634, $P2633, 1
    set $I2635, $P2634
    substr $S2636, $S2632, $I2635
    new $P2637, 'String'
    set $P2637, $S2636
    store_lex "$type", $P2637
.annotate 'line', 1941
    find_lex $P2638, "self"
    find_lex $P2639, "$s"
    unless_null $P2639, vivify_1086
    new $P2639, "Undef"
  vivify_1086:
    set $S2640, $P2639
    find_lex $P2641, "$i"
    unless_null $P2641, vivify_1087
    new $P2641, "Undef"
  vivify_1087:
    set $I2642, $P2641
    substr $S2643, $S2640, 0, $I2642
    $P2644 = $P2638."split-option-aliases"($S2643)
    store_lex "@options", $P2644
.annotate 'line', 1939
    goto if_2623_end
  if_2623:
.annotate 'line', 1937
    new $P2627, "String"
    assign $P2627, "b"
    store_lex "$type", $P2627
.annotate 'line', 1938
    find_lex $P2628, "self"
    find_lex $P2629, "$s"
    unless_null $P2629, vivify_1088
    new $P2629, "Undef"
  vivify_1088:
    $P2630 = $P2628."split-option-aliases"($P2629)
    store_lex "@options", $P2630
  if_2623_end:
.annotate 'line', 1943
    find_lex $P2646, "@options"
    unless_null $P2646, vivify_1089
    $P2646 = root_new ['parrot';'ResizablePMCArray']
  vivify_1089:
    defined $I2647, $P2646
    unless $I2647, for_undef_1090
    iter $P2645, $P2646
    new $P2658, 'ExceptionHandler'
    set_label $P2658, loop2657_handler
    $P2658."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2658
  loop2657_test:
    unless $P2645, loop2657_done
    shift $P2648, $P2645
  loop2657_redo:
    .const 'Sub' $P2650 = "253_1306916546.01542" 
    capture_lex $P2650
    $P2650($P2648)
  loop2657_next:
    goto loop2657_test
  loop2657_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2659, exception, 'type'
    eq $P2659, .CONTROL_LOOP_NEXT, loop2657_next
    eq $P2659, .CONTROL_LOOP_REDO, loop2657_redo
  loop2657_done:
    pop_eh 
  for_undef_1090:
.annotate 'line', 1932
    .return ($P2645)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2649"  :anon :subid("253_1306916546.01542") :outer("252_1306916546.01542")
    .param pmc param_2651
.annotate 'line', 1943
    .lex "$_", param_2651
.annotate 'line', 1944
    find_lex $P2652, "$type"
    unless_null $P2652, vivify_1091
    new $P2652, "Undef"
  vivify_1091:
    find_lex $P2653, "$_"
    unless_null $P2653, vivify_1092
    new $P2653, "Undef"
  vivify_1092:
    find_lex $P2654, "self"
    find_lex $P2655, "$?CLASS"
    getattribute $P2656, $P2654, $P2655, "%!options"
    unless_null $P2656, vivify_1093
    $P2656 = root_new ['parrot';'Hash']
    setattribute $P2654, $P2655, "%!options", $P2656
  vivify_1093:
    set $P2656[$P2653], $P2652
.annotate 'line', 1943
    .return ($P2652)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("254_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2663
    .param pmc param_2664
.annotate 'line', 1949
    new $P2662, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2662, control_2661
    push_eh $P2662
    .lex "self", param_2663
    .lex "$x", param_2664
.annotate 'line', 1950
    find_lex $P2668, "$x"
    unless_null $P2668, vivify_1094
    new $P2668, "Undef"
  vivify_1094:
    set $S2669, $P2668
    iseq $I2670, $S2669, "-"
    unless $I2670, unless_2667
    new $P2666, 'Integer'
    set $P2666, $I2670
    goto unless_2667_end
  unless_2667:
    find_lex $P2671, "$x"
    unless_null $P2671, vivify_1095
    new $P2671, "Undef"
  vivify_1095:
    set $S2672, $P2671
    iseq $I2673, $S2672, "--"
    new $P2666, 'Integer'
    set $P2666, $I2673
  unless_2667_end:
    unless $P2666, if_2665_end
    new $P2674, "Exception"
    set $P2674['type'], .CONTROL_RETURN
    new $P2675, "Integer"
    assign $P2675, 0
    setattribute $P2674, 'payload', $P2675
    throw $P2674
  if_2665_end:
.annotate 'line', 1951
    find_lex $P2677, "$x"
    unless_null $P2677, vivify_1096
    new $P2677, "Undef"
  vivify_1096:
    set $S2678, $P2677
    substr $S2679, $S2678, 0, 1
    iseq $I2680, $S2679, "-"
    unless $I2680, if_2676_end
    new $P2681, "Exception"
    set $P2681['type'], .CONTROL_RETURN
    new $P2682, "Integer"
    assign $P2682, 1
    setattribute $P2681, 'payload', $P2682
    throw $P2681
  if_2676_end:
.annotate 'line', 1949
    .return (0)
  control_2661:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2683, exception, "payload"
    .return ($P2683)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("255_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2685
    .param pmc param_2686
.annotate 'line', 1955
    .lex "self", param_2685
    .lex "$x", param_2686
.annotate 'line', 1956
    new $P2687, "Undef"
    .lex "$spec", $P2687
    find_lex $P2688, "$x"
    unless_null $P2688, vivify_1097
    new $P2688, "Undef"
  vivify_1097:
    find_lex $P2689, "self"
    find_lex $P2690, "$?CLASS"
    getattribute $P2691, $P2689, $P2690, "%!options"
    unless_null $P2691, vivify_1098
    $P2691 = root_new ['parrot';'Hash']
  vivify_1098:
    set $P2692, $P2691[$P2688]
    unless_null $P2692, vivify_1099
    new $P2692, "Undef"
  vivify_1099:
    store_lex "$spec", $P2692
.annotate 'line', 1957
    find_lex $P2693, "$spec"
    unless_null $P2693, vivify_1100
    new $P2693, "Undef"
  vivify_1100:
    set $S2694, $P2693
    iseq $I2695, $S2694, "s"
.annotate 'line', 1955
    .return ($I2695)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("256_1306916546.01542") :outer("245_1306916546.01542")
    .param pmc param_2699
    .param pmc param_2700
.annotate 'line', 1960
    .const 'Sub' $P2791 = "259_1306916546.01542" 
    capture_lex $P2791
    .const 'Sub' $P2753 = "258_1306916546.01542" 
    capture_lex $P2753
    .const 'Sub' $P2704 = "257_1306916546.01542" 
    capture_lex $P2704
    new $P2698, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2698, control_2697
    push_eh $P2698
    .lex "self", param_2699
    .lex "@args", param_2700
.annotate 'line', 1961
    new $P2701, "Undef"
    .lex "$i", $P2701
.annotate 'line', 1962
    new $P2702, "Undef"
    .lex "$arg-count", $P2702
.annotate 'line', 1964
    new $P2703, "Undef"
    .lex "$result", $P2703
.annotate 'line', 1968
    .const 'Sub' $P2704 = "257_1306916546.01542" 
    newclosure $P2752, $P2704
    .lex "get-value", $P2752
.annotate 'line', 1983
    .const 'Sub' $P2753 = "258_1306916546.01542" 
    newclosure $P2771, $P2753
    .lex "slurp-rest", $P2771
.annotate 'line', 1961
    new $P2772, "Integer"
    assign $P2772, 0
    store_lex "$i", $P2772
.annotate 'line', 1962
    find_lex $P2773, "@args"
    unless_null $P2773, vivify_1126
    $P2773 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $N2774, $P2773
    new $P2775, 'Float'
    set $P2775, $N2774
    store_lex "$arg-count", $P2775
.annotate 'line', 1964
    get_hll_global $P2776, "GLOBAL"
    nqp_get_package_through_who $P2777, $P2776, "HLL"
    nqp_get_package_through_who $P2778, $P2777, "CommandLine"
    get_who $P2779, $P2778
    set $P2780, $P2779["Result"]
    $P2781 = $P2780."new"()
    store_lex "$result", $P2781
.annotate 'line', 1965
    find_lex $P2782, "$result"
    unless_null $P2782, vivify_1127
    new $P2782, "Undef"
  vivify_1127:
    $P2782."init"()
    find_lex $P2783, "get-value"
    find_lex $P2784, "slurp-rest"
.annotate 'line', 1991
    new $P2978, 'ExceptionHandler'
    set_label $P2978, loop2977_handler
    $P2978."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2978
  loop2977_test:
    find_lex $P2785, "$i"
    unless_null $P2785, vivify_1128
    new $P2785, "Undef"
  vivify_1128:
    set $N2786, $P2785
    find_lex $P2787, "$arg-count"
    unless_null $P2787, vivify_1129
    new $P2787, "Undef"
  vivify_1129:
    set $N2788, $P2787
    islt $I2789, $N2786, $N2788
    unless $I2789, loop2977_done
  loop2977_redo:
    .const 'Sub' $P2791 = "259_1306916546.01542" 
    capture_lex $P2791
    $P2791()
  loop2977_next:
    goto loop2977_test
  loop2977_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2979, exception, 'type'
    eq $P2979, .CONTROL_LOOP_NEXT, loop2977_next
    eq $P2979, .CONTROL_LOOP_REDO, loop2977_redo
  loop2977_done:
    pop_eh 
.annotate 'line', 2043
    new $P2980, "Exception"
    set $P2980['type'], .CONTROL_RETURN
    find_lex $P2981, "$result"
    unless_null $P2981, vivify_1190
    new $P2981, "Undef"
  vivify_1190:
    setattribute $P2980, 'payload', $P2981
    throw $P2980
.annotate 'line', 1960
    .return ()
  control_2697:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2982, exception, "payload"
    .return ($P2982)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("257_1306916546.01542") :outer("256_1306916546.01542")
    .param pmc param_2705
.annotate 'line', 1968
    .lex "$opt", param_2705
.annotate 'line', 1969
    find_lex $P2708, "$i"
    unless_null $P2708, vivify_1101
    new $P2708, "Undef"
  vivify_1101:
    set $N2709, $P2708
    find_lex $P2710, "$arg-count"
    unless_null $P2710, vivify_1102
    new $P2710, "Undef"
  vivify_1102:
    sub $P2711, $P2710, 1
    set $N2712, $P2711
    iseq $I2713, $N2709, $N2712
    if $I2713, if_2707
.annotate 'line', 1971
    find_lex $P2720, "self"
    find_lex $P2721, "$i"
    unless_null $P2721, vivify_1103
    new $P2721, "Undef"
  vivify_1103:
    add $P2722, $P2721, 1
    set $I2723, $P2722
    find_lex $P2724, "@args"
    unless_null $P2724, vivify_1104
    $P2724 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $P2725, $P2724[$I2723]
    unless_null $P2725, vivify_1105
    new $P2725, "Undef"
  vivify_1105:
    $P2726 = $P2720."is-option"($P2725)
    if $P2726, if_2719
.annotate 'line', 1973
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
    find_lex $P2738, "self"
    find_lex $P2739, "$?CLASS"
    getattribute $P2740, $P2738, $P2739, "%!stopper"
    unless_null $P2740, vivify_1109
    $P2740 = root_new ['parrot';'Hash']
  vivify_1109:
    set $P2741, $P2740[$P2737]
    unless_null $P2741, vivify_1110
    new $P2741, "Undef"
  vivify_1110:
    if $P2741, if_2732
.annotate 'line', 1975
    find_lex $P2746, "$i"
    unless_null $P2746, vivify_1111
    new $P2746, "Undef"
  vivify_1111:
    clone $P2747, $P2746
    inc $P2746
    find_lex $P2748, "$i"
    unless_null $P2748, vivify_1112
    new $P2748, "Undef"
  vivify_1112:
    set $I2749, $P2748
    find_lex $P2750, "@args"
    unless_null $P2750, vivify_1113
    $P2750 = root_new ['parrot';'ResizablePMCArray']
  vivify_1113:
    set $P2751, $P2750[$I2749]
    unless_null $P2751, vivify_1114
    new $P2751, "Undef"
  vivify_1114:
    set $P2731, $P2751
.annotate 'line', 1973
    goto if_2732_end
  if_2732:
.annotate 'line', 1974
    new $P2742, 'String'
    set $P2742, "Option "
    find_lex $P2743, "$opt"
    unless_null $P2743, vivify_1115
    new $P2743, "Undef"
  vivify_1115:
    concat $P2744, $P2742, $P2743
    concat $P2745, $P2744, " needs a value, but is followed by a stopper"
    die $P2745
  if_2732_end:
.annotate 'line', 1973
    set $P2718, $P2731
.annotate 'line', 1971
    goto if_2719_end
  if_2719:
.annotate 'line', 1972
    new $P2727, 'String'
    set $P2727, "Option "
    find_lex $P2728, "$opt"
    unless_null $P2728, vivify_1116
    new $P2728, "Undef"
  vivify_1116:
    concat $P2729, $P2727, $P2728
    concat $P2730, $P2729, " needs a value, but is followed by an option"
    die $P2730
  if_2719_end:
.annotate 'line', 1971
    set $P2706, $P2718
.annotate 'line', 1969
    goto if_2707_end
  if_2707:
.annotate 'line', 1970
    new $P2714, 'String'
    set $P2714, "Option "
    find_lex $P2715, "$opt"
    unless_null $P2715, vivify_1117
    new $P2715, "Undef"
  vivify_1117:
    concat $P2716, $P2714, $P2715
    concat $P2717, $P2716, " needs a value"
    die $P2717
  if_2707_end:
.annotate 'line', 1968
    .return ($P2706)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("258_1306916546.01542") :outer("256_1306916546.01542")
.annotate 'line', 1983
    find_lex $P2754, "$i"
    unless_null $P2754, vivify_1118
    new $P2754, "Undef"
  vivify_1118:
    clone $P2755, $P2754
    inc $P2754
.annotate 'line', 1985
    new $P2769, 'ExceptionHandler'
    set_label $P2769, loop2768_handler
    $P2769."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2769
  loop2768_test:
    find_lex $P2756, "$i"
    unless_null $P2756, vivify_1119
    new $P2756, "Undef"
  vivify_1119:
    set $N2757, $P2756
    find_lex $P2758, "$arg-count"
    unless_null $P2758, vivify_1120
    new $P2758, "Undef"
  vivify_1120:
    set $N2759, $P2758
    islt $I2760, $N2757, $N2759
    unless $I2760, loop2768_done
  loop2768_redo:
.annotate 'line', 1986
    find_lex $P2761, "$result"
    unless_null $P2761, vivify_1121
    new $P2761, "Undef"
  vivify_1121:
    find_lex $P2762, "$i"
    unless_null $P2762, vivify_1122
    new $P2762, "Undef"
  vivify_1122:
    set $I2763, $P2762
    find_lex $P2764, "@args"
    unless_null $P2764, vivify_1123
    $P2764 = root_new ['parrot';'ResizablePMCArray']
  vivify_1123:
    set $P2765, $P2764[$I2763]
    unless_null $P2765, vivify_1124
    new $P2765, "Undef"
  vivify_1124:
    $P2761."add-argument"($P2765)
    find_lex $P2766, "$i"
    unless_null $P2766, vivify_1125
    new $P2766, "Undef"
  vivify_1125:
    clone $P2767, $P2766
    inc $P2766
  loop2768_next:
.annotate 'line', 1985
    goto loop2768_test
  loop2768_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2770, exception, 'type'
    eq $P2770, .CONTROL_LOOP_NEXT, loop2768_next
    eq $P2770, .CONTROL_LOOP_REDO, loop2768_redo
  loop2768_done:
    pop_eh 
.annotate 'line', 1983
    .return ($I2760)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2790"  :anon :subid("259_1306916546.01542") :outer("256_1306916546.01542")
.annotate 'line', 1991
    .const 'Sub' $P2893 = "261_1306916546.01542" 
    capture_lex $P2893
    .const 'Sub' $P2807 = "260_1306916546.01542" 
    capture_lex $P2807
.annotate 'line', 1992
    new $P2792, "Undef"
    .lex "$cur", $P2792
    find_lex $P2793, "$i"
    unless_null $P2793, vivify_1130
    new $P2793, "Undef"
  vivify_1130:
    set $I2794, $P2793
    find_lex $P2795, "@args"
    unless_null $P2795, vivify_1131
    $P2795 = root_new ['parrot';'ResizablePMCArray']
  vivify_1131:
    set $P2796, $P2795[$I2794]
    unless_null $P2796, vivify_1132
    new $P2796, "Undef"
  vivify_1132:
    store_lex "$cur", $P2796
.annotate 'line', 1993
    find_lex $P2798, "self"
    find_lex $P2799, "$cur"
    unless_null $P2799, vivify_1133
    new $P2799, "Undef"
  vivify_1133:
    $P2800 = $P2798."is-option"($P2799)
    if $P2800, if_2797
.annotate 'line', 2035
    find_lex $P2964, "$cur"
    unless_null $P2964, vivify_1134
    new $P2964, "Undef"
  vivify_1134:
    find_lex $P2965, "self"
    find_lex $P2966, "$?CLASS"
    getattribute $P2967, $P2965, $P2966, "%!stopper"
    unless_null $P2967, vivify_1135
    $P2967 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P2968, $P2967[$P2964]
    unless_null $P2968, vivify_1136
    new $P2968, "Undef"
  vivify_1136:
    if $P2968, if_2963
.annotate 'line', 2038
    find_lex $P2969, "$result"
    unless_null $P2969, vivify_1137
    new $P2969, "Undef"
  vivify_1137:
    find_lex $P2970, "$cur"
    unless_null $P2970, vivify_1138
    new $P2970, "Undef"
  vivify_1138:
    $P2969."add-argument"($P2970)
.annotate 'line', 2039
    find_lex $P2972, "self"
    find_lex $P2973, "$?CLASS"
    getattribute $P2974, $P2972, $P2973, "$!stop-after-first-arg"
    unless_null $P2974, vivify_1139
    new $P2974, "Undef"
  vivify_1139:
    unless $P2974, if_2971_end
    "slurp-rest"()
  if_2971_end:
.annotate 'line', 2037
    goto if_2963_end
  if_2963:
.annotate 'line', 2036
    "slurp-rest"()
  if_2963_end:
.annotate 'line', 2035
    goto if_2797_end
  if_2797:
.annotate 'line', 1994
    find_lex $P2802, "$cur"
    unless_null $P2802, vivify_1140
    new $P2802, "Undef"
  vivify_1140:
    set $S2803, $P2802
    substr $S2804, $S2803, 0, 2
    iseq $I2805, $S2804, "--"
    if $I2805, if_2801
.annotate 'line', 2013
    .const 'Sub' $P2893 = "261_1306916546.01542" 
    capture_lex $P2893
    $P2893()
    goto if_2801_end
  if_2801:
.annotate 'line', 1994
    .const 'Sub' $P2807 = "260_1306916546.01542" 
    capture_lex $P2807
    $P2807()
  if_2801_end:
  if_2797_end:
.annotate 'line', 1993
    find_lex $P2975, "$i"
    unless_null $P2975, vivify_1189
    new $P2975, "Undef"
  vivify_1189:
    clone $P2976, $P2975
    inc $P2975
.annotate 'line', 1991
    .return ($P2976)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2892"  :anon :subid("261_1306916546.01542") :outer("259_1306916546.01542")
.annotate 'line', 2013
    .const 'Sub' $P2938 = "262_1306916546.01542" 
    capture_lex $P2938
.annotate 'line', 2014
    new $P2894, "Undef"
    .lex "$opt", $P2894
    find_lex $P2895, "$cur"
    unless_null $P2895, vivify_1141
    new $P2895, "Undef"
  vivify_1141:
    set $S2896, $P2895
    substr $S2897, $S2896, 1
    new $P2898, 'String'
    set $P2898, $S2897
    store_lex "$opt", $P2898
.annotate 'line', 2015
    find_lex $P2901, "$opt"
    unless_null $P2901, vivify_1142
    new $P2901, "Undef"
  vivify_1142:
    set $S2902, $P2901
    length $I2903, $S2902
    set $N2904, $I2903
    iseq $I2905, $N2904, 1.0
    if $I2905, if_2900
.annotate 'line', 2025
    .const 'Sub' $P2938 = "262_1306916546.01542" 
    capture_lex $P2938
    $P2962 = $P2938()
    set $P2899, $P2962
.annotate 'line', 2015
    goto if_2900_end
  if_2900:
.annotate 'line', 2017
    find_lex $P2907, "$opt"
    unless_null $P2907, vivify_1150
    new $P2907, "Undef"
  vivify_1150:
    find_lex $P2908, "self"
    find_lex $P2909, "$?CLASS"
    getattribute $P2910, $P2908, $P2909, "%!options"
    unless_null $P2910, vivify_1151
    $P2910 = root_new ['parrot';'Hash']
  vivify_1151:
    set $P2911, $P2910[$P2907]
    unless_null $P2911, vivify_1152
    new $P2911, "Undef"
  vivify_1152:
    if $P2911, unless_2906_end
    new $P2912, 'String'
    set $P2912, "No such option -"
    find_lex $P2913, "$opt"
    unless_null $P2913, vivify_1153
    new $P2913, "Undef"
  vivify_1153:
    concat $P2914, $P2912, $P2913
    die $P2914
  unless_2906_end:
.annotate 'line', 2018
    find_lex $P2916, "self"
    find_lex $P2917, "$opt"
    unless_null $P2917, vivify_1154
    new $P2917, "Undef"
  vivify_1154:
    $P2918 = $P2916."wants-value"($P2917)
    if $P2918, if_2915
.annotate 'line', 2022
    find_lex $P2925, "$result"
    unless_null $P2925, vivify_1155
    new $P2925, "Undef"
  vivify_1155:
    find_lex $P2926, "$opt"
    unless_null $P2926, vivify_1156
    new $P2926, "Undef"
  vivify_1156:
    $P2925."add-option"($P2926, 1)
.annotate 'line', 2021
    goto if_2915_end
  if_2915:
.annotate 'line', 2019
    find_lex $P2919, "$result"
    unless_null $P2919, vivify_1157
    new $P2919, "Undef"
  vivify_1157:
    find_lex $P2920, "$opt"
    unless_null $P2920, vivify_1158
    new $P2920, "Undef"
  vivify_1158:
.annotate 'line', 2020
    new $P2921, 'String'
    set $P2921, "-"
    find_lex $P2922, "$opt"
    unless_null $P2922, vivify_1159
    new $P2922, "Undef"
  vivify_1159:
    concat $P2923, $P2921, $P2922
    $P2924 = "get-value"($P2923)
    $P2919."add-option"($P2920, $P2924)
  if_2915_end:
.annotate 'line', 2024
    new $P2929, 'String'
    set $P2929, "-"
    find_lex $P2930, "$opt"
    unless_null $P2930, vivify_1160
    new $P2930, "Undef"
  vivify_1160:
    concat $P2931, $P2929, $P2930
    find_lex $P2932, "self"
    find_lex $P2933, "$?CLASS"
    getattribute $P2934, $P2932, $P2933, "%!stopper"
    unless_null $P2934, vivify_1161
    $P2934 = root_new ['parrot';'Hash']
  vivify_1161:
    set $P2935, $P2934[$P2931]
    unless_null $P2935, vivify_1162
    new $P2935, "Undef"
  vivify_1162:
    if $P2935, if_2928
    set $P2927, $P2935
    goto if_2928_end
  if_2928:
    $P2936 = "slurp-rest"()
    set $P2927, $P2936
  if_2928_end:
.annotate 'line', 2015
    set $P2899, $P2927
  if_2900_end:
.annotate 'line', 2013
    .return ($P2899)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2937"  :anon :subid("262_1306916546.01542") :outer("261_1306916546.01542")
.annotate 'line', 2025
    .const 'Sub' $P2944 = "263_1306916546.01542" 
    capture_lex $P2944
.annotate 'line', 2027
    new $P2939, "Undef"
    .lex "$iter", $P2939
    find_lex $P2940, "$opt"
    unless_null $P2940, vivify_1143
    new $P2940, "Undef"
  vivify_1143:
    iter $P2941, $P2940
    store_lex "$iter", $P2941
.annotate 'line', 2028
    new $P2960, 'ExceptionHandler'
    set_label $P2960, loop2959_handler
    $P2960."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2960
  loop2959_test:
    find_lex $P2942, "$iter"
    unless_null $P2942, vivify_1144
    new $P2942, "Undef"
  vivify_1144:
    unless $P2942, loop2959_done
  loop2959_redo:
    .const 'Sub' $P2944 = "263_1306916546.01542" 
    capture_lex $P2944
    $P2944()
  loop2959_next:
    goto loop2959_test
  loop2959_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2961, exception, 'type'
    eq $P2961, .CONTROL_LOOP_NEXT, loop2959_next
    eq $P2961, .CONTROL_LOOP_REDO, loop2959_redo
  loop2959_done:
    pop_eh 
.annotate 'line', 2025
    .return ($P2942)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2943"  :anon :subid("263_1306916546.01542") :outer("262_1306916546.01542")
.annotate 'line', 2029
    new $P2945, "Undef"
    .lex "$o", $P2945
    find_lex $P2946, "$iter"
    unless_null $P2946, vivify_1145
    new $P2946, "Undef"
  vivify_1145:
    shift $P2947, $P2946
    store_lex "$o", $P2947
.annotate 'line', 2030
    find_lex $P2949, "self"
    find_lex $P2950, "$o"
    unless_null $P2950, vivify_1146
    new $P2950, "Undef"
  vivify_1146:
    $P2951 = $P2949."wants-value"($P2950)
    unless $P2951, if_2948_end
    new $P2952, 'String'
    set $P2952, "Option -"
    find_lex $P2953, "$o"
    unless_null $P2953, vivify_1147
    new $P2953, "Undef"
  vivify_1147:
    concat $P2954, $P2952, $P2953
    concat $P2955, $P2954, " requires a value and cannot be grouped"
    die $P2955
  if_2948_end:
.annotate 'line', 2031
    find_lex $P2956, "$result"
    unless_null $P2956, vivify_1148
    new $P2956, "Undef"
  vivify_1148:
    find_lex $P2957, "$o"
    unless_null $P2957, vivify_1149
    new $P2957, "Undef"
  vivify_1149:
    $P2958 = $P2956."add-option"($P2957, 1)
.annotate 'line', 2028
    .return ($P2958)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2806"  :anon :subid("260_1306916546.01542") :outer("259_1306916546.01542")
.annotate 'line', 1996
    new $P2808, "Undef"
    .lex "$opt", $P2808
.annotate 'line', 1997
    new $P2809, "Undef"
    .lex "$idx", $P2809
.annotate 'line', 1998
    new $P2810, "Undef"
    .lex "$value", $P2810
.annotate 'line', 1999
    new $P2811, "Undef"
    .lex "$has-value", $P2811
.annotate 'line', 1996
    find_lex $P2812, "$i"
    unless_null $P2812, vivify_1163
    new $P2812, "Undef"
  vivify_1163:
    set $I2813, $P2812
    find_lex $P2814, "@args"
    unless_null $P2814, vivify_1164
    $P2814 = root_new ['parrot';'ResizablePMCArray']
  vivify_1164:
    set $P2815, $P2814[$I2813]
    unless_null $P2815, vivify_1165
    new $P2815, "Undef"
  vivify_1165:
    set $S2816, $P2815
    substr $S2817, $S2816, 2
    new $P2818, 'String'
    set $P2818, $S2817
    store_lex "$opt", $P2818
.annotate 'line', 1997
    find_lex $P2819, "$opt"
    unless_null $P2819, vivify_1166
    new $P2819, "Undef"
  vivify_1166:
    set $S2820, $P2819
    index $I2821, $S2820, "="
    new $P2822, 'Integer'
    set $P2822, $I2821
    store_lex "$idx", $P2822
.annotate 'line', 1998
    new $P2823, "Integer"
    assign $P2823, 1
    store_lex "$value", $P2823
.annotate 'line', 1999
    new $P2824, "Integer"
    assign $P2824, 0
    store_lex "$has-value", $P2824
.annotate 'line', 2001
    find_lex $P2826, "$idx"
    unless_null $P2826, vivify_1167
    new $P2826, "Undef"
  vivify_1167:
    set $N2827, $P2826
    isge $I2828, $N2827, 0.0
    unless $I2828, if_2825_end
.annotate 'line', 2002
    find_lex $P2829, "$opt"
    unless_null $P2829, vivify_1168
    new $P2829, "Undef"
  vivify_1168:
    set $S2830, $P2829
    find_lex $P2831, "$idx"
    unless_null $P2831, vivify_1169
    new $P2831, "Undef"
  vivify_1169:
    add $P2832, $P2831, 1
    set $I2833, $P2832
    substr $S2834, $S2830, $I2833
    new $P2835, 'String'
    set $P2835, $S2834
    store_lex "$value", $P2835
.annotate 'line', 2003
    find_lex $P2836, "$opt"
    unless_null $P2836, vivify_1170
    new $P2836, "Undef"
  vivify_1170:
    set $S2837, $P2836
    find_lex $P2838, "$idx"
    unless_null $P2838, vivify_1171
    new $P2838, "Undef"
  vivify_1171:
    set $I2839, $P2838
    substr $S2840, $S2837, 0, $I2839
    new $P2841, 'String'
    set $P2841, $S2840
    store_lex "$opt", $P2841
.annotate 'line', 2004
    new $P2842, "Integer"
    assign $P2842, 1
    store_lex "$has-value", $P2842
  if_2825_end:
.annotate 'line', 2006
    find_lex $P2847, "$opt"
    unless_null $P2847, vivify_1172
    new $P2847, "Undef"
  vivify_1172:
    find_lex $P2844, "self"
    find_lex $P2845, "$?CLASS"
    getattribute $P2846, $P2844, $P2845, "%!options"
    unless_null $P2846, vivify_1173
    $P2846 = root_new ['parrot';'Hash']
  vivify_1173:
    exists $I2848, $P2846[$P2847]
    if $I2848, unless_2843_end
    new $P2849, 'String'
    set $P2849, "Illegal option --"
    find_lex $P2850, "$opt"
    unless_null $P2850, vivify_1174
    new $P2850, "Undef"
  vivify_1174:
    concat $P2851, $P2849, $P2850
    die $P2851
  unless_2843_end:
.annotate 'line', 2007
    find_lex $P2855, "$opt"
    unless_null $P2855, vivify_1175
    new $P2855, "Undef"
  vivify_1175:
    find_lex $P2856, "self"
    find_lex $P2857, "$?CLASS"
    getattribute $P2858, $P2856, $P2857, "%!options"
    unless_null $P2858, vivify_1176
    $P2858 = root_new ['parrot';'Hash']
  vivify_1176:
    set $P2859, $P2858[$P2855]
    unless_null $P2859, vivify_1177
    new $P2859, "Undef"
  vivify_1177:
    set $S2860, $P2859
    isne $I2861, $S2860, "s"
    if $I2861, if_2854
    new $P2853, 'Integer'
    set $P2853, $I2861
    goto if_2854_end
  if_2854:
    find_lex $P2862, "$has-value"
    unless_null $P2862, vivify_1178
    new $P2862, "Undef"
  vivify_1178:
    set $P2853, $P2862
  if_2854_end:
    unless $P2853, if_2852_end
    new $P2863, 'String'
    set $P2863, "Option --"
    find_lex $P2864, "$opt"
    unless_null $P2864, vivify_1179
    new $P2864, "Undef"
  vivify_1179:
    concat $P2865, $P2863, $P2864
    concat $P2866, $P2865, " does not allow a value"
    die $P2866
  if_2852_end:
.annotate 'line', 2008
    find_lex $P2870, "$has-value"
    unless_null $P2870, vivify_1180
    new $P2870, "Undef"
  vivify_1180:
    isfalse $I2871, $P2870
    if $I2871, if_2869
    new $P2868, 'Integer'
    set $P2868, $I2871
    goto if_2869_end
  if_2869:
    find_lex $P2872, "self"
    find_lex $P2873, "$opt"
    unless_null $P2873, vivify_1181
    new $P2873, "Undef"
  vivify_1181:
    $P2874 = $P2872."wants-value"($P2873)
    set $P2868, $P2874
  if_2869_end:
    unless $P2868, if_2867_end
.annotate 'line', 2009
    new $P2875, 'String'
    set $P2875, "--"
    find_lex $P2876, "$opt"
    unless_null $P2876, vivify_1182
    new $P2876, "Undef"
  vivify_1182:
    concat $P2877, $P2875, $P2876
    $P2878 = "get-value"($P2877)
    store_lex "$value", $P2878
  if_2867_end:
.annotate 'line', 2011
    find_lex $P2879, "$result"
    unless_null $P2879, vivify_1183
    new $P2879, "Undef"
  vivify_1183:
    find_lex $P2880, "$opt"
    unless_null $P2880, vivify_1184
    new $P2880, "Undef"
  vivify_1184:
    find_lex $P2881, "$value"
    unless_null $P2881, vivify_1185
    new $P2881, "Undef"
  vivify_1185:
    $P2879."add-option"($P2880, $P2881)
.annotate 'line', 2012
    new $P2884, 'String'
    set $P2884, "--"
    find_lex $P2885, "$opt"
    unless_null $P2885, vivify_1186
    new $P2885, "Undef"
  vivify_1186:
    concat $P2886, $P2884, $P2885
    find_lex $P2887, "self"
    find_lex $P2888, "$?CLASS"
    getattribute $P2889, $P2887, $P2888, "%!stopper"
    unless_null $P2889, vivify_1187
    $P2889 = root_new ['parrot';'Hash']
  vivify_1187:
    set $P2890, $P2889[$P2886]
    unless_null $P2890, vivify_1188
    new $P2890, "Undef"
  vivify_1188:
    if $P2890, if_2883
    set $P2882, $P2890
    goto if_2883_end
  if_2883:
    find_lex $P2891, "slurp-rest"
    set $P2882, $P2891
  if_2883_end:
.annotate 'line', 1994
    .return ($P2882)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2984"  :subid("264_1306916546.01542") :outer("10_1306916546.01542")
.annotate 'line', 2078
    .const 'Sub' $P3210 = "281_1306916546.01542" 
    capture_lex $P3210
    .const 'Sub' $P3205 = "280_1306916546.01542" 
    capture_lex $P3205
    .const 'Sub' $P3200 = "279_1306916546.01542" 
    capture_lex $P3200
    .const 'Sub' $P3163 = "278_1306916546.01542" 
    capture_lex $P3163
    .const 'Sub' $P3149 = "277_1306916546.01542" 
    capture_lex $P3149
    .const 'Sub' $P3128 = "276_1306916546.01542" 
    capture_lex $P3128
    .const 'Sub' $P3103 = "275_1306916546.01542" 
    capture_lex $P3103
    .const 'Sub' $P3089 = "274_1306916546.01542" 
    capture_lex $P3089
    .const 'Sub' $P3071 = "273_1306916546.01542" 
    capture_lex $P3071
    .const 'Sub' $P3051 = "272_1306916546.01542" 
    capture_lex $P3051
    .const 'Sub' $P3037 = "271_1306916546.01542" 
    capture_lex $P3037
    .const 'Sub' $P3019 = "270_1306916546.01542" 
    capture_lex $P3019
    .const 'Sub' $P3010 = "269_1306916546.01542" 
    capture_lex $P3010
    .const 'Sub' $P2995 = "266_1306916546.01542" 
    capture_lex $P2995
    .const 'Sub' $P2987 = "265_1306916546.01542" 
    capture_lex $P2987
    .lex "Event", $P2986
.annotate 'line', 2099
    .const 'Sub' $P2987 = "265_1306916546.01542" 
    newclosure $P2991, $P2987
    .lex "addr", $P2991
.annotate 'line', 2078
    .lex "$?PACKAGE", $P2992
    .lex "$?CLASS", $P2993
.annotate 'line', 2080
    .const 'Sub' $P2995 = "266_1306916546.01542" 
    capture_lex $P2995
    $P2995()
    find_lex $P3009, "addr"
.annotate 'line', 2213
    .const 'Sub' $P3210 = "281_1306916546.01542" 
    newclosure $P3215, $P3210
.annotate 'line', 2078
    .return ($P3215)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("265_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_2988
.annotate 'line', 2099
    .lex "$obj", param_2988
.annotate 'line', 2100
    find_lex $P2989, "$obj"
    unless_null $P2989, vivify_1191
    new $P2989, "Undef"
  vivify_1191:
    get_addr $I2990, $P2989
.annotate 'line', 2099
    .return ($I2990)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2994"  :anon :subid("266_1306916546.01542") :outer("264_1306916546.01542")
.annotate 'line', 2080
    .const 'Sub' $P3003 = "268_1306916546.01542" 
    capture_lex $P3003
    .const 'Sub' $P2998 = "267_1306916546.01542" 
    capture_lex $P2998
    .lex "$?PACKAGE", $P2996
    .lex "$?CLASS", $P2997
.annotate 'line', 2087
    .const 'Sub' $P3003 = "268_1306916546.01542" 
    newclosure $P3008, $P3003
.annotate 'line', 2080
    .return ($P3008)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("267_1306916546.01542") :outer("266_1306916546.01542")
    .param pmc param_2999
.annotate 'line', 2083
    .lex "self", param_2999
    find_lex $P3000, "self"
    find_lex $P3001, "$?CLASS"
    getattribute $P3002, $P3000, $P3001, "$!deserialize_past"
    unless_null $P3002, vivify_1192
    new $P3002, "Undef"
  vivify_1192:
    .return ($P3002)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("268_1306916546.01542") :outer("266_1306916546.01542")
    .param pmc param_3004
.annotate 'line', 2087
    .lex "self", param_3004
    find_lex $P3005, "self"
    find_lex $P3006, "$?CLASS"
    getattribute $P3007, $P3005, $P3006, "$!fixup_past"
    unless_null $P3007, vivify_1193
    new $P3007, "Undef"
  vivify_1193:
    .return ($P3007)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("269_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3011
    .param pmc param_3012 :named("handle")
.annotate 'line', 2107
    .lex "self", param_3011
    .lex "$handle", param_3012
.annotate 'line', 2108
    new $P3013, "Undef"
    .lex "$obj", $P3013
    find_lex $P3014, "self"
    $P3015 = $P3014."CREATE"()
    store_lex "$obj", $P3015
.annotate 'line', 2109
    find_lex $P3016, "$obj"
    unless_null $P3016, vivify_1194
    new $P3016, "Undef"
  vivify_1194:
    find_lex $P3017, "$handle"
    unless_null $P3017, vivify_1195
    new $P3017, "Undef"
  vivify_1195:
    $P3016."BUILD"($P3017 :named("handle"))
    find_lex $P3018, "$obj"
    unless_null $P3018, vivify_1196
    new $P3018, "Undef"
  vivify_1196:
.annotate 'line', 2107
    .return ($P3018)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("270_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3020
    .param pmc param_3021 :optional :named("handle")
    .param int has_param_3021 :opt_flag
.annotate 'line', 2113
    .lex "self", param_3020
    if has_param_3021, optparam_1197
    new $P3022, "Undef"
    set param_3021, $P3022
  optparam_1197:
    .lex "$handle", param_3021
.annotate 'line', 2114
    find_lex $P3023, "$handle"
    unless_null $P3023, vivify_1198
    new $P3023, "Undef"
  vivify_1198:
    set $S3024, $P3023
    nqp_create_sc $P3025, $S3024
    find_lex $P3026, "self"
    find_lex $P3027, "$?CLASS"
    setattribute $P3026, $P3027, "$!sc", $P3025
.annotate 'line', 2115
    find_lex $P3028, "$handle"
    unless_null $P3028, vivify_1199
    new $P3028, "Undef"
  vivify_1199:
    find_lex $P3029, "self"
    find_lex $P3030, "$?CLASS"
    setattribute $P3029, $P3030, "$!handle", $P3028
.annotate 'line', 2116
    new $P3031, "Hash"
    find_lex $P3032, "self"
    find_lex $P3033, "$?CLASS"
    setattribute $P3032, $P3033, "%!addr_to_slot", $P3031
.annotate 'line', 2117
    new $P3034, "ResizablePMCArray"
    find_lex $P3035, "self"
    find_lex $P3036, "$?CLASS"
    setattribute $P3035, $P3036, "@!event_stream", $P3034
.annotate 'line', 2113
    .return ($P3034)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("271_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3038
    .param pmc param_3039
.annotate 'line', 2121
    .lex "self", param_3038
    .lex "$obj", param_3039
.annotate 'line', 2122
    new $P3040, "Undef"
    .lex "$slot", $P3040
    find_lex $P3041, "$obj"
    unless_null $P3041, vivify_1200
    new $P3041, "Undef"
  vivify_1200:
    $P3042 = "addr"($P3041)
    find_lex $P3043, "self"
    find_lex $P3044, "$?CLASS"
    getattribute $P3045, $P3043, $P3044, "%!addr_to_slot"
    unless_null $P3045, vivify_1201
    $P3045 = root_new ['parrot';'Hash']
  vivify_1201:
    set $P3046, $P3045[$P3042]
    unless_null $P3046, vivify_1202
    new $P3046, "Undef"
  vivify_1202:
    store_lex "$slot", $P3046
.annotate 'line', 2123
    find_lex $P3048, "$slot"
    unless_null $P3048, vivify_1203
    new $P3048, "Undef"
  vivify_1203:
    defined $I3049, $P3048
    if $I3049, unless_3047_end
.annotate 'line', 2124
    die "slot_for_object called on object not in context"
  unless_3047_end:
.annotate 'line', 2123
    find_lex $P3050, "$slot"
    unless_null $P3050, vivify_1204
    new $P3050, "Undef"
  vivify_1204:
.annotate 'line', 2121
    .return ($P3050)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object" :anon :subid("272_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3054
    .param pmc param_3055
.annotate 'line', 2133
    new $P3053, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3053, control_3052
    push_eh $P3053
    .lex "self", param_3054
    .lex "$obj", param_3055
.annotate 'line', 2134
    new $P3056, "Undef"
    .lex "$slot", $P3056
    find_lex $P3057, "self"
    find_lex $P3058, "$obj"
    unless_null $P3058, vivify_1205
    new $P3058, "Undef"
  vivify_1205:
    $P3059 = $P3057."slot_for_object"($P3058)
    store_lex "$slot", $P3059
.annotate 'line', 2135
    new $P3060, "Exception"
    set $P3060['type'], .CONTROL_RETURN
    get_hll_global $P3061, "GLOBAL"
    nqp_get_package_through_who $P3062, $P3061, "PAST"
    get_who $P3063, $P3062
    set $P3064, $P3063["Op"]
    find_lex $P3065, "self"
    find_lex $P3066, "$?CLASS"
    getattribute $P3067, $P3065, $P3066, "$!handle"
    unless_null $P3067, vivify_1206
    new $P3067, "Undef"
  vivify_1206:
    find_lex $P3068, "$slot"
    unless_null $P3068, vivify_1207
    new $P3068, "Undef"
  vivify_1207:
    $P3069 = $P3064."new"($P3067, $P3068, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3060, 'payload', $P3069
    throw $P3060
.annotate 'line', 2133
    .return ()
  control_3052:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3070, exception, "payload"
    .return ($P3070)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("273_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3074
    .param pmc param_3075
    .param pmc param_3076
.annotate 'line', 2139
    new $P3073, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3073, control_3072
    push_eh $P3073
    .lex "self", param_3074
    .lex "$slot", param_3075
    .lex "$past_to_set", param_3076
.annotate 'line', 2140
    new $P3077, "Exception"
    set $P3077['type'], .CONTROL_RETURN
    get_hll_global $P3078, "GLOBAL"
    nqp_get_package_through_who $P3079, $P3078, "PAST"
    get_who $P3080, $P3079
    set $P3081, $P3080["Op"]
    find_lex $P3082, "self"
    find_lex $P3083, "$?CLASS"
    getattribute $P3084, $P3082, $P3083, "$!handle"
    unless_null $P3084, vivify_1208
    new $P3084, "Undef"
  vivify_1208:
    find_lex $P3085, "$slot"
    unless_null $P3085, vivify_1209
    new $P3085, "Undef"
  vivify_1209:
    find_lex $P3086, "$past_to_set"
    unless_null $P3086, vivify_1210
    new $P3086, "Undef"
  vivify_1210:
    $P3087 = $P3081."new"($P3084, $P3085, $P3086, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3077, 'payload', $P3087
    throw $P3077
.annotate 'line', 2139
    .return ()
  control_3072:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3088, exception, "payload"
    .return ($P3088)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("274_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3090
    .param pmc param_3091
.annotate 'line', 2146
    .lex "self", param_3090
    .lex "$to_wrap", param_3091
.annotate 'line', 2147
    get_hll_global $P3092, "GLOBAL"
    nqp_get_package_through_who $P3093, $P3092, "PAST"
    get_who $P3094, $P3093
    set $P3095, $P3094["Op"]
    find_lex $P3096, "$to_wrap"
    unless_null $P3096, vivify_1211
    new $P3096, "Undef"
  vivify_1211:
.annotate 'line', 2150
    get_hll_global $P3097, "GLOBAL"
    nqp_get_package_through_who $P3098, $P3097, "PAST"
    get_who $P3099, $P3098
    set $P3100, $P3099["Var"]
    $P3101 = $P3100."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3102 = $P3095."new"($P3096, $P3101, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2146
    .return ($P3102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("275_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3104
    .param pmc param_3105
.annotate 'line', 2155
    .lex "self", param_3104
    .lex "$obj", param_3105
.annotate 'line', 2157
    new $P3106, "Undef"
    .lex "$idx", $P3106
.annotate 'line', 2156
    find_lex $P3107, "$obj"
    unless_null $P3107, vivify_1212
    new $P3107, "Undef"
  vivify_1212:
    find_lex $P3108, "self"
    find_lex $P3109, "$?CLASS"
    getattribute $P3110, $P3108, $P3109, "$!sc"
    unless_null $P3110, vivify_1213
    new $P3110, "Undef"
  vivify_1213:
    nqp_set_sc_for_object $P3107, $P3110
.annotate 'line', 2157
    find_lex $P3111, "self"
    find_lex $P3112, "$?CLASS"
    getattribute $P3113, $P3111, $P3112, "$!sc"
    unless_null $P3113, vivify_1214
    new $P3113, "Undef"
  vivify_1214:
    $P3114 = $P3113."elems"()
    store_lex "$idx", $P3114
.annotate 'line', 2158
    find_lex $P3115, "$obj"
    unless_null $P3115, vivify_1215
    new $P3115, "Undef"
  vivify_1215:
    find_lex $P3116, "$idx"
    unless_null $P3116, vivify_1216
    new $P3116, "Undef"
  vivify_1216:
    set $I3117, $P3116
    find_lex $P3118, "self"
    find_lex $P3119, "$?CLASS"
    getattribute $P3120, $P3118, $P3119, "$!sc"
    unless_null $P3120, vivify_1217
    $P3120 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3118, $P3119, "$!sc", $P3120
  vivify_1217:
    set $P3120[$I3117], $P3115
.annotate 'line', 2159
    find_lex $P3121, "$idx"
    unless_null $P3121, vivify_1218
    new $P3121, "Undef"
  vivify_1218:
    find_lex $P3122, "$obj"
    unless_null $P3122, vivify_1219
    new $P3122, "Undef"
  vivify_1219:
    $P3123 = "addr"($P3122)
    find_lex $P3124, "self"
    find_lex $P3125, "$?CLASS"
    getattribute $P3126, $P3124, $P3125, "%!addr_to_slot"
    unless_null $P3126, vivify_1220
    $P3126 = root_new ['parrot';'Hash']
    setattribute $P3124, $P3125, "%!addr_to_slot", $P3126
  vivify_1220:
    set $P3126[$P3123], $P3121
    find_lex $P3127, "$idx"
    unless_null $P3127, vivify_1221
    new $P3127, "Undef"
  vivify_1221:
.annotate 'line', 2155
    .return ($P3127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("276_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3129
    .param pmc param_3130
.annotate 'line', 2164
    .lex "self", param_3129
    .lex "$obj", param_3130
.annotate 'line', 2165
    new $P3131, "Undef"
    .lex "$idx", $P3131
    find_lex $P3132, "self"
    find_lex $P3133, "$?CLASS"
    getattribute $P3134, $P3132, $P3133, "$!sc"
    unless_null $P3134, vivify_1222
    new $P3134, "Undef"
  vivify_1222:
    $P3135 = $P3134."elems"()
    store_lex "$idx", $P3135
.annotate 'line', 2166
    find_lex $P3136, "$obj"
    unless_null $P3136, vivify_1223
    new $P3136, "Undef"
  vivify_1223:
    find_lex $P3137, "$idx"
    unless_null $P3137, vivify_1224
    new $P3137, "Undef"
  vivify_1224:
    set $I3138, $P3137
    find_lex $P3139, "self"
    find_lex $P3140, "$?CLASS"
    getattribute $P3141, $P3139, $P3140, "$!sc"
    unless_null $P3141, vivify_1225
    $P3141 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3139, $P3140, "$!sc", $P3141
  vivify_1225:
    set $P3141[$I3138], $P3136
.annotate 'line', 2167
    find_lex $P3142, "$idx"
    unless_null $P3142, vivify_1226
    new $P3142, "Undef"
  vivify_1226:
    find_lex $P3143, "$obj"
    unless_null $P3143, vivify_1227
    new $P3143, "Undef"
  vivify_1227:
    $P3144 = "addr"($P3143)
    find_lex $P3145, "self"
    find_lex $P3146, "$?CLASS"
    getattribute $P3147, $P3145, $P3146, "%!addr_to_slot"
    unless_null $P3147, vivify_1228
    $P3147 = root_new ['parrot';'Hash']
    setattribute $P3145, $P3146, "%!addr_to_slot", $P3147
  vivify_1228:
    set $P3147[$P3144], $P3142
    find_lex $P3148, "$idx"
    unless_null $P3148, vivify_1229
    new $P3148, "Undef"
  vivify_1229:
.annotate 'line', 2164
    .return ($P3148)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("277_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3150
    .param pmc param_3151 :optional :named("deserialize_past")
    .param int has_param_3151 :opt_flag
    .param pmc param_3153 :optional :named("fixup_past")
    .param int has_param_3153 :opt_flag
.annotate 'line', 2172
    .lex "self", param_3150
    if has_param_3151, optparam_1230
    new $P3152, "Undef"
    set param_3151, $P3152
  optparam_1230:
    .lex "$deserialize_past", param_3151
    if has_param_3153, optparam_1231
    new $P3154, "Undef"
    set param_3153, $P3154
  optparam_1231:
    .lex "$fixup_past", param_3153
.annotate 'line', 2173
    find_lex $P3155, "self"
    find_lex $P3156, "$?CLASS"
    getattribute $P3157, $P3155, $P3156, "@!event_stream"
    unless_null $P3157, vivify_1232
    $P3157 = root_new ['parrot';'ResizablePMCArray']
  vivify_1232:
    find_lex $P3158, "Event"
    find_lex $P3159, "$deserialize_past"
    unless_null $P3159, vivify_1233
    new $P3159, "Undef"
  vivify_1233:
    find_lex $P3160, "$fixup_past"
    unless_null $P3160, vivify_1234
    new $P3160, "Undef"
  vivify_1234:
    $P3161 = $P3158."new"($P3159 :named("deserialize_past"), $P3160 :named("fixup_past"))
    $P3162 = $P3157."push"($P3161)
.annotate 'line', 2172
    .return ($P3162)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("278_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3164
    .param pmc param_3165
.annotate 'line', 2180
    .lex "self", param_3164
    .lex "$obj", param_3165
.annotate 'line', 2183
    new $P3166, "Undef"
    .lex "$sc", $P3166
    find_lex $P3167, "$obj"
    unless_null $P3167, vivify_1235
    new $P3167, "Undef"
  vivify_1235:
    nqp_get_sc_for_object $P3168, $P3167
    store_lex "$sc", $P3168
.annotate 'line', 2184
    find_lex $P3170, "$sc"
    unless_null $P3170, vivify_1236
    new $P3170, "Undef"
  vivify_1236:
    defined $I3171, $P3170
    if $I3171, unless_3169_end
.annotate 'line', 2185
    new $P3172, "String"
    assign $P3172, "Object of type '"
    find_lex $P3173, "$obj"
    unless_null $P3173, vivify_1237
    new $P3173, "Undef"
  vivify_1237:
    get_how $P3174, $P3173
    find_lex $P3175, "$obj"
    unless_null $P3175, vivify_1238
    new $P3175, "Undef"
  vivify_1238:
    $S3176 = $P3174."name"($P3175)
    concat $P3177, $P3172, $S3176
    concat $P3178, $P3177, "' cannot be referenced without having been "
    concat $P3179, $P3178, "assigned a serialization context"
.annotate 'line', 2186
    die $P3179
  unless_3169_end:
.annotate 'line', 2192
    find_lex $P3182, "$sc"
    unless_null $P3182, vivify_1239
    new $P3182, "Undef"
  vivify_1239:
    find_lex $P3183, "self"
    find_lex $P3184, "$?CLASS"
    getattribute $P3185, $P3183, $P3184, "$!sc"
    unless_null $P3185, vivify_1240
    new $P3185, "Undef"
  vivify_1240:
    issame $I3186, $P3182, $P3185
    if $I3186, if_3181
.annotate 'line', 2196
    get_hll_global $P3190, "GLOBAL"
    nqp_get_package_through_who $P3191, $P3190, "PAST"
    get_who $P3192, $P3191
    set $P3193, $P3192["Op"]
.annotate 'line', 2197
    find_lex $P3194, "$sc"
    unless_null $P3194, vivify_1241
    new $P3194, "Undef"
  vivify_1241:
    $P3195 = $P3194."handle"()
    find_lex $P3196, "$sc"
    unless_null $P3196, vivify_1242
    new $P3196, "Undef"
  vivify_1242:
    find_lex $P3197, "$obj"
    unless_null $P3197, vivify_1243
    new $P3197, "Undef"
  vivify_1243:
    $P3198 = $P3196."slot_index_for"($P3197)
    $P3199 = $P3193."new"($P3195, $P3198, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2195
    set $P3180, $P3199
.annotate 'line', 2192
    goto if_3181_end
  if_3181:
.annotate 'line', 2193
    find_lex $P3187, "self"
    find_lex $P3188, "$obj"
    unless_null $P3188, vivify_1244
    new $P3188, "Undef"
  vivify_1244:
    $P3189 = $P3187."get_slot_past_for_object"($P3188)
.annotate 'line', 2192
    set $P3180, $P3189
  if_3181_end:
.annotate 'line', 2180
    .return ($P3180)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("279_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3201
.annotate 'line', 2203
    .lex "self", param_3201
    find_lex $P3202, "self"
    find_lex $P3203, "$?CLASS"
    getattribute $P3204, $P3202, $P3203, "$!sc"
    unless_null $P3204, vivify_1245
    new $P3204, "Undef"
  vivify_1245:
    .return ($P3204)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("280_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3206
.annotate 'line', 2208
    .lex "self", param_3206
    find_lex $P3207, "self"
    find_lex $P3208, "$?CLASS"
    getattribute $P3209, $P3207, $P3208, "$!handle"
    unless_null $P3209, vivify_1246
    new $P3209, "Undef"
  vivify_1246:
    .return ($P3209)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("281_1306916546.01542") :outer("264_1306916546.01542")
    .param pmc param_3211
.annotate 'line', 2213
    .lex "self", param_3211
    find_lex $P3212, "self"
    find_lex $P3213, "$?CLASS"
    getattribute $P3214, $P3212, $P3213, "@!event_stream"
    unless_null $P3214, vivify_1247
    $P3214 = root_new ['parrot';'ResizablePMCArray']
  vivify_1247:
    .return ($P3214)
.end


.HLL "nqp"

.namespace []
.sub "_block3223" :load :anon :subid("282_1306916546.01542")
.annotate 'line', 1058
    .const 'Sub' $P3225 = "10_1306916546.01542" 
    $P3226 = $P3225()
    .return ($P3226)
.end

